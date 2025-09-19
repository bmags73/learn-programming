#!/usr/bin/env fish

function learn-python
    set -l base_dir ~/learn-programming/python/basics/daily
    mkdir -p $base_dir
    cd $base_dir

    # Find latest day file or create day01.py
    set -l latest_file (ls -1 day*.py 2>/dev/null | tail -1)
    if test -z "$latest_file"
        set latest_file "day01.py"
        echo '#!/usr/bin/env python3
"""
Day 01: Python Basics
"""

print("🚀 Starting Python learning!")
' >$latest_file
    end

    # Kill existing session
    tmux kill-session -t learn-python 2>/dev/null

    # Create new session with nvim
    tmux new-session -s learn-python -d
    tmux send-keys -t learn-python "nvim $latest_file" C-m

    # Split window horizontally for right pane
    tmux split-window -h -t learn-python

    # Send IPython to right pane
    tmux send-keys -t learn-python.1 "cd $base_dir && ipython" C-m

    # Attach to session
    tmux attach-session -t learn-python
end
