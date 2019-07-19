<!doctype html>
<html>
    <head>
        <!--important for page-->
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Librería | Orelma</title>

        <meta name="author" content="">
        <meta name="keywords" content="">
        <meta name="description" content="">

        <!--important for responsiveness remove to make your site non responsive.-->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!------FavIcon-------->
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png">

        <!--------------------ALL CSS HERE-------------->
        <!------Foundation-------->
        <link rel="stylesheet" type="text/css" href="css/foundation.min.css" media="all" />
        <link rel="stylesheet" type="text/css" href="css/animate.css" media="all" />
        <!---------Swiper Slider CSS------->
        <link rel="stylesheet" type="text/css" href="css/swiper.min.css" media="all" />
        <!--------Font Awesome Icons------->
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" media="all" />
        <!-----Crousel CSS------>
        <link rel="stylesheet" type="text/css" href="css/owl.carousel.css" media="all" />
        <!------Theme Styles---->
        <link rel="stylesheet" type="text/css" href="style.css" media="all" />
        <!------Colors Of site.---->
        <link rel="stylesheet" type="text/css" href="css/default-colors.css" media="all" />
    </head>

    <body>
        <!--Top Bar Starts here-->

        <div class="header">
            <div class="row">
                <div class="medium-4 small-12 columns logo-wrap">
                    <a href="index.html">
                        <img src="images/libreria.jpg"  class="logo" />
                    </a>
                </div>
            </div>
        </div><!--header Ends here.-->

        <!----------------------Navigation Starts here---------------------->
        <div class="navigation">
            <div class="row">
                <!--navigation Code STarts here..--->
                <div class="top-bar">
                    <div class="top-bar-title">
                        <span data-responsive-toggle="responsive-menu" data-hide-for="medium">
                            <a data-toggle><span class="menu-icon dark float-left"></span> <span class="navigation-icon-title">Navigation</span></a>
                        </span>
                    </div>
                    <div id="responsive-menu">
                        <ul class="dropdown menu" data-dropdown-menu>

                            <li class="single-sub"><a href="#">Inicio</a>
                                <ul class="menu vertical">
                                    <li><a href="list-shop.jsp">Libros</a></li>
                                    <li><a href="cart.jsp">Compras</a></li>
                                </ul>
                            </li>  
                        </ul>
                    </div>
                </div>
                <!--Navigation Code Ends here--->
            </div>
        </div>

        <!---------------Navigation Ends here--------------->



        <!-------------Content Area----------------->
        <div class="content-area checkout">
            <div class="row">
                <div id="content" class="large-12 columns" role="main">
                    <h1>Finalizar Compra</h1>

                    <form method="post" action="#">
                        <div class="row">
                            <div class="large-7  columns">
                                <h3>Cliente</h3>
                                <p>
                                    <label>
                                        Nombre <abbr>*</abbr>
                                    </label>
                                    <input type="text" name="" placeholder="" value="">
                                </p>
                                <p>
                                    <label>
                                        Apellidos
                                    </label>
                                    <input type="text" name="txtPrimerApellido" placeholder="Primer Apellido" value="">
                                </p>
                                <p>
                                    <input type="text" name="txtSegundoApellido" placeholder="Segundo Apellido" value="">
                                </p>
                                <p>
                                    <label>
                                        Town / City
                                    </label>
                                    <input type="text" name="" placeholder="" value="">
                                </p>
                                <p>
                                    <label>
                                        State / Country
                                    </label>
                                    <input type="text" name="" placeholder="" value="">
                                </p>
                                <p>
                                    <label>
                                        PostCode / Zip
                                    </label>
                                    <input type="text" name="" placeholder="" value="">
                                </p>
                                <p>
                                    <input type="checkbox" name="" value="1"> <label>Create an account?</label>
                                </p>
                                <p>
                                    <label>
                                        Order Notes
                                    </label>
                                    <textarea name="" placeholder="Notes about your order, e.g. special notes for delivery." rows="2" cols="5"></textarea>
                                </p>

                            </div><!-- .large-7 -->

                            <div class="large-5 columns border-container">
                                <h3>Your order</h3>
                                <table class="hover">
                                    <thead>
                                        <tr>
                                            <th>Product</th>
                                            <th>Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                Multi Round Crystal Daimond Necklace<strong>× 1</strong>													
                                            </td>
                                            <td>
                                                <span>$&nbsp;850.00</span>						
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Multi Round Crystal Daimond Necklace<strong>× 1</strong>													
                                            </td>
                                            <td>
                                                <span>$&nbsp;850.00</span>						
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                Multi Round Crystal Daimond Necklace<strong>× 1</strong>													
                                            </td>
                                            <td>
                                                <span>$&nbsp;850.00</span>						
                                            </td>
                                        </tr>
                                    </tbody>
                                    <tfoot style="border-top:2px solid #787878;">
                                        <tr>
                                            <th>Subtotal</th>
                                            <td><span>$&nbsp;850.00</span></td>
                                        </tr>
                                        <tr>
                                            <th>Shipping</th>
                                            <td>
                                                Flat Rate: <span>$&nbsp;50.00</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>Total</th>
                                            <td><strong><span>$&nbsp;950.00</span></strong> </td>
                                        </tr>
                                    </tfoot>
                                </table>
                                <label>
                                    <strong>Cash on Delivery</strong> 	
                                </label>
                                <p>Pay with cash upon delivery.</p>
                                <input type="submit" class="button alt" value="Place order">
                            </div><!-- .large-5 -->
                        </div><!-- .row -->
                    </form><!-- .checkout -->
                </div>
            </div><!--row-->
        </div>
        <!-------------Content Area Ends----------------->



        <!----------------Footer---------------->
        <div class="footer">
            <div class="footerTop">
                <div class="row">
                    <div class="large-3 medium-6 small-12 columns footer-widget">
                        <h2>Account</h2>
                        <div class="tx-div"></div>
                        <ul  class="menu vertical">
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Contact Us</a></li>
                            <li><a href="#">Term &amp; Conditions</a></li>
                            <li><a href="#">Gift Voucher</a></li>
                            <li><a href="#">BestSellers</a></li>
                        </ul>
                    </div>

                    <div class="large-3 medium-6 small-12 columns footer-widget">
                        <h2>Account</h2>
                        <div class="tx-div"></div>
                        <ul class="menu vertical">
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Contact Us</a></li>
                            <li><a href="#">Term &amp; Conditions</a></li>
                            <li><a href="#">Gift Voucher</a></li>
                            <li><a href="#">BestSellers</a></li>
                        </ul>
                    </div>

                    <div class="large-3 medium-6 small-12 columns footer-widget">
                        <h2>Get News</h2>
                        <div class="tx-div"></div>
                        <div>Fields marked with an <span>*</span> are required</div>
                        <p>Sign up for newsletter and get 10% Discount coupon.</p>
                        <div>
                            <input name="" type="text" placeholder="Your E-mail *">
                            <input type="submit" name="" class="button secondary" value="Sign up!">
                        </div>
                    </div>

                    <div class="large-3 medium-6 small-12 columns footer-widget">
                        <div class="textwidget">
                            <ul class="address">
                                <li>
                                    <i class="fa fa-home"></i>
                                    <h4>Address:</h4>
                                    <p>132 Jefferson Avenue, Suite 22,
                                        Redwood City, CA 94872, USA</p>
                                </li>
                                <li>
                                    <i class="fa fa-mobile"></i>
                                    <h4>Phone:</h4>
                                    <p>(00) 123 456 789</p>
                                </li>
                                <li>
                                    <i class="fa fa-envelope"></i>
                                    <h4>Email:</h4>
                                    <p>Name@gmail.com</p>
                                </li>
                            </ul>
                            <hr>
                            <h2>Social</h2>
                            <div class="tx-div"></div>
                            <div class="socialicons">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-google"></i></a>
                            </div>
                        </div>
                    </div>                
                    <div class="clearfix"></div>
                </div>
            </div><!--footerTop Ends here..-->
            <div class="footerbottom">
                <div class="row">
                    <div class="medium-6 small-12 columns">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">About</a></li>
                            <li><a href="#">News</a></li>
                            <li><a href="#">Shop</a></li>
                            <li><a href="#">Contact Us</a></li>
                        </ul>
                        <div class="clearfix"></div>
                        <div class="copyrightinfo">2016 &copy; <a href="#">Webful Creations Vision</a> All Rights Reserved.</div>
                    </div><!--left side-->
                    <div class="medium-6 small-12 columns hide-for-small-only">
                        <div class="payment pull-right">
                            <h2>Payment Methods</h2>
                            <a href="#"><i class="fa fa-cc-mastercard"></i></a>
                            <a href="#"><i class="fa fa-cc-visa"></i></a>
                            <a href="#"><i class="fa fa-cc-paypal"></i></a>
                            <a href="#"><i class="fa fa-cc-discover"></i></a>
                            <a href="#"><i class="fa fa-credit-card"></i></a>
                            <a href="#"><i class="fa fa-cc-amex"></i></a>
                        </div>
                    </div><!--Right Side-->
                </div>
            </div><!--footer Bottom-->
        </div>
        <!----------------Footer Ends here---------------->
        <a href="# top" id="top" class="animated fadeInUp start-anim"><i class="fa fa-angle-up"></i></a>

        <script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
        <script type="text/javascript" src="js/foundation.min.js"></script>
        <!--Crousel JS-->
        <script type="text/javascript" src="js/owl.carousel.min.js"></script>
        <!-- Swiper JS -->
        <script src="js/swiper.min.js"></script>
        <!-- Webful JS -->
        <script src="js/webful.js"></script>

    </body>
</html>
