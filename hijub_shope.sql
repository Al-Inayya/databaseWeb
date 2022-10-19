-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2022 at 04:03 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `127_al`
--
CREATE DATABASE IF NOT EXISTS `127_al` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `127_al`;

-- --------------------------------------------------------

--
-- Table structure for table `data_barang`
--

CREATE TABLE `data_barang` (
  `ID` int(11) NOT NULL,
  `NAMA` varchar(25) NOT NULL,
  `HARGA_JUAL` int(11) NOT NULL,
  `HARGA_BELI` int(11) NOT NULL,
  `JENIS` varchar(25) DEFAULT NULL,
  `EXPIRED` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_barang`
--
ALTER TABLE `data_barang`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_barang`
--
ALTER TABLE `data_barang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `al_127`
--
CREATE DATABASE IF NOT EXISTS `al_127` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `al_127`;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `ID` int(10) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `Departemen` varchar(20) NOT NULL,
  `Gaji` int(20) NOT NULL,
  `TanggalMulaiBekerja` date NOT NULL,
  `Keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`ID`, `Nama`, `Departemen`, `Gaji`, `TanggalMulaiBekerja`, `Keterangan`) VALUES
(12345, 'Andi Akhzan', 'Accounting', 250000000, '2014-04-07', 'null'),
(22334, 'Docoding', 'IT', 17000000, '2016-09-03', 'Jago Ngoding'),
(45321, 'Andi Usama', 'Pemasaran', 500000000, '2016-10-11', 'null'),
(67890, 'Andi Adit', 'Wakil Direktur', 1000000000, '2015-01-01', 'Bersahaja'),
(71122, 'Muhammad Askar', 'Keamanan', 7000000, '2010-10-10', 'Dijamin Aman'),
(71123, 'Muhammad Akbar', 'Pemasaran', 3000000, '2014-01-17', 'null'),
(71124, 'Alya Nasya', 'Keuangan', 70000000, '2017-07-17', 'Sangat Rajin dan Dermawan'),
(71125, 'Muhammad Fauzan', 'Quality Assurance', 20000000, '2019-09-19', 'Rajin dan Berani'),
(71126, 'Rafi Amat', 'General Affair', 40000000, '2013-03-30', 'Dermawan'),
(71127, 'Muhammad Rafatar', 'Product Planning', 30000000, '2014-03-23', 'null'),
(71128, 'Muhammad Baim', 'Accounting', 35000000, '2012-02-21', 'Ramah dan Menawan'),
(71129, 'Dzaky Agung', 'Kebersihan', 9000000, '2018-03-17', 'Rapih dan Bersih'),
(90871, 'Marsell', 'HRD', 30000000, '2018-09-03', 'Jalur Halal'),
(97856, 'Muhammad Michael', 'Presdir', 1250000000, '2015-05-02', 'Pilih nomor dua');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`ID`);
--
-- Database: `db_basdat`
--
CREATE DATABASE IF NOT EXISTS `db_basdat` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_basdat`;
--
-- Database: `db_traveloka`
--
CREATE DATABASE IF NOT EXISTS `db_traveloka` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_traveloka`;

-- --------------------------------------------------------

--
-- Table structure for table `blacklist`
--

