<%-- 
    Document   : garageUpdateProcess
    Created on : 05 29, 18, 8:15:41 AM
    Author     : Neil Clarence
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
    String carID = request.getParameter("CarID");
    String brand = request.getParameter("brand");
    String model = request.getParameter("model");
    String rate = request.getParameter("rate");
    String penalty = request.getParameter("penalty");
    String transmission = request.getParameter("transmission");
    String contact = request.getParameter("contact");
    String capacity = request.getParameter("brand");
    String status = request.getParameter("status");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cars", "root", "");
Statement st=conn.createStatement();
String sp_name = (String)session.getAttribute("Name");

 
  //int i=st.executeUpdate("UPDATE post SET(Brand,Model,Rate,Penalty,Transmission,Contact,Description,CarID,FirstName,Status)"
        //+ "values('"+brand+"','"+model+"','"+rate+"','"+penalty+"','"+transmission+"','"+contact+"','"+capacity+"','"+carID+"','"+status+"')");
 
String sql = "UPDATE post " +
				"SET Brand = '"+ brand + "' " +
				", Model = '"+ model + "' " +
				", Rate = '"+ rate + "' " +
				", Penalty = '"+ penalty + "' " +
				", Transmission = '"+ transmission + "' " +
                                ", Contact = '"+ contact + "' " +
                                ", Description = '"+ capacity + "' " +
                                ", CarID = '"+ carID + "' " +
                                ", FirstName = '"+ sp_name + "' " +
                                ", Status = '"+ status + "' " +
				" WHERE CarID = '" + carID + "' ";
st.execute(sql);
response.sendRedirect("Post.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>