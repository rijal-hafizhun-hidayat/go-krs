-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2021 at 02:33 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `krs`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambil_matakuliah`
--

CREATE TABLE `ambil_matakuliah` (
  `id_ambil` int(11) NOT NULL,
  `nim` int(100) NOT NULL,
  `kode_matkul` int(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `matakuliah` varchar(100) NOT NULL,
  `beban` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ambil_matakuliah`
--

INSERT INTO `ambil_matakuliah` (`id_ambil`, `nim`, `kode_matkul`, `nama`, `kelas`, `matakuliah`, `beban`) VALUES
(7, 1900018040, 19786, 'Rijal Hafizhun Hidayat', 'A', 'pemrograman web', 3),
(8, 1900018040, 19787, 'Rijal Hafizhun Hidayat', 'A', 'dasar-dasar pemrograman', 3),
(11, 1900018040, 19789, 'Rijal Hafizhun Hidayat', 'A', 'pemodelan sistem', 3),
(12, 1900018040, 19790, 'Rijal Hafizhun Hidayat', 'A', 'sistem produksi', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_mahasiswa` varchar(100) NOT NULL,
  `semester` int(100) NOT NULL,
  `prodi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `password`, `nama_mahasiswa`, `semester`, `prodi`) VALUES
(1900018040, 'passwordnya1', 'Rijal Hafizhun Hidayat', 4, 'Teknik Informatika');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id_matakuliah` int(11) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `nama_matakuliah` varchar(100) NOT NULL,
  `beban_matakuliah` int(100) NOT NULL,
  `semester` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`id_matakuliah`, `kelas`, `nama_matakuliah`, `beban_matakuliah`, `semester`) VALUES
(19786, 'A', 'pemrograman web', 3, 4),
(19787, 'A', 'dasar-dasar pemrograman', 3, 4),
(19789, 'A', 'pemodelan sistem', 3, 5),
(19790, 'A', 'sistem produksi', 2, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambil_matakuliah`
--
ALTER TABLE `ambil_matakuliah`
  ADD PRIMARY KEY (`id_ambil`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id_matakuliah`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ambil_matakuliah`
--
ALTER TABLE `ambil_matakuliah`
  MODIFY `id_ambil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `nim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1900018041;

--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id_matakuliah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19791;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
