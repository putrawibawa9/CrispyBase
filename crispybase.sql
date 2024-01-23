-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2024 at 08:12 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
-- Table structure for table `binatang`
--

CREATE TABLE `binatang` (
  `id_binatang` int(11) NOT NULL,
  `nama_binatang` varchar(50) NOT NULL,
  `keterangan_binatang` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `binatang`
--

INSERT INTO `binatang` (`id_binatang`, `nama_binatang`, `keterangan_binatang`, `gambar`, `id_kategori`) VALUES
(1, 'Traditional Beef Bliss', 'A timeless masterpiece featuring a juicy, flame-grilled beef patty topped with cheddar cheese, crisp lettuce, ripe tomatoes, and our signature house-made special sauce, all nestled between a soft, toasted sesame seed bun.', '65af557890577.jpeg', 1),
(4, 'Cheese Lovers Delight', 'Elevate your burger experience with a succulent beef patty layered with a decadent blend of melted Swiss, mozzarella, and cheddar cheeses. Complemented by caramelized onions, lettuce, and our secret sauce, served on a brioche bun.', '65af55ade8d18.jpeg', 1),
(5, 'BBQ Bacon Bonanza', 'Indulge in the smoky perfection of this burger, boasting a grilled beef patty adorned with crispy bacon strips, tangy barbecue sauce, sharp cheddar cheese, and a touch of crispy fried onions on a sesame seed bun.', '65af55b6064ff.jpeg', 1),
(6, 'Truffle Infusion Elegance', 'A luxurious creation featuring a truffle-infused beef patty, melted brie cheese, arugula, caramelized onions, and truffle aioli, all embraced by a freshly baked pretzel bun.', '65af55839e5cf.jpeg', 3),
(7, 'Spicy Sriracha Fiesta', 'Ignite your taste buds with a spicy Sriracha-seasoned chicken patty, pepper jack cheese, avocado slices, fresh cilantro, and a zesty Sriracha mayo, served on a jalapeño-cheddar bun.', '65af55bd6b8f6.jpeg', 3),
(8, 'Mushroom Madness Medley', 'Immerse yourself in the earthy goodness of a mushroom-infused turkey patty, topped with sautéed wild mushrooms, Swiss cheese, truffle aioli, and fresh spinach on a whole-grain bun.', '65af55c67ddee.jpeg', 3),
(9, 'Beyond Burger Bliss', 'Savor the plant-based perfection of a Beyond Meat patty, layered with vegan cheddar, avocado, lettuce, tomato, and vegan mayo, all nestled within a vegan sesame seed bun.', '65af55ce381f6.jpeg', 4),
(10, 'Mediterranean Chickpea Marvel', 'A delightful vegetarian option featuring a chickpea patty, feta cheese, cucumber, kalamata olives, tzatziki sauce, and fresh spinach, served on a whole-grain bun.', '65af558ba54c3.jpeg', 4),
(11, 'Quinoa & Black Bean Symphony', ' Experience the harmonious blend of quinoa and black bean patty, topped with guacamole, pepper jack cheese, salsa, and crisp lettuce, enclosed in a multigrain bun.', '65af55d4ac469.jpeg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Classic Creations'),
(3, 'Gourmet Innovations'),
(4, 'Vegetarian Delights');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binatang`
--
ALTER TABLE `binatang`
  ADD PRIMARY KEY (`id_binatang`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binatang`
--
ALTER TABLE `binatang`
  MODIFY `id_binatang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
