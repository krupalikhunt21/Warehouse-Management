<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Add New Order</title>

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
                            <h2 style="color: black" class="form-title">Add New Order</h2>
                            <form method="POST" class="adduser" action="orderprocess.jsp" id="addproduct">
                                
                                <div class="form-group">
                                    <label for="cname"></label>
                                    <input type="text" name="cname" id="cname" placeholder="Customer Name" required/>
                                </div>
                                <div class="form-group">
                                    <label for="address"></label>
                                    <input type="text" name="address" id="address" placeholder="Address" required/>
                                </div>
                                
                                
                                <div class="form-group">
                                    <label for="phone"></label>
                                    <input type="tel" name="phone" id="phone" placeholder="Contact Number " required/>
                                </div>

                                <div class="form-group">
                                    <label for="pr"></label>
                                    <input type="text" name="product" id="product" placeholder="Product Name" required/>
                                </div>
                                <div class="form-group">
                                    <label for="category_name"></label>
                                    <input type="text" name="category_name" id="category_name" placeholder="Category Name" required/>
                                </div>
                                <div class="form-group">
                                    <label for="qty"></label>
                                    <input type="number" name="qty" id="qty" placeholder="Quantity" required/>
                                </div>
                                
                                <div class="form-group">
                                    <label for="amount"></label>
                                    <input type="number" name="amount" id="amount" placeholder="Amount" required/>
                                </div>
                                <div class="form-group form-button">
                                    <input type="submit" name="submit" id="submit" class="form-submit" value="Add Order" required/>
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