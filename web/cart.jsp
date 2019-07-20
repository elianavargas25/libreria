<%@page import="java.util.ArrayList"%>
<%@page import="entidad.Libro"%>
<%@page import="java.util.List"%>
<!doctype html>
<%
    //List<Libro> listaLibro = session.getAttribute("listaLibros") != null ? (List<Libro>) session.getAttribute("listaLibros") : new ArrayList<>();
    List<Libro> listaLibro = request.getAttribute("listaLibros") != null ? (List<Libro>) request.getAttribute("listaLibros") : new ArrayList<Libro>();

    if (session.getAttribute("listaLibros") != null || session.getAttribute("listaLibros") != "") {
        List<Libro> listaLibros = (ArrayList<Libro>) session.getAttribute("listaLibros");
        listaLibro = listaLibros;
    }
    String mensaje = request.getAttribute("mensaje") != null
            ? (String) request.getAttribute("mensaje") : null;
%>
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

        <!--top Bar Ends here-->

        <div class="header">
            <div class="row">
                <div class="medium-4 small-12 columns logo-wrap">
                    <a href="index.html">
                        <img src="images/libreria.jpg"  class="logo" />
                    </a>
                </div>
            </div>
        </div>

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
                    <div><center>  <h3><%=mensaje != null ? mensaje : ""%></h3></center></div>

                    <form name="detalleCompra" method="post" id="DetalleForm"
                          action="./MaestroDetalle" autocomplete="off" class="bod">
                        <input type="hidden" name="action" id="action"> 
                        <input type="hidden" name="lista" id="lista">
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
                                        <%if (listaLibro != null) {%>
                                        <%for (Libro lib : listaLibro) {%>
                                        <tr class="cart_item">

                                            <td class="product-remove">
                                                <a href="" class="remove" title="Remove this item"><span class="fa fa-close"></span></a>				
                                            </td>

                                            <td class="product-thumbnail">
                                                <input type="hidden" id="idLibro" name="txtIdlibro" value="<%=lib.getIdLibro()%>">
                                                <a href=""><img width="114" height="130" src="images/libro.jpg" alt=""></a>					
                                            </td>

                                            <td class="product-name">
                                                <a><%=lib.getNombreLibro()%> </a>												
                                                <div class="">
                                                    <span class="amount">$&nbsp;<%=lib.getValor()%></span>
                                                </div>
                                            </td>

                                            <td class="product-price">
                                                <input type="hidden" id="precio_<%=lib.getIdLibro()%>" name="txtPrecio" value="<%=lib.getValor()%>">
                                                <span class="amount">$&nbsp;<%=lib.getValor()%></span>
                                            </td>

                                            <td class="product-quantity">
                                                <div class="quantity buttons_added">
                                                    <input type="number" step="1" min="0" max="" id="cantidad_<%=lib.getIdLibro()%>" name="txtCantidad" value="" title="Qty" class="input-text qty text" size="4" onchange="multiplicar(<%=lib.getIdLibro()%>);">
                                                </div>
                                            </td>

                                            <td class="product-subtotal">
                                                <input id="valorTotal_<%=lib.getIdLibro()%>" name="txtValorTotal" class="amount" readonly="readonly"> <!-- $&nbsp;--> </span>					
                                            </td>
                                        </tr>
                                        <%}%>
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
                                                <th>Total Compra</th>
                                        <input type="hidden" name="txtTotal">
                                        <td data-title="Total"><span id="valorTotal" name="txtTotal" class="amount"></span></td>
                                        </tr>
                                        </tbody></table>
                                </div>


                                <input type="button" class="button alt"  name="guardar" value="Comprar" onclick="$('#action').val('Guardar');
                                        $('#DetalleForm').submit();" >



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
        <script src="js/calcularValor.js"></script>

    </body>
</html>
