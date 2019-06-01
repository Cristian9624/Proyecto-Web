<%-- 
    Document   : paginaPrincipal
    Created on : 29/05/2019, 02:53:32 PM
    Author     : crist
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Servicios"%>
<%@page import="ModeloDAO.ServiciosDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <!--Utilizar iconos-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
              integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">


        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <!--Utilizar iconos-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
              integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

        <link rel="stylesheet"
              href="assets/estilosUsuario/bootstrap.min.css">
        <script src="assets/js/push.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

        <link rel="stylesheet"
              href="assets/estilosUsuario/estilos.css">

            <div class="col-lg-15">
                <div class="col-lg-15">
                    <div class="ingresa">
                        <span clas="col-lg-16" style=" margin-left: -10%;">
                            <a href="C:/Users/crist/Documents/Universidad/Semestre 10/Ingenieria web/Proyecto/Segundo corte/Maquetacion web/inicioSesion.html"
                               target="_parent" style="margin-left: 93%;">
                                Ingresar
                            </a>
                            <a href="Controlador?accion=verReservas" class="fas fa-shopping-cart">
                            </a>
                        </span>
                    </div>
                    <figure>
                        <img src="assets/img/LogoCompensar.PNG"
                             alt="imagen" style="width: 15%; margin-left: 15%;margin-top:-1%">
                    </figure>
                </div>
                <nav class="col-lg-15" style="margin-left:56%; margin-top: -3%;">
                    <div>
                        <table height="40px">
                            <tbody>
                                <tr>
                                    <td>
                                        <div class="headerMenu">
                                            <ul id="ctl00_g_41bbb0f0_954a_4853_8042_387e50e28fd8_ulMainMenu"
                                                class="mainMenuCompensar">
                                                <li class="CURSOS"><a href="/Cursos" class="">Inicio</a>
                                                    <div class="megamenu" style="display: none;">
                                                        <ul class="subMenuCompensar">
                                                            <li>
                                                                <a style="text-decoration:none; color: #f17406; margin-right: 5%; font-family: verdana"
                                                                   href="C:/Users/crist/Documents/Universidad/Semestre 10/Ingenieria web/Proyecto/Segundo corte/Maquetacion web/paginaPrincipal.html"
                                                                   target="_parent">Bolos</a>
                                                            </li>
                                                            <li>
                                                                <a style="text-decoration:none; color: #f17406; font-family: verdana"
                                                                   href="https://es.wikipedia.org/wiki/Hoja_de_estilos_en_cascada">
                                                                    Natación</a>
                                                            </li>
                                                        </ul>
                                                </li>
                                                <li class="CURSOS"><a href="/Cursos" class="">Servicios</a>
                                                    <div class="megamenu" style="display: none;">
                                                        <ul class="subMenuCompensar">
                                                            <li>
                                                                <a style="text-decoration:none; color: #f17406; margin-right: 5%; font-family: verdana"
                                                                   href="C:/Users/crist/Documents/Universidad/Semestre 10/Ingenieria web/Proyecto/Segundo corte/Maquetacion web/paginaPrincipal.html"
                                                                   target="_parent">Caja</a>
                                                            </li>
                                                            <li>
                                                                <a style="text-decoration:none; color: #f17406; font-family: verdana"
                                                                   href="https://es.wikipedia.org/wiki/Hoja_de_estilos_en_cascada">
                                                                    Salud</a>
                                                            </li>
                                                        </ul>
                                                </li>
                                            </ul>
                                        </div>

                                        <script type="text/javascript">
                                            $(function () {
                                                $(".megamenu").hide();
                                                $('.megamenu').hover(function () {
                                                    $(this).parent().children('a').addClass('active');
                                                }, function () {
                                                    $(this).parent().children('a').removeClass(
                                                            'active');
                                                })
                                                $(".mainMenuCompensar li").hover(
                                                        function () {
                                                            $(".megamenu", this).show();
                                                        },
                                                        function () {
                                                            $(".megamenu", this).hide();
                                                        });
                                            });
                                        </script>
                                    </td>
                                    <td width="30px"></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </nav>
            </div>
            <hr style=" margin-top: -1%; background-color:#2b2929">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <style>
        /* Make the image fully responsive */
        .carousel-inner img {
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body>
    <!--Slide de imagenes-->
    <section class="banner">
        <div id="demo" class="carousel slide" data-ride="carousel">
            <ul class="carousel-indicators">
                <li data-target="#demo" data-slide-to="0" class="active"></li>
                <li data-target="#demo" data-slide-to="1"></li>
                <li data-target="#demo" data-slide-to="2"></li>
            </ul>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="assets/img/Natacion.jpg"
                         alt="Chicago" width="1100" height="300px">
                    <div class="carousel-caption">
                        <h3>Practica libre natación</h3>
                        <p>We had such a great time in LA!</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="assets/img/Futbol.jpg"
                         alt="Chicago" width="1100" height="300px">
                    <div class="carousel-caption">
                        <h3>Curso de futbol</h3>
                        <p>Thank you, Chicago!</p>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
                <span class="carousel-control-next-icon"></span>
            </a>
        </div>
    </section>
    <br><br><br><br><br><br><br><br>
    <!-- Prediccion de busqueda -->
    <section>
        <div class="predict">
            <div class="row">
                <div class="col-md-12">
                    <div class="col-lg-12"><br><br><br>
                        <span class="activity"> ¿Que tipo de actividad estas buscando?</span>
                    </div>
                </div>
            </div>
            <br>
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <button type="button" class="buttonCur">
                            <i class="fa fa-graduation-cap"></i>
                            Cursos
                        </button>
                    </div>
                    <div class="col-md-4">
                        <button type="button" class="buttonSer">
                            <i class="fa fa-file-alt"></i>
                            Servicios
                        </button>
                    </div>
                    <div class="col-md-5">
                        <button type="button" class="buttonPract">
                            <i class="fa fa-calendar-alt"></i>
                            Practicas Libres
                        </button>
                    </div>
                </div>
            </div>
            <br><br><br><br><br><br>
            <div class="recomienda">
                <div class="form-group row">
                    <h1 class="recom">
                        Servicios disponibles para reservar
                    </h1>
                    <br><br><br><br>
                </div>
            </div>
    </section><br><br><br>
    <div style="margin-left: 38%; "class="container">
        <div style="width: 61%;"class="progress">
            <div class="progress-bar" role="progressbar"  style="width: 20%;">
                <span class="sr-only">70% Complete</span>
            </div>
        </div>
    </div>     

    <section id="cover">
        <!-- Menu lateral-->
        <br>
        <div class="row">
            <div class="col-md-6">
                <div class="col-lg-12">
                    <div id="menu" class="menu">
                        <canvas width="257px" height="218px" class="canv"></canvas>
                        <br>
                        <h4 class="info"> <Strong>Informacion de
                                interes</Strong></h4>
                        <h4><a class="serv">Todos los
                                servicios</a>
                        </h4>
                        <h4></h4><a class="gen">Cursos
                            generales</a>
                        </h4>
                        <h4></h4><a class="bol">Cursos de
                            bolos</a>
                        </h4>
                    </div>
                </div>
            </div><br>
            <div class="col-md-6"><br>
                <%
                    ServiciosDAO servicios = new ServiciosDAO();
                    List<Servicios> list = servicios.listarServicios();
                    Iterator<Servicios> iter = list.iterator();
                    Servicios ser = null;
                    while (iter.hasNext()) {
                        ser = iter.next();

                %>
                <div>
                    <h4 style="margin-left:-15%">Nombre del servicio: <%=ser.getNombreServicio()%></h4>
                    <h4 style="margin-left:-15%">Precio por hora: <%=ser.getPrecioHora()%></h4>
                    <h4 style="margin-left:-15%">Estado: <%=ser.getEstado()%></h4>
                    <img style="margin-left: 44%;margin-top: -13%;width:26%" src="<%=ser.getFoto()%>"/><br><br>
                    <a style="margin-left:-15%" onclick="reservar()" href="Controlador?accion=seleccionarServicios&id=<%=ser.getIdServicio()%>&horario=<%=ser.getIdHorario()%>">Reservar Servicio</a>
                    <a href="Controlador?accion=verReservas" class="fas fa-shopping-cart"></a>
                    <br><br>
                </div> 
                <%}%>
            </div>
        </div>
    </section>
    <br>
    <section id="cover">
        <!--Preguntas frecuentes-->
        <div id="cover-caption">
            <div class="container">
                <div class="col-sm-6">
                    <div id="menuPreg" class="menuPreg">
                        <canvas width="257px" height="218px" class="canvasPreg"></canvas>
                        <h4 class="pregFre">
                            <Strong>
                                Preguntas frecuentes
                            </Strong>
                        </h4>
                        <h4>
                            <a class="comServ">
                                ¿Como comprar un servicio?
                            </a>
                        </h4>
                        <h4>
                            <a class="horarios">
                                ¿Donde veo los horarios?
                            </a>
                        </h4>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <br>
    <br>
    <script>
        $("reservar").click(function () {
            Push.create("hola mundo", {
                body: "hola",
                timeout: 4000,
                onclick: function () {
                    window.focus();
                    this.close();
                }
            });
        });

    </script>
</body>
<footer class="footer">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <iframe class="iframe"
            src="C:/Users/crist/Documents/Universidad/Semestre 10/Ingenieria web/Proyecto/Segundo corte/Maquetacion web/footer.html"></iframe>
</footer>

</html>
