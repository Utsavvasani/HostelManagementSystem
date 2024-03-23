-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2022 at 06:32 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add contact', 7, 'add_contact'),
(26, 'Can change contact', 7, 'change_contact'),
(27, 'Can delete contact', 7, 'delete_contact'),
(28, 'Can view contact', 7, 'view_contact'),
(29, 'Can add gallery', 8, 'add_gallery'),
(30, 'Can change gallery', 8, 'change_gallery'),
(31, 'Can delete gallery', 8, 'delete_gallery'),
(32, 'Can view gallery', 8, 'view_gallery'),
(33, 'Can add signin', 9, 'add_signin'),
(34, 'Can change signin', 9, 'change_signin'),
(35, 'Can delete signin', 9, 'delete_signin'),
(36, 'Can view signin', 9, 'view_signin'),
(37, 'Can add trustee', 10, 'add_trustee'),
(38, 'Can change trustee', 10, 'change_trustee'),
(39, 'Can delete trustee', 10, 'delete_trustee'),
(40, 'Can view trustee', 10, 'view_trustee'),
(41, 'Can add amenities', 11, 'add_amenities'),
(42, 'Can change amenities', 11, 'change_amenities'),
(43, 'Can delete amenities', 11, 'delete_amenities'),
(44, 'Can view amenities', 11, 'view_amenities'),
(45, 'Can add student', 12, 'add_student'),
(46, 'Can change student', 12, 'change_student'),
(47, 'Can delete student', 12, 'delete_student'),
(48, 'Can view student', 12, 'view_student'),
(49, 'Can add course', 13, 'add_course'),
(50, 'Can change course', 13, 'change_course'),
(51, 'Can delete course', 13, 'delete_course'),
(52, 'Can view course', 13, 'view_course'),
(53, 'Can add name', 14, 'add_name'),
(54, 'Can change name', 14, 'change_name'),
(55, 'Can delete name', 14, 'delete_name'),
(56, 'Can view name', 14, 'view_name'),
(57, 'Can add meal', 15, 'add_meal'),
(58, 'Can change meal', 15, 'change_meal'),
(59, 'Can delete meal', 15, 'delete_meal'),
(60, 'Can view meal', 15, 'view_meal'),
(61, 'Can add room', 16, 'add_room'),
(62, 'Can change room', 16, 'change_room'),
(63, 'Can delete room', 16, 'delete_room'),
(64, 'Can view room', 16, 'view_room'),
(65, 'Can add event', 17, 'add_event'),
(66, 'Can change event', 17, 'change_event'),
(67, 'Can delete event', 17, 'delete_event'),
(68, 'Can view event', 17, 'view_event'),
(69, 'Can add vinit', 18, 'add_vinit'),
(70, 'Can change vinit', 18, 'change_vinit'),
(71, 'Can delete vinit', 18, 'delete_vinit'),
(72, 'Can view vinit', 18, 'view_vinit'),
(73, 'Can add user', 19, 'add_user'),
(74, 'Can change user', 19, 'change_user'),
(75, 'Can delete user', 19, 'delete_user'),
(76, 'Can view user', 19, 'view_user');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'first', 'amenities'),
(7, 'first', 'contact'),
(8, 'first', 'gallery'),
(9, 'first', 'signin'),
(12, 'first', 'student'),
(10, 'first', 'trustee'),
(13, 'second', 'course'),
(17, 'second', 'event'),
(15, 'second', 'meal'),
(14, 'second', 'name'),
(16, 'second', 'room'),
(19, 'second', 'user'),
(18, 'second', 'vinit'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-10-09 08:01:09.895338'),
(2, 'auth', '0001_initial', '2022-10-09 08:01:10.437927'),
(3, 'admin', '0001_initial', '2022-10-09 08:01:10.595075'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-10-09 08:01:10.620767'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-10-09 08:01:10.632259'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-10-09 08:01:10.721648'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-10-09 08:01:10.800767'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-10-09 08:01:10.840768'),
(9, 'auth', '0004_alter_user_username_opts', '2022-10-09 08:01:10.848767'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-10-09 08:01:10.915143'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-10-09 08:01:10.923148'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-10-09 08:01:10.937575'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-10-09 08:01:10.972041'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-10-09 08:01:10.999885'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-10-09 08:01:11.033673'),
(16, 'auth', '0011_update_proxy_permissions', '2022-10-09 08:01:11.049678'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-10-09 08:01:11.097597'),
(18, 'first', '0001_initial', '2022-10-09 08:01:11.206009'),
(19, 'first', '0002_trustee', '2022-10-09 08:01:11.254097'),
(20, 'first', '0003_amenities_alter_gallery_image', '2022-10-09 08:01:11.310695'),
(21, 'first', '0004_student', '2022-10-09 08:01:11.366722'),
(22, 'first', '0005_rename_city_student_dept_remove_student_adhar_card_and_more', '2022-10-09 08:01:11.732411'),
(23, 'first', '0006_data_delete_student', '2022-10-09 08:01:11.777075'),
(24, 'first', '0007_registration_delete_data', '2022-10-09 08:01:11.822451'),
(25, 'first', '0008_student_delete_registration', '2022-10-09 08:01:11.865034'),
(26, 'second', '0001_initial', '2022-10-09 08:01:11.946797'),
(27, 'second', '0002_alter_course_image', '2022-10-09 08:01:11.958291'),
(28, 'second', '0003_bad_room_room_student', '2022-10-09 08:01:12.060806'),
(29, 'second', '0004_menu', '2022-10-09 08:01:12.100879'),
(30, 'second', '0005_meal_delete_menu', '2022-10-09 08:01:12.159191'),
(31, 'second', '0006_room_students', '2022-10-09 08:01:12.190796'),
(32, 'second', '0007_delete_room', '2022-10-09 08:01:12.208397'),
(33, 'second', '0008_rename_room_students_room', '2022-10-09 08:01:12.250299'),
(34, 'second', '0009_delete_room', '2022-10-09 08:01:12.274314'),
(35, 'second', '0010_delete_bad_delete_room_student', '2022-10-09 08:01:12.298349'),
(36, 'second', '0011_room', '2022-10-09 08:01:12.345339'),
(37, 'second', '0012_alter_room_first_alter_room_fourth_alter_room_room_and_more', '2022-10-09 08:01:12.671831'),
(38, 'second', '0013_alter_room_first_alter_room_fourth_alter_room_second_and_more', '2022-10-09 08:01:13.447970'),
(39, 'second', '0014_event', '2022-10-09 08:01:13.477840'),
(40, 'second', '0015_green', '2022-10-09 08:01:13.520473'),
(41, 'second', '0016_meet_delete_green_alter_event_date', '2022-10-09 08:01:13.577719'),
(42, 'second', '0017_delete_meet', '2022-10-09 08:01:13.586253'),
(43, 'second', '0018_meet', '2022-10-09 08:01:13.620239'),
(44, 'second', '0019_vinit_delete_meet_alter_event_date', '2022-10-09 08:01:13.717637'),
(45, 'sessions', '0001_initial', '2022-10-09 08:01:13.772781'),
(46, 'second', '0020_user_delete_vinit', '2022-10-09 08:27:23.441642');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5s0fgbav981h5yml16ipqv4ruh3p5u2s', '.eJyrVkpMyc3MU7KC0jpKRfn5uUCuoYEhkFNanFqUl5ibChTwdjE2MDAGiuXmJ2XmgEQMLC0NLE2NDEyNlWoBC6QUHQ:1ohS5v:GIh3RzXUvFXTLQkQsT3YYYEjNjNgNRRe7HJLfmQZ8HI', '2022-10-23 08:55:35.963779'),
('gpj7p5hxsolv7pxl4loqyd06g6sgx0ov', 'eyJhZG1pbiI6ImFkbWluIiwicm9vbSI6IjEwMSJ9:1ohn8q:uragKl-SIjFyfT913Og46l_eQTRnRJ-kjBAva3tIR8A', '2022-10-24 07:24:00.491141'),
('l1lqdvdnlgzukfshynh2ivf0ttxvh4b3', '.eJyrVirKz89VslIyNDBU0lFKTMnNzAPyILSOUmlxalFeYm4qUMjbxdjAwNAAKJibn5SZAxKytDSwNDUyMDU2UqoFABEuFE0:1olmZ8:nbWdy8REFUid3o40ZBcG_pw6qpzX7oBSos3Mu8aWCBw', '2022-11-04 07:35:38.983597'),
('pe56273kkljdpfx002jh6ee32ckspmwk', '.eJyrVkpMyc3MU7KC0jpKpcWpRXmJualAIW8XYwMDE6BYbn5SZg5IxNLSwNLUyMDU2AgoWpSfnwsUMzQwUqoFABQMFCE:1ohkrV:BHCuVX6DG2a2aK3zUvyOLuhVeyTp3T3saUCKGYOCASM', '2022-10-24 04:57:57.470844'),
('uc7y9a6stsm3xx5tntzzg5yfjbexlify', 'eyJ1c2VybmFtZSI6IktEMzAwNSIsIm1vYmlsZSI6IjA5OTA5NTIwNTMiLCJhZG1pbiI6ImFkbWluIn0:1osGaU:-sNyAsD4bwXPhlZN0mnWwXRFtZz8C3Q7yvYIenC6QLo', '2022-11-22 04:51:50.766529');

-- --------------------------------------------------------

--
-- Table structure for table `first_amenities`
--

CREATE TABLE `first_amenities` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `first_amenities`
--

INSERT INTO `first_amenities` (`id`, `title`, `description`) VALUES
(4, 'LARGE ROOMES', '4 Bed Along With Cupboard in Each Room - Total 200+ Rooms Available.		\r'),
(5, 'UPSC TRAINING', 'I.A.S. , I.P.S., U.P.S.C., G.P.S.C. Training Class Facility Available		\r'),
(6, 'E-LIBRARY', 'Fully Air-Conditioner E-Library Available For Each Student\r'),
(7, 'KITCHEN', 'Serving Hygienic Food To Each Student. Taking Care of Health\r'),
(8, 'GYM', 'We Understand That High Quality Gym Equipment And Accessories Are A Must !!\r'),
(9, 'WIFI', 'High Speed Internet Connection Available In Campus For Each Student\r');

-- --------------------------------------------------------

--
-- Table structure for table `first_contact`
--

CREATE TABLE `first_contact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `first_contact`
--

INSERT INTO `first_contact` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'utsav_vasani', 'utvasani@gmail.com', 'review', 'this is quit usefull !!!'),
(2, 'shreyansh_dhanani', 'shreyansh@gmail.com', 'my opinion', 'this is good !!!!'),
(3, 'meet_limbasiya', 'meetlimbasiya66@gmail.com', 'feedback', 'good !!!'),
(4, 'bhautik_kathrotiya', 'bhautik007@gmail.com', 'my opinion', 'thank you !!'),
(5, 'dipesh_agrawal', 'dipeshagrawal43@gmail.com', 'my feedback', 'It gives facility efficient !!!'),
(6, 'khushi_satasiya', 'khushi_satasiya@gmail.com', 'review', 'this is amazining !!!'),
(7, 'kevin_sudani', 'kevin_sudani@gmail.com', 'my review', 'awesome !!!'),
(8, 'nirmal_malvaniya', 'nirmal_malvaniya@gmail.com', 'feedback', 'amazing !!!!!'),
(9, 'parth_kevadiya', 'parthu123@gmail.com', 'opinion', 'I am shocked !!');

-- --------------------------------------------------------

--
-- Table structure for table `first_gallery`
--

CREATE TABLE `first_gallery` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `first_gallery`
--

INSERT INTO `first_gallery` (`id`, `image`, `description`, `date`) VALUES
(1, 'gallery/1.jpg', 'Meeting Hall', '2022-10-10 03:42:47.273277'),
(2, 'gallery/2.jpg', 'Computer Lab', '2022-10-10 03:43:02.518046'),
(3, 'gallery/3.jpg', 'Bed Rooms', '2022-10-10 03:43:24.449491'),
(4, 'gallery/5.jpg', 'Study Rooms', '2022-10-10 03:44:45.514718'),
(5, 'gallery/41_SVzO1Q8.jpg', 'Fire Safety', '2022-10-10 03:46:03.665502'),
(6, 'gallery/36.jpg', 'Gym', '2022-10-10 03:46:26.444460'),
(7, 'gallery/10_l0DD7p2.jpg', 'Campus', '2022-10-10 03:46:40.661732'),
(8, 'gallery/9.jpg', 'Class Rooms', '2022-10-10 03:47:28.119083'),
(9, 'gallery/7.jpg', 'Exam Preparation', '2022-10-10 03:48:10.963511'),
(10, 'gallery/camara.jpg', 'Security System', '2022-10-10 03:51:05.453771'),
(11, 'gallery/reception.jpg', 'Reception Area', '2022-10-10 03:51:25.730613'),
(12, 'gallery/reading.jpg', 'Reading Hall', '2022-10-10 03:51:51.657822'),
(13, 'gallery/entry.jpg', 'Entry Gate', '2022-10-10 03:52:09.874647'),
(14, 'gallery/drink.jpg', 'Drink Pure Water', '2022-10-10 03:52:33.049217'),
(15, 'gallery/lift.jpg', 'Facility', '2022-10-10 03:53:17.663745'),
(16, 'gallery/industry.jpg', 'Industrial Enterprise Center', '2022-10-10 03:55:48.270638'),
(17, 'gallery/building.jpg', 'Infrastructure Of Building', '2022-10-10 03:56:48.272531'),
(18, 'gallery/women.jpg', 'Education Trips', '2022-10-10 03:57:51.543535');

-- --------------------------------------------------------

--
-- Table structure for table `first_signin`
--

CREATE TABLE `first_signin` (
  `id` bigint(20) NOT NULL,
  `username` varchar(125) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `first_signin`
--

INSERT INTO `first_signin` (`id`, `username`, `email`, `password`) VALUES
(1, 'utsav_vasani', 'utvasani@gmail.com', '123456'),
(2, 'meet_limbasiya', 'meetlimbasiya66@gmail.com', '123456'),
(3, 'bhautik_kathrotiya', 'bhautik007@gmail.com', '123456'),
(4, 'Shreyansh_Dhanani', 'shreyansh@gmail.com', '123456'),
(5, 'vinit_koladiya', 'vinit_koladiya@gmail.com', '123456'),
(6, 'dipesh_agrawal', 'dipeshagrawal43@gmail.com', '123456'),
(7, 'khushi_satasiya', 'khushi_satasiya@gmail.com', '123456'),
(8, 'kevin_sudani', 'kevin_sudani@gmail.com', '123456'),
(9, 'nirmal_malvaniya', 'nirmal_malvaniya@gmail.com', '123456'),
(10, 'parth_kevadiya', 'parthu123@gmail.com', '123456'),
(11, 'suresh', 'sureshh@gmail.com', 'Suresh@123');

-- --------------------------------------------------------

--
-- Table structure for table `first_student`
--

CREATE TABLE `first_student` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `collage_name` varchar(100) NOT NULL,
  `field_name` varchar(100) NOT NULL,
  `dept` varchar(100) NOT NULL,
  `term` varchar(100) NOT NULL,
  `mobile_number` varchar(10) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `first_student`
--

INSERT INTO `first_student` (`id`, `first_name`, `last_name`, `father_name`, `date_of_birth`, `collage_name`, `field_name`, `dept`, `term`, `mobile_number`, `email_id`, `address`, `image`) VALUES
(5, 'utsav', 'vasani', 'ashokbhai', '2003-01-30', 'lj university', 'mscit', 'mscit', '1', '0990952053', 'utvasani@gmail.com', 'punitdham', 'student/student_AWR8spr.jpg'),
(6, 'shreyansh', 'dhanani', 'hasmukhbhai', '2003-02-23', 'lj university', 'mscit', 'mscit', '2', '9909520532', 'dhananishrey@gmail.com', '85,punitdham soc.,setelight road', 'student/student_pITHrCX.jpg'),
(7, 'utsav', 'vasani', 'ashokbhai', '0046-03-12', 'lj university', 'mscit', 'mscit', '2', '0990952053', 'dhananishrey@gmail.com', 'nothing', 'student/student_HnWdvP9.jpg'),
(8, 'Bhautik', 'kathrotiya', 'Champakbhai', '2003-05-19', 'lj university', 'mscit', 'mscit', '3', '9537028184', 'kathrotiyabhautik007@gmail.com', 'pratappara,amreli', 'student/student_yASMJ6n.jpg'),
(9, 'Meet', 'Limbasiya', 'Sureshbhai', '2003-04-13', 'lj university', 'mscit', 'mscit', '3', '8849979485', 'meetlimbasiya66@gmail.com', 'Anand Dhara, Surat', 'student/student_yWIx3WA.jpg'),
(10, 'utsav', 'vasani', 'ashokbhai', '2003-05-30', 'lj university', 'mscit', 'mscit', '3', '9909520532', 'utsavvasani2003@gmail.com', 'punitdham', 'student/student_tSIKe1y.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `first_trustee`
--

CREATE TABLE `first_trustee` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `Native` varchar(100) NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `first_trustee`
--

INSERT INTO `first_trustee` (`id`, `image`, `name`, `Native`, `date`) VALUES
(1, 'trustee/gag_WgYYeUc.jpg', 'શ્રી ગગજીભાઈ ગોવિંદભાઇ સુતરીયા', 'અમદાવાદ', '2022-10-10 03:59:35.231494'),
(2, 'trustee/sha_HKnPbMJ.jpg', 'શ્રી અરવિંદભાઈ કરશનભાઈ દુધાત', 'અમદાવાદ', '2022-10-10 04:14:17.538873'),
(3, 'trustee/dam_2sAknXx.jpg', 'શ્રી દિનેશભાઈ મણીભાઈ અમીન', 'અમદાવાદ', '2022-10-10 04:15:49.727199'),
(4, 'trustee/bhim_AED8HZx.jpg', 'શ્રી ભીમજીભાઈ સવજીભાઇ ગઢીયા', 'વડોદરા', '2022-10-10 04:16:26.062441'),
(5, 'trustee/mav_ywb2Hd8.jpg', 'શ્રી માવજીભાઈ પ્રેમજીભાઈ સવાણી', 'સુરત', '2022-10-10 04:17:34.700551'),
(6, 'trustee/cham_f1ia0iK.jpg', 'શ્રીમતી ચંપાબેન ગોવિંદભાઈ ધોળકિયા', 'સુરત', '2022-10-10 04:18:05.091337'),
(7, 'trustee/san_oMQwrpg.jpg', 'શ્રી જયંતિભાઈ દિયાળભાઈ પટેલ', 'અમદાવાદ..', '2022-10-10 04:18:45.271000'),
(8, 'trustee/bhan.jpg', 'શ્રીમતી ભાનુબેન કાળુભાઈ ઝાલાવાડીયા (કોન્ફરન્સ હોલ)', 'અમદાવાદ..', '2022-10-10 04:19:33.948670'),
(9, 'trustee/lav.jpg', 'શ્રી લવજીભાઇ ડુંગરશીભાઇ ડાલિયા (બાદશાહ)', 'અમદાવાદ..', '2022-10-10 04:20:05.951647'),
(10, 'trustee/lip.jpg', 'શ્રીમતી લિપીબેન હાર્દિકભાઈ મોરડીયા', 'અમદાવાદ', '2022-10-10 04:20:32.862133'),
(11, 'trustee/lal.jpg', 'શ્રી લાલજીભાઈ તુલસીભાઈ અણધણ', 'સુરત', '2022-10-10 04:21:00.881057'),
(12, 'trustee/rav.jpg', 'શ્રી રવજીભાઈ પોપટભાઈ વસાણી', 'અમદાવાદ', '2022-10-10 04:21:47.362802'),
(13, 'trustee/ashok.jpg', 'શ્રી અશોકભાઈ બાબુભાઈ ઝડફીયા', 'વડોદરા', '2022-10-10 04:22:19.438350'),
(14, 'trustee/has.jpg', 'શ્રી હસમુખભાઈ ભાણાભાઈ ઠુમ્મર', 'અમદાવાદ..', '2022-10-10 04:22:52.991373'),
(15, 'trustee/yog.jpg', 'શ્રી યોગેશભાઈ છગનભાઈ કાછડિયા', 'અમદાવાદ', '2022-10-10 04:23:34.380065'),
(16, 'trustee/jit.jpg', 'શ્રી જીતેશભાઈ વીઠલભાઈ પટેલ (પવન ટ્રાવેલ્સ)', 'સુરત', '2022-10-10 04:24:20.585287'),
(17, 'trustee/sur.jpg', 'શ્રી સુરેશભાઈ રામજીભાઈ ભડીયાદરા', 'વડોદરા', '2022-10-10 04:25:29.959505'),
(18, 'trustee/nag.jpg', 'શ્રી નાગજીભાઈ નાનજીભાઈ શીંગાળા (IAS/IPS ટ્રેનીંગ સેન્ટર)', 'અમદાવાદ', '2022-10-10 04:26:56.062229'),
(19, 'trustee/rek.jpg', 'શ્રીમતી રેખાબેન મહેન્દ્રભાઈ વાડદોરિયા', 'સુરત', '2022-10-10 04:27:31.449236'),
(20, 'trustee/jig.jpg', 'શ્રીમતી જીજ્ઞાશાબેન શરદભાઈ મોરડીયા', 'અમદાવાદ', '2022-10-10 04:28:47.292228');

-- --------------------------------------------------------

--
-- Table structure for table `second_course`
--

CREATE TABLE `second_course` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `number_of_enrolled` int(11) NOT NULL,
  `number_of_message` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `second_course`
--

INSERT INTO `second_course` (`id`, `name`, `image`, `price`, `number_of_enrolled`, `number_of_message`, `description`, `date`) VALUES
(1, 'Google IT Support Professional Certificate', 'course/john-schnobrich-FlPc9_VocJ4-unsplash.jpg', 1000, 139112, 1300, 'This is your path to a career in IT. In this program, you’ll learn in-demand skills that will have y', '2022-10-10 03:14:30.311159'),
(2, 'HTML, CSS, and Javascript for Web Developers', 'course/branko-stancevic-GI1hwOGqGtE-unsplash.jpg', 150250, 15000, 1200, 'Do you realize that the only functionality of a web application that the user directly interacts wit', '2022-10-10 03:16:32.490780'),
(3, 'Programming for Everybody (Getting Started with Python)', 'course/ben-griffiths-Bj6ENZDMSDY-unsplash.jpg', 15000, 2362545, 35000, 'This course aims to teach everyone the basics of programming computers using Python. We cover the ba', '2022-10-10 03:18:05.835962'),
(4, 'Introduction to Data Analytics', 'course/campaign-creators-pypeCEaJeZY-unsplash.jpg', 150200, 23434520, 56000, 'This course will help you to differentiate between the roles of a Data Analyst, Data Scientist, and ', '2022-10-10 03:19:50.853456'),
(5, 'IBM Full Stack Software Developer Professional Certificate', 'course/christina-wocintechchat-com-6U4n-I2_R2M-unsplash.jpg', 67300, 563000, 23000, 'The courses in this program will help you develop skill sets in a variety of technologies including:', '2022-10-10 03:21:36.555160'),
(6, 'Excel Basics for Data Analysis', 'course/carlos-muza-hpjSkU2UYSU-unsplash.jpg', 15000, 250400, 15900, 'This course is designed to provide you with basic working knowledge for using Excel spreadsheets for', '2022-10-10 03:24:29.175247'),
(7, 'Fundamentals of Graphic Design', 'course/med-badr-chemmaoui-ZSPBhokqDMc-unsplash.jpg', 54000, 13000, 3400, 'Graphic Design is all around us! Words and pictures—the building blocks of graphic design—are the el', '2022-10-10 03:26:26.064293'),
(8, 'Foundations of Data Science: K-Means Clustering in Python', 'course/luke-chesser-JKUTrJ4vK00-unsplash.jpg', 53000, 21000, 3500, 'Organisations all around the world are using data to predict behaviours and extract valuable real-wo', '2022-10-10 03:28:40.938721'),
(9, 'Machine Learning for All', 'course/alex-knight-2EJCSULRwC8-unsplash.jpg', 30000, 235090, 35000, ' Machine Learning technology is set to revolutionise almost any area of human life and work, and so ', '2022-10-10 03:31:12.873548'),
(10, 'Data Structures and Design Patterns for Game Developers', 'course/photo-1504639725590-34d0984388bd.jpg', 45300, 2300, 1300, 'Data structures and design patterns are both general programming and software architecture topics th', '2022-10-10 03:36:22.043851'),
(11, 'Computer Science: Algorithms, Theory, and Machines', 'course/photo-1547190027-9156686aa2f0.jpg', 430000, 23400, 2500, 'This course  introduces the broader discipline of computer science to people having basic familiarit', '2022-10-10 03:39:21.365778'),
(12, 'Unix System Basics', 'course/photo-1455894127589-22f75500213a.jpg', 34200, 29000, 1200, 'This course is designed for learners with no technical experience, providing a solid foundation of U', '2022-10-10 03:42:04.786654');

-- --------------------------------------------------------

--
-- Table structure for table `second_event`
--

CREATE TABLE `second_event` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `date` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `second_event`
--

INSERT INTO `second_event` (`id`, `image`, `title`, `description`, `date`) VALUES
(1, 'events/freshers_oq9JWOc.jpg', 'Fresher\'s Day', 'The Hostel is a platform for the students to develop all their talents. Fresher\'s Day is organized with variety of entertainment programmes. It is indeed a spring board for many to begin well. This is followed by various programmes under the able guidance of cultural team as well as wardens & secretary.', '25th February, 2018'),
(2, 'events/culture_DUX8esp.jpg', 'Cultural team', 'The Hostel cultural team organizes a fantastic cultural programmes bringing joy to both the participants and the audience. The students potentialities and capabilities is brought to lime light. Team spirit, feeling of oneness, sharing of resources, learning the art of organizing & building of leadership qualities are the fruits of such a show.', '29th February, 2018'),
(3, 'events/food_LFih9iJ.jpg', 'Food Fiesta', 'The Hostel management encourages and permits the hostelites to conduct the Food Fiesta during every Hostel month. We give opportunities for the students from 1st year to final year , to prepare their own new menu representing each state food with the help of the wardens assisted by dedicated mess workers. Here again the energetic & enthusiastic hostelites conduct the food fiesta deserves praises & prizes.', '17th September, 2020'),
(4, 'events/food_festa_swStIIu.webp', 'Nutrition Forum', 'The Mess facilities of the hostel deserve a special note of appreciation. The BMSET Hostel Mess provides very healthy, hygienic & nutritious food to all the students with the team comprising of Wardens & dedicated mess workers. In fact every semester the hostel organizes seminars by Nutrition experts to create awareness among all about the nutrition values of the food that is served in the Hostel Mess.', '23th Januart, 2021'),
(5, 'events/sport_gCWSQLe.jpg', 'Sports Forum', 'Sports plays a very vital role in keeping everyone fit and energetic and it is something very essential and part of life to young ones. The BMSET Hostel is proud of our sports team that on various occasions brought together the hostel student community through several sports event. Relevant Sports kits is been supplied to the hostelites to participate in various sports activities. The hostels have Gym Trainer & Yoga Trainer to guide & train the hostelites systematically.', '18th March, 2021'),
(6, 'events/medical_hKVEQ5n.jpg', 'Health Forum', 'The Health Forum of the hostel takes initiative to build & bringing awareness among all the students with regard to their health. Under the BMS HosptialTrust regular medical checkup, health care facilities are being offered at concessional rates to all the hostelites and staff . Services of Specialized doctors can be availed in the said hospital.', '15th April, 2018'),
(7, 'events/hostelday_esI3RFX.jpg', 'Hostel Day ( Farouche )', 'In view of the hostel day-Farouche , every year the hostel management encourage the students to organize many competitions under the leader ship of sports & cultural team such as various indoor & outdoor game events , singing, debate, essay writing/ poem, poster making, drawing & painting, rangoli competitions paving way for the students to come out with best in them. It is a true platform for the development of several hidden talents.', '30th October, 2018');

-- --------------------------------------------------------

--
-- Table structure for table `second_meal`
--

CREATE TABLE `second_meal` (
  `id` bigint(20) NOT NULL,
  `date` varchar(100) NOT NULL,
  `day` varchar(100) NOT NULL,
  `breakfast` varchar(100) NOT NULL,
  `lunch` varchar(100) NOT NULL,
  `dinner` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `second_meal`
--

INSERT INTO `second_meal` (`id`, `date`, `day`, `breakfast`, `lunch`, `dinner`) VALUES
(1, '01-10-22', 'Saturday', 'ખીચડી,ચા', 'ભાખરી,અડદ-મગની દાળ,લ.ચટણી,સુંભારો,કાુંદા,ગોળ,છાશ', 'રોટલી,છોલે,મરચા,ગોળ,છાશ\r'),
(2, '02-10-22', 'Sunday', 'ફ્રુટ્સ/ નમક્સ ચેવડો,મરચા,ચા', 'મોહનથાળ,પરુી,શાક,ભજીયા-ચટણી,દાળ-ભાત,મરચા,છાશ', 'દાળ-ઢોકળી,જીરા રાઈસ,ફ્રાઇમ્સ,છાશ\r'),
(3, '03-10-22 ', 'Monday', 'ભાખરી,ચા', 'રોટલી,કોબીજ-બટાકા,વાલનુંશાક,લો.મરચા,કાદા,છાશ,ગોળ', 'રોટલી,સેવ-ટામેટા,કા.કઢી-ખીચડી,મરચા,ગોળ,છાશ\r'),
(4, '04-10-22 ', 'Tuesday', 'વ્હાઇટ ઢોકળા,કઢી,ચા', 'રોટલી,ગલકા-દાળ,ચોળાનુંશાક,સલાડ/સુંભારો, છાશ, ગોળ', 'ભાખરી, દુધી-દાળનુંશાક, વઘારેલ ભાત, મરચા,ગોળ, દુધ\r'),
(5, '05-10-22 ', 'Wednesday', 'ઉપમા,ચટણી/ટોસપટ્ટી,ચા', 'રોટલી, કારેલા,નમક્સ કઠોળ,સલાડ-છાશ-ગોળ', 'જલેબી,ફાફડી-કઢી,કાદા,મરચા,છાશ\r'),
(6, '06-10-22 ', 'Thursday', 'મસાલા ભાખરી,મરચા,ચા', 'રોટલી,દૂધીનુંશાક,દેશી ચણાનુંશાક,સલાડ,છાશ,ગોળ', 'ઇડલી-સુંભાર, કોપરેલ ચટણી,છાશ\r'),
(7, '07-10-22 ', 'Friday', 'સેવ-મમરી વાળા પૌઆ,ચા', 'રોટલી,તરુીયા-બટાકા,વટાણાનુંશાક,સુંભારો,છાશ,ગોળ', 'ભાખરી,દહીં કઠોળ ખીચડી,મરચાું,છાશ\r'),
(8, '08-10-22 ', 'Saturday', 'સેવ ખમણી,ચટણી, ચા', 'રોટલી,ટીંડોરાનુંશાક,નમક્સ દાળનુંશાક,સુંભારો,છાશ,ગોળ', 'રોટલી,રીંગણ-બટાકા,સાદીખીચડી,મરચાું,ગોળ,દૂધ\r'),
(9, '09-10-22 ', 'Sunday', 'ફ્રુટ્સ/ નમક્સ ફરસાણ,મરચા,ચા', 'મગજ લા/ટોપરાપાક.,પુરી,શાક,પાત્રા,દાળભાત,મરચા,છાશ', 'સાદી ભેળ,આલ-ુમટર નો રગડો,લાલ-લીલીચટણી,છાશ\r'),
(10, '10-10-22 ', 'Monday', 'પીળા ઢોકળા,કઢી ચા', 'રોટલી,કોબીજ-વટાણા,દેશી ચોળીનુંશાક,લો.મરચા,કાુંદા,છાશ,ગોળ', 'રોટલી,છોલે-પુલાવ,મરચાું,ગોળ,છાશ\r'),
(11, '11-10-22 ', 'Tuesday', 'વ્હાઇટ ઢોકળા,કઢી,ચા', 'રોટલી,ગલકા-દાળ,ચોળાનુંશાક,સલાડ/સુંભારો, છાશ, ગોળ', 'ભાખરી, દુધી-દાળનુંશાક, વઘારેલ ભાત, મરચા,ગોળ, દુધ\r'),
(12, '12-10-22 ', 'Wednesday', 'ઉપમા,ચટણી/ટોસપટ્ટી,ચા', 'રોટલી, કારેલા,નમક્સ કઠોળ,સલાડ-છાશ-ગોળ', 'જલેબી,ફાફડી-કઢી,કાદા,મરચા,છાશ\r'),
(13, '13-10-22 ', 'Thursday', 'મસાલા ભાખરી,મરચા,ચા', 'રોટલી,દૂધીનુંશાક,દેશી ચણાનુંશાક,સલાડ,છાશ,ગોળ', 'ઇડલી-સુંભાર, કોપરેલ ચટણી,છાશ\r'),
(14, '14-10-22 ', 'Friday', 'સેવ-મમરી વાળા પૌઆ,ચા', 'રોટલી,તરુીયા-બટાકા,વટાણાનુંશાક,સુંભારો,છાશ,ગોળ', 'ભાખરી,દહીં કઠોળ ખીચડી,મરચાું,છાશ\r'),
(15, '15-10-22 ', 'Saturday', 'સેવ ખમણી,ચટણી, ચા', 'રોટલી,ટીંડોરાનુંશાક,નમક્સ દાળનુંશાક,સુંભારો,છાશ,ગોળ', 'રોટલી,રીંગણ-બટાકા,સાદીખીચડી,મરચાું,ગોળ,દૂધ\r'),
(16, '16-10-22 ', 'Sunday', 'ફ્રુટ્સ/ નમક્સ ફરસાણ,મરચા,ચા', 'મગજ લા/ટોપરાપાક.,પુરી,શાક,પાત્રા,દાળભાત,મરચા,છાશ', 'સાદી ભેળ,આલ-ુમટર નો રગડો,લાલ-લીલીચટણી,છાશ\r'),
(17, '17-10-22 ', 'Monday', 'પીળા ઢોકળા,કઢી ચા', 'રોટલી,કોબીજ-વટાણા,દેશી ચોળીનુંશાક,લો.મરચા,કાુંદા,છાશ,ગોળ', 'રોટલી,છોલે-પુલાવ,મરચાું,ગોળ,છાશ\r'),
(18, '18-10-22 ', 'Tuesday', 'વ્હાઇટ ઢોકળા,કઢી,ચા', 'રોટલી,ગલકા-દાળ,ચોળાનુંશાક,સલાડ/સુંભારો, છાશ, ગોળ', 'ભાખરી, દુધી-દાળનુંશાક, વઘારેલ ભાત, મરચા,ગોળ, દુધ\r'),
(19, '19-10-22 ', 'Wednesday', 'ઉપમા,ચટણી/ટોસપટ્ટી,ચા', 'રોટલી, કારેલા,નમક્સ કઠોળ,સલાડ-છાશ-ગોળ', 'જલેબી,ફાફડી-કઢી,કાદા,મરચા,છાશ\r'),
(20, '20-10-22 ', 'Thursday', 'મસાલા ભાખરી,મરચા,ચા', 'રોટલી,દૂધીનુંશાક,દેશી ચણાનુંશાક,સલાડ,છાશ,ગોળ', 'ઇડલી-સુંભાર, કોપરેલ ચટણી,છાશ\r'),
(21, '21-10-22 ', 'Friday', 'સેવ-મમરી વાળા પૌઆ,ચા', 'રોટલી,તરુીયા-બટાકા,વટાણાનુંશાક,સુંભારો,છાશ,ગોળ', 'ભાખરી,દહીં કઠોળ ખીચડી,મરચાું,છાશ\r'),
(22, '22-10-22 ', 'Saturday', 'સેવ ખમણી,ચટણી, ચા', 'રોટલી,ટીંડોરાનુંશાક,નમક્સ દાળનુંશાક,સુંભારો,છાશ,ગોળ', 'રોટલી,રીંગણ-બટાકા,સાદીખીચડી,મરચાું,ગોળ,દૂધ\r'),
(23, '23-10-22 ', 'Sunday', 'ફ્રુટ્સ/ નમક્સ ફરસાણ,મરચા,ચા', 'મગજ લા/ટોપરાપાક.,પુરી,શાક,પાત્રા,દાળભાત,મરચા,છાશ', 'સાદી ભેળ,આલ-ુમટર નો રગડો,લાલ-લીલીચટણી,છાશ\r'),
(24, '24-10-22 ', 'Monday', 'પીળા ઢોકળા,કઢી ચા', 'રોટલી,કોબીજ-વટાણા,દેશી ચોળીનુંશાક,લો.મરચા,કાુંદા,છાશ,ગોળ', 'રોટલી,છોલે-પુલાવ,મરચાું,ગોળ,છાશ\r'),
(25, '25-10-22 ', 'Tuesday', 'વ્હાઇટ ઢોકળા,કઢી,ચા', 'રોટલી,ગલકા-દાળ,ચોળાનુંશાક,સલાડ/સુંભારો, છાશ, ગોળ', 'ભાખરી, દુધી-દાળનુંશાક, વઘારેલ ભાત, મરચા,ગોળ, દુધ\r'),
(26, '26-10-22 ', 'Wednesday', 'ઉપમા,ચટણી/ટોસપટ્ટી,ચા', 'રોટલી, કારેલા,નમક્સ કઠોળ,સલાડ-છાશ-ગોળ', 'જલેબી,ફાફડી-કઢી,કાદા,મરચા,છાશ\r'),
(27, '27-10-22 ', 'Thursday', 'મસાલા ભાખરી,મરચા,ચા', 'રોટલી,દૂધીનુંશાક,દેશી ચણાનુંશાક,સલાડ,છાશ,ગોળ', 'ઇડલી-સુંભાર, કોપરેલ ચટણી,છાશ\r'),
(28, '28-10-22 ', 'Friday', 'સેવ-મમરી વાળા પૌઆ,ચા', 'રોટલી,તરુીયા-બટાકા,વટાણાનુંશાક,સુંભારો,છાશ,ગોળ', 'ભાખરી,દહીં કઠોળ ખીચડી,મરચાું,છાશ\r'),
(29, '29-10-22 ', 'Saturday', 'સેવ ખમણી,ચટણી, ચા', 'રોટલી,ટીંડોરાનુંશાક,નમક્સ દાળનુંશાક,સુંભારો,છાશ,ગોળ', 'રોટલી,રીંગણ-બટાકા,સાદીખીચડી,મરચાું,ગોળ,દૂધ\r'),
(30, '30-10-22 ', 'Sunday', 'ફ્રુટ્સ/ નમક્સ ફરસાણ,મરચા,ચા', 'મગજ લા/ટોપરાપાક.,પુરી,શાક,પાત્રા,દાળભાત,મરચા,છાશ', 'સાદી ભેળ,આલ-ુમટર નો રગડો,લાલ-લીલીચટણી,છાશ\r'),
(31, '31-10-22 ', 'Monday', 'પીળા ઢોકળા,કઢી ચા', 'રોટલી,કોબીજ-વટાણા,દેશી ચોળીનુંશાક,લો.મરચા,કાુંદા,છાશ,ગોળ', 'રોટલી,છોલે-પુલાવ,મરચાું,ગોળ,છાશ\r');

-- --------------------------------------------------------

--
-- Table structure for table `second_name`
--

CREATE TABLE `second_name` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `identifier` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `second_room`
--

CREATE TABLE `second_room` (
  `id` bigint(20) NOT NULL,
  `room` varchar(100) NOT NULL,
  `first` varchar(100) NOT NULL,
  `second` varchar(100) NOT NULL,
  `third` varchar(100) NOT NULL,
  `fourth` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `second_room`
--

INSERT INTO `second_room` (`id`, `room`, `first`, `second`, `third`, `fourth`) VALUES
(1, '101', 'KD3005', 'NULL', 'NULL', 'NULL'),
(2, '102', 'NULL', 'KD3007', 'NULL', 'NULL'),
(3, '103', 'NULL', 'NULL', 'NULL', 'NULL'),
(4, '104', 'NULL', 'NULL', 'NULL', 'NULL'),
(5, '105', 'NULL', 'NULL', 'NULL', 'NULL'),
(6, '106', 'NULL', 'NULL', 'NULL', 'NULL'),
(7, '107', 'NULL', 'NULL', 'NULL', 'NULL'),
(9, '201', 'NULL', 'NULL', 'NULL', 'NULL'),
(10, '202', 'NULL', 'NULL', 'NULL', 'NULL'),
(11, '203', 'NULL', 'NULL', 'NULL', 'NULL'),
(12, '204', 'NULL', 'NULL', 'NULL', 'NULL'),
(13, '205', 'NULL', 'NULL', 'NULL', 'NULL'),
(14, '206', 'NULL', 'NULL', 'NULL', 'NULL'),
(15, '207', 'NULL', 'NULL', 'NULL', 'NULL');

-- --------------------------------------------------------

--
-- Table structure for table `second_user`
--

CREATE TABLE `second_user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `student_id_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `second_user`
--

INSERT INTO `second_user` (`id`, `username`, `password`, `student_id_id`) VALUES
(4, 'KD3005', '0990952053', 5),
(13, 'KD3007', '0990952053', 7),
(14, 'KD3008', '9537028184', 8),
(16, 'KD3009', '8849979485', 9),
(17, 'KD30010', '9909520532', 10);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `first_amenities`
--
ALTER TABLE `first_amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_contact`
--
ALTER TABLE `first_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_gallery`
--
ALTER TABLE `first_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_signin`
--
ALTER TABLE `first_signin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_student`
--
ALTER TABLE `first_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_trustee`
--
ALTER TABLE `first_trustee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_course`
--
ALTER TABLE `second_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_event`
--
ALTER TABLE `second_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_meal`
--
ALTER TABLE `second_meal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_name`
--
ALTER TABLE `second_name`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `second_room`
--
ALTER TABLE `second_room`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `room` (`room`);

--
-- Indexes for table `second_user`
--
ALTER TABLE `second_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `second_user_student_id_id_8d79477f_fk_first_student_id` (`student_id_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `first_amenities`
--
ALTER TABLE `first_amenities`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `first_contact`
--
ALTER TABLE `first_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `first_gallery`
--
ALTER TABLE `first_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `first_signin`
--
ALTER TABLE `first_signin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `first_student`
--
ALTER TABLE `first_student`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `first_trustee`
--
ALTER TABLE `first_trustee`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `second_course`
--
ALTER TABLE `second_course`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `second_event`
--
ALTER TABLE `second_event`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `second_meal`
--
ALTER TABLE `second_meal`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `second_name`
--
ALTER TABLE `second_name`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `second_room`
--
ALTER TABLE `second_room`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `second_user`
--
ALTER TABLE `second_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

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

--
-- Constraints for table `second_user`
--
ALTER TABLE `second_user`
  ADD CONSTRAINT `second_user_student_id_id_8d79477f_fk_first_student_id` FOREIGN KEY (`student_id_id`) REFERENCES `first_student` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
