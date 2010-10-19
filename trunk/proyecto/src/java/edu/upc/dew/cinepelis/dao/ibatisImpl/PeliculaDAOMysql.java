/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.dao.ibatisImpl;

import edu.upc.dew.cinepelis.dao.ibatis.PeliculaDAO;
import edu.upc.dew.cinepelis.model.PeliculaBean;
import java.util.ArrayList;
import java.util.List;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

/**
 *
 * @author Mayra
 */
public class PeliculaDAOMysql extends SqlMapClientDaoSupport implements PeliculaDAO{

    public List<PeliculaBean> getPeliculas() {

       List<PeliculaBean> lstPelicula = new ArrayList<PeliculaBean>();
       PeliculaBean pel = new PeliculaBean();
       pel.setId_pelicula(Long.valueOf(1));
       pel.setNombre("Una Loca Pelicula de Vampoiros");
       pel.setDuracionMinutos(110);       
       pel.setDirector("Steven Spielberg");
       pel.setTipoCensura("Mayores de 14 años");
       lstPelicula.add(pel);

       return lstPelicula;
    }
}
