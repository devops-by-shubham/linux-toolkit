#!/usr/bin/env bash
set -euo pipefail

# Install JFrog CLI
if ! command -v jfrog >/dev/null; then
  echo "Installing JFrog CLI..."
  curl -fL https://getcli.jfrog.io | sh
  sudo mv jfrog /usr/local/bin/
else
  echo "JFrog CLI is already installed: $(jfrog --version)"
fi