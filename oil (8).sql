-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Окт 24 2018 г., 23:02
-- Версия сервера: 5.7.24-0ubuntu0.18.04.1
-- Версия PHP: 7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `oil`
--

-- --------------------------------------------------------

--
-- Структура таблицы `brand_certificates`
--

CREATE TABLE `brand_certificates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_brand_id` int(11) NOT NULL,
  `additional_certificate_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_certificate_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_certificate_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_certificate_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_certificate_5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `brand_certificates`
--

INSERT INTO `brand_certificates` (`id`, `name`, `car_brand_id`, `additional_certificate_1`, `additional_certificate_2`, `additional_certificate_3`, `additional_certificate_4`, `additional_certificate_5`, `created_at`, `updated_at`) VALUES
(1, '504/507', 3, NULL, NULL, NULL, NULL, NULL, '2018-10-23 19:53:12', '2018-10-23 19:53:12'),
(2, '229.31', 5, NULL, NULL, NULL, NULL, NULL, '2018-10-23 20:00:24', '2018-10-23 20:00:24'),
(3, '229.51', 5, NULL, NULL, NULL, NULL, NULL, '2018-10-23 20:00:34', '2018-10-23 20:00:34'),
(4, 'C30', 6, NULL, NULL, NULL, NULL, NULL, '2018-10-23 20:01:24', '2018-10-23 20:01:24'),
(5, '504/507', 7, NULL, NULL, NULL, NULL, NULL, '2018-10-23 20:02:09', '2018-10-23 20:02:09'),
(6, '229.52', 5, NULL, NULL, NULL, NULL, NULL, '2018-10-23 20:02:28', '2018-10-23 20:02:28'),
(7, '9.55535 - GS1,', 8, NULL, NULL, NULL, NULL, NULL, '2018-10-23 20:03:54', '2018-10-23 20:03:54'),
(8, '9.55535 - DS1', 8, NULL, NULL, NULL, NULL, NULL, '2018-10-23 20:04:08', '2018-10-23 20:04:08'),
(9, 'dexos2', 9, NULL, NULL, NULL, NULL, NULL, '2018-10-23 20:05:15', '2018-10-23 20:05:15'),
(10, 'LL-04', 4, NULL, NULL, NULL, NULL, NULL, '2018-10-23 20:07:41', '2018-10-23 20:07:41');

-- --------------------------------------------------------

--
-- Структура таблицы `car_brands`
--

CREATE TABLE `car_brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `car_brands`
--

INSERT INTO `car_brands` (`id`, `name`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'Lexus', '/images/logo/lexus.png', '2018-10-23 19:51:01', '2018-10-23 19:51:01'),
(2, 'Honda', '/images/logo/honda.png', '2018-10-23 19:51:14', '2018-10-23 19:51:14'),
(3, 'Skoda', '1', '2018-10-23 19:51:23', '2018-10-23 19:51:23'),
(4, 'BMW', '1', '2018-10-23 19:51:33', '2018-10-23 19:51:33'),
(5, 'Mersedes', '1', '2018-10-23 19:59:51', '2018-10-23 19:59:51'),
(6, 'Porshe', '1', '2018-10-23 20:01:09', '2018-10-23 20:01:09'),
(7, 'VW', '1', '2018-10-23 20:01:41', '2018-10-23 20:01:41'),
(8, 'Fiat', '1', '2018-10-23 20:03:40', '2018-10-23 20:03:40'),
(9, 'General Motors', '1', '2018-10-23 20:04:51', '2018-10-23 20:04:51');

-- --------------------------------------------------------

--
-- Структура таблицы `car_models`
--

