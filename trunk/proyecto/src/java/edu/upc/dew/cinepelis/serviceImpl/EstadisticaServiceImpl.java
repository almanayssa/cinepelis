/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.serviceImpl;

import edu.upc.dew.cinepelis.dao.ibatis.EstadisticaDAO;
import edu.upc.dew.cinepelis.model.EstadisticaBean;
import edu.upc.dew.cinepelis.service.EstadisticaService;
import java.util.List;

/**
 *
 * @author Alyssa
 */
public class EstadisticaServiceImpl implements EstadisticaService {

    private EstadisticaDAO estadisticaDAO;

    public EstadisticaDAO getEstadisticaDAO() {
        return estadisticaDAO;
    }

    public void setEstadisticaDAO(EstadisticaDAO estadisticaDAO) {
        this.estadisticaDAO = estadisticaDAO;
    }

    public List<EstadisticaBean> getEstadistica() {
        return getEstadisticaDAO().getEstadistica();
    }
}
