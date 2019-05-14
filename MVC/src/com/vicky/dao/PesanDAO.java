package com.vicky.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vicky.model.Pesan;
import com.vicky.model.Pesan;


@Repository
public class PesanDAO implements PesanInterfaceDAO {
	@Autowired
	private SessionFactory sessionFactory;
	 
	 @Override
	 public List<Pesan> getAllPesan() {
	  
	  // get current hibernate session
	  Session currentSession = sessionFactory.getCurrentSession();
	  
	  // create a query
	  Query<Pesan> theQuery = 
	    currentSession.createQuery("from Pesan", Pesan.class);
	  
	  // execute query & get result list
	  List<Pesan> pesans = theQuery.getResultList();
	  
	  // return the results
	  return pesans;
	 }
	@Override
	public void sendPesan(Pesan pesan) {
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		
		currentSession.saveOrUpdate(pesan);
	}

}
