#!/usr/bin/env bash
set -euo pipefail

# Display disk usage in a readable format
echo "Disk usage summary for all mounted filesystems:"
df -hT | grep -v tmpfs