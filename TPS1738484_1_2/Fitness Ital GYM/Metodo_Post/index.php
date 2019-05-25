<?php 
	echo "<h1>Metodos Post</h1>";
	echo "<hr>";
	/*---------------------------------------*/
	/*Punto 1*/
	/*---------------------------------------*/

	/*Formulario*/
	echo "<form method=post>";
	echo "<h1>Datos de la Pelicula</h1>";
	echo "<label>Nombre de la Pelicula: </label>";
	echo "<input type=text name=nombre>";
	echo "<br>";
	echo "<br>";
	echo "<label>Genero: </label>";
		echo "<select name=generos>";
		echo "<option>Accion</option>";
		echo "<option>Terror</option>";
		echo "<option>Comedia</option>";
		echo "<option>Drama</option>";
		echo "<option>Otros</option>";
	echo "</select>";
	echo "<br>";
	echo "<br>";
	echo "<label>Año de Estreno: </label>";
	echo "<input type=text name=año_salida maxlength='4'>";
	echo "<br>";
	echo "<br>";
	echo "<label>Duracion del Film: </label>";
	echo "<input type=text name=duracion maxlength='3'>";
	echo "<br>";
	echo "<br>";
	echo "<label>Caratula: </label>";
	echo "<input type=file name=cara placeholder=Carga tu Archivo>";
	echo "<br>";
	echo "<br>";
	echo "<input type=submit>";
	echo "<hr>";

	/*Validacion Pelicula*/
	$nom=$_POST["nombre"];	
	$gen=$_POST["generos"];
	$año=$_POST["año_salida"];
	$dur=$_POST["duracion"];
	$car=$_POST["cara"];

	echo "<br>";
	echo("Nombre de la Pelicula: $nom");
	echo "<br>";
	echo "<br>";
	echo("Genero: $gen");
	echo "<br>";
	echo "<br>";
	echo("Año de Estreno: $año");
	echo "<br>";
	echo "<br>";
	echo("Duracion del Film: $dur");
	echo "<br>";
	echo "<br>";
	echo("Caratula: $car");
	echo "<hr>";
	/*---------------------------------------*/
	/*Punto 2*/
	/*---------------------------------------*/

	/*Formulario*/
	echo "<form method=post>";
	echo "<h1>Compras</h1>";
	echo "<label>Valor de Compra: </label><input type=text name=compra_1>";
	echo "<br>";
	echo "<br>";
	echo "<label>Valor de Compra: </label><input type=text name=compra_2>";	
	echo "<br>";
	echo "<br>";
	echo "<label>Valor de Compra: </label><input type=text name=compra_3>";
	echo "<br>";
	echo "<br>";
	echo "<input type=submit>";

	/*Validacion Compras*/
	$pro1=$_POST["compra_1"];
	$pro2=$_POST["compra_2"];
	$pro3=$_POST["compra_3"];
	$total=$pro1+$pro2+$pro3;
	$iva=$total*0.16;
	$precio=$total+$iva;
	echo "<br>";
	echo "<br>";
	echo "El precio de la compra con el iva% es: $precio";
	echo "<hr>";
	/*---------------------------------------*/
	/*Punto 3*/
	/*---------------------------------------*/
	echo "<form method=post>";
	echo "<h1>datos personales</h1>";
	echo "<label>Nombres: </label>";
	echo "<input type=text name=nombres>";
	echo "<br>";
	echo "<br>";
	echo "<label>Apellidos: </label>";
	echo "<input type=text name=apellidos>";
	echo "<br>";
	echo "<br>";
	echo "<label>Numero de Documento: </label>";
	echo "<input type=text name=documento>";
	echo "<br>";
	echo "<br>";
	echo "<label>Carrera Universitaria: </label>";
	echo "<input type=text name=carrera>";
	echo "<br>";
	echo "<br>";
	echo "<label>Semestre: </label>";
	echo "<input type=text name=semestre maxlength='2'>";
	echo "<br>";
	echo "<br>";
	echo "<input type=submit>";
echo "<hr>";
	/*Validacion*/
	$nomm=$_POST["nombres"];
	$ape=$_POST["apellidos"];
	$doc=$_POST["documento"];
	$car=$_POST["carrera"];
	$sem=$_POST["semestre"];

	echo "<br>";
	echo("nombres: $nomm");
	echo "<br>";
	echo "<br>";
	echo("epellidos: $ape");
	echo "<br>";
	echo "<br>";
	echo("documento: $doc");
	echo "<br>";
	echo "<br>";
	echo("carrera: $car");
	echo "<br>";
	echo "<br>";
	echo("semestre: $sem");
	echo "<hr>";
	print("se registro correctamente");
	echo "<hr>";
	/*---------------------------------------*/
	/*Punto 4*/
	/*---------------------------------------*/


	echo "<form method=post>";
	echo "<h1>notas</h1>";
	echo "<label>parcial1: </label>";
	echo "<input type=text name=parc1>";
	echo "<br>";
	echo "<br>";
	echo "<label>parcial2: </label>";
	echo "<input type=text name=parc2>";
	echo "<br>";
	echo "<br>";
	echo "<label>parcial3: </label>";
	echo "<input type=text name=parc3>";
	echo "<br>";
	echo "<br>";
	echo "<label>examen final: </label>";
	echo "<input type=text name=final>";
	echo "<br>";
	echo "<br>";
	echo "<label>trabajo final: </label>";
	echo "<input type=text name=traba >";
	echo "<br>";
	echo "<br>";
	echo "<input type=submit>";
	/*Validacion*/
	$par1=$_POST["parc1"];
	$par2=$_POST["parc2"];
	$par3=$_POST["parc3"];
	$examen=$_POST["final"];
	$trab=$_POST["traba"];
	$promedio_parciales=($par1+$par2+$par3)/3;
	$parciall=$promedio_parciales*0.35;
	$trabb=$trab*0.30;
	$examenn=$examen*0.35;
	$totalll=$parciall+$trabb+$examenn; 
	echo "<br>";
	echo "<br>";
	if ($totalll>=30) {
		echo "aprobo";
	}else {
		echo "no aprobo";
	}
	echo "<br>";
	echo "<br>";
	echo "su nota es: $totalll";
	echo "<hr>";


 ?>