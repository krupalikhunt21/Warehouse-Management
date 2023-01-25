<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
    <head>
        <title>Add New Order</title>
    </head>
    <body>

                <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                                   url="jdbc:mysql://localhost/warehouse_management"
                                   user="root"  password=""/>


                <sql:update dataSource="${dbsource}" var="result">
                    INSERT INTO orders(customer_name,address, contact_no, product, category, qty, amount) VALUES (?,?,?,?,?,?,?);
                    <sql:param value="${param.cname}" />
                    <sql:param value="${param.address}" />
                    <sql:param value="${param.phone}" />
                    <sql:param value="${param.product}" />
                    <sql:param value="${param.category_name}" />
                    <sql:param value="${param.qty}" />
                    <sql:param value="${param.amount}" />
                </sql:update>
                <c:choose>
                    <c:when test="${result>=1}">
                        <font size="5" color='green'> Congratulations ! New Order added successfully.</font>

                        <c:redirect url="orders.jsp" >
                           
                        </c:redirect>
                    </c:when> 
                    <c:otherwise>
                        <font size="5" color='green'> Sorry ! Something went wrong, please try again..</font>

                        <c:redirect url="orderform.jsp" >
                        </c:redirect>
                    </c:otherwise>
                </c:choose>

    </body>
</html>