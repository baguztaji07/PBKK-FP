package com.vicky.service;

import java.util.List;

import com.vicky.model.Dosen;
import com.vicky.model.Mahasiswa;
import com.vicky.model.Pesan;

public interface PesanInterfaceService {
	public void sendPesan(Pesan pesan);
	public List<Object[]> getAllPesan(Mahasiswa mahasiswa);
	public List<Object[]> getAllPesanDosen(Dosen dosen);
}
