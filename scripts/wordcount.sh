#!/usr/bin/env bash
# Usage: ./scripts/wordcount.sh proposal/01_vision.md
# Counts words excluding HTML comments, headings markers and blank lines.
f="$1"
[ -f "$f" ] || { echo "no such file: $f"; exit 1; }
sed '/<!--/,/-->/d' "$f" | sed 's/^#\+ //' | tr -s ' \n' ' \n' | wc -w
