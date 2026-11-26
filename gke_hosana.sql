-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 26, 2026 at 05:23 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gke_hosana`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `nama`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin', '$2y$12$MWDAFpoyAzagn33P8ahm.ug33wAHs27Vh4O/lgZ64NrrdrRdF5g9G', '2026-09-27 23:02:45', '2026-09-27 23:02:45');

-- --------------------------------------------------------

--
-- Table structure for table `baptisms`
--

CREATE TABLE `baptisms` (
  `id` bigint UNSIGNED NOT NULL,
  `kode_baptisan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_lengkap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `nama_orang_tua` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_baptisan` date NOT NULL,
  `tempat_baptisan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `status_persetujuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'menunggu',
  `status_pelaksanaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'akan_datang',
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `baptisms`
--

INSERT INTO `baptisms` (`id`, `kode_baptisan`, `nama_lengkap`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `nama_orang_tua`, `tanggal_baptisan`, `tempat_baptisan`, `keterangan`, `status_persetujuan`, `status_pelaksanaan`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 'BTM-20261118-VGNJR', 'yyy', 'ponti', '2008-01-08', 'perempuan', 'pnk', 'yaya', '2026-11-18', 'sibau hilir', '-', 'disetujui', 'akan_datang', 1, '2026-11-18 05:29:32', '2026-11-18 05:37:53');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `church_profiles`
--

CREATE TABLE `church_profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_gereja` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `sejarah` text COLLATE utf8mb4_unicode_ci,
  `visi` text COLLATE utf8mb4_unicode_ci,
  `misi` text COLLATE utf8mb4_unicode_ci,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `church_profiles`
--

INSERT INTO `church_profiles` (`id`, `nama_gereja`, `alamat`, `sejarah`, `visi`, `misi`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'GKE HOSANA DESA SIBAU HILIR', 'KABUPATEN KAPUAS HULU, KECAMATAN PUTUSSIBAU UTARA DESA SIBAU HILIR', 'Tuliskan sejarah GKE Hosana Desa Sibau Hilir di sini.', NULL, NULL, 'images/logo_gke.jpeg', '2026-09-26 06:13:40', '2026-09-26 06:53:24');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `nomor_hp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `x` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_maps` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `nomor_hp`, `email`, `instagram`, `facebook`, `x`, `google_maps`, `created_at`, `updated_at`) VALUES
(1, '+62 812 3456 7890', 'gkehosana@gmail.com', 'https://instagram.com/sprpgkesh?rpxt=MWt2MTR5djZtNmxjbQ%3D%3D', '#', '#', 'https://maps.app.goo.gl/nHyMn6x8tsF82rjm7', '2026-09-27 08:50:00', '2026-11-25 22:10:41');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `financial_categories`
--

