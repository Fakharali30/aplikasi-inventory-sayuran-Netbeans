-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2020 at 09:09 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cibodas`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` varchar(30) NOT NULL,
  `namaadmin` varchar(20) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `namaadmin`, `jabatan`, `password`) VALUES
('MGR0001', 'Atep Suhendar', 'Manager', '12345'),
('OPR0001', 'admin', 'Operator', 'admin'),
('OPR0002', 'Operator 2', 'Operator', '12345'),
('STF0001', 'Staff 1', 'Staff', '12345'),
('STF0002', 'Staff 2', 'Staff', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `idbarang` varchar(20) NOT NULL,
  `jenisbarang` varchar(30) NOT NULL,
  `namabarang` varchar(30) NOT NULL,
  `harga` varchar(30) NOT NULL,
  `bobot` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`idbarang`, `jenisbarang`, `namabarang`, `harga`, `bobot`) VALUES
('BCS0001', 'Buncis', 'Buncis', '4000', '7500'),
('BRK0001', 'Brokoli', 'Brokoli', '5000', '4100'),
('BWG0001', 'Bawang', 'bawang bawangan', '1000', '1630'),
('BWG0002', 'Bawang', 'bawang merah', '1000', '1810'),
('BYM0001', 'Bayam', 'Bayam', '5000', '3200'),
('CB0001', 'Cabai', 'Cabai Merah', '5000', '4350'),
('CB0002', 'Cabai', 'Cabai Rawit', '4000', '1850'),
('JMR0001', 'Jamur', 'Jamur', '2000', '5350'),
('KKG0001', 'Kangkung', 'Kangkung', '4000', '3900'),
('KL0001', 'Kol', 'Kol', '3000', '5500'),
('KPG0001', 'Kacang Panjang', 'Kacang Panjang', '3000', '4200'),
('KTG0001', 'Kentang', 'kentang kuning', '2000', '1005'),
('KTG0002', 'Kentang', 'Kentang coklat', '5000', '1200'),
('LB0001', 'Labu', 'Labu', '4000', '3450'),
('SLDR0001', 'Seledri', 'seledri', '4000', '5950'),
('TMT0001', 'Tomat', 'Tomat', '4000', '3950'),
('TRG0001', 'Terong', 'Terong', '4000', '2450'),
('WTR0001', 'Wortel', 'wortel jayapura', '3000', '820');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `supplier` varchar(30) NOT NULL,
  `idkategori` varchar(30) NOT NULL,
  `namakategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`supplier`, `idkategori`, `namakategori`) VALUES
('SPR-0001', 'BCS', 'Buncis'),
('SPR-0001', 'BRK', 'Brokoli'),
('SPR-0001', 'BWG', 'Bawang'),
('SPR-0001', 'BYM', 'Bayam'),
('SPR-0001', 'CB', 'Cabai'),
('SPR-0001', 'DPA', 'Daun Pepaya'),
('SPR-0001', 'JMR', 'Jamur'),
('SPR-0001', 'KKG', 'Kangkung'),
('SPR-0001', 'KL', 'Kol'),
('SPR-0001', 'KPG', 'Kacang Panjang'),
('SPR-0002', 'KTG', 'Kentang'),
('SPR-0001', 'LB', 'Labu'),
('SPR-0001', 'SLDR', 'Seledri'),
('SPR-0001', 'SW', 'Sawi'),
('SPR-0003', 'SYR', 'Sayur'),
('SPR-0001', 'TG', 'Tauge'),
('SPR-0001', 'TMN', 'Timun'),
('SPR-0001', 'TMT', 'Tomat'),
('SPR-0001', 'TRG', 'Terong'),
('SPR-0002', 'WTR', 'Wortel');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `idsp` varchar(20) NOT NULL,
  `namasp` varchar(30) NOT NULL,
  `notelp` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`idsp`, `namasp`, `notelp`, `alamat`) VALUES
('SPR-0001', 'PT. Megah Indah', '021-75647468', 'depok'),
('SPR-0002', 'PT.Sinar Bogah', '0870897869', 'Tangerang'),
('SPR-0003', 'PT. Maju Perkasa', '08969697859', 'Bogor'),
('SPR-0004', 'PT. Angkasa Pura', '0857937463', 'Tangerang');

-- --------------------------------------------------------

--
-- Table structure for table `transaksikeluar`
--

CREATE TABLE `transaksikeluar` (
  `idtransaksi` varchar(30) NOT NULL,
  `namapetugas` varchar(30) NOT NULL,
  `namapelanggan` varchar(30) NOT NULL,
  `notelp` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `kdbarang` varchar(30) NOT NULL,
  `jumlah` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksikeluar`
--

