package com.vicky.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vicky.model.Dosen;
import com.vicky.model.Mahasiswa;

@Repository
public class DosenDAO implements DosenInterfaceDAO {

	 @Autowired
	 private SessionFactory sessionFactory;
	 
	 @Override
	 public List<Dosen> getAllDosen() {
	  
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

	@Override
	public Dosen getDosen(Dosen dosen) {
		Session currentSession = sessionFactory.getCurrentSession();
		
        String hql = "from Dosen where nip=:nip and pass_dsn=:password";   
		
        Query<Dosen> query = currentSession.createQuery(hql);
		query.setParameter("nip", dosen.getNip());
		query.setParameter("password", dosen.getPasswordDosen());
		
		
		Dosen result = query.getSingleResult();
		return result;
	}
	 
	 

}
