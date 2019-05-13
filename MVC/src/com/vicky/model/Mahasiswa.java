package com.vicky.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="mahasiswa")
public class Mahasiswa {
	
	@Id
	@Column(name="nrp")
	private String nrp;
	
	@Column(name="nama_mhs")
	private String nama;
	
	@Column(name="email_mhs")
	private String email;
	
	@Column(name="foto_mhs")
	private String foto;
	
	@Column(name="pass_mhs")
	private String password;

	public Mahasiswa() {
		
	}
	
	public String getNrp() {
		return nrp;
	}

	public void setNrp(String nrp) {
		this.nrp = nrp;
	}

	public String getNama() {
		return nama;
	}

	public void setNama(String nama) {
		this.nama = nama;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	
}
