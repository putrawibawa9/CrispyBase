-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 03, 2024 at 02:23 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crispybase`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int NOT NULL,
  `nama_kategori` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(6, 'American Burger'),
(12, 'Japanese Burger'),
(16, 'Burger Bali');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int NOT NULL,
  `nama_produk` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `keterangan_produk` text COLLATE utf8mb4_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `id_kategori` int NOT NULL,
  `harga_produk` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `stok_produk` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `keterangan_produk`, `gambar`, `id_kategori`, `harga_produk`, `stok_produk`) VALUES
(17, 'Balinesedream', 'Balineseis number 1', '6601846a71223.jpg', 16, '30', 117),
(19, 'American Delight', 'dasda', '6601923c1ca90.jpeg', 12, '2', -2);

-- --------------------------------------------------------

--
-- Table structure for table `sepatu`
--

CREATE TABLE `sepatu` (
  `kode_sepatu` int NOT NULL,
  `merk_sepatu` varchar(100) NOT NULL,
  `warna_sepatu` varchar(100) NOT NULL,
  `jenis_sepatu` varchar(100) NOT NULL,
  `bahan_sepatu` varchar(100) NOT NULL,
  `deskripsi_sepatu` varchar(100) NOT NULL,
  `tanggal_launching_sepatu` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sepatu`
--

INSERT INTO `sepatu` (`kode_sepatu`, `merk_sepatu`, `warna_sepatu`, `jenis_sepatu`, `bahan_sepatu`, `deskripsi_sepatu`, `tanggal_launching_sepatu`) VALUES
(1, 'Nike', 'Hitam', 'Sepatu Pria', 'Kain', 'Sepatu sneakers hitam dengan desain klasik.', '2023-05-15'),
(2, 'Adidas', 'Putih', 'Sepatu Anak', 'Mesh', 'Sepatu lari putih dengan teknologi penyangga kaki.', '2023-07-20'),
(3, 'New Balance', 'Biru', 'Sepatu Wanita', 'Kulit', 'Sepatu kasual biru dengan aksen merah.', '2023-09-10'),
(4, 'Puma', 'Merah', 'Sepatu Anak', 'Sintetis', 'Sepatu futsal merah dengan sol anti-slip.', '2023-11-25'),
(5, 'Vans', 'Kuning', 'Sepatu Pria', 'Kanvas', 'Sepatu slip-on kuning dengan motif kotak-kotak.', '2024-02-14'),
(10, 'Ventella gasih', 'Putih', 'Sepatu Wanita', 'Parasut gasih', 'Pake ngampus gasih', '2001-09-12');

-- --------------------------------------------------------

--
-- Table structure for table `user2`
--

CREATE TABLE `user2` (
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user2`
--

INSERT INTO `user2` (`username`, `password`) VALUES
('adien', '123'),
('admin', '123'),
('arjana', '123'),
('putra', '123'),
('putrawibawa9', '123'),
('win', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `sepatu`
--
ALTER TABLE `sepatu`
  ADD PRIMARY KEY (`kode_sepatu`);

--
-- Indexes for table `user2`
--
ALTER TABLE `user2`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sepatu`
--
ALTER TABLE `sepatu`
  MODIFY `kode_sepatu` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
