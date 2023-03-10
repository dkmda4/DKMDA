document.addEventListener('keydown', function(event) {
    if(event.code == 'numpad3') {
        alert('numpad3 was pressed');
    }
    else if (event.code == 'ArrowRigh') {
        alert('Right was pressed');
        document.getElementById("circ").style.fill = "blue";
    }
});

document.addEventListener('')