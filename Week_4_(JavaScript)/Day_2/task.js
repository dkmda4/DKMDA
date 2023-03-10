// Tasks:

// 1: ID Check

let customerAge = '17' 

if (customerAge < 18 ) {
    console.log('Sorry you arent old enough.')
} else {
    console.log('What would you like to drink?')
}

// 2: Password Check

let password = '1234567'

if (password.length < 8) {
    console.log('Your password is too short.')
} else {
    console.log(password)
}

// 3: Check if number is divisible by 3 or 5

let number1 = 11

if (number1 % 3 == 0 || number1 % 5 === 0) {
    console.log(`${number1} is divisible by 3 and/or 5.`)
} else {
    console.log(`${number1} is NOT divisible by 3 or 5.`)
}

// 4: Fizz Buzz 

let number = 15 

if (number % 3 === 0 && number % 5 === 0) {
    console.log(`FIZZ BUZZ`)
} else if (number % 3 === 0) {
    console.log(`Fizz`)
} else if (number % 5 === 0) {
    console.log(`Buzz`)
} else {
    console.log(`${number}`)
}