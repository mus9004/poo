<?php 
include_once("../class/class-conexion.php");
$conexion=new Conexion();
$conexion->establecerConexion();

switch ($_GET["accion"]) {
	case '1':
        $resultado=$conexion->ejecutarInstruccion("SELECT 
        	a.codigo_persona,
        	a.contraseña,
		    b.correo_electronico
		FROM tbl_personas a
		INNER JOIN tbl_usuarios b
		 WHERE b.correo_electronico=".$_POST["inputEmail"]);
        

     //  while ($fila=$conexion->obtenerRegistro($resultado)) {
     //  	echo"ANA";
     // // echo "contraseña=".$_POST["inputPassword"];
     //  }

        

		break;
	
	default:
		
		break;
}



 ?>