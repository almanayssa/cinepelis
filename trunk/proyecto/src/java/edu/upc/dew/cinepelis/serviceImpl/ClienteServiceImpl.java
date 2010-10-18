/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.serviceImpl;

import edu.upc.dew.cinepelis.model.ClienteBean;
import edu.upc.dew.cinepelis.dao.ibatis.ClienteDAO;
import edu.upc.dew.cinepelis.service.ClienteService;
import java.util.List;


/**
 *
 * @author johana
 */
public class ClienteServiceImpl implements  ClienteService{

    private ClienteDAO clienteDAO;
    

    public ClienteDAO getClienteDAO() {
        return clienteDAO;
    }

    public void setClienteDAO(ClienteDAO clienteDAO) {
        this.clienteDAO = clienteDAO;
    }

    public List<ClienteBean> getClientes() {
        return getClienteDAO().getClientes();
    }


 


    


}
