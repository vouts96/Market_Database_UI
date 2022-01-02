<html>
<body>
<?php 
	//echo '<h1>It works you motherfucker!!!</h1>'
	$con = mysqli_connect("localhost", "root", "admin", "vaseis2020");
	if($con->connect_error){
		die("Connection failed: " . $conn->connect_error);
	}
	else{
		echo "Connected successfully";
	}
?>

</body>
</html>
