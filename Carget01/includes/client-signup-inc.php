<?php
session_start();
$_SESSION['message'] = '';
include_once 'db-inc.php';

if ($_SERVER["REQUEST_METHOD"] == "POST")
{
    if(empty($_POST['firstname']) || empty($_POST['lastname']) || empty($_POST['age']) || empty($_POST['gender']) || empty($_POST['phonenumber']) || empty($_POST['email']) || empty($_POST['password']))
    {
        $_SESSION['message'] = "Oops, you might have missed filling up a part.";
        echo $_SESSION['message'];
        exit();
    }
    else
    {
      if(isset($_POST['terms']))
      {

          //check if the 2 passwds are equal
          if ($_POST['password'] == $_POST['confirm_password'])
          {

              //set all variables
              $firstname = $mysqli->real_escape_string($_POST['firstname']);
              $lastname = $mysqli->real_escape_string($_POST['lastname']);
              $age = $mysqli->real_escape_string($_POST['age']);
              $gender = $mysqli->real_escape_string($_POST['gender']);
              $phonenumber = $mysqli->real_escape_string($_POST['phonenumber']);
              $email = $mysqli->real_escape_string($_POST['email']);
              $password = md5($_POST['password']); //md5 has password for security

              //insert user data into database
              $sql = "INSERT INTO customer ( FirstName, LastName, Gender, Email, PhoneNumber, Password, Age) VALUES ( '$firstname', '$lastname', '$gender', '$email', '$phonenumber', '$password', $age);";

              //if the query is successsful, redirect to welcome.php page, done!
              if ($mysqli->query($sql) === true)
              {
                  $_SESSION['message'] = "Registration succesful! Added $firstname to the database!";
                  header("location: ../index.php");
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
              $_SESSION['message'] = 'Your passwords do not match!';
              echo $_SESSION['message'];
              exit();
          }

      }
      else
      {
          $_SESSION['message'] = 'Please check the Terms and Conditions if you agree!';
          echo $_SESSION['message'];
          exit();
      }
    }


}
