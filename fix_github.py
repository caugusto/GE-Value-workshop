import re

path = "ge_jumpstart.md"
with open(path, "r") as f:
    content = f.read()

# 1. Remove style block
content = re.sub(r'(?s)<style>.*?</style>\n*', '', content)

# 2. Update image tags from style width to attribute width
content = re.sub(r'<img src="([^"]+)" style="width: 90%;" />', r'<img src="\1" width="90%" />', content)

with open(path, "w") as f:
    f.write(content)

print("Fixed for GitHub preview")
