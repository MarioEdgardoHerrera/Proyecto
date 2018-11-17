<!DOCTYPE html>
  <html>
    <head>
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <style>
      body{
        display: flex;
        min-height: 100vh;
        flex-direction: column;
      }
      main{
        flex:1 0 auto;
      }
      </style>

      <?php
       session_start();  //para pasar las variables de sesion entre paginas
      require_once("conexion.php");
      require_once("diseno.php");
      require_once("menu.php");
      require_once("formularios.php");
      require_once("funciones.php");
    
      ?>

    </head>
    <body>
    <nav>
      <?php
       navegacion();
      ?>
    </nav>

    <main>
    <div class="row">
        <div class="col s3">
          <!-- menu -->
        <?php
        menu_usuario();
        ?>
        </div>
        <div class="col s6">
        <!--Formulario de inicio-->
       <?php
       if(session_is_registered("usuario_valido"))
       {
        echo"Bienvenido ". $_SESSION["usuario_valido"];
       //Formulario de Agregar Contacto
       // frm_Crear_liga();
        Ver_equipos($_SESSION["id_usuario"]); 

        echo"<br><br><a href='index.php'>regresar</a>";
        echo"<p><a href='salir.php'>Salir</a>";
       }
       else
       {
       form_login();
       }
       ?>
        </div>
        
    </main>

 <?php   
pie_pagina();
?>

      <!--JavaScript at end of body for optimized loading-->
       <script type="text/javascript" src="js/materialize.min.js"></script>
      <script type="text/javascript" src="js/materialize.js"></script>
    </body>
  </html>