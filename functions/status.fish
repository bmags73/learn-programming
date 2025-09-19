#!/usr/bin/env fish

function learning-status
    clear
    echo "📊 LEARNING PROGRESS DASHBOARD"
    echo "=============================="
    echo ""

    # Python progress
    set -l py_count (find ~/learn-programming/python/basics/daily -name "day*.py" 2>/dev/null | wc -l)
    set -l py_projects (find ~/learn-programming/python/projects -name "*.py" 2>/dev/null | wc -l)
    echo "🐍 Python:"
    echo "   Daily exercises: $py_count"
    echo "   Projects: $py_projects"

    # C progress
    set -l c_count (find ~/learn-programming/c/basics/daily -name "day*.c" 2>/dev/null | wc -l)
    set -l c_projects (find ~/learn-programming/c/projects -name "*.c" 2>/dev/null | wc -l)
    echo ""
    echo "🔧 C:"
    echo "   Daily exercises: $c_count"
    echo "   Projects: $c_projects"

    # Git stats
    cd ~/learn-programming
    set -l commits (git rev-list --count HEAD)
    set -l last_commit (git log -1 --format="%ar")
    echo ""
    echo "📝 Git:"
    echo "   Total commits: $commits"
    echo "   Last commit: $last_commit"

    # Streaks
    echo ""
    echo "🔥 Current Status:"
    set -l today (date +%Y-%m-%d)

    # Python last worked
    if test -d ~/learn-programming/python/basics/daily
        set -l last_py_file (find ~/learn-programming/python/basics/daily -name "day*.py" -printf '%T+\n' 2>/dev/null | sort -r | head -1)
        if test -n "$last_py_file"
            set -l last_py (echo $last_py_file | cut -d' ' -f1)
            if test "$last_py" = "$today"
                echo "   ✅ Python: Worked on today!"
            else
                echo "   ⏳ Python: Last worked $last_py"
            end
        else
            echo "   📋 Python: No exercises yet"
        end
    end

    # C last worked
    if test -d ~/learn-programming/c/basics/daily
        set -l last_c_file (find ~/learn-programming/c/basics/daily -name "day*.c" -printf '%T+\n' 2>/dev/null | sort -r | head -1)
        if test -n "$last_c_file"
            set -l last_c (echo $last_c_file | cut -d' ' -f1)
            if test "$last_c" = "$today"
                echo "   ✅ C: Worked on today!"
            else
                echo "   ⏳ C: Last worked $last_c"
            end
        else
            echo "   📋 C: No exercises yet"
        end
    end
    echo ""
end
