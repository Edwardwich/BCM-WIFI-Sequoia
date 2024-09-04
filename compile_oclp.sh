#!/bin/bash

# Script to download, extract, build, and run Sequoia Development Bench

# Variables
cd $HOME/desktop
REPO_URL="https://github.com/dortania/OpenCore-Legacy-Patcher/archive/refs/heads/sequoia-development.zip"
ZIP_FILE="sequoia-dev-bench.zip"
EXTRACTED_DIR="sequoia-dev-bench-main"

# Download the ZIP file
echo "Downloading Sequoia Development Bench..."
curl -L -o "$ZIP_FILE" "$REPO_URL"

# Extract the ZIP file
echo "Extracting the ZIP file..."
unzip -q "$ZIP_FILE"

# Change directory to the extracted folder
cd OpenCore-Legacy-Patcher-sequoia-development
# Build the project (adjust the build commands based on the actual build process)
echo "Building Sequoia Development Bench..."
cd ci_tooling/privileged_helper_tool/
make debug
sudo bash install.sh
cd ..
cd ..
 pip3 install -r requirements.txt
 ./Build-Project.command
 python3 ./OpenCore-Patcher-GUI.command
# Example build commands (replace with actual build commands)
# If using CMake
mkdir -p build

cd build
cmake ..
make

# If using Makefile
# cd ..
# make

# Inform the user that the build is complete
echo "Build complete."

# Exit the script
exit 0
