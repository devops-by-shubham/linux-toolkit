#!/usr/bin/env bash
set -euo pipefail

# Install htop
if ! command -v htop >/dev/null; then
  echo "Installing htop..."
  sudo apt-get update
  sudo apt-get install -y htop
else
  echo "htop is already installed: $(htop --version)"
fi