#!/usr/bin/env bash
set -euo pipefail

# Install AWS CLI v2
if ! command -v aws >/dev/null; then
  echo "Installing AWS CLI v2..."
  curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip"
  unzip /tmp/awscliv2.zip -d /tmp/
  sudo /tmp/aws/install
  rm -rf /tmp/aws /tmp/awscliv2.zip
else
  echo "AWS CLI is already installed: $(aws --version)"
fi