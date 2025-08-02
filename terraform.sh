#!/usr/bin/env bash
set -euo pipefail

# Install Terraform
if ! command -v terraform >/dev/null; then
  echo "Installing Terraform..."
  curl -LO https://releases.hashicorp.com/terraform/
  # Note: specify version or parse latest; this is a placeholder
  unzip terraform_*.zip
  sudo mv terraform /usr/local/bin/
else
  echo "Terraform is already installed: $(terraform version | head -n1)"
fi