# 🛠️ Complete Setup Guide

Get your development environment ready for C and Python learning on Linux or Windows.

---

## 🐧 Linux Setup

### Prerequisites

**Arch-based distributions** (Arch, CachyOS, Manjaro):
```bash
# Update system
sudo pacman -Syu

# Install base development tools
sudo pacman -S base-devel git

# Install C/C++ tools
sudo pacman -S gcc clang gdb valgrind make cmake

# Install Python
sudo pacman -S python python-pip ipython

# Install editors
sudo pacman -S neovim vim

# Install terminal tools
sudo pacman -S tmux fish
```

**Debian-based distributions** (Ubuntu, Linux Mint, Pop!_OS):
```bash
# Update system
sudo apt update && sudo apt upgrade

# Install base development tools
sudo apt install build-essential git

# Install C/C++ tools
sudo apt install gcc clang gdb valgrind make cmake

# Install Python
sudo apt install python3 python3-pip ipython3

# Install editors
sudo apt install neovim vim

# Install terminal tools
sudo apt install tmux fish
```

---

### Automated Setup (Recommended)

Use the provided setup script:

```bash
cd ~/Documents/learn-programming
chmod +x scripts/setup-new-machine.sh
./scripts/setup-new-machine.sh
```

This script installs all necessary tools and configures your environment.

---

### Manual Setup

#### 1. Git Configuration

```bash
# Set your identity
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"

# Set default branch name
git config --global init.defaultBranch main

# Enable colors
git config --global color.ui auto

# Set default editor
git config --global core.editor nvim
```

#### 2. Python Virtual Environment

```bash
# Navigate to repo
cd ~/Documents/learn-programming

# Create virtual environment
python -m venv venv

# Activate it
source venv/bin/activate

# Upgrade pip
pip install --upgrade pip

# Install common packages
pip install ipython pandas numpy matplotlib requests flask
```

#### 3. Fish Shell Setup (Optional but Recommended)

```bash
# Set Fish as default shell
chsh -s $(which fish)

# Copy helper functions
mkdir -p ~/.config/fish/functions
cp functions/*.fish ~/.config/fish/functions/

# Restart Fish
exec fish
```

#### 4. Neovim Configuration (Optional)

If using LazyVim:
```bash
# Backup existing config
mv ~/.config/nvim ~/.config/nvim.bak

# Clone LazyVim
git clone https://github.com/LazyVim/starter ~/.config/nvim

# Start Neovim (plugins will auto-install)
nvim
```

#### 5. tmux Configuration (Optional)

Create `~/.tmux.conf`:
```bash
# Set prefix to Ctrl-A
set -g prefix C-a
unbind C-b
bind C-a send-prefix

# Enable mouse
set -g mouse on

# Start windows at 1
set -g base-index 1

# Vi mode
setw -g mode-keys vi

# Split panes with | and -
bind | split-window -h
bind - split-window -v
```

---

## 🪟 Windows Setup

### Prerequisites

1. **Python**
   - Download from [python.org](https://www.python.org/downloads/)
   - **Important:** Check "Add Python to PATH" during installation

2. **Git**
   - Download from [git-scm.com](https://git-scm.com/downloads)
   - Use default options during installation

3. **Visual Studio Code** (Recommended)
   - Download from [code.visualstudio.com](https://code.visualstudio.com/)
   - Install Python extension

4. **C Compiler** (Optional, for C learning)
   - Option A: Install MinGW
   - Option B: Install WSL2 (recommended)

---

### Automated Setup (Recommended)

Use the provided PowerShell script:

```powershell
# Allow script execution (run as Administrator once)
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# Navigate to repo
cd ~\Documents\learn-programming

# Run setup
.\scripts\setup-windows.ps1
```

---

### Manual Setup

#### 1. Git Configuration

```powershell
# Set your identity
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"

# Set default branch
git config --global init.defaultBranch main

# Enable colors
git config --global color.ui auto
```

#### 2. Python Virtual Environment

```powershell
# Navigate to repo
cd ~\Documents\learn-programming

# Create virtual environment
python -m venv venv

# Activate it
.\venv\Scripts\Activate.ps1

# Upgrade pip
python -m pip install --upgrade pip

# Install common packages
pip install ipython pandas numpy matplotlib requests flask
```

#### 3. VS Code Extensions

Install these extensions:
- Python (Microsoft)
- Pylance (Microsoft)
- C/C++ (Microsoft) - if learning C
- GitLens
- Markdown All in One

#### 4. WSL2 Setup (For C Learning)

```powershell
# Install WSL2
wsl --install

# After restart, set up Ubuntu
# Then follow Linux setup inside WSL
```

---

## ✅ Verification

### Verify C Tools (Linux)

```bash
gcc --version
clang --version
gdb --version
valgrind --version
make --version
```

### Verify Python Tools (All Platforms)

```bash
# Linux/Mac
python --version
pip --version
ipython --version

# Windows
python --version
pip --version
ipython --version
```

### Verify Git

```bash
git --version
git config --list
```

---

## 🚀 Quick Start After Setup

### Clone the Repository

```bash
# If you haven't already
git clone https://github.com/bmags73/learn-programming.git
cd learn-programming
```

### Start Learning

**For Python:**
```bash
# Linux/Mac
cd python/100-days-bootcamp/beginner
source venv/bin/activate

# Windows
cd python\100-days-bootcamp\beginner
.\venv\Scripts\Activate.ps1
```

**For C:**
```bash
cd c/basics/daily
```

---

## 🐛 Troubleshooting

### Linux

**Problem:** `command not found`
```bash
# Check if package is installed
which [command]

# Install if missing
sudo pacman -S [package]  # Arch
sudo apt install [package]  # Debian
```

**Problem:** Permission denied when running scripts
```bash
chmod +x script-name.sh
```

### Windows

**Problem:** Python not recognized
- Ensure "Add to PATH" was checked during installation
- Or add manually: System Properties → Environment Variables

**Problem:** Cannot run PowerShell scripts
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

**Problem:** pip install fails
```powershell
# Run as Administrator or use --user flag
pip install --user package-name
```

---

## 📚 Next Steps

1. ✅ Verify all tools are installed
2. 📖 Read [Workflow Guide](./workflow.md)
3. 🎯 Check your [Progress Tracker](../progress-trackers/)
4. 🚀 Start Day 1!

---

## 🔗 Resources

- [Git Documentation](https://git-scm.com/doc)
- [Python Documentation](https://docs.python.org/3/)
- [Neovim Documentation](https://neovim.io/doc/)
- [Fish Shell Documentation](https://fishshell.com/docs/current/)
- [tmux Guide](https://github.com/tmux/tmux/wiki)

---

**Environment ready. Time to code! 🚀**

*Last updated: 2025-09-30*
