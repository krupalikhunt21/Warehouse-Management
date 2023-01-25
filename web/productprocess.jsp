<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
    <head>
        <title>Add New Product</title>
    </head>
    <body>

        <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/warehouse_management"
                           user="root"  password=""/>


        <sql:update dataSource="${dbsource}" var="result">
            INSERT INTO product(product_name, category_name, description, cost, selling_price, quantity, availability) VALUES (?,?,?,?,?,?,?);
            <sql:param value="${param.pname}" />
            <sql:param value="${param.cname}" />
            <sql:param value="${param.pdes}" />
            <sql:param value="${param.cost}" />
            <sql:param value="${param.sprice}" />
            <sql:param value="${param.qty}" />
            <sql:param value="${param.availability}" />
        </sql:update>
        <c:choose>
            <c:when test="${result>=1}">
                <font size="5" color='green'> Congratulations ! New Product added successfully.</font>

                <c:redirect url="product.jsp" >

                </c:redirect>
            </c:when> 
            <c:otherwise>
                <font size="5" color='green'> Sorry ! Something went wrong, please try again..</font>

                <c:redirect url="productform.jsp" >
                </c:redirect>
            </c:otherwise>
        </c:choose>

    </body>
</html>