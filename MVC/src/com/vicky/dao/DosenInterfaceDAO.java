package com.vicky.dao;

import java.util.List;

import com.vicky.model.Dosen;

public interface DosenInterfaceDAO {
	public List<Dosen> getAllDosen();
	public Dosen getDosen(Dosen dosen);
	void gantiKetersediaan(String ketersediaan);
}
