<?php
include_once '../includes/service-signup-inc.php';
include_once '../templates/LoggedHeader.php';
?>

<!DOCTYPE html>
<html>
<head>
    <title>Car Rental</title>
    <meta charset="utf-8">
    <script type="text/javascript" src="../bootstrap/js/bootstrap.js"></script>
    <script src="../bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../javascript/jquery.min.js"></script>
    <script src="../javascript/jquery.slim.min.js"></script>
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
                <form class="needs-validation" role="form" method="POST" action="./ServiceSign-Up.php">
                    <fieldset>
                        <legend>Business Details</legend>

                        <div class="form-group col-md-12">
                            <label for="CompanyName">Company Name</label>
                            <input type="text" class="form-control" name="CompanyName" id="CompanyName" placeholder="Enter Company Name" required>
                        </div>

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
                            <label for="">Based in</label>
                            <select class="form-control" name="basedin">
                                <option value="" disabled selected>Select one...</option>
                                <option>Baguio</option>
                                <option>La Trinidad</option>
                                <option>La Union</option>
                            </select>
                        </div>

                    </fieldset>

                    <fieldset>
                        <legend>Contact Information</legend>

                            <div class="form-group col-md-6">
                                <label for="PhoneNumber">Phone Number</label>
                                <input type="text" class="form-control" name="PhoneNumber" id="PhoneNumber" placeholder="Enter Phone Number" required>
                            </div>

                            <div class="form-group col-md-6">
                                <label for="Email">Email Address</label>
                                <input type="email" class="form-control" name="Email" id="Email" placeholder="Enter Email Address" required>
                            </div>

                            <div class="form-group col-md-12">
                                <label for="Address">Address</label>
                                <input type="text" class="form-control" name="Address" id="Email" placeholder="Enter Address" required>
                            </div>

                    </fieldset>

                    <fieldset>
                        <legend>Bank Details</legend>

                            <div class="form-group col-md-6">
                                <label for="accname">Account Name</label>
                                <input type="text" class="form-control" name="accname" id="accname" placeholder="Enter Account Name" required>
                            </div>

                            <div class="form-group col-md-6">
                                <label for="accnum">Account Number</label>
                                <input type="text" class="form-control" name="accnum" id="accnum" placeholder="Enter Account Number" required>
                            </div>
                    </fieldset>

                    <fieldset>
                        <legend>Security Details</legend>

                            <div class="form-group col-md-6">
                                <label for="Password">Password</label>
                                <input type="password" class="form-control" name="Password" id="Password" placeholder="Enter Password" required>
                            </div>

                            <div class="form-group col-md-6">
                                <label for="Confirm_Password">Cpnfirm Password</label>
                                <input type="password" class="form-control" name="Confirm_Password" id="Confirm_Password" placeholder="Confirm Password" required>
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
<script src="/Carget01/javascript/jquery.slim.min.js"></script>
<script src="/Carget01/javascript/jquery.min.js"></script>
<script src="/Carget01/bootstrap/js/bootstrap.min.js"></script>

</html>
