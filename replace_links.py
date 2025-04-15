import os
import re

IMAGE_REPO = 'https://raw.githubusercontent.com/hanzhe93/my-images/main'

for mdfile in os.listdir('articles'):
    if not mdfile.endswith('.md'):
        continue

    path = os.path.join('articles', mdfile)
    with open(path, 'r', encoding='utf-8') as f:
        content = f.read()

    content = re.sub(r'!\[([^\]]*)\]\(images/([^)]+)\)', 
                     rf'![\1]({IMAGE_REPO}\2)', content)

    with open(path, 'w', encoding='utf-8') as f:
        f.write(content)

