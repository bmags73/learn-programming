# ⚙️ Helper Functions

Custom Fish shell functions to streamline your learning workflow.

---

## 🎯 Purpose

These functions automate common tasks like:
- Setting up split-screen tmux sessions for learning
- Checking git status across multiple directories
- Interactive learning menus
- Quick navigation to learning paths

---

## 📂 Available Functions

| Function | Purpose | Platform |
|----------|---------|----------|
| `learn-c.fish` | Launch C learning environment in tmux | Linux (Fish shell) |
| `learn-python.fish` | Launch Python learning environment in tmux | Linux (Fish shell) |
| `gstatus.fish` | Show git status for all learning directories | Linux (Fish shell) |
| `menu.fish` | Interactive learning menu | Linux (Fish shell) |
| `status.fish` | Display current learning progress | Linux (Fish shell) |

---

## 🚀 Function Usage

### `learn-c`

**Purpose:** Launch a tmux session optimized for C learning.

**What it does:**
- Creates/attaches to a tmux session named "learn-c"
- Split-screen layout:
  - Left pane: Neovim for editing C code
  - Right top: Shell for compiling and running
  - Right bottom: man pages or gdb

**Usage:**
```bash
learn-c
```

**Expected layout:**
```
┌────────────────┬────────────────┐
│                │  gcc/run       │
│   Neovim       ├────────────────┤
│   (code)       │  gdb/man       │
└────────────────┴────────────────┘
```

---

### `learn-python`

**Purpose:** Launch a tmux session optimized for Python learning.

**What it does:**
- Creates/attaches to a tmux session named "learn-python"
- Split-screen layout:
  - Left pane: Neovim for editing Python code
  - Right top: IPython REPL for testing
  - Right bottom: Shell for running scripts

**Usage:**
```bash
learn-python
```

**Expected layout:**
```
┌────────────────┬────────────────┐
│                │  IPython       │
│   Neovim       ├────────────────┤
│   (code)       │  Shell         │
└────────────────┴────────────────┘
```

---

### `gstatus`

**Purpose:** Quick git status check across all learning directories.

**What it does:**
- Runs `git status -s` in:
  - `c/`
  - `python/`
  - `vault/`
  - `progress-trackers/`
- Shows which directories have uncommitted changes

**Usage:**
```bash
gstatus
```

**Example output:**
```
=== C Directory ===
 M c/basics/daily/day05/day05.c
?? c/basics/daily/day06/

=== Python Directory ===
 M python/100-days-bootcamp/beginner/day03-treasure-island/main.py

=== Progress Trackers ===
 M progress-trackers/python-tracker.md
```

---

### `menu`

**Purpose:** Interactive learning menu for quick navigation.

**What it does:**
- Displays a numbered menu of common tasks
- Navigates to selected learning path
- Opens progress trackers
- Launches learning environments

**Usage:**
```bash
menu
```

**Example menu:**
```
╔═══════════════════════════════════════╗
║    Learning Programming Menu          ║
╠═══════════════════════════════════════╣
║  1) C Basics (Daily Practice)         ║
║  2) C lowlevel.academy                ║
║  3) Python Basics                     ║
║  4) Python 100 Days Bootcamp          ║
║  5) View C Progress Tracker           ║
║  6) View Python Progress Tracker      ║
║  7) Launch learn-c Environment        ║
║  8) Launch learn-python Environment   ║
║  9) Check Git Status (gstatus)        ║
║  0) Exit                              ║
╚═══════════════════════════════════════╝

Select option:
```

---

### `status`

**Purpose:** Display current learning progress at a glance.

**What it does:**
- Parses progress trackers
- Shows completion percentage
- Displays current streak
- Shows last activity date

**Usage:**
```bash
status
```

**Example output:**
```
📊 Learning Progress Status

🐍 Python (100 Days of Code):
   ├─ Progress: Day 15/100 (15%)
   ├─ Beginner: 15/30 days complete
   ├─ Current: Day 16 - Coffee Machine OOP
   └─ Last updated: 2025-09-29

🔧 C Programming:
   ├─ Fundamentals: 8/16 concepts (50%)
   ├─ lowlevel.academy: Module 2/9
   ├─ Current: Module 2.3 - Characters
   └─ Last updated: 2025-09-28

🔥 Streak: 7 days
✅ Total commits this week: 23
```

---

## 📥 Installation

### 1. Copy Functions to Fish Config

```bash
# Copy to Fish functions directory
cp functions/*.fish ~/.config/fish/functions/

# Or create symbolic links
ln -s ~/Documents/learn-programming/functions/*.fish ~/.config/fish/functions/
```

### 2. Reload Fish Shell

```bash
# Reload configuration
source ~/.config/fish/config.fish

# Or restart Fish
exec fish
```

### 3. Verify Installation

```bash
# Check if functions are available
functions | grep learn
```

You should see:
- `learn-c`
- `learn-python`
- `gstatus`
- `menu`
- `status`

---

## 🔧 Customizing Functions

### Example: Modify `learn-c.fish`

```fish
# Open the function file
nvim ~/.config/fish/functions/learn-c.fish

# Example customization:
function learn-c
    # Change the working directory
    set -l work_dir ~/Documents/learn-programming/c/basics/daily

    # Change window layout
    tmux split-window -h
    tmux split-window -v

    # Send custom commands
    tmux send-keys "cd $work_dir" C-m
    tmux send-keys "nvim" C-m
end
```

---

## 🎨 Function Ideas (Future)

- [ ] `next-day` - Auto-navigate to next incomplete day
- [ ] `commit-day` - Commit with formatted message
- [ ] `review-yesterday` - Review yesterday's work
- [ ] `random-challenge` - Pick a random challenge problem
- [ ] `time-log` - Track time spent on each day

---

## 🐛 Troubleshooting

### Functions not found

**Problem:** `fish: Unknown command 'learn-c'`

**Solution:**
```bash
# Check if file exists
ls ~/.config/fish/functions/learn-c.fish

# If not, copy it
cp functions/learn-c.fish ~/.config/fish/functions/

# Reload fish
exec fish
```

### tmux issues

**Problem:** `tmux: command not found`

**Solution:**
```bash
# Install tmux
sudo pacman -S tmux  # Arch-based
sudo apt install tmux  # Debian-based
```

### Git status not showing

**Problem:** `gstatus` shows nothing

**Solution:**
```bash
# Ensure you're in the repo root
cd ~/Documents/learn-programming

# Run gstatus
gstatus
```

---

## 📚 Fish Shell Resources

- [Fish Documentation](https://fishshell.com/docs/current/)
- [Fish Tutorial](https://fishshell.com/docs/current/tutorial.html)
- [Fish Functions Guide](https://fishshell.com/docs/current/language.html#functions)

---

## 🤝 Contributing Functions

### Adding a New Function

1. **Create the function file**
   ```bash
   nvim functions/new-function.fish
   ```

2. **Write the function**
   ```fish
   function new-function --description "Brief description"
       # Your code here
       echo "Function executed!"
   end
   ```

3. **Test it**
   ```bash
   source functions/new-function.fish
   new-function
   ```

4. **Document it in this README**

5. **Commit**
   ```bash
   git add functions/new-function.fish
   git add functions/README.md
   git commit -m "Add new-function for [purpose]"
   ```

---

## 🔗 Related

- [Main README](../README.md)
- [Scripts Directory](../scripts/README.md)
- [Workflow Guide](../docs/workflow.md)
- [tmux Cheatsheet](../vault/cheatsheets/tmux.md)

---

**Work smarter, not harder! ⚙️**

*Last updated: 2025-09-30*
