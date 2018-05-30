<%-- 
    Document   : inserReportToAdmin
    Created on : May 30, 2018, 9:16:52 PM
    Author     : mark_
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
  String admin = request.getParameter("admin");
  String reportToAdmin = request.getParameter("reportToAdmin");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cars", "root", "");
Statement st=conn.createStatement();
String sp_name = (String)session.getAttribute("Name");

int i=st.executeUpdate("INSERT report_to_admin (SP_FirstName,Role,Message)values('"+sp_name+"','"+admin+"','"+reportToAdmin+"')");
response.sendRedirect("Post.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
