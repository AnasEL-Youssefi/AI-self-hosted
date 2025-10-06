# 🏗️ System Architecture

```text
   +---------------------------+
   |       VPS (Ubuntu 24)     |
   |---------------------------|
   |  Ollama Server (11434)    |
   |  Socat Proxy (11435)      |
   |  Firewall (UFW Rules)     |
   +---------------------------+
             ↑
        External Client
             |
     curl / API request

Workflow:

Client sends HTTP request to http://<server-ip>:11435

Socat forwards it to Ollama internal API (127.0.0.1:11434)

Ollama generates model response

Response returned to client
