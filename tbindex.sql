-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2017 at 05:56 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbstbi`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbindex`
--

CREATE TABLE `tbindex` (
  `Id` int(11) NOT NULL,
  `Term` varchar(30) NOT NULL,
  `DocId` varchar(150) NOT NULL,
  `Count` int(11) NOT NULL,
  `Bobot` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbindex`
--

INSERT INTO `tbindex` (`Id`, `Term`, `DocId`, `Count`, `Bobot`) VALUES
(1, '\n	\n\r\n', './files/Perpres0082012.pdf', 1, 1.38629),
(2, '\n', './files/Perpres0082012.pdf', 1, 1.38629),
(3, '	\n', './files/Perpres0082012.pdf', 1, 1.38629),
(4, '\Z*\Z%', './files/Perpres0082012.pdf', 1, 1.38629),
(5, '3', './files/Perpres0082012.pdf', 1, 1.38629),
(6, '\n\n', './files/Perpres0082012.pdf', 1, 1.38629),
(7, '', './files/Perpres0082012.pdf', 1, 1.38629),
(8, '*\n%+', './files/Perpres0082012.pdf', 1, 1.38629),
(9, '7', './files/Perpres0082012.pdf', 1, 1.38629),
(10, '\n\Z*\Z%', './files/Perpres0082012.pdf', 1, 1.38629),
(11, '\n	\Z%21\Z1', './files/Perpres0082012.pdf', 1, 1.38629),
(12, '\n\Z\Z%2&', './files/Perpres0082012.pdf', 1, 1.38629),
(13, '\n%$96\n', './files/Perpres0082012.pdf', 1, 1.38629),
(14, '\n5\n', './files/Perpres0082012.pdf', 1, 1.38629),
(15, '\n6\n\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(16, '\n%\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(17, '\n3', './files/Perpres0082012.pdf', 3, 4.15888),
(18, '\n\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(19, '\n\Z*%&&\Z3$3$&*3', './files/Perpres0082012.pdf', 1, 1.38629),
(20, '\n\Z', './files/Perpres0082012.pdf', 2, 2.77259),
(21, '\n%$5\n16\n', './files/Perpres0082012.pdf', 1, 1.38629),
(22, '\n6\n', './files/Perpres0082012.pdf', 1, 1.38629),
(23, '\n6\n1\Z1', './files/Perpres0082012.pdf', 1, 1.38629),
(24, '\n%\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(25, '\n+', './files/Perpres0082012.pdf', 1, 1.38629),
(26, '\n2\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(27, '\n3%\Z%$&', './files/Perpres0082012.pdf', 1, 1.38629),
(28, '\n32\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(29, '\n3', './files/Perpres0082012.pdf', 1, 1.38629),
(30, '\n9+', './files/Perpres0082012.pdf', 1, 1.38629),
(31, '\Z%\Z\n', './files/Perpres0082012.pdf', 1, 1.38629),
(32, '\n+', './files/Perpres0082012.pdf', 1, 1.38629),
(33, '5\n', './files/Perpres0082012.pdf', 1, 1.38629),
(34, '\n\n+', './files/Perpres0082012.pdf', 1, 1.38629),
(35, '\n', './files/Perpres0082012.pdf', 1, 1.38629),
(36, '+', './files/Perpres0082012.pdf', 1, 1.38629),
(37, '\n3', './files/Perpres0082012.pdf', 1, 1.38629),
(38, '5\n6\n', './files/Perpres0082012.pdf', 1, 1.38629),
(39, '6', './files/Perpres0082012.pdf', 1, 1.38629),
(40, '\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(41, '\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(42, '$2$$', './files/Perpres0082012.pdf', 1, 1.38629),
(43, '3', './files/Perpres0082012.pdf', 1, 1.38629),
(44, '$&%%\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(45, '%$', './files/Perpres0082012.pdf', 1, 1.38629),
(46, '%\Z%', './files/Perpres0082012.pdf', 1, 1.38629),
(47, '%\Z2%\n*', './files/Perpres0082012.pdf', 1, 1.38629),
(48, '&\Z2$*', './files/Perpres0082012.pdf', 1, 1.38629),
(49, '&$', './files/Perpres0082012.pdf', 8, 11.0904),
(50, '*\n', './files/Perpres0082012.pdf', 1, 1.38629),
(51, '+\r\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(52, '0\n+', './files/Perpres0082012.pdf', 1, 1.38629),
(53, '03&\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(54, '05\n', './files/Perpres0082012.pdf', 1, 1.38629),
(55, '1\Z1', './files/Perpres0082012.pdf', 1, 1.38629),
(56, '2\Z', './files/Perpres0082012.pdf', 2, 2.77259),
(57, '2\Z*3', './files/Perpres0082012.pdf', 1, 1.38629),
(58, '2\Z33&33', './files/Perpres0082012.pdf', 1, 1.38629),
(59, '2\Z\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(60, '2\Z&\Z', './files/Perpres0082012.pdf', 2, 2.77259),
(61, '3&', './files/Perpres0082012.pdf', 1, 1.38629),
(62, '3&$', './files/Perpres0082012.pdf', 1, 1.38629),
(63, '3%\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(64, '3&\Z', './files/Perpres0082012.pdf', 2, 2.77259),
(65, '32\Z', './files/Perpres0082012.pdf', 6, 8.31777),
(66, '3', './files/Perpres0082012.pdf', 2, 2.77259),
(67, '32%\Z*3', './files/Perpres0082012.pdf', 1, 1.38629),
(68, '7\n+', './files/Perpres0082012.pdf', 1, 1.38629),
(69, '7*%+', './files/Perpres0082012.pdf', 1, 1.38629),
(70, '7\n', './files/Perpres0082012.pdf', 1, 1.38629),
(71, '7', './files/Perpres0082012.pdf', 1, 1.38629),
(72, '75\n\Z6', './files/Perpres0082012.pdf', 1, 1.38629),
(73, '8\n', './files/Perpres0082012.pdf', 2, 2.77259),
(74, '9+', './files/Perpres0082012.pdf', 1, 1.38629),
(75, '93&\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(76, '95\n6\n', './files/Perpres0082012.pdf', 1, 1.38629),
(77, '\n\n	\n\r', './files/Perpres0082012.pdf', 1, 0),
(78, '\n\n	\n\r', './files/Perpres0082012.pdf', 2, 0),
(79, '\n\n	\n\r', './files/Perpres0082012.pdf', 1, 0),
(80, '\n\n	\n\r', './files/Perpres0082012.pdf', 1, 0),
(81, '\n\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(82, '\n\Z*\Z%', './files/Perpres0082012.pdf', 3, 4.15888),
(83, '\n\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(84, '\n\n3', './files/Perpres0082012.pdf', 1, 1.38629),
(85, '\n\n6\n', './files/Perpres0082012.pdf', 1, 1.38629),
(86, '\n\Z\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(87, '\n3', './files/Perpres0082012.pdf', 1, 1.38629),
(88, '\n	\Z%21\Z1', './files/Perpres0082012.pdf', 1, 1.38629),
(89, '\n\n1@', './files/Perpres0082012.pdf', 1, 1.38629),
(90, '\n\r2\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(91, '\n\n%\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(92, '\n%', './files/Perpres0082012.pdf', 1, 1.38629),
(93, '\n\n1%', './files/Perpres0082012.pdf', 1, 1.38629),
(94, '\n\n1%', './files/Perpres0082012.pdf', 1, 1.38629),
(95, '\n\n1%%\Z&', './files/Perpres0082012.pdf', 1, 1.38629),
(96, '\n22\Z\Z', './files/Perpres0082012.pdf', 2, 2.77259),
(97, '\n6\n+', './files/Perpres0082012.pdf', 1, 1.38629),
(98, '', './files/Perpres0082012.pdf', 2, 2.77259),
(99, '', './files/Perpres0082012.pdf', 1, 1.38629),
(100, '\n396\n+', './files/Perpres0082012.pdf', 1, 1.38629),
(101, '305\n', './files/Perpres0082012.pdf', 1, 1.38629),
(102, '3&#x0000', './files/Perpres0082012.pdf', 1, 1.38629),
(103, '\Z\n3', './files/Perpres0082012.pdf', 1, 1.38629),
(104, '\Z1', './files/Perpres0082012.pdf', 1, 1.38629),
(105, '\Z3', './files/Perpres0082012.pdf', 6, 8.31777),
(106, '\Z', './files/Perpres0082012.pdf', 2, 2.77259),
(107, '\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(108, '\Z%\n', './files/Perpres0082012.pdf', 1, 1.38629),
(109, '\Z%\n', './files/Perpres0082012.pdf', 1, 1.38629),
(110, '\Z3%', './files/Perpres0082012.pdf', 1, 1.38629),
(111, '', './files/Perpres0082012.pdf', 2, 2.77259),
(112, '\n&\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(113, '\n*', './files/Perpres0082012.pdf', 1, 1.38629),
(114, '\n1\Z1', './files/Perpres0082012.pdf', 1, 1.38629),
(115, '\n', './files/Perpres0082012.pdf', 1, 1.38629),
(116, '\Z', './files/Perpres0082012.pdf', 2, 2.77259),
(117, '\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(118, '%', './files/Perpres0082012.pdf', 3, 4.15888),
(119, '%$', './files/Perpres0082012.pdf', 1, 1.38629),
(120, '3', './files/Perpres0082012.pdf', 2, 2.77259),
(121, '$$', './files/Perpres0082012.pdf', 1, 1.38629),
(122, '%\Z', './files/Perpres0082012.pdf', 2, 2.77259),
(123, '&\Z', './files/Perpres0082012.pdf', 3, 4.15888),
(124, '*', './files/Perpres0082012.pdf', 2, 2.77259),
(125, '2\Z', './files/Perpres0082012.pdf', 2, 2.77259),
(126, '23\n\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(127, '23\n\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(128, '23\n%\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(129, '23\n3\Z\n', './files/Perpres0082012.pdf', 1, 1.38629),
(130, '23\n\n%\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(131, '23\n\n3', './files/Perpres0082012.pdf', 1, 1.38629),
(132, '23\n\n\Z8\n2\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(133, '3\n&$$', './files/Perpres0082012.pdf', 1, 1.38629),
(134, '\n3$', './files/Perpres0082012.pdf', 1, 1.38629),
(135, '\n%\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(136, '%\Z\n', './files/Perpres0082012.pdf', 1, 1.38629),
(137, '%', './files/Perpres0082012.pdf', 2, 2.77259),
(138, '', './files/Perpres0082012.pdf', 1, 1.38629),
(139, '', './files/Perpres0082012.pdf', 2, 2.77259),
(140, '\n', './files/Perpres0082012.pdf', 2, 2.77259),
(141, '\n', './files/Perpres0082012.pdf', 1, 1.38629),
(142, '\n	%3', './files/Perpres0082012.pdf', 1, 1.38629),
(143, '*', './files/Perpres0082012.pdf', 1, 1.38629),
(144, '\n', './files/Perpres0082012.pdf', 1, 1.38629),
(145, '2\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(146, '5\n\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(147, '6\n6\n', './files/Perpres0082012.pdf', 1, 1.38629),
(148, '&\n\n3', './files/Perpres0082012.pdf', 2, 2.77259),
(149, '&\n3', './files/Perpres0082012.pdf', 3, 4.15888),
(150, '&*\n&', './files/Perpres0082012.pdf', 1, 1.38629),
(151, '&&\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(152, '&&', './files/Perpres0082012.pdf', 1, 1.38629),
(153, '&\n%', './files/Perpres0082012.pdf', 1, 1.38629),
(154, '&2&\Z%', './files/Perpres0082012.pdf', 1, 1.38629),
(155, '&#x0000', './files/Perpres0082012.pdf', 1, 1.38629),
(156, '3\Z*', './files/Perpres0082012.pdf', 1, 1.38629),
(157, '3\Z6\n\n', './files/Perpres0082012.pdf', 1, 1.38629),
(158, '3\Z%\Z%\n', './files/Perpres0082012.pdf', 1, 1.38629),
(159, '4*', './files/Perpres0082012.pdf', 1, 1.38629),
(160, '4&\n', './files/Perpres0082012.pdf', 1, 1.38629),
(161, '4&', './files/Perpres0082012.pdf', 13, 18.0218),
(162, '6\n', './files/Perpres0082012.pdf', 2, 2.77259),
(163, '6\n+', './files/Perpres0082012.pdf', 1, 1.38629),
(164, '6\n+', './files/Perpres0082012.pdf', 2, 2.77259),
(165, '6\n06\n	\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(166, '2', './files/Perpres0082012.pdf', 1, 1.38629),
(167, '2', './files/Perpres0082012.pdf', 1, 1.38629),
(168, '7%$	', './files/Perpres0082012.pdf', 1, 1.38629),
(169, '2\n\Z%\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(170, '2\Z\n%\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(171, '2\Z%\Z', './files/Perpres0082012.pdf', 14, 19.4081),
(172, '\Z\n%$&1@', './files/Perpres0082012.pdf', 1, 1.38629),
(173, '%&\n', './files/Perpres0082012.pdf', 1, 1.38629),
(174, '1\n\Z&%4\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(175, '\Z2$\n', './files/Perpres0082012.pdf', 1, 1.38629),
(176, '\Z2$', './files/Perpres0082012.pdf', 4, 5.54518),
(177, '\n', './files/Perpres0082012.pdf', 1, 1.38629),
(178, '\n3\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(179, '\n%\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(180, '3', './files/Perpres0082012.pdf', 1, 1.38629),
(181, '3\Z\n', './files/Perpres0082012.pdf', 1, 1.38629),
(182, '3\Z\n', './files/Perpres0082012.pdf', 1, 1.38629),
(183, '3\Z', './files/Perpres0082012.pdf', 10, 13.8629),
(184, '\n*', './files/Perpres0082012.pdf', 1, 1.38629),
(185, '\n&\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(186, '\Z\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(187, '', './files/Perpres0082012.pdf', 3, 4.15888),
(188, '\Z', './files/Perpres0082012.pdf', 4, 5.54518),
(189, '	%3', './files/Perpres0082012.pdf', 1, 1.38629),
(190, '\n\Z\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(191, '\n', './files/Perpres0082012.pdf', 1, 1.38629),
(192, '\n&\Z', './files/Perpres0082012.pdf', 3, 4.15888),
(193, '\n*', './files/Perpres0082012.pdf', 1, 1.38629),
(194, '\n1\Z1', './files/Perpres0082012.pdf', 2, 2.77259),
(195, '2', './files/Perpres0082012.pdf', 4, 5.54518),
(196, '', './files/Perpres0082012.pdf', 1, 1.38629),
(197, '\r\Z', './files/Perpres0082012.pdf', 2, 2.77259),
(198, '\Z', './files/Perpres0082012.pdf', 2, 2.77259),
(199, '', './files/Perpres0082012.pdf', 1, 1.38629),
(200, '3', './files/Perpres0082012.pdf', 1, 1.38629),
(201, '&\Z', './files/Perpres0082012.pdf', 9, 12.4766),
(202, '&$', './files/Perpres0082012.pdf', 1, 1.38629),
(203, '*', './files/Perpres0082012.pdf', 11, 15.2492),
(204, '1\Z\n1', './files/Perpres0082012.pdf', 1, 1.38629),
(205, '1\Z\n1', './files/Perpres0082012.pdf', 1, 1.38629),
(206, '1\Z1\n', './files/Perpres0082012.pdf', 2, 2.77259),
(207, '1\Z1', './files/Perpres0082012.pdf', 15, 20.7944),
(208, '2\Z33&\Z\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(209, '2\Z33&', './files/Perpres0082012.pdf', 1, 1.38629),
(210, '2\Z33&2', './files/Perpres0082012.pdf', 1, 1.38629),
(211, '2\Z33&3', './files/Perpres0082012.pdf', 1, 1.38629),
(212, '2\Z', './files/Perpres0082012.pdf', 3, 4.15888),
(213, '32\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(214, '\n\n\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(215, '\n1$%*38\n', './files/Perpres0082012.pdf', 1, 1.38629),
(216, '&', './files/Perpres0082012.pdf', 1, 1.38629),
(217, '&&\Z%\Z%$', './files/Perpres0082012.pdf', 1, 1.38629),
(218, '%$3', './files/Perpres0082012.pdf', 1, 1.38629),
(219, '\n', './files/Perpres0082012.pdf', 1, 1.38629),
(220, '&', './files/Perpres0082012.pdf', 1, 1.38629),
(221, '1\Z1', './files/Perpres0082012.pdf', 2, 2.77259),
(222, '3', './files/Perpres0082012.pdf', 1, 1.38629),
(223, '\n8', './files/Perpres0082012.pdf', 1, 1.38629),
(224, '%$', './files/Perpres0082012.pdf', 1, 1.38629),
(225, '%\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(226, '3&', './files/Perpres0082012.pdf', 6, 8.31777),
(227, '\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(228, '\n3', './files/Perpres0082012.pdf', 1, 1.38629),
(229, '\r2', './files/Perpres0082012.pdf', 1, 1.38629),
(230, '\n6\n', './files/Perpres0082012.pdf', 1, 1.38629),
(231, '\Z%$&', './files/Perpres0082012.pdf', 1, 1.38629),
(232, '\Z%$&&\Z%\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(233, '', './files/Perpres0082012.pdf', 1, 1.38629),
(234, '2\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(235, '\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(236, '&\Z', './files/Perpres0082012.pdf', 9, 12.4766),
(237, '2', './files/Perpres0082012.pdf', 1, 1.38629),
(238, '23\Z\n', './files/Perpres0082012.pdf', 1, 1.38629),
(239, '23\Z', './files/Perpres0082012.pdf', 3, 4.15888),
(240, '3', './files/Perpres0082012.pdf', 1, 1.38629),
(241, '', './files/Perpres0082012.pdf', 6, 8.31777),
(242, '&$', './files/Perpres0082012.pdf', 1, 1.38629),
(243, '3\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(244, '%\n', './files/Perpres0082012.pdf', 1, 1.38629),
(245, '%$	%3', './files/Perpres0082012.pdf', 1, 1.38629),
(246, '&3\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(247, '&%6\n\n\n\n', './files/Perpres0082012.pdf', 1, 1.38629),
(248, '&$%', './files/Perpres0082012.pdf', 2, 2.77259),
(249, '&$&\n', './files/Perpres0082012.pdf', 1, 1.38629),
(250, '&$32\Z*\Z%', './files/Perpres0082012.pdf', 1, 1.38629),
(251, '&$&\n3\Z', './files/Perpres0082012.pdf', 2, 2.77259),
(252, '&$&%', './files/Perpres0082012.pdf', 1, 1.38629),
(253, '&$&', './files/Perpres0082012.pdf', 1, 1.38629),
(254, '&$&2\Z&\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(255, '&$2', './files/Perpres0082012.pdf', 1, 1.38629),
(256, '23	', './files/Perpres0082012.pdf', 1, 1.38629),
(257, '23', './files/Perpres0082012.pdf', 1, 1.38629),
(258, '23', './files/Perpres0082012.pdf', 1, 1.38629),
(259, '22\Z\Z', './files/Perpres0082012.pdf', 10, 13.8629),
(260, '#$%$&\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(261, '$\Z\Z%2&\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(262, '$', './files/Perpres0082012.pdf', 2, 2.77259),
(263, '$0', './files/Perpres0082012.pdf', 1, 1.38629),
(264, '$0%\Z%\n', './files/Perpres0082012.pdf', 1, 1.38629),
(265, '$0%\Z%', './files/Perpres0082012.pdf', 1, 1.38629),
(266, '$97', './files/Perpres0082012.pdf', 1, 1.38629),
(267, '$\n%\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(268, '$\n2\Z', './files/Perpres0082012.pdf', 2, 2.77259),
(269, '$\n2\Z33&6\n+7', './files/Perpres0082012.pdf', 1, 1.38629),
(270, '$\n2\Z', './files/Perpres0082012.pdf', 2, 2.77259),
(271, '$$1\n&', './files/Perpres0082012.pdf', 1, 1.38629),
(272, '$2\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(273, '$2\Z33\n&2\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(274, '$2\Z33\n&%$\n2\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(275, '$2\Z33\n&2\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(276, '$2\Z33&%$2\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(277, '$2\Z8\n33&3\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(278, '$', './files/Perpres0082012.pdf', 1, 1.38629),
(279, '$	%3', './files/Perpres0082012.pdf', 1, 1.38629),
(280, '$\n3\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(281, '$\n3\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(282, '$3\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(283, '$&%$', './files/Perpres0082012.pdf', 1, 1.38629),
(284, '$2&\Z%$&2\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(285, '$2&\n\Z%$&\n2\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(286, '$323\n*%+', './files/Perpres0082012.pdf', 1, 1.38629),
(287, '$323*\n%+', './files/Perpres0082012.pdf', 1, 1.38629),
(288, '$323*\n%+', './files/Perpres0082012.pdf', 1, 1.38629),
(289, '$323*%+', './files/Perpres0082012.pdf', 1, 1.38629),
(290, '$323*%+', './files/Perpres0082012.pdf', 2, 2.77259),
(291, '$33\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(292, '%\Z%$\n*', './files/Perpres0082012.pdf', 1, 1.38629),
(293, '%\Z%$', './files/Perpres0082012.pdf', 2, 2.77259),
(294, '%\Z%$31', './files/Perpres0082012.pdf', 1, 1.38629),
(295, '%\Z\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(296, '%\Z\n\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(297, '%\Z%', './files/Perpres0082012.pdf', 1, 1.38629),
(298, '%', './files/Perpres0082012.pdf', 1, 1.38629),
(299, '%4&', './files/Perpres0082012.pdf', 4, 5.54518),
(300, '%4&%\n&', './files/Perpres0082012.pdf', 1, 1.38629),
(301, '%4&%', './files/Perpres0082012.pdf', 2, 2.77259),
(302, '%4&%&', './files/Perpres0082012.pdf', 3, 4.15888),
(303, '%4&%\n6\n+', './files/Perpres0082012.pdf', 1, 1.38629),
(304, '%\n2\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(305, '%2\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(306, '&\n\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(307, '&\n$', './files/Perpres0082012.pdf', 1, 1.38629),
(308, '&$', './files/Perpres0082012.pdf', 1, 1.38629),
(309, '&#&%$%\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(310, '&&$', './files/Perpres0082012.pdf', 1, 1.38629),
(311, '&2\Z1\Z1', './files/Perpres0082012.pdf', 1, 1.38629),
(312, '&2\Z\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(313, '&\n', './files/Perpres0082012.pdf', 1, 1.38629),
(314, '&\Z\n', './files/Perpres0082012.pdf', 4, 5.54518),
(315, '&\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(316, '&3', './files/Perpres0082012.pdf', 1, 1.38629),
(317, '&&', './files/Perpres0082012.pdf', 1, 1.38629),
(318, '&\n', './files/Perpres0082012.pdf', 1, 1.38629),
(319, '&\Z*\Z%', './files/Perpres0082012.pdf', 1, 1.38629),
(320, '&%\n2\Z33&', './files/Perpres0082012.pdf', 1, 1.38629),
(321, '&%\n3', './files/Perpres0082012.pdf', 1, 1.38629),
(322, '&%', './files/Perpres0082012.pdf', 1, 1.38629),
(323, '&%', './files/Perpres0082012.pdf', 1, 1.38629),
(324, '&%%\Z&', './files/Perpres0082012.pdf', 1, 1.38629),
(325, '&$%\Z&\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(326, '&&3', './files/Perpres0082012.pdf', 3, 4.15888),
(327, '1\n3', './files/Perpres0082012.pdf', 1, 1.38629),
(328, '1', './files/Perpres0082012.pdf', 3, 4.15888),
(329, '13*%&3', './files/Perpres0082012.pdf', 1, 1.38629),
(330, '1\n', './files/Perpres0082012.pdf', 1, 1.38629),
(331, '1\n3*%&3', './files/Perpres0082012.pdf', 1, 1.38629),
(332, '1%$2\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(333, '13', './files/Perpres0082012.pdf', 3, 4.15888),
(334, '1%\Z\n', './files/Perpres0082012.pdf', 1, 1.38629),
(335, '1%', './files/Perpres0082012.pdf', 3, 4.15888),
(336, '1*', './files/Perpres0082012.pdf', 1, 1.38629),
(337, '13\Z', './files/Perpres0082012.pdf', 3, 4.15888),
(338, '13', './files/Perpres0082012.pdf', 1, 1.38629),
(339, '1\n', './files/Perpres0082012.pdf', 1, 1.38629),
(340, '1%\n', './files/Perpres0082012.pdf', 1, 1.38629),
(341, '132\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(342, '1\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(343, '1\n2', './files/Perpres0082012.pdf', 1, 1.38629),
(344, '11\n&\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(345, '1\n+\r\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(346, '1*', './files/Perpres0082012.pdf', 1, 1.38629),
(347, '13\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(348, '16\n', './files/Perpres0082012.pdf', 2, 2.77259),
(349, '16\n', './files/Perpres0082012.pdf', 1, 1.38629),
(350, '16\n76\n$', './files/Perpres0082012.pdf', 1, 1.38629),
(351, '16\n\n+', './files/Perpres0082012.pdf', 1, 1.38629),
(352, '5\n63', './files/Perpres0082012.pdf', 1, 1.38629),
(353, '5\n', './files/Perpres0082012.pdf', 1, 1.38629),
(354, '5\n	', './files/Perpres0082012.pdf', 1, 1.38629),
(355, '5\n6\n', './files/Perpres0082012.pdf', 1, 1.38629),
(356, '5\n6\n1\Z1', './files/Perpres0082012.pdf', 1, 1.38629),
(357, '5\n36\n', './files/Perpres0082012.pdf', 1, 1.38629),
(358, '5\n46\n', './files/Perpres0082012.pdf', 1, 1.38629),
(359, '6\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(360, '6\n', './files/Perpres0082012.pdf', 1, 1.38629),
(361, '6	\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(362, '6\n6\n22\Z\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(363, '6\n+', './files/Perpres0082012.pdf', 1, 1.38629),
(364, '6\n\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(365, '6\n\Z*\Z%', './files/Perpres0082012.pdf', 1, 1.38629),
(366, '6\n	\Z', './files/Perpres0082012.pdf', 1, 1.38629),
(367, '6\n1\Z1', './files/Perpres0082012.pdf', 1, 1.38629),
(368, '83', './files/Perpres0082012.pdf', 2, 2.77259),
(369, '9\n', './files/Perpres0082012.pdf', 1, 1.38629),
(370, '\n2014\n', './files/UU 062014(1).pdf', 1, 0.693147),
(371, '\nadalah\n', './files/UU 062014(1).pdf', 1, 0.693147),
(372, '\nadalah', './files/UU 062014(1).pdf', 1, 0.693147),
(373, '\nagar', './files/UU 062014(1).pdf', 1, 0.693147),
(374, '\nantara', './files/UU 062014(1).pdf', 1, 0.693147),
(375, '\natau', './files/UU 062014(1).pdf', 1, 0.693147),
(376, '\nayat', './files/UU 062014(1).pdf', 1, 0.693147),
(377, '\nbab', './files/UU 062014(1).pdf', 1, 0.287682),
(378, '\nbadan', './files/UU 062014(1).pdf', 2, 1.38629),
(379, '\nbahwa', './files/UU 062014(1).pdf', 4, 2.77259),
(380, '\nbentuk', './files/UU 062014(1).pdf', 1, 0.693147),
(381, '\nbersifat', './files/UU 062014(1).pdf', 1, 0.693147),
(382, '\nbesar\n', './files/UU 062014(1).pdf', 1, 0.693147),
(383, '\nbum', './files/UU 062014(1).pdf', 1, 0.693147),
(384, '\ncita', './files/UU 062014(1).pdf', 1, 0.693147),
(385, '\ndalam\n', './files/UU 062014(1).pdf', 1, 0.693147),
(386, '\ndalam', './files/UU 062014(1).pdf', 3, 0.863046),
(387, '\ndan\n', './files/UU 062014(1).pdf', 1, 0.287682),
(388, '\ndan', './files/UU 062014(1).pdf', 1, 0.693147),
(389, '\ndengan', './files/UU 062014(1).pdf', 5, 1.43841),
(390, '\ndesa\n', './files/UU 062014(1).pdf', 1, 0.693147),
(391, '\ndesa', './files/UU 062014(1).pdf', 2, 1.38629),
(392, '\ndewan', './files/UU 062014(1).pdf', 1, 0.287682),
(393, '\ndiatur', './files/UU 062014(1).pdf', 1, 0.693147),
(394, '\ndimaksud', './files/UU 062014(1).pdf', 1, 0.693147),
(395, '\ndimiliki', './files/UU 062014(1).pdf', 1, 0.693147),
(396, '\ndisebut', './files/UU 062014(1).pdf', 1, 0.693147),
(397, '\nfungsi', './files/UU 062014(1).pdf', 1, 0.693147),
(398, '\nguna', './files/UU 062014(1).pdf', 1, 0.693147),
(399, '\nindonesia', './files/UU 062014(1).pdf', 2, 0.575364),
(400, '\nkekayaan', './files/UU 062014(1).pdf', 1, 0.693147),
(401, '\nkemerdekaan', './files/UU 062014(1).pdf', 1, 0.693147),
(402, '\nkepentingan', './files/UU 062014(1).pdf', 1, 0.693147),
(403, '\nkesatuan', './files/UU 062014(1).pdf', 1, 0.693147),
(404, '\nketentuan', './files/UU 062014(1).pdf', 1, 0.287682),
(405, '\nlain', './files/UU 062014(1).pdf', 2, 1.38629),
(406, '\nlembaga', './files/UU 062014(1).pdf', 1, 0.693147),
(407, '\nmakmur', './files/UU 062014(1).pdf', 1, 0.693147),
(408, '\nmasyarakat', './files/UU 062014(1).pdf', 3, 0.863046),
(409, '\nmelaksanakan\n', './files/UU 062014(1).pdf', 1, 0.693147),
(410, '\nmembentuk', './files/UU 062014(1).pdf', 1, 0.693147),
(411, '\nmemutuska\nn\n', './files/UU 062014(1).pdf', 1, 0.693147),
(412, '\nmenetapkan\n', './files/UU 062014(1).pdf', 1, 0.693147),
(413, '\nmengingat\n', './files/UU 062014(1).pdf', 1, 0.693147),
(414, '\nmengurus', './files/UU 062014(1).pdf', 1, 0.693147),
(415, '\nmenimbang\n', './files/UU 062014(1).pdf', 1, 0.693147),
(416, '\nmodalnya\n', './files/UU 062014(1).pdf', 1, 0.693147),
(417, '\nmusyawarah\n', './files/UU 062014(1).pdf', 1, 0.693147),
(418, '\nmusyawarah', './files/UU 062014(1).pdf', 1, 0.693147),
(419, '\nnama\n', './files/UU 062014(1).pdf', 1, 0.693147),
(420, '\nnomor\n', './files/UU 062014(1).pdf', 1, 0.693147),
(421, '\np\nemerintahan', './files/UU 062014(1).pdf', 1, 0.693147),
(422, '\npasal', './files/UU 062014(1).pdf', 3, 0.863046),
(423, '\npembangunan', './files/UU 062014(1).pdf', 1, 0.693147),
(424, '\npemerintah\n', './files/UU 062014(1).pdf', 1, 0.693147),
(425, '\npemerintah', './files/UU 062014(1).pdf', 1, 0.287682),
(426, '\npemerintahan\n', './files/UU 062014(1).pdf', 1, 0.693147),
(427, '\npemerintahan', './files/UU 062014(1).pdf', 4, 2.77259),
(428, '\npenyelenggara\n', './files/UU 062014(1).pdf', 1, 0.693147),
(429, '\npenyelenggaraan', './files/UU 062014(1).pdf', 1, 0.693147),
(430, '\npenyertaan', './files/UU 062014(1).pdf', 1, 0.693147),
(431, '\nperlu', './files/UU 062014(1).pdf', 1, 0.693147),
(432, '\npermusyawaratan', './files/UU 062014(1).pdf', 2, 1.38629),
(433, '\npresiden', './files/UU 062014(1).pdf', 2, 0.575364),
(434, '\nrepublik', './files/UU 062014(1).pdf', 2, 0.575364),
(435, '\nse\ntempat', './files/UU 062014(1).pdf', 1, 0.693147),
(436, '\nsebagai', './files/UU 062014(1).pdf', 1, 0.693147),
(437, '\nsebagian', './files/UU 062014(1).pdf', 1, 0.693147),
(438, '\nsehingga', './files/UU 062014(1).pdf', 1, 0.287682),
(439, '\nsistem\n', './files/UU 062014(1).pdf', 1, 0.693147),
(440, '\ntahun\n', './files/UU 062014(1).pdf', 1, 0.693147),
(441, '\ntentang\n', './files/UU 062014(1).pdf', 1, 0.287682),
(442, '\nu\nndang', './files/UU 062014(1).pdf', 1, 0.693147),
(443, '\nundan\ng\n', './files/UU 062014(1).pdf', 1, 0.693147),
(444, '\nundang\n', './files/UU 062014(1).pdf', 3, 0.863046),
(445, '\nundang', './files/UU 062014(1).pdf', 5, 1.43841),
(446, '\nusul\n', './files/UU 062014(1).pdf', 1, 0.693147),
(447, '\nwakil', './files/UU 062014(1).pdf', 1, 0.693147),
(448, '\nwilayah', './files/UU 062014(1).pdf', 2, 1.38629),
(449, '\nyang', './files/UU 062014(1).pdf', 1, 0.287682),
(450, '1945', './files/UU 062014(1).pdf', 2, 0.575364),
(451, 'adat', './files/UU 062014(1).pdf', 1, 0.693147),
(452, 'adil', './files/UU 062014(1).pdf', 1, 0.693147),
(453, 'anggotanya', './files/UU 062014(1).pdf', 1, 0.693147),
(454, 'asal\n', './files/UU 062014(1).pdf', 1, 0.693147),
(455, 'ayat', './files/UU 062014(1).pdf', 2, 0.575364),
(456, 'batas', './files/UU 062014(1).pdf', 1, 0.693147),
(457, 'berasal', './files/UU 062014(1).pdf', 1, 0.287682),
(458, 'berkembang', './files/UU 062014(1).pdf', 1, 0.693147),
(459, 'berperan', './files/UU 062014(1).pdf', 1, 0.693147),
(460, 'bersama\n', './files/UU 062014(1).pdf', 1, 0.693147),
(461, 'berwenang', './files/UU 062014(1).pdf', 1, 0.693147),
(462, 'cita\n', './files/UU 062014(1).pdf', 1, 0.693147),
(463, 'da\nn', './files/UU 062014(1).pdf', 1, 0.693147),
(464, 'dasar', './files/UU 062014(1).pdf', 2, 0.575364),
(465, 'demokratis', './files/UU 062014(1).pdf', 2, 1.38629),
(466, 'dengan\n', './files/UU 062014(1).pdf', 1, 0.693147),
(467, 'desa\n', './files/UU 062014(1).pdf', 1, 0.693147),
(468, 'desa', './files/UU 062014(1).pdf', 21, 6.04132),
(469, 'diakui', './files/UU 062014(1).pdf', 1, 0.693147),
(470, 'diba\nntu', './files/UU 062014(1).pdf', 1, 0.693147),
(471, 'diberdayakan', './files/UU 062014(1).pdf', 1, 0.693147),
(472, 'dihormati', './files/UU 062014(1).pdf', 1, 0.693147),
(473, 'dilindungi', './files/UU 062014(1).pdf', 1, 0.693147),
(474, 'dimaksud', './files/UU 062014(1).pdf', 1, 0.287682),
(475, 'dipisahkan\n', './files/UU 062014(1).pdf', 1, 0.693147),
(476, 'disebut', './files/UU 062014(1).pdf', 5, 3.46574),
(477, 'diselenggarakan', './files/UU 062014(1).pdf', 1, 0.693147),
(478, 'ditetapkan', './files/UU 062014(1).pdf', 1, 0.693147),
(479, 'esa\n', './files/UU 062014(1).pdf', 1, 0.287682),
(480, 'hukum', './files/UU 062014(1).pdf', 1, 0.287682),
(481, 'huruf', './files/UU 062014(1).pdf', 3, 0.863046),
(482, 'indonesia\n', './files/UU 062014(1).pdf', 2, 0.575364),
(483, 'indonesia', './files/UU 062014(1).pdf', 5, 1.43841),
(484, 'kepala', './files/UU 062014(1).pdf', 1, 0.693147),
(485, 'kepentingan', './files/UU 062014(1).pdf', 2, 1.38629),
(486, 'kesatu\nan', './files/UU 062014(1).pdf', 1, 0.693147),
(487, 'kesatuan', './files/UU 062014(1).pdf', 1, 0.287682),
(488, 'ketatanegaraan', './files/UU 062014(1).pdf', 1, 0.693147),
(489, 'keterwakila\nn', './files/UU 062014(1).pdf', 1, 0.693147),
(490, 'kuat', './files/UU 062014(1).pdf', 2, 1.38629),
(491, 'landasan', './files/UU 062014(1).pdf', 1, 0.693147),
(492, 'm\nemiliki', './files/UU 062014(1).pdf', 1, 0.693147),
(493, 'maha', './files/UU 062014(1).pdf', 1, 0.287682),
(494, 'maju', './files/UU 062014(1).pdf', 1, 0.693147),
(495, 'mandiri', './files/UU 062014(1).pdf', 1, 0.287682),
(496, 'masyarakat', './files/UU 062014(1).pdf', 4, 1.15073),
(497, 'melaksanakan', './files/UU 062014(1).pdf', 1, 0.693147),
(498, 'menciptakan', './files/UU 062014(1).pdf', 1, 0.693147),
(499, 'mengatur', './files/UU 062014(1).pdf', 2, 1.38629),
(500, 'mengelola', './files/UU 062014(1).pdf', 1, 0.693147),
(501, 'mengurus', './files/UU 062014(1).pdf', 1, 0.693147),
(502, 'menuju', './files/UU 062014(1).pdf', 1, 0.693147),
(503, 'menyepa\nkati', './files/UU 062014(1).pdf', 1, 0.693147),
(504, 'mewujudkan', './files/UU 062014(1).pdf', 1, 0.287682),
(505, 'musyawarah', './files/UU 062014(1).pdf', 1, 0.693147),
(506, 'negara', './files/UU 062014(1).pdf', 4, 1.15073),
(507, 'pasal', './files/UU 062014(1).pdf', 3, 0.863046),
(508, 'pembangunan\n', './files/UU 062014(1).pdf', 1, 0.693147),
(509, 'pemerintahan\n', './files/UU 062014(1).pdf', 1, 0.693147),
(510, 'pemerintahan', './files/UU 062014(1).pdf', 2, 1.38629),
(511, 'penduduk', './files/UU 062014(1).pdf', 1, 0.287682),
(512, 'penyelenggaraan', './files/UU 062014(1).pdf', 1, 0.287682),
(513, 'perangkat', './files/UU 062014(1).pdf', 1, 0.693147),
(514, 'perjalanan', './files/UU 062014(1).pdf', 1, 0.693147),
(515, 'permusyawaratan', './files/UU 062014(1).pdf', 1, 0.693147),
(516, 'persetujuan', './files/UU 062014(1).pdf', 1, 0.287682),
(517, 'pertimbangan', './files/UU 062014(1).pdf', 1, 0.287682),
(518, 'perwakilan', './files/UU 062014(1).pdf', 1, 0.287682),
(519, 'prakarsa', './files/UU 062014(1).pdf', 1, 0.693147),
(520, 'rahmat', './files/UU 062014(1).pdf', 1, 0.287682),
(521, 'rakyat', './files/UU 062014(1).pdf', 1, 0.287682),
(522, 'republik', './files/UU 062014(1).pdf', 7, 2.01377),
(523, 'sali\nnan\n', './files/UU 062014(1).pdf', 1, 0.693147),
(524, 'sebagaimana', './files/UU 062014(1).pdf', 1, 0.287682),
(525, 'sejahtera', './files/UU 062014(1).pdf', 1, 0.693147),
(526, 'selanjutnya', './files/UU 062014(1).pdf', 2, 1.38629),
(527, 'setempat', './files/UU 062014(1).pdf', 2, 1.38629),
(528, 'sistem', './files/UU 062014(1).pdf', 1, 0.287682),
(529, 'strategis', './files/UU 062014(1).pdf', 1, 0.693147),
(530, 'susunan', './files/UU 062014(1).pdf', 1, 0.693147),
(531, 'tata', './files/UU 062014(1).pdf', 1, 0.693147),
(532, 'tersendiri', './files/UU 062014(1).pdf', 1, 0.693147),
(533, 'tradisional\n', './files/UU 062014(1).pdf', 1, 0.693147),
(534, 'tradisional', './files/UU 062014(1).pdf', 1, 0.693147),
(535, 'tuhan', './files/UU 062014(1).pdf', 1, 0.287682),
(536, 'umum\n', './files/UU 062014(1).pdf', 1, 0.287682),
(537, 'undang\n', './files/UU 062014(1).pdf', 4, 1.15073),
(538, 'unsur', './files/UU 062014(1).pdf', 2, 1.38629),
(539, 'urusan', './files/UU 062014(1).pdf', 2, 1.38629),
(540, 'usaha', './files/UU 062014(1).pdf', 2, 0.575364),
(541, 'usul', './files/UU 062014(1).pdf', 1, 0.693147),
(542, '\n2014\n', './files/UU 062014(2).pdf', 1, 0.693147),
(543, '\nadalah\n', './files/UU 062014(2).pdf', 1, 0.693147),
(544, '\nadalah', './files/UU 062014(2).pdf', 1, 0.693147),
(545, '\nagar', './files/UU 062014(2).pdf', 1, 0.693147),
(546, '\nantara', './files/UU 062014(2).pdf', 1, 0.693147),
(547, '\natau', './files/UU 062014(2).pdf', 1, 0.693147),
(548, '\nayat', './files/UU 062014(2).pdf', 1, 0.693147),
(549, '\nbab', './files/UU 062014(2).pdf', 1, 0.287682),
(550, '\nbadan', './files/UU 062014(2).pdf', 2, 1.38629),
(551, '\nbahwa', './files/UU 062014(2).pdf', 4, 2.77259),
(552, '\nbentuk', './files/UU 062014(2).pdf', 1, 0.693147),
(553, '\nbersifat', './files/UU 062014(2).pdf', 1, 0.693147),
(554, '\nbesar\n', './files/UU 062014(2).pdf', 1, 0.693147),
(555, '\nbesarnya', './files/UU 062014(2).pdf', 1, 1.38629),
(556, '\nbum', './files/UU 062014(2).pdf', 1, 0.693147),
(557, '\ncita', './files/UU 062014(2).pdf', 1, 0.693147),
(558, '\ndalam\n', './files/UU 062014(2).pdf', 1, 0.693147),
(559, '\ndalam', './files/UU 062014(2).pdf', 3, 0.863046),
(560, '\ndan\n', './files/UU 062014(2).pdf', 1, 0.287682),
(561, '\ndan', './files/UU 062014(2).pdf', 1, 0.693147),
(562, '\ndengan', './files/UU 062014(2).pdf', 5, 1.43841),
(563, '\ndesa\n', './files/UU 062014(2).pdf', 1, 0.693147),
(564, '\ndesa', './files/UU 062014(2).pdf', 2, 1.38629),
(565, '\ndewan', './files/UU 062014(2).pdf', 1, 0.287682),
(566, '\ndiatur', './files/UU 062014(2).pdf', 1, 0.693147),
(567, '\ndimaksud', './files/UU 062014(2).pdf', 1, 0.693147),
(568, '\ndimiliki', './files/UU 062014(2).pdf', 1, 0.693147),
(569, '\ndisebut', './files/UU 062014(2).pdf', 1, 0.693147),
(570, '\nfungsi', './files/UU 062014(2).pdf', 1, 0.693147),
(571, '\nguna', './files/UU 062014(2).pdf', 1, 0.693147),
(572, '\nindonesia', './files/UU 062014(2).pdf', 2, 0.575364),
(573, '\njasa', './files/UU 062014(2).pdf', 1, 1.38629),
(574, '\nkekayaan', './files/UU 062014(2).pdf', 1, 0.693147),
(575, '\nkemerdekaan', './files/UU 062014(2).pdf', 1, 0.693147),
(576, '\nkepentingan', './files/UU 062014(2).pdf', 1, 0.693147),
(577, '\nkesatuan', './files/UU 062014(2).pdf', 1, 0.693147),
(578, '\nketentuan', './files/UU 062014(2).pdf', 1, 0.287682),
(579, '\nlain', './files/UU 062014(2).pdf', 2, 1.38629),
(580, '\nlembaga', './files/UU 062014(2).pdf', 1, 0.693147),
(581, '\nmakmur', './files/UU 062014(2).pdf', 1, 0.693147),
(582, '\nmasyarakat', './files/UU 062014(2).pdf', 3, 0.863046),
(583, '\nmelaksanakan\n', './files/UU 062014(2).pdf', 1, 0.693147),
(584, '\nmembentuk', './files/UU 062014(2).pdf', 1, 0.693147),
(585, '\nmemutuska\nn\n', './files/UU 062014(2).pdf', 1, 0.693147),
(586, '\nmenetapkan\n', './files/UU 062014(2).pdf', 1, 0.693147),
(587, '\nmengingat\n', './files/UU 062014(2).pdf', 1, 0.693147),
(588, '\nmengurus', './files/UU 062014(2).pdf', 1, 0.693147),
(589, '\nmenimbang\n', './files/UU 062014(2).pdf', 1, 0.693147),
(590, '\nmodalnya\n', './files/UU 062014(2).pdf', 1, 0.693147),
(591, '\nmusyawarah\n', './files/UU 062014(2).pdf', 1, 0.693147),
(592, '\nmusyawarah', './files/UU 062014(2).pdf', 1, 0.693147),
(593, '\nnama\n', './files/UU 062014(2).pdf', 1, 0.693147),
(594, '\nnomor\n', './files/UU 062014(2).pdf', 1, 0.693147),
(595, '\np\nemerintahan', './files/UU 062014(2).pdf', 1, 0.693147),
(596, '\npasal', './files/UU 062014(2).pdf', 3, 0.863046),
(597, '\npembangunan', './files/UU 062014(2).pdf', 1, 0.693147),
(598, '\npemerintah\n', './files/UU 062014(2).pdf', 1, 0.693147),
(599, '\npemerintah', './files/UU 062014(2).pdf', 1, 0.287682),
(600, '\npemerintahan\n', './files/UU 062014(2).pdf', 1, 0.693147),
(601, '\npemerintahan', './files/UU 062014(2).pdf', 4, 2.77259),
(602, '\npenyelenggara\n', './files/UU 062014(2).pdf', 1, 0.693147),
(603, '\npenyelenggaraan', './files/UU 062014(2).pdf', 1, 0.693147),
(604, '\npenyertaan', './files/UU 062014(2).pdf', 1, 0.693147),
(605, '\nperlu', './files/UU 062014(2).pdf', 1, 0.693147),
(606, '\npermusyawaratan', './files/UU 062014(2).pdf', 2, 1.38629),
(607, '\npresiden', './files/UU 062014(2).pdf', 2, 0.575364),
(608, '\nrepublik', './files/UU 062014(2).pdf', 2, 0.575364),
(609, '\nse\ntempat', './files/UU 062014(2).pdf', 1, 0.693147),
(610, '\nsebagai', './files/UU 062014(2).pdf', 1, 0.693147),
(611, '\nsebagian', './files/UU 062014(2).pdf', 1, 0.693147),
(612, '\nsehingga', './files/UU 062014(2).pdf', 1, 0.287682),
(613, '\nsistem\n', './files/UU 062014(2).pdf', 1, 0.693147),
(614, '\ntahun\n', './files/UU 062014(2).pdf', 1, 0.693147),
(615, '\ntentang\n', './files/UU 062014(2).pdf', 1, 0.287682),
(616, '\nu\nndang', './files/UU 062014(2).pdf', 1, 0.693147),
(617, '\nundan\ng\n', './files/UU 062014(2).pdf', 1, 0.693147),
(618, '\nundang\n', './files/UU 062014(2).pdf', 3, 0.863046),
(619, '\nundang', './files/UU 062014(2).pdf', 5, 1.43841),
(620, '\nusul\n', './files/UU 062014(2).pdf', 1, 0.693147),
(621, '\nwakil', './files/UU 062014(2).pdf', 1, 0.693147),
(622, '\nwilayah', './files/UU 062014(2).pdf', 2, 1.38629),
(623, '\nyang', './files/UU 062014(2).pdf', 1, 0.287682),
(624, '1945', './files/UU 062014(2).pdf', 2, 0.575364),
(625, 'adat', './files/UU 062014(2).pdf', 1, 0.693147),
(626, 'adil', './files/UU 062014(2).pdf', 1, 0.693147),
(627, 'anggotanya', './files/UU 062014(2).pdf', 1, 0.693147),
(628, 'asal\n', './files/UU 062014(2).pdf', 1, 0.693147),
(629, 'aset', './files/UU 062014(2).pdf', 1, 1.38629),
(630, 'ayat', './files/UU 062014(2).pdf', 2, 0.575364),
(631, 'batas', './files/UU 062014(2).pdf', 1, 0.693147),
(632, 'berasal', './files/UU 062014(2).pdf', 1, 0.287682),
(633, 'berkembang', './files/UU 062014(2).pdf', 1, 0.693147),
(634, 'berperan', './files/UU 062014(2).pdf', 1, 0.693147),
(635, 'bersama\n', './files/UU 062014(2).pdf', 1, 0.693147),
(636, 'berwenang', './files/UU 062014(2).pdf', 1, 0.693147),
(637, 'cita\n', './files/UU 062014(2).pdf', 1, 0.693147),
(638, 'da\nn', './files/UU 062014(2).pdf', 1, 0.693147),
(639, 'dasar', './files/UU 062014(2).pdf', 2, 0.575364),
(640, 'demokratis', './files/UU 062014(2).pdf', 2, 1.38629),
(641, 'dengan\n', './files/UU 062014(2).pdf', 1, 0.693147),
(642, 'desa\n', './files/UU 062014(2).pdf', 1, 0.693147),
(643, 'desa', './files/UU 062014(2).pdf', 21, 6.04132),
(644, 'diakui', './files/UU 062014(2).pdf', 1, 0.693147),
(645, 'diba\nntu', './files/UU 062014(2).pdf', 1, 0.693147),
(646, 'diberdayakan', './files/UU 062014(2).pdf', 1, 0.693147),
(647, 'dihormati', './files/UU 062014(2).pdf', 1, 0.693147),
(648, 'dilindungi', './files/UU 062014(2).pdf', 1, 0.693147),
(649, 'dimaksud', './files/UU 062014(2).pdf', 1, 0.287682),
(650, 'dipisahkan\n', './files/UU 062014(2).pdf', 1, 0.693147),
(651, 'disebut', './files/UU 062014(2).pdf', 5, 3.46574),
(652, 'diselenggarakan', './files/UU 062014(2).pdf', 1, 0.693147),
(653, 'ditetapkan', './files/UU 062014(2).pdf', 1, 0.693147),
(654, 'esa\n', './files/UU 062014(2).pdf', 1, 0.287682),
(655, 'hukum', './files/UU 062014(2).pdf', 1, 0.287682),
(656, 'huruf', './files/UU 062014(2).pdf', 3, 0.863046),
(657, 'indonesia\n', './files/UU 062014(2).pdf', 2, 0.575364),
(658, 'indonesia', './files/UU 062014(2).pdf', 5, 1.43841),
(659, 'kepala', './files/UU 062014(2).pdf', 1, 0.693147),
(660, 'kepentingan', './files/UU 062014(2).pdf', 2, 1.38629),
(661, 'kesatu\nan', './files/UU 062014(2).pdf', 1, 0.693147),
(662, 'kesatuan', './files/UU 062014(2).pdf', 1, 0.287682),
(663, 'kesejahteraan', './files/UU 062014(2).pdf', 1, 1.38629),
(664, 'ketatanegaraan', './files/UU 062014(2).pdf', 1, 0.693147),
(665, 'keterwakila\nn', './files/UU 062014(2).pdf', 1, 0.693147),
(666, 'kuat', './files/UU 062014(2).pdf', 2, 1.38629),
(667, 'landasan', './files/UU 062014(2).pdf', 1, 0.693147),
(668, 'm\nemiliki', './files/UU 062014(2).pdf', 1, 0.693147),
(669, 'maha', './files/UU 062014(2).pdf', 1, 0.287682),
(670, 'maju', './files/UU 062014(2).pdf', 1, 0.693147),
(671, 'mandiri', './files/UU 062014(2).pdf', 1, 0.287682),
(672, 'masyarakat', './files/UU 062014(2).pdf', 4, 1.15073),
(673, 'melaksanakan', './files/UU 062014(2).pdf', 1, 0.693147),
(674, 'menciptakan', './files/UU 062014(2).pdf', 1, 0.693147),
(675, 'mengatur', './files/UU 062014(2).pdf', 2, 1.38629),
(676, 'mengelola', './files/UU 062014(2).pdf', 1, 0.693147),
(677, 'mengurus', './files/UU 062014(2).pdf', 1, 0.693147),
(678, 'menuju', './files/UU 062014(2).pdf', 1, 0.693147),
(679, 'menyepa\nkati', './files/UU 062014(2).pdf', 1, 0.693147),
(680, 'mewujudkan', './files/UU 062014(2).pdf', 1, 0.287682),
(681, 'musyawarah', './files/UU 062014(2).pdf', 1, 0.693147),
(682, 'negara', './files/UU 062014(2).pdf', 4, 1.15073),
(683, 'pasal', './files/UU 062014(2).pdf', 3, 0.863046),
(684, 'pelayanan', './files/UU 062014(2).pdf', 1, 1.38629),
(685, 'pembangunan\n', './files/UU 062014(2).pdf', 1, 0.693147),
(686, 'pemerintahan\n', './files/UU 062014(2).pdf', 1, 0.693147),
(687, 'pemerintahan', './files/UU 062014(2).pdf', 2, 1.38629),
(688, 'penduduk', './files/UU 062014(2).pdf', 1, 0.287682),
(689, 'penyelenggaraan', './files/UU 062014(2).pdf', 1, 0.287682),
(690, 'perangkat', './files/UU 062014(2).pdf', 1, 0.693147),
(691, 'perjalanan', './files/UU 062014(2).pdf', 1, 0.693147),
(692, 'permusyawaratan', './files/UU 062014(2).pdf', 1, 0.693147),
(693, 'persetujuan', './files/UU 062014(2).pdf', 1, 0.287682),
(694, 'pertimbangan', './files/UU 062014(2).pdf', 1, 0.287682),
(695, 'perwakilan', './files/UU 062014(2).pdf', 1, 0.287682),
(696, 'prakarsa', './files/UU 062014(2).pdf', 1, 0.693147),
(697, 'rahmat', './files/UU 062014(2).pdf', 1, 0.287682),
(698, 'rakyat', './files/UU 062014(2).pdf', 1, 0.287682),
(699, 'republik', './files/UU 062014(2).pdf', 7, 2.01377),
(700, 'sali\nnan\n', './files/UU 062014(2).pdf', 1, 0.693147),
(701, 'sebagaimana', './files/UU 062014(2).pdf', 1, 0.287682),
(702, 'sebesar\n', './files/UU 062014(2).pdf', 1, 1.38629),
(703, 'sejahtera', './files/UU 062014(2).pdf', 1, 0.693147),
(704, 'selanjutnya', './files/UU 062014(2).pdf', 2, 1.38629),
(705, 'setempat', './files/UU 062014(2).pdf', 2, 1.38629),
(706, 'sistem', './files/UU 062014(2).pdf', 1, 0.287682),
(707, 'strategis', './files/UU 062014(2).pdf', 1, 0.693147),
(708, 'susunan', './files/UU 062014(2).pdf', 1, 0.693147),
(709, 'tata', './files/UU 062014(2).pdf', 1, 0.693147),
(710, 'tersendiri', './files/UU 062014(2).pdf', 1, 0.693147),
(711, 'tradisional\n', './files/UU 062014(2).pdf', 1, 0.693147),
(712, 'tradisional', './files/UU 062014(2).pdf', 1, 0.693147),
(713, 'tuhan', './files/UU 062014(2).pdf', 1, 0.287682),
(714, 'umum\n', './files/UU 062014(2).pdf', 1, 0.287682),
(715, 'undang\n', './files/UU 062014(2).pdf', 4, 1.15073),
(716, 'unsur', './files/UU 062014(2).pdf', 2, 1.38629),
(717, 'urusan', './files/UU 062014(2).pdf', 2, 1.38629),
(718, 'usaha', './files/UU 062014(2).pdf', 3, 0.863046),
(719, 'usul', './files/UU 062014(2).pdf', 1, 0.693147),
(720, '\nagama', './files/uupangan13.pdf', 1, 1.38629),
(721, '\nbab', './files/uupangan13.pdf', 1, 0.287682),
(722, '\nberaneka', './files/uupangan13.pdf', 1, 1.38629),
(723, '\nberkelanjutan', './files/uupangan13.pdf', 1, 1.38629),
(724, '\nbudaya', './files/uupangan13.pdf', 2, 2.77259),
(725, '\ncadangan', './files/uupangan13.pdf', 1, 1.38629),
(726, '\ncukup', './files/uupangan13.pdf', 1, 1.38629),
(727, '\ndalam', './files/uupangan13.pdf', 1, 0.287682),
(728, '\ndan\n', './files/uupangan13.pdf', 1, 0.287682),
(729, '\ndaya', './files/uupangan13.pdf', 1, 1.38629),
(730, '\ndengan', './files/uupangan13.pdf', 5, 1.43841),
(731, '\ndewan', './files/uupangan13.pdf', 1, 0.287682),
(732, '\ndikelola', './files/uupangan13.pdf', 1, 1.38629),
(733, '\ndinamika', './files/uupangan13.pdf', 1, 1.38629),
(734, '\ndiperuntukkan', './files/uupangan13.pdf', 1, 1.38629),
(735, '\nhari', './files/uupangan13.pdf', 1, 1.38629),
(736, '\nhuruf', './files/uupangan13.pdf', 1, 1.38629),
(737, '\nindonesia', './files/uupangan13.pdf', 1, 0.287682),
(738, '\nkebutuhan', './files/uupangan13.pdf', 1, 1.38629),
(739, '\nkehutanan', './files/uupangan13.pdf', 1, 1.38629),
(740, '\nkeluarganya', './files/uupangan13.pdf', 1, 1.38629),
(741, '\nkemungkinan', './files/uupangan13.pdf', 1, 1.38629),
(742, '\nketentuan', './files/uupangan13.pdf', 1, 0.287682),
(743, '\nketerjangkauan', './files/uupangan13.pdf', 1, 1.38629),
(744, '\nkonsumsi', './files/uupangan13.pdf', 1, 1.38629),
(745, '\nlangsung', './files/uupangan13.pdf', 1, 1.38629),
(746, '\nm\nanusia', './files/uupangan13.pdf', 1, 1.38629),
(747, '\nmanusia', './files/uupangan13.pdf', 1, 1.38629),
(748, '\nmasyarakat', './files/uupangan13.pdf', 1, 0.287682),
(749, '\nmaupun', './files/uupangan13.pdf', 1, 1.38629),
(750, '\nmelakukan', './files/uupangan13.pdf', 1, 1.38629),
(751, '\nmembahayakan', './files/uupangan13.pdf', 1, 1.38629),
(752, '\nmembuat', './files/uupangan13.pdf', 1, 1.38629),
(753, '\nmemutuskan', './files/uupangan13.pdf', 1, 1.38629),
(754, '\nmenet\napkan', './files/uupangan13.pdf', 1, 1.38629),
(755, '\nmengingat', './files/uupangan13.pdf', 1, 1.38629),
(756, '\nmenimbang', './files/uupangan13.pdf', 1, 1.38629),
(757, '\nmerupakan', './files/uupangan13.pdf', 1, 1.38629),
(758, '\nmutunya', './files/uupangan13.pdf', 1, 1.38629),
(759, '\noleh', './files/uupangan13.pdf', 2, 2.77259),
(760, '\npangan\n', './files/uupangan13.pdf', 1, 1.38629),
(761, '\npangan', './files/uupangan13.pdf', 3, 4.15888),
(762, '\npangannya', './files/uupangan13.pdf', 1, 1.38629),
(763, '\npasal', './files/uupangan13.pdf', 2, 0.575364),
(764, '\npemerintah', './files/uupangan13.pdf', 2, 0.575364),
(765, '\npenegakan', './files/uupangan13.pdf', 1, 1.38629),
(766, '\npenyediaan', './files/uupangan13.pdf', 1, 1.38629),
(767, '\npenyiapan', './files/uupangan13.pdf', 1, 1.38629),
(768, '\nperseorangan', './files/uupangan13.pdf', 1, 1.38629),
(769, '\npotensi', './files/uupangan13.pdf', 1, 1.38629),
(770, '\npresiden', './files/uupangan13.pdf', 2, 0.575364),
(771, '\nrepublik', './files/uupangan13.pdf', 3, 0.863046),
(772, '\nsehingga', './files/uupangan13.pdf', 1, 0.287682),
(773, '\nsetempat', './files/uupangan13.pdf', 1, 1.38629),
(774, '\ntambahan', './files/uupangan13.pdf', 1, 1.38629),
(775, '\ntentang\n', './files/uupangan13.pdf', 1, 0.287682),
(776, '\nundang\n', './files/uupangan13.pdf', 1, 0.287682),
(777, '\nundang', './files/uupangan13.pdf', 7, 2.01377),
(778, '\nundangan', './files/uupangan13.pdf', 1, 1.38629),
(779, '\nuntuk', './files/uupangan13.pdf', 1, 1.38629),
(780, '\nyang', './files/uupangan13.pdf', 2, 0.575364),
(781, '1945', './files/uupangan13.pdf', 2, 0.575364),
(782, '1996', './files/uupangan13.pdf', 1, 1.38629),
(783, '2012\n', './files/uupangan13.pdf', 1, 1.38629),
(784, 'a\nman', './files/uupangan13.pdf', 1, 1.38629),
(785, 'agama', './files/uupangan13.pdf', 1, 1.38629),
(786, 'ai\nr', './files/uupangan13.pdf', 1, 1.38629),
(787, 'aktif', './files/uupangan13.pdf', 1, 1.38629),
(788, 'alam', './files/uupangan13.pdf', 2, 2.77259),
(789, 'aman', './files/uupangan13.pdf', 2, 2.77259),
(790, 'apabila', './files/uupangan13.pdf', 1, 1.38629),
(791, 'asasi', './files/uupangan13.pdf', 1, 1.38629),
(792, 'ayat', './files/uupangan13.pdf', 1, 0.287682),
(793, 'bahan', './files/uupangan13.pdf', 5, 6.93147),
(794, 'baku', './files/uupangan13.pdf', 2, 2.77259),
(795, 'bangsa', './files/uupangan13.pdf', 2, 2.77259),
(796, 'benda', './files/uupangan13.pdf', 1, 1.38629),
(797, 'berag\nam', './files/uupangan13.pdf', 1, 1.38629),
(798, 'beragam', './files/uupangan13.pdf', 2, 2.77259),
(799, 'berasal', './files/uupangan13.pdf', 1, 0.287682),
(800, 'berbasis', './files/uupangan13.pdf', 1, 1.38629),
(801, 'berdaulat', './files/uupangan13.pdf', 1, 1.38629),
(802, 'bergizi', './files/uupangan13.pdf', 3, 4.15888),
(803, 'berkewajiban', './files/uupangan13.pdf', 1, 1.38629),
(804, 'berkualitas', './files/uupangan13.pdf', 1, 1.38629),
(805, 'bermartabat', './files/uupangan13.pdf', 1, 1.38629),
(806, 'bermutu', './files/uupangan13.pdf', 1, 1.38629),
(807, 'bertentangan', './files/uupangan13.pdf', 2, 2.77259),
(808, 'beserta', './files/uupangan13.pdf', 3, 4.15888),
(809, 'bidang', './files/uupangan13.pdf', 1, 1.38629),
(810, 'biologis', './files/uupangan13.pdf', 1, 1.38629),
(811, 'budaya', './files/uupangan13.pdf', 1, 1.38629),
(812, 'cadangan', './files/uupangan13.pdf', 6, 8.31777),
(813, 'cemaran', './files/uupangan13.pdf', 1, 1.38629),
(814, 'd\nesa', './files/uupangan13.pdf', 1, 1.38629),
(815, 'daerah', './files/uupangan13.pdf', 1, 1.38629),
(816, 'darurat', './files/uupangan13.pdf', 1, 1.38629),
(817, 'dasar', './files/uupangan13.pdf', 4, 1.15073),
(818, 'daya', './files/uupangan13.pdf', 7, 9.70406),
(819, 'demokratisasi', './files/uupangan13.pdf', 1, 1.38629),
(820, 'desa', './files/uupangan13.pdf', 1, 0.287682),
(821, 'desentralisasi', './files/uupangan13.pdf', 1, 1.38629),
(822, 'diganti', './files/uupangan13.pdf', 1, 1.38629),
(823, 'dihasilkan', './files/uupangan13.pdf', 1, 1.38629),
(824, 'dijamin', './files/uupangan13.pdf', 1, 1.38629),
(825, 'dikelola', './files/uupangan13.pdf', 4, 5.54518),
(826, 'dikonsumsi', './files/uupangan13.pdf', 3, 4.15888),
(827, 'dikuasai', './files/uupangan13.pdf', 5, 6.93147),
(828, 'dimaksud', './files/uupangan13.pdf', 2, 0.575364),
(829, 'diolah', './files/uupangan13.pdf', 2, 2.77259),
(830, 'diperlukan', './files/uupangan13.pdf', 1, 1.38629),
(831, 'diperuntukkan', './files/uupangan13.pdf', 1, 1.38629),
(832, 'ekonomi', './files/uupangan13.pdf', 1, 1.38629),
(833, 'eksternal', './files/uupangan13.pdf', 1, 1.38629),
(834, 'esa\n', './files/uupangan13.pdf', 1, 0.287682),
(835, 'gangguan', './files/uupangan13.pdf', 1, 1.38629),
(836, 'gizi', './files/uupangan13.pdf', 1, 1.38629),
(837, 'glob\nalisasi', './files/uupangan13.pdf', 1, 1.38629),
(838, 'harga', './files/uupangan13.pdf', 1, 1.38629),
(839, 'hayati', './files/uupangan13.pdf', 1, 1.38629),
(840, 'hukum', './files/uupangan13.pdf', 1, 0.287682),
(841, 'huruf', './files/uupangan13.pdf', 3, 0.863046),
(842, 'ikan', './files/uupangan13.pdf', 2, 2.77259),
(843, 'impor', './files/uupangan13.pdf', 1, 1.38629);
INSERT INTO `tbindex` (`Id`, `Term`, `DocId`, `Count`, `Bobot`) VALUES
(844, 'indonesia\n', './files/uupangan13.pdf', 2, 0.575364),
(845, 'indonesia', './files/uupangan13.pdf', 8, 2.30146),
(846, 'internal', './files/uupangan13.pdf', 1, 1.38629),
(847, 'kabupaten', './files/uupangan13.pdf', 2, 2.77259),
(848, 'keadaan', './files/uupangan13.pdf', 1, 1.38629),
(849, 'keamanan', './files/uupangan13.pdf', 2, 2.77259),
(850, 'kearifan', './files/uupangan13.pdf', 3, 4.15888),
(851, 'kebijakan', './files/uupangan13.pdf', 1, 1.38629),
(852, 'kedaulatan', './files/uupangan13.pdf', 1, 1.38629),
(853, 'kekurangan\n', './files/uupangan13.pdf', 1, 1.38629),
(854, 'kelembagaan', './files/uupangan13.pdf', 1, 1.38629),
(855, 'keluarganya', './files/uupangan13.pdf', 2, 2.77259),
(856, 'kemampuan', './files/uupangan13.pdf', 1, 1.38629),
(857, 'kemandirian', './files/uupangan13.pdf', 1, 1.38629),
(858, 'kesatuan', './files/uupangan13.pdf', 2, 0.575364),
(859, 'kesehatan', './files/uupangan13.pdf', 1, 1.38629),
(860, 'ketahanan', './files/uupangan13.pdf', 1, 1.38629),
(861, 'keterjangkauan', './files/uupangan13.pdf', 1, 1.38629),
(862, 'ketersediaan', './files/uupangan13.pdf', 3, 4.15888),
(863, 'keyakinan', './files/uupangan13.pdf', 2, 2.77259),
(864, 'kimia', './files/uupangan13.pdf', 1, 1.38629),
(865, 'komponen', './files/uupangan13.pdf', 1, 1.38629),
(866, 'komunitas', './files/uupangan13.pdf', 1, 1.38629),
(867, 'konsumsi', './files/uupangan13.pdf', 4, 5.54518),
(868, 'kota', './files/uupangan13.pdf', 2, 2.77259),
(869, 'lokal', './files/uupangan13.pdf', 7, 9.70406),
(870, 'maha', './files/uupangan13.pdf', 1, 0.287682),
(871, 'makana\nn', './files/uupangan13.pdf', 1, 1.38629),
(872, 'makanan', './files/uupangan13.pdf', 4, 5.54518),
(873, 'mandiri', './files/uupangan13.pdf', 2, 0.575364),
(874, 'manusia', './files/uupangan13.pdf', 5, 6.93147),
(875, 'masyarakat', './files/uupangan13.pdf', 6, 1.72609),
(876, 'mata', './files/uupangan13.pdf', 2, 2.77259),
(877, 'melibatkan', './files/uupangan13.pdf', 1, 1.38629),
(878, 'memanfaatkan', './files/uupangan13.pdf', 2, 2.77259),
(879, 'membentuk', './files/uupangan13.pdf', 1, 1.38629),
(880, 'membesarkan', './files/uupangan13.pdf', 1, 1.38629),
(881, 'membiakkan', './files/uupangan13.pdf', 1, 1.38629),
(882, 'memenuhi', './files/uupangan13.pdf', 2, 2.77259),
(883, 'memproduksi', './files/uupangan13.pdf', 1, 1.38629),
(884, 'men\ncegah', './files/uupangan13.pdf', 1, 1.38629),
(885, 'menentukan', './files/uupangan13.pdf', 2, 2.77259),
(886, 'mengawetkan', './files/uupangan13.pdf', 1, 1.38629),
(887, 'mengemas', './files/uupangan13.pdf', 2, 2.77259),
(888, 'mengganggu', './files/uupangan13.pdf', 1, 1.38629),
(889, 'menghasilkan', './files/uupangan13.pdf', 1, 1.38629),
(890, 'mengolah', './files/uupangan13.pdf', 1, 1.38629),
(891, 'mengubah', './files/uupangan13.pdf', 1, 1.38629),
(892, 'menjamin', './files/uupangan13.pdf', 2, 2.77259),
(893, 'menyiapkan', './files/uupangan13.pdf', 1, 1.38629),
(894, 'merata', './files/uupangan13.pdf', 2, 2.77259),
(895, 'merugikan', './files/uupangan13.pdf', 1, 1.38629),
(896, 'metode', './files/uupangan13.pdf', 1, 1.38629),
(897, 'mewujudkan', './files/uupangan13.pdf', 2, 0.575364),
(898, 'minuman', './files/uupangan13.pdf', 3, 4.15888),
(899, 'nasional', './files/uupangan13.pdf', 3, 4.15888),
(900, 'negara', './files/uupangan13.pdf', 12, 3.45218),
(901, 'negeri', './files/uupangan13.pdf', 2, 2.77259),
(902, 'nelayan', './files/uupangan13.pdf', 1, 1.38629),
(903, 'nomor', './files/uupangan13.pdf', 2, 2.77259),
(904, 'olahan', './files/uupangan13.pdf', 1, 1.38629),
(905, 'p\nangan', './files/uupangan13.pdf', 1, 1.38629),
(906, 'p\nroses', './files/uupangan13.pdf', 1, 1.38629),
(907, 'pangan', './files/uupangan13.pdf', 48, 66.5421),
(908, 'pasal', './files/uupangan13.pdf', 3, 0.863046),
(909, 'pasokan', './files/uupangan13.pdf', 1, 1.38629),
(910, 'pedagang', './files/uupangan13.pdf', 1, 1.38629),
(911, 'pelaksanaan', './files/uupangan13.pdf', 1, 1.38629),
(912, 'pembuatan', './files/uupangan13.pdf', 1, 1.38629),
(913, 'pembudi', './files/uupangan13.pdf', 1, 1.38629),
(914, 'pemenuhan', './files/uupangan13.pdf', 3, 4.15888),
(915, 'pemenuhannya', './files/uupangan13.pdf', 1, 1.38629),
(916, 'pemerintah', './files/uupangan13.pdf', 6, 8.31777),
(917, 'penangkapan', './files/uupangan13.pdf', 1, 1.38629),
(918, 'pencahariannya', './files/uupangan13.pdf', 2, 2.77259),
(919, 'penduduk', './files/uupangan13.pdf', 1, 0.287682),
(920, 'penganekaragaman', './files/uupangan13.pdf', 1, 1.38629),
(921, 'pengawasan', './files/uupangan13.pdf', 1, 1.38629),
(922, 'pengolahan', './files/uupangan13.pdf', 3, 4.15888),
(923, 'peningkatan', './files/uupangan13.pdf', 1, 1.38629),
(924, 'penyelenggaraan', './files/uupangan13.pdf', 1, 0.287682),
(925, 'perairan', './files/uupangan13.pdf', 1, 1.38629),
(926, 'peran', './files/uupangan13.pdf', 1, 1.38629),
(927, 'peraturan', './files/uupangan13.pdf', 1, 1.38629),
(928, 'perencanaan', './files/uupangan13.pdf', 1, 1.38629),
(929, 'perikanan', './files/uupangan13.pdf', 1, 1.38629),
(930, 'perkebunan', './files/uupangan13.pdf', 1, 1.38629),
(931, 'perkembangan', './files/uupangan13.pdf', 1, 1.38629),
(932, 'pers\neorangan', './files/uupangan13.pdf', 1, 1.38629),
(933, 'persediaan', './files/uupangan13.pdf', 6, 8.31777),
(934, 'perseorangan', './files/uupangan13.pdf', 4, 5.54518),
(935, 'persetujuan', './files/uupangan13.pdf', 1, 0.287682),
(936, 'pertanian', './files/uupangan13.pdf', 1, 1.38629),
(937, 'pertimbangan', './files/uupangan13.pdf', 1, 0.287682),
(938, 'perundang\n', './files/uupangan13.pdf', 1, 1.38629),
(939, 'perwakilan', './files/uupangan13.pdf', 1, 0.287682),
(940, 'petani', './files/uupangan13.pdf', 1, 1.38629),
(941, 'peternakan', './files/uupangan13.pdf', 1, 1.38629),
(942, 'pokok', './files/uupangan13.pdf', 1, 1.38629),
(943, 'potensi', './files/uupangan13.pdf', 4, 5.54518),
(944, 'produk', './files/uupangan13.pdf', 1, 1.38629),
(945, 'produksi', './files/uupangan13.pdf', 2, 2.77259),
(946, 'produktif', './files/uupangan13.pdf', 1, 1.38629),
(947, 'provinsi', './files/uupangan13.pdf', 2, 2.77259),
(948, 'ragam', './files/uupangan13.pdf', 1, 1.38629),
(949, 'rahmat', './files/uupangan13.pdf', 1, 0.287682),
(950, 'rakyat', './files/uupangan13.pdf', 2, 0.575364),
(951, 'republik', './files/uupangan13.pdf', 4, 1.15073),
(952, 'rumah', './files/uupangan13.pdf', 1, 1.38629),
(953, 'sebagaimana', './files/uupangan13.pdf', 1, 0.287682),
(954, 'segala', './files/uupangan13.pdf', 1, 1.38629),
(955, 'segar', './files/uupangan13.pdf', 1, 1.38629),
(956, 'sehari\n', './files/uupangan13.pdf', 1, 1.38629),
(957, 'sehat', './files/uupangan13.pdf', 1, 1.38629),
(958, 'seimbang', './files/uupangan13.pdf', 2, 2.77259),
(959, 'selu\nruh', './files/uupangan13.pdf', 1, 1.38629),
(960, 'sepanjang', './files/uupangan13.pdf', 1, 1.38629),
(961, 'sesuatu', './files/uupangan13.pdf', 1, 1.38629),
(962, 'sisi', './files/uupangan13.pdf', 1, 1.38629),
(963, 'sistem', './files/uupangan13.pdf', 1, 0.287682),
(964, 'sosial', './files/uupangan13.pdf', 1, 1.38629),
(965, 'su\nmber', './files/uupangan13.pdf', 2, 2.77259),
(966, 'sum\nber', './files/uupangan13.pdf', 1, 1.38629),
(967, 'tambahan', './files/uupangan13.pdf', 1, 1.38629),
(968, 'tangga', './files/uupangan13.pdf', 1, 1.38629),
(969, 'tani', './files/uupangan13.pdf', 1, 1.38629),
(970, 'ten\ntang', './files/uupangan13.pdf', 1, 1.38629),
(971, 'tercermin', './files/uupangan13.pdf', 1, 1.38629),
(972, 'terjangkau', './files/uupangan13.pdf', 1, 1.38629),
(973, 'terkoordinasi', './files/uupangan13.pdf', 1, 1.38629),
(974, 'terpadu', './files/uupangan13.pdf', 1, 1.38629),
(975, 'terpenuhinya', './files/uupangan13.pdf', 1, 1.38629),
(976, 'tersedianya', './files/uupangan13.pdf', 2, 2.77259),
(977, 'tertentu', './files/uupangan13.pdf', 1, 1.38629),
(978, 'tuhan', './files/uupangan13.pdf', 1, 0.287682),
(979, 'umum\n', './files/uupangan13.pdf', 1, 0.287682),
(980, 'undang\n', './files/uupangan13.pdf', 6, 1.72609),
(981, 'usaha', './files/uupangan13.pdf', 1, 0.287682),
(982, 'warga', './files/uupangan13.pdf', 3, 4.15888),
(983, 'wilayah', './files/uupangan13.pdf', 2, 2.77259);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbindex`
--
ALTER TABLE `tbindex`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbindex`
--
ALTER TABLE `tbindex`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=984;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
