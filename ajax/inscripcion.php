<?php 
session_start();
include_once("../class/class-conexion.php");
$conexion=new Conexion();
$conexion->establecerConexion();

switch ($_GET["accion"]) {
	case '1':
      $fecha_prueba= 
      $_SESSION["fechasS"]= strtotime("next month");
      $_SESSION["fechasV"]=date('d/m/y',$_SESSION["fechasS"]);
      echo $_SESSION["fechasV"];
		break;

    case '2':

             $respuesta= array();
            if (($_POST["txt-correo"] =="")){
              $respuesta['codigo_resultado']=0;
              $respuesta['mensaje']='No se ha ingresado un correo electronico';
              echo json_encode($respuesta);
               exit;
            }
            if (($_POST["txt-contrasena"] ==="")){
              $respuesta['codigo_resultado']=0;
              $respuesta['mensaje']='No se ha Ingresado una contraseña';
              echo json_encode($respuesta);
               exit;
            }
            if (($_POST["txt-contrasena"] != $_POST["txt-confirmar-contrasena"])){
               $respuesta['codigo_resultado']=0;
               $respuesta['mensaje']='Las contraseñas no coinciden';
               echo json_encode($respuesta);
               exit;
            }
            if (($_POST["txt-precio"] ==0)){
              $respuesta['codigo_resultado']=0;
              $respuesta['mensaje']='No haz seleccionado un plan para la suscripción';
              echo json_encode($respuesta);
               exit;
            }
            $_SESSION["correo"]=$_POST["txt-correo"];
            $_SESSION["contrasena"]=$_POST["txt-contrasena"];
            $_SESSION["precio"]=$_POST["txt-precio"];
             $respuesta['codigo_resultado']=1;
             $respuesta['mensaje']='Redireccionando';
             echo json_encode($respuesta);
      break;

      case '3':
            $respuesta= array();
           if (($_SESSION["precio"] ==1)){
              $respuesta['P']="USD7.99";
              $_SESSION['precio_membresia']=$respuesta['P'];
              $_SESSION['Nombre_membresia']="Basico";
              $_SESSION['Pantallas_membresia']="1 Pantalla";
              $respuesta['D']='Streaming ilimitado en SD por USD7.99 al mes después de la prueba gratuita.';
              $respuesta['F']=$_SESSION["fechasV"];
              $respuesta['T']=$_SESSION["precio"];
              echo json_encode($respuesta);
               exit;
            }

            if (($_SESSION["precio"] ==2)){
              $respuesta['P']="USD9.99";

              $_SESSION['precio_membresia']=$respuesta['P'];
              $_SESSION['Nombre_membresia']="Estandar";
              $_SESSION['Pantallas_membresia']="2 Pantallas";

              $respuesta['D']='Streaming ilimitado en HD por USD9.99 al mes después de la prueba gratuita.';
              $respuesta['F']=$_SESSION["fechasV"];
               $respuesta['T']=$_SESSION["precio"];
              echo json_encode($respuesta);
               exit;
            }

            if (($_SESSION["precio"] ==3)){
              $respuesta['P']="USD11.99";

              $_SESSION['precio_membresia']=$respuesta['P'];
              $_SESSION['Nombre_membresia']="Premium";
              $_SESSION['Pantallas_membresia']="4 Pantallas";

              $respuesta['D']='Streaming ilimitado en HD y Ultra HD por USD11.99 al mes después de la prueba gratuita.';
              $respuesta['F']=$_SESSION["fechasV"];
               $respuesta['T']=$_SESSION["precio"];
              echo json_encode($respuesta);
               exit;
            }
       
      break;

    case '4':
               $respuesta=array();
            if (($_POST["txt-precio"] ==0)){
              $respuesta['codigo_resultado']=0;
              $respuesta['mensaje']='No haz seleccionado un plan para la suscripción';
              echo json_encode($respuesta);
               exit;
            }
            $_SESSION["precio"]=$_POST["txt-precio"];
             $respuesta['codigo_resultado']=1;
             $respuesta['mensaje']='Redireccionando';
             echo json_encode($respuesta);

      break;
    case '5':

           $respuesta= array();
            if (($_POST["ipt-nombre"] ==="")){
              $respuesta['codigo_resultado']=0;
              $respuesta['mensaje']='No se ha ingresado el nombre del propietario de la tarjeta.';
              echo json_encode($respuesta);
               exit;
            }
            
            if (($_POST["ipt-apellido"] ==="")){
              $respuesta['codigo_resultado']=0;
              $respuesta['mensaje']='No se ha Ingresado el apellido del propietario de la tarjeta';
              echo json_encode($respuesta);
               exit;
            }

            if (($_POST["ipt-numTarjet"] ==="")){
              $respuesta['codigo_resultado']=0;
              $respuesta['mensaje']='No se ha Ingresado el número de la tarjeta';
              echo json_encode($respuesta);
               exit;
            }
            
            if (($_POST["ipt-fechaV"] ==="")){
              $respuesta['codigo_resultado']=0;
              $respuesta['mensaje']='No se ha Ingresado la fecha de vencimiento de la tarjeta';
              echo json_encode($respuesta);
               exit;
            }
            if (($_POST["ipt-codigoV"] ==="")){
              $respuesta['codigo_resultado']=0;
              $respuesta['mensaje']='No se ha Ingresado el codigo de la tarjeta';
              echo json_encode($respuesta);
               exit;
            }
            
            $_SESSION["Nombre_T"]=$_POST["ipt-nombre"];
            $_SESSION["Apellido_T"]=$_POST["ipt-apellido"];
            $_SESSION["Numero_T"]=$_POST["ipt-numTarjet"];
            $_SESSION["Fecha_T"]=$_POST["ipt-fechaV"];
            $_SESSION["Codigo_T"]=$_POST["ipt-codigoV"];
            $respuesta['codigo_resultado']=1;
             $respuesta['mensaje']=$_SESSION["Pantallas_membresia"];
             echo json_encode($respuesta);


            $conexion->ejecutarInstruccion(sprintf("INSERT INTO tbl_personas
                           (nombre_persona, apellido_persona, nombre_usuario, contrasena) 
                            values ('%s', '%s', '%s', sha1('%s'))",
                          stripslashes($_SESSION["Nombre_T"]),
                          stripslashes($_SESSION["Apellido_T"]),
                          stripslashes($_SESSION["correo"]),
                          stripslashes($_SESSION["contrasena"])
            ));

            $conexion->ejecutarInstruccion(sprintf("INSERT INTO tbl_tarjeta_credito
                           (numero_tarjeta, fecha_vencimiento, numero_seguridad) 
                           values ( sha1('%s'),'%s',sha1('%s') )",
                          stripslashes($_SESSION["Numero_T"]),
                          stripslashes($_SESSION["Fecha_T"]),
                          stripslashes($_SESSION["Codigo_T"])
            ));
            
            $conexion->ejecutarInstruccion('INSERT INTO tbl_membresia
              (nombre_membresia, pantallas_simultaneas,  precio_membresia) 
             values (\''.$_SESSION["Nombre_membresia"].'\',
                     \''.$_SESSION["Pantallas_membresia"].'\',
                     \''.$_SESSION["precio_membresia"].'\')');

      break;
}

$conexion->cerrarConexion();

  /*  
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
        */
 ?>