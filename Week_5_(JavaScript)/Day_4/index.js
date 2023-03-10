

  function generateRandomNumber () {
    const min = document.getElementById(min).value;
    const max = document.getElementById(max).value;

    const randomNumber = Math.floor(Math.random() * (max-min) + 1)

    document.getElementById("result").innerHTML = randomNumber;
  }