# 🔧 C Programming - Low-Level Mastery Tracker

> **Learning Path:** lowlevel.academy + additional resources  
> **Goal:** Master C and build Omarchy OS  
> **Started:** ___________

---

## 📊 Overall Progress

```
Progress: [----------] 0% Complete

Fundamentals: [----------] 0/8 modules
Memory:       [----------] 0/6 modules
Systems:      [----------] 0/5 modules
Advanced:     [----------] 0/4 modules
```

---

## 🟢 FUNDAMENTALS (Modules 1-8)

### Module 1: Hello, C World

**WHY:** Understanding how C programs compile and run - from source code to machine instructions

- [ ] **1.1** Environment Setup - Install gcc/clang, set up editor
    
    - WHY: Every C program needs a compiler to translate to machine code
    - Date completed: ___________
- [ ] **1.2** Your First Program - Write "Hello, World"
    
    - WHY: Every C program is a conversation with the CPU
    - Date completed: ___________
- [ ] **1.3** Compilation Process - Understand preprocessing, compiling, assembling, linking
    
    - WHY: Understanding each step helps debug problems
    - Date completed: ___________

**Checkpoint:** Create a program that prints your learning goals

---

### Module 2: Data Types & Variables

**WHY:** Understanding how computers represent and store different types of information

- [ ] **2.1** Integer Types - int, short, long, signed vs unsigned
    
    - WHY: Memory is expensive; choose the right size
    - Date completed: ___________
- [ ] **2.2** Floating Point - float vs double, precision
    
    - WHY: Decimals are approximations in computers
    - Date completed: ___________
- [ ] **2.3** Characters - char type, ASCII table
    
    - WHY: Text is just numbers to the computer
    - Date completed: ___________
- [ ] **2.4** Boolean Logic - Truthiness in C
    
    - WHY: 0 is false, everything else is true
    - Date completed: ___________

**Checkpoint:** Calculator handling different data types

---

### Module 3: Operators & Expressions

**WHY:** Understanding how to manipulate data and create complex logic

- [ ] **3.1** Arithmetic Operators - +, -, *, /, %
    
    - Date completed: ___________
- [ ] **3.2** Comparison Operators - ==, !=, <, >, <=, >=
    
    - Date completed: ___________
- [ ] **3.3** Logical Operators - &&, ||, !
    
    - WHY: Short-circuit evaluation for efficiency
    - Date completed: ___________
- [ ] **3.4** Bitwise Operators - &, |, ^, ~, <<, >>
    
    - WHY: Talking to hardware at the bit level
    - Date completed: ___________

**Checkpoint:** Bit flag system, binary calculator

---

### Module 4: Control Flow

**WHY:** How programs make decisions and repeat actions

- [ ] **4.1** If Statements - if, else if, else
    
    - Date completed: ___________
- [ ] **4.2** Switch Statements - switch, case, default
    
    - Date completed: ___________
- [ ] **4.3** While Loops - while and do-while
    
    - Date completed: ___________
- [ ] **4.4** For Loops - Initialization, condition, increment
    
    - Date completed: ___________
- [ ] **4.5** Loop Control - break and continue
    
    - Date completed: ___________

**Checkpoint:** Text-based menu system, prime number finder

---

### Module 5: Functions

**WHY:** Breaking programs into reusable, manageable pieces

- [ ] **5.1** Function Basics - Declaration, definition, parameters
    
    - Date completed: ___________
- [ ] **5.2** Function Prototypes - Header files, forward declarations
    
    - WHY: Separating interface from implementation
    - Date completed: ___________
- [ ] **5.3** Scope and Lifetime - Local vs global, static variables
    
    - Date completed: ___________
- [ ] **5.4** Recursion - Base case, recursive case
    
    - WHY: Some problems are naturally recursive
    - Date completed: ___________

**Checkpoint:** Mathematical function library

---

### Module 6: Arrays

**WHY:** Storing and accessing multiple values of the same type

- [ ] **6.1** Array Basics - Declaration, initialization, indexing
    
    - WHY: Contiguous memory for related data
    - Date completed: ___________
- [ ] **6.2** Array Traversal - Looping, bounds checking
    
    - WHY: Arrays don't know their own size!
    - Date completed: ___________
- [ ] **6.3** Multi-dimensional Arrays - 2D arrays, memory layout
    
    - Date completed: ___________
- [ ] **6.4** Arrays and Functions - Passing arrays, array decay
    
    - Date completed: ___________

**Checkpoint:** Tic-tac-toe, sorting algorithms

---

### Module 7: Strings

**WHY:** Understanding how text is stored and manipulated in C

