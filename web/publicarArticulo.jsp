<%-- 
    Document   : altaUsuario
    Created on : Jan 13, 2018, 1:48:39 AM
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

        <div class="register">
            <div class="container">
                <h2>Registro de Productos</h2>
                <div class="login-form-grids">
                    <h5>¡Publica tu artículo!</h5>
                    <form action="/ProyectoDAW/Articulos/Alta" method="POST" enctype="multipart/form-data" onsubmit="return validarForm(this)">
                        <input name="imagen" id="imagen" type="file">
                        <select name="categoria" id="categoria" required="">
                            <option value="none">Seleccione Categoría</option>
                            <option value="Electronica">Electronica</option>
                            <option value="Libros">Libros</option>
                            <option value="Juegos">Juegos</option>
                            <option value="Ropa">Ropa</option>
                            <option value="Coches">Coches</option>
                            <option value="Otros">Otros</option>
                        </select>
                        <input name="name" id="name" type="text" placeholder="Nombre" required="">
                        <input name="descripcion" id="descripcion" type="text" placeholder="Descripción">
                        <select name="estado" id="estado">
                            <option value="none">Seleccione Estado</option>
                            <option value="Nuevo">Nuevo</option>
                            <option value="Seminuevo">Seminuevo</option>
                            <option value="Deteriorado">Deteriorado</option>
                            <option value="Antiguo">Antiguo</option>
                        </select>
                        <select name="year" id="year">
                            <option value="none">Seleccione Fecha</option>
                            <option value="2018">2018</option>
                            <option value="2017">2017</option>
                            <option value="2016">2016</option>
                            <option value="2015">2015</option>
                            <option value="2014">2014</option>
                            <option value="2013">2013</option>
                            <option value="2012">2012</option>
                            <option value="2011">2011</option>
                            <option value="2010">2010</option>
                            <option value="2009">2009</option>
                            <option value="2008">2008</option>
                            <option value="2007">2007</option>
                            <option value="2006">2006</option>
                            <option value="2005">2005</option>
                            <option value="2004">2004</option>
                            <option value="2003">2003</option>
                            <option value="2002">2002</option>
                            <option value="2001">2001</option>
                            <option value="2000">2000</option>
                            <option value="1999">1999</option>
                            <option value="1998">1998</option>
                            <option value="1997">1997</option>
                            <option value="1996">1996</option>
                            <option value="1995">1995</option>
                            <option value="1994">1994</option>
                            <option value="1993">1993</option>
                            <option value="1992">1992</option>
                            <option value="1991">1991</option>
                            <option value="1990">1990</option>
                            <option value="1989">1989</option>
                            <option value="1988">1988</option>
                            <option value="1987">1987</option>
                            <option value="1986">1986</option>
                            <option value="1985">1985</option>
                            <option value="1984">1984</option>
                            <option value="1983">1983</option>
                            <option value="1982">1982</option>
                            <option value="1981">1981</option>
                            <option value="1980">1980</option>
                            <option value="1979">1979</option>
                            <option value="1978">1978</option>
                            <option value="1977">1977</option>
                            <option value="1976">1976</option>
                            <option value="1975">1975</option>
                            <option value="1974">1974</option>
                            <option value="1973">1973</option>
                            <option value="1972">1972</option>
                            <option value="1971">1971</option>
                            <option value="1970">1970</option>
                            <option value="1969">1969</option>
                            <option value="1968">1968</option>
                            <option value="1967">1967</option>
                            <option value="1966">1966</option>
                            <option value="1965">1965</option>
                            <option value="1964">1964</option>
                            <option value="1963">1963</option>
                            <option value="1962">1962</option>
                            <option value="1961">1961</option>
                            <option value="1960">1960</option>
                            <option value="1959">1959</option>
                            <option value="1958">1958</option>
                            <option value="1957">1957</option>
                            <option value="1956">1956</option>
                            <option value="1955">1955</option>
                            <option value="1954">1954</option>
                            <option value="1953">1953</option>
                            <option value="1952">1952</option>
                            <option value="1951">1951</option>
                            <option value="1950">1950</option>
                            <option value="1949">1949</option>
                            <option value="1948">1948</option>
                            <option value="1947">1947</option>
                            <option value="1946">1946</option>
                            <option value="1945">1945</option>
                            <option value="1944">1944</option>
                            <option value="1943">1943</option>
                            <option value="1942">1942</option>
                            <option value="1941">1941</option>
                            <option value="1940">1940</option>
                            <option value="1939">1939</option>
                            <option value="1938">1938</option>
                            <option value="1937">1937</option>
                            <option value="1936">1936</option>
                            <option value="1935">1935</option>
                            <option value="1934">1934</option>
                            <option value="1933">1933</option>
                            <option value="1932">1932</option>
                            <option value="1931">1931</option>
                            <option value="1930">1930</option>
                            <option value="1929">1929</option>
                            <option value="1928">1928</option>
                            <option value="1927">1927</option>
                            <option value="1926">1926</option>
                            <option value="1925">1925</option>
                            <option value="1924">1924</option>
                            <option value="1923">1923</option>
                            <option value="1922">1922</option>
                            <option value="1921">1921</option>
                            <option value="1920">1920</option>
                            <option value="1919">1919</option>
                            <option value="1918">1918</option>
                            <option value="1917">1917</option>
                            <option value="1916">1916</option>
                            <option value="1915">1915</option>
                            <option value="1914">1914</option>
                            <option value="1913">1913</option>
                            <option value="1912">1912</option>
                            <option value="1911">1911</option>
                            <option value="1910">1910</option>
                            <option value="1909">1909</option>
                            <option value="1908">1908</option>
                            <option value="1907">1907</option>
                            <option value="1906">1906</option>
                            <option value="1905">1905</option>
                            <option value="1904">1904</option>
                            <option value="1903">1903</option>
                            <option value="1902">1902</option>
                            <option value="1901">1901</option>
                            <option value="1900">1900</option>
                        </select>
                        <input name="precio" id="precio" type="text" placeholder="Precio (€)" required="">
                        <input type="submit" value="Publicar">
                    </form>
                    <script>
                        function validarForm(form) {
                            var ok = true;
                            var msg = "Error: ";
                            var categoria = document.getElementById("categoria");
                            var name = document.getElementById("name");
                            var descripcion = document.getElementById("descripcion");

                            if (categoria.value.equals("") || name.value.equals("") || descripcion.value.equals(""))
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
                <div class="register-home">
                    <a href="index.jsp">Volver a Inicio</a>
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
