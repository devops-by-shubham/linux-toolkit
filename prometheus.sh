#!/usr/bin/env bash
set -euo pipefail

# Install Prometheus using official tarball
PROM_VERSION="2.51.2"
if [ ! -d "/opt/prometheus" ]; then
  echo "Installing Prometheus..."
  curl -LO https://github.com/prometheus/prometheus/releases/download/v$PROM_VERSION/prometheus-$PROM_VERSION.linux-amd64.tar.gz
  tar -xzf prometheus-$PROM_VERSION.linux-amd64.tar.gz
  sudo mv prometheus-$PROM_VERSION.linux-amd64 /opt/prometheus
  sudo ln -s /opt/prometheus/prometheus /usr/local/bin/
  sudo ln -s /opt/prometheus/promtool /usr/local/bin/
else
  echo "Prometheus is already installed."
fi