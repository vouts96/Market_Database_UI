<!DOCTYPE HTML>
<html>
<title>Vaseis2020</title>
<body>
<style>
body{
	background-color:CadetBlue;
	height: 100%;
	overflow: hidden;
}

p{
	background-color: tomato;
	color: white;
	text-align:center;
	padding: 15px 25px;
	font-size:30px;
	border:1px solid black;
	width:97.3%;
	text-decoration: none;
	display: inline-block;
}

a:link, a:visited {
	background-color: tomato;
	color: white;
	padding: 15px 25px;
	text-decoration: none;
	display: inline-block;
}

a:hover, a:active {
  background-color: rgba(255, 99, 71, 0.82);
}
</style>

<h1 style="text-align:center;font-size:50px">
	<a href="main_page.html"> <img src="cart.png" alt="Shopping Cart" width="60" height="60">  Market Database UI</a>
</h1>

<h2 style="text-align:center;font-size:30px">
	<a href="data_manipulation.html">Back to Data Manipulation</a>
</h2>
<p>
<?php

		$servername = "localhost";
		$username = "root";
		$password = "admin";
		$dbname = "vaseis2020";

		// Create connection
		$conn = new mysqli($servername, $username, $password, $dbname);
		// Check connection
		if ($conn->connect_error) {
		  die("Connection failed: " . $conn->connect_error);
		}

		$Store_id = mysqli_real_escape_string($conn, $_REQUEST['store_id']);
		$Phone = mysqli_real_escape_string($conn, $_REQUEST['phone']);
		$Operating_hours = mysqli_real_escape_string($conn, $_REQUEST['hours']);
		$Size = mysqli_real_escape_string($conn, $_REQUEST['size']);
		$City = mysqli_real_escape_string($conn, $_REQUEST['city']);
		$Address = mysqli_real_escape_string($conn, $_REQUEST['address']);
		$Postal_code = mysqli_real_escape_string($conn, $_REQUEST['postal']);

		$sql = "UPDATE stores SET Store_id='$Store_id', Phone='$Phone', Operating_hours='$Operating_hours', Size='$Size', City='$City', Address='$Address', Postal_code='$Postal_code' WHERE Store_id='".$Store_id."'";
		//$result = $conn->query($sql);
		
		if(mysqli_query($conn, $sql)){
			echo "Records edited successfully.";
		} else{
			echo "ERROR: Could not able to execute $sql. " . mysqli_error($conn);
		}
				
		$conn->close();
		?>
</p>
</body>
</html>