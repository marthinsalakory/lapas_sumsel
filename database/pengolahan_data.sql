-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Agu 2021 pada 14.38
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengolahan_data`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kejahatan`
--

CREATE TABLE `kejahatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(222) NOT NULL,
  `nmr_regis` varchar(222) NOT NULL,
  `jenis_kjh` varchar(222) NOT NULL,
  `pidana` varchar(222) NOT NULL,
  `lama_pidana` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kejahatan`
--

INSERT INTO `kejahatan` (`id`, `nama`, `nmr_regis`, `jenis_kjh`, `pidana`, `lama_pidana`) VALUES
(6, 'Mansyur ', 'BI. 110/2020', 'Narkotika', 'Pasal 114 UU RI No. 35/2009', '06 Tahun Denda Rp.1.000.000.000 Subs. 03 Bulan'),
(7, 'Ari Ananda', 'BI. 400/2019', 'Narkotika', 'Pasal 114 UU RI No. 35/2009', '14 Tahun Denda Rp.1.000.000.000 Subs. 03 Bulan'),
(10, 'Iqbal', 'Bi.165/2020', 'Narkotika', 'Pasal 112 UU RI No. 35/2009', '06 Tahun Denda Rp.800.000.000 Subs. 03 Bulan'),
(11, 'Amizar', 'BI. 110/2020', 'Narkotika', 'Pasal 114 UU RI No. 35/2009 , ', '14 Tahun Denda Rp.1.000.000.000 Subs. 03 bulan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `level` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'pemimpin', 'pemimpin', 'pemimpin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `napi`
--

CREATE TABLE `napi` (
  `id` int(11) NOT NULL,
  `nama` varchar(222) NOT NULL,
  `nik` varchar(222) NOT NULL,
  `tmpt_tgl` varchar(222) NOT NULL,
  `jkl` varchar(222) NOT NULL,
  `kwg` varchar(225) NOT NULL,
  `alamat` text NOT NULL,
  `pekerjaan` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `napi`
--

INSERT INTO `napi` (`id`, `nama`, `nik`, `tmpt_tgl`, `jkl`, `kwg`, `alamat`, `pekerjaan`) VALUES
(31, 'Mansyur ', '16577458765456578', 'Palembang, 07-Juni-1970', 'Laki-laki', 'WNI', 'JL. Macan Kumbang I, Kelurahan No.77 Rt.43 Rw.11 Demang Lebar Daun Kec. Ilir Barat Kota Palembang', 'Wiraswasta'),
(32, 'Ari Ananda ', '1703101335000003', 'Palembang, 15-Januari-1976', 'Laki-laki', 'WNI', 'Jl. May Zen Lorong Cendana, Sei Slayur Kec. Kalidoni, Kota Palembang', 'Wiraswasta'),
(36, 'Iqbal', '1806303343535536', 'Pulau rimau 09-07-1999', 'Laki-laki', 'WNI', 'Jl. Kelapa Dua Rt 02 Rw 06 ', 'Wiraswasta'),
(37, 'Amizar', '177266666633', 'palembang, 07-mei-2000', 'Laki-laki', 'WNI', 'jl. sribasuki palembang', 'Wiraswasta');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kejahatan`
--
ALTER TABLE `kejahatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `napi`
--
ALTER TABLE `napi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kejahatan`
--
ALTER TABLE `kejahatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `napi`
--
ALTER TABLE `napi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
