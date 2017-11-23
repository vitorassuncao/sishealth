
package com.sistema.model.dao;
/**
 * @author Heitor
 */
import com.sistema.model.bean.Paciente;
import com.sistema.model.conexao.*;
import java.util.List;
import javax.swing.JOptionPane;
import org.hibernate.Query;
import org.hibernate.Session;
//import org.hibernate.Transaction;
public class PacienteDao {
    
    public void salvar(Paciente paciente){
        /*Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        session.save(paciente);
        session.getTransaction().commit();
        HibernateUtil.getSessionFactory().close();*/
        Session session = new ConnectionFactory().getSessionFactory();
        session.beginTransaction();
        session.save(paciente);
        session.getTransaction().commit();
        session.close();
    }
    
    public List<Paciente> listar(){
        List<Paciente> lista;
        //Session session = (Session) HibernateUtil.getSessionFactory().openSession();
        Session session = new ConnectionFactory().getSessionFactory();
        session.beginTransaction();
        lista = session.createCriteria(Paciente.class).list();
        //session.getTransaction().commit();
        HibernateUtil.getSessionFactory().close();
        return lista;
    }
    
    public Paciente consultarPorId(int codigo){
        List<Paciente> lista;
        Session session = new ConnectionFactory().getSessionFactory();
        //Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        session.beginTransaction();
        Query query = session.createSQLQuery("SELECT * FROM paciente WHERE paccod = "+codigo+"").addEntity(Paciente.class);
        lista = query.list();
        session.close();
        return lista.get(0);
    }

    public void alterar(Paciente paciente) {
        //Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Session session = new ConnectionFactory().getSessionFactory();
        try{
            session.beginTransaction();
            session.update(paciente);
            session.getTransaction().commit();
            session.close();
        } catch(Exception e){
            JOptionPane.showMessageDialog(null,""+e.getMessage());
            session.getTransaction().rollback();
            session.close();
        }
    }
        
    public void excluir(Paciente paciente){
        Session session = null;
        try{
            session = new ConnectionFactory().getSessionFactory();
            session.beginTransaction();
            session.delete(paciente);
            
            session.getTransaction().commit();
            session.close();
        }catch(Exception e){
            JOptionPane.showMessageDialog(null, ""+e.getMessage());
            session.getTransaction().rollback();
            session.close();
        }
    }
      
    
}
