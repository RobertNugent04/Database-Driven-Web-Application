//user id validation starts
function fname_validation(){
    'use strict';
    var fname_name = document.getElementById("fname");
    var fname_value = document.getElementById("fname").value;
    var fname_length = fname_value.length;
    if(fname_length < 1)
    {
    document.getElementById('fn_err').innerHTML = 'First name must not be empty';
    fname_name.focus();
    document.getElementById('fn_err').style.color = "#FF0000";
    }
    else{
        document.getElementById('fn_err').innerHTML = '';
    }
    }

    function lname_validation(){
        'use strict';
        var lname_name = document.getElementById("lname");
        var lname_value = document.getElementById("lname").value;
        var lname_length = lname_value.length;
        if(lname_length < 1)
        {
        document.getElementById('ln_err').innerHTML = 'Last name must not be empty';
        lname_name.focus();
        document.getElementById('ln_err').style.color = "#FF0000";
        }
        else{
            document.getElementById('ln_err').innerHTML = '';
        }
        }


    //email validation starts
    function email_validation(){
    'use strict';
    var mailformat = /^\w+([\.\-]?\w+)*@\w+([\.\-]?\w+)*(\.\w{2,3})+$/;
    var email_name = document.getElementById("email");
    var email_value = document.getElementById("email").value;
    var email_length = email_value.length;
    if(!email_value.match(mailformat) || email_length === 0)
    {
    document.getElementById('email_err').innerHTML = 'This is not a valid email format.';
    email_name.focus();
    document.getElementById('email_err').style.color = "#FF0000";
    }
    else{
        document.getElementById('email_err').innerHTML = '';
    }
    }
    //email validation ends

    function phone_validation(){
        'use strict';
        var phoneformat = /^08\d{1}[- ]?\d{2,3}[- ]?\d{4}$/;
        var phone_name = document.getElementById("phone");
        var phone_value = document.getElementById("phone").value;
        var phone_length = phone_value.length;
        if(!phone_value.match(phoneformat) || phone_length === 0)
        {
        document.getElementById('phone_err').innerHTML = 'This is not a valid phone format.';
        phone_name.focus();
        document.getElementById('phone_err').style.color = "#FF0000";
        }
        else{
            document.getElementById('phone_err').innerHTML = '';
        }
        }

        function message_validation(){
            'use strict';
            var msg_name = document.getElementById("message");
            var msg_value = document.getElementById("message").value;
            var msg_length = msg_value.length;
            if(msg_length === 0)
            {
            document.getElementById('msg_err').innerHTML = 'Message must not be empty';
            msg_name.focus();
            document.getElementById('msg_err').style.color = "#FF0000";
            }
            else if(msg_length > 160){

                document.getElementById('msg_err').innerHTML = 'Message must be less than 160 characters';
                msg_name.focus();
                document.getElementById('msg_err').style.color = "#FF0000";

            }
            else{
                document.getElementById('msg_err').innerHTML = '';
            }
            }
      