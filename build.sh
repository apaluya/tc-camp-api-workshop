#!/usr/bin/env bash

pandoc -t revealjs -s -o $1.html $1 -V revealjs-url=https://revealjs.com -V transition=cube -V theme=sky -i
