
<!DOCTYPE html>
<html>
<head>
	<title>Aleatorios</title>
	<style type="text/css">
*{ font-family:consolas; text-align: center;}
body{background-color: #4962D3}
h1{font-family: consolas;font-size: 50px;text-align:center;font-family: consolas;}
p{font-family: consolas;font-size:20px ;text-align: justify; text-align: center;}
div{border:1px solid white; background-color: #171E3D;width: 40%;margin-right: auto;
margin-left: auto;}
form{text-align: center; margin-right: auto;
margin-left: auto;}
input[type=submit]{ background:#6ca16e; width:80%;
    padding:5px 15px; 
    background:#ccc; 
    cursor:pointer;
	font-size:16px;
}
input[type=submit]:hover{
	background-color: black;color: white;
}
#hola{
	color: white;
}
#mole{
	width: 15%;height: 15%;float: left;position: relative;bottom: 300px;
	left: 70px;
}
#fab{
	width: 15%;height: 15%;float: left;position: relative;left: 70px;top: 100px;	
}
#black{
	width: 15%;height: 15%;float: right;position: relative;top: 100px;right: 70px;
}
#io{
	width: 15%;height: 15%;float: right;position: relative;bottom: 300px;right: 70px;
</style>
</head>
<body>
	<img id="black" src="negro.png">
	<img id="fab" src="fabiana.png">

	
	
	<h1>Numeros Aleatorios</h1>
	<div>
	<p>Ahora numeros aleatorios para el almuerzo xd <br>para meterlo y sacarlo del microondas :u ,<br>los numeros van del 1 al 10 buena suerte ;)</p>

	
		<form method="post">
			<p>Fabiana un Numero: </p>
			<input type="" placeholder="Segura?" name="fabiana">
			<p>Johan un Numero: </p>
			<input type="" placeholder="mole" name="johan">
			<p>Nelson un Numero: </p>
			<input type="" placeholder="Negro" name="nelson">
			<p>¿Listos?<br>
			Ahora Recelo!!</P>
			<input type="submit" name="enviar" value="Suerte!">
	</form>
	<hr>
	
	<?php
	$Segura=$_POST	 ["fabiana"];
	$romero=$_POST	 ["johan"];
	$merlano=$_POST	 ["nelson"];

	print ("numero fabiana: $Segura");
	echo "<br>";
	print ("numero johan: $romero");
	echo "<br>";
	print ("numero nelson: $merlano");
	echo "<br>";
	
	$d=rand(1,10);
 
  echo "El numero es: ",$d ;



if ($d==$Segura) {
	print("<h1 id=hola>Fabiana mala suerte<br>:(</h1> ");
}
elseif ($d==$romero)
 {
	print("<h1 id=hola>Mole mala suerte<br>:(</h1>");
}
elseif ($d==$merlano){
	print("<h1 id=hola>Negro mala suerte<br>:(</h1>");
}
else
{
	print("<h1 id=hola>Intentelo otra vez<br>:(</h1>");
}


	?>
</div>
<img id="mole" src="mole.png">
<img id="io" src="io.png">
</body>
</html>

