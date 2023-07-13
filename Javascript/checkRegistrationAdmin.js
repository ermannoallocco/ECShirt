//CONTROLLO ADMIN
const pin = document.getElementById('pin');
const form = document.getElementById('form');
const error = document.getElementById('error');

form.addEventListener('submit', (e) =>{
    let message = []
    
    let patternPin = /^[0-9,.'-]+$/i;
    let resultPin = patternPin.test(pin.value);
    
    if (pin.value === '' || pin.value == null){
        message = "Errore: inserire il pin"
    }
    
     if (resultPin === false && pin.value.length > 0)
    {
        message.push ("Errore: il pin deve essere composto da soli numeri")
    }
    if(message.length > 0) {
        e.preventDefault()
        error.innerText = message;
        $("#error").text(message);
    }
})