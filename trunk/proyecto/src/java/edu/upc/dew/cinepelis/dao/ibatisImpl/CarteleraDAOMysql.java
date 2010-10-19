/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.dao.ibatisImpl;

import edu.upc.dew.cinepelis.dao.ibatis.CarteleraDAO;
import edu.upc.dew.cinepelis.model.CarteleraBean;
import java.util.ArrayList;
import java.util.List;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;


/**
 *
 * @author Johana
 */
public class CarteleraDAOMysql extends SqlMapClientDaoSupport implements CarteleraDAO{



    public List<CarteleraBean> getCartelera() {

        List<CarteleraBean> lstCartelera=new ArrayList<CarteleraBean>();
        lstCartelera.add(new CarteleraBean(Long.valueOf(1),2,"17:30",null,null,"Los Indestructibles"));
        lstCartelera.add(new CarteleraBean(Long.valueOf(2),3,"19:00",null,null,"El Último Maestro del Aire"));
        lstCartelera.add(new CarteleraBean(Long.valueOf(3),4,"21:20",null,null,"Casi Embarazada"));

        
        return lstCartelera;
    }



}
