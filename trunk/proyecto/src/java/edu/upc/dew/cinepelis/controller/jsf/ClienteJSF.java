/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.controller.jsf;

import edu.upc.dew.cinepelis.common.util.GenericBean;
import edu.upc.dew.cinepelis.model.ClienteBean;
import java.util.List;



/**
 *
 * @author edison
 */
public class ClienteJSF extends  GenericBean{

    List<ClienteBean> lstCliente;
    private Long id_cliente;
    private String nombre;
    private String ape_paterno;
    private String ape_materno;
    private String dni;
    private String telefono;
    private String email;
    private String tipo_tarjeta;
    private String num_tarjeta;



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


    public String getApe_materno() {
        return ape_materno;
    }

    public String getApe_paterno() {
        return ape_paterno;
    }

    public String getEmail() {
        return email;
    }

    public Long getId_cliente() {
        return id_cliente;
    }

    public String getNombre() {
        return nombre;
    }

    public String getNum_tarjeta() {
        return num_tarjeta;
    }

    public String getTelefono() {
        return telefono;
    }

    public String getTipo_tarjeta() {
        return tipo_tarjeta;
    }

         public void resetForm(){
         id_cliente=null;
         nombre=null;
         ape_paterno=null;
         ape_materno=null;
         dni=null;
         telefono=null;
         email=null;
         tipo_tarjeta=null;
         num_tarjeta=null;
     }
   
}
