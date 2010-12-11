/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.dao.ibatis;

import edu.upc.dew.cinepelis.model.CarteleraBean;
import java.util.List;

/**
 *
 * @author Johana
 */
public interface CarteleraDAO {

     public List<CarteleraBean> getCartelera();

     public Long guardarCartelera(CarteleraBean cartelera);

      public void eliminarCartelera(int id);
}
