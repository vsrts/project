-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Мар 14 2019 г., 21:08
-- Версия сервера: 5.7.15-9-log
-- Версия PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `host1560631_sushi`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cities`
--

CREATE TABLE `cities` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `subdomain` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cities`
--

INSERT INTO `cities` (`id`, `name`, `subdomain`) VALUES
(1, 'Аксай', 'аксай'),
(2, 'Анапа', 'анапа'),
(3, 'Воронеж', 'воронеж'),
(4, 'Геленджик', 'геленджик'),
(5, 'Горячий Ключ', 'горячий-ключ'),
(6, 'Краснодар', 'краснодар'),
(7, 'Курск', 'курск'),
(8, 'Курчатов', 'курчатов'),
(9, 'Моздок', 'моздок'),
(10, 'Новороссийск', ''),
(11, 'Новочеркасск', 'новочеркасск'),
(12, 'Ростов-на-Дону', 'ростов'),
(13, 'Саратов', 'саратов'),
(14, 'Станица Динская', 'динская'),
(15, 'Тимашевск', 'тимашевск'),
(16, 'Усть-Лабинск', 'усть-лабинск'),
(17, 'Прохладный', 'прохладный'),
(19, 'Таганрог', 'таганрог'),
(20, 'Азов', 'азов'),
(21, 'Яблоновский', 'яблоновский');

-- --------------------------------------------------------

--
-- Структура таблицы `points`
--

