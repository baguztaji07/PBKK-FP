package com.vicky.controller;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="users")
public class mahasiswa {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="nrp")
	private int nrp;
	
	@Column(name="nama")
	private String nama;
	
	@Column(name="email")
	private String email;
	
	@Column(name="foto")
	private String foto;
	
	@Column(name="password_mhs")
	private int password_mhs;

	public mahasiswa() {
		
	}
	
	public int getNrp() {
		return nrp;
	}

	public void setNrp(int nrp) {
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

	public int getPassword_mhs() {
		return password_mhs;
	}

	public void setPassword_mhs(int password_mhs) {
		this.password_mhs = password_mhs;
	}

	@Override
	public String toString() {
		return "mahasiswa [nrp=" + nrp + ", nama=" + nama + ", email=" + email + ", foto=" + foto + ", password_mhs="
				+ password_mhs + "]";
	}
	
}
