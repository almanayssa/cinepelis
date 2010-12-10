/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.dao.ibatis;

import edu.upc.dew.cinepelis.model.PeliculaBean;
import java.util.List;

/**
 *
 * @author Mayra
 */
public interface PeliculaDAO {

     public List<PeliculaBean> getPeliculas();

     public PeliculaBean getPeliculaById(String id);

     public Long guardarPelicula(PeliculaBean pelicula);

     public void eliminarPelicula(int id);
}
