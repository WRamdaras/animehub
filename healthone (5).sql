-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 09 jan 2024 om 18:30
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
(1, 'Naruto', 'naruto.jpg', '\nNaruto is een Japanse manga- en animeserie die het verhaal volgt van Naruto Uzumaki, een jonge ninja met de droom om de sterkste ninja en leider van zijn dorp, de Hokage, te worden. De serie volgt zijn avonturen, vriendschappen en strijd tegen krachtige vijanden, terwijl hij ook worstelt met zijn eigen demonische kracht, de Nine-Tails Fox, die in hem verzegeld is. Het verhaal belicht thema\'s zoals doorzettingsvermogen, vriendschap en opoffering.', 1),
(2, 'Demon slayer', 'DS.jpg', '\r\nDemon Slayer, ook bekend als Kimetsu no Yaiba, volgt Tanjiro Kamado, een jongen wiens familie wordt afgeslacht door demonen, behalve zijn zus Nezuko, die in een demon wordt veranderd. Vastbesloten om zijn zus weer menselijk te maken en wraak te nemen op de demonen, sluit Tanjiro zich aan bij de Demon Slayer Corps. De serie volgt zijn gevaarlijke reis om demonen te bestrijden, krachtige bondgenoten te vinden en de oorsprong van de demonenplaag te ontdekken.', 1),
(3, 'Jujutsu kaisen', 'categories/jujutsu-kaisen.jpg', '\r\nJujutsu Kaisen volgt Yuji Itadori, een tiener die onbedoeld betrokken raakt bij een vloek na het openen van een vervloekte talisman. Om zijn vrienden te redden, sluit hij zich aan bij de Tokyo Metropolitan Jujutsu Technical High School, waar studenten vechten tegen vervloekte wezens. Samen met medestudenten en zijn krachtige leraar Satoru Gojo moet Yuji de wereld beschermen tegen duistere vloeken en de mysterieuze \"King of Curses\".', 1),
(4, 'Attack on titan', 'titan.jpg', '\r\nAttack on Titan, gecreëerd door Hajime Isayama, speelt zich af in een wereld waar reuzen, Titans genoemd, de mensheid bedreigen. De overlevenden hebben zich ingesloten in enorme muren. Het verhaal volgt Eren Yeager en zijn vrienden, die zich aansluiten bij de militaire strijdkrachten om de Titans te bestrijden nadat hun stad wordt aangevallen. Terwijl ze worstelen met politieke intriges en onthutsende onthullingen, ontvouwt zich een epische strijd om te overleven en de waarheid te ontdekken', 1),
(5, 'Hunterxhunter', 'hunter.jpg', 'Hunter x Hunter, gecreëerd door Yoshihiro Togashi, volgt Gon Freecss, een jongen die zijn vermiste vader wil vinden en Hunter wil worden, een elite-jager met uiteenlopende vaardigheden. Samen met vrienden zoals Killua, Kurapika en Leorio, ondergaat Gon gevaarlijke beproevingen, vecht tegen krachtige vijanden en ontdekt de complexe wereld van Nen, een geavanceerd energiesysteem. De serie verkent thema\'s zoals vriendschap, avontuur en de zoektocht naar persoonlijke identiteit.', 2),
(6, 'One piece', 'OP.jpg', 'One Piece, gecreëerd door Eiichiro Oda, volgt Monkey D. Luffy en zijn diverse bemanning terwijl ze zoeken naar de ultieme schat, de One Piece, om koning der piraten te worden. Luffy\'s droom om de legendarische schat te vinden, leidt tot epische avonturen, ontmoetingen met buitengewone personages en confrontaties met gevaarlijke piraten en overheidsorganisaties. De serie verkent vriendschap, doorzettingsvermogen en vrijheid in een wereld van eilanden en zeeën.', 2),
(7, 'Vinland saga', 'vinland-saga.jpg', 'Vinland Saga, gecreëerd door Makoto Yukimura, volgt Thorfinn, een jonge krijger, tijdens de Viking-invallen in Engeland. Gedreven door wraak voor de moord op zijn vader, sluit Thorfinn zich aan bij de Vikingleider Askeladd en neemt deel aan brute veldslagen. Naarmate het verhaal vordert, evolueert het naar een diepgaandere verkenning van thema\'s zoals oorlog, moraal en het streven naar een vreedzame toekomst, inclusief de zoektocht naar het mythische land Vinland.', 2),
(8, 'Dr stone', 'dr-stone.jpg', 'Dr. Stone, geschreven door Riichiro Inagaki en geïllustreerd door Boichi, volgt Senku Ishigami in een post-apocalyptische wereld waarin alle menselijke wezens zijn versteend. Senku ontwaakt en gebruikt zijn wetenschappelijke kennis om de mensheid te herbouwen. Samen met vrienden en bondgenoten werkt hij aan het herstellen van de beschaving, het bestrijden van nieuwe uitdagingen en het ontdekken van de oorsprong van de mysterieuze versteende kracht die de wereld heeft veranderd.', 2),
(9, 'One Punch Man', 'OPM.jpg', 'One Punch Man is een Japanse anime- en mangaserie die op humoristische wijze het leven van Saitama verkent, een gewone man die een held wordt voor de lol. Ondanks dat hij elke tegenstander met één klap verslaat, worstelt Saitama met de monotonie van zijn overweldigende kracht. De serie combineert opwindende actie met satire en bespot de conventies van superheldenverhalen. Gecreëerd door ONE en geïllustreerd door Yusuke Murata, boeit \"One Punch Man\" het publiek met zijn unieke mix van humor, epische gevechten en een protagonist die op zoek is naar een waardige uitdaging in een wereld vol krachtige tegenstanders.', 3),
(10, 'Mob Psycho 100', 'ms100.jpg', 'Mob Psycho 100 is een Japanse anime en mangaserie die het verhaal vertelt van Shigeo Kageyama, bijgenaamd \"Mob\", een tiener met buitengewone psychische krachten. Ondanks zijn krachten streeft Mob naar een normaal leven en emotionele groei. De serie, gecreëerd door ONE, combineert humor, actie en diepgaande thema\'s en verkent Mob\'s innerlijke strijd met zijn krachten en identiteit. Het unieke animatiestijl en de diepe karakterontwikkeling maken \"Mob Psycho 100\" een boeiende kijkervaring voor fans van diverse genres.', 3),
(11, 'Soul Eater', 'SE.jpg', 'Soul Eater is een Japanse anime- en mangaserie die de avonturen volgt van studenten aan de Death Weapon Meister Academy. Deze school traint meisters en hun demonische wapenpartners om bovennatuurlijke bedreigingen te bestrijden en zielen te verzamelen. De serie, gecreëerd door Atsushi Ōkubo, combineert actie, horror en humor terwijl het dieper ingaat op vriendschap en persoonlijke groei. Met unieke personages en een duister-komische sfeer biedt \"Soul Eater\" een intrigerende kijk op het bovennatuurlijke genre.', 3),
(12, 'Black Clover', 'BC.jpg', 'Black Clover is een Japanse anime- en mangaserie die het verhaal vertelt van Asta, een jongen zonder magische krachten in een wereld waar magie alles bepaalt. Ondanks zijn gebrek aan magie heeft Asta vastberadenheid en vasthoudendheid. Samen met zijn vriend Yuno streeft hij naar de titel van de Wizard King. De serie, gecreëerd door Yūki Tabata, combineert magie, avontuur en vriendschap in een meeslepende wereld vol uitdagingen en krachtige tegenstanders.', 3),
(13, 'Haikyuu!!', 'haik.jpg', 'Haikyuu!! is een opwindende Japanse anime- en mangaserie die het verhaal volgt van Shoyo Hinata, een gepassioneerde volleyballer met een ongekend korte gestalte. Hij bundelt zijn krachten met zijn team om indrukwekkende hoogtes te bereiken in het competitieve wereldje van het middelbare schoolvolleybal. Gecreëerd door Haruichi Furudate, biedt \"Haikyuu!!\" niet alleen intensieve sportactie, maar belicht het ook thema\'s als teamwerk, doorzettingsvermogen en vriendschap, wat het tot een meeslepende kijkervaring maakt voor fans van alle leeftijden.', 4),
(14, 'Kuroko no Basket', 'kuroko.jpg', 'Kuroko no Basket is een meeslepende Japanse anime- en mangaserie die de opmerkelijke reis volgt van Kuroko Tetsuya, een onopvallende basketballer met een unieke speelstijl. Als voormalig lid van de Generation of Miracles werkt hij samen met zijn teamgenoten van Seirin High om de top van het middelbare schoolbasketbal te bereiken. Gecreëerd door Tadatoshi Fujimaki, combineert de serie intense sportactie met karakterontwikkeling en vriendschap, waardoor het een favoriet is onder sportanime-liefhebbers.', 4),
(15, 'Blue Lock', 'BL.jpg', 'Blue Lock is een boeiende Japanse manga-serie die de focus legt op Japan\'s meest veelbelovende voetballers. Geselecteerd om te trainen in het intense Blue Lock-programma, moeten ze concurreren om de enige plek als de toekomstige nationale spits. Geschreven door Kaneshiro Muneyuki en geïllustreerd door Nomura Yusuke, verkent de serie competitieve druk, individuele groei en teamwork, met een frisse kijk op voetbalstrategie. \"Blue Lock\" biedt een spannend perspectief op sport en ambitie in de wereld van het voetbal.', 4),
(16, 'Hajime no Ippo', 'HNI.jpg', 'Hajime no Ippo is een meeslepende Japanse anime- en mangaserie die het verhaal vertelt van Ippo Makunouchi, een verlegen tiener die ontdekt dat hij een ongekend talent heeft voor boksen. Onder begeleiding van zijn mentor Kamogawa Takamura, begint Ippo zijn reis in de bokswereld, waarbij hij zowel fysieke als mentale uitdagingen overwint. Gecreëerd door George Morikawa, combineert de serie intense boksbattles met diepgaande karakterontwikkeling en thema\'s van doorzettingsvermogen, wat het tot een geliefde klassieker maakt onder anime- en sportliefhebbers.', 4);

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
(1, 'Action', 'categories/jujutsu-kaisen.jpg', 'Action anime is all about fast-paced, adrenaline-fueled action scenes. It features high-stakes battles, dynamic fight scenes, and exciting chases. If you are a fan of thrilling and intense moments and enjoy watching shows with themes of courage, determination, and perseverance. Attack on Titans and Jujutsu Kaisen are some popular anime of this genre.\r\n\r\n'),
(2, 'Adventure', 'categories/OP.jpg', 'If you are a fan of exploration, discovery and exciting and unpredictable plot twists then this genre is tailored for you. It features protagonists who embark on epic journeys, visit exotic locations, and while making life-long friendships along the way. One Piece and Fullmetal Alchemist: Brotherhood completely captures the essence of this genre.\r\n\r\n'),
(3, 'Comedy', 'categories/OPM.jpg', 'Comedy anime is all you need to get some genuine laughs after a long tiring day. This genre often features comedic situations, quirky characters, and lighthearted humour. Comedy anime is known for its laughter-inducing moments and its ability to diffuse tense or serious situations. One-Punch Man and The Devil Is A Part-Timer! are some of the best comedies in this genre.\r\n\r\n'),
(4, 'Sports', 'categories/HAI.jpg', 'Sports anime is a genre that can light up a fire inside you with its inspiring and uplifting moments, and it often promotes themes of hard work, determination, and perseverance. This genre often features characters who train, compete, and strive to become the best in their chosen sport. If you are a fan of sports then you can start by watching Haikyuu! and Free!');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `review`
--

DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `review`
--

INSERT INTO `review` (`id`, `name`, `subject`, `text`, `rating`, `product_id`) VALUES
(69, 'test', 'test', 'test', '5', 1);

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
(1, '2@gmail.com', 'd1d1d', 'd1d1d', '1dd1d', 'member'),
(2, 'WireshIsBack@gmail.com', 'aaaa', 'black', 'guy', 'member'),
(3, 'efehan@gmail.com', 'ja', 'Efehan', 'ayd', 'admin'),
(4, 'efehan1@gmail.com', 'nee', 'efe', 'jaja', 'member'),
(5, 'test@gmail.com', 'test', 'test', 'test', 'member'),
(6, 'wiresh@gmail.com', 'ja', 'Wiresh', 'ra', 'admin'),
(7, 'arda@gmail.com', 'arda', 'arda', 'arda', 'member'),
(8, 'wi@gmail.com', 'ra', 'wi', 'ra', 'member');

--
-- Indexen voor geëxporteerde tabellen
--

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
-- Indexen voor tabel `review`
--
ALTER TABLE `review`
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
-- AUTO_INCREMENT voor een tabel `anime`
--
ALTER TABLE `anime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT voor een tabel `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
