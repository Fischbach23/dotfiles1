#!/bin/bash

# Check if running as root
if [[ "$(id -u)" -eq 0 ]]; then
    echo "Script is running as root"

    # Check if apt is available
    if command -v apt &>/dev/null; then
    echo "apt is installed, proceeding with package installation..."
        apt update
        apt install -y \
            nmap \
            git \
            sl \
            dnsutils \
            
    else
        echo "apt is not available. Please install packages manually."
        exit 1
    fi
