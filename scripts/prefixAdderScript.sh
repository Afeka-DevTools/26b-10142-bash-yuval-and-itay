#!/usr/bin/env bash

set -euo pipefail

target="${1:-}"

# 1. Ask for the target directory if not provided
if [[ -z "$target" && -t 0 ]]; then
  read -r -p "Target directory (default .): " target
fi
target="${target:-.}"

# 2. Safety check: Does the directory exist?
if [[ ! -d "$target" ]]; then
  echo "Error: directory '$target' does not exist." >&2
  exit 2
fi

target="$(readlink -f "$target")"  
echo "Running on directory: $target"

# 3. Ask the user what prefix they want to add
prefix=""
if [[ -t 0 ]]; then
  read -r -p "Enter the prefix to add (e.g., 'draft_'): " prefix
fi

if [[ -z "$prefix" ]]; then
  echo "Error: Prefix cannot be empty." >&2
  exit 1
fi

echo "Adding prefix '$prefix' to .txt files..."
echo "------------------------------------"

# 4. Loop through all .txt files and rename them
# Using a glob safeguard in case no .txt files exist
shopt -s nullglob  

for file in "$target"/*.txt; do
  # Ensure it is a file, not a directory that happens to end in .txt
  if [[ -f "$file" ]]; then
    dir=$(dirname "$file")
    base=$(basename "$file")
    
    new_name="$dir/$prefix$base"
    
    echo "Renaming: $base -> $prefix$base"
    mv "$file" "$new_name"
  fi
done

echo "Done!"