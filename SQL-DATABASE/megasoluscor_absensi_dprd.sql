-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 29, 2025 at 08:35 AM
-- Server version: 8.0.36
-- PHP Version: 8.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `megasoluscor_absensi_dprd`
--

-- --------------------------------------------------------

--
-- Table structure for table `auto_shifts`
--

CREATE TABLE `auto_shifts` (
  `id` bigint UNSIGNED NOT NULL,
  `jabatan_id` bigint UNSIGNED NOT NULL,
  `shift_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint UNSIGNED NOT NULL,
  `tipe` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `judul` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `berita_file_path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `berita_file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `beritas`
--

INSERT INTO `beritas` (`id`, `tipe`, `judul`, `isi`, `berita_file_path`, `berita_file_name`, `created_at`, `updated_at`) VALUES
(1, 'Berita', 'Berita 1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi provident sed, corporis amet sint ratione tenetur rerum non repudiandae. Voluptatibus pariatur facere voluptate neque aliquid doloribus corrupti natus. Blanditiis dolore, saepe debitis autem enim molestias? Neque dicta officia officiis ut sit! Iste dolor excepturi atque quidem ipsum quam dignissimos eum neque rem. Assumenda saepe eligendi amet? Iste earum soluta deleniti facilis odio! Temporibus ut veniam minima modi voluptatibus, consequatur quidem voluptates provident ratione eaque totam similique et in perferendis molestiae incidunt aut voluptatem ad, quisquam praesentium ex beatae, fugit aperiam. Quos sit ad est aspernatur in eum accusamus, asperiores voluptatum.', 'berita_file_path/banner.jpg', NULL, '2025-05-04 13:25:24', '2025-05-04 13:25:24'),
(2, 'Berita', 'Berita 2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi provident sed, corporis amet sint ratione tenetur rerum non repudiandae. Voluptatibus pariatur facere voluptate neque aliquid doloribus corrupti natus. Blanditiis dolore, saepe debitis autem enim molestias? Neque dicta officia officiis ut sit! Iste dolor excepturi atque quidem ipsum quam dignissimos eum neque rem. Assumenda saepe eligendi amet? Iste earum soluta deleniti facilis odio! Temporibus ut veniam minima modi voluptatibus, consequatur quidem voluptates provident ratione eaque totam similique et in perferendis molestiae incidunt aut voluptatem ad, quisquam praesentium ex beatae, fugit aperiam. Quos sit ad est aspernatur in eum accusamus, asperiores voluptatum.', 'berita_file_path/banner2.jpg', NULL, '2025-05-04 13:25:24', '2025-05-04 13:25:24'),
(3, 'Berita', 'Berita 3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi provident sed, corporis amet sint ratione tenetur rerum non repudiandae. Voluptatibus pariatur facere voluptate neque aliquid doloribus corrupti natus. Blanditiis dolore, saepe debitis autem enim molestias? Neque dicta officia officiis ut sit! Iste dolor excepturi atque quidem ipsum quam dignissimos eum neque rem. Assumenda saepe eligendi amet? Iste earum soluta deleniti facilis odio! Temporibus ut veniam minima modi voluptatibus, consequatur quidem voluptates provident ratione eaque totam similique et in perferendis molestiae incidunt aut voluptatem ad, quisquam praesentium ex beatae, fugit aperiam. Quos sit ad est aspernatur in eum accusamus, asperiores voluptatum.', 'berita_file_path/banner3.jpg', NULL, '2025-05-04 13:25:24', '2025-05-04 13:25:24'),
(4, 'Berita', 'Berita 4', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi provident sed, corporis amet sint ratione tenetur rerum non repudiandae. Voluptatibus pariatur facere voluptate neque aliquid doloribus corrupti natus. Blanditiis dolore, saepe debitis autem enim molestias? Neque dicta officia officiis ut sit! Iste dolor excepturi atque quidem ipsum quam dignissimos eum neque rem. Assumenda saepe eligendi amet? Iste earum soluta deleniti facilis odio! Temporibus ut veniam minima modi voluptatibus, consequatur quidem voluptates provident ratione eaque totam similique et in perferendis molestiae incidunt aut voluptatem ad, quisquam praesentium ex beatae, fugit aperiam. Quos sit ad est aspernatur in eum accusamus, asperiores voluptatum.', 'berita_file_path/banner4.jpg', NULL, '2025-05-04 13:25:24', '2025-05-04 13:25:24'),
(5, 'Berita', 'Berita 5', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi provident sed, corporis amet sint ratione tenetur rerum non repudiandae. Voluptatibus pariatur facere voluptate neque aliquid doloribus corrupti natus. Blanditiis dolore, saepe debitis autem enim molestias? Neque dicta officia officiis ut sit! Iste dolor excepturi atque quidem ipsum quam dignissimos eum neque rem. Assumenda saepe eligendi amet? Iste earum soluta deleniti facilis odio! Temporibus ut veniam minima modi voluptatibus, consequatur quidem voluptates provident ratione eaque totam similique et in perferendis molestiae incidunt aut voluptatem ad, quisquam praesentium ex beatae, fugit aperiam. Quos sit ad est aspernatur in eum accusamus, asperiores voluptatum.', 'berita_file_path/banner5.jpg', NULL, '2025-05-04 13:25:24', '2025-05-04 13:25:24'),
(6, 'Informasi', 'Informasi 1', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi provident sed, corporis amet sint ratione tenetur rerum non repudiandae. Voluptatibus pariatur facere voluptate neque aliquid doloribus corrupti natus. Blanditiis dolore, saepe debitis autem enim molestias? Neque dicta officia officiis ut sit! Iste dolor excepturi atque quidem ipsum quam dignissimos eum neque rem. Assumenda saepe eligendi amet? Iste earum soluta deleniti facilis odio! Temporibus ut veniam minima modi voluptatibus, consequatur quidem voluptates provident ratione eaque totam similique et in perferendis molestiae incidunt aut voluptatem ad, quisquam praesentium ex beatae, fugit aperiam. Quos sit ad est aspernatur in eum accusamus, asperiores voluptatum.', 'berita_file_path/informasi.png', NULL, '2025-05-04 13:25:24', '2025-05-04 13:25:24'),
(7, 'Informasi', 'Informasi 2', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi provident sed, corporis amet sint ratione tenetur rerum non repudiandae. Voluptatibus pariatur facere voluptate neque aliquid doloribus corrupti natus. Blanditiis dolore, saepe debitis autem enim molestias? Neque dicta officia officiis ut sit! Iste dolor excepturi atque quidem ipsum quam dignissimos eum neque rem. Assumenda saepe eligendi amet? Iste earum soluta deleniti facilis odio! Temporibus ut veniam minima modi voluptatibus, consequatur quidem voluptates provident ratione eaque totam similique et in perferendis molestiae incidunt aut voluptatem ad, quisquam praesentium ex beatae, fugit aperiam. Quos sit ad est aspernatur in eum accusamus, asperiores voluptatum.', 'berita_file_path/informasi.png', NULL, '2025-05-04 13:25:24', '2025-05-04 13:25:24'),
(8, 'Informasi', 'Informasi 3', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi provident sed, corporis amet sint ratione tenetur rerum non repudiandae. Voluptatibus pariatur facere voluptate neque aliquid doloribus corrupti natus. Blanditiis dolore, saepe debitis autem enim molestias? Neque dicta officia officiis ut sit! Iste dolor excepturi atque quidem ipsum quam dignissimos eum neque rem. Assumenda saepe eligendi amet? Iste earum soluta deleniti facilis odio! Temporibus ut veniam minima modi voluptatibus, consequatur quidem voluptates provident ratione eaque totam similique et in perferendis molestiae incidunt aut voluptatem ad, quisquam praesentium ex beatae, fugit aperiam. Quos sit ad est aspernatur in eum accusamus, asperiores voluptatum.', 'berita_file_path/informasi.png', NULL, '2025-05-04 13:25:24', '2025-05-04 13:25:24'),
(9, 'Informasi', 'Informasi 4', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi provident sed, corporis amet sint ratione tenetur rerum non repudiandae. Voluptatibus pariatur facere voluptate neque aliquid doloribus corrupti natus. Blanditiis dolore, saepe debitis autem enim molestias? Neque dicta officia officiis ut sit! Iste dolor excepturi atque quidem ipsum quam dignissimos eum neque rem. Assumenda saepe eligendi amet? Iste earum soluta deleniti facilis odio! Temporibus ut veniam minima modi voluptatibus, consequatur quidem voluptates provident ratione eaque totam similique et in perferendis molestiae incidunt aut voluptatem ad, quisquam praesentium ex beatae, fugit aperiam. Quos sit ad est aspernatur in eum accusamus, asperiores voluptatum.', 'berita_file_path/informasi.png', NULL, '2025-05-04 13:25:24', '2025-05-04 13:25:24'),
(10, 'Informasi', 'Informasi 5', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi provident sed, corporis amet sint ratione tenetur rerum non repudiandae. Voluptatibus pariatur facere voluptate neque aliquid doloribus corrupti natus. Blanditiis dolore, saepe debitis autem enim molestias? Neque dicta officia officiis ut sit! Iste dolor excepturi atque quidem ipsum quam dignissimos eum neque rem. Assumenda saepe eligendi amet? Iste earum soluta deleniti facilis odio! Temporibus ut veniam minima modi voluptatibus, consequatur quidem voluptates provident ratione eaque totam similique et in perferendis molestiae incidunt aut voluptatem ad, quisquam praesentium ex beatae, fugit aperiam. Quos sit ad est aspernatur in eum accusamus, asperiores voluptatum.', 'berita_file_path/informasi.png', NULL, '2025-05-04 13:25:24', '2025-05-04 13:25:24');

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counter` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `name`, `text`, `counter`, `created_at`, `updated_at`) VALUES
(1, 'Gaji', 'GJ', 0, '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(2, 'Target Kinerja', 'TK', 0, '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(3, 'Pengajuan Keuangan', 'PK', 0, '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(4, 'Inventory', 'INV', 0, '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(5, 'Penugasan', NULL, 0, '2025-05-04 13:25:25', '2025-05-04 13:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `cutis`
--

CREATE TABLE `cutis` (
  `id` bigint UNSIGNED NOT NULL,
  `lokasi_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `nama_cuti` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alasan_cuti` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `foto_cuti` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_cuti` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catatan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_approval` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `dinas_luars`
--

CREATE TABLE `dinas_luars` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `shift_id` bigint UNSIGNED NOT NULL,
  `tanggal` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_absen` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat_absen` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_absen` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_jam_absen` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jam_pulang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pulang_cepat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_jam_pulang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat_pulang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_pulang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_absen` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint UNSIGNED NOT NULL,
  `jenis_file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `fileUpload` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `golongans`
--

CREATE TABLE `golongans` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `golongans`
--

INSERT INTO `golongans` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'DIREKSI', '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(2, 'KABAG', '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(3, 'STAFF', '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(4, 'PELAKSANA', '2025-05-04 13:25:25', '2025-05-04 13:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint UNSIGNED NOT NULL,
  `kode_barang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_barang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stok` double(8,2) DEFAULT NULL,
  `uom` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lokasi_id` bigint UNSIGNED DEFAULT NULL,
  `jabatan_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `jabatans`
--

CREATE TABLE `jabatans` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_jabatan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `manager` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `jabatans`
--

INSERT INTO `jabatans` (`id`, `nama_jabatan`, `manager`, `created_at`, `updated_at`) VALUES
(1, 'Teknologi Informasi', 1, '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(2, 'Keuangan dan Akutansi', NULL, '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(3, 'Administrasi & Umum', NULL, '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(4, 'Humas & Pemasaran', NULL, '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(5, 'Sekretariat', NULL, '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(6, 'Direktur', NULL, '2025-05-04 13:25:25', '2025-05-04 13:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_kinerjas`
--

CREATE TABLE `jenis_kinerjas` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bobot` bigint DEFAULT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `jenis_kinerjas`
--

INSERT INTO `jenis_kinerjas` (`id`, `nama`, `bobot`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'Menyelesaikan Penugasan Kerja', 20, 'Jika pegawai menyelesaikan Penugasan Kerja yang diberikan pimpinan', '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(2, 'Menghadiri Pertemuan', 5, 'Jika pegawai melakukan melakukan presensi saat pertemuan/rapat', '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(3, 'Laporan Kerja', 10, 'Jika pegawai melaporkan pekerjaan sesuai tugas kerjanya', '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(4, 'Pulang tepat waktu', 10, 'Jika pegawai tidak melakukan presensi pulang kerja', '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(5, 'Pulang Sebelum waktunya', -5, 'Jika pegawai melakukan melakukan presensi sebelum jam kerja selesai', '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(6, 'Telat Presensi Masuk', -10, 'Jika pegawai telat melakukan presensi masuk kerja', '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(7, 'Presensi Kehadiran Ontime', 10, 'Jika pegawai melakukan presensi masuk kerja', '2025-05-04 13:25:25', '2025-05-04 13:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `kasbons`
--

CREATE TABLE `kasbons` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `nominal` int NOT NULL,
  `keperluan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah` bigint DEFAULT NULL,
  `active` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `kategoris`
--

INSERT INTO `kategoris` (`id`, `name`, `jumlah`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Bensin Pertalite (Mobil)', 200000, 1, '2025-05-04 13:25:24', '2025-05-04 13:25:24'),
(2, 'Bensin Pertalite (Motor)', 100000, 1, '2025-05-04 13:25:24', '2025-05-04 13:25:24'),
(3, 'Biaya Jasa Pasang PSB (50.000)', 50000, 1, '2025-05-04 13:25:24', '2025-05-04 13:25:24'),
(4, 'Pasang ODP (200.000)', 200000, 1, '2025-05-04 13:25:24', '2025-05-04 13:25:24'),
(5, 'Tarik Kabel DC Backbone (500/m)', 2000000, 1, '2025-05-04 13:25:24', '2025-05-04 13:25:24'),
(6, 'Lain-lain', NULL, 1, '2025-05-04 13:25:24', '2025-05-04 13:25:24'),
(7, 'Pelatihan Olahraga', 1000000, NULL, '2025-05-04 13:25:24', '2025-05-04 13:25:24');

-- --------------------------------------------------------

--
-- Table structure for table `kontraks`
--

CREATE TABLE `kontraks` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `tanggal` date DEFAULT NULL,
  `jenis_kontrak` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `masa_berlaku_sebelumnya` date DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `kontrak_file_path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kontrak_file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `kunjungans`
--

CREATE TABLE `kunjungans` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `tanggal` date DEFAULT NULL,
  `visit_in` datetime DEFAULT NULL,
  `foto_in` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat_in` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_in` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan_in` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `visit_out` datetime DEFAULT NULL,
  `foto_out` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat_out` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_out` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan_out` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `laporan_kerjas`
--

CREATE TABLE `laporan_kerjas` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `informasi_umum` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pekerjaan_dilaksanakan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pekerjaan_belum_selesai` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `catatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `laporan_kinerjas`
--

CREATE TABLE `laporan_kinerjas` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jenis_kinerja_id` bigint UNSIGNED DEFAULT NULL,
  `nilai` bigint DEFAULT NULL,
  `penilaian_berjalan` bigint DEFAULT NULL,
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `laporan_kinerjas`
--

INSERT INTO `laporan_kinerjas` (`id`, `user_id`, `tanggal`, `jenis_kinerja_id`, `nilai`, `penilaian_berjalan`, `reference`, `reference_id`, `created_at`, `updated_at`) VALUES
(1, 2, '2025-05-29', 7, 10, 10, 'App\\Models\\MappingShift', 1, '2025-05-28 21:42:43', '2025-05-28 21:42:43'),
(2, 2, '2025-05-29', 7, 10, 20, 'App\\Models\\MappingShift', 1, '2025-05-28 21:47:03', '2025-05-28 21:47:03'),
(3, 2, '2025-05-29', 7, 10, 30, 'App\\Models\\MappingShift', 1, '2025-05-28 21:47:25', '2025-05-28 21:47:25'),
(4, 2, '2025-05-29', 5, -5, 25, 'App\\Models\\MappingShift', 1, '2025-05-28 21:56:27', '2025-05-28 21:56:27'),
(5, 2, '2025-05-29', 7, 10, 35, 'App\\Models\\MappingShift', 2, '2025-05-28 22:07:36', '2025-05-28 22:07:36'),
(6, 2, '2025-05-29', 7, 10, 45, 'App\\Models\\MappingShift', 3, '2025-05-28 22:12:36', '2025-05-28 22:12:36'),
(7, 2, '2025-05-29', 5, -5, 40, 'App\\Models\\MappingShift', 3, '2025-05-28 22:12:57', '2025-05-28 22:12:57');

-- --------------------------------------------------------

--
-- Table structure for table `lemburs`
--

CREATE TABLE `lemburs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `lokasi_id` bigint UNSIGNED NOT NULL,
  `tanggal` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_masuk` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat_masuk` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_masuk` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jarak_masuk` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_jam_masuk` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_keluar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat_keluar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_keluar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jarak_keluar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_jam_keluar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_lembur` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `lokasis`
--

CREATE TABLE `lokasis` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_lokasi` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat_kantor` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_kantor` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `radius` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `approved_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `lokasis`
--

INSERT INTO `lokasis` (`id`, `nama_lokasi`, `lat_kantor`, `long_kantor`, `radius`, `keterangan`, `status`, `created_by`, `approved_by`, `created_at`, `updated_at`) VALUES
(1, 'Kantor Cabang A', '-3.3394746', '114.618397', '100', 'Office', 'approved', 1, NULL, '2025-05-04 13:25:25', '2025-05-28 23:12:32'),
(2, 'Kantor Cabang B', '-6.3707314', '106.8138057', '200', 'Office', 'approved', 1, NULL, '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(3, 'Gedung A', '-6.3707314', '106.8138057', '200', 'Patroli', 'approved', 1, NULL, '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(4, 'Gedung B', '-6.3707332', '106.81380572', '200', 'Patroli', 'approved', 1, NULL, '2025-05-04 13:25:25', '2025-05-04 13:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `mapping_shifts`
--

CREATE TABLE `mapping_shifts` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `shift_id` bigint UNSIGNED DEFAULT NULL,
  `tanggal` date NOT NULL,
  `jam_absen` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat_absen` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_absen` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jarak_masuk` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_jam_absen` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan_masuk` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jam_pulang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pulang_cepat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat_pulang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_pulang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jarak_pulang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_jam_pulang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan_pulang` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_absen` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lock_location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jam_masuk_pengajuan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jam_pulang_pengajuan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_pengajuan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_pengajuan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `komentar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `mapping_shifts`
--

INSERT INTO `mapping_shifts` (`id`, `user_id`, `shift_id`, `tanggal`, `jam_absen`, `telat`, `lat_absen`, `long_absen`, `jarak_masuk`, `foto_jam_absen`, `keterangan_masuk`, `jam_pulang`, `pulang_cepat`, `lat_pulang`, `long_pulang`, `jarak_pulang`, `foto_jam_pulang`, `keterangan_pulang`, `status_absen`, `lock_location`, `jam_masuk_pengajuan`, `jam_pulang_pengajuan`, `deskripsi`, `status_pengajuan`, `file_pengajuan`, `komentar`, `approved_by`, `created_at`, `updated_at`) VALUES
(4, 2, 2, '2025-05-29', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-28 23:26:22', '2025-05-28 23:26:22'),
(5, 2, 2, '2025-05-30', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-28 23:26:22', '2025-05-28 23:26:22'),
(6, 2, 2, '2025-05-31', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, 'Tidak Masuk', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-28 23:26:22', '2025-05-28 23:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_16_095447_create_shifts_table', 1),
(6, '2022_09_19_032649_create_mapping_shifts_table', 1),
(7, '2022_09_20_074944_create_lemburs_table', 1),
(8, '2022_09_20_092230_create_cutis_table', 1),
(9, '2022_10_31_083510_create_lokasis_table', 1),
(10, '2022_11_02_061554_create_reset_cutis_table', 1),
(11, '2022_12_01_041742_create_sips_table', 1),
(12, '2022_12_14_080034_create_jabatans_table', 1),
(13, '2023_03_22_103407_create_dinas_luars_table', 1),
(14, '2023_04_10_130307_create_auto_shifts_table', 1),
(15, '2023_06_28_042019_create_files_table', 1),
(16, '2023_07_15_095632_create_tunjangans_table', 1),
(17, '2023_07_16_152608_create_golongans_table', 1),
(18, '2023_07_19_122052_create_status_ptkps_table', 1),
(19, '2023_07_20_082307_create_pajaks_table', 1),
(20, '2023_07_21_085614_create_payrolls_table', 1),
(21, '2023_12_05_140334_create_counters_table', 1),
(22, '2023_12_06_163716_create_kasbons_table', 1),
(23, '2024_06_15_075202_create_notifications_table', 1),
(24, '2024_07_27_095429_create_settings_table', 1),
(25, '2024_09_19_040613_create_reimbursements_table', 1),
(26, '2024_09_19_040828_create_kategoris_table', 1),
(27, '2024_09_22_082937_create_kunjungans_table', 1),
(28, '2024_10_02_182404_create_reimbursements_items_table', 1),
(29, '2024_11_23_125436_create_jenis_kinerjas_table', 1),
(30, '2024_11_23_143017_create_laporan_kinerjas_table', 1),
(31, '2024_11_23_190924_create_penugasans_table', 1),
(32, '2024_11_23_200000_create_penugasan_items_table', 1),
(33, '2024_11_26_031205_create_rapats_table', 1),
(34, '2024_11_26_040949_create_rapat_pegawais_table', 1),
(35, '2024_11_26_081727_create_rapat_notulens_table', 1),
(36, '2024_11_26_140652_create_inventories_table', 1),
(37, '2024_12_06_123720_create_kontraks_table', 1),
(38, '2024_12_08_072818_create_pegawai_keluars_table', 1),
(39, '2024_12_16_100744_create_patrolis_table', 1),
(40, '2024_12_21_174829_create_target_kinerjas_table', 1),
(41, '2024_12_23_163056_create_target_kinerja_teams_table', 1),
(42, '2025_01_01_155603_create_laporan_kerjas_table', 1),
(43, '2025_01_24_171233_create_permission_tables', 1),
(44, '2025_01_31_124509_create_pengajuan_keuangans_table', 1),
(45, '2025_01_31_161224_create_pengajuan_keuangan_items_table', 1),
(46, '2025_02_01_160925_create_beritas_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 4),
(5, 'App\\Models\\User', 5),
(6, 'App\\Models\\User', 6),
(7, 'App\\Models\\User', 7);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `pajaks`
--

CREATE TABLE `pajaks` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `status_id` bigint UNSIGNED NOT NULL,
  `bulan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `patrolis`
--

CREATE TABLE `patrolis` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `lokasi_id` bigint UNSIGNED DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jarak` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

CREATE TABLE `payrolls` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `bulan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `persentase_kehadiran` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_gaji` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gaji_pokok` bigint NOT NULL,
  `uang_transport` bigint NOT NULL,
  `total_reimbursement` bigint NOT NULL,
  `jumlah_mangkir` bigint NOT NULL,
  `uang_mangkir` bigint NOT NULL,
  `total_mangkir` bigint NOT NULL,
  `jumlah_lembur` bigint NOT NULL,
  `uang_lembur` bigint NOT NULL,
  `total_lembur` bigint NOT NULL,
  `jumlah_izin` bigint NOT NULL,
  `uang_izin` bigint NOT NULL,
  `total_izin` bigint NOT NULL,
  `bonus_pribadi` bigint NOT NULL,
  `bonus_team` bigint NOT NULL,
  `bonus_jackpot` bigint NOT NULL,
  `jumlah_terlambat` bigint NOT NULL,
  `uang_terlambat` bigint NOT NULL,
  `total_terlambat` bigint NOT NULL,
  `jumlah_kehadiran` bigint NOT NULL,
  `uang_kehadiran` bigint NOT NULL,
  `total_kehadiran` bigint NOT NULL,
  `saldo_kasbon` bigint NOT NULL,
  `bayar_kasbon` bigint NOT NULL,
  `jumlah_thr` bigint NOT NULL,
  `uang_thr` bigint NOT NULL,
  `total_thr` bigint NOT NULL,
  `loss` bigint NOT NULL,
  `total_penjumlahan` bigint NOT NULL,
  `total_pengurangan` bigint NOT NULL,
  `grand_total` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai_keluars`
--

CREATE TABLE `pegawai_keluars` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `tanggal` date DEFAULT NULL,
  `jenis` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alasan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pegawai_keluar_file_path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pegawai_keluar_file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` bigint UNSIGNED DEFAULT NULL,
  `tanggal_approval` date DEFAULT NULL,
  `notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_keuangans`
--

CREATE TABLE `pengajuan_keuangans` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `nomor` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `total_harga` bigint DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pk_file_path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pk_file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nota_file_path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nota_file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_approval` bigint UNSIGNED DEFAULT NULL,
  `note_approval` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan_keuangan_items`
--

CREATE TABLE `pengajuan_keuangan_items` (
  `id` bigint UNSIGNED NOT NULL,
  `pengajuan_keuangan_id` bigint UNSIGNED DEFAULT NULL,
  `nama` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `harga` bigint DEFAULT NULL,
  `total` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `penugasans`
--

CREATE TABLE `penugasans` (
  `id` bigint UNSIGNED NOT NULL,
  `nomor_penugasan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `judul` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rincian` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `penugasan_items`
--

CREATE TABLE `penugasan_items` (
  `id` bigint UNSIGNED NOT NULL,
  `penugasan_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `flow` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `rapats`
--

CREATE TABLE `rapats` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam_mulai` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_selesai` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lokasi` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `rapat_notulens`
--

CREATE TABLE `rapat_notulens` (
  `id` bigint UNSIGNED NOT NULL,
  `rapat_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `notulen` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `rapat_pegawais`
--

CREATE TABLE `rapat_pegawais` (
  `id` bigint UNSIGNED NOT NULL,
  `rapat_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `hadir` datetime DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `reimbursements`
--

CREATE TABLE `reimbursements` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `kategori_id` bigint UNSIGNED NOT NULL,
  `tanggal` date DEFAULT NULL,
  `event` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah` bigint DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `total` bigint DEFAULT NULL,
  `sisa` bigint DEFAULT NULL,
  `file_path` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `reimbursements_items`
--

CREATE TABLE `reimbursements_items` (
  `id` bigint UNSIGNED NOT NULL,
  `reimbursement_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `fee` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `reset_cutis`
--

CREATE TABLE `reset_cutis` (
  `id` bigint UNSIGNED NOT NULL,
  `izin_cuti` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `izin_dinas_luar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `izin_sakit` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `izin_cek_kesehatan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `izin_keperluan_pribadi` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `izin_telat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `izin_pulang_cepat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `izin_lainnya` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `reset_cutis`
--

INSERT INTO `reset_cutis` (`id`, `izin_cuti`, `izin_dinas_luar`, `izin_sakit`, `izin_cek_kesehatan`, `izin_keperluan_pribadi`, `izin_telat`, `izin_pulang_cepat`, `izin_lainnya`, `created_at`, `updated_at`) VALUES
(1, '10', '10', '10', '10', '10', '10', '10', '10', '2025-05-04 13:25:25', '2025-05-04 13:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2025-05-04 13:25:24', '2025-05-04 13:25:24'),
(2, 'user', 'web', '2025-05-04 13:25:24', '2025-05-04 13:25:24'),
(3, 'hrd', 'web', '2025-05-04 13:25:24', '2025-05-04 13:25:24'),
(4, 'general_manager', 'web', '2025-05-04 13:25:24', '2025-05-04 13:25:24'),
(5, 'finance', 'web', '2025-05-04 13:25:24', '2025-05-04 13:25:24'),
(6, 'kepala_cabang', 'web', '2025-05-04 13:25:24', '2025-05-04 13:25:24'),
(7, 'regional_manager', 'web', '2025-05-04 13:25:24', '2025-05-04 13:25:24');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_whatsapp` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `logo`, `alamat`, `phone`, `whatsapp`, `api_url`, `api_whatsapp`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Absensi', 'logo/absensi.png', 'jln. akasia 1 c.221, purwakarta, aceh', '6281212099664', '6285183397739', 'https://wa.haihalo.com/send-message', 'AI3BsRRM9bVwBZB5zHhDjoq4SLBFBkNj', 'absensi@gmail.com', '2025-05-04 13:25:24', '2025-05-04 13:25:24');

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_shift` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_masuk` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam_keluar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `nama_shift`, `jam_masuk`, `jam_keluar`, `created_at`, `updated_at`) VALUES
(1, 'Libur', '00:00', '00:00', '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(2, 'Office', '07:00', '17:00', '2025-05-04 13:25:25', '2025-05-28 23:05:04'),
(3, 'Siang', '13:00', '21:00', '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(4, 'Malam', '21:00', '07:00', '2025-05-04 13:25:25', '2025-05-04 13:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `sips`
--

CREATE TABLE `sips` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `nama_dokumen` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_berakhir` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `status_ptkps`
--

CREATE TABLE `status_ptkps` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ptkp_2016` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ptkp_2015` decimal(15,2) NOT NULL DEFAULT '0.00',
  `ptkp_2009_2012` decimal(15,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `status_ptkps`
--

INSERT INTO `status_ptkps` (`id`, `name`, `ptkp_2016`, `ptkp_2015`, `ptkp_2009_2012`, `created_at`, `updated_at`) VALUES
(1, 'TK/0', 54000000.00, 36000000.00, 15840000.00, '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(2, 'TK/1', 58500000.00, 39000000.00, 17160000.00, '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(3, 'TK/2', 63000000.00, 42000000.00, 18480000.00, '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(4, 'TK/3', 67500000.00, 45000000.00, 19800000.00, '2025-05-04 13:25:25', '2025-05-04 13:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `target_kinerjas`
--

CREATE TABLE `target_kinerjas` (
  `id` bigint UNSIGNED NOT NULL,
  `nomor` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_team` bigint DEFAULT NULL,
  `jumlah_persen_team` bigint DEFAULT NULL,
  `bonus_team` bigint DEFAULT NULL,
  `jackpot` bigint DEFAULT NULL,
  `tanggal_awal` date DEFAULT NULL,
  `tanggal_akhir` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `target_kinerja_teams`
--

CREATE TABLE `target_kinerja_teams` (
  `id` bigint UNSIGNED NOT NULL,
  `target_kinerja_id` bigint UNSIGNED DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `jabatan_id` bigint UNSIGNED DEFAULT NULL,
  `target_pribadi` bigint DEFAULT NULL,
  `jumlah_persen_pribadi` bigint DEFAULT NULL,
  `bonus_pribadi` bigint DEFAULT NULL,
  `judul` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumlah` bigint DEFAULT NULL,
  `capai` double DEFAULT NULL,
  `nilai` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bonus_p` bigint DEFAULT NULL,
  `bonus_t` bigint DEFAULT NULL,
  `bonus_j` bigint DEFAULT NULL,
  `keterangan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tunjangans`
--

CREATE TABLE `tunjangans` (
  `id` bigint UNSIGNED NOT NULL,
  `golongan_id` bigint UNSIGNED NOT NULL,
  `tunjangan_makan` decimal(15,2) NOT NULL DEFAULT '0.00',
  `tunjangan_transport` decimal(15,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tunjangans`
--

INSERT INTO `tunjangans` (`id`, `golongan_id`, `tunjangan_makan`, `tunjangan_transport`, `created_at`, `updated_at`) VALUES
(1, 1, 20000.00, 20000.00, '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(2, 2, 30000.00, 20000.00, '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(3, 3, 30000.00, 30000.00, '2025-05-04 13:25:25', '2025-05-04 13:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_karyawan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto_face_recognition` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telepon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_join` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_nikah` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `izin_cuti` bigint NOT NULL DEFAULT '0',
  `izin_lainnya` bigint NOT NULL DEFAULT '0',
  `izin_telat` bigint NOT NULL DEFAULT '0',
  `izin_pulang_cepat` bigint NOT NULL DEFAULT '0',
  `is_admin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `masa_berlaku` date DEFAULT NULL,
  `jabatan_id` bigint UNSIGNED DEFAULT NULL,
  `lokasi_id` bigint UNSIGNED DEFAULT NULL,
  `ktp` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kartu_keluarga` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bpjs_kesehatan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bpjs_ketenagakerjaan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `npwp` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sim` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_pkwt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_kontrak` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_mulai_pkwt` date DEFAULT NULL,
  `tanggal_berakhir_pkwt` date DEFAULT NULL,
  `rekening` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_rekening` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gaji_pokok` bigint DEFAULT NULL,
  `makan_transport` bigint DEFAULT NULL,
  `lembur` bigint DEFAULT NULL,
  `kehadiran` bigint DEFAULT NULL,
  `thr` bigint DEFAULT NULL,
  `bonus_pribadi` bigint DEFAULT NULL,
  `bonus_team` bigint DEFAULT NULL,
  `bonus_jackpot` bigint DEFAULT NULL,
  `izin` bigint DEFAULT NULL,
  `terlambat` bigint DEFAULT NULL,
  `mangkir` bigint DEFAULT NULL,
  `saldo_kasbon` bigint DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `foto_karyawan`, `foto_face_recognition`, `email`, `telepon`, `username`, `password`, `tgl_lahir`, `gender`, `tgl_join`, `status_nikah`, `alamat`, `izin_cuti`, `izin_lainnya`, `izin_telat`, `izin_pulang_cepat`, `is_admin`, `masa_berlaku`, `jabatan_id`, `lokasi_id`, `ktp`, `kartu_keluarga`, `bpjs_kesehatan`, `bpjs_ketenagakerjaan`, `npwp`, `sim`, `no_pkwt`, `no_kontrak`, `tanggal_mulai_pkwt`, `tanggal_berakhir_pkwt`, `rekening`, `nama_rekening`, `gaji_pokok`, `makan_transport`, `lembur`, `kehadiran`, `thr`, `bonus_pribadi`, `bonus_team`, `bonus_jackpot`, `izin`, `terlambat`, `mangkir`, `saldo_kasbon`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', NULL, NULL, 'admin@gmail.com', '085171744592', 'admin', '$2y$10$G93cEE8.Q3.PcECCLrvV3uWJSXqMfUpf8aqisFS90pxBjWY0063Lq', '2025-05-04', 'Laki-Laki', '1998-01-26', 'TK/1', 'jl. admin test', 12, 6, 16, 9, 'admin', NULL, 1, 1, '3375212601981211', '2311876775523112', '1627789654371789', '2312342432556232', '2312242432556232', '2312342433356232', '8312342433356232', '8312342433356232', '2025-05-04', '2028-10-10', '1255342433356232', 'Ricky Ramadhan', 7000000, 800000, 20000, 300000, 200000, 200000, 2000000, 0, 100000, 100000, 200000, 220000, NULL, NULL, '2025-05-04 13:25:24', '2025-05-04 13:25:24'),
(2, 'User', 'foto_karyawan/ajplU5HHQcLfTdrxiaszPWfXL3jniXjCw48I4HWq.jpg', 'foto_face_recognition/user.png', 'user@gmail.com', '123456789', 'user', '$2y$10$Ze2V6WeH8T8TXERZeDi4D.9/aOExWnGhjygJRFTBixnrD/oVGzwKK', '2025-05-29', 'Laki-Laki', '2022-01-28', 'TK/0', 'jl. user test', 10, 10, 10, 10, 'user', NULL, 1, 1, '4575212601981211', '5311876775523112', '6227789654371789', '9712342432556232', '7712242432556232', '8312342433356232', '8312342433356232', '8312342433356232', '2025-05-04', '2028-10-10', '9255342433356232', 'User Ramadhan', 10000000, 900000, 20000, 800000, 700000, 0, 0, 0, 100000, 100000, 200000, 4000000, NULL, NULL, '2025-05-04 13:25:25', '2025-05-28 23:15:52'),
(3, 'User HRD', NULL, NULL, 'baim@gmail.com', '123456789', 'baim', '$2y$10$JHtil.2EX0yXewbNbdUxbu/2ah2Z6bCgrRQzEgJUmtNc2Jmri7eDu', '2025-05-04', 'Laki-Laki', '2022-01-28', 'K/0', 'jl. user test', 10, 10, 10, 10, 'user', NULL, 1, 2, '4575212601981211', '5311876775523112', '6227789654371789', '9712342432556232', '7712242432556232', '8312342433356232', '8312342433356232', '8312342433356232', '2025-05-04', '2028-10-10', '9255342433356232', 'User Ramadhan', 10000000, 900000, 20000, 800000, 700000, 0, 0, 0, 100000, 100000, 200000, 4000000, NULL, NULL, '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(4, 'User GM', NULL, NULL, 'fauzan@gmail.com', '123456789', 'fauzan', '$2y$10$ViY.cb99KhtOmyEtamfuQOaRPUk7ugrBzU/Y.6sjvrAZxbYsHEqSa', '2025-05-04', 'Laki-Laki', '2022-01-28', 'K/0', 'jl. user test', 10, 10, 10, 10, 'user', NULL, 1, 2, '4575212601981211', '5311876775523112', '6227789654371789', '9712342432556232', '7712242432556232', '8312342433356232', '8312342433356232', '8312342433356232', '2025-05-04', '2028-10-10', '9255342433356232', 'Fauzan Arya', 10000000, 900000, 20000, 800000, 700000, 0, 0, 0, 100000, 100000, 200000, 4000000, NULL, NULL, '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(5, 'User Finance', NULL, NULL, 'Pandu@gmail.com', '123456789', 'pandu', '$2y$10$DzLXuoPUEU9FYzPKYaa9Iuvo2cz0BeXsrXsnrFgeNQEcT9x/lAY0m', '2025-05-04', 'Laki-Laki', '2022-01-28', 'K/0', 'jl. user test', 10, 10, 10, 10, 'user', NULL, 1, 1, '4575212601981211', '5311876775523112', '6227789654371789', '9712342432556232', '7712242432556232', '8312342433356232', '8312342433356232', '8312342433356232', '2025-05-04', '2028-10-10', '9255342433356232', 'Pandu Arya', 10000000, 900000, 20000, 800000, 700000, 0, 0, 0, 100000, 100000, 200000, 4000000, NULL, NULL, '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(6, 'User Kep.Cabang', NULL, NULL, 'zhafira@gmail.com', '6281818607319', 'zhafira', '$2y$10$xWWlA2XYWwCh8bxknhI4HOR0TIrpmn.Ef21/l3I5A4kgB2YA2A1Sm', '2025-05-04', 'Laki-Laki', '2022-01-28', 'K/0', 'jl. user test', 10, 10, 10, 10, 'user', NULL, 1, 1, '4575212601981211', '5311876775523112', '6227789654371789', '9712342432556232', '7712242432556232', '8312342433356232', '8312342433356232', '8312342433356232', '2025-05-04', '2028-10-10', '9255342433356232', 'Zhafira Salsabil', 10000000, 900000, 20000, 800000, 700000, 0, 0, 0, 100000, 100000, 200000, 4000000, NULL, NULL, '2025-05-04 13:25:25', '2025-05-04 13:25:25'),
(7, 'User Reg.Manager', NULL, NULL, 'yahya@gmail.com', '081818607319', 'yahya', '$2y$10$QhLtkEeziU60/.Js7zLL6ettYWTM0aWGt8pyIwPjoyQpquxczM5Uy', '2025-05-04', 'Laki-Laki', '2022-01-28', 'K/1', 'jl. user test', 10, 10, 10, 10, 'user', NULL, 1, 1, '4575212601981211', '5311876775523112', '6227789654371789', '9712342432556232', '7712242432556232', '8312342433356232', '8312342433356232', '8312342433356232', '2025-05-04', '2028-10-10', '9255342433356232', 'Yahya', 10000000, 900000, 20000, 800000, 700000, 0, 0, 0, 100000, 100000, 200000, 4000000, NULL, NULL, '2025-05-04 13:25:25', '2025-05-04 13:25:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auto_shifts`
--
ALTER TABLE `auto_shifts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `cutis`
--
ALTER TABLE `cutis`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `cutis_user_approval_foreign` (`user_approval`) USING BTREE;

--
-- Indexes for table `dinas_luars`
--
ALTER TABLE `dinas_luars`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `golongans`
--
ALTER TABLE `golongans`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `jabatans`
--
ALTER TABLE `jabatans`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `jabatans_manager_foreign` (`manager`) USING BTREE;

--
-- Indexes for table `jenis_kinerjas`
--
ALTER TABLE `jenis_kinerjas`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kasbons`
--
ALTER TABLE `kasbons`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kontraks`
--
ALTER TABLE `kontraks`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `kunjungans`
--
ALTER TABLE `kunjungans`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `laporan_kerjas`
--
ALTER TABLE `laporan_kerjas`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `laporan_kinerjas`
--
ALTER TABLE `laporan_kinerjas`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `lemburs`
--
ALTER TABLE `lemburs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `lemburs_approved_by_foreign` (`approved_by`) USING BTREE;

--
-- Indexes for table `lokasis`
--
ALTER TABLE `lokasis`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `lokasis_created_by_foreign` (`created_by`) USING BTREE,
  ADD KEY `lokasis_approved_by_foreign` (`approved_by`) USING BTREE;

--
-- Indexes for table `mapping_shifts`
--
ALTER TABLE `mapping_shifts`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `mapping_shifts_approved_by_foreign` (`approved_by`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`) USING BTREE,
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`) USING BTREE;

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`) USING BTREE;

--
-- Indexes for table `pajaks`
--
ALTER TABLE `pajaks`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `pajaks_status_id_foreign` (`status_id`) USING BTREE;

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indexes for table `patrolis`
--
ALTER TABLE `patrolis`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `payrolls`
--
ALTER TABLE `payrolls`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pegawai_keluars`
--
ALTER TABLE `pegawai_keluars`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `pegawai_keluars_approved_by_foreign` (`approved_by`) USING BTREE;

--
-- Indexes for table `pengajuan_keuangans`
--
ALTER TABLE `pengajuan_keuangans`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `pengajuan_keuangans_user_approval_foreign` (`user_approval`) USING BTREE;

--
-- Indexes for table `pengajuan_keuangan_items`
--
ALTER TABLE `pengajuan_keuangan_items`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `penugasans`
--
ALTER TABLE `penugasans`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `penugasan_items`
--
ALTER TABLE `penugasan_items`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`) USING BTREE;

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`) USING BTREE,
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`) USING BTREE;

--
-- Indexes for table `rapats`
--
ALTER TABLE `rapats`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `rapat_notulens`
--
ALTER TABLE `rapat_notulens`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `rapat_pegawais`
--
ALTER TABLE `rapat_pegawais`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `reimbursements`
--
ALTER TABLE `reimbursements`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `reimbursements_items`
--
ALTER TABLE `reimbursements_items`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `reset_cutis`
--
ALTER TABLE `reset_cutis`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`) USING BTREE;

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`) USING BTREE,
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`) USING BTREE;

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sips`
--
ALTER TABLE `sips`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `status_ptkps`
--
ALTER TABLE `status_ptkps`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `target_kinerjas`
--
ALTER TABLE `target_kinerjas`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `target_kinerja_teams`
--
ALTER TABLE `target_kinerja_teams`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `target_kinerja_teams_target_kinerja_id_foreign` (`target_kinerja_id`) USING BTREE,
  ADD KEY `target_kinerja_teams_user_id_foreign` (`user_id`) USING BTREE,
  ADD KEY `target_kinerja_teams_jabatan_id_foreign` (`jabatan_id`) USING BTREE;

--
-- Indexes for table `tunjangans`
--
ALTER TABLE `tunjangans`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auto_shifts`
--
ALTER TABLE `auto_shifts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cutis`
--
ALTER TABLE `cutis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dinas_luars`
--
ALTER TABLE `dinas_luars`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `golongans`
--
ALTER TABLE `golongans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jabatans`
--
ALTER TABLE `jabatans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jenis_kinerjas`
--
ALTER TABLE `jenis_kinerjas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kasbons`
--
ALTER TABLE `kasbons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kontraks`
--
ALTER TABLE `kontraks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kunjungans`
--
ALTER TABLE `kunjungans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laporan_kerjas`
--
ALTER TABLE `laporan_kerjas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laporan_kinerjas`
--
ALTER TABLE `laporan_kinerjas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lemburs`
--
ALTER TABLE `lemburs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lokasis`
--
ALTER TABLE `lokasis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mapping_shifts`
--
ALTER TABLE `mapping_shifts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `pajaks`
--
ALTER TABLE `pajaks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patrolis`
--
ALTER TABLE `patrolis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payrolls`
--
ALTER TABLE `payrolls`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pegawai_keluars`
--
ALTER TABLE `pegawai_keluars`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengajuan_keuangans`
--
ALTER TABLE `pengajuan_keuangans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengajuan_keuangan_items`
--
ALTER TABLE `pengajuan_keuangan_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penugasans`
--
ALTER TABLE `penugasans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penugasan_items`
--
ALTER TABLE `penugasan_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rapats`
--
ALTER TABLE `rapats`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rapat_notulens`
--
ALTER TABLE `rapat_notulens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rapat_pegawais`
--
ALTER TABLE `rapat_pegawais`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reimbursements`
--
ALTER TABLE `reimbursements`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reimbursements_items`
--
ALTER TABLE `reimbursements_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reset_cutis`
--
ALTER TABLE `reset_cutis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sips`
--
ALTER TABLE `sips`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_ptkps`
--
ALTER TABLE `status_ptkps`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `target_kinerjas`
--
ALTER TABLE `target_kinerjas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `target_kinerja_teams`
--
ALTER TABLE `target_kinerja_teams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tunjangans`
--
ALTER TABLE `tunjangans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cutis`
--
ALTER TABLE `cutis`
  ADD CONSTRAINT `cutis_user_approval_foreign` FOREIGN KEY (`user_approval`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `jabatans`
--
ALTER TABLE `jabatans`
  ADD CONSTRAINT `jabatans_manager_foreign` FOREIGN KEY (`manager`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `lemburs`
--
ALTER TABLE `lemburs`
  ADD CONSTRAINT `lemburs_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `lokasis`
--
ALTER TABLE `lokasis`
  ADD CONSTRAINT `lokasis_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `lokasis_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `mapping_shifts`
--
ALTER TABLE `mapping_shifts`
  ADD CONSTRAINT `mapping_shifts_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `pajaks`
--
ALTER TABLE `pajaks`
  ADD CONSTRAINT `pajaks_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `status_ptkps` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `pegawai_keluars`
--
ALTER TABLE `pegawai_keluars`
  ADD CONSTRAINT `pegawai_keluars_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `pengajuan_keuangans`
--
ALTER TABLE `pengajuan_keuangans`
  ADD CONSTRAINT `pengajuan_keuangans_user_approval_foreign` FOREIGN KEY (`user_approval`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `target_kinerja_teams`
--
ALTER TABLE `target_kinerja_teams`
  ADD CONSTRAINT `target_kinerja_teams_jabatan_id_foreign` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatans` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `target_kinerja_teams_target_kinerja_id_foreign` FOREIGN KEY (`target_kinerja_id`) REFERENCES `target_kinerjas` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `target_kinerja_teams_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
