# 🚀 MY PYTHON LEARNING CHEATSHEET

Keep this open in a second terminal: bat ~/python-learning/CHEATSHEET.md

═══════════════════════════════════════════════════════════════════

## 🎯 QUICK START

learn-python     # Start split-screen environment

═══════════════════════════════════════════════════════════════════

## ⌨️ VIM SURVIVAL GUIDE

### MODES

    Normal Mode → Insert Mode: i
    Insert Mode → Normal Mode: Esc
    
### ESSENTIAL COMMANDS

    :w              Save
    :q              Quit  
    :wq             Save & Quit
    :q!             Quit without saving
    u               Undo
    Ctrl+r          Redo

### COPY/PASTE

    v               Start selecting (visual)
    V               Select whole lines
    y               Copy selection
    p               Paste after cursor
    dd              Delete line
    yy              Copy line

═══════════════════════════════════════════════════════════════════

## 🤖 COPILOT CONTROLS

    Tab             Accept suggestion
    Esc             Dismiss suggestion  
    Alt+]           Next suggestion
    Alt+[           Previous suggestion

    TIP: Just start typing and wait 2 seconds!

═══════════════════════════════════════════════════════════════════

## 🔄 SEND CODE TO IPYTHON

### METHOD 1: Select & Send

    1. Press V (visual line mode)
    2. Select lines with j/k or ↓/↑  
    3. Press Space sv to send

### METHOD 2: Quick Send

    Space sp        Send paragraph/function
    Space ss        Send cell

═══════════════════════════════════════════════════════════════════

## 📁 NAVIGATE FILES (in Neovim)

    Space e         File explorer (toggle)
    Space ff        Find files (fuzzy)
    Space fg        Search in files
    Space ,         Recent files
    :e filename     Open file

═══════════════════════════════════════════════════════════════════

## 🐍 PYTHON TESTING WORKFLOW

### 1. WRITE FUNCTION

def my_function(x):
    return x * 2

### 2. SEND TO IPYTHON

    V               (select mode)
    j               (select lines)
    Space sv        (send it)

### 3. TEST IN IPYTHON

my_function(5)  # Returns: 10

═══════════════════════════════════════════════════════════════════

## 🎮 TMUX CONTROLS

    Ctrl+b %        Split vertical
    Ctrl+b "        Split horizontal
    Ctrl+b arrow    Switch panes
    Ctrl+b d        Detach session
    Ctrl+b [        Scroll mode (q to exit)
    tmux attach     Reconnect

═══════════════════════════════════════════════════════════════════

## 🐟 FISH SHELL COMMANDS

    learn-python    Start environment
    python-repl     Best Python REPL
    nvim file.py    Edit file
    ls              List files (pretty!)
    cd folder       Change directory
    cd ..           Go up one level
    Tab             Auto-complete!

═══════════════════════════════════════════════════════════════════

## 💡 IPYTHON TRICKS

    Tab             Auto-complete
    ?               Help (e.g., len?)
    ??              Show source code
    %timeit         Time execution
    %history        Command history
    !ls             Run shell command

═══════════════════════════════════════════════════════════════════

## 🔥 COMPLETE EXAMPLE SESSION

1. Start environment
$ learn-python

2. In Neovim (left pane), create file
:e hello.py

3. Enter insert mode and write code
i
name = input("What's your name? ")
print(f"Hello, {name}!")

def greet_multiple(names):
    for name in names:
        print(f"Hello, {name}!")

4. Save file
Esc
:w

5. Send function to IPython
V (select mode)
jjjj (select function)
Space sv (send)

6. In IPython (right pane)

>>> greet_multiple(["Alice", "Bob"])
Hello, Alice!
Hello, Bob!

═══════════════════════════════════════════════════════════════════

## 🚨 HELP! IM STUCK

Cant exit Vim?
    Press: Esc :q!

Tmux frozen?
    Press: Ctrl+b d (detach)
    Then: tmux kill-session -t py

Copilot not working?
    :Copilot status (check status)
    :Copilot setup (re-authenticate)

Lost in files?
    :pwd (where am I?)
    :cd ~ (go home)

IPython crashed?
    Ctrl+d (exit)
    ipython (restart)

═══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════

## 🔀 GIT COMMANDS

### DAILY WORKFLOW

    gsave "message"     Quick save + push (fish function)
    gstatus            Pretty git status (fish function)
    
### BASIC COMMANDS

    git status         Check what changed
    git add .          Stage all changes
    git commit -m "msg" Commit with message
    git push           Send to GitHub
    git pull           Get latest from GitHub
    
### FIXING MISTAKES

    git reset HEAD~1   Undo last commit (keep changes)
    git checkout file  Discard changes in file
    git stash          Temporarily save changes
    git stash pop      Restore saved changes
    
### COMMON ISSUES

    "unrelated histories" error:
    git pull origin main --allow-unrelated-histories
    
    Set branch tracking:
    git branch --set-upstream-to=origin/main main
    
    Push new branch:
    git push -u origin main
    
### IN NEOVIM

    Space gg           Open LazyGit (visual git)
    Look for colors in left gutter = git changes

### GITHUB SETUP GOTCHA

    ⚠️ Create repos WITHOUT initial files to avoid merge issues!
    Or clone first: git clone git@github.com:USER/REPO.git

══════════════════════════════════════════════════════════════════════════

## 📝 MY LEARNING NOTES

Add your own notes here!

-
-
-

═══════════════════════════════════════════════════════════════════
