#!/bin/bash

# Script 5: Open Source Manifesto Generator

echo "Answer these questions"

read -p "1. Tool you use: " TOOL
read -p "2. Freedom means: " FREEDOM
read -p "3. What will you build: " BUILD

DATE=$(date)
OUTPUT="manifesto.txt"

echo "On $DATE, I use $TOOL. Freedom means $FREEDOM. I will build $BUILD and share it." > $OUTPUT

echo "Manifesto saved in $OUTPUT"
cat $OUTPUT