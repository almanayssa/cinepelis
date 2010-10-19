/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.dao.ibatisImpl;

import edu.upc.dew.cinepelis.dao.ibatis.CarteleraDAO;
import edu.upc.dew.cinepelis.model.Cartelera;
import java.util.ArrayList;
import java.util.List;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;


/**
 *
 * @author Johana
 */
public class CarteleraDAOMysql extends SqlMapClientDaoSupport implements CarteleraDAO{



    public List<Cartelera> getCartelera() {

        List<Cartelera> lstCartelera=new ArrayList<Cartelera>();
        lstCartelera.add(new Cartelera(Long.valueOf(1),2,null,null,null));
        lstCartelera.add(new Cartelera(Long.valueOf(2),2,null,null,null));
        lstCartelera.add(new Cartelera(Long.valueOf(3),2,null,null,null));
//falta implementar aun
        
        return lstCartelera;
    }



}
