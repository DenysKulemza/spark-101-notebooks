#!/usr/bin/env bash
# Fetch the complete works of Shakespeare from Project Gutenberg.
# Public domain, ~5.5 MB plain text — perfect lecture demo size.

set -euo pipefail

HERE="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST="$HERE/shakespeare.txt"

if [[ -f "$DEST" ]]; then
  echo "Already have $DEST ($(wc -c < "$DEST") bytes) — skipping."
  exit 0
fi

URL="https://www.gutenberg.org/files/100/100-0.txt"
echo "Fetching $URL ..."
curl -fsSL "$URL" -o "$DEST"
echo "Saved → $DEST ($(wc -l < "$DEST") lines, $(wc -c < "$DEST") bytes)"
