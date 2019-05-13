package com.vicky.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vicky.dao.MahasiswaInterfaceDAO;
import com.vicky.model.Mahasiswa;

@Service
public class MahasiswaService implements MahasiswaInterfaceService {
	
	@Autowired
	private MahasiswaInterfaceDAO dao;
	
	@Override
	@Transactional
	public Mahasiswa getMahasiswa(Mahasiswa mahasiswa) {
	
		return dao.getMahasiswa(mahasiswa);
	}

}
