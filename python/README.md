# 🐍 Python Programming Learning Path

Welcome to the Python programming section! This path follows the **100 Days of Code** bootcamp, taking you from beginner to advanced Python developer.

---

## 🎯 Learning Objectives

By completing this path, you'll:

- **Master Python fundamentals** - Variables, loops, functions, OOP
- **Build real-world projects** - 100 hands-on projects
- **Learn web development** - Flask, HTML, CSS, APIs
- **Work with data** - pandas, NumPy, Matplotlib, data science basics
- **Automate tasks** - Web scraping, email, file manipulation
- **Create GUIs** - Tkinter desktop applications

---

## 📂 Directory Structure

```
python/
├── README.md                   # You are here
├── basics/                     # Fundamentals
│   ├── README.md               # Module guide
│   └── daily/                  # Daily fundamentals practice
├── 100-days-bootcamp/          # Main curriculum
│   ├── README.md               # Bootcamp guide
│   ├── beginner/               # Days 1-30
│   │   ├── day01-band-name-generator/
│   │   │   ├── README.md       # Lesson with WHY
│   │   │   ├── main.py
│   │   │   └── notes.md
│   │   └── ...
│   ├── intermediate/           # Days 31-60
│   ├── advanced/               # Days 61-100
│   └── projects/               # Capstone projects
├── projects/                   # Your custom projects
│   ├── README.md               # Project showcase
│   └── ...
├── challenges/                 # Extra practice
└── functions/                  # Helper scripts
    └── learn-python.fish
```

---

## 🚀 Getting Started

### Prerequisites

**Linux:**
```bash
# Install Python 3
sudo pacman -S python python-pip  # Arch-based
sudo apt install python3 python3-pip  # Debian/Ubuntu

# Create virtual environment
python -m venv venv
source venv/bin/activate
```

**Windows:**
```powershell
# Download from python.org
# Or use Windows Store

# Create virtual environment
python -m venv venv
.\venv\Scripts\Activate.ps1
```

### Install Common Packages
```bash
pip install --upgrade pip
pip install ipython pandas numpy matplotlib requests flask
```

### Verify Installation
```bash
python --version
pip --version
```

---

## 📚 100 Days of Code Structure

### Beginner (Days 1-30)
**Focus:** Python fundamentals, basic projects

**Topics covered:**
- Variables, data types, strings
- Control flow (if/else, loops)
- Functions and scope
- Lists, dictionaries, tuples
- File I/O
- Object-Oriented Programming basics
- Turtle graphics and simple games

**Example projects:**
- Band Name Generator
- Password Generator
- Hangman
- Caesar Cipher
- Snake Game
- Pong Game

---

### Intermediate (Days 31-60)
**Focus:** APIs, web development, automation

**Topics covered:**
- APIs and HTTP requests
- JSON data handling
- Web scraping (Beautiful Soup, Selenium)
- HTML & CSS basics
- Flask web framework
- Email automation
- Environment variables

**Example projects:**
- Flight Deal Finder
- Amazon Price Tracker
- LinkedIn Auto-Apply Bot
- Personal Blog Website
- Spotify Playlist Creator

---

### Advanced (Days 61-100)
**Focus:** Full-stack development, data science, deployment

**Topics covered:**
- Database integration (SQLite, SQLAlchemy)
- User authentication
- RESTful APIs
- Data visualization (Matplotlib, Plotly, Seaborn)
- Data analysis (pandas, NumPy)
- Git & GitHub workflows
- Deployment (Heroku, PythonAnywhere)

**Example projects:**
- Full-stack blog with authentication
- Top Movies website
- Data analysis projects
- eCommerce website
- Your own custom final project

---

## 🗓️ Daily Workflow

### Step-by-Step Process

1. **Update Progress Tracker**
   ```bash
   vim ~/Documents/learn-programming/progress-trackers/python-tracker.md
   ```

2. **Navigate to Today's Project**
   ```bash
   cd python/100-days-bootcamp/beginner/dayXX-project-name/
   ```

3. **Read the README**
   - Understand the **WHAT, WHY, HOW** of each concept
   - Review the project requirements

4. **Write Code**
   ```bash
   nvim main.py
   ```

5. **Run and Test**
   ```bash
   python main.py
   ```

6. **Take Notes**
   - Document your learning in `notes.md`
   - Add any "aha!" moments

7. **Commit Your Work**
   ```bash
   git add .
   git commit -m "Complete Day XX: [Project Name]"
   ```

---

## 🧠 Key Concepts to Master

