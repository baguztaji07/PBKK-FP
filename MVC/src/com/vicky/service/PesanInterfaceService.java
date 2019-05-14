package com.vicky.service;

import java.util.List;

import com.vicky.model.Mahasiswa;
import com.vicky.model.Pesan;

public interface PesanInterfaceService {
	public void sendPesan(Pesan pesan);
	public List<Pesan> getAllPesan(Mahasiswa mahasiswa);
}
