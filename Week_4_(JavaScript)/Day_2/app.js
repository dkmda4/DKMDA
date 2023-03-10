// Conditions in javascript 

// Weather If / Else example 

let weather = 'Foggy'

if (weather == 'Sunny') {
    console.log('Grab a pair of sunglasses!')
} else if (weather == 'Rain') {
    console.log('Bring your umbrella!')
} else {
    console.log('Unsure, maybe bring a hoodie.')
}

// Equal to - Comparison Operator - "=="

// Checks the value of a variable to see if it is equal value  

let a = '10'
console.log(a == 10)

// Equal to and equal type - Strict comparison Operator - "==="
// Checks the value and the data type are equal

console.log(a === 10)

// Comparison Operators:

// == - equal value 

// === - equal value and equal data type 

// != - Not equal to 

// !== - not equal to value or equal to data type 

// > - greater than

// < - less than 

// >= - greater than or equal to 

// <= less than or equal to 

// || - or 

// && - and 

// ! - not 

// Traffic light example using if / else statement 

let trafficLight = 'Amber'

// if (trafficLight === 'Red' || trafficLight === 'Amber') {
//     console.log('Stop!')
// }else{
//     console.log('Go!')
// }

if (trafficLight !== 'Green') {
    console.log('Stop!')
} else {
    console.log('Go!')
}

// Numbers example
// Check weather a number is between 5 and 10 

let num1 = 4

if (num1 >= 5 && num1 <= 10) {
    console.log(`${num1} is between 5 and 10.`)
} else {
    console.log(`${num1} is not between 5 and 10.`)
}

// Switch statements 
// Alternative to If / Else 
// Commonly used when checking a condition against multiple arguments 

let day = 'Tuesday'

// Takes a statement to check against and then compares statement to each case we pass it

switch (day) {
    case 'Monday':
        console.log('Weekend is over!, Happy Monday!')
        break;

    case 'Tuesday':
        console.log('Second day of the week!')
        break;

    case 'Wednesday':
        console.log('Halfway through the week!')
        break;

    case 'Thursday':
        console.log('Its almost friday!')
        break;

    case 'Friday':
        console.log('Happy Friday!')
        break;
        // If no case matches it then executes the default code 
    default:
        console.log('Its the weekend!!!')
}

// Switch statement - Grades Example

let testScore = 69

switch (true) {
    case testScore >= 70:
        console.log('Disntinction')
     break;
    case testScore >= 60:
        console.log('Merit')
     break;
        case testScore >= 50:
    console.log('Pass')
    default:
        console.log('Fail')
}

// Ternary Operator

// Shorthand conditional statement

// Condition (?) what you want to run if condition true (:) what you run if condtion false
let score = 50

score >= 50 ? console.log('You win!!!') : console.log('You lose!!!')

