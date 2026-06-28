#!/usr/bin/env bash
# This script will get a list of URLS and will check if they are reachable or not. It will print the result in a table format.

read -p "Enter the path of the file containing the list of URLs (Default is urls.txt): " url_file
url_file="${url_file:-urls.txt}"
if [ ! -f "$url_file" ]; then
    echo "The specified file does not exist."
    exit 1
fi

echo "Checking URLs from file: $url_file"
printf "%-50s %-10s\n" "URL" "Status"
printf "%-50s %-10s\n" "--------------------------------------------------" "----------"
while IFS= read -r url; do
    if [[ -n "$url" ]]; then
        status=$(curl -o /dev/null -L --silent --head --write-out '%{http_code}' "$url")
        if [[ "$status" -eq 200 ]]; then
            printf "%-50s %-10s\n" "$url" "Reachable"
        else
            printf "%-50s %-10s\n" "$url" "Not Reachable"
        fi
    fi
done < "$url_file"