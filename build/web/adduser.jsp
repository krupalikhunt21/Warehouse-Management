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
                    INSERT INTO users(first_name, last_name, city_name, phone, email, department) VALUES (?,?,?,?,?,?);
                    
                    <sql:param value="${param.fname}" />
                    <sql:param value="${param.lname}" />
                    <sql:param value="${param.city}" />
                    <sql:param value="${param.phone}" />
                    <sql:param value="${param.email}" />
                    <sql:param value="${param.dep}" />
                </sql:update>
                <c:choose>
                    <c:when test="${result>=1}">
                        <font size="5" color='green'> Congratulations ! New User added successfully.</font>

                        <c:redirect url="users.jsp" >
                            <c:param name="susMsg" value="Congratulations ! Registered
                                     successfully." />
                        </c:redirect>
                    </c:when> 
                    <c:otherwise>
                        <font size="5" color='green'> Sorry ! Somthing went wrong, please try again..</font>

                        <c:redirect url="us.jsp" >
                        </c:redirect>
                    </c:otherwise>
                </c:choose>

    </body>
</html>