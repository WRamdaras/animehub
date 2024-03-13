-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 13 dec 2023 om 10:22
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthone`
--
CREATE DATABASE IF NOT EXISTS `healthone` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `healthone`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `adventure`
--

DROP TABLE IF EXISTS `adventure`;
CREATE TABLE `adventure` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `info` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `adventure`
--

INSERT INTO `adventure` (`id`, `name`, `image`, `info`) VALUES
(1, 'Hunterxhunter', 'hunter.jpg', '\r\nHunter x Hunter, gecreëerd door Yoshihiro Togashi, volgt Gon Freecss, een jongen die zijn vermiste vader wil vinden en Hunter wil worden, een elite-jager met uiteenlopende vaardigheden. Samen met vrienden zoals Killua, Kurapika en Leorio, ondergaat Gon gevaarlijke beproevingen, vecht tegen krachtige vijanden en ontdekt de complexe wereld van Nen, een geavanceerd energiesysteem. De serie verkent thema\'s zoals vriendschap, avontuur en de zoektocht naar persoonlijke identiteit.'),
(2, 'One piece', 'one-piece.jpe', 'One Piece, gecreëerd door Eiichiro Oda, volgt Monkey D. Luffy en zijn diverse bemanning terwijl ze zoeken naar de ultieme schat, de One Piece, om koning der piraten te worden. Luffy\'s droom om de legendarische schat te vinden, leidt tot epische avonturen, ontmoetingen met buitengewone personages en confrontaties met gevaarlijke piraten en overheidsorganisaties. De serie verkent vriendschap, doorzettingsvermogen en vrijheid in een wereld van eilanden en zeeën.'),
(3, 'Vinland saga', 'vinland-saga.jpg', ''),
(4, 'Dr stone', 'dr-stone.jpg', '\r\nDr. Stone, geschreven door Riichiro Inagaki en geïllustreerd door Boichi, volgt Senku Ishigami in een post-apocalyptische wereld waarin alle menselijke wezens zijn versteend. Senku ontwaakt en gebruikt zijn wetenschappelijke kennis om de mensheid te herbouwen. Samen met vrienden en bondgenoten werkt hij aan het herstellen van de beschaving, het bestrijden van nieuwe uitdagingen en het ontdekken van de oorsprong van de mysterieuze versteende kracht die de wereld heeft veranderd.');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `anime`
--

DROP TABLE IF EXISTS `anime`;
CREATE TABLE `anime` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `info` text NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `anime`
--

INSERT INTO `anime` (`id`, `name`, `image`, `info`, `category_id`) VALUES
(1, 'Naruto', 'naruto.jpg', '\r\nNaruto is een Japanse manga- en animeserie die het verhaal volgt van Naruto Uzumaki, een jonge ninja met de droom om de sterkste ninja en leider van zijn dorp, de Hokage, te worden. De serie volgt zijn avonturen, vriendschappen en strijd tegen krachtige vijanden, terwijl hij ook worstelt met zijn eigen demonische kracht, de Nine-Tails Fox, die in hem verzegeld is. Het verhaal belicht thema\'s zoals doorzettingsvermogen, vriendschap en opoffering.', 1),
(2, 'Demon slayer', 'demon-slayer.jpg', '\r\nDemon Slayer, ook bekend als Kimetsu no Yaiba, volgt Tanjiro Kamado, een jongen wiens familie wordt afgeslacht door demonen, behalve zijn zus Nezuko, die in een demon wordt veranderd. Vastbesloten om zijn zus weer menselijk te maken en wraak te nemen op de demonen, sluit Tanjiro zich aan bij de Demon Slayer Corps. De serie volgt zijn gevaarlijke reis om demonen te bestrijden, krachtige bondgenoten te vinden en de oorsprong van de demonenplaag te ontdekken.', 1),
(3, 'Jujutsu kaisen', 'jujutsu-kaisen.jpg', '\r\nJujutsu Kaisen volgt Yuji Itadori, een tiener die onbedoeld betrokken raakt bij een vloek na het openen van een vervloekte talisman. Om zijn vrienden te redden, sluit hij zich aan bij de Tokyo Metropolitan Jujutsu Technical High School, waar studenten vechten tegen vervloekte wezens. Samen met medestudenten en zijn krachtige leraar Satoru Gojo moet Yuji de wereld beschermen tegen duistere vloeken en de mysterieuze \"King of Curses\".', 1),
(4, 'Attack on titan', 'titan.jpg', '\r\nAttack on Titan, gecreëerd door Hajime Isayama, speelt zich af in een wereld waar reuzen, Titans genoemd, de mensheid bedreigen. De overlevenden hebben zich ingesloten in enorme muren. Het verhaal volgt Eren Yeager en zijn vrienden, die zich aansluiten bij de militaire strijdkrachten om de Titans te bestrijden nadat hun stad wordt aangevallen. Terwijl ze worstelen met politieke intriges en onthutsende onthullingen, ontvouwt zich een epische strijd om te overleven en de waarheid te ontdekken', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `category`
--

INSERT INTO `category` (`id`, `name`, `picture`, `description`) VALUES
(1, 'Action', 'categories/JJK.jpg', 'Action anime is all about fast-paced, adrenaline-fueled action scenes. It features high-stakes battles, dynamic fight scenes, and exciting chases. If you are a fan of thrilling and intense moments and enjoy watching shows with themes of courage, determination, and perseverance. Attack on Titans and Jujutsu Kaisen are some popular anime of this genre.\r\n\r\n'),
(2, 'Adventure', 'categories/OP.jpg', 'If you are a fan of exploration, discovery and exciting and unpredictable plot twists then this genre is tailored for you. It features protagonists who embark on epic journeys, visit exotic locations, and while making life-long friendships along the way. One Piece and Fullmetal Alchemist: Brotherhood completely captures the essence of this genre.\r\n\r\n'),
(3, 'Comedy', 'categories/OPM.jpg', 'Comedy anime is all you need to get some genuine laughs after a long tiring day. This genre often features comedic situations, quirky characters, and lighthearted humour. Comedy anime is known for its laughter-inducing moments and its ability to diffuse tense or serious situations. One-Punch Man and The Devil Is A Part-Timer! are some of the best comedies in this genre.\r\n\r\n'),
(4, 'Sports', 'categories/HAI.jpg', 'Sports anime is a genre that can light up a fire inside you with its inspiring and uplifting moments, and it often promotes themes of hard work, determination, and perseverance. This genre often features characters who train, compete, and strive to become the best in their chosen sport. If you are a fan of sports then you can start by watching Haikyuu! and Free!');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `role` enum('member','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `first_name`, `last_name`, `role`) VALUES
(1, '2@gmail.com', 'd1d1d', 'd1d1d', '1dd1d', 'member');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `adventure`
--
ALTER TABLE `adventure`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `anime`
--
ALTER TABLE `anime`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catergory_id` (`category_id`);

--
-- Indexen voor tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `adventure`
--
ALTER TABLE `adventure`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `anime`
--
ALTER TABLE `anime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `anime`
--
ALTER TABLE `anime`
  ADD CONSTRAINT `anime_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
