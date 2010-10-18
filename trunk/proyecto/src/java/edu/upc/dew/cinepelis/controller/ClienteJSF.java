/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.controller;

import edu.upc.dew.cinepelis.common.util.GenericBean;
import edu.upc.dew.cinepelis.model.ClienteBean;
import java.util.List;



/**
 *
 * @author edison
 */
public class ClienteJSF extends  GenericBean{

     List<ClienteBean> lstCliente;

    public String initClientes(){
        log.info("Entrando ... initClientes() - ClienteJSF");

        String forward="clientes";

        try {

            lstCliente = serviceFactory.getClienteService().getClientes();
            for(ClienteBean cliente: lstCliente){
                System.out.println(cliente.getApe_paterno());
            }

	} catch (Exception ex) {
            log.error(ex.getMessage(), ex);
	}


        log.info("Saliendo ... initClientes() - ClienteJSF");

        return forward;
    }

    public List<ClienteBean> getLstCliente() {
        return lstCliente;
    }

    


}
