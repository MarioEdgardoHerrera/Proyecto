<?php
function menu_usuario()
{
?>
<div class="collection">
    <a href="crear_liga.php" class="collection-item"><span class="badge"></span>Ver Liga</a>
    <a href="ver_equipos.php" class="collection-item"><span class="badge"></span>Ver Equipos</a>
    <a href="ver_jugadores.php" class="collection-item"><apan class="badge"></apan>Ver Jugadores</a>


  </div>

<?php
}
function tabla_posiciones()
{
?>
<table class="table"><th colspan="9" class="center">Tabla de Posiciones</th>

  <tr>

    <th>Equipo</th>
    <th>PJ</th>
    <th>PG</th>
    <th>PE</th>
    <th>PP</th>
    <th>GF</th>
    <th>GC</th>
    <th>DG</th>
    <th>PTS</th>

  </tr>
    <th>Barcelona</th>
    <td>1</td>
    <td>1</td>
    <td>0</td>
    <td>0</td>
    <td>2</td>
    <td>1</td>
    <td>+1</td>
    <td>3</td>

</table>
<?php
}
function Registrar_usuario()
{
?>

<div class="collection">
    <a href="Registrar_usuario.php" class="collection-item"><span class="badge"></span>Registrar</a>
</div>

<?php
}
?>