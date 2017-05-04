<?php 
include_once("../class/class-conexion.php");
$conexion=new Conexion();
$conexion->establecerConexion();

switch ($_GET["accion"]) {
	case '1':
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
    case '2':
     
      $sql=  "SELECT c.codigo_persona, c.apellido_persona, c.nombre_usuario, c.contrasena, 
      d.correo_electronico, e.hd_disponible, e.ultra_hd_disponible
      FROM tbl_personas c
      LEFT JOIN tbl_usuarios d
      ON c.codigo_persona=d.codigo_usuario
      LEFT JOIN tbl_membresia e 
      ON c.codigo_persona=e.codigo_membresia
      WHERE c.codigo_persona
      ";

      $resultado=$conexion->ejecutarInstruccion($sql);
     $usuario=$conexion->obtenerRegistro($resultado);
     
      $resultado=array();
      $resultado["usuario"]=utf8_encode($usuario["nombre_usuario"]);
      $resultado["correo"]=utf8_encode($usuario["correo_electronico"]);
      echo json_encode($resultado);      
      

      break;
      case '3':
           // $_POST["txt-passwordNueva"];
      $sql="SELECT codigo_persona, contrasena 
      FROM tbl_personas 
      WHERE codigo_persona";

      $resultado=$conexion->ejecutarInstruccion($sql);
      $usuario=$conexion->obtenerRegistro($resultado);
      $arreglo=array();
      if ($usuario["contrasena"]!=$_POST["txt-password"]) {
            $arreglo["codigo"]=0;
            $arreglo["mensaje"]="No Coinciden";
           }
     else{
                $arreglo["codigo"]=1;
                
            $sql= sprintf("UPDATE tbl_personas 
              SET contrasena='%s'  ",
               $conexion->getEnlace()->real_escape_string(stripslashes($_POST["txt-passwordNueva"]))
              
            );
            $resultado=$conexion->ejecutarInstruccion($sql);
            $arreglo["mensaje"]="Guardado";
           }
           echo json_encode($arreglo);
        


        break;
        case '4':
          $sql=sprintf("UPDATE tbl_usuarios SET correo_electronico='%s'",
          $conexion->getEnlace()->real_escape_string(stripslashes($_POST["txt-email"]))
          );
           $resultado=$conexion->ejecutarInstruccion($sql);
           echo "Guardado";
          break;
}
$conexion->cerrarConexion();
 ?>