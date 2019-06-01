package Modelo;

import java.io.InputStream;

/**
 *
 * @author crist
 */
public class Servicios {
    public int idServicio;
    public int idHorario;
    public String nombreServicio;
    public double precioHora;
    public int estado;
    public String foto;
    public String error;

    public Servicios() {
    }

    public Servicios(int idServicio, int idHorario, String nombreServicio, double precioHora, int estado, String foto, String error) {
        this.idServicio = idServicio;
        this.idHorario = idHorario;
        this.nombreServicio = nombreServicio;
        this.precioHora = precioHora;
        this.estado = estado;
        this.foto = foto;
        this.error = error;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    public int getIdServicio() {
        return idServicio;
    }

    public void setIdServicio(int idServicio) {
        this.idServicio = idServicio;
    }

    public int getIdHorario() {
        return idHorario;
    }

    public void setIdHorario(int idHorario) {
        this.idHorario = idHorario;
    }

    public String getNombreServicio() {
        return nombreServicio;
    }

    public void setNombreServicio(String nombreServicio) {
        this.nombreServicio = nombreServicio;
    }

    public double getPrecioHora() {
        return precioHora;
    }

    public void setPrecioHora(double precioHora) {
        this.precioHora = precioHora;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }
}