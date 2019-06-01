<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Servicios"%>
<%@page import="ModeloDAO.ServiciosDAO"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <!-- Tell the browser to be responsive to screen width -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- Favicon icon -->
        <link rel="icon" type="image/png" sizes="16x16" href="../assets/images/favicon.png">
        <title>Panel administrativo ingenieria web</title>
        <!-- Custom CSS -->
        <link rel="stylesheet" type="text/css" href="../assets/extra-libs/multicheck/multicheck.css">
        <link href="../assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.css" rel="stylesheet">
        <link href="../dist/css/style.min.css" rel="stylesheet">
        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    </head>

    <body>
        <aside>
                <%
                    ServiciosDAO servicios = new ServiciosDAO();
                    List<Servicios> list = servicios.listarServicios();
                    Iterator<Servicios> iter = list.iterator();
                    Servicios ser = null;
                    while (iter.hasNext()) {
                        ser = iter.next();

                %>
                    <div>
                        <h4>Nombre del servicio: <%=ser.getNombreServicio()%></h4>
                        <h4>Precio por hora: <%=ser.getPrecioHora()%></h4>
                        <h4>Estado: <%=ser.getEstado()%></h4>
                        <img style="margin-left: 59%;margin-top:-17%" width="20%" heigth="50px" src="../assets/img/Natacion.jpg"/><br><br>
                        <a href="../Controlador?accion=seleccionarServicios&id=<%=ser.getIdServicio()%>&horario=<%=ser.getIdHorario()%>">Reservar Servicio</a>
                        <br><br>
                    </div> 
                    <%}%>
        </aside>
    </body>

</html>