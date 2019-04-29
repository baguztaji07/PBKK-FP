CREATE DATABASE  IF NOT EXISTS `ketersediaan_dosen`;
USE `ketersediaan_dosen`;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `mahasiswa`;
DROP TABLE IF EXISTS `dosen`;
DROP TABLE IF EXISTS `pesan`;

CREATE TABLE mahasiswa
(
   nrp         		VARCHAR(15) NOT NULL,
   nama 		VARCHAR(50) NOT NULL,
   email	        VARCHAR(50) NOT NULL,
   foto  	        VARCHAR(200) NOT NULL,
   password_mhs       	VARCHAR(32) NOT NULL,
   PRIMARY KEY (nrp)
);

CREATE TABLE dosen
(
   nip         		VARCHAR(20) NOT NULL,
   nama 		VARCHAR(50) NOT NULL,
   foto  	        VARCHAR(200) NOT NULL,
   email	        VARCHAR(50) NOT NULL,
   no_telp		VARCHAR(15) NOT NULL,
   no_wa 		VARCHAR(15),
   password_dosen      	VARCHAR(32) NOT NULL,
   PRIMARY KEY (nip)
);

CREATE TABLE pesan
(
   id         		INT NOT NULL,
   isi 			TEXT NOT NULL,
   keterangan  	        BOOLEAN NOT NULL,
   nrp			VARCHAR(15) NOT NULL,
   nip			VARCHAR(20) NOT NULL,
   PRIMARY KEY (id)
);


ALTER TABLE pesan ADD CONSTRAINT FK_pesan_dosen FOREIGN KEY (nip)
      REFERENCES dosen (nip) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE pesan ADD CONSTRAINT FK_pesan_mahasiswa FOREIGN KEY (nrp)
REFERENCES mahasiswa (nrp) ON DELETE RESTRICT ON UPDATE RESTRICT;