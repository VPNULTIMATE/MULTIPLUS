#!/bin/bash
clear
echo "🔰 Installing HUSNPLUS PANEL..."
cd /root

# Install dependencies
apt update -y
apt install -y unzip wget curl

# Download backup zip
echo "⬇️ Downloading full backup..."
wget -O husnplus_full_backup.zip "https://github.com/VPNULTIMATE/husnplus-backup/releases/latest/download/husnplus_full_backup.zip"

# Extract files
echo "📦 Extracting files..."
unzip -o husnplus_full_backup.zip -d /root/husnplus-scripts >/dev/null 2>&1

# Set permission & run
chmod +x /root/husnplus-scripts/menu 2>/dev/null
cd /root/husnplus-scripts
echo "✅ Installation completed!"
echo "Run with: ./menu"
