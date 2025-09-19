# NEOVIM WITH LAZYVIM
=====================

## 🎯 Movement
h j k l                    # Left Down Up Right
w / b                      # Word forward/backward
0 / $                      # Start/End of line
gg / G                     # Start/End of file
Ctrl-d / Ctrl-u            # Half page down/up
Ctrl-f / Ctrl-b            # Full page down/up
%                          # Jump to matching bracket
*                          # Search word under cursor

## ✏️ Editing
i / a                      # Insert before/after cursor
I / A                      # Insert start/end of line
o / O                      # New line below/above
x / dd                     # Delete char/line
yy / p                     # Yank line / Paste
u / Ctrl-r                 # Undo / Redo
v / V / Ctrl-v             # Visual / Line / Block mode
ciw                        # Change inside word
ci" / ci(                  # Change inside quotes/parens
.                          # Repeat last command

## 🔍 Search & Replace
/pattern                   # Search forward
?pattern                   # Search backward
n / N                      # Next/Previous match
:%s/old/new/g              # Replace all in file
:s/old/new/g               # Replace all in line

## 💾 Files
:w                         # Save
:q                         # Quit
:wq / ZZ                   # Save and quit
:q!                        # Force quit
:e filename                # Open file
:bnext / :bprev            # Next/Previous buffer

## 🚀 LazyVim Specific
Space                      # Leader key
<leader>ff                 # Find files
<leader>fg                 # Live grep
<leader>fb                 # Browse buffers
<leader>fe                 # File explorer
<leader>ft                 # Terminal
<leader>cf                 # Format code
<leader>ca                 # Code actions
<leader>cd                 # Line diagnostics
gd                         # Go to definition
gr                         # Go to references
K                          # Hover documentation
<leader>rn                 # Rename symbol
<leader>xx                 # Trouble toggle

## 🐍 Python/C Specific
Space+sv                   # Send to REPL (vim-slime)
gcc                        # Comment line
gc                         # Comment selection
<leader>db                 # Toggle breakpoint
F5                         # Run/Compile (if configured)

## 🎨 Window Management
Ctrl-w s                   # Split horizontal
Ctrl-w v                   # Split vertical
Ctrl-w hjkl                # Navigate windows
Ctrl-w q                   # Close window
Ctrl-w =                   # Equal size windows
Ctrl-w _                   # Max height
Ctrl-w |                   # Max width

## 🤖 Copilot
Tab                        # Accept suggestion
Ctrl-]                     # Next suggestion
Ctrl-[                     # Previous suggestion
:Copilot enable/disable    # Toggle Copilot

## 💡 Pro Tips
- Use motions with commands: d2w (delete 2 words)
- Combine with numbers: 5j (down 5 lines)
- Dot command (.) is powerful for repetition
- Learn one new command per day