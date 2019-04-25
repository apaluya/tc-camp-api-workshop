#!/usr/bin/env sh

# The script takes a filename as a parameter.
# Remove the extension from the filename
if [[ $1 == *.md ]]; then
  filename="$1"
  name="${filename%.*}"
else
  echo "Markdown file required as parameter"
  exit 1
fi

# Using pandoc to build a standalone revealjs slide presentation
pandoc -t revealjs -s -o $name.html $name.md -V revealjs-url=https://revealjs.com -V transition=cube -V theme=sky -i
