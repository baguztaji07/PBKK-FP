package com.vicky.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vicky.model.Dosen;
import com.vicky.model.Pesan;
import com.vicky.dao.PesanInterfaceDAO;

@Service
public class PesanService implements PesanInterfaceService {
	
	@Autowired
	private PesanInterfaceDAO dao;
	
	@Override
	@Transactional
	public List<Pesan> getAllPesan() {
		
		return dao.getAllPesan();
	}
	
	@Override
	@Transactional
	public void sendPesan(Pesan pesan) {
		dao.sendPesan(pesan);
	}

}
