#!/bin/bash

# Function to prompt user confirmation
confirm() {
    read -r -p "$1 [y/N]: " response
    case "$response" in
        [yY][eE][sS]|[yY]) return 0 ;;  # Return 0 for success
        *) return 1 ;;  # Return 1 for failure
    esac
}

# Request sudo access at the beginning
if ! sudo -v; then
    echo "Superuser privileges required. Exiting."
    exit 1
fi

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

# Clear System Diagnostic Reports & Crash Reports
if confirm "Do you want to delete all system diagnostic and crash reports?"; then
    sudo rm -rf /Library/Logs/DiagnosticReports/*
    rm -rf ~/Library/Logs/DiagnosticReports/*
    echo "System diagnostic and crash reports deleted."
else
    echo "Skipped deleting system diagnostic and crash reports."
fi

# Clear Unified Logs
if confirm "Do you want to erase all unified logs? (Advanced)"; then
    sudo log erase --all
    echo "Unified logs erased."
else
    echo "Skipped erasing unified logs."
fi

# Reboot Prompt
if confirm "Do you want to reboot the system? (Advanced)"; then
    echo "Rebooting now..."
    sudo reboot
else
    echo "Skipped system reboot."
fi

