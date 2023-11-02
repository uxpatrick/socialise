-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 02, 2023 at 08:23 AM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialise`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `createdAt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `content`, `comments`, `author`, `createdAt`) VALUES
(1, 'Testowy', NULL, NULL, '2023-10-30'),
(2, 'Testowy', NULL, '2', '2023-10-30'),
(3, 'Testowy', NULL, 'Kuba', '2023-10-30'),
(4, 'teSTOWY dla patrkyka', NULL, 'patryk', '2023-10-30'),
(5, 'POSCIAK', NULL, 'Niskorosły', '2023-10-30'),
(6, 'POSCIAK', NULL, 'Niskorosły', '2023-10-30'),
(7, '', NULL, 'Sigma', '2023-10-30'),
(8, 'sdadas', NULL, 'Sigma', '2023-10-30'),
(9, 'prawie działa', NULL, 'Sigma', '2023-10-30'),
(10, 'asdasdas', NULL, 'Sigma', '2023-10-30'),
(11, 'asdasdas', NULL, 'Sigma', '2023-10-30'),
(12, 'zlom', NULL, 'Sigma', '2023-10-30'),
(13, 'zlom', NULL, 'Sigma', '2023-10-30'),
(14, 'zlom', NULL, 'Sigma', '2023-10-30'),
(15, 'zlom', NULL, 'Sigma', '2023-10-30'),
(16, 'zlom', NULL, 'Sigma', '2023-10-30'),
(17, 'zlom', NULL, 'Sigma', '2023-10-30'),
(18, 'zlom', NULL, 'Sigma', '2023-10-30'),
(19, 'zlom', NULL, 'Sigma', '2023-10-30'),
(20, 'zlom', NULL, 'Sigma', '2023-10-30'),
(21, 'zlom', NULL, 'Sigma', '2023-10-30'),
(22, ' Lorem ipsum lorem sdaskdjaskdjLorem ipsum lorem sdaskdjaskdjLorem ipsum lorem sdaskdjaskdjLorem ipsum lorem sdaskdjaskdjLorem ipsum lorem sdaskdjaskdjLorem ipsum lorem sdaskdjaskdjLorem ipsum lorem sdaskdjaskdjLorem ipsum lorem sdaskdjaskdjLorem ipsum lo', NULL, 'Sigma', '2023-10-30'),
(23, 'Hej! Witam Was! :D', NULL, 'Sigma', '2023-10-30'),
(24, '', NULL, 'Sigma', '2023-11-02'),
(25, '', NULL, 'Sigma', '2023-11-02'),
(26, '', NULL, 'Sigma', '2023-11-02'),
(27, '', NULL, 'Sigma', '2023-11-02'),
(28, 'dsadsa', NULL, 'Sigma', '2023-11-02'),
(29, 'nowy poscik', NULL, 'Sigma', '2023-11-02'),
(30, '', NULL, 'Sigma', '2023-11-02');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(32) NOT NULL,
  `mail` varchar(128) NOT NULL,
  `password` varchar(1024) NOT NULL,
  `friend_id` varchar(11) NOT NULL,
  `friends` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `mail`, `password`, `friend_id`, `friends`) VALUES
(1, 'patryk', 'patryk@gmail.com', '1070707797e58d10232ea970bf950843', '1XbhA', '0'),
(2, 'Kuba', 'kuba@gmail.com', '1070707797e58d10232ea970bf950843', '2uYhA', ''),
(7, 'Sigma', 'sigma@gmail.com', 'e773536932c61c7ee11944cefde49e30', '3EuCR', '');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
