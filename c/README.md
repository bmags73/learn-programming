# 🔧 C Programming Learning Path

Welcome to the C programming section! This path focuses on **low-level understanding**, **memory management**, and **system programming**.

---

## 🎯 Learning Objectives

By mastering C, you'll understand:

- **How computers really work** - Memory, CPU, assembly
- **Manual memory management** - Stack, heap, pointers
- **System-level programming** - OS concepts, file I/O, processes
- **Performance optimization** - Cache-friendly code, efficiency
- **Foundation for other languages** - C influences C++, Go, Rust, and more

---

## 📂 Directory Structure

```
c/
├── README.md                   # You are here
├── basics/                     # Fundamentals
│   ├── README.md               # Module guide
│   └── daily/                  # Daily practice
│       ├── day01/
│       │   ├── README.md       # Lesson with WHY explanations
│       │   ├── day01.c
│       │   └── notes.md
│       └── day02/
├── lowlevel-academy/           # Course materials
│   ├── module01-fundamentals/
│   ├── module02-data-types/
│   └── ...
├── projects/                   # Your C projects
│   ├── README.md               # Project showcase
│   └── ...
├── challenges/                 # Extra practice
└── functions/                  # Helper scripts
    └── learn-c.fish
```

---

## 🚀 Getting Started

### Prerequisites

**Linux:**
```bash
# Install gcc and build tools
sudo pacman -S base-devel  # Arch-based
sudo apt install build-essential  # Debian/Ubuntu

# Install debugger and memory tools
sudo pacman -S gdb valgrind
```

**Windows:**
```powershell
# Install MinGW or WSL2 for gcc
# Or use Visual Studio Build Tools
```

### Verify Installation
```bash
gcc --version
gdb --version
valgrind --version
```

---

## 📚 Learning Resources

### Primary Curriculum

**lowlevel.academy** - Structured course covering:
- Module 1: Fundamentals
- Module 2: Data Types & Memory
- Module 3: Control Structures
- Module 4: Functions
- Module 5: Arrays & Strings
- Module 6: Pointers
- Module 7: Structures & User Types
- Module 8: Dynamic Memory
- Module 9: Advanced Topics

### Recommended Books

1. **The C Programming Language** (K&R) - The classic
2. **C Programming: A Modern Approach** - Comprehensive guide
3. **Beej's Guide to C** - Free, accessible online

### Online Tools

- [Compiler Explorer](https://godbolt.org/) - See assembly output
- [cdecl.org](https://cdecl.org/) - Decode C declarations
- [C Tutor](https://pythontutor.com/c.html) - Visualize execution

---

## 🗓️ Daily Workflow

### Step-by-Step Process

1. **Update Progress Tracker**
   ```bash
   vim ~/Documents/learn-programming/progress-trackers/c-tracker.md
   ```

2. **Read Today's Lesson**
   - Check `README.md` in the day's folder
   - Focus on the **WHY** behind each concept

3. **Write Code**
   ```bash
   cd c/basics/daily/dayXX/
   nvim dayXX.c
   ```

4. **Compile and Test**
   ```bash
   gcc -Wall -Wextra -g dayXX.c -o dayXX
   ./dayXX
   ```

5. **Debug with GDB (if needed)**
   ```bash
   gdb ./dayXX
   ```

6. **Check for Memory Leaks**
   ```bash
   valgrind --leak-check=full ./dayXX
   ```

7. **Take Notes**
   - Document your understanding in `notes.md`
   - Draw diagrams for memory layout

8. **Commit Your Work**
   ```bash
   git add .
   git commit -m "Complete Day XX: [Topic Name]"
   ```

---

## 🧠 Key Concepts to Master

### Memory Management
- [ ] Stack vs Heap
- [ ] Memory layout (text, data, BSS, stack, heap)
- [ ] malloc/free lifecycle
- [ ] Memory leaks and valgrind
- [ ] Pointer aliasing

### Pointers
- [ ] Pointer fundamentals (`&`, `*`)
- [ ] Pointer arithmetic
- [ ] Arrays as pointers
- [ ] Double pointers
- [ ] Function pointers

### Compilation Process
- [ ] Preprocessing (`#include`, `#define`)
- [ ] Compilation to assembly
- [ ] Linking object files
- [ ] Understanding `-Wall -Wextra -g` flags

### Debugging
- [ ] Using `gdb` effectively
- [ ] Setting breakpoints
- [ ] Inspecting variables
- [ ] Walking the stack

---

## 💻 Create a New Day

Use the helper script:

```bash
./scripts/create-day.sh c 3 "Variables and Data Types"
```

This creates:
- `c/basics/daily/day03/`
- `day03.c` (empty template)
- `README.md` (with lesson structure)
- `notes.md` (for personal notes)

---

## 🎨 Learning Tips (ADHD-Friendly)

### Visual Learning
- **Draw memory diagrams** for every pointer concept
- Use `vault/diagrams/` for visual aids
- Create flowcharts for complex logic

### Chunk Your Learning
- Focus on **one concept per day**
- Don't rush through pointers
- Take breaks between sessions

### Active Learning
- Type out every example (don't copy-paste)
- Break working code, then fix it
- Explain concepts out loud

### Track Progress
- Check off items in `c-tracker.md` daily
- Celebrate small wins
- Review previous days regularly

---

## 📊 Progress Tracking

Track your progress in:
```
progress-trackers/c-tracker.md
```

**Update daily:**
- Mark lessons as 🟡 In Progress or 🟢 Completed
- Add notes about challenges
- Document "aha!" moments

---

## 🔗 Quick Links

- [Progress Tracker](../progress-trackers/c-tracker.md)
- [C Cheatsheet](../vault/cheatsheets/c.md)
- [Memory Diagrams](../vault/diagrams/)
- [Projects](./projects/)
- [Helper Functions](./functions/)

---

## 🛠️ Compilation Flags Reference

### Development
```bash
gcc -Wall -Wextra -g program.c -o program
```
- `-Wall`: Enable all warnings
- `-Wextra`: Extra warnings
- `-g`: Debug symbols for gdb

### Production
```bash
gcc -O2 -DNDEBUG program.c -o program
```
- `-O2`: Optimization level 2
- `-DNDEBUG`: Disable assertions

### Debugging
```bash
gcc -fsanitize=address -g program.c -o program
```
- `-fsanitize=address`: AddressSanitizer (memory errors)

---

## 🎯 Learning Milestones

- [ ] Write "Hello, World!" and understand compilation
- [ ] Declare and use variables of all basic types
- [ ] Write functions with parameters and return values
- [ ] Work with arrays and understand decay
- [ ] Master pointer fundamentals
- [ ] Allocate and free memory correctly
- [ ] Build a multi-file project with Makefile
- [ ] Debug with gdb and valgrind
- [ ] Complete a capstone project

---

## 🤔 Common Questions

### Why learn C in 2025?

C teaches you:
- **How computers work** at a fundamental level
- **Memory management** skills valuable in any language
- **Performance optimization** techniques
- **Foundation for systems programming** (OS, embedded, game engines)

### Is C hard?

C is **simple but not easy**:
- Simple: Small language, few keywords
- Not easy: Manual memory management, pointers, undefined behavior

**Key:** Take it slow, visualize everything, practice daily.

---

**Ready to dive into low-level programming? Let's go! 🚀**

*Last updated: 2025-09-30*
