/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import services.User;

/**
 *
 * @author _Sebastián_
 */
public class UserService {

    public UserService() {
    }

    public java.util.List<services.User> listar() {
        services.ServicioWeb_Service service = new services.ServicioWeb_Service();
        services.ServicioWeb port = service.getServicioWebPort();
        return port.listar();
    }

    public String agregar(java.lang.String nombre, java.lang.String apellido, java.lang.String carrera) {
        services.ServicioWeb_Service service = new services.ServicioWeb_Service();
        services.ServicioWeb port = service.getServicioWebPort();
        return port.agregar(nombre, apellido, carrera);
    }

    public User listarID(int id) {
        services.ServicioWeb_Service service = new services.ServicioWeb_Service();
        services.ServicioWeb port = service.getServicioWebPort();
        return port.listarID(id);
    }

    public String actualizar(int id, java.lang.String nombre, java.lang.String apellido, java.lang.String carrera) {
        services.ServicioWeb_Service service = new services.ServicioWeb_Service();
        services.ServicioWeb port = service.getServicioWebPort();
        return port.actualizar(id, nombre, apellido, carrera);
    }

    public User eliminar(int id) {
        services.ServicioWeb_Service service = new services.ServicioWeb_Service();
        services.ServicioWeb port = service.getServicioWebPort();
        return port.eliminar(id);
    }
    
}
