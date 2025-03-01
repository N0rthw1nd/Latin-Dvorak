#!/bin/bash
# Direct installation script for Latin-Dvorak keyboard layout
# This script installs the layout directly, without using the package system

# Exit on error
set -e

# Check if running as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root. Please use sudo."
    exit 1
fi

echo "=== Installing Latin-Dvorak keyboard layout directly ==="

# Install X11 keyboard layout
echo "Installing X11 keyboard layout..."
mkdir -p /usr/share/X11/xkb/symbols
cp dvp-it /usr/share/X11/xkb/symbols/
chmod 644 /usr/share/X11/xkb/symbols/dvp-it

# Install console keymap
echo "Installing console keymap..."
mkdir -p /usr/share/kbd/keymaps/i386/dvorak
gzip -c < dvp-it.map > dvp-it.map.gz
cp dvp-it.map.gz /usr/share/kbd/keymaps/i386/dvorak/
chmod 644 /usr/share/kbd/keymaps/i386/dvorak/dvp-it.map.gz

# Refresh XKB cache
echo "Refreshing XKB cache..."
rm -f /var/lib/xkb/*.xkm 2>/dev/null || true

# Verify installation
if [ -f "/usr/share/X11/xkb/symbols/dvp-it" ]; then
    echo "✓ X11 keyboard layout installed successfully."
else
    echo "✗ Failed to install X11 keyboard layout."
    exit 1
fi

if [ -f "/usr/share/kbd/keymaps/i386/dvorak/dvp-it.map.gz" ]; then
    echo "✓ Console keymap installed successfully."
else 
    echo "✗ Failed to install console keymap."
fi

echo ""
echo "=== Installation complete ==="
echo "You can now use the Latin-Dvorak keyboard layout."
echo "To set the level 3 switch (for AltGr key), run: setxkbmap -option lv3:ralt_switch"
echo "To switch to the layout, run: setxkbmap dvp-it" 