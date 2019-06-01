
package ModeloDAO;

import Config.Conexion;
import Interfaces.CRUD;
import Modelo.Horario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author crist
 */
public class HorarioDAO implements CRUD{
    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Horario hora = new Horario();
    
    @Override
    public List listar() {
        ArrayList<Horario>list=new ArrayList<>();
        String sql=("select * from horario");
        try {
            con =cn.getConnection();
            ps= con.prepareStatement(sql);
            rs= ps.executeQuery();
            while(rs.next()){
                Horario hor= new Horario();
                hor.setId(rs.getInt("idHorario"));
                hor.setDiaInicio(rs.getString("diaInicio"));
                hor.setDiaFin(rs.getString("diaFin"));
                hor.setHoraInicio(rs.getString("horaInicio"));
                hor.setHoraFin(rs.getString("horaFin"));
                hor.setEstado(rs.getInt("estado"));
                list.add(hor);
            }
            
        } catch (Exception e) {
        }
        return list;
        
    }

    @Override
    public Horario list(int id) {
        String sql=("select * from horario where idHorario="+id);
        try {
            con =cn.getConnection();
            ps= con.prepareStatement(sql);
            rs= ps.executeQuery();
            while(rs.next()){
                hora.setId(rs.getInt("idHorario"));
                hora.setDiaInicio(rs.getString("diaInicio"));
                hora.setDiaFin(rs.getString("diaFin"));
                hora.setHoraInicio(rs.getString("horaInicio"));
                hora.setHoraFin(rs.getString("horaFin"));
                hora.setEstado(rs.getInt("estado"));
            }
            
        } catch (Exception e) {
        }
        return hora;
    }

    @Override
    public boolean add(Horario hor) {
        String sql="insert into horario(diaInicio,diaFin,horaInicio,horaFin,estado)values ('"+hor.getDiaInicio()+"','"+hor.getDiaFin()+"','"+hor.getDiaInicio()+"','"+hor.getDiaFin()+"','"+hor.getEstado()+"')";
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
    public boolean edit(Horario hor) {
        String sql="update horario set diaInicio='"+hor.getDiaInicio()+"',diaFin='"+hor.getDiaFin()+"',horaInicio='"+hor.getDiaInicio()+"',diaFin='"+hor.getDiaFin()+"',estado='"+hor.getEstado()+"'where idHorario="+hor.getId();
        try {
            con=cn.getConnection();
            ps= con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
     
    }

    @Override
    public boolean delete(int id) {
        String sql="delete from horario where idHorario="+id;
        try {
            con = cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();            
        } catch (Exception e) {
            System.out.println("Error");
        }
        return false;
    }
    
}
