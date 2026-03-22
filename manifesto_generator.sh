#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer the following questions:"

read -p "1. Tool you use daily: " TOOL
read -p "2. What does freedom mean to you? " FREEDOM
read -p "3. What will you build and share? " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "Open Source Manifesto - $DATE" > "$OUTPUT"
echo "--------------------------------------" >> "$OUTPUT"
echo "I use $TOOL in my daily work." >> "$OUTPUT"
echo "Freedom means $FREEDOM to me." >> "$OUTPUT"
echo "I will build $BUILD and share it with the community." >> "$OUTPUT"

echo "Manifesto saved to $OUTPUT"
cat "$OUTPUT"
