-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jun 2024 pada 04.35
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `calikdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` bigint(16) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(225) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `foto_profile` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `username`, `password`, `telp`, `foto_profile`) VALUES
(123, 'robbi', 'masyarakat', '$2y$10$BqCVWU56ME/Y.MctVXBw7uI8w26d1gK/HY219JiQWe./ppfYVEeYS', '123', 'user.png'),
(3202111001820002, 'disdukcapil', 'yudis', '$2y$10$Vp4Y9NqJRgpYdp05Yx3whOVXIgPO4rY5xZTF0xEqlMvcvZ0GyL1XW', '081563136507', 'user.png'),
(3202290907890012, 'Prana Yoga', 'pranayoga09', '$2y$10$IfGhT2MWdeBhnWMJh1jVu.EvbaeSMN5l9sMFOXhf7wijHDnYA58YO', '083848777775', 'user.png'),
(3202290907890013, 'Prana Yoga', 'pranayoga', 'pranayoga', '083848777775', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` bigint(16) NOT NULL,
  `tgl_pengaduan` datetime NOT NULL,
  `nik` bigint(16) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('0','proses','selesai','tolak') NOT NULL,
  `nik_penduduk` varchar(16) NOT NULL,
  `nama_penduduk` varchar(50) NOT NULL,
  `nokk_penduduk` varchar(16) NOT NULL,
  `jenis_aduan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`, `nik_penduduk`, `nama_penduduk`, `nokk_penduduk`, `jenis_aduan`) VALUES
(9, '2024-06-21 00:00:00', 3202290907890012, 'NIK TIDAK TERBACA', '0387521e65fc659e1919e93f1159de9d.png', 'selesai', '', '', '', ''),
(10, '2024-06-21 00:00:00', 3202111001820002, 'nik bermasalah di bank bca, data tidak terbaca', '15832ecb21dc4c7697319c915bc2850b.jpg', 'selesai', '', '', '', ''),
(18, '2024-06-24 14:04:32', 3202290907890012, 'nik berbeda dengan data dapodik', 'a98ae6b388b2a6771b791e7c42c1e232.png', 'tolak', '3202290907890013', 'PRANA YOGA', '3202292405190001', 'Data Dapodik'),
(19, '2024-06-24 14:20:42', 3202290907890012, 'nik tidak terbaca di aplikasi BPJS Ketenagakerjaan', 'ad66e8cd10e9439d45562535eac8024b.png', 'selesai', '3202290907890013', 'PRANA YOGA', '3202292405190001', 'BPJS Ketenagakerjaan'),
(20, '2024-06-24 14:37:48', 3202290907890012, '3202290907890013', '5b25800d7c772c2a1a8c45bf7c7af744.png', 'tolak', '3202290907890013', 'PRANA YOGA', '3202292405190001', 'BPJS Kesehatan'),
(21, '2024-06-24 14:37:59', 3202290907890012, '3202290907890013', 'a14c59679635b13b3af1feb2647c1010.png', 'tolak', '3202290907890013', 'PRANA YOGA', '3202292405190001', 'Lembaga Lainnya'),
(22, '2024-06-24 14:38:35', 3202290907890012, '3202290907890013', '02a79aac0aff734b28632ce4fb0af91c.png', 'selesai', '3202290907890013', 'PRANA YOGA', '3202292405190001', 'BPJS Kesehatan'),
(23, '2024-06-24 14:38:54', 3202290907890012, '3202290907890013', '9efe237985be6be1222284a07824e3fa.png', 'selesai', '3202290907890013', 'PRANA YOGA', '3202290907890013', 'Data Dapodik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(225) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `level` enum('admin','petugas') NOT NULL,
  `foto_profile` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp`, `level`, `foto_profile`) VALUES
(2, 'abdul', 'admin', '$2y$10$YlpZmz2Uq.RxG5bHvMjYjej5y2AYkEzr9JbDKGHe3sWbpFkVhkury', '123', 'admin', 'user.png'),
(6, 'petugas', 'petugas', '$2y$10$SIUNsTMGwDOoXJ62kgoMueorXuuDenxdG0ZKRU1NUigM2Xby0bAmC', '123456', 'petugas', 'user.png'),
(7, 'yoga', 'petugascalik', '$2y$10$Ptikc8V4zGV6KihUKjKXkOTUSvc79DytECPXGxmJVgXli8vw8UivK', '081500001111', 'petugas', 'user.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` bigint(16) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(19, 9, '2024-06-21', 'setelah saya cek, Alamat Kartu Keluarga bpa didatabase kependudukan terdata sbb:\r\n\r\nNo. Kartu Keluarga\r\n: 3202051102100031\r\nNama Kepala Keluarga\r\n: KOMARUDIN\r\nAlamat Keluarga\r\n: KP. SUKATANI\r\nRT/RW\r\n: 006/003\r\nProvinsi\r\n: JAWA BARAT\r\nNama Dusun/Kampung/Dukuh\r\n:\r\nKabupaten/Kota\r\n: SUKABUMI\r\nTelepon\r\n:\r\nKecamatan\r\n: CISOLOK\r\nKode Pos\r\n: 43366\r\nDesa/Kelurahan\r\n: SUKARAME\r\n\r\nData sudah Sinkron', 2),
(20, 10, '2024-06-21', 'setelah saya cek, Alamat Kartu Keluarga bpa didatabase kependudukan terdata sbb:\r\n\r\nNo. Kartu Keluarga\r\n: 3202051102100031\r\nNama Kepala Keluarga\r\n: KOMARUDIN\r\nAlamat Keluarga\r\n: KP. SUKATANI\r\nRT/RW\r\n: 006/003\r\nProvinsi\r\n: JAWA BARAT\r\nNama Dusun/Kampung/Dukuh\r\n:\r\nKabupaten/Kota\r\n: SUKABUMI\r\nTelepon\r\n:\r\nKecamatan\r\n: CISOLOK\r\nKode Pos\r\n: 43366\r\nDesa/Kelurahan\r\n: SUKARAME\r\n\r\nData sudah Sinkron', 2),
(21, 18, '2024-06-24', 'Kartu Keluarga tersebut tidak terdata pada SIAK, ada indikasi Palsu/hasil edit aplikasi foto editor dan sejenisnya', 2),
(22, 19, '2024-06-24', 'NIK sudah berhasil di sinkronisasikan', 2),
(23, 20, '2024-06-24', 'tolak', 2),
(24, 21, '2024-06-24', 'tolak', 2),
(25, 22, '2024-06-24', 'selesai', 2),
(26, 23, '2024-06-24', 'selesai', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`),
  ADD KEY `nik` (`nik`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`),
  ADD KEY `id_pengaduan` (`id_pengaduan`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` bigint(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
