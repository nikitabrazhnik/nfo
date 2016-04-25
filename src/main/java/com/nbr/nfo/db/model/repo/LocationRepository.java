/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nbr.nfo.db.model.repo;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import ua.nbr.imb.db.model.entity.Location;
import ua.nbr.imb.db.model.entity.User;

import java.util.List;


@Repository
@Transactional(readOnly = true, propagation = Propagation.REQUIRES_NEW)
public class LocationRepository {

    @Autowired
    private SessionFactory sessionFactory;

    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }

    public List<Location> findAll() {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("SELECT s FROM Location s").list();
    }
}
