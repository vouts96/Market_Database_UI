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

		$Store_id = mysqli_real_escape_string($conn, $_REQUEST['store_id']);
		
		$sql = "SELECT *FROM stores WHERE Store_id='".$Store_id."' ";
		$result = $conn->query($sql);
		$row = $result->fetch_assoc();
		//$result = $conn->query($sql);
		
		if(mysqli_query($conn, $sql)){
			echo "Store found";
		} else{
			echo "ERROR: Could not able to execute $sql. " . mysqli_error($conn);
		}
				
		$conn->close();
		?>
		
</p>
<div id="DelSto" class="tabcontent">
  <h3 style="background-color:tomato;padding:10px 20px;font-size:30px;text-align:center">Delete store data</h3>
  <form action="delsto.php" style="padding:20px 20px;font-size:30px;text-align:right;margin-right:42%">
	  <label for="Store_id">Store id:</label>
	  <input type="text"  name="store_id" id="Store_id" value="<?php echo $row['Store_id']; ?>"required readonly><br>
	  <label for="Phone">Phone:</label>
	  <input type="tel" id="Phone" placeholder="+30-2108991000" pattern="[\+]\d{2}[\-]\d{10}" name="phone" value="<?php echo $row['Phone']; ?>" required readonly><br>
	  <label for="Operating_hours">Operating hours:</label>
	  <input type="text" id="Operating_hours" name="hours" value="<?php echo $row['Operating_hours']; ?>" readonly><br>
	  <label for="Size">Size:</label>
	  <input type="text" id="Size" name="size" value="<?php echo $row['Size']; ?>" readonly><br>
	  <label for="City">City:</label>
	  <input type="text" id="City" name="city" value="<?php echo $row['City']; ?>" readonly><br>
	  <label for="Address">Address:</label>
	  <input type="text" id="Address" name="address" value="<?php echo $row['Address']; ?>" readonly><br>
	  <label for="Postal_code">Postal code:</label>
	  <input type="text" id="Postal_code" name="postal" value="<?php echo $row['Postal_code']; ?>" readonly><br>
	  <input type="submit" value="Submit">
  </form> 
</div>
</body>
</html>