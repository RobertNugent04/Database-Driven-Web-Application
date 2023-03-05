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

    function username_validation(){
    'use strict';
    var username_name = document.getElementById("username");
    var username_value = document.getElementById("username").value;
    var username_length = username_value.length;
    var letters = /^[0-9a-zA-Z]+$/;
    if(username_length < 4 || !username_value.match(letters))
    {
    document.getElementById('name_err').innerHTML = 'Username must be 4 chracters long and alphanuric chracters only.';
    username_name.focus();
    document.getElementById('name_err').style.color = "#FF0000";
    }
    else
    {
    document.getElementById('name_err').innerHTML = 'Valid username';
    document.getElementById('name_err').style.color = "#00AF33";
    }
    }
    //user name validation ends
    //country validation starts
    function country_validation(){
    'use strict';
    var country_name = document.getElementById("country");
    var country_value = document.getElementById("country").value;
    if(country_value === "Default" || country_value === "--")
    {
    document.getElementById('country_err').innerHTML = 'You must select a country';
    country_name.focus();
    document.getElementById('country_err').style.color = "#FF0000";
    }
    else
    {
    document.getElementById('country_err').innerHTML = 'Country selected.';
    document.getElementById('country_err').style.color = "#00AF33";
    }
    }
    //country validation ends
    //zip validation starts
    function zip_validation(){
    'use strict';
    var numbers = /^[0-9]+$/;
    var zip_name = document.getElementById("zip");
    var zip_value = document.getElementById("zip").value;
    var zip_length = zip_value.length;
    if(!zip_value.match(numbers) || zip_length !== 5)
    {
    document.getElementById('zip_err').innerHTML = 'You must enter a ZIP code, which must be numeric and must be at least 5 chracters long.';
    zip_name.focus();
    document.getElementById('zip_err').style.color = "#FF0000";
    }
    else
    {
    document.getElementById('zip_err').innerHTML = 'ZIP code entered';
    document.getElementById('zip_err').style.color = "#00AF33";
    }
    }
    //zip validation ends
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

    //gender validation starts
    function gender_validation(){
    'use strict';
    if ( (document.getElementById("msex").checked === false) && (document.getElementById("fsex").checked === false)){
    document.getElementById('gender_err').innerHTML = 'Please slect a geneder.';
    document.getElementById('gender_err').style.color = "#FF0000";
    document.getElementById("msex").checked = true;
    }
    else
    {
    document.getElementById('gender_err').innerHTML = 'Gender selected';
    document.getElementById('gender_err').style.color = "#00AF33";
    }
    }
    //gender validation ends

    function check_validation() {
        'use strict';
      
        // Call all the validation functions
        fname_validation();
        lname_validation();
        username_validation();
        country_validation();
        zip_validation();
        email_validation();
        phone_validation();
        message_validation();
      
        // Check if any of the error message elements have content
        var errorMessages = document.querySelectorAll('.error');
        for (var i = 0; i < errorMessages.length; i++) {
          if (errorMessages[i].textContent !== '') {
            // At least one field is invalid, so return false
            return false;
          }
        }
      
        // All fields are valid, so return true
        return true;
      }
      
      // Add a submit event listener to the form
      var form = document.querySelector('form');
      form.addEventListener('submit', function(e) {
        // Prevent the form from submitting if validation fails
        if (!check_validation()) {
          e.preventDefault();
        }
      });
      