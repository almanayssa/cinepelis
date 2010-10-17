/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.dao.ibatis;

import edu.upc.dew.cinepelis.model.UsuarioBean;

/**
 *
 * @author edison
 */
public interface UsuarioDAO {

     public UsuarioBean findUsuarioByLogueo(String usuario, String clave);

}
