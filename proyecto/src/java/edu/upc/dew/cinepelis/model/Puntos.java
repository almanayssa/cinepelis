/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.model;

/**
 *
 * @author Alyssa
 */
public class Puntos {

    private Long id_Cliente;
    private int cant_puntos;

    public Puntos() {
    }



    public Puntos(Long id_Cliente, int cant_puntos) {
        this.id_Cliente = id_Cliente;
        this.cant_puntos = cant_puntos;
    }

    public int getCant_puntos() {
        return cant_puntos;
    }

    public void setCant_puntos(int cant_puntos) {
        this.cant_puntos = cant_puntos;
    }

    public Long getId_Cliente() {
        return id_Cliente;
    }

    public void setId_Cliente(Long id_Cliente) {
        this.id_Cliente = id_Cliente;
    }

    
}