- [ ] **7.1** String Basics - Character arrays, null terminator
    
    - WHY: Strings are just arrays of chars
    - Date completed: ___________
- [ ] **7.2** String Library - strlen, strcpy, strcmp, strcat
    
    - Date completed: ___________
- [ ] **7.3** String Manipulation - Character-by-character processing
    
    - Date completed: ___________
- [ ] **7.4** Common Pitfalls - Buffer overflows, unterminated strings
    
    - WHY: Security and stability
    - Date completed: ___________

**Checkpoint:** Text adventure game, string parser

---

### Module 8: Input/Output

**WHY:** Communicating with the user and reading/writing files

- [ ] **8.1** Console I/O - printf, scanf, format specifiers
    
    - Date completed: ___________
- [ ] **8.2** File I/O Basics - fopen, fclose, feof
    
    - Date completed: ___________
- [ ] **8.3** Reading Files - fgets, fscanf, fread
    
    - Date completed: ___________
- [ ] **8.4** Writing Files - fprintf, fputs, fwrite
    
    - Date completed: ___________

**Checkpoint:** Note-taking app, CSV parser

---

## 🟡 MEMORY MANAGEMENT (Modules 9-14)

### Module 9: Pointers - The Foundation

**WHY:** Pointers ARE C. Understanding them unlocks everything.

- [ ] **9.1** What is a Pointer? - Addresses, & and * operators
    
    - WHY: Direct memory manipulation
    - **DRAW THIS:** Memory layout diagram
    - Date completed: ___________
- [ ] **9.2** Pointer Arithmetic - Adding/subtracting from pointers
    
    - Date completed: ___________
- [ ] **9.3** Pointers and Arrays - Array name is a pointer
    
    - Date completed: ___________
- [ ] **9.4** Pointers and Functions - Pass by reference
    
    - WHY: How to change variables in other functions
    - Date completed: ___________

**Checkpoint:** Swap function, dynamic string builder

---

### Module 10: Dynamic Memory Allocation

**WHY:** Creating data structures that can grow and shrink at runtime

- [ ] **10.1** Heap vs Stack - Automatic vs manual memory
    
    - WHY: Different memory for different needs
    - **DRAW THIS:** Stack and heap diagram
    - Date completed: ___________
- [ ] **10.2** malloc and free - Dynamic allocation
    
    - WHY: Manual memory management
    - Date completed: ___________
- [ ] **10.3** Common Memory Errors - Leaks, double free, use after free
    
    - Date completed: ___________
- [ ] **10.4** Valgrind - Finding memory leaks
    
    - Date completed: ___________

**Checkpoint:** Dynamic array (resizable)

---

### Module 11: Advanced Pointers

**WHY:** Mastering complex pointer scenarios

- [ ] **11.1** Pointers to Pointers - Double pointers
    
    - Date completed: ___________
- [ ] **11.2** Function Pointers - Callbacks
    
    - WHY: Runtime polymorphism in C
    - Date completed: ___________
- [ ] **11.3** Void Pointers - Generic pointers
    
    - Date completed: ___________
- [ ] **11.4** Const and Pointers - Different const scenarios
    
    - Date completed: ___________

**Checkpoint:** Generic sorting function

---

### Module 12: Structures

**WHY:** Creating custom data types to model real-world entities

- [ ] **12.1** Struct Basics - Defining structures, member access
    
    - Date completed: ___________
- [ ] **12.2** Nested Structures - Structures within structures
    
    - Date completed: ___________
- [ ] **12.3** Structures and Pointers - Passing to functions
    
    - Date completed: ___________
- [ ] **12.4** Typedef and Unions - Cleaner code, memory sharing
    
    - Date completed: ___________

**Checkpoint:** Student record system, linked list

---

### Module 13: Data Structures

**WHY:** Organizing data efficiently for different operations

- [ ] **13.1** Linked Lists - Singly and doubly linked
    
    - WHY: Dynamic size, efficient insertion/deletion
    - Date completed: ___________
- [ ] **13.2** Stacks and Queues - LIFO and FIFO
    
    - Date completed: ___________
- [ ] **13.3** Trees - Binary trees, traversal
    
    - Date completed: ___________
- [ ] **13.4** Hash Tables - Hash functions, collision resolution
    
    - WHY: O(1) lookup time
    - Date completed: ___________

**Checkpoint:** Implement all four data structures

---

### Module 14: Algorithms

**WHY:** Efficient problem solving and optimization

- [ ] **14.1** Searching - Linear and binary search
    
    - Date completed: ___________
