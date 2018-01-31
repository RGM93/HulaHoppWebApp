<%-- 
    Document   : producto
    Created on : Jan 14, 2018, 1:30:29 AM
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

        <div class="products" style="padding: 0%;">
            <div class="container">
                <div class="row">
                    <c:choose>
                        <c:when test="${requestScope.articulo != null}">
                            <div class="row" style="text-align: center; margin-top: 5%;">
                                <h2> ${requestScope.articulo.nombre}</h2>

                            </div>
                            <div class="row" style="margin-top: 15px; text-align: center">
                                <div class="row" style="text-align: center">
                                    <img id="example" src="../images/${requestScope.articulo.foto}" class="img-responsive" style="width: 50%; height: 30%; min-width: 30%; min-height: 15%; margin: 0% 0% 0% 26%">
                                </div>

                                <div class="row" style="margin: 5% 0% 0% 0%;">
                                    <div class="col-sm-4">
                                        <h4>Descripcion</h4> 
                                        <p> ${requestScope.articulo.descripcion}</p>
                                    </div>
                                    <div class="col-sm-4">
                                        <h4>Año</h4>
                                        <p> ${requestScope.articulo.anio}</p>
                                    </div>
                                    <div class="col-sm-4">
                                        <h4>Categoría</h4>
                                        <p> ${requestScope.articulo.categoria}</p>
                                    </div>
                                    <div class="col-sm-4">
                                        <p><h4>Estado</h4><p>${requestScope.articulo.estado}</p></p>
                                    </div>

                                    <div class="col-sm-4">
                                        <h4>Precio</h4>
                                        <p class="m-sing"> ${requestScope.articulo.precio} €</p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">

                            </div>
                        </div>

                    </div>


                    <div class="row" style= "width:40%; margin: 4% 0% 0% 31%">
                        <c:choose>
                            <c:when test="${sessionScope.user != null}">
                                <div class="login-form-grids animated wow slideInUp" style="background: white; width: 100%; padding: 1%; margin: 0% 0% 0% 0%; " data-wow-delay=".5s">
                                    <form action="/ProyectoDAW/Articulos/Articulo?id=${requestScope.articulo.id}&favMode=true" method="POST" onsubmit="return validarForm()">
                                        <c:choose>
                                            <c:when test="${requestScope.add == true}">
                                                <input type="submit" value="Eliminar de Favoritos">
                                            </c:when>
                                            <c:otherwise>
                                                <input type="submit" value="Añadir a Favoritos">
                                            </c:otherwise>
                                        </c:choose>
                                    </form>
                                    <script>
                                        function validarForm() {
                                            return true;
                                        }
                                    </script>
                                </div>
                            </c:when>
                        </c:choose>
                    </div>
                </c:when>
            </c:choose>
        </div>

        <div class="row">
            <div class="detailBox">
                <div class="titleBox">
                    <label>Comentarios</label>
                </div>
                <c:choose>
                    <c:when test="${sessionScope.user != null}">
                        <div class="actionBox">
                            <div class="form-inline" style="margin-top: 2%; margin-bottom: 1%;">
                                <form action="/ProyectoDAW/Comentarios/Comentar?id=${requestScope.articulo.id}" method="POST" onsubmit="return validarForm(this)">
                                    <div class="row">
                                        <div class="col-md-8 col-sm-2" style="width: 50%; margin-left: 30.5%;">
                                            <select name="visible" id="visible" required="" class="form-group"> 
                                                <option value="none">Seleccione Visibilidad</option>
                                                <option value="Publico">Público</option>
                                                <option value="Privado">Privado</option>
                                                <option value="Personal">Personal</option>
                                            </select>
                                        </div>
                                        <div class="col-md-8 col-sm-2" style=" width: 50%; margin-left: 30.5%; margin-top: 1%;">
                                            <input name="comentario" id="comentario" type="text" placeholder="Escribe tu comentario" required="" class="form-group form-control"/>
                                        </div>
                                    </div>
                                    <div class="login-form-grids animated wow slideInUp" style="background: none; width: 200px; margin-top: 5px; margin-bottom: 0%; padding: 0%;">
                                        <input type="submit" value="Comentar">
                                    </div>
                                </form>
                                <script>
                                    function validarForm(form) {
                                        var ok = true;
                                        var msg = "Error: ";
                                        var visible = document.getElementById("visible");
                                        var comentario = document.getElementById("comentario");

                                        if (visible.value.equals("") || comentario.value.equals(""))
                                        {
                                            msg = msg + "Todos los campos son obligatorios.";
                                            ok = false;
                                        }

                                        if (!ok)
                                            alert(msg);

                                        return ok;
                                    }
                                </script>
                            </div>
                        </div>
                    </c:when>
                </c:choose>
                <ul class="commentList" style="margin-left: 35%;">

                    <table width="100%" class="col-sm-8">
                        <thead>
                            <tr>
                                <th>Imagen</th>
                                <th>Usuario</th>
                                <th>Comentario</th>
                            </tr>
                        </thead>
                        <c:choose>
                            <c:when test="${requestScope.comentarios != null}">
                                <c:forEach var="com" items="${requestScope.comentarios}">
                                    <c:choose>
                                        <c:when test="${com.articulo.id == requestScope.articulo.id}">
                                            <c:choose>
                                                <c:when test="${(com.privacidad == 'Publico')}">
                                                    <tbody>
                                                        <tr>
                                                            <td style="text-align: center;">
                                                                <div class="commenterImage">
                                                                    <img src="../images/user.jpg" />
                                                                </div>
                                                            </td>
                                                            <td style="text-align: center;">
                                                                <div class="commenterName" style=" margin-left: -75%;">
                                                                    <p>${com.usuario_2.name}</p>
                                                                </div>
                                                            </td>

                                                            <td style="text-align: center;">
                                                                <div class="commenterText">
                                                                    <p>${com.texto}</p>
                                                                </div>
                                                            </td>

                                                        </tr>
                                                    </tbody>
                                                </c:when>
                                                <c:otherwise>
                                                    <c:when test="${(com.privacidad == 'Personal') and (com.usuario_2.id == sessionScope.user)}">
                                                        <tbody>
                                                            <tr>
                                                                <td style="text-align: center;">
                                                                    <div class="commenterImage">
                                                                        <img src="../images/user.jpg" />
                                                                    </div>
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <div class="commenterName">
                                                                        <p>${com.usuario_2.name}</p>
                                                                    </div>
                                                                </td>

                                                                <td style="text-align: center;">
                                                                    <div class="commenterText">
                                                                        <p>${com.texto}</p>
                                                                    </div>
                                                                </td>

                                                            </tr>
                                                        </tbody>
                                                    </c:when>
                                                    <c:when test="${(com.privacidad == 'Privado') and (com.usuario_2.id != sessionScope.user)}">
                                                        <tbody>
                                                            <tr>
                                                                <td style="text-align: center;">
                                                                    <div class="commenterImage">
                                                                        <img src="../images/user.jpg" />
                                                                    </div>
                                                                </td>
                                                                <td style="text-align: center;">
                                                                    <div class="commenterName">
                                                                        <p>${com.usuario_2.name}</p>
                                                                    </div>
                                                                </td>

                                                                <td style="text-align: center;">
                                                                    <div class="commenterText">
                                                                        <p>${com.texto}</p>
                                                                    </div>
                                                                </td>

                                                            </tr>
                                                        </tbody>
                                                    </c:when>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:when>
                                    </c:choose>
                                </c:forEach>
                            </c:when>
                        </c:choose>
                    </table>
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
                                    $(document).ready(function () {
                                        $().UItoTop({easingType: 'easeOutQuart'});
                                    });
</script>
</body>
</html>