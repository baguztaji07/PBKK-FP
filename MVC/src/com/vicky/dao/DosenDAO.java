package com.vicky.dao;

import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.vicky.model.Dosen;

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
		Dosen result = null;
        String hql = "from Dosen where nip=:nip and pass_dsn=:password";   
		
        Query<Dosen> query = currentSession.createQuery(hql);
		query.setParameter("nip", dosen.getNip());
		query.setParameter("password", dosen.getPasswordDosen());
		
		try {
			result = query.getSingleResult();
		} catch (NoResultException e) {
			// TODO: handle exception
		}
		return result;
	}
	 
	@Override
	@Transactional
	public void gantiKetersediaan(String ketersediaan) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		
		String[] data = ketersediaan.split("@", 2); 
        String hql = "UPDATE Dosen SET status=:status WHERE nip =:nip";  
       
        Query query = currentSession.createQuery(hql);
		query.setParameter("nip",data[0]);
		query.setParameter("status", data[1]);
		query.executeUpdate();
	} 

}
