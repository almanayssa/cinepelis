/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.dao.ibatis;

import edu.upc.dew.cinepelis.model.ClienteBean;
import java.util.List;

/**
 *
 * @author edison
 */
public interface ClienteDAO {

     public List<ClienteBean> getClientes();

     public ClienteBean findCustomerByTarjeta(Long numTarjeta);

}
