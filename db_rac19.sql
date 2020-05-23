-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2020 at 09:23 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rac19`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 2),
(18, '2019_08_19_000000_create_failed_jobs_table', 3),
(24, '2020_05_14_073824_create_t_daerah', 4),
(25, '2020_05_14_074932_create_t_rumah_sakit', 5),
(26, '2020_05_14_074905_create_t_pasien', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_daerah`
--

CREATE TABLE `t_daerah` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_daerah` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_daerah` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jml_pend` bigint(20) NOT NULL,
  `jml_positif` bigint(20) NOT NULL,
  `jml_sembuh` bigint(20) NOT NULL,
  `jml_meninggal` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_daerah`
--

INSERT INTO `t_daerah` (`id`, `kode_daerah`, `nama_daerah`, `jml_pend`, `jml_positif`, `jml_sembuh`, `jml_meninggal`, `created_at`, `updated_at`) VALUES
(5, 'BDG', 'Bandung', 1000005, 0, 0, 0, '2020-05-17 02:47:43', '2020-05-21 23:38:03'),
(6, 'JKT', 'Jakarta', 1000000, 0, 0, 0, '2020-05-18 02:59:54', '2020-05-18 02:59:54');

-- --------------------------------------------------------

--
-- Table structure for table `t_pasien`
--

CREATE TABLE `t_pasien` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_pasien` int(11) NOT NULL,
  `nik` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenkel` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_daerah` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_rs` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_pasien`
--

INSERT INTO `t_pasien` (`id`, `no_pasien`, `nik`, `nama`, `jenkel`, `kode_daerah`, `alamat`, `status`, `kode_rs`, `created_at`, `updated_at`) VALUES
(2, 1, '3272347220861119', 'NamaKu', 'L', 'BDG', 'Bandung, Jawa Barat, Indonesia', 'OTG', 'RSemb', '2020-05-18 23:38:00', '2020-05-22 00:13:41'),
(3, 2, '3272347220861120', 'May Nem', 'P', 'JKT', 'Kampung Rambutan, Jakarta, Indonesia', 'ODP', 'Rshat', '2020-05-18 23:38:50', '2020-05-22 00:13:50');

-- --------------------------------------------------------

--
-- Table structure for table `t_rumah_sakit`
--

CREATE TABLE `t_rumah_sakit` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_rs` char(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_rs` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_daerah` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jml_pasien` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_rumah_sakit`
--

INSERT INTO `t_rumah_sakit` (`id`, `kode_rs`, `nama_rs`, `kode_daerah`, `alamat`, `jml_pasien`, `created_at`, `updated_at`) VALUES
(2, 'RSemb', 'RS Sembuh', 'BDG', 'Bandung, Jawa Barat, Indonesia', 0, '2020-05-17 03:11:49', '2020-05-22 01:03:11'),
(4, 'Rshat', 'RS Sehat', 'JKT', 'Jalan Kampung Rambutan', 0, '2020-05-18 03:14:50', '2020-05-18 03:14:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ramdan Rohendi', 'ramdanrohendi@gmail.com', NULL, '$2y$10$8MZMvFyfq/zIKSFrlDq0numFj/.eigWt8..LhfqNycp8H0XtEt/zK', '9D9wSystm93Q5ZEOtLoZf7xYfm6dee3WfPQPH61kcx0QQQYMvHUUol4rYO0A', '2020-05-10 01:45:47', '2020-05-22 00:03:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `t_daerah`
--
ALTER TABLE `t_daerah`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `t_daerah_kode_daerah_unique` (`kode_daerah`);

--
-- Indexes for table `t_pasien`
--
ALTER TABLE `t_pasien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `t_pasien_no_pasien_unique` (`no_pasien`),
  ADD KEY `t_pasien_kode_daerah_foreign` (`kode_daerah`),
  ADD KEY `t_pasien_kode_rs_foreign` (`kode_rs`);

--
-- Indexes for table `t_rumah_sakit`
--
ALTER TABLE `t_rumah_sakit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `t_rumah_sakit_kode_rs_unique` (`kode_rs`),
  ADD KEY `t_rumah_sakit_kode_daerah_foreign` (`kode_daerah`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `t_daerah`
--
ALTER TABLE `t_daerah`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `t_pasien`
--
ALTER TABLE `t_pasien`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `t_rumah_sakit`
--
ALTER TABLE `t_rumah_sakit`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_pasien`
--
ALTER TABLE `t_pasien`
  ADD CONSTRAINT `t_pasien_kode_daerah_foreign` FOREIGN KEY (`kode_daerah`) REFERENCES `t_daerah` (`kode_daerah`),
  ADD CONSTRAINT `t_pasien_kode_rs_foreign` FOREIGN KEY (`kode_rs`) REFERENCES `t_rumah_sakit` (`kode_rs`);

--
-- Constraints for table `t_rumah_sakit`
--
ALTER TABLE `t_rumah_sakit`
  ADD CONSTRAINT `t_rumah_sakit_kode_daerah_foreign` FOREIGN KEY (`kode_daerah`) REFERENCES `t_daerah` (`kode_daerah`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
