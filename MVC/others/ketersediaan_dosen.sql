DROP DATABASE ketersediaan_dosen;

CREATE DATABASE  IF NOT EXISTS `ketersediaan_dosen`;
USE `ketersediaan_dosen`;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `dosen`;
DROP TABLE IF EXISTS `mahasiswa`;
DROP TABLE IF EXISTS `pesan`;

CREATE TABLE mahasiswa
(
   nrp     		VARCHAR(15) NOT NULL,
   nama_mhs 		VARCHAR(50) NOT NULL,
   foto_mhs  	        VARCHAR(200) NOT NULL,
   email_mhs	        VARCHAR(50) NOT NULL,
   pass_mhs 	     	VARCHAR(32) NOT NULL,
   PRIMARY KEY (nrp)
);

CREATE TABLE dosen
(
   nip     		VARCHAR(20) NOT NULL,
   nama_dsn 		VARCHAR(50) NOT NULL,
   foto_dsn  	        VARCHAR(200) NOT NULL,
   email_dsn	        VARCHAR(50) NOT NULL,
   no_telp_dsn		VARCHAR(15) NOT NULL,
   no_wa_dsn 		VARCHAR(15),
   status_ketersediaan_dsn INT NOT NULL,
   pass_dsn 	     	VARCHAR(32) NOT NULL,
   PRIMARY KEY (nip)
);

CREATE TABLE pesan
(
   id         		INT NOT NULL,
   isi 			TEXT NOT NULL,
   keterangan  	        BOOLEAN NOT NULL,
   nip			VARCHAR(20) NOT NULL,
   nrp			VARCHAR(15) NOT NULL,   
   PRIMARY KEY (id)
);


ALTER TABLE pesan ADD CONSTRAINT FK_pesan_dosen FOREIGN KEY (nip)
REFERENCES dosen (nip) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE pesan ADD CONSTRAINT FK_pesan_mahasiswa FOREIGN KEY (nrp)
REFERENCES mahasiswa (nrp) ON DELETE RESTRICT ON UPDATE RESTRICT;
