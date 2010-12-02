/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.controller.jsf;

import edu.upc.dew.cinepelis.common.util.GenericBean;
import edu.upc.dew.cinepelis.model.UsuarioBean;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ralf
 */
public class LoginJSF  extends GenericBean{

    private String usuario;
    private String password;
    private String nombreUsuario;

    /**
     * @return the usuario
     */
    public String getUsuario() {
        return usuario;
    }

    /**
     * @param usuario the usuario to set
     */
    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }






    public String loguear(){
        log.info("Entrando ... loguear() - LoginJSF");

        UsuarioBean objUsuario = serviceFactory.getUsuarioService().findUsuarioByLogueo(usuario, password);

        if(objUsuario!=null){
            FacesContext context = FacesContext.getCurrentInstance();
            HttpServletRequest request = (HttpServletRequest)context.getExternalContext().getRequest();
            HttpSession session = request.getSession(true);
            nombreUsuario = objUsuario.getNombre()+" "+objUsuario.getApe_paterno()+" "+objUsuario.getApe_materno();
            
            session.setAttribute("beanUsuario", objUsuario);

            return "success";
        }else{
            FacesContext.getCurrentInstance().addMessage("formLogin",
                    new FacesMessage(FacesMessage.SEVERITY_ERROR, "Usuario y/o password incorrectos", null));
            return null;
        }

    }

}
