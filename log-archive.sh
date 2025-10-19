#!/bin/bash

# A command-line tool to archive log files.

# --- Step 1: Input Validation ---

# Check if an argument was provided
if [ -z "$1" ]; then
    echo "Error: Please provide a log directory path."
    echo "Usage: $0 <log-directory>"
    exit 1
fi

LOG_DIR=$1

# Check if the provided path is a valid directory
if [ ! -d "$LOG_DIR" ]; then
    echo "Error: '$LOG_DIR' is not a valid directory."
    exit 1
fi

# --- Step 2: Create Archive ---

# Create a unique filename with date and time
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
FILENAME="logs_archive_${TIMESTAMP}.tar.gz"

# Define the directory where archives will be stored
ARCHIVE_DIR="archives"
mkdir -p "$ARCHIVE_DIR"

# Compress the log directory
echo "Creating archive: ${FILENAME}..."
tar -czf "${ARCHIVE_DIR}/${FILENAME}" -C "$LOG_DIR" .

# --- Step 3: Verify Success ---

# Check the exit status of the tar command
if [ $? -eq 0 ]; then
    echo "✅ Archive created successfully!"
    echo "Location: ${ARCHIVE_DIR}/${FILENAME}"
else
    echo "❌ Error: Failed to create the archive."
    exit 1
fi
