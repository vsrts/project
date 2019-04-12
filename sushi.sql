-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 12 2019 г., 15:18
-- Версия сервера: 5.6.38
-- Версия PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `sushi`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Суши'),
(2, 'Спайс суши'),
(3, 'Классические роллы'),
(4, 'Роллы'),
(5, 'Жареные роллы'),
(6, 'Запечённые роллы'),
(7, 'Сеты'),
(8, 'Дополнительно'),
(9, 'Вок'),
(10, 'Пицца'),
(11, 'Горячие закуски'),
(12, 'Салаты'),
(13, 'Супы'),
(14, 'Бургеры'),
(15, 'Напитки');

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
  `second_phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  `manager` int(11) DEFAULT NULL,
  `filial` int(11) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `points`
--

INSERT INTO `points` (`id`, `city`, `phone`, `second_phone`, `email`, `address`, `time`, `manager`, `filial`, `status`) VALUES
(3, 1, '8 (918) 850-04-52', '', 'aksai@суши-даром.рф', 'ул.Платова, 83', '123', 2, 0, 1),
(4, 2, '8 (938) 534-04-44', '', 'sushidarom-anapa@yandex.ru', 'ул. Промышленная, 16', '456', 2, 0, 1),
(6, 5, '8 (967) 664-29-29', NULL, 'kluch@суши-даром.рф', 'ул. Революции, 7', NULL, 1, 1, 1),
(7, 20, '8(988)259-89-56', NULL, 'azov@суши-даром.рф', 'пер. Маяковского, 77', NULL, 1, 1, 1),
(8, 3, '8(473)290-6-555', NULL, 'voronezh@суши-даром.рф', 'ул. Генерала Лизюкова, 50', NULL, 1, 1, 1),
(9, 4, '8 (962) 873-88-81', NULL, 'gelendzhik@суши-даром.рф', 'ул. Ленина, 30', NULL, 1, 1, 1),
(10, 6, '8 (800) 555-24-08', '', 'sd-krasnodar1@yandex.ru', 'ул. Кубанская набережная 5', '789', 2, 1, 1),
(11, 6, '8 (800) 555-24-08', NULL, 'sd-krasnodar1@yandex.ru', 'ул. Котлярова, 21', NULL, 2, 1, 1),
(12, 6, '8 (800) 555-24-08', NULL, 'sd-krasnodar1@yandex.ru', 'ул. Лизы Чайкиной, 2/1', NULL, 2, 1, 1),
(13, 6, '8 (800) 555-24-08', NULL, 'sd-krasnodar1@yandex.ru', 'ул. Комарова, 21/1', NULL, 2, 1, 1),
(14, 6, '8 (800) 555-24-08', NULL, 'sd-krasnodar1@yandex.ru', 'ул. Тюляева, 9/1', NULL, 2, 1, 1),
(15, 7, '8 (4712) 550-580', NULL, 'kursk@суши-даром.рф', 'ул. Бойцов 9 дивизии 185Ж', NULL, 1, 1, 1),
(16, 7, '8 (4712) 550-590', '', 'kursk@суши-даром.рф', 'пр-т Анатолия Дериглазова, 19', '123', 1, 1, 1),
(17, 8, '8(4712)550-540', NULL, 'kurchatov@суши-даром.рф', 'ул. Энергетиков, 12а', NULL, 1, 1, 1),
(18, 9, '8(938)863-22-85', NULL, 'mozdok@суши-даром.рф', 'ул. Армянская 14', NULL, 1, 1, 1),
(19, 10, '8 (800) 550-53-49', NULL, 'sushi-darom@mail.ru', 'ул. Мира 10', NULL, 1, 1, 1),
(20, 10, '8 (800) 550-53-49', NULL, 'sushi-darom@mail.ru', 'ул. Видова, 210д', NULL, 1, 1, 1),
(21, 10, '8 (800) 550-53-49', NULL, 'sushi-darom@mail.ru', 'пр. Дзержинского, 228', NULL, 1, 1, 1),
(22, 11, '8 (988) 541-05-00', NULL, 'sd-rostov1@yandex.ru', 'пр.Ермака, 44', NULL, 1, 1, 1),
(23, 17, '8 (928) 716-55-67', NULL, 'prohladny@суши-даром.рф', 'ул. Ленина, 102/1', NULL, 1, 1, 1),
(24, 12, '8(800)555-82-06', NULL, 'sushidarom61@yandex.ru', 'б-р Комарова 20', NULL, 1, 1, 1),
(25, 12, '8(800)555-82-06', NULL, 'sushidarom61@yandex.ru', 'ул. Таганрогская 114', NULL, 1, 1, 1),
(26, 12, '8(800)555-82-06', NULL, 'sushidarom61@yandex.ru', 'ул. Темерницкая 41б', NULL, 1, 1, 1),
(27, 12, '8(800)555-82-06', NULL, 'sushidarom61@yandex.ru', 'ул. Малиновского 38/29', NULL, 1, 1, 1),
(28, 13, '8 (8452) 930-080', NULL, 'sushidarom64@yandex.ru', 'ул. Московская 42', NULL, 1, 1, 1),
(29, 13, '8 (8452) 930-020', NULL, 'sushidarom64@yandex.ru', 'п. Солнечный', NULL, 1, 1, 1),
(30, 13, '8 (8452) 939-711', NULL, 'sushidarom64@yandex.ru', 'пр-т 50 Лет Октября, 69', NULL, 1, 1, 1),
(31, 13, '8 (8452) 931-322', NULL, 'sushidarom64@yandex.ru', 'ул.Пономарева д.9/14', NULL, 1, 1, 1),
(32, 13, '8 (8452) 930-080', NULL, 'sushidarom64@yandex.ru', 'ул. Большая Садовая, д. 141', NULL, 1, 1, 1),
(33, 14, '8(918)355-75-05', '', 'stanitsdinskaya@yandex.ru', 'ул. Красная 64', '123', 1, 1, 1),
(34, 19, '8 (989) 5000-141', NULL, 'taganrog@суши-даром.рф', 'пер. Спартаковский, 1а', NULL, 1, 1, 1),
(35, 15, '8 (967) 673-2-444', NULL, 'timashevsk@суши-даром.рф', 'ул. Колесникова 40а', NULL, 1, 1, 1),
(36, 16, '8(928)435-18-08', NULL, 'ustlabinsk@суши-даром.рф', 'ул. Красная, 291', NULL, 1, 1, 1),
(37, 21, '8 (800) 555-24-08', NULL, 'yablonovski@суши-даром.рф', 'ул. Гагарина, 46/1', NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `point_categories`
--

CREATE TABLE `point_categories` (
  `point_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `point_categories`
