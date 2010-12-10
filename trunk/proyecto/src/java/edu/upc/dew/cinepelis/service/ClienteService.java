/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.service;

import edu.upc.dew.cinepelis.model.ClienteBean;
import java.util.List;

/**
 *
 * @author johana
 */
public interface ClienteService {

    
    public List<ClienteBean> getClientes();

    public ClienteBean findCustomerByTarjeta(Long numTarjeta);

    public Long guardarCliente(ClienteBean cliente);
}
