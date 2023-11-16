-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 16 Lis 2023, 11:08
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.1.2

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
-- Struktura tabeli dla tabeli `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `createdAt` varchar(255) NOT NULL,
  `author_id` int(11) NOT NULL,
  `post_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `comments`
--

INSERT INTO `comments` (`id`, `content`, `createdAt`, `author_id`, `post_id`) VALUES
(32, 'dasdasdas', '2023-11-09 09:42:24', 7, '33'),
(33, 'sdsaas', '2023-11-09 09:51:33', 7, '33'),
(34, 'dasdasdsadasdas', '2023-11-09 10:24:17', 7, '33'),
(35, 'asdasdas', '2023-11-09 10:24:25', 7, '33'),
(36, 'sdas', '2023-11-09 10:26:01', 7, '33'),
(37, 'dsadas', '2023-11-09 10:38:45', 7, '33'),
(38, 'KOMENTARZ', '2023-11-10 08:28:58', 8, '30'),
(39, 'KOMENTARZyk', '2023-11-10 08:29:39', 8, '30'),
(40, 'dis', '2023-11-10 08:49:03', 8, '30'),
(41, 'aaa', '2023-11-10 08:49:09', 8, '27'),
(42, 'aaa', '2023-11-10 09:11:59', 8, '17'),
(43, 'ae2', '2023-11-10 09:12:37', 8, '17'),
(44, 'ja', '2023-11-10 09:27:56', 13, '39'),
(45, 'ja chetnie', '2023-11-10 09:35:52', 13, '40'),
(46, 'nie', '2023-11-10 10:04:07', 18, '39'),
(47, 'KOMENTARZ', '2023-11-10 10:04:16', 18, '39'),
(48, 'sdadsa', '2023-11-10 10:20:51', 18, '46'),
(49, 'asdasdadsdasdasdas', '2023-11-10 10:26:37', 20, '47'),
(50, 'nowy', '2023-11-10 10:26:50', 20, '48'),
(51, 'stary', '2023-11-10 10:26:59', 20, '48'),
(52, 'od golda w gore', '2023-11-10 10:36:11', 22, '39'),
(53, 'dis', '2023-11-10 10:36:19', 22, '39'),
(54, 'prywatny komentarz', '2023-11-10 10:38:23', 22, '46'),
(55, 'aa', '2023-11-16 08:27:27', 24, '51'),
(56, 'asd', '2023-11-16 08:27:28', 24, '51'),
(57, 'asd', '2023-11-16 08:27:28', 24, '51'),
(58, '#komentarz', '2023-11-16 11:00:32', 24, ''),
(59, 'dis', '2023-11-16 11:00:39', 24, ''),
(60, 'komentarzyk', '2023-11-16 11:01:02', 24, ''),
(61, 'asdsadas', '2023-11-16 11:02:10', 24, ''),
(62, 'fdgfdgfd', '2023-11-16 11:02:16', 24, ''),
(63, 'dis', '2023-11-16 11:06:15', 24, '51'),
(64, 'aezakmi', '2023-11-16 11:06:30', 24, '51'),
(65, 'aaa', '2023-11-16 11:06:38', 24, '59');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `friends`
--

CREATE TABLE `friends` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `connected_to` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(15, '11', '10'),
(16, '7', '7'),
(17, '8', '8'),
(18, '13', '12'),
(19, '12', '12'),
(20, '12', '12'),
(21, '', ''),
(22, '12', '12'),
(23, '', ''),
(24, '', ''),
(25, '', ''),
(26, '17', '8'),
(27, '18', '18'),
(37, '12', '12'),
(38, '19', '19'),
(39, '20', '20'),
(40, '20', '20'),
(41, '20', '20'),
(42, '20', '20'),
(43, '21', '21'),
(44, '22', '22'),
(45, '22', '18'),
(46, '22', '22'),
(47, '22', ''),
(48, '18', '18'),
(49, '18', '18'),
(50, '18', '18'),
(51, '18', '13'),
(52, '18', '13'),
(53, '18', '10'),
(54, '23', '23'),
(55, '23', '10'),
(56, '24', '24');

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
  `status` varchar(255) NOT NULL,
  `likes` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `posts`
--

