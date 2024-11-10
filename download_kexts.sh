#!/bin/bash

# Set the repository URL
REPO_URL="https://github.com/dortania/OpenCore-Legacy-Patcher.git"

# Clone the OCLP repository
git clone "$REPO_URL" --depth 1
cd OpenCore-Legacy-Patcher || exit

# Print current directory contents before removing files
echo "Current directory contents before cleanup:"
ls -R

# Remove all files and directories except for 'payloads'
cp -r  payloads/Kexts/Acidanthera/AirportBrcmFixup-v2.1.8-RELEASE.zip payloads/Kexts/Wifi/
rm -rf payloads/Kexts/Wifi/IOSkywalkFamily-v1.2.0.txt
cp -r payloads/Kexts/Wifi cd ..
cd ..
rm -rf OpenCore-Legacy-Patcher
cd Wifi
unzip IOSkywalkFamily-v1.2.0.zip
rm -rf IOSkywalkFamily-v1.2.0.zip
unzip AirportBrcmFixup-v2.1.8-RELEASE.zip
rm -rf AirportBrcmFixup-v2.1.8-RELEASE.zip
unzip IO80211FamilyLegacy-v1.0.0.zip
rm -rf IO80211FamilyLegacy-v1.0.0.zip
unzip corecaptureElCap-v1.0.2.zip
rm -rf corecaptureElCap-v1.0.2.zip
unzip IO80211ElCap-v2.0.1.zip
rm -rf IO80211ElCap-v2.0.1.zip
cd ..
zip -r Wifi.zip ./Wifi/*
rm -rf Wifi
# Print current directory contents after cleanup
echo "Current directory contents after cleanup:"
ls -R