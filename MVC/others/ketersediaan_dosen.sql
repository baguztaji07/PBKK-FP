DROP DATABASE ketersediaan_dosen;

CREATE DATABASE  IF NOT EXISTS `ketersediaan_dosen`;
USE `ketersediaan_dosen`;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `users`;
DROP TABLE IF EXISTS `pesan`;

CREATE TABLE users
(
   id_user     		INT NOT NULL,
   nama 		VARCHAR(50) NOT NULL,
   foto  	        VARCHAR(200) NOT NULL,
   email	        VARCHAR(50) NOT NULL,
   no_telp		VARCHAR(15) NOT NULL,
   no_wa 		VARCHAR(15),
   pass 	     	VARCHAR(32) NOT NULL,
   role			BOOLEAN NOT NULL,
   PRIMARY KEY (id_user)
);

CREATE TABLE pesan
(
   id         		INT NOT NULL,
   isi 			TEXT NOT NULL,
   keterangan  	        BOOLEAN NOT NULL,
   id_user		INT NOT NULL,
   PRIMARY KEY (id)
);


ALTER TABLE pesan ADD CONSTRAINT FK_pesan_users FOREIGN KEY (id_user)
REFERENCES users (id_user) ON DELETE RESTRICT ON UPDATE RESTRICT;

ALTER TABLE pesan ADD CONSTRAINT FK_pesan_mahasiswa FOREIGN KEY (nrp)
REFERENCES mahasiswa (nrp) ON DELETE RESTRICT ON UPDATE RESTRICT;