/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.dao.ibatis;

import edu.upc.dew.cinepelis.model.EstadisticaBean;
import java.util.List;

/**
 *
 * @author Alyssa
 */
public interface EstadisticaDAO {
    
    public List<EstadisticaBean> getEstadistica();

}
