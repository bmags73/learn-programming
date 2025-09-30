# Day 01 - Band Name Generator
# Learn: print(), input(), variables, string concatenation

# Welcome message
print("Welcome to the Band Name Generator!")

# Get user inputs
city = input("What city did you grow up in?\n")
pet = input("What is your pet's name?\n")

# Generate band name
band_name = city + " " + pet

# Display result
print("Your band name could be: " + band_name)

# Alternative using f-strings (more Pythonic):
# print(f"Your band name could be: {city} {pet}")
