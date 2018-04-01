<?php
require_once 'CosineSimilarity.php';

$undang1 = array();
$indeks="undang";
$undang1[$indeks] =2;
$indeks="presiden";
$undang1[$indeks] =3;

$indeks="jokowi";
$undang1[$indeks] =4;

$undang2 = array();
$indeks2="undang";
$undang2[$indeks2] =4;

$indeks2="presiden";
$undang2[$indeks2] =5;
$indeks2="jokowi";
$undang2[$indeks2] =2;
$cs = new CosineSimilarity();

$result1 = $cs->similarity($undang1,$undang2); // similarity of 1 and 2 
echo "similaritas".$result1;

?>