#!/bin/bash 

# Script 5: Open Source Manifesto Generator 

echo "Answer three questions to generate your manifesto." 
echo "" 

read -p "1. Name one open-source tool you use every day: " TOOL 
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM 
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')

OUTPUT="manifesto_$(whoami).txt"

echo "--- The Open Source Manifesto ---" > "$OUTPUT"

# Append the rest of the paragraph to the file using >>
echo "Date: $DATE" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I believe in a digital world built on collaboration and transparency." >> "$OUTPUT"
echo "Every single day, tools like $TOOL empower me to create, learn, and grow." >> "$OUTPUT"
echo "In the realm of software and beyond, true freedom means $FREEDOM." >> "$OUTPUT"
echo "Because of the open-source community's immense generosity, I commit to paying it forward." >> "$OUTPUT"
echo "Driven by this philosophy, I pledge to one day build $BUILD and share it freely with the world." >> "$OUTPUT"

echo "Manifesto saved to $OUTPUT" 
cat "$OUTPUT"