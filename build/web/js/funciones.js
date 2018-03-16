/* Funciones AJAX que nos permitirá validar y comprobar distintos elementos en las bases de datos */
function validarEmailDB() 
{
    var xhr;

    if (window.XMLHttpRequest) {
        xhr = new XMLHttpRequest();
    } else if (window.ActiveXObject) {
        xhr = new ActiveXObject("Microsoft.XMLHTTP");
    }

    var email = document.getElementById("email").value;
    var url = "/ProyectoDAW/Usuarios/verificarEmail?email=" + email;

    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    var formato = re.test(String(email).toLowerCase());
    xhr.onreadystatechange = function ()
    {
        if ((xhr.readyState === 4) && (xhr.status === 200)) {
            if (formato)
            {
                document.getElementById("email").setAttribute("style",
                        style = "background-image:url('../images/" + xhr.responseText + ".png'); background-repeat:no-repeat; background-position:90%; background-size: 8%;");
            } else
            {
                document.getElementById("email").setAttribute("style", "");
            }
        }
    };
    xhr.open("GET", url, true);
    xhr.send();
}
function comprobarEmailDB() 
{
    var xhr;

    if (window.XMLHttpRequest) {
        xhr = new XMLHttpRequest();
    } else if (window.ActiveXObject) {
        xhr = new ActiveXObject("Microsoft.XMLHTTP");
    }

    var email = document.getElementById("email").value;
    var url = "/ProyectoDAW/Usuarios/comprobarEmail?email=" + email;

    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    var formato = re.test(String(email).toLowerCase());
    xhr.onreadystatechange = function ()
    {
        if ((xhr.readyState === 4) && (xhr.status === 200)) {
            if (formato)
            {
                document.getElementById("email").setAttribute("style",
                        style = "background-image:url('../images/" + xhr.responseText + ".png'); background-repeat:no-repeat; background-position:90%; background-size: 8%;");
            } else
            {
                document.getElementById("email").setAttribute("style", "");
            }
        }
    };
    xhr.open("GET", url, true);
    xhr.send();
}

function comprobarPasswordDB() 
{
    var xhr;

    if (window.XMLHttpRequest) {
        xhr = new XMLHttpRequest();
    } else if (window.ActiveXObject) {
        xhr = new ActiveXObject("Microsoft.XMLHTTP");
    }
    
    var password = document.getElementById("oldPassword").value;
    var url = "/ProyectoDAW/Usuarios/comprobarPassword?pwd=" + password;

    xhr.onreadystatechange = function ()
    {
        if ((xhr.readyState === 4) && (xhr.status === 200)) {
            if(document.getElementById("oldPassword").value !== "") {
                document.getElementById("oldPassword").setAttribute("style",
                style = "background-image:url('../images/" + xhr.responseText + ".png'); background-repeat:no-repeat; background-position:90%; background-size: 8%;");
            } else {
                document.getElementById("oldPassword").setAttribute("style", "");
            }
        }
    };
    xhr.open("GET", url, true);
    xhr.send();
}

/* Funciones para validar los campos de los formularios */
function validarFiltro(form){
    var ok = true;
    var msg = "Error: ";
    var precio = document.getElementById("resultadoPrecio");
    var codigoPostal = document.getElementById("cp");
    
    return ok;
}
                                
function validarForm(form) 
{
    var ok = true;
    var msg = "Error: ";
    var email = document.getElementById("email");
    var password = document.getElementById("password");
    var password2 = document.getElementById("password2");
    var name = document.getElementById("name");
    var zipcode = document.getElementById("zipcode");
    var phone = document.getElementyById("phone");
    if (email.value.equals("") || password.value.equals("") || password2.value.equals("")
            || name.value.equals("") || zipcode.value.equals("") || phone.value.equals(""))
    {
        msg = msg + "Todos los campos son obligatorios.";
        ok = false;
    }

    if (!password.value.equals(password2.value))
    {
        msg = msg + "Las contraseñas no coinciden.";
        ok = false;
    }

    if (!ok) alert(msg);

    return ok;
}

function validarForm2(form) 
{
    var ok = true;
    var msg = "Error: ";
    var email = document.getElementById("email");
    if (email.value.equals(""))
    {
        msg = msg + "Todos los campos son obligatorios.";
        ok = false;
    }

    if (!ok) alert(msg);

    return ok;
}

function validarForm3(form) 
{
    var ok = true;
    var msg = "Error: ";
    var email = document.getElementById("email").value;
    var pwd = document.getElementById("oldPassword").value;
    var pwd2 = document.getElementById("newPassword").value;
    if (pwd.equals("") || pwd2.equals(""))
    {
        msg = msg + "Todos los campos son obligatorios.";
        ok = false;
    }

    if (pwd.equals(pwd2))
    {
        msg = msg + "Las contraseñas no pueden ser iguales.";
        ok = false;
    }
    
    if (!ok) alert(msg);

    return ok;
}

/* Funcion para Slider en el formulario de Filtro de búsqueda de Artículos */
var slider = document.getElementById("rangoPrecios");
var output = document.getElementById("resultadoPrecio");
output.innerHTML = slider.value;

slider.oninput = function() {
    output.innerHTML = this.value;
};




