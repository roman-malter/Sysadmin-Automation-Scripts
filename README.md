# System Administration & Infrastructure Automation Portfolio

## 📋 Project Overview
This repository showcases a multi-tier system administration portfolio. It ranges from local routine automation scripts to scalable remote configuration management and cloud orchestration, demonstrating hands-on experience with cross-platform management and Infrastructure as Code (IaC) principles.

## 📁 Repository Structure
```text
├── README.md
├── checklists/
│   └── server-hardening.md  # Standard security configurations
├── scripts/
│   ├── backup.sh            # Linux automated backup script
│   └── backup.ps1           # Windows PowerShell backup script
├── ansible/
│   ├── inventory.ini        # Target server definitions and variables
│   └── webserver.yml        # Playbook for automated Apache deployment
└── terraform/
    ├── variables.tf         # Declarative cloud variable mappings
    └── main.tf              # Cloud infrastructure topology blueprint
```

---

## 🛠️ Project 1: Routine Automation & Checklists

### 🚀 Features
* **Cross-Platform Backups:** Automated scripts for both Bash (Linux) and PowerShell (Windows) that compress and timestamp critical folders.
* **Server Hardening:** Standard Operating Procedures (SOPs) checklist to secure fresh server deployments against unauthorized access.

### 💻 Setup & Deployment

#### Option A: Linux Deployment (Bash)
1. **Usage:** Clone the repository, make the script executable, and run it:
   ```bash
   git clone https://github.com[YOUR-GITHUB-USERNAME]/[YOUR-REPO-NAME].git
   cd [YOUR-REPO-NAME]/scripts
   chmod +x backup.sh
   sudo ./backup.sh
   ```
2. **Automation:** To run daily at midnight, add this to your system crontab (`crontab -e`):
   ```text
   0 0 * * * /path/to/scripts/backup.sh
   ```

#### Option B: Windows Deployment (PowerShell)
1. **Usage:** Clone the repository and run the script (ensure execution policies allow it):
   ```powershell
   git clone https://github.com[YOUR-GITHUB-USERNAME]/[YOUR-REPO-NAME].git
   cd [YOUR-REPO-NAME]\scripts
   Set-ExecutionPolicy RemoteSigned -Scope Process -Force
   .\backup.ps1
   ```
2. **Automation:** Configure a **Windows Task Scheduler** task to run daily with the action:
   * **Program:** `powershell.exe`
   * **Arguments:** `-ExecutionPolicy Bypass -File "C:\Path\To\scripts\backup.ps1"`

---

## ⚡ Project 2: Configuration Management (Ansible)

### 🚀 Features
* **Agentless Automation:** Manages configurations over secure SSH channels without installing software on target nodes.
* **Automated Web Server Provisioning:** Automatically updates server package definitions and deploys functional Apache web hosting infrastructure.

### 🖥️ Setup & Deployment
1. **Prerequisites:** Linux administration machine with Ansible installed and SSH key access to target hosts.
2. **Usage:** Run the playbook against your host groups to execute all configuration tasks sequentially:
   ```bash
   ansible-playbook -i ansible/inventory.ini ansible/webserver.yml
   ```

---

## ☁️ Project 3: Infrastructure as Code (Terraform)

### 🚀 Features
* **Declarative Orchestration:** Infrastructure state is completely defined via configuration code, allowing version-controlled architecture.
* **Cloud Network Isolation:** Automatically builds a cloud security group/firewall isolating network ports to strictly HTTP and SSH traffic.
* **Rapid Deployment:** Spin up or instantly tear down multi-tier computing resources programmatically.

### 🌐 Setup & Deployment
1. **Prerequisites:** Install the Terraform CLI and configure your local cloud environment access credentials (e.g., AWS CLI).
2. **Initialization:** Prepare the local working directory and download the specified provider modules:
   ```bash
   terraform init
   ```
3. **Execution Plan:** Review the structural changes Terraform plans to execute against your cloud account:
   ```bash
   terraform plan
   ```
4. **Apply Architecture:** Build the virtual architecture in the live cloud environment:
   ```bash
   terraform apply
   ```
