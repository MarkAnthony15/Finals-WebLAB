<?php
	$con = mysqli_connect ("localhost", "root", "", "cars") or die("Could not connect to the database");

	$output = ' ';
	//collect
	if(isset($_POST['search'])){
		$searchq = $_POST['search'];
		$searchq = preg_replace("#[^0-9a-z]#i", "", $searchq);

		$result = mysqli_query($con, "SELECT Brand, Model, Rate, Description from post WHERE Model LIKE '%$searchq%'") or die("Could not search.");

		$count = mysqli_num_rows($result);
		if($count == 0){
			$output = 'There are no search results.';
		}else{
			while($row = mysqli_fetch_array($result)){
				$brand = $row['Brand'];
				$model = $row['Model'];
				$rate = $row['Rate'];
				$description = $rpw['Description'];


				$output .= '<div> '.$brand' '.$model.' '.$rate.' '.$description.' </div>';
				echo "There are $count result/s.";
			}

		}
	}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Search</title>
</head>
<body>

<form action="searchbar.php" method="post">
	<input type="text" name="search" placeholder="Search by model.." />
	<input type="submit" value=">>" />
</form>

<?php print("$output"); ?>

</body>
</html>