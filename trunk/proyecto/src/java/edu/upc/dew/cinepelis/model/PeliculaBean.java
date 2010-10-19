/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.model;

/**
 *
 * @author edison
 *
 * CREATE TABLE tb_pelicula (
  id_pelicula INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(150) NULL,
  genero VARCHAR(20) NULL,
  duracion TIME NULL,
  director VARCHAR(255) NULL,
  actores TEXT NULL,
  censura INTEGER UNSIGNED NULL,
  web VARCHAR(255) NULL,
  sinopsis TEXT NULL,
  periodo INTEGER UNSIGNED NULL,
  foto VARCHAR(255) NULL,
  PRIMARY KEY(id_pelicula)
);
 */
public class PeliculaBean {

    private Long id_pelicula;
    private String nombre;
    private String genero;
    private int duracionMinutos;
    private String director;
    private String actoresPrincipales;
    private String tipoCensura;
    private String sitioWeb;
    private String sinopsis;
    private String periodo;
    private String rutaImagen;

    public PeliculaBean() {
    }



    public PeliculaBean(Long id_pelicula, String nombre, int duracionMinutos, String director, String actoresPrincipales, String tipoCensura, String sitioWeb, String sinopsis, String rutaImagen, String tipoRestriccion, String genero, String periodo) {
        this.id_pelicula = id_pelicula;
        this.nombre = nombre;
        this.duracionMinutos = duracionMinutos;
        this.director = director;
        this.actoresPrincipales = actoresPrincipales;
        this.tipoCensura = tipoCensura;
        this.sitioWeb = sitioWeb;
        this.sinopsis = sinopsis;
        this.rutaImagen = rutaImagen;
        this.genero = genero;
        this.periodo = periodo;
    }

    public String getActoresPrincipales() {
        return actoresPrincipales;
    }

    public void setActoresPrincipales(String actoresPrincipales) {
        this.actoresPrincipales = actoresPrincipales;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public int getDuracionMinutos() {
        return duracionMinutos;
    }

    public void setDuracionMinutos(int duracionMinutos) {
        this.duracionMinutos = duracionMinutos;
    }

    public Long getId_pelicula() {
        return id_pelicula;
    }

    public void setId_pelicula(Long id_pelicula) {
        this.id_pelicula = id_pelicula;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getRutaImagen() {
        return rutaImagen;
    }

    public void setRutaImagen(String rutaImagen) {
        this.rutaImagen = rutaImagen;
    }

    public String getSinopsis() {
        return sinopsis;
    }

    public void setSinopsis(String sinopsis) {
        this.sinopsis = sinopsis;
    }

    public String getSitioWeb() {
        return sitioWeb;
    }

    public void setSitioWeb(String sitioWeb) {
        this.sitioWeb = sitioWeb;
    }

    public String getTipoCensura() {
        return tipoCensura;
    }

    public void setTipoCensura(String tipoCensura) {
        this.tipoCensura = tipoCensura;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getPeriodo() {
        return periodo;
    }

    public void setPeriodo(String periodo) {
        this.periodo = periodo;
    }




}
