/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.serviceImpl;

import edu.upc.dew.cinepelis.dao.ibatis.CarteleraDAO;
import edu.upc.dew.cinepelis.model.CarteleraBean;
import edu.upc.dew.cinepelis.service.CarteleraService;
import java.util.List;

/**
 *
 * @author Johana
 */
public class CarteleraServiceImpl implements CarteleraService {

    private CarteleraDAO carteleraDAO;

    public CarteleraDAO getCarteleraDAO(){
        return carteleraDAO;
    }

    public void setCarteleraDAO(CarteleraDAO carteleraDAO){
        this.carteleraDAO=carteleraDAO;
    }

    public List<CarteleraBean> getCartelera() {
        return getCarteleraDAO().getCartelera();
    }


}
