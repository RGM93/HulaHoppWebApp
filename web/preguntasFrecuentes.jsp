<%-- 
    Document   : faq
    Created on : Jan 14, 2018, 1:22:39 AM
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
        
	<div class="faq-f">
            <div class="container"> 
                <div class="faq-header"><h3> Preguntas Frecuentes y Respuestas (FAQ) </h3></div>
                <ul class="faq">
                    <li><a href="#" title="click here">&#191;Qu&eacute; es HulaHopp?</a>
                        <ul>
                            <li class="subitem1"><p>HulaHopp es una plataforma de aplicaci&oacute;n web de compra/venta de productos de segunda mano.</p></li>										
                        </ul>
                    </li>
                    <li><a href="#" title="click here">&#191;Tiene categor&iacute;as segmentadas la secci&oacute;n de art&iacute;culos?</a>
                        <ul>
                            <li class="subitem1"><p>HulaHopp tiene un dise&ntilde;o de p&aacute;gina intuitiva con el que podr&aacute;s interactuar de esc&aacute;ndalo con nuestras categor&iacute;as.</p></li>										
                        </ul>
                    </li>
                    <li><a href="#" title="click here">&#191;Hay que pagar una suscripci&oacute;n para poder compartir mis art&iacute;culos de inter&eacute;s y comprar/vender productos de segunda mano?</a>
                        <ul>
                            <li class="subitem1"><p>&#161HulaHopp es totalmente gratuita! &#161Sin ning&uacute;n tipo de suscripci&oacute;n! &#161Comparte, compra y vende sin presiones!</p></li>										
                        </ul>
                    </li>
                    <li><a href="#" title="click here">&#191;Puedo comprar/vender mis productos de segunda mano sin tener que registrarme?</a>
                        <ul>
                            <li class="subitem1"><p>&#161Puedes comprar productos de segunda mano de usuarios sin la necesidad de registrarte! Pero para vender un producto s&iacute; es necesario registrarse.</p></li>										
                        </ul>
                    </li> 
                    <li><a href="#" title="click here">&#191;Es seguro la privacidad de nuestras cuentas en HulaHopp?</a>
                        <ul>
                            <li class="subitem1"><p>HulaHopp es tan privada como tu caja fuerte escondida debajo de la cama. &#161Ups! Creo que ahora tendr&aacute;s que cambiar de sitio tu caja fuerte! </p></li>										
                        </ul>
                    </li>
                    <li><a href="#" title="click here">&#191;Puedo vender un producto a un precio mayor del establecido?</a>
                        <ul>
                            <li class="subitem1"><p>Siempre y cuando no te pillen... &#161Aqu&iacute; no juzgamos a nadie!</p></li>										
                        </ul>
                    </li>
                    <li><a href="#" title="click here">&#191;Existe un sistema de pujas en HulaHopp?</a>
                        <ul>
                            <li class="subitem1"><p>&#161;Te lo subo a 20&euro; y hacemos trato! Actualmente no contamos con dicho sistema, sino cierta p&aacute;gina online de compra/venta y dedicada a pujas nos destrozar&iacute;a.</p></li>										
                        </ul>
                    </li>
                    <li><a href="#" title="click here">&#191Tiene soporte para dispositivos m&oacute;viles?</a>
                        <ul>
                            <li class="subitem1"><p>HulaHopp est&aacute; dise&ntilde;ada con tecnolog&iacute;a adaptativa, &#161capaz de adaptarse hasta en las TV en blanco y negro!</p></li>										
                        </ul>
                    </li>
                    <li><a href="#" title="click here">&#191Expongo mi correo electr&oacute;nico a correos basura por parte de HulaHopp?</a>
                        <ul>
                            <li class="subitem1"><p>NOSOTROS MACHACAR BASURA. Tranquilo, tu correo electr&oacute;nico est&aacute; bien protegido por nuestro sistema. &#161Ni un ladr&oacute;n podr&iacute;a robarlo!</p></li>										
                        </ul>
                    </li>
                    <li><a href="#" title="click here">&#191Hay ventanas emergentes que impiden una navegaci&oacute;n sin mensajes masivos de publicidad?</a>
                        <ul>
                            <li class="subitem1"><p>HulaHopp apoya a los bloqueadores de anuncios. &#161Abajo el sistema!</p></li>										
                        </ul>
                    </li> 
                </ul> 
                <script type="text/javascript">
                    $(function() {
                        var menu_ul = $('.faq > li > ul'), menu_a  = $('.faq > li > a');
                        menu_ul.hide();
                        menu_a.click(function(e) {
                            e.preventDefault();
                            if(!$(this).hasClass('open')) {
                                menu_a.removeClass('open');
                                menu_ul.filter(':visible').slideUp('normal');
                                $(this).addClass('open').next().stop(true,true).slideDown('normal');
                            } else {
                                $(this).removeClass('open');
                                $(this).next().stop(true,true).slideUp('normal');
                            }
                        });
                    });
                </script>  
            </div>
	</div>

        <div class="footer">
            <div class="container">
                <div class="footer_grids">
                    <div class="col-md-3 footer_grid">
                        <h3>Contacto</h3>
                        <ul class="address">
                                <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>Universidad de Huelva <span>Huelva, Espa&ntilde;a</span></li>
                                <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:rubenandres.gonzalez@alu.uhu.es">ruben.gonzalez@alu.uhu.es</a></li>
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
