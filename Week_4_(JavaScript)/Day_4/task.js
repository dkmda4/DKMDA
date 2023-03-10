// Task 1

const greeting2 = (firstName, surname) => {
    return `Hello ${firstName} ${surname}, how are you today?`

}

console.log(greeting2 ('Joe', 'Bloggs'))

// Task 2

const oddEven = (number) => {
    if (number % 2 === 0) {
        return `${number} is an even number`
    } else {
        return ` ${number} is an odd number`
    }
}

console.log(oddEven (1))

// Task 3 

let accBal = 4000
let myPin = 1234

const withdraw = (withdrawAmount, pinNum) => {
    if (accBal >= withdrawAmount && pinNum === myPin) {
        return `Transaction approved. Please collect your £${withdrawAmount}.00.`
    } else if (accBal >= withdrawAmount && pinNum !== myPin) {
        return `Transaction denied: Incorrect Pin Number `
    } else {
        return `Transaction denied: Insufficient Funds.`
    }
}

console.log(withdraw (500, 1244))