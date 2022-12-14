-- phpMyAdmin SQL Dump
-- version 5.1.4
-- https://www.phpmyadmin.net/
--
-- Хост: -
-- Время создания: Сен 06 2022 г., 20:26
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
-- Структура таблицы `DOCUMENT`
--

CREATE TABLE `DOCUMENT` (
  `DOC_DATE` date NOT NULL,
  `SUM` int(11) NOT NULL,
  `FIRM_ID` int(11) NOT NULL,
  `DOCUMENT_ID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `DOCUMENT`
--

INSERT INTO `DOCUMENT` (`DOC_DATE`, `SUM`, `FIRM_ID`, `DOCUMENT_ID`) VALUES
('2019-10-11', 1278, 11, 4),
('2010-11-12', 1200, 10, 3),
('2018-09-03', 905, 19, 5),
('2016-12-21', 598, 3, 6),
('2012-09-13', 767, 20, 7),
('2013-10-06', 759, 11, 8),
('2016-01-27', 1041, 19, 9),
('2010-08-27', 899, 8, 10),
('2015-06-14', 992, 20, 11),
('2018-07-28', 1431, 16, 12),
('2015-01-10', 589, 3, 13),
('2016-02-01', 632, 11, 14),
('2014-04-08', 1092, 13, 15),
('2020-11-01', 1356, 20, 16),
('2011-11-27', 868, 1, 17),
('2012-09-12', 1490, 10, 18),
('2016-07-05', 996, 17, 19),
('2012-02-20', 1286, 15, 20),
('2021-07-13', 745, 4, 21),
('2012-02-05', 754, 20, 22),
('2011-11-01', 1029, 8, 23),
('2022-05-30', 913, 17, 24),
('2021-04-29', 1231, 14, 25),
('2010-05-01', 1423, 11, 26),
('2021-12-14', 665, 9, 27),
('2018-01-01', 1092, 14, 28),
('2019-03-07', 1287, 20, 29),
('2019-01-19', 1400, 12, 30),
('2014-10-21', 1275, 4, 31),
('2013-03-29', 754, 16, 32),
('2019-10-19', 694, 13, 33),
('2016-02-28', 1046, 8, 34),
('2010-07-17', 862, 18, 35),
('2015-06-01', 1443, 12, 36),
('2016-11-05', 1161, 19, 37),
('2009-02-19', 700, 4, 38),
('2018-12-21', 1064, 19, 39),
('2021-12-26', 697, 4, 40),
('2011-06-16', 1040, 12, 41),
('2017-06-01', 966, 10, 42),
('2019-07-20', 933, 6, 43),
('2011-08-19', 714, 11, 44),
('2013-04-23', 1297, 7, 45),
('2009-08-01', 872, 8, 46),
('2013-08-25', 1260, 9, 47),
('2017-11-29', 1014, 2, 48),
('2018-01-26', 631, 1, 49),
('2019-05-02', 1213, 17, 50),
('2011-02-25', 1457, 2, 51),
('2014-12-06', 1049, 13, 52),
('2019-12-26', 877, 11, 53),
('2017-04-08', 661, 8, 54),
('2015-05-01', 1268, 5, 55),
('2011-10-30', 957, 9, 56),
('2019-03-25', 1085, 18, 57),
('2015-10-30', 1471, 19, 58),
('2011-10-01', 815, 13, 59),
('2010-03-14', 924, 3, 60),
('2021-03-24', 917, 13, 61),
('2018-08-05', 856, 3, 62),
('2018-05-13', 756, 13, 63),
('2009-01-05', 848, 12, 64),
('2021-09-21', 1257, 5, 65),
('2010-08-24', 1368, 8, 66),
('2017-09-21', 562, 11, 67),
('2019-03-29', 1262, 17, 68),
('2009-01-25', 1159, 14, 69),
('2018-10-05', 856, 20, 70),
('2013-03-22', 1184, 16, 71),
('2019-06-11', 725, 20, 72),
('2011-09-22', 544, 17, 73),
('2020-07-17', 829, 8, 74),
('2009-11-06', 619, 7, 75),
('2013-01-13', 1117, 14, 76),
('2010-04-01', 1273, 10, 77),
('2012-01-03', 1309, 11, 78),
('2017-07-30', 1152, 15, 79),
('2015-11-03', 561, 16, 80),
('2022-06-09', 1491, 5, 81),
('2019-06-07', 1493, 2, 82),
('2021-08-08', 1275, 4, 83),
('2018-03-28', 915, 1, 84),
('2009-09-16', 1380, 19, 85),
('2016-01-09', 809, 18, 86),
('2010-09-26', 561, 15, 87),
('2017-07-04', 1034, 12, 88),
('2016-02-15', 718, 9, 89),
('2015-02-20', 1190, 11, 90),
('2014-12-23', 1000, 12, 91),
('2020-11-26', 1265, 19, 92),
('2016-12-28', 876, 1, 93),
('2019-12-13', 651, 2, 94),
('2017-10-05', 576, 6, 95),
('2012-06-04', 868, 18, 96),
('2018-07-04', 1154, 2, 97),
('2012-05-19', 1484, 15, 98),
('2015-07-09', 1075, 1, 99),
('2009-08-28', 1325, 13, 100),
('2015-05-30', 581, 2, 101),
('2010-03-23', 662, 17, 102),
('2014-10-24', 1419, 14, 103);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `DOCUMENT`
--
ALTER TABLE `DOCUMENT`
  ADD PRIMARY KEY (`DOCUMENT_ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `DOCUMENT`
--
ALTER TABLE `DOCUMENT`
  MODIFY `DOCUMENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
