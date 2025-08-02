#!/usr/bin/env bash
set -euo pipefail

# Install Trivy (Aqua Security)
if ! command -v trivy >/dev/null; then
  echo "Installing Trivy..."
  sudo apt-get update
  sudo apt-get install -y trivy
else
  echo "Trivy is already installed: $(trivy --version)"
fi