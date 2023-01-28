#!/bin/sh

header=$(grep -m1 -x -q '\---' "$1" && sed '1d' "$1" | sed '/---/Q')
echo "$header"
