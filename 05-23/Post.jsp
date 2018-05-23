<%-- 
    Document   : Post
    Created on : 05 12, 18, 5:41:44 PM
    Author     : s422
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Car Rental</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../bootstrap/css/style.css">
    <script type="text/javascript" src="../../bootstrap/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand active" href="Post.html">CarGet</a>
          </div>
           <ul class="nav navbar-nav navbar-right">
                <!--<li><a href="ClientSign-Up.html"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>-->
                <li>
                    <a href="http://localhost/CarGet01/index.php">
                        <span class="glyphicon glyphicon-log-out"></span> Logged out </a>
                </li>
            </ul>
        </div>
      </nav>

<div class="container-fluid text-center">
  <div class="row content">
    <div class="col-sm-2 sidenav">
              <div class="profile-sidebar">

          <!-- END SIDEBAR USER TITLE -->
          <!-- SIDEBAR MENU -->
          <div class="profile-usermenu">
              <ul class="nav">
                  <li class="active">
                      <a href="Post.jsp">
                      <i class="glyphicon glyphicon-user"></i>
                      Post</a>
                  </li>
                  <li>
                      <a href="ServReq.jsp">
                      <i class="glyphicon glyphicon-shopping-cart"></i>
                      Service Request </a>
                  </li>
                  <li >
                      <a href="ServTransaction.jsp"\>
                      <i class="glyphicon glyphicon-bitcoin"></i>
                      Transaction </a>
                  </li>
              </ul>
          </div>
          <!-- END MENU -->
      </div>
    </div>
    <div class="col-sm-10 text-left">
        <div class="col-md-10" style="margin-top: 50px;">
            <div class="row content">
                <div class="panel panel-primary filterable">
                        <div class="panel-heading">
                            <h3 class="panel-title">Post Service<span style="color: white; font-weight: bold;"></span></h3>
                        </div>
                    <!-- -->
                    <form action="./newCar" method="post">
                        <div class="table-responsive">
                        <div class="form-group">
                          <br>  
                          <br>
                          <label class="col-md-4 control-label" for="sp_name">Name</label>
                            <div class="col-md-4">
                             <input id="sp_name" name="sp_name" placeholder="Name" class="form-control input-md" required="" type="text">
                          </div>
                          <br>
                          <br>
                          <label class="col-md-4 control-label" for="car_brand">Brand</label>
                            <div class="col-md-4">
                             <input id="car_brand" name="car_brand" placeholder="Brand" class="form-control input-md" required="" type="text">
                          </div>
                          <br>
                          <br>
                          <label class="col-md-4 control-label" for="car_model">Model</label>
                            <div class="col-md-4">
                              <input id="car_model" name="car_model" placeholder="Model" class="form-control input-md" required="" type="text">
                          </div>
                          <br>
                          <br>
                          <label class="col-md-4 control-label" for="car_price">Price</label>
                            <div class="col-md-4">
                              <input id="car_price" name="car_price" placeholder="Price /Day" class="form-control input-md" required="" type="text">
                          </div>
                          <br>
                          <br>
                          <label class="col-md-4 control-label" for="overdue_penalty">Overdue Penaly Amount</label>
                          <div class="col-md-4">
                            <input id="overdue_penalty" name="overdue_penalty" placeholder="Penalty /Day" class="form-control input-md" required="" type="text">
                          </div>
                          <br>
                            <br>
                            <label class="col-md-4 control-label" for="trans_select">Transmission</label>
                              <div class="col-md-4">
                            <select name="trans_select">
                              <option value="Manual">Manual</option>
                              <option value="Automatic">Automatic</option>
                              <option value="Automatic">Manual/Automatic</option>
                            </select>
                            </div>
                            <br>
                          <br>
                          <label class="col-md-4 control-label" for="sp_contact">Contact</label>
                          <div class="col-md-4">
                          <input id="sp_contact" name="sp_contact" placeholder="Contact" class="form-control input-md" required="" type="text">
                          </div>
                          <br>
                          <br>
                          <div class="form-group">
                            <label class="col-md-4 control-label" for="car_desc">Capacity</label>
                            <div class="col-md-1">
                              <input type="text" name="car_desc" id="car_desc" required="" placeholder="**" class="form-control input-md">
                            </div>
                          </div>
                          <br>
                          <br>
                          <div class="form-group">
                            <label class="col-md-4 control-label" for="filebutton">Car Image</label>
                            <div class="col-md-4">
                              <input id="filebutton" name="car_image" class="input-file" type="file">
                            </div>
                          </div>
                          <br>
                          <br>
                          <center><input type="checkbox" name="terms" value="Terms" checked> I agree to CarGet <a href="url">Terms &amp; Condition</a><br></center>
                          <br>
                          <br>
                          <div class="form-group">
                            <center>
                              <button style="" id="singlebutton" name="sendCar" class="btn btn-primary">Send</button>
                          </center>
                          </div>
                        </div>
                    </div>
                  </form>
                </div>
            </div>
        </div>
    </div>
  </div>
</div>
</body>
<script src="/Carget01/javascript/jquery.slim.min.js"></script>
<script src="/Carget01/javascript/jquery.min.js"></script>
<script src="/Carget01/bootstrap/js/bootstrap.min.js"></script>
</html>
