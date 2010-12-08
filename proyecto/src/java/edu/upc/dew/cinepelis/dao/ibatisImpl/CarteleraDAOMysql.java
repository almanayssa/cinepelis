/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.dao.ibatisImpl;

import edu.upc.dew.cinepelis.dao.ibatis.CarteleraDAO;
import edu.upc.dew.cinepelis.model.CarteleraBean;
import java.util.List;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;


/**
 *
 * @author Johana
 */
public class CarteleraDAOMysql extends SqlMapClientDaoSupport implements CarteleraDAO{



    public List<CarteleraBean> getCartelera() {
        try {
            return (List<CarteleraBean>) getSqlMapClientTemplate().queryForList("listarCartelera");
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error en el ibatis - method getCartelera()");
            return null;
        }
    }

    
    public Long guardarCartelera(CarteleraBean cartelera) {
          try {
            return (Long) getSqlMapClientTemplate().insert("guardarCartelera", cartelera);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error en el ibatis - method guardarCartelera()");
            return null;
        }
    }



}
