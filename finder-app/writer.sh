#!/bin/sh
# Writer Script for Assignment 1
# Author: Josh Lalonde

WRITE_FILE=$1
WRITE_STR=$2

# Check if arguments are provided
if [ -z "$WRITE_FILE" ] || [ -z "$WRITE_STR" ]; then
    echo "Error: <WRITE_FILE> and <WRITE_STR> arguments are required"
    exit 1
fi

# Create Path if it doesn't exist
mkdir -p $(dirname "$WRITE_FILE")

# Create file and overwrite if it already exists
echo "$WRITE_STR" > "$WRITE_FILE"
if [ $? -ne 0 ]; then
    echo "Error: Failed to write to file '$WRITE_FILE'"
    exit 1
fi