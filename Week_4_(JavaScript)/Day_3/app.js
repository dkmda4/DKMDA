let coffeeOrder = [
    'James - Americano',
    'Hannah - Frappuccino', 
    'Alex - Latte'
]

console.log(coffeeOrder)

console.log(coffeeOrder[1])

coffeeOrder[1] = 'Hannah - Tea'

console.log(coffeeOrder)

console.log(coffeeOrder.length)

// Array Methods

coffeeOrder.push('Christian - Water')

console.log(coffeeOrder)

coffeeOrder.pop()
console.log(coffeeOrder)

// Loops 

let colours = [

    'Blue',
    'Green',
    'Red',
    'Yellow',
    'Orange',
    'Black'
]

console.log(colours)

// console.log(colours[0])
// console.log(colours[1])
// console.log(colours[2])
// console.log(colours[3])
// console.log(colours[4])
// console.log(colours[5])

// For Loop

for (let i = 0; i < colours.length; i++) {
    console.log(colours[i])
}

// Multiples of two - For loop

// Decalre an empty array

let multipleTwo = []

for (let i = 1; i < 21; i++) {
    if (i % 2 === 0) {
        multipleTwo.push(i)
    }
}
console.log(multipleTwo)

// While loop

// Runs continously whilst the specified condition is true 

let number = 1 

while (number < 11 ) {
    console.log(number)
    number++
}

// DO while loop

// Checks the condition after the code has run
// Therefore will always run at least once 

let x = 5
let y = 0

do {
    x = x + y
    console.log(x)
    y++
} while (y < 10)

// While loop example 2 

let cards = ['diamond', 'Spade', 'Club', 'Heart']
let currentCard = 'Club'

while (currentCard != 'Spade') {
    console.log(currentCard)
    currentCard = cards [Math.floor (Math.random () * 4)]
}

console.log(currentCard)

