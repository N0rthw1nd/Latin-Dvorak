#!/bin/bash
# Installation script for Latin-Dvorak on Debian/Ubuntu

# Exit on error
set -e

# Check if running as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root. Please use sudo."
    exit 1
fi

echo "=== Installing Latin-Dvorak keyboard layout for Debian/Ubuntu ==="

# Install dependencies
echo "Installing dependencies..."
apt-get update
apt-get install -y build-essential debhelper devscripts

# Create build directory
echo "Preparing build environment..."
rm -rf build
mkdir -p build
cp -r debian build/
cp dvp-it build/
cp dvp-it.map build/
cd build

# Build the package
echo "Building package..."
debuild -us -uc -b

# Install the package
echo "Installing package..."
cd ..
dpkg -i dvp-it_*.deb || true
apt-get install -f -y

# Refresh XKB cache (sometimes needed)
echo "Refreshing XKB cache..."
rm -f /var/lib/xkb/*.xkm 2>/dev/null || true

echo ""
echo "=== Installation complete ==="
echo "You can now use the Latin-Dvorak keyboard layout."
echo "To set the level 3 switch (for AltGr key), run: setxkbmap -option lv3:ralt_switch"
echo "To switch to the layout, run: setxkbmap dvp-it" 