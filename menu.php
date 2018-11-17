<?php
function menu_usuario()
{
?>
<div class="collection">
    <a href="crear_liga.php" class="collection-item"><span class="badge"></span>Crear Liga</a>
    <a href="#!" class="collection-item"><span class="badge"></span>Agregar Equipos</a>
    <a href="#!" class="collection-item"><apan class="badge"></apan>Agregar Jugadores</a>
    <a href="#!" class="collection-item"><span class="badge"></span>Suspender Equipo</a>
    <a href="#!" class="collection-item"><span class="badge"></span>Suspender Jugador</a>

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