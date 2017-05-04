<?php 
session_start(); 
	if(!isset($_SESSION['codigo_usuario']))
		echo "1";
	else echo "0";
?>