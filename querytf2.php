
<?php
////
function hitungsim($query) {
	//ambil jumlah total dokumen yang telah diindex (tbindex atau tbvektor), n
$host='localhost';
$user='root';
$pass='';
$database='dbstbi';

//echo "hitung sim";

$conn=mysql_connect($host,$user,$pass);
mysql_select_db($database);

	$resn = mysql_query("SELECT Count(*) as n FROM tbvektor");
	$rown = mysql_fetch_array($resn);	
	$n = $rown['n'];
	//echo "hasil tbvektor";
	
	print_r($resn);
	
	//terapkan preprocessing terhadap $query
	$aquery = explode(" ", $query);
	
	//hitung panjang vektor query
	$panjangQuery = 0;
	$aBobotQuery = array();
	
	for ($i=0; $i<count($aquery); $i++) {
		//hitung bobot untuk term ke-i pada query, log(n/N);
		//hitung jumlah dokumen yang mengandung term tersebut
		$resNTerm = mysql_query("SELECT Count(*) as N from tbindex WHERE Term like '%$aquery[$i]%'");
//		echo "query >SELECT Count(*) as N from tbindex WHERE Term like '%$aquery[$i]%'";
		$rowNTerm = mysql_fetch_array($resNTerm);	
		$NTerm = $rowNTerm['N'] ;
		
		$idf = log($n/$NTerm);
		
		//simpan di array		
		$aBobotQuery[] = $idf;
		
		$panjangQuery = $panjangQuery + $idf * $idf;		
	}
	
	$panjangQuery = sqrt($panjangQuery);
	
	$jumlahmirip = 0;
	
	//ambil setiap term dari DocId, bandingkan dengan Query
	$resDocId = mysql_query("SELECT * FROM tbvektor ORDER BY DocId");
	while ($rowDocId = mysql_fetch_array($resDocId)) {
	
		$dotproduct = 0;
			
		$docId = $rowDocId['DocId'];
		$panjangDocId = $rowDocId['Panjang'];
		
		$resTerm = mysql_query("SELECT * FROM tbindex WHERE DocId = '$docId'");
	//	echo "query ->SELECT * FROM tbindex WHERE DocId = '$docId'".'<br>';
		
		
		while ($rowTerm = mysql_fetch_array($resTerm)) {
			for ($i=0; $i<count($aquery); $i++) {
				//jika term sama
				//echo "1-->".$rowTerm['Term'];
			//	echo "2-->".	$aquery[$i].'<br>';
				
				if ($rowTerm['Term'] == $aquery[$i]) {
					$dotproduct = $dotproduct + $rowTerm['Bobot'] * $aBobotQuery[$i];		
		//			echo "hasil =".$dotproduct.'<br>';
			//		echo "1-->".$rowTerm['Term'];
			//	echo "2-->".	$aquery[$i].'<br>';
					
				} //end if
					else
					{
					}
			} //end for $i		
		} //end while ($rowTerm)
		
		if ($dotproduct != 0) {
			$sim = $dotproduct / ($panjangQuery * $panjangDocId);	
			//echo "insert >>INSERT INTO tbcache (Query, DocId, Value) VALUES ('$query', '$docId', $sim)";
			//simpan kemiripan > 0  ke dalam tbcache
			$resInsertCache = mysql_query("INSERT INTO tbcache (Query, DocId, Value) VALUES ('$query', '$docId', $sim)");
			$jumlahmirip++;
		} 
			
	if ($jumlahmirip == 0) {
		$resInsertCache = mysql_query("INSERT INTO tbcache (Query, DocId, Value) VALUES ('$query', 0, 0)");
	}	
	} //end while $rowDocId
	
		
} //end hitungSim()





////
$host='localhost';
$user='root';
$pass='';
$database='dbstbi';
$keyword=$_POST[keyword];;
$conn=mysql_connect($host,$user,$pass);
mysql_select_db($database);
$resCache = mysql_query("SELECT *  FROM tbcache WHERE Query = '$keyword' ORDER BY Value DESC");
	$num_rows = mysql_num_rows($resCache);
	if ($num_rows >0) {

		//tampilkan semua berita yang telah terurut
		while ($rowCache = mysql_fetch_array($resCache)) {
			$docId = $rowCache['DocId'];
			$sim = $rowCache['Value'];
					
				//ambil berita dari tabel tbberita, tampilkan
				//echo ">>>SELECT nama_file,deskripsi FROM upload WHERE nama_file = '$docId'";
				$resBerita = mysql_query("SELECT nama_file,deskripsi FROM upload WHERE nama_file = '$docId'");
				$rowBerita = mysql_fetch_array($resBerita);
					
				$judul = $rowBerita['nama_file'];
				$berita = $rowBerita['deskripsi'];
					
				print($docId . ". (" . $sim . ") <font color=blue><b><a href=" . $judul . "> </b></font><br />");
				print($berita . "<hr /></a>"); 		
			
		}//end while (rowCache = mysql_fetch_array($resCache))
	}
		else
		{
		hitungsim($keyword);
		//pasti telah ada dalam tbcache		
		$resCache = mysql_query("SELECT *  FROM tbcache WHERE Query = '$keyword' ORDER BY Value DESC");
		$num_rows = mysql_num_rows($resCache);
		
		while ($rowCache = mysql_fetch_array($resCache)) {
			$docId = $rowCache['DocId'];
			$sim = $rowCache['Value'];
					
				//ambil berita dari tabel tbberita, tampilkan
				$resBerita = mysql_query("SELECT nama_file,deskripsi FROM upload WHERE nama_file = '$docId'");
				$rowBerita = mysql_fetch_array($resBerita);
					
				$judul = $rowBerita['nama_file'];
				$berita = $rowBerita['deskripsi'];
					
				print($docId . ". (" . $sim . ") <font color=blue><b><a href=" . $judul . "> </b></font><br />");
				print($berita . "<hr /></a>");
		
		} //end while
		}

?>