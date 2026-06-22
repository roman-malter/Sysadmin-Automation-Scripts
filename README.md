# System Administration & Infrastructure Automation Portfolio

## 📋 Project Overview
This repository showcases a multi-tier system administration portfolio. It ranges from local routine automation scripts to scalable remote configuration management, demonstrating hands-on experience with cross-platform management and Infrastructure as Code (IaC) principles.

## 📁 Repository Structure
```text
├── README.md
├── checklists/
│   └── server-hardening.md  # Standard security configurations
├── scripts/
│   ├── backup.sh            # Linux automated backup script
│   └── backup.ps1           # Windows PowerShell backup script
└── ansible/
    ├── inventory.ini        # Target server definitions and variables
    └── webserver.yml        # Playbook for automated Apache deployment
```

---

## 🛠️ Project 1: Routine Automation & Checklists

### 🚀 Features
* **Cross-Platform Backups:** Automated scripts for both Bash (Linux) and PowerShell (Windows) that compress and timestamp critical folders.
* **Server Hardening:** Standard Operating Procedures (SOPs) checklist to secure fresh server deployments against unauthorized access.

### 💻 Setup & Deployment

#### Option A: Linux Deployment (Bash)
1. **Prerequisites:** Ubuntu 22.04+ / Debian-based OS with root/sudo access.
2. **Usage:** Clone the repository, make the script executable, and run it:
   ```bash
   git clone https://github.com[YOUR-GITHUB-USERNAME]/[YOUR-REPO-NAME].git
   cd [YOUR-REPO-NAME]/scripts
   chmod +x backup.sh
   sudo ./backup.sh
   ```
3. **Automation:** To run daily at midnight, add this to your system crontab (`crontab -e`):
   ```text
   0 0 * * * /path/to/scripts/backup.sh
   ```

#### Option B: Windows Deployment (PowerShell)
1. **Prerequisites:** Windows Server 2019+ or Windows 10/11 running an Administrator PowerShell terminal.
2. **Usage:** Clone the repository and run the script (ensure execution policies allow it):
   ```powershell
   git clone https://github.com[YOUR-GITHUB-USERNAME]/[YOUR-REPO-NAME].git
   cd [YOUR-REPO-NAME]\scripts
   Set-ExecutionPolicy RemoteSigned -Scope Process -Force
   .\backup.ps1
   ```
3. **Automation:** Configure a **Windows Task Scheduler** task to run daily with the action:
   * **Program:** `powershell.exe`
   * **Arguments:** `-ExecutionPolicy Bypass -File "C:\Path\To\scripts\backup.ps1"`

---

## ⚡ Project 2: Configuration Management (Ansible)

### 🚀 Features
* **Agentless Automation:** Manages configurations over secure SSH channels without installing software on target nodes.
* **Idempotency:** Playbooks ensure servers are brought into the desired state without breaking existing operational configurations.
* **Automated Web Server Provisioning:** Automatically updates server package definitions and deploys functional Apache web hosting infrastructure.

### 🖥️ Setup & Deployment
1. **Prerequisites:** Linux administration machine with Ansible installed and SSH key access to target hosts.
2. **Configuration:** Update `ansible/inventory.ini` with your target server IP addresses.
3. **Usage:** Run the playbook against your host groups to execute all configuration tasks sequentially:
   ```bash
   ansible-playbook -i ansible/inventory.ini ansible/webserver.yml
   ```
