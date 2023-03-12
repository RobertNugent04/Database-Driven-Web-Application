function pname_validation(){
    'use strict';
    var pname_name = document.getElementById("phone_name");
    var pname_value = document.getElementById("phone_name").value;
    var pname_length = pname_value.length;
    if(pname_length < 1)
    {
    document.getElementById('pn_err').innerHTML = 'Phone name must not be empty';
    pname_name.focus();
    document.getElementById('pn_err').style.color = "#FF0000";
    }
    else{
        document.getElementById('pn_err').innerHTML = '';
    }
    }

function os_validation(){
    'use strict';
    var osFormat = /^[0-9]+$/;
    var os_name = document.getElementById("os_id");
    var os_value = document.getElementById("os_id").value;
    var os_length = os_value.length;
    if(!os_value.match(osFormat) || os_length === 0)
    {
    document.getElementById('os_err').innerHTML = 'Os id cannot be empty and must only contain numbers.';
    os_name.focus();
    document.getElementById('os_err').style.color = "#FF0000";
    }
    else{
        document.getElementById('os_err').innerHTML = '';
    }
    }

    function company_validation(){
        'use strict';
        var compFormat = /^[0-9]+$/;
        var comp_name = document.getElementById("company_id");
        var comp_value = document.getElementById("company_id").value;
        var comp_length = comp_value.length;
        if(!comp_value.match(compFormat) || comp_length === 0)
        {
        document.getElementById('comp_err').innerHTML = 'Company id cannot be empty and must only contain numbers.';
        comp_name.focus();
        document.getElementById('comp_err').style.color = "#FF0000";
        }
        else{
            document.getElementById('comp_err').innerHTML = '';
        }
        }

        function ram_validation(){
            'use strict';
            var ramFormat = /^[0-9]+$/;
            var ram_name = document.getElementById("ram");
            var ram_value = document.getElementById("ram").value;
            var ram_length = ram_value.length;
            if(!ram_value.match(ramFormat) || ram_length === 0)
            {
            document.getElementById('ram_err').innerHTML = 'RAM cannot be empty and must only contain numbers.';
            ram_name.focus();
            document.getElementById('ram_err').style.color = "#FF0000";
            }
            else{
                document.getElementById('ram_err').innerHTML = '';
            }
            }

            function storage_validation(){
                'use strict';
                var storageFormat = /^[0-9]+$/;
                var storage_name = document.getElementById("storage");
                var storage_value = document.getElementById("storage").value;
                var storage_length = storage_value.length;
                if(!storage_value.match(storageFormat) || storage_length === 0)
                {
                document.getElementById('storage_err').innerHTML = 'Storage cannot be empty and must only contain numbers.';
                storage_name.focus();
                document.getElementById('storage_err').style.color = "#FF0000";
                }
                else{
                    document.getElementById('storage_err').innerHTML = '';
                }
                }

                function stars_validation(){
                    'use strict';
                    var starsFormat = /^[0-9]+$/;
                    var stars_name = document.getElementById("stars");
                    var stars_value = document.getElementById("stars").value;
                    var stars_length = stars_value.length;
                    if(!stars_value.match(starsFormat) || stars_length === 0)
                    {
                    document.getElementById('stars_err').innerHTML = 'Stars cannot be empty and must only contain numbers.';
                    stars_name.focus();
                    document.getElementById('stars_err').style.color = "#FF0000";
                    }
                    else{
                        document.getElementById('stars_err').innerHTML = '';
                    }
                    }

                    function price_validation(){
                        'use strict';
                        var priceFormat = /^[0-9.]+$/;
                        var price_name = document.getElementById("price");
                        var price_value = document.getElementById("price").value;
                        var price_length = price_value.length;
                        if(!price_value.match(priceFormat) || price_length === 0)
                        {
                        document.getElementById('price_err').innerHTML = 'Invalid price format.';
                        price_name.focus();
                        document.getElementById('price_err').style.color = "#FF0000";
                        }
                        else{
                            document.getElementById('price_err').innerHTML = '';
                        }
                        }