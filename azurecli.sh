#!/usr/bin/env bash
set -euo pipefail

# Install Azure CLI
if ! command -v az >/dev/null; then
  echo "Installing Azure CLI..."
  curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
else
  echo "Azure CLI is already installed: $(az --version | head -n1)"
fi