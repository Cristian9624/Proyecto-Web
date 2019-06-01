/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Horario;
import Modelo.Servicios;
import ModeloDAO.HorarioDAO;
import ModeloDAO.ServiciosDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author crist
 */
public class Controlador extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    String listar = "vistas/list.jsp";
    String add = "vistas/add.jsp";
    String addServicios = "vistas/addServicios.jsp";
    String edit = "vistas/edit.jsp";
    String listarServicios = "vistas/listarServicios.jsp";
    String editarServicio = "vistas/editarServicios.jsp";
    String paginaPrincipal = "vistas/paginaPrincipal.jsp";
    String noticias = "vistas/Noticias.jsp";
    String listarReservas ="vistas/listarReservas.jsp";
    
    //Horarios
    Horario horario = new Horario();
    HorarioDAO dao = new HorarioDAO();
    //Servicios
    Servicios servicio = new Servicios();
    ServiciosDAO daoSer = new ServiciosDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String acceso = "";
        String action = request.getParameter("accion");

        if (action.equalsIgnoreCase("list")) {
            acceso = listar;
        } else if (action.equalsIgnoreCase("add")) {
            acceso = add;
        } else if (action.equalsIgnoreCase("Agregar")) {
            String fechaInicio = request.getParameter("boton1");
            String fechaFin = request.getParameter("boton2");
            String horaInicio = request.getParameter("boton3");
            String horaFin = request.getParameter("boton4");
            int estado = Integer.parseInt(request.getParameter("boton5"));

            horario.setDiaInicio(fechaInicio);
            horario.setDiaFin(fechaFin);
            horario.setHoraInicio(horaInicio);
            horario.setHoraFin(horaFin);
            horario.setEstado(estado);
            dao.add(horario);

            acceso = listar;
        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("idHorario", request.getParameter("id"));
            acceso = edit;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            int id = Integer.parseInt(request.getParameter("txtid"));
            String fechaInicio = request.getParameter("boton1");
            String fechaFin = request.getParameter("boton2");

            horario.setDiaInicio(fechaInicio);
            horario.setDiaFin(fechaFin);
            horario.setId(id);
            dao.edit(horario);
            acceso = listar;
        } else if (action.equalsIgnoreCase("eliminar")) {
            int id = Integer.parseInt(request.getParameter("id"));
            horario.setId(id);
            dao.delete(id);
            acceso = listar;
        } else if (action.equalsIgnoreCase("listarServicios")) {
            acceso = listarServicios;
        } else if(action.equalsIgnoreCase("agregarServicio")){
            acceso = addServicios;        
        }else if(action.equalsIgnoreCase("AgregarServicios")){
            int idHorario = Integer.parseInt(request.getParameter("boton1"));
            String nombreServicio = request.getParameter("boton2");
            int precioHora = Integer.parseInt(request.getParameter("boton3"));
            int estado = Integer.parseInt(request.getParameter("boton4"));
            String foto = request.getParameter("boton5");

            servicio.setIdHorario(idHorario);
            servicio.setNombreServicio(nombreServicio);
            servicio.setPrecioHora(precioHora);
            servicio.setEstado(estado);
            servicio.setFoto(foto);
            daoSer.addServicios(servicio);

            acceso = listarServicios;      
        }
        else if (action.equalsIgnoreCase("editarServicios")) {
            request.setAttribute("idServicio", request.getParameter("id"));
            acceso = editarServicio;

        } else if (action.equalsIgnoreCase("ActualizarServicios")) {
            int id = Integer.parseInt(request.getParameter("txtid"));
            int idHorario = Integer.parseInt(request.getParameter("boton1"));
            String nombreServicio = request.getParameter("boton2");
            double precioHora = Double.parseDouble(request.getParameter("boton3"));
            int estado = Integer.parseInt(request.getParameter("boton4"));
            
            servicio.setIdServicio(id);
            servicio.setIdHorario(idHorario);
            servicio.setNombreServicio(nombreServicio);
            servicio.setPrecioHora(precioHora);
            servicio.setEstado(estado);
            daoSer.editServicios(servicio);
            acceso = listarServicios;

        } else if (action.equalsIgnoreCase("eliminarServicios")) {
            int id = Integer.parseInt(request.getParameter("id"));
            servicio.setIdServicio(id);
            daoSer.deleteServicios(id);
            acceso = listarServicios;

        }else if(action.equalsIgnoreCase("paginaPrincipal")){
            acceso= paginaPrincipal;
        }else if(action.equalsIgnoreCase("seleccionarServicios")){
            int id = Integer.parseInt(request.getParameter("id"));
            int horario = Integer.parseInt(request.getParameter("horario"));
            servicio.setIdServicio(id);
            servicio.setIdHorario(horario);
           // daoSer.seleccionarServicios(servicio);
            System.out.println("Volvi");
            daoSer.reservarServicios(servicio);
            acceso = paginaPrincipal;
                    
        }else if(action.equalsIgnoreCase("verReservas")){
            acceso = listarReservas;        
        }else if(action.equalsIgnoreCase("volverAreservar")){
            acceso = paginaPrincipal;
        }else if(action.equalsIgnoreCase("eliminarReservas")){
            int id = Integer.parseInt(request.getParameter("id"));
        
        }
        
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