CREATE TABLE `financial_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_kategori` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` enum('pemasukan','pengeluaran') COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `aktif` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `financial_categories`
--

INSERT INTO `financial_categories` (`id`, `nama_kategori`, `jenis`, `keterangan`, `aktif`, `created_at`, `updated_at`) VALUES
(1, 'persembahan minggu', 'pemasukan', 'persembahan umum', 1, '2026-11-17 10:29:35', '2026-11-17 10:29:35'),
(2, 'persembahan ibadah rumah tangga', 'pemasukan', 'umum', 1, '2026-11-17 10:36:00', '2026-11-17 10:36:00');

-- --------------------------------------------------------

--
-- Table structure for table `financial_transactions`
--

CREATE TABLE `financial_transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `kode_transaksi` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `nominal` decimal(15,2) NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `pencatat_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `financial_transactions`
--

INSERT INTO `financial_transactions` (`id`, `kode_transaksi`, `category_id`, `tanggal`, `nominal`, `keterangan`, `pencatat_id`, `created_at`, `updated_at`) VALUES
(2, 'TRX-20261118104859-9NNF', 1, '2026-11-18', '500000.00', 'persembahaan perpuluhan', 1, '2026-11-18 03:48:59', '2026-11-18 03:48:59');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `aktif` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `judul`, `gambar`, `deskripsi`, `aktif`, `created_at`, `updated_at`) VALUES
(1, 'Ibadah Minggu', 'images/foto9.jpeg', 'Dokumentasi kegiatan ibadah jemaat GKE Hosana Desa Sibau Hilir.', 1, '2026-09-27 08:27:09', '2026-09-27 08:27:09'),
(2, 'Kegiatan Jemaat', 'images/foto2.jpeg', 'Kegiatan bersama jemaat GKE Hosana Desa Sibau Hilir.', 1, '2026-09-27 08:27:09', '2026-09-27 08:27:09'),
(3, 'Pelayanan Anak', 'images/foto7.jpeg', 'Kegiatan pelayanan anak GKE Hosana.', 1, '2026-09-27 08:27:09', '2026-09-27 08:27:09'),
(4, 'Pelayanan Pemuda', 'images/foto1.jpeg', 'Kegiatan pelayanan pemuda GKE Hosana.', 1, '2026-09-27 08:27:09', '2026-09-27 08:27:09'),
(5, 'Pelayanan Perempuan', 'images/foto2.jpeg', 'Kegiatan pelayanan perempuan GKE Hosana.', 1, '2026-09-27 08:27:09', '2026-09-27 08:27:09'),
(6, 'Pelayanan Laki-laki', 'images/foto3.jpeg', 'Kegiatan pelayanan laki-laki GKE Hosana.', 1, '2026-09-27 08:27:09', '2026-09-27 08:27:09');

-- --------------------------------------------------------

--
-- Table structure for table `home_contents`
--

CREATE TABLE `home_contents` (
  `id` bigint UNSIGNED NOT NULL,
  `hero_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_quote` text COLLATE utf8mb4_unicode_ci,
  `hero_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_button_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sambutan_jabatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sambutan_text` text COLLATE utf8mb4_unicode_ci,
  `sambutan_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ayat_text` text COLLATE utf8mb4_unicode_ci,
  `ayat_referensi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` smallint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_09_26_125211_create_church_profiles_table', 1),
(5, '2026_09_26_125329_create_contacts_table', 1),
(6, '2026_09_27_134848_create_schedules_table', 2),
(7, '2026_09_27_144251_create_news_table', 3),
(8, '2026_09_27_150625_create_services_table', 4),
(9, '2026_09_27_152202_create_galleries_table', 5),
(10, '2026_09_28_055933_create_admins_table', 6),
(11, '2026_09_29_091134_create_home_contents_table', 7),
(12, '2026_11_17_151304_create_financial_categories_table', 8),
(13, '2026_11_17_151412_create_financial_transactions_table', 8),
(14, '2026_11_18_093839_create_baptisms_table', 9),
(15, '2026_11_19_132724_create_weddings_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date NOT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `judul`, `slug`, `isi`, `gambar`, `tanggal`, `aktif`, `created_at`, `updated_at`) VALUES
(1, 'Ibadah Minggu GKE Hosana Desa Sibau Hilir', 'ibadah-minggu-gke-hosana-desa-sibau-hilir', 'Kegiatan ibadah Minggu bersama jemaat GKE Hosana Desa Sibau Hilir sebagai bagian dari persekutuan dan pertumbuhan iman bersama.', 'images/foto7.jpeg', '2026-09-27', 1, '2026-09-27 07:45:18', '2026-09-27 07:45:18'),
(2, 'Kegiatan Jemaat GKE Hosana', 'kegiatan-jemaat-gke-hosana', 'Kegiatan jemaat GKE Hosana Desa Sibau Hilir sebagai bagian dari kebersamaan, persekutuan dan pelayanan bersama.', 'images/foto4.jpeg', '2026-09-20', 1, '2026-09-27 08:04:00', '2026-09-27 08:04:00'),
(3, 'Persekutuan dan Pelayanan Jemaat', 'persekutuan-dan-pelayanan-jemaat', 'Persekutuan dan pelayanan bersama jemaat GKE Hosana Desa Sibau Hilir dalam membangun kebersamaan dan iman kepada Tuhan.', 'images/foto6.jpeg', '2026-09-13', 1, '2026-09-27 08:05:00', '2026-09-27 08:05:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hari` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam` time DEFAULT NULL,
  `tempat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `aktif` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `nama_kegiatan`, `hari`, `jam`, `tempat`, `keterangan`, `aktif`, `created_at`, `updated_at`) VALUES
