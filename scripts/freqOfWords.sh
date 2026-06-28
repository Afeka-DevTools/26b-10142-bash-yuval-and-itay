#!/usr/bin/env bash
# script to count how often words appear in a text file

read -p "Enter the file name you want to count words in: " file
if [ ! -f "$file" ]; then
    echo "File not found!"
    exit 1
fi

cat "$file" | tr -c '[:alnum:]' '[\n*]' | sort | uniq -c | sort -nr
