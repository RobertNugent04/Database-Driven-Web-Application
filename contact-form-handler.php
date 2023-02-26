<?php

$errors = '';
$myemail = 'd00244618@student.dkit.ie';// <-----Put your DkIT email address here.
if(empty($_POST['fname'])  ||
   empty($_POST['lname'])  ||
   empty($_POST['email']) ||
   empty($_POST['phone']) ||
   empty($_POST['subject']) ||
   empty($_POST['message']))
{
    $errors .= "\n Error: all fields are required";
}

// Important: Create email headers to avoid spam folder
$headers .= 'From: '.$myemail."\r\n".
    'Reply-To: '.$myemail."\r\n" .
    'X-Mailer: PHP/' . phpversion();


$fname = $_POST['fname'];
$lname = $_POST['lname'];
$email_address = $_POST['email'];
$message = $_POST['message'];
$phone = $_POST['phone'];
$subject = $_POST['subject'];

if (!preg_match(
"/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$/i",
$email_address))
{
    $errors .= "\n Error: Invalid email address";
}

if( empty($errors))
{
        $to = $myemail;
        $email_subject = "Contact form submission: $name";
        $email_body = "You have received a new message. ".
        " Here are the details:\n First Name: $fname \n Last Name: $lname \n Email: $email_address \n Phone: $phone \n Subject: $subject \n Message \n $message";

        mail($to,$email_subject,$email_body,$headers);
        //redirect to the 'thank you' page
        header('Location: contact-form-thank-you.html');
}
?>
<!DOCTYPE HTML>
<html>
<head>
        <title>Contact form handler</title>
</head>

<body>
<!-- This page is displayed only if there is some error -->
<?php
echo nl2br($errors);
?>
</body>
</html>