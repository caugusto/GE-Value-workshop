# 🛠️ Gemini Enterprise Setup Guide

This guide outlines the prerequisites and steps required to set up your environment for the Gemini Enterprise Hands-on Lab.

---

## 📋 Pre-Requirements

Before using the [Jumpstart](https://github.com/caugusto/GE-Value-workshop/blob/main/ge_jumpstart.md), ensure the following setup items are complete:

- [ ] **IAM Configured**: Verify that appropriate Identity and Access Management roles are active for the project.
- [ ] **Licenses Assigned**: Confirm that Gemini Enterprise licenses have been allocated to your user account.
- [ ] **Gemini Enterprise App Enabled**: Verify access to the application interface.
- [ ] **User Login Validated**: Test user credentials to ensure smooth authentication.
- [ ] **GCS Datastore Provisioned**: Ensure a Google Cloud Storage bucket is available for data ingestion.
- [ ] **Optional Data**: Prepare any custom user data files if applicable.

---

## ⚙️ Setup Instructions

### 🗂️ Task 1: Prepare Data for Gemini Enterprise, NotebookLM, and Calendar

In this task, you will acquire sample documents and organize them in your Drive and Calendar for use with the AI assistant tools.

1. **Download Sample Data**:
   - Download the sample data ZIP: [ge_sample_data_for_workshop.zip](https://github.com/caugusto/GE-Value-workshop/blob/main/data/ge_sample_data_for_workshop.zip)
   - Extract the contents locally on your machine.

2. **Upload to Cloud Storage**:
   - Open the **Google Cloud Console**.
   - From the Navigation menu (☰), select **Cloud Storage > Buckets**.
   - Click on the pre-provisioned bucket name (matches your **Project ID**).
   - Upload the extracted folder structure directly into this bucket.

3. **Organize Content & Calendar**:
   - **Google Drive**: Organize these files into distinct folders inside your Drive:
     - One folder for general Gemini Enterprise queries and Agents.
     - A text-focused folder for anchored analysis in NotebookLM.
   - **Google Calendar**: Add a sample meeting to your schedule to enhance full-stack interaction testing.

---

### 🔗 Task 2: Connect to Data Stores

Create **Data Stores** to bridge Gemini Enterprise with your data infrastructure (Google Drive, Cloud Storage, Calendar).

#### Create a Cloud Storage Data Store

1. Open the **Gemini Enterprise Applications** menu.
2. In the left pane, select **Connected data stores**.
3. Click **New Data Store**.
4. Locate the **Cloud Storage** card and click **Select**.
5. **Configure Import**:
   - **Data Type**: Select **Documents** (found under *Unstructured Data Import*).
   - **Synchronization Frequency**: Select **One time**.
6. **Select Source Location**:
   - Click **Browse** and navigate to the `gemini-enterprise-cloud-storage` folder within your GCP bucket.
   - Click **Continue**.
7. **Finalize Setup**:
   - **Region**: Keep default (`global`).
   - **Name**: Enter `Cloud Storage`.
   - **Pricing Model**: If prompted, leave as default and click **Continue**.
8. Click **Create**.
