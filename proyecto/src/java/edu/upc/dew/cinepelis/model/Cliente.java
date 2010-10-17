/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.model;

/**
 *
 * @author edison
 */
public class Cliente {

    //test de commit =) johana

    private Long id_Cliente;
    private String nombres;
    private String apellido_paterno;
    private String apellido_materno;
    private String dni;
    private String telefono;
    private String email;
    private String tipoTarjeta;
    private String numTarjeta;

    public Cliente() {
    }

    

    public Cliente(Long id_Cliente, String nombres, String apellido_paterno, String apellido_materno, String dni, String telefono, String email, String tipoTarjeta, String numTarjeta) {
        this.id_Cliente = id_Cliente;
        this.nombres = nombres;
        this.apellido_paterno = apellido_paterno;
        this.apellido_materno = apellido_materno;
        this.dni = dni;
        this.telefono = telefono;
        this.email = email;
        this.tipoTarjeta = tipoTarjeta;
        this.numTarjeta = numTarjeta;
    }

    public String getApellido_materno() {
        return apellido_materno;
    }

    public void setApellido_materno(String apellido_materno) {
        this.apellido_materno = apellido_materno;
    }

    public String getApellido_paterno() {
        return apellido_paterno;
    }

    public void setApellido_paterno(String apellido_paterno) {
        this.apellido_paterno = apellido_paterno;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Long getId_Cliente() {
        return id_Cliente;
    }

    public void setId_Cliente(Long id_Cliente) {
        this.id_Cliente = id_Cliente;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getTipoTarjeta() {
        return tipoTarjeta;
    }

    public void setTipoTarjeta(String tipoTarjeta) {
        this.tipoTarjeta = tipoTarjeta;
    }

    public String getNumTarjeta() {
        return numTarjeta;
    }

    public void setNumTarjeta(String numTarjeta) {
        this.numTarjeta = numTarjeta;
    }


    




    

}
