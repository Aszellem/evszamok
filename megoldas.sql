-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2019. Már 23. 09:05
-- Kiszolgáló verziója: 5.7.14
-- PHP verzió: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `tortenelem`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `evszamok`
--

CREATE TABLE `evszamok` (
  `evID` int(11) NOT NULL,
  `ev` int(4) NOT NULL,
  `esemeny` varchar(80) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `evszamok`
--

INSERT INTO `evszamok` (`evID`, `ev`, `esemeny`) VALUES
(3, 313, 'Nagy Konstantin engedélyezi a keresztény vallást'),
(4, 395, 'a Római Birodalom kettészakadása'),
(5, 476, 'a Nyugat-Római Birodalom bukása'),
(6, 896, 'a honfoglalás kezdete'),
(7, 955, 'a kalandozók döntő veresége Augsburgnál'),
(8, 1000, 'Szent István megkoronázása'),
(9, 1222, 'az Aranybulla kiadása'),
(10, 1301, 'az Árpád-ház kihalása'),
(11, 1456, 'a nándorfehérvári diadal'),
(12, 1492, 'Kolombusz felfedezi Amerikát'),
(13, 1517, 'Luther közzéteszi hittételeit, a reformáció kezdete'),
(14, 1526, 'a mohácsi csata'),
(15, 1703, 'Rákóczi-szabadságharc'),
(17, 1776, 'az amerikai gyarmatok Függetlenségi Nyilatkozata'),
(18, 1848, 'forradalmi hullám Európában'),
(19, 1825, 'Széchenyi felajánlásával a Tudományos Akadémia alapítása, a reformkor kezdete'),
(20, 1867, 'a kiegyezés'),
(21, 1914, 'első világháború kezdete'),
(23, 1939, 'a második világháború kitörése, német támadás Lengyelország ellen'),
(24, 1945, 'a japán fegyverletétel, a második világháború vége'),
(27, 1918, 'első világháború vége');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `evszamok`
--
ALTER TABLE `evszamok`
  ADD PRIMARY KEY (`evID`),
  ADD KEY `ev` (`ev`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `evszamok`
--
ALTER TABLE `evszamok`
  MODIFY `evID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
