<?php 
session_start();
include_once("../class/class-conexion.php");
$conexion=new Conexion();
$conexion->establecerConexion();

switch ($_GET["accion"]) {
	case '1':
	  $verificar=array();
      $resultado = $conexion->ejecutarInstruccion(
          sprintf("SELECT tbl_personas.codigo_persona, tbl_personas.contrasena, tbl_personas.nombre_persona, tbl_usuarios.correo_electronico, tbl_usuarios.codigo_usuario
          FROM tbl_personas
          LEFT JOIN tbl_usuarios ON tbl_personas.codigo_persona = tbl_usuarios.codigo_usuario  
          WHERE tbl_usuarios.correo_electronico = '%s'
          AND ctbl_personas.contrasena = '%s'",
          stripslashes($_POST["inputEmail"]),
          stripslashes($_POST["inputPassword"])
        ));
      //sha1('%s')"
      $respuesta = array();
     
      if($conexion->cantidadRegistros($resultado) >0){
          $fila = $conexion->obtenerFila($resultado);
          $respuesta["codigo_resultado"] = 1;
          $respuesta["resultado"] = "Usuario Existe";
          $respuesta["codigo_usuario"] = $fila["codigo_usuario"];
          $respuesta["nombre_usuario"] = $fila["nombre_usuario"];
         // $respuesta["codigo_tipo_usuario"] = $fila["codigo_tipo_usuario"];
        }
        else {
          $respuesta["codigo_resultado"] = 0;
          $respuesta["resultado"] = "Usuario no Existe";
        }
        $_SESSION["codigo_usuario"] = $respuesta["codigo_usuario"];
        $_SESSION["nombre_usuario"] = $respuesta["nombre_usuario"];
        $_SESSION["codigo_tipo_usuario"] = $respuesta["codigo_tipo_usuario"];
        echo json_encode($respuesta);
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
               
                
            $sql= sprintf("UPDATE tbl_personas 
              SET contrasena='%s'  ",
               $conexion->getEnlace()->real_escape_string(stripslashes($_POST["txt-passwordNueva"]))
              
            );
            $resultado=$conexion->ejecutarInstruccion($sql);
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