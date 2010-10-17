/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.dao.ibatisImpl;

import edu.upc.dew.cinepelis.dao.ibatis.UsuarioDAO;
import edu.upc.dew.cinepelis.model.UsuarioBean;
import java.util.HashMap;
import java.util.Map;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

/**
 *
 * @author edison
 */
public class UsuarioDAOMysql extends SqlMapClientDaoSupport implements UsuarioDAO{
    

    public UsuarioBean findUsuarioByLogueo(String usuario, String clave) {
        try{
		Map mapa= new HashMap();
		mapa.put("usuario", usuario);
		mapa.put("clave", clave);
		return (UsuarioBean) getSqlMapClientTemplate().queryForObject("findUsuarioByLogueo",mapa);
			 
	}catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error en el ibatis - method findUsuarioByLogueo()");
            return null;
	}
    }

}
