-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 11, 2019 at 06:46 AM
-- Server version: 10.3.14-MariaDB
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
-- Database: `smee`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(11) NOT NULL,
  `unique_id` varchar(23) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `encrypted_password` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `salt` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `unique_id`, `name`, `email`, `encrypted_password`, `salt`, `created_at`) VALUES
(1, '5cde2993f1ca73.02984814', 'tom', 'test@gmail.com', '$2y$10$3oRbPBRx3KQr/nq5.RA0Hubyl1KZcJqIzj4dYVtQTZBHx8Duc5QlW', 'e98e301fe1', '2019-05-17 03:25:08'),
(2, '5cdfdd591cd7a2.25658615', 'saboo', 'h@h.com', '$2y$10$uRaT/8AJ1jEDXYVzCyJUHem1Tcnt2YCzunEvomojBz3tGMPJWym.a', '579fd24697', '2019-05-18 10:24:25'),
(3, '5cdfdde02a78d2.89566533', 'saboo', 'saboo@gmail.com', '$2y$10$UjdGMtRc9FHgYEMb3Qv3cu0McYcCY52smr8bM5uoIyI6EJ0yxUkzW', 'c453a21729', '2019-05-18 10:26:40'),
(4, '5cdfe50f285c14.21579528', 'saboo', 'b@b.com', '$2y$10$J1/QxONvg84PiFQDlKP5QuCxvaKCxGzIscR54gVm9ZrNYpnLGjHyC', 'ff3f7ba933', '2019-05-18 10:57:19'),
(5, '5cdff07abc2e63.97059714', 'saboo', 'qwerty@gmail.com', '$2y$10$OX9HaH0gCh.9kAyDT3JzUueT58XVRCNururO0QFNeR.Ys0Obvr3Zy', '2d794b374e', '2019-05-18 11:46:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
