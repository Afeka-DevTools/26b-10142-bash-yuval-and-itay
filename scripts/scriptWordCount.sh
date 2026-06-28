#!/usr/bin/env bash
# This script is for counting words, sentences and characters in a folder with files

TARGET_DIR="${1:-.}"

for file in "TARGET_DIR"/*; do
    if [[ -f "$file" ]]; then
        echo "Processing file: $file"
        word_count=$(wc -w < "$file")
        sentence_count=$(grep -o '[.!?]' "$file" | wc -l)
        char_count=$(wc -m < "$file")
        
        echo "Words: $word_count"
        echo "Sentences: $sentence_count"
        echo "Characters: $char_count"
        echo "-------------------------"
    fi
done