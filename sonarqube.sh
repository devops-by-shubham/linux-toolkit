#!/usr/bin/env bash
set -euo pipefail

# Download and Install SonarQube (Community)
if [ ! -d "/opt/sonarqube" ]; then
  echo "Installing SonarQube..."
  wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.0.43852.zip -P /tmp
  sudo unzip /tmp/sonarqube-*.zip -d /opt
  sudo mv /opt/sonarqube-* /opt/sonarqube
  sudo useradd -r -s /bin/false sonar
  sudo chown -R sonar:sonar /opt/sonarqube
  # Setup systemd service (not shown)
else
  echo "SonarQube already seems installed under /opt/sonarqube"
fi