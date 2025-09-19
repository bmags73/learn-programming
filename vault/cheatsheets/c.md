# C DEVELOPMENT CHEAT SHEET
=============================================

## 🚀 Environment Commands
learn-c          # Start tmux with nvim (left) + auto-compile (right)
gcc file.c       # Compile to a.out
gcc -o name file.c  # Compile with custom name
gcc -Wall file.c # Compile with all warnings

## 📦 Basic C Structure
#include <stdio.h>    // Standard I/O
#include <stdlib.h>   // malloc, free
#include <string.h>   // String functions

int main() {
    // Your code here
    return 0;  // 0 = success
}

## 🎯 Variables & Types
int x = 42;           // Integer
float f = 3.14;       // Float  
double d = 3.14159;   // Double precision
char c = 'A';         // Single character
char str[] = "Hello"; // String (char array)

// Pointers
int *ptr = &x;        // Pointer to int
*ptr = 99;            // Dereference (change x to 99)

## 💾 Memory Management
// Stack (automatic)
int arr[10];          // Fixed size, auto-freed

// Heap (manual) 
int *dynamic = malloc(10 * sizeof(int));  // Allocate
if (dynamic == NULL) {                    // Always check!
    // Handle allocation failure
}
free(dynamic);        // MUST free when done!

## 📝 Strings in C
// Array (modifiable)
char str1[] = "Hello";
str1[0] = 'J';        // OK! Now "Jello"

// Pointer (read-only)
char *str2 = "World";
// str2[0] = 'X';     // CRASH! Segfault!

// String functions
strlen(str);          // Length (not including \0)
strcmp(s1, s2);       // Compare (0 if equal)
strcpy(dest, src);    // Copy (dangerous!)
strncpy(dest, src, n); // Safer copy

## 🔄 Arrays & Pointers
int arr[3] = {10, 20, 30};

// These are IDENTICAL:
arr[1]                // Array notation
*(arr + 1)            // Pointer notation

// Array is just a pointer to first element
int *p = arr;         // p points to arr[0]
p++;                  // Now points to arr[1]

## 🎨 Output Formatting
printf("Integer: %d\n", 42);
printf("Float: %.2f\n", 3.14159);    // 2 decimals
printf("Character: %c\n", 'A');
printf("String: %s\n", "Hello");
printf("Pointer: %p\n", ptr);        // Hex address
printf("Hex: %x\n", 255);            // ff
printf("Padded: %5d\n", 42);         // "   42"

## 🔧 Compilation Flags
-Wall         # All warnings
-Werror       # Warnings as errors
-g            # Debug info (for gdb)
-O2           # Optimization level 2
-std=c99      # Use C99 standard
-o name       # Output filename

## 🐛 Common Errors
// Segfault causes:
- Dereferencing NULL
- Buffer overflow  
- Using freed memory
- Stack overflow (too much recursion)

// Memory leak:
- malloc() without free()
- Lost pointer to allocated memory

## 🌐 Network Headers
#include <sys/socket.h>   // Socket functions
#include <netinet/in.h>   // Internet addresses
#include <arpa/inet.h>    // inet_aton, inet_ntoa
#include <unistd.h>       // close()

## 📚 Your Project Structure
~/learn-programming/
├── c/
│   ├── basics/daily/     # day01.c, day02.c...
│   ├── functions/        # learn-c.fish
│   └── projects/         # Future C projects

## 🎮 Vim Commands for C
:w            # Save (triggers auto-compile)
F5            # Compile & run (if configured)
gd            # Go to definition
K             # Show man page for function