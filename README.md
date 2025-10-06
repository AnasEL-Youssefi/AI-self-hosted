# AI-self-hosted
Fully automated setup for deploying open-source LLMs like Mistral, Phi-3, or OpenHermes on a self-hosted VPS using Bash + Ansible + CI/CD.

# 🧑‍🏫 Deploying Ollama on Self-Hosted VPS (LLM API Setup)

This repository provides a **complete automation** for deploying and exposing an open-source LLM via **Ollama** on a VPS such as Hostinger, Azure, or DigitalOcean.

---

## 🧱 Overview

This project teaches you how to:

1. Deploy a VPS (Ubuntu 24.04)
2. Install and configure **Ollama**
3. Pull an **open-source LLM** (Mistral / Phi-3 / OpenHermes)
4. Expose the internal Ollama API securely using **Socat**
5. Test and verify the external LLM API endpoint

---

## 🧰 Requirements

- Ubuntu 24.04 VPS  
- Basic SSH access  
- Git installed locally  
- Public IP or domain  
- Optional: Azure or Hostinger account

---

## ⚙️ Step-by-Step Setup

### 🪜 Step 1. SSH into VPS
```bash
ssh root@<your-server-ip>
sudo apt update && sudo apt upgrade -y
