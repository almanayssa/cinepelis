/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.controller;

import edu.upc.dew.cinepelis.common.util.GenericBean;
import edu.upc.dew.cinepelis.model.PeliculaBean;
import java.util.List;

/**
 *
 * @author Mayra
 */
public class PeliculaJSF extends GenericBean {

    List<PeliculaBean> lstPelicula;

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
}
