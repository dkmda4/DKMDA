
//Preconditions: Takes three parameters, an element ID, type of event, and a function 
//Postconditions: Adds an event listener to the element, of the type provided, and assigns the function.
//Example: addEventByID(document.getElementById("submit"), "click", foo);
function addEventByID(element, eventType, aFunction){

    element.addEventListener(eventType, aFunction); 
       
};
