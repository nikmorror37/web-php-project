-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `pk`
--

-- --------------------------------------------------------

--
-- Структура таблицы `basket`
--

CREATE TABLE IF NOT EXISTS `basket` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer` varchar(50) NOT NULL,
  `catalogid` int(11) NOT NULL,
  `quantity` float NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `catalogid` (`catalogid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `basket`
--

INSERT INTO `basket` (`id`, `customer`, `catalogid`, `quantity`, `datetime`) VALUES
(5, 'multcbgq5e7gmf7i8iagpc0o44', 2, 1, '2019-12-15 02:01:17'),
(7, 'anbqkqorhb2ql43o7iah0q8hc0', 2, 1, '2019-12-16 00:31:38'),
(8, 'anbqkqorhb2ql43o7iah0q8hc0', 3, 1, '2019-12-16 00:31:41');

-- --------------------------------------------------------

--
-- Структура таблицы `catalog`
--

CREATE TABLE IF NOT EXISTS `catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` int(11) NOT NULL,
  `article` varchar(15) NOT NULL,
  `name` varchar(150) NOT NULL,
  `note` varchar(500) NOT NULL,
  `amount` int(11) NOT NULL,
  `price` float NOT NULL,
  `discount` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `typeid` (`typeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='каталог спорт товаров' AUTO_INCREMENT=17 ;

--
-- Дамп данных таблицы `catalog`
--

INSERT INTO `catalog` (`id`, `typeid`, `article`, `name`, `note`, `amount`, `price`, `discount`) VALUES
(2, 7, '13TRNKID-R', 'Планшет Supra M74AG 7 / 5735 / 512 / 4 / And 4.4 BL планшет', 'Модель	M74AG 7/5735/512/4/And 4.4 BL планшет\r\nТип	Планшет\r\nГарантия	1 год\r\nОперационная система	Android™ 4.4 KitKat\r\nДиагональ экрана	7 "\r\nРазрешение экрана	1024 x 600 пикс\r\nТактовая частота процессора	1200 МГц\r\nКоличество ядер	4\r\nОбъем встронной памяти	4 Гб', 3, 4495, 15),
(3, 7, '14PULSE180', 'Монитор Aoc e970Swn', 'Модель	e970Swn\nТип	Монитор\nПокрытие экрана	матовый\nДиагональ экрана	18.5 "\nРазрешение матрицы	1366 x 768 пикс', 7, 13000, 20),
(4, 7, '14VG180', 'Ноутбук HP ProBook 470 G2', 'Модель	ProBook 470 G2\nТип	Ноутбук\nГарантия	1 год\nФункциональность	на каждый день\nОперационная система	DOS\nМарка процессора	Intel®\nМодель процессора	Core™ i3-5010U\nЧастота работы процессора	2100 МГц', 5, 14000, 0),
(16, 7, '6881010156', 'Сумка для ноутбука Samsonite 41U*008*00', 'Модель	41U*008*00\nТип	Сумка для ноутбука\nВид	рюкзак\nМаксимальная диагональ	17.3 "\nОбласть применения	для ноутбука\nХарактеристики	отделение-органайзер \nкарман для телефона \nзащита от воды', 2, 3400, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `period` date NOT NULL,
  `header` varchar(50) NOT NULL,
  `text` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `period`, `header`, `text`) VALUES
(1, '2019-12-11', 'Новогодняя акция!', 'С 20 по 31 декабря новогодние скидки до 70%, спешите купить!'),
(2, '2019-10-08', 'Для оптивиков', 'Для оформления заказа необходимо предоставить документ о регистрации.'),
(4, '2019-08-21', 'Спасибо от Сбербанка!', 'С 10 января при покупке товара начисляется бонусы спасибо в размере 5% от покупки.'),
(6, '2019-05-01', 'Распродажа аксессуаров для авто!', 'С 01 сентября по 01 ноября действует скидка 15% на весь товар.'),
(7, '2019-06-21', 'Поступление новых товаров!', 'В магазине новое поступление запчастей. Успевайте!');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `V` tinyint(1) NOT NULL,
  `datetime` datetime NOT NULL,
  `fio` varchar(70) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `customer` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `V`, `datetime`, `fio`, `email`, `phone`, `address`, `customer`) VALUES
(1, 1, '2019-01-16 18:25:34', 'Иванов И.И.', 'ivanII@mail.ru', '8-923-215-44-22', 'г. Воронеж, ул. Иваново дом3', '1hsbg98poo90hft01blar3o2r7'),
(2, 1, '2019-01-17 07:27:41', 'Сидорова Ирма Викторовна', 'sidorIV@mail.ru', '8-961-152-66-42', 'г. Воронеж, ул. Иваново дом3', 'lao13psinu1morl5nv2dciept7'),
(3, 0, '2019-01-26 01:50:08', 'Иванов И.И.', 'ivanII@mail.ru', '8 951 203 45 26', 'г. Москва, ул.Ленина дом8', '577bq4e5igmt7kbr8ebhsa6413'),
(4, 0, '2019-01-26 20:08:50', 'Петровская Марина Михайловна', 'mihaylova@mail.ru', '8 952 123 45 75', 'ул. Кирова 8-6', 's6gdudru2g32dp666ulaqhf9i5'),
(5, 0, '2019-01-26 20:20:01', 'Миронова Олеся', 'mironO@yandex.ru', '8 923 161 2213', 'г. Воронеж, ул. Смирнова дом 5', 'c5r3nrp9b4qjrgaggnlgkd2bm5'),
(6, 0, '2019-01-26 20:22:52', 'Романов Егор', 'egor51@mail.ru', '76-15-23', 'г. Воронеж, ул. Кирова 15-162', 'c5r3nrp9b4qjrgaggnlgkd2bm5'),
(7, 1, '2019-02-07 02:32:05', 'Соловьева Олеся Ивановна', 'solovOI@yandex.ru', '8-952-162-44-55', 'г. Воронеж, ул. Смирнова 5-16', 'pt9g9ib0j63pucvhgpd64neab5'),
(8, 0, '2019-02-10 14:16:18', 'Иванов И.И.', 'ivanII@mail.ru', '8-923-215-44-22', 'г. Воронеж, ул. Иваново дом3', 'o6u8paf9mmnle9l8hi8dno49j6'),
(11, 0, '2019-12-16 00:50:15', 'Иванов И.И.', 'ivanII@mail.ru', '8-923-215-44-22', 'г. Воронеж, ул. Иваново дом3', '4vtttdspahopgn3q4gbkreh2s2');

-- --------------------------------------------------------

--
-- Структура таблицы `orderst`
--

CREATE TABLE IF NOT EXISTS `orderst` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) NOT NULL,
  `goodsid` int(11) NOT NULL,
  `quantity` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `orderid` (`orderid`),
  KEY `goodsid` (`goodsid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Дамп данных таблицы `orderst`
--

INSERT INTO `orderst` (`id`, `orderid`, `goodsid`, `quantity`) VALUES
(1, 1, 16, '1'),
(2, 1, 2, '1'),
(3, 2, 4, '2'),
(4, 3, 2, '1'),
(5, 4, 3, '1'),
(6, 5, 2, '1'),
(7, 6, 3, '1'),
(8, 7, 2, '1'),
(9, 8, 3, '1'),
(10, 8, 16, '1'),
(12, 11, 4, '1'),
(13, 11, 16, '1');

-- --------------------------------------------------------

--
-- Структура таблицы `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `registration`
--

INSERT INTO `registration` (`id`, `login`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='типы товаров' AUTO_INCREMENT=15 ;

--
-- Дамп данных таблицы `type`
--

INSERT INTO `type` (`id`, `type`) VALUES
(1, 'Мониторы и аксессуары'),
(2, 'Кабели, шлейфы, переходники'),
(3, 'Запчасти оргтехники'),
(4, 'Манипуляторы'),
(5, 'Внешние накопители данных'),
(6, 'Телефоны и смартфоны'),
(7, 'Компьютеры'),
(8, 'Ноутбуки'),
(9, 'Планшеты'),
(14, 'Чистящие средства');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `basket`
--
ALTER TABLE `basket`
  ADD CONSTRAINT `basket_ibfk_1` FOREIGN KEY (`catalogid`) REFERENCES `catalog` (`id`);

--
-- Ограничения внешнего ключа таблицы `catalog`
--
ALTER TABLE `catalog`
  ADD CONSTRAINT `catalog_ibfk_1` FOREIGN KEY (`typeid`) REFERENCES `type` (`id`);

--
-- Ограничения внешнего ключа таблицы `orderst`
--
ALTER TABLE `orderst`
  ADD CONSTRAINT `orderst_ibfk_1` FOREIGN KEY (`orderid`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `orderst_ibfk_2` FOREIGN KEY (`goodsid`) REFERENCES `catalog` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
