-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2019 at 06:48 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokobuku`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Fiksi'),
(2, 'Edukasi'),
(3, 'Komputer'),
(4, 'Bisnis'),
(5, 'Komik');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesan`
--

CREATE TABLE `tb_pesan` (
  `id_pesan` int(11) NOT NULL,
  `nama_pengirim` varchar(30) NOT NULL,
  `email_pengirim` varchar(30) NOT NULL,
  `subjek` varchar(30) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal_kirim` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pesan`
--

INSERT INTO `tb_pesan` (`id_pesan`, `nama_pengirim`, `email_pengirim`, `subjek`, `pesan`, `tanggal_kirim`) VALUES
(9, 'Muhammad', 'mafsyahofficial@gmail.com', 'Quest', 'Berapa lama Perkiraan Buku sampai', '2019-01-28 11:32:43'),
(10, 'Muhammad', 'mafsyahofficial@gmail.com', 'Quest', 'Berapa lama Perkiraan Buku sampai', '2019-01-28 11:34:20');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id_produk` int(11) NOT NULL,
  `nama_buku` varchar(50) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `pengarang` varchar(30) NOT NULL,
  `harga` int(11) NOT NULL,
  `image_buku` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `nama_buku`, `id_kategori`, `pengarang`, `harga`, `image_buku`) VALUES
(15, 'Dilan 1990', 5, 'Aldi', 100000, '69597-dilan1990.jpg'),
(16, 'About Love', 1, 'Tere Liye', 75000, '25496-Screenshot_2.png'),
(17, 'Ayahku', 2, 'Tere Liye', 65000, '91441-Screenshot_3.png'),
(18, 'Negeri Bedebah', 1, 'Tere Liye', 80000, '59769-Screenshot_4.png'),
(19, 'Off The Record', 5, 'Ria SW', 98000, '64824-Screenshot_5.png'),
(20, 'Resign', 5, 'Almira Bastari', 68000, '69721-Screenshot_6.png'),
(21, 'Me Time', 1, 'Ruwi Meita', 66000, '88432-Screenshot_7.png'),
(22, 'Komet', 4, 'Tere Liye', 95000, '34959-Screenshot_8.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `tanggal_transaksi` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `id_user`, `id_produk`, `tanggal_transaksi`) VALUES
(64498, 7, 16, '2019-01-28 11:08:23'),
(64498, 7, 17, '2019-01-28 11:08:23'),
(84042, 8, 15, '2019-01-28 15:34:38'),
(84042, 8, 17, '2019-01-28 15:34:39'),
(84042, 8, 22, '2019-01-28 15:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(16) NOT NULL,
  `level` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `email`, `password`, `alamat`, `no_hp`, `level`) VALUES
(1, 'Nikko Eka Saputra', 'nikkoeka04@gmail.com', 'nikko', 'Bandung', '08988190546', 'user'),
(2, '', 'admin@gmail.com', 'admin', '', '', 'admin'),
(5, 'Aditya Permana', 'adit@gmail.com', 'adit', 'Jakarta', '08988190546', 'user'),
(6, 'Ivanka Tri Agustin', 'ivanka@gmail.com', 'ivanka', 'Jakarta', '08992741488', 'user'),
(7, 'Muhammad Rafif', 'rafif@gmail.com', 'rafif', 'Bandung', 'rafif@gmail.com', 'user'),
(8, 'M Aldi', 'maldifirmansyah10@gmail.com', 'birualdi12', 'CIamis', '082842321', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_pesan`
--
ALTER TABLE `tb_pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_pesan`
--
ALTER TABLE `tb_pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
