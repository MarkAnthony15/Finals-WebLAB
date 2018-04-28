<?php
include_once '../includes/service-signup-inc.php';
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
          <a class="navbar-brand" href="#">CarGet</a>
        </div>
        <ul class="nav navbar-nav">
          <li><a href="../index.php">Home</a></li>
          <li><a href="#">Browse</a></li>
          <li><a href="#">My Rentals</a></li>
          <li><a href="#">FAQ</a></li>
          <li><a href="#">Contact Us</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li><a href="ClientSign-Up.html"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
          <li><a href="ServiceSign-Up.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </ul>
      </div>
    </nav>
    <fieldset>
        <!-- Form Name -->
        <legend>Service Provider Registration</legend>
    </fieldset>
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <form role="form" method="" action="#">
                    <fieldset>
                        <legend>Account Details</legend>

                        <div class="form-group col-md-6">
                            <label for="first_name">First name</label>
                            <input type="text" class="form-control" name="" id="" placeholder="Enter Firstname">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="last_name">Last name</label>
                            <input type="text" class="form-control" name="" id="" placeholder="Enter Lastname">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">Mobile Number</label>
                            <input type="text" class="form-control" name="" id="" placeholder="Enter Mobile Number">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">Email</label>
                            <input type="email" class="form-control" name="" id="" placeholder="Enter Email Address">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" name="" id="" placeholder="Enter Password">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="confirm_password">Confirm Password</label>
                            <input type="password" class="form-control" name="" id="" placeholder="Confirm Password">
                        </div>


                    </fieldset>

                    <fieldset>
                        <legend>Address</legend>

                        <div class="form-group col-md-6">
                            <label for="">House No./ Street</label>
                            <input type="text" class="form-control" name="" id="r" placeholder="Enter House Number / Street">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">Barangay</label>
                            <input type="text" class="form-control" name="" id= placeholder="Enter Barangay">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">Municipality</label>
                            <input type="text" class="form-control" name="" id="" placeholder="Enter Municipality">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">Province</label>
                            <input type="text" class="form-control" name="" id="" placeholder="Enter Province">
                        </div>

                    </fieldset>

                    <fieldset>
                        <legend>Business Details</legend>

                        <div class="form-group col-md-6">
                            <label for="">Business Entity</label>
                            <div class="radio">
                                <label for="radios-0">
                                <input type="radio" name="entity" id="entity" value="Individual" checked="checked"> Individual </label>
                                <label for="radios-1">
                                <input type="radio" name="entity" id="entity" value="Company"> Company </label>
                            </div>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">I'm based in</label>
                            <select class="form-control">
                                <option value="" disabled selected>Select one...</option>
                                <option value="Baguio">Baguio</option>
                                <option value="La Trinidad">La Trinidad</option>
                                <option value="La Union">La Union</option>
                            </select>
                        </div>
                        <div class="form-group col-md-12">
                            <label for="">Company Name</label>
                            <input type="text" class="form-control" name="" id="" placeholder="Enter Company Name" >
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend>Bank Details</legend>

                            <div class="form-group col-md-6">
                                <label for="">Account Name</label>
                                <input type="text" class="form-control" name="" id="" placeholder="Enter Account Name">
                            </div>

                            <div class="form-group col-md-6">
                                <label for="">Account Number</label>
                                <input type="text" class="form-control" name="r" id="" placeholder="Enter Account Number">
                            </div>
                    </fieldset>

                    <div class="form-group">
                        <div class="col-md-12">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="" id="">
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
