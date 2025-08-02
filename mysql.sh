#!/usr/bin/env bash
set -euo pipefail

# Install MySQL Server
if ! command -v mysql >/dev/null; then
  echo "Installing MySQL Server..."
  sudo apt-get update
  sudo apt-get install -y mysql-server
  sudo systemctl enable mysql --now
else
  echo "MySQL is already installed: $(mysql --version)"
fi