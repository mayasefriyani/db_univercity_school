-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 29, 2024 at 02:42 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_univercity_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `kutipan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `judul`, `slug`, `gambar`, `user_id`, `category_id`, `kutipan`, `isi`, `created_at`, `updated_at`) VALUES
(1, 'Perlombaan Olimpiade Matematika Tingkat Nasional', 'perlombaan-olimpiade-matematika-tingkat-nasional', 'gVm5kEWYhnGaZqyQhQwwfPg4lJLwuDMeoJdrpdWd.jpg', 2, 2, 'Pencapaian adalah hasil yang berhasil diraih seseorang setelah melalui usaha, kerja keras, atau perjuangan dalam mencapai tujuan tertentu.', '<p><strong>Pencapaian</strong> adalah hasil yang berhasil diraih seseorang setelah melalui usaha, kerja keras, atau perjuangan dalam mencapai tujuan tertentu.</p>', '2024-11-28 04:22:08', '2024-11-28 04:22:08'),
(2, 'Perlombaan Olimpiade Matematika Tingkat Nasional', 'perlombaan-olimpiade-matematika-tingkat-nasional-2', 'qI1WLdJaFtdPHKi8zJIFuZqADuEKPQOTQCgUio7j.jpg', 2, 2, 'Prestasi merujuk pada pencapaian atau hasil yang luar biasa yang diperoleh seseorang dalam berbagai bidang, seperti akademik, olahraga, seni, atau pek...', '<p><strong>Prestasi</strong> merujuk pada pencapaian atau hasil yang luar biasa yang diperoleh seseorang dalam berbagai bidang, seperti akademik, olahraga, seni, atau pekerjaan.</p>', '2024-11-28 04:27:42', '2024-11-28 04:27:42'),
(3, 'Perlombaan Olimpiade Matematika', 'perlombaan-olimpiade-matematika', 'Olc2aMB1SOTS96pCqOpk0qXoW3vWnFCbR3N1VlIW.jpg', 2, 2, 'Prestasi merujuk pada pencapaian atau hasil yang luar biasa yang diperoleh seseorang dalam berbagai bidang, seperti akademik, olahraga, seni, atau pek...', '<p><strong>Prestasi</strong> merujuk pada pencapaian atau hasil yang luar biasa yang diperoleh seseorang dalam berbagai bidang, seperti akademik, olahraga, seni, atau pekerjaan.</p>', '2024-11-28 04:29:22', '2024-11-28 04:29:22');

-- --------------------------------------------------------

--
-- Table structure for table `article_tag`
--

CREATE TABLE `article_tag` (
  `article_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_tag`
--

INSERT INTO `article_tag` (`article_id`, `tag_id`) VALUES
(1, 1),
(2, 3),
(2, 4),
(3, 5),
(3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `nama`, `slug`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Fasilitas & Ekstrakulikuler', 'fasilitas-ekstrakulikuler', 'Ekstrakurikuler adalah kegiatan tambahan di luar kurikulum utama yang biasanya diadakan oleh sekolah atau institusi pendidikan.', '2024-11-28 04:12:28', '2024-11-28 04:12:28'),
(2, 'Prestasi Dan Olimpiade', 'prestasi-dan-olimpiade', 'Prestasi dan olimpiade mendorong siswa untuk terus belajar, berkompetisi secara sehat, dan mencapai potensi terbaik mereka.', '2024-11-28 04:13:50', '2024-11-28 04:13:50'),
(3, 'Akademik', 'akademik', 'Kegiatan akademik adalah aktivitas yang berhubungan langsung dengan proses pembelajaran formal dan pengembangan intelektual siswa atau mahasiswa di lingkungan pendidikan.', '2024-11-28 04:14:40', '2024-11-28 04:14:40'),
(4, 'Graduation', 'graduation', 'Kelulusan adalah momen atau pencapaian di mana seseorang dinyatakan telah berhasil menyelesaikan suatu program pendidikan atau pelatihan sesuai dengan standar dan kriteria yang ditetapkan oleh institusi pendidikan.', '2024-11-28 04:15:08', '2024-11-28 04:15:08'),
(5, 'Pendaftaran Siswa Siswi Baru', 'pendaftaran-siswa-siswi-baru', 'Pendaftaran siswa-siswi baru adalah proses yang memungkinkan calon siswa untuk mendaftar dan bergabung dengan institusi pendidikan, seperti sekolah dasar, menengah, atau perguruan tinggi.', '2024-11-28 13:50:51', '2024-11-28 13:50:51'),
(6, 'Non Akademik', 'non-akademik', 'Kegiatan non-akademik adalah aktivitas yang dilakukan di luar jam pelajaran atau program akademik yang bertujuan untuk mendukung pengembangan pribadi, keterampilan sosial, fisik, dan kreatif siswa.', '2024-11-28 13:52:15', '2024-11-28 13:52:15'),
(7, 'Graduation', 'graduation-2', 'Kelulusan adalah proses formal yang menandai bahwa seorang siswa atau mahasiswa telah menyelesaikan seluruh persyaratan akademik dan administratif yang ditetapkan oleh lembaga pendidikan, seperti sekolah atau perguruan tinggi.', '2024-11-28 13:53:31', '2024-11-28 13:53:31'),
(8, 'Organisasi', 'organisasi', 'Organisasi adalah kelompok orang yang bekerja bersama untuk mencapai tujuan atau sasaran tertentu. Organisasi dapat berbentuk formal maupun informal, dengan struktur yang teratur dan pembagian tugas yang jelas.', '2024-11-28 13:54:30', '2024-11-28 13:54:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_11_19_094938_create_users_table', 1),
(2, '2024_11_21_004815_create_slides_table', 2),
(3, '2024_11_24_215535_create_categories_table', 3),
(4, '2024_11_26_032744_create_tags_table', 4),
(5, '2024_11_26_025958_create_articles_table', 5),
(6, '2024_11_27_203137_create_article_tag_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kutipan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `judul`, `gambar`, `kutipan`, `created_at`, `updated_at`) VALUES
(1, 'Selamat Datang di School Univercity', 'G2MXrO5FyZntK8XGxcsmUvE88lfeiXESFBalZt0e.jpg', '<p><strong>University School</strong> adalah institusi pendidikan yang menggabungkan sistem pendidikan sekolah dengan persiapan untuk jenjang universitas.</p>', '2024-11-28 04:17:47', '2024-11-28 04:17:47'),
(2, 'Visi Dan Misi', 'kM9rFoPTuuuEORVJ14eNMYVHNJ3jTIhniteZpVBP.jpg', '<p><br>Menjadi lembaga pendidikan unggul yang mencetak generasi cerdas, berkarakter, dan siap bersaing di tingkat global.</p>', '2024-11-28 04:19:26', '2024-11-28 14:12:52'),
(3, 'PPBD', '2AUzlgG2mC9aMG6GMhxPlYYobsZxJpiGPdBz0oQ8.jpg', '<p><strong>PPBD</strong> (Penerimaan Peserta Didik Baru) adalah proses seleksi dan penerimaan calon siswa untuk masuk ke suatu lembaga pendidikan, seperti sekolah atau universitas.</p>', '2024-11-28 04:20:48', '2024-11-28 19:11:07');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default-slug',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'prestasi', 'default-slug', '2024-11-28 04:22:08', '2024-11-28 04:22:08'),
(3, 'prestasi', 'prestasi', '2024-11-28 04:27:42', '2024-11-28 04:27:42'),
(4, 'akademik', 'akademik', '2024-11-28 04:27:42', '2024-11-28 04:27:42'),
(5, 'prestasi', 'prestasi-JlGNK', '2024-11-28 04:29:22', '2024-11-28 04:29:22'),
(6, 'akademik', 'akademik-GdN79', '2024-11-28 04:29:22', '2024-11-28 04:29:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
(1, 'Test User', 'test@example.com', '2024-11-28 00:45:47', '$2y$12$/azG1R.AV3BQGSwzExYlNePqW95hiQxfpQsQJs0y31FXO/P8Dupyi', 'eZAsD6EU0NeWwu9hgadtO9iEyAKkM64VLFqULMBjRkKhQvlPaZyGrvYztcCR', '2024-11-28 00:45:47', '2024-11-28 00:45:47'),
(2, 'Sefriyani Maya', 'admin@school.com', NULL, '$2y$12$fIGF8L03NdRlTHimR5rg/e3wWoUmUp4WLhhqmKxaup/fjrLZlykMe', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_slug_unique` (`slug`),
  ADD KEY `articles_user_id_foreign` (`user_id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Indexes for table `article_tag`
--
ALTER TABLE `article_tag`
  ADD KEY `article_tag_article_id_foreign` (`article_id`),
  ADD KEY `article_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `article_tag`
--
ALTER TABLE `article_tag`
  ADD CONSTRAINT `article_tag_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`),
  ADD CONSTRAINT `article_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
