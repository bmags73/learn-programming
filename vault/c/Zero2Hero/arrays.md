```c
#include <stdio.h>

#define MAX_IDS 32

int main(){
		int  id = 0;
		int id_1 = 0;
		int id_2 = 0;
		// etc... valid code, just an easier way
		int ids[MAX_IDS] = {1,2,3,4,5,6}; // defined a MAX_IDS of 32 elements
		printf("%d\n", ids[2]); // prints the 3rd element of the ids array
		
		ids[3] = 0x41; // hex for the number 65
		pringf("%d\n", ids[3]);
}
```

## What is an Array in C?

An array in C is a collection of data items of similar data type. One or more values same data type, which may be primary data types (int, float, char), or user-defined types such as struct or pointers can be stored in an array. In C, the type of elements in the array should match with the data type of the array itself.

The size of the array, also called the length of the array, must be specified in the declaration itself. Once declared, the size of a C array cannot be changed. When an array is declared, the compiler allocates a continuous block of memory required to store the declared number of elements.

