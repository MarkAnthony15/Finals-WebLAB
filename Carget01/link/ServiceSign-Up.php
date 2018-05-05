<?php
include_once '../includes/service-signup-inc.php';
include_once '../templates/header.php';
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
    <fieldset>
        <!-- Form Name -->
        <legend>Service Provider Registration</legend>
    </fieldset>
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <form role="form" method="POST" action="./ServiceSign-Up.php">
                    <fieldset>
                        <legend>Account Details</legend>

                        <div class="form-group col-md-6">
                            <label for="first_name">First name</label>
                            <input type="text" class="form-control" name="firstname" id="" placeholder="Enter Firstname">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="last_name">Last name</label>
                            <input type="text" class="form-control" name="lastname" id="" placeholder="Enter Lastname">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">Mobile Number</label>
                            <input type="text" class="form-control" name="phonenumber" id="" placeholder="Enter Mobile Number">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">Email</label>
                            <input type="email" class="form-control" name="email" id="" placeholder="Enter Email Address">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="password">Password</label>
                            <input type="password" class="form-control" name="password" id="" placeholder="Enter Password">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="confirm_password">Confirm Password</label>
                            <input type="password" class="form-control" name="confirm_password" id="" placeholder="Confirm Password">
                        </div>


                    </fieldset>

                    <fieldset>
                        <legend>Address</legend>

                        <div class="form-group col-md-6">
                            <label for="">House No./ Street</label>
                            <input type="text" class="form-control" name="housenum" id="r" placeholder="Enter House Number / Street">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">Barangay</label>
                            <input type="text" class="form-control" name="barangay" id= placeholder="Enter Barangay">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">Municipality</label>
                            <input type="text" class="form-control" name="municipality" id="" placeholder="Enter Municipality">
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">Province</label>
                            <input type="text" class="form-control" name="province" id="" placeholder="Enter Province">
                        </div>

                    </fieldset>

                    <fieldset>
                        <legend>Business Details</legend>

                        <div class="form-group col-md-6">
                           <label for="">Business Entity</label>
                            <div class="radio">
                                <label for="Individual">
                                <input type="radio" name="entity" id="Individual" value="Individual" checked="checked"> Individual </label>

                                <label for="Company">
                                <input type="radio" name="entity" id="Company" value="Company"> Company </label>
                            </div>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="">I'm based in</label>
                            <select class="form-control" name="basedin">
                                <option value="" disabled selected>Select one...</option>
                                <option>Baguio</option>
                                <option>La Trinidad</option>
                                <option>La Union</option>
                            </select>
                        </div>
                        <div class="form-group col-md-12">
                            <label for="companyname">Company Name</label>
                            <input type="text" class="form-control" name="companyname" id="companyname" placeholder="Enter Company Name" >
                        </div>
                    </fieldset>

                    <fieldset>
                        <legend>Bank Details</legend>

                            <div class="form-group col-md-6">
                                <label for="accname">Account Name</label>
                                <input type="text" class="form-control" name="accname" id="accname" placeholder="Enter Account Name">
                            </div>

                            <div class="form-group col-md-6">
                                <label for="accnum">Account Number</label>
                                <input type="text" class="form-control" name="accnum" id="accnum" placeholder="Enter Account Number">
                            </div>
                    </fieldset>

                    <div class="form-group">
                        <div class="col-md-12">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" value="" name="terms" id="">
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
