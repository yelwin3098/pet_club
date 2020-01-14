-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2019 at 06:19 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `petclub`
--

-- --------------------------------------------------------

--
-- Table structure for table `available_fors`
--

CREATE TABLE `available_fors` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_id` int(11) NOT NULL,
  `species_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `available_fors`
--

INSERT INTO `available_fors` (`id`, `service_id`, `species_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-07-23 07:20:52', '2019-07-23 07:20:52'),
(2, 1, 2, '2019-07-23 07:20:57', '2019-07-23 07:20:57'),
(3, 2, 1, '2019-07-23 07:21:06', '2019-07-23 07:21:06'),
(4, 2, 2, '2019-07-23 07:21:13', '2019-07-23 07:21:13'),
(5, 3, 1, '2019-07-23 07:21:18', '2019-07-23 07:21:18'),
(6, 4, 1, '2019-07-23 07:21:22', '2019-07-23 07:21:22'),
(7, 5, 1, '2019-07-23 07:21:26', '2019-07-23 07:21:26'),
(8, 5, 2, '2019-07-23 07:21:31', '2019-07-23 07:21:31');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `owner_name`, `email`, `phone_no`, `package`, `pub_status`, `created_at`, `updated_at`) VALUES
(3, 'Ye Lwin', 'yelwin030@gmail.com', '09969954250', 'Pet Traning', '1', '2019-08-14 04:32:43', '2019-08-14 04:32:43'),
(4, 'Pyae Pyae Phyo', 'pyae@gmail.com', '09969954250', 'Package2', '1', '2019-08-14 04:33:38', '2019-08-14 04:33:38'),
(5, 'Thazin Ei', 'thazin@gmail.com', '09969954250', 'Package1', '0', '2019-08-14 04:36:10', '2019-08-14 04:36:10');

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` int(10) UNSIGNED NOT NULL,
  `facility_id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `closed` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`id`, `facility_id`, `pet_id`, `start_time`, `end_time`, `notes`, `closed`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '03:00:00', '05:00:00', 'Lorem ipsum dolor sit amet consectetur elit,dolore magna aliqua uta.', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `facility_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `facility_name`, `address`, `phone_no`, `email`, `contact_person`, `created_at`, `updated_at`) VALUES
