-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Bulan Mei 2019 pada 16.32
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ketersediaan_dosen`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nip` varchar(20) NOT NULL,
  `nama_dsn` varchar(50) NOT NULL,
  `foto_dsn` varchar(200) NOT NULL,
  `email_dsn` varchar(50) NOT NULL,
  `no_telp_dsn` varchar(15) NOT NULL,
  `no_wa_dsn` varchar(15) DEFAULT NULL,
  `status_ketersediaan_dsn` varchar(11) NOT NULL,
  `pass_dsn` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nip`, `nama_dsn`, `foto_dsn`, `email_dsn`, `no_telp_dsn`, `no_wa_dsn`, `status_ketersediaan_dsn`, `pass_dsn`) VALUES
('1', 'Muhammad Vicky R', '1', 'emailV', 'nomor teleponV', 'nomor WA V', 'ada', '25d55ad283aa400af464c76d713c07ad'),
('2', 'Gilbert Lijaya Therry', '2', 'emailB', 'nomor teleponB', 'nomor WA B', 'tidak ada', '25d55ad283aa400af464c76d713c07ad');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nrp` varchar(15) NOT NULL,
  `nama_mhs` varchar(50) NOT NULL,
  `foto_mhs` varchar(200) NOT NULL,
  `email_mhs` varchar(50) NOT NULL,
  `pass_mhs` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nrp`, `nama_mhs`, `foto_mhs`, `email_mhs`, `pass_mhs`) VALUES
('05111640000068', 'Bagus Aji S S', '05111640000068\r\n', 'baguztaji@gmail.com', '1'),
('05111640000116', 'Muhammad Vicky R', 'foto', 'vickyr.muhammad@gmail.com', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `isi` text NOT NULL,
  `keterangan` varchar(80) NOT NULL,
  `status` varchar(20) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nrp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nrp`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_pesan_dosen` (`nip`),
  ADD KEY `FK_pesan_mahasiswa` (`nrp`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD CONSTRAINT `FK_pesan_dosen` FOREIGN KEY (`nip`) REFERENCES `dosen` (`nip`),
  ADD CONSTRAINT `FK_pesan_mahasiswa` FOREIGN KEY (`nrp`) REFERENCES `mahasiswa` (`nrp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
