/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.service;

import edu.upc.dew.cinepelis.model.UsuarioBean;

/**
 *
 * @author johana
 */
public interface UsuarioService {

    
    public UsuarioBean findUsuarioByLogueo(String usuario, String clave);

}
