<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Add New Product</title>

        <!-- Font Icon -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Main css -->
        <link rel="stylesheet" href="style.css">
    </head>
    <body>
        <br>
        <br>
        <div class>

            <!-- Sing in  Form -->
            <section class="sign-in">
                <div class="container" id="c4">
                    <div class="signin-content">
                        <div class="signin-image">
                            <figure><img src="addproduct.png" alt="sing up image"></figure>

                        </div>

                        <div class="signin-form">
                            <h2 style="color: black" class="form-title">Add New Category</h2>
                            <form method="POST" class="adduser" action="categoryprocess.jsp" id="addproduct">
                                
                                <div class="form-group">
                                    <label for="cname"></label>
                                    <input type="text" name="cname" id="cname" placeholder="Category Name" required/>
                                </div>
                                <div class="form-group">
                                    <label for="des"></label>
                                    <input type="text" name="des" id="des" placeholder="Description" required/>
                                </div>
                                
                                <div class="form-group">
                                    <label for="status"></label>
                                    <input type="text" name="status" id="status" placeholder="Available Or Not " required/>
                                </div>

                                <div class="form-group form-button">
                                    <input type="submit" name="submit" id="submit" class="form-submit" value="Add Category" required/>
                                </div>
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