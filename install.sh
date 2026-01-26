#!/bin/bash
# PVM Installation Script
echo "================================================"
echo "         📝ᴘᴠᴍ ʙᴏᴛ ɪɴꜱᴛᴀʟʟᴀᴛɪᴏɴ ꜱᴄʀɪᴘᴛ 
echo ".          🚀 ᴘᴏᴡᴇʀᴇᴅ ʙʏ ᴡᴀɴɴʏ ᴅʀᴀɢᴏɴ 
echo "================================================"
echo ""

# Check if running as root
if [ "$EUID" -ne 0 ]; then 
    echo "Please run as root (use sudo)"
    exit 1
fi

# Update system
echo "[1/7] Updating system packages..."
apt update && apt upgrade -y

# Install LXC/LXD
echo "[2/7] Installing LXC and dependencies..."
apt install lxc lxc-utils bridge-utils uidmap -y

echo "[3/7] Installing snapd..."
apt install snapd -y
systemctl enable --now snapd.socket

echo "[4/7] Installing LXD ..."
snap install lxd

# Add user to lxd group
if [ -n "$SUDO_USER" ]; then
    usermod -aG lxd $SUDO_USER
    echo "Added $SUDO_USER to lxd group"
else
    echo "Warning: Could not detect sudo user. Please add your user to lxd group manually:"
    echo "sudo usermod -aG lxd \$USER"
fi

# Install Python and pip
echo "[5/7] Installing Python and pip..."
apt install python3 python3-pip python3-venv -y

# Create virtual environment
echo "[6/7] Setting up Python virtual environment..."
python3 -m venv venv
source venv/bin/activate

# Install Python dependencies
echo "[7/7] Installing Python packages..."
pip install --upgrade pip
pip install -U discord.py
pip install PyNaCl

# Create data directories
mkdir -p data
mkdir -p static/uploads/{logos,backgrounds,payments}

# Set permissions
chown -R $SUDO_USER:$SUDO_USER .

echo ""
echo "================================================"
echo "         ɪɴꜱᴛᴀʟʟᴀᴛɪᴏɴ ᴄᴏᴍᴘʟᴇᴛᴇᴅ 
echo "         ᴛʜᴀɴᴋꜱ ʏᴏᴜ ꜰᴏʀ ᴜꜱɪɴɢ ᴄᴏᴅᴇ
echo "================================================"
echo ""
echo "Next steps:"
echo "1. Initialize LXD: sudo lxd init"
echo "   (Choose default options or customize as needed)"
echo ""
echo "2. Re-login or run: newgrp lxd"
echo ""
echo "3. Start the panel:"
echo "   cd LXC-BOT-WANNYDRAGON"
echo "   source venv/bin/activate"
echo "   "
echo "4.  Update file " 
echo "   nano .env" 
echo "   
echo " 
echo ""
echo "================================================"
