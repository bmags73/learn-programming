# C Pointer Visualization

## 📊 What This Shows

Visual representation of how pointers work, including the address-of (`&`) and dereference (`*`) operators.

## 🎯 Why This Matters

Pointers are fundamental to C programming:
- **Pass by reference** - Modify function arguments
- **Dynamic memory** - malloc/free
- **Arrays** - Arrays decay to pointers
- **Data structures** - Linked lists, trees, graphs

Understanding pointers visually helps prevent common bugs and segfaults.

## 🖼️ The Diagram

### Basic Pointer Concept

```
Memory:
Address:  0x1000    0x1004    0x1008    0x100C
         ┌─────────┬─────────┬─────────┬─────────┐
         │   42    │   ???   │  0x1000 │   ???   │
         └─────────┴─────────┴─────────┴─────────┘
             ↑                     ↑
             │                     │
             x                     p

Code:
int x = 42;          // Variable x stores value 42 at address 0x1000
int *p = &x;         // Pointer p stores address of x (0x1000) at 0x1008

*p = 100;            // Dereference p to modify value at 0x1000
// Now x == 100
```

### The & and * Operators

```
┌──────────────────────────────────────────────────┐
│  int x = 42;                                     │
│                                                  │
│  Memory location 0x1000:  [  42  ]              │
│                              ↑                   │
│                              x                   │
└──────────────────────────────────────────────────┘

┌──────────────────────────────────────────────────┐
│  int *p = &x;    // & means "address of"         │
│                                                  │
│  0x1000: [  42  ]  ←───────────┐               │
│            ↑                    │               │
│            x                    │               │
│                                 │               │
│  0x1008: [ 0x1000 ]  ←──────────┘               │
│            ↑                                     │
│            p                                     │
└──────────────────────────────────────────────────┘

┌──────────────────────────────────────────────────┐
│  *p = 100;       // * means "value at address"   │
│                                                  │
│  0x1000: [ 100  ]  ←─── Modified via pointer!   │
│            ↑                                     │
│            x                                     │
│                                                  │
│  0x1008: [ 0x1000 ]                              │
│            ↑                                     │
│            p                                     │
└──────────────────────────────────────────────────┘
```

## 💻 Code Examples

### Basic Pointers

```c
#include <stdio.h>

int main(void) {
    int x = 42;
    int *p = &x;  // p points to x

    printf("Value of x: %d\n", x);           // 42
    printf("Address of x: %p\n", (void*)&x);  // e.g., 0x7fff5fbff7ac
    printf("Value of p: %p\n", (void*)p);     // Same as &x
    printf("Value at p: %d\n", *p);           // 42 (dereferencing p)

    *p = 100;  // Modify x through pointer
    printf("Value of x: %d\n", x);           // 100

    return 0;
}
```

### Pointer Arithmetic

```
Array in memory:
Index:    0       1       2       3       4
        ┌───────┬───────┬───────┬───────┬───────┐
        │  10   │  20   │  30   │  40   │  50   │
        └───────┴───────┴───────┴───────┴───────┘
Address: 0x1000  0x1004  0x1008  0x100C  0x1010
           ↑
           p

p + 0  →  0x1000  →  10
p + 1  →  0x1004  →  20
p + 2  →  0x1008  →  30
p + 3  →  0x100C  →  40
p + 4  →  0x1010  →  50

*(p + 2) is equivalent to p[2]
```

```c
#include <stdio.h>

int main(void) {
    int arr[] = {10, 20, 30, 40, 50};
    int *p = arr;  // Points to first element

    printf("p[0] = %d\n", *p);         // 10
    printf("p[1] = %d\n", *(p + 1));   // 20
    printf("p[2] = %d\n", *(p + 2));   // 30

    // Pointer arithmetic
    p++;  // Now points to second element
    printf("After p++: %d\n", *p);     // 20

    return 0;
}
```

### Pointers and Functions

```
Before function call:
┌────────────────────────┐
│ main():                │
│   x = 10  (0x1000)     │
│   y = 20  (0x1004)     │
└────────────────────────┘

Call: swap(&x, &y)
       │    │
       │    └──> 0x1004
       └──────> 0x1000

┌────────────────────────┐
│ swap():                │
│   a = 0x1000  ────┐    │
│   b = 0x1004  ──┐ │    │
│                 │ │    │
│   *a ←──────────┘ │    │
│   *b ←────────────┘    │
└────────────────────────┘
        │        │
        ↓        ↓
   Modifies  Modifies
   0x1000    0x1004

After function returns:
┌────────────────────────┐
│ main():                │
│   x = 20  (0x1000)     │  ← Swapped!
│   y = 10  (0x1004)     │  ← Swapped!
└────────────────────────┘
```

```c
#include <stdio.h>

void swap(int *a, int *b) {
    int temp = *a;  // Read value at a's address
    *a = *b;        // Write b's value to a's address
    *b = temp;      // Write temp to b's address
}

int main(void) {
    int x = 10, y = 20;

    printf("Before: x=%d, y=%d\n", x, y);  // x=10, y=20
    swap(&x, &y);  // Pass addresses
    printf("After: x=%d, y=%d\n", x, y);   // x=20, y=10

    return 0;
}
```

## 🚨 Common Pointer Mistakes

### 1. Uninitialized Pointer
```c
// BAD: Pointer points to random memory
int *p;
*p = 42;  // SEGFAULT! p points nowhere valid

// GOOD: Initialize before use
int x;
int *p = &x;
*p = 42;  // Safe
```

### 2. Null Pointer Dereference
```c
// BAD: Dereferencing NULL
int *p = NULL;
*p = 42;  // SEGFAULT!

// GOOD: Check before dereferencing
int *p = malloc(sizeof(int));
if (p != NULL) {
    *p = 42;
    free(p);
}
```

### 3. Dangling Pointer
```c
// BAD: Pointer to freed memory
int *p = malloc(sizeof(int));
free(p);
*p = 42;  // SEGFAULT! Use after free

// GOOD: Set to NULL after free
int *p = malloc(sizeof(int));
free(p);
p = NULL;  // Can't accidentally dereference
```

### 4. Lost Pointer
```c
// BAD: Memory leak
int *p = malloc(sizeof(int) * 10);
p = NULL;  // Lost reference! Memory leaked

// GOOD: Free before reassigning
int *p = malloc(sizeof(int) * 10);
free(p);
p = NULL;  // Safe
```

## 🎯 Pointer Rules

1. **Always initialize** pointers before use
2. **Check for NULL** before dereferencing
3. **Free** what you `malloc`
4. **Set to NULL** after freeing
5. **Don't return** addresses of local variables
6. **Match** pointer types (no `int*` to `char*` without cast)

## 📊 Pointer vs Value

```
Pass by Value:
void func(int x) {
    x = 100;  // Modifies COPY
}
int main() {
    int y = 50;
    func(y);
    // y is still 50
}

Pass by Pointer (simulates pass by reference):
void func(int *x) {
    *x = 100;  // Modifies ORIGINAL
}
int main() {
    int y = 50;
    func(&y);
    // y is now 100
}
```

## 🧩 Mental Model

**Think of pointers as:**
- A pointer is like a **street address**
- Dereferencing is like **going to that address**
- The value is what **you find at that location**

```
int x = 42;     // House with value 42 inside
int *p = &x;    // p stores the street address
*p = 100;       // Go to that address and change value to 100
```

## 📚 Related Concepts

- [Memory Layout](./c-memory-layout.md)
- [Double Pointers](./c-double-pointers.md)
- [Pointer Arithmetic](./c-pointer-arithmetic.md)

---

*Last updated: 2025-09-30*
