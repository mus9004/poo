<?php
if (isset($_FILES["fileV"]))
{
    $file = $_FILES["fileV"];
    $nombre = $file["name"];
    $tipo = $file["type"];
    $ruta_provisional = $file["tmp_name"];
    $size = $file["size"];
    $dimensiones = getimagesize($ruta_provisional);
    $width = $dimensiones[0];
    $height = $dimensiones[1];
    $carpeta = "videos/";
  
    if ($tipo != 'video/mov' && $tipo != 'video/avi' && $tipo != 'video/mpeg' && $tipo != 'video/wmv' && $tipo != 'video/flv' && $tipo != 'video/mp4' && $tipo != 'video/3gp'){
      echo "Error, el archivo no es video";
       }
    else {
        $video = $carpeta.$nombre;
        move_uploaded_file($ruta_provisional, $video);
    }
}else{
    echo "No hay archivo";
}