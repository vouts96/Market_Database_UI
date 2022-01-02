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

		$Card = mysqli_real_escape_string($conn, $_REQUEST['card']);
		
		$sql = "SELECT *FROM customer WHERE Card='".$Card."' ";
		$result = $conn->query($sql);
		$row = $result->fetch_assoc();
		//$result = $conn->query($sql);
		
		if(mysqli_query($conn, $sql)){
			echo "Customer found";
		} else{
			echo "ERROR: Could not able to execute $sql. " . mysqli_error($conn);
		}
				
		$conn->close();
		?>
		
</p>
<div id="InCus" class="tabcontent">
  <h3 style="background-color:tomato;padding:10px 20px;font-size:30px;text-align:center;color:white">Edit customer data</h3>
  <br>
  <form action="edcus.php" style="padding:20px 20px;font-size:30px;text-align:right;margin-right:42%;color:white">
	  <label for="Card">Card:</label>
	  <input type="text"  name="card" id="Card" value="<?php echo $row['Card']; ?>" required><br>
	  <label for="Phone">Phone:</label>
	  <input type="tel" id="Phone" placeholder="+30-2108991000" pattern="[\+]\d{2}[\-]\d{10}" name="phone" value="<?php echo $row['Phone']; ?>" required><br>
	  <label for="Name">Name:</label>
	  <input type="text" id="Name" name="name"  value="<?php echo $row['Name']; ?>" required><br>
	  <label for="Date_of_Birth">Date of birth:</label>
	  <input type="text" id="Date_of_Birth" name="date" placeholder="yyyy-mm-dd" pattern="[0-9]{4}-(0[1-9]|1[012])-(0[1-9]|1[0-9]|2[0-9]|3[01])" value="<?php echo $row['Date_of_birth']; ?>"><br>
	  <label for="Address">Address:</label>
	  <input type="text" id="Address" name="address" value="<?php echo $row['Address']; ?>"><br>
	  <label for="City">City:</label>
	  <input type="text" id="City" name="city" value="<?php echo $row['City']; ?>"><br>
	  <label for="Postal_code">Postal code:</label>
	  <input type="text" id="Postal_code" name="postal" value="<?php echo $row['Postal_code']; ?>"><br>
	  <label for="Family_members">Family members:</label>
	  <input type="number" id="Family_members" name="family" value="<?php echo $row['Family_members']; ?>"><br>
	  <label for="Pet">Pets:</label>
	  <input type="number" id="Pet" name="pet" value="<?php echo $row['Pet']; ?>"><br>
	  <label for="Points">Points:</label>
	  <input type="text" id="Points" name="points" value="<?php echo $row['Points']; ?>"><br><br>
	  <input type="submit" value="Submit">
  </form> 
</div>
</body>
</html>