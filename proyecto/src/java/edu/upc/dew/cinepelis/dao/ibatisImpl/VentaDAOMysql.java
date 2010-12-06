/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.dao.ibatisImpl;

import edu.upc.dew.cinepelis.common.util.ComboBean;
import edu.upc.dew.cinepelis.dao.ibatis.VentaDAO;
import edu.upc.dew.cinepelis.model.CabeceraVentaBean;

import java.util.List;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

/**
 *
 * @author edison
 */
public class VentaDAOMysql extends SqlMapClientDaoSupport implements VentaDAO{

    public List<ComboBean> getCarteleraForCombo() {
	try{
            return (List<ComboBean>)getSqlMapClientTemplate().queryForList("getCarteleraForCombo", null);
	 }catch (Exception e) {
		e.printStackTrace();
		System.out.println("Error en el ibatis - method getCarteleraForCombo()");
		return null;
	}
}

    public Long insertCabecera(CabeceraVentaBean cabeceraVenta) {
      try{
		return (Long)getSqlMapClientTemplate().insert("insertCabecera", cabeceraVenta);
	}catch (Exception e) {
		e.printStackTrace();
		System.out.println("Error en el ibatis - method insertCabecera()");
		return null;
	}

    }



    

}
