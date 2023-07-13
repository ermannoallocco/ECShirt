const email = document.getElementById('email');
const password = document.getElementById('password');
const nome = document.getElementById('nome');
const cognome = document.getElementById('cognome');
const indirizzo = document.getElementById('indirizzo');
const form = document.getElementById('form');
const error = document.getElementById('error');

form.addEventListener('submit', (e) => {
    let message = []

    let patternEmail = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;
    let resultEmail = patternEmail.test(email.value);

    let patternPassword = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$/;
    let resultPassword = patternPassword.test(password.value);

    let patternNome = /^[a-z ,.'-]+$/i;
    let resultNome = patternNome.test(nome.value);

    let patternCognome = /^[a-z ,.'-]+$/i;
    let resultCognome = patternCognome.test(cognome.value);
    
    let patternIndirizzo = /^[a-z,.'-]+$/i;
    let resultIndirizzo = patternIndirizzo.test(indirizzo.value);

    //CONTROLLO EMAIL
    if (/^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/.test(email.value))
    {

    }
    if (resultEmail === false && email.value.length > 0)
    {
        message.push ("Errore: l'email inserita non e' corretta, deve contenere la '@' e il '.estensione'")
    }
    if (email.value === '' || email.value == null)
    {
        message.push ("Errore: email non inserita")
    }

    //CONTROLLO PASSWORD
    if (/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$/.test(password.value))
    {

    }
    if (resultPassword === false && password.value.length > 0)
    {
        message.push ("Errore: la password inserita deve contenere almeno una lettera maiuscola, una minuscola, un numero e un carattere speciale")
    }

    if (password.value === '' || password.value == null)
    {
        message.push ("Errore: password non inserita")
    }

    if(password.value.length >=1 && password.value.length <=6)
    {
        message.push("Errore: la password inserita deve contenere piu di 6 caratteri")
    }
    if (password.value.length >= 20)
    {
        message.push("Errore: la password inserita deve contenere meno di 20 caratteri")
    }

    //CONTROLLO NOME
    if(nome.value === '' || nome.value == null){
        message.push ("Errore: nome non inserito")
    }

    if(/^[a-z ,.'-]+$/i.test(nome.value))
    {

    }
    if (resultNome === false && nome.value.length > 0)
    {
        message.push ("Errore: non puoi inserire numeri o caratteri speciali nel nome")
    }

    //CONTROLLO COGNOME
    if(cognome.value === '' || cognome.value == null){
        message.push ("Errore: cognome non inserito")
    }

    if(/^[a-z ,.'-]+$/i.test(cognome.value))
    {

    }
    if (resultCognome === false && cognome.value.length > 0)
    {
        message.push ("Errore: non puoi inserire numeri o caratteri speciali nel cognome")
    }
    
    //CONTROLLO INDIRIZZO
    if(indirizzo.value === '' || indirizzo.value == null){
        message.push ("Errore: indirizzo non inserito")
    }

    if(message.length > 0) {
        e.preventDefault()
        error.innerText = message.join('\n\n');
    }  
})