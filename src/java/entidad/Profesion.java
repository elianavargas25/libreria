/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidad;

/**
 *
 * @author ELIANA
 */
public class Profesion {

    private String idProfesion;
    private String nombreProfesion;

    public Profesion(String idProfesion, String nombreProfesion) {
        this.idProfesion = idProfesion;
        this.nombreProfesion = nombreProfesion;
    }

    public String getNombreProfesion() {
        return nombreProfesion;
    }

    public void setNombreProfesion(String nombreProfesion) {
        this.nombreProfesion = nombreProfesion;
    }

    public String getIdProfesion() {
        return idProfesion;
    }

    public void setIdProfesion(String idProfesion) {
        this.idProfesion = idProfesion;
    }

}
