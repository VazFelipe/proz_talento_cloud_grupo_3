function esconde (el){
    document.getElementById(el).style.display = 'none';
}

function mostrar (el){
    document.getElementById(el).style.display = 'block';
}

function toggle(el){
    let display = document.getElementById(el).style.display;
    if (display == 'flex'){
        document.getElementById(el).style.display = 'block';
    }
    else{
        document.getElementById(el).style.display = 'flex';
    }
}