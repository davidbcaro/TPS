<?php

include 'cn.php';

$Nombre=$_POST['Nombre'];
$Apellido=$_POST['Apellido'];
$Correo=$_POST['Correo'];
$Nacimieto=$_POST['Fecha'];
$Contraseña=$_POST['Contraseña'];


$insertar = "INSERT INTO usuario(Nombres, Apellidos, Correo, Nacimiento, Contraseña) VALUES ('$Nombre','$Apellido','$Correo','$Nacimieto','$Contraseña')";
$resultado = mysqli_query($conexion, $insertar);
if (!$resultado) {
	print( "<br>error hpta vida");
}
else{
	echo "exitooo";
}
mysqli_close($conexion);