- [ ] **14.2** Sorting - Bubble, selection, quick, merge sort
    
    - WHY: O(n²) vs O(n log n)
    - Date completed: ___________
- [ ] **14.3** Recursion Patterns - Divide and conquer, backtracking
    
    - Date completed: ___________
- [ ] **14.4** Time Complexity - Big O notation
    
    - Date completed: ___________

**Checkpoint:** Algorithm visualization tool

---

## 🔴 SYSTEMS PROGRAMMING (Modules 15-19)

### Module 15: The Preprocessor

**WHY:** Understanding what happens before compilation

- [ ] **15.1** Macros - #define constants and functions
    
    - Date completed: ___________
- [ ] **15.2** Conditional Compilation - #ifdef, #ifndef
    
    - WHY: Platform-specific code
    - Date completed: ___________
- [ ] **15.3** Include Guards - Preventing multiple inclusion
    
    - Date completed: ___________

**Checkpoint:** Cross-platform utility library

---

### Module 16: Multi-file Projects

**WHY:** Organizing large codebases

- [ ] **16.1** Header and Source Files - Declarations vs definitions
    
    - Date completed: ___________
- [ ] **16.2** Makefiles - Automated building
    
    - Date completed: ___________
- [ ] **16.3** Static and Dynamic Linking - Libraries
    
    - Date completed: ___________

**Checkpoint:** Multi-file project with Makefile

---

### Module 17: Bit Manipulation

**WHY:** Talking directly to hardware

- [ ] **17.1** Bit Fields - Struct bit fields, packing data
    
    - Date completed: ___________
- [ ] **17.2** Endianness - Big-endian vs little-endian
    
    - Date completed: ___________
- [ ] **17.3** Bitwise Algorithms - Setting/clearing bits
    
    - Date completed: ___________

**Checkpoint:** Network protocol parser

---

### Module 18: System Calls & POSIX

**WHY:** Talking to the operating system

- [ ] **18.1** Process Management - fork(), exec(), wait()
    
    - Date completed: ___________
- [ ] **18.2** File Systems - open(), read(), write(), close()
    
    - Date completed: ___________
- [ ] **18.3** Signals - Signal handling
    
    - Date completed: ___________

**Checkpoint:** Simple shell implementation

---

### Module 19: Network Programming

**WHY:** Communicating between computers

- [ ] **19.1** Sockets Basics - TCP vs UDP
    
    - Date completed: ___________
- [ ] **19.2** TCP Sockets - socket(), bind(), listen(), accept()
    
    - Date completed: ___________
- [ ] **19.3** UDP Sockets - sendto(), recvfrom()
    
    - Date completed: ___________

**Checkpoint:** Chat server/client

---

## 💎 ADVANCED TOPICS (Modules 20-23)

### Module 20: Debugging & Profiling

**WHY:** Finding and fixing problems

- [ ] **20.1** GDB Debugger - Breakpoints, stepping
    
    - Date completed: ___________
- [ ] **20.2** Profiling Tools - gprof, perf
    
    - Date completed: ___________

**Checkpoint:** Debug complex bug, optimize slow program

---

### Module 21: Concurrency

**WHY:** Running multiple tasks simultaneously

- [ ] **21.1** Threads - pthread library
    
    - Date completed: ___________
- [ ] **21.2** Synchronization - Mutexes, semaphores
    
    - WHY: Thread safety
    - Date completed: ___________

**Checkpoint:** Multi-threaded server

---

### Module 22: Advanced Memory

**WHY:** Expert-level memory management

- [ ] **22.1** Memory Mapped I/O - mmap()
    
    - Date completed: ___________
- [ ] **22.2** Custom Allocators - Write your own malloc
    
    - Date completed: ___________

**Checkpoint:** Custom memory allocator

---

### Module 23: Contributing to Omarchy OS

**WHY:** Applying everything you've learned

- [ ] **23.1** OS Architecture - Kernel vs userspace
    
    - Date completed: ___________
- [ ] **23.2** First Contribution - Fix a bug
    
    - Date completed: ___________
- [ ] **23.3** Feature Development - Add new feature
    
    - Date completed: ___________

**Final Project:** Significant contribution to Omarchy OS

---

## 🎉 MASTERY ACHIEVED!

**Date Completed:** ___________  
**Total Time:** ___________ months

**Skills Mastered:**

- [ ] Write efficient, bug-free C code
- [ ] Understand memory at the byte level
- [ ] Debug complex issues
- [ ] Build system-level programs
- [ ] Contribute to operating systems

---

**Remember:** C is about understanding the machine. Take time to visualize memory. Draw diagrams. Ask "WHY" at every step. 🚀