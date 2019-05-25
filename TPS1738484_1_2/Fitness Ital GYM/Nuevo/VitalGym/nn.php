<!DOCTYPE html>
<html lang="es" dir="ltr">
  <head>
    <title>VitalGym</title>   
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/n3.css">
    <link rel="shortcut icon" href="imagenes/mylogo2.png" />
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale=1.0, minimun-scale=1.0">
    
   
       <script id="banner">
            ban=new Array(4);
            ban[0]= "Imagenes/imagen6.jpg";
            ban[1]= "Imagenes/imagen2.jpg";
            ban[2]= "Imagenes/imagen3.jpg";
            ban[3]= "Imagenes/imagen4.jpg";
            var contador =0;
            var timer=1500;

            function banner(){
            contador++;
            contador=contador%4
            document.banner.src = ban[contador];
            setTimeout("banner()",timer);
        }
      </script><script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
  $('a.login-window').click(function() {
    
    // Getting the variable's value from a link 
    var loginBox = $(this).attr('href');

    //Fade in the Popup and add close button
    $(loginBox).fadeIn(300);
    
    //Set the center alignment padding + border
    var popMargTop = ($(loginBox).height() + 24) / 2; 
    var popMargLeft = ($(loginBox).width() + 24) / 2; 
    
    $(loginBox).css({ 
      'margin-top' : -popMargTop,
      'margin-left' : -popMargLeft
    });
    
    // Add the mask to body
    $('body').append('<div id="mask"></div>');
    $('#mask').fadeIn(300);
    
    return false;
  });
  
  // When clicking on the button close or the mask layer the popup closed
  $('a.close, #mask').live('click', function() { 
    $('#mask , .login-popup').fadeOut(300 , function() {
    $('#mask').remove();  
  }); 
  return false;
  });
});
</script>
<link rel="canonical" href="http://www.alessioatzeni.com/wp-content/tutorials/jquery/login-box-modal-dialog-window/index.html" />
</head>
<!------------------------------------------------------------------------ cuerpo---------------------------------------------------------------------->
      
 
<!------------------------------------------------------------------------ Barra---------------------------------------------------------------------->
    <div  meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale=1.0, minimun-scale=1.0">
                   <section class="contenedor" meta name="viewport" content="width=device-width, initial-scale=1.0">
                            <header class="encabezado" meta name="viewport" content="width=device-width, initial-scale=1.0">
                                 
                                  <div class="menu_bar">
                                     <a href="#" class="bt-menu"><span class="icon-menu"></span>Menu</a>
                                  </div>
                                <nav id="letas">
                                      <ul>
                                        <li><a href="#"><span class="icon-home3"></span>Inicio</a></li>
                                        <li><a href="Servicios.html"><span class="icon-file-text"></span>Información de clases</a></li>
                                        <li><a href="#"><span class="icon-phone"></span>Ofertas</a></li>
                                        <li><a href="#openmodal" class="icon-file-text">  Registrarse</a></li>
                                      </ul>
                              </nav>
                      </header>
                                <section>
                                      <div id="contlogo">
                                              <img id="logoi" src="imagenes/mylogo2.png">

                                      </div>
                                              <h1 class="LetraFNAV" id="letrasmov" >VitalGym Web</h1> 

                                 </section>
                  </section>

</div>


        <body onload="banner()">
                 <section class="banner" meta name="viewport" content="width=device-width, initial-scale=1.0" />
        
                  <img src="" name="banner" meta name="viewport" content="width=device-width, initial-scale=1.0" style="width:50%; height:75%; position:relative;bottom:50px;float:left; border-radius: 20px; border: 5px solid #000;">
      </section>
     
    
<div class="container">
  <div id="content">
    
    <div class="post">
      <h2>Your Login or Sign In Box</h2>
          <div class="btn-sign">
        <a href="#login-box" class="login-window">Login / Sign In</a>
          </div>
    </div>
        
        <div id="login-box" class="login-popup">
        <a href="#" class="close"><img src="close_pop.png" class="btn_close" title="Close Window" alt="Close" /></a>
          <form method="post" class="signin" action="#">
                <fieldset class="textbox">
              <label class="username">
                <span>Username or email</span>
                <input id="username" name="username" value="" type="text" autocomplete="on" placeholder="Username">
                </label>
                
                <label class="password">
                <span>Password</span>
                <input id="password" name="password" value="" type="password" placeholder="Password">
                </label>
                
                <button class="submit button" type="button">Sign in</button>
                
                <p>
                <a class="forgot" href="#">Forgot your password?</a>
                </p>
                
                </fieldset>
          </form>
    </div>
    
    </div>
</div>
<section class="section2" >
                 <h1 id="titulo">Inicia Sesión</h1>
                 <p class="parrafoses"><br><br>
                   Recuerde que sus datos son personales e intransferibles, si olvido su contraseña haga <a id="doce" href="#">click aqui</a> luego de recuperar su
                   contraseña ya podra iniciar normalmente, te recomendamos tener claves faciles de recordar. Si no tienes una cuenta registrate totalmente gratis <a id="doce" href="#openmodal">Aqui</a>. </p>
                  
                  <input id="users" type="text" placeholder="&#128272; USUARIO" name="usuario">
          <br>
          <input id="passe" type="password" placeholder="&#128273; CONTRASEÑA" name="contraseña">
                            <input onclick="location='#'" id="boton13"   type="submit" value="Iniciar Sesión">

       </section>
  <br>       <br><br><br>    <br><br><br>    <br><br><br>    <br><br><br>    <br><br><br>    <br><br><br>    <br><br><br>    <br><br><br>    <br><br><br>        
           
 
<section id="holas">
  <img src="imagenes/QS.png" id="xhao">
  <h1>Quienes somos</h1>
  <p class="parrafosis">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
  consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
  cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
  proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
  consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
  cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
  proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>
</section>

     
             
  </body>

</html>
