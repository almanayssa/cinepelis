/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.service;

import edu.upc.dew.cinepelis.model.PeliculaBean;
import java.util.List;

/**
 *
 * @author Mayra
 */
public interface PeliculaService {

    public List<PeliculaBean> getPeliculas();

    public PeliculaBean getPeliculaById(String id);

    public void guardarPelicula(PeliculaBean pelicula);

}
