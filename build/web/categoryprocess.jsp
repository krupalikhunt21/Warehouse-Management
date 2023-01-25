<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
    <head>
        <title>Add New User</title>
    </head>
    <body>

                <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                                   url="jdbc:mysql://localhost/warehouse_management"
                                   user="root"  password=""/>


                <sql:update dataSource="${dbsource}" var="result">
                    INSERT INTO categories(category_name,Description, status) VALUES (?,?,?);
                    <sql:param value="${param.cname}" />
                    <sql:param value="${param.des}" />
                    <sql:param value="${param.status}" />
                </sql:update>
                <c:choose>
                    <c:when test="${result>=1}">
                        <font size="5" color='green'> Congratulations ! New Category added successfully.</font>

                        <c:redirect url="category.jsp" >
                           
                        </c:redirect>
                    </c:when> 
                    <c:otherwise>
                        <font size="5" color='green'> Sorry ! Something went wrong, please try again..</font>

                        <c:redirect url="categoryform.jsp" >
                        </c:redirect>
                    </c:otherwise>
                </c:choose>

    </body>
</html>