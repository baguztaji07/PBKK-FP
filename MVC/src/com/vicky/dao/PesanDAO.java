package com.vicky.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vicky.model.Mahasiswa;
import com.vicky.model.Pesan;


@Repository
public class PesanDAO implements PesanInterfaceDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void sendPesan(Pesan pesan) {
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
		
		currentSession.saveOrUpdate(pesan);
	}

	@Override
	public List<Pesan> getAllPesan(Mahasiswa mahasiswa) {
		  // get current hibernate session
		  Session currentSession = sessionFactory.getCurrentSession();
		  
		  
		  String hql = "from Pesan where nrp=:nrp";
		  Query<Pesan> query = currentSession.createQuery(hql);
		  query.setParameter("nrp", mahasiswa.getNrp());
		  List<Pesan> allPesan = query.getResultList();
		  
		  return allPesan;
	}


}
