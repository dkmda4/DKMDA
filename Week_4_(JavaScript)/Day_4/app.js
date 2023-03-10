// Declare a function - Arrow function syntax

const greeting = () => {
    console.log('Hello World')
}

// Calling / Invoking a function 

greeting()

// Light Switch Example 

let lightsOn = false 

const lightSwitch =  () => {
    if (lightsOn) {
        lightsOn = false
        console.log('Lights Off')
    } else {
        lightsOn = true
        console.log('Lights On')
    }
} 

lightSwitch ()
lightSwitch ()

// Functions that take in parameters and arguments

// Parameters are required values that specify when we declare a function 

const atm = (accountNumber, amount) => {
    console.log(`Account Number: ${accountNumber}. Amount Withdrawn: £${amount}.`)
}

// Calling a function without required parameters will return undefined value

atm()

// Passing arguments

atm(12345678, 200)

// Global and Local Scope

const name = 'Lydia'
const age = 21
const city = 'San Fransico'

const getPersonInfo = () => {
    const name = 'Sarah'
    const age = 22
    const pet = 'Dog'

    return `${name} is ${age} and lives in ${city}.`
}

console.log(getPersonInfo())

// Functions that call other functions 

const timesTen = (num) => {
    return num * 10
}

const timesTwenty = (num) => {
    return timesTen(num) * 10
}

// When returning within functions we need to call the function
// Within a console.log to see the output in the console

console.log(timesTen(10))

console.log(timesTwenty(10))

// Function syntax options 

// Arrow function syntax

const squaredArrow = (number) => {
    return number * number 
}

console.log(squaredArrow(5))

// Function declaration

function squaredDeclaration (number) {
    return number * number 

}

console.log(squaredDeclaration(10))

// "Anonymous" Function 

const squaredAnon = function(number) {
    return number * number 
}

console.log(squaredAnon(3))
