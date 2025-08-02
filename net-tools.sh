#!/usr/bin/env bash
set -euo pipefail

# Install net-tools
if ! command -v ifconfig >/dev/null; then
  echo "Installing net-tools..."
  sudo apt-get update
  sudo apt-get install -y net-tools
else
  echo "net-tools already installed."
fi