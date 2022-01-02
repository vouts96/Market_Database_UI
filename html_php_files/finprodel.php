<!DOCTYPE html>
<html>
<title>Vaseis2020</title>
<body>
<style>
body{
	background-color:CadetBlue;
	height: 100%;
	
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


.tabcontent {
  color:white;
  padding: 16px 12px;
  border: 1px solid tomato;
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

		$Barcode = mysqli_real_escape_string($conn, $_REQUEST['barcode']);
		
		$sql = "SELECT *FROM products WHERE Barcode='".$Barcode."' ";
		$result = $conn->query($sql);
		$row = $result->fetch_assoc();
		//$result = $conn->query($sql);
		
		if(mysqli_query($conn, $sql)){
			echo "Product found";
		} else{
			echo "ERROR: Could not able to execute $sql. " . mysqli_error($conn);
		}
				
		$conn->close();
		?>
		
</p>
<div id="DelPro" class="tabcontent">
  <h3 style="background-color:tomato;padding:10px 20px;font-size:30px;text-align:center;color:white">Delete product data</h3>
  <br>
  <form action="delpro.php" style="padding:20px 20px;font-size:30px;text-align:right;margin-right:42%">
	  <label for="Barcode">Barcode:</label>
	  <input type="text"  name="barcode" id="Barcode" value="<?php echo $row['Barcode']; ?>" required readonly><br>
	  <label for="Price">Price:</label>
	  <input type="text" id="Price" placeholder="(x)x,xx" pattern="\d+(,\d{2})?" name="price" value="<?php echo $row['Price']; ?>" required readonly><br>
	  <label for="Name">Name:</label>
	  <input type="text" id="Name" name="name" value="<?php echo $row['Name']; ?>" readonly><br>
	  <label for="Brand_name">Brand name:</label>
	  <input type="text" id="Brand_name" name="brand" value="<?php echo $row['Brand_name']; ?>" readonly><br>
	  <label for="First_transaction">First transaction:</label>
	  <input type="text" id="First_transaction" name="first" placeholder="yyyy-mm-dd" pattern="[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])" value="<?php echo $row['First_transaction']; ?>" readonly><br>
	  <label for="Category_id">Category id:</label>
	  <input type="number"  name="category" id="Category_id" min="1" max="6" value="<?php echo $row['Category_Category_id']; ?>" required readonly><br>
	  <input type="submit" value="Submit">
  </form> 
</div>
</body>
</html>