package edu.upc.dew.cinepelis.common.util;



import edu.upc.dew.cinepelis.service.CarteleraService;
import edu.upc.dew.cinepelis.service.ClienteService;
import edu.upc.dew.cinepelis.service.EstadisticaService;
import edu.upc.dew.cinepelis.service.PeliculaService;
import edu.upc.dew.cinepelis.service.UsuarioService;
import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

public class ServiceFactory implements ApplicationContextAware {
	
    /** The Spring application context. */
    private ApplicationContext applicationContext;
    
	public ServiceFactory(ApplicationContext applicationContext) {
		setApplicationContext(applicationContext);
	}

	public void setApplicationContext(ApplicationContext context)
	throws BeansException {
		this.applicationContext = context;
	}

    /**
     * Return the configured Spring Bean for the given name.
     *
     * @param beanName the configured name of the Java Bean
     * @return the configured Spring Bean for the given name
     */
    private Object getBean(String beanName) {
        return applicationContext.getBean(beanName);
    }

    
    /**
     * 
     * @return UsuarioService
     */ 
    public UsuarioService getUsuarioService(){
    	return (UsuarioService)getBean("usuarioServiceCtx");
    }


    /**
     *
     * @return ClienteService
     */
    public ClienteService getClienteService(){
    	return (ClienteService)getBean("clienteServiceCtx");
    }
    
   /**
     *
     * @return CarteleraService
     */
    public CarteleraService getCarteleraService(){
    	return (CarteleraService)getBean("carteleraServiceCtx");
    }


    /**
     *
     * @return EstadisticaService
     */
    public EstadisticaService getEstadisticaService(){
    	return (EstadisticaService)getBean("estadisticaServiceCtx");
    }


    /**
     *
     * @return PeliculaService
     */
    public PeliculaService getPeliculaService(){
    	return (PeliculaService)getBean("peliculaServiceCtx");
    }



 
    
}