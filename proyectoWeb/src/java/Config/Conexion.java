package Config;

import java.sql.*;

/**
 *
 * @author crist
 */
public class Conexion {
    Connection con;
    public Conexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyectoweb","root","root");
        } catch (Exception e) {
            System.out.println("Error"+e.getMessage());
        }       
    }
    public Connection getConnection(){
        return con;
    }
}
