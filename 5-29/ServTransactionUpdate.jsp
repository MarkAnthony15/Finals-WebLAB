<%-- 
    Document   : ServTransactionUpdate
    Created on : May 29, 2018, 9:01:51 AM
    Author     : mark_
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String TransactionID = request.getParameter("TransactionID");
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
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-brand active" href="Post.html">CarGet</a>
          </div>
           <ul class="nav navbar-nav navbar-right">
               
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
                  <li>
                      <a href="ServReq.jsp">
                      <i class="glyphicon glyphicon-shopping-cart"></i>
                      Service Request </a>
                  </li>
                  <li  class="active">
                      <a href="ServTransaction.jsp">
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
                            <h3 class="panel-title">Update Transaction<span style="color: white; font-weight: bold;"></span></h3>
                        </div>
                    <!-- -->
<%
    //NEED TO FINISH UPDATING
try{
  connection = DriverManager.getConnection(connectionUrl+database, userid, password);
  statement=connection.createStatement();
  String sql ="Select * from transaction where TransactionID="+TransactionID; 
  resultSet = statement.executeQuery(sql);
    if(resultSet.next()){
%>

<form action="ServTransactionUpdateProcess.jsp" method="post">
                    <div class="table-responsive">
                        <div class="form-group">
                            <br>
                            <label class="col-md-4 control-label" for="TransactionID">Transaction ID</label>
                            <div class="col-md-4">
                                <input type="text" name="TransactionID" value="<%=resultSet.getString("TransactionID")%>">
                            </div>
                            <br>
                            <br>
                          <label class="col-md-4 control-label" for="CarID">Card ID</label>
                            <div class="col-md-4">
                                <input type="text" name="CarID" value="<%=resultSet.getString("CarID")%>">
                            </div>
                          <br>
                          
                          <br>
                          <label class="col-md-4 control-label" for="address">Address</label>
                            <div class="col-md-4">
                                <input type="text" name="address" value="<%=resultSet.getString("Address")%>" >
                            </div>
                          <br>
                          <br>
                          <label class="col-md-4 control-label" for="contact">Customer Contact</label>
                            <div class="col-md-4">
                                <input type="text" name="contact" value="<%=resultSet.getString("CustomerContact")%>">
                          </div>
                          <br>
                          <br>
                          <label class="col-md-4 control-label" for="custName">Customer Name</label>
                            <div class="col-md-4">
                              <input type="text" name="custName" value="<%=resultSet.getString("CustomerName")%>">
                          </div>
                          <br>
                          <br>
                          <label class="col-md-4 control-label" for="datePickUp">Date Pick-Up</label>
                            <div class="col-md-4">
                              <input type="text" name="datePickUp" value="<%=resultSet.getString("DatePickUp")%>">
                          </div>
                          <br>
                          <br>
                          <label class="col-md-4 control-label" for="dateReturn">Date Return</label>
                            <div class="col-md-4">
                                <input type="text" name="dateReturn" value="<%=resultSet.getString("DateReturn")%>">
                            </div>
                          <br>
                          <br>
                          <div class="form-group">
                            <label class="col-md-4 control-label" for="price">Price</label>
                            <div class="col-md-4">
                              <input type="text" name="price" value="<%=resultSet.getString("Price")%>">
                            </div>
                          </div>
                          <br>
                          <br>
                          <label class="col-md-4 control-label" for="status">Status</label>
                            <div class="col-md-7">
                                <select name="status">
                                  <option value="InProgress">InProgress</option>
                                  <option value="Successful">Successful</option>
                                </select>
                            </div>
                          <br>
                          <br>

                          <div class="form-group">
                            <div class="col-md-4">
                            <button id="singlebutton" name="update" class="btn btn-primary">Update</button>
                            <!-- <input type="submit" value="Submit"> -->
                            </div>
                          </div>
                        </div>
                    </div>
</form>
<%
}
  connection.close();
} catch (Exception e) {
  e.printStackTrace();
}
%>
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