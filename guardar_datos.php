<?php
header('Content-Type: application/json');

// Datos de conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "asistencia";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Obtener datos del formulario
$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$cedula = $_POST['cedula'];
$curso = $_POST['curso'];
$turno = $_POST['turno'];
$email = $_POST['email'];
$telefono = $_POST['telefono'];
$comentario = $_POST['comentario'];

// Insertar los datos en la base de datos
$sql = "INSERT INTO alumnos (nombre, apellido, cedula, curso, turno, email, telefono, comentario)
        VALUES ('$nombre', '$apellido', '$cedula', '$curso', '$turno', '$email', '$telefono', '$comentario')";

if ($conn->query($sql) === TRUE) {
    $id = $conn->insert_id; // Obtener el ID del nuevo registro
    echo json_encode(['id' => $id]);
} else {
    echo json_encode(['error' => $conn->error]);
}

$conn->close();
?>
