-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2019 at 08:06 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengelolaanzakat`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('administrator', '1', 1554785099),
('manager', '4', 1554862289),
('user biasa', '2', 1557636543),
('user biasa', '6', 1557641147),
('user biasa permission', '2', 1557636546),
('user biasa permission', '6', 1557641146);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/admin/*', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/admin/default/*', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/admin/default/index', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/admin/menu/*', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/admin/menu/create', 2, NULL, NULL, NULL, 1557635699, 1557635699),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/admin/menu/index', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/admin/menu/update', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/admin/menu/view', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/admin/permission/*', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/admin/permission/create', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/admin/permission/index', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/permission/update', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/admin/permission/view', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/admin/role/*', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/role/assign', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/role/create', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/role/delete', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/role/index', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/role/remove', 2, NULL, NULL, NULL, 1557634840, 1557634840),
('/admin/role/update', 2, NULL, NULL, NULL, 1557634840, 1557634840),
('/admin/role/view', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/route/*', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/route/assign', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/route/create', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/route/index', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/route/remove', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/rule/*', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/rule/create', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/rule/index', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/rule/update', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/rule/view', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/user/*', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/user/activate', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/user/delete', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/user/index', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/user/login', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/user/logout', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/user/signup', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/admin/user/view', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/anggota/*', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/anggota/create', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/anggota/delete', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/anggota/export-excel', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/anggota/export-pdf', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/anggota/index', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/anggota/update', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/anggota/view', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/buku/*', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/buku/create', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/buku/delete', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/buku/export-excel', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/buku/export-pdf', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/buku/grafik1', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/buku/grafik2', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/buku/index', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/buku/update', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/buku/view', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/debug/*', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/debug/default/*', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/debug/default/index', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/debug/default/view', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/debug/user/*', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/debug/user/reset-identity', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/debug/user/set-identity', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/file/*', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/file/download', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/file/show', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/gii/*', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/gii/default/*', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/gii/default/action', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/gii/default/diff', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/gii/default/index', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/gii/default/preview', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/gii/default/view', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/jenis-program/*', 2, NULL, NULL, NULL, 1557634840, 1557634840),
('/jenis-program/create', 2, NULL, NULL, NULL, 1557634840, 1557634840),
('/jenis-program/delete', 2, NULL, NULL, NULL, 1557634840, 1557634840),
('/jenis-program/index', 2, NULL, NULL, NULL, 1557634840, 1557634840),
('/jenis-program/update', 2, NULL, NULL, NULL, 1557634840, 1557634840),
('/jenis-program/view', 2, NULL, NULL, NULL, 1557634840, 1557634840),
('/kecamatan/*', 2, NULL, NULL, NULL, 1557634840, 1557634840),
('/kecamatan/create', 2, NULL, NULL, NULL, 1557634840, 1557634840),
('/kecamatan/delete', 2, NULL, NULL, NULL, 1557634840, 1557634840),
('/kecamatan/index', 2, NULL, NULL, NULL, 1557634840, 1557634840),
('/kecamatan/update', 2, NULL, NULL, NULL, 1557634840, 1557634840),
('/kecamatan/view', 2, NULL, NULL, NULL, 1557634840, 1557634840),
('/kelurahan/*', 2, NULL, NULL, NULL, 1557634841, 1557634841),
('/kelurahan/create', 2, NULL, NULL, NULL, 1557634841, 1557634841),
('/kelurahan/delete', 2, NULL, NULL, NULL, 1557634841, 1557634841),
('/kelurahan/index', 2, NULL, NULL, NULL, 1557634840, 1557634840),
('/kelurahan/update', 2, NULL, NULL, NULL, 1557634841, 1557634841),
('/kelurahan/view', 2, NULL, NULL, NULL, 1557634841, 1557634841),
('/mustahik/*', 2, NULL, NULL, NULL, 1557634841, 1557634841),
('/mustahik/create', 2, NULL, NULL, NULL, 1557635697, 1557635697),
('/mustahik/delete', 2, NULL, NULL, NULL, 1557634841, 1557634841),
('/mustahik/export-excel', 2, NULL, NULL, NULL, 1557634841, 1557634841),
('/mustahik/export-pdf', 2, NULL, NULL, NULL, 1557634841, 1557634841),
('/mustahik/grafik', 2, NULL, NULL, NULL, 1557634841, 1557634841),
('/mustahik/index', 2, NULL, NULL, NULL, 1557634841, 1557634841),
('/mustahik/update', 2, NULL, NULL, NULL, 1557634841, 1557634841),
('/mustahik/view', 2, NULL, NULL, NULL, 1557634841, 1557634841),
('/muzaki/*', 2, NULL, NULL, NULL, 1557634842, 1557634842),
('/muzaki/create', 2, NULL, NULL, NULL, 1557634841, 1557634841),
('/muzaki/delete', 2, NULL, NULL, NULL, 1557634842, 1557634842),
('/muzaki/export-excel', 2, NULL, NULL, NULL, 1557636772, 1557636772),
('/muzaki/export-pdf', 2, NULL, NULL, NULL, 1557636799, 1557636799),
('/muzaki/grafik', 2, NULL, NULL, NULL, 1557636848, 1557636848),
('/muzaki/index', 2, NULL, NULL, NULL, 1557634841, 1557634841),
('/muzaki/update', 2, NULL, NULL, NULL, 1557634842, 1557634842),
('/muzaki/view', 2, NULL, NULL, NULL, 1557634841, 1557634841),
('/peminjaman/*', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/peminjaman/create', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/peminjaman/delete', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/peminjaman/export-excel', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/peminjaman/export-pdf', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/peminjaman/index', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/peminjaman/update', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/peminjaman/view', 2, NULL, NULL, NULL, 1554784178, 1554784178),
('/penerbit/*', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/penerbit/create', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/penerbit/delete', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/penerbit/export-excel', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/penerbit/export-pdf', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/penerbit/index', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/penerbit/update', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/penerbit/view', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/pengarang/*', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/pengarang/create', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/pengarang/delete', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/pengarang/export-excel', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/pengarang/export-pdf', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/pengarang/index', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/pengarang/update', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/pengarang/view', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/pengumpulan/*', 2, NULL, NULL, NULL, 1557634842, 1557634842),
('/pengumpulan/create', 2, NULL, NULL, NULL, 1557634842, 1557634842),
('/pengumpulan/delete', 2, NULL, NULL, NULL, 1557634842, 1557634842),
('/pengumpulan/index', 2, NULL, NULL, NULL, 1556707064, 1556707064),
('/pengumpulan/update', 2, NULL, NULL, NULL, 1557634842, 1557634842),
('/pengumpulan/view', 2, NULL, NULL, NULL, 1557634842, 1557634842),
('/penyaluran/*', 2, NULL, NULL, NULL, 1557634842, 1557634842),
('/penyaluran/create', 2, NULL, NULL, NULL, 1557634842, 1557634842),
('/penyaluran/delete', 2, NULL, NULL, NULL, 1557634842, 1557634842),
('/penyaluran/export-excel', 2, NULL, NULL, NULL, 1557634842, 1557634842),
('/penyaluran/export-pdf', 2, NULL, NULL, NULL, 1557634842, 1557634842),
('/penyaluran/grafik', 2, NULL, NULL, NULL, 1557634842, 1557634842),
('/penyaluran/index', 2, NULL, NULL, NULL, 1557634842, 1557634842),
('/penyaluran/update', 2, NULL, NULL, NULL, 1557634842, 1557634842),
('/penyaluran/view', 2, NULL, NULL, NULL, 1557634842, 1557634842),
('/site/*', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/site/about', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/site/captcha', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/site/contact', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/site/error', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/site/gallery', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/site/index', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/site/login', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/site/logout', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/site/pendidikan', 2, NULL, NULL, NULL, 1554784179, 1554784179),
('/upz/*', 2, NULL, NULL, NULL, 1557634842, 1557634842),
('/upz/create', 2, NULL, NULL, NULL, 1557634842, 1557634842),
('/upz/delete', 2, NULL, NULL, NULL, 1557634842, 1557634842),
('/upz/index', 2, NULL, NULL, NULL, 1557634842, 1557634842),
('/upz/update', 2, NULL, NULL, NULL, 1557634842, 1557634842),
('/upz/view', 2, NULL, NULL, NULL, 1557634842, 1557634842),
('/user/*', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/admin/*', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/admin/assignments', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/admin/block', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/admin/confirm', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/admin/create', 2, NULL, NULL, NULL, 1554784176, 1554784176),
('/user/admin/delete', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/admin/index', 2, NULL, NULL, NULL, 1554784176, 1554784176),
('/user/admin/info', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/admin/resend-password', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/admin/switch', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/admin/update', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/admin/update-profile', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/profile/*', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/profile/index', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/profile/show', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/recovery/*', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/recovery/request', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/recovery/reset', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/registration/*', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/registration/confirm', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/registration/connect', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/registration/register', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/registration/resend', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/security/*', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/security/auth', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/security/login', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/security/logout', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/settings/*', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/settings/account', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/settings/confirm', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/settings/delete', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/settings/disconnect', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/settings/networks', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('/user/settings/profile', 2, NULL, NULL, NULL, 1554784177, 1554784177),
('administrator', 1, 'Role administrator', NULL, NULL, 1554783893, 1554783893),
('administrator permission', 2, 'izin aksesnya administrator', NULL, NULL, 1554784338, 1554784338),
('manager', 1, 'Role Manager', NULL, NULL, 1554783960, 1554783960),
('manager permission', 2, 'izin aksesnya manager', NULL, NULL, 1554784470, 1554784559),
('staff', 1, 'Role Staff', NULL, NULL, 1554783991, 1554783991),
('staff permission', 2, 'izin aksesnya staff', NULL, NULL, 1554784625, 1554784625),
('user biasa', 1, 'Role user biasa', NULL, NULL, 1557635601, 1557635601),
('user biasa permission', 2, 'izin akses user biasa ', NULL, NULL, 1557635675, 1557636434);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('administrator', 'administrator permission'),
('administrator permission', '/*'),
('manager', '/*'),
('manager', '/admin/*'),
('manager', '/admin/assignment/*'),
('manager', '/admin/assignment/assign'),
('manager', '/admin/assignment/index'),
('manager', '/admin/assignment/revoke'),
('manager', '/admin/assignment/view'),
('manager', '/admin/default/*'),
('manager', '/admin/default/index'),
('manager', '/admin/menu/*'),
('manager', '/admin/menu/create'),
('manager', '/admin/menu/delete'),
('manager', '/admin/menu/index'),
('manager', '/admin/menu/update'),
('manager', '/admin/menu/view'),
('manager', '/admin/permission/*'),
('manager', '/admin/permission/assign'),
('manager', '/admin/permission/create'),
('manager', '/admin/permission/delete'),
('manager', '/admin/permission/index'),
('manager', '/admin/permission/remove'),
('manager', '/admin/permission/update'),
('manager', '/admin/permission/view'),
('manager', '/admin/role/*'),
('manager', '/admin/role/assign'),
('manager', '/admin/role/create'),
('manager', '/admin/role/delete'),
('manager', '/admin/role/index'),
('manager', '/admin/role/remove'),
('manager', '/admin/role/update'),
('manager', '/admin/role/view'),
('manager', '/admin/route/*'),
('manager', '/admin/route/assign'),
('manager', '/admin/route/create'),
('manager', '/admin/route/index'),
('manager', '/admin/route/refresh'),
('manager', '/admin/route/remove'),
('manager', '/admin/rule/*'),
('manager', '/admin/rule/create'),
('manager', '/admin/rule/delete'),
('manager', '/admin/rule/index'),
('manager', '/admin/rule/update'),
('manager', '/admin/rule/view'),
('manager', '/admin/user/*'),
('manager', '/admin/user/activate'),
('manager', '/admin/user/change-password'),
('manager', '/admin/user/delete'),
('manager', '/admin/user/index'),
('manager', '/admin/user/login'),
('manager', '/admin/user/logout'),
('manager', '/admin/user/request-password-reset'),
('manager', '/admin/user/reset-password'),
('manager', '/admin/user/signup'),
('manager', '/admin/user/view'),
('manager', '/anggota/*'),
('manager', '/anggota/create'),
('manager', '/anggota/delete'),
('manager', '/anggota/export-excel'),
('manager', '/anggota/export-pdf'),
('manager', '/anggota/index'),
('manager', '/anggota/update'),
('manager', '/anggota/view'),
('manager', '/buku/*'),
('manager', '/buku/create'),
('manager', '/buku/delete'),
('manager', '/buku/export-excel'),
('manager', '/buku/export-pdf'),
('manager', '/buku/grafik1'),
('manager', '/buku/grafik2'),
('manager', '/buku/index'),
('manager', '/buku/update'),
('manager', '/buku/view'),
('manager', '/debug/*'),
('manager', '/debug/default/*'),
('manager', '/debug/default/db-explain'),
('manager', '/debug/default/download-mail'),
('manager', '/debug/default/index'),
('manager', '/debug/default/toolbar'),
('manager', '/debug/default/view'),
('manager', '/debug/user/*'),
('manager', '/debug/user/reset-identity'),
('manager', '/debug/user/set-identity'),
('manager', '/file/*'),
('manager', '/file/download'),
('manager', '/file/show'),
('manager', '/gii/*'),
('manager', '/gii/default/*'),
('manager', '/gii/default/action'),
('manager', '/gii/default/diff'),
('manager', '/gii/default/index'),
('manager', '/gii/default/preview'),
('manager', '/gii/default/view'),
('manager', '/jenis-program/*'),
('manager', '/jenis-program/create'),
('manager', '/jenis-program/delete'),
('manager', '/jenis-program/index'),
('manager', '/jenis-program/update'),
('manager', '/jenis-program/view'),
('manager', '/kecamatan/*'),
('manager', '/kecamatan/create'),
('manager', '/kecamatan/delete'),
('manager', '/kecamatan/index'),
('manager', '/kecamatan/update'),
('manager', '/kecamatan/view'),
('manager', '/kelurahan/*'),
('manager', '/kelurahan/create'),
('manager', '/kelurahan/delete'),
('manager', '/kelurahan/index'),
('manager', '/kelurahan/update'),
('manager', '/kelurahan/view'),
('manager', '/mustahik/*'),
('manager', '/mustahik/create'),
('manager', '/mustahik/delete'),
('manager', '/mustahik/export-excel'),
('manager', '/mustahik/export-pdf'),
('manager', '/mustahik/grafik'),
('manager', '/mustahik/index'),
('manager', '/mustahik/update'),
('manager', '/mustahik/view'),
('manager', '/muzaki/*'),
('manager', '/muzaki/create'),
('manager', '/muzaki/delete'),
('manager', '/muzaki/index'),
('manager', '/muzaki/update'),
('manager', '/muzaki/view'),
('manager', '/peminjaman/*'),
('manager', '/peminjaman/create'),
('manager', '/peminjaman/delete'),
('manager', '/peminjaman/export-excel'),
('manager', '/peminjaman/export-pdf'),
('manager', '/peminjaman/index'),
('manager', '/peminjaman/update'),
('manager', '/peminjaman/view'),
('manager', '/penerbit/*'),
('manager', '/penerbit/create'),
('manager', '/penerbit/delete'),
('manager', '/penerbit/export-excel'),
('manager', '/penerbit/export-pdf'),
('manager', '/penerbit/index'),
('manager', '/penerbit/update'),
('manager', '/penerbit/view'),
('manager', '/pengarang/*'),
('manager', '/pengarang/create'),
('manager', '/pengarang/delete'),
('manager', '/pengarang/export-excel'),
('manager', '/pengarang/export-pdf'),
('manager', '/pengarang/index'),
('manager', '/pengarang/update'),
('manager', '/pengarang/view'),
('manager', '/pengumpulan/*'),
('manager', '/pengumpulan/create'),
('manager', '/pengumpulan/delete'),
('manager', '/pengumpulan/index'),
('manager', '/pengumpulan/update'),
('manager', '/pengumpulan/view'),
('manager', '/penyaluran/*'),
('manager', '/penyaluran/create'),
('manager', '/penyaluran/delete'),
('manager', '/penyaluran/export-excel'),
('manager', '/penyaluran/export-pdf'),
('manager', '/penyaluran/grafik'),
('manager', '/penyaluran/index'),
('manager', '/penyaluran/update'),
('manager', '/penyaluran/view'),
('manager', '/site/*'),
('manager', '/site/about'),
('manager', '/site/captcha'),
('manager', '/site/contact'),
('manager', '/site/error'),
('manager', '/site/gallery'),
('manager', '/site/index'),
('manager', '/site/login'),
('manager', '/site/logout'),
('manager', '/site/pendidikan'),
('manager', '/upz/*'),
('manager', '/upz/create'),
('manager', '/upz/delete'),
('manager', '/upz/index'),
('manager', '/upz/update'),
('manager', '/upz/view'),
('manager', '/user/*'),
('manager', '/user/admin/*'),
('manager', '/user/admin/assignments'),
('manager', '/user/admin/block'),
('manager', '/user/admin/confirm'),
('manager', '/user/admin/create'),
('manager', '/user/admin/delete'),
('manager', '/user/admin/index'),
('manager', '/user/admin/info'),
('manager', '/user/admin/resend-password'),
('manager', '/user/admin/switch'),
('manager', '/user/admin/update'),
('manager', '/user/admin/update-profile'),
('manager', '/user/profile/*'),
('manager', '/user/profile/index'),
('manager', '/user/profile/show'),
('manager', '/user/recovery/*'),
('manager', '/user/recovery/request'),
('manager', '/user/recovery/reset'),
('manager', '/user/registration/*'),
('manager', '/user/registration/confirm'),
('manager', '/user/registration/connect'),
('manager', '/user/registration/register'),
('manager', '/user/registration/resend'),
('manager', '/user/security/*'),
('manager', '/user/security/auth'),
('manager', '/user/security/login'),
('manager', '/user/security/logout'),
('manager', '/user/settings/*'),
('manager', '/user/settings/account'),
('manager', '/user/settings/confirm'),
('manager', '/user/settings/delete'),
('manager', '/user/settings/disconnect'),
('manager', '/user/settings/networks'),
('manager', '/user/settings/profile'),
('manager', 'administrator'),
('manager', 'administrator permission'),
('manager', 'manager permission'),
('manager', 'staff'),
('manager', 'staff permission'),
('manager', 'user biasa'),
('manager', 'user biasa permission'),
('manager permission', 'administrator permission'),
('staff', 'user biasa'),
('staff', 'user biasa permission'),
('staff permission', 'user biasa permission'),
('user biasa', '/mustahik/export-excel'),
('user biasa', '/mustahik/export-pdf'),
('user biasa', '/mustahik/grafik'),
('user biasa', '/mustahik/index'),
('user biasa', '/mustahik/view'),
('user biasa', '/penyaluran/export-excel'),
('user biasa', '/penyaluran/export-pdf'),
('user biasa', '/penyaluran/grafik'),
('user biasa', '/penyaluran/index'),
('user biasa', '/penyaluran/view'),
('user biasa', 'user biasa permission'),
('user biasa permission', '/mustahik/export-excel'),
('user biasa permission', '/mustahik/export-pdf'),
('user biasa permission', '/mustahik/grafik'),
('user biasa permission', '/mustahik/index'),
('user biasa permission', '/mustahik/view'),
('user biasa permission', '/penyaluran/export-excel'),
('user biasa permission', '/penyaluran/export-pdf'),
('user biasa permission', '/penyaluran/grafik'),
('user biasa permission', '/penyaluran/index'),
('user biasa permission', '/penyaluran/view');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenisprogram`
--

