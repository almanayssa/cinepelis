/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.dao.ibatis;

import edu.upc.dew.cinepelis.common.util.ComboBean;
import edu.upc.dew.cinepelis.model.CabeceraVentaBean;
import java.util.List;


/**
 *
 * @author edison
 */
public interface VentaDAO {

   public List<ComboBean> getCarteleraForCombo();

    public Long insertCabecera(CabeceraVentaBean cabeceraVenta);

}
