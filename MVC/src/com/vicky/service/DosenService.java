package com.vicky.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vicky.model.Dosen;
import com.vicky.dao.DosenInterfaceDAO;

@Service
public class DosenService implements DosenInterfaceService {
	
	@Autowired
	private DosenInterfaceDAO dao;
	
	@Override
	@Transactional
	public List<Dosen> getAllDosen() {
		
		return dao.getAllDosen();
	}

	@Override
	@Transactional
	public Dosen getDosen(Dosen dosen) {
		// TODO Auto-generated method stub
		return dao.getDosen(dosen);
	}

	@Override
	@Transactional
	public void gantiKetersediaan(String ketersediaan) {
		// TODO Auto-generated method stub
		dao.gantiKetersediaan(ketersediaan);
		
	}
	
	
}
