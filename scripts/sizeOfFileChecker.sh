#!/usr/bin/env bash
# This script will check how many files are bigger than a given size in current folder

size="${1:-1024}"  # Default size is 1024 bytes
read -p "Enter the size in bytes to check for files bigger than (Default is 1024): " input_size
size="${input_size:-$size}"
find . -type f -size +${size}c | wc -l | echo "The amount of files bigger than ${size} bytes is: $(cat -)"