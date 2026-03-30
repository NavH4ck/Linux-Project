#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Navneet Parashar (24BCG10125)

PACKAGE="python3"

echo "Checking for package: $PACKAGE..."

# --- Check if installed using dpkg (for Ubuntu/WSL) 
if dpkg -s $PACKAGE &>/dev/null; then
    echo "SUCCESS: $PACKAGE is installed."
    echo "------------------------------------------"
    # Extract Version and Summary using grep [cite: 139]
    dpkg -s $PACKAGE | grep -E 'Version|Description'
else
    echo "ERROR: $PACKAGE is NOT installed."
    exit 1
fi

echo "------------------------------------------"
# --- Case statement for package philosophy 
case $PACKAGE in
    python3)
        echo "Philosophy: Python - A language shaped entirely by community and readability." ;;
    git)
        echo "Philosophy: Git - The tool built by Linus when proprietary failed him." ;;
    mysql)
        echo "Philosophy: MySQL - Open source at the heart of millions of apps." ;;
    *)
        echo "Philosophy: An essential part of the open source ecosystem." ;;
esac
echo "=========================================="
