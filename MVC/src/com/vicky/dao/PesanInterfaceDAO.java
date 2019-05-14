package com.vicky.dao;

import java.util.List;

import com.vicky.model.Dosen;
import com.vicky.model.Pesan;

public interface PesanInterfaceDAO {
	public List<Pesan> getAllPesan();
	public void sendPesan(Pesan pesan);
}
