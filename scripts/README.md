# 🛠️ Helper Scripts

Automation scripts to streamline your learning workflow.

---

## 📂 Available Scripts

| Script | Purpose | Platform |
|--------|---------|----------|
| `setup-new-machine.sh` | Complete Linux environment setup | Linux |
| `setup-windows.ps1` | Complete Windows environment setup | Windows |
| `create-day.sh` | Generate new day folder with templates | Linux/Mac |
| `backup-progress.sh` | Backup progress trackers to timestamped files | Linux/Mac |

---

## 🚀 Script Usage

### `setup-new-machine.sh`

**Purpose:** Set up a new Linux machine with all development tools for C and Python learning.

**What it does:**
- Installs gcc, g++, make, gdb, valgrind
- Installs Python 3, pip, ipython
- Installs Neovim/Vim
- Configures git
- Sets up Fish shell (optional)
- Creates Python virtual environment

**Usage:**
```bash
chmod +x scripts/setup-new-machine.sh
./scripts/setup-new-machine.sh
```

**Supported distros:**
- Arch-based (Arch, CachyOS, Manjaro, etc.)
- Debian-based (Ubuntu, Linux Mint, Pop!_OS, etc.)

---

### `setup-windows.ps1`

**Purpose:** Set up a Windows machine for Python learning (and optionally C via WSL).

**What it does:**
- Checks for Python installation
- Checks for Git installation
- Creates Python virtual environment
- Installs common packages (ipython, pandas, numpy, matplotlib)

**Usage:**
```powershell
# Allow script execution (run as Administrator once)
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# Run the setup script
.\scripts\setup-windows.ps1
```

**Prerequisites:**
- Python 3.x from [python.org](https://www.python.org/downloads/)
- Git from [git-scm.com](https://git-scm.com/downloads)

---

### `create-day.sh`

**Purpose:** Automatically generate a new day folder with all necessary template files.

**What it does:**
- Creates appropriate directory structure
- Generates README.md with lesson template
- Creates code file (`main.py` or `dayXX.c`)
- Creates `notes.md` for personal notes

**Usage:**

```bash
# Python example
./scripts/create-day.sh python 5 "Password Generator"
# Creates: python/100-days-bootcamp/beginner/day05-password-generator/

# C example
./scripts/create-day.sh c 10 "Arrays and Strings"
# Creates: c/basics/daily/day10/

# General syntax
./scripts/create-day.sh <language> <day_number> "<topic_name>"
```

**Parameters:**
- `<language>` - Either `python` or `c`
- `<day_number>` - Integer (1-100 for Python, any for C)
- `<topic_name>` - Brief description (use quotes if it contains spaces)

**Python structure rules:**
- Days 1-30 → `beginner/`
- Days 31-60 → `intermediate/`
- Days 61-100 → `advanced/`

---

### `backup-progress.sh`

**Purpose:** Create timestamped backups of your progress trackers.

**What it does:**
- Copies `python-tracker.md` to `backups/python-tracker-YYYY-MM-DD.md`
- Copies `c-tracker.md` to `backups/c-tracker-YYYY-MM-DD.md`
- Keeps last 7 backups, deletes older ones

**Usage:**
```bash
./scripts/backup-progress.sh
```

**Recommended:**
- Run weekly to preserve progress milestones
- Add to cron for automatic backups:
  ```bash
  # Backup every Sunday at midnight
  0 0 * * 0 cd ~/Documents/learn-programming && ./scripts/backup-progress.sh
  ```

---

## 🔧 Making Scripts Executable

On Linux/Mac, scripts need executable permissions:

```bash
# Make all scripts executable
chmod +x scripts/*.sh

# Or individually
chmod +x scripts/create-day.sh
chmod +x scripts/backup-progress.sh
chmod +x scripts/setup-new-machine.sh
```

---

## 📝 Creating Your Own Scripts

### Script Template (Bash)

```bash
#!/bin/bash
# Description: What this script does

# Show usage information
show_usage() {
    echo "Usage: ./script-name.sh [arguments]"
    echo "Example: ./script-name.sh arg1 arg2"
}

# Check for required arguments
if [ "$#" -lt 1 ]; then
    show_usage
    exit 1
fi

# Your script logic here
echo "Script running..."

# Success message
echo "✅ Done!"
```

### Script Template (PowerShell)

```powershell
# Description: What this script does

param(
    [Parameter(Mandatory=$true)]
    [string]$Argument1
)

Write-Host "Script running..." -ForegroundColor Green

# Your script logic here

Write-Host "✅ Done!" -ForegroundColor Green
```

---

## 🎯 Planned Scripts (Future)

- [ ] `test-all.sh` - Run all tests in the repo
- [ ] `commit-day.sh` - Commit with standardized message
- [ ] `review-week.sh` - Generate weekly progress report
- [ ] `sync-vault.sh` - Sync notes to Obsidian/Logseq
- [ ] `diagram-check.sh` - Verify all diagrams have explanations

---

## 🤝 Contributing Scripts

### Adding a New Script

1. **Write the script** with clear comments
2. **Test thoroughly** on your system
3. **Add documentation** to this README
4. **Make it executable** (`chmod +x`)
5. **Commit with descriptive message**

```bash
git add scripts/new-script.sh
git add scripts/README.md
git commit -m "Add script for [purpose]"
```

---

## 🐛 Troubleshooting

### Linux/Mac

**Problem:** `Permission denied`
```bash
# Solution: Make executable
chmod +x scripts/script-name.sh
```

**Problem:** `command not found`
```bash
# Solution: Run with ./
./scripts/script-name.sh
```

### Windows

**Problem:** `cannot be loaded because running scripts is disabled`
```powershell
# Solution: Change execution policy (run as Admin)
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

**Problem:** `The term 'python' is not recognized`
```powershell
# Solution: Ensure Python is in PATH
# Or use full path: C:\Python311\python.exe
```

---

## 🔗 Related

- [Main README](../README.md)
- [Setup Guide](../docs/setup-guide.md)
- [Workflow Guide](../docs/workflow.md)
- [Helper Functions](../functions/README.md)

---

**Automate the boring stuff! 🚀**

*Last updated: 2025-09-30*
