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
		  List<Object[]> allPesan = null;
		  
		  String hql = "Select p.*,d.nama_dsn from Pesan p INNER JOIN dosen d ON p.nip = d.nip where nrp=:nrp";
		  Query query = currentSession.createSQLQuery(hql);
		  query.setParameter("nrp", mahasiswa.getNrp());
		  
		  try {
			  allPesan = query.getResultList();
		  } catch (NoResultException e) {
			  
		  }
		  
		  return allPesan;
	}

	@Override
	@Transactional
	public List<Object[]> getAllPesanDosen(Dosen dosen) {
		// TODO Auto-generated method stub
		// get current hibernate session
		  Session currentSession = sessionFactory.getCurrentSession();
		  List<Object[]> allPesan = null;
		  
		  String hql = "Select p.*,m.nama_mhs from Pesan p INNER JOIN mahasiswa m ON p.nrp = m.nrp where nip=:nip";
		  Query query = currentSession.createSQLQuery(hql);
		  query.setParameter("nip", dosen.getNip());
		  
		  try {
			  allPesan = query.getResultList();
		  } catch (NoResultException e) {
			  
		  }
		  
		  return allPesan;
	}
	
	@Override
	@Transactional
	public void gantiStatus(String pesan) {
		// TODO Auto-generated method stub
		Session currentSession = sessionFactory.getCurrentSession();
		
		String[] data = pesan.split("@", 3); 
        String hql = "UPDATE Pesan SET keterangan=:keterangan, status =:status WHERE id =:id";  
       
        Query query = currentSession.createQuery(hql);
        System.out.println(data[0]);
        System.out.println(data[2]);
        System.out.println(data[1]);
		query.setParameter("id",Integer.parseInt(data[0]));
		query.setParameter("keterangan", data[2]);
		query.setParameter("status", data[1]);
		query.executeUpdate();
	}

}
