package com.vicky.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vicky.model.Mahasiswa;

@Repository
public class MahasiswaDAO implements MahasiswaInterfaceDAO {
	 @Autowired
	 private SessionFactory sessionFactory;

	@Override
	public Mahasiswa getMahasiswa(Mahasiswa mahasiswa) {
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		
        String hql = "from Mahasiswa where nrp=:nrp and pass_mhs=:password";   
		
        Query<Mahasiswa> query = currentSession.createQuery(hql);
		query.setParameter("nrp", mahasiswa.getNrp());
		query.setParameter("password", mahasiswa.getPassword());
		
		
		Mahasiswa result = query.getSingleResult();
		return result;
	}
	 
	 
	 
}
