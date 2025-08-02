#!/usr/bin/env bash
set -euo pipefail

# Install Helm
if ! command -v helm >/dev/null; then
  echo "Installing Helm..."
  curl https://baltocdn.com/helm/signing.asc | sudo apt-key add -
  sudo apt-get install -y apt-transport-https --no-install-recommends
  echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
  sudo apt-get update
  sudo apt-get install -y helm
else
  echo "Helm is already installed: $(helm version --short)"
fi