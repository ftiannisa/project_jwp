<?php
$homeUrl = '/project_jwp/index.php';
$logoUrl = $homeUrl;
$btnUrl = '/project_jwp/login.php';
$btnText = 'LOGIN';
$btnClass = "btn btn-outline-primary";

$activePage = basename($_SERVER['PHP_SELF']);
if ($activePage === 'dashboard.php') {
  $homeUrl = 'dashboard.php';
}

if (isset($_SESSION['name'])) {
  $logoUrl = '/project_jwp/dashboard.php';
  $btnUrl = 'logout.php';
  $btnText = 'LOGOUT';
  $btnClass = "btn btn-danger";
}
?>

<!-- layout -->
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="templates/css/style.css" />

    <!-- google font -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />

    <title>Document</title>
  </head>
  <body>
    <header>
      <nav
        class="navbar navbar-light autohide"
        style="background-color: #fffee6"
      >
        <div class="container-fluid">
          <!-- school logo -->
          <a
            class="navbar-brand d-flex align-items-center"
            href="<?php echo $logoUrl; ?>"
          >
            <img
              src="https://img.icons8.com/stickers/100/module.png"
              alt=""
              width="50"
              height="50"
              class="d-inline-block align-text-top"
            />
            <span class="ms-2 logo-text">Sekolah Tinggi JeWePe</span>
          </a>

          <ul class="nav justify-content-end">
            <li class="nav-item">
              <a
                class="nav-link active"
                aria-current="page"
                href="<?php echo $homeUrl; ?>"
                >HOME</a
              >
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/project_jwp/profil.php">PROFIL</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/project_jwp/artikel">ARTIKEL</a>
            </li>
            <li class="nav-item">
              <a href="" class="nav-link"></a>
            </li>
            <li class="nav-item">
              <a href="<?php echo $btnUrl; ?>">
                <button type="button" class="<?php echo $btnClass; ?>">
                  <?php echo $btnText; ?>
                </button>
              </a>
            </li>
          </ul>
        </div>
      </nav>
    </header>
  </body>
</html>
