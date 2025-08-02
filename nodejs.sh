#!/usr/bin/env bash
set -euo pipefail

# Install Node.js and npm (using NodeSource)
if ! command -v node >/dev/null; then
  echo "Installing Node.js and npm..."
  curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
  sudo apt-get install -y nodejs
else
  echo "Node.js is already installed: $(node --version)"
fi