-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Jul 2024 pada 09.26
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom_midtrans`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_07_29_112053_create_shop_tables', 1),
(7, '2024_07_30_111441_add_code_to_payments_table', 2),
(8, '2024_07_30_111557_add_payment_url_to_orders_table', 2),
(9, '2024_07_30_111700_add_weight_to_products_table', 2),
(10, '2024_07_30_111736_add_to_weight_to_shop_carts_table', 2),
(11, '2024_07_30_111823_add_label_column_to_address_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `shop_addresses`
--

CREATE TABLE `shop_addresses` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `label` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `postcode` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shop_addresses`
--

INSERT INTO `shop_addresses` (`id`, `user_id`, `is_primary`, `label`, `first_name`, `last_name`, `address1`, `address2`, `phone`, `email`, `city`, `province`, `postcode`, `created_at`, `updated_at`) VALUES
('809406de-4e78-11ef-9cb8-98e7432519f0', '9ca3e129-8295-4b7e-b280-8434249d5d55', 1, 'Rumah', 'Ahmad', 'Zarkasih', 'Jln.Tamsis', 'Jln.Kledokan', '081312344321', 'admin@gmail.com', '39', '5', 55783, NULL, NULL),
('80943a23-4e78-11ef-9cb8-98e7432519f0', '9ca3e129-8295-4b7e-b280-8434249d5d55', 0, 'Kantor', 'Mamad', '-', 'Jln.Tamsis', 'Jln.Kledokan', '12345', 'admin@gmail.com', '39', '5', 55783, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_attributes`
--

CREATE TABLE `shop_attributes` (
  `id` char(36) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `attribute_type` varchar(255) NOT NULL,
  `validation_rules` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shop_attributes`
--

INSERT INTO `shop_attributes` (`id`, `code`, `name`, `attribute_type`, `validation_rules`, `created_at`, `updated_at`) VALUES
('9ca3ceb1-9109-4cb5-8b17-0e6e2d669c52', 'ATTR_WEIGHT', 'Berat', 'integer', NULL, '2024-07-29 10:20:13', '2024-07-29 10:20:13'),
('9ca3ceb1-9362-4a71-bdd2-c9cb4a917da4', 'ATTR_COLOR', 'Warna', 'select', NULL, '2024-07-29 10:20:13', '2024-07-29 10:20:13'),
('9ca3ceb1-980e-4668-a47c-331ddcd3ba23', 'ATTR_SIZE', 'Ukuran', 'select', NULL, '2024-07-29 10:20:13', '2024-07-29 10:20:13'),
('9ca3ceb1-9a76-4fb3-9f73-89da962fb990', 'ATTR_LENGTH', 'Panjang', 'integer', NULL, '2024-07-29 10:20:13', '2024-07-29 10:20:13'),
('9ca3ceb1-9c66-41e7-bf47-f79807b4a366', 'ATTR_HEIGHT', 'Tinggi', 'integer', NULL, '2024-07-29 10:20:13', '2024-07-29 10:20:13'),
('9ca3ceb1-9e7d-41c6-b7fa-c468ac949dc1', 'ATTR_WIDTH', 'Lebar', 'integer', NULL, '2024-07-29 10:20:13', '2024-07-29 10:20:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_attribute_options`
--

CREATE TABLE `shop_attribute_options` (
  `id` char(36) NOT NULL,
  `attribute_id` char(36) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_carts`
--

CREATE TABLE `shop_carts` (
  `id` char(36) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `expired_at` datetime NOT NULL,
  `base_total_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `total_weight` int(11) NOT NULL DEFAULT 0,
  `tax_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `grand_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shop_carts`
--

INSERT INTO `shop_carts` (`id`, `user_id`, `expired_at`, `base_total_price`, `total_weight`, `tax_amount`, `tax_percent`, `discount_amount`, `discount_percent`, `grand_total`, `deleted_at`, `created_at`, `updated_at`) VALUES
('9ca4fcb4-369b-45b0-bab1-937c79525d7d', '9ca3e129-8295-4b7e-b280-8434249d5d55', '2024-08-06 07:24:40', 4086741.23, 300, 449541.54, 0.00, 0.00, 0.00, 4536282.77, '2024-07-30 21:42:09', '2024-07-30 00:24:43', '2024-07-30 21:42:09'),
('9ca6cb1f-10f6-438a-802d-e7fed4a00c0c', '9ca3e129-8295-4b7e-b280-8434249d5d55', '2024-08-07 04:57:43', 101644.80, 100, 11180.93, 0.11, 0.00, 0.00, 112825.73, '2024-07-30 22:03:43', '2024-07-30 21:57:43', '2024-07-30 22:03:43'),
('9ca6cdb9-9a42-4e4b-a012-895d87fbf28b', '9ca3e129-8295-4b7e-b280-8434249d5d55', '2024-08-07 05:04:59', 11155.80, 100, 1227.14, 0.11, 0.00, 0.00, 12382.94, '2024-07-30 22:14:08', '2024-07-30 22:04:59', '2024-07-30 22:14:08'),
('9ca6f236-e83d-42cd-ad94-bbe6ec73a67e', '9ca3e129-8295-4b7e-b280-8434249d5d55', '2024-08-07 06:47:01', 22311.60, 200, 2454.28, 0.11, 0.00, 0.00, 24765.88, '2024-07-31 00:00:14', '2024-07-30 23:47:01', '2024-07-31 00:00:14'),
('9ca6fa69-e8cb-4ad6-a8a7-4d0de5d43331', '9ca3e129-8295-4b7e-b280-8434249d5d55', '2024-08-07 07:09:57', 101644.80, 100, 11180.93, 0.11, 0.00, 0.00, 112825.73, '2024-07-31 00:16:02', '2024-07-31 00:09:57', '2024-07-31 00:16:02'),
('9ca6fd27-b44d-45c4-907e-46ed0a891f15', '9ca3e129-8295-4b7e-b280-8434249d5d55', '2024-08-07 07:17:37', 11155.80, 100, 1227.14, 0.11, 0.00, 0.00, 12382.94, '2024-07-31 00:22:29', '2024-07-31 00:17:37', '2024-07-31 00:22:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_cart_items`
--

CREATE TABLE `shop_cart_items` (
  `id` char(36) NOT NULL,
  `cart_id` char(36) NOT NULL,
  `product_id` char(36) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shop_cart_items`
--

INSERT INTO `shop_cart_items` (`id`, `cart_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES
('9ca4fe94-22e7-4ed7-b7e9-9695242e2435', '9ca4fcb4-369b-45b0-bab1-937c79525d7d', '9ca3ceb3-3986-4ef7-866a-68bf7740d9e5', 1, '2024-07-30 00:29:56', '2024-07-30 10:37:44'),
('9ca513dc-1d4a-4911-948f-13ce01cf42b4', '9ca4fcb4-369b-45b0-bab1-937c79525d7d', '9ca3ceb2-dbf7-4975-b246-4770a99b0d52', 1, '2024-07-30 01:29:27', '2024-07-30 01:29:27'),
('9ca513f2-3347-4d4e-a817-63d9226b716a', '9ca4fcb4-369b-45b0-bab1-937c79525d7d', '9ca3ceb3-551c-4fce-9cea-f613ab10b0d3', 1, '2024-07-30 01:29:41', '2024-07-30 01:29:41'),
('9ca6cd1c-367d-4269-a988-16bea8572c5b', '9ca6cb1f-10f6-438a-802d-e7fed4a00c0c', '9ca3ceb2-dbf7-4975-b246-4770a99b0d52', 1, '2024-07-30 22:03:16', '2024-07-30 22:03:16'),
('9ca6d0d1-1a5d-48a5-b533-0ca7b115ed92', '9ca6cdb9-9a42-4e4b-a012-895d87fbf28b', '9ca3ceb3-1871-464c-bde5-227d8ea054b3', 1, '2024-07-30 22:13:38', '2024-07-30 22:13:38'),
('9ca6f236-fca2-4d13-b526-7572c919c321', '9ca6f236-e83d-42cd-ad94-bbe6ec73a67e', '9ca3ceb3-1871-464c-bde5-227d8ea054b3', 2, '2024-07-30 23:47:01', '2024-07-30 23:59:06'),
('9ca6fc13-d2a2-4154-b4fa-d26a38ddf959', '9ca6fa69-e8cb-4ad6-a8a7-4d0de5d43331', '9ca3ceb2-dbf7-4975-b246-4770a99b0d52', 1, '2024-07-31 00:14:36', '2024-07-31 00:14:36'),
('9ca6fe83-a08d-4599-8a06-49c7907b22b9', '9ca6fd27-b44d-45c4-907e-46ed0a891f15', '9ca3ceb3-1871-464c-bde5-227d8ea054b3', 1, '2024-07-31 00:21:25', '2024-07-31 00:21:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_categories`
--

CREATE TABLE `shop_categories` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shop_categories`
--

INSERT INTO `shop_categories` (`id`, `parent_id`, `slug`, `name`, `created_at`, `updated_at`) VALUES
('9ca3ceb1-be36-45ff-a890-42b91bfaf7a2', NULL, 'ad-quia-sapiente', 'Ad quia sapiente.', '2024-07-29 10:20:13', '2024-07-29 10:20:13'),
('9ca3ceb1-c128-41fa-bde7-0812e04952c0', NULL, 'odit-officiis', 'Odit officiis.', '2024-07-29 10:20:13', '2024-07-29 10:20:13'),
('9ca3ceb1-c2f5-4ff3-ac39-d23f68437290', NULL, 'placeat-et-quia', 'Placeat et quia.', '2024-07-29 10:20:13', '2024-07-29 10:20:13'),
('9ca3ceb1-c4cf-4bc7-a7a6-8c4f77a269ca', NULL, 'dolor-et', 'Dolor et.', '2024-07-29 10:20:13', '2024-07-29 10:20:13'),
('9ca3ceb1-c6c6-4fd0-be91-f144d56f45e6', NULL, 'corrupti-recusandae-unde', 'Corrupti recusandae unde.', '2024-07-29 10:20:13', '2024-07-29 10:20:13'),
('9ca3ceb1-c886-4a4a-bba1-d971ce395ca7', NULL, 'provident-ut', 'Provident ut.', '2024-07-29 10:20:13', '2024-07-29 10:20:13'),
('9ca3ceb1-ca4d-4a5c-bbdc-fc7057e48667', NULL, 'laborum-repudiandae', 'Laborum repudiandae.', '2024-07-29 10:20:13', '2024-07-29 10:20:13'),
('9ca3ceb1-cc36-46d8-a58d-d6f6897b5a69', NULL, 'dolorum-assumenda-voluptatem', 'Dolorum assumenda voluptatem.', '2024-07-29 10:20:13', '2024-07-29 10:20:13'),
('9ca3ceb1-ce14-4966-a615-c643e43dbdf7', NULL, 'voluptas-ipsa', 'Voluptas ipsa.', '2024-07-29 10:20:13', '2024-07-29 10:20:13'),
('9ca3ceb1-cfd8-4278-be10-2196817c6ba3', NULL, 'eligendi-magni', 'Eligendi magni.', '2024-07-29 10:20:13', '2024-07-29 10:20:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_categories_products`
--

CREATE TABLE `shop_categories_products` (
  `product_id` char(36) NOT NULL,
  `category_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shop_categories_products`
--

INSERT INTO `shop_categories_products` (`product_id`, `category_id`) VALUES
('9ca3ceb2-9385-4733-8bea-972df6d9c494', '9ca3ceb1-be36-45ff-a890-42b91bfaf7a2'),
('9ca3ceb2-9385-4733-8bea-972df6d9c494', '9ca3ceb1-c128-41fa-bde7-0812e04952c0'),
('9ca3ceb2-dbf7-4975-b246-4770a99b0d52', '9ca3ceb1-be36-45ff-a890-42b91bfaf7a2'),
('9ca3ceb2-dbf7-4975-b246-4770a99b0d52', '9ca3ceb1-c128-41fa-bde7-0812e04952c0'),
('9ca3ceb2-fc1f-46a8-a02f-4f1bdd7b89b5', '9ca3ceb1-be36-45ff-a890-42b91bfaf7a2'),
('9ca3ceb2-fc1f-46a8-a02f-4f1bdd7b89b5', '9ca3ceb1-c128-41fa-bde7-0812e04952c0'),
('9ca3ceb3-1871-464c-bde5-227d8ea054b3', '9ca3ceb1-be36-45ff-a890-42b91bfaf7a2'),
('9ca3ceb3-1871-464c-bde5-227d8ea054b3', '9ca3ceb1-c128-41fa-bde7-0812e04952c0'),
('9ca3ceb3-2971-47a9-ac08-46f946abb461', '9ca3ceb1-be36-45ff-a890-42b91bfaf7a2'),
('9ca3ceb3-2971-47a9-ac08-46f946abb461', '9ca3ceb1-c128-41fa-bde7-0812e04952c0'),
('9ca3ceb3-3986-4ef7-866a-68bf7740d9e5', '9ca3ceb1-be36-45ff-a890-42b91bfaf7a2'),
('9ca3ceb3-3986-4ef7-866a-68bf7740d9e5', '9ca3ceb1-c128-41fa-bde7-0812e04952c0'),
('9ca3ceb3-4929-4865-9e96-d16fc2eb08ce', '9ca3ceb1-be36-45ff-a890-42b91bfaf7a2'),
('9ca3ceb3-4929-4865-9e96-d16fc2eb08ce', '9ca3ceb1-c128-41fa-bde7-0812e04952c0'),
('9ca3ceb3-551c-4fce-9cea-f613ab10b0d3', '9ca3ceb1-be36-45ff-a890-42b91bfaf7a2'),
('9ca3ceb3-551c-4fce-9cea-f613ab10b0d3', '9ca3ceb1-c128-41fa-bde7-0812e04952c0'),
('9ca3ceb3-633c-4028-bf61-a846097cea4a', '9ca3ceb1-be36-45ff-a890-42b91bfaf7a2'),
('9ca3ceb3-633c-4028-bf61-a846097cea4a', '9ca3ceb1-c128-41fa-bde7-0812e04952c0'),
('9ca3ceb3-7441-40c4-a923-e5690db1afb2', '9ca3ceb1-be36-45ff-a890-42b91bfaf7a2'),
('9ca3ceb3-7441-40c4-a923-e5690db1afb2', '9ca3ceb1-c128-41fa-bde7-0812e04952c0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_orders`
--

CREATE TABLE `shop_orders` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `approved_by` char(36) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `cancelled_by` char(36) DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `cancellation_note` text DEFAULT NULL,
  `order_date` datetime NOT NULL,
  `payment_due` datetime NOT NULL,
  `payment_url` varchar(255) DEFAULT NULL,
  `base_total_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(16,2) NOT NULL DEFAULT 0.00,
  `grand_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `customer_note` text DEFAULT NULL,
  `customer_first_name` varchar(255) NOT NULL,
  `customer_last_name` varchar(255) NOT NULL,
  `customer_address1` varchar(255) DEFAULT NULL,
  `customer_address2` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_city` varchar(255) DEFAULT NULL,
  `customer_province` varchar(255) DEFAULT NULL,
  `customer_postcode` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shop_orders`
--

INSERT INTO `shop_orders` (`id`, `user_id`, `code`, `status`, `approved_by`, `approved_at`, `cancelled_by`, `cancelled_at`, `cancellation_note`, `order_date`, `payment_due`, `payment_url`, `base_total_price`, `tax_amount`, `tax_percent`, `discount_amount`, `discount_percent`, `shipping_cost`, `grand_total`, `customer_note`, `customer_first_name`, `customer_last_name`, `customer_address1`, `customer_address2`, `customer_phone`, `customer_email`, `customer_city`, `customer_province`, `customer_postcode`, `deleted_at`, `created_at`, `updated_at`) VALUES
('9ca6c4f8-0d52-45c7-a3fe-6f78d9eaa462', '9ca3e129-8295-4b7e-b280-8434249d5d55', 'ORDER/2024/07/31/00001', 'PENDING', NULL, NULL, NULL, NULL, NULL, '2024-08-01 04:40:30', '2024-08-01 04:40:30', 'https://app.sandbox.midtrans.com/snap/v4/redirection/1d0560ef-49ed-4268-a6d2-fd125b8fe29e', 4086741.23, 449541.54, 0.00, 0.00, 0.00, 30000.00, 4566282.77, NULL, 'Ahmad', 'Zarkasih', 'Jln.Tamsis', 'Jln.Kledokan', '081312344321', 'admin@gmail.com', '39', '5', 55783, NULL, '2024-07-30 21:40:30', '2024-07-30 21:40:32'),
('9ca6c58b-e24a-4440-90a5-b68d927a90c3', '9ca3e129-8295-4b7e-b280-8434249d5d55', 'ORDER/2024/07/31/00002', 'PENDING', NULL, NULL, NULL, NULL, NULL, '2024-08-01 04:42:07', '2024-08-01 04:42:07', 'https://app.sandbox.midtrans.com/snap/v4/redirection/b7e40f2d-3332-4a4b-8d8e-df2fe0f707c9', 4086741.23, 449541.54, 0.00, 0.00, 0.00, 30000.00, 4566282.77, NULL, 'Ahmad', 'Zarkasih', 'Jln.Tamsis', 'Jln.Kledokan', '081312344321', 'admin@gmail.com', '39', '5', 55783, NULL, '2024-07-30 21:42:07', '2024-07-30 21:42:09'),
('9ca6cd43-a8c7-4067-8487-8b973482371c', '9ca3e129-8295-4b7e-b280-8434249d5d55', 'ORDER/2024/07/31/00003', 'PENDING', NULL, NULL, NULL, NULL, NULL, '2024-08-01 05:03:42', '2024-08-01 05:03:42', 'https://app.sandbox.midtrans.com/snap/v4/redirection/d1336b13-efd4-4227-b91a-018410c3029b', 101644.80, 11180.93, 0.11, 0.00, 0.00, 12000.00, 124825.73, NULL, 'Ahmad', 'Zarkasih', 'Jln.Tamsis', 'Jln.Kledokan', '081312344321', 'admin@gmail.com', '39', '5', 55783, NULL, '2024-07-30 22:03:42', '2024-07-30 22:03:43'),
('9ca6d0fd-0224-4972-a82f-1716f0a38476', '9ca3e129-8295-4b7e-b280-8434249d5d55', 'ORDER/2024/07/31/00004', 'PENDING', NULL, NULL, NULL, NULL, NULL, '2024-08-01 05:14:07', '2024-08-01 05:14:07', 'https://app.sandbox.midtrans.com/snap/v4/redirection/30a300be-c0b9-4fba-adae-aa545c04d5ce', 11155.80, 1227.14, 0.11, 0.00, 0.00, 7000.00, 19382.94, NULL, 'Ahmad', 'Zarkasih', 'Jln.Tamsis', 'Jln.Kledokan', '081312344321', 'admin@gmail.com', '39', '5', 55783, NULL, '2024-07-30 22:14:07', '2024-07-30 22:14:08'),
('9ca6f6ed-20ed-42e1-9164-8594b66b0853', '9ca3e129-8295-4b7e-b280-8434249d5d55', 'ORDER/2024/07/31/00005', 'PENDING', NULL, NULL, NULL, NULL, NULL, '2024-08-01 07:00:12', '2024-08-01 07:00:12', 'https://app.sandbox.midtrans.com/snap/v4/redirection/eb708075-5770-4954-95e5-6aad2f197782', 22311.60, 2454.28, 0.11, 0.00, 0.00, 7000.00, 31765.88, NULL, 'Ahmad', 'Zarkasih', 'Jln.Tamsis', 'Jln.Kledokan', '081312344321', 'admin@gmail.com', '39', '5', 55783, NULL, '2024-07-31 00:00:12', '2024-07-31 00:00:14'),
('9ca6fc95-6154-4196-ae1d-80a8a84ad9da', '9ca3e129-8295-4b7e-b280-8434249d5d55', 'ORDER/2024/07/31/00006', 'PENDING', NULL, NULL, NULL, NULL, NULL, '2024-08-01 07:16:01', '2024-08-01 07:16:01', 'https://app.sandbox.midtrans.com/snap/v4/redirection/39fb8de0-a348-45f6-9a5f-7a947ce75640', 101644.80, 11180.93, 0.11, 0.00, 0.00, 7000.00, 119825.73, NULL, 'Mamad', '-', 'Jln.Tamsis', 'Jln.Kledokan', '12345', 'admin@gmail.com', '39', '5', 55783, NULL, '2024-07-31 00:16:01', '2024-07-31 00:16:02'),
('9ca6fee2-ad7b-472f-8de6-d3460ebfbd20', '9ca3e129-8295-4b7e-b280-8434249d5d55', 'ORDER/2024/07/31/00007', 'PENDING', NULL, NULL, NULL, NULL, NULL, '2024-08-01 07:22:27', '2024-08-01 07:22:27', 'https://app.sandbox.midtrans.com/snap/v4/redirection/ce946723-f4b0-47c7-abd3-1acc4255b070', 11155.80, 1227.14, 0.11, 0.00, 0.00, 7000.00, 19382.94, NULL, 'Ahmad', 'Zarkasih', 'Jln.Tamsis', 'Jln.Kledokan', '081312344321', 'admin@gmail.com', '39', '5', 55783, NULL, '2024-07-31 00:22:27', '2024-07-31 00:22:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_order_items`
--

CREATE TABLE `shop_order_items` (
  `id` char(36) NOT NULL,
  `order_id` char(36) NOT NULL,
  `product_id` char(36) NOT NULL,
  `qty` int(11) NOT NULL,
  `base_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `base_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `sub_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `sku` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `attributes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`attributes`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shop_order_items`
--

INSERT INTO `shop_order_items` (`id`, `order_id`, `product_id`, `qty`, `base_price`, `base_total`, `tax_amount`, `tax_percent`, `discount_amount`, `discount_percent`, `sub_total`, `sku`, `type`, `name`, `attributes`, `created_at`, `updated_at`) VALUES
('9ca6c4f8-1985-4282-800e-e8a9a774ddf6', '9ca6c4f8-0d52-45c7-a3fe-6f78d9eaa462', '9ca3ceb3-3986-4ef7-866a-68bf7740d9e5', 1, 3984931.43, 3984931.43, 0.00, 0.00, 3984931.43, 100.00, 3984931.43, '1656148188', 'SIMPLE', 'iusto sapiente', '{}', '2024-07-30 21:40:30', '2024-07-30 21:40:30'),
('9ca6c4f8-1b83-4292-acdb-53373b944429', '9ca6c4f8-0d52-45c7-a3fe-6f78d9eaa462', '9ca3ceb2-dbf7-4975-b246-4770a99b0d52', 1, 101644.80, 101644.80, 0.00, 0.00, 101644.80, 100.00, 101644.80, '8962464039', 'SIMPLE', 'voluptatem quaerat', '{}', '2024-07-30 21:40:30', '2024-07-30 21:40:30'),
('9ca6c4f8-1ccf-4e69-b7a0-66a68ccb25f6', '9ca6c4f8-0d52-45c7-a3fe-6f78d9eaa462', '9ca3ceb3-551c-4fce-9cea-f613ab10b0d3', 1, 165.00, 165.00, 0.00, 0.00, 165.00, 100.00, 165.00, '4927653005', 'SIMPLE', 'quod esse', '{}', '2024-07-30 21:40:30', '2024-07-30 21:40:30'),
('9ca6c58b-ecb5-4e75-a34d-c7c3a86d26b2', '9ca6c58b-e24a-4440-90a5-b68d927a90c3', '9ca3ceb3-3986-4ef7-866a-68bf7740d9e5', 1, 3984931.43, 3984931.43, 0.00, 0.00, 3984931.43, 100.00, 3984931.43, '1656148188', 'SIMPLE', 'iusto sapiente', '{}', '2024-07-30 21:42:07', '2024-07-30 21:42:07'),
('9ca6c58b-ffce-4aea-b48d-d79a2a1f3fd8', '9ca6c58b-e24a-4440-90a5-b68d927a90c3', '9ca3ceb2-dbf7-4975-b246-4770a99b0d52', 1, 101644.80, 101644.80, 0.00, 0.00, 101644.80, 100.00, 101644.80, '8962464039', 'SIMPLE', 'voluptatem quaerat', '{}', '2024-07-30 21:42:07', '2024-07-30 21:42:07'),
('9ca6c58c-0454-4a97-bbe6-da497faae6a1', '9ca6c58b-e24a-4440-90a5-b68d927a90c3', '9ca3ceb3-551c-4fce-9cea-f613ab10b0d3', 1, 165.00, 165.00, 0.00, 0.00, 165.00, 100.00, 165.00, '4927653005', 'SIMPLE', 'quod esse', '{}', '2024-07-30 21:42:07', '2024-07-30 21:42:07'),
('9ca6cd43-b35f-4938-a8f8-470e25bc204f', '9ca6cd43-a8c7-4067-8487-8b973482371c', '9ca3ceb2-dbf7-4975-b246-4770a99b0d52', 1, 101644.80, 101644.80, 11180.93, 0.11, 101644.80, 100.00, 101644.80, '8962464039', 'SIMPLE', 'voluptatem quaerat', '{}', '2024-07-30 22:03:42', '2024-07-30 22:03:42'),
('9ca6d0fd-12ee-432c-90f6-716c750abfda', '9ca6d0fd-0224-4972-a82f-1716f0a38476', '9ca3ceb3-1871-464c-bde5-227d8ea054b3', 1, 11155.80, 11155.80, 1227.14, 0.11, 11155.80, 100.00, 11155.80, '6390013450', 'SIMPLE', 'repellat quo', '{}', '2024-07-30 22:14:07', '2024-07-30 22:14:07'),
('9ca6f6ed-2c78-4459-a6e5-9da81e37fc94', '9ca6f6ed-20ed-42e1-9164-8594b66b0853', '9ca3ceb3-1871-464c-bde5-227d8ea054b3', 2, 11155.80, 22311.60, 1227.14, 0.11, 11155.80, 100.00, 22311.60, '6390013450', 'SIMPLE', 'repellat quo', '{}', '2024-07-31 00:00:12', '2024-07-31 00:00:12'),
('9ca6fc95-6cdd-45d0-88fa-9f90e8ce986b', '9ca6fc95-6154-4196-ae1d-80a8a84ad9da', '9ca3ceb2-dbf7-4975-b246-4770a99b0d52', 1, 101644.80, 101644.80, 11180.93, 0.11, 101644.80, 100.00, 101644.80, '8962464039', 'SIMPLE', 'voluptatem quaerat', '{}', '2024-07-31 00:16:01', '2024-07-31 00:16:01'),
('9ca6fee2-bb64-4b5f-b02e-3e6ca0c61763', '9ca6fee2-ad7b-472f-8de6-d3460ebfbd20', '9ca3ceb3-1871-464c-bde5-227d8ea054b3', 1, 11155.80, 11155.80, 1227.14, 0.11, 11155.80, 100.00, 11155.80, '6390013450', 'SIMPLE', 'repellat quo', '{}', '2024-07-31 00:22:27', '2024-07-31 00:22:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_payments`
--

CREATE TABLE `shop_payments` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `order_id` char(36) NOT NULL,
  `code` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `approved_by` char(36) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `note` text DEFAULT NULL,
  `rejected_by` char(36) DEFAULT NULL,
  `rejected_at` datetime DEFAULT NULL,
  `rejection_note` text DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `payloads` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payloads`)),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_products`
--

CREATE TABLE `shop_products` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `sale_price` decimal(15,2) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `weight` int(11) NOT NULL DEFAULT 0,
  `stock_status` varchar(255) NOT NULL DEFAULT 'IN_STOCK',
  `manage_stock` tinyint(1) NOT NULL DEFAULT 0,
  `publish_date` datetime DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `metas` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metas`)),
  `featured_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shop_products`
--

INSERT INTO `shop_products` (`id`, `user_id`, `sku`, `type`, `parent_id`, `name`, `slug`, `price`, `sale_price`, `status`, `weight`, `stock_status`, `manage_stock`, `publish_date`, `excerpt`, `body`, `metas`, `featured_image`, `created_at`, `updated_at`, `deleted_at`) VALUES
('9ca3ceb2-9385-4733-8bea-972df6d9c494', '9ca3ce40-ae82-4819-aae4-a2f21a934a45', '7691250509', 'SIMPLE', NULL, 'ut neque', 'ut-neque', 85.03, NULL, 'ACTIVE', 100, 'IN_STOCK', 0, '2024-07-29 17:20:14', 'Eligendi perspiciatis voluptatum illum dolor qui aut. Eius magni non autem deleniti labore ipsam. Asperiores perspiciatis et quia perspiciatis ipsum. Omnis quam qui pariatur reprehenderit.', 'Sunt molestias est fugit repudiandae totam quidem quaerat. Quam ut tempore vel quae libero aspernatur dicta. Voluptatem architecto ea et explicabo qui.', NULL, NULL, '2024-07-29 10:20:14', '2024-07-29 10:20:14', NULL),
('9ca3ceb2-dbf7-4975-b246-4770a99b0d52', '9ca3ce40-ae82-4819-aae4-a2f21a934a45', '8962464039', 'SIMPLE', NULL, 'voluptatem quaerat', 'voluptatem-quaerat', 101644.80, NULL, 'ACTIVE', 100, 'IN_STOCK', 1, '2024-07-29 17:20:14', 'Sit et id qui occaecati tenetur aut harum. Sunt recusandae sit quasi ea. Nihil voluptatibus quia eveniet voluptatem tenetur eum ipsa.', 'Qui totam earum sunt eos aperiam commodi perspiciatis et. Illum est quibusdam reiciendis id. Quae consequuntur quo ad nihil natus possimus. Et laudantium ut dignissimos excepturi itaque laborum quo.', NULL, NULL, '2024-07-29 10:20:14', '2024-07-29 10:20:14', NULL),
('9ca3ceb2-fc1f-46a8-a02f-4f1bdd7b89b5', '9ca3ce40-ae82-4819-aae4-a2f21a934a45', '7465079101', 'SIMPLE', NULL, 'sit aut', 'sit-aut', 542.09, NULL, 'ACTIVE', 100, 'IN_STOCK', 0, '2024-07-29 17:20:14', 'Animi aut est sint quia. Aliquam tempora adipisci facere deserunt ex quae. Qui rerum excepturi eos nam quod.', 'Aliquid adipisci quidem vitae harum quam reiciendis. Iusto nesciunt id adipisci doloribus aut aspernatur. Quod corporis ipsa ad ad doloremque quasi occaecati.', NULL, NULL, '2024-07-29 10:20:14', '2024-07-29 10:20:14', NULL),
('9ca3ceb3-1871-464c-bde5-227d8ea054b3', '9ca3ce40-ae82-4819-aae4-a2f21a934a45', '6390013450', 'SIMPLE', NULL, 'repellat quo', 'repellat-quo', 11155.80, NULL, 'ACTIVE', 100, 'IN_STOCK', 1, '2024-07-29 17:20:14', 'Quisquam excepturi dicta excepturi necessitatibus ipsa repudiandae. Ad cupiditate explicabo natus repellat veritatis odit.', 'Est ipsum delectus sint. Amet similique sequi expedita repellendus. Dolor minus ut consequatur voluptatem.', NULL, NULL, '2024-07-29 10:20:14', '2024-07-29 10:20:14', NULL),
('9ca3ceb3-2971-47a9-ac08-46f946abb461', '9ca3ce40-ae82-4819-aae4-a2f21a934a45', '2683528833', 'SIMPLE', NULL, 'quis quaerat', 'quis-quaerat', 36909834.34, NULL, 'ACTIVE', 100, 'IN_STOCK', 0, '2024-07-29 17:20:14', 'Reiciendis quia quibusdam praesentium exercitationem omnis omnis. Dolore dolor vitae earum fugit dolore quo delectus. Eaque quia quisquam earum quo similique odio. Quidem quisquam rem aut rerum.', 'Nesciunt quia illo facilis consequatur eaque quasi id. Optio qui corrupti modi et optio voluptas.', NULL, NULL, '2024-07-29 10:20:14', '2024-07-29 10:20:14', NULL),
('9ca3ceb3-3986-4ef7-866a-68bf7740d9e5', '9ca3ce40-ae82-4819-aae4-a2f21a934a45', '1656148188', 'SIMPLE', NULL, 'iusto sapiente', 'iusto-sapiente', 3984931.43, NULL, 'ACTIVE', 100, 'IN_STOCK', 1, '2024-07-29 17:20:14', 'Laudantium sequi nisi tempora asperiores in sit velit rerum. Inventore nulla natus ab reprehenderit ratione. In ut inventore non sit fugiat.', 'Placeat et sint enim non et. Vel vero perspiciatis ipsum minus totam ducimus totam. Autem numquam tempore exercitationem quo magnam et. Suscipit tenetur vel eum aut.', NULL, NULL, '2024-07-29 10:20:14', '2024-07-29 10:20:14', NULL),
('9ca3ceb3-4929-4865-9e96-d16fc2eb08ce', '9ca3ce40-ae82-4819-aae4-a2f21a934a45', '7810209922', 'SIMPLE', NULL, 'adipisci hic', 'adipisci-hic', 2382429.67, NULL, 'ACTIVE', 100, 'IN_STOCK', 0, '2024-07-29 17:20:14', 'Sed vitae hic aut mollitia quo. Porro ea fuga id sit quisquam et assumenda. Corrupti voluptatem quis rerum.', 'Similique quasi maiores velit et. Possimus eligendi necessitatibus similique est. Sed cum laudantium illum. Similique facere aut modi.', NULL, NULL, '2024-07-29 10:20:14', '2024-07-29 10:20:14', NULL),
('9ca3ceb3-551c-4fce-9cea-f613ab10b0d3', '9ca3ce40-ae82-4819-aae4-a2f21a934a45', '4927653005', 'SIMPLE', NULL, 'quod esse', 'quod-esse', 165.00, NULL, 'ACTIVE', 100, 'IN_STOCK', 1, '2024-07-29 17:20:14', 'Totam pariatur sint deleniti dolorem veniam porro quia. Dolores et qui perspiciatis. Nemo eveniet aperiam neque aut. Non laboriosam eum ex ut dolor. Suscipit non eius placeat veritatis.', 'Delectus reiciendis officiis saepe nam assumenda. Tempora repudiandae in corporis. Ut inventore incidunt voluptatem repellat officia. Voluptas sint unde iusto expedita vel accusantium sint.', NULL, NULL, '2024-07-29 10:20:14', '2024-07-29 10:20:14', NULL),
('9ca3ceb3-633c-4028-bf61-a846097cea4a', '9ca3ce40-ae82-4819-aae4-a2f21a934a45', '5346671854', 'SIMPLE', NULL, 'dicta reiciendis', 'dicta-reiciendis', 4679.20, NULL, 'ACTIVE', 100, 'IN_STOCK', 1, '2024-07-29 17:20:14', 'Adipisci nihil placeat quo unde nisi similique. Distinctio illo iusto dolorum mollitia corrupti possimus incidunt. Magnam et animi aut ipsam quam error et. Sed aliquam sapiente enim ea amet et.', 'Nobis optio voluptas quia. Minus officia consectetur excepturi rerum dolor aut maxime. Explicabo nam dolores culpa optio non fugiat.', NULL, NULL, '2024-07-29 10:20:14', '2024-07-29 10:20:14', NULL),
('9ca3ceb3-7441-40c4-a923-e5690db1afb2', '9ca3ce40-ae82-4819-aae4-a2f21a934a45', '5255447463', 'SIMPLE', NULL, 'reiciendis rerum', 'reiciendis-rerum', 503510572.30, NULL, 'ACTIVE', 100, 'IN_STOCK', 1, '2024-07-29 17:20:14', 'Dolores praesentium voluptas ducimus perspiciatis quia sed. Nesciunt laboriosam cum nihil. Sint at sed sed id.', 'Et necessitatibus fuga aut qui voluptas minus optio. Rerum perferendis quia sunt provident optio. Nobis ex voluptatem facere repudiandae. Rerum maiores sint perferendis rerum.', NULL, NULL, '2024-07-29 10:20:14', '2024-07-29 10:20:14', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_products_tags`
--

CREATE TABLE `shop_products_tags` (
  `product_id` char(36) NOT NULL,
  `tag_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shop_products_tags`
--

INSERT INTO `shop_products_tags` (`product_id`, `tag_id`) VALUES
('9ca3ceb2-9385-4733-8bea-972df6d9c494', '9ca3ceb1-ee15-412c-a4b1-0b7678a2d721'),
('9ca3ceb2-9385-4733-8bea-972df6d9c494', '9ca3ceb1-f2ec-46b8-9fa6-71b9359ee1ec'),
('9ca3ceb2-dbf7-4975-b246-4770a99b0d52', '9ca3ceb1-ee15-412c-a4b1-0b7678a2d721'),
('9ca3ceb2-dbf7-4975-b246-4770a99b0d52', '9ca3ceb1-f2ec-46b8-9fa6-71b9359ee1ec'),
('9ca3ceb2-fc1f-46a8-a02f-4f1bdd7b89b5', '9ca3ceb1-ee15-412c-a4b1-0b7678a2d721'),
('9ca3ceb2-fc1f-46a8-a02f-4f1bdd7b89b5', '9ca3ceb1-f2ec-46b8-9fa6-71b9359ee1ec'),
('9ca3ceb3-1871-464c-bde5-227d8ea054b3', '9ca3ceb1-ee15-412c-a4b1-0b7678a2d721'),
('9ca3ceb3-1871-464c-bde5-227d8ea054b3', '9ca3ceb1-f2ec-46b8-9fa6-71b9359ee1ec'),
('9ca3ceb3-2971-47a9-ac08-46f946abb461', '9ca3ceb1-ee15-412c-a4b1-0b7678a2d721'),
('9ca3ceb3-2971-47a9-ac08-46f946abb461', '9ca3ceb1-f2ec-46b8-9fa6-71b9359ee1ec'),
('9ca3ceb3-3986-4ef7-866a-68bf7740d9e5', '9ca3ceb1-ee15-412c-a4b1-0b7678a2d721'),
('9ca3ceb3-3986-4ef7-866a-68bf7740d9e5', '9ca3ceb1-f2ec-46b8-9fa6-71b9359ee1ec'),
('9ca3ceb3-4929-4865-9e96-d16fc2eb08ce', '9ca3ceb1-ee15-412c-a4b1-0b7678a2d721'),
('9ca3ceb3-4929-4865-9e96-d16fc2eb08ce', '9ca3ceb1-f2ec-46b8-9fa6-71b9359ee1ec'),
('9ca3ceb3-551c-4fce-9cea-f613ab10b0d3', '9ca3ceb1-ee15-412c-a4b1-0b7678a2d721'),
('9ca3ceb3-551c-4fce-9cea-f613ab10b0d3', '9ca3ceb1-f2ec-46b8-9fa6-71b9359ee1ec'),
('9ca3ceb3-633c-4028-bf61-a846097cea4a', '9ca3ceb1-ee15-412c-a4b1-0b7678a2d721'),
('9ca3ceb3-633c-4028-bf61-a846097cea4a', '9ca3ceb1-f2ec-46b8-9fa6-71b9359ee1ec'),
('9ca3ceb3-7441-40c4-a923-e5690db1afb2', '9ca3ceb1-ee15-412c-a4b1-0b7678a2d721'),
('9ca3ceb3-7441-40c4-a923-e5690db1afb2', '9ca3ceb1-f2ec-46b8-9fa6-71b9359ee1ec');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_product_attributes`
--

CREATE TABLE `shop_product_attributes` (
  `id` char(36) NOT NULL,
  `product_id` char(36) NOT NULL,
  `attribute_id` char(36) NOT NULL,
  `string_value` varchar(255) DEFAULT NULL,
  `text_value` text DEFAULT NULL,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` decimal(8,2) DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shop_product_attributes`
--

INSERT INTO `shop_product_attributes` (`id`, `product_id`, `attribute_id`, `string_value`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `created_at`, `updated_at`) VALUES
('9ca3ceb2-d925-408f-8dda-44bc3cc70e95', '9ca3ceb2-9385-4733-8bea-972df6d9c494', '9ca3ceb1-9109-4cb5-8b17-0e6e2d669c52', NULL, NULL, NULL, 1176, NULL, NULL, NULL, NULL, '2024-07-29 10:20:14', '2024-07-29 10:20:14'),
('9ca3ceb2-e662-4ba1-a9a9-963e6e117a43', '9ca3ceb2-dbf7-4975-b246-4770a99b0d52', '9ca3ceb1-9109-4cb5-8b17-0e6e2d669c52', NULL, NULL, NULL, 1203, NULL, NULL, NULL, NULL, '2024-07-29 10:20:14', '2024-07-29 10:20:14'),
('9ca3ceb3-1447-46d4-bc3c-dbf4f1e6d09c', '9ca3ceb2-fc1f-46a8-a02f-4f1bdd7b89b5', '9ca3ceb1-9109-4cb5-8b17-0e6e2d669c52', NULL, NULL, NULL, 723, NULL, NULL, NULL, NULL, '2024-07-29 10:20:14', '2024-07-29 10:20:14'),
('9ca3ceb3-23b4-4b26-8e3a-7a3d5832e1b9', '9ca3ceb3-1871-464c-bde5-227d8ea054b3', '9ca3ceb1-9109-4cb5-8b17-0e6e2d669c52', NULL, NULL, NULL, 1153, NULL, NULL, NULL, NULL, '2024-07-29 10:20:14', '2024-07-29 10:20:14'),
('9ca3ceb3-3673-4048-b0d7-6539841412bd', '9ca3ceb3-2971-47a9-ac08-46f946abb461', '9ca3ceb1-9109-4cb5-8b17-0e6e2d669c52', NULL, NULL, NULL, 661, NULL, NULL, NULL, NULL, '2024-07-29 10:20:14', '2024-07-29 10:20:14'),
('9ca3ceb3-44d6-4964-8245-52f9c20e8505', '9ca3ceb3-3986-4ef7-866a-68bf7740d9e5', '9ca3ceb1-9109-4cb5-8b17-0e6e2d669c52', NULL, NULL, NULL, 1792, NULL, NULL, NULL, NULL, '2024-07-29 10:20:14', '2024-07-29 10:20:14'),
('9ca3ceb3-5299-472d-8c1e-7476638deedb', '9ca3ceb3-4929-4865-9e96-d16fc2eb08ce', '9ca3ceb1-9109-4cb5-8b17-0e6e2d669c52', NULL, NULL, NULL, 817, NULL, NULL, NULL, NULL, '2024-07-29 10:20:14', '2024-07-29 10:20:14'),
('9ca3ceb3-5edf-4c1d-a26d-7d049fb99df7', '9ca3ceb3-551c-4fce-9cea-f613ab10b0d3', '9ca3ceb1-9109-4cb5-8b17-0e6e2d669c52', NULL, NULL, NULL, 1270, NULL, NULL, NULL, NULL, '2024-07-29 10:20:14', '2024-07-29 10:20:14'),
('9ca3ceb3-6e82-4b2a-83b6-197ee91ec30b', '9ca3ceb3-633c-4028-bf61-a846097cea4a', '9ca3ceb1-9109-4cb5-8b17-0e6e2d669c52', NULL, NULL, NULL, 1107, NULL, NULL, NULL, NULL, '2024-07-29 10:20:14', '2024-07-29 10:20:14'),
('9ca3ceb3-8165-4ddf-9351-914f8c637ea2', '9ca3ceb3-7441-40c4-a923-e5690db1afb2', '9ca3ceb1-9109-4cb5-8b17-0e6e2d669c52', NULL, NULL, NULL, 1503, NULL, NULL, NULL, NULL, '2024-07-29 10:20:14', '2024-07-29 10:20:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_product_inventories`
--

CREATE TABLE `shop_product_inventories` (
  `id` char(36) NOT NULL,
  `product_id` char(36) NOT NULL,
  `product_attribute_id` char(36) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `low_stock_threshold` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shop_product_inventories`
--

INSERT INTO `shop_product_inventories` (`id`, `product_id`, `product_attribute_id`, `qty`, `low_stock_threshold`, `created_at`, `updated_at`) VALUES
('9ca3ceb2-f70f-414f-b68e-7150515238af', '9ca3ceb2-dbf7-4975-b246-4770a99b0d52', NULL, 8, 2, '2024-07-29 10:20:14', '2024-07-29 10:20:14'),
('9ca3ceb3-2627-4c53-8fd1-053096ffd606', '9ca3ceb3-1871-464c-bde5-227d8ea054b3', NULL, 18, 1, '2024-07-29 10:20:14', '2024-07-29 10:20:14'),
('9ca3ceb3-46eb-4496-9c2c-8a7f0b1baa18', '9ca3ceb3-3986-4ef7-866a-68bf7740d9e5', NULL, 14, 3, '2024-07-29 10:20:14', '2024-07-29 10:20:14'),
('9ca3ceb3-60c0-4f23-8dd5-82189c910a0f', '9ca3ceb3-551c-4fce-9cea-f613ab10b0d3', NULL, 19, 3, '2024-07-29 10:20:14', '2024-07-29 10:20:14'),
('9ca3ceb3-70f1-4b76-a560-8d6b7b39c760', '9ca3ceb3-633c-4028-bf61-a846097cea4a', NULL, 16, 3, '2024-07-29 10:20:14', '2024-07-29 10:20:14'),
('9ca3ceb3-83df-4fb3-9913-d33d7fe8f839', '9ca3ceb3-7441-40c4-a923-e5690db1afb2', NULL, 6, 3, '2024-07-29 10:20:14', '2024-07-29 10:20:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `shop_tags`
--

CREATE TABLE `shop_tags` (
  `id` char(36) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shop_tags`
--

INSERT INTO `shop_tags` (`id`, `slug`, `name`, `created_at`, `updated_at`) VALUES
('9ca3ceb1-ee15-412c-a4b1-0b7678a2d721', 'iste-aut', 'Iste aut.', '2024-07-29 10:20:13', '2024-07-29 10:20:13'),
('9ca3ceb1-f2ec-46b8-9fa6-71b9359ee1ec', 'possimus-impedit-ut', 'Possimus impedit ut.', '2024-07-29 10:20:13', '2024-07-29 10:20:13'),
('9ca3ceb1-f4df-400e-9763-7f6bb0fb91e8', 'enim-in', 'Enim in.', '2024-07-29 10:20:13', '2024-07-29 10:20:13'),
('9ca3ceb1-f836-496e-b23f-a5a154aeea2a', 'cumque-id', 'Cumque id.', '2024-07-29 10:20:13', '2024-07-29 10:20:13'),
('9ca3ceb1-fa12-4cdb-87c7-274231fc69be', 'esse-sit', 'Esse sit.', '2024-07-29 10:20:13', '2024-07-29 10:20:13'),
('9ca3ceb1-fbfc-476b-9f57-cc61ac90baa0', 'excepturi-ipsum-omnis', 'Excepturi ipsum omnis.', '2024-07-29 10:20:13', '2024-07-29 10:20:13'),
('9ca3ceb1-fdf9-460f-a606-e34482c03ddf', 'nesciunt-at', 'Nesciunt at.', '2024-07-29 10:20:13', '2024-07-29 10:20:13'),
('9ca3ceb1-ffb5-4d6b-8564-f8caf3af1504', 'nihil-et-reprehenderit', 'Nihil et reprehenderit.', '2024-07-29 10:20:13', '2024-07-29 10:20:13'),
('9ca3ceb2-019a-43ec-ad81-5b9c222adfa2', 'necessitatibus-est', 'Necessitatibus est.', '2024-07-29 10:20:13', '2024-07-29 10:20:13'),
('9ca3ceb2-0355-46ce-aec2-7fb36495e932', 'saepe-est', 'Saepe est.', '2024-07-29 10:20:13', '2024-07-29 10:20:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
('9ca3ce40-ae82-4819-aae4-a2f21a934a45', 'Lauryn Lakin', 'reilly.vanessa@example.org', '2024-07-29 10:18:57', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'am1ND1rAhD', '2024-07-29 10:19:00', '2024-07-29 10:19:00'),
('9ca3ceac-7d5d-44e4-b071-827ee982d97d', 'Theodore Mosciski', 'kali.rodriguez@example.com', '2024-07-29 10:20:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TsrLAGEpey', '2024-07-29 10:20:10', '2024-07-29 10:20:10'),
('9ca3e129-8295-4b7e-b280-8434249d5d55', 'Joanes mardi moko', 'admin@gmail.com', NULL, '$2y$10$6pOSSBbMW1YVIV2wfPXgGO1w6fDrXhvxv7v7qSH5E0fy0eqLTEV7e', NULL, '2024-07-29 11:11:51', '2024-07-29 11:11:51');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `shop_addresses`
--
ALTER TABLE `shop_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_addresses_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `shop_attributes`
--
ALTER TABLE `shop_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `shop_attribute_options`
--
ALTER TABLE `shop_attribute_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_attribute_options_attribute_id_index` (`attribute_id`);

--
-- Indeks untuk tabel `shop_carts`
--
ALTER TABLE `shop_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_carts_user_id_index` (`user_id`),
  ADD KEY `shop_carts_expired_at_index` (`expired_at`);

--
-- Indeks untuk tabel `shop_cart_items`
--
ALTER TABLE `shop_cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_cart_items_cart_id_foreign` (`cart_id`),
  ADD KEY `shop_cart_items_product_id_foreign` (`product_id`);

--
-- Indeks untuk tabel `shop_categories`
--
ALTER TABLE `shop_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_categories_slug_parent_id_unique` (`slug`,`parent_id`),
  ADD KEY `shop_categories_created_at_index` (`created_at`),
  ADD KEY `shop_categories_parent_id_index` (`parent_id`);

--
-- Indeks untuk tabel `shop_categories_products`
--
ALTER TABLE `shop_categories_products`
  ADD UNIQUE KEY `shop_categories_products_product_id_category_id_unique` (`product_id`,`category_id`),
  ADD KEY `shop_categories_products_category_id_foreign` (`category_id`);

--
-- Indeks untuk tabel `shop_orders`
--
ALTER TABLE `shop_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_orders_code_unique` (`code`),
  ADD KEY `shop_orders_approved_by_foreign` (`approved_by`),
  ADD KEY `shop_orders_cancelled_by_foreign` (`cancelled_by`),
  ADD KEY `shop_orders_code_index` (`code`),
  ADD KEY `shop_orders_code_order_date_index` (`code`,`order_date`),
  ADD KEY `shop_orders_user_id_index` (`user_id`);

--
-- Indeks untuk tabel `shop_order_items`
--
ALTER TABLE `shop_order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_order_items_order_id_foreign` (`order_id`),
  ADD KEY `shop_order_items_product_id_foreign` (`product_id`),
  ADD KEY `shop_order_items_sku_index` (`sku`);

--
-- Indeks untuk tabel `shop_payments`
--
ALTER TABLE `shop_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_payments_payment_type_index` (`payment_type`),
  ADD KEY `shop_payments_user_id_index` (`user_id`),
  ADD KEY `shop_payments_order_id_index` (`order_id`),
  ADD KEY `shop_payments_code_index` (`code`);

--
-- Indeks untuk tabel `shop_products`
--
ALTER TABLE `shop_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_products_sku_parent_id_unique` (`sku`,`parent_id`),
  ADD KEY `shop_products_user_id_index` (`user_id`),
  ADD KEY `shop_products_parent_id_index` (`parent_id`),
  ADD KEY `shop_products_publish_date_index` (`publish_date`);

--
-- Indeks untuk tabel `shop_products_tags`
--
ALTER TABLE `shop_products_tags`
  ADD UNIQUE KEY `shop_products_tags_product_id_tag_id_unique` (`product_id`,`tag_id`),
  ADD KEY `shop_products_tags_tag_id_foreign` (`tag_id`);

--
-- Indeks untuk tabel `shop_product_attributes`
--
ALTER TABLE `shop_product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_product_attributes_product_id_foreign` (`product_id`),
  ADD KEY `shop_product_attributes_attribute_id_foreign` (`attribute_id`);

--
-- Indeks untuk tabel `shop_product_inventories`
--
ALTER TABLE `shop_product_inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_product_inventories_product_id_foreign` (`product_id`),
  ADD KEY `shop_product_inventories_product_attribute_id_foreign` (`product_attribute_id`);

--
-- Indeks untuk tabel `shop_tags`
--
ALTER TABLE `shop_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_tags_slug_unique` (`slug`),
  ADD KEY `shop_tags_created_at_index` (`created_at`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `shop_addresses`
--
ALTER TABLE `shop_addresses`
  ADD CONSTRAINT `shop_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `shop_attribute_options`
--
ALTER TABLE `shop_attribute_options`
  ADD CONSTRAINT `shop_attribute_options_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `shop_attributes` (`id`);

--
-- Ketidakleluasaan untuk tabel `shop_carts`
--
ALTER TABLE `shop_carts`
  ADD CONSTRAINT `shop_carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `shop_cart_items`
--
ALTER TABLE `shop_cart_items`
  ADD CONSTRAINT `shop_cart_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `shop_carts` (`id`),
  ADD CONSTRAINT `shop_cart_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`);

--
-- Ketidakleluasaan untuk tabel `shop_categories_products`
--
ALTER TABLE `shop_categories_products`
  ADD CONSTRAINT `shop_categories_products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `shop_categories` (`id`),
  ADD CONSTRAINT `shop_categories_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`);

--
-- Ketidakleluasaan untuk tabel `shop_orders`
--
ALTER TABLE `shop_orders`
  ADD CONSTRAINT `shop_orders_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `shop_orders_cancelled_by_foreign` FOREIGN KEY (`cancelled_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `shop_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `shop_order_items`
--
ALTER TABLE `shop_order_items`
  ADD CONSTRAINT `shop_order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `shop_orders` (`id`),
  ADD CONSTRAINT `shop_order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`);

--
-- Ketidakleluasaan untuk tabel `shop_payments`
--
ALTER TABLE `shop_payments`
  ADD CONSTRAINT `shop_payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `shop_orders` (`id`),
  ADD CONSTRAINT `shop_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `shop_products`
--
ALTER TABLE `shop_products`
  ADD CONSTRAINT `shop_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `shop_products_tags`
--
ALTER TABLE `shop_products_tags`
  ADD CONSTRAINT `shop_products_tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`),
  ADD CONSTRAINT `shop_products_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `shop_tags` (`id`);

--
-- Ketidakleluasaan untuk tabel `shop_product_attributes`
--
ALTER TABLE `shop_product_attributes`
  ADD CONSTRAINT `shop_product_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `shop_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shop_product_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `shop_product_inventories`
--
ALTER TABLE `shop_product_inventories`
  ADD CONSTRAINT `shop_product_inventories_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `shop_product_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shop_product_inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
