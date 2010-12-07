/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.service.test;

import edu.upc.dew.cinepelis.common.test.TestTransactional;
import edu.upc.dew.cinepelis.common.util.ComboBean;
import edu.upc.dew.cinepelis.common.util.Utils;
import edu.upc.dew.cinepelis.model.CabeceraVentaBean;
import edu.upc.dew.cinepelis.model.DetalleVentaBean;
import edu.upc.dew.cinepelis.service.VentaService;
import java.util.List;


import org.junit.BeforeClass;
import org.junit.Test;
import org.junit.Assert;
import org.junit.Ignore;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;

/**
 *
 * @author edison
 */
public class VentaTest extends  TestTransactional {

    @Autowired
    private VentaService ventaServiceCtx;

    private static CabeceraVentaBean cabeceraVenta = new CabeceraVentaBean();

    @BeforeClass
    public static void  inicializa(){
        cabeceraVenta.setCant_entradas(2);
        cabeceraVenta.setFecha_venta(Utils.getNowTimestamp());
        cabeceraVenta.setId_cartelera(1L);
        cabeceraVenta.setId_cliente(1L);
        cabeceraVenta.setId_usuario(1L);
        cabeceraVenta.setMonto_total(cabeceraVenta.getCant_entradas() * Utils.PRECIO_ENTRADA);
        
    }


    @Ignore
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
    
    @Ignore
    @Test
    @Rollback(false)
    public void testInsertaCabecera(){

        Long idCabecera = ventaServiceCtx.insertCabecera(cabeceraVenta);

        Assert.assertEquals(idCabecera, Long.valueOf(1));
    }

    @Ignore
    @Test
    @Rollback(false)
    public void testInsertaDetalle(){
        log.info("entro testInsertaDetalle");
        DetalleVentaBean detalle = new DetalleVentaBean();
        detalle.setId_venta(1L);
        detalle.setNum_butaca("A&1");

        boolean insert = ventaServiceCtx.insertDetalleVenta(detalle);

        Assert.assertEquals(true, insert);
    }


    @Test
    @Rollback(false)
    public void testListadoEntradas(){
        log.info("entro testListadoEntradas");
        List <DetalleVentaBean> lst = ventaServiceCtx.getEntradasByCabecera(1L);

        for(DetalleVentaBean obj : lst){
            log.info("butaca: "+obj.getNum_butaca());
        }

        Assert.assertNotNull(lst);
    }


    

    

}
