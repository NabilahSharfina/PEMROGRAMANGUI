-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2021 at 01:27 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `checkup`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel kesehatan`
--

CREATE TABLE `artikel kesehatan` (
  `id_pasien` int(10) NOT NULL,
  `judul` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel kesehatan`
--

INSERT INTO `artikel kesehatan` (`id_pasien`, `judul`) VALUES
(1001, 'Thalassophobia'),
(1002, 'Gejala Covid-19'),
(1003, 'What is OCD?'),
(1005, 'Diabetes melitus'),
(1004, 'Reproduksi Manusia');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id_pasien` int(10) NOT NULL,
  `id_dokter` int(10) NOT NULL,
  `keluhan` tinytext NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id_pasien`, `id_dokter`, `keluhan`, `waktu`) VALUES
(1001, 2003, 'Asma', '2021-08-05 16:00:00'),
(1002, 2002, 'Gusi berdarah', '2021-08-02 09:15:00'),
(1003, 2001, 'Fobia dengan keramaian', '2021-08-02 14:40:00'),
(1004, 2004, 'Skoliosis dan nyeri', '2021-08-08 15:30:00'),
(1005, 2005, 'Nyeri saraf', '2021-08-07 10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` int(10) NOT NULL,
  `nama_dokter` varchar(30) NOT NULL,
  `spesialis` varchar(30) NOT NULL,
  `jk` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama_dokter`, `spesialis`, `jk`) VALUES
(2001, 'Asa butterfield', 'Phobia', 'L'),
(2002, 'Emma Watson', 'Gigi', 'P'),
(2003, 'Bennedict Cumberbatch', 'Jantung', 'L'),
(2004, 'Freddie Highmore', 'Tulang', 'L'),
(2005, 'Anushka Sharma', 'Saraf', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `janji medis`
--

CREATE TABLE `janji medis` (
  `id_pesanan` int(10) NOT NULL,
  `id_pasien` int(10) NOT NULL,
  `id_dokter` int(10) NOT NULL,
  `id_laborat` int(10) NOT NULL,
  `jadwal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `janji medis`
--

INSERT INTO `janji medis` (`id_pesanan`, `id_pasien`, `id_dokter`, `id_laborat`, `jadwal`) VALUES
(5001, 1001, 2003, 3001, '2021-08-07 10:00:00'),
(5002, 1002, 2002, 3002, '2021-08-07 10:00:00'),
(5003, 1003, 2001, 3003, '2021-08-07 15:30:00'),
(5004, 1004, 2004, 3004, '2021-08-06 13:00:00'),
(5005, 1005, 2005, 3005, '2021-08-02 15:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `laborat`
--

CREATE TABLE `laborat` (
  `id_laborat` int(10) NOT NULL,
  `nama_laborat` varchar(30) NOT NULL,
  `jk` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laborat`
--

INSERT INTO `laborat` (`id_laborat`, `nama_laborat`, `jk`) VALUES
(3001, 'Gong Yoo', 'L'),
(3002, 'Iqbal Khan', 'L'),
(3003, 'Leyla Tanlaar', 'P'),
(3004, 'Ebru Ozkan', 'P'),
(3005, 'Jacob Lee', ':L');

-- --------------------------------------------------------

--
-- Table structure for table `layanan asuransi`
--

CREATE TABLE `layanan asuransi` (
  `id_asuransi` int(10) NOT NULL,
  `id_tes` int(10) NOT NULL,
  `masa_berlaku` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `layanan asuransi`
--

INSERT INTO `layanan asuransi` (`id_asuransi`, `id_tes`, `masa_berlaku`) VALUES
(401, 6001, '2022-04-08'),
(402, 6002, '2022-08-18'),
(403, 6003, '2022-03-30'),
(404, 6004, '2022-06-20'),
(405, 6005, '2021-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(10) NOT NULL,
  `nama_pasien` varchar(30) NOT NULL,
  `usia` int(10) DEFAULT NULL,
  `jk` varchar(10) NOT NULL,
  `status` varchar(30) NOT NULL,
  `golDar` varchar(10) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama_pasien`, `usia`, `jk`, `status`, `golDar`, `alamat`) VALUES
(1001, 'William Moseley', 34, 'L', 'BM', 'O', 'Jl. Manggis No. 25, Jakarta'),
(1002, 'Georgie Henley', 26, 'P', 'BM', 'A', 'Jl. Beo No. 24, Bekasi'),
(1003, 'Skandar Keynes', 29, 'L', 'BM', 'B', 'Jl. Merak No. 20, Bandung'),
(1004, 'Anna Popplewell', 32, 'P', 'BM', 'AB', 'Jl. Kecapi No. 20, Depok'),
(1005, 'Liam Neeson', 69, 'L', 'M', 'B', 'Jl. Kemangi No. 32, Tangerang');

-- --------------------------------------------------------

--
-- Table structure for table `scan suhu tubuh`
--

CREATE TABLE `scan suhu tubuh` (
  `id_pasien` int(10) NOT NULL,
  `suhu` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scan suhu tubuh`
--

INSERT INTO `scan suhu tubuh` (`id_pasien`, `suhu`) VALUES
(1001, 35),
(1002, 34),
(1003, 36),
(1004, 36),
(1005, 37);

-- --------------------------------------------------------

--
-- Table structure for table `tes laboratorium`
--

CREATE TABLE `tes laboratorium` (
  `id_tes` int(10) NOT NULL,
  `id_pesanan` int(10) NOT NULL,
  `diagnosa` varchar(30) NOT NULL,
  `resep_obat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tes laboratorium`
--

INSERT INTO `tes laboratorium` (`id_tes`, `id_pesanan`, `diagnosa`, `resep_obat`) VALUES
(6001, 5001, 'Asma', 'Asma inhaler'),
(6002, 5002, 'Gusi berdarah', 'Obat kumur dan vitamin'),
(6003, 5003, 'Agorafobia', 'Terapi rutin'),
(6004, 5004, 'Skoliosis', 'Minum susu dan vitamin'),
(6005, 5005, 'Nyeri saraf', 'Suplemen');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(10) NOT NULL,
  `id_asuransi` int(10) NOT NULL,
  `jumlah_tagihan` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_asuransi`, `jumlah_tagihan`) VALUES
(4001, 401, 100000),
(4002, 402, 175000),
(4003, 403, 100000),
(4004, 404, 150000),
(4005, 405, 200000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel kesehatan`
--
ALTER TABLE `artikel kesehatan`
  ADD KEY `Artikel Kesehatan_fk0` (`id_pasien`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD KEY `Chat_fk0` (`id_pasien`),
  ADD KEY `Chat_fk1` (`id_dokter`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `janji medis`
--
ALTER TABLE `janji medis`
  ADD PRIMARY KEY (`id_pesanan`),
  ADD KEY `Janji Medis_fk0` (`id_pasien`),
  ADD KEY `Janji Medis_fk1` (`id_dokter`),
  ADD KEY `Janji Medis_fk2` (`id_laborat`);

--
-- Indexes for table `laborat`
--
ALTER TABLE `laborat`
  ADD PRIMARY KEY (`id_laborat`);

--
-- Indexes for table `layanan asuransi`
--
ALTER TABLE `layanan asuransi`
  ADD PRIMARY KEY (`id_asuransi`),
  ADD KEY `Layanan Asuransi_fk0` (`id_tes`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `scan suhu tubuh`
--
ALTER TABLE `scan suhu tubuh`
  ADD KEY `Scan Suhu Tubuh_fk0` (`id_pasien`);

--
-- Indexes for table `tes laboratorium`
--
ALTER TABLE `tes laboratorium`
  ADD PRIMARY KEY (`id_tes`),
  ADD KEY `Tes Laboratorium_fk0` (`id_pesanan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `Transaksi_fk0` (`id_asuransi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id_dokter` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2006;

--
-- AUTO_INCREMENT for table `janji medis`
--
ALTER TABLE `janji medis`
  MODIFY `id_pesanan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5006;

--
-- AUTO_INCREMENT for table `laborat`
--
ALTER TABLE `laborat`
  MODIFY `id_laborat` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3006;

--
-- AUTO_INCREMENT for table `layanan asuransi`
--
ALTER TABLE `layanan asuransi`
  MODIFY `id_asuransi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1006;

--
-- AUTO_INCREMENT for table `tes laboratorium`
--
ALTER TABLE `tes laboratorium`
  MODIFY `id_tes` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6006;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4006;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artikel kesehatan`
--
ALTER TABLE `artikel kesehatan`
  ADD CONSTRAINT `Artikel Kesehatan_fk0` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`);

--
-- Constraints for table `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `Chat_fk0` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`),
  ADD CONSTRAINT `Chat_fk1` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`);

--
-- Constraints for table `janji medis`
--
ALTER TABLE `janji medis`
  ADD CONSTRAINT `Janji Medis_fk0` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`),
  ADD CONSTRAINT `Janji Medis_fk1` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`),
  ADD CONSTRAINT `Janji Medis_fk2` FOREIGN KEY (`id_laborat`) REFERENCES `laborat` (`id_laborat`);

--
-- Constraints for table `layanan asuransi`
--
ALTER TABLE `layanan asuransi`
  ADD CONSTRAINT `Layanan Asuransi_fk0` FOREIGN KEY (`id_tes`) REFERENCES `tes laboratorium` (`id_tes`);

--
-- Constraints for table `scan suhu tubuh`
--
ALTER TABLE `scan suhu tubuh`
  ADD CONSTRAINT `Scan Suhu Tubuh_fk0` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`);

--
-- Constraints for table `tes laboratorium`
--
ALTER TABLE `tes laboratorium`
  ADD CONSTRAINT `Tes Laboratorium_fk0` FOREIGN KEY (`id_pesanan`) REFERENCES `janji medis` (`id_pesanan`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `Transaksi_fk0` FOREIGN KEY (`id_asuransi`) REFERENCES `layanan asuransi` (`id_asuransi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
