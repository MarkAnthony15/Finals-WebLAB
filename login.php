<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<link rel="stylesheet" href="css/login.css" type="text/css">
<body>

<form action="loginprocess.php">
  <div class="imgcontainer">
    <img src="../images/avatar2.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <center>
    <label for="uname"><b>Username</b></label><br/>
    <input type="text" placeholder="Enter Username" name="uname" required><br/>

    <label for="psw"><b>Password</b></label><br/>
    <input type="password" placeholder="Enter Password" name="psw" required><br/>

    <button type="submit">Login</button><br/>
      <center class="psw">Do not have an Account? <a href="localhost:4000/registration">Sign-up</a></center>
  </div>
    <center>

  <div class="container" style="background-color:#f1f1f1">
  </div>
</form>

</body>
</html>