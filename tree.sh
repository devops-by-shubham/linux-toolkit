#!/usr/bin/env bash
set -euo pipefail

# Install tree
if ! command -v tree >/dev/null; then
  echo "Installing tree..."
  sudo apt-get update
  sudo apt-get install -y tree
else
  echo "tree is already installed: $(tree --version | head -n1)"
fi