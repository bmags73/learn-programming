#!/bin/bash
# Creates a new day folder with template files

show_usage() {
    echo "Usage: ./create-day.sh [language] [day_number] [topic_name]"
    echo ""
    echo "Arguments:"
    echo "  language     - 'python' or 'c'"
    echo "  day_number   - Integer (1-100 for Python, any for C)"
    echo "  topic_name   - Brief description (use quotes for spaces)"
    echo ""
    echo "Examples:"
    echo "  ./create-day.sh python 1 'Band Name Generator'"
    echo "  ./create-day.sh c 1 'Hello World'"
}

# Check arguments
if [ "$#" -lt 3 ]; then
    show_usage
    exit 1
fi

LANG=$1
DAY=$2
TOPIC=$3
DAY_NUM=$(printf "%02d" $DAY)

# Determine path based on language
if [ "$LANG" = "python" ]; then
    BASE_PATH="python/100-days-bootcamp"
    # Determine section based on day number
    if [ $DAY -le 30 ]; then
        SECTION="beginner"
    elif [ $DAY -le 60 ]; then
        SECTION="intermediate"
    else
        SECTION="advanced"
    fi
    FOLDER_NAME="day${DAY_NUM}-$(echo $TOPIC | tr '[:upper:]' '[:lower:]' | tr ' ' '-')"
    FULL_PATH="$BASE_PATH/$SECTION/$FOLDER_NAME"
    FILE_NAME="main.py"
elif [ "$LANG" = "c" ]; then
    FULL_PATH="c/basics/daily/day${DAY_NUM}"
    FILE_NAME="day${DAY_NUM}.c"
else
    echo "Error: Language must be 'python' or 'c'"
    exit 1
fi

# Create directory
mkdir -p "$FULL_PATH"

# Create files
touch "$FULL_PATH/$FILE_NAME"
touch "$FULL_PATH/notes.md"

# Create README with template
if [ "$LANG" = "python" ]; then
    cat > "$FULL_PATH/README.md" << EOF
# Day $DAY_NUM - $TOPIC

## 🎯 Learning Goals

- Goal 1
- Goal 2
- Goal 3

## 📖 Concepts

### Concept 1
**WHAT:** Brief explanation
**WHY:** Why this concept matters
**HOW:** How it works under the hood

### Concept 2
**WHAT:** Brief explanation
**WHY:** Why this concept matters
**HOW:** How it works under the hood

## 💻 Project

Build a project that:
1. Requirement 1
2. Requirement 2
3. Requirement 3

## 🖼️ Visual Diagram

[Link to diagram in vault/diagrams/]

## ✅ Checklist

- [ ] Watch the video lesson
- [ ] Code along with the instructor
- [ ] Complete the project independently
- [ ] Understand the WHY behind each concept
- [ ] Test with different inputs
- [ ] Update progress tracker
- [ ] Commit to GitHub

## 📝 Notes

Your personal notes here...

## 🔗 Resources

- [Python.org Documentation]()
- [Real Python Article]()
- [Related Tutorial]()
EOF
else
    cat > "$FULL_PATH/README.md" << EOF
# Day $DAY_NUM - $TOPIC

## 🎯 Learning Goals

- Goal 1
- Goal 2
- Goal 3

## 📖 Concepts

### Concept 1
**WHAT:** Brief explanation
**WHY:** Why this concept matters
**HOW:** How it works at a low level

### Concept 2
**WHAT:** Brief explanation
**WHY:** Why this concept matters
**HOW:** How it works at a low level

## 💻 Code Example

\`\`\`c
// Your code here
#include <stdio.h>

int main(void) {
    printf("Hello, World!\\n");
    return 0;
}
\`\`\`

## 🖼️ Visual Diagram

[Link to diagram in vault/diagrams/]

## ✅ Checklist

- [ ] Read the material
- [ ] Write the code
- [ ] Understand the WHY
- [ ] Draw a diagram (if helpful)
- [ ] Compile with: \`gcc -Wall -Wextra -g $FILE_NAME -o day${DAY_NUM}\`
- [ ] Run successfully
- [ ] Check with valgrind (if using pointers/malloc)
- [ ] Update progress tracker
- [ ] Commit to GitHub

## 📝 Notes

Your personal notes here...

## 🔗 Resources

- [C Documentation]()
- [Beej's Guide]()
- [Related Tutorial]()
EOF
fi

echo "✅ Created day $DAY for $LANG: $FULL_PATH"
echo "📝 Files created:"
echo "   - $FILE_NAME"
echo "   - README.md"
echo "   - notes.md"
echo ""
echo "Next steps:"
echo "   cd $FULL_PATH"
if [ "$LANG" = "python" ]; then
    echo "   nvim main.py"
else
    echo "   nvim $FILE_NAME"
fi
