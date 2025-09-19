#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/*
 * Day 01: Pointers & Memory - VISUAL Learning
 * Date: 2025-01-18
 * Focus: SEE how C memory works vs Python
 */

int main() {
    printf("🎯 C DAY 01: Memory & Pointers Visualization\n");
    printf("=============================================\n\n");
    
    // ========== PART 1: Variables vs Pointers ==========
    printf("📦 PART 1: What IS a pointer?\n");
    printf("------------------------------\n");
    
    int x = 42;        // Regular variable
    int *ptr = &x;     // Pointer to that variable
    
    printf("Variable x:\n");
    printf("  Value: %d\n", x);
    printf("  Address: %p\n", (void*)&x);
    printf("  Size: %zu bytes\n\n", sizeof(x));
    
    printf("Pointer ptr:\n");
    printf("  Points to: %p (x's address)\n", (void*)ptr);
    printf("  Dereferenced: %d (x's value)\n", *ptr);
    printf("  Its own address: %p\n", (void*)&ptr);
    printf("  Size: %zu bytes\n\n", sizeof(ptr));
    
    // Visual representation
    printf("📊 VISUAL:\n");
    printf("  MEMORY        VALUE\n");
    printf("  [%p] → [42]  (x)\n", (void*)&x);
    printf("  [%p] → [%p]  (ptr → points to x)\n\n", (void*)&ptr, (void*)ptr);
    
    // ========== PART 2: Arrays ARE Pointers! ==========
    printf("🎨 PART 2: Arrays = Pointers in disguise\n");
    printf("-----------------------------------------\n");
    
    int arr[3] = {10, 20, 30};
    
    printf("Array method:    arr[1] = %d\n", arr[1]);
    printf("Pointer method:  *(arr+1) = %d\n", *(arr+1));
    printf("They're the SAME! 🤯\n\n");
    
    // Show memory layout
    printf("Memory layout:\n");
    for(int i = 0; i < 3; i++) {
        printf("  [%p] = %d", (void*)&arr[i], arr[i]);
        if(i > 0) {
            // Calculate byte distance
            long diff = (char*)&arr[i] - (char*)&arr[i-1];
            printf(" (↑ %ld bytes apart)", diff);
        }
        printf("\n");
    }
    printf("\n");
    
    // ========== PART 3: Dynamic Memory (like Python!) ==========
    printf("💾 PART 3: Dynamic Memory (malloc)\n");
    printf("----------------------------------\n");
    
    // This is like Python's list - size determined at runtime!
    int size = 5;
    int *dynamic = malloc(size * sizeof(int));
    
    if (dynamic == NULL) {
        printf("❌ Memory allocation failed!\n");
        return 1;
    }
    
    // Fill with values
    for(int i = 0; i < size; i++) {
        dynamic[i] = (i + 1) * 100;
    }
    
    printf("Dynamic array (like Python list):\n");
    for(int i = 0; i < size; i++) {
        printf("  dynamic[%d] = %d @ %p\n", i, dynamic[i], (void*)&dynamic[i]);
    }
    
    // CRITICAL: Free the memory!
    free(dynamic);
    printf("\n✅ Memory freed (no memory leak!)\n\n");
    
    // ========== PART 4: Strings (char arrays) ==========
    printf("📝 PART 4: C Strings vs Python Strings\n");
    printf("---------------------------------------\n");
    
    char str1[] = "Hello";           // Array (modifiable)
    char *str2 = "World";            // Pointer (read-only)
    
    printf("Array string: '%s'\n", str1);
    printf("  Size: %zu bytes (includes \\0)\n", sizeof(str1));
    printf("  Can modify? YES!\n");
    str1[0] = 'J';
    printf("  Modified: '%s'\n\n", str1);
    
    printf("Pointer string: '%s'\n", str2);
    printf("  Size of pointer: %zu bytes\n", sizeof(str2));
    printf("  String length: %zu chars\n", strlen(str2));
    printf("  Can modify? NO! (segfault if you try)\n\n");
    
    // ========== PART 5: The BIG Picture ==========
    printf("🎯 KEY INSIGHTS:\n");
    printf("================\n");
    printf("1️⃣  Python: variables = labels on objects\n");
    printf("    C: variables = actual memory locations\n\n");
    
    printf("2️⃣  Python: automatic memory management\n");
    printf("    C: YOU control malloc/free\n\n");
    
    printf("3️⃣  Python: everything is a reference\n");
    printf("    C: choose between value or pointer\n\n");
    
    printf("4️⃣  Python: strings immutable\n");
    printf("    C: char arrays mutable, char* not\n\n");
    
    printf("🚀 Next: Run the Python version to compare!\n");

    printf("\n🧪 LIVE EDIT TEST:\n");
    printf("If you see this, auto-compile works!\n");
    
    return 0;
}
