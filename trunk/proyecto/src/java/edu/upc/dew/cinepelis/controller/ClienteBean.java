/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.controller;

import edu.upc.dew.cinepelis.common.util.GenericBean;



/**
 *
 * @author edison
 */
public class ClienteBean extends  GenericBean{

    public String initClientes(){

        

        System.out.println("entro init");
        
        return "clientes";
    }
   
}
