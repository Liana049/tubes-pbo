-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Bulan Mei 2020 pada 18.05
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.3.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gamestore`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(10) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `user_name`, `password`) VALUES
('ADM001', 'Bambang_23', 'Pass98#'),
('ADM002', 'Udin_65', 'Pass12#'),
('ADM003', 'Suga_648', 'Pass980#'),
('ADM004', 'Amir_09', 'Pass432#'),
('ADM005', 'Zygii_50', 'Pass348#');

-- --------------------------------------------------------

--
-- Struktur dari tabel `game`
--

CREATE TABLE `game` (
  `ID_Game` varchar(10) NOT NULL,
  `Nama_Game` varchar(25) NOT NULL,
  `Genre1` varchar(15) NOT NULL,
  `Genre2` varchar(15) NOT NULL,
  `Genre3` varchar(15) NOT NULL,
  `Stok` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `game`
--

INSERT INTO `game` (`ID_Game`, `Nama_Game`, `Genre1`, `Genre2`, `Genre3`, `Stok`) VALUES
('', '', '', '', '', 0),
('GM990601', 'Jugment', 'Action', 'RPG', 'Adventure', 10),
('GM990602', 'God Of WAr', 'RPG', 'Action', '', 25),
('GM990603', 'Marvel Ultimate ', 'Action ', 'Adventure', '', 30),
('GM990604', 'Dead Effectn 2', 'SurvivalHorror', 'FPS', 'RPG', 25),
('GM990605', 'Alliance', 'Action', 'Adventure', '', 30),
('GM990606', 'Manguni Squad', 'Shooter', 'Manguni Squad', 'Adventure', 20),
('GM990607', 'Hollow Knight', 'Action', 'Adventure', '', 25),
('GM990608', 'The Sim 4', 'Simulation', 'LIfe Simulation', '', 20),
('GM990609', 'Moonlighter', 'RPG', 'Action', 'Adventure', 10),
('GM990610', 'Fifa Shoccer', 'Sport', 'Simulation', '', 24),
('GM990611', 'Dota 2', 'Moba', 'Srategi', 'RPG', 14),
('GM990612', 'Mobile Legend', 'Moba', 'RPG', 'Strategi', 13),
('GM990613', 'Iron Leangue', 'Moba', 'Strategi', '', 12),
('GM990614', 'Need For Speed', 'Racing', 'Sport', '', 18),
('GM990615', 'Asphal 8', 'Racing', 'Simulation', '', 15),
('GM990616', 'the Legend Of Zelda', 'Action', 'Adventure', 'RPG', 35),
('GM990617', 'Free Fire', 'Battle Royale', 'Action', 'Adventure', 30),
('GM990618', 'chrono trigger', 'RPG', 'Strategi', 'Adventure', 34),
('GM990619', 'Dead Tigger 2', 'FPS', 'Survival Horror', 'RPG', 20),
('GM990620', 'Hitman', 'Shooter', 'Action', '', 25);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kustomer`
--

CREATE TABLE `kustomer` (
  `id_kustomer` varchar(10) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kustomer`
--

INSERT INTO `kustomer` (`id_kustomer`, `user_name`, `password`, `nama`, `alamat`) VALUES
('CSTMR001', '', '', '', ''),
('CSTMR002', '', '', '', ''),
('CSTMR003', '', '', '', ''),
('CSTMR004', '', '', '', ''),
('CSTMR005', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `id_order` varchar(10) NOT NULL,
  `id_kustomer` varchar(10) NOT NULL,
  `tgl_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `kustomer`
--
ALTER TABLE `kustomer`
  ADD PRIMARY KEY (`id_kustomer`);

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id_order`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
