-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 07-06-2024 a las 16:20:42
-- Versión del servidor: 5.7.39
-- Versión de PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `espacio-marina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `action_events`
--

CREATE TABLE `action_events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `actionable_id` bigint(20) UNSIGNED NOT NULL,
  `target_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED DEFAULT NULL,
  `fields` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'running',
  `exception` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `original` mediumtext COLLATE utf8mb4_unicode_ci,
  `changes` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `action_events`
--

INSERT INTO `action_events` (`id`, `batch_id`, `user_id`, `name`, `actionable_type`, `actionable_id`, `target_type`, `target_id`, `model_type`, `model_id`, `fields`, `status`, `exception`, `created_at`, `updated_at`, `original`, `changes`) VALUES
(1, '9c2b348f-95fb-437d-bb38-b0453c3a9fae', 1, 'Create', 'App\\Models\\Section', 1, 'App\\Models\\Section', 1, 'App\\Models\\Section', 1, '', 'finished', '', '2024-05-30 18:29:53', '2024-05-30 18:29:53', NULL, '{\"name\":\"Torre A - Vista al Mar\",\"view\":\"Mar\",\"tower_name\":\"A\",\"updated_at\":\"2024-05-30T18:29:53.000000Z\",\"created_at\":\"2024-05-30T18:29:53.000000Z\",\"id\":1}'),
(2, '9c2b34a4-667c-411b-9729-f285480cfe27', 1, 'Create', 'App\\Models\\Section', 2, 'App\\Models\\Section', 2, 'App\\Models\\Section', 2, '', 'finished', '', '2024-05-30 18:30:07', '2024-05-30 18:30:07', NULL, '{\"name\":\"Torre A - Vista al campo de Golf\",\"view\":\"Golf\",\"tower_name\":\"A\",\"updated_at\":\"2024-05-30T18:30:07.000000Z\",\"created_at\":\"2024-05-30T18:30:07.000000Z\",\"id\":2}'),
(3, '9c2b34b0-8902-4f50-ba70-d1170b45725a', 1, 'Create', 'App\\Models\\Section', 3, 'App\\Models\\Section', 3, 'App\\Models\\Section', 3, '', 'finished', '', '2024-05-30 18:30:15', '2024-05-30 18:30:15', NULL, '{\"name\":\"Torre B - Vista al campo de Golf\",\"view\":\"Golf\",\"tower_name\":\"B\",\"updated_at\":\"2024-05-30T18:30:15.000000Z\",\"created_at\":\"2024-05-30T18:30:15.000000Z\",\"id\":3}'),
(4, '9c2b34c2-3085-4aa2-a507-264addf2537d', 1, 'Create', 'App\\Models\\Section', 4, 'App\\Models\\Section', 4, 'App\\Models\\Section', 4, '', 'finished', '', '2024-05-30 18:30:26', '2024-05-30 18:30:26', NULL, '{\"name\":\"Torre B - Vista al Mar\",\"view\":\"Mar\",\"tower_name\":\"B\",\"updated_at\":\"2024-05-30T18:30:26.000000Z\",\"created_at\":\"2024-05-30T18:30:26.000000Z\",\"id\":4}'),
(5, '9c2b4546-98d3-49a4-b79f-cfdaf2c2a328', 1, 'Create', 'App\\Models\\UnitType', 1, 'App\\Models\\UnitType', 1, 'App\\Models\\UnitType', 1, '', 'finished', '', '2024-05-30 19:16:37', '2024-05-30 19:16:37', NULL, '{\"name\":\"1R\",\"option\":\"1\",\"bedrooms\":\"1\",\"flexrooms\":null,\"bathrooms\":\"1\",\"interior_const\":\"51.73\",\"exterior_const\":\"10.44\",\"parking_spaces\":\"1\",\"updated_at\":\"2024-05-30T19:16:37.000000Z\",\"created_at\":\"2024-05-30T19:16:37.000000Z\",\"id\":1}'),
(6, '9c2d0e1f-294d-4402-81b8-0f569ded98cc', 1, 'Create', 'App\\Models\\Unit', 1, 'App\\Models\\Unit', 1, 'App\\Models\\Unit', 1, '', 'finished', '', '2024-05-31 16:34:03', '2024-05-31 16:34:03', NULL, '{\"name\":\"GHA2\",\"section_id\":2,\"floor\":\"1\",\"price\":\"9361213\",\"currency\":\"MXN\",\"status\":\"Disponible\",\"youtube_link\":null,\"unit_type_id\":1,\"interior_const\":\"51.73\",\"exterior_const\":\"10.44\",\"extra_exterior_const\":null,\"patio\":null,\"rooftop\":null,\"garden\":\"53.82\",\"storage\":\"3\",\"const_total\":\"143.71\",\"updated_at\":\"2024-05-31T16:34:03.000000Z\",\"created_at\":\"2024-05-31T16:34:03.000000Z\",\"id\":1}'),
(7, '9c2d0f5e-7466-4c5c-9fb4-be5ed56bcc22', 1, 'Delete', 'App\\Models\\User', 140, 'App\\Models\\User', 140, 'App\\Models\\User', 140, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(8, '9c2d0f5e-7619-4009-ba29-3788fe686a01', 1, 'Delete', 'App\\Models\\User', 141, 'App\\Models\\User', 141, 'App\\Models\\User', 141, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(9, '9c2d0f5e-76b4-4e82-8631-1a22fe3b6c94', 1, 'Delete', 'App\\Models\\User', 142, 'App\\Models\\User', 142, 'App\\Models\\User', 142, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(10, '9c2d0f5e-773d-408a-b385-043ed33077b0', 1, 'Delete', 'App\\Models\\User', 143, 'App\\Models\\User', 143, 'App\\Models\\User', 143, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(11, '9c2d0f5e-77d5-4d46-a498-c3bc3103dfe0', 1, 'Delete', 'App\\Models\\User', 144, 'App\\Models\\User', 144, 'App\\Models\\User', 144, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(12, '9c2d0f5e-78a2-475e-8eee-d2c69eb5257b', 1, 'Delete', 'App\\Models\\User', 145, 'App\\Models\\User', 145, 'App\\Models\\User', 145, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(13, '9c2d0f5e-7954-45a1-ae33-064550d7432c', 1, 'Delete', 'App\\Models\\User', 146, 'App\\Models\\User', 146, 'App\\Models\\User', 146, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(14, '9c2d0f5e-79ea-4682-b6b0-8fcd98281f68', 1, 'Delete', 'App\\Models\\User', 147, 'App\\Models\\User', 147, 'App\\Models\\User', 147, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(15, '9c2d0f5e-7a81-4ce6-b807-2275506ba93d', 1, 'Delete', 'App\\Models\\User', 148, 'App\\Models\\User', 148, 'App\\Models\\User', 148, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(16, '9c2d0f5e-7b34-40b9-bc8b-9c94a02b9bf2', 1, 'Delete', 'App\\Models\\User', 149, 'App\\Models\\User', 149, 'App\\Models\\User', 149, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(17, '9c2d0f5e-7bcf-4d7a-a67a-ab4424d4a1f9', 1, 'Delete', 'App\\Models\\User', 150, 'App\\Models\\User', 150, 'App\\Models\\User', 150, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(18, '9c2d0f5e-7c67-44f7-88bb-e02b4079cd4d', 1, 'Delete', 'App\\Models\\User', 151, 'App\\Models\\User', 151, 'App\\Models\\User', 151, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(19, '9c2d0f5e-7cfa-497e-9f7a-aac2573d6854', 1, 'Delete', 'App\\Models\\User', 152, 'App\\Models\\User', 152, 'App\\Models\\User', 152, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(20, '9c2d0f5e-7d8a-4d11-8c1b-3413723e3859', 1, 'Delete', 'App\\Models\\User', 153, 'App\\Models\\User', 153, 'App\\Models\\User', 153, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(21, '9c2d0f5e-7e24-44e3-bf28-b703865deee1', 1, 'Delete', 'App\\Models\\User', 154, 'App\\Models\\User', 154, 'App\\Models\\User', 154, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(22, '9c2d0f5e-7eee-4fab-8634-0fef335437b7', 1, 'Delete', 'App\\Models\\User', 155, 'App\\Models\\User', 155, 'App\\Models\\User', 155, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(23, '9c2d0f5e-7f90-4469-86e8-f5c5f5f7c6a9', 1, 'Delete', 'App\\Models\\User', 156, 'App\\Models\\User', 156, 'App\\Models\\User', 156, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(24, '9c2d0f5e-8023-47a5-be32-77a27eb1a23a', 1, 'Delete', 'App\\Models\\User', 157, 'App\\Models\\User', 157, 'App\\Models\\User', 157, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(25, '9c2d0f5e-80b6-4514-8904-5d7807e405d8', 1, 'Delete', 'App\\Models\\User', 158, 'App\\Models\\User', 158, 'App\\Models\\User', 158, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(26, '9c2d0f5e-8148-4583-a292-f4274787b2cf', 1, 'Delete', 'App\\Models\\User', 159, 'App\\Models\\User', 159, 'App\\Models\\User', 159, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(27, '9c2d0f5e-81df-487a-a451-418d31c45ab6', 1, 'Delete', 'App\\Models\\User', 160, 'App\\Models\\User', 160, 'App\\Models\\User', 160, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(28, '9c2d0f5e-8276-4591-b82a-ae3687a3297f', 1, 'Delete', 'App\\Models\\User', 161, 'App\\Models\\User', 161, 'App\\Models\\User', 161, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(29, '9c2d0f5e-8304-48fa-82f8-a0e6da95c169', 1, 'Delete', 'App\\Models\\User', 162, 'App\\Models\\User', 162, 'App\\Models\\User', 162, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(30, '9c2d0f5e-8397-46b5-a73a-50e50a2c9d4a', 1, 'Delete', 'App\\Models\\User', 163, 'App\\Models\\User', 163, 'App\\Models\\User', 163, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(31, '9c2d0f5e-843e-46a3-ad16-3eecef5c17da', 1, 'Delete', 'App\\Models\\User', 164, 'App\\Models\\User', 164, 'App\\Models\\User', 164, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(32, '9c2d0f5e-84d7-4bf4-abd4-03fe1d86fbb7', 1, 'Delete', 'App\\Models\\User', 165, 'App\\Models\\User', 165, 'App\\Models\\User', 165, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(33, '9c2d0f5e-85a5-4f92-8799-206c6a0eadf1', 1, 'Delete', 'App\\Models\\User', 166, 'App\\Models\\User', 166, 'App\\Models\\User', 166, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(34, '9c2d0f5e-862a-4d75-9739-f51254d43c72', 1, 'Delete', 'App\\Models\\User', 167, 'App\\Models\\User', 167, 'App\\Models\\User', 167, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(35, '9c2d0f5e-8697-4417-8a6a-ee8d4dbd6937', 1, 'Delete', 'App\\Models\\User', 168, 'App\\Models\\User', 168, 'App\\Models\\User', 168, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(36, '9c2d0f5e-86fd-43c5-981e-65cb80ab351a', 1, 'Delete', 'App\\Models\\User', 169, 'App\\Models\\User', 169, 'App\\Models\\User', 169, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(37, '9c2d0f5e-8763-4b02-9ab0-bc4dcc09e227', 1, 'Delete', 'App\\Models\\User', 170, 'App\\Models\\User', 170, 'App\\Models\\User', 170, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(38, '9c2d0f5e-87d2-46c2-8e5a-74811aac7883', 1, 'Delete', 'App\\Models\\User', 171, 'App\\Models\\User', 171, 'App\\Models\\User', 171, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(39, '9c2d0f5e-8849-4533-b6d2-022d446f02bd', 1, 'Delete', 'App\\Models\\User', 172, 'App\\Models\\User', 172, 'App\\Models\\User', 172, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(40, '9c2d0f5e-88c6-4044-9a0c-ee4ce809b0fa', 1, 'Delete', 'App\\Models\\User', 173, 'App\\Models\\User', 173, 'App\\Models\\User', 173, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(41, '9c2d0f5e-8949-486d-90a8-2e97d9d83cbb', 1, 'Delete', 'App\\Models\\User', 174, 'App\\Models\\User', 174, 'App\\Models\\User', 174, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(42, '9c2d0f5e-89c7-450e-9255-3042960a79ba', 1, 'Delete', 'App\\Models\\User', 175, 'App\\Models\\User', 175, 'App\\Models\\User', 175, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(43, '9c2d0f5e-8a43-415d-af46-de00604bd6ea', 1, 'Delete', 'App\\Models\\User', 176, 'App\\Models\\User', 176, 'App\\Models\\User', 176, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(44, '9c2d0f5e-8ab9-4bea-97e5-b9958cc1c789', 1, 'Delete', 'App\\Models\\User', 177, 'App\\Models\\User', 177, 'App\\Models\\User', 177, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(45, '9c2d0f5e-8b2f-4839-b2bd-0c5c9e81fa9a', 1, 'Delete', 'App\\Models\\User', 178, 'App\\Models\\User', 178, 'App\\Models\\User', 178, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(46, '9c2d0f5e-8bc1-43ab-ac15-e43db65e601b', 1, 'Delete', 'App\\Models\\User', 179, 'App\\Models\\User', 179, 'App\\Models\\User', 179, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(47, '9c2d0f5e-8cb6-45c3-8a83-60237bd8e501', 1, 'Delete', 'App\\Models\\User', 180, 'App\\Models\\User', 180, 'App\\Models\\User', 180, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(48, '9c2d0f5e-8d2d-4efc-8e17-41a2ac3e8ac6', 1, 'Delete', 'App\\Models\\User', 181, 'App\\Models\\User', 181, 'App\\Models\\User', 181, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(49, '9c2d0f5e-8db3-41fc-a6c2-cc1ca1fc6b7f', 1, 'Delete', 'App\\Models\\User', 182, 'App\\Models\\User', 182, 'App\\Models\\User', 182, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(50, '9c2d0f5e-8e39-4c7f-83fb-4fda38af7daf', 1, 'Delete', 'App\\Models\\User', 183, 'App\\Models\\User', 183, 'App\\Models\\User', 183, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(51, '9c2d0f5e-8eb8-4790-a67b-622638aa8dec', 1, 'Delete', 'App\\Models\\User', 184, 'App\\Models\\User', 184, 'App\\Models\\User', 184, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(52, '9c2d0f5e-8f2b-4f62-bc99-5d53fd631d99', 1, 'Delete', 'App\\Models\\User', 185, 'App\\Models\\User', 185, 'App\\Models\\User', 185, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(53, '9c2d0f5e-8fa5-4cf5-aa43-be93409e1cf2', 1, 'Delete', 'App\\Models\\User', 186, 'App\\Models\\User', 186, 'App\\Models\\User', 186, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(54, '9c2d0f5e-9017-4c7b-8d5d-f985531b53e8', 1, 'Delete', 'App\\Models\\User', 187, 'App\\Models\\User', 187, 'App\\Models\\User', 187, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(55, '9c2d0f5e-9084-4b49-96db-41af07813149', 1, 'Delete', 'App\\Models\\User', 188, 'App\\Models\\User', 188, 'App\\Models\\User', 188, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(56, '9c2d0f5e-90f1-4e89-a246-c2dd8b2d7575', 1, 'Delete', 'App\\Models\\User', 189, 'App\\Models\\User', 189, 'App\\Models\\User', 189, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(57, '9c2d0f5e-9163-43d1-9b75-33b104bddd57', 1, 'Delete', 'App\\Models\\User', 190, 'App\\Models\\User', 190, 'App\\Models\\User', 190, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(58, '9c2d0f5e-91ea-4d9c-a8f3-802b495c7edf', 1, 'Delete', 'App\\Models\\User', 191, 'App\\Models\\User', 191, 'App\\Models\\User', 191, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(59, '9c2d0f5e-927b-45ee-b979-9c0d21abf2f8', 1, 'Delete', 'App\\Models\\User', 192, 'App\\Models\\User', 192, 'App\\Models\\User', 192, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(60, '9c2d0f5e-92ef-412b-8e75-cf1ce72000c1', 1, 'Delete', 'App\\Models\\User', 193, 'App\\Models\\User', 193, 'App\\Models\\User', 193, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(61, '9c2d0f5e-9383-40a7-81c3-cc891477a52b', 1, 'Delete', 'App\\Models\\User', 194, 'App\\Models\\User', 194, 'App\\Models\\User', 194, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(62, '9c2d0f5e-9404-4244-8adf-9933d24c31c2', 1, 'Delete', 'App\\Models\\User', 195, 'App\\Models\\User', 195, 'App\\Models\\User', 195, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(63, '9c2d0f5e-9482-4367-a8a3-776f0dd943b5', 1, 'Delete', 'App\\Models\\User', 196, 'App\\Models\\User', 196, 'App\\Models\\User', 196, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(64, '9c2d0f5e-94f9-4f1b-970e-ca3efc88adfc', 1, 'Delete', 'App\\Models\\User', 197, 'App\\Models\\User', 197, 'App\\Models\\User', 197, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(65, '9c2d0f5e-956e-44e6-9a16-ba8ecdb96859', 1, 'Delete', 'App\\Models\\User', 198, 'App\\Models\\User', 198, 'App\\Models\\User', 198, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(66, '9c2d0f5e-95e0-464e-9f3d-ce805c7654bc', 1, 'Delete', 'App\\Models\\User', 199, 'App\\Models\\User', 199, 'App\\Models\\User', 199, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(67, '9c2d0f5e-964f-43c9-9efe-c3e66733a375', 1, 'Delete', 'App\\Models\\User', 200, 'App\\Models\\User', 200, 'App\\Models\\User', 200, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(68, '9c2d0f5e-96c0-46e7-bb0e-2c94a2d92f69', 1, 'Delete', 'App\\Models\\User', 201, 'App\\Models\\User', 201, 'App\\Models\\User', 201, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(69, '9c2d0f5e-9724-44e8-95e7-34e4f7615ca6', 1, 'Delete', 'App\\Models\\User', 202, 'App\\Models\\User', 202, 'App\\Models\\User', 202, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(70, '9c2d0f5e-978b-4656-939e-1456c7813a48', 1, 'Delete', 'App\\Models\\User', 203, 'App\\Models\\User', 203, 'App\\Models\\User', 203, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(71, '9c2d0f5e-97fc-48cf-ba4c-991056c39f46', 1, 'Delete', 'App\\Models\\User', 204, 'App\\Models\\User', 204, 'App\\Models\\User', 204, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(72, '9c2d0f5e-9860-4d9a-890f-e2d80f13c258', 1, 'Delete', 'App\\Models\\User', 205, 'App\\Models\\User', 205, 'App\\Models\\User', 205, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(73, '9c2d0f5e-98c7-442b-adc1-1f39026f5d2c', 1, 'Delete', 'App\\Models\\User', 206, 'App\\Models\\User', 206, 'App\\Models\\User', 206, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(74, '9c2d0f5e-9936-4390-b941-c4daa919d2f3', 1, 'Delete', 'App\\Models\\User', 207, 'App\\Models\\User', 207, 'App\\Models\\User', 207, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(75, '9c2d0f5e-9997-40cf-ae83-4b71202068b8', 1, 'Delete', 'App\\Models\\User', 208, 'App\\Models\\User', 208, 'App\\Models\\User', 208, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(76, '9c2d0f5e-99fb-4f8c-b2f5-017e0ae0bb0f', 1, 'Delete', 'App\\Models\\User', 209, 'App\\Models\\User', 209, 'App\\Models\\User', 209, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(77, '9c2d0f5e-9a86-4db0-9d15-07a56e7c68ba', 1, 'Delete', 'App\\Models\\User', 210, 'App\\Models\\User', 210, 'App\\Models\\User', 210, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(78, '9c2d0f5e-9aec-4f76-aab9-b9c98dc68de7', 1, 'Delete', 'App\\Models\\User', 211, 'App\\Models\\User', 211, 'App\\Models\\User', 211, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(79, '9c2d0f5e-9b52-4885-a6eb-6ec4bd22b3ee', 1, 'Delete', 'App\\Models\\User', 212, 'App\\Models\\User', 212, 'App\\Models\\User', 212, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(80, '9c2d0f5e-9bb7-4c3e-be52-d143d7402aea', 1, 'Delete', 'App\\Models\\User', 213, 'App\\Models\\User', 213, 'App\\Models\\User', 213, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(81, '9c2d0f5e-9c1f-4a70-9985-ec84663e86d1', 1, 'Delete', 'App\\Models\\User', 214, 'App\\Models\\User', 214, 'App\\Models\\User', 214, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(82, '9c2d0f5e-9c7b-4294-a730-dfe084be6d6f', 1, 'Delete', 'App\\Models\\User', 215, 'App\\Models\\User', 215, 'App\\Models\\User', 215, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(83, '9c2d0f5e-9ce1-454c-ac63-89d37ddf957b', 1, 'Delete', 'App\\Models\\User', 216, 'App\\Models\\User', 216, 'App\\Models\\User', 216, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(84, '9c2d0f5e-9d37-40db-8e34-a0589dbfbc7d', 1, 'Delete', 'App\\Models\\User', 217, 'App\\Models\\User', 217, 'App\\Models\\User', 217, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(85, '9c2d0f5e-9d93-4f41-af6f-05090659b410', 1, 'Delete', 'App\\Models\\User', 218, 'App\\Models\\User', 218, 'App\\Models\\User', 218, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(86, '9c2d0f5e-9dee-413d-9e75-bd0479bba3c5', 1, 'Delete', 'App\\Models\\User', 219, 'App\\Models\\User', 219, 'App\\Models\\User', 219, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(87, '9c2d0f5e-9e49-4b94-ba3b-e531197a6519', 1, 'Delete', 'App\\Models\\User', 220, 'App\\Models\\User', 220, 'App\\Models\\User', 220, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(88, '9c2d0f5e-9ea4-4547-a10f-d1d92867adb0', 1, 'Delete', 'App\\Models\\User', 221, 'App\\Models\\User', 221, 'App\\Models\\User', 221, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(89, '9c2d0f5e-9f01-4bd8-af81-d747ee4d1c1d', 1, 'Delete', 'App\\Models\\User', 222, 'App\\Models\\User', 222, 'App\\Models\\User', 222, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(90, '9c2d0f5e-9f5b-4a65-969b-1c564582b19d', 1, 'Delete', 'App\\Models\\User', 223, 'App\\Models\\User', 223, 'App\\Models\\User', 223, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(91, '9c2d0f5e-9faf-46e2-9c10-bf5a996269de', 1, 'Delete', 'App\\Models\\User', 224, 'App\\Models\\User', 224, 'App\\Models\\User', 224, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(92, '9c2d0f5e-a022-451d-a2bc-b3c7f265899c', 1, 'Delete', 'App\\Models\\User', 225, 'App\\Models\\User', 225, 'App\\Models\\User', 225, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(93, '9c2d0f5e-a07e-433a-886f-0faa94c1b10b', 1, 'Delete', 'App\\Models\\User', 226, 'App\\Models\\User', 226, 'App\\Models\\User', 226, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(94, '9c2d0f5e-a0cf-49e6-bafa-0caca3d6978e', 1, 'Delete', 'App\\Models\\User', 227, 'App\\Models\\User', 227, 'App\\Models\\User', 227, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(95, '9c2d0f5e-a121-47e9-8969-1478ae126a29', 1, 'Delete', 'App\\Models\\User', 228, 'App\\Models\\User', 228, 'App\\Models\\User', 228, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(96, '9c2d0f5e-a174-40f0-9ee4-7c8a6ec420f8', 1, 'Delete', 'App\\Models\\User', 229, 'App\\Models\\User', 229, 'App\\Models\\User', 229, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(97, '9c2d0f5e-a1c7-4bc7-ab46-2c36eca50a25', 1, 'Delete', 'App\\Models\\User', 230, 'App\\Models\\User', 230, 'App\\Models\\User', 230, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(98, '9c2d0f5e-a218-46c0-8b12-b8a3c49773d6', 1, 'Delete', 'App\\Models\\User', 231, 'App\\Models\\User', 231, 'App\\Models\\User', 231, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(99, '9c2d0f5e-a26a-46d9-8f2d-613d10da61ec', 1, 'Delete', 'App\\Models\\User', 232, 'App\\Models\\User', 232, 'App\\Models\\User', 232, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(100, '9c2d0f5e-a2b5-411b-8bf9-0fb830b88872', 1, 'Delete', 'App\\Models\\User', 233, 'App\\Models\\User', 233, 'App\\Models\\User', 233, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(101, '9c2d0f5e-a301-4f01-b02f-9c0d9ae542d1', 1, 'Delete', 'App\\Models\\User', 234, 'App\\Models\\User', 234, 'App\\Models\\User', 234, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(102, '9c2d0f5e-a34f-4758-97bc-31306efb9de0', 1, 'Delete', 'App\\Models\\User', 235, 'App\\Models\\User', 235, 'App\\Models\\User', 235, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(103, '9c2d0f5e-a398-4984-8331-85700d00aead', 1, 'Delete', 'App\\Models\\User', 236, 'App\\Models\\User', 236, 'App\\Models\\User', 236, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(104, '9c2d0f5e-a3e3-4779-8809-4cd99e363814', 1, 'Delete', 'App\\Models\\User', 237, 'App\\Models\\User', 237, 'App\\Models\\User', 237, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(105, '9c2d0f5e-a42d-4437-a144-879c97135e35', 1, 'Delete', 'App\\Models\\User', 238, 'App\\Models\\User', 238, 'App\\Models\\User', 238, '', 'finished', '', '2024-05-31 16:37:33', '2024-05-31 16:37:33', NULL, NULL),
(106, '9c2d0f6e-2403-44dc-9367-6a69c395d33e', 1, 'Delete', 'App\\Models\\User', 2, 'App\\Models\\User', 2, 'App\\Models\\User', 2, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(107, '9c2d0f6e-2505-4650-8a9e-5ac589deaa6f', 1, 'Delete', 'App\\Models\\User', 11, 'App\\Models\\User', 11, 'App\\Models\\User', 11, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(108, '9c2d0f6e-25cb-4a0c-ba04-ddce70b35674', 1, 'Delete', 'App\\Models\\User', 45, 'App\\Models\\User', 45, 'App\\Models\\User', 45, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(109, '9c2d0f6e-267b-41a2-ba2e-230110e22e73', 1, 'Delete', 'App\\Models\\User', 50, 'App\\Models\\User', 50, 'App\\Models\\User', 50, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(110, '9c2d0f6e-2728-4ab4-a1d7-8ecf24d76b0f', 1, 'Delete', 'App\\Models\\User', 54, 'App\\Models\\User', 54, 'App\\Models\\User', 54, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(111, '9c2d0f6e-27ac-4f10-b619-77efb32fcbed', 1, 'Delete', 'App\\Models\\User', 57, 'App\\Models\\User', 57, 'App\\Models\\User', 57, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(112, '9c2d0f6e-2846-4314-b905-a0d1d4959291', 1, 'Delete', 'App\\Models\\User', 58, 'App\\Models\\User', 58, 'App\\Models\\User', 58, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(113, '9c2d0f6e-28e1-4a36-b78f-796ae5963d0d', 1, 'Delete', 'App\\Models\\User', 59, 'App\\Models\\User', 59, 'App\\Models\\User', 59, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(114, '9c2d0f6e-2963-4db4-acc7-bef29264dfc0', 1, 'Delete', 'App\\Models\\User', 60, 'App\\Models\\User', 60, 'App\\Models\\User', 60, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(115, '9c2d0f6e-2a1e-4394-91fb-4178a96dfb17', 1, 'Delete', 'App\\Models\\User', 61, 'App\\Models\\User', 61, 'App\\Models\\User', 61, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(116, '9c2d0f6e-2abc-44c0-a42a-bb2b703c2d0a', 1, 'Delete', 'App\\Models\\User', 62, 'App\\Models\\User', 62, 'App\\Models\\User', 62, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(117, '9c2d0f6e-2b4b-4fc0-8437-2d7a6b8f7c4a', 1, 'Delete', 'App\\Models\\User', 63, 'App\\Models\\User', 63, 'App\\Models\\User', 63, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(118, '9c2d0f6e-2bdf-4a71-8b96-b0c297e58ead', 1, 'Delete', 'App\\Models\\User', 64, 'App\\Models\\User', 64, 'App\\Models\\User', 64, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(119, '9c2d0f6e-2c8d-48be-bf09-264669645ddf', 1, 'Delete', 'App\\Models\\User', 66, 'App\\Models\\User', 66, 'App\\Models\\User', 66, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(120, '9c2d0f6e-2d41-40bd-8d08-6aad9705ec26', 1, 'Delete', 'App\\Models\\User', 67, 'App\\Models\\User', 67, 'App\\Models\\User', 67, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(121, '9c2d0f6e-2df8-4b79-84c4-edb90d845a40', 1, 'Delete', 'App\\Models\\User', 68, 'App\\Models\\User', 68, 'App\\Models\\User', 68, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(122, '9c2d0f6e-2e74-4b19-b0c3-60fe3f619818', 1, 'Delete', 'App\\Models\\User', 69, 'App\\Models\\User', 69, 'App\\Models\\User', 69, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(123, '9c2d0f6e-2eef-497b-a08f-0ed1d32e8a3b', 1, 'Delete', 'App\\Models\\User', 70, 'App\\Models\\User', 70, 'App\\Models\\User', 70, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(124, '9c2d0f6e-2f78-4410-b165-2d7ef018ac62', 1, 'Delete', 'App\\Models\\User', 71, 'App\\Models\\User', 71, 'App\\Models\\User', 71, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(125, '9c2d0f6e-301d-44a1-bba5-4e00f2c07c32', 1, 'Delete', 'App\\Models\\User', 72, 'App\\Models\\User', 72, 'App\\Models\\User', 72, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(126, '9c2d0f6e-30b5-4572-b72e-56f326a10aed', 1, 'Delete', 'App\\Models\\User', 73, 'App\\Models\\User', 73, 'App\\Models\\User', 73, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(127, '9c2d0f6e-3139-411c-b707-4372ee706f0e', 1, 'Delete', 'App\\Models\\User', 74, 'App\\Models\\User', 74, 'App\\Models\\User', 74, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(128, '9c2d0f6e-31bc-4f5d-8005-9ef9612f26fe', 1, 'Delete', 'App\\Models\\User', 75, 'App\\Models\\User', 75, 'App\\Models\\User', 75, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(129, '9c2d0f6e-3250-40d9-a351-e0e896d5dd9d', 1, 'Delete', 'App\\Models\\User', 76, 'App\\Models\\User', 76, 'App\\Models\\User', 76, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(130, '9c2d0f6e-32f9-49a4-aa0d-60670ed869fa', 1, 'Delete', 'App\\Models\\User', 77, 'App\\Models\\User', 77, 'App\\Models\\User', 77, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(131, '9c2d0f6e-33fa-4a8a-ae46-368a5c1926c6', 1, 'Delete', 'App\\Models\\User', 78, 'App\\Models\\User', 78, 'App\\Models\\User', 78, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(132, '9c2d0f6e-3489-47e4-8b19-404a6f6d123e', 1, 'Delete', 'App\\Models\\User', 79, 'App\\Models\\User', 79, 'App\\Models\\User', 79, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(133, '9c2d0f6e-3501-473c-87d3-10da3d662fb3', 1, 'Delete', 'App\\Models\\User', 80, 'App\\Models\\User', 80, 'App\\Models\\User', 80, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(134, '9c2d0f6e-3574-4453-8ead-add35a98d80b', 1, 'Delete', 'App\\Models\\User', 81, 'App\\Models\\User', 81, 'App\\Models\\User', 81, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(135, '9c2d0f6e-35f3-4288-9815-7163ce829ce8', 1, 'Delete', 'App\\Models\\User', 82, 'App\\Models\\User', 82, 'App\\Models\\User', 82, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(136, '9c2d0f6e-3685-43e8-bffb-583baa07409a', 1, 'Delete', 'App\\Models\\User', 83, 'App\\Models\\User', 83, 'App\\Models\\User', 83, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(137, '9c2d0f6e-3708-4cdf-aefb-b9a1f1ae918e', 1, 'Delete', 'App\\Models\\User', 84, 'App\\Models\\User', 84, 'App\\Models\\User', 84, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(138, '9c2d0f6e-378a-4cea-81a8-f09b2174e65e', 1, 'Delete', 'App\\Models\\User', 85, 'App\\Models\\User', 85, 'App\\Models\\User', 85, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(139, '9c2d0f6e-3804-4eaa-9d8a-e7e02177d08f', 1, 'Delete', 'App\\Models\\User', 86, 'App\\Models\\User', 86, 'App\\Models\\User', 86, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(140, '9c2d0f6e-3886-4a36-95f4-2565c0b416e0', 1, 'Delete', 'App\\Models\\User', 87, 'App\\Models\\User', 87, 'App\\Models\\User', 87, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(141, '9c2d0f6e-38f9-464a-8ff8-c4d121e5ca23', 1, 'Delete', 'App\\Models\\User', 88, 'App\\Models\\User', 88, 'App\\Models\\User', 88, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(142, '9c2d0f6e-3995-4f47-ac90-50b8386887a5', 1, 'Delete', 'App\\Models\\User', 89, 'App\\Models\\User', 89, 'App\\Models\\User', 89, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(143, '9c2d0f6e-3a2a-4b06-be62-1d3a20f03224', 1, 'Delete', 'App\\Models\\User', 90, 'App\\Models\\User', 90, 'App\\Models\\User', 90, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(144, '9c2d0f6e-3aa6-463f-b87e-655b845d9af7', 1, 'Delete', 'App\\Models\\User', 91, 'App\\Models\\User', 91, 'App\\Models\\User', 91, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(145, '9c2d0f6e-3b1f-4e1c-933f-a72016f17cbc', 1, 'Delete', 'App\\Models\\User', 92, 'App\\Models\\User', 92, 'App\\Models\\User', 92, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(146, '9c2d0f6e-3b92-4e29-81a7-d0e207e13252', 1, 'Delete', 'App\\Models\\User', 93, 'App\\Models\\User', 93, 'App\\Models\\User', 93, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(147, '9c2d0f6e-3c21-4113-8c61-268a4dcb0607', 1, 'Delete', 'App\\Models\\User', 94, 'App\\Models\\User', 94, 'App\\Models\\User', 94, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(148, '9c2d0f6e-3cab-47ad-b882-14adfa8c5ff9', 1, 'Delete', 'App\\Models\\User', 95, 'App\\Models\\User', 95, 'App\\Models\\User', 95, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(149, '9c2d0f6e-3d27-41e9-9872-81f335fab898', 1, 'Delete', 'App\\Models\\User', 96, 'App\\Models\\User', 96, 'App\\Models\\User', 96, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(150, '9c2d0f6e-3da7-4aa9-bbc0-13125492db32', 1, 'Delete', 'App\\Models\\User', 97, 'App\\Models\\User', 97, 'App\\Models\\User', 97, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(151, '9c2d0f6e-3e38-454d-ad60-2bbaa0e3fd4e', 1, 'Delete', 'App\\Models\\User', 98, 'App\\Models\\User', 98, 'App\\Models\\User', 98, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(152, '9c2d0f6e-3ecf-480f-a2a7-eaaea794096e', 1, 'Delete', 'App\\Models\\User', 99, 'App\\Models\\User', 99, 'App\\Models\\User', 99, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(153, '9c2d0f6e-3f5d-42e1-b430-2df0375edd15', 1, 'Delete', 'App\\Models\\User', 100, 'App\\Models\\User', 100, 'App\\Models\\User', 100, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(154, '9c2d0f6e-4009-4c4d-8e75-7a3b2bc6a4e6', 1, 'Delete', 'App\\Models\\User', 101, 'App\\Models\\User', 101, 'App\\Models\\User', 101, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(155, '9c2d0f6e-409a-4414-8121-8aa082b40f3e', 1, 'Delete', 'App\\Models\\User', 102, 'App\\Models\\User', 102, 'App\\Models\\User', 102, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(156, '9c2d0f6e-4121-432c-ae1f-492456562f7c', 1, 'Delete', 'App\\Models\\User', 103, 'App\\Models\\User', 103, 'App\\Models\\User', 103, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(157, '9c2d0f6e-41af-4d82-a8b5-09be79e1cb65', 1, 'Delete', 'App\\Models\\User', 104, 'App\\Models\\User', 104, 'App\\Models\\User', 104, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(158, '9c2d0f6e-422d-497f-baf5-59d96881f268', 1, 'Delete', 'App\\Models\\User', 105, 'App\\Models\\User', 105, 'App\\Models\\User', 105, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(159, '9c2d0f6e-42b3-40ec-8c8f-9547a0c71461', 1, 'Delete', 'App\\Models\\User', 106, 'App\\Models\\User', 106, 'App\\Models\\User', 106, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(160, '9c2d0f6e-432a-4a0f-a519-b14e8194e12f', 1, 'Delete', 'App\\Models\\User', 107, 'App\\Models\\User', 107, 'App\\Models\\User', 107, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(161, '9c2d0f6e-439d-4e95-a7eb-fed51aba5024', 1, 'Delete', 'App\\Models\\User', 108, 'App\\Models\\User', 108, 'App\\Models\\User', 108, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(162, '9c2d0f6e-441d-4322-b897-ae5aecee58dd', 1, 'Delete', 'App\\Models\\User', 109, 'App\\Models\\User', 109, 'App\\Models\\User', 109, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(163, '9c2d0f6e-4496-41e6-83a8-0951a4e28527', 1, 'Delete', 'App\\Models\\User', 110, 'App\\Models\\User', 110, 'App\\Models\\User', 110, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(164, '9c2d0f6e-452d-471a-913b-30b613d6df7b', 1, 'Delete', 'App\\Models\\User', 111, 'App\\Models\\User', 111, 'App\\Models\\User', 111, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(165, '9c2d0f6e-45c5-49c3-a561-20d0d1ecd902', 1, 'Delete', 'App\\Models\\User', 112, 'App\\Models\\User', 112, 'App\\Models\\User', 112, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(166, '9c2d0f6e-4659-4f89-b875-bb625dffc231', 1, 'Delete', 'App\\Models\\User', 113, 'App\\Models\\User', 113, 'App\\Models\\User', 113, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(167, '9c2d0f6e-46e9-4263-8351-cbc783303fcc', 1, 'Delete', 'App\\Models\\User', 114, 'App\\Models\\User', 114, 'App\\Models\\User', 114, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(168, '9c2d0f6e-476c-4a3a-901b-11a6b4c63fa3', 1, 'Delete', 'App\\Models\\User', 115, 'App\\Models\\User', 115, 'App\\Models\\User', 115, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(169, '9c2d0f6e-47f5-40ab-81a9-63da7413a00b', 1, 'Delete', 'App\\Models\\User', 116, 'App\\Models\\User', 116, 'App\\Models\\User', 116, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(170, '9c2d0f6e-488e-4b80-85d3-1c4e21afeb7a', 1, 'Delete', 'App\\Models\\User', 117, 'App\\Models\\User', 117, 'App\\Models\\User', 117, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(171, '9c2d0f6e-4917-4918-a54d-4b8fd2270ce9', 1, 'Delete', 'App\\Models\\User', 118, 'App\\Models\\User', 118, 'App\\Models\\User', 118, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(172, '9c2d0f6e-498c-47ed-8d48-9685ec19db3a', 1, 'Delete', 'App\\Models\\User', 119, 'App\\Models\\User', 119, 'App\\Models\\User', 119, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(173, '9c2d0f6e-4a16-4958-833f-b665ef0bafb2', 1, 'Delete', 'App\\Models\\User', 120, 'App\\Models\\User', 120, 'App\\Models\\User', 120, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(174, '9c2d0f6e-4aa8-438f-a4b1-f72720a6fea4', 1, 'Delete', 'App\\Models\\User', 121, 'App\\Models\\User', 121, 'App\\Models\\User', 121, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(175, '9c2d0f6e-4b2e-45c1-ae58-d1f19f0f8fc3', 1, 'Delete', 'App\\Models\\User', 130, 'App\\Models\\User', 130, 'App\\Models\\User', 130, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(176, '9c2d0f6e-4bc3-42bd-a968-f11947af079d', 1, 'Delete', 'App\\Models\\User', 131, 'App\\Models\\User', 131, 'App\\Models\\User', 131, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(177, '9c2d0f6e-4c5c-4743-b5d6-4830d4284e49', 1, 'Delete', 'App\\Models\\User', 132, 'App\\Models\\User', 132, 'App\\Models\\User', 132, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(178, '9c2d0f6e-4ce5-48ea-8efb-ca5152c3d464', 1, 'Delete', 'App\\Models\\User', 133, 'App\\Models\\User', 133, 'App\\Models\\User', 133, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(179, '9c2d0f6e-4d87-408d-a457-415730c2ce02', 1, 'Delete', 'App\\Models\\User', 134, 'App\\Models\\User', 134, 'App\\Models\\User', 134, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(180, '9c2d0f6e-4e1d-44f1-9033-88f8c42645be', 1, 'Delete', 'App\\Models\\User', 135, 'App\\Models\\User', 135, 'App\\Models\\User', 135, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(181, '9c2d0f6e-4eb1-4f6c-b613-a3f54d5f3f9e', 1, 'Delete', 'App\\Models\\User', 136, 'App\\Models\\User', 136, 'App\\Models\\User', 136, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(182, '9c2d0f6e-4f48-4f33-bd0d-1799b4c9847f', 1, 'Delete', 'App\\Models\\User', 137, 'App\\Models\\User', 137, 'App\\Models\\User', 137, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(183, '9c2d0f6e-4fde-4599-9926-bd00c18a09a5', 1, 'Delete', 'App\\Models\\User', 138, 'App\\Models\\User', 138, 'App\\Models\\User', 138, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(184, '9c2d0f6e-5058-469e-9c66-d485de84027b', 1, 'Delete', 'App\\Models\\User', 139, 'App\\Models\\User', 139, 'App\\Models\\User', 139, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(185, '9c2d0f6e-50d5-44b9-bbab-80280fab5948', 1, 'Delete', 'App\\Models\\User', 239, 'App\\Models\\User', 239, 'App\\Models\\User', 239, '', 'finished', '', '2024-05-31 16:37:43', '2024-05-31 16:37:43', NULL, NULL),
(186, '9c334ef0-5c52-4b65-bbc6-7b0375ba6dd3', 1, 'Update', 'App\\Models\\Unit', 1, 'App\\Models\\Unit', 1, 'App\\Models\\Unit', 1, '', 'finished', '', '2024-06-03 19:10:16', '2024-06-03 19:10:16', '{\"section_id\":2}', '{\"section_id\":1}'),
(187, '9c334ef0-608f-41eb-9ac0-2b3fe9f497a7', 1, 'Create', 'App\\Models\\Shape', 1, 'App\\Models\\Shape', 1, 'App\\Models\\Shape', 1, '', 'finished', '', '2024-06-03 19:10:16', '2024-06-03 19:10:16', NULL, '{\"points\":\"194.22 594.9 358.85 579.06 358.85 520.98 194.22 531.85 194.22 594.9\",\"text_x\":\"253\",\"text_y\":\"562\",\"unit_id\":1,\"updated_at\":\"2024-06-03T19:10:16.000000Z\",\"created_at\":\"2024-06-03T19:10:16.000000Z\",\"id\":1}'),
(188, '9c351437-cfc9-4aa4-8787-c577b5f6abc9', 1, 'Update', 'App\\Models\\Shape', 1, 'App\\Models\\Shape', 1, 'App\\Models\\Shape', 1, '', 'finished', '', '2024-06-04 16:17:44', '2024-06-04 16:17:44', '[]', '[]'),
(189, '9c351437-d2e3-4637-99ab-056c16e2c637', 1, 'Update', 'App\\Models\\Unit', 1, 'App\\Models\\Unit', 1, 'App\\Models\\Unit', 1, '', 'finished', '', '2024-06-04 16:17:44', '2024-06-04 16:17:44', '{\"extra_exterior_const\":null,\"patio\":null,\"rooftop\":null}', '{\"extra_exterior_const\":\"200\",\"patio\":\"100\",\"rooftop\":\"90\"}'),
(190, '9c3525b7-fd29-4859-9fba-5b288f66902d', 1, 'Update', 'App\\Models\\Shape', 1, 'App\\Models\\Shape', 1, 'App\\Models\\Shape', 1, '', 'finished', '', '2024-06-04 17:06:40', '2024-06-04 17:06:40', '[]', '[]'),
(191, '9c3525b7-ff64-46a5-924c-4a34221141fd', 1, 'Update', 'App\\Models\\Unit', 1, 'App\\Models\\Unit', 1, 'App\\Models\\Unit', 1, '', 'finished', '', '2024-06-04 17:06:40', '2024-06-04 17:06:40', '{\"floor\":1}', '{\"floor\":\"3\"}'),
(192, '9c371465-eed7-4297-8d4f-dbcdc745bc6f', 1, 'Create', 'App\\Models\\User', 130, 'App\\Models\\User', 130, 'App\\Models\\User', 130, '', 'finished', '', '2024-06-05 16:09:53', '2024-06-05 16:09:53', NULL, '{\"name\":\"Erick Asesor\",\"email\":\"erickalejandropm117@gmail.com\",\"phone\":null,\"lang\":\"es\",\"country_code\":\"MX\",\"role\":\"agent\",\"updated_at\":\"2024-06-05T16:09:53.000000Z\",\"created_at\":\"2024-06-05T16:09:53.000000Z\",\"id\":130}'),
(193, '9c3715fc-d99a-4aaa-8d7f-714ad3891579', 1, 'Create', 'App\\Models\\User', 163, 'App\\Models\\User', 163, 'App\\Models\\User', 163, '', 'finished', '', '2024-06-05 16:14:20', '2024-06-05 16:14:20', NULL, '{\"name\":\"Erick Asesor\",\"email\":\"erickalejandropm117@gmail.com\",\"phone\":null,\"lang\":\"es\",\"country_code\":\"MX\",\"role\":\"agent\",\"updated_at\":\"2024-06-05T16:14:20.000000Z\",\"created_at\":\"2024-06-05T16:14:20.000000Z\",\"id\":163}'),
(194, '9c371781-2f94-4324-bf73-233bfa812237', 1, 'Create', 'App\\Models\\User', 164, 'App\\Models\\User', 164, 'App\\Models\\User', 164, '', 'finished', '', '2024-06-05 16:18:34', '2024-06-05 16:18:34', NULL, '{\"name\":\"Panchito P\\u00e9rez\",\"email\":\"tesren@live.com.mx\",\"phone\":null,\"lang\":\"es\",\"country_code\":\"MX\",\"role\":\"client\",\"agent_id\":\"163\",\"notes\":null,\"updated_at\":\"2024-06-05T16:18:34.000000Z\",\"created_at\":\"2024-06-05T16:18:34.000000Z\",\"id\":164}'),
(195, '9c39939d-b75e-4048-9751-fd1b326b3e01', 1, 'Update', 'App\\Models\\Shape', 138, 'App\\Models\\Shape', 138, 'App\\Models\\Shape', 138, '', 'finished', '', '2024-06-06 21:57:16', '2024-06-06 21:57:16', '{\"points\":\"1393.83 212.5 1393.83 166.5 1284.67 156.17 1284.67 206.5 1319.67 208.17 1393.83 212.\"}', '{\"points\":\"1393.83 212.5 1393.83 166.5 1284.67 156.17 1284.67 206.5 1319.67 208.17 1393.83 212\"}'),
(196, '9c39939d-bd36-431c-8af4-fdb01e91102f', 1, 'Update', 'App\\Models\\Unit', 112, 'App\\Models\\Unit', 112, 'App\\Models\\Unit', 112, '', 'finished', '', '2024-06-06 21:57:16', '2024-06-06 21:57:16', '[]', '[]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `construction_updates`
--

CREATE TABLE `construction_updates` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `description_en` varchar(255) DEFAULT NULL,
  `portrait_path` varchar(255) DEFAULT NULL,
  `video_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emails`
--

CREATE TABLE `emails` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `information`
--

CREATE TABLE `information` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `valid` tinyint(1) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\UnitType', 1, '1471895b-4dac-4088-8676-b253926e4680', 'blueprints', '1R opción 1', '1ropcion1png.png', 'image/png', 'media', 'media', 780908, '[]', '[]', '{\"thumb\":true,\"medium\":true,\"large\":true}', '[]', 1, '2024-05-30 19:16:37', '2024-05-30 19:16:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nova_field_attachments`
--

