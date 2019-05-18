-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2019-05-18 09:18:02
-- 服务器版本： 5.7.22-0ubuntu18.04.1
-- PHP 版本： 7.2.5-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `sister`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, '首页', 'fa-bar-chart', '/', NULL, NULL, '2019-05-17 20:20:05'),
(2, 0, 5, '系统管理', 'fa-tasks', NULL, NULL, NULL, '2019-05-18 17:01:20'),
(3, 2, 6, '管理员', 'fa-users', 'auth/users', NULL, NULL, '2019-05-18 17:01:20'),
(4, 2, 7, '角色', 'fa-user', 'auth/roles', NULL, NULL, '2019-05-18 17:01:20'),
(5, 2, 8, '权限', 'fa-ban', 'auth/permissions', NULL, NULL, '2019-05-18 17:01:20'),
(6, 2, 9, '菜单', 'fa-bars', 'auth/menu', NULL, NULL, '2019-05-18 17:01:20'),
(7, 2, 10, '操作日志', 'fa-history', 'auth/logs', NULL, NULL, '2019-05-18 17:01:20'),
(8, 0, 2, '用户管理', 'fa-user-plus', NULL, NULL, '2019-05-17 20:25:52', '2019-05-17 20:27:21'),
(9, 8, 3, '用户列表', 'fa-user', '/users', NULL, '2019-05-17 20:26:44', '2019-05-18 17:01:20'),
(10, 0, 4, '资讯管理', 'fa-bars', NULL, NULL, '2019-05-18 17:01:13', '2019-05-18 17:01:20'),
(11, 10, 0, '资讯列表', 'fa-bars', '/articles', NULL, '2019-05-18 17:01:43', '2019-05-18 17:01:43'),
(12, 10, 0, '类型列表', 'fa-bars', '/category', NULL, '2019-05-18 17:02:27', '2019-05-18 17:02:27');

-- --------------------------------------------------------

