<?php
session_start();
$_SESSION['message'] = '';
include_once 'db-inc.php';

if ($_SERVER["REQUEST_METHOD"] == "POST")
{
    if(empty($_POST['CompanyName']) || empty($_POST['PhoneNumber']) || empty($_POST['Password']) || empty($_POST['accname']) || empty($_POST['accnum']) )
    {
      $_SESSION['message'] = "Oops, you might have missed filling up a part.";
      echo $_SESSION['message'];
      exit();
    }
    else
    {
      if(isset($_POST['terms']))
      {

          if($_POST['Password'] == $_POST['Confirm_Password'])
            {
              $companyname = $mysqli->real_escape_string($_POST['CompanyName']);
              $entity = $mysqli->real_escape_string($_POST['entity']);
              $basedin = $mysqli->real_escape_string($_POST['basedin']);
              $phonenumber = $mysqli->real_escape_string($_POST['PhoneNumber']);
              $email = $mysqli->real_escape_string($_POST['Email']);
              $address = $mysqli->real_escape_string($_POST['Address']);
              $accname = $mysqli->real_escape_string($_POST['accname']);
              $accnum = $mysqli->real_escape_string($_POST['accnum']);
              $password = $mysqli->real_escape_string($_POST['Password']);
              $hashed_password = password_hash($password, PASSWORD_DEFAULT);


              //insert user data into database
              $sql = "INSERT INTO serviceprovider (CompanyName, Entity, BasedIn, PhoneNumber, Email, Address, BankAccname, BankAccnum, Password) VALUES ('$companyname', '$entity', '$basedin', '$phonenumber', '$email', '$address', '$accname', '$accnum', '$hashed_password');";

              //if the query is successsful, redirect to welcome.php page, done!
              if ($mysqli->query($sql) === true)
              {
                  $_SESSION['message'] = "Registration succesful! Added $firstname to the database!";
                  header("location: ../index.php");
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
              $_SESSION['message'] = 'Passwords do not match!';
              echo $_SESSION['message'];
            }

      }
      else
      {
          $_SESSION['message'] = 'Please check the Terms and Conditions if you agree!';
          echo $_SESSION['message'];
      }
    }


}
