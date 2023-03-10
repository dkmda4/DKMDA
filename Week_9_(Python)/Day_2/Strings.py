# Strings

Name = "Johnny"

print(Name)

Sentence = "Were going to write a sentence here to deal with. \n Here is another sentence at the end of it."

print(Sentence)

# Escape characrer
# They start with Backslashes (\)
# \n - Will create a new line
# \t - Will make an indentation
# \\ - Will actually render a single backslash
# `n
# <br>

sentence2 = """

It means we can type some sentences out.
Like so.

Anytime I press return (Enter).
Python automatically inserts these NewLines into the code.

The dragon Becomes me 
Goodbye.
"""
print(sentence2)

demo = "I want to type out \n new line and see it.\n\t This is a tabbed line."


# String 2 = "This is a sentence with "quotes" in it." Throws an error.

string2 = "This is a sentence with 'quotes' in it."
print(string2)

string2 = "This is a 'sentence' with 'quotes' in it."
print(string2)

string2 = "This is a sentence with \"quotes\" in it."
print(string2)

print(demo)

demo2 = """
This is a test.

'Quotes' work inside a work

"""

print(demo)

print(demo2)

# String Formatting

var1 = "Bananas"

var2 = 20

var3 = "Mangoes"

# The "print" method
print("Today I ate some", var1, "with", var2, "and", var3)

# Concatentation

sentence = "Today I ate some " + var1 + " with " + var2 + " and " + var3
print(sentence)

# Formatting strings with f-strings
# f"string": use the f character to turn the string into an f-string
# substitute the variable in with {curly braces}

sentence = f"Today I ate some {var1} with {var2} and {var3}"
print(sentence)


# Excercise 1
