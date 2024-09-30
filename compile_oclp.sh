#!/bin/bash

# Script to download, extract, build, and run Sequoia Development Bench

# Variables
cd $HOME/Desktop
REPO_URL="https://github.com/dortania/OpenCore-Legacy-Patcher/archive/refs/heads/main.zip"

ZIP_FILE="sequoia-dev-bench.zip"
EXTRACTED_DIR="OpenCore-Legacy-Patcher-main"

# Download the ZIP file
echo "Downloading Sequoia Development Bench..."
curl -L -o "$ZIP_FILE" "$REPO_URL"

# Extract the ZIP file
echo "Extracting the ZIP file..."
unzip -q "$ZIP_FILE"

# Change directory to the extracted folder
cd $EXTRACTED_DIR || { echo "Failed to change directory to $EXTRACTED_DIR. Please check if the directory exists."; exit 1; }

# Verify the presence of the required directories and files before proceeding
if [ ! -d "ci_tooling/privileged_helper_tool/" ]; then
    echo "Error: 'ci_tooling/privileged_helper_tool/' does not exist."
    exit 1
fi

# Build the project
echo "Building Sequoia Development Bench..."
cd ci_tooling/privileged_helper_tool/
make debug
if [ $? -ne 0 ]; then
    echo "Error: Make failed."
    exit 1
fi

sudo bash install.sh
cd ../..

# Create and activate a virtual environment for Python dependencies
python3 -m venv venv || { echo "Error: Failed to create virtual environment."; exit 1; }
source venv/bin/activate || { echo "Error: Failed to activate virtual environment."; exit 1; }

# Install Python dependencies using pip
pip install -r requirements.txt || { echo "Error: Failed to install requirements."; exit 1; }

# Run the build command
sudo ./Build-Project.command || { echo "Error: Build command failed."; exit 1; }

# Run the OpenCore-Patcher GUI
python3 ./OpenCore-Patcher-GUI.command || { echo "Error: OpenCore-Patcher GUI command failed."; exit 1; }

# Inform the user that the build is complete
echo "Build complete."

# Clean up
deactivate  # Make sure to deactivate virtual environment at end
exit 0