CREATE TABLE `jenisprogram` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jenisprogram`
--

INSERT INTO `jenisprogram` (`id`, `nama`) VALUES
(1, 'Depok Sehat'),
(2, 'Depok Cerdas'),
(3, 'Depok Peduli'),
(4, 'Depok Takwa'),
(5, 'Depok Berkah');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id`, `nama`) VALUES
(9, 'Beji'),
(2, 'Bojongsari'),
(6, 'Cilodong'),
(7, 'Cimanggis'),
(11, 'Cinere'),
(4, 'Cipayung'),
(10, 'Limo'),
(3, 'Pancoran Mas'),
(1, 'Sawangan'),
(5, 'Sukma Jaya'),
(8, 'Tapos');

-- --------------------------------------------------------

--
-- Table structure for table `kelurahan`
--

CREATE TABLE `kelurahan` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `idkecamatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kelurahan`
--

INSERT INTO `kelurahan` (`id`, `nama`, `idkecamatan`) VALUES
(1, 'Pengasinan', 1),
(2, 'Bedahan', 1),
(3, 'Pasir Putih', 1),
(4, 'Sawangan Baru', 1),
(5, 'Sawangan Lama', 1),
(6, 'Kedaung', 1),
(7, 'Cinangka', 1),
(8, 'Duren Seribu', 2),
(9, 'Duren Mekar', 2),
(10, 'Bojongsari Lama', 2),
(11, 'Bojongsari Baru', 2),
(12, 'Pondok Petir', 2),
(13, 'Serua', 2),
(14, 'Curug', 2),
(15, 'Rangkapan Jaya Baru', 3),
(16, 'Rangkapan Jaya', 3),
(17, 'Mampang', 3),
(18, 'Pancoran Mas', 3),
(19, 'Depok Jaya', 3),
(20, 'Depok', 3),
(21, 'Pondok Ranggon', 4),
(22, 'Cilangkap', 4),
(23, 'Cipayung', 4),
(24, 'Bambu Apus', 4),
(25, 'Lubang Buaya', 4),
(26, 'Sukmajaya', 5),
(27, 'Tirtajaya', 5),
(28, 'Mekar Jaya', 5),
(29, 'Abadijaya', 5),
(30, 'Bakti Jaya', 5),
(31, 'Cisalak', 5),
(32, 'Kalimulya', 6),
(33, 'Jatimulya', 6),
(34, 'Kalibaru', 6),
(35, 'Cilodong', 6),
(36, 'Sukamaju', 6),
(37, 'Harjamukti', 7),
(38, 'Cisalak Pasar', 7),
(39, 'Mekarsari', 7),
(40, 'Pasir Gunung Selatan', 7),
(41, 'Curug', 7),
(42, 'Tugu', 7),
(43, 'Cilangkap', 8),
(44, 'Cimpaeun', 8),
(45, 'Tapos', 8),
(46, 'Leuwinaggung', 8),
(47, 'Jatijajar', 8),
(48, 'Sukamaju Baru', 8),
(49, 'Sukatani', 8),
(50, 'Beji', 9),
(51, 'Beji Timur', 9),
(52, 'Kemirimuka', 9),
(53, 'Pondok Cina', 9),
(54, 'Kukusan', 9),
(55, 'Tanah Baru', 9),
(56, 'Grogol', 10),
(57, 'Limo', 10),
(58, 'Meruyung', 10),
(59, 'Krukut', 10),
(60, 'Cinere', 11),
(61, 'Gandul', 11),
(62, 'Pangkalan Jati Baru', 11),
(63, 'Pangkalan Jati Lama', 11);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1554693571),
('m140209_132017_init', 1554693596),
('m140403_174025_create_account_table', 1554693597),
('m140504_113157_update_tables', 1554693599),
('m140504_130429_create_token_table', 1554693601),
('m140506_102106_rbac_init', 1554783257),
('m140830_171933_fix_ip_field', 1554693601),
('m140830_172703_change_account_table_name', 1554693601),
('m141222_110026_update_ip_field', 1554693602),
('m141222_135246_alter_username_length', 1554693603),
('m150614_103145_update_social_account_table', 1554693604),
('m150623_212711_fix_username_notnull', 1554693604),
('m151218_234654_add_timezone_to_profile', 1554693605),
('m160929_103127_add_last_login_at_to_user_table', 1554693605),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1554783257),
('m180523_151638_rbac_updates_indexes_without_prefix', 1554783258);

