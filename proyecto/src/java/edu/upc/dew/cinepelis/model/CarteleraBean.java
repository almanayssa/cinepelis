/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.model;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author johana
 */
public class CarteleraBean  implements Serializable{

    private Long id_pelicula;
    private int num_Sala;
    private String hora;
    private Date fecha_inicio;
    private Date fecha_fin;
    private String nom_pelicula;

    public CarteleraBean() {
    }



    public CarteleraBean(Long id_pelicula, int num_Sala, String hora, Date fecha_inicio, Date fecha_fin,String nom_pelicula) {
        this.id_pelicula = id_pelicula;
        this.num_Sala = num_Sala;
        this.hora = hora;
        this.fecha_inicio = fecha_inicio;
        this.fecha_fin = fecha_fin;
        this.nom_pelicula=nom_pelicula;
    }

    public String getNom_pelicula() {
        return nom_pelicula;
    }

    public void setNom_pelicula(String nom_pelicula) {
        this.nom_pelicula=nom_pelicula;
    }

    public Date getFecha_fin() {
        return fecha_fin;
    }

    public void setFecha_fin(Date fecha_fin) {
        this.fecha_fin = fecha_fin;
    }

    public Date getFecha_inicio() {
        return fecha_inicio;
    }

    public void setFecha_inicio(Date fecha_inicio) {
        this.fecha_inicio = fecha_inicio;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public Long getId_pelicula() {
        return id_pelicula;
    }

    public void setId_pelicula(Long id_pelicula) {
        this.id_pelicula = id_pelicula;
    }

    public int getNum_Sala() {
        return num_Sala;
    }

    public void setNum_Sala(int num_Sala) {
        this.num_Sala = num_Sala;
    }



}
