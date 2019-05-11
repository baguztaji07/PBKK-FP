package com.vicky.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="dosen")
public class Dosen {
	
	@Id
	@Column(name="nip")
	private String nip;
	
	@Column(name="nama")
	private String nama;
	
	@Column(name="foto")
	private String foto;
	
	@Column(name="email")
	private String email;
	
	@Column(name="no_telp")
	private String noTelp;
	
	@Column(name="password_dosen")
	private String passwordDosen;
	
	public Dosen() {
		
	}

	public String getNip() {
		return nip;
	}

	public void setNip(String nip) {
		this.nip = nip;
	}

	public String getNama() {
		return nama;
	}

	public void setNama(String nama) {
		this.nama = nama;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNoTelp() {
		return noTelp;
	}

	public void setNoTelp(String noTelp) {
		this.noTelp = noTelp;
	}

	public String getPasswordDosen() {
		return passwordDosen;
	}

	public void setPasswordDosen(String passwordDosen) {
		this.passwordDosen = passwordDosen;
	}
	
}
