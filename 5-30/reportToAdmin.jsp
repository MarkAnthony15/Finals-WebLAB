<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "cars";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
    <title>Car Rental</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../bootstrap/css/style.css">
    <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
    <div id="screen" class="screen"/>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand active" href="Post.html">CarGet</a>
          </div>
           <ul class="nav navbar-nav navbar-right">
                <!--<li><a href="ClientSign-Up.html"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>-->
                <li>
                    <a href="../index.jsp">
                        <span class="glyphicon glyphicon-log-out"></span> Logged out </a>
                </li>
            </ul>
        </div>
      </nav>

<div class="container-fluid text-center">
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <div class="profile-sidebar">
          <%
          try{
          connection = DriverManager.getConnection(connectionUrl+database, userid, password);
          statement=connection.createStatement();
          String sql ="select * from customer";
          resultSet = statement.executeQuery(sql);
          if(resultSet.next()){
          %>
                  <!-- SIDEBAR USERPIC -->
                  <div class="profile-userpic">
                       <img src="../images/thavit.png" class="img-responsive" alt="">
                  </div>
                  <!-- END SIDEBAR USERPIC -->
                  <!-- SIDEBAR USER TITLE -->
                  <div class="profile-usertitle">
                      <div class="profile-usertitle-name" style="color: aqua">
                          <b><%= session.getAttribute( "Name" ) %></b>
                      </div>
                      <div class="profile-usertitle-job" style="color: aqua">
                          <b>Service Provider<b>
                      </div>
                  </div>
          <%
          }
          connection.close();
          } catch (Exception e) {
          e.printStackTrace();
          }
          %>
          <!-- END SIDEBAR USER TITLE -->
              <!-- SIDEBAR MENU -->
          <div class="profile-usermenu">
              <ul class="nav">
                  <li>
                      <a href="Post.jsp">
                      <i class="glyphicon glyphicon-save-file"></i>
                      Post</a>
                  </li>
                  <li>
                      <a href="Garage.jsp">
                      <i class="glyphicon glyphicon-open-file"></i>
                      Garage</a>
                  </li>
                  <li class="active">
                      <a href="ServReq.jsp">
                      <i class="glyphicon glyphicon-shopping-cart"></i>
                      Service Request </a>
                  </li>
                  <li >
                      <a href="ServTransaction.jsp"\>
                      <i class="glyphicon glyphicon-bitcoin"></i>
                      Transaction </a>
                  </li>
                  <li class="active">
                      <a href="SendReport.jsp"\>
                      <i class="glyphicon glyphicon-envelope"></i>
                      Send Report </a>
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
                            <h3 class="panel-title">Send Report To Administrator<span style="color: white; font-weight: bold;"></span></h3>
                        </div>
                    <!-- -->
<form action="insertReportToAdmin.jsp" method="post">
                    <div class="table-responsive" style="background-color: #C2B7FF">
                        <div class="form-group">
                         <br>
                          <label class="col-md-3 control-label" for="admin">To</label>
                          	<div class="col-md-4">
                          		<input id="customerFirstName" name="admin" value="Administrator" class="form-control input-md" required="" type="text">
                          	</div>
                          <br>
                          <br>
                          <div class="form-group">
                            <label class="col-md-3 control-label" for="reportToAdmin">Message</label>
                            <br>
                            <div class="col-md-1">
                               <textarea name="reportToAdmin" rows="10" cols="60" required="" placeholder="Report to administrator..."></textarea>
                               <br>
                               <br>
                               <button id="singlebutton" name="sendMessage" class="btn btn-primary">Send</button>
                               <br>
                               <br>
                            </div>
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
</div>
</body>
<script src="/Carget01/javascript/jquery.slim.min.js"></script>
<script src="/Carget01/javascript/jquery.min.js"></script>
<script src="/Carget01/bootstrap/js/bootstrap.min.js"></script>
</html>