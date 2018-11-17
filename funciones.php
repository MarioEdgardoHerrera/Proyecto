<?php
function Ver_ligas($ID)
{

	$sql="SELECT * FROM tabla_ligas WHERE id_usuario='$ID' ORDER BY nombre_liga ASC";
	$db_conexion=conectar();
	$resultado=ejecutar($sql,$db_conexion);

	if(mysql_num_rows($resultado)>0)
	{
		$cnt=mysql_num_rows($resultado);
		//----------Crear una tabla---------------
		echo"<table class='highlight'>";
		echo"<tr><td>Ligas</td></tr>";
		
		//----------------------------------------
		for($i=0;$i<$cnt;$i++)
		{
			$fila=mysql_fetch_array($resultado);
			echo"<tr>";
			echo"<td>" . $fila["nombre_liga"] ."</td>";
			echo"<td><spam style='cursor:pointer' onclick='js_eliminarc(". $fila["nombre_liga"].")'>Eliminar</spam></td>";
			echo"</tr>";
		}

		echo"</table>";
	}
}
?>
 
<?php

function Ver_tabla_de_posiciones()
{

	$sql="SELECT * FROM tabla_de_posiciones ORDER BY puntos ASC";
	$db_conexion=conectar();
	$resultado=ejecutar($sql,$db_conexion);

	if(mysql_num_rows($resultado)>0)
	{
		$cnt=mysql_num_rows($resultado);
		//----------Crear una tabla---------------
		echo"<table class='highlight'>";
		echo"<tr><td>ID Equipo</td><td>PJ</td><td>PG</td><td>PE</td><td>PP</td><td>GF</td><td>GC</td><td>DG</td><td>Pts</td></tr>";
		
		//----------------------------------------
		for($i=0;$i<$cnt;$i++)
		{
			$fila=mysql_fetch_array($resultado);
			echo"<tr>";
			echo"<td>" . $fila["id_equipo"] ."</td>";
			echo"<td>" . $fila["partidos_jugados"] ."</td>";
			echo"<td>" . $fila["partidos_ganados"] ."</td>";
			echo"<td>" . $fila["partidos_empatados"] ."</td>";
			echo"<td>" . $fila["partidos_perdidos"] ."</td>";
			echo"<td>" . $fila["goles_a_favor"] ."</td>";
			echo"<td>" . $fila["goles_en_contra"] ."</td>";
			echo"<td>" . $fila["diferencia_de_goles"] ."</td>";
			echo"<td>" . $fila["puntos"] ."</td>";

			echo"<td><spam style='cursor:pointer' onclick='js_eliminarc(". $fila["id_equipo"]. "," . $fila["partidos_jugados"]. "," . $fila["partidos_ganados"]. "," . $fila["partidos_empatados"]. "," . $fila["partidos_perdidos"]. "," . $fila["goles_a_favor"]. "," . $fila["goles_en_contra"]. "," . $fila["diferencia_de_goles"]. "," . $fila["puntos"].")'>Eliminar</spam></td>";
			echo"</tr>";
		}

		echo"</table>";
	}
}

?>

<?php
function Ver_equipos()
{

	$sql="SELECT * FROM equipos ORDER BY nombre_equipo ASC";
	$db_conexion=conectar();
	$resultado=ejecutar($sql,$db_conexion);

	if(mysql_num_rows($resultado)>0)
	{
		$cnt=mysql_num_rows($resultado);
		//----------Crear una tabla---------------
		echo"<table class='highlight'>";
		echo"<tr><td>Equipos</td></tr>";
		
		//----------------------------------------
		for($i=0;$i<$cnt;$i++)
		{
			$fila=mysql_fetch_array($resultado);
			echo"<tr>";
			echo"<td>" . $fila["nombre_equipo"] ."</td>";
			echo"<td>" . $fila["director_tecnico"] ."</td>";
			echo"<td><spam style='cursor:pointer' onclick='js_eliminarc(". $fila["nombre_equipo"].",".$fila["director_tecnico"].")'>Eliminar</spam></td>";
			echo"</tr>";
		}

		echo"</table>";
	}
}
?>

<?php
function Ver_jugadores()
{

	$sql="SELECT * FROM jugadores ORDER BY nombre_jugador ASC";
	$db_conexion=conectar();
	$resultado=ejecutar($sql,$db_conexion);

	if(mysql_num_rows($resultado)>0)
	{
		$cnt=mysql_num_rows($resultado);
		//----------Crear una tabla---------------
		echo"<table class='highlight'>";
		echo"<tr><td>Nombre</td><td>Apellido</td><td>Edad</td><td>Goles</td></tr>";
		
		//----------------------------------------
		for($i=0;$i<$cnt;$i++)
		{
			$fila=mysql_fetch_array($resultado);
			echo"<tr>";
			echo"<td>" . $fila["nombre_jugador"] ."</td>";
			echo"<td>" . $fila["apellido_jugador"] ."</td>";
			echo"<td>" . $fila["edad"] ."</td>";
			echo"<td>" . $fila["goles"] ."</td>";
			echo"<td><spam style='cursor:pointer' onclick='js_eliminarc(". $fila["nombre_jugador"].",".$fila["apellido_jugador"].",".$fila["edad"].",".$fila["goles"].")'>Eliminar</spam></td>";
			echo"</tr>";
		}

		echo"</table>";
	}
}
?>

