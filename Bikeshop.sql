-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 29 2024 г., 21:51
-- Версия сервера: 10.7.5-MariaDB
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Bikeshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `CLIENTS`
--

CREATE TABLE `CLIENTS` (
  `C_NO` int(11) NOT NULL,
  `FIO` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ADDR` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CITY` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PHONE` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `CLIENTS`
--

INSERT INTO `CLIENTS` (`C_NO`, `FIO`, `ADDR`, `CITY`, `PHONE`) VALUES
(1, 'Петров', 'Тимошенко 5', 'Краснодар', '09563212400'),
(2, 'Петров П.П.', 'Ленина 12', 'Санкт-Петербург', '09588822200'),
(3, 'Сидоров С.С.', 'Мирная 5', 'Екатеринбург', '09577733300'),
(4, 'Кузнецов К.К.', 'Центральная 8', 'Казань', '09566644400'),
(5, 'Смирнова А.А.', 'Новая 15', 'Новосибирск', '09555555500'),
(6, 'Васильев В.В.', 'Старый путь 20', 'Нижний Новгород', '09544466600');

-- --------------------------------------------------------

--
-- Структура таблицы `GRAVEL_BIKES`
--

CREATE TABLE `GRAVEL_BIKES` (
  `O_NO` int(11) NOT NULL,
  `SIZE` double NOT NULL,
  `W_B` double NOT NULL,
  `S_TH` int(11) NOT NULL,
  `F_L` int(11) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `GRAVEL_BIKES`
--

INSERT INTO `GRAVEL_BIKES` (`O_NO`, `SIZE`, `W_B`, `S_TH`, `F_L`, `Price`) VALUES
(1, 501, 954, 490, 477, 47570),
(2, 514, 960, 509, 477, 57110),
(3, 526, 976, 529, 477, 70990),
(4, 537, 992, 550, 477, 77175),
(5, 549, 989, 561, 477, 91800),
(6, 565, 1003, 575, 477, 102200),
(7, 580, 1010, 583, 477, 110200);

-- --------------------------------------------------------

--
-- Структура таблицы `HARDTAILS`
--

CREATE TABLE `HARDTAILS` (
  `O_NO` int(11) NOT NULL,
  `SIZE` double NOT NULL,
  `S_TH` double NOT NULL,
  `W_B` int(11) NOT NULL,
  `F_T` int(11) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `HARDTAILS`
--

INSERT INTO `HARDTAILS` (`O_NO`, `SIZE`, `S_TH`, `W_B`, `F_T`, `Price`) VALUES
(1, 460, 430, 945, 80, 25670),
(2, 500, 470, 969, 80, 27400),
(3, 540, 510, 1000, 100, 41450),
(4, 580, 550, 1020, 120, 52790),
(5, 610, 580, 1030, 130, 62954),
(6, 650, 610, 1045, 140, 70550),
(7, 700, 670, 1090, 150, 75600);

-- --------------------------------------------------------

--
-- Структура таблицы `ORDERS`
--

CREATE TABLE `ORDERS` (
  `O_NO` int(11) NOT NULL,
  `DATE` int(11) NOT NULL,
  `C_NO` int(11) NOT NULL,
  `T_N` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `T_NO` int(11) NOT NULL,
  `QUANTITY` int(11) NOT NULL,
  `AMOUNT` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `ORDERS`
--

INSERT INTO `ORDERS` (`O_NO`, `DATE`, `C_NO`, `T_N`, `T_NO`, `QUANTITY`, `AMOUNT`) VALUES
(1, 20220315, 1, 'HARDTAILS', 5, 2, '125908'),
(2, 20230722, 2, ' GRAVEL_BIKES ', 2, 3, '171330'),
(3, 20211109, 3, ' TWO_SUSPENSIONS ', 4, 1, '120130 '),
(4, 20200504, 4, ' HARDTAILS', 3, 5, '207250'),
(5, 20190830, 5, ' GRAVEL_BIKES ', 1, 1, ' 47570');

-- --------------------------------------------------------

--
-- Структура таблицы `TWO_SUSPENSIONS`
--

CREATE TABLE `TWO_SUSPENSIONS` (
  `O_NO` int(11) NOT NULL,
  `SIZE` double NOT NULL,
  `W_B` double NOT NULL,
  `F_T` int(11) NOT NULL,
  `R_T` int(11) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `TWO_SUSPENSIONS`
--

INSERT INTO `TWO_SUSPENSIONS` (`O_NO`, `SIZE`, `W_B`, `F_T`, `R_T`, `Price`) VALUES
(1, 660, 957, 80, 50, 94540),
(2, 671, 1054, 100, 60, 108840),
(3, 680, 1117, 100, 100, 111930),
(4, 691, 1147, 130, 120, 120130),
(5, 706, 1176, 140, 120, 1132480),
(6, 720, 1205, 160, 140, 149040),
(7, 750, 1220, 170, 150, 160000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
