package com.kokkuran.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="pesan")
public class pesan {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="isi")
	private String isi;
	
	@Column(name="keterangan")
	private boolean keterangan;
	
	@Column(name="id_user")
	private String id_user;

	public pesan(){
		
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getIsi() {
		return isi;
	}

	public void setIsi(String isi) {
		this.isi = isi;
	}

	public boolean isKeterangan() {
		return keterangan;
	}

	public void setKeterangan(boolean keterangan) {
		this.keterangan = keterangan;
	}

	public String getId_user() {
		return id_user;
	}

	public void setId_user(String id_user) {
		this.id_user = id_user;
	}

	@Override
	public String toString() {
		return "pesan [id=" + id + ", isi=" + isi + ", keterangan=" + keterangan + ", id_user=" + id_user + "]";
	}
	
	
}