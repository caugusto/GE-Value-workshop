#!/usr/bin/env bash
#
# ingest-ge-workshop-data.sh
#
# Ingestion helper script for Gemini Enterprise Workshop.
# Downloads the workshop sample dataset from upstream repository:
# https://github.com/caugusto/GE-Value-workshop
# and uploads it to a GCS bucket in your GCP project.
# Optionally provisions the Discovery Engine DataStore, triggers document import,
# and attaches the DataStore to the Gemini Enterprise app engine via the REST API.
#
# Usage:
#   ./scripts/ingest-ge-workshop-data.sh [COMMAND] [OPTIONS]
#
# Commands:
#   upload            (Default) Download sample dataset and upload to GCS bucket
#   create-datastore  Create Discovery Engine Cloud Storage DataStore via REST API
#   import-documents  Trigger document ingestion from GCS into Discovery Engine DataStore
#   attach-engine     Attach the DataStore to the Gemini Enterprise app engine via REST API
#   all               Execute upload, create-datastore, import-documents, and attach-engine
#
# Options:
#   -p, --project PROJECT_ID     Target GCP project ID (required)
#   -b, --bucket BUCKET_NAME     Target GCS bucket (default: bkt-d-gemini-ent-data-<PROJECT_ID>)
#   -d, --datastore-id ID        Discovery Engine DataStore ID (default: workshop-gcs-docs)
#   -n, --datastore-name NAME    DataStore display name (default: "Cloud Storage")
#   -l, --location LOCATION      Discovery Engine location (default: global)
#   -e, --engine-id ENGINE_ID    GE app engine ID (required for attach-engine and all commands)
#       --dry-run                Print actions without downloading, uploading, or calling APIs
#   -h, --help                   Display this help message

set -euo pipefail

# Defaults
PROJECT_ID="${PROJECT_ID:-}"        # Required — set via --project or $PROJECT_ID env var
BUCKET_NAME="${BUCKET_NAME:-}"      # Derived from PROJECT_ID if not set explicitly
DATASTORE_ID="${DATASTORE_ID:-workshop-gcs-docs}"
DATASTORE_NAME="${DATASTORE_NAME:-Cloud Storage}"
LOCATION="${LOCATION:-global}"
GE_ENGINE_ID="${GE_ENGINE_ID:-}"   # Required for attach-engine — set via --engine-id or $GE_ENGINE_ID env var
UPSTREAM_ZIP_URL="https://raw.githubusercontent.com/caugusto/GE-Value-workshop/main/data/ge_sample_data_for_workshop.zip"
DRY_RUN=false
COMMAND="upload"

print_usage() {
  cat <<EOF
Gemini Enterprise Workshop Data Ingestion Tool

Usage:
  $(basename "$0") [COMMAND] [OPTIONS]

Commands:
  upload            Download dataset and upload to GCS (default)
  create-datastore  Create Discovery Engine Cloud Storage DataStore via REST API
  import-documents  Trigger document ingestion from GCS into Discovery Engine DataStore
  attach-engine     Attach DataStore to the Gemini Enterprise app engine via REST API
  all               Execute upload, create-datastore, import-documents, and attach-engine

Options:
  -p, --project PROJECT_ID     Target GCP project ID (required)
  -b, --bucket BUCKET_NAME     Target GCS bucket (default: bkt-d-gemini-ent-data-<PROJECT_ID>)
  -d, --datastore-id ID        Discovery Engine DataStore ID (default: workshop-gcs-docs)
  -n, --datastore-name NAME    DataStore display name (default: "Cloud Storage")
  -l, --location LOCATION      Discovery Engine location (default: global)
  -e, --engine-id ENGINE_ID    GE app engine ID (required for attach-engine and all commands)
      --dry-run                Print actions without making changes
  -h, --help                   Display this help message

Examples:
  # Full end-to-end setup (upload, create datastore, ingest, attach to GE engine):
  $(basename "$0") all --project my-gcp-project --engine-id my-engine-id_1234567890

  # Attach an existing datastore to the GE engine only:
  $(basename "$0") attach-engine --project my-gcp-project --engine-id my-engine-id_1234567890

  # Create Discovery Engine DataStore only:
  $(basename "$0") create-datastore --project my-gcp-project

  # Trigger document import into existing DataStore:
  $(basename "$0") import-documents --project my-gcp-project
EOF
}

