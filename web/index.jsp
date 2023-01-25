<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<?php include('server.php') ?>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Login</title>

        <!-- Font Icon -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Main css -->
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <br>
        <br><br>
        <div class>

            <!-- Sing in  Form -->
            <section class="sign-in">
                <div class="container" id="c1">
                    <div class="signin-content">
                        <div class="signin-image">
                            <figure><img src="warehouse.jpg" alt="sing up image"></figure>
                            <h2 style="color:black;text-align: center">Warehouse Management System</h2>

                        </div>

                        <div class="signin-form">
                            <h2 class="form-title">Login</h2>
                            <form method="POST" class="register-form" action="loginprocess.jsp" id="login-form">
                                <div class="form-group">
                                    <label for="your_name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                    <input type="text" name="username" id="username" placeholder="username"/>
                                </div>
                                <div class="form-group">
                                    <label for="your_pass"><i class="zmdi zmdi-lock"></i></label>
                                    <input type="password" name="password" id="password" placeholder="Password"/>
                                </div>

                                <div class="form-group form-button">
                                    <input type="submit" name="submit" id="submit" class="form-submit" value="Log in"/>
                                </div>
                                <a href="register.jsp" class="signup-image-link">Create an account</a>
                            </form>

                        </div>
                    </div>
                </div>
            </section>

        </div>

        <!-- JS -->
        <script src="jquery.min.js"></script>
        <script src="js/main.js"></script>
    </body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>