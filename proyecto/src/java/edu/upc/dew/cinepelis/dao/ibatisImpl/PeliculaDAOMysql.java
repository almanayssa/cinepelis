/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.dao.ibatisImpl;

import edu.upc.dew.cinepelis.dao.ibatis.PeliculaDAO;
import edu.upc.dew.cinepelis.model.PeliculaBean;
import edu.upc.dew.cinepelis.model.UsuarioBean;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

/**
 *
 * @author Mayra
 */
public class PeliculaDAOMysql extends SqlMapClientDaoSupport implements PeliculaDAO{

    public List<PeliculaBean> getPeliculas() {

       List<PeliculaBean> lstPelicula = new ArrayList<PeliculaBean>();
       PeliculaBean pel = new PeliculaBean();
       pel.setId_pelicula(Long.valueOf(3));
       pel.setNombre("Una Loca Pelicula de Vampiros");
       pel.setDuracionMinutos(110);
       pel.setDirector("Jason Friedberg");
       pel.setTipoCensura("Mayores de 14 años");
       pel.setRutaImagen("/images/min01.jpg");
       lstPelicula.add(pel);

       pel = new PeliculaBean();
       pel.setId_pelicula(Long.valueOf(4));
       pel.setNombre("El Ultimo Maestro del Aire");
       pel.setDuracionMinutos(180);
       pel.setDirector("M. Night Shyamalan");
       pel.setTipoCensura("Ninguna");
       pel.setRutaImagen("/images/min06.jpg");
       lstPelicula.add(pel);

       pel = new PeliculaBean();
       pel.setId_pelicula(Long.valueOf(6));
       pel.setNombre("Enamorada de mi Ex");
       pel.setDuracionMinutos(150);
       pel.setDirector("Edward Burns");
       pel.setTipoCensura("Mayores de 14 años");
       pel.setRutaImagen("/images/min05.jpg");
       lstPelicula.add(pel);

       pel = new PeliculaBean();
       pel.setId_pelicula(Long.valueOf(5));
       pel.setNombre("Como Perros y Gatos 2");
       pel.setDuracionMinutos(180);
       pel.setDirector("M. Night Shyamalan");
       pel.setTipoCensura("Ninguna");
       pel.setRutaImagen("/images/min04.jpg");
       lstPelicula.add(pel);

       pel = new PeliculaBean();
       pel.setId_pelicula(Long.valueOf(1));
       pel.setNombre("Los Indestructibles");
       pel.setDuracionMinutos(180);
       pel.setDirector("M. Night Shyamalan");
       pel.setTipoCensura("Ninguna");
       pel.setRutaImagen("/images/min02.jpg");
       lstPelicula.add(pel);

       pel = new PeliculaBean();
       pel.setId_pelicula(Long.valueOf(2));
       pel.setNombre("Casi Embarazada");
       pel.setDuracionMinutos(180);
       pel.setDirector("M. Night Shyamalan");
       pel.setTipoCensura("Ninguna");
       pel.setRutaImagen("/images/min03.jpg");
       lstPelicula.add(pel);

       return lstPelicula;
    }

    public PeliculaBean getPeliculaById(String id) {
       for(PeliculaBean pelicula : getPeliculas()){
            String pel = pelicula.getId_pelicula().toString();
            if (pel.equals(id)){
                return pelicula;
            }
        }
        return null;
    }

    public void guardarPelicula(PeliculaBean pelicula) {
       
       getSqlMapClientTemplate().insert("guardarPelicula",pelicula);
    }


}
