-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2023 at 11:48 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `formation_pro`
--

-- --------------------------------------------------------

--
-- Table structure for table `apprenant`
--

CREATE TABLE `apprenant` (
  `id_apprenant` int(11) NOT NULL,
  `nom_apprenant` varchar(50) NOT NULL,
  `prenom_apprenant` varchar(50) NOT NULL,
  `email_apprenant` varchar(50) NOT NULL,
  `pswd_apprenant` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `apprenant`
--

INSERT INTO `apprenant` (`id_apprenant`, `nom_apprenant`, `prenom_apprenant`, `email_apprenant`, `pswd_apprenant`) VALUES
(1, 'Benomar', 'Mohammed Yassine', 'moyassin.benomar@gmail.com', 'benomar123'),
(2, 'Souiri', 'Haitam', 'souiri.haitam@gmail.com', 'souiri123'),
(3, 'Moundelssi', 'Yassine', 'moundelssi.yassine@gmail.com', 'moundelssi123'),
(4, 'Nemmassi', 'Marwane', 'nemmassi.marwane@gmail.com', 'nemmassi123'),
(5, 'Jaouane', 'Mohammed Ashraf', 'moashraf.jaouane@gmail.com', 'jaouane123');

-- --------------------------------------------------------

--
-- Table structure for table `evaluation`
--

CREATE TABLE `evaluation` (
  `id_evaluation` int(11) NOT NULL,
  `resultat` varchar(20) NOT NULL,
  `date_evaluation` date NOT NULL,
  `id_apprenant` int(11) NOT NULL,
  `id_session` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `evaluation`
--

INSERT INTO `evaluation` (`id_evaluation`, `resultat`, `date_evaluation`, `id_apprenant`, `id_session`) VALUES
(1, 'Valid', '2023-04-30', 1, 1),
(2, 'Invalid', '2023-04-30', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `formateur`
--

CREATE TABLE `formateur` (
  `id_formateur` int(11) NOT NULL,
  `nom_formateur` varchar(50) NOT NULL,
  `prenom_formateur` varchar(50) NOT NULL,
  `email_formateur` varchar(50) NOT NULL,
  `pswd_formateur` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `formateur`
--

INSERT INTO `formateur` (`id_formateur`, `nom_formateur`, `prenom_formateur`, `email_formateur`, `pswd_formateur`) VALUES
(1, 'Bouziane', 'Imane', 'bouziane.imane@gmail.com', 'bouziane123'),
(2, 'Alilou', 'Saad', 'alilou.saad@gmail.com', 'alilou123'),
(3, 'Chebab', 'Fatin', 'chebab.fatin@gmail.com', 'chebab123');

-- --------------------------------------------------------

--
-- Table structure for table `formation`
--

CREATE TABLE `formation` (
  `id_formation` int(11) NOT NULL,
  `sujet` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `categorie` varchar(50) NOT NULL,
  `masse_horaire` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `formation`
--

INSERT INTO `formation` (`id_formation`, `sujet`, `description`, `categorie`, `masse_horaire`, `image`) VALUES
(1, 'Linux Fundamentals', 'This module covers the fundamentals required to work comfortably with the Linux operating system and shell.', 'Operating System', 6, 'linux.jpg'),
(2, 'Windows Fundamentals', 'This module covers the fundamentals required to work comfortably with the Windows operating system.', 'Operating System', 6, 'windows.jpg'),
(3, 'Adobe Photoshop Essentials', 'This Adobe Photoshop Beginner Course will teach a Beginner Photoshop user all essentials of Adobe Photoshop CC.', 'Design', 12, 'photoshop.jpg'),
(4, 'Adobe Illustrator Essentials', 'Learn Adobe Illustrator CC graphic design, logo design, and more with this in-depth, practical, easy-to-follow course!', 'Design', 9, 'Illustrator.jpg'),
(5, 'Javascript Bootcamp Course', 'The most up-to-date JS resource course! Master Javascript by building a beautiful portfolio of projects!', 'Development', 52, 'javascript.jpg'),
(6, 'PHP Bootcamp Course', 'Learn everything you need to become a professional PHP developer with practical exercises & projects.', 'Development', 37, 'php.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id_session` int(11) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `max_places` int(11) NOT NULL,
  `etat` varchar(50) NOT NULL,
  `id_formation` int(11) NOT NULL,
  `id_formateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id_session`, `date_debut`, `date_fin`, `max_places`, `etat`, `id_formation`, `id_formateur`) VALUES
(1, '2023-04-14', '2023-04-20', 24, 'Registering', 1, 1),
(2, '2023-04-14', '2023-04-20', 24, 'Registration completed', 2, 1),
(3, '2023-04-14', '2023-04-26', 20, 'Canceled', 3, 2),
(4, '2023-04-02', '2023-04-21', 20, 'In progress', 4, 2),
(5, '2023-05-10', '2023-06-30', 15, 'Closed', 5, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apprenant`
--
ALTER TABLE `apprenant`
  ADD PRIMARY KEY (`id_apprenant`);

--
-- Indexes for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`id_evaluation`),
  ADD KEY `id_session` (`id_session`),
  ADD KEY `evaluation_ibfk_1` (`id_apprenant`);

--
-- Indexes for table `formateur`
--
ALTER TABLE `formateur`
  ADD PRIMARY KEY (`id_formateur`);

--
-- Indexes for table `formation`
--
ALTER TABLE `formation`
  ADD PRIMARY KEY (`id_formation`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id_session`),
  ADD KEY `id_formation` (`id_formation`),
  ADD KEY `id_formateur` (`id_formateur`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apprenant`
--
ALTER TABLE `apprenant`
  MODIFY `id_apprenant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `id_evaluation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `formateur`
--
ALTER TABLE `formateur`
  MODIFY `id_formateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `formation`
--
ALTER TABLE `formation`
  MODIFY `id_formation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id_session` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `evaluation_ibfk_1` FOREIGN KEY (`id_apprenant`) REFERENCES `apprenant` (`id_apprenant`),
  ADD CONSTRAINT `evaluation_ibfk_2` FOREIGN KEY (`id_session`) REFERENCES `session` (`id_session`);

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `session_ibfk_1` FOREIGN KEY (`id_formation`) REFERENCES `formation` (`id_formation`),
  ADD CONSTRAINT `session_ibfk_2` FOREIGN KEY (`id_formateur`) REFERENCES `formateur` (`id_formateur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;