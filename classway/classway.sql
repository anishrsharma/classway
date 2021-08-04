-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 04, 2021 at 08:19 AM
-- Server version: 8.0.16
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classway`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_user`
--

CREATE TABLE `account_user` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `account_user`
--

INSERT INTO `account_user` (`id`, `first_name`, `last_name`, `email`, `password`) VALUES
(17, 'Anish', 'Raj', 'a@a.com', '1234'),
(18, 'Steve', 'McGlen', 'b@b.com', 'b'),
(19, 'Rajesh', 'Kumar', 'c@c.com', 'c'),
(20, 'Ram', 'Kumar', 'd@d.com', 'd'),
(21, 'e', 'e', 'e@e.com', 'e'),
(22, 'f', 'f', 'f@f.com', 'f');

-- --------------------------------------------------------

--
-- Table structure for table `app_classway_answer`
--

CREATE TABLE `app_classway_answer` (
  `id` bigint(20) NOT NULL,
  `ans_desc` longtext NOT NULL,
  `ans_date` datetime(6) NOT NULL,
  `ans_marks` int(11) DEFAULT NULL,
  `qn_id_id` bigint(20) NOT NULL,
  `user_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `app_classway_answer`
--

INSERT INTO `app_classway_answer` (`id`, `ans_desc`, `ans_date`, `ans_marks`, `qn_id_id`, `user_id_id`) VALUES
(1, 'adad', '2021-05-21 15:29:10.736862', 0, 1, 17),
(2, 'oop answer', '2021-05-21 15:54:22.027689', 0, 2, 17),
(3, 'hiii this is my ans', '2021-05-21 15:56:28.662469', 0, 2, 22),
(4, 'hii this my ans', '2021-05-21 16:02:38.818092', 2, 2, 19),
(5, '1st java ans', '2021-05-21 17:10:19.783077', 0, 1, 19),
(6, 'hii thermody', '2021-05-23 15:07:08.500913', 1, 3, 20),
(7, 'method overloading ans by f', '2021-05-25 14:00:10.605939', NULL, 1, 22),
(8, 'ans by a', '2021-05-25 14:35:57.224523', 10, 7, 17),
(9, 'sw', '2021-05-27 16:57:31.732295', 11, 5, 18),
(10, 'WS', '2021-05-27 16:57:36.719884', 1, 3, 18),
(11, 'DW', '2021-05-27 16:57:40.455739', 2, 4, 18),
(12, 'DW', '2021-05-27 16:57:48.039046', 2, 6, 18),
(13, 'bio genetics ans', '2021-06-01 15:54:25.893641', NULL, 8, 17),
(14, 'bio genetics q2 ans', '2021-06-01 15:54:38.738061', NULL, 9, 17),
(25, 'dawdadadawadadawd', '2021-06-11 14:19:47.776084', NULL, 13, 17),
(26, 'zdsdfzbvdff', '2021-06-14 14:38:38.447700', NULL, 14, 17);

-- --------------------------------------------------------

--
-- Table structure for table `app_classway_class`
--

CREATE TABLE `app_classway_class` (
  `id` bigint(20) NOT NULL,
  `class_name` varchar(30) NOT NULL,
  `class_subject` varchar(30) NOT NULL,
  `class_code` varchar(7) NOT NULL,
  `class_admin` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `app_classway_class`
--

INSERT INTO `app_classway_class` (`id`, `class_name`, `class_subject`, `class_code`, `class_admin`) VALUES
(46, 'Physics[2021]', 'Thermodynamics', '5656R2I', '17'),
(48, 'Chemistry 2021', 'Molecules', 'JBB0ICE', '17'),
(50, 'Biology 2021', 'Genetics', 'VKW5ELU', '18'),
(52, 'Biology 2020', 'Health and Hygeine', 'TTDDHBY', '18'),
(58, 'batch 2021', 'data structure', 'VCIXKOM', '22'),
(96, 'New class', 'subjectx', 'ZSIO08X', '19'),
(97, 'sawd', 'dwq', 'DUHCTUT', '17'),
(101, 'my new class', 'my subject', 'TS5LI5T', '17');

-- --------------------------------------------------------

--
-- Table structure for table `app_classway_enroll`
--

CREATE TABLE `app_classway_enroll` (
  `id` bigint(20) NOT NULL,
  `class_id_id` bigint(20) NOT NULL,
  `user_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `app_classway_enroll`
--

INSERT INTO `app_classway_enroll` (`id`, `class_id_id`, `user_id_id`) VALUES
(20, 52, 19),
(22, 50, 20),
(23, 48, 20),
(26, 50, 21),
(28, 52, 22),
(30, 50, 22),
(32, 48, 22),
(38, 58, 18),
(42, 52, 17),
(44, 58, 17),
(82, 46, 18),
(83, 46, 19),
(84, 46, 21);

-- --------------------------------------------------------

--
-- Table structure for table `app_classway_question`
--

CREATE TABLE `app_classway_question` (
  `id` bigint(20) NOT NULL,
  `qn_desc` longtext NOT NULL,
  `qn_marks` int(11) NOT NULL,
  `qn_date` datetime(6) NOT NULL,
  `qn_deadline` datetime(6) NOT NULL,
  `class_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `app_classway_question`
--

INSERT INTO `app_classway_question` (`id`, `qn_desc`, `qn_marks`, `qn_date`, `qn_deadline`, `class_id_id`) VALUES
(1, 'What is method overloading in java?', 5, '2021-05-20 12:18:51.787989', '2021-05-21 00:30:00.000000', 52),
(2, 'Explain the concept of OOP.', 10, '2021-05-20 12:19:35.552377', '2021-05-20 18:30:00.000000', 52),
(3, 'thermodynamics question?', 10, '2021-05-22 14:41:15.000236', '2021-05-26 14:41:13.000000', 46),
(4, 'Hii this is new qn', 20, '2021-05-24 02:32:49.499297', '2021-05-25 18:30:00.000000', 46),
(5, 'qn3', 20, '2021-05-24 02:34:34.274154', '2021-05-25 18:30:00.000000', 46),
(6, 'q4', 1, '2021-05-24 02:35:34.371931', '2021-05-24 18:30:00.000000', 46),
(7, 'health and hygiene q3', 10, '2021-05-25 14:34:04.439236', '2021-05-26 18:30:00.000000', 52),
(8, 'bio genetics qn1', 10, '2021-05-27 04:46:24.770778', '2021-05-27 18:30:00.000000', 50),
(9, 'bio genetics q2', 4, '2021-05-27 04:46:43.818025', '2021-05-27 18:30:00.000000', 50),
(10, 'new question', 10, '2021-05-29 07:36:19.651280', '2021-05-29 18:30:00.000000', 96),
(11, 'new question', 10, '2021-05-29 07:36:22.088227', '2021-05-29 18:30:00.000000', 96),
(12, 'Thermodynamics qnt\r\nthis is my qn \r\njiii my qn here', 10, '2021-06-02 16:30:21.389874', '2021-06-02 18:30:00.000000', 46),
(13, 'my qn 1', 10, '2021-06-10 09:54:29.546114', '2021-06-21 18:30:00.000000', 58),
(14, 'my qn 2', 10, '2021-06-10 09:54:36.659815', '2021-06-21 18:30:00.000000', 58),
(17, 'dwwiae whr iuwhr wher wehr wuhruwh weurh whruwh wehr wehr weur wrw ew \r\newr \r\nwer werw rw rwe rew rwer\r\n wer \r\nwer wer rwr wer wer\r\nwer \r\nrw\r\ne erw\r\n rw4\r\ne4r\r\n w\r\nrw\r\ne r\r\new\r\n rew\r\n \r\nwe\r\n4rwrr', 10, '2021-06-12 14:41:53.891017', '2021-06-13 18:30:00.000000', 46);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add class', 8, 'add_class'),
(30, 'Can change class', 8, 'change_class'),
(31, 'Can delete class', 8, 'delete_class'),
(32, 'Can view class', 8, 'view_class'),
(33, 'Can add answer', 9, 'add_answer'),
(34, 'Can change answer', 9, 'change_answer'),
(35, 'Can delete answer', 9, 'delete_answer'),
(36, 'Can view answer', 9, 'view_answer'),
(37, 'Can add question', 10, 'add_question'),
(38, 'Can change question', 10, 'change_question'),
(39, 'Can delete question', 10, 'delete_question'),
(40, 'Can view question', 10, 'view_question'),
(41, 'Can add enroll', 11, 'add_enroll'),
(42, 'Can change enroll', 11, 'change_enroll'),
(43, 'Can delete enroll', 11, 'delete_enroll'),
(44, 'Can view enroll', 11, 'view_enroll');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$gKLiGfNfaOFmmPELCfhOGS$othAfv24+KKDLHtra96Z98a1UbJt/zG6ZgBSzOBS2mI=', '2021-07-13 11:52:01.977660', 1, 'root', '', '', 'anishrajsharma06@gmail.com', 1, 1, '2021-05-09 17:58:34.399901');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-05-09 17:59:51.260255', '1', 'User object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2021-05-10 03:34:07.924385', '3', 'User object (3)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2021-05-10 03:59:51.493001', '13', 'User object (13)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2021-05-10 05:03:57.741017', '12', 'User object (12)', 3, '', 7, 1),
(5, '2021-05-10 05:03:57.841720', '10', 'User object (10)', 3, '', 7, 1),
(6, '2021-05-10 05:03:57.973024', '9', 'User object (9)', 3, '', 7, 1),
(7, '2021-05-10 05:03:58.110558', '8', 'User object (8)', 3, '', 7, 1),
(8, '2021-05-10 05:03:58.226946', '7', 'User object (7)', 3, '', 7, 1),
(9, '2021-05-10 05:03:58.374137', '6', 'User object (6)', 3, '', 7, 1),
(10, '2021-05-10 05:03:58.427783', '5', 'User object (5)', 3, '', 7, 1),
(11, '2021-05-10 05:03:58.496873', '4', 'User object (4)', 3, '', 7, 1),
(12, '2021-05-10 05:03:58.575497', '3', 'User object (3)', 3, '', 7, 1),
(13, '2021-05-10 05:03:58.714009', '2', 'User object (2)', 3, '', 7, 1),
(14, '2021-05-17 03:47:35.261669', '25', 'Class object (25)', 3, '', 8, 1),
(15, '2021-05-17 03:47:35.361925', '24', 'Class object (24)', 3, '', 8, 1),
(16, '2021-05-18 15:17:31.521701', '1', 'Enroll object (1)', 1, '[{\"added\": {}}]', 11, 1),
(17, '2021-05-18 15:17:46.737662', '2', 'Enroll object (2)', 1, '[{\"added\": {}}]', 11, 1),
(18, '2021-05-18 15:18:06.080648', '3', 'Enroll object (3)', 1, '[{\"added\": {}}]', 11, 1),
(19, '2021-05-18 15:19:47.800028', '4', 'Enroll object (4)', 3, '', 11, 1),
(20, '2021-05-18 15:19:47.900156', '3', 'Enroll object (3)', 3, '', 11, 1),
(21, '2021-05-18 15:19:47.984988', '2', 'Enroll object (2)', 3, '', 11, 1),
(22, '2021-05-18 15:19:48.047481', '1', 'Enroll object (1)', 3, '', 11, 1),
(23, '2021-05-18 15:41:56.766383', '8', 'Enroll object (8)', 3, '', 11, 1),
(24, '2021-05-18 15:41:56.944433', '7', 'Enroll object (7)', 3, '', 11, 1),
(25, '2021-05-18 15:41:57.067271', '6', 'Enroll object (6)', 3, '', 11, 1),
(26, '2021-05-18 15:41:57.129985', '5', 'Enroll object (5)', 3, '', 11, 1),
(27, '2021-05-18 17:16:24.707360', '14', 'Enroll object (14)', 3, '', 11, 1),
(28, '2021-05-18 17:16:24.838776', '13', 'Enroll object (13)', 3, '', 11, 1),
(29, '2021-05-18 17:16:24.923592', '12', 'Enroll object (12)', 3, '', 11, 1),
(30, '2021-05-18 17:16:24.970305', '11', 'Enroll object (11)', 3, '', 11, 1),
(31, '2021-05-18 17:16:25.023304', '10', 'Enroll object (10)', 3, '', 11, 1),
(32, '2021-05-18 17:16:25.092672', '9', 'Enroll object (9)', 3, '', 11, 1),
(33, '2021-05-19 05:44:54.781686', '19', 'Enroll object (19)', 3, '', 11, 1),
(34, '2021-05-19 05:44:54.828919', '18', 'Enroll object (18)', 3, '', 11, 1),
(35, '2021-05-19 05:44:54.914188', '17', 'Enroll object (17)', 3, '', 11, 1),
(36, '2021-05-19 05:44:54.960540', '16', 'Enroll object (16)', 3, '', 11, 1),
(37, '2021-05-19 05:44:55.030045', '15', 'Enroll object (15)', 3, '', 11, 1),
(38, '2021-05-19 05:45:11.221574', '45', 'Class object (45)', 3, '', 8, 1),
(39, '2021-05-19 05:45:11.321837', '44', 'Class object (44)', 3, '', 8, 1),
(40, '2021-05-19 05:45:11.374848', '43', 'Class object (43)', 3, '', 8, 1),
(41, '2021-05-19 05:45:11.422088', '42', 'Class object (42)', 3, '', 8, 1),
(42, '2021-05-19 05:45:11.459360', '41', 'Class object (41)', 3, '', 8, 1),
(43, '2021-05-19 05:45:11.521842', '40', 'Class object (40)', 3, '', 8, 1),
(44, '2021-05-19 05:45:11.590539', '39', 'Class object (39)', 3, '', 8, 1),
(45, '2021-05-19 05:45:11.722006', '38', 'Class object (38)', 3, '', 8, 1),
(46, '2021-05-19 05:45:11.791475', '37', 'Class object (37)', 3, '', 8, 1),
(47, '2021-05-19 05:45:11.875915', '36', 'Class object (36)', 3, '', 8, 1),
(48, '2021-05-19 05:45:11.907575', '35', 'Class object (35)', 3, '', 8, 1),
(49, '2021-05-19 05:45:11.991516', '34', 'Class object (34)', 3, '', 8, 1),
(50, '2021-05-19 05:45:12.023263', '33', 'Class object (33)', 3, '', 8, 1),
(51, '2021-05-19 05:45:12.075825', '32', 'Class object (32)', 3, '', 8, 1),
(52, '2021-05-19 05:45:12.122982', '31', 'Class object (31)', 3, '', 8, 1),
(53, '2021-05-19 05:45:12.175800', '30', 'Class object (30)', 3, '', 8, 1),
(54, '2021-05-19 05:45:12.260429', '29', 'Class object (29)', 3, '', 8, 1),
(55, '2021-05-19 05:45:12.339003', '28', 'Class object (28)', 3, '', 8, 1),
(56, '2021-05-19 05:45:12.376270', '27', 'Class object (27)', 3, '', 8, 1),
(57, '2021-05-19 05:45:12.423640', '26', 'Class object (26)', 3, '', 8, 1),
(58, '2021-05-19 05:45:12.460909', '23', 'Class object (23)', 3, '', 8, 1),
(59, '2021-05-19 05:45:12.539514', '22', 'Class object (22)', 3, '', 8, 1),
(60, '2021-05-19 05:45:12.576988', '21', 'Class object (21)', 3, '', 8, 1),
(61, '2021-05-19 05:45:12.624382', '20', 'Class object (20)', 3, '', 8, 1),
(62, '2021-05-19 05:45:12.662640', '19', 'Class object (19)', 3, '', 8, 1),
(63, '2021-05-19 05:45:12.763418', '18', 'Class object (18)', 3, '', 8, 1),
(64, '2021-05-19 05:45:12.794187', '17', 'Class object (17)', 3, '', 8, 1),
(65, '2021-05-19 05:45:12.848046', '16', 'Class object (16)', 3, '', 8, 1),
(66, '2021-05-19 05:45:12.894919', '15', 'Class object (15)', 3, '', 8, 1),
(67, '2021-05-19 05:45:12.926161', '14', 'Class object (14)', 3, '', 8, 1),
(68, '2021-05-19 05:45:12.996123', '13', 'Class object (13)', 3, '', 8, 1),
(69, '2021-05-19 05:45:13.049581', '12', 'Class object (12)', 3, '', 8, 1),
(70, '2021-05-19 05:45:13.081337', '11', 'Class object (11)', 3, '', 8, 1),
(71, '2021-05-19 05:45:13.127697', '10', 'Class object (10)', 3, '', 8, 1),
(72, '2021-05-19 05:45:13.182088', '9', 'Class object (9)', 3, '', 8, 1),
(73, '2021-05-19 05:45:13.228444', '8', 'Class object (8)', 3, '', 8, 1),
(74, '2021-05-19 05:45:13.282715', '7', 'Class object (7)', 3, '', 8, 1),
(75, '2021-05-19 05:45:13.329587', '6', 'Class object (6)', 3, '', 8, 1),
(76, '2021-05-19 05:45:13.383442', '5', 'Class object (5)', 3, '', 8, 1),
(77, '2021-05-19 05:45:13.430329', '4', 'Class object (4)', 3, '', 8, 1),
(78, '2021-05-19 05:45:13.468039', '3', 'Class object (3)', 3, '', 8, 1),
(79, '2021-05-19 05:45:13.514933', '2', 'Class object (2)', 3, '', 8, 1),
(80, '2021-05-19 05:45:13.584060', '1', 'Class object (1)', 3, '', 8, 1),
(81, '2021-05-19 05:45:50.327126', '16', 'User object (16)', 3, '', 7, 1),
(82, '2021-05-19 05:45:50.390139', '15', 'User object (15)', 3, '', 7, 1),
(83, '2021-05-19 05:45:50.505506', '14', 'User object (14)', 3, '', 7, 1),
(84, '2021-05-19 05:45:50.558912', '13', 'User object (13)', 3, '', 7, 1),
(85, '2021-05-19 05:45:50.659167', '11', 'User object (11)', 3, '', 7, 1),
(86, '2021-05-19 05:45:50.690469', '1', 'User object (1)', 3, '', 7, 1),
(87, '2021-05-19 06:38:55.388493', '51', 'Class object (51)', 2, '[]', 8, 1),
(88, '2021-05-19 06:45:42.781065', '56', 'Class object (56)', 3, '', 8, 1),
(89, '2021-05-19 06:45:42.943805', '55', 'Class object (55)', 3, '', 8, 1),
(90, '2021-05-19 06:45:43.028888', '54', 'Class object (54)', 3, '', 8, 1),
(91, '2021-05-19 06:45:43.059907', '53', 'Class object (53)', 3, '', 8, 1),
(92, '2021-05-19 12:54:54.238888', '57', 'Class object (57)', 3, '', 8, 1),
(93, '2021-05-20 12:18:51.920515', '1', 'Question object (1)', 1, '[{\"added\": {}}]', 10, 1),
(94, '2021-05-20 12:19:35.568504', '2', 'Question object (2)', 1, '[{\"added\": {}}]', 10, 1),
(95, '2021-05-22 14:41:15.068704', '3', 'Question object (3)', 1, '[{\"added\": {}}]', 10, 1),
(96, '2021-06-10 11:57:40.380576', '16', 'Answer object (16)', 3, '', 9, 1),
(97, '2021-06-10 11:57:40.512115', '15', 'Answer object (15)', 3, '', 9, 1),
(98, '2021-06-10 14:25:12.708773', '18', 'Answer object (18)', 3, '', 9, 1),
(99, '2021-06-10 14:25:12.815891', '17', 'Answer object (17)', 3, '', 9, 1),
(100, '2021-06-10 14:27:18.131894', '20', 'Answer object (20)', 3, '', 9, 1),
(101, '2021-06-10 14:27:18.263914', '19', 'Answer object (19)', 3, '', 9, 1),
(102, '2021-06-10 14:27:40.915417', '22', 'Answer object (22)', 3, '', 9, 1),
(103, '2021-06-10 14:27:41.047902', '21', 'Answer object (21)', 3, '', 9, 1),
(104, '2021-06-10 14:30:40.012179', '24', 'Answer object (24)', 3, '', 9, 1),
(105, '2021-06-10 14:30:40.166449', '23', 'Answer object (23)', 3, '', 9, 1),
(106, '2021-06-23 01:31:50.132622', '45', 'Enroll object (45)', 1, '[{\"added\": {}}]', 11, 1),
(107, '2021-06-23 01:32:00.508989', '46', 'Enroll object (46)', 1, '[{\"added\": {}}]', 11, 1),
(108, '2021-06-23 01:35:24.060056', '47', 'Enroll object (47)', 1, '[{\"added\": {}}]', 11, 1),
(109, '2021-06-23 01:39:43.637159', '48', 'Enroll object (48)', 1, '[{\"added\": {}}]', 11, 1),
(110, '2021-06-23 01:40:24.470581', '49', 'Enroll object (49)', 1, '[{\"added\": {}}]', 11, 1),
(111, '2021-06-23 07:06:02.176741', '50', 'Enroll object (50)', 1, '[{\"added\": {}}]', 11, 1),
(112, '2021-06-23 07:06:08.351722', '51', 'Enroll object (51)', 1, '[{\"added\": {}}]', 11, 1),
(113, '2021-06-23 07:06:13.215657', '52', 'Enroll object (52)', 1, '[{\"added\": {}}]', 11, 1),
(114, '2021-06-23 07:06:18.834016', '53', 'Enroll object (53)', 1, '[{\"added\": {}}]', 11, 1),
(115, '2021-06-23 07:06:25.595501', '54', 'Enroll object (54)', 1, '[{\"added\": {}}]', 11, 1),
(116, '2021-06-23 07:06:31.262606', '55', 'Enroll object (55)', 1, '[{\"added\": {}}]', 11, 1),
(117, '2021-06-23 07:06:36.317390', '56', 'Enroll object (56)', 1, '[{\"added\": {}}]', 11, 1),
(118, '2021-06-23 07:09:29.466767', '56', 'Enroll object (56)', 3, '', 11, 1),
(119, '2021-06-23 07:18:34.389317', '57', 'Enroll object (57)', 1, '[{\"added\": {}}]', 11, 1),
(120, '2021-06-23 07:18:39.018266', '58', 'Enroll object (58)', 1, '[{\"added\": {}}]', 11, 1),
(121, '2021-06-23 07:18:43.470135', '59', 'Enroll object (59)', 1, '[{\"added\": {}}]', 11, 1),
(122, '2021-06-23 07:18:48.083689', '60', 'Enroll object (60)', 1, '[{\"added\": {}}]', 11, 1),
(123, '2021-06-23 07:18:52.630626', '61', 'Enroll object (61)', 1, '[{\"added\": {}}]', 11, 1),
(124, '2021-06-23 07:18:58.519130', '62', 'Enroll object (62)', 1, '[{\"added\": {}}]', 11, 1),
(125, '2021-06-23 07:22:03.121031', '63', 'Enroll object (63)', 1, '[{\"added\": {}}]', 11, 1),
(126, '2021-06-23 07:22:13.597768', '64', 'Enroll object (64)', 1, '[{\"added\": {}}]', 11, 1),
(127, '2021-06-23 07:22:17.967022', '65', 'Enroll object (65)', 1, '[{\"added\": {}}]', 11, 1),
(128, '2021-06-23 07:22:23.430695', '66', 'Enroll object (66)', 1, '[{\"added\": {}}]', 11, 1),
(129, '2021-06-23 07:22:28.346954', '67', 'Enroll object (67)', 1, '[{\"added\": {}}]', 11, 1),
(130, '2021-06-23 07:22:34.707698', '68', 'Enroll object (68)', 1, '[{\"added\": {}}]', 11, 1),
(131, '2021-06-23 07:36:43.262197', '69', 'Enroll object (69)', 1, '[{\"added\": {}}]', 11, 1),
(132, '2021-06-23 07:36:48.779626', '70', 'Enroll object (70)', 1, '[{\"added\": {}}]', 11, 1),
(133, '2021-06-23 07:36:53.880653', '71', 'Enroll object (71)', 1, '[{\"added\": {}}]', 11, 1),
(134, '2021-06-23 07:36:59.430273', '72', 'Enroll object (72)', 1, '[{\"added\": {}}]', 11, 1),
(135, '2021-06-23 07:37:06.771072', '73', 'Enroll object (73)', 1, '[{\"added\": {}}]', 11, 1),
(136, '2021-06-23 07:37:11.517923', '74', 'Enroll object (74)', 1, '[{\"added\": {}}]', 11, 1),
(137, '2021-06-23 07:37:17.275373', '75', 'Enroll object (75)', 1, '[{\"added\": {}}]', 11, 1),
(138, '2021-06-23 07:43:39.501178', '71', 'Enroll object (71)', 3, '', 11, 1),
(139, '2021-06-23 07:46:03.525285', '76', 'Enroll object (76)', 1, '[{\"added\": {}}]', 11, 1),
(140, '2021-06-23 07:46:08.373599', '77', 'Enroll object (77)', 1, '[{\"added\": {}}]', 11, 1),
(141, '2021-06-23 07:46:14.146392', '78', 'Enroll object (78)', 1, '[{\"added\": {}}]', 11, 1),
(142, '2021-06-23 07:46:19.942164', '79', 'Enroll object (79)', 1, '[{\"added\": {}}]', 11, 1),
(143, '2021-06-23 07:46:25.813274', '80', 'Enroll object (80)', 1, '[{\"added\": {}}]', 11, 1),
(144, '2021-06-23 07:46:30.516734', '81', 'Enroll object (81)', 1, '[{\"added\": {}}]', 11, 1),
(145, '2021-06-25 04:12:43.796188', '27', 'Answer object (27)', 3, '', 9, 1),
(146, '2021-07-13 12:33:20.521327', '82', 'Enroll object (82)', 1, '[{\"added\": {}}]', 11, 1),
(147, '2021-07-13 12:33:26.829529', '83', 'Enroll object (83)', 1, '[{\"added\": {}}]', 11, 1),
(148, '2021-07-13 12:33:32.695103', '84', 'Enroll object (84)', 1, '[{\"added\": {}}]', 11, 1),
(149, '2021-07-13 12:33:40.543164', '85', 'Enroll object (85)', 1, '[{\"added\": {}}]', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(7, 'account', 'user'),
(1, 'admin', 'logentry'),
(9, 'app_classway', 'answer'),
(8, 'app_classway', 'class'),
(11, 'app_classway', 'enroll'),
(10, 'app_classway', 'question'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-05-08 16:10:26.592209'),
(2, 'auth', '0001_initial', '2021-05-08 16:10:46.624504'),
(3, 'admin', '0001_initial', '2021-05-08 16:10:51.694588'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-05-08 16:10:51.814356'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-05-08 16:10:51.941134'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-05-08 16:10:58.248033'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-05-08 16:11:00.035466'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-05-08 16:11:00.233850'),
(9, 'auth', '0004_alter_user_username_opts', '2021-05-08 16:11:00.326114'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-05-08 16:11:01.664562'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-05-08 16:11:01.727940'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-05-08 16:11:01.849136'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-05-08 16:11:03.557155'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-05-08 16:11:05.063002'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-05-08 16:11:05.264393'),
(16, 'auth', '0011_update_proxy_permissions', '2021-05-08 16:11:05.349762'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-05-08 16:11:07.090500'),
(18, 'sessions', '0001_initial', '2021-05-08 16:11:08.258166'),
(19, 'account', '0001_initial', '2021-05-09 16:51:54.605647'),
(20, 'app_classway', '0001_initial', '2021-05-16 06:41:01.865074'),
(21, 'app_classway', '0002_auto_20210516_1309', '2021-05-16 07:39:12.741775'),
(22, 'app_classway', '0003_enroll', '2021-05-16 12:57:04.415643'),
(23, 'app_classway', '0004_remove_class_class_id', '2021-05-16 13:04:56.748593'),
(24, 'app_classway', '0005_remove_class_user_id', '2021-05-16 13:19:15.419528'),
(25, 'app_classway', '0006_auto_20210518_2041', '2021-05-18 15:12:00.159308'),
(26, 'app_classway', '0007_auto_20210518_2046', '2021-05-18 15:16:33.750532'),
(27, 'app_classway', '0008_auto_20210519_1214', '2021-05-19 06:45:57.348353'),
(28, 'app_classway', '0009_alter_answer_ans_marks', '2021-05-23 15:03:00.826897');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0vmr67v6g273mipufq4uisqp65m7hzeu', '.eJyrVsrJT09PTYnPzIsvLU4tUrJSSnRI1EvOz1XSQZOKz0vMTQXKO-ZlFmco1QIAZCYUlw:1lxrKu:laMhCwoqR8gSoZe6oHFSVzijpwrmhPQk8a5mAGhRk0M', '2021-07-12 13:30:04.555379'),
('5tiicog9ha90dt1wo3hqywxd5w16hoxe', '.eJyrVsrJT09PTYnPzIsvLU4tUrJSSnRI1EvOz1XSQZOKz0vMTQXKO-ZlFmco1QIAZCYUlw:1lyT3J:Dx0W7yKH7T68V3k7yaBVqxnpq-NAcrJlRwnXWYNe1yk', '2021-07-14 05:46:25.207363'),
('81k8q31g0ud0ms8i30wfui2sjqn98yyy', '.eJxdzc0OwiAQBOB34WyaAkWgJ_XuM5Bll7aohaQ_J-O7S2Mv9TrfZObNXrnvA7mY3DqHibUMLlBhHtnpj1yCMRS_pjgPRR2sy_CTSCXnx8wDPkPagB6Q-lw20zJFX22Vate5umcKr9vePQwMUG5a5rEBIXVdS0QgUp1H3ijkwvBgREeKtPaWB-tFp6wQ2lprzlJ5g8ClrdnnC3mCS3E:1m3GxG:lVygO1t1ki1YtuuQZ4J0fGevpf3b33q6HLGBGdZFy9Y', '2021-07-27 11:52:02.511010'),
('m6qlvbxvtfiuyqup4addqz7bivoy6g3k', '.eJyrVsrJT09PTYnPzIsvLU4tUrJSSnRI1EvOz1XSQZOKz0vMTQXKO-ZlFmco1QIAZCYUlw:1mAqX1:z7D7-72VGVR17xITdJc-Xlvt_YN0YTazUYKmUDRMrMI', '2021-08-17 09:16:16.037815'),
('vvtny582v1djwof017kkyp2u0lq0rhvn', '.eJxdzc0OwiAQBOB34WyaAkWgJ_XuM5Bll7aohaQ_J-O7S2Mv9TrfZObNXrnvA7mY3DqHibUMLlBhHtnpj1yCMRS_pjgPRR2sy_CTSCXnx8wDPkPagB6Q-lw20zJFX22Vate5umcKr9vePQwMUG5a5rEBIXVdS0QgUp1H3ijkwvBgREeKtPaWB-tFp6wQ2lprzlJ5g8ClrdnnC3mCS3E:1m2pt9:1cZlHmEQKzIIO6ukUouhR60h66ZhDZ9xu74bkZo9qwA', '2021-07-26 06:57:59.249538');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_user`
--
ALTER TABLE `account_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_classway_answer`
--
ALTER TABLE `app_classway_answer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_classway_answer_qn_id_id_99844ece_fk_app_class` (`qn_id_id`),
  ADD KEY `app_classway_answer_user_id_id_5d6de2c4_fk_account_user_id` (`user_id_id`);

--
-- Indexes for table `app_classway_class`
--
ALTER TABLE `app_classway_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_classway_enroll`
--
ALTER TABLE `app_classway_enroll`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_classway_enroll_class_id_id_f999a0dd_fk_app_class` (`class_id_id`),
  ADD KEY `app_classway_enroll_user_id_id_207108a2_fk_account_user_id` (`user_id_id`);

--
-- Indexes for table `app_classway_question`
--
ALTER TABLE `app_classway_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_classway_questio_class_id_id_47314fb6_fk_app_class` (`class_id_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_user`
--
ALTER TABLE `account_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `app_classway_answer`
--
ALTER TABLE `app_classway_answer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `app_classway_class`
--
ALTER TABLE `app_classway_class`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `app_classway_enroll`
--
ALTER TABLE `app_classway_enroll`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `app_classway_question`
--
ALTER TABLE `app_classway_question`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `app_classway_answer`
--
ALTER TABLE `app_classway_answer`
  ADD CONSTRAINT `app_classway_answer_qn_id_id_99844ece_fk_app_class` FOREIGN KEY (`qn_id_id`) REFERENCES `app_classway_question` (`id`),
  ADD CONSTRAINT `app_classway_answer_user_id_id_5d6de2c4_fk_account_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `account_user` (`id`);

--
-- Constraints for table `app_classway_enroll`
--
ALTER TABLE `app_classway_enroll`
  ADD CONSTRAINT `app_classway_enroll_class_id_id_f999a0dd_fk_app_class` FOREIGN KEY (`class_id_id`) REFERENCES `app_classway_class` (`id`),
  ADD CONSTRAINT `app_classway_enroll_user_id_id_207108a2_fk_account_user_id` FOREIGN KEY (`user_id_id`) REFERENCES `account_user` (`id`);

--
-- Constraints for table `app_classway_question`
--
ALTER TABLE `app_classway_question`
  ADD CONSTRAINT `app_classway_questio_class_id_id_47314fb6_fk_app_class` FOREIGN KEY (`class_id_id`) REFERENCES `app_classway_class` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
