/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.serviceImpl;

import edu.upc.dew.cinepelis.dao.ibatis.PeliculaDAO;
import edu.upc.dew.cinepelis.model.PeliculaBean;
import edu.upc.dew.cinepelis.service.PeliculaService;
import java.util.List;

/**
 *
 * @author Mayra
 */
public class PeliculaServiceImpl implements PeliculaService{

    private PeliculaDAO peliculaDAO;


    public PeliculaDAO getPeliculaDAO() {
        return peliculaDAO;
    }

    public void setPeliculaDAO(PeliculaDAO peliculaDAO) {
        this.peliculaDAO = peliculaDAO;
    }

    public List<PeliculaBean> getPeliculas() {
        return getPeliculaDAO().getPeliculas();
    }
}
