#!/usr/bin/env bash
set -euo pipefail

# Install kubectl
if ! command -v kubectl >/dev/null; then
  echo "Installing kubectl..."
  curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
  chmod +x kubectl
  sudo mv kubectl /usr/local/bin/
else
  echo "kubectl is already installed: $(kubectl version --client --short)"
fi