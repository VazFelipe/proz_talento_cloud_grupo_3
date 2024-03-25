// ---------- VALIDAÇÃO USERNAME ---------- //
let usernameInput = document.getElementById("name");
let usernameLabel = document.querySelector('label[for="name"]');
let usernameHelper = document.getElementById("name-helper");

let emailInput = document.getElementById("email");
let emailLabel = document.querySelector('label[for="email"]');
let emailHelper = document.getElementById("email-helper");

let telefoneInput = document.getElementById("telefone");
let telefoneLabel = document.querySelector('label[for="telefone"]');
let telefoneHelper = document.getElementById("telefone-helper");


// Mostrar popup de campo obrigatório
usernameInput.addEventListener('focus', function(){
    usernameLabel.classList.add('required-popup')
})

emailInput.addEventListener('focus', function(){
    emailLabel.classList.add('required-popup')
})

// Ocultar popup de campo obrigatório
usernameInput.addEventListener('blur', function(){
    usernameLabel.classList.remove('required-popup')
})

emailInput.addEventListener('blur', function(){
    emailLabel.classList.remove('required-popup')
})

// Validar valor do input
usernameInput.addEventListener('change', function(evento){
    let valor = evento.target.value
    if (valor.length < 3){
        usernameInput.classList.add('error')
        usernameHelper.classList.add('visible')
        usernameInput.classList.remove('correct')
    } else {
        usernameInput.classList.remove('error')
        usernameHelper.classList.remove('visible')
        usernameInput.classList.add('correct')
    }
})

// Validar valor do email
emailInput.addEventListener('change', function(evento){
    let valor = evento.target.value
    if (valor.includes("@") && valor.includes(".com") ){
        emailInput.classList.remove('error')
        emailHelper.classList.remove('visible')
        emailInput.classList.add('correct')
    } else {
        emailInput.classList.add('error')
        emailHelper.classList.add('visible')
        emailInput.classList.remove('correct')
    }
})

// ALTERNATIVA PARA MOSTRAR REQUIRED POPUP E N PRECISAR REESCREVER CÓDIGO
function mostrarPopup(input, label){
    // Mostrar popup de campo obrigatório
    input.addEventListener('focus', function(){
        label. classList.add('required-popup')
    })
    // Ocultar popup de campo obrigatório
    input.addEventListener('blur', function(){
        label.classList.remove('required-popup')
    })
}

// Validar valor da telefone
mostrarPopup(telefoneInput, telefoneLabel)

telefoneInput.addEventListener('change', function(evento){
    let valor = evento.target.value
    if (valor.length < 11 ){
        telefoneInput.classList.add('error')
        telefoneHelper.classList.add('visible')
        telefoneInput.classList.remove('correct')
    } else {
        telefoneInput.classList.remove('error')
        telefoneHelper.classList.remove('visible')
        telefoneInput.classList.add('correct')
    }
})
