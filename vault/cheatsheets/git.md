# GIT CHEAT SHEET
================

## 🚀 Initial Setup
git config --global user.name "Your Name"
git config --global user.email "email@example.com"
git config --global init.defaultBranch main
git config --list              # View all settings

## 📂 Repository Basics
git init                       # Initialize new repo
git clone <url>                # Clone remote repo
git remote -v                  # View remotes
git remote add origin <url>    # Add remote
git status                     # Check status
git branch                     # List branches
git branch -a                  # List all (including remote)

## 💾 Basic Workflow
git add .                      # Stage all changes
git add <file>                 # Stage specific file
git add -p                     # Stage chunks interactively
git commit -m "message"        # Commit with message
git commit -am "message"       # Add + commit (tracked files only)
git push                       # Push to remote
git push -u origin main        # Push and set upstream
git pull                       # Pull from remote

## 📝 Commit Management
git log                        # View history
git log --oneline             # Compact history
git log --graph --oneline     # Visual branch history
git log -n 5                  # Last 5 commits
git show <commit>             # Show commit details
git diff                      # Changes not staged
git diff --staged             # Changes staged
git diff HEAD~1               # Compare with last commit

## 🔄 Undo Changes
git restore <file>            # Discard working changes
git restore --staged <file>   # Unstage file
git commit --amend           # Modify last commit
git reset HEAD~1             # Undo last commit (keep changes)
git reset --hard HEAD~1      # Undo last commit (lose changes)
git revert <commit>          # Create undo commit
git clean -fd                # Remove untracked files

## 🌿 Branching
git branch <name>            # Create branch
git checkout <branch>        # Switch branch
git checkout -b <name>       # Create and switch
git switch <branch>          # Modern switch command
git merge <branch>           # Merge into current
git branch -d <name>         # Delete branch (merged)
git branch -D <name>         # Force delete branch
git push origin --delete <branch>  # Delete remote branch

## 🏷️ Stashing
git stash                    # Stash changes
git stash save "message"     # Stash with description
git stash list              # List stashes
git stash pop               # Apply and remove stash
git stash apply             # Apply keep stash
git stash drop              # Remove stash
git stash clear             # Remove all stashes

## 📊 Your Learning Repo Workflow

# Daily routine
cd ~/learn-programming
git add .
git commit -m "Day 02: <topic learned>"
git push

# Check progress
git log --oneline --graph
git shortlog -sn            # Commit count by author
git log --since="1 week ago"  # Recent activity

# See what changed
git diff HEAD~1 python/basics/daily/
git show HEAD:python/basics/daily/day01.py

## 🎯 Useful Aliases (add to ~/.gitconfig)
[alias]
    st = status -s
    co = checkout
    br = branch
    cm = commit -m
    last = log -1 HEAD
    unstage = reset HEAD --
    visual = log --graph --oneline --all
    today = log --since=midnight --oneline
    aliases = config --get-regexp alias

## 🐟 Fish Shell Git Helpers

# Add to ~/.config/fish/config.fish
abbr gs 'git status'
abbr ga 'git add .'
abbr gc 'git commit -m'
abbr gp 'git push'
abbr gl 'git log --oneline'
abbr gd 'git diff'

# Useful function for daily commits
function glearn
    cd ~/learn-programming
    git add .
    echo "What did you learn today? "
    read message
    git commit -m "Learning: $message"
    git push
    echo "✅ Progress saved!"
end

## 📁 .gitignore Essentials

# Your current .gitignore
__pycache__/
*.pyc
*.o
*.out
a.out
.venv/
*.swp
.DS_Store

## 🔍 Finding Things
git grep "pattern"           # Search in files
git log --grep="pattern"     # Search commits
git log -S "code"           # Find when code added
git blame <file>            # Who wrote each line
git log --follow <file>     # History including renames

## 🚨 Emergency Commands

# Accidentally committed to wrong branch
git reset HEAD~1            # Undo commit
git stash                   # Save changes
git checkout correct-branch
git stash pop              # Apply changes
git add . && git commit -m "message"

# Discard all local changes
git reset --hard HEAD
git clean -fd

# Forgot to add file to commit
git add forgotten_file
git commit --amend --no-edit

# Wrong commit message
git commit --amend -m "New message"

# Pull conflicts
git stash                  # Save local changes
git pull                   # Get remote
git stash pop             # Reapply changes
# Fix conflicts, then:
git add .
git commit

## 🏆 Your Progress Tracking

# See your learning streak
git log --format="%ad" --date=short | uniq -c

# Count files by type
git ls-files | sed 's/.*\.//' | sort | uniq -c

# Lines of code written
git ls-files "*.py" | xargs wc -l  # Python
git ls-files "*.c" | xargs wc -l   # C

# Visualize repo growth
git rev-list --count HEAD  # Total commits
du -sh .git                # Repo size

## 💡 Pro Tips
- Commit early and often
- Write meaningful messages
- One logical change per commit
- Pull before push to avoid conflicts
- Use branches for experiments
- Tag important milestones: git tag -a v1.0 -m "First week complete!"
- Review changes before committing: git diff --staged

## 🔗 GitHub Specific

# SSH setup (you're already using this!)
git@github.com:bmags73/learn-programming.git

# Change remote from HTTPS to SSH
git remote set-url origin git@github.com:username/repo.git

# View on GitHub
git remote -v
# Open: https://github.com/bmags73/learn-programming

# Sync fork with upstream
git remote add upstream <original-repo-url>
git fetch upstream
git merge upstream/main

## 📈 Learning Milestones
git tag week1-complete
git tag first-c-program
git tag -a routes-script-v1 -m "Working routes.py"
git push --tags            # Push tags to remote

---
Remember: Git is your learning journal! 
Every commit is progress tracked! 🚀