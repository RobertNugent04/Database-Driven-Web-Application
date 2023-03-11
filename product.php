<?php
require_once('database.php');

// Get the phone ID from the URL parameter
if (!isset($_GET['id'])) {
    header("Location: index.php");
    exit;
}
$phoneID = $_GET['id'];

// Query the database for the phone details
$query = "SELECT * FROM phones p JOIN companies c ON p.companyID = c.companyID JOIN operating_systems o ON p.osID = o.osID WHERE phoneID = :phoneID";
$statement = $db->prepare($query);
$statement->bindValue(':phoneID', $phoneID);
$statement->execute();
$phone = $statement->fetch();
$statement->closeCursor();

// If the phone wasn't found in the database, redirect to the index page
if (!$phone) {
    header("Location: phones.php");
    exit;
}

// Get products
$queryPhones = 'SELECT * FROM phones';
$statement = $db->prepare($queryPhones);
$statement->execute();
$phones = $statement->fetchAll();
$statement->closeCursor();

//Get the companyID of the selected phone
$companyQuery = "SELECT companyID FROM phones WHERE phoneID = :phoneID";
$statement = $db->prepare($companyQuery);
$statement->bindValue(':phoneID', $phoneID);
$statement->execute();
$company = $statement->fetch();
$statement->closeCursor();

$selectedCompany = $company['companyID'];

//Get all the phones with the same company id but a different phone id
$relatedPhonesQuery = "SELECT * FROM phones WHERE companyID = :companyID AND phoneID != :phoneID";
$statement = $db->prepare($relatedPhonesQuery);
$statement->bindValue(':companyID', $selectedCompany);
$statement->bindValue(':phoneID', $phoneID);
$statement->execute();
$related = $statement->fetchAll();
$statement->closeCursor();
?>

<!DOCTYPE html>
<html>
<head>
    <title><?php echo $phone['phoneName']; ?></title>
    <!-- Include any CSS or JS files that are needed for this page -->

            <!-- Favicon-->
            <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />

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
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="phones.php">All Products</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                                <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                            </ul>
                        </li>
                        <li class="nav-item"><a class="nav-link" href="contact.html">Contact Us</a></li>
                    </ul>
                </div>
            </div>
        </nav>

                <!-- Product section-->
                <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="<?php echo $phone['images']; ?>" alt="..." /></div>
                    <div class="col-md-6">
                        <h1 class="display-5 fw-bolder"><?php echo $phone['phoneName']; ?></h1>
                        <div class="fs-5 mb-5">
                            <span>€<?php echo $phone['price']; ?></span>
                        </div>

                        <!-- Grid for phone details -->

                        <div class="row">
  <div class="col">
    <div class="fs-3 mb-5">
      <h2>OS: </h2><span><?php echo $phone['operating_system']; ?></span>      
      <br>
      <br>
      <h2>Storage: </h2><span><?php echo $phone['storage']; ?>GB</span>         
    </div>
  </div>
  <div class="col">
    <div class="fs-3 mb-5">
    <h2>RAM: </h2><span><?php echo $phone['RAM']; ?>GB</span>      
      <br>
      <br>
      <h2>Stars: </h2><span><?php echo $phone['stars']; ?></span>                             
    </div>
  </div>
</div>
</div>
                </div>
            </div>
        </section>
           <!-- Related items section-->
           <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4">Related products</h2>
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

                <?php 
                
                //Get length to be used in the for loop
                $length = count($related);
                if($length > 4){
                    $length = 4;
                }
                
                for ($i = 0; $i < $length; $i++) { ?>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product Price-->
                        <div class="badge bg-success text-white position-absolute" style="top: 0.5rem; right: 0.5rem">€<?php echo $related[$i]['price']; ?></div>
                            <!-- Product image-->
                            <img class="card-img-top" src="<?php echo $related[$i]['images']; ?>" style="object-fit: cover; height: 275px;"/>
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder"><?php echo $related[$i]['phoneName']; ?></h5>
                                </div>
                            </div>
                            <!-- Product actions
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a href="product.php?id=<?php echo $phone['phoneID']; ?>" class="btn btn-outline-dark mt-auto">View</a></div>
                            </div> -->
                        </div>
                    </div>
                    <?php } ?>
</section>

   <!-- <p>Operating System: <?php echo $phone['operating_system']; ?></p> -->
    <!-- Include any additional information about the phone that you want to display -->
            <!-- Footer-->
            <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
</body>
</html>
