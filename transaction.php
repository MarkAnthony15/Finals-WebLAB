<!DOCTYPE html>
<html>

<head>
    <title>Car Rental</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../bootstrap/css/style.css">
    <link rel="stylesheet" href="../bootstrap/css/w3.css">
    <link rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="../../bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript" src="../../bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../../javascript/jquery-3.3.1.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="../index.html">CarGet</a>
            </div>

            <ul class="nav navbar-nav">

                <li>
                    <a href="../index.html">HOME
                        <i class="fas fa-home"></i>
                    </a>
                </li>
                <li>
                    <a href="FAQ.html">FAQ</a>
                </li>
            </ul>
            <div class="col-sm-5 col-md-5">
                <form class="navbar-form" role="search">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search" name="q">
                        <div class="input-group-btn">
                            <button class="btn btn-default" type="submit">
                                <i class="glyphicon glyphicon-search"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <a href="user/ClientSign-Up.html">
                        <span class="glyphicon glyphicon-user"></span> Sign Up</a>
                </li>
                <li>
                    <a href="sign-in.html">
                        <span class="glyphicon glyphicon-log-in"></span> Login</a>
                </li>
            </ul>
        </div>
    </nav>

<form action="insert_query.php" method="post">
  <div class="container">
        <ul style="list-style-type:none; padding-left:0;">
            <li id="header_title">RENT A CAR AT LOW PRICES</li>

            <br/>

            <li class="header_info">PICK UP LOCATION</li>
            <li>
                <input type="text" placeholder="City, State or Airport Code" class="header_read" id="header_location" name="pul">
            </li>

            <br/>

            <li class="header_info">PICK UP DATE AND TIME</li>

            <li>
                <input type="date" class="header_read" name="pud">
                <input type="time" class="header_read header_right" name="put">
            </li>

            <br/>

            <li class="header_info">RETURN DATE AND TIME </li>
            <li>
                <input type="date" class="header_read" name="rd">
                <input type="time" class="header_read header_right" name="rt">
            </li>

            <br/>

            <li>
                <button id="header_button">RENT CAR
                    <i class="fab fa-telegram-plane"></i>
                </button>
            </li>

        </ul>
    </div>
</form>
</body>
</html>