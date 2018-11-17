<?php
session_start();
$result=session_unregister("usuario_valido");
session_destroy();

?>
          <script type="text/javascript">
            window.alert("Sesion Cerrada");
            document.location.href="index.php";
          </script>         

         <?php
?>