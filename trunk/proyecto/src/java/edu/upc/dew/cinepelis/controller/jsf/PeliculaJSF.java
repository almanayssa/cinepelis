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

    private List<PeliculaBean> lstPelicula;
    private String nombre;
    private String genero;
    private int duracionMinutos;
    private String director;
    private String actoresPrincipales;
    private String tipoCensura;
    private String sitioWeb;
    private String sinopsis;
    private String rutaImagen;
    private boolean isVigente;
    
    public String initPeliculas(){
        log.info("Entrando ... initPeliculas() - PeliculaJSF");

        String forward="peliculas";

        try {

            lstPelicula = serviceFactory.getPeliculaService().getPeliculas();
            for(PeliculaBean pelicula: getLstPelicula()){
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
     * @return the duracionMinutos
     */
    public int getDuracionMinutos() {
        return duracionMinutos;
    }

    /**
     * @param duracionMinutos the duracionMinutos to set
     */
    public void setDuracionMinutos(int duracionMinutos) {
        this.duracionMinutos = duracionMinutos;
    }

    /**
     * @return the actoresPrincipales
     */
    public String getActoresPrincipales() {
        return actoresPrincipales;
    }

    /**
     * @param actoresPrincipales the actoresPrincipales to set
     */
    public void setActoresPrincipales(String actoresPrincipales) {
        this.actoresPrincipales = actoresPrincipales;
    }

    /**
     * @return the tipoCensura
     */
    public String getTipoCensura() {
        return tipoCensura;
    }

    /**
     * @param tipoCensura the tipoCensura to set
     */
    public void setTipoCensura(String tipoCensura) {
        this.tipoCensura = tipoCensura;
    }

    /**
     * @return the rutaImagen
     */
    public String getRutaImagen() {
        return rutaImagen;
    }

    /**
     * @param rutaImagen the rutaImagen to set
     */
    public void setRutaImagen(String rutaImagen) {
        this.rutaImagen = rutaImagen;
    }

    /**
     * @return the isVigente
     */
    public boolean isIsVigente() {
        return isVigente;
    }

    /**
     * @param isVigente the isVigente to set
     */
    public void setIsVigente(boolean isVigente) {
        this.isVigente = isVigente;
    }

    public String guardarPelicula(){
        log.info("Entrando ... guardarPelicula() - PeliculaJSF");

        PeliculaBean pelicula = new PeliculaBean();
        pelicula.setNombre(getNombre());
        pelicula.setGenero(getGenero());
        pelicula.setDuracionMinutos(duracionMinutos);
        pelicula.setDirector(getDirector());
        pelicula.setActoresPrincipales(actoresPrincipales);
        pelicula.setTipoCensura(tipoCensura);
        pelicula.setSitioWeb(getSitioWeb());
        pelicula.setSinopsis(getSinopsis());
        pelicula.setRutaImagen(null);
        pelicula.setIsVigente(true);
        
        Long idPelicula = serviceFactory.getPeliculaService().guardarPelicula(pelicula);
        resetForm();

        return "peliculas";
    }

    public void resetForm(){
        nombre = null;
        genero = null;
        duracionMinutos = 0;
        director = null;
        actoresPrincipales = null;
        tipoCensura = null;
        sitioWeb = null;
        sinopsis = null;
        rutaImagen = null;
    }

}
