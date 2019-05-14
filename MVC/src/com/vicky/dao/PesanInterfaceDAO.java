package com.vicky.dao;

import java.util.List;

import com.vicky.model.Mahasiswa;
import com.vicky.model.Pesan;

public interface PesanInterfaceDAO {
	public void sendPesan(Pesan pesan);
	public List<Object[]> getAllPesan(Mahasiswa mahasiswa);
}