# Parse arguments
while [[ $# -gt 0 ]]; do
  case "$1" in
    upload|create-datastore|import-documents|attach-engine|all)
      COMMAND="$1"
      shift
      ;;
    -p|--project)
      PROJECT_ID="$2"
      BUCKET_NAME="bkt-d-gemini-ent-data-${PROJECT_ID}"
      shift 2
      ;;
    -b|--bucket)
      BUCKET_NAME="$2"
      shift 2
      ;;
    -d|--datastore-id)
      DATASTORE_ID="$2"
      shift 2
      ;;
    -n|--datastore-name)
      DATASTORE_NAME="$2"
      shift 2
      ;;
    -l|--location)
      LOCATION="$2"
      shift 2
      ;;
    -e|--engine-id)
      GE_ENGINE_ID="$2"
      shift 2
      ;;
    --dry-run)
      DRY_RUN=true
      shift
      ;;
    -h|--help)
      print_usage
      exit 0
      ;;
    *)
      echo "ERROR: Unknown option or command: $1" >&2
      print_usage >&2
      exit 1
      ;;
  esac
done

check_prerequisites() {
  local missing=()
  for cmd in curl unzip gcloud; do
    if ! command -v "$cmd" &>/dev/null; then
      missing+=("$cmd")
    fi
  done

  if [[ ${#missing[@]} -gt 0 ]]; then
    echo "ERROR: Missing required command-line tools: ${missing[*]}" >&2
    exit 1
  fi
}

do_upload() {
  echo "============================================================"
  echo " Gemini Enterprise Workshop: Ingesting Sample Data"
  echo "============================================================"
  echo "Target Project: ${PROJECT_ID}"
  echo "Target Bucket:  gs://${BUCKET_NAME}/"
  echo "Upstream URL:   ${UPSTREAM_ZIP_URL}"
  echo "============================================================"

  if [[ "$DRY_RUN" == true ]]; then
    echo "[DRY RUN] Would download ${UPSTREAM_ZIP_URL}"
    echo "[DRY RUN] Would unpack ge_sample_data_for_workshop/ directory"
    echo "[DRY RUN] Would upload to gs://${BUCKET_NAME}/ge_sample_data_for_workshop/"
    return 0
  fi

  local temp_dir
  temp_dir=$(mktemp -d -t ge-workshop-XXXXXX)
  # shellcheck disable=SC2064
  trap "rm -rf '${temp_dir}'" EXIT

  echo "--> Downloading sample data archive..."
  local zip_file="${temp_dir}/ge_sample_data_for_workshop.zip"
  curl -fsSL "${UPSTREAM_ZIP_URL}" -o "${zip_file}"

  echo "--> Unpacking archive..."
  unzip -q -o "${zip_file}" -d "${temp_dir}"

  if [[ ! -d "${temp_dir}/ge_sample_data_for_workshop" ]]; then
    echo "ERROR: Expected extracted folder '${temp_dir}/ge_sample_data_for_workshop' not found." >&2
    exit 1
  fi

  local file_count
  file_count=$(find "${temp_dir}/ge_sample_data_for_workshop" -type f | wc -l)
  echo "--> Extracted ${file_count} files from sample archive."

  echo "--> Uploading dataset to gs://${BUCKET_NAME}/ge_sample_data_for_workshop/ ..."
  if command -v gcloud &>/dev/null && gcloud storage --help &>/dev/null; then
    gcloud storage cp -r "${temp_dir}/ge_sample_data_for_workshop" "gs://${BUCKET_NAME}/" --project="${PROJECT_ID}"
  else
    gsutil -m cp -r "${temp_dir}/ge_sample_data_for_workshop" "gs://${BUCKET_NAME}/"
  fi

  echo "--> Upload complete. Verifying bucket contents..."
  if command -v gcloud &>/dev/null && gcloud storage --help &>/dev/null; then
    gcloud storage ls "gs://${BUCKET_NAME}/ge_sample_data_for_workshop/" --project="${PROJECT_ID}" | head -n 10
  else
    gsutil ls "gs://${BUCKET_NAME}/ge_sample_data_for_workshop/" | head -n 10
  fi

  echo "SUCCESS: Workshop dataset uploaded to gs://${BUCKET_NAME}/ge_sample_data_for_workshop/"
}

do_create_datastore() {
  echo "============================================================"
  echo " Discovery Engine: Create Cloud Storage DataStore"
  echo "============================================================"
  echo "Project:      ${PROJECT_ID}"
  echo "Location:     ${LOCATION}"
  echo "DataStore ID: ${DATASTORE_ID}"
  echo "Display Name: ${DATASTORE_NAME}"
  echo "============================================================"

  local api_url="https://discoveryengine.googleapis.com/v1/projects/${PROJECT_ID}/locations/${LOCATION}/collections/default_collection/dataStores?dataStoreId=${DATASTORE_ID}"

  if [[ "$DRY_RUN" == true ]]; then
    echo "[DRY RUN] Would POST ${api_url}"
    cat <<EOF
[DRY RUN] Payload:
{
  "displayName": "${DATASTORE_NAME}",
  "industryVertical": "GENERIC",
  "solutionTypes": ["SOLUTION_TYPE_SEARCH"],
  "contentConfig": "CONTENT_REQUIRED"
}
EOF
    return 0
  fi

  echo "--> Acquiring OAuth access token..."
  local access_token
  access_token=$(gcloud auth print-access-token)

  echo "--> Calling Discovery Engine API to create DataStore..."
  local response
  local http_code
  response=$(curl -s -w "\n%{http_code}" -X POST \
    -H "Authorization: Bearer ${access_token}" \
    -H "Content-Type: application/json" \
    -H "X-Goog-User-Project: ${PROJECT_ID}" \
    "${api_url}" \
    -d "{
      \"displayName\": \"${DATASTORE_NAME}\",
      \"industryVertical\": \"GENERIC\",
      \"solutionTypes\": [\"SOLUTION_TYPE_SEARCH\"],
      \"contentConfig\": \"CONTENT_REQUIRED\"
    }")

  http_code=$(echo "${response}" | tail -n 1)
  local body
  body=$(echo "${response}" | sed '$d')

  if [[ "$http_code" == "200" || "$http_code" == "201" ]]; then
    echo "SUCCESS: Discovery Engine DataStore '${DATASTORE_ID}' created."
    echo "${body}"
  elif [[ "$http_code" == "409" ]] || echo "${body}" | grep -q "ALREADY_EXISTS"; then
    echo "NOTICE: DataStore '${DATASTORE_ID}' already exists (HTTP 409). Continuing..."
  else
    echo "ERROR: Failed to create DataStore (HTTP ${http_code}):" >&2
    echo "${body}" >&2
    exit 1
  fi
}

do_import_documents() {
  echo "============================================================"
  echo " Discovery Engine: Ingest Documents from Cloud Storage"
  echo "============================================================"
  echo "Project:      ${PROJECT_ID}"
  echo "Location:     ${LOCATION}"
  echo "DataStore ID: ${DATASTORE_ID}"
  echo "Source URI:   gs://${BUCKET_NAME}/ge_sample_data_for_workshop/**"
  echo "============================================================"

  local api_url="https://discoveryengine.googleapis.com/v1/projects/${PROJECT_ID}/locations/${LOCATION}/collections/default_collection/dataStores/${DATASTORE_ID}/branches/0/documents:import"

  if [[ "$DRY_RUN" == true ]]; then
    echo "[DRY RUN] Would POST ${api_url}"
    cat <<EOF
[DRY RUN] Payload:
{
  "gcsSource": {
    "inputUris": ["gs://${BUCKET_NAME}/ge_sample_data_for_workshop/**"],
    "dataSchema": "content"
  },
  "reconciliationMode": "FULL"
}
EOF
    return 0
  fi

  echo "--> Acquiring OAuth access token..."
  local access_token
  access_token=$(gcloud auth print-access-token)

  echo "--> Triggering document import job via Discovery Engine API..."
  local response
  local http_code
  response=$(curl -s -w "\n%{http_code}" -X POST \
    -H "Authorization: Bearer ${access_token}" \
    -H "Content-Type: application/json" \
    -H "X-Goog-User-Project: ${PROJECT_ID}" \
    "${api_url}" \
    -d "{
      \"gcsSource\": {
        \"inputUris\": [\"gs://${BUCKET_NAME}/ge_sample_data_for_workshop/**\"],
        \"dataSchema\": \"content\"
      },
      \"reconciliationMode\": \"FULL\"
    }")

  http_code=$(echo "${response}" | tail -n 1)
  local body
  body=$(echo "${response}" | sed '$d')

  if [[ "$http_code" == "200" || "$http_code" == "201" ]]; then
    echo "SUCCESS: Document import operation started successfully."
    echo "${body}"
  else
    echo "ERROR: Failed to trigger document import (HTTP ${http_code}):" >&2
    echo "${body}" >&2
    exit 1
  fi
}

do_attach_engine() {
  echo "============================================================"
  echo " Gemini Enterprise: Attach DataStore to App Engine"
  echo "============================================================"
  echo "Project:      ${PROJECT_ID}"
  echo "Location:     ${LOCATION}"
  echo "Engine ID:    ${GE_ENGINE_ID}"
  echo "DataStore ID: ${DATASTORE_ID}"
  echo "============================================================"

  local api_url="https://discoveryengine.googleapis.com/v1/projects/${PROJECT_ID}/locations/${LOCATION}/collections/default_collection/engines/${GE_ENGINE_ID}?updateMask=dataStoreIds"

  if [[ "$DRY_RUN" == true ]]; then
    echo "[DRY RUN] Would PATCH ${api_url}"
    echo "[DRY RUN] Payload: {\"dataStoreIds\": [\"${DATASTORE_ID}\"]}"
    return 0
  fi

  echo "--> Acquiring OAuth access token..."
  local access_token
  access_token=$(gcloud auth print-access-token)

  echo "--> Attaching DataStore '${DATASTORE_ID}' to GE engine '${GE_ENGINE_ID}'..."
  local response
  local http_code
  response=$(curl -s -w "\n%{http_code}" -X PATCH \
    -H "Authorization: Bearer ${access_token}" \
    -H "Content-Type: application/json" \
    -H "X-Goog-User-Project: ${PROJECT_ID}" \
    "${api_url}" \
    -d "{\"dataStoreIds\": [\"${DATASTORE_ID}\"]}")

  http_code=$(echo "${response}" | tail -n 1)
  local body
  body=$(echo "${response}" | sed '$d')

  if [[ "$http_code" == "200" ]]; then
    echo "SUCCESS: DataStore '${DATASTORE_ID}' attached to engine '${GE_ENGINE_ID}'."
    echo "         'Search Company data' in Gemini Enterprise will now surface this data."
  else
    echo "ERROR: Failed to attach DataStore to engine (HTTP ${http_code}):" >&2
    echo "${body}" >&2
    exit 1
  fi
}

main() {
  check_prerequisites

  # Validate required: PROJECT_ID
  if [[ -z "${PROJECT_ID}" ]]; then
    echo "ERROR: --project PROJECT_ID is required." >&2
    echo "       Set it via --project <PROJECT_ID> or the \$PROJECT_ID environment variable." >&2
    echo "       Run '$(basename "$0") --help' for usage." >&2
    exit 1
  fi

  # Derive BUCKET_NAME from PROJECT_ID if not explicitly set
  if [[ -z "${BUCKET_NAME}" ]]; then
    BUCKET_NAME="bkt-d-gemini-ent-data-${PROJECT_ID}"
  fi

  # Validate required: GE_ENGINE_ID for commands that need it
  if [[ "$COMMAND" == "attach-engine" || "$COMMAND" == "all" ]] && [[ -z "${GE_ENGINE_ID}" ]]; then
    echo "ERROR: --engine-id ENGINE_ID is required for the '${COMMAND}' command." >&2
    echo "       Find your engine ID in the GE Admin Console:" >&2
    echo "       https://console.cloud.google.com/gemini-enterprise?project=${PROJECT_ID}" >&2
    echo "       Set it via --engine-id <ENGINE_ID> or the \$GE_ENGINE_ID environment variable." >&2
    exit 1
  fi

  case "$COMMAND" in
    upload)
      do_upload
      ;;
    create-datastore)
      do_create_datastore
      ;;
    import-documents)
      do_import_documents
      ;;
    attach-engine)
      do_attach_engine
      ;;
    all)
      do_upload
      echo ""
      do_create_datastore
      echo ""
      do_import_documents
      echo ""
      do_attach_engine
      ;;
  esac

  echo ""
  echo "Done!"
}

main
