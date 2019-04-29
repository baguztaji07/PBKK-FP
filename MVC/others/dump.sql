INSERT INTO `mahasiswa` (`nrp`, `nama`,`email`,`foto`, `password_mhs`) VALUES
('05111640000116', 'Muhammad Vicky R', 'vickyr.muhammad@gmail.com', 'foto', MD5('12345678')),
('05111640000068', 'Bagus Aji S S', 'baguztaji@gmail.com', 'foto', MD5('12345678'));

INSERT INTO `dosen` (`nip`, `nama`,`foto`,`email`,`no_telp`,`no_wa`, `password_dosen`) VALUES
('05111640000116', 'Muhammad Vicky R', 'foto', 'foto','foto','foto', MD5('12345678')),
('05111640000068', 'Bagus Aji S S', 'foto', 'foto','foto','foto', MD5('12345678'));

INSERT INTO `pesan` (`id`, `isi`,`keterangan`,`nrp`, `nip`) VALUES
('01', 'Assalamualaikum...
Saya syamsurijal mahasiswa semester IV, kelas F hari ini belum bisa mengikuti perkuliahan yang bapak bawakan karena sakit, atas apresiasinya saya mengucapkan terima kasih yang sebesar-besarnya.', '1', '05111640000116', '05111640000068');