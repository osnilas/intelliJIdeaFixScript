#!/bin/bash

# Specify the directory path
directory_path="/home/osno/.var/app/com.jetbrains.IntelliJ-IDEA-Community/config/JetBrains/IdeaIC2023.3"

# Check if the directory exists
if [ -d "$directory_path" ]; then
    # Change to the specified directory
    cd "$directory_path" || exit

    # Check if the file ".lock" exists
    if [ -e ".lock" ]; then
        # Remove the file ".lock"
        rm -f ".lock"
        echo "File '.lock' removed successfully."
    else
        echo "File '.lock' not found in the specified directory."
    fi
else
    echo "Directory not found: $directory_path"
fi
