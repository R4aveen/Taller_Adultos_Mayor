-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-11-2023 a las 12:48:48
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `talleradultodb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
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
(25, 'Can add adulto mayor', 7, 'add_adultomayor'),
(26, 'Can change adulto mayor', 7, 'change_adultomayor'),
(27, 'Can delete adulto mayor', 7, 'delete_adultomayor'),
(28, 'Can view adulto mayor', 7, 'view_adultomayor'),
(29, 'Can add talleres', 8, 'add_talleres'),
(30, 'Can change talleres', 8, 'change_talleres'),
(31, 'Can delete talleres', 8, 'delete_talleres'),
(32, 'Can view talleres', 8, 'view_talleres'),
(33, 'Can add tipo taller', 9, 'add_tipotaller'),
(34, 'Can change tipo taller', 9, 'change_tipotaller'),
(35, 'Can delete tipo taller', 9, 'delete_tipotaller'),
(36, 'Can view tipo taller', 9, 'view_tipotaller'),
(37, 'Can add taller tomado', 10, 'add_tallertomado'),
(38, 'Can change taller tomado', 10, 'change_tallertomado'),
(39, 'Can delete taller tomado', 10, 'delete_tallertomado'),
(40, 'Can view taller tomado', 10, 'view_tallertomado'),
(41, 'Can add inscripcion taller', 11, 'add_inscripciontaller'),
(42, 'Can change inscripcion taller', 11, 'change_inscripciontaller'),
(43, 'Can delete inscripcion taller', 11, 'delete_inscripciontaller'),
(44, 'Can view inscripcion taller', 11, 'view_inscripciontaller');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(2, 'pbkdf2_sha256$216000$LHS2eK9PTcFB$mIYc0PKoWKf+j+IjVfhNb98GB5OegNoOlux2LhfQXGQ=', '2023-11-28 06:20:16.097552', 1, 'admin', '', '', 'admin@admin.com', 1, 1, '2023-11-28 04:55:39.588950'),
(3, 'pbkdf2_sha256$216000$DishQV3Yl4E5$CqvUP0WcWgl618XB1fgDiDYVUsF4rWVTW7JIy0rOGYI=', '2023-11-28 06:20:42.484777', 0, 'dani', '', '', 'dani@duoc.cl', 0, 1, '2023-11-28 05:24:39.967355'),
(4, 'pbkdf2_sha256$216000$ipS5IUYS9Cm6$FTbOjFLwneBtR8dATrZE1JAHWQx7yhFi8p9dxDv3evc=', '2023-11-28 05:29:29.968400', 0, 'daniel', '', '', 'daniel@gmail.com', 0, 1, '2023-11-28 05:29:29.855707'),
(9, 'pbkdf2_sha256$216000$dsxTCp5mjoZZ$8Uog02jtg2HOqc+B8IO7dvJe8xnFQXxQwXNX8ASIH44=', '2023-11-28 05:39:26.264619', 0, 'felipe', '', '', 'felipe@gmail.com', 0, 1, '2023-11-28 05:39:26.167704'),
(10, 'pbkdf2_sha256$216000$pdaalDCDwchQ$jC2SIf3wox7N/Yvj/808WbLIoJlsPFipr1AS3QtD4F8=', '2023-11-28 05:51:00.680713', 0, 'jose123', '', '', 'jose@gmail.com', 0, 1, '2023-11-28 05:50:15.047089'),
(11, 'pbkdf2_sha256$216000$K0qiSXWbEHhp$4p9LdKsGGRcL1zbyX3PAU1LAy6LRs7wAaCDge63qOvM=', '2023-11-28 05:52:38.678862', 0, 'amaro123', '', '', 'amaro@gmail.com', 0, 1, '2023-11-28 05:52:38.580884');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-11-28 05:12:17.088550', '1', 'deportivo', 1, '[{\"added\": {}}]', 9, 2),
(2, '2023-11-28 05:12:30.942033', '2', 'manualidades', 1, '[{\"added\": {}}]', 9, 2),
(3, '2023-11-28 05:12:39.295007', '3', 'recreativo', 1, '[{\"added\": {}}]', 9, 2),
(4, '2023-11-28 05:13:03.198740', '1', 'Karate (Tipo: deportivo)', 1, '[{\"added\": {}}]', 8, 2),
(5, '2023-11-28 05:18:05.928631', '2', 'Karate (Tipo: deportivo)', 1, '[{\"added\": {}}]', 8, 2),
(6, '2023-11-28 05:18:24.158014', '1', 'Karate (Tipo: deportivo)', 3, '', 8, 2),
(7, '2023-11-28 05:18:33.003604', '1', 'Karate (Tipo: deportivo)', 2, '[{\"changed\": {\"fields\": [\"Codigo\", \"Imagen\"]}}]', 8, 2),
(8, '2023-11-28 05:18:53.047940', '2', 'Karate (Tipo: deportivo)', 3, '', 8, 2),
(9, '2023-11-28 05:45:10.871877', '5', 'daniela', 3, '', 4, 2),
(10, '2023-11-28 05:45:15.727219', '6', 'darkbit22', 3, '', 4, 2),
(11, '2023-11-28 05:45:19.748759', '7', 'darkbit222', 3, '', 4, 2),
(12, '2023-11-28 05:45:23.271921', '8', 'darkbit2222', 3, '', 4, 2),
(13, '2023-11-28 06:56:20.060702', '2', 'Inscripción a taller #2 - amaro123', 3, '', 11, 2),
(14, '2023-11-28 06:56:24.318320', '1', 'Inscripción a taller #1 - dani', 3, '', 11, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'talleres', 'adultomayor'),
(11, 'talleres', 'inscripciontaller'),
(8, 'talleres', 'talleres'),
(10, 'talleres', 'tallertomado'),
(9, 'talleres', 'tipotaller');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-11-28 04:06:32.719021'),
(2, 'auth', '0001_initial', '2023-11-28 04:06:33.049851'),
(3, 'admin', '0001_initial', '2023-11-28 04:06:33.468166'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-11-28 04:06:33.582772'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-11-28 04:06:33.597165'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-11-28 04:06:33.679095'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-11-28 04:06:33.743024'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-11-28 04:06:33.767508'),
(9, 'auth', '0004_alter_user_username_opts', '2023-11-28 04:06:33.783041'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-11-28 04:06:33.831420'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-11-28 04:06:33.838988'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-11-28 04:06:33.850178'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-11-28 04:06:33.880359'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-11-28 04:06:33.904838'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-11-28 04:06:33.924523'),
(16, 'auth', '0011_update_proxy_permissions', '2023-11-28 04:06:33.937566'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-11-28 04:06:33.967160'),
(18, 'sessions', '0001_initial', '2023-11-28 04:06:33.996774'),
(19, 'talleres', '0001_initial', '2023-11-28 04:06:34.231172'),
(20, 'talleres', '0002_talleres_imagen', '2023-11-28 05:15:31.282744'),
(21, 'talleres', '0003_talleres_inscritos', '2023-11-28 06:16:32.025957');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0xdlbchmlg05ki6d3fqb36uuwthrvotl', 'e30:1r7qlJ:4gEbpbh9iIE75HqSvImHvd-IT1hOBn3Rjby6l6dkA30', '2023-12-12 05:35:57.860158'),
('aegfd54nn4h56ccwplrxm4kr7dpherh2', '.eJxVjMEOwiAQRP-FsyGwdKH16L3fQGBZpGpoUtqT8d9tkx70Npn3Zt7Ch20tfmu8-CmJqwBx-e1ioCfXA6RHqPdZ0lzXZYryUORJmxznxK_b6f4dlNDKvs6GCClqlZGd1kBgnB2A0UHus9rT4Fh1RnfGOWCNCiyiJbKaQu5RfL7MtTbl:1r7s1A:BOKn_6jm6uTIhuXaUR3TZej_I_1_chz_ZRL7lqxCHpw', '2023-12-12 06:56:24.366981'),
('bwiaig1cwbc5clpu7djtnmgw5piltdko', 'e30:1r7qmj:rok5AW0qYO1sKw3Wi9m-KfJl36DvL9UlrWCNXuOEfxo', '2023-12-12 05:37:25.107293'),
('cwmiuqjwx1hxm17tlrkbng8704g0u8fj', 'e30:1r7qog:pqNDdIOF6nRyc51bTmlFMyD_3tJ8HoWevT2_xoD5iDY', '2023-12-12 05:39:26.262408'),
('zx0bk12i21698p8azd7mq5dui3cxxh62', '.eJxVjLEOwjAMRP8lM4owdpuUkb3fEMV2SgoolZp2Qvw7rdQBlhvuvbu3CXFdclhrmsOo5mrAnH47jvJMZQf6iOU-WZnKMo9sd8UetNp-0vS6He7fQY41b2tJSLFlEe-YO8JWB_LIW_IZ2WkCYvAAF3SA0TcETTcQ-CQenYqazxf22Tf_:1r7pOE:QjlDoNDYJ5bhbMD0YSDKe0nm0Q9Zphk5KA_-5R5alcg', '2023-12-12 04:08:02.233803');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talleres_adultomayor`
--

