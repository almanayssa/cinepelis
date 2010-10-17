/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.serviceImpl;

import edu.upc.dew.cinepelis.dao.ibatis.UsuarioDAO;
import edu.upc.dew.cinepelis.model.UsuarioBean;
import edu.upc.dew.cinepelis.service.UsuarioService;

/**
 *
 * @author johana
 */
public class UsuarioServiceImpl implements  UsuarioService{

    private UsuarioDAO usuarioDAO;

    public UsuarioDAO getUsuarioDAO() {
        return usuarioDAO;
    }

    public void setUsuarioDAO(UsuarioDAO usuarioDAO) {
        this.usuarioDAO = usuarioDAO;
    }



    public UsuarioBean findUsuarioByLogueo(String usuario, String clave) {
        return getUsuarioDAO().findUsuarioByLogueo(usuario, clave);
    }

}
