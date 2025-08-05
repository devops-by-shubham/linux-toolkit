#!/usr/bin/env bash
set -euo pipefail

# Colors for output
RED='\033[0;31m'
YELLOW='\033[1;33m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# Thresholds
WARNING_THRESHOLD=70
CRITICAL_THRESHOLD=90

# Log file
LOG_FILE="/var/log/disk_usage_monitor.log"
mkdir -p "$(dirname "$LOG_FILE")"

# Header
echo "Disk usage summary for all mounted filesystems:" | tee -a "$LOG_FILE"
echo "Generated on: $(date)" | tee -a "$LOG_FILE"
echo "---------------------------------------------------" | tee -a "$LOG_FILE"

# Get disk usage, excluding virtual filesystems
df -hT --output=source,fstype,size,used,avail,pcent,target |
  grep -Ev 'tmpfs|devtmpfs|overlay|squashfs|docker' |
  tail -n +2 |
  while read -r line; do
    usage_percent=$(echo "$line" | awk '{print $6}' | tr -d '%')
    
    if (( usage_percent >= CRITICAL_THRESHOLD )); then
      color=$RED
      status="CRITICAL"
    elif (( usage_percent >= WARNING_THRESHOLD )); then
      color=$YELLOW
      status="WARNING"
    else
      color=$GREEN
      status="OK"
    fi

    # Print colored output to terminal
    echo -e "${color}${line}  [$status]${NC}"
    
    # Log output without colors
    echo "$line  [$status]" >> "$LOG_FILE"
  done

echo "---------------------------------------------------" | tee -a "$LOG_FILE"
echo "Log saved to $LOG_FILE"