INSERT INTO `posts` (`id`, `content`, `comments`, `author`, `createdAt`, `attachments`, `author_id`, `status`, `likes`) VALUES
(1, 'Test z głównej', NULL, 'Sigma', '2023-11-02 10:20:45', '', '7', 'public', ''),
(2, 'Komentarz z popup bez zdjęcia', NULL, 'Sigma', '2023-11-02 10:21:08', '', '7', 'public', ''),
(3, 'Komentarz z popup ze zdjeciem', NULL, 'Sigma', '2023-11-02 10:21:21', 0x3336305f465f39323533353636345f497646735165486a427a6645367344345648644f3875354f48555363367948462e6a7067, '7', 'public', ''),
(4, 'poscik', NULL, 'Sigma', '2023-11-07 23:30:45', 0x617274776f726b732d7171474648676473344f695079674e702d7179355a41672d74353030783530302e6a7067, '7', 'public', ''),
(5, 'aa', NULL, 'Sigma', '2023-11-07 23:33:40', 0x617274776f726b732d7171474648676473344f695079674e702d7179355a41672d74353030783530302e6a7067, '7', 'public', ''),
(6, 'aa', NULL, 'Sigma', '2023-11-07 23:34:13', 0x617274776f726b732d7171474648676473344f695079674e702d7179355a41672d74353030783530302e6a7067, '7', 'public', ''),
(7, 'asasd', NULL, 'Sigma', '2023-11-07 23:35:28', 0x617274776f726b732d7171474648676473344f695079674e702d7179355a41672d74353030783530302e6a7067, '7', 'public', ''),
(8, 'asddas', NULL, 'Sigma', '2023-11-07 23:37:17', 0x6161322e706e67, '7', 'public', ''),
(9, 'prywatny post', NULL, 'Sigma', '2023-11-07 23:39:27', 0x6161322e706e67, '7', 'public', ''),
(10, 'publiczny post', NULL, 'Sigma', '2023-11-07 23:39:57', 0x4841524450432e6a7067, '7', 'public', ''),
(11, 'a', NULL, 'Sigma', '2023-11-07 23:48:09', '', '7', 'public', ''),
(12, 'dsasdadas', NULL, 'Sigma', '2023-11-07 23:58:03', '', '7', 'public', ''),
(13, 'saddsa', NULL, 'jumbo', '2023-11-08 00:50:54', '', '10', 'public', ''),
(14, 'aaaaaaaa', NULL, 'jumbo', '2023-11-08 00:52:26', '', '10', 'private', ''),
(15, 'aaaaaaaaaadsasd', NULL, 'jumbo', '2023-11-08 00:54:45', '', '10', 'public', ''),
(16, '123', NULL, 'jumbo', '2023-11-08 00:54:57', '', '10', 'private', ''),
(17, 'dassasad', NULL, 'josik', '2023-11-08 00:57:11', '', '11', 'public', ''),
(18, 'sss', NULL, 'josik', '2023-11-08 01:04:32', '', '11', 'public', ''),
(19, 'ewa', NULL, 'josik', '2023-11-08 01:06:26', '', '11', 'public', ''),
(20, '', NULL, 'josik', '2023-11-08 01:07:30', '', '11', 'public', ''),
(21, '123', NULL, 'josik', '2023-11-08 01:10:43', '', '11', 'public', ''),
(22, 'nowy', NULL, 'josik', '2023-11-08 01:12:40', '', '11', 'private', ''),
(23, '', NULL, 'josik', '2023-11-08 01:13:08', '', '11', 'private', ''),
(24, '', NULL, 'josik', '2023-11-08 01:14:26', '', '11', 'private', ''),
(25, '', NULL, 'josik', '2023-11-08 01:14:46', '', '11', 'private', ''),
(26, 'hej prywatny', NULL, 'jumbo', '2023-11-08 01:42:47', '', '10', 'private', ''),
(27, 'aaa', NULL, 'jumbo', '2023-11-08 01:43:24', '', '10', 'public', ''),
(28, 'sss', NULL, 'jumbo', '2023-11-08 01:43:28', '', '10', 'private', ''),
(29, 'dsasad', NULL, 'jumbo', '2023-11-08 01:43:31', '', '10', 'private', ''),
(30, 'public', NULL, 'jumbo', '2023-11-08 01:43:59', '', '10', 'public', ''),
(31, 'prywat', NULL, 'jumbo', '2023-11-08 01:44:05', '', '10', 'private', ''),
(32, 'prywatna krowa', NULL, 'jumbo', '2023-11-08 01:51:21', 0x617274776f726b732d7171474648676473344f695079674e702d7179355a41672d74353030783530302e6a7067, '10', 'private', ''),
(33, 'fasdasd', NULL, 'Sigma', '2023-11-09 08:27:56', 0x3338373333303430355f3139393536333739333038383336395f343336323739353934313830393237343832345f6e2e6a7067, '7', 'public', ''),
(34, 'post', NULL, 'cocko123', '2023-11-09 12:03:40', '', '7', 'public', ''),
(35, 'joshua', NULL, 'goryl', '2023-11-09 12:04:07', '', '9', 'blocked_account', ''),
(36, 'goryl', NULL, 'goryl', '2023-11-09 12:04:26', '', '9', 'blocked_account', ''),
(38, 'prywatny post buki', NULL, 'bukis', '2023-11-10 08:32:16', '', '8', 'private', ''),
(39, 'Kto gra w rocket league?', NULL, 'kris', '2023-11-10 09:27:50', '', '12', 'public', ''),
(40, 'kto gra w rocket league tylko znajomi!', NULL, 'kris', '2023-11-10 09:28:36', '', '12', 'private', ''),
(41, '', NULL, 'kris', '2023-11-10 09:28:40', '', '12', 'private', ''),
(42, 'asd', NULL, 'kris', '2023-11-10 09:28:40', '', '12', 'private', ''),
(43, 'post od pablo', NULL, 'pablo', '2023-11-10 10:09:52', '', '13', 'blocked_account', ''),
(44, 'prywatny post od pablo', NULL, 'pablo', '2023-11-10 10:09:58', '', '13', 'blocked_account', ''),
(45, 'asdasdasdasdasdasd', NULL, 'Mateusz', '2023-11-10 10:16:32', '', '18', 'private', ''),
(46, '123', NULL, 'Mateusz', '2023-11-10 10:16:44', '', '18', 'private', ''),
(47, 'asddsadsa', NULL, 'luckyluke', '2023-11-10 10:26:11', '', '20', 'blocked_account', ''),
(48, 'asdsadsda', NULL, 'luckyluke', '2023-11-10 10:26:14', '', '20', 'blocked_account', ''),
(49, 'Hej jestem tutaj nowy', NULL, 'przybylski', '2023-11-10 10:35:45', '', '22', 'public', ''),
(50, 'szybki text', NULL, 'przybylski', '2023-11-10 10:37:02', '', '22', 'public', ''),
(51, 'Zdjęcie rekina', NULL, 'bobo', '2023-11-10 11:29:33', 0x662d72656b696e5f726166612e6a7067, '23', 'public', ''),
(52, 'asd', NULL, 'login1234', '2023-11-16 08:28:05', '', '24', 'private', ''),
(53, 'Dodawajcie mnie do znaj #2bNEK', NULL, 'login1234', '2023-11-16 09:48:56', '', '24', 'public', ''),
(54, '#2bNEK', NULL, 'login1234', '2023-11-16 10:16:34', '', '24', 'public', ''),
(55, '#2bNES', NULL, 'login1234', '2023-11-16 10:17:01', '', '24', 'public', ''),
(56, 'hej #powitanie', NULL, 'login1234', '2023-11-16 10:44:08', '', '24', 'public', ''),
(57, 'hej #didi asas #shoko', NULL, 'login1234', '2023-11-16 10:44:27', '', '24', 'public', ''),
(58, 'hejka #XOXO', NULL, 'login1234', '2023-11-16 10:45:46', '', '24', 'public', ''),
(59, '#test', NULL, 'login1234', '2023-11-16 10:59:55', '', '24', 'private', '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `reactions`
--

CREATE TABLE `reactions` (
  `id` int(11) NOT NULL,
  `post_id` varchar(256) NOT NULL,
  `user` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `reactions`
--

INSERT INTO `reactions` (`id`, `post_id`, `user`) VALUES
(1, '51', 'dis'),
(2, '51', '24'),
(3, '50', '24'),
(4, '39', '24'),
(5, '33', '24'),
(6, '51', '24'),
(7, '33', '24'),
(8, '34', '24'),
(9, '39', '24'),
(10, '34', '24'),
(11, '34', '24'),
(12, '34', '24'),
(13, '34', '24'),
(14, '34', '24'),
(15, '34', '24'),
(16, '34', '24'),
(17, '51', '24'),
(18, '39', '24'),
(19, '39', '24'),
(20, '39', '24'),
(21, '51', '24'),
(22, '51', '24'),
(23, '51', '24'),
(24, '51', '24'),
(25, '49', '24'),
(26, '39', '24'),
(27, '34', '24'),
(28, '34', '24'),
(29, '39', '24'),
(30, '49', '24'),
(31, '50', '24'),
(32, '39', '24'),
(33, '39', '24'),
(34, '57', '24'),
(35, '58', '24'),
(36, '58', '24'),
(37, '58', '24'),
(38, '58', '24'),
(39, '58', '24'),
(40, '58', '24'),
(41, '58', '24'),
(42, '58', '24'),
(43, '58', '24'),
(44, '58', '24'),
(45, '58', '24'),
(46, '58', '24'),
(47, '58', '24'),
(48, '58', '24'),
(49, '58', '24'),
(50, '58', '24'),
(51, '58', '24'),
(52, '52', '24'),
(53, '52', '24'),
(54, '57', '24'),
(55, '54', '24'),
(56, '54', '24'),
(57, '54', '24'),
(58, '54', '24'),
(59, '54', '24'),
(60, '54', '24'),
(61, '52', '24'),
(62, '52', '24'),
(63, '52', '24'),
(64, '52', '24'),
(65, '52', '24'),
(66, '57', '24'),
(67, '57', '24'),
(68, '57', '24'),
(69, '57', '24'),
(70, '52', '24'),
(71, '52', '24'),
(72, '58', '24');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `login`, `mail`, `password`, `friend_id`, `friends`) VALUES
(1, 'Patryk', 'patryk@gmail.com', '1070707797e58d10232ea970bf950843', '#1XbhA', '0'),
(2, 'Kuba', 'kuba@gmail.com', '1070707797e58d10232ea970bf950843', '#2uYhA', ''),
(7, 'cocko123', 'sigma@gmail.com', 'blocked_account', '#3EuCR', ''),
(8, 'bukis', 'buki@gmail.com', '9c9e8429c30861ee8d7266b454085635', '#8ugsF', ''),
(9, 'goryl', 'gorilla@gmail.com', 'blocked_account', '#9KAfg', ''),
(10, 'jumbo', 'jumbo@gmail.com', '86339f77a68038e75a10733d757cba31', '#1S1Gl', ''),
(11, 'josik', 'jos@gmail.com', '2b20d52206bc4252810d8a883797126b', '#1IKMu', ''),
(12, 'kris', 'krzys@gmail.com', '03e13700e25563c0c0a8ffdb48dbbc19', '#1I08W', ''),
(13, 'pablo', 'pablo@gmail.com', 'blocked_account', '#1iTlH', ''),
(14, 'nowy', 'nowy@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '#Array', ''),
(15, 'check', 'check@gmail.com', '202cb962ac59075b964b07152d234b70', '#Array', ''),
(16, '1234', 'broker@g.com', '81dc9bdb52d04dc20036dbd8313ed055', '#Array', ''),
(17, 'mongos123', 'mongos@g.com', 'blocked_account', '#Array', ''),
(18, 'Mateusz', 'mati@gmail.com', 'b31b9b6bfd41ae0e02ad82fc005bfc65', '#1NLWv', ''),
(19, 'pobo', 'pobo@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '#1eljJ', ''),
(20, 'luckyluke', 'luckyluke@gmail.com', 'blocked_account', '#2GCMU', ''),
(21, 'patryk', 'self@gmail.com', '9a3037ff76af7d4230729c0341a54e71', '#2KbCT', ''),
(22, 'przybylski', 'kumpel@gmail.com', 'c86505b1510e7d0cbb1cbe60178ba280', '#29oDs', ''),
(23, 'bobo', 'bobo@gmail.com', 'e1ce76f012018c45601323addbeae4f6', '#2MymZ', ''),
(24, 'login1234', 'login123@gmail.com', '0c30bf28c82e104176bd745dc559f0b6', '#2bNEK', '');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

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
-- Indeksy dla tabeli `reactions`
--
ALTER TABLE `reactions`
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
-- AUTO_INCREMENT dla tabeli `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT dla tabeli `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT dla tabeli `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT dla tabeli `reactions`
--
ALTER TABLE `reactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
