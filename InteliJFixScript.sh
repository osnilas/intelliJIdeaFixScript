#!/bin/bash

directory_path="/home/osno/.var/app/com.jetbrains.IntelliJ-IDEA-Community/config/JetBrains/IdeaIC2023.3"

if [ -d "$directory_path" ]; then

    cd "$directory_path" || exit

    if [ -e ".lock" ]; then
        rm -f ".lock"
        echo "File '.lock' removed successfully."
    else
        echo "File '.lock' not found in the specified directory."
    fi
else
    echo "Directory not found: $directory_path"
fi
