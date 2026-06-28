#!/usr/bin/env bash
#script for sorting lines in a file alphabetically 

read -p "Enter the filename to sort: " filename

if [[ ! -f "$filename" ]]; then
    echo "Error: File '$filename' does not exist."
    exit 1
fi

sort "$filename"

echo "Sorted lines from '$filename'"