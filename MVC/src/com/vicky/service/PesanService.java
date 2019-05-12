package com.vicky.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vicky.model.Pesan;
import com.vicky.dao.PesanInterfaceDAO;

@Service
public class PesanService implements PesanInterfaceService {
	
	@Autowired
	private PesanInterfaceDAO dao;
	
	
	@Override
	@Transactional
	public void sendPesan(Pesan pesan) {
		dao.sendPesan(pesan);
	}

}
