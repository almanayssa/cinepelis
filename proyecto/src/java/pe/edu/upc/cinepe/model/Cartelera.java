/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.cinepe.model;

import java.util.Date;

/**
 *
 * @author Alyssa
 */
public class Cartelera {

    private Long id_pelicula;
    private int num_Sala;
    private String hora;
    private Date fecha_inicio;
    private Date fecha_fin;

    public Cartelera() {
    }



    public Cartelera(Long id_pelicula, int num_Sala, String hora, Date fecha_inicio, Date fecha_fin) {
        this.id_pelicula = id_pelicula;
        this.num_Sala = num_Sala;
        this.hora = hora;
        this.fecha_inicio = fecha_inicio;
        this.fecha_fin = fecha_fin;
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
