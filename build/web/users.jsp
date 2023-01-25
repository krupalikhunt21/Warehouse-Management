<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
                color: black;
            }
            th, td {
                padding: 15px;
                text-align: left;
            }
            #t01 {
                width: 100%;    
                background-color: #f1f1c1;
            }

            #b1 {
                border-radius: 25px;
                border: 1px solid gray;
                padding: 20px; 
                width: auto;

            }
            #b2{
                border-radius: 8px;
            }

        </style>
    </head>
    <body style="background-color: black; color: white">
        &nbsp;&nbsp;&nbsp;<h1>Users</h1> 
        <div id="b1">
            <button onclick="location.href('us.jsp')" id="b2" style="font-size:24px"><i class="fa fa-user"></i> Add New User </button>


            <div style="float: right">
                <input type="text" placeholder="Search.." name="search">
                <button  type="submit"><i class="fa fa-search"></i></button>
            </div>
            <!----------------------------------------------------------------------------------------------------------->
            <sql:setDataSource
                var="myDS"
                driver="com.mysql.jdbc.Driver"
                url="jdbc:mysql://localhost:3306/warehouse_management"
                user="root" password=""
                />

            <sql:query var="listUsers"   dataSource="${myDS}">
                SELECT * FROM users;
            </sql:query>

            <div align="center">
                <table id="t01" border="1" cellpadding="20">
                    <caption><h2>List of Users</h2></caption>
                    <tr>
                        <th>Id</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>City</th>
                        <th>Contact Number</th>
                        <th>Email</th>
                        <th>Department</th>
                        <th>Action</th>
                    </tr>
                    <c:forEach var="user" items="${listUsers.rows}">
                        <tr>
                             <td><c:out value="${user.id}" /></td>
                            <td><c:out value="${user.first_name}" /></td>
                            <td><c:out value="${user.last_name}" /></td>
                            <td><c:out value="${user.city_name}" /></td>
                            <td><c:out value="${user.phone}" /></td>
                            <td><c:out value="${user.email}" /></td>
                            <td><c:out value="${user.department}" /></td>
                            <td><a href="userdelete.jsp?id=<c:out value='${user.id}'/>">Delete</a></td>
                        </tr>
                    </c:forEach>
                </table>
                
            </div>

        </div>
<a href="dashboard.jsp" style="text-align:right; color:white"><h3>Dashboard</h3></a>
    </body>
</html>
