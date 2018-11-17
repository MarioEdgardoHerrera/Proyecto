<?php
function form_login()
{
?>

 <form method="post" action="index.php">
               
                  <div class="row">
                    <div class="input-field ">
                      <i class="material-icons prefix">Usuario</i>
                      <input type="text" id="autocomplete-input" class="autocomplete" name="usuario">
                      <label for="autocomplete-input">Usuario</label>
                    </div>
                  </div>
              
                  <div class="row">
                    <div class="input-field ">
                      <i class="material-icons prefix">Clave</i>
                      <input type="text" id="autocomplete-input_2" class="autocomplete" name="clave">
                      <label for="autocomplete-input">Clave</label>
                    </div>
                  </div>

                   <div class="row">
                    <div class="input-field ">
                      <input type="submit" id="autocomplete-input_2" value="Ingresar" >
                    </div>
                  </div>
      
          
</form>


<?php
}
function frm_Registrar_usuario()
{
?>
<form method="post" action="Registrar_usuario.php">

   <div class="row">
      <div class="input-field ">
      <i class="material-icons prefix">Nombre</i>
      <input type="text" id="autocomplete-input" class="autocomplete" name="nombre">
      <label for="autocomplete-input">Nombre</label>
      </div>
    </div>

    <div class="row">
      <div class="input-field ">
      <i class="material-icons prefix">Apellido</i>
      <input type="text" id="autocomplete-input" class="autocomplete" name="apellido">
      <label for="autocomplete-input">Apellido</label>
      </div>
    </div>

    <div class="row">
      <div class="input-field ">
      <i class="material-icons prefix">Correo</i>
      <input type="text" id="autocomplete-input" class="autocomplete" name="correo">
      <label for="autocomplete-input">Correo</label>
      </div>
    </div>

    <div class="row">
      <div class="input-field ">
      <i class="material-icons prefix">Clave</i>
      <input type="text" id="autocomplete-input" class="autocomplete" name="clave">
      <label for="autocomplete-input">Clave</label>
      </div>
    </div>

    <div class="row">
                    <div class="input-field ">
                      <input type="submit" id="autocomplete-input_2" value="Ingresar" >
                    </div>
                  </div>
</form>
<?php
}
function frm_Crear_liga()
{
?>
<form method="post" action="crear_liga.php">

   <div class="row">
      <div class="input-field ">
      <i class="material-icons prefix">Nombre</i>
      <input type="text" id="autocomplete-input" class="autocomplete" name="nombre">
      <label for="autocomplete-input">Nombre</label>
      </div>
    </div>


    <div class="row">
                    <div class="input-field ">
                      <input type="submit" id="autocomplete-input_2" value="Crear" >
                    </div>
                  </div>
</form>
<?php
}
?>