--
-- 表的结构 `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '192.168.10.1', '[]', '2019-05-17 20:18:26', '2019-05-17 20:18:26'),
(2, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-05-17 20:19:07', '2019-05-17 20:19:07'),
(3, 1, 'admin/auth/menu/1/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-05-17 20:19:28', '2019-05-17 20:19:28'),
(4, 1, 'admin/auth/menu/1', 'PUT', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"alBiFiUrES4yHRS6vblrHgfGLn41TkFsYYezDA3d\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/sister.test\\/admin\\/auth\\/menu\"}', '2019-05-17 20:20:05', '2019-05-17 20:20:05'),
(5, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-05-17 20:20:07', '2019-05-17 20:20:07'),
(6, 1, 'admin/auth/menu/2/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-05-17 20:20:14', '2019-05-17 20:20:14'),
(7, 1, 'admin/auth/menu/2', 'PUT', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"alBiFiUrES4yHRS6vblrHgfGLn41TkFsYYezDA3d\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/sister.test\\/admin\\/auth\\/menu\"}', '2019-05-17 20:20:25', '2019-05-17 20:20:25'),
(8, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-05-17 20:20:26', '2019-05-17 20:20:26'),
(9, 1, 'admin/auth/menu/3/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-05-17 20:20:39', '2019-05-17 20:20:39'),
(10, 1, 'admin/auth/menu/3', 'PUT', '192.168.10.1', '{\"parent_id\":\"2\",\"title\":\"\\u7ba1\\u7406\\u5458\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"alBiFiUrES4yHRS6vblrHgfGLn41TkFsYYezDA3d\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/sister.test\\/admin\\/auth\\/menu\"}', '2019-05-17 20:21:02', '2019-05-17 20:21:02'),
(11, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-05-17 20:21:03', '2019-05-17 20:21:03'),
(12, 1, 'admin/auth/menu/4/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-05-17 20:21:08', '2019-05-17 20:21:08'),
(13, 1, 'admin/auth/menu/4', 'PUT', '192.168.10.1', '{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"alBiFiUrES4yHRS6vblrHgfGLn41TkFsYYezDA3d\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/sister.test\\/admin\\/auth\\/menu\"}', '2019-05-17 20:21:17', '2019-05-17 20:21:17'),
(14, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-05-17 20:21:19', '2019-05-17 20:21:19'),
(15, 1, 'admin/auth/menu/5/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-05-17 20:21:24', '2019-05-17 20:21:24'),
(16, 1, 'admin/auth/menu/5', 'PUT', '192.168.10.1', '{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"alBiFiUrES4yHRS6vblrHgfGLn41TkFsYYezDA3d\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/sister.test\\/admin\\/auth\\/menu\"}', '2019-05-17 20:21:32', '2019-05-17 20:21:32'),
(17, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-05-17 20:21:33', '2019-05-17 20:21:33'),
(18, 1, 'admin/auth/menu/6/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-05-17 20:21:46', '2019-05-17 20:21:46'),
(19, 1, 'admin/auth/menu/6', 'PUT', '192.168.10.1', '{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"alBiFiUrES4yHRS6vblrHgfGLn41TkFsYYezDA3d\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/sister.test\\/admin\\/auth\\/menu\"}', '2019-05-17 20:21:57', '2019-05-17 20:21:57'),
(20, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-05-17 20:21:58', '2019-05-17 20:21:58'),
(21, 1, 'admin/auth/menu/7/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-05-17 20:22:03', '2019-05-17 20:22:03'),
(22, 1, 'admin/auth/menu/7', 'PUT', '192.168.10.1', '{\"parent_id\":\"2\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"alBiFiUrES4yHRS6vblrHgfGLn41TkFsYYezDA3d\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/sister.test\\/admin\\/auth\\/menu\"}', '2019-05-17 20:22:15', '2019-05-17 20:22:15'),
(23, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-05-17 20:22:17', '2019-05-17 20:22:17'),
(24, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-05-17 20:22:36', '2019-05-17 20:22:36'),
(25, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-05-17 20:25:09', '2019-05-17 20:25:09'),
(26, 1, 'admin/auth/menu', 'POST', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-user\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"tIQJO16Vd62YvfaeSJ24Vvn36NuzwLbBNxIaVSHM\"}', '2019-05-17 20:25:52', '2019-05-17 20:25:52'),
(27, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-05-17 20:25:53', '2019-05-17 20:25:53'),
(28, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-05-17 20:26:00', '2019-05-17 20:26:00'),
(29, 1, 'admin/auth/menu', 'POST', '192.168.10.1', '{\"_token\":\"tIQJO16Vd62YvfaeSJ24Vvn36NuzwLbBNxIaVSHM\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-05-17 20:26:08', '2019-05-17 20:26:08'),
(30, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-05-17 20:26:09', '2019-05-17 20:26:09'),
(31, 1, 'admin/auth/menu', 'POST', '192.168.10.1', '{\"parent_id\":\"8\",\"title\":\"\\u7528\\u6237\\u5217\\u8868\",\"icon\":\"fa-bars\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"tIQJO16Vd62YvfaeSJ24Vvn36NuzwLbBNxIaVSHM\"}', '2019-05-17 20:26:43', '2019-05-17 20:26:43'),
(32, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-05-17 20:26:45', '2019-05-17 20:26:45'),
(33, 1, 'admin/auth/menu/8/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-05-17 20:27:03', '2019-05-17 20:27:03'),
(34, 1, 'admin/auth/menu/8', 'PUT', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-user-plus\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"tIQJO16Vd62YvfaeSJ24Vvn36NuzwLbBNxIaVSHM\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/sister.test\\/admin\\/auth\\/menu\"}', '2019-05-17 20:27:21', '2019-05-17 20:27:21'),
(35, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-05-17 20:27:22', '2019-05-17 20:27:22'),
(36, 1, 'admin/auth/menu/9/edit', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-05-17 20:27:28', '2019-05-17 20:27:28'),
(37, 1, 'admin/auth/menu/9', 'PUT', '192.168.10.1', '{\"parent_id\":\"8\",\"title\":\"\\u7528\\u6237\\u5217\\u8868\",\"icon\":\"fa-user\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"tIQJO16Vd62YvfaeSJ24Vvn36NuzwLbBNxIaVSHM\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/sister.test\\/admin\\/auth\\/menu\"}', '2019-05-17 20:27:35', '2019-05-17 20:27:35'),
(38, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-05-17 20:27:36', '2019-05-17 20:27:36'),
(39, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-05-17 20:27:40', '2019-05-17 20:27:40'),
(40, 1, 'admin/users', 'GET', '192.168.10.1', '[]', '2019-05-17 20:35:02', '2019-05-17 20:35:02'),
(41, 1, 'admin/users', 'GET', '192.168.10.1', '[]', '2019-05-17 20:35:10', '2019-05-17 20:35:10'),
(42, 1, 'admin/users', 'GET', '192.168.10.1', '[]', '2019-05-17 20:36:00', '2019-05-17 20:36:00'),
(43, 1, 'admin/users', 'GET', '192.168.10.1', '[]', '2019-05-17 20:37:19', '2019-05-17 20:37:19'),
(44, 1, 'admin/users', 'GET', '192.168.10.1', '[]', '2019-05-17 20:38:07', '2019-05-17 20:38:07'),
(45, 1, 'admin/users', 'GET', '192.168.10.1', '[]', '2019-05-17 20:54:57', '2019-05-17 20:54:57'),
(46, 1, 'admin', 'GET', '192.168.10.1', '[]', '2019-05-18 14:21:12', '2019-05-18 14:21:12'),
(47, 1, 'admin/users', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-05-18 14:21:19', '2019-05-18 14:21:19'),
(48, 1, 'admin/auth/logout', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-05-18 14:21:31', '2019-05-18 14:21:31'),
(49, 1, 'admin', 'GET', '192.168.10.1', '[]', '2019-05-18 16:54:47', '2019-05-18 16:54:47'),
(50, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-05-18 17:00:53', '2019-05-18 17:00:53'),
(51, 1, 'admin/auth/menu', 'POST', '192.168.10.1', '{\"parent_id\":\"0\",\"title\":\"\\u8d44\\u8baf\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"nH5bwWVWholldz9GNAWefFpgMPIPxaRq0w6YhSPb\"}', '2019-05-18 17:01:13', '2019-05-18 17:01:13'),
(52, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-05-18 17:01:14', '2019-05-18 17:01:14'),
(53, 1, 'admin/auth/menu', 'POST', '192.168.10.1', '{\"_token\":\"nH5bwWVWholldz9GNAWefFpgMPIPxaRq0w6YhSPb\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9}]},{\\\"id\\\":10},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2019-05-18 17:01:20', '2019-05-18 17:01:20'),
(54, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-05-18 17:01:20', '2019-05-18 17:01:20'),
(55, 1, 'admin/auth/menu', 'POST', '192.168.10.1', '{\"parent_id\":\"10\",\"title\":\"\\u8d44\\u8baf\\u5217\\u8868\",\"icon\":\"fa-bars\",\"uri\":\"\\/articles\",\"roles\":[null],\"permission\":null,\"_token\":\"nH5bwWVWholldz9GNAWefFpgMPIPxaRq0w6YhSPb\"}', '2019-05-18 17:01:43', '2019-05-18 17:01:43'),
(56, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-05-18 17:01:44', '2019-05-18 17:01:44'),
(57, 1, 'admin/auth/menu', 'POST', '192.168.10.1', '{\"parent_id\":\"10\",\"title\":\"\\u7c7b\\u578b\\u5217\\u8868\",\"icon\":\"fa-bars\",\"uri\":\"\\/category\",\"roles\":[null],\"permission\":null,\"_token\":\"nH5bwWVWholldz9GNAWefFpgMPIPxaRq0w6YhSPb\"}', '2019-05-18 17:02:27', '2019-05-18 17:02:27'),
(58, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-05-18 17:02:27', '2019-05-18 17:02:27'),
(59, 1, 'admin/auth/menu', 'GET', '192.168.10.1', '[]', '2019-05-18 17:02:32', '2019-05-18 17:02:32'),
(60, 1, 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-05-18 17:02:43', '2019-05-18 17:02:43'),
(61, 1, 'admin/articles', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-05-18 17:02:57', '2019-05-18 17:02:57'),
(62, 1, 'admin/category', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-05-18 17:03:03', '2019-05-18 17:03:03'),
(63, 1, 'admin/articles', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-05-18 17:03:19', '2019-05-18 17:03:19'),
(64, 1, 'admin/articles/create', 'GET', '192.168.10.1', '{\"_pjax\":\"#pjax-container\"}', '2019-05-18 17:03:25', '2019-05-18 17:03:25'),
(65, 1, 'admin/articles/create', 'GET', '192.168.10.1', '[]', '2019-05-18 17:03:59', '2019-05-18 17:03:59'),
(66, 1, 'admin/articles/create', 'GET', '192.168.10.1', '[]', '2019-05-18 17:04:02', '2019-05-18 17:04:02'),
(67, 1, 'admin/articles/create', 'GET', '192.168.10.1', '[]', '2019-05-18 17:17:36', '2019-05-18 17:17:36');

-- --------------------------------------------------------

--
-- 表的结构 `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2019-05-17 12:08:31', '2019-05-17 12:08:31');

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$tnl7Pk.2wZUriAIAQiD.CO/7tuyrZ0D6/01s8XHl92V3tFBNQ737m', 'Administrator', NULL, 'u0A8B5hXjTvb4JT5ck2ThnY45i0ogGsjMTjareVw5s4FpMLhpEooyFCpDMIy', '2019-05-17 12:08:31', '2019-05-17 12:08:31');

-- --------------------------------------------------------

--
-- 表的结构 `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转储表的索引
--

--
-- 表的索引 `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- 表的索引 `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- 表的索引 `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- 表的索引 `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- 表的索引 `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- 表的索引 `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- 表的索引 `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- 表的索引 `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用表AUTO_INCREMENT `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- 使用表AUTO_INCREMENT `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 使用表AUTO_INCREMENT `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