--

INSERT INTO `point_categories` (`point_id`, `category_id`) VALUES
(3, 2),
(3, 3),
(3, 4),
(16, 4),
(3, 5),
(16, 5),
(3, 6),
(16, 6),
(33, 11),
(33, 12);

-- --------------------------------------------------------

--
-- Структура таблицы `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `profile`
--

INSERT INTO `profile` (`id`, `user_id`, `name`, `phone`) VALUES
(1, 1, 'VS', '8 (917) 817-16-83'),
(4, 2, 'Вася', '8 (917) 123-45-67');

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
(1, '/images/slide/decsite.jpg', '', 2),
(2, '/images/slide/decsite2.jpg', '', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `slides_cities`
--

CREATE TABLE `slides_cities` (
  `slides_id` int(11) NOT NULL,
  `cities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `slides_cities`
--

INSERT INTO `slides_cities` (`slides_id`, `cities_id`) VALUES
(1, 1),
(2, 1),
(1, 2),
(2, 2),
(1, 3),
(2, 3),
(1, 4),
(2, 4),
(1, 5),
(2, 5),
(1, 6),
(2, 6),
(1, 7),
(2, 7),
(1, 8),
(2, 8),
(1, 9),
(2, 9),
(1, 10),
(2, 10),
(1, 11),
(2, 11),
(1, 12),
(2, 12),
(1, 13),
(2, 13),
(1, 14),
(2, 14),
(1, 15),
(2, 15),
(1, 16),
(2, 16),
(1, 17),
(2, 17),
(1, 19),
(2, 19),
(1, 20),
(2, 20),
(1, 21),
(2, 21);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(64) NOT NULL,
  `auth_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`, `auth_key`) VALUES
(1, 'admin', '$2y$13$5lPoOl3z0EcN6MK5duNCTu9/x0wCMqHPB1FyTmTsPhZIUdDt8rxj.', 'root', 'Uxy-daXGQzG2I4ZNzVmmUGJvC_G5JQZu'),
(2, 'vasya', '$2y$13$JN20QJ74DufiBNdEXeCwJ.5FRebi5WhC1YtRDi0fh7c9YJlklCz.W', 'manager', '4f4NctM0Ta0XsaS71YjWktC7JbvsdAsW');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `city` (`city`),
  ADD KEY `manager` (`manager`);

--
-- Индексы таблицы `point_categories`
--
ALTER TABLE `point_categories`
  ADD PRIMARY KEY (`point_id`,`category_id`),
  ADD KEY `point_id` (`point_id`,`category_id`),
  ADD KEY `point_categories_ibfk_2` (`category_id`);

--
-- Индексы таблицы `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_2` (`user_id`);

--
-- Индексы таблицы `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `slides_cities`
--
ALTER TABLE `slides_cities`
  ADD PRIMARY KEY (`slides_id`,`cities_id`),
  ADD KEY `cities_id` (`cities_id`),
  ADD KEY `slides_id` (`slides_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
-- AUTO_INCREMENT для таблицы `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `points`
--
ALTER TABLE `points`
  ADD CONSTRAINT `points_ibfk_1` FOREIGN KEY (`city`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `points_ibfk_2` FOREIGN KEY (`manager`) REFERENCES `user` (`id`);

--
-- Ограничения внешнего ключа таблицы `point_categories`
--
ALTER TABLE `point_categories`
  ADD CONSTRAINT `point_categories_ibfk_1` FOREIGN KEY (`point_id`) REFERENCES `points` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `point_categories_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `slides_cities`
--
ALTER TABLE `slides_cities`
  ADD CONSTRAINT `slides_cities_ibfk_1` FOREIGN KEY (`cities_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `slides_cities_ibfk_2` FOREIGN KEY (`slides_id`) REFERENCES `slides` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
