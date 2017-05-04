<?php
if (isset($_FILES["file"]))
{
    $file = $_FILES["file"];
    $nombre = $file["name"];
    $tipo = $file["type"];
    $ruta_provisional = $file["tmp_name"];
    $size = $file["size"];
    $dimensiones = getimagesize($ruta_provisional);
    $width = $dimensiones[0];
    $height = $dimensiones[1];
    $carpeta = "img/img/";
    
    if ($tipo != 'image/jpg' && $tipo != 'image/jpeg' && $tipo != 'image/png' && $tipo != 'image/gif'){
      echo "Error, el archivo no es una imagen";
       }
    else if($width < 60 || $height < 60){
        echo "Error la anchura y la altura mínima permitida es 60px";
    }
    else {
        $src = $carpeta.$nombre;
        move_uploaded_file($ruta_provisional, $src);
    }
}else{
    echo "Nuhay archivo";
}