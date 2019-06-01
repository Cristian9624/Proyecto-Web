/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.CRUDSERVICES;
import Modelo.Horario;
import Modelo.Servicios;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

/**
 *
 * @author crist
 */
public class ServiciosDAO implements CRUDSERVICES{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Servicios ser = new Servicios();

    @Override
    public List listarServicios() {
        ArrayList<Servicios> list = new ArrayList<>();
        String sql="select * from servicios";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
            Servicios servicio = new Servicios();
            servicio.setIdServicio(rs.getInt("idServicio"));
            servicio.setIdHorario(rs.getInt("idHorario"));
            servicio.setNombreServicio(rs.getString("nombreServicio"));
            servicio.setPrecioHora(rs.getDouble("precioHora"));
            servicio.setEstado(rs.getInt("estado"));
            servicio.setFoto(rs.getString("imagen"));
            list.add(servicio);
            }       
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Servicios lista(int id) {
        String sql=("select * from servicios where idServicio="+id);
        try {
            con =cn.getConnection();
            ps= con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                ser.setIdServicio(rs.getInt("idServicio"));
                ser.setIdHorario(rs.getInt("idHorario"));
                ser.setNombreServicio(rs.getString("nombreServicio"));
                ser.setPrecioHora(rs.getDouble("precioHora"));
                ser.setEstado(rs.getInt("estado"));
            }            
        } catch (Exception e) {
        }
        return ser;
    }

    @Override
    public boolean deleteServicios(int id) {
        String sql="delete from servicios where idServicio="+id;
        try {
            con = cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();            
        } catch (Exception e) {
            System.out.println("Error");
        }
        return false;
    }

    @Override
    public boolean addServicios(Servicios ser) {
        String sql="insert into servicios(idHorario,nombreServicio,precioHora,estado,imagen)values ('"+ser.getIdHorario()+"','"+ser.getNombreServicio()+"','"+ser.getPrecioHora()+"','"+ser.getEstado()+"','"+ser.getFoto()+"')";
        try {
            con = cn.getConnection();
            ps= con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error"+e.getMessage());
        }
        return false;
    }

    @Override
    public boolean editServicios(Servicios ser) {
        String sql="update servicios set idHorario='"+ser.getIdHorario()+"',nombreServicio='"+ser.getNombreServicio()+"',precioHora='"+ser.getPrecioHora()+"',estado='"+ser.getEstado()+"'where idServicio="+ser.getIdServicio();
        try {
            con=cn.getConnection();
            ps= con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    public void listarImagenes(int id, HttpServletResponse response) {
        String sql= "select * from servicios where id="+id;
        InputStream inputStream  = null;
        OutputStream outputStream = null;
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputStream = null;
        try {
            outputStream = response.getOutputStream();
            con= cn.getConnection();
            ps =con.prepareStatement(sql);
            rs = ps.executeQuery();
            if(rs.next()){
                inputStream = rs.getBinaryStream("imagen");
            }
            bufferedInputStream =  new BufferedInputStream(inputStream);
            bufferedOutputStream = new BufferedOutputStream(outputStream);
            int i=0;
            while((i = bufferedInputStream.read())!=-1){
                bufferedOutputStream.write(i);
            }
            
        } catch (Exception e) {
        }
    }

    @Override
    public Servicios seleccionarServicios(Servicios ser) {
        ArrayList<Servicios> list = new ArrayList<>();
        String sql="select idServicio,idHorario from servicios where idServicio="+ser.getIdServicio();
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            ser.setIdServicio(rs.getInt("idServicio"));
            ser.setIdHorario(rs.getInt("idHorario"));
            list.add(ser);
        } catch (Exception e) {
            System.out.println("Error");
        }
        return ser;        
    }

    @Override
    public boolean reservarServicios(Servicios ser) {
        String sql = "insert into listarservicios(idUsuario,idServicio,idHorario)values('1','"+ser.getIdServicio()+"','"+ser.getIdHorario()+"')";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            e.getMessage();
            return false;
        }
        return true;
    }

    @Override
    public List listarReservas() {
        ArrayList<Servicios> list =  new ArrayList<>();
        String sql="select * from servicios se,listarservicios li WHERE se.idServicio = li.idServicio";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                Servicios servicio = new Servicios();
                servicio.setIdServicio(rs.getInt("idServicio"));
                servicio.setIdHorario(rs.getInt("idHorario"));
                servicio.setNombreServicio(rs.getString("nombreServicio"));
                servicio.setPrecioHora(rs.getDouble("precioHora"));
                servicio.setEstado(rs.getInt("estado"));
                servicio.setFoto(rs.getString("imagen"));
            list.add(servicio);
            }      
        } catch (Exception e) {
            System.out.println("Error");
        }
        return list;       
    }
}
