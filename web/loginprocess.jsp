<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String username=request.getParameter("username");
session.putValue("username",username);
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/warehouse_management","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from register where username='"+username+"' and password='"+password+"'");
try{
rs.next();
if(rs.getString("password").equals(password) && rs.getString("username").equals(username))
{
out.println("Welcome " +username);
response.sendRedirect("dashboard.jsp");
}
else{
out.println("Invalid password or username.");
response.sendRedirect("index.jsp");
}
}
catch (Exception e) {
e.printStackTrace();
}
%>