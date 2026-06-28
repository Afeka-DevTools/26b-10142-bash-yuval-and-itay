#!/usr/bin/env bash
# This script is used to count how many folders, files and links are in a read folder

read -p "Enter the folder path you want to count files, folders and links in (Default is ._): " folder
folder="${folder:-.}"

if [ ! -d "$folder" ]; then
    echo "The specified path is not a valid folder."
    exit 1
fi
find "$folder" -maxdepth 1 -type d | wc -l | echo "The amount of folders in the folder '$folder' is: $(cat -)"
find "$folder" -maxdepth 1 -type f | wc -l | echo "The amount of files in the folder '$folder' is: $(cat -)"
find "$folder" -maxdepth 1 -type l | wc -l | echo "The amount of links in the folder '$folder' is: $(cat -)"

