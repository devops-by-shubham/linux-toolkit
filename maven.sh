#!/usr/bin/env bash
set -euo pipefail

# Install Maven
if ! command -v mvn >/dev/null; then
  echo "Installing Maven..."
  sudo apt-get update
  sudo apt-get install -y maven
else
  echo "Maven is already installed: $(mvn -v | head -n1)"
fi