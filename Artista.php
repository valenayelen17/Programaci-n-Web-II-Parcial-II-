<?php
$host = "localhost";
$user = "root";
$pass = "";
$db = "db";

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

if (!isset($_GET['id'])) {
    die("Artista no especificado.");
}

$id = intval($_GET['id']);

$sql = "SELECT * FROM artista WHERE id = $id";
$result = $conn->query($sql);

if ($result->num_rows == 0) {
    die("Artista no encontrado.");
}

$artista = $result->fetch_assoc();
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <title><?php echo $artista['Nombre_Artistico']; ?></title>
    <link rel="icon" href="./Spotify_icon.svg.png" type="image/png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="index.css">
</head>

<body>
 <header>
        <nav class="navbar navbar-expand-lg bg-green">
            <div class="container-fluid">
                <a class="link navbar-brand" href="#">
                    <h1>Musync</h1>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="link nav-link" aria-current="page" href="#">Home</a>
                        </li>
                    </ul>
                    <form class="d-flex" role="search">
                        <input class="form-control me-2" type="search" placeholder="Search" />
                        <button class="btn btn-outline-success" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
    </header>
    <main>
    <div class="container mt-5">
    <a href="index.php" class="btn btn-secondary mb-3 " id ="boton"> Volver</a>

    <div class="card p-4">
        <h1 class="text-center"><?php echo $artista['Nombre_Artistico']; ?></h1>

        <div class="text-center">
            <img src="<?php echo $artista['Imagen']; ?>" class="img-fluid rounded" width="300">
        </div>

        <hr>

        <h4>Descripción</h4>
        <p>
            <?php echo nl2br($artista['Descripcion']); ?>
        </p>
    </div>
    </div>
</main>
</body>
</html>
