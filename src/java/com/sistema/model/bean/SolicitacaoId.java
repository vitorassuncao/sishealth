package com.sistema.model.bean;
// Generated 23/11/2017 16:10:36 by Hibernate Tools 4.3.1



/**
 * SolicitacaoId generated by hbm2java
 */
public class SolicitacaoId  implements java.io.Serializable {


     private int solexacod;
     private int solexaconcod;

    public SolicitacaoId() {
    }

    public SolicitacaoId(int solexacod, int solexaconcod) {
       this.solexacod = solexacod;
       this.solexaconcod = solexaconcod;
    }
   
    public int getSolexacod() {
        return this.solexacod;
    }
    
    public void setSolexacod(int solexacod) {
        this.solexacod = solexacod;
    }
    public int getSolexaconcod() {
        return this.solexaconcod;
    }
    
    public void setSolexaconcod(int solexaconcod) {
        this.solexaconcod = solexaconcod;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof SolicitacaoId) ) return false;
		 SolicitacaoId castOther = ( SolicitacaoId ) other; 
         
		 return (this.getSolexacod()==castOther.getSolexacod())
 && (this.getSolexaconcod()==castOther.getSolexaconcod());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + this.getSolexacod();
         result = 37 * result + this.getSolexaconcod();
         return result;
   }   


}


