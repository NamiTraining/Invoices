-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2024 at 01:12 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `example`
--

-- --------------------------------------------------------

--
-- Table structure for table `example`
--

CREATE TABLE `example` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `example_number` varchar(50) NOT NULL,
  `example_Date` date DEFAULT NULL,
  `Due_date` date DEFAULT NULL,
  `product` varchar(50) NOT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `Amount_collection` decimal(8,2) DEFAULT NULL,
  `Amount_Commission` decimal(8,2) NOT NULL,
  `Discount` decimal(8,2) NOT NULL,
  `Value_VAT` decimal(8,2) NOT NULL,
  `Rate_VAT` varchar(999) NOT NULL,
  `Total` decimal(8,2) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Value_Status` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `Payment_Date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `example`
--

INSERT INTO `example` (`id`, `example_number`, `example_Date`, `Due_date`, `product`, `section_id`, `Amount_collection`, `Amount_Commission`, `Discount`, `Value_VAT`, `Rate_VAT`, `Total`, `Status`, `Value_Status`, `note`, `Payment_Date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '2356', '2023-08-02', '2023-10-03', 'القروض', 3, '40000.00', '10000.00', '1000.00', '450.00', '5%', '9450.00', 'غير مدفوعة', 2, 'OK', NULL, NULL, '2023-08-02 10:44:36', '2023-08-02 10:44:36'),
(2, '5432', '2023-08-05', '2023-04-05', 'القروض', 3, '40000.00', '10000.00', '1000.00', '450.00', '5%', '9450.00', 'مدفوعة', 1, 'تاني اضافة', '2023-08-03', NULL, '2023-08-05 08:03:41', '2023-08-05 08:04:14'),
(3, '6543', '2023-08-05', '2023-05-07', 'القروض', 3, '60000.00', '20000.00', '1000.00', '1900.00', '10%', '20900.00', 'غير مدفوعة', 2, 'تالت اضافة', NULL, NULL, '2023-08-05 08:06:18', '2023-08-05 08:06:18'),
(4, '3245', '2023-08-05', '2023-04-05', 'القروض', 3, '70000.00', '30000.00', '2000.00', '1400.00', '5%', '29400.00', 'مدفوعة جزئيا', 3, 'notify', '2023-08-25', NULL, '2023-08-05 14:48:59', '2023-08-05 15:17:27'),
(5, '5555', '2023-08-05', '2023-05-05', 'القروض', 3, '50000.00', '5000.00', '500.00', '225.00', '5%', '4725.00', 'غير مدفوعة', 2, 'five', NULL, NULL, '2023-08-05 15:06:48', '2023-08-05 15:06:48'),
(6, '4444', '2023-08-05', '2023-04-04', 'القروض', 3, '40000.00', '4000.00', '400.00', '180.00', '5%', '3780.00', 'مدفوعة', 1, 'four', '2023-08-14', NULL, '2023-08-05 15:09:51', '2023-08-05 15:17:51'),
(7, '333', '2023-08-05', '2023-03-03', 'القروض', 3, '30000.00', '3000.00', '300.00', '135.00', '5%', '2835.00', 'غير مدفوعة', 2, 'three', NULL, NULL, '2023-08-05 15:15:39', '2023-08-05 15:15:39'),
(8, '2222', '2023-08-06', '2022-02-02', 'القروض', 3, '20000.00', '2000.00', '200.00', '90.00', '5%', '1890.00', 'غير مدفوعة', 2, 'two', NULL, NULL, '2023-08-06 08:18:24', '2023-08-06 08:18:24'),
(9, '9999', '2023-08-06', '2022-09-09', 'القروض', 3, '90000.00', '9000.00', '900.00', '405.00', '5%', '8505.00', 'غير مدفوعة', 2, 'nine', NULL, NULL, '2023-08-06 08:23:57', '2023-08-06 08:23:57'),
(10, '1111', '2023-08-06', '2022-01-01', 'القروض', 3, '100000.00', '10000.00', '1000.00', '450.00', '5%', '9450.00', 'غير مدفوعة', 2, 'one', NULL, NULL, '2023-08-06 08:38:22', '2023-08-06 08:38:22'),
(11, '1212', '2023-08-06', '2022-01-02', 'القروض', 3, '20000.00', '2000.00', '200.00', '90.00', '5%', '1890.00', 'غير مدفوعة', 2, 'new', NULL, NULL, '2023-08-06 08:45:24', '2023-08-06 08:45:24'),
(12, '1234', '2023-08-06', '2022-01-02', 'القروض', 3, '123456.00', '12345.00', '1234.00', '555.55', '5%', '11666.55', 'غير مدفوعة', 2, 'اشعار', NULL, NULL, '2023-08-06 08:59:37', '2023-08-06 08:59:37'),
(13, '1234', '2023-08-06', '2022-01-02', 'القروض', 3, '123456.00', '12345.00', '1234.00', '555.55', '5%', '11666.55', 'غير مدفوعة', 2, 'اشعار', NULL, NULL, '2023-08-06 08:59:52', '2023-08-06 08:59:52'),
(14, '5678', '2023-08-06', '2022-05-06', 'القروض', 3, '567890.00', '56789.00', '5678.00', '2555.55', '5%', '53666.55', 'غير مدفوعة', 2, 'جديد', NULL, NULL, '2023-08-06 09:01:57', '2023-08-06 09:01:57'),
(15, '2233', '2023-08-06', '2022-02-03', 'القروض', 3, '223322.00', '22332.00', '2233.00', '1004.95', '5%', '21103.95', 'غير مدفوعة', 2, 'اشعاااااااااار', NULL, NULL, '2023-08-06 09:20:46', '2023-08-06 09:20:46');

-- --------------------------------------------------------

--
-- Table structure for table `examples_details`
--

CREATE TABLE `examples_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_example` bigint(20) UNSIGNED NOT NULL,
  `example_number` varchar(50) NOT NULL,
  `product` varchar(50) NOT NULL,
  `Section` varchar(999) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Value_Status` int(11) NOT NULL,
  `Payment_Date` date DEFAULT NULL,
  `note` text DEFAULT NULL,
  `user` varchar(300) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `examples_details`
--

INSERT INTO `examples_details` (`id`, `id_example`, `example_number`, `product`, `Section`, `Status`, `Value_Status`, `Payment_Date`, `note`, `user`, `created_at`, `updated_at`) VALUES
(1, 1, '2356', 'القروض', '3', 'غير مدفوعة', 2, NULL, 'OK', 'None', '2023-08-02 10:44:36', '2023-08-02 10:44:36'),
(2, 2, '5432', 'القروض', '3', 'غير مدفوعة', 2, NULL, 'تاني اضافة', 'afnanmohamed', '2023-08-05 08:03:41', '2023-08-05 08:03:41'),
(3, 2, '5432', 'القروض', '3', 'مدفوعة', 1, '2023-08-03', 'تاني اضافة', 'afnanmohamed', '2023-08-05 08:04:14', '2023-08-05 08:04:14'),
(4, 3, '6543', 'القروض', '3', 'غير مدفوعة', 2, NULL, 'تالت اضافة', 'afnanmohamed', '2023-08-05 08:06:18', '2023-08-05 08:06:18'),
(5, 4, '3245', 'القروض', '3', 'غير مدفوعة', 2, NULL, 'notify', 'afnanmohamed', '2023-08-05 14:48:59', '2023-08-05 14:48:59'),
(6, 5, '5555', 'القروض', '3', 'غير مدفوعة', 2, NULL, 'five', 'ahmed', '2023-08-05 15:06:48', '2023-08-05 15:06:48'),
(7, 6, '4444', 'القروض', '3', 'غير مدفوعة', 2, NULL, 'four', 'afnanmohamed', '2023-08-05 15:09:51', '2023-08-05 15:09:51'),
(8, 7, '333', 'القروض', '3', 'غير مدفوعة', 2, NULL, 'three', 'afnanmohamed', '2023-08-05 15:15:39', '2023-08-05 15:15:39'),
(9, 4, '3245', 'القروض', '3', 'مدفوعة جزئيا', 3, '2023-08-25', 'notify', 'afnanmohamed', '2023-08-05 15:17:27', '2023-08-05 15:17:27'),
(10, 6, '4444', 'القروض', '3', 'مدفوعة', 1, '2023-08-14', 'four', 'afnanmohamed', '2023-08-05 15:17:51', '2023-08-05 15:17:51'),
(11, 8, '2222', 'القروض', '3', 'غير مدفوعة', 2, NULL, 'two', 'ahmed', '2023-08-06 08:18:24', '2023-08-06 08:18:24'),
(12, 9, '9999', 'القروض', '3', 'غير مدفوعة', 2, NULL, 'nine', 'ahmed', '2023-08-06 08:23:57', '2023-08-06 08:23:57'),
(13, 10, '1111', 'القروض', '3', 'غير مدفوعة', 2, NULL, 'one', 'ahmed', '2023-08-06 08:38:22', '2023-08-06 08:38:22'),
(14, 11, '1212', 'القروض', '3', 'غير مدفوعة', 2, NULL, 'new', 'ahmed', '2023-08-06 08:45:24', '2023-08-06 08:45:24'),
(15, 12, '1234', 'القروض', '3', 'غير مدفوعة', 2, NULL, 'اشعار', 'ahmed', '2023-08-06 08:59:37', '2023-08-06 08:59:37'),
(16, 13, '1234', 'القروض', '3', 'غير مدفوعة', 2, NULL, 'اشعار', 'ahmed', '2023-08-06 08:59:52', '2023-08-06 08:59:52'),
(17, 14, '5678', 'القروض', '3', 'غير مدفوعة', 2, NULL, 'جديد', 'ahmed', '2023-08-06 09:01:57', '2023-08-06 09:01:57'),
(18, 15, '2233', 'القروض', '3', 'غير مدفوعة', 2, NULL, 'اشعاااااااااار', 'ahmed', '2023-08-06 09:20:46', '2023-08-06 09:20:46');

-- --------------------------------------------------------

--
-- Table structure for table `example_attachments`
--

CREATE TABLE `example_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(999) NOT NULL,
  `example_number` varchar(50) NOT NULL,
  `Created_by` varchar(999) NOT NULL,
  `example_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_19_112110_create_sections_table', 1),
(6, '2023_06_20_174714_create_example_table', 1),
(7, '2023_07_05_094619_create_products_table', 1),
(8, '2023_05_01_085025_create_permission_tables', 2),
(9, '2023_06_20_174714_create_example_table', 2),
(10, '2023_07_09_220329_create_examples_details_table', 1),
(11, '2023_07_09_222403_create_example_attachments_table', 1),
(12, '2014_10_12_000000_create_users_table', 3),
(13, '2023_08_02_171038_create_notifications_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(5, 'الفواتير', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(6, 'قائمة الفواتير', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(7, 'الفواتير المدفوعة', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(8, 'الفواتير المدفوعة جزئيا', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(9, 'الفواتير الغير مدفوعة', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(10, 'ارشيف الفواتير', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(11, 'التقارير', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(12, 'تقرير الفواتير', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(13, 'تقرير العملاء', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(14, 'المستخدمين', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(15, 'قائمة المستخدمين', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(16, 'صلاحيات المستخدمين', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(17, 'الاعدادات', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(18, 'المنتجات', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(19, 'الاقسام', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(20, 'اضافة فاتورة', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(21, 'حذف الفاتورة', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(22, 'تصدير EXCEL', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(23, 'تغير حالة الدفع', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(24, 'تعديل الفاتورة', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(25, 'ارشفة الفاتورة', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(26, 'طباعةالفاتورة', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(27, 'اضافة مرفق', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(28, 'حذف المرفق', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(29, 'اضافة مستخدم', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(30, 'تعديل مستخدم', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(31, 'حذف مستخدم', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(32, 'عرض صلاحية', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(33, 'اضافة صلاحية', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(34, 'تعديل صلاحية', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(35, 'حذف صلاحية', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(36, 'اضافة منتج', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(37, 'تعديل منتج', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(38, 'حذف منتج', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(39, 'اضافة قسم', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(40, 'تعديل قسم', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(41, 'حذف قسم', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41'),
(42, 'الاشعارات', 'web', '2023-08-03 18:10:41', '2023-08-03 18:10:41');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Product_name` varchar(999) NOT NULL,
  `description` text DEFAULT NULL,
  `section_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Product_name`, `description`, `section_id`, `created_at`, `updated_at`) VALUES
(1, 'القروض', NULL, 3, '2023-08-02 10:39:29', '2023-08-02 10:39:29');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'owner', 'web', '2023-08-04 05:35:09', '2023-08-04 05:35:09'),
(4, 'user', 'web', '2023-08-04 09:08:33', '2023-08-04 09:08:33');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(5, 2),
(5, 4),
(6, 2),
(6, 4),
(7, 2),
(7, 4),
(8, 2),
(8, 4),
(9, 2),
(9, 4),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(18, 4),
(19, 2),
(19, 4),
(20, 2),
(20, 4),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(39, 4),
(40, 2),
(41, 2),
(42, 2),
(42, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Section_name` varchar(999) NOT NULL,
  `description` text DEFAULT NULL,
  `Created_by` varchar(999) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `Section_name`, `description`, `Created_by`, `created_at`, `updated_at`) VALUES
