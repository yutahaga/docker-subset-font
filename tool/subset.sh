#!/bin/bash
set -Ceu

cd /app

OIFS=$IFS
IFS=$'\n'

for FILE_PATH in $(find ./src -name *.otf)
do
  FILE_BASENAME=$(basename "$FILE_PATH")
  FILE_NAME="${FILE_BASENAME%.*}"
  pyftsubset "$FILE_PATH" --text-file=./src/chars.txt --layout-features=palt,pkna --flavor=woff --output-file="./dist/${FILE_NAME}.woff"
  pyftsubset "$FILE_PATH" --text-file=./src/chars.txt --layout-features=palt,pkna --flavor=woff2 --output-file="./dist/${FILE_NAME}.woff2"
done

IFS=$OIFS
