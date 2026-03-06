-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Feb 07. 08:28
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `aranymancs`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `allatok`
--

CREATE TABLE `allatok` (
  `id` int(11) NOT NULL,
  `nev` varchar(50) NOT NULL,
  `faj` varchar(20) NOT NULL,
  `fajta` varchar(80) NOT NULL,
  `kor_honap` int(11) NOT NULL,
  `nem` varchar(10) NOT NULL,
  `menhely_varos` varchar(60) NOT NULL,
  `bekerules_datum` date NOT NULL,
  `statusz` varchar(30) NOT NULL,
  `megjegyzes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `allatok`
--

INSERT INTO `allatok` (`id`, `nev`, `faj`, `fajta`, `kor_honap`, `nem`, `menhely_varos`, `bekerules_datum`, `statusz`, `megjegyzes`) VALUES
(1, 'Riley', 'kutya', 'keverék', 72, 'kan', 'Pécs', '2023-05-23', 'örökbefogadható', 'Játékos, tanulékony.'),
(2, 'Nala', 'macska', 'házi rövidszőrű', 9, 'hím', 'Pécs', '2023-08-27', 'örökbefogadható', 'Barátságos, pórázon szépen sétál.'),
(3, 'Zsömi', 'kutya', 'mudi keverék', 141, 'szuka', 'Pécs', '2024-04-04', 'örökbefogadható', 'Barátságos, pórázon szépen sétál.'),
(4, 'Kormi', 'kutya', 'mudi keverék', 110, 'szuka', 'Győr', '2023-06-09', 'örökbefogadható', 'Lakásba is ajánlott.'),
(5, 'Bella', 'kutya', 'tacskó', 26, 'szuka', 'Zalaegerszeg', '2023-12-19', 'örökbefogadható', 'Barátságos, pórázon szépen sétál.'),
(6, 'Gombóc', 'macska', 'vörös', 33, 'nőstény', 'Szeged', '2024-07-19', 'örökbefogadható', 'Lakásba is ajánlott.'),
(8, 'Picur', 'kutya', 'német juhász keverék', 27, 'szuka', 'Győr', '2024-04-09', 'örökbefogadható', 'Lakásba is ajánlott.'),
(9, 'Charlie', 'macska', 'fekete', 55, 'nőstény', 'Veszprém', '2023-03-15', 'örökbefogadható', 'Kezdetben félénk, türelmet igényel.'),
(10, 'Bogyó', 'macska', 'házi rövidszőrű', 60, 'hím', 'Sopron', '2023-11-20', 'örökbefogadható', 'Játékos, tanulékony.'),
(11, 'Max', 'macska', 'cirmos', 65, 'nőstény', 'Veszprém', '2024-08-21', 'örökbefogadható', 'Aktív, sok mozgást igényel.'),
(13, 'Riley', 'kutya', 'német juhász keverék', 110, 'kan', 'Kecskemét', '2024-01-26', 'örökbefogadható', 'Nyugodt természetű.'),
(15, 'Bella', 'macska', 'tarka', 42, 'nőstény', 'Budapest', '2023-09-27', 'orvosi megfigyelés', 'Kezdetben félénk, türelmet igényel.'),
(19, 'Bella', 'kutya', 'labrador keverék', 18, 'szuka', 'Budapest', '2024-08-25', 'örökbefogadható', 'Gyerekek mellett is jól érzi magát.'),
(21, 'Csoki', 'kutya', 'vizsla keverék', 126, 'kan', 'Nyíregyháza', '2023-05-16', 'örökbefogadható', 'Nyugodt természetű.'),
(22, 'Zokni', 'macska', 'tarka', 50, 'hím', 'Szeged', '2024-03-17', 'örökbefogadható', 'Aktív, sok mozgást igényel.'),
(23, 'Zokni', 'kutya', 'labrador keverék', 139, 'szuka', 'Debrecen', '2024-03-08', 'örökbefogadható', 'Nyugodt természetű.'),
(26, 'Charlie', 'macska', 'házi rövidszőrű', 101, 'nőstény', 'Tatabánya', '2024-04-10', 'örökbefogadható', 'Nyugodt természetű.'),
(27, 'Max', 'kutya', 'vizsla keverék', 57, 'kan', 'Szombathely', '2024-07-09', 'örökbefogadható', 'Lakásba is ajánlott.'),
(28, 'Morzsi', 'kutya', 'border collie', 124, 'kan', 'Budapest', '2024-06-04', 'örökbefogadható', 'Kezdetben félénk, türelmet igényel.'),
(29, 'Szofi', 'kutya', 'tacskó', 151, 'szuka', 'Tatabánya', '2023-09-25', 'örökbefogadható', 'Lakásba is ajánlott.'),
(30, 'Zokni', 'macska', 'tarka', 35, 'nőstény', 'Székesfehérvár', '2023-11-20', 'orvosi megfigyelés', 'Játékos, tanulékony.'),
(31, 'Bodri', 'macska', 'vörös', 146, 'hím', 'Szeged', '2024-07-04', 'örökbefogadható', 'Más állatokkal összeszoktatható.'),
(32, 'Max', 'macska', 'házi rövidszőrű', 64, 'nőstény', 'Győr', '2023-06-11', 'örökbefogadható', 'Más állatokkal összeszoktatható.'),
(33, 'Pötyi', 'kutya', 'keverék', 143, 'kan', 'Győr', '2023-10-16', 'örökbefogadható', 'Lakásba is ajánlott.'),
(34, 'Zizi', 'macska', 'házi rövidszőrű', 2, 'nőstény', 'Sopron', '2023-05-14', 'örökbefogadható', 'Más állatokkal összeszoktatható.'),
(35, 'Zsömi', 'kutya', 'német juhász keverék', 96, 'kan', 'Kecskemét', '2023-05-11', 'örökbefogadható', 'Lakásba is ajánlott.'),
(36, 'Tigris', 'kutya', 'vizsla keverék', 55, 'kan', 'Eger', '2023-04-16', 'örökbefogadható', 'Aktív, sok mozgást igényel.'),
(37, 'Tappancs', 'kutya', 'német juhász keverék', 122, 'kan', 'Pécs', '2024-04-16', 'örökbefogadható', 'Gyerekek mellett is jól érzi magát.'),
(39, 'Cirmi', 'macska', 'házi rövidszőrű', 135, 'hím', 'Miskolc', '2024-03-17', 'örökbefogadható', 'Lakásba is ajánlott.'),
(40, 'Szofi', 'macska', 'fehér', 33, 'nőstény', 'Nyíregyháza', '2023-11-13', 'örökbefogadható', 'Lakásba is ajánlott.'),
(41, 'Dió', 'kutya', 'tacskó', 150, 'szuka', 'Székesfehérvár', '2024-03-28', 'örökbefogadható', 'Gyerekek mellett is jól érzi magát.'),
(42, 'Csoki', 'macska', 'fehér', 45, 'hím', 'Győr', '2024-06-11', 'örökbefogadható', 'Lakásba is ajánlott.'),
(43, 'Luna', 'kutya', 'mudi keverék', 81, 'kan', 'Sopron', '2023-07-23', 'örökbefogadható', 'Barátságos, pórázon szépen sétál.'),
(44, 'Zokni', 'macska', 'vörös', 20, 'nőstény', 'Kecskemét', '2024-10-06', 'örökbefogadható', 'Aktív, sok mozgást igényel.'),
(46, 'Maci', 'kutya', 'német juhász keverék', 120, 'szuka', 'Sopron', '2024-03-29', 'örökbefogadható', 'Aktív, sok mozgást igényel.'),
(47, 'Pötyi', 'macska', 'fekete', 140, 'hím', 'Debrecen', '2023-06-04', 'örökbefogadható', 'Kezdetben félénk, türelmet igényel.'),
(48, 'Cirmi', 'kutya', 'keverék', 108, 'szuka', 'Miskolc', '2024-07-09', 'örökbefogadható', 'Barátságos, pórázon szépen sétál.'),
(49, 'Maja', 'macska', 'tarka', 151, 'hím', 'Zalaegerszeg', '2024-08-12', 'örökbefogadható', 'Barátságos, pórázon szépen sétál.'),
(50, 'Panda', 'macska', 'tarka', 109, 'hím', 'Székesfehérvár', '2023-08-13', 'örökbefogadható', 'Nyugodt természetű.'),
(51, 'Bodri', 'macska', 'fekete', 105, 'hím', 'Zalaegerszeg', '2024-04-23', 'orvosi megfigyelés', 'Barátságos, pórázon szépen sétál.'),
(52, 'Hópihe', 'macska', 'vörös', 146, 'hím', 'Szeged', '2024-03-14', 'örökbefogadható', 'Nyugodt természetű.'),
(53, 'Charlie', 'kutya', 'vizsla keverék', 99, 'szuka', 'Pécs', '2024-04-10', 'örökbefogadható', 'Aktív, sok mozgást igényel.'),
(54, 'Pötyi', 'macska', 'fekete', 22, 'nőstény', 'Budapest', '2024-07-06', 'örökbefogadható', 'Lakásba is ajánlott.'),
(56, 'Zsömi', 'macska', 'fehér', 96, 'hím', 'Nyíregyháza', '2023-12-16', 'örökbefogadható', 'Aktív, sok mozgást igényel.'),
(57, 'Zizi', 'macska', 'házi rövidszőrű', 112, 'nőstény', 'Eger', '2024-04-15', 'örökbefogadható', 'Aktív, sok mozgást igényel.'),
(58, 'Füge', 'kutya', 'német juhász keverék', 24, 'szuka', 'Tatabánya', '2024-04-06', 'örökbefogadható', 'Nyugodt természetű.'),
(59, 'Kókusz', 'kutya', 'vizsla keverék', 68, 'szuka', 'Győr', '2024-09-02', 'örökbefogadható', 'Más állatokkal összeszoktatható.'),
(60, 'Zsömi', 'kutya', 'border collie', 50, 'kan', 'Pécs', '2024-02-21', 'örökbefogadható', 'Gyerekek mellett is jól érzi magát.'),
(61, 'Cirmi', 'macska', 'fehér', 127, 'nőstény', 'Sopron', '2023-01-18', 'örökbefogadható', 'Gyerekek mellett is jól érzi magát.'),
(62, 'Gombóc', 'kutya', 'vizsla keverék', 32, 'kan', 'Pécs', '2023-08-10', 'örökbefogadható', 'Más állatokkal összeszoktatható.'),
(63, 'Charlie', 'macska', 'házi rövidszőrű', 138, 'hím', 'Győr', '2023-02-16', 'orvosi megfigyelés', 'Más állatokkal összeszoktatható.'),
(64, 'Cirmi', 'kutya', 'mudi keverék', 127, 'kan', 'Zalaegerszeg', '2023-01-13', 'örökbefogadható', 'Nyugodt természetű.'),
(65, 'Kókusz', 'macska', 'fekete', 49, 'hím', 'Győr', '2024-05-04', 'örökbefogadható', 'Játékos, tanulékony.'),
(68, 'Charlie', 'kutya', 'labrador keverék', 143, 'kan', 'Debrecen', '2023-01-03', 'örökbefogadható', 'Nyugodt természetű.'),
(69, 'Dió', 'kutya', 'labrador keverék', 75, 'szuka', 'Veszprém', '2024-04-09', 'örökbefogadható', 'Gyerekek mellett is jól érzi magát.'),
(70, 'Hópihe', 'macska', 'fehér', 152, 'hím', 'Kecskemét', '2023-04-28', 'örökbefogadható', 'Kezdetben félénk, türelmet igényel.'),
(71, 'Hópihe', 'macska', 'cirmos', 20, 'hím', 'Debrecen', '2023-11-11', 'örökbefogadható', 'Más állatokkal összeszoktatható.'),
(72, 'Maci', 'kutya', 'tacskó', 79, 'szuka', 'Győr', '2024-05-27', 'örökbefogadható', 'Nyugodt természetű.'),
(75, 'Riley', 'macska', 'házi rövidszőrű', 54, 'nőstény', 'Nyíregyháza', '2023-05-15', 'orvosi megfigyelés', 'Nyugodt természetű.'),
(76, 'Maci', 'kutya', 'mudi keverék', 41, 'szuka', 'Tatabánya', '2023-10-26', 'örökbefogadható', 'Más állatokkal összeszoktatható.'),
(77, 'Samu', 'macska', 'tarka', 64, 'nőstény', 'Nyíregyháza', '2023-05-29', 'örökbefogadható', 'Kezdetben félénk, türelmet igényel.'),
(78, 'Picur', 'kutya', 'vizsla keverék', 108, 'szuka', 'Tatabánya', '2024-06-03', 'örökbefogadható', 'Barátságos, pórázon szépen sétál.'),
(80, 'Nala', 'macska', 'cirmos', 107, 'hím', 'Miskolc', '2024-04-29', 'örökbefogadható', 'Aktív, sok mozgást igényel.'),
(81, 'Picur', 'kutya', 'német juhász keverék', 114, 'kan', 'Nyíregyháza', '2024-04-12', 'örökbefogadható', 'Kezdetben félénk, türelmet igényel.'),
(84, 'Gombóc', 'kutya', 'keverék', 145, 'kan', 'Győr', '2024-10-27', 'örökbefogadható', 'Más állatokkal összeszoktatható.'),
(85, 'Panda', 'macska', 'fehér', 3, 'nőstény', 'Tatabánya', '2023-06-13', 'örökbefogadható', 'Más állatokkal összeszoktatható.'),
(88, 'Cirmi', 'kutya', 'német juhász keverék', 22, 'szuka', 'Sopron', '2023-10-28', 'örökbefogadható', 'Lakásba is ajánlott.'),
(89, 'Füge', 'macska', 'tarka', 13, 'hím', 'Szombathely', '2023-08-22', 'orvosi megfigyelés', 'Barátságos, pórázon szépen sétál.'),
(90, 'Gombóc', 'kutya', 'vizsla keverék', 99, 'kan', 'Kecskemét', '2024-04-09', 'örökbefogadható', 'Lakásba is ajánlott.'),
(91, 'Maja', 'macska', 'fehér', 55, 'nőstény', 'Szombathely', '2023-10-01', 'örökbefogadható', 'Barátságos, pórázon szépen sétál.'),
(94, 'Kókusz', 'kutya', 'vizsla keverék', 70, 'szuka', 'Debrecen', '2023-08-05', 'örökbefogadható', 'Lakásba is ajánlott.'),
(95, 'Zizi', 'macska', 'fehér', 103, 'nőstény', 'Zalaegerszeg', '2024-10-20', 'orvosi megfigyelés', 'Gyerekek mellett is jól érzi magát.'),
(96, 'Csoki', 'kutya', 'labrador keverék', 145, 'kan', 'Sopron', '2023-09-27', 'örökbefogadható', 'Más állatokkal összeszoktatható.'),
(97, 'Max', 'macska', 'tarka', 58, 'nőstény', 'Eger', '2024-06-05', 'orvosi megfigyelés', 'Barátságos, pórázon szépen sétál.'),
(98, 'Bodri', 'kutya', 'vizsla keverék', 41, 'kan', 'Szombathely', '2023-06-13', 'örökbefogadható', 'Más állatokkal összeszoktatható.'),
(99, 'Bogyó', 'macska', 'tarka', 99, 'nőstény', 'Szeged', '2024-04-24', 'örökbefogadható', 'Kezdetben félénk, türelmet igényel.'),
(100, 'Bella', 'kutya', 'német juhász keverék', 176, 'kan', 'Zalaegerszeg', '2024-07-03', 'orvosi megfigyelés', 'Lakásba is ajánlott.');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `allatok`
--
ALTER TABLE `allatok`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `allatok`
--
ALTER TABLE `allatok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
