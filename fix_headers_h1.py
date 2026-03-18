path = "ge_jumpstart.md"
with open(path, "r") as f:
    content = f.read()

# Replace H2 with H1 at line starts
lines = content.split("\n")
for i in range(len(lines)):
    if lines[i].startswith("## "):
        lines[i] = lines[i].replace("## ", "# ")

content = "\n".join(lines)

with open(path, "w") as f:
    f.write(content)

print("Escalated headers to H1")
