// ---------- VALIDAÇÃO USERNAME ---------- //
let usernameInput = document.getElementById("username");
let usernameLabel = document.querySelector('label[for="username"]');
let usernameHelper = document.getElementById("username-helper");

// Mostrar popup de campo obrigatório
usernameInput.addEventListener('focus',function(){
    usernameLabel.classList.add('required-popup')
})

// Ocultar popup de campo obrigatório
usernameInput.addEventListener('blur', function(){
    usernameLabel.classList.remove('required-popup')
})

// Validar valor do input
usernameInput.addEventListener('change', function(evento){
    let valor = evento.target.value

    if(valor.length < 4){
        console.log('Username curto')
        usernameInput.classList.add('error')
        usernameHelper.classList.add('visible')
        usernameInput.classList.remove('correct')
        
    } else {
        console.log('Username válido')
        usernameInput.classList.remove('error')
        usernameHelper.classList.remove('visible')
        usernameInput.classList.add('correct')
    }
})


// ---------- VALIDAÇÃO EMAIL ---------- //
let emailInput = document.getElementById('email')
let emailLabel = document.querySelector('label[for="email"]')
let emailHelper = document.getElementById('email-helper')

emailInput.addEventListener('change', function(evento){
    let valor = evento.target.value

    if(valor.includes('@') && valor.includes('.com')){
        emailInput.classList.remove('error')
        emailHelper.classList.remove('visible')
        emailInput.classList.add('correct')
    
    } else {
        emailInput.classList.add('error')
        emailHelper.classList.add('visible')
        emailInput.classList.remove('correct')
    }

})


// FUNÇÃO PARA MOSTRAR / OCULTAR CAMPO OBRIGATÓRIO

function mostrarPopup(input, label){
    // Mostrar popup de campo obrigatório
    input.addEventListener('focus', function(){
        label.classList.add('required-popup')
    })

    // Ocultar popup de campo obrigatório
    input.addEventListener('blur', function(){
        label.classList.remove('required-popup')
    })
}

mostrarPopup(usernameInput,usernameLabel)
mostrarPopup(emailInput,emailLabel)