/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.controller.jsf;

import edu.upc.dew.cinepelis.common.util.GenericBean;
import edu.upc.dew.cinepelis.model.ClienteBean;

/**
 *
 * @author edison
 */
public class VentaJSF extends  GenericBean{

    private String numTarjeta;
    private String nomCliente;

    public String getNumTarjeta() {
        return numTarjeta;
    }

    public void setNumTarjeta(String numTarjeta) {
        this.numTarjeta = numTarjeta;
    }

    public String getNomCliente() {
        return nomCliente;
    }

    public void setNomCliente(String nomCliente) {
        this.nomCliente = nomCliente;
    }


    public String initVentas(){
        log.info("Entrando ... initVentas() - VentaJSF");
        return "venta";
    }

    public String findCustomer(){
        log.info("Entrando ... findCustomer() - VentaJSF");

        ClienteBean cliente = serviceFactory.getClienteService().findCustomerByTarjeta(Long.valueOf(numTarjeta));

        String nombreCompleto = cliente.getNombre()+" "+cliente.getApe_paterno()+" "+cliente.getApe_materno();
        nomCliente=nombreCompleto;

        return "venta";
    }


    


    


}
