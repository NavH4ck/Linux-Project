#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4.sh [logfile] [keyword]

LOGFILE=$1
KEYWORD=${2:-"error"} # Defaults to 'error' if no second argument is given [cite: 171, 173]
COUNT=0

# Check if the log file exists [cite: 174]
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found." [cite: 176]
    exit 1
fi

# TODO: Retry logic if file is empty 
while [ ! -s "$LOGFILE" ]; do
    echo "File is empty. Waiting 5 seconds to retry..."
    sleep 5
done

echo "Analyzing $LOGFILE for keyword: '$KEYWORD'..."

# Read file line-by-line [cite: 164, 177]
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then [cite: 179]
        COUNT=$((COUNT + 1)) [cite: 181]
    fi
done < "$LOGFILE" [cite: 182]

echo "------------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times." [cite: 183]

# TODO: Print the last 5 matching lines 
echo "Last 5 matches:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
echo "=========================================="
