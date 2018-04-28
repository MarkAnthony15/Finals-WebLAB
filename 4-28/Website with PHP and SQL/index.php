<!DOCTYPE html>
<html>
<head>
	<title>Car Rental</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="./bootstrap/css/bootstrap.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="#">CarGet</a>
	    </div>
	    <ul class="nav navbar-nav">
	      <li class="active"><a href="#">Home</a></li>
	      <li><a href="#">Browse</a></li>
	      <li><a href="#">My Rentals</a></li>
	      <li><a href="#">FAQ</a></li>
	      <li><a href="#">Contact Us</a></li>
	    </ul>
	    <ul class="nav navbar-nav navbar-right">
          <li><a href="./link/ClientSign-Up.php"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
          <li><a href="./link/ServiceSign-Up.php"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> //Login for Service or for CLient?
	    </ul>
	  </div>
	</nav>
	<div class="container">
		<h1>New here ?</h1>
	</div>
	<div class="container">
		<div class="row">
		  <div class="panel pandel-default col-lg-5" style="width:auto;height:auto;">
		  	<div class="panel-body">
		  		<div class="" style="">
			  		<div class="container-fluid" style="margin-top: 20px;">
			  			<div class="row">
							<div class="">
								<div class="container-fluid col-sm-6">
									<figure>
										<img src="./images/rent-a-car.png" class="img-circle, img-responsive" alt="Cinque Terre">
											<br>
											<button type="submit" class="btn btn-default"><a href="./link/ClientSign-Up.php">Rent a car</a></button>
									</figure>
								</div>
							</div>
							<div class="">
								<div class="container-fluid col-sm-6">
									<figure>
										<img src="./images/rent-a-car.png" class="img-circle, img-responsive" alt="Cinque Terre">
										<br>
										<button type="submit" class="btn btn-default" style="text-align: center;"><a href="./link/ServiceSign-Up.php">Lend a car</a></button>
									</figure>
								</div>
							</div>
						</div>
			  		</div>
			  	</div>
		  	</div>
		  </div>
		  <div class="panel pandel-default col-sm-4 pull-right" style="width:auto;height:100%	;">
		  	<div class="panel-body">
		  		<div class="">
				  	<h4>Already have an account ?</h4>
				  	<br>
						<form class="form-horizontal" action="/action_page.php">
							<div class="form-group">
								<label class="control-label col-sm-3" for="email">Username </label>
								<div class="col-sm-10">
									<input type="email" class="form-control" id="email" placeholder="Username/Email">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-sm-3" for="pwd">Password </label>
								<div class="col-sm-10">
									<input type="password" class="form-control" id="pwd" placeholder="Enter password">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-1 col-sm-10">
									<div class="checkbox">
										<label><input type="checkbox"> Remember me</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-1 col-sm-10">
								 	<button type="submit" class="btn btn-default">Sign In</button>
								</div>
							</div>
						</form>
				 </div>
		  	</div>
		  </div>
		</div> <!--END OF THE ROW CLASS -->
	</div> <!--END OF THE CONTAINER CLASS -->
</body>
</html>
