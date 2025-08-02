#!/usr/bin/env bash
set -euo pipefail

# Install jq
if ! command -v jq >/dev/null; then
  echo "Installing jq..."
  sudo apt-get update
  sudo apt-get install -y jq
else
  echo "jq is already installed: $(jq --version)"
fi