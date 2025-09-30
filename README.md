# 🚀 Learn Programming - Dual Language Learning Journey

A structured, ADHD-friendly repository for learning **Python** and **C** programming with visual aids, progress tracking, and WHY-focused explanations.

---

## 🎯 Mission

This repository supports **multiple learners** on their programming journey with:

- 🐍 **Python**: 100 Days of Code bootcamp (beginner → intermediate → advanced)
- 🔧 **C**: lowlevel.academy curriculum + daily practice
- 🧠 **Visual Learning**: Diagrams, mindmaps, and visual aids for ADHD-friendly learning
- 📊 **Progress Tracking**: Individual trackers for both languages
- 💻 **Cross-Platform**: Linux and Windows support

---

## 📂 Repository Structure

```
learn-programming/
├── 📊 progress-trackers/       # Track your learning journey
│   ├── python-tracker.md       # 100 Days of Code progress
│   └── c-tracker.md            # C concepts mastery tracker
│
├── 🐍 python/                  # Python learning path
│   ├── README.md               # Python path overview
│   ├── basics/daily/           # Fundamentals practice
│   ├── 100-days-bootcamp/      # Structured bootcamp
│   │   ├── beginner/           # Days 1-30
│   │   ├── intermediate/       # Days 31-60
│   │   └── advanced/           # Days 61-100
│   ├── projects/               # Your Python projects
│   └── challenges/             # Extra practice problems
│
├── 🔧 c/                       # C learning path
│   ├── README.md               # C path overview
│   ├── basics/daily/           # Daily practice
│   ├── lowlevel-academy/       # Course materials
│   ├── projects/               # Your C projects
│   └── challenges/             # Extra practice problems
│
├── 📚 vault/                   # Knowledge base
│   ├── cheatsheets/            # Quick references
│   ├── diagrams/               # Visual learning aids
│   ├── mindmaps/               # Concept connections
│   ├── notes/                  # Learning notes
│   └── resources/              # External references
│
├── 🛠️ scripts/                 # Automation & setup
│   ├── setup-new-machine.sh    # Linux environment setup
│   ├── setup-windows.ps1       # Windows environment setup
│   ├── create-day.sh           # Generate new day folder
│   └── backup-progress.sh      # Backup progress trackers
│
├── ⚙️ functions/               # Helper shell functions
│   ├── learn-c.fish            # C workflow helpers
│   ├── learn-python.fish       # Python workflow helpers
│   └── menu.fish               # Interactive learning menu
│
└── 📖 docs/                    # Documentation
    ├── setup-guide.md          # Environment setup
    ├── workflow.md             # Daily learning workflow
    └── troubleshooting.md      # Common issues & solutions
```

---

## 🚀 Quick Start

### For Python Learners

```bash
# Check your progress
cat progress-trackers/python-tracker.md

# Start a new day (automated)
./scripts/create-day.sh python 1 "Band Name Generator"

# Navigate to the bootcamp
cd python/100-days-bootcamp/beginner/day01-band-name-generator/
```

### For C Learners

```bash
# Check your progress
cat progress-trackers/c-tracker.md

# Start a new day (automated)
./scripts/create-day.sh c 1 "Hello World"

# Navigate to basics
cd c/basics/daily/day01/
```

---

## 📊 Progress Tracking

Each language has its own dedicated progress tracker:

| Language | Tracker File | Focus |
|----------|-------------|-------|
| 🐍 Python | `progress-trackers/python-tracker.md` | 100 Days of Code (100 projects) |
| 🔧 C | `progress-trackers/c-tracker.md` | lowlevel.academy + fundamentals |

**Update your tracker daily** to visualize your progress!

---

## 🎨 Learning Philosophy

### 1. **WHY-Focused Learning**
Every concept includes:
- **WHAT**: Brief explanation
- **WHY**: Why this matters
- **HOW**: How it works under the hood

### 2. **Visual Learning (ADHD-Friendly)**
- Diagrams for memory layout, data structures, flow control
- Mindmaps connecting related concepts
- Checklists for daily tasks
- Clear progress indicators

### 3. **Hands-On Practice**
- Daily coding exercises
- Real-world projects
- Challenges to reinforce learning
- Commit code regularly

### 4. **Structured Yet Flexible**
- Clear daily goals
- Modular structure
- Skip/revisit topics as needed
- Track what works for YOU

---

## 🛠️ Development Environment

### Current Setup
- **OS**: CachyOS Linux (also supports Windows)
- **Editor**: Neovim with LazyVim
- **Shell**: Fish (scripts compatible with Bash)
- **Multiplexer**: tmux for split-screen learning

### Setup New Machine
```bash
# Linux
./scripts/setup-new-machine.sh

# Windows (PowerShell)
.\scripts\setup-windows.ps1
```

---

## 🗂️ How to Use This Repo

### Daily Workflow

1. **Check your progress tracker** (`progress-trackers/`)
2. **Read the day's README** (includes goals, concepts, WHY explanations)
3. **Write code** (follow along or build from scratch)
4. **Take notes** in `notes.md`
5. **Update your tracker** (mark day complete ✅)
6. **Commit your work** to GitHub
7. **Review diagrams** in `vault/diagrams/` if needed

### Creating a New Day

Use the automation script:
```bash
# Python example
./scripts/create-day.sh python 5 "Password Generator"

# C example
./scripts/create-day.sh c 3 "Variables and Types"
```

This automatically creates:
- Project folder
- `README.md` with template
- `main.py` or `dayXX.c` file
- `notes.md` for personal notes

---

## 🧠 Resources

### Python
- [100 Days of Code Course](https://www.udemy.com/course/100-days-of-code/)
- [Python Documentation](https://docs.python.org/3/)
- [Real Python](https://realpython.com/)
- [Python Tutor Visualizer](https://pythontutor.com/)

### C
- [lowlevel.academy](https://lowlevel.academy/)
- [Beej's Guide to C](https://beej.us/guide/bgc/)
- [The C Programming Language (K&R)](https://en.wikipedia.org/wiki/The_C_Programming_Language)
- [Compiler Explorer](https://godbolt.org/)

### Visual Learning
- Draw your own diagrams in `vault/diagrams/`
- Create mindmaps in `vault/mindmaps/`
- Build your cheatsheets in `vault/cheatsheets/`

---

## 🤝 Contributing

This is a personal learning repository, but you're welcome to:
- Fork it for your own learning journey
- Suggest improvements via Issues
- Share your diagrams/notes/resources

See `docs/contribution-guide.md` for details.

---

## 📈 Current Progress

### 🐍 Python
- 🔴 100 Days of Code: Day 0/100
- ✅ Environment setup complete
- 📚 Tracker initialized

### 🔧 C
- 🔴 lowlevel.academy: Module 0/9
- ✅ Development tools configured
- 📚 Tracker initialized

---

## 📝 License

This repository is for personal learning. Code snippets and projects may be used freely.

---

## 🎯 Goals

- [ ] Complete 100 Days of Python
- [ ] Master C programming fundamentals
- [ ] Build portfolio projects in both languages
- [ ] Create comprehensive visual learning aids
- [ ] Help other neurodiverse learners

---

**Let's learn together! 🚀**

*Last updated: 2025-09-30*
