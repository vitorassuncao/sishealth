package com.sistema.model.bean;
// Generated 23/11/2017 10:36:54 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Quadroclinico generated by hbm2java
 */
public class Quadroclinico  implements java.io.Serializable {


     private Integer quacod;
     private Paciente paciente;
     private String quadiagnostico;
     private String quasintomas;
     private Set consultas = new HashSet(0);

    public Quadroclinico() {
    }

	
    public Quadroclinico(Paciente paciente, String quadiagnostico, String quasintomas) {
        this.paciente = paciente;
        this.quadiagnostico = quadiagnostico;
        this.quasintomas = quasintomas;
    }
    public Quadroclinico(Paciente paciente, String quadiagnostico, String quasintomas, Set consultas) {
       this.paciente = paciente;
       this.quadiagnostico = quadiagnostico;
       this.quasintomas = quasintomas;
       this.consultas = consultas;
    }
   
    public Integer getQuacod() {
        return this.quacod;
    }
    
    public void setQuacod(Integer quacod) {
        this.quacod = quacod;
    }
    public Paciente getPaciente() {
        return this.paciente;
    }
    
    public void setPaciente(Paciente paciente) {
        this.paciente = paciente;
    }
    public String getQuadiagnostico() {
        return this.quadiagnostico;
    }
    
    public void setQuadiagnostico(String quadiagnostico) {
        this.quadiagnostico = quadiagnostico;
    }
    public String getQuasintomas() {
        return this.quasintomas;
    }
    
    public void setQuasintomas(String quasintomas) {
        this.quasintomas = quasintomas;
    }
    public Set getConsultas() {
        return this.consultas;
    }
    
    public void setConsultas(Set consultas) {
        this.consultas = consultas;
    }




}


