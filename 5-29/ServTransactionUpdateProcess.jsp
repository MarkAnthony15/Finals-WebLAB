<%-- 
    Document   : ServTransactionUpdateProcess
    Created on : 05 29, 18, 9:37:13 AM
    Author     : mark_
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    String TransactionID = request.getParameter("TransactionID");
    String carID = request.getParameter("CarID");
    String address = request.getParameter("address");
    String contact = request.getParameter("contact");
    String custName = request.getParameter("custName");
    String datePickUp = request.getParameter("datePickUp");
    String dateReturn = request.getParameter("dateReturn");
    String price = request.getParameter("price");
    String status = request.getParameter("status");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cars", "root", "");
Statement st=conn.createStatement();

 
  //int i=st.executeUpdate("UPDATE post SET(Brand,Model,Rate,Penalty,Transmission,Contact,Description,CarID,FirstName,Status)"
        //+ "values('"+brand+"','"+model+"','"+rate+"','"+penalty+"','"+transmission+"','"+contact+"','"+capacity+"','"+carID+"','"+status+"')");
 
String sql = "UPDATE transaction " +
				"SET TransactionID = '"+ TransactionID + "' " +
				", CarID = '"+ carID + "' " +
				", Address = '"+ address + "' " +
				", CustomerContact = '"+ contact + "' " +
				", CustomerName = '"+ custName + "' " +
                                ", DatePickUp = '"+ datePickUp + "' " +
                                ", DateReturn = '"+ dateReturn + "' " +
                                ", Price = '"+ price + "' " +
                                ", Status = '"+ status + "' " +
				" WHERE TransactionID = '" + TransactionID + "' ";
st.execute(sql);
response.sendRedirect("ServTransaction.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
