# 🚀 Learn Programming - The Journey Begins Here

> **A collaborative learning space for mastering C and Python**  
> Building Linux OSes | Conquering 100 Days of Python | Learning by Teaching

---

## 🎯 Our Mission

We're a crew of learners who believe in:

- **Body doubling** - Learning together on Discord
- **Teaching to learn** - The best way to understand is to explain
- **Visual thinking** - Diagrams, flowcharts, and hands-on examples
- **Breaking down the WHY** - Understanding at the lowest level

---

## 👥 The Crew

| Learner         | Focus         | Environment           | Current Goal              |
| --------------- | ------------- | --------------------- | ------------------------- |
| **bMagSquatch** | C + Python    | Omarchy Linux         | Teach & Learn             |
| **SeaBass**     | C Programming | Omarchy (Or CachyOS?) | lowlevel.academy          |
| **Shy-Rell**    | Python        | Windows (for now 😉)  | 100 Days Bootcamp (Udemy) |

---

## 📚 Learning Paths

### 🔧 C Programming Path

**Goal:** Master low-level programming and build Omarchy OS

```
c/
├── basics/           ← Start here
│   └── daily/        ← Daily practice (day01, day02, etc.)
├── lowlevel-academy/ ← Course materials from lowlevel.academy
├── projects/         ← Your creations
└── challenges/       ← Extra practice problems
```

**Resources:**

