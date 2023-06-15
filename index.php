<?php
require_once 'templates/config/db_connection.php';

session_start();

// get data artikel
$query = "SELECT t_artikel.*, t_admin.nama FROM t_artikel JOIN t_admin ON t_artikel.id_admin = t_admin.id_admin LIMIT 3";
$stmt = $connection->prepare($query);
$stmt->execute();
$result = $stmt->get_result();
?>

<!-- layout -->
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link rel="stylesheet" href="templates/css/style.css" />

    <!-- Bootstrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"
    ></script>

    <!-- Bootstrap Icons CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css"
      rel="stylesheet"
    />

    <!-- favicon -->
    <link
      rel="shortcut icon"
      href="https://img.icons8.com/stickers/100/module.png"
      type="image/x-icon"
    />

    <title>Mading Online JeWePe</title>
  </head>
  <body>
    <!-- header -->
    <?php
    include('templates/header.php');
    ?>

    <!-- carousel -->
    <div
      id="carouselExampleCaptions"
      class="carousel slide"
      data-bs-ride="carousel"
    >
      <div class="carousel-indicators">
        <button
          type="button"
          data-bs-target="#carouselExampleCaptions"
          data-bs-slide-to="0"
          class="active"
          aria-current="true"
          aria-label="Slide 1"
        ></button>
        <button
          type="button"
          data-bs-target="#carouselExampleCaptions"
          data-bs-slide-to="1"
          aria-label="Slide 2"
        ></button>
        <button
          type="button"
          data-bs-target="#carouselExampleCaptions"
          data-bs-slide-to="2"
          aria-label="Slide 3"
        ></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img
            src="https://images.unsplash.com/photo-1542404937-2132aa1fa6fc"
            class="d-block w-100"
            style="height: 575px"
            alt="gedung | Photo by Eric Sharp on Unsplash"
          />
          <div class="carousel-caption d-none d-md-block">
            <h3>Welcome</h3>
            <h5>Selamat Datang di Mading Online Sekolah Tinggi JeWePe!</h5>
          </div>
        </div>
        <div class="carousel-item">
          <img
            src="https://images.unsplash.com/photo-1484417894907-623942c8ee29"
            class="d-block w-100"
            style="height: 575px"
            alt="laptop | Photo by Emile Perron on Unsplash"
          />
          <div class="carousel-caption d-none d-md-block">
            <h3>Informasi Terkini</h3>
            <h5>
              Temukan informasi terkini, acara menarik, dan pengumuman penting
              di platform kami.
            </h5>
          </div>
        </div>
        <div class="carousel-item">
          <img
            src="https://images.unsplash.com/photo-1519389950473-47ba0277781c"
            class="d-block w-100"
            style="height: 575px"
            alt="college | Photo by Marvin Meyer on Unsplash"
          />
          <div class="carousel-caption d-none d-md-block">
            <h3>Berinteraksi dan Diskusikan!</h3>
            <h5>
              Berikan komentar, ajukan pertanyaan, dan dukung dalam kolaborasi
              dan diskusi yang positif.
            </h5>
          </div>
        </div>
      </div>
    </div>

    <!-- marquee -->
    <div class="bg-warning bg-gradient">
      <marquee direction="left" style="font-weight: bold"
        >!!INFO!! Jadwal Ujian Tengah Semester: 5 Juni - 17 Juni 2023</marquee
      >
    </div>

    <!-- card mading populer -->
    <div class="p-5">
      <h2>MADING POPULER</h2>
      <div class="card-group">
        <?php if ($result->num_rows > 0): ?>
        <?php foreach ($result as $row): ?>
        <div class="card">
          <img
            src="<?php echo $row['gambar']; ?>"
            class="card-img-top h-75"
            alt="..."
          />
          <div class="card-body">
            <h5 class="card-title"><?php echo $row['judul_artikel']; ?></h5>
          </div>
          <div class="card-footer text-muted">
            <!-- <small class="text-muted">Last updated 3 mins ago</small> -->
            <i class="bi bi-person-circle"></i>
            <small><?php echo $row['nama']; ?></small>
          </div>
        </div>
        <?php endforeach; ?>
        <?php else: include('templates/no_entry.php'); ?>
        <?php endif; ?>
      </div>
    </div>

    <!-- footer -->
    <?php
    include('templates/footer.php');
    ?>
  </body>
</html>
