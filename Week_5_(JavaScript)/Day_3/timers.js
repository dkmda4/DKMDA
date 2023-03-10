const timeout = setTimeout(timer, 10000);
//Preconditions: takes one parameter a trigger 
//Postconditions: alerts the user if the timer has stopped or if their answer (trigger) is wrong 
function timerStop(trigger){

    if(trigger == document.getElementById("answer").value){
        clearTimeout(timeout);
        alert("Timer Stopped!");
    }
    else
    {
        alert("Wrong answer")
    };

};
function timer(){
    alert("Times Up!");
};

function myTimer() {
    const d = new Date();
    document.getElementById("demo").innerHTML = d.toLocaleTimeString();
  }
  