### Fundamentals
- [ ] Variables and data types
- [ ] String manipulation and f-strings
- [ ] Lists, dictionaries, sets, tuples
- [ ] Control flow (if/elif/else)
- [ ] Loops (for, while, comprehensions)
- [ ] Functions and scope
- [ ] Error handling (try/except)

### Object-Oriented Programming
- [ ] Classes and objects
- [ ] Attributes and methods
- [ ] Inheritance
- [ ] Encapsulation

### Working with Data
- [ ] File I/O (reading/writing files)
- [ ] CSV and JSON handling
- [ ] APIs and HTTP requests
- [ ] Data cleaning and analysis

### Web Development
- [ ] Flask basics
- [ ] HTML templates (Jinja)
- [ ] Forms and POST requests
- [ ] Database integration

---

## 💻 Create a New Day

Use the helper script:

```bash
./scripts/create-day.sh python 1 "Band Name Generator"
```

This creates:
- `python/100-days-bootcamp/beginner/day01-band-name-generator/`
- `main.py` (empty template)
- `README.md` (with lesson structure)
- `notes.md` (for personal notes)

---

## 🎨 Learning Tips (ADHD-Friendly)

### Stay Consistent
- **Code every single day** (even just 30 minutes)
- Use the progress tracker to maintain momentum
- Don't skip days - consistency beats intensity

### Active Learning
- **Type every line of code** (no copy-paste)
- Break things intentionally, then fix them
- Explain concepts to yourself out loud

### Visual Learning
- Draw flowcharts for complex logic
- Create diagrams in `vault/diagrams/`
- Use Python Tutor to visualize execution

### Manage Overwhelm
- Focus on **one project per day**
- Don't worry about perfection
- It's okay to revisit concepts later

---

## 📊 Progress Tracking

Track your progress in:
```
progress-trackers/python-tracker.md
```

**Update daily:**
- Mark days as 🟡 In Progress or 🟢 Completed
- Add date and notes
- Track your percentage completion

**Current milestone:**
- Beginner: 0/30
- Intermediate: 0/30
- Advanced: 0/40

---

## 🔗 Quick Links

- [Progress Tracker](../progress-trackers/python-tracker.md)
- [Python Cheatsheet](../vault/cheatsheets/python.md)
- [Projects Showcase](./projects/)
- [100 Days Bootcamp](./100-days-bootcamp/)
- [Helper Functions](./functions/)

---

## 🛠️ Python REPL Tips

### Interactive Python (IPython)
```bash
ipython
```

**Useful commands:**
- `?function` - Get help
- `??function` - Get source code
- `%timeit code` - Benchmark code
- Tab completion for methods

### Virtual Environments
```bash
# Create
python -m venv venv

# Activate (Linux/Mac)
source venv/bin/activate

# Activate (Windows)
.\venv\Scripts\Activate.ps1

# Deactivate
deactivate
```

---

## 📚 Learning Resources

### Primary Course
- [100 Days of Code (Udemy)](https://www.udemy.com/course/100-days-of-code/)

### Documentation
- [Python Official Docs](https://docs.python.org/3/)
- [Real Python](https://realpython.com/)
- [Python Tutor](https://pythontutor.com/)

### Practice Platforms
- [LeetCode (Python)](https://leetcode.com/)
- [HackerRank (Python)](https://www.hackerrank.com/domains/python)
- [Project Euler](https://projecteuler.net/)

---

## 🎯 Learning Milestones

- [ ] Complete first 10 days (basic syntax)
- [ ] Build first game (Snake or Pong)
- [ ] Create first OOP project
- [ ] Make first API request
- [ ] Scrape a website
- [ ] Build a Flask web app
- [ ] Work with a database
- [ ] Deploy a project online
- [ ] Complete 100 days!

---

## 🤔 Common Questions

### Why Python?

Python is:
- **Beginner-friendly** - Readable, less boilerplate
- **Versatile** - Web, data science, automation, AI/ML
- **In-demand** - High job market demand
- **Great community** - Tons of libraries and resources

### 100 days seems overwhelming!

**Tips to succeed:**
- One day at a time
- Don't aim for perfection
- It's okay to take breaks
- Revisit concepts if needed
- Focus on understanding, not memorization

### Should I take notes?

**Yes!** Writing helps retention:
- Use the `notes.md` in each day's folder
- Draw diagrams for visual concepts
- Summarize in your own words

---

## 🌟 After 100 Days

Once you complete the bootcamp:

1. **Build a portfolio project** using your favorite stack
2. **Contribute to open source** Python projects
3. **Specialize** in an area (web dev, data science, automation)
4. **Teach others** what you learned
5. **Start the next challenge!**

---

**Ready to code for 100 days? Let's begin! 🚀**

*Last updated: 2025-09-30*
