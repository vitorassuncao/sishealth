package com.sistema.model.conexao;

import org.hibernate.Session;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.SessionFactory;

public class ConnectionFactory {

    private static final SessionFactory sessionFactory;
    
    static {
        try {
            
            sessionFactory = new AnnotationConfiguration().configure("com/sistema/model/conexao/hibernate.cfg.xml").buildSessionFactory();
        } catch (Throwable ex) {
            
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
    
    public static Session getSessionFactory() {
        return sessionFactory.openSession();
    }
}
