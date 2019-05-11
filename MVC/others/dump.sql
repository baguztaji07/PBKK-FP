INSERT INTO `mahasiswa` (`nrp`, `nama_mhs`,`foto_mhs`,`email_mhs`,`pass_mhs`) VALUES
('05111640000116', 'Muhammad Vicky R', 'foto', 'vickyr.muhammad@gmail.com', MD5('12345678')),
('05111640000068', 'Bagus Aji S S', 'foto', 'baguztaji@gmail.com', MD5('12345678'));

INSERT INTO `dosen` (`nip`, `nama`,`foto`,`email`,`no_telp`,`no_wa`, `pass_dosen`) VALUES
('1', 'Muhammad Vicky R', 'foto', 'foto','foto','foto', MD5('12345678')),
('2', 'Bagus Aji S S', 'foto', 'foto','foto','foto', MD5('12345678'));

INSERT INTO `pesan` (`id`, `isi`,`keterangan`,`nip`, nrp) VALUES
('01', 'Assalamualaikum...
Saya syamsurijal mahasiswa semester IV, kelas F hari ini belum bisa mengikuti perkuliahan yang bapak bawakan karena sakit, atas apresiasinya saya mengucapkan terima kasih yang sebesar-besarnya.', '1', '1', '05111640000116');