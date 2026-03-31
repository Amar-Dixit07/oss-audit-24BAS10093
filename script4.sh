#!/bin/bash 

# Script 4: Log File Analyzer 
# Usage: ./log_analyzer.sh /var/log/messages 

LOGFILE=$1 
KEYWORD=${2:-"error"}    # Default keyword is 'error' 
COUNT=0

if [ ! -f "$LOGFILE" ]; then 
    echo "Error: File $LOGFILE not found." 
    exit 1 
fi 

while true; do
    # The -s flag checks if the file exists AND is greater than 0 bytes
    if [ -s "$LOGFILE" ]; then
        break # File is not empty, break out of the loop and continue
    else
        echo "Warning: The file '$LOGFILE' is empty."
        read -p "Please enter a new log file path: " LOGFILE
        
        # We need to re-verify the new input actually exists
        if [ ! -f "$LOGFILE" ]; then
            echo "Error: File $LOGFILE not found."
            exit 1
        fi
    fi
done

# Original looping logic to count keywords
while IFS= read -r LINE; do 
    if echo "$LINE" | grep -iq "$KEYWORD"; then 
        COUNT=$((COUNT + 1)) 
    fi 
done < "$LOGFILE" 

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE" 

echo "--------------------------------"
echo "Last 5 matching lines:"
echo "--------------------------------"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5