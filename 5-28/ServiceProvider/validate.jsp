<%-- 
    Document   : validate
    Created on : May 24, 2018, 5:59:57 PM
    Author     : mark_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%
    try{
        String username = request.getParameter("email");   
        String password = request.getParameter("password");
        String name="";
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cars?" + "user=root&password=");    
        PreparedStatement pst = conn.prepareStatement("Select * from customer where Email=? and Password=? and Role = 'Service Provider' and Status= 'Approved'");
        pst.setString(1, username);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next()){
           name = rs.getString("FirstName");
           session.setAttribute("Name",name);
           response.sendRedirect("link/Post.jsp");
                    
        }else{
            response.sendRedirect("index.jsp");           
   
        }
    }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>
