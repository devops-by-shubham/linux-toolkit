#!/usr/bin/env bash
set -euo pipefail

# Install Go (Golang)
GO_VERSION="1.22.2"
if ! command -v go >/dev/null; then
  echo "Installing Go..."
  curl -LO https://golang.org/dl/go$GO_VERSION.linux-amd64.tar.gz
  sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go$GO_VERSION.linux-amd64.tar.gz
  echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
  source ~/.bashrc
else
  echo "Go is already installed: $(go version)"
fi