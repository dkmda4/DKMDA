
//Preconditions: Takes two parameters, thh lowest number min and a highest number max
//Postconditions: Returns a random number from min to max.
function getRndInteger(min, max) {
    return Math.floor(Math.random() * (max - min +1) ) + min;
  }