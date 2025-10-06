```bash
#!/bin/bash
set -e
echo "🚀 Installing Ollama..."
sudo apt update && sudo apt upgrade -y
curl -fsSL https://ollama.com/install.sh | sh
ollama --version
echo "✅ Ollama installation complete!"
