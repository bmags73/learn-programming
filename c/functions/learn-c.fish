#!/usr/bin/env fish

function learn-c
    set -l base_dir ~/learn-programming/c/basics/daily
    mkdir -p $base_dir
    cd $base_dir

    # Find or create latest file
    set -l latest_file (ls -1 day*.c 2>/dev/null | tail -1)
    if test -z "$latest_file"
        set latest_file "day01.c"
        echo '#include <stdio.h>

int main() {
    printf("🚀 Day 01: C Basics\\n");
    return 0;
}' >$latest_file
    end

    # Kill existing session
    tmux kill-session -t c-dev 2>/dev/null

    # Create new session with nvim
    tmux new-session -s c-dev -d
    tmux send-keys -t c-dev "nvim $latest_file" C-m

    # Split window horizontally for right pane
    tmux split-window -h -t c-dev

    # Send watch command to right pane
    set -l basename (string replace '.c' '' $latest_file)
    tmux send-keys -t c-dev.1 "watch -n 1 'gcc -Wall $latest_file -o $basename 2>&1 && echo \"---OUTPUT---\" && ./$basename'" C-m

    # Attach to session
    tmux attach-session -t c-dev
end
