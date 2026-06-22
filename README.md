# System Administration Automation & Checklists

## 📋 Project Overview
This repository contains routine automation scripts and standardized server checklists designed to streamline system administration tasks, reduce human error, and enforce security baselines across both Linux and Windows environments.

## 🚀 Features
* **Cross-Platform Backups:** Automated scripts for both Bash (Linux) and PowerShell (Windows) that compress and timestamp critical folders.
* **Server Hardening:** Standard Operating Procedures (SOPs) to secure fresh server deployments.
* **Log Management:** Automatic cleanup of old log files (coming soon).

## 📁 Repository Structure
```text
├── README.md
├── checklists/
│   └── server-hardening.md  # Standard security configurations
└── scripts/
    ├── backup.sh             # Linux automated backup script
    └── backup.ps1            # Windows PowerShell backup script
```

## 🛠️ Getting Started

### Option A: Linux Deployment (Bash)
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

### Option B: Windows Deployment (PowerShell)
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
