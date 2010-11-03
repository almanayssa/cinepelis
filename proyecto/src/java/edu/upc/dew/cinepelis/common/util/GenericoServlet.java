/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.common.util;

import javax.servlet.http.HttpServlet;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

/**
 *
 * @author PRIOS
 */
public class GenericoServlet  extends HttpServlet implements InitializingBean{

    private ApplicationContext applicationContext;

    protected Logger log;

    protected ServiceFactory serviceFactory;

    public GenericoServlet() {
         log = Logger.getLogger(this.getClass());
         // init();
    }

     public void init() {
	try {
		if (applicationContext == null) {
                 
			applicationContext = WebApplicationContextUtils.getWebApplicationContext(getServletContext());
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
