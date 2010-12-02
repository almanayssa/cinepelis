/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.controller.jsf;

import edu.upc.dew.cinepelis.common.util.GenericBean;
import javax.faces.context.FacesContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


/**
 *
 * @author Edison
 */
public class UtilJSF extends GenericBean {

   public String logout(){
        log.info("Entrando ... logout() - UtilJSF");

         FacesContext context = FacesContext.getCurrentInstance();
         HttpServletRequest request = (HttpServletRequest)context.getExternalContext().getRequest();
         HttpSession session = request.getSession(false);
         session.setAttribute("beanUsuario", null);
         session.invalidate();

        return "logout";
    }
}
