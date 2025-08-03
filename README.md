# 🐧 Linux Toolkit Setup Scripts

A curated collection of Bash scripts to automate the installation and setup of common Linux utilities, developer tools, DevOps platforms, and monitoring agents. Ideal for provisioning fresh environments or keeping local setups consistent.

---

## 📁 Repository Structure

.
├── scripts/
│ ├── ansible.sh
│ ├── awscli.sh
│ ├── azurecli.sh
│ ├── boto3.sh
│ ├── disk-usage-report.sh
│ ├── docker.sh
│ ├── docker-compose.sh
│ ├── eksctl.sh
│ ├── fail2ban.sh
│ ├── golang.sh
│ ├── grafana.sh
│ ├── helm.sh
│ ├── htop.sh
│ ├── jenkins.sh
│ ├── jfrog.sh
│ ├── jq.sh
│ ├── k8s-setup-kubeadm.sh
│ ├── kubectl.sh
│ ├── maven.sh
│ ├── minikube.sh
│ ├── mysql.sh
│ ├── net-tools.sh
│ ├── nodejs.sh
│ ├── openjdk.sh
│ ├── prometheus.sh
│ ├── rust.sh
│ ├── sonarqube.sh
│ ├── terraform.sh
│ ├── tree.sh
│ ├── trivy.sh
│ ├── ufw.sh
└── README.md


---

## 📦 Categories & Tools

| Category             | Tools                                                                 |
|----------------------|-----------------------------------------------------------------------|
| **System Utilities** | `htop`, `jq`, `net-tools`, `tree`, `disk-usage-report.sh`            |
| **Languages**        | `python3 & boto3`, `golang`, `nodejs`, `openjdk`, `rust`, `maven`     |
| **Databases**        | `mysql`                                                               |
| **Security**         | `fail2ban`, `ufw`, `trivy`                                            |
| **DevOps Tools**     | `ansible`, `terraform`, `jenkins`, `sonarqube`, `jfrog`, `docker-compose` |
| **Monitoring/Logging**| `prometheus`, `grafana`                                              |
| **Containers & K8s** | `docker`, `minikube`, `kubectl`, `helm`, `k8s-setup-kubeadm.sh`, `eksctl` |
| **Cloud CLIs**       | `awscli`, `azurecli`                                                  |

---

## 🚀 Usage

Run any script directly:

```bash
chmod +x scripts/docker.sh
./scripts/docker.sh


## Or create a wrapper to run multiple setups in a row (optional).

✅ Requirements
Ubuntu/Debian-based system
sudo privileges
Internet access
bash interpreter

💡 Notes
All scripts use set -euo pipefail for strict error handling.
What does set -euo pipefail mean?

-e: Exit immediately if any command returns a non-zero status (prevents continuing on errors).
-u: Treat unset variables as an error, exiting the script when referencing an undefined variable.
-o pipefail: Return the exit status of the last command in a pipeline that failed (if any), instead of the status of the final command.

Together, these flags make the scripts more robust and predictable by catching failures and undefined variables early.
This is for Ubuntu based systems (apt repo)
If using AWS Linux, Centos or any yum repo based system, then modify accordingly


Most tools will not reinstall if already present.
Scripts are kept simple and editable—customize as needed.


🤝 Contributions
Contributions and improvements are welcome! Submit a pull request or open an issue with suggestions.