CREATE TABLE `blacklist` (
  `Id_Blacklist` int(11) NOT NULL,
  `No_kendaraan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blacklist`
--

INSERT INTO `blacklist` (`Id_Blacklist`, `No_kendaraan`) VALUES
(1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `Hotel_id` varchar(50) NOT NULL,
  `Nama_Hotel` varchar(50) NOT NULL,
  `Jumlah_Kamar` int(11) NOT NULL,
  `Lokasi_Hotel` varchar(50) NOT NULL,
  `staff_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`Hotel_id`, `Nama_Hotel`, `Jumlah_Kamar`, `Lokasi_Hotel`, `staff_id`) VALUES
('H001', 'Kemang Hotel', 12, 'Tanggerang', 'S001'),
('H002', 'Senayan Hotel', 25, 'Jakarta', 'S002'),
('H003', 'Arydaduta Menteng', 45, 'Jakarta', 'S003'),
('H004', 'Bahtra', 40, 'Balikpapan', 'S004'),
('H005', 'Regency ', 50, 'Depok', 'S005'),
('H006', 'Angklung', 25, 'Samarinda', 'S006'),
('H007', 'Kemanggisan', 50, 'Jakarta ', 'S007'),
('H008', 'The :angham Jakarta', 60, 'Bekasi', 'S008'),
('H009', 'Belwood', 65, 'Semarang', 'S009'),
('H010', 'Blue Sky', 45, 'Balikpapan', 'S010'),
('H011', 'BO', 19, 'Samarinda', 'S011'),
('H012', 'Swiss Belhotel', 50, 'Makassar', 'S012'),
('H013', 'Lembasung', 25, 'Tarakan', 'S013'),
('H014', 'Tranzit', 25, 'Solo', 'S014'),
('H015', 'Monaco', 45, 'Jakarta', 'S015'),
('H016', 'Galaxy', 25, 'Solo', 'S016'),
('H017', 'Makmur', 34, 'Kediri', 'S017'),
('H018', 'Harmonis', 32, 'Balikpapan', 'S018'),
('H019', 'Dinasti', 38, 'Banjarmasin', 'S019'),
('H020', 'Paradise', 39, 'Palangkaraya', 'S020');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_hotel`
--

CREATE TABLE `invoice_hotel` (
  `Invoice_id` varchar(50) NOT NULL,
  `check_in` datetime NOT NULL,
  `check_out` datetime NOT NULL,
  `Jenis_Kamar` varchar(50) NOT NULL,
  `Harga_Total` int(11) NOT NULL,
  `Hotel_id` varchar(50) NOT NULL,
  `Pelanggan_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_hotel`
--

INSERT INTO `invoice_hotel` (`Invoice_id`, `check_in`, `check_out`, `Jenis_Kamar`, `Harga_Total`, `Hotel_id`, `Pelanggan_id`) VALUES
('IH001', '2021-11-09 19:32:30', '2021-11-10 08:00:00', 'Deluxe', 1200000, 'H001', 'P001'),
('IH002', '2021-11-16 16:39:00', '2021-11-17 10:38:39', 'Standar', 1250000, 'H002', 'P002'),
('IH003', '2021-11-21 17:00:29', '2021-11-22 12:26:26', 'Standar', 450000, 'H003', 'P003'),
('IH004', '2021-10-04 20:37:50', '2021-10-05 08:38:00', 'Deluxe', 1250000, 'H004', 'P004'),
('IH005', '2021-11-01 07:19:15', '2021-11-02 10:21:48', 'Standar', 750000, 'H005', 'P005'),
('IH006', '2021-11-29 13:31:00', '2021-11-20 11:00:00', 'Junior Suit', 450000, 'H006', 'P006'),
('IH007', '2021-10-14 07:18:18', '2021-11-20 20:50:29', 'Deluxe', 1250000, 'H007', 'P007'),
('IH008', '2021-11-25 12:29:27', '2021-11-27 15:38:39', 'Standar', 550000, 'H008', 'P008'),
('IH009', '2021-10-09 14:37:13', '2021-11-08 00:00:00', 'Deluxe', 1450000, 'H009', 'P009'),
('IH010', '2021-11-03 21:38:00', '2021-11-20 19:34:33', 'Standar', 550000, 'H010', 'P010'),
('IH011', '2021-11-19 20:00:25', '2021-11-20 07:30:00', 'Standard', 500000, 'H011', 'P011');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `No_Keberangkatan` varchar(50) NOT NULL,
  `Tanggal_Keberangkatan` date NOT NULL,
  `Asal_Keberangkatan` varchar(50) NOT NULL,
  `Tujuan_Keberangkatan` varchar(50) NOT NULL,
  `No_Kendaraan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`No_Keberangkatan`, `Tanggal_Keberangkatan`, `Asal_Keberangkatan`, `Tujuan_Keberangkatan`, `No_Kendaraan`) VALUES
('J001', '2021-11-01', 'Bontang', 'Muara Badak', 'K001'),
('J002', '2021-11-11', 'Medan', 'Binjai', 'K002'),
('J003', '2021-10-21', 'Purwokerto', 'Semarang', 'K003'),
('J004', '2021-11-15', 'Balikpapan', 'Paser', 'K004'),
('J005', '2021-10-28', 'Bandung', 'Kediri', 'K005'),
('J006', '2021-11-29', 'Kediri', 'Kudus', 'K006'),
('J007', '2021-11-22', 'Demak', 'Banten', 'K007'),
('J008', '2021-10-15', 'Surabaya', 'Banten', 'K008'),
('J009', '2021-11-04', 'Berau', 'Samarinda', 'K009'),
('J010', '2021-11-01', 'Melak', 'Bontang', 'K010'),
('J011', '2021-11-26', 'Solo', 'Jakarta', 'K011'),
('J012', '2021-11-29', 'Balikpapan', 'Bandung', 'K012'),
('J013', '2021-12-08', 'Jakarta', 'Balikpapan', 'K013'),
('J014', '2021-11-22', 'Balikpapan', 'Tarakan', 'K014'),
('J015', '2021-11-30', 'Makassar', 'Jayapura', 'K015'),
('J016', '2021-12-06', 'Banjarmasin ', 'Jakarta', 'K016'),
('J017', '2021-12-20', 'Jakarta', 'Pontianak', 'K017'),
('J018', '2021-12-04', 'Makassar', 'Surabaya', 'K018'),
('J019', '2021-12-19', 'Jakarta', 'Tarakan', 'K019'),
('J020', '2021-12-18', 'Jakarta', 'Aceh', 'K020');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `Pelanggan_id` varchar(50) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Usia` int(11) NOT NULL,
  `NoHp` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`Pelanggan_id`, `Nama`, `Gender`, `Usia`, `NoHp`, `Email`) VALUES
('P001', 'Jonathan Liandi', 'Pria', 20, '0812-1283-7127', 'Jonathan@gmail.com'),
('P002', 'Ahmad Zobari', 'Pria', 22, '0822-1283-9821', 'Zobari123@gmail.com'),
('P003', 'Indri', 'Wanita', 19, '0818-1283-9821', 'Indri@gmail,com'),
('P004', 'Wahda', 'Wanita', 20, '0822-9821-9892', 'Wahda32@gmail.com'),
('P005', 'Dwi Ageng', 'Pria', 23, '0812-5555-6666', 'Ageng@gmail.com'),
('P006', 'Santi Sulistyo', 'Wanita', 20, '0812-7812-0912', 'Sulis@gmail.com'),
('P007', 'Sandi Sandoto', 'Pria', 32, '0812-9822-2222', 'Sandi@gmail.com'),
('P008', 'Mahda', 'Wanita', 26, '0812-0980-8729', 'Mahda@gmail.com'),
('P009', 'Sandika Galih', 'Pria ', 27, '0812-1993-9803', 'Galih@gmail.com'),
('P010', 'Ahmad Alfarez', 'Pria', 45, '0812-1283-9999', 'Farez@gmail.com'),
('P011', 'Fahreza', 'Pria', 24, '0812-2071-5014', 'reza12@gmail.com'),
('P012', 'Maman', 'Pria', 21, '0898-9000-1222', 'mann12222@gmail.com'),
('P013', 'Kannisa', 'Wanita', 19, '0895-9020-1232', 'kniss99@gmail.com'),
('P014', 'Wulan', 'Wanita', 27, '0812-4343-2121', 'wulannichhhhh@gmail.com'),
('P015', 'Riadi', 'Pria', 46, '0877-6969-6969', 'guariadi69@gmail.com'),
('P016', 'Marshel', 'Pria', 38, '0852-4603-8256', 'marsellss@gmail.com'),
('P017', 'Pharsha', 'Wanita', 34, '0898-3221-1444', 'pharsss34@gmail.com'),
('P018', 'Danie', 'Pria', 56, '0877-7777-7654', 'danieeeek@gmail.com'),
('P019', 'Aurel', 'Wanita', 25, '0898-2524-7887', 'aurlll111@gmail.com'),
('P020', 'Jaka', 'Pria', 28, '0812-3535-5354', 'jakaakk7@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `pesawat`
--

CREATE TABLE `pesawat` (
  `No_Kendaraan` varchar(50) NOT NULL,
  `Maskapai` varchar(50) NOT NULL,
  `Kelas_Penerbangan` varchar(50) NOT NULL,
  `Jumlah_Penumpang` int(11) NOT NULL,
  `Batasan_Bawaan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesawat`
--

INSERT INTO `pesawat` (`No_Kendaraan`, `Maskapai`, `Kelas_Penerbangan`, `Jumlah_Penumpang`, `Batasan_Bawaan`) VALUES
('K001', 'Garuda Indonesia', 'Business', 45, 12),
('K002', 'Lion Air', 'Economy', 50, 17),
('K003', 'Batik Air', 'Business', 50, 25),
('K004', 'Sriwijaya Air', 'Premium Economy', 65, 18),
('K005', 'Batik Air', 'Economy', 72, 20),
('K006', 'Lion Air', 'Vip', 76, 15),
('K007', 'Garuda Indonesia', 'Business ', 65, 18),
('K008', 'Adam Air', 'Economy', 55, 20),
('K009', 'Citilink', 'Business', 65, 20),
('K010', 'Lion Air', 'Premium Economy', 49, 14),
('K011', 'Garuda Indonesia', 'Business', 58, 15),
('K012', 'Citilink', 'Economy', 60, 17),
('K013', 'Lion Air', 'Business', 65, 15),
('K014', 'Lion Air', 'Economy', 62, 17),
('K015', 'Sriwijaya Air', 'Business', 67, 18),
('K016', 'Batik Air', 'Premium Economy', 69, 17),
('K017', 'Citilink', 'Business', 62, 18),
('K018', 'Lion Air', 'Economy', 70, 14),
('K019', 'Batik Air', 'Business', 63, 17),
('K020', 'Citilink', 'Premium Economy', 72, 18);

--
-- Triggers `pesawat`
--
DELIMITER $$
CREATE TRIGGER `after_delete` AFTER DELETE ON `pesawat` FOR EACH ROW update blacklist
set No_Kendaraan = No_Kendaraan - old.No_Kendaraan
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` varchar(50) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Call_Center` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `Nama`, `Call_Center`, `Gender`) VALUES
('S001', 'Jonathan Liandi', '(021) 29103300', 'Pria'),
('S002', 'Ahmad Zobari', '(021) 29103300', 'Pria'),
('S003', 'Fatmawati', '(021) 29103300', 'Wanita'),
('S004', 'Sam Varez', '(021) 29103300', 'Pria'),
('S005', 'Putri Sukma', '(021) 29103300', 'Wanita'),
('S006', 'Nur Handayani', '(021) 29103300', 'Wanita'),
('S007', 'Hidayat Taufik', '(021) 29103300', 'Pria'),
('S008', 'Jojo Christie', '(021) 29103300', 'Pria'),
('S009', 'Jotaro Lubis', '(021) 29103300', 'Pria'),
('S010', 'Wahyudi Taruk', '(021) 29103300', 'Pria'),
('S011', 'Qorygore', '(021) 29103300', 'Pria'),
('S012', 'Erikolim', '(021) 29103300', 'Pria'),
('S013', 'Laras', '(021) 29103300', 'Wanita'),
('S014', 'Karin', '(021) 29103300', 'Wanita'),
('S015', 'Yudi', '(021) 29103300', 'Pria'),
('S016', 'Maichel', '(021) 29103300', 'Pria'),
('S017', 'Vanny', '(021) 29103300', 'Wanita'),
('S018', 'Doddy', '(021) 29103300', 'Pria'),
('S019', 'Reni', '(021) 29103300', 'Wanita'),
('S020', 'Zulkifli', '(021) 29103300', 'Pria');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `Transaksi_id` varchar(50) NOT NULL,
  `Metode_pembayaran` varchar(50) NOT NULL,
  `Total_Pembayaran` int(11) NOT NULL,
  `Pelanggan_id` varchar(50) NOT NULL,
  `No_Keberangkatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`Transaksi_id`, `Metode_pembayaran`, `Total_Pembayaran`, `Pelanggan_id`, `No_Keberangkatan`) VALUES
('T001', 'Banking', 500000, 'P001', 'J001'),
('T002', 'Tunai', 500000, 'P002', 'J002'),
('T003', 'Banking', 450000, 'P003', 'J003'),
('T004', 'Banking', 650000, 'P004', 'J004'),
('T005', 'Tunai', 500000, 'P005', 'J005'),
('T006', 'Banking', 750000, 'P006', 'J006'),
('T007', 'Banking', 650000, 'P008', 'J008'),
('T008', 'Tunai', 500000, 'P009', 'J009'),
('T009', 'Tunai', 650000, 'P010', 'J010'),
('T010', 'Banking', 500000, 'P010', 'J010');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blacklist`
--
ALTER TABLE `blacklist`
  ADD PRIMARY KEY (`Id_Blacklist`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`Hotel_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `invoice_hotel`
--
ALTER TABLE `invoice_hotel`
  ADD PRIMARY KEY (`Invoice_id`),
  ADD KEY `Hotel_id` (`Hotel_id`),
  ADD KEY `Pelanggan_id` (`Pelanggan_id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`No_Keberangkatan`),
  ADD KEY `No_Kendaraan` (`No_Kendaraan`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`Pelanggan_id`);

--
-- Indexes for table `pesawat`
--
ALTER TABLE `pesawat`
  ADD PRIMARY KEY (`No_Kendaraan`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`Transaksi_id`),
  ADD KEY `Pelanggan_id` (`Pelanggan_id`),
  ADD KEY `No_Keberangkatan` (`No_Keberangkatan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blacklist`
--
ALTER TABLE `blacklist`
  MODIFY `Id_Blacklist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `invoice_hotel`
--
ALTER TABLE `invoice_hotel`
  ADD CONSTRAINT `invoice_hotel_ibfk_1` FOREIGN KEY (`Hotel_id`) REFERENCES `hotel` (`Hotel_id`),
  ADD CONSTRAINT `invoice_hotel_ibfk_2` FOREIGN KEY (`Pelanggan_id`) REFERENCES `pelanggan` (`Pelanggan_id`);

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`No_Kendaraan`) REFERENCES `pesawat` (`No_Kendaraan`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`Pelanggan_id`) REFERENCES `pelanggan` (`Pelanggan_id`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`No_Keberangkatan`) REFERENCES `jadwal` (`No_Keberangkatan`);
--
-- Database: `delivery`
--
CREATE DATABASE IF NOT EXISTS `delivery` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `delivery`;

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `kode_barang` int(11) NOT NULL,
  `nama_barang` varchar(25) NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `total_barang` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`kode_barang`, `nama_barang`, `harga_barang`, `total_barang`, `total_bayar`) VALUES
(121, 'Ayam Krispi', 6000, 5, 30000),
(122, 'Ayam Gepuk', 10000, 4, 40000),
(123, 'Ayam PUP', 21000, 1, 21000),
(124, 'Ayam Geprek', 15000, 3, 45000),
(125, 'Es Teh', 4000, 2, 8000),
(126, 'jus jambu', 7000, 3, 21000),
(127, 'Milkshake Avocado', 12000, 5, 60000),
(128, 'Nila Bakar', 25000, 4, 100000),
(129, 'Air Mineral', 5000, 2, 10000),
(130, 'Nasi', 3000, 6, 18000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`kode_barang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `kode_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- Database: `hijub_shope`
--
CREATE DATABASE IF NOT EXISTS `hijub_shope` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `hijub_shope`;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `nama` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `telpon` varchar(25) NOT NULL,
  `alamat` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`nama`, `email`, `telpon`, `alamat`) VALUES
('nay', 'nay123@gmail.com', '083456213', 'pramuka');
--
-- Database: `pemesananbus`
--
CREATE DATABASE IF NOT EXISTS `pemesananbus` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pemesananbus`;

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `nama_penumpang` varchar(255) NOT NULL,
  `lokasi_dari` varchar(150) NOT NULL,
  `lokasi_ke` varchar(150) NOT NULL,
  `banyaknya_tiket` int(11) NOT NULL,
  `tanggal_keberangkatan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id`, `nama_penumpang`, `lokasi_dari`, `lokasi_ke`, `banyaknya_tiket`, `tanggal_keberangkatan`) VALUES
(4, 'Al-Inayya', 'Bandung', 'Yogyakarta', 2, '2021-06-07'),
(5, 'Andy', 'Jakarta', 'Bandung', 1, '2021-08-05'),
(6, 'Maulana', 'Yogyakarta', 'Jakarta', 1, '2021-09-16');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`) VALUES
(1, 'Admin', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `perusahaan_weecom`
--
CREATE DATABASE IF NOT EXISTS `perusahaan_weecom` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `perusahaan_weecom`;

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id` int(10) NOT NULL,
  `id_karyawan` int(10) NOT NULL,
  `apakah_hadir` enum('Hadir','Tidak Hadir','Izin','Sakit') NOT NULL,
  `keterangan` text NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id`, `id_karyawan`, `apakah_hadir`, `keterangan`, `waktu`) VALUES
(4, 203, 'Hadir', '', '2019-06-03 06:35:10'),
(5, 203, 'Izin', 'Harus mengurus surat-surat motor', '2019-06-04 06:35:10'),
(6, 203, 'Hadir', '', '2019-06-05 06:35:10'),
(7, 203, 'Hadir', '', '2019-06-06 06:35:10'),
(8, 203, 'Hadir', '', '2019-06-07 06:35:10'),
(11, 203, 'Hadir', '', '2019-06-10 06:35:10'),
(12, 203, 'Hadir', '', '2019-06-11 06:35:10'),
(13, 203, 'Hadir', '', '2019-06-12 06:35:10'),
(14, 203, 'Hadir', '', '2019-06-13 06:35:10'),
(17, 203, 'Sakit', '', '2019-06-16 06:35:10'),
(18, 203, 'Sakit', '', '2019-06-17 06:35:10'),
(19, 203, 'Hadir', '', '2019-06-18 06:35:10'),
(20, 203, 'Hadir', '', '2019-06-19 06:35:10'),
(21, 203, 'Hadir', '', '2019-06-20 06:35:10'),
(22, 203, 'Hadir', '', '2019-06-21 06:35:10'),
(25, 203, 'Hadir', '', '2019-06-24 06:35:10'),
(26, 203, 'Hadir', '', '2019-06-25 06:35:10'),
(27, 203, 'Hadir', '', '2019-06-26 06:35:10'),
(28, 203, 'Hadir', '', '2019-06-27 06:35:10'),
(29, 203, 'Hadir', '', '2019-06-28 06:35:10');

-- --------------------------------------------------------

--
-- Table structure for table `departemen`
--

CREATE TABLE `departemen` (
  `id` int(10) NOT NULL,
  `nama_departemen` varchar(250) NOT NULL,
  `dibuat` date NOT NULL,
  `diganti` date NOT NULL,
  `status` enum('aktif','tidak aktif','hapus') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departemen`
--

INSERT INTO `departemen` (`id`, `nama_departemen`, `dibuat`, `diganti`, `status`) VALUES
(1, 'Belum di ketahui', '0000-00-00', '0000-00-00', 'aktif'),
(2, 'Keuangan', '2019-06-22', '2019-06-22', 'aktif'),
(3, 'It', '2019-06-22', '2019-06-22', 'aktif'),
(4, 'Design', '2019-06-22', '2019-06-30', 'aktif'),
(5, 'Marketing', '2019-06-28', '2019-06-28', 'aktif'),
(6, 'Research and Development', '2019-06-29', '2019-06-29', 'aktif'),
(7, 'Keamanan', '2019-06-30', '2019-06-30', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL,
  `id_departemen` int(10) NOT NULL DEFAULT 0,
  `id_posisi` int(10) NOT NULL DEFAULT 0,
  `nama_depan` varchar(25) NOT NULL,
  `nama_belakang` varchar(25) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(250) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `dob` date NOT NULL,
  `jenis_kelamin` enum('Pria','Wanita') NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL,
  `nomor_hp` varchar(15) NOT NULL,
  `mulai_kerja` date NOT NULL,
  `dibuat` datetime NOT NULL,
  `diganti` datetime NOT NULL,
  `status` enum('karyawan aktif','interview','tidak di terima','menolak kerja','berhenti kerja','di berhentikan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `id_departemen`, `id_posisi`, `nama_depan`, `nama_belakang`, `email`, `password`, `alamat`, `dob`, `jenis_kelamin`, `nomor_telepon`, `nomor_hp`, `mulai_kerja`, `dibuat`, `diganti`, `status`) VALUES
(1, 1, 1, 'Jed', 'Satterfield', 'lavonne57@feil.edu.hk', '2j4gbuNy\\1|Q2s7WyKV', '89 Ang Lat Chong Tsuen\nSak Hang\nHong Kong', '1919-10-04', 'Wanita', '93574236', '59096948', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(2, 1, 1, 'Jettie', 'Johnson', 'grace35@gmail.com', 'PlkHO_^Ne', '30 Uk Yin Lane\nWong Shap\nNew Territories', '1952-10-13', 'Wanita', '21154550', '66233058', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(3, 1, 1, 'Jewel', 'Dach', 'medhurst.jevon@yahoo.com', 'B6M<E+=c+/', 'Block 32, Mo Niu Court\nYung Kwong Lut\nNew Territories', '1987-07-10', 'Wanita', '66241420', '26690926', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(4, 1, 1, 'Una', 'Wilderman', 'yoshiko.shanahan@klein.edu.hk', 'N<TpU<pK', '58 Nui Kon Yeuk\nWak Pam\nHong Kong', '1946-05-29', 'Pria', '56506233', '69161560', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(5, 1, 1, 'Davonte', 'Rolfson', 'wilderman.rubie@reilly.com', 'ZEyjNinvOT', '28 Tan Niu Ngat West Circuit\nChoi Lan\nNew Territories', '1987-07-10', 'Pria', '64756319', '91729536', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(6, 1, 1, 'Nolan', 'Smitham', 'metz.dee@gmail.com', '\\<3y/.gs', 'Block 54, Ni Lik Estate\nShuen Fe\nNew Territories', '1934-06-14', 'Wanita', '68188741', '91564484', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(7, 1, 1, 'Cletus', 'Muller', 'mcglynn.aaliyah@hotmail.com.hk', 'U9OJYuwIEyXT\\&}Ld', '19 Ne Pou San Tsuen\nShang Tsong Tseung\nNew Territories', '1937-03-04', 'Pria', '35092074', '58919537', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(8, 1, 1, 'Hester', 'Waelchi', 'jude50@kautzer.com', 'jF&~4G^', '77 Yat Han Road West\nTam Shung Hou\nHong Kong', '1920-01-04', 'Wanita', '69016431', '56422780', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(9, 1, 1, 'Angelita', 'Roberts', 'kyra24@borer.com.hk', 'v>F?fr65S^', '65 Mui She Lane\nStanley\nKowloon', '1953-01-21', 'Wanita', '66939579', '50257325', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(10, 1, 1, 'Tillman', 'Schaefer', 'felicity47@prosacco.org.hk', 'a8~3FY', '30 Shui Street\nLei Tsip Shue\nKowloon', '1977-01-23', 'Pria', '58377156', '21148566', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(11, 1, 1, 'Triston', 'West', 'kozey.clovis@dach.com.hk', 'pMm/BW=$}', 'Block 74, Hui Ang Tok Estate\nLe Po\nHong Kong', '1980-07-28', 'Pria', '61003635', '93017983', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(12, 1, 1, 'Ansley', 'O\'Kon', 'smitham.marlee@thompson.edu.hk', '#o=.)uOxpm9e[+)$N', '78 Cho Koi\nTsung Ha\nNew Territories', '1987-07-10', 'Pria', '61363721', '32407439', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(13, 1, 1, 'Holly', 'Krajcik', 'aubrey.jacobson@swaniawski.biz', 'Nd~:N&j\'N0uK', 'Block 53, Tai To Tsui Estate\nWing Shung Wat\nKowloon', '1987-07-10', 'Pria', '26088845', '31077045', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(14, 1, 1, 'Salma', 'Bernhard', 'shyanne.armstrong@yahoo.com', '1[XD]6C=po', '67 Pak Road\nTsuk Tik\nNew Territories', '1975-03-16', 'Wanita', '25670867', '36764277', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(15, 1, 1, 'Adam', 'Heaney', 'brekke.chelsea@hotmail.com.hk', 'wl22}^oM.;\"S/K', '33 Seuk Luen\nHoi Sut\nNew Territories', '1945-04-11', 'Pria', '94559366', '94846727', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(16, 1, 1, 'Josiah', 'Prosacco', 'fmante@nikolaus.biz', ']z\'i#kWsPf^eM<bc..rN', '79 Aberdeen New Village\nTin Wak\nHong Kong', '1947-04-21', 'Pria', '36452613', '66288971', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(17, 1, 1, 'Sylvia', 'Heaney', 'fschmitt@hotmail.com.hk', 'yzecFgPw:]]eQQV', 'Block 12, Hok Mo Tiu Estate\nChou Siu\nKowloon', '1973-05-17', 'Wanita', '68772872', '61981943', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(18, 1, 1, 'Garland', 'Schaden', 'jenkins.vida@gmail.com', 'Rl\\{l+7k', '30 Puk Yuet Long Tsuen\nNi Siu\nNew Territories', '1987-07-10', 'Pria', '68257319', '61732115', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(19, 1, 1, 'Marshall', 'Crona', 'von.ona@gmail.com', 'a<Dxc\\b', '67 Hot Chue Street South\nTin Chi\nHong Kong', '1985-10-22', 'Wanita', '58035883', '65648163', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(20, 1, 1, 'Jovani', 'Marvin', 'haley.leslie@franecki.info', 'x;Yq%=Dv>{i0HOe@CM', '74 Ching Ko Kwik Path North\nAberdeen\nKowloon', '1987-07-10', 'Pria', '28505835', '69232481', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(21, 1, 1, 'Dawson', 'Stark', 'leo.goyette@koepp.idv.hk', 'fy;0C.g[E:w', 'Block 73, Lam Yam Shat Estate\nNgau Fu\nHong Kong', '1970-12-20', 'Wanita', '32399298', '95430255', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(22, 1, 1, 'Carolina', 'Kuvalis', 'schroeder.arnaldo@terry.com', 'K;Yt7}>}|I', '73 Pin Ngan\nTseng Sheng\nHong Kong', '1987-07-10', 'Wanita', '36040696', '20810800', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(23, 1, 1, 'Julianne', 'Donnelly', 'yoberbrunner@yahoo.com.hk', 'dT\\hS8mKP', '71 Hot Nung Wai\nTuen Tiu Ei\nNew Territories', '1973-01-29', 'Wanita', '52124563', '59112360', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(24, 1, 1, 'Randi', 'Collier', 'marilie45@mckenzie.com.hk', 'amj4Ia}B0!x]@W,', 'Block 46, Nai Lip Estate\nYeng Nou\nNew Territories', '1920-09-26', 'Wanita', '69619954', '58481823', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(25, 1, 1, 'Korbin', 'West', 'natalie70@gmail.com', 'i<P5m@U~GQzA', 'Block 22, Hon Yit Estate\nKwai Wat Yak\nHong Kong', '1987-07-10', 'Wanita', '66532322', '58002996', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(26, 1, 1, 'Archibald', 'Ryan', 'wade.cassin@hackett.com', '20xY@jRzV!', '10 Sei Uk Heng\nStanley\nNew Territories', '1987-07-10', 'Pria', '68939110', '68911327', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(27, 1, 1, 'Judy', 'Rogahn', 'dare.luis@gmail.com', '&)%W#wc(n63{zRW``', '63 Shuk Shue Street\nSau Tap Shek\nKowloon', '1986-12-20', 'Wanita', '66826735', '22795516', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(28, 1, 1, 'Dylan', 'Stamm', 'fannie57@leffler.info', '\\p7:vvb_IeV#', '16 Chut Tou Hui Street\nUng Kuen\nNew Territories', '1933-11-10', 'Pria', '65909671', '30870205', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(29, 1, 1, 'Salma', 'Johns', 'cindy.franecki@howell.info', 'vOIm+cL\']-', 'Block 67, Shut Pat Court\nFu Fung\nHong Kong', '1923-08-01', 'Wanita', '30752350', '61390031', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(30, 1, 1, 'Zoie', 'Bogisich', 'gregg.walker@bode.org', '<fe-saB)z<^-bY1FP/', '89 Hang Tik South Street\nMou Kwo Tak\nNew Territories', '1987-07-10', 'Pria', '36154663', '64253646', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(31, 1, 1, 'Jon', 'Kozey', 'omer33@predovic.info', 'mzg`VvP', 'Block 56, Seung Fuk Yuen Court\nTsiu Chong Oi\nNew Territories', '1987-07-10', 'Pria', '34756865', '55014817', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(32, 1, 1, 'Kathryne', 'Gibson', 'wellington07@hotmail.com.hk', 'r/_B*@YRwgxc7', 'Block 88, Shei E Court\nHung Muk\nKowloon', '1981-03-18', 'Wanita', '94417293', '39429695', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(33, 1, 1, 'Llewellyn', 'Bergstrom', 'oda.hansen@yahoo.com', 'Y=9*#LI>^WT39#jB_', '42 Yip Lik Tam Street North\nOu Wok Yeung\nNew Territories', '1957-06-26', 'Wanita', '30764869', '52979299', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(34, 1, 1, 'Marcel', 'Lynch', 'macejkovic.jevon@yahoo.com.hk', '3,&d[lV\"9|yx9CYP', 'Block 28, Suk Ngak Court\nStanley\nNew Territories', '1954-02-22', 'Wanita', '60516252', '50050074', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(35, 1, 1, 'Thad', 'Thiel', 'carroll.jaquan@schmeler.net', ')imLfz=o$Hwd?&<', 'Block 25, Lak Nam Yung Estate\nFang Mau Shap\nHong Kong', '1987-07-10', 'Wanita', '33541043', '53429026', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(36, 1, 1, 'Emily', 'Gibson', 'qpredovic@hotmail.com.hk', '-Xmv45\"#*[7TpRYz9[*i', '65 Tsong Fe Sue Street\nVictoria\nKowloon', '1959-05-30', 'Wanita', '34372894', '55886429', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(37, 1, 1, 'Isabell', 'Koelpin', 'mcclure.oceane@gmail.com', 'VPGqWW', 'Block 51, Ok Suen Court\nTsit Pung Sok\nNew Territories', '1987-07-10', 'Pria', '99393830', '25491880', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(38, 1, 1, 'Matt', 'Harris', 'okilback@rolfson.com', 'Tg-bcB<m@@1L;^', '55 Pak Yung Nan Village\nTeuk Ngai\nHong Kong', '1987-07-10', 'Wanita', '94289135', '58783487', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(39, 1, 1, 'Kennedi', 'Simonis', 'abotsford@bergstrom.com.hk', 'Gr0vKry/N\'hg[-pi', '17 Cheuk Pam San Tsuen\nWang Him Nam\nHong Kong', '1986-06-19', 'Pria', '27232306', '95197989', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(40, 1, 1, 'Harmony', 'Dietrich', 'guy.klein@bins.biz', 'K-LO9;#&xfo-hcqem', 'Block 95, Yik Tsui Estate\nStanley\nKowloon', '1971-07-20', 'Wanita', '23992733', '20659867', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(41, 1, 1, 'Ephraim', 'Stanton', 'sage.skiles@gmail.com', 'r%Eh$~%YE', '94 Hek Tuen Pin\nLap Keu Ngam\nHong Kong', '1919-11-12', 'Pria', '96568598', '35755190', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(42, 1, 1, 'Monte', 'Wilderman', 'bogan.rod@hotmail.com', ';~a\"Podln)+Z>*O8', '60 Sik Yan New Village\nShoi Mik Ngang\nHong Kong', '1987-07-10', 'Wanita', '66320479', '32556422', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(43, 1, 1, 'Marianna', 'Hamill', 'okuneva.andres@bradtke.org.hk', '!EbWLTCJ:@~aXJ$q0', '31 Tok Yip New Village\nFa So\nHong Kong', '1943-03-06', 'Pria', '39866364', '58593130', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(44, 1, 1, 'Queenie', 'Kohler', 'isac93@hotmail.com.hk', '_>ZcQJA\'!0', 'Block 95, Pik Chang Lip Estate\nPong Ya\nHong Kong', '1968-02-14', 'Wanita', '98354481', '69171383', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(45, 1, 1, 'Solon', 'Wiza', 'feil.wilhelm@glover.com.hk', 'gt{GyH?K&', '56 Hung Tsun Avenue South\nSuen Nui\nHong Kong', '1932-12-10', 'Wanita', '36677870', '65251209', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(46, 1, 1, 'Candace', 'Ankunding', 'heather45@greenholt.com.hk', '~X\\u!Z]m0o*>', '55 Tonkin Path\nChui Yit\nNew Territories', '1955-12-13', 'Pria', '55562852', '92140896', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(47, 1, 1, 'Adell', 'Kessler', 'gail.dickens@welch.com.hk', 'c&l876Y\\f/p(mCBm4?', '30 Nap Road\nStanley\nKowloon', '1987-07-10', 'Wanita', '94141857', '39036325', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(48, 1, 1, 'Winona', 'Hane', 'dgrady@hotmail.com.hk', 'M!9hE<gyU?(j', '27 Kwan Kok Seung Wai\nFuk Shuen\nNew Territories', '1956-12-01', 'Pria', '94143230', '62418863', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(49, 1, 1, 'Roman', 'Stamm', 'clement10@hackett.idv.hk', 'e{;vY0mG]k', '58 Chui Hik\nChin E Tse\nNew Territories', '1940-11-26', 'Pria', '31675222', '21386483', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(50, 1, 1, 'Tanner', 'Fahey', 'berniece.hauck@kautzer.edu.hk', 'To4Q5kQc&12$w`;N0N', '80 Mui Tsuk Street\nSong Shau Ping\nHong Kong', '1949-09-18', 'Pria', '52372798', '95499184', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(51, 1, 1, 'Kari', 'Torp', 'jsmith@gmail.com', 'sveQ6/Y%56~SyY', '65 Tsai Sa\nTin Mak\nKowloon', '1931-02-10', 'Pria', '54475839', '92382428', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(52, 1, 1, 'Jalon', 'Powlowski', 'gust42@walker.biz', 'uN?PU8d', '62 Chip Ma\nCho To Kwok\nKowloon', '1982-12-28', 'Wanita', '97628492', '98134542', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(53, 1, 1, 'Rita', 'Bartell', 'ahalvorson@mcdermott.com.hk', 'A[3;*.\'9', '45 Leung Yung Te\nKei Kam\nNew Territories', '1987-07-10', 'Wanita', '20264285', '92933110', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(54, 1, 1, 'Coy', 'Greenholt', 'lubowitz.augustus@leffler.org', 'd^n$th@d|WWiZ4', '29 Ngat Tuen Street West\nKai Ping\nHong Kong', '1987-07-10', 'Pria', '91830586', '90668442', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(55, 1, 1, 'Vincent', 'Pollich', 'jerod.bartoletti@hotmail.com', 'mW)Q)6?*O9rK8`X(', 'Block 58, Pei Chat Estate\nOng O\nKowloon', '1987-07-10', 'Pria', '61344174', '68345212', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(56, 1, 1, 'Alek', 'Stokes', 'zdietrich@yahoo.com', 'yJ\\U-UlM5-L{OFbR%tp', '62 Shanghai Road West\nYun Man\nKowloon', '1962-02-02', 'Pria', '31824014', '99317787', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(57, 1, 1, 'Hosea', 'Feil', 'tbartoletti@hotmail.com', 'QBTcK\"l1?/bIOb/@%2=', 'Block 98, Sik Kot Nat Estate\nStanley\nHong Kong', '1980-05-02', 'Wanita', '20333223', '37375942', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(58, 1, 1, 'Novella', 'Wolf', 'andy53@yahoo.com', 'Sjo+91\'S6`|/K&s2?', '48 Ne Kin Nap Tsuen\nPan Tong Luen\nHong Kong', '1987-02-13', 'Pria', '94878684', '55965667', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(59, 1, 1, 'Keon', 'Becker', 'erna88@hotmail.com.hk', 'I@,k7C(I56m|edh>p,8', '81 Hing Shek South Road\nVictoria\nKowloon', '1928-10-13', 'Pria', '69032865', '24254729', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(60, 1, 1, 'Zula', 'Stehr', 'ziemann.drew@yahoo.com.hk', 's\\uS|=9u,VXNvVuO$`2', '59 Sham Keu Soi Road\nAt Sin\nKowloon', '1987-07-10', 'Wanita', '92238250', '53061747', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(61, 1, 1, 'Katelyn', 'Gislason', 'zosinski@yahoo.com', 'qi(=f4', '66 Hot Shan Shang Village\nSau Pik Shui\nKowloon', '1987-07-10', 'Wanita', '92894690', '52803050', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(62, 1, 1, 'Ezequiel', 'Mann', 'rippin.keely@hotmail.com', 'emxw\'W&|5(7', 'Block 58, Ying Nang Court\nSung Chip\nHong Kong', '1987-07-10', 'Wanita', '60566882', '56477176', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(63, 1, 1, 'Ellis', 'Schuppe', 'ssimonis@tromp.idv.hk', '=\"a_a/)%-o#__?X{a&1o', 'Block 80, Nei Kai Court\nTa Ham Lun\nHong Kong', '1987-07-10', 'Pria', '90386386', '52663384', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(64, 1, 1, 'Jaylin', 'Gutmann', 'jbartell@greenfelder.org.hk', '\\|ny\\cz/7OWzG=7', 'Block 63, Tim Shoi Chok Court\nHik Nat\nNew Territories', '1987-07-10', 'Pria', '65190775', '96662774', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(65, 1, 1, 'Kendall', 'Crooks', 'wilber61@hotmail.com', 'LkL=nq', 'Block 55, Ng Hip Kap Estate\nFut Pok Tin\nHong Kong', '1954-03-02', 'Wanita', '37456543', '32580905', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(66, 1, 1, 'Kelley', 'Oberbrunner', 'abeer@goodwin.net', 'Ef{#t`1G.a1xv8', '69 Noi Yai New Village\nHuet Ng Sai\nKowloon', '1987-07-10', 'Pria', '95210253', '35224375', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(67, 1, 1, 'Ciara', 'Mills', 'ybins@hermann.com', '|Q@<D=(k<', '90 Mik Kwat New Village\nHong Yuen\nNew Territories', '1972-06-09', 'Pria', '67943981', '68722350', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(68, 1, 1, 'Destin', 'Legros', 'zvon@gmail.com', 'Q1IM9&3.s', 'Block 83, Tsun Yue Tsap Court\nLim Wak Shiu\nHong Kong', '1957-11-15', 'Wanita', '56356145', '65618254', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(69, 1, 1, 'Kailee', 'Hegmann', 'breanna.koelpin@cruickshank.com.hk', 'u\\oAuvT7AI8iZ([\"', '14 Mau Shok Wai\nTsin Mo\nNew Territories', '1987-07-10', 'Pria', '59912579', '53611664', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(70, 1, 1, 'Kasey', 'Kertzmann', 'van.larkin@koss.com.hk', 'b%7])M', '86 Tai Che Ung Tsuen\nNe Neung Tin\nKowloon', '1987-07-10', 'Pria', '91921371', '93088542', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(71, 1, 1, 'Martina', 'Rath', 'earnestine97@jenkins.org', 'vzuc@75$gGF%x1unqD\"', '47 Sue Wut\nLung Tung\nHong Kong', '1987-07-10', 'Pria', '63079750', '31920487', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(72, 1, 1, 'Alan', 'Schoen', 'kuhlman.javier@strosin.com', 'cI(F4Jbmz&|}=', '49 Kei Che Ping San Tsuen\nTsue Tuk Tso\nNew Territories', '1987-07-10', 'Pria', '25523909', '28870375', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(73, 1, 1, 'Afton', 'Rippin', 'brekke.jedediah@sauer.edu.hk', 'Yn.=@x', '82 Fang Chak Tuet Road South\nNong Wo Nat\nNew Territories', '1979-03-25', 'Pria', '94162642', '66481534', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(74, 1, 1, 'Jayme', 'Pacocha', 'prohaska.amie@rodriguez.com.hk', '22ySa6Vzd@', 'Block 97, Tsuk Teng Leuk Court\nSiu Wai Ei\nNew Territories', '1987-07-10', 'Wanita', '91676612', '90942307', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(75, 1, 1, 'Maverick', 'Goldner', 'padams@kulas.com.hk', '|i-ZZUD7.', '63 Ok Niu Kek Wai\nHek Chui\nKowloon', '1987-07-10', 'Wanita', '30106585', '97298911', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(76, 1, 1, 'Darby', 'Dach', 'kristoffer.farrell@lebsack.com', 'C\"9sB7WAF|,ObF0r@}p6', '62 Tseng Shong Wat Square East\nTim Nam Lek\nNew Territories', '1938-10-26', 'Wanita', '67389849', '35845181', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(77, 1, 1, 'Noah', 'Ledner', 'blair.ortiz@predovic.org', 'T4kSID(TIb:I^Ua,TSY', '83 Ou Tsong North Avenue\nKwak Min\nKowloon', '1932-04-07', 'Wanita', '26806671', '27225236', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(78, 1, 1, 'Sandrine', 'Kulas', 'augustus.koepp@kirlin.com.hk', 'hg\\gzZY;/lirQ}C', 'Block 94, Ye Mut Shap Court\nChou Toi Ngong\nKowloon', '1962-07-31', 'Wanita', '98389407', '39949652', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(79, 1, 1, 'Leone', 'Dare', 'itzel.breitenberg@yahoo.com', ',iiI;3c)xC_gI', '40 Yuet Chat New Village\nVictoria\nHong Kong', '1987-07-10', 'Pria', '20558081', '93298192', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(80, 1, 1, 'Elian', 'Hintz', 'wolff.alison@bahringer.org.hk', '<Ju2HE(', '39 Ya Pan Mau Road\nAberdeen\nHong Kong', '1987-07-10', 'Pria', '60624861', '92006240', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(81, 1, 1, 'Tiana', 'Terry', 'tohara@gmail.com', 'zLQMSS9-M>r', '13 Fo Fui Nga San Tsuen\nStanley\nNew Territories', '1987-07-10', 'Pria', '54919825', '27941460', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(82, 1, 1, 'Meggie', 'Champlin', 'bechtelar.clare@hotmail.com.hk', 'Cyw8hWJ1tCLh6n#DsDA<', '72 Chun Luen Ma Circuit South\nFe Tong\nKowloon', '1940-10-11', 'Wanita', '31951059', '95506921', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(83, 1, 1, 'Bernita', 'Luettgen', 'fritsch.nona@hotmail.com', 'n:9CYN`L.nvHCj~', '15 Canton Street\nPei Mak Lan\nNew Territories', '1977-03-01', 'Pria', '63254805', '65112616', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(84, 1, 1, 'Stephan', 'Paucek', 'qtowne@hotmail.com.hk', 'v~=(yP/BNDLy&', '60 Wang Kwik Tsuen\nHip Chung\nNew Territories', '1987-07-10', 'Pria', '97573384', '95159424', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(85, 1, 1, 'Manley', 'Larson', 'adriana79@kuhn.com', '0ei:H)RXG', '99 Wut Kwok New Village\nShik Chok Pit\nNew Territories', '1966-02-19', 'Pria', '96045606', '57881377', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(86, 1, 1, 'King', 'Heidenreich', 'pbreitenberg@hotmail.com.hk', 'al!n]o)jM]{F,^', '46 Shung Huk Yi Lane\nTui Chi Tsiu\nHong Kong', '1987-07-10', 'Pria', '68533679', '53926112', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(87, 1, 1, 'Meaghan', 'Torphy', 'pkertzmann@yahoo.com', 'E6qJsd&$`~', '66 Nathan Road\nYung Ma\nNew Territories', '1960-11-19', 'Pria', '52023605', '26353510', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(88, 1, 1, 'Edmund', 'McDermott', 'tmiller@kuhlman.biz', '=tvS}h!c&>x+', '97 Nai Hap New Village\nTsan Fut\nNew Territories', '1924-12-04', 'Wanita', '62912713', '21734823', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(89, 1, 1, 'Darian', 'Gleason', 'chase.osinski@tremblay.net', '~BzrLV?sd,$CVP', '22 Nanking Road West\nYap Ngap\nHong Kong', '1959-05-24', 'Pria', '37951216', '36825291', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(90, 1, 1, 'Liliane', 'Ruecker', 'hhaag@heaney.net', '9s:05G._U+}W/>#', 'Block 75, Pa Tit Lam Estate\nSam Ngou Hin\nHong Kong', '1922-11-19', 'Wanita', '53606192', '38482308', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(91, 1, 1, 'Wilmer', 'Langworth', 'ezra.satterfield@ondricka.com.hk', 'z&RJ[#(', '63 Mo Mok Path\nAberdeen\nHong Kong', '1987-07-10', 'Pria', '38389342', '27152483', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(92, 1, 1, 'Aubree', 'Bode', 'ubaldo.haag@hotmail.com', 'Gtm<2`ShKPD7x', '92 She Yam Tsat Road\nMui Kuet Kwing\nNew Territories', '1978-08-29', 'Pria', '38470496', '59313118', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(93, 1, 1, 'Quincy', 'Predovic', 'schultz.cecilia@hotmail.com', 'Nq{_@.=R_lF$A*Q', 'Block 92, Hung Shoi Court\nNa Sam Tso\nKowloon', '1963-07-21', 'Pria', '26807437', '38051471', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(94, 1, 1, 'Cecilia', 'Bernier', 'schamberger.mya@morar.com', '^oN?K,', '76 Ung Niu Kai Avenue North\nOi Shan\nKowloon', '1987-07-10', 'Wanita', '33925398', '20748979', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(95, 1, 1, 'Madeline', 'Schultz', 'cgerhold@hotmail.com.hk', 'N#C._P|1dl|A}[qv.a;1', '48 Hip Puk Path\nTang Mang Ngak\nKowloon', '1987-07-10', 'Wanita', '61482055', '62519931', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(96, 1, 1, 'Dewayne', 'Bartoletti', 'auer.harmon@hotmail.com', 'MhCRyO<9(k', '42 Wa Tsit Wang\nAberdeen\nHong Kong', '1953-05-14', 'Wanita', '20449262', '63713522', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(97, 1, 1, 'Jordane', 'Marks', 'bergnaum.maximillian@gerhold.org.hk', '\"<VC!KUI}S~[', '78 Yui Sun Lane West\nSok Nap\nKowloon', '1987-07-10', 'Wanita', '93376080', '95193155', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(98, 1, 1, 'Aric', 'Nolan', 'wilber28@hotmail.com.hk', '\"ch@h+?B\"[', '72 King\'s Road South\nAberdeen\nNew Territories', '1956-06-12', 'Pria', '58691182', '98834734', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(99, 1, 1, 'Alvis', 'Dare', 'dankunding@homenick.com', ',v%L6!-k:', '63 Huk Sam Mou Path\nShek Wik Shun\nHong Kong', '1961-09-21', 'Wanita', '67548294', '21410267', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(100, 1, 1, 'Baylee', 'Purdy', 'meta91@satterfield.com.hk', 'y{jmv\'h5mzbBfB', '94 Po Ak Circuit\nKiu Wong\nNew Territories', '1986-11-29', 'Pria', '65719295', '55101166', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(101, 1, 1, 'Tara', 'Powlowski', 'wbernhard@tromp.net', 'QPE$<Kq~', '93 Shanghai Street\nMai Lip\nKowloon', '1987-07-10', 'Pria', '51123828', '67781072', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(102, 1, 1, 'Mason', 'Beer', 'dhill@gmail.com', '\")|U%>(9MWZm/JJy9K_2', '12 Shanghai Avenue\nKwo Nuk\nHong Kong', '1971-06-09', 'Wanita', '94186561', '97468444', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(103, 1, 1, 'Cathy', 'Bergnaum', 'alockman@braun.biz', 'p&;cc#KymB#Y!9m2(iH|', '88 Tseung Road\nAberdeen\nNew Territories', '1987-07-10', 'Wanita', '24022856', '50273389', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(104, 1, 1, 'Nash', 'Grady', 'atowne@gmail.com', 'OdXCka7[cN}', 'Block 62, Kwo Ngai Estate\nChi Hou\nNew Territories', '1987-07-10', 'Wanita', '99442554', '58991276', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(105, 1, 1, 'Ebba', 'Satterfield', 'zkohler@gibson.com', 'dbH)1V(=dC', '29 Peking Street West\nHek Kwo\nHong Kong', '1967-06-06', 'Pria', '25875326', '39394383', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(106, 1, 1, 'Lorenzo', 'Nicolas', 'joberbrunner@yahoo.com', 'E?PZ73eEtU=<', '26 At Fuk Nei Tsuen\nNgam Shung Fau\nKowloon', '1932-03-11', 'Wanita', '24264235', '64220234', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(107, 1, 1, 'Nicolette', 'Hills', 'tremayne60@hotmail.com.hk', '{~9QPQj\'ml4Q', 'Block 52, Chiu Yung Fai Court\nAt Tsui\nKowloon', '1987-07-10', 'Pria', '96539385', '90502562', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(108, 1, 1, 'Lilly', 'Bahringer', 'ylang@wiza.com.hk', 'Zj^S@Lb!AU]p{17W^', 'Block 68, Na Shok Kui Estate\nHui Kun\nHong Kong', '1977-07-29', 'Pria', '96445242', '34483109', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(109, 1, 1, 'Giovanni', 'Flatley', 'igutkowski@gmail.com', 'F]/c598E0PDEN4`JX\'', '47 Koi Shak New Village\nHot Ya\nHong Kong', '1947-08-01', 'Pria', '28545992', '28152109', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(110, 1, 1, 'Theron', 'Williamson', 'guy.kessler@hotmail.com', '%9|$s\'6p', 'Block 96, Ship Tsit Court\nStanley\nNew Territories', '1945-02-20', 'Wanita', '68714412', '52565482', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(111, 1, 1, 'Garrett', 'Stokes', 'heller.drake@gmail.com', 'QZ5i%:KJ', '10 Sue Sung Tsa Path\nWo Pok\nNew Territories', '1955-04-24', 'Wanita', '22994348', '20992921', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(112, 1, 1, 'Willie', 'Bahringer', 'keebler.princess@beatty.biz', '5h/fmo\"%<CTO=O', '98 Pui Yai Kwai\nChe Tsung\nKowloon', '1983-06-03', 'Wanita', '28261198', '52706504', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(113, 1, 1, 'Durward', 'Kiehn', 'itzel03@keebler.com.hk', ']1YEX`e|L~Ic]xb-1i', 'Block 45, Tan Lan Estate\nNou Mi\nNew Territories', '1942-05-08', 'Wanita', '51780429', '59124345', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(114, 1, 1, 'Verda', 'Fahey', 'nicolas.pink@hotmail.com.hk', 'PhfF@Y<H', 'Block 22, Huet Tam Sat Court\nCham Kun\nHong Kong', '1987-07-10', 'Wanita', '22748271', '91901090', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(115, 1, 1, 'Weston', 'Abshire', 'bryon32@bergstrom.com', 'o$RP<L[X6$iIF\'ff)t', '52 Ke Pit Shung San Tsuen\nNou Fe Him\nNew Territories', '1935-02-14', 'Pria', '24581622', '26050187', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(116, 1, 1, 'Kaley', 'Mante', 'kuhlman.shane@macejkovic.idv.hk', 'MT|zq8M>fbv\"s1?', '89 Nim Hiu Village\nOu Mau Kwing\nNew Territories', '1968-07-23', 'Pria', '28517271', '32726191', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(117, 1, 1, 'Cory', 'Murphy', 'ekuvalis@heidenreich.com.hk', 'T6W>z.*', 'Block 48, Wak Soi Estate\nVictoria\nHong Kong', '1934-03-16', 'Wanita', '23781246', '57628621', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(118, 1, 1, 'Turner', 'Spinka', 'gladys.mann@hotmail.com.hk', 'U\'i1gcO}DN\"\'dz+9uJb', 'Block 86, Suen Tseung Ying Estate\nLip Ming Song\nHong Kong', '1987-07-10', 'Wanita', '58459633', '31420426', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(119, 1, 1, 'Aron', 'Purdy', 'eabernathy@yahoo.com.hk', 'ByQU?!shI\\6Gy%~G', '67 Tek Sik Tsuen\nKeuk Sak Kwok\nKowloon', '1987-07-10', 'Pria', '31207813', '66651212', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(120, 1, 1, 'Raymundo', 'Ferry', 'ncartwright@gmail.com', 'P}+MFTHxJ$', 'Block 81, Ship Tik Estate\nNgau Pe Suk\nHong Kong', '1987-07-10', 'Pria', '27066543', '91021624', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(121, 1, 1, 'Cielo', 'Emmerich', 'josh.murray@feest.biz', 'BMvuQN&({2EJg4<T9/>=', '43 Yeuk Luen Tik Path\nHot Tsam\nNew Territories', '1980-01-06', 'Wanita', '62975549', '96079214', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(122, 1, 1, 'Eunice', 'Koch', 'miracle.murray@hotmail.com', '#K59p}#`mHOCv', '65 Yeuk Shing Cheuk\nNat Lik Wu\nNew Territories', '1987-07-10', 'Pria', '33229337', '54529971', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(123, 1, 1, 'Krystina', 'McDermott', 'bettie14@hotmail.com.hk', '3QxLI,~h5^eJPF3L*W`', '91 So Po Yau Street\nAm Keung\nHong Kong', '1987-07-10', 'Wanita', '24054530', '60848347', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(124, 1, 3, 'Abby', 'Gibson', 'ryder24@hotmail.com.hkx', ',~@\"FvIKCpX', '40 Kut LipSam ', '1953-05-19', 'Pria', '94617345', '94441432', '0000-00-00', '2019-06-22 08:00:59', '2019-06-29 16:18:06', 'interview'),
(125, 1, 1, 'Litzy', 'Altenwerth', 'nklein@gmail.com', '^EMis:~O:K', '64 Sip Au New Village\nHui Yai Tsin\nKowloon', '1987-07-10', 'Wanita', '96670444', '25196070', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(126, 1, 1, 'Brett', 'Dare', 'pollich.maureen@hotmail.com', 'ch6#Nd', '77 Song Mong Street\nChui Nip\nHong Kong', '1943-07-03', 'Pria', '53906273', '26332232', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(127, 1, 1, 'Frank', 'Lockman', 'morgan52@cremin.com.hk', '\"^qET=)o', '17 Kam Chuk Ku Tsuen\nTak Chui Ho\nNew Territories', '1965-12-26', 'Pria', '35440446', '26319479', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(128, 1, 1, 'Isac', 'Kulas', 'raphaelle.block@gmail.com', 'j,-*mg#kLeI_', '42 Wan Tsai Wai\nTseng Hou Lang\nHong Kong', '1934-12-02', 'Pria', '91603226', '51026194', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(129, 1, 1, 'Monte', 'Green', 'yhermann@considine.idv.hk', '2i}U\\w82A[5Q', 'Block 21, Au Shou Tong Court\nYuk Tseung\nNew Territories', '1928-07-06', 'Wanita', '33778559', '99724693', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(130, 1, 1, 'Omer', 'Cronin', 'rutherford.dawn@yahoo.com.hk', 't+z\\e(|${#*7_I3\\BQ6g', '14 Lok Me New Village\nCheuk Nin\nNew Territories', '1955-03-08', 'Wanita', '22049144', '67863123', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(131, 1, 1, 'Addie', 'Schumm', 'bednar.julius@yahoo.com', 'ks\\|pG+b[', '16 Wa Pung Tsa Village\nSip Pau\nKowloon', '1987-07-10', 'Wanita', '56050916', '69386193', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(132, 1, 1, 'Kurtis', 'Pollich', 'herman07@abernathy.org', 'SlL-7KAvO\"w{', '72 Nok Nuk Shoi\nSuet Oi\nNew Territories', '1987-07-10', 'Pria', '65251950', '21631504', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(133, 1, 1, 'Amely', 'Reynolds', 'kkuphal@barton.com.hk', '8CWcON', '99 Liu Luen Road\nPiu Kin\nHong Kong', '1987-07-10', 'Pria', '99332495', '98028518', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(134, 1, 1, 'Ransom', 'Wilderman', 'janie.bahringer@jakubowski.com', 'G2Cnb{w&kRfjhi2', 'Block 60, Tsau Yau Court\nUng Kin Cheung\nKowloon', '1987-07-10', 'Wanita', '26761111', '90389985', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(135, 1, 1, 'Mellie', 'Wintheiser', 'barrows.cory@hotmail.com', '#K/P2m?.I\"', '36 Chung Chak Wai\nAberdeen\nNew Territories', '1987-07-10', 'Wanita', '96750198', '60436159', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(136, 1, 1, 'Sanford', 'Roberts', 'jaiden.berge@yahoo.com', '`h;PsOYJV8>|::', '18 La Am Wai\nMai Hek\nKowloon', '1987-07-10', 'Pria', '61380423', '61644589', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(137, 1, 1, 'Richard', 'Towne', 'eturcotte@hotmail.com.hk', '1bnu!T]aR!Csni{Er4', '24 Ping Shing Tsiu Avenue\nAberdeen\nKowloon', '1987-07-10', 'Wanita', '39683445', '32663695', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(138, 1, 1, 'Thurman', 'Nienow', 'selmer08@hotmail.com', 'dzig0$^P.>]', 'Block 51, Hon Him At Estate\nKong Ung Shei\nHong Kong', '1950-02-24', 'Wanita', '37352525', '34073556', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(139, 1, 1, 'Kara', 'Emard', 'treva61@mueller.com', '[gw=e7q0\\4A', '96 Salisbury Road\nNim Tseung Shai\nHong Kong', '1987-07-10', 'Pria', '96712889', '23905077', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(140, 1, 1, 'Maximo', 'Balistreri', 'okeefe.daniela@corkery.net', 'so%1yC4ycD/ZC%x&=z2', '61 Pe Fu Street\nSam Tai\nNew Territories', '1982-11-15', 'Pria', '31093907', '32746933', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(141, 1, 1, 'Julia', 'Lowe', 'saige60@greenfelder.com.hk', ']MBmvYx', '16 Ham Tsek\nChuet Huet Ung\nNew Territories', '1967-11-13', 'Pria', '37885481', '34231701', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(142, 1, 1, 'Marjorie', 'Yundt', 'yhane@gmail.com', ']v7t:t!`i4K', '98 Ho La West Street\nLuet Tsung\nHong Kong', '1987-07-10', 'Wanita', '63320918', '31682063', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(143, 1, 1, 'Brain', 'Lang', 'rspencer@hotmail.com.hk', '&3]M8=N9zd<Z0', '48 Chai Nik Street\nWang Kat\nNew Territories', '1941-12-05', 'Wanita', '34324002', '96568177', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(144, 1, 1, 'Dianna', 'Lemke', 'hillary.walsh@pollich.com.hk', '$`Y[>Fc{Du]o<TV)`<V', '55 Sak Shap Shun Street\nLun Chong\nKowloon', '1969-01-22', 'Wanita', '53240337', '34160446', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(145, 1, 1, 'Aubrey', 'Romaguera', 'glover.kobe@huels.com.hk', '4|&g^#_4\"g;j0NhR', '44 Ngau Shang O Wai\nStanley\nHong Kong', '1987-07-10', 'Wanita', '65370715', '61491788', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(146, 1, 1, 'Kaylie', 'Yost', 'bconroy@koss.net', 'LBu\":R7405)bu+v3Q', 'Block 36, Koi Yeng Kam Court\nTong Pau\nKowloon', '1968-01-30', 'Wanita', '20979152', '92327823', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(147, 1, 1, 'Laney', 'Mitchell', 'hickle.heidi@lockman.com', '5%7FfBZ+?&B=Dtw@,e', '18 Lou Nui Lau North Road\nFe Sang Hiu\nHong Kong', '1987-01-16', 'Pria', '69927377', '27366870', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(148, 1, 1, 'London', 'Deckow', 'welch.enola@yahoo.com', '6qQQO,=?5J[', 'Block 57, Tsuet Mui Estate\nOn Sai\nNew Territories', '1925-02-19', 'Wanita', '51657302', '50408657', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(149, 1, 1, 'Alysson', 'Stroman', 'clotilde.rath@yahoo.com', 'o8=~2%E^IS#', '11 Soi Shung Choi Street East\nKim So\nHong Kong', '1948-05-28', 'Pria', '95091621', '69008613', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(150, 1, 1, 'Samantha', 'Gorczany', 'kacie.morissette@gmail.com', '/GX+B,Z94{0:ct', '56 Fan Road\nNam Luk\nKowloon', '1987-07-10', 'Wanita', '30681995', '30832124', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(151, 1, 1, 'Hyman', 'Stokes', 'oren49@yahoo.com', 'mY1{p<\"2n', 'Block 94, Tsuet Kang Lak Estate\nSai Sam Fong\nKowloon', '1951-12-27', 'Wanita', '67618507', '61385931', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(152, 1, 1, 'Zane', 'Predovic', 'skiles.bud@cruickshank.edu.hk', 'NHm%z.)', '92 Poi Yuet Ting Road South\nSong Nip Sou\nNew Territories', '1925-12-10', 'Wanita', '91758304', '92247167', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(153, 1, 1, 'Prudence', 'Hills', 'kiehn.skye@hyatt.biz', 'Cj$U?;2^-*l!^X^O', '98 Yat Cha Ngong Square\nAberdeen\nHong Kong', '1974-02-17', 'Pria', '37339432', '23700468', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(154, 1, 1, 'Devon', 'Cassin', 'mtreutel@hotmail.com.hk', ',3zgJXn', 'Block 18, Shung Pat Kai Court\nLou Fung Kwong\nNew Territories', '1987-07-10', 'Pria', '99750818', '64627522', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(155, 1, 1, 'Rahsaan', 'Volkman', 'white.anita@hotmail.com', 'b1wE.5s21q&&', '24 Keu Huen\nMak Kut\nKowloon', '1987-07-10', 'Wanita', '29051441', '36866273', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(156, 1, 1, 'Vickie', 'Ward', 'bette.cronin@yahoo.com', 'X=}CEZ9To$5', 'Block 35, Nuk Yip Ching Estate\nStanley\nNew Territories', '1975-09-16', 'Pria', '65990353', '52615562', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(157, 1, 1, 'Gloria', 'Ondricka', 'dolores44@hickle.biz', '>%%C_v', '49 Nanking Road\nNip Fut Liu\nKowloon', '1987-07-10', 'Pria', '53021148', '64899611', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(158, 1, 1, 'Amani', 'Zulauf', 'king71@hotmail.com.hk', '#/xW+)#\"40`=}A', 'Block 23, Tsiu Mik Estate\nShin O\nHong Kong', '1942-07-26', 'Wanita', '23942442', '95896448', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(159, 1, 1, 'Arthur', 'Thiel', 'alessandro20@pfeffer.com.hk', '\'O6G;`gcbwV', '40 Sik Na Tut Avenue South\nKot Kik Tuk\nNew Territories', '1954-04-30', 'Wanita', '93859125', '53898047', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(160, 1, 1, 'Christian', 'Miller', 'gcassin@yahoo.com.hk', '(M#fqKE7f+2;_PM?', '40 Loi Shong New Village\nHai Koi\nNew Territories', '1933-05-12', 'Wanita', '26136649', '59396589', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(161, 1, 1, 'Jaida', 'Kilback', 'zakary.ondricka@hotmail.com', 'NdAS]>DuTtw', '88 Choi Shat\nVictoria\nKowloon', '1987-07-10', 'Wanita', '51441610', '36763997', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(162, 1, 1, 'Jonas', 'McLaughlin', 'clinton.smitham@yahoo.com.hk', 'K%tVhgv)', '59 Kip Tsau Avenue North\nShim Oi\nHong Kong', '1950-01-15', 'Pria', '31347892', '25430697', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(163, 1, 1, 'Harry', 'Hackett', 'colleen.mueller@hotmail.com', 'K<ncN\\XTyc#Y', 'Block 30, Mou Tik Estate\nChim Ei Nam\nNew Territories', '1978-07-01', 'Pria', '92034923', '31946111', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(164, 1, 1, 'Gillian', 'Cassin', 'nsawayn@gmail.com', ',tmV`W', 'Block 96, Tak Yik Estate\nTek Nip\nHong Kong', '1923-09-21', 'Wanita', '38596277', '90498066', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(165, 1, 1, 'Maximillia', 'Mills', 'maxie05@yahoo.com', 'sLNCv1sX\\$X{1V', '99 Lut Sak Ngai Avenue\nAk Nin\nHong Kong', '1936-12-24', 'Wanita', '30244336', '60035830', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(166, 1, 1, 'Tressa', 'Abshire', 'effertz.terrence@yahoo.com', 'Nz|h,sV<]29Sc&/w+#k', 'Block 44, Tap Nung Wak Estate\nOu Sha\nKowloon', '1987-07-10', 'Wanita', '97158119', '22020459', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(167, 1, 1, 'Thomas', 'Jakubowski', 'alisa.barton@yahoo.com', '=W\'CgF\\uH$iVFO,mkWYd', '11 Cho E Tut\nYip Fuk Kek\nNew Territories', '1925-10-13', 'Wanita', '53468464', '29900184', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(168, 1, 1, 'Rosemary', 'Christiansen', 'conroy.elenora@hotmail.com', '7DVOU).}', '50 Lin Lei Village\nHuk Huk\nHong Kong', '1987-07-10', 'Wanita', '39415056', '61933496', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(169, 1, 1, 'Nina', 'Parisian', 'isabell.ferry@yahoo.com.hk', 'ZanYb<B={CGg\"CkU', '39 Yin Lik Tsing Circuit\nYing Heung Mo\nHong Kong', '1987-07-10', 'Wanita', '29695854', '96066705', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(170, 1, 1, 'Elisabeth', 'Haley', 'orn.kali@yahoo.com', 'Cq/wg%/', '93 Cham Lak Avenue\nStanley\nNew Territories', '1987-07-10', 'Pria', '38244296', '61062242', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(171, 1, 1, 'Dusty', 'Metz', 'legros.michele@yahoo.com', '56y\'rzN\'+{T', '25 Siu Circuit\nHim Ap Kon\nHong Kong', '1987-07-10', 'Pria', '25040605', '56365728', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(172, 1, 1, 'Bertha', 'Fritsch', 'vena38@yahoo.com', 'd<$)lt%dZ8<yBE{', '93 Ap Hin\nLut Seuk\nNew Territories', '1921-01-29', 'Wanita', '61983217', '21473058', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(173, 1, 1, 'Braulio', 'Connelly', 'jody07@friesen.edu.hk', 'cbeY*S\\3N', '94 Pong Au Tsim North Path\nFo Toi Pang\nKowloon', '1932-08-10', 'Wanita', '30981533', '59096383', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(174, 1, 1, 'Cara', 'Witting', 'amalia01@yahoo.com.hk', 'kBg&poEk*<Jbjg`I', 'Block 33, Fun Tsap Kap Estate\nMut Hou\nHong Kong', '1974-11-16', 'Wanita', '34624844', '20163376', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(175, 1, 1, 'Elmo', 'Williamson', 'kuhic.karina@hotmail.com.hk', '(nR|7R7\'L94(Y%', '86 Nan Ngong Sap Square\nYeng Niu Ha\nKowloon', '1987-07-10', 'Wanita', '95480789', '90896951', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(176, 1, 1, 'Frederik', 'Feeney', 'murray.cortez@hotmail.com', 'e`RzOrl8S/\\TX(kd20', 'Block 50, Fang So Estate\nHiu Sai\nHong Kong', '1987-07-10', 'Wanita', '91098735', '25430030', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(177, 1, 1, 'Nella', 'Bayer', 'effertz.anissa@hotmail.com', 'e#ua9ihu-,U^!', '95 Shuen Yi Tsau San Tsuen\nVictoria\nHong Kong', '1987-07-10', 'Wanita', '57196396', '37074893', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(178, 1, 1, 'Vella', 'Wiegand', 'hmclaughlin@hoppe.org', 'J(&t{Z<v^', '49 Yeuk Kim Ngou\nPong Tsuen\nHong Kong', '1979-03-05', 'Wanita', '90525938', '63731739', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(179, 1, 1, 'Leta', 'Lowe', 'kuhlman.bethel@reichert.edu.hk', '~mCR,uht', '16 Stanley New Village\nLong Yan Tsau\nNew Territories', '1924-04-30', 'Pria', '51293362', '28053848', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(180, 1, 1, 'Lori', 'Koch', 'donna26@hotmail.com', '&5,o}|9SgGYD)(2Bu:2', '19 Kok Man Lane\nPiu Fai\nHong Kong', '1921-09-01', 'Pria', '58962988', '57208258', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(181, 1, 1, 'Furman', 'Schmeler', 'beier.angie@yahoo.com.hk', 'E>L!qE~', '60 Hek Mong Fo Wai\nPut Tsat\nKowloon', '1948-01-13', 'Pria', '96825548', '93976714', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(182, 1, 1, 'Freeman', 'McGlynn', 'bechtelar.annabel@hotmail.com', 'lcC0\\.rrr/P^KO<&d{', '67 Poi Sa Chok New Village\nSeng Sheuk\nNew Territories', '1943-03-29', 'Pria', '22134146', '92754194', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(183, 1, 1, 'Brooke', 'Spinka', 'lera.kris@eichmann.com', '?3_#gXX`\'>\"eUM?wCsy', '18 Chuen Cheng Village\nYau Tak Fat\nNew Territories', '1927-11-11', 'Wanita', '25260948', '21245543', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(184, 1, 1, 'Alberto', 'Raynor', 'karianne08@sauer.com.hk', '@Y7WMh&n|', 'Block 18, Sat Ei Sip Estate\nNg Choi Wik\nHong Kong', '1987-07-10', 'Wanita', '65182273', '20842393', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(185, 1, 1, 'Jaunita', 'Conroy', 'bruen.philip@christiansen.com', '>>=!x5|,FdW=>eq9\'~;', '86 Kang Tit East Avenue\nNgan Luen\nNew Territories', '1920-05-10', 'Pria', '51828453', '53191720', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(186, 1, 1, 'Ben', 'Bayer', 'mills.maya@hotmail.com.hk', '*].*d0', 'Block 23, Tsz Po La Court\nSan Heu\nHong Kong', '1943-08-05', 'Pria', '62613688', '63843523', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(187, 1, 1, 'Walter', 'Mertz', 'glen21@langworth.com', '1Yxb(`X\",@XaA@qM$b,{', '79 Shau Kut Wok New Village\nKek Yan\nKowloon', '1987-07-10', 'Pria', '91506982', '93027764', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(188, 1, 1, 'Arvilla', 'Kilback', 'fhills@conn.com', '<S;]t*zO2>|aV7sf', '96 Ham Kuet Tsuen Street East\nStanley\nHong Kong', '1980-04-24', 'Wanita', '54843122', '38357976', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(189, 1, 1, 'Monroe', 'O\'Keefe', 'schowalter.kade@hotmail.com.hk', 'aoX9+#1>S)>]x', '79 Tse Kiu Fan Road\nTan Chung\nNew Territories', '1937-07-02', 'Wanita', '32397155', '62646610', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(190, 1, 1, 'Barney', 'Swaniawski', 'lehner.bradford@gmail.com', 'D3iE1fg:?nYl=)#sp+', '66 Tsam Ta\nYap Tuk Chak\nKowloon', '1987-07-10', 'Pria', '94920473', '24722350', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(191, 1, 1, 'Thora', 'Little', 'chadd53@yahoo.com', 'DMX?gf0JM6}4\"w', '65 Tam Fang Avenue\nFui Ang\nKowloon', '1958-03-28', 'Wanita', '28294839', '94261213', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(192, 1, 1, 'Augustus', 'Hackett', 'porter.price@kuphal.edu.hk', ')6VN`BXIg\\ESl7mi', '95 Hui Nai North Path\nKuen Lim Shai\nHong Kong', '1948-10-31', 'Pria', '28804444', '61460031', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(193, 1, 1, 'Mustafa', 'Bednar', 'zerdman@hotmail.com', ']si}yN>x(dL^L;);', '16 Ei Ko Village\nHit Lap\nHong Kong', '1978-10-27', 'Wanita', '52368318', '53962662', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(194, 1, 1, 'Pablo', 'Cruickshank', 'rmurray@hotmail.com.hk', '54:p,$oe!@\\-9~6ka', 'Block 74, Shap Lap Shang Court\nLou Sui At\nNew Territories', '1987-07-10', 'Wanita', '67934341', '51523091', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(195, 1, 1, 'Shirley', 'Bernier', 'iva04@yahoo.com.hk', 'nHR*[E4e_d(6', 'Block 10, Yeung Wat Meng Estate\nTsue Yi\nKowloon', '1987-07-10', 'Pria', '25364624', '67211647', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(196, 1, 1, 'Ruth', 'Abernathy', 'corwin.ena@sawayn.edu.hk', 'Uyr\'(JM8', '87 Sun Neung Tsok Tsuen\nFai Ha Lai\nNew Territories', '1987-07-10', 'Pria', '61404899', '68416354', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'karyawan aktif'),
(197, 1, 1, 'Jacky', 'Hyatt', 'vbecker@batz.com.hk', '67xUjq-x?l,O#I/<Wc', 'Block 66, Ship Pong Estate\nCham Neung\nKowloon', '1973-09-21', 'Pria', '98542530', '90592625', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(198, 1, 1, 'Bernard', 'Rau', 'trudie.glover@ward.com.hk', 'y\'h3>{=>28rre', '63 Yeuk Fun\nKin Nui\nKowloon', '1987-07-10', 'Wanita', '66303391', '65617380', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(199, 1, 1, 'Ashley', 'Bahringer', 'aryan@dare.net', '@@<TJ\\', '11 Tang Loi Lane\nSuet Leung\nKowloon', '1986-04-05', 'Wanita', '54713433', '95907364', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'interview'),
(200, 1, 1, 'Lauretta', 'Rogahn', 'breichert@yahoo.com.hk', '~FRkgo`0', '63 Kwong Ngoi Ho Village\nTsung Tei\nKowloon', '1955-02-11', 'Wanita', '28243860', '27824781', '0000-00-00', '2019-06-22 08:00:59', '2019-06-22 08:00:59', 'karyawan aktif'),
(203, 2, 2, 'Adam', 'Alfiansyah', 'www@wegodev.com', '$2y$10$SXa2eUzSF8hglqC6Z41eJO4qH9S8CNMKCmPmal1GO1yf0GooNnZbG', 'ooo', '1990-06-17', 'Pria', '9999', '88888', '0000-00-00', '2019-06-22 14:45:36', '2019-06-30 07:06:45', 'karyawan aktif');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `tipe` varchar(100) NOT NULL,
  `nama_kategori` varchar(300) NOT NULL,
  `keterangan` text NOT NULL,
  `dibuat` datetime NOT NULL,
  `diganti` datetime NOT NULL,
  `status` enum('aktif','tidak aktif','hapus') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `tipe`, `nama_kategori`, `keterangan`, `dibuat`, `diganti`, `status`) VALUES
(1, 'gjt', 'Gaji', '', '2019-06-29 16:58:52', '2019-06-29 17:11:56', 'aktif'),
(2, 'gjt', 'Uang Makan', 'Uang makan karyawan', '2019-06-29 17:12:29', '2019-06-29 17:12:29', 'aktif'),
(3, 'gjt', 'THR', 'THR untuk karyawan', '2019-06-29 17:13:02', '2019-06-29 17:13:02', 'aktif'),
(4, 'gjt', 'Uang Bensin', 'Uang bensin karyawan yang dijalan seperti kurir', '2019-06-29 17:13:55', '2019-06-29 17:13:55', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `posisi`
--

CREATE TABLE `posisi` (
  `id` int(10) NOT NULL,
  `nama_posisi` varchar(150) NOT NULL,
  `dibuat` date NOT NULL,
  `diganti` date NOT NULL,
  `status` enum('aktif','tidak aktif','hapus') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posisi`
--

INSERT INTO `posisi` (`id`, `nama_posisi`, `dibuat`, `diganti`, `status`) VALUES
(1, 'Belum di ketahui', '2019-06-21', '2019-06-29', 'aktif'),
(2, 'Staff', '2019-06-22', '2019-06-22', 'aktif'),
(3, 'Manager', '2019-06-22', '2019-06-22', 'aktif'),
(4, 'Supervisor', '2019-06-28', '2019-06-28', 'hapus'),
(5, 'Direktur', '2019-06-29', '2019-06-30', 'aktif'),
(6, 'CEO', '2019-06-30', '2019-06-30', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tunjangan`
--

CREATE TABLE `tunjangan` (
  `id` int(10) NOT NULL,
  `id_karyawan` int(10) NOT NULL,
  `id_kategori` int(10) NOT NULL,
  `nominal` int(10) NOT NULL,
  `status` enum('aktif','tidak aktif','hapus') NOT NULL,
  `dibuat` datetime NOT NULL,
  `diganti` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tunjangan`
--

INSERT INTO `tunjangan` (`id`, `id_karyawan`, `id_kategori`, `nominal`, `status`, `dibuat`, `diganti`) VALUES
(1, 203, 1, 1600000, 'aktif', '2019-06-30 05:30:17', '2019-06-30 05:30:17'),
(2, 9, 1, 1300000, 'tidak aktif', '2019-06-30 05:32:22', '2019-06-30 05:32:22'),
(3, 203, 3, 1500000, 'aktif', '2019-06-30 05:33:01', '2019-06-30 05:33:01'),
(4, 9, 3, 3500000, 'aktif', '2019-06-30 06:52:48', '2019-06-30 06:52:48'),
(5, 203, 2, 20000, 'aktif', '2019-06-30 06:31:42', '2019-06-30 06:31:42'),
(6, 37, 1, 90000, 'tidak aktif', '2019-06-30 06:56:16', '2019-06-30 06:56:16'),
(7, 128, 2, 20000, 'aktif', '2019-06-30 11:01:04', '2019-06-30 11:01:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posisi`
--
ALTER TABLE `posisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tunjangan`
--
ALTER TABLE `tunjangan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `departemen`
--
ALTER TABLE `departemen`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posisi`
--
ALTER TABLE `posisi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tunjangan`
--
ALTER TABLE `tunjangan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"pemesanan bus\",\"table\":\"user\"},{\"db\":\"pemesanan bus\",\"table\":\"transaksi\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-05-31 14:32:54', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"id\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `php_crud`
--
CREATE DATABASE IF NOT EXISTS `php_crud` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `php_crud`;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `nim` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telepon` varchar(25) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nim`, `email`, `telepon`, `alamat`) VALUES
(0, 'Al- Inayya', '2009106127', 'alinayya123@gmail.com', '082292525598', 'Jl. Pramuka'),
(0, 'Al- Inayya', '2009106127', 'alinayya123@gmail.com', '082292525598', 'Jl. Pramuka'),
(0, 'nay', '384562', '', '', ''),
(0, 'nay', '123456', 'nay123@gamail.com', '356778775', 'Jl. Pramuka'),
(0, 'nay', '123456', 'nay123@gamail.com', '356778775', 'Jl. Pramuka'),
(0, 'nayya', '3346457', 'nay345@gamil.com', '76488677', 'Jl. Pramuka');
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `travel`
--
CREATE DATABASE IF NOT EXISTS `travel` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `travel`;

-- --------------------------------------------------------

--
-- Table structure for table `blacklist`
--

CREATE TABLE `blacklist` (
  `Id_Blacklist` int(11) NOT NULL,
  `No_kendaraan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blacklist`
--

INSERT INTO `blacklist` (`Id_Blacklist`, `No_kendaraan`) VALUES
(1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `Hotel_id` varchar(50) NOT NULL,
  `Nama_Hotel` varchar(50) NOT NULL,
  `Jumlah_Kamar` int(11) NOT NULL,
  `Lokasi_Hotel` varchar(50) NOT NULL,
  `staff_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`Hotel_id`, `Nama_Hotel`, `Jumlah_Kamar`, `Lokasi_Hotel`, `staff_id`) VALUES
('H001', 'Kemang Hotel', 12, 'Tanggerang', 'S001'),
('H002', 'Senayan Hotel', 25, 'Jakarta', 'S002'),
('H003', 'Arydaduta Menteng', 45, 'Jakarta', 'S003'),
('H004', 'Bahtra', 40, 'Balikpapan', 'S004'),
('H005', 'Regency ', 50, 'Depok', 'S005'),
('H006', 'Angklung', 25, 'Samarinda', 'S006'),
('H007', 'Kemanggisan', 50, 'Jakarta ', 'S007'),
('H008', 'The :angham Jakarta', 60, 'Bekasi', 'S008'),
('H009', 'Belwood', 65, 'Semarang', 'S009'),
('H010', 'Blue Sky', 45, 'Balikpapan', 'S010'),
('H011', 'BO', 19, 'Samarinda', 'S011'),
('H012', 'Swiss Belhotel', 50, 'Makassar', 'S012'),
('H013', 'Lembasung', 25, 'Tarakan', 'S013'),
('H014', 'Tranzit', 25, 'Solo', 'S014'),
('H015', 'Monaco', 45, 'Jakarta', 'S015'),
('H016', 'Galaxy', 25, 'Solo', 'S016'),
('H017', 'Makmur', 34, 'Kediri', 'S017'),
('H018', 'Harmonis', 32, 'Balikpapan', 'S018'),
('H019', 'Dinasti', 38, 'Banjarmasin', 'S019'),
('H020', 'Paradise', 39, 'Palangkaraya', 'S020'),
('H021', 'Bengawan', 30, 'Jalan Raknarok, Grogot', 'S021'),
('H022', 'Wangy Wangy', 35, 'Tokyo', 'S022'),
('H023', 'Konoha', 40, 'Jalan Negara Api', 'S023'),
('H024', 'MegaLodon', 35, 'jalan Pasifik Penajam', 'S024'),
('H025', 'Leluwu Sabang', 40, 'Jalan Salak, Sabang', 'S025'),
('H026', 'SharkZoon', 25, 'Jalan lembakan, Bali', 'S026'),
('H027', 'Ratu Adil', 30, 'Jalan Kartanegara, Kutai', 'S027'),
('H028', 'Meratus', 45, 'Jalan Kilo 7, Penajam', 'S028'),
('H029', 'Rugawana', 35, 'Jalan Flamboyan, Balikpapan', 'S029'),
('H030', 'Bhayangkara Jaya', 50, 'Jalan Sulaiman II, Cibubur', 'S030'),
('H031', 'Red Planet Makassar', 50, 'Makassar', 'S031'),
('H032', 'Amanjiwo Resort Sayan', 50, 'Bali', 'S032'),
('H033', 'Four Season Borobudur', 60, 'Borobudur', 'S033'),
('H034', 'Doubel Tree Hotel', 65, 'Jakarta', 'S034'),
('H035', 'CT 195', 50, 'Bandung', 'S035'),
('H036', 'Aayan Al Barakah', 55, 'Mekkah', 'S036'),
('H037', 'The Westin Surabaya', 50, 'Surabaya', 'S037'),
('H038', 'Pan Family', 55, 'Yogyakarta', 'S038'),
('H039', 'Arya Duta', 60, 'Pekanbaru', 'S039'),
('H040', 'Aston Hotel', 70, 'Palembang', 'S040'),
('H041', 'Swiss Belhotel', 40, 'Samarinda', 'S041'),
('H042', 'League', 26, 'Balikpapan', 'S042'),
('H043', 'Legend', 50, 'Samarinda', 'S043'),
('H044', 'Champs', 24, 'Banjarmasin', 'S044'),
('H045', 'Lanes', 36, 'Jakarta', 'S045'),
('H046', 'Rein', 30, 'Aceh', 'S046'),
('H047', 'Shine', 20, 'Beijing', 'S047'),
('H048', 'Aston', 42, 'Samarinda', 'S048'),
('H049', 'Intro', 37, 'Balikpapan', 'S049'),
('H050', 'Aztec', 29, 'New York', 'S050');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_hotel`
--

CREATE TABLE `invoice_hotel` (
  `Invoice_id` varchar(50) NOT NULL,
  `check_in` datetime NOT NULL,
  `check_out` datetime NOT NULL,
  `Jenis_Kamar` varchar(50) NOT NULL,
  `Harga_Total` int(11) NOT NULL,
  `Hotel_id` varchar(50) NOT NULL,
  `Pelanggan_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_hotel`
--

INSERT INTO `invoice_hotel` (`Invoice_id`, `check_in`, `check_out`, `Jenis_Kamar`, `Harga_Total`, `Hotel_id`, `Pelanggan_id`) VALUES
('IH001', '2021-11-09 19:32:30', '2021-11-10 08:00:00', 'Deluxe', 1200000, 'H001', 'P001'),
('IH002', '2021-11-16 16:39:00', '2021-11-17 10:38:39', 'Standar', 1250000, 'H002', 'P002'),
('IH003', '2021-11-21 17:00:29', '2021-11-22 12:26:26', 'Standar', 450000, 'H003', 'P003'),
('IH004', '2021-10-04 20:37:50', '2021-10-05 08:38:00', 'Deluxe', 1250000, 'H004', 'P004'),
('IH005', '2021-11-01 07:19:15', '2021-11-02 10:21:48', 'Standar', 750000, 'H005', 'P005'),
('IH006', '2021-11-29 13:31:00', '2021-11-20 11:00:00', 'Junior Suit', 450000, 'H006', 'P006'),
('IH007', '2021-10-14 07:18:18', '2021-11-20 20:50:29', 'Deluxe', 1250000, 'H007', 'P007'),
('IH008', '2021-11-25 12:29:27', '2021-11-27 15:38:39', 'Standar', 550000, 'H008', 'P008'),
('IH009', '2021-10-09 14:37:13', '2021-11-08 00:00:00', 'Deluxe', 1450000, 'H009', 'P009'),
('IH010', '2021-11-03 21:38:00', '2021-11-20 19:34:33', 'Standar', 550000, 'H010', 'P010'),
('IH011', '2021-11-19 20:00:25', '2021-11-20 07:30:00', 'Standard', 500000, 'H011', 'P011'),
('IH031', '2021-11-23 07:20:04', '2021-11-23 07:20:04', 'Deluxe', 1000000, 'H031', 'P031'),
('IH032', '2021-11-23 07:21:08', '2021-11-23 07:21:08', 'Standar', 700000, 'H032', 'P032'),
('IH033', '2021-11-23 07:21:56', '2021-11-23 07:21:56', 'Presidential', 50000000, 'H033', 'P033'),
('IH034', '2021-11-23 07:23:34', '2021-11-23 07:23:34', 'Deluxe', 1250000, 'H034', 'P034'),
('IH035', '2021-11-23 07:25:05', '2021-11-23 07:25:05', 'Standar', 1000000, 'H035', 'P035'),
('IH036', '2021-11-23 07:25:43', '2021-11-23 07:25:43', 'Presidential', 20000000, 'H036', 'P036'),
('IH037', '2021-11-23 07:26:19', '2021-11-23 07:26:19', 'Deluxe', 2500000, 'H037', 'P037'),
('IH038', '2021-11-23 07:26:57', '2021-11-23 07:26:57', 'Standar', 1300000, 'H038', 'P038'),
('IH039', '2021-11-23 07:27:40', '2021-11-23 07:27:40', 'Presidential', 30000000, 'H039', 'P039'),
('IH040', '2021-11-23 07:28:12', '2021-11-23 07:28:12', 'Deluxe', 4500000, 'H040', 'P040'),
('IH042', '2021-10-15 11:24:00', '2021-11-22 00:00:00', 'Presidential', 50000000, 'H044', 'P049'),
('IH044', '2021-11-15 12:25:00', '2021-11-20 19:34:33', 'Standar', 550000, 'H050', 'P050'),
('IH045', '2021-11-08 20:00:00', '2021-11-25 12:20:00', 'Deluxe', 489999, 'H041', 'P047');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `No_Keberangkatan` varchar(50) NOT NULL,
  `Tanggal_Keberangkatan` date NOT NULL,
  `Asal_Keberangkatan` varchar(50) NOT NULL,
  `Tujuan_Keberangkatan` varchar(50) NOT NULL,
  `No_Kendaraan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`No_Keberangkatan`, `Tanggal_Keberangkatan`, `Asal_Keberangkatan`, `Tujuan_Keberangkatan`, `No_Kendaraan`) VALUES
('J001', '2021-11-01', 'Bontang', 'Muara Badak', 'K001'),
('J002', '2021-11-11', 'Medan', 'Binjai', 'K002'),
('J003', '2021-10-21', 'Purwokerto', 'Semarang', 'K003'),
('J004', '2021-11-15', 'Balikpapan', 'Paser', 'K004'),
('J005', '2021-10-28', 'Bandung', 'Kediri', 'K005'),
('J006', '2021-11-29', 'Kediri', 'Kudus', 'K006'),
('J007', '2021-11-22', 'Demak', 'Banten', 'K007'),
('J008', '2021-10-15', 'Surabaya', 'Banten', 'K008'),
('J009', '2021-11-04', 'Berau', 'Samarinda', 'K009'),
('J010', '2021-11-01', 'Melak', 'Bontang', 'K010'),
('J011', '2021-11-26', 'Solo', 'Jakarta', 'K011'),
('J012', '2021-11-29', 'Balikpapan', 'Bandung', 'K012'),
('J013', '2021-12-08', 'Jakarta', 'Balikpapan', 'K013'),
('J014', '2021-11-22', 'Balikpapan', 'Tarakan', 'K014'),
('J015', '2021-11-30', 'Makassar', 'Jayapura', 'K015'),
('J016', '2021-12-06', 'Banjarmasin ', 'Jakarta', 'K016'),
('J017', '2021-12-20', 'Jakarta', 'Pontianak', 'K017'),
('J018', '2021-12-04', 'Makassar', 'Surabaya', 'K018'),
('J019', '2021-12-19', 'Jakarta', 'Tarakan', 'K019'),
('J020', '2021-12-18', 'Jakarta', 'Aceh', 'K020'),
('J021', '2021-11-30', 'Maluku', 'Jakarta', 'K021'),
('J022', '2021-11-29', 'Sunda', 'Bekasi', 'K022'),
('J023', '2021-11-19', 'Cibadak', 'Cilacap', 'K023'),
('J024', '2021-11-25', 'Sorong', 'Sabang', 'K024'),
('J025', '2021-11-21', 'Samarinda', 'Kutai', 'K025'),
('J026', '2021-11-19', 'Penajam', 'Bali', 'K026'),
('J027', '2021-11-29', 'Bandung', 'Bogor', 'K027'),
('J028', '2021-11-22', 'Martapura', 'Jogjakarta', 'K028'),
('J029', '2021-11-27', 'Yogyakarta', 'Jakarta', 'K029'),
('J030', '2021-11-26', 'Malang', 'Kediri', 'K030'),
('J031', '2021-11-27', 'Samarinda', 'Makassar', 'K031'),
('J032', '2021-12-02', 'Berau', 'Bali', 'K032'),
('J033', '2021-12-04', 'Surabaya', 'Balikpapan', 'K033'),
('J034', '2022-01-07', 'Samarinda', 'Makassar', 'K034'),
('J035', '2021-12-09', 'Yogyakarta', 'Banjarmasin', 'K035'),
('J036', '2021-12-21', 'Malang', 'Manado', 'K036'),
('J038', '2021-12-29', 'NTB', 'Balikpapan', 'K038'),
('J039', '2021-11-30', 'Jakarta', 'Surabaya', 'K039'),
('J040', '2021-12-22', 'Samarinda', 'Arab Saudi', 'K040'),
('J041', '2021-12-08', 'Banjarmasin ', 'Jakarta', 'K041'),
('J042', '2021-12-07', 'Samarinda', 'Jakarta', 'K042'),
('J043', '2021-12-02', 'Tokyo', 'New York', 'K043'),
('J044', '2021-12-25', 'Balikpapan', 'Aceh', 'K044'),
('J045', '2021-12-02', 'Amsterdam', 'Beijing', 'K045'),
('J046', '2021-12-19', 'Dubai', 'New Delhi', 'K046'),
('J047', '2021-12-12', 'Kyoto', 'Jakarta', 'K047'),
('J048', '2021-12-15', 'Balikpapan', 'Samarinda', 'K048'),
('J049', '2021-12-15', 'Shanghai', 'Bandung', 'K049'),
('J050', '2021-12-19', 'Samarinda', 'Tenggarong', 'K050'),
('JO37', '2021-12-17', 'Bali', 'Berau', 'K037');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `Pelanggan_id` varchar(50) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Usia` int(11) NOT NULL,
  `NoHp` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`Pelanggan_id`, `Nama`, `Gender`, `Usia`, `NoHp`, `Email`) VALUES
('P001', 'Jonathan Liandi', 'Pria', 20, '0812-1283-7127', 'Jonathan@gmail.com'),
('P002', 'Ahmad Zobari', 'Pria', 22, '0822-1283-9821', 'Zobari123@gmail.com'),
('P003', 'Indri', 'Wanita', 19, '0818-1283-9821', 'Indri@gmail,com'),
('P004', 'Wahda', 'Wanita', 20, '0822-9821-9892', 'Wahda32@gmail.com'),
('P005', 'Dwi Ageng', 'Pria', 23, '0812-5555-6666', 'Ageng@gmail.com'),
('P006', 'Santi Sulistyo', 'Wanita', 20, '0812-7812-0912', 'Sulis@gmail.com'),
('P007', 'Sandi Sandoto', 'Pria', 32, '0812-9822-2222', 'Sandi@gmail.com'),
('P008', 'Mahda', 'Wanita', 26, '0812-0980-8729', 'Mahda@gmail.com'),
('P009', 'Sandika Galih', 'Pria ', 27, '0812-1993-9803', 'Galih@gmail.com'),
('P010', 'Ahmad Alfarez', 'Pria', 45, '0812-1283-9999', 'Farez@gmail.com'),
('P011', 'Fahreza', 'Pria', 24, '0812-2071-5014', 'reza12@gmail.com'),
('P012', 'Maman', 'Pria', 21, '0898-9000-1222', 'mann12222@gmail.com'),
('P013', 'Kannisa', 'Wanita', 19, '0895-9020-1232', 'kniss99@gmail.com'),
('P014', 'Wulan', 'Wanita', 27, '0812-4343-2121', 'wulannichhhhh@gmail.com'),
('P015', 'Riadi', 'Pria', 46, '0877-6969-6969', 'guariadi69@gmail.com'),
('P016', 'Marshel', 'Pria', 38, '0852-4603-8256', 'marsellss@gmail.com'),
('P017', 'Pharsha', 'Wanita', 34, '0898-3221-1444', 'pharsss34@gmail.com'),
('P018', 'Danie', 'Pria', 56, '0877-7777-7654', 'danieeeek@gmail.com'),
('P019', 'Aurel', 'Wanita', 25, '0898-2524-7887', 'aurlll111@gmail.com'),
('P020', 'Jaka', 'Pria', 28, '0812-3535-5354', 'jakaakk7@gmail.com'),
('P021', 'Uzumaki Agung', 'Pria', 22, '0811-2233-4456', 'Agung21@gmail.com'),
('P022', 'Suci Sarasvati', 'Wanita', 24, '0812-4554-6666', 'Sarasvati4470@gmail.com'),
('P023', 'Yuni Agustin', 'Wanita', 35, '0898-0012-1121', 'Agustin11@gmail.com'),
('P024', 'Himawari Saidina', 'Wanita', 30, '0855-3341-8888', 'Himasai7@gmail.com'),
('P025', 'Kurama Sotaru', 'Pria', 19, '0812-1123-8787', 'Sotaru.ku90@gmail.com'),
('P026', 'Syaiful Amin', 'Pria', 40, '0898-4454-5556', 'Amin.syaiful73@gmail.com'),
('P027', 'Makoto Kwarawa', 'Pria', 33, '0877-9989-0001', 'Kwarawa.wara@gmail.com'),
('P028', 'Agung Herkules', 'Pria', 37, '0811-4122-6789', 'Herkules.Agung.Agung@gmail.com'),
('P029', 'Mikasa Ackerman', 'Wanita', 17, '0855-4656-6567', 'Ackerman99@gmail.com'),
('P030', 'Historia Reiss', 'Wanita', 25, '0891-1010-2288', 'Historia.ajah@gmail.com'),
('P031', 'Alya Nasya', 'Wanita', 22, '089213456758', 'alya@gmail.com'),
('P032', 'Diana Amalia', 'Wanita', 23, '082245678975', 'amaliadiana@gmail.com'),
('P033', 'Risna Wati', 'Wanita', 24, '081145327869', 'risna@gmail.com'),
('P034', 'Nur Ananda', 'Wanita', 25, '081254369876', 'ananda@gmail.com'),
('P035', 'Nur Nay', 'Wanita', 20, '082292525598', 'nay17@gmail.com'),
('P036', 'Maulana Ibrahim', 'Pria', 21, '082234745976', 'ibrahim@gmail.com'),
('P037', 'Aditya Akmal', 'Pria', 26, '082134768904', 'aditya@gmail.com'),
('P038', 'Ahmad Ali', 'Pria', 21, '082154678901', 'ahmad@gmail.com'),
('P039', 'Muh. Alif Maulana', 'Pria', 24, '082231549076', 'alifmaulana@gmail.com'),
('P040', 'Muh. Fauzan', 'Pria', 22, '089156729308', 'fauzan@gmail.com'),
('P041', 'Vii', 'Wanita', 26, '0812-4612-8244', 'Vii@ymail.com'),
('P042', 'Caithlyn', 'Wanita', 34, '0852-1021-1442', 'cathy34@gmail.com'),
('P043', 'Darius', 'Pria', 42, '0822-1212-3434', 'dar1234@gmail.com'),
('P044', 'Katarina', 'Wanita', 39, '0813-2567-1209', 'kath@gmail.com'),
('P045', 'Kayn', 'Pria', 23, '0809-3281-2871', 'Kaynada@gmail.com'),
('P046', 'Lucian', 'Pria', 56, '0810-1293-1092', 'Lucifer@gmail.com'),
('P047', 'Lux', 'Wanita', 19, '0813-6789-1010', 'LuxBeauty@gmail.com'),
('P048', 'Sett', 'Pria', 40, '0812-1111-0912', 'Settaka@gmail.com'),
('P049', 'Ahri', 'Wanita', 25, '0814-2713-1414', 'Ahriwaifuable@gmail.com'),
('P050', 'Yasuo', 'Pria', 29, '0822-2323-4545', 'yasuofav@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `pesawat`
--

CREATE TABLE `pesawat` (
  `No_Kendaraan` varchar(50) NOT NULL,
  `Maskapai` varchar(50) NOT NULL,
  `Kelas_Penerbangan` varchar(50) NOT NULL,
  `Jumlah_Penumpang` int(11) NOT NULL,
  `Batasan_Bawaan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pesawat`
--

INSERT INTO `pesawat` (`No_Kendaraan`, `Maskapai`, `Kelas_Penerbangan`, `Jumlah_Penumpang`, `Batasan_Bawaan`) VALUES
('K001', 'Garuda Indonesia', 'Business', 45, 12),
('K002', 'Lion Air', 'Economy', 50, 17),
('K003', 'Batik Air', 'Business', 50, 25),
('K004', 'Sriwijaya Air', 'Premium Economy', 65, 18),
('K005', 'Batik Air', 'Economy', 72, 20),
('K006', 'Lion Air', 'Vip', 76, 15),
('K007', 'Garuda Indonesia', 'Business ', 65, 18),
('K008', 'Adam Air', 'Economy', 55, 20),
('K009', 'Citilink', 'Business', 65, 20),
('K010', 'Lion Air', 'Premium Economy', 49, 14),
('K011', 'Garuda Indonesia', 'Business', 58, 15),
('K012', 'Citilink', 'Economy', 60, 17),
('K013', 'Lion Air', 'Business', 65, 15),
('K014', 'Lion Air', 'Economy', 62, 17),
('K015', 'Sriwijaya Air', 'Business', 67, 18),
('K016', 'Batik Air', 'Premium Economy', 69, 17),
('K017', 'Citilink', 'Business', 62, 18),
('K018', 'Lion Air', 'Economy', 70, 14),
('K019', 'Batik Air', 'Business', 63, 17),
('K020', 'Citilink', 'Premium Economy', 72, 18),
('K021', 'Ninja air', 'Business', 30, 50),
('K022', 'Black Sabit Air', 'Premium Economy', 25, 55),
('K023', 'Rasenggan Air', 'Vip', 20, 60),
('K024', 'Garuda Slice Air', 'Business', 45, 70),
('K025', 'Amatsukami Air', 'Premium Economy', 45, 70),
('K026', 'Tsukoyomi Air', 'Premium Economy', 30, 55),
('K027', 'Hiraisin Air', 'Premium Economy', 45, 45),
('K028', 'Raikiri Air', 'Vip', 30, 60),
('K029', 'Sabareno Air', 'Business', 60, 55),
('K030', 'Juken Air', 'Vip', 55, 45),
('K031', 'Batik Air', 'VIP', 50, 40),
('K032', 'Citilink', 'Business', 50, 45),
('K033', 'Garuda Indonesia', 'VIP', 100, 50),
('K034', 'Lion Air', 'Economy', 40, 50),
('K035', 'AirAsia', 'Business', 40, 30),
('K036', 'Wings Air', 'Economy', 40, 35),
('K037', 'Sriwijaya Air', 'VIP', 50, 40),
('K038', 'NAM Air', 'Business', 40, 35),
('K039', 'SriLankan Airlines', 'Economy', 50, 40),
('K040', 'Indonesia Air Asia', 'VIP', 50, 40),
('K041', 'Lion Air', 'VIP', 30, 100),
('K042', 'Arcane Air', 'Business', 70, 10),
('K043', 'Legends Air', 'Economy', 60, 11),
('K044', 'League Air', 'Economy', 75, 7),
('K045', 'Garuda Air', 'Premium Economy', 69, 13),
('K046', 'Braum', 'Business', 50, 11),
('K047', 'Corki Air', 'Premium Economy', 40, 25),
('K048', 'Galio Air', 'VIP', 20, 30),
('K049', 'Aurelion Air', 'Economy', 69, 20),
('K050', 'Tokyo Air', 'Premium Economy', 30, 70);

--
-- Triggers `pesawat`
--
DELIMITER $$
CREATE TRIGGER `after_delete` AFTER DELETE ON `pesawat` FOR EACH ROW update blacklist
set No_Kendaraan = No_Kendaraan - old.No_Kendaraan
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` varchar(50) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Call_Center` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `Nama`, `Call_Center`, `Gender`) VALUES
('S001', 'Jonathan Liandi', '(021) 29103300', 'Pria'),
('S002', 'Ahmad Zobari', '(021) 29103300', 'Pria'),
('S003', 'Fatmawati', '(021) 29103300', 'Wanita'),
('S004', 'Sam Varez', '(021) 29103300', 'Pria'),
('S005', 'Putri Sukma', '(021) 29103300', 'Wanita'),
('S006', 'Nur Handayani', '(021) 29103300', 'Wanita'),
('S007', 'Hidayat Taufik', '(021) 29103300', 'Pria'),
('S008', 'Jojo Christie', '(021) 29103300', 'Pria'),
('S009', 'Jotaro Lubis', '(021) 29103300', 'Pria'),
('S010', 'Wahyudi Taruk', '(021) 29103300', 'Pria'),
('S011', 'Qorygore', '(021) 29103300', 'Pria'),
('S012', 'Erikolim', '(021) 29103300', 'Pria'),
('S013', 'Laras', '(021) 29103300', 'Wanita'),
('S014', 'Karin', '(021) 29103300', 'Wanita'),
('S015', 'Yudi', '(021) 29103300', 'Pria'),
('S016', 'Maichel', '(021) 29103300', 'Pria'),
('S017', 'Vanny', '(021) 29103300', 'Wanita'),
('S018', 'Doddy', '(021) 29103300', 'Pria'),
('S019', 'Reni', '(021) 29103300', 'Wanita'),
('S020', 'Zulkifli', '(021) 29103300', 'Pria'),
('S021', 'Abdul', '(021) 29103300', 'Pria'),
('S022', 'Gunawan', '(021) 29103300', 'Pria'),
('S023', 'Prily', '(021) 29103300', 'Wanita'),
('S024', 'Salwan', '(021) 29103300', 'Pria'),
('S025', 'Syahrini', '(021) 29103300', 'Wanita'),
('S026', 'Sulyana', '(021) 29103300', 'Wanita'),
('S027', 'Udin', '(021) 29103300', 'Pria'),
('S028', 'Tio', '(021) 29103300', 'Pria'),
('S029', 'Rizal', '(021) 29103300', 'Pria'),
('S030', 'Yuni', '(021) 29103300', 'Wanita'),
('S031', 'Seliyanti Marina', '(021)29103300', 'Wanita'),
('S032', 'Adifa Diara', '(021)29103300', 'Wanita'),
('S033', 'Dira Nur Inaya', '(021)29103300', 'Wanita'),
('S034', 'Malika Refani', '(021)29103300', 'Wanita'),
('S035', 'Nadia Wulandari', '(021)29103300', 'Wanita'),
('S036', 'Muh. Daniel', '(021)29103300', 'Pria'),
('S037', 'Muh. Marsell', '(021)29103300', 'Pria'),
('S038', 'Maisya Almira', '(021)29103300', 'Wanita'),
('S039', 'Muh. Ridwan', '(021)29103300', 'Pria'),
('S040', 'Ahmad Akbar', '(021)29103300', 'Pria'),
('S041', 'Joko', '(021) 29103300', 'Pria'),
('S042', 'Alok', '(021) 29103300', 'Pria'),
('S043', 'Andre', '(021) 29103300', 'Pria'),
('S044', 'Anis', '(021) 29103300', 'Wanita'),
('S045', 'Jennifer', '(021) 29103300', 'Wanita'),
('S046', 'Anto', '(021) 29103300', 'Pria'),
('S047', 'Arcane', '(021) 29103300', 'Wanita'),
('S048', 'Jinx', '(021) 29103300', 'Wanita'),
('S049', 'Akali', '(021) 29103300', 'Wanita'),
('S050', 'Akhsan', '(021) 29103300', 'Pria');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `Transaksi_id` varchar(50) NOT NULL,
  `Metode_pembayaran` varchar(50) NOT NULL,
  `Total_Pembayaran` int(11) NOT NULL,
  `Pelanggan_id` varchar(50) NOT NULL,
  `No_Keberangkatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`Transaksi_id`, `Metode_pembayaran`, `Total_Pembayaran`, `Pelanggan_id`, `No_Keberangkatan`) VALUES
('T001', 'Banking', 500000, 'P001', 'J001'),
('T002', 'Tunai', 500000, 'P002', 'J002'),
('T003', 'Banking', 450000, 'P003', 'J003'),
('T004', 'Banking', 650000, 'P004', 'J004'),
('T005', 'Tunai', 500000, 'P005', 'J005'),
('T006', 'Banking', 750000, 'P006', 'J006'),
('T007', 'Banking', 650000, 'P008', 'J008'),
('T008', 'Tunai', 500000, 'P009', 'J009'),
('T009', 'Tunai', 650000, 'P010', 'J010'),
('T010', 'Banking', 500000, 'P010', 'J010'),
('T031', 'Tunai', 2000000, 'P031', 'J031'),
('T032', 'Banking', 2500000, 'P032', 'J032'),
('T033', 'Banking', 3000000, 'P033', 'J033'),
('T034', 'Tunai', 1500000, 'P034', 'J034'),
('T035', 'Banking', 2700000, 'P035', 'J035'),
('T036', 'Tunai', 3500000, 'P036', 'J036'),
('T037', 'Banking', 4000000, 'P037', 'JO37'),
('T038', 'Tunai', 3800000, 'P038', 'J038'),
('T039', 'Banking', 2000000, 'P039', 'J039'),
('T040', 'Tunai', 5000000, 'P040', 'J040');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blacklist`
--
ALTER TABLE `blacklist`
  ADD PRIMARY KEY (`Id_Blacklist`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`Hotel_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `invoice_hotel`
--
ALTER TABLE `invoice_hotel`
  ADD PRIMARY KEY (`Invoice_id`),
  ADD KEY `Hotel_id` (`Hotel_id`),
  ADD KEY `Pelanggan_id` (`Pelanggan_id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`No_Keberangkatan`),
  ADD KEY `No_Kendaraan` (`No_Kendaraan`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`Pelanggan_id`);

--
-- Indexes for table `pesawat`
--
ALTER TABLE `pesawat`
  ADD PRIMARY KEY (`No_Kendaraan`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`Transaksi_id`),
  ADD KEY `Pelanggan_id` (`Pelanggan_id`),
  ADD KEY `No_Keberangkatan` (`No_Keberangkatan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blacklist`
--
ALTER TABLE `blacklist`
  MODIFY `Id_Blacklist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `invoice_hotel`
--
ALTER TABLE `invoice_hotel`
  ADD CONSTRAINT `invoice_hotel_ibfk_1` FOREIGN KEY (`Hotel_id`) REFERENCES `hotel` (`Hotel_id`),
  ADD CONSTRAINT `invoice_hotel_ibfk_2` FOREIGN KEY (`Pelanggan_id`) REFERENCES `pelanggan` (`Pelanggan_id`);

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`No_Kendaraan`) REFERENCES `pesawat` (`No_Kendaraan`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`Pelanggan_id`) REFERENCES `pelanggan` (`Pelanggan_id`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`No_Keberangkatan`) REFERENCES `jadwal` (`No_Keberangkatan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
