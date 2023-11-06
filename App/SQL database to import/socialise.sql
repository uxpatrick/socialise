-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 06, 2023 at 05:02 PM
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
-- Struktura tabeli dla tabeli `friends`
--

CREATE TABLE `friends` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `connected_to` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `user_id`, `connected_to`) VALUES
(2, '8', '1'),
(3, '8', '7'),
(4, '8', '2'),
(5, '7', '2'),
(6, '9', '9');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `createdAt` varchar(255) NOT NULL,
  `attachments` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `content`, `comments`, `author`, `createdAt`, `attachments`) VALUES
(1, 'Test z głównej', NULL, 'Sigma', '2023-11-02 10:20:45', ''),
(2, 'Komentarz z popup bez zdjęcia', NULL, 'Sigma', '2023-11-02 10:21:08', ''),
(3, 'Komentarz z popup ze zdjeciem', NULL, 'Sigma', '2023-11-02 10:21:21', 0x3336305f465f39323533353636345f497646735165486a427a6645367344345648644f3875354f48555363367948462e6a7067);

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
(1, 'patryk', 'patryk@gmail.com', '1070707797e58d10232ea970bf950843', '#1XbhA', '0'),
(2, 'Kuba', 'kuba@gmail.com', '1070707797e58d10232ea970bf950843', '#2uYhA', ''),
(7, 'Sigma', 'sigma@gmail.com', 'e773536932c61c7ee11944cefde49e30', '#3EuCR', ''),
(8, 'buki', 'buki@gmail.com', '9c9e8429c30861ee8d7266b454085635', '#8ugsF', ''),
(9, 'malpka', 'gorilla@gmail.com', '8621e77d22f0830a46b462e3f46ed917', '#9KAfg', '');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
