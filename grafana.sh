#!/usr/bin/env bash
set -euo pipefail

# Install Grafana
if ! command -v grafana-server >/dev/null; then
  echo "Installing Grafana..."
  sudo apt-get install -y apt-transport-https
  sudo apt-get install -y software-properties-common wget
  wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
  echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee /etc/apt/sources.list.d/grafana.list
  sudo apt-get update
  sudo apt-get install -y grafana
  sudo systemctl enable grafana-server --now
else
  echo "Grafana is already installed: $(grafana-server -v | head -n1)"
fi