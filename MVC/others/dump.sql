INSERT INTO `mahasiswa` (`nrp`, `nama`,`email`,`foto`, `password_mhs`) VALUES
('05111640000116', 'Muhammad Vicky R', 'vickyr.muhammad@gmail.com', 'foto', MD5('12345678')),
('05111640000068', 'Bagus Aji S S', 'baguztaji@gmail.com', 'foto', MD5('12345678'));

INSERT INTO `users` (`id_user`, `nama`,`foto`,`email`,`no_telp`,`no_wa`, `pass`, role) VALUES
('1', 'Muhammad Vicky R', 'foto', 'foto','foto','foto', MD5('12345678'),'1'),
('2', 'Bagus Aji S S', 'foto', 'foto','foto','foto', MD5('12345678'),'2');

INSERT INTO `pesan` (`id`, `isi`,`keterangan`,`id_user`) VALUES
('01', 'Assalamualaikum...
Saya syamsurijal mahasiswa semester IV, kelas F hari ini belum bisa mengikuti perkuliahan yang bapak bawakan karena sakit, atas apresiasinya saya mengucapkan terima kasih yang sebesar-besarnya.', '1', '2');