/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.controller;

import edu.upc.dew.cinepelis.common.util.GenericBean;
import edu.upc.dew.cinepelis.model.Cartelera;
import java.util.List;

/**
 *
 * @author Johana
 */
public class CarteleraJSF extends  GenericBean{

    List<Cartelera> lstCartelera;

    public String initCartelera(){

        log.info("Entrando ... initCartelera() - CarteleraJSF");

        String forward="cartelera";

         try {

            lstCartelera = serviceFactory.getCarteleraService().getCartelera();
            for(Cartelera cartelera: lstCartelera){
                System.out.println(cartelera.getHora());
            }

	} catch (Exception ex) {
            log.error(ex.getMessage(), ex);
	}

         log.info("Saliendo ... initCartelera() - CarteleraJSF");

        return forward;
    }
            

      public List<Cartelera> getLstCarteleras() {
        return lstCartelera;
    }

}
