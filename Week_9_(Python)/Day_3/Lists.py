# Collections (Lists)

# Dynamic Data Structures

list1 = [20, 50, 100, 60]

list2 = [20, 50, 100, "Strings", "Hello World",
         "Apple Pie", 604.244, True, False]

list3 = [40, 60, 40, 20, 10, 40, "bob", "rice", "bob", "pie"]

# Accessing "Apple Pie"
print(list2[5])

# Changing exisiting values in the list by re-assignment
list2[1] = "Test"

print(list2)

# Adding Elements to Lists
# list.append(value) - Append will add a new value into the list
# list.insert (index, value)

print(list1)

list1.append(99)

print(list1)

list2.insert(3, "Chocolate")

print(list2)

# Removing Elements from Lists
# list.remove() - Remove will accept a value
# list.pop() - Pop will remove the last element from a list or element at a given index from the list

list2.pop(0)
print(list2)

list2.remove("Apple Pie")
print(list2)


# Other functions
# list.count(value) - find the number of occurances of a particular value
# list.index(value, start) - find the first occurance of a particular value
# list.sort() - Will sort the list into alphabetical or numerical order

print(list3)
list3.count(40)

print(list3.count(40))

print(list3.index("bob", 7))

list1.sort()
print(list1)

# list.sort(reverse=True) - This will sort in descending order

list1.sort(reverse=True)
print(list1)

# Other functions

sentence = "The dragon becomes me!"
print(len(sentence))

words = sentence.split()

# len() will return the number of items in a list, string, collection/object

print(words)
print(len(words))

print(words[1])
print(len(words[1]))

list5 = [20, 50, 245, 150, 1190, 100, 250]

# General Python Functions
# min()
# max()

print(min(list5))
print(max(list5))

# Removing the highest element

list5.sort()
print(list5)
list5.pop()
print(list5)

list5.remove(max(list5))
print(list5)

# Sum() will find the sum of a list of numbers

print(sum(list5))


# Excercise 1

listA = ["Banana", "Apples", "Oranges", "Melons", "Pears"]
print(listA)

print(listA[2])

listA[4] = "Lychee"

print(listA)

listA.remove("Banana")
listA.remove("Apples")
print(listA)


# Excercise 2

listA = ["Banana", "Apples", "Oranges", "Melons", "Pears"]

listB = ["Ryan", "Lucy", "Kim", "Xin Zhao", "George", "Jake", "Oliver"]
print(listA)
print(listB)

listC = (listA + listB)

print(listC)

# Exercise 3

sentence1 = input("Insert a sentence here: ")
print(sentence1)

words1 = sentence1.split()

print(words1[0])

print(words1[2])

print(words1[4])

# Exercise 4

Numbers = input("Enter some numbers: ")


print(Numbers)

print(sum(Numbers()))
# print(sum(Numbers))
# Numbers.sort(reverse=True)
# print(Numbers)
