<%-- 
    Document   : ServReq
    Created on : 05 12, 18, 5:42:30 PM
    Author     : mark_
--%>
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
    <link rel="stylesheet" href=".../bootstrap/css/style.css">
    <script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
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
                      <img src="../images/thavit.jpg" class="img-responsive" alt="">
                  </div>
                  <!-- END SIDEBAR USERPIC -->
                  <!-- SIDEBAR USER TITLE -->
                  <div class="profile-usertitle">
                      <div class="profile-usertitle-name">
                          <b><%= session.getAttribute( "Name" ) %></b>
                      </div>
                      <div class="profile-usertitle-job">
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
                  <li>
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
        <div class="col-md-11" style="margin-top: 50px;">
            <div class="row content">
                <div class="panel panel-primary filterable">
                        <div class="panel-heading">
                            <h3 class="panel-title">Service Request<span style="color: white; font-weight: bold;"></span></h3>
                        </div>
                        <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <tr class="filters">
                              <th style="width: 10%">
                                <input type="text" class="form-control" placeholder="Customer Name" disabled>
                              </th>
                              <th style="width: 15%">
                                <input type="text" class="form-control" placeholder="Address" disabled>
                              </th>
                              <th style="width: 10%">
                                <input type="text" class="form-control" placeholder="Price" disabled>
                              </th>
                              <th style="width: 10%">
                                <input type="text" class="form-control" placeholder="Date Pick Up" disabled>
                              </th>
                              <th style="width: 10%">
                                <input type="text" class="form-control" placeholder="Date Return" disabled>
                              </th>
                              <th style="width: 10%">
                                <input type="text" class="form-control" placeholder="Name of Provider" disabled>
                              </th>
                              <th style="width: 10%">
                                <input type="text" class="form-control" placeholder="Contact Number" disabled>
                              </th>
                              <th style="width: 10%">
                                <input type="text" class="form-control" placeholder="Car Model" disabled>
                              </th>
                              <th style="width: 10%">
                                <input type="text" class="form-control" placeholder="Action" disabled>
                              </th>
                            </tr>
                            <tbody class="table table-bordered table-striped">
<%
try{
    //NEED TO FINISH LIKE THE ONLY DATA WILL BE SHOWED IS THE DATA OF THE LOGGED USER
  connection = DriverManager.getConnection(connectionUrl+database, userid, password);
  statement=connection.createStatement();
  String sql ="Select * from request"; 
  int i=0;
  resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
                                <tr>
                                    <td style="width: 10%"><%=resultSet.getString("CustomerName") %></td>
                                    <td style="width: 15%"><%=resultSet.getString("Address") %></td>
                                    <td style="width: 10%"><%=resultSet.getString("Price") %></td>
                                    <td style="width: 10%"><%=resultSet.getString("DatePickUp") %></td>
                                    <td style="width: 10%"><%=resultSet.getString("DateReturn") %></td>
                                    <td style="width: 10%"><%=resultSet.getString("NameOfProvider") %></td>
                                    <td style="width: 10%"><%=resultSet.getString("CustomerContact") %></td>
                                    <td style="width: 10%"><%=resultSet.getString("CarModel") %></td>
                                    <td style="width: 10%">
                                      <div>
                                          <a href="action.jsp?id=<%=resultSet.getString("id")%>"> <button type="button" class="btn btn-default btn-xs btn-filter"><span class="glyphicon glyphicon-console"></span>Action</button></a>
                                        </div>
                                    </td>
                                </tr>
<%
    i++;
}
  connection.close();
} catch (Exception e) {
  e.printStackTrace();
}
%>
                            </tbody>
                        </table>
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
