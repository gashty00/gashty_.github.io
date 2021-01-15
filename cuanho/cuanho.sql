-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2021 at 06:40 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cuanho`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stock` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stock`, `gambar`) VALUES
(1, 'Kaos', 'Kaos Merah uhuy', 'Kaos', 15000, 99, 'Kaos.jpg'),
(15, 'Topi Bapack ', 'Topi Buat Bapack - Bapack', 'Topi', 150000, 12, 'Topi1.jpg'),
(16, 'Topi  Bulu', 'Topi Buat Bapack - Bapack berbulu', 'Topi', 160000, 20, 'Hat1.jpg'),
(17, 'Topi Biru Bulu', 'Topi Buat Bapack - Bapack Biru', 'Topi', 155000, 19, 'Topii1.jpg'),
(18, 'Kaos Putih Garis Hitam', 'Kaos Bergaris Hitam', 'Kaos', 20000, 189, 'Kaos_putih.jpg'),
(19, 'Kaos Putih Polos', 'Kaos Putih Polos Bersih', 'Kaos', 120000, 499, 'Kaos_putih_polos.jpg'),
(20, 'T-Shirt Jepang', 'T-Shirt berbahan sutra', 'T-Shirt', 220000, 18, 'tshirt_japan.jpg'),
(21, 'T-Shirt Logo', 'T-Shirt dengan logo - logo', 'T-Shirt', 225000, 13, 'agora_tshirt.jpg'),
(22, 'T-Shirt Sti Fi', 'T-Shirt merk Stifi', 'T-Shirt', 245000, 10, 'Stifi_tshirt.jpg'),
(23, 'Kaos Polo Hijau', 'Kaos merk Polo warna Hijau', 'Kaos', 90000, 28, 'Kaos_Polo.jpg'),
(24, 'Brim Hat', 'Brim Hat Warna Bright Brown', 'Topi', 236000, 13, 'Brim_Hat.jpg'),
(25, 'Fred Perry', 'T-Shirt Fred Perry newest', 'T-Shirt', 210000, 31, 'Fred_Perry.jpg'),
(26, 'T-Shirt Orange', 'T-Shirt warna Orange', 'Sale', 55000, 74, 't-shirt-orange1.jpg'),
(27, 'Baseball Hat', 'Topi Baseball Leather', 'Sale', 87000, 12, 'Baseball_Hat.jpg'),
(28, 'Siggi Hat', 'Topi Siggi model Pilot', 'Sale', 99000, 17, 'Siggi1.jpg'),
(29, 'Kaos Putih LP', 'Kaos Putih Kembed Lengan Panjang', 'Sale', 15000, 89, 'Kaos_Panjang.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(17, 'Gabiel Kreshna', 'Gunung Kidul', '2021-01-10 13:49:27', '2021-01-11 13:49:27'),
(18, 'User', 'None', '2021-01-10 23:21:13', '2021-01-11 23:21:13'),
(21, 'Kreshna Gusty Kresh', 'Joish Parket', '2021-01-14 23:15:35', '2021-01-15 23:15:35');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_barang`, `jumlah`, `harga`, `pilihan`) VALUES
(4, 8, 1, 'Kaos', 1, 15000, ''),
(5, 9, 1, 'Kaos', 1, 15000, ''),
(6, 9, 2, 'Kaos Merahhh', 1, 150000, ''),
(7, 9, 4, 'Kaos Merahhh ', 1, 165000, ''),
(9, 11, 1, 'Kaos', 1, 15000, ''),
(12, 16, 18, 'Kaos Putih Garis Hitam', 1, 20000, ''),
(13, 17, 19, 'Kaos Putih Polos', 1, 120000, ''),
(14, 18, 15, 'Topi Bapack ', 1, 150000, ''),
(15, 19, 15, 'Topi Bapack ', 1, 150000, ''),
(16, 21, 15, 'Topi Bapack ', 1, 150000, '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `Pesan_Penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stock = stock-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', 'web123', 1),
(2, 'user', 'user', 'user123', 2),
(3, 'kresh', 'kresh', 'kresh123', 2),
(4, 'UAS WEB', 'qwerty', 'qwerty', 1),
(5, 'samsudin', 'samsudin', 'sam123', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
