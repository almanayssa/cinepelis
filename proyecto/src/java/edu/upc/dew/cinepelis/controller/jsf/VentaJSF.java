/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.controller.jsf;

import edu.upc.dew.cinepelis.common.util.ComboBean;
import edu.upc.dew.cinepelis.common.util.GenericBean;
import edu.upc.dew.cinepelis.common.util.Utils;
import edu.upc.dew.cinepelis.model.CabeceraVentaBean;
import edu.upc.dew.cinepelis.model.ClienteBean;
import edu.upc.dew.cinepelis.model.UsuarioBean;
import java.util.List;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author edison
 */
public class VentaJSF extends  GenericBean{

    private String numTarjeta;
    private String nomCliente;
    private String codeCartelera;
    private List<ComboBean> lstCombo;
    private Long idCliente;
    private String filaButaca;
    private String columnaButaca;


    public String getNumTarjeta() {
        return numTarjeta;
    }

    public void setNumTarjeta(String numTarjeta) {
        this.numTarjeta = numTarjeta;
    }

    public String getNomCliente() {
        return nomCliente;
    }

    public void setNomCliente(String nomCliente) {
        this.nomCliente = nomCliente;
    }

    public List<ComboBean> getLstCombo() {
        return lstCombo;
    }

    public void setLstCombo(List<ComboBean> lstCombo) {
        this.lstCombo = lstCombo;
    }

    public String getCodeCartelera() {
        return codeCartelera;
    }

    public void setCodeCartelera(String codeCartelera) {
        this.codeCartelera = codeCartelera;
    }

    public Long getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(Long idCliente) {
        this.idCliente = idCliente;
    }

    public String getFilaButaca() {
        return filaButaca;
    }

    public void setFilaButaca(String filaButaca) {
        this.filaButaca = filaButaca;
    }

    public String getColumnaButaca() {
        return columnaButaca;
    }

    public void setColumnaButaca(String columnaButaca) {
        this.columnaButaca = columnaButaca;
    }

    

    





    public String initVentas(){
        log.info("Entrando ... initVentas() - VentaJSF");
        resetForm();
        lstCombo= serviceFactory.getVentaService().getCarteleraForCombo();
        return "venta";
    }

    public String findCustomer(){
        log.info("Entrando ... findCustomer() - VentaJSF");

        ClienteBean cliente = serviceFactory.getClienteService().findCustomerByTarjeta(Long.valueOf(numTarjeta));

        String nombreCompleto = cliente.getNombre()+" "+cliente.getApe_paterno()+" "+cliente.getApe_materno();

        idCliente=cliente.getId_cliente();
        nomCliente=nombreCompleto;

        return "venta";
    }


    public String agregarEntrada(){
         log.info("Entrando ... agregarEntrada() - VentaJSF");

         FacesContext context = FacesContext.getCurrentInstance();
         HttpServletRequest request = (HttpServletRequest)context.getExternalContext().getRequest();
         HttpSession session = request.getSession(false);

         UsuarioBean usuario = (UsuarioBean)session.getAttribute("beanUsuario");

         String[] datos = codeCartelera.split("&");

         String idCartelera = datos[0];
         String idPelicula = datos[1];
         String numSala = datos[2];
         
         log.info("idCliente:"+idCliente);
         log.info("code:"+codeCartelera);
         log.info("Nombre:"+usuario.getNombre());
         log.info("idCartelera:"+idCartelera);
         log.info("idPelicula:"+idPelicula);
         log.info("numSala:"+numSala);
         
         CabeceraVentaBean cabeceraVenta = new CabeceraVentaBean();
         
         cabeceraVenta.setCant_entradas(2);
         cabeceraVenta.setFecha_venta(Utils.getNowTimestamp());
         cabeceraVenta.setId_cartelera(Long.valueOf(idCartelera));
         cabeceraVenta.setId_cliente(Long.valueOf(idCliente));
         cabeceraVenta.setId_usuario(usuario.getId_usuario());
         cabeceraVenta.setMonto_total(cabeceraVenta.getCant_entradas() * Utils.PRECIO_ENTRADA);

         Long idCabecera = serviceFactory.getVentaService().insertCabecera(cabeceraVenta);

         resetForm();

        return "venta";
    }

    public void resetForm(){
        numTarjeta = null;
        idCliente = null;
        nomCliente = null;
    }


    


    


}
