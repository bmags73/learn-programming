Video Code:
```c
#include <stdio.h>

#define MAX_PERSONS 1024
#define DEBUG

int main()
{
	#ifdef DEBUG
	printf("WE ARE IN DEBUG MODE: %s:%d", __FILE__, __LINE__);
	#endif
	
	return 0;
}
```

Series of four steps:
- Preprcessing: handles all # directives
	- Preprocessor Directives (Not Inclusive, Common only):
		- ``#define`` - defines a macro
			- ``#define PI 3.14``
		- ``#undef`` - undefines a previously defined macro
			- ``#undef PI``
		- ``#include`` - includes the contents of a file
			- ``#include <stdio.h>``
			- ``#include "myheader.h"``
		- ``#if`` ``#elif`` ``#else`` ``#endif`` - Conditional compilation
			- ``#if DEBUG``
			- ``printf("Debug mode\n");``
			- ``#ifdef`` ``#ifndef`` - Check if a macro is defined
				- ``#ifdef DEBUG``
				- ``#define LOG(x) printf(x)``
				- ``#else ``
				- ``#define LOG(x)``
				- ``#endif``
		- ``#error`` - Produces a compile-time error
			- ``#error "Unsupported platform"``
		- ``#pragma`` - Provides compiler-specific instructions
			- ``#pragma once``
		- ``#line`` - Changes teh compiler's idea of the line number and filename
			- ``#line 100 "custome_file.c"``
		- ``#warning`` - Produces a compiler warning (GCC specific)
			- ``#warning - "This is a warning"``
- Compilation: translates the code to assembly
- Assembly: converts assembly machine code (object files)
- Linking: connects all object files and libraries into a final executable