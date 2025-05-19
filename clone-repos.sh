#!/bin/bash

# Function to run the commands for cloning the repositories
clone_repos() {
    echo "Cloning EcoBin-Auth-Service repository..."
    git clone https://github.com/Ankan5960/EcoBin-Auth-Service.git

    echo "Cloning EcoBin-Sensor-Data-Service repository..."
    git clone https://github.com/Ankan5960/EcoBin-Sensor-Data-Service.git
    
    echo "Cloning EcoBin-User-Data-Service repository..."
    git clone https://github.com/Ankan5960/EcoBin-User-Data-Service.git
}

# Detect the operating system and execute the cloning function
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Linux
    clone_repos
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    clone_repos
elif [[ "$OSTYPE" == "cygwin" || "$OSTYPE" == "msys" ]]; then
    # Windows (Git Bash or WSL)
    clone_repos
else
    echo "Unsupported OS. This script supports macOS, Linux, and Windows."
    exit 1
fi
