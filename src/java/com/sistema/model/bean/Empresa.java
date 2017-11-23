package com.sistema.model.bean;
// Generated 23/11/2017 16:10:36 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Empresa generated by hbm2java
 */
public class Empresa  implements java.io.Serializable {


     private Integer empcod;
     private String empnome;
     private String empcnpj;
     private Set medicos = new HashSet(0);
     private Set enfermeiros = new HashSet(0);
     private Set atendentes = new HashSet(0);
     private Set gerentes = new HashSet(0);

    public Empresa() {
    }

	
    public Empresa(String empnome, String empcnpj) {
        this.empnome = empnome;
        this.empcnpj = empcnpj;
    }
    public Empresa(String empnome, String empcnpj, Set medicos, Set enfermeiros, Set atendentes, Set gerentes) {
       this.empnome = empnome;
       this.empcnpj = empcnpj;
       this.medicos = medicos;
       this.enfermeiros = enfermeiros;
       this.atendentes = atendentes;
       this.gerentes = gerentes;
    }
   
    public Integer getEmpcod() {
        return this.empcod;
    }
    
    public void setEmpcod(Integer empcod) {
        this.empcod = empcod;
    }
    public String getEmpnome() {
        return this.empnome;
    }
    
    public void setEmpnome(String empnome) {
        this.empnome = empnome;
    }
    public String getEmpcnpj() {
        return this.empcnpj;
    }
    
    public void setEmpcnpj(String empcnpj) {
        this.empcnpj = empcnpj;
    }
    public Set getMedicos() {
        return this.medicos;
    }
    
    public void setMedicos(Set medicos) {
        this.medicos = medicos;
    }
    public Set getEnfermeiros() {
        return this.enfermeiros;
    }
    
    public void setEnfermeiros(Set enfermeiros) {
        this.enfermeiros = enfermeiros;
    }
    public Set getAtendentes() {
        return this.atendentes;
    }
    
    public void setAtendentes(Set atendentes) {
        this.atendentes = atendentes;
    }
    public Set getGerentes() {
        return this.gerentes;
    }
    
    public void setGerentes(Set gerentes) {
        this.gerentes = gerentes;
    }




}


