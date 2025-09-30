# C Memory Layout Diagram

## 📊 What This Shows

This diagram illustrates the memory layout of a C program, showing the different segments and how they grow during execution.

## 🎯 Why This Matters

Understanding memory layout is crucial for:
- **Debugging** - Know where your data lives
- **Performance** - Understand stack vs heap allocation costs
- **Security** - Prevent buffer overflows and stack smashing
- **Low-level programming** - Essential for systems programming

## 🖼️ The Diagram

```
High Memory Address (0xFFFFFFFF)
┌─────────────────────────────────┐
│        Command Line Args        │  ← argc, argv
│         & Environment           │
├─────────────────────────────────┤
│                                 │
│            STACK                │  ← Local variables, function parameters
│         (grows DOWN)            │  ← Function call frames
│              ↓                  │
│                                 │
├─────────────────────────────────┤
│          (unused)               │
├─────────────────────────────────┤
│              ↑                  │
│         (grows UP)              │
│                                 │
│            HEAP                 │  ← malloc(), calloc(), realloc()
│                                 │  ← Dynamic memory allocation
├─────────────────────────────────┤
│        BSS Segment              │  ← Uninitialized global/static variables
│  (Block Started by Symbol)      │  ← Initialized to 0 by OS
├─────────────────────────────────┤
│        Data Segment             │  ← Initialized global/static variables
│     (Initialized Data)          │  ← int global_var = 42;
├─────────────────────────────────┤
│        Text Segment             │  ← Program code (machine instructions)
│       (Code/Read-Only)          │  ← Functions, constant strings
└─────────────────────────────────┘
Low Memory Address (0x00000000)
```

## 🔍 Segment Details

### 1. Stack
- **What:** LIFO structure for local variables and function calls
- **Grows:** Downward (high → low addresses)
- **Contains:**
  - Local variables
  - Function parameters
  - Return addresses
  - Saved registers
- **Size:** Limited (usually 1-8 MB)
- **Speed:** Very fast (CPU cache-friendly)
- **Lifetime:** Automatic (freed when function returns)

### 2. Heap
- **What:** Dynamic memory allocation region
- **Grows:** Upward (low → high addresses)
- **Contains:**
  - Memory from `malloc()`
  - Memory from `calloc()`
  - Memory from `realloc()`
- **Size:** Limited by available RAM
- **Speed:** Slower than stack
- **Lifetime:** Manual (must call `free()`)

### 3. BSS (Block Started by Symbol)
- **What:** Uninitialized global/static variables
- **Contains:**
  - `int global_var;` (no initializer)
  - `static int count;`
- **Initialized to:** Zero by the OS
- **Size:** Fixed at compile time

### 4. Data Segment
- **What:** Initialized global/static variables
- **Contains:**
  - `int global_var = 42;`
  - `static const char* name = "Alice";`
- **Size:** Fixed at compile time

### 5. Text Segment
- **What:** Executable code
- **Contains:**
  - Machine instructions
  - Constant strings
  - Function code
- **Permissions:** Read-only (prevents self-modifying code)
- **Size:** Fixed at compile time

## 💻 Code Examples

### Stack vs Heap

```c
#include <stdlib.h>

int main(void) {
    // Stack allocation
    int stack_var = 42;           // Lives on stack
    int stack_array[10];          // Lives on stack

    // Heap allocation
    int *heap_var = malloc(sizeof(int));      // Pointer on stack, data on heap
    int *heap_array = malloc(10 * sizeof(int)); // Pointer on stack, array on heap

    // Must free heap memory!
    free(heap_var);
    free(heap_array);

    // Stack memory freed automatically when main() returns
    return 0;
}
```

### Global vs Local

```c
#include <stdio.h>

// Data segment (initialized)
int global_init = 100;

// BSS segment (uninitialized, set to 0)
int global_uninit;

// Text segment
int add(int a, int b) {  // Function code in text segment
    // Stack
    int result = a + b;  // Local variable on stack
    return result;
}

int main(void) {
    // Stack
    int local = 50;     // On stack

    // Heap
    int *dynamic = malloc(sizeof(int));  // Pointer on stack, data on heap
    *dynamic = 75;

    printf("Global init: %d\n", global_init);    // From data segment
    printf("Global uninit: %d\n", global_uninit); // From BSS (0)
    printf("Local: %d\n", local);                 // From stack
    printf("Dynamic: %d\n", *dynamic);            // From heap

    free(dynamic);
    return 0;
}
```

## 🚨 Common Issues

### Stack Overflow
```c
// Bad: Too much stack allocation
int main(void) {
    int huge_array[1000000];  // May overflow stack!
    return 0;
}

// Good: Use heap for large allocations
int main(void) {
    int *huge_array = malloc(1000000 * sizeof(int));
    if (huge_array == NULL) {
        return 1;  // malloc failed
    }
    // ... use array ...
    free(huge_array);
    return 0;
}
```

### Dangling Pointers
```c
// Bad: Returning pointer to stack variable
int* get_number(void) {
    int x = 42;
    return &x;  // DANGER! x is on stack, will be destroyed
}

// Good: Return value or use heap
int* get_number(void) {
    int *x = malloc(sizeof(int));
    *x = 42;
    return x;  // Caller must free()
}
```

## 🎯 Key Takeaways

1. **Stack** = Fast, automatic, limited size
2. **Heap** = Flexible, manual management, larger size
3. **Global/static** = Fixed at compile time
4. **Code** = Read-only, shared

## 📚 Related Concepts

- [Pointer Visualization](./c-pointer-visualization.md)
- [Stack vs Heap](./c-stack-heap.md)
- [Memory Management Notes](../notes/c/memory-management.md)

---

*Last updated: 2025-09-30*
