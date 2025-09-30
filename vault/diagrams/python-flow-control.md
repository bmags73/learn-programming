# Python Flow Control Visualization

## 📊 What This Shows

Visual representation of how Python executes conditional statements and control flow.

## 🎯 Why This Matters

Understanding flow control is essential for:
- **Decision making** - Making programs respond to different inputs
- **Logic design** - Structuring program behavior
- **Debugging** - Following execution paths
- **Problem solving** - Breaking problems into conditions

## 🖼️ The Diagrams

### if/elif/else Flow

```
Start
  │
  ▼
┌─────────────┐
│ Evaluate    │
│ condition1  │
└──────┬──────┘
       │
    ┌──┴──┐
    │True?│
    └──┬──┘
  Yes  │  No
   ┌───┴───┐
   │       │
   ▼       ▼
┌─────┐  ┌─────────────┐
│Code │  │ Evaluate    │
│Block│  │ condition2  │
│  1  │  └──────┬──────┘
└──┬──┘         │
   │         ┌──┴──┐
   │         │True?│
   │         └──┬──┘
   │       Yes  │  No
   │        ┌───┴───┐
   │        │       │
   │        ▼       ▼
   │     ┌─────┐ ┌─────┐
   │     │Code │ │Code │
   │     │Block│ │Block│
   │     │  2  │ │  3  │
   │     └──┬──┘ └──┬──┘
   │        │       │
   └────────┴───────┘
            │
            ▼
         Continue
```

### Nested Conditions

```
Age Check Program:

                ┌──────────┐
                │ age >= 18│
                └────┬─────┘
                     │
              ┌──────┴──────┐
              │             │
           Yes│             │No
              ▼             ▼
         ┌─────────┐   ┌─────────┐
         │Adult    │   │Minor    │
         └────┬────┘   └────┬────┘
              │             │
      ┌───────┴───────┐     │
      │               │     │
   ┌──┴──┐         ┌──┴──┐  │
   │age  │         │age  │  │
   │>= 21│         │< 21 │  │
   └──┬──┘         └──┬──┘  │
      │               │     │
   Yes│No          Yes│No   │
      ▼   ▼           ▼   ▼ ▼
    Full  Young     Legal Can't
    Adult Adult     Adult Vote
```

### Boolean Logic

```
AND (all must be True):
┌───────┐   ┌───────┐
│ Cond1 │AND│ Cond2 │
└───┬───┘   └───┬───┘
    │           │
    └─────┬─────┘
          │
    ┌─────┴─────┐
    │Both True? │
    └─────┬─────┘
      Yes │ No
          ▼
     Execute

OR (at least one must be True):
┌───────┐   ┌───────┐
│ Cond1 │OR │ Cond2 │
└───┬───┘   └───┬───┘
    │           │
    └─────┬─────┘
          │
    ┌─────┴──────┐
    │Either True?│
    └─────┬──────┘
      Yes │ No
          ▼
     Execute
```

## 💻 Code Examples

### Basic if/elif/else

```python
age = 25

if age >= 18:
    print("Adult")
elif age >= 13:
    print("Teenager")
else:
    print("Child")

# Output: Adult
```

**Flow:**
1. Check `age >= 18` → True
2. Execute `print("Adult")`
3. Skip remaining conditions
4. Continue

### Nested Conditions

```python
age = 20
has_id = True

if age >= 18:
    if has_id:
        print("Can enter club")
    else:
        print("Need ID")
else:
    print("Too young")

# Output: Can enter club
```

**Flow:**
1. Check `age >= 18` → True
2. Enter first block
3. Check `has_id` → True
4. Execute `print("Can enter club")`

### Boolean Operators

```python
# AND - Both must be True
age = 20
has_ticket = True

if age >= 18 and has_ticket:
    print("Can board plane")
else:
    print("Cannot board")

# OR - At least one must be True
is_weekend = True
is_holiday = False

if is_weekend or is_holiday:
    print("Day off!")
else:
    print("Work day")

# NOT - Inverts condition
is_raining = False

if not is_raining:
    print("Go for a walk")
else:
    print("Stay inside")
```

### Ternary Operator (One-line if/else)

