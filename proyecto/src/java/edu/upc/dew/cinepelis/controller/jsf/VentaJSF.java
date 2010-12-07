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
import edu.upc.dew.cinepelis.model.DetalleVentaBean;
import edu.upc.dew.cinepelis.model.UsuarioBean;
import java.util.List;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author edison
 */
public class VentaJSF extends  GenericBean{

    private List<DetalleVentaBean> lstEntradas;
    private String numTarjeta;
    private String nomCliente;
    private String codeCartelera;
    private List<ComboBean> lstCombo;
    private Long idCliente;
    private String filaButaca;
    private String columnaButaca;
    private int cantidadEntradas = 0;
    private String montoTotal = "0.00";

    private boolean operacion_is_activa = false;
    private Long idCabecera;


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

    public int getCantidadEntradas() {
        return cantidadEntradas;
    }

    public void setCantidadEntradas(int cantidadEntradas) {
        this.cantidadEntradas = cantidadEntradas;
    }

    public String getMontoTotal() {
        return montoTotal;
    }

    public void setMontoTotal(String montoTotal) {
        this.montoTotal = montoTotal;
    }

    public List<DetalleVentaBean> getLstEntradas() {
        return lstEntradas;
    }

    public void setLstEntradas(List<DetalleVentaBean> lstEntradas) {
        this.lstEntradas = lstEntradas;
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

        if(cliente==null){
           FacesContext.getCurrentInstance().addMessage("formVenta",
                    new FacesMessage(FacesMessage.SEVERITY_ERROR, "Numero de Tarjeta no existe.", null));
            return null;
        }

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

         if(operacion_is_activa==false){
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

             idCabecera = serviceFactory.getVentaService().insertCabecera(cabeceraVenta);
         }
         

         DetalleVentaBean detalle = new DetalleVentaBean();
         detalle.setId_venta(idCabecera);
         detalle.setNum_butaca(filaButaca+"&"+columnaButaca);

         boolean insert = serviceFactory.getVentaService().insertDetalleVenta(detalle);
         operacion_is_activa = insert;
         cantidadEntradas++;
         montoTotal= ""+(cantidadEntradas * Utils.PRECIO_ENTRADA);
         
         if(insert){
             lstEntradas = serviceFactory.getVentaService().getEntradasByCabecera(idCabecera);
             return "venta";
         }
         else{
             resetForm();
             return "inicio";
         }


    }

    public String terminarOperacion(){
        resetForm();
        return "inicio";
    }

    public void resetForm(){
        cantidadEntradas = 0;
        montoTotal="0.00";
        operacion_is_activa = false;
        numTarjeta = null;
        idCliente = null;
        nomCliente = null;
        lstEntradas= null;
    }


    


    


}
