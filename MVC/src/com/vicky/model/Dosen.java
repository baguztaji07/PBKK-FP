package com.vicky.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="dosen")
public class Dosen {
	
	@Id
	@Column(name="nip")
	private String nip;
	
	@Column(name="nama_dsn")
	private String nama;
	
	@Column(name="foto_dsn")
	private String foto;
	
	@Column(name="email_dsn")
	private String email;
	
	@Column(name="no_telp_dsn")
	private String noTelp;
	
	@Column(name="status_ketersediaan_dsn")
	private String status;
	


	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Column(name="pass_dsn")
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
