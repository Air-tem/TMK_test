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
(1, 1, 'РОСНЕФТЬ', 1),
(3, 3, 'комсомольская правда', 2),
(10, 6, 'сити мол', 3),
(7, 8, 'сити мол', 4),
(2, 2, 'пятерочка', 5),
(9, 5, 'пятерочка', 6),
(4, 10, 'пятерочка', 7),
(1, 1, 'роскосмос', 8),
(3, 1, 'роскосмос', 9),
(4, 10, 'крым тур', 10),
(9, 3, 'крым тур', 11),
(5, 5, 'вкусно и точка', 12),
(3, 3, 'вкусно и точка', 13),
(1, 6, 'макдональц', 14),
(3, 8, 'макдональц', 15),
(7, 8, 'лучше звоните солу', 16),
(2, 9, 'лучше звоните солу', 17),
(4, 7, 'мобилочка', 18),
(10, 4, 'ржд', 19),
(9, 6, 'ржд', 20);

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
