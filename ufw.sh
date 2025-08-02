#!/usr/bin/env bash
set -euo pipefail

# Install and configure UFW
if ! command -v ufw >/dev/null; then
  echo "Installing ufw (Uncomplicated Firewall)..."
  sudo apt-get update
  sudo apt-get install -y ufw
fi

sudo ufw allow ssh
sudo ufw enable
sudo ufw status verbose