INSERT INTO `transaksikeluar` (`idtransaksi`, `namapetugas`, `namapelanggan`, `notelp`, `alamat`, `tanggal`, `kdbarang`, `jumlah`) VALUES
('TRB-0001', 'admin', 'pak sukma', '08161921199', 'depok', '2020-06-20', 'BWG0001', '20'),
('TRB-0002', 'admin', 'Sumekti', '08579394869', 'Tangerang', '2020-07-06', 'BRK0001', '500'),
('TRB-0003', 'admin', 'hasudin', '08569746764', 'Jakarta', '2020-07-14', 'BCS0001', '200'),
('TRB-0004', 'admin', 'jaenudin', '0858564564', 'citayam', '2020-07-14', 'BRK0001', '300'),
('TRB-0005', 'admin', 'hasna', '085676898', 'depok', '2020-07-14', 'BYM0001', '300'),
('TRB-0006', 'admin', 'siti', '0867859857', 'bekasi', '2020-07-14', 'CB0001', '250'),
('TRB-0007', 'admin', 'isti', '0859867857', 'tangerang', '2020-07-14', 'CB0002', '450'),
('TRB-0008', 'admin', 'alex', '0856497645', 'jakarta', '2020-07-14', 'JMR0001', '150'),
('TRB-0009', 'admin', 'sandrina', '08587957790', 'bogor', '2020-07-14', 'JMR0001', '300'),
('TRB-0010', 'admin', 'agus', '0859876546', 'depok', '2020-07-14', 'KKG0001', '300'),
('TRB-0011', 'admin', 'asep', '08589756887', 'citayam', '2020-07-14', 'LB0001', '150'),
('TRB-0012', 'admin', 'mahmudah', '0859342543', 'jakarta', '2020-07-14', 'SLDR0001', '300'),
('TRB-0013', 'admin', 'weton', '0853984566', 'tangerang', '2020-07-14', 'TMT0001', '250'),
('TRB-0014', 'admin', 'jajang', '0856987689', 'bogor', '2020-07-14', 'TRG0001', '350'),
('TRB-0015', 'admin', 'sumanji', '085896857', 'citayam', '2020-07-14', 'BCS0001', '250'),
('TRB-0016', 'admin', 'nasruloh', '085987565', 'jakarta', '2020-07-14', 'BRK0001', '200'),
('TRB-0017', 'admin', 'didin', '0856868789', 'depok', '2020-07-14', 'BRK0001', '200'),
('TRB-0018', 'admin', 'deden', '0859987879', 'bogor', '2020-07-14', 'CB0001', '200'),
('TRB-0019', 'admin', 'jamal', '08958595', 'jogja', '2016-07-06', 'BCS0001', '300'),
('TRB-0020', 'admin', 'hasna', '0856364654', 'pekanbaru', '2016-07-13', 'BRK0001', '200'),
('TRB-0021', 'admin', 'nurbayah', '086747475', 'citayam', '2017-07-11', 'BWG0001', '300'),
('TRB-0022', 'admin', 'chairul', '0875657755', 'jakarta utara', '2017-07-11', 'BWG0001', '200'),
('TRB-0023', 'admin', 'zikroh', '086485757', 'jakarta timur', '2018-07-09', 'BWG0002', '200'),
('TRB-0024', 'admin', 'asta', '086576868', 'jakarta barat', '2018-07-15', 'BYM0001', '200'),
('TRB-0025', 'admin', 'ray', '086758857', 'jakarta selatan', '2019-07-16', 'CB0001', '200'),
('TRB-0026', 'admin', 'doni', '0896757574', 'jakrat pusat', '2019-07-09', 'CB0002', '200'),
('TRB-0027', 'admin', 'nino', '089658558', 'aceh', '2020-01-07', 'JMR0001', '200'),
('TRB-0028', 'admin', 'shaleh', '08969695', 'bengkulu', '2020-01-07', 'KKG0001', '200'),
('TRB-0029', 'admin', 'erin', '0894758696', 'padang', '2020-02-10', 'KL0001', '200'),
('TRB-0030', 'admin', 'hengki', '089697965', 'batam', '2020-02-04', 'KPG0001', '200'),
('TRB-0031', 'admin', 'surya', '0897978686', 'bogor', '2020-03-02', 'KTG0001', '300'),
('TRB-0032', 'admin', 'aselih', '089786868', 'depok', '2020-03-02', 'KTG0002', '200'),
('TRB-0033', 'admin', 'mirna', '089586879', 'sumedang', '2020-04-08', 'LB0001', '200'),
('TRB-0034', 'admin', 'desi', '0897979797', 'ciganjur', '2020-04-08', 'SLDR0001', '200'),
('TRB-0035', 'admin', 'esti', '0897979796', 'jakarta utara', '2020-05-11', 'TMT0001', '200'),
('TRB-0036', 'admin', 'wawan', '085675465', 'jakarta pusat', '2020-05-18', 'TRG0001', '200'),
('TRB-0037', 'admin', 'kurniwan', '0858764774', 'jakarta selatan', '2020-08-03', 'WTR0001', '200'),
('TRB-0038', 'admin', 'sulis', '08567757564', 'bogor', '2020-08-10', 'BCS0001', '200');

-- --------------------------------------------------------

--
-- Table structure for table `transaksimasuk`
--

