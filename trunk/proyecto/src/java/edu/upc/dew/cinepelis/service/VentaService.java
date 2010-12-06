/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.service;

import edu.upc.dew.cinepelis.common.util.ComboBean;
import edu.upc.dew.cinepelis.model.CabeceraVentaBean;
import java.util.List;

/**
 *
 * @author Johana
 */
public interface VentaService {

    public List<ComboBean> getCarteleraForCombo();

    public Long insertCabecera(CabeceraVentaBean cabeceraVenta);



}
