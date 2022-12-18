-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 17 Des 2022 pada 18.40
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir_pro`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `makanans`
--

CREATE TABLE `makanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_makanan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_makanan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_makanan` int(11) NOT NULL,
  `gambar_makanan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_makanan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(17, '2022_07_13_131640_create_makanans_table', 1),
(18, '2022_07_16_092843_create_categories_table', 1);

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
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '7169c567a037088402ecc2fd3f3ff85c3d2dc487f61d9eb19903b38075e13de4', '[\"*\"]', '2022-12-17 09:26:41', '2022-12-17 03:06:32', '2022-12-17 09:26:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `gender`, `birth_date`, `birth_place`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'cherry', 'chrryctr1509@gmail.com', NULL, '$2y$10$CskRHRKqwCM1c0BW5SiafuYAEmtyQZbu5FhbNyYqRrBIbmv6R0sa2', NULL, NULL, 'Bogor', NULL, '2022-12-17 03:06:32', '2022-12-17 03:06:32'),
(2, 'Sarah Diana Mardhiyah S.Kom', 'lazuardi.daliono@mascherr.com', NULL, '$2y$10$a0TRNlkYk9RTmKZsSccdz.csLTvvRqxPVcjRI91BhF2.3iXtXDZr2', 'female', '1991-04-24', 'Jakarta', NULL, NULL, NULL),
(3, 'Luthfi Dimaz Irawan', 'kanggriawan@mascherr.com', NULL, '$2y$10$efFQvpHpLS2cJbH2p4UJuuslX0bGdx/gtEin4dwdKYu133Fgbwj.O', 'male', '1986-02-09', 'Bogor', NULL, '2006-01-08 13:14:41', '2006-01-10 03:07:59'),
(4, 'Wulan Kuswandari S.Kom', 'talia.nuraini@gmail.com', NULL, '$2y$10$7YDFiNeWgpavJ46UgIKxFuerMjOHNL3qicF2Q/PCXejSvfBIfsZOS', 'female', '2007-04-02', 'Jakarta', NULL, '1974-03-14 12:51:36', '1979-09-01 13:06:11'),
(5, 'Halima Yuniar', 'purwanti.julia@gmail.com', NULL, '$2y$10$8Cw8xbh3FODyEk6dR3I3NuEhoe3zFn0NWchB40/fgsPegmFet9uyy', 'female', '2012-12-21', 'Jakarta', NULL, '1976-05-04 18:17:50', '2004-08-02 14:14:48'),
(6, 'Fitriani Rahmi Halimah', 'gamanto01@gmail.com', NULL, '$2y$10$aIjjF9b0bJtpKxv5n1QgV.TxMhpnR1Rmjqpg.6bvYTmE6jysSj6Hy', 'female', '2022-02-23', 'Jakarta', NULL, '1970-06-10 23:52:13', '1993-03-03 18:52:39'),
(7, 'Fitriani Amalia Fujiati', 'kurniawan.indah@gmail.com', NULL, '$2y$10$Ly5J9YAz3GFRHXjlW7nZSuvX48eQzKIyJnNRwSZGVz8M67JPn7wv.', 'female', '2016-11-29', 'Jakarta', NULL, '1985-04-30 04:31:57', '2011-01-07 13:04:32'),
(8, 'Najwa Yance Riyanti M.M.', 'andriani.pranawa@gmail.com', NULL, '$2y$10$XuZbeDhEJURIbaiSPI//ceRFNtOeukOyv3NSDC/6o56il27ZEo9iy', 'female', '2012-01-24', 'Jakarta', NULL, '2005-10-02 12:33:04', '1982-06-07 07:17:11'),
(9, 'Raina Najwa Lestari', 'endah.riyanti@gmail.com', NULL, '$2y$10$ERwKcWkRSE.1rZ5D8D8tjeVMMvpxokrmHHzWgYlFwviYh87eMajdy', 'female', '1978-01-17', 'Bogor', NULL, '1991-06-30 11:49:41', '2002-03-06 18:59:18'),
(10, 'Dina Nasyidah S.Ked', 'uyainah.radit@gmail.com', NULL, '$2y$10$VIXRK9R/IXjVlhU4My1xLefcitNMYL7pn1E4i9v2nm8MJC1DFzDYq', 'female', '1990-06-07', 'Bogor', NULL, '1973-02-16 09:53:39', '2013-04-09 00:23:07'),
(11, 'Melinda Namaga', 'amalia.najmudin@gmail.com', NULL, '$2y$10$JEmv0hYjC9vb4a1MM.aep.NKdnNV6yJETNggOodBu4fBDtbcr.mfy', 'female', '1984-10-04', 'Bogor', NULL, '1989-12-03 17:24:04', '1977-08-17 22:31:50'),
(12, 'Eva Hariyah', 'rahmawati.diana@gmail.com', NULL, '$2y$10$ZklXOWcMg4tKlbdnKJcp4u3qS0I62z1Ea1lasZwVcl4SHGlmGaOFi', 'female', '1991-04-07', 'Bogor', NULL, '1976-07-07 14:38:44', '2004-10-16 19:33:02'),
(13, 'Ulva Sarah Puspasari', 'prayoga.elvina@gmail.com', NULL, '$2y$10$AJmeKx35TuEC4dHtUWbKSeGD30FO3/Up7iP0ZVf25TtkSEyZbTd0G', 'female', '1983-06-13', 'Bogor', NULL, '2007-01-10 00:32:48', '2006-02-03 16:43:59'),
(14, 'Rahayu Ulva Purnawati', 'wulandari.kasusra@gmail.com', NULL, '$2y$10$379rpinoY0TNWT0f6kir3eIKJnZZw/RGrAm5YBTjYR9bTzFyn47sS', 'female', '1990-02-11', 'Bogor', NULL, '1972-10-05 23:21:51', '1994-09-22 20:57:21'),
(15, 'Vicky Mutia Rahimah', 'lalita70@gmail.com', NULL, '$2y$10$BwTzI7AjfeYOv3RfziBRo.hKyPtBMMlr3fdEOyXs8owQZbRD/A1LG', 'female', '1985-10-07', 'Bogor', NULL, '1986-03-05 09:38:21', '2002-09-27 06:43:04'),
(16, 'Ajeng Halimah S.E.I', 'ifa.pratiwi@gmail.com', NULL, '$2y$10$w3d8ylIgXPa//ZVxUyughufY/8X9JJl.R4ePSiLmN4Gs0dlM2sMEC', 'female', '1972-11-01', 'Bogor', NULL, '2016-10-10 19:00:59', '2001-08-27 19:58:13'),
(17, 'Cinta Namaga', 'kamila72@gmail.com', NULL, '$2y$10$i2sQsbj.xq2C6oSndlT00OH0Da/SXjWV9SxRakmuF6SFlyQIH4fU.', 'female', '1995-01-27', 'Bogor', NULL, '1996-01-10 23:48:00', '2015-01-08 03:37:54'),
(18, 'Intan Agustina', 'marpaung.wardi@gmail.com', NULL, '$2y$10$lM88s0nxmP4AxtlbUMqgRO3RR6UNHB/H./70hOgn/qNsta93F5n7a', 'female', '1990-03-02', 'Bogor', NULL, '1970-06-29 16:12:26', '1982-01-18 08:41:13'),
(19, 'Sarah Andriani', 'zsuryatmi@gmail.com', NULL, '$2y$10$2ab99Dv300NnHqwfGtGns.88RE49/quTvT.WL7j1GIXnsdwejtTPW', 'female', '1973-07-08', 'Bogor', NULL, '2001-06-17 09:29:59', '2011-10-02 19:28:54'),
(20, 'Ratih Halimah', 'situmorang.wage@gmail.com', NULL, '$2y$10$jESkDcNSLWlPRQql.yD.7.QMx3wG7ecfMVtkSNxloA.MTguZlH.Uu', 'female', '1975-06-26', 'Bogor', NULL, '1984-01-31 04:24:35', '1993-08-31 15:27:02'),
(21, 'Iriana Handayani', 'yance95@gmail.com', NULL, '$2y$10$IK78QYf8OMj9jRhQsWvJ4eW8q5it2pxvXMeQcb64XVKaAReVwacDm', 'female', '1995-05-25', 'Bogor', NULL, '2007-10-17 07:29:13', '2021-06-21 02:20:58'),
(22, 'Zaenab Widya Nuraini M.Kom.', 'balijan08@gmail.com', NULL, '$2y$10$bY5rTU3zcmDZK.dr/NmC6ed8tG7JC5QRfyHDtT3iiQnJ0eLEj5dHi', 'female', '2018-03-03', 'Bogor', NULL, '2008-08-22 16:31:57', '1975-06-13 10:38:56'),
(23, 'Yuliana Rahimah', 'qhalimah@gmail.com', NULL, '$2y$10$zsceEyg2Ka24cIlrlTGgt.224xvpwtFgRe.h//6Y80VaJeuS0Snjm', 'female', '1970-04-18', 'Bogor', NULL, '1978-10-25 17:49:31', '2022-07-06 20:18:39'),
(24, 'Uli Rahmawati', 'dalima.megantara@gmail.com', NULL, '$2y$10$i8wDzb0Sz9Ivv3kN/IWcuuUXdLSJKAxT4G6TckRsWb7grzhj7Vs0e', 'female', '1977-07-27', 'Bogor', NULL, '2006-09-06 21:33:02', '2010-08-09 16:07:06'),
(25, 'Nurul Lailasari M.Pd', 'sfujiati@gmail.com', NULL, '$2y$10$jVhLzm/WD4TePz85GFqrdOJT30Ts71tigUNKU9jfOy1UdI5uxBeHO', 'female', '2013-10-17', 'Bogor', NULL, '2022-07-10 06:43:09', '2015-03-29 11:12:08'),
(26, 'Titin Gasti Usada', 'vutami@gmail.com', NULL, '$2y$10$O6lSK24f6Cskoa2A3zXy8ufOW325LnU78L/JT/MbMuSeBHkN8LMsS', 'female', '2005-10-10', 'Bogor', NULL, '2019-10-27 07:29:28', '1970-08-22 18:23:03'),
(27, 'Nadine Titi Wastuti', 'mardhiyah.bahuwarna@gmail.com', NULL, '$2y$10$azg5KAmZOpRdq65KZe/rBO14KFY.vHB88vsd2PZxyo8Bb16eAq4Nm', 'female', '1999-12-05', 'Bogor', NULL, '1986-01-15 15:09:22', '2010-07-13 12:44:28'),
(28, 'Bella Nurdiyanti', 'namaga.rama@gmail.com', NULL, '$2y$10$mt5Rxqc9VLQLkcv7xa7Wk.daa8wLyW/2Mny/T9PYDB0Oh8NXO869m', 'female', '1999-07-27', 'Bogor', NULL, '2015-11-10 17:44:29', '1977-05-21 06:53:19'),
(29, 'Rina Safitri', 'halima.wahyudin@gmail.com', NULL, '$2y$10$ghpXbq4WoBWldu2gC6JhqecSg4kC3QftM5m5XFIM1spdXWsl38gT.', 'female', '2005-08-18', 'Bogor', NULL, '1990-12-21 16:36:16', '2001-02-07 07:16:07'),
(30, 'Usyi Susanti', 'kusmawati.jelita@gmail.com', NULL, '$2y$10$bqiFbZA/AHvzymgGIOxX.ufQaT1/E.QcI4QkiWW.VZ75ZtCWEkymy', 'female', '2009-10-14', 'Bogor', NULL, '1999-11-13 11:10:27', '1986-08-08 02:35:39'),
(31, 'Citra Icha Rahayu', 'danggraini@gmail.com', NULL, '$2y$10$rWBa09bLBmava3ALkPVqc.PlKZFwulRkBs8M6ObEG4grjFc3KvBri', 'female', '1979-09-09', 'Bogor', NULL, '2021-12-30 23:28:31', '1994-12-10 14:54:31'),
(32, 'Titi Chelsea Padmasari', 'puspasari.alika@gmail.com', NULL, '$2y$10$efbSOctXC3Qt7UqhMfz/seqqLB1C7reBXLSKk1YC/CXIFWsVKzj92', 'female', '2019-02-13', 'Bogor', NULL, '1987-04-25 13:28:48', '2017-10-20 12:48:09'),
(33, 'Victoria Purwanti', 'nova.yulianti@gmail.com', NULL, '$2y$10$/J3jH9daegY7OwVZ9ETUsu0AzAEj9fC7.936eq.nmlNkzyS3drk.y', 'female', '1992-11-02', 'Bogor', NULL, '1999-08-16 07:53:10', '1985-07-28 17:49:21'),
(34, 'Ina Farida', 'novitasari.yunita@gmail.com', NULL, '$2y$10$5Xnz7tqrwDXDSEr6sxktF.wB0.HhWaUU2qLhx6.K2JU0wLPMaud8i', 'female', '1971-11-24', 'Bogor', NULL, '1978-01-31 14:08:58', '1991-05-28 13:30:16'),
(35, 'Janet Diah Yolanda M.Kom.', 'tomi45@gmail.com', NULL, '$2y$10$UOHvKvhTPzMB6cvjE/YkHOEe3H/dp3hXsYCl31hrxjH3lKyGip/wy', 'female', '1998-11-23', 'Bogor', NULL, '1993-10-09 09:54:25', '1986-04-11 12:21:23'),
(36, 'Zelaya Nasyiah S.E.', 'titi07@gmail.com', NULL, '$2y$10$qbCTfzduNFE69Q9VT9GrJenWfbBcz.ROUOw9.5gJBg7OUzGIs0D1S', 'female', '2012-03-17', 'Bogor', NULL, '1973-09-15 04:33:19', '1970-09-20 21:57:40'),
(37, 'Silvia Faizah Purwanti', 'tari.wastuti@gmail.com', NULL, '$2y$10$JMWoEq.mGBbTi1PvnhtuaO0cYUGfsKu2/YHj6DRJEpElwPRSndes.', 'female', '1973-07-20', 'Bogor', NULL, '1999-03-02 19:48:04', '2021-04-18 09:12:38'),
(38, 'Violet Mardhiyah', 'mpertiwi@gmail.com', NULL, '$2y$10$G.tQhF5w8QJtDI6a9sKdKulNwEK40O9U.u2R1n8NPvm30.Buf54KK', 'female', '1977-08-25', 'Bogor', NULL, '1999-08-04 11:00:05', '1983-09-25 17:06:49'),
(39, 'Carla Cinta Oktaviani S.Sos', 'makuta56@gmail.com', NULL, '$2y$10$K/HeZoCIia9THzGLe.TLpebqOzZa.WBuDrylIeUF9skMk1vjZ2kgK', 'female', '2018-02-19', 'Bogor', NULL, '2005-04-07 11:46:30', '1996-11-30 05:15:13'),
(40, 'Bella Jessica Mulyani S.H.', 'dongoran.wadi@gmail.com', NULL, '$2y$10$c1wuH1pjLFxEmUuIs6UpKONyKxytYxKppi1AnG8Re3C2ZQD/cEfgq', 'female', '1986-07-01', 'Bogor', NULL, '2006-12-22 03:04:33', '1999-06-08 06:34:50'),
(41, 'Oliva Halimah S.Psi', 'pertiwi.elvina@gmail.com', NULL, '$2y$10$8Ccr4sPe2ue4fCsI9EjpYOCHH3HB.a7u0D9FxJj0yl4nfpPKPvrkq', 'female', '1990-12-03', 'Bogor', NULL, '1987-01-16 16:25:55', '2002-07-16 18:17:32'),
(42, 'Michelle Laksita S.E.', 'yhakim@gmail.com', NULL, '$2y$10$a7IptqoxwtHNpFmmyoqxVeHKxfM6mQY86QIDicjzfv2MmMcNV45jC', 'female', '1973-08-02', 'Bogor', NULL, '1976-03-26 22:29:04', '2015-08-02 21:04:43'),
(43, 'Padmi Laksmiwati', 'wastuti.talia@gmail.com', NULL, '$2y$10$97g9tQv2y5OCAIAWh/jaj.IutEBVkQVPvqq3rcE44Mtq.w8Egw3OC', 'female', '1997-02-10', 'Bogor', NULL, '2012-10-18 09:02:29', '2018-05-24 09:58:10'),
(44, 'Ami Nilam Wastuti', 'uchita65@gmail.com', NULL, '$2y$10$NWqp/l0AjDAt7aIWLqcvr.F3XwfitFlrsCC0TOR8OFqnjxV/dmEDK', 'female', '2006-04-17', 'Bogor', NULL, '1974-05-06 19:45:30', '1998-05-09 23:45:49'),
(45, 'Fathonah Namaga', 'hari93@gmail.com', NULL, '$2y$10$y2DVuw.zXtYfct2v0/U5U./.ZCm/mWmknEpXhe5S/meADj3WDY3oe', 'female', '1974-01-15', 'Bogor', NULL, '1998-09-25 05:43:45', '2001-09-18 19:31:45'),
(46, 'Jessica Usamah', 'puspita.rafid@gmail.com', NULL, '$2y$10$HD1uLMNr8f0Kr/nzn9ZZqOuf6a8n/b0MjvvcpAkgNiQmUGItxuGjy', 'female', '2018-08-23', 'Bogor', NULL, '2008-10-29 13:05:44', '1983-08-06 00:48:45'),
(47, 'Julia Cinthia Wastuti S.Farm', 'mahdi96@gmail.com', NULL, '$2y$10$e.UMWoMcLmMkFuQrtONfV.fRbu.yY5yqd9un4E9MIPyqlxhmSINoe', 'female', '2019-03-29', 'Bogor', NULL, '1997-08-26 16:35:08', '1976-09-21 03:31:39'),
(48, 'Tami Ulva Nurdiyanti', 'nasyiah.eva@gmail.com', NULL, '$2y$10$IC.R6Ub7JSGy5jS57G30o.zbJHwEwrL1AC9Z8/MG7abDU2GdFharu', 'female', '1980-10-28', 'Bogor', NULL, '1995-03-28 02:02:49', '2013-06-13 10:01:20'),
(49, 'Farhunnisa Yulianti S.T.', 'maulana.jumadi@gmail.com', NULL, '$2y$10$XzYDVLzQcejtcY5KbHIgRObq0Q2fgahpPHR5yGdpGKFS/5vhRcFXW', 'female', '1998-05-11', 'Bogor', NULL, '1991-12-19 15:53:38', '2004-11-06 11:05:05'),
(50, 'Nadine Suci Halimah', 'bastuti@gmail.com', NULL, '$2y$10$4JCq.doGvoZ2xUkeGyBnZu/hKWpM0OYcuSWJlLxxvNH5oeWiUVafu', 'female', '2017-09-23', 'Bogor', NULL, '1971-12-14 07:58:30', '1977-02-11 20:02:42'),
(51, 'Diah Kusmawati', 'permadi.gangsar@gmail.com', NULL, '$2y$10$uH.yCpR/8ax1bPIQWQkLf.Tp4uoE5UPLWY.D42wnkEKliu5YxyJyS', 'female', '1983-09-17', 'Bogor', NULL, '2013-03-25 06:51:48', '2009-10-13 13:20:07'),
(52, 'Hani Pratiwi', 'jaka.manullang@gmail.com', NULL, '$2y$10$5l2Ekynzd/Md6zNE7djLRON0CAsQoMVYqY21ZYA3ApDZ3xU3Kphmy', 'female', '1989-05-18', 'Bogor', NULL, '1993-10-22 05:28:45', '1976-03-07 14:30:36'),
(53, 'Zalindra Oktaviani S.Kom', 'qnurdiyanti@gmail.com', NULL, '$2y$10$4gOo/czSQR2JmRDpYB8V7eaV/AFwILg.m4BKHvxQ6a9hAh8cI8shi', 'female', '1986-03-24', 'Bogor', NULL, '2001-04-25 17:34:57', '1976-09-04 19:05:17'),
(54, 'Hana Yuniar', 'ella.kusumo@gmail.com', NULL, '$2y$10$.PpSX6VDaanAzTcECZ9h/uonaGwBOAJwdCYQhd2V4PQXUJVlbRfPm', 'female', '2010-03-18', 'Bogor', NULL, '1986-07-02 05:45:26', '1992-06-29 22:39:33'),
(55, 'Rina Astuti', 'npurnawati@gmail.com', NULL, '$2y$10$CuHs7hpOATx8hpxyVSt37.teZlEix1sqzA./X9LfqSytLdBYnTd/e', 'female', '1985-04-12', 'Bogor', NULL, '1986-09-06 03:38:10', '2018-12-10 22:41:13'),
(56, 'Anita Farida', 'martani.hassanah@gmail.com', NULL, '$2y$10$.ZNccr1RttDJDOsjIUfZf.MDmIftj/uQYvxwet.Z1LDG6TquYUT66', 'female', '2012-06-15', 'Bogor', NULL, '2013-10-20 06:27:07', '1980-08-28 17:26:32'),
(57, 'Belinda Maryati', 'purnawati.timbul@gmail.com', NULL, '$2y$10$CyTeCIvfock7LMlOpeuyRuvRdZT2p5ct8HbU4sH2MAcwCKscb0ija', 'female', '1990-02-28', 'Bogor', NULL, '1994-11-15 19:47:49', '2019-03-13 20:50:02'),
(58, 'Lili Septi Riyanti', 'rahmawati.pangeran@gmail.com', NULL, '$2y$10$hgX4c.tqrNUURMqxcKzWL.wVJ1.2SNkzZ2xG4hYbhjs7Tf5ylCuYm', 'female', '1995-07-09', 'Bogor', NULL, '1989-08-25 14:09:58', '2014-12-24 12:29:30'),
(59, 'Zulfa Kusmawati', 'prayoga.mujur@gmail.com', NULL, '$2y$10$rjHZn.7Ltyck9SgTtXwt1eQ.TCKGS7a0wPHqEH06iILREaQuu6hKG', 'female', '2002-03-28', 'Bogor', NULL, '1999-04-07 18:13:08', '1991-03-16 18:23:12'),
(60, 'Ira Elma Hastuti S.H.', 'amelia31@gmail.com', NULL, '$2y$10$QYiDfc3PqtUdc841L4AU0OUjBkmoTHEVHx5YReZAJTzMouhuzT3yO', 'female', '1971-05-08', 'Bogor', NULL, '2008-01-10 08:44:50', '1975-07-17 00:27:36'),
(61, 'Ami Usamah M.TI.', 'hilda.pranowo@gmail.com', NULL, '$2y$10$rAOOf1H654EtGDqdJGBWaOsjhEyBfX7ZefAHMSNnuR.XngMonZi0S', 'female', '2022-09-08', 'Bogor', NULL, '2009-02-02 15:54:00', '1987-11-26 01:22:15'),
(62, 'Salwa Tari Safitri S.E.', 'yani42@gmail.com', NULL, '$2y$10$Q.haA2nxgaRoHLVs9HXVf.TaqfyqDAy3k3k0c9DKkvaDe25TvglgC', 'female', '1997-12-01', 'Bogor', NULL, '2003-07-04 07:47:11', '1997-01-05 09:47:52'),
(63, 'Yuni Aryani', 'enovitasari@gmail.com', NULL, '$2y$10$tH/yR/qC7FjuaIqYLMpz1eXvlAYZ2sZOZ7WtYwBRlxz9JkQw1PDFa', 'female', '1999-08-08', 'Bogor', NULL, '2018-02-03 12:42:24', '2013-07-04 15:24:03'),
(64, 'Elvina Halimah', 'lkuswoyo@gmail.com', NULL, '$2y$10$p5wfXFewYKTjIHsu/GUk/uvnvcRAq.ksMIiP7g6mgjIxznGcD6csy', 'female', '1978-01-07', 'Bogor', NULL, '1983-04-19 18:05:46', '2017-05-22 12:26:58'),
(65, 'Janet Astuti S.Psi', 'wijayanti.kezia@gmail.com', NULL, '$2y$10$1HYQVAbQppd439ZbO7jnheyTieQ9HLb90et2H1VNxfOgxIMKXQyz.', 'female', '1980-05-21', 'Bogor', NULL, '2000-08-30 06:55:51', '2014-04-28 00:57:23'),
(66, 'Amelia Andriani', 'kkuswandari@gmail.com', NULL, '$2y$10$bnWp4W28ifhZqlMB4S8rV.3BYp1K06tghVGdqxsGOVGKBLYApiQd.', 'female', '1995-11-18', 'Bogor', NULL, '1979-08-22 05:53:56', '1983-04-23 22:54:00'),
(67, 'Shania Suci Agustina', 'kartika08@gmail.com', NULL, '$2y$10$lwZmSdvuW0xxuOXZuGQiuubQMcg0ZrnGFeL/arta76jJ4en8/t.qi', 'female', '2004-02-13', 'Bogor', NULL, '1979-03-25 06:22:54', '2004-10-15 10:58:08'),
(68, 'Melinda Nuraini S.Psi', 'hana.wijayanti@gmail.com', NULL, '$2y$10$/QjoT9tOd6ICnm3FlRRJKOJ97Y5diQt9jGP5DGZc6qXo5zm1UBzDG', 'female', '1989-03-03', 'Bogor', NULL, '1981-05-16 22:24:11', '1970-05-20 22:11:13'),
(69, 'Tina Nasyidah', 'cbudiyanto@gmail.com', NULL, '$2y$10$FZK067zzXxQVHQ2P15/7.e1Pg.SxhXhW2Y64GPVF.PqqBCQXT/Usa', 'female', '1973-03-28', 'Bogor', NULL, '1991-12-26 11:51:54', '1977-12-26 17:45:45'),
(70, 'Faizah Rahmi Nasyidah S.IP', 'omaryadi@gmail.com', NULL, '$2y$10$2fEAJ4m5C11iCX.za3E84O.0xgwdo9pl8DU37Sk809lirdQfIgq4i', 'female', '1999-03-11', 'Bogor', NULL, '1971-07-17 21:25:23', '2005-05-08 14:39:55'),
(71, 'Kania Ratih Nasyiah M.Kom.', 'cinthia.novitasari@gmail.com', NULL, '$2y$10$/.7J0iDouYKmO8EHiLG3xuhgYCPeQfu.MgjfGFRnFFqfvcYVWM9wu', 'female', '2004-11-04', 'Bogor', NULL, '1973-12-19 07:53:55', '1979-02-25 23:56:58'),
(72, 'Latika Endah Suartini', 'prasetya.nilam@gmail.com', NULL, '$2y$10$B2rvlGIqCM10zdSSwPoEZeje08eUSewarP.Vc6ljz7ox4yOWjAeJK', 'female', '1996-12-14', 'Bogor', NULL, '1989-11-11 08:40:31', '2003-12-13 18:33:39'),
(73, 'Maria Handayani', 'raditya.wahyuni@gmail.com', NULL, '$2y$10$L6H3Mo5gBwPakMQk2Irepu0uEgcfTl/jycjoFK9FgbVd/DDdQZ49.', 'female', '2016-04-22', 'Bogor', NULL, '1991-11-17 12:18:03', '2021-03-27 13:53:20'),
(74, 'Sari Anggraini', 'hani69@gmail.com', NULL, '$2y$10$MX4CQyUEtJroAmPjlsSNd.7bv/QPtwVW0mbycZPCdlURorkdymEEC', 'female', '2003-03-15', 'Bogor', NULL, '1975-11-04 18:09:59', '1972-07-15 12:15:35'),
(75, 'Malika Zizi Mardhiyah M.Farm', 'lurhur.kusmawati@gmail.com', NULL, '$2y$10$roZN06ZUoTnEbthQN0TXs.hBQzix0/I.6NRqYmE.mJPcxHtFgEfY6', 'female', '2000-10-28', 'Bogor', NULL, '1994-11-05 09:18:20', '2010-07-30 00:57:25'),
(76, 'Diana Utami', 'danu58@gmail.com', NULL, '$2y$10$X2yeqCat1b3js243UJTjaeDaDvqrCyKHzg3e34inSbxQuxur2KPL2', 'female', '2019-02-19', 'Bogor', NULL, '2009-04-21 09:20:51', '2013-10-09 05:34:39'),
(77, 'Ellis Rahimah', 'ilyas36@gmail.com', NULL, '$2y$10$N6vkBjpfpmrJ/4wlequFJeTBptOV8be2kqpFMhQLXMj2T318Qknja', 'female', '1985-07-16', 'Bogor', NULL, '1985-09-21 13:26:40', '1986-12-06 09:01:55'),
(78, 'Zahra Diana Kuswandari S.I.Kom', 'tari43@gmail.com', NULL, '$2y$10$Qiw7EsJlvMBrGgO3vD7BKODh6zz6kJ1JoOwHs.Zu28WB.AcPNjXwu', 'female', '2011-01-12', 'Bogor', NULL, '1973-08-30 12:52:19', '2007-10-04 06:21:51'),
(79, 'Syahrini Melani S.Psi', 'tasdik.rajasa@gmail.com', NULL, '$2y$10$ZXazSiKHZ3Pj/lprMDHejOD7.EcxHh1IEKCb1JQu2XJ4hmXgtdxhq', 'female', '1980-05-21', 'Bogor', NULL, '1973-04-26 05:11:32', '2001-02-28 14:34:49'),
(80, 'Humaira Kuswandari', 'melani.balijan@gmail.com', NULL, '$2y$10$55.TnuWxCfxMcIYt5N9TJ.kZBWP3kjPOv9HjcDJBkInNiKsUeQ40C', 'female', '2022-07-31', 'Bogor', NULL, '1977-06-02 07:17:46', '1972-06-08 01:16:19'),
(81, 'Talia Nuraini', 'pradana.parman@gmail.com', NULL, '$2y$10$unCgdn/0x91yYKC5/wJMJersnbnJb6rC.wADyUM4IEOdd4zw1Xk56', 'female', '2020-05-31', 'Bogor', NULL, '1988-11-14 10:30:29', '2006-05-20 01:33:58'),
(82, 'Cindy Nurdiyanti', 'ukusmawati@gmail.com', NULL, '$2y$10$2.ZgUeTqK1hJ5dmUO/HKgORa9vycCniEvTix/HdVefyOrlxx7RXwC', 'female', '2022-03-20', 'Bogor', NULL, '2005-01-10 01:37:53', '1980-05-09 07:26:20'),
(83, 'Rini Indah Hasanah', 'carla31@gmail.com', NULL, '$2y$10$SOvWwFyckLfq/UJ5r0e7QeORZp4U5vI9Uff.htIcfv80lEmVyqx5m', 'female', '1979-01-18', 'Bogor', NULL, '1972-10-27 10:55:58', '1971-04-02 12:55:04'),
(84, 'Ella Padmasari', 'qsitumorang@gmail.com', NULL, '$2y$10$V9tWWg5JRJVP5KOCNH/V9eukbCfk/MUSTqydnozThw0H8XN18u8vG', 'female', '1986-01-14', 'Bogor', NULL, '2001-05-12 08:41:33', '2009-04-29 04:35:03'),
(85, 'Ella Safitri S.I.Kom', 'nadia.megantara@gmail.com', NULL, '$2y$10$DmeoiHAvvuXcTeyGsNVJGeTYQnPD5iOvn8ZqmUWlExpZ/nhCBwPom', 'female', '1988-12-08', 'Bogor', NULL, '1985-05-26 22:57:11', '2020-10-13 12:48:44'),
(86, 'Oni Cici Nasyidah', 'sinaga.saiful@gmail.com', NULL, '$2y$10$4U9G3tLwDZAmb34H5Mw6XuEn.k2DW.KPk.IwtPiy9VGuzmlzSB79i', 'female', '2003-11-19', 'Bogor', NULL, '1995-01-05 23:09:05', '1992-09-19 02:37:30'),
(87, 'Patricia Uyainah S.Psi', 'pardi.wahyuni@gmail.com', NULL, '$2y$10$/o0jCCgbb9YFnGBgr2K7xuHL3h9UqV6vd66b9QWh96B0KmFbjasdC', 'female', '2005-06-02', 'Bogor', NULL, '1970-01-19 15:07:59', '1998-03-17 08:58:43'),
(88, 'Violet Kamila Astuti M.Kom.', 'galih.hidayat@gmail.com', NULL, '$2y$10$DTcSLhDC.q/ao54QvldDR.Ka17nLGXrDiL1P2MFifkJqOna07U02.', 'female', '2009-11-14', 'Bogor', NULL, '1983-08-11 15:01:43', '1986-09-19 03:27:55'),
(89, 'Putri Hariyah S.E.I', 'maria14@gmail.com', NULL, '$2y$10$eC1qEON556ovIGKNjapw.u7OrSMwp9mD2B68a0ePQ4F4BGMZptibG', 'female', '1972-09-03', 'Bogor', NULL, '2003-01-21 13:11:32', '2007-02-11 10:18:47'),
(90, 'Uli Hassanah S.H.', 'aryani.almira@gmail.com', NULL, '$2y$10$O0T0cmk0kf7Lpf6VeUW.s.dC92VNKxLhk.ewCe5Oco8oYFd5tyVW2', 'female', '1984-04-11', 'Bogor', NULL, '2004-09-29 08:37:02', '1994-10-05 14:02:55'),
(91, 'Kezia Mala Maryati S.Gz', 'pudjiastuti.bambang@gmail.com', NULL, '$2y$10$6akDYgqqE679WiwKoI/1VOh4E0hSC2Z9xopT/KhuUIDr7ux1Hjjpm', 'female', '1990-05-10', 'Bogor', NULL, '2010-02-25 02:17:44', '1976-03-26 07:13:19'),
(92, 'Jelita Uyainah', 'kayla.tamba@gmail.com', NULL, '$2y$10$SwaFjgq1qRDA2vaX9I5uouy/EyRXvvT.VhxTXzef6j5u0PX5i8QFW', 'female', '1977-11-23', 'Bogor', NULL, '1988-02-10 07:06:44', '1998-08-05 16:01:01'),
(93, 'Sabrina Rahimah', 'nadine.winarno@gmail.com', NULL, '$2y$10$cYnbGX9xZCXyNF/lNN0BkukNQfY774zbhQvzRVJbIGkwPSOYoWK/y', 'female', '2008-04-17', 'Bogor', NULL, '1990-12-24 15:48:01', '1977-10-14 23:09:03'),
(94, 'Oliva Haryanti', 'riyanti.lanang@gmail.com', NULL, '$2y$10$mM6vpBW04CsXnC6BxWJ7m.ExaKmiTyIjvQaVBTMoO52QrHw0ReYLq', 'female', '1989-03-07', 'Bogor', NULL, '2002-03-18 18:20:31', '1974-09-24 13:33:57'),
(95, 'Puput Puspita', 'rahmi71@gmail.com', NULL, '$2y$10$x5SAq3SMC6zuFQ0UpDYUYeEMtJrf0Lnj7iJxQMzDmOC0ojgOnxJ5G', 'female', '2016-09-20', 'Bogor', NULL, '1975-10-14 21:36:29', '1996-02-01 04:21:18'),
(96, 'Latika Permata', 'latika54@gmail.com', NULL, '$2y$10$8vDehTO.CQJF4Du2i0e.n.upIQSneT96o3KCRcB.mPBoc8yJhjBOC', 'female', '1995-08-20', 'Bogor', NULL, '1977-09-08 12:01:35', '1998-01-11 11:57:27'),
(97, 'Jessica Halimah S.Farm', 'wibisono.wakiman@gmail.com', NULL, '$2y$10$q5ZFd51n8qQk0btl40YFTeutgikneaTJz/gkNnyx7ou/kBuK95AO6', 'female', '1998-06-29', 'Bogor', NULL, '1982-10-16 01:30:16', '1973-11-13 12:42:22'),
(98, 'Alika Rahimah', 'lintang35@gmail.com', NULL, '$2y$10$Wi97IlKxvtestIREUEYgi.aX1eOWZEOOSIAM1RpMKVzkoH1hElqty', 'female', '1994-08-31', 'Bogor', NULL, '2018-07-25 00:46:07', '2005-01-06 16:45:01'),
(99, 'Yuni Sudiati', 'eva.hassanah@gmail.com', NULL, '$2y$10$yVM0ckDbovHWXxs.tWTsKO4FnzPltwHFVw54qmk4LCa1hX94HJ2ba', 'female', '1974-02-01', 'Bogor', NULL, '1976-06-24 18:57:09', '2006-05-24 23:56:32'),
(100, 'Jasmin Permata', 'kiandra69@gmail.com', NULL, '$2y$10$GJoWSMRq4P3d2mw9SNQ5helLPUzegf6IKX2YP0j3ZGSzPAozvfzNy', 'female', '2007-06-15', 'Bogor', NULL, '1996-01-24 06:20:27', '1993-05-12 18:25:29'),
(101, 'Melinda Eva Aryani S.Ked', 'wahyudin.lili@gmail.com', NULL, '$2y$10$TwDSMhGY1HAKB3krByXglOzzzO6EkYhKilV1JAB.kHodQ6tWP3nu2', 'female', '1984-01-20', 'Bogor', NULL, '2006-05-24 13:07:03', '2004-05-01 15:22:36'),
(102, 'Hana Mayasari S.Psi', 'nabila72@gmail.com', NULL, '$2y$10$y6UTAhHMcGcJkQdb8rp6qeBxv9bKNlaDCy0lupE0a/5Qd/ZB7iC8.', 'female', '1997-10-09', 'Bogor', NULL, '2007-03-30 09:17:23', '2013-12-27 05:01:54'),
(103, 'Maya Citra Lestari', 'padmasari.carub@gmail.com', NULL, '$2y$10$MCeAnSqnMPfsFGZW4PwdjeSFycHr5.Sq7Mux1YT2CAeOo54yIQ2De', 'female', '2014-12-15', 'Bogor', NULL, '2011-12-21 22:58:59', '1981-09-12 22:47:56'),
(104, 'Tami Patricia Safitri', 'saefullah.zulfa@gmail.com', NULL, '$2y$10$BLhTonuaVsNRylbVjvi4b.8R06woNNgZQ.qSURiaglrjQWY0HgXFC', 'female', '2009-07-21', 'Bogor', NULL, '2020-06-10 21:26:51', '1986-09-22 03:00:16'),
(105, 'Fitriani Utami M.Ak', 'kanda55@gmail.com', NULL, '$2y$10$/gKqtf5ltGo..DGsojRZx.mcxK9SxRe.qzB0j9gylIP1pscHks7y6', 'female', '2011-10-22', 'Bogor', NULL, '1984-07-10 01:54:49', '2017-02-17 05:43:02'),
(106, 'Ifa Handayani', 'maras.waluyo@gmail.com', NULL, '$2y$10$mDXoUMqEahawTEQhe7k1teiA.m1h4jrm2Fq9SgqmynFE7w0ABu.Iq', 'female', '1985-03-31', 'Bogor', NULL, '1995-11-24 12:48:03', '1989-04-21 23:07:35'),
(107, 'Mila Mayasari', 'janggraini@gmail.com', NULL, '$2y$10$uJKgqHihNDdZi2kAvoHuce7gEoNjISvebyzfWaemmsQJJaDwjPrEC', 'female', '1990-11-09', 'Bogor', NULL, '2017-11-30 21:02:57', '2016-10-30 05:02:48'),
(108, 'Bella Jamalia Namaga S.Pd', 'kambali.tampubolon@gmail.com', NULL, '$2y$10$VuOkpHFz05DJhbEe1z3r8u0HEO04FZtRCkAJ5b38RCLtLkAtU8rbq', 'female', '1993-08-06', 'Bogor', NULL, '2009-02-23 07:30:34', '1992-06-02 14:09:15'),
(109, 'Oni Puspita', 'mulyani.syahrini@gmail.com', NULL, '$2y$10$jWX.IR9j4ZsV1c2C3ppzqeV63qjV/mH3jFRncp7FjGiyFFl5fFH3e', 'female', '2015-01-31', 'Bogor', NULL, '2004-11-18 09:34:17', '1987-11-22 23:28:49'),
(110, 'Siti Haryanti', 'dyuniar@gmail.com', NULL, '$2y$10$dEwlPRF94OKcAEJ19IYf7uAO.j77TVfBh2TOr70yyHgdD/0xQntdy', 'female', '1980-03-29', 'Bogor', NULL, '1986-07-06 18:57:16', '2021-05-21 09:47:31'),
(111, 'Restu Melani', 'yuliarti.zelda@gmail.com', NULL, '$2y$10$0JgSSxWjJaFypNz8uOtEeOmLbQnuXBrdAst63l7B.oxgVv2bz/sY6', 'female', '2007-07-25', 'Bogor', NULL, '2006-01-19 08:17:18', '1982-03-05 14:35:38'),
(112, 'Ratih Kiandra Maryati', 'wage54@gmail.com', NULL, '$2y$10$7igrGCI7mIi3tB6ZzCvPJ.k5pmyxe7JsPeRrpKzSLmXkCwyVim8/O', 'female', '2005-07-18', 'Bogor', NULL, '1982-03-08 19:40:59', '1988-09-22 02:41:36'),
(113, 'Safina Hastuti', 'narji19@gmail.com', NULL, '$2y$10$YAPyGyrep8SCT7MGvxGPk.wmPWf5eMQNv.EuNNrGwsHRgtrXUjibG', 'female', '1973-08-15', 'Bogor', NULL, '1973-11-03 08:58:48', '2002-08-05 17:15:52'),
(114, 'Faizah Mardhiyah', 'umegantara@gmail.com', NULL, '$2y$10$0.01LUkNHB.sJ5SyU9uSNOfa4NNEzEl5vu8/f0GWRWZVmNMUla/WG', 'female', '2020-03-11', 'Bogor', NULL, '2010-09-12 05:04:57', '2006-06-21 18:52:30'),
(115, 'Ifa Andriani', 'bwidodo@gmail.com', NULL, '$2y$10$4XngZdfscop9YXMf9nmZF.YUcEiJGe2TTbKSNUAIUiTnANsRDqsIa', 'female', '2009-03-01', 'Bogor', NULL, '2006-12-15 01:15:25', '2003-12-06 16:26:38'),
(116, 'Humaira Nasyiah M.Kom.', 'tira.mangunsong@gmail.com', NULL, '$2y$10$pmwOWYgCyx2gA06rwwiE6O1JnL/j7R7sZNS/5P1lq0.3KhyHVKTAa', 'female', '2014-10-22', 'Bogor', NULL, '1982-02-24 21:52:24', '2006-12-06 13:41:58'),
(117, 'Hasna Rina Yuniar', 'lulut75@gmail.com', NULL, '$2y$10$LrJ9Ga.l5/c.f4wjEzMDmOWMIkwsMwwtmtzTnPlp.0m60gL1e8xrO', 'female', '2002-10-03', 'Bogor', NULL, '1975-08-25 02:32:41', '2007-03-28 07:25:10'),
(118, 'Putri Restu Zulaika', 'wisnu.gunarto@gmail.com', NULL, '$2y$10$QWyalaXhetyWq0AtGzx6qOLUy/7R34zLzBbAwGxbIpIiAujWQSkWS', 'female', '1991-09-30', 'Bogor', NULL, '2006-09-28 13:51:27', '2022-09-30 09:02:53'),
(119, 'Zamira Rahayu', 'nugroho.bakti@gmail.com', NULL, '$2y$10$7WG329.PvQ6lUFtVndUk4OHktznbgeLFgGQh0PozF9A.NcMDufn5q', 'female', '1972-02-04', 'Bogor', NULL, '2017-12-03 14:15:00', '1991-02-18 06:38:46'),
(120, 'Jessica Suartini', 'usyi41@gmail.com', NULL, '$2y$10$9GJviw7CjAhMQq2TTe/a8.PxDtXXG/k.UdOkrKHA0WHU7WTpcXG6e', 'female', '1992-04-28', 'Bogor', NULL, '1983-11-05 01:53:22', '2021-08-25 00:24:02'),
(121, 'Kamaria Paulin Wijayanti S.Pt', 'elvina55@gmail.com', NULL, '$2y$10$T9vL7sGJNX4hjcVZJkI5f.Vl86i0HbPtSydgVT/EOh27G3mzSFKb.', 'female', '2019-03-23', 'Bogor', NULL, '2013-09-19 03:25:15', '2021-01-04 07:25:58'),
(122, 'Kania Zulaika', 'hilda.budiyanto@gmail.com', NULL, '$2y$10$.16dbS5ujTkUUeBkcOoKBe1iqJCWo36wrK829RKUI/646Q5L.JVXO', 'female', '1977-04-05', 'Bogor', NULL, '1998-01-10 02:51:21', '1986-11-29 18:39:30'),
(123, 'Ellis Aurora Hasanah M.Ak', 'kasiran98@gmail.com', NULL, '$2y$10$ZiSteQKO.YJaJ.yUUp7jVOuGPYdryTQlxIXX3LGJgdshvjIEMijmy', 'female', '2009-03-27', 'Bogor', NULL, '2012-08-09 23:42:55', '1975-12-26 07:16:31'),
(124, 'Cindy Intan Riyanti', 'nadine05@gmail.com', NULL, '$2y$10$Dwjvxq7Xejcg0dVes9CQ/.kB3E/hwXtuzX06YozFXIGCRBundD38C', 'female', '2011-11-24', 'Bogor', NULL, '2004-07-12 16:34:39', '1975-01-08 10:44:27'),
(125, 'Gina Safitri', 'msitumorang@gmail.com', NULL, '$2y$10$3XsXyjkUPG.hu2b1BoprC.eOtf.QESGK9TxyX9x7ZCBCsGYIWPun.', 'female', '1988-08-14', 'Bogor', NULL, '1973-05-30 18:42:56', '1986-12-25 16:20:33'),
(126, 'Dalima Laksmiwati', 'catur.kuswoyo@gmail.com', NULL, '$2y$10$JdO/V7e81qiG4c4D8pSUQ.zJKUtCSTlQJKL9NG07Qmv7iuX7Tq/Ke', 'female', '1998-01-07', 'Bogor', NULL, '1973-07-22 14:24:15', '1981-01-03 10:12:25'),
(127, 'Diah Siti Wahyuni', 'gamanto.dongoran@gmail.com', NULL, '$2y$10$CNo.E8fnVJVvCROPo5OUpuFPI910mvNmfpqZqSOOI9e.4noKfVdN.', 'female', '1973-10-06', 'Bogor', NULL, '1997-02-27 21:55:06', '1986-12-30 03:00:15'),
(128, 'Aurora Halimah S.Pt', 'yunita.marbun@gmail.com', NULL, '$2y$10$SmqFMSPaaQ87UI7YomRihuiyzQ1.xFM3hAxtdn1xY3f..V7sbR.bG', 'female', '1995-11-13', 'Bogor', NULL, '1980-06-12 13:56:22', '2022-05-15 18:39:59'),
(129, 'Puti Nasyidah', 'okto.anggriawan@gmail.com', NULL, '$2y$10$TMrb0gRweL5xqT2WO.IQwuqdQENNoeIM02dbyx5ibpqR2UyLUvblS', 'female', '1992-10-13', 'Bogor', NULL, '1975-04-29 16:37:34', '1981-09-07 08:53:17'),
(130, 'Janet Utami', 'mayasari.dasa@gmail.com', NULL, '$2y$10$ni1RFDjPTg2E5piFVy714.c/TF9chnT6O3cv1gyMorRuqqs9dqG1u', 'female', '1993-10-02', 'Bogor', NULL, '1997-02-27 19:57:44', '1981-02-24 22:10:08'),
(131, 'Safina Yuniar', 'nababan.dartono@gmail.com', NULL, '$2y$10$WD..hfuwYAvrSnOubHXLq.vrCJ2fNoGfS2THzeVzHGyqUr7qos8nm', 'female', '2009-07-19', 'Bogor', NULL, '1983-06-06 01:05:37', '1988-02-29 05:25:39'),
(132, 'Icha Ophelia Maryati S.I.Kom', 'tantri76@gmail.com', NULL, '$2y$10$jGbwBnKu9Kpy0OIqHwo9TOZ3R2ZxWwQfNPY.6/iTsrulCLqovQWBW', 'female', '2005-03-15', 'Bogor', NULL, '1978-11-09 02:02:13', '2002-12-24 21:19:59'),
(133, 'Ellis Riyanti', 'yramadan@gmail.com', NULL, '$2y$10$R.KbC7byn8GNZQvoJjAKDOhF4/3FsfMkGtDzWu1oS9r4Rvh6bMv6i', 'female', '1996-05-14', 'Bogor', NULL, '1997-07-26 08:23:57', '1970-04-30 23:05:35'),
(134, 'Novi Puspita S.Ked', 'megantara.elvina@gmail.com', NULL, '$2y$10$4oUSnjW1RQqo5T6cf.uvWOUFfyunl/bVbpGQtdrTov25j1HvB27Le', 'female', '2005-02-26', 'Bogor', NULL, '1988-06-04 09:59:11', '2017-05-05 21:34:32'),
(135, 'Uli Wastuti', 'joko08@gmail.com', NULL, '$2y$10$roNfPgKtyLL3efmWT9DhsOYBHCtVvQQTUnhw4SBs.R7UlzKNe4tv6', 'female', '1994-08-15', 'Bogor', NULL, '1991-06-07 23:58:00', '1990-08-03 20:42:56'),
(136, 'Ifa Anggraini', 'tiara57@gmail.com', NULL, '$2y$10$oxN9JqB6syv0Sc4sNzXLcuaaNkoF0Os.OGkblw0ySpvPYPIrmTuJu', 'female', '1972-05-26', 'Bogor', NULL, '1989-09-03 07:01:51', '1998-02-28 12:04:39'),
(137, 'Wani Wastuti', 'dinda.tarihoran@gmail.com', NULL, '$2y$10$kj5xCu401BWRfSPG8uo/z.2ihcKaB9gvVYn/7lRdHGz834Bpz/hJq', 'female', '1975-09-02', 'Bogor', NULL, '1986-05-03 20:44:20', '1987-10-25 14:42:01'),
(138, 'Lintang Aryani S.I.Kom', 'malika86@gmail.com', NULL, '$2y$10$D71vkpAmvCVJeHSKgc85b.hWGmgrTFuILNy.3RJqDLVMV71/BEXgK', 'female', '1996-12-21', 'Bogor', NULL, '2002-06-16 22:32:04', '1981-02-09 03:27:26'),
(139, 'Carla Riyanti', 'wibisono.adika@gmail.com', NULL, '$2y$10$Pr0GjFaI2re6HV0zOF5VwOaAWkmRffvgxhDpXAXI29PVx.LkB9ssu', 'female', '1995-04-06', 'Bogor', NULL, '2022-06-08 17:14:11', '1973-12-24 05:20:44'),
(140, 'Keisha Hafshah Winarsih', 'npranowo@gmail.com', NULL, '$2y$10$LUHmT5ciGAcXMo6aYYaBP.G7mfgE6PvkedUfM9pow0jvF8Q2GSAxy', 'female', '2003-09-19', 'Bogor', NULL, '2015-01-03 23:03:57', '2000-08-10 08:47:18'),
(141, 'Vivi Yulianti', 'ghaliyati72@gmail.com', NULL, '$2y$10$OHis84k5gZc9MgJQ72syYOby8sEqKagFvinriAQ0cpbMIgtiygS6O', 'female', '1974-09-07', 'Bogor', NULL, '2006-01-09 19:18:57', '2016-11-10 11:35:02'),
(142, 'Keisha Rahmawati S.IP', 'farhunnisa39@gmail.com', NULL, '$2y$10$LWoJLcMIYHSPKF58EslYRO0trQEpN/LOs8yQfcRz1pZ1Au1R8YFsu', 'female', '2011-11-07', 'Bogor', NULL, '2009-07-18 06:31:03', '1971-05-20 23:11:42'),
(143, 'Najwa Puspasari', 'irfan69@gmail.com', NULL, '$2y$10$uU8jq4HCRH6ZBZuc9Tb8TOBqEmUckCD2SwmNI5hrtnUPsX5USd5dK', 'female', '1976-06-16', 'Bogor', NULL, '2005-11-07 21:30:34', '2003-10-12 19:52:12'),
(144, 'Farah Wahyuni S.I.Kom', 'gina.rahayu@gmail.com', NULL, '$2y$10$SDEPsqKqWb/zujNHIn6eKuU0tGOl2m53M/wgCx3fi00HPZYN5GzOa', 'female', '1985-09-01', 'Bogor', NULL, '2002-02-24 04:16:49', '1984-08-18 20:58:50'),
(145, 'Kartika Zulaika', 'diana32@gmail.com', NULL, '$2y$10$C8n5hEgtWI09N0Yua4fMae0TLjA0Awt4/TL63eBl7ROSa/oIKXmSu', 'female', '1994-10-17', 'Bogor', NULL, '1981-09-17 14:41:31', '1987-09-15 11:29:35'),
(146, 'Vanesa Agustina', 'caraka42@gmail.com', NULL, '$2y$10$8owix3ugNu69QlcGeAnGS.8zHQspMr1sibHklPC6bo4bdF.84g/mK', 'female', '2020-11-29', 'Bogor', NULL, '1976-05-18 15:34:05', '1983-08-22 17:12:19'),
(147, 'Jelita Humaira Mandasari', 'vhabibi@gmail.com', NULL, '$2y$10$P3/qDkfhFybwbbpoYYDGOeMe/g4Oz/H7OgoGW2SuR7CI84dWmt3Z.', 'female', '1978-08-30', 'Bogor', NULL, '2021-02-25 07:06:41', '1993-09-19 18:38:35'),
(148, 'Kayla Novitasari M.Farm', 'cindy.hutagalung@gmail.com', NULL, '$2y$10$gWCe0sK1fngbWxBTFVzSlOYy6nBZtRS3k3tK/y6VjydKqQOPn4fme', 'female', '1999-10-28', 'Bogor', NULL, '1989-11-11 21:53:11', '1991-10-01 12:57:35'),
(149, 'Oliva Astuti', 'devi03@gmail.com', NULL, '$2y$10$ZhYoueKgmcc2k9Mjr/jRi.5rldrjoYocCUyJi9eIKe2hFsMLZcyCu', 'female', '1986-02-26', 'Bogor', NULL, '2008-07-29 06:59:43', '2002-08-17 13:23:54'),
(150, 'Kezia Zelaya Nasyidah', 'unggul.rajasa@gmail.com', NULL, '$2y$10$flmckv41YUsg5Zlp9x1mt.N3zv/o9VHO.hmlEQptWM9sjCeYejmD.', 'female', '2016-09-03', 'Bogor', NULL, '1987-02-27 17:14:42', '2008-11-20 22:07:14'),
(151, 'Titi Lidya Pratiwi M.Kom.', 'jaiman.yuniar@gmail.com', NULL, '$2y$10$r7ieYEu/wQ0HmPzkLKg9NumirjgdaY8JYwGhyZ1gz9Has1SRb7dWi', 'female', '2008-09-01', 'Bogor', NULL, '1999-12-10 08:06:56', '2020-08-27 21:33:38'),
(152, 'Kiandra Malika Puspasari', 'talia45@gmail.com', NULL, '$2y$10$J57xJH59ffwGaGx5SjHh.OtP0en/wVsRfBfHa7Cvg2HAv6Y4PfkJS', 'female', '1972-04-05', 'Bogor', NULL, '1996-11-14 05:49:04', '2002-02-02 11:57:43'),
(153, 'Kartika Widiastuti', 'ayu40@gmail.com', NULL, '$2y$10$NJVxv7mjYuPB6jEgnAcI8u7cjaWJhCU0krR7vYmdxurwuqnrRglFO', 'female', '2007-11-11', 'Bogor', NULL, '1984-11-21 06:06:24', '1983-07-13 12:28:48'),
(154, 'Uli Farida', 'bella.usamah@gmail.com', NULL, '$2y$10$kbqCqz47ZVcs.UKGO8ppwezhXPYq86/qFoi/8EI29pTcUCx4RVpne', 'female', '1987-04-23', 'Bogor', NULL, '1993-08-18 07:28:43', '1981-12-26 22:17:02'),
(155, 'Iriana Dina Wastuti', 'wasis30@gmail.com', NULL, '$2y$10$72ck9zt3Ku0RdPXGQCgL8OYRVy.VNREdmxxdWuBGAJ/WTVxvVd9Qm', 'female', '2016-04-14', 'Bogor', NULL, '2002-10-11 17:50:37', '2012-08-19 21:29:23'),
(156, 'Kayla Kayla Padmasari', 'sarah.permadi@gmail.com', NULL, '$2y$10$NHUKVNoy/GGKe9vWC2KCjeoyZ/xuUX6nA23ijGhyMClENdY6qRBxu', 'female', '2015-11-29', 'Bogor', NULL, '2002-04-03 23:27:46', '2016-08-20 17:14:49'),
(157, 'Sakura Suartini', 'astuti.soleh@gmail.com', NULL, '$2y$10$Cix1lH.lDdULUk2oSGiyOu9u85pj214mPArcGvaMXgosfjgM0.ICi', 'female', '1973-03-13', 'Bogor', NULL, '2016-07-28 02:01:18', '2022-03-11 21:34:50'),
(158, 'Paramita Ifa Namaga S.I.Kom', 'dprasasta@gmail.com', NULL, '$2y$10$aj5qDADb22EL88ZtqWwqzuQ.nTDeSxrnsWaZUQ7pYHwH5E1s.sJky', 'female', '2004-05-31', 'Bogor', NULL, '1985-02-17 00:46:31', '1991-05-09 17:08:23'),
(159, 'Silvia Rini Susanti M.TI.', 'nyuniar@gmail.com', NULL, '$2y$10$nvkyu/UjPP3eZcHMOBvHROwANejOWzrhxhnWlw5lQRNgsdQWm86UC', 'female', '1988-08-09', 'Bogor', NULL, '1992-06-25 16:42:56', '1971-01-20 21:34:30'),
(160, 'Kiandra Laksmiwati S.Pd', 'nrahayu@gmail.com', NULL, '$2y$10$UfxBAce9yJEv7ocyHPMB0Ot2ZQUpSPEqZXtjjTkC32hn1Bs2Hcbf2', 'female', '1978-10-06', 'Bogor', NULL, '2013-12-01 20:50:50', '2022-08-04 12:02:11'),
(161, 'Ophelia Aurora Sudiati', 'kasim42@gmail.com', NULL, '$2y$10$yp5I1tV0Vxt.DzUEVqkHye6noBhYYo10falhI3QhPV0MuS1emsxGG', 'female', '2003-10-13', 'Bogor', NULL, '1997-12-13 13:01:33', '2022-03-04 23:50:36'),
(162, 'Latika Wulandari M.Pd', 'astuti.gasti@gmail.com', NULL, '$2y$10$T0IOi5qjH/KCSihWD4soyu04fw36ClEKNkXNLChb2t65YGegbM2Ri', 'female', '2003-12-15', 'Bogor', NULL, '2009-05-21 14:35:43', '2022-10-05 00:16:50'),
(163, 'Laila Anggraini', 'irsad.zulaika@gmail.com', NULL, '$2y$10$.hs5.nAGlKPyvX90J0Hj5uidxReGGYeQm9jOAIDpHO4p0ibkokMOm', 'female', '2012-12-17', 'Bogor', NULL, '1991-08-23 07:46:08', '1999-07-05 09:05:30'),
(164, 'Irma Yuni Maryati S.T.', 'nurdiyanti.cakrabirawa@gmail.com', NULL, '$2y$10$eHx7XFpWAe6ENcxnrRVxSenxom8CLrG68hPNxETfEMKUoiojDTBgG', 'female', '2014-09-18', 'Bogor', NULL, '1989-07-21 04:25:42', '1979-09-01 11:53:36'),
(165, 'Gawati Uyainah', 'lmahendra@gmail.com', NULL, '$2y$10$Et182V5MUPhGKx5ntGAuROxqPV4PNEYmIJdoB4HzQkoW5HgrQQDLy', 'female', '2004-07-10', 'Bogor', NULL, '2019-07-10 21:09:52', '1973-08-28 18:30:46'),
(166, 'Tantri Purnawati', 'lwacana@gmail.com', NULL, '$2y$10$FpDWTW4OJxzUajmKhVfMyeKslEY/rT1dpdOFZyhLxjpqAtju/LK6u', 'female', '2022-03-26', 'Bogor', NULL, '1980-06-21 12:02:43', '1986-10-01 15:41:03'),
(167, 'Olivia Oktaviani', 'wasita.julia@gmail.com', NULL, '$2y$10$JYyyB9C53Kh4iY/Z4GFP7u9BLnW3eZouyIicZiOifbmOQC88QrwNG', 'female', '1977-12-13', 'Bogor', NULL, '1991-08-07 13:12:49', '2015-11-02 13:35:51'),
(168, 'Icha Suci Mandasari', 'fkuswoyo@gmail.com', NULL, '$2y$10$.y84CYzWJPABjZaSRa1nweMCgLpNyD8Y1k4CUL5eLpXUIF5W76FMG', 'female', '2007-11-01', 'Bogor', NULL, '1980-10-30 20:01:16', '1987-11-28 14:00:19'),
(169, 'Maimunah Yolanda', 'gada97@gmail.com', NULL, '$2y$10$WMdfQoJtqB2YO55F4WAa/u30/VVdLCsOAnVDVgJWEyoveYRF5z2Bu', 'female', '1988-06-26', 'Bogor', NULL, '2006-05-23 11:04:39', '1995-06-20 12:27:35'),
(170, 'Vanya Purwanti', 'saptono.daryani@gmail.com', NULL, '$2y$10$o8k6jLC1ZJz7i0Ea.KSDruCCrkrGB70HNQRmSNucuNw89KC5ZoJOq', 'female', '1977-04-22', 'Bogor', NULL, '1988-11-14 22:06:25', '2014-04-16 01:29:55'),
(171, 'Nabila Safitri', 'cengkal61@gmail.com', NULL, '$2y$10$fqQ3vdaBbv.oe21mkU0wpu6tyQkoQF8yw3HPBd3yEbhClz.9VXv9C', 'female', '1980-01-03', 'Bogor', NULL, '1984-01-01 09:41:43', '1997-08-18 10:46:52'),
(172, 'Winda Lestari', 'sabrina52@gmail.com', NULL, '$2y$10$.PPQsUX2DFJ2ADp.u/Oaz.Ji7xReqAdWlb4vEUqFxpVnwZhzerZzu', 'female', '1982-04-22', 'Bogor', NULL, '2006-05-22 08:37:43', '1994-12-03 15:27:19'),
(173, 'Kayla Andriani', 'kani36@gmail.com', NULL, '$2y$10$OQ6ZMfovDGghozuiSANKD.yok0QZQ9RKj3SdwX1Pl1Ixqdc0KiXC.', 'female', '1989-01-28', 'Bogor', NULL, '1979-02-07 16:05:04', '2011-03-25 15:27:03'),
(174, 'Yuliana Usada', 'ratna24@gmail.com', NULL, '$2y$10$3wOS6WTXvZ0rU.AebVtJa.0TngOpS5OY.nqr1RglPLDvfhMZHoNYW', 'female', '2003-05-23', 'Bogor', NULL, '1978-01-06 09:58:51', '1999-08-03 16:03:35'),
(175, 'Putri Lala Lailasari', 'wacana.chelsea@gmail.com', NULL, '$2y$10$Zni37I5jVLDbWsDqNUYPr.CV2tCguMP1snVHx1/2kzaVOkBilvXCy', 'female', '1989-03-26', 'Bogor', NULL, '1973-07-29 20:27:11', '1977-07-30 12:05:22'),
(176, 'Rahmi Yuniar', 'samosir.padmi@gmail.com', NULL, '$2y$10$tThAFSCu0NkANciV7q3YxOjYrmaZcDE5xaVBIzvaCJBvBdVH8AS6W', 'female', '1996-05-18', 'Bogor', NULL, '1983-01-23 19:15:32', '2007-12-22 05:19:27'),
(177, 'Gabriella Uyainah', 'hastuti.radit@gmail.com', NULL, '$2y$10$tvsG8qFM/Cm2PeWtLnS0AOx5jc59GLpt90GU5h1ZGwUI7N5veKOU.', 'female', '1986-05-03', 'Bogor', NULL, '1988-12-04 00:46:02', '1999-09-30 12:31:24'),
(178, 'Mutia Hassanah', 'lsuartini@gmail.com', NULL, '$2y$10$dOtTJG9dt44ujBMzd.w.1el8BDpDqmaakPahBuh33PksyOg4MtVra', 'female', '2021-06-23', 'Bogor', NULL, '2007-07-17 23:27:54', '1977-06-07 10:46:04'),
(179, 'Ayu Winarsih', 'luwes43@gmail.com', NULL, '$2y$10$a5iS80Ck0Fn26002q88bVe4tG8ShNoHY7i7fH9JKU0nkFq0CKzQh.', 'female', '1978-09-13', 'Bogor', NULL, '2001-07-02 13:15:08', '1970-01-28 11:38:32'),
(180, 'Ina Maimunah Hasanah', 'suartini.yance@gmail.com', NULL, '$2y$10$ZQ2H45iyDjClWSOI/Kax.eJgthB/o6WOl5oiYW5xpW0BVYjm8OT1i', 'female', '1989-05-09', 'Bogor', NULL, '2004-05-13 08:51:56', '1994-06-27 08:06:50'),
(181, 'Gina Hasna Wijayanti', 'halimah.elvin@gmail.com', NULL, '$2y$10$Fe5ZrdlkeOCoWAjvJ3H3WeysL3B4zpN0XKm2jhKP1Om645FloRVW6', 'female', '2013-03-17', 'Bogor', NULL, '1990-07-20 07:42:25', '1981-12-26 03:28:59'),
(182, 'Zahra Halimah', 'grajata@gmail.com', NULL, '$2y$10$7S.uXUBccSXulhIDrN/sZecVPUlk1q0x4bb4ll9uBxitRtjZ.4esq', 'female', '1974-05-27', 'Bogor', NULL, '2011-03-23 06:54:25', '1976-08-25 17:47:30'),
(183, 'Malika Kusmawati', 'wwijayanti@gmail.com', NULL, '$2y$10$Os6QWYIBN5mwy4g5hiFpsOv0Op9JoztjJGlt6/yTL3t.4v4jRTDGi', 'female', '2021-12-22', 'Bogor', NULL, '1976-05-28 11:44:38', '1972-11-03 10:35:21'),
(184, 'Kasiyah Nuraini', 'kurnia.pratiwi@gmail.com', NULL, '$2y$10$Abdjc24G8grwJTUrFwZZxu5D3my4gtUe4mVkEbB53hAm9EzBzOh62', 'female', '2006-04-02', 'Bogor', NULL, '2004-06-12 22:38:43', '1998-05-11 01:01:22'),
(185, 'Novi Betania Laksita S.Ked', 'umi.mandala@gmail.com', NULL, '$2y$10$Y92mavRJSeuwW5dQ4umw.esAfq2oBVoXJAo5.3AY7U4i9hKh8EDRW', 'female', '1987-11-10', 'Bogor', NULL, '1994-05-22 18:20:57', '1983-02-06 12:34:43'),
(186, 'Siska Novitasari', 'uyainah.rafid@gmail.com', NULL, '$2y$10$QyADw1vDDikZ7JatwnikwuSGrfOEeIWBsktNxv/MfN70vw8HMch3C', 'female', '1980-03-30', 'Bogor', NULL, '1993-02-08 07:00:18', '2003-07-29 22:14:59'),
(187, 'Ida Wijayanti', 'keisha11@gmail.com', NULL, '$2y$10$UMEu5Jpgc5YQ5t2PBgCMlubARt6FR4j1YGD3n7PgrZWRP9A9vLBKO', 'female', '1980-12-18', 'Bogor', NULL, '2000-10-14 08:44:15', '1983-05-20 19:54:27'),
(188, 'Nova Usamah S.I.Kom', 'wibowo.purwa@gmail.com', NULL, '$2y$10$hGeGdICoSPgJ4619dDm8juevZlZM.J3Hmx4gFL6AqvrO4udPYeNZ6', 'female', '1995-09-20', 'Bogor', NULL, '1978-06-01 04:34:25', '1989-05-17 10:14:39'),
(189, 'Puti Hasanah M.M.', 'hendri43@gmail.com', NULL, '$2y$10$UPHCkOSa4hp6BwEgablVU.Wwf8AwXWMgYGabsaMbDhemsb6rh/spu', 'female', '2016-12-29', 'Bogor', NULL, '1970-03-31 07:57:07', '1999-09-22 22:39:23'),
(190, 'Vicky Pudjiastuti M.Ak', 'marsito73@gmail.com', NULL, '$2y$10$GLhdD7TakvetAi3HbXMCyuAQbZEsais.GFaQDhwRDjXPe0YIjfH9S', 'female', '1996-03-21', 'Bogor', NULL, '1988-02-14 22:22:19', '1981-04-02 11:41:29'),
(191, 'Gilda Agustina', 'salwa69@gmail.com', NULL, '$2y$10$7jVMDwaOuICj06K3Gr4SPO1kw/RUCk6teS6.KMrRyK6LEov9fsmgG', 'female', '2020-05-17', 'Bogor', NULL, '2013-09-10 03:12:42', '1998-06-06 05:29:35'),
(192, 'Ana Melani', 'gamani77@gmail.com', NULL, '$2y$10$HzW1sd/tpnuEzLlto.TEuerL6jMklDMiBighkoP.altgP.Mgjuw3S', 'female', '1975-06-04', 'Bogor', NULL, '1980-11-05 21:56:13', '2006-09-30 14:20:31'),
(193, 'Dina Ani Hastuti', 'prabawa.aryani@gmail.com', NULL, '$2y$10$k2U2Fs1GJj1Qc4rrdQ3Jw.xUOm5pNovuEKpvBUD.oVmXFKWvTruuq', 'female', '2012-07-20', 'Bogor', NULL, '2015-12-02 13:59:40', '1981-05-21 18:20:14'),
(194, 'Hamima Purwanti', 'saputra.septi@gmail.com', NULL, '$2y$10$nwlEnq62.XX3W13QtjqYF.GLp.n29RlYkP8IWoHjiXXc83rx7rvIa', 'female', '2000-05-07', 'Bogor', NULL, '2020-09-28 23:44:38', '1991-11-03 13:50:46'),
(195, 'Carla Gabriella Puspasari', 'darijan.novitasari@gmail.com', NULL, '$2y$10$1V9e08c/LuP.bvQ4i5/w8epWRP4BGycT1sIMeJAmKdpPsaolLBpIm', 'female', '1982-06-04', 'Bogor', NULL, '1976-12-21 10:12:50', '1976-05-19 20:00:04'),
(196, 'Ratih Tania Lailasari', 'xastuti@gmail.com', NULL, '$2y$10$k5ho3WQY0AvuxP1Svd5QjuNag8TAtupC1YkAjAmo59wckZIJ94h1m', 'female', '1971-09-07', 'Bogor', NULL, '1980-02-21 00:44:11', '2020-06-29 06:50:58'),
(197, 'Rachel Nadine Pratiwi', 'utama.betania@gmail.com', NULL, '$2y$10$Sa/GpV2T57pspIaXcrNyOOWA0biT9h557s35a38GkBUFWFDDVxC3C', 'female', '2001-11-18', 'Bogor', NULL, '1981-04-13 13:09:53', '1993-05-21 14:05:06'),
(198, 'Michelle Maryati S.Sos', 'sirait.irfan@gmail.com', NULL, '$2y$10$2Cct6rmExDMD4F3lBrA.WOxaUtVpC7raWye3g2EPk0vo2EsWyvsAe', 'female', '2019-09-13', 'Bogor', NULL, '1979-04-23 01:16:22', '1982-06-25 01:36:27'),
(199, 'Citra Novitasari S.Pt', 'gpuspita@gmail.com', NULL, '$2y$10$pDNidm7CUH4sF6XWICDDYOC/MOacjVFB0xcubXD6TfeJfFrjbq3Eq', 'female', '2021-07-27', 'Bogor', NULL, '2017-08-18 07:44:59', '2001-09-05 11:18:00'),
(200, 'Irma Pudjiastuti M.Pd', 'mzulaika@gmail.com', NULL, '$2y$10$4KW6Qzb3WPdQsLpq5aXpXeuIHQW4rVf4yslISjS9xPYgI8D2H3ly2', 'female', '1993-03-21', 'Bogor', NULL, '1993-12-08 04:55:53', '2011-05-27 07:27:28'),
(201, 'Kasiyah Nasyidah', 'emarbun@gmail.com', NULL, '$2y$10$V2toNbVeAzHU/y/4AGLWz.BsxyjdY1Bz4IDpG4sA8FiBbYKoqFrrW', 'female', '2007-05-21', 'Bogor', NULL, '2009-08-21 02:38:05', '2012-10-04 03:21:43'),
(202, 'Mutia Ratih Maryati', 'nmahendra@gmail.com', NULL, '$2y$10$L4KJNa6wBZns/WwzOnXlQOUjX3T3vJRauqtiQLWKdIL9lZ0.WoUc6', 'female', '1978-04-06', 'Bogor', NULL, '2002-03-15 13:22:35', '2021-11-23 00:47:37'),
(203, 'Raina Zulaikha Lestari', 'hsihombing@gmail.com', NULL, '$2y$10$y50vjrGJM7iqh7u6LEIQi.zHsiymfVayKWkqewmpUTZznkYKYCVMa', 'female', '1996-06-03', 'Bogor', NULL, '1981-02-25 11:13:35', '1990-12-14 02:32:50'),
(204, 'Sarah Maryati M.Pd', 'asirwada.ardianto@gmail.com', NULL, '$2y$10$mTWCkdX0I1t1GMs/ABl8OOjA8tkfYVm5Mrv0ogimT9SZL1/i6y/vy', 'female', '1993-11-24', 'Bogor', NULL, '2003-05-15 13:44:56', '1986-11-26 11:53:47'),
(205, 'Halima Pratiwi', 'nsafitri@gmail.com', NULL, '$2y$10$.K3aeoGMVbaZIQuCpr.m4eEHnfWaxRStLdtA.E3vZf.y0E.lEqIwO', 'female', '1985-11-17', 'Bogor', NULL, '1990-03-21 05:25:07', '1978-06-26 19:34:39'),
(206, 'Aisyah Permata S.T.', 'wani06@gmail.com', NULL, '$2y$10$YcsElNnsooX6hmuGHsyFTuZeQsq9j4pyv8aR0kwyvKKopDsenM9UO', 'female', '1994-03-16', 'Bogor', NULL, '1985-05-31 21:36:28', '2006-07-31 05:13:42'),
(207, 'Jelita Dinda Kusmawati', 'edward54@gmail.com', NULL, '$2y$10$KYCpmhPkK75eErkhWu6fN.bF.vL0Ml9ZlWIi./LAswpa9d8G.c/ZK', 'female', '2022-10-09', 'Bogor', NULL, '1987-12-31 15:19:23', '2014-04-05 20:42:09'),
(208, 'Endah Oktaviani S.Psi', 'vera81@gmail.com', NULL, '$2y$10$tzDLWI1TgFQnr3QdMOgWD.4nqmwJiijaTUFXmdWhrRmdqFaEvGPja', 'female', '2010-09-30', 'Bogor', NULL, '1977-07-31 23:48:59', '2003-08-10 17:42:01'),
(209, 'Farah Kuswandari', 'jane.napitupulu@gmail.com', NULL, '$2y$10$GAZoFjTte1bhJ0iFkJeOf.G0RWLVa3YeO6xsWu6BRRFKwyVHe1Vuu', 'female', '2004-12-31', 'Bogor', NULL, '1985-03-27 19:47:29', '2013-08-26 11:01:11'),
(210, 'Rina Nuraini', 'karma15@gmail.com', NULL, '$2y$10$Eo00WuItJHSl3w8y8U5L9upSxNKy/Do3VQQx06zF.WDr8XnS/EhXq', 'female', '2017-01-19', 'Bogor', NULL, '1971-12-17 17:58:59', '1998-10-28 19:45:05'),
(211, 'Puji Andriani S.Psi', 'jaya.rajasa@gmail.com', NULL, '$2y$10$elFRJtQy8Tp2OyXDKluYoux.JCEUSVOMTA.trpiw5TaCd8wK9dNEC', 'female', '2014-08-28', 'Bogor', NULL, '1997-09-07 02:30:28', '1987-06-24 00:09:18'),
(212, 'Puspa Usada', 'pardi.nurdiyanti@gmail.com', NULL, '$2y$10$Af/IcJCsiFgZbjfaR1lwEuIRMYrFp1gk75DGnev4RdhcPGHIPS4F.', 'female', '1973-04-21', 'Bogor', NULL, '1989-03-20 00:02:51', '1995-03-22 04:03:24'),
(213, 'Puti Eli Maryati', 'asmadi98@gmail.com', NULL, '$2y$10$CNiqTs5u.nUN//NwgRoVzOzvse2cIYZxxQvEuHCPy7xSgBj7AGyni', 'female', '1988-09-23', 'Bogor', NULL, '2022-04-01 00:49:53', '1983-02-14 23:09:09'),
(214, 'Queen Susanti', 'aisyah.sinaga@gmail.com', NULL, '$2y$10$3bc5py2ht4V6qbrpzWO8c.yP1cQQB.Id3GEO5EmcB5DXiv0CUEVAC', 'female', '1990-09-19', 'Bogor', NULL, '1996-01-12 13:31:49', '1971-10-17 23:51:22'),
(215, 'Agnes Pratiwi S.Ked', 'lpradipta@gmail.com', NULL, '$2y$10$5Q9Aw90JMff7De1wSRk7NelMQB1JGr28NFJAS5xrMsCU6PBmyarju', 'female', '2007-05-21', 'Bogor', NULL, '2015-10-11 23:25:30', '2000-12-21 00:42:31'),
(216, 'Kezia Natalia Kuswandari S.Ked', 'pradana.queen@gmail.com', NULL, '$2y$10$KQbovtf5eIf/fJuVKAKaRefXy5B771Y3fIpW9MCHhkdNQ3JBkMXb.', 'female', '2021-06-26', 'Bogor', NULL, '2019-02-18 00:05:47', '2003-11-30 02:57:18'),
(217, 'Hasna Maida Yuliarti M.Ak', 'siska.rahmawati@gmail.com', NULL, '$2y$10$QMOmHn9i9CWUfS5Twd2m/OLI6bfTXK3nl8W3U73LvTQM5KSQ8F3du', 'female', '2005-03-20', 'Bogor', NULL, '2006-08-18 14:07:46', '2003-06-24 14:19:12'),
(218, 'Vivi Julia Handayani M.Kom.', 'manah81@gmail.com', NULL, '$2y$10$J/6.rDMUiQEAGgTZEi.9eugXY5VBKsMyJh67uqjJqyziCrgwkfvNO', 'female', '2006-12-19', 'Bogor', NULL, '2011-09-30 02:51:03', '2007-07-12 17:28:40'),
(219, 'Ratih Tania Hasanah S.Psi', 'isihombing@gmail.com', NULL, '$2y$10$cp35DaQQ8s4D7yvLt8ZgfenDIf8Evbp8FviAI//gRCk7FLaQtGXv6', 'female', '1998-12-19', 'Bogor', NULL, '1994-06-23 09:31:39', '2000-02-02 20:37:23'),
(220, 'Hesti Rahmawati', 'maheswara.eka@gmail.com', NULL, '$2y$10$SVPRWTfpSUwdmy07GUc0quaGNdllarDDLvkk5lNDX79Z6IBlfNWTK', 'female', '2019-05-20', 'Bogor', NULL, '2001-08-15 07:49:41', '1989-12-15 04:42:07'),
(221, 'Faizah Zulaika M.TI.', 'himawan46@gmail.com', NULL, '$2y$10$MMJEihSvoO/ji7YrJwLXTuwv2kBWBRK3gBGHfKBf1Nl6.hk0NQTUW', 'female', '2006-01-10', 'Bogor', NULL, '2017-09-11 03:36:05', '1987-11-29 12:57:19'),
(222, 'Kania Carla Hariyah', 'wahyudin.liman@gmail.com', NULL, '$2y$10$Rq.G2ylKrsMP6MXch8i2kerTqR8thp/83GFZ.7zOzYPMev4VhHc8C', 'female', '1973-02-12', 'Bogor', NULL, '2004-05-11 09:04:38', '1996-10-09 00:04:47'),
(223, 'Rahmi Permata', 'titin01@gmail.com', NULL, '$2y$10$pE03sA8hokwH7QiRkWr8MeQku7Zpy5VJ0z/5N3alB8NbUVboLo9U6', 'female', '1999-06-17', 'Bogor', NULL, '2004-06-20 21:26:26', '2008-04-27 18:36:26'),
(224, 'Sakura Rahayu', 'owahyudin@gmail.com', NULL, '$2y$10$T8wndi0wQSm1bnAh1OdT9eDXiHG1zmKsog3CGPRslvkZFUBCETeB.', 'female', '2004-10-26', 'Bogor', NULL, '1997-10-11 08:42:41', '1975-05-24 22:34:29'),
(225, 'Elisa Riyanti', 'candra.budiman@gmail.com', NULL, '$2y$10$xYP6i.j.u8r7djQyez2rIeN6lrlP/edgq1doFvT/e7Zd9H7yEchZi', 'female', '1989-09-14', 'Bogor', NULL, '2006-11-28 04:32:28', '2005-11-11 16:55:41'),
(226, 'Usyi Mutia Nurdiyanti M.Ak', 'kezia.kuswandari@gmail.com', NULL, '$2y$10$1shRFhtL6y05t.MuhKZGleRDdP2CUjhy8H12Ws1CnqzQbMDQmUnMm', 'female', '1970-08-30', 'Bogor', NULL, '1981-03-08 16:26:06', '1973-02-02 17:37:56'),
(227, 'Rahayu Sarah Usada', 'kalim12@gmail.com', NULL, '$2y$10$EeqLIElFc1e61mI4EuG3zuIpw7gLc3HYa/dt6Ft/wjmZyhv0Q3nYy', 'female', '2002-11-04', 'Bogor', NULL, '1972-04-26 01:11:55', '2011-09-23 05:43:27'),
(228, 'Carla Rahimah', 'wahyu.purnawati@gmail.com', NULL, '$2y$10$GEGamAG.9FA2yVe0usj8t.wwx0XNJ2pm8w.2yqmiTDQbcWwWBh.6C', 'female', '1978-06-18', 'Bogor', NULL, '2000-03-20 16:46:12', '1986-04-03 12:23:45'),
(229, 'Talia Hastuti', 'galur19@gmail.com', NULL, '$2y$10$DmVGNz90zD0LpCSxW6/ccurQCx0zu8QR4IRY5qo.GCqz.g1Zb3kA.', 'female', '2004-02-10', 'Bogor', NULL, '2002-08-01 00:23:59', '1981-03-16 06:28:55'),
(230, 'Gabriella Uyainah S.Pt', 'hamima92@gmail.com', NULL, '$2y$10$s5LJoFxUMs/7rHicoQ03gOrgiVK4g8kwE8VBt2HuZmGXJOOScLeA2', 'female', '2004-02-04', 'Bogor', NULL, '1984-09-01 08:30:22', '1986-01-29 08:39:33'),
(231, 'Novi Namaga', 'queen02@gmail.com', NULL, '$2y$10$.HShwt0dKt5KFU/6uDm4uOpluETv.sWVJqS9mRCQ.JerJreZBdWfS', 'female', '1998-11-05', 'Bogor', NULL, '2005-06-24 20:08:03', '1993-10-19 19:31:15'),
(232, 'Zulaikha Handayani', 'zandriani@gmail.com', NULL, '$2y$10$nWwb98FudnWnd5SviIvVA.bRmnWDrepXuxB3sTpjKQPGTcuANZ0kO', 'female', '2009-10-17', 'Bogor', NULL, '1990-07-26 11:41:16', '2013-10-11 16:44:28'),
(233, 'Dewi Ana Hastuti', 'kuswandari.lintang@gmail.com', NULL, '$2y$10$HvNe.cHtb2TTVFRQrO655OZEGcYh4GIFc3dnh3kdaq/9ae98JVmq2', 'female', '2005-07-21', 'Bogor', NULL, '1971-04-26 14:19:07', '2022-04-21 03:49:11'),
(234, 'Gina Iriana Laksmiwati', 'saiful85@gmail.com', NULL, '$2y$10$EXE6U9YLNnWZXiiO13Sw2.TuGBh5crTjXVd/YV/jREqZnSJBJlKxq', 'female', '2022-05-27', 'Bogor', NULL, '1984-09-22 03:02:02', '2007-11-08 08:35:58'),
(235, 'Qori Ratna Namaga S.Gz', 'asimbolon@gmail.com', NULL, '$2y$10$f7Uhx9NP5x4OrKKut4TMheJ3YrMRb3ckpo0sWrpgLYJ2v8X1mmBzu', 'female', '1987-10-23', 'Bogor', NULL, '2015-06-09 22:57:37', '1997-10-13 18:18:18'),
(236, 'Putri Astuti', 'lailasari.titin@gmail.com', NULL, '$2y$10$m5rEwJ7c1P7PQpLDdcqgjO0BwmgNxrU/.WzJ.VUOPUyW8P30wDGDu', 'female', '1982-08-11', 'Bogor', NULL, '2022-03-02 20:30:57', '1974-04-28 08:51:52'),
(237, 'Sabrina Haryanti', 'syolanda@gmail.com', NULL, '$2y$10$sNNIvqbw4NQLM3IEUEylB.gmEGMmvOWrqyWkmxem34yBmQQ6fuag2', 'female', '1980-01-25', 'Bogor', NULL, '1991-02-08 00:17:06', '1993-08-13 21:56:39'),
(238, 'Kayla Jelita Fujiati S.Gz', 'enugroho@gmail.com', NULL, '$2y$10$QKJmRERigew1.GtBGaq5fuVMEaME3Fz0IDV4/CYajKhqYO3.5dXby', 'female', '2003-04-09', 'Bogor', NULL, '1974-01-19 06:53:34', '1972-03-04 19:51:49'),
(239, 'Rahmi Belinda Anggraini S.Ked', 'argono.iswahyudi@gmail.com', NULL, '$2y$10$rBY1iVzeWHyELjKEzPVDw.3GSHIYfraAHDOYfluDdp.TX9lsKbI2C', 'female', '2008-11-20', 'Bogor', NULL, '1981-06-04 21:46:37', '1972-02-10 16:40:04'),
(240, 'Hilda Wani Suartini S.H.', 'isudiati@gmail.com', NULL, '$2y$10$rhfihw8P/3bWzZ9O6iknf.2hmijc9Z38U3VgRfV3FPd8v3kcgBdqG', 'female', '1975-11-18', 'Bogor', NULL, '2012-03-26 21:38:24', '2012-09-16 09:14:59'),
(241, 'Syahrini Mayasari M.Ak', 'maryanto.maryadi@gmail.com', NULL, '$2y$10$9icTMx1cCEcZ9ahE.17IHuESZlUAbCZQ56vBXX6MCRQlfYnVu4ggu', 'female', '2011-02-13', 'Bogor', NULL, '1971-05-08 05:19:37', '2022-06-10 00:35:44');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `gender`, `birth_date`, `birth_place`, `remember_token`, `created_at`, `updated_at`) VALUES
(242, 'Zelda Anggraini', 'halim.okta@gmail.com', NULL, '$2y$10$vczSeSm01IMxbco3CHPXmOnBhhTX70VazvK8fDjMTLuXozsB8oOS6', 'female', '2019-08-11', 'Bogor', NULL, '1978-08-01 12:26:23', '1982-12-30 16:12:29'),
(243, 'Kezia Suryatmi', 'ghaliyati12@gmail.com', NULL, '$2y$10$LWGvct9gtXxLiplJzZE0t.e.3ozqLfHXjsEemUMQPRFnConrYE5Hq', 'female', '2012-04-01', 'Bogor', NULL, '1983-05-15 21:37:23', '2010-02-16 10:45:12'),
(244, 'Almira Hasanah', 'padmi.januar@gmail.com', NULL, '$2y$10$KdmFu8rXGdPtNCgrDsvFgO5XYTaJQdiNBwXlbTVuNPAca8.DC4iBW', 'female', '2015-01-18', 'Bogor', NULL, '1992-04-22 06:53:54', '1994-09-22 22:47:43'),
(245, 'Dian Wulandari', 'tprasetyo@gmail.com', NULL, '$2y$10$u4slb8tRrqdlXk8DvKaiheKEW20j6zDccP4HHB2LWGr1IwfbKYDIq', 'female', '1973-02-19', 'Bogor', NULL, '1996-09-24 17:27:17', '1985-03-10 17:22:59'),
(246, 'Jamalia Paulin Yulianti', 'upuspasari@gmail.com', NULL, '$2y$10$/faZaJjxuw3Or0Kaq.RDO.WzsAW9wfvmaNesU5M9nbWUjgmU1p1ui', 'female', '1971-12-04', 'Bogor', NULL, '2018-09-06 21:30:19', '2018-03-11 12:33:59'),
(247, 'Rahmi Prastuti S.Pt', 'dabukke.ayu@gmail.com', NULL, '$2y$10$hw7ydVdgn9kaarINDyz5KO619tVdflBvbha9VQPLOHxl2dkUPEfr.', 'female', '2012-10-22', 'Bogor', NULL, '1985-05-31 11:26:59', '1972-02-04 14:53:38'),
(248, 'Zahra Ulya Melani', 'oskar.utami@gmail.com', NULL, '$2y$10$M8JVDBK8vWbzBg6vpzBxTOAFyDEQ22aYajEv46Z20P0jitHbe6x/W', 'female', '1980-12-02', 'Bogor', NULL, '2001-10-28 17:34:08', '2000-07-02 16:36:20'),
(249, 'Clara Raisa Haryanti', 'salsabila38@gmail.com', NULL, '$2y$10$248Uk/withTE5mzx2.6fbOCDjiSzxZAmSFaDhFw54e6oMpotx0eq2', 'female', '2001-12-29', 'Bogor', NULL, '1970-07-10 13:44:12', '1978-10-15 06:19:25'),
(250, 'Vanesa Zelda Utami M.Pd', 'waluyo.ani@gmail.com', NULL, '$2y$10$pRA7nBJRhGMR74MQQZqTOuZu.Q2CrXbu/3/p6Z/tPLl24aSmVPEYm', 'female', '2016-08-24', 'Bogor', NULL, '1992-02-01 15:09:52', '1989-05-12 22:44:32'),
(251, 'Tiara Rahayu', 'lalita.januar@gmail.com', NULL, '$2y$10$teZtxZUawV02RSrv42VBp.sA1cL8jGUSs6yoyTbB/jnSrQSDt.XAy', 'female', '2017-02-15', 'Bogor', NULL, '1977-01-03 17:42:29', '2009-10-08 08:10:39'),
(252, 'Humaira Permata', 'kezia38@gmail.com', NULL, '$2y$10$sy.sX30dsyusC0Cj6u4Hgesp1RzPAcRr4nn.1EfTyQg.UvaT/56je', 'female', '1982-08-13', 'Bogor', NULL, '1985-09-16 03:56:45', '2009-04-27 12:12:11'),
(253, 'Hana Lidya Prastuti', 'mangunsong.mutia@gmail.com', NULL, '$2y$10$awtjSUliIq8.Z5QMrveBJeGJhBW1ked2v5Eaf8RTYlb8qwPhFR1Da', 'female', '1988-12-19', 'Bogor', NULL, '1970-04-19 01:34:18', '1982-04-29 09:18:54'),
(254, 'Citra Nasyidah', 'rahayu.hadi@gmail.com', NULL, '$2y$10$DMwrWZYi6BzdxH4XYNQnX.bCWYV4.S1OoSHNFn8VwN9QIsNCPkxYK', 'female', '1998-07-30', 'Bogor', NULL, '2005-05-17 13:25:12', '1972-07-13 21:35:09'),
(255, 'Umi Haryanti', 'owaskita@gmail.com', NULL, '$2y$10$yYH5ZuNoDDK./BREItpnreK.qAEJfwWQs484vxjIPJKgDDMLySsT2', 'female', '1989-03-23', 'Bogor', NULL, '2011-04-20 06:07:00', '1995-03-05 02:29:12'),
(256, 'Zamira Yuniar', 'bella.laksita@gmail.com', NULL, '$2y$10$KgfUcsL0EuKDCr3T8pbJ6estxCt6uycmrG26FDjCZRKa0AgiFu.UW', 'female', '1987-07-17', 'Bogor', NULL, '1986-07-27 20:46:50', '1976-08-09 22:37:27'),
(257, 'Jamalia Wastuti', 'kawaya.fujiati@gmail.com', NULL, '$2y$10$9epAzfvRMH0gVOpwDmeOzuDSLlVfZ/kq609eO4LOiaSiMVPBqhvqa', 'female', '1998-08-25', 'Bogor', NULL, '1988-03-07 12:31:01', '2000-12-21 09:24:16'),
(258, 'Suci Wulan Hassanah S.E.', 'karen.purwanti@gmail.com', NULL, '$2y$10$4EssFhN3w0ClHTV50PLP..trYkB1tiwDrovQqEh7tk9vLPOJZwX9G', 'female', '1983-08-30', 'Bogor', NULL, '1997-01-08 21:37:54', '2004-10-20 21:05:54'),
(259, 'Kiandra Lestari', 'rosman.prabowo@gmail.com', NULL, '$2y$10$zFiWrCo4H70vqeFZsxBoNOBLChaqZAe6jKPRPlqU5b3tKWMt/AwXe', 'female', '2019-09-02', 'Bogor', NULL, '2006-11-12 13:43:13', '1975-10-29 20:26:46'),
(260, 'Dina Amalia Aryani', 'warsa12@gmail.com', NULL, '$2y$10$XQwmtMloDaVU.BwZoAXJrOZ2fTzv8f8zpE4SehDkYImT5PWVu28qG', 'female', '2021-05-23', 'Bogor', NULL, '1991-12-22 13:45:44', '2014-02-04 07:56:10'),
(261, 'Cinthia Wulandari', 'cici.usamah@gmail.com', NULL, '$2y$10$AXtH1P.YTYyF1NRhYiV6E.bMTITe9w/hLH/5SvQUfAD3egZFSG2HG', 'female', '2007-03-03', 'Bogor', NULL, '2018-05-10 09:40:33', '1985-05-19 02:27:05'),
(262, 'Tami Palastri', 'zalindra81@gmail.com', NULL, '$2y$10$JvufwUKEcm7Kx/DOBYLa3.aDX94kNv0O5powDXIc8JslxYpJwHSTi', 'female', '1976-04-14', 'Bogor', NULL, '2016-09-20 15:59:44', '1986-11-24 04:11:28'),
(263, 'Gabriella Laksita', 'jane46@gmail.com', NULL, '$2y$10$qGaTWjSGRK/OmQ.WuvVYVeogIcHY8uKKn6OqcG5i7sk5sjBjsFruu', 'female', '1974-02-26', 'Bogor', NULL, '1980-11-23 09:41:17', '2001-11-10 08:12:44'),
(264, 'Zalindra Pertiwi', 'laksita.taswir@gmail.com', NULL, '$2y$10$7IK9X8fwBMa7fb/9hwlSgeEEE.wN30Pf1AVF2saLPl55pBoraJN6.', 'female', '1974-09-07', 'Bogor', NULL, '1991-08-14 02:37:25', '1992-07-29 08:24:06'),
(265, 'Mutia Lestari', 'rafi42@gmail.com', NULL, '$2y$10$4rA1MUoGtf4a2nbfuGkPTeOMp7GLTO8nP8IIJEM9rkbwAzAfLxBtu', 'female', '1984-09-29', 'Bogor', NULL, '2019-07-10 11:26:48', '2017-12-06 12:50:56'),
(266, 'Ina Puspasari', 'rahayu.mardhiyah@gmail.com', NULL, '$2y$10$MyyB/xYbc9l.mZi9E2PequUFbPMDoq2.EJJCFWIRti9CTqXBbYR2S', 'female', '2020-12-08', 'Bogor', NULL, '1983-06-02 21:38:01', '1980-11-22 12:55:11'),
(267, 'Hafshah Namaga S.Kom', 'yuni.hutagalung@gmail.com', NULL, '$2y$10$FYZjK.yskVOfjIGwJqYvzea1tHCdKDarpIbPmVLr.nUcDpwJn.4Vm', 'female', '2019-02-01', 'Bogor', NULL, '1978-05-11 07:37:13', '2011-03-11 02:50:50'),
(268, 'Silvia Suartini S.Pd', 'artanto36@gmail.com', NULL, '$2y$10$1gfRk/p/AkeTqj4HltF2vOxWjKei67EGzOeEhKociNBxqtoZIhG2e', 'female', '1985-08-07', 'Bogor', NULL, '2014-10-08 23:03:18', '2012-10-22 22:36:28'),
(269, 'Wirda Pudjiastuti S.IP', 'kwinarsih@gmail.com', NULL, '$2y$10$CAl9/Ce5e63wFs9UO48g3e9aKgeQEwUIF1Wj0zcbNnrBL0nL3YIk.', 'female', '1987-07-16', 'Bogor', NULL, '1973-12-07 12:07:07', '2005-02-11 14:07:38'),
(270, 'Unjani Putri Handayani M.Pd', 'rusman86@gmail.com', NULL, '$2y$10$zQ.GaP4gjTackNHfh/tzs.VT5yfm40pWZSh705.d7UIZb99Ib6lBG', 'female', '2015-01-13', 'Bogor', NULL, '2006-01-17 12:44:04', '1987-02-25 19:14:32'),
(271, 'Umi Laksmiwati', 'argono.kuswoyo@gmail.com', NULL, '$2y$10$cYbcRvG0O5q/YygW.OgAYu4oRYn9vI1es9rAsJf9O0CjyqEJURlru', 'female', '2022-11-16', 'Bogor', NULL, '1971-04-01 14:55:41', '1971-03-30 10:40:40'),
(272, 'Diana Widiastuti S.I.Kom', 'lmayasari@gmail.com', NULL, '$2y$10$jH63Eym6YPYz7W2jgiMrROawFpkB/vxV28.gMKsYSGq7MXOrKyAnK', 'female', '2015-11-02', 'Bogor', NULL, '1989-09-26 09:41:21', '1983-10-25 12:29:12'),
(273, 'Kamila Hassanah S.E.', 'betania07@gmail.com', NULL, '$2y$10$d4kT14vPJcCmo9Ac.nMqJOmVfmqMmsbFSfO/dYHo2Q78.cYyXCY1S', 'female', '2001-03-27', 'Bogor', NULL, '2013-10-04 02:08:12', '2009-08-21 21:29:42'),
(274, 'Zalindra Kasiyah Laksmiwati', 'irwan.hidayat@gmail.com', NULL, '$2y$10$gB3A3LfdbAK3RwlcKNM5/.r0oKS5LSBgUp1Ga6IocmLMRFMe6nyaK', 'female', '2006-04-25', 'Bogor', NULL, '2008-06-14 23:55:35', '2014-04-24 19:21:21'),
(275, 'Kezia Mandasari S.Psi', 'wpradipta@gmail.com', NULL, '$2y$10$/19ZZEFeAJZ0jm/1vDNRE.pxRpy/hanzQ99SPUe5DWPUApuOXKLMO', 'female', '2017-04-03', 'Bogor', NULL, '1998-07-08 16:43:29', '2004-10-30 09:32:54'),
(276, 'Faizah Raina Mandasari M.M.', 'jelita12@gmail.com', NULL, '$2y$10$1/qSwznusfMWf2P9pjEQYOqk7TbjIMV6CwU6r3dy/vCZGlaP6ftCe', 'female', '1997-12-13', 'Bogor', NULL, '1973-10-26 10:48:07', '2003-05-13 05:38:31'),
(277, 'Julia Hassanah', 'anggriawan.karsana@gmail.com', NULL, '$2y$10$Bd5E/6jOEn95qvc76S7rLud8y8TG6.hoKyTWgY0DS3S5.RUEERUXK', 'female', '1970-07-11', 'Bogor', NULL, '2018-06-09 23:35:29', '1979-01-18 07:41:33'),
(278, 'Zalindra Andriani', 'wulandari.endra@gmail.com', NULL, '$2y$10$/VJIb4d9dG7jw/IlPEfANe1FsNLLqmwOLxFlHTqqKADQ2CSwB5Tci', 'female', '2008-05-16', 'Bogor', NULL, '2000-08-30 10:31:36', '1998-07-29 12:12:41'),
(279, 'Winda Widiastuti S.I.Kom', 'gadang.nashiruddin@gmail.com', NULL, '$2y$10$vNPfbM3RNs76TKnrPzLzfOLrdtAuGif.TMxcENC/aLzpbJwIEYXQW', 'female', '2000-11-30', 'Bogor', NULL, '2014-02-16 03:08:08', '2004-05-19 01:16:46'),
(280, 'Dian Riyanti', 'csuwarno@gmail.com', NULL, '$2y$10$ysWcZ1w3ExLUhdUU5pQcUuZx/EjzqcpH.CY5A30BZ3RHE9TYqxJEe', 'female', '2005-10-29', 'Bogor', NULL, '2006-10-01 19:52:17', '2005-01-15 06:41:12'),
(281, 'Ajeng Yulia Melani S.Pt', 'usiregar@gmail.com', NULL, '$2y$10$PNRKQEmR5zyr4aIujLxRIOABQbK5N16hJPVVQ8w3m3XEUvBZAAroi', 'female', '1982-08-31', 'Bogor', NULL, '1971-06-17 18:42:32', '2005-03-07 01:44:42'),
(282, 'Yani Anggraini', 'baktiadi00@gmail.com', NULL, '$2y$10$fX46igSlHlVj4rp92577oe78EpmxZNz.LmoWLVBpFfLMeHZrx71Gq', 'female', '2016-11-18', 'Bogor', NULL, '1988-10-01 14:34:46', '1992-01-28 21:16:49'),
(283, 'Ade Amelia Namaga S.Farm', 'gunawan.ami@gmail.com', NULL, '$2y$10$k3PyFNuVnRY7z1TrBAHaIOOvx5ZJfYZbr3aGZJpwLqNakfX/QbCIG', 'female', '1996-07-21', 'Bogor', NULL, '2004-05-20 17:23:01', '1978-06-09 19:00:05'),
(284, 'Kiandra Purnawati', 'mutami@gmail.com', NULL, '$2y$10$ymr1M3WZip6iXYA4g50zaucQsJsqzcVEF5opk1qtaJZCJkmLU5mci', 'female', '2007-08-14', 'Bogor', NULL, '1980-01-03 00:27:57', '1971-01-05 10:17:20'),
(285, 'Vanya Vanya Sudiati', 'wusada@gmail.com', NULL, '$2y$10$qxgcAlsSv2VkzIOuGSmQ6e63HcGmDYUddnYZ03Id80Q6vcvjt2wY6', 'female', '2001-10-21', 'Bogor', NULL, '1993-10-26 03:20:47', '2009-11-17 18:41:43'),
(286, 'Maya Yunita Melani S.Gz', 'elvin.prakasa@gmail.com', NULL, '$2y$10$O/Ol8ZSdzhYqK25AAFi8U.Mnq2Pn2jvIqN1GJeXkpgY0tOdZe7jE2', 'female', '2010-05-07', 'Bogor', NULL, '2014-08-31 02:01:18', '2015-07-05 13:45:18'),
(287, 'Padmi Yuliana Pratiwi', 'jasmin.oktaviani@gmail.com', NULL, '$2y$10$ImpKx.lvPfEfhOS.MujPc.891bLVHZ2ZostZy6c..ln5wBkSBbQwK', 'female', '2017-05-01', 'Bogor', NULL, '2004-01-15 07:36:49', '1980-12-10 03:56:23'),
(288, 'Jessica Anggraini S.Ked', 'kajen.sitorus@gmail.com', NULL, '$2y$10$Fq4tOzhxxbJhmvzz54nBkOnBsZ6OxH97qdxawWrao4ejYt0G/DB1i', 'female', '2009-07-03', 'Bogor', NULL, '1975-12-02 03:14:23', '2011-03-28 16:54:36'),
(289, 'Nadine Puspasari', 'jayeng41@gmail.com', NULL, '$2y$10$CumtWVLl.ROtj3zfMgMcJeTzz8RDS5knPzPwn86xE7axvpQAj8MEe', 'female', '1976-05-30', 'Bogor', NULL, '2014-03-18 18:58:02', '1986-08-02 01:43:36'),
(290, 'Puji Wijayanti S.Sos', 'nsitorus@gmail.com', NULL, '$2y$10$ue2uL0RNjHh1ToIkyHxaIOGIX0NeJzGoWjCWZC9Q0mXM42HmB1f6.', 'female', '1978-04-01', 'Bogor', NULL, '1972-08-30 20:11:07', '1977-12-01 02:48:28'),
(291, 'Ulya Hassanah', 'zulfa73@gmail.com', NULL, '$2y$10$TKuEEwrTfxOuf450by/RKOKa7tzJQVqHic0XVDW8ruhKyfSXaljO6', 'female', '1977-10-30', 'Bogor', NULL, '1999-06-09 13:30:34', '1989-12-08 04:38:01'),
(292, 'Michelle Lestari S.T.', 'lega44@gmail.com', NULL, '$2y$10$8DVUr.P0vA4ckhldS8Eak.dOfNK4pGlenT3Xgc5MJHshWAh/AF62O', 'female', '2014-05-27', 'Bogor', NULL, '2000-01-27 17:46:55', '1982-03-19 22:57:16'),
(293, 'Uchita Laksmiwati M.Kom.', 'kambali.nasyiah@gmail.com', NULL, '$2y$10$ki3Q5ZQ1usaY93pO5Vg1m.BdTHxbrZDcftPsGnB7xFHtNx.RZd82O', 'female', '2021-08-08', 'Bogor', NULL, '1999-01-30 10:23:40', '2002-05-04 16:08:04'),
(294, 'Sabrina Halimah', 'xnarpati@gmail.com', NULL, '$2y$10$DrpwIjFEHTpnDNpA06IzwuXdPexkfHhCPohXOEXGkb9OZjoukokGO', 'female', '1993-03-18', 'Bogor', NULL, '1983-01-18 13:01:04', '2017-01-14 08:57:22'),
(295, 'Novi Pudjiastuti S.E.', 'hhariyah@gmail.com', NULL, '$2y$10$kDrYPE4n5lgapgqUtY3sBOMrrf4uf83O.P2rly2iLTwcUteG2M8d6', 'female', '1977-10-04', 'Bogor', NULL, '1995-11-25 22:04:22', '2005-01-07 04:24:29'),
(296, 'Ifa Maria Maryati', 'julia.winarsih@gmail.com', NULL, '$2y$10$2iB9NRwRkzcDXrnh8IJDIeWQdummw.K3HeAX4TxM8IAf6rEkrK7dK', 'female', '2017-06-02', 'Bogor', NULL, '1994-09-17 02:51:43', '1996-12-28 00:31:02'),
(297, 'Unjani Amelia Laksita M.Ak', 'jasmin74@gmail.com', NULL, '$2y$10$r/nHwQqvFCHxQo2uJZatIOULOpZw/.ePQXdqrxrBV6YPcdEiuF7I6', 'female', '1997-10-30', 'Bogor', NULL, '1974-06-14 20:11:37', '1987-09-25 10:26:19'),
(298, 'Rina Nurdiyanti', 'wulan18@gmail.com', NULL, '$2y$10$EpqQKAxuPfCzA6JwJbA67uwSQwM4I88amnw4LAgXmKm0pVlioz3ge', 'female', '2004-06-06', 'Bogor', NULL, '1983-05-18 19:26:00', '1976-08-01 13:08:27'),
(299, 'Belinda Widiastuti', 'onurdiyanti@gmail.com', NULL, '$2y$10$70fPgOOG2b/QfOCU5vhNMO3QtspUzCli41s6hvGLw7s1vkCLF.zz2', 'female', '2017-11-27', 'Bogor', NULL, '2008-03-20 19:58:39', '1987-12-15 05:13:10'),
(300, 'Paris Astuti S.E.I', 'nsihombing@gmail.com', NULL, '$2y$10$.a0grNb.6sJuwZ1J3EyywOlIC/VMe4WRmjef5l3WllvJa8rX5s7Ki', 'female', '2002-10-04', 'Bogor', NULL, '2010-02-26 14:45:00', '1998-12-06 07:01:01'),
(301, 'Aurora Zelaya Puspasari S.Kom', 'cahyo18@gmail.com', NULL, '$2y$10$zffzI96S2OEMQFufOMOIxucWBI50VhArkmPXMQPFKb4cK4fgzfJdK', 'female', '2021-04-20', 'Bogor', NULL, '1994-11-10 11:43:24', '2011-10-08 19:47:36'),
(302, 'Ade Melani', 'wasita.yahya@gmail.com', NULL, '$2y$10$I7k6tgzLKUBf/VZclQmy/uAXaoQ7AjnBdsqV0qDer8WbssssGi9P6', 'female', '1990-07-20', 'Bogor', NULL, '1990-03-10 01:28:40', '1992-09-06 23:38:29'),
(303, 'Kania Laksmiwati S.Farm', 'farah.nasyiah@gmail.com', NULL, '$2y$10$hOf6mrvkPWhZ7MZBaSOdx.z602NuLeRJnEUv8QKZtbXRePu.e0XT6', 'female', '2005-12-22', 'Bogor', NULL, '2018-12-15 20:42:59', '1973-04-14 13:39:49'),
(304, 'Ilsa Uyainah', 'fujiati.iriana@gmail.com', NULL, '$2y$10$GpedsaKvwf4BrVuhoCApVu9Xz/.86tWvetguN6SCsncW3VRUh40ae', 'female', '2022-08-02', 'Bogor', NULL, '1972-11-03 06:52:34', '1977-08-29 00:51:43'),
(305, 'Zulfa Rahayu', 'galak62@gmail.com', NULL, '$2y$10$nRi/7oO/8hpIAXp2DsJafusx1sxvuCx6I551M7v1XNpzdK.ZXc4r.', 'female', '1973-11-02', 'Bogor', NULL, '2004-08-04 06:40:35', '1988-07-25 12:53:34'),
(306, 'Yessi Wastuti', 'uriyanti@gmail.com', NULL, '$2y$10$dxrq9N86dY2Oh1EiisQb4.zo.dl2lqdrHSJ5fhFejN.eXsw/YlA9q', 'female', '1999-10-24', 'Bogor', NULL, '2022-02-28 00:09:57', '1987-02-27 21:37:38'),
(307, 'Betania Anggraini', 'laras66@gmail.com', NULL, '$2y$10$URf2T6HZOp5xO87I8HZikO73LxLn2ThDJSkQlgx3UY8tb3TTc3ija', 'female', '1979-10-27', 'Bogor', NULL, '2019-10-01 06:37:19', '2002-05-12 10:28:03'),
(308, 'Eva Genta Purwanti', 'xpudjiastuti@gmail.com', NULL, '$2y$10$A.UdFctMTtbM8uDh5cus5ul9iEAiezqebd0dA7csy22vf47DNO7NW', 'female', '1970-07-25', 'Bogor', NULL, '1984-07-03 21:04:10', '2015-09-24 06:18:58'),
(309, 'Tantri Melani', 'napitupulu.daru@gmail.com', NULL, '$2y$10$t58GRCf/yDbtk81jmAuhiezfoXR0yr2wKhK6VmcOWDDrMKrDQoZpm', 'female', '2004-01-05', 'Bogor', NULL, '2019-09-29 16:08:31', '1988-07-23 13:41:28'),
(310, 'Ajeng Olivia Padmasari', 'ina.hutasoit@gmail.com', NULL, '$2y$10$F3xupUsD26RkA.D3eLcs/eHwBh9AFl3HI4PDhGIfi6OEZDX4wXoQ6', 'female', '2020-11-02', 'Bogor', NULL, '1978-04-01 16:12:25', '2012-04-18 23:20:06'),
(311, 'Lalita Lestari', 'suryatmi.yani@gmail.com', NULL, '$2y$10$NdpONKA/Li/SWnnAXVRAwepPihlMGdmGHgZiEzopMHBF/cZ0G5MK2', 'female', '2019-02-04', 'Bogor', NULL, '2022-02-24 14:55:25', '1977-05-04 07:06:06'),
(312, 'Najwa Yolanda', 'ira.utama@gmail.com', NULL, '$2y$10$fXnVwiDWg39w0rctd4tMZeXllZzwwoDqCMe4oRFX7LiQ21onJOXki', 'female', '1995-06-01', 'Bogor', NULL, '2011-01-15 09:13:05', '2001-11-09 03:28:48'),
(313, 'Farhunnisa Yolanda', 'cinta.kuswoyo@gmail.com', NULL, '$2y$10$O82zG02iiN8ILjmf4FZ2XOn9hoEGgvX9bV5jqpIgaDJMqxb/0vaRu', 'female', '2011-02-19', 'Bogor', NULL, '1989-06-03 04:14:37', '2017-06-16 09:05:52'),
(314, 'Tantri Wastuti', 'susanti.zelda@gmail.com', NULL, '$2y$10$7/60QbqP9zyPdQuETAKi2ua.sYWw.mqwGz99MniLVXU9TFzqEFdf.', 'female', '1981-03-11', 'Bogor', NULL, '1989-02-15 09:13:11', '2011-12-13 05:53:14'),
(315, 'Tantri Maria Haryanti', 'asitumorang@gmail.com', NULL, '$2y$10$ft3SVL9XeqWAkpISjxUW1OvBaZdA8XdACO0PUCem3Pu4/gydPl7v2', 'female', '2018-03-01', 'Bogor', NULL, '1990-08-28 21:24:48', '2002-09-30 07:23:55'),
(316, 'Julia Fujiati', 'laksita.mursita@gmail.com', NULL, '$2y$10$ygdcH/mey3bBkRZ3UmV1sufr61WRrpDOqCKP1RjSL5BAZlWD/TCua', 'female', '1987-07-03', 'Bogor', NULL, '1984-03-23 17:26:35', '1991-12-17 03:53:43'),
(317, 'Silvia Titin Palastri', 'ardianto.halima@gmail.com', NULL, '$2y$10$KHlbKe1o3BYv9APHMaX7C.9nppytT5mStQO8/.T9NzKgeScsCdphe', 'female', '1984-11-03', 'Bogor', NULL, '1998-07-08 19:58:31', '2018-03-20 18:02:10'),
(318, 'Hani Andriani', 'gbudiman@gmail.com', NULL, '$2y$10$q1jnwb3AAZEu9j/7VrSEeOtP7hzbGYPKNb2WDDtl.iLLgGT70EIsa', 'female', '1990-08-08', 'Bogor', NULL, '1973-02-27 07:52:22', '1991-03-26 18:38:46'),
(319, 'Anita Hariyah', 'lestari.oskar@gmail.com', NULL, '$2y$10$CXczFYWGdvqXl1zPI4iC5e759mr7x7ktdpeSil33xnA1fY0kKKHiC', 'female', '2022-12-08', 'Bogor', NULL, '1973-10-07 13:13:39', '1994-06-23 17:05:06'),
(320, 'Gabriella Safitri S.Sos', 'gunarto.tantri@gmail.com', NULL, '$2y$10$152rAHSlZYkAQAJA5vd44uSMAHHofACd1fvPcjqd2zbBH2cviEC7C', 'female', '1988-03-17', 'Bogor', NULL, '1975-06-02 14:10:08', '2006-12-26 19:42:56'),
(321, 'Citra Fujiati', 'ella89@gmail.com', NULL, '$2y$10$RB5UYUzM2MZVXJ166aeJK.LKtcOwNiLdeASis1K.IpV7dgG7Vc9q2', 'female', '1988-03-04', 'Bogor', NULL, '1989-02-07 13:41:58', '1998-01-12 21:27:53'),
(322, 'Sadina Rahayu', 'wastuti.cawuk@gmail.com', NULL, '$2y$10$KJFtPt3uWkRE96VI9cC5tOevGscKhXNeWXbA9GqPWIShXtJ3LmT.W', 'female', '1978-02-08', 'Bogor', NULL, '1975-09-11 16:16:57', '1989-07-06 06:38:35'),
(323, 'Zizi Yolanda', 'mangunsong.daru@gmail.com', NULL, '$2y$10$KPuM72S4/Qk.LCruCcCiE.T/0gdv0mWamorAqWvfGQpdm4JywMuHG', 'female', '1974-03-18', 'Bogor', NULL, '1995-08-12 17:44:14', '1975-08-06 21:03:12'),
(324, 'Paramita Halima Susanti', 'salwa46@gmail.com', NULL, '$2y$10$I1Za/7urCFDPIraqZPwYuedj1yutXYnVww/cKQ729NUjhk65j0Hvu', 'female', '1983-02-12', 'Bogor', NULL, '1999-12-14 16:34:33', '2015-04-08 03:44:43'),
(325, 'Ana Safitri', 'jardianto@gmail.com', NULL, '$2y$10$/L2DzS8MlAaqqr4.y2swsek5iOwQIM/gFqV800TTiafMY5rGNwbJ2', 'female', '1982-02-05', 'Bogor', NULL, '2006-12-31 15:11:33', '1990-06-17 02:20:43'),
(326, 'Betania Wahyuni', 'snamaga@gmail.com', NULL, '$2y$10$8d2Ehu5oLrm0agIRL/.g7eRScHOvEGSL5kc6fkKa/Cx/fpiX0K/7K', 'female', '2021-03-25', 'Bogor', NULL, '1972-04-14 00:52:27', '1971-05-13 02:45:10'),
(327, 'Ulya Novi Hassanah S.IP', 'mwinarsih@gmail.com', NULL, '$2y$10$ORQFDbdtGv4Ouauc3K8g.OHHW1N21RbAAYfr5O0pATUy95Hyq3Q9i', 'female', '2015-04-28', 'Bogor', NULL, '2003-06-25 15:04:37', '2002-08-17 20:24:06'),
(328, 'Kasiyah Winarsih', 'jinawi.yuliarti@gmail.com', NULL, '$2y$10$tdW3R6fQTM8OxLy7y/HHyOg4R.D3/aC/Qx9kwK8hngPBXtoIk4Aru', 'female', '2019-06-26', 'Bogor', NULL, '1994-09-08 20:27:28', '2000-03-13 16:39:42'),
(329, 'Raisa Keisha Prastuti S.IP', 'haryanti.marsito@gmail.com', NULL, '$2y$10$JOCEVONxSrnFY0yDa.joTOD6xK129kmLltgxLXMy9IlL/gNBL.Ta6', 'female', '1975-11-09', 'Bogor', NULL, '1999-12-12 02:32:18', '2017-02-25 08:58:05'),
(330, 'Mila Zulaika', 'usada.tira@gmail.com', NULL, '$2y$10$BWAyTydv4YGZs2w9151.S.apN4MC5fWdEz7EBoygNuRiirZ7cH9LC', 'female', '1998-08-23', 'Bogor', NULL, '2002-08-26 01:25:13', '1981-01-23 14:54:10'),
(331, 'Ellis Umi Mayasari', 'kawaya63@gmail.com', NULL, '$2y$10$mrrBNDj.1GWfF/mw7PFR..R.8r6Mp5boVbbF5Yyd24mc14LPR6nLW', 'female', '1986-02-13', 'Bogor', NULL, '1989-09-25 10:34:02', '2000-07-22 03:17:16'),
(332, 'Kayla Permata', 'limar.widiastuti@gmail.com', NULL, '$2y$10$zFMFmtsoq63S4XU4NfRzU.ZsRPbPhkYRY7u2IEN9Ltr5O7GOot7RG', 'female', '1994-08-08', 'Bogor', NULL, '2018-11-13 15:34:22', '1984-06-21 19:04:07'),
(333, 'Cinta Iriana Hartati', 'bpertiwi@gmail.com', NULL, '$2y$10$UxqGTYJtIldSk7UEUXf1Reu7EP0kK158s7.ke9sauQYcAtmOBjyPq', 'female', '1982-12-12', 'Bogor', NULL, '2005-11-15 05:47:50', '1972-10-12 02:39:37'),
(334, 'Salimah Agustina', 'zsaragih@gmail.com', NULL, '$2y$10$WYylDUcVVB5fkuScw07MgOJE8MYZPyy.37iRwUTtFaEqMWPjuxmv2', 'female', '1984-06-02', 'Bogor', NULL, '1987-10-24 22:35:26', '1999-01-29 10:50:20'),
(335, 'Vanesa Maria Maryati M.Kom.', 'ilatupono@gmail.com', NULL, '$2y$10$JRKK1rau9gAVPhvQnUpTWOX/U8jwr4MxMwzFSHZAFxdsfTfL8aj5C', 'female', '1976-04-04', 'Bogor', NULL, '2009-11-16 08:38:16', '2015-09-05 00:13:57'),
(336, 'Farah Utami', 'wahyuni.radit@gmail.com', NULL, '$2y$10$6lAZLVErtE6RAjpizBtXsuXMsW8IgIylX33zD31AUVB7DLvVaB1Cq', 'female', '1999-06-16', 'Bogor', NULL, '1972-06-23 07:44:14', '1970-02-12 18:02:46'),
(337, 'Safina Hartati', 'asmadi29@gmail.com', NULL, '$2y$10$Pu9Ez6JlMLhnySmB8OhNSOD5UWTSpXIqFhjO6vV42deukljEjcw9e', 'female', '1979-03-16', 'Bogor', NULL, '1996-01-12 18:14:23', '1982-12-22 12:05:59'),
(338, 'Puji Handayani S.H.', 'rahmi21@gmail.com', NULL, '$2y$10$yyVmsXZQ3DlG7ykwdsWj5ubHuOpInu4WDTXVwpwk.TMM8i2gHoZj6', 'female', '1970-07-18', 'Bogor', NULL, '2002-08-01 17:42:55', '1988-11-11 05:48:50'),
(339, 'Betania Karimah Yolanda M.Kom.', 'reza.salahudin@gmail.com', NULL, '$2y$10$AFQai09NwsPrC8xIf4SrMemf2mQeM7SReFYyAT/OeCUBo6dIXoAX2', 'female', '1986-06-30', 'Bogor', NULL, '1982-12-20 18:38:20', '1986-09-30 11:21:41'),
(340, 'Ophelia Melani', 'ciaobella.prastuti@gmail.com', NULL, '$2y$10$eBwWo8X9Xmgcxivge7td0..WclMLK9V4F5Kt5uaOWaemkK9rfwbzC', 'female', '2022-09-20', 'Bogor', NULL, '2016-08-18 19:43:59', '2010-03-22 07:58:08'),
(341, 'Clara Mardhiyah', 'emin02@gmail.com', NULL, '$2y$10$mFrOLgT9/ZirMNiPttYwguAWRRVQo.8euydlGoZE1aByK4CakHCKC', 'female', '2001-02-25', 'Bogor', NULL, '1981-07-21 20:25:09', '2021-05-13 16:01:06'),
(342, 'Rahmi Farah Puspasari', 'ira98@gmail.com', NULL, '$2y$10$SxnXPDmWhqVxxZPZRmRHZOA8ggLeGbau7k/HFofu9qSJ9ZKXNVvFG', 'female', '1972-04-11', 'Bogor', NULL, '2007-05-22 10:59:10', '2013-08-08 08:29:12'),
(343, 'Tiara Dian Fujiati M.M.', 'gina.mandala@gmail.com', NULL, '$2y$10$mgZx2jkHZb5.VzYAlwGRo.MEfOB4iOiEvFBB0.FCv8h05ngZOOgH.', 'female', '2004-07-27', 'Bogor', NULL, '1988-10-16 11:05:35', '1986-05-05 22:30:15'),
(344, 'Hilda Najwa Uyainah', 'utami.cinta@gmail.com', NULL, '$2y$10$Vf0oHzWYQw5AktBSuK4suOh.vLHPzzb1jjDH3RXTZU5OHOGThxT9S', 'female', '1981-04-11', 'Bogor', NULL, '2001-08-14 04:37:07', '2015-08-16 03:19:28'),
(345, 'Fitria Wastuti', 'suryono.estiawan@gmail.com', NULL, '$2y$10$I0B.mA6voP1sguJA8c7Bie5B1LzSNzcOaVZ6Z0IKHSZUTTwZ5w/R6', 'female', '1996-08-18', 'Bogor', NULL, '1993-12-31 13:27:12', '2005-01-31 07:43:39'),
(346, 'Rahmi Suryatmi', 'raditya.kusumo@gmail.com', NULL, '$2y$10$FLvBQCceUDHYi0VhDv.tUu025yGCVfjf2YOLCHHsX565oV78Gw2Za', 'female', '1973-04-11', 'Bogor', NULL, '1980-01-07 23:24:58', '2008-10-24 06:15:23'),
(347, 'Jelita Aryani', 'iswahyudi.paramita@gmail.com', NULL, '$2y$10$Nguc5KqPETVEoN8bHEEvGeuz8/6ksYFE6AhvYafh35lmrmQi7WnO6', 'female', '1986-01-15', 'Bogor', NULL, '2015-05-17 20:06:01', '2014-03-05 23:55:05'),
(348, 'Hasna Hasanah', 'rajata.melinda@gmail.com', NULL, '$2y$10$oVc2KIiXZzqO7pokvbkquupeMMEKfhvsNzel5pAfNjZkrh7vRvGNS', 'female', '2004-05-26', 'Bogor', NULL, '2010-10-03 20:07:40', '2000-05-17 01:51:41'),
(349, 'Elisa Nasyiah', 'maida.sihombing@gmail.com', NULL, '$2y$10$jD53RA2tG0yeG9B9SF..cOsAhB6dG4yIyzx2GLW..detZa07vkjKe', 'female', '1990-09-02', 'Bogor', NULL, '1994-12-09 10:01:26', '2010-04-27 15:27:51'),
(350, 'Putri Uyainah', 'nmaheswara@gmail.com', NULL, '$2y$10$ocAqFstz09gObCsy/Ou.KeOWsNZ1wyJcKgAHlitEKeHbXrOKXzAra', 'female', '2015-04-15', 'Bogor', NULL, '1984-05-21 08:03:05', '1991-11-24 20:25:10'),
(351, 'Malika Najwa Melani', 'lhalimah@gmail.com', NULL, '$2y$10$WcKoxH4/OLaC0c.KLmnbmemKrd5AqWBEDSY5Nke6nv48cTY98Akyu', 'female', '1997-10-20', 'Bogor', NULL, '1996-05-11 13:02:33', '1997-01-14 19:11:56'),
(352, 'Nadine Permata', 'nuraini.cemeti@gmail.com', NULL, '$2y$10$g5BIJGP9dP16TTMQs/H6ZOOxFVGDt3hv2C5MwePfGRyvl8Y5qkcw2', 'female', '1982-01-09', 'Bogor', NULL, '1990-03-01 07:30:33', '1994-07-31 21:08:49'),
(353, 'Ade Titin Mulyani S.I.Kom', 'jaka79@gmail.com', NULL, '$2y$10$iO5F4pAkkNRMGF5F2SM2cuckqEo35dyEc6D5q.pRnCLeTUjhv3Q.G', 'female', '2021-06-19', 'Bogor', NULL, '1999-12-24 04:37:55', '2009-12-10 23:59:56'),
(354, 'Novi Fitriani Agustina', 'adriansyah.jasmin@gmail.com', NULL, '$2y$10$xWkuA5hVwfK/He3HJcEzj.iZVxLaAYnMKEQYSXGwTGPJ/TW8DBubS', 'female', '1978-03-22', 'Bogor', NULL, '1998-04-22 08:46:41', '2001-05-24 23:51:15'),
(355, 'Unjani Hesti Yuliarti', 'prasasta.mala@gmail.com', NULL, '$2y$10$1KEgWJ8fIbgD8VAvOQ6sFOiDEU9/os8C3IU78tXfFRMDtqkFd7xH.', 'female', '1990-08-10', 'Bogor', NULL, '1981-11-07 14:57:55', '2011-09-17 03:56:18'),
(356, 'Indah Qori Safitri S.Farm', 'cengkir48@gmail.com', NULL, '$2y$10$.XZZPd3Fnw/bGCvQwBMlVOdI7BbWgR5vDhADV0IClGG2zTqDhaC1O', 'female', '2011-05-23', 'Bogor', NULL, '1977-06-15 22:29:17', '1981-02-18 02:56:33'),
(357, 'Halima Dina Widiastuti S.Pd', 'hwastuti@gmail.com', NULL, '$2y$10$b.48Tw93d2Y8QdmOUhx7eubISuSYadGDwEibrEN.G1iqK5azGE5DW', 'female', '2013-04-14', 'Bogor', NULL, '2013-12-10 15:52:48', '2007-08-14 06:25:46'),
(358, 'Farah Permata S.Ked', 'jefri40@gmail.com', NULL, '$2y$10$tMBnNQXw34v/j6WigJpuEe8tseq.aNsHSEjiLC/yPCN.RswInNyR6', 'female', '1998-03-11', 'Bogor', NULL, '1972-01-30 05:23:05', '2020-06-04 16:25:35'),
(359, 'Yulia Padmasari', 'jusamah@gmail.com', NULL, '$2y$10$LGzgCzgqfYBJCOwIEtBeuevlLJNls7a6xfCpNrb13n4Zlmv0rKXj6', 'female', '1985-09-22', 'Bogor', NULL, '1971-09-26 05:09:00', '2022-09-26 13:43:15'),
(360, 'Vanya Winarsih S.T.', 'palastri.tari@gmail.com', NULL, '$2y$10$L.RyvW0ZHXKzPHZZLKLG6.6WrWlP.BPXNN5im3d91NyyDuyQr9SdG', 'female', '2020-06-21', 'Bogor', NULL, '1982-08-24 23:41:08', '1980-06-18 06:23:46'),
(361, 'Rachel Suryatmi S.Farm', 'tiara.novitasari@gmail.com', NULL, '$2y$10$/DS1cwCQonSrGxjYR1WnBeeVoSEL8dHAFuLHLXZY974JV5kQWtBr6', 'female', '2018-10-10', 'Bogor', NULL, '2005-09-12 10:07:39', '2013-06-19 18:27:46'),
(362, 'Cici Haryanti', 'prasetya.ilsa@gmail.com', NULL, '$2y$10$Xid2hhtt2evo57XstKnKBOzBDeDMFg9rk0LeegdoRjxTl3Uid8CYK', 'female', '2010-05-22', 'Bogor', NULL, '1994-09-24 00:45:01', '1983-01-22 18:01:04'),
(363, 'Hesti Kamaria Mardhiyah S.Pd', 'rastuti@gmail.com', NULL, '$2y$10$bK1Dqw6Kqu4lkF3WzH5hvOjrjQnhuYyiXOeg0nybsAhnZoBX4ltdW', 'female', '1990-07-30', 'Bogor', NULL, '1990-02-11 16:03:45', '1999-12-10 12:44:49'),
(364, 'Vanya Rahimah', 'vgunarto@gmail.com', NULL, '$2y$10$2k5QOSWeVS1l4.5y2Hy3N.v1dLNnpiyHtfxdnNwUgpvzyQvjFs4R6', 'female', '2020-11-28', 'Bogor', NULL, '2015-04-11 20:30:25', '1978-11-30 16:50:59'),
(365, 'Elisa Hastuti', 'jputra@gmail.com', NULL, '$2y$10$FQ9vI62SFQumnGQfgzY4F.owMMY8rD4s5BHXsH3gw2QxszbbBmBwK', 'female', '1976-05-28', 'Bogor', NULL, '2020-04-07 13:47:30', '2010-11-18 00:56:34'),
(366, 'Jasmin Yolanda M.M.', 'yuniar.kasiran@gmail.com', NULL, '$2y$10$Bht/nl3UzDKY360kftTYLe7Se.l0HMCug2vTZ2ckQAgn057.zwYOG', 'female', '1977-05-14', 'Bogor', NULL, '1973-05-18 21:10:32', '1987-01-17 21:56:43'),
(367, 'Melinda Namaga', 'ani20@gmail.com', NULL, '$2y$10$2dBmKVBcmCVwrEoJ6XSnkO0z3lwDSrFuTf733QDQfWUaOpQFDVuhe', 'female', '1999-01-14', 'Bogor', NULL, '2011-04-15 23:34:16', '1974-10-19 12:31:55'),
(368, 'Carla Laksita M.Farm', 'fitria.laksita@gmail.com', NULL, '$2y$10$pKrpz386VCzv5VERiae7bes4TX4WpKjidM9wrG8aq.L8qewZwN3Wa', 'female', '1977-07-07', 'Bogor', NULL, '1991-03-19 16:04:26', '1988-10-27 15:23:25'),
(369, 'Ella Gina Mardhiyah S.Farm', 'wyolanda@gmail.com', NULL, '$2y$10$ymB49DuZl43.XAkAXT8aQ.qnbu65VNhJFn2jhlI5uRjJ6sDsenvcK', 'female', '2000-05-05', 'Bogor', NULL, '1995-10-12 00:13:26', '2018-07-27 03:11:19'),
(370, 'Jane Queen Maryati M.Kom.', 'budiman.karja@gmail.com', NULL, '$2y$10$QCYiAt0ih3V0O426D7TCAeItwqTY6N5T.6r6tmK0dk2dT3Mh3c8JK', 'female', '2015-01-01', 'Bogor', NULL, '1998-01-04 15:26:20', '2009-11-05 03:41:37'),
(371, 'Janet Dalima Melani M.TI.', 'winda.winarsih@gmail.com', NULL, '$2y$10$y3FkOaPINOjqUTkPJbjF2eKR2N5mfm1SvHk6cweep20xCEqjRHtgG', 'female', '2017-05-01', 'Bogor', NULL, '1977-09-13 17:48:35', '2003-11-23 13:13:40'),
(372, 'Vanesa Andriani', 'tutami@gmail.com', NULL, '$2y$10$zeCvym4BI9ybTIhUPCUppOKEgaXgqxPpvxpzhzvB9pZ0lr1OilUuK', 'female', '2008-11-05', 'Bogor', NULL, '2019-01-06 00:39:28', '1976-12-14 12:56:21'),
(373, 'Ami Pratiwi M.TI.', 'mustofa.luluh@gmail.com', NULL, '$2y$10$WderE7ouNoR6h0O8x1rBFebS1n5OM9VJt8e3U.m7vFMJSBKth/K2O', 'female', '1978-09-27', 'Bogor', NULL, '2017-10-20 01:58:08', '2017-06-18 15:51:52'),
(374, 'Fitriani Jelita Rahmawati', 'vpuspasari@gmail.com', NULL, '$2y$10$l2x1Y4aj6cbYdymQywbx7uTJn.m1CC7cp.u5T3q00GggcXLr991ly', 'female', '2005-02-19', 'Bogor', NULL, '1977-10-05 03:20:07', '2002-11-27 09:30:16'),
(375, 'Ika Hassanah', 'lfirmansyah@gmail.com', NULL, '$2y$10$TAojPBG61JohSVx4NbECOOWE7qNBmludGcxf0yB8aQkUDowYdduuW', 'female', '1989-07-16', 'Bogor', NULL, '1990-09-01 21:30:57', '2011-04-03 11:09:47'),
(376, 'Padma Wulan Haryanti S.H.', 'handayani.harja@gmail.com', NULL, '$2y$10$FbG3I2bdM8Jef9uv5qJo3u0dyf6ey4jxoGUKLMfosLZcdPA/abNBS', 'female', '1978-10-20', 'Bogor', NULL, '1994-06-01 11:01:58', '1973-06-07 07:50:28'),
(377, 'Puspa Kusmawati', 'jayeng.melani@gmail.com', NULL, '$2y$10$34DrdbHLLpW9smg6EK0.FuTGIMJn0wJdxKq1Bi2fBh7DVg1ZxGpeK', 'female', '1993-11-07', 'Bogor', NULL, '1981-01-15 04:43:36', '1983-06-24 20:41:32'),
(378, 'Zulfa Mulyani', 'sarah.uyainah@gmail.com', NULL, '$2y$10$APQHstoRh0OVZtmPLLlf/OiIQrgbnTENdxXZENBudszog7VRivCJe', 'female', '1985-05-18', 'Bogor', NULL, '1983-12-30 22:18:34', '2021-07-17 07:38:24'),
(379, 'Pia Hamima Mulyani M.Ak', 'nasrullah.nashiruddin@gmail.com', NULL, '$2y$10$H48CpnFg0LyVnp9432ycp.BPsrGBpDM5mAXJKJkDEDDTDtwFhFzDe', 'female', '2011-05-12', 'Bogor', NULL, '1997-01-02 00:36:23', '2000-11-28 06:04:10'),
(380, 'Kayla Unjani Anggraini S.IP', 'haryanti.maryadi@gmail.com', NULL, '$2y$10$9Ibr8h.BhA2.V32T.d.ks.uYQjivKp0Kgb1mf6IVSywCdHh7nl1Dm', 'female', '1997-01-05', 'Bogor', NULL, '2015-10-23 12:10:18', '1985-07-10 04:46:52'),
(381, 'Fitria Halimah', 'tania.pratama@gmail.com', NULL, '$2y$10$iH7wOdH8aZ5FckegwKQySu5NRwm.f0FGb3tcSKJd4JlcY0UIcy8sy', 'female', '2001-10-11', 'Bogor', NULL, '1985-02-19 06:47:17', '2008-06-25 04:13:12'),
(382, 'Rachel Maria Utami', 'hani87@gmail.com', NULL, '$2y$10$qTBOfQvapVvG5MI31T6r0O47UYc0HdSW.VSSWHdLTawtKJtalUNQ2', 'female', '2021-03-03', 'Bogor', NULL, '1989-07-07 09:59:38', '2018-06-26 01:24:39'),
(383, 'Titin Permata', 'usman22@gmail.com', NULL, '$2y$10$TNoeqJVKGlduh6wBoBWIeuzC4ggiE9BD/jcOMq6Mm0/JvZcRDJWsy', 'female', '1981-08-15', 'Bogor', NULL, '2007-12-27 05:03:59', '1988-10-13 07:57:42'),
(384, 'Sakura Belinda Wahyuni S.I.Kom', 'opurwanti@gmail.com', NULL, '$2y$10$xqClNWwjF0zLdktKus.ehewUxWUpeK79KzI13w40rWRfZNBi4UgFy', 'female', '2010-10-01', 'Bogor', NULL, '1976-02-25 07:58:49', '1992-02-09 04:28:38'),
(385, 'Ghaliyati Tari Agustina S.H.', 'hafshah93@gmail.com', NULL, '$2y$10$KjThHapilOVF1AP9QOYVO.vgTKlYvM6L1E6typCzX5jZa6Se8Zj22', 'female', '1993-01-13', 'Bogor', NULL, '1995-07-20 01:20:39', '2009-05-30 19:49:26'),
(386, 'Julia Hassanah M.Ak', 'sakura.latupono@gmail.com', NULL, '$2y$10$hzBuuYdG7g8F9ZdfPr2kKe4PYjMTWi5im2M6YNWFR1vBEPqalEcom', 'female', '2015-12-23', 'Bogor', NULL, '2009-08-23 12:03:37', '2017-04-21 15:18:26'),
(387, 'Syahrini Lestari', 'dalima55@gmail.com', NULL, '$2y$10$HCOLQRMzR5ESSbiWbOgkZegc00aWOfkXZ337MTM4eU0lpeMUfjJ12', 'female', '2011-02-24', 'Bogor', NULL, '2021-09-06 06:08:01', '1980-10-03 05:37:02'),
(388, 'Anastasia Hassanah', 'dpurnawati@gmail.com', NULL, '$2y$10$m2UqWb4gluUQT20FnWwAOejKl2hhw8iTj9nhmcRbuckUGyuEhNgLS', 'female', '2015-02-13', 'Bogor', NULL, '1995-10-28 09:56:09', '2003-11-09 10:31:23'),
(389, 'Zahra Raisa Padmasari', 'jdabukke@gmail.com', NULL, '$2y$10$TYBpSxg6XPaKBV5mJGfxr./uBZsVhQA8hVZhDmKXxs/qqtnLgI6eO', 'female', '1986-05-27', 'Bogor', NULL, '2002-12-15 14:18:35', '1987-02-02 12:01:46'),
(390, 'Zalindra Wulandari', 'tnovitasari@gmail.com', NULL, '$2y$10$00k/vxuCNT9wfhbM9ndUo.vyJ3fGraKlEBkZ9V5E77KyskpiWkkLG', 'female', '1988-11-14', 'Bogor', NULL, '2012-12-31 20:47:06', '1982-04-23 14:13:13'),
(391, 'Hana Dewi Susanti S.Pd', 'galar80@gmail.com', NULL, '$2y$10$iMKUnNBjtrNIZVV1KXHtteTiUtvp8r6mKg4IYtGeOSvDbxuZrkYKy', 'female', '1978-05-19', 'Bogor', NULL, '2017-06-08 19:23:23', '1987-12-06 19:39:21'),
(392, 'Olivia Laksmiwati M.M.', 'baktiono92@gmail.com', NULL, '$2y$10$v7Mmgwk3tB/9obFYTXrHeenxn/GSWqQNCYkv4oidSKnSM.oRxPa6K', 'female', '2005-02-27', 'Bogor', NULL, '1979-11-10 22:27:09', '2013-11-14 21:45:48'),
(393, 'Ulva Yolanda', 'dadi.hidayat@gmail.com', NULL, '$2y$10$RyJslHBRUBPynCR/I7u6XuUunpSuFalIvZCsZjd2.IY/2WEC6VqqO', 'female', '1981-03-05', 'Bogor', NULL, '2000-01-19 03:48:26', '2015-10-15 12:53:57'),
(394, 'Ajeng Ifa Wahyuni S.Ked', 'gnasyidah@gmail.com', NULL, '$2y$10$jCsaNgWLiN5H2BsSAP6/x.BE87U4D9DVIsGqEaZ6v6siBBSqLf3Om', 'female', '2002-11-04', 'Bogor', NULL, '2004-02-12 02:46:17', '2017-10-16 12:27:51'),
(395, 'Nadia Haryanti S.Sos', 'fitria65@gmail.com', NULL, '$2y$10$Qw9IwD/cwVo8M5EmZmftoetVjkmbHgbndyo9fZP8mHyM6J8z5r.ue', 'female', '1976-05-29', 'Bogor', NULL, '2022-05-07 10:24:34', '1997-06-06 23:46:29'),
(396, 'Diah Kamaria Rahimah S.Pd', 'fzulaika@gmail.com', NULL, '$2y$10$7fzDX84JfDbzG8Dz2Q0xquOec16VvrHbtnmf5efWQLvVZP2xCniZy', 'female', '2017-06-13', 'Bogor', NULL, '1985-08-30 13:02:16', '2019-08-16 10:41:13'),
(397, 'Queen Novitasari', 'kwaluyo@gmail.com', NULL, '$2y$10$AsK2ruXoaW/5l9zIqr/rQu77qJSlPqYS1i/DFNXsfTmiWLHz6h0Ee', 'female', '1979-02-01', 'Bogor', NULL, '2022-07-25 20:09:36', '1996-12-11 10:54:24'),
(398, 'Salwa Siska Andriani', 'utama17@gmail.com', NULL, '$2y$10$sLcXTNPPrEwipb6BahsIs.mjTGlYPSWnqNz5YgNCaeQlZmbhn4.lC', 'female', '1974-10-02', 'Bogor', NULL, '1988-03-24 13:41:48', '1984-11-14 21:07:57'),
(399, 'Oni Agustina', 'widiastuti.indah@gmail.com', NULL, '$2y$10$QqpbWU9RaFq5M5SQZklhBewP0jgfM1gWlWJN9qsRhFfc2OY8YLs0W', 'female', '1973-05-13', 'Bogor', NULL, '1993-05-08 06:32:03', '2004-01-08 07:01:52'),
(400, 'Kasiyah Humaira Handayani S.Pd', 'mardhiyah.galar@gmail.com', NULL, '$2y$10$eXvzZ3eqF8eHOu/XUPdV7OW9pxeJ33zOVxAM.WQPCiQz2D0hPdLre', 'female', '1983-09-30', 'Bogor', NULL, '1977-03-23 11:45:04', '2015-06-18 01:55:48'),
(401, 'Maya Purnawati', 'usuryono@gmail.com', NULL, '$2y$10$k0LTtwel.kIFlqKFLISeke2Ka77S2eAOCNGFGWbEmr72ik6TGjey.', 'female', '1973-03-14', 'Bogor', NULL, '2001-01-12 07:37:29', '1999-06-08 13:57:52'),
(402, 'Kania Betania Kuswandari', 'thamrin.arsipatra@gmail.com', NULL, '$2y$10$CQudKefgv2WCAiwMhzoU9eYhVqHetE7fLA609osTb/G7uT5wLw6l6', 'female', '1972-02-02', 'Bogor', NULL, '1995-09-14 00:45:27', '2013-05-12 20:44:59'),
(403, 'Laras Zulaika S.Farm', 'prabowo02@gmail.com', NULL, '$2y$10$4Oy0jbz1sooP04SsXA.VyOwSW8NpUmTfZqPCVKiUwn5Btqkq4yu3i', 'female', '2001-08-10', 'Bogor', NULL, '1970-05-27 18:50:05', '1989-01-17 20:14:00'),
(404, 'Kania Mayasari', 'heryanto96@gmail.com', NULL, '$2y$10$BMWacF2JZxijELUtI4MfUurJ.2d5lW5miE5bRuN0LyGJ9hxKUzRfK', 'female', '2012-10-18', 'Bogor', NULL, '2018-04-15 07:48:17', '1999-09-02 14:39:29'),
(405, 'Diah Fujiati S.Farm', 'vuyainah@gmail.com', NULL, '$2y$10$Xni2F3oJ9krlLuI25a9tG.1YXeiJbInMiq2CicW7YWIZ9UEunHj6C', 'female', '2020-10-13', 'Bogor', NULL, '1983-04-02 00:27:46', '2016-05-19 09:31:31'),
(406, 'Putri Usamah', 'mandasari.eli@gmail.com', NULL, '$2y$10$AjnvYOv2CAsMuNW8J0.9iOE3QDjJLfq03LspqRPrDFQS7fHkBgCoq', 'female', '1976-04-28', 'Bogor', NULL, '1981-06-21 08:01:34', '1978-07-10 08:09:49'),
(407, 'Zamira Anggraini S.Ked', 'nhariyah@gmail.com', NULL, '$2y$10$/ryRFiP0TH0GbateT.vzte7/cihZ62SKbY2VJMa6/m1Tbn5SSwY9i', 'female', '2016-04-14', 'Bogor', NULL, '1986-05-04 16:28:09', '2010-02-26 20:37:41'),
(408, 'Siti Wijayanti', 'hprastuti@gmail.com', NULL, '$2y$10$jQor.mYCDiP7wUUvK48sge6aZGIlmNcKwB8JS8g/nDl10MiFnjzlm', 'female', '2015-01-06', 'Bogor', NULL, '2008-05-29 02:24:13', '2003-08-11 02:46:00'),
(409, 'Almira Tari Mardhiyah', 'sari.gunawan@gmail.com', NULL, '$2y$10$XJxwebRSaRHk8vUxTB3Ne.7O2cFsGjajIdGDmQz4lmsMz8GkeC1te', 'female', '1988-05-02', 'Bogor', NULL, '1987-01-28 19:08:38', '1987-03-22 07:57:08'),
(410, 'Kani Hariyah', 'uli62@gmail.com', NULL, '$2y$10$ez5edVDb5m0kqSc.WWhZI.SiHNdVGycg6UY03GsD4MGaBh4TxLIJ6', 'female', '1990-11-01', 'Bogor', NULL, '1993-02-07 16:23:04', '2016-12-29 00:34:48'),
(411, 'Widya Riyanti S.Kom', 'dabukke.oni@gmail.com', NULL, '$2y$10$HTdxBBd8SfkDzerNzGoUHu9w8lHy9jPfP/r33o0NujW35eNFYNAX.', 'female', '2017-06-11', 'Bogor', NULL, '2017-09-14 22:11:08', '2012-08-29 18:19:46'),
(412, 'Jasmin Hassanah', 'agnes22@gmail.com', NULL, '$2y$10$KNaXqLy69e07ZB9ROAnZp.Dl41KxfOrHivkAzfo/khzqgoorevS32', 'female', '1981-01-21', 'Bogor', NULL, '1991-01-14 22:30:28', '1982-07-30 20:18:50'),
(413, 'Gilda Zelda Usamah', 'nhassanah@gmail.com', NULL, '$2y$10$qxjnpjvDdLV0sUUCI5A2pOkXTkjwRqGOGP9gPWTVwi2ici1tqi/Vi', 'female', '1988-02-14', 'Bogor', NULL, '1999-01-10 11:50:51', '1982-07-06 14:25:03'),
(414, 'Yance Permata', 'lazuardi.juli@gmail.com', NULL, '$2y$10$AVFKvbkSB7c5yFWevB03mO4Sxk7bzRUdcmZ98PJSGQMb4RmBOBc1O', 'female', '2013-04-20', 'Bogor', NULL, '2004-10-31 20:09:22', '1984-07-20 14:58:36'),
(415, 'Janet Tania Rahmawati M.M.', 'hari.mulyani@gmail.com', NULL, '$2y$10$a9lyRD4AftZqTlDq4aENTebG1bUX0b85G5LBsIF0ipcAmNy9iPymW', 'female', '1983-06-16', 'Bogor', NULL, '1993-11-28 07:50:04', '1999-06-07 09:12:19'),
(416, 'Zulaikha Fathonah Suartini M.Pd', 'handayani.elvin@gmail.com', NULL, '$2y$10$TUcwbN3BLzd92QteE88e5Ounr4GEbu1Gfow3oKuHBeFShJricxExm', 'female', '1992-04-17', 'Bogor', NULL, '2014-03-28 10:23:53', '1990-01-18 15:34:59'),
(417, 'Vivi Nurdiyanti', 'irawan.cahyadi@gmail.com', NULL, '$2y$10$DuPKbynC1y0t7Hm7FbOKeOtjPmws/T3fM1AlQSpfP4m9eo.ViALfa', 'female', '2009-07-25', 'Bogor', NULL, '1998-06-24 08:35:08', '2013-10-27 10:13:17'),
(418, 'Amalia Mila Agustina', 'tugiman11@gmail.com', NULL, '$2y$10$jfNevs0gP4C3fWIvHnngGegeYPCBzzy4PCSVy3SOAsR1GQ2RFwCea', 'female', '1993-05-21', 'Bogor', NULL, '2004-01-22 22:46:04', '1991-06-20 07:45:34'),
(419, 'Nilam Handayani', 'bdamanik@gmail.com', NULL, '$2y$10$GjXu72Ei4srqb4GA/yDq1e1ybNouY6Y0EwZkVV4Pi3osbKF9tKmyG', 'female', '1984-03-23', 'Bogor', NULL, '1983-03-18 13:41:23', '1987-06-14 20:50:04'),
(420, 'Puti Uyainah S.Sos', 'lasmono.damanik@gmail.com', NULL, '$2y$10$onc4n6NyCh1UVqQ9zZBWou/C.26c3nNo61ChA4TTJcHZfkBWKD0OG', 'female', '1994-03-24', 'Bogor', NULL, '1992-09-19 09:43:45', '2012-11-12 08:51:24'),
(421, 'Dina Iriana Uyainah', 'fathonah.setiawan@gmail.com', NULL, '$2y$10$0GpxWVZjV12HV6Bo.osQ6uSixKI/Oubl6l4sIgdKHPs8.tyeyR5iu', 'female', '1998-07-02', 'Bogor', NULL, '1997-05-10 03:40:49', '2017-09-16 06:37:10'),
(422, 'Ana Purnawati', 'yance.mustofa@gmail.com', NULL, '$2y$10$VMwI/qXwCsNLKBh7Susvzeg33M8OmL1LdEFUrX9Av7O/9SxKi0O.y', 'female', '2007-12-16', 'Bogor', NULL, '1998-03-15 10:07:59', '1996-10-12 05:42:12'),
(423, 'Hamima Purwanti S.Ked', 'gwasita@gmail.com', NULL, '$2y$10$yXI.0eanOAak9VobtG1YlOelsQOmqzSR3A2equowBJ5tJgyzVZSkS', 'female', '2004-08-31', 'Bogor', NULL, '2010-04-17 20:44:48', '2012-12-14 18:19:42'),
(424, 'Titin Ilsa Pudjiastuti', 'limar95@gmail.com', NULL, '$2y$10$uv.NepNTa85KlBLq1q1nf.LuXD0f9szWqT4Nm8nzRaba/mTqhnH72', 'female', '1986-07-17', 'Bogor', NULL, '1991-07-23 21:31:52', '2022-08-08 08:52:38'),
(425, 'Hana Pratiwi', 'rina99@gmail.com', NULL, '$2y$10$LkEb0KEmQ.TkxuTxmq1RpuLdCm8HUtU52hkV3c1pVbpffN4hILNCy', 'female', '1991-09-16', 'Bogor', NULL, '1979-10-05 11:10:04', '2009-09-12 10:43:28'),
(426, 'Michelle Hartati', 'hartana99@gmail.com', NULL, '$2y$10$ZWPjC8Mm7knhIwMIA46rk.8YqHzkLRijcR61zyQnJ68eQah2cKLF6', 'female', '1996-04-23', 'Bogor', NULL, '1993-04-15 16:10:52', '2000-09-18 22:25:19'),
(427, 'Eka Febi Uyainah', 'lestari.muhammad@gmail.com', NULL, '$2y$10$7htCzsLlWApBzADZmNu6NuinXgPo6ZCd4ARFqOZnkDl5.bmCEmcmG', 'female', '2004-11-14', 'Bogor', NULL, '1978-04-07 08:19:35', '2009-06-16 17:24:02'),
(428, 'Eva Yulianti', 'dono.wulandari@gmail.com', NULL, '$2y$10$rDLLEMxC0QXpIw6NRleJYeVAWSIkrPLSNaTpCGkpcLA8xxkNE4gwu', 'female', '2015-12-23', 'Bogor', NULL, '1980-05-01 22:45:20', '1972-07-11 19:17:28'),
(429, 'Tiara Hartati', 'pratiwi.taufan@gmail.com', NULL, '$2y$10$6pyYsa1oBbK0xrnC42o5p.0IdNCWAD3Y/VcT4KXTb6L/6YeFq4Q76', 'female', '2017-04-28', 'Bogor', NULL, '2006-09-14 03:51:17', '1986-02-11 21:56:34'),
(430, 'Irma Laksita', 'clara31@gmail.com', NULL, '$2y$10$KZ2JLicgCXT7FPf9U9n0LeRttVNq27kROZ.adr7Sr2D6MMdW8AAJC', 'female', '2014-02-11', 'Bogor', NULL, '2001-04-10 23:32:40', '1976-08-19 13:06:44'),
(431, 'Paris Melani', 'elvina30@gmail.com', NULL, '$2y$10$GvxzttDQdGXmFULtcDodKeFv.tc4aQRdUjtHkK/RGY88uLMi.hnru', 'female', '2016-08-06', 'Bogor', NULL, '1971-05-10 18:00:25', '2005-04-07 12:41:42'),
(432, 'Chelsea Agustina', 'rahayu47@gmail.com', NULL, '$2y$10$BB0LM1Q2toXFuq2bEJFNuuTuc5OKAxH72Vb9i9w5IYIjwkJEzjve.', 'female', '2013-12-29', 'Bogor', NULL, '1986-06-17 20:28:30', '1970-12-16 21:51:27'),
(433, 'Zalindra Maryati', 'simon.kurniawan@gmail.com', NULL, '$2y$10$cyXXUs6hc07OhknVgA0RieSJwzICM.UVFKS..y9F5vw8pEs9t/hrq', 'female', '1996-09-25', 'Bogor', NULL, '1992-06-21 03:59:41', '2010-08-31 22:00:09'),
(434, 'Ratih Maya Haryanti', 'janet34@gmail.com', NULL, '$2y$10$C6gaVFuR4vdhb4rw1IiexeTUOxGgOOZ5S3RYLUmLZBnL2c.PcyFEW', 'female', '1978-10-22', 'Bogor', NULL, '2013-12-23 14:00:14', '1978-04-03 05:56:04'),
(435, 'Aurora Fujiati', 'jais.situmorang@gmail.com', NULL, '$2y$10$baBFIIQslOcgRMa65ZScGuL1eg6NflanJliPNQbEuzZx78nKmr3Um', 'female', '2005-04-14', 'Bogor', NULL, '2008-03-09 18:35:21', '1999-08-14 19:11:10'),
(436, 'Ika Uchita Haryanti', 'capa.usada@gmail.com', NULL, '$2y$10$V4CqmwgMSmjJ0rLOe6oUh.m6G6U5uW50t4IqPysUHxCXJdakvQ2fq', 'female', '2005-11-03', 'Bogor', NULL, '1975-12-22 20:08:18', '1995-05-23 12:58:50'),
(437, 'Hasna Pertiwi', 'ismail.lailasari@gmail.com', NULL, '$2y$10$dIJ61roJExIqudXHeOu63uPIFbUfZdGA75jLIhu3Dsra7xkVGOIp6', 'female', '1978-04-29', 'Bogor', NULL, '2007-04-25 14:55:21', '1999-01-09 01:15:38'),
(438, 'Lala Suryatmi S.E.I', 'puput.hakim@gmail.com', NULL, '$2y$10$n7MLWnfWupSVgvUwNGo4ZeSU.QQiSi1FXlnr71I/TxJm/BtXlo8du', 'female', '2008-11-28', 'Bogor', NULL, '2017-01-01 08:47:21', '1979-01-13 02:20:47'),
(439, 'Wulan Kusmawati', 'vnarpati@gmail.com', NULL, '$2y$10$ydt0/gUv4DmNhc0Mot8pZOf8xVG9R05rD804UqPI0OD3KVUF1Sy4W', 'female', '1971-01-04', 'Bogor', NULL, '2009-01-21 20:18:53', '2008-09-26 18:18:59'),
(440, 'Tira Mardhiyah', 'epadmasari@gmail.com', NULL, '$2y$10$MKI0fG9LY24NsT9HFJEr9u4KSmW1q7vm4xSCux6twYcsm0opnbH1.', 'female', '2006-11-03', 'Bogor', NULL, '2013-07-31 04:25:20', '2017-12-14 12:15:13'),
(441, 'Maimunah Namaga', 'xsafitri@gmail.com', NULL, '$2y$10$rdWCwQGo0asFNGuze1XA4.uXZ.qemOBLUfPXV1SpUtMMlaWfAynDK', 'female', '1973-04-27', 'Bogor', NULL, '1988-07-11 05:31:49', '1993-10-11 21:19:49'),
(442, 'Kamila Nuraini M.Kom.', 'ramadan.zulfa@gmail.com', NULL, '$2y$10$PCzwv/H/35Gmy4PeNCy4VuNTUYhwHqkikO6vNJZtuUbwX.o1CY.vi', 'female', '1983-10-22', 'Bogor', NULL, '2020-05-14 19:54:32', '1979-02-19 20:34:03'),
(443, 'Rahmi Maria Melani', 'alika.wijayanti@gmail.com', NULL, '$2y$10$bedDV6gqTaExfQy/V5Aon.JxXmkpFkNaaHFHJsk989R0nOqCqzI9K', 'female', '2019-01-28', 'Bogor', NULL, '2003-03-05 08:33:36', '2019-12-24 14:19:42'),
(444, 'Elisa Wirda Suryatmi', 'mariadi.sihombing@gmail.com', NULL, '$2y$10$CzfKpY4ymTmPPhGJu1oNbupQU7tnkczGHfhbiQQrpsPh4wdj8QRlS', 'female', '2010-07-19', 'Bogor', NULL, '1985-07-21 00:59:01', '1975-12-02 22:40:19'),
(445, 'Kayla Handayani', 'yutama@gmail.com', NULL, '$2y$10$v0RzPA2LLK8ya9mFCqAj8.yZjQ0c4fFgpeIJYRyE8.Me3cSH5afK6', 'female', '1983-02-15', 'Bogor', NULL, '2009-07-26 06:08:10', '2000-09-07 08:21:38'),
(446, 'Halima Halimah', 'anita.mardhiyah@gmail.com', NULL, '$2y$10$DHlxsSe9hSRf47mpc6Y0.eWVFiWYMYqnNV5JTGa6Sq8OvBm/1fl4a', 'female', '1995-03-04', 'Bogor', NULL, '1995-07-17 01:15:01', '1980-02-04 07:13:44'),
(447, 'Amalia Andriani S.IP', 'heru86@gmail.com', NULL, '$2y$10$n8tMzb1mZA7EuxsKGZ3Zl.h4kXfCo.dFz3XYUf2ICkm.wRquA2aAC', 'female', '2015-09-09', 'Bogor', NULL, '2005-05-09 18:28:29', '1974-12-04 00:28:19'),
(448, 'Almira Farida S.E.I', 'melani.eka@gmail.com', NULL, '$2y$10$6rY/XdDaNLnzHr9cA6GC..S4ybbpq0R2tkeEAGztVWf0KWX17FDg6', 'female', '1999-09-08', 'Bogor', NULL, '2000-02-02 20:10:10', '1997-03-12 08:03:34'),
(449, 'Humaira Widiastuti S.Pt', 'rahmi26@gmail.com', NULL, '$2y$10$iubhBJifcMKbnHhwizQzluuVB/3fcG0waXJzhn6.rH5oK.wquewSe', 'female', '1970-04-24', 'Bogor', NULL, '1984-12-06 09:34:40', '2011-12-24 23:30:33'),
(450, 'Yani Zulaika', 'mangunsong.ghani@gmail.com', NULL, '$2y$10$pnwuYQCQRjvoiLw61BMoIOi/NGiRzOuxh1ow4DL8c7DKoCZTdPeu.', 'female', '2022-08-08', 'Bogor', NULL, '1984-05-08 08:11:11', '1991-09-30 21:28:50'),
(451, 'Rika Ulva Fujiati', 'qmaryati@gmail.com', NULL, '$2y$10$z79C/fNo5Zyc8GLylB8sj.1hGIIL6v0qAgo1nwUdUhAw4lOBm88b.', 'female', '1979-10-11', 'Bogor', NULL, '2022-04-27 20:22:44', '1983-03-05 12:32:29'),
(452, 'Puspa Keisha Wastuti', 'rahmawati.mahfud@gmail.com', NULL, '$2y$10$GQd9peR6ELCNTGx8VhZ2H.V77HUtIS2zxE89GLu1UI5VRvdbipNcC', 'female', '1993-09-26', 'Bogor', NULL, '2006-10-21 09:27:33', '2004-10-08 11:47:05'),
(453, 'Rika Rahayu S.E.', 'maryati.viktor@gmail.com', NULL, '$2y$10$vNyAqxmdIUhf/JTieQ/Wte5WuLERV1QUTxbYNnQOVlteHrcKIE.fm', 'female', '2001-06-30', 'Bogor', NULL, '2000-03-18 03:21:00', '2013-02-20 19:44:29'),
(454, 'Fitria Rahimah S.Pt', 'lazuardi.darman@gmail.com', NULL, '$2y$10$CRNk8bBF1CR4YL7ubBZGWuYNBrUEgjlJK7TUKQAip6NidCwaVC.V6', 'female', '2017-02-20', 'Bogor', NULL, '2014-08-29 01:04:51', '1972-02-19 03:06:02'),
(455, 'Ratna Humaira Suryatmi S.Ked', 'pangeran73@gmail.com', NULL, '$2y$10$byszIGvBL.YVf3NJV88VRuE487ZcsXHlJcqzJ9zkCuUvFjOFNRQgS', 'female', '1995-01-13', 'Bogor', NULL, '2008-09-23 15:22:15', '1997-05-29 02:45:20'),
(456, 'Kasiyah Nurdiyanti S.Pd', 'embuh.permata@gmail.com', NULL, '$2y$10$dOiYyb/sn3kS8p8KK83ciOuVRiEP8B53gwUDbvzxUMlP7hFJ44Goi', 'female', '2003-08-05', 'Bogor', NULL, '2014-02-07 16:38:55', '2017-12-14 02:51:11'),
(457, 'Nova Lalita Wastuti M.Pd', 'elisa.firgantoro@gmail.com', NULL, '$2y$10$owXiJB6QJZ6E6sekerK0mept4JidsaxlKg0IxfJwab63/QUDpF6Gi', 'female', '1972-01-20', 'Bogor', NULL, '1993-05-28 04:05:23', '2011-10-23 07:04:54'),
(458, 'Usyi Shania Utami', 'anastasia11@gmail.com', NULL, '$2y$10$nr7bf1Fz.tQS4zAC3Bsth.BBlT9DhTOHsCuJYtJygk9x0vAf2ru0i', 'female', '2010-09-20', 'Bogor', NULL, '2022-01-02 10:01:33', '1975-03-13 05:34:58'),
(459, 'Salwa Ika Nuraini', 'yuniar.salimah@gmail.com', NULL, '$2y$10$v8m13mEitHL/HKLqWFeZ/OOB6JiJDbXLm4NedWhqYC/ykE349Mr7K', 'female', '1992-10-25', 'Bogor', NULL, '2013-06-19 18:36:46', '2019-09-21 12:24:06'),
(460, 'Gawati Suryatmi', 'cornelia.handayani@gmail.com', NULL, '$2y$10$EbVW3zXzfEO5fTX9RtA9d.w6nkk4v5nu0xQU5icamxd7cmd4RQSuu', 'female', '1992-09-06', 'Bogor', NULL, '2022-02-21 02:24:18', '2002-07-26 18:31:07'),
(461, 'Eva Wulandari', 'victoria.narpati@gmail.com', NULL, '$2y$10$s67XAnnpt/D4CsgY6Ba0he4doMNd34DvWfVHtBLP1YqMkCwgSpxL6', 'female', '2001-12-02', 'Bogor', NULL, '2017-06-23 09:18:39', '1988-06-18 03:42:23'),
(462, 'Fitriani Palastri', 'rama.natsir@gmail.com', NULL, '$2y$10$78YK6Nn8DE822mwzxxrAOOziX2dHVmUmfuYOQq78IB1/c38g9RcCm', 'female', '1993-11-18', 'Bogor', NULL, '1973-07-15 13:21:25', '1973-04-16 23:19:30'),
(463, 'Eka Puspasari', 'padmi74@gmail.com', NULL, '$2y$10$cJmV/Nsn7GtqPCVb83ehPOVmJay.hAetEiM4i1rjWT6TVNoVfvyPG', 'female', '2022-08-28', 'Bogor', NULL, '1998-12-10 03:05:22', '1988-08-01 21:32:39'),
(464, 'Sabrina Eva Uyainah S.Sos', 'mhardiansyah@gmail.com', NULL, '$2y$10$Wx2IHU6GBBYxGgcHwVWrQu/QC9Qm7QWkQ9IrO6AmXE8PQXBd79Mp.', 'female', '1972-02-29', 'Bogor', NULL, '1987-05-27 20:44:20', '1990-10-30 11:08:00'),
(465, 'Kani Zulaika', 'luwar.adriansyah@gmail.com', NULL, '$2y$10$shCQTt./SP09Yx7xy08g7OqOcXP.Rv8a0rKqxO8N1go/62fCeDGye', 'female', '1998-11-17', 'Bogor', NULL, '1995-08-14 02:58:01', '2007-06-06 10:25:40'),
(466, 'Dinda Handayani', 'xrahmawati@gmail.com', NULL, '$2y$10$T8SaRcvW9xwpx6fQS3m.y.Ow1.xvsHCjdpqLl4rVdjtY0Dlk90S3O', 'female', '1996-02-13', 'Bogor', NULL, '1972-03-11 16:56:44', '1981-01-19 22:28:29'),
(467, 'Silvia Malika Mandasari S.Gz', 'purwa88@gmail.com', NULL, '$2y$10$sQ9/9VKJS.tEvcJm7OnOSOQJCSopISKQZHY4OwHH5yYDJHHQe4vA2', 'female', '1983-05-10', 'Bogor', NULL, '1992-05-21 02:17:51', '1988-06-16 06:12:25'),
(468, 'Kania Zulfa Sudiati M.TI.', 'qori.wijaya@gmail.com', NULL, '$2y$10$DWfC17YUgWsuu1vX7UQ/nOAb4NUDmQoWtoP.1mCk/lcGe0AJe7X3O', 'female', '1994-03-26', 'Bogor', NULL, '1986-11-11 02:15:29', '2009-05-23 11:07:20'),
(469, 'Usyi Safitri M.M.', 'nasyiah.ina@gmail.com', NULL, '$2y$10$7jvU.lQ9yBIyN9EpXEcCQuy7C.OGzpJxblexabXxAEzDdkDxQhObK', 'female', '2014-09-25', 'Bogor', NULL, '2012-02-19 10:21:27', '2012-06-25 13:43:50'),
(470, 'Oni Yunita Oktaviani M.Pd', 'vero.waskita@gmail.com', NULL, '$2y$10$HuK9a50VhyfHP28dbslX6uN74vp/G.XKx3Bcw2EX0C/U0MHNDZCmK', 'female', '2010-04-25', 'Bogor', NULL, '1981-05-08 15:35:01', '1993-01-02 21:15:40'),
(471, 'Laras Astuti', 'faizah60@gmail.com', NULL, '$2y$10$yUp3kT1FNJHyN.HnUK7/rOw5q/KeRbByMWeCoGH.3wtK/iLpia9Ya', 'female', '2016-12-05', 'Bogor', NULL, '2015-12-17 09:38:50', '1990-03-22 03:40:43'),
(472, 'Ophelia Wahyuni S.I.Kom', 'winarsih.yunita@gmail.com', NULL, '$2y$10$jSNlZiBKsaIJ0IqFEcJHLOJQFmVcQLuhQqKEn3M2DAUVy8.iQQVXe', 'female', '1993-01-30', 'Bogor', NULL, '1999-11-02 22:20:23', '2017-04-15 00:07:29'),
(473, 'Shania Mala Widiastuti S.T.', 'jaswadi29@gmail.com', NULL, '$2y$10$mk9CE2yzDMh5ix8VvlE7cOR38Au7LWAjzTa5/vkJosI5/.Y2x1jWS', 'female', '1995-03-27', 'Bogor', NULL, '1976-12-08 03:03:43', '1990-05-14 13:03:15'),
(474, 'Diah Safina Farida', 'irahmawati@gmail.com', NULL, '$2y$10$rvgNj7eG/9mN4YuK7i9oCOfHdcimvgtasEnUcxhcjMGBIryha9d9W', 'female', '1993-09-09', 'Bogor', NULL, '1970-05-20 14:57:21', '1997-03-06 20:09:41'),
(475, 'Tami Maria Mardhiyah S.Pd', 'yulianti.raditya@gmail.com', NULL, '$2y$10$.nvNtqUaJXYvhEFHwGBSiOrLM/U8yc7Hcq4DJd3ZhFM6wPEvZQ2m2', 'female', '2019-06-13', 'Bogor', NULL, '1983-11-18 16:47:11', '1974-08-14 06:33:07'),
(476, 'Betania Farah Fujiati S.H.', 'ratna20@gmail.com', NULL, '$2y$10$B4RuFM3Vamk.OLC38LVYg.edPPGSMcnJgMIst1kObA88kyJ4mjo8q', 'female', '1987-10-18', 'Bogor', NULL, '1979-10-19 09:08:07', '1996-04-30 17:38:29'),
(477, 'Ratih Zulaika', 'nabila39@gmail.com', NULL, '$2y$10$yoGLJMUeui8j6LZzfaJFr..FzktpxdAXcgSuvEOMV7ZlP.cr9JxRm', 'female', '2008-03-15', 'Bogor', NULL, '1980-01-07 14:38:02', '1983-01-14 23:15:39'),
(478, 'Ghaliyati Halimah', 'hnasyidah@gmail.com', NULL, '$2y$10$jA7T/DPmSOaT.V3IUwngE.V0N9FbeCTXGS7MY012bydUDrPUzSx7.', 'female', '1990-04-18', 'Bogor', NULL, '1993-06-06 02:45:39', '2022-03-20 04:49:41'),
(479, 'Dian Fathonah Pratiwi S.Pt', 'smahendra@gmail.com', NULL, '$2y$10$7OkAnyqsAIcbFmi/rGpQ4ul6i6EOZGPY1uVZsLSUE3t86g3sZ8wza', 'female', '2020-02-09', 'Bogor', NULL, '1993-08-04 23:29:44', '1999-07-02 06:20:05'),
(480, 'Yance Mulyani', 'saputra.puput@gmail.com', NULL, '$2y$10$kLitVya5PcEhrbwuTPC.ZOa9GOzohgqU7DRpuoBb0EUSO8Woe1woO', 'female', '1998-06-16', 'Bogor', NULL, '2005-09-14 15:02:04', '1997-06-04 13:11:42'),
(481, 'Ella Ida Handayani', 'dacin94@gmail.com', NULL, '$2y$10$AKeXNpmEF4.L2QsIfTHv9eCTqh043vaY3JBhovve/6AOYaMfAiukG', 'female', '2012-08-17', 'Bogor', NULL, '1972-01-21 07:07:44', '1977-04-26 09:41:14');
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `gender`, `birth_date`, `birth_place`, `remember_token`, `created_at`, `updated_at`) VALUES
(482, 'Maya Fujiati', 'wzulaika@gmail.com', NULL, '$2y$10$l9tBfm675tkJrHLtg713Z.8V0FO6MCia5OYyUsTG/mIfVYoVRjWW2', 'female', '1993-08-25', 'Bogor', NULL, '2017-07-05 13:57:24', '1994-07-07 16:52:21'),
(483, 'Elma Kamila Mayasari', 'ksafitri@gmail.com', NULL, '$2y$10$zUaqz81RtjnIFKRwGGWGJ.VOJ1jcpsdUubqmAy17Xg77F.1Jkwliu', 'female', '1992-12-06', 'Bogor', NULL, '1978-11-10 12:11:33', '1985-05-06 04:09:41'),
(484, 'Kayla Laksita', 'kanda90@gmail.com', NULL, '$2y$10$wT.g/qx57TyAbJx2R3YssOb12uUH6AgFKVG0JakHcNpC5EBxFZqrW', 'female', '1972-02-13', 'Bogor', NULL, '2010-02-15 14:24:01', '2011-09-13 01:16:58'),
(485, 'Ulva Wulandari', 'hwinarsih@gmail.com', NULL, '$2y$10$04t/4ab2Zuf8RYyvWbZlBOevPXAXv0dlwJrAsRGJPncl.TUycr5.2', 'female', '1994-04-25', 'Bogor', NULL, '2007-10-07 15:58:35', '2004-02-17 16:34:22'),
(486, 'Cinthia Halimah', 'uyainah.violet@gmail.com', NULL, '$2y$10$q9cymzEvpvHuLXc6cC0tousfoQ72aZHC551aubUTdNM06srlyQ6nS', 'female', '2011-10-22', 'Bogor', NULL, '1996-09-04 23:01:51', '1977-03-16 21:26:50'),
(487, 'Kamila Siti Nuraini', 'gaduh.uyainah@gmail.com', NULL, '$2y$10$qYIahflprilvZzBbzKHNXucqZ1mU.eeV5Bgt.SwWAGSbsQtR2j6kG', 'female', '1974-07-03', 'Bogor', NULL, '1996-03-01 09:31:34', '2004-02-14 20:57:40'),
(488, 'Titi Anggraini', 'keisha49@gmail.com', NULL, '$2y$10$NGcsZJUeEhG/RH2MkAvg9OeZgAokx5FnYYq1pput0opVggJ6x.fLC', 'female', '2020-07-22', 'Bogor', NULL, '2009-06-18 10:21:56', '1972-10-30 18:39:31'),
(489, 'Icha Hartati', 'yance43@gmail.com', NULL, '$2y$10$hxWYBr4hgj8OBwZLl/IlWeuXJNjpiIB4dmQl8FBDR/J/io/j9m08y', 'female', '1999-01-24', 'Bogor', NULL, '2008-06-02 14:44:12', '2003-06-23 21:37:46'),
(490, 'Puji Suci Laksita', 'karja.laksita@gmail.com', NULL, '$2y$10$SM2fCyqVc6PAVMNrJKIx.O6P/m7JdYferV7JECN1IQ4OrWskIrk52', 'female', '1980-05-04', 'Bogor', NULL, '1992-02-15 07:52:24', '2000-07-26 05:51:30'),
(491, 'Winda Yuliarti', 'yunita70@gmail.com', NULL, '$2y$10$MWHKFe3FO9A4Zs.uskSvR.vS00PAqKoOLH67NcSBzyHSbMzkHn95C', 'female', '2006-11-18', 'Bogor', NULL, '2019-08-05 08:34:44', '2015-02-04 13:04:56'),
(492, 'Ratih Halimah S.Sos', 'prabawa.widiastuti@gmail.com', NULL, '$2y$10$rgPQPxva0EF6qiaMmb1hWuM4cnVRGRPwbBMV8PHh5ElG.3QIJoOLO', 'female', '1999-09-12', 'Bogor', NULL, '1984-01-25 04:24:54', '1988-10-24 18:57:42'),
(493, 'Laila Amalia Hastuti M.Kom.', 'qnugroho@gmail.com', NULL, '$2y$10$PYu8n7BzvWeUXvvVjERmcuIXAdHUBhQ.A3aQEGMpadkidLK1htN0S', 'female', '1985-08-28', 'Bogor', NULL, '2009-11-16 03:40:03', '2006-04-11 15:08:57'),
(494, 'Raina Sakura Novitasari', 'lega63@gmail.com', NULL, '$2y$10$KbNig1d8L0rFDRHJOpWqB.sX0P4Y7VZOoeP8eU4YjfP45xrCMiCty', 'female', '1996-09-14', 'Bogor', NULL, '1983-08-12 10:15:18', '1971-06-18 04:35:26'),
(495, 'Cindy Mayasari S.IP', 'cmelani@gmail.com', NULL, '$2y$10$MeLNggKkk0GCCrtaaoE3A.UKnxX5PqS5RogEjvlZ/w/itLEtDrYmC', 'female', '1978-06-17', 'Bogor', NULL, '1976-01-12 18:49:17', '1986-11-24 16:31:50'),
(496, 'Ifa Yance Palastri S.E.', 'purwanti.yessi@gmail.com', NULL, '$2y$10$QVFWKWa3lN1nKUL3tTTWKeu1oAwtSS.XzohbQPknZcmFEOOhgmemm', 'female', '1976-08-19', 'Bogor', NULL, '2014-12-19 16:25:50', '1995-11-17 04:24:39'),
(497, 'Keisha Yulianti', 'hardiansyah.endah@gmail.com', NULL, '$2y$10$g7ox7XqZppc8vhXrTAwDcebzoXRFvodnxWgIEMJ3b48EVXTbwM6ci', 'female', '2009-10-25', 'Bogor', NULL, '2009-05-10 21:57:34', '1988-11-24 11:39:12'),
(498, 'Ghaliyati Hartati', 'yolanda.elvina@gmail.com', NULL, '$2y$10$WIzmugS3yw7ZpyJO27Kp6emZAZJcmOjS1VNj1XX.QKFs/hX3DD42S', 'female', '1986-08-22', 'Bogor', NULL, '1987-02-23 11:34:49', '2015-04-20 22:38:10'),
(499, 'Nadine Gina Pudjiastuti S.Sos', 'ppurwanti@gmail.com', NULL, '$2y$10$e/oENbKEqUIGhEwiJsGhgulTPKzLxNlD1V/ecz2luZcwHzakaXvlG', 'female', '2000-01-04', 'Bogor', NULL, '1983-07-17 09:50:49', '2011-12-03 06:30:31'),
(500, 'Amalia Kamila Rahayu', 'zulaikha25@gmail.com', NULL, '$2y$10$A5iZ5b.crzYI3RY1GXAKnOQqaiD7ik1Y2teYW1PjV15E2h7nDw7mC', 'female', '1993-05-11', 'Bogor', NULL, '2006-08-06 05:49:13', '1983-04-30 15:52:28'),
(501, 'Rina Purnawati S.Ked', 'cnapitupulu@gmail.com', NULL, '$2y$10$AKHTsa8sQ41DBUXcgII7/.5.O7S9KNocYZhUGTkVbcah6vRHTBXsG', 'female', '1977-09-05', 'Bogor', NULL, '2018-04-14 11:14:32', '1978-01-27 14:11:56'),
(502, 'Dewi Umi Rahayu', 'bakijan.uyainah@gmail.com', NULL, '$2y$10$/frVLVYgLyr5YPuu5qOPbe0RCQSc1NTTYQq63G3xlTTiNx2d7pk/q', 'female', '2021-06-27', 'Bogor', NULL, '2010-10-08 09:18:24', '1982-07-24 17:31:59'),
(503, 'Rini Agustina', 'sirait.jelita@gmail.com', NULL, '$2y$10$u/1UaQWPdcD4pu19M7Pf0ObiAOSg527K/wYZETVQZoLxrKrkwXH/6', 'female', '2019-11-18', 'Bogor', NULL, '2002-12-16 07:59:21', '2015-05-29 05:47:03'),
(504, 'Dalima Mulyani', 'melani.yahya@gmail.com', NULL, '$2y$10$eUhsD4jqAiH8TMv8U9RsmO147/rz0fhzNXnJEhBpvD6jLQzsO3.kC', 'female', '1995-07-19', 'Bogor', NULL, '1980-09-20 06:47:10', '1977-11-05 21:07:31'),
(505, 'Lili Farah Hartati M.M.', 'yjanuar@gmail.com', NULL, '$2y$10$WNCsaE.GAzP0nTiiJkbejuAj/MIBr9qOkT.EjHcDvOSsFLnOtaH76', 'female', '1994-04-06', 'Bogor', NULL, '2011-04-13 00:33:45', '1991-05-07 22:35:57'),
(506, 'Ghaliyati Laksita', 'yuliarti.prabu@gmail.com', NULL, '$2y$10$OxadTPuVMIbxDSY94HxD/uXodcLSG968d/gBsltS4fbHeXpdrorF6', 'female', '1985-12-25', 'Bogor', NULL, '2000-11-14 09:19:12', '1985-11-05 06:13:32'),
(507, 'Melinda Rahayu S.Sos', 'diah75@gmail.com', NULL, '$2y$10$R05FFtIoPF7phoMFaonwJuoOKVyO1XTQ4xuXkFW/BxMm/6arNr4CW', 'female', '2015-10-31', 'Bogor', NULL, '2007-06-26 12:27:44', '2011-06-01 23:56:45'),
(508, 'Mila Wani Yolanda M.Kom.', 'rpalastri@gmail.com', NULL, '$2y$10$ye42AxNZUKpJ93reehho6.Iz.b9gkF9SxczmL92Rfn9KB/zN8EzXy', 'female', '1970-11-11', 'Bogor', NULL, '2013-07-31 05:12:13', '2005-10-14 06:49:13'),
(510, 'hadis kusnias', 'chrryctr150912222@gmail.com', NULL, '$2y$10$MiJLZhaGTwjXLSizhbF39.TMUcqVxBxfH6akYT7LFkW7.Nx6B9CqK', 'male', '1990-07-12', 'Bogor', NULL, '2022-12-17 08:53:19', '2022-12-17 08:53:19'),
(512, 'hadis kusnias22', 'chrryctr1509121222@gmail.com', NULL, '$2y$10$yzE/L8q6Cbd3RMCzH1x94ezIA0Ssf6INjHYESsT9P5CfZCHb2tEgu', 'male', '1990-07-12', 'Bogor', NULL, '2022-12-17 08:54:46', '2022-12-17 08:54:46'),
(513, 'hadis kusnias22', 'pas@gmail.com', NULL, '$2y$10$3uywgtJNzvTHjciLLV0vqecQGCRxmTxjvK8UnAydAOwgtkkwzarmG', 'male', '1990-07-12', 'Bogor', NULL, '2022-12-17 08:55:04', '2022-12-17 08:55:04'),
(515, 'hadis kusnias22', 'pasa@gmail.com', NULL, '$2y$10$dwVJOMNLMhrtAG.r14Xmr.ASGZ7RiB0UOaUHuohuSEhUeoTpaW4ta', 'male', '1990-07-12', 'Bogor', NULL, '2022-12-17 08:55:23', '2022-12-17 08:55:23'),
(516, 'hadis kusnias22', 'pasa@gmail.comw', NULL, '$2y$10$Nh3O/Yp5tbKbhnKcWUrGSu/lryaAnJbb46T1OgLwoZkBCdM3o3khW', 'male', '1990-07-12', 'Bogor', NULL, '2022-12-17 08:56:49', '2022-12-17 08:56:49'),
(517, 'hadis kusnias22', 'pas1a@gmail.comw', NULL, '$2y$10$LiLJ/x.DBdSLngAynuz0BujFJXAr.RjVU4PMD4dY25JXdyuX1jbb2', 'male', '1990-07-12', 'Bogor', NULL, '2022-12-17 09:04:51', '2022-12-17 09:04:51');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `makanans`
--
ALTER TABLE `makanans`
  ADD PRIMARY KEY (`id`);

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
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `makanans`
--
ALTER TABLE `makanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=519;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
