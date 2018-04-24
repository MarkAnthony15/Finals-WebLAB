<?php
session_start();
$_SESSION['message'] = '';
$mysqli = new mysqli("host address", "username", "db_password", "table_name");


if ($_SERVER["REQUEST_METHOD"] == "POST") 
{
    if(isset($_POST['terms']))
    {
        
        //check if the 2 passwds are equal
        if ($_POST['password'] == $_POST['confirm_password']) 
        {

            //set all variables
            $firstname = $mysqli->real_escape_string($_POST['username']);
            $lastname = $mysqli->real_escape_string($_POST['lastname']);
            $age = $mysqli->real_escape_string($_POST['age']);
            $gender = $mysqli->real_escape_string($_POST['gender']);
            $phonenumber = $mysqli->real_escape_string($_POST['phonenumber']);
            $email = $mysqli->real_escape_string($_POST['email']);
            $password = md5($_POST['password']); //md5 has password for security

            //set session variables
            $_SESSION['firstname'] = $firstname;


            //insert user data into database
            $sql = "INSERT INTO users (firstname, lastname, age, gender, phonenumber, email, password) "
                    . "VALUES ($firstname, $lastname, $age, $gender, $phonenumber, $email, $password)";

            //if the query is successsful, redirect to welcome.php page, done!
            if ($mysqli->query($sql) === true)
            {
                $_SESSION['message'] = "Registration succesful! Added $firstname to the database!";
                header("location: home.php");
            }
            else 
            {
                $_SESSION['message'] = 'User could not be added to the database!';
            }
            $mysqli->close();                  

        }
        else 
        {
            $_SESSION['message'] = 'Two passwords do not match!';
        }
        
    }
    else 
    {
        $_SESSION['message'] = 'Please check the Terms and Conditions if you agree!';
    }
}
?>


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
          <li><a href="#">Home</a></li>
          <li><a href="#">Browse</a></li>
          <li><a href="#">My Rentals</a></li>
          <li><a href="#">FAQ</a></li>
          <li><a href="#">Contact Us</a></li>
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

                        <div class="form-group col-md-2">
                            <label for="last_name">Age</label>
                            <input type="text" class="form-control" name="" id="">
                        </div>
                         <div class="form-group col-md-4">
                            
                        </div>

                        <div class="form-group col-md-6">
                            <label for="last_name">Gender</label>
                             <div class="radio" class="col-md-4">
                                <label for="radios-0">
                                <input type="radio" name="radios" id="radios-0" value="1" checked="checked">
                                Male
                                </label>
                                <label for="radios-1">
                                <input type="radio" name="radios" id="radios-1" value="2">
                                Female
                                </label>
                            </div>
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
