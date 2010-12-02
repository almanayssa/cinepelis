/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.service.test;

import edu.upc.dew.cinepelis.common.test.TestTransactional;
import edu.upc.dew.cinepelis.model.UsuarioBean;
import edu.upc.dew.cinepelis.service.UsuarioService;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;

/**
 *
 * @author edison
 */
public class UsuarioTest extends  TestTransactional {

    @Autowired
    private UsuarioService usuarioServiceCtx;

    private static UsuarioBean usuario;

    
    @Test
    @Rollback(false)
    public void testValidaUsuario(){
        log.info("entro testValidaUsuario");

        usuario = usuarioServiceCtx.findUsuarioByLogueo("prios", "prios1");
        log.info("Apellido Paterno:"+ usuario.getApe_paterno());
        Assert.assertNotNull(usuario);
    }

    

}
