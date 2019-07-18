<%@page import="java.util.ArrayList"%>
<%@page import="entidad.Libro"%>
<%@page import="java.util.List"%>
<!doctype html>
<%
 //List<Libro> listaLibro = session.getAttribute("listaLibros") != null ? (List<Libro>) session.getAttribute("listaLibros") : new ArrayList<>();
 List<Libro> listaLibro = request.getAttribute("listaLibros") != null ? (List<Libro>) request.getAttribute("listaLibros") : new ArrayList<Libro>();
%>
<html>
<head>
    <!--important for page-->
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Home one | Webful Accessories</title>
	
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
   
    <!--top Bar Ends here-->
    
    <div class="header">
    	<div class="row">
        	<div class="medium-4 small-12 columns logo-wrap">
            	<a href="index.html">
	                <img src="images/libreria.jpg"  class="logo" />
				</a>
            </div>
           
            <div class="medium-4 small-12 columns cart-option">
                <a data-toggle="cart-container" class="float-right"><span class="info">2 Item(s) - $240.00</span>  <i class="fa fa-shopping-cart"></i></a>
                <div class="clearfix"></div>
				<div class="dropdown-pane bottom right" id="cart-container" data-dropdown data-hover="true" data-hover-pane="true">
					  <h5>Your Cart Detail</h5>
                      <table border="1px">
                      	<tr>
                        	<td><img src="images/help/product4.jpg" border="1px" width="50px" height="50px" /></td>
                            <td>Beautiful Rhinestone Pearl Earrings <br>
                            	2x $ 140
                            </td>
                            <td>280</td>
                        </tr>
                        <tr>
                        	<td><img src="images/help/product4.jpg" border="1px" width="50px" height="50px" /></td>
                            <td>Beautiful Rhinestone Pearl Earrings <br>
                            	2x $ 140
                            </td>
                            <td>400</td>
                        </tr>
                      </table>
                      <hr>
                      <center><strong>Subtotal: $ 240 </strong></center>
                      <hr>	
                      <a href="cart.html" class="button primary float-center">View Cart</a>
                      <a href="checkout.html" class="button success float-center">Checkout</a>
					<div class="clearfix"></div>
                </div>
                
            </div><!--cart option ends -->
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
    <!-------------Content Area----------------->
    <div class="content-area">
	    <div class="row">
        	<div class="medium-12 columns">
            <h1>Detalle Compra</h1>
            
            <form action="" method="post">
				<div class="medium-8 small-12 columns">
					<div class="cart-wrapper">
                        <table class="shop_table cart responsive" cellspacing="0">
                            <thead>
                                <tr>
                                    <th class="product-name" colspan="3">Producto</th>
                                    <th class="product-price">Precio</th>
                                    <th class="product-quantity">Cantidad</th>
                                    <th class="product-subtotal">Total</th>
                                </tr>
                            </thead>
                        
                            <tbody>
                                <%for (Libro lib : listaLibro) {%>
                                <tr class="cart_item">
                        
                                        <td class="product-remove">
                                            <a href="" class="remove" title="Remove this item"><span class="fa fa-close"></span></a>				
                                         </td>
                    
                                        <td class="product-thumbnail">
                                            <a href=""><img width="114" height="130" src="images/help/j-19-114x130.png" alt=""></a>					
                                        </td>
                    
                                        <td class="product-name">
                                            <a href="#"><%=lib.getNombreLibro()%> </a>												
                                                <div class="">
                                                    <span class="amount">$&nbsp;<%=lib.getValor()%></span>
                                                 </div>
                                        </td>
                    
                                        <td class="product-price">
                                            <span class="amount">$&nbsp;<%=lib.getValor()%></span>
                                        </td>
                    
                                        <td class="product-quantity">
                                            <div class="quantity buttons_added">
                                                <input type="number" step="1" min="0" max="" name="txtCantidad" value="1" title="Qty" class="input-text qty text" size="4">
                                                </div>
                                        </td>
                    
                                        <td class="product-subtotal">
                                            <span class="amount">$&nbsp;<%=lib.getValor()%></span>					
                                        </td>
                                    </tr>
                                 <%}%>
                            </tbody>
                        
                        </table>
		            </div><!-- .cart-wrapper -->
    	        </div><!-- .large-8 -->
	
                <div class="large-4 small-12 columns">
                    <div class="cart-sidebar actions">
                        <div class="cart_totals ">
                            <h4>Total de la compra</h4>
                
                    <table cellspacing="0" class="shop_table shop_table_responsive">
                
                        <tbody><tr class="cart-subtotal">
                            <th>Subtotal</th>
                            <td data-title="Subtotal"><span class="amount">$&nbsp;140.00</span></td>
                        </tr>
                       
                        <tr class="order-total">
                            <th>Total</th>
                            <td data-title="Total"><strong><span class="amount">$&nbsp;240.00</span></strong> </td>
                        </tr>
                    </tbody></table>
                </div>
                
                        
                        <input type="submit" class="checkout-button secondary expand button" name="proceed" value="Comprar">
                
                            
                        
                    </div><!-- .cart-sidebar -->
                
                </div><!-- .large-4 -->
        </form>
       </div>     
        </div>
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
