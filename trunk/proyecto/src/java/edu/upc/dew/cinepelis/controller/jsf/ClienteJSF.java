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

    public String getApe_materno() {
        return ape_materno;
    }

    public void setApe_materno(String ape_materno) {
        this.ape_materno = ape_materno;
    }

    public String getApe_paterno() {
        return ape_paterno;
    }

    public void setApe_paterno(String ape_paterno) {
        this.ape_paterno = ape_paterno;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Long getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(Long id_cliente) {
        this.id_cliente = id_cliente;
    }

    public List<ClienteBean> getLstCliente() {
        return lstCliente;
    }

    public void setLstCliente(List<ClienteBean> lstCliente) {
        this.lstCliente = lstCliente;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getNum_tarjeta() {
        return num_tarjeta;
    }

    public void setNum_tarjeta(String num_tarjeta) {
        this.num_tarjeta = num_tarjeta;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getTipo_tarjeta() {
        return tipo_tarjeta;
    }

    public void setTipo_tarjeta(String tipo_tarjeta) {
        this.tipo_tarjeta = tipo_tarjeta;
    }
    
    


    public String guardarCliente(){
        log.info("Entrando ... guardarCliente() - ClienteJSF");

        ClienteBean cliente = new ClienteBean();
        cliente.setNombre(getNombre());
        cliente.setApe_paterno(getApe_paterno());
        cliente.setApe_materno(getApe_materno());
        cliente.setDni(getDni());
        cliente.setTelefono(getTelefono());
        cliente.setEmail(getEmail());
        cliente.setTipo_tarjeta(getTipo_tarjeta());
        cliente.setNum_tarjeta(getNum_tarjeta());

        Long idCliente = serviceFactory.getClienteService().guardarCliente(cliente);
        resetForm();

        lstCliente = serviceFactory.getClienteService().getClientes();

        return "clientes";
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
