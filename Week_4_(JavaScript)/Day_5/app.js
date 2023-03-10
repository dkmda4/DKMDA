// Objects 

// properties - data contained within the object 
// methods - things that the object can do
// objects aew constructed of key: value pairs 
// key - descriptor to what the property is 
// value - is the data contained in the property

// object example

const coffeeShop = {
    name: 'Costa',
    branchNumber: 250, 
    specialOffers: true,
    drinksMenu: [
        'Americano',
        'Latte',
        'Tea'
    ]
}

console.log(coffeeShop.name)

// Bracket Notation 

console.log(coffeeShop['branchNumber'])

// Combination of dot and bracket notation 

console.log(coffeeShop.drinksMenu [1])

// Add a new property to the object 

coffeeShop.muffins = ['Blueberry','Chocolate']

console.log(coffeeShop)

// Change / Update a property 

coffeeShop.branchNumber = 100

console.log(coffeeShop)

coffeeShop.breakfastOffer = 'Free bagel with any coffee.'

coffeeShop.lunchOffer = 'Freee coffee with any sandwich.'

let offer = 'No offer'
let time = 1200 

if (time < 1100) {
    offer = coffeeShop.breakfastOffer
    console.log(offer)
} else if (time < 1500) {
    offer = coffeeShop.lunchOffer
    console.log(offer)
}

// Methods 

coffeeShop.open = () => {
    return 'We are open come on in!'
}

coffeeShop.close = () => {
    return 'Sorry we are closed!'
}

console.log(coffeeShop.open())
console.log(coffeeShop.close())

// Alarm clocks 

const alarm = {
    weekendAlarm: 'Sleep in its the weekend!',
    weekdayAlarm: 'Get up at 7:00am',
    checkAlarm (day) {
        if (day === 'Saturday' || day === 'Sunday') {
            return this.weekendAlarm
        } else {
            return this.weekdayAlarm
        }
    }

}

console.log(alarm.checkAlarm('Monday'))

// Hoisting 

// If you call an arrow function it must always be called 

// Arrow function syntax 

const squaredArrow = (number) => {
    return number * number 
}

// function declaration 

// With a function expression the function can be called before declaration 

console.log(squaredDeclaration (5))

function squaredDeclaration (number) {
    return number * number 
}
