/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package edu.upc.dew.cinepelis.model;

/**
 *
 * @author Alyssa
 */
public class EstadisticaBean {

    private Long id_pelicula;
    private String nombre;
    private int num_Sala;
    private int capacidad;
    private int cantVendidas;
    private double porcentaje;


    public EstadisticaBean() {
    }

    public EstadisticaBean(Long id_pelicula, String nombre,int num_Sala, int capacidad, int cantVendidas, double porcentaje) {
        this.id_pelicula = id_pelicula;
        this.nombre = nombre;
        this.num_Sala = num_Sala;
        this.capacidad = capacidad;
        this.cantVendidas = cantVendidas;
        this.porcentaje=porcentaje;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public double getPorcentaje() {
        return porcentaje;
    }

    public void setPorcentaje(double porcentaje) {
        this.porcentaje = porcentaje;
    }

    public int getCantVendidas() {
        return cantVendidas;
    }

    public void setCantVendidas(int cantVendidas) {
        this.cantVendidas = cantVendidas;
    }

    public int getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(int capacidad) {
        this.capacidad = capacidad;
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