- 🎓 [lowlevel.academy](https://lowlevel.academy/) - Primary course
- 📖 Cheatsheet: `vault/cheatsheets/c.md`
- 🎯 Progress: See `progress-trackers/c-tracker.md`

**Current Status:** Memory & pointers visualization phase

---

### 🐍 Python Programming Path

**Goal:** Complete 100 Days of Code Bootcamp (realistically 5-6 months)

```
python/
├── basics/              ← Fundamentals
│   └── daily/           ← Daily practice
├── 100-days-bootcamp/   ← Structured course work
│   ├── beginner/        ← Days 1-30
│   ├── intermediate/    ← Days 31-60
│   ├── advanced/        ← Days 61-100
│   └── projects/        ← Mini projects from each section
└── projects/            ← Your custom projects
```

**Resources:**

- 🎓 100 Days of Code: Complete Python Pro Bootcamp [Udemy](https://www.udemy.com/course/100-days-of-code/)
- 📖 Cheatsheet: `vault/cheatsheets/python.md`
- 🎯 Progress: See `progress-trackers/python-tracker.md`

**Current Status:** Just getting started!

---

## 🎨 Visual Learning Aids

We learn by **seeing** the concepts:

### For ADHD-Friendly Learning:

- **Flowcharts:** Each major concept has a visual diagram in `vault/diagrams/`
- **Mind Maps:** Connection between concepts in `vault/mindmaps/`
- **Code Visualizations:** Step-by-step execution breakdowns
- **WHY Documentation:** Every concept explains WHY it works, not just how

Check `vault/diagrams/README.md` for the full visual library!

---

## 📊 Progress Tracking

### Python: 100 Days Challenge

- **Tracker:** `progress-trackers/python-tracker.md`
- **Format:** Daily checkbox system with mini-goals
- **Realistic Timeline:** 5-6 months (we're professionals with lives!)

### C: Low-Level Mastery

- **Tracker:** `progress-trackers/c-tracker.md`
- **Format:** Concept-based checkboxes
- **Current Focus:** Memory management & pointers

---

## 🛠️ Development Environment

### Common Tools (All Platforms)

- **Git** - Version control
- **GitHub** - Collaboration & backup
- **Discord** - Body doubling sessions

### Linux (CachyOS/Omarchy)

```bash
Editor:      Neovim with LazyVim
Shell:       Fish
Multiplexer: tmux
C Compiler:  gcc/clang
Python:      python3 + ipython
```

### Windows Setup (Friend 2)

```powershell
Editor:      VS Code
Shell:       PowerShell or Git Bash
Python:      python3 (from python.org)
Optional:    WSL2 for Linux experience
```

**Setup Scripts:**

- Linux: `scripts/setup-new-machine.sh`
- Windows: `scripts/setup-windows.ps1`

---

## 🚦 Quick Start Guide

### For C Learners (SeaBass)

```bash
# Clone the repo
git clone https://github.com/bmags73/learn-programming.git
cd learn-programming

# Navigate to C basics
cd c/basics/daily

# Start with day01
cat day01/README.md  # Read the lesson
nvim day01/day01.c   # Write your code
gcc day01.c -o day01 # Compile
./day01              # Run!
```

### For Python Learners (Shy-Rell)

```bash
# Clone the repo
git clone https://github.com/bmags73/learn-programming.git
cd learn-programming

# Navigate to Python basics
cd python/100-days-bootcamp/beginner

# Start with Day 1
python day01_band_name_generator.py
```

### Helper Functions

We have custom Fish shell functions to make life easier:

- `learn-c` - Sets up C learning environment in tmux
- `learn-python` - Sets up Python learning environment in tmux
- `gstatus` - Quick git status across all learning directories

See `functions/README.md` for details.

---

## 📖 Documentation Structure

```
vault/
├── cheatsheets/        ← Quick reference guides
│   ├── c.md
│   ├── python.md
│   ├── git.md
│   └── ...
├── diagrams/           ← Visual learning aids
│   ├── c-memory.svg
│   ├── python-flow.svg
│   └── ...
├── notes/              ← Your learning notes
│   ├── c/
│   └── python/
└── resources/          ← External links & references
    └── summary.md
```

---

## 🎯 Daily Workflow

1. **Morning:** Check progress tracker, pick today's lesson
2. **Learn:** Go through the material (video/reading)
3. **Code:** Write code following along
4. **Break It Down:** Ask "WHY does this work?"
5. **Visualize:** Draw diagrams if needed
6. **Commit:** Push your work to GitHub
7. **Discord:** Share wins/struggles with the crew

---

## 🤝 Contributing & Collaboration

### When You Learn Something Cool:

1. Document it in `vault/notes/`
2. Create a visual if helpful
3. Share on Discord
4. Teach someone else!

### When You're Stuck:

1. Check the cheatsheets
2. Look at past examples
3. Ask on Discord
4. Create an issue on GitHub

---

## 🔥 Motivation & Accountability

### Weekly Goals:

- **C Track:** Complete 3-4 daily exercises
- **Python Track:** Complete 7 days of bootcamp
- **Both:** Contribute 1 diagram or note to the vault

### Discord Body Doubling:

- **When:** TBD by the crew
- **Format:** Screen share, work together, stay focused
- **Rule:** No judgment zone - we're all learning!

---

## 📈 Success Metrics

We measure success by:

- ✅ Consistent daily practice (not perfection)
- ✅ Understanding WHY, not just copying code
- ✅ Teaching others what we learned
- ✅ Building real projects
- ✅ Having fun and staying curious!

---

## 🎓 Philosophy

> "I am not a master, I'm a student. The best way to learn is to teach."

We believe:

- **Mistakes are data points** - Each error teaches us something
- **Slow is smooth, smooth is fast** - Understanding > Speed
- **Community > Competition** - We rise together
- **Visualization > Memorization** - See it to understand it

---

## 📞 Contact & Support

- **GitHub Issues:** For bugs or suggestions
- **Discord:** For daily learning & questions
- **Progress Updates:** Commit messages tell our story!

---

## 🌟 Acknowledgments

- **lowlevel.academy** - For the amazing C curriculum
- **100 Days of Code Bootcamp** - For structured Python learning
- **Claude AI** - For being our patient teaching assistant
- **The Crew** - For showing up and learning together!

---

**Last Updated:** September 30, 2025  
**Current Focus:** Setting up dual-language learning structure

Let's build something amazing together! 🚀