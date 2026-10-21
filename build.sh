#!/bin/sh
# Wraps src/app.html (Claude Artifact format: no doctype or head) into a standalone index.html.
set -e
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n'
  cat src/app.html
  printf '\n</html>\n'
} > index.html
echo "built index.html"
