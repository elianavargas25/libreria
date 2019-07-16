<%@page import="java.util.ArrayList"%>
<%@page import="persistencia.DaoCategorias"%>
<%@page import="entidad.Categoria"%>
<%@page import="manager.Manager"%>
<%@page import="entidad.Libro"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<!doctype html>
<%
    Manager manager = new Manager();
    List<Libro> listaLibros = request.getAttribute("listaLibros") != null ? (List<Libro>) request.getAttribute("listaLibros") : new ArrayList<Libro>();

    List<Categoria> listaCategorias = manager.listarCategorias();
    //request.setAttribute("lista", listaCategorias);
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
                    </div>

                </div>
            </div>
            <!--Navigation Code Ends here--->
        </div>
        <!-------------Content Area----------------->
        <form name="ventaLibros" method="Post" id="VentaForm"
              action="./MaestroVentas" autocomplete="off" class="bod">
            <input type="hidden" name="action" id="action"> 
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

                        <!--Product Filters Ends here.--->
                        <div class="clearfix"></div>

                        <div class="products-wrap new-products list-view-products">


                            <div class="medium-12 small-12 columns">
                                <div class="single-product-wrap">
                                    <%for (Libro lib : listaLibros) {%>
                                    <div class="single-product medium-4 small-12 columns">
                                        <div class="product-img"><%=lib.getIdLibro()%></div>                                
                                    </div>

                                    <div class="product-info medium-8 small-12 columns">
                                        <h6><a><%=lib.getNombreLibro()%></a></h6>
                                        <div class="price">
                                            <span class="normal">Precio $<%=lib.getValor()%></span>
                                            <div class="clearfix"></div>
                                        </div> 
                                        <h4><p>Nro de páginas <%=lib.getNroPaginas()%></p></h4>
                                        <p>Autor <%=lib.getAutor().getAutor().getNombreAutor()%></p>
                                        <p>Ubicación <%=lib.getUbicacion().getNombreUbicacion()%></p>
                                        <ul class="menu product-options">
                                            <li><input type="submit" class="button alt"  id="lista" name="lista" onchange="$('#action').val('Agregar Lista');
                                    $('#VentaForm').submit();">Agregar lista</li>
                                        </ul>
                                    </div>
                                    <div class="clearfix"></div>
                                    <%}%>
                                </div>
                            </div><!--product Ends here-->

                            <div class="clearfix"></div>
                        </div><!--products-wrap ends here-->

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

                            <select class="menu vertical" id = "idCategoria" name="categoria" onchange="$('#action').val('Consultar');
                                    $('#VentaForm').submit();">
                                <option value="0" disabled selected="true">Seleccione</option>
                                <%for (Categoria cat : listaCategorias) {%>
                                <option value=<%=cat.getIdCategoria()%>><%=cat.getDescripcion()%></option>
                                <%}%>
                            </select>
                        </div><!--widget ends-->
                    </div>   
                </div>
            </div>
        </form>>
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
