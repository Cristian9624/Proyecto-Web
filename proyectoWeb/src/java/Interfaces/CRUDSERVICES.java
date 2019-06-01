/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfaces;

import Modelo.Servicios;
import java.util.List;

/**
 *
 * @author crist
 */
public interface CRUDSERVICES {
        
    //Servicios
    public List listarServicios();
    public Servicios lista(int id);
    public List listarReservas();
    public boolean addServicios(Servicios ser);
    public Servicios seleccionarServicios(Servicios ser);
    public boolean reservarServicios(Servicios ser);
    public boolean editServicios(Servicios ser);
    public boolean deleteServicios(int id);
    
}
