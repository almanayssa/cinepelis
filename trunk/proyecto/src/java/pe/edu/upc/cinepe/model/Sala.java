/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package pe.edu.upc.cinepe.model;

/**
 *
 * @author edison
 */
public class Sala {

    private int num_Sala;
    private int capacidad;
    private boolean is_3D;

    public Sala() {
    }

    public Sala(int num_Sala, int capacidad, boolean is_3D) {
        this.num_Sala = num_Sala;
        this.capacidad = capacidad;
        this.is_3D = is_3D;
    }

    public int getNum_Sala() {
        return num_Sala;
    }

    public void setNum_Sala(int num_Sala) {
        this.num_Sala = num_Sala;
    }

    public boolean isIs_3D() {
        return is_3D;
    }

    public void setIs_3D(boolean is_3D) {
        this.is_3D = is_3D;
    }

    public int getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(int capacidad) {
        this.capacidad = capacidad;
    }


    

}
