/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.upc.dew.cinepelis.dao.ibatisImpl;

import edu.upc.dew.cinepelis.dao.ibatis.EstadisticaDAO;
import edu.upc.dew.cinepelis.model.EstadisticaBean;
import java.util.ArrayList;
import java.util.List;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

/**
 *
 * @author Alyssa
 */
public class EstadisticaDAOMysql extends SqlMapClientDaoSupport implements EstadisticaDAO {

    public List<EstadisticaBean> getEstadistica() {

        List<EstadisticaBean> lstEstadistica = new ArrayList<EstadisticaBean>();
        lstEstadistica.add(new EstadisticaBean(Long.valueOf(1),"El Último Maestro del Aire", 4, 40, 30, 40.0 / 10.0));
        lstEstadistica.add(new EstadisticaBean(Long.valueOf(2),"Karate Kid", 2, 45, 10, 45.0 / 10.0));



        return lstEstadistica;
    }
}