CREATE TABLE `transaksimasuk` (
  `idtransaksi` varchar(30) NOT NULL,
  `idbarang` varchar(30) NOT NULL,
  `namapetugas` varchar(30) NOT NULL,
  `namasp` varchar(30) NOT NULL,
  `tanggal` date NOT NULL,
  `jumlah` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksimasuk`
--

INSERT INTO `transaksimasuk` (`idtransaksi`, `idbarang`, `namapetugas`, `namasp`, `tanggal`, `jumlah`) VALUES
('TRB-0003', 'BCS0001', 'admin', 'PT. Megah Indah', '2020-07-06', '2000'),
('TRB-0004', 'BYM0001', 'admin', 'PT. Megah Indah', '2020-07-14', '500'),
('TRB-0005', 'CB0002', 'admin', 'PT. Megah Indah', '2020-07-14', '500'),
('TRB-0006', 'KTG0002', 'admin', 'PT. Megah Indah', '2020-07-14', '350'),
('TRB-0007', 'KL0001', 'admin', 'PT.Sinar Bogah', '2020-07-14', '700'),
('TRB-0008', 'TMT0001', 'admin', 'PT.Sinar Bogah', '2020-07-14', '400'),
('TRB-0009', 'SLDR0001', 'admin', 'PT.Sinar Bogah', '2020-07-14', '450'),
('TRB-0010', 'LB0001', 'admin', 'PT. Maju Perkasa', '2020-07-14', '800'),
('TRB-0011', 'KPG0001', 'admin', 'PT. Maju Perkasa', '2020-07-14', '400'),
('TRB-0012', 'KTG0001', 'admin', 'PT. Maju Perkasa', '2020-07-14', '300'),
('TRB-0013', 'KKG0001', 'admin', 'PT. Maju Perkasa', '2020-07-14', '400'),
('TRB-0014', 'BCS0001', 'admin', 'PT. Angkasa Pura', '2020-07-14', '450'),
('TRB-0015', 'BRK0001', 'admin', 'PT. Angkasa Pura', '2020-07-14', '500'),
('TRB-0016', 'BWG0001', 'admin', 'PT. Angkasa Pura', '2020-07-14', '300'),
('TRB-0017', 'BYM0001', 'admin', 'PT. Angkasa Pura', '2020-07-14', '200'),
('TRB-0018', 'BCS0001', 'admin', 'PT. Angkasa Pura', '2016-07-04', '1000'),
('TRB-0019', 'BRK0001', 'admin', 'PT. Angkasa Pura', '2016-07-06', '1000'),
('TRB-0020', 'BWG0001', 'admin', 'PT. Maju Perkasa', '2017-07-11', '1000'),
('TRB-0021', 'BWG0002', 'admin', 'PT. Maju Perkasa', '2017-07-11', '1000'),
('TRB-0022', 'BYM0001', 'admin', 'PT. Megah Indah', '2018-07-12', '1000'),
('TRB-0023', 'CB0001', 'admin', 'PT. Megah Indah', '2018-07-11', '1000'),
('TRB-0024', 'CB0002', 'admin', 'PT. Megah Indah', '2018-07-10', '1000'),
('TRB-0025', 'JMR0001', 'admin', 'PT.Sinar Bogah', '2019-07-10', '1000'),
('TRB-0026', 'KKG0001', 'admin', 'PT.Sinar Bogah', '2019-07-10', '1000'),
('TRB-0027', 'KL0001', 'admin', 'PT.Sinar Bogah', '2020-01-02', '1000'),
('TRB-0028', 'KPG0001', 'admin', 'PT. Angkasa Pura', '2020-01-06', '1000'),
('TRB-0029', 'KTG0001', 'admin', 'PT. Angkasa Pura', '2020-02-02', '1000'),
('TRB-0030', 'KTG0002', 'admin', 'PT. Angkasa Pura', '2020-02-02', '1000'),
('TRB-0031', 'LB0001', 'admin', 'PT. Maju Perkasa', '2020-02-03', '1000'),
('TRB-0032', 'SLDR0001', 'admin', 'PT. Maju Perkasa', '2020-03-09', '1000'),
('TRB-0033', 'TMT0001', 'admin', 'PT. Megah Indah', '2020-03-02', '1000'),
('TRB-0034', 'TRG0001', 'admin', 'PT. Megah Indah', '2020-04-02', '1000'),
('TRB-0035', 'WTR0001', 'admin', 'PT. Megah Indah', '2020-04-02', '1000'),
('TRB-0036', 'BCS0001', 'admin', 'PT. Megah Indah', '2020-05-04', '1000'),
('TRB-0037', 'BRK0001', 'admin', 'PT. Megah Indah', '2020-05-04', '1000'),
('TRB-0038', 'BWG0001', 'admin', 'PT.Sinar Bogah', '2020-08-09', '1000'),
('TRB-0039', 'BWG0002', 'admin', 'PT.Sinar Bogah', '2020-08-10', '1000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`idbarang`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkategori`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`idsp`);

--
-- Indexes for table `transaksikeluar`
--
ALTER TABLE `transaksikeluar`
  ADD PRIMARY KEY (`idtransaksi`);

--
-- Indexes for table `transaksimasuk`
--
ALTER TABLE `transaksimasuk`
  ADD PRIMARY KEY (`idtransaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
