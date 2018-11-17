<?php
//define=constantes en php
define(HOST,"127.0.0.1");
define(USER,"root");
define(PASS, "");
define(BASE, "ligas");

function conectar()
{
	$cn=mysql_pconnect(HOST,USER,PASS,BASE);
	$db=mysql_select_db(BASE);
	return $cn;
}
function ejecutar($sql,$cn)
{
	$resultado=mysql_query($sql,$cn);
	return $resultado;
}
?>