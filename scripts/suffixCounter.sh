#!/usr/bin/env bash
# This script is used to count files by their suffix

read -p "Enther the suffix you want to count: " suffix
count=$(find . -type f -name "*$suffix" | wc -l)
echo "The amount of files with the suffix '$suffix' is: $count"