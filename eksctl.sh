#!/usr/bin/env bash
set -euo pipefail

# Install eksctl
if ! command -v eksctl >/dev/null; then
  echo "Installing eksctl..."
  curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" |
    tar xz -C /tmp
  sudo mv /tmp/eksctl /usr/local/bin
else
  echo "eksctl is already installed: $(eksctl version)"
fi