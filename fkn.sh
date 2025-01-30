#!/bin/bash

# Function to display help
show_help() {
    echo "Find and Kill Nautilus"
    echo "This script searches for running Nautilus processes and prompts the user to kill them one by one."
    exit 0
}

# Check for help flag
if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    show_help
fi

# Search for Nautilus processes
processes=$(ps -ae | grep -i nautilus)
pids=$(echo "$processes" | awk '{print $1}')

if [[ -z "$pids" ]]; then
    echo "No Nautilus processes found."
    exit 0
fi

# Output found processes
echo "Found Nautilus processes:"
echo "$processes"

echo
for pid in $pids; do
    read -p "Kill Nautilus process $pid? [Y/n]: " response
    response=${response,,}  # Convert to lowercase
    if [[ -z "$response" || "$response" == "y" ]]; then
        kill -9 $pid
        echo "Process $pid killed."
    else
        echo "Process $pid not killed."
    fi
done

exit 0
