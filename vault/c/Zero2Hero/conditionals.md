## Conditional Statements

Up until this point, we've written code that contains variables. But, our code doesn't actually DO anything. When we write code for computers, we're effectively asking the computer to perform logic for us. So far, our code hasn't had any conditional logic. This changes now.

# Conditional Statements

In C, if we want our code to take a certain path based on the state of the program, we have to create what is called a conditional statement. A conditional statement is a piece of code that can take one of two paths based on some sort of logic.

One type of conditional statement is what is referred to as an "if statement"

## If Statement

An if statement says, "only do this thing if the following condition is true", for example:

```c
int x = 0;
// get value from the user
scanf("%d", &x);
if (x == 42) {
	printf("You said 42!\n");
}
```

In the above code, we created a conditional statement that will only run if the value from the user is 42. This may seem simple, but we can use that statement to run almost the entirety of the code that we need to make for our employee database project.

Computers run on binary, which is a 1 or 0, effectively it can only take action if things are true or not true. An if statement does just that: it runs some statement and if the result is true, it takes an action

## else statement

We can add some more code to the above code to make it take an additional action. Like, else. The else clause says "do this other thing if the condition is false", for example:

```c
int x = 0;
// ..get value from the user..
if (x == 42) {
	printf("You said 42!\n");
} else {
	printf("You said something else!\n");
}
```

## if-else

There is one more conditional logic that we can use with if statements. We can chain multiple if-statements together that are mutual in their logic, by using an if-else tree. The if-else tree will check each logical condition in order, and execute the first one that is true. After that, it will stop checking the tree, for example:

```c
int x = 0;
// ..get value from the user..
if (x == 42) {
	printf("You said 42!\n");
} else if (x == 24) {
	printf("You said 24!\n");
} else {
	printf("You said something else!\n");
}
```

## Exercises

```c
int main() {
    
    int temp;
    printf("Enter the temperature in Fahrenheit: ");
    scanf("%d", &temp);

    if (temp >= 70) {
            printf("Dang bruther, its hot\n");
    } else if (temp >= 30 && temp < 70) {
            printf("Dang bruther, its mild\n");
    } else {
            printf("Dang bruther, its cold\n");
    }
    return 0;
}
```

### Break it:
1. Entering letters instead of numbers
	1. What I think will happen
		1. It will error out
	2. What actually happened
		1. It seemed to have gotten a number less that 30 because "its cold" was the output
	3. What do I think happened
		1. What was left due to the error is a one as in the exit code error of 1.
2. Enter a number, such as 2147483648, which is larger than the int max
	1. What I think will happen
		1. We will get a segmentation fault
	2. What actually happened
		1. it gave the answer "its cold" which is the same as the previous example
	3. What do I think happened
		1. Same answer, it seems that the error code of 1 is passed
3. Press Ctrl+D
	1. What I think will happen
		1. The program will be sent back the command prompt, nothing happens
	2. What actually happened
		1. Again, the "its cold" answer was given back
	3. What do I think happened
		1. Same again but is wild because it's an exit, not an error?

### Assignment vs Comparison Bug