#!/bin/sh
# Finder Script for Assignment 1
# Author: Josh Lalonde

FILES_DIR=$1
SEARCH_STR=$2

# Check if arguments are provided
if [ -z "$FILES_DIR" ] || [ -z "$SEARCH_STR" ]; then
    echo "Error: <FILES_DIR> and <SEARCH_STR> arguments are required"
    exit 1
fi

# Check if file is a directory
if [ ! -d "$FILES_DIR" ]; then
    echo "Error: <FILES_DIR> is not a directory"
    exit 1
fi

# Get number of files in dir
NUM_FILES=$(find "$FILES_DIR" -type f | wc -l)

NUM_LINES=$(grep -r "$SEARCH_STR" "$FILES_DIR" | wc -l)

echo "The number of files are $NUM_FILES and the number of matching lines are $NUM_LINES"