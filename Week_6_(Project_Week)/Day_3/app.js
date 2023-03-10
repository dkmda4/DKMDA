// getElementbyID()

const title = document.getElementById('title')
console.log(title)


// getElementByClass()

const listItems = document.getElementsByClassName('listItems')
console.log(listItems)


// getElementByTagName()

const liElements = document.getElementsByTagName('li')
console.log(liElements)

// querySelector()
// querySelector will grab the first element that matches the selector

const para = document.querySelector('p')
console.log(para)


// querySelectorAll()

const paragraphs = document.querySelectorAll('p')
console.log(paragraphs)

// Styling an element with JS

title.style.color = "red"


// Style multiple elements with a loop

for (let i = 0; i < listItems.length; i++) {
    listItems[i].style.color = "blue"
}

// Creating an Element in JS via the DOM

// Storing our 'ul' element in a constant by querying the DOM
const ul = document.querySelector('ul')
console.log(ul)

// Creating a new 'li' element

const newListItem = document.createElement('li')
console.log(newListItem)

// Add the new 'li' to the 'ul'

ul.append(newListItem)

// Add text to the list item 

newListItem.textContent = "*New* Item Five"

// Add an attribute to an element 

newListItem.setAttribute('id', 'item5')

// Remove an attribute from an element 

newListItem.removeAttribute('id')

// Add a class list to an element 

newListItem.classList.add('listItems')

// Remove a class from an element 
newListItem.classList.remove('listItems')
newListItem.removeAttribute('class')

// Remove an element from the DOM 

newListItem.remove()
