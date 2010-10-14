/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.cinepe.controller;

import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;

/**
 *
 * @author Ralf
 */
public class LoginBean {

    private String usuario;
    private String password;

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


    public String loguear(){        
        if(usuario!=null && password!=null && usuario.equals("cinepe") && password.equals("cinepe")){
            return "success";
        }else{
            FacesContext.getCurrentInstance().addMessage("formLogin",
                    new FacesMessage(FacesMessage.SEVERITY_ERROR, "Usuario y/o password incorrectos", null));
            return null;
        }    
    }

}
