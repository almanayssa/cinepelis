/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.controller;

import edu.upc.dew.cinepelis.common.util.GenericBean;
import edu.upc.dew.cinepelis.model.EstadisticaBean;
import java.util.List;

/**
 *
 * @author Alyssa
 */
public class EstadisticaJSF extends  GenericBean {


    List<EstadisticaBean> lstEstadistica;

    public String initEstadistica(){
        log.info("Entrando ... initEstadisticas() - EstadisticaJSF");

        String forward="estadisticas";

        try {

            lstEstadistica = serviceFactory.getEstadisticaService().getEstadistica();
            for(EstadisticaBean estadistica: lstEstadistica){
                System.out.println(estadistica.getId_pelicula());
            }

	} catch (Exception ex) {
            log.error(ex.getMessage(), ex);
	}


        log.info("Saliendo ... initEstadistica() - EstadisticaJSF");
        return forward;
    }

    public List<EstadisticaBean> getLstEstadistica() {
        return lstEstadistica;
    }
}
