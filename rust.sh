#!/usr/bin/env bash
set -euo pipefail

# Install Rust
if ! command -v rustc >/dev/null; then
  echo "Installing Rust..."
  curl https://sh.rustup.rs -sSf | sh -s -- -y
  source $HOME/.cargo/env
else
  echo "Rust is already installed: $(rustc --version)"
fi