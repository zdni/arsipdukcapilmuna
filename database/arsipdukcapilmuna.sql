-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 30 Jul 2022 pada 17.04
-- Versi Server: 5.7.39-0ubuntu0.18.04.2
-- PHP Version: 7.2.34-28+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arsipdukcapilmuna`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `arsip`
--

CREATE TABLE `arsip` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tanggal_berkas` date NOT NULL,
  `tanggal_ambil` date NOT NULL,
  `nama_ayah` varchar(255) NOT NULL,
  `nama_ibu` varchar(255) NOT NULL,
  `pelapor` varchar(255) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `arsip`
--

INSERT INTO `arsip` (`id`, `nama`, `tempat_lahir`, `tanggal_lahir`, `tanggal_berkas`, `tanggal_ambil`, `nama_ayah`, `nama_ibu`, `pelapor`, `kategori_id`, `keterangan`, `file`) VALUES
(1, 'PATTIASINA YOAN', 'KENDARI', '2022-01-11', '2022-02-24', '2022-02-24', 'MUHAMAD RAHMAT HIDAYAT', 'HAMRINA ISRAWATI', 'HAMRINA ISRAWATI', 2, 'umum', 'naira_putri_aiza_1659025800.pdf'),
(2, 'NAIRA UTRI AIZA', 'KENDARI', '2022-01-11', '2022-02-24', '2022-02-24', 'MUHAMAD RAHMAT HIDAYAT', 'HAMRINA ISRAWATI', 'HAMRINA ISRAWATI', 3, 'umum', 'naira_putri_aiza_1659025800.pdf'),
(3, 'NAIRA PUTRI AIZA', 'KENDARI', '2022-01-11', '2022-01-24', '2022-02-24', 'MUHAMAD RAHMAT HIDAYAT', 'HAMRINA ISRAWATI', 'HAMRINA ISRAWATI', 2, 'terlambat', 'naira_putri_aiza_1659025800.pdf'),
(4, 'NAIRA PUTRI AIZA', 'KENDARI', '2022-01-11', '2022-01-24', '2022-02-24', 'MUHAMAD RAHMAT HIDAYAT', 'HAMRINA ISRAWATI', 'HAMRINA ISRAWATI', 2, 'umum', 'naira_putri_aiza_1659025800.pdf'),
(5, 'NAIRA PUTRI AIZA', 'KENDARI', '2022-01-11', '2022-01-24', '2022-02-24', 'MUHAMAD RAHMAT HIDAYAT', 'HAMRINA ISRAWATI', 'HAMRINA ISRAWATI', 2, 'umum', 'naira_putri_aiza_1659025800.pdf'),
(6, 'NAIRA PUTRI AIZA', 'KENDARI', '2022-01-11', '2022-01-24', '2022-02-24', 'MUHAMAD RAHMAT HIDAYAT', 'HAMRINA ISRAWATI', 'HAMRINA ISRAWATI', 2, 'umum', 'naira_putri_aiza_1659025800.pdf'),
(7, 'NAIRA PUTRI AIZA', 'KENDARI', '2022-01-11', '2022-01-24', '2022-02-24', 'MUHAMAD RAHMAT HIDAYAT', 'HAMRINA ISRAWATI', 'HAMRINA ISRAWATI', 2, 'umum', 'naira_putri_aiza_1659025800.pdf'),
(8, 'NAIRA PUTRI AIZA', 'KENDARI', '2022-01-11', '2022-01-24', '2022-02-24', 'MUHAMAD RAHMAT HIDAYAT', 'HAMRINA ISRAWATI', 'HAMRINA ISRAWATI', 2, 'umum', 'naira_putri_aiza_1659025800.pdf'),
(9, 'NAIRA PUTRI AIZA', 'KENDARI', '2022-01-11', '2022-01-24', '2022-02-24', 'MUHAMAD RAHMAT HIDAYAT', 'HAMRINA ISRAWATI', 'HAMRINA ISRAWATI', 2, 'umum', 'naira_putri_aiza_1659025800.pdf'),
(10, 'NAIRA PUTRI AIZA', 'KENDARI', '2022-01-11', '2022-01-24', '2022-02-24', 'MUHAMAD RAHMAT HIDAYAT', 'HAMRINA ISRAWATI', 'HAMRINA ISRAWATI', 2, 'umum', 'naira_putri_aiza_1659025800.pdf'),
(11, 'NAIRA PUTRI AIZA', 'KENDARI', '2022-01-11', '2022-01-24', '2022-02-24', 'MUHAMAD RAHMAT HIDAYAT', 'HAMRINA ISRAWATI', 'HAMRINA ISRAWATI', 2, 'umum', 'naira_putri_aiza_1659025800.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `warna` varchar(255) NOT NULL DEFAULT '#000'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `warna`) VALUES
(2, 'Akta Kelahiran', '#00a65a'),
(3, 'Akta Kematian', '#f56954'),
(4, 'Akta Pernikahan', '#00c0ef');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`) VALUES
(1, 'Kepala Bidang'),
(2, 'Kepala Dinas'),
(3, 'Staf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `password`, `image`, `role_id`) VALUES
(1, 'admin', 'Administrator', 'admin@gmail.com', '$2y$10$uGSBRKsWu2Xv0.xCmtNxPe52W2f10pLAqdlyK4o4WVbshywCmvaOe', 'admin.png', 1),
(3, 'veenia', 'Veenia Iwo', 'veenia3@gmail.com', '$2y$10$Rn3p7fyF/a5Chj3.Jlrpqe3q1.uYB5r6ofGHkP./eQcRX9FEOR62G', 'admin.png', 3),
(4, 'kadis', 'Kepala Dinas', 'kadis@gmail.com', '$2y$10$jnZQrSvZYIIOhTyhzGQ/B.Fk9Ob3GoMR4.4UVfTjGicMuhImLEe.e', 'admin.png', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arsip`
--
ALTER TABLE `arsip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `arsip`
--
ALTER TABLE `arsip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
