/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.dao.ibatis;

import edu.upc.dew.cinepelis.model.Cartelera;
import java.util.List;

/**
 *
 * @author Johana
 */
public interface CarteleraDAO {

     public List<Cartelera> getCartelera();
}
