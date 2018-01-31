<%-- 
    Document   : electronica
    Created on : Jan 14, 2018, 1:22:31 AM
    Author     : Ruben
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title> HulaHopp - Tienda Segunda Mano </title>
        <script type="application/x-javascript"> 
            addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } 
        </script>

        <!-- // Apps Moviles -->
        <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />

        <!-- Iconos -->
        <link href="../css/font-awesome.css" rel="stylesheet"> 

        <!-- // Fuente para los iconos -->

        <script src="../js/jquery-1.11.1.min.js"></script>
        <link href='//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>

        <!-- Scroll Smooth para web -->
        <script type="text/javascript" src="../js/move-top.js"></script>
        <script type="text/javascript" src="../js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
    </head>

    <body>
        <div class="logo_web">
            <div class="container">
                <div class="logo_web_left">
                    <h1><a href="/ProyectoDAW/Controlador/Home"> HULAHOPP </a></h1>
                </div>
            </div>
        </div>

        <div class="navigation">
            <div class="container">
                <c:choose>
                    <c:when test="${sessionScope.user != null}">
                        <nav class="navbar navbar-default">
                            <div class="navbar-header nav_2">
                                <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div> 
                            <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                                <ul class="nav navbar-nav">
                                    <li class="active"><a href="/ProyectoDAW/Controlador/Home" >Inicio</a></li>
                                    <li class=" nav-item dropdown">
                                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">Ver Artículos<b class="caret"></b></a>
                                        <ul class="dropdown-menu multi-column columns-3">
                                            <div class="row">
                                                <div class="multi-gd-img">
                                                    <ul class="multi-column-dropdown">
                                                        <h6>Artículos</h6>
                                                        <li><a href="/ProyectoDAW/Articulos/FiltroArticulos?categoria=Electronica">Electrónica</a></li>
                                                        <li><a href="/ProyectoDAW/Articulos/FiltroArticulos?categoria=Libros">Libros</a></li>
                                                        <li><a href="/ProyectoDAW/Articulos/FiltroArticulos?categoria=Juegos">Juegos</a></li>
                                                        <li><a href="/ProyectoDAW/Articulos/FiltroArticulos?categoria=Ropa">Ropa</a></li>
                                                        <li><a href="/ProyectoDAW/Articulos/FiltroArticulos?categoria=Coches">Coches</a></li>
                                                        <li><a href="/ProyectoDAW/Articulos/FiltroArticulos?categoria=Otros">Otros</a></li>
                                                    </ul>
                                                </div>	
                                            </div>
                                        </ul>
                                    </li>
                                    <li><a href="/ProyectoDAW/Controlador/Publicar">Publicar </a></li>
                                    <li><a href="/ProyectoDAW/Controlador/Favoritos">Favoritos</a></li>
                                    <li><a href="/ProyectoDAW/Usuarios/CerrarSesion" method="POST">Cerrar Sesión</a></li>
                                </ul>
                            </div>
                        </nav>
                    </c:when>
                    <c:when  test="${sessionScope.user == null}">
                        <nav class="navbar navbar-default">
                            <div class="navbar-header nav_2">
                                <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div> 
                            <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                                <ul class="nav navbar-nav">
                                    <li class="active"><a href="/ProyectoDAW/Controlador/Home" >Inicio</a></li>
                                    <li class=" nav-item dropdown">
                                        <a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">Ver Artículos<b class="caret"></b></a>
                                        <ul class="dropdown-menu multi-column columns-3">
                                            <div class="row">
                                                <div class="multi-gd-img">
                                                    <ul class="multi-column-dropdown">
                                                        <h6>Artículos</h6>
                                                        <li><a href="/ProyectoDAW/Articulos/FiltroArticulos?categoria=Electronica">Electrónica</a></li>
                                                        <li><a href="/ProyectoDAW/Articulos/FiltroArticulos?categoria=Libros">Libros</a></li>
                                                        <li><a href="/ProyectoDAW/Articulos/FiltroArticulos?categoria=Juegos">Juegos</a></li>
                                                        <li><a href="/ProyectoDAW/Articulos/FiltroArticulos?categoria=Ropa">Ropa</a></li>
                                                        <li><a href="/ProyectoDAW/Articulos/FiltroArticulos?categoria=Coches">Coches</a></li>
                                                        <li><a href="/ProyectoDAW/Articulos/FiltroArticulos?categoria=Otros">Otros</a></li>
                                                    </ul>
                                                </div>	
                                            </div>
                                        </ul>
                                    </li>
                                    <li><a href="/ProyectoDAW/Controlador/Alta">Alta</a></li>
                                </ul>
                            </div>
                        </nav>
                    </c:when>
                </c:choose>
            </div>
        </div>

        <div class="products">
            <div class="container">

                <div class="col-md-8 products-right">
                    <c:choose>
                        <c:when test="${sessionScope.favoritos != null}">
                            <c:forEach var="fav" items="${sessionScope.favoritos}">
                                <div class="col-md-4 top_brand_left">
                                    <div class="hover14 column">
                                        <div class="agile_top_brand_left_grid">
                                            <div class="agile_top_brand_left_grid1">
                                                <figure>
                                                    <div class="snipcart-item block">
                                                        <div class="snipcart-thumb">
                                                            <a href="/ProyectoDAW/Articulos/Articulo?id=${fav.id}&favMode=false"><img src="../images/${fav.foto}" height="150px" width="150px"></a>		
                                                            <br><br><p> ${fav.nombre} </p>
                                                            <h4> ${fav.precio}€ </h4>
                                                        </div>
                                                    </div>
                                                </figure>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </c:when>
                        <c:when test="${sessionScope.favoritos == null}">
                            <div class="col-md-4 top_brand_left">
                                <div class="hover14 column">
                                    <div class="agile_top_brand_left_grid">
                                        <div class="agile_top_brand_left_grid1">
                                            <figure>
                                                <div class="snipcart-item block">
                                                    <div class="snipcart-thumb">
                                                    </div>
                                                </div>
                                            </figure>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:when>
                    </c:choose>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>

        <div class="footer">
            <div class="container">
                <div class="footer_grids">
                    <div class="col-md-3 footer_grid">
                        <h3>Contacto</h3>
                        <ul class="address">
                            <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Universidad de Huelva <span>Huelva, Espa&ntilde;a</span></li>
                            <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:rubenandres.gonzalez@alu.uhu.es">rgm@alu.uhu.es</a></li>
                            <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+34 123 456 789</li>
                        </ul>
                    </div>
                    <div class="col-md-3 footer_grid">
                        <h3>Información</h3>
                        <ul class="info"> 
                            <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="/ProyectoDAW/Controlador/SobreNosotros">Sobre Nosotros </a></li>
                            <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="/ProyectoDAW/Controlador/Contactanos">Cont&aacute;ctanos</a></li>
                            <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="/ProyectoDAW/Controlador/PreguntasFrecuentes">FAQ's</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 footer_grid">
                        <h3>Categoría</h3>
                        <ul class="info"> 
                            <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="/ProyectoDAW/Articulos/FiltroArticulos?categoria=Electronica">Electrónica</a></li>
                            <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="/ProyectoDAW/Articulos/FiltroArticulos?categoria=Libros">Libros</a></li>
                            <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="/ProyectoDAW/Articulos/FiltroArticulos?categoria=Juegos">Juegos</a></li>
                            <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="/ProyectoDAW/Articulos/FiltroArticulos?categoria=Ropa">Ropa</a></li>
                            <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="/ProyectoDAW/Articulos/FiltroArticulos?categoria=Coches">Coches</a></li>
                            <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="/ProyectoDAW/Articulos/FiltroArticulos?categoria=Otros">Otros</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3 footer_grid">
                        <h3>Perfil</h3>
                        <ul class="info"> 
                            <c:choose>
                                <c:when test="${sessionScope.user != null}">
                                    <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="/ProyectoDAW/Usuarios/CerrarSesion">Cerrar Sesión</a></li>
                                        </c:when>
                                        <c:when test="${sessionScope.user == null}">
                                    <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="/ProyectoDAW/Controlador/IniciarSesion">Acceder</a></li>
                                    <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="/ProyectoDAW/Controlador/Alta">Crear Cuenta</a></li>
                                        </c:when>
                                    </c:choose>
                        </ul>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>

            <div class="footer-copy">
                <div class="container">
                    <p>&copy; 2018 HulaHopp. Todos los derechos están reservados | Diseñado por <a href="http://www.twitter.com/RSostenido">Rubén González Membrilla </a></p>
                </div>
            </div>
        </div>		

        <script src="../js/bootstrap.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $().UItoTop({easingType: 'easeOutQuart'});
            });
        </script>

    </body>
</html>
