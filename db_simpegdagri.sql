-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 27 Jan 2021 pada 15.56
-- Versi server: 5.7.24
-- Versi PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_simpegdagri`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Menteri', 1, '2021-01-27 08:16:15', '2021-01-27 08:16:15', NULL),
(2, 'Sekretaris Jenderal', 1, '2021-01-27 08:16:15', '2021-01-27 08:16:15', NULL),
(3, 'Inspektur Jenderal', 1, '2021-01-27 08:16:15', '2021-01-27 08:16:15', NULL),
(4, 'Direktur Jenderal', 1, '2021-01-27 08:16:15', '2021-01-27 08:16:15', NULL),
(5, 'Kepala Badan', 1, '2021-01-27 08:16:16', '2021-01-27 08:16:16', NULL),
(6, 'Staf Ahli', 1, '2021-01-27 08:16:16', '2021-01-27 08:16:16', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kementerian`
--

CREATE TABLE `kementerian` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `date_establishment` date DEFAULT NULL,
  `legal_basis_establishment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sector` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee` int(11) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kementerian`
--

INSERT INTO `kementerian` (`id`, `name`, `description`, `date_establishment`, `legal_basis_establishment`, `sector`, `employee`, `address`, `website`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Kementerian Dalam Negeri Republik Indonesia', 'Kementerian Dalam Negeri Republik Indonesia berdasarkan Permendagri No. 37', '1945-08-19', 'Undang-Undang Dasar Negara Republik Indonesia Tahun 1945', 'Pemerintahan dalam negeri', 4938, 'Jalan Medan Merdeka Utara No. 7 Jakarta Pusat 10110 DKI Jakarta, Indonesia', 'https://www.kemendagri.go.id/', NULL, 1, '2021-01-27 08:16:16', '2021-01-27 08:16:16', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `lembaga`
--

CREATE TABLE `lembaga` (
  `id` int(10) UNSIGNED NOT NULL,
  `unitkerja_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `pegawai_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lembaga`
--

INSERT INTO `lembaga` (`id`, `unitkerja_id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`, `pegawai_id`) VALUES
(1, 2, 'Biro Perencanaan update', 1, '2021-01-27 08:16:16', '2021-01-27 08:53:09', '2021-01-27 08:53:09', 3),
(2, 2, 'Biro Kepegawaian', 1, '2021-01-27 08:16:16', '2021-01-27 08:44:08', NULL, 2),
(3, 2, 'Biro Organisasi dan Tatalaksana', 1, '2021-01-27 08:16:16', '2021-01-27 08:16:16', NULL, NULL),
(4, 2, 'Biro Hukum', 1, '2021-01-27 08:16:16', '2021-01-27 08:16:16', NULL, NULL),
(5, 2, 'Biro Keuangan dan Aset', 1, '2021-01-27 08:16:16', '2021-01-27 08:16:16', NULL, NULL),
(6, 2, 'Biro Administrasi Pimpinan', 1, '2021-01-27 08:16:17', '2021-01-27 08:16:17', NULL, NULL),
(7, 2, 'Biro Umum', 1, '2021-01-27 08:16:17', '2021-01-27 08:16:17', NULL, NULL),
(8, 2, 'Pusat Data dan Sistem Informasi', 1, '2021-01-27 08:16:17', '2021-01-27 08:16:17', NULL, NULL),
(9, 2, 'Pusat Penerangan', 1, '2021-01-27 08:16:17', '2021-01-27 08:16:17', NULL, NULL),
(10, 2, 'Pusat Fasilitasi Kerjasama', 1, '2021-01-27 08:16:17', '2021-01-27 08:16:17', NULL, NULL),
(11, 3, 'Sekretariat Direktorat Jenderal', 1, '2021-01-27 08:16:17', '2021-01-27 08:16:17', NULL, NULL),
(12, 3, 'Direktorat Bina Ideologi, Karakter dan Wawasan Kebangsaan', 1, '2021-01-27 08:16:17', '2021-01-27 08:16:17', NULL, NULL),
(13, 3, 'Direktorat Politik Dalam Negeri', 1, '2021-01-27 08:16:17', '2021-01-27 08:16:17', NULL, NULL),
(14, 3, 'Direktorat Ketahanan Ekonomi Sosial dan Budaya', 1, '2021-01-27 08:16:17', '2021-01-27 08:16:17', NULL, NULL),
(15, 3, 'Direktorat Organisasi Kemasyarakatan', 1, '2021-01-27 08:16:17', '2021-01-27 08:16:17', NULL, NULL),
(16, 3, 'Direktorat Kewaspadaan Nasional', 1, '2021-01-27 08:16:17', '2021-01-27 08:16:17', NULL, NULL),
(17, 4, 'Sekretariat Direktorat Jenderal', 1, '2021-01-27 08:16:17', '2021-01-27 08:16:17', NULL, NULL),
(18, 4, 'Direktorat Dekonsentrasi, Tugas Pembantuan dan Kerjasama', 1, '2021-01-27 08:16:17', '2021-01-27 08:16:17', NULL, NULL),
(19, 4, 'Direktorat Kawasan, Perkotaan dan Batas Negara', 1, '2021-01-27 08:16:17', '2021-01-27 08:16:17', NULL, NULL),
(20, 4, 'Direktorat Polisi Pamong Praja dan Perlindungan Masyarakat', 1, '2021-01-27 08:16:17', '2021-01-27 08:16:17', NULL, NULL),
(21, 4, 'Direktorat Toponimi dan Batas Daerah', 1, '2021-01-27 08:16:17', '2021-01-27 08:16:17', NULL, NULL),
(22, 4, 'Direktorat Manajemen Penanggulangan Bencana dan Kebakaran', 1, '2021-01-27 08:16:17', '2021-01-27 08:16:17', NULL, NULL),
(23, 5, 'Sekretariat Direktorat Jenderal', 1, '2021-01-27 08:16:17', '2021-01-27 08:16:17', NULL, NULL),
(24, 5, 'Direktorat Penataan Daerah, Otonomi Khusus dan Dewan Pertimbangan Otonomi Daerah', 1, '2021-01-27 08:16:17', '2021-01-27 08:16:17', NULL, NULL),
(25, 5, 'Direktorat Fasilitasi Kepala Daerah dan Dewan Perwakilan Rakyat Daerah', 1, '2021-01-27 08:16:17', '2021-01-27 08:16:17', NULL, NULL),
(26, 5, 'Direktorat Fasilitasi Kelembagaan dan Kepegawaian Perangkat Daerah', 1, '2021-01-27 08:16:18', '2021-01-27 08:16:18', NULL, NULL),
(27, 5, 'Direktorat Produk Hukum Daerah', 1, '2021-01-27 08:16:18', '2021-01-27 08:16:18', NULL, NULL),
(28, 5, 'Direktorat Evaluasi Kinerja dan Peningkatan Kapasitas Daerah', 1, '2021-01-27 08:16:18', '2021-01-27 08:16:18', NULL, NULL),
(29, 10, 'Sekretariat Inspektorat Jenderal', 1, '2021-01-27 08:16:18', '2021-01-27 08:16:18', NULL, NULL),
(30, 10, 'Inspektorat I', 1, '2021-01-27 08:16:18', '2021-01-27 08:16:18', NULL, NULL),
(31, 10, 'Inspektorat II', 1, '2021-01-27 08:16:18', '2021-01-27 08:16:18', NULL, NULL),
(32, 10, 'Inspektorat III', 1, '2021-01-27 08:16:18', '2021-01-27 08:16:18', NULL, NULL),
(33, 10, 'Inspektorat IV', 1, '2021-01-27 08:16:18', '2021-01-27 08:16:18', NULL, NULL),
(34, 10, 'Inspektorat Khusus', 1, '2021-01-27 08:16:18', '2021-01-27 08:16:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_26_232009_create_permission_tables', 1),
(5, '2021_01_27_001347_create_jabatan_table', 1),
(6, '2021_01_27_011603_create_kementerian_table', 1),
(7, '2021_01_27_062059_create_unit_kerja_table', 1),
(8, '2021_01_27_150635_create_lembaga', 1),
(9, '2021_01_27_151506_create_pegawai', 1),
(10, '2021_01_27_151726_add_pegawaiid_to_lembaga_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 7),
(3, 'App\\Models\\User', 8),
(3, 'App\\Models\\User', 9),
(3, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 11),
(3, 'App\\Models\\User', 12),
(3, 'App\\Models\\User', 13),
(3, 'App\\Models\\User', 14),
(3, 'App\\Models\\User', 15),
(3, 'App\\Models\\User', 16),
(3, 'App\\Models\\User', 17),
(3, 'App\\Models\\User', 18),
(3, 'App\\Models\\User', 19),
(4, 'App\\Models\\User', 20),
(4, 'App\\Models\\User', 21),
(4, 'App\\Models\\User', 22),
(4, 'App\\Models\\User', 23),
(4, 'App\\Models\\User', 24),
(4, 'App\\Models\\User', 25),
(4, 'App\\Models\\User', 26),
(4, 'App\\Models\\User', 27),
(4, 'App\\Models\\User', 28),
(4, 'App\\Models\\User', 29),
(4, 'App\\Models\\User', 30),
(4, 'App\\Models\\User', 31),
(4, 'App\\Models\\User', 32),
(4, 'App\\Models\\User', 33),
(4, 'App\\Models\\User', 34),
(4, 'App\\Models\\User', 35);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `jabatan_id` int(10) UNSIGNED NOT NULL,
  `kementrian_id` int(10) UNSIGNED DEFAULT NULL,
  `unitkerja_id` int(10) UNSIGNED NOT NULL,
  `lembaga_id` int(10) UNSIGNED DEFAULT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `image` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `user_id`, `jabatan_id`, `kementrian_id`, `unitkerja_id`, `lembaga_id`, `nip`, `fullname`, `telp`, `address`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 1, 1, NULL, 'MRsACkRFVEGC', 'Jenderal Polisi (Purn) Prof. Drs. H. Muhammad Tito Karnavian., M.A., Ph.D.', '0888881112', 'Palembang, Sumatera Selatan', NULL, 1, '2021-01-27 08:16:25', '2021-01-27 08:16:25', NULL),
(2, 3, 2, 1, 2, 1, 'dmENrUoJeIil', 'Dr. Ir. Muhammad Hudori, M.Si', '0888881321', 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat', NULL, 1, '2021-01-27 08:16:25', '2021-01-27 08:50:55', '2021-01-27 08:50:55'),
(3, 20, 5, 1, 2, 1, 'e458L2suLjtm', 'Dr. Ir. Bachril Bakri, M.App.Sc', '(021) - 3450919', 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat', NULL, 1, '2021-01-27 08:16:25', '2021-01-27 08:16:25', NULL),
(4, 21, 5, 1, 2, 2, 'ZskHpgKeFkj9', 'Dra. Rahajeng Purwianti, M.Si', '(021) - 7942631', 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat', NULL, 1, '2021-01-27 08:16:25', '2021-01-27 08:16:25', NULL),
(5, 22, 5, 1, 2, 3, 'VTwbJN6l4yS4', 'Ir. Suprayitno, MA', '(021) - 3440402', 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat', NULL, 1, '2021-01-27 08:16:25', '2021-01-27 08:16:25', NULL),
(6, 23, 5, 1, 2, 4, 'grElwyKh0lKH', 'Raden Gani Muhamad SH.,MAP', '(021) - 3440082', 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat', NULL, 1, '2021-01-27 08:16:25', '2021-01-27 08:16:25', NULL),
(7, 24, 5, 1, 2, 5, 'HO3wcL5deSUL', 'Hani Syopiar Rustam, SH', '(021) - 3459339', 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat', NULL, 1, '2021-01-27 08:16:25', '2021-01-27 08:16:25', NULL),
(8, 25, 5, 1, 2, 6, 'SLiGC1YPZ6qD', 'Dr. Drs. Andi Ony Prihartono, M.Si', '(021) - 3459339', 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat', NULL, 1, '2021-01-27 08:16:25', '2021-01-27 08:16:25', NULL),
(9, 26, 5, 1, 2, 7, 'NbyuV0V6v1R8', 'Drs. H. Heru Tjahyono', '(021) - 3459339', 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat', NULL, 1, '2021-01-27 08:16:25', '2021-01-27 08:16:25', NULL),
(10, 27, 5, 1, 2, 8, 'tGJr4LEnHfnu', 'Asmawa Tosepu, AP. M.Si.', '(021) - 3811120, 3811068', 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat', NULL, 1, '2021-01-27 08:16:25', '2021-01-27 08:16:25', NULL),
(11, 28, 5, 1, 2, 9, '3cjQnidN5o6O', 'Drs. Benni Irwan, M.Si, MA', '(021) - 3811120, 3811068', 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat', NULL, 1, '2021-01-27 08:16:25', '2021-01-27 08:16:25', NULL),
(12, 29, 5, 1, 2, 10, 'x5cU8hlIlA4z', 'Dr. Heriyandi Roni, M.Si', '(021) - 3811120, 3811068', 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat', NULL, 1, '2021-01-27 08:16:26', '2021-01-27 08:16:26', NULL),
(13, 11, 3, 1, 10, NULL, 'aRWhXTseWsPO', 'Dr. Drs. Tumpak Haposan Simanjuntak, MA', '(021) - 3842602', 'Jl. Medan Merdeka Timur No.8 Jakarta Pusat', NULL, 1, '2021-01-27 08:16:26', '2021-01-27 08:16:26', NULL),
(14, 30, 5, 1, 10, 7, '6iWlfD4243Go', 'Dr. Drs. Muhammad Nur, ME. CRGP', '(021) - 3450919', 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat', NULL, 1, '2021-01-27 08:16:26', '2021-01-27 08:16:26', NULL),
(15, 31, 5, 1, 10, 8, 'i1TizrFTPK6Z', 'Bachtiar Sinaga, SE., MM', '(021) - 3450919', 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat', NULL, 1, '2021-01-27 08:16:26', '2021-01-27 08:16:26', NULL),
(16, 32, 5, 1, 10, 9, 'CM3Ys0v5NFdZ', 'Dr. Ucok Abdul Rauf Damenta, Mag.rer.Pulp', '(021) - 3450919', 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat', NULL, 1, '2021-01-27 08:16:26', '2021-01-27 08:16:26', NULL),
(17, 4, 4, 1, 3, NULL, 'lyOYIbDxisjM', 'Dr. Drs. Bahtiar, M.Si', '(021) - 3842602', 'Jl. Medan Merdeka Utara No.7, Jakarta Pusat', NULL, 1, '2021-01-27 08:16:26', '2021-01-27 08:16:26', NULL),
(18, 33, 5, 1, 3, 11, 'mANznCjJsFVl', 'Dr. Drs. Imran, M.Si., M.A', '(021) -  3451941', 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat', NULL, 1, '2021-01-27 08:16:26', '2021-01-27 08:16:26', NULL),
(19, 34, 5, 1, 3, 12, 'fnx3aEiLRy4g', 'Drs. Drajat Wisnu Setyawan, M.M.', '(021) -  3451941', 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat', NULL, 1, '2021-01-27 08:16:26', '2021-01-27 08:16:26', NULL),
(20, 35, 5, 1, 3, 13, 'sKCLp6xplfa5', 'Drs. Syarmadani M.Si', '(021) - 34835163', 'Jl. Medan Merdeka Utara No.7 Jakarta Pusat', NULL, 1, '2021-01-27 08:16:26', '2021-01-27 08:16:26', NULL),
(21, 5, 4, 1, 3, NULL, 'rMIfCeo3hD7n', 'Dr. Drs. Safrizal, Z.A., M.Si', '(021) - 2300024', 'Jl. Veteran No.7B, Jakarta Pusat', NULL, 1, '2021-01-27 08:16:26', '2021-01-27 08:16:26', NULL),
(22, 6, 4, 1, 5, NULL, '6Pu5PKRqEcVn', 'Akmal M Piliang, M.Si', '(021) - 3450038 ext.2897', 'Jl. Medan Merdeka Utara No.7, Jakarta Pusat', NULL, 1, '2021-01-27 08:16:26', '2021-01-27 08:16:26', NULL),
(23, 7, 4, 1, 6, NULL, 'zORKJKoEmu8v', 'Dr. Hari Nur Cahya Murni, M.Si', '(021) - 7942631', 'Jl.Taman Makam Pahlawan No.20 Kalibata, Jakarta Selatan', NULL, 1, '2021-01-27 08:16:26', '2021-01-27 08:16:26', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Create Eselon 1', 'web', '2021-01-27 08:16:04', '2021-01-27 08:16:04'),
(2, 'Read Eselon 1', 'web', '2021-01-27 08:16:04', '2021-01-27 08:16:04'),
(3, 'Update Eselon 1', 'web', '2021-01-27 08:16:04', '2021-01-27 08:16:04'),
(4, 'Delete Eselon 1', 'web', '2021-01-27 08:16:04', '2021-01-27 08:16:04'),
(5, 'Create Eselon 2', 'web', '2021-01-27 08:16:04', '2021-01-27 08:16:04'),
(6, 'Read Eselon 2', 'web', '2021-01-27 08:16:04', '2021-01-27 08:16:04'),
(7, 'Update Eselon 2', 'web', '2021-01-27 08:16:04', '2021-01-27 08:16:04'),
(8, 'Delete Eselon 2', 'web', '2021-01-27 08:16:04', '2021-01-27 08:16:04'),
(9, 'Create Eselon 3', 'web', '2021-01-27 08:16:04', '2021-01-27 08:16:04'),
(10, 'Read Eselon 3', 'web', '2021-01-27 08:16:04', '2021-01-27 08:16:04'),
(11, 'Update Eselon 3', 'web', '2021-01-27 08:16:04', '2021-01-27 08:16:04'),
(12, 'Delete Eselon 3', 'web', '2021-01-27 08:16:04', '2021-01-27 08:16:04'),
(13, 'Create Eselon 4', 'web', '2021-01-27 08:16:04', '2021-01-27 08:16:04'),
(14, 'Read Eselon 4', 'web', '2021-01-27 08:16:05', '2021-01-27 08:16:05'),
(15, 'Update Eselon 4', 'web', '2021-01-27 08:16:05', '2021-01-27 08:16:05'),
(16, 'Delete Eselon 4', 'web', '2021-01-27 08:16:05', '2021-01-27 08:16:05'),
(17, 'Create Staff', 'web', '2021-01-27 08:16:05', '2021-01-27 08:16:05'),
(18, 'Read Staff', 'web', '2021-01-27 08:16:05', '2021-01-27 08:16:05'),
(19, 'Update Staff', 'web', '2021-01-27 08:16:05', '2021-01-27 08:16:05'),
(20, 'Delete Staff', 'web', '2021-01-27 08:16:05', '2021-01-27 08:16:05'),
(21, 'Create Kementrian', 'web', '2021-01-27 08:16:05', '2021-01-27 08:16:05'),
(22, 'Read Kementrian', 'web', '2021-01-27 08:16:05', '2021-01-27 08:16:05'),
(23, 'Update Kementrian', 'web', '2021-01-27 08:16:05', '2021-01-27 08:16:05'),
(24, 'Delete Kementrian', 'web', '2021-01-27 08:16:05', '2021-01-27 08:16:05'),
(25, 'Create Pegawai', 'web', '2021-01-27 08:16:05', '2021-01-27 08:16:05'),
(26, 'Read Pegawai', 'web', '2021-01-27 08:16:05', '2021-01-27 08:16:05'),
(27, 'Update Pegawai', 'web', '2021-01-27 08:16:06', '2021-01-27 08:16:06'),
(28, 'Delete Pegawai', 'web', '2021-01-27 08:16:06', '2021-01-27 08:16:06'),
(29, 'Create Jabatan', 'web', '2021-01-27 08:16:06', '2021-01-27 08:16:06'),
(30, 'Read Jabatan', 'web', '2021-01-27 08:16:06', '2021-01-27 08:16:06'),
(31, 'Update Jabatan', 'web', '2021-01-27 08:16:06', '2021-01-27 08:16:06'),
(32, 'Delete Jabatan', 'web', '2021-01-27 08:16:06', '2021-01-27 08:16:06'),
(33, 'Create Unit Kerja', 'web', '2021-01-27 08:16:06', '2021-01-27 08:16:06'),
(34, 'Read Unit Kerja', 'web', '2021-01-27 08:16:06', '2021-01-27 08:16:06'),
(35, 'Update Unit Kerja', 'web', '2021-01-27 08:16:06', '2021-01-27 08:16:06'),
(36, 'Delete Unit Kerja', 'web', '2021-01-27 08:16:06', '2021-01-27 08:16:06'),
(37, 'Create Lembaga', 'web', '2021-01-27 08:16:06', '2021-01-27 08:16:06'),
(38, 'Read Lembaga', 'web', '2021-01-27 08:16:06', '2021-01-27 08:16:06'),
(39, 'Update Lembaga', 'web', '2021-01-27 08:16:06', '2021-01-27 08:16:06'),
(40, 'Delete Lembaga', 'web', '2021-01-27 08:16:07', '2021-01-27 08:16:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super-admin', 'web', '2021-01-27 08:16:07', '2021-01-27 08:16:07'),
(2, 'Kementrian', 'web', '2021-01-27 08:16:08', '2021-01-27 08:16:08'),
(3, 'Eselon 1', 'web', '2021-01-27 08:16:11', '2021-01-27 08:16:11'),
(4, 'Eselon 2', 'web', '2021-01-27 08:16:12', '2021-01-27 08:16:12'),
(5, 'Eselon 3', 'web', '2021-01-27 08:16:13', '2021-01-27 08:16:13'),
(6, 'Eselon 4', 'web', '2021-01-27 08:16:14', '2021-01-27 08:16:14'),
(7, 'Eselon Staff', 'web', '2021-01-27 08:16:15', '2021-01-27 08:16:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
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
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
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
(40, 2),
(2, 3),
(3, 3),
(4, 3),
(6, 3),
(7, 3),
(8, 3),
(10, 3),
(11, 3),
(12, 3),
(14, 3),
(15, 3),
(16, 3),
(18, 3),
(19, 3),
(20, 3),
(26, 3),
(27, 3),
(28, 3),
(30, 3),
(31, 3),
(32, 3),
(34, 3),
(35, 3),
(36, 3),
(38, 3),
(39, 3),
(40, 3),
(6, 4),
(7, 4),
(8, 4),
(10, 4),
(11, 4),
(12, 4),
(14, 4),
(15, 4),
(16, 4),
(18, 4),
(19, 4),
(20, 4),
(26, 4),
(27, 4),
(28, 4),
(30, 4),
(31, 4),
(32, 4),
(34, 4),
(35, 4),
(36, 4),
(38, 4),
(39, 4),
(40, 4),
(10, 5),
(11, 5),
(12, 5),
(14, 5),
(15, 5),
(16, 5),
(18, 5),
(19, 5),
(20, 5),
(26, 5),
(27, 5),
(28, 5),
(30, 5),
(31, 5),
(32, 5),
(34, 5),
(35, 5),
(36, 5),
(38, 5),
(39, 5),
(40, 5),
(14, 6),
(15, 6),
(16, 6),
(18, 6),
(19, 6),
(20, 6),
(26, 6),
(27, 6),
(28, 6),
(30, 6),
(31, 6),
(32, 6),
(34, 6),
(35, 6),
(36, 6),
(38, 6),
(39, 6),
(40, 6),
(10, 7),
(14, 7),
(18, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `unit_kerja`
--

CREATE TABLE `unit_kerja` (
  `id` int(10) UNSIGNED NOT NULL,
  `kementerian_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `unit_kerja`
--

INSERT INTO `unit_kerja` (`id`, `kementerian_id`, `name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Menteri', 1, '2021-01-27 08:16:16', '2021-01-27 08:16:16', NULL),
(2, 1, 'Sekretariat Jenderal', 1, '2021-01-27 08:16:16', '2021-01-27 08:16:16', NULL),
(3, 1, 'Direktorat Jenderal Politik dan Pemerintahan Umum', 1, '2021-01-27 08:16:16', '2021-01-27 08:16:16', NULL),
(4, 1, 'Direktorat Jenderal Bina Administrasi Kewilayahan', 1, '2021-01-27 08:16:16', '2021-01-27 08:16:16', NULL),
(5, 1, 'Direktorat Jenderal Otonomi Daerah', 1, '2021-01-27 08:16:16', '2021-01-27 08:16:16', NULL),
(6, 1, 'Direktorat Jenderal Bina Pembangunan Daerah', 1, '2021-01-27 08:16:16', '2021-01-27 08:16:16', NULL),
(7, 1, 'Direktorat Jenderal Bina Pemerintahan Desa', 1, '2021-01-27 08:16:16', '2021-01-27 08:16:16', NULL),
(8, 1, 'Direktorat Jenderal Bina Keuangan Daerah', 1, '2021-01-27 08:16:16', '2021-01-27 08:16:16', NULL),
(9, 1, 'Direktorat Jenderal Kependudukan dan Pencatatan Sipil', 1, '2021-01-27 08:16:16', '2021-01-27 08:16:16', NULL),
(10, 1, 'Inspektorat Jenderal', 1, '2021-01-27 08:16:16', '2021-01-27 08:16:16', NULL),
(11, 1, 'Badan Penelitian dan Pengembangan', 1, '2021-01-27 08:16:16', '2021-01-27 08:16:16', NULL),
(12, 1, 'Badan Pengembangan Sumber Daya Manusia', 1, '2021-01-27 08:16:16', '2021-01-27 08:16:16', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `login_status` tinyint(1) NOT NULL DEFAULT '0',
  `last_login_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `token`, `status`, `login_status`, `last_login_at`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'rraharjo.rudy@dev.kemendagri.go.id', NULL, '$2y$10$2j6dG29wCuXle48HA2wzMurbtFm7bc8GNYVXg9KJlXdNYfjtI7ujW', '2a9668543f799a358bd65493921eb205391205b2', 1, 0, NULL, NULL, '2021-01-27 08:16:18', '2021-01-27 08:16:18', NULL),
(2, 'tito.karnavian@kemendagri.go.id', NULL, '$2y$10$L3FPVdwurWmfDHwnQATHduG3jDAG2ORkF5u6gFf3VhnNZvgcHj./W', '2a9668543f799a358bd65493921eb205391205b2', 1, 0, NULL, NULL, '2021-01-27 08:16:18', '2021-01-27 08:16:18', NULL),
(3, 'muhammad.hudori@kemendagri.go.id', NULL, '$2y$10$YO7IeoJO9mg/sbPI5jqp/eAVI2W0rt8jniHHR2/2puMhqofQs70mq', '2a9668543f799a358bd65493921eb205391205b2', 1, 0, NULL, NULL, '2021-01-27 08:16:18', '2021-01-27 08:50:55', '2021-01-27 08:50:55'),
(4, 'bahtiar@kemendagri.go.id', NULL, '$2y$10$M7aHH9y0RJnNLQXP5RBC2.EgNM0.W/MrfIZSEK3kyIdk0wxo3jqBi', 'a26c02abe2d6f009ce8f01131a2662980d3fe9be', 1, 0, NULL, NULL, '2021-01-27 08:16:19', '2021-01-27 08:16:19', NULL),
(5, 'safrizal@kemendagri.go.id', NULL, '$2y$10$UGjXagT3IfBnUkKDZcJM8.0gYH/Fn1281OB4cyJZ/riHvHBA0U15a', 'a26c02abe2d6f009ce8f01131a2662980d3fe9be', 1, 0, NULL, NULL, '2021-01-27 08:16:19', '2021-01-27 08:16:19', NULL),
(6, 'akmal_m.piliang@kemendagri.go.id', NULL, '$2y$10$6yp6egkAU4ulMmCvnk0vnOp/WFvZ/h6awcXm7ag6SdtBzMFVgG/N2', 'a26c02abe2d6f009ce8f01131a2662980d3fe9be', 1, 0, NULL, NULL, '2021-01-27 08:16:19', '2021-01-27 08:16:19', NULL),
(7, 'hari_nur_cahyam_urni@kemendagri.go.id', NULL, '$2y$10$H0Bt69e2OLOHKtlv1kGmpu46IClbaPOuAtXlIm9mbNF/9vZ/1CaCS', 'a26c02abe2d6f009ce8f01131a2662980d3fe9be', 1, 0, NULL, NULL, '2021-01-27 08:16:19', '2021-01-27 08:16:19', NULL),
(8, 'yusharto_huntoyungo@kemendagri.go.id', NULL, '$2y$10$bO6DUyTNKh3/x0tDhixHq.TtCsQ04sauu2p8tCCQcVthP0yuq76EK', 'a26c02abe2d6f009ce8f01131a2662980d3fe9be', 1, 0, NULL, NULL, '2021-01-27 08:16:19', '2021-01-27 08:16:19', NULL),
(9, 'mochamad_ardian_noervianto@kemendagri.go.id', NULL, '$2y$10$JiUDDwDC07oQVdNmbE80ZebScw4lM4wgEhZw86XAotsqwDML6QtpG', '88c01a7689ec0431d0ec22292928dcc38a107827', 1, 0, NULL, NULL, '2021-01-27 08:16:20', '2021-01-27 08:16:20', NULL),
(10, 'zudan_arif_fakrulloh@kemendagri.go.id', NULL, '$2y$10$O4FVLksQBkzV1pq2H5edNOEZLadl4VqX1nTjRFPqpj1uLYq69UKma', '88c01a7689ec0431d0ec22292928dcc38a107827', 1, 0, NULL, NULL, '2021-01-27 08:16:20', '2021-01-27 08:16:20', NULL),
(11, 'tumpak_haposan_simanjuntak@kemendagri.go.id', NULL, '$2y$10$9KB2vu.vpl3uddzC/nPNmuY8OJThi1JfjgRWjzXvf2zvZMP0CLqiG', '88c01a7689ec0431d0ec22292928dcc38a107827', 1, 0, NULL, NULL, '2021-01-27 08:16:20', '2021-01-27 08:16:20', NULL),
(12, 'agus.fatoni@kemendagri.go.id', NULL, '$2y$10$J4eOsSxF//QCcHBdvOYgdeXfp8XxNn9QzTBlOe0sKKXditZdSUYVO', '88c01a7689ec0431d0ec22292928dcc38a107827', 1, 0, NULL, NULL, '2021-01-27 08:16:20', '2021-01-27 08:16:20', NULL),
(13, 'teguh_setyabudi@kemendagri.go.id', NULL, '$2y$10$lDjzWHuICp/1mDJT4cTwQOvifqAjAG3AhE6ixfuWoSM/dIn9OXyZG', '88c01a7689ec0431d0ec22292928dcc38a107827', 1, 0, NULL, NULL, '2021-01-27 08:16:20', '2021-01-27 08:16:20', NULL),
(14, 'hadi_prabowo@kemendagri.go.id', NULL, '$2y$10$JjlK3fooDZ9cTeDExfQcyeMXVpCrrWe6TzlvDyaVAjhkqHTRmGM3y', '17a9024ebdc32d59fc98737f55083b1c1917fff7', 1, 0, NULL, NULL, '2021-01-27 08:16:21', '2021-01-27 08:16:21', NULL),
(15, 'eko_prasetyanto_purnomo_putro@kemendagri.go.id', NULL, '$2y$10$LhJJOb3VD/XyH5uXpMKcOuC9QOJ1sy9NL689fnO11l0.vLoB3Jzvi', '17a9024ebdc32d59fc98737f55083b1c1917fff7', 1, 0, NULL, NULL, '2021-01-27 08:16:21', '2021-01-27 08:16:21', NULL),
(16, 'suhajar_diantoro@kemendagri.go.id', NULL, '$2y$10$SWAIqrkfPG9FevoqMe.3/uzbWGWG0Vo8YoL0TgWeyX0KtD0DzPpkK', '17a9024ebdc32d59fc98737f55083b1c1917fff7', 1, 0, NULL, NULL, '2021-01-27 08:16:21', '2021-01-27 08:16:21', NULL),
(17, 'sugeng_hariyono@kemendagri.go.id', NULL, '$2y$10$/d2/VQswRnIC/0uQgEaV2uGiJo9go/unIvWp6Ke62PzLqNAPJP0K6', '17a9024ebdc32d59fc98737f55083b1c1917fff7', 1, 0, NULL, NULL, '2021-01-27 08:16:21', '2021-01-27 08:16:21', NULL),
(18, 'hamdani@kemendagri.go.id', NULL, '$2y$10$fzTBwBN7GV33jagJgiyxPevQleugmNhIdBRcGktNqN7uP59J2mGDy', '17a9024ebdc32d59fc98737f55083b1c1917fff7', 1, 0, NULL, NULL, '2021-01-27 08:16:21', '2021-01-27 08:16:21', NULL),
(19, 'yusharto@kemendagri.go.id', NULL, '$2y$10$ry9z4XR4kMhRoXZaxnRyLOeIDjvQGtSXzNG6c9MvKud1DmpBdc92e', '5c657fc4bc6d06bd5955a24ff559277788dfbb1a', 1, 0, NULL, NULL, '2021-01-27 08:16:22', '2021-01-27 08:16:22', NULL),
(20, 'bachril_bakri@kemendagri.go.id', NULL, '$2y$10$BF5nRsmKCYF2GX8YpN0fL.dRpZA/QsKc.DTpaK73NGj3BkJe.1GEK', '5c657fc4bc6d06bd5955a24ff559277788dfbb1a', 1, 0, NULL, NULL, '2021-01-27 08:16:22', '2021-01-27 08:16:22', NULL),
(21, 'rahajeng_purwianti@kemendagri.go.id', NULL, '$2y$10$1xO7n9NGI.x7RBzU4sLyO.d7emmCUXyXjQDah5H0cPEYqbbd6pWzq', '5c657fc4bc6d06bd5955a24ff559277788dfbb1a', 1, 0, NULL, NULL, '2021-01-27 08:16:22', '2021-01-27 08:16:22', NULL),
(22, 'suprayitno@kemendagri.go.id', NULL, '$2y$10$m5gKN9WH1pcE9x97fm6y0e9a1Ab0uuxwJca440m9NH6BYqWL1JQAe', '5c657fc4bc6d06bd5955a24ff559277788dfbb1a', 1, 0, NULL, NULL, '2021-01-27 08:16:22', '2021-01-27 08:16:22', NULL),
(23, 'raden_gani_muhamad@kemendagri.go.id', NULL, '$2y$10$W7yn6jtYXU47hheydbd/quCapFRSBmKd0NhR6f2zxmjL4r5RaluN2', '5c657fc4bc6d06bd5955a24ff559277788dfbb1a', 1, 0, NULL, NULL, '2021-01-27 08:16:22', '2021-01-27 08:16:22', NULL),
(24, 'hani_syopiar_rustam@kemendagri.go.id', NULL, '$2y$10$YGFoinINcyBil8hAClOIjOGg9A5IH6COrv.2A7HoA1pWXiyrjHHlC', '14b0fd2b7412fcc29133c15eaf9a0d1721af0669', 1, 0, NULL, NULL, '2021-01-27 08:16:23', '2021-01-27 08:16:23', NULL),
(25, 'andi_ony_prihartono@kemendagri.go.id', NULL, '$2y$10$RLOoi2IJzckKfGeE0hOJ5OGhNOHYmf1rS056HxwC0W9ElOIp558o.', '14b0fd2b7412fcc29133c15eaf9a0d1721af0669', 1, 0, NULL, NULL, '2021-01-27 08:16:23', '2021-01-27 08:16:23', NULL),
(26, 'heru_tjahyono@kemendagri.go.id', NULL, '$2y$10$LtzFppgAeivNsCnF5TJJ0udOSNSq/qOtYIIemLDzedOGFj3JRgwkm', '14b0fd2b7412fcc29133c15eaf9a0d1721af0669', 1, 0, NULL, NULL, '2021-01-27 08:16:23', '2021-01-27 08:16:23', NULL),
(27, 'asmawa_tosepu@kemendagri.go.id', NULL, '$2y$10$fM/MDDWzh/WmVWYUftBpKepSd9QwVuQkbgiDo9/2Md35yPEiA.2ya', '14b0fd2b7412fcc29133c15eaf9a0d1721af0669', 1, 0, NULL, NULL, '2021-01-27 08:16:23', '2021-01-27 08:16:23', NULL),
(28, 'benni.irwan@kemendagri.go.id', NULL, '$2y$10$gFqJ4XVDP6RnqQsHfUNGUuR8gRUrUduJrOIKWGe5jUqiRxdANvpCa', '14b0fd2b7412fcc29133c15eaf9a0d1721af0669', 1, 0, NULL, NULL, '2021-01-27 08:16:23', '2021-01-27 08:16:23', NULL),
(29, 'heriyandi.roni@kemendagri.go.id', NULL, '$2y$10$3/shABzGAFc1aiRaj0NTZ.TY3r2cnpg26NlZ1qqqaikRU8izBmsIe', '8ba4a75bc946833801fefff4bf0260302046b957', 1, 0, NULL, NULL, '2021-01-27 08:16:24', '2021-01-27 08:16:24', NULL),
(30, 'muhammad.nur@kemendagri.go.id', NULL, '$2y$10$0LnyBLyjp2pIRzouOvMHOeA.FCfbxGdHQU6sJHrZnLIqCxCYRXaOy', '8ba4a75bc946833801fefff4bf0260302046b957', 1, 0, NULL, NULL, '2021-01-27 08:16:24', '2021-01-27 08:16:24', NULL),
(31, 'bachtiar.sinaga@kemendagri.go.id', NULL, '$2y$10$XCud.gKRtqoIK3tITpArn.akaq8/ytUSPYojINe61SjYUOaMvupo6', '8ba4a75bc946833801fefff4bf0260302046b957', 1, 0, NULL, NULL, '2021-01-27 08:16:24', '2021-01-27 08:16:24', NULL),
(32, 'ucok.abdul@kemendagri.go.id', NULL, '$2y$10$Y7MM9JEaIdehtqXUw8jC2eqz4I/rti8jZCdCrw1PvOcn.M5ACTZ0a', '8ba4a75bc946833801fefff4bf0260302046b957', 1, 0, NULL, NULL, '2021-01-27 08:16:24', '2021-01-27 08:16:24', NULL),
(33, 'Imran@kemendagri.go.id', NULL, '$2y$10$Fv3aNP7p4KDyYq0rtBHi/.lNtO4P/jFxS3uU39Ep4AEWVwVXQmVDy', '8ba4a75bc946833801fefff4bf0260302046b957', 1, 0, NULL, NULL, '2021-01-27 08:16:24', '2021-01-27 08:16:24', NULL),
(34, 'drajat.wisnu.setyawan@kemendagri.go.id', NULL, '$2y$10$hiuNFqtmoCW06BlSFi1Dy.5SLKWh6pCBtTZCvWIgUtwbpNEB2kmty', '37c92834d6675dcde7d226b2d83b292836b67805', 1, 0, NULL, NULL, '2021-01-27 08:16:25', '2021-01-27 08:16:25', NULL),
(35, 'syarmadani@kemendagri.go.id', NULL, '$2y$10$DZ.idiuQ5DzTUcLwyfDNdudUkz84dzI7/peOCagHFchVS0l.G9F4W', '37c92834d6675dcde7d226b2d83b292836b67805', 1, 0, NULL, NULL, '2021-01-27 08:16:25', '2021-01-27 08:16:25', NULL);

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
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kementerian`
--
ALTER TABLE `kementerian`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lembaga`
--
ALTER TABLE `lembaga`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lembaga_unitkerja_id_foreign` (`unitkerja_id`),
  ADD KEY `lembaga_pegawai_id_foreign` (`pegawai_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pegawai_nip_unique` (`nip`),
  ADD KEY `pegawai_user_id_foreign` (`user_id`),
  ADD KEY `pegawai_jabatan_id_foreign` (`jabatan_id`),
  ADD KEY `pegawai_kementrian_id_foreign` (`kementrian_id`),
  ADD KEY `pegawai_unitkerja_id_foreign` (`unitkerja_id`),
  ADD KEY `pegawai_lembaga_id_foreign` (`lembaga_id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `unit_kerja`
--
ALTER TABLE `unit_kerja`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unit_kerja_kementerian_id_foreign` (`kementerian_id`);

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
-- AUTO_INCREMENT untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `kementerian`
--
ALTER TABLE `kementerian`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `lembaga`
--
ALTER TABLE `lembaga`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `unit_kerja`
--
ALTER TABLE `unit_kerja`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `lembaga`
--
ALTER TABLE `lembaga`
  ADD CONSTRAINT `lembaga_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawai` (`id`),
  ADD CONSTRAINT `lembaga_unitkerja_id_foreign` FOREIGN KEY (`unitkerja_id`) REFERENCES `unit_kerja` (`id`);

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_jabatan_id_foreign` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatan` (`id`),
  ADD CONSTRAINT `pegawai_kementrian_id_foreign` FOREIGN KEY (`kementrian_id`) REFERENCES `kementerian` (`id`),
  ADD CONSTRAINT `pegawai_lembaga_id_foreign` FOREIGN KEY (`lembaga_id`) REFERENCES `lembaga` (`id`),
  ADD CONSTRAINT `pegawai_unitkerja_id_foreign` FOREIGN KEY (`unitkerja_id`) REFERENCES `unit_kerja` (`id`),
  ADD CONSTRAINT `pegawai_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `unit_kerja`
--
ALTER TABLE `unit_kerja`
  ADD CONSTRAINT `unit_kerja_kementerian_id_foreign` FOREIGN KEY (`kementerian_id`) REFERENCES `kementerian` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
