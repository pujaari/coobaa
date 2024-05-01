-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2024 at 07:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `username`, `password`) VALUES
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `nim` varchar(16) NOT NULL,
  `nama_mhs` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`nim`, `nama_mhs`) VALUES
('09745', 'Umi '),
('09765', 'Fahmi Ihsani'),
('2105551016', 'Puja '),
('2105551025', 'Yunita'),
('23451', 'Ari Kusuma'),
('54321', 'Muhammad Lutfi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_matkul`
--

CREATE TABLE `tb_matkul` (
  `kode_matkul` varchar(4) NOT NULL,
  `nama_matkul` varchar(200) NOT NULL,
  `sks` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_matkul`
--

INSERT INTO `tb_matkul` (`kode_matkul`, `nama_matkul`, `sks`) VALUES
('A14', 'PHP', 2),
('A15', 'Perangkat Bergerak', 2),
('A16', 'Mobile', 3),
('A17', 'HTML', 3),
('A18', 'Pyhton', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai`
--

CREATE TABLE `tb_nilai` (
  `id` int(11) NOT NULL,
  `kode_matkul` varchar(4) NOT NULL,
  `nim` varchar(16) NOT NULL,
  `nilai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tb_nilai`
--

INSERT INTO `tb_nilai` (`id`, `kode_matkul`, `nim`, `nilai`) VALUES
(20, 'A11', '54321', '90'),
(21, 'A11', '09756', '80'),
(22, 'A12', '09756', '70'),
(23, 'A12', '54321', '80'),
(24, 'A14', '54321', '70'),
(25, 'A15', '54321', '50'),
(26, 'A13', '54321', '60'),
(27, 'A14', '09756', '60'),
(28, 'A13', '09756', '70'),
(29, 'A15', '09756', '60'),
(30, 'A18', '09756', '75'),
(31, 'A17', '09756', '90'),
(32, 'A16', '09756', '84'),
(33, 'A11', '09745', '90'),
(34, 'A11', '09765', '70'),
(35, 'A14', '23451', '60'),
(36, 'A12', '09745', '70'),
(37, 'A13', '09745', '60'),
(38, 'A14', '09745', '70'),
(39, 'A15', '09745', '50'),
(40, 'A16', '09745', '85'),
(41, 'A17', '09745', '80'),
(42, 'A18', '09745', '85'),
(44, 'A12', '09765', '60'),
(45, 'A13', '09765', '70'),
(46, 'A14', '09765', '80'),
(47, 'A15', '09765', '90'),
(48, 'A16', '09765', '69'),
(49, 'A17', '09765', '80'),
(50, 'A18', '09765', '100'),
(51, 'A11', '23451', '70'),
(52, 'A12', '23451', '80'),
(53, 'A13', '23451', '90'),
(54, 'A15', '23451', '78'),
(55, 'A16', '23451', '81'),
(56, 'A17', '23451', '69'),
(57, 'A18', '23451', '95'),
(58, 'A16', '54321', '85'),
(59, 'A17', '54321', '80'),
(60, 'A18', '54321', '87'),
(61, 'A14', '2105551016', '50'),
(62, 'A16', '2105551016', '100');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `tb_matkul`
--
ALTER TABLE `tb_matkul`
  ADD PRIMARY KEY (`kode_matkul`);

--
-- Indexes for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
