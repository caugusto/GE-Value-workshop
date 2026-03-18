path = "ge_jumpstart.md"
with open(path, "r") as f:
    content = f.read()

# Remove HTML wraps inside headers
content = content.replace("<div class='task-container'><div class='task-header'>Task</div>", "")

with open(path, "w") as f:
    f.write(content)

print("Fixed headers")
