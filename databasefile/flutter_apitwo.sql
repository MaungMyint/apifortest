-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 02, 2020 at 04:44 PM
-- Server version: 8.0.21-0ubuntu0.20.04.4
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flutter_apitwo`
--

-- --------------------------------------------------------

--
-- Table structure for table `donated_data`
--

CREATE TABLE `donated_data` (
  `id` int UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `accountimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accountname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memberphone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `membername` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foundationlogo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foundationname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descrition` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donated_data`
--

INSERT INTO `donated_data` (`id`, `user_id`, `accountimage`, `accountname`, `memberphone`, `membername`, `foundationlogo`, `foundationname`, `descrition`, `created_at`, `updated_at`) VALUES
(1, NULL, 'https://via.placeholder.com/600/92c952', 'dontated ', 'memberphone one', 'membername four', 'https://via.placeholder.com/600/92c952', 'foundationname ok', 'descrition descrition descrition descrition ok', '2020-09-27 01:12:16', '2020-09-27 01:12:16'),
(2, NULL, 'https://via.placeholder.com/600/92c952', 'dontated  two', 'memberphone two', 'membername two', '/image/Screenshot from 2020-09-25 11-54-11.png', 'foundationname ok', 'descrition descrition descrition descrition ok', '2020-09-27 01:12:34', '2020-09-27 01:12:34'),
(3, NULL, 'https://via.placeholder.com/600/92c952', 'dontated  three', 'memberphone thrr', 'membername two', '/image/Screenshot from 2020-09-25 11-54-11.png', 'foundationname ok', 'descrition descrition descrition descrition ok', '2020-09-27 01:12:47', '2020-09-27 01:12:47'),
(4, NULL, 'https://via.placeholder.com/600/92c952', 'dontated  three', 'memberphone thrr', 'membername two', '/image/Screenshot from 2020-09-25 11-54-11.png', 'foundationname ok', 'descrition descrition descrition descrition ok', '2020-09-27 01:12:48', '2020-09-27 01:12:48'),
(5, NULL, 'https://via.placeholder.com/600/92c952', 'dontated  three', 'memberphone thrr', 'membername two', '/image/Screenshot from 2020-09-25 11-54-11.png', 'foundationname ok', 'descrition descrition descrition descrition ok', '2020-09-27 01:12:50', '2020-09-27 01:12:50'),
(6, NULL, 'https://via.placeholder.com/600/92c952', 'dontated  three', 'memberphone thrr', 'membername two', '/image/Screenshot from 2020-09-25 11-54-11.png', 'foundationname ok', 'descrition descrition descrition descrition ok', '2020-09-27 01:12:50', '2020-09-27 01:12:50'),
(7, NULL, 'https://via.placeholder.com/600/92c952', 'dontated  three', 'memberphone thrr', 'membername two', '/image/Screenshot from 2020-09-25 11-54-11.png', 'foundationname ok', 'descrition descrition descrition descrition ok', '2020-09-27 01:12:52', '2020-09-27 01:12:52'),
(8, NULL, 'https://via.placeholder.com/600/92c952', 'dontated  three', 'memberphone thrr', 'membername two', '/image/Screenshot from 2020-09-25 11-54-11.png', 'foundationname ok', 'descrition descrition descrition descrition ok', '2020-09-27 01:12:53', '2020-09-27 01:12:53');

-- --------------------------------------------------------

--
-- Table structure for table `guide_data`
--

