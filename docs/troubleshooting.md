# 🐛 Troubleshooting Guide

Common issues and solutions for your learning journey.

---

## 🐍 Python Issues

### Installation & Environment

#### Problem: `python: command not found`

**Linux:**
```bash
# Check if Python 3 is installed
python3 --version

# If not installed
sudo pacman -S python  # Arch
sudo apt install python3  # Debian/Ubuntu

# Create alias for 'python' → 'python3'
echo "alias python=python3" >> ~/.bashrc
# or for Fish shell
echo "alias python python3" >> ~/.config/fish/config.fish
```

**Windows:**
```powershell
# Ensure Python is in PATH
# Reinstall Python with "Add to PATH" checked
# Or manually add to PATH in System Properties
```

---

#### Problem: `pip: command not found`

**Linux:**
```bash
# Install pip
sudo pacman -S python-pip  # Arch
sudo apt install python3-pip  # Debian/Ubuntu

# Or use python module
python -m pip --version
```

**Windows:**
```powershell
# Use python module
python -m pip --version

# If that fails, reinstall Python with pip option checked
```

---

#### Problem: Virtual environment won't activate

**Linux/Mac:**
```bash
# Make sure you're in the repo root
cd ~/Documents/learn-programming

# Create venv if it doesn't exist
python -m venv venv

# Activate
source venv/bin/activate

# Verify
which python  # Should show path to venv
```

**Windows:**
```powershell
# Create venv
python -m venv venv

# Allow script execution first (if needed)
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# Activate
.\venv\Scripts\Activate.ps1

# Verify
Get-Command python  # Should show path to venv
```

---

#### Problem: `ModuleNotFoundError: No module named 'X'`

```bash
# Ensure venv is activated
source venv/bin/activate  # Linux
.\venv\Scripts\Activate.ps1  # Windows

# Install the module
pip install module-name

# Or install all requirements
pip install -r requirements.txt  # if you have one
```

---

### Code Issues

#### Problem: `IndentationError`

**Cause:** Python requires consistent indentation (spaces or tabs, not mixed)

**Solution:**
```python
# Bad (mixed tabs and spaces)
def my_function():
    print("line 1")  # 4 spaces
	print("line 2")  # 1 tab - ERROR!

# Good (consistent spaces)
def my_function():
    print("line 1")  # 4 spaces
    print("line 2")  # 4 spaces
```

**Configure your editor:**
```bash
# In Neovim: ~/.config/nvim/init.lua
vim.opt.expandtab = true  -- Use spaces
vim.opt.tabstop = 4       -- Tab = 4 spaces
vim.opt.shiftwidth = 4    -- Indent = 4 spaces
```

---

#### Problem: `NameError: name 'X' is not defined`

**Cause:** Variable used before being defined

**Solution:**
```python
# Bad
print(name)  # ERROR: name not defined yet

# Good
name = "Alice"
print(name)
```

---

#### Problem: `TypeError: 'str' object does not support item assignment`

**Cause:** Strings are immutable in Python

**Solution:**
```python
# Bad
text = "hello"
text[0] = "H"  # ERROR: can't modify string

# Good
text = "hello"
text = "H" + text[1:]  # Create new string
# Or use a list
text_list = list(text)
text_list[0] = "H"
text = "".join(text_list)
```

---

## 🔧 C Issues

### Compilation Errors

#### Problem: `gcc: command not found`

**Linux:**
```bash
# Install gcc
sudo pacman -S base-devel  # Arch
sudo apt install build-essential  # Debian/Ubuntu

# Verify
gcc --version
```

---

#### Problem: `undefined reference to 'function'`

**Cause:** Missing function definition or wrong linking

**Solution:**
```bash
# Single file
gcc -Wall -Wextra file.c -o program

# Multiple files
gcc -Wall -Wextra file1.c file2.c -o program

# With libraries (e.g., math library)
gcc -Wall -Wextra file.c -o program -lm
```

---

#### Problem: `warning: implicit declaration of function`

**Cause:** Missing `#include` for function

**Solution:**
```c
// Bad
int main(void) {
    printf("Hello\n");  // WARNING: implicit declaration
    return 0;
}

// Good
#include <stdio.h>

int main(void) {
    printf("Hello\n");
    return 0;
}
```

---

#### Problem: `segmentation fault` (seg fault)

**Cause:** Accessing invalid memory (null pointer, out of bounds, etc.)

**Debug with gdb:**
```bash
# Compile with debug symbols
gcc -g -Wall -Wextra program.c -o program

# Run in gdb
gdb ./program

# In gdb
(gdb) run
# Program will crash

(gdb) backtrace  # See where it crashed
(gdb) print variable_name  # Check variable values
```

**Common causes:**
```c
// 1. Null pointer dereference
int *p = NULL;
*p = 10;  // SEGFAULT

// 2. Uninitialized pointer
int *p;
*p = 10;  // SEGFAULT (p points to random memory)

// 3. Array out of bounds
int arr[5];
arr[10] = 5;  // SEGFAULT or undefined behavior

// 4. Use after free
int *p = malloc(sizeof(int));
free(p);
*p = 10;  // SEGFAULT
```

---

#### Problem: `valgrind: command not found`

```bash
# Install valgrind
sudo pacman -S valgrind  # Arch
sudo apt install valgrind  # Debian/Ubuntu
```

---

#### Problem: Memory leaks detected by valgrind

**Run valgrind:**
```bash
valgrind --leak-check=full --show-leak-kinds=all ./program
```

