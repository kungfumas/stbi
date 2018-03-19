<?php

include_once 'IDNstemmer.php';
?>
<!DOCTYPE html>
<html>
<head>
	<title>STEMMING</title>
</head>
<body>
<h3>PENCARIAN KATA DASAR</h3>
<form method="post" action="">
<input type="text" name="kata" id="kata" size="20" value="<?php if(isset($_POST['kata'])){ echo $_POST['kata']; }else{ echo '';}?>">
<input class="btnForm" type="submit" name="submit" value="Submit"/>
</form>
<?php
if(isset($_POST['kata'])){
	$teksAsli = $_POST['kata'];
	echo "Teks asli : ".$teksAsli.'<br/>';
	$st = new IDNstemmer();
	$hasil=$st->doStemming($teksAsli);
	echo "Kata dasar : ".$hasil.'<br/>';
}
?>
</body>
</html>