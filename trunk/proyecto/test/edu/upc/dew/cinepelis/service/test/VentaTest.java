/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.service.test;

import edu.upc.dew.cinepelis.common.test.TestTransactional;
import edu.upc.dew.cinepelis.common.util.ComboBean;
import edu.upc.dew.cinepelis.model.ClienteBean;
import edu.upc.dew.cinepelis.service.ClienteService;
import edu.upc.dew.cinepelis.service.VentaService;
import java.util.List;
import java.util.Map;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;

/**
 *
 * @author edison
 */
public class VentaTest extends  TestTransactional {

    @Autowired
    private VentaService ventaServiceCtx;


    
    @Test
    @Rollback(false)
    public void testCarteleraForCombo(){
        log.info("entro testCarteleraForCombo");

        List<ComboBean> lstCartelera = ventaServiceCtx.getCarteleraForCombo();

        for(ComboBean cbo: lstCartelera){
            log.info(cbo.getCode()+" "+cbo.getLabel());
        }


        Assert.assertNotNull(lstCartelera);
    }

    

    

}
