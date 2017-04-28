<?php 
include_once("../class/class-conexion.php");
$conexion=new Conexion();
$conexion->establecerConexion();

switch ($_GET["accion"]) {
	case '1':
	  
	  // $password=$_POST["inputPassword"];
	  $verificar=array();
	  
      $sql= sprintf("SELECT a.codigo_usuario, a.correo_electronico, b.contrasena
      FROM tbl_usuarios a
      LEFT JOIN tbl_personas b
      ON a.codigo_usuario=b.codigo_persona        
      ");
     
        $resultado=$conexion->ejecutarInstruccion($sql);
        
       
        while($linea=$conexion->obtenerRegistro($resultado)){
        	if ($linea["correo_electronico"]!= $_POST["inputEmail"] || $linea["contrasena"]!=$_POST["inputPassword"]) {
        		
        		$verificar["codigo_resultado"]=0;
        	     $verificar["mensaje"]="Usuario o Contraseña incorrecto";	
        		}
            
             

        	
        	else{
        		 $verificar["codigo_resultado"]=1;
 	
        	}

        	
        }
       
        echo json_encode($verificar);
		break;
      
       
	


}

$conexion->cerrarConexion();
 ?>