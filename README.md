## 🐉 LXC-BOT-WANNYDRAGON
# High-Performance LXD VPS Automation Bot

# **Developed by @wannydragon**
**
📌 Overview

LXC-BOT-WANNYDRAGON is a powerful and dedicated automation bot designed to create, manage, and deploy LXD/LXC virtual private servers (VPS) with high uptime, optimized resource allocation, and enterprise-grade performance.

This bot is built for speed, stability, and scalability, allowing system administrators and hosting providers to deploy containers quickly and securely with minimal manual effort.

**⚙️ Key Features**

**BETTER AND FASTER REPONSE**

🔐 Secure container isolation

⏱️ High uptime & efficient resource management

📦 Preconfigured OS templates (Ubuntu, Debian, Alpine, etc.)

🔁 Start, Stop, Restart, Delete VPS via bot commands

📊 Resource monitoring support

🤖 Fully automated via bot interface

🖥️ System Requirements

Before installing LXC-BOT-WANNYDRAGON, ensure your system meets the following requirements:

Minimum Requirements

OS: Ubuntu 20.04 / 22.04 (Recommended)

Architecture: x86_64

RAM: 2 GB (4 GB+ recommended)

CPU: 2 Cores

Storage: 20 GB Free Space

Root Access: Required

🔧 Prerequisites Installation
1️⃣ Update System Packages
`apt update && apt upgrade -y`

2️⃣ Install Required Dependencies
`apt install -y curl wget git sudo lxd lxd-client jq`

3️⃣ Initialize LXD
`lxd init`


Recommended answers during setup:

Storage backend: dir or zfs

Network bridge: yes

Auto-update images: yes

🚀 LXC-BOT-WANNYDRAGON Installation
1️⃣ Clone the Bot Repository
`git clone https://github.com/wannydragon/LXC-BOT-WANNYDRAGON.git`
`cd LXC-BOT-WANNYDRAGON`
DO ```bash install.sh```
UPDATE THE .env
**
`nano .env`

UPDATE 
`
# DISCORD_TOKEN - YOUR DISCORD TOKEN
# MAIN_ADMIN - CHANGE WITH EXAMPLE - 1234567891234531
`