(3, 'البنك الاهلي', 'اول اضافة', 'None', '2023-08-02 10:28:20', '2023-08-02 10:28:20'),
(4, 'بنك مصر', NULL, 'None', '2023-08-02 10:29:04', '2023-08-02 10:29:04'),
(5, 'بنك الرياض', NULL, 'None', '2023-08-02 10:29:12', '2023-08-02 10:29:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `roles_name` text NOT NULL,
  `Status` varchar(10) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `roles_name`, `Status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'afnanmohamed', 'admin@admin.com', NULL, '$2y$10$u8v8EWpR.r.Ex4v7HP6bhOx6PZDGyembQ3IyL134mNsx7ri8YeHTK', '[\"owner\"]', 'مفعل', NULL, '2023-08-04 05:35:09', '2023-08-04 05:35:09'),
(2, 'ahmed', 'ahmed@yahoo.com', NULL, '$2y$10$/9WZvDcXL6hQBmyABHK6.eyOX64mHA4uNtYiNpGUs2gpHIsvGbfZu', '[\"user\"]', 'مفعل', NULL, '2023-08-04 06:00:39', '2023-08-04 09:09:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `example`
--
ALTER TABLE `example`
  ADD PRIMARY KEY (`id`),
  ADD KEY `example_section_id_foreign` (`section_id`);

--
-- Indexes for table `examples_details`
--
ALTER TABLE `examples_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `example_attachments`
--
ALTER TABLE `example_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_section_id_foreign` (`section_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
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
-- AUTO_INCREMENT for table `example`
--
ALTER TABLE `example`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `examples_details`
--
ALTER TABLE `examples_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `example_attachments`
--
ALTER TABLE `example_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `example`
--
ALTER TABLE `example`
  ADD CONSTRAINT `example_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
