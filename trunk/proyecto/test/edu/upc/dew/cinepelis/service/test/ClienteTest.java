/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.service.test;

import edu.upc.dew.cinepelis.common.test.TestTransactional;
import edu.upc.dew.cinepelis.model.ClienteBean;
import edu.upc.dew.cinepelis.service.ClienteService;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;

/**
 *
 * @author edison
 */
public class ClienteTest extends  TestTransactional {

    @Autowired
    private ClienteService clienteServiceCtx;

    private static ClienteBean cliente;

    
    @Test
    @Rollback(false)
    public void testBusquedaPorNumeroTarjeta(){
        log.info("entro testValidaUsuario");

        cliente = clienteServiceCtx.findCustomerByTarjeta(123L);
        log.info("Apellido Paterno:"+ cliente.getApe_paterno());
        Assert.assertNotNull(cliente);
    }

    

    

}
