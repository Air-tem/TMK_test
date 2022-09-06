-- phpMyAdmin SQL Dump
-- version 5.1.4
-- https://www.phpmyadmin.net/
--
-- Хост: -
-- Время создания: Сен 06 2022 г., 20:32
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
-- Структура таблицы `CITY`
--

CREATE TABLE `CITY` (
  `CITY_ID` int(10) NOT NULL,
  `CITY_NAME` varchar(120) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `CITY`
--

INSERT INTO `CITY` (`CITY_ID`, `CITY_NAME`) VALUES
(1, 'ñÅÂÀñÒÎÏÎËÜ'),
(2, 'ñÈÌÔåðîïîëü'),
(3, 'ìÓÐÌÀÍÑÊ'),
(4, 'ôÅîÄÎÑÈß'),
(5, 'ÊÐÀÑÍÎÄÀÐ'),
(6, 'ÁÅËÃÎÐÎÄ'),
(7, 'òóëà'),
(8, 'êóðñê'),
(9, 'ïèðòåð'),
(10, 'Ìîñêâà');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `CITY`
--
ALTER TABLE `CITY`
  ADD PRIMARY KEY (`CITY_ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `CITY`
--
ALTER TABLE `CITY`
  MODIFY `CITY_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
