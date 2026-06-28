#!/usr/bin/env bash
#This script will show current Git status for every sub folder in a given folder
#By felzot

read -p "Enter the folder path you want to check Git status in (Default is .): " TARGET_DIR
TARGET_DIR="${TARGET_DIR:-.}"
if [ ! -d "$TARGET_DIR" ]; then 
    echo "The specified path is not a valid folder."
    exit 1
fi

echo "Git status for sub folders in: $TARGET_DIR"
echo "----------------------------------------"
for dir in "$TARGET_DIR"/*/; do 
    if [ -d "$dir/.git" ]; then 
        echo "Git status for $dir:"
        git -C "$dir" status
        echo "----------------------------------------"
    fi
done
