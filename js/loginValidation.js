//user id validation starts
function email_validation(){
    'use strict';
    var email_name = document.getElementById("email");
    var email_value = document.getElementById("email").value;
    if(email_value !== "admin@gmail.com")
    {
    document.getElementById('email_err').innerHTML = 'Invalid email address!';
    email_name.focus();
    document.getElementById('email_err').style.color = "#FF0000";
    }
    else{
        document.getElementById('email_err').innerHTML = '';
    }
    }

    function password_validation(){
        'use strict';
        var pass_name = document.getElementById("password");
        var pass_value = document.getElementById("password").value;
        if(pass_value !== "admin123")
        {
        document.getElementById('pass_err').innerHTML = 'Invalid password!';
        pass_name.focus();
        document.getElementById('pass_err').style.color = "#FF0000";
        }
        else{
            document.getElementById('pass_err').innerHTML = '';
        }
        }

    