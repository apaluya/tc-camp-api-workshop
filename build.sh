#!/usr/bin/env sh

# The script takes a filename as a parameter.
# Remove the extension from the filename
filename="$1"
name="${filename%.*}"

# Using pandoc to build a standalone revealjs slide presentation
pandoc -t revealjs -s -o $name.html $name.md -V revealjs-url=https://revealjs.com -V transition=cube -V theme=sky -i
