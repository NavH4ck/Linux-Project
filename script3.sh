#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Navneet Parashar (24BCG10125)
# Course: Open Source Software

# Array of important system directories to audit [cite: 152]
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=========================================="
echo "      Directory Permission & Size Audit"
echo "=========================================="
echo "Format: [Dir] => [Permissions | Owner] | [Size]"
echo "------------------------------------------"

# Use a for loop to iterate through the list [cite: 147]
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions ($1) and owner ($3) using awk [cite: 148, 157]
        PERMS=$(ls -ld "$DIR" | awk '{print $1 " | " $3}')
        
        # Get directory size (human-readable) [cite: 157]
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "$DIR => $PERMS | Size: $SIZE"
    else
        echo "Warning: $DIR does not exist on this system." [cite: 161]
    fi
done

echo "------------------------------------------"
# TODO: Check if Python's config directory exists 
PYTHON_CONF="/usr/lib/python3"
if [ -d "$PYTHON_CONF" ]; then
    echo "Python Footprint Found: $PYTHON_CONF"
    ls -ld "$PYTHON_CONF" | awk '{print "Permissions: " $1 " | Owner: " $3}'
fi
echo "=========================================="
