function gstatus
    cd ~/learn-programming
    echo "📊 Learning Repository Status"
    echo "============================="
    echo ""

    # Show current branch
    set -l branch (git branch --show-current)
    echo "🌿 Branch: $branch"

    # Show last commit
    echo "📝 Last commit:"
    git log -1 --oneline
    echo ""

    # Show stats
    set -l commits (git rev-list --count HEAD)
    set -l py_files (find . -name "*.py" | wc -l)
    set -l c_files (find . -name "*.c" | wc -l)

    echo "📈 Stats:"
    echo "  Total commits: $commits"
    echo "  Python files: $py_files"
    echo "  C files: $c_files"
    echo ""

    # Show current status
    echo "📁 Current changes:"
    git status -s
end