CREATE TABLE `guide_data` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `bloggerimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bloggername` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bloggeraddress` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bloggeraddresscity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bloggerphone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descrition` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bloggeremail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `myanmarlanguage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `englishlanguage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `chinselanguage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `janpanselanguage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `point` int NOT NULL DEFAULT '10',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guide_data`
--

INSERT INTO `guide_data` (`id`, `user_id`, `bloggerimage`, `bloggername`, `bloggeraddress`, `bloggeraddresscity`, `bloggerphone`, `descrition`, `bloggeremail`, `myanmarlanguage`, `englishlanguage`, `chinselanguage`, `janpanselanguage`, `point`, `created_at`, `updated_at`) VALUES
(1, NULL, 'https://via.placeholder.com/600/d32776', 'bloggername', 'bloggeraddress', 'bloggeraddresscity', '0974575757', 'descrition descrition descrition', 'bloggeremail@gmail.com', 'yes', 'yes', 'no', 'no', 20, '2020-09-27 01:30:32', '2020-09-27 01:30:32'),
(2, NULL, 'https://via.placeholder.com/600/d32776', 'bloggername', 'bloggeraddress', 'bloggeraddresscity', '0974575757', 'descrition descrition descrition', 'bloggeremail@gmail.com', 'yes', 'yes', 'no', 'no', 20, '2020-09-27 01:30:34', '2020-09-27 01:30:34'),
(3, NULL, 'https://via.placeholder.com/600/d32776', 'bloggername', 'bloggeraddress', 'bloggeraddresscity', '0974575757', 'descrition descrition descrition', 'bloggeremail@gmail.com', 'yes', 'yes', 'no', 'no', 20, '2020-09-27 01:30:35', '2020-09-27 01:30:35'),
(4, NULL, 'https://via.placeholder.com/600/d32776', 'bloggername', 'bloggeraddress', 'bloggeraddresscity', '0974575757', 'descrition descrition descrition', 'bloggeremail@gmail.com', 'yes', 'yes', 'no', 'no', 20, '2020-09-27 01:30:36', '2020-09-27 01:30:36'),
(5, NULL, 'https://via.placeholder.com/600/d32776', 'bloggername', 'bloggeraddress', 'bloggeraddresscity', '0974575757', 'descrition descrition descrition', 'bloggeremail@gmail.com', 'yes', 'yes', 'no', 'no', 20, '2020-09-27 01:30:37', '2020-09-27 01:30:37'),
(6, NULL, 'https://via.placeholder.com/600/d32776', 'bloggername', 'bloggeraddress', 'bloggeraddresscity', '0974575757', 'descrition descrition descrition', 'bloggeremail@gmail.com', 'yes', 'yes', 'no', 'no', 20, '2020-09-27 01:30:38', '2020-09-27 01:30:38'),
(7, NULL, 'https://via.placeholder.com/600/d32776', 'bloggername', 'bloggeraddress', 'bloggeraddresscity', '0974575757', 'descrition descrition descrition', 'bloggeremail@gmail.com', 'yes', 'yes', 'no', 'no', 20, '2020-09-27 01:30:39', '2020-09-27 01:30:39'),
(8, NULL, 'https://via.placeholder.com/600/d32776', 'bloggername', 'bloggeraddress', 'bloggeraddresscity', '0974575757', 'descrition descrition descrition', 'bloggeremail@gmail.com', 'yes', 'yes', 'no', 'no', 20, '2020-09-27 01:30:40', '2020-09-27 01:30:40');

-- --------------------------------------------------------

--
-- Table structure for table `history_data`
--

CREATE TABLE `history_data` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `historyimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descrition` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history_data`
--

INSERT INTO `history_data` (`id`, `user_id`, `historyimage`, `descrition`, `created_at`, `updated_at`) VALUES
(1, NULL, 'https://via.placeholder.com/600/f66b97', 'descrition descrition descrition descrition ok descrition descrition descrition descrition okdescrition descrition descrition descrition okdescrition descrition descrition descrition ok', '2020-09-27 01:15:02', '2020-09-27 01:15:02');

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `hotelimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotelname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotelmyanmarname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opentime` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ratings` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ratingsint` int DEFAULT NULL,
  `descrition` longtext COLLATE utf8mb4_unicode_ci,
  `parking` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `swimming` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `wifi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `food` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `galleryoneimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallerytwoimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallerythreeimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `user_id`, `hotelimage`, `hotelname`, `hotelmyanmarname`, `price`, `opentime`, `phone`, `ratings`, `ratingsint`, `descrition`, `parking`, `status`, `swimming`, `wifi`, `food`, `galleryoneimage`, `gallerytwoimage`, `gallerythreeimage`, `created_at`, `updated_at`) VALUES
