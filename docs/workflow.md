# 🗓️ Daily Learning Workflow

A step-by-step guide to maximize your learning efficiency and maintain consistency.

---

## 🌅 Morning Routine (5-10 minutes)

### 1. Check Progress Tracker

```bash
# View your progress
cat progress-trackers/python-tracker.md
# or
cat progress-trackers/c-tracker.md
```

**Ask yourself:**
- What did I accomplish yesterday?
- What's my goal for today?
- Am I on track with my weekly goals?

### 2. Review Yesterday's Work

```bash
# See what you committed yesterday
git log --since="yesterday" --oneline

# Review your code
cd [yesterday's project folder]
cat README.md
cat notes.md
```

**Ask yourself:**
- Do I still understand yesterday's concepts?
- Should I revisit anything before moving forward?

### 3. Set Today's Intention

Pick ONE of:
- **New Day:** Learn a new concept
- **Practice Day:** Reinforce recent learning
- **Review Day:** Revisit earlier concepts
- **Project Day:** Build something from scratch

---

## 💻 Active Learning Session (30-90 minutes)

### Python Workflow

#### Step 1: Navigate to Today's Project
```bash
cd python/100-days-bootcamp/[section]/dayXX-project-name/

# Or create it if needed
./scripts/create-day.sh python XX "Project Name"
```

#### Step 2: Read the README
- Understand the WHAT, WHY, HOW for each concept
- Review the project requirements
- Identify what's new vs. review

#### Step 3: Watch/Read the Lesson
- Take notes in `notes.md` as you go
- Pause and experiment in IPython
- Don't just passively consume

#### Step 4: Code Along
```bash
# Activate virtual environment
source venv/bin/activate  # Linux
.\venv\Scripts\Activate.ps1  # Windows

# Open editor
nvim main.py

# Code along with the lesson
# Type every line (don't copy-paste!)
```

#### Step 5: Test Incrementally
```bash
# Run frequently while coding
python main.py

# Or use IPython for experimentation
ipython
```

#### Step 6: Build Independently
- Close the tutorial
- Try to rebuild the project from memory
- It's okay to peek if stuck!

#### Step 7: Experiment
- Change the requirements
- Break the code intentionally
- Fix it and understand why it broke

---

### C Workflow

#### Step 1: Navigate to Today's Lesson
```bash
cd c/basics/daily/dayXX/

# Or create it
./scripts/create-day.sh c XX "Topic Name"
```

#### Step 2: Read the README
- Focus on the WHY and HOW
- Draw diagrams for memory layout if needed
- Understand before coding

#### Step 3: Write Code
```bash
# Open editor
nvim dayXX.c

# Write code thoughtfully
# Add comments explaining WHY
```

#### Step 4: Compile with Warnings
```bash
# Always compile with all warnings
gcc -Wall -Wextra -g dayXX.c -o dayXX

# Fix all warnings!
```

#### Step 5: Run and Test
```bash
# Run the program
./dayXX

# Test edge cases
./dayXX < test-input.txt
```

#### Step 6: Debug (if needed)
```bash
# Use gdb for debugging
gdb ./dayXX

# Inside gdb:
(gdb) break main
(gdb) run
(gdb) next
(gdb) print variable_name
```

#### Step 7: Check Memory (if using pointers/malloc)
```bash
# Check for memory leaks
valgrind --leak-check=full ./dayXX

# Fix any leaks before moving on!
```

---

## 📝 Note-Taking (During Learning)

### What to Capture

**In `notes.md`:**
```markdown
# Day XX - Topic Name

## Key Concepts
- Concept 1: Brief explanation in my own words
- Concept 2: ...

## Aha Moments
- When I realized that...
- The way [concept] clicked was...

## Gotchas
- Watch out for...
- Common mistake: ...

## Questions
- Still unclear about...
- Need to research...

## Next Steps
- Practice this more with...
- Review: ...
```

### Drawing Diagrams

**When to draw:**
- Memory layout (C)
- Data flow (Python)
- Pointer relationships (C)
- Function call stack
- Class hierarchies (Python)

**Where to save:**
- Quick sketches: In `notes.md` (text diagram)
- Polished diagrams: `vault/diagrams/`

---

## ✅ End of Session (10 minutes)

