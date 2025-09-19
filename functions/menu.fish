#!/usr/bin/env fish

function learn
    clear
    echo "🚀 LEARNING ENVIRONMENT"
    echo "======================"
    echo ""
    echo "  [1] 🐍 Python (tmux + IPython)"
    echo "  [2] 🔧 C (tmux + auto-compile)"
    echo "  [3] 📊 Status Dashboard"
    echo "  [4] 📝 Git commit progress"
    echo "  [5] 📁 Browse repo"
    echo ""
    echo -n "Choose [1-5]: "

    read choice

    switch $choice
        case 1
            learn-python
        case 2
            learn-c
        case 3
            learning-status
        case 4
            cd ~/learn-programming
            git add .
            echo "Commit message: "
            read msg
            git commit -m "$msg"
            git push
        case 5
            cd ~/learn-programming
            ls -la
    end
end
