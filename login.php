<?php
require_once('database.php');

// Get Phones
$queryPhones = 'SELECT * FROM phones';
$statement = $db->prepare($queryPhones);
$statement->execute();
$phones = $statement->fetchAll();
$statement->closeCursor();
?>

<!doctype html>
<html lang="en">
  <head>
  	<title>Contact Form</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/styles.css">

	<!--Bootstrap Template "Simple Login Form" from https://mdbootstrap.com/docs/standard/extended/login/-->

	</head>
	<body>
            <!-- Navigation-->
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container px-4 px-lg-5">
					<a class="navbar-brand" href="index.php">Phone Catalogue</a>
					<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
							<li class="nav-item"><a class="nav-link active" aria-current="page" href="index.php">Home</a></li>
							<li class="nav-item">
								<a class="nav-link" href="phones.php">Catalogue</a>
	
							</li>
							<li class="nav-item"><a class="nav-link" href="contact.html">Contact Us</a></li>
						</ul>
					</div>
				</div>
			</nav>

<!-- Section: Design Block -->
<section class=" text-center text-lg-start">
    <div class="card mb-3">
      <div class="row g-0 d-flex align-items-center">
        <div class="col-lg-4 d-none d-lg-flex">
          <img src="https://mdbootstrap.com/img/new/ecommerce/vertical/004.jpg" alt="Trendy Pants and Shoes"
            class="w-100 rounded-t-5 rounded-tr-lg-0 rounded-bl-lg-5" />
        </div>
        <div class="col-lg-8">
          <div class="card-body py-5 px-md-5">
  
            <form action="adminPhones.php" method="post">
              <!-- Email input -->
              <div class="form-outline mb-4">
              <span id="email_err"></span>
                <input type="email" name="email" id="email" class="form-control" onBlur="email_validation();" required/>
                <label class="form-label" for="form2Example1">Email address</label>
              </div>
  
              <!-- Password input -->
              <div class="form-outline mb-4">
              <span id="pass_err"></span>
                <input type="password" name="password" id="password" class="form-control" onBlur="password_validation();" required/>
                <label class="form-label" for="form2Example2">Password</label>
              </div>
  
              <!-- Submit button -->
              <button type="submit" class="btn btn-primary btn-block mb-4">Sign in</button>
  
            </form>
  
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- Section: Design Block -->

  <script src="js/bootstrap.min.js"></script>

	</body>
	<script src="js/loginValidation.js"></script>
</html>

