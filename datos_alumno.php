<?php
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

// Obtener el ID del parámetro GET
$id = intval($_GET['id']);

// Obtener los datos del alumno desde la base de datos
$sql = "SELECT * FROM alumnos WHERE id = $id";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    echo "<h1>Detalles del Alumno</h1>";
    echo "<p>Nombre: " . htmlspecialchars($row['nombre']) . "</p>";
    echo "<p>Apellido: " . htmlspecialchars($row['apellido']) . "</p>";
    echo "<p>Cédula: " . htmlspecialchars($row['cedula']) . "</p>";
    echo "<p>Curso: " . htmlspecialchars($row['curso']) . "</p>";
    echo "<p>Turno: " . htmlspecialchars($row['turno']) . "</p>";
    echo "<p>Email: " . htmlspecialchars($row['email']) . "</p>";
    echo "<p>Teléfono: " . htmlspecialchars($row['telefono']) . "</p>";
    echo "<p>Comentario: " . htmlspecialchars($row['comentario']) . "</p>";
} else {
    echo "<p>No se encontraron detalles para el ID proporcionado.</p>";
}

$conn->close();
?>
