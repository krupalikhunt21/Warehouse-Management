<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<?php include('server.php') ?>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Add New User</title>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <br>
        <br>
        <div class>

            <section class="sign-in">
                <div class="container" id="c3">
                    <div class="signin-content">
                        <div class="signin-image">
                            <figure><img src="adduser.png" alt="sing up image"></figure>

                        </div>

                        <div class="signin-form">
                            <h2 class="form-title">Add New User</h2>
                            <form method="POST" class="adduser" action="adduser.jsp" id="adduser">
                                <div class="form-group">
                                    <label for="fname"></label>
                                    <input type="text" name="fname" id="fname" placeholder="First Name"/>
                                </div>
                                <div class="form-group">
                                    <label for="lname"></label>
                                    <input type="text" name="lname" id="lname" placeholder="Last Name"/>
                                </div>
                                <div class="form-group">
                                    <label for="city"></label>
                                    <input type="text" name="city" id="city" placeholder="City"/>
                                </div>
                                <div class="form-group">
                                    <label for="phone"></label>
                                    <input type="tel" name="phone" id="phone" placeholder="Contact number"/>
                                </div>
                                <div class="form-group">
                                    <label for="email"></label>
                                    <input type="email" name="email" id="email" placeholder="email"/>
                                </div>
                                <div class="form-group">
                                    <label for="dep"><i></i></label>
                                    <input type="text" name="dep" id="dep" placeholder="Department"/>
                                </div>

                                <div class="form-group form-button">
                                    <input type="submit" name="submit" id="submit" class="form-submit" value="Add User"/>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </section>
        </div>

    </body>
</html>