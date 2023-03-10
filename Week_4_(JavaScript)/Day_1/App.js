console.log("Hello World")

// variables 

// storing data in accessible variables that we can access

// declaring varibales 

// 1. var - DO NOT USE !!!!

var oldschool = "var is an older variable declaration method that should be avoided"

console.log(oldschool)

// Let - modern method of declaring variables that we may want to redeclare or change 
let changeable = "A value stored in a variable that can be redeclared"

console.log(changeable)

changeable = "A new value has been passed to this variable"

console.log(changeable)

// We use let to avoid variables being accidentally being overwritten

// const - For variables that will remain constant 

const constant = "A value that can not be redeclared"

console.log(constant)

// redeclaring a variable

let x = 100

console.log(x)

x = x + 100

// += adds the value and then assigns the result as the new value 

x += 100

console.log(x)

// Data types 

// String - Represents text enclosed in quote marks (single '' or double "")

let string = "I am a string"

console.log(string)

// Numbers 

console.log(100)
console.log(0.555)

// Example of a string containing a number

let question = "1000"

console.log(question)

// Boolans - Are either true or false

console.log(x == 300)

console.log(true)
console.log(false)

// Null

console.log(null)

// Undefined

console.log(undefined)

// Properties and Methods

// Property - qualities or information about the data

let propertyString = "Hello World"

console.log(propertyString.length)

// Method () - Actions or doing something with data

console.log(propertyString.toUpperCase())

// Math Library

// Javascript starts counting from 0

// In built matheatical methods and properties

// Generate a random number

console.log(Math.random())

console.log(Math.random() * 10)

// Math.Floor - Always rounds down to a whole number

console.log(Math.floor(Math.random() * 10))

// Math.ceil - always rounds up to a whole number

console.log(Math.ceil(Math.random() * 10))

// Math.round - Rounds up or down dependant on the number

console.log(Math.round(Math.random() * 10))

// Access Variables and Template Literals

let firstName = "Deonte" 

console.log("My name is" + firstName)

console.log(`My name is ${firstName}`)
