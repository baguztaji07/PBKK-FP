package com.vicky.service;

import java.util.List;

import com.vicky.model.Dosen;
import com.vicky.model.Mahasiswa;

public interface DosenInterfaceService {
	public List<Dosen> getAllDosen();
	public Dosen getDosen(Dosen dosen);
}
