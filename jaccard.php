<?php

function getSimilarityCoefficient( $item1, $item2 ) {
	
	$item1 = explode( " ", $item1 );
$item2 = explode( " ", $item2 );
	$arr_intersection = array_intersect( $item1, $item2 );
	for ($i=0;$i<count( $arr_intersection )-1;$i++)
	{
	echo(" isi array intersect ".$arr_intersection[$i]);
	echo "<br/>\n";
	
	
	};
	$arr_union = array_merge( $item1, $item2 );
	for ($i=0;$i<count( $arr_union);$i++)
	{echo " isi array merge ".$arr_union[$i];
		echo "<br/>\n";
	};
	$coefficient = count( $arr_intersection ) / count( $arr_union );
	
	return $coefficient;
}
$item1='ini uji coba program kuliah sistem temu kembali';
$item2='ini uji coba program praktikum sistem operasi';
echo "Hasil hitung".getSimilarityCoefficient( $item1, $item2 );


?>