### 1. Update Progress Tracker

```bash
nvim progress-trackers/[language]-tracker.md

# Mark today as complete
# Add date and notes
# Update percentage
```

### 2. Commit Your Work

```bash
# Check what changed
git status

# Add files
git add .

# Commit with meaningful message
git commit -m "Complete Day XX: [Topic Name]

- Learned [concept 1]
- Built [project]
- Practiced [skill]

🤖 Generated with Claude Code
Co-Authored-By: Claude <noreply@anthropic.com>"

# Push to GitHub
git push
```

### 3. Reflect

**Quick reflection:**
- What went well today?
- What was challenging?
- What should I review tomorrow?

---

## 🗓️ Weekly Routine

### Sunday Planning (15 minutes)

- [ ] Review last week's progress
- [ ] Set this week's goals
- [ ] Backup progress trackers
  ```bash
  ./scripts/backup-progress.sh
  ```
- [ ] Plan which days to focus on

### Friday Review (15 minutes)

- [ ] Review all commits from the week
  ```bash
  git log --since="1 week ago" --oneline
  ```
- [ ] Update mindmaps in `vault/mindmaps/`
- [ ] Organize loose notes
- [ ] Celebrate wins!

---

## 🎯 Best Practices

### Do's ✅

- **Code every single day** (even just 30 minutes)
- **Type code yourself** (no copy-paste)
- **Understand the WHY** before moving on
- **Commit frequently** with meaningful messages
- **Take breaks** (Pomodoro: 25 min work, 5 min break)
- **Ask for help** when stuck (Discord, forums)
- **Review regularly** (spaced repetition)

### Don'ts ❌

- **Don't skip ahead** when confused
- **Don't just copy code** without understanding
- **Don't ignore warnings** (in C especially!)
- **Don't compare your pace** to others
- **Don't aim for perfection** (progress > perfection)
- **Don't forget to commit** your work

---

## 🧠 ADHD-Friendly Strategies

### Focus Techniques

**Pomodoro Method:**
```
25 min: Focus on one concept
5 min: Break (stand, stretch, water)
Repeat 4 times
Then: 15-30 min longer break
```

**Body Doubling:**
- Join Discord study sessions
- Work alongside someone (virtual or in-person)
- Stream your session (accountability)

### Managing Overwhelm

**When feeling stuck:**
1. Step away for 5 minutes
2. Draw the concept on paper
3. Explain it out loud to yourself (or a rubber duck)
4. Break it into smaller pieces
5. Ask for help

**When losing motivation:**
1. Review your progress tracker (look how far you've come!)
2. Work on a fun side project
3. Watch a motivational coding video
4. Remember WHY you started

---

## 📊 Tracking Metrics

### Daily
- [ ] Minutes coded
- [ ] Concepts learned
- [ ] Code committed

### Weekly
- [ ] Days completed
- [ ] Total commits
- [ ] Projects finished

### Monthly
- [ ] Skills mastered
- [ ] Projects deployed
- [ ] Notes organized

---

## 🔗 Quick Commands Reference

### Python
```bash
# Activate venv
source venv/bin/activate

# Run IPython
ipython

# Run script
python main.py

# Install package
pip install package-name
```

### C
```bash
# Compile
gcc -Wall -Wextra -g file.c -o program

# Run
./program

# Debug
gdb ./program

# Check memory
valgrind --leak-check=full ./program
```

### Git
```bash
# Status
git status

# Add and commit
git add .
git commit -m "message"

# Push
git push

# See history
git log --oneline
```

---

## 🎯 Sample Daily Schedule

**Morning Learner (Before Work):**
```
06:00 - 06:10  Review tracker, set intention
06:10 - 07:00  Active learning session
07:00 - 07:10  Commit & reflect
```

**Evening Learner (After Work):**
```
19:00 - 19:10  Review tracker, set intention
19:10 - 20:30  Active learning session
20:30 - 20:40  Commit & reflect
```

**Weekend Warrior:**
```
10:00 - 10:10  Review tracker
10:00 - 12:00  Extended learning session (with breaks)
12:00 - 12:15  Commit, reflect, plan next session
```

---

**Consistency beats intensity. Show up every day! 🚀**

*Last updated: 2025-09-30*
