/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.model;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 *
 * @author edison
 * CREATE TABLE cinepelis.tb_detalle_venta (
  id_venta INTEGER UNSIGNED NOT NULL,
  num_butaca VARCHAR(10) NULL,
  INDEX tb_detalle_venta_FKIndex1(id_venta),
  FOREIGN KEY(id_venta)
    REFERENCES tb_venta(id_venta)
      ON DELETE CASCADE
      ON UPDATE NO ACTION
);;
 */
public class DetalleVentaBean implements  Serializable{

    private Long id_venta;
    private String num_butaca;
    private String row;

    public Long getId_venta() {
        return id_venta;
    }

    public void setId_venta(Long id_venta) {
        this.id_venta = id_venta;
    }

    public String getNum_butaca() {
        return num_butaca;
    }

    public void setNum_butaca(String num_butaca) {
        this.num_butaca = num_butaca;
    }

    public String getRow() {
        return row;
    }

    public void setRow(String row) {
        this.row = row;
    }

    



    




}
