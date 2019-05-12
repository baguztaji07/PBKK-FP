package com.vicky.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vicky.model.Dosen;

@Repository
public class DosenDAO implements DosenInterfaceDAO {

	 @Autowired
	 private SessionFactory sessionFactory;
	 
	 @Override
	 public List<Dosen> getDosen() {
	  
	  // get current hibernate session
	  Session currentSession = sessionFactory.getCurrentSession();
	  
	  // create a query
	  Query<Dosen> theQuery = 
	    currentSession.createQuery("from Dosen", Dosen.class);
	  
	  // execute query & get result list
	  List<Dosen> dosens = theQuery.getResultList();
	  
	  // return the results
	  return dosens;
	 }

}