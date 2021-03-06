<?php
include_once '../includes/client-signup-inc.php';
?>

<!DOCTYPE html>
<html>
<head>
    <title>Car Rental</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
    <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="../index.html">CarGet</a>
        </div>
        <ul class="nav navbar-nav">
          <li><a href="../index.php">Home</a></li>
          <li><a href="./Browse.php">Browse</a></li>
          <li><a href="#">My Rentals</a></li>
          <li><a href="#">FAQ</a></li>
          <li><a href="#">Contact Us</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="ClientSign-Up.php"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
          <li><a href="ServiceSign-Up.php"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </ul>
      </div>
    </nav>
        <fieldset>
        <!-- Form Name -->
        <legend>Client Registration</legend>
    </fieldset>
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <form role="form" method="POST" action="./ClientSign-Up.php">
                    <fieldset>
                        <legend>Account Details</legend>

                        <div class="form-group col-md-6">
                            <label for="firstname">First name</label>
                            <input type="text" class="form-control" name="firstname" id="firstname" placeholder="Enter Firstname">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="lastname">Last name</label>
                            <input type="text" class="form-control" name="lastname" id="lastname" placeholder="Enter Lastname">
                        </div>

                        <div class="form-group col-md-2">
                            <label for="age">Age</label>
                            <input type="text" class="form-control" name="age" id="age">
                        </div>

                         <div class="form-group col-md-4">

                        </div>

                        <div class="form-group col-md-6">
                            <label for="gender">Gender</label>
                             <div class="radio" class="col-md-4">
                                <label for="radios-0">
                                <input type="radio" name="gender" id="gender-0" value="Male" checked="checked">
                                Male
                                </label>
                                <label for="radios-1">
                                <input type="radio" name="gender" id="gender-1" value="Female">
                                Female
                                </label>
                            </div>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="phonenumber">Mobile Number</label>
                            <input type="text" class="form-control" name="phonenumber" id="phonenumber" placeholder="Enter Mobile Number">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" name="email" id="email" placeholder="Enter Email Address">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" name="password" id="password" placeholder="Enter Password">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="confirm_password">Confirm Password</label>
                            <input type="password" class="form-control" name="confirm_password" id="confirm_password" placeholder="Confirm Password">
                        </div>

                    </fieldset>

                    <div class="form-group">
                        <div class="col-md-12">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="" id="terms" name="terms">
                                    I accept the <a href="#">Terms and Conditions.</a>
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-primary">
                                Register
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
