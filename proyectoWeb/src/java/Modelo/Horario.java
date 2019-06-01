package Modelo;

/**
 *
 * @author crist
 */
public class Horario {
    public int id;
    public String diaInicio;
    public String diaFin;
    public String horaInicio;
    public String horaFin;
    public int estado;

    public Horario() {
    }

    public Horario(int id, String diaInicio, String diaFin, String horaInicio, String horaFin, int estado) {
        this.id = id;
        this.diaInicio = diaInicio;
        this.diaFin = diaFin;
        this.horaInicio = horaInicio;
        this.horaFin = horaFin;
        this.estado = estado;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDiaInicio() {
        return diaInicio;
    }

    public void setDiaInicio(String diaInicio) {
        this.diaInicio = diaInicio;
    }

    public String getDiaFin() {
        return diaFin;
    }

    public void setDiaFin(String diaFin) {
        this.diaFin = diaFin;
    }

    public String getHoraInicio() {
        return horaInicio;
    }

    public void setHoraInicio(String horaInicio) {
        this.horaInicio = horaInicio;
    }

    public String getHoraFin() {
        return horaFin;
    }

    public void setHoraFin(String horaFin) {
        this.horaFin = horaFin;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }
    
    
}
