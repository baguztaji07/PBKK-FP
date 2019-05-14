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
	
	
	@ManyToOne(cascade = {CascadeType.PERSIST,CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
	@JoinColumn(name ="nrp")
	private Mahasiswa mahasiswa;

	@ManyToOne(cascade = {CascadeType.PERSIST,CascadeType.MERGE, CascadeType.DETACH, CascadeType.REFRESH})
	@JoinColumn(name = "nip")
	private Dosen dosen;

	public Pesan() {
		super();
	}

	@Override
	public String toString() {
		return "Pesan [id=" + id + ", pesan=" + pesan + ", keterangan=" + keterangan + ", mahasiswa=" + mahasiswa
				+ ", dosen=" + dosen + ", getMahasiswa()=" + getMahasiswa() + ", getDosen()=" + getDosen()
				+ ", getId()=" + getId() + ", getPesan()=" + getPesan() + ", getKeterangan()=" + getKeterangan()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}

	public Mahasiswa getMahasiswa() {
		return mahasiswa;
	}

	public void setMahasiswa(Mahasiswa mahasiswa) {
		this.mahasiswa = mahasiswa;
	}

	public Dosen getDosen() {
		return dosen;
	}

	public void setDosen(Dosen dosen) {
		this.dosen = dosen;
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
