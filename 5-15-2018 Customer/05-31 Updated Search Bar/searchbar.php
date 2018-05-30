<?php
	$con = mysqli_connect ("localhost", "root", "", "cars") or die("Could not connect to the database");

	$output = ' ';
	//collect
	if(isset($_POST['search'])){
		$searchq = $_POST['search'];
		$searchq = preg_replace("#[^0-9a-z]#i", "", $searchq);

		if(is_numeric($searchq)){
			$result = mysqli_query($con, "SELECT * FROM post WHERE (Rate BETWEEN $searchq AND $searchq + 1000 or $searchq - 1000) /**AND NOT Status = 'Reserved'**/") or die("Could not search.");
		} else{
			$result = mysqli_query($con, "SELECT * FROM post WHERE Model LIKE '%$searchq%' AND NOT Status = 'Reserved'") or die("Could not search.");
		}

		$count = mysqli_num_rows($result);
			while($row = mysqli_fetch_array($result)){
				$brand = $row['Brand'];
				$model = $row['Model'];
				$rate = $row['Rate'];
				$penalty = $row['Penalty'];
				$transmission = $row['Transmission'];
				$contact = $row['Contact'];
				$description = $row['Description'];
				//$image = $row['image'];


				$output .= '<div> '.$brand.' '.$model.' '.$rate.' '.$penalty.' '.$transmission.' '.$contact.' '.$description.' </div>';
			}

		echo "There are $count result/s.";
	}
	print("$output");
?>

<!DOCTYPE html>
<html>
<head>
	<title>Search Results</title>
</head>
<body>
	<button class="button" type="submit">
		Rent
	</button>
</body>
</html>