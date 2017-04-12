<?php
$link = 'http://cachefly.cachefly.net/1mb.test';
$start = time();
$file = file_get_contents($link);
//$size = filesize($link);
$end = time();

$time = $end - $start;
echo $time.' segundos para descargar 1mb<br>';
$size = /*$size / 102400*/1024;
$speed = round(($size / $time),2);
echo "Tu velocidad es: ".(($speed>1000)?((round(($speed/1024),2)) ." Mb/s"):($speed." KB/s"));
if($speed>2048){
	echo "<br>Pucha man, descargame una peli xD";
}
?>