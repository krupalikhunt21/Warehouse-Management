<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            #r1 {
                border-radius: 25px;
                padding: 20px; 
                width: 300px;
                height: 150px;  
            }
            ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                background-color: #333;
            }

            li {
                float: left;
            }

            li a {
                display: block;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

            li a:hover:not(.active) {
                background-color: #111;
            }
        </style>
    </head>
    <body style="background-color:black; color:white">


        <div class="content-wrapper">
            <h1>
                &nbsp;&nbsp;&nbsp; MY WAREHOUSE

            </h1>
            <section class="content-header">

                <ul>
                    <li><a href="dashboard.jsp">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Dashboard</a></li>
                    <li style="float:right"><a href="logout.jsp"><i class="fa fa-logout"></i>  Log Out</a></li>
                </ul>
            </section>
            <div class="container" style="text-align: center">
            <section class="content"  style="text-align:center">
                <div class="container">
                    <div style="text-align: center" class="row">
                        <div >
                           
                            <a href="users.jsp">
                                <img id="r1"  src="user.PNG" >
                            </a>
                        </div>

                        <div >
                            <a href="product.jsp">
                                <img id="r1"  src="product.PNG" >
                            </a>
                        </div>
                        <div>
                            <a href="category.jsp">
                                <img id="r1"  src="categories.PNG" >
                            </a>
                        </div>
                    </div>
                    <div class="row">
                     

                        <div style="text-align:center" >
                            <a href="orders.jsp">
                                <img id="r1"  src="orders.PNG" >
                            </a>
                        </div>
                       
                    </div>
                </div>
            </section>
        </div>

        </div>
    </body>
</html>