CREATE TABLE `points` (
  `id` int(10) NOT NULL,
  `city` int(11) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `filial` int(11) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `points`
--

INSERT INTO `points` (`id`, `city`, `phone`, `email`, `address`, `filial`, `status`) VALUES
(3, 1, '8 (918) 850-04-52', 'aksai@суши-даром.рф', 'ул.Платова, 83', 0, 1),
(4, 2, '8 (938) 534-04-44', 'sushidarom-anapa@yandex.ru', 'ул. Промышленная, 16', 0, 1),
(6, 5, '8 (967) 664-29-29', 'kluch@суши-даром.рф', 'ул. Революции, 7', 1, 1),
(7, 20, '8(988)259-89-56', 'azov@суши-даром.рф', 'пер. Маяковского, 77', 1, 1),
(8, 3, '8(473)290-6-555', 'voronezh@суши-даром.рф', 'ул. Генерала Лизюкова, 50', 1, 1),
(9, 4, '8 (962) 873-88-81', 'gelendzhik@суши-даром.рф', 'ул. Ленина, 30', 1, 1),
(10, 6, '8 (800) 555-24-08', 'sd-krasnodar1@yandex.ru', 'ул. Кубанская набережная 5', 1, 1),
(11, 6, '8 (800) 555-24-08', 'sd-krasnodar1@yandex.ru', 'ул. Котлярова, 21', 1, 1),
(12, 6, '8 (800) 555-24-08', 'sd-krasnodar1@yandex.ru', 'ул. Лизы Чайкиной, 2/1', 1, 1),
(13, 6, '8 (800) 555-24-08', 'sd-krasnodar1@yandex.ru', 'ул. Комарова, 21/1', 1, 1),
(14, 6, '8 (800) 555-24-08', 'sd-krasnodar1@yandex.ru', 'ул. Тюляева, 9/1', 1, 1),
(15, 7, '8 (4712) 550-580', 'kursk@суши-даром.рф', 'ул. Бойцов 9 дивизии 185Ж', 1, 1),
(16, 7, '8 (4712) 550-590', 'kursk@суши-даром.рф', 'пр-т Анатолия Дериглазова, 19', 1, 1),
(17, 8, '8(4712)550-540', 'kurchatov@суши-даром.рф', 'ул. Энергетиков, 12а', 1, 1),
(18, 9, '8(938)863-22-85', 'mozdok@суши-даром.рф', 'ул. Армянская 14', 1, 1),
(19, 10, '8 (800) 550-53-49', 'sushi-darom@mail.ru', 'ул. Мира 10', 1, 1),
(20, 10, '8 (800) 550-53-49', 'sushi-darom@mail.ru', 'ул. Видова, 210д', 1, 1),
(21, 10, '8 (800) 550-53-49', 'sushi-darom@mail.ru', 'пр. Дзержинского, 228', 1, 1),
(22, 11, '8 (988) 541-05-00', 'sd-rostov1@yandex.ru', 'пр.Ермака, 44', 1, 1),
(23, 17, '8 (928) 716-55-67', 'prohladny@суши-даром.рф', 'ул. Ленина, 102/1', 1, 1),
(24, 12, '8(800)555-82-06', 'sushidarom61@yandex.ru', 'б-р Комарова 20', 1, 1),
(25, 12, '8(800)555-82-06', 'sushidarom61@yandex.ru', 'ул. Таганрогская 114', 1, 1),
(26, 12, '8(800)555-82-06', 'sushidarom61@yandex.ru', 'ул. Темерницкая 41б', 1, 1),
(27, 12, '8(800)555-82-06', 'sushidarom61@yandex.ru', 'ул. Малиновского 38/29', 1, 1),
(28, 13, '8 (8452) 930-080', 'sushidarom64@yandex.ru', 'ул. Московская 42', 1, 1),
(29, 13, '8 (8452) 930-020', 'sushidarom64@yandex.ru', 'п. Солнечный', 1, 1),
(30, 13, '8 (8452) 939-711', 'sushidarom64@yandex.ru', 'пр-т 50 Лет Октября, 69', 1, 1),
(31, 13, '8 (8452) 931-322', 'sushidarom64@yandex.ru', 'ул.Пономарева д.9/14', 1, 1),
(32, 13, '8 (8452) 930-080', 'sushidarom64@yandex.ru', 'ул. Большая Садовая, д. 141', 1, 1),
(33, 14, '8(918)355-75-05', 'stanitsdinskaya@yandex.ru', 'ул. Красная 64', 1, 1),
(34, 19, '8 (989) 5000-141', 'taganrog@суши-даром.рф', 'пер. Спартаковский, 1а', 1, 1),
(35, 15, '8 (967) 673-2-444', 'timashevsk@суши-даром.рф', 'ул. Колесникова 40а', 1, 1),
(36, 16, '8(928)435-18-08', 'ustlabinsk@суши-даром.рф', 'ул. Красная, 291', 1, 1),
(37, 21, '8 (800) 555-24-08', 'yablonovski@суши-даром.рф', 'ул. Гагарина, 46/1', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `slides`
--

CREATE TABLE `slides` (
  `id` int(10) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `slides`
--

INSERT INTO `slides` (`id`, `image`, `code`, `sort`) VALUES
(1, '/images/slide/decsite.jpg', NULL, 2),
(2, '/images/slide/decsite2.jpg', NULL, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `slide_only`
--

CREATE TABLE `slide_only` (
  `id` int(11) NOT NULL,
  `slide_id` int(10) NOT NULL,
  `city_id` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `slide_only`
--

INSERT INTO `slide_only` (`id`, `slide_id`, `city_id`) VALUES
(5, 1, 0),
(6, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `auth_key`) VALUES
(1, 'admin', '$2y$13$tvR.Hk.kHdV845bS4v.AKuiIb.c31yMiYcpbD7vUhSG7zGDmttgYa', 'AV5gtkX_wwYs4xDCCU-NmmEo4k4J1v0x');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city` (`city`);

--
-- Индексы таблицы `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `slide_only`
--
ALTER TABLE `slide_only`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slide_id` (`slide_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT для таблицы `points`
--
ALTER TABLE `points`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `slide_only`
--
ALTER TABLE `slide_only`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `points`
--
ALTER TABLE `points`
  ADD CONSTRAINT `points_ibfk_1` FOREIGN KEY (`city`) REFERENCES `cities` (`id`);

--
-- Ограничения внешнего ключа таблицы `slide_only`
--
ALTER TABLE `slide_only`
  ADD CONSTRAINT `slide_only_ibfk_1` FOREIGN KEY (`slide_id`) REFERENCES `slides` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