CREATE TABLE `car_models` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `engine` double(3,2) DEFAULT NULL,
  `SAE` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ACEA` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `API` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ZF` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JASO` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ILSAC` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_certificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `car_brand_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `car_models`
--

INSERT INTO `car_models` (`id`, `name`, `engine`, `SAE`, `ACEA`, `API`, `ZF`, `JASO`, `ILSAC`, `brand_certificate`, `car_brand_id`, `created_at`, `updated_at`) VALUES
(1, 'Lexus IS 200, 2.0 (1999-)', 4.20, '5W-30', 'C3', NULL, NULL, NULL, NULL, NULL, 1, '2018-10-23 19:52:26', '2018-10-23 19:52:26'),
(2, 'Skoda Octavia III 2.0 TDI (110 kW)', 4.70, '0W-30', NULL, NULL, NULL, NULL, NULL, '1', 3, '2018-10-23 19:53:00', '2018-10-23 19:53:32'),
(3, 'M5', 4.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, '2018-10-23 19:54:45', '2018-10-23 19:54:45');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `certificates`
--

CREATE TABLE `certificates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(23, 4, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(24, 4, 'name', 'text', 'Марка авто', 1, 1, 1, 1, 1, 1, NULL, 2),
(25, 4, 'logo', 'text', 'путь к эмблеме ( начинается с /images/logo)', 1, 1, 1, 1, 1, 1, NULL, 3),
(26, 4, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(27, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(28, 5, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(29, 5, 'name', 'text', 'модель авто', 1, 1, 1, 1, 1, 1, NULL, 2),
(30, 5, 'engine', 'text', 'Объем заливки (л)', 0, 1, 1, 1, 1, 1, NULL, 5),
(31, 5, 'SAE', 'text', 'SAE', 0, 1, 1, 1, 1, 1, NULL, 6),
(32, 5, 'ACEA', 'text', 'ACEA', 0, 1, 1, 1, 1, 1, NULL, 7),
(33, 5, 'API', 'text', 'API', 0, 1, 1, 1, 1, 1, NULL, 8),
(34, 5, 'ZF', 'text', 'ZF', 0, 1, 1, 1, 1, 1, NULL, 9),
(35, 5, 'JASO', 'text', 'JASO', 0, 1, 1, 1, 1, 1, NULL, 10),
(36, 5, 'ILSAC', 'text', 'ILSAC', 0, 1, 1, 1, 1, 1, NULL, 11),
(37, 5, 'brand_certificate', 'number', 'Допуск производителя', 0, 1, 1, 1, 1, 1, NULL, 12),
(38, 5, 'car_brand_id', 'number', 'Марка', 1, 1, 1, 1, 1, 1, NULL, 13),
(39, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 14),
(40, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 15),
(41, 6, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(42, 6, 'name', 'text', 'Имя', 1, 1, 1, 1, 1, 1, NULL, 2),
(43, 6, 'car_brand_id', 'number', 'Марка фато', 1, 1, 1, 1, 1, 1, NULL, 3),
(44, 6, 'additional_certificate_1', 'text', 'доп. сертификат 1', 0, 1, 1, 1, 1, 1, NULL, 4),
(45, 6, 'additional_certificate_2', 'text', 'доп. сертификат 2', 0, 1, 1, 1, 1, 1, NULL, 5),
(46, 6, 'additional_certificate_3', 'text', 'доп. сертификат 3', 0, 1, 1, 1, 1, 1, NULL, 6),
(47, 6, 'additional_certificate_4', 'text', 'доп. сертификат 4', 0, 1, 1, 1, 1, 1, NULL, 7),
(48, 6, 'additional_certificate_5', 'text', 'доп. сертификат 5', 0, 1, 1, 1, 1, 1, NULL, 8),
(49, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 9),
(50, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 10),
(51, 4, 'car_brand_hasmany_car_model_relationship', 'relationship', 'car_models', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\CarModel\",\"table\":\"car_models\",\"type\":\"hasMany\",\"column\":\"car_brand_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"brand_certificates\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(52, 4, 'car_brand_hasmany_brand_certificate_relationship', 'relationship', 'brand_certificates', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\BrandCertificate\",\"table\":\"brand_certificates\",\"type\":\"hasMany\",\"column\":\"car_brand_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brand_certificates\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(53, 6, 'brand_certificate_belongsto_car_brand_relationship', 'relationship', 'car_brands', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\CarBrand\",\"table\":\"car_brands\",\"type\":\"belongsTo\",\"column\":\"car_brand_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brand_certificates\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(54, 5, 'car_model_belongsto_car_brand_relationship', 'relationship', 'Марка авто', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\CarBrand\",\"table\":\"car_brands\",\"type\":\"belongsTo\",\"column\":\"car_brand_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brand_certificates\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(55, 5, 'car_model_belongsto_brand_certificate_relationship', 'relationship', 'допуск производителя', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\BrandCertificate\",\"table\":\"brand_certificates\",\"type\":\"belongsTo\",\"column\":\"brand_certificate\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brand_certificates\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(56, 6, 'brand_certificate_hasmany_car_model_relationship', 'relationship', 'car_models', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\CarModel\",\"table\":\"car_models\",\"type\":\"hasMany\",\"column\":\"brand_certificate\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brand_certificates\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(57, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(58, 7, 'name', 'text', 'Имя', 1, 1, 1, 1, 1, 1, NULL, 2),
(59, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(60, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(61, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(62, 9, 'name', 'text', 'Имя', 1, 1, 1, 1, 1, 1, NULL, 2),
(63, 9, 'our_certificate', 'text', 'Лицензия на продажу', 0, 1, 1, 1, 1, 1, NULL, 3),
(64, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 4),
(65, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(66, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(67, 10, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, NULL, 2),
(68, 10, 'brand_id', 'text', 'Бренд', 1, 0, 0, 0, 0, 0, NULL, 14),
(69, 10, 'certificate_id', 'text', 'Сертификат', 0, 0, 0, 0, 0, 0, NULL, 15),
(70, 10, 'tds_id', 'text', 'TDS', 0, 0, 0, 0, 0, 0, NULL, 16),
(71, 10, 'price', 'text', 'Цена', 1, 1, 1, 1, 1, 1, NULL, 4),
(72, 10, 'size', 'text', 'Объем', 1, 1, 1, 1, 1, 1, NULL, 3),
(73, 10, 'SAE', 'text', 'SAE', 0, 1, 1, 1, 1, 1, NULL, 6),
(74, 10, 'ACEA', 'text', 'ACEA', 0, 1, 1, 1, 1, 1, NULL, 7),
(75, 10, 'API', 'text', 'API', 0, 1, 1, 1, 1, 1, NULL, 8),
(76, 10, 'JASO', 'text', 'JASO', 0, 1, 1, 1, 1, 1, NULL, 10),
(77, 10, 'ZF', 'text', 'ZF', 0, 1, 1, 1, 1, 1, NULL, 11),
(78, 10, 'ILSAC', 'text', 'ILSAC', 0, 1, 1, 1, 1, 1, NULL, 9),
(79, 10, 'BMW', 'text', 'BMW', 0, 1, 1, 1, 1, 1, NULL, 17),
(80, 10, 'Chrysler', 'text', 'Chrysler', 0, 1, 1, 1, 1, 1, NULL, 18),
(81, 10, 'Fiat', 'text', 'Fiat', 0, 1, 1, 1, 1, 1, NULL, 19),
(82, 10, 'Ford', 'text', 'Ford', 0, 1, 1, 1, 1, 1, NULL, 20),
(83, 10, 'General_Motors', 'text', 'General Motors', 0, 1, 1, 1, 1, 1, NULL, 21),
(84, 10, 'Jaguar', 'text', 'Jaguar', 0, 1, 1, 1, 1, 1, NULL, 22),
(85, 10, 'Land_Rover', 'text', 'Land Rover', 0, 1, 1, 1, 1, 1, NULL, 23),
(86, 10, 'Mercedes', 'text', 'Mercedes', 0, 1, 1, 1, 1, 1, NULL, 24),
(87, 10, 'Opel', 'text', 'Opel', 0, 1, 1, 1, 1, 1, NULL, 25),
(88, 10, 'Peugeot_Citroen', 'text', 'Peugeot Citroen', 0, 1, 1, 1, 1, 1, NULL, 26),
(89, 10, 'Porsche', 'text', 'Porsche', 0, 1, 1, 1, 1, 1, NULL, 27),
(90, 10, 'Renault', 'text', 'Renault', 0, 1, 1, 1, 1, 1, NULL, 28),
(91, 10, 'Volvo', 'text', 'Volvo', 0, 1, 1, 1, 1, 1, NULL, 29),
(92, 10, 'VW', 'text', 'VW', 0, 1, 1, 1, 1, 1, NULL, 30),
(93, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 31),
(94, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 32),
(95, 10, 'oil_belongsto_oil_brand_relationship', 'relationship', 'Бренд', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\OilBrands\",\"table\":\"oil_brands\",\"type\":\"belongsTo\",\"column\":\"brand_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brand_certificates\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(96, 10, 'oil_belongsto_certificate_relationship', 'relationship', 'Сертификат', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Certificate\",\"table\":\"certificates\",\"type\":\"belongsTo\",\"column\":\"certificate_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brand_certificates\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(97, 9, 'oil_brand_hasmany_oil_relationship', 'relationship', 'oils', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Oil\",\"table\":\"oils\",\"type\":\"hasMany\",\"column\":\"brand_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brand_certificates\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(98, 7, 'certificate_hasmany_oil_relationship', 'relationship', 'oils', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Oil\",\"table\":\"oils\",\"type\":\"hasMany\",\"column\":\"certificate_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brand_certificates\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(99, 10, 'oil_belongsto_td_relationship', 'relationship', 'TDS', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Tds\",\"table\":\"tds\",\"type\":\"belongsTo\",\"column\":\"tds_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brand_certificates\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(100, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(101, 11, 'name', 'text', 'Имя', 1, 1, 1, 1, 1, 1, NULL, 2),
(102, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(103, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(104, 11, 'td_hasmany_oil_relationship', 'relationship', 'oils', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Oil\",\"table\":\"oils\",\"type\":\"hasMany\",\"column\":\"tds_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brand_certificates\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(105, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(106, 12, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, NULL, 2),
(107, 12, 'brand_id', 'text', 'Бренд', 1, 1, 1, 1, 1, 1, NULL, 3),
(108, 12, 'certificate_id', 'text', 'Сертификат', 0, 1, 1, 1, 1, 1, NULL, 4),
(109, 12, 'tds_id', 'text', 'TDS', 0, 1, 1, 1, 1, 1, NULL, 5),
(110, 12, 'price', 'text', 'Цена', 1, 1, 1, 1, 1, 1, NULL, 6),
(111, 12, 'size', 'text', 'Объем', 1, 1, 1, 1, 1, 1, NULL, 7),
(113, 12, 'Allison', 'text', 'Allison', 0, 1, 1, 1, 1, 1, NULL, 9),
(114, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 10),
(115, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 11),
(116, 12, 'transmission_oil_belongsto_oil_brand_relationship', 'relationship', 'oil_brands', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\OilBrands\",\"table\":\"oil_brands\",\"type\":\"belongsTo\",\"column\":\"brand_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brand_certificates\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(117, 12, 'transmission_oil_belongsto_certificate_relationship', 'relationship', 'certificates', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Certificate\",\"table\":\"certificates\",\"type\":\"belongsTo\",\"column\":\"certificate_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brand_certificates\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(118, 12, 'transmission_oil_hasone_td_relationship', 'relationship', 'tds', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Tds\",\"table\":\"tds\",\"type\":\"belongsTo\",\"column\":\"tds_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brand_certificates\",\"pivot\":\"0\",\"taggable\":\"0\"}', 14),
(119, 9, 'oil_brand_hasmany_transmission_oil_relationship', 'relationship', 'transmission_oils', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\TransmissionOil\",\"table\":\"transmission_oils\",\"type\":\"hasMany\",\"column\":\"brand_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brand_certificates\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(120, 7, 'certificate_hasmany_transmission_oil_relationship', 'relationship', 'transmission_oils', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\TransmissionOil\",\"table\":\"transmission_oils\",\"type\":\"hasMany\",\"column\":\"certificate_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brand_certificates\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(121, 11, 'td_hasmany_transmission_oil_relationship', 'relationship', 'transmission_oils', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\TransmissionOil\",\"table\":\"transmission_oils\",\"type\":\"hasMany\",\"column\":\"tds_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"brand_certificates\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(122, 12, 'ZF', 'text', 'ZF', 0, 1, 1, 1, 1, 1, NULL, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-10-23 19:26:36', '2018-10-23 19:26:36'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-10-23 19:26:36', '2018-10-23 19:26:36'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-10-23 19:26:36', '2018-10-23 19:26:36'),
(4, 'car_brands', 'car-brands', 'Car Brand', 'Car Brands', NULL, 'App\\CarBrand', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-23 19:33:02', '2018-10-23 19:33:02'),
(5, 'car_models', 'car-models', 'Car Model', 'Car Models', NULL, 'App\\CarModel', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-23 19:34:11', '2018-10-23 19:34:11'),
(6, 'brand_certificates', 'brand-certificates', 'Brand Certificate', 'Brand Certificates', NULL, 'App\\BrandCertificate', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-23 19:34:35', '2018-10-23 19:34:35'),
(7, 'certificates', 'certificates', 'Certificate', 'Certificates', NULL, 'App\\Certificate', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-23 19:40:05', '2018-10-23 19:40:05'),
(9, 'oil_brands', 'oil-brands', 'Oil Brand', 'Oil Brands', NULL, 'App\\OilBrands', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-23 19:40:39', '2018-10-23 19:40:39'),
(10, 'oils', 'oils', 'Oil', 'Oils', NULL, 'App\\Oil', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-23 19:41:18', '2018-10-23 19:41:18'),
(11, 'tds', 'tds', 'Tds', 'Tds', NULL, 'App\\Tds', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-23 19:44:27', '2018-10-23 19:44:27'),
(12, 'transmission_oils', 'transmission-oils', 'Transmission Oil', 'Transmission Oils', NULL, 'App\\TransmissionOil', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null}', '2018-10-23 19:45:34', '2018-10-23 19:45:34');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-10-23 19:26:37', '2018-10-23 19:26:37');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 9, '2018-10-23 19:26:37', '2018-10-23 20:15:36', 'voyager.dashboard', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 10, '2018-10-23 19:26:37', '2018-10-23 20:14:34', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-10-23 19:26:37', '2018-10-23 20:14:06', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2018-10-23 19:26:37', '2018-10-23 20:14:06', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-10-23 19:26:37', '2018-10-23 20:14:06', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-10-23 19:26:37', '2018-10-23 20:14:06', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 11, '2018-10-23 19:26:37', '2018-10-23 20:14:34', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2018-10-23 19:26:40', '2018-10-23 20:14:06', 'voyager.hooks', NULL),
(12, 1, 'Производители авто', '', '_self', NULL, '#000000', NULL, 4, '2018-10-23 19:33:02', '2018-10-23 20:15:31', 'voyager.car-brands.index', 'null'),
(13, 1, 'Модели авто', '', '_self', NULL, '#000000', NULL, 5, '2018-10-23 19:34:11', '2018-10-23 20:15:48', 'voyager.car-models.index', 'null'),
(14, 1, 'Допуски производителей', '', '_self', NULL, '#000000', NULL, 6, '2018-10-23 19:34:36', '2018-10-23 20:16:11', 'voyager.brand-certificates.index', 'null'),
(15, 1, 'Сертификаты масел', '', '_self', NULL, '#000000', NULL, 7, '2018-10-23 19:40:05', '2018-10-23 20:16:25', 'voyager.certificates.index', 'null'),
(16, 1, 'Производители масла', '', '_self', NULL, '#000000', NULL, 1, '2018-10-23 19:40:39', '2018-10-23 20:14:53', 'voyager.oil-brands.index', 'null'),
(17, 1, 'Моторное масло', '', '_self', NULL, '#000000', NULL, 2, '2018-10-23 19:41:18', '2018-10-23 20:15:04', 'voyager.oils.index', 'null'),
(18, 1, 'TDS', '', '_self', NULL, '#000000', NULL, 8, '2018-10-23 19:44:28', '2018-10-23 20:16:33', 'voyager.tds.index', 'null'),
(19, 1, 'Трансмиссионное масло', '', '_self', NULL, '#000000', NULL, 3, '2018-10-23 19:45:34', '2018-10-23 20:15:17', 'voyager.transmission-oils.index', 'null');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2018_10_06_205300_create_tds_table', 1),
(28, '2018_10_07_103543_create_oil_brands_table', 1),
(29, '2018_10_07_103755_create_car_brands_table', 1),
(30, '2018_10_07_103920_create_certificates_table', 1),
(31, '2018_10_07_103944_create_car_models_table', 1),
(32, '2018_10_07_103956_create_oils_table', 1),
(33, '2018_10_22_205743_create_transmission_oils_table', 1),
(34, '2018_10_23_220934_create_brand_certificates_table', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `oils`
--

CREATE TABLE `oils` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) NOT NULL,
  `certificate_id` int(11) DEFAULT NULL,
  `tds_id` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `size` double(3,2) NOT NULL,
  `SAE` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ACEA` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `API` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JASO` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ZF` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ILSAC` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BMW` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Chrysler` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fiat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ford` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `General_Motors` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Jaguar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Land_Rover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Mercedes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Opel` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Peugeot_Citroen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Porsche` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Renault` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Volvo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VW` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `oils`
--

INSERT INTO `oils` (`id`, `name`, `brand_id`, `certificate_id`, `tds_id`, `price`, `size`, `SAE`, `ACEA`, `API`, `JASO`, `ZF`, `ILSAC`, `BMW`, `Chrysler`, `Fiat`, `Ford`, `General_Motors`, `Jaguar`, `Land_Rover`, `Mercedes`, `Opel`, `Peugeot_Citroen`, `Porsche`, `Renault`, `Volvo`, `VW`, `created_at`, `updated_at`) VALUES
(1, 'Castrol EDGE 0W-30 A3/B4', 3, NULL, NULL, 1280, 4.00, '0W-30', 'A3/B3, A3/B4', 'SN, CF', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-23 19:56:00', '2018-10-23 20:05:40'),
(2, 'Shell Helix HX8 ECT C3 5W-30', 5, NULL, NULL, 670, 5.00, '5W-30', 'C3', 'SN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '229.31, 229.51', NULL, NULL, NULL, NULL, NULL, '504/507', '2018-10-23 19:59:00', '2018-10-23 20:06:15'),
(3, 'Aral SuperTronic Longlife III 5W-30', 1, NULL, NULL, 1200, 4.00, '5W-30', 'C3', NULL, NULL, NULL, NULL, 'LL-04', NULL, NULL, NULL, NULL, NULL, NULL, '229.51', NULL, NULL, 'C30', NULL, NULL, '504,507', '2018-10-23 20:07:00', '2018-10-23 20:08:29'),
(4, 'Castrol EDGE 5W-30 LL', 3, NULL, NULL, 780, 4.00, '5W-30', 'C3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '229.31, 229.51', NULL, NULL, 'C30', NULL, NULL, '504, 507', '2018-10-23 20:09:36', '2018-10-23 20:09:36'),
(5, 'Shell Helix Ultra C2/C3 0W-30', 5, NULL, NULL, 850, 4.00, '0W-30', 'C2,C3', 'SN', NULL, NULL, NULL, NULL, NULL, '9.55535 - GS1, 9.55535 - DS1', NULL, NULL, NULL, NULL, '229.31, 229.51, 229.52', NULL, NULL, 'C30', NULL, NULL, '504,507', '2018-10-23 20:11:10', '2018-10-23 20:11:10'),
(6, 'Shell Helix Ultra ECT C3 5W-30', 5, NULL, NULL, 750, 4.00, '5W-30', 'C3', 'SN', NULL, NULL, NULL, 'LL-04', 'MS-11106', NULL, NULL, 'dexos2', NULL, NULL, '229.31, 229.51', NULL, NULL, 'C30', NULL, NULL, NULL, '2018-10-23 20:12:49', '2018-10-23 20:12:49');

-- --------------------------------------------------------

--
-- Структура таблицы `oil_brands`
--

CREATE TABLE `oil_brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `our_certificate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `oil_brands`
--

INSERT INTO `oil_brands` (`id`, `name`, `our_certificate`, `created_at`, `updated_at`) VALUES
(1, 'Aral', NULL, '2018-10-23 19:55:07', '2018-10-23 19:55:07'),
(2, 'XADO', NULL, '2018-10-23 19:55:22', '2018-10-23 19:55:22'),
(3, 'Castrol', NULL, '2018-10-23 19:55:31', '2018-10-23 19:55:31'),
(4, 'Mobil 1', NULL, '2018-10-23 19:55:39', '2018-10-23 19:55:39'),
(5, 'Shell', NULL, '2018-10-23 19:55:49', '2018-10-23 19:55:49');

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-10-23 19:26:38', '2018-10-23 19:26:38'),
(2, 'browse_bread', NULL, '2018-10-23 19:26:38', '2018-10-23 19:26:38'),
(3, 'browse_database', NULL, '2018-10-23 19:26:38', '2018-10-23 19:26:38'),
(4, 'browse_media', NULL, '2018-10-23 19:26:38', '2018-10-23 19:26:38'),
(5, 'browse_compass', NULL, '2018-10-23 19:26:38', '2018-10-23 19:26:38'),
(6, 'browse_menus', 'menus', '2018-10-23 19:26:38', '2018-10-23 19:26:38'),
(7, 'read_menus', 'menus', '2018-10-23 19:26:38', '2018-10-23 19:26:38'),
(8, 'edit_menus', 'menus', '2018-10-23 19:26:38', '2018-10-23 19:26:38'),
(9, 'add_menus', 'menus', '2018-10-23 19:26:38', '2018-10-23 19:26:38'),
(10, 'delete_menus', 'menus', '2018-10-23 19:26:38', '2018-10-23 19:26:38'),
(11, 'browse_roles', 'roles', '2018-10-23 19:26:38', '2018-10-23 19:26:38'),
(12, 'read_roles', 'roles', '2018-10-23 19:26:38', '2018-10-23 19:26:38'),
(13, 'edit_roles', 'roles', '2018-10-23 19:26:38', '2018-10-23 19:26:38'),
(14, 'add_roles', 'roles', '2018-10-23 19:26:38', '2018-10-23 19:26:38'),
(15, 'delete_roles', 'roles', '2018-10-23 19:26:38', '2018-10-23 19:26:38'),
(16, 'browse_users', 'users', '2018-10-23 19:26:38', '2018-10-23 19:26:38'),
(17, 'read_users', 'users', '2018-10-23 19:26:38', '2018-10-23 19:26:38'),
(18, 'edit_users', 'users', '2018-10-23 19:26:38', '2018-10-23 19:26:38'),
(19, 'add_users', 'users', '2018-10-23 19:26:38', '2018-10-23 19:26:38'),
(20, 'delete_users', 'users', '2018-10-23 19:26:38', '2018-10-23 19:26:38'),
(21, 'browse_settings', 'settings', '2018-10-23 19:26:38', '2018-10-23 19:26:38'),
(22, 'read_settings', 'settings', '2018-10-23 19:26:38', '2018-10-23 19:26:38'),
(23, 'edit_settings', 'settings', '2018-10-23 19:26:38', '2018-10-23 19:26:38'),
(24, 'add_settings', 'settings', '2018-10-23 19:26:38', '2018-10-23 19:26:38'),
(25, 'delete_settings', 'settings', '2018-10-23 19:26:39', '2018-10-23 19:26:39'),
(26, 'browse_hooks', NULL, '2018-10-23 19:26:40', '2018-10-23 19:26:40'),
(27, 'browse_car_brands', 'car_brands', '2018-10-23 19:33:02', '2018-10-23 19:33:02'),
(28, 'read_car_brands', 'car_brands', '2018-10-23 19:33:02', '2018-10-23 19:33:02'),
(29, 'edit_car_brands', 'car_brands', '2018-10-23 19:33:02', '2018-10-23 19:33:02'),
(30, 'add_car_brands', 'car_brands', '2018-10-23 19:33:02', '2018-10-23 19:33:02'),
(31, 'delete_car_brands', 'car_brands', '2018-10-23 19:33:02', '2018-10-23 19:33:02'),
(32, 'browse_car_models', 'car_models', '2018-10-23 19:34:11', '2018-10-23 19:34:11'),
(33, 'read_car_models', 'car_models', '2018-10-23 19:34:11', '2018-10-23 19:34:11'),
(34, 'edit_car_models', 'car_models', '2018-10-23 19:34:11', '2018-10-23 19:34:11'),
(35, 'add_car_models', 'car_models', '2018-10-23 19:34:11', '2018-10-23 19:34:11'),
(36, 'delete_car_models', 'car_models', '2018-10-23 19:34:11', '2018-10-23 19:34:11'),
(37, 'browse_brand_certificates', 'brand_certificates', '2018-10-23 19:34:36', '2018-10-23 19:34:36'),
(38, 'read_brand_certificates', 'brand_certificates', '2018-10-23 19:34:36', '2018-10-23 19:34:36'),
(39, 'edit_brand_certificates', 'brand_certificates', '2018-10-23 19:34:36', '2018-10-23 19:34:36'),
(40, 'add_brand_certificates', 'brand_certificates', '2018-10-23 19:34:36', '2018-10-23 19:34:36'),
(41, 'delete_brand_certificates', 'brand_certificates', '2018-10-23 19:34:36', '2018-10-23 19:34:36'),
(42, 'browse_certificates', 'certificates', '2018-10-23 19:40:05', '2018-10-23 19:40:05'),
(43, 'read_certificates', 'certificates', '2018-10-23 19:40:05', '2018-10-23 19:40:05'),
(44, 'edit_certificates', 'certificates', '2018-10-23 19:40:05', '2018-10-23 19:40:05'),
(45, 'add_certificates', 'certificates', '2018-10-23 19:40:05', '2018-10-23 19:40:05'),
(46, 'delete_certificates', 'certificates', '2018-10-23 19:40:05', '2018-10-23 19:40:05'),
(47, 'browse_oil_brands', 'oil_brands', '2018-10-23 19:40:39', '2018-10-23 19:40:39'),
(48, 'read_oil_brands', 'oil_brands', '2018-10-23 19:40:39', '2018-10-23 19:40:39'),
(49, 'edit_oil_brands', 'oil_brands', '2018-10-23 19:40:39', '2018-10-23 19:40:39'),
(50, 'add_oil_brands', 'oil_brands', '2018-10-23 19:40:39', '2018-10-23 19:40:39'),
(51, 'delete_oil_brands', 'oil_brands', '2018-10-23 19:40:39', '2018-10-23 19:40:39'),
(52, 'browse_oils', 'oils', '2018-10-23 19:41:18', '2018-10-23 19:41:18'),
(53, 'read_oils', 'oils', '2018-10-23 19:41:18', '2018-10-23 19:41:18'),
(54, 'edit_oils', 'oils', '2018-10-23 19:41:18', '2018-10-23 19:41:18'),
(55, 'add_oils', 'oils', '2018-10-23 19:41:18', '2018-10-23 19:41:18'),
(56, 'delete_oils', 'oils', '2018-10-23 19:41:18', '2018-10-23 19:41:18'),
(57, 'browse_tds', 'tds', '2018-10-23 19:44:28', '2018-10-23 19:44:28'),
(58, 'read_tds', 'tds', '2018-10-23 19:44:28', '2018-10-23 19:44:28'),
(59, 'edit_tds', 'tds', '2018-10-23 19:44:28', '2018-10-23 19:44:28'),
(60, 'add_tds', 'tds', '2018-10-23 19:44:28', '2018-10-23 19:44:28'),
(61, 'delete_tds', 'tds', '2018-10-23 19:44:28', '2018-10-23 19:44:28'),
(62, 'browse_transmission_oils', 'transmission_oils', '2018-10-23 19:45:34', '2018-10-23 19:45:34'),
(63, 'read_transmission_oils', 'transmission_oils', '2018-10-23 19:45:34', '2018-10-23 19:45:34'),
(64, 'edit_transmission_oils', 'transmission_oils', '2018-10-23 19:45:34', '2018-10-23 19:45:34'),
(65, 'add_transmission_oils', 'transmission_oils', '2018-10-23 19:45:34', '2018-10-23 19:45:34'),
(66, 'delete_transmission_oils', 'transmission_oils', '2018-10-23 19:45:34', '2018-10-23 19:45:34');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-10-23 19:26:37', '2018-10-23 19:26:37'),
(2, 'user', 'Normal User', '2018-10-23 19:26:38', '2018-10-23 19:26:38');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `tds`
--

CREATE TABLE `tds` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `transmission_oils`
--

CREATE TABLE `transmission_oils` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_id` int(11) NOT NULL,
  `certificate_id` int(11) DEFAULT NULL,
  `tds_id` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `size` double(3,2) NOT NULL,
  `ZF` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Allison` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'oilshop', 'oilshop@gmail.com', 'users/default.png', '$2y$10$gbwxT6Tk8f9x22oZOMDKb.hKgjQ/NgpNdiTmhOhNhvb1WuKiVg0m6', NULL, NULL, '2018-10-23 19:32:00', '2018-10-23 19:32:01');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `brand_certificates`
--
ALTER TABLE `brand_certificates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `car_brands`
--
ALTER TABLE `car_brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `car_brands_name_unique` (`name`);

--
-- Индексы таблицы `car_models`
--
ALTER TABLE `car_models`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `car_models_name_unique` (`name`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Индексы таблицы `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `certificates_name_unique` (`name`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `oils`
--
ALTER TABLE `oils`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `oil_brands`
--
ALTER TABLE `oil_brands`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `tds`
--
ALTER TABLE `tds`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `transmission_oils`
--
ALTER TABLE `transmission_oils`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `brand_certificates`
--
ALTER TABLE `brand_certificates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `car_brands`
--
ALTER TABLE `car_brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `car_models`
--
ALTER TABLE `car_models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT для таблицы `oils`
--
ALTER TABLE `oils`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `oil_brands`
--
ALTER TABLE `oil_brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `tds`
--
ALTER TABLE `tds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `transmission_oils`
--
ALTER TABLE `transmission_oils`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
