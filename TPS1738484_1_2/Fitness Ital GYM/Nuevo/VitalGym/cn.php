<?php

$conexion = mysqli_connect("localhost", "root", "","vital");
if(!$conexion){
	echo "Error al conectar a la base de datos noooo :(";
}
else{
	echo "conectado a la base de datos vital";
}