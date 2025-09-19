# PYTHON ENVIRONMENT CHEAT SHEET
================================

## 🚀 Environment Commands
learn-python               # Start tmux environment
python -m venv name        # Create virtual environment
source venv/bin/activate   # Activate venv (bash)
pip install package        # Install package
pip freeze > requirements.txt  # Save dependencies

## 📦 IPython Magic Commands
%run file.py               # Run Python script
%timeit code               # Time execution
%time code                 # Time single execution
%who                       # List variables
%whos                      # Detailed variable info
%reset                     # Clear namespace
%history                   # Command history
%edit                      # Open editor
%paste                     # Paste formatted code
%matplotlib inline         # Enable inline plots
%debug                     # Enter debugger
%pdb                       # Auto-debug on error
%load file.py              # Load code into cell
%save filename 1-10        # Save lines 1-10
?object                    # Object info
??object                   # Source code
!command                   # Shell command

## 🎯 Data Structures Quick Reference

### Lists
lst = [1, 2, 3]           # Create
lst.append(4)             # Add to end
lst.insert(0, 0)          # Insert at index
lst.pop()                 # Remove & return last
lst.remove(2)             # Remove first occurrence
lst[1:3]                  # Slice
lst.sort()                # Sort in place
sorted(lst)               # Return sorted copy

### Dictionaries
d = {"key": "value"}      # Create
d["new"] = "item"         # Add/update
d.get("key", default)     # Safe get
d.keys() / d.values()     # Get keys/values
d.items()                 # Get key-value pairs
d.pop("key")              # Remove & return
{k: v for k, v in items}  # Dict comprehension

### Sets
s = {1, 2, 3}             # Create
s.add(4)                  # Add element
s.remove(2)               # Remove (errors if missing)
s.discard(2)              # Remove (no error)
s1 | s2                   # Union
s1 & s2                   # Intersection
s1 - s2                   # Difference
item in s                 # O(1) membership test

### Deque (from collections)
from collections import deque
dq = deque([1, 2, 3])     # Create
dq.append(4)              # Add right
dq.appendleft(0)          # Add left
dq.pop()                  # Remove right
dq.popleft()              # Remove left
dq.rotate(1)              # Rotate right

## 🔧 String Formatting

# f-strings (preferred)
name = "World"
f"Hello, {name}!"
f"{value:.2f}"            # 2 decimal places
f"{num:05d}"              # Pad with zeros
f"{text:<10}"             # Left align
f"{text:>10}"             # Right align
f"{text:^10}"             # Center align

# format() method
"Hello, {}!".format(name)
"{:.2%}".format(0.25)     # Percentage

# % formatting (old style)
"Hello, %s!" % name
"%.2f" % value

## 📊 Common Patterns

# List comprehension
[x*2 for x in range(10) if x % 2 == 0]

# Dictionary comprehension  
{k: v*2 for k, v in dict.items()}

# Generator expression
(x*2 for x in range(10))

# With statement (context manager)
with open("file.txt") as f:
    content = f.read()

# Enumerate
for i, item in enumerate(items):
    print(f"{i}: {item}")

# Zip
for a, b in zip(list1, list2):
    print(a, b)

# Try/Except
try:
    risky_operation()
except SpecificError as e:
    handle_error(e)
finally:
    cleanup()

## 🌐 Your Network Routes Project
import subprocess
import shutil

# File operations
with open(path) as f:
    lines = f.readlines()

# String manipulation
line.strip()              # Remove whitespace
line.split("=")           # Split on delimiter
"=".join(parts)           # Join with delimiter
string.replace(old, new)  # Replace

# Subprocess
subprocess.run(["command"], check=True)

# Lists operations
if item in list:          # Check membership
list1 + list2             # Concatenate
set(list)                 # Remove duplicates

## 💡 Learning Tips
- Use IPython for interactive exploration
- %timeit to understand performance
- Print with colors for visual learning
- Start with small, working examples
- Build incrementally
- Test each piece separately