<%@page import="java.sql.ResultSet"%>
<!doctype html>


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
    <!--Top Bar Starts here-->
    <div class="topBar">
    	
	</div>
    <!--top Bar Ends here-->
    
    <div class="header">
    	<div class="row">
        	<div class="medium-4 small-12 columns logo-wrap">
            	<a href="#">
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
                    <li class="single-sub"><a href="index.html">Inicio</a>
                        <ul class="menu vertical">
                            <li><a href="list-shop.jsp">Libros</a></li>
                            <li><a href="cart.jsp">Compras</a></li>
                          </ul>
                        </li>
                      
                    
                    <li><a href="about.html">About Us</a></li>
                    
                            </div>
                      
              </div>
            </div>
            <!--Navigation Code Ends here--->
        </div>
<!---------BreadCrumbs ends------------->
    
    <!-------------Content Area----------------->
    <div class="content-area">
	    <div class="row">
        	<div class="medium-9 medium-push-3 small-12 columns">
                <!----------Title Container ends here-------->
               <div class="medium-12 columns">
                   <center><img src="images/help/testy.jpg" /></center>
                    <div class="category-banner">
                        <div class="shop-title">
                            <h1>Líbreria / Orelma</h1>
                        </div>
                    </div>
                    <div class="clearfix"></div>
               </div>
               <div class="clearfix"></div>
               <!----------Title Container ends here-------->            	         
                
                <div class="medium-12 columns">
                <div class="product-filter">
					<div class="grid-filter medium-4 small-5 columns">
	    				<a class="active" href="#"><i class="fa fa-th-large"></i></a>
    					<a href="#"><i class="fa fa-list"></i></a>
					</div>

					<div class="medium-4 small-7 columns byview">
    					<div class="float-center">
                        <em>View:</em>
    					 <form method="get" action="">
        					<select name="ppp">
	                        <option value="6">06</option>
    				        <option selected="" value="9">09</option>
            				<option value="15">15</option>
            				<option value="20">20</option>
            				<option value="50">50</option>
            				<option value="100">100</option>
        					</select>
            			</form>    
    					</div>
					</div>
                    
					<div class="medium-4 small-12 columns sortby">
						<div class="pull-right">
                        <form method="get">
						<em>Sort by:</em> 
    					<select name="orderby" class="orderby">
						<option value="menu_order" selected="selected">Default sorting</option>
						<option value="popularity">Sort by popularity</option>
						<option value="rating">Sort by average rating</option>
						<option value="date">Sort by newness</option>
						<option value="price">Sort by price: low to high</option>
						<option value="price-desc">Sort by price: high to low</option>
						</select>
						</form>
                        </div>
				</div>
                <div class="clearfix"></div>
            	</div>
                </div>
                <!--Product Filters Ends here.--->
                <div class="clearfix"></div>
                
                <div class="products-wrap new-products list-view-products">
                    
                    <div class="medium-12 small-12 columns">
                        <div class="single-product-wrap">
                            <div class="single-product medium-4 small-12 columns">
                                <div class="product-img">
                                    <a href="single-product.html">
                                        <img class="front-image" src="images/help/product2.png" alt="">
	                                    <img class="secondary-image" src="images/help/product2_2.png" alt="">
                                    </a>
                                    <span class="sale">sale</span>
                                </div>
							</div>
                                                        
                            <div class="product-info medium-8 small-12 columns">
                                <h6><a href="single-product.html">Feugiat justo lacinia</a></h6>
                                <div class="price">
                                    <span class="normal">150$</span>
                                    <span class="old">180$</span>
                                    <div class="pro-rating float-right">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div class="clearfix"></div>
                               </div> 
                               <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>
                                        <ul class="menu product-options">
                                        	<li><a href="#" class="button">add to cart</a></li>
                                            <li><a href="#" title="Add to wish list"><i class="fa fa-heart"></i></a></li>
                                        	<li><a href="#" title="Share With Friends"><i class="fa fa-retweet"></i></a></li>
                                        	<li><a href="#" title="View Product"><i class="fa fa-search-plus"></i></a></li>
                                    	</ul>
                                                               
                            </div>
                        <div class="clearfix"></div>
                        </div>
                    </div><!--product Ends here-->
                    
                    <div class="medium-12 small-12 columns">
                        <div class="single-product-wrap">
                            <div class="single-product medium-4 small-12 columns">
                                <div class="product-img">
                                    <a href="single-product.html">
                                        <img class="front-image" src="images/help/product1.png" alt="">
	                                    <img class="secondary-image" src="images/help/product1_2.png" alt="">
                                    </a>
                                    <span class="sale">sale</span>
                                </div>
							</div>
                                                        
                            <div class="product-info medium-8 small-12 columns">
                                <h6><a href="single-product.html">Feugiat justo lacinia</a></h6>
                                <div class="price">
                                    <span class="normal">150$</span>
                                    <span class="old">180$</span>
                                    <div class="pro-rating float-right">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div class="clearfix"></div>
                               </div> 
                               <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>
                                        <ul class="menu product-options">
                                        	<li><a href="#" class="button">add to cart</a></li>
                                            <li><a href="#" title="Add to wish list"><i class="fa fa-heart"></i></a></li>
                                        	<li><a href="#" title="Share With Friends"><i class="fa fa-retweet"></i></a></li>
                                        	<li><a href="#" title="View Product"><i class="fa fa-search-plus"></i></a></li>
                                    	</ul>
                                                               
                            </div>
                        <div class="clearfix"></div>
                        </div>
                    </div><!--product Ends here-->
                    
                    <div class="medium-12 small-12 columns">
                        <div class="single-product-wrap">
                            <div class="single-product medium-4 small-12 columns">
                                <div class="product-img">
                                    <a href="single-product.html">
                                        <img class="front-image" src="images/help/product2.png" alt="">
	                                    <img class="secondary-image" src="images/help/product2_2.png" alt="">
                                    </a>
                                    <span class="sale">sale</span>
                                </div>
							</div>
                                                        
                            <div class="product-info medium-8 small-12 columns">
                                <h6><a href="single-product.html">Feugiat justo lacinia</a></h6>
                                <div class="price">
                                    <span class="normal">150$</span>
                                    <span class="old">180$</span>
                                    <div class="pro-rating float-right">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div class="clearfix"></div>
                               </div> 
                               <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>
                                        <ul class="menu product-options">
                                        	<li><a href="#" class="button">add to cart</a></li>
                                            <li><a href="#" title="Add to wish list"><i class="fa fa-heart"></i></a></li>
                                        	<li><a href="#" title="Share With Friends"><i class="fa fa-retweet"></i></a></li>
                                        	<li><a href="#" title="View Product"><i class="fa fa-search-plus"></i></a></li>
                                    	</ul>
                                                               
                            </div>
                        <div class="clearfix"></div>
                        </div>
                    </div><!--product Ends here-->
                    
                    <div class="medium-12 small-12 columns">
                        <div class="single-product-wrap">
                            <div class="single-product medium-4 small-12 columns">
                                <div class="product-img">
                                    <a href="single-product.html">
                                        <img class="front-image" src="images/help/product6.png" alt="">
	                                    <img class="secondary-image" src="images/help/product6_2.png" alt="">
                                    </a>
                                    <span class="sale">sale</span>
                                </div>
							</div>
                                                        
                            <div class="product-info medium-8 small-12 columns">
                                <h6><a href="single-product.html">Feugiat justo lacinia</a></h6>
                                <div class="price">
                                    <span class="normal">150$</span>
                                    <span class="old">180$</span>
                                    <div class="pro-rating float-right">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div class="clearfix"></div>
                               </div> 
                               <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>
                                        <ul class="menu product-options">
                                        	<li><a href="#" class="button">add to cart</a></li>
                                            <li><a href="#" title="Add to wish list"><i class="fa fa-heart"></i></a></li>
                                        	<li><a href="#" title="Share With Friends"><i class="fa fa-retweet"></i></a></li>
                                        	<li><a href="#" title="View Product"><i class="fa fa-search-plus"></i></a></li>
                                    	</ul>
                                                               
                            </div>
                        <div class="clearfix"></div>
                        </div>
                    </div><!--product Ends here-->
                    
                    <div class="clearfix"></div>
                </div><!--products-wrap ends here-->
                
                <div class="medium-12 columns">
                <div class="product-filter">
					<div class="grid-filter medium-4 small-4 columns">
	    				<a class="active" href="#"><i class="fa fa-th-large"></i></a>
    					<a href="#"><i class="fa fa-list"></i></a>
					</div>

					<div class="medium-8 small-8 columns byview">
    					<div class="pagination-container">
                            <ul class="pagination" role="menubar" aria-label="Pagination">
                              <li class="arrow unavailable" aria-disabled="true"><a href="">&laquo; Previous</a></li>
                              <li class="current"><a href="">1</a></li>
                              <li><a href="">2</a></li>
                              <li><a href="">3</a></li>
                              <li><a href="">4</a></li>
                              <li class="unavailable" aria-disabled="true"><a href="">&hellip;</a></li>
                              <li><a href="">12</a></li>
                              <li><a href="">13</a></li>
                              <li class="arrow"><a href="">Next &raquo;</a></li>
                            </ul>
                        </div>
					</div>
                <div class="clearfix"></div>
            	</div>
                </div>
                <!--Product Filters Ends here.--->
            </div>
            <!--content are ends-->
            
            <div class="medium-3 medium-pull-9 small-12 columns shop-sidebar sidebar">
            	<!--widget Ends-->
                <div class="widget">
                	<h2>Buscar Libros</h2>
                    
                    <div class="input-group">
                  		<input class="input-group-field" placeholder="Ingrese el nombre del libro a buscar..." type="text">
                	</div>
                </div>
                
                <div class="widget">
                	<h2>Categorias</h2>
                    
                    <select class="menu vertical">
                        <option value="0" disabled selected="true">Seleccione</option>
                                       
                        
                    </select>
                </div><!--widget ends-->
                
                
                
                
                
                
                
                
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
