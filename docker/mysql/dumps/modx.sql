-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: mysql
-- Время создания: Апр 12 2024 г., 11:32
-- Версия сервера: 8.0.32
-- Версия PHP: 8.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `modx`
--

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_actiondom`
--

CREATE TABLE `modx_access_actiondom` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_actions`
--

CREATE TABLE `modx_access_actions` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_category`
--

CREATE TABLE `modx_access_category` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_context`
--

CREATE TABLE `modx_access_context` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_access_context`
--

INSERT INTO `modx_access_context` (`id`, `target`, `principal_class`, `principal`, `authority`, `policy`) VALUES
(1, 'web', 'modUserGroup', 0, 9999, 3),
(2, 'mgr', 'modUserGroup', 1, 0, 2),
(3, 'web', 'modUserGroup', 1, 0, 2),
(4, 'mgr', 'modUserGroup', 1, 9999, 13);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_elements`
--

CREATE TABLE `modx_access_elements` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_media_source`
--

CREATE TABLE `modx_access_media_source` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_menus`
--

CREATE TABLE `modx_access_menus` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_namespace`
--

CREATE TABLE `modx_access_namespace` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_permissions`
--

CREATE TABLE `modx_access_permissions` (
  `id` int UNSIGNED NOT NULL,
  `template` int UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_access_permissions`
--

INSERT INTO `modx_access_permissions` (`id`, `template`, `name`, `description`, `value`) VALUES
(1, 1, 'about', 'perm.about_desc', 1),
(2, 1, 'access_permissions', 'perm.access_permissions_desc', 1),
(3, 1, 'actions', 'perm.actions_desc', 1),
(4, 1, 'change_password', 'perm.change_password_desc', 1),
(5, 1, 'change_profile', 'perm.change_profile_desc', 1),
(6, 1, 'charsets', 'perm.charsets_desc', 1),
(7, 1, 'class_map', 'perm.class_map_desc', 1),
(8, 1, 'components', 'perm.components_desc', 1),
(9, 1, 'content_types', 'perm.content_types_desc', 1),
(10, 1, 'countries', 'perm.countries_desc', 1),
(11, 1, 'create', 'perm.create_desc', 1),
(12, 1, 'credits', 'perm.credits_desc', 1),
(13, 1, 'customize_forms', 'perm.customize_forms_desc', 1),
(14, 1, 'dashboards', 'perm.dashboards_desc', 1),
(15, 1, 'database', 'perm.database_desc', 1),
(16, 1, 'database_truncate', 'perm.database_truncate_desc', 1),
(17, 1, 'delete_category', 'perm.delete_category_desc', 1),
(18, 1, 'delete_chunk', 'perm.delete_chunk_desc', 1),
(19, 1, 'delete_context', 'perm.delete_context_desc', 1),
(20, 1, 'delete_document', 'perm.delete_document_desc', 1),
(21, 1, 'delete_weblink', 'perm.delete_weblink_desc', 1),
(22, 1, 'delete_symlink', 'perm.delete_symlink_desc', 1),
(23, 1, 'delete_static_resource', 'perm.delete_static_resource_desc', 1),
(24, 1, 'delete_eventlog', 'perm.delete_eventlog_desc', 1),
(25, 1, 'delete_plugin', 'perm.delete_plugin_desc', 1),
(26, 1, 'delete_propertyset', 'perm.delete_propertyset_desc', 1),
(27, 1, 'delete_snippet', 'perm.delete_snippet_desc', 1),
(28, 1, 'delete_template', 'perm.delete_template_desc', 1),
(29, 1, 'delete_tv', 'perm.delete_tv_desc', 1),
(30, 1, 'delete_role', 'perm.delete_role_desc', 1),
(31, 1, 'delete_user', 'perm.delete_user_desc', 1),
(32, 1, 'directory_chmod', 'perm.directory_chmod_desc', 1),
(33, 1, 'directory_create', 'perm.directory_create_desc', 1),
(34, 1, 'directory_list', 'perm.directory_list_desc', 1),
(35, 1, 'directory_remove', 'perm.directory_remove_desc', 1),
(36, 1, 'directory_update', 'perm.directory_update_desc', 1),
(37, 1, 'edit_category', 'perm.edit_category_desc', 1),
(38, 1, 'edit_chunk', 'perm.edit_chunk_desc', 1),
(39, 1, 'edit_context', 'perm.edit_context_desc', 1),
(40, 1, 'edit_document', 'perm.edit_document_desc', 1),
(41, 1, 'edit_weblink', 'perm.edit_weblink_desc', 1),
(42, 1, 'edit_symlink', 'perm.edit_symlink_desc', 1),
(43, 1, 'edit_static_resource', 'perm.edit_static_resource_desc', 1),
(44, 1, 'edit_locked', 'perm.edit_locked_desc', 1),
(45, 1, 'edit_plugin', 'perm.edit_plugin_desc', 1),
(46, 1, 'edit_propertyset', 'perm.edit_propertyset_desc', 1),
(47, 1, 'edit_role', 'perm.edit_role_desc', 1),
(48, 1, 'edit_snippet', 'perm.edit_snippet_desc', 1),
(49, 1, 'edit_template', 'perm.edit_template_desc', 1),
(50, 1, 'edit_tv', 'perm.edit_tv_desc', 1),
(51, 1, 'edit_user', 'perm.edit_user_desc', 1),
(52, 1, 'element_tree', 'perm.element_tree_desc', 1),
(53, 1, 'empty_cache', 'perm.empty_cache_desc', 1),
(54, 1, 'error_log_erase', 'perm.error_log_erase_desc', 1),
(55, 1, 'error_log_view', 'perm.error_log_view_desc', 1),
(56, 1, 'export_static', 'perm.export_static_desc', 1),
(57, 1, 'file_create', 'perm.file_create_desc', 1),
(58, 1, 'file_list', 'perm.file_list_desc', 1),
(59, 1, 'file_manager', 'perm.file_manager_desc', 1),
(60, 1, 'file_remove', 'perm.file_remove_desc', 1),
(61, 1, 'file_tree', 'perm.file_tree_desc', 1),
(62, 1, 'file_update', 'perm.file_update_desc', 1),
(63, 1, 'file_upload', 'perm.file_upload_desc', 1),
(64, 1, 'file_unpack', 'perm.file_unpack_desc', 1),
(65, 1, 'file_view', 'perm.file_view_desc', 1),
(66, 1, 'flush_sessions', 'perm.flush_sessions_desc', 1),
(67, 1, 'frames', 'perm.frames_desc', 1),
(68, 1, 'help', 'perm.help_desc', 1),
(69, 1, 'home', 'perm.home_desc', 1),
(70, 1, 'import_static', 'perm.import_static_desc', 1),
(71, 1, 'languages', 'perm.languages_desc', 1),
(72, 1, 'lexicons', 'perm.lexicons_desc', 1),
(73, 1, 'list', 'perm.list_desc', 1),
(74, 1, 'load', 'perm.load_desc', 1),
(75, 1, 'logout', 'perm.logout_desc', 1),
(76, 1, 'logs', 'perm.logs_desc', 1),
(77, 1, 'menu_reports', 'perm.menu_reports_desc', 1),
(78, 1, 'menu_security', 'perm.menu_security_desc', 1),
(79, 1, 'menu_site', 'perm.menu_site_desc', 1),
(80, 1, 'menu_support', 'perm.menu_support_desc', 1),
(81, 1, 'menu_system', 'perm.menu_system_desc', 1),
(82, 1, 'menu_tools', 'perm.menu_tools_desc', 1),
(83, 1, 'menu_trash', 'perm.menu_trash_desc', 1),
(84, 1, 'menu_user', 'perm.menu_user_desc', 1),
(85, 1, 'menus', 'perm.menus_desc', 1),
(86, 1, 'messages', 'perm.messages_desc', 1),
(87, 1, 'namespaces', 'perm.namespaces_desc', 1),
(88, 1, 'new_category', 'perm.new_category_desc', 1),
(89, 1, 'new_chunk', 'perm.new_chunk_desc', 1),
(90, 1, 'new_context', 'perm.new_context_desc', 1),
(91, 1, 'new_document', 'perm.new_document_desc', 1),
(92, 1, 'new_static_resource', 'perm.new_static_resource_desc', 1),
(93, 1, 'new_symlink', 'perm.new_symlink_desc', 1),
(94, 1, 'new_weblink', 'perm.new_weblink_desc', 1),
(95, 1, 'new_document_in_root', 'perm.new_document_in_root_desc', 1),
(96, 1, 'new_plugin', 'perm.new_plugin_desc', 1),
(97, 1, 'new_propertyset', 'perm.new_propertyset_desc', 1),
(98, 1, 'new_role', 'perm.new_role_desc', 1),
(99, 1, 'new_snippet', 'perm.new_snippet_desc', 1),
(100, 1, 'new_template', 'perm.new_template_desc', 1),
(101, 1, 'new_tv', 'perm.new_tv_desc', 1),
(102, 1, 'new_user', 'perm.new_user_desc', 1),
(103, 1, 'packages', 'perm.packages_desc', 1),
(104, 1, 'policy_delete', 'perm.policy_delete_desc', 1),
(105, 1, 'policy_edit', 'perm.policy_edit_desc', 1),
(106, 1, 'policy_new', 'perm.policy_new_desc', 1),
(107, 1, 'policy_save', 'perm.policy_save_desc', 1),
(108, 1, 'policy_view', 'perm.policy_view_desc', 1),
(109, 1, 'policy_template_delete', 'perm.policy_template_delete_desc', 1),
(110, 1, 'policy_template_edit', 'perm.policy_template_edit_desc', 1),
(111, 1, 'policy_template_new', 'perm.policy_template_new_desc', 1),
(112, 1, 'policy_template_save', 'perm.policy_template_save_desc', 1),
(113, 1, 'policy_template_view', 'perm.policy_template_view_desc', 1),
(114, 1, 'property_sets', 'perm.property_sets_desc', 1),
(115, 1, 'providers', 'perm.providers_desc', 1),
(116, 1, 'publish_document', 'perm.publish_document_desc', 1),
(117, 1, 'purge_deleted', 'perm.purge_deleted_desc', 1),
(118, 1, 'remove', 'perm.remove_desc', 1),
(119, 1, 'remove_locks', 'perm.remove_locks_desc', 1),
(120, 1, 'resource_duplicate', 'perm.resource_duplicate_desc', 1),
(121, 1, 'resourcegroup_delete', 'perm.resourcegroup_delete_desc', 1),
(122, 1, 'resourcegroup_edit', 'perm.resourcegroup_edit_desc', 1),
(123, 1, 'resourcegroup_new', 'perm.resourcegroup_new_desc', 1),
(124, 1, 'resourcegroup_resource_edit', 'perm.resourcegroup_resource_edit_desc', 1),
(125, 1, 'resourcegroup_resource_list', 'perm.resourcegroup_resource_list_desc', 1),
(126, 1, 'resourcegroup_save', 'perm.resourcegroup_save_desc', 1),
(127, 1, 'resourcegroup_view', 'perm.resourcegroup_view_desc', 1),
(128, 1, 'resource_quick_create', 'perm.resource_quick_create_desc', 1),
(129, 1, 'resource_quick_update', 'perm.resource_quick_update_desc', 1),
(130, 1, 'resource_tree', 'perm.resource_tree_desc', 1),
(131, 1, 'save', 'perm.save_desc', 1),
(132, 1, 'save_category', 'perm.save_category_desc', 1),
(133, 1, 'save_chunk', 'perm.save_chunk_desc', 1),
(134, 1, 'save_context', 'perm.save_context_desc', 1),
(135, 1, 'save_document', 'perm.save_document_desc', 1),
(136, 1, 'save_plugin', 'perm.save_plugin_desc', 1),
(137, 1, 'save_propertyset', 'perm.save_propertyset_desc', 1),
(138, 1, 'save_role', 'perm.save_role_desc', 1),
(139, 1, 'save_snippet', 'perm.save_snippet_desc', 1),
(140, 1, 'save_template', 'perm.save_template_desc', 1),
(141, 1, 'save_tv', 'perm.save_tv_desc', 1),
(142, 1, 'save_user', 'perm.save_user_desc', 1),
(143, 1, 'search', 'perm.search_desc', 1),
(144, 1, 'set_sudo', 'perm.set_sudo_desc', 1),
(145, 1, 'settings', 'perm.settings_desc', 1),
(146, 1, 'events', 'perm.events_desc', 1),
(147, 1, 'source_save', 'perm.source_save_desc', 1),
(148, 1, 'source_delete', 'perm.source_delete_desc', 1),
(149, 1, 'source_edit', 'perm.source_edit_desc', 1),
(150, 1, 'source_view', 'perm.source_view_desc', 1),
(151, 1, 'sources', 'perm.sources_desc', 1),
(152, 1, 'steal_locks', 'perm.steal_locks_desc', 1),
(153, 1, 'tree_show_element_ids', 'perm.tree_show_element_ids_desc', 1),
(154, 1, 'tree_show_resource_ids', 'perm.tree_show_resource_ids_desc', 1),
(155, 1, 'undelete_document', 'perm.undelete_document_desc', 1),
(156, 1, 'unpublish_document', 'perm.unpublish_document_desc', 1),
(157, 1, 'unlock_element_properties', 'perm.unlock_element_properties_desc', 1),
(158, 1, 'usergroup_delete', 'perm.usergroup_delete_desc', 1),
(159, 1, 'usergroup_edit', 'perm.usergroup_edit_desc', 1),
(160, 1, 'usergroup_new', 'perm.usergroup_new_desc', 1),
(161, 1, 'usergroup_save', 'perm.usergroup_save_desc', 1),
(162, 1, 'usergroup_user_edit', 'perm.usergroup_user_edit_desc', 1),
(163, 1, 'usergroup_user_list', 'perm.usergroup_user_list_desc', 1),
(164, 1, 'usergroup_view', 'perm.usergroup_view_desc', 1),
(165, 1, 'view', 'perm.view_desc', 1),
(166, 1, 'view_category', 'perm.view_category_desc', 1),
(167, 1, 'view_chunk', 'perm.view_chunk_desc', 1),
(168, 1, 'view_context', 'perm.view_context_desc', 1),
(169, 1, 'view_document', 'perm.view_document_desc', 1),
(170, 1, 'view_element', 'perm.view_element_desc', 1),
(171, 1, 'view_eventlog', 'perm.view_eventlog_desc', 1),
(172, 1, 'view_offline', 'perm.view_offline_desc', 1),
(173, 1, 'view_plugin', 'perm.view_plugin_desc', 1),
(174, 1, 'view_propertyset', 'perm.view_propertyset_desc', 1),
(175, 1, 'view_role', 'perm.view_role_desc', 1),
(176, 1, 'view_snippet', 'perm.view_snippet_desc', 1),
(177, 1, 'view_sysinfo', 'perm.view_sysinfo_desc', 1),
(178, 1, 'view_template', 'perm.view_template_desc', 1),
(179, 1, 'view_tv', 'perm.view_tv_desc', 1),
(180, 1, 'view_user', 'perm.view_user_desc', 1),
(181, 1, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(182, 1, 'workspaces', 'perm.workspaces_desc', 1),
(183, 2, 'add_children', 'perm.add_children_desc', 1),
(184, 2, 'copy', 'perm.copy_desc', 1),
(185, 2, 'create', 'perm.create_desc', 1),
(186, 2, 'delete', 'perm.delete_desc', 1),
(187, 2, 'list', 'perm.list_desc', 1),
(188, 2, 'load', 'perm.load_desc', 1),
(189, 2, 'move', 'perm.move_desc', 1),
(190, 2, 'publish', 'perm.publish_desc', 1),
(191, 2, 'remove', 'perm.remove_desc', 1),
(192, 2, 'save', 'perm.save_desc', 1),
(193, 2, 'steal_lock', 'perm.steal_lock_desc', 1),
(194, 2, 'undelete', 'perm.undelete_desc', 1),
(195, 2, 'unpublish', 'perm.unpublish_desc', 1),
(196, 2, 'view', 'perm.view_desc', 1),
(197, 3, 'load', 'perm.load_desc', 1),
(198, 3, 'list', 'perm.list_desc', 1),
(199, 3, 'view', 'perm.view_desc', 1),
(200, 3, 'save', 'perm.save_desc', 1),
(201, 3, 'remove', 'perm.remove_desc', 1),
(202, 4, 'add_children', 'perm.add_children_desc', 1),
(203, 4, 'create', 'perm.create_desc', 1),
(204, 4, 'copy', 'perm.copy_desc', 1),
(205, 4, 'delete', 'perm.delete_desc', 1),
(206, 4, 'list', 'perm.list_desc', 1),
(207, 4, 'load', 'perm.load_desc', 1),
(208, 4, 'remove', 'perm.remove_desc', 1),
(209, 4, 'save', 'perm.save_desc', 1),
(210, 4, 'view', 'perm.view_desc', 1),
(211, 5, 'create', 'perm.create_desc', 1),
(212, 5, 'copy', 'perm.copy_desc', 1),
(213, 5, 'list', 'perm.list_desc', 1),
(214, 5, 'load', 'perm.load_desc', 1),
(215, 5, 'remove', 'perm.remove_desc', 1),
(216, 5, 'save', 'perm.save_desc', 1),
(217, 5, 'view', 'perm.view_desc', 1),
(218, 6, 'load', 'perm.load_desc', 1),
(219, 6, 'list', 'perm.list_desc', 1),
(220, 6, 'view', 'perm.view_desc', 1),
(221, 6, 'save', 'perm.save_desc', 1),
(222, 6, 'remove', 'perm.remove_desc', 1),
(223, 6, 'view_unpublished', 'perm.view_unpublished_desc', 1),
(224, 6, 'copy', 'perm.copy_desc', 1),
(225, 7, 'list', 'perm.list_desc', 1),
(226, 7, 'load', 'perm.load_desc', 1),
(227, 7, 'view', 'perm.view_desc', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policies`
--

CREATE TABLE `modx_access_policies` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `parent` int UNSIGNED NOT NULL DEFAULT '0',
  `template` int UNSIGNED NOT NULL DEFAULT '0',
  `class` varchar(191) NOT NULL DEFAULT '',
  `data` text,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_access_policies`
--

INSERT INTO `modx_access_policies` (`id`, `name`, `description`, `parent`, `template`, `class`, `data`, `lexicon`) VALUES
(1, 'Resource', 'MODX Resource Policy with all attributes.', 0, 2, '', '{\"add_children\":true,\"create\":true,\"copy\":true,\"delete\":true,\"list\":true,\"load\":true,\"move\":true,\"publish\":true,\"remove\":true,\"save\":true,\"steal_lock\":true,\"undelete\":true,\"unpublish\":true,\"view\":true}', 'permissions'),
(2, 'Administrator', 'Context administration policy with all permissions.', 0, 1, '', '{\"about\":true,\"access_permissions\":true,\"actions\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"database_truncate\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_weblink\":true,\"delete_symlink\":true,\"delete_static_resource\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_weblink\":true,\"edit_symlink\":true,\"edit_static_resource\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"events\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_unpack\":true,\"file_view\":true,\"flush_sessions\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menus\":true,\"menu_reports\":true,\"menu_security\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"policy_delete\":true,\"policy_edit\":true,\"policy_new\":true,\"policy_save\":true,\"policy_template_delete\":true,\"policy_template_edit\":true,\"policy_template_new\":true,\"policy_template_save\":true,\"policy_template_view\":true,\"policy_view\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"remove_locks\":true,\"resource_duplicate\":true,\"resourcegroup_delete\":true,\"resourcegroup_edit\":true,\"resourcegroup_new\":true,\"resourcegroup_resource_edit\":true,\"resourcegroup_resource_list\":true,\"resourcegroup_save\":true,\"resourcegroup_view\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_role\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"set_sudo\":true,\"settings\":true,\"sources\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"steal_locks\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"usergroup_delete\":true,\"usergroup_edit\":true,\"usergroup_new\":true,\"usergroup_save\":true,\"usergroup_user_edit\":true,\"usergroup_user_list\":true,\"usergroup_view\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true}', 'permissions'),
(3, 'Load Only', 'A minimal policy with permission to load an object.', 0, 3, '', '{\"load\":true}', 'permissions'),
(4, 'Load, List and View', 'Provides load, list and view permissions only.', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(5, 'Object', 'An Object policy with all permissions.', 0, 3, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true}', 'permissions'),
(6, 'Element', 'MODX Element policy with all attributes.', 0, 4, '', '{\"add_children\":true,\"create\":true,\"delete\":true,\"list\":true,\"load\":true,\"remove\":true,\"save\":true,\"view\":true,\"copy\":true}', 'permissions'),
(7, 'Content Editor', 'Context administration policy with limited, content-editing related Permissions, but no publishing.', 0, 1, '', '{\"change_profile\":true,\"class_map\":true,\"countries\":true,\"edit_document\":true,\"edit_weblink\":true,\"edit_symlink\":true,\"edit_static_resource\":true,\"frames\":true,\"help\":true,\"home\":true,\"load\":true,\"list\":true,\"logout\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_tools\":true,\"menu_user\":true,\"resource_duplicate\":true,\"resource_tree\":true,\"save_document\":true,\"source_view\":true,\"tree_show_resource_ids\":true,\"view\":true,\"view_document\":true,\"view_template\":true,\"new_document\":true,\"new_weblink\":true,\"new_symlink\":true,\"new_static_resource\":true,\"delete_document\":true,\"delete_weblink\":true,\"delete_symlink\":true,\"delete_static_resource\":true}', 'permissions'),
(8, 'Media Source Admin', 'Media Source administration policy.', 0, 5, '', '{\"create\":true,\"copy\":true,\"load\":true,\"list\":true,\"save\":true,\"remove\":true,\"view\":true}', 'permissions'),
(9, 'Media Source User', 'Media Source user policy, with basic viewing and using - but no editing - of Media Sources.', 0, 5, '', '{\"load\":true,\"list\":true,\"view\":true}', 'permissions'),
(10, 'Developer', 'Context administration policy with most Permissions except Administrator and Security functions.', 0, 0, '', '{\"about\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_role\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_weblink\":true,\"edit_symlink\":true,\"edit_static_resource\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_unpack\":true,\"file_view\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_weblink\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"packages\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unpublish_document\":true,\"unlock_element_properties\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_user\":true,\"view_unpublished\":true,\"workspaces\":true}', 'permissions'),
(11, 'Context', 'A standard Context policy that you can apply when creating Context ACLs for basic read/write and view_unpublished access within a Context.', 0, 6, '', '{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true,\"copy\":true,\"view_unpublished\":true}', 'permissions'),
(12, 'Hidden Namespace', 'Hidden Namespace policy, will not show Namespace in lists.', 0, 7, '', '{\"load\":false,\"list\":false,\"view\":true}', 'permissions');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policy_templates`
--

CREATE TABLE `modx_access_policy_templates` (
  `id` int UNSIGNED NOT NULL,
  `template_group` int UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_access_policy_templates`
--

INSERT INTO `modx_access_policy_templates` (`id`, `template_group`, `name`, `description`, `lexicon`) VALUES
(1, 1, 'AdministratorTemplate', 'Context administration policy template with all permissions.', 'permissions'),
(2, 3, 'ResourceTemplate', 'Resource Policy Template with all attributes.', 'permissions'),
(3, 2, 'ObjectTemplate', 'Object Policy Template with all attributes.', 'permissions'),
(4, 4, 'ElementTemplate', 'Element Policy Template with all attributes.', 'permissions'),
(5, 5, 'MediaSourceTemplate', 'Media Source Policy Template with all attributes.', 'permissions'),
(6, 2, 'ContextTemplate', 'Context Policy Template with all attributes.', 'permissions'),
(7, 6, 'NamespaceTemplate', 'Namespace Policy Template with all attributes.', 'permissions');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_policy_template_groups`
--

CREATE TABLE `modx_access_policy_template_groups` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_access_policy_template_groups`
--

INSERT INTO `modx_access_policy_template_groups` (`id`, `name`, `description`) VALUES
(1, 'Admin', 'All admin policy templates.'),
(2, 'Object', 'All Object-based policy templates.'),
(3, 'Resource', 'All Resource-based policy templates.'),
(4, 'Element', 'All Element-based policy templates.'),
(5, 'MediaSource', 'All Media Source-based policy templates.'),
(6, 'Namespace', 'All Namespace based policy templates.');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_resources`
--

CREATE TABLE `modx_access_resources` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_resource_groups`
--

CREATE TABLE `modx_access_resource_groups` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_access_templatevars`
--

CREATE TABLE `modx_access_templatevars` (
  `id` int UNSIGNED NOT NULL,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int UNSIGNED NOT NULL DEFAULT '0',
  `authority` int UNSIGNED NOT NULL DEFAULT '9999',
  `policy` int UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actiondom`
--

CREATE TABLE `modx_actiondom` (
  `id` int UNSIGNED NOT NULL,
  `set` int NOT NULL DEFAULT '0',
  `action` varchar(191) NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(191) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `for_parent` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `rank` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actions`
--

CREATE TABLE `modx_actions` (
  `id` int UNSIGNED NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  `controller` varchar(191) NOT NULL,
  `haslayout` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `lang_topics` text NOT NULL,
  `assets` text NOT NULL,
  `help_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_actions_fields`
--

CREATE TABLE `modx_actions_fields` (
  `id` int UNSIGNED NOT NULL,
  `action` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(191) NOT NULL DEFAULT '',
  `form` varchar(191) NOT NULL DEFAULT '',
  `other` varchar(191) NOT NULL DEFAULT '',
  `rank` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_actions_fields`
--

INSERT INTO `modx_actions_fields` (`id`, `action`, `name`, `type`, `tab`, `form`, `other`, `rank`) VALUES
(1, 'resource/update', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(2, 'resource/update', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(3, 'resource/update', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(4, 'resource/update', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(5, 'resource/update', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(6, 'resource/update', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(7, 'resource/update', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(8, 'resource/update', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(9, 'resource/update', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(10, 'resource/update', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(11, 'resource/update', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(12, 'resource/update', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(13, 'resource/update', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(14, 'resource/update', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(15, 'resource/update', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(16, 'resource/update', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(17, 'resource/update', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(18, 'resource/update', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(19, 'resource/update', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(20, 'resource/update', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(21, 'resource/update', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(22, 'resource/update', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(23, 'resource/update', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(24, 'resource/update', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(25, 'resource/update', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(26, 'resource/update', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(27, 'resource/update', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(28, 'resource/update', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(29, 'resource/update', 'alias_visible', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(30, 'resource/update', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(31, 'resource/update', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(32, 'resource/update', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 5),
(33, 'resource/update', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(34, 'resource/update', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(35, 'resource/update', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(36, 'resource/update', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(37, 'resource/update', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(38, 'resource/update', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(39, 'resource/update', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0),
(40, 'resource/update', 'modx-symlink-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 1),
(41, 'resource/update', 'modx-weblink-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 2),
(42, 'resource/create', 'modx-resource-settings', 'tab', '', 'modx-panel-resource', '', 0),
(43, 'resource/create', 'modx-resource-main-left', 'tab', '', 'modx-panel-resource', '', 1),
(44, 'resource/create', 'id', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 0),
(45, 'resource/create', 'pagetitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 1),
(46, 'resource/create', 'longtitle', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 2),
(47, 'resource/create', 'description', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 3),
(48, 'resource/create', 'introtext', 'field', 'modx-resource-main-left', 'modx-panel-resource', '', 4),
(49, 'resource/create', 'modx-resource-main-right', 'tab', '', 'modx-panel-resource', '', 2),
(50, 'resource/create', 'template', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 0),
(51, 'resource/create', 'alias', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 1),
(52, 'resource/create', 'menutitle', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 2),
(53, 'resource/create', 'link_attributes', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 3),
(54, 'resource/create', 'hidemenu', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 4),
(55, 'resource/create', 'published', 'field', 'modx-resource-main-right', 'modx-panel-resource', '', 5),
(56, 'resource/create', 'modx-page-settings', 'tab', '', 'modx-panel-resource', '', 3),
(57, 'resource/create', 'modx-page-settings-left', 'tab', '', 'modx-panel-resource', '', 4),
(58, 'resource/create', 'parent-cmb', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 0),
(59, 'resource/create', 'class_key', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 1),
(60, 'resource/create', 'content_type', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 2),
(61, 'resource/create', 'content_dispo', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 3),
(62, 'resource/create', 'menuindex', 'field', 'modx-page-settings-left', 'modx-panel-resource', '', 4),
(63, 'resource/create', 'modx-page-settings-right', 'tab', '', 'modx-panel-resource', '', 5),
(64, 'resource/create', 'publishedon', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 0),
(65, 'resource/create', 'pub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 1),
(66, 'resource/create', 'unpub_date', 'field', 'modx-page-settings-right', 'modx-panel-resource', '', 2),
(67, 'resource/create', 'modx-page-settings-right-box-left', 'tab', '', 'modx-panel-resource', '', 6),
(68, 'resource/create', 'isfolder', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 0),
(69, 'resource/create', 'searchable', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 1),
(70, 'resource/create', 'alias_visible', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 2),
(71, 'resource/create', 'richtext', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 3),
(72, 'resource/create', 'uri_override', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 4),
(73, 'resource/create', 'uri', 'field', 'modx-page-settings-right-box-left', 'modx-panel-resource', '', 5),
(74, 'resource/create', 'modx-page-settings-right-box-right', 'tab', '', 'modx-panel-resource', '', 7),
(75, 'resource/create', 'cacheable', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 0),
(76, 'resource/create', 'syncsite', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 1),
(77, 'resource/create', 'deleted', 'field', 'modx-page-settings-right-box-right', 'modx-panel-resource', '', 2),
(78, 'resource/create', 'modx-panel-resource-tv', 'tab', '', 'modx-panel-resource', 'tv', 8),
(79, 'resource/create', 'modx-resource-access-permissions', 'tab', '', 'modx-panel-resource', '', 9),
(80, 'resource/create', 'modx-resource-content', 'field', 'modx-resource-content', 'modx-panel-resource', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_active_users`
--

CREATE TABLE `modx_active_users` (
  `internalKey` int NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int NOT NULL DEFAULT '0',
  `id` int DEFAULT NULL,
  `action` varchar(191) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_categories`
--

CREATE TABLE `modx_categories` (
  `id` int UNSIGNED NOT NULL,
  `parent` int UNSIGNED DEFAULT '0',
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_categories_closure`
--

CREATE TABLE `modx_categories_closure` (
  `ancestor` int UNSIGNED NOT NULL DEFAULT '0',
  `descendant` int UNSIGNED NOT NULL DEFAULT '0',
  `depth` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_class_map`
--

CREATE TABLE `modx_class_map` (
  `id` int UNSIGNED NOT NULL,
  `class` varchar(120) NOT NULL DEFAULT '',
  `parent_class` varchar(120) NOT NULL DEFAULT '',
  `name_field` varchar(191) NOT NULL DEFAULT 'name',
  `path` tinytext,
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:resource'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_class_map`
--

INSERT INTO `modx_class_map` (`id`, `class`, `parent_class`, `name_field`, `path`, `lexicon`) VALUES
(1, 'modDocument', 'modResource', 'pagetitle', '', 'core:resource'),
(2, 'modWebLink', 'modResource', 'pagetitle', '', 'core:resource'),
(3, 'modSymLink', 'modResource', 'pagetitle', '', 'core:resource'),
(4, 'modStaticResource', 'modResource', 'pagetitle', '', 'core:resource'),
(5, 'modTemplate', 'modElement', 'templatename', '', 'core:resource'),
(6, 'modTemplateVar', 'modElement', 'name', '', 'core:resource'),
(7, 'modChunk', 'modElement', 'name', '', 'core:resource'),
(8, 'modSnippet', 'modElement', 'name', '', 'core:resource'),
(9, 'modPlugin', 'modElement', 'name', '', 'core:resource');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_content_type`
--

CREATE TABLE `modx_content_type` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` tinytext,
  `mime_type` tinytext,
  `file_extensions` tinytext,
  `headers` mediumtext,
  `binary` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_content_type`
--

INSERT INTO `modx_content_type` (`id`, `name`, `description`, `mime_type`, `file_extensions`, `headers`, `binary`) VALUES
(1, 'HTML', 'HTML content', 'text/html', '.html', NULL, 0),
(2, 'XML', 'XML content', 'text/xml', '.xml', NULL, 0),
(3, 'text', 'plain text content', 'text/plain', '.txt', NULL, 0),
(4, 'CSS', 'CSS content', 'text/css', '.css', NULL, 0),
(5, 'javascript', 'javascript content', 'text/javascript', '.js', NULL, 0),
(6, 'RSS', 'For RSS feeds', 'application/rss+xml', '.rss', NULL, 0),
(7, 'JSON', 'JSON', 'application/json', '.json', NULL, 0),
(8, 'PDF', 'PDF Files', 'application/pdf', '.pdf', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context`
--

CREATE TABLE `modx_context` (
  `key` varchar(100) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` tinytext,
  `rank` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_context`
--

INSERT INTO `modx_context` (`key`, `name`, `description`, `rank`) VALUES
('mgr', 'Manager', 'The default manager or administration context for content management activity.', 0),
('web', 'Website', 'The default front-end context for your web site.', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context_resource`
--

CREATE TABLE `modx_context_resource` (
  `context_key` varchar(191) NOT NULL,
  `resource` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_context_setting`
--

CREATE TABLE `modx_context_setting` (
  `context_key` varchar(191) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_context_setting`
--

INSERT INTO `modx_context_setting` (`context_key`, `key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('mgr', 'allow_tags_in_post', '1', 'combo-boolean', 'core', 'system', NULL),
('mgr', 'modRequest.class', 'modManagerRequest', 'textfield', 'core', 'system', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard`
--

CREATE TABLE `modx_dashboard` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `hide_trees` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_dashboard`
--

INSERT INTO `modx_dashboard` (`id`, `name`, `description`, `hide_trees`) VALUES
(1, 'Default', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard_widget`
--

CREATE TABLE `modx_dashboard_widget` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(100) NOT NULL,
  `content` mediumtext,
  `namespace` varchar(191) NOT NULL DEFAULT '',
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(191) NOT NULL DEFAULT 'half'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_dashboard_widget`
--

INSERT INTO `modx_dashboard_widget` (`id`, `name`, `description`, `type`, `content`, `namespace`, `lexicon`, `size`) VALUES
(1, 'w_newsfeed', 'w_newsfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-news.php', 'core', 'core:dashboards', 'half'),
(2, 'w_securityfeed', 'w_securityfeed_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.modx-security.php', 'core', 'core:dashboards', 'half'),
(3, 'w_whosonline', 'w_whosonline_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-online.php', 'core', 'core:dashboards', 'half'),
(4, 'w_recentlyeditedresources', 'w_recentlyeditedresources_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php', 'core', 'core:dashboards', 'half'),
(5, 'w_configcheck', 'w_configcheck_desc', 'file', '[[++manager_path]]controllers/default/dashboard/widget.configcheck.php', 'core', 'core:dashboards', 'full');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_dashboard_widget_placement`
--

CREATE TABLE `modx_dashboard_widget_placement` (
  `dashboard` int UNSIGNED NOT NULL DEFAULT '0',
  `widget` int UNSIGNED NOT NULL DEFAULT '0',
  `rank` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_dashboard_widget_placement`
--

INSERT INTO `modx_dashboard_widget_placement` (`dashboard`, `widget`, `rank`) VALUES
(1, 5, 0),
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(1, 4, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_documentgroup_names`
--

CREATE TABLE `modx_documentgroup_names` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `private_memgroup` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `private_webgroup` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_document_groups`
--

CREATE TABLE `modx_document_groups` (
  `id` int UNSIGNED NOT NULL,
  `document_group` int NOT NULL DEFAULT '0',
  `document` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_element_property_sets`
--

CREATE TABLE `modx_element_property_sets` (
  `element` int UNSIGNED NOT NULL DEFAULT '0',
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_extension_packages`
--

CREATE TABLE `modx_extension_packages` (
  `id` int UNSIGNED NOT NULL,
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `name` varchar(100) NOT NULL DEFAULT 'core',
  `path` text,
  `table_prefix` varchar(191) NOT NULL DEFAULT '',
  `service_class` varchar(191) NOT NULL DEFAULT '',
  `service_name` varchar(191) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_profiles`
--

CREATE TABLE `modx_fc_profiles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `rank` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_profiles_usergroups`
--

CREATE TABLE `modx_fc_profiles_usergroups` (
  `usergroup` int NOT NULL DEFAULT '0',
  `profile` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_fc_sets`
--

CREATE TABLE `modx_fc_sets` (
  `id` int UNSIGNED NOT NULL,
  `profile` int NOT NULL DEFAULT '0',
  `action` varchar(191) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `template` int NOT NULL DEFAULT '0',
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_lexicon_entries`
--

CREATE TABLE `modx_lexicon_entries` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(191) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_manager_log`
--

CREATE TABLE `modx_manager_log` (
  `id` int UNSIGNED NOT NULL,
  `user` int UNSIGNED NOT NULL DEFAULT '0',
  `occurred` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(191) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_manager_log`
--

INSERT INTO `modx_manager_log` (`id`, `user`, `occurred`, `action`, `classKey`, `item`) VALUES
(1, 1, '2024-04-12 11:11:13', 'login', 'modContext', 'mgr'),
(2, 1, '2024-04-12 11:12:40', 'clear_cache', '', 'mgr'),
(3, 1, '2024-04-12 11:17:14', 'resource_create', 'msCategory', '2'),
(4, 1, '2024-04-12 11:17:20', 'resource_create', 'msProduct', '3'),
(5, 1, '2024-04-12 11:17:28', 'directory_create', '', '/var/www/html/public/assets/images/products/3/'),
(6, 1, '2024-04-12 11:17:28', 'file_create', '', '/var/www/html/public/assets/images/products/3/проверка-404-ошибки-на-каталог-visit-catalog-(failed).png'),
(7, 1, '2024-04-12 11:17:28', 'directory_create', '', '/var/www/html/public/assets/images/products/3/small/'),
(8, 1, '2024-04-12 11:17:28', 'file_create', '', '/var/www/html/public/assets/images/products/3/small/проверка-404-ошибки-на-каталог-visit-catalog-(failed).jpg'),
(9, 1, '2024-04-12 11:17:28', 'directory_create', '', '/var/www/html/public/assets/images/products/3/webp/'),
(10, 1, '2024-04-12 11:17:28', 'file_create', '', '/var/www/html/public/assets/images/products/3/webp/проверка-404-ошибки-на-каталог-visit-catalog-(failed).webp'),
(11, 1, '2024-04-12 11:18:03', 'file_remove', '', '/var/www/html/public/assets/images/products/3/small/проверка-404-ошибки-на-каталог-visit-catalog-(failed).jpg'),
(12, 1, '2024-04-12 11:18:03', 'file_remove', '', '/var/www/html/public/assets/images/products/3/webp/проверка-404-ошибки-на-каталог-visit-catalog-(failed).webp'),
(13, 1, '2024-04-12 11:18:03', 'file_create', '', '/var/www/html/public/assets/images/products/3/small/проверка-404-ошибки-на-каталог-visit-catalog-(failed).jpg'),
(14, 1, '2024-04-12 11:18:03', 'file_create', '', '/var/www/html/public/assets/images/products/3/webp/проверка-404-ошибки-на-каталог-visit-catalog-(failed).webp'),
(15, 1, '2024-04-12 11:18:30', 'publish_resource', 'msProduct', '3'),
(16, 1, '2024-04-12 11:19:31', 'delete_resource', 'msProduct', '3'),
(17, 1, '2024-04-12 11:19:34', 'file_remove', '', '/var/www/html/public/assets/images/products/3/проверка-404-ошибки-на-каталог-visit-catalog-(failed).png'),
(18, 1, '2024-04-12 11:19:34', 'file_remove', '', '/var/www/html/public/assets/images/products/3/webp/проверка-404-ошибки-на-каталог-visit-catalog-(failed).webp'),
(19, 1, '2024-04-12 11:19:34', 'file_remove', '', '/var/www/html/public/assets/images/products/3/small/проверка-404-ошибки-на-каталог-visit-catalog-(failed).jpg'),
(20, 1, '2024-04-12 11:19:34', 'empty_trash', 'modResource', '3'),
(21, 1, '2024-04-12 11:20:34', 'package_uninstall', 'transport.modTransportPackage', 'unknown'),
(22, 1, '2024-04-12 11:20:49', 'package_uninstall', 'transport.modTransportPackage', 'unknown'),
(23, 1, '2024-04-12 11:21:03', 'package_uninstall', 'transport.modTransportPackage', 'unknown'),
(24, 1, '2024-04-12 11:21:17', 'package_uninstall', 'transport.modTransportPackage', 'unknown');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources`
--

CREATE TABLE `modx_media_sources` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `class_key` varchar(100) NOT NULL DEFAULT 'sources.modFileMediaSource',
  `properties` mediumtext,
  `is_stream` tinyint UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_media_sources`
--

INSERT INTO `modx_media_sources` (`id`, `name`, `description`, `class_key`, `properties`, `is_stream`) VALUES
(1, 'Filesystem', '', 'sources.modFileMediaSource', 'a:0:{}', 1),
(2, 'MS2 Images', 'Default media source for images of miniShop2 products', 'sources.modFileMediaSource', 'a:10:{s:8:\"basePath\";a:5:{s:4:\"name\";s:8:\"basePath\";s:4:\"desc\";s:23:\"prop_file.basePath_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"lexicon\";s:11:\"core:source\";s:5:\"value\";s:23:\"assets/images/products/\";}s:7:\"baseUrl\";a:5:{s:4:\"name\";s:7:\"baseUrl\";s:4:\"desc\";s:22:\"prop_file.baseUrl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"lexicon\";s:11:\"core:source\";s:5:\"value\";s:23:\"assets/images/products/\";}s:15:\"imageExtensions\";a:5:{s:4:\"name\";s:15:\"imageExtensions\";s:4:\"desc\";s:30:\"prop_file.imageExtensions_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"lexicon\";s:11:\"core:source\";s:5:\"value\";s:21:\"jpg,jpeg,png,gif,webp\";}s:16:\"allowedFileTypes\";a:5:{s:4:\"name\";s:16:\"allowedFileTypes\";s:4:\"desc\";s:31:\"prop_file.allowedFileTypes_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"lexicon\";s:11:\"core:source\";s:5:\"value\";s:21:\"jpg,jpeg,png,gif,webp\";}s:13:\"thumbnailType\";a:6:{s:4:\"name\";s:13:\"thumbnailType\";s:4:\"desc\";s:28:\"prop_file.thumbnailType_desc\";s:4:\"type\";s:4:\"list\";s:7:\"lexicon\";s:11:\"core:source\";s:7:\"options\";a:3:{i:0;a:2:{s:4:\"text\";s:3:\"Png\";s:5:\"value\";s:3:\"png\";}i:1;a:2:{s:4:\"text\";s:3:\"Jpg\";s:5:\"value\";s:3:\"jpg\";}i:2;a:2:{s:4:\"text\";s:4:\"Webp\";s:5:\"value\";s:4:\"webp\";}}s:5:\"value\";s:3:\"jpg\";}s:10:\"thumbnails\";a:5:{s:4:\"name\";s:10:\"thumbnails\";s:4:\"desc\";s:26:\"ms2_source_thumbnails_desc\";s:4:\"type\";s:8:\"textarea\";s:7:\"lexicon\";s:17:\"minishop2:setting\";s:5:\"value\";s:122:\"{\"small\":{\"w\":120,\"h\":90,\"q\":90,\"zc\":\"1\",\"bg\":\"000000\"}, \"webp\":{\"w\":120,\"h\":90,\"q\":90,\"zc\":\"1\",\"bg\":\"000000\",\"f\":\"webp\"}}\";}s:14:\"maxUploadWidth\";a:5:{s:4:\"name\";s:14:\"maxUploadWidth\";s:4:\"desc\";s:30:\"ms2_source_maxUploadWidth_desc\";s:4:\"type\";s:11:\"numberfield\";s:7:\"lexicon\";s:17:\"minishop2:setting\";s:5:\"value\";i:1920;}s:15:\"maxUploadHeight\";a:5:{s:4:\"name\";s:15:\"maxUploadHeight\";s:4:\"desc\";s:31:\"ms2_source_maxUploadHeight_desc\";s:4:\"type\";s:11:\"numberfield\";s:7:\"lexicon\";s:17:\"minishop2:setting\";s:5:\"value\";i:1080;}s:13:\"maxUploadSize\";a:5:{s:4:\"name\";s:13:\"maxUploadSize\";s:4:\"desc\";s:29:\"ms2_source_maxUploadSize_desc\";s:4:\"type\";s:11:\"numberfield\";s:7:\"lexicon\";s:17:\"minishop2:setting\";s:5:\"value\";i:10485760;}s:13:\"imageNameType\";a:6:{s:4:\"name\";s:13:\"imageNameType\";s:4:\"desc\";s:29:\"ms2_source_imageNameType_desc\";s:4:\"type\";s:4:\"list\";s:7:\"lexicon\";s:17:\"minishop2:setting\";s:7:\"options\";a:2:{i:0;a:2:{s:4:\"text\";s:4:\"Hash\";s:5:\"value\";s:4:\"hash\";}i:1;a:2:{s:4:\"text\";s:8:\"Friendly\";s:5:\"value\";s:8:\"friendly\";}}s:5:\"value\";s:8:\"friendly\";}}', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources_contexts`
--

CREATE TABLE `modx_media_sources_contexts` (
  `source` int NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_media_sources_elements`
--

CREATE TABLE `modx_media_sources_elements` (
  `source` int UNSIGNED NOT NULL DEFAULT '0',
  `object_class` varchar(100) NOT NULL DEFAULT 'modTemplateVar',
  `object` int UNSIGNED NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_membergroup_names`
--

CREATE TABLE `modx_membergroup_names` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `parent` int UNSIGNED NOT NULL DEFAULT '0',
  `rank` int UNSIGNED NOT NULL DEFAULT '0',
  `dashboard` int UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_membergroup_names`
--

INSERT INTO `modx_membergroup_names` (`id`, `name`, `description`, `parent`, `rank`, `dashboard`) VALUES
(1, 'Administrator', NULL, 0, 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_member_groups`
--

CREATE TABLE `modx_member_groups` (
  `id` int UNSIGNED NOT NULL,
  `user_group` int UNSIGNED NOT NULL DEFAULT '0',
  `member` int UNSIGNED NOT NULL DEFAULT '0',
  `role` int UNSIGNED NOT NULL DEFAULT '1',
  `rank` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_member_groups`
--

INSERT INTO `modx_member_groups` (`id`, `user_group`, `member`, `role`, `rank`) VALUES
(1, 1, 1, 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_menus`
--

CREATE TABLE `modx_menus` (
  `text` varchar(191) NOT NULL DEFAULT '',
  `parent` varchar(191) NOT NULL DEFAULT '',
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `icon` varchar(191) NOT NULL DEFAULT '',
  `menuindex` int UNSIGNED NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_menus`
--

INSERT INTO `modx_menus` (`text`, `parent`, `action`, `description`, `icon`, `menuindex`, `params`, `handler`, `permissions`, `namespace`) VALUES
('about', 'usernav', 'help', '', '<i class=\"icon-question-circle icon icon-large\"></i>', 7, '', '', 'help', 'core'),
('acls', 'admin', 'security/permission', 'acls_desc', '', 5, '', '', 'access_permissions', 'core'),
('admin', 'usernav', '', '', '<i class=\"icon-gear icon icon-large\"></i>', 6, '', '', 'settings', 'core'),
('bespoke_manager', 'admin', 'security/forms', 'bespoke_manager_desc', '', 1, '', '', 'customize_forms', 'core'),
('components', 'topnav', '', '', '', 2, '', '', 'components', 'core'),
('content_types', 'site', 'system/contenttype', 'content_types_desc', '', 8, '', '', 'content_types', 'core'),
('contexts', 'admin', 'context', 'contexts_desc', '', 3, '', '', 'view_context', 'core'),
('dashboards', 'admin', 'system/dashboards', 'dashboards_desc', '', 2, '', '', 'dashboards', 'core'),
('edit_menu', 'admin', 'system/action', 'edit_menu_desc', '', 4, '', '', 'actions', 'core'),
('eventlog_viewer', 'reports', 'system/event', 'eventlog_viewer_desc', '', 2, '', '', 'view_eventlog', 'core'),
('file_browser', 'media', 'media/browser', 'file_browser_desc', '', 0, '', '', 'file_manager', 'core'),
('flush_access', 'manage', '', 'flush_access_desc', '', 3, '', 'MODx.msg.confirm({\n    title: _(\'flush_access\')\n    ,text: _(\'flush_access_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/access/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this},\n        \'failure\': {fn:function(response) { Ext.MessageBox.alert(\'failure\', response.responseText); },scope:this},\n    }\n});', 'access_permissions', 'core'),
('flush_sessions', 'manage', '', 'flush_sessions_desc', '', 4, '', 'MODx.msg.confirm({\n    title: _(\'flush_sessions\')\n    ,text: _(\'flush_sessions_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n    }\n});', 'flush_sessions', 'core'),
('import_resources', 'site', 'system/import', 'import_resources_desc', '', 6, '', '', 'import_static', 'core'),
('import_site', 'site', 'system/import/html', 'import_site_desc', '', 5, '', '', 'import_static', 'core'),
('installer', 'components', 'workspaces', 'installer_desc', '', 0, '', '', 'packages', 'core'),
('lexicon_management', 'admin', 'workspaces/lexicon', 'lexicon_management_desc', '', 7, '', '', 'lexicons', 'core'),
('logout', 'user', 'security/logout', 'logout_desc', '', 2, '', 'MODx.logout(); return false;', 'logout', 'core'),
('manage', 'topnav', '', '', '', 3, '', '', 'menu_tools', 'core'),
('media', 'topnav', '', 'media_desc', '', 1, '', '', 'file_manager', 'core'),
('messages', 'user', 'security/message', 'messages_desc', '', 1, '', '', 'messages', 'core'),
('namespaces', 'admin', 'workspaces/namespace', 'namespaces_desc', '', 8, '', '', 'namespaces', 'core'),
('new_resource', 'site', 'resource/create', 'new_resource_desc', '', 0, '', '', 'new_document', 'core'),
('preview', 'site', '', 'preview_desc', '', 4, '', 'MODx.preview(); return false;', '', 'core'),
('profile', 'user', 'security/profile', 'profile_desc', '', 0, '', '', 'change_profile', 'core'),
('propertysets', 'admin', 'element/propertyset', 'propertysets_desc', '', 6, '', '', 'property_sets', 'core'),
('refresh_site', 'manage', '', 'refresh_site_desc', '', 1, '', 'MODx.clearCache(); return false;', 'empty_cache', 'core'),
('refreshuris', 'refresh_site', '', 'refreshuris_desc', '', 0, '', 'MODx.refreshURIs(); return false;', 'empty_cache', 'core'),
('remove_locks', 'manage', '', 'remove_locks_desc', '', 2, '', 'MODx.removeLocks();return false;', 'remove_locks', 'core'),
('reports', 'manage', '', 'reports_desc', '', 5, '', '', 'menu_reports', 'core'),
('resource_groups', 'site', 'security/resourcegroup', 'resource_groups_desc', '', 7, '', '', 'access_permissions', 'core'),
('site', 'topnav', '', '', '', 0, '', '', 'menu_site', 'core'),
('site_schedule', 'reports', 'resource/site_schedule', 'site_schedule_desc', '', 0, '', '', 'view_document', 'core'),
('sources', 'media', 'source', 'sources_desc', '', 1, '', '', 'sources', 'core'),
('system_settings', 'admin', 'system/settings', 'system_settings_desc', '', 0, '', '', 'settings', 'core'),
('topnav', '', '', 'topnav_desc', '', 0, '', '', '', 'core'),
('user', 'usernav', '', '', '<span id=\"user-avatar\">{$userImage}</span> <span id=\"user-username\">{$username}</span>', 5, '', '', 'menu_user', 'core'),
('usernav', '', '', 'usernav_desc', '', 0, '', '', '', 'core'),
('users', 'manage', 'security/user', 'user_management_desc', '', 0, '', '', 'view_user', 'core'),
('view_logging', 'reports', 'system/logs', 'view_logging_desc', '', 1, '', '', 'logs', 'core'),
('view_sysinfo', 'reports', 'system/info', 'view_sysinfo_desc', '', 3, '', '', 'view_sysinfo', 'core');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_moddevtools_link`
--

CREATE TABLE `modx_moddevtools_link` (
  `id` int UNSIGNED NOT NULL,
  `parent` int NOT NULL DEFAULT '0',
  `child` int NOT NULL DEFAULT '0',
  `link_type` varchar(11) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_ms2_category_options`
--

CREATE TABLE `modx_ms2_category_options` (
  `option_id` int NOT NULL DEFAULT '0',
  `category_id` int NOT NULL DEFAULT '0',
  `rank` int NOT NULL DEFAULT '0',
  `active` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_ms2_customer_profiles`
--

CREATE TABLE `modx_ms2_customer_profiles` (
  `id` int UNSIGNED NOT NULL,
  `account` decimal(12,2) DEFAULT '0.00',
  `spent` decimal(12,2) DEFAULT '0.00',
  `createdon` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `referrer_id` int UNSIGNED DEFAULT '0',
  `referrer_code` varchar(50) DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_ms2_deliveries`
--

CREATE TABLE `modx_ms2_deliveries` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `price` varchar(11) DEFAULT '0',
  `weight_price` decimal(12,2) DEFAULT '0.00',
  `distance_price` decimal(12,2) DEFAULT '0.00',
  `logo` varchar(255) DEFAULT NULL,
  `rank` tinyint UNSIGNED DEFAULT '0',
  `active` tinyint(1) DEFAULT '1',
  `class` varchar(50) DEFAULT NULL,
  `properties` text,
  `requires` varchar(255) DEFAULT 'email,receiver',
  `free_delivery_amount` decimal(12,2) DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_ms2_deliveries`
--

INSERT INTO `modx_ms2_deliveries` (`id`, `name`, `description`, `price`, `weight_price`, `distance_price`, `logo`, `rank`, `active`, `class`, `properties`, `requires`, `free_delivery_amount`) VALUES
(1, 'Самовывоз', NULL, '0', 0.00, 0.00, NULL, 0, 1, NULL, NULL, 'email,receiver', 0.00);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_ms2_delivery_payments`
--

CREATE TABLE `modx_ms2_delivery_payments` (
  `delivery_id` int UNSIGNED NOT NULL,
  `payment_id` int UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_ms2_delivery_payments`
--

INSERT INTO `modx_ms2_delivery_payments` (`delivery_id`, `payment_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_ms2_links`
--

CREATE TABLE `modx_ms2_links` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_ms2_options`
--

CREATE TABLE `modx_ms2_options` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL DEFAULT '',
  `caption` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `measure_unit` tinytext,
  `category` int UNSIGNED NOT NULL,
  `type` varchar(191) NOT NULL DEFAULT '',
  `properties` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_ms2_orders`
--

CREATE TABLE `modx_ms2_orders` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `session_id` varchar(32) DEFAULT '',
  `createdon` datetime DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `num` varchar(20) DEFAULT '',
  `cost` decimal(12,2) DEFAULT '0.00',
  `cart_cost` decimal(12,2) DEFAULT '0.00',
  `delivery_cost` decimal(12,2) DEFAULT '0.00',
  `weight` decimal(13,3) DEFAULT '0.000',
  `status` int UNSIGNED DEFAULT '0',
  `delivery` int UNSIGNED DEFAULT '0',
  `payment` int UNSIGNED DEFAULT '0',
  `context` varchar(100) DEFAULT 'web',
  `order_comment` text,
  `properties` text,
  `type` tinyint UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_ms2_order_addresses`
--

CREATE TABLE `modx_ms2_order_addresses` (
  `id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED DEFAULT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `createdon` datetime DEFAULT NULL,
  `updatedon` datetime DEFAULT NULL,
  `receiver` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `index` varchar(50) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `metro` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `building` varchar(10) DEFAULT NULL,
  `entrance` varchar(10) DEFAULT NULL,
  `floor` varchar(10) DEFAULT NULL,
  `room` varchar(10) DEFAULT NULL,
  `text_address` text,
  `comment` text,
  `properties` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_ms2_order_logs`
--

CREATE TABLE `modx_ms2_order_logs` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `order_id` int UNSIGNED NOT NULL DEFAULT '0',
  `timestamp` datetime DEFAULT NULL,
  `action` varchar(100) NOT NULL DEFAULT '',
  `entry` varchar(255) NOT NULL DEFAULT '0',
  `ip` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_ms2_order_products`
--

CREATE TABLE `modx_ms2_order_products` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `order_id` int UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `count` int UNSIGNED DEFAULT '1',
  `price` decimal(12,2) DEFAULT '0.00',
  `weight` decimal(13,3) DEFAULT '0.000',
  `cost` decimal(12,2) DEFAULT '0.00',
  `options` text,
  `properties` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_ms2_order_statuses`
--

CREATE TABLE `modx_ms2_order_statuses` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text,
  `color` char(6) DEFAULT '000000',
  `email_user` tinyint(1) DEFAULT '0',
  `email_manager` tinyint(1) DEFAULT '0',
  `subject_user` varchar(255) DEFAULT '',
  `subject_manager` varchar(255) DEFAULT '',
  `body_user` int DEFAULT '0',
  `body_manager` int DEFAULT '0',
  `active` tinyint(1) DEFAULT '1',
  `final` tinyint(1) DEFAULT '0',
  `fixed` tinyint(1) DEFAULT '0',
  `rank` int UNSIGNED DEFAULT '0',
  `editable` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_ms2_order_statuses`
--

INSERT INTO `modx_ms2_order_statuses` (`id`, `name`, `description`, `color`, `email_user`, `email_manager`, `subject_user`, `subject_manager`, `body_user`, `body_manager`, `active`, `final`, `fixed`, `rank`, `editable`) VALUES
(1, 'Новый', NULL, '000000', 1, 1, '[[%ms2_email_subject_new_user]]', '[[%ms2_email_subject_new_manager]]', 17, 18, 1, 0, 1, 1, 0),
(2, 'Оплачен', NULL, '008000', 1, 1, '[[%ms2_email_subject_paid_user]]', '[[%ms2_email_subject_paid_manager]]', 19, 20, 1, 0, 1, 2, 0),
(3, 'Отправлен', NULL, '003366', 1, 0, '[[%ms2_email_subject_sent_user]]', '', 21, 0, 1, 1, 1, 3, 0),
(4, 'Отменён', NULL, '800000', 1, 0, '[[%ms2_email_subject_cancelled_user]]', '', 22, 0, 1, 1, 1, 4, 0),
(5, 'Черновик', NULL, 'C0C0C0', 0, 0, '', '', 0, 0, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_ms2_payments`
--

CREATE TABLE `modx_ms2_payments` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `price` varchar(11) DEFAULT '0',
  `logo` varchar(255) DEFAULT NULL,
  `rank` int UNSIGNED DEFAULT '0',
  `active` tinyint UNSIGNED DEFAULT '1',
  `class` varchar(50) DEFAULT NULL,
  `properties` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_ms2_payments`
--

INSERT INTO `modx_ms2_payments` (`id`, `name`, `description`, `price`, `logo`, `rank`, `active`, `class`, `properties`) VALUES
(1, 'Оплата наличными', NULL, '0', NULL, 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_ms2_products`
--

CREATE TABLE `modx_ms2_products` (
  `id` int UNSIGNED NOT NULL,
  `article` varchar(50) DEFAULT NULL,
  `price` decimal(12,2) DEFAULT '0.00',
  `old_price` decimal(12,2) DEFAULT '0.00',
  `weight` decimal(13,3) DEFAULT '0.000',
  `image` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `vendor` int UNSIGNED DEFAULT '0',
  `made_in` varchar(100) DEFAULT '',
  `new` tinyint UNSIGNED DEFAULT '0',
  `popular` tinyint UNSIGNED DEFAULT '0',
  `favorite` tinyint UNSIGNED DEFAULT '0',
  `tags` text,
  `color` text,
  `size` text,
  `source` int UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_ms2_product_categories`
--

CREATE TABLE `modx_ms2_product_categories` (
  `product_id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_ms2_product_files`
--

CREATE TABLE `modx_ms2_product_files` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `source` int UNSIGNED DEFAULT '1',
  `parent` int UNSIGNED DEFAULT '0',
  `name` varchar(255) DEFAULT '',
  `description` text,
  `path` varchar(255) DEFAULT '',
  `file` varchar(255) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `createdby` int UNSIGNED DEFAULT '0',
  `rank` tinyint UNSIGNED DEFAULT '0',
  `url` varchar(255) DEFAULT '',
  `properties` text,
  `hash` char(40) DEFAULT '',
  `active` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_ms2_product_links`
--

CREATE TABLE `modx_ms2_product_links` (
  `link` int UNSIGNED NOT NULL,
  `master` int UNSIGNED NOT NULL,
  `slave` int UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_ms2_product_options`
--

CREATE TABLE `modx_ms2_product_options` (
  `product_id` int UNSIGNED NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_ms2_vendors`
--

CREATE TABLE `modx_ms2_vendors` (
  `id` int UNSIGNED NOT NULL,
  `rank` int UNSIGNED DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `resource` int UNSIGNED DEFAULT '0',
  `country` varchar(100) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `address` text,
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `description` text,
  `properties` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_namespaces`
--

CREATE TABLE `modx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text,
  `assets_path` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_namespaces`
--

INSERT INTO `modx_namespaces` (`name`, `path`, `assets_path`) VALUES
('core', '{core_path}', '{assets_path}');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_property_set`
--

CREATE TABLE `modx_property_set` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int NOT NULL DEFAULT '0',
  `description` varchar(191) NOT NULL DEFAULT '',
  `properties` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_messages`
--

CREATE TABLE `modx_register_messages` (
  `topic` int UNSIGNED NOT NULL,
  `id` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `accesses` int UNSIGNED NOT NULL DEFAULT '0',
  `expires` int NOT NULL DEFAULT '0',
  `payload` mediumtext NOT NULL,
  `kill` tinyint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_register_messages`
--

INSERT INTO `modx_register_messages` (`topic`, `id`, `created`, `valid`, `accessed`, `accesses`, `expires`, `payload`, `kill`) VALUES
(1, 'c4ca4238a0b923820dcc509a6f75849b', '2024-04-12 11:23:20', '2024-04-12 11:23:20', NULL, 0, 1712921360, 'if (time() > 1712921360) return null;\nreturn 1;\n', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_queues`
--

CREATE TABLE `modx_register_queues` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `options` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_register_queues`
--

INSERT INTO `modx_register_queues` (`id`, `name`, `options`) VALUES
(1, 'locks', 'a:1:{s:9:\"directory\";s:5:\"locks\";}');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_register_topics`
--

CREATE TABLE `modx_register_topics` (
  `id` int UNSIGNED NOT NULL,
  `queue` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `options` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_register_topics`
--

INSERT INTO `modx_register_topics` (`id`, `queue`, `name`, `created`, `updated`, `options`) VALUES
(1, 1, '/resource/', '2024-04-12 11:16:14', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_session`
--

CREATE TABLE `modx_session` (
  `id` varchar(191) NOT NULL DEFAULT '',
  `access` int UNSIGNED NOT NULL,
  `data` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_session`
--

INSERT INTO `modx_session` (`id`, `access`, `data`) VALUES
('008b206719c1c2cf659ffcd3799c2554', 1712918484, 'modx.user.contextTokens|a:0:{}modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}'),
('220ab9757bd214a8206f3fb95ae09997', 1712921000, 'modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.mgr.user.token|s:52:\"modx66190fb25df378.18450872_1661916d1e9f4b5.22493916\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:16:{i:0;s:23:\"661917fea52712.32281376\";i:1;s:23:\"6619183312fbd6.14970366\";i:2;s:23:\"66191836ea9f54.43098057\";i:3;s:23:\"6619183bebf6c9.84660116\";i:4;s:23:\"6619183d94ead8.38262626\";i:5;s:23:\"66191841212432.28240580\";i:6;s:23:\"66191852b22c99.51531870\";i:7;s:23:\"661918818021c9.25542731\";i:8;s:23:\"6619188292b1b3.55693093\";i:9;s:23:\"66191883ded6b0.52168898\";i:10;s:23:\"6619189f389fb0.17270586\";i:11;s:23:\"661918a04a2805.40433641\";i:12;s:23:\"661918c10dcf59.29374863\";i:13;s:23:\"661918c867a108.82310056\";i:14;s:23:\"661919a772d2c7.77103983\";i:15;s:23:\"661919a8e7d375.70648247\";}modx.user.1.userGroups|a:1:{i:0;i:1;}modx.web.user.config|a:0:{}');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_content`
--

CREATE TABLE `modx_site_content` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(191) NOT NULL DEFAULT '',
  `longtitle` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `alias` varchar(191) DEFAULT '',
  `alias_visible` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `link_attributes` varchar(191) NOT NULL DEFAULT '',
  `published` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `pub_date` int NOT NULL DEFAULT '0',
  `unpub_date` int NOT NULL DEFAULT '0',
  `parent` int NOT NULL DEFAULT '0',
  `isfolder` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `introtext` text,
  `content` mediumtext,
  `richtext` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `template` int NOT NULL DEFAULT '0',
  `menuindex` int NOT NULL DEFAULT '0',
  `searchable` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `cacheable` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `createdby` int NOT NULL DEFAULT '0',
  `createdon` int NOT NULL DEFAULT '0',
  `editedby` int NOT NULL DEFAULT '0',
  `editedon` int NOT NULL DEFAULT '0',
  `deleted` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `deletedon` int NOT NULL DEFAULT '0',
  `deletedby` int NOT NULL DEFAULT '0',
  `publishedon` int NOT NULL DEFAULT '0',
  `publishedby` int NOT NULL DEFAULT '0',
  `menutitle` varchar(191) NOT NULL DEFAULT '',
  `donthit` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `privateweb` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `privatemgr` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0',
  `hidemenu` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `class_key` varchar(100) NOT NULL DEFAULT 'msProduct',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int UNSIGNED NOT NULL DEFAULT '1',
  `uri` text,
  `uri_override` tinyint(1) NOT NULL DEFAULT '0',
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_tree` tinyint(1) NOT NULL DEFAULT '1',
  `properties` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_site_content`
--

INSERT INTO `modx_site_content` (`id`, `type`, `contentType`, `pagetitle`, `longtitle`, `description`, `alias`, `alias_visible`, `link_attributes`, `published`, `pub_date`, `unpub_date`, `parent`, `isfolder`, `introtext`, `content`, `richtext`, `template`, `menuindex`, `searchable`, `cacheable`, `createdby`, `createdon`, `editedby`, `editedon`, `deleted`, `deletedon`, `deletedby`, `publishedon`, `publishedby`, `menutitle`, `donthit`, `privateweb`, `privatemgr`, `content_dispo`, `hidemenu`, `class_key`, `context_key`, `content_type`, `uri`, `uri_override`, `hide_children_in_tree`, `show_in_tree`, `properties`) VALUES
(1, 'document', 'text/html', 'Home', 'Congratulations!', '', 'index', 1, '', 1, 0, 0, 0, 0, NULL, '<p>You have successfully installed MODX Revolution&nbsp;[[++settings_version]]!</p>\n<p>Now that MODX is installed you can login to the manager to create your templates, manage content and install third party extras to add functionality to your&nbsp;website. </p>\n\n<h2>New to&nbsp;MODX?</h2>\n\n<p>Pages on a MODX site are called <a href=\"https://docs.modx.com/current/en/building-sites/resources\">Resources</a>, and are visible on the left-hand side of the manager in the Resources tab. Resources can be nested under other resources, making it easy to create a tree of resources. There are different types of resources for different use&nbsp;cases.</p>\n\n<p>Building your website is done through a combination of <b>Templates</b>, <b>Template Variables</b>, <b>Chunks</b>, <b>Snippets</b> and <b>Plugins</b>. Collectively these are known as <b>Elements</b>, and can also be found in the left-hand side of the manager, in the Elements&nbsp;tab.</p>\n\n<p><a href=\"https://docs.modx.com/current/en/building-sites/elements/templates\">Templates</a> contain the outer markup of any page. Each resource can only be assigned to a single template at a time. By adding <a href=\"https://docs.modx.com/current/en/building-sites/elements/template-variables\">Template Variables</a> to a template, you can add custom fields for any resource using that particular&nbsp;template.</p>\n\n<p>With <a href=\"https://docs.modx.com/current/en/building-sites/elements/chunks\">Chunks</a> you can share parts of the markup, such as a header, across different templates. <a href=\"https://docs.modx.com/current/en/building-sites/elements/snippets\">Snippets</a> are pieces of PHP that return dynamic content, such as summaries of other resources or the current date. With snippets, you will often use Chunks to mark up the pieces of content it returns, instead of mixing the PHP and&nbsp;HTML.</p>\n\n<p>Finally, <a href=\"https://docs.modx.com/current/en/extending-modx/plugins\">Plugins</a> enable more advanced features by hooking into the extensive events system provided by&nbsp;MODX.</p>\n\n<p>To learn more about MODX, be sure to check out the <a href=\"https://docs.modx.com/current/en/getting-started\">Getting Started</a> section in the official&nbsp;documentation.</p>\n', 1, 1, 0, 1, 1, 1, 1712918455, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 'modDocument', 'web', 1, NULL, 0, 0, 1, NULL),
(2, 'document', 'text/html', 'Rfa', '', '', 'rfa', 1, '', 1, 0, 0, 0, 1, '', '', 1, 1, 1, 1, 1, 1, 1712920634, 0, 0, 0, 0, 0, 1712920634, 1, '', 0, 0, 0, 0, 0, 'msCategory', 'web', 1, '', 0, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_htmlsnippets`
--

CREATE TABLE `modx_site_htmlsnippets` (
  `id` int UNSIGNED NOT NULL,
  `source` int UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Chunk',
  `editor_type` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_site_htmlsnippets`
--

INSERT INTO `modx_site_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 1, 0, 'tpl.AdminPanel.outer', '', 0, 0, 0, '<nav class=\"adminpanel ap-navbar ap-navbar-fixed-bottom [[+class_theme]] [[+class_status]]\" role=\"navigation\"\n     style=\"opacity:[[+inactive_opacity]];\">\n    <ul class=\"ap-nav ap-navbar-nav\">\n        <li class=\"ap-link-first\"><a href=\"[[+resource_update]]&id=[[*id]]\" class=\"ap-navbar-link\">[[%ap_edit_this]]</a>\n        </li>\n        [[+groups]]\n    </ul>\n\n    <ul class=\"ap-nav ap-navbar-nav ap-pull-right\">\n        <li>\n            <a href=\"https://modstore.pro/adminpanel\" class=\"ap-navbar-brand ap-pull-right\" target=\"_blank\">[[%adminpanel]]</a>\n        </li>\n        <li>\n            <a href=\"#\" class=\"ap-scroll-up\" style=\"display:none;\">\n                &uarr;\n            </a>\n        </li>\n    </ul>\n\n    [[+msearch2_index:notempty=`\n    <form class=\"ap-navbar-form ap-pull-right ap-msearch2\" role=\"search\" method=\"get\" action=\"[[+msearch2_index]]\"\n          target=\"_blank\">\n        <input type=\"hidden\" name=\"a\" value=\"[[+msearch2_index_id]]\">\n        <input type=\"text\" name=\"query\" class=\"ap-msearch-query\" placeholder=\"[[%ap_mse2_search]]\" autocomplete=\"off\">\n    </form>\n    `]]\n</nav>\n<div class=\"ap-close [[+class_theme]]\"><b class=\"ap-caret [[+class_status]]\"></b></div>', 0, NULL, 0, 'core/components/adminpanel/elements/chunks/chunk.outer.tpl'),
(2, 1, 0, 'tpl.AdminPanel.group', '', 0, 0, 0, '<li class=\"ap-dropdown\">\n    <a href=\"#\" class=\"ap-dropdown-toggle\" data-toggle=\"ap_dropdown\">[[%ap_[[+title]]]] <b class=\"ap-caret\"></b></a>\n    <ul class=\"dropdown-menu ap-dropdown-menu [[+title]]\">\n        [[+links]]\n    </ul>\n</li>', 0, NULL, 0, 'core/components/adminpanel/elements/chunks/chunk.group.tpl'),
(3, 1, 0, 'tpl.AdminPanel.link', '', 0, 0, 0, '<li class=\"[[+class]]\">\n    <a href=\"[[+link]]\" target=\"[[+target]]\">[[%ap_[[+title]]]]</a>\n</li>', 0, NULL, 0, 'core/components/adminpanel/elements/chunks/chunk.link.tpl'),
(4, 1, 0, 'msProduct.content', 'Чанк вывода карточки товара.', 0, 0, 0, '<h1 class=\"text-center text-md-left\">[[*pagetitle]]</h1>\n<div class=\"text-center text-md-left mb-2 mb-md-0\">\n    [[+new:isnot=``:then=`<span class=\"badge badge-secondary badge-pill col-auto\">[[%ms2_frontend_new]]</span>`]]\n    [[+popular:isnot=``:then=`<span class=\"badge badge-secondary badge-pill col-auto\">[[%ms2_frontend_popular]]</span>`]]\n    [[+favorite:isnot=``:then=`<span class=\"badge badge-secondary badge-pill col-auto\">[[%ms2_frontend_favorite]]</span>`]]\n</div>\n<div id=\"msProduct\" class=\"row align-items-center\" itemtype=\"http://schema.org/Product\" itemscope>\n    <meta itemprop=\"name\" content=\"[[*pagetitle]]\">\n    <meta itemprop=\"description\" content=\"[[*description:default=`[[*pagetitle]]`]]\">\n    <div class=\"col-12 col-md-6\">\n        [[!msGallery]]\n    </div>\n    <div class=\"col-12 col-md-6\" itemtype=\"http://schema.org/AggregateOffer\" itemprop=\"offers\" itemscope>\n        <meta itemprop=\"category\" content=\"[[#[[*parent]].pagetitle]]\">\n        <meta itemprop=\"offerCount\" content=\"1\">\n        <meta itemprop=\"price\" content=\"[[+price:replace=` ==`]]\">\n        <meta itemprop=\"lowPrice\" content=\"[[+price:replace=` ==`]]\">\n        <meta itemprop=\"priceCurrency\" content=\"RUR\">\n\n        <form class=\"form-horizontal ms2_form\" method=\"post\">\n            <input type=\"hidden\" name=\"id\" value=\"[[*id]]\"/>\n\n            <div class=\"form-group row align-items-center\">\n                <label class=\"col-6 col-md-3 text-right text-md-left col-form-label\">[[%ms2_product_article]]:</label>\n                <div class=\"col-6 col-md-9\">\n                    [[+article:default=`-`]]\n                </div>\n            </div>\n            <div class=\"form-group row align-items-center\">\n                <label class=\"col-6 col-md-3 text-right text-md-left col-form-label\">[[%ms2_product_price]]:</label>\n                <div class=\"col-6 col-md-9\">\n                    [[+price]] [[%ms2_frontend_currency]]\n                    [[+old_price:gt=`0`:then=`\n                    <span class=\"old_price ml-2\">[[+old_price]] [[%ms2_frontend_currency]]</span>\n                    `:else=``]]\n                </div>\n            </div>\n            <div class=\"form-group row align-items-center\">\n                <label class=\"col-6 col-md-3 text-right text-md-left col-form-label\" for=\"product_price\">[[%ms2_cart_count]]:</label>\n                <div class=\"col-6 col-md-9\">\n                    <div class=\"input-group\">\n                        <input type=\"number\" name=\"count\" id=\"product_price\" class=\"form-control col-md-6\" value=\"1\"/>\n                        <div class=\"input-group-append\">\n                            <span class=\"input-group-text\">[[%ms2_frontend_count_unit]]</span>\n                        </div>\n                    </div>\n                </div>\n            </div>\n            <div class=\"form-group row align-items-center\">\n                <label class=\"col-6 col-md-3 text-right text-md-left col-form-label\">[[%ms2_product_weight]]:</label>\n                <div class=\"col-6 col-md-9\">\n                    [[+weight]] [[%ms2_frontend_weight_unit]]\n                </div>\n            </div>\n\n            <div class=\"form-group row align-items-center\">\n                <label class=\"col-6 col-md-3 text-right text-md-left col-form-label\">[[%ms2_product_made_in]]:</label>\n                <div class=\"col-6 col-md-9\">\n                    [[+made_in:default=`-`]]\n                </div>\n            </div>\n\n            [[msOptions?options=`color,size`]]\n\n            [[msProductOptions]]\n\n            <div class=\"form-group row align-items-center\">\n                <div class=\"col-12 offset-md-3 col-md-9 text-center text-md-left\">\n                    <button type=\"submit\" class=\"btn btn-primary\" name=\"ms2_action\" value=\"cart/add\">\n                        [[%ms2_frontend_add_to_cart]]\n                    </button>\n                </div>\n            </div>\n        </form>\n\n    </div>\n</div>\n<div class=\"mt-3\">\n    [[*content]]\n</div>\n', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_product_content.tpl'),
(5, 1, 0, 'msProduct.content.fenom', '', 0, 0, 0, '<h1 class=\"text-center text-md-left\">{$_modx->resource.pagetitle}</h1>\n<div class=\"text-center text-md-left mb-2 mb-md-0\">\n    {if $_modx->resource.new?}\n        <span class=\"badge badge-secondary badge-pill col-auto\">{\'ms2_frontend_new\' | lexicon}</span>\n    {/if}\n    {if $_modx->resource.popular?}\n        <span class=\"badge badge-secondary badge-pill col-auto\">{\'ms2_frontend_popular\' | lexicon}</span>\n    {/if}\n    {if $_modx->resource.favorite?}\n        <span class=\"badge badge-secondary badge-pill col-auto\">{\'ms2_frontend_favorite\' | lexicon}</span>\n    {/if}\n</div>\n<div id=\"msProduct\" class=\"row align-items-center\" itemtype=\"http://schema.org/Product\" itemscope>\n    <meta itemprop=\"name\" content=\"{$_modx->resource.pagetitle}\">\n    <meta itemprop=\"description\" content=\"{$_modx->resource.description ?: $_modx->resource.pagetitle}\">\n    <div class=\"col-12 col-md-6\">\n        {\'!msGallery\' | snippet : []}\n    </div>\n    <div class=\"col-12 col-md-6\" itemtype=\"http://schema.org/AggregateOffer\" itemprop=\"offers\" itemscope>\n        <meta itemprop=\"category\" content=\"{$_modx->resource.parent | resource: \"pagetitle\"}\">\n        <meta itemprop=\"offerCount\" content=\"1\">\n        <meta itemprop=\"price\" content=\"{$price | replace:\" \":\"\"}\">\n        <meta itemprop=\"lowPrice\" content=\"{$price | replace:\" \":\"\"}\">\n        <meta itemprop=\"priceCurrency\" content=\"RUR\">\n\n        <form class=\"form-horizontal ms2_form\" method=\"post\">\n            <input type=\"hidden\" name=\"id\" value=\"{$_modx->resource.id}\"/>\n\n            <div class=\"form-group row align-items-center\">\n                <label class=\"col-6 col-md-3 text-right text-md-left col-form-label\">{\'ms2_product_article\' | lexicon}:</label>\n                <div class=\"col-6 col-md-9\">\n                    {$article ?: \'-\'}\n                </div>\n            </div>\n            <div class=\"form-group row align-items-center\">\n                <label class=\"col-6 col-md-3 text-right text-md-left col-form-label\">{\'ms2_product_price\' | lexicon}:</label>\n                <div class=\"col-6 col-md-9\">\n                    {$price} {\'ms2_frontend_currency\' | lexicon}\n                    {if $old_price != 0}\n                    <span class=\"old_price ml-2\">{$old_price} {\'ms2_frontend_currency\' | lexicon}</span>\n                    {/if}\n                </div>\n            </div>\n            <div class=\"form-group row align-items-center\">\n                <label class=\"col-6 col-md-3 text-right text-md-left col-form-label\" for=\"product_price\">{\'ms2_cart_count\' | lexicon}:</label>\n                <div class=\"col-6 col-md-9\">\n                    <div class=\"input-group\">\n                        <input type=\"number\" name=\"count\" id=\"product_price\" class=\"form-control col-md-6\" value=\"1\"/>\n                        <div class=\"input-group-append\">\n                            <span class=\"input-group-text\">{\'ms2_frontend_count_unit\' | lexicon}</span>\n                        </div>\n                    </div>\n                </div>\n            </div>\n            <div class=\"form-group row align-items-center\">\n                <label class=\"col-6 col-md-3 text-right text-md-left col-form-label\">{\'ms2_product_weight\' | lexicon}:</label>\n                <div class=\"col-6 col-md-9\">\n                    {$weight} {\'ms2_frontend_weight_unit\' | lexicon}\n                </div>\n            </div>\n\n            <div class=\"form-group row align-items-center\">\n                <label class=\"col-6 col-md-3 text-right text-md-left col-form-label\">{\'ms2_product_made_in\' | lexicon}:</label>\n                <div class=\"col-6 col-md-9\">\n                    {$made_in ?: \'-\'}\n                </div>\n            </div>\n\n            {\'msOptions\' | snippet : [\n                \'options\' => \'color,size\'\n            ]}\n\n            {\'msProductOptions\' | snippet : []}\n\n            <div class=\"form-group row align-items-center\">\n                <div class=\"col-12 offset-md-3 col-md-9 text-center text-md-left\">\n                    <button type=\"submit\" class=\"btn btn-primary\" name=\"ms2_action\" value=\"cart/add\">\n                        {\'ms2_frontend_add_to_cart\' | lexicon}\n                    </button>\n                </div>\n            </div>\n        </form>\n\n    </div>\n</div>\n<div class=\"mt-3\">\n    {$_modx->resource.content}\n</div>\n', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_product_content_fenom.tpl'),
(6, 1, 0, 'tpl.msProducts.row', 'Чанк товара miniShop2.', 0, 0, 0, '<div class=\"ms2_product mb-5 mb-md-3\" itemtype=\"http://schema.org/Product\" itemscope>\n    <meta itemprop=\"description\" content=\"{$description = $description ?: $pagetitle}\">\n    <meta itemprop=\"name\" content=\"{$pagetitle}\">\n\n    <form method=\"post\" class=\"ms2_form d-flex flex-column flex-md-row align-items-center no-gutters\">\n        <input type=\"hidden\" name=\"id\" value=\"{$id}\">\n        <input type=\"hidden\" name=\"count\" value=\"1\">\n        <input type=\"hidden\" name=\"options\" value=\"[]\">\n        <div class=\"col-md-2 text-center text-md-left\">\n            <a href=\"{$id | url}\">\n                {if $thumb?}\n                    <img src=\"{$thumb}\" class=\"mw-100\" alt=\"{$pagetitle}\" title=\"{$pagetitle}\" itemprop=\"image\"/>\n                {else}\n                    <img src=\"{\'assets_url\' | option}components/minishop2/img/web/ms2_small.png\"\n                        srcset=\"{\'assets_url\' | option}components/minishop2/img/web/ms2_small@2x.png 2x\"\n                        class=\"mw-100\" alt=\"{$pagetitle}\" title=\"{$pagetitle}\"/>\n                {/if}\n            </a>\n        </div>\n        <div class=\"col-md-10 d-flex flex-column flex-md-row align-items-center no-gutters\" itemtype=\"http://schema.org/AggregateOffer\" itemprop=\"offers\" itemscope>\n            <meta itemprop=\"category\" content=\"{$parent | resource: \"pagetitle\"}\">\n            <meta itemprop=\"name\" content=\"{$pagetitle}\">\n            <meta itemprop=\"offerCount\" content=\"1\">\n            <meta itemprop=\"price\" content=\"{$price | replace:\" \":\"\"}\">\n            <meta itemprop=\"lowPrice\" content=\"{$price | replace:\" \":\"\"}\">\n            <meta itemprop=\"priceCurrency\" content=\"RUR\">\n\n            <div class=\"col-12 col-md-8 mt-2 mt-md-0 flex-grow-1\">\n                <div class=\"d-flex justify-content-around justify-content-md-start\">\n                    <a href=\"{$id | url}\" class=\"font-weight-bold\">{$pagetitle}</a>\n                    <span class=\"price ml-md-3\">{$price} {\'ms2_frontend_currency\' | lexicon}</span>\n                    {if $old_price?}\n                        <span class=\"old_price ml-md-3\">{$old_price} {\'ms2_frontend_currency\' | lexicon}</span>\n                    {/if}\n                </div>\n                <div class=\"flags mt-2 d-flex justify-content-around justify-content-md-start\">\n                    {if $new?}\n                        <span class=\"badge badge-secondary badge-pill mr-md-1\">{\'ms2_frontend_new\' | lexicon}</span>\n                    {/if}\n                    {if $popular?}\n                        <span class=\"badge badge-secondary badge-pill mr-md-1\">{\'ms2_frontend_popular\' | lexicon}</span>\n                    {/if}\n                    {if $favorite?}\n                        <span class=\"badge badge-secondary badge-pill mr-md-1\">{\'ms2_frontend_favorite\' | lexicon}</span>\n                    {/if}\n                </div>\n                {if $introtext}\n                    <div class=\"mt-2 text-center text-md-left\">\n                        <small>{$introtext | truncate : 200}</small>\n                    </div>\n                {/if}\n            </div>\n            <div class=\"col-12 col-md-4 mt-2 mt-md-0 text-center text-md-right\">\n                <button class=\"btn btn-primary\" type=\"submit\" name=\"ms2_action\" value=\"cart/add\">\n                    {\'ms2_frontend_add_to_cart\' | lexicon}\n                </button>\n            </div>\n        </div>\n    </form>\n</div>\n', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_products_row.tpl'),
(7, 1, 0, 'tpl.msCart', 'Чанк вывода корзины miniShop2.', 0, 0, 0, '<div id=\"msCart\">\n    {if $products | length == 0}\n        <div class=\"alert alert-warning\">\n            {\'ms2_cart_is_empty\' | lexicon}\n        </div>\n    {else}\n        <div class=\"table-responsive\">\n            <table class=\"table table-striped\">\n                <tr class=\"ms-header\">\n                    <th class=\"ms-title\">{\'ms2_cart_title\' | lexicon}</th>\n                    <th class=\"ms-count\">{\'ms2_cart_count\' | lexicon}</th>\n                    <th class=\"ms-weight\">{\'ms2_cart_weight\' | lexicon}</th>\n                    <th class=\"ms-price\">{\'ms2_cart_price\' | lexicon}</th>\n                    <th class=\"ms-cost\">{\'ms2_cart_cost\' | lexicon}</th>\n                    <th class=\"ms-remove\"></th>\n                </tr>\n\n                {foreach $products as $product}\n                    {var $image}\n                        {if $product.thumb?}\n                            <img src=\"{$product.thumb}\" alt=\"{$product.pagetitle}\" title=\"{$product.pagetitle}\"/>\n                        {else}\n                            <img src=\"{\'assets_url\' | option}components/minishop2/img/web/ms2_small.png\"\n                                srcset=\"{\'assets_url\' | option}components/minishop2/img/web/ms2_small@2x.png 2x\"\n                                alt=\"{$product.pagetitle}\" title=\"{$product.pagetitle}\"/>\n                        {/if}\n                    {/var}\n                    <tr id=\"{$product.key}\">\n                        <td class=\"ms-title\">\n                            <div class=\"d-flex\">\n                                <div class=\"ms-image mw-100 pr-3\">\n                                    {if $product.id?}\n                                        <a href=\"{$product.id | url}\">{$image}</a>\n                                    {else}\n                                        {$image}\n                                    {/if}\n                                </div>\n                                <div class=\"title\">\n                                    {if $product.id?}\n                                        <a href=\"{$product.id | url}\">{$product.pagetitle}</a>\n                                    {else}\n                                        {$product.name}\n                                    {/if}\n                                    {if $product.options?}\n                                        <div class=\"small\">\n                                            {$product.options | join : \'; \'}\n                                        </div>\n                                    {/if}\n                                </div>\n                            </div>\n                        </td>\n                        <td class=\"ms-count\">\n                            <form method=\"post\" class=\"ms2_form\">\n                                <input type=\"hidden\" name=\"key\" value=\"{$product.key}\"/>\n                                <div class=\"form-group\">\n                                    <div class=\"input-group input-group-sm\">\n                                        <input type=\"number\" name=\"count\" value=\"{$product.count}\" class=\"form-control\"/>\n                                        <div class=\"input-group-append\">\n                                            <span class=\"input-group-text\">{\'ms2_frontend_count_unit\' | lexicon}</span>\n                                        </div>\n                                    </div>\n                                    <button class=\"btn btn-sm\" type=\"submit\" name=\"ms2_action\" value=\"cart/change\">&#8635;</button>\n                                </div>\n                            </form>\n                        </td>\n                        <td class=\"ms-weight\">\n                            <span class=\"text-nowrap\">{$product.weight} {\'ms2_frontend_weight_unit\' | lexicon}</span>\n                        </td>\n                        <td class=\"ms-price\">\n                            <span class=\"mr-2 text-nowrap\">{$product.price} {\'ms2_frontend_currency\' | lexicon}</span>\n                            {if $product.old_price?}\n                                <span class=\"old_price text-nowrap\">{$product.old_price} {\'ms2_frontend_currency\' | lexicon}</span>\n                            {/if}\n                        </td>\n                        <td class=\"ms-cost\">\n                            <span class=\"mr-2 text-nowrap\"><span class=\"ms2_cost\">{$product.cost}</span> {\'ms2_frontend_currency\' | lexicon}</span>\n                        </td>\n                        <td class=\"ms-remove\">\n                            <form method=\"post\" class=\"ms2_form text-md-right\">\n                                <input type=\"hidden\" name=\"key\" value=\"{$product.key}\">\n                                <button class=\"btn btn-sm btn-danger\" type=\"submit\" name=\"ms2_action\" value=\"cart/remove\">&times;</button>\n                            </form>\n                        </td>\n                    </tr>\n                {/foreach}\n\n                <tr class=\"ms-footer\">\n                    <th class=\"total\">{\'ms2_cart_total\' | lexicon}:</th>\n                    <th class=\"total_count\">\n                        <span class=\"ms2_total_count\">{$total.count}</span>\n                        {\'ms2_frontend_count_unit\' | lexicon}\n                    </th>\n                    <th class=\"total_weight text-nowrap\" colspan=\"2\">\n                        <span class=\"ms2_total_weight\">{$total.weight}</span>\n                        {\'ms2_frontend_weight_unit\' | lexicon}\n                    </th>\n                    <th class=\"total_cost text-nowrap\" colspan=\"2\">\n                        <span class=\"ms2_total_cost\">{$total.cost}</span>\n                        {\'ms2_frontend_currency\' | lexicon}\n                    </th>\n                </tr>\n            </table>\n        </div>\n\n        <form method=\"post\" class=\"ms2_form\">\n            <button type=\"submit\" name=\"ms2_action\" value=\"cart/clean\" class=\"btn btn-danger\">\n                {\'ms2_cart_clean\' | lexicon}\n            </button>\n        </form>\n    {/if}\n</div>\n', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_cart.tpl'),
(8, 1, 0, 'tpl.msCartNew', '', 0, 0, 0, '<div id=\"msCart\">\n    {if $products | length == 0}\n        <div class=\"alert alert-warning\">\n            {\'ms2_cart_is_empty\' | lexicon}\n        </div>\n    {else}\n        <div class=\"table-responsive\">\n            <table class=\"table table-striped\">\n                <tr class=\"ms-header\">\n                    <th class=\"ms-title\">{\'ms2_cart_title\' | lexicon}</th>\n                    <th class=\"ms-count\">{\'ms2_cart_count\' | lexicon}</th>\n                    <th class=\"ms-weight\">{\'ms2_cart_weight\' | lexicon}</th>\n                    <th class=\"ms-price\">{\'ms2_cart_price\' | lexicon}</th>\n                    <th class=\"ms-cost\">{\'ms2_cart_cost\' | lexicon}</th>\n                    <th class=\"ms-remove\"></th>\n                </tr>\n\n                {foreach $products as $product}\n                    {var $image}\n                    {if $product.thumb?}\n                        <img src=\"{$product.thumb}\" alt=\"{$product.pagetitle}\" title=\"{$product.pagetitle}\"/>\n                    {else}\n                        <img src=\"{\'assets_url\' | option}components/minishop2/img/web/ms2_small.png\"\n                             srcset=\"{\'assets_url\' | option}components/minishop2/img/web/ms2_small@2x.png 2x\"\n                             alt=\"{$product.pagetitle}\" title=\"{$product.pagetitle}\"/>\n                    {/if}\n                    {/var}\n                    <tr id=\"{$product.key}\">\n                        <td class=\"ms-title\">\n                            <div class=\"d-flex\">\n                                <div class=\"ms-image mw-100 pr-3\">\n                                    {if $product.id?}\n                                        <a href=\"{$product.id | url}\">{$image}</a>\n                                    {else}\n                                        {$image}\n                                    {/if}\n                                </div>\n                                <div class=\"title\">\n                                    {if $product.id?}\n                                        <a href=\"{$product.id | url}\">{$product.pagetitle}</a>\n                                    {else}\n                                        {$product.name}\n                                    {/if}\n                                    {if $product.options?}\n                                        <div class=\"small\">\n                                            {$product.options | join : \'; \'}\n                                        </div>\n                                    {/if}\n                                </div>\n                            </div>\n                        </td>\n                        <td class=\"ms-count\">\n                            <form method=\"post\" class=\"ms2_form\">\n                                <input type=\"hidden\" name=\"key\" value=\"{$product.key}\"/>\n                                <button type=\"submit\" class=\"ms-hidden\" name=\"ms2_action\" value=\"cart/change\"/>\n                                </button>\n                                <div class=\"ms-input-number-wrap\">\n                                    <button class=\"ms-input-number-btn ms-input-number-minus btn btn-sm btn-secondary\" type=\"button\">&#8722;</button>\n                                    <input class=\"ms-input-number-emulator\" value=\"{$product.count}\" name=\"count\" type=\"text\">\n                                    <button class=\"ms-input-number-btn ms-input-number-plus btn btn-sm btn-secondary\" type=\"button\">&#43;</button>\n                                </div>\n                            </form>\n                        </td>\n                        <td class=\"ms-weight\">\n                            <span class=\"text-nowrap\">{$product.weight} {\'ms2_frontend_weight_unit\' | lexicon}</span>\n                        </td>\n                        <td class=\"ms-price\">\n                            <span class=\"mr-2 text-nowrap\">{$product.price} {\'ms2_frontend_currency\' | lexicon}</span>\n                            {if $product.old_price?}\n                                <span class=\"old_price text-nowrap\">{$product.old_price} {\'ms2_frontend_currency\' | lexicon}</span>\n                            {/if}\n                        </td>\n                        <td class=\"ms-cost\">\n                            <span class=\"mr-2 text-nowrap\"><span class=\"ms2_cost\">{$product.cost}</span> {\'ms2_frontend_currency\' | lexicon}</span>\n                        </td>\n                        <td class=\"ms-remove\">\n                            <form method=\"post\" class=\"ms2_form text-md-right\">\n                                <input type=\"hidden\" name=\"key\" value=\"{$product.key}\">\n                                <button class=\"btn btn-sm btn-danger\" type=\"submit\" name=\"ms2_action\" value=\"cart/remove\">&times;</button>\n                            </form>\n                        </td>\n                    </tr>\n                {/foreach}\n\n                <tr class=\"ms-footer\">\n                    <th class=\"total\">{\'ms2_cart_total\' | lexicon}:</th>\n                    <th class=\"total_count\">\n                        <span class=\"ms2_total_count\">{$total.count}</span>\n                        {\'ms2_frontend_count_unit\' | lexicon}\n                    </th>\n                    <th class=\"total_weight text-nowrap\" colspan=\"2\">\n                        <span class=\"ms2_total_weight\">{$total.weight}</span>\n                        {\'ms2_frontend_weight_unit\' | lexicon}\n                    </th>\n                    <th class=\"total_cost text-nowrap\" colspan=\"2\">\n                        <span class=\"ms2_total_cost\">{$total.cost}</span>\n                        {\'ms2_frontend_currency\' | lexicon}\n                    </th>\n                </tr>\n            </table>\n        </div>\n        <form method=\"post\" class=\"ms2_form\">\n            <button type=\"submit\" name=\"ms2_action\" value=\"cart/clean\" class=\"btn btn-danger\">\n                {\'ms2_cart_clean\' | lexicon}\n            </button>\n        </form>\n    {/if}\n</div>\n', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_cart_new.tpl'),
(9, 1, 0, 'tpl.msMiniCart', 'Чанк вывода мини корзины miniShop2.', 0, 0, 0, '<div class=\"msMiniCart{$total_count > 0 ? \' full\' : \'\'}\">\n    <div class=\"empty\">\n        <h5>{\'ms2_minicart\' | lexicon}</h5>\n        {\'ms2_minicart_is_empty\' | lexicon}\n    </div>\n    <div class=\"not_empty\">\n        <h5>{\'ms2_minicart\' | lexicon}</h5>\n        {\'ms2_minicart_goods\' | lexicon} <strong class=\"ms2_total_count\">{$total_count}</strong> {\'ms2_frontend_count_unit\' | lexicon},\n        {\'ms2_minicart_cost\' | lexicon} <strong class=\"ms2_total_cost\">{$total_cost}</strong> {\'ms2_frontend_currency\' | lexicon}\n    </div>\n</div>\n', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_minicart.tpl'),
(10, 1, 0, 'tpl.msOrder', 'Чанк вывода формы оформления заказа miniShop2.', 0, 0, 0, '<form class=\"ms2_form\" id=\"msOrder\" method=\"post\">\n    <div class=\"row\">\n        <div class=\"col-12 col-md-6\">\n            <h4>{\'ms2_frontend_credentials\' | lexicon}:</h4>\n            {foreach [\'email\',\'receiver\',\'phone\'] as $field}\n                <div class=\"form-group row input-parent\">\n                    <label class=\"col-md-4 col-form-label\" for=\"{$field}\">\n                        {(\'ms2_frontend_\' ~ $field) | lexicon} <span class=\"required-star\">*</span>\n                    </label>\n                    <div class=\"col-md-8\">\n                        <input type=\"text\" id=\"{$field}\" placeholder=\"{(\'ms2_frontend_\' ~ $field) | lexicon}\"\n                            name=\"{$field}\" value=\"{$form[$field]}\"\n                            class=\"form-control{($field in list $errors) ? \' error\' : \'\'}\">\n                    </div>\n                </div>\n            {/foreach}\n\n            <div class=\"form-group row input-parent\">\n                <label class=\"col-md-4 col-form-label\" for=\"comment\">\n                    {\'ms2_frontend_comment\' | lexicon} <span class=\"required-star\">*</span>\n                </label>\n                <div class=\"col-md-8\">\n                    <textarea name=\"comment\" id=\"comment\" placeholder=\"{\'ms2_frontend_comment\' | lexicon}\"\n                        class=\"form-control{(\'comment\' in list $errors) ? \' error\' : \'\'}\">{$form.comment}</textarea>\n                </div>\n            </div>\n        </div>\n\n        <div class=\"col-12 col-md-6\" id=\"payments\">\n            <h4>{\'ms2_frontend_payments\' | lexicon}:</h4>\n            <div class=\"form-group row\">\n                <div class=\"col-12\">\n                    {foreach $payments as $payment index=$index}\n                        {var $checked = !($order.payment in keys $payments) && $index == 0 || $payment.id == $order.payment}\n                        <div class=\"checkbox\">\n                            <label class=\"col-form-label payment input-parent\">\n                                <input type=\"radio\" name=\"payment\" value=\"{$payment.id}\" id=\"payment_{$payment.id}\"{$checked ? \'checked\' : \'\'}>\n                                {if $payment.logo?}\n                                    <img src=\"{$payment.logo}\" alt=\"{$payment.name}\" title=\"{$payment.name}\" class=\"mw-100\"/>\n                                {else}\n                                    {$payment.name}\n                                {/if}\n                                {if $payment.description?}\n                                    <p class=\"small\">{$payment.description}</p>\n                                {/if}\n                            </label>\n                        </div>\n                    {/foreach}\n                </div>\n            </div>\n        </div>\n    </div>\n\n    <div class=\"row\">\n        <div class=\"col-12 col-md-6\" id=\"deliveries\">\n            <h4>{\'ms2_frontend_deliveries\' | lexicon}:</h4>\n            <div class=\"form-group row\">\n                <div class=\"col-12\">\n                    {foreach $deliveries as $delivery index=$index}\n                        {var $checked = !($order.delivery in keys $deliveries) && $index == 0 || $delivery.id == $order.delivery}\n                        <div class=\"checkbox\">\n                            <label class=\"col-form-label delivery input-parent\">\n                                <input type=\"radio\" name=\"delivery\" value=\"{$delivery.id}\" id=\"delivery_{$delivery.id}\"\n                                    data-payments=\"{$delivery.payments | json_encode}\"\n                                    {$checked ? \'checked\' : \'\'}>\n                                {if $delivery.logo?}\n                                    <img src=\"{$delivery.logo}\" alt=\"{$delivery.name}\" title=\"{$delivery.name}\"/>\n                                {else}\n                                    {$delivery.name}\n                                {/if}\n                                {if $delivery.description?}\n                                    <p class=\"small\">\n                                        {$delivery.description}\n                                    </p>\n                                {/if}\n                            </label>\n                        </div>\n                    {/foreach}\n                </div>\n            </div>\n        </div>\n\n        <div class=\"col-12 col-md-6\">\n            <h4>{\'ms2_frontend_address\' | lexicon}:</h4>\n            {foreach [\'index\',\'region\',\'city\', \'street\', \'building\', \'entrance\',\'floor\', \'room\'] as $field}\n                <div class=\"form-group row input-parent\">\n                    <label class=\"col-md-4 col-form-label\" for=\"{$field}\">\n                        {(\'ms2_frontend_\' ~ $field) | lexicon} <span class=\"required-star\">*</span>\n                    </label>\n                    <div class=\"col-md-8\">\n                        <input type=\"text\" id=\"{$field}\" placeholder=\"{(\'ms2_frontend_\' ~ $field) | lexicon}\"\n                            name=\"{$field}\" value=\"{$form[$field]}\"\n                            class=\"form-control{($field in list $errors) ? \' error\' : \'\'}\">\n                    </div>\n                </div>\n            {/foreach}\n\n            <div class=\"form-group row input-parent\">\n                <label class=\"col-md-4 col-form-label\" for=\"text_address\">\n                    {\'ms2_frontend_text_address\' | lexicon} <span class=\"required-star\">*</span>\n                </label>\n                <div class=\"col-md-8\">\n                    <textarea name=\"text_address\" id=\"text_address\" placeholder=\"{\'ms2_frontend_text_address\' | lexicon}\"\n                        class=\"form-control{(\'text_address\' in list $errors) ? \' error\' : \'\'}\">{$form.text_address}</textarea>\n                </div>\n            </div>\n\n        </div>\n\n    </div>\n\n    <button type=\"button\" name=\"ms2_action\" value=\"order/clean\" class=\"btn btn-danger ms2_link\">\n        {\'ms2_frontend_order_cancel\' | lexicon}\n    </button>\n\n    <hr class=\"mt-4 mb-4\"/>\n\n\n    <div class=\"d-flex flex-column flex-md-row align-items-center justify-content-center justify-content-md-end mb-5\">\n        <h4 class=\"mb-md-0\">{\'ms2_frontend_order_cost\' | lexicon}:</h4>\n        <h3 class=\"mb-md-0 ml-md-2\">\n            <span id=\"ms2_order_cart_cost\">{$order.cart_cost ?: 0}</span> {\'ms2_frontend_currency\' | lexicon} +\n            <span id=\"ms2_order_delivery_cost\">{$order.delivery_cost ?: 0}</span> {\'ms2_frontend_currency\' | lexicon} =\n            <span id=\"ms2_order_cost\">{$order.cost ?: 0}</span> {\'ms2_frontend_currency\' | lexicon}\n        </h3>\n\n        <button type=\"submit\" name=\"ms2_action\" value=\"order/submit\" class=\"btn btn-lg btn-primary ml-md-2 ms2_link\">\n            {\'ms2_frontend_order_submit\' | lexicon}\n        </button>\n    </div>\n</form>\n', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_order.tpl'),
(11, 1, 0, 'tpl.msGetOrder', 'Чанк вывода заказа miniShop2.', 0, 0, 0, '<div id=\"msCart\">\n    <div class=\"table-responsive\">\n        <table class=\"table table-striped\">\n            <tr class=\"ms-header\">\n                <th class=\"ms-title\">{\'ms2_cart_title\' | lexicon}</th>\n                <th class=\"ms-count\">{\'ms2_cart_count\' | lexicon}</th>\n                <th class=\"ms-weight\">{\'ms2_cart_weight\' | lexicon}</th>\n                <th class=\"ms-price\">{\'ms2_cart_cost\' | lexicon}</th>\n            </tr>\n            {foreach $products as $product}\n                {var $image}\n                {if $product.thumb?}\n                    <img src=\"{$product.thumb}\" alt=\"{$product.pagetitle}\" title=\"{$product.pagetitle}\"/>\n                {else}\n                    <img src=\"{\'assets_url\' | option}components/minishop2/img/web/ms2_small.png\"\n                        srcset=\"{\'assets_url\' | option}components/minishop2/img/web/ms2_small@2x.png 2x\"\n                        alt=\"{$product.pagetitle}\" title=\"{$product.pagetitle}\"/>\n                {/if}\n                {/var}\n                <tr>\n                    <td class=\"ms-title\">\n                        <div class=\"d-flex\">\n                            <div class=\"ms-image mw-100 pr-3\">\n                                {if $product.id?}\n                                    <a href=\"{$product.id | url}\">{$image}</a>\n                                {else}\n                                    {$image}\n                                {/if}\n                            </div>\n                            <div class=\"title\">\n                                {if $product.id?}\n                                    <a href=\"{$product.id | url}\">{$product.pagetitle}</a>\n                                {else}\n                                    {$product.name}\n                                {/if}\n                                {if $product.options?}\n                                    <div class=\"small\">\n                                        {$product.options | join : \'; \'}\n                                    </div>\n                                {/if}\n                            </div>\n                        </div>\n                    </td>\n                    <td class=\"ms-count text-nowrap\">{$product.count} {\'ms2_frontend_count_unit\' | lexicon}</td>\n                    <td class=\"ms-weight text-nowrap\">{$product.weight} {\'ms2_frontend_weight_unit\' | lexicon}</td>\n                    <td class=\"ms-price text-nowrap\">{$product.price} {\'ms2_frontend_currency\' | lexicon}</td>\n                </tr>\n            {/foreach}\n            <tr class=\"ms-footer\">\n                <th class=\"total\">{\'ms2_cart_total\' | lexicon}:</th>\n                <th class=\"total_count text-nowrap\">\n                    <span class=\"ms2_total_count\">{$total.cart_count}</span> {\'ms2_frontend_count_unit\' | lexicon}\n                </th>\n                <th class=\"total_weight text-nowrap\">\n                    <span class=\"ms2_total_weight\">{$total.cart_weight}</span> {\'ms2_frontend_weight_unit\' | lexicon}\n                </th>\n                <th class=\"total_cost text-nowrap\">\n                    <span class=\"ms2_total_cost\">{$total.cart_cost}</span> {\'ms2_frontend_currency\' | lexicon}\n                </th>\n            </tr>\n        </table>\n    </div>\n\n    <h4>\n        {\'ms2_frontend_order_cost\' | lexicon}:\n        {if $total.delivery_cost}\n            {$total.cart_cost} {\'ms2_frontend_currency\' | lexicon} + {$total.delivery_cost}\n            {\'ms2_frontend_currency\' | lexicon} =\n        {/if}\n        <strong>{$total.cost}</strong> {\'ms2_frontend_currency\' | lexicon}\n    </h4>\n\n    {if $payment_link?}\n        <p>{\'ms2_payment_link\' | lexicon : [\'link\' => $payment_link]}</p>\n    {/if}\n\n</div>\n', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_get_order.tpl'),
(12, 1, 0, 'tpl.msOptions', 'Чанк вывода дополнительных свойств товара miniShop2.', 0, 0, 0, '{foreach $options as $name => $values}\n    <div class=\"form-group row align-items-center\">\n        <label class=\"col-6 col-md-3 text-right text-md-left col-form-label\" for=\"option_{$name}\">{(\'ms2_product_\' ~ $name) | lexicon}:</label>\n        <div class=\"col-6 col-md-9\">\n            <select name=\"options[{$name}]\" class=\"form-control col-md-6\" id=\"option_{$name}\">\n                {foreach $values as $value}\n                    <option value=\"{$value}\">{$value}</option>\n                {/foreach}\n            </select>\n        </div>\n    </div>\n{/foreach}\n', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_options.tpl'),
(13, 1, 0, 'tpl.msProductOptions', 'Чанк вывода дополнительных опций товара miniShop2.', 0, 0, 0, '{foreach $options as $option}\n    <div class=\"form-group row align-items-center\">\n        <label class=\"col-6 col-md-3 text-right text-md-left col-form-label\">{$option.caption}:</label>\n        <div class=\"col-6 col-md-9\">\n            {if $option.value is array}\n                {$option.value | join : \', \'}\n            {else}\n                {$option.value}\n            {/if}\n        </div>\n    </div>\n{/foreach}\n', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_product_options.tpl'),
(14, 1, 0, 'tpl.msGallery', 'Чанк вывода галереи товара miniShop2.', 0, 0, 0, '<div id=\"msGallery\">\n    {if $files}\n        <div>\n            {foreach $files as $file}\n                <a href=\"{$file[\'url\']}\" target=\"_blank\">\n                    <img src=\"{$file[\'small\']}\" alt=\"{$file[\'description\']}\" title=\"{$file[\'name\']}\">\n                </a>\n            {/foreach}\n        </div>\n    {else}\n        <img src=\"{(\'assets_url\' | option) ~ \'components/minishop2/img/web/ms2_medium.png\'}\"\n            srcset=\"{(\'assets_url\' | option) ~ \'components/minishop2/img/web/ms2_medium@2x.png\'} 2x\"\n            alt=\"\" title=\"\"/>\n    {/if}\n</div>\n', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_gallery.tpl'),
(15, 1, 0, 'tpl.msGalleryNew', '', 0, 0, 0, '<link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css\"/>\n<script src=\"https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js\"></script>\n\n<style>\n    :root {\n        --swiper-theme-color: #9c9c9c;\n    }\n    .swiper {\n        width: 100%;\n        height: 100%;\n        background-color: #dedede;\n    }\n\n    .swiper-slide {\n        text-align: center;\n        font-size: 18px;\n\n        /* Center slide text vertically */\n        display: -webkit-box;\n        display: -ms-flexbox;\n        display: -webkit-flex;\n        display: flex;\n        -webkit-box-pack: center;\n        -ms-flex-pack: center;\n        -webkit-justify-content: center;\n        justify-content: center;\n        -webkit-box-align: center;\n        -ms-flex-align: center;\n        -webkit-align-items: center;\n        align-items: center;\n    }\n\n    .swiper-slide img {\n        display: block;\n        width: 100%;\n        height: 100%;\n        object-fit: cover;\n    }\n\n    .swiper {\n        width: 100%;\n        height: 300px;\n        margin-left: auto;\n        margin-right: auto;\n    }\n\n    .swiper-slide {\n        background-size: cover;\n        background-position: center;\n    }\n\n    .mySwiper2 {\n        height: 80%;\n        width: 100%;\n    }\n    .mySwiper2 .swiper-slide {\n        padding: 1px 1px 0 1px;\n    }\n\n    .mySwiper {\n        height: 20%;\n        box-sizing: border-box;\n        padding: 1px;\n    }\n\n    .mySwiper .swiper-slide {\n        width: 25%;\n        height: 100%;\n        opacity: 0.7;\n    }\n\n    .mySwiper .swiper-slide-thumb-active {\n        opacity: 1;\n    }\n\n    .swiper-slide img {\n        display: block;\n        width: 100%;\n        height: 100%;\n        object-fit: cover;\n    }\n</style>\n\n<div id=\"msGallery\">\n    {if $files?}\n        {set $slides = \'\'}\n        {foreach $files as $file}\n            {set $slides = $slides ~ \'<div class=\"swiper-slide\"><img src=\"\'~$file[\'small\']~\'\" alt=\"\'~$file[\'description\']~\'\" title=\"\'~$file[\'name\']~\'\"></div>\'}\n        {/foreach}\n        <div class=\"swiper mySwiper2\">\n            <div class=\"swiper-wrapper\">\n                {$slides}\n            </div>\n            <div class=\"swiper-button-next\"></div>\n            <div class=\"swiper-button-prev\"></div>\n        </div>\n        <div class=\"swiper mySwiper\">\n            <div class=\"swiper-wrapper\">\n               {$slides}\n            </div>\n        </div>\n    {else}\n        <img src=\"{(\'assets_url\' | option) ~ \'components/minishop2/img/web/ms2_medium.png\'}\"\n             srcset=\"{(\'assets_url\' | option) ~ \'components/minishop2/img/web/ms2_medium@2x.png\'} 2x\"\n             alt=\"\" title=\"\"/>\n    {/if}\n</div>\n\n<script>\n    var swiper = new Swiper(\".mySwiper\", {\n        loop: true,\n        spaceBetween: 1,\n        slidesPerView: 4,\n        freeMode: true,\n        watchSlidesProgress: true,\n    });\n    var swiper2 = new Swiper(\".mySwiper2\", {\n        loop: true,\n        spaceBetween: 1,\n        navigation: {\n            nextEl: \".swiper-button-next\",\n            prevEl: \".swiper-button-prev\",\n        },\n        thumbs: {\n            swiper: swiper,\n        },\n    });\n</script>\n', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_gallery_new.tpl');
INSERT INTO `modx_site_htmlsnippets` (`id`, `source`, `property_preprocess`, `name`, `description`, `editor_type`, `category`, `cache_type`, `snippet`, `locked`, `properties`, `static`, `static_file`) VALUES
(16, 1, 0, 'tpl.msEmail', 'Базовый чанк оформления писем miniShop2.', 0, 0, 0, '{var $style = [\n\'logo\' => \'display:block;margin: auto;\',\n\'a\' => \'color:#348eda;\',\n\'p\' => \'font-family: Arial;color: #666666;font-size: 12px;\',\n\'h\' => \'font-family:Arial;color: #111111;font-weight: 200;line-height: 1.2em;margin: 40px 20px;\',\n\'h1\' => \'font-size: 36px;\',\n\'h2\' => \'font-size: 28px;\',\n\'h3\' => \'font-size: 22px;\',\n\'th\' => \'font-family: Arial;text-align: left;color: #111111;\',\n\'td\' => \'font-family: Arial;text-align: left;color: #111111;\',\n]}\n\n{var $site_url = (\'site_url\' | option) | preg_replace : \'#/$#\' : \'\'}\n{var $assets_url = \'assets_url\' | option}\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\"\n        \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\">\n<head>\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"/>\n    <title>{\'site_name\' | option}</title>\n</head>\n<body style=\"margin:0;padding:0;background:#f6f6f6;\">\n<div style=\"height:100%;padding-top:20px;background:#f6f6f6;\">\n    {block \'logo\'}\n        <a href=\"{$site_url}\">\n            <img style=\"{$style.logo}\"\n                src=\"{$site_url}{$assets_url}components/minishop2/img/web/ms2_small@2x.png\"\n                alt=\"{$site_url}\"\n                width=\"120\" height=\"90\"/>\n        </a>\n    {/block}\n    <!-- body -->\n    <table class=\"body-wrap\" style=\"padding:0 20px 20px 20px;width: 100%;background:#f6f6f6;margin-top:10px;\">\n        <tr>\n            <td></td>\n            <td class=\"container\" style=\"border:1px solid #f0f0f0;background:#ffffff;width:800px;margin:auto;\">\n                <div class=\"content\">\n                    <table style=\"width:100%;\">\n                        <tr>\n                            <td>\n                                <h3 style=\"{$style.h}{$style.h3}\">\n                                    {block \'title\'}\n                                        miniShop2\n                                    {/block}\n                                </h3>\n\n                                {block \'products\'}\n                                    <table style=\"width:90%;margin:auto;\">\n                                        <thead>\n                                        <tr>\n                                            <th>&nbsp;</th>\n                                            <th style=\"{$style.th}\">{\'ms2_cart_title\' | lexicon}</th>\n                                            <th style=\"{$style.th}\">{\'ms2_cart_count\' | lexicon}</th>\n                                            <th style=\"{$style.th}\">{\'ms2_cart_weight\' | lexicon}</th>\n                                            <th style=\"{$style.th}\">{\'ms2_cart_cost\' | lexicon}</th>\n                                        </tr>\n                                        </thead>\n                                        {foreach $products as $product}\n                                            <tr>\n                                                <td style=\"{$style.th}\">\n                                                    {if $product.thumb?}\n                                                        <img src=\"{$site_url}{$product.thumb}\"\n                                                            alt=\"{$product.pagetitle}\"\n                                                            title=\"{$product.pagetitle}\"\n                                                            width=\"120\" height=\"90\"/>\n                                                    {else}\n                                                        <img src=\"{$site_url}{$assets_url}components/minishop2/img/web/ms2_small@2x.png\"\n                                                            alt=\"{$product.pagetitle}\"\n                                                            title=\"{$product.pagetitle}\"\n                                                            width=\"120\" height=\"90\"/>\n                                                    {/if}\n                                                </td>\n                                                <td style=\"{$style.th}\">\n                                                    {if $product.id?}\n                                                        <a href=\"{$product.id | url : [\'scheme\' => \'full\']}\"\n                                                            style=\"{$style.a}\">\n                                                            {$product.name}\n                                                        </a>\n                                                    {else}\n                                                        {$product.name}\n                                                    {/if}\n                                                    {if $product.options?}\n                                                        <div class=\"small\">\n                                                            {$product.options | join : \'; \'}\n                                                        </div>\n                                                    {/if}\n                                                </td>\n                                                <td style=\"{$style.th}\">{$product.count} {\'ms2_frontend_count_unit\' | lexicon}</td>\n                                                <td style=\"{$style.th}\">{$product.weight} {\'ms2_frontend_weight_unit\' | lexicon}</td>\n                                                <td style=\"{$style.th}\">{$product.price} {\'ms2_frontend_currency\' | lexicon}</td>\n                                            </tr>\n                                        {/foreach}\n                                        <tfoot>\n                                        <tr>\n                                            <th colspan=\"2\"></th>\n                                            <th style=\"{$style.th}\">\n                                                {$total.cart_count} {\'ms2_frontend_count_unit\' | lexicon}\n                                            </th>\n                                            <th style=\"{$style.th}\">\n                                                {$total.cart_weight} {\'ms2_frontend_weight_unit\' | lexicon}\n                                            </th>\n                                            <th style=\"{$style.th}\">\n                                                {$total.cart_cost} {\'ms2_frontend_currency\' | lexicon}\n                                            </th>\n                                        </tr>\n                                        </tfoot>\n                                    </table>\n                                    <h3 style=\"{$style.h}{$style.h3}\">\n                                        {\'ms2_frontend_order_cost\' | lexicon}:\n                                        {if $total.delivery_cost}\n                                            {$total.cart_cost} {\'ms2_frontend_currency\' | lexicon} + {$total.delivery_cost}\n                                            {\'ms2_frontend_currency\' | lexicon} =\n                                        {/if}\n                                        <strong>{$total.cost}</strong> {\'ms2_frontend_currency\' | lexicon}\n                                    </h3>\n                                {/block}\n                            </td>\n                        </tr>\n                    </table>\n                </div>\n                <!-- /content -->\n            </td>\n            <td></td>\n        </tr>\n        <tr>\n            <td></td>\n            <td>{block \'address\'}{/block}</td>\n            <td></td>\n        </tr>\n        <tr>\n            <td></td>\n            <td>{block \'payment\'}{/block}</td>\n            <td></td>\n        </tr>\n        <tr>\n            <td></td>\n            <td>{block \'delivery\'}{/block}</td>\n            <td></td>\n        </tr>\n        <tr>\n            <td></td>\n            <td>{block \'link\'}{/block}</td>\n            <td></td>\n        </tr>\n    </table>\n    <!-- /body -->\n    <!-- footer -->\n    <table style=\"clear:both !important;width: 100%;\">\n        <tr>\n            <td></td>\n            <td class=\"container\">\n                <!-- content -->\n                <div class=\"content\">\n                    <table style=\"width:100%;text-align: center;\">\n                        <tr>\n                            <td align=\"center\">\n                                <p style=\"{$style.p}\">\n                                    {block \'footer\'}\n                                    <a href=\"{$site_url}\" style=\"color: #999999;\">\n                                        {\'site_name\' | option}\n                                    </a>\n                                    {/block}\n                                </p>\n                            </td>\n                        </tr>\n                    </table>\n                </div>\n                <!-- /content -->\n            </td>\n            <td></td>\n        </tr>\n    </table>\n    <!-- /footer -->\n</div>\n</body>\n</html>\n', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_email.tpl'),
(17, 1, 0, 'tpl.msEmail.new.user', 'Чанк письма нового заказа пользователю.', 0, 0, 0, '{extends \'tpl.msEmail\'}\n\n{block \'title\'}\n    {\'ms2_email_subject_new_user\' | lexicon : $order}\n{/block}\n\n{block \'products\'}\n    {parent}\n    {if $payment_link?}\n        <p style=\"margin-left:20px;{$style.p}\">\n            {\'ms2_payment_link\' | lexicon : [\'link\' => $payment_link]}\n        </p>\n    {/if}\n{/block}\n', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_email_new_user.tpl'),
(18, 1, 0, 'tpl.msEmail.new.manager', 'Чанк письма нового заказа менеджеру.', 0, 0, 0, '{extends \'tpl.msEmail\'}\n\n{block \'title\'}\n    {\'ms2_email_subject_new_manager\' | lexicon : $order}\n{/block}\n\n{block \'address\'}\n    <table class=\"container\" style=\"width: 100%;background:#fff;margin-top:10px; padding-bottom: 40px;\">\n        <tr>\n            <td>  \n                <h3 style=\"{$style.h}{$style.h3} margin-bottom: 20px;\">{\'ms2_frontend_credentials\' | lexicon}</h3>\n                <table style=\"width:95%;margin:auto;\">\n                    {foreach [\'receiver\',\'phone\',\'email\'] as $field}\n                        {if $address[$field]}\n                            <tr>\n                                <td>{(\'ms2_frontend_\' ~ $field) | lexicon}: {$address[$field]} </td>\n                            </tr>\n                        {/if}\n                    {/foreach}\n                </table>\n            </td>\n        </tr>\n        <tr>\n            <td>  \n                <h3 style=\"{$style.h}{$style.h3} margin-bottom: 20px;\">{\'ms2_frontend_address\' | lexicon}</h3>\n                <table style=\"width:95%;margin:auto;\">\n                    {foreach [\'index\',\'region\',\'city\', \'street\', \'building\', \'entrance\',\'floor\', \'room\'] as $field}\n                        {if $address[$field]}\n                            <tr>\n                                <td>{(\'ms2_frontend_\' ~ $field) | lexicon}: {$address[$field]} </td>\n                            </tr>\n                        {/if}\n                    {/foreach}\n                </table>\n            </td>\n        </tr>\n\n        {if $address.comment}\n            <tr>\n                <td>\n                    <h3 style=\"{$style.h}{$style.h3} margin-bottom: 20px;\">{\'ms2_frontend_comment\' | lexicon}</h3>\n                    <table style=\"width:95%;margin:auto;\">\n                        <tr>\n                            <td>{$address.comment}</td>\n                        </tr> \n                    </table>\n                </td>\n            </tr>\n        {/if}\n    </table>\n{/block}\n\n{block \'payment\'}\n    <table class=\"container\" style=\"width: 100%;background:#fff;margin-top:10px; padding-bottom: 40px;\">\n        <tr>\n            <td>  \n                <h3 style=\"{$style.h}{$style.h3} margin-bottom: 20px;\">{\'ms2_frontend_payment\' | lexicon}</h3>\n                <table style=\"width:95%;margin:auto;\">\n                    <tr>\n                        <td>{$payment.name}</td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n{/block}\n\n{block \'delivery\'}\n    <table class=\"container\" style=\"width: 100%;background:#fff;margin-top:10px; padding-bottom: 40px;\">\n        <tr>\n            <td>  \n                <h3 style=\"{$style.h}{$style.h3} margin-bottom: 20px;\">{\'ms2_frontend_delivery\' | lexicon}</h3>\n                <table style=\"width:95%;margin:auto;\">\n                    <tr>\n                        <td>{$delivery.name}</td>\n                    </tr>\n                </table>\n            </td>\n        </tr>\n    </table>\n{/block}\n\n{block \'link\'}\n<table class=\"container\" style=\"width: 100%;background:#fff;margin-top:10px; padding: 40px 0;\">\n    <tr>\n        <td>  \n            <table style=\"width:95%;margin:auto;\">\n                <tr>\n                    <td><a href=\"{$site_url}{\'manager_url\'|option}?a=mgr/orders&namespace=minishop2&order={$order.id}\" target=\"_blank\" style=\"{$style.a}\">{\'ms2_email_link_to_order\' | lexicon}</a></td>\n                </tr>\n            </table>\n        </td>\n    </tr>\n</table>\n{/block}\n', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_email_new_manager.tpl'),
(19, 1, 0, 'tpl.msEmail.paid.user', 'Чанк письма оплаченного заказа пользователю.', 0, 0, 0, '{extends \'tpl.msEmail\'}\n\n{block \'title\'}\n    {\'ms2_email_subject_paid_user\' | lexicon : $order}\n{/block}\n', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_email_paid_user.tpl'),
(20, 1, 0, 'tpl.msEmail.paid.manager', 'Чанк письма оплаченного заказа менеджеру.', 0, 0, 0, '{extends \'tpl.msEmail\'}\n\n{block \'title\'}\n    {\'ms2_email_subject_paid_manager\' | lexicon : $order}\n{/block}\n', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_email_paid_manager.tpl'),
(21, 1, 0, 'tpl.msEmail.sent.user', 'Чанк письма отправленного заказа пользователю.', 0, 0, 0, '{extends \'tpl.msEmail\'}\n\n{block \'title\'}\n    {\'ms2_email_subject_sent_user\' | lexicon : $order}\n{/block}\n', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_email_sent_user.tpl'),
(22, 1, 0, 'tpl.msEmail.cancelled.user', 'Чанк письма отмененного заказа пользователю.', 0, 0, 0, '{extends \'tpl.msEmail\'}\n\n{block \'title\'}\n    {\'ms2_email_subject_cancelled_user\' | lexicon : $order}\n{/block}\n', 0, NULL, 0, 'core/components/minishop2/elements/chunks/chunk.ms_email_cancelled_user.tpl');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugins`
--

CREATE TABLE `modx_site_plugins` (
  `id` int UNSIGNED NOT NULL,
  `source` int UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `disabled` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_plugin_events`
--

CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int NOT NULL DEFAULT '0',
  `event` varchar(191) NOT NULL DEFAULT '',
  `priority` int NOT NULL DEFAULT '0',
  `propertyset` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_snippets`
--

CREATE TABLE `modx_site_snippets` (
  `id` int UNSIGNED NOT NULL,
  `source` int UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_templates`
--

CREATE TABLE `modx_site_templates` (
  `id` int UNSIGNED NOT NULL,
  `source` int UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Template',
  `editor_type` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  `icon` varchar(191) NOT NULL DEFAULT '',
  `template_type` int NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `locked` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_site_templates`
--

INSERT INTO `modx_site_templates` (`id`, `source`, `property_preprocess`, `templatename`, `description`, `editor_type`, `category`, `icon`, `template_type`, `content`, `locked`, `properties`, `static`, `static_file`) VALUES
(1, 0, 0, 'BaseTemplate', 'Template', 0, 0, '', 0, '<!doctype html>\n<html lang=\"en\">\n<head>\n    <title>[[*pagetitle]] - [[++site_name]]</title>\n    <base href=\"[[!++site_url]]\" />\n    <meta charset=\"[[++modx_charset]]\" />\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\" />\n\n    <style type=\"text/css\">\n        body {\n            background-color: #eee;\n            font-family: sans-serif;\n            font-size: 20px;\n            line-height: 1.4em;\n            padding: 0;\n            margin: 0;\n        }\n        body.loaded {\n            font-family: \'Open Sans\', sans-serif;\n        }\n        .container {\n            display: block;\n            max-width: 960px;\n            margin: 2em auto 2em;\n            padding: 2em;\n            background: #fff;\n            border: 1px solid #ddd;\n            border-radius: 3px;\n        }\n        .container > section {\n            height: 100%;\n            width: 60%;\n            display: inline-block;\n            float: left;\n            margin-bottom: 2em;\n        }\n        .container > aside {\n            height: 100%;\n            display: inline-block;\n            width: 30%;\n            border-left: 2px dashed #eee;\n            float: right;\n            padding-left: 1.5em;\n        }\n        .logo {\n            background: url(\'[[++manager_url]]templates/default/images/modx-logo-color.svg\') no-repeat center transparent;\n            width: 220px;\n            height: 85px;\n            background-size: contain;\n            display: block;\n            position: relative;\n            text-indent: -9999px;\n            margin: 2em auto;\n        }\n        h1, h2, h3, h4, h5 {\n            color: #494949;\n            font-family: \'Open Sans\', sans-serif;\n            font-weight: 700;\n        }\n        h1 {\n            font-size: 36px;\n            color: #137899;\n        }\n        h2 {\n            font-size: 29px;\n        }\n        h3 {\n            font-size: 24px;\n        }\n\n        a {\n            color: #0f7096;\n        }\n\n        ul {\n            padding-left: 2em;\n        }\n\n        img {\n            max-width: 100%;\n        }\n\n        .cta-button {\n            display: block;\n            text-align: center;\n            vertical-align: middle;\n            -webkit-transform: translateZ(0);\n            transform: translateZ(0);\n            box-shadow: 0 0 1px rgba(0, 0, 0, 0);\n            -webkit-backface-visibility: hidden;\n            backface-visibility: hidden;\n            -moz-osx-font-smoothing: grayscale;\n            position: relative;\n            overflow: hidden;\n            margin: .2em 0;\n            padding: 1em;\n            cursor: pointer;\n            background: #67a749;\n            text-decoration: none;\n            border-radius: 3px;\n            color: #fff;\n            -webkit-tap-highlight-color: rgba(0,0,0,0);\n        }\n        .cta-button:before {\n            content: \"\";\n            position: absolute;\n            z-index: -1;\n            left: 50%;\n            right: 50%;\n            bottom: 0;\n            background: #137899;\n            height: 5px;\n            -webkit-transition-property: left, right;\n            transition-property: left, right;\n            -webkit-transition-duration: 0.3s;\n            transition-duration: 0.3s;\n            -webkit-transition-timing-function: ease-out;\n            transition-timing-function: ease-out;\n        }\n        .cta-button:hover:before, .cta-button:focus:before, .cta-button:active:before {\n            left: 0;\n            right: 0;\n        }\n\n        .companies {\n            clear: both;\n            display: block;\n            width: 100%;\n            padding: 1em 0 0;\n            border-top: 2px dashed #eee;\n        }\n\n        .companies h3 {\n            text-align: center;\n            margin: 0;\n        }\n\n        .companies ul {\n            margin: 0;\n            padding: 0;\n            list-style: none;\n            text-align: center;\n        }\n\n        .companies ul li {\n            display: inline-block;\n            padding: 0 1em;\n        }\n\n        .companies ul li:first-child {\n            padding-left: 0;\n        }\n\n        .companies ul li:last-child {\n            padding-right: 0;\n        }\n\n        .companies ul li a {\n            display: block;\n            position: relative;\n            text-indent: -99999px;\n            width: 200px;\n            height: 75px;\n            background-repeat: no-repeat;\n            background-size: 200px;\n            background-position: center;\n        }\n\n        .companies ul li.modmore a {\n            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAfQAAABxCAMAAAAUAqFnAAADAFBMVEUgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToB8YRCjAAAA/3RSTlMAAQIDBAUGBwgJCgsMDQ4PEBESExQVFhcYGRobHB0eHyAhIiMkJSYnKCkqKywtLi8wMTIzNDU2Nzg5Ojs8PT4/QEFCQ0RFRkdISUpLTE1O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);\n        }\n\n        .companies ul li.extrasio a {\n            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAASwAAAA9CAYAAAAXgFT/AAAoo0lEQVR4AexabZAcRRm+fBxmd2dmdy+3M5sFQ8APxCiISFF+KKhBDZDszGwWyZ1A1JLSglJL/YNllbEKSn9QWohawQ/QBLRELH9oFVh+4EcplkZF4okYDZQhF3M7M7t3iblwd8n4PDvTVtfUZWe93WIP6bfqqZ6d6X777X7ffvrtvhsanCgJh3auFM9+yd3WNN1wwbom9Cxnb1Cs56U63YoSJSuAVYl3/K1EiSIsJc8ZWUZxpEQRlhKVWRGQkUzmLEMzdho5fbee03fg1fCyIS0lirCUKBHHvmKxmDdy2g/zmhG2kQOy+scTxKZEiSIsJYPPrvSsfjUyqxA4BcyQtFD+Vdf1teo+S4kirGUlirDyudwmElYeQDlPwsKx8FFmXoqwlCjCUrJcRBBRBkfCe0lYcXY1m89q708SmxIlirCUDD7TEvdYmnYTSOt2HhHV/ZUSRVhKlqusTHmvJARzc2GFQ/VVDw9dvpolwXedWV3Nm0xYQUxYvuX+zh8ZN/7fCItjuR9xIeKEEHHCuViOsSxspN07nzu+WBWDc7p6AGS1UrJhdVwOlgvoxImN9TNCOLRzPTr/xuGJIdRFm34FPvumzjSwb9ZlyWBcchCzfawnrc/F+uMzxy+DdbggIsKyrwlMp01YATKs6bPqI3wv6sjtxG9Zf9LeDvXSZAUXJ/0qxrx36OLhpcaI8AF91nv9/oscn8IXvcfzwGWFTBbPEkENE12QI206g+WzQmB7xSLrEHSdgo0LgegpK+kxQPvfX+/tm5ZTbYoMq+T8NtywY00/9afVo0+4CDk/vfZFguvkY5m802JN6Om3CEJOI1BB+Knx/PwUjns4PdNLJbr+E1cywEhagVV9ZcNyrg1K7i1YZHf4pn0PsoR7cbTZDdyFTOEzvmV/COXVR0z7RWwnt1/qDjVVqpcbo1vPa1lbzjli1c5tdUT9nKlS7SV+pfrCXhZ5Y9Rd1xh1Xso+qbcTWMdbW3sZbNQXzXo6ZFjziQyLJNJ9hpXIkgCUKZnY4tkMbffW1s+cjudO1OkUXMI2+V0LfsfcXeWV7Ju9knObZ7pf8k3n64wTYI9vOV/zLPvzvunuDCz7Rs+qbvJH6KsEKbD/PsUx9SXGWmmOOpchht8NWz6B4/nngK/SPtpJe2l3UHJuBW4KStUr0+N58BmWhP6KyN4kKWaK642c8Q5DM27Wc/qndU2/y8jpe/gXS5T3oLyD/8CKOmOFbOEiNMkkdA73NasSz0fMrRaC7H0IsAc8094Ph56Ys+phWN4ehuvGgXfFGMO7a8NjVi0EkU3D6Y+h7jcaljvWLNgFWXe35EHw2bNql0Lfo9D3d5T7EGh/8QBfgvjN78Df+Nyw7O0iaLvdhVk2y+6b0dfvoecfHEesd4J9EIn+/gQcAr5zuFwvSYviNYFp38f3XASo+y0BzgvwS3wLZ0zOl+Njbh/wUE+q88243IP33/VYWtVLxXhke4NKfX1guXdicf2UC88vV18uvp+OBPyRzUYD40TfHyOJwGcP4fkRlAdoM/8I0GnuZN0kW2SL13kRKT2G9i2OKyy/ExhLxMk4Y4dEzXETHja7P9BuYNtkZUtWJoVesyqZkKkf/e1CLP8G5b8AZri0ZxEbo3g+injmeOhnbszw03Wt9WNFObsc9P9iaZq2EQRxH/CQkTXuxO9SHy/e5fFl9Kxug5x2gZT2Ak0j/neKgpaX0X5H4Ps8cAD4Pojto7qunydnbD3ZKLICcZQiUfG4AmedZPCJYDtmbaMTp4GngCe8NpG4hxGscwiAmLzGRFA+g/e/QJ3rRT/d3rPQBmEXbLmb/Z+EzjmA5cJpQEJl/wiw/cyAqCPtOCC+t/JXFWHzz9kX9SR1y3gG3xnUtAcZxQ7Z5gBETR1h5XrOBxeCDLbj3Jzi3GJRSAsmAS6cyg3tsllybpBt5X1TlIFuvQhzPBVWdrTnG1nDW0W2lhz75Dr37AZICvV+7KHNtOnGxLKdYF/U8fRMZctoctEvRiQeiAr1fw3M09+0k+M9BZ3x+DzgScYJ/YE4eRo49m9rW9xnVPeEVWf9ORDmj4KSvVkmnV7JKsCpABvMwxjvcfpKkCh90DJdEcsHuSHHdh7gfOJ5QcRzHHvCxl/h+7jc14D/efQKEkdBz5MgGvk1+XNFZtSLfjmrAtE40P2gkdWPSgQlSOkEMIlv+1E+ATyVIDNRD8B3zbh1bSZzZoK4/jeR/3LD9Jc7vjiyIKDFTrMP776AY997Pct5y1TJfpW3zjnfL9c2cvdvWu7WeMf+NgOTC5rByCBh8DJjaJbtDYKEur2YZck7HgTezxjoDDzgBBdnEkFUHkdfc7Sd2U1SV1Lul97zGEC7GazsJ9a3CNxZ2nA8Iu9Pifa8gI+zwk2Yh8cZ/MzOImKPEGdmh4CwGS2YWS4W1pfrRc/2RBBtDH/2zdrbxQKRCQnz8goPbWMSPIgjzBv5fv+LN79AzPGTGy5f41vuh+lD9sm6IosgaTErhl3/xPcmyewgsqbknMm/mWUwK+IY6N95IJ63SWbjIPBboLOG8b8+MGsXiDhh5olj49t4HMTYvsjMmaRBwmJWRoLgvLL9UgmBNkqbz5cD+DKOY2HjIRDt92DfJ7mxMKPGMfbVzExpJ04VF/hm9XWwz0bdj6DczU15Fr6mjvk4nqF3F08PwsYBZliXgQimY1J4vLCmcHaPhLUyxlA2m60go/pKPqcfp/42YuJBeTePhMjqrgQuYaYHnF/I5S6MbDLG0fY2ZFY/AdheIi7jjwVNc1NIK52s4IjXAhN0ChcjncQg592UOMenCReKV3Yv4Z0WAxjByKOicPQ+klu3pMU6YkcHmbwB7Y/GJLEAhIshiMr5o1gAfGamKAJZvpNJpvU+FhLazcRjnmPb0/fhzjF4mY0xaBOZDO/dNN678W5rBndh4pkl74qw438Q+sUC2tcatS8mmXPBsM5/gbZRu7YOXcyJnGHxbpHHYBKQh6POVMl9k/ADSxIFfPGDlsimImI7CTwCfBZE9R6UV0zDZ/RN03QuFGNhX0kimET2hfoPklxIMvQHxtLA/N3O9iC7TLexd5hjNu0PcA5mIz3/ae9cYOSqzjsuwKDau6wJsAZME5UqqqJIlYJE0zZ9iL6rNsB6jYWCAq2apmmC0qYQSNskFPJIk1SEUKklbVOFkjZBRFACgRZCCuUBQoRHqNIQqWhxINjeHc/ugr1r76x3+/0833/96XTv3Hs9987OuB7paPYxc+65557zP9/j+/5fi0OJNYN9KV67DFjxTMzWeidjpD/6dknvWtbmztN+fajoGFl/zCG2WxvfC9wv6xmJq2nAJ3BnHa0FYNnGP1eAgJQTAasbsNq4YeM5Bi5PxsRqu853rF0OMBVV58hrJKAVtZVIfPpakcw2DH+kFGhdYxeltTfshW/jhF7wheib/wssqhTgsEXJpS/XdDhlgoFz6zkGNHchoXGyA1qc5Hba/0wEy6KePrMLXeULO4LWUgCT+PsCal2ThYpdJwGVKKWgAmFXclVmv/ppZPRrY+A+mtxHVHOLGvlRe4jDYtFjUynrhVwdsN7B2HZgUD40/2PnNux/zPui7EYGXiYdXYRjoei1kEJ1n3Z43XLgtIPzBBjw/hiHyaoG77BOtFZYJ6Fvt6mN/yi2Pe+vBSA0DVSRcsIaKLxOkKyYWwNp1jJAfgfztJp0/e3VxpjhHQe44nq2eWAd/EO857UALJNY9lYAWDLeAzK/YIAyESSq/QY419N3h9CF2I5f5frHbhwevhDQA/xoriZeFw38hWxWnOaoJWxwVATEcqQq/hc3CA+x04Yk2I6ThoceJS5bQNe5veAgaKH+zI6e/8aixtVoaG7YgvHNZ4A1dhBEArDEnw/Q+CxqSjwx08VlKtVfcu/he7Gf2BYBSwALKWnVharYsRTQbR4EMthVXOXmOk8BmFLd0pgzvpOGIGRJWAAW6jp/593mZzubym1EE0iby0hAyTqQ21+AkgUErAmXqAArxn4vjpl4AAAA+k7e2uMeYoAmzgPvfz+HR8McCXIAML5O/QlUpzBNuG2QhjMgSn1lYr80NzyTKD1j9uD+AUPmoiH7ImMYVAkL4KG/DRvOHhk+8YVgd5qy/rm/+CoWW8UY9Fl/mY3tLOvzTvpWM9Xy4xHYOoIACxgvUctPJNtM+01y+P24MXi4hxtIuAIKZh+addBiEyFOA2aFbAABXJGWsEO4mN+S5JMhZbW4Jq0xOv7+KNVxTUk79rm9bBRsX6nU1vDmf2uhVllYwi0aDwBdVjqawb4TIt3x2hWVzjpIWGyeBrZFNhUeOza9z9PD0/b3FFC5h6IS7rQZ7AE9NirN+n9mr0tpy13EUAFYEx6HxnpAlUNV9gNugTAZrZGC0tXtADT3zdy+euaWU9R3N4ACIHKg8PMeA2m7zhOsGQ46DPEv+3UA7AEErOPdHrbJ+ngkgNWkqXPnRaA6XM9elLpOPfXUE00qvDWCFuSDAbCO6WRo/lMeLpuaRcLvicrU1YuNFUV1FjvidPskHX9f0SDP+H8Dn9/ldGO8Ug0bGaDFac0GwBEwPbr17IN9nXbJkMI2sOVIFczrB1BvmLeLWK8ErErnEja7zCXMkLBeRk3FViMDMZ43VK4Yi8V72THbeK/a6/Ybm6P5SYtP0hxUETclMMBQb+OfYn3M89xGxz+et0a0nmdHt73Rvr9dgEeslb5XwRg1f7J5bt3ta4twH2LrNB+DBFjxc8RPCawwtBNHVWnsFGAE6DFue2GQl3poP7+E4X4Ve5Ybu10nJyaFxUHDk5e6+nlVBFry3Dwugz72FU7uop6WeEIS6sCGl+qXoxouHgAc7PTG4xgA9LPex1JOHy236zFH26LTYK2SnyNgMY+43jFeN+zAwatIWAQnP4Gtep7a2KXGLC+tORiQXGioRPpMlUGewVZ5M0DAMyMmTWuD906mDUAULzHfQx0mkLXKMcZDHKnYrnUf12Ito87GORkUwBIQ4e0zoNoDeKRqGp+peOyS6N5sILldIRD2M/gTwC1ZGEwyC2POvShIDilYVf2gEfFRwTipedAm0X2ojNFSNqjGKW8/E48m4y+iGnLick1JkIwDqckNvauqggK8pgMeXrXU3d4PgEVQrcIa6M/DUHbLKVA2tzIFZCRT1E2XJgj5GOfvVScy69naNf6QeXdHwj1KDuc+Otmvpi3ej2foHtzHYgBsHawbeDJZU+6EuF/XQy0cEMDSGl5PcGcIXXgQCUhqYJ0sExYR/wcu0bnncOS3w9h8wt0WZAtvxz43tNsiuVLidfeLMNfO8BXp/002GFHiAoESUfBTbfBbRPopoBruA3TY3EQsoyr5Jt+fglXoRwZgVMpHiWaPG6cfAGtnWyWcaHkME8/SQfjybrxXeI9X5tkCJZkLAIsYMUIz6pAkNK8elf6aq7n3EfdVBLA8RGMZwCJuD1te1YAV1imBs1sYp6+j50ht0uE8QICFpDOukIP2+/DW+P+aXur7R0z1vH+Fk374xH9d1XZFcB4SjmKBdp62ZVO9no64ILf8JjFPCtIkGTiCURn1gXivVrZaF1sEpHmXnJblaUzBKoQw8D6jcAF5SvsRsIgit80KyD5CvJQ+V8EBc/U+V9Hs2X2D+68TsCbNHsS9CLAwJej/nVXC8YvkGCGd5rVa1nTIMmjHBs4sn3Epc76bOEb9fwAAa536Ig8wxEfdCYhEVbCWVzCuG0Bug5fer9+0sIqfDxudRX7JEDYJFiAi7dSmsWsiYNRNYrfcDnX4FoDFRiMBNaoFZU45NjteMDZ/qhpmgZbc0YBWNlgphGGbpM8ELKsBrGZFgOXgv4B0ZeEHH+j2ecaxEGuk9B0cJ/Ez9UguY+/kUOF6ZQCLKH8AxA+w2TROrup8WwJ68Wri7GCcqM4yvPc9YMn4PTT0FsVc2fsi3roe8sGvkwHeQike9zFggP/0iguZdx4k6RhsGPKmSE1IH2zdoGWpPB9RLhuAUzbNIaoCpFKwQBV4KODpAFqoj51iuPgf0ez87XYANt0wfSZhvYiK7ff/QzZOdyd9wl5x+ti5hIXAwjB7+thb089UbcPCeywbFqp7BKxOc0u4AalP8wprGB27PtpQ62A1wfhOAjjPMK7dPgcsvnusSzfvldGboE7ipGqxXeV4KIl6l5Rn4PXo6Ojo8MqnWHwsbj+J7mXie+HdiIBEvh2noQPWK7ssJaSsBBM/awv7in15wZ/5TdLZfp+bCXL14mbpR8BqenyUB7/eSxpPncZfgKqWdeH9kubD/Xi4ybfyASuwuRrVkXITsS/hXInXqMpG24nGp98BK/7PjN3/KKAgb7CXJe8jcBJdr+RqglVH1o+YdOwvKEVYDCwKuIl6OdkCGWKD8PK5IXyxkdixygIgi5kUDO4rqoaN8mDVksoIy4TGhHTaj4DVdJVQIQdN45tKbZb99JL3kRbptaVGEYwK5cy8AzBMC0UAS+uqYRIgByFrG88w+ZVK8Uk/3y1l83IOF1kfA9YJntx8hkkzjzlILFFxp4dglRr+N5G7qLHgPTzEDWRGWTfOtgiAk8jMohExW9WNfmP0O+kSuII90ZqFednh2kboP0TBvyS6knzAyo7ZgsQtBcV+BSyScq0vZ14YvyICf/Ugky1ZRB73SD5YFBxISsZe5mEZCxw+RQBL14/hBqiFCoaGXcP6/TxhO1nPRuPttj7BIAEWLAvmofuBg8ROWBb0/14DFi8bwz/JjkXuoi+K886C9sRVsR3kEa7VrDcs4RVwcYP5tVEKO1wwIBYHCWlWUfAFAYvWdLsVPGAwU1Zm+6g/cFRxWAtNM1hHEK/bHqkDqewhEyl5YIpl3Db+h2SLI0SDZwExYQSswjFSRoWElCZJi34xjjftIIJFFA9ikXtbDoyvRwpgCSQg5CNYNNivfjwFrLWyY5mEddvBP0Kvgcjsp9d/k7WvBa7Ym1pbOGXhRGIhsTBNTb2hG7bJIAVBQfxF+nSJaamgdNXyRf0qYRexz34HLMjx3KM20zSK4rqCf1N65CLPBKmJfL7m5vPeQGYFoQB271uwo2IUJ4+14bmh3IPbnqYJLgaEUxtWGbsmQcI4l/CgKlCZnzmYCOWB5hsDP2wTHFB8t1NcWgSvwQWsYHDfMPyeQ1HmI98MwaLHr0WpMjyUjMfv5WH+Jt6nlnuUGiSLkv5ggHErKRe9ag0ohA0wGYsbi/++KqZJAhuhbXHVcDEPtBSTBYdWjLwHQAYBsAK9zK5p8+jV5RWT6pT+ncBfOL08v+5yjObQxUBlA20P4GA//8DZPbG1rZAI0vhZhwWSNnZV64M4rBwvYT5ozUKxzZqza3MNrq1wGhpAhnEeeyrEfuQuNo1eG34wvI4RnOI8iCZnQAFLBvcPCSBM2vpaAKp1a3EvNobzFY8FY8TB/3K6WeOUQVQOlLG897BxTTf88zN5jNVS445/ipQJAVaOLWvRVchARayTdKAAawcEfnUAVgpUEA7C5e7Mo88CMEgwgI/WFI1nzdj4u/LuuHckKLzD1p6xdhvSENK/IutxxPC9Ri5g5c+3Ql/sugDpUwAUkhzgJSpsNA4avzM+A7kmwaeAHWOjYAbB1TkA3v+AFSQayxe8luhytxvdVL+HMDfE4pdtHAtuw9qrzXIRQOUbdM652V9o0/nSxsI7Lf49/i3vM6GfjL7xbvnPs3b9z3QTnBnjsogzwzvkp+diR7BKCP+YC0BAG2SwAGt8x3QErBrACgZVG/OnuSYSi6SkQKU9D3DaAQTl8yMknGOrbKt/4x/FuWLP5yL4unCSqGJQfEGhjOSdG4dVok6BXsT7wXtv1/8wPGku/TVFSCjp64CDmEAWhgqAmftAio2HI+rxgALWJ0L+4BfXGLDwFP6ic8QDoAdWAIvN4mycz8K5TYgBhHoUbehlg3aZRsQweXrxJg5XusILimfJbVitEjYseLqV1nGbAIFNMhiAdXEtgMWGj0ACxzybGInJo+tfRf02YPk7Cyx9P/xirClsQlTBKTM/4keDj60KwIp9Z0nMUAxBaePX/Jy93+2mihmekexetAV/xyEAnxuVh+I8DSBgfUwSFhztawxY3MsvwW7qgDWvNIttqIMq4qmJHuRXvAdsIGluYYmwhkVxdVFQI8Yz/X8ELO5b44I1Vtz8nl+5w+btxhkCgGFTyHuFsvBpqIOcPRw6+YBVTWl63rM+gw0UKQqGVWxxXs5tzmmYVDBDifPX6lkgaQ0SYBlI/Vkwut/Cd9bShgVTA5KV+LH8lNx6HhuZhcdJAk1LWiZ9bVq6gMrToLB5YGVANclP0ckm6sO2QTKrKtCwkQYasLqnUfmUPG2YE2wj3429KatwqdZRjN1KW3Y8XX2Ala4bgJJx5nn/kMKoCkUUPTUJ5twONxt43SN7bl8DVgSI4eH3BS6qf4cJdC29hAaa79R47L1d6wDWAQyefkK8pDisnkbqhk0RF3U3hnY8VWx+v6+FRBUsDVqohtbfg9hYtFn6FbDg41fVnCoAK0b2s1EpCLHXWWnJkoh9My/dr536Aau0BJZR3Rm7W9PCcTgY3Q7s0tbYxwaIwG9dYEkQrcy3qei8lnFYdh9XJawR7Tp2sIz6xn5tymlTBBqDqgoSyXwgMJAGLvbSTfFbSKEYmOOG6mcJqyrAivUMKWUWSB7v47pp3UO91hKwBDJVhxvIcB/zMoMnc2rmEP/YDHtJ4xyASHfy936OIqh8FxWM/L21jHSn5L0i3U09bGea4JqFbMyZGiDqf1ftgFVD4mgcL6EaAE2Mbs8Gq7HI1tDRa0iVa96RMqIUeiQDlqSMwFuGipwcbgKFeg4ggkp5fhj28wGrd0nI9Mm8x6rSpP0AWgvt/XRjtP/1O2AhUSFZOUgsUB0nBZFeUswQLBqKrf7xysYhSXhR7trIRd0DwOL6wZt3Gbzq00YQR55XmRw4ncZEUFsfzy9EquQO/O4AhXNcZbM6BNYGl9qeo8y7Ns2RDFhxDJQ/mzvE6nEP/6trM8Zn3rTrYi9zep/MSHe+IwDF1EEhCOib8XrXClwBtHA8zB+ao+9Qo0Dz3+8qIe/wqIvt037+fGJb6sUrFm5tOGBN4zFc+QSRxIr4pSgEVLI9p5chqx5WyTMuYQwLDYtI1ilbzis4/iVAJYvjSn9TgU5ivsz9/iQno7MyZEpkCnUgHod0n3gP3QJWcwAAy/r7OpIDa8UA9qPxM3VJVxxEhJUoHqpTLmEskoG9ke/wTKm/WOdY4/wT00Ucl5MJNGbsd421z/mwZDf6oAzdkOgNDQ2dviZ8WMMjfxQ8lk+bunrqymmDqI9hWXE0ELT1hMAvSkZGBgcg+IN+aLsWJf8vXO5rjHJfipxezGNh8BP7JmKEkBiKcLrH2oaUjYrjOJIlrGU7xDjMVK+S5OQ6QUDjJSYP3njFPxFTtz0HsHjxPFWKH8kwBcK6xos0R3iQ14XcT70AXbePASu1Y+1wT+Fe+N175ikMvO54KRP7lU+il2Ynahc1CoMhBuseqIXp6X3HvJ+iBOylgJbLe3TK1jfh5ZwvUDWHheQq44siCuQkJMnW1cOOoKXvkw8HYV4VVXOsz74GLBKWUXFUSg07Xp002ppPUqM0/1w7pZfJViPH/5pwFg+IvoP+6oyNEn8XjKNNHX6sGWptRhtr3wJWAIvhE78evHM3x8/0JCVnaOhX5a2k7P5K5Zy0PLsq5JIiQ+R5r4pQEFmMhwWwQuUiNqzIZojMqCRtLxZQBcnMlxQ2ZeWjdB3xJrmUmakaNhLKZIBWlMl4jrpVCalO3I+ARTgH1Z1Vt5EKMTF+qQ6w4t2u9bWl9jzvzaOXielYAMW0G7+hkXk1hOvUCViYUyjMAWA1WUfwug0GYOkzJB3/XigCsZs+a1cLAxgStBpShB6wP7G/0lpzY29B557zar7k8tV5gnLdWASV6/pmeJzNUaYcORHIXi49VxWkcZ1Y/BPyQBWwwAvlaun+TMAKgOYesw9GEC17/xiH2VwO2E+xIfsNsKCFobQZY0RyAezrUgk1VtJ67B7mHHTm8gArzv+UsUVQn2De17M97z+pa7xhLKoe/nBbJRxfaJiEOAgqYVT7sBfZdx+lj8DccFyNquGxtMDQsKACrkkRjCQ3zEjO2hHMXnhz04Vvq62Qqm8wagmS2Q/g0HBhx4WVpwpCY8JYAbxmVAWzVTneJwj4i/emdza4AUhzX75qSFvguhju4VAqY/eLFMt4suiv1QbS72FT61Oj++2sD1env1AHAHAfOkQ4PHgOnhg/Awh08hLGsfAM7Dv/pgIUJDXn17vsetzil3vJVcIGrA4a6wCVqhcX1ZIXNF2GKytcq2rwVeXnUbNdPaV8RkrXB6nO11gQkzFwMtnKkSK7Hqmj6tpqBBmqWjNqhgommKT0ZJFFJbDCGyRa5RKqICffe1JwSSv4OmCp346gteSVfrSRUA/KFICdtqRZJAiXsCYnR88/OzyXY/oFsAyUP8mzYm4ohw+wVik9xE1NiX2oaFCR7X7+ytoU9DSAGBJ4kUKqOAZUxs0l8M/y96pBK8bjUd+T67EmKNmGEb7U/Af66bUBrBjiMHKrq4W0HdQHDJ+p5JCKaiaUNgJIClCEUIbjMhclUcWI/CFi9yv8X5uiG/WQfugj6vpcgwfsIDAeN3Oxgp7ZNqdUFWxJFUyAL90wGE6J4mbRRS74PDWzgRpdIgqee4kHxYKDJBWLY0n5fgscRQJnjTD/EQAqjGW6lIMCKQUvGyozzwEJC6N7XsVtjRebIvxZ4rRCRYOzKz7vKkwbsmHCoAod0bwKgBjQlpFCI1DFA7XHgBUlnjdbH/8TQOu7Fubwk6G/dV1KhSeExOvPjEia433D8NXxsx1jmewh/y0bkIdsi5OJ/zJubVHDshDKRqHHxQENsy28u2R3AkiK8F/F05PseQyxrr62Gp1BRdxWE3gTOy1W/Z1EZ2x6LLwioQ6wkwJcU8F7lrdIuU9tVjbW/kPqy/18X9Ko8tjSXMte5RJyvaCmPcqceBbBzO5NW38jzF2pdSFGhgh2Uyb9ElqDNEX8lSiQmHsHsKdfseBgjSeLKkZzSzyfAW1zzrncUd9Jo4lj1vfLgni83z2j206HvtmA3A39Y9vL8KilQJVer8eAdUywKb0daQc1TaBF6EMCbmX7Pl7987OpgTfQd0i8/ufw/+NyNxC8RVAkA1ozDloYOwnuTL05q20mfs9KGMWQyqIDrKY9ux16ZE6pQqqgSNcs1mVBqmAnu1X0Chp/Uzy5CkR2f3g+GPNz2B4WxHixe/MFry8bQ4Y3iWuJ/RVa4YIPv1YJK5V4kXZYE9ZcMh5/mVp/cUyrMTTECjr6f7wGFC7w+DPPDlYPwY2mazbMztnyfFdU6KxxpmNWIRIR8gWiymuXreJ5/HyRcdPicwsVph9nPgSMcIXFcRRZBwgDZHs02GujY3dCXx4/Uzdg5bAmzEf10JgdLouf8Z/XcR1vx6pJGkslspM2bDjb+voGfYZg1TtOPvnkkcJhFAIFUmWaXsVGNi02AGkSSCllFzxGaTL7G7bg6EtsjgRuoh5GNaqAKvg5hR8EBtGl2EJ5eafOGbsl3mMRWwrjohCpVMP0GvG6npPY4rN4PYuqShGE7fuPOWEgjUPiLvLTmG/sNkgUABPgw3wUoEiuhV6GWodkE4j3HomIpHBoksv2S9Umit5CHkmfKkfP3/UZKlcTmjDvgIMdi6R9xkQQKbZQHXistQxP9LsVHE0fNOyO2LmY+5LDVgT+z1KNh5Ac2WHpl4Ou4FqLkjiazXsBO9YAjf02oyrskqoLABaxSxUAVvwOTA4XGqjsUtoOBnlr95gEdgGxWyX6xAv5Jkts/qSpfi+j/oU+b4pgVephaLItAO/POdVYTHJpE3AJmE2brQWvCMZXAG7CjOBIZ2wucgFnNm35NYyn1sfdePJYcOLMZpFjoOQaeWAVY32oAoOKxoOF0sNBqcV72ki3cWCbwE5U1CAeQQugZUG6oXmuSb8Z15PqyNhwZ0ejbJF7I7QEsGGxAuqqp4hXk4BSVEUcIZy+LOQAiHhdo0r4vHupfjhZA4Ef4ADnE3MrGyTrgmo9lM0CZGEZxcWPFAPLA+tiZuPFr5sxIJo0iYSwCA4rG+P39ziPP/Nm/d5AkGp8Bv4cvupgttTOZBjfDnAR8GzXe2DSGHLjfKSAobWDF5Z1HFLRWkSmY9inaAbzR8kvxq31fPAwOfmC1zPnxMw1rDAFBxnrYt4rUnu9gFfMcfSueO0yB0E4HOcBV54hRVBif3mARS3BUDH5+a4AK/kedQtNevsPefEU2Gmg85+WSnON/f+3DIx+YmRk5GTzNKwHyODUWr9+/ZnG/PDTVqrr3TamL1t7URKVYr2s3yu7IgzkwUeRlwBJHq6nOwh0AI1JyoMhHZC/xanlxP4TAB0Lecm/wzt0snBn77Jg0QiQRR4q/OGctKg7c4GqNm2AIv8XrzjAGlXBshIFwCpeb4Fu1rW5rvOp76HQQTwdi6hc8JHZpv8XwJHr0FfkSSfXkuuw+SIQrTgz2qD3yvLmS5cJF4ErPQBal68kWPe08Q9wLR1CbFoH2RZ/J0kcm5fWBV4zaiZi+wLkWBMAFXOKGiT7X3xWvIeiuE8wBy6Jtdvm3+F6y0hcebFZvLB/uddxJ/PIGGiMAZAA5Bk3MWcaN7mmJNTb2HdhYlBxDa7veauNppH5kfUQr1k2yRvTiEvYS7LtRgBkznMAiyjxXwEMThreCBDssNqCZ0Xg6Ra0kIAMXK6wvr8P2KipUARgRGiCvT9kQPYg+Yj28/esTQmkQlDonAHeVwGzSqLpI2ixECg42TB1h8rCiL6qiJLd3gFIyf7zXYjOGsYCGh8mYFX0gSKteZGM/yJNhPeM9hyNAhdNsU+UjhdS5LoCSpEGxrYThsE1ctqzACvME9xrUdWAFlVoijQ02yWpHsM25pvmFTYQxuS0ND/vsybZwgBqn5tkwxkAniPJspYiFKau2lg/QbUbDiPsigFkQ4vVkS6WOWAnJeWQbJDQ45qIcxHAfLN9/kokTHjjORh5N6nnesJhNLa80IOgOl9tfTyCtM94ssatsWtNA1gkONt9P8AzIkg1a37KzOfMGVvPYZ+IOQWnAyqvxl+QVvinoIihgrO9323l5zdXxLZwbAQuk9x+DMoXa/fbdWYFQid1aMEG9ryN82+oikO/lab+rEZXTNqOc07ZAx+72R7aNxGr2cwuXT3SbFdHuRH7BJ4k4lG6KYlEoOWkeWKoDcfiRGxX20lLfkcdoUny6IZyWTFfXD9eS+9pY3xcmw0GoHRT1YXfie/CKA1VCXYivKz/R8UL1CqoVHityBGtK2AxHSf3zGFERDll/WF2QDqx96cAcFRaHDeEycDGSS0BJGaeS3r/ncBc4IvZgWsCdGXmNz0gUfeQhL0yz3WkAgH0Hv/1rIPio5g1sE3a2P/CJMGLp1APLfwlZ6+UflH1mqR65kf3VjKU6AQCMGFZMPXslIqDPI9JQWV0dHTYJKS3ou5RTn7j8Im3w2NlPz9tYPaMgdMT9vO99v4lOOPxOsK7lUpwtIqpYrNJ2tDz2VRskJdts/AgtaH6oegk1+z2/nv5/aKl3um3PBFi/YVUJfGx4QAW1sXMGy5+3bKtk+wxak3kg3kVYEvL+h/OlpcYd1jPhJfkV75eWxLLzCDjip9/TgzWOuxWgCUpPl49en0HqW1d5eNLT6iyCyd+r+vAU1zPBRufvbXSRV7u2oy3m7nWNaO7Xa3TAs8ppFBbqfqy19I4cTqUXQOak27uU9enz8Ndi1WBaIwzjOPrQgqiVTa2HMApG5V/XE1Alb+hHkg2U/q3aDs4+jqyX9pwRdZFeZCov9hEzrh7MvYBradwTBpvFdS89G9HseDo6+jr6OvIf/0vj9NbYMKQ+00AAAAASUVORK5CYII=);\n        }\n        .companies ul li.modstore a {\n            background-image: url(data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABQAAD/4QMxaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzA2NyA3OS4xNTc3NDcsIDIwMTUvMDMvMzAtMjM6NDA6NDIgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE1IChNYWNpbnRvc2gpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkM1OTk4RURBQjNCNTExRTVBNzdGRjlFOTdFNjM1MzEwIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkM1OTk4RURCQjNCNTExRTVBNzdGRjlFOTdFNjM1MzEwIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6RjlCOUZEN0ZCM0IwMTFFNUE3N0ZGOUU5N0U2MzUzMTAiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6RjlCOUZEODBCM0IwMTFFNUE3N0ZGOUU5N0U2MzUzMTAiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAACAgICAgICAgICAwICAgMEAwICAwQFBAQEBAQFBgUFBQUFBQYGBwcIBwcGCQkKCgkJDAwMDAwMDAwMDAwMDAwMAQMDAwUEBQkGBgkNCwkLDQ8ODg4ODw8MDAwMDA8PDAwMDAwMDwwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAz/wAARCABLANwDAREAAhEBAxEB/8QAuwABAAMAAwEBAAAAAAAAAAAAAAcICQQFBgoDAQEBAQEBAAMBAAAAAAAAAAAAAgEDBAUGBwgQAAEDAwQABAIEBgwJDQAAAAIBAwQABQYREgcIITETCUEUUWEiFYEjtRZ2ODJCUmJyonOzlNRWGHGRobEzg3U2F6MkNGS0JTXVJsY3SBkRAAICAQIFAgEJBQkAAAAAAAABEQIDMRIhQRMEBSIUUWGxMkKi0lQGF3GBwSMV8JHhUlPDRBZG/9oADAMBAAIRAxEAPwDfygFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAV35F7Yde+J8qcwjkDkqHYMpZbZck2n5SdKJgZAI416xxYzwNKQEhIhki7VRfJUrVVsl2SJ4tF2tl/tVsvtlnsXWzXmKzOtNzimjjEiNIBHGXmjHVCEwJCRU80WsKK+5v2964ccZbLwXMuUoFoymAYNXC2jFnShjuGKEgPPxo7rLZIhJqhGip8dK1VbJdkixkeQxLjsSorwSI0lsXY77aoQG2aIQkJJ4KiouqLWFFa8v7k9YsGub1nyLmGyhcoznoyY1uGTdfScTwUHCt7MgRUV8FRV8PjVbWS7Ik/jnmTizlyLIl8bZ3aMvCGiLNjwX0WSwhfsSejHtebRfgpAiL8Kxpo1NM4PK/OfFHB8C1XLlPMY+Jxb466zaEdZkyXZBsoKu+mzEaecVAQx3Lt0TVNV8Uok2G0tSE2O/vUWS62y3zDHE3V0EnbRemgT+EbkARH8K1uxmb0WZwzO8M5FsjWR4JlFsy2xvGrY3O1yW5LQuCiKTZqCrsMdU1EtCT4pUtQanJ39xuNvtECXdLtPj2u2W9on59xlugwww0Cak4664oiAiniqquiUNKuTO8vVCDdfuZ7me0nL3bPWjxp8iLrrp/0xmMcfTw8/U0qtrJ3osdj+XYtlePx8rxnIrdf8altE/Hv0CS3IiE2Gu9fVbJR+zoqEir4KioulSVJV5/v31GjPOsOcxRiNklAyatN5dBVT9y43BIST60VUqtjJ3o/IfcC6hmYtpzA0hEqIilZb4I+P0ktvRE/CtNjG9FqYuVY1NxmLmke+wSxKbbm7vGyM3wbhlBdaR4JKvGoiLatqhblVE0qSit1w7y9ULbcvuqRzPaXJW5Q9WLGny42qf8AWo8ZxjT69+lVtZO9FhsOzjDuQrIzkmDZPbcssT5k23dLXJbkso4Gm5sibVdpjqmoloqfFKmDU5I75X7HcK8HzLXbuUc7jYtcL0yUm2wCjTJjzjIkoK4rcNh8hHciohEiIqounktak2HZIjG298+pN1ltwovMkFp51dBOZbrrDZT+E9JhtNj+Eq3azN6LV2i8Wm/2yFerFdIl6s9yaR+3XWC8EiM+0XkbTrSkBiv0otSUQhyf2m4D4Zv7WLck8iRscyB6MEwbUkOfNdFl1SQDc+SjPoG7auiEqL8a1VbJdkiNV9wPqEOmvMDXj9Fkvi/5rfW7GN6LGcbco4Dy9jQZfxxksfKcdOQ5EW4Rwda2SGkEjacafBtwCRDFdCFF0VF8lrGoNTk6jJebuLcRu8mxZBlrMK7Q9qSoYR5UhW1IUJEImGXBRdFRdNda6VwXspSPrfkPzh4nsMzw586rdaqLWj9u1NHQ/wB5ThP+24f0C4f1aq9rk+HzHh/UHwf4j7GT7o/vKcJ/23D+gXD+rU9rk+HzD9QfB/iPsZPuj+8pwn/bcP6BcP6tT2uT4fMP1B8H+I+xk+6SJ+fuH/mj+fn39H/NH0vW++9D9Pb6vo6bdu/d6n2Nu3Xd4aa1z6dt22OJ89/W+y9n73qLoRO/jGu34TO7hETPA+cH3D/1vuV/rCwfkK31dND231LZdNe59s426zcn49mMpp+9cPRCncdQX3PxlyaurxNx4IjrvJGJzibyTXYy4mibW1qbVll1vCMi73errkl5u2Q32c7c73fZj9wu9yfXV2RKkuE686a/EjMlVa6HI3J76c63zjbrvxJxzidxctV55SsscbzcY5kD7Vngw46PsgYqigslx4AVdfEBcH9tXOilna7hGbnX7pXzH2Mx+55ZiP3RYsZgPuQ495v0h6O3MlNChG1GBhh9wkHcKEaiga6oiqQkiW7JHOtGyP8Aby71F5sBHUPGOQcDmNm42DiuRZkZxBcQVJtUR6NKaVNU1TUV0XaaeDg0ZxqzQ33PsttufccdWs4s6/8AdeXQrvd4AqSEQtTYtqeECVP2w7tpfWlRTmdMjlIqBwl0i5X5/wCM7lyVgN2x5Y9vuUm1t49cZL8eZIeitNOl6ZJHNhNyPIg73BTXzVPOqdkiFRtHX9UeYsr62c/2hm5nLtVmm3ccY5Pxh9VAfSJ9YzpPNLqiPQnVVwV8C1Eg1QTNF2ylCrhl0fdd5VyVvJcE4agz3YeLHZhye+w2lURnSXpT8aML/wASFhIxEI66bj3KiqIqMY1zLyPkVn449vXmzlDiKDyvjtwx8RvcY5uN4nIlGE2bHAlFF9VG1YaJxRXYJuJ8N6hVO6TJVG1J6b28c0ziw82XTg90bgxjHJttu9tyuyOtHrbZsSE8YTiZNEVpxtW1ZPXbqhIhaqIaLrhIo+MHgeyfR/OetOHW/N8jzGw5FarpfGrHDjW0ZQSfUeYkSBdMXmhBBQY6oqIarqqedK2ky1IPP9aOn2a9nrdlVzxTKLHjzOJSosWc3dvmd7iywcMSbRhpxNERtddVSttaBWsk398eQL5hlv4t6kWrIXJePcQ4lZGc3eYFWAul4SK36KuBqS+k0ygONipabnF3aqAEmVXM275Hg+PPbv7CckccQuR7UzYbVFvUNu4Y3j10muMXCfFdTe06AiwbLaOgqEHqujqioq6IutHdIKjaPKdQeZcp678/2OHcHZdtsF7uzeMck41IImwEHX/lldeaJFQXYTq70XTdoht6ohlrtlKMq4ZZL3ZP/mfjj9Ch/KMupx6FZNSvWNdHeVsx6/tdgsautiuVkOBcLoeLes+3c0iWx+QxJIUJn0SNPlyNA9TVR8E1LQV3cpgnY4ksx7V3LmSQeRMj4alznZeIX20Sb3aYDhKQw7lDcaRwmUVdAF9oy9RE8yAF+nXLrmVjfIhz3Mv1prz+j1n/AJkq2mhmTU7/AI79s/lXkjA8Pz+1Z/icK25laIl4gw5Sz/XaamNC6IObIxDuFC0XRVTXyWjukFjbNSOv3E196c9csttd7ucTMb3EuE/Il+7WnUjC5IZjRmmtXNpkAqyhmW0dEVfDw1XKrqXSPj/NeQfjOxy9yq7nSraXy8p+SdfgpKT2R08jzi0PX0iuTl9vkc7wTirrIWTJFXtyjov29y66V8vb01cckfyx2dn3nf0eb1O+Rbp+tust398lvsrxzj4slgY/drRhMa4fn5arZi9oxU1Wc5bFm+nMbvTQEoiqsqKfAt+qJ4V4qWtEqdHM/wAD9T8n2Hjn3VcGWnbq3ucdMdcL9bx74us6ThemPg90o/XJeO8Uvl2xe2XCy4pCS550totcvDkebbW2RBcclxLm4i+mElU2CiJoeuu3wRaVyWSbTenP+BXkPA9p3ObDjyY8Fd3c7KvBKXTqm70yv6KyfRS+tMxwkiK8nj+d8e8m3kcKsuH3Hje4WsLG7Z2CjG9GnynIpR5epKjxggIW9U3a6+SeFdqzS1VLcyfV+7fb+T8d3eb2+PDbtrY9mxbW63s6Ot+Pqaidz4z8hMf/ANJv9X/7hrj/AMj+3wPtf/hv3f75j37iH633K38nYPyFb681ND9evqU/vthvOMXSTZMgtr9ou0NGykwJIqDgC82LzRKi/A2zEhXyVFRU8Kok49xtlwtMgYlzhuwJRsMSRjvCoH6MpoH2D2r4ohtmJj9KKi0Bod7kMp88y4GhEZfKx+KLO8y2q/ZQ3pEoTVE+lUbFF/wVFC78jXToxBi2/qhw0zEAQbetUmS5t+LsifJedVfrUzWotqdaaGWnuvwIrHOmCz2gQJU/CGBlqn7b0bjNQCX69C01+qrx6HPJqR32TkOyunvR915VUxhZWyir+4Zlxmw/iilatWZbRGj/ALWf6tVz/Ta6f9kg1F9S8ehkf3jt0Sz9sOZo9uBGGju8aaSB4fj5kGNKeLw+JOuktdK6HO+prL3Y6jZD2PxPCuRcDdZc5LxiyNxZFlluIyF2guD8wjLbx6C2826ZqG9UEt5IRDolc62g6XrJlpxR2U7GdPshfwqXGmR7TbnzW7cW5Sw6McFcPU3IyFtcYU1RVE2i2Eq7lE6t1TOas6m4/WbtVxP2SjXCRi8ZMaz+DHF7JcQnI388LKEgeuy+CIklhCVB3Jooqo7wDcOvO1WjtWyZXX3XE16+4av0Z9B/JlyrcepOTQjn2jv91Oa/9rWb+YlVuQzEZ0d3pL0rtZzQ6+qqY3lpkVX9wzDjtB/FFKuuhF9T6f8AHYUa24/YrdCAWocC3xY0RsPARaaaEARPqRESuB6D5gO6kViz9r+ZUtojHQb+3NRW0RNH5EZiS6fh8VdMlX66710PPfUs77qjpyOV+KpLvg5IwNlxxP3xTpRL/lWppoVk1Kv2XuNzVjnCI8B2C4Wy0YWkKZbinR4elzKLcH3X5TXzJOEKeorxgqiCEgr4Ki+NVtUyTucQaU+2r1cvOFg92Ay6VDVzK7KsHBLTDktS9sKU426/LkOMqYC4XpC2LaFuFPURxBLREi9uReOvMpl7maadpbx9eO2df+SKqpoTk1IvxfnXuRZ8bsNoxLKs8Yxe1wI8XHmIUJ5yMEJltAYBk0jkigIIiD4r4VsIxOxv31Wume5v1wwKfzNHly8wvkG4M5E1d4qRpEiMs2SzHWQxsD/SRUbXxFNyLuXzrk+D4F3x1y43S6mtk009Gnwaf7UVOyPr1yjiWbyHsPx1+92q13AJuOXQDZMSbA0dZRwXDFdweAkijoqoungqV8nXuKWr6mfzr3/5F8r2Hft9pid6VsrUtwfBOaym9Vo5XFr4HCLi/n0sy/PtcJk/nCl2S9etpGRr5tHvXRfT9TTTenlW9XFt2zwOL/Ln5hfe+99u+rv6k+mN07tJ0nkds1hnZBhm+stYjKD7+vbWRuuIMXfFujLqvDKhr6n4g1VdqqPmP2fKp34uHHRR+49VfE/matciWB/zMiy/V9ORPdvpx9D5OPq8NDk5ZivZDMrcVqueD/JwZEr5+5s22LBhfPTNFT5iUrJCrp+K+K+GvjprWUviq5TOnk/G/mbyGPpZO3ire6ypWlN9/wDNfa/Uywf/AA3zL+6x/wAP/uj/ANXfL+p90eq3u/8AF/ndm/ds3el46a+fh515+rXrbuX+B96/oHe/9T9js/nx9GV/q9SJmJ2/LrwMQ/cQ/W+5W/k7B+QrfXKmh+i31NPb10P445/i8H8o3m+z7BJDC8ZYzS0QmgMb01EgsI2pPKQmy4rSI0RohagIaIKjqsboOmxPiZQd6vDtfzA2iILbE63sMNiiCINM2uG22AomiIgiKIifQldK6HO+pa/3KsGlDivW3ktiORwX8Waxm5ykRdrTrTDUyGCr5auC5IVP4C1NGVdaEjdHe8vEmAcOW/i3l2+O4ncMIdmJYLssOVMYnQJDxyxBVitvEDrRumG0hQVBA0JS3ImWq5NpdJcSgvc3n22diuapuYY7HkMYpZbdHsGLLKH03n4sZx14pBt6rs9V59whTz2bd2haol1UIizllmO9WCzONOu3THCLkCs3SxWa7hd2CTRW5rzNtflN6fvHXCH8FTVy2VdQkSb0U7XcF8Fde7zY+RMwK3ZKGT3G5R8bjQZcqVIYdjRAaVtW2lZ1MmyRN7gomn2lRKy1W2bSySM5bzcL52c7GypsOA63c+XMwEIVuFVcKLGmSEbaAjRPFI8fTcWiJoKl4JV6I56s1Y7hd3+ZuvHMzPHOHYrjrOK2602+4QJN3jSZDtyZfFUMhNuQygNg42bKbU11Al3fBIrVNHS12md1m/bXo92C4ebc5oAm8gC3avYuFulOXu3XA2tDS1Tm2fTXRxV2GrggSInrCiajWKrT4Gu1WuJmp0Keu7XbPiRLITom9LuDc4Q10KGtulLIRxE8FFARV8fiiL5oldLaHOmpqP7rf6vmHfp9B/Jlyrnj1OmTQjj2jv8AdTmv/a1m/mJVbkMxFLPccwWfiHaHK7u8woWvP4Nvv1nf8xJPlwhyB18tyPxjVU80RRX4pVUfAm64mk/EnuPcArxHj8nkC/zrFneP2iNDv2Mhb5Ul2bLjNI0TsN1ptWFF5R3ojjg7NdC8tyw6OS1dQY1PS772e7KDLbtxDc+W8zbUbc1q4kWLKkIm0iRPEI0dPtnp+xBSWumiOWrLpe7GIjzHxqIogiOFiginkiJcJXhU49C8mpHeQdU7JfOjnHnYnC4DsfMrIFxd5EjNm66FxtwXaVEGULRKaNuRRAFLYgirW8i8RTXd3GDNvpkk/wBrjnSRjmfXrhC+3LTHs5ZcuWJMPH9li9RB3OtNa6IPzUYSUtfMmgQU1JdcuuZuN8iJvc0/Wlu36O2f+aKtpoZk1NNOvfbzrhifBXEOM5Ly9aLff7DiNpgXe3ujKJyPIjxW2zZLRlU1bVNvgunh4eFQ6uTpWyguZx3ylx7yzZpGQccZZAy6zxJJQ5cyCaqjUgQFxW3BNBIS2mK+KeS1LUFJye+rDRQCgFAKAyL7V+3vyhzjzllPKOI5li1vs+UNW1HIF4cmsyY5woLEIkRI8WQBoXob0XcPnpp4ar0rdJHK1G2am4Rj7mJYXiOKvSRmu4zZYFqdmAKgLpQozbCuIKqqohKGumtc2dUZP9k/bp5T5i5wzTkrF81xWBYMukxZKRbo5ObmR1bisx3B2MRHmz8W1UV3pqnnpXRXhHK1G2aVZpwvh/JPEo8Q55GK8WE7ZDguymV9GQ0/CABalxjVC9NwCDcPmnmJIQqQrEwzo1KgyByn2mOS2Lm+mE8n4zdbMrirFcvbcyBKFtV8BMIzMwCVE8NUJNfPRPKunUOTxssN1u9tCz8Z5bas95ayiHnN1sDwS7Fi9uYcC2NS2lQmpEh1/a4/6ZIhCHpgO5EUtyfZqXeSq441Jk7ydU807PWzjtnCsisljm4VIuZymb2Ultp8LgEZEUHIzL5IoLH8lDx3eaaeOVtBt6yZ4te0/wA9qYI9neANtqv4wwl3QyRPqFbaOv8AjSr6iI6bNA+p3Q7E+ul2XOsgviZ1ySrDke33IY/y8G1tvCoPfJtkRmTjgKoE6SouxVERFCLdNrSXWkEtdnOqWBdnMfgRMgkPY7llgRz82czhti49HF3RXGH2SUUfZJUQtikKoviBjqW7K2g21ZMupXtMcthOVuFydiEi2b9ElvhPZf2a+foCw6Ov1ep+Gr6iOfTZoh1Q6VYZ1mSdkD11LNeRbtH+VlZO6wkdmJGJUI48Jjc4oIaom8yJSLRNNiaisWtJdaQd73Q68ZN2U4rtOE4lfLZYrzaMjjXwH7v6yRnW2YsqMTSmw26YL/zhCRdhfsdPjqirhm3rKPKdH+reYdY8czuBmeQ2e+XLL7hDkMt2VZDjDDUNpwE3OyWmCIjV1fBA0TTzXXwWtJlKwSp2W6x4N2ZxGLYMnddst+sjjj+KZfEbFyTBcdREcAgJRR1l3aPqN7h12iqEJIi1lbQbasmUM32muZm55N23kfC5dsQ1QJkkrjHfUPgqsBEeFF+r1fw106iOfTZfnqd0TxPrjc3M3vd8TOeSXY7kWHdUY+XhWxl5NrqQ2iIzVxwfsk6S67VUREUI90WtJdaQeM7u9LOQey2a4hl2EZRj1oCxWRbROgXw5bKqqSXXxdbcjR5O7VHVRUUU008118NraDL0ktN194Vd4r6+4twtmUmBlJW633KDkRRwP5KU3c5cmQ6yIuoJEGyR6aqqJu010TXSpblyVVQoMwD9rrmPFOR4uScZcqY3brRYry3c8UvNwKYF2hpHfR6MRstRHGHHGtqa/jBE1TyFF0TpvRz6bJf7cdCOV+fOVW+Q8WzLFY7Uix2+33KPeCmw3PmoYEDhtjGiyx2HqhIikip5eOmq5W8Iq1G2Ve//ACg7A/2349/p11/8qreoiemzTHpJ1oyzrNgmV49mV9tN7u+S3tLkK2Un3IzTLcdtkRVyQywakqiSr9jRE08VqLWkulYLp1JYoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAKAUAoBQCgFAf/Z);\n        }\n\n        .companies ul li.modxextras a {\n            background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyMjkuNDkgNjEuNTQiPjxkZWZzPjxzdHlsZT4uY2xzLTF7ZmlsbDojMDBiNWRlO30uY2xzLTJ7ZmlsbDojMDBkZWNjO30uY2xzLTN7ZmlsbDojZmY1NTI5O30uY2xzLTR7ZmlsbDojZmY5NjQwO30uY2xzLTV7ZmlsbDojMTAyYzUzO308L3N0eWxlPjwvZGVmcz48ZyBpZD0iTGF5ZXJfMiIgZGF0YS1uYW1lPSJMYXllciAyIj48ZyBpZD0iYnJhbmRfZ3VpZGVzIiBkYXRhLW5hbWU9ImJyYW5kIGd1aWRlcyI+PGcgaWQ9ImxvZ29fb25fbGlnaHQiIGRhdGEtbmFtZT0ibG9nbyBvbiBsaWdodCI+PHBvbHlnb24gY2xhc3M9ImNscy0xIiBwb2ludHM9IjU5LjI5IDUuOTUgMjkuNTggNS45NSAyNS41NiAxMi40IDQ2Ljk0IDI1LjcgNDYuOTQgMjUuNyA0Ni45NCAyNS43MSA1OS4yOSA1Ljk1Ii8+PHBvbHlnb24gY2xhc3M9ImNscy0yIiBwb2ludHM9IjI1LjU2IDEyLjQgNS42MiAwIDUuNjIgMjkuNzEgMTIuNDkgMzMuNzIgNDYuOTQgMjUuNyA0Ni45NCAyNS43IDI1LjU2IDEyLjQiLz48cG9seWdvbiBjbGFzcz0iY2xzLTMiIHBvaW50cz0iNDcuMDYgMjcuODIgNDcuMDYgMjcuODIgNDcuMDcgMjcuODIgNDcuMDYgMjcuODIiLz48cG9seWdvbiBjbGFzcz0iY2xzLTMiIHBvaW50cz0iNTMuNDcgMzEuODMgNDcuMDcgMjcuODIgMzMuNjUgNDkuMTUgNTMuNDcgNjEuNTQgNTMuNDcgMzEuODMiLz48cG9seWdvbiBjbGFzcz0iY2xzLTQiIHBvaW50cz0iNDcuMDcgMjcuODIgNDcuMDcgMjcuODIgNDcuMDYgMjcuODIgMTIuMzUgMzUuOTggMCA1NS40MSAyOS43MSA1NS40MSAzMy42NSA0OS4xNSA0Ny4wNyAyNy44MiA0Ny4wNyAyNy44MiIvPjxwYXRoIGNsYXNzPSJjbHMtNSIgZD0iTTEwNy42Niw0Ny44bDAtMTguODRMOTguMzcsNDQuNDhIOTUuMUw4NS45LDI5LjM3VjQ3LjhINzkuMDhWMTYuNGg2TDk2Ljg1LDM1LjkyLDEwOC40MiwxNi40aDZsLjA5LDMxLjRaIi8+PHBhdGggY2xhc3M9ImNscy01IiBkPSJNMTIxLjgyLDMyLjFjMC05LjMzLDcuMjctMTYuMjQsMTcuMTgtMTYuMjRzMTcuMTgsNi44NywxNy4xOCwxNi4yNFMxNDguODcsNDguMzQsMTM5LDQ4LjM0LDEyMS44Miw0MS40MywxMjEuODIsMzIuMVptMjcsMGMwLTYtNC4yMi0xMC05LjgzLTEwcy05LjgyLDQuMDktOS44MiwxMC4wNSw0LjIxLDEwLDkuODIsMTBTMTQ4LjgzLDM4LjA3LDE0OC44MywzMi4xWiIvPjxwYXRoIGNsYXNzPSJjbHMtNSIgZD0iTTE2My41OSwxNi40aDE0LjI2YzEwLjI3LDAsMTcuMzIsNi4xOSwxNy4zMiwxNS43cy03LDE1LjctMTcuMzIsMTUuN0gxNjMuNTlabTEzLjksMjUuNDRjNi4yNCwwLDEwLjMyLTMuNzMsMTAuMzItOS43NHMtNC4wOC05LjczLTEwLjMyLTkuNzNoLTYuNjRWNDEuODRaIi8+PHBhdGggY2xhc3M9ImNscy01IiBkPSJNMjIxLjEsNDcuOGwtNy41OC0xMC45LTcuNDUsMTAuOWgtOC4zNGwxMS42MS0xNi0xMS0xNS40M2g4LjI1bDcuMjIsMTAuMTgsNy4wOS0xMC4xOGg3Ljg1TDIxNy43OCwzMS41NiwyMjkuNDksNDcuOFoiLz48L2c+PC9nPjwvZz48L3N2Zz4=);\n        }\n\n        .disclaimer {\n            max-width: 960px;\n            display: block;\n            margin: 0 auto;\n            text-align: center;\n            color: #333;\n            font-size: .6em;\n        }\n\n        @media (min-width: 768px) and (max-width: 991px)  {\n            .container {\n                padding: 1em;\n                border: 0;\n                border-radius: 0;\n            }\n        }\n\n        @media (max-width: 767px)  {\n            body {\n                font-size: 16px;\n            }\n            .container {\n                padding: 1em;\n                margin: 0 0 1em;\n                border: 0;\n                border-radius: 0;\n            }\n            .container > section, .container > aside {\n                float: none;\n                width: 100%;\n            }\n            .container aside {\n                border: 0;\n                padding: 0;\n            }\n            .logo {\n                width: 100%;\n                height: 48px;\n            }\n            h1 {\n                font-size: 24px;\n            }\n            h2 {\n                font-size: 19px;\n            }\n            h3 {\n                font-size: 16px;\n            }\n            .companys ul li {\n                display: block;\n            }\n        }\n\n    </style>\n</head>\n<body>\n\n<a href=\"http://www.modx.com\" title=\"Modx\" class=\"logo\" target=\"_blank\">MODX</a>\n\n<div class=\"container\">\n    <section>\n        <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>\n        [[*content]]\n    </section>\n    <aside>\n        <a href=\"[[++manager_url]]\" title=\"Your MODX manager\" class=\"cta-button\">Go to the&nbsp;manager</a>\n        <h3>Learn more about&nbsp;MODX</h3>\n        <ul>\n            <li><a href=\"https://docs.modx.com/current/en/index\">Official&nbsp;Documentation</a></li>\n            <li><a href=\"https://docs.modx.com/current/en/getting-started/friendly-urls\">Using Friendly&nbsp;URLs</a></li>\n            <li><a href=\"https://docs.modx.com/current/en/building-sites/extras\">Package&nbsp;Management</a></li>\n            <li><a href=\"http://modx.com/blog/\">Official MODX&nbsp;Blog</a></li>\n            <li><a href=\"http://www.discovermodx.com/\">Discover&nbsp;MODX</a></li>\n            <li><a href=\"https://modx.today\">MODX.today</a></li>\n        </ul>\n\n        <h3>Get help!</h3>\n        <ul>\n            <li><a href=\"http://forums.modx.com/\">Official MODX&nbsp;Forums</a></li>\n            <li><a href=\"https://modx.org/\">MODX on&nbsp;Slack</a></li>\n            <li><a href=\"https://twitter.com/modx\">MODX on&nbsp;Twitter</a></li>\n            <li><a href=\"https://www.facebook.com/modxcms\">MODX on&nbsp;Facebook</a></li>\n            <li><a href=\"http://modx.com/professionals/\">Find a MODX&nbsp;Professional</a></li>\n        </ul>\n    </aside>\n    <div class=\"companies\">\n        <h3>Extend MODX with&nbsp;Extras</h3>\n        <ul>\n            <li class=\"modxextras\"><a href=\"http://modx.com/extras/\" title=\"MODX extras\" target=\"_blank\">MODX&nbsp;extras</a></li>\n            <li class=\"modmore\"><a href=\"https://www.modmore.com/extras/\" title=\"modmore.com\" target=\"_blank\">modmore.com</a></li>\n            <li class=\"modstore\"><a href=\"https://modstore.pro/\" title=\"modstore.pro\" target=\"_blank\">modstore.pro</a></li>\n            <li class=\"extrasio\"><a href=\"https://extras.io/extras/\" title=\"Extras.io\" target=\"_blank\">Extras.io</a></li>\n        </ul>\n    </div>\n</div>\n<footer class=\"disclaimer\">\n    <p>&copy; 2005-present the <a href=\"http://www.modx.com/\" target=\"_blank\">MODX</a> Content Management Framework (CMF) project. All rights reserved. MODX is licensed under the GNU&nbsp;GPL.</p>\n</footer>\n\n<script>\n    // Load the Open Sans font\n    try {\n        document.addEventListener(\"DOMContentLoaded\", function() { // prevent a Flash Of Unstyled Text (FOUT)\n            document.querySelector(\'head\').innerHTML += \"<link href=\'https://fonts.googleapis.com/css?family=Open+Sans:400,700&display=swap\' rel=\'stylesheet\' type=\'text/css\'>\";\n            document.body.classList.add(\'loaded\');\n        });\n    } catch (e) { }\n\n    // Shuffle the vendors to prevent favoritism of one vendor over the other\n    // with thanks to http://james.padolsey.com/javascript/shuffling-the-dom/\n    function shuffle(elems) {\n        var allElems = (function(){\n            var ret = [], l = elems.length;\n            while (l--) {\n                if (elems[l].className !== \'modxextras\') {\n                    ret[ret.length] = elems[l];\n                }\n            }\n            return ret;\n        })();\n\n        var shuffled = (function(){\n            var l = allElems.length, ret = [];\n            while (l--) {\n                var random = Math.floor(Math.random() * allElems.length),\n                        randEl = allElems[random].cloneNode(true);\n                allElems.splice(random, 1);\n                ret[ret.length] = randEl;\n            }\n            return ret;\n        })(), l = elems.length;\n\n        // To make sure the MODX logo stays #1, we lower the count by one here (shuffling 3 instead of 4 items)\n        // and refer to elems[l+1] in the loop below. This matches because allElems was also filtered to not include\n        // the official MODX logo.\n        l--;\n        while (l--) {\n            elems[l+1].parentNode.insertBefore(shuffled[l], elems[l+1].nextSibling);\n            elems[l+1].parentNode.removeChild(elems[l+1]);\n        }\n    }\n    shuffle(document.querySelectorAll(\'.companies li\'));\n</script>\n\n</body>\n</html>\n', 0, NULL, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvars`
--

CREATE TABLE `modx_site_tmplvars` (
  `id` int UNSIGNED NOT NULL,
  `source` int UNSIGNED NOT NULL DEFAULT '0',
  `property_preprocess` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  `locked` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` mediumtext,
  `properties` text,
  `input_properties` text,
  `output_properties` text,
  `static` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_access`
--

CREATE TABLE `modx_site_tmplvar_access` (
  `id` int UNSIGNED NOT NULL,
  `tmplvarid` int NOT NULL DEFAULT '0',
  `documentgroup` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_contentvalues`
--

CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int UNSIGNED NOT NULL,
  `tmplvarid` int NOT NULL DEFAULT '0',
  `contentid` int NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_site_tmplvar_templates`
--

CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int NOT NULL DEFAULT '0',
  `templateid` int NOT NULL DEFAULT '0',
  `rank` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_eventnames`
--

CREATE TABLE `modx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `groupname` varchar(20) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_system_eventnames`
--

INSERT INTO `modx_system_eventnames` (`name`, `service`, `groupname`) VALUES
('OnBeforeCacheUpdate', 4, 'System'),
('OnBeforeChunkFormDelete', 1, 'Chunks'),
('OnBeforeChunkFormSave', 1, 'Chunks'),
('OnBeforeDocFormDelete', 1, 'Resources'),
('OnBeforeDocFormSave', 1, 'Resources'),
('OnBeforeEmptyTrash', 1, 'Resources'),
('OnBeforeManagerLogin', 2, 'Security'),
('OnBeforeManagerLogout', 2, 'Security'),
('OnBeforeManagerPageInit', 2, 'System'),
('OnBeforePluginFormDelete', 1, 'Plugins'),
('OnBeforePluginFormSave', 1, 'Plugins'),
('OnBeforeRegisterClientScripts', 5, 'System'),
('OnBeforeSaveWebPageCache', 4, 'System'),
('OnBeforeSnipFormDelete', 1, 'Snippets'),
('OnBeforeSnipFormSave', 1, 'Snippets'),
('OnBeforeTempFormDelete', 1, 'Templates'),
('OnBeforeTempFormSave', 1, 'Templates'),
('OnBeforeTVFormDelete', 1, 'Template Variables'),
('OnBeforeTVFormSave', 1, 'Template Variables'),
('OnBeforeUserActivate', 1, 'Users'),
('OnBeforeUserDeactivate', 1, 'Users'),
('OnBeforeUserDuplicate', 1, 'Users'),
('OnBeforeUserFormDelete', 1, 'Users'),
('OnBeforeUserFormSave', 1, 'Users'),
('OnBeforeUserGroupFormRemove', 1, 'User Groups'),
('OnBeforeUserGroupFormSave', 1, 'User Groups'),
('OnBeforeWebLogin', 3, 'Security'),
('OnBeforeWebLogout', 3, 'Security'),
('OnCacheUpdate', 4, 'System'),
('OnCategoryBeforeRemove', 1, 'Categories'),
('OnCategoryBeforeSave', 1, 'Categories'),
('OnCategoryRemove', 1, 'Categories'),
('OnCategorySave', 1, 'Categories'),
('OnChunkBeforeRemove', 1, 'Chunks'),
('OnChunkBeforeSave', 1, 'Chunks'),
('OnChunkFormDelete', 1, 'Chunks'),
('OnChunkFormPrerender', 1, 'Chunks'),
('OnChunkFormRender', 1, 'Chunks'),
('OnChunkFormSave', 1, 'Chunks'),
('OnChunkRemove', 1, 'Chunks'),
('OnChunkSave', 1, 'Chunks'),
('OnContextBeforeRemove', 1, 'Contexts'),
('OnContextBeforeSave', 1, 'Contexts'),
('OnContextFormPrerender', 2, 'Contexts'),
('OnContextFormRender', 2, 'Contexts'),
('OnContextRemove', 1, 'Contexts'),
('OnContextSave', 1, 'Contexts'),
('OnDocFormDelete', 1, 'Resources'),
('OnDocFormPrerender', 1, 'Resources'),
('OnDocFormRender', 1, 'Resources'),
('OnDocFormSave', 1, 'Resources'),
('OnDocPublished', 5, 'Resources'),
('OnDocUnPublished', 5, 'Resources'),
('OnElementNotFound', 1, 'System'),
('OnEmptyTrash', 1, 'Resources'),
('OnFileCreateFormPrerender', 1, 'System'),
('OnFileEditFormPrerender', 1, 'System'),
('OnFileManagerBeforeUpload', 1, 'System'),
('OnFileManagerDirCreate', 1, 'System'),
('OnFileManagerDirRemove', 1, 'System'),
('OnFileManagerDirRename', 1, 'System'),
('OnFileManagerFileCreate', 1, 'System'),
('OnFileManagerFileRemove', 1, 'System'),
('OnFileManagerFileRename', 1, 'System'),
('OnFileManagerFileUpdate', 1, 'System'),
('OnFileManagerMoveObject', 1, 'System'),
('OnFileManagerUpload', 1, 'System'),
('OnHandleRequest', 5, 'System'),
('OnInitCulture', 1, 'Internationalization'),
('OnLoadWebDocument', 5, 'System'),
('OnLoadWebPageCache', 4, 'System'),
('OnManagerAuthentication', 2, 'Security'),
('OnManagerLogin', 2, 'Security'),
('OnManagerLoginFormPrerender', 2, 'Security'),
('OnManagerLoginFormRender', 2, 'Security'),
('OnManagerLogout', 2, 'Security'),
('OnManagerPageAfterRender', 2, 'System'),
('OnManagerPageBeforeRender', 2, 'System'),
('OnManagerPageInit', 2, 'System'),
('OnMediaSourceBeforeFormDelete', 1, 'Media Sources'),
('OnMediaSourceBeforeFormSave', 1, 'Media Sources'),
('OnMediaSourceDuplicate', 1, 'Media Sources'),
('OnMediaSourceFormDelete', 1, 'Media Sources'),
('OnMediaSourceFormSave', 1, 'Media Sources'),
('OnMediaSourceGetProperties', 1, 'Media Sources'),
('OnMODXInit', 5, 'System'),
('OnPackageInstall', 2, 'Package Manager'),
('OnPackageRemove', 2, 'Package Manager'),
('OnPackageUninstall', 2, 'Package Manager'),
('OnPageNotFound', 1, 'System'),
('OnPageUnauthorized', 1, 'Security'),
('OnParseDocument', 5, 'System'),
('OnPluginBeforeRemove', 1, 'Plugins'),
('OnPluginBeforeSave', 1, 'Plugins'),
('OnPluginEventBeforeRemove', 1, 'Plugin Events'),
('OnPluginEventBeforeSave', 1, 'Plugin Events'),
('OnPluginEventRemove', 1, 'Plugin Events'),
('OnPluginEventSave', 1, 'Plugin Events'),
('OnPluginFormDelete', 1, 'Plugins'),
('OnPluginFormPrerender', 1, 'Plugins'),
('OnPluginFormRender', 1, 'Plugins'),
('OnPluginFormSave', 1, 'Plugins'),
('OnPluginRemove', 1, 'Plugins'),
('OnPluginSave', 1, 'Plugins'),
('OnPropertySetBeforeRemove', 1, 'Property Sets'),
('OnPropertySetBeforeSave', 1, 'Property Sets'),
('OnPropertySetRemove', 1, 'Property Sets'),
('OnPropertySetSave', 1, 'Property Sets'),
('OnResourceAddToResourceGroup', 1, 'Resources'),
('OnResourceAutoPublish', 1, 'Resources'),
('OnResourceBeforeSort', 1, 'Resources'),
('OnResourceCacheUpdate', 1, 'Resources'),
('OnResourceDelete', 1, 'Resources'),
('OnResourceDuplicate', 1, 'Resources'),
('OnResourceGroupBeforeRemove', 1, 'Security'),
('OnResourceGroupBeforeSave', 1, 'Security'),
('OnResourceGroupRemove', 1, 'Security'),
('OnResourceGroupSave', 1, 'Security'),
('OnResourceRemoveFromResourceGroup', 1, 'Resources'),
('OnResourceSort', 1, 'Resources'),
('OnResourceToolbarLoad', 1, 'Resources'),
('OnResourceTVFormPrerender', 1, 'Resources'),
('OnResourceTVFormRender', 1, 'Resources'),
('OnResourceUndelete', 1, 'Resources'),
('OnRichTextBrowserInit', 1, 'RichText Editor'),
('OnRichTextEditorInit', 1, 'RichText Editor'),
('OnRichTextEditorRegister', 1, 'RichText Editor'),
('OnSiteRefresh', 1, 'System'),
('OnSiteSettingsRender', 1, 'Settings'),
('OnSnipFormDelete', 1, 'Snippets'),
('OnSnipFormPrerender', 1, 'Snippets'),
('OnSnipFormRender', 1, 'Snippets'),
('OnSnipFormSave', 1, 'Snippets'),
('OnSnippetBeforeRemove', 1, 'Snippets'),
('OnSnippetBeforeSave', 1, 'Snippets'),
('OnSnippetRemove', 1, 'Snippets'),
('OnSnippetSave', 1, 'Snippets'),
('OnTempFormDelete', 1, 'Templates'),
('OnTempFormPrerender', 1, 'Templates'),
('OnTempFormRender', 1, 'Templates'),
('OnTempFormSave', 1, 'Templates'),
('OnTemplateBeforeRemove', 1, 'Templates'),
('OnTemplateBeforeSave', 1, 'Templates'),
('OnTemplateRemove', 1, 'Templates'),
('OnTemplateSave', 1, 'Templates'),
('OnTemplateVarBeforeRemove', 1, 'Template Variables'),
('OnTemplateVarBeforeSave', 1, 'Template Variables'),
('OnTemplateVarRemove', 1, 'Template Variables'),
('OnTemplateVarSave', 1, 'Template Variables'),
('OnTVFormDelete', 1, 'Template Variables'),
('OnTVFormPrerender', 1, 'Template Variables'),
('OnTVFormRender', 1, 'Template Variables'),
('OnTVFormSave', 1, 'Template Variables'),
('OnTVInputPropertiesList', 1, 'Template Variables'),
('OnTVInputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderList', 1, 'Template Variables'),
('OnTVOutputRenderPropertiesList', 1, 'Template Variables'),
('OnUserActivate', 1, 'Users'),
('OnUserAddToGroup', 1, 'User Groups'),
('OnUserBeforeAddToGroup', 1, 'User Groups'),
('OnUserBeforeRemove', 1, 'Users'),
('OnUserBeforeRemoveFromGroup', 1, 'User Groups'),
('OnUserBeforeSave', 1, 'Users'),
('OnUserChangePassword', 1, 'Users'),
('OnUserDeactivate', 1, 'Users'),
('OnUserDuplicate', 1, 'Users'),
('OnUserFormDelete', 1, 'Users'),
('OnUserFormPrerender', 1, 'Users'),
('OnUserFormRender', 1, 'Users'),
('OnUserFormSave', 1, 'Users'),
('OnUserGroupBeforeRemove', 1, 'User Groups'),
('OnUserGroupBeforeSave', 1, 'User Groups'),
('OnUserGroupFormSave', 1, 'User Groups'),
('OnUserGroupRemove', 1, 'User Groups'),
('OnUserGroupSave', 1, 'User Groups'),
('OnUserNotFound', 1, 'Users'),
('OnUserProfileBeforeRemove', 1, 'User Profiles'),
('OnUserProfileBeforeSave', 1, 'User Profiles'),
('OnUserProfileRemove', 1, 'User Profiles'),
('OnUserProfileSave', 1, 'User Profiles'),
('OnUserRemove', 1, 'Users'),
('OnUserRemoveFromGroup', 1, 'User Groups'),
('OnUserSave', 1, 'Users'),
('OnWebAuthentication', 3, 'Security'),
('OnWebLogin', 3, 'Security'),
('OnWebLogout', 3, 'Security'),
('OnWebPageComplete', 5, 'System'),
('OnWebPageInit', 5, 'System'),
('OnWebPagePrerender', 5, 'System');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_system_settings`
--

CREATE TABLE `modx_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_system_settings`
--

INSERT INTO `modx_system_settings` (`key`, `value`, `xtype`, `namespace`, `area`, `editedon`) VALUES
('access_category_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_context_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('access_resource_group_enabled', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_forward_across_contexts', '', 'combo-boolean', 'core', 'system', NULL),
('allow_manager_login_forgot_password', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_multiple_emails', '1', 'combo-boolean', 'core', 'authentication', NULL),
('allow_tags_in_post', '', 'combo-boolean', 'core', 'system', NULL),
('allow_tv_eval', '1', 'combo-boolean', 'core', 'system', NULL),
('anonymous_sessions', '1', 'combo-boolean', 'core', 'session', NULL),
('archive_with', '', 'combo-boolean', 'core', 'system', NULL),
('auto_check_pkg_updates', '1', 'combo-boolean', 'core', 'system', NULL),
('auto_check_pkg_updates_cache_expire', '15', 'textfield', 'core', 'system', NULL),
('auto_isfolder', '1', 'combo-boolean', 'core', 'site', NULL),
('auto_menuindex', '1', 'combo-boolean', 'core', 'site', NULL),
('automatic_alias', '1', 'combo-boolean', 'core', 'furls', NULL),
('automatic_template_assignment', 'parent', 'textfield', 'core', 'site', NULL),
('base_help_url', '//docs.modx.com/help/', 'textfield', 'core', 'manager', NULL),
('blocked_minutes', '60', 'textfield', 'core', 'authentication', NULL),
('cache_action_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_alias_map', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_context_settings', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_db', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_db_session', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_db_session_lifetime', '', 'textfield', 'core', 'caching', NULL),
('cache_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_format', '0', 'textfield', 'core', 'caching', NULL),
('cache_handler', 'xPDOFileCache', 'textfield', 'core', 'caching', NULL),
('cache_lang_js', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_noncore_lexicon_topics', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource', '1', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_clear_partial', '0', 'combo-boolean', 'core', 'caching', NULL),
('cache_resource_expires', '0', 'textfield', 'core', 'caching', NULL),
('cache_scripts', '1', 'combo-boolean', 'core', 'caching', NULL),
('clear_cache_refresh_trees', '0', 'combo-boolean', 'core', 'caching', NULL),
('compress_css', '0', 'combo-boolean', 'core', 'manager', '2024-04-12 10:40:55'),
('compress_js', '0', 'combo-boolean', 'core', 'manager', '2024-04-12 10:40:55'),
('compress_js_max_files', '10', 'textfield', 'core', 'manager', NULL),
('confirm_navigation', '1', 'combo-boolean', 'core', 'manager', NULL),
('container_suffix', '/', 'textfield', 'core', 'furls', NULL),
('context_tree_sort', '1', 'combo-boolean', 'core', 'manager', NULL),
('context_tree_sortby', 'rank', 'textfield', 'core', 'manager', NULL),
('context_tree_sortdir', 'ASC', 'textfield', 'core', 'manager', NULL),
('cultureKey', 'ru', 'modx-combo-language', 'core', 'language', '2024-04-12 10:40:55'),
('date_timezone', '', 'textfield', 'core', 'system', NULL),
('debug', '', 'textfield', 'core', 'system', NULL),
('default_content_type', '1', 'modx-combo-content-type', 'core', 'site', NULL),
('default_context', 'web', 'modx-combo-context', 'core', 'site', NULL),
('default_duplicate_publish_option', 'preserve', 'textfield', 'core', 'manager', NULL),
('default_media_source', '1', 'modx-combo-source', 'core', 'manager', NULL),
('default_media_source_type', 'sources.modFileMediaSource', 'modx-combo-source-type', 'core', 'manager', NULL),
('default_per_page', '20', 'textfield', 'core', 'manager', NULL),
('default_template', '1', 'modx-combo-template', 'core', 'site', NULL),
('default_username', '(anonymous)', 'textfield', 'core', 'session', NULL),
('editor_css_path', '', 'textfield', 'core', 'editor', NULL),
('editor_css_selectors', '', 'textfield', 'core', 'editor', NULL),
('emailsender', 'test@test.ru', 'textfield', 'core', 'authentication', '2024-04-12 10:40:55'),
('emailsubject', 'Your login details', 'textfield', 'core', 'authentication', NULL),
('enable_dragdrop', '1', 'combo-boolean', 'core', 'manager', NULL),
('enable_gravatar', '1', 'combo-boolean', 'core', 'manager', NULL),
('error_log_filename', 'error.log', 'textfield', 'core', 'system', NULL),
('error_log_filepath', '', 'textfield', 'core', 'system', NULL),
('error_page', '1', 'textfield', 'core', 'site', NULL),
('extension_packages', '[]', 'textfield', 'core', 'system', '2024-04-12 11:20:47'),
('failed_login_attempts', '5', 'textfield', 'core', 'authentication', NULL),
('fe_editor_lang', 'en', 'modx-combo-language', 'core', 'language', NULL),
('feed_modx_news', 'https://feeds.feedburner.com/modx-announce', 'textfield', 'core', 'system', NULL),
('feed_modx_news_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('feed_modx_security', 'https://forums.modx.com/board.xml?board=294', 'textfield', 'core', 'system', NULL),
('feed_modx_security_enabled', '1', 'combo-boolean', 'core', 'system', NULL),
('filemanager_path', '', 'textfield', 'core', 'file', NULL),
('filemanager_path_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('filemanager_url', '', 'textfield', 'core', 'file', NULL),
('filemanager_url_relative', '1', 'combo-boolean', 'core', 'file', NULL),
('forgot_login_email', '<p>Hello [[+username]],</p>\n<p>A request for a password reset has been issued for your MODX user. If you sent this, you may follow this link and use this password to login. If you did not send this request, please ignore this email.</p>\n\n<p>\n    <strong>Activation Link:</strong> [[+url_scheme]][[+http_host]][[+manager_url]]?modahsh=[[+hash]]<br />\n    <strong>Username:</strong> [[+username]]<br />\n    <strong>Password:</strong> [[+password]]<br />\n</p>\n\n<p>After you log into the MODX Manager, you can change your password again, if you wish.</p>\n\n<p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('form_customization_use_all_groups', '', 'combo-boolean', 'core', 'manager', NULL),
('forward_merge_excludes', 'type,published,class_key', 'textfield', 'core', 'system', NULL),
('friendly_alias_lowercase_only', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_max_length', '0', 'textfield', 'core', 'furls', NULL),
('friendly_alias_realtime', '0', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_restrict_chars', 'pattern', 'textfield', 'core', 'furls', NULL),
('friendly_alias_restrict_chars_pattern', '/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_strip_element_tags', '1', 'combo-boolean', 'core', 'furls', NULL),
('friendly_alias_translit', 'none', 'textfield', 'core', 'furls', NULL),
('friendly_alias_translit_class', 'translit.modTransliterate', 'textfield', 'core', 'furls', NULL),
('friendly_alias_translit_class_path', '{core_path}components/', 'textfield', 'core', 'furls', NULL),
('friendly_alias_trim_chars', '/.-_', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiter', '-', 'textfield', 'core', 'furls', NULL),
('friendly_alias_word_delimiters', '-_', 'textfield', 'core', 'furls', NULL),
('friendly_urls', '0', 'combo-boolean', 'core', 'furls', NULL),
('friendly_urls_strict', '0', 'combo-boolean', 'core', 'furls', NULL),
('global_duplicate_uri_check', '0', 'combo-boolean', 'core', 'furls', NULL),
('hidemenu_default', '0', 'combo-boolean', 'core', 'site', NULL),
('inline_help', '1', 'combo-boolean', 'core', 'manager', NULL),
('link_tag_scheme', '-1', 'textfield', 'core', 'site', NULL),
('locale', '', 'textfield', 'core', 'language', NULL),
('lock_ttl', '360', 'textfield', 'core', 'system', NULL),
('log_deprecated', '1', 'combo-boolean', 'core', 'system', NULL),
('log_level', '1', 'textfield', 'core', 'system', NULL),
('log_snippet_not_found', '1', 'combo-boolean', 'core', 'site', NULL),
('log_target', 'FILE', 'textfield', 'core', 'system', NULL),
('mail_charset', 'UTF-8', 'modx-combo-charset', 'core', 'mail', NULL),
('mail_encoding', '8bit', 'textfield', 'core', 'mail', NULL),
('mail_smtp_auth', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_autotls', '1', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_helo', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_hosts', 'localhost', 'textfield', 'core', 'mail', NULL),
('mail_smtp_keepalive', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_pass', '', 'text-password', 'core', 'mail', NULL),
('mail_smtp_port', '587', 'textfield', 'core', 'mail', NULL),
('mail_smtp_prefix', '', 'textfield', 'core', 'mail', NULL),
('mail_smtp_single_to', '', 'combo-boolean', 'core', 'mail', NULL),
('mail_smtp_timeout', '10', 'textfield', 'core', 'mail', NULL),
('mail_smtp_user', '', 'textfield', 'core', 'mail', NULL),
('mail_use_smtp', '', 'combo-boolean', 'core', 'mail', NULL),
('main_nav_parent', 'topnav', 'textfield', 'core', 'manager', NULL),
('manager_date_format', 'Y-m-d', 'textfield', 'core', 'manager', NULL),
('manager_direction', 'ltr', 'textfield', 'core', 'language', NULL),
('manager_favicon_url', '', 'textfield', 'core', 'manager', NULL),
('manager_js_cache_file_locking', '1', 'combo-boolean', 'core', 'manager', NULL),
('manager_js_cache_max_age', '3600', 'textfield', 'core', 'manager', NULL),
('manager_js_document_root', '', 'textfield', 'core', 'manager', NULL),
('manager_js_zlib_output_compression', '0', 'combo-boolean', 'core', 'manager', NULL),
('manager_lang_attribute', 'ru', 'textfield', 'core', 'language', '2024-04-12 10:40:55'),
('manager_language', 'ru', 'modx-combo-language', 'core', 'language', '2024-04-12 10:40:55'),
('manager_login_url_alternate', '', 'textfield', 'core', 'authentication', NULL),
('manager_theme', 'default', 'modx-combo-manager-theme', 'core', 'manager', NULL),
('manager_time_format', 'g:i a', 'textfield', 'core', 'manager', NULL),
('manager_use_fullname', '', 'combo-boolean', 'core', 'manager', NULL),
('manager_week_start', '0', 'textfield', 'core', 'manager', NULL),
('mgr_source_icon', 'icon-folder-open-o', 'textfield', 'core', 'manager', NULL),
('mgr_tree_icon_context', 'tree-context', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_sort', 'name', 'textfield', 'core', 'manager', NULL),
('modx_browser_default_viewmode', 'grid', 'textfield', 'core', 'manager', NULL),
('modx_browser_tree_hide_files', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_browser_tree_hide_tooltips', '1', 'combo-boolean', 'core', 'manager', NULL),
('modx_charset', 'UTF-8', 'modx-combo-charset', 'core', 'language', NULL),
('package_installer_at_top', '1', 'combo-boolean', 'core', 'manager', NULL),
('parser_recurse_uncacheable', '1', 'combo-boolean', 'core', 'system', NULL),
('password_generated_length', '10', 'textfield', 'core', 'authentication', NULL),
('password_min_length', '8', 'textfield', 'core', 'authentication', NULL),
('phpthumb_allow_src_above_docroot', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxage', '30', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxfiles', '10000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_maxsize', '100', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_cache_source_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_document_root', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_bgcolor', 'CCCCFF', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_fontsize', '1', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_error_textcolor', 'FF0000', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_far', 'C', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_imagemagick_path', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_enabled', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_text_message', 'Off-server thumbnailing is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nohotlink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_enabled', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_erase_image', '1', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_require_refer', '', 'combo-boolean', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_text_message', 'Off-server linking is not allowed', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_valid_domains', '{http_host}', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_nooffsitelink_watermark_src', '', 'textfield', 'core', 'phpthumb', NULL),
('phpthumb_zoomcrop', '0', 'textfield', 'core', 'phpthumb', NULL),
('preserve_menuindex', '1', 'combo-boolean', 'core', 'manager', NULL),
('principal_targets', 'modAccessContext,modAccessResourceGroup,modAccessCategory,sources.modAccessMediaSource,modAccessNamespace', 'textfield', 'core', 'authentication', NULL),
('proxy_auth_type', 'BASIC', 'textfield', 'core', 'proxy', NULL),
('proxy_host', '', 'textfield', 'core', 'proxy', NULL),
('proxy_password', '', 'text-password', 'core', 'proxy', NULL),
('proxy_port', '', 'textfield', 'core', 'proxy', NULL),
('proxy_username', '', 'textfield', 'core', 'proxy', NULL),
('publish_default', '', 'combo-boolean', 'core', 'site', NULL),
('rb_base_dir', '', 'textfield', 'core', 'file', NULL),
('rb_base_url', '', 'textfield', 'core', 'file', NULL),
('request_controller', 'index.php', 'textfield', 'core', 'gateway', NULL),
('request_method_strict', '0', 'combo-boolean', 'core', 'gateway', NULL),
('request_param_alias', 'q', 'textfield', 'core', 'gateway', NULL),
('request_param_id', 'id', 'textfield', 'core', 'gateway', NULL),
('resolve_hostnames', '0', 'combo-boolean', 'core', 'system', NULL),
('resource_static_allow_absolute', '0', 'combo-boolean', 'core', 'static_resources', NULL),
('resource_static_path', '{assets_path}', 'textfield', 'core', 'static_resources', NULL),
('resource_tree_node_name', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_name_fallback', 'pagetitle', 'textfield', 'core', 'manager', NULL),
('resource_tree_node_tooltip', '', 'textfield', 'core', 'manager', NULL),
('richtext_default', '1', 'combo-boolean', 'core', 'manager', NULL),
('search_default', '1', 'combo-boolean', 'core', 'site', NULL),
('send_poweredby_header', '0', 'combo-boolean', 'core', 'system', NULL),
('server_offset_time', '0', 'textfield', 'core', 'system', NULL),
('server_protocol', 'http', 'textfield', 'core', 'system', NULL),
('session_cookie_domain', '', 'textfield', 'core', 'session', NULL),
('session_cookie_httponly', '1', 'combo-boolean', 'core', 'session', NULL),
('session_cookie_lifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_cookie_path', '', 'textfield', 'core', 'session', NULL),
('session_cookie_samesite', '', 'textfield', 'core', 'session', NULL),
('session_cookie_secure', '', 'combo-boolean', 'core', 'session', NULL),
('session_gc_maxlifetime', '604800', 'textfield', 'core', 'session', NULL),
('session_handler_class', 'modSessionHandler', 'textfield', 'core', 'session', NULL),
('session_name', '', 'textfield', 'core', 'session', NULL),
('set_header', '1', 'combo-boolean', 'core', 'system', NULL),
('settings_distro', 'traditional', 'textfield', 'core', 'system', NULL),
('settings_version', '2.8.7-pl', 'textfield', 'core', 'system', NULL),
('show_tv_categories_header', '1', 'combo-boolean', 'core', 'manager', NULL),
('signupemail_message', '<p>Hello [[+uid]],</p>\n    <p>Here are your login details for the [[+sname]] MODX Manager:</p>\n\n    <p>\n        <strong>Username:</strong> [[+uid]]<br />\n        <strong>Password:</strong> [[+pwd]]<br />\n    </p>\n\n    <p>Once you log into the MODX Manager at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('site_name', 'MODX Revolution', 'textfield', 'core', 'site', NULL),
('site_start', '1', 'textfield', 'core', 'site', NULL),
('site_status', '1', 'combo-boolean', 'core', 'site', NULL),
('site_unavailable_message', 'The site is currently unavailable', 'textfield', 'core', 'site', NULL),
('site_unavailable_page', '0', 'textfield', 'core', 'site', NULL),
('static_elements_automate_chunks', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_plugins', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_snippets', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_templates', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_automate_tvs', '0', 'combo-boolean', 'core', 'static_elements', NULL),
('static_elements_basepath', '', 'textfield', 'core', 'static_elements', NULL),
('static_elements_default_category', '0', 'modx-combo-category', 'core', 'static_elements', NULL),
('static_elements_default_mediasource', '0', 'modx-combo-source', 'core', 'static_elements', NULL),
('static_elements_html_extension', '.tpl', 'textfield', 'core', 'static_elements', NULL),
('strip_image_paths', '1', 'combo-boolean', 'core', 'file', NULL),
('symlink_merge_fields', '1', 'combo-boolean', 'core', 'site', NULL),
('syncsite_default', '1', 'combo-boolean', 'core', 'caching', NULL),
('topmenu_show_descriptions', '1', 'combo-boolean', 'core', 'manager', NULL),
('topmenu_subitems_max', '10', 'textfield', 'core', 'manager', NULL),
('tree_default_sort', 'menuindex', 'textfield', 'core', 'manager', NULL),
('tree_root_id', '0', 'numberfield', 'core', 'manager', NULL),
('tvs_below_content', '0', 'combo-boolean', 'core', 'manager', NULL),
('udperms_allowroot', '', 'combo-boolean', 'core', 'authentication', NULL),
('unauthorized_page', '1', 'textfield', 'core', 'site', NULL),
('upload_check_exists', '1', 'combo-boolean', 'core', 'file', NULL),
('upload_files', 'txt,html,htm,xml,js,js.map,css,scss,less,css.map,zip,gz,rar,z,tgz,tar,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,docx,xls,xlsx,ppt,pptx,jpg,jpeg,png,tiff,svg,svgz,gif,psd,ico,bmp,webp,avif,odt,ods,odp,odb,odg,odf,md,ttf,woff,woff2,eot', 'textfield', 'core', 'file', NULL),
('upload_flash', 'swf,fla', 'textfield', 'core', 'file', NULL),
('upload_images', 'jpg,jpeg,png,gif,psd,ico,bmp,tiff,svg,svgz,webp,avif', 'textfield', 'core', 'file', NULL),
('upload_maxsize', '67108864', 'textfield', 'core', 'file', '2024-04-12 10:40:55'),
('upload_media', 'mp3,wav,au,wmv,avi,mpg,mpeg', 'textfield', 'core', 'file', NULL),
('use_alias_path', '0', 'combo-boolean', 'core', 'furls', NULL),
('use_browser', '1', 'combo-boolean', 'core', 'file', NULL),
('use_context_resource_table', '1', 'combo-boolean', 'core', 'caching', NULL),
('use_editor', '1', 'combo-boolean', 'core', 'editor', NULL),
('use_frozen_parent_uris', '0', 'combo-boolean', 'core', 'furls', NULL),
('use_multibyte', '1', 'combo-boolean', 'core', 'language', '2024-04-12 10:40:55'),
('use_weblink_target', '', 'combo-boolean', 'core', 'site', NULL),
('user_nav_parent', 'usernav', 'textfield', 'core', 'manager', NULL),
('webpwdreminder_message', '<p>Hello [[+uid]],</p>\n\n    <p>To activate your new password click the following link:</p>\n\n    <p>[[+surl]]</p>\n\n    <p>If successful you can use the following password to login:</p>\n\n    <p><strong>Password:</strong> [[+pwd]]</p>\n\n    <p>If you did not request this email then please ignore it.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('websignupemail_message', '<p>Hello [[+uid]],</p>\n\n    <p>Here are your login details for [[+sname]]:</p>\n\n    <p><strong>Username:</strong> [[+uid]]<br />\n    <strong>Password:</strong> [[+pwd]]</p>\n\n    <p>Once you log into [[+sname]] at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>', 'textarea', 'core', 'authentication', NULL),
('welcome_action', 'welcome', 'textfield', 'core', 'manager', NULL),
('welcome_namespace', 'core', 'textfield', 'core', 'manager', NULL),
('welcome_screen', '', 'combo-boolean', 'core', 'manager', '2024-04-12 11:11:13'),
('welcome_screen_url', '//misc.modx.com/revolution/welcome.28.html', 'textfield', 'core', 'manager', NULL),
('which_editor', '', 'modx-combo-rte', 'core', 'editor', NULL),
('which_element_editor', 'Ace', 'modx-combo-rte', 'core', 'editor', '2024-04-12 11:12:04'),
('xhtml_urls', '1', 'combo-boolean', 'core', 'site', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_transport_packages`
--

CREATE TABLE `modx_transport_packages` (
  `signature` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `installed` datetime DEFAULT NULL,
  `state` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `workspace` int UNSIGNED NOT NULL DEFAULT '0',
  `provider` int UNSIGNED NOT NULL DEFAULT '0',
  `disabled` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `source` tinytext,
  `manifest` text,
  `attributes` mediumtext,
  `package_name` varchar(191) NOT NULL,
  `metadata` text,
  `version_major` smallint UNSIGNED NOT NULL DEFAULT '0',
  `version_minor` smallint UNSIGNED NOT NULL DEFAULT '0',
  `version_patch` smallint UNSIGNED NOT NULL DEFAULT '0',
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` smallint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_transport_providers`
--

CREATE TABLE `modx_transport_providers` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `service_url` tinytext,
  `username` varchar(191) NOT NULL DEFAULT '',
  `api_key` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `priority` tinyint NOT NULL DEFAULT '10',
  `properties` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_transport_providers`
--

INSERT INTO `modx_transport_providers` (`id`, `name`, `description`, `service_url`, `username`, `api_key`, `created`, `updated`, `active`, `priority`, `properties`) VALUES
(1, 'modx.com', 'The official MODX transport provider for 3rd party components.', 'https://rest.modx.com/extras/', '', '', '2024-04-09 09:52:01', NULL, 1, 10, ''),
(2, 'modstore.pro', 'Repository of modstore.pro', 'http://modstore.pro/extras/', '', '', '2024-04-12 11:12:00', NULL, 1, 10, '');

-- --------------------------------------------------------

--
-- Структура таблицы `modx_users`
--

CREATE TABLE `modx_users` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `cachepwd` varchar(255) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'modUser',
  `active` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `remote_key` varchar(191) DEFAULT NULL,
  `remote_data` text,
  `hash_class` varchar(100) NOT NULL DEFAULT 'hashing.modNative',
  `salt` varchar(100) NOT NULL DEFAULT '',
  `primary_group` int UNSIGNED NOT NULL DEFAULT '0',
  `session_stale` text,
  `sudo` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `createdon` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_users`
--

INSERT INTO `modx_users` (`id`, `username`, `password`, `cachepwd`, `class_key`, `active`, `remote_key`, `remote_data`, `hash_class`, `salt`, `primary_group`, `session_stale`, `sudo`, `createdon`) VALUES
(1, 'admin', '$2y$10$ykQOI.TTvQVdUqoB3I8.feTNhcRpw2tIS4rHHH0zaw5TBSzo69UF.', '', 'modUser', 1, NULL, NULL, 'hashing.modNative', 'c32b29002647b1e1305e59ad4b57435d', 1, NULL, 1, 1712918455);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_attributes`
--

CREATE TABLE `modx_user_attributes` (
  `id` int UNSIGNED NOT NULL,
  `internalKey` int NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `blockeduntil` int NOT NULL DEFAULT '0',
  `blockedafter` int NOT NULL DEFAULT '0',
  `logincount` int NOT NULL DEFAULT '0',
  `lastlogin` int NOT NULL DEFAULT '0',
  `thislogin` int NOT NULL DEFAULT '0',
  `failedlogincount` int NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int NOT NULL DEFAULT '0',
  `gender` int NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `country` varchar(191) NOT NULL DEFAULT '',
  `city` varchar(191) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(191) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `website` varchar(191) NOT NULL DEFAULT '',
  `extended` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_user_attributes`
--

INSERT INTO `modx_user_attributes` (`id`, `internalKey`, `fullname`, `email`, `phone`, `mobilephone`, `blocked`, `blockeduntil`, `blockedafter`, `logincount`, `lastlogin`, `thislogin`, `failedlogincount`, `sessionid`, `dob`, `gender`, `address`, `country`, `city`, `state`, `zip`, `fax`, `photo`, `comment`, `website`, `extended`) VALUES
(1, 1, 'Default Admin User', 'test@test.ru', '', '', 0, 0, 0, 1, 0, 1712920273, 0, '220ab9757bd214a8206f3fb95ae09997', 0, 0, '', '', '', '', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_group_roles`
--

CREATE TABLE `modx_user_group_roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `authority` int UNSIGNED NOT NULL DEFAULT '9999'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_user_group_roles`
--

INSERT INTO `modx_user_group_roles` (`id`, `name`, `description`, `authority`) VALUES
(1, 'Member', NULL, 9999),
(2, 'Super User', NULL, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_group_settings`
--

CREATE TABLE `modx_user_group_settings` (
  `group` int UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL,
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_messages`
--

CREATE TABLE `modx_user_messages` (
  `id` int UNSIGNED NOT NULL,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(191) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int NOT NULL DEFAULT '0',
  `recipient` int NOT NULL DEFAULT '0',
  `private` tinyint NOT NULL DEFAULT '0',
  `date_sent` datetime DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_user_settings`
--

CREATE TABLE `modx_user_settings` (
  `user` int NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `modx_workspaces`
--

CREATE TABLE `modx_workspaces` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL DEFAULT '',
  `path` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `attributes` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `modx_workspaces`
--

INSERT INTO `modx_workspaces` (`id`, `name`, `path`, `created`, `active`, `attributes`) VALUES
(1, 'Default MODX workspace', '{core_path}', '2024-04-12 10:40:52', 1, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_actions`
--
ALTER TABLE `modx_access_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_category`
--
ALTER TABLE `modx_access_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_context`
--
ALTER TABLE `modx_access_context`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`);

--
-- Индексы таблицы `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template` (`template`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `class` (`class`),
  ADD KEY `template` (`template`);

--
-- Индексы таблицы `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`,`target`,`principal`,`authority`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `target` (`target`),
  ADD KEY `principal_class` (`principal_class`),
  ADD KEY `principal` (`principal`),
  ADD KEY `authority` (`authority`),
  ADD KEY `policy` (`policy`),
  ADD KEY `context_key` (`context_key`);

--
-- Индексы таблицы `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `set` (`set`),
  ADD KEY `action` (`action`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`),
  ADD KEY `for_parent` (`for_parent`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_actions`
--
ALTER TABLE `modx_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `controller` (`controller`);

--
-- Индексы таблицы `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action` (`action`),
  ADD KEY `type` (`type`),
  ADD KEY `tab` (`tab`);

--
-- Индексы таблицы `modx_active_users`
--
ALTER TABLE `modx_active_users`
  ADD PRIMARY KEY (`internalKey`);

--
-- Индексы таблицы `modx_categories`
--
ALTER TABLE `modx_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category` (`parent`,`category`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_categories_closure`
--
ALTER TABLE `modx_categories_closure`
  ADD PRIMARY KEY (`ancestor`,`descendant`);

--
-- Индексы таблицы `modx_class_map`
--
ALTER TABLE `modx_class_map`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class` (`class`),
  ADD KEY `parent_class` (`parent_class`),
  ADD KEY `name_field` (`name_field`);

--
-- Индексы таблицы `modx_content_type`
--
ALTER TABLE `modx_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_context`
--
ALTER TABLE `modx_context`
  ADD PRIMARY KEY (`key`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_context_resource`
--
ALTER TABLE `modx_context_resource`
  ADD PRIMARY KEY (`context_key`,`resource`);

--
-- Индексы таблицы `modx_context_setting`
--
ALTER TABLE `modx_context_setting`
  ADD PRIMARY KEY (`context_key`,`key`);

--
-- Индексы таблицы `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `hide_trees` (`hide_trees`);

--
-- Индексы таблицы `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `type` (`type`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `lexicon` (`lexicon`);

--
-- Индексы таблицы `modx_dashboard_widget_placement`
--
ALTER TABLE `modx_dashboard_widget_placement`
  ADD PRIMARY KEY (`dashboard`,`widget`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_group` (`document_group`),
  ADD KEY `document` (`document`);

--
-- Индексы таблицы `modx_element_property_sets`
--
ALTER TABLE `modx_element_property_sets`
  ADD PRIMARY KEY (`element`,`element_class`,`property_set`);

--
-- Индексы таблицы `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `rank` (`rank`),
  ADD KEY `active` (`active`);

--
-- Индексы таблицы `modx_fc_profiles_usergroups`
--
ALTER TABLE `modx_fc_profiles_usergroups`
  ADD PRIMARY KEY (`usergroup`,`profile`);

--
-- Индексы таблицы `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profile` (`profile`),
  ADD KEY `action` (`action`),
  ADD KEY `active` (`active`),
  ADD KEY `template` (`template`);

--
-- Индексы таблицы `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `topic` (`topic`),
  ADD KEY `namespace` (`namespace`),
  ADD KEY `language` (`language`);

--
-- Индексы таблицы `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_occurred` (`user`,`occurred`);

--
-- Индексы таблицы `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `is_stream` (`is_stream`);

--
-- Индексы таблицы `modx_media_sources_contexts`
--
ALTER TABLE `modx_media_sources_contexts`
  ADD PRIMARY KEY (`source`,`context_key`);

--
-- Индексы таблицы `modx_media_sources_elements`
--
ALTER TABLE `modx_media_sources_elements`
  ADD PRIMARY KEY (`source`,`object`,`object_class`,`context_key`);

--
-- Индексы таблицы `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `parent` (`parent`),
  ADD KEY `rank` (`rank`),
  ADD KEY `dashboard` (`dashboard`);

--
-- Индексы таблицы `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`),
  ADD KEY `rank` (`rank`);

--
-- Индексы таблицы `modx_menus`
--
ALTER TABLE `modx_menus`
  ADD PRIMARY KEY (`text`),
  ADD KEY `parent` (`parent`),
  ADD KEY `action` (`action`),
  ADD KEY `namespace` (`namespace`);

--
-- Индексы таблицы `modx_moddevtools_link`
--
ALTER TABLE `modx_moddevtools_link`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_link` (`parent`,`child`,`link_type`);

--
-- Индексы таблицы `modx_ms2_category_options`
--
ALTER TABLE `modx_ms2_category_options`
  ADD PRIMARY KEY (`option_id`,`category_id`),
  ADD KEY `rank` (`rank`),
  ADD KEY `active` (`active`),
  ADD KEY `required` (`required`);
ALTER TABLE `modx_ms2_category_options` ADD FULLTEXT KEY `value_ft` (`value`);

--
-- Индексы таблицы `modx_ms2_customer_profiles`
--
ALTER TABLE `modx_ms2_customer_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `referrer_code` (`referrer_code`),
  ADD KEY `referrer_id` (`referrer_id`),
  ADD KEY `spent` (`spent`);

--
-- Индексы таблицы `modx_ms2_deliveries`
--
ALTER TABLE `modx_ms2_deliveries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_ms2_delivery_payments`
--
ALTER TABLE `modx_ms2_delivery_payments`
  ADD PRIMARY KEY (`delivery_id`,`payment_id`);

--
-- Индексы таблицы `modx_ms2_links`
--
ALTER TABLE `modx_ms2_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Индексы таблицы `modx_ms2_options`
--
ALTER TABLE `modx_ms2_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`type`),
  ADD KEY `category` (`category`);
ALTER TABLE `modx_ms2_options` ADD FULLTEXT KEY `caption_ft` (`caption`);

--
-- Индексы таблицы `modx_ms2_orders`
--
ALTER TABLE `modx_ms2_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `status` (`status`),
  ADD KEY `type` (`type`);

--
-- Индексы таблицы `modx_ms2_order_addresses`
--
ALTER TABLE `modx_ms2_order_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `modx_ms2_order_logs`
--
ALTER TABLE `modx_ms2_order_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `modx_ms2_order_products`
--
ALTER TABLE `modx_ms2_order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `modx_ms2_order_statuses`
--
ALTER TABLE `modx_ms2_order_statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `active` (`active`);

--
-- Индексы таблицы `modx_ms2_payments`
--
ALTER TABLE `modx_ms2_payments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_ms2_products`
--
ALTER TABLE `modx_ms2_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article` (`article`),
  ADD KEY `price` (`price`),
  ADD KEY `old_price` (`old_price`),
  ADD KEY `vendor` (`vendor`),
  ADD KEY `new` (`new`),
  ADD KEY `favorite` (`favorite`),
  ADD KEY `popular` (`popular`),
  ADD KEY `made_in` (`made_in`);

--
-- Индексы таблицы `modx_ms2_product_categories`
--
ALTER TABLE `modx_ms2_product_categories`
  ADD PRIMARY KEY (`product_id`,`category_id`);

--
-- Индексы таблицы `modx_ms2_product_files`
--
ALTER TABLE `modx_ms2_product_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `type` (`type`),
  ADD KEY `parent` (`parent`),
  ADD KEY `hash` (`hash`),
  ADD KEY `active` (`active`);

--
-- Индексы таблицы `modx_ms2_product_links`
--
ALTER TABLE `modx_ms2_product_links`
  ADD PRIMARY KEY (`link`,`master`,`slave`);

--
-- Индексы таблицы `modx_ms2_product_options`
--
ALTER TABLE `modx_ms2_product_options`
  ADD KEY `product` (`product_id`,`key`);

--
-- Индексы таблицы `modx_ms2_vendors`
--
ALTER TABLE `modx_ms2_vendors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_namespaces`
--
ALTER TABLE `modx_namespaces`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `modx_property_set`
--
ALTER TABLE `modx_property_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`);

--
-- Индексы таблицы `modx_register_messages`
--
ALTER TABLE `modx_register_messages`
  ADD PRIMARY KEY (`topic`,`id`),
  ADD KEY `created` (`created`),
  ADD KEY `valid` (`valid`),
  ADD KEY `accessed` (`accessed`),
  ADD KEY `accesses` (`accesses`),
  ADD KEY `expires` (`expires`);

--
-- Индексы таблицы `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Индексы таблицы `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `queue` (`queue`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `modx_session`
--
ALTER TABLE `modx_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `access` (`access`);

--
-- Индексы таблицы `modx_site_content`
--
ALTER TABLE `modx_site_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alias` (`alias`),
  ADD KEY `published` (`published`),
  ADD KEY `pub_date` (`pub_date`),
  ADD KEY `unpub_date` (`unpub_date`),
  ADD KEY `parent` (`parent`),
  ADD KEY `isfolder` (`isfolder`),
  ADD KEY `template` (`template`),
  ADD KEY `menuindex` (`menuindex`),
  ADD KEY `searchable` (`searchable`),
  ADD KEY `cacheable` (`cacheable`),
  ADD KEY `hidemenu` (`hidemenu`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `context_key` (`context_key`),
  ADD KEY `uri` (`uri`(191)),
  ADD KEY `uri_override` (`uri_override`),
  ADD KEY `hide_children_in_tree` (`hide_children_in_tree`),
  ADD KEY `show_in_tree` (`show_in_tree`),
  ADD KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`);
ALTER TABLE `modx_site_content` ADD FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`);

--
-- Индексы таблицы `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_plugin_events`
--
ALTER TABLE `modx_site_plugin_events`
  ADD PRIMARY KEY (`pluginid`,`event`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `moduleguid` (`moduleguid`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `templatename` (`templatename`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `category` (`category`),
  ADD KEY `locked` (`locked`),
  ADD KEY `rank` (`rank`),
  ADD KEY `static` (`static`);

--
-- Индексы таблицы `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tmplvar_template` (`tmplvarid`,`documentgroup`);

--
-- Индексы таблицы `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tv_cnt` (`tmplvarid`,`contentid`),
  ADD KEY `tmplvarid` (`tmplvarid`),
  ADD KEY `contentid` (`contentid`);

--
-- Индексы таблицы `modx_site_tmplvar_templates`
--
ALTER TABLE `modx_site_tmplvar_templates`
  ADD PRIMARY KEY (`tmplvarid`,`templateid`);

--
-- Индексы таблицы `modx_system_eventnames`
--
ALTER TABLE `modx_system_eventnames`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `modx_system_settings`
--
ALTER TABLE `modx_system_settings`
  ADD PRIMARY KEY (`key`);

--
-- Индексы таблицы `modx_transport_packages`
--
ALTER TABLE `modx_transport_packages`
  ADD PRIMARY KEY (`signature`),
  ADD KEY `workspace` (`workspace`),
  ADD KEY `provider` (`provider`),
  ADD KEY `disabled` (`disabled`),
  ADD KEY `package_name` (`package_name`),
  ADD KEY `version_major` (`version_major`),
  ADD KEY `version_minor` (`version_minor`),
  ADD KEY `version_patch` (`version_patch`),
  ADD KEY `release` (`release`),
  ADD KEY `release_index` (`release_index`);

--
-- Индексы таблицы `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `api_key` (`api_key`),
  ADD KEY `username` (`username`),
  ADD KEY `active` (`active`),
  ADD KEY `priority` (`priority`);

--
-- Индексы таблицы `modx_users`
--
ALTER TABLE `modx_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `class_key` (`class_key`),
  ADD KEY `remote_key` (`remote_key`),
  ADD KEY `primary_group` (`primary_group`);

--
-- Индексы таблицы `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `internalKey` (`internalKey`);

--
-- Индексы таблицы `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `authority` (`authority`);

--
-- Индексы таблицы `modx_user_group_settings`
--
ALTER TABLE `modx_user_group_settings`
  ADD PRIMARY KEY (`group`,`key`);

--
-- Индексы таблицы `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `modx_user_settings`
--
ALTER TABLE `modx_user_settings`
  ADD PRIMARY KEY (`user`,`key`);

--
-- Индексы таблицы `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `path` (`path`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `modx_access_actiondom`
--
ALTER TABLE `modx_access_actiondom`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_actions`
--
ALTER TABLE `modx_access_actions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_category`
--
ALTER TABLE `modx_access_category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_context`
--
ALTER TABLE `modx_access_context`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `modx_access_elements`
--
ALTER TABLE `modx_access_elements`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_media_source`
--
ALTER TABLE `modx_access_media_source`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_menus`
--
ALTER TABLE `modx_access_menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_namespace`
--
ALTER TABLE `modx_access_namespace`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_permissions`
--
ALTER TABLE `modx_access_permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- AUTO_INCREMENT для таблицы `modx_access_policies`
--
ALTER TABLE `modx_access_policies`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `modx_access_policy_templates`
--
ALTER TABLE `modx_access_policy_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `modx_access_policy_template_groups`
--
ALTER TABLE `modx_access_policy_template_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `modx_access_resources`
--
ALTER TABLE `modx_access_resources`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_resource_groups`
--
ALTER TABLE `modx_access_resource_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_access_templatevars`
--
ALTER TABLE `modx_access_templatevars`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_actiondom`
--
ALTER TABLE `modx_actiondom`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_actions`
--
ALTER TABLE `modx_actions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_actions_fields`
--
ALTER TABLE `modx_actions_fields`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT для таблицы `modx_categories`
--
ALTER TABLE `modx_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `modx_class_map`
--
ALTER TABLE `modx_class_map`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `modx_content_type`
--
ALTER TABLE `modx_content_type`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `modx_dashboard`
--
ALTER TABLE `modx_dashboard`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_dashboard_widget`
--
ALTER TABLE `modx_dashboard_widget`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `modx_documentgroup_names`
--
ALTER TABLE `modx_documentgroup_names`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_document_groups`
--
ALTER TABLE `modx_document_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_extension_packages`
--
ALTER TABLE `modx_extension_packages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_fc_profiles`
--
ALTER TABLE `modx_fc_profiles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_fc_sets`
--
ALTER TABLE `modx_fc_sets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_lexicon_entries`
--
ALTER TABLE `modx_lexicon_entries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_manager_log`
--
ALTER TABLE `modx_manager_log`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `modx_media_sources`
--
ALTER TABLE `modx_media_sources`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_membergroup_names`
--
ALTER TABLE `modx_membergroup_names`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_member_groups`
--
ALTER TABLE `modx_member_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_moddevtools_link`
--
ALTER TABLE `modx_moddevtools_link`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_ms2_deliveries`
--
ALTER TABLE `modx_ms2_deliveries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_ms2_links`
--
ALTER TABLE `modx_ms2_links`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_ms2_options`
--
ALTER TABLE `modx_ms2_options`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_ms2_orders`
--
ALTER TABLE `modx_ms2_orders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_ms2_order_addresses`
--
ALTER TABLE `modx_ms2_order_addresses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_ms2_order_logs`
--
ALTER TABLE `modx_ms2_order_logs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_ms2_order_products`
--
ALTER TABLE `modx_ms2_order_products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_ms2_order_statuses`
--
ALTER TABLE `modx_ms2_order_statuses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `modx_ms2_payments`
--
ALTER TABLE `modx_ms2_payments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_ms2_products`
--
ALTER TABLE `modx_ms2_products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `modx_ms2_product_files`
--
ALTER TABLE `modx_ms2_product_files`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `modx_ms2_vendors`
--
ALTER TABLE `modx_ms2_vendors`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_property_set`
--
ALTER TABLE `modx_property_set`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_register_queues`
--
ALTER TABLE `modx_register_queues`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_register_topics`
--
ALTER TABLE `modx_register_topics`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_site_content`
--
ALTER TABLE `modx_site_content`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `modx_site_htmlsnippets`
--
ALTER TABLE `modx_site_htmlsnippets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `modx_site_plugins`
--
ALTER TABLE `modx_site_plugins`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `modx_site_snippets`
--
ALTER TABLE `modx_site_snippets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `modx_site_templates`
--
ALTER TABLE `modx_site_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvars`
--
ALTER TABLE `modx_site_tmplvars`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvar_access`
--
ALTER TABLE `modx_site_tmplvar_access`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_site_tmplvar_contentvalues`
--
ALTER TABLE `modx_site_tmplvar_contentvalues`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_transport_providers`
--
ALTER TABLE `modx_transport_providers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_users`
--
ALTER TABLE `modx_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_user_attributes`
--
ALTER TABLE `modx_user_attributes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `modx_user_group_roles`
--
ALTER TABLE `modx_user_group_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `modx_user_messages`
--
ALTER TABLE `modx_user_messages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `modx_workspaces`
--
ALTER TABLE `modx_workspaces`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
