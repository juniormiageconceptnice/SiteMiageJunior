-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Ven 02 Juin 2017 à 01:00
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mdb_france`
--

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_assets`
--

CREATE TABLE `prfwj_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `prfwj_assets`
--

INSERT INTO `prfwj_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 265, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 68, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 69, 70, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 71, 72, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 73, 74, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 75, 76, 1, 'com_login', 'com_login', '{}'),
(13, 1, 77, 78, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 79, 80, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 81, 82, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 83, 84, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 85, 86, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 87, 144, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 145, 148, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 149, 150, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 151, 152, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 153, 154, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 155, 156, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 157, 160, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 161, 164, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 165, 166, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 35, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 146, 147, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 162, 163, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 158, 159, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 167, 168, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 169, 170, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 171, 172, 1, 'com_bt_socialconnect', 'bt_socialconnect', '{}'),
(36, 27, 19, 20, 3, 'com_content.article.1', 'Pricing', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(37, 27, 21, 22, 3, 'com_content.article.2', 'Pricing2', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(38, 8, 36, 47, 2, 'com_content.category.8', 'Demo', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(39, 38, 37, 38, 3, 'com_content.article.3', 'Vivamus porta orci eu turpis vulputate ornare fusce hendrerit arcu risu', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(40, 38, 39, 40, 3, 'com_content.article.4', 'Nulla sapien leo, placerat sed lacinia nec, rutrum quis', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(41, 38, 41, 42, 3, 'com_content.article.5', 'Lorem ipsum dolor sit amet consectetur adipiscing elit', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(42, 38, 43, 44, 3, 'com_content.article.6', 'Donec sagittis sit amet erat non eleifend auris at convallis', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(43, 27, 23, 24, 3, 'com_content.article.7', 'FAQs', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(44, 45, 49, 50, 3, 'com_content.article.8', 'Natalie Jenkins', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(45, 8, 48, 55, 2, 'com_content.category.9', 'Testimonials', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(46, 8, 56, 67, 2, 'com_content.category.10', 'FAQs', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(47, 45, 51, 52, 3, 'com_content.article.9', 'Thomas Nguyen', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(48, 45, 53, 54, 3, 'com_content.article.10', 'Christian Tran', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(49, 46, 57, 58, 3, 'com_content.article.11', 'Suspendisse eleifend massa commodo porta lacus bibendum?', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(50, 46, 65, 66, 3, 'com_content.article.12', 'Nullam cursus non mauris vitae ultrices. Ut ut felis dolor?', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(51, 46, 63, 64, 3, 'com_content.article.13', 'Etiam dapibus lorem nec accumsan tempus', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(52, 46, 61, 62, 3, 'com_content.article.14', 'Duis a convallis ipsum. Cras nec molestie ipsum, quis fermentum augue', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(53, 46, 59, 60, 3, 'com_content.article.15', 'Aliquam eget quam iaculis, sodales tellus non, gravida turpis', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(55, 1, 173, 248, 1, 'com_bt_property', 'bt_property', '{"core.admin":[],"core.manage":[],"core.create":{"10":1,"12":1},"core.edit":[],"core.edit.state":[],"core.edit.own":{"10":1,"12":1},"core.delete":[],"property.delete.own":{"10":1,"12":1},"property.upload.media":{"10":1}}'),
(56, 27, 25, 26, 3, 'com_content.article.16', 'About us', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(57, 18, 88, 89, 2, 'com_modules.module.113', 'Price Drop', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(58, 18, 90, 91, 2, 'com_modules.module.101', 'Our Services', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(59, 18, 92, 93, 2, 'com_modules.module.123', 'New Properties for You', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(60, 18, 94, 95, 2, 'com_modules.module.100', 'Testimonials', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(61, 18, 96, 97, 2, 'com_modules.module.108', 'Our Partners', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(62, 18, 98, 99, 2, 'com_modules.module.115', 'Slider Homepage', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(63, 38, 45, 46, 3, 'com_content.article.17', 'Velit nec aliquam dictum tortor velit dictum ipsumnunc leo nec', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(64, 18, 100, 101, 2, 'com_modules.module.109', 'Search Your Property', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(65, 18, 102, 103, 2, 'com_modules.module.105', 'Property Google Map', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(68, 18, 104, 105, 2, 'com_modules.module.104', 'Search Properties', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(69, 18, 106, 107, 2, 'com_modules.module.120', 'Featured Properties', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(70, 55, 230, 233, 2, 'com_bt_property.category.1', 'com_bt_property.category.1', '{"core.create":{"6":1,"3":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1},"core.delete":{"6":1},"property.delete.own":[]}'),
(71, 55, 234, 239, 2, 'com_bt_property.category.2', 'com_bt_property.category.2', '{"core.create":{"6":1,"3":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1},"core.delete":{"6":1},"property.delete.own":[]}'),
(72, 55, 240, 243, 2, 'com_bt_property.category.4', 'com_bt_property.category.4', '{"core.create":{"6":1,"3":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1},"core.delete":{"6":1},"property.delete.own":[]}'),
(73, 55, 244, 247, 2, 'com_bt_property.category.5', 'com_bt_property.category.5', '{"core.create":{"6":1,"3":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1},"core.delete":{"6":1},"property.delete.own":[]}'),
(74, 71, 235, 236, 3, 'com_bt_property.property.4', 'com_bt_property.property.4', '{"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1},"core.delete":{"6":1},"property.delete.own":[]}'),
(75, 73, 245, 246, 3, 'com_bt_property.property.19', 'com_bt_property.property.19', '{"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1},"core.delete":{"6":1},"property.delete.own":[]}'),
(76, 18, 108, 109, 2, 'com_modules.module.89', 'BT Social Connect - Login', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(77, 18, 110, 111, 2, 'com_modules.module.129', 'Search Your Property - Floated', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(78, 18, 112, 113, 2, 'com_modules.module.124', 'Search Your Property - Slider', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(79, 18, 114, 115, 2, 'com_modules.module.121', 'Search Your Property - Advanced', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(80, 1, 253, 254, 1, 'com_tags', 'com_tags', '{}'),
(81, 1, 255, 256, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(82, 1, 257, 258, 1, 'com_ajax', 'com_ajax', '{}'),
(83, 1, 259, 260, 1, 'com_postinstall', 'com_postinstall', '{}'),
(84, 18, 116, 117, 2, 'com_modules.module.133', 'Slider Homepage - Right', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(85, 18, 118, 119, 2, 'com_modules.module.111', 'Add your property', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(86, 18, 120, 121, 2, 'com_modules.module.122', 'Recent Properties', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(87, 18, 122, 123, 2, 'com_modules.module.114', 'Featured Properties', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(88, 18, 124, 125, 2, 'com_modules.module.125', 'Property Google Accueil', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(89, 18, 126, 127, 2, 'com_modules.module.17', 'Breadcrumbs', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(90, 18, 128, 129, 2, 'com_modules.module.132', 'Account', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(91, 72, 241, 242, 3, 'com_bt_property.property.26', 'com_bt_property.property.26', '{"core.edit":[],"core.edit.state":[],"core.edit.own":[],"core.delete":[],"property.delete.own":[]}'),
(92, 18, 130, 131, 2, 'com_modules.module.95', 'About us', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(94, 70, 231, 232, 3, 'com_bt_property.property.37', 'com_bt_property.property.37', '{"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1},"core.delete":{"6":1},"property.delete.own":[]}'),
(95, 18, 132, 133, 2, 'com_modules.module.127', 'Property Google Map Fix Navigation', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(96, 18, 134, 135, 2, 'com_modules.module.94', 'Copyright', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(97, 18, 136, 137, 2, 'com_modules.module.92', 'Contact', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(98, 18, 138, 139, 2, 'com_modules.module.93', 'Lien utile', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(99, 18, 140, 141, 2, 'com_modules.module.87', 'Contact Top', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(100, 18, 142, 143, 2, 'com_modules.module.88', 'Nous sommes ici !', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(101, 27, 27, 28, 3, 'com_content.article.18', 'Vision large du site ', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(102, 27, 29, 30, 3, 'com_content.article.19', 'Accède et génère les factures', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(103, 27, 31, 32, 3, 'com_content.article.20', 'Modifier les prix des abonnements', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(104, 27, 33, 34, 3, 'com_content.article.21', 'ListeDesBiens', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(105, 1, 261, 262, 1, 'com_fields', 'com_fields', '{}'),
(106, 1, 263, 264, 1, 'com_associations', 'com_associations', '{}'),
(107, 71, 237, 238, 3, 'com_bt_property.property.54', 'com_bt_property.property.54', '{}');

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_associations`
--

CREATE TABLE `prfwj_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_banners`
--

CREATE TABLE `prfwj_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_banner_clients`
--

CREATE TABLE `prfwj_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_banner_tracks`
--

CREATE TABLE `prfwj_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_bt_channels`
--

CREATE TABLE `prfwj_bt_channels` (
  `id` int(11) NOT NULL,
  `title` varchar(225) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `type` varchar(225) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `description` text,
  `params` text,
  `published` tinyint(4) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_bt_connections`
--

CREATE TABLE `prfwj_bt_connections` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `social_id` varchar(255) NOT NULL,
  `social_type` varchar(255) NOT NULL,
  `access_token` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `enabled_publishing` tinyint(4) DEFAULT NULL,
  `created_time` datetime NOT NULL,
  `updated_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_bt_messages`
--

CREATE TABLE `prfwj_bt_messages` (
  `id` int(11) NOT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(250) NOT NULL,
  `url` varchar(250) NOT NULL,
  `message` text,
  `trigger` varchar(20) DEFAULT NULL,
  `published` tinyint(4) DEFAULT NULL,
  `log` text,
  `event` int(11) NOT NULL,
  `scron` text,
  `schedule` varchar(250) NOT NULL,
  `sent_time` datetime DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `chanel_id` int(11) NOT NULL,
  `message_type` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_bt_properties`
--

CREATE TABLE `prfwj_bt_properties` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `youembed` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `description` text,
  `full_description` text,
  `url` varchar(255) DEFAULT NULL,
  `featured` int(3) NOT NULL DEFAULT '0',
  `hits` int(25) NOT NULL,
  `published` int(1) NOT NULL DEFAULT '1',
  `vote_count` int(11) NOT NULL DEFAULT '0',
  `vote_sum` int(11) NOT NULL DEFAULT '0',
  `review_count` int(11) NOT NULL DEFAULT '0',
  `created` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(10) DEFAULT NULL,
  `language` char(7) DEFAULT NULL,
  `extra_fields` text,
  `params` text,
  `address` varchar(255) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `zoomlevel` int(11) DEFAULT NULL,
  `markericon` varchar(255) DEFAULT NULL,
  `price` decimal(16,2) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `allow_rating` tinyint(4) DEFAULT NULL,
  `location_lv1` int(11) DEFAULT NULL,
  `location_lv3` int(11) DEFAULT NULL,
  `location_lv2` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `ribbon` varchar(50) DEFAULT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `price_time` varchar(40) DEFAULT NULL,
  `currency` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `prfwj_bt_properties`
--

INSERT INTO `prfwj_bt_properties` (`id`, `asset_id`, `catid`, `title`, `image`, `youembed`, `alias`, `description`, `full_description`, `url`, `featured`, `hits`, `published`, `vote_count`, `vote_sum`, `review_count`, `created`, `created_by`, `modified`, `modified_by`, `ordering`, `checked_out`, `checked_out_time`, `access`, `language`, `extra_fields`, `params`, `address`, `latitude`, `longitude`, `zoomlevel`, `markericon`, `price`, `agent_id`, `allow_rating`, `location_lv1`, `location_lv3`, `location_lv2`, `status`, `ribbon`, `agency_id`, `price_time`, `currency`) VALUES
(3, 97, 5, 'Limestone Estate', 'tmp1407983894property-detail-01.jpg', '', 'limestone-estate', 'Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim...', '<p>Integer fermentum felis ac bibendum porta. Aenean at est gravida, consequat sapien vitae, sollicitudin nisl. Nullam interdum mollis nunc, sit amet dapibus mauris elementum id. Ut tempus aliquam nisl id ultricies. Donec varius vestibulum leo, faucibus venenatis magna semper ac. Morbi id euismod lacus, nec dictum purus. Phasellus at ligula nec augue placerat tincidunt ut at magna. Nulla facilisi.</p>\r\n<p>Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim. Sed tempor nibh ut dictum lobortis. Integer at imperdiet mauris, quis vehicula orci. Aliquam molestie est mauris, vel aliquam mi ultricies at. Mauris laoreet lobortis libero volutpat viverra. Aliquam convallis lacus eget dui porta rhoncus.</p>', NULL, 1, 130, 1, 0, 0, 1, '2014-08-13', 818, '2016-11-29', 313, 1, 0, '0000-00-00 00:00:00', 1, '*', 'a:7:{i:1;s:4:"1000";i:5;s:1:"3";i:6;s:1:"2";i:7;s:1:"1";i:9;a:8:{i:0;s:8:"Internet";i:1;s:11:"Use of pool";i:2;s:8:"Cable TV";i:3;s:5:"Beach";i:4;s:7:"Balcony";i:5;s:7:"Parquet";i:6;s:9:"Microwave";i:7;s:15:"Smoking allowed";}i:13;s:233:"<div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>";i:12;s:280:"<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" border="0" alt="" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" border="0" alt="" /></a></p>";}', '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', 'Golden Valley, MN 55427', '45.0155422', '-93.37679759999997', 6, '', '12000.00', 315, 1, 222, 0, 0, '252', '', NULL, '', ''),
(5, 96, 3, '3705 Brighton Circle Road', 'tmp1407985903property-detail-01.jpg', '', '3705-brighton-circle-road', 'Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim...', 'Integer fermentum felis ac bibendum porta. Aenean at est gravida, consequat sapien vitae, sollicitudin nisl. Nullam interdum mollis nunc, sit amet dapibus mauris elementum id. Ut tempus aliquam nisl id ultricies. Donec varius vestibulum leo, faucibus venenatis magna semper ac. Morbi id euismod lacus, nec dictum purus. Phasellus at ligula nec augue placerat tincidunt ut at magna. Nulla facilisi.\r\nSed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim. Sed tempor nibh ut dictum lobortis. Integer at imperdiet mauris, quis vehicula orci. Aliquam molestie est mauris, vel aliquam mi ultricies at. Mauris laoreet lobortis libero volutpat viverra. Aliquam convallis lacus eget dui porta rhoncus.', NULL, 1, 98, 1, 0, 0, 0, '2014-08-14', 313, '2016-11-29', 313, 3, 0, '0000-00-00 00:00:00', 1, '*', 'a:7:{i:1;s:4:"1000";i:5;s:1:"3";i:6;s:1:"2";i:7;s:1:"1";i:9;a:8:{i:0;s:8:"Internet";i:1;s:11:"Use of pool";i:2;s:8:"Cable TV";i:3;s:5:"Beach";i:4;s:7:"Balcony";i:5;s:7:"Parquet";i:6;s:9:"Microwave";i:7;s:15:"Smoking allowed";}i:13;s:233:"<div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>";i:12;s:280:"<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" border="0" alt="" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" border="0" alt="" /></a></p>";}', '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', '3705 Brighton Circle Road, Clarksburg, WV, United States', '39.8498668', '-76.71929590000002', 7, '', '12000.00', 315, 1, 222, 258, 0, '252', '', NULL, '', ''),
(8, 98, 1, '6477 Zuma View Pl', 'tmp1411702771slide-three.jpg', '', '6477-zuma-view-pl', 'Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim...', '<p>Integer fermentum felis ac bibendum porta. Aenean at est gravida, consequat sapien vitae, sollicitudin nisl. Nullam interdum mollis nunc, sit amet dapibus mauris elementum id. Ut tempus aliquam nisl id ultricies. Donec varius vestibulum leo, faucibus venenatis magna semper ac. Morbi id euismod lacus, nec dictum purus. Phasellus at ligula nec augue placerat tincidunt ut at magna. Nulla facilisi.</p>\r\n<p>Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim. Sed tempor nibh ut dictum lobortis. Integer at imperdiet mauris, quis vehicula orci. Aliquam molestie est mauris, vel aliquam mi ultricies at. Mauris laoreet lobortis libero volutpat viverra. Aliquam convallis lacus eget dui porta rhoncus.</p>', NULL, 1, 87, 1, 0, 0, 0, '2014-08-13', 313, '2016-11-29', 313, 6, 0, '0000-00-00 00:00:00', 1, '*', 'a:7:{i:1;s:4:"1000";i:5;s:1:"4";i:6;s:1:"2";i:7;s:1:"1";i:9;a:8:{i:0;s:8:"Internet";i:1;s:11:"Use of pool";i:2;s:8:"Cable TV";i:3;s:5:"Beach";i:4;s:7:"Balcony";i:5;s:7:"Parquet";i:6;s:9:"Microwave";i:7;s:15:"Smoking allowed";}i:13;s:233:"<div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>";i:12;s:280:"<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" border="0" alt="" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" border="0" alt="" /></a></p>";}', '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', 'Golden Valley, MN 55427', '48.872427584709904', '2.2962656402587527', 8, '', '62000.00', 315, 1, 73, 0, 270, '252', 'Sold', NULL, '', ''),
(9, 99, 3, ' 71 Sunny St Mission Viejo', 'tmp1411702796slide-two.jpg', '', '71-sunny-st-mission-viejo', 'Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim...', '<p>Integer fermentum felis ac bibendum porta. Aenean at est gravida, consequat sapien vitae, sollicitudin nisl. Nullam interdum mollis nunc, sit amet dapibus mauris elementum id. Ut tempus aliquam nisl id ultricies. Donec varius vestibulum leo, faucibus venenatis magna semper ac. Morbi id euismod lacus, nec dictum purus. Phasellus at ligula nec augue placerat tincidunt ut at magna. Nulla facilisi.</p>\r\n<p>Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim. Sed tempor nibh ut dictum lobortis. Integer at imperdiet mauris, quis vehicula orci. Aliquam molestie est mauris, vel aliquam mi ultricies at. Mauris laoreet lobortis libero volutpat viverra. Aliquam convallis lacus eget dui porta rhoncus.</p>', NULL, 1, 111, 1, 0, 0, 0, '2014-08-13', 313, '2016-11-29', 313, 7, 0, '0000-00-00 00:00:00', 1, '*', 'a:7:{i:1;s:4:"1000";i:5;s:1:"3";i:6;s:1:"2";i:7;s:1:"1";i:9;a:8:{i:0;s:8:"Internet";i:1;s:11:"Use of pool";i:2;s:8:"Cable TV";i:3;s:5:"Beach";i:4;s:7:"Balcony";i:5;s:7:"Parquet";i:6;s:9:"Microwave";i:7;s:15:"Smoking allowed";}i:13;s:233:"<div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>";i:12;s:280:"<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" border="0" alt="" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" border="0" alt="" /></a></p>";}', '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', ' 71 Sunny St Mission Viejo', '33.5886028', '-117.62387139999998', 5, '', '12000.00', 315, 1, 222, 0, 0, '252', '', NULL, '', ''),
(10, 100, 5, '987 Cantebury Drive ', 'tmp1411702832slide-one.jpg', '', '987-cantebury-drive-6', 'Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim...', '<p>Integer fermentum felis ac bibendum porta. Aenean at est gravida, consequat sapien vitae, sollicitudin nisl. Nullam interdum mollis nunc, sit amet dapibus mauris elementum id. Ut tempus aliquam nisl id ultricies. Donec varius vestibulum leo, faucibus venenatis magna semper ac. Morbi id euismod lacus, nec dictum purus. Phasellus at ligula nec augue placerat tincidunt ut at magna. Nulla facilisi.</p>\r\n<p>Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim. Sed tempor nibh ut dictum lobortis. Integer at imperdiet mauris, quis vehicula orci. Aliquam molestie est mauris, vel aliquam mi ultricies at. Mauris laoreet lobortis libero volutpat viverra. Aliquam convallis lacus eget dui porta rhoncus.</p>', NULL, 1, 122, 1, 0, 0, 0, '2014-08-13', 313, '2016-11-29', 313, 8, 0, '0000-00-00 00:00:00', 1, '*', 'a:7:{i:1;s:4:"1000";i:5;s:1:"3";i:6;s:1:"2";i:7;s:1:"1";i:9;a:8:{i:0;s:8:"Internet";i:1;s:11:"Use of pool";i:2;s:8:"Cable TV";i:3;s:5:"Beach";i:4;s:7:"Balcony";i:5;s:7:"Parquet";i:6;s:9:"Microwave";i:7;s:15:"Smoking allowed";}i:13;s:233:"<div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>";i:12;s:280:"<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" border="0" alt="" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" border="0" alt="" /></a></p>";}', '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', 'Canterbury Drive, Woodbury, MN, United States', '38.8709693', '-99.29935019999999', 15, '', '12000.00', 315, 1, 222, 0, 0, '252', 'Sold', NULL, '', ''),
(11, 101, 5, '1041 Fife Ave', 'tmp1411438436property-large-2.jpg', '', '1041-fife-ave', 'Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim...', '<p>Integer fermentum felis ac bibendum porta. Aenean at est gravida, consequat sapien vitae, sollicitudin nisl. Nullam interdum mollis nunc, sit amet dapibus mauris elementum id. Ut tempus aliquam nisl id ultricies. Donec varius vestibulum leo, faucibus venenatis magna semper ac. Morbi id euismod lacus, nec dictum purus. Phasellus at ligula nec augue placerat tincidunt ut at magna. Nulla facilisi.</p>\r\n<p>Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim. Sed tempor nibh ut dictum lobortis. Integer at imperdiet mauris, quis vehicula orci. Aliquam molestie est mauris, vel aliquam mi ultricies at. Mauris laoreet lobortis libero volutpat viverra. Aliquam convallis lacus eget dui porta rhoncus.</p>', NULL, 0, 41, 1, 0, 0, 0, '2014-08-13', 313, '2016-11-29', 313, 9, 0, '0000-00-00 00:00:00', 1, '*', 'a:7:{i:1;s:4:"1000";i:5;s:1:"3";i:6;s:1:"2";i:7;s:1:"1";i:9;a:8:{i:0;s:8:"Internet";i:1;s:11:"Use of pool";i:2;s:8:"Cable TV";i:3;s:5:"Beach";i:4;s:7:"Balcony";i:5;s:7:"Parquet";i:6;s:9:"Microwave";i:7;s:15:"Smoking allowed";}i:13;s:233:"<div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>";i:12;s:280:"<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" border="0" alt="" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" border="0" alt="" /></a></p>";}', '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', '1041 Fife Ave ', '37.45189800000001', '-122.14982500000002', 3, '', '12000.00', 315, 1, 222, 0, 0, '252', '', NULL, '', ''),
(12, 102, 5, '27523 Pacific Coast', 'tmp1411438491property-large-3.jpg', '', '27523-pacific-coast', 'Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim...', '<p>Integer fermentum felis ac bibendum porta. Aenean at est gravida, consequat sapien vitae, sollicitudin nisl. Nullam interdum mollis nunc, sit amet dapibus mauris elementum id. Ut tempus aliquam nisl id ultricies. Donec varius vestibulum leo, faucibus venenatis magna semper ac. Morbi id euismod lacus, nec dictum purus. Phasellus at ligula nec augue placerat tincidunt ut at magna. Nulla facilisi.</p>\r\n<p>Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim. Sed tempor nibh ut dictum lobortis. Integer at imperdiet mauris, quis vehicula orci. Aliquam molestie est mauris, vel aliquam mi ultricies at. Mauris laoreet lobortis libero volutpat viverra. Aliquam convallis lacus eget dui porta rhoncus.</p>', NULL, 0, 52, 1, 0, 0, 0, '2014-08-13', 313, '2016-11-29', 313, 10, 0, '0000-00-00 00:00:00', 1, '*', 'a:7:{i:1;s:4:"1000";i:5;s:1:"3";i:6;s:1:"2";i:7;s:1:"1";i:9;a:8:{i:0;s:8:"Internet";i:1;s:11:"Use of pool";i:2;s:8:"Cable TV";i:3;s:5:"Beach";i:4;s:7:"Balcony";i:5;s:7:"Parquet";i:6;s:9:"Microwave";i:7;s:15:"Smoking allowed";}i:13;s:233:"<div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>";i:12;s:280:"<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" border="0" alt="" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" border="0" alt="" /></a></p>";}', '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', '27523 Pacific Coast', '34.0258176', '-118.76618730000001', 5, '', '12000.00', 315, 1, 222, 0, 0, '252', 'Sold', NULL, '', ''),
(13, 103, 5, '555 Byron St #304', 'tmp1411438534property-large-4.jpg', '', '555-byron-st-304', 'Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim...', '<p>Integer fermentum felis ac bibendum porta. Aenean at est gravida, consequat sapien vitae, sollicitudin nisl. Nullam interdum mollis nunc, sit amet dapibus mauris elementum id. Ut tempus aliquam nisl id ultricies. Donec varius vestibulum leo, faucibus venenatis magna semper ac. Morbi id euismod lacus, nec dictum purus. Phasellus at ligula nec augue placerat tincidunt ut at magna. Nulla facilisi.</p>\r\n<p>Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim. Sed tempor nibh ut dictum lobortis. Integer at imperdiet mauris, quis vehicula orci. Aliquam molestie est mauris, vel aliquam mi ultricies at. Mauris laoreet lobortis libero volutpat viverra. Aliquam convallis lacus eget dui porta rhoncus.</p>', NULL, 0, 46, 1, 0, 0, 0, '2014-08-13', 313, '2016-11-29', 313, 11, 0, '0000-00-00 00:00:00', 1, '*', 'a:7:{i:1;s:3:"670";i:5;s:1:"3";i:6;s:1:"2";i:7;s:1:"1";i:9;a:8:{i:0;s:8:"Internet";i:1;s:11:"Use of pool";i:2;s:8:"Cable TV";i:3;s:5:"Beach";i:4;s:7:"Balcony";i:5;s:7:"Parquet";i:6;s:9:"Microwave";i:7;s:15:"Smoking allowed";}i:13;s:233:"<div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>";i:12;s:280:"<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" border="0" alt="" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" border="0" alt="" /></a></p>";}', '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', '555 Byron St #304', '37.4498327', '-122.15624059999999', 7, '', '12000.00', 315, 1, 222, 0, 0, '252', '', NULL, '', ''),
(14, 104, 2, 'Central With Garden', 'tmp1408088542property-detail-02.jpg', '', 'central-with-garden', 'Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim...', '<p>Integer fermentum felis ac bibendum porta. Aenean at est gravida, consequat sapien vitae, sollicitudin nisl. Nullam interdum mollis nunc, sit amet dapibus mauris elementum id. Ut tempus aliquam nisl id ultricies. Donec varius vestibulum leo, faucibus venenatis magna semper ac. Morbi id euismod lacus, nec dictum purus. Phasellus at ligula nec augue placerat tincidunt ut at magna. Nulla facilisi.</p>\r\n<p>Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim. Sed tempor nibh ut dictum lobortis. Integer at imperdiet mauris, quis vehicula orci. Aliquam molestie est mauris, vel aliquam mi ultricies at. Mauris laoreet lobortis libero volutpat viverra. Aliquam convallis lacus eget dui porta rhoncus.</p>', NULL, 1, 93, 1, 0, 0, 0, '2014-08-13', 313, '2016-11-29', 313, 12, 0, '0000-00-00 00:00:00', 1, '*', 'a:7:{i:1;s:4:"1000";i:5;s:1:"3";i:6;s:1:"2";i:7;s:1:"1";i:9;a:8:{i:0;s:8:"Internet";i:1;s:11:"Use of pool";i:2;s:8:"Cable TV";i:3;s:5:"Beach";i:4;s:7:"Balcony";i:5;s:7:"Parquet";i:6;s:9:"Microwave";i:7;s:15:"Smoking allowed";}i:13;s:233:"<div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>";i:12;s:280:"<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" border="0" alt="" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" border="0" alt="" /></a></p>";}', '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', 'Central With Garden', '41.8572283', '-87.6217193', 5, '', '12000.00', 315, 0, 222, 0, 0, '252', 'Sold', NULL, '', ''),
(15, 105, 5, '3412 Cloudcroft Dr', 'tmp1411438586property-large-12.jpg', '', '3412-cloudcroft-dr', 'Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim...', '<p>Integer fermentum felis ac bibendum porta. Aenean at est gravida, consequat sapien vitae, sollicitudin nisl. Nullam interdum mollis nunc, sit amet dapibus mauris elementum id. Ut tempus aliquam nisl id ultricies. Donec varius vestibulum leo, faucibus venenatis magna semper ac. Morbi id euismod lacus, nec dictum purus. Phasellus at ligula nec augue placerat tincidunt ut at magna. Nulla facilisi.</p>\r\n<p>Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim. Sed tempor nibh ut dictum lobortis. Integer at imperdiet mauris, quis vehicula orci. Aliquam molestie est mauris, vel aliquam mi ultricies at. Mauris laoreet lobortis libero volutpat viverra. Aliquam convallis lacus eget dui porta rhoncus.</p>', NULL, 0, 42, 1, 0, 0, 0, '2014-08-13', 313, '2016-11-29', 313, 13, 0, '0000-00-00 00:00:00', 1, '*', 'a:7:{i:1;s:4:"2300";i:5;s:1:"5";i:6;s:1:"4";i:7;s:1:"2";i:9;a:8:{i:0;s:8:"Internet";i:1;s:11:"Use of pool";i:2;s:8:"Cable TV";i:3;s:5:"Beach";i:4;s:7:"Balcony";i:5;s:7:"Parquet";i:6;s:9:"Microwave";i:7;s:15:"Smoking allowed";}i:13;s:233:"<div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>";i:12;s:280:"<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" border="0" alt="" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" border="0" alt="" /></a></p>";}', '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', '3412 Cloudcroft Dr', '34.048701', '-118.57076999999998', 8, '', '12000.00', 315, 1, 222, 0, 0, '252', '', NULL, '', ''),
(16, 106, 1, 'Central Park View', 'tmp1411438912property11.jpg', '', 'central-park-view', 'Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim...', '<p>Integer fermentum felis ac bibendum porta. Aenean at est gravida, consequat sapien vitae, sollicitudin nisl. Nullam interdum mollis nunc, sit amet dapibus mauris elementum id. Ut tempus aliquam nisl id ultricies. Donec varius vestibulum leo, faucibus venenatis magna semper ac. Morbi id euismod lacus, nec dictum purus. Phasellus at ligula nec augue placerat tincidunt ut at magna. Nulla facilisi.</p>\r\n<p>Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim. Sed tempor nibh ut dictum lobortis. Integer at imperdiet mauris, quis vehicula orci. Aliquam molestie est mauris, vel aliquam mi ultricies at. Mauris laoreet lobortis libero volutpat viverra. Aliquam convallis lacus eget dui porta rhoncus.</p>', NULL, 0, 52, 1, 0, 0, 0, '2014-08-13', 313, '2016-11-29', 313, 14, 0, '0000-00-00 00:00:00', 1, '*', 'a:7:{i:1;s:4:"2300";i:5;s:1:"3";i:6;s:1:"2";i:7;s:1:"1";i:9;a:8:{i:0;s:8:"Internet";i:1;s:11:"Use of pool";i:2;s:8:"Cable TV";i:3;s:5:"Beach";i:4;s:7:"Balcony";i:5;s:7:"Parquet";i:6;s:9:"Microwave";i:7;s:15:"Smoking allowed";}i:13;s:233:"<div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>";i:12;s:280:"<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" border="0" alt="" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" border="0" alt="" /></a></p>";}', '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', 'Central Park View', '40.7843624', '-73.47914939999998', 7, '', '24000.00', 315, 1, 222, 0, 0, '251', 'Sold', NULL, '', ''),
(17, 107, 4, 'Gorgeous Farm House', 'tmp1411439091property8.jpg', '', 'gorgeous-farm-house', 'Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim...', '<p>Integer fermentum felis ac bibendum porta. Aenean at est gravida, consequat sapien vitae, sollicitudin nisl. Nullam interdum mollis nunc, sit amet dapibus mauris elementum id. Ut tempus aliquam nisl id ultricies. Donec varius vestibulum leo, faucibus venenatis magna semper ac. Morbi id euismod lacus, nec dictum purus. Phasellus at ligula nec augue placerat tincidunt ut at magna. Nulla facilisi.</p>\r\n<p>Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim. Sed tempor nibh ut dictum lobortis. Integer at imperdiet mauris, quis vehicula orci. Aliquam molestie est mauris, vel aliquam mi ultricies at. Mauris laoreet lobortis libero volutpat viverra. Aliquam convallis lacus eget dui porta rhoncus.</p>', NULL, 0, 45, 1, 0, 0, 0, '2014-08-13', 313, '2016-11-29', 313, 15, 0, '0000-00-00 00:00:00', 1, '*', 'a:7:{i:1;s:3:"700";i:5;s:1:"3";i:6;s:1:"2";i:7;s:1:"1";i:9;a:8:{i:0;s:8:"Internet";i:1;s:11:"Use of pool";i:2;s:8:"Cable TV";i:3;s:5:"Beach";i:4;s:7:"Balcony";i:5;s:7:"Parquet";i:6;s:9:"Microwave";i:7;s:15:"Smoking allowed";}i:13;s:233:"<div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>";i:12;s:280:"<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" border="0" alt="" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" border="0" alt="" /></a></p>";}', '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', 'Farm House Lane, Ames, IA, United States', '-0.6701077999999999', '34.76719019999996', 15, '', '5200.00', 315, 1, 222, 0, 0, '252', '', NULL, '', ''),
(18, 108, 5, 'Splendid Boat House', 'tmp1411439200property9.jpg', '', 'splendid-boat-house', 'Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim...', '<p>Integer fermentum felis ac bibendum porta. Aenean at est gravida, consequat sapien vitae, sollicitudin nisl. Nullam interdum mollis nunc, sit amet dapibus mauris elementum id. Ut tempus aliquam nisl id ultricies. Donec varius vestibulum leo, faucibus venenatis magna semper ac. Morbi id euismod lacus, nec dictum purus. Phasellus at ligula nec augue placerat tincidunt ut at magna. Nulla facilisi.</p>\r\n<p>Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim. Sed tempor nibh ut dictum lobortis. Integer at imperdiet mauris, quis vehicula orci. Aliquam molestie est mauris, vel aliquam mi ultricies at. Mauris laoreet lobortis libero volutpat viverra. Aliquam convallis lacus eget dui porta rhoncus.</p>', NULL, 0, 56, 1, 0, 0, 0, '2014-08-13', 313, '2016-11-29', 313, 16, 0, '0000-00-00 00:00:00', 1, '*', 'a:7:{i:1;s:4:"1000";i:5;s:1:"3";i:6;s:1:"2";i:7;s:1:"1";i:9;a:8:{i:0;s:8:"Internet";i:1;s:11:"Use of pool";i:2;s:8:"Cable TV";i:3;s:5:"Beach";i:4;s:7:"Balcony";i:5;s:7:"Parquet";i:6;s:9:"Microwave";i:7;s:15:"Smoking allowed";}i:13;s:233:"<div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>";i:12;s:280:"<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" border="0" alt="" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" border="0" alt="" /></a></p>";}', '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', 'Boat House', '42.7451962', '-76.70062999999999', 5, '', '8000.00', 315, 1, 222, 0, 0, '251', 'Rent', NULL, '', ''),
(19, 75, 5, '6 Acre Lake Property', 'tmp1411439252property3.jpg', '', '6-acre-lake-property', 'Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim...', '<p>Integer fermentum felis ac bibendum porta. Aenean at est gravida, consequat sapien vitae, sollicitudin nisl. Nullam interdum mollis nunc, sit amet dapibus mauris elementum id. Ut tempus aliquam nisl id ultricies. Donec varius vestibulum leo, faucibus venenatis magna semper ac. Morbi id euismod lacus, nec dictum purus. Phasellus at ligula nec augue placerat tincidunt ut at magna. Nulla facilisi.</p>\r\n<p>Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim. Sed tempor nibh ut dictum lobortis. Integer at imperdiet mauris, quis vehicula orci. Aliquam molestie est mauris, vel aliquam mi ultricies at. Mauris laoreet lobortis libero volutpat viverra. Aliquam convallis lacus eget dui porta rhoncus.</p>', NULL, 0, 46, 1, 0, 0, 0, '2014-08-13', 313, '2016-11-29', 313, 17, 0, '0000-00-00 00:00:00', 1, '*', 'a:7:{i:1;s:4:"1230";i:5;s:1:"3";i:6;s:1:"2";i:7;s:1:"1";i:9;a:8:{i:0;s:8:"Internet";i:1;s:11:"Use of pool";i:2;s:8:"Cable TV";i:3;s:5:"Beach";i:4;s:7:"Balcony";i:5;s:7:"Parquet";i:6;s:9:"Microwave";i:7;s:15:"Smoking allowed";}i:13;s:233:"<div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>";i:12;s:280:"<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" alt="" border="0" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" alt="" border="0" /></a></p>";}', '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', '6 Acre Lake Property', '35.139144', '-81.62749980000001', 6, '', '16000.00', 315, 1, 222, 0, 0, '252', '', NULL, '', ''),
(20, 109, 5, 'Springfield Blvd Queens Villa', 'tmp1411439314property10.jpg', '', 'springfield-blvd-queens-villa', 'Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim...', '<p>Integer fermentum felis ac bibendum porta. Aenean at est gravida, consequat sapien vitae, sollicitudin nisl. Nullam interdum mollis nunc, sit amet dapibus mauris elementum id. Ut tempus aliquam nisl id ultricies. Donec varius vestibulum leo, faucibus venenatis magna semper ac. Morbi id euismod lacus, nec dictum purus. Phasellus at ligula nec augue placerat tincidunt ut at magna. Nulla facilisi.</p>\r\n<p>Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim. Sed tempor nibh ut dictum lobortis. Integer at imperdiet mauris, quis vehicula orci. Aliquam molestie est mauris, vel aliquam mi ultricies at. Mauris laoreet lobortis libero volutpat viverra. Aliquam convallis lacus eget dui porta rhoncus.</p>', NULL, 0, 60, 1, 0, 0, 0, '2014-08-13', 313, '2016-11-29', 313, 18, 0, '0000-00-00 00:00:00', 1, '*', 'a:7:{i:1;s:4:"1000";i:5;s:1:"3";i:6;s:1:"2";i:7;s:1:"1";i:9;a:8:{i:0;s:8:"Internet";i:1;s:11:"Use of pool";i:2;s:8:"Cable TV";i:3;s:5:"Beach";i:4;s:7:"Balcony";i:5;s:7:"Parquet";i:6;s:9:"Microwave";i:7;s:15:"Smoking allowed";}i:13;s:233:"<div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>";i:12;s:280:"<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" border="0" alt="" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" border="0" alt="" /></a></p>";}', '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', 'Springfield Blvd Queens Villa', '40.7198679', '-73.73570799999999', 7, '', '6200.00', 315, 1, 222, 0, 0, '251', 'Sold', NULL, '', ''),
(21, 110, 5, '987 Cantebury Drive ', 'tmp1411441518detail-img1.jpg', '', '987-cantebury-drive-17', 'Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim...', '<p>Integer fermentum felis ac bibendum porta. Aenean at est gravida, consequat sapien vitae, sollicitudin nisl. Nullam interdum mollis nunc, sit amet dapibus mauris elementum id. Ut tempus aliquam nisl id ultricies. Donec varius vestibulum leo, faucibus venenatis magna semper ac. Morbi id euismod lacus, nec dictum purus. Phasellus at ligula nec augue placerat tincidunt ut at magna. Nulla facilisi.</p>\r\n<p>Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim. Sed tempor nibh ut dictum lobortis. Integer at imperdiet mauris, quis vehicula orci. Aliquam molestie est mauris, vel aliquam mi ultricies at. Mauris laoreet lobortis libero volutpat viverra. Aliquam convallis lacus eget dui porta rhoncus.</p>', NULL, 0, 41, 1, 0, 0, 0, '2014-08-13', 313, '2016-11-29', 313, 19, 0, '0000-00-00 00:00:00', 1, '*', 'a:7:{i:1;s:4:"1000";i:5;s:1:"3";i:6;s:1:"2";i:7;s:1:"1";i:9;a:8:{i:0;s:8:"Internet";i:1;s:11:"Use of pool";i:2;s:8:"Cable TV";i:3;s:5:"Beach";i:4;s:7:"Balcony";i:5;s:7:"Parquet";i:6;s:9:"Microwave";i:7;s:15:"Smoking allowed";}i:13;s:233:"<div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>";i:12;s:280:"<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" border="0" alt="" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" border="0" alt="" /></a></p>";}', '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', '987 Canterbury Road South, Shakopee, MN, United States', '38.7670349', '-93.71663130000002', 5, '', '12000.00', 315, 1, 222, 0, 278, '252', '', NULL, '', ''),
(22, 111, 5, '987 Cantebury Drive ', 'tmp1411442342property-large-4.jpg', '', '987-cantebury-drive-18', 'Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim...', '<p>Integer fermentum felis ac bibendum porta. Aenean at est gravida, consequat sapien vitae, sollicitudin nisl. Nullam interdum mollis nunc, sit amet dapibus mauris elementum id. Ut tempus aliquam nisl id ultricies. Donec varius vestibulum leo, faucibus venenatis magna semper ac. Morbi id euismod lacus, nec dictum purus. Phasellus at ligula nec augue placerat tincidunt ut at magna. Nulla facilisi.</p>\r\n<p>Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim. Sed tempor nibh ut dictum lobortis. Integer at imperdiet mauris, quis vehicula orci. Aliquam molestie est mauris, vel aliquam mi ultricies at. Mauris laoreet lobortis libero volutpat viverra. Aliquam convallis lacus eget dui porta rhoncus.</p>', NULL, 0, 56, 1, 0, 0, 0, '2014-08-13', 313, '2016-11-29', 313, 20, 0, '0000-00-00 00:00:00', 1, '*', 'a:7:{i:1;s:4:"1000";i:5;s:1:"3";i:6;s:1:"2";i:7;s:1:"1";i:9;a:8:{i:0;s:8:"Internet";i:1;s:11:"Use of pool";i:2;s:8:"Cable TV";i:3;s:5:"Beach";i:4;s:7:"Balcony";i:5;s:7:"Parquet";i:6;s:9:"Microwave";i:7;s:15:"Smoking allowed";}i:13;s:233:"<div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>";i:12;s:280:"<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" border="0" alt="" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" border="0" alt="" /></a></p>";}', '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', '987 Cantebury Circle, Eagan, MN, United States', '44.791042', '-93.14528200000001', 15, '', '12000.00', 315, 1, 222, 0, 0, '252', 'Sold', NULL, '', ''),
(23, 112, 5, 'Westminster Beauty', 'tmp1411442446property-large-3.jpg', '', 'westminster-beauty', 'Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim...', '<p>Integer fermentum felis ac bibendum porta. Aenean at est gravida, consequat sapien vitae, sollicitudin nisl. Nullam interdum mollis nunc, sit amet dapibus mauris elementum id. Ut tempus aliquam nisl id ultricies. Donec varius vestibulum leo, faucibus venenatis magna semper ac. Morbi id euismod lacus, nec dictum purus. Phasellus at ligula nec augue placerat tincidunt ut at magna. Nulla facilisi.</p>\r\n<p>Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim. Sed tempor nibh ut dictum lobortis. Integer at imperdiet mauris, quis vehicula orci. Aliquam molestie est mauris, vel aliquam mi ultricies at. Mauris laoreet lobortis libero volutpat viverra. Aliquam convallis lacus eget dui porta rhoncus.</p>', NULL, 0, 41, 1, 0, 0, 0, '2014-08-13', 313, '2016-11-29', 313, 21, 0, '0000-00-00 00:00:00', 1, '*', 'a:7:{i:1;s:4:"1000";i:5;s:1:"3";i:6;s:1:"2";i:7;s:1:"1";i:9;a:8:{i:0;s:8:"Internet";i:1;s:11:"Use of pool";i:2;s:8:"Cable TV";i:3;s:5:"Beach";i:4;s:7:"Balcony";i:5;s:7:"Parquet";i:6;s:9:"Microwave";i:7;s:15:"Smoking allowed";}i:13;s:233:"<div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>";i:12;s:280:"<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" border="0" alt="" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" border="0" alt="" /></a></p>";}', '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', 'Westminster Beauty', '39.8366528', '-105.0372046', 5, '', '16000.00', 315, 1, 222, 0, 0, '252', 'Sold', NULL, '', ''),
(24, 78, 5, '77 Park Avenue ', 'tmp1411442564property8.jpg', '', '77-park-avenue', 'Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim...', '<p>Integer fermentum felis ac bibendum porta. Aenean at est gravida, consequat sapien vitae, sollicitudin nisl. Nullam interdum mollis nunc, sit amet dapibus mauris elementum id. Ut tempus aliquam nisl id ultricies. Donec varius vestibulum leo, faucibus venenatis magna semper ac. Morbi id euismod lacus, nec dictum purus. Phasellus at ligula nec augue placerat tincidunt ut at magna. Nulla facilisi.</p>\r\n<p>Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim. Sed tempor nibh ut dictum lobortis. Integer at imperdiet mauris, quis vehicula orci. Aliquam molestie est mauris, vel aliquam mi ultricies at. Mauris laoreet lobortis libero volutpat viverra. Aliquam convallis lacus eget dui porta rhoncus.</p>', NULL, 0, 64, 1, 0, 0, 0, '2014-08-13', 313, '2014-09-23', 313, 22, 0, '0000-00-00 00:00:00', 1, '*', 'a:7:{i:1;s:4:"3400";i:5;s:1:"3";i:6;s:1:"2";i:7;s:1:"1";i:9;a:8:{i:0;s:8:"Internet";i:1;s:11:"Use of pool";i:2;s:8:"Cable TV";i:3;s:5:"Beach";i:4;s:7:"Balcony";i:5;s:7:"Parquet";i:6;s:9:"Microwave";i:7;s:15:"Smoking allowed";}i:13;s:233:"<div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>";i:12;s:280:"<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" border="0" alt="" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" border="0" alt="" /></a></p>";}', '{"enable-slideshow":"","crop_width":"","crop_height":"","thumb_width":"","thumb_height":"","ss_thumb_width":"","ss_thumb_height":"","youtube_data":"","page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', 'Golden Valley, MN 55427', '45.00895858449181', '-93.35083381673581', 15, '', '6200.00', 315, 1, 0, 0, 0, '251', 'Rent', NULL, NULL, NULL),
(25, 113, 1, 'Quarry Hills Apartments', 'tmp1411442609property11.jpg', '', 'quarry-hills-apartments', 'Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim...', '<p>Integer fermentum felis ac bibendum porta. Aenean at est gravida, consequat sapien vitae, sollicitudin nisl. Nullam interdum mollis nunc, sit amet dapibus mauris elementum id. Ut tempus aliquam nisl id ultricies. Donec varius vestibulum leo, faucibus venenatis magna semper ac. Morbi id euismod lacus, nec dictum purus. Phasellus at ligula nec augue placerat tincidunt ut at magna. Nulla facilisi.</p>\r\n<p>Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim. Sed tempor nibh ut dictum lobortis. Integer at imperdiet mauris, quis vehicula orci. Aliquam molestie est mauris, vel aliquam mi ultricies at. Mauris laoreet lobortis libero volutpat viverra. Aliquam convallis lacus eget dui porta rhoncus.</p>', NULL, 0, 77, 1, 0, 0, 0, '2014-08-13', 313, '2016-11-29', 313, 23, 0, '0000-00-00 00:00:00', 1, '*', 'a:7:{i:1;s:4:"3400";i:5;s:1:"3";i:6;s:1:"2";i:7;s:1:"1";i:9;a:8:{i:0;s:8:"Internet";i:1;s:11:"Use of pool";i:2;s:8:"Cable TV";i:3;s:5:"Beach";i:4;s:7:"Balcony";i:5;s:7:"Parquet";i:6;s:9:"Microwave";i:7;s:15:"Smoking allowed";}i:13;s:233:"<div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>";i:12;s:280:"<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" border="0" alt="" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" border="0" alt="" /></a></p>";}', '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', 'Quarry Hills Apartments', '42.2426657', '-71.0448783', 15, '', '22000.00', 315, 1, 222, 0, 0, '251', '', NULL, '', ''),
(26, 91, 4, 'Water Park Towers', 'tmp1411442699property3.jpg', '', 'water-park-towers', 'Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim...', '<p>Integer fermentum felis ac bibendum porta. Aenean at est gravida, consequat sapien vitae, sollicitudin nisl. Nullam interdum mollis nunc, sit amet dapibus mauris elementum id. Ut tempus aliquam nisl id ultricies. Donec varius vestibulum leo, faucibus venenatis magna semper ac. Morbi id euismod lacus, nec dictum purus. Phasellus at ligula nec augue placerat tincidunt ut at magna. Nulla facilisi.</p>\r\n<p>Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim. Sed tempor nibh ut dictum lobortis. Integer at imperdiet mauris, quis vehicula orci. Aliquam molestie est mauris, vel aliquam mi ultricies at. Mauris laoreet lobortis libero volutpat viverra. Aliquam convallis lacus eget dui porta rhoncus.</p>', NULL, 0, 106, 1, 0, 0, 0, '2014-08-13', 313, '2016-10-17', 313, 24, 0, '0000-00-00 00:00:00', 1, '*', 'a:7:{i:1;s:4:"2400";i:5;s:1:"3";i:6;s:1:"2";i:7;s:1:"1";i:9;a:8:{i:0;s:8:"Internet";i:1;s:11:"Use of pool";i:2;s:8:"Cable TV";i:3;s:5:"Beach";i:4;s:7:"Balcony";i:5;s:7:"Parquet";i:6;s:9:"Microwave";i:7;s:15:"Smoking allowed";}i:13;s:233:"<div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>";i:12;s:282:"		<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" border="0" alt="" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" border="0" alt="" /></a></p>";}', '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', 'Golden Valley Golf & Country, Minneapolis', '45.03261966428116', '-93.3591164781738', 15, '', '3400.00', 315, 1, 222, 279, 278, '263', 'Hold', NULL, '', '');
INSERT INTO `prfwj_bt_properties` (`id`, `asset_id`, `catid`, `title`, `image`, `youembed`, `alias`, `description`, `full_description`, `url`, `featured`, `hits`, `published`, `vote_count`, `vote_sum`, `review_count`, `created`, `created_by`, `modified`, `modified_by`, `ordering`, `checked_out`, `checked_out_time`, `access`, `language`, `extra_fields`, `params`, `address`, `latitude`, `longitude`, `zoomlevel`, `markericon`, `price`, `agent_id`, `allow_rating`, `location_lv1`, `location_lv3`, `location_lv2`, `status`, `ribbon`, `agency_id`, `price_time`, `currency`) VALUES
(36, 94, 5, '2 Rooms Bayonne', 'tmp1411442037property3.jpg', '', '2-rooms-bayonne', 'Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim...', '<p>Integer fermentum felis ac bibendum porta. Aenean at est gravida, consequat sapien vitae, sollicitudin nisl. Nullam interdum mollis nunc, sit amet dapibus mauris elementum id. Ut tempus aliquam nisl id ultricies. Donec varius vestibulum leo, faucibus venenatis magna semper ac. Morbi id euismod lacus, nec dictum purus. Phasellus at ligula nec augue placerat tincidunt ut at magna. Nulla facilisi.</p>\r\n<p>Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim. Sed tempor nibh ut dictum lobortis. Integer at imperdiet mauris, quis vehicula orci. Aliquam molestie est mauris, vel aliquam mi ultricies at. Mauris laoreet lobortis libero volutpat viverra. Aliquam convallis lacus eget dui porta rhoncus.</p>', NULL, 0, 99, 1, 0, 0, 0, '2014-08-13', 313, '2014-09-23', 313, 34, 0, '0000-00-00 00:00:00', 1, '*', 'a:7:{i:1;s:4:"5825";i:5;s:1:"5";i:6;s:1:"3";i:7;s:1:"2";i:9;a:8:{i:0;s:8:"Internet";i:1;s:11:"Use of pool";i:2;s:8:"Cable TV";i:3;s:5:"Beach";i:4;s:7:"Balcony";i:5;s:7:"Parquet";i:6;s:9:"Microwave";i:7;s:15:"Smoking allowed";}i:13;s:233:"<div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>";i:12;s:280:"<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" border="0" alt="" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" border="0" alt="" /></a></p>";}', '{"enable-slideshow":"","crop_width":"","crop_height":"","thumb_width":"","thumb_height":"","ss_thumb_width":"","ss_thumb_height":"","youtube_data":"","page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', 'Golden Valley, MN 55427', '45.02349007288906', '-93.39070217153318', 15, '', '349.00', 315, 1, 0, 0, 0, '252', 'Sold', NULL, NULL, NULL),
(37, 94, 1, 'Luxury Apartment with great views ', 'tmp1411441814property11.jpg', '', 'luxury-apartment-with-great-views', 'Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim...', '<p>Integer fermentum felis ac bibendum porta. Aenean at est gravida, consequat sapien vitae, sollicitudin nisl. Nullam interdum mollis nunc, sit amet dapibus mauris elementum id. Ut tempus aliquam nisl id ultricies. Donec varius vestibulum leo, faucibus venenatis magna semper ac. Morbi id euismod lacus, nec dictum purus. Phasellus at ligula nec augue placerat tincidunt ut at magna. Nulla facilisi.</p>\r\n<p>Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim. Sed tempor nibh ut dictum lobortis. Integer at imperdiet mauris, quis vehicula orci. Aliquam molestie est mauris, vel aliquam mi ultricies at. Mauris laoreet lobortis libero volutpat viverra. Aliquam convallis lacus eget dui porta rhoncus.</p>', NULL, 0, 44, 1, 0, 0, 0, '2014-08-13', 313, '2016-10-18', 313, 35, 0, '0000-00-00 00:00:00', 1, '*', 'a:7:{i:1;s:4:"1000";i:5;s:1:"3";i:6;s:1:"2";i:7;s:1:"1";i:9;a:8:{i:0;s:8:"Internet";i:1;s:11:"Use of pool";i:2;s:8:"Cable TV";i:3;s:5:"Beach";i:4;s:7:"Balcony";i:5;s:7:"Parquet";i:6;s:9:"Microwave";i:7;s:15:"Smoking allowed";}i:13;s:233:"<div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>";i:12;s:281:"	<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" border="0" alt="" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" border="0" alt="" /></a></p>";}', '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', 'Golden Valley, MN 55427', '45.01563321242213', '-93.39658157369382', 15, '', '5300.00', 0, 1, 0, 0, 0, '251', '', NULL, '', ''),
(4, 74, 2, '2186 Rinehart Road', 'tmp1407984701property-detail-03.jpg', '', '2186-rinehart-road', 'Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim...', '<p>Integer fermentum felis ac bibendum porta. Aenean at est gravida, consequat sapien vitae, sollicitudin nisl. Nullam interdum mollis nunc, sit amet dapibus mauris elementum id. Ut tempus aliquam nisl id ultricies. Donec varius vestibulum leo, faucibus venenatis magna semper ac. Morbi id euismod lacus, nec dictum purus. Phasellus at ligula nec augue placerat tincidunt ut at magna. Nulla facilisi.</p>\r\n<p>Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna. Donec iaculis est ut ipsum convallis eleifend. Mauris turpis lacus, eleifend sed blandit ac, laoreet eu enim. Sed tempor nibh ut dictum lobortis. Integer at imperdiet mauris, quis vehicula orci. Aliquam molestie est mauris, vel aliquam mi ultricies at. Mauris laoreet lobortis libero volutpat viverra. Aliquam convallis lacus eget dui porta rhoncus.</p>', NULL, 1, 548, 1, 0, 0, 2, '2014-08-14', NULL, '2016-11-29', 313, 2, 0, '0000-00-00 00:00:00', 1, '*', 'a:7:{i:1;s:4:"1000";i:5;s:1:"3";i:6;s:1:"2";i:7;s:1:"1";i:9;a:8:{i:0;s:8:"Internet";i:1;s:11:"Use of pool";i:2;s:8:"Cable TV";i:3;s:5:"Beach";i:4;s:7:"Balcony";i:5;s:7:"Parquet";i:6;s:9:"Microwave";i:7;s:15:"Smoking allowed";}i:13;s:235:" <div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> </div>";i:12;s:282:"		<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" alt="" border="0" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" alt="" border="0" /></a></p>";}', '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', '2186 Rinehart Road', '48.86446692495572', '2.2799148941039675', 9, '', '42000.00', 315, 1, 73, 258, 270, '252', 'Sold', NULL, '', ''),
(53, 95, 5, 'Double Story House', '1476947468-Imperial-1200x750px.jpg', '', 'double-story-house', NULL, 'Brand New', NULL, 0, 0, -1, 0, 0, 0, '2016-10-20', 319, NULL, NULL, 36, 999, '2017-05-21 23:52:52', 1, '*', 'a:5:{i:1;s:3:"360";i:5;s:1:"3";i:6;s:1:"3";i:7;s:1:"2";i:9;a:18:{i:0;s:16:"Air conditioning";i:1;s:8:"Internet";i:2;s:11:"Use of pool";i:3;s:8:"Cable TV";i:4;s:7:"Terrace";i:5;s:5:"Hi-Fi";i:6;s:5:"Beach";i:7;s:7:"Balcony";i:8;s:7:"Parquet";i:9;s:7:"Toaster";i:10;s:9:"Microwave";i:11;s:7:"Bedding";i:12;s:7:"Heating";i:13;s:15:"Smoking allowed";i:14;s:10:"Coffee pot";i:15;s:12:"Roof terrace";i:16;s:4:"Iron";i:17;s:6:"Garage";}}', NULL, '', '48.87', '2.29', 7, NULL, '35000.00', 319, 1, 221, 0, 271, '252', NULL, NULL, NULL, NULL),
(54, 107, 2, 'gredgrrd', '1496358592-17857403_10206541674579261_2143093859_n.png', '', 'gredgrrd', NULL, 'fgegzeezgezgze', NULL, 0, 4, -1, 0, 0, 0, '2017-06-01', 1001, NULL, NULL, 37, NULL, NULL, 1, '*', 'a:4:{i:1;s:3:"122";i:5;s:1:"1";i:6;s:1:"1";i:9;a:2:{i:0;s:8:"Terrasse";i:1;s:21:"Location saisonnière";}}', NULL, '', '49.27304708604388', '1.7956152343749636', 7, NULL, '255.00', 1001, 1, 73, 0, 272, '251', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_bt_property_agencies`
--

CREATE TABLE `prfwj_bt_property_agencies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `description` text,
  `hits` int(25) NOT NULL,
  `published` int(1) NOT NULL DEFAULT '1',
  `created` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified` date DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(10) DEFAULT NULL,
  `params` text,
  `address` varchar(255) DEFAULT NULL,
  `latitude` varchar(50) DEFAULT NULL,
  `longitude` varchar(50) DEFAULT NULL,
  `zoomlevel` int(11) DEFAULT NULL,
  `markericon` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `skype` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `big_logo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `prfwj_bt_property_agencies`
--

INSERT INTO `prfwj_bt_property_agencies` (`id`, `title`, `alias`, `description`, `hits`, `published`, `created`, `created_by`, `modified`, `modified_by`, `ordering`, `checked_out`, `checked_out_time`, `access`, `params`, `address`, `latitude`, `longitude`, `zoomlevel`, `markericon`, `phone`, `mobile`, `email`, `skype`, `logo`, `big_logo`) VALUES
(8, 'Genius Properties', 'genius-properties', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et dui vestibulum, bibendum purus sit amet, vulputate mauris. Ut adipiscing gravida tincidunt. Duis euismod placerat rhoncus. Phasellus mollis imperdiet placerat.</p>', 30, 1, '2014-12-09', 313, '2014-12-09', 313, 1, 0, '0000-00-00 00:00:00', 1, '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', '4877 Spruce Drive West Newton', '45.0155422', '-93.37679759999997', 15, '', '123456789', '123456789', 'agency@example.com', 'genius.properties', 'images/agency-logo-01.png', 'images/agency-logo-big-01.png'),
(9, 'LightHouse Estate', 'lighthouse-estate', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et dui vestibulum, bibendum purus sit amet, vulputate mauris. Ut adipiscing gravida tincidunt. Duis euismod placerat rhoncus. Phasellus mollis imperdiet placerat.</p>', 4, 1, '2014-12-09', 313, '2014-12-09', NULL, 2, 0, '0000-00-00 00:00:00', 1, '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', '4877 Spruce Drive West Newton', '45.0155422', '-93.37679759999997', 15, '', '123456789', '123456789', 'agency@example.com', 'genius.properties', 'images/agency-logo-01.png', 'images/agency-logo-big-01.png'),
(10, 'House Trusted', 'house-trusted', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et dui vestibulum, bibendum purus sit amet, vulputate mauris. Ut adipiscing gravida tincidunt. Duis euismod placerat rhoncus. Phasellus mollis imperdiet placerat.</p>', 4, 1, '2014-12-09', 313, '2014-12-09', NULL, 3, 0, '0000-00-00 00:00:00', 1, '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', '4877 Spruce Drive West Newton', '45.0155422', '-93.37679759999997', 15, '', '123456789', '123456789', 'agency@example.com', 'genius.properties', 'images/agency-logo-01.png', 'images/agency-logo-big-01.png'),
(11, 'Estate+', 'estate', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et dui vestibulum, bibendum purus sit amet, vulputate mauris. Ut adipiscing gravida tincidunt. Duis euismod placerat rhoncus. Phasellus mollis imperdiet placerat.</p>', 11, 1, '2014-12-09', 313, '2014-12-09', NULL, 4, 0, '0000-00-00 00:00:00', 1, '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', '4877 Spruce Drive West Newton', '45.0155422', '-93.37679759999997', 15, '', '123456789', '123456789', 'agency@example.com', 'genius.properties', 'images/agency-logo-01.png', 'images/agency-logo-big-01.png'),
(12, 'Northfolk Eastate', 'northfolk-eastate', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et dui vestibulum, bibendum purus sit amet, vulputate mauris. Ut adipiscing gravida tincidunt. Duis euismod placerat rhoncus. Phasellus mollis imperdiet placerat.</p>', 4, 1, '2014-12-09', 313, '2014-12-09', NULL, 5, 0, '0000-00-00 00:00:00', 1, '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', '4877 Spruce Drive West Newton', '45.0155422', '-93.37679759999997', 15, '', '123456789', '123456789', 'agency@example.com', 'genius.properties', 'images/agency-logo-01.png', 'images/agency-logo-big-01.png'),
(13, 'Maximum Properties', 'maximum-properties', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et dui vestibulum, bibendum purus sit amet, vulputate mauris. Ut adipiscing gravida tincidunt. Duis euismod placerat rhoncus. Phasellus mollis imperdiet placerat.</p>', 4, 1, '2014-12-09', 313, '2014-12-09', NULL, 6, 0, '0000-00-00 00:00:00', 1, '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', '4877 Spruce Drive West Newton', '45.0155422', '-93.37679759999997', 15, '', '123456789', '123456789', 'agency@example.com', 'genius.properties', 'images/agency-logo-01.png', 'images/agency-logo-big-01.png'),
(14, 'Will & Scotch', 'will-scotch', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et dui vestibulum, bibendum purus sit amet, vulputate mauris. Ut adipiscing gravida tincidunt. Duis euismod placerat rhoncus. Phasellus mollis imperdiet placerat.</p>', 4, 1, '2014-12-09', 313, '2014-12-09', NULL, 7, 0, '0000-00-00 00:00:00', 1, '{"page_title":"","metakey":"","metadesc":"","robots":"","author":"","rights":""}', '4877 Spruce Drive West Newton', '45.0155422', '-93.37679759999997', 15, '', '123456789', '123456789', 'agency@example.com', 'genius.properties', 'images/agency-logo-01.png', 'images/agency-logo-big-01.png');

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_bt_property_agents`
--

CREATE TABLE `prfwj_bt_property_agents` (
  `agent_id` int(11) NOT NULL DEFAULT '0',
  `agency_id` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `params` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `prfwj_bt_property_agents`
--

INSERT INTO `prfwj_bt_property_agents` (`agent_id`, `agency_id`, `hits`, `params`) VALUES
(315, 8, 50, NULL),
(314, 8, 0, NULL),
(313, 14, 0, NULL),
(1001, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_bt_property_categories`
--

CREATE TABLE `prfwj_bt_property_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(4) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `extra_fields` varchar(500) DEFAULT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `access` int(11) DEFAULT NULL,
  `language` char(7) DEFAULT NULL,
  `inherit` int(1) DEFAULT NULL,
  `params` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `prfwj_bt_property_categories`
--

INSERT INTO `prfwj_bt_property_categories` (`id`, `asset_id`, `title`, `alias`, `image`, `description`, `parent_id`, `published`, `ordering`, `extra_fields`, `checked_out`, `checked_out_time`, `access`, `language`, `inherit`, `params`) VALUES
(1, 70, 'Apartment', 'apartment', 'images/bt_property/categories/apartment.png', '', 0, 1, 1, ',', 0, '0000-00-00 00:00:00', 1, '*', 1, '{"show_nav":"1","cat_layout":"","page_title":"","metakey":"","metadesc":"","robots":""}'),
(2, 71, 'Condominium', 'condominium', 'images/bt_property/categories/condominium.png', '', 0, 1, 2, ',', 0, '0000-00-00 00:00:00', 1, '*', 1, '{"show_nav":"1","cat_layout":"","page_title":"","metakey":"","metadesc":"","robots":""}'),
(3, 89, 'Cottage', 'cottage', 'images/bt_property/categories/cottage.png', '', 0, 1, 3, ',', 0, '0000-00-00 00:00:00', 1, '*', 1, '{"show_nav":"1","layout":"","cat_column":"","show_titlecat":"","show_descat":"","show_childcat":"","show_portcat":"","page_title":"","metakey":"","metadesc":"","robots":""}'),
(4, 72, 'Flat', 'flat', '', '', 0, 1, 4, ',', 0, '0000-00-00 00:00:00', 1, '*', 1, '{"show_nav":"1","cat_layout":"","page_title":"","metakey":"","metadesc":"","robots":""}'),
(5, 73, 'House', 'house', 'images/bt_property/categories/single-family.png', '', 0, 1, 5, ',', 0, '0000-00-00 00:00:00', 1, '*', 1, '{"show_nav":"1","cat_layout":"","page_title":"","metakey":"","metadesc":"","robots":""}');

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_bt_property_comments`
--

CREATE TABLE `prfwj_bt_property_comments` (
  `id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `content` text,
  `published` int(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `prfwj_bt_property_comments`
--

INSERT INTO `prfwj_bt_property_comments` (`id`, `item_id`, `user_id`, `score`, `name`, `email`, `content`, `published`, `created`, `ip`, `parent_id`) VALUES
(1, 4, 313, 5, 'Johnny Truong', 'hungtruongxuan@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur finibus ornare mauris, ut bibendum nunc suscipit quis. Integer suscipit vel nisi porta dictum. Etiam elementum venenatis vulputate. Mauris tempor vestibulum est eget vulputate. In blandit, magna id iaculis blandit, eros purus faucibus turpis', 1, '2014-09-18 04:25:08', '127.0.0.1', NULL),
(2, 4, 0, 5, 'Daniel Nguyen', 'dungnt@vsmarttech.com', 'Nullam eget nunc bibendum, pretium velit pulvinar, dignissim turpis. Quisque rutrum massa eget quam sodales, vel ornare risus consequat', 1, '2014-09-17 04:27:16', '127.0.0.1', NULL),
(12, 3, 0, 5, 'Daniel Trinh', 'abc@gmai2l.com', 'Sed bibendum purus dolor. Ut dignissim fermentum justo. Integer et sollicitudin urna. Nunc mattis consectetur magna', 1, '2014-09-22 09:59:54', '10.0.0.103', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_bt_property_extrafields`
--

CREATE TABLE `prfwj_bt_property_extrafields` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `featured` tinyint(4) DEFAULT NULL,
  `group` int(11) DEFAULT NULL,
  `all` int(4) DEFAULT '0',
  `default_value` text,
  `description` text,
  `ordering` int(11) DEFAULT NULL,
  `published` tinyint(11) DEFAULT NULL,
  `checked_out` int(11) DEFAULT NULL,
  `checked_out_time` datetime DEFAULT NULL,
  `show_label` tinyint(4) DEFAULT NULL,
  `show_on_submit` tinyint(4) DEFAULT NULL,
  `format` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `prfwj_bt_property_extrafields`
--

INSERT INTO `prfwj_bt_property_extrafields` (`id`, `name`, `alias`, `type`, `featured`, `group`, `all`, `default_value`, `description`, `ordering`, `published`, `checked_out`, `checked_out_time`, `show_label`, `show_on_submit`, `format`) VALUES
(1, 'Superficie', 'superficie', 'measurement', 1, 255, 1, 'a:2:{i:0;s:0:"";i:1;s:13:"m<sup>2</sup>";}', '', 1, 1, 0, '0000-00-00 00:00:00', 1, 1, ''),
(7, 'Garages', 'garages', 'measurement', 1, 255, 1, 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', 4, 0, 0, '0000-00-00 00:00:00', 1, 1, NULL),
(5, 'Nombre de chambre', 'nb-chambre', 'measurement', 1, 255, 1, 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', 2, 1, 0, '0000-00-00 00:00:00', 1, 1, ''),
(6, 'Nombre  de salle de bain', 'salles-de-bains', 'measurement', 1, 255, 1, 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', 3, 1, 0, '0000-00-00 00:00:00', 1, 1, ''),
(12, 'Floor plans', 'floor-plans', 'text', 0, 256, 1, '', '', 7, 0, 0, '0000-00-00 00:00:00', 0, 0, ''),
(9, 'Options', 'options-list', 'checkboxlist', 0, 260, 1, 'Piscine\r\nDernière étage\r\nAscenseur\r\nParking\r\nTerrasse\r\nBalcon\r\nCheminée\r\nLocation saisonnière\r\nGarage', '', 6, 1, 0, '0000-00-00 00:00:00', 0, 1, ''),
(13, 'Video Presentation', 'video-presentation', 'string', 0, 267, 1, '', '', 8, 1, 0, '0000-00-00 00:00:00', 0, 0, ''),
(14, 'Taille du jardin privatif', 'taille-du-jardin', 'measurement', 0, 260, 1, 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', 6, 1, 0, '0000-00-00 00:00:00', 1, 1, ''),
(15, 'Taille du séjour', 'taille-du-séjour', 'measurement', 0, 260, 1, 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', 9, 1, 0, '0000-00-00 00:00:00', 1, 1, ''),
(16, 'Nombre d’étages', 'nombre-d’étages', 'measurement', 0, 260, 1, 'a:2:{i:0;s:0:"";i:1;s:0:"";}', '', 10, 1, 0, '0000-00-00 00:00:00', 1, 1, '');

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_bt_property_extrafields_values`
--

CREATE TABLE `prfwj_bt_property_extrafields_values` (
  `property_id` int(11) NOT NULL,
  `extrafields_id` int(11) NOT NULL,
  `value` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `prfwj_bt_property_extrafields_values`
--

INSERT INTO `prfwj_bt_property_extrafields_values` (`property_id`, `extrafields_id`, `value`) VALUES
(1, 1, '1000'),
(1, 5, '2'),
(1, 6, '2'),
(1, 7, '2'),
(2, 1, ''),
(2, 5, ''),
(2, 6, ''),
(2, 7, ''),
(3, 8, ''),
(3, 1, '1000'),
(3, 5, '3'),
(3, 6, '2'),
(3, 7, '1'),
(3, 11, '5'),
(4, 8, '2000'),
(4, 1, '1000'),
(4, 5, '3'),
(4, 6, '2'),
(4, 7, '1'),
(4, 11, '5'),
(5, 8, '2000'),
(5, 1, '1000'),
(5, 5, '3'),
(5, 6, '2'),
(5, 7, '1'),
(5, 11, '5'),
(14, 8, ''),
(14, 1, '1000'),
(14, 5, '3'),
(14, 6, '2'),
(14, 7, '1'),
(14, 11, '5'),
(23, 8, '2000'),
(23, 1, '1000'),
(23, 5, '3'),
(23, 6, '2'),
(23, 7, '1'),
(20, 8, '2000'),
(20, 1, '1000'),
(20, 5, '3'),
(20, 6, '2'),
(20, 7, '1'),
(6, 1, '1000'),
(6, 5, '3'),
(6, 6, '2'),
(6, 7, '1'),
(7, 1, '1000'),
(7, 5, '3'),
(7, 6, '2'),
(7, 7, '1'),
(8, 1, '1000'),
(8, 5, '4'),
(8, 6, '2'),
(8, 7, '1'),
(38, 1, '1000'),
(38, 5, '3'),
(38, 6, '2'),
(38, 7, '1'),
(39, 1, '1'),
(39, 5, '12'),
(39, 6, '22'),
(39, 7, '22'),
(40, 1, '1212'),
(40, 5, '121'),
(40, 6, '122'),
(40, 7, '121'),
(41, 1, '55'),
(41, 5, '5'),
(41, 6, '55'),
(41, 7, '55'),
(42, 1, '66'),
(42, 5, '66'),
(42, 6, '66'),
(42, 7, '66'),
(43, 1, '1'),
(43, 5, '1'),
(43, 6, '1'),
(43, 7, '1'),
(44, 1, '121'),
(44, 5, '121'),
(44, 6, '12'),
(44, 7, '121'),
(9, 1, '1000'),
(9, 5, '3'),
(9, 6, '2'),
(9, 7, '1'),
(10, 1, '1000'),
(10, 5, '3'),
(10, 6, '2'),
(10, 7, '1'),
(11, 1, '1000'),
(11, 5, '3'),
(11, 6, '2'),
(11, 7, '1'),
(12, 1, '1000'),
(12, 5, '3'),
(12, 6, '2'),
(12, 7, '1'),
(13, 1, '670'),
(13, 5, '3'),
(13, 6, '2'),
(13, 7, '1'),
(15, 1, '2300'),
(15, 5, '5'),
(15, 6, '4'),
(15, 7, '2'),
(16, 1, '2300'),
(16, 5, '3'),
(16, 6, '2'),
(16, 7, '1'),
(17, 1, '700'),
(17, 5, '3'),
(17, 6, '2'),
(17, 7, '1'),
(18, 1, '1000'),
(18, 5, '3'),
(18, 6, '2'),
(18, 7, '1'),
(19, 1, '1230'),
(19, 5, '3'),
(19, 6, '2'),
(19, 7, '1'),
(21, 1, '1000'),
(21, 5, '3'),
(21, 6, '2'),
(21, 7, '1'),
(37, 1, '1000'),
(37, 5, '3'),
(37, 6, '2'),
(37, 7, '1'),
(36, 1, '5825'),
(36, 5, '5'),
(36, 6, '3'),
(36, 7, '2'),
(22, 1, '1000'),
(22, 5, '3'),
(22, 6, '2'),
(22, 7, '1'),
(24, 1, '3400'),
(24, 5, '3'),
(24, 6, '2'),
(24, 7, '1'),
(25, 1, '3400'),
(25, 5, '3'),
(25, 6, '2'),
(25, 7, '1'),
(26, 1, '2400'),
(26, 5, '3'),
(26, 6, '2'),
(26, 7, '1'),
(45, 1, '1'),
(45, 5, '1'),
(45, 6, '1'),
(45, 7, '1'),
(46, 1, '12'),
(46, 5, '12'),
(46, 6, '12'),
(46, 7, '12'),
(47, 1, '1'),
(47, 5, '1'),
(47, 6, '1'),
(47, 7, '1'),
(48, 1, '1'),
(48, 5, '1'),
(48, 6, '1'),
(48, 7, '1'),
(49, 1, '2'),
(49, 5, '2'),
(49, 6, '2'),
(49, 7, '2'),
(50, 1, '12'),
(50, 5, '1'),
(50, 6, '1'),
(50, 7, '1'),
(4, 9, 'Internet,Use of pool,Cable TV,Beach,Balcony,Parquet,Microwave,Smoking allowed'),
(4, 13, ' <div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> </div>'),
(4, 12, '		<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" alt="" border="0" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" alt="" border="0" /></a></p>'),
(26, 9, 'Internet,Use of pool,Cable TV,Beach,Balcony,Parquet,Microwave,Smoking allowed'),
(26, 13, '<div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>'),
(26, 12, '		<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" border="0" alt="" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" border="0" alt="" /></a></p>'),
(37, 9, 'Internet,Use of pool,Cable TV,Beach,Balcony,Parquet,Microwave,Smoking allowed'),
(37, 13, '<div class="video"><iframe src="//player.vimeo.com/video/34741214?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>'),
(37, 12, '	<p><a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-01.jpg" border="0" alt="" /></a> <a class="image-popup" href="images/bowthemes/floor-plan-big.jpg"><img src="images/bowthemes/floor-plan-02.jpg" border="0" alt="" /></a></p>'),
(54, 1, '122'),
(54, 5, '1'),
(54, 6, '1'),
(54, 9, 'Terrasse,Location saisonnière');

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_bt_property_favourites`
--

CREATE TABLE `prfwj_bt_property_favourites` (
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_bt_property_images`
--

CREATE TABLE `prfwj_bt_property_images` (
  `id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `title` text,
  `filename` text,
  `media_type` varchar(200) NOT NULL,
  `youid` varchar(200) NOT NULL,
  `youdesc` text NOT NULL,
  `youembed` text NOT NULL,
  `default` int(1) DEFAULT '0',
  `ordering` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `prfwj_bt_property_images`
--

INSERT INTO `prfwj_bt_property_images` (`id`, `item_id`, `title`, `filename`, `media_type`, `youid`, `youdesc`, `youembed`, `default`, `ordering`) VALUES
(23, 4, 'Bathroom', 'tmp1407984701property-detail-03.jpg', 'image', '', '', '', 1, 0),
(24, 4, 'Bedroom', 'tmp1407984701property-detail-02.jpg', 'image', '', '', '', 0, 1),
(25, 4, 'Front view', 'tmp1407984701property-detail-01.jpg', 'image', '', '', '', 0, 2),
(20, 3, 'property-detail-01.jpg', 'tmp1407983894property-detail-01.jpg', 'image', '', '', '', 1, 0),
(21, 3, 'property-detail-03.jpg', 'tmp1407983894property-detail-03.jpg', 'image', '', '', '', 0, 1),
(22, 3, 'property-detail-02.jpg', 'tmp1407983894property-detail-02.jpg', 'image', '', '', '', 0, 2),
(26, 5, '', 'tmp1407985903property-detail-01.jpg', 'image', '', '', '', 1, 0),
(27, 5, '', 'tmp1407985909property-detail-03.jpg', 'image', '', '', '', 0, 1),
(28, 5, '', 'tmp1407985909property-detail-02.jpg', 'image', '', '', '', 0, 2),
(29, 14, 'property-detail-02.jpg', 'tmp1408088542property-detail-02.jpg', 'image', '', '', '', 1, 0),
(30, 14, 'property-detail-01.jpg', 'tmp1408088543property-detail-01.jpg', 'image', '', '', '', 0, 1),
(39, 11, 'property-large-2.jpg', 'tmp1411438436property-large-2.jpg', 'image', '', '', '', 1, 0),
(38, 10, 'slide-03.jpg', 'tmp1410152120slide-03.jpg', 'image', '', '', '', 0, 1),
(90, 9, 'slide-two.jpg', 'tmp1411702796slide-two.jpg', 'image', '', '', '', 1, 0),
(37, 9, 'slide-02.jpg', 'tmp1410152108slide-02.jpg', 'image', '', '', '', 0, 1),
(40, 11, 'property-large-15.jpg', 'tmp1411438443property-large-15.jpg', 'image', '', '', '', 0, 1),
(41, 11, 'property-large-17.jpg', 'tmp1411438445property-large-17.jpg', 'image', '', '', '', 0, 2),
(42, 12, 'property-large-3.jpg', 'tmp1411438491property-large-3.jpg', 'image', '', '', '', 1, 0),
(43, 12, 'property-large-4.jpg', 'tmp1411438494property-large-4.jpg', 'image', '', '', '', 0, 1),
(44, 12, 'property-large-12.jpg', 'tmp1411438496property-large-12.jpg', 'image', '', '', '', 0, 2),
(45, 13, 'property-large-4.jpg', 'tmp1411438534property-large-4.jpg', 'image', '', '', '', 1, 0),
(46, 13, 'property-large-12.jpg', 'tmp1411438537property-large-12.jpg', 'image', '', '', '', 0, 1),
(47, 13, 'property-large-14.jpg', 'tmp1411438539property-large-14.jpg', 'image', '', '', '', 0, 2),
(48, 15, 'property-large-12.jpg', 'tmp1411438586property-large-12.jpg', 'image', '', '', '', 1, 0),
(49, 15, 'property-large-2.jpg', 'tmp1411438603property-large-2.jpg', 'image', '', '', '', 0, 1),
(50, 15, 'property-large-3.jpg', 'tmp1411438605property-large-3.jpg', 'image', '', '', '', 0, 2),
(51, 16, 'property11.jpg', 'tmp1411438912property11.jpg', 'image', '', '', '', 1, 0),
(52, 16, 'property7.jpg', 'tmp1411438921property7.jpg', 'image', '', '', '', 0, 1),
(53, 16, 'apartment-a.jpg', 'tmp1411438928apartment-a.jpg', 'image', '', '', '', 0, 2),
(54, 17, 'property8.jpg', 'tmp1411439091property8.jpg', 'image', '', '', '', 1, 0),
(55, 17, 'property-large-14.jpg', 'tmp1411439099property-large-14.jpg', 'image', '', '', '', 0, 1),
(56, 17, 'property-large-15.jpg', 'tmp1411439102property-large-15.jpg', 'image', '', '', '', 0, 2),
(57, 18, 'property9.jpg', 'tmp1411439200property9.jpg', 'image', '', '', '', 1, 0),
(58, 18, 'apartment-a.jpg', 'tmp1411439208apartment-a.jpg', 'image', '', '', '', 0, 1),
(59, 19, 'property3.jpg', 'tmp1411439252property3.jpg', 'image', '', '', '', 1, 0),
(60, 19, 'property12.jpg', 'tmp1411439257property12.jpg', 'image', '', '', '', 0, 1),
(61, 19, 'property-large-17.jpg', 'tmp1411439262property-large-17.jpg', 'image', '', '', '', 0, 2),
(62, 20, 'property10.jpg', 'tmp1411439314property10.jpg', 'image', '', '', '', 1, 0),
(63, 20, 'property-large-4.jpg', 'tmp1411439320property-large-4.jpg', 'image', '', '', '', 0, 1),
(64, 20, 'property12.jpg', 'tmp1411439322property12.jpg', 'image', '', '', '', 0, 2),
(65, 21, 'detail-img1.jpg', 'tmp1411441518detail-img1.jpg', 'image', '', '', '', 1, 0),
(66, 21, 'property-large-2.jpg', 'tmp1411441525property-large-2.jpg', 'image', '', '', '', 0, 1),
(67, 21, 'property-large-15.jpg', 'tmp1411441529property-large-15.jpg', 'image', '', '', '', 0, 2),
(68, 37, 'property11.jpg', 'tmp1411441814property11.jpg', 'image', '', '', '', 1, 0),
(69, 37, 'detail-img3.jpg', 'tmp1411441821detail-img3.jpg', 'image', '', '', '', 0, 1),
(70, 37, 'property-large-14.jpg', 'tmp1411441825property-large-14.jpg', 'image', '', '', '', 0, 2),
(71, 36, 'property3.jpg', 'tmp1411442037property3.jpg', 'image', '', '', '', 1, 0),
(72, 36, 'property12.jpg', 'tmp1411442043property12.jpg', 'image', '', '', '', 0, 1),
(73, 36, 'property-large-2.jpg', 'tmp1411442046property-large-2.jpg', 'image', '', '', '', 0, 2),
(74, 22, 'property-large-4.jpg', 'tmp1411442342property-large-4.jpg', 'image', '', '', '', 1, 0),
(75, 22, 'property-large-2.jpg', 'tmp1411442345property-large-2.jpg', 'image', '', '', '', 0, 1),
(76, 23, 'property-large-3.jpg', 'tmp1411442446property-large-3.jpg', 'image', '', '', '', 1, 0),
(77, 23, 'property-large-17.jpg', 'tmp1411442449property-large-17.jpg', 'image', '', '', '', 0, 1),
(78, 23, 'property-large-2.jpg', 'tmp1411442451property-large-2.jpg', 'image', '', '', '', 0, 2),
(79, 24, 'property8.jpg', 'tmp1411442564property8.jpg', 'image', '', '', '', 1, 0),
(80, 24, 'detail-img5.jpg', 'tmp1411442567detail-img5.jpg', 'image', '', '', '', 0, 1),
(81, 24, 'property-large-4.jpg', 'tmp1411442569property-large-4.jpg', 'image', '', '', '', 0, 2),
(82, 25, 'property11.jpg', 'tmp1411442609property11.jpg', 'image', '', '', '', 1, 0),
(83, 25, 'property10.jpg', 'tmp1411442612property10.jpg', 'image', '', '', '', 0, 1),
(84, 25, 'property-large-3.jpg', 'tmp1411442614property-large-3.jpg', 'image', '', '', '', 0, 2),
(85, 26, 'property3.jpg', 'tmp1411442699property3.jpg', 'image', '', '', '', 1, 0),
(86, 26, 'property12.jpg', 'tmp1411442703property12.jpg', 'image', '', '', '', 0, 1),
(87, 26, 'property-large-15.jpg', 'tmp1411442711property-large-15.jpg', 'image', '', '', '', 0, 2),
(88, 8, 'slide-three.jpg', 'tmp1411702771slide-three.jpg', 'image', '', '', '', 1, 0),
(89, 8, 'slide-one.jpg', 'tmp1411702763slide-one.jpg', 'image', '', '', '', 0, 1),
(91, 10, 'slide-one.jpg', 'tmp1411702832slide-one.jpg', 'image', '', '', '', 1, 0),
(100, 49, '', '1412232773-Corbis-42-30518546.jpg', 'image', '', '', '', 0, 2),
(99, 49, '', '1412232773-Corbis-42-30518549.jpg', 'image', '', '', '', 0, 1),
(98, 49, '', '1412232772-Corbis-42-30517597.jpg', 'image', '', '', '', 1, 0),
(101, 50, '', '1412233273-Corbis-42-30517597.jpg', 'image', '', '', '', 1, 0),
(102, 50, '', '1412233273-Corbis-42-30518546.jpg', 'image', '', '', '', 0, 1),
(103, 50, '', '1412233273-Corbis-42-30518549.jpg', 'image', '', '', '', 0, 2),
(106, 54, '', '1496358592-17857403_10206541674579261_2143093859_n.png', 'image', '', '', '', 1, 0),
(107, 54, '', '1496358598-17857403_10206541674579261_2143093859_n.png', 'image', '', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_bt_property_items`
--

CREATE TABLE `prfwj_bt_property_items` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `value` varchar(500) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `published` tinyint(4) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `prfwj_bt_property_items`
--

INSERT INTO `prfwj_bt_property_items` (`id`, `title`, `alias`, `value`, `parent_id`, `type`, `published`, `ordering`) VALUES
(73, 'France', 'france', NULL, NULL, 'location_lv1', 1, NULL),
(104, 'Italy', 'italy', NULL, NULL, 'location_lv1', 1, NULL),
(194, 'Spain', 'spain', NULL, NULL, 'location_lv1', 1, NULL),
(221, 'United Kingdom', 'united-kingdom', NULL, NULL, 'location_lv1', 1, NULL),
(222, 'United States', 'united-states', NULL, NULL, 'location_lv1', 1, NULL),
(229, 'Viet Nam', 'viet-nam', NULL, NULL, 'location_lv1', 1, NULL),
(248, 'Ha Noi', 'ha-noi', NULL, 229, 'location_lv2', 1, 1),
(249, '123', '123', NULL, NULL, 'property_type', 1, 1),
(250, 'BT Google Map Pro', '1234', NULL, NULL, 'property_type', 1, 1),
(251, 'For Rent', 'for-rent', NULL, NULL, 'prstatus', 1, 1),
(252, 'For Sale', 'for-sale', NULL, NULL, 'prstatus', 1, 1),
(255, 'Quick summary', 'quick-summary', NULL, NULL, 'exgroup', 1, 1),
(256, 'Floor Plans', 'floor-plans', NULL, NULL, 'exgroup', 1, 2),
(257, 'Lang Son', 'lang-son', NULL, 229, 'location_lv2', 1, 2),
(258, 'Ba Dinh', 'ba-dinh', NULL, 248, 'location_lv3', 1, 1),
(259, 'Dong Da', 'dong-da', NULL, 248, 'location_lv3', 1, 2),
(260, 'Options', 'options', NULL, NULL, 'exgroup', 1, 1),
(263, 'In Hold', 'in-hold', NULL, NULL, 'prstatus', 1, 1),
(264, 'Under Offer', 'under-offer', NULL, NULL, 'prstatus', 1, 1),
(265, 'Pending', 'pending', NULL, NULL, 'prstatus', 1, 1),
(266, 'Sold', 'sold', NULL, NULL, 'prstatus', 1, 1),
(267, 'Video Presentation', 'video-presentation', NULL, NULL, 'exgroup', 1, 1),
(268, 'Bac Son', 'bac-son', NULL, 257, 'location_lv3', 1, 1),
(270, 'Paris', 'paris', NULL, 73, 'location_lv2', 1, 1),
(271, 'London', 'london', NULL, 221, 'location_lv2', 1, 1),
(272, 'Marseille', 'marseille', NULL, 73, 'location_lv2', 1, 2),
(273, 'Le Marais', 'le-marais', NULL, 270, 'location_lv3', 1, 1),
(274, 'Montmartre', 'montmartre', NULL, 270, 'location_lv3', 1, 2),
(275, 'Bercy', 'bercy', NULL, 270, 'location_lv3', 1, 3),
(276, 'Balham', 'balham', NULL, 271, 'location_lv3', 1, 1),
(277, 'Lewisham', 'lewisham', NULL, 271, 'location_lv3', 1, 1),
(278, 'Minnesota', 'minnesota', NULL, 222, 'location_lv2', 1, 1),
(279, 'Golden Valley', 'golden-valley', NULL, 278, 'location_lv3', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_bt_property_related`
--

CREATE TABLE `prfwj_bt_property_related` (
  `property_id` int(11) NOT NULL DEFAULT '0',
  `related_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `prfwj_bt_property_related`
--

INSERT INTO `prfwj_bt_property_related` (`property_id`, `related_id`) VALUES
(4, 3),
(4, 8),
(4, 9);

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_bt_users`
--

CREATE TABLE `prfwj_bt_users` (
  `user_id` int(11) NOT NULL,
  `profile_link` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `website` varchar(255) NOT NULL,
  `favorite_quotes` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `gender` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `skype` varchar(255) NOT NULL,
  `account_type` varchar(500) NOT NULL,
  `agency` varchar(255) NOT NULL,
  `compte_type` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `prfwj_bt_users`
--

INSERT INTO `prfwj_bt_users` (`user_id`, `profile_link`, `avatar`, `birthday`, `location`, `website`, `favorite_quotes`, `about`, `gender`, `city`, `phone`, `mobile`, `skype`, `account_type`, `agency`, `compte_type`, `telephone`) VALUES
(313, '', 'f386216e7c67e87f239b434844f9e734_(bowthemes_avatar)_.jpeg', '0000-00-00', 'VietNamese', '', '', '				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et dui vestibulum, bibendum purus sit amet, vulputate mauris. Ut adipiscing gravida tincidunt. Duis euismod placerat rhoncus. Phasellus mollis imperdiet placerat.</p>', 'male', 'Chealsea', '123456789', '84 987654321', 'john.doe', '10', '14', '12', ''),
(314, '', '9e2532cc8f007a2f9f8de2a2393eef00_(kiennb_avatar)_.jpeg', '0000-00-00', NULL, '', '', '<p>Cras quam massa, vehicula sit amet neque eu, posuere molestie risus. Aliquam sit amet mattis libero. Donec risus diam, iaculis non lobortis et, euismod nec erat. Suspendisse potenti. Maecenas et semper lacus. Aliquam erat volutpat. Aenean nulla sem, luctus a ipsum et.</p>', '', '', '123456789', '84 123456789', 'kien.nb', '10', '8', '11', ''),
(315, '', '9ff4c13b8c79c9268cb1da85cbae6a9f_(robertfarley_avatar)_.jpeg', '0000-00-00', NULL, '', '', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras et dui vestibulum, bibendum purus sit amet, vulputate mauris. Ut adipiscing gravida tincidunt. Duis euismod placerat rhoncus. Phasellus mollis imperdiet placerat.</p>', '', '', '123456789', '84 123456789', 'robert.farley', '10', '8', '', ''),
(1001, '', '', '0000-00-00', NULL, '', '', '', '', '', '', '', '', '', '', '12', '0654154515');

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_bt_user_fields`
--

CREATE TABLE `prfwj_bt_user_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `alias` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `default_values` text,
  `ordering` int(11) DEFAULT NULL,
  `description` text,
  `required` tinyint(4) DEFAULT NULL,
  `show_registration` tinyint(4) DEFAULT NULL,
  `show_listing` tinyint(4) DEFAULT NULL,
  `facebook` text,
  `twitter` text,
  `google` text,
  `linkedin` text,
  `published` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `prfwj_bt_user_fields`
--

INSERT INTO `prfwj_bt_user_fields` (`id`, `name`, `alias`, `type`, `default_values`, `ordering`, `description`, `required`, `show_registration`, `show_listing`, `facebook`, `twitter`, `google`, `linkedin`, `published`) VALUES
(1, 'Profile link', 'profile_link', 'string', '', 9, '', 0, 1, 1, 'link', 'link', 'link', 'link', 0),
(2, 'Avatar', 'avatar', 'image', '', 7, '', 0, 1, 1, 'picture', 'picture', 'picture', 'picture', 0),
(3, 'Birthday', 'birthday', 'date', '', 10, '', 0, 1, 1, 'birthday', 'birthday', 'birthday', 'birthday', 0),
(4, 'Location', 'location', 'string', NULL, 11, '', 0, 1, 0, 'location', 'location', 'location', 'location', 0),
(5, 'Website', 'website', 'string', '', 14, '', 0, 1, 0, 'website', 'website', '', '', 0),
(6, 'Favorite quotes', 'favorite_quotes', 'string', '', 12, '', 0, 1, 0, 'quotes', 'quotes', '', 'quotes', 0),
(7, 'About', 'about', 'text', '', 3, '', 0, 1, 1, '', '', '', '', 0),
(8, 'Gender', 'gender', 'dropdown', 'a:2:{s:5:"label";s:19:"-- Select Gender --";s:5:"value";a:2:{i:0;s:4:"male";i:1;s:6:"female";}}', 8, '', 0, 1, 1, '', '', '', '', 0),
(9, 'City', 'city', 'dropdown', 'a:2:{s:5:"label";s:17:"-- Select City --";s:5:"value";a:3:{i:0;s:8:"Chelsea";i:1;s:9:"Liverpool";i:2;s:7:"Asernal";}}', 13, '', 0, 1, 1, '', '', '', '', 0),
(10, 'Téléphone', 'telephone', 'string', '', 4, '', 1, 1, 1, '', '', '', '', 1),
(11, 'Mobile', 'mobile', 'string', NULL, 5, '', 0, 1, 1, '', '', '', '', 0),
(13, 'Skype', 'skype', 'string', NULL, 6, '', 0, 1, 1, '', '', '', '', 0),
(17, 'Type de compte', 'compte_type', 'usergroup', 'a:2:{s:5:"group";a:2:{i:0;s:2:"12";i:1;s:2:"11";}s:5:"value";a:0:{}}', 3, '', 1, 1, 1, '', '', '', '', 1),
(19, 'Your Agency', 'agency', 'sql', '(SELECT \'\' as value, \'- Select Agency -\' as text ) union \r\n(SELECT id as value, title as text FROM #__bt_property_agencies WHERE published = 1)', 2, '', 0, 1, 1, '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_bt_widgets`
--

CREATE TABLE `prfwj_bt_widgets` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `wgtype` varchar(255) NOT NULL,
  `published` tinyint(4) DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `note` text,
  `params` text,
  `updated_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `prfwj_bt_widgets`
--

INSERT INTO `prfwj_bt_widgets` (`id`, `title`, `alias`, `wgtype`, `published`, `ordering`, `note`, `params`, `updated_time`) VALUES
(1, 'Facebook Commend box', 'facebook-commend', 'facebook_commend', 1, 2, '', '{"fbrendering":"html5","fbwidth":"470","fbnumber_post":"10","fbcolorscheme":"light","fborder_by":"social"}', '2013-08-29 04:16:33'),
(2, 'Twitter feed', 'twitter-feed', 'twitter_feed', 1, 1, '', '{"embed_code":"<a class=\\"twitter-timeline\\"  href=\\"https:\\/\\/twitter.com\\/BowThemes\\"  data-widget-id=\\"322965533848903680\\">Tweets by @BowThemes<\\/a>\\r\\n<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=\\/^http:\\/.test(d.location)?\'http\':\'https\';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+\\":\\/\\/platform.twitter.com\\/widgets.js\\";fjs.parentNode.insertBefore(js,fjs);}}(document,\\"script\\",\\"twitter-wjs\\");<\\/script>\\r\\n","tweet-limit":"3","width":"","height":"","theme":"","link-color":"","border-color":"","noheader":"0","nofooter":"0","noborder":"0","noscrollbar":"0","transparent":"0"}', '2013-10-07 01:49:09'),
(3, 'Social share button', 'social-share-button', 'social_share', 1, 3, '', '{"add_button":"1","profile_id":"Your Profile ID","button_style":"lg-share-counter","facebook_share_button":"1","facebook_share_button_type":"","facebook_like":"1","facebook_sendbutton":"1","facebook_like_type":"button_count","facebook_like_width":"70","facebook_showface":"1","facebook_like_font":"arial","facebook_like_color":"light","facebook_like_action":"like","twitter":"1","twitter_name":"BowThemes","twitter_counter":"horizontal","twitter_size":"medium","twitter_language":"en","twitter_width":"80","bufferButton":"1","bufferType":"horizontal","bufferTwitterName":"BowThemes","googleplus":"1","google_plus_annotation":"bubble","google_plus_width":"120","google_plus_type":"20","linkedin":"1","linkedIn_type":"none","linkedIn_showzero":"1","linkedinfollow":"1","followcompany":"3129602","linkedInfollow_type":"right","linkedInfollow_showzero":"1","linkedin_recommend":"1","company_name":"Bowthemes","product_id":"201714","linkedInrecommend_type":"right","printeres":"1","pin_count":"beside","description":"","stumble":"1","stumble_type":"1","digg":"1","digg_type":"DiggCompact"}', '2013-10-07 01:50:35'),
(4, 'Google Interactive posts', 'google-interactive-posts', 'google_interactive_posts', 1, 4, '', '{"client_id":"306040699264","conten_url":"","cookiepolicy":"uri","gg_label":"CREATE","calltoactionurl":"http:\\/\\/plus.google.com\\/pages\\/create","calltoactiondeeplinkid":"","prefilltext":"Come learn about interactive posts with me!","button_text":"Invite your friends!","contentdeeplinkid":""}', '2013-08-27 09:02:44'),
(5, 'Login button', 'login-button', 'login_button', 1, 5, '', '{"buttonlogin":["all","facebook","twitter","google","linkedin"]}', '2013-09-09 04:12:49'),
(6, 'Facebook Recommendations bar', 'facebook-recommendations-bar', 'facebook_recommendations_bar', 1, 7, '', '{"rendering":"xfbml","fb_url":"https:\\/\\/www.facebook.com\\/bowthemes?fref=ts","fbtrigger":"X%","fbread_time":"30","fbflike_action":"like","fbside":"right","fbdomain":"","fbnum_recommendations":"2"}', '2013-09-18 04:19:30'),
(7, 'Facebook Embedded Posts', 'facebook-embedded-posts', 'facebook_embedded_post', 1, 8, '', '{"urlembed":"https:\\/\\/www.facebook.com\\/FacebookDevelopers\\/posts\\/10151471074398553"}', '2013-08-30 06:48:57'),
(8, 'Facebook Activity Feed', 'facebook-activity-feed', 'facebook_activityfeed', 1, 9, '', '{"fbdomain":"","fbRendering":"2","fbappid":"","fbaction":"","fbwidth":"300","fbheight":"300","fbshowheader":"true","fbcolorscheme":"light","fblinktarget":"_blank","fbfont":"","fbbordercolor":"","fbrecommendations":"false","moduleclass_sfx":"","cache":"1","cache_time":"900"}', '2013-08-30 07:11:14'),
(9, 'Linkedin member profile', 'linkedin-member-profile', 'linkedin_memberprofile', 1, 10, '', '{"profile_url":"http:\\/\\/www.linkedin.com\\/pub\\/anh-thong\\/7b\\/377\\/b86","layout":"iconname","textname":"THong enino","event":"hover","connection":"true"}', '2013-09-09 06:57:32'),
(10, 'Linkedin company Insider', 'linkedin-company-insider', 'linkedin_company_insider', 1, 11, '', '{"company_id":"3129602","view":["innetwork","newhires","jobchanges"]}', '2013-09-11 03:06:09'),
(11, 'Linkedin company profile', 'linkedin-company-profile', 'linkedin_companyprofile', 1, 12, '', '{"company_name":"Bowthemes","layout":"inline","textname":"Vsmarttech","event":"click","connection":"false"}', '2013-09-11 03:08:09'),
(12, 'Linkedin Apply button', 'linkedin-apply-button', 'linkedin_apply_button', 1, 13, '', '{"company_id":"3129602","rcemail":"anhthonghn@gmail.com","jobtitle":"student","joblocation":"developer","companylogo":"http:\\/\\/bowthemes.com\\/templates\\/bowthemes\\/images\\/joomla_templates_logo.png","themecolor":"f08024","phone":"0"}', '2013-10-07 01:55:10'),
(13, 'Linkedin Build a Jobs', 'linkedin-build-a-jobs', 'linkedin_job', 1, 14, '', '{"job":"0","company_id":"3129602"}', '2013-09-09 10:34:00'),
(14, 'Facebook Facepile', 'facebook-facepile', 'facebook_facepile', 1, 15, '', '{"fbrendering":"html5","fburl":"http:\\/\\/facebook.com\\/FacebookDevelopers","fbaction":"30","fbnum_row":"30","fbsize":"large","fbshowcount":"true","fbwidth":"300","fbcolorscheme":"light"}', '2013-09-11 09:20:50'),
(15, 'Facebook Recommendations box', 'facebook-recommendations-box', 'facebook_recommendations_box', 1, 16, '', '{"fbrendering":"html5","fbdomain":"developers.facebook.com","fbapp_id":"","fbaction":"","fbwidth":"300","fbheight":"300","fbshowheader":"true","fbcolorscheme":"light","fblinktarget":"_blank","fbfont":"","fbmax_age":"0"}', '2013-10-07 01:37:50'),
(16, 'Facebook Like Box', 'facebook-like-box', 'facebook_likebox', 1, 17, '', '{"type":"likebox","profile":"","href":"http:\\/\\/www.facebook.com\\/bowthemes","width":"","height":"556","height_follow":"","layout":"standard","font":"","show_faces":"true","connections":"10","show_stream":"true","show_header":"true","force_wall":"false","colorscheme":"light","border_color":"","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', '2013-10-07 01:42:21'),
(17, 'Google Badge', 'google-badge', 'google_badge', 1, 18, '', '{"page_id":"110185082550651520481","badge_size":"badge","customize_name":"Bowthemes","alt_icon":"BowThemes Google plus Page","theme":"light","height":"69","width":"300","badge_tag":"htmlvalid","async":"1","parse_tags":"onload"}', '2013-10-07 01:43:47'),
(18, 'Google Comment', 'google-comment', 'google_comment', 1, 19, '', '{"width":"650"}', '2013-12-16 04:36:57');

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_categories`
--

CREATE TABLE `prfwj_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `prfwj_categories`
--

INSERT INTO `prfwj_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 19, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 999, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 999, '2010-06-28 13:26:37', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 999, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 999, '2010-06-28 13:27:57', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 999, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 999, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 999, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 38, 1, 13, 14, 1, 'demo', 'com_content', 'Demo', 'demo', '', '', 1, 999, '2017-04-12 16:59:03', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 999, '2014-07-28 23:08:11', 0, '0000-00-00 00:00:00', 0, '*', 1),
(9, 45, 1, 15, 16, 1, 'testimonials', 'com_content', 'Testimonials', 'testimonials', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 999, '2014-08-04 23:06:45', 0, '0000-00-00 00:00:00', 0, '*', 1),
(10, 46, 1, 17, 18, 1, 'faqs', 'com_content', 'FAQs', 'faqs', '', '', 1, 999, '2017-05-16 22:01:56', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 999, '2014-08-04 23:06:58', 0, '0000-00-00 00:00:00', 0, '*', 1);

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_contact_details`
--

CREATE TABLE `prfwj_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `prfwj_contact_details`
--

INSERT INTO `prfwj_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'Bowthemes', 'bowthemes', '', 'MDB FRANCE\r\n120 Chemin de Terron\r\nLe Majestic Bat. B\r\n06200 NICE', '', '', '', '', '', '', '<h3>Social Profiles</h3>\r\n<div class="agent-social"> </div>', '', 'Info@mdbfrance.fr', 0, 1, 999, '2017-05-16 21:41:03', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_tags":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","articles_display_num":"","show_profile":"","show_links":"","linka_name":"","linka":false,"linkb_name":"","linkb":false,"linkc_name":"","linkc":false,"linkd_name":"","linkd":false,"linke_name":"","linke":false,"contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 4, 1, '', '', '', '', '', '*', '2014-07-30 00:06:03', 999, '', '2017-04-24 16:30:10', 999, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3, 153);

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_content`
--

CREATE TABLE `prfwj_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `prfwj_content`
--

INSERT INTO `prfwj_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 36, 'Pricing', 'pricing', '<p>[bt_pricetable unit_width="auto" width_px="980" width_percent="100" currency="$" color_scheme="#ffffff" title_font_size="36" bgr_title="#1396e2" currency_font_size="18" price_font_size="18" price_color="#ffffff" price_hover_color="#ffffff" bgr_price_color="#073855" bgr_price_hover_color="#073855" detail_font_size="14" detail_color="#5a5a5a" purchase_text="Sign In" purchase_text_font_size="14" purchase_color="#fff" purchase_bgr_color="#1396e2" class="pp_style1"][bt_pricecol title="Free" price="0<small>forever</small>" detail="1 Property;1 Agent Profile;Agency Profile;Featured Properties" purchase_link="https://bowthemes.com/lang/en/subscribe"][bt_pricecol title="Silver" price="20<small>/ month</small>" detail="20 Properties;10 Agent Profiles;5 Agency Profiles;Featured Properties" purchase_link="https://bowthemes.com/lang/en/subscribe"][bt_pricecol class="promoted" title="Gold" price="40<small>/ month</small>" detail="30 Properties;20 Agent Profiles;10 Agency Profiles;Featured Properties" purchase_link="https://bowthemes.com/lang/en/subscribe"][bt_pricecol title="Platinum" price="60<small>/ month</small>" detail="Unlimited Properties;Unlimited Agent Profiles;Unlimited Agency Profiles;Featured Properties" purchase_link="https://bowthemes.com/lang/en/subscribe"][/bt_pricetable]</p>\r\n<p><span style="line-height: 1.3em;">[bt_pricetable unit_width="auto" width_px="980" width_percent="100" currency="$" color_scheme="#1396e2" title_font_size="24" bgr_title="#ffffff" currency_font_size="14" price_font_size="14" price_color="#073855" price_hover_color="#073855" bgr_price_color="#ffffff" bgr_price_hover_color="#ffffff" detail_font_size="12" detail_color="#5a5a5a" purchase_text="Select" purchase_text_font_size="12" purchase_color="#fff" purchase_bgr_color="#1396e2" class="pp_style2"][bt_pricecol title="Your Package:" price="" detail="Property Submit Limit;Agent Profiles;Agency Profiles;Featured Properties"][bt_pricecol class="selected" title="Free" price="0" detail="1;1;icon:times;icon:times" purchase_link="https://bowthemes.com/lang/en/subscribe"][bt_pricecol title="Silver" price="20" detail="20;10;5;icon:check" purchase_link="https://bowthemes.com/lang/en/subscribe"] [bt_pricecol title="Gold" price="40" detail="Unlimited;Unlimited;Unlimited;icon:check" purchase_link="https://bowthemes.com/lang/en/subscribe"][/bt_pricetable]</span></p>\r\n<p><span style="line-height: 1.3em;">[bt_pricetable unit_width="auto" width_px="980" width_percent="100" currency="$" color_scheme="#ffffff" title_font_size="36" bgr_title="#1396e2" currency_font_size="14" price_font_size="18" price_color="#ffffff" price_hover_color="#ffffff" bgr_price_color="#073855" bgr_price_hover_color="#073855" detail_font_size="14" detail_color="#5a5a5a" purchase_text="Sign In" purchase_text_font_size="14" purchase_color="#fff" purchase_bgr_color="#1396e2" class="pp_style1"][bt_pricetable unit_width="auto" width_px="980" width_percent="100" currency="$" color_scheme="#ffffff" title_font_size="36" bgr_title="#1396e2" currency_font_size="18" price_font_size="18" price_color="#ffffff" price_hover_color="#ffffff" bgr_price_color="#073855" bgr_price_hover_color="#073855" detail_font_size="14" detail_color="#5a5a5a" purchase_text="Sign In" purchase_text_font_size="14" purchase_color="#fff" purchase_bgr_color="#1396e2" class="zoner"][bt_pricecol title="Free" price="0<small>forever</small>" detail="1 Property;1 Agent Profile;Agency Profile;Featured Properties" purchase_link="https://bowthemes.com/lang/en/subscribe"][bt_pricecol class="promoted" title="Silver" price="20<small>/ month</small>" detail="20 Properties;10 Agent Profiles;5 Agency Profiles;Featured Properties" purchase_link="https://bowthemes.com/lang/en/subscribe"][bt_pricecol title="Gold" price="40<small>/ month</small>" detail="30 Properties;20 Agent Profiles;10 Agency Profiles;Featured Properties" purchase_link="https://bowthemes.com/lang/en/subscribe"][/bt_pricetable]</span></p>', '', 1, 2, '2014-07-28 16:57:59', 999, '', '2014-08-14 21:48:46', 313, 999, '2017-05-16 22:00:59', '2014-07-28 16:57:59', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 37, 7, '', '', 1, 421, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 37, 'Pricing2', 'pricing2', '<div class="row">[bt_iconbox style="icon-inleft-df" width="" class="col-md-4" title="Title box" title_color="#259b9a" icon="pencil" icon_size="20" font_size="12" text_color="#c8c8c8"]This is sample content of iconbox[/bt_iconbox] [bt_iconbox style="icon-inleft-df" width="" class="col-md-4" title="Title box" title_color="#259b9a" icon="pencil" icon_size="20" font_size="12" text_color="#c8c8c8"]This is sample content of iconbox[/bt_iconbox] [bt_iconbox style="icon-inleft-df" width="" class="col-md-4" title="Title box" title_color="#259b9a" icon="pencil" icon_size="20" font_size="12" text_color="#c8c8c8"]This is sample content of iconbox[/bt_iconbox]</div>', '', 1, 2, '2014-07-28 17:04:31', 999, '', '2014-08-08 21:39:04', 313, 999, '2017-05-21 22:15:49', '2014-07-28 17:04:31', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 12, 6, '', '', 1, 106, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 39, 'Vivamus porta orci eu turpis vulputate ornare fusce hendrerit arcu risu', 'vivamus-porta-orci-eu-turpis-vulputate-ornare-fusce-hendrerit-arcu-risu', '<p>Fusce quis nulla volutpat, rhoncus ligula ut, pulvinar nisi. In dapibus urna sit amet accumsan tristique. Donec odio ligula, luctus venenatis varius id, tincidunt ac ipsum. Cras commodo, velit nec aliquam dictum, tortor velit dictum ipsum, sed ornare nunc leo nec ipsum. Vestibulum sagittis sapien vitae tristique mollis. Aliquam hendrerit nulla semper, viverra mi et, hendrerit mauris. Maecenas hendrerit congue ultrices. In laoreet erat blandit eros aliquet, in malesuada sem rutrum. In placerat porta egestas.Phasellus metus ipsum, sollicitudin lacinia turpis in, pellentesque pulvinar diam.</p>\r\n', '\r\n<p>Cras ultricies augue sapien, aliquam hendrerit mi suscipit at. Suspendisse vulputate felis eget felis convallis fermentum et eu nulla. Donec sagittis sit amet erat non eleifend. Mauris at convallis magna. Quisque pellentesque id mauris vitae placerat. Mauris facilisis odio nec metus cursus commodo. Integer vel libero nunc. Donec ac lorem commodo, laoreet elit eget, tempus ante. Quisque eu nunc blandit erat rutrum feugiat ac sed arcu. In nisi risus, molestie a sem adipiscing, porta volutpat velit. Pellentesque nec felis sit amet nunc porta tincidunt sit amet et justo.</p>', 1, 8, '2014-07-28 23:09:17', 999, '', '2014-10-23 01:03:13', 313, 0, '0000-00-00 00:00:00', '2014-07-28 23:09:17', '0000-00-00 00:00:00', '{"image_intro":"images\\/blog\\/property4.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 4, '', '', 1, 20, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 40, 'Nulla sapien leo, placerat sed lacinia nec, rutrum quis', 'nulla-sapien-leo-placerat-sed-lacinia-nec-rutrum-quis', '<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec rutrum imperdiet ligula in bibendum. Aenean vulputate rutrum lobortis. Nullam non mi ac dui egestas venenatis. Etiam venenatis fermentum accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at lacus sapien.</p>\r\n', '\r\n<p>Phasellus metus ipsum, sollicitudin lacinia turpis in, pellentesque pulvinar diam. Cras ultricies augue sapien, aliquam hendrerit mi suscipit at. Suspendisse vulputate felis eget felis convallis fermentum et eu nulla. Donec sagittis sit amet erat non eleifend. Mauris at convallis magna. Quisque pellentesque id mauris vitae placerat. Mauris facilisis odio nec metus cursus commodo. Integer vel libero nunc. Donec ac lorem commodo, laoreet elit eget, tempus ante. Quisque eu nunc blandit erat rutrum feugiat ac sed arcu. In nisi risus, molestie a sem adipiscing, porta volutpat velit. Pellentesque nec felis sit amet nunc porta tincidunt sit amet et justo.</p>', 1, 8, '2014-07-28 23:15:39', 999, '', '2014-10-23 01:02:56', 313, 0, '0000-00-00 00:00:00', '2014-07-28 23:15:39', '0000-00-00 00:00:00', '{"image_intro":"images\\/blog\\/property3.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 3, '', '', 1, 21, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(5, 41, 'Lorem ipsum dolor sit amet consectetur adipiscing elit', 'lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit', '<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec rutrum imperdiet ligula in bibendum. Aenean vulputate rutrum lobortis. Nullam non mi ac dui egestas venenatis. Etiam venenatis fermentum accumsan. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec at lacus sapien.</p>\r\n', '\r\n<p>Phasellus metus ipsum, sollicitudin lacinia turpis in, pellentesque pulvinar diam. Cras ultricies augue sapien, aliquam hendrerit mi suscipit at. Suspendisse vulputate felis eget felis convallis fermentum et eu nulla. Donec sagittis sit amet erat non eleifend. Mauris at convallis magna. Quisque pellentesque id mauris vitae placerat. Mauris facilisis odio nec metus cursus commodo. Integer vel libero nunc. Donec ac lorem commodo, laoreet elit eget, tempus ante. Quisque eu nunc blandit erat rutrum feugiat ac sed arcu. In nisi risus, molestie a sem adipiscing, porta volutpat velit. Pellentesque nec felis sit amet nunc porta tincidunt sit amet et justo</p>', 1, 8, '2014-07-28 23:16:57', 999, '', '2014-10-23 01:02:41', 313, 0, '0000-00-00 00:00:00', '2014-07-28 23:16:57', '0000-00-00 00:00:00', '{"image_intro":"images\\/blog\\/property2.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 2, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 42, 'Donec sagittis sit amet erat non eleifend auris at convallis', 'donec-sagittis-sit-amet-erat-non-eleifend-auris-at-convallis', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sit amet commodo mauris, sit amet commodo turpis. Duis consequat placerat lacus, in sagittis metus pretium vel. In luctus justo venenatis, accumsan justo sit amet, volutpat dolor. Pellentesque quis nulla nec nisi tempor scelerisque. Nam nec scelerisque sapien. Donec eleifend purus id neque pretium, at sollicitudin erat vestibulum. Donec ac tempus tellus, ac dignissim sapien.</p>\r\n', '\r\n<p>Fusce et elementum arcu. Maecenas sit amet tincidunt lorem. Vivamus porta orci eu turpis vulputate ornare. Fusce hendrerit arcu risus, sed commodo lacus viverra in. Donec eget ligula in risus rutrum pretium id a elit. Nullam ut tristique arcu. Nam quis nunc ac eros accumsan tincidunt vel sit amet lorem. Sed euismod, turpis et facilisis vestibulum, leo lectus consectetur velit, sed lobortis ante dolor nec leo. Praesent congue tellus eu dui consectetur commodo. Sed quam ante, elementum sodales felis quis, rutrum tincidunt dolor. Etiam nec metus iaculis arcu cursus pulvinar. Nunc interdum eros a neque elementum lobortis. Nulla mattis quis risus vel molestie. Mauris id urna ac metus blandit lobortis in et odio.</p>\r\n<p>Phasellus metus ipsum, sollicitudin lacinia turpis in, pellentesque pulvinar diam. Cras ultricies augue sapien, aliquam hendrerit mi suscipit at. Suspendisse vulputate felis eget felis convallis fermentum et eu nulla. Donec sagittis sit amet erat non eleifend. Mauris at convallis magna. Quisque pellentesque id mauris vitae placerat. Mauris facilisis odio nec metus cursus commodo. Integer vel libero nunc. Donec ac lorem commodo, laoreet elit eget, tempus ante. Quisque eu nunc blandit erat rutrum feugiat ac sed arcu. In nisi risus, molestie a sem adipiscing, porta volutpat velit. Pellentesque nec felis sit amet nunc porta tincidunt sit amet et justo.</p>', 1, 8, '2014-07-28 23:19:01', 999, '', '2014-10-23 01:02:05', 313, 0, '0000-00-00 00:00:00', '2014-07-28 23:19:01', '0000-00-00 00:00:00', '{"image_intro":"images\\/blog\\/property1.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 1, '', '', 1, 26, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(7, 43, 'FAQs', 'faqs', '{loadposition zoner_faqs}', '', 1, 2, '2014-08-04 17:01:41', 999, '', '2014-08-04 17:08:18', 313, 0, '0000-00-00 00:00:00', '2014-08-04 17:01:41', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_vote":"0","show_hits":"0","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 5, '', '', 1, 80, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 44, 'Natalie Jenkins', 'testimonials', '<p>Fusce risus metus, placerat in consectetur eu, porttitor a est sed sed dolor lorem cras adipiscing</p>', '', 1, 9, '2014-08-04 23:06:22', 999, '', '2014-08-23 00:16:57', 313, 0, '0000-00-00 00:00:00', '2014-08-04 23:06:22', '0000-00-00 00:00:00', '{"image_intro":"images\\/member-01.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 2, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 47, 'Thomas Nguyen', 'thomas-nguyen', '<p>Fusce risus metus, placerat in consectetur eu, porttitor a est sed sed dolor lorem cras adipiscing</p>', '', 1, 9, '2014-08-04 23:11:29', 999, '', '2014-08-23 00:17:59', 313, 0, '0000-00-00 00:00:00', '2014-08-04 23:11:29', '0000-00-00 00:00:00', '{"image_intro":"images\\/agent-01.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 48, 'Christian Tran', 'christian-tran', '<p>Fusce risus metus, placerat in consectetur eu, porttitor a est sed sed dolor lorem cras adipiscing</p>', '', 1, 9, '2014-08-04 23:12:02', 999, '', '2014-08-23 00:16:07', 313, 0, '0000-00-00 00:00:00', '2014-08-04 23:12:02', '0000-00-00 00:00:00', '{"image_intro":"images\\/member-03.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 0, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 49, 'Suspendisse eleifend massa commodo porta lacus bibendum?', 'suspendisse-eleifend-massa-commodo-porta-lacus-bibendum', 'Maecenas nec diam sollicitudin, varius velit sit amet, pulvinar nisi. Donec rutrum nisl vitae tortor interdum, at luctus ligula vulputate. Phasellus sodales leo vel eleifend congue. Mauris adipiscing quis tortor et pulvinar. Phasellus in consequat felis. Suspendisse venenatis congue dolor ac imperdiet. Vivamus nibh erat, rutrum quis mi dictum, porta lacinia metus. Praesent ut dolor neque. Duis quis enim non felis auctor elementum. Praesent lacinia tempor arcu, in sagittis augue semper sed. Vestibulum augue nulla, facilisis vitae scelerisque ut, ullamcorper in urna. Integer ut blandit enim. ', '', 1, 10, '2014-08-04 23:12:52', 999, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-08-04 23:12:52', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 50, 'Nullam cursus non mauris vitae ultrices. Ut ut felis dolor?', 'nullam-cursus-non-mauris-vitae-ultrices-ut-ut-felis-dolor', 'In in commodo ipsum, at blandit neque. Suspendisse sed massa non diam aliquet luctus. Pellentesque laoreet turpis vel nisi ornare, et luctus nunc condimentum. Curabitur viverra magna et tortor hendrerit consectetur. Praesent faucibus mauris non vulputate euismod. Praesent mattis lacus et nibh porttitor tempor. Sed semper in ante ac imperdiet. ', '', 1, 10, '2014-08-04 23:13:05', 999, '', '2014-08-04 23:14:44', 313, 0, '0000-00-00 00:00:00', '2014-08-04 23:13:05', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 51, 'Etiam dapibus lorem nec accumsan tempus', 'etiam-dapibus-lorem-nec-accumsan-tempus', 'Vivamus tempor dui vitae molestie venenatis. In in consequat turpis, ac interdum urna. Pellentesque interdum, mauris in pharetra porttitor, dui orci fringilla est, eu rhoncus risus neque ac felis. Aenean id commodo eros. Praesent egestas neque id nulla varius hendrerit. ', '', 1, 10, '2014-08-04 23:13:15', 999, '', '2014-08-04 23:14:10', 313, 0, '0000-00-00 00:00:00', '2014-08-04 23:13:15', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 52, 'Duis a convallis ipsum. Cras nec molestie ipsum, quis fermentum augue', 'duis-a-convallis-ipsum-cras-nec-molestie-ipsum-quis-fermentum-augue', 'Donec in eros vitae dolor tempor pharetra. Etiam dictum ligula sit amet lectus euismod, quis faucibus risus aliquet. Aliquam lorem dolor, vulputate in laoreet quis, suscipit eu augue. In at bibendum orci. Ut gravida libero vel odio ornare, feugiat imperdiet ipsum feugiat. Nam non tellus a felis tincidunt posuere dapibus tempor mi. Maecenas est neque, volutpat eget sollicitudin a, aliquam sed tortor. Nulla sit amet arcu lectus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec dapibus ullamcorper libero sit amet molestie. ', '', 1, 10, '2014-08-04 23:13:26', 999, '', '2014-08-04 23:13:57', 313, 999, '2017-05-16 22:23:40', '2014-08-04 23:13:26', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(15, 53, 'Aliquam eget quam iaculis, sodales tellus non, gravida turpis', 'aliquam-eget-quam-iaculis-sodales-tellus-non-gravida-turpis', 'Pellentesque a velit aliquet, sagittis lacus ut, posuere sem. Cras ut sagittis neque, at eleifend orci. Duis sapien urna, viverra ac vestibulum sit amet, pharetra eu purus. Fusce elementum iaculis nibh, quis aliquam quam rhoncus varius. In id facilisis felis, in dictum eros. Integer ac lacus tellus. In mattis neque sit amet semper iaculis. Aliquam erat volutpat. ', '', 1, 10, '2014-08-04 23:13:42', 999, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-08-04 23:13:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(16, 56, 'About us', 'about-us', '<div id="ceo-section" class="center">\r\n<div class="cite-title">Serving you since 1999</div>\r\n<div class="cite no-bottom-margin">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla dolor purus, porta eget justo et, pulvinar vehicula dolor. Sed at turpis at augue convallis auctor ut in mi</div>\r\n<div class="cite no-bottom-margin">', '</div>\r\n<hr class="divider" /><a class="image" href="#"><img src="images/agent-01.jpg" alt="" border="0" /></a>\r\n<h3>John Doe</h3>\r\n<p>Company CEO</p>\r\n<div class="background-image"><img src="images/about-us-bg.jpg" alt="" border="0" /></div>\r\n</div>\r\n<div class="divider-image center"><img src="images/sine-wave.png" alt="" border="0" /></div>\r\n<div id="our-team">\r\n<h2 class="no-border">Our Team</h2>\r\n<div class="row">\r\n<div class="col-md-offset-1 col-md-5 col-sm-offset-1 col-sm-5">\r\n<div class="member"><a class="image" href="#"><img src="images/client-01.jpg" alt="" border="0" /></a>\r\n<div class="tag">Top Agent</div>\r\n<div class="wrapper">\r\n<h3>Carolyn Sloan</h3>\r\nAgent\r\n<dl>\r\n<dt>Phone:</dt>\r\n<dd>(123) 456 789</dd>\r\n<dt>Email:</dt>\r\n<dd><a href="mailto:">john.doe@example.com</a></dd>\r\n<dt>Skype:</dt>\r\n<dd>john.doe</dd>\r\n</dl>\r\n</div>\r\n</div>\r\n<!-- /.member --></div>\r\n<!-- /.col-md-5 -->\r\n<div class="col-md-5 col-sm-5">\r\n<div class="member"><a class="image" href="#"><img src="images/member-01.jpg" alt="" border="0" /></a>\r\n<div class="wrapper">\r\n<h3>Erika Green</h3>\r\nSupport\r\n<dl>\r\n<dt>Phone:</dt>\r\n<dd>(123) 456 789</dd>\r\n<dt>Email:</dt>\r\n<dd><a href="mailto:">john.doe@example.com</a></dd>\r\n<dt>Skype:</dt>\r\n<dd>john.doe</dd>\r\n</dl>\r\n</div>\r\n</div>\r\n<!-- /.member --></div>\r\n<!-- /.col-md-5 --></div>\r\n<!-- /.row -->\r\n<div class="row">\r\n<div class="col-md-4 col-sm-4">\r\n<div class="member"><a class="image" href="#"><img src="images/member-02.jpg" alt="" border="0" /></a>\r\n<div class="wrapper">\r\n<h3>Mary A. Parrish</h3>\r\nAgent\r\n<dl>\r\n<dt>Phone:</dt>\r\n<dd>(123) 456 789</dd>\r\n<dt>Email:</dt>\r\n<dd><a href="mailto:">john.doe@example.com</a></dd>\r\n<dt>Skype:</dt>\r\n<dd>john.doe</dd>\r\n</dl>\r\n</div>\r\n</div>\r\n<!-- /.member --></div>\r\n<!-- /.col-md-4 -->\r\n<div class="col-md-4 col-sm-4">\r\n<div class="member"><a class="image" href="#"><img src="images/member-03.jpg" alt="" border="0" /></a>\r\n<div class="wrapper">\r\n<h3>Russell G. Nowicki</h3>\r\nAgent\r\n<dl>\r\n<dt>Phone:</dt>\r\n<dd>(123) 456 789</dd>\r\n<dt>Email:</dt>\r\n<dd><a href="mailto:">john.doe@example.com</a></dd>\r\n<dt>Skype:</dt>\r\n<dd>john.doe</dd>\r\n</dl>\r\n</div>\r\n</div>\r\n<!-- /.member --></div>\r\n<!-- /.col-md-4 -->\r\n<div class="col-md-4 col-sm-4">\r\n<div class="member"><a class="image" href="#"><img src="images/member-04.jpg" alt="" border="0" /></a>\r\n<div class="wrapper">\r\n<h3>Kristine Hicks</h3>\r\nAgent\r\n<dl>\r\n<dt>Phone:</dt>\r\n<dd>(123) 456 789</dd>\r\n<dt>Email:</dt>\r\n<dd><a href="mailto:">john.doe@example.com</a></dd>\r\n<dt>Skype:</dt>\r\n<dd>john.doe</dd>\r\n</dl>\r\n</div>\r\n</div>\r\n<!-- /.member --></div>\r\n<!-- /.col-md-4 --></div>\r\n<!-- /.row --></div>\r\n<p>{loadposition zoner_funfacts}</p>\r\n<p>{loadposition zoner_testimonials}</p>', 1, 2, '2014-08-13 23:45:16', 999, '', '2016-10-17 10:33:23', 313, 313, '2016-12-21 10:19:22', '2014-08-13 23:45:16', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_vote":"0","show_hits":"0","show_noauth":"0","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 13, 4, '', '', 1, 57, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(17, 63, 'Velit nec aliquam dictum tortor velit dictum ipsumnunc leo nec', 'velit-nec-aliquam-dictum-tortor-velit-dictum-ipsumnunc-leo-nec', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sit amet commodo mauris, sit amet commodo turpis. Duis consequat placerat lacus, in sagittis metus pretium vel. In luctus justo venenatis, accumsan justo sit amet, volutpat dolor. Pellentesque quis nulla nec nisi tempor scelerisque. Nam nec scelerisque sapien. Donec eleifend purus id neque pretium, at sollicitudin erat vestibulum. Donec ac tempus tellus, ac dignissim sapien.</p>\r\n', '\r\n<p> </p>\r\n<p>Fusce et elementum arcu. Maecenas sit amet tincidunt lorem. Vivamus porta orci eu turpis vulputate ornare. Fusce hendrerit arcu risus, sed commodo lacus viverra in. Donec eget ligula in risus rutrum pretium id a elit. Nullam ut tristique arcu. Nam quis nunc ac eros accumsan tincidunt vel sit amet lorem. Sed euismod, turpis et facilisis vestibulum, leo lectus consectetur velit, sed lobortis ante dolor nec leo. Praesent congue tellus eu dui consectetur commodo. Sed quam ante, elementum sodales felis quis, rutrum tincidunt dolor. Etiam nec metus iaculis arcu cursus pulvinar. Nunc interdum eros a neque elementum lobortis. Nulla mattis quis risus vel molestie. Mauris id urna ac metus blandit lobortis in et odio.</p>\r\n<p>Phasellus metus ipsum, sollicitudin lacinia turpis in, pellentesque pulvinar diam. Cras ultricies augue sapien, aliquam hendrerit mi suscipit at. Suspendisse vulputate felis eget felis convallis fermentum et eu nulla. Donec sagittis sit amet erat non eleifend. Mauris at convallis magna. Quisque pellentesque id mauris vitae placerat. Mauris facilisis odio nec metus cursus commodo. Integer vel libero nunc. Donec ac lorem commodo, laoreet elit eget, tempus ante. Quisque eu nunc blandit erat rutrum feugiat ac sed arcu. In nisi risus, molestie a sem adipiscing, porta volutpat velit. Pellentesque nec felis sit amet nunc porta tincidunt sit amet et justo.</p>', 1, 8, '2014-10-23 01:03:55', 999, '', '0000-00-00 00:00:00', 0, 999, '2017-05-21 23:55:31', '2014-10-23 01:03:55', '0000-00-00 00:00:00', '{"image_intro":"images\\/blog\\/property5.jpg","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(18, 101, 'Vision large du site ', 'vision-large-du-site', '', '', 1, 2, '2017-05-16 21:49:25', 999, '', '2017-05-16 21:49:25', 0, 999, '2017-05-21 23:55:26', '2017-05-16 21:49:25', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(19, 102, 'Accède et génère les factures', 'accede-et-genere-les-factures', '', '', 1, 2, '2017-05-16 21:51:50', 999, '', '2017-05-16 21:51:50', 0, 0, '0000-00-00 00:00:00', '2017-05-16 21:51:50', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(20, 103, 'Modifier les prix des abonnements', 'modifier-les-prix-des-abonnements', '', '', 1, 2, '2017-05-16 21:57:11', 999, '', '2017-05-16 21:57:11', 0, 0, '0000-00-00 00:00:00', '2017-05-16 21:57:11', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(21, 104, 'ListeDesBiens', 'listedesbiens', '', '', 1, 2, '2017-05-16 22:12:53', 999, '', '2017-05-21 22:18:06', 999, 999, '2017-05-21 22:18:06', '2017-05-16 22:12:53', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"article_layout":"","show_title":"0","link_titles":"0","show_tags":"0","show_intro":"0","info_block_position":"","info_block_show_title":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_associations":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_vote":"0","show_hits":"0","show_noauth":"0","urls_position":"","alternative_readmore":"","article_page_title":"","show_publishing_options":"0","show_article_options":"1","show_urls_images_backend":"0","show_urls_images_frontend":"0"}', 14, 0, '', '', 1, 72, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_contentitem_tag_map`
--

CREATE TABLE `prfwj_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_content_frontpage`
--

CREATE TABLE `prfwj_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `prfwj_content_frontpage`
--

INSERT INTO `prfwj_content_frontpage` (`content_id`, `ordering`) VALUES
(4, 1),
(6, 2);

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_content_rating`
--

CREATE TABLE `prfwj_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_content_types`
--

CREATE TABLE `prfwj_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `prfwj_content_types`
--

INSERT INTO `prfwj_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '{}', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special": {"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '{}', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"url", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {}}', 'WeblinksHelperRoute::getWeblinkRoute', '{"formFile":"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","featured","images"], "ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"], "convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '{}', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '{}', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '{}', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special": {}}', 'UsersHelperRoute::getUserRoute', ''),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '{}', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '{}', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '{}', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '{}', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '{}', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(10000, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '{}', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(10001, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '{}', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(10002, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '{}', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(10003, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '{}', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(10004, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '{}', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_core_log_searches`
--

CREATE TABLE `prfwj_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_extensions`
--

CREATE TABLE `prfwj_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `prfwj_extensions`
--

INSERT INTO `prfwj_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"contact_layout":"_:default","show_contact_category":"hide","show_contact_list":"0","presentation_style":"plain","show_name":"0","show_position":"1","show_email":"1","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"1","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"2","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"0","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","show_pagination_limit":"1","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_pagination":"2","show_pagination_results":"1","initial_sort":"ordering","captcha":"","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"fr-FR","site":"fr-FR"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 0, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"2017-03-08","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":"","filename":"weblinks"}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"0","link_titles":"1","show_intro":"0","info_block_position":"0","info_block_show_title":"0","show_category":"0","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_associations":"0","flags":"1","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"0","readmore_limit":"100","show_tags":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","captcha":"0","show_publishing_options":"1","show_article_options":"1","save_history":"0","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"1","num_columns":"1","num_links":"3","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","list_show_votes":"0","list_show_ratings":"0","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"0","show_featured":"show","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0","custom_fields_enable":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"11":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"10":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"12":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"1","new_usertype":"2","guest_usergroup":"1","sendpassword":"1","useractivation":"2","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.2","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{"name":"com_fields","type":"component","creationDate":"March 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"COM_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{"name":"com_associations","type":"component","creationDate":"Januar 2017","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"COM_ASSOCIATIONS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"LIB_PHPUTF8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"LIB_JOOMLA","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"cb31fe1bf55af858de16839e8f63c897"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"LIB_IDNA","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"LIB_PHPASS","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 0, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"2017-03-08","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":"","filename":"mod_weblinks"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 0, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.25.2","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2017","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.5.6","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"mode":"2","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0);
INSERT INTO `prfwj_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 0, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"2017-03-08","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":"","filename":"weblinks"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '{}', '', '', 999, '2017-05-21 23:54:40', 3, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 1, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 0, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"version":"2.0","public_key":"","private_key":"","theme":"clean","theme2":"light","size":"normal"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 0, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 0, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"2017-03-08","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":"","filename":"weblinks"}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 0, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1496358246}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"mode":3,"lastrun":"","unique_id":"aedeba4431f9df40d43e9f700250c2f65a1614a3","interval":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{"name":"plg_installer_packageinstaller","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"packageinstaller"}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_FOLDERINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"folderinstaller"}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_URLINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"urlinstaller"}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_phpversioncheck","type":"plugin","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION","group":"","filename":"phpversioncheck"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_menu","type":"plugin","creationDate":"August 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION","group":"","filename":"menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_contact","type":"plugin","creationDate":"October 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{"name":"plg_system_fields","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_SYSTEM_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_calendar","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_CALENDAR_XML_DESCRIPTION","group":"","filename":"calendar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_checkboxes","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION","group":"","filename":"checkboxes"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_color","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_COLOR_XML_DESCRIPTION","group":"","filename":"color"}', '', '', '', 999, '2017-05-21 23:49:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_editor","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_EDITOR_XML_DESCRIPTION","group":"","filename":"editor"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_imagelist","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION","group":"","filename":"imagelist"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_integer","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_INTEGER_XML_DESCRIPTION","group":"","filename":"integer"}', '{"multiple":"0","first":"1","last":"100","step":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_list","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_LIST_XML_DESCRIPTION","group":"","filename":"list"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_media","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_radio","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_RADIO_XML_DESCRIPTION","group":"","filename":"radio"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_sql","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_SQL_XML_DESCRIPTION","group":"","filename":"sql"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_text","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_TEXT_XML_DESCRIPTION","group":"","filename":"text"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_textarea","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION","group":"","filename":"textarea"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_url","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_URL_XML_DESCRIPTION","group":"","filename":"url"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_user","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_USER_XML_DESCRIPTION","group":"","filename":"user"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{"name":"plg_fields_usergrouplist","type":"plugin","creationDate":"March 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION","group":"","filename":"usergrouplist"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{"name":"plg_content_fields","type":"plugin","creationDate":"February 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_CONTENT_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_fields","type":"plugin","creationDate":"February 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.0","description":"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION","group":"","filename":"fields"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"May 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.2","description":"en-GB site language","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"May 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.2","description":"en-GB administrator language","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"May 2017","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.2","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB) Language Pack","type":"package","creationDate":"May 2017","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.7.2.1","description":"en-GB language pack","group":"","filename":"pkg_en-GB"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(1001, 0, 'bt_zoner', 'template', 'bt_zoner', '', 0, 1, 1, 0, '{"name":"bt_zoner","type":"template","creationDate":"07\\/11\\/2014","author":"Bow Themes","copyright":"Copyright (C) 2014 - 2016 bowthemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"2.0.3","description":"BT Zoner","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(1002, 0, 'BT Google Maps', 'module', 'mod_bt_googlemaps', '', 0, 1, 0, 0, '{"name":"BT Google Maps","type":"module","creationDate":"Jun 2012","author":"BowThemes","copyright":"Copyright (C) 2016 Bowthemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"2.1.0","description":"\\n\\t\\n\\t\\t<div class=\\"bt_description\\">\\n\\t\\t\\t<h3>BT Google Maps Module Version 2.1.0<\\/h3>\\t\\t\\t\\n\\t\\t\\t<a href=\\"http:\\/\\/bowthemes.com\\" target=\\"_blank\\"><img src=\\"..\\/modules\\/mod_bt_googlemaps\\/admin\\/images\\/mod_bt_googlemaps.png\\"><\\/a>\\n\\t\\t\\t<p>Bring google maps to your website by the simplest & easiest way. Using Google Maps version 3 services, BT Google Maps support you input both Address and Coordinate, create your custom marker with title, images, description...\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<br clear=\\"both\\" \\/>\\n\\t\\t\\t<h3>Features<\\/h3>\\n\\t\\t\\t<ul class=\\"list-style\\">\\n\\t\\t\\t\\t<li>Google Maps Version 3 (Latest)<\\/li>\\n\\t\\t\\t\\t<li>Support both input types: Address and Coordinate <\\/li>\\n\\t\\t\\t\\t<li>Retrieving lat\\/long of location using Geocoder<\\/li>\\n\\t\\t\\t\\t<li>Auto-Detect Language<\\/li>\\n\\t\\t\\t\\t<li>Streetview, MapOverview, ZoomControl, PanControl, ScaleControl, MapTypeControl<\\/li>\\n\\t\\t\\t\\t<li>Support Multiple Marker( Easy customize title, icon, description popup)<\\/li>\\n\\t\\t\\t\\t<li>Weather & cloud layers<\\/li>\\n\\t\\t\\t\\t<li>Support custom map style<\\/li>\\n\\t\\t\\t\\t<li>Support custom inforwindow style<\\/li>\\n\\t\\t\\t\\t<li>Multiple module instances<\\/li>\\t\\n\\t\\t\\t\\t<li>The configuration is very easy and simple<\\/li>\\t\\t\\t\\t\\n\\t\\t\\t\\t<li>Compatibility with Joomla 1.6, 1.7, 2.5 & Joomla 3.x<\\/li>\\n\\t\\t\\t\\t<li>Cross Browser Support: IE7+, Firefox 2+, Safari 3+, Chrome 8+, Opera 9+<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h3>Upgrade versions<\\/h3>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tYour current versions is 2.1.0. <a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-google-map.html\\">Find our latest versions now<\\/a>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<h3>Userful links<\\/h3>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-google-map.html\\">Video tutorials<\\/a><\\/li>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/forums\\/27-bt-google-map-module\\/\\">Report bug<\\/a><\\/li>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/forums\\/27-bt-google-map-module\\/\\">Forum support<\\/a><\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h3>About bow themes & copyright<\\/h3>\\t\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tBow Themes is Professional Joomla template provider. We are focused on creating unique, attractive and clean templates without loosing flexibility and simplicity of customization\\n\\t\\t\\t<\\/p>\\n\\t\\t\\tCopyright (C) 2016 BowThemes\\t\\n\\n\\t\\t<\\/div>\\n\\t\\t<style>\\n\\t\\t\\t.bt_description{\\n\\t\\t\\t\\ttext-align: left;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description h3{\\n\\t\\t\\t\\ttext-transform: uppercase;\\n\\t\\t\\t\\tmargin: 20px 0px 10px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description img{\\n\\t\\t\\t\\tfloat:left;\\n\\t\\t\\t\\tmargin:5px 5px 5px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description p,.bt_description li{\\n\\t\\t\\t\\tlist-style: none outside none;\\n\\t\\t\\t\\tpadding: 5px 5px 5px 20px;\\t\\t\\t\\t\\n\\t\\t\\t}\\n\\t\\t\\t\\n\\t\\t\\t.bt_description ul.list-style li{\\n\\t\\t\\t\\tbackground:url(..\\/modules\\/mod_bt_googlemaps\\/admin\\/images\\/tick.png) 0px 6px no-repeat;\\n\\t\\t\\t\\tpadding-left:30px;\\n\\t\\t\\t\\tline-height:15px;\\n\\t\\t\\t}\\n\\t\\t<\\/style>\\n\\t\\t\\n\\t","group":"","filename":"mod_bt_googlemaps"}', '{"mapType":"roadmap","mapCenterType":"address","mapCenterAddress":"New York, United States","mapCenterCoordinate":"40.7143528, -74.0059731","width":"auto","height":"350","zoom":"13","zoomControl":"true","panControl":"true","mapTypeControl":"true","scaleControl":"true","overviewMapControl":"true","streetViewControl":"true","draggable":"true","disableDoubleClickZoom":"false","scrollwheel":"true","weather":"0","temperatureUnit":"f","cloud":"1","enable-style":"0","style-title":"BT Map","createNewOrApplyDefaultStyle":"createNew","enable-custom-infobox":"0","boxcss":"background :#ffffff,\\r\\nopacity : 0.85,\\r\\nwidth : 280px,\\r\\nheight :100px,\\r\\nborder : 1px solid grey,\\r\\nborderRadius:3px,\\r\\npadding : 10px,\\r\\nboxShadow:30px 10px 10px 1px grey","pixelOffset":"-150,-155","closeBoxMargin":"-9px","closeBoxURL":"","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(1003, 0, 'BT_SocialConnect', 'component', 'com_bt_socialconnect', '', 1, 1, 0, 0, '{"name":"BT_SocialConnect","type":"component","creationDate":"January 2014","author":"Bowthemes","copyright":"Copyright (C) 2016 BowThemes.com. All rights reserved.","authorEmail":"support@BowThemes.com","authorUrl":"http:\\/\\/www.BowThemes.com\\/","version":"1.2.4","description":"Thank you for installing BT Social Connect v1.2.4 by Bowthemes, the powerful social extension for Joomla!","group":"","filename":"bt_socialconnect"}', '{"fbactive":"0","fbappId":" ","fbsecret":"","fbregister":"automatic","ggactive":"0","ggappId":" ","ggsecret":"","ggregister":"automatic","ttactive":"0","ttappId":" ","ttsecret":"","ttregister":"automatic","linkactive":"0","linkappId":" ","linksecret":"","linkregister":"automatic","remove_user":"0","ignore_activate":"0","userautologin":"1","loginredirection":"","logoutredirection":"","fbuserautologin":"0","usernametype":"auto","show-boxtip":"1","enabled_publishing":"1","count_post":"1","shorturl":"none","bitly_login":"","bitly_apikey":"","google_apikey":"","cropthumb":"0","thumbwidth":"180","thumbheight":"110","enabled_cronjobs":"0","schedule":"","timezone":"Europe\\/London","taskcron":"","limitscron":"5"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(1006, 0, 'BT Social Connect - System', 'plugin', 'bt_socialconnect_system', 'system', 0, 1, 1, 0, '{"name":"BT Social Connect - System","type":"plugin","creationDate":"January 2014","author":"Bowthemes","copyright":"Copyright (C) 2014 BowThemes.com. All rights reserved.","authorEmail":"support@BowThemes.com","authorUrl":"http:\\/\\/www.BowThemes.com\\/","version":"1.0.0","description":"This is system plugin of BT Social Connect","group":"","filename":"bt_socialconnect_system"}', '{}', '', '', 999, '2017-05-21 23:55:00', 0, 0),
(1007, 0, 'BT Social Connect - User', 'plugin', 'bt_socialconnect_user', 'user', 0, 1, 1, 0, '{"name":"BT Social Connect - User","type":"plugin","creationDate":"October 2013","author":"Bowthemes","copyright":"(C) 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"1.0.0","description":"Plugin support send message when user registed","group":"","filename":"bt_socialconnect_user"}', '{}', '', '', 999, '2017-05-21 23:54:51', 0, 0),
(1008, 0, 'BT Widget - Button', 'plugin', 'bt_widget_button', 'editors-xtd', 0, 1, 1, 0, '{"name":"BT Widget - Button","type":"plugin","creationDate":"October 2013","author":"Bowthemes","copyright":"Copyright \\u00a9 2012 Bow Themes","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"1.0.0","description":"Add widget button to editor","group":"","filename":"bt_widget_button"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(1009, 0, 'BT Social Connect - Login', 'module', 'mod_btsocialconnect_login', '', 0, 1, 0, 0, '{"name":"BT Social Connect - Login","type":"module","creationDate":"August 2013","author":"BowThemes","copyright":"Copyright (C) 2013 Bowthemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"1.0.0","description":"The login & registration module for BT Social Connect","group":"","filename":"mod_btsocialconnect_login"}', '{"align_option":"right","display_type":"0","mouse_event":"click","logout_button":"1","enabled_registration_tab":"1","tag_login_modal":"","tag_register_modal":"","loginbox_size":"300","registrationbox_size":"425","login":"","logout":"","name":"0","avatar":"1","module_id":"19","module_position":"0","usesecure":"0","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(1010, 0, 'BT Social Connect - Widget', 'module', 'mod_btsocialconnect_widget', '', 0, 1, 0, 0, '{"name":"BT Social Connect - Widget","type":"module","creationDate":"October 2013","author":"BowThemes","copyright":"Copyright (C) 2013 Bowthemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"1.0.0","description":"Displaying widgets for BT Social Connect component","group":"","filename":"mod_btsocialconnect_widget"}', '{"label":"","widget":"0","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(1011, 0, 'System - BT Shortcode ', 'plugin', 'bt_shortcode_system', 'system', 0, 1, 1, 0, '{"name":"System - BT Shortcode ","type":"plugin","creationDate":"November 2014","author":"BowThemes.com","copyright":"Copyright (C) 2014 BowThemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com\\/","version":"1.1","description":"BT Shortcode system plugin","group":"","filename":"bt_shortcode_system"}', '{"prefix":"bt_","primary_color":"","secondary_color":"","tertiary_color":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(1012, 0, 'Content - BT Shortcode', 'plugin', 'bt_shortcode_content', 'content', 0, 1, 1, 0, '{"name":"Content - BT Shortcode","type":"plugin","creationDate":"November 2014","author":"BowThemes.com","copyright":"Copyright (C) 2014 BowThemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com\\/","version":"1.0.1","description":"BT Shortcode content plugin","group":"","filename":"bt_shortcode_content"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(1013, 0, 'Editors-xtd - BT Shortcode', 'plugin', 'bt_shortcode', 'editors-xtd', 0, 1, 1, 0, '{"name":"Editors-xtd - BT Shortcode","type":"plugin","creationDate":"November 2014","author":"BowThemes.com","copyright":"Copyright (C) 2014 BowThemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com\\/","version":"1.0.0","description":"BT Shortcode button plugin","group":"","filename":"bt_shortcode"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(1014, 0, 'BT Shortcode Plugin', 'package', 'pkg_plg_bt_shortcode', '', 0, 1, 1, 0, '{"name":"BT Shortcode Plugin","type":"package","creationDate":"November 2014","author":"Bow Themes","copyright":"","authorEmail":"","authorUrl":"","version":"1.1","description":"BT Shortcode Plugin Package","group":"","filename":"pkg_plg_bt_shortcode"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `prfwj_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1015, 0, 'BT Content Showcase', 'module', 'mod_bt_contentshowcase', '', 0, 1, 0, 0, '{"name":"BT Content Showcase","type":"module","creationDate":"June 2012","author":"www.bowthemes.com","copyright":"Copyright (C) 2016 Bowthemes. All rights reserved.","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"2.4.8","description":"\\n\\t\\n<div class=\\"bt_description\\">\\n\\t<h3>BT Content Showcase Module Version 2.4.8<\\/h3>\\n\\t<a href=\\"http:\\/\\/bowthemes.com\\" target=\\"_blank\\"><img\\n\\t\\tsrc=\\"..\\/modules\\/mod_bt_contentshowcase\\/admin\\/images\\/bt-slider.png\\">\\n\\t<\\/a>\\n\\t<p>Helps to slide your articles from Joomla! categories with cool\\n\\t\\teffects, rich backend configs covering layout, animation control, auto\\n\\t\\tthumbnail creating, images resizing, numbering articles, sorting\\n\\t\\tect...<\\/p>\\n\\t<br clear=\\"both\\" \\/>\\n\\t<h3>Features<\\/h3>\\n\\t<ul class=\\"list-style\\">\\n\\t\\t<li>Compatibility with Joomla  1.6, 1.7, 2.5 and Joomla 3.x<\\/li>\\n\\t\\t<li>Content control display from any section, category or article ID\'s<\\/li>\\n\\t\\t<li>Support for<a href=\\"http:\\/\\/getk2.org\\/\\"> K2 component<\\/a><\\/li>\\n\\t\\t<li>Support for <a href=\\"joomla-extensions\\/bt-porfolio-component.html\\" target=\\"_blank\\" title=\\"Portfolio Joomla component\\">BT Portfolio component<\\/a><\\/li>\\n\\t\\t<li>Support for <a href=\\"http:\\/\\/bit.ly\\/1baVxzb\\">EasyBlog Component<\\/a><\\/li>\\n\\t\\t<li>Scalable size of the module<\\/li>\\n\\t\\t<li>Horizontal and vertical news presentation (columns and rows configuration).<\\/li>\\n                <li>Scrolling and fading slide.<\\/li>\\n                <li>Powerful with two layouts Slide and Slide - Accordion<\\/li>\\n                <li>Control slide with next, back and navigation button<\\/li>\\n\\t\\t<li>Show text, image, author, date, section\\/category name and button \\"read more\\" option, with order customization.<\\/li>\\n\\t\\t<li>Image Cropping & Caching<\\/li>\\n\\t\\t<li>On\\/Off front page articles display in modules<\\/li>\\n\\t\\t<li>Easy and friendly back-end administration.<\\/li>\\n\\t\\t<li>Used Javascript Framework: Jquery latest version<\\/li>\\n\\t\\t<li>Fully compatible: Firefox, IE7+, Opera 9.5, Safari, Netscape, Google Chrome, Camino, Flock 0.7+.<\\/li>\\n        <li>Support Responsive Website<\\/li>\\n\\t<\\/ul>\\n\\t<h3>UPgrade versions<\\/h3>\\n\\t<p>\\n\\t\\tYour current versions is 2.4.8. <a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bt-content-showcase.html\\">Find our latest versions now<\\/a>\\n\\t<\\/p>\\n\\t<h3>Userful links<\\/h3>\\n\\t<ul>\\n\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/bowthemes.com\\/bt-content-showcase.html\\">Video tutorials<\\/a><\\/li>\\n\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/forums\\/28-bt-content-showcase\\/\\">Report bug<\\/a><\\/li>\\n\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/forums\\/28-bt-content-showcase\\/\\">Forum support<\\/a><\\/li>\\n\\t<\\/ul>\\n\\t<h3>About bow themes & copyright<\\/h3>\\n\\t<p>Bow Themes is Professional Joomla template provider. We are\\n\\t\\tfocused on creating unique, attractive and clean templates without\\n\\t\\tloosing flexibility and simplicity of customization<\\/p>\\n\\tCopyright (C) 2016 BowThemes\\n<\\/div>\\n\\t<style>\\n.bt_description{\\n\\ttext-align: left;\\n}\\n.bt_description h3 {\\n\\ttext-transform: uppercase;\\n\\tmargin: 20px 0px 10px 0px;\\n}\\n\\n.bt_description img {\\n\\tfloat: left;\\n\\tmargin: 5px 10px 5px 0px;\\n}\\n\\n.bt_description p,.bt_description li {\\n\\tpadding: 5px 5px 5px 30px;\\n\\tlist-style: none outside none;\\n}\\n\\n.bt_description ul.list-style li {\\n\\tbackground: url(..\\/modules\\/mod_bt_contentshowcase\\/admin\\/images\\/tick.png)\\n\\t\\t0px 6px no-repeat;\\n\\tpadding-left: 30px;\\n\\tline-height: 15px;\\n}\\n<\\/style>\\n\\n    ","group":"","filename":"mod_bt_contentshowcase"}', '{"moduleclass_sfx":"","content_title":"","content_title_link":"","layout":"default","GRID_SETTING":"GRID_SETTING","module_width":"640","item_height":"300","items_per_cols":"1","items_per_rows":"3","items_per_page":"5","show_arrow":"1","arrow_position":"right","activate_first":"1","item_min_width":"300","item_margin":"10","back_side_bg":"#bb1d48","bs_text_color":"#ffffff","NAVIGATION_SETTING":"NAVIGATION_SETTING","next_prev":"1","next_back_position":"flanks","navigation_type":"bullet","navigation_position":"top","source":"category","article_ids":"","k2_article_ids":"","btportfolio_article_ids":"","k2_category":"","btportfolio_category":"","easyblog_article_ids":"","auto_category":"0","limit_items":"12","limit_items_for_each":"0","user_id":"0","show_featured":"1","ordering":"created-asc","content_plugin":"0","use_introimg":"1","use_caption":"0","use_linka":"0","title_option":"TITLE_OPTION","show_title":"1","limit_title_by":"word","title_max_chars":"8","intro_text_option":"INTRO_TEXT_OPTION","show_intro":"1","limit_description_by":"char","description_max_chars":"100","show_category_name":"1","show_category_name_as_link":"1","show_readmore":"1","show_date":"0","show_author":"0","image_option":"IMAGE_OPTION","show_image":"1","checkimg_fulltext":"0","check_image_exist":"0","image_align":"center","image_thumb":"1","thumbnail_width":"180","thumbnail_height":"120","thumbnail_small_width":"135","default_thumb":"1","touchscreen":"0","bn_effect":"slide","hovereffect":"1","modalbox":"0","slide_effect":"scroll","mouse_event":"hover","metro_effect":"slide","slide_direction":"horizontal","fpshow_effect":"slide","scroll_amount":"5","scroll_direction":"1","slide_item_per_time":"1","pause_hover":"1","duration":"600","captionSpeed":"500","auto_start":"1","interval":"5","easing":"easeInQuad","auto_strip_tags":"1","allow_tags":"","open_target":"_parent","loadJquery":"auto","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(1018, 0, 'Bt_Property', 'component', 'com_bt_property', '', 1, 1, 0, 0, '{"name":"Bt_Property","type":"component","creationDate":"August 2014","author":"Bowthemes","copyright":"Copyright \\u00a9 2016 Bow Themes","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"3.0.4","description":"\\n\\t\\n\\t\\t\\n\\t\\t<div class=\\"bt_description\\">\\n\\t\\t\\t<h3>BT Property Component Version 3.0.4<\\/h3>\\t\\t\\t\\n\\t\\t\\t<a href=\\"http:\\/\\/bowthemes.com\\" target=\\"_blank\\"><img src=\\"..\\/components\\/com_bt_property\\/assets\\/icon\\/property.png\\"><\\/a>\\n\\t\\t\\t<p>BT Property is a free responsive real estate component for Joomla 2.5 and 3.x. In addition to essential features including management of properties, categories, locations and agents; BT Property allows users to create custom extra fields by groups, and supports with Google Map and advanced search. Also BT Property can decentralize right by user groups such as front-end submission allowance. Let customers experience marvelous features of BT Property component on your realty site.\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<br clear=\\"both\\" \\/>\\n\\t\\t\\t<h3>Features<\\/h3>\\n\\t\\t\\t<ul class=\\"list-style\\">\\n\\t\\t\\t\\t<li>Google Map supported<\\/li>\\n\\t\\t\\t\\t<li>Front-end property submission & editing<\\/li>\\n\\t\\t\\t\\t<li>Advanced search and filtering<\\/li>\\n\\t\\t\\t\\t<li>Multi-level management of categories.<\\/li>\\n\\t\\t\\t\\t<li>Ability to manage every single photo album under each property and to select your featured photo for the album.<\\/li>\\n\\t\\t\\t\\t<li>Good management of rating and review.<\\/li>\\n\\t\\t\\t\\t<li>Ability to well manage the extra fields in accordance with category and property items.<\\/li>\\n\\t\\t\\t\\t<li>Excellent management of layout templates (Easy to add or modify custom templates).<\\/li>\\n\\t\\t\\t\\t<li>Auto photo cropping and resizing.<\\/li>\\n\\t\\t\\t\\t<li>Friendly SEF supported.<\\/li>\\n\\t\\t\\t\\t<li>Free breadcrumbs supported.<\\/li>\\n\\t\\t\\t\\t<li>Easy layout adjustment ( in Details or Thumbnails).<\\/li>\\n\\t\\t\\t\\t<li>Responsive layout supported<\\/>\\n\\t\\t\\t\\t<li>Fully compatible with Joomla!2.5 and 3.x<\\/li>\\n\\t\\t\\t\\t<li>Cross Browser Support: IE7+, Firefox 2+, Safari 3+, Chrome 8+, Opera 9+.<\\/li>\\n\\t\\t\\t\\t<li>Video tutorials and forum support provided.<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h3>UPgrade versions<\\/h3>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tYour current versions is 3.0.4. <a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/joomla-extensions\\/bt-property-component.html\\">Find our latest versions now<\\/a>\\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<h3>Userful links<\\/h3>\\n\\t\\t\\t<ul>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/joomla-extensions\\/bt-property-component.html\\">Video tutorials<\\/a><\\/li>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/forums\\/21-bt-property-component-for-joomla-25\\/\\">Report bug<\\/a><\\/li>\\n\\t\\t\\t\\t<li><a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/forums\\/21-bt-property-component-for-joomla-25\\/\\">Forum support<\\/a><\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h3>About bow themes & copyright<\\/h3>\\t\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tBow Themes is Professional Joomla template provider. We are focused on creating unique, attractive and clean templates without loosing flexibility and simplicity of customization\\n\\t\\t\\t<\\/p>\\n\\t\\t\\tCopyright (C) 2016 BowThemes\\t\\n\\n\\t\\t<\\/div>\\n\\t\\t<style>\\n\\t\\t\\t.bt_description{\\n\\t\\t\\t\\ttext-align: left;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description h3{\\n\\t\\t\\t\\ttext-transform: uppercase;\\n\\t\\t\\t\\tmargin: 20px 0px 10px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description img{\\n\\t\\t\\t\\tfloat:left;\\n\\t\\t\\t\\tmargin:5px 5px 5px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description p,.bt_description li{\\n\\t\\t\\t\\tlist-style: none outside none;\\n\\t\\t\\t\\tpadding: 5px 5px 5px 20px;\\t\\t\\t\\t\\n\\t\\t\\t}\\n\\t\\t\\t\\n\\t\\t\\t.bt_description ul.list-style li{\\n\\t\\t\\t\\tbackground:url(..\\/components\\/com_bt_property\\/assets\\/icon\\/tick.png) 0px 6px no-repeat;\\n\\t\\t\\t\\tpadding-left:30px;\\n\\t\\t\\t\\tline-height:15px;\\n\\t\\t\\t}\\n\\t\\t<\\/style>\\n\\t\\n\\t","group":"","filename":"bt_property"}', '{"theme":"bt_zoner","map_api":"AIzaSyDLAEH2ezSClxvq6OI54isNfR80bFR8bbE","default_latitude":"48.87","default_longitude":"2.29","default_zoomlevel":"7","location_levels":"3","currency":"EUR","price_format":"000$","decimal":"0","decimal_symbol":".","thousands_sep":",","cat_layout":"grid","paging":"15","p_ordering":"ordering","p_ordering_dir":"ASC","i_ordering":"default","i_ordering_dir":"ASC","c_ordering":"ordering","c_ordering_dir":"DESC","show_extrafields":"1","show_hits":"1","show_favourite":"1","largeimgprocess":"2","thumbimgprocess":"1","crop-position":"c","jpeg-compression":"100","crop_width":"800","crop_height":"600","thumb_width":"440","thumb_height":"330","allow_review":"1","allow_guest_review":"0","auto_publish_review":"0","commentmax_characters":"150","comment_displayorder":"desc","number_comments":"20","comment_notification":"0","email_recipient":"","show_privacy_policy":"1","agent_group":"10","show_empty_agents":"1","include_property_name":"1","agent_contact":["email"],"agent_about":"","agent_agency":"","property_per_agent":{"1":"0                         ","6":"0                         ","7":"0                         ","2":"0                         ","11":"0            ","10":"0                         ","3":"0                         ","4":"0                         ","5":"0                         ","12":"0    ","9":"0                         ","8":"0                         "},"ss_show_title":"1","ss_show_description":"1","ss_show_navigation":"1","ss_pagination_type":"thumbnail","ss_thumb_width":"70","ss_thumb_height":"40","ss_auto_play":"1","ss_interval":"5000","ss_slide_speed":"400","ss_transition_style":"","ss_stop_on_hover":"1","export_images":"0","auto_publish_property":"0","upload_type":"1","fe_upload_type":"1","fe_file_max_size":"","fe_max_number_image":"","fe_max_number_video":"","images_path":"images\\/bt_property","wm-enabled":"0","wm-categories":["all"],"wm-thumb":"1","wm-type":"img","wm-text":"\\u00a9bowthemes.com","wm-image":"","wm-font":"tahoma","wm-fcolor":"ffffff","wm-fsize":"11","wm-bg":"1","wm-bgcolor":"000000","wm-position":"br","wm-padding":"4","wm-opacity":"70","wm-rotate":"0","load-libs":["jquery"]}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(1019, 0, 'BT Property Filter', 'module', 'mod_bt_property_filter', '', 0, 1, 0, 0, '{"name":"BT Property Filter","type":"module","creationDate":"November 2012","author":"BowThemes","copyright":"Copyright (C) 2012 Bowthemes. All rights reserved.\\n\\t","authorEmail":"support@bowthemes.com","authorUrl":"http:\\/\\/www.bowthemes.com","version":"1.4.2","description":"\\n\\t\\n\\t\\t<div class=\\"bt_description\\">\\n\\t\\t\\t<h3>BT Property Filter Module Version 1.4.2<\\/h3>\\t\\t\\t\\n\\t\\t\\t\\n\\t\\t\\t<p>BT Property Filter modude is an amazing module to search and filter property . It also allows to create filters for user with content of those from back-end, and  fully configure  with many options. <\\/p>\\n\\t\\t\\t<br clear=\\"both\\" \\/>\\n\\t\\t\\t<h3>Features<\\/h3>\\n\\t\\t\\t<ul class=\\"list-style\\">\\n\\t\\t\\t\\t<li>Search property of component Property<\\/li>\\n\\t\\t\\t\\t<li>Support for search keyword based on title, content<\\/li>\\n\\t\\t\\t\\t<li>Support for search by extra field<\\/li>\\n\\t\\t\\t\\t<li>Compatibility with Joomla 1.6 Joomla 1.7 & Joomla 2.5<\\/li>\\n\\t\\t\\t\\t<li>Cross Browser Support: IE7+, Firefox 2+, Safari 3+, Chrome 8+, Opera 9+<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t<h3>Upgrade versions<\\/h3>\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tYour current versions is 1.4.2 <a target=\\"_blank\\" href=\\"http:\\/\\/bowthemes.com\\/\\">Find our latest versions now<\\/a>\\n\\t\\t\\t<\\/p>\\t\\t\\t\\n\\t\\t\\t<h3>About bow themes & copyright<\\/h3>\\t\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tBow Themes is Professional Joomla template provider. We are focused on creating unique, attractive and clean templates without loosing flexibility and simplicity of customization\\n\\t\\t\\t<\\/p>\\n\\t\\t\\tCopyright (C) 2013 BowThemes\\t\\n\\n\\t\\t<\\/div>\\n\\t\\t<style>\\n\\t\\t\\t.bt_description h3{\\n\\t\\t\\t\\ttext-transform: uppercase;\\n\\t\\t\\t\\tmargin: 20px 0px 10px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description img{\\n\\t\\t\\t\\tfloat:left;\\n\\t\\t\\t\\tmargin:5px 5px 5px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description p,.bt_description li{\\n\\t\\t\\t\\tlist-style: none outside none;\\n\\t\\t\\t\\tpadding: 5px 5px 5px 20px;\\t\\t\\t\\t\\n\\t\\t\\t}\\n\\t\\t\\t\\n\\t\\t\\t.bt_description ul.list-style li{\\n\\t\\t\\t\\tbackground:url(..\\/modules\\/mod_bt_property_filter\\/admin\\/images\\/tick.png) 0px 6px no-repeat;\\n\\t\\t\\t\\tpadding-left:30px;\\n\\t\\t\\t\\tline-height:15px;\\n\\t\\t\\t}\\n\\t\\t<\\/style>\\n\\t\\n\\t","group":"","filename":"mod_bt_property_filter"}', '{"moduleclass_sfx":"","showsearchbox":"0","keysearch":"Search...","buttontext":"Search","descr":"","showcategory":"0","method":"AND","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(1020, 0, 'BT Property Map', 'module', 'mod_bt_property_map', '', 0, 1, 0, 0, '{"name":"BT Property Map","type":"module","creationDate":"Aug 2014","author":"Bowthemes","copyright":"Copyright (C) 2014 Bowthemes. All rights reserved.\\n\\t","authorEmail":"support@bowthemes.com","authorUrl":"www.bowthemes.com","version":"1.2.1","description":"\\n\\t\\t<div class=\\"bt_description\\">\\n\\t\\t\\t<h3>BT Property Map Module Version 1.1.0<\\/h3>\\t\\t\\t\\n\\t\\t\\t<p>Displaying property map \\n\\t\\t\\t<\\/p>\\n\\t\\t\\t<br clear=\\"both\\" \\/>\\n\\t\\t\\t<h3>Features<\\/h3>\\n\\t\\t\\t<ul class=\\"list-style\\">\\n\\t\\t\\t\\t<li>Cross Browser Support: IE7+, Firefox 2+, Safari 3+, Chrome 8+, Opera 9+<\\/li>\\t\\t\\t\\t\\n\\t\\t\\t\\t<li>Compatibility with Joomla 2.5 and Joomla 3.x<\\/li>\\n\\t\\t\\t\\t<li>Video tutorials and forum support provided<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\t\\n\\t\\t\\t<h3>About bow themes & copyright<\\/h3>\\t\\n\\t\\t\\t<p>\\n\\t\\t\\t\\tBow Themes is Professional Joomla template provider. We are focused on creating unique, attractive and clean templates without loosing flexibility and simplicity of customization\\n\\t\\t\\t<\\/p>\\n\\t\\t\\tCopyright (C) 2012 BowThemes\\t\\n\\n\\t\\t<\\/div>\\n\\t\\t<style>\\n\\t\\t\\t.bt_description h3{\\n\\t\\t\\t\\ttext-transform: uppercase;\\n\\t\\t\\t\\tmargin: 20px 0px 10px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description img{\\n\\t\\t\\t\\tfloat:left;\\n\\t\\t\\t\\tmargin:5px 5px 5px 0px;\\n\\t\\t\\t}\\n\\t\\t\\t.bt_description p,.bt_description li{\\n\\t\\t\\t\\tpadding: 5px 5px 5px 30px;\\t\\n\\t\\t\\t\\tlist-style: none outside none;\\t\\t\\t\\t\\n\\t\\t\\t}\\n\\t\\t<\\/style>\\n\\t","group":"","filename":"mod_bt_property_map"}', '{"catid":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(1021, 0, 'BT Property Showcase', 'module', 'mod_bt_property_showcase', '', 0, 1, 0, 0, '{"name":"BT Property Showcase","type":"module","creationDate":"Jun 2014","author":"BowThemes","copyright":"Copyright (C) 2014 Bowthemes. All rights reserved.","authorEmail":"support@bowthems.com","authorUrl":"http:\\/\\/bowthemes.com","version":"1.1.2","description":"MOD_BT_PROPERTY_SHOWCASE_XML_DESCRIPTION","group":"","filename":"mod_bt_property_showcase"}', '{"theme":"default","catid":"all","show_limit_items":"12","get_sub_cat":"0","show_cat_filter":"1","hide_empty_category":"1","show_featured_port":"","item_sort":"ordering","sort_type":"DESC","show_category":"1","show_des":"0","des_limit":"50","des_limit_by":"char","item_min_width":"300","thumbnail_width":"600","thumbnail_height":"400","strip_tags":"1","allow_tags":"h1, h2, h3, h4, h5, h6, br, b, em, a","load_jquery":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(1027, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(1028, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(1029, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(1030, 0, 'pkg_weblinks', 'package', 'pkg_weblinks', '', 0, 1, 1, 0, '{"name":"pkg_weblinks","type":"package","creationDate":"2017-03-08","author":"Joomla! Project","copyright":"(C) 2005 - 2017 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PKG_WEBLINKS_XML_DESCRIPTION","group":"","filename":"pkg_weblinks"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(1031, 1033, 'FrenchFR', 'language', 'fr-FR', '', 0, 1, 0, 0, '{"name":"French (FR)","type":"language","creationDate":"22\\/05\\/2017","author":"French translation team : joomla.fr","copyright":"Copyright (C) 2005 - 2017 Joomla.fr and Open Source Matters, Inc. All rights reserved.","authorEmail":"traduction@joomla.fr","authorUrl":"http:\\/\\/joomla.fr","version":"3.7.2.1","description":"fr-FR - Site language","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(1032, 1033, 'FrenchFR', 'language', 'fr-FR', '', 1, 1, 0, 0, '{"name":"French (FR)","type":"language","creationDate":"22\\/05\\/2017","author":"French translation team : joomla.fr","copyright":"Copyright (C) 2005 - 2017 Joomla.fr and Open Source Matters, Inc. All rights reserved.","authorEmail":"traduction@joomla.fr","authorUrl":"http:\\/\\/joomla.fr","version":"3.7.2.1","description":"fr-FR - Administration language","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(1033, 0, 'French Language pack', 'package', 'pkg_fr-FR', '', 0, 1, 1, 0, '{"name":"French Language pack","type":"package","creationDate":"22\\/05\\/2017","author":"French translation team : joomla.fr","copyright":"Copyright (C) 2005 - 2017 Joomla.fr and Open Source Matters, Inc. All rights reserved.","authorEmail":"traduction@joomla.fr","authorUrl":"http:\\/\\/joomla.fr","version":"3.7.2.1","description":"<div style=\\"text-align:left;\\">\\n<h3>Joomla! 3.7.2 Full French (fr-FR) Language Package - Version 3.7.2.1<\\/h3>\\n<h3>Paquet de langue Joomla! 3.7.2 fran\\u00e7ais (fr-FR) complet - Version 3.7.2.1<\\/h3>\\n<\\/div>","group":"","filename":"pkg_fr-FR"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(1034, 0, 'French_fr-CA', 'language', 'fr-CA', '', 0, 1, 0, 0, '{"name":"French_fr-CA","type":"language","creationDate":"2016-12-14","author":"Martin Lamothe","copyright":"Copyright (C) 2005-2016 joomla.fr et Open Source Matters. Tous droits r\\u00e9serv\\u00e9s","authorEmail":"admin@wiserweb.com","authorUrl":"www.wiserweb.com","version":"3.6.5.1","description":"fr-CAsite language","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(1035, 0, 'French_fr-CA', 'language', 'fr-CA', '', 1, 1, 0, 0, '{"name":"French_fr-CA","type":"language","creationDate":"2016-12-14","author":"Martin Lamothe","copyright":"Copyright (C) 2005-2016 joomla.fr et Open Source Matters. Tous droits r\\u00e9serv\\u00e9s","authorEmail":"admin@wiserweb.com","authorUrl":"www.wiserweb.com","version":"3.6.5.1","description":"fr-CAsite language","group":"","filename":"install"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(1036, 0, 'French Canadian Language Pack', 'package', 'pkg_fr-CA', '', 0, 1, 1, 0, '{"name":"French Canadian Language Pack","type":"package","creationDate":"2016-12-14","author":"Martin Lamothe","copyright":"Copyright (C) 2005-2016 joomla.fr et Open Source Matters. Tous droits r\\u00e9serv\\u00e9s","authorEmail":"admin@wiserweb.com","authorUrl":"www.wiserweb.com","version":"3.6.5.1","description":"\\n\\t\\t\\n\\t\\t<div style=\\"text-align:left;\\">\\n\\t\\t<h3>Joomla! Full French Canadian (fr-CA) Language Package <\\/h3>\\n\\t\\t<h3>Paquet de langue Joomla! fran\\u00e7ais canadien (fr-CA) complet <\\/h3>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t","group":"","filename":"pkg_fr-CA"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_fields`
--

CREATE TABLE `prfwj_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_fields_categories`
--

CREATE TABLE `prfwj_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_fields_groups`
--

CREATE TABLE `prfwj_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_fields_values`
--

CREATE TABLE `prfwj_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_finder_filters`
--

CREATE TABLE `prfwj_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` mediumtext NOT NULL,
  `params` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_finder_links`
--

CREATE TABLE `prfwj_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_finder_links_terms0`
--

CREATE TABLE `prfwj_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_finder_links_terms1`
--

CREATE TABLE `prfwj_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_finder_links_terms2`
--

CREATE TABLE `prfwj_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_finder_links_terms3`
--

CREATE TABLE `prfwj_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_finder_links_terms4`
--

CREATE TABLE `prfwj_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_finder_links_terms5`
--

CREATE TABLE `prfwj_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_finder_links_terms6`
--

CREATE TABLE `prfwj_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_finder_links_terms7`
--

CREATE TABLE `prfwj_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_finder_links_terms8`
--

CREATE TABLE `prfwj_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_finder_links_terms9`
--

CREATE TABLE `prfwj_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_finder_links_termsa`
--

CREATE TABLE `prfwj_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_finder_links_termsb`
--

CREATE TABLE `prfwj_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_finder_links_termsc`
--

CREATE TABLE `prfwj_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_finder_links_termsd`
--

CREATE TABLE `prfwj_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_finder_links_termse`
--

CREATE TABLE `prfwj_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_finder_links_termsf`
--

CREATE TABLE `prfwj_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_finder_taxonomy`
--

CREATE TABLE `prfwj_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `prfwj_finder_taxonomy`
--

INSERT INTO `prfwj_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_finder_taxonomy_map`
--

CREATE TABLE `prfwj_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_finder_terms`
--

CREATE TABLE `prfwj_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_finder_terms_common`
--

CREATE TABLE `prfwj_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `prfwj_finder_terms_common`
--

INSERT INTO `prfwj_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_finder_tokens`
--

CREATE TABLE `prfwj_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_finder_tokens_aggregate`
--

CREATE TABLE `prfwj_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_finder_types`
--

CREATE TABLE `prfwj_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_languages`
--

CREATE TABLE `prfwj_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `prfwj_languages`
--

INSERT INTO `prfwj_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1),
(2, 0, 'nl-NL', 'Dutch', 'Dutch', 'nl', 'nl', '', '', '', '', -2, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_menu`
--

CREATE TABLE `prfwj_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `prfwj_menu`
--

INSERT INTO `prfwj_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '{}', 0, 183, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '{}', 89, 98, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '{}', 90, 91, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '{}', 92, 93, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '{}', 94, 95, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '{}', 96, 97, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '{}', 103, 108, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '{}', 104, 105, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '{}', 106, 107, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '{}', 109, 112, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '{}', 110, 111, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '{}', 113, 118, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '{}', 114, 115, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '{}', 116, 117, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '{}', 125, 126, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '{}', 121, 122, 0, '*', 1),
(21, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '{}', 119, 120, 0, '*', 1),
(22, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '{}', 123, 124, 0, '*', 1),
(101, 'mainmenu', 'Accueil', 'home', '', 'home', 'index.php?option=com_bt_property&view=homepage', 'component', 1, 1, 1, 1018, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"1","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 1, 18, 1, '*', 0),
(102, 'mainmenu', 'Properties', 'properties', '', 'properties', '#', 'url', 0, 1, 1, 0, 999, '2017-05-16 19:45:22', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 43, 54, 0, '*', 0),
(103, 'mainmenu', 'Pages', 'pages', '', 'pages', 'index.php?option=com_content&view=article&id=1', 'component', 0, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 55, 70, 0, '*', 0),
(104, 'mainmenu', 'Agents & Agencies', 'agents', '', 'agents', '#', 'url', 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 71, 80, 0, '*', 0),
(105, 'mainmenu', 'Submit', 'submit', '', 'submit', 'index.php?option=com_bt_property&view=property&layout=edit', 'component', 0, 1, 1, 1018, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 81, 82, 0, '*', 0),
(106, 'mainmenu', 'Blog', 'blog', '', 'blog', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', 0, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_heading_title_text":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Blog Listing","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 83, 88, 0, '*', 0),
(107, 'mainmenu', 'Contact', 'contact', '', 'contact', 'index.php?option=com_contact&view=contact&id=1', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"presentation_style":"","show_contact_category":"","show_contact_list":"","show_tags":"","show_info":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_image":"","allow_vcard":"","show_misc":"","show_articles":"","articles_display_num":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"1","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 25, 26, 0, '*', 0),
(108, 'mainmenu', 'Property Detail', 'property-detail', '', 'properties/property-detail', 'index.php?option=com_bt_property&view=property&id=4', 'component', 0, 102, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 44, 45, 0, '*', 0),
(109, 'mainmenu', 'Masonry Listing', 'masonry-listing', '', 'properties/masonry-listing', 'index.php?option=com_bt_property&view=properties&catid=0', 'component', 0, 102, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"theme":"","cat_layout":"masonry","excluded_property":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 46, 47, 0, '*', 0),
(110, 'mainmenu', 'Grid Listing', 'grid-listing', '', 'properties/grid-listing', 'index.php?option=com_bt_property&view=properties&catid=0', 'component', 0, 102, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"","cat_layout":"grid","cat_column":"","show_titlecat":"","show_descat":"","show_childcat":"","show_portcat":"","excluded_property":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 48, 49, 0, '*', 0),
(111, 'mainmenu', 'Lines Listing', 'lines-listing', '', 'properties/lines-listing', 'index.php?option=com_bt_property&view=properties&catid=0', 'component', 0, 102, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"","cat_layout":"lines","cat_column":"","show_titlecat":"","show_descat":"","show_childcat":"","show_portcat":"","excluded_property":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 50, 51, 0, '*', 0),
(112, 'mainmenu', 'About us', 'about-us', '', 'pages/about-us', 'index.php?option=com_content&view=article&id=16', 'component', 0, 103, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 62, 63, 0, '*', 0),
(113, 'mainmenu', 'Agent Detail', 'agent-detail', '', 'pages/agent-detail', 'index.php?option=com_bt_property&view=agent&layout=agent&agentid=315', 'component', 0, 103, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 68, 69, 0, '*', 0),
(115, 'mainmenu', 'Profile', 'profile', '', 'pages/profile', 'index.php?option=com_bt_socialconnect&view=profile', 'component', 0, 103, 2, 1003, 999, '2017-05-04 19:20:09', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 56, 57, 0, '*', 0),
(124, 'mainmenu', 'Pricing', 'pricing', '', 'pages/pricing', 'index.php?option=com_content&view=article&id=1', 'component', 0, 103, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 64, 65, 0, '*', 0),
(125, 'mainmenu', 'FAQ', 'faq', '', 'pages/faq', 'index.php?option=com_content&view=article&id=7', 'component', 0, 103, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 66, 67, 0, '*', 0),
(126, 'mainmenu', 'Blog Featured', 'blog-featured', '', 'blog/blog-featured', 'index.php?option=com_content&view=featured', 'component', 0, 106, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"featured_categories":[""],"layout_type":"blog","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"Blog Listing","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 84, 85, 0, '*', 0),
(127, 'mainmenu', 'Blog Post Detail', 'blog-post-detail', '', 'blog/blog-post-detail', 'index.php?option=com_content&view=article&id=4', 'component', 0, 106, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 86, 87, 0, '*', 0),
(146, 'mainmenu', 'Agent Detail', 'agent-detail', '', 'agents/agent-detail', 'index.php?option=com_bt_property&view=agent&layout=agent&id=313&agentid=315', 'component', 0, 104, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 72, 73, 0, '*', 0),
(147, 'mainmenu', 'Google Map Full Screen', 'google-map-full-screen', '', 'home/google-map-full-screen', 'index.php?option=com_bt_property&view=homepage', 'component', 0, 101, 2, 1018, 999, '2017-04-18 19:46:02', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 2, 3, 0, '*', 0),
(148, 'mainmenu', 'Google Map Fixed Height', 'google-map-fixed-height', '', 'home/google-map-fixed-height', 'index.php?option=com_bt_property&view=homepage', 'component', 0, 101, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 4, 5, 0, '*', 0),
(149, 'mainmenu', 'Google Map Fixed Navigation', 'google-map-fixed-navigation', '', 'home/google-map-fixed-navigation', 'index.php?option=com_bt_property&view=homepage', 'component', 0, 101, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 6, 7, 0, '*', 0),
(150, 'mainmenu', 'Slider Homepage', 'slider-homepage', '', 'home/slider-homepage', 'index.php?option=com_bt_property&view=homepage', 'component', 0, 101, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 8, 9, 0, '*', 0),
(156, 'mainmenu', 'Horizontal Advanced Search', 'horizontal-advanced-search', '', 'home/horizontal-advanced-search', 'index.php?option=com_bt_property&view=homepage', 'component', 0, 101, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 12, 13, 0, '*', 0),
(157, 'mainmenu', 'Slider with Search Box', 'slider-with-search-box', '', 'home/slider-with-search-box', 'index.php?option=com_bt_property&view=homepage', 'component', 0, 101, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 10, 11, 0, '*', 0),
(158, 'mainmenu', 'Horizontal Slider Search', 'horizontal-slider-search', '', 'home/horizontal-slider-search', 'index.php?option=com_bt_property&view=homepage', 'component', 0, 101, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 14, 15, 0, '*', 0),
(159, 'mainmenu', 'Horizontal Slider Floated Search', 'horizontal-slider-floated-search', '', 'home/horizontal-slider-floated-search', 'index.php?option=com_bt_property&view=homepage', 'component', 0, 101, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 16, 17, 0, '*', 0),
(161, 'mainmenu', 'Agents Listing', 'agents-listing', '', 'agents/agents-listing', 'index.php?option=com_bt_property&view=agents', 'component', 0, 104, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 74, 75, 0, '*', 0),
(162, 'user-profile', 'Profile', 'profile', '', 'profile', 'index.php?option=com_bt_socialconnect&view=profile', 'component', 0, 1, 1, 1003, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"fa fa-user","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 127, 128, 0, '*', 0),
(163, 'user-profile', 'My Properties', 'my-properties', '', 'my-properties', 'index.php?option=com_bt_property&view=myproperties', 'component', 0, 1, 1, 1018, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"fa fa-home","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 129, 130, 0, '*', 0),
(164, 'mainmenu', 'My Properties', 'my-properties', '', 'pages/my-properties', 'index.php?option=com_bt_property&view=myproperties', 'component', 0, 103, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 58, 59, 0, '*', 0),
(183, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '{}', 101, 102, 0, '', 1),
(184, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '{}', 99, 100, 0, '*', 1),
(221, 'mainmenu', 'Agencies Listing', 'agencies-listing', '', 'agents/agencies-listing', 'index.php?option=com_bt_property&view=agencies', 'component', 0, 104, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 78, 79, 0, '*', 0),
(222, 'mainmenu', 'Agency Detail', 'agency-detail', '', 'agents/agency-detail', 'index.php?option=com_bt_property&view=agency&agencyid=8', 'component', 0, 104, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"theme":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 76, 77, 0, '*', 0),
(355, 'mainmenu', 'Search Map', 'search-map', '', 'properties/search-map', 'index.php?option=com_bt_property&view=properties&catid=0', 'component', 0, 102, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"theme":"","cat_layout":"","excluded_property":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 52, 53, 0, '*', 0),
(395, 'user-profile', 'My Favourties', 'my-favourties', '', 'my-favourties', 'index.php?option=com_bt_property&view=myfavourites', 'component', 0, 1, 1, 1018, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"fa fa-bookmark","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 131, 132, 0, '*', 0),
(417, 'mainmenu', 'My Favourties', 'my-favourties', '', 'pages/my-favourties', 'index.php?option=com_bt_property&view=myfavourites', 'component', 0, 103, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 60, 61, 0, '*', 0),
(452, 'main', 'COM_BT_SOCIAL_MENU', 'com-bt-social-menu', '', 'com-bt-social-menu', 'index.php?option=com_bt_socialconnect', 'component', 1, 1, 1, 1003, 0, '0000-00-00 00:00:00', 0, 1, '../components/com_bt_socialconnect/assets/icon/social_connect.gif', 0, '{}', 133, 148, 0, '', 1),
(453, 'main', 'COM_BT_SOCIAL_MENU_CPANEL', 'com-bt-social-menu-cpanel', '', 'com-bt-social-menu/com-bt-social-menu-cpanel', 'index.php?option=com_bt_socialconnect&view=cpanel', 'component', 1, 452, 2, 1003, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_bt_socialconnect/assets/icon/cpanel_16.png', 0, '{}', 134, 135, 0, '', 1),
(454, 'main', 'COM_BT_SOCIAL_MENU_SOCIALCONNECTS', 'com-bt-social-menu-socialconnects', '', 'com-bt-social-menu/com-bt-social-menu-socialconnects', 'index.php?option=com_bt_socialconnect&view=socialconnects', 'component', 1, 452, 2, 1003, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_bt_socialconnect/assets/icon/user_16.png', 0, '{}', 136, 137, 0, '', 1),
(455, 'main', 'COM_BT_SOCIAL_MENU_USERFIELDS', 'com-bt-social-menu-userfields', '', 'com-bt-social-menu/com-bt-social-menu-userfields', 'index.php?option=com_bt_socialconnect&view=userfields', 'component', 1, 452, 2, 1003, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_bt_socialconnect/assets/icon/userfield_16.png', 0, '{}', 138, 139, 0, '', 1),
(456, 'main', 'COM_BT_SOCIAL_MENU_SOCIALPUBLISHES', 'com-bt-social-menu-socialpublishes', '', 'com-bt-social-menu/com-bt-social-menu-socialpublishes', 'index.php?option=com_bt_socialconnect&view=channels', 'component', 1, 452, 2, 1003, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_bt_socialconnect/assets/icon/systemconnect_16.png', 0, '{}', 140, 141, 0, '', 1),
(457, 'main', 'COM_BT_SOCIAL_MENU_WIDGETS', 'com-bt-social-menu-widgets', '', 'com-bt-social-menu/com-bt-social-menu-widgets', 'index.php?option=com_bt_socialconnect&view=widgets', 'component', 1, 452, 2, 1003, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_bt_socialconnect/assets/icon/widget_16.png', 0, '{}', 142, 143, 0, '', 1),
(458, 'main', 'COM_BT_SOCIAL_MENU_MESSAGES', 'com-bt-social-menu-messages', '', 'com-bt-social-menu/com-bt-social-menu-messages', 'index.php?option=com_bt_socialconnect&view=messages', 'component', 1, 452, 2, 1003, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_bt_socialconnect/assets/icon/messagelog_16.png', 0, '{}', 144, 145, 0, '', 1),
(459, 'main', 'COM_BT_SOCIAL_MENU_STATISTICS', 'com-bt-social-menu-statistics', '', 'com-bt-social-menu/com-bt-social-menu-statistics', 'index.php?option=com_bt_socialconnect&view=statistics', 'component', 1, 452, 2, 1003, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_bt_socialconnect/assets/icon/statistics_16.png', 0, '{}', 146, 147, 0, '', 1),
(486, 'main', 'COM_BT_PROPERTY_MENU', 'com-bt-property-menu', '', 'com-bt-property-menu', 'index.php?option=com_bt_property', 'component', 1, 1, 1, 1018, 0, '0000-00-00 00:00:00', 0, 1, '../media/bt_property/icon/property-menu.png', 0, '{}', 149, 174, 0, '', 1),
(487, 'main', 'COM_BT_PROPERTY_MENU_CPANEL', 'com-bt-property-menu-cpanel', '', 'com-bt-property-menu/com-bt-property-menu-cpanel', 'index.php?option=com_bt_property&view=cpanel', 'component', 1, 486, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 150, 151, 0, '', 1),
(488, 'main', 'COM_BT_PROPERTY_MENU_PROPERTIES', 'com-bt-property-menu-properties', '', 'com-bt-property-menu/com-bt-property-menu-properties', 'index.php?option=com_bt_property&view=properties', 'component', 1, 486, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 152, 153, 0, '', 1),
(489, 'main', 'COM_BT_PROPERTY_MENU_PRSTATUS', 'com-bt-property-menu-prstatus', '', 'com-bt-property-menu/com-bt-property-menu-prstatus', 'index.php?option=com_bt_property&view=items&type=prstatus', 'component', 1, 486, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 154, 155, 0, '', 1),
(490, 'main', 'COM_BT_PROPERTY_MENU_CATEGORIES', 'com-bt-property-menu-categories', '', 'com-bt-property-menu/com-bt-property-menu-categories', 'index.php?option=com_bt_property&view=categories', 'component', 1, 486, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 156, 157, 0, '', 1),
(491, 'main', 'COM_BT_PROPERTY_MENU_EXTRAFIELDS', 'com-bt-property-menu-extrafields', '', 'com-bt-property-menu/com-bt-property-menu-extrafields', 'index.php?option=com_bt_property&view=extrafields', 'component', 1, 486, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 158, 159, 0, '', 1),
(492, 'main', 'COM_BT_PROPERTY_MENU_EXGROUP', 'com-bt-property-menu-exgroup', '', 'com-bt-property-menu/com-bt-property-menu-exgroup', 'index.php?option=com_bt_property&view=items&type=exgroup', 'component', 1, 486, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 160, 161, 0, '', 1),
(493, 'main', 'COM_BT_PROPERTY_MENU_LOCATION', 'com-bt-property-menu-location', '', 'com-bt-property-menu/com-bt-property-menu-location', 'index.php?option=com_bt_property&view=items&type=location_lv1', 'component', 1, 486, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 162, 163, 0, '', 1),
(494, 'main', 'COM_BT_PROPERTY_MENU_AGENTS', 'com-bt-property-menu-agents', '', 'com-bt-property-menu/com-bt-property-menu-agents', 'index.php?option=com_bt_property&view=agents', 'component', 1, 486, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 164, 165, 0, '', 1),
(495, 'main', 'COM_BT_PROPERTY_MENU_AGENCIES', 'com-bt-property-menu-agencies', '', 'com-bt-property-menu/com-bt-property-menu-agencies', 'index.php?option=com_bt_property&view=agencies', 'component', 1, 486, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 166, 167, 0, '', 1),
(496, 'main', 'COM_BT_PROPERTY_MENU_COMMENTS', 'com-bt-property-menu-comments', '', 'com-bt-property-menu/com-bt-property-menu-comments', 'index.php?option=com_bt_property&view=comments', 'component', 1, 486, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 168, 169, 0, '', 1),
(497, 'main', 'COM_BT_PROPERTY_MENU_EXPORT', 'com-bt-property-menu-export', '', 'com-bt-property-menu/com-bt-property-menu-export', 'index.php?option=com_bt_property&view=export', 'component', 1, 486, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 170, 171, 0, '', 1),
(498, 'main', 'COM_BT_PROPERTY_MENU_IMPORT', 'com-bt-property-menu-import', '', 'com-bt-property-menu/com-bt-property-menu-import', 'index.php?option=com_bt_property&view=import', 'component', 1, 486, 2, 1018, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 172, 173, 0, '', 1),
(499, 'main', 'com_weblinks', 'com-weblinks', '', 'com-weblinks', 'index.php?option=com_weblinks', 'component', 1, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 1, 'class:weblinks', 0, '{}', 175, 180, 0, '', 1),
(500, 'main', 'com_weblinks_links', 'com-weblinks-links', '', 'com-weblinks/com-weblinks-links', 'index.php?option=com_weblinks', 'component', 1, 499, 2, 21, 0, '0000-00-00 00:00:00', 0, 1, 'class:weblinks', 0, '{}', 176, 177, 0, '', 1),
(501, 'main', 'com_weblinks_categories', 'com-weblinks-categories', '', 'com-weblinks/com-weblinks-categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 1, 499, 2, 21, 0, '0000-00-00 00:00:00', 0, 1, 'class:weblinks-cat', 0, '{}', 178, 179, 0, '', 1),
(502, 'mainmenu', 'Ajout d\'une propriétés', 'création-de-bien', '', 'gestion-des-propriétés/création-de-bien', 'index.php?option=com_bt_property&view=property&layout=edit', 'component', 1, 512, 2, 1018, 0, '0000-00-00 00:00:00', 0, 4, ' ', 7, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 22, 23, 0, '*', 0),
(503, 'mainmenu', 'Paiement abonnement', 'paiement-abonnement', '', 'paiement-abonnement', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 5, ' ', 7, '{"show_title":"0","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 35, 36, 0, '*', 0),
(504, 'mainmenu', 'Liste des biens', 'liste-des-biens', '', 'liste-des-biens', 'index.php?option=com_content&view=article&id=21', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 5, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 37, 38, 0, '*', 0),
(505, 'mainmenu', 'Aperçu d’un bien', 'apercu-d-un-bien', '', 'apercu-d-un-bien', '', 'url', 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_text":1,"menu_show":1}', 39, 40, 0, '*', 0),
(506, 'mainmenu', 'Modification de bien ', 'modification-de-bien', '', 'modification-de-bien', '', 'url', 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_text":1,"menu_show":1}', 41, 42, 0, '*', 0),
(507, 'mainmenu', 'Panel d\'administration', 'panel-d-administration', '', 'panel-d-administration', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 3, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_text":1,"menu_show":1}', 27, 34, 0, '*', 0),
(508, 'mainmenu', 'Vision large du site', 'vision-large-du-site', '', 'panel-d-administration/vision-large-du-site', 'index.php?option=com_content&view=article&id=18', 'component', 1, 507, 2, 22, 0, '0000-00-00 00:00:00', 0, 3, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 28, 29, 0, '*', 0),
(509, 'mainmenu', 'Accède et génère les factures', 'accede-et-genere-les-factures', '', 'panel-d-administration/accede-et-genere-les-factures', 'index.php?option=com_content&view=article&id=19', 'component', 1, 507, 2, 22, 0, '0000-00-00 00:00:00', 0, 3, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 30, 31, 0, '*', 0),
(510, 'mainmenu', 'Modifier les prix des abonnements', 'modifier-les-prix-des-abonnements', '', 'panel-d-administration/modifier-les-prix-des-abonnements', 'index.php?option=com_content&view=article&id=20', 'component', 1, 507, 2, 22, 0, '0000-00-00 00:00:00', 0, 3, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_associations":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 32, 33, 0, '*', 0),
(511, 'main', 'com_associations', 'multilingual-associations', '', 'multilingual-associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 1, 'class:associations', 0, '{}', 181, 182, 0, '*', 1),
(512, 'mainmenu', 'Gestion des propriétés', 'gestion-des-propriétés', '', 'gestion-des-propriétés', '#', 'url', 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 0, 4, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu-anchor_rel":"","menu_image":"","menu_text":1,"menu_show":1}', 19, 24, 0, '*', 0),
(513, 'mainmenu', 'Mes propriétés', 'mes-propriétés', '', 'gestion-des-propriétés/mes-propriétés', 'index.php?option=com_bt_property&view=myproperties', 'component', 1, 512, 2, 1018, 0, '0000-00-00 00:00:00', 0, 4, ' ', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 20, 21, 0, '*', 0);

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_menu_types`
--

CREATE TABLE `prfwj_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `prfwj_menu_types`
--

INSERT INTO `prfwj_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0),
(2, 0, 'our-guides', 'Our Guides', '', 0),
(5, 0, 'user-profile', 'User Profile', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_messages`
--

CREATE TABLE `prfwj_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_messages_cfg`
--

CREATE TABLE `prfwj_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_modules`
--

CREATE TABLE `prfwj_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `prfwj_modules`
--

INSERT INTO `prfwj_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(2, 0, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{}', 1, '*'),
(3, 0, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 0, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 0, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '{}', 1, '*'),
(9, 0, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '{}', 1, '*'),
(10, 0, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 0, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 0, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '{}', 1, '*'),
(14, 0, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '{}', 1, '*'),
(15, 0, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '{}', 1, '*'),
(17, 89, 'Breadcrumbs', '', '', 1, 'zoner_navhelper', 999, '2017-05-16 21:39:47', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 0, '{"showHere":"0","showHome":"1","homeText":"Home","showLast":"1","separator":"\\/","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(79, 0, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 0, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 99, 'Contact Top', '', '<div><strong>Phone:</strong>    <strong>Email: </strong><span id="cch_f392e0723239d6c" class="_mh6 _wsc"><span class="_3oh- _58nk">Info@mdbfrance.fr</span></span></div>', 1, 'zoner_topleft', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 100, 'Nous sommes ici !', '', '', 1, 'zoner_map_contact', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_googlemaps', 1, 1, '{"mapType":"roadmap","mapCenterType":"coordinate","mapCenterAddress":"Nice","mapCenterCoordinate":"43.691658, 7.221822","width":"auto","height":"300","zoom":"13","zoomControl":"true","panControl":"true","mapTypeControl":"true","scaleControl":"true","overviewMapControl":"true","streetViewControl":"true","draggable":"true","disableDoubleClickZoom":"false","scrollwheel":"true","enable_map_api":"1","map_api":"AIzaSyDLAEH2ezSClxvq6OI54isNfR80bFR8bbE","markes":"W10=","weather":"0","owm_api":"","temperatureUnit":"f","replace_marker_icon":"1","display_weather_info":"1","enable-style":"0","style-title":"BT Map","createNewOrApplyDefaultStyle":"createNew","styles":"W10=","enable-custom-infobox":"0","boxcss":"background :#ffffff,\\r\\nopacity : 0.85,\\r\\nwidth : 280px,\\r\\nheight :100px,\\r\\nborder : 1px solid grey,\\r\\nborderRadius:3px,\\r\\npadding : 10px,\\r\\nboxShadow:30px 10px 10px 1px grey","pixelOffset":"-150,-155","closeBoxMargin":"-9px","closeBoxURL":"","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(89, 76, 'BT Social Connect - Login', '', '', 1, 'zoner_topright', 999, '2017-05-21 23:45:33', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_btsocialconnect_login', 1, 0, '{"layout":"_:popup","align_option":"right","display_type":"0","mouse_event":"click","logout_button":"1","enabled_registration_tab":"1","tag_login_modal":"","tag_register_modal":"","loginbox_size":"320","registrationbox_size":"500","login":"","logout":"","name":"0","avatar":"1","usesecure":"0","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 97, 'Contact', '', '<address><strong>MDB FRANCE</strong><br />120 Chemin de Terron                                Le Majestic Bat. B                                         06200 NICE</address><address><span id="cch_f392e0723239d6c" class="_mh6 _wsc"><span class="_3oh- _58nk">Info@mdbfrance.fr</span></span></address>', 1, 'zoner_footer_3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 98, 'Lien utile', '', '', 1, 'zoner_footer_4', 999, '2017-04-24 15:56:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"1","showAllChildren":"0","tag_id":"","class_sfx":" list-links","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 96, 'Copyright', '', '<p>Copyright © 2017. All Rights Reserved.</p>', 1, 'zoner_copyright', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 92, 'About us', '', '', 1, 'zoner_footer_1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 1, '{"catid":["2"],"image":"0","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"1","readmore":"1","count":"1","ordering":"a.publish_up","direction":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(98, 0, 'FAQs', '', '', 1, 'zoner_faqs', 999, '2017-05-16 22:42:27', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_contentshowcase', 1, 0, '{"moduleclass_sfx":"","content_title":"","content_title_link":"","layout":"accordion","module_width":"auto","item_height":"auto","items_per_cols":"1","items_per_rows":"3","items_per_page":"100","show_arrow":"0","arrow_position":"right","activate_first":"1","item_min_width":"300","item_margin":"10","back_side_bg":"#bb1d48","bs_text_color":"#ffffff","next_prev":"1","next_back_position":"flanks","navigation_type":"bullet","navigation_position":"top","source":"category","article_ids":"","k2_article_ids":"","btportfolio_article_ids":"","category":["10"],"easyblog_article_ids":"","auto_category":"0","limit_items":"12","limit_items_for_each":"0","user_id":"0","show_featured":"1","ordering":"created-asc","content_plugin":"0","use_introimg":"1","use_caption":"0","use_linka":"0","show_title":"1","limit_title_by":"word","title_max_chars":"8","show_intro":"1","limit_description_by":"word","description_max_chars":"2000","show_category_name":"0","show_category_name_as_link":"1","show_readmore":"1","show_date":"0","show_author":"0","show_image":"1","checkimg_fulltext":"0","check_image_exist":"0","image_align":"center","image_thumb":"1","thumbnail_width":"180","thumbnail_height":"120","thumbnail_small_width":"135","default_thumb":"0","touchscreen":"0","bn_effect":"slidenews","hovereffect":"1","modalbox":"0","slide_effect":"scroll","mouse_event":"hover","metro_effect":"slide","slide_direction":"horizontal","fpshow_effect":"slide","scroll_amount":"5","scroll_direction":"1","slide_item_per_time":"1","pause_hover":"1","duration":"600","captionSpeed":"500","auto_start":"1","interval":"5","easing":"easeInQuad","auto_strip_tags":"1","open_target":"_parent","loadJquery":"auto","cache":"1","cache_time":"900"}', 0, '*'),
(100, 60, 'Testimonials', '', '', 5, 'zoner_spotlight', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_contentshowcase', 1, 1, '{"moduleclass_sfx":" testimonials","content_title":"","content_title_link":"","layout":"testimonial","module_width":"auto","item_height":"auto","items_per_cols":"1","items_per_rows":"1","items_per_page":"5","show_arrow":"1","arrow_position":"right","activate_first":"1","item_min_width":"600","item_margin":"10","back_side_bg":"#bb1d48","bs_text_color":"#ffffff","next_prev":"1","next_back_position":"0","navigation_type":"bullet","navigation_position":"bottom","source":"category","article_ids":"","k2_article_ids":"","btportfolio_article_ids":"","category":["9"],"easyblog_article_ids":"","auto_category":"0","limit_items":"12","limit_items_for_each":"0","user_id":"0","show_featured":"1","ordering":"created-asc","content_plugin":"0","use_introimg":"1","use_caption":"0","use_linka":"0","show_title":"1","limit_title_by":"word","title_max_chars":"8","show_intro":"1","limit_description_by":"char","description_max_chars":"100","show_category_name":"0","show_category_name_as_link":"1","show_readmore":"0","show_date":"0","show_author":"0","show_image":"1","checkimg_fulltext":"0","check_image_exist":"0","image_align":"left","image_thumb":"1","thumbnail_width":"188","thumbnail_height":"188","thumbnail_small_width":"135","default_thumb":"1","touchscreen":"0","bn_effect":"slidenews","hovereffect":"1","modalbox":"0","slide_effect":"scroll","mouse_event":"hover","metro_effect":"slide","slide_direction":"horizontal","fpshow_effect":"slide","scroll_amount":"5","scroll_direction":"1","slide_item_per_time":"1","pause_hover":"1","duration":"600","captionSpeed":"500","auto_start":"0","interval":"5","easing":"easeInQuad","auto_strip_tags":"1","open_target":"_parent","loadJquery":"auto","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(101, 58, 'Our Services', '', '<div class="row">[bt_iconbox class="col-md-4" style="icon-inleft-square" title="Wide Range of Properties" title_color="#073855" icon="icon:folder" icon_size="20" font_size="14" text_color="#5a5a5a" readmore_link="#"]Lorem ipsum dolor sit amet, consectetur adipiscing elit[/bt_iconbox][bt_iconbox class="col-md-4" style="icon-inleft-square" title="14 Agents for Your Service" title_color="#073855" icon="icon:users" icon_size="20" font_size="14" text_color="#5a5a5a" readmore_link="#"]Aliquam gravida magna et fringilla convallis. Pellentesque habitant morbi[/bt_iconbox][bt_iconbox class="col-md-4" style="icon-inleft-square" title="Best Price Guarantee!" title_color="#073855" icon="icon:money" icon_size="20" font_size="14" text_color="#5a5a5a" readmore_link="#"]Phasellus non viverra tortor, id auctor leo. Suspendisse id nibh placerat[/bt_iconbox]</div>', 3, 'zoner_spotlight', 0, '0000-00-00 00:00:00', '2017-05-04 21:47:45', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(102, 0, 'Fun Facts', '', '<div class="row">\r\n<div class="fun-facts">\r\n<div class="col-md-3">\r\n<div class="number-wrapper">\r\n<div class="number" data-to="136" data-from="1">136</div>\r\nProperties Listed</div>\r\n</div>\r\n<div class="col-md-3">\r\n<div class="number-wrapper">\r\n<div class="number" data-to="2145" data-from="1">2145</div>\r\nSatisfied Clients</div>\r\n</div>\r\n<div class="col-md-3">\r\n<div class="number-wrapper">\r\n<div class="number" data-to="468" data-from="1">468</div>\r\nProperties Sold</div>\r\n</div>\r\n<div class="col-md-3">\r\n<div class="number-wrapper">\r\n<div class="number" data-to="5475" data-from="1">5475</div>\r\nDay we are here</div>\r\n</div>\r\n</div>\r\n</div>', 1, 'zoner_funfacts', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(103, 0, 'What other said about us', '', '', 1, 'zoner_testimonials', 999, '2017-05-21 20:33:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_contentshowcase', 1, 1, '{"moduleclass_sfx":" testimonials","content_title":"","content_title_link":"","layout":"testimonial","module_width":"auto","item_height":"auto","items_per_cols":"1","items_per_rows":"1","items_per_page":"5","show_arrow":"1","arrow_position":"right","activate_first":"1","item_min_width":"600","item_margin":"10","back_side_bg":"#bb1d48","bs_text_color":"#ffffff","next_prev":"1","next_back_position":"0","navigation_type":"bullet","navigation_position":"bottom","source":"category","article_ids":"","k2_article_ids":"","btportfolio_article_ids":"","category":["9"],"easyblog_article_ids":"","auto_category":"0","limit_items":"12","limit_items_for_each":"0","user_id":"0","show_featured":"1","ordering":"created-asc","content_plugin":"0","use_introimg":"1","use_caption":"0","use_linka":"0","show_title":"1","limit_title_by":"word","title_max_chars":"8","show_intro":"1","limit_description_by":"char","description_max_chars":"100","show_category_name":"0","show_category_name_as_link":"1","show_readmore":"0","show_date":"0","show_author":"0","show_image":"1","checkimg_fulltext":"0","check_image_exist":"0","image_align":"left","image_thumb":"1","thumbnail_width":"188","thumbnail_height":"188","thumbnail_small_width":"135","default_thumb":"1","touchscreen":"0","bn_effect":"slidenews","hovereffect":"1","modalbox":"0","slide_effect":"scroll","mouse_event":"hover","metro_effect":"slide","slide_direction":"horizontal","fpshow_effect":"slide","scroll_amount":"5","scroll_direction":"1","slide_item_per_time":"1","pause_hover":"1","duration":"600","captionSpeed":"500","auto_start":"0","interval":"5","easing":"easeInQuad","auto_strip_tags":"1","open_target":"_parent","loadJquery":"auto","cache":"1","cache_time":"900"}', 0, '*'),
(104, 68, 'Search Properties', '', '', 1, 'zoner_right', 0, '0000-00-00 00:00:00', '2017-04-24 16:01:10', '0000-00-00 00:00:00', 1, 'mod_bt_property_filter', 1, 1, '{"layout":"_:default","moduleclass_sfx":"","buttontext":"Search Now","itemid":"","descr":"","showsearchbox":"0","keysearch":"Search...","showstatus":"1","showlocation":"1","showcategory":"1","showprice":"1","pricerange":"1000;299000","pricestep":"1000","pricevalues":"1000,2000,5000,10000,20000,50000,100000","extrafield":{"1":{"type":"texrange","value":"1,2,3,4,5,6,7,8,9,10"},"5":{"type":"texrange","value":"1,2,3,4,5,6,7,8,9,10"},"6":{"type":"texrange","value":"1,2,3,4,5,6,7,8,9,10"},"7":{"type":"texrange","value":"1,2,3,4,5,6,7,8,9,10"},"9":{"type":"checkboxlist"},"12":{"type":"dropdown","value":""},"13":{"type":"dropdown","value":""}},"method":"AND","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(105, 65, 'Property Google Map', '', '', 1, 'zoner_map', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_property_map', 1, 1, '{"catid":"0","status":"0","show_search_result":"1","limit":"50","address":"","latitude":"43.42519","longitude":"6.76837","zoomlevel":"4","mapwidth":"","mapheight":"300","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(107, 0, 'Main Menu', '', '', 1, 'zoner_mainnav', 999, '2017-05-16 22:26:04', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"  nav navbar-nav","window_open":"","layout":"_:default","moduleclass_sfx":" nav navbar-nav","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(108, 61, 'Our Partners', '', '<div class="logos">\r\n<div class="logo"><img src="images/logos/logo-partner-01.png" alt="" border="0" /></div>\r\n<div class="logo"><img src="images/logos/logo-partner-02.png" alt="" border="0" /></div>\r\n<div class="logo"><img src="images/logos/logo-partner-03.png" alt="" border="0" /></div>\r\n<div class="logo"><img src="images/logos/logo-partner-04.png" alt="" border="0" /></div>\r\n<div class="logo"><img src="images/logos/logo-partner-05.png" alt="" border="0" /></div>\r\n</div>', 5, 'zoner_spotlight', 999, '2017-04-24 15:58:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(109, 64, 'Search Your Property', '', '', 1, 'zoner_search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_property_filter', 1, 1, '{"layout":"_:default","moduleclass_sfx":" search_bg","buttontext":"Search Now","itemid":"355","descr":"","showsearchbox":"1","keysearch":"Property ID","showstatus":"1","showlocation":"1","showcategory":"1","category":"","auto_detect_category":"1","showprice":"1","pricerange":"1000;299000","pricestep":"1000","pricevalues":"1000,2000,5000,10000,20000,50000,100000,300000","extrafield":{"1":{"type":"texrange","value":""},"5":{"type":"texrange","value":""},"6":{"type":"texrange","value":""},"7":{"type":"texrange","value":""},"9":{"type":"checkboxlist"},"12":{"type":"dropdown","value":""},"13":{"type":"dropdown","value":""}},"method":"AND","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(111, 85, 'Add your property', '', '', 1, 'zoner_addproperty', 999, '2017-05-16 23:40:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(113, 57, 'Price Drop', '', '', 2, 'zoner_spotlight', 999, '2017-05-04 21:47:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_property_showcase', 1, 1, '{"layout":"_:carousel-small","catid":["all"],"ids":"","show_limit_items":"4","show_limit_number_for":"all","get_sub_cat":"0","filter_status":"","filter_agent":"315","show_featured_port":"","item_sort":"ordering","sort_type":"DESC","des_limit":"50","des_limit_by":"char","item_min_width":"300","thumbnail_width":"600","thumbnail_height":"400","moduleclass_sfx":"","strip_tags":"1","allow_tags":"h1, h2, h3, h4, h5, h6, br, b, em, a","load_jquery":"0","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(114, 87, 'Featured Properties', '', '', 1, 'zoner_featured', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_property_showcase', 1, 1, '{"layout":"_:carousel-big","catid":["all"],"ids":"","show_limit_items":"12","show_limit_number_for":"all","get_sub_cat":"0","filter_status":[""],"filter_agent":"0","show_featured_port":"1","item_sort":"ordering","sort_type":"DESC","des_limit":"50","des_limit_by":"char","thumbnail_width":"600","thumbnail_height":"400","show_ex":"1","navigation":"false","pagination":"false","autoPlay":"false","autoHeight":"true","scrollPerPage":"false","stopOnHover":"true","slideSpeed":"200","rewindSpeed":"1000","transitionStyle":"fade","moduleclass_sfx":"","strip_tags":"1","allow_tags":"h1, h2, h3, h4, h5, h6, br, b, em, a","load_jquery":"0","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(115, 62, 'Slider Homepage', '', '', 1, 'zoner_slider', 999, '2017-05-21 20:33:45', '2017-04-24 16:00:25', '0000-00-00 00:00:00', 1, 'mod_bt_property_showcase', 1, 1, '{"layout":"_:slider-homepage","catid":["all"],"ids":"8,9,10","show_limit_items":"3","show_limit_number_for":"all","get_sub_cat":"0","filter_status":[""],"filter_agent":"0","show_featured_port":"1","item_sort":"modified","sort_type":"DESC","des_limit":"50","des_limit_by":"char","thumbnail_width":"600","thumbnail_height":"400","show_ex":"1","navigation":"true","pagination":"false","autoPlay":"true","autoHeight":"true","scrollPerPage":"false","stopOnHover":"true","slideSpeed":"200","rewindSpeed":"1000","transitionStyle":"fade","moduleclass_sfx":"","strip_tags":"1","allow_tags":"h1, h2, h3, h4, h5, h6, br, b, em, a","load_jquery":"0","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(116, 0, 'Languege Switcher', '', '', 1, 'zoner_topright', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_languages', 1, 1, '{"header_text":"","footer_text":"","dropdown":"0","image":"1","inline":"1","show_active":"1","full_name":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(120, 69, 'Featured Properties', '', '', 1, 'zoner_right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_property_showcase', 1, 1, '{"layout":"_:default","catid":["all"],"ids":"","show_limit_items":"3","show_limit_number_for":"all","get_sub_cat":"0","filter_status":[""],"filter_agent":"0","show_featured_port":"1","item_sort":"ordering","sort_type":"DESC","des_limit":"50","des_limit_by":"char","thumbnail_width":"600","thumbnail_height":"400","show_ex":"0","navigation":"false","pagination":"false","autoPlay":"false","autoHeight":"true","scrollPerPage":"false","stopOnHover":"true","slideSpeed":"200","rewindSpeed":"1000","transitionStyle":"fade","moduleclass_sfx":"","strip_tags":"1","allow_tags":"h1, h2, h3, h4, h5, h6, br, b, em, a","load_jquery":"0","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(121, 79, 'Search Your Property - Advanced', '', '', 1, 'zoner_search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_property_filter', 1, 0, '{"layout":"_:horizontal","moduleclass_sfx":"horizontal-search","buttontext":"Search Now","itemid":"109","descr":"","showsearchbox":"0","keysearch":"Property ID","showstatus":"1","showlocation":"1","showcategory":"1","showprice":"2","pricerange":"50000;300000","pricestep":"50000","pricevalues":"1000,2000,5000,10000,20000,50000,100000,300000","extrafield":{"1":{"type":"texrange","value":""},"5":{"type":"select","value":""},"6":{"type":"texrange","value":""},"7":{"type":"texrange","value":""},"9":{"checked":"on","type":"checkboxlist"},"12":{"type":"dropdown","value":""},"13":{"type":"dropdown","value":""}},"method":"AND","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(122, 86, 'Recent Properties', '', '', 1, 'zoner_footer_2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_property_showcase', 1, 1, '{"layout":"_:default","catid":["all"],"ids":"","show_limit_items":"2","show_limit_number_for":"all","get_sub_cat":"0","filter_status":[""],"filter_agent":"0","show_featured_port":"1","item_sort":"modified","sort_type":"DESC","des_limit":"50","des_limit_by":"char","thumbnail_width":"600","thumbnail_height":"400","show_ex":"0","navigation":"false","pagination":"false","autoPlay":"false","autoHeight":"true","scrollPerPage":"false","stopOnHover":"true","slideSpeed":"200","rewindSpeed":"1000","transitionStyle":"fade","moduleclass_sfx":"","strip_tags":"1","allow_tags":"h1, h2, h3, h4, h5, h6, br, b, em, a","load_jquery":"0","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(123, 59, 'New Properties for You', '', '', 4, 'zoner_spotlight', 999, '2017-05-21 23:27:50', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_property_showcase', 1, 1, '{"layout":"_:carousel-small","catid":["all"],"ids":"","show_limit_items":"4","show_limit_number_for":"all","get_sub_cat":"0","filter_status":"","filter_agent":"0","show_featured_port":"1","item_sort":"created","sort_type":"DESC","des_limit":"50","des_limit_by":"char","item_min_width":"300","thumbnail_width":"600","thumbnail_height":"400","moduleclass_sfx":"","strip_tags":"1","allow_tags":"h1, h2, h3, h4, h5, h6, br, b, em, a","load_jquery":"0","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(124, 78, 'Search Your Property - Slider', '', '', 1, 'zoner_search', 999, '2017-04-24 15:59:51', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_property_filter', 1, 0, '{"layout":"_:horizontal","moduleclass_sfx":"horizontal-search","buttontext":"Search Now","itemid":"109","descr":"","showsearchbox":"0","keysearch":"Property ID","showstatus":"1","showlocation":"1","showcategory":"1","showprice":"2","pricerange":"1000;299000","pricestep":"50000","pricevalues":"1000,2000,5000,10000,20000,50000,100000,300000","extrafield":{"1":{"type":"texrange","value":""},"5":{"type":"select","value":""},"6":{"type":"texrange","value":""},"7":{"type":"texrange","value":""},"9":{"type":"checkboxlist"},"12":{"type":"dropdown","value":""},"13":{"type":"dropdown","value":""}},"method":"AND","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(125, 88, 'Property Google Accueil', '', '', 1, 'zoner_map_fixnav', 0, '0000-00-00 00:00:00', '2017-04-24 16:01:54', '0000-00-00 00:00:00', 1, 'mod_bt_property_map', 1, 1, '{"catid":"0","status":"0","show_search_result":"1","limit":"50","address":"","latitude":"43.42519","longitude":"6.76837","zoomlevel":"4","mapwidth":"","mapheight":"650","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(127, 95, 'Property Google Map Fix Navigation', '', '', 1, 'zoner_map_fixnav', 0, '0000-00-00 00:00:00', '2017-04-24 16:01:52', '0000-00-00 00:00:00', 1, 'mod_bt_property_map', 1, 1, '{"catid":"0","status":"0","show_search_result":"1","limit":"50","address":"","latitude":"43.42519","longitude":"6.76837","zoomlevel":"4","mapwidth":"","mapheight":"750","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(129, 77, 'Search Your Property - Floated', '', '', 1, 'zoner_search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_bt_property_filter', 1, 0, '{"layout":"_:horizontal","moduleclass_sfx":"horizontal-search-float","buttontext":"Search Now","itemid":"109","descr":"","showsearchbox":"0","keysearch":"Property ID","showstatus":"1","showlocation":"1","showcategory":"1","category":"","auto_detect_category":"1","showprice":"2","pricerange":"50000;300000","pricestep":"50000","pricevalues":"1000,2000,5000,10000,20000,50000,100000,300000","extrafield":{"1":{"type":"texrange","value":""},"5":{"type":"select","value":""},"6":{"type":"texrange","value":""},"7":{"type":"texrange","value":""},"9":{"type":"checkboxlist"},"12":{"type":"dropdown","value":""},"13":{"type":"dropdown","value":""}},"method":"AND","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(132, 90, 'Account', '', '', 1, 'zoner_left', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 2, 1, '{"menutype":"user-profile","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"bt_zoner:userprofile","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(133, 84, 'Slider Homepage - Right', '', '', 1, 'zoner_slider', 999, '2017-04-24 15:59:26', '2016-10-08 07:39:18', '0000-00-00 00:00:00', 1, 'mod_bt_property_showcase', 1, 1, '{"layout":"bt_zoner:slider-homepage-right","catid":["all"],"ids":"8,9,10","show_limit_items":"3","show_limit_number_for":"all","get_sub_cat":"0","filter_status":[""],"filter_agent":"0","show_featured_port":"1","item_sort":"modified","sort_type":"DESC","des_limit":"50","des_limit_by":"char","thumbnail_width":"600","thumbnail_height":"400","show_ex":"1","navigation":"true","pagination":"false","autoPlay":"true","autoHeight":"true","scrollPerPage":"false","stopOnHover":"true","slideSpeed":"200","rewindSpeed":"1000","transitionStyle":"fade","moduleclass_sfx":"","strip_tags":"1","allow_tags":"h1, h2, h3, h4, h5, h6, br, b, em, a","load_jquery":"0","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_modules_menu`
--

CREATE TABLE `prfwj_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `prfwj_modules_menu`
--

INSERT INTO `prfwj_modules_menu` (`moduleid`, `menuid`) VALUES
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(17, -355),
(17, -159),
(17, -158),
(17, -157),
(17, -156),
(17, -150),
(17, -149),
(17, -148),
(17, -147),
(17, -101),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(98, 125),
(100, 101),
(100, 147),
(100, 148),
(100, 149),
(100, 150),
(100, 151),
(100, 152),
(100, 153),
(100, 156),
(100, 157),
(100, 158),
(101, 101),
(101, 147),
(101, 148),
(101, 149),
(101, 150),
(101, 156),
(101, 157),
(101, 158),
(102, 0),
(103, 0),
(104, 102),
(104, 108),
(104, 109),
(104, 110),
(104, 111),
(104, 146),
(104, 161),
(104, 221),
(104, 222),
(105, 156),
(107, 0),
(108, 101),
(108, 147),
(108, 148),
(108, 149),
(108, 150),
(108, 151),
(108, 152),
(108, 153),
(108, 156),
(108, 157),
(108, 158),
(109, 101),
(109, 147),
(109, 148),
(109, 149),
(109, 157),
(109, 355),
(111, -355),
(113, 101),
(113, 147),
(113, 148),
(113, 149),
(113, 150),
(113, 151),
(113, 152),
(113, 153),
(113, 154),
(113, 155),
(113, 156),
(113, 157),
(113, 158),
(114, 101),
(114, 147),
(114, 148),
(114, 149),
(114, 150),
(114, 156),
(114, 157),
(114, 158),
(115, 150),
(115, 158),
(115, 159),
(116, 0),
(117, 0),
(118, 147),
(118, 151),
(119, 149),
(119, 153),
(120, 102),
(120, 106),
(120, 108),
(120, 109),
(120, 110),
(120, 126),
(120, 127),
(120, 146),
(120, 161),
(120, 221),
(120, 222),
(121, 156),
(122, 0),
(123, 101),
(123, 147),
(123, 148),
(123, 149),
(123, 150),
(123, 151),
(123, 152),
(123, 153),
(123, 154),
(123, 155),
(123, 156),
(123, 157),
(123, 158),
(124, 158),
(125, 101),
(125, 355),
(127, 156),
(127, 504),
(129, 159),
(132, 115),
(132, 162),
(132, 163),
(132, 164),
(132, 395),
(132, 417),
(133, 157);

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_newsfeeds`
--

CREATE TABLE `prfwj_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_overrider`
--

CREATE TABLE `prfwj_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_postinstall_messages`
--

CREATE TABLE `prfwj_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `prfwj_postinstall_messages`
--

INSERT INTO `prfwj_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_MSG_EACCELERATOR_TITLE', 'COM_CPANEL_MSG_EACCELERATOR_BODY', 'COM_CPANEL_MSG_EACCELERATOR_BUTTON', 'com_cpanel', 1, 'action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_action', 'admin://components/com_admin/postinstall/eaccelerator.php', 'admin_postinstall_eaccelerator_condition', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_PHPVERSION_TITLE', 'COM_CPANEL_MSG_PHPVERSION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/phpversion.php', 'admin_postinstall_phpversion_condition', '3.2.2', 1),
(4, 700, 'COM_CPANEL_MSG_HTACCESS_TITLE', 'COM_CPANEL_MSG_HTACCESS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/htaccess.php', 'admin_postinstall_htaccess_condition', '3.4.0', 1),
(5, 700, 'COM_CPANEL_MSG_ROBOTS_TITLE', 'COM_CPANEL_MSG_ROBOTS_BODY', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.3.0', 1),
(6, 700, 'COM_CPANEL_MSG_LANGUAGEACCESS340_TITLE', 'COM_CPANEL_MSG_LANGUAGEACCESS340_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/languageaccess340.php', 'admin_postinstall_languageaccess340_condition', '3.4.1', 1),
(7, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(8, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(9, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
(10, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1);

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_presets_bt_shortcode`
--

CREATE TABLE `prfwj_presets_bt_shortcode` (
  `shortcode` varchar(255) NOT NULL,
  `presets` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `prfwj_presets_bt_shortcode`
--

INSERT INTO `prfwj_presets_bt_shortcode` (`shortcode`, `presets`) VALUES
('iconbox', '[{"preset_name":"our_services","settings":{"style":"icon-inleft-square","width":"","title":"Title box","title_color":"#073855","icon":"pencil","icon_size":"20","font_size":"14","text_color":"#5a5a5a","readmore_link":"Read More","class":"","content":"This is sample content of iconbox"},"id":"1407794494597"}]'),
('pricetable', '[{"preset_name":"style1","settings":{"unit_width":"auto","width_px":"980","width_percent":"100","currency":"$","color_scheme":"#ffffff","title_font_size":"36","bgr_title":"#1396e2","currency_font_size":"14","price_font_size":"18","price_color":"#ffffff","price_hover_color":"#ffffff","bgr_price_color":"#073855","bgr_price_hover_color":"#073855","detail_font_size":"14","detail_color":"#5a5a5a","purchase_text":"Sign In","purchase_text_font_size":"14","purchase_color":"#fff","purchase_bgr_color":"#1396e2","class":"pp_style1","content":"[bt_pricetable unit_width=\\"auto\\" width_px=\\"980\\" width_percent=\\"100\\" currency=\\"$\\" color_scheme=\\"#ffffff\\" title_font_size=\\"36\\" bgr_title=\\"#1396e2\\" currency_font_size=\\"18\\" price_font_size=\\"18\\" price_color=\\"#ffffff\\" price_hover_color=\\"#ffffff\\" bgr_price_color=\\"#073855\\" bgr_price_hover_color=\\"#073855\\" detail_font_size=\\"14\\" detail_color=\\"#5a5a5a\\" purchase_text=\\"Sign In\\" purchase_text_font_size=\\"14\\" purchase_color=\\"#fff\\" purchase_bgr_color=\\"#1396e2\\" class=\\"zoner\\"][bt_pricecol title=\\"Free\\" price=\\"0\\" detail=\\"1 Property;1 Agent Profile;Agency Profile;Featured Properties\\" purchase_link=\\"\\"][bt_pricecol title=\\"Silver\\" price=\\"20\\" detail=\\"20 Properties;10 Agent Profiles;5 Agency Profiles;Featured Properties\\" purchase_link=\\"\\"][bt_pricecol title=\\"Gold\\" price=\\"40\\" detail=\\"30 Properties;20 Agent Profiles;10 Agency Profiles;Featured Properties\\" purchase_link=\\"\\"][bt_pricecol title=\\"Platinum\\" price=\\"60\\" detail=\\"Unlimited Properties;Unlimited Agent Profiles;Unlimited Agency Profiles;Featured Properties\\" purchase_link=\\"\\"][\\/bt_pricetable]"},"id":"1407804052265"},{"preset_name":"style2","settings":{"unit_width":"auto","width_px":"980","width_percent":"100","currency":"$","color_scheme":"#1396e2","title_font_size":"18","bgr_title":"#ffffff","currency_font_size":"14","price_font_size":"14","price_color":"#073855","price_hover_color":"#073855","bgr_price_color":"#ffffff","bgr_price_hover_color":"#ffffff","detail_font_size":"12","detail_color":"#5a5a5a","purchase_text":"Select","purchase_text_font_size":"12","purchase_color":"#fff","purchase_bgr_color":"#1396e2","class":"pp_style2","content":"[bt_pricecol title=\\"Your Package:\\" price=\\"\\" detail=\\"Property Submit Limit;Agent Profiles;Agency Profiles;Featured Properties\\"][bt_pricecol class=\\"selected\\" title=\\"Free\\" price=\\"0\\" detail=\\"1;1;icon:times;icon:times\\" purchase_link=\\"https:\\/\\/bowthemes.com\\/lang\\/en\\/subscribe\\"][bt_pricecol title=\\"Silver\\" price=\\"20\\" detail=\\"20;10;5;icon:check\\" purchase_link=\\"https:\\/\\/bowthemes.com\\/lang\\/en\\/subscribe\\"]\\n[bt_pricecol title=\\"Gold\\" price=\\"40\\" detail=\\"Unlimited;Unlimited;Unlimited;icon:check\\" purchase_link=\\"https:\\/\\/bowthemes.com\\/lang\\/en\\/subscribe\\"]"},"id":"1407878329283"}]');

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_redirect_links`
--

CREATE TABLE `prfwj_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_schemas`
--

CREATE TABLE `prfwj_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `prfwj_schemas`
--

INSERT INTO `prfwj_schemas` (`extension_id`, `version_id`) VALUES
(21, '3.5.1'),
(700, '3.7.0-2017-04-19'),
(1003, '1.1.0'),
(1018, '3.0.1');

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_session`
--

CREATE TABLE `prfwj_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` longtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `prfwj_session`
--

INSERT INTO `prfwj_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('p7a48kp5g1rrakes4nrc8e3rm5', 1, 0, '1496365187', 'joomla|s:844:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo0O3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTQ5NjM2NTE3MTtzOjQ6Imxhc3QiO2k6MTQ5NjM2NTE3NjtzOjM6Im5vdyI7aToxNDk2MzY1MTc3O31zOjU6InRva2VuIjtzOjMyOiJqa0JYUklmbzVBSTJCS3JTUkt2MXdkMVh0Y09WU1BYRCI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjoxOntzOjEzOiJjb21faW5zdGFsbGVyIjtPOjg6InN0ZENsYXNzIjoyOntzOjc6Im1lc3NhZ2UiO3M6MDoiIjtzOjE3OiJleHRlbnNpb25fbWVzc2FnZSI7czowOiIiO319czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtzOjM6Ijk5OSI7fX19czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 999, 'mdbfrance'),
('vpq1918u63s66vu1djid157944', 0, 0, '1496365168', 'joomla|s:1112:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxOTI7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNDk2MzU5Mzg4O3M6NDoibGFzdCI7aToxNDk2MzY1MTY3O3M6Mzoibm93IjtpOjE0OTYzNjUxNjg7fXM6NToidG9rZW4iO3M6MzI6ImVnNjJoNmdHbDhZUkdwblJVVUNjS0Nhd0lpNmRLQjg1Ijt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjI6e3M6MjA6ImNvbV9idF9zb2NpYWxjb25uZWN0IjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NzoicHJvZmlsZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoyOiJpZCI7aToxMDAxO3M6NDoiZGF0YSI7Tjt9fX1zOjE1OiJjb21fYnRfcHJvcGVydHkiO086ODoic3RkQ2xhc3MiOjE6e3M6MTI6Im15cHJvcGVydGllcyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo4OiJvcmRlcmNvbCI7Tjt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO3M6NDoiMTAwMSI7fXM6MTE6ImFwcGxpY2F0aW9uIjtPOjg6InN0ZENsYXNzIjoxOntzOjU6InF1ZXVlIjtOO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";', 1001, 'uti1');

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_tags`
--

CREATE TABLE `prfwj_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `prfwj_tags`
--

INSERT INTO `prfwj_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 999, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_template_styles`
--

CREATE TABLE `prfwj_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `prfwj_template_styles`
--

INSERT INTO `prfwj_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '0', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - Default', '{}'),
(4, 'beez_20', 0, '0', 'Beez2 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'bt_zoner', 0, '1', 'bt_zoner - Default', '{"logo":"","templateColor":"","linkColor":""}'),
(8, 'beez5', 0, '0', 'Beez5 - Default (2)', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","html5":"0"}'),
(9, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(10, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(11, 'beez3', 0, '0', 'beez3 - Default', '{"wrapperSmall":53,"wrapperLarge":72,"logo":"","sitetitle":"","sitedescription":"","navposition":"center","bootstrap":"","templatecolor":"nature","headerImage":"","backgroundcolor":"#eee"}');

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_ucm_base`
--

CREATE TABLE `prfwj_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_ucm_content`
--

CREATE TABLE `prfwj_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_ucm_history`
--

CREATE TABLE `prfwj_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_updates`
--

CREATE TABLE `prfwj_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Contenu de la table `prfwj_updates`
--

INSERT INTO `prfwj_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Galician', '', 'pkg_gl-ES', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/gl-ES_details.xml', '', ''),
(2, 3, 0, 'Georgian', '', 'pkg_ka-GE', 'package', '', 0, '3.7.2.2', '', 'https://update.joomla.org/language/details3/ka-GE_details.xml', '', ''),
(3, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.6.3.2', '', 'https://update.joomla.org/language/details3/el-GR_details.xml', '', ''),
(4, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/ja-JP_details.xml', '', ''),
(5, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/he-IL_details.xml', '', ''),
(6, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/hu-HU_details.xml', '', ''),
(7, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/af-ZA_details.xml', '', ''),
(8, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/ar-AA_details.xml', '', ''),
(9, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/be-BY_details.xml', '', ''),
(10, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.6.5.2', '', 'https://update.joomla.org/language/details3/bg-BG_details.xml', '', ''),
(11, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/ca-ES_details.xml', '', ''),
(12, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/zh-CN_details.xml', '', ''),
(13, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/hr-HR_details.xml', '', ''),
(14, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(15, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(16, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(17, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(18, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(19, 3, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(20, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.7.1.2', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(21, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.7.2.2', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(22, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(23, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(24, 3, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(25, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(26, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.7.0.3', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(27, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(28, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(29, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(30, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(31, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(32, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(33, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(34, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(35, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(36, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(37, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.7.1.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(38, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(39, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.2', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(40, 3, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(41, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.2', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(42, 3, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(43, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(44, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(45, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(46, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(47, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(48, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.2', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(49, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(50, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(51, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(52, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(53, 3, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(54, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(55, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.2', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(56, 3, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.2', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(57, 3, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.2', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(58, 3, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(59, 3, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.6.2.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(60, 3, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(61, 3, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(62, 3, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(63, 3, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(64, 3, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(65, 3, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(66, 3, 0, 'English NZ', '', 'pkg_en-NZ', 'package', '', 0, '3.6.5.1', '', 'https://update.joomla.org/language/details3/en-NZ_details.xml', '', ''),
(67, 7, 0, 'Armenian', '', 'pkg_hy-AM', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/hy-AM_details.xml', '', ''),
(68, 7, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.4.1.2', '', 'https://update.joomla.org/language/details3/ms-MY_details.xml', '', ''),
(69, 7, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.7.0.1', '', 'https://update.joomla.org/language/details3/ro-RO_details.xml', '', ''),
(70, 7, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.7.2.1', '', 'https://update.joomla.org/language/details3/nl-BE_details.xml', '', ''),
(71, 7, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.7.0.2', '', 'https://update.joomla.org/language/details3/zh-TW_details.xml', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_update_categories`
--

CREATE TABLE `prfwj_update_categories` (
  `categoryid` int(11) NOT NULL,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Update Categories';

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_update_sites`
--

CREATE TABLE `prfwj_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Contenu de la table `prfwj_update_sites`
--

INSERT INTO `prfwj_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1496365180, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1496365185, ''),
(5, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1496365186, ''),
(6, 'Weblinks Update Site', 'extension', 'https://raw.githubusercontent.com/joomla-extensions/weblinks/master/manifest.xml', 1, 1496365186, ''),
(7, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1496365187, '');

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_update_sites_extensions`
--

CREATE TABLE `prfwj_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Contenu de la table `prfwj_update_sites_extensions`
--

INSERT INTO `prfwj_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(3, 802),
(3, 1033),
(5, 28),
(6, 1030),
(7, 1036);

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_usergroups`
--

CREATE TABLE `prfwj_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `prfwj_usergroups`
--

INSERT INTO `prfwj_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 24, 'Public'),
(2, 1, 6, 21, 'Registered'),
(3, 2, 11, 16, 'Author'),
(4, 3, 12, 15, 'Editor'),
(5, 4, 13, 14, 'Publisher'),
(6, 1, 2, 5, 'Manager'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 22, 23, 'Super Users'),
(9, 2, 19, 20, 'Regular User'),
(10, 2, 9, 10, 'Agent'),
(11, 2, 7, 8, 'Agence immobilière'),
(12, 2, 17, 18, 'Marchand de biens');

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_users`
--

CREATE TABLE `prfwj_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `prfwj_users`
--

INSERT INTO `prfwj_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(313, 'Bowthemes', 'bowthemes', 'tampt@vsmarttech.com', '$2y$10$Mkhx2zGsb0JRoHmeLiXJ5OEjonn20I1EeewBBeZ8N6ilrFdcOYzXe', 0, 1, '2014-07-22 16:14:35', '2017-02-10 02:42:00', '0', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0),
(314, 'Kien Nguyen', 'kiennb', 'kiennb@bowthemes.com', '$P$DRymQ8udfiPQcpxsJ03.LN7MDLQEvD.', 0, 0, '2014-08-15 07:53:06', '0000-00-00 00:00:00', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '2014-08-15 07:53:21', 1, '', '', 0),
(315, 'Robert Farley', 'robertfarley', 'robertfarley@bowthemes.com', '$2y$10$qaFuvQiG6hFxolnV1oWUOOqWB9v3ygU5W.6AwkMegJmxR/f0Tj25a', 0, 0, '2014-09-25 07:32:06', '2014-12-10 06:23:59', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0),
(999, 'Super User', 'mdbfrance', 'nicolas.escallier@free.fr', '$2y$10$7v0j2ldFmIuWL7TfTVQt0uWS18G2sO3jQ.0/CeJcAsfhPRVWXRzM2', 0, 1, '2017-04-01 20:54:19', '2017-06-02 00:59:36', '0', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0),
(1000, 'uti2', 'uti2', 'uti2@uti2', '$2y$10$QoOpqXh.ro7sEVJZ9Od/vOL82enWwurRd9Z2U1dAysKAIyNQD2hXS', 0, 0, '2017-05-21 21:44:56', '2017-05-22 00:29:25', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0),
(1001, 'uti1', 'uti1', 'uti1@uti1rr', '$2y$10$8XCZgUgbxEhYuuPsLmu2peT.4ElHWAn8p9k8sDu0q1Zq7FcR4kKL6', 0, 0, '2017-05-21 21:46:39', '2017-06-02 00:14:59', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_user_keys`
--

CREATE TABLE `prfwj_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_user_notes`
--

CREATE TABLE `prfwj_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_user_profiles`
--

CREATE TABLE `prfwj_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_user_usergroup_map`
--

CREATE TABLE `prfwj_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `prfwj_user_usergroup_map`
--

INSERT INTO `prfwj_user_usergroup_map` (`user_id`, `group_id`) VALUES
(313, 2),
(313, 10),
(313, 12),
(314, 2),
(314, 10),
(314, 11),
(315, 2),
(315, 10),
(999, 8),
(1000, 11),
(1001, 12);

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_utf8_conversion`
--

CREATE TABLE `prfwj_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `prfwj_utf8_conversion`
--

INSERT INTO `prfwj_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_viewlevels`
--

CREATE TABLE `prfwj_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `prfwj_viewlevels`
--

INSERT INTO `prfwj_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[8]'),
(4, 'Marchand de biens', 0, '[12,8]'),
(5, 'Agence immobilière', 0, '[11,8]');

-- --------------------------------------------------------

--
-- Structure de la table `prfwj_weblinks`
--

CREATE TABLE `prfwj_weblinks` (
  `id` int(10) UNSIGNED NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `url` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `images` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `prfwj_assets`
--
ALTER TABLE `prfwj_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Index pour la table `prfwj_associations`
--
ALTER TABLE `prfwj_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Index pour la table `prfwj_banners`
--
ALTER TABLE `prfwj_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Index pour la table `prfwj_banner_clients`
--
ALTER TABLE `prfwj_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Index pour la table `prfwj_banner_tracks`
--
ALTER TABLE `prfwj_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Index pour la table `prfwj_bt_channels`
--
ALTER TABLE `prfwj_bt_channels`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prfwj_bt_connections`
--
ALTER TABLE `prfwj_bt_connections`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prfwj_bt_messages`
--
ALTER TABLE `prfwj_bt_messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prfwj_bt_properties`
--
ALTER TABLE `prfwj_bt_properties`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prfwj_bt_property_agencies`
--
ALTER TABLE `prfwj_bt_property_agencies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prfwj_bt_property_agents`
--
ALTER TABLE `prfwj_bt_property_agents`
  ADD PRIMARY KEY (`agent_id`);

--
-- Index pour la table `prfwj_bt_property_categories`
--
ALTER TABLE `prfwj_bt_property_categories`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prfwj_bt_property_comments`
--
ALTER TABLE `prfwj_bt_property_comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prfwj_bt_property_extrafields`
--
ALTER TABLE `prfwj_bt_property_extrafields`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prfwj_bt_property_favourites`
--
ALTER TABLE `prfwj_bt_property_favourites`
  ADD PRIMARY KEY (`user_id`,`property_id`);

--
-- Index pour la table `prfwj_bt_property_images`
--
ALTER TABLE `prfwj_bt_property_images`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prfwj_bt_property_items`
--
ALTER TABLE `prfwj_bt_property_items`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prfwj_bt_property_related`
--
ALTER TABLE `prfwj_bt_property_related`
  ADD PRIMARY KEY (`property_id`,`related_id`);

--
-- Index pour la table `prfwj_bt_users`
--
ALTER TABLE `prfwj_bt_users`
  ADD PRIMARY KEY (`user_id`);

--
-- Index pour la table `prfwj_bt_user_fields`
--
ALTER TABLE `prfwj_bt_user_fields`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prfwj_bt_widgets`
--
ALTER TABLE `prfwj_bt_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prfwj_categories`
--
ALTER TABLE `prfwj_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_alias` (`alias`(100));

--
-- Index pour la table `prfwj_contact_details`
--
ALTER TABLE `prfwj_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Index pour la table `prfwj_content`
--
ALTER TABLE `prfwj_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Index pour la table `prfwj_contentitem_tag_map`
--
ALTER TABLE `prfwj_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Index pour la table `prfwj_content_frontpage`
--
ALTER TABLE `prfwj_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Index pour la table `prfwj_content_rating`
--
ALTER TABLE `prfwj_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Index pour la table `prfwj_content_types`
--
ALTER TABLE `prfwj_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Index pour la table `prfwj_extensions`
--
ALTER TABLE `prfwj_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Index pour la table `prfwj_fields`
--
ALTER TABLE `prfwj_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `prfwj_fields_categories`
--
ALTER TABLE `prfwj_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Index pour la table `prfwj_fields_groups`
--
ALTER TABLE `prfwj_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `prfwj_fields_values`
--
ALTER TABLE `prfwj_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Index pour la table `prfwj_finder_filters`
--
ALTER TABLE `prfwj_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Index pour la table `prfwj_finder_links`
--
ALTER TABLE `prfwj_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`),
  ADD KEY `idx_title` (`title`(100));

--
-- Index pour la table `prfwj_finder_links_terms0`
--
ALTER TABLE `prfwj_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `prfwj_finder_links_terms1`
--
ALTER TABLE `prfwj_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `prfwj_finder_links_terms2`
--
ALTER TABLE `prfwj_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `prfwj_finder_links_terms3`
--
ALTER TABLE `prfwj_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `prfwj_finder_links_terms4`
--
ALTER TABLE `prfwj_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `prfwj_finder_links_terms5`
--
ALTER TABLE `prfwj_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `prfwj_finder_links_terms6`
--
ALTER TABLE `prfwj_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `prfwj_finder_links_terms7`
--
ALTER TABLE `prfwj_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `prfwj_finder_links_terms8`
--
ALTER TABLE `prfwj_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `prfwj_finder_links_terms9`
--
ALTER TABLE `prfwj_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `prfwj_finder_links_termsa`
--
ALTER TABLE `prfwj_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `prfwj_finder_links_termsb`
--
ALTER TABLE `prfwj_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `prfwj_finder_links_termsc`
--
ALTER TABLE `prfwj_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `prfwj_finder_links_termsd`
--
ALTER TABLE `prfwj_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `prfwj_finder_links_termse`
--
ALTER TABLE `prfwj_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `prfwj_finder_links_termsf`
--
ALTER TABLE `prfwj_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Index pour la table `prfwj_finder_taxonomy`
--
ALTER TABLE `prfwj_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Index pour la table `prfwj_finder_taxonomy_map`
--
ALTER TABLE `prfwj_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Index pour la table `prfwj_finder_terms`
--
ALTER TABLE `prfwj_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Index pour la table `prfwj_finder_terms_common`
--
ALTER TABLE `prfwj_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Index pour la table `prfwj_finder_tokens`
--
ALTER TABLE `prfwj_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Index pour la table `prfwj_finder_tokens_aggregate`
--
ALTER TABLE `prfwj_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Index pour la table `prfwj_finder_types`
--
ALTER TABLE `prfwj_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Index pour la table `prfwj_languages`
--
ALTER TABLE `prfwj_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Index pour la table `prfwj_menu`
--
ALTER TABLE `prfwj_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100));

--
-- Index pour la table `prfwj_menu_types`
--
ALTER TABLE `prfwj_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Index pour la table `prfwj_messages`
--
ALTER TABLE `prfwj_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Index pour la table `prfwj_messages_cfg`
--
ALTER TABLE `prfwj_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Index pour la table `prfwj_modules`
--
ALTER TABLE `prfwj_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Index pour la table `prfwj_modules_menu`
--
ALTER TABLE `prfwj_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Index pour la table `prfwj_newsfeeds`
--
ALTER TABLE `prfwj_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Index pour la table `prfwj_overrider`
--
ALTER TABLE `prfwj_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prfwj_postinstall_messages`
--
ALTER TABLE `prfwj_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Index pour la table `prfwj_presets_bt_shortcode`
--
ALTER TABLE `prfwj_presets_bt_shortcode`
  ADD PRIMARY KEY (`shortcode`);

--
-- Index pour la table `prfwj_redirect_links`
--
ALTER TABLE `prfwj_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_link_modifed` (`modified_date`),
  ADD KEY `idx_old_url` (`old_url`(100));

--
-- Index pour la table `prfwj_schemas`
--
ALTER TABLE `prfwj_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Index pour la table `prfwj_session`
--
ALTER TABLE `prfwj_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Index pour la table `prfwj_tags`
--
ALTER TABLE `prfwj_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_alias` (`alias`(100));

--
-- Index pour la table `prfwj_template_styles`
--
ALTER TABLE `prfwj_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Index pour la table `prfwj_ucm_base`
--
ALTER TABLE `prfwj_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Index pour la table `prfwj_ucm_content`
--
ALTER TABLE `prfwj_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_content_type` (`core_type_alias`(100));

--
-- Index pour la table `prfwj_ucm_history`
--
ALTER TABLE `prfwj_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Index pour la table `prfwj_updates`
--
ALTER TABLE `prfwj_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Index pour la table `prfwj_update_categories`
--
ALTER TABLE `prfwj_update_categories`
  ADD PRIMARY KEY (`categoryid`);

--
-- Index pour la table `prfwj_update_sites`
--
ALTER TABLE `prfwj_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Index pour la table `prfwj_update_sites_extensions`
--
ALTER TABLE `prfwj_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Index pour la table `prfwj_usergroups`
--
ALTER TABLE `prfwj_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Index pour la table `prfwj_users`
--
ALTER TABLE `prfwj_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`),
  ADD KEY `idx_name` (`name`(100));

--
-- Index pour la table `prfwj_user_keys`
--
ALTER TABLE `prfwj_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `prfwj_user_notes`
--
ALTER TABLE `prfwj_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Index pour la table `prfwj_user_profiles`
--
ALTER TABLE `prfwj_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Index pour la table `prfwj_user_usergroup_map`
--
ALTER TABLE `prfwj_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Index pour la table `prfwj_viewlevels`
--
ALTER TABLE `prfwj_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- Index pour la table `prfwj_weblinks`
--
ALTER TABLE `prfwj_weblinks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `prfwj_assets`
--
ALTER TABLE `prfwj_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT pour la table `prfwj_banners`
--
ALTER TABLE `prfwj_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `prfwj_banner_clients`
--
ALTER TABLE `prfwj_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `prfwj_bt_channels`
--
ALTER TABLE `prfwj_bt_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `prfwj_bt_connections`
--
ALTER TABLE `prfwj_bt_connections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `prfwj_bt_messages`
--
ALTER TABLE `prfwj_bt_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `prfwj_bt_properties`
--
ALTER TABLE `prfwj_bt_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT pour la table `prfwj_bt_property_agencies`
--
ALTER TABLE `prfwj_bt_property_agencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT pour la table `prfwj_bt_property_categories`
--
ALTER TABLE `prfwj_bt_property_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `prfwj_bt_property_comments`
--
ALTER TABLE `prfwj_bt_property_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `prfwj_bt_property_extrafields`
--
ALTER TABLE `prfwj_bt_property_extrafields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `prfwj_bt_property_images`
--
ALTER TABLE `prfwj_bt_property_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT pour la table `prfwj_bt_property_items`
--
ALTER TABLE `prfwj_bt_property_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=280;
--
-- AUTO_INCREMENT pour la table `prfwj_bt_user_fields`
--
ALTER TABLE `prfwj_bt_user_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `prfwj_bt_widgets`
--
ALTER TABLE `prfwj_bt_widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `prfwj_categories`
--
ALTER TABLE `prfwj_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `prfwj_contact_details`
--
ALTER TABLE `prfwj_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `prfwj_content`
--
ALTER TABLE `prfwj_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `prfwj_content_types`
--
ALTER TABLE `prfwj_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10005;
--
-- AUTO_INCREMENT pour la table `prfwj_extensions`
--
ALTER TABLE `prfwj_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1037;
--
-- AUTO_INCREMENT pour la table `prfwj_fields`
--
ALTER TABLE `prfwj_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `prfwj_fields_groups`
--
ALTER TABLE `prfwj_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `prfwj_finder_filters`
--
ALTER TABLE `prfwj_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `prfwj_finder_links`
--
ALTER TABLE `prfwj_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `prfwj_finder_taxonomy`
--
ALTER TABLE `prfwj_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `prfwj_finder_terms`
--
ALTER TABLE `prfwj_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `prfwj_finder_types`
--
ALTER TABLE `prfwj_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `prfwj_languages`
--
ALTER TABLE `prfwj_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `prfwj_menu`
--
ALTER TABLE `prfwj_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=514;
--
-- AUTO_INCREMENT pour la table `prfwj_menu_types`
--
ALTER TABLE `prfwj_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `prfwj_messages`
--
ALTER TABLE `prfwj_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `prfwj_modules`
--
ALTER TABLE `prfwj_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT pour la table `prfwj_newsfeeds`
--
ALTER TABLE `prfwj_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `prfwj_overrider`
--
ALTER TABLE `prfwj_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT pour la table `prfwj_postinstall_messages`
--
ALTER TABLE `prfwj_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `prfwj_redirect_links`
--
ALTER TABLE `prfwj_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `prfwj_tags`
--
ALTER TABLE `prfwj_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `prfwj_template_styles`
--
ALTER TABLE `prfwj_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `prfwj_ucm_content`
--
ALTER TABLE `prfwj_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `prfwj_ucm_history`
--
ALTER TABLE `prfwj_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `prfwj_updates`
--
ALTER TABLE `prfwj_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT pour la table `prfwj_update_categories`
--
ALTER TABLE `prfwj_update_categories`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `prfwj_update_sites`
--
ALTER TABLE `prfwj_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `prfwj_usergroups`
--
ALTER TABLE `prfwj_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `prfwj_users`
--
ALTER TABLE `prfwj_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;
--
-- AUTO_INCREMENT pour la table `prfwj_user_keys`
--
ALTER TABLE `prfwj_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `prfwj_user_notes`
--
ALTER TABLE `prfwj_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `prfwj_viewlevels`
--
ALTER TABLE `prfwj_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `prfwj_weblinks`
--
ALTER TABLE `prfwj_weblinks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
