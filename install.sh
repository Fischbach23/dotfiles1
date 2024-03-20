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


#miniconda Install
#!/bin/bash

# Check if the user is root
if [ "$EUID" -ne 0 ]; then
    echo "Error: This script must be run as root."
    exit 1
fi

# Download Miniconda installer script
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh

# Execute the installer script with root privileges
bash miniconda.sh -b -p /usr/local/miniconda

# Initialize Miniconda
/usr/local/miniconda/bin/conda init

# Remove the installer script
rm miniconda.sh

echo "Miniconda installed successfully."


