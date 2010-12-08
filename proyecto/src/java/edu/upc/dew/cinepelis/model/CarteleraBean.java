/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.model;

import java.io.Serializable;

/**
 *
 * @author johana
 */
public class CarteleraBean  implements Serializable{

    private Long id_cartelera;
    private Long id_pelicula;
    private int numSala; 
    private String hora_inicio;
    private boolean isActivo;
    private String nombre;

    public CarteleraBean() {
    }

    public CarteleraBean(Long id_pelicula, int num_Sala, String hora) {
        this.id_pelicula = id_pelicula;
        this.numSala = num_Sala;
        this.hora_inicio = hora;
    }   

   
    public Long getId_pelicula() {
        return id_pelicula;
    }

    public void setId_pelicula(Long id_pelicula) {
        this.id_pelicula = id_pelicula;
    }

    public int getNumSala() {
        return numSala;
    }

    public void setNumSala(int numSala) {
        this.numSala = numSala;
    }

    /**
     * @return the hora_inicio
     */
    public String getHora_inicio() {
        return hora_inicio;
    }

    /**
     * @param hora_inicio the hora_inicio to set
     */
    public void setHora_inicio(String hora_inicio) {
        this.hora_inicio = hora_inicio;
    }

    /**
     * @return the isActivo
     */
    public boolean isIsActivo() {
        return isActivo;
    }

    /**
     * @param isActivo the isActivo to set
     */
    public void setIsActivo(boolean isActivo) {
        this.isActivo = isActivo;
    }

    /**
     * @return the id_cartelera
     */
    public Long getId_cartelera() {
        return id_cartelera;
    }

    /**
     * @param id_cartelera the id_cartelera to set
     */
    public void setId_cartelera(Long id_cartelera) {
        this.id_cartelera = id_cartelera;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }



}