DROP TABLE IF EXISTS `talleres_adultomayor`;
CREATE TABLE `talleres_adultomayor` (
  `rut` varchar(15) NOT NULL,
  `apellidoPaterno` varchar(35) NOT NULL,
  `apellidoMaterno` varchar(35) NOT NULL,
  `nombres` varchar(35) NOT NULL,
  `fechaNac` date NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `vigencia` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `talleres_adultomayor`
--

INSERT INTO `talleres_adultomayor` (`rut`, `apellidoPaterno`, `apellidoMaterno`, `nombres`, `fechaNac`, `sexo`, `vigencia`, `user_id`) VALUES
('21.203.145-3', 'De La Fuente', 'Libido', 'Daniel Ismael', '2023-12-22', 'M', 1, 3),
('21203145-3', 'De la fuente', 'Libido', 'Daniel Ismael', '2002-12-22', 'M', 1, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talleres_inscripciontaller`
--

DROP TABLE IF EXISTS `talleres_inscripciontaller`;
CREATE TABLE `talleres_inscripciontaller` (
  `id` int(11) NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `taller_id` varchar(2) NOT NULL,
  `usuario_id` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talleres_talleres`
--

DROP TABLE IF EXISTS `talleres_talleres`;
CREATE TABLE `talleres_talleres` (
  `codigo` varchar(2) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `cupo_maximo` smallint(5) UNSIGNED NOT NULL CHECK (`cupo_maximo` >= 0),
  `cupo_actual` smallint(5) UNSIGNED NOT NULL CHECK (`cupo_actual` >= 0),
  `tipo_id` int(11) NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `talleres_talleres`
--

INSERT INTO `talleres_talleres` (`codigo`, `nombre`, `descripcion`, `cupo_maximo`, `cupo_actual`, `tipo_id`, `imagen`) VALUES
('1', 'Karate', 'Desarrolla tus habilidades de combate', 15, 15, 1, 'talleres_images/karate.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talleres_tallertomado`
--

DROP TABLE IF EXISTS `talleres_tallertomado`;
CREATE TABLE `talleres_tallertomado` (
  `id` int(11) NOT NULL,
  `fechaInscripcion` datetime(6) NOT NULL,
  `adulto_id` varchar(15) NOT NULL,
  `taller_id` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `talleres_tipotaller`
--

DROP TABLE IF EXISTS `talleres_tipotaller`;
CREATE TABLE `talleres_tipotaller` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `talleres_tipotaller`
--

INSERT INTO `talleres_tipotaller` (`id`, `nombre`) VALUES
(1, 'deportivo'),
(2, 'manualidades'),
(3, 'recreativo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `talleres_adultomayor`
--
ALTER TABLE `talleres_adultomayor`
  ADD PRIMARY KEY (`rut`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indices de la tabla `talleres_inscripciontaller`
--
ALTER TABLE `talleres_inscripciontaller`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talleres_inscripcion_taller_id_eedfca75_fk_talleres_` (`taller_id`),
  ADD KEY `talleres_inscripcion_usuario_id_31f567bc_fk_talleres_` (`usuario_id`);

--
-- Indices de la tabla `talleres_talleres`
--
ALTER TABLE `talleres_talleres`
  ADD PRIMARY KEY (`codigo`),
  ADD KEY `talleres_talleres_tipo_id_7a3c24d9_fk_talleres_tipotaller_id` (`tipo_id`);

--
-- Indices de la tabla `talleres_tallertomado`
--
ALTER TABLE `talleres_tallertomado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `talleres_tallertomad_adulto_id_72f903f5_fk_talleres_` (`adulto_id`),
  ADD KEY `talleres_tallertomad_taller_id_ebfaa583_fk_talleres_` (`taller_id`);

--
-- Indices de la tabla `talleres_tipotaller`
--
ALTER TABLE `talleres_tipotaller`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `talleres_inscripciontaller`
--
ALTER TABLE `talleres_inscripciontaller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `talleres_tallertomado`
--
ALTER TABLE `talleres_tallertomado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `talleres_tipotaller`
--
ALTER TABLE `talleres_tipotaller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `talleres_adultomayor`
--
ALTER TABLE `talleres_adultomayor`
  ADD CONSTRAINT `talleres_adultomayor_user_id_c0d870ca_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `talleres_inscripciontaller`
--
ALTER TABLE `talleres_inscripciontaller`
  ADD CONSTRAINT `talleres_inscripcion_taller_id_eedfca75_fk_talleres_` FOREIGN KEY (`taller_id`) REFERENCES `talleres_talleres` (`codigo`),
  ADD CONSTRAINT `talleres_inscripcion_usuario_id_31f567bc_fk_talleres_` FOREIGN KEY (`usuario_id`) REFERENCES `talleres_adultomayor` (`rut`);

--
-- Filtros para la tabla `talleres_talleres`
--
ALTER TABLE `talleres_talleres`
  ADD CONSTRAINT `talleres_talleres_tipo_id_7a3c24d9_fk_talleres_tipotaller_id` FOREIGN KEY (`tipo_id`) REFERENCES `talleres_tipotaller` (`id`);

--
-- Filtros para la tabla `talleres_tallertomado`
--
ALTER TABLE `talleres_tallertomado`
  ADD CONSTRAINT `talleres_tallertomad_adulto_id_72f903f5_fk_talleres_` FOREIGN KEY (`adulto_id`) REFERENCES `talleres_adultomayor` (`rut`),
  ADD CONSTRAINT `talleres_tallertomad_taller_id_ebfaa583_fk_talleres_` FOREIGN KEY (`taller_id`) REFERENCES `talleres_talleres` (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
