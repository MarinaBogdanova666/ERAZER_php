-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 25 2022 г., 16:59
-- Версия сервера: 8.0.24
-- Версия PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `geekbrains`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `user_id` int DEFAULT '0',
  `session_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `quantity`, `user_id`, `session_id`) VALUES
(105, 66, 4, 0, 'vrga5sonhkjhhmjv7m65a70vp8s3ogep'),
(106, 68, 3, 0, 'vrga5sonhkjhhmjv7m65a70vp8s3ogep'),
(107, 65, 6, 0, 'vrga5sonhkjhhmjv7m65a70vp8s3ogep'),
(108, 68, 2, 0, '6n58kou38dcvo9tbkanf4urcolo7rp8c'),
(111, 68, 2, 6, '6n58kou38dcvo9tbkanf4urcolo7rp8c'),
(112, 66, 1, 0, 'jt22at3tbl59186qmp0b8l607hvqv9fv'),
(113, 68, 1, 0, 'jt22at3tbl59186qmp0b8l607hvqv9fv'),
(114, 66, 1, 0, '1pfqc86stsu6640epibb47coeql36uug'),
(115, 68, 1, 0, '1pfqc86stsu6640epibb47coeql36uug'),
(116, 66, 1, 7, '1pfqc86stsu6640epibb47coeql36uug'),
(117, 68, 1, 7, '1pfqc86stsu6640epibb47coeql36uug'),
(130, 71, 1, 0, 's0du2tut85ipt3frcvn9agkiof745bi2'),
(131, 66, 1, 0, 's0du2tut85ipt3frcvn9agkiof745bi2'),
(132, 68, 2, 0, 'e10hmfi55aceunafmpaffqnhjmh9nad8'),
(133, 66, 1, 0, 'e10hmfi55aceunafmpaffqnhjmh9nad8'),
(159, 66, 2, 0, 'rkgu46vanhnndci3jl9r2k3kg6jmj47c');

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
--

CREATE TABLE `feedback` (
  `id` int NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `feedback`) VALUES
(1, 'admin', 'Все ок'),
(4, 'Кто то ', 'Привет'),
(5, 'admin', 'Забаню'),
(6, 'Админ', 'Привет мир');

-- --------------------------------------------------------

--
-- Структура таблицы `feedback_product`
--

CREATE TABLE `feedback_product` (
  `id` int NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `feedback` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `feedback_product`
--

INSERT INTO `feedback_product` (`id`, `name`, `feedback`, `product_id`) VALUES
(1, 'Дмитрий', 'Ноутбук игровой ASUS F571GT-BQ703T нереально крут!', 3),
(2, 'Иван И.', 'ASUS TUF Gaming FX705 AMD Edition бомбический ноут!', 4),
(4, 'Михаил', 'Отличный ноут. Отзывы поправил.', 3),
(5, 'Вася', 'Люблю Mac', 5),
(9, 'Дмитрий', 'Привет Димон', 4),
(10, 'Стив Джобс', 'Купил ноут. Все супер', 3),
(25, 'Купивший', 'Немного ноутов на сайте с ценой до 50000. Этот оптимальный по цене/качеству.', 66),
(26, 'Стив Джобс', 'Еще отзыв', 66),
(27, 'Стив Джобс', 'Новый отзыв', 66),
(28, 'Саша', 'Привет 1', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `gallery`
--

CREATE TABLE `gallery` (
  `ID` int NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `views` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `gallery`
--

INSERT INTO `gallery` (`ID`, `filename`, `size`, `views`) VALUES
(1, '01.jpg', 111456, 2),
(2, '02.jpg', 70076, 0),
(3, '03.jpg', 70215, 0),
(4, '04.jpg', 61733, 0),
(5, '05.jpg', 160617, 0),
(6, '06.jpg', 89871, 0),
(7, '07.jpg', 99418, 0),
(8, '08.jpg', 103775, 0),
(9, '09.jpg', 81022, 0),
(10, '10.jpg', 97127, 0),
(11, '11.jpg', 98579, 0),
(12, '12.jpg', 139286, 0),
(13, '13.jpg', 113016, 0),
(14, '14.jpg', 151814, 0),
(15, '15.jpg', 112488, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `models`
--

CREATE TABLE `models` (
  `id` int NOT NULL,
  `brand` varchar(255) NOT NULL,
  `models` varchar(255) NOT NULL,
  `volume` varchar(255) NOT NULL,
  `model_year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `models`
