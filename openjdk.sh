#!/usr/bin/env bash
set -euo pipefail

# Install OpenJDK (default JDK version)
if ! command -v javac >/dev/null; then
  echo "Installing OpenJDK..."
  sudo apt-get update
  sudo apt-get install -y default-jdk
else
  echo "Java is already installed: $(java -version 2>&1 | head -n1)"
fi