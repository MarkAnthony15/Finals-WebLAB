<?php
$_SESSION['message'] = '';
include_once 'db-inc.php';


if ($_SERVER["REQUEST_METHOD"] == "POST")
{
    if(isset($_POST['terms']))
    {

        //check if the 2 passwds are equal
        if ($_POST['password'] == $_POST['confirm_password'])
        {

            //set all variables for Account Details
            $firstname = $mysqli->real_escape_string($_POST['firstname']);
            $lastname = $mysqli->real_escape_string($_POST['lastname']);
            $phonenumber = $mysqli->real_escape_string($_POST['phonenumber']);

            $email = $mysqli->real_escape_string($_POST['email']);

            $password = md5($_POST['password']); //md5 has password for security



            //set all variables for Address Details
            $housenum = $mysqli->real_escape_string($_POST['housenum']);
            $barangay = $mysqli->real_escape_string($_POST['barangay']);
            $municipality = $mysqli->real_escape_string($_POST['municipality']);
            $province = $mysqli->real_escape_string($_POST['province']);
            $address = $housenum . "," . $barangay . "," . $municipality . "," . $province;


            //set all variables for Business Details
            $entity = $mysqli->real_escape_string($_POST['entity']);
            $basedin = $mysqli->real_escape_string($_POST['basedin']);
            $companyname = $mysqli->real_escape_string($_POST['companyname']);


            //set all variables for Bank Details
            $accname = $mysqli->real_escape_string($_POST['accname']);
            $accnum = $mysqli->real_escape_string($_POST['accnum']);


            //insert user data into database
            $sql = "INSERT INTO serviceprovider (businessentity, basedin, phonenumer, companyname, email, address, bankaccname, bankaccnum, revenue) "
                    . "VALUES ( '$entity', '$basedin', '$phonenumber', '$companyname', '$email', '$address', '$accname', '$accnum', 0);";

            //if the query is successsful, redirect to welcome.php page, done!
            if ($mysqli->query($sql) === true)
            {
                $_SESSION['message'] = "Registration succesful! Added $firstname to the database!";
                header("location: home.php");
                echo $_SESSION['message'];
                exit();
            }
            else
            {
                $_SESSION['message'] = 'User could not be added to the database!';
                echo $_SESSION['message'];
                exit();
            }
            $mysqli->close();

        }
        else
        {
            $_SESSION['message'] = 'Two passwords do not match!';
            echo $_SESSION['message'];
            exit();
        }

    }
    else
    {
        $_SESSION['message'] = 'Please check the Terms and Conditions if you agree!';
        echo $_SESSION['message'];
    }
}