```python
# Traditional if/else
age = 20
if age >= 18:
    status = "Adult"
else:
    status = "Minor"

# Ternary (same thing, one line)
status = "Adult" if age >= 18 else "Minor"

# Visualization:
# value_if_true  if  condition  else  value_if_false
#      ↓          ↓       ↓       ↓          ↓
    "Adult"    if  age >= 18  else    "Minor"
```

### Truth Value Testing

```python
# In Python, these are "falsy":
# - None
# - False
# - 0, 0.0, 0j (zero of any numeric type)
# - '', "", [] (empty sequences)
# - {}, set() (empty collections)

# Everything else is "truthy"

name = ""
if name:  # Empty string is falsy
    print(f"Hello, {name}")
else:
    print("No name provided")

# Output: No name provided

# Better practice: explicit check
if name != "":
    print(f"Hello, {name}")
```

## 🎨 Comparison Operators

```python
x = 10
y = 5

# Equality
x == y  # False (equal to)
x != y  # True  (not equal to)

# Comparison
x > y   # True  (greater than)
x < y   # False (less than)
x >= y  # True  (greater than or equal)
x <= y  # False (less than or equal)

# Identity
x is y        # False (same object?)
x is not y    # True  (different objects?)

# Membership
'a' in "apple"     # True
'z' not in "apple" # True
```

## 🔄 Short-Circuit Evaluation

```python
# AND short-circuits on first False
def expensive_check():
    print("Running expensive check...")
    return True

x = 5
# Second function NOT called because x > 10 is False
if x > 10 and expensive_check():
    print("Both true")

# OR short-circuits on first True
x = 15
# Second function NOT called because x > 10 is True
if x > 10 or expensive_check():
    print("At least one true")
```

**Visualization:**
```
AND evaluation:
┌─────────┐     ┌─────────┐
│ False?  │ Yes │ STOP    │
│         │────▶│ Return  │
│         │     │ False   │
└────┬────┘     └─────────┘
     │ No
     ▼
┌─────────┐
│ Check   │
│ Next    │
└─────────┘

OR evaluation:
┌─────────┐     ┌─────────┐
│ True?   │ Yes │ STOP    │
│         │────▶│ Return  │
│         │     │ True    │
└────┬────┘     └─────────┘
     │ No
     ▼
┌─────────┐
│ Check   │
│ Next    │
└─────────┘
```

## 🎯 Best Practices

### 1. Use elif, not multiple if

```python
# BAD: Checks all conditions
score = 85
if score >= 90:
    grade = 'A'
if score >= 80:  # Still checked even though 90 failed
    grade = 'B'
if score >= 70:  # Still checked
    grade = 'C'

# GOOD: Stops at first match
score = 85
if score >= 90:
    grade = 'A'
elif score >= 80:  # Only checked if previous was False
    grade = 'B'
elif score >= 70:
    grade = 'C'
```

### 2. Order conditions from specific to general

```python
# BAD: Never reaches the second condition
age = 25
if age > 0:
    print("Person exists")
elif age >= 18:  # Never executed!
    print("Adult")

# GOOD: Most specific first
age = 25
if age >= 18:
    print("Adult")
elif age > 0:
    print("Minor")
```

### 3. Use boolean variables for complex conditions

```python
# BAD: Hard to read
if user.is_authenticated and (user.is_staff or user.is_superuser) and not user.is_banned:
    allow_access = True

# GOOD: Clear and maintainable
is_authenticated = user.is_authenticated
has_permissions = user.is_staff or user.is_superuser
is_allowed = not user.is_banned

if is_authenticated and has_permissions and is_allowed:
    allow_access = True
```

## 🧠 Common Patterns

### Guard Clauses (Early Returns)

```python
def process_user(user):
    # Check invalid conditions first
    if user is None:
        return "No user provided"

    if not user.is_active:
        return "User is inactive"

    if user.age < 18:
        return "User is too young"

    # Main logic here
    return "User processed successfully"
```

### Chained Comparisons

```python
# Python allows chaining
x = 5
if 0 < x < 10:  # Equivalent to: x > 0 and x < 10
    print("x is between 0 and 10")

# Works with any comparison
age = 25
if 18 <= age <= 65:
    print("Working age")
```

## 📚 Related Concepts

- [Python Loops](./python-loops.md)
- [Python Functions](./python-functions.md)
- [Boolean Logic Cheatsheet](../cheatsheets/python.md#boolean-logic)

---

*Last updated: 2025-09-30*
