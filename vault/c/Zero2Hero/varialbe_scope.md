In  scope meaning that the variable is inside of a function and can only be used inside that function. once the function ends, the variable goes bye-bye.

He used:

```c
#include <stdio.h>

// "Global Scope" and can be used anywhere within this script.
// Not recommended as once it becomes larger, it will become unmanageable and
// cause logical issues just by the pure number of variables set globally.
// I can imagine many sub scopes updating it when they run and the original inent
// of the global variable is now erased, with some OTHER value that may not be
// intended to be made from. 
int g_NumPersons = 0;

void some_other_function()
{
		int personID = 1; //<-- inside the "some_other_function" making it "in scope" updating here will not effect the other function, "main()".
}

int main()
{
		//type name  = initial value;
		int personID = 0;  //<-- is inside the main() function so it can only be used here so it is "in scope"
		personID += 1; // Should update on each run by one everytime
		{
			int personID = 0; //<-- THIS variable is only used within this sub scope
			personID += 1; // this will only update the personID in the LOWEST scope
		}
}
```

