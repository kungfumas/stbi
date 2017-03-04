-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 04 Mar 2017 pada 05.12
-- Versi Server: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `upload`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `upload`
--

CREATE TABLE IF NOT EXISTS `upload` (
  `id_upload` int(11) NOT NULL,
  `nama_file` varchar(150) NOT NULL,
  `deskripsi` varchar(250) NOT NULL,
  `tgl_upload` date NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `upload`
--

INSERT INTO `upload` (`id_upload`, `nama_file`, `deskripsi`, `tgl_upload`, `hits`) VALUES
(0, 'Telkomnika_Form_Penilaian_Paper_Jurnal_Ilmiah.pdf', 'inilah dia', '2017-03-03', 0),
(0, 'Standar Operasional Prosedur Lembaga Pengabdian Kegiatan Seminar Hasil Pengabdian kepada Masyarakat.pdf', 'sgfsdgf', '2017-03-03', 0),
(0, 'Standar Operasional Prosedur Lembaga Pengabdian Kegiatan Seminar Hasil Pengabdian kepada Masyarakat.pdf', 'sgfsdgf', '2017-03-03', 0),
(0, 'Standar Operasional Prosedur Lembaga Pengabdian Kegiatan Seminar Hasil Pengabdian kepada Masyarakat.pdf', 'sgfsdgf', '2017-03-03', 0),
(0, 'Standar Operasional Prosedur Lembaga Pengabdian Kegiatan Seminar Hasil Pengabdian kepada Masyarakat.pdf', 'sgfsdgf', '2017-03-03', 0),
(0, 'Standar Operasional Prosedur Lembaga Pengabdian Kegiatan Seminar Hasil Pengabdian kepada Masyarakat.pdf', 'sgfsdgf', '2017-03-03', 0),
(0, 'Standar Operasional Prosedur Lembaga Pengabdian Kegiatan Seminar Hasil Pengabdian kepada Masyarakat.pdf', 'sgfsdgf', '2017-03-03', 0),
(0, 'Standar Operasional Prosedur Lembaga Pengabdian 01.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'Standar Operasional Prosedur Lembaga Pengabdian Proses Kontrak Pelaksanaan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'Standar Operasional Prosedur Lembaga Pengabdian Proses Kontrak Pelaksanaan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'uupangan3.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'uupangan3.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'uji.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'ujia3.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'ujia3.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'ujia3.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'bimbingan.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'uupangan13.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'uupangan13.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'uupangan13.pdf', 'sdfgsdgf', '2017-03-04', 0),
(0, 'uupangan13.pdf', 'gsdgfsdgf', '2017-03-04', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
