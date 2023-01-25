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
                            <h2 style="color: black" class="form-title">Add New Product</h2>
                            <form method="POST" class="adduser" action="productprocess.jsp" id="addproduct">
                                <div class="form-group">
                                    <label for="pname"></label>
                                    <input type="text" name="pname" id="pname" placeholder="Product Name" required/>
                                </div>
                                <div class="form-group">
                                    <label for="cname"></label>
                                    <input type="text" name="cname" id="cname" placeholder="Category Name" required/>
                                </div>
                                <div class="form-group">
                                    <label for="pdes"></label>
                                    <input type="text" name="pdes" id="pdes" placeholder="Description" required/>
                                </div>
                                <div class="form-group">
                                    <label for="cost"></label>
                                    <input type="number" name="cost" id="cost" placeholder="Cost" required/>
                                </div>
                                <div class="form-group">
                                    <label for="sprice"></label>
                                    <input type="number" name="sprice" id="sprice" placeholder="Selling Price" required/>
                                </div>
                                <div class="form-group">
                                    <label for="qty"></label>
                                    <input type="number" name="qty" id="qty" placeholder="Quantity" required/>
                                </div>
                                <div class="form-group">
                                    <label for="availability"></label>
                                    <input type="text" name="availability" id="availability" placeholder="Available Or Not " required/>
                                </div>

                                <div class="form-group form-button">
                                    <input type="submit" name="submit" id="submit" class="form-submit" value="Add Product" required/>
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
    </body>
</html>