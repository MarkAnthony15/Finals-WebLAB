<%-- 
    Document   : index
    Created on : May 24, 2018, 3:14:18 PM
    Author     : mark_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Car Rental</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap/css/style.css">
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
	<div id="fullscreen_bg" class="fullscreen_bg"/>

	<div class="container">

	    <form class="form-signin" action="validate.jsp" method="post" role="form">
			<h1 class="form-signin-heading text-muted">Welcome Car Provider</h1>
			<input type="text" class="form-control" placeholder="Email address" required="" autofocus="" name="email">
			<input type="password" class="form-control" placeholder="Password" required="" name="password">
			<button class="btn btn-lg btn-primary btn-block" type="submit">
				Login
			</button>
		</form>

	</div>

</body>

</html>
