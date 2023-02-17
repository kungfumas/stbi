-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2023 at 12:19 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `konikendal`
--

-- --------------------------------------------------------

--
-- Table structure for table `atletnonprestasi`
--

CREATE TABLE `atletnonprestasi` (
  `noidatletnonprestasi` int(11) NOT NULL,
  `noidcabor` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `jnskelamin` varchar(6) DEFAULT NULL,
  `tempatlahir` varchar(150) DEFAULT NULL,
  `tgllahir` date DEFAULT NULL,
  `satus` varchar(15) DEFAULT NULL,
  `nohp` varchar(15) DEFAULT NULL,
  `alamatrumah` text DEFAULT NULL,
  `noktp` varchar(15) DEFAULT NULL,
  `namaayah` varchar(150) DEFAULT NULL,
  `namaibu` varchar(150) DEFAULT NULL,
  `agama` varchar(15) DEFAULT NULL,
  `tinggibadan` int(11) DEFAULT NULL,
  `beratbadan` int(11) DEFAULT NULL,
  `golongandarah` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `atletprestasi`
--

CREATE TABLE `atletprestasi` (
  `noidatletprestasi` int(11) NOT NULL,
  `noidcabor` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `jnskelamin` varchar(6) DEFAULT NULL,
  `tempatlahir` varchar(150) DEFAULT NULL,
  `tgllahir` date DEFAULT NULL,
  `satus` varchar(15) DEFAULT NULL,
  `nohp` varchar(15) DEFAULT NULL,
  `alamatrumah` text DEFAULT NULL,
  `noktp` varchar(15) DEFAULT NULL,
  `namaayah` varchar(150) DEFAULT NULL,
  `namaibu` varchar(150) DEFAULT NULL,
  `agama` varchar(15) DEFAULT NULL,
  `tinggibadan` int(11) DEFAULT NULL,
  `beratbadan` int(11) DEFAULT NULL,
  `golongandarah` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `atletprestasi`
--

INSERT INTO `atletprestasi` (`noidatletprestasi`, `noidcabor`, `nama`, `jnskelamin`, `tempatlahir`, `tgllahir`, `satus`, `nohp`, `alamatrumah`, `noktp`, `namaayah`, `namaibu`, `agama`, `tinggibadan`, `beratbadan`, `golongandarah`) VALUES
(1, 1, 'WAHYU DIAN SUSANTO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'B');

-- --------------------------------------------------------

--
-- Table structure for table `audittrail`
--

CREATE TABLE `audittrail` (
  `id` int(11) NOT NULL,
  `datetime` datetime NOT NULL,
  `script` varchar(80) DEFAULT NULL,
  `user` varchar(80) DEFAULT NULL,
  `action` varchar(80) DEFAULT NULL,
  `table` varchar(80) DEFAULT NULL,
  `field` varchar(80) DEFAULT NULL,
  `keyvalue` longtext DEFAULT NULL,
  `oldvalue` longtext DEFAULT NULL,
  `newvalue` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `audittrail`
--

INSERT INTO `audittrail` (`id`, `datetime`, `script`, `user`, `action`, `table`, `field`, `keyvalue`, `oldvalue`, `newvalue`) VALUES
(1, '2023-01-07 03:31:28', '/konikendal/login', 'Administrator', 'login', '::1', '', '', '', ''),
(2, '2023-01-07 03:34:59', '/konikendal/logout', 'Administrator', 'logout', '::1', '', '', '', ''),
(3, '2023-01-07 03:37:29', '/konikendal/login', 'Administrator', 'login', '::1', '', '', '', ''),
(4, '2023-01-07 10:26:11', '/logout', 'Administrator', 'logout', '36.71.82.165', '', '', '', ''),
(5, '2023-01-07 10:27:56', '/logout', '-1', 'logout', '36.71.82.165', '', '', '', ''),
(6, '2023-01-07 10:31:28', '/login', 'Administrator', 'login', '36.71.82.165', '', '', '', ''),
(7, '2023-01-11 03:54:18', '/login', 'Administrator', 'login', '182.253.107.242', '', '', '', ''),
(8, '2023-01-18 03:34:13', '/login', 'Administrator', 'login', '117.102.65.210', '', '', '', ''),
(9, '2023-01-18 03:34:46', '/logout', 'Administrator', 'logout', '117.102.65.210', '', '', '', ''),
(10, '2023-01-30 04:52:54', '/login', 'Administrator', 'login', '182.253.197.82', '', '', '', ''),
(11, '2023-01-30 05:07:08', '/login', 'Administrator', 'login', '117.102.65.210', '', '', '', ''),
(12, '2023-02-03 03:20:25', '/login', 'Administrator', 'login', '112.215.244.28', '', '', '', ''),
(13, '2023-02-03 03:26:24', '/logout', 'Administrator', 'logout', '112.215.244.28', '', '', '', ''),
(14, '2023-02-12 05:25:34', '/login', 'Administrator', 'login', '118.96.174.58', '', '', '', ''),
(15, '2023-02-12 06:02:58', '/login', 'Administrator', 'login', '118.96.174.58', '', '', '', ''),
(16, '2023-02-12 13:48:04', '/login', 'Administrator', 'login', '118.96.174.58', '', '', '', ''),
(17, '2023-02-13 03:57:28', '/login', 'Administrator', 'login', '117.102.65.186', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `cabor`
--

CREATE TABLE `cabor` (
  `noidcabor` int(11) NOT NULL,
  `namacabor` varchar(250) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `informasi lain` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cabor`
--

INSERT INTO `cabor` (`noidcabor`, `namacabor`, `deskripsi`, `informasi lain`) VALUES
(1, 'anggar', NULL, NULL),
(2, 'atletik', NULL, NULL),
(3, 'aeromodelling', NULL, NULL),
(4, 'bulu tangkis', NULL, NULL),
(5, 'balap sepeda', NULL, NULL),
(6, 'baseball softball', NULL, NULL),
(7, 'binaraga', NULL, NULL),
(8, 'bola voli', NULL, NULL),
(9, 'bola voli pasir', NULL, NULL),
(10, 'bola basket', NULL, NULL),
(11, 'bridge', NULL, NULL),
(12, 'dance sport', NULL, NULL),
(13, 'futsal', NULL, NULL),
(14, 'gulat', NULL, NULL),
(15, 'hapkindo', NULL, NULL),
(16, 'hockye', NULL, NULL),
(17, 'jujitsu', NULL, NULL),
(18, 'karate', NULL, NULL),
(19, 'kick boxing', NULL, NULL),
(20, 'menembak', NULL, NULL),
(21, 'muaythai', NULL, NULL),
(22, 'angkat berat', NULL, NULL),
(23, 'angkat besi', NULL, NULL),
(24, 'panahan', NULL, NULL),
(25, 'panjat tebing', NULL, NULL),
(26, 'pencak silat', NULL, NULL),
(27, 'pentanque', NULL, NULL),
(28, 'renang', NULL, NULL),
(29, 'sambo', NULL, NULL),
(30, 'senam', NULL, NULL),
(31, 'sepak bola', NULL, NULL),
(32, 'sepak takraw', NULL, NULL),
(33, 'taekwondo', NULL, NULL),
(34, 'tenis meja', NULL, NULL),
(35, 'woodball', NULL, NULL),
(36, 'wushu', NULL, NULL),
(37, 'dayung', NULL, NULL),
(38, 'tarung derajat', NULL, NULL),
(39, 'esport', NULL, NULL),
(40, 'catur', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jenjangpendidikanatletnonprestasi`
--

CREATE TABLE `jenjangpendidikanatletnonprestasi` (
  `noidjjgpddkatletnonpres` int(11) NOT NULL,
  `noidatletnonprestasi` int(11) NOT NULL,
  `jenjangpendidikan` varchar(150) DEFAULT NULL,
  `namalembaga` varchar(250) DEFAULT NULL,
  `tahun` varchar(4) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenjangpendidikanatletprestasi`
--

CREATE TABLE `jenjangpendidikanatletprestasi` (
  `noidjjgpddkatletpres` int(11) NOT NULL,
  `noidatletprestasi` int(11) NOT NULL,
  `jenjangpendidikan` varchar(150) DEFAULT NULL,
  `namalembaga` varchar(250) DEFAULT NULL,
  `tahun` varchar(4) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jenjangpendidikanatletprestasi`
--

INSERT INTO `jenjangpendidikanatletprestasi` (`noidjjgpddkatletpres`, `noidatletprestasi`, `jenjangpendidikan`, `namalembaga`, `tahun`, `keterangan`) VALUES
(1, 1, 'SMA', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kejuaraannonprestasi`
--

CREATE TABLE `kejuaraannonprestasi` (
  `noidjuaranonprestasi` int(11) NOT NULL,
  `noidatletnonprestasi` int(11) NOT NULL,
  `namakejuararaan` varchar(250) DEFAULT NULL,
  `tingkatkejuaraan` varchar(250) DEFAULT NULL,
  `nomorkelas` varchar(250) DEFAULT NULL,
  `prestasi` varchar(150) DEFAULT NULL,
  `tahun` varchar(4) DEFAULT NULL,
  `filepiagam` varchar(250) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kejuaraanprestasi`
--

CREATE TABLE `kejuaraanprestasi` (
  `noidjuaraprestasi` int(11) NOT NULL,
  `noidatletprestasi` int(11) NOT NULL,
  `namakejuararaan` varchar(250) DEFAULT NULL,
  `tingkatkejuaraan` varchar(250) DEFAULT NULL,
  `nomorkelas` varchar(250) DEFAULT NULL,
  `prestasi` varchar(150) DEFAULT NULL,
  `tahun` varchar(4) DEFAULT NULL,
  `filepiagam` varchar(250) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kejuaraanprestasi`
--

INSERT INTO `kejuaraanprestasi` (`noidjuaraprestasi`, `noidatletprestasi`, `namakejuararaan`, `tingkatkejuaraan`, `nomorkelas`, `prestasi`, `tahun`, `filepiagam`, `deskripsi`) VALUES
(1, 1, 'porda', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `klubatletnonprestasi`
--

CREATE TABLE `klubatletnonprestasi` (
  `noidklubnonprestasi` int(11) NOT NULL,
  `noidatletnonprestasi` int(11) NOT NULL,
  `namaklub` varchar(250) NOT NULL,
  `alamat klub` text DEFAULT NULL,
  `pengelolaklub` varchar(250) DEFAULT NULL,
  `nohpklub` varchar(20) DEFAULT NULL,
  `emailklub` varchar(15) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `klubatletprestasi`
--

CREATE TABLE `klubatletprestasi` (
  `noidklubprestasi` int(11) NOT NULL,
  `noidatletprestasi` int(11) NOT NULL,
  `namaklub` varchar(250) NOT NULL,
  `alamat klub` text DEFAULT NULL,
  `pengelolaklub` varchar(250) DEFAULT NULL,
  `nohpklub` varchar(20) DEFAULT NULL,
  `emailklub` varchar(15) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelatih`
--

CREATE TABLE `pelatih` (
  `noidpelatih` int(11) NOT NULL,
  `noidcabor` int(11) NOT NULL,
  `namapelatih` varchar(250) NOT NULL,
  `tempatlahir` varchar(250) DEFAULT NULL,
  `tgllahir` date DEFAULT NULL,
  `noktp` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `nohp` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `jeniskelamin` varchar(10) DEFAULT NULL,
  `golongandarah` varchar(3) DEFAULT NULL,
  `statusnikah` varchar(15) DEFAULT NULL,
  `pekerjaanlain` varchar(250) DEFAULT NULL,
  `deskripsicabor` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelatih`
--

INSERT INTO `pelatih` (`noidpelatih`, `noidcabor`, `namapelatih`, `tempatlahir`, `tgllahir`, `noktp`, `alamat`, `nohp`, `email`, `agama`, `jeniskelamin`, `golongandarah`, `statusnikah`, `pekerjaanlain`, `deskripsicabor`) VALUES
(1, 1, 'WSUSANTO', 'Kendal', '1987-04-28', '3324142804870002', 'DESA KENDAL', '', '', 'Islam', 'Lelaki', 'O', 'Menikah', 'GURU', 'ANGGAR / DEGEN'),
(2, 11, 'LIANTO', 'KENDAL', '1977-06-28', '3324072806770002', 'DUSUN L JAWA TENGAH', '', '', 'Islam', 'Lelaki', 'A', 'Menikah', 'Guru Olahraga', 'BRIDGE');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `noidpengguna` int(11) NOT NULL,
  `namapengguna` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `jabatan` varchar(250) DEFAULT NULL,
  `userlevelid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`noidpengguna`, `namapengguna`, `password`, `jabatan`, `userlevelid`) VALUES
(1, '', '', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `penguruscabor`
--

CREATE TABLE `penguruscabor` (
  `noidpengurus` int(11) NOT NULL,
  `noidcabor` int(11) NOT NULL,
  `namapengurus` varchar(250) NOT NULL,
  `tanggalsk` date DEFAULT NULL,
  `jabatan` varchar(250) DEFAULT NULL,
  `tanggalmulaisk` date DEFAULT NULL,
  `tanggalakhirsk` date DEFAULT NULL,
  `namafilesk` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayatpelatih`
--

CREATE TABLE `riwayatpelatih` (
  `noidriwpelatih` int(11) NOT NULL,
  `noidpelatih` int(11) NOT NULL,
  `namaasalklub` varchar(250) DEFAULT NULL,
  `tahunmulai` varchar(4) DEFAULT NULL,
  `infotambahan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwmelatih`
--

CREATE TABLE `riwmelatih` (
  `noidriwmelatih` int(11) NOT NULL,
  `noidpelatih` int(11) NOT NULL,
  `riwayatmelatih` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwpddkpelatih`
--

CREATE TABLE `riwpddkpelatih` (
  `noidpddk` int(11) NOT NULL,
  `noidpelatih` int(11) NOT NULL,
  `namapendidikan` varchar(250) DEFAULT NULL,
  `lembagapendidikan` varchar(250) DEFAULT NULL,
  `fileijazah` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwpelatihanpel`
--

CREATE TABLE `riwpelatihanpel` (
  `noidriwlat` int(11) NOT NULL,
  `noidpelatih` int(11) NOT NULL,
  `namapelatihan` varchar(250) DEFAULT NULL,
  `lembagapelatihan` varchar(250) DEFAULT NULL,
  `tahunpelatihan` varchar(4) DEFAULT NULL,
  `namafilesertifikat` varchar(150) DEFAULT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwprestasimelatih`
--

CREATE TABLE `riwprestasimelatih` (
  `noidriwprestasi` int(11) NOT NULL,
  `noidpelatih` int(11) NOT NULL,
  `riwayatprestasi` text DEFAULT NULL,
  `lain-lain` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userlevelpermissions`
--

CREATE TABLE `userlevelpermissions` (
  `userlevelid` int(11) NOT NULL,
  `tablename` varchar(80) NOT NULL,
  `permission` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userlevels`
--

CREATE TABLE `userlevels` (
  `userlevelid` int(11) NOT NULL,
  `userlevelname` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userlevels`
--

INSERT INTO `userlevels` (`userlevelid`, `userlevelname`) VALUES
(-2, 'Anonymous'),
(-1, 'Administrator'),
(0, 'Default');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atletnonprestasi`
--
ALTER TABLE `atletnonprestasi`
  ADD PRIMARY KEY (`noidatletnonprestasi`);

--
-- Indexes for table `atletprestasi`
--
ALTER TABLE `atletprestasi`
  ADD PRIMARY KEY (`noidatletprestasi`);

--
-- Indexes for table `audittrail`
--
ALTER TABLE `audittrail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cabor`
--
ALTER TABLE `cabor`
  ADD PRIMARY KEY (`noidcabor`);

--
-- Indexes for table `jenjangpendidikanatletnonprestasi`
--
ALTER TABLE `jenjangpendidikanatletnonprestasi`
  ADD PRIMARY KEY (`noidjjgpddkatletnonpres`);

--
-- Indexes for table `jenjangpendidikanatletprestasi`
--
ALTER TABLE `jenjangpendidikanatletprestasi`
  ADD PRIMARY KEY (`noidjjgpddkatletpres`);

--
-- Indexes for table `kejuaraannonprestasi`
--
ALTER TABLE `kejuaraannonprestasi`
  ADD PRIMARY KEY (`noidjuaranonprestasi`);

--
-- Indexes for table `kejuaraanprestasi`
--
ALTER TABLE `kejuaraanprestasi`
  ADD PRIMARY KEY (`noidjuaraprestasi`);

--
-- Indexes for table `klubatletnonprestasi`
--
ALTER TABLE `klubatletnonprestasi`
  ADD PRIMARY KEY (`noidklubnonprestasi`);

--
-- Indexes for table `klubatletprestasi`
--
ALTER TABLE `klubatletprestasi`
  ADD PRIMARY KEY (`noidklubprestasi`);

--
-- Indexes for table `pelatih`
--
ALTER TABLE `pelatih`
  ADD PRIMARY KEY (`noidpelatih`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`noidpengguna`);

--
-- Indexes for table `penguruscabor`
--
ALTER TABLE `penguruscabor`
  ADD PRIMARY KEY (`noidpengurus`);

--
-- Indexes for table `riwayatpelatih`
--
ALTER TABLE `riwayatpelatih`
  ADD PRIMARY KEY (`noidriwpelatih`);

--
-- Indexes for table `riwmelatih`
--
ALTER TABLE `riwmelatih`
  ADD PRIMARY KEY (`noidriwmelatih`);

--
-- Indexes for table `riwpddkpelatih`
--
ALTER TABLE `riwpddkpelatih`
  ADD PRIMARY KEY (`noidpddk`);

--
-- Indexes for table `riwpelatihanpel`
--
ALTER TABLE `riwpelatihanpel`
  ADD PRIMARY KEY (`noidriwlat`);

--
-- Indexes for table `riwprestasimelatih`
--
ALTER TABLE `riwprestasimelatih`
  ADD PRIMARY KEY (`noidriwprestasi`);

--
-- Indexes for table `userlevelpermissions`
--
ALTER TABLE `userlevelpermissions`
  ADD PRIMARY KEY (`userlevelid`,`tablename`);

--
-- Indexes for table `userlevels`
--
ALTER TABLE `userlevels`
  ADD PRIMARY KEY (`userlevelid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atletnonprestasi`
--
ALTER TABLE `atletnonprestasi`
  MODIFY `noidatletnonprestasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `atletprestasi`
--
ALTER TABLE `atletprestasi`
  MODIFY `noidatletprestasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audittrail`
--
ALTER TABLE `audittrail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `cabor`
--
ALTER TABLE `cabor`
  MODIFY `noidcabor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `jenjangpendidikanatletnonprestasi`
--
ALTER TABLE `jenjangpendidikanatletnonprestasi`
  MODIFY `noidjjgpddkatletnonpres` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenjangpendidikanatletprestasi`
--
ALTER TABLE `jenjangpendidikanatletprestasi`
  MODIFY `noidjjgpddkatletpres` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kejuaraannonprestasi`
--
ALTER TABLE `kejuaraannonprestasi`
  MODIFY `noidjuaranonprestasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kejuaraanprestasi`
--
ALTER TABLE `kejuaraanprestasi`
  MODIFY `noidjuaraprestasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `klubatletnonprestasi`
--
ALTER TABLE `klubatletnonprestasi`
  MODIFY `noidklubnonprestasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `klubatletprestasi`
--
ALTER TABLE `klubatletprestasi`
  MODIFY `noidklubprestasi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pelatih`
--
ALTER TABLE `pelatih`
  MODIFY `noidpelatih` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `noidpengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `penguruscabor`
--
ALTER TABLE `penguruscabor`
  MODIFY `noidpengurus` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayatpelatih`
--
ALTER TABLE `riwayatpelatih`
  MODIFY `noidriwpelatih` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwmelatih`
--
ALTER TABLE `riwmelatih`
  MODIFY `noidriwmelatih` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwpddkpelatih`
--
ALTER TABLE `riwpddkpelatih`
  MODIFY `noidpddk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwpelatihanpel`
--
ALTER TABLE `riwpelatihanpel`
  MODIFY `noidriwlat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwprestasimelatih`
--
ALTER TABLE `riwprestasimelatih`
  MODIFY `noidriwprestasi` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
