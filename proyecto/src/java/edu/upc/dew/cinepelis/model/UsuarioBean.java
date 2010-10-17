/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.model;

/**
 *
 * @author Alyssa
 */

/*
 * CREATE TABLE TB_Usuario (
  id_Usuario INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(60) NOT NULL,
  ape_paterno VARCHAR(60) NOT NULL,
  ape_materno VARCHAR(60) NOT NULL,
  dni CHAR(8) NOT NULL,
  usuario VARCHAR(30) NOT NULL,
  clave VARCHAR(20) NOT NULL,
  perfil CHAR(1) NOT NULL,
  PRIMARY KEY(id_Usuario)
);
 */
public class UsuarioBean {

    private Long id_usuario;
    private String nombre;
    private String ape_paterno;
    private String ape_materno;
    private String usuario;
    private String clave;
    private String perfil;
    private String dni;

    public UsuarioBean() {
    }

    public UsuarioBean(Long id_usuario, String nombre, String ape_paterno, String ape_materno, String usuario, String clave, String perfil, String dni) {
        this.id_usuario = id_usuario;
        this.nombre = nombre;
        this.ape_paterno = ape_paterno;
        this.ape_materno = ape_materno;
        this.usuario = usuario;
        this.clave = clave;
        this.perfil = perfil;
        this.dni = dni;
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

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public Long getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(Long id_usuario) {
        this.id_usuario = id_usuario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPerfil() {
        return perfil;
    }

    public void setPerfil(String perfil) {
        this.perfil = perfil;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }





}
