-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2024 at 06:51 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_nuxt_api`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(18, 'App\\Models\\User', 2, 'myToken', '0465112ba6f0d4c8fd2042f6b08814ab09a8551a12c5e207bb0d3d136e517a51', '[\"*\"]', NULL, NULL, '2024-01-30 04:43:40', '2024-01-30 04:43:40'),
(19, 'App\\Models\\User', 3, 'myToken', '30f0e53786a5dfd28d8689a57b3d3c9666e419ff3db6464a5361831507c00768', '[\"*\"]', NULL, NULL, '2024-01-30 04:48:45', '2024-01-30 04:48:45'),
(20, 'App\\Models\\User', 4, 'myToken', '7dae49b02bc0ef8f40a2f5562ff0c8a8994f862810882e7dd2eb83ed95808b1f', '[\"*\"]', NULL, NULL, '2024-01-30 04:59:52', '2024-01-30 04:59:52'),
(21, 'App\\Models\\User', 5, 'myToken', 'de6dd1d43d73417b174f9fac43bbe0053a955260dede13f970a1dc1d09534c43', '[\"*\"]', NULL, NULL, '2024-01-30 05:00:39', '2024-01-30 05:00:39'),
(22, 'App\\Models\\User', 6, 'myToken', '900484700ecd7515c16b9d4a6c13d673d7da08f6c2e3ff151d3a201a72bc8cd2', '[\"*\"]', NULL, NULL, '2024-01-30 05:01:37', '2024-01-30 05:01:37'),
(23, 'App\\Models\\User', 7, 'myToken', '382edc3043659d4178e3c9e73fcd232460cd82c84d449288b21c0875ac3138b4', '[\"*\"]', NULL, NULL, '2024-01-30 05:05:18', '2024-01-30 05:05:18'),
(25, 'App\\Models\\User', 8, 'myToken', 'f739db3a2f00e5037e56cc93a3bf94f43455bcb63cfe42e47fec6bcd7e9a937e', '[\"*\"]', NULL, NULL, '2024-01-30 05:06:07', '2024-01-30 05:06:07'),
(26, 'App\\Models\\User', 9, 'myToken', 'e16b4426dca850fc13d6e484fb41f0e60c5bed4459c407e4d5de9b90efa2c598', '[\"*\"]', NULL, NULL, '2024-01-30 05:16:07', '2024-01-30 05:16:07'),
(30, 'App\\Models\\User', 10, 'myToken', 'ea6454ba2b395f11dd379db992e17433e674c08a2cd0cfd76a6fee1d20420121', '[\"*\"]', NULL, NULL, '2024-01-30 05:27:34', '2024-01-30 05:27:34');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2024-01-29 12:18:44', '$2y$12$4nVOE48AdVfmeApzY31thu2C3vaHdjD/sW4RTiAe/SCfTm0FyJ9o6', '9UtkMq390p', '2024-01-29 12:18:45', '2024-01-29 12:18:45'),
(2, 'Dipankar Biswas', 'admin@gmail.com', NULL, '$2y$12$WM9LoQbP/allwIadRsMHbO/wwta/TQMdD8GlFC4fscUNItAGuVLui', NULL, '2024-01-30 04:43:40', '2024-01-30 04:43:40'),
(3, 'Gretchen Norton', 'xyboxapecu@mailinator.com', NULL, '$2y$12$jRuAMwNT5mA6b.NgGbeYZOJkvisB8rx/Z2B8Vil28jx3kpipVeefK', NULL, '2024-01-30 04:48:45', '2024-01-30 04:48:45'),
(4, 'Maggie Reyes', 'gerahuci@mailinator.com', NULL, '$2y$12$U4C4YK5zIDAngjSNh.rZYO7sKa2yR7i6vkBHU.csxnqWTPLqOaV92', NULL, '2024-01-30 04:59:52', '2024-01-30 04:59:52'),
(5, 'Mary Deleon', 'xafyjis@mailinator.com', NULL, '$2y$12$N4BJkfnbu7P5vZSCMTBE/eiTsJ2kg2xu6Ik/ws6Q.0SEYSNccnjb6', NULL, '2024-01-30 05:00:39', '2024-01-30 05:00:39'),
(6, 'Ciara Christensen', 'mybicace@mailinator.com', NULL, '$2y$12$cpdXycl3LX4WPk3FrIchK.XoLsC0JN0NFWsvtYgdx7p2lnZPdWleq', NULL, '2024-01-30 05:01:37', '2024-01-30 05:01:37'),
(7, 'Cara Larson', 'mezolexemy@mailinator.com', NULL, '$2y$12$SpOxvh8wSVgVggVAP3don.XKmXZyMvTKvjXdY5ZMyxzuIehbBoK4e', NULL, '2024-01-30 05:05:17', '2024-01-30 05:05:17'),
(8, 'Wilma Parker', 'dyqotoluti@mailinator.com', NULL, '$2y$12$BHzFwYRwULIIoV2RP6QbiuuLPkyjyWL3msvItO.gQdl/JlrI1O0xC', NULL, '2024-01-30 05:06:07', '2024-01-30 05:06:07'),
(9, 'Aileen Fry', 'jebinij@mailinator.com', NULL, '$2y$12$8Fgwrq7tGAstaWq15yYD3OTfzrsZQfkn68bei86iCnvKfnMrNIk8i', NULL, '2024-01-30 05:16:07', '2024-01-30 05:16:07'),
(10, 'Brynn Rivas', 'fyrolunus@mailinator.com', NULL, '$2y$12$2a1IAcPkIBMPezSXzwnsgOLU7pc/LfyfZYkyC7X6AZi45Hr3rLB0S', NULL, '2024-01-30 05:27:34', '2024-01-30 05:27:34');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
