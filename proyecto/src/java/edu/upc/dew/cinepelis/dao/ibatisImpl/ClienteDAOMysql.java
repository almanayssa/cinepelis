/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.dao.ibatisImpl;

import edu.upc.dew.cinepelis.dao.ibatis.ClienteDAO;
import edu.upc.dew.cinepelis.model.ClienteBean;
import java.util.ArrayList;
import java.util.List;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

/**
 *
 * @author edison
 */
public class ClienteDAOMysql extends SqlMapClientDaoSupport implements ClienteDAO{

    public List<ClienteBean> getClientes() {

        try{
            return (List<ClienteBean>)getSqlMapClientTemplate().queryForList("listarCliente", null);
	 }catch (Exception e) {
		e.printStackTrace();
		System.out.println("Error en el ibatis - method getCliente()");
		return null;
	}

      /* List<ClienteBean> lstCliente = new ArrayList<ClienteBean>();
       lstCliente.add(new ClienteBean(Long.valueOf(1), "Jazmin", "Sepulveda", "Reyes", "45553638", "4658875", "jazmin@hotmail.com", null, null));
       lstCliente.add(new ClienteBean(Long.valueOf(2), "Harold", "Pajuelo", "Cabrera", "25364455", "1256489", "rarol@hotmail.com", null, null));
       lstCliente.add(new ClienteBean(Long.valueOf(3), "Chiara", "Hidalgo", "Montesinos", "48796532", "5548961", "chiara@hotmail.com", null, null));
       return lstCliente;
        */

       
    }

    public ClienteBean findCustomerByTarjeta(Long numTarjeta) {
       try{
            return (ClienteBean)getSqlMapClientTemplate().queryForObject("findCustomerByTarjeta", numTarjeta);
	}catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error en el ibatis - method findCustomerByTarjeta()");
            return null;
	}

    }

    public Long guardarCliente(ClienteBean cliente) {
        try{
		return (Long)getSqlMapClientTemplate().insert("guardarCliente", cliente);
	}catch (Exception e) {
		e.printStackTrace();
		System.out.println("Error en el ibatis - method guardarCliente()");
		return null;
	}
    }

    

}
