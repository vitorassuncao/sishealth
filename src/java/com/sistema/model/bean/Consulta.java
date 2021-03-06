package com.sistema.model.bean;
// Generated 23/11/2017 10:36:54 by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Consulta generated by hbm2java
 */
public class Consulta  implements java.io.Serializable {


     private Integer concod;
     private Medico medico;
     private Paciente paciente;
     private Date condata;
     private Set receitas = new HashSet(0);
     private Set exames = new HashSet(0);
     private Set quadroclinicos = new HashSet(0);

    public Consulta() {
    }

	
    public Consulta(Medico medico, Paciente paciente, Date condata) {
        this.medico = medico;
        this.paciente = paciente;
        this.condata = condata;
    }
    public Consulta(Medico medico, Paciente paciente, Date condata, Set receitas, Set exames, Set quadroclinicos) {
       this.medico = medico;
       this.paciente = paciente;
       this.condata = condata;
       this.receitas = receitas;
       this.exames = exames;
       this.quadroclinicos = quadroclinicos;
    }
   
    public Integer getConcod() {
        return this.concod;
    }
    
    public void setConcod(Integer concod) {
        this.concod = concod;
    }
    public Medico getMedico() {
        return this.medico;
    }
    
    public void setMedico(Medico medico) {
        this.medico = medico;
    }
    public Paciente getPaciente() {
        return this.paciente;
    }
    
    public void setPaciente(Paciente paciente) {
        this.paciente = paciente;
    }
    public Date getCondata() {
        return this.condata;
    }
    
    public void setCondata(Date condata) {
        this.condata = condata;
    }
    public Set getReceitas() {
        return this.receitas;
    }
    
    public void setReceitas(Set receitas) {
        this.receitas = receitas;
    }
    public Set getExames() {
        return this.exames;
    }
    
    public void setExames(Set exames) {
        this.exames = exames;
    }
    public Set getQuadroclinicos() {
        return this.quadroclinicos;
    }
    
    public void setQuadroclinicos(Set quadroclinicos) {
        this.quadroclinicos = quadroclinicos;
    }




}


