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
    <header>
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

        <!-- Cabecera de inicio de sesion-->
        <section>
            <div class="col-lg-15">
                <div class="col-lg-15">
                    <div class="ingresa">
                        <span clas="col-lg-16" style=" margin-left: -10%;">
                            <a href="C:/Users/crist/Documents/Universidad/Semestre 10/Ingenieria web/Proyecto/Segundo corte/Maquetacion web/inicioSesion.html"
                               target="_parent" style="margin-left: 93%;">
                                Ingresar
                            </a>
                            <a href="../Controlador?accion=verReservas" class="fas fa-shopping-cart">
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
        </section>
        <br>
        <br>
        <!-- Bootstrap-->
        <link rel="stylesheet"
              href="assets/estilosUsuario/bootstrap.min.css">
        <link rel="stylesheet"
              href="assets/estilosUsuario/estilos.css">
    </header>
<body>
    <h5><strong style="margin-left:41%;">Falta poco para terminar la reserva de tus servicios</strong></h5>
        <div style="margin-left: 33%; "class="container">
        <div style="width: 61%;"class="progress">
            <div class="progress-bar" role="progressbar"  style="width: 45%;">
                <span class="sr-only">70% Complete</span>
            </div>
        </div>
    </div>  
    <div style="margin-left: 34%;"><br>
        <%
            ServiciosDAO servicios = new ServiciosDAO();
            List<Servicios> list = servicios.listarReservas();
            Iterator<Servicios> iter = list.iterator();
            Servicios ser = null;
            while (iter.hasNext()) {
                ser = iter.next();

        %>
        <div>
            <h4 style="">Nombre del servicio: <%=ser.getNombreServicio()%></h4>
            <h4 style="">Precio por hora: <%=ser.getPrecioHora()%></h4>
            <h4 style="">Estado: <%=ser.getEstado()%></h4>
            <img style="width:26%; margin-left: 33%;margin-top: -9%;" src="<%=ser.getFoto()%>"/><br><br>
            <a style="margin-left: 33%;margin-top: -9%;">Quitar <i class="fas fa-trash-alt"></i></a>
            <br><br>
        </div> 
        <%}%>
    </div>
    <a style="margin-left: 34%;" href="https://www.pse.com.co/inicio">Confirmar Compra</a><br>
    <a style="margin-left: 34%;" href="Controlador?accion=volverAreservar">Seguir comprando</a>
</body>
<footer class="footer">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
          integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <iframe class="iframe"
            src="C:/Users/crist/Documents/Universidad/Semestre 10/Ingenieria web/Proyecto/Segundo corte/Maquetacion web/footer.html"></iframe>
</footer>

</html>
