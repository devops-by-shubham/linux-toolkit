# 🐧 Linux Toolkit Setup Scripts

A curated collection of Bash scripts to automate the installation and setup of common Linux utilities, developer tools, DevOps platforms, and monitoring agents. Ideal for provisioning fresh environments or keeping local setups consistent.

---

## 📁 Repository Structure
.
├── scripts/
│ ├── ansible.sh
│ ├── boto3.sh
│ ├── disk-usage-report.sh
│ ├── fail2ban.sh
│ ├── grafana.sh
│ ├── golang.sh
│ ├── helm.sh
│ ├── htop.sh
│ ├── jq.sh
│ ├── minikube.sh
│ ├── net-tools.sh
│ ├── nodejs.sh
│ ├── openjdk.sh
│ ├── prometheus.sh
│ ├── rust.sh
│ ├── tree.sh
│ └── ufw.sh
└── README.md

---

## 📦 Categories & Tools

| Category        | Tools                                           |
|----------------|--------------------------------------------------|
| **System Utils**   | `htop`, `jq`, `net-tools`, `tree`, `disk-usage-report` |
| **Languages**      | `python3 & boto3`, `nodejs`, `golang`, `openjdk`, `rust` |
| **DevOps Tools**   | `ansible`, `helm`                             |
| **Kubernetes**     | `minikube`                                    |
| **Monitoring**     | `prometheus`, `grafana`                       |
| **Security**       | `fail2ban`, `ufw`                             |

---

## 🚀 Usage

Run scripts individually:

```bash
chmod +x scripts/htop.sh
./scripts/htop.sh

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



Most tools will not reinstall if already present.
Scripts are kept simple and editable—customize as needed.


🤝 Contributions
Contributions and improvements are welcome! Submit a pull request or open an issue with suggestions.
