/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nbr.nfo.db.model.repo;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.nbr.nfo.db.model.entity.User;


@Repository
@Transactional(readOnly = true, propagation = Propagation.REQUIRES_NEW)
public class UserRepository {

    @Autowired
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    @Transactional
    public List<User> findAll() {
        Session session = sessionFactory.openSession();
        List<User> users = session.createQuery("SELECT s FROM User s").list();
        session.close();

        return users;
    }

    @Transactional(readOnly = false)
    public void addUser(User user) {
        Session session = sessionFactory.openSession();
//        session.getTransaction().begin();
        session.saveOrUpdate(user);
//        session.getTransaction().commit();
        session.close();
    }
}