**Common causes:**
```c
// 1. Forgot to free
int *p = malloc(sizeof(int) * 10);
// ... use p ...
// Missing: free(p);

// 2. Lost pointer
int *p = malloc(sizeof(int) * 10);
p = NULL;  // LEAK! Lost reference to allocated memory

// 3. Early return without free
int *p = malloc(sizeof(int));
if (error) {
    return -1;  // LEAK! Didn't free p
}
free(p);
```

**Fix:**
```c
// Always free what you malloc
int *p = malloc(sizeof(int) * 10);
if (p == NULL) {
    return -1;  // malloc failed
}
// ... use p ...
free(p);
p = NULL;  // Good practice
```

---

### Runtime Issues

#### Problem: Program outputs wrong values

**Debug steps:**
1. Add print statements
```c
printf("DEBUG: x = %d\n", x);
```

2. Use gdb
```bash
gdb ./program
(gdb) break main
(gdb) run
(gdb) next
(gdb) print variable
```

3. Check assumptions
- Variable types (int vs float)
- Integer division (5/2 = 2, not 2.5)
- Signed vs unsigned
- Operator precedence

---

## 🔀 Git Issues

#### Problem: `fatal: not a git repository`

```bash
# Initialize git in the directory
git init

# Or check if you're in the right directory
pwd
cd ~/Documents/learn-programming
```

---

#### Problem: `Permission denied (publickey)`

**Setup SSH key for GitHub:**
```bash
# Generate SSH key
ssh-keygen -t ed25519 -C "your.email@example.com"

# Copy public key
cat ~/.ssh/id_ed25519.pub

# Add to GitHub:
# GitHub → Settings → SSH and GPG keys → New SSH key
```

---

#### Problem: Merge conflicts

```bash
# See conflicted files
git status

# Open conflicted file, look for:
<<<<<<< HEAD
Your changes
=======
Incoming changes
>>>>>>> branch-name

# Edit to keep what you want, then:
git add conflicted-file
git commit -m "Resolve merge conflict"
```

---

#### Problem: Accidentally committed to wrong branch

```bash
# Reset last commit (keep changes)
git reset --soft HEAD~1

# Switch to correct branch
git checkout correct-branch

# Commit again
git add .
git commit -m "message"
```

---

## 🛠️ Tool Issues

### Neovim / Vim

#### Problem: Can't exit Vim

```
# Press Escape first, then:
:q          # Quit (if no changes)
:q!         # Quit without saving
:wq         # Save and quit
:x          # Save and quit (shorter)
ZZ          # Save and quit (even shorter)
```

---

#### Problem: Neovim plugins not working

```bash
# Update plugins (LazyVim)
# In Neovim:
:Lazy update

# Check health
:checkhealth
```

---

### tmux

#### Problem: Can't detach from tmux

```
# Press your prefix (default: Ctrl-B), then:
d           # Detach from session

# Or force detach
Ctrl-B, then type: :detach
```

---

#### Problem: Lost tmux session

```bash
# List sessions
tmux ls

# Attach to session
tmux attach -t session-name

# Or attach to most recent
tmux attach
```

---

## 📦 Script Issues

#### Problem: `./script.sh: Permission denied`

```bash
# Make executable
chmod +x script.sh

# Then run
./script.sh
```

---

#### Problem: Script can't find files

```bash
# Run from repo root
cd ~/Documents/learn-programming
./scripts/script-name.sh

# Or use absolute paths in scripts
```

---

## 💡 General Debugging Tips

### For Python

1. **Use print statements**
```python
print(f"DEBUG: variable = {variable}")
```

2. **Use IPython for interactive debugging**
```python
# Add this where you want to pause
import IPython; IPython.embed()
```

3. **Check types**
```python
print(type(variable))
```

---

### For C

1. **Compile with all warnings**
```bash
gcc -Wall -Wextra -Wpedantic -g file.c -o program
```

2. **Use printf debugging**
```c
printf("DEBUG: x = %d, y = %d\n", x, y);
```

3. **Use gdb**
```bash
gdb ./program
(gdb) break line_number
(gdb) run
(gdb) next
(gdb) print variable
```

4. **Check memory with valgrind**
```bash
valgrind --leak-check=full ./program
```

---

## 🆘 When You're Really Stuck

### 1. Take a Break
- Step away for 5-10 minutes
- Grab water, stretch
- Come back with fresh eyes

### 2. Explain the Problem Out Loud
- Rubber duck debugging
- Explain to a friend
- Often you'll realize the issue while explaining

### 3. Search for the Error
```bash
# Copy exact error message
# Google: "[error message] [language]"
# Check Stack Overflow
```

### 4. Ask for Help
- Discord learning group
- Stack Overflow
- Reddit: r/learnprogramming, r/C_Programming, r/learnpython

### 5. Create a Minimal Example
- Strip down code to smallest version that shows the problem
- Often you'll find the bug while doing this!

---

## 📚 Resources

### Python
- [Python Official Docs](https://docs.python.org/3/)
- [Stack Overflow](https://stackoverflow.com/questions/tagged/python)
- [r/learnpython](https://reddit.com/r/learnpython)

### C
- [C Reference](https://en.cppreference.com/w/c)
- [Stack Overflow](https://stackoverflow.com/questions/tagged/c)
- [r/C_Programming](https://reddit.com/r/C_Programming)

### Git
- [Git Documentation](https://git-scm.com/doc)
- [Oh Shit, Git!?](https://ohshitgit.com/)

---

**Remember: Every bug is a learning opportunity! 🐛→✨**

*Last updated: 2025-09-30*
