<?php
require_once '../templates/config/db_connection.php';

session_start();

// get data artikel
$query = "SELECT a.*, COUNT(k.id_komentar) AS jumlah_komentar, admin.nama FROM t_artikel AS a LEFT JOIN t_komentar AS k ON a.id_artikel = k.id_artikel INNER JOIN t_admin AS admin ON a.id_admin = admin.id_admin GROUP BY a.id_artikel ORDER BY jumlah_komentar DESC LIMIT 3";
$stmt = $connection->prepare($query);
$stmt->execute();
$result = $stmt->get_result();

// if ($result->num_rows > 0) {
//     // delete data
//     echo "<script>alert('DATA BERHASIL DIHAPUS')</script>";
//     $query = "DELETE FROM t_artikel WHERE id_artikel=?";
//     $stmt = $connection->prepare($query);
//     $stmt->bind_param("i", $id_artikel);
//     $stmt->execute();
//     header("Location: ../dashboard.php");
// } else {
//     echo "<script>alert('GAGAL MENGHAPUS DATA')</script>";
// }

?>

<!-- layout -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="../templates/css/style.css" />

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

    <title>Mading Online JeWePe | Artikel</title>
</head>
<body style="background-color: #fffee6">
    <!-- header -->
    <?php
    include('../templates/header.php');
    ?>

    <!-- content -->
    <div class="container mb-5">
      <!-- judul -->
      <div class="row">
        <div class="col-12 text-center mb-5">
          <h2 class="poppins">ARTIKEL</h2>
        </div>
      </div>

      <div class="row mb-5">
        <?php if ($result->num_rows > 0): ?>
        <?php foreach ($result as $row): ?>

        <div class="col-4 mb-4">
          <a href="detail.php?id_artikel=<?php echo $row['id_artikel']; ?>" class="text-decoration-none text-dark">
            <div class="card" style="height: 550px;">
              <img
                src="<?php echo $row['gambar']; ?>"
                class="card-img-top h-75"
              />
              <div class="card-body">
                <h5 class="card-title"><?php echo $row['judul_artikel']; ?></h5>
                <p class="card-text">
                <?php
                $data = $row['isi_artikel'];
                $plaintext = strip_tags($data);
                $end_sentence = strpos($plaintext, '.');
                $end_sentence = ($end_sentence !== false) ? $end_sentence : strlen($plaintext);
                $first_sentence = substr($plaintext, 0, $end_sentence + 1);
                echo $first_sentence;
                ?>
                </p>
              </div>
              <div class="card-footer text-muted d-flex justify-content-between align-items-center">
                <div>
                  <i class="bi bi-person-circle"></i>
                  <small><?php echo $row['nama']; ?></small>
                </div>
                <div>
                  <i class="bi bi-chat-right"></i>
                  <small><?php echo $row['jumlah_komentar']; ?></small>
                </div>
              </div>
            </div>
          </a>
        </div>

        <?php endforeach; ?>
        <?php else: include('templates/no_entry.php'); ?>
        <?php endif; ?>

      </div>
    </div>

    <!-- footer -->
    <?php
    include('../templates/footer.php');
    ?>
</body>
</html>