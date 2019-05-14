package com.vicky.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vicky.model.Mahasiswa;
import com.vicky.model.Pesan;
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
	public List<Object[]> getAllPesan(Mahasiswa mahasiswa) {
		  // get current hibernate session
		  Session currentSession = sessionFactory.getCurrentSession();
		  
		  
		  String hql = "Select p.*,d.nama_dsn from Pesan p INNER JOIN dosen d ON p.nip = d.nip where nrp=:nrp";
		  Query query = currentSession.createSQLQuery(hql);
		  query.setParameter("nrp", mahasiswa.getNrp());
		  List<Object[]> allPesan = query.getResultList();
		  
		  
		  return allPesan;
	}


}
