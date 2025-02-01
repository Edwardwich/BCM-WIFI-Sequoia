#!/bin/bash

# Function to prompt user confirmation
confirm() {
    read -r -p "$1 [y/N]: " response
    case "$response" in
        [yY][eE][sS]|[yY])
            true
            ;;
        *)
            false
            ;;
    esac
}

# Clear System Logs
if confirm "Do you want to delete all system logs?"; then
    sudo rm -rf /private/var/log/*
    echo "System logs deleted."
else
    echo "Skipped deleting system logs."
fi

# Clear User Logs
if confirm "Do you want to delete all user logs?"; then
    rm -rf ~/Library/Logs/*
    echo "User logs deleted."
else
    echo "Skipped deleting user logs."
fi

# Clear System Diagnostic Reports
if confirm "Do you want to delete all system diagnostic reports?"; then
    sudo rm -rf /Library/Logs/DiagnosticReports/*
    sudo rm -rf ~/Library/Logs/DiagnosticReports/*
    echo "System diagnostic reports deleted."
else
    echo "Skipped deleting system diagnostic reports."
fi

# Clear Crash Reports
if confirm "Do you want to delete all crash reports?"; then
    rm -rf ~/Library/Logs/DiagnosticReports/*
    sudo rm -rf /Library/Logs/DiagnosticReports/*
    echo "Crash reports deleted."
else
    echo "Skipped deleting crash reports."
fi

# Optional: Clear Unified Logs
if confirm "Do you want to erase all unified logs? (Advanced)"; then
    sudo log erase --all
    echo "Unified logs erased."
else
    echo "Skipped erasing unified logs."
fi
if confirm "Do you want to reboot system? (Advanced)"; then
    sudo reboot
    echo "Unified logs erased."
else
    echo "Skipped erasing unified logs."
