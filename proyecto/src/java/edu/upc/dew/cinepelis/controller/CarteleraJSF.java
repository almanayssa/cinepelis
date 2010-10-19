/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.controller;

import edu.upc.dew.cinepelis.common.util.GenericBean;
import edu.upc.dew.cinepelis.model.CarteleraBean;
import java.util.List;

/**
 *
 * @author Johana
 */
public class CarteleraJSF extends  GenericBean{

    List<CarteleraBean> lstCartelera;

    public String initCartelera(){

        log.info("Entrando ... initCartelera() - CarteleraJSF");

        String forward="cartelera";

         try {

            lstCartelera = serviceFactory.getCarteleraService().getCartelera();
            for(CarteleraBean cartelera: lstCartelera){
                System.out.println(cartelera.getHora());
            }

	} catch (Exception ex) {
            log.error(ex.getMessage(), ex);
	}

         log.info("Saliendo ... initCartelera() - CarteleraJSF");

        return forward;
    }
            

      public List<CarteleraBean> getLstCartelera() {
        return lstCartelera;
    }

}
