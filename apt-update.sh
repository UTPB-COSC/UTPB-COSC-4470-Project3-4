#!/bin/bash

# Check for root privileges
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root."
    exit 1
fi

echo "Starting system update and upgrade..."

# Backup the existing sources.list
echo "Backing up /etc/apt/sources.list to /etc/apt/sources.list.bak"
mv /etc/apt/sources.list /etc/apt/sources.list.bak

# Overwrite the sources.list with updated URLs
echo "Updating /etc/apt/sources.list with new URLs..."
cat <<EOF > /etc/apt/sources.list
deb http://old-releases.ubuntu.com/ubuntu/ hardy main restricted universe multiverse
deb http://old-releases.ubuntu.com/ubuntu/ hardy-updates main restricted universe multiverse
deb http://old-releases.ubuntu.com/ubuntu/ hardy-security main restricted universe multiverse
deb http://old-releases.ubuntu.com/ubuntu/ hardy-backports main restricted universe multiverse
deb http://old-releases.ubuntu.com/ubuntu/ hardy-proposed main restricted universe multiverse
EOF

# Update the package list
echo "Updating package list..."
apt-get update -y

# Upgrade packages
echo "Upgrading packages..."
apt-get upgrade -y

# Full distribution upgrade
echo "Performing full distribution upgrade..."
apt-get dist-upgrade -y

# Clean up unnecessary packages
echo "Cleaning up obsolete packages..."
apt-get autoremove -y
apt-get autoclean -y

echo "Update and upgrade complete!"
