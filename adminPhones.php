<?php
require_once('database.php');

// Define an array with company names to use as options for the radio buttons
$companies = array("Apple", "Samsung", "Google");

$queryPhones = "SELECT * FROM phones";

if(isset($_GET['company'])) {
    $selectedCompany = $_GET['company'];
    $queryPhones = "SELECT * FROM phones p JOIN companies c ON p.companyID = c.companyID WHERE c.companyName = '$selectedCompany'";
}else if (isset($_GET['operating_system']) && $_GET['operating_system'] != 'Show All') {
    $selectedSystem = $_GET['operating_system'];
    $queryPhones = "SELECT * FROM phones p JOIN operating_systems o ON p.osID = o.osID WHERE o.operating_system = '$selectedSystem'";
}
 else {
    $queryPhones = "SELECT * FROM phones";
}

$statement = $db->prepare($queryPhones);
$statement->execute();
$phones = $statement->fetchAll();
$statement->closeCursor();

// Get Companies
$queryCompanies = 'SELECT * FROM companies';
$statement = $db->prepare($queryCompanies);
$statement->execute();
$companies = $statement->fetchAll();
$statement->closeCursor();

// Get Operating Systems
$querySystems = 'SELECT * FROM operating_systems';
$statement = $db->prepare($querySystems);
$statement->execute();
$operating_systems = $statement->fetchAll();
$statement->closeCursor();
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Homepage - Start Bootstrap Template</title>
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
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="adminIndex.php">Home</a></li>
                        <li class="nav-item">
                            <a class="nav-link" href="adminPhones.php">Catalogue</a>

                        </li>
                    </ul>
                    <a class="btn btn-primary" href="phones.php">Log Out</a>
                </div>
            </div>
        </nav>

        <div class="container py-3">
  <div class="row">
    <div class="col-md-1">
      <!-- Filter by Operating System -->
      <form class="mb-4">
        <div class="mt-5 d-flex flex-wrap">
        <label class="mb-3 me-3">
        <a class="btn btn-secondary my-lg-3" href="addPhone.html">Add Phone</a>
            <input type="submit" name="operating_system" class="btn btn-secondary" value="Show All" <?php if (!isset($_GET['operating_system']) || $_GET['operating_system'] === 'Show All') { echo 'checked'; } ?>>
          </label>
          <label for="operating_system" class="me-3"><h4>OS:</h4></label>
          <div class="d-flex flex-wrap">
            <?php for ($i = 0; $i < count($operating_systems); $i++) { ?>
              <div class="mt-2 me-3">
                <label>
                  <input type="submit" name="operating_system" class="btn btn-secondary" value="<?php echo $operating_systems[$i]['operating_system']; ?>" <?php if (isset($_GET['operating_system']) && $_GET['operating_system'] === $operating_systems[$i]['operating_system']) { echo 'checked'; } ?>>
                </label>
              </div>
            <?php } ?>
          </div>
        </div>
      </form>
      <!-- Filter by company -->
      <form>
        <div class="mb-3 d-flex flex-wrap">
          <label for="company" class="me-3"><h4>Companies:</h4></label>
          <div class="d-flex flex-wrap">
            <?php for ($i = 0; $i < count($companies); $i++) { ?>
              <div class="mt-2 me-3">
                <label>
                  <input type="submit" name="company" class="btn btn-secondary" value="<?php echo $companies[$i]['companyName']; ?>" <?php if (isset($_GET['company']) && $_GET['company'] === $companies[$i]['companyName']) { echo 'checked'; } ?>>
                </label>
              </div>
            <?php } ?>
          </div>
        </div>
      </form>
    </div>
    <div class="col-md-11">
    <!-- Product grid-->
    <section class="py-5">
        <div class="container px-4 px-lg-5 mt-1">
            <div class="row gx-4 gx-lg-5 row-cols-1 row-cols-md-3 row-cols-xl-4 justify-content-center">
                <?php foreach($phones as $phone) { ?>
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Price badge-->
                        <div class="badge bg-success text-white position-absolute" style="top: 0.5rem; right: 0.5rem">€<?php echo $phone['price']; ?></div>
                        <!-- Product image-->
                        <img class="card-img-top" src="<?php echo $phone['images']; ?>" style="object-fit: cover; height: 300px;" />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name-->
                                <h5 class="fw-bolder"><?php echo $phone['phoneName']; ?></h5>
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
    <div class="d-flex flex-column align-items-center">
        <a href="adminProduct.php?id=<?php echo $phone['phoneID']; ?>" class="btn btn-outline-dark mt-auto">View</a>
        <form action="delete_product.php" method="post">
            <input type="hidden" name="phone_id" value="<?php echo $phone['phoneID']; ?>">
            <input class="btn btn-outline-dark mt-3" type="submit" value="Delete">
        </form>
    </div>
</div>                   
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </section>
                </div>
                </div>
                </div>
    <!-- Footer-->
    <footer class="py-5 bg-dark">
        <div class="container px-4 px-lg-5">
            <div class="row align-items-center justify-content-center">
                <div class="col-lg-4 text-lg-start">
                    <p class="text-muted small mb-4 mb-lg-0">&copy; Top Phone Catalogue 2023</p>
                </div>
                <div class="col-lg-4 text-lg-end">
                    <a class="link-light me-4" href="#!">Privacy Policy</a>
                    <a class="link-light" href="#!">Terms of Use</a>
                </div>
            </div>
        </div>
    </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
</body>
</html>
