#!/usr/bin/env bash


# return on first non-zero exit code, print lines before executing
set -ev

# The script takes a filepath to a markdown file as an argument
# Get the file basename and remove the extension from the filepath
if [[ $1 == *.md ]]; then
  file="$1"
  base=$(basename $file)
  name="${base%.*}"
else
  echo "A markdown file is a required argument"
  exit 1
fi

# Using pandoc to build a standalone revealjs slide presentation
pandoc -t revealjs -s -o $name.html doc/$name.md -V revealjs-url=https://revealjs.com -V transition=cube -V theme=sky -i

#pandoc -t revealjs -s -o docs-as-code.html docs-as-code.md -V revealjs-url=https://revealjs.com -V transition=cube -V theme=sky -i
