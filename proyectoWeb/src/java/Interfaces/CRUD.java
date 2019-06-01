package Interfaces;

import Modelo.Horario;
import java.util.List;

/**
 *
 * @author crist
 */
public interface CRUD {
    //Horarios
    public List listar();
    public Horario list(int id);
    public boolean add(Horario hor);
    public boolean edit(Horario hor);
    public boolean delete(int id);

}
