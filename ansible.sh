#!/usr/bin/env bash
set -euo pipefail

# Install Ansible
if ! command -v ansible >/dev/null; then
  echo "Installing Ansible..."
  sudo apt-get update
  sudo apt-get install -y ansible
else
  echo "Ansible is already installed: $(ansible --version | head -n1)"
fi