# Fundetmental Data Types
myString = "This is a string"

myInt = 100  # This is an integer (Forms of text)
myFloat = 9.81  # This is a decimal number

# Boolean (True or False) (1 or 0), values have to be in capital letters

myBoolean = True
myBooleen2 = False

# Type() function, will verfy a particular data type.

print(type(myString))  # This has returned str which means string.
print(type(myInt))
print(type(myBoolean))
print(type(myFloat))


x = 30
y = 50

print(x + y)

a = input("Enter a number:")
b = input("Enter a 2nd number:")

print(a + b)

# Input by default returns a string so in the example above python has added the strings into one.

# Converting strings into integers with int()

a = int(a)
b = int(b)

print(type(a))
print(type(b))

print(a + b)


# Operators

# Addition (+)
# Subtraction (-)
# Multiplication (*)
# Division (/)

# Floor Division (//) - Will divide a number and round down to an integer
# Modulus (%) - Will find the remainder of a division
# Exponentiation (**) - Will raise a value to a power

# x * x * x == ** 3 (x^3)

# Assignment Operators

# Assignment (=) Sets the value

x = 10  # Basic Assignment: set x to 10
# x + 10 qill return 20, but it wont update x
# x = x + 10
x += 10

print(x)

# More data types (Data Structures)
# Lists, Tuples

myList = [300, 400, 120, 10, 80, 20]

print(type(myList))

# Tuples are Immutable (means once the list is defined you can move or change the values )
myTuple = (200, 410, 29, 40, 650)

print(type(myTuple))

# Accessing Lists
# Access a particular value from the list using square brackets
# List[Index]

print(myList[2])

# Updating values
# Change 400 to 800

print(myList[0] + myList[1])

myList[1] = 800



