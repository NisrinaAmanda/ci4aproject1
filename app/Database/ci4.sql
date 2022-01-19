-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Nov 2021 pada 16.50
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'weareone', NULL, '2021-11-02 07:42:52', 0),
(2, '::1', 'elektroab508@gmail.com', NULL, '2021-11-02 07:43:05', 0),
(3, '::1', 'anto@gmail.com', 2, '2021-11-02 07:44:03', 0),
(4, '::1', 'sandi', 3, '2021-11-02 07:54:17', 0),
(5, '::1', 'anto@gmail.com', 2, '2021-11-02 13:15:22', 0),
(6, '::1', 'elektroab@gmail.com', 4, '2021-11-02 13:22:01', 1),
(7, '::1', 'elektroab@gmail.com', 4, '2021-11-02 13:41:20', 1),
(8, '::1', 'elektroab@gmail.com', 4, '2021-11-02 13:42:05', 1),
(9, '::1', 'elektroab@gmail.com', 4, '2021-11-02 13:55:45', 1),
(10, '::1', 'rudi@gmail.com', 5, '2021-11-03 00:33:59', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-10-30-155053', 'App\\Database\\Migrations\\Orang', 'default', 'App', 1635609155, 1),
(3, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1635770232, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang`
--

CREATE TABLE `orang` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `orang`
--

INSERT INTO `orang` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Edi Asman Permadi', 'Psr. HOS. Cjokroaminoto (Pasirkaliki) No. 902, Subulussalam 92683, Malut', '1986-08-11 01:42:15', '2021-10-30 11:05:21'),
(2, 'Vanesa Karen Suartini', 'Ki. Pahlawan No. 962, Subulussalam 94165, Babel', '2002-06-28 21:14:55', '2021-10-30 11:05:21'),
(3, 'Irwan Cecep Nababan S.I.Kom', 'Gg. Ciwastra No. 673, Sibolga 55482, Sumsel', '1986-07-30 18:28:34', '2021-10-30 11:05:21'),
(4, 'Kiandra Agustina', 'Psr. Rumah Sakit No. 790, Bitung 24818, Kaltara', '2010-04-11 08:37:17', '2021-10-30 11:05:21'),
(5, 'Zamira Nurdiyanti', 'Kpg. Suryo No. 641, Sorong 82715, Sulbar', '1975-08-31 11:18:28', '2021-10-30 11:05:21'),
(6, 'Gada Prasetyo S.I.Kom', 'Dk. K.H. Wahid Hasyim (Kopo) No. 642, Solok 39386, NTT', '1981-01-20 23:44:33', '2021-10-30 11:05:21'),
(7, 'Heru Pratama S.E.', 'Kpg. Sudirman No. 880, Salatiga 93318, NTT', '1986-01-11 00:30:10', '2021-10-30 11:05:21'),
(8, 'Ega Suwarno', 'Kpg. Sutoyo No. 504, Batu 70353, Jateng', '1983-11-13 05:39:17', '2021-10-30 11:05:21'),
(9, 'Pia Fujiati', 'Ki. Bakau Griya Utama No. 327, Salatiga 90892, Jabar', '2006-08-03 04:12:40', '2021-10-30 11:05:21'),
(10, 'Dartono Jayadi Simanjuntak', 'Jln. Abang No. 710, Parepare 49714, Jabar', '2000-07-09 14:56:00', '2021-10-30 11:05:21'),
(11, 'Eko Wibisono', 'Gg. Baiduri No. 970, Padangsidempuan 59364, Kepri', '2013-07-13 21:39:18', '2021-10-30 11:05:21'),
(12, 'Rendy Ardianto', 'Psr. Baha No. 672, Pasuruan 75052, NTB', '1981-07-17 01:41:27', '2021-10-30 11:05:21'),
(13, 'Daruna Tampubolon', 'Dk. Kebangkitan Nasional No. 954, Tomohon 64865, Papua', '1976-05-04 00:49:24', '2021-10-30 11:05:21'),
(14, 'Cawuk Pangestu', 'Jr. Haji No. 675, Pasuruan 69002, Gorontalo', '1973-05-26 13:07:00', '2021-10-30 11:05:21'),
(15, 'Zelda Jane Utami S.T.', 'Jr. Baha No. 463, Pontianak 75226, Banten', '1978-09-23 07:36:40', '2021-10-30 11:05:21'),
(16, 'Kunthara Gara Mangunsong', 'Jln. Basuki Rahmat  No. 699, Administrasi Jakarta Pusat 11226, Jateng', '1973-11-17 12:51:23', '2021-10-30 11:05:21'),
(17, 'Okta Firmansyah', 'Jr. BKR No. 889, Mojokerto 82794, Lampung', '2009-09-21 18:29:05', '2021-10-30 11:05:21'),
(18, 'Yuni Fujiati', 'Gg. Veteran No. 782, Pariaman 43137, Sumut', '2018-04-23 17:37:26', '2021-10-30 11:05:21'),
(19, 'Bancar Kusumo', 'Psr. Sutarto No. 507, Banjarmasin 25044, Sulteng', '2011-09-14 12:59:00', '2021-10-30 11:05:21'),
(20, 'Kajen Cakrabirawa Hidayat', 'Psr. Cemara No. 699, Batu 39152, Babel', '2017-05-24 12:15:54', '2021-10-30 11:05:21'),
(21, 'Teddy Karya Thamrin', 'Psr. Babakan No. 730, Banjar 32338, Sultra', '1974-08-05 17:54:07', '2021-10-30 11:05:21'),
(22, 'Mitra Galang Jailani S.Farm', 'Kpg. Salam No. 555, Palopo 56287, Riau', '1982-07-19 10:49:16', '2021-10-30 11:05:21'),
(23, 'Jasmin Kuswandari S.Kom', 'Psr. Yoga No. 297, Sungai Penuh 87179, Babel', '1996-08-27 13:06:26', '2021-10-30 11:05:21'),
(24, 'Kemal Tarihoran S.Psi', 'Jr. Flores No. 283, Madiun 51578, Sultra', '2014-04-22 09:54:06', '2021-10-30 11:05:21'),
(25, 'Melinda Maryati', 'Jln. Basudewo No. 188, Prabumulih 31361, Riau', '2005-01-08 19:14:11', '2021-10-30 11:05:21'),
(26, 'Putri Sabrina Pudjiastuti', 'Gg. Jend. Sudirman No. 470, Makassar 81922, Aceh', '2018-05-09 22:30:59', '2021-10-30 11:05:21'),
(27, 'Hesti Puspasari', 'Kpg. Arifin No. 893, Sorong 78175, Sulsel', '2015-04-16 00:22:10', '2021-10-30 11:05:21'),
(28, 'Jamalia Iriana Handayani', 'Jln. Otista No. 835, Medan 66680, Kalteng', '2020-01-09 07:19:42', '2021-10-30 11:05:21'),
(29, 'Queen Hariyah', 'Ki. Baja Raya No. 396, Banjarmasin 80718, Kalteng', '2020-08-10 04:30:45', '2021-10-30 11:05:21'),
(30, 'Ratna Carla Usamah M.Pd', 'Ki. Uluwatu No. 663, Gunungsitoli 16741, Sulsel', '1983-07-09 14:13:16', '2021-10-30 11:05:21'),
(31, 'Yessi Ulya Hariyah S.Farm', 'Ds. Gedebage Selatan No. 462, Sibolga 85397, Sultra', '1972-07-11 07:55:48', '2021-10-30 11:05:21'),
(32, 'Eko Samosir M.Pd', 'Psr. Basoka Raya No. 414, Batam 86400, Sumbar', '2006-09-11 08:07:03', '2021-10-30 11:05:21'),
(33, 'Wirda Safitri', 'Psr. Basudewo No. 959, Administrasi Jakarta Pusat 94484, Kalteng', '1972-02-26 20:37:55', '2021-10-30 11:05:21'),
(34, 'Bagas Marwata Sirait', 'Psr. Sutoyo No. 83, Semarang 63599, Kaltim', '1994-03-29 03:10:10', '2021-10-30 11:05:21'),
(35, 'Lili Hastuti S.Farm', 'Jr. Samanhudi No. 775, Tual 48335, DKI', '2011-02-22 17:24:32', '2021-10-30 11:05:21'),
(36, 'Cager Gading Hardiansyah', 'Kpg. Abdul No. 201, Administrasi Jakarta Selatan 83921, Kalsel', '2005-07-16 01:07:10', '2021-10-30 11:05:21'),
(37, 'Rina Handayani', 'Kpg. Basoka No. 692, Tangerang Selatan 90469, Sulut', '1971-11-06 18:26:14', '2021-10-30 11:05:21'),
(38, 'Martani Marbun', 'Ds. Baranangsiang No. 492, Banda Aceh 82310, DKI', '1984-07-05 08:10:17', '2021-10-30 11:05:21'),
(39, 'Natalia Puspasari', 'Jln. Rajawali Timur No. 448, Ternate 70828, Jatim', '1970-03-23 16:02:53', '2021-10-30 11:05:21'),
(40, 'Gamani Ardianto', 'Jln. S. Parman No. 890, Metro 34702, Sulut', '1971-10-03 13:25:02', '2021-10-30 11:05:21'),
(41, 'Ellis Mulyani', 'Gg. Sugiyopranoto No. 287, Kotamobagu 10513, Babel', '1986-04-12 08:04:34', '2021-10-30 11:05:21'),
(42, 'Ganjaran Saefullah', 'Jln. Baja No. 576, Medan 33621, Bali', '2020-05-21 19:56:01', '2021-10-30 11:05:21'),
(43, 'Tira Uyainah', 'Kpg. Yohanes No. 381, Pekalongan 22517, Sumsel', '2017-08-14 17:01:10', '2021-10-30 11:05:21'),
(44, 'Ega Damanik', 'Jr. Cokroaminoto No. 107, Kupang 74481, Kaltara', '1990-10-06 12:35:13', '2021-10-30 11:05:21'),
(45, 'Emas Winarno', 'Psr. Daan No. 310, Tidore Kepulauan 82591, Jatim', '2006-04-17 00:56:34', '2021-10-30 11:05:21'),
(46, 'Cagak Akarsana Rajasa S.I.Kom', 'Ds. Baing No. 718, Medan 20811, Bengkulu', '1992-07-27 06:40:27', '2021-10-30 11:05:21'),
(47, 'Yusuf Samosir', 'Kpg. Cikapayang No. 289, Cilegon 16452, Kalteng', '1985-05-29 05:57:03', '2021-10-30 11:05:21'),
(48, 'Sadina Uyainah', 'Ki. K.H. Maskur No. 343, Bogor 15975, Sulteng', '1990-05-06 10:55:34', '2021-10-30 11:05:21'),
(49, 'Opung Suwarno', 'Kpg. Bakit  No. 532, Batu 70918, Jambi', '1992-09-08 12:06:51', '2021-10-30 11:05:21'),
(50, 'Parman Kasusra Wibowo S.T.', 'Kpg. HOS. Cjokroaminoto (Pasirkaliki) No. 607, Probolinggo 95534, Sumut', '1995-02-20 22:38:51', '2021-10-30 11:05:21'),
(51, 'Ilyas Lazuardi', 'Jln. Pattimura No. 100, Semarang 16504, Sumut', '1980-10-05 15:12:34', '2021-10-30 11:05:21'),
(52, 'Karya Saefullah', 'Jln. Eka No. 871, Cilegon 99829, Aceh', '2005-08-18 01:52:28', '2021-10-30 11:05:21'),
(53, 'Jarwi Putra', 'Dk. Arifin No. 988, Tidore Kepulauan 23497, Sulteng', '1997-04-29 03:58:32', '2021-10-30 11:05:21'),
(54, 'Syahrini Yolanda S.Pd', 'Jr. Gading No. 361, Tebing Tinggi 17303, Sumsel', '2010-06-18 19:16:25', '2021-10-30 11:05:21'),
(55, 'Luwes Maheswara S.I.Kom', 'Jln. Sutan Syahrir No. 255, Administrasi Jakarta Pusat 66403, Malut', '1989-11-20 07:07:47', '2021-10-30 11:05:21'),
(56, 'Ciaobella Nuraini', 'Gg. Yap Tjwan Bing No. 586, Batam 64087, Riau', '2003-12-22 11:49:15', '2021-10-30 11:05:21'),
(57, 'Asman Sihombing', 'Ki. Gedebage Selatan No. 568, Lhokseumawe 32636, Sumut', '1979-09-20 19:44:22', '2021-10-30 11:05:21'),
(58, 'Vanya Oni Pratiwi', 'Jln. Basket No. 228, Balikpapan 53215, Kaltara', '1981-06-05 17:13:53', '2021-10-30 11:05:21'),
(59, 'Novi Mardhiyah S.Kom', 'Ki. Sugiono No. 865, Palopo 62077, Malut', '1992-09-16 18:17:19', '2021-10-30 11:05:21'),
(60, 'Rini Laksita S.Psi', 'Gg. Raden No. 188, Kotamobagu 24728, Papua', '1983-05-11 10:39:43', '2021-10-30 11:05:21'),
(61, 'Gambira Dariati Dabukke S.Sos', 'Jr. Abdul Rahmat No. 978, Cimahi 11656, Kaltim', '1970-08-14 05:23:50', '2021-10-30 11:05:21'),
(62, 'Shakila Melani', 'Dk. Fajar No. 402, Pagar Alam 87716, Lampung', '1973-10-18 23:47:43', '2021-10-30 11:05:21'),
(63, 'Heryanto Dabukke', 'Jln. Barasak No. 573, Bima 97908, Kalteng', '2004-09-09 10:51:58', '2021-10-30 11:05:21'),
(64, 'Paris Kuswandari', 'Kpg. Raya Setiabudhi No. 910, Cirebon 12648, Kalteng', '1976-09-02 04:45:58', '2021-10-30 11:05:21'),
(65, 'Dewi Nuraini', 'Jr. Adisucipto No. 478, Bogor 82574, Sultra', '1973-11-17 13:19:30', '2021-10-30 11:05:21'),
(66, 'Banawi Maryadi M.Pd', 'Psr. Agus Salim No. 126, Palangka Raya 79487, Sulsel', '2006-10-10 23:24:17', '2021-10-30 11:05:21'),
(67, 'Wisnu Prabowo S.Gz', 'Jr. Kebangkitan Nasional No. 292, Tangerang Selatan 34445, DIY', '2001-05-08 00:53:47', '2021-10-30 11:05:21'),
(68, 'Ika Nasyiah', 'Dk. Merdeka No. 225, Padang 91774, Sulteng', '1999-06-25 22:53:34', '2021-10-30 11:05:21'),
(69, 'Padma Pertiwi', 'Kpg. Sutarto No. 901, Pagar Alam 75934, NTB', '2013-02-20 03:00:51', '2021-10-30 11:05:21'),
(70, 'Muni Hairyanto Salahudin', 'Dk. Mulyadi No. 311, Ternate 22472, Sulsel', '2005-04-29 08:58:24', '2021-10-30 11:05:21'),
(71, 'Mutia Nadine Palastri S.Pt', 'Gg. Surapati No. 944, Mataram 93773, Kalbar', '2006-12-15 19:32:00', '2021-10-30 11:05:21'),
(72, 'Cemani Prabowo', 'Ds. Untung Suropati No. 730, Pasuruan 87525, Sultra', '2004-08-01 17:15:21', '2021-10-30 11:05:21'),
(73, 'Marwata Firgantoro', 'Dk. Wahid Hasyim No. 888, Tasikmalaya 12037, Kaltim', '2018-10-06 07:03:53', '2021-10-30 11:05:21'),
(74, 'Rachel Uchita Kuswandari', 'Dk. Dewi Sartika No. 544, Kotamobagu 24593, Malut', '2018-06-07 19:16:09', '2021-10-30 11:05:21'),
(75, 'Diah Suartini S.T.', 'Kpg. Untung Suropati No. 737, Bitung 25207, Gorontalo', '2017-08-21 08:24:08', '2021-10-30 11:05:21'),
(76, 'Tania Permata', 'Psr. Camar No. 557, Bekasi 25326, Papua', '2012-01-03 15:51:06', '2021-10-30 11:05:21'),
(77, 'Elisa Wahyuni', 'Ds. Hasanuddin No. 575, Denpasar 92546, Sultra', '1997-11-13 00:04:16', '2021-10-30 11:05:21'),
(78, 'Asmadi Simbolon', 'Ki. Achmad No. 620, Kediri 83352, Malut', '1995-06-30 17:38:51', '2021-10-30 11:05:21'),
(79, 'Jelita Ida Hariyah M.Pd', 'Jln. Madrasah No. 797, Tomohon 23630, Maluku', '1993-09-16 00:36:37', '2021-10-30 11:05:21'),
(80, 'Zamira Wulandari', 'Dk. Ikan No. 883, Jayapura 95092, Kepri', '1997-03-30 14:15:54', '2021-10-30 11:05:21'),
(81, 'Dwi Latupono', 'Ds. Bakau Griya Utama No. 5, Balikpapan 78455, Sulut', '2019-04-05 18:15:04', '2021-10-30 11:05:21'),
(82, 'Nalar Waskita', 'Jr. Dr. Junjunan No. 131, Lhokseumawe 32247, Sumsel', '1978-10-14 13:34:59', '2021-10-30 11:05:21'),
(83, 'Dodo Gambira Setiawan', 'Jr. Warga No. 72, Pontianak 94776, Jambi', '2020-01-27 12:33:40', '2021-10-30 11:05:21'),
(84, 'Clara Permata', 'Jr. Suryo Pranoto No. 274, Bengkulu 73931, Aceh', '1993-04-24 11:32:03', '2021-10-30 11:05:21'),
(85, 'Rachel Winarsih', 'Psr. Madrasah No. 720, Prabumulih 79040, Banten', '2004-02-21 19:30:21', '2021-10-30 11:05:21'),
(86, 'Harto Tasnim Hidayanto', 'Psr. Bagis Utama No. 19, Cirebon 76448, Sumut', '1987-12-18 19:57:31', '2021-10-30 11:05:21'),
(87, 'Bakiadi Perkasa Saragih', 'Jln. Suryo Pranoto No. 359, Tegal 82570, Kalbar', '2002-05-12 05:42:07', '2021-10-30 11:05:21'),
(88, 'Nrima Saptono S.Ked', 'Ki. Ters. Buah Batu No. 28, Kotamobagu 77849, Kaltim', '2014-11-29 03:20:25', '2021-10-30 11:05:21'),
(89, 'Cindy Winarsih', 'Dk. Laksamana No. 344, Solok 58602, Bali', '1977-12-07 09:22:05', '2021-10-30 11:05:21'),
(90, 'Talia Handayani', 'Jr. Bappenas No. 130, Tanjung Pinang 75971, Banten', '2001-12-31 14:27:32', '2021-10-30 11:05:21'),
(91, 'Dewi Yuliarti', 'Kpg. Sugiono No. 297, Bekasi 41464, Jatim', '1986-08-22 20:43:06', '2021-10-30 11:05:21'),
(92, 'Padma Farhunnisa Widiastuti', 'Jln. Thamrin No. 45, Tebing Tinggi 41026, Aceh', '1971-08-21 00:02:44', '2021-10-30 11:05:21'),
(93, 'Hartaka Warta Maryadi M.TI.', 'Kpg. Elang No. 328, Tidore Kepulauan 73319, Sulut', '2019-08-08 13:34:14', '2021-10-30 11:05:21'),
(94, 'Yulia Hariyah', 'Ki. Suprapto No. 826, Sabang 23511, Jabar', '1992-05-30 20:40:31', '2021-10-30 11:05:21'),
(95, 'Gilang Uwais', 'Ds. Gajah Mada No. 738, Palembang 68993, Kaltim', '2013-02-27 10:45:04', '2021-10-30 11:05:21'),
(96, 'Janet Usada', 'Ki. Salam No. 285, Yogyakarta 46641, Sulut', '2016-07-24 19:33:16', '2021-10-30 11:05:21'),
(97, 'Mulyanto Waluyo', 'Kpg. W.R. Supratman No. 293, Kediri 12179, Sulteng', '2010-04-14 05:46:05', '2021-10-30 11:05:21'),
(98, 'Jatmiko Hutasoit', 'Ds. Yoga No. 782, Manado 95937, NTT', '1978-10-19 06:54:52', '2021-10-30 11:05:21'),
(99, 'Simon Nainggolan', 'Dk. Haji No. 632, Bima 93232, Kaltim', '1977-04-18 20:20:44', '2021-10-30 11:05:21'),
(100, 'Yessi Hariyah', 'Jln. Badak No. 620, Administrasi Jakarta Barat 41957, Lampung', '1973-06-29 18:01:48', '2021-10-30 11:05:21');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `merek` varchar(255) NOT NULL,
  `harga_barang` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `nama_barang`, `slug`, `merek`, `harga_barang`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Mesin Cuci', 'mesin-cuci', 'Sharp', 'Rp. 4.700.000', '1635608453_65408f882c9141e54d9c.jpg', NULL, NULL),
(2, 'Kipas Angin', 'kipas-angin', 'Cosmos', 'Rp. 1.200.000', '1635608564_3a81b7fd3332d145a1d0.jpeg', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orang`
--
ALTER TABLE `orang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `orang`
--
ALTER TABLE `orang`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
