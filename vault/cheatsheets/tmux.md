# TMUX CHEAT SHEET
=============================

## 🚀 Session Management
tmux new -s name           # New named session
tmux ls                    # List sessions
tmux attach -t name        # Attach to session
tmux kill-session -t name  # Kill specific session
tmux kill-server           # Kill ALL sessions
Ctrl-b d                   # Detach from session

## 📐 Pane Management
Ctrl-b %                   # Split vertical
Ctrl-b "                   # Split horizontal
Ctrl-b arrow               # Navigate panes
Ctrl-b q                   # Show pane numbers
Ctrl-b x                   # Kill current pane
Ctrl-b z                   # Toggle pane zoom
Ctrl-b {                   # Move pane left
Ctrl-b }                   # Move pane right
Ctrl-b Space               # Toggle layouts

## 🪟 Window Management
Ctrl-b c                   # New window
Ctrl-b n                   # Next window
Ctrl-b p                   # Previous window
Ctrl-b 0-9                 # Switch to window #
Ctrl-b ,                   # Rename window
Ctrl-b &                   # Kill window
Ctrl-b w                   # List windows

## 📋 Copy Mode
Ctrl-b [                   # Enter copy mode
q                          # Exit copy mode
Space                      # Start selection
Enter                      # Copy selection
Ctrl-b ]                   # Paste buffer

## 🎯 Your Custom Sessions
learn-python               # Python + IPython split
learn-c                    # C + auto-compile split

## 💡 Pro Tips
- Sessions persist after disconnect
- Detach with Ctrl-b d to keep running
- Name sessions for easy management
- Use tmux attach to resume work