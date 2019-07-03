/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidad;

/**
 *
 * @author eliana.vargas
 */
public class Autor {

    private String idAutor;
    private String nombreAutor;
    private String paisNacimiento;

    public Autor(String idAutor, String nombreAutor, String paisNacimiento) {
        this.idAutor = idAutor;
        this.nombreAutor = nombreAutor;
        this.paisNacimiento = paisNacimiento;
    }

    public String getIdAutor() {
        return idAutor;
    }

    public void setIdAutor(String idAutor) {
        this.idAutor = idAutor;
    }

    public String getNombreAutor() {
        return nombreAutor;
    }

    public void setNombreAutor(String nombreAutor) {
        this.nombreAutor = nombreAutor;
    }

    public String getPaisNacimiento() {
        return paisNacimiento;
    }

    public void setPaisNacimiento(String paisNacimiento) {
        this.paisNacimiento = paisNacimiento;
    }
}
