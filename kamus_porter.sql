-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 17. Maret 2012 jam 05:01
-- Versi Server: 5.1.41
-- Versi PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kamus_porter`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dsr_milik`
--

CREATE TABLE IF NOT EXISTS `dsr_milik` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `dsr_milik`
--

INSERT INTO `dsr_milik` (`id`, `name`) VALUES
(1, 'bangku'),
(2, 'suku');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dsr_milik_prefiks`
--

CREATE TABLE IF NOT EXISTS `dsr_milik_prefiks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `dsr_milik_prefiks`
--

INSERT INTO `dsr_milik_prefiks` (`id`, `name`) VALUES
(1, 'bersuku');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dsr_partikel`
--

CREATE TABLE IF NOT EXISTS `dsr_partikel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `dsr_partikel`
--

INSERT INTO `dsr_partikel` (`id`, `name`) VALUES
(4, 'langkah'),
(5, 'rekah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dsr_partikel_prefiks`
--

CREATE TABLE IF NOT EXISTS `dsr_partikel_prefiks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `dsr_partikel_prefiks`
--

INSERT INTO `dsr_partikel_prefiks` (`id`, `name`) VALUES
(1, 'merekah'),
(2, 'melangkah'),
(3, 'menikah'),
(4, 'memilah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dsr_prefiks1`
--

CREATE TABLE IF NOT EXISTS `dsr_prefiks1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `dsr_prefiks1`
--

INSERT INTO `dsr_prefiks1` (`id`, `name`) VALUES
(1, 'merah'),
(2, 'penjara'),
(3, 'percaya'),
(4, 'sepakat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dsr_prefiks1_sufiks`
--

CREATE TABLE IF NOT EXISTS `dsr_prefiks1_sufiks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `dsr_prefiks1_sufiks`
--

INSERT INTO `dsr_prefiks1_sufiks` (`id`, `name`) VALUES
(1, 'penjarakan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dsr_prefiks2`
--

CREATE TABLE IF NOT EXISTS `dsr_prefiks2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data untuk tabel `dsr_prefiks2`
--

INSERT INTO `dsr_prefiks2` (`id`, `name`) VALUES
(1, 'percaya'),
(3, 'belalang'),
(4, 'belang'),
(5, 'terjemah'),
(6, 'berik'),
(8, 'kepala');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dsr_prefiks2_sufiks`
--

CREATE TABLE IF NOT EXISTS `dsr_prefiks2_sufiks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `dsr_prefiks2_sufiks`
--

INSERT INTO `dsr_prefiks2_sufiks` (`id`, `name`) VALUES
(1, 'berikan'),
(2, 'penjarakan'),
(4, 'terjemahkan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dsr_sufiks`
--

CREATE TABLE IF NOT EXISTS `dsr_sufiks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data untuk tabel `dsr_sufiks`
--

INSERT INTO `dsr_sufiks` (`id`, `name`) VALUES
(1, 'pantai'),
(14, 'tari'),
(3, 'gapai'),
(4, 'anarki'),
(6, 'makan'),
(7, 'lari'),
(8, 'beli'),
(9, 'nyanyi'),
(10, 'semai'),
(11, 'informasi'),
(12, 'istri'),
(13, 'pakai'),
(15, 'tangki');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
