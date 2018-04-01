<?php
///

require_once 'CosineSimilarity.php';

function getSimilarityCoefficient( $item1, $item2 ) {
	
//	$item1 = explode( $separator, $item1 );
	//$item2 = explode( $separator, $item2 );
	$arr_intersection = array_intersect( $item1, $item2 );
	$arr_union = array_merge( $item1, $item2 );
	$coefficient = count( $arr_intersection ) / count( $arr_union );
	
	return $coefficient;
}


///



  // Masukkan informasi file ke database
  $konek = mysqli_connect("localhost","root","","dbstbi");
  
$query = "SELECT token FROM `dokumen` where nama_file='./files/UU-12-92bb.pdf'";
$result =mysqli_query($konek, $query);
$undang1 = array();
if (mysqli_num_rows($result) > 0) {
while ($row = mysqli_fetch_assoc($result)) {
	//$userID = $row{'User-ID'};
    //$books[$userID][$row{'Book-Title'}] =  $row{'Book-Rating'};
$undang1[]=$row{'token'};	
    //printf("Token: %s ", $row['token']);  
	//printf("Token: %s ", $undang1);  
}

} else {
    echo "0 results";
}

$query2 = "SELECT token  FROM `dokumen` where nama_file='./files/UU-12-92.pdf'";
$result2 =mysqli_query($konek, $query2);

if (mysqli_num_rows($result2) > 0) {
$undang2 = array();

while ($row = mysqli_fetch_assoc($result2)) {
		$undang2[]=$row{'token'};	
   	
};

} else {
    echo "0 results";
}

echo "Similaritas ==";
$hasil=getSimilarityCoefficient( $undang1, $undang2 );
echo $hasil;




 /*
 $result = mysql_query($mySelectQuery)or die("<br/><br/>".mysql_error());
$books = array();
while ($row = mysql_fetch_array($result))
{
    $userID = $row{'User-ID'};
    $books[$userID][$row{'Book-Title'}] =  $row{'Book-Rating'};
}
 
 
$cs = new CosineSimilarity();

$result1 = $cs->similarity($v1,$v2); // similarity of 1 and 2 
 


////
  
$query3 = "SELECT token as tf FROM `dokumen` where nama_file='./files/UU-12-92.pdf'";
$result3 =mysqli_query($konek, $query3);
$undang3 = array();

$panjang=mysqli_num_rows($result3);
if (mysqli_num_rows($result3) > 0) {
$undang3=mysqli_fetch_assoc($result3);	
echo "Panjang undang3==".count($undang3);
echo "Panjang undang3==".$panjang;
echo "Panjang undang3==".count($result3);
} else {
    echo "0 results";
}

///
////
/*  
$query4 = "SELECT token,count(*) as tf FROM `dokumen` where nama_file='./files/UU-12-92.pdf'' group by token";
$result4 =mysqli_query($konek, $query4);
$undang4 = array();
if (mysqli_num_rows($result4) > 0) {
$undang2=mysqli_fetch_assoc($result4);	
echo "Panjang ==".count($undang4);
} else {
    echo "0 results";
}

$cs = new CosineSimilarity();

$result1 = $cs->similarity($undang3,$undang4); // similarity of 1 and 2 
echo $result1;
*/
///


mysqli_close($konek);
?>