--

INSERT INTO `models` (`id`, `brand`, `models`, `volume`, `model_year`) VALUES
(1, 'KTM', 'Duke 125', '125', '2020'),
(2, 'KTM', 'Duke 250', '250', '2015'),
(3, 'Honda', 'CRF300 RALLY', '300', '1998'),
(4, 'Kawasaki', 'Ninja 650R', '650', '1995'),
(5, 'Honda', 'CBR650F', '650', '2020'),
(6, 'BMW', 'G310GS', '310', '1998'),
(7, 'Honda', 'NC750X', '750', '2010'),
(8, 'Yamaha', 'TRACER900', '900', '1999'),
(9, 'Suzuki', 'GSX-R600', '600', '2015'),
(10, 'Bajaj', 'Dominar', '400', '2017'),
(11, 'BMW', 'S1000R', '1000', '2002'),
(12, 'Honda', 'CB1000R', '1000', '2010');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `text`) VALUES
(1, 'Новые детали уже в наличии!', 'Для заказа пишите или звоните'),
(2, 'Мы наконец-то открылись', 'Очень надеюсь что всё получится');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userId` int NOT NULL,
  `status` enum('Новый','Подтвержден','Оплачен','Выдан','Отменен') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Новый',
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `uId` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `date`, `userId`, `status`, `name`, `phone`, `address`, `uId`) VALUES
(3, '2020-10-17 17:36:18', 0, 'Отменен', 'Дмитрий', 7, 'lllll', '7667690415f8affca5a42b2.56442037'),
(7, '2020-10-17 18:08:40', 0, 'Оплачен', 'Дмитрий', 79771175704, 'Москва', '15470743565f8b08f8260fa3.69380903'),
(8, '2020-10-17 18:35:42', 0, 'Новый', 'Дмитрий', 79771175704, 'Москва, Верхняя Красносельская 10к7а, 120', '7831725235f8b0f4e165908.35482044'),
(9, '2020-10-17 18:38:25', 0, 'Новый', 'Дмитрий', 79771175704, 'Москва', '9882337285f8b0ff1570814.36086473'),
(32, '2021-12-27 13:24:57', 8, 'Подтвержден', 'Bogdanova Marina', 79655739552, 'Ореховая ', '15581449461c994790c7342.58669941'),
(33, '2021-12-27 13:43:05', 8, 'Выдан', 'Bogdanova Marina', 79655739552, 'Ореховая 95, ', '6586176761c998b9791897.83885758'),
(34, '2021-12-27 14:02:45', 8, 'Оплачен', 'Bogdanova Marina', 79655739552, 'Ореховая 95', '114968970961c99d55f13298.21658342'),
(35, '2021-12-27 14:10:12', 0, 'Отменен', 'arin', 89655739552, 'Ореховая 95, ', '213922467461c99f14c18688.89275017'),
(36, '2021-12-27 15:08:07', 0, 'Оплачен', 'Bogdanova', 89655739552, 'Ореховая 95, ', '120913144061c9aca7ece053.46984194');

-- --------------------------------------------------------

--
-- Структура таблицы `order_items`
--

CREATE TABLE `order_items` (
  `id` int NOT NULL,
  `orderId` int NOT NULL,
  `productId` int NOT NULL,
  `quantity` int NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `order_items`
--

INSERT INTO `order_items` (`id`, `orderId`, `productId`, `quantity`, `price`) VALUES
(4, 3, 3, 15, 49990),
(5, 3, 4, 3, 79990),
(6, 3, 5, 2, 59990),
(16, 7, 3, 15, 49990),
(17, 7, 4, 3, 79990),
(18, 7, 5, 2, 59990),
(19, 8, 3, 15, 49990),
(20, 8, 4, 3, 79990),
(21, 8, 5, 2, 59990),
(22, 9, 3, 15, 49990),
(23, 9, 4, 3, 79990),
(24, 9, 5, 2, 59990),
(25, 10, 3, 15, 49990),
(26, 10, 4, 3, 79990),
(27, 10, 5, 2, 59990),
(28, 11, 3, 1, 49990),
(29, 12, 4, 1, 79990),
(30, 12, 3, 1, 49990),
(32, 13, 3, 1, 49990),
(33, 14, 4, 1, 79990),
(34, 15, 3, 1, 49990),
(35, 15, 4, 1, 79990),
(37, 16, 3, 1, 49990),
(38, 17, 3, 1, 49990),
(39, 17, 4, 1, 79990),
(41, 18, 3, 7, 49990),
(42, 18, 5, 1, 59990),
(44, 19, 5, 19, 59990),
(45, 19, 4, 5, 79990),
(46, 20, 3, 7, 49990),
(47, 20, 4, 16, 79990),
(48, 29, 69, 5, 56060),
(49, 29, 3, 5, 49990),
(50, 29, 68, 1, 47910),
(51, 29, 3, 6, 49990),
(52, 30, 69, 5, 56060),
(53, 30, 3, 5, 49990),
(54, 30, 68, 1, 47910),
(55, 30, 3, 6, 49990),
(56, 31, 5, 1, 59990),
(57, 31, 66, 1, 47540),
(58, 32, 68, 1, 4791),
(59, 32, 66, 1, 4754),
(60, 33, 69, 1, 5606),
(61, 0, 71, 1, 5060),
(62, 34, 67, 1, 5113),
(63, 35, 68, 1, 4791),
(64, 35, 66, 1, 4754),
(65, 36, 71, 1, 5060);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `quantity_stock` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Нет в наличии',
  `models_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `image`, `price`, `quantity_stock`, `models_id`) VALUES
