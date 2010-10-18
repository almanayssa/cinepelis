/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.model;

/**
 *
 * @author edison
 *
 * CREATE TABLE tb_cliente (
  id_cliente INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(60) NOT NULL,
  ape_paterno VARCHAR(60) NOT NULL,
  ape_materno VARCHAR(60) NOT NULL,
  dni CHAR(8) NOT NULL,
  telefono VARCHAR(20) NULL,
  email VARCHAR(120) NULL,
  tipo_tarjeta CHAR(1) NULL,
  num_tarjeta VARCHAR(20) NULL,
  PRIMARY KEY(id_cliente)
);
 */
public class ClienteBean {

    //test de commit =) johana

    private Long id_cliente;
    private String nombre;
    private String ape_paterno;
    private String ape_materno;
    private String dni;
    private String telefono;
    private String email;
    private String tipo_tarjeta;
    private String num_tarjeta;

    public ClienteBean() {
    }

    public ClienteBean(Long id_cliente, String nombre, String ape_paterno, String ape_materno, String dni, String telefono, String email, String tipo_tarjeta, String num_tarjeta) {
        this.id_cliente = id_cliente;
        this.nombre = nombre;
        this.ape_paterno = ape_paterno;
        this.ape_materno = ape_materno;
        this.dni = dni;
        this.telefono = telefono;
        this.email = email;
        this.tipo_tarjeta = tipo_tarjeta;
        this.num_tarjeta = num_tarjeta;
    }

    public String getApe_materno() {
        return ape_materno;
    }

    public void setApe_materno(String ape_materno) {
        this.ape_materno = ape_materno;
    }

    public String getApe_paterno() {
        return ape_paterno;
    }

    public void setApe_paterno(String ape_paterno) {
        this.ape_paterno = ape_paterno;
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

    public Long getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(Long id_cliente) {
        this.id_cliente = id_cliente;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNum_tarjeta() {
        return num_tarjeta;
    }

    public void setNum_tarjeta(String num_tarjeta) {
        this.num_tarjeta = num_tarjeta;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getTipo_tarjeta() {
        return tipo_tarjeta;
    }

    public void setTipo_tarjeta(String tipo_tarjeta) {
        this.tipo_tarjeta = tipo_tarjeta;
    }

   


    




    

}
