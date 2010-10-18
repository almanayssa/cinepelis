/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.common.util;

import javax.faces.context.FacesContext;
import javax.servlet.ServletContext;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

/**
 *
 * @author PRIOS
 */
public class GenericBean implements InitializingBean{
    
    private ApplicationContext applicationContext;

    protected Logger log;

    protected ServiceFactory serviceFactory;


    public GenericBean() {
        log = Logger.getLogger(this.getClass());
        init();
    }


    public void init() {
	try {
		if (applicationContext == null) {
                        FacesContext fc = FacesContext.getCurrentInstance();
                        ServletContext sc = (ServletContext) fc.getExternalContext().getContext();
			applicationContext = WebApplicationContextUtils.getWebApplicationContext(sc);
                        System.out.println(applicationContext);
		}
		if (serviceFactory == null) {
			serviceFactory = new ServiceFactory(applicationContext);
		}
	} catch (Exception e) {
			e.printStackTrace();
			log.error(e);
		}
    }

    public void afterPropertiesSet() throws Exception {
        init();
       
    }

}