-- --------------------------------------------------------

--
-- Table structure for table `mustahik`
--

CREATE TABLE `mustahik` (
  `id` int(11) NOT NULL,
  `nik` varchar(45) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `jeniskelamin` varchar(45) DEFAULT NULL,
  `tempatlahir` varchar(45) DEFAULT NULL,
  `tanggallahir` varchar(45) DEFAULT NULL,
  `idkecamatan` int(11) NOT NULL,
  `idkelurahan` int(11) NOT NULL,
  `alamat` varchar(45) DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mustahik`
--

INSERT INTO `mustahik` (`id`, `nik`, `nama`, `jeniskelamin`, `tempatlahir`, `tanggallahir`, `idkecamatan`, `idkelurahan`, `alamat`, `foto`) VALUES
(1, '', 'a', '', '', '', 2, 3, '', ''),
(3, '2', 's', 'Pria', '', '', 2, 3, '', ''),
(4, '1', 'd', '', '', '2018-11-09', 1, 1, '', ''),
(5, '4', 'f', 'Wanita', '', '', 6, 4, '', ''),
(6, '5', 'g', 'Pria', '', '2018-10-08', 7, 6, '', ''),
(7, '11', 'h', 'Pria', '', '2018-11-12', 7, 6, '', ''),
(8, '12', 'j', 'Pria', '', '2018-11-12', 7, 6, '', ''),
(9, '13', 'k', '', '', '', 11, 3, '', NULL),
(10, '131', 'l', '', '', '', 11, 3, '', '131.jpg'),
(11, '55', 'q', NULL, NULL, NULL, 3, 18, NULL, NULL),
(66, NULL, 'w', NULL, NULL, NULL, 4, 18, NULL, NULL),
(67, '77', 'e', NULL, NULL, NULL, 5, 3, NULL, NULL),
(68, '88', 'r', NULL, NULL, NULL, 8, 5, NULL, NULL),
(69, '99', 't', NULL, '', NULL, 9, 7, NULL, NULL),
(70, '00', NULL, NULL, NULL, NULL, 10, 11, NULL, NULL),
(72, '', '', '', '', '', 2, 1, '', NULL),
(73, '', '', '', '', '', 2, 1, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `muzaki`
--

CREATE TABLE `muzaki` (
  `id` int(11) NOT NULL,
  `nik` varchar(45) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `jeniskelamin` varchar(45) DEFAULT NULL,
  `tempatlahir` varchar(45) DEFAULT NULL,
  `tanggallahir` varchar(45) DEFAULT NULL,
  `idkecamatan` int(11) NOT NULL,
  `idkelurahan` int(11) NOT NULL,
  `alamat` varchar(45) DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pengumpulan`
--

CREATE TABLE `pengumpulan` (
  `id` int(11) NOT NULL,
  `idmuzaki` int(11) NOT NULL,
  `idupz` int(11) NOT NULL,
  `keterangan` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `penyaluran`
--

CREATE TABLE `penyaluran` (
  `id` int(11) NOT NULL,
  `idmustahik` int(11) NOT NULL,
  `idjenisprogram` int(11) NOT NULL,
  `keterangan` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `penyaluran`
--

INSERT INTO `penyaluran` (`id`, `idmustahik`, `idjenisprogram`, `keterangan`) VALUES
(1, 6, 3, NULL),
(2, 8, 2, 'dasdas'),
(3, 4, 1, NULL),
(4, 67, 5, NULL),
(5, 10, 1, ''),
(6, 11, 3, NULL),
(7, 4, 2, NULL),
(8, 3, 1, NULL),
(9, 4, 5, NULL),
(10, 3, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gravatar_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `timezone` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `public_email`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`, `timezone`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_account`
--

CREATE TABLE `social_account` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`user_id`, `code`, `created_at`, `type`) VALUES
(1, 'NeLHhThE4er1fioAb0Jkvqtvh-1nKNal', 1554695028, 0),
(2, 'GkdIVYWOkizGwISa54L4fYFR2DgILqK9', 1554695505, 0);

-- --------------------------------------------------------

--
-- Table structure for table `upz`
--

CREATE TABLE `upz` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `idkecamatan` int(11) NOT NULL,
  `idkelurahan` int(11) NOT NULL,
  `alamat` varchar(45) DEFAULT NULL,
  `foto` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  `last_login_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `last_login_at`) VALUES
(1, 'admin', 'mimin@gmail.com', '$2y$10$VN1PVuFgiQbppuXZ/WLM9eTTQRsa00H.0wHGxZWw0veJmLH.09ZwW', '4bPf2kybi8c2zZ0zucyd1hU4MfEC33Ga', 1554695192, NULL, NULL, '::1', 1554695028, 1554695028, 0, 1557641133),
(2, 'untung', 'untung@gmail.com', '$2y$10$bnJJEMSzvbUFQQNF9l5XJO1fjWAvJ8zjP46dcLq0L2Fk2qwsC1OrG', 'edBNYvTn7k0v4YaCEEJEtn_86aE7WEIN', 1556705833, NULL, NULL, '192.168.15.209', 1554695505, 1557634739, 0, 1557640725),
(6, 'upz@gmail.com', 'upz@gmail.com', '$2y$10$.66AlvnHO2HIY8AoNJsEAuxMToTVw/qAuycwY9c0iK/D5nEX0aoFe', '7gkwezVBMUnRCzqZqevU96gu2HeFGy4I', 1557640909, NULL, NULL, '::1', 1557640909, 1557640909, 0, 1557641165);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `idx-auth_assignment-user_id` (`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `jenisprogram`
--
ALTER TABLE `jenisprogram`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_UNIQUE` (`nama`);

--
-- Indexes for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kelurahan_kecamatan_idx` (`idkecamatan`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `mustahik`
--
ALTER TABLE `mustahik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_mustahik_kelurahan1_idx` (`idkelurahan`),
  ADD KEY `fk_mustahik_kecamatan1_idx` (`idkecamatan`);

--
-- Indexes for table `muzaki`
--
ALTER TABLE `muzaki`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nik_UNIQUE` (`nik`),
  ADD KEY `fk_mustahik_kelurahan1_idx` (`idkelurahan`),
  ADD KEY `fk_mustahik_kecamatan1_idx` (`idkecamatan`);

--
-- Indexes for table `pengumpulan`
--
ALTER TABLE `pengumpulan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pengumpulan_upz1_idx` (`idupz`),
  ADD KEY `fk_pengumpulan_muzaki1_idx` (`idmuzaki`);

--
-- Indexes for table `penyaluran`
--
ALTER TABLE `penyaluran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pembagian_jenisprogram1_idx` (`idjenisprogram`),
  ADD KEY `fk_pembagian_mustahik1_idx` (`idmustahik`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `social_account`
--
ALTER TABLE `social_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_unique` (`provider`,`client_id`),
  ADD UNIQUE KEY `account_unique_code` (`code`),
  ADD KEY `fk_user_account` (`user_id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD UNIQUE KEY `token_unique` (`user_id`,`code`,`type`);

--
-- Indexes for table `upz`
--
ALTER TABLE `upz`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_upz_kelurahan1_idx` (`idkelurahan`),
  ADD KEY `fk_upz_kecamatan1_idx` (`idkecamatan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_unique_username` (`username`),
  ADD UNIQUE KEY `user_unique_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenisprogram`
--
ALTER TABLE `jenisprogram`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `kelurahan`
--
ALTER TABLE `kelurahan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `mustahik`
--
ALTER TABLE `mustahik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `muzaki`
--
ALTER TABLE `muzaki`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengumpulan`
--
ALTER TABLE `pengumpulan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penyaluran`
--
ALTER TABLE `penyaluran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `social_account`
--
ALTER TABLE `social_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upz`
--
ALTER TABLE `upz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kelurahan`
--
ALTER TABLE `kelurahan`
  ADD CONSTRAINT `fk_kelurahan_kecamatan` FOREIGN KEY (`idkecamatan`) REFERENCES `kecamatan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mustahik`
--
ALTER TABLE `mustahik`
  ADD CONSTRAINT `fk_mustahik_kecamatan1` FOREIGN KEY (`idkecamatan`) REFERENCES `kecamatan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mustahik_kelurahan1` FOREIGN KEY (`idkelurahan`) REFERENCES `kelurahan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `muzaki`
--
ALTER TABLE `muzaki`
  ADD CONSTRAINT `fk_mustahik_kecamatan10` FOREIGN KEY (`idkecamatan`) REFERENCES `kecamatan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mustahik_kelurahan10` FOREIGN KEY (`idkelurahan`) REFERENCES `kelurahan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pengumpulan`
--
ALTER TABLE `pengumpulan`
  ADD CONSTRAINT `fk_pengumpulan_muzaki1` FOREIGN KEY (`idmuzaki`) REFERENCES `muzaki` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pengumpulan_upz1` FOREIGN KEY (`idupz`) REFERENCES `upz` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `penyaluran`
--
ALTER TABLE `penyaluran`
  ADD CONSTRAINT `fk_pembagian_jenisprogram1` FOREIGN KEY (`idjenisprogram`) REFERENCES `jenisprogram` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pembagian_mustahik1` FOREIGN KEY (`idmustahik`) REFERENCES `mustahik` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_account`
--
ALTER TABLE `social_account`
  ADD CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upz`
--
ALTER TABLE `upz`
  ADD CONSTRAINT `fk_upz_kecamatan1` FOREIGN KEY (`idkecamatan`) REFERENCES `kecamatan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_upz_kelurahan1` FOREIGN KEY (`idkelurahan`) REFERENCES `kelurahan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
