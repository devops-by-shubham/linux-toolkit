#!/usr/bin/env bash
set -euo pipefail

# Install fail2ban
if ! command -v fail2ban-client >/dev/null; then
  echo "Installing fail2ban..."
  sudo apt-get update
  sudo apt-get install -y fail2ban
  sudo systemctl enable fail2ban --now
else
  echo "fail2ban is already installed: $(fail2ban-client --version)"
fi