(2, 'Ibadah Keluarga', 'Sabtu', '19:00:00', 'Rumah Jemaat', NULL, 1, '2026-09-27 07:37:32', '2026-09-27 07:37:32'),
(3, 'Ibadah Pemuda', 'Senin', '19:00:00', 'Aula Gereja', NULL, 1, '2026-09-27 07:38:11', '2026-09-27 07:38:11'),
(4, 'Ibadah Sekolah Minggu', 'Minggu', '07:00:00', 'Ruang Anak', NULL, 1, '2026-09-27 07:38:27', '2026-09-27 07:38:27'),
(5, 'Kegiatan Lainnya', 'Pelayanan, Persekutuan', NULL, 'Gereja GKE Hosana', 'Konseling, dll.', 1, '2026-09-27 07:38:47', '2026-09-27 07:38:47'),
(6, 'Ibadah Minggu', 'Minggu', '09:00:00', 'Gereja GKE Hosana', NULL, 1, '2026-09-29 06:14:46', '2026-09-29 06:14:46');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_pelayanan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aktif` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `nama_pelayanan`, `deskripsi`, `gambar`, `aktif`, `created_at`, `updated_at`) VALUES
(1, 'Pelayanan Anak', 'Pelayanan untuk membantu anak-anak bertumbuh dalam iman melalui firman Tuhan, doa, pembelajaran dan kegiatan bersama..', 'images/foto4.jpeg', 1, '2026-09-27 08:08:43', '2026-10-12 01:54:44'),
(2, 'Pelayanan Pemuda', 'Pelayanan bagi pemuda untuk membangun iman, kebersamaan dan semangat melayani Tuhan dan sesama.', 'images/foto1.jpeg', 1, '2026-09-27 08:09:35', '2026-09-27 08:09:35'),
(3, 'Pelayanan Perempuan', 'Pelayanan perempuan dalam persekutuan, pembinaan iman dan kegiatan bersama jemaat.', 'images/foto2.jpeg', 1, '2026-09-27 08:10:50', '2026-09-27 08:10:50'),
(4, 'Pelayanan Laki-laki', 'Pelayanan laki-laki dalam membangun persekutuan, kebersamaan dan tanggung jawab dalam kehidupan jemaat.', 'images/foto3.jpeg', 1, '2026-09-27 08:11:24', '2026-09-27 08:11:24');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Bs1ykEbzRvcgGySLU2oN5cOP0Oc7XxaURQdv1NyN', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36', 'eyJfdG9rZW4iOiJtMWlGOUVjbDBFOGpaOFk4aVVlSlRzazMxZVo0cUtIZGZVYkxPMnRFIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9rb250YWsiLCJyb3V0ZSI6ImNvbnRhY3QuaW5kZXgifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJhZG1pbl9pZCI6MSwiYWRtaW5fbmFtYSI6IkFkbWluaXN0cmF0b3IifQ==', 1795670533),
('JXVfx7ITwYvYgBCu98oQjE0KFGMxn0YHZmUALu3U', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Code/1.146.0 Chrome/150.0.7871.250 Electron/43.8.6 Safari/537.36', 'eyJfdG9rZW4iOiJVYjY1NU5lS0VlQmZZVlM2YjhFbzhaSWxEV0tMVDJqSzNkOFRzYUVOIiwiX3ByZXZpb3VzIjp7InVybCI6Imh0dHA6XC9cLzEyNy4wLjAuMTo4MDAwXC9iZXJpdGEta2VnaWF0YW4iLCJyb3V0ZSI6Im5ld3MuaW5kZXgifSwiX2ZsYXNoIjp7Im9sZCI6W10sIm5ldyI6W119LCJhZG1pbl9pZCI6MSwiYWRtaW5fbmFtYSI6IkFkbWluaXN0cmF0b3IifQ==', 1795666097);

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

-- --------------------------------------------------------

--
-- Table structure for table `weddings`
--

CREATE TABLE `weddings` (
  `id` bigint UNSIGNED NOT NULL,
  `kode_pernikahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_mempelai_pria` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_mempelai_wanita` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_pasangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_pernikahan` date NOT NULL,
  `waktu_pernikahan` time DEFAULT NULL,
  `tempat_pernikahan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pendeta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `status_persetujuan` enum('menunggu','disetujui','ditolak') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'menunggu',
  `status_pelaksanaan` enum('akan_datang','selesai','dibatalkan') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'akan_datang',
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `weddings`
--

INSERT INTO `weddings` (`id`, `kode_pernikahan`, `nama_mempelai_pria`, `nama_mempelai_wanita`, `foto_pasangan`, `tanggal_pernikahan`, `waktu_pernikahan`, `tempat_pernikahan`, `nama_pendeta`, `keterangan`, `status_persetujuan`, `status_pelaksanaan`, `is_published`, `created_at`, `updated_at`) VALUES
(1, 'PRK-20261119-RRHG4', 'jojo', 'jeje', 'weddings/Cqpvij0HSOhfHkdRZlexU0b374OGvwRgHXl5CDo6.png', '2026-11-22', '09:00:00', 'sibau hilir', 'pdt', 'mohon doa restu', 'disetujui', 'akan_datang', 1, '2026-11-19 07:41:39', '2026-11-19 07:50:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `baptisms`
--
ALTER TABLE `baptisms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `baptisms_kode_baptisan_unique` (`kode_baptisan`),
  ADD KEY `baptisms_tanggal_baptisan_index` (`tanggal_baptisan`),
  ADD KEY `baptisms_status_persetujuan_index` (`status_persetujuan`),
  ADD KEY `baptisms_is_published_index` (`is_published`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `church_profiles`
--
ALTER TABLE `church_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  ADD KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`);

--
-- Indexes for table `financial_categories`
--
ALTER TABLE `financial_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `financial_categories_nama_jenis_unique` (`nama_kategori`,`jenis`);

--
-- Indexes for table `financial_transactions`
--
ALTER TABLE `financial_transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `financial_transactions_kode_transaksi_unique` (`kode_transaksi`),
  ADD KEY `financial_transactions_tanggal_index` (`tanggal`),
  ADD KEY `financial_transactions_category_id_index` (`category_id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_contents`
--
ALTER TABLE `home_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_slug_unique` (`slug`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `weddings`
--
ALTER TABLE `weddings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `weddings_kode_pernikahan_unique` (`kode_pernikahan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `baptisms`
--
ALTER TABLE `baptisms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `church_profiles`
--
ALTER TABLE `church_profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `financial_categories`
--
ALTER TABLE `financial_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `financial_transactions`
--
ALTER TABLE `financial_transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `home_contents`
--
ALTER TABLE `home_contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `weddings`
--
ALTER TABLE `weddings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `financial_transactions`
--
ALTER TABLE `financial_transactions`
  ADD CONSTRAINT `financial_transactions_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `financial_categories` (`id`) ON DELETE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
