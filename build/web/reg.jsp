<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<html>
    <head>
        <title>Register</title>
    </head>
    <body>

                <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                                   url="jdbc:mysql://localhost/warehouse_management"
                                   user="root"  password=""/>


                <sql:update dataSource="${dbsource}" var="result">
                    INSERT INTO register(username, first_name, last_name, email, password) VALUES (?,?,?,?,?);
                    <sql:param value="${param.username}" />
                    <sql:param value="${param.first_name}" />
                    <sql:param value="${param.last_name}" />
                    <sql:param value="${param.email}" />
                    <sql:param value="${param.password}" />
                </sql:update>
                <c:choose>
                    <c:when test="${result>=1}">
                        <font size="5" color='green'> Congratulations ! Registered
                        successfully.</font>

                        <c:redirect url="index.jsp" >
                            <c:param name="susMsg" value="Congratulations ! Registered
                                     successfully." />
                        </c:redirect>
                    </c:when> 
                    <c:otherwise>
                        <font size="5" color='green'> Sorry ! Registered
                        Again with all the details.</font>

                        <c:redirect url="register.jsp" >
                        </c:redirect>
                    </c:otherwise>
                </c:choose>

    </body>
</html>