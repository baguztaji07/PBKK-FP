package com.vicky.model;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="pesan")
public class Pesan {
	@Id
	@Column(name="id")
	private int id;
	
	@Column(name="isi")
	private String pesan;
	
	@Column(name="keterangan")
	private String keterangan;
	
	@Column(name="status")
	private String status;
	
	@Column(name="nrp")
	private String nrp;
	
	@Column(name="nip")
	private String nip;


	public String getStatus() {
		return status;
	}



	public void setStatus(String status) {
		this.status = status;
	}



	public String getNrp() {
		return nrp;
	}



	public void setNrp(String nrp) {
		this.nrp = nrp;
	}



	public String getNip() {
		return nip;
	}



	public void setNip(String nip) {
		this.nip = nip;
	}



	public Pesan() {
		super();
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPesan() {
		return pesan;
	}

	public void setPesan(String pesan) {
		this.pesan = pesan;
	}

	public String getKeterangan() {
		return keterangan;
	}

	public void setKeterangan(String keterangan) {
		this.keterangan = keterangan;
	}
	
	
}
