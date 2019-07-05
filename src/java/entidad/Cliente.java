/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidad;

import java.util.Date;

/**
 *
 * @author ELIANA
 */
public class Cliente {

    private String nroDocumento;
    private TipoDocumento tipoDocumento;
    private String nombre;
    private String pApelliido;
    private String sApelliido;
    private Sexo sexo;
    private Date fechaNacimiento;
    private String direccion;
    private String telefono;
    private String email;
    private Profesion prefesion;

    public Cliente(String nroDocumento, TipoDocumento tipoDocumento, String nombre, String pApelliido, String sApelliido, Sexo sexo, Date fechaNacimiento, String direccion, String telefono, String email, Profesion prefesion) {
        this.nroDocumento = nroDocumento;
        this.tipoDocumento = tipoDocumento;
        this.nombre = nombre;
        this.pApelliido = pApelliido;
        this.sApelliido = sApelliido;
        this.sexo = sexo;
        this.fechaNacimiento = fechaNacimiento;
        this.direccion = direccion;
        this.telefono = telefono;
        this.email = email;
        this.prefesion = prefesion;
    }

    public Profesion getPrefesion() {
        return prefesion;
    }

    public void setPrefesion(Profesion prefesion) {
        this.prefesion = prefesion;
    }

    public String getNroDocumento() {
        return nroDocumento;
    }

    public void setNroDocumento(String nroDocumento) {
        this.nroDocumento = nroDocumento;
    }

    public TipoDocumento getTipoDocumento() {
        return tipoDocumento;
    }

    public void setTipoDocumento(TipoDocumento tipoDocumento) {
        this.tipoDocumento = tipoDocumento;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getpApelliido() {
        return pApelliido;
    }

    public void setpApelliido(String pApelliido) {
        this.pApelliido = pApelliido;
    }

    public String getsApelliido() {
        return sApelliido;
    }

    public void setsApelliido(String sApelliido) {
        this.sApelliido = sApelliido;
    }

    public Sexo getSexo() {
        return sexo;
    }

    public void setSexo(Sexo sexo) {
        this.sexo = sexo;
    }

    public Date getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(Date fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

}
