#!/bin/bash

# Define the target directory path
TARGET_PATH="/home/ubuntu"

# Create the directory if it doesn't exist
if [ ! -d "$TARGET_PATH" ]; then
    mkdir -p "$TARGET_PATH"
    echo "Directory '$TARGET_PATH' created."
else
    echo "Directory '$TARGET_PATH' already exists."
fi

# Set permissions to 777
chmod 777 "$TARGET_PATH"
echo "Permissions set to 777 for '$TARGET_PATH'."

# Create sample files inside the directory
touch "$TARGET_PATH/file1.txt" "$TARGET_PATH/file2.txt" "$TARGET_PATH/file3.txt"
echo "Sample files created inside '$TARGET_PATH'."

# Add some content to the files
echo "This is file1" > "$TARGET_PATH/file1.txt"
echo "This is file2" > "$TARGET_PATH/file2.txt"
echo "This is file3" > "$TARGET_PATH/file3.txt"
echo "Content added to files."

# List the contents of the directory
ls -l "$TARGET_PATH"