/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.serviceImpl;


import edu.upc.dew.cinepelis.common.util.ComboBean;
import edu.upc.dew.cinepelis.dao.ibatis.VentaDAO;
import edu.upc.dew.cinepelis.service.VentaService;
import java.util.List;

/**
 *
 * @author johana
 */
public class VentaServiceImpl implements  VentaService{

    private VentaDAO ventaDAO;

    public VentaDAO getVentaDAO() {
        return ventaDAO;
    }

    public void setVentaDAO(VentaDAO ventaDAO) {
        this.ventaDAO = ventaDAO;
    }


    

    public List<ComboBean> getCarteleraForCombo() {
        return getVentaDAO().getCarteleraForCombo();
    }
    



 


    


}