(1, 'Pet Walking Zone', 'Meiktila', '09969954250', 'myohein@gamil.com', 'Myo Hein Htet', '2019-07-23 07:20:22', '2019-07-23 07:20:22'),
(2, 'Pet BedRoom', 'Lorem ipsum dolor sit amet consectetur elit,dolore magna aliqua uta.', '09969954250', 'thazin@gmail.com', 'Thazin Ei', '2019-07-23 07:20:38', '2019-07-23 07:20:38');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pub_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `message`, `image`, `pub_status`, `created_at`, `updated_at`) VALUES
(1, 'genius', 'pyae@gmail.com', 'orem ipsum dolor sit amet, Cras blandit nibh ut pretium elementum. Duis bibendum convallis nunc a dictum. Quisque ac ipsum porta, ultrices metus sit amet, cursus nisl. Duis aliquet varius sem sit amet tempus. Curabitur vitae dui bibendum.', '2019-08-13_5d52c602ab590.jpg', '1', '2019-08-13 07:45:30', '2019-08-13 07:45:30'),
(3, 'Ye Lwin', 'yelwin030@gmail.com', 'orem ipsum dolor sit amet, Cras blandit nibh ut pretium elementum. Duis bibendum convallis nunc a dictum. Quisque ac ipsum porta, ultrices metus sit amet, cursus nisl. Duis aliquet varius sem sit amet tempus. Curabitur vitae dui bibendum.', '2019-08-13_5d52c62b446e1.jpg', '1', '2019-08-13 07:46:11', '2019-08-13 07:46:11');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `case_id` int(11) NOT NULL,
  `time_generated` datetime NOT NULL,
  `invoice_amount` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `time_charged` time DEFAULT NULL,
  `amount_charged` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_code`, `case_id`, `time_generated`, `invoice_amount`, `discount`, `time_charged`, `amount_charged`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'Cd1', 1, '2019-07-25 09:17:46', 18000, 30, '00:00:03', 5400, 'Maecenas interdum, metus vitae tincidunt porttitor, magna quam egestas sem, ac scelerisque nisl nibh vel lacus. Proin eget gravida odio. Donec ullamcorper est eu accumsan cursus.', '2019-07-25 02:47:46', '2019-07-25 02:47:46');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(51, '2014_10_12_000000_create_users_table', 1),
(52, '2014_10_12_100000_create_password_resets_table', 1),
(53, '2019_07_10_102313_create_owners_table', 1),
(54, '2019_07_10_102416_create_pet_species_table', 1),
(55, '2019_07_10_102446_create_pets_table', 1),
(56, '2019_07_10_102507_create_pet_owners_table', 1),
(57, '2019_07_10_102543_create_facilities_table', 1),
(58, '2019_07_10_102559_create_units_table', 1),
(59, '2019_07_10_102615_create_services_table', 1),
(60, '2019_07_10_102633_create_provides_table', 1),
(61, '2019_07_10_102655_create_species_services_table', 1),
(62, '2019_07_10_102722_create_available_fors_table', 1),
(63, '2019_07_10_102736_create_cases_table', 1),
(64, '2019_07_10_102754_create_service_provides_table', 1),
(65, '2019_07_10_102809_create_invoices_table', 1),
(66, '2019_07_10_102826_create_sliders_table', 1),
(67, '2019_07_11_122354_create_packages_table', 1),
(68, '2019_07_11_122436_create_bookings_table', 1),
(69, '2019_07_12_141200_create_pet_and_owners_table', 1),
(70, '2019_07_22_114825_create_notifications_table', 1),
(71, '2019_07_24_102540_create_invoices_table', 2),
(73, '2019_08_12_045116_create_feedback_table', 3),
(74, '2019_08_14_105229_create_record_bookings_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(11) NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_id`, `notifiable_type`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Notifications\\NotifyBooking', 3, 'App\\Booking', '{\"book\":{\"owner_name\":\"Ye Lwin\",\"email\":\"yelwin030@gmail.com\",\"phone_no\":\"09969954250\",\"package\":\"Pet Traning\",\"updated_at\":\"2019-08-14 11:02:43\",\"created_at\":\"2019-08-14 11:02:43\",\"id\":3}}', NULL, '2019-08-14 04:32:44', '2019-08-14 04:32:44'),
(222, 'App\\Notifications\\NotifyBooking', 1, 'App\\Booking', '{\"book\":{\"owner_name\":\"Thanar Htun\",\"email\":\"thandar@gmail.com\",\"phone_no\":\"09969954250\",\"package\":\"Package2\",\"updated_at\":\"2019-07-23 13:55:46\",\"created_at\":\"2019-07-23 13:55:46\",\"id\":1}}', NULL, '2019-07-23 07:25:46', '2019-07-23 07:25:46'),
(223, 'App\\Notifications\\NotifyBooking', 2, 'App\\Booking', '{\"book\":{\"owner_name\":\"Ye Lwin\",\"email\":\"yelwin030@gmail.com\",\"phone_no\":\"09969954250\",\"package\":\"Package2\",\"updated_at\":\"2019-08-14 10:50:00\",\"created_at\":\"2019-08-14 10:50:00\",\"id\":2}}', NULL, '2019-08-14 04:20:00', '2019-08-14 04:20:00'),
(570, 'App\\Notifications\\NotifyBooking', 4, 'App\\Booking', '{\"book\":{\"owner_name\":\"Pyae Pyae Phyo\",\"email\":\"pyae@gmail.com\",\"phone_no\":\"09969954250\",\"package\":\"Package2\",\"updated_at\":\"2019-08-14 11:03:38\",\"created_at\":\"2019-08-14 11:03:38\",\"id\":4}}', NULL, '2019-08-14 04:33:38', '2019-08-14 04:33:38'),
(571, 'App\\Notifications\\NotifyBooking', 5, 'App\\Booking', '{\"book\":{\"owner_name\":\"Thazin Ei\",\"email\":\"thazin@gmail.com\",\"phone_no\":\"09969954250\",\"package\":\"Package1\",\"updated_at\":\"2019-08-14 11:06:10\",\"created_at\":\"2019-08-14 11:06:10\",\"id\":5}}', NULL, '2019-08-14 04:36:10', '2019-08-14 04:36:10');

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE `owners` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(10) UNSIGNED NOT NULL,
  `package_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_one` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_two` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_three` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_four` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prices` int(11) NOT NULL,
  `pub_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `package_name`, `service_one`, `service_two`, `service_three`, `service_four`, `prices`, `pub_status`, `created_at`, `updated_at`) VALUES
(1, 'Package1', 'Pet Goorming', 'Pet Cleaning', 'Pet Traning', 'Fun Activities', 20000, '1', '2019-07-23 07:22:16', '2019-07-23 07:22:16'),
(2, 'Package2', 'Veterinary', 'Pet Goorming', 'Pet Traning', 'Fun Activities', 30000, '1', '2019-07-23 07:22:31', '2019-07-23 07:22:31'),
(3, 'Package3', 'Pet Cleaning', 'Fun Activities', 'Veterinary', 'Pet Goorming', 40000, '1', '2019-07-23 07:22:46', '2019-07-23 07:22:46');

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
-- Table structure for table `pets`
--

CREATE TABLE `pets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `species_id` int(11) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pet_and_owners`
--

CREATE TABLE `pet_and_owners` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pet_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pet_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `species_id` int(11) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pet_and_owners`
--

INSERT INTO `pet_and_owners` (`id`, `owner_name`, `email`, `phone_no`, `address`, `pet_name`, `pet_image`, `species_id`, `age`, `notes`, `created_at`, `updated_at`) VALUES
(1, 'Pyae Pyae Pyo', 'pyae@gmail.com', '09969954250', 'Lorem ipsum dolor sit amet consectetur elit,dolore magna aliqua uta.', 'Joli', '2019-07-25_5d396d58b93a0.jpg', 1, 1, 'Lorem ipsum dolor sit amet consectetur elit,dolore magna aliqua uta.', '2019-07-25 02:20:32', '2019-07-25 02:20:32');

-- --------------------------------------------------------

--
-- Table structure for table `pet_owners`
--

CREATE TABLE `pet_owners` (
  `id` int(10) UNSIGNED NOT NULL,
  `pet_id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pet_species`
--

CREATE TABLE `pet_species` (
  `id` int(10) UNSIGNED NOT NULL,
  `species_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pet_species`
--

INSERT INTO `pet_species` (`id`, `species_name`, `created_at`, `updated_at`) VALUES
(1, 'Dog', '2019-07-23 07:14:24', '2019-07-23 07:14:24'),
(2, 'Cat', '2019-07-23 07:14:41', '2019-07-23 07:14:41');

-- --------------------------------------------------------

--
-- Table structure for table `provides`
--

CREATE TABLE `provides` (
  `id` int(10) UNSIGNED NOT NULL,
  `facility_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `service_limit` int(11) DEFAULT NULL,
  `currently_used` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provides`
--

INSERT INTO `provides` (`id`, `facility_id`, `service_id`, `service_limit`, `currently_used`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 10, 4, '2019-07-23 07:21:48', '2019-07-23 07:21:48'),
(2, 2, 2, 0, 0, '2019-07-23 07:21:56', '2019-07-23 07:21:56');

-- --------------------------------------------------------

--
-- Table structure for table `record_bookings`
--

CREATE TABLE `record_bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pub_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `record_bookings`
--

INSERT INTO `record_bookings` (`id`, `owner_name`, `email`, `phone_no`, `package`, `pub_status`, `created_at`, `updated_at`) VALUES
(1, 'Ye Lwin', 'yelwin030@gmail.com', '09969954250', 'Pet Traning', '1', '2019-08-14 04:32:43', '2019-08-14 04:32:43'),
(2, 'Pyae Pyae Phyo', 'pyae@gmail.com', '09969954250', 'Package2', '1', '2019-08-14 04:33:38', '2019-08-14 04:33:38'),
(3, 'Thazin Ei', 'thazin@gmail.com', '09969954250', 'Package1', '1', '2019-08-14 04:36:10', '2019-08-14 04:36:10');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_limit` tinyint(1) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `cost_per_unit` int(11) NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `pub_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `image`, `has_limit`, `unit_id`, `cost_per_unit`, `notes`, `pub_status`, `created_at`, `updated_at`) VALUES
(1, 'Pet Goorming', '2019-07-23_5d370fec45e4b.jpg', 0, 1, 5000, '<p>\r\n\r\nLorem ipsum dolor sit amet consectetur elit,dolore magna aliqua uta.\r\n\r\n<br></p>', '1', '2019-07-23 07:17:24', '2019-07-23 07:17:24'),
(2, 'Pet Cleaning', '2019-07-23_5d37100b965fb.jpg', 0, 1, 4000, '<p>\r\n\r\nLorem ipsum dolor sit amet consectetur elit,dolore magna aliqua uta.\r\n\r\n<br></p>', '1', '2019-07-23 07:17:55', '2019-07-23 07:17:55'),
(3, 'Pet Traning', '2019-07-23_5d37102065675.jpg', 1, 1, 6000, '<p>\r\n\r\nLorem ipsum dolor sit amet consectetur elit,dolore magna aliqua uta.\r\n\r\n<br></p>', '1', '2019-07-23 07:18:16', '2019-07-23 07:18:16'),
(4, 'Fun Activities', '2019-07-23_5d37104ab5812.jpg', 1, 1, 7000, '<p>\r\n\r\nLorem ipsum dolor sit amet consectetur elit,dolore magna aliqua uta.\r\n\r\n<br></p>', '0', '2019-07-23 07:18:58', '2019-07-23 07:18:58'),
(5, 'Veterinary', '2019-07-23_5d37105b39b29.jpg', 0, 1, 6500, '<p>\r\n\r\nLorem ipsum dolor sit amet consectetur elit,dolore magna aliqua uta.\r\n\r\n<br></p>', '1', '2019-07-23 07:19:15', '2019-07-23 07:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `service_provides`
--

CREATE TABLE `service_provides` (
  `id` int(10) UNSIGNED NOT NULL,
  `case_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time DEFAULT NULL,
  `unit` int(11) DEFAULT NULL,
  `cost_per_unit` int(11) NOT NULL,
  `price_charged` int(11) DEFAULT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_provides`
--

INSERT INTO `service_provides` (`id`, `case_id`, `service_id`, `start_time`, `end_time`, `unit`, `cost_per_unit`, `price_charged`, `notes`, `created_at`, `updated_at`) VALUES
(2, 1, 3, '03:00:00', '06:00:00', 1, 6000, 18000, 'Maecenas interdum, metus vitae tincidunt porttitor, magna quam egestas sem, ac scelerisque nisl nibh vel lacus. Proin eget gravida odio. Donec ullamcorper est eu accumsan cursus.', '2019-07-25 02:31:58', '2019-07-25 02:31:58'),
(4, 1, 3, '03:00:00', '06:00:00', 1, 6000, 18000, 'Maecenas interdum, metus vitae tincidunt porttitor, magna quam egestas sem, ac scelerisque nisl nibh vel lacus. Proin eget gravida odio. Donec ullamcorper est eu accumsan cursus.', '2019-07-25 02:47:13', '2019-07-25 02:47:13');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `pub_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `sub_title`, `image`, `pub_status`, `created_at`, `updated_at`) VALUES
(1, 'Slider Title One', 'Lorem ipsum dolor sit amet consectetur elit,dolore magna aliqua uta.', 'slider-title-one_2019-07-23_5d370f7629792.jpg', '0', '2019-07-23 07:15:26', '2019-07-23 07:15:26'),
(2, 'Slider Title2', 'Lorem ipsum dolor sit amet consectetur elit,dolore magna aliqua uta.', 'slider-title2_2019-07-23_5d370f94984cd.jpg', '1', '2019-07-23 07:15:56', '2019-07-23 07:15:56');

-- --------------------------------------------------------

--
-- Table structure for table `species_services`
--

CREATE TABLE `species_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `species_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `unit_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `unit_name`, `created_at`, `updated_at`) VALUES
(1, 'One Hour', '2019-07-23 07:16:57', '2019-07-23 07:16:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ye Lwin', 'yelwin030@gmail.com', NULL, '$2y$10$.qbA6KhSEa4mdtZtJX5Am.Ktq/paT/9uOy2HBmuVwsijaSMBFpESu', 'NvkKE0ZPQTXUXJunH6hB22YFNSJNMuKjxk7PcYxUKU2VmYmGfvxNQlX0GfRz', '2019-07-23 07:14:13', '2019-07-23 07:14:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `available_fors`
--
ALTER TABLE `available_fors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pet_and_owners`
--
ALTER TABLE `pet_and_owners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pet_owners`
--
ALTER TABLE `pet_owners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pet_species`
--
ALTER TABLE `pet_species`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provides`
--
ALTER TABLE `provides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `record_bookings`
--
ALTER TABLE `record_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_provides`
--
ALTER TABLE `service_provides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `species_services`
--
ALTER TABLE `species_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
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
-- AUTO_INCREMENT for table `available_fors`
--
ALTER TABLE `available_fors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=572;

--
-- AUTO_INCREMENT for table `owners`
--
ALTER TABLE `owners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pets`
--
ALTER TABLE `pets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pet_and_owners`
--
ALTER TABLE `pet_and_owners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pet_owners`
--
ALTER TABLE `pet_owners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pet_species`
--
ALTER TABLE `pet_species`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `provides`
--
ALTER TABLE `provides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `record_bookings`
--
ALTER TABLE `record_bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `service_provides`
--
ALTER TABLE `service_provides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `species_services`
--
ALTER TABLE `species_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
