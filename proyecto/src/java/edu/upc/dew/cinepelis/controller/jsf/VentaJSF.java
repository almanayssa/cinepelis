/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.controller.jsf;

import edu.upc.dew.cinepelis.common.util.ComboBean;
import edu.upc.dew.cinepelis.common.util.GenericBean;
import edu.upc.dew.cinepelis.model.ClienteBean;
import java.util.List;

/**
 *
 * @author edison
 */
public class VentaJSF extends  GenericBean{

    private String numTarjeta;
    private String nomCliente;
    private String codeCartelera;
    private List<ComboBean> lstCombo;


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

    public List<ComboBean> getLstCombo() {
        return lstCombo;
    }

    public void setLstCombo(List<ComboBean> lstCombo) {
        this.lstCombo = lstCombo;
    }

    public String getCodeCartelera() {
        return codeCartelera;
    }

    public void setCodeCartelera(String codeCartelera) {
        this.codeCartelera = codeCartelera;
    }







    public String initVentas(){
        log.info("Entrando ... initVentas() - VentaJSF");

        lstCombo= serviceFactory.getVentaService().getCarteleraForCombo();
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
