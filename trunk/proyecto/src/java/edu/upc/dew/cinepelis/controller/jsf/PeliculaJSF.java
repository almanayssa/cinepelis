/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.controller.jsf;

import edu.upc.dew.cinepelis.common.util.GenericBean;
import edu.upc.dew.cinepelis.model.PeliculaBean;
import java.util.List;

/**
 *
 * @author Mayra
 */
public class PeliculaJSF extends GenericBean {

    List<PeliculaBean> lstPelicula;
    private String nombre;
    private String genero;
    private String duracion;
    private String director;
    private String actores;
    private String censura;
    private String sitioWeb;
    private String sinopsis;
    private String rutaFoto;
    
    public String initPeliculas(){
        log.info("Entrando ... initPeliculas() - PeliculaJSF");

        String forward="peliculas";

        try {

            lstPelicula = serviceFactory.getPeliculaService().getPeliculas();
            for(PeliculaBean pelicula: lstPelicula){
                System.out.println(pelicula.getNombre());
            }

	} catch (Exception ex) {
            log.error(ex.getMessage(), ex);
	}


        log.info("Saliendo ... initPeliculas() - PeliculaJSF");

        return forward;
    }

    public List<PeliculaBean> getLstPelicula() {
        return lstPelicula;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the genero
     */
    public String getGenero() {
        return genero;
    }

    /**
     * @param genero the genero to set
     */
    public void setGenero(String genero) {
        this.genero = genero;
    }

    /**
     * @return the duracion
     */
    public String getDuracion() {
        return duracion;
    }

    /**
     * @param duracion the duracion to set
     */
    public void setDuracion(String duracion) {
        this.duracion = duracion;
    }

    /**
     * @return the director
     */
    public String getDirector() {
        return director;
    }

    /**
     * @param director the director to set
     */
    public void setDirector(String director) {
        this.director = director;
    }

    /**
     * @return the actores
     */
    public String getActores() {
        return actores;
    }

    /**
     * @param actores the actores to set
     */
    public void setActores(String actores) {
        this.actores = actores;
    }

    /**
     * @return the censura
     */
    public String getCensura() {
        return censura;
    }

    /**
     * @param censura the censura to set
     */
    public void setCensura(String censura) {
        this.censura = censura;
    }

    /**
     * @return the sitioWeb
     */
    public String getSitioWeb() {
        return sitioWeb;
    }

    /**
     * @param sitioWeb the sitioWeb to set
     */
    public void setSitioWeb(String sitioWeb) {
        this.sitioWeb = sitioWeb;
    }

    /**
     * @return the sinopsis
     */
    public String getSinopsis() {
        return sinopsis;
    }

    /**
     * @param sinopsis the sinopsis to set
     */
    public void setSinopsis(String sinopsis) {
        this.sinopsis = sinopsis;
    }

    /**
     * @return the rutaFoto
     */
    public String getRutaFoto() {
        return rutaFoto;
    }

    /**
     * @param rutaFoto the rutaFoto to set
     */
    public void setRutaFoto(String rutaFoto) {
        this.rutaFoto = rutaFoto;
    }

    public void guardarPelicula(){
        System.out.println("estrellada :)");
    }
}
