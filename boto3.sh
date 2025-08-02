#!/usr/bin/env bash
set -euo pipefail

# Ensure Python 3 is installed
if ! command -v python3 >/dev/null; then
  echo "Python3 not found. Installing Python3..."
  sudo apt-get update
  sudo apt-get install -y python3 python3-pip
else
  echo "Python3 is already installed: $(python3 --version)"
fi

# Install Boto3 (AWS SDK for Python)
if ! python3 -c "import boto3" &>/dev/null; then
  echo "Installing boto3..."
  sudo pip3 install boto3
else
  echo "boto3 is already installed: $(pip3 show boto3 | grep Version)"
fi