#!/usr/bin/env bash


echo "Let's do this!..."

pandoc -t revealjs -s -o $1.html $1 -V revealjs-url=https://revealjs.com -V transition=cube -V theme=sky -i

echo "Success!"
