#!/usr/bin/env bash

set -euo pipefail

echo "========================================="
echo "   Important Environment Variables Info  "
echo "========================================="
echo ""

echo "Current User:       $USER"
echo "Home Directory:    $HOME"
echo "Current Directory: $PWD"
echo "Shell in Use:      $SHELL"
echo "System Language:   $LANG"
echo ""
echo "System PATH:"
echo "$PATH" | tr ':' '\n' | sed 's/^/  - /'
echo "System time is $(date)"

echo ""
echo "========================================="