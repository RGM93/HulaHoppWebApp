<%-- 
    Document   : about
    Created on : Jan 14, 2018, 1:21:57 AM
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
            jQuery(document).ready(function($) {
                    $(".scroll").click(function(event){		
                            event.preventDefault();
                            $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
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
        
	<div class="about">
            <div class="container">
                <div class="about-header"><h3 >Sobre Nosotros</h3></div>
                <div class="about-info">
                    <div class="col-md-8 col-sm-4 about-grids grid-top">
                        <h4>Design At Wireless presenta HulaHopp </h4>
                        <p class="top"> Creemos en un mejor acercamiento hacia los usuarios. Por eso decidimos crear esta plataforma, para poder hacer de los negocios algo m&aacute;s personal. </p>
                        <p> Reinventando la venta y compra de pertenencias personales, para todo tipo de usuarios, dispositivos y posibilidades. Una categorizaci&oacute;n visual bonita y eficaz, descripciones de pertenencias claras y sin rodeos, y un "hacemos el trato" de la manera m&aacute;s sencilla posible.</p>
                        <img src="../images/about-img.png" height="100%" width="50%">
                    </div>
                    <div class="col-md-4 col-sm-8 about-lateral-grids">
                        <div class="offic-box" style="margin-top: 15%;">
                                <div class="box-top">
                                        <h4> &#191;Qu&eacute; representamos?</h4>
                                </div>
                                <div class="box-bottom">
                                    <h5>Un mundo abierto</h5>
                                    <h5>Un modo de vida</h5>
                                    <h5>La mejor comodidad</h5>
                                </div>
                        </div>
                        <div class="valo">
                            <h3>Valoraciones</h3>
                            <script src="../js/responsiveslides.min.js"></script>
                            <script>
                                $(function () {
                                  $("#slider5").responsiveSlides({
                                    auto: true,
                                    pager: false,
                                    nav: true,
                                    speed: 1000,
                                    namespace: "callbacks",
                                    before: function () {
                                      $('.events').append("<li>before event fired.</li>");
                                    },
                                    after: function () {
                                      $('.events').append("<li>after event fired.</li>");
                                    }
                                  });

                                });
                             </script>
                            <div id="top" class="callbacks_container">
                                <ul class="rslides" id="slider5">
                                    <li>
                                        <div class="valo-slider">
                                            <h4>" ENAMORAHOPP "</h4>
                                            <p>Pura navegaci&oacute;n e intuitiva. Inmejorable su dise&ntilde;o y estructura.</p>
                                            <div class="valo-subscript">
                                                    <p><a>Juan Antonio Gal&aacute;n, </a>La Vanguardia</p>
                                                    <span class="w3-agilesub"> </span>
                                            </div>	
                                        </div>
                                    </li>
                                    <li>
                                        <div class="valo-slider">
                                            <h4>" BUENA CATALOGACI&Oacute;N "</h4>
                                            <p>Por fin una p&aacute;gina donde el registro de tus ventas es &uacute;nico y simple. </p>
                                            <div class="valo-subscript">
                                                    <p><a>John Smith,</a>The Wall Street Journal</p>
                                                    <span class="w3-agilesub"> </span>
                                            </div>	
                                        </div>
                                    </li>
                                    <li>
                                        <div class="valo-slider">
                                            <h4>" BUENA GESTI&Oacute;N "</h4>
                                            <p>Sin duda no he visto una mejor manera de revisar mis productos en mi perfil.</p>
                                            <div class="valo-subscript">
                                                    <p><a>Manuel S&aacute;nchez,</a>El Mundo</p>
                                                    <span class="w3-agilesub"> </span>
                                            </div>	
                                        </div>
                                    </li>
                                </ul>	
                            </div>
                        </div>
                    </div>	
                    <div class="clearfix"> </div>
                </div>
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
            $(document).ready(function() {
                $().UItoTop({ easingType: 'easeOutQuart' });
            });
	</script>
    </body>
</html>
