package com.kokkuran.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="users")
public class users {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_user")
	private int id_user;
	
	@Column(name="nama")
	private String nama;
	
	@Column(name="foto")
	private String foto;
	
	@Column(name="email")
	private String email;
	
	@Column(name="no_telp")
	private int no_telp;
	
	@Column(name="no_wa")
	private int no_wa;
	
	@Column(name="pass")
	private int pass;
	
	@Column(name="role")
	private boolean role;

	public users() {
	
	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
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

	public int getNo_telp() {
		return no_telp;
	}

	public void setNo_telp(int no_telp) {
		this.no_telp = no_telp;
	}

	public int getNo_wa() {
		return no_wa;
	}

	public void setNo_wa(int no_wa) {
		this.no_wa = no_wa;
	}

	public int getPass() {
		return pass;
	}

	public void setPass(int pass) {
		this.pass = pass;
	}

	public boolean isRole() {
		return role;
	}

	public void setRole(boolean role) {
		this.role = role;
	}

	@Override
	public String toString() {
		return "users [id_user=" + id_user + ", nama=" + nama + ", foto=" + foto + ", email=" + email + ", no_telp="
				+ no_telp + ", no_wa=" + no_wa + ", pass=" + pass + ", role=" + role + "]";
	}
}