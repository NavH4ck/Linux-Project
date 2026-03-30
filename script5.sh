#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Navneet Parashar (24BCG10125)

echo "=========================================="
echo "   Open Source Manifesto Generator"
echo "=========================================="
echo "Answer three questions to generate your philosophy."
echo

# --- Interactive Input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Data Gathering
DATE=$(date +'%d %B %Y')
USER_NAME=$(whoami)
OUTPUT="manifesto_$USER_NAME.txt"

# --- Compose and Save
{
    echo "--- Open Source Manifesto ---"
    echo "Date: $DATE"
    echo "Author: $USER_NAME"
    echo "-----------------------------"
    echo "I believe in the power of open collaboration. Every day, I rely on $TOOL,"
    echo "which reminds me that software 'freedom' truly means $FREEDOM."
    echo "In the spirit of sharing, I commit to building $BUILD and offering it"
    echo "freely to the community, standing on the shoulders of giants."
} > "$OUTPUT"

echo
echo "SUCCESS: Your manifesto has been saved to $OUTPUT"
echo "------------------------------------------"
cat "$OUTPUT"
echo "=========================================="

# Note: An alias could be created for this script to run it quickly:
# alias mymanifesto='./script5.sh'