(3, 'Клетка на мотоцикл HONDA CBR650F', 'Усиленная клетка серии PRO, Crashbars Engine Guard для: HONDA CBR650F 2014-2018 HONDA CBR650FA 2014-2018 HONDA CB650FA 2014-2018 HONDA CB650F 2014-2018 специально спроектированная нами для мотоциклистов которые ценят комфорт, безопасность и надежность. Клетка усилена ребрами, образующими жесткие узлы во избежание продольных и поперечных деформаций. В комплекте вы найдете 4 сменных слайдера (по 2 на каждую сторону), которые располагаются таким образом, что динамический коэффициент при падении мотоцикла распределяется равномерно на все точки крепления каркасов. Важно! - Клетка очень компактна и не ощущается райдером. Ее габариты оставляют маневренность мотоцикла на прежнем уровне как и без обвеса! Обратите внимание что клетка поставляется в классическом черном цвете.', 'honda_CBR650F.jpeg', 16990, 'Нет в наличии', 5),
(4, 'Дуги учебные на мотоцикл KTM Duke 125', 'Дуги учебные на мотоцикл KTM Duke 125, Duke 390 до -`16, Duke 200 `12-`21 специально спроектированна для использования мотоцикла новичками первосезонниками или для частых падений на учебных площадках. В районе подножек и лапок тормоза и переключения передач нами предусмотрено расширение каркасов клетки. Теперь Вам не придется подваривать подножки после каждого соприкосновения мотоцикла с асфальтом. Узлы мотоклетки усилены стяжками образующими жесткие узлы во избежание продольных и поперечных деформаций. Покраска в цвет отличный от черного или оранжевого опционально по каталогу RAL.', 'ktm_DUKE125.jpeg', 11990, 'Под заказ', 1),
(5, 'Дуги на мотоцикл HONDA CRF300 RALLY', 'Дуги безопасности для Honda CRF300 Крепление осуществляется на 2 точки с каждой стороны мотоцикла. Левая и правая половинки соединены дополнительно между собой через две стальные штанги, что делает конструкцию максимально прочной. ', 'honda_CRF300.jpeg', 10990, '30', 3),
(64, 'Клетка на мотоцикл KAWASAKI Ninja 650R', 'Клетки серии DAMPER пришли в мир дорожных мотоциклов из стантрайдинга и являются продолжением нашей знаменитой серии клеток PRO. Геометрия клетки DAMPER идентична клеткам PRO, но основное отличие этих клеток в слайдерах. В данном случае вварены четрыре демпферных узла. Демпферный узел - это система со слайдером, которая закреплена на клетке не жестко, а имеет возможность двигаться под воздействием внешней силы. При этом большая часть этой силы уходит на сжимание демпфирующего элемента и не передается на раму и двигатель мотоцикла! Конечно такая конструкция делает клетку несколько шире, однако мы настоятельно рекомендуем их новичкам, мотошколам и многим продвинутым райдерам.', 'kawasaki_NINJA650R.jpeg', 25990, 'Нет в наличии', 4),
(65, 'Дуги на мотоцикл BMW G310GS', 'Дуги безопасности Crash Cage на мотоцикл BMW G310GS Могут быть установлены на все года выпуска Высокая степень защиты мотоцикла достигается за счет устойчивой сварной конструкции с креплением на две точки с каждой стороны. В третьей точке два каркаса соединяются между собой перемычкой под радиатором. Дуги довольно высоко поднимают мотор над асфальтом сводя вероятность его повреждения практически к нулю.', 'bmw_G310GS.jpeg', 11990, 'Ожидается поставка', 6),
(66, 'Дуги на мотоцикл KTM Duke 250', 'Дуги безопасности для: KTM Duke 390 2021- Дуги имеют 2 независимых точки крепления с каждой стороны и перемычку между каркасами, что делает конструкцию невероятно крепкой. Поэтому такие дуги э то надежная защита крышек двигателя и значительное снижение вероятности повреждения переднего пластика и бака.', 'ktm_DUKE250.jpeg', 10990, '1', 2),
(67, 'Клетка на мотоцикл HONDA NC750X', 'Клетки серии DAMPER пришли в мир дорожных мотоциклов из стантрайдинга и являются продолжением нашей знаменитой серии клеток PRO. Геометрия клетки DAMPER одинаковая с клеткой PRO, но основное отличие этих клеток - они предназначены для использования с демпферными слайдерами. Демпферный слайдер - это слайдер который закреплен на клетке не жестко, а имеет возможность двигаться под воздействием внешней силы. При этом большая часть этой силы уходит на сжимание демпфирующего элемента и не передается на раму и двигатель мотоцикла! Конечно такая конструкция делает клетку несколько шире, однако мы настоятельно рекомендуем их новичкам, мотошколам и многим продвинутым райдерам. Обратите внимание, что клетка достойно отрабатыает падения как самостоятельно так и в комплекте с сабкейджем.', 'honda_NC750X.jpeg', 25990, '20', 7),
(68, 'Дуги на мотоцикл YAMAHA TRACER 900', 'Защитные дуги изготовлены из сочленения бесшовного профиля диаметром 27 и 22 мм с толщиной стенки 2,5 мм. Несущие каркасы выполнены более мощными, нежели соединяющие их перемычки. Таким образом мы добились уменьшения веса без снижения защитных свойств дуг. Тип дуг ближе к туристическому. Каркасы заведены вверх для защиты обтекателя. Крышки мотора также находятся под прикрытием. Под радиатором левый и правый каркас соединяются между собой в единый узел, это способствует более лучшему распределению удара и его гашению. Конфигурация дуг позволяет закрепить на них дополнительный свет, экшн камеру, держатель для бутылки и тд. ', 'yamaha_TRACER900.jpeg', 15990, '5', 8),
(69, 'Дуги на мотоцикл SUZUKI GSX-R600', 'Защитные дуги crash cage для Suzuki GSXR 600 и GSXR 750 от 2011 года выпуска и моложе В комплект поставки входят слайдеры на дуги. Крепление осуществляется на 3 точки с каждой стороны. Требуется доработка пластика в передней точке крепления дуги Очень надежная конструкция. ', 'suzuki_GSX-R600.jpeg', 9990, '45', 9),
(70, 'Дуги на мотоцикл BAJAJ Dominar', 'Дуги безопасности для BAJAJ Dominar 2016-2018 г.в. Независимое крепление на 3 точки с каждой стороны.', 'bajaj_DOMINAR.jpeg', 9490, 'Нет в наличии', 10),
(71, 'Дуги на мотоцикл BMW S1000R', 'Дуги безопасности Crash Cage на мотоцикл BMW S1000R Могут быть установлены на модификации 2014-2016 годов выпуска Дуги имеют по три точки крепления дуг с каждой стороны. В комплекте вы найдете пару слайдеров высотой 40мм, которые можно приобрести отдельно в случае их повреждения. Высокопрочный крепеж твердостью 10.9 Для тех, кто считает подобную конструкцию не достаточно весомой для своей манеры езды - наша компания предлагает установить мотоклетку серии PRO, сабкейдж и колесные пеги.', 'bmw_S1000R.jpeg', 9990, '3', 11),
(72, 'Дуги на мотоцикл HONDA CB1000R', 'Дуги безопасности для Honda CB1000R. Крепление осуществляется на 3 точки с каждой стороны.', 'honda_CB1000R.jpeg', 9990, '10', 12);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `login` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_hash` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cookie_hash` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_action` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_admin` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `name`, `password_hash`, `cookie_hash`, `last_action`, `is_admin`) VALUES
(1, 'admin', 'Администратор', '$2y$10$5WKMYg9MUNS6BThn4gHtLuoZlK3N5IcVNnYXRSVNt1FSh9eJCUovK', '', '2020-10-15 06:37:24', b'1'),
(3, 'vasya', 'Вася', '$2y$10$4ZDj9KyPZ56Un5KDw6WEHeguaDYS4g5QrKtV0Q3KyLwNf3x0jO1au', '9262738935f8c414506ef47.65101352', '2020-10-17 19:20:05', b'0'),
(4, 'test2', 'Вася', '$2y$10$AIN2fMls4LB7V69ZwTwxHuia9l5RMmkOJYe/7LqdAX4M9bo5rpPPe', NULL, '2020-11-12 09:08:40', b'0'),
(5, 'www', 'Василий1', '$2y$10$ZaUFeGObVSnmSKnRon6c3OcGL2.SkHjQ4aPJQN7y47vxhaZ2ZtlSS', '', '2020-11-13 21:38:54', b'0'),
(6, 'seil', 'Марина', '$2y$10$W8OS2BznCfLw/kG9a2mljOdU3C4FwuCesP4KTHleN7ZXymwdPP3Cq', NULL, '2021-11-15 12:59:11', b'0'),
(7, 'qwerty', 'Марина22', '$2y$10$RYYltSATLEZXUHvHtU9oDOkgmNpj8xQYchgJzTJSeLQkJqYcz0uCO', NULL, '2021-12-03 12:26:36', b'0'),
(8, 'souls', 'Bogdanova Marina', '$2y$10$H0dOTxUw/h0fnbIFRWR9jegd4fnGZJ4ea8xfBAHkr1Kp729kqTP.G', NULL, '2021-12-27 10:24:21', b'0');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `feedback_product`
--
ALTER TABLE `feedback_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_id` (`uId`),
  ADD KEY `user_id` (`userId`);

--
-- Индексы таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`orderId`,`productId`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `products` ADD FULLTEXT KEY `name` (`name`,`description`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT для таблицы `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `feedback_product`
--
ALTER TABLE `feedback_product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT для таблицы `gallery`
--
ALTER TABLE `gallery`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблицы `models`
--
ALTER TABLE `models`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `feedback_product`
--
ALTER TABLE `feedback_product`
  ADD CONSTRAINT `feedback_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
