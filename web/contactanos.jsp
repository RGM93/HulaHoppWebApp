<%-- 
    Document   : contact
    Created on : Jan 14, 2018, 1:22:22 AM
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

        <div class="contact">
            <div class="container" style="width 100%"> 
                <div class="contact-info">
                    <div class="row">
                        <div class="contact-header">
                            <h2>&#161;Cont&aacute;ctanos!</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="contact-form">
                            <form action="#" method="post" style="margin-left: 25%">
                                <input type="text" name="Name" placeholder="Nombre" required="">
                                <input type="email" class="email" name="Correo Electr&oacute;nico" placeholder="Email" required="">
                                <input type="text" name="Phone" placeholder="Tel&eacute;fono" required="">
                                <textarea name="Message" placeholder="Mensaje" required=""></textarea>
                                <div class="row">
                                    <input type="submit" value="Enviar" >
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>		
        <!-- //contact -->
        <!-- map -->
            <div class="map">
                <div class="col-md-8 map-left">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3175.074076264214!2d-6.925700584564395!3d37.269670479854554!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses!2ses!4v1515358572146" allowfullscreen=""></iframe>
                </div>
                <div class="col-md-4 map-right"> 
                    <h4><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Direcci&oacute;n</h4>
                    <p>Universidad de Huelva, Huelva - Espa&ntilde;a</p>
                    <h4><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>Tel&eacute;fono</h4>
                    <p> +34 123 456 789 </p>
                    <h4><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>Email</h4>
                    <p class="agile-last"><a href="mailto:info@example.com">ruben.gonzalez@alu.uhu.es</a></p> 
                </div>
                
            <div class="clearfix"> </div>
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
