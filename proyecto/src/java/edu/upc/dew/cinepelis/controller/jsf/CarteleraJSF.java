/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.controller.jsf;

import edu.upc.dew.cinepelis.common.util.GenericBean;
import edu.upc.dew.cinepelis.model.CarteleraBean;
import edu.upc.dew.cinepelis.model.PeliculaBean;
import java.util.ArrayList;
import java.util.List;
import javax.faces.model.SelectItem;

/**
 *
 * @author Johana
 */
public class CarteleraJSF extends  GenericBean{

    List<CarteleraBean> lstCartelera;
    private List<SelectItem> lstPelicula;
    private String codPelicula;
    private String numeroSala;
    private String horaInicio;
    private boolean isActivo;

    public String initCartelera(){

        log.info("Entrando ... initCartelera() - CarteleraJSF");

        String forward="cartelera";

         try {
            lstCartelera = serviceFactory.getCarteleraService().getCartelera();
	} catch (Exception ex) {
            log.error(ex.getMessage(), ex);
	}

         log.info("Saliendo ... initCartelera() - CarteleraJSF");       
        return forward;
    }
            

    public List<CarteleraBean> getLstCartelera() {
        return lstCartelera;
    }

    /**
     * @return the codPelicula
     */
    public String getCodPelicula() {
        return codPelicula;
    }

    /**
     * @param codPelicula the codPelicula to set
     */
    public void setCodPelicula(String codPelicula) {
        this.codPelicula = codPelicula;
    }

    /**
     * @return the numeroSala
     */
    public String getNumeroSala() {
        return numeroSala;
    }

    /**
     * @param numeroSala the numeroSala to set
     */
    public void setNumeroSala(String numeroSala) {
        this.numeroSala = numeroSala;
    }

    /**
     * @return the horaInicio
     */
    public String getHoraInicio() {
        return horaInicio;
    }

    /**
     * @param horaInicio the horaInicio to set
     */
    public void setHoraInicio(String horaInicio) {
        this.horaInicio = horaInicio;
    }

    /**
     * @return the isActivo
     */
    public boolean isIsActivo() {
        return isActivo;
    }

    /**
     * @param isActivo the isActivo to set
     */
    public void setIsActivo(boolean isActivo) {
        this.isActivo = isActivo;
    }

     /**
     * @return the lstPelicula
     */
    public List<SelectItem> getLstPelicula() {
        listarPeliculas();
        return lstPelicula;
    }

    /**
     * @param lstPelicula the lstPelicula to set
     */
    public void setLstPelicula(List<SelectItem> lstPelicula) {
        this.lstPelicula = lstPelicula;
    }

    public void grabarCartelera(){        
        CarteleraBean c = new CarteleraBean();
        c.setId_pelicula(new Long(codPelicula));
        c.setNum_sala(Integer.parseInt(numeroSala));
        c.setHora_inicio(horaInicio);
        c.setIsActivo(true);
        Long idCartelera = serviceFactory.getCarteleraService().guardarCartelera(c);
        log.info("se insertó la cartelera "+ idCartelera);
        initCartelera();
    }

    public void listarPeliculas(){
       List<PeliculaBean> lista = serviceFactory.getPeliculaService().getPeliculas();
       lstPelicula = new ArrayList<SelectItem>();
       if(lista!=null){
           for(PeliculaBean pb : lista){
               lstPelicula.add(new SelectItem(pb.getId_pelicula(),pb.getNombre()));
           }
       }
    }

   
}
