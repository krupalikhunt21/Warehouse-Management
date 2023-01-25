<%-- 
    Document   : users
    Created on : 3 Nov, 2020, 12:47:55 PM
    Author     : jhanv
--%>

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
        &nbsp;&nbsp;&nbsp;<h1>Orders</h1>
        <div id="b1">
            <button onclick="location.href('orderform.jsp')" id="b2" style="font-size:24px"><i class="fa fa-user"></i> Add New Order </button>


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

            <sql:query var="listOrder"   dataSource="${myDS}">
                SELECT * FROM orders;
            </sql:query>

            <div align="center">
                <table id="t01" border="1" cellpadding="20">
                    <caption><h2>List of Orders</h2></caption>
                    <tr>
                        <th>Id</th>
                        <th>Customer Name</th>
                        <th>Address</th>
                        <th>Contact_No</th>
                        <th>Product</th>
                        <th>Category</th>
                        <th>Product Quantity</th>
                        <th>Amount</th>
                        <th>Action</th>
                    </tr>
                    <c:forEach var="order" items="${listOrder.rows}">
                        <tr>
                            <td><c:out value="${order.id}" /></td>
                            <td><c:out value="${order.customer_name}" /></td>
                            <td><c:out value="${order.address}" /></td>
                            <td><c:out value="${order.contact_no}" /></td>
                            <td><c:out value="${order.product}" /></td>
                            <td><c:out value="${order.category}" /></td>
                            <td><c:out value="${order.qty}" /></td>
                            <td><c:out value="${order.amount}" /></td>
                            <td><a href="orderdelete.jsp?id=<c:out value='${order.id}'/>">Delete</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>

        </div>
<a href="dashboard.jsp" style="text-align:right; color:white"><h3>Dashboard</h3></a>

    </body>
</html>