(1, NULL, 'https://via.placeholder.com/600/810b14', 'hotelname one', 'hotelmyanmarname one', 'price ok one', 'opentime ok three', 'phone ok two', 'ratings ok two', 2, 'descrition ok two', 'parking ok two', 'status ok two', 'swimming ok two', 'wifi ok two', 'food ok two', '/image/Screenshot from 2020-09-25 11-56-27.png', '/image/Screenshot from 2020-09-25 11-55-24.png', '/image/Screenshot from 2020-09-25 11-56-27.png', '2020-09-27 01:08:56', '2020-09-27 01:08:56'),
(2, NULL, 'https://via.placeholder.com/600/810b14', 'hotelname two', 'hotelmyanmarname two', 'price ok two', 'opentime ok three', 'phone ok two', 'ratings ok two', 2, 'descrition ok two', 'parking ok two', 'status ok two', 'swimming ok two', 'wifi ok two', 'food ok two', '/image/Screenshot from 2020-09-25 11-56-27.png', '/image/Screenshot from 2020-09-25 11-55-24.png', '/image/Screenshot from 2020-09-25 11-56-27.png', '2020-09-27 01:09:15', '2020-09-27 01:09:15'),
(3, NULL, 'https://via.placeholder.com/600/810b14', 'hotelname three', 'hotelmyanmarname three', 'price ok three', 'opentime ok three', 'phone ok two', 'ratings ok two', 2, 'descrition ok two', 'parking ok two', 'status ok two', 'swimming ok two', 'wifi ok two', 'food ok two', '/image/Screenshot from 2020-09-25 11-56-27.png', '/image/Screenshot from 2020-09-25 11-55-24.png', '/image/Screenshot from 2020-09-25 11-56-27.png', '2020-09-27 01:09:33', '2020-09-27 01:09:33'),
(4, NULL, 'https://via.placeholder.com/600/810b14', 'hotelname four', 'hotelmyanmarname four', 'price ok four', 'opentime ok five', 'phone ok two', 'ratings ok two', 2, 'descrition ok two', 'parking ok two', 'status ok two', 'swimming ok two', 'wifi ok two', 'food ok two', '/image/Screenshot from 2020-09-25 11-56-27.png', '/image/Screenshot from 2020-09-25 11-55-24.png', '/image/Screenshot from 2020-09-25 11-56-27.png', '2020-09-27 01:09:58', '2020-09-27 01:09:58'),
(5, NULL, 'https://via.placeholder.com/600/810b14', 'hotelname six', 'hotelmyanmarname six', 'price ok six', 'opentime ok five', 'phone ok two', 'ratings ok two', 2, 'descrition ok two', 'parking ok two', 'status ok two', 'swimming ok two', 'wifi ok two', 'food ok two', '/image/Screenshot from 2020-09-25 11-56-27.png', '/image/Screenshot from 2020-09-25 11-55-24.png', '/image/Screenshot from 2020-09-25 11-56-27.png', '2020-09-27 01:11:05', '2020-09-27 01:11:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_05_18_223836_create_products_table', 1),
(9, '2020_09_23_061958_create_donated_data_table', 1),
(10, '2020_09_26_094707_create_hotels_table', 1),
(11, '2020_09_27_051934_create_taxi_data_table', 1),
(12, '2020_09_27_054739_create_guide_data_table', 1),
(13, '2020_09_27_061655_create_history_data_table', 1),
(15, '2020_09_27_065114_create_restaurant_data_table', 2),
(16, '2020_09_28_100726_create_places_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int UNSIGNED NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int UNSIGNED NOT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `placeimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeimageone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeimagetwo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeimagethree` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placename` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeaddress` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placecity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nearby` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `descrition` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `user_id`, `placeimage`, `placeimageone`, `placeimagetwo`, `placeimagethree`, `placename`, `placeaddress`, `placecity`, `nearby`, `latitude`, `longitude`, `descrition`, `created_at`, `updated_at`) VALUES
(1, NULL, 'https://via.placeholder.com/600/771796', '/tmp/phpmqiheY', '/tmp/phpqgj24X', '/tmp/phpU6a9DX', 'Naung yar kan', 'Naug Yar', 'Loikaw', 'Famous Hotel', 19.6641589, 97.2147486, 'Loikaw is a city and the capital of the Kayah State, the smallest state in Myanmar but, at the same time, the one with the greatest ethnic diversity.', '2020-09-28 04:20:23', '2020-09-28 04:20:23'),
(2, NULL, 'https://via.placeholder.com/600/771796', '/tmp/php0QfrsX', '/tmp/php6xc74X', '/tmp/phpM0mL6Y', 'Naung yar kan', 'Naug Yar', 'Loikaw', 'Famous Hotel', 19.6641589, 97.2147486, 'Loikaw is a city and the capital of the Kayah State, the smallest state in Myanmar but, at the same time, the one with the greatest ethnic diversity.', '2020-09-28 04:20:43', '2020-09-28 04:20:43'),
(3, NULL, 'https://via.placeholder.com/600/771796', '/tmp/phpStBcpY', '/tmp/phpVlwDGZ', '/tmp/php72G4T0', 'Naung yar kan', 'Naug Yar', 'Loikaw', 'Famous Hotel', 19.6641589, 97.2147486, 'Loikaw is a city and the capital of the Kayah State, the smallest state in Myanmar but, at the same time, the one with the greatest ethnic diversity.', '2020-09-28 04:20:44', '2020-09-28 04:20:44'),
(4, NULL, 'https://via.placeholder.com/600/771796', '/tmp/phpVkBto1', '/tmp/phpa6wolZ', '/tmp/phpYPvDkZ', 'Naung yar kan', 'Naug Yar', 'Loikaw', 'Famous Hotel', 19.6641589, 97.2147486, 'Loikaw is a city and the capital of the Kayah State, the smallest state in Myanmar but, at the same time, the one with the greatest ethnic diversity.', '2020-09-28 04:20:44', '2020-09-28 04:20:44'),
(5, NULL, 'https://via.placeholder.com/600/771796', '/tmp/phpbpINhZ', '/tmp/phpFuQ4b1', '/tmp/phpcTNFc0', 'Naung yar kan', 'Naug Yar', 'Loikaw', 'Famous Hotel', 19.6641589, 97.2147486, 'Loikaw is a city and the capital of the Kayah State, the smallest state in Myanmar but, at the same time, the one with the greatest ethnic diversity.', '2020-09-28 04:20:45', '2020-09-28 04:20:45'),
(6, NULL, 'https://via.placeholder.com/600/771796', '/tmp/phptKPnzY', '/tmp/phpndkjF0', '/tmp/phppXqmBZ', 'Naung yar kan', 'Naug Yar', 'Loikaw', 'Famous Hotel', 19.6641589, 97.2147486, 'Loikaw is a city and the capital of the Kayah State, the smallest state in Myanmar but, at the same time, the one with the greatest ethnic diversity.', '2020-09-28 04:20:46', '2020-09-28 04:20:46'),
(7, NULL, 'https://via.placeholder.com/600/771796', '/tmp/phpWdAXPZ', '/tmp/phpLDV1j1', '/tmp/php6wUvAZ', 'Naung yar kan', 'Naug Yar', 'Loikaw', 'Famous Hotel', 19.6641589, 97.2147486, 'Loikaw is a city and the capital of the Kayah State, the smallest state in Myanmar but, at the same time, the one with the greatest ethnic diversity.', '2020-09-28 04:20:47', '2020-09-28 04:20:47'),
(8, NULL, 'https://via.placeholder.com/600/771796', '/tmp/php8I1L30', '/tmp/php9KiG0Y', '/tmp/php1EiIOZ', 'Naung yar kan', 'Naug Yar', 'Loikaw', 'Famous Hotel', 19.6641589, 97.2147486, 'Loikaw is a city and the capital of the Kayah State, the smallest state in Myanmar but, at the same time, the one with the greatest ethnic diversity.', '2020-09-28 04:20:48', '2020-09-28 04:20:48'),
(9, NULL, 'https://via.placeholder.com/600/771796', '/tmp/phpxqZrJ0', '/tmp/phpSOQr1X', '/tmp/phpXgy4LY', 'Naung yar kan', 'Naug Yar', 'Loikaw', 'Famous Hotel', 19.6641589, 97.2147486, 'Loikaw is a city and the capital of the Kayah State, the smallest state in Myanmar but, at the same time, the one with the greatest ethnic diversity.', '2020-09-28 04:20:49', '2020-09-28 04:20:49'),
(10, NULL, 'https://via.placeholder.com/600/771796', '/tmp/phpRCed7Y', '/tmp/phpeyaUWX', '/tmp/phpEwIiBX', 'Naung yar kan', 'Naug Yar', 'Loikaw', 'Famous Hotel', 19.6641589, 97.2147486, 'Loikaw is a city and the capital of the Kayah State, the smallest state in Myanmar but, at the same time, the one with the greatest ethnic diversity.', '2020-09-28 04:31:38', '2020-09-28 04:31:38'),
(11, NULL, 'https://via.placeholder.com/600/771796', '/tmp/php0e8FO0', '/tmp/php3XGpB1', '/tmp/phpZPFwpX', 'Naung yar kan', 'Naug Yar', 'Loikaw', 'Famous Hotel', 19.6641589, 97.2147486, 'Loikaw is a city and the capital of the Kayah State, the smallest state in Myanmar but, at the same time, the one with the greatest ethnic diversity.', '2020-09-28 04:31:57', '2020-09-28 04:31:57'),
(12, NULL, 'https://via.placeholder.com/600/771796', '/tmp/phpLTt23W', '/tmp/phpx9m2B1', '/tmp/php2310p0', 'Naung yar kan', 'Naug Yar', 'Loikaw', 'Famous Hotel', 19.6641589, 97.2147486, 'Loikaw is a city and the capital of the Kayah State, the smallest state in Myanmar but, at the same time, the one with the greatest ethnic diversity.', '2020-09-28 04:31:57', '2020-09-28 04:31:57'),
(13, NULL, 'https://via.placeholder.com/600/771796', '/tmp/phpyUXqRY', '/tmp/phpdsvcj0', '/tmp/phpm94C3X', 'Naung yar kan', 'Naug Yar', 'Loikaw', 'Famous Hotel', 19.6641589, 97.2147486, 'Loikaw is a city and the capital of the Kayah State, the smallest state in Myanmar but, at the same time, the one with the greatest ethnic diversity.', '2020-09-28 04:31:58', '2020-09-28 04:31:58'),
(14, NULL, 'https://via.placeholder.com/600/771796', '/tmp/phpooZF9W', '/tmp/phpxDjxuX', '/tmp/phpqkOqSX', 'Naung yar kan', 'Naug Yar', 'Loikaw', 'Famous Hotel', 19.6641589, 97.2147486, 'Loikaw is a city and the capital of the Kayah State, the smallest state in Myanmar but, at the same time, the one with the greatest ethnic diversity.', '2020-09-28 04:31:58', '2020-09-28 04:31:58'),
(15, NULL, 'https://via.placeholder.com/600/771796', '/tmp/phpwM97cZ', '/tmp/phpQp9wbY', '/tmp/php6pPQp1', 'Naung yar kan', 'Naug Yar', 'Loikaw', 'Famous Hotel', 19.6641589, 97.2147486, 'Loikaw is a city and the capital of the Kayah State, the smallest state in Myanmar but, at the same time, the one with the greatest ethnic diversity.', '2020-09-28 04:31:59', '2020-09-28 04:31:59'),
(16, NULL, 'https://via.placeholder.com/600/771796', '/tmp/php5xvs9W', '/tmp/phpJaXzoY', '/tmp/phpCWWv2Y', 'Naung yar kan', 'Naug Yar', 'Loikaw', 'Famous Hotel', 19.6641589, 97.2147486, 'Loikaw is a city and the capital of the Kayah State, the smallest state in Myanmar but, at the same time, the one with the greatest ethnic diversity.', '2020-09-28 04:31:59', '2020-09-28 04:31:59'),
(17, NULL, 'https://via.placeholder.com/600/771796', '/tmp/php3u2Lu1', '/tmp/phpPmOZ5X', '/tmp/php3X3BLX', 'Naung yar kan', 'Naug Yar', 'Loikaw', 'Famous Hotel', 19.6641589, 97.2147486, 'Loikaw is a city and the capital of the Kayah State, the smallest state in Myanmar but, at the same time, the one with the greatest ethnic diversity.', '2020-09-28 04:31:59', '2020-09-28 04:31:59'),
(18, NULL, 'https://via.placeholder.com/600/771796', '/tmp/php1Xt3zZ', '/tmp/phpZG4MUX', '/tmp/phpxpqmtZ', 'Naung yar kan', 'Naug Yar', 'Loikaw', 'Famous Hotel', 19.6641589, 97.2147486, 'Loikaw is a city and the capital of the Kayah State, the smallest state in Myanmar but, at the same time, the one with the greatest ethnic diversity.', '2020-09-28 04:32:00', '2020-09-28 04:32:00'),
(19, NULL, 'https://via.placeholder.com/600/771796', '/tmp/phpO8rdeY', '/tmp/phpLOfz7Z', '/tmp/php9yyEXX', 'Naung yar kan', 'Naug Yar', 'Loikaw', 'Famous Hotel', 19.6641589, 97.2147486, 'Loikaw is a city and the capital of the Kayah State, the smallest state in Myanmar but, at the same time, the one with the greatest ethnic diversity.', '2020-09-28 04:32:01', '2020-09-28 04:32:01'),
(20, NULL, 'https://via.placeholder.com/600/771796', '/tmp/phplYF6DY', '/tmp/phppelxR0', '/tmp/phpFULRRY', 'Naung yar kan', 'Naug Yar', 'Loikaw', 'Famous Hotel', 19.6641589, 97.2147486, 'Loikaw is a city and the capital of the Kayah State, the smallest state in Myanmar but, at the same time, the one with the greatest ethnic diversity.', '2020-09-28 04:32:13', '2020-09-28 04:32:13');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant_data`
--

CREATE TABLE `restaurant_data` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `restaurantimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `myanmarname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `englishname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restauranttype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `restaurantphone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opentime` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closetime` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closeweekday` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addresscity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descrition` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `myanmarfoods` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `khayafoods` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `chinsefoods` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `shanfoods` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `thailandfoods` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `foreignfoods` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurant_data`
--

INSERT INTO `restaurant_data` (`id`, `user_id`, `restaurantimage`, `myanmarname`, `englishname`, `restauranttype`, `restaurantphone`, `opentime`, `closetime`, `closeweekday`, `address`, `addresscity`, `descrition`, `myanmarfoods`, `khayafoods`, `chinsefoods`, `shanfoods`, `thailandfoods`, `foreignfoods`, `created_at`, `updated_at`) VALUES
(1, NULL, 'https://via.placeholder.com/600/24f355', 'myanmarname', 'englishname', 'restauranttype', '096543322423', '6 : 00 Am', '9 : 00 PM', 'Saturday', 'Shwe Taung', 'Loikaw', 'descrition descrition descrition ok', 'yes', 'yes', 'no', 'yes', 'no', 'no', '2020-09-28 03:51:02', '2020-09-28 03:51:02'),
(2, NULL, 'https://via.placeholder.com/600/24f355', 'myanmarname', 'englishname', 'restauranttype', '096543322423', '6 : 00 Am', '9 : 00 PM', 'Saturday', 'Shwe Taung', 'Loikaw', 'descrition descrition descrition ok', 'yes', 'yes', 'no', 'yes', 'no', 'no', '2020-09-28 03:51:03', '2020-09-28 03:51:03'),
(3, NULL, 'https://via.placeholder.com/600/24f355', 'myanmarname', 'englishname', 'restauranttype', '096543322423', '6 : 00 Am', '9 : 00 PM', 'Saturday', 'Shwe Taung', 'Loikaw', 'descrition descrition descrition ok', 'yes', 'yes', 'no', 'yes', 'no', 'no', '2020-09-28 03:51:04', '2020-09-28 03:51:04'),
(4, NULL, 'https://via.placeholder.com/600/24f355', 'myanmarname', 'englishname', 'restauranttype', '096543322423', '6 : 00 Am', '9 : 00 PM', 'Saturday', 'Shwe Taung', 'Loikaw', 'descrition descrition descrition ok', 'yes', 'yes', 'no', 'yes', 'no', 'no', '2020-09-28 03:51:05', '2020-09-28 03:51:05'),
(5, NULL, 'https://via.placeholder.com/600/24f355', 'myanmarname', 'englishname', 'restauranttype', '096543322423', '6 : 00 Am', '9 : 00 PM', 'Saturday', 'Shwe Taung', 'Loikaw', 'descrition descrition descrition ok', 'yes', 'yes', 'no', 'yes', 'no', 'no', '2020-09-28 03:51:06', '2020-09-28 03:51:06'),
(6, NULL, 'https://via.placeholder.com/600/24f355', 'myanmarname', 'englishname', 'restauranttype', '096543322423', '6 : 00 Am', '9 : 00 PM', 'Saturday', 'Shwe Taung', 'Loikaw', 'descrition descrition descrition ok', 'yes', 'yes', 'no', 'yes', 'no', 'no', '2020-09-28 03:51:09', '2020-09-28 03:51:09');

-- --------------------------------------------------------

--
-- Table structure for table `taxi_data`
--

CREATE TABLE `taxi_data` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `carimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driverimage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driverenglishname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drivermyanmarname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driverphone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driveraddress` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driveraddresscity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descrition` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cartype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carintnumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carcharacter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxi_data`
--

INSERT INTO `taxi_data` (`id`, `user_id`, `carimage`, `driverimage`, `driverenglishname`, `drivermyanmarname`, `driverphone`, `driveraddress`, `driveraddresscity`, `descrition`, `cartype`, `carintnumber`, `carcharacter`, `created_at`, `updated_at`) VALUES
(1, NULL, 'https://via.placeholder.com/600/771796', '/image/Screenshot from 2020-09-25 11-54-11.png', 'driverenglishname ok', 'drivermyanmarname ok', '09793013921', 'driveraddress ok', 'driveraddresscity', 'descrition descrition descrition descrition ok', 'Taxi', '3582', 'KHA', '2020-09-27 01:19:16', '2020-09-27 01:19:16'),
(2, NULL, 'https://via.placeholder.com/600/771796', '/image/Screenshot from 2020-09-25 11-54-11.png', 'driverenglishname ok', 'drivermyanmarname ok', '09793013921', 'driveraddress ok', 'driveraddresscity', 'descrition descrition descrition descrition ok', 'Taxi', '3582', 'KHA', '2020-09-27 01:19:22', '2020-09-27 01:19:22'),
(3, NULL, 'https://via.placeholder.com/600/771796', '/image/Screenshot from 2020-09-25 11-54-11.png', 'driverenglishname ok', 'drivermyanmarname ok', '09793013921', 'driveraddress ok', 'driveraddresscity', 'descrition descrition descrition descrition ok', 'Taxi', '3582', 'KHA', '2020-09-27 01:19:24', '2020-09-27 01:19:24'),
(4, NULL, 'https://via.placeholder.com/600/771796', '/image/Screenshot from 2020-09-25 11-54-11.png', 'driverenglishname ok', 'drivermyanmarname ok', '09793013921', 'driveraddress ok', 'driveraddresscity', 'descrition descrition descrition descrition ok', 'Taxi', '3582', 'KHA', '2020-09-27 01:19:25', '2020-09-27 01:19:25'),
(5, NULL, 'https://via.placeholder.com/600/771796', '/image/Screenshot from 2020-09-25 11-54-11.png', 'driverenglishname ok', 'drivermyanmarname ok', '09793013921', 'driveraddress ok', 'driveraddresscity', 'descrition descrition descrition descrition ok', 'Taxi', '3582', 'KHA', '2020-09-27 01:19:25', '2020-09-27 01:19:25'),
(6, NULL, 'https://via.placeholder.com/600/771796', '/image/Screenshot from 2020-09-25 11-54-11.png', 'driverenglishname ok', 'drivermyanmarname ok', '09793013921', 'driveraddress ok', 'driveraddresscity', 'descrition descrition descrition descrition ok', 'Taxi', '3582', 'KHA', '2020-09-27 01:19:26', '2020-09-27 01:19:26'),
(7, NULL, 'https://via.placeholder.com/600/771796', '/image/Screenshot from 2020-09-25 11-54-11.png', 'driverenglishname ok', 'drivermyanmarname ok', '09793013921', 'driveraddress ok', 'driveraddresscity', 'descrition descrition descrition descrition ok', 'Taxi', '3582', 'KHA', '2020-09-27 01:19:27', '2020-09-27 01:19:27'),
(8, NULL, 'https://via.placeholder.com/600/771796', '/image/Screenshot from 2020-09-25 11-54-11.png', 'driverenglishname ok', 'drivermyanmarname ok', '09793013921', 'driveraddress ok', 'driveraddresscity', 'descrition descrition descrition descrition ok', 'Taxi', '3582', 'KHA', '2020-09-27 01:19:28', '2020-09-27 01:19:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donated_data`
--
ALTER TABLE `donated_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide_data`
--
ALTER TABLE `guide_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_data`
--
ALTER TABLE `history_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`);

--
-- Indexes for table `restaurant_data`
--
ALTER TABLE `restaurant_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxi_data`
--
ALTER TABLE `taxi_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donated_data`
--
ALTER TABLE `donated_data`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `guide_data`
--
ALTER TABLE `guide_data`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `history_data`
--
ALTER TABLE `history_data`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurant_data`
--
ALTER TABLE `restaurant_data`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `taxi_data`
--
ALTER TABLE `taxi_data`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
