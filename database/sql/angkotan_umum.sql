-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 10, 2025 at 03:53 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angkotan_umum`
--

-- --------------------------------------------------------

--
-- Table structure for table `angkots`
--

CREATE TABLE `angkots` (
  `id` bigint UNSIGNED NOT NULL,
  `kode_angkot` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_berangkat` time NOT NULL,
  `warna_angkot` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trayek` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rute_jalan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_pulang` time NOT NULL,
  `tarif` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `angkots`
--

INSERT INTO `angkots` (`id`, `kode_angkot`, `jam_berangkat`, `warna_angkot`, `trayek`, `rute_jalan`, `jam_pulang`, `tarif`, `created_at`, `updated_at`) VALUES
(2, 'Angkot 1', '08:00:00', 'Merah', 'R01', 'Terminal Pakupatan-Ciceri-Kepandean PP', '09:00:00', 10000, '2025-01-05 18:14:45', '2025-01-05 11:44:59'),
(3, 'Angkot 2', '08:30:00', 'Merah', 'R01', 'Terminal Pakupatan-Ciceri-Kepandean PP', '09:30:00', 10000, '2025-01-05 18:14:45', '2025-01-05 11:45:10'),
(4, 'Angkot 3', '09:00:00', 'Merah', 'R01', 'Terminal Pakupatan-Ciceri-Kepandean PP', '10:00:00', 10000, '2025-01-05 18:14:45', '2025-01-05 11:45:16'),
(5, 'Angkot 4', '09:30:00', 'Merah', 'R01', 'Terminal Pakupatan-Ciceri-Kepandean PP', '10:30:00', 10000, '2025-01-05 18:14:45', '2025-01-05 11:45:21'),
(6, 'Angkot 5', '10:00:00', 'Merah', 'R01', 'Terminal Pakupatan-Ciceri-Kepandean PP', '11:00:00', 10000, '2025-01-05 18:14:45', '2025-01-05 11:45:27'),
(7, 'Angkot 6', '08:00:00', 'Merah', 'R01', 'Terminal Pakupatan-Ciceri-Kepandean PP', '09:00:00', 10000, '2025-01-05 18:14:45', '2025-01-05 11:45:34'),
(8, 'Angkot 7', '08:30:00', 'Merah', 'R01', 'Terminal Pakupatan-Ciceri-Kepandean PP', '09:30:00', 10000, '2025-01-05 18:14:45', '2025-01-05 11:45:41'),
(9, 'Angkot 8', '09:00:00', 'Merah', 'R01', 'Terminal Pakupatan-Ciceri-Kepandean PP', '10:00:00', 10000, '2025-01-05 18:14:45', '2025-01-05 11:45:48'),
(10, 'Angkot 9', '09:30:00', 'Merah', 'R01', 'Terminal Pakupatan-Ciceri-Kepandean PP', '10:30:00', 10000, '2025-01-05 18:14:45', '2025-01-05 11:45:54'),
(11, 'Angkot 10', '10:00:00', 'Merah', 'R01', 'Terminal Pakupatan-Ciceri-Kepandean PP', '11:00:00', 10000, '2025-01-05 18:14:45', '2025-01-05 11:46:01'),
(12, 'Angkot 1', '08:00:00', 'Merah', 'R02', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '10:00:00', 10000, '2025-01-07 00:35:37', '2025-01-07 00:35:37'),
(13, 'Angkot 2', '08:30:00', 'Merah', 'R02', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '10:30:00', 10000, '2025-01-07 00:35:37', '2025-01-07 00:35:37'),
(14, 'Angkot 3', '09:00:00', 'Merah', 'R02', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '11:00:00', 10000, '2025-01-07 00:35:37', '2025-01-07 00:35:37'),
(15, 'Angkot 4', '09:30:00', 'Merah', 'R02', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '11:30:00', 10000, '2025-01-07 00:35:37', '2025-01-07 00:35:37'),
(16, 'Angkot 5', '10:00:00', 'Merah', 'R02', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '12:00:00', 10000, '2025-01-07 00:35:37', '2025-01-07 00:35:37'),
(17, 'Angkot 6', '10:30:00', 'Merah', 'R02', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '12:30:00', 10000, '2025-01-07 00:35:37', '2025-01-07 00:35:37'),
(18, 'Angkot 7', '11:00:00', 'Merah', 'R02', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '13:00:00', 10000, '2025-01-07 00:35:37', '2025-01-07 00:35:37'),
(19, 'Angkot 8', '11:30:00', 'Merah', 'R02', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '13:30:00', 10000, '2025-01-07 00:35:37', '2025-01-07 00:35:37'),
(20, 'Angkot 9', '12:00:00', 'Merah', 'R02', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '14:00:00', 10000, '2025-01-07 00:35:37', '2025-01-07 00:35:37'),
(21, 'Angkot 10', '12:30:00', 'Merah', 'R02', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '14:30:00', 10000, '2025-01-07 00:35:37', '2025-01-07 00:35:37'),
(22, 'Angkot 11', '13:00:00', 'Merah', 'R02', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '15:00:00', 10000, '2025-01-07 00:35:37', '2025-01-07 00:35:37'),
(23, 'Angkot 12', '13:30:00', 'Merah', 'R02', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '15:30:00', 10000, '2025-01-07 00:35:37', '2025-01-07 00:35:37'),
(24, 'Angkot 13', '14:00:00', 'Merah', 'R02', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '16:00:00', 10000, '2025-01-07 00:35:37', '2025-01-07 00:35:37'),
(25, 'Angkot 14', '14:30:00', 'Merah', 'R02', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '16:30:00', 10000, '2025-01-07 00:35:37', '2025-01-07 00:35:37'),
(26, 'Angkot 15', '15:00:00', 'Merah', 'R02', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '17:00:00', 10000, '2025-01-07 00:35:37', '2025-01-07 00:35:37'),
(27, 'Angkot 16', '15:30:00', 'Merah', 'R02', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '17:30:00', 10000, '2025-01-07 00:35:37', '2025-01-07 00:35:37'),
(28, 'Angkot 17', '16:00:00', 'Merah', 'R02', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '18:00:00', 10000, '2025-01-07 00:35:37', '2025-01-07 00:35:37'),
(29, 'Angkot 18', '16:30:00', 'Merah', 'R02', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '18:30:00', 10000, '2025-01-07 00:35:37', '2025-01-07 00:35:37'),
(30, 'Angkot 19', '17:00:00', 'Merah', 'R02', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '19:00:00', 10000, '2025-01-07 00:35:37', '2025-01-07 00:35:37'),
(31, 'Angkot 20', '17:30:00', 'Merah', 'R02', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '19:30:00', 10000, '2025-01-07 00:35:37', '2025-01-07 00:35:37'),
(32, 'Angkot 1', '08:00:00', 'Merah', 'R03', 'Terminal Pakupatan-Pasar Rau-Kepandean PP', '10:00:00', 10000, '2025-01-07 00:28:58', '2025-01-07 00:28:58'),
(33, 'Angkot 2', '08:30:00', 'Merah', 'R03', 'Terminal Pakupatan-Pasar Rau-Kepandean PP', '10:30:00', 10000, '2025-01-07 00:28:58', '2025-01-07 00:28:58'),
(34, 'Angkot 3', '09:00:00', 'Merah', 'R03', 'Terminal Pakupatan-Pasar Rau-Kepandean PP', '11:00:00', 10000, '2025-01-07 00:28:58', '2025-01-07 00:28:58'),
(35, 'Angkot 4', '09:30:00', 'Merah', 'R03', 'Terminal Pakupatan-Pasar Rau-Kepandean PP', '11:30:00', 10000, '2025-01-07 00:28:58', '2025-01-07 00:28:58'),
(36, 'Angkot 5', '10:00:00', 'Merah', 'R03', 'Terminal Pakupatan-Pasar Rau-Kepandean PP', '12:00:00', 10000, '2025-01-07 00:28:58', '2025-01-07 00:28:58'),
(37, 'Angkot 6', '10:30:00', 'Merah', 'R03', 'Terminal Pakupatan-Pasar Rau-Kepandean PP', '12:30:00', 10000, '2025-01-07 00:28:58', '2025-01-07 00:28:58'),
(38, 'Angkot 7', '11:00:00', 'Merah', 'R03', 'Terminal Pakupatan-Pasar Rau-Kepandean PP', '13:00:00', 10000, '2025-01-07 00:28:58', '2025-01-07 00:28:58'),
(39, 'Angkot 8', '11:30:00', 'Merah', 'R03', 'Terminal Pakupatan-Pasar Rau-Kepandean PP', '13:30:00', 10000, '2025-01-07 00:28:58', '2025-01-07 00:28:58'),
(40, 'Angkot 9', '12:00:00', 'Merah', 'R03', 'Terminal Pakupatan-Pasar Rau-Kepandean PP', '14:00:00', 10000, '2025-01-07 00:28:58', '2025-01-07 00:28:58'),
(41, 'Angkot 10', '12:30:00', 'Merah', 'R03', 'Terminal Pakupatan-Pasar Rau-Kepandean PP', '14:30:00', 10000, '2025-01-07 00:28:58', '2025-01-07 00:28:58'),
(42, 'Angkot 11', '13:00:00', 'Merah', 'R03', 'Terminal Pakupatan-Pasar Rau-Kepandean PP', '15:00:00', 10000, '2025-01-07 00:28:58', '2025-01-07 00:28:58'),
(43, 'Angkot 12', '13:30:00', 'Merah', 'R03', 'Terminal Pakupatan-Pasar Rau-Kepandean PP', '15:30:00', 10000, '2025-01-07 00:28:58', '2025-01-07 00:28:58'),
(44, 'Angkot 13', '14:00:00', 'Merah', 'R03', 'Terminal Pakupatan-Pasar Rau-Kepandean PP', '16:00:00', 10000, '2025-01-07 00:28:58', '2025-01-07 00:28:58'),
(45, 'Angkot 14', '14:30:00', 'Merah', 'R03', 'Terminal Pakupatan-Pasar Rau-Kepandean PP', '16:30:00', 10000, '2025-01-07 00:28:58', '2025-01-07 00:28:58'),
(46, 'Angkot 15', '15:00:00', 'Merah', 'R03', 'Terminal Pakupatan-Pasar Rau-Kepandean PP', '17:00:00', 10000, '2025-01-07 00:28:58', '2025-01-07 00:28:58'),
(47, 'Angkot 16', '15:30:00', 'Merah', 'R03', 'Terminal Pakupatan-Pasar Rau-Kepandean PP', '17:30:00', 10000, '2025-01-07 00:28:58', '2025-01-07 00:28:58'),
(48, 'Angkot 17', '16:00:00', 'Merah', 'R03', 'Terminal Pakupatan-Pasar Rau-Kepandean PP', '18:00:00', 10000, '2025-01-07 00:28:58', '2025-01-07 00:28:58'),
(49, 'Angkot 18', '16:30:00', 'Merah', 'R03', 'Terminal Pakupatan-Pasar Rau-Kepandean PP', '18:30:00', 10000, '2025-01-07 00:28:58', '2025-01-07 00:28:58'),
(50, 'Angkot 19', '17:00:00', 'Merah', 'R03', 'Terminal Pakupatan-Pasar Rau-Kepandean PP', '19:00:00', 10000, '2025-01-07 00:28:58', '2025-01-07 00:28:58'),
(51, 'Angkot 20', '17:30:00', 'Merah', 'R03', 'Terminal Pakupatan-Pasar Rau-Kepandean PP', '19:30:00', 10000, '2025-01-07 00:28:58', '2025-01-07 00:28:58'),
(52, 'Angkot 1', '08:00:00', 'Merah', 'R04', 'Terminal Pakupatan-Cipocok-Pasar Rau PP', '10:00:00', 10000, '2025-01-07 00:30:19', '2025-01-07 00:30:19'),
(53, 'Angkot 2', '08:30:00', 'Merah', 'R04', 'Terminal Pakupatan-Cipocok-Pasar Rau PP', '10:30:00', 10000, '2025-01-07 00:30:19', '2025-01-07 00:30:19'),
(54, 'Angkot 3', '09:00:00', 'Merah', 'R04', 'Terminal Pakupatan-Cipocok-Pasar Rau PP', '11:00:00', 10000, '2025-01-07 00:30:19', '2025-01-07 00:30:19'),
(55, 'Angkot 4', '09:30:00', 'Merah', 'R04', 'Terminal Pakupatan-Cipocok-Pasar Rau PP', '11:30:00', 10000, '2025-01-07 00:30:19', '2025-01-07 00:30:19'),
(56, 'Angkot 5', '10:00:00', 'Merah', 'R04', 'Terminal Pakupatan-Cipocok-Pasar Rau PP', '12:00:00', 10000, '2025-01-07 00:30:19', '2025-01-07 00:30:19'),
(57, 'Angkot 6', '10:30:00', 'Merah', 'R04', 'Terminal Pakupatan-Cipocok-Pasar Rau PP', '12:30:00', 10000, '2025-01-07 00:30:19', '2025-01-07 00:30:19'),
(58, 'Angkot 7', '11:00:00', 'Merah', 'R04', 'Terminal Pakupatan-Cipocok-Pasar Rau PP', '13:00:00', 10000, '2025-01-07 00:30:19', '2025-01-07 00:30:19'),
(59, 'Angkot 8', '11:30:00', 'Merah', 'R04', 'Terminal Pakupatan-Cipocok-Pasar Rau PP', '13:30:00', 10000, '2025-01-07 00:30:19', '2025-01-07 00:30:19'),
(60, 'Angkot 9', '12:00:00', 'Merah', 'R04', 'Terminal Pakupatan-Cipocok-Pasar Rau PP', '14:00:00', 10000, '2025-01-07 00:30:19', '2025-01-07 00:30:19'),
(61, 'Angkot 10', '12:30:00', 'Merah', 'R04', 'Terminal Pakupatan-Cipocok-Pasar Rau PP', '14:30:00', 10000, '2025-01-07 00:30:19', '2025-01-07 00:30:19'),
(62, 'Angkot 11', '13:00:00', 'Merah', 'R04', 'Terminal Pakupatan-Cipocok-Pasar Rau PP', '15:00:00', 10000, '2025-01-07 00:30:19', '2025-01-07 00:30:19'),
(63, 'Angkot 12', '13:30:00', 'Merah', 'R04', 'Terminal Pakupatan-Cipocok-Pasar Rau PP', '15:30:00', 10000, '2025-01-07 00:30:19', '2025-01-07 00:30:19'),
(64, 'Angkot 13', '14:00:00', 'Merah', 'R04', 'Terminal Pakupatan-Cipocok-Pasar Rau PP', '16:00:00', 10000, '2025-01-07 00:30:19', '2025-01-07 00:30:19'),
(65, 'Angkot 14', '14:30:00', 'Merah', 'R04', 'Terminal Pakupatan-Cipocok-Pasar Rau PP', '16:30:00', 10000, '2025-01-07 00:30:19', '2025-01-07 00:30:19'),
(66, 'Angkot 15', '15:00:00', 'Merah', 'R04', 'Terminal Pakupatan-Cipocok-Pasar Rau PP', '17:00:00', 10000, '2025-01-07 00:30:19', '2025-01-07 00:30:19'),
(67, 'Angkot 16', '15:30:00', 'Merah', 'R04', 'Terminal Pakupatan-Cipocok-Pasar Rau PP', '17:30:00', 10000, '2025-01-07 00:30:19', '2025-01-07 00:30:19'),
(68, 'Angkot 17', '16:00:00', 'Merah', 'R04', 'Terminal Pakupatan-Cipocok-Pasar Rau PP', '18:00:00', 10000, '2025-01-07 00:30:19', '2025-01-07 00:30:19'),
(69, 'Angkot 18', '16:30:00', 'Merah', 'R04', 'Terminal Pakupatan-Cipocok-Pasar Rau PP', '18:30:00', 10000, '2025-01-07 00:30:19', '2025-01-07 00:30:19'),
(70, 'Angkot 19', '17:00:00', 'Merah', 'R04', 'Terminal Pakupatan-Cipocok-Pasar Rau PP', '19:00:00', 10000, '2025-01-07 00:30:19', '2025-01-07 00:30:19'),
(71, 'Angkot 20', '17:30:00', 'Merah', 'R04', 'Terminal Pakupatan-Cipocok-Pasar Rau PP', '19:30:00', 10000, '2025-01-07 00:30:19', '2025-01-07 00:30:19'),
(72, 'Angkot 1', '08:00:00', 'Merah', 'R09', 'Terminal Pakupatan - Polda Banten - Simpang Boru - Cipocok PP', '10:00:00', 10000, '2025-01-07 00:31:54', '2025-01-07 00:31:54'),
(73, 'Angkot 2', '08:30:00', 'Merah', 'R09', 'Terminal Pakupatan - Polda Banten - Simpang Boru - Cipocok PP', '10:30:00', 10000, '2025-01-07 00:31:54', '2025-01-07 00:31:54'),
(74, 'Angkot 3', '09:00:00', 'Merah', 'R09', 'Terminal Pakupatan - Polda Banten - Simpang Boru - Cipocok PP', '11:00:00', 10000, '2025-01-07 00:31:54', '2025-01-07 00:31:54'),
(75, 'Angkot 4', '09:30:00', 'Merah', 'R09', 'Terminal Pakupatan - Polda Banten - Simpang Boru - Cipocok PP', '11:30:00', 10000, '2025-01-07 00:31:54', '2025-01-07 00:31:54'),
(76, 'Angkot 5', '10:00:00', 'Merah', 'R09', 'Terminal Pakupatan - Polda Banten - Simpang Boru - Cipocok PP', '12:00:00', 10000, '2025-01-07 00:31:54', '2025-01-07 00:31:54'),
(77, 'Angkot 6', '10:30:00', 'Merah', 'R09', 'Terminal Pakupatan - Polda Banten - Simpang Boru - Cipocok PP', '12:30:00', 10000, '2025-01-07 00:31:54', '2025-01-07 00:31:54'),
(78, 'Angkot 7', '11:00:00', 'Merah', 'R09', 'Terminal Pakupatan - Polda Banten - Simpang Boru - Cipocok PP', '13:00:00', 10000, '2025-01-07 00:31:54', '2025-01-07 00:31:54'),
(79, 'Angkot 8', '11:30:00', 'Merah', 'R09', 'Terminal Pakupatan - Polda Banten - Simpang Boru - Cipocok PP', '13:30:00', 10000, '2025-01-07 00:31:54', '2025-01-07 00:31:54'),
(80, 'Angkot 9', '12:00:00', 'Merah', 'R09', 'Terminal Pakupatan - Polda Banten - Simpang Boru - Cipocok PP', '14:00:00', 10000, '2025-01-07 00:31:54', '2025-01-07 00:31:54'),
(81, 'Angkot 10', '12:30:00', 'Merah', 'R09', 'Terminal Pakupatan - Polda Banten - Simpang Boru - Cipocok PP', '14:30:00', 10000, '2025-01-07 00:31:54', '2025-01-07 00:31:54'),
(82, 'Angkot 11', '13:00:00', 'Merah', 'R09', 'Terminal Pakupatan - Polda Banten - Simpang Boru - Cipocok PP', '15:00:00', 10000, '2025-01-07 00:31:54', '2025-01-07 00:31:54'),
(83, 'Angkot 12', '13:30:00', 'Merah', 'R09', 'Terminal Pakupatan - Polda Banten - Simpang Boru - Cipocok PP', '15:30:00', 10000, '2025-01-07 00:31:54', '2025-01-07 00:31:54'),
(84, 'Angkot 13', '14:00:00', 'Merah', 'R09', 'Terminal Pakupatan - Polda Banten - Simpang Boru - Cipocok PP', '16:00:00', 10000, '2025-01-07 00:31:54', '2025-01-07 00:31:54'),
(85, 'Angkot 14', '14:30:00', 'Merah', 'R09', 'Terminal Pakupatan - Polda Banten - Simpang Boru - Cipocok PP', '16:30:00', 10000, '2025-01-07 00:31:54', '2025-01-07 00:31:54'),
(86, 'Angkot 15', '15:00:00', 'Merah', 'R09', 'Terminal Pakupatan - Polda Banten - Simpang Boru - Cipocok PP', '17:00:00', 10000, '2025-01-07 00:31:54', '2025-01-07 00:31:54'),
(87, 'Angkot 16', '15:30:00', 'Merah', 'R09', 'Terminal Pakupatan - Polda Banten - Simpang Boru - Cipocok PP', '17:30:00', 10000, '2025-01-07 00:31:54', '2025-01-07 00:31:54'),
(88, 'Angkot 17', '16:00:00', 'Merah', 'R09', 'Terminal Pakupatan - Polda Banten - Simpang Boru - Cipocok PP', '18:00:00', 10000, '2025-01-07 00:31:54', '2025-01-07 00:31:54'),
(89, 'Angkot 18', '16:30:00', 'Merah', 'R09', 'Terminal Pakupatan - Polda Banten - Simpang Boru - Cipocok PP', '18:30:00', 10000, '2025-01-07 00:31:54', '2025-01-07 00:31:54'),
(90, 'Angkot 19', '17:00:00', 'Merah', 'R09', 'Terminal Pakupatan - Polda Banten - Simpang Boru - Cipocok PP', '19:00:00', 10000, '2025-01-07 00:31:54', '2025-01-07 00:31:54'),
(91, 'Angkot 20', '17:30:00', 'Merah', 'R09', 'Terminal Pakupatan - Polda Banten - Simpang Boru - Cipocok PP', '19:30:00', 10000, '2025-01-07 00:31:54', '2025-01-07 00:31:54'),
(92, 'Angkot 1', '08:00:00', 'Merah', 'R10', 'Terminal Pakupatan - Polda Banten - KP3B Palima - Kepandean PP', '10:00:00', 10000, '2025-01-07 00:34:56', '2025-01-07 00:34:56'),
(93, 'Angkot 2', '08:30:00', 'Merah', 'R10', 'Terminal Pakupatan - Polda Banten - KP3B Palima - Kepandean PP', '10:30:00', 10000, '2025-01-07 00:34:56', '2025-01-07 00:34:56'),
(94, 'Angkot 3', '09:00:00', 'Merah', 'R10', 'Terminal Pakupatan - Polda Banten - KP3B Palima - Kepandean PP', '11:00:00', 10000, '2025-01-07 00:34:56', '2025-01-07 00:34:56'),
(95, 'Angkot 4', '09:30:00', 'Merah', 'R10', 'Terminal Pakupatan - Polda Banten - KP3B Palima - Kepandean PP', '11:30:00', 10000, '2025-01-07 00:34:56', '2025-01-07 00:34:56'),
(96, 'Angkot 5', '10:00:00', 'Merah', 'R10', 'Terminal Pakupatan - Polda Banten - KP3B Palima - Kepandean PP', '12:00:00', 10000, '2025-01-07 00:34:56', '2025-01-07 00:34:56'),
(97, 'Angkot 6', '10:30:00', 'Merah', 'R10', 'Terminal Pakupatan - Polda Banten - KP3B Palima - Kepandean PP', '12:30:00', 10000, '2025-01-07 00:34:56', '2025-01-07 00:34:56'),
(98, 'Angkot 7', '11:00:00', 'Merah', 'R10', 'Terminal Pakupatan - Polda Banten - KP3B Palima - Kepandean PP', '13:00:00', 10000, '2025-01-07 00:34:56', '2025-01-07 00:34:56'),
(99, 'Angkot 8', '11:30:00', 'Merah', 'R10', 'Terminal Pakupatan - Polda Banten - KP3B Palima - Kepandean PP', '13:30:00', 10000, '2025-01-07 00:34:56', '2025-01-07 00:34:56'),
(100, 'Angkot 9', '12:00:00', 'Merah', 'R10', 'Terminal Pakupatan - Polda Banten - KP3B Palima - Kepandean PP', '14:00:00', 10000, '2025-01-07 00:34:56', '2025-01-07 00:34:56'),
(101, 'Angkot 10', '12:30:00', 'Merah', 'R10', 'Terminal Pakupatan - Polda Banten - KP3B Palima - Kepandean PP', '14:30:00', 10000, '2025-01-07 00:34:56', '2025-01-07 00:34:56'),
(102, 'Angkot 11', '13:00:00', 'Merah', 'R10', 'Terminal Pakupatan - Polda Banten - KP3B Palima - Kepandean PP', '15:00:00', 10000, '2025-01-07 00:34:56', '2025-01-07 00:34:56'),
(103, 'Angkot 12', '13:30:00', 'Merah', 'R10', 'Terminal Pakupatan - Polda Banten - KP3B Palima - Kepandean PP', '15:30:00', 10000, '2025-01-07 00:34:56', '2025-01-07 00:34:56'),
(104, 'Angkot 13', '14:00:00', 'Merah', 'R10', 'Terminal Pakupatan - Polda Banten - KP3B Palima - Kepandean PP', '16:00:00', 10000, '2025-01-07 00:34:56', '2025-01-07 00:34:56'),
(105, 'Angkot 14', '14:30:00', 'Merah', 'R10', 'Terminal Pakupatan - Polda Banten - KP3B Palima - Kepandean PP', '16:30:00', 10000, '2025-01-07 00:34:56', '2025-01-07 00:34:56'),
(106, 'Angkot 15', '15:00:00', 'Merah', 'R10', 'Terminal Pakupatan - Polda Banten - KP3B Palima - Kepandean PP', '17:00:00', 10000, '2025-01-07 00:34:56', '2025-01-07 00:34:56'),
(107, 'Angkot 16', '15:30:00', 'Merah', 'R10', 'Terminal Pakupatan - Polda Banten - KP3B Palima - Kepandean PP', '17:30:00', 10000, '2025-01-07 00:34:56', '2025-01-07 00:34:56'),
(108, 'Angkot 17', '16:00:00', 'Merah', 'R10', 'Terminal Pakupatan - Polda Banten - KP3B Palima - Kepandean PP', '18:00:00', 10000, '2025-01-07 00:34:56', '2025-01-07 00:34:56'),
(109, 'Angkot 18', '16:30:00', 'Merah', 'R10', 'Terminal Pakupatan - Polda Banten - KP3B Palima - Kepandean PP', '18:30:00', 10000, '2025-01-07 00:34:56', '2025-01-07 00:34:56'),
(110, 'Angkot 19', '17:00:00', 'Merah', 'R10', 'Terminal Pakupatan - Polda Banten - KP3B Palima - Kepandean PP', '19:00:00', 10000, '2025-01-07 00:34:56', '2025-01-07 00:34:56'),
(111, 'Angkot 20', '17:30:00', 'Merah', 'R10', 'Terminal Pakupatan - Polda Banten - KP3B Palima - Kepandean PP', '19:30:00', 10000, '2025-01-07 00:34:56', '2025-01-07 00:34:56'),
(112, 'Angkot 1', '08:00:00', 'Merah', 'E08', 'Serang - Cikande - Balaraja', '10:00:00', 10000, '2025-01-07 00:35:06', '2025-01-07 00:35:06'),
(113, 'Angkot 2', '08:30:00', 'Merah', 'E08', 'Serang - Cikande - Balaraja', '10:30:00', 10000, '2025-01-07 00:35:06', '2025-01-07 00:35:06'),
(114, 'Angkot 3', '09:00:00', 'Merah', 'E08', 'Serang - Cikande - Balaraja', '11:00:00', 10000, '2025-01-07 00:35:06', '2025-01-07 00:35:06'),
(115, 'Angkot 4', '09:30:00', 'Merah', 'E08', 'Serang - Cikande - Balaraja', '11:30:00', 10000, '2025-01-07 00:35:06', '2025-01-07 00:35:06'),
(116, 'Angkot 5', '10:00:00', 'Merah', 'E08', 'Serang - Cikande - Balaraja', '12:00:00', 10000, '2025-01-07 00:35:06', '2025-01-07 00:35:06'),
(117, 'Angkot 6', '10:30:00', 'Merah', 'E08', 'Serang - Cikande - Balaraja', '12:30:00', 10000, '2025-01-07 00:35:06', '2025-01-07 00:35:06'),
(118, 'Angkot 7', '11:00:00', 'Merah', 'E08', 'Serang - Cikande - Balaraja', '13:00:00', 10000, '2025-01-07 00:35:06', '2025-01-07 00:35:06'),
(119, 'Angkot 8', '11:30:00', 'Merah', 'E08', 'Serang - Cikande - Balaraja', '13:30:00', 10000, '2025-01-07 00:35:06', '2025-01-07 00:35:06'),
(120, 'Angkot 9', '12:00:00', 'Merah', 'E08', 'Serang - Cikande - Balaraja', '14:00:00', 10000, '2025-01-07 00:35:06', '2025-01-07 00:35:06'),
(121, 'Angkot 10', '12:30:00', 'Merah', 'E08', 'Serang - Cikande - Balaraja', '14:30:00', 10000, '2025-01-07 00:35:06', '2025-01-07 00:35:06'),
(122, 'Angkot 11', '13:00:00', 'Merah', 'E08', 'Serang - Cikande - Balaraja', '15:00:00', 10000, '2025-01-07 00:35:06', '2025-01-07 00:35:06'),
(123, 'Angkot 12', '13:30:00', 'Merah', 'E08', 'Serang - Cikande - Balaraja', '15:30:00', 10000, '2025-01-07 00:35:06', '2025-01-07 00:35:06'),
(124, 'Angkot 13', '14:00:00', 'Merah', 'E08', 'Serang - Cikande - Balaraja', '16:00:00', 10000, '2025-01-07 00:35:06', '2025-01-07 00:35:06'),
(125, 'Angkot 14', '14:30:00', 'Merah', 'E08', 'Serang - Cikande - Balaraja', '16:30:00', 10000, '2025-01-07 00:35:06', '2025-01-07 00:35:06'),
(126, 'Angkot 15', '15:00:00', 'Merah', 'E08', 'Serang - Cikande - Balaraja', '17:00:00', 10000, '2025-01-07 00:35:06', '2025-01-07 00:35:06'),
(127, 'Angkot 16', '15:30:00', 'Merah', 'E08', 'Serang - Cikande - Balaraja', '17:30:00', 10000, '2025-01-07 00:35:06', '2025-01-07 00:35:06'),
(128, 'Angkot 17', '16:00:00', 'Merah', 'E08', 'Serang - Cikande - Balaraja', '18:00:00', 10000, '2025-01-07 00:35:06', '2025-01-07 00:35:06'),
(129, 'Angkot 18', '16:30:00', 'Merah', 'E08', 'Serang - Cikande - Balaraja', '18:30:00', 10000, '2025-01-07 00:35:06', '2025-01-07 00:35:06'),
(130, 'Angkot 19', '17:00:00', 'Merah', 'E08', 'Serang - Cikande - Balaraja', '19:00:00', 10000, '2025-01-07 00:35:06', '2025-01-07 00:35:06'),
(131, 'Angkot 20', '17:30:00', 'Merah', 'E08', 'Serang - Cikande - Balaraja', '19:30:00', 10000, '2025-01-07 00:35:06', '2025-01-07 00:35:06'),
(132, 'Angkot 11', '08:30:00', 'Merah', 'R01', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '16:30:00', 10000, '2025-01-07 00:38:51', '2025-01-07 00:38:51'),
(133, 'Angkot 12', '09:00:00', 'Merah', 'R01', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '17:00:00', 10000, '2025-01-07 00:38:51', '2025-01-07 00:38:51'),
(134, 'Angkot 13', '09:30:00', 'Merah', 'R01', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '17:30:00', 10000, '2025-01-07 00:38:51', '2025-01-07 00:38:51'),
(135, 'Angkot 14', '10:00:00', 'Merah', 'R01', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '18:00:00', 10000, '2025-01-07 00:38:51', '2025-01-07 00:38:51'),
(136, 'Angkot 15', '10:30:00', 'Merah', 'R01', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '18:30:00', 10000, '2025-01-07 00:38:51', '2025-01-07 00:38:51'),
(137, 'Angkot 16', '11:00:00', 'Merah', 'R01', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '19:00:00', 10000, '2025-01-07 00:38:51', '2025-01-07 00:38:51'),
(138, 'Angkot 17', '11:30:00', 'Merah', 'R01', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '19:30:00', 10000, '2025-01-07 00:38:51', '2025-01-07 00:38:51'),
(139, 'Angkot 18', '12:00:00', 'Merah', 'R01', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '20:00:00', 10000, '2025-01-07 00:38:51', '2025-01-07 00:38:51'),
(140, 'Angkot 19', '12:30:00', 'Merah', 'R01', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '20:30:00', 10000, '2025-01-07 00:38:51', '2025-01-07 00:38:51'),
(141, 'Angkot 20', '13:00:00', 'Merah', 'R01', 'Terminal Pakupatan-Ahmad Yani-Kepandean PP', '21:00:00', 10000, '2025-01-07 00:38:51', '2025-01-07 00:38:51');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_05_031926_rute_angkot', 2),
(5, '2025_01_05_065150_create_angkots_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rute_angkot`
--

CREATE TABLE `rute_angkot` (
  `id` bigint UNSIGNED NOT NULL,
  `no_angkot` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `warna_angkot` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trayek` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rute` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_berangkat` time NOT NULL,
  `jam_pulang` time NOT NULL,
  `tarif` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('eXaycGRPacTON1PnPwYkqnv30TcYyxfgtffMLwlF', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2lHOGFOU0VKSjRwYW9zOExlRmVVQ2sxU3ZyajZyYlpyWDJ3Y0JMOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTE0OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYW5na290L2Nhcmk/amFtX2JlcmFuZ2thdD0wOCUzQTAwJTNBMDAmcnV0ZV9qYWxhbj1UZXJtaW5hbCUyMFBha3VwYXRhbi1DaWNlcmktS2VwYW5kZWFuJTIwUFAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1736522585);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `angkots`
--
ALTER TABLE `angkots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `rute_angkot`
--
ALTER TABLE `rute_angkot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `angkots`
--
ALTER TABLE `angkots`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rute_angkot`
--
ALTER TABLE `rute_angkot`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
