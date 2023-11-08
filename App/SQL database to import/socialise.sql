-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 08 Lis 2023, 01:53
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `socialise`
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
-- Zrzut danych tabeli `friends`
--

INSERT INTO `friends` (`id`, `user_id`, `connected_to`) VALUES
(2, '8', '1'),
(3, '8', '7'),
(4, '8', '2'),
(5, '7', '2'),
(6, '9', '9'),
(7, '10', '7'),
(8, '10', '10'),
(9, '11', '7'),
(10, '11', '2'),
(11, '11', '2'),
(12, '11', '2'),
(13, '11', '2'),
(14, '11', '11'),
(15, '11', '10');

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
  `attachments` blob DEFAULT NULL,
  `author_id` varchar(256) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `posts`
--

INSERT INTO `posts` (`id`, `content`, `comments`, `author`, `createdAt`, `attachments`, `author_id`, `status`) VALUES
(1, 'Test z głównej', NULL, 'Sigma', '2023-11-02 10:20:45', '', '7', ''),
(2, 'Komentarz z popup bez zdjęcia', NULL, 'Sigma', '2023-11-02 10:21:08', '', '7', ''),
(3, 'Komentarz z popup ze zdjeciem', NULL, 'Sigma', '2023-11-02 10:21:21', 0x3336305f465f39323533353636345f497646735165486a427a6645367344345648644f3875354f48555363367948462e6a7067, '7', ''),
(4, 'poscik', NULL, 'Sigma', '2023-11-07 23:30:45', 0x617274776f726b732d7171474648676473344f695079674e702d7179355a41672d74353030783530302e6a7067, '7', ''),
(5, 'aa', NULL, 'Sigma', '2023-11-07 23:33:40', 0x617274776f726b732d7171474648676473344f695079674e702d7179355a41672d74353030783530302e6a7067, '7', ''),
(6, 'aa', NULL, 'Sigma', '2023-11-07 23:34:13', 0x617274776f726b732d7171474648676473344f695079674e702d7179355a41672d74353030783530302e6a7067, '7', ''),
(7, 'asasd', NULL, 'Sigma', '2023-11-07 23:35:28', 0x617274776f726b732d7171474648676473344f695079674e702d7179355a41672d74353030783530302e6a7067, '7', ''),
(8, 'asddas', NULL, 'Sigma', '2023-11-07 23:37:17', 0x6161322e706e67, '7', ''),
(9, 'prywatny post', NULL, 'Sigma', '2023-11-07 23:39:27', 0x6161322e706e67, '7', 'private'),
(10, 'publiczny post', NULL, 'Sigma', '2023-11-07 23:39:57', 0x4841524450432e6a7067, '7', 'public'),
(11, 'a', NULL, 'Sigma', '2023-11-07 23:48:09', '', '7', ''),
(12, 'dsasdadas', NULL, 'Sigma', '2023-11-07 23:58:03', '', '7', ''),
(13, 'saddsa', NULL, 'jumbo', '2023-11-08 00:50:54', '', '10', 'public'),
(14, 'aaaaaaaa', NULL, 'jumbo', '2023-11-08 00:52:26', '', '10', 'private'),
(15, 'aaaaaaaaaadsasd', NULL, 'jumbo', '2023-11-08 00:54:45', '', '10', 'public'),
(16, '123', NULL, 'jumbo', '2023-11-08 00:54:57', '', '10', 'private'),
(17, 'dassasad', NULL, 'josik', '2023-11-08 00:57:11', '', '11', 'public'),
(18, 'sss', NULL, 'josik', '2023-11-08 01:04:32', '', '11', 'public'),
(19, 'ewa', NULL, 'josik', '2023-11-08 01:06:26', '', '11', 'public'),
(20, '', NULL, 'josik', '2023-11-08 01:07:30', '', '11', 'public'),
(21, '123', NULL, 'josik', '2023-11-08 01:10:43', '', '11', 'public'),
(22, 'nowy', NULL, 'josik', '2023-11-08 01:12:40', '', '11', 'private'),
(23, '', NULL, 'josik', '2023-11-08 01:13:08', '', '11', 'private'),
(24, '', NULL, 'josik', '2023-11-08 01:14:26', '', '11', 'private'),
(25, '', NULL, 'josik', '2023-11-08 01:14:46', '', '11', 'private'),
(26, 'hej prywatny', NULL, 'jumbo', '2023-11-08 01:42:47', '', '10', 'private'),
(27, 'aaa', NULL, 'jumbo', '2023-11-08 01:43:24', '', '10', 'public'),
(28, 'sss', NULL, 'jumbo', '2023-11-08 01:43:28', '', '10', 'private'),
(29, 'dsasad', NULL, 'jumbo', '2023-11-08 01:43:31', '', '10', 'private'),
(30, 'public', NULL, 'jumbo', '2023-11-08 01:43:59', '', '10', 'public'),
(31, 'prywat', NULL, 'jumbo', '2023-11-08 01:44:05', '', '10', 'private'),
(32, 'prywatna krowa', NULL, 'jumbo', '2023-11-08 01:51:21', 0x617274776f726b732d7171474648676473344f695079674e702d7179355a41672d74353030783530302e6a7067, '10', 'private');

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
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `login`, `mail`, `password`, `friend_id`, `friends`) VALUES
(1, 'patryk', 'patryk@gmail.com', '1070707797e58d10232ea970bf950843', '#1XbhA', '0'),
(2, 'Kuba', 'kuba@gmail.com', '1070707797e58d10232ea970bf950843', '#2uYhA', ''),
(7, 'Sigma', 'sigma@gmail.com', 'e773536932c61c7ee11944cefde49e30', '#3EuCR', ''),
(8, 'buki', 'buki@gmail.com', '9c9e8429c30861ee8d7266b454085635', '#8ugsF', ''),
(9, 'malpka', 'gorilla@gmail.com', '8621e77d22f0830a46b462e3f46ed917', '#9KAfg', ''),
(10, 'jumbo', 'jumbo@gmail.com', '86339f77a68038e75a10733d757cba31', '#1S1Gl', ''),
(11, 'josik', 'jos@gmail.com', '2b20d52206bc4252810d8a883797126b', '#1IKMu', '');

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
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
