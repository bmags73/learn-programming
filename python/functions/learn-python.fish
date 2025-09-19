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

    # Start tmux session
    tmux kill-session -t learn-python 2>/dev/null
    tmux new-session -s learn-python -d
    tmux send-keys -t learn-python "nvim $latest_file" C-m
    tmux split-window -h -t learn-python
    tmux send-keys -t learn-python.1 "cd $base_dir && ipython" C-m
    tmux attach-session -t learn-python
    endunction learn-python --description 'Start Python learning environment'
    # Check if session already exists
    if tmux has-session -t py 2>/dev/null
        echo "Session 'py' already exists. Attaching..."
        tmux attach -t py
    else
        echo "Starting Python learning environment..."
        tmux new-session -d -s py -n code
        tmux send-keys -t py:code nvim C-m
        tmux split-window -h -t py:code -p 40
        tmux send-keys -t py:code.1 ipython C-m
        tmux select-pane -t py:code.0
        tmux attach -t py
    end
end
