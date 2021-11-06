<!DOCTYPE html>
	
<?php


	session_start();
	
	if (isset($_POST['lomake1'])) {
		$_SESSION['Siirrettava_summa'] = $_POST['Siirrettava_summa'];
		$_SESSION['Veloitettavan_tilinumero'] = $_POST['Veloitettavan_tilinumero'];
		$_SESSION['Tilinumero_jonne_summa_siirretaan'] = $_POST['Tilinumero_jonne_summa_siirretaan'];
		
		header('Location: lomake2.php');
		
	}

?>

<html>
	<head>
		<meta charset= "utf-8" />
		<link href="/style.css" rel="stylesheet" />
		<title>Tilinsiirtolomake</title>
	</head>
	<body>
		<form method="post" action="lomake1.php">
			<table>
				<tr><td>Siirrettava_summa: </td><td><input type ="text" name="Siirrettava_summa" value=""/></td></tr>
				<tr><td>Veloitettavan_tilinumero: </td><td><input type="text" name="Veloitettavan_tilinumero" value=""/></td></tr>
				<tr><td>Tilinumero_jonne_summa_siirretaan: </td><td><input type="text" name="Tilinumero_jonne_summa_siirretaan" value=""/></td></tr>
			</table>
		</form>
	</body>
</html>