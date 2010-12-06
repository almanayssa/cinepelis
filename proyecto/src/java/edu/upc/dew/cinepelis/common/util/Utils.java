/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.common.util;


import java.sql.Timestamp;
import java.util.Date;

/**
 *
 * @author edison
 */
public class Utils {
    public static final double PRECIO_ENTRADA= 10.00;

    /**
    * @return Fecha y Hora Actual en Timestamp
    */
    public static Timestamp getNowTimestamp(){
	return new Timestamp(new Date().getTime());
    }

}