CREATE TABLE `nova_field_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `attachable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachable_id` bigint(20) UNSIGNED NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nova_notifications`
--

CREATE TABLE `nova_notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nova_pending_field_attachments`
--

CREATE TABLE `nova_pending_field_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `draft_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_plans`
--

CREATE TABLE `payment_plans` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `name_en` varchar(255) NOT NULL,
  `discount` int(11) DEFAULT NULL,
  `additional_discount` double DEFAULT NULL,
  `down_payment` int(11) NOT NULL,
  `second_payment` int(11) DEFAULT NULL,
  `months_percent` int(11) DEFAULT NULL,
  `closing_payment` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `payment_plan_unit`
--

CREATE TABLE `payment_plan_unit` (
  `id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `payment_plan_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `private_messages`
--

CREATE TABLE `private_messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `name` varchar(35) NOT NULL,
  `view` varchar(255) DEFAULT NULL,
  `tower_name` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sections`
--

INSERT INTO `sections` (`id`, `name`, `view`, `tower_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Torre A - Vista al Mar', 'Mar', 'A', '2024-05-30 18:29:53', '2024-05-30 18:29:53', NULL),
(2, 'Torre A - Vista al campo de Golf', 'Golf', 'A', '2024-05-30 18:30:07', '2024-05-30 18:30:07', NULL),
(3, 'Torre B - Vista al campo de Golf', 'Golf', 'B', '2024-05-30 18:30:15', '2024-05-30 18:30:15', NULL),
(4, 'Torre B - Vista al Mar', 'Mar', 'B', '2024-05-30 18:30:26', '2024-05-30 18:30:26', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `shapes`
--

CREATE TABLE `shapes` (
  `id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `points` varchar(255) DEFAULT NULL,
  `text_x` double DEFAULT NULL,
  `text_y` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `shapes`
--

INSERT INTO `shapes` (`id`, `unit_id`, `points`, `text_x`, `text_y`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 98, '194.22 594.9 358.85 579.06 358.85 520.98 194.22 531.85 194.22 594.9', 260.4, 562.3, '2024-06-04 21:19:27', '2024-06-04 21:19:27', NULL),
(2, 126, '358.85 579.06 358.85 520.98 430.14 518.33 430.14 573.31 358.85 579.06', 374.1, 553.1, '2024-06-04 21:29:26', '2024-06-04 21:29:26', NULL),
(3, 24, '534.74 560.5 430.14 573.31 430.14 518.33 534.74 506.92 534.74 560.5', 462.2, 544.5, '2024-06-04 21:33:10', '2024-06-04 21:33:10', NULL),
(4, 23, '627.46 550.72 534.74 560.5 534.74 506.92 627.46 501.33 627.46 550.72', 561, 535.3, '2024-06-04 21:34:15', '2024-06-04 21:34:15', NULL),
(5, 125, '684.3 544.66 627.46 550.72 627.46 501.33 684.3 496.9 684.3 544.66', 635.9, 528.2, '2024-06-04 21:35:09', '2024-06-04 21:35:09', NULL),
(6, 33, '796.59 535.57 684.3 544.66 684.3 496.9 796.59 487.58 796.59 535.57', 721.9, 520.5, '2024-06-04 21:37:01', '2024-06-04 21:37:01', NULL),
(7, 37, '358.85 461.26 194.22 467.32 194.22 531.85 358.85 520.98 358.85 461.26', 260.8, 500.9, '2024-06-04 21:38:43', '2024-06-04 21:40:49', NULL),
(8, 28, '430.14 458.23 358.85 461.26 358.85 520.98 430.14 518.33 430.14 458.23', 462.8, 489.2, '2024-06-04 21:45:23', '2024-06-04 21:52:56', '2024-06-04 21:52:56'),
(9, 28, '534.74 451.24 430.14 458.23 430.14 518.33 534.74 506.92 534.74 451.24', 462.8, 489.2, '2024-06-04 21:49:17', '2024-06-04 21:53:00', NULL),
(10, 45, '430.14 458.23 358.85 461.26 358.85 520.98 430.14 518.33 430.14 458.23', 374.7, 494, '2024-06-04 21:53:42', '2024-06-04 21:56:00', NULL),
(11, 27, '627.46 446.35 534.74 451.24 534.74 506.92 627.46 501.33 627.46 446.35', 561.6, 481, '2024-06-04 21:58:28', '2024-06-04 21:58:28', NULL),
(12, 44, '684.3 443.09 627.46 446.35 627.46 501.33 684.3 496.9 684.3 443.09', 636.5, 476.6, '2024-06-04 22:02:07', '2024-06-04 22:02:07', NULL),
(13, 36, '796.59 437.73 684.3 443.09 684.3 496.9 796.59 487.58 796.59 437.73', 722.5, 471.7, '2024-06-04 22:03:32', '2024-06-04 22:03:32', NULL),
(14, 101, '194.22 467.32 194.22 402.63 358.85 397.35 358.85 461.26 194.22 467.32', 260.5, 436.7, '2024-06-04 22:05:00', '2024-06-04 22:05:00', NULL),
(15, 5, '430.14 397.35 358.85 397.35 358.85 461.26 430.14 458.23 430.14 397.35', 374.5, 433.7, '2024-06-04 22:06:39', '2024-06-04 22:06:39', NULL),
(16, 164, '1127.32 627.27 1127.32 699.58 1212.38 680.68 1211.26 612.83 1127.32 627.27', 1156.5, 659.4, '2024-06-04 22:07:25', '2024-06-04 22:07:25', NULL),
(17, 30, '534.74 392.69 430.14 397.35 430.14 458.23 534.74 451.24 534.74 392.69', 462.6, 429.8, '2024-06-04 22:07:55', '2024-06-04 22:07:55', NULL),
(18, 29, '627.46 392.69 579.42 393.25 534.74 392.69 534.74 451.24 627.46 446.35 627.46 392.69', 561.4, 426.4, '2024-06-04 22:09:19', '2024-06-04 22:09:19', NULL),
(19, 193, '1211.26 612.83 1250.48 606.18 1250.22 671.54 1212.38 680.68 1211.26 612.83', 1216.4, 646.6, '2024-06-04 22:10:05', '2024-06-04 22:10:05', NULL),
(20, 47, '684.3 389.89 627.46 392.69 627.46 446.35 684.3 443.09 684.3 389.89', 636.3, 422.5, '2024-06-04 22:10:26', '2024-06-04 22:10:26', NULL),
(21, 38, '796.59 384.92 684.3 389.89 684.3 443.09 796.59 437.73 796.59 384.92', 722.3, 418.4, '2024-06-04 22:12:05', '2024-06-04 22:12:05', NULL),
(22, 40, '194.22 338.49 194.22 402.63 358.85 397.35 358.85 336.62 194.22 338.49', 260.9, 374, '2024-06-04 22:13:18', '2024-06-04 22:13:18', NULL),
(23, 49, '430.14 335.22 358.85 336.62 358.85 397.35 430.14 397.35 430.14 335.22', 375, 370.7, '2024-06-04 22:14:15', '2024-06-04 22:14:15', NULL),
(24, 32, '534.74 335.22 430.14 335.22 430.14 397.35 534.74 392.69 534.74 335.22', 463.2, 370.7, '2024-06-04 22:15:13', '2024-06-04 22:15:13', NULL),
(25, 31, '627.46 335.22 534.74 335.22 534.74 392.69 579.42 393.25 627.46 392.69 627.46 335.22', 562, 368.3, '2024-06-04 22:16:11', '2024-06-04 22:16:11', NULL),
(26, 48, '684.3 334.29 627.46 335.22 627.46 392.69 684.3 389.89 684.3 334.29', 636.8, 367.9, '2024-06-04 22:16:55', '2024-06-04 22:16:55', NULL),
(27, 163, '505.83 901.5 505.83 806.17 331.17 835.83 331.17 938.5 505.83 901.5', 393.7, 876.7, '2024-06-04 22:17:00', '2024-06-04 22:28:28', NULL),
(28, 39, '796.59 335.22 684.3 334.29 684.3 389.89 796.59 384.92 796.59 335.22', 722.9, 366.5, '2024-06-04 22:17:59', '2024-06-04 22:17:59', NULL),
(29, 138, '1307.33 594.75 1250.48 606.18 1250.22 671.54 1305.88 658.8 1307.33 594.75', 1264.3, 636.4, '2024-06-04 22:18:25', '2024-06-04 22:18:25', NULL),
(30, 107, '194.22 274.34 194.22 338.49 358.85 336.62 358.85 277.14 194.22 274.34', 260.3, 310.8, '2024-06-04 22:18:59', '2024-06-04 22:18:59', NULL),
(31, 139, '1361.67 587.05 1307.33 594.75 1305.88 658.8 1359.09 647.25 1361.67 587.05', 1319.2, 626.2, '2024-06-04 22:19:16', '2024-06-04 22:19:16', NULL),
(32, 7, '430.14 278.38 358.85 277.14 358.85 336.62 430.14 335.22 430.14 278.38', 374.2, 311.3, '2024-06-04 22:19:53', '2024-06-04 22:24:27', NULL),
(33, 194, '1398.78 580.82 1361.67 587.05 1359.09 647.25 1398.78 637.24 1398.78 580.82', 1364.2, 617.3, '2024-06-04 22:21:27', '2024-06-04 22:21:27', NULL),
(34, 165, '1467.3 568.03 1398.78 580.82 1398.78 637.24 1467.3 618.98 1467.3 568.03', 1421.3, 605.9, '2024-06-04 22:22:51', '2024-06-04 22:22:51', NULL),
(35, 2, '534.74 279.62 430.14 278.38 430.14 335.22 534.74 335.22 534.74 279.62', 462.4, 311.2, '2024-06-04 22:23:26', '2024-06-04 22:23:26', NULL),
(36, 168, '1126.39 552.66 1127.32 627.27 1211.26 612.83 1209.48 543.19 1126.39 552.66', 1155.5, 588.5, '2024-06-04 22:23:55', '2024-06-04 22:23:55', NULL),
(37, 196, '1250.47 538.83 1209.48 543.19 1211.26 612.83 1250.48 606.18 1250.47 538.83', 1215.6, 579.1, '2024-06-04 22:24:50', '2024-06-04 22:24:50', NULL),
(38, 1, '627.46 283.04 534.74 279.62 534.74 335.22 627.46 335.22 627.46 283.04', 561.2, 311.8, '2024-06-04 22:26:22', '2024-06-04 22:26:22', NULL),
(39, 142, '1306.86 531.23 1250.47 538.83 1250.48 606.18 1307.33 594.75 1306.86 531.23', 1264.5, 572, '2024-06-04 22:27:03', '2024-06-04 22:27:03', NULL),
(40, 6, '684.3 282.42 627.46 283.04 627.46 335.22 684.3 334.29 684.3 282.42', 636, 313.2, '2024-06-04 22:27:12', '2024-06-04 22:27:12', NULL),
(41, 106, '796.59 282.42 684.3 282.42 684.3 334.29 796.59 335.22 796.59 282.42', 722, 313.2, '2024-06-04 22:27:55', '2024-06-04 22:27:55', NULL),
(42, 143, '1361.67 587.05 1363.24 524.08 1306.86 531.23 1307.33 594.75 1361.67 587.05', 1320.5, 562.6, '2024-06-04 22:28:22', '2024-06-04 22:28:22', NULL),
(43, 192, '505.83 806.17 603.17 790 603.17 878.33 505.83 901.5 505.83 806.17', 529, 850.1, '2024-06-04 22:31:39', '2024-06-04 22:31:39', NULL),
(44, 111, '194.22 205.69 194.22 274.34 358.85 277.14 358.85 212.53 194.22 205.69', 260.6, 245.8, '2024-06-04 22:32:01', '2024-06-04 22:32:01', NULL),
(45, 9, '430.14 216.88 358.85 212.53 358.85 277.14 430.14 278.38 430.14 216.88', 374.5, 249.8, '2024-06-04 22:32:14', '2024-06-04 22:32:14', NULL),
(46, 4, '534.74 220.92 430.14 216.88 430.14 278.38 534.74 279.62 534.74 220.92', 462.6, 252.6, '2024-06-04 22:32:28', '2024-06-04 22:32:28', NULL),
(47, 3, '627.46 225.26 534.74 220.92 534.74 279.62 627.46 283.04 627.46 225.26', 561.4, 256.4, '2024-06-04 22:32:45', '2024-06-04 22:32:45', NULL),
(48, 8, '684.3 226.82 627.46 225.26 627.46 283.04 684.3 282.42 684.3 226.82', 636.3, 258.5, '2024-06-04 22:32:58', '2024-06-04 22:32:58', NULL),
(49, 110, '796.59 231.79 684.3 226.82 684.3 282.42 796.59 282.42 796.59 231.79', 722.3, 259, '2024-06-04 22:33:10', '2024-06-04 22:33:10', NULL),
(50, 197, '1398.78 580.82 1398.78 517.99 1363.24 524.08 1361.67 587.05 1398.78 580.82', 1365.5, 555.8, '2024-06-04 22:33:17', '2024-06-04 22:33:17', NULL),
(51, 169, '1467.3 568.03 1466.68 509.17 1398.78 517.99 1398.78 580.82 1467.3 568.03', 1421.3, 548.2, '2024-06-04 22:34:29', '2024-06-04 22:34:29', NULL),
(52, 172, '1126.39 552.66 1126.39 499.08 1209.79 491.31 1209.48 543.19 1126.39 552.66', 1154.2, 525.2, '2024-06-04 22:35:30', '2024-06-04 22:35:30', NULL),
(53, 137, '603.17 790 700 771.33 700 854.83 603.17 878.33 603.17 790', 629.1, 829.2, '2024-06-04 22:35:46', '2024-06-04 22:35:46', NULL),
(54, 114, '796.59 185.82 627.46 174.63 627.46 225.26 684.3 226.82 796.59 231.79 796.59 185.82', 692.4, 207.6, '2024-06-04 22:36:10', '2024-06-04 22:36:10', NULL),
(55, 41, '627.46 225.26 627.46 174.63 430.14 161.9 430.14 216.88 534.74 220.92 627.46 225.26', 507.2, 198, '2024-06-04 22:36:16', '2024-06-04 22:36:16', NULL),
(56, 115, '194.22 144.81 194.22 205.69 358.85 212.53 430.14 216.88 430.14 161.9 194.22 144.81', 290.7, 185.2, '2024-06-04 22:36:24', '2024-06-04 22:36:24', NULL),
(57, 200, '1209.79 491.31 1251.81 487.82 1250.47 538.83 1209.48 543.19 1209.79 491.31', 1215.7, 518.8, '2024-06-04 22:36:27', '2024-06-04 22:36:27', NULL),
(58, 136, '700 771.33 822.83 749.17 822.83 833.33 700 854.83 700 771.33', 739.1, 806.4, '2024-06-04 22:37:12', '2024-06-04 22:37:12', NULL),
(59, 146, '1309.81 481.06 1251.81 487.82 1250.47 538.83 1306.86 531.23 1309.81 481.06', 1265.1, 513.2, '2024-06-04 22:38:04', '2024-06-04 22:38:04', NULL),
(60, 67, '822.83 749.17 877.83 738.83 877.83 822.33 822.83 833.33 822.83 749.17', 827.6, 790.5, '2024-06-04 22:42:41', '2024-06-04 22:42:41', NULL),
(61, 147, '1363.24 477.89 1309.81 481.06 1306.86 531.23 1363.24 524.08 1363.24 477.89', 1320, 507.8, '2024-06-04 22:43:32', '2024-06-04 22:43:32', NULL),
(62, 201, '1398.78 473.14 1363.24 477.89 1363.24 524.08 1398.78 517.99 1398.78 473.14', 1365.8, 501.9, '2024-06-04 22:44:33', '2024-06-04 22:44:33', NULL),
(63, 162, '877.83 738.83 1009.83 715.83 1009.83 795.5 877.83 822.33 877.83 738.83', 921.9, 773.5, '2024-06-04 22:44:47', '2024-06-04 22:44:47', NULL),
(64, 173, '1465.85 467.2 1398.78 473.14 1398.78 517.99 1466.68 509.17 1465.85 467.2', 1420.5, 495.9, '2024-06-04 22:45:41', '2024-06-04 22:45:41', NULL),
(65, 59, '1209.79 438.97 1126.39 443.94 1126.39 499.08 1209.79 491.31 1209.79 438.97', 1154.8, 472.2, '2024-06-04 22:46:46', '2024-06-04 22:46:46', NULL),
(66, 70, '1251.81 435.87 1209.79 438.97 1209.79 491.31 1251.81 487.82 1251.81 435.87', 1216.4, 466.9, '2024-06-04 22:47:43', '2024-06-04 22:47:43', NULL),
(67, 50, '1309.81 430.9 1251.81 435.87 1251.81 487.82 1309.81 481.06 1309.81 430.9', 1266.3, 462.6, '2024-06-04 22:49:32', '2024-06-04 22:49:32', NULL),
(68, 150, '1363.24 429.65 1309.81 430.9 1309.81 481.06 1363.24 477.89 1363.24 429.65', 1322, 458.6, '2024-06-04 22:50:46', '2024-06-04 22:50:46', NULL),
(69, 202, '1398.78 426.24 1363.24 429.65 1363.24 477.89 1398.78 473.14 1398.78 426.24', 1366.3, 455.3, '2024-06-04 22:51:50', '2024-06-04 22:51:50', NULL),
(70, 167, '331.17 835.83 331.17 739.61 505.83 715.39 505.83 806.17 331.17 835.83', 401.2, 780, '2024-06-04 22:52:14', '2024-06-04 22:52:14', NULL),
(71, 174, '1465.2 423.75 1398.78 426.24 1398.78 473.14 1465.85 467.2 1465.2 423.75', 1420.5, 451.7, '2024-06-04 22:52:49', '2024-06-04 22:52:49', NULL),
(72, 62, '1126.39 389.27 1209.79 386.71 1209.79 438.97 1126.39 443.94 1126.39 389.27', 1154.5, 418.6, '2024-06-04 22:54:09', '2024-06-04 22:54:09', NULL),
(73, 72, '1251.81 386.71 1209.79 386.71 1209.79 438.97 1251.81 435.87 1251.81 386.71', 1216.2, 416.1, '2024-06-04 22:54:59', '2024-06-04 22:54:59', NULL),
(74, 151, '1309.81 383.21 1251.81 386.71 1251.81 435.87 1309.81 430.9 1309.81 383.21', 1266, 412.8, '2024-06-04 22:56:08', '2024-06-04 22:56:08', NULL),
(75, 152, '1363.24 382.1 1309.81 383.21 1309.81 430.9 1363.24 429.65 1363.24 382.1', 1321.7, 410, '2024-06-04 22:57:22', '2024-06-04 22:57:22', NULL),
(76, 204, '1398.78 380.89 1363.24 382.1 1363.24 429.65 1398.78 426.24 1398.78 380.89', 1366, 408.5, '2024-06-04 22:58:17', '2024-06-04 22:58:17', NULL),
(77, 175, '1464.5 378.56 1398.78 380.89 1398.78 426.24 1465.2 423.75 1464.5 378.56', 1420, 405.6, '2024-06-04 23:01:37', '2024-06-04 23:01:37', NULL),
(78, 195, '603.17 790 603.17 700.94 505.83 715.39 505.83 806.17 603.17 790', 536.5, 757.9, '2024-06-04 23:01:56', '2024-06-04 23:01:56', NULL),
(79, 13, '1126.39 335.46 1209.79 335.46 1209.79 386.71 1126.39 389.27 1126.39 335.46', 1154.7, 365.6, '2024-06-04 23:03:13', '2024-06-04 23:03:13', NULL),
(80, 141, '700 771.33 700 686.72 603.17 700.94 603.17 790 700 771.33', 631.5, 742.7, '2024-06-04 23:03:20', '2024-06-04 23:03:20', NULL),
(81, 16, '1251.81 336.39 1209.79 335.46 1209.79 386.71 1251.81 386.71 1251.81 336.39', 1216.3, 364.3, '2024-06-04 23:04:05', '2024-06-04 23:04:05', NULL),
(82, 53, '1251.81 336.39 1309.81 336.39 1309.81 383.21 1251.81 386.71 1251.81 336.39', 1266.3, 364.8, '2024-06-04 23:05:12', '2024-06-04 23:05:12', NULL),
(83, 54, '1363.24 336.39 1309.81 336.39 1309.81 383.21 1363.24 382.1 1363.24 336.39', 1321.9, 363, '2024-06-04 23:06:02', '2024-06-04 23:06:02', NULL),
(84, 140, '822.83 749.17 822.83 668.28 700 686.72 700 771.33 822.83 749.17', 741.5, 724.2, '2024-06-04 23:07:17', '2024-06-04 23:07:17', NULL),
(85, 206, '1398.78 336.39 1363.24 336.39 1363.24 382.1 1398.78 380.89 1398.78 336.39', 1366.3, 362.5, '2024-06-04 23:07:19', '2024-06-04 23:07:19', NULL),
(86, 176, '1465.2 335.46 1398.78 336.39 1398.78 380.89 1464.5 378.56 1465.2 335.46', 1420, 361.4, '2024-06-04 23:08:05', '2024-06-04 23:08:05', NULL),
(87, 14, '1126.39 283.04 1126.39 335.46 1209.79 335.46 1209.79 284.44 1126.39 283.04', 1154.4, 312.5, '2024-06-04 23:08:58', '2024-06-04 23:08:58', NULL),
(88, 17, '1251.81 286.07 1209.79 284.44 1209.79 335.46 1251.81 336.39 1251.81 286.07', 1216, 313.7, '2024-06-04 23:10:19', '2024-06-04 23:10:19', NULL),
(89, 10, '1309.81 286.53 1251.81 286.07 1251.81 336.39 1309.81 336.39 1309.81 286.53', 1265.6, 314.5, '2024-06-04 23:11:12', '2024-06-04 23:11:12', NULL),
(90, 155, '1363.24 286.77 1309.81 286.53 1309.81 336.39 1363.24 336.39 1363.24 286.77', 1321.6, 314.7, '2024-06-04 23:12:01', '2024-06-04 23:12:01', NULL),
(91, 18, '1398.78 287.7 1363.24 286.77 1363.24 336.39 1398.78 336.39 1398.78 287.7', 1366, 314.8, '2024-06-04 23:12:59', '2024-06-04 23:12:59', NULL),
(92, 177, '1465.2 289.8 1398.78 287.7 1398.78 336.39 1465.2 335.46 1465.2 289.8', 1419.8, 315.3, '2024-06-04 23:13:59', '2024-06-04 23:16:02', NULL),
(93, 180, '1126.39 230.54 1126.39 283.04 1209.79 284.44 1209.79 234.58 1126.39 230.54', 1154.5, 260.7, '2024-06-04 23:17:36', '2024-06-04 23:17:36', NULL),
(94, 19, '1251.81 237.69 1209.79 234.58 1209.79 284.44 1251.81 286.07 1251.81 237.69', 1216.2, 263.6, '2024-06-04 23:18:21', '2024-06-04 23:18:21', NULL),
(95, 156, '1309.81 241.11 1251.81 237.69 1251.81 286.07 1309.81 286.53 1309.81 241.11', 1266.1, 265.4, '2024-06-04 23:19:07', '2024-06-04 23:19:07', NULL),
(96, 157, '1363.24 242.97 1309.81 241.11 1309.81 286.53 1363.24 286.77 1363.24 242.97', 1321.7, 267.2, '2024-06-04 23:19:56', '2024-06-04 23:19:56', NULL),
(97, 148, '536.83 517.61 536.83 463.39 441.65 468.5 441.65 523.93 536.83 517.61', 468.6, 498, '2024-06-04 23:20:54', '2024-06-04 23:20:54', NULL),
(98, 15, '877.83 738.83 877.83 660.72 822.83 668.28 822.83 749.17 877.83 738.83', 830.1, 709.3, '2024-06-04 23:22:18', '2024-06-04 23:22:18', NULL),
(99, 20, '1398.78 243.28 1363.24 242.97 1363.24 286.77 1398.78 287.7 1398.78 243.28', 1366, 268.6, '2024-06-04 23:22:19', '2024-06-04 23:22:19', NULL),
(100, 181, '1465.2 246.08 1398.78 243.28 1398.78 287.7 1465.2 289.8 1465.2 246.08', 1420, 269.8, '2024-06-04 23:23:10', '2024-06-04 23:23:57', NULL),
(101, 187, '131.5 173.17 131.5 104.83 353.17 121.17 351.72 183.83 275.5 180.5 131.5 173.17', 220.4, 146.2, '2024-06-04 23:23:28', '2024-06-04 23:23:28', NULL),
(102, 205, '585.94 407.61 585.94 354.5 536.83 355.83 536.83 409.17 585.94 407.61', 540, 384, '2024-06-04 23:24:09', '2024-06-04 23:24:09', NULL),
(103, 123, '1156.83 508.5 1164.83 456.17 1104.67 460.83 1101.94 513.61 1156.83 508.5', 1112.6, 489.3, '2024-06-04 23:24:32', '2024-06-04 23:24:32', NULL),
(104, 81, '1273 500 1284.67 448.17 1210.17 453.67 1210.17 504.5 1273 500', 1226.8, 480.7, '2024-06-04 23:25:10', '2024-06-04 23:25:10', NULL),
(105, 184, '1251.81 186.44 1126.39 176.5 1126.39 230.54 1209.79 234.58 1251.81 237.69 1251.81 186.44', 1174.3, 210.3, '2024-06-04 23:25:15', '2024-06-04 23:25:15', NULL),
(106, 22, '1210.17 504.5 1210.17 453.67 1164.83 456.17 1156.83 508.5 1210.17 504.5', 1165.8, 484.9, '2024-06-04 23:25:51', '2024-06-04 23:25:51', NULL),
(107, 188, '1363.24 195.75 1251.81 186.44 1251.81 237.69 1309.81 241.11 1363.24 242.97 1363.24 195.75', 1291.7, 218, '2024-06-04 23:26:14', '2024-06-04 23:26:14', NULL),
(108, 96, '1026.83 522.5 1026.83 466 1104.67 460.83 1101.94 513.61 1026.83 522.5', 1045.7, 496.1, '2024-06-04 23:26:18', '2024-06-04 23:26:18', NULL),
(109, 185, '1465.2 204.76 1363.24 195.75 1363.24 242.97 1398.78 243.28 1465.2 246.08 1465.2 204.76', 1398.3, 224.2, '2024-06-04 23:26:58', '2024-06-04 23:26:58', NULL),
(110, 97, '1393.83 490.3 1393.83 440.5 1319.67 445.83 1319.67 497 1393.83 490.3', 1339.1, 473.1, '2024-06-04 23:27:18', '2024-06-04 23:27:18', NULL),
(111, 149, '441.65 523.93 441.65 468.5 351.72 472.94 351.72 530.06 441.65 523.93', 375, 503, '2024-06-04 23:28:00', '2024-06-04 23:28:00', NULL),
(112, 160, '1127.32 778.79 1127.32 699.58 1212.38 680.68 1213.6 755.03 1127.32 778.79', 1158.2, 733, '2024-06-04 23:28:26', '2024-06-04 23:28:26', NULL),
(113, 124, '1319.67 497 1319.67 445.83 1284.67 448.17 1273 500 1319.67 497', 1282.9, 476.1, '2024-06-04 23:29:00', '2024-06-04 23:29:00', NULL),
(114, 190, '1212.38 680.68 1250.22 671.54 1251.57 745.86 1213.6 755.03 1212.38 680.68', 1218.7, 716.5, '2024-06-04 23:29:33', '2024-06-04 23:29:33', NULL),
(115, 134, '1250.22 671.54 1305.88 658.8 1305.88 732.94 1251.57 745.86 1250.22 671.54', 1264.7, 705.6, '2024-06-04 23:30:20', '2024-06-04 23:30:20', NULL),
(116, 179, '131.5 298.06 131.5 234.5 275.5 240.17 275.5 299.39 131.5 298.06', 185, 271, '2024-06-04 23:31:27', '2024-06-04 23:31:27', NULL),
(117, 34, '1104.67 407.5 1026.83 408.83 1026.83 466 1104.67 460.83 1104.67 407.5', 1046.3, 441.1, '2024-06-04 23:31:33', '2024-06-04 23:31:33', NULL),
(118, 135, '1359.09 647.25 1305.88 658.8 1305.88 732.94 1359.67 719.46 1359.09 647.25', 1319.3, 693.3, '2024-06-04 23:31:35', '2024-06-04 23:31:35', NULL),
(119, 191, '1398.78 637.24 1359.09 647.25 1359.67 719.46 1398.78 706.09 1398.78 637.24', 1365.3, 681.6, '2024-06-04 23:32:24', '2024-06-04 23:32:24', NULL),
(120, 26, '1284.67 448.17 1284.67 399.17 1209.33 403 1210.17 453.67 1284.67 448.17', 1227, 430.8, '2024-06-04 23:32:30', '2024-06-04 23:32:30', NULL),
(121, 35, '1393.83 440.5 1393.83 395.17 1319.67 398.33 1319.67 445.83 1393.83 440.5', 1339.5, 424.9, '2024-06-04 23:32:46', '2024-06-04 23:32:46', NULL),
(122, 161, '1398.78 637.24 1467.3 618.98 1467.3 677.92 1398.78 706.09 1398.78 637.24', 1422.4, 665.8, '2024-06-04 23:33:15', '2024-06-04 23:33:15', NULL),
(123, 43, '1319.67 445.83 1319.67 398.33 1284.67 399.17 1284.67 448.17 1319.67 445.83', 1289, 426.5, '2024-06-04 23:33:29', '2024-06-04 23:33:29', NULL),
(124, 25, '1164.83 405 1209.33 403 1210.17 453.67 1164.83 456.17 1164.83 405', 1170.3, 433.4, '2024-06-04 23:33:51', '2024-06-04 23:33:51', NULL),
(125, 166, '1009.83 715.83 1009.83 641.39 877.83 660.72 877.83 738.83 1009.83 715.83', 924.3, 694.5, '2024-06-04 23:33:54', '2024-06-04 23:33:54', NULL),
(126, 42, '1164.83 456.17 1164.83 405 1104.67 407.5 1104.67 460.83 1164.83 456.17', 1114.6, 437.3, '2024-06-04 23:34:11', '2024-06-04 23:34:11', NULL),
(127, 210, '351.72 240.5 351.72 183.83 275.5 180.5 275.5 240.17 351.72 240.5', 295, 214, '2024-06-04 23:34:51', '2024-06-04 23:34:51', NULL),
(128, 90, '1160.83 759.83 1243.83 739.39 1243.17 678.39 1160.83 691.61 1160.83 759.83', 1180.5, 723.5, '2024-06-04 23:38:12', '2024-06-04 23:38:12', NULL),
(129, 46, '1104.67 354.5 1164.83 353.33 1164.83 405 1104.67 407.5 1104.67 354.5', 1114.3, 384.8, '2024-06-04 23:39:21', '2024-06-04 23:39:21', NULL),
(130, 117, '1243.17 678.39 1295.5 670.94 1295.94 727.61 1243.83 739.39 1243.17 678.39', 1250, 709, '2024-06-04 23:39:26', '2024-06-04 23:39:26', NULL),
(131, 82, '1209.33 403 1209.33 353.33 1164.83 353.33 1164.83 405 1209.33 403', 1169.7, 383, '2024-06-04 23:39:36', '2024-06-04 23:39:36', NULL),
(132, 83, '1284.67 399.17 1284.67 351.33 1209.33 353.33 1209.33 403 1284.67 399.17', 1226.8, 381.6, '2024-06-04 23:40:03', '2024-06-04 23:40:03', NULL),
(133, 127, '1319.67 398.33 1319.67 350.67 1284.67 351.33 1284.67 399.17 1319.67 398.33', 1288.8, 378.1, '2024-06-04 23:40:24', '2024-06-04 23:40:24', NULL),
(134, 100, '1393.83 395.17 1393.83 349.67 1319.67 350.67 1319.67 398.33 1393.83 395.17', 1339.2, 378.4, '2024-06-04 23:40:39', '2024-06-04 23:40:39', NULL),
(135, 99, '1026.83 408.83 1026.83 355.83 1104.67 354.5 1104.67 407.5 1026.83 408.83', 1046.1, 386.1, '2024-06-04 23:41:42', '2024-06-04 23:41:42', NULL),
(136, 21, '1295.5 670.94 1350 661 1350 720.67 1296 727.61 1295.5 670.94', 1300.6, 698.7, '2024-06-04 23:43:00', '2024-06-04 23:43:00', NULL),
(137, 129, '1319.67 350.67 1319.67 302 1284.67 302 1284.67 351.33 1319.67 350.67', 1289.1, 329.9, '2024-06-04 23:44:59', '2024-06-04 23:46:21', NULL),
(138, 112, '1393.83 212.5 1393.83 166.5 1284.67 156.17 1284.67 206.5 1319.67 208.17 1393.83 212', 1317, 190, '2024-06-04 23:45:15', '2024-06-06 21:57:16', NULL),
(139, 128, '1104.67 300.17 1164.83 300.17 1164.83 353.33 1104.67 354.5 1104.67 300.17', 1114.9, 331.7, '2024-06-04 23:45:26', '2024-06-04 23:45:26', NULL),
(140, 85, '1209.33 301 1284.67 302 1284.67 351.33 1209.33 353.33 1209.33 301', 1227.4, 331.6, '2024-06-04 23:47:02', '2024-06-04 23:47:02', NULL),
(141, 76, '1350 661 1400.06 652.42 1400.06 712.06 1350 720.67 1350 661', 1352.6, 690.9, '2024-06-04 23:47:44', '2024-06-04 23:47:44', NULL),
(142, 102, '1026.83 300.17 1104.67 300.17 1104.67 354.5 1026.83 355.83 1026.83 300.17', 1046.6, 332.4, '2024-06-04 23:47:45', '2024-06-04 23:47:45', NULL),
(143, 58, '131.5 544.94 131.5 484.28 275.5 477.61 276.83 535.83 131.5 544.94', 186, 515, '2024-06-04 23:48:49', '2024-06-04 23:48:49', NULL),
(144, 103, '1393.83 349.67 1393.83 303.5 1319.67 302 1319.67 350.67 1393.83 349.67', 1339.6, 330.7, '2024-06-04 23:49:03', '2024-06-04 23:49:03', NULL),
(145, 84, '1209.33 353.33 1209.33 301 1164.83 300.17 1164.83 353.33 1209.33 353.33', 1170.2, 330.5, '2024-06-04 23:49:32', '2024-06-04 23:49:32', NULL),
(146, 186, '536.83 133.17 706.5 144.33 704.83 199.83 585.94 195.5 536.83 192.83 536.83 133.17', 623, 173, '2024-06-04 23:50:06', '2024-06-04 23:50:06', NULL),
(147, 118, '1400.06 652.42 1446.28 642.61 1446.28 705.17 1400.06 712.06 1400.06 652.42', 1401.4, 681.1, '2024-06-04 23:50:27', '2024-06-04 23:50:27', NULL),
(148, 113, '1026.83 190.5 1026.83 142.17 1164.83 152.5 1164.83 199.83 1104.67 195.5 1026.83 190.5', 1074.1, 175.4, '2024-06-04 23:50:49', '2024-06-04 23:50:49', NULL),
(149, 116, '1284.67 206.5 1284.67 156.17 1164.83 152.5 1164.83 199.83 1209.33 201.83 1284.67 206.5', 1202.7, 184, '2024-06-04 23:51:45', '2024-06-04 23:51:45', NULL),
(150, 130, '1104.67 248.5 1164.83 249.83 1164.83 300.17 1104.67 300.17 1104.67 248.5', 1114.1, 278.7, '2024-06-04 23:52:19', '2024-06-04 23:52:19', NULL),
(151, 86, '1209.33 301 1209.33 251.83 1164.83 249.83 1164.83 300.17 1209.33 301', 1169.5, 279.2, '2024-06-04 23:52:53', '2024-06-04 23:52:53', NULL),
(152, 87, '1284.67 302 1284.67 254.72 1209.33 251.83 1209.33 301 1284.67 302', 1226.5, 281.3, '2024-06-04 23:53:24', '2024-06-04 23:53:24', NULL),
(153, 131, '1319.67 302 1319.67 255.39 1284.67 254.72 1284.67 302 1319.67 302', 1288.6, 281.6, '2024-06-04 23:53:47', '2024-06-04 23:53:47', NULL),
(154, 105, '1393.83 303.5 1393.83 258.72 1319.67 255.39 1319.67 302 1393.83 303.5', 1339, 283.8, '2024-06-04 23:54:06', '2024-06-04 23:54:06', NULL),
(155, 91, '1446.28 642.61 1530.06 625.94 1529.39 684.06 1446.28 705.17 1446.28 642.61', 1463.7, 669.9, '2024-06-04 23:54:12', '2024-06-04 23:54:12', NULL),
(156, 104, '1026.83 300.17 1026.83 244.72 1104.67 248.5 1104.67 300.17 1026.83 300.17', 1045.8, 276.8, '2024-06-04 23:54:55', '2024-06-04 23:54:55', NULL),
(157, 183, '131.5 234.5 131.5 173.17 275.5 180.5 275.5 240.17 131.5 234.5', 185, 211, '2024-06-04 23:55:55', '2024-06-04 23:55:55', NULL),
(158, 92, '1160.83 691.61 1160.83 618.94 1240.17 605.83 1243.17 678.39 1160.83 691.61', 1182.6, 653.1, '2024-06-04 23:56:59', '2024-06-04 23:56:59', NULL),
(159, 203, '351.72 472.94 351.72 416.06 275.5 418.72 275.5 477.61 351.72 472.94', 295, 451, '2024-06-04 23:57:12', '2024-06-04 23:58:34', NULL),
(160, 108, '1026.83 244.72 1026.83 190.5 1104.67 195.5 1104.67 248.5 1026.83 244.72', 1046.1, 224, '2024-06-04 23:57:17', '2024-06-04 23:57:17', NULL),
(161, 132, '1164.83 249.83 1164.83 199.83 1104.67 195.5 1104.67 248.5 1164.83 249.83', 1114.4, 227.1, '2024-06-04 23:58:15', '2024-06-04 23:58:15', NULL),
(162, 119, '1240.17 605.83 1295.5 596.94 1295.5 670.94 1243.17 678.39 1240.17 605.83', 1250.3, 641.5, '2024-06-04 23:58:16', '2024-06-04 23:58:16', NULL),
(163, 189, '353.17 121.17 536.83 133.17 536.83 192.83 441.65 188.5 351.72 183.83 353.17 121.17', 422, 161, '2024-06-04 23:58:41', '2024-06-04 23:58:41', NULL),
(164, 69, '351.72 530.06 351.72 472.94 275.5 477.61 276.83 535.83 351.72 530.06', 295, 508, '2024-06-04 23:58:48', '2024-06-04 23:58:48', NULL),
(165, 77, '1295.5 596.94 1350 588.72 1350 661 1295.5 670.94 1295.5 596.94', 1303, 634.2, '2024-06-04 23:59:24', '2024-06-04 23:59:24', NULL),
(166, 88, '1209.33 251.83 1209.33 201.83 1164.83 199.83 1164.83 249.83 1209.33 251.83', 1169.7, 229.6, '2024-06-04 23:59:32', '2024-06-04 23:59:32', NULL),
(167, 158, '536.83 247.5 536.83 192.83 441.65 188.5 441.65 244.17 536.83 247.5', 469, 222, '2024-06-04 23:59:56', '2024-06-04 23:59:56', NULL),
(168, 89, '1284.67 254.72 1284.67 206.5 1209.33 201.83 1209.33 251.83 1284.67 254.72', 1226.8, 232.7, '2024-06-05 00:00:08', '2024-06-05 00:00:08', NULL),
(169, 68, '585.94 513.83 585.94 460.94 536.83 463.39 536.83 517.61 585.94 513.83', 540, 493, '2024-06-05 00:00:12', '2024-06-05 00:00:12', NULL),
(170, 78, '1350 588.72 1400.06 581.83 1400.06 652.42 1350 661 1350 588.72', 1355.1, 625.8, '2024-06-05 00:01:01', '2024-06-05 00:01:01', NULL),
(171, 57, '704.83 505.39 704.83 454.06 585.94 460.94 585.94 513.83 704.83 505.39', 625, 486, '2024-06-05 00:01:36', '2024-06-05 00:01:36', NULL),
(172, 159, '441.65 244.17 441.65 188.5 351.72 183.83 351.72 240.5 441.65 244.17', 376, 218, '2024-06-05 00:01:46', '2024-06-05 00:01:46', NULL),
(173, 109, '1393.83 258.72 1393.83 212.5 1319.67 208.17 1319.67 255.39 1393.83 258.72', 1339.3, 237.8, '2024-06-05 00:02:02', '2024-06-05 00:02:02', NULL),
(174, 120, '1400.06 581.83 1446.28 575.17 1446.28 642.61 1400.06 652.42 1400.06 581.83', 1407.6, 617.6, '2024-06-05 00:02:12', '2024-06-05 00:02:12', NULL),
(175, 133, '1319.67 255.39 1319.67 208.17 1284.67 206.5 1284.67 254.72 1319.67 255.39', 1288.8, 234.1, '2024-06-05 00:02:30', '2024-06-05 00:02:30', NULL),
(176, 61, '275.5 477.61 275.5 418.72 131.5 423.17 131.5 484.28 275.5 477.61', 186, 455, '2024-06-05 00:02:41', '2024-06-05 00:02:41', NULL),
(177, 209, '585.94 248.17 585.94 195.5 536.83 192.83 536.83 247.5 585.94 248.17', 540, 222, '2024-06-05 00:02:47', '2024-06-05 00:02:47', NULL),
(178, 93, '1446.28 575.17 1530.06 562.33 1530.06 625.94 1446.28 642.61 1446.28 575.17', 1470.9, 606.9, '2024-06-05 00:03:23', '2024-06-05 00:03:23', NULL),
(179, 52, '441.65 468.5 441.65 412.72 351.72 416.06 351.72 472.94 441.65 468.5', 376, 447, '2024-06-05 00:05:05', '2024-06-05 00:05:05', NULL),
(180, 182, '704.83 251.17 704.83 199.83 585.94 195.5 585.94 248.17 704.83 251.17', 625, 215, '2024-06-05 00:05:08', '2024-06-05 00:05:08', NULL),
(181, 51, '536.83 463.39 536.83 409.17 441.65 412.72 441.65 468.5 536.83 463.39', 469, 443, '2024-06-05 00:06:21', '2024-06-05 00:06:21', NULL),
(182, 71, '585.94 460.94 585.94 407.61 536.83 409.17 536.83 463.39 585.94 460.94', 541, 439, '2024-06-05 00:07:57', '2024-06-05 00:07:57', NULL),
(183, 63, '704.83 404.5 704.83 351.83 585.94 354.5 585.94 407.61 704.83 404.5', 625.5, 377.8, '2024-06-05 00:08:12', '2024-06-05 00:09:52', NULL),
(184, 207, '585.94 301.83 585.94 248.17 536.83 247.5 536.83 301.39 585.94 301.83', 540, 277, '2024-06-05 00:08:14', '2024-06-05 00:08:14', NULL),
(185, 60, '704.83 454.06 704.83 404.5 585.94 407.61 585.94 460.94 704.83 454.06', 625, 432, '2024-06-05 00:09:20', '2024-06-05 00:09:20', NULL),
(186, 64, '275.5 418.72 275.5 358.5 131.5 360.94 131.5 423.17 275.5 418.72', 185.8, 395.2, '2024-06-05 00:09:27', '2024-06-05 00:11:23', NULL),
(187, 65, '704.83 351.83 704.83 301.39 585.94 301.83 585.94 354.5 704.83 351.83', 625, 322, '2024-06-05 00:10:17', '2024-06-05 00:10:17', NULL),
(188, 178, '704.83 301.39 704.83 251.17 585.94 248.17 585.94 301.83 704.83 301.39', 625, 270, '2024-06-05 00:11:02', '2024-06-05 00:11:02', NULL),
(189, 154, '441.65 412.72 441.65 355.83 351.72 357.39 351.72 416.06 441.65 412.72', 376.3, 390.3, '2024-06-05 00:11:32', '2024-06-05 00:11:32', NULL),
(190, 73, '351.72 416.06 351.72 357.39 275.5 358.5 275.5 418.72 351.72 416.06', 295, 392, '2024-06-05 00:12:40', '2024-06-05 00:12:40', NULL),
(191, 12, '441.65 300.5 441.65 244.17 351.72 240.5 351.72 299.83 441.65 300.5', 376, 274, '2024-06-05 00:12:48', '2024-06-05 00:12:48', NULL),
(192, 208, '351.72 299.83 351.72 240.5 275.5 240.17 275.5 299.39 351.72 299.83', 295, 274, '2024-06-05 00:14:48', '2024-06-05 00:14:48', NULL),
(193, 11, '536.83 301.39 536.83 247.5 441.65 244.17 441.65 300.5 536.83 301.39', 468, 277, '2024-06-05 00:15:47', '2024-06-05 00:15:47', NULL),
(194, 153, '536.83 409.17 536.83 355.83 441.65 355.83 441.65 412.72 536.83 409.17', 469, 388.7, '2024-06-05 00:16:54', '2024-06-05 00:16:54', NULL),
(195, 66, '275.5 358.5 275.5 299.39 131.5 298.06 131.5 360.94 275.5 358.5', 185.9, 333.9, '2024-06-05 00:16:57', '2024-06-05 00:16:57', NULL),
(196, 75, '351.72 357.39 351.72 299.83 275.5 299.39 275.5 358.5 351.72 357.39', 295.3, 333.3, '2024-06-05 00:17:20', '2024-06-05 00:17:20', NULL),
(197, 56, '441.65 355.83 441.65 300.5 351.72 299.83 351.72 357.39 441.65 355.83', 376.6, 333, '2024-06-05 00:18:01', '2024-06-05 00:18:01', NULL),
(198, 55, '536.83 355.83 536.83 301.39 441.65 300.5 441.65 355.83 536.83 355.83', 469, 332.6, '2024-06-05 00:18:18', '2024-06-05 00:21:07', NULL),
(199, 74, '585.94 354.5 585.94 301.83 536.83 301.39 536.83 355.83 585.94 354.5', 541, 329, '2024-06-05 00:19:51', '2024-06-05 00:19:51', NULL),
(200, 171, '131.5 621.83 131.5 544.94 276.83 535.83 276.83 607.83 131.5 621.83', 186.8, 583.2, '2024-06-05 18:05:50', '2024-06-05 18:05:50', NULL),
(201, 199, '276.83 607.83 351.72 598.06 351.72 530.06 276.83 535.83 276.83 607.83', 296.3, 573.3, '2024-06-05 18:15:10', '2024-06-05 18:15:10', NULL),
(202, 145, '351.72 530.06 441.65 523.93 441.65 590.52 351.72 598.06 351.72 530.06', 376.6, 565.4, '2024-06-05 18:20:28', '2024-06-05 18:20:28', NULL),
(203, 144, '441.65 590.52 536.83 581.39 536.83 517.61 441.65 523.93 441.65 590.52', 469.4, 558.5, '2024-06-05 18:31:22', '2024-06-05 18:31:22', NULL),
(204, 198, '536.83 517.61 585.94 513.83 585.94 575.83 536.83 581.39 536.83 517.61', 541.1, 552, '2024-06-05 18:35:31', '2024-06-05 18:35:31', NULL),
(205, 170, '704.83 505.39 704.83 564.28 585.94 575.83 585.94 513.83 704.83 505.39', 625.9, 545, '2024-06-05 18:37:45', '2024-06-05 18:37:45', NULL),
(206, 94, '1026.83 522.5 1101.94 513.61 1101.94 570.28 1026.83 579.61 1026.83 522.5', 1044.9, 551, '2024-06-05 18:43:25', '2024-06-05 18:43:25', NULL),
(207, 121, '1101.94 570.28 1156.83 562.33 1156.83 508.5 1101.94 513.61 1101.94 570.28', 1109.1, 543.8, '2024-06-05 18:45:18', '2024-06-05 18:45:18', NULL),
(208, 79, '1156.83 562.33 1210.17 557 1210.17 504.5 1156.83 508.5 1156.83 562.33', 1166.3, 537.2, '2024-06-05 19:01:32', '2024-06-05 19:07:27', NULL),
(209, 80, '1210.17 504.5 1273 500 1273 549.33 1210.17 557 1210.17 504.5', 1221.5, 532.9, '2024-06-05 19:12:46', '2024-06-05 19:12:46', NULL),
(210, 122, '1273 500 1319.67 497 1319.67 545.67 1273 549.33 1273 500', 1283.1, 526.4, '2024-06-05 19:14:18', '2024-06-05 19:14:18', NULL),
(211, 95, '1319.67 497 1393.83 490.3 1393.83 535.5 1319.67 545.67 1319.67 497', 1339.4, 522.4, '2024-06-05 19:15:14', '2024-06-05 19:15:14', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `towers`
--

CREATE TABLE `towers` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `units`
--

CREATE TABLE `units` (
  `id` int(11) NOT NULL,
  `unit_type_id` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `floor` int(11) NOT NULL,
  `price` double NOT NULL,
  `currency` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `youtube_link` varchar(255) DEFAULT NULL,
  `view_path` varchar(255) DEFAULT NULL,
  `interior_const` double NOT NULL,
  `exterior_const` double NOT NULL,
  `extra_exterior_const` double DEFAULT NULL,
  `patio` double DEFAULT NULL,
  `rooftop` double DEFAULT NULL,
  `garden` double DEFAULT NULL,
  `storage` double DEFAULT NULL,
  `const_total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `units`
--

INSERT INTO `units` (`id`, `unit_type_id`, `section_id`, `name`, `floor`, `price`, `currency`, `status`, `youtube_link`, `view_path`, `interior_const`, `exterior_const`, `extra_exterior_const`, `patio`, `rooftop`, `garden`, `storage`, `const_total`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'A805', 8, 6126442.991, 'MXN', 'Apartada', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 3.71, 65.88, NULL, NULL, NULL),
(2, 1, 1, 'A807', 8, 6172010.038, 'MXN', 'Apartada', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 4.2, 66.37, NULL, NULL, NULL),
(3, 1, 1, 'A905', 9, 6142502.246, 'MXN', 'Apartada', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 3.72, 65.89, NULL, NULL, NULL),
(4, 1, 1, 'A907', 9, 6142502.246, 'MXN', 'Apartada', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 3.72, 65.89, NULL, NULL, NULL),
(5, 3, 1, 'A609', 6, 4304216.402, 'MXN', 'Apartada', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 4.21, 44.47, NULL, NULL, NULL),
(6, 3, 1, 'A803', 8, 4274024.411, 'MXN', 'Apartada', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 3.68, 43.94, NULL, NULL, NULL),
(7, 3, 1, 'A809', 8, 4273051.716, 'MXN', 'Apartada', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 3.67, 43.93, NULL, NULL, NULL),
(8, 3, 1, 'A903', 9, 4335282.618, 'MXN', 'Apartada', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 4.2, 44.46, NULL, NULL, NULL),
(9, 3, 1, 'A909', 9, 4335282.618, 'MXN', 'Apartada', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 4.2, 44.46, NULL, NULL, NULL),
(10, 1, 4, 'B805', 8, 6172010.038, 'MXN', 'Apartada', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 4.2, 66.37, NULL, NULL, NULL),
(11, 1, 3, 'B806', 8, 5887083.796, 'MXN', 'Apartada', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 3.72, 65.89, NULL, NULL, NULL),
(12, 1, 3, 'B808', 8, 5929970.428, 'MXN', 'Apartada', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 4.2, 66.37, NULL, NULL, NULL),
(13, 5, 4, 'B701', 7, 8256561.08, 'MXN', 'Apartada', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 4.2, 91.1, NULL, NULL, NULL),
(14, 5, 4, 'B801', 8, 8238838.516, 'MXN', 'Apartada', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 3.78, 90.68, NULL, NULL, NULL),
(15, 3, 3, 'B204', 2, 4187465.1, 'MXN', 'Apartada', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 4.2, 44.46, NULL, NULL, NULL),
(16, 3, 4, 'B703', 7, 4267352.44, 'MXN', 'Apartada', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 3.72, 43.98, NULL, NULL, NULL),
(17, 3, 4, 'B803', 8, 3916072.435, 'MXN', 'Apartada', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 4.2, 44.46, NULL, NULL, NULL),
(18, 3, 4, 'B809', 8, 4324604.582, 'MXN', 'Apartada', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 4.2, 44.46, NULL, NULL, NULL),
(19, 3, 4, 'B903', 9, 4294328.531, 'MXN', 'Apartada', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 3.78, 44.04, NULL, NULL, NULL),
(20, 3, 4, 'B909', 9, 4335282.618, 'MXN', 'Apartada', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 4.2, 44.46, NULL, NULL, NULL),
(21, 1, 2, 'GHA6', 1, 7014166.65, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, 38.44, 4.2, 104.81, NULL, NULL, NULL),
(22, 1, 2, 'A406', 4, 5798861.757, 'MXN', 'Vendida', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 3.38, 65.55, NULL, NULL, NULL),
(23, 1, 1, 'A405', 4, 6702101.09, 'MXN', 'Vendida', NULL, NULL, 51.73, 10.44, 9.6, NULL, NULL, NULL, 6.97, 78.74, NULL, NULL, NULL),
(24, 1, 1, 'A407', 4, 6060334.752, 'MXN', 'Vendida', NULL, NULL, 51.73, 10.44, 9.6, NULL, NULL, NULL, 0, 71.77, NULL, NULL, NULL),
(25, 1, 2, 'A506', 5, 5886044.722, 'MXN', 'Vendida', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 4.2, 66.37, NULL, NULL, NULL),
(26, 1, 2, 'A508', 5, 5886044.722, 'MXN', 'Vendida', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 4.2, 66.37, NULL, NULL, NULL),
(27, 1, 1, 'A505', 5, 6126291.445, 'MXN', 'Vendida', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 4.2, 66.37, NULL, NULL, NULL),
(28, 1, 1, 'A507', 5, 6067216.162, 'MXN', 'Vendida', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 3.56, 65.73, NULL, NULL, NULL),
(29, 1, 1, 'A605', 6, 6322899.075, 'MXN', 'Vendida', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 6.16, 68.33, NULL, NULL, NULL),
(30, 1, 1, 'A607', 6, 5752885.05, 'MXN', 'Vendida', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 0, 62.17, NULL, NULL, NULL),
(31, 1, 1, 'A705', 7, 6097401.317, 'MXN', 'Vendida', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 3.56, 65.73, NULL, NULL, NULL),
(32, 1, 1, 'A707', 7, 6156770.507, 'MXN', 'Vendida', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 4.2, 66.37, NULL, NULL, NULL),
(33, 5, 1, 'A401', 4, 8665649.982, 'MXN', 'Vendida', NULL, NULL, 72.22, 14.68, 13.44, NULL, NULL, NULL, 4.2, 104.54, NULL, NULL, NULL),
(34, 5, 2, 'A502', 5, 8133514.23, 'MXN', 'Vendida', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 6.97, 93.87, NULL, NULL, NULL),
(35, 5, 2, 'A512', 5, 7893503.21, 'MXN', 'Vendida', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 4.2, 91.1, NULL, NULL, NULL),
(36, 5, 1, 'A501', 5, 8172399.092, 'MXN', 'Vendida', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 3.72, 90.62, NULL, NULL, NULL),
(37, 5, 1, 'A511', 5, 8172399.092, 'MXN', 'Vendida', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 3.72, 90.62, NULL, NULL, NULL),
(38, 5, 1, 'A601', 6, 8486552.846, 'MXN', 'Vendida', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 6.97, 93.87, NULL, NULL, NULL),
(39, 5, 1, 'A701', 7, 8507611.29, 'MXN', 'Vendida', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 6.97, 93.87, NULL, NULL, NULL),
(40, 5, 1, 'A711', 7, 7875907.331, 'MXN', 'Vendida', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 0, 86.9, NULL, NULL, NULL),
(41, 10, 1, 'PHA3', 10, 16724684.67, 'MXN', 'Vendida', NULL, NULL, 116.51, 20.88, NULL, NULL, 94.69, NULL, 5.06, 237.14, NULL, NULL, NULL),
(42, 3, 2, 'A504', 5, 3734630.59, 'MXN', 'Vendida', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 0, 40.26, NULL, NULL, NULL),
(43, 3, 2, 'A510', 5, 4124234.377, 'MXN', 'Vendida', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 4.2, 44.46, NULL, NULL, NULL),
(44, 3, 1, 'A503', 5, 4212434.768, 'MXN', 'Vendida', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 3.37, 43.63, NULL, NULL, NULL),
(45, 3, 1, 'A509', 5, 4292570.474, 'MXN', 'Vendida', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 4.2, 44.46, NULL, NULL, NULL),
(46, 3, 2, 'A604', 6, 4134493.666, 'MXN', 'Vendida', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 4.2, 44.46, NULL, NULL, NULL),
(47, 3, 1, 'A603', 6, 3896733.806, 'MXN', 'Vendida', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 0, 40.26, NULL, NULL, NULL),
(48, 3, 1, 'A703', 7, 3906403.121, 'MXN', 'Vendida', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 0, 40.26, NULL, NULL, NULL),
(49, 3, 1, 'A709', 7, 4535153.548, 'MXN', 'Vendida', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 6.48, 46.74, NULL, NULL, NULL),
(50, 1, 4, 'B505', 5, 6081984.983, 'MXN', 'Vendida', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 3.72, 65.89, NULL, NULL, NULL),
(51, 1, 3, 'B506', 5, 5962314.097, 'MXN', 'Vendida', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 5.06, 67.23, NULL, NULL, NULL),
(52, 1, 3, 'B508', 5, 5848796.887, 'MXN', 'Vendida', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 3.78, 65.95, NULL, NULL, NULL),
(53, 1, 4, 'B705', 7, 6156770.507, 'MXN', 'Vendida', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 4.2, 66.37, NULL, NULL, NULL),
(54, 1, 4, 'B707', 7, 6156770.507, 'MXN', 'Vendida', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 4.2, 66.37, NULL, NULL, NULL),
(55, 1, 3, 'B706', 7, 5829767.047, 'MXN', 'Vendida', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 3.24, 65.41, NULL, NULL, NULL),
(56, 1, 3, 'B708', 7, 5872547.786, 'MXN', 'Vendida', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 3.72, 65.89, NULL, NULL, NULL),
(57, 5, 3, 'B402', 4, 7830652.111, 'MXN', 'Vendida', NULL, NULL, 72.21, 14.68, NULL, NULL, NULL, NULL, 3.71, 90.6, NULL, NULL, NULL),
(58, 5, 3, 'B412', 4, 7509992.957, 'MXN', 'Vendida', NULL, NULL, 72.21, 14.68, NULL, NULL, NULL, NULL, 0, 86.89, NULL, NULL, NULL),
(59, 5, 4, 'B501', 5, 8177810.082, 'MXN', 'Vendida', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 3.78, 90.68, NULL, NULL, NULL),
(60, 5, 3, 'B502', 5, 7892636.744, 'MXN', 'Vendida', NULL, NULL, 72.21, 14.68, NULL, NULL, NULL, NULL, 4.2, 91.09, NULL, NULL, NULL),
(61, 5, 3, 'B512', 5, 7851046.387, 'MXN', 'Vendida', NULL, NULL, 72.21, 14.68, NULL, NULL, NULL, NULL, 3.72, 90.61, NULL, NULL, NULL),
(62, 5, 4, 'B601', 6, 8161989.89, 'MXN', 'Vendida', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 3.38, 90.28, NULL, NULL, NULL),
(63, 5, 3, 'B602', 6, 7986971.589, 'MXN', 'Vendida', NULL, NULL, 72.21, 14.68, NULL, NULL, NULL, NULL, 5.06, 91.95, NULL, NULL, NULL),
(64, 5, 3, 'B612', 6, 7912270.169, 'MXN', 'Vendida', NULL, NULL, 72.21, 14.68, NULL, NULL, NULL, NULL, 4.2, 91.09, NULL, NULL, NULL),
(65, 5, 3, 'B702', 7, 8130440.647, 'MXN', 'Vendida', NULL, NULL, 72.21, 14.68, NULL, NULL, NULL, NULL, 6.48, 93.37, NULL, NULL, NULL),
(66, 5, 3, 'B712', 7, 7889235.543, 'MXN', 'Vendida', NULL, NULL, 72.21, 14.68, NULL, NULL, NULL, NULL, 3.71, 90.6, NULL, NULL, NULL),
(67, 3, 3, 'GHB4', 1, 4524515.1, 'MXN', 'Vendida', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, 9.63, 4.2, 54.09, NULL, NULL, NULL),
(68, 3, 3, 'B404', 4, 4025144.316, 'MXN', 'Vendida', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 3.24, 43.5, NULL, NULL, NULL),
(69, 3, 3, 'B410', 4, 4365662.272, 'MXN', 'Vendida', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 6.92, 47.18, NULL, NULL, NULL),
(70, 3, 4, 'B503', 5, 4292570.474, 'MXN', 'Vendida', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 4.2, 44.46, NULL, NULL, NULL),
(71, 3, 3, 'B504', 5, 4124234.377, 'MXN', 'Vendida', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 4.2, 44.46, NULL, NULL, NULL),
(72, 3, 4, 'B603', 6, 4262597.04, 'MXN', 'Vendida', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 3.78, 44.04, NULL, NULL, NULL),
(73, 3, 3, 'B610', 6, 4134493.666, 'MXN', 'Vendida', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 4.2, 44.46, NULL, NULL, NULL),
(74, 3, 3, 'B704', 7, 3753210.841, 'MXN', 'Vendida', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 0, 40.26, NULL, NULL, NULL),
(75, 3, 3, 'B710', 7, 4144752.956, 'MXN', 'Vendida', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 4.2, 44.46, NULL, NULL, NULL),
(76, 1, 2, 'GHA8', 1, 6970945.05, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, 38.44, 3.72, 104.33, NULL, NULL, NULL),
(77, 1, 2, 'A206', 2, 5933065.05, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 3.72, 65.89, NULL, NULL, NULL),
(78, 1, 2, 'A208', 2, 5933065.05, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 3.72, 65.89, NULL, NULL, NULL),
(79, 1, 2, 'VLA6', 3, 8269467.75, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, 66.6, NULL, NULL, NULL, 3.78, 132.55, NULL, NULL, NULL),
(80, 1, 2, 'VLA8', 3, 8269467.75, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, 66.6, NULL, NULL, NULL, 3.78, 132.55, NULL, NULL, NULL),
(81, 1, 2, 'A408', 4, 5499851.036, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 0, 62.17, NULL, NULL, NULL),
(82, 1, 2, 'A606', 6, 5527281.715, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 0, 62.17, NULL, NULL, NULL),
(83, 1, 2, 'A608', 6, 5527281.715, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 0, 62.17, NULL, NULL, NULL),
(84, 1, 2, 'A706', 7, 5540997.054, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 0, 62.17, NULL, NULL, NULL),
(85, 1, 2, 'A708', 7, 5540997.054, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 0, 62.17, NULL, NULL, NULL),
(86, 1, 2, 'A806', 8, 5554712.393, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 0, 62.17, NULL, NULL, NULL),
(87, 1, 2, 'A808', 8, 5554712.393, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 0, 62.17, NULL, NULL, NULL),
(88, 1, 2, 'A906', 9, 5568427.732, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 4.2, 66.37, NULL, NULL, NULL),
(89, 1, 2, 'A908', 9, 5568427.732, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 4.3, 66.47, NULL, NULL, NULL),
(90, 5, 2, 'GHA2', 1, 9466782.75, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.67, NULL, NULL, NULL, 53.82, 4.2, 144.91, NULL, NULL, NULL),
(91, 5, 2, 'GHA12', 1, 9429833.25, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.67, NULL, NULL, NULL, 53.82, 3.78, 144.49, NULL, NULL, NULL),
(92, 5, 2, 'A202', 2, 8013642.75, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.67, NULL, NULL, NULL, NULL, 4.2, 91.09, NULL, NULL, NULL),
(93, 5, 2, 'A212', 2, 8013642.75, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.67, NULL, NULL, NULL, NULL, 4.2, 91.09, NULL, NULL, NULL),
(94, 5, 2, 'VLA2', 3, 11234814.75, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.67, 93.24, NULL, NULL, NULL, 3.72, 183.85, NULL, NULL, NULL),
(95, 5, 2, 'VLA12', 3, 11234814.75, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.67, 93.24, NULL, NULL, NULL, 3.72, 183.85, NULL, NULL, NULL),
(96, 5, 2, 'A402', 4, 7790893.833, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 3.24, 90.14, NULL, NULL, NULL),
(97, 5, 2, 'A412', 4, 7832380.732, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 3.72, 90.62, NULL, NULL, NULL),
(98, 5, 1, 'A411', 4, 8665649.982, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.68, 13.44, NULL, NULL, NULL, 4.2, 104.54, NULL, NULL, NULL),
(99, 5, 2, 'A602', 6, 7913138.79, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 4.2, 91.1, NULL, NULL, NULL),
(100, 5, 2, 'A612', 6, 7913138.79, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 4.2, 91.1, NULL, NULL, NULL),
(101, 5, 1, 'A611', 6, 8215330.32, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 3.97, 90.87, NULL, NULL, NULL),
(102, 5, 2, 'A702', 7, 7871820.012, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 3.5, 90.4, NULL, NULL, NULL),
(103, 5, 2, 'A712', 7, 7863983.023, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 3.41, 90.31, NULL, NULL, NULL),
(104, 5, 2, 'A802', 8, 7901779.898, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 3.62, 90.52, NULL, NULL, NULL),
(105, 5, 2, 'A812', 8, 7891304.715, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 3.5, 90.4, NULL, NULL, NULL),
(106, 5, 1, 'A801', 8, 8256101.19, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 3.97, 90.87, NULL, NULL, NULL),
(107, 5, 1, 'A811', 8, 8215215.909, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 3.52, 90.42, NULL, NULL, NULL),
(108, 5, 2, 'A902', 9, 7925665.903, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 3.67, 90.57, NULL, NULL, NULL),
(109, 5, 2, 'A912', 9, 7921290.466, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 3.62, 90.52, NULL, NULL, NULL),
(110, 5, 1, 'A901', 9, 8306543.196, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 4.3, 91.2, NULL, NULL, NULL),
(111, 5, 1, 'A911', 9, 8305632.391, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 4.29, 91.19, NULL, NULL, NULL),
(112, 9, 2, 'PHA2', 10, 16702918.85, 'MXN', 'Disponible', NULL, NULL, 121.76, 21.52, NULL, NULL, 96.25, NULL, 4.14, 243.67, NULL, NULL, NULL),
(113, 9, 2, 'PHA6', 10, 16702918.85, 'MXN', 'Disponible', NULL, NULL, 121.76, 21.52, NULL, NULL, 96.25, NULL, 4.14, 243.67, NULL, NULL, NULL),
(114, 9, 1, 'PHA1', 10, 17247170.64, 'MXN', 'Disponible', NULL, NULL, 121.76, 21.52, NULL, NULL, 96.25, NULL, 4.14, 243.67, NULL, NULL, NULL),
(115, 9, 1, 'PHA5', 10, 17247170.64, 'MXN', 'Disponible', NULL, NULL, 121.76, 21.52, NULL, NULL, 96.25, NULL, 4.14, 243.67, NULL, NULL, NULL),
(116, 10, 2, 'PHA4', 10, 16115567.16, 'MXN', 'Disponible', NULL, NULL, 116.51, 20.88, NULL, NULL, 94.69, NULL, 4.14, 236.22, NULL, NULL, NULL),
(117, 3, 2, 'GHA4', 1, 4879475.1, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, 25.63, 4.2, 70.09, NULL, NULL, NULL),
(118, 3, 2, 'GHA10', 1, 4834266.3, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, 25.63, 3.72, 69.61, NULL, NULL, NULL),
(119, 3, 2, 'A204', 2, 4147907.4, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 3.78, 44.04, NULL, NULL, NULL),
(120, 3, 2, 'A210', 2, 4187465.1, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 4.2, 44.46, NULL, NULL, NULL),
(121, 3, 2, 'VLA4', 3, 5741465.1, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, 44.4, NULL, NULL, NULL, 0, 84.66, NULL, NULL, NULL),
(122, 3, 2, 'VLA10', 3, 5748058.05, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, 44.4, NULL, NULL, NULL, 0, 84.66, NULL, NULL, NULL),
(123, 3, 2, 'A404', 4, 3725340.464, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 0, 40.26, NULL, NULL, NULL),
(124, 3, 2, 'A410', 4, 3725340.464, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 0, 40.26, NULL, NULL, NULL),
(125, 3, 1, 'A403', 4, 4101395.177, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, 6.4, NULL, NULL, NULL, 0, 46.66, NULL, NULL, NULL),
(126, 3, 1, 'A409', 4, 4101395.177, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, 6.4, NULL, NULL, NULL, 0, 46.66, NULL, NULL, NULL),
(127, 3, 2, 'A610', 6, 3743920.716, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 0, 40.26, NULL, NULL, NULL),
(128, 3, 2, 'A704', 7, 3753210.841, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 0, 40.26, NULL, NULL, NULL),
(129, 3, 2, 'A710', 7, 3753210.841, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 0, 40.26, NULL, NULL, NULL),
(130, 3, 2, 'A804', 8, 3762500.967, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 0, 40.26, NULL, NULL, NULL),
(131, 3, 2, 'A810', 8, 3762500.967, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 0, 40.26, NULL, NULL, NULL),
(132, 3, 2, 'A904', 9, 3771791.093, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 0, 40.26, NULL, NULL, NULL),
(133, 3, 2, 'A910', 9, 3771791.093, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 0, 40.26, NULL, NULL, NULL),
(134, 2, 4, 'GHB5', 1, 7700515.95, 'MXN', 'Disponible', NULL, NULL, 51.73, 20.04, NULL, NULL, NULL, 28.84, 4.14, 104.75, NULL, NULL, NULL),
(135, 2, 4, 'GHB7', 1, 7700515.95, 'MXN', 'Disponible', NULL, NULL, 51.73, 20.04, NULL, NULL, NULL, 28.84, 4.14, 104.75, NULL, NULL, NULL),
(136, 1, 3, 'GHB6', 1, 6438815.05, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, 14.45, 3.72, 80.34, NULL, NULL, NULL),
(137, 1, 3, 'GHB8', 1, 6438815.05, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, 14.45, 3.72, 80.34, NULL, NULL, NULL),
(138, 2, 4, 'B205', 2, 6835315.95, 'MXN', 'Disponible', NULL, NULL, 51.73, 20.04, NULL, NULL, NULL, NULL, 4.14, 75.91, NULL, NULL, NULL),
(139, 2, 4, 'B207', 2, 6835315.95, 'MXN', 'Disponible', NULL, NULL, 51.73, 20.04, NULL, NULL, NULL, NULL, 4.14, 75.91, NULL, NULL, NULL),
(140, 1, 3, 'B206', 2, 5976286.65, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 4.2, 66.37, NULL, NULL, NULL),
(141, 1, 3, 'B208', 2, 5933065.05, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 3.72, 65.89, NULL, NULL, NULL),
(142, 1, 4, 'B305', 3, 6783089.85, 'MXN', 'Disponible', NULL, NULL, 51.73, 20.04, NULL, NULL, NULL, NULL, 3.56, 75.33, NULL, NULL, NULL),
(143, 1, 4, 'B307', 3, 6797497.05, 'MXN', 'Disponible', NULL, NULL, 51.73, 20.04, NULL, NULL, NULL, NULL, 3.72, 75.49, NULL, NULL, NULL),
(144, 1, 3, 'VLB6', 3, 6741286.65, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, 30.6, NULL, NULL, 4.2, 96.97, NULL, NULL, NULL),
(145, 1, 3, 'VLB8', 3, 6741286.65, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, 30.6, NULL, NULL, 4.2, 96.97, NULL, NULL, NULL),
(146, 1, 4, 'B405', 4, 6111051.914, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 4.2, 66.37, NULL, NULL, NULL),
(147, 1, 4, 'B407', 4, 6111051.914, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 4.2, 66.37, NULL, NULL, NULL),
(148, 1, 3, 'B406', 4, 5499851.036, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 0, 62.17, NULL, NULL, NULL),
(149, 1, 3, 'B408', 4, 5499851.036, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 0, 62.17, NULL, NULL, NULL),
(150, 1, 4, 'B507', 5, 6081984.983, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 3.72, 65.89, NULL, NULL, NULL),
(151, 1, 4, 'B605', 6, 6097114.299, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 3.72, 65.89, NULL, NULL, NULL),
(152, 1, 4, 'B607', 6, 6052697.621, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 3.24, 65.41, NULL, NULL, NULL),
(153, 1, 3, 'B606', 6, 5527281.715, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 0, 62.17, NULL, NULL, NULL),
(154, 1, 3, 'B608', 6, 5527281.715, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 0, 62.17, NULL, NULL, NULL),
(155, 1, 4, 'B807', 8, 6112493.895, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 3.56, 65.73, NULL, NULL, NULL),
(156, 1, 4, 'B905', 9, 6187249.569, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 4.2, 66.37, NULL, NULL, NULL),
(157, 1, 4, 'B907', 9, 6187249.569, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 4.2, 66.37, NULL, NULL, NULL),
(158, 1, 3, 'B906', 9, 5568427.732, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 3.37, 65.54, NULL, NULL, NULL),
(159, 1, 3, 'B908', 9, 5568427.732, 'MXN', 'Disponible', NULL, NULL, 51.73, 10.44, NULL, NULL, NULL, NULL, 0, 62.17, NULL, NULL, NULL),
(160, 5, 4, 'GHB1', 1, 10374876, 'MXN', 'Disponible', NULL, NULL, 72.22, 28.12, NULL, NULL, NULL, 40.38, 3.82, 144.54, NULL, NULL, NULL),
(161, 5, 4, 'GHB11', 1, 10403028, 'MXN', 'Disponible', NULL, NULL, 72.22, 28.12, NULL, NULL, NULL, 40.38, 4.14, 144.86, NULL, NULL, NULL),
(162, 5, 3, 'GHB2', 1, 8721342.75, 'MXN', 'Disponible', NULL, NULL, 72.21, 14.68, NULL, NULL, NULL, 20.22, 4.2, 111.31, NULL, NULL, NULL),
(163, 5, 3, 'GHB12', 1, 8721342.75, 'MXN', 'Disponible', NULL, NULL, 72.21, 14.68, NULL, NULL, NULL, 20.22, 4.2, 111.31, NULL, NULL, NULL),
(164, 5, 4, 'B201', 2, 9163476, 'MXN', 'Disponible', NULL, NULL, 72.22, 28.12, NULL, NULL, NULL, NULL, 3.82, 104.16, NULL, NULL, NULL),
(165, 5, 4, 'B211', 2, 9191628, 'MXN', 'Disponible', NULL, NULL, 72.22, 28.12, NULL, NULL, NULL, NULL, 4.14, 104.48, NULL, NULL, NULL),
(166, 5, 3, 'B202', 2, 7971414.75, 'MXN', 'Disponible', NULL, NULL, 72.21, 14.68, NULL, NULL, NULL, NULL, 3.72, 90.61, NULL, NULL, NULL),
(167, 5, 3, 'B212', 2, 8013642.75, 'MXN', 'Disponible', NULL, NULL, 72.21, 14.68, NULL, NULL, NULL, NULL, 4.2, 91.09, NULL, NULL, NULL),
(168, 5, 4, 'B301', 3, 9153798.75, 'MXN', 'Disponible', NULL, NULL, 72.22, 28.12, NULL, NULL, NULL, NULL, 3.71, 104.05, NULL, NULL, NULL),
(169, 5, 4, 'B311', 3, 9196906.5, 'MXN', 'Disponible', NULL, NULL, 72.22, 28.12, NULL, NULL, NULL, NULL, 4.2, 104.54, NULL, NULL, NULL),
(170, 5, 3, 'VLB2', 3, 8880642.75, 'MXN', 'Disponible', NULL, NULL, 72.21, 14.68, NULL, 34.68, NULL, NULL, 4.2, 125.77, NULL, NULL, NULL),
(171, 5, 3, 'VLB12', 3, 8880642.75, 'MXN', 'Disponible', NULL, NULL, 72.21, 14.68, NULL, 34.68, NULL, NULL, 4.2, 125.77, NULL, NULL, NULL),
(172, 5, 4, 'B401', 4, 8143073.857, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 3.62, 90.52, NULL, NULL, NULL),
(173, 5, 4, 'B411', 4, 8132278.797, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 3.5, 90.4, NULL, NULL, NULL),
(174, 5, 4, 'B511', 5, 8172399.092, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 3.72, 90.62, NULL, NULL, NULL),
(175, 5, 4, 'B611', 6, 8263246.3, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 4.5, 91.4, NULL, NULL, NULL),
(176, 5, 4, 'B711', 7, 8235715.755, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 3.97, 90.87, NULL, NULL, NULL),
(177, 5, 4, 'B811', 8, 8215215.909, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 3.52, 90.42, NULL, NULL, NULL),
(178, 5, 3, 'B802', 8, 7957647.542, 'MXN', 'Disponible', NULL, NULL, 72.21, 14.68, NULL, NULL, NULL, NULL, 4.27, 91.16, NULL, NULL, NULL),
(179, 5, 3, 'B812', 8, 7901779.898, 'MXN', 'Disponible', NULL, NULL, 72.21, 14.68, NULL, NULL, NULL, NULL, 3.63, 90.52, NULL, NULL, NULL),
(180, 5, 4, 'B901', 9, 8215462.679, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 3.3, 90.2, NULL, NULL, NULL),
(181, 5, 4, 'B911', 9, 8276486.625, 'MXN', 'Disponible', NULL, NULL, 72.22, 14.68, NULL, NULL, NULL, NULL, 3.97, 90.87, NULL, NULL, NULL),
(182, 5, 3, 'B902', 9, 7909914.331, 'MXN', 'Disponible', NULL, NULL, 72.21, 14.68, NULL, NULL, NULL, NULL, 3.5, 90.39, NULL, NULL, NULL),
(183, 5, 3, 'B912', 9, 7971170.443, 'MXN', 'Disponible', NULL, NULL, 72.21, 14.68, NULL, NULL, NULL, NULL, 4.27, 91.16, NULL, NULL, NULL),
(184, 9, 4, 'PHB1', 10, 17247170.64, 'MXN', 'Disponible', NULL, NULL, 121.76, 21.52, NULL, NULL, 96.25, NULL, 4.14, 243.67, NULL, NULL, NULL),
(185, 9, 4, 'PHB5', 10, 17247170.64, 'MXN', 'Disponible', NULL, NULL, 121.76, 21.52, NULL, NULL, 96.25, NULL, 4.14, 243.67, NULL, NULL, NULL),
(186, 9, 3, 'PHB2', 10, 16702918.85, 'MXN', 'Disponible', NULL, NULL, 121.76, 21.52, NULL, NULL, 96.25, NULL, 4.14, 243.67, NULL, NULL, NULL),
(187, 9, 3, 'PHB6', 10, 16702918.85, 'MXN', 'Disponible', NULL, NULL, 121.76, 21.52, NULL, NULL, 96.25, NULL, 4.14, 243.67, NULL, NULL, NULL),
(188, 10, 4, 'PHB3', 10, 16638073.98, 'MXN', 'Disponible', NULL, NULL, 116.51, 20.88, NULL, NULL, 94.69, NULL, 4.14, 236.22, NULL, NULL, NULL),
(189, 10, 3, 'PHB4', 10, 16198781.35, 'MXN', 'Disponible', NULL, NULL, 116.51, 20.88, NULL, NULL, 94.69, NULL, 5.06, 237.14, NULL, NULL, NULL),
(190, 3, 4, 'GHB3', 1, 5350195.8, 'MXN', 'Disponible', NULL, NULL, 33.42, 13.24, NULL, NULL, NULL, 19.23, 4.02, 69.91, NULL, NULL, NULL),
(191, 3, 4, 'GHB9', 1, 5327591.4, 'MXN', 'Disponible', NULL, NULL, 33.42, 13.24, NULL, NULL, NULL, 19.23, 3.78, 69.67, NULL, NULL, NULL),
(192, 3, 3, 'GHB10', 1, 4524515.1, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, 9.63, 4.2, 54.09, NULL, NULL, NULL),
(193, 3, 4, 'B203', 2, 4773295.8, 'MXN', 'Disponible', NULL, NULL, 33.42, 13.24, NULL, NULL, NULL, NULL, 4.02, 50.68, NULL, NULL, NULL),
(194, 3, 4, 'B209', 2, 4750691.4, 'MXN', 'Disponible', NULL, NULL, 33.42, 13.24, NULL, NULL, NULL, NULL, 3.78, 50.44, NULL, NULL, NULL),
(195, 3, 3, 'B210', 2, 4142256.3, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 3.72, 43.98, NULL, NULL, NULL),
(196, 3, 4, 'B303', 3, 4394672.1, 'MXN', 'Disponible', NULL, NULL, 33.42, 13.24, NULL, NULL, NULL, NULL, 0, 46.66, NULL, NULL, NULL),
(197, 3, 4, 'B309', 3, 4394672.1, 'MXN', 'Disponible', NULL, NULL, 33.42, 13.24, NULL, NULL, NULL, NULL, 0, 46.66, NULL, NULL, NULL),
(198, 3, 3, 'VLB4', 3, 4619291.55, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, 20.4, NULL, NULL, 0, 60.66, NULL, NULL, NULL),
(199, 3, 3, 'VLB10', 3, 4706883.6, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, 20.4, NULL, NULL, 0, 60.66, NULL, NULL, NULL),
(200, 3, 4, 'B403', 4, 3877395.177, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 0, 40.26, NULL, NULL, NULL),
(201, 3, 4, 'B409', 4, 3877395.177, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 0, 40.26, NULL, NULL, NULL),
(202, 3, 4, 'B509', 5, 3887064.491, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 0, 40.26, NULL, NULL, NULL),
(203, 3, 3, 'B510', 5, 3734630.59, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 0, 40.26, NULL, NULL, NULL),
(204, 3, 4, 'B609', 6, 3896733.806, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 0, 40.26, NULL, NULL, NULL),
(205, 3, 3, 'B604', 6, 3743920.716, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 0, 40.26, NULL, NULL, NULL),
(206, 3, 4, 'B709', 7, 3906403.121, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 0, 40.26, NULL, NULL, NULL),
(207, 3, 3, 'B804', 8, 3762500.967, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 0, 40.26, NULL, NULL, NULL),
(208, 3, 3, 'B810', 8, 3762500.967, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 0, 40.26, NULL, NULL, NULL),
(209, 3, 3, 'B904', 9, 3771791.093, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 0, 40.26, NULL, NULL, NULL),
(210, 3, 3, 'B910', 9, 3771791.093, 'MXN', 'Disponible', NULL, NULL, 33.42, 6.84, NULL, NULL, NULL, NULL, 0, 40.26, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unit_types`
--

CREATE TABLE `unit_types` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `option` varchar(100) DEFAULT NULL,
  `bedrooms` int(11) NOT NULL,
  `flexrooms` int(11) DEFAULT NULL,
  `bathrooms` double NOT NULL,
  `interior_const` double NOT NULL,
  `parking_spaces` double DEFAULT NULL,
  `exterior_const` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `unit_types`
--

INSERT INTO `unit_types` (`id`, `name`, `option`, `bedrooms`, `flexrooms`, `bathrooms`, `interior_const`, `parking_spaces`, `exterior_const`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1R', 'Opción 1', 1, NULL, 1, 51.73, 1, 10.44, '2024-05-30 19:16:37', '2024-06-03 21:18:46', NULL),
(2, '1R', 'Opción 2', 1, NULL, 1, 51.73, 1, 20.04, '2024-06-03 18:23:33', '2024-06-03 21:18:52', NULL),
(3, 'Loft', 'Opción 1', 0, NULL, 1, 33.42, 1, 6.84, '2024-06-03 18:40:48', '2024-06-03 21:18:11', NULL),
(4, 'Loft', 'Opción 2', 0, NULL, 1, 33.42, 1, 13.24, '2024-06-03 18:42:23', '2024-06-03 21:18:59', NULL),
(5, '1R+', 'Opción 1', 1, NULL, 2, 72.22, 1, 14.68, '2024-06-03 18:45:24', '2024-06-03 21:19:04', NULL),
(6, '1R+', 'Opción 2', 1, NULL, 2, 72.22, 1, 28.12, '2024-06-03 18:47:55', '2024-06-03 21:19:10', NULL),
(7, '3R', 'Opción 1', 3, NULL, 2, 103.46, 1, 20.88, '2024-06-03 18:54:23', '2024-06-03 21:19:17', NULL),
(8, '3R', 'Opción 2', 3, NULL, 2, 103.46, 1, 40.88, '2024-06-03 19:19:18', '2024-06-03 21:19:24', NULL),
(9, 'Penthouse 2R', NULL, 2, NULL, 3, 121.76, 2, 21.52, '2024-06-03 19:32:18', '2024-06-03 19:32:18', NULL),
(10, 'Penthouse 3R', NULL, 3, NULL, 2, 116.51, 2, 20.88, '2024-06-03 19:33:54', '2024-06-03 19:33:54', NULL),
(11, 'Loft', 'Garden House Opción 1', 0, NULL, 1, 33.42, 1, 6.84, '2024-06-03 19:41:17', '2024-06-03 19:41:17', NULL),
(12, 'Loft', 'Garden House Opción 2', 0, NULL, 1, 33.42, 1, 13.24, '2024-06-03 19:42:12', '2024-06-03 19:42:12', NULL),
(13, 'Loft', 'Villa A', 0, NULL, 1, 33.42, 1, 6.84, '2024-06-03 21:13:51', '2024-06-03 21:13:51', NULL),
(14, 'Loft', 'Villa B', 0, NULL, 1, 33.42, 1, 13.24, '2024-06-03 21:14:54', '2024-06-03 21:14:54', NULL),
(15, 'Loft', 'Villa B Plus', 0, NULL, 1, 33.42, 1, 13.24, '2024-06-03 21:32:46', '2024-06-03 21:32:46', NULL),
(16, '1R', 'Garden House Opción 1', 1, NULL, 1, 51.73, 1, 10.44, '2024-06-03 21:43:14', '2024-06-03 21:44:32', NULL),
(17, '1R', 'Garden House Opción 2', 1, NULL, 1, 51.73, 1, 10.44, '2024-06-03 21:44:08', '2024-06-03 21:44:08', NULL),
(18, '1R', 'Villa A', 1, NULL, 1, 51.73, 1, 10.44, '2024-06-03 21:49:33', '2024-06-03 21:49:33', NULL),
(19, '1R', 'Villa B', 1, NULL, 1, 51.73, 1, 10.44, '2024-06-03 21:50:41', '2024-06-03 21:50:41', NULL),
(20, '1R', 'Villa B Plus', 1, NULL, 1, 51.73, 1, 10.44, '2024-06-03 21:52:30', '2024-06-03 21:52:30', NULL),
(21, '1R+', 'Garden House Opción 1', 1, NULL, 2, 72.21, 1, 10.44, '2024-06-03 21:56:56', '2024-06-03 21:56:56', NULL),
(22, '1R+', 'Garden House Opción 2', 1, NULL, 2, 72.21, 1, 10.44, '2024-06-03 21:57:52', '2024-06-03 21:57:52', NULL),
(23, '1R+', 'Villa A', 1, NULL, 2, 72.21, 1, 10.44, '2024-06-03 22:00:21', '2024-06-03 22:00:21', NULL),
(24, '1R+', 'Villa B', 1, NULL, 2, 72.21, 1, 10.44, '2024-06-03 22:00:51', '2024-06-03 22:00:51', NULL),
(25, '1R+', 'Villa B Plus', 1, NULL, 2, 72.21, 1, 10.44, '2024-06-03 22:03:09', '2024-06-03 22:03:09', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unit_user`
--

CREATE TABLE `unit_user` (
  `id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `unit_user`
--

INSERT INTO `unit_user` (`id`, `unit_id`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 76, 163, NULL, NULL),
(4, 77, 163, NULL, NULL),
(5, 78, 163, NULL, NULL),
(7, 1, 163, NULL, NULL),
(8, 98, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'realtor',
  `notes` text COLLATE utf8mb4_unicode_ci,
  `agent_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `lang`, `country_code`, `email_verified_at`, `password`, `role`, `notes`, `agent_id`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Erick Alejandro Pérez', 'erick@punto401.com', '3221084847', 'en', NULL, NULL, '$2y$12$ICXFFPn0CqIe9eKN.nWQT.Rfz/VD3zGGbdUWKIa6DzI8oWQLaqhv2', 'superadmin', NULL, NULL, 'dhZkBa1x0aPqd1VeHlAbI7ko2mFnkJWdd5GDSUY6GHnaJkm2ko4UGE38iUrN', '2024-01-12 00:18:31', '2024-06-06 22:37:12', NULL),
(3, 'Efraín Valencia', 'efrain@domusvallarta.com', NULL, 'es', 'MX', NULL, '$2y$12$wpiMrtGVVksRcxFJt8sM8uaL0FnUVG2NAjdwq3f5f1HZAMDjbwhtW', 'agent', NULL, NULL, 'FLieFcnXJjp7DAwHdpIUdb7jAcPGwwCcGoNTrltN6AaLXfunLjvM3NXA6Qd3', '2024-04-11 21:07:01', '2024-06-05 00:54:40', NULL),
(4, 'Wendy Arce', 'wendy@punto401.com', NULL, 'es', 'MX', NULL, '$2y$12$Jv88CuooK2NhVOvLyrkTK.lYm3E4AWYIqr85k3IwWnRuvqykV7Zb6', 'admin', NULL, NULL, '70xuNBPzKnMsbW205USIQY2xNPLq8wpeg7q0Lsb2zG6wKC6LQuzjNyuI9FJ0', '2024-04-12 19:08:30', '2024-04-12 19:08:30', NULL),
(5, 'Daniel Michelena', 'michelena@punto401.com', NULL, 'es', 'MX', NULL, '$2y$12$Da7osEqlhjo.Fbmhw75ahu2Y.Wkg.vdHR6aRSPLUIcxdGVSCZdTQy', 'admin', NULL, NULL, '84lOy5TVzgzCN6bLXBrVvEJaczaaVRjMJYFgOhxCvyiTGuokvDvxdMRzsdeH', '2024-04-12 19:09:05', '2024-04-12 19:09:05', NULL),
(6, 'Glenda Olguín', 'glenda@punto401.com', NULL, 'es', 'MX', NULL, '$2y$12$Smgu6d7BWBVQALLtkpUTw.CyM8CkGjp9iaspsyikROlK7o78ulefG', 'admin', NULL, NULL, 'him53vQb64j4ehfkGcmgL75jkELxZ4KoASe2UDeQUVC4qX6rtCbUvMu2ORXw', '2024-04-12 19:09:50', '2024-04-12 19:09:50', NULL),
(7, 'Javier Ortega', 'javier@punto401.com', NULL, 'es', 'MX', NULL, '$2y$12$ELZ3qZWLIUJ2KNVl1EUS6Osfv8NKxdwVsh0c6A2degJN1O5cju1VG', 'admin', NULL, NULL, 'wSodP8TKiZJoupnyHYotMcTBM45bgtRW4oIoa3kw3jaZ6KbJLrWMxzNs7ZXu', '2024-04-12 19:10:41', '2024-04-12 19:10:41', NULL),
(8, 'Tania Ramos', 'tania@punto401.com', NULL, 'es', 'MX', NULL, '$2y$12$eMrFrO5za9ITuJztyE62ruLjL22xZJc/Bge2q2ugt1oeyi4kuswu6', 'admin', NULL, NULL, 'xSUWsC1FFtg7Y0L8TXjmBjEVRtfwVq6tHTDV7jxP8mizd1OkrDbfRW2Fuwtx', '2024-04-12 19:11:24', '2024-04-12 19:11:24', NULL),
(9, 'Raul Flores', 'raul@punto401.com', NULL, 'es', 'MX', NULL, '$2y$12$GLFTvaX0Ku6DfEqoSAMbj.5mrwZq7c/zlnLG/ww2LtnFOwOR96Clm', 'admin', NULL, NULL, 'KQumipeQLMhjLgqGB7DlJqvadcbvvqiL8dN4JCZVC6KvI0a5oGKFt5MgyjER', '2024-04-12 19:12:27', '2024-04-25 17:24:48', NULL),
(10, 'Tania Vizcaino', 'viztani@punto401.com', NULL, 'es', 'MX', NULL, '$2y$12$Xj0dkRYduox1DD3oEQUqBOHFcBvYRW0MQaj/PoZMvSlExWuK7MYVm', 'admin', NULL, NULL, NULL, '2024-04-12 19:13:03', '2024-04-12 19:13:03', NULL),
(12, 'Abraham Jimenez', 'abraham@domusvallarta.com', '3311545582', 'es', 'MX', NULL, '$2y$12$BoZAZyLgsidItK0pGFYrRutex6ENjTA1XqP7KgPjchMYOxSgrZ6me', 'agent', NULL, NULL, NULL, '2024-04-25 18:25:52', '2024-04-25 18:25:52', NULL),
(13, 'Adriana Martín del Campo', 'adriana@domusvallarta.com', '3221505358', 'es', 'MX', NULL, '$2y$12$V/jxcaGBgT/a9ILgR87KH.yIymLf2wB2zH5h4RQotTmYxFwbKdsJm', 'agent', NULL, NULL, NULL, '2024-04-25 18:26:40', '2024-04-25 18:26:40', NULL),
(14, 'Alberto Briseño', 'alberto.briseno@domusvallarta.com', '3331480164', 'es', 'MX', NULL, '$2y$12$EmxQALE8wO8pwGh.1vWEauFJHEYD.Rbss88hsqgNJ.iwvIgcLqUpq', 'agent', NULL, NULL, NULL, '2024-04-25 18:27:34', '2024-04-25 18:27:34', NULL),
(15, 'Ana Luisa García', 'ana@domusvallarta.com', '3221822948', 'es', 'MX', NULL, '$2y$12$F2AeOLuE1akdX/k5D8Sds.JvU3Ylqg/3Bn.JUAqL02fyNlO/wupr.', 'agent', NULL, NULL, NULL, '2024-04-25 18:28:23', '2024-04-25 18:28:23', NULL),
(16, 'Angelica Burns', 'angelica@domusvallarta.com', '19492121363', 'es', 'MX', NULL, '$2y$12$hgeFxgQzNun9785lJJkb7.tkFkcH.UgIISv/UO89mqaecxsiorbpG', 'agent', NULL, NULL, NULL, '2024-04-25 18:29:37', '2024-04-25 18:29:37', NULL),
(17, 'Armando Gómez', 'armando@domusvallarta.com', '3331896409', 'es', 'MX', NULL, '$2y$12$fo..Gkroa8o.31IQRjVJs.b2XG.qQ1ERtAas9MITYw2a.Ly7s61nW', 'agent', NULL, NULL, NULL, '2024-04-25 18:35:29', '2024-04-25 18:35:29', NULL),
(18, 'Beatriz Meza Estrada', 'beatriz@domusvallarta.com', '3338462836', 'es', 'MX', NULL, '$2y$12$dxHq8/0SnD38z1kmclOKCO2Zomij5g5cnzMydEQIGOFpc154EoMHq', 'agent', NULL, NULL, NULL, '2024-04-25 18:36:09', '2024-04-25 18:36:09', NULL),
(19, 'Christian Beuffe', 'christian@domusvallarta.com', '5552170770', 'es', 'MX', NULL, '$2y$12$eRZKu.UylSGd7tA07d.1C.kqkQEZ4THGuuOHpNB8VaEFNRYYiFvyC', 'agent', NULL, NULL, '6ZNPAdxrTkiIpP6IWMqiX03BgGttBu7HbYiSTjXBAHIxNjnv7xPSRb0h5U2y', '2024-04-25 18:37:13', '2024-04-25 18:37:13', NULL),
(20, 'Hugo Ortíz', 'hugo@domusvallarta.com', '3221328297', 'es', 'MX', NULL, '$2y$12$b217E5lM2qepUGcBudp0hel7cqHiGMAVCRo.I96pRwSHyfMmWagO6', 'agent', NULL, NULL, NULL, '2024-04-25 18:38:06', '2024-04-25 18:38:06', NULL),
(21, 'Ivan Koloffon', 'ivan@domusvallarta.com', '3221317124', 'es', 'MX', NULL, '$2y$12$f7puLUHC.B3s3jG5lo2bu.jH9QkudrbF2UeU5Ec.p4tl9YF8EnKGy', 'agent', NULL, NULL, NULL, '2024-04-25 18:41:42', '2024-04-25 18:41:42', NULL),
(22, 'Javier Gonzalez', 'javier.gonzalez@domusvallarta.com', '3221823824', 'es', 'MX', NULL, '$2y$12$WIh80yAfZtyiTlmlfC2DA.u.Nlc7jiTdzYFSPfFvVigctpfKwgLe2', 'agent', NULL, NULL, NULL, '2024-04-25 18:42:19', '2024-04-25 18:42:19', NULL),
(23, 'Jesica Vidal', 'jesica@domusvallarta.com', '3223781619', 'es', 'MX', NULL, '$2y$12$e.9Eo9KveE.qg7RsXvi40egT6DXD4cqCz5JHR/p5wJXWqb25gRFD6', 'agent', NULL, NULL, NULL, '2024-04-25 18:44:34', '2024-04-25 18:44:34', NULL),
(24, 'Lariza Chavez', 'lariza@domusvallarta.com', '9983218282', 'es', 'MX', NULL, '$2y$12$cEeTtOsgz0ZhCvBJQUIunOH2cegDzk5p.crG.WpdBvBrl4TtLhKuC', 'agent', NULL, NULL, NULL, '2024-04-25 18:45:24', '2024-04-25 18:45:24', NULL),
(25, 'Lupita Bueno', 'lupita.bueno@domusvallarta.com', '3222624298', 'es', 'MX', NULL, '$2y$12$MHSbPtiB7osud4Ns4lUu6uiFMPfXPODC6AvJSHZHoTAPODPHmRwVy', 'agent', NULL, NULL, NULL, '2024-04-25 18:46:06', '2024-04-25 18:46:06', NULL),
(26, 'Mariana Ortuño', 'mariana@domusvallarta.com', '3221507240', 'es', 'MX', NULL, '$2y$12$9E59RHs/Z8G0uIvg5/q8f.Q6bRPNa3cipQdRUor380QQjtjAoDz5y', 'agent', NULL, NULL, NULL, '2024-04-25 18:46:43', '2024-04-25 18:46:43', NULL),
(27, 'Oscar Izurieta', 'oscar@domusvallarta.com', '3221506410', 'es', 'MX', NULL, '$2y$12$M/g0pwDQ7bG6GJQIkyHTfeV4AsfkkL5bFZNFKS3ka/jOiPkvxkpCy', 'agent', NULL, NULL, NULL, '2024-04-25 18:47:40', '2024-04-25 18:47:40', NULL),
(28, 'Alex Zepeda', 'alex@punto401.com', NULL, 'es', 'MX', NULL, '$2y$12$IAbJmy1phUhbmlCZFdUid.Wh9CO5k635nNHYmV5yqqKhcYNRCPhT.', 'admin', NULL, NULL, '82Wi6sbXvfZjHDKrJc0QgEpfiGReYe6hVRN9IDPFOpG8T7fUs5RPThD9fosu', '2024-04-25 18:48:19', '2024-04-25 18:48:19', NULL),
(29, 'Claudio Leone', 'claudio@domusvallarta.com', '3222057088', 'es', 'MX', NULL, '$2y$12$.PiTfOEAerfk7xMo7V5beOoKiwPWFvk6dcs2r04DBzvYEJoqBNyoK', 'agent', NULL, NULL, NULL, '2024-04-25 18:48:40', '2024-04-25 18:48:40', NULL),
(30, 'Daniel Martinez', 'daniel@domusvallarta.com', '3335770880', 'es', 'MX', NULL, '$2y$12$l3XE1Q4Av67mnC8mUOPiNueyV3t9T/rjwNxpLkN3vbe3x6tFKlWfq', 'agent', NULL, NULL, NULL, '2024-04-25 18:49:42', '2024-04-25 18:49:42', NULL),
(31, 'Frida Revah', 'frida@domusvallarta.com', '3222890000', 'es', 'MX', NULL, '$2y$12$KMEK52rJxGyt4Eiqs0hy5O1Qm9f/OLsXito9t.yquS8qofvyC.n/O', 'agent', NULL, NULL, NULL, '2024-04-25 18:52:17', '2024-04-25 20:45:46', NULL),
(32, 'Gerardo Gonzalez', 'gerardo.gonzalez@domusvallarta.com', '6243553220', 'es', 'MX', NULL, '$2y$12$3Q8wSPzb8TSJAebTv0TiF.IdygoUoDHUhEAAM6Ksjb8IcEWMWlLDW', 'agent', NULL, NULL, NULL, '2024-04-25 18:52:54', '2024-04-25 18:52:54', NULL),
(33, 'Gerardo Palazuelos', 'gerardo@domusvallarta.com', '3222891509', 'es', 'MX', NULL, '$2y$12$7Kqxc7ks0Fw88TcwXTzXRupxG5tCmesvQAs6RgPOGsRZhcZGPOlSa', 'agent', NULL, NULL, NULL, '2024-04-25 18:54:12', '2024-04-25 18:54:12', NULL),
(34, 'Hilda Islas', 'hilda@domusvallarta.com', '3221206657', 'es', 'MX', NULL, '$2y$12$SCOkh6e4ybuzTMSmgXyhmevhraIC2l812BBp1nH6SAbqz66u0EvCi', 'agent', NULL, NULL, NULL, '2024-04-25 18:55:02', '2024-04-25 18:55:02', NULL),
(35, 'Massiel Gutierrez', 'massiel@domusvallarta.com', '4772661314', 'es', 'MX', NULL, '$2y$12$kioZiTo2w7Mfj4nncvODyu0VD.qz.ctzuZ7PITM0jMLCZbs5/ENeS', 'agent', NULL, NULL, NULL, '2024-04-25 18:55:36', '2024-04-25 18:55:36', NULL),
(36, 'Maura Chávez', 'maura@domusvallarta.com', '3221352182', 'es', 'MX', NULL, '$2y$12$27nFOv6A6igRYnsk4KMLgOC3PRzjc0WTdLS2gKjj4QFUD3VGbuc0G', 'admin', NULL, NULL, NULL, '2024-04-25 18:56:11', '2024-04-26 17:37:30', NULL),
(37, 'Michelle Franco', 'michelle@domusvallarta.com', '3221821965', 'es', 'MX', NULL, '$2y$12$D.Om6qIC4EyLn8G4JGYNvuAOZiGb0sraiRONKggxjqYyvwPlTKeqy', 'agent', NULL, NULL, NULL, '2024-04-25 18:56:55', '2024-04-25 18:56:55', NULL),
(38, 'Miriam Siordia', 'miriam@domusvallarta.com', '3221383822', 'es', 'MX', NULL, '$2y$12$LJRgdfOM7OykQod539XbyOgGvryIux.f2GZVA6yZG67ZX5lptOxCW', 'agent', NULL, NULL, 'WQw4VWFFEvIzft29iXkMm1o9jIwnC1yDigHNVhaoGXG8nnImpx864XdRJJJg', '2024-04-25 18:57:16', '2024-04-25 18:57:16', NULL),
(39, 'Mónica Díaz-Morlet', 'monica@domusvallarta.com', '3221426743', 'es', 'MX', NULL, '$2y$12$1kC/Xh8JZK3potOTEg9yYO7rkTtoD9zw5pJ35VQd7jVFBT6Wfzwmq', 'agent', NULL, NULL, NULL, '2024-04-25 18:57:45', '2024-04-25 21:00:28', NULL),
(40, 'Monica Zamudio', 'monica.zamudio@domusvallarta.com', '3223036740', 'es', 'MX', NULL, '$2y$12$fyHTMOCOAO2/ckNEfR0sE.MGxzfwZSRer7jGwWTaPLPHPCDg6F3ye', 'agent', NULL, NULL, 'fAVLuTg0nN1xz4hHAj3vudZTlmtKIvN3oUlHgOxLoMPDw92YDNLosa129ObQ', '2024-04-25 18:58:28', '2024-04-25 18:58:28', NULL),
(41, 'Montserrat Ripoll', 'montserrat@domusvallarta.com', '3334956314', 'es', 'MX', NULL, '$2y$12$CZs7tR6xwXuk6sGJQ2v1a.On0QGoObNIlvUgLWt2fnxEAbBrsr3jq', 'agent', NULL, NULL, NULL, '2024-04-25 18:58:53', '2024-04-25 18:58:53', NULL),
(42, 'Nora Díaz', 'nora@domusvallarta.com', '3222890849', 'es', 'MX', NULL, '$2y$12$8PW3qWMMbm402S07hgfagOOayIIt34pp3hiUja5H0A8dDtUnpxhs.', 'agent', NULL, NULL, NULL, '2024-04-25 18:59:21', '2024-04-25 18:59:21', NULL),
(43, 'Nuria López-Puerta', 'nuria@domusvallarta.com', '3223539209', 'es', 'MX', NULL, '$2y$12$fvTMyBECPIIimFYyNCgURu9nk.w2cmSo4z4fQGpbr7T8kHbHtWSb.', 'agent', NULL, NULL, NULL, '2024-04-25 19:01:29', '2024-04-25 19:01:29', NULL),
(44, 'Ulises Sevilla', 'ulises@domusvallarta.com', '3221887783', 'es', 'MX', NULL, '$2y$12$UZXaVnit8a2qq9m6SLtPUeBkwjvuK9sW6144MSCHmsPnvIG5Ry3NC', 'agent', NULL, NULL, NULL, '2024-04-25 19:02:21', '2024-04-25 19:02:21', NULL),
(46, 'Sofía Siordia', 'sofia.siordia@domusvallarta.com', '3328355022', 'es', 'MX', NULL, '$2y$12$nJ9wl9kPXf1GyvicwgUDT.c1K83POtNJHtlbglPXPhB5e1SAa60P6', 'agent', NULL, NULL, NULL, '2024-04-25 19:03:05', '2024-04-25 19:03:05', NULL),
(47, 'Marcela Gutiérrez Pérez', 'marcela@domusvallarta.com', '3221507491', 'es', 'MX', NULL, '$2y$12$b/rNxO6PsBWSM6rJcKb6o.QJdYD2RroL0l9b3VVfRWxMk766yTyTa', 'agent', NULL, NULL, NULL, '2024-04-25 19:03:39', '2024-04-25 19:03:39', NULL),
(48, 'Alejandro Zerón', 'alejandro.zeron@domusvallarta.com', '3222743658', 'es', 'MX', NULL, '$2y$12$ZZJXslXFbwB1Sy.VGF4JdOzKyI7Qbt/1z.wD4s2ctG3nk4vL8M10.', 'agent', NULL, NULL, NULL, '2024-04-25 19:04:05', '2024-04-25 19:04:05', NULL),
(49, 'Antoine Maherault', 'antoine.maherault@domusvallarta.com', '3222747046', 'es', 'MX', NULL, '$2y$12$JnIi7L.tDV7.T4InAo5fHe0V0QL5mjNtyg.7Ujb39yuBBrLodaEZC', 'agent', NULL, NULL, '1IMUjF3wJCn0Gnvo64iD8IX0NmCKPjuuXKxS3Xi6ycVwrbAPDo99QbWRj19X', '2024-04-25 19:04:44', '2024-04-25 19:04:44', NULL),
(51, 'Yearim Soto', 'yearim@domusvallarta.com', '5528101268', 'es', 'MX', NULL, '$2y$12$9H8PEn6ONfgvfC65MEDSbu5mMjtMXi2E5gz4Lxad/xmmC1ww5BuvW', 'agent', NULL, NULL, NULL, '2024-04-25 19:06:42', '2024-04-25 19:06:42', NULL),
(52, 'Alexei Ortiz Cortes', 'alexei@domusvallarta.com', '3222920364', 'es', 'MX', NULL, '$2y$12$xhp5a.FKNUcZyCmm8Tqeh.gAMnlpcJk8hWBlWt4Zfiw/46LxuU8JC', 'agent', NULL, NULL, NULL, '2024-04-25 19:07:39', '2024-04-25 19:07:39', NULL),
(53, 'Susana Chavez', 'susy.chavez@domusvallarta.com', '3336628203', 'es', 'MX', NULL, '$2y$12$X.kXbyyrOWLO9LMchnu3iedhh0fQmntJY1V2rCXv.KyxE/6Cd/g96', 'agent', NULL, NULL, NULL, '2024-04-25 19:08:42', '2024-04-25 19:08:42', NULL),
(55, 'José Bolivar', 'jose.bolivar@domusvallarta.com', '3331786531', 'es', 'MX', NULL, '$2y$12$H3L/AJrRB2T3Y5YEkJLibOx53kwd/w0o1lN4U9hgLn2RggiNOpV/S', 'agent', NULL, NULL, NULL, '2024-04-25 19:10:14', '2024-04-25 19:10:14', NULL),
(65, 'Francisco Renteria', 'francisco@domusvallarta.com', '3221902169', 'es', 'MX', NULL, '$2y$12$hyqQm9bi/D8odEurGX8cFOepEM3nfTDT94a5hchup5dfJRqNqDZyG', 'agent', NULL, NULL, '8V00lN6md1PoLpeSMLdQpYU9nF6wnJDbP5hVavSd8iA5ZX5qKMKjcJUARR9m', '2024-04-25 19:28:01', '2024-04-25 19:28:01', NULL),
(122, 'Mónica Chessal', 'monica.chessal@domusvallarta.com', NULL, 'es', 'MX', NULL, '$2y$12$FkprB11dVvtW5itVHEJrOeHK5NyHV6rLFEe5VtiG.k5EyLAYD54a.', 'agent', NULL, NULL, NULL, '2024-04-25 20:40:55', '2024-04-25 20:59:32', NULL),
(123, 'Leonel Oriozco', 'leonel.orozco@domusvallarta.com', NULL, 'es', 'MX', NULL, '$2y$12$bEHZwwNLja5TBe46gB57peIqJo/Tuumk69.wzR4cboRE6lrEQmIIS', 'agent', NULL, NULL, NULL, '2024-04-25 20:41:50', '2024-04-25 20:41:50', NULL),
(124, 'Lino Bertoldi Cortes', 'lino@domusvallarta.com', NULL, 'es', 'MX', NULL, '$2y$12$bGgHtGI2zAHp9xTKrJhEgOI0786hAoSdjjCAJ8rosSmCwo8BhN3u2', 'agent', NULL, NULL, NULL, '2024-04-25 20:42:13', '2024-04-25 20:42:13', NULL),
(125, 'David Pompa', 'david@domusvallarta.com', NULL, 'es', 'MX', NULL, '$2y$12$G9JgyeKy9zQMV2mEML1fBuKTPcG6aHItrkYtZ4k15A49FDY80ihzq', 'agent', NULL, NULL, NULL, '2024-04-25 20:42:49', '2024-04-25 20:42:49', NULL),
(126, 'Sandra Ramírez', 'sandra.ramirez@domusvallarta.com', NULL, 'es', 'MX', NULL, '$2y$12$d2Iwu8UxrxH89YjoEH5RIOgZZNrCRuz95.FYXZRzCYcBqnMa1YJ42', 'agent', NULL, NULL, NULL, '2024-04-25 20:43:43', '2024-04-25 20:43:43', NULL),
(127, 'Marcela Garcia', 'marcela.garcia@domusvallarta.com', NULL, 'es', 'MX', NULL, '$2y$12$HMY56et8wXX99gna5.rBIuiE5zK6edAlueIsF4KnESz1rrBbE1512', 'agent', NULL, NULL, NULL, '2024-04-25 20:48:35', '2024-04-25 20:48:35', NULL),
(128, 'Cristobal Arreola', 'cristobal.arreola@domusvallarta.com', NULL, 'es', 'MX', NULL, '$2y$12$5VwLsiqrnnU6TXlMgsupSuFecO/E3BwU.lVCbsY6W6Yt.T9.5HCnm', 'agent', NULL, NULL, 'og588a2YkQ7U7p2oGFOj7LtsrMhJeeVmhQGJjguhGQfO95Lj4YxOFjllQk5u', '2024-04-25 20:52:24', '2024-04-25 20:52:24', NULL),
(129, 'Sofia Zavala', 'sofia.zavala@domusvallarta.com', NULL, 'es', 'MX', NULL, '$2y$12$TjX3dV0.qORsNihtW/0ilu6CUAXYIA9u0XODghxchG6tjrBj0ymgm', 'agent', NULL, NULL, NULL, '2024-04-25 20:55:41', '2024-04-25 20:55:41', NULL),
(130, 'Úrsulo Rafael Casillas Estrada', 'casillasu@icloud.com', NULL, 'es', 'MX', NULL, '$2y$12$DevjSOCkUT0davuyACzRzO0KYgvdDrTJ0AJnkUDGdXGPex2f/YbMe', 'client', NULL, 3, NULL, '2024-06-03 21:34:28', '2024-06-03 21:34:28', NULL),
(131, 'Ana Karen Leal del Toro', 'karenn_leal@hotmail.com', NULL, 'es', 'MX', NULL, '$2y$12$7pN3zHtjRO2JQosLVyMpguj01WNjhMq453s4Z//GmWOTYLV/maa4y', 'client', NULL, 15, NULL, '2024-06-03 21:35:07', '2024-06-03 21:35:07', NULL),
(132, 'Karina Zúñiga Villanueva', 'kazuvi2019@icloud.com', NULL, 'es', 'MX', NULL, '$2y$12$Oc3KTMlxtiU8BouGi7iHo.PdarAjTTX/8SohkpNyXwmjWBkwGxbGW', 'client', NULL, 65, NULL, '2024-06-03 21:36:30', '2024-06-03 21:36:30', NULL),
(133, 'Santiago Rodríguez Mirola', 'srodriguez.agent@gmail.com', NULL, 'es', 'MX', NULL, '$2y$12$aZSfn9NG/aQmDceQAsgt1OuQuNEbDl6/tpOsmP9Y6VD8mnrRkT/Hi', 'client', NULL, 20, NULL, '2024-06-03 21:37:28', '2024-06-03 21:37:28', NULL),
(134, 'Diana Ramírez Arias', 'dramirez@oafondos.com.mx', NULL, 'es', 'MX', NULL, '$2y$12$IspXXd6tNwOtDnUA9nRZeuYr.rA/yeXMkoHAzueSESnh0q.PwYh12', 'client', NULL, 15, NULL, '2024-06-03 21:38:10', '2024-06-03 21:38:10', NULL),
(135, 'Jorge Enrique Luquín Arreola', 'sanantonioimp@yahoo.com.mx', NULL, 'es', 'MX', NULL, '$2y$12$Mp/tvG3pwQ7sgXGeIMbJjuVG6ECZ6HJH8GzFOuxyfIKKlzUCOZxwW', 'client', NULL, 25, 'Tc5fhNBdQ95TBg0RJJltl6RhWkanhgpyLdBrIOaz7kJyXplPh7Zpr6IxFyZH', '2024-06-03 21:39:15', '2024-06-03 21:39:15', NULL),
(136, 'Eduardo Rivas Matos', 'eduardorivasmatos@gmail.com', NULL, 'es', 'MX', NULL, '$2y$12$y57FPe3GF3l9hKfg2CCQwusvCQi2.RmAhABFNAWVFABP1JtsKIb8e', 'client', NULL, 15, NULL, '2024-06-03 21:40:48', '2024-06-03 21:40:48', NULL),
(137, 'Guillermo Ochoa Valle', 'ochoavalleg@hotmail.com', NULL, 'es', 'MX', NULL, '$2y$12$MomYdtlmQxucbsOLFZwdzO6lEB3LwtP1dqF/kqGoLaWuKp1SMz3aO', 'client', NULL, 3, NULL, '2024-06-03 21:42:12', '2024-06-03 21:42:12', NULL),
(138, 'Roberto Ignacio López Gutiérrez', 'robertolopezgtz@gmail.com', NULL, 'es', 'MX', NULL, '$2y$12$P0zxmmj8ka4SXArniFwWh.8V3kMooiDVER7f2LHwD3F6KYZyr.piK', 'client', NULL, 128, NULL, '2024-06-03 21:43:09', '2024-06-03 21:43:09', NULL),
(139, 'Gustavo Adolfo Bonilla Barragán', 'gabbonillab@hotmail.com', NULL, 'es', 'MX', NULL, '$2y$12$nHD8obBf8YsPn/a5yrZ0led8AlTcoeJlW2Zv3ee9sjyJ2qWeji4GO', 'client', NULL, 15, NULL, '2024-06-03 21:43:55', '2024-06-03 21:43:55', NULL),
(140, 'Anibal Anacleto Valle Avilez', 'anibal_valle1@hotmail.com', NULL, 'es', 'MX', NULL, '$2y$12$DwOtHK6KLa2FUIm0Xwwz3OgMSNjJB1h.mV7rZAL7ATLQwbaXiVoZK', 'client', NULL, 51, 'IFUaYZKElTcqZcJcB1hLeZT8rwdQLVfBGZbbv9HL44e9gKOnGwnyNARaUiGG', '2024-06-03 21:46:31', '2024-06-05 15:31:49', NULL),
(141, 'Mónica Olimpia Alcalá Sens', 'monica@mgm-realestate.com', NULL, 'es', 'MX', NULL, '$2y$12$251OY6AGwviSts0wfT8hsO6ZiS9i1HqFBMM7x21UZUSo4mLbDKGqS', 'client', NULL, 127, NULL, '2024-06-03 21:47:47', '2024-06-03 21:47:47', NULL),
(142, 'Jaime Agredano Sánchez', 'agredanogroup@gmail.com', NULL, 'es', 'MX', NULL, '$2y$12$YlgCJ/r1.PN/ruh93.ilBu7l2muH1iLZ/6Yhk3YUqY/bAmKSUKbXq', 'client', NULL, 40, NULL, '2024-06-03 21:48:42', '2024-06-03 21:48:42', NULL),
(143, 'Claudia Eugenia Lovera Cuevas', 'loveraclaudiae@gmail.com', NULL, 'es', 'MX', NULL, '$2y$12$RL62HAhARzM7R5vfuNprwOSfEJamaa/xgIGf4brZoWc1gMi4hIqkC', 'client', NULL, 65, NULL, '2024-06-03 21:55:41', '2024-06-03 21:55:41', NULL),
(144, 'Ivan Rendón Ochoa', 'iro1982@hotmail.com', NULL, 'es', 'MX', NULL, '$2y$12$oAaLtJaRuj7xS7Ar8WRek.7cBVDeQX53k91tk.aGVxgFEr3goC9Wu', 'client', NULL, 19, 'aUESG1LGXuLwgnb4ey2Ddueq4CUc1W3qZ5C0v1IvlBK4r2KVonRmEKkdgVOk', '2024-06-03 22:06:21', '2024-06-03 22:06:21', NULL),
(145, 'José Alejandro Ávalos Suro', 'avalossuro@gmail.com', NULL, 'es', 'MX', NULL, '$2y$12$8Q5RgVX6tjum./L/NDpof.FG3lBdDOffJYPfG24LT5MYatKQr651u', 'client', NULL, 19, NULL, '2024-06-03 22:09:17', '2024-06-03 22:09:17', NULL),
(146, 'Alberto Farah Made Nahum', 'betomate@hotmail.com', NULL, 'es', 'MX', NULL, '$2y$12$46RtWBev4dlSxCXN4EaHSOxwkiPBVAdd8uHpgSkU/1QbdkMCo12ja', 'client', NULL, 37, NULL, '2024-06-03 22:10:45', '2024-06-03 22:10:45', NULL),
(147, 'Francisco Javier Vega', 'keyesclub16@gmail.com', NULL, 'es', 'MX', NULL, '$2y$12$rh6Yi1ZLl3wAtm9QafI8feTCLbPjb68De5Ngey185hC6KkkpUGx92', 'client', NULL, 49, NULL, '2024-06-03 22:12:04', '2024-06-03 22:12:04', NULL),
(148, 'Diana Melissa Moya Vanegas', 'diiana.moya02@gmail.com', NULL, 'es', 'MX', NULL, '$2y$12$KTJtw96Rbl9j38pHpi3vW.Jc4XDWBqjpOTWvxBV8X0ay4tmYzXCRK', 'client', NULL, 33, 'ih8xSjE3YFrqkybj2Uf06gfOM8S6ZA0ZpPrVeGJjXokiRGwxfmCe9QRMeQAs', '2024-06-03 22:12:49', '2024-06-03 22:12:49', NULL),
(149, 'Pedro Ramírez Hernández', 'pedro@cpramirez.com', NULL, 'es', 'MX', NULL, '$2y$12$H0Qx2kAL2WF0obd.gOvyhuytBBJDEdglDqX124kt9HgeaI5OXAsFu', 'client', NULL, 40, NULL, '2024-06-03 22:14:04', '2024-06-03 22:14:04', NULL),
(150, 'Rafael Soltero Razo', 'solteroraf@hotmail.com', NULL, 'es', 'MX', NULL, '$2y$12$7HkE1978EELHGFJvwdrCa.cxMTjddbx8k.F1N50aEPybnmiyBKdoS', 'client', NULL, 20, NULL, '2024-06-03 22:14:55', '2024-06-03 22:14:55', NULL),
(151, 'Fernando Alberto Anaya Espinosa', 'fae84@hotmail.com', NULL, 'es', 'MX', NULL, '$2y$12$l3pUF28lA6bzfBD4cmGtDu4mq6Y1fpllxmY29BCex5dwnFuIbnSoa', 'client', NULL, 20, NULL, '2024-06-03 22:16:10', '2024-06-03 22:16:10', NULL),
(152, 'Luis Manuel del Sordo García', 'luisdelsordo@gmail.com', NULL, 'es', 'MX', NULL, '$2y$12$/BfSrkKNbyrMSzBMZNeAoO52EsJ1fiAOdtKxPEzN1CwFJlj3Rqv6G', 'client', NULL, 20, NULL, '2024-06-03 22:16:51', '2024-06-03 22:16:51', NULL),
(153, 'María Julieta Campos Ozaine', 'maria@invictalaw.ca', NULL, 'es', 'MX', NULL, '$2y$12$OFJLIYvTindV.sQTr7shCeDPQ/EVUNOsaLIOYRfH.tqqHiwBs3kES', 'client', NULL, 15, 'MMw4tgxcXXQKaQWGIul1BzsRrwRKSh6A86M1PMi5wa8eopP72nxoLihdLbBR', '2024-06-03 22:18:22', '2024-06-03 22:18:22', NULL),
(154, 'Juan Antonio Rosales González', 'juanrg-29@hotmail.com', NULL, 'es', 'MX', NULL, '$2y$12$JcKo2.WTNxdhaV4UlghmvepqiO.2710CQGCHo1fur8jVfecZEzq/y', 'client', NULL, 20, NULL, '2024-06-03 22:19:09', '2024-06-03 22:19:09', NULL),
(155, 'Úrsula Zuleika Rivera Pérez', 'urconsulting@hotmail.com', NULL, 'es', 'MX', NULL, '$2y$12$mjJ7AbsuXCyZhvqli4ImPOaGweIoIRN94dHSXSzsjUsrg///K3uWG', 'client', NULL, 20, NULL, '2024-06-03 22:20:08', '2024-06-03 22:20:08', NULL),
(156, 'Alan David Zepeda Vaca', 'alandazeva_2020@hotmail.com', NULL, 'es', 'MX', NULL, '$2y$12$u18gdgWtpJ1px.1Tzx9n1O8JMoxREqNqCu7OJ1p1O0ueTEzdpBAJK', 'client', NULL, 46, '9KS6N3260qDW4ku2i7Zaxw5j3QTYnuFZakFANSxlWcMvODK2oPXbq3AqS4Gc', '2024-06-03 22:20:58', '2024-06-03 22:20:58', NULL),
(157, 'Alma Patricia Neri Hernández', 'patricia.ner11@gmail.com', NULL, 'es', 'MX', NULL, '$2y$12$jKhr17OoCau6tfeYd5ksae8UI5c4.WJs/sUGCuD4BOXQ4eMwqDDHm', 'client', NULL, 20, NULL, '2024-06-03 22:21:59', '2024-06-03 22:21:59', NULL),
(158, 'Stephanie Alfaro Ochoa', 'stepanieochoa0708@gmail.com', NULL, 'es', 'MX', NULL, '$2y$12$RWYJVrRTFBunXjqCy22YH.x9vvX.nLWNMp3ukTd4tGI9KO8PbEWXS', 'client', NULL, 3, NULL, '2024-06-03 22:22:55', '2024-06-03 22:22:55', NULL),
(159, 'Michel Amadeus Virgen Arámbula', 'virgen.michel@gmail.com', NULL, 'es', 'MX', NULL, '$2y$12$b3KSoisetdc8rTVd154EHu/JhCGJIQgpv6HdvdPA1trLpJjBfcjsK', 'client', NULL, 3, 'ggz22MJyGayxdXvOJ0pok4kwmXnlCkGCq1wrW3ytbc0Q0vfhOW9ycZVLb1Q7', '2024-06-03 22:24:11', '2024-06-03 22:24:11', NULL),
(160, 'Agustín Álvarez Valdivia', 'opticasalvarezrios@gmail.com', NULL, 'es', 'MX', NULL, '$2y$12$gxj5JRVvOsrVXtNz6bY.wO3Y/IWcar1pz.SI8fBJBdgS5Q5Sugxm2', 'client', NULL, 25, 'UehNC7MS9H4dLfP1aaazAcc02XsM4kwwZ6RLEytCydgDUgpwUaD83RZipgyi', '2024-06-03 22:25:30', '2024-06-03 22:25:30', NULL),
(161, 'Luis Dagoberto Flores Velasco', 'luisfloresv76@hotmail.com', NULL, 'es', 'MX', NULL, '$2y$12$iYAViKXiLy/ClErQS7s6yOB92i0y9sQk3Bfp47bRsB6qxKf3dp9Pa', 'client', NULL, 46, 'KJpm6LBMntzKBBXW6Vx3oWjiViNsLOKGEQSf0hTWziHM7pD2FpvfsxjknnJh', '2024-06-03 22:26:25', '2024-06-03 22:26:25', NULL),
(162, 'Gianpaolo Bellomunno', 'gbellomunno@gmail.com', NULL, 'es', 'MX', NULL, '$2y$12$Gs/IwKG90TZrDjzoPisrFOV6sqK8nNkgVDZrSCVPi3gFWe4wSp1Sa', 'client', NULL, 20, NULL, '2024-06-03 22:27:22', '2024-06-03 22:27:22', NULL),
(163, 'Erick Asesor', 'erickalejandropm117@gmail.com', NULL, 'es', 'MX', NULL, '$2y$12$OK4QjQFu3S5MXITCO1Yzp.sAqruQtL/jL/9yPjCMTqmMlTSvdsVsK', 'agent', NULL, NULL, 'BVcb0Ya32nfaVHQsNtLZrhwNdc2wKSocR2D1wXE9RKTx9NxjtEhrKLnGdBlw', '2024-06-05 16:14:20', '2024-06-05 16:14:20', NULL),
(164, 'Panchito Pérez', 'tesren@live.com.mx', NULL, 'es', 'MX', NULL, '$2y$12$yEmJiwekwYbslKGHMJtAA.gLiwXYC9ITSpw1GUFCiOr0Ded216izu', 'client', NULL, 163, NULL, '2024-06-05 16:18:34', '2024-06-05 16:18:34', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `action_events`
--
ALTER TABLE `action_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action_events_actionable_type_actionable_id_index` (`actionable_type`,`actionable_id`),
  ADD KEY `action_events_target_type_target_id_index` (`target_type`,`target_id`),
  ADD KEY `action_events_batch_id_model_type_model_id_index` (`batch_id`,`model_type`,`model_id`),
  ADD KEY `action_events_user_id_index` (`user_id`);

--
-- Indices de la tabla `construction_updates`
--
ALTER TABLE `construction_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `agent_id` (`agent_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nova_field_attachments`
--
ALTER TABLE `nova_field_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nova_field_attachments_attachable_type_attachable_id_index` (`attachable_type`,`attachable_id`),
  ADD KEY `nova_field_attachments_url_index` (`url`);

--
-- Indices de la tabla `nova_notifications`
--
ALTER TABLE `nova_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nova_notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indices de la tabla `nova_pending_field_attachments`
--
ALTER TABLE `nova_pending_field_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nova_pending_field_attachments_draft_id_index` (`draft_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `payment_plans`
--
ALTER TABLE `payment_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `payment_plan_unit`
--
ALTER TABLE `payment_plan_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `private_messages`
--
ALTER TABLE `private_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `shapes`
--
ALTER TABLE `shapes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `unit_id` (`unit_id`);

--
-- Indices de la tabla `towers`
--
ALTER TABLE `towers`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `unit_type_id` (`unit_type_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indices de la tabla `unit_types`
--
ALTER TABLE `unit_types`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `unit_user`
--
ALTER TABLE `unit_user`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `agent_id` (`agent_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `action_events`
--
ALTER TABLE `action_events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT de la tabla `construction_updates`
--
ALTER TABLE `construction_updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `information`
--
ALTER TABLE `information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nova_field_attachments`
--
ALTER TABLE `nova_field_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nova_pending_field_attachments`
--
ALTER TABLE `nova_pending_field_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment_plans`
--
ALTER TABLE `payment_plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `payment_plan_unit`
--
ALTER TABLE `payment_plan_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `private_messages`
--
ALTER TABLE `private_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `shapes`
--
ALTER TABLE `shapes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT de la tabla `towers`
--
ALTER TABLE `towers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `units`
--
ALTER TABLE `units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT de la tabla `unit_types`
--
ALTER TABLE `unit_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `unit_user`
--
ALTER TABLE `unit_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
