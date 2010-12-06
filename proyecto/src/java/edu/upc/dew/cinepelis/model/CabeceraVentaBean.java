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
 * CREATE TABLE cinepelis.tb_venta (
  id_venta INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  id_cartelera INTEGER UNSIGNED NOT NULL,
  id_cliente INTEGER UNSIGNED NOT NULL,
  id_usuario INTEGER UNSIGNED NOT NULL,
  fecha_venta DATETIME NULL,
  cant_entradas INTEGER UNSIGNED NULL,
  monto_total DOUBLE NULL,
  PRIMARY KEY(id_venta),
  INDEX tb_venta_FKIndex2(id_usuario),
  INDEX tb_venta_FKIndex3(id_cliente),
  INDEX tb_venta_FKIndex4(id_cartelera),
  FOREIGN KEY(id_usuario)
    REFERENCES tb_usuario(id_usuario)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(id_cliente)
    REFERENCES tb_cliente(id_cliente)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(id_cartelera)
    REFERENCES tb_cartelera(id_cartelera)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);
 */
public class CabeceraVentaBean implements  Serializable{

    private Long id_venta;
    private Long id_cartelera;
    private Long id_cliente;
    private Long id_usuario;
    private Timestamp fecha_venta;
    private int cant_entradas;
    private double monto_total;

    public int getCant_entradas() {
        return cant_entradas;
    }

    public void setCant_entradas(int cant_entradas) {
        this.cant_entradas = cant_entradas;
    }

    public Timestamp getFecha_venta() {
        return fecha_venta;
    }

    public void setFecha_venta(Timestamp fecha_venta) {
        this.fecha_venta = fecha_venta;
    }

    public Long getId_cartelera() {
        return id_cartelera;
    }

    public void setId_cartelera(Long id_cartelera) {
        this.id_cartelera = id_cartelera;
    }

    public Long getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(Long id_cliente) {
        this.id_cliente = id_cliente;
    }

    public Long getId_usuario() {
        return id_usuario;
    }

    public void setId_usuario(Long id_usuario) {
        this.id_usuario = id_usuario;
    }

    public Long getId_venta() {
        return id_venta;
    }

    public void setId_venta(Long id_venta) {
        this.id_venta = id_venta;
    }

    public double getMonto_total() {
        return monto_total;
    }

    public void setMonto_total(double monto_total) {
        this.monto_total = monto_total;
    }



    



}
