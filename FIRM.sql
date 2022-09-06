-- phpMyAdmin SQL Dump
-- version 5.1.4
-- https://www.phpmyadmin.net/
--
-- Хост: -
-- Время создания: Сен 06 2022 г., 20:30
-- Версия сервера: 5.7.33-36-log
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `airtem_test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `FIRM`
--

CREATE TABLE `FIRM` (
  `JUR_CITY_ID` int(10) NOT NULL,
  `POST_CITY_ID` int(10) NOT NULL,
  `NAME` varchar(120) NOT NULL,
  `FIRM_ID` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `FIRM`
--

INSERT INTO `FIRM` (`JUR_CITY_ID`, `POST_CITY_ID`, `NAME`, `FIRM_ID`) VALUES
(1, 1, 'ÐÎÑÍÅÔÒÜ', 1),
(3, 3, 'êîìñîìîëüñêàÿ ïðàâäà\r\n', 2),
(10, 6, 'ñèòè ìîë\r\n', 3),
(7, 8, 'ñèòè ìîë\r\n', 4),
(2, 2, 'ïÿòåðî÷êà\r\n', 5),
(9, 5, 'ïÿòåðî÷êà\r\n', 6),
(4, 10, 'ïÿòåðî÷êà\r\n', 7),
(1, 1, 'ðîñêîñìîñ', 8),
(3, 1, 'ðîñêîñìîñ', 9),
(4, 10, 'êðûì òóð\r\n', 10),
(9, 3, 'êðûì òóð\r\n', 11),
(5, 5, 'âêóñíî è òî÷êà\r\n', 12),
(3, 3, 'âêóñíî è òî÷êà\r\n', 13),
(1, 6, 'ìàêäîíàëüö\r\n', 14),
(3, 8, 'ìàêäîíàëüö\r\n', 15),
(7, 8, 'ëó÷øå çâîíèòå ñîëó\r\n', 16),
(2, 9, 'ëó÷øå çâîíèòå ñîëó\r\n', 17),
(4, 7, 'ìîáèëî÷êà', 18),
(10, 4, 'ðæä', 19),
(9, 6, 'ðæä', 20);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `FIRM`
--
ALTER TABLE `FIRM`
  ADD PRIMARY KEY (`FIRM_ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `FIRM`
--
ALTER TABLE `FIRM`
  MODIFY `FIRM_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
