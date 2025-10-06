#!/bin/bash
echo "🌐 Opening necessary ports..."
sudo ufw allow 11434
sudo ufw allow 11435
sudo ufw allow 22
sudo ufw reload
sudo ufw status
echo "✅ Ports successfully opened!"
