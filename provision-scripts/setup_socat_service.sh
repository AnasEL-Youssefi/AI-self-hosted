#!/bin/bash
set -e
echo "🔧 Setting up Socat systemd service..."
sudo apt install socat -y
sudo tee /etc/systemd/system/socat-ollama.service > /dev/null <<EOF
[Unit]
Description=Socat proxy to expose Ollama on 0.0.0.0
[Service]
ExecStart=/usr/bin/socat TCP-LISTEN:11435,reuseaddr,fork TCP:127.0.0.1:11434
Restart=always
[Install]
WantedBy=multi-user.target
EOF
sudo systemctl daemon-reload
sudo systemctl enable socat-ollama
sudo systemctl start socat-ollama
echo "✅ Socat service active!"
