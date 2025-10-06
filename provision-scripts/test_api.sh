#!/bin/bash
SERVER_IP=$(curl -s ifconfig.me)
echo "🧪 Testing Ollama API on $SERVER_IP"
curl -X POST http://$SERVER_IP:11435/api/generate \
  -H "Content-Type: application/json" \
  -d '{"model":"mistral","prompt":"Hello from the deployment test!"}'
