#!/usr/bin/env bash
# This script counts words, sentences, and characters in a folder's files

TARGET_DIR="${1:-.}" 

# Check if the directory actually exists before looping
if [[ ! -d "$TARGET_DIR" ]]; then
    echo "Error: Directory $TARGET_DIR does not exist."
    exit 1
fi

for file in "$TARGET_DIR"/*; do
    if [[ -f "$file" ]]; then
        echo "Processing file: $(basename "$file")"
        
        word_count=$(wc -w < "$file")
        # Counts punctuation marks as sentences
        sentence_count=$(grep -o '[.!?]' "$file" | wc -l)
        char_count=$(wc -m < "$file")
        
        echo "Words: $word_count"
        echo "Sentences: $sentence_count"
        echo "Characters: $char_count"
        echo "-------------------------"
    fi
done