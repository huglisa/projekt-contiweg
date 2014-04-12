-- phpMyAdmin SQL Dump
-- version 3.3.7deb5build0.10.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 12. April 2014 um 00:46
-- Server Version: 5.1.49
-- PHP-Version: 5.3.3-1ubuntu9.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_assets`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_assets`;
CREATE TABLE IF NOT EXISTS `joem2_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=112 ;

--
-- Daten für Tabelle `joem2_assets`
--

INSERT INTO `joem2_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 187, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 134, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 135, 136, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 137, 138, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 139, 140, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 141, 142, 1, 'com_login', 'com_login', '{}'),
(13, 1, 143, 144, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 145, 146, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 147, 148, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 149, 150, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 151, 152, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 153, 154, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 155, 158, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 159, 160, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 161, 162, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 163, 164, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 165, 166, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 167, 170, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 171, 174, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 175, 176, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 117, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 156, 157, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 172, 173, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 168, 169, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 177, 178, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 1, 179, 180, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(35, 1, 181, 182, 1, 'com_tags', 'com_tags', '{"core.admin":[],"core.manage":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(36, 27, 19, 20, 3, 'com_content.article.1', 'Home', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(37, 27, 21, 22, 3, 'com_content.article.2', 'Unser Angebot', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(39, 27, 23, 24, 3, 'com_content.article.4', 'Schulprofil', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(40, 27, 25, 26, 3, 'com_content.article.5', 'Schulform', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(41, 27, 27, 28, 3, 'com_content.article.6', 'Schulgebäude', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(42, 27, 29, 30, 3, 'com_content.article.7', 'Pädagogische Grundsätze', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(43, 27, 31, 32, 3, 'com_content.article.8', 'Wir gestalten Schule', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(45, 27, 33, 34, 3, 'com_content.article.10', 'Was ist die WMS', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(46, 27, 35, 36, 3, 'com_content.article.11', 'Besonderheiten', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(47, 27, 37, 38, 3, 'com_content.article.12', 'Berufsorientierung', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(48, 27, 39, 40, 3, 'com_content.article.13', 'Stundentafel', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(49, 27, 41, 42, 3, 'com_content.article.14', 'Tagesbetreuung', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(50, 27, 43, 44, 3, 'com_content.article.15', 'Mittagsbetreuung', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(52, 27, 45, 46, 3, 'com_content.article.17', 'Unsere Oberstufe', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(53, 27, 47, 48, 3, 'com_content.article.18', 'Stundentafel', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(54, 27, 49, 50, 3, 'com_content.article.19', 'Zentrale Reifeprüfung', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(56, 27, 51, 52, 3, 'com_content.article.21', 'Kontakt', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(57, 27, 53, 54, 3, 'com_content.article.22', '_', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(58, 27, 55, 56, 3, 'com_content.article.23', 'Formulare und Downloads', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(59, 27, 57, 58, 3, 'com_content.article.24', 'Hausordnung', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(60, 27, 59, 60, 3, 'com_content.article.25', 'Maßnahmenkatalog', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(62, 27, 61, 62, 3, 'com_content.article.27', 'Projekte', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(64, 27, 63, 64, 3, 'com_content.article.29', 'Allgemeine Informationen', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(65, 27, 65, 66, 3, 'com_content.article.30', 'Buch des Monats', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(66, 27, 67, 68, 3, 'com_content.article.31', 'Öffnungszeiten', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(67, 27, 69, 70, 3, 'com_content.article.32', 'Aktuelles', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(69, 27, 71, 72, 3, 'com_content.article.34', 'Direktion', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(70, 27, 73, 74, 3, 'com_content.article.35', 'LehrerInnen', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(71, 27, 75, 76, 3, 'com_content.article.36', 'SchülerInnen', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(74, 27, 77, 78, 3, 'com_content.article.39', 'Psychologin', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(75, 27, 79, 80, 3, 'com_content.article.40', 'Schulärztin', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(76, 27, 81, 82, 3, 'com_content.article.41', 'BetreuungslehrerIn', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(78, 27, 83, 84, 3, 'com_content.article.43', 'BildungsberaterInnen', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(79, 27, 85, 86, 3, 'com_content.article.44', 'AbsolventInnen', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(81, 27, 87, 88, 3, 'com_content.article.46', 'SGA', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(82, 27, 89, 90, 3, 'com_content.article.47', 'Kooperationen', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(83, 27, 91, 92, 3, 'com_content.article.48', 'Links', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(84, 27, 93, 94, 3, 'com_content.article.49', 'Impressum', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(85, 1, 183, 184, 1, 'com_jce', 'jce', '{}'),
(86, 27, 95, 96, 3, 'com_content.article.50', 'Termine', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(88, 27, 97, 98, 3, 'com_content.article.52', 'Aktivitäten', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(89, 27, 99, 100, 3, 'com_content.article.53', 'Veranstaltungen', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(90, 27, 101, 102, 3, 'com_content.article.54', 'Awards', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(91, 27, 103, 104, 3, 'com_content.article.55', 'Buffet', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(92, 27, 105, 106, 3, 'com_content.article.56', 'Unterrichtszeiten', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(93, 27, 107, 108, 3, 'com_content.article.57', 'Elternverein', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(95, 27, 109, 110, 3, 'com_content.article.59', 'Registrieren', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(96, 27, 111, 112, 3, 'com_content.article.60', 'Sprechstunden', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(97, 1, 185, 186, 1, 'com_phocadownload', 'com_phocadownload', '{}'),
(98, 100, 119, 120, 3, 'com_content.article.61', 'Contiuni', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(99, 107, 131, 132, 3, 'com_content.article.62', 'Elektronisches Klassenbuch', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(100, 8, 118, 121, 2, 'com_content.category.8', 'Contiweg', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(103, 104, 123, 124, 3, 'com_content.article.64', 'Film Handy gut', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(104, 8, 122, 125, 2, 'com_content.category.10', 'Film Handy gut', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(105, 8, 126, 129, 2, 'com_content.category.11', 'Video Contiweg Nottingham', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(106, 105, 127, 128, 3, 'com_content.article.65', 'Video Contiweg Nottingham', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(107, 8, 130, 133, 2, 'com_content.category.12', 'Elektronisches Klassenbuch', '{"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(110, 27, 113, 114, 3, 'com_content.article.67', 'Schülerberichte', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(111, 27, 115, 116, 3, 'com_content.article.68', 'Archiv', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_associations`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_associations`;
CREATE TABLE IF NOT EXISTS `joem2_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_associations`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_banners`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_banners`;
CREATE TABLE IF NOT EXISTS `joem2_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `joem2_banners`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_banner_clients`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_banner_clients`;
CREATE TABLE IF NOT EXISTS `joem2_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `joem2_banner_clients`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_banner_tracks`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_banner_tracks`;
CREATE TABLE IF NOT EXISTS `joem2_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_banner_tracks`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_categories`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_categories`;
CREATE TABLE IF NOT EXISTS `joem2_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Daten für Tabelle `joem2_categories`
--

INSERT INTO `joem2_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 21, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 11, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 100, 1, 13, 14, 1, 'contiweg', 'com_content', 'Contiweg', 'contiweg', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 367, '2014-03-24 12:17:30', 367, '2014-03-24 12:37:49', 15, '*', 1),
(10, 104, 1, 15, 16, 1, 'film-handy-gut', 'com_content', 'Film Handy gut', 'film-handy-gut', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 367, '2014-03-25 10:09:46', 0, '0000-00-00 00:00:00', 18, '*', 1),
(11, 105, 1, 17, 18, 1, 'video-contiweg-nottingham', 'com_content', 'Video Contiweg Nottingham', 'video-contiweg-nottingham', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 367, '2014-03-25 10:13:50', 367, '2014-03-25 10:14:06', 16, '*', 1),
(12, 107, 1, 19, 20, 1, 'elektronisches-klassenbuch', 'com_content', 'Elektronisches Klassenbuch', 'elektronisches-klassenbuch', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 367, '2014-03-25 17:44:21', 0, '0000-00-00 00:00:00', 119, '*', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_contact_details`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_contact_details`;
CREATE TABLE IF NOT EXISTS `joem2_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `joem2_contact_details`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_content`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_content`;
CREATE TABLE IF NOT EXISTS `joem2_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- Daten für Tabelle `joem2_content`
--

INSERT INTO `joem2_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 36, 'Home', 'home', '<div class="alles"><a id="angebot" href="index.php/angebot"><span style="color: #000000; line-height: 100px;">Unser Angebot</span></a> <a id="aktuelles" href="index.php/aktuelles"><span style="color: #000000; line-height: 100px;">Aktuelles</span></a> <a id="erfolge" href="index.php/erfolge/projekte"><span style="color: #000000; line-height: 125px;">Erfolge</span></a> <a id="schulteam" href="index.php/schulteam/direktion"><span style="color: #000000; line-height: 100px;">Schulteam</span></a> <a id="schulpartner" href="index.php/schulpartner/sga"><span style="color: #000000; line-height: 125px;">Schulpartner</span></a> <a id="wsv" href="images/Bilder/WirsindVielfalt/WirsindVielfalt.ppsx"><span style="color: #000000; line-height: 100px;">Wir sind vielfalt</span></a> <a id="wueu" href="index.php/"><span style="color: #000000; line-height: 125px;">Wir über uns</span></a> <a id="eklabu" href="index.php?option=com_content&amp;view=article&amp;id=62:elektronischesklassenbuch&amp;catid=2:uncategorised&amp;Itemid=101"><span style="color: #000000;">Elektronisches Klassenbuch</span></a> <a id="simongasse" href="index.php"><span style="color: #000000; line-height: 80px;">Simonsgasse</span></a> <a id="bibliothek" href="index.php/bibliothek/allgemeine-informationen"><span style="color: #000000; line-height: 75px;">Bibliothek</span></a> <a id="contiuni" href="index.php?option=com_content&amp;view=article&amp;id=61:contiuni&amp;catid=2:uncategorised&amp;Itemid=101"><span style="color: #000000; line-height: 65px;">Conti Uni</span></a> <a id="service" href="index.php/service/kontakt"><span style="color: #000000; line-height: 75px;">Service</span></a></div>', '', 1, 2, '2013-12-05 07:28:41', 365, '', '2014-03-27 07:50:14', 367, 0, '0000-00-00 00:00:00', '2013-12-05 07:28:41', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"0","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"0","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 28, 48, '', '', 1, 5546, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 37, 'Unser Angebot', 'unser-angebot', '<div class="angebot_alles"><a id="angebot_allgemeineinfos" href="/index.php/angebot/allgemeine-infos/schulform">Allgemeine Infos</a> <a id="angebot_unterstufe" href="index.php/angebot/unterstufe/was-ist-die-wms">Unterstufe</a> <a id="angebot_oberstufe" href="index.php/angebot/oberstufe/unsere-oberstufe">Oberstufe</a></div>', '', 1, 2, '2013-12-05 07:38:53', 365, '', '2013-12-15 13:51:47', 367, 0, '0000-00-00 00:00:00', '2013-12-05 07:38:53', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 47, '', '', 1, 593, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 39, 'Schulprofil', 'schulprofil', '<p><span style="font-size: 14pt; color: #ff6600;">Beispieltext</span></p>\r\n<p>Auch gibt es niemanden, der den Schmerz an sich liebt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, in denen Mühen und Schmerz ihm große Freude bereiten können. Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen? Aber wer hat irgend ein Recht, einen Menschen zu tadeln, der die Entscheidung trifft, eine Freude zu genießen, die keine unangenehmen Folgen hat, oder einen, der Schmerz vermeidet, welcher keine daraus resultierende Freude nach sich zieht? Auch gibt es niemanden, der den Schmerz an sich liebt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, in denen Mühen und Schmerz ihm <em>große Freude bereite</em>n können. Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen? Aber wer hat irgend ein Recht, einen Menschen zu tadeln, der die Entscheidung trifft, eine Freude zu genießen, die keine unangenehmen Folgen hat, oder einen, der Schmerz vermeidet, welcher keine daraus resultierende Freude nach sich zieht? Auch gibt es niemanden, der den Schmerz an sich liebt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, in denen Mühen und Schmerz ihm große Freude bereiten können. Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen? Aber wer hat irgend ein Recht, einen Menschen zu tadeln, der die Entscheidung trifft, eine Freude zu genießen, die keine unangenehmen Folgen hat, oder einen, der Schmerz vermeidet, welcher keine daraus resultierende Freude nach sich zieht? Auch gibt es niemanden, der den Schmerz an sich liebt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, in denen Mühen und Schmerz ihm große Freude bereiten können. Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen? Aber wer hat irgend ein Recht, einen Menschen zu tadeln, der die Entscheidung trifft, eine Freude zu genießen, die keine unangenehmen Folgen hat, oder einen, der Schmerz vermeidet, welcher keine daraus resultierende Freude nach sich zieht? Auch gibt es niemanden, der den Schmerz an sich lie<span style="text-decoration: underline;">bt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, in denen Mühen und Schmerz ihm große Freude bereiten können. Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen? Aber wer hat irgend ein Recht, einen Menschen zu tadeln, der die Entscheidung trifft, eine Freude zu genießen, die keine unangenehmen Folgen hat, oder einen, der Schmerz vermeidet, welcher keine daraus resultierende Freude nach sich zieht? Auch gibt es niemanden,</span> der den Schmerz an sich liebt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, in denen Mühen und Schmerz ihm große Freude bereiten können. Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen? Aber wer hat irgend ein Recht, einen Menschen zu tadeln, der die Entscheidung trifft, eine Freude zu genießen, die keine unangenehmen Folgen hat, oder einen, der Schmerz vermeidet, welcher keine daraus resultierende Freude nach sich zieht? Auch gibt es niemanden, der den Schmerz an sich liebt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, in denen Mühen und Schmerz ihm große Freude bereiten können. Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen? Aber wer hat irgend ein Recht, einen Menschen zu tadeln, der die Entscheidung trifft, eine Freude zu genießen, die keine unangenehmen Folgen hat, oder einen, der Schmerz vermeidet, welcher keine daraus resultierende Freude nach sich zieht? Auch gibt es niemanden, der den Schmerz an sich liebt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, in denen Mühen und Schmerz ihm große Freude bereiten können. Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen? Aber wer hat irgend ein Recht, einen Menschen zu tadeln, der die Entscheidung trifft, eine Freude zu genießen, die keine unangenehmen Folgen hat, oder einen, der Schmerz vermeidet, welcher keine daraus resultierende Freude nach sich zieht? Auch gibt es niemanden, der den Schmerz an sich liebt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, i<strong>n denen Mühen und Schmerz ihm große Freude bereiten können. Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen? Aber wer hat irgend ein Recht, einen Menschen zu tadeln, der die Entscheidung trifft, eine Freude zu genießen, die keine unangenehmen Folgen hat, oder einen, der Schmerz vermeidet, welcher keine daraus resultierende Freude nach sich zieht? Auch gibt es niemanden, der den Schmerz an sich liebt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, in denen Mühen und Schmerz ihm große Freude bereiten können. Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen? Aber wer hat irgend ein Recht, einen Menschen zu tadeln, der die Entscheidung trifft, eine Freude zu genießen, die keine una</strong>ngenehmen Folgen hat, oder einen, der Schmerz vermeidet, welcher keine daraus resultierende Freude nach sich zieht? Auch gibt es niemanden, der den Schmerz an sich liebt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, in denen Mühen und Schmerz ihm große Freude bereiten können. Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen? Aber wer hat irgend ein Recht, einen Menschen zu tadeln, der die Entscheidung trifft, eine Freude zu genießen, die keine unangenehmen Folgen hat, oder einen, der Schmerz vermeidet, welcher keine daraus resultierende Freude nach sich zieht?Auch gibt es niemanden, der den Schmerz an sich liebt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, in denen Mühen und Schmerz ihm große Freude bereiten können. Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen?</p>', '', 1, 2, '2013-12-05 07:39:32', 365, '', '2013-12-15 13:23:55', 367, 0, '0000-00-00 00:00:00', '2013-12-05 07:39:32', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 46, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 40, 'Schulform', 'schulform', '<p><span style="line-height: 115%; font-family: ''Calibri'',''sans-serif'';"><a href="images/Bilder/Angebot/AllgemeineInfos/schulform1.jpg"><img src="images/Bilder/Angebot/AllgemeineInfos/schulform1.jpg" alt="schulform1" width="262" height="175" /></a></span><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;"> </span></p>\r\n<p><span style="font-family: arial,helvetica,sans-serif; font-size: 10pt;">Das Bundesgymnasium, Bundesrealgymnasium, WienerMittelSchule Contiweg 1 ist eine im Aufbau befindliche Schule. 2014/15 besuchen über 1000 Schülerinnen und Schüler in 43 Klassen und sechs Jahrgängen diese Schule. Seit dem Schuljahr 2012/13 werden 10 dislozierte Klassen in drei Jahrgängen am Standort Simonsgasse 23, 1220 Wien geführt.Die Schule ist eine AHS, die in der Unterstufe als Modellversuch WienerMittelSchule geführt wird, an die eine AHS-Oberstufe (Abschluss mit Matura) mit einem Gymnasium und einem Realgymnasium anschließt.<a href="images/Bilder/Angebot/AllgemeineInfos/sschulform2.jpg"><img style="float: right;" src="images/Bilder/Angebot/AllgemeineInfos/sschulform2.jpg" alt="sschulform2" width="247" height="175" /></a></span></p>\r\n<p><span style="font-family: arial,helvetica,sans-serif; font-size: 10pt;">Die AHS Contiweg ist eine allgemeinbildende höhere Schule mit den Zweigen Realgymnasium und Gymnasium, die einen Abschluss mit einer Matura anbietet.</span></p>\r\n<p><span style="font-family: arial,helvetica,sans-serif; font-size: 10pt;">Im gymnasialen Zweig werden verstärkt Sprachen angeboten (Spanisch als zweite lebende Fremdsprache ab der 3. Klasse, Latein ab der 5. Klasse), während im Realgymnasium der naturwissenschaftliche Bereich gefördert wird (Informatik in der 3. Klasse, Geometrisch Zeichnen in der 4. Klasse, technisches und textiles Werken in der 3. und 4. Klasse, eine zweite lebende Fremdsprache oder Latein ab der 5. Klasse).</span></p>\r\n<p><span style="font-family: arial,helvetica,sans-serif; font-size: 10pt;">Das Bildungs- und Ausbildungsangebot am Bundesgymnasium, Bundesrealgymnasium Contiweg orientiert sich in der Unterstufe und der Oberstufe an jener Allgemeinbildung, mit der sich junge Menschen in der Gegenwart, aber auch in der Zukunft in der gesellschaftlichen Wirklichkeit bewähren müssen.</span></p>\r\n<p><span style="font-family: arial,helvetica,sans-serif; font-size: 10pt;">In der Unterstufe führt der Contiweg den Schulversuch WienerMittelSchule.</span></p>\r\n<p><span style="font-family: arial,helvetica,sans-serif; font-size: 10pt;"></span></p>', '', 1, 2, '2013-12-05 07:42:12', 365, '', '2014-04-10 22:48:43', 371, 0, '0000-00-00 00:00:00', '2013-12-05 07:42:12', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 15, 45, '', '', 1, 408, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 41, 'Schulgebäude', 'schulgebaeude', '<p><span style="font-family: arial,helvetica,sans-serif; font-size: 10pt;"><span class="angebot_alles"></span>Die Schule ist mit <strong>36 Klassenräumen</strong>, <strong>Teilungsräumen</strong> und zahlreichen <strong>Sonderunterrichtsräumen</strong> ausgestattet:</span><br /><br /><span style="font-family: arial,helvetica,sans-serif; font-size: 10pt;">2 Musiksäle, 2 Säle für Bildnerische Erziehung, je 1 Saal für Technisches und Textiles Werken, 2 EDV-Säle, 1 Chemiesaal, 1 Physiksaal, 1 Biologiesaal und 1 kombinierter Saal für Biologie und Physik sowie Laptopklassen. Daneben gibt es eine Schulbibliothek, Bereiche für die Nachmittagsbetreuung, eine Kantine, sowie 3 Turnsäle und eine Außensportanlage. Im großzügigen Innenhof befinden sich Freiflächen mit Ruhezonen, ein „Restaurantbereich" und eine Bühne mit Zuschauerplätzen. Das Atrium und der Festsaal dienen ebenfalls als Veranstaltungsraum.</span></p>\r\n<p style="margin: 0cm 0cm 6pt; line-height: 115%;"><a href="images/Bilder/Angebot/AllgemeineInfos/schuelgebaeude1.jpg"><img src="images/Bilder/Angebot/AllgemeineInfos/schuelgebaeude1.jpg" alt="schuelgebaeude1" width="265" height="175" /></a><span style="font-size: 11pt; line-height: 115%; font-family: ''Calibri'',''sans-serif'';"><a href="images/Bilder/Angebot/AllgemeineInfos/schuelgebaeude2.jpg"><img style="float: right;" src="images/Bilder/Angebot/AllgemeineInfos/schuelgebaeude2.jpg" alt="schuelgebaeude2" width="266" height="175" /></a></span></p>\r\n<p style="margin: 0cm 0cm 6pt; line-height: 115%;">&nbsp;</p>', '', 1, 2, '2013-12-05 07:42:23', 365, '', '2014-04-11 20:24:50', 371, 0, '0000-00-00 00:00:00', '2013-12-05 07:42:23', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 17, 44, '', '', 1, 190, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 42, 'Pädagogische Grundsätze', 'paedagogische-grundsaetze', '<p><span style="font-size: 10pt;"><span style="font-family: arial,helvetica,sans-serif;">Das BG/BRG Wien 22, Contiweg ist eine <strong>Allgemeinbildende Höhere Schule.</strong> Das Bildungs- und Ausbildungsangebot orientiert sich daher an jener Allgemeinbildung, mit der sich jun</span><span style="font-family: arial,helvetica,sans-serif;">ge Menschen in der Gegenwart, aber auch in der Zukunft in der gesellschaftlichen Wirklichkeit bewähren müssen.</span></span></p>\r\n<ul style="list-style-type: disc;">\r\n<li><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">breit gefächerte <strong>Grundkompetenzen&nbsp;</strong></span></li>\r\n<li><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">die Fähigkeit, sich <strong>Wissen</strong> selbständig anzueignen</span></li>\r\n<li><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">die Fähigkeit und Bereitschaft zu <strong>lebensbegleitender Weiter- und Fortbildung</strong></span></li>\r\n<li><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">aktives Erleben von <strong>Kunst</strong> und <strong>Kultur</strong></span></li>\r\n<li><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">die Fähigkeit, <strong>Zusammenhänge</strong> in Wirtschaft und Politik zu erkennen sowie <strong>kritisch zu hinterfragen</strong></span></li>\r\n<li><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">Zeit für <strong>Persönlichkeitsentwicklung</strong></span></li>\r\n<li><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;"><strong>Individualisierung im Unterricht </strong>als pädagogisches Prinzip der WMS um auf die Bedürfnisse der Schüler/innen einzugehen</span></li>\r\n</ul>\r\n<p><span style="font-size: 11pt; font-family: ''Calibri'',''sans-serif'';"><a href="images/Bilder/Angebot/AllgemeineInfos/paedagogischegrundsaetze1.jpg"><img src="images/Bilder/Angebot/AllgemeineInfos/paedagogischegrundsaetze1.jpg" alt="paedagogischegrundsaetze1" width="240" height="155" /></a></span><span style="font-size: 11pt; font-family: ''Calibri'',''sans-serif'';"><a href="images/Bilder/Angebot/AllgemeineInfos/paedagogischegrundsaetze2.jpg"><img style="float: right;" src="images/Bilder/Angebot/AllgemeineInfos/paedagogischegrundsaetze2.jpg" alt="paedagogischegrundsaetze2" width="240" height="155" /></a></span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '', 1, 2, '2013-12-05 07:42:36', 365, '', '2014-04-11 20:08:28', 371, 0, '0000-00-00 00:00:00', '2013-12-05 07:42:36', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 17, 43, '', '', 1, 162, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 43, 'Wir gestalten Schule', 'wir-gestalten-schule', '<p><a href="images/Bilder/Angebot/AllgemeineInfos/wirgestaltenschule1.png"><img src="images/Bilder/Angebot/AllgemeineInfos/wirgestaltenschule1.png" alt="wirgestaltenschule1" width="240" height="180" /></a></p>\r\n<p><strong><span style="font-size: 12pt;">Wir gestalten eine Schule</span></strong></p>\r\n<ul style="list-style-type: disc;">\r\n<li><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">in der die Schülerinnen und Schüler gemäß ihrer <strong>individuellen Leistungspotenziale</strong> und ihres <strong>persönlichen Leistungswillens gefördert und gefordert</strong> werden – mit Hilfe von Individualisierungsmaßnahmen, Kurssystem, Teamteaching.</span></li>\r\n<li><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">in der eine <strong>Auseinandersetzung mit methodisch-didaktischen Unterrichtsformen</strong> stattfindet, z.B. Projektunterricht, fächerübergreifender Unterricht, Freiarbeit, themenzentrierter Unterricht, offene Lernformen usw.</span></li>\r\n<li><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">in der Kinder ihren <strong>Talenten</strong> nach <strong>individuell gefördert</strong> werden.</span></li>\r\n<li><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">in der die Chance genützt wird, eine <strong>interessante</strong> und den Bedürfnissen der Schüler/innen und Lehrer/innen angepasste <strong>Oberstufe</strong> zu entwickeln.</span></li>\r\n<li><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">in der die <strong>Vermittlung von Schlüsselqualifikationen und Kompetenzen</strong> Priorität hat.</span></li>\r\n<li><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">in der die <strong>Oberstufe an die Ziele der WMS - Unterstufe anschließt</strong> und die individuellen Begabungen der Schüler/innen fördert.</span><a href="images/Bilder/Angebot/AllgemeineInfos/wirgestaltenschule2.jpg"><img style="float: right;" src="images/Bilder/Angebot/AllgemeineInfos/wirgestaltenschule2.jpg" alt="wirgestaltenschule2" width="240" height="180" /></a></li>\r\n<li><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">in der die Oberstufe die Schülerinnen und <strong>Schüler optimal auf die zentrale Reifeprüfung vorbereitet. </strong></span></li>\r\n<li><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">in der <strong>Lehrer/innen </strong>gerne arbeiten, weil ihre Arbeit eine <strong>spannende Herausforderung</strong> darstellt und sie ausreichend Unterstützung erhalten.</span></li>\r\n<li><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">in der <strong>Eltern stolz auf die Leistungen ihrer Kinder</strong> sind</span></li>\r\n<li><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">in die <strong>Kinder</strong><strong>gerne gehen</strong>, weil hier wertschätzend, respektvoll und freundlich gearbeitet wird und sie bei ihren Lehrer/innen die Unterstützung finden, die sie brauchen.</span></li>\r\n<li><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">in der <strong>Lehrerinnen verschiedener Schularten</strong> gleichberechtigt und verantwortungsvoll miteinander an einem gemeinsamen Ziel arbeiten.</span></li>\r\n<li><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">in der alle <strong>Schulpartner/innen offen miteinander kommunizieren</strong>.</span></li>\r\n<li><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">in der ein <strong>aktives Miteinander</strong>, <strong>gegenseitiger Respekt </strong>und <strong>gegenseitige Wertschätzung</strong> die tragenden Säulen der Schulpartnerschaft sind.</span></li>\r\n<li></li>\r\n<li></li>\r\n<li></li>\r\n<li></li>\r\n<li></li>\r\n<li></li>\r\n<li></li>\r\n<li><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;"></span></li>\r\n</ul>', '', 1, 2, '2013-12-05 07:42:47', 365, '', '2014-04-10 23:08:38', 371, 0, '0000-00-00 00:00:00', '2013-12-05 07:42:47', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 42, '', '', 1, 150, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 45, 'Was ist die WMS', 'was-ist-die-wms', '<p><a href="images/Bilder/Angebot/Unterstufe/wasistdiewms1.png"><img style="float: left;" src="images/Bilder/Angebot/Unterstufe/wasistdiewms1.png" alt="wasistdiewms1" width="222" height="166" /></a><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">Die „<strong>WienerMittel<em>Schule</em>“</strong> ist als Modellversuch Teil der österreichweiten Neuen Mittel Schule – der <strong>gemeinsamen Schule aller 10- bis 14jährigen Kinder.</strong></span></p>\r\n<p><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">Die für den weiteren Bildungsweg „vorentscheidende“ Schulwahl im Alter von zehn Jahren wird mit dem Angebot der WienerMittel<em>Schule</em> erleichtert. Die Begabungen der Kinder haben in der WienerMittel<em>Schule</em> vier Jahre Zeit sich zu entfalten. Die Volksschulnoten selbst sind kein Aufnahmekriterium in die WienerMittel<em>Schule</em>.</span></p>\r\n<p><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">Das pädagogische Grundkonzept der „WienerMittel<em>Schule</em>“ definiert sie als <strong>„Leistungsschule“</strong>, als <strong>„AHS+“</strong>. Ziel ist es, Schülerinnen und Schüler ihren Begabungen und Talenten gemäß zu fördern und zu fordern.<a href="images/Bilder/Angebot/Unterstufe/wasistdiewms2.png"><img style="float: right;" src="images/Bilder/Angebot/Unterstufe/wasistdiewms2.png" alt="wasistdiewms2" width="223" height="168" /></a></span></p>\r\n<p><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;"><strong>Die Ziele der Unterstufe der AHS/WMS Contiweg</strong></span></p>\r\n<p><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;"><strong>Ziel der Unterstufe ist es</strong>,</span></p>\r\n<p><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">… den Schülerinnen und Schülern ein <strong>fundiertes Grundwissen</strong> zu vermitteln</span></p>\r\n<p><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">… die Schülerinnen und Schüler ihren <strong>Anlagen</strong> und <strong>Begabungen</strong> gemäß zu <strong>fördern</strong>, zu <strong>fordern </strong> und zu <strong>beraten</strong></span></p>\r\n<p><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">… <strong>Kompetenzen</strong>, die vom Arbeitsmarkt gefordert werden, zu vermitteln (Teamfähigkeit, soziale Kompetenzen)</span></p>\r\n<p><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">… <strong>begabte</strong> <strong>Schülerinnen und Schüler</strong> zu <strong>fördern</strong>, unabhängig von ihrer sozialen Ausgangssituation</span></p>\r\n<p><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">… die Schülerinnen und Schüler dabei zu unterstützen, ihre ganz persönlichen <strong>Stärken zu finden</strong></span></p>\r\n<p><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">… <strong>Stärken</strong> zu <strong>stärken</strong> und <strong>Schwächen</strong> zu <strong>schwächen</strong></span></p>\r\n<p><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">… Schülerinnen und Schüler dabei zu <strong>unterstützen</strong>, ein erfülltes <strong>Berufsleben</strong> führen zu können. Deshalb kommt der <strong>Berufsorientierung</strong> am Contiweg auch ein ganz besonderer Stellenwert zu</span></p>', '', 1, 2, '2013-12-05 07:43:29', 365, '', '2014-04-10 23:11:30', 371, 371, '2014-04-10 23:11:30', '2013-12-05 07:43:29', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 41, '', '', 1, 269, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 46, 'Besonderheiten', 'besonderheiten', '<pre><span style="font-size: 14pt; font-family: arial,helvetica,sans-serif;">Seite in Arbeit </span><br /><span style="font-size: 14pt; font-family: arial,helvetica,sans-serif;">Informationen folgen</span><br /><span style="font-size: 14pt; font-family: arial,helvetica,sans-serif;">Wir bitten um Verständnis</span></pre>', '', 1, 2, '2013-12-05 07:43:39', 365, '', '2014-04-10 22:39:08', 371, 0, '0000-00-00 00:00:00', '2013-12-05 07:43:39', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 40, '', '', 1, 154, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 47, 'Berufsorientierung', 'berufsorientierung', '<p style="margin-bottom: 0.0001pt;"><span style="font-size: 12pt;">In den 3. und 4. Klassen werden die <strong>Ziele der Berufsorientierung</strong> ganz intensiv umgesetzt.</span></p>\r\n<p style="margin-bottom: 0.0001pt;"><span style="font-size: 12pt;"><a class="wf_file" href="images/Bilder/Angebot/Unterstufe/KONZEPT270214.ppsx" target="_blank"><span class="wf_file_text">Mehr dazu lesen …..</span></a></span></p>\r\n<hr />\r\n<p><span style="font-size: 12pt;">Elterninformation zum Thema Berufsorientierung: </span></p>\r\n<p><span style="font-size: 12pt;"><a class="wf_file" href="images/Bilder/Angebot/Unterstufe/BO-Elterninfos%20Ueberblickliste_27__02_14.pdf"><span class="wf_file_text">Literatur und Linkliste hier klicken</span></a></span></p>\r\n<p><span style="font-size: 12pt;"><a class="wf_file" href="images/Bilder/Angebot/Unterstufe/Impressionen%20BO%203%20KL.pdf"><span class="wf_file_text">Impressionen zur Berufsorientierung 3. Klassen</span></a></span></p>\r\n<p><span style="font-size: 12pt;"><a class="wf_file" href="images/Bilder/Angebot/Unterstufe/Impressionen%20BO%204%20Kl.pdf"><span class="wf_file_text">Impressionen zur Berufsorientierung 4. Klassen</span></a></span></p>', '', 1, 2, '2013-12-05 07:43:50', 365, '', '2014-04-08 20:24:28', 371, 0, '0000-00-00 00:00:00', '2013-12-05 07:43:50', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 19, 39, '', '', 1, 175, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 48, 'Stundentafel', 'stundentafel', '<p style="margin-bottom: 6pt; line-height: normal;"><a href="images/Bilder/Angebot/Unterstufe/stundentafel1.png"><img style="float: left;" src="images/Bilder/Angebot/Unterstufe/stundentafel1.png" alt="stundentafel1" width="263" height="175" /></a>Die AHS Contiweg ist eine <strong>allgemeinbildende höhere Schule</strong> mit den Zweigen <strong>Realgymnasium</strong> und <strong>Gymnasium</strong>, die einen Abschluss mit einer <strong>Matura </strong>anbietet.</p>\r\n<p style="margin-bottom: 6pt; line-height: normal;">Im Lauf der zweiten Klasse müssen sich die Schüler/innen entscheiden, ob sie den sprachlichen Zweig („Gymnasium“) oder den naturwissenschaftlichen („Realgymnasium“) wählen.</p>\r\n<p style="margin-bottom: 6pt; line-height: normal;">Im <strong>gymnasialen Zweig</strong> werden verstärkt <strong>Sprachen</strong> angeboten (Spanisch als zweite lebende Fremdsprache ab der 3. Klasse, Latein ab der 5. Klasse), während im <strong>Realgymnasium</strong> der <strong>naturwissenschaftliche Bereich</strong> gefördert wird (Geometrisch Zeichnen in der 3. und 4. Klasse, technisches und textiles Werke auch in der 3. und 4. Klasse, eine zweite lebende Fremdsprache oder Latein ab der 5. Klasse).</p>\r\n<p style="margin-bottom: 6pt; line-height: normal;"><a class="wf_file" href="images/Bilder/Angebot/Unterstufe/Stundentafel_naturwissenschaftlicher_Schwerpunkt_2014.pdf"><span class="wf_file_text">Stundentafel naturwissenschaftlicher Schwerpunkt Unterstufe</span></a></p>\r\n<p style="margin-bottom: 6pt; line-height: normal;"><a class="wf_file" href="images/Bilder/Angebot/Unterstufe/Stundentafel_sprachlicher_Schwerpunkt_2014.pdf"><span class="wf_file_text">Stundentafel sprachlicher Schwerpunkt Unterstufe</span></a></p>\r\n<p style="margin-bottom: 6pt; line-height: normal;"><a class="wf_file" href="images/Bilder/Angebot/Unterstufe/Wahlmoeglichkeiten_nach_der_2._KLasse.pdf"><span class="wf_file_text">Information zu Wahlmöglichkeiten ab der 3. Klasse</span></a></p>', '', 1, 2, '2013-12-05 07:44:00', 365, '', '2014-03-19 17:18:53', 367, 0, '0000-00-00 00:00:00', '2013-12-05 07:44:00', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 38, '', '', 1, 164, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `joem2_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(14, 49, 'Tagesbetreuung', 'tagesbetreuung', '<p style="text-align: center;" align="center"><span style="font-size: 12pt; font-family: ''Calibri'',''sans-serif''; color: #1f497d;">Leitung: Profn. Nikoline Kaupe</span></p>\r\n<p style="text-align: center;" align="center"><span style="font-size: 12pt; font-family: ''Calibri'',''sans-serif''; color: #1f497d;">mailto: <a href="mailto:nikoline.kaupe@contiweg.at">nikoline.kaupe@contiweg.at</a></span></p>\r\n<p style="margin: 6pt 0cm;"><strong><span style="font-size: 12pt; font-family: ''Calibri'',''sans-serif''; color: #1f497d;">Zeitrahmen</span></strong></p>\r\n<p style="margin-bottom: 6pt;"><span style="font-size: 11pt; font-family: ''Calibri'',''sans-serif'';">Die Tagesbetreuung (TABE) ist für die Schülerinnen und Schüler der Unterstufe vorgesehen und wird von Montag bis Freitag ab Unterrichtsschluss bis 17:10 angeboten.</span></p>\r\n<p style="margin: 6pt 0cm;"><strong><span style="font-size: 12pt; font-family: ''Calibri'',''sans-serif''; color: #1f497d;">flexible Nachmittagsgestaltung - Stationenmodell</span></strong></p>\r\n<p style="margin-bottom: 6pt;"><span style="font-size: 11pt; font-family: ''Calibri'',''sans-serif'';">Unsere TABE basiert auf einem Stationenmodell, wodurch den SchülerInnen eine weitgehend individuelle Gestaltung der Nachmittage in klassen- und schulstufenübergreifenden sich selbst zusammenfindenden Kleingruppen (Freundschaften) ermöglicht wird. Bestimmte Fixpunkte (Mittagessen, Lernzeiten) sind vorgegeben, die restliche Zeit wird von den SchülerInnen selbst – mit Unterstützung der betreuenden LehrerInnen – eingeteilt. Den SchülerInnen wird so ermöglicht, die Verteilung von Freizeit und Lernphasen an ihre persönlichen Bedürfnisse anzupassen.</span></p>\r\n<p style="margin: 6pt 0cm;"><strong><span style="font-size: 12pt; font-family: ''Calibri'',''sans-serif''; color: #1f497d;">Aufsicht in der TABE</span></strong></p>\r\n<p style="margin: 6pt 0cm;"><span style="font-size: 11pt; font-family: ''Calibri'',''sans-serif'';">Die SchülerInnen sind verpflichtet, sich täglich in den Räumen der TABE bei den LehrerInnen anzumelden. Bei der Anmeldung geben die SchülerInnen auch bekannt, welche Hausaufgaben sie zu machen haben.</span></p>\r\n<p style="margin-bottom: 6pt;"><span style="font-size: 11pt; font-family: ''Calibri'',''sans-serif'';">Die Abmeldung vor dem Verlassen der Tagesbetreuung erfolgt für alle SchülerInnen im TABE-Hauptraum. Vorzeitiges Verlassen bzw. Fernbleiben von der TABE ist ausnahmslos nur mit schriftlicher Entschuldigung durch die Erziehungsberechtigten möglich.</span></p>\r\n<p style="margin: 6pt 0cm;"><strong><span style="font-size: 12pt; font-family: ''Calibri'',''sans-serif''; color: #1f497d;">Mittagessen</span></strong></p>\r\n<p style="margin-bottom: 6pt;"><span style="font-size: 11pt; font-family: ''Calibri'',''sans-serif'';">Das Mittagessen wird von unserem Schulbuffet ausgegeben. Die SchülerInnen nehmen es gestaffelt ein (12:50 bzw. 13:45) und sorgen auch selbst dafür, dass die Tabletts weggeräumt und die Tische ordentlich verlassen werden.</span></p>\r\n<p style="margin: 6pt 0cm;"><strong><span style="font-size: 12pt; font-family: ''Calibri'',''sans-serif''; color: #1f497d;">Lernzeiten</span></strong></p>\r\n<p><span style="font-size: 11pt; font-family: ''Calibri'',''sans-serif'';">Die betreuten Lernzeiten finden täglich von 13:45 bis 15:30 statt. Die SchülerInnen wählen ihre Lernzeit selbst, sollten aber spätestens um 14:40 mit den Hausübungen beginnen. Der Schwerpunkt der Lernzeit liegt auf der Erledigung der Hausübung, aber auch in der Vorbereitung auf Schularbeiten, Tests und Prüfungen sowie der Wiederholung des Gelernten, wobei der/die anwesende LehrerIn bei Bedarf Hilfestellungen gibt. </span></p>\r\n<p><span style="font-size: 11pt; font-family: ''Calibri'',''sans-serif'';">Dabei werden die Hausübungen allerdings nicht auf inhaltliche Richtigkeit korrigiert. Unser Ziel ist, die Selbständigkeit und Eigenverantwortung der SchülerInnen beim Hausaufgabenmachen und Lernen zu fördern und möglichst stressfreie Lernzeiten zu ermöglichen. </span></p>\r\n<p><span style="font-size: 11pt; font-family: ''Calibri'',''sans-serif'';">Die BetreuerInnen geben den SchülerInnen Hilfestellungen und regen sie zu selbständigem Arbeiten an. </span></p>\r\n<p style="margin: 6pt 0cm;"><strong><span style="font-size: 12pt; font-family: ''Calibri'',''sans-serif''; color: #1f497d;">Freizeit</span></strong></p>\r\n<p style="margin-bottom: 6pt;"><span style="font-size: 11pt; font-family: ''Calibri'',''sans-serif'';">Der Rest des Nachmittages kann für Spiel, Bewegung, Entspannung, Plaudern, Lesen, Kreativität,… genutzt werden.</span></p>\r\n<p style="margin-bottom: 6pt;"><span style="font-size: 11pt; font-family: ''Calibri'',''sans-serif'';">Zusätzlich bieten wir an bestimmten Tagen Workshops an, zu denen sich die SchülerInnen anmelden können.</span></p>\r\n<p style="margin-bottom: 6pt;"><span style="font-size: 11pt; font-family: ''Calibri'',''sans-serif'';">Je nach Belegung steht uns auch der Turnsaal für Bewegungsspiele zur Verfügung. Ebenso dürfen die SchülerInnen zu bestimmten Zeiten die Bibliothek aufsuchen.</span></p>\r\n<p style="margin-bottom: 6pt;"><span style="font-size: 11pt; font-family: ''Calibri'',''sans-serif'';">In der Freizeit unterstützen wir die SchülerInnen dabei neue Freunde zu finden und ihre Kooperationsfähigkeit zu steigern.</span></p>\r\n<p style="margin-bottom: 6pt;"><strong><span style="font-size: 12pt; font-family: ''Calibri'',''sans-serif''; color: #1f497d;">Allgemeines</span></strong></p>\r\n<p style="margin-bottom: 6pt;"><span style="font-size: 11pt; font-family: ''Calibri'',''sans-serif'';">Die Anmeldung zur Tagesbetreuung findet am Beginn des Schuljahres statt. Dafür werden Formulare ausgegeben, in die die Anzahl der Betreuungstage und die Dauer des Besuchs (vorgegebene Entlassungszeiten immer zum Ende der Schulstunden) einzutragen sind. Spätere Anmeldungen sind nur möglich, solange es noch freie Plätze gibt.</span></p>\r\n<p style="margin-bottom: 6pt;"><span style="font-size: 11pt; font-family: ''Calibri'',''sans-serif'';">Eine Abmeldung von der Tagesbetreuung ist nur am Ende des ersten Semesters möglich. Dazu muss bis spätestens 3 Wochen vor Semesterende eine schriftliche Abmeldung erfolgen.</span></p>\r\n<p style="margin-bottom: 6pt;"><span style="font-size: 11pt; font-family: ''Calibri'',''sans-serif'';"><a href="images/Bilder/Angebot/Unterstufe/tagesbetreuung1.jpg"><img src="images/Bilder/Angebot/Unterstufe/tagesbetreuung1.jpg" alt="tagesbetreuung1" width="133" height="100" /></a><a href="images/Bilder/Angebot/Unterstufe/tagesbetreuung2.jpg"><img src="images/Bilder/Angebot/Unterstufe/tagesbetreuung2.jpg" alt="tagesbetreuung2" width="133" height="100" /></a><a href="images/Bilder/Angebot/Unterstufe/tagesbetreuung3.jpg"><img src="images/Bilder/Angebot/Unterstufe/tagesbetreuung3.jpg" alt="tagesbetreuung3" width="133" height="100" /></a><a href="images/Bilder/Angebot/Unterstufe/tagesbetreuung4.jpg"><img src="images/Bilder/Angebot/Unterstufe/tagesbetreuung4.jpg" alt="tagesbetreuung4" width="134" height="100" /></a></span></p>\r\n<p style="margin: 18pt 0cm 6pt;"><strong><span style="font-size: 14pt; font-family: ''Calibri'',''sans-serif''; color: #1f497d;">Grundidee - Ziele</span></strong></p>\r\n<p class="Calibri11" style="margin-bottom: 6pt;">Unsere TABE basiert auf einem Stationenmodell mit folgenden Zielen:<a href="images/Bilder/Angebot/Unterstufe/tagesbetreuung5.jpg"><img style="float: right;" src="images/Bilder/Angebot/Unterstufe/tagesbetreuung5.jpg" alt="tagesbetreuung5" width="167" height="125" /></a></p>\r\n<ul>\r\n<li>Eingehen auf die Individualität der SchülerInnen durch flexible Gestaltung des Nachmittags</li>\r\n<li>Förderung der Bildung neuer klassen- und schulstufenübergreifender Freundschaften</li>\r\n<li>Steigerung der Kooperationsfähigkeit\r\n<ul>\r\n<li>Förderung eines respektvollen und toleranten Umganges miteinander</li>\r\n<li>Angebot einer sinnvollen Freizeitgestaltung (klassen- und schulstufenübergreifend) nach Interessen</li>\r\n<li>Anregung zu selbständigem Arbeiten und Förderung der Eigenverantwortlichkeit</li>\r\n<li>Lernen selbständig zu lernen\r\n<ul>\r\n<li>Hausübung machen <span style="font-family: ''Wingdings 3'';">"</span> Unterstützung erfahren wenn notwendig</li>\r\n<li>Mittagessen</li>\r\n<li>TABE - Räume (Brettspiele, Erholen…)</li>\r\n<li>Lernzeitraum\r\n<ul>\r\n<li>im TABE-Hauptraum:\r\n<ul>\r\n<li>„Kuschelecke“ - Erholungsecke</li>\r\n<li>Bücher, Comics</li>\r\n<li>Gesellschaftsspiele</li>\r\n<li>Tische zum Malen, Basteln, Papierfalten, Jausnen…</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<p class="Calibri11">Die Zielgruppe der Tagesbetreuung sind SchülerInnen der Unterstufe, wobei sie hauptsächlich von SchülerInnen der 1. Klassen angenommen wird, in abgeschwächter Form von den SchülerInnen der 2. Klassen und nur mehr vereinzelt von SchülerInnen der 3. Klasse.</p>\r\n<p style="margin: 18pt 0cm 6pt;"><strong><span style="font-size: 14pt; font-family: ''Calibri'',''sans-serif''; color: #1f497d;">Organisation/ Ablauf</span></strong></p>\r\n<p class="Calibri11" style="margin: 6pt 0cm;"><strong><span style="font-size: 12pt; color: #1f497d;">Nachmittag</span></strong></p>\r\n<p class="Calibri11">Die SchülerInnen melden sich sobald sie in den TABE-Bereich kommen an.</p>\r\n<p class="Calibri11">Sie geben gleichzeitig bekannt, welche Hausübungen sie haben bzw. ob sie essen gehen. Diese Hausübungslisten werden - nachdem die Liste vollständig ist - an die LernzeitbetreuerInnen weitergegeben.</p>\r\n<p class="Calibri11" style="margin-bottom: 6pt;">Danach können sich die SchülerInnen auf einzelne "Stationen" aufteilen:</p>\r\n<p class="Calibri11" style="margin-bottom: 6pt;">Spätestens am Beginn der 8. Stunde werden die SchülerInnen aufgefordert, ihre Hausaufgaben zu machen.</p>\r\n<p class="Calibri11" style="margin-bottom: 6pt;">An bestimmten Tagen finden in der 8. bzw. 9. Stunde Workshops statt.</p>\r\n<p class="Calibri11" style="margin-bottom: 6pt;">Finden unverbindliche Übungen bzw. Nachmittagsunterricht statt, melden sich die SchülerInnen in der TABE ab, ebenso wenn sie nach Hause gehen oder wenn sie abgeholt werden. Die Entlassung erfolgt nach den am Schulbeginn angegebenen Zeiten (jeweils zum Ende der Schulstunden: 13:45/14:40/15:30/16:20/17:10) bzw. nach schriftlicher Bestätigung der Eltern auch zu abweichenden Zeiten. Eine persönliche Abholung durch Eltern oder Großeltern ist jederzeit möglich.</p>\r\n<p style="margin: 18pt 0cm 6pt;"><strong><span style="font-size: 14pt; font-family: ''Calibri'',''sans-serif''; color: #1f497d;">Was bieten wir an?</span></strong></p>\r\n<p class="Calibri11" style="margin: 6pt 0cm;"><strong><span style="font-size: 12pt; color: #1f497d;">Lernzeit<a href="images/Bilder/Angebot/Unterstufe/tagesbetreuung6.jpg"><img style="float: right;" src="images/Bilder/Angebot/Unterstufe/tagesbetreuung6.jpg" alt="tagesbetreuung6" width="167" height="125" /></a></span></strong></p>\r\n<p class="Calibri11" style="margin-bottom: 6pt;">In der Lernzeit werden den SchülerInnen Zeit und Raum gegeben um ihre <strong>Hausübungen</strong> möglichst <strong>selbständig</strong> zu <strong>erledigen</strong> und sich auf Schularbeiten, Test und Prüfungen – auch gemeinsam mit SchulkollegInnen - vorzubereiten. Nach Bedarf werden sie von den anwesenden LehrerInnen unterstützt. Die Lernzeit kann allerdings keine „Einzelnachhilfe“ darstellen, sondern vielmehr Unterstützung und Anleitung zum selbständigen Lernen bieten. Genauso ist es nicht vorgesehen, sämtliche Hausübungen auf die komplette Richtigkeit zu überprüfen - dies wird von uns auch im Sinne einer unverfälschten Rückmeldung (Was können die SchülerInnen tatsächlich?) an die VormittagslehrerInnen nicht angestrebt. Es wird allerdings überprüft, ob die Hausübungen - entsprechend den Angaben der SchülerInnen - gemacht wurden und auf Fehler, die bei dieser kurzen Überprüfung auffallen, hingewiesen.<a href="images/Bilder/Angebot/Unterstufe/tagesbetreuung7.jpg"><img style="float: right;" src="images/Bilder/Angebot/Unterstufe/tagesbetreuung7.jpg" alt="tagesbetreuung7" width="167" height="125" /></a></p>\r\n<p class="Calibri11" style="margin-bottom: 6pt;">Für die Zukunft wird angestrebt eine sog. "Lernwerkstatt" einzurichten und anzubieten, in der den Kindern die Möglichkeit gegeben wird selbständig mit Materialien des Vormittagsunterrichts zu üben bzw. sich auf Schularbeiten vorzubereiten (Materialien mit Selbstkontrolle).</p>\r\n<p class="Calibri11">Haben SchülerInnen ihre Arbeitsunterlagen nicht mit oder in der Klasse vergessen, werden sie dazu angehalten, die Hausübung auf einen Zettel zu machen, es wird nur in seltenen Ausnahmefällen gestattet, die Sachen zu holen (dafür muss der Schüler/die Schülerin durch eine/en LehrerIn im Schulhaus begleitet werden).<a href="images/Bilder/Angebot/Unterstufe/tagesbetreuung8.jpg"><img style="float: right;" src="images/Bilder/Angebot/Unterstufe/tagesbetreuung8.jpg" alt="tagesbetreuung8" width="167" height="125" /></a></p>\r\n<p class="Calibri11" style="margin: 6pt 0cm;"><strong><span style="font-size: 12pt; color: #1f497d;">Verpflegung</span></strong></p>\r\n<p class="Calibri11">Das Mittagessen wird vorwiegend von den SchülerInnen im Speisesaal eingenommen</p>\r\n<p class="Calibri11" style="margin-bottom: 6pt;">Zusätzlich besteht auch die Möglichkeit sich "Snacks" am Buffet zu kaufen, diese werden dann im TABE-Hauptraum an den Tischen eingenommen bzw. teilweise auf den Bänken im Gang.</p>\r\n<p class="Calibri11">Genauso ist es möglich selbst Mitgebrachtes im TABE-Hauptraum an den Tischen zu verzehren.</p>\r\n<h2>Freizeitgestaltung</h2>\r\n<p><span style="font-size: 11pt; font-family: ''Calibri'',''sans-serif'';">Im Bereich der Freizeit gibt es verschiedene Möglichkeiten für die SchülerInnen, diese zu gestalten. Zum einen in Form von „freier Gestaltung“ und zum anderen durch das Angebot von „Workshops“, sowie gemeinsamen Aktionen.</span></p>\r\n<p class="Calibri11" style="margin: 6pt 0cm;"><strong><span style="font-size: 12pt; color: #1f497d;">freie Gestaltung</span></strong></p>\r\n<p style="margin-bottom: 6pt;"><span style="font-size: 11pt; font-family: ''Calibri'',''sans-serif'';">Im Freizeitbereich stehen zur Verfügung:</span></p>\r\n<ul>\r\n<li>im TABE-Hauptraum:<a href="images/Bilder/Angebot/Unterstufe/tagesbetreuung9.jpg"><img style="float: right;" src="images/Bilder/Angebot/Unterstufe/tagesbetreuung9.jpg" alt="tagesbetreuung9" width="167" height="125" /></a>\r\n<ul>\r\n<li>„Kuschelecke“ - Erholungsecke</li>\r\n<li>Bücher, Comics</li>\r\n<li>Gesellschaftsspiele</li>\r\n<li>Tische zum Malen, Basteln, Papierfalten, Jausnen…</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li>am Gang:\r\n<ul>\r\n<li>Schnurspringen</li>\r\n<li>Softkegeln…</li>\r\n<li>Tischfußball</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<ul>\r\n<li>Der Hof kann bei trockenem Wetter genützt werden für:<a href="images/Bilder/Angebot/Unterstufe/tagesbetreuung10.jpg"><img style="float: right;" src="images/Bilder/Angebot/Unterstufe/tagesbetreuung10.jpg" alt="tagesbetreuung10" width="167" height="125" /></a>\r\n<ul>\r\n<li>Softball-Fußball</li>\r\n<li>Federball</li>\r\n<li>Jonglieren…</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<p class="Calibri11" style="margin: 6pt 0cm;"><strong><span style="font-size: 12pt; color: #1f497d;">Gemeinsame Aktionen</span></strong></p>\r\n<p class="Calibri11">An Tagen, an denen mit nur wenig Hausübung zu rechnen ist - vor Weihnachten, nach Notenschluss...) werden gemeinsame Aktionen - Teilnahme auf freiwilliger Basis - wie z.B. Kinobesuch, Museumsbesuch, Planetarium... angeboten werden. Dies soll das gemeinschaftliche Erleben weiter fördern und gleichzeitig den Bildungshorizont erweitern.</p>\r\n<p style="margin: 18pt 0cm 6pt;"><strong><span style="font-size: 14pt; font-family: ''Calibri'',''sans-serif''; color: #1f497d;">Hausordnung/Regeln</span></strong></p>\r\n<div style="margin: 0px;"><span style="font-family: Calibri,sans-serif; font-size: x-small; color: #000000;"><span style="font-size: 11pt;">m Grunde gelten die gleichen Regeln wie für den Vormittagsunterricht.<br /> Unterschiede: </span></span></div>\r\n<ul style="margin-top: 14pt; margin-bottom: 0px;">\r\n<li style="margin: 0px;"><span style="color: #000000; font-family: Calibri,sans-serif; font-size: x-small;"><span style="font-size: 11pt;">Der Gang im TABE-Bereich wird auch zum Spielen - für ruhige Bewegungsspiele - verwendet. </span></span></li>\r\n<li style="margin: 0px;"><span style="color: #000000; font-family: Calibri,sans-serif; font-size: x-small;"><span style="font-size: 11pt;">Das Handy darf nach Rücksprache mit den betreuenden LehrerInnen verwendet werden. <br /> Wird es unerlaubt verwendet, wird es bis zum Heimgehen eingezogen. </span></span></li>\r\n<li style="margin: 0px;"><span style="color: #000000; font-family: Calibri,sans-serif; font-size: x-small;"><span style="font-size: 11pt;">Kaugummi darf nur gekaut werden wenn es unauffällig ist und solange er nicht irgendwo hingeklebt wird. </span></span></li>\r\n</ul>\r\n<div style="margin: 0px;"><span style="font-family: Calibri,sans-serif; font-size: x-small; color: #000000;"><span style="font-size: 11pt;"><br /> TABE-Regeln:</span></span></div>\r\n<ul style="margin-top: 14pt; margin-bottom: 0px;">\r\n<li style="margin: 0px;"><span style="color: #000000; font-family: Calibri,sans-serif; font-size: x-small;"><span style="font-size: 11pt;">kein Laufen am Gang!</span></span></li>\r\n<li style="margin: 0px;"><span style="color: #000000; font-family: Calibri,sans-serif; font-size: x-small;"><span style="font-size: 11pt;">Im Innenbereich dürfen nur die kleinen Softbälle zum Spielen verwendet werden.</span></span></li>\r\n<li style="margin: 0px;"><span style="color: #000000; font-family: Calibri,sans-serif; font-size: x-small;"><span style="font-size: 11pt;">Das Holen von Sachen aus dem Spind bzw. der Klasse (vergessene Bücher, ...) wird nur in seltenen Ausnahmefällen genehmigt - es wird versucht die SchülerInnen dahingehend zu erziehen, dass sie daran denken, alles mitzunehmen und ihre Sachen in Ordnung zu halten.</span></span></li>\r\n<li style="margin: 0px;"><span style="color: #000000; font-family: Calibri,sans-serif; font-size: x-small;"><span style="font-size: 11pt;">Spätestens um 14:40 (Beginn der 8. Stunde) mit den Hausübungen beginnen!</span></span></li>\r\n<li style="margin: 0px;"><span style="color: #000000; font-family: Calibri,sans-serif; font-size: x-small;"><span style="font-size: 11pt;">kein Herumgeistern im Haus (auch kein Kakaoholen vor dem Sekretariat)</span></span></li>\r\n<li style="margin: 0px;"><span style="color: #000000; font-family: Calibri,sans-serif; font-size: x-small;"><span style="font-size: 11pt;">Schultaschen in Lernzeiträume</span></span></li>\r\n<li style="margin: 0px;"><span style="color: #000000; font-family: Calibri,sans-serif; font-size: x-small;"><span style="font-size: 11pt;">Schuhe auf Regale im "Bewegungsraum"</span></span></li>\r\n<li style="margin: 0px;"><span style="color: #000000; font-family: Calibri,sans-serif; font-size: x-small;"><span style="font-size: 11pt;">Papiere, Flaschen in den Mist werfen. </span></span></li>\r\n</ul>\r\n<div style="margin: 0px 0px 0px 36pt;"><span style="color: #000000;">&nbsp;</span></div>\r\n<div style="margin: 0px;"><span style="font-family: Calibri,sans-serif; font-size: x-small; color: #000000;"><span style="font-size: 11pt;">„Kuschelecke“ - Ruhezone:</span></span></div>\r\n<ul style="margin-top: 14pt; margin-bottom: 0px;">\r\n<li style="margin: 0px;"><span style="color: #000000; font-family: Calibri,sans-serif; font-size: x-small;"><span style="font-size: 11pt;">kein Herumtoben</span></span></li>\r\n<li style="margin: 0px;"><span style="color: #000000; font-family: Calibri,sans-serif; font-size: x-small;"><span style="font-size: 11pt;">nicht mit Patschen auf das Sofa</span></span></li>\r\n<li style="margin: 0px;"><span style="color: #000000; font-family: Calibri,sans-serif; font-size: x-small;"><span style="font-size: 11pt;">nicht essen und trinken</span></span></li>\r\n<li style="margin: 0px;"><span style="color: #000000; font-family: Calibri,sans-serif; font-size: x-small;"><span style="font-size: 11pt;">leise plaudern</span></span></li>\r\n</ul>\r\n<div style="margin: 0px;"><span style="font-family: Calibri,sans-serif; font-size: x-small; color: #000000;"><span style="font-size: 11pt;">Hofregeln:</span></span></div>\r\n<ul style="margin-top: 14pt; margin-bottom: 0px;">\r\n<li style="margin: 0px;"><span style="color: #000000; font-family: Calibri,sans-serif; font-size: x-small;"><span style="font-size: 11pt;">kein Essen, Trinken mitnehmen</span></span></li>\r\n<li style="margin: 0px;"><span style="color: #000000; font-family: Calibri,sans-serif; font-size: x-small;"><span style="font-size: 11pt;">Bereich oben bis zur Bühne unten darf genutzt werden</span></span></li>\r\n<li style="margin: 0px;"><span style="color: #000000; font-family: Calibri,sans-serif; font-size: x-small;"><span style="font-size: 11pt;">kein Geländerutschen</span></span></li>\r\n<li style="margin: 0px;"><span style="color: #000000; font-family: Calibri,sans-serif; font-size: x-small;"><span style="font-size: 11pt;">keine Waveboards...</span></span></li>\r\n<li style="margin: 0px;"><span style="color: #000000; font-family: Calibri,sans-serif; font-size: x-small;"><span style="font-size: 11pt;">kein Spielen über die Stiegen,</span></span></li>\r\n<li style="margin: 0px;"><span style="color: #000000; font-family: Calibri,sans-serif; font-size: x-small;"><span style="font-size: 11pt;">kein Laufen durch das junge Buschwerk</span></span></li>\r\n<li style="margin: 0px;"><span style="color: #000000; font-family: Calibri,sans-serif; font-size: x-small;"><span style="font-size: 11pt;">Softbälle dürfen im Hof nicht gegen die Mauer/Fenster geknallt werden</span></span></li>\r\n</ul>\r\n<div style="margin: 0px;"><span style="font-family: Calibri,sans-serif; font-size: x-small; color: #000000;"><span style="font-size: 11pt;">Es gelten auch am Nachmittag die Verhaltenspunkte!</span></span></div>\r\n<p>&nbsp;</p>', '', 1, 2, '2013-12-05 07:44:10', 365, '', '2014-04-01 07:55:08', 367, 0, '0000-00-00 00:00:00', '2013-12-05 07:44:10', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 10, 37, '', '', 1, 156, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(15, 50, 'Mittagsbetreuung', 'mittagsbetreuung', '<p style="line-height: 115%;">Ab der 3. Schulwoche</p>\r\n<p style="line-height: 115%;"><span style="font-size: 11pt; line-height: 115%; font-family: ''Calibri'',''sans-serif'';"><a href="images/Bilder/Angebot/Unterstufe/mittagsbetreuung.jpg"><img style="float: left;" src="images/Bilder/Angebot/Unterstufe/mittagsbetreuung.jpg" alt="mittagsbetreuung" width="263" height="175" /></a>Am Contiweg ist es möglich, dass Schülerinnen und Schüler der 1. – 4. Klassen <strong>zwischen Vormittagsunterricht und Nachmittagsunterricht</strong> kostenlos von Lehrerinnen und Lehrern beaufsichtigt werden. </span></p>\r\n<p style="line-height: 115%;"><span style="font-size: 11pt; line-height: 115%; font-family: ''Calibri'',''sans-serif'';">Diese Mittagsbetreuung kann nur dann eingerichtet werden, wenn genügend Schülerinnen und Schüler in den jeweiligen Stunden angemeldet werden und wenn genügend Lehrerinnen und Lehrer in den gewünschten Zeiten zur Verfügung stehen.</span></p>\r\n<p style="line-height: 115%;"><span style="font-size: 11pt; line-height: 115%; font-family: ''Calibri'',''sans-serif'';">Bedingung ist, dass Schülerinnen und Schüler fix für bestimmte Stunden angemeldet sind; diese Anmeldung gilt bindend für ein ganzes Schuljahr. Die Mittagsbetreuung kann pro Schüler/in für <em>maximal zwei Tage pro Woche</em> (pro Tag jedoch nicht mehr als zwei Stunden) in Anspruch genommen werden. Bei größerem Bedarf muss eine Anmeldung in der Tagesbetreuung (kostenpflichtig) erfolgen.</span></p>', '', 1, 2, '2013-12-05 07:44:23', 365, '', '2014-03-19 17:47:35', 367, 0, '0000-00-00 00:00:00', '2013-12-05 07:44:23', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 36, '', '', 1, 114, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(17, 52, 'Unsere Oberstufe', 'unsere-oberstufe', '<p style="margin: 6pt 0cm;"><a href="images/Bilder/Angebot/Oberstufe/unsereoberstufe.png"><img style="float: left;" src="images/Bilder/Angebot/Oberstufe/unsereoberstufe.png" alt="unsereoberstufe" width="234" height="175" /></a>In der Oberstufe am Contiweg werden zwei Schulzweige, <strong>„Gymnasium“</strong> und „<strong>Realgymnasium“, </strong>angeboten.</p>\r\n<p style="margin: 6pt 0cm;">Die genaue Stundenaufteilung ist in den Stundentafeln der Schulzweige ersichtlich.</p>\r\n<p style="margin: 6pt 0cm;">In der 5. Klasse wird am Contiweg zusätzlich das Fach <strong>KoKoKo </strong>(„Kommunikation, Koordination, Kooperation“) geführt. In dieser Stunde liegt der Fokus darauf, Themen, für die während des Regelunterrichts keine Zeit vorhanden ist, innerhalb des Klassenverbandes zu besprechen. Die KoKoKo – Stunde wird vom Klassenvorstand gehalten.</p>\r\n<p style="margin: 6pt 0cm;"><strong>Ziel der Oberstufe der AHS Contiweg ist,</strong></p>\r\n<p style="margin: 6pt 0cm;">… den Schülerinnen und Schülern eine optimale <strong>Vorbereitung</strong> auf die <strong>kompetenzorientierte zentrale Reifeprüfung</strong> zu bieten</p>\r\n<p style="margin: 6pt 0cm;">… die <strong>Gewährleistung von Bildungsinhalten</strong> – und Zielen einer modernen, zeitgemäßen und zukunftsorientierten AHS</p>\r\n<p style="margin: 6pt 0cm;">… die <strong>Vermittlung von Schlüsselqualifikationen und Kompetenzen</strong> (vorwissenschaftliches Arbeiten, Präsentationstechnik, IKT)</p>\r\n<p style="margin: 6pt 0cm;">… die Vorbereitung auf ein universitäres Studium und höhere Studierfähigkeit</p>\r\n<p style="margin: 6pt 0cm;">…&nbsp;&nbsp; die <strong>Förderung individueller Leistungspotenziale</strong> und des persönlichen Lernwillens</p>\r\n<p>… <strong>Begabungsförderung</strong> durch anspruchsvolle Angebote</p>\r\n<p><strong>Wahlpflichtfächer</strong></p>\r\n<p style="margin: 6pt 0cm;">Die gesamte Stundenanzahl in der Oberstufe beträgt 130 Wochenstunden. Einen bestimmten Teil davon kann jeder Schüler und jede Schülerin (von der sechsten bis zur achten Klasse verteilt) als Wahlpflichtgegenstand frei wählen.</p>\r\n<p style="margin: 6pt 0cm;">Im Gymnasium sind insgesamt 6 Wochenstunden, im Realgymnasium 8 Wochenstunden zu wählen.</p>\r\n<p style="margin: 6pt 0cm;"><a class="wf_file" href="images/Bilder/Angebot/Oberstufe/WPF_Informationen.pdf"><span class="wf_file_text">Nähere Informationen zu den Wahlpflichtgegenständen am Contiweg finden Sie hier.</span></a></p>', '', 1, 2, '2013-12-05 07:46:34', 365, '', '2014-03-20 11:20:12', 367, 0, '0000-00-00 00:00:00', '2013-12-05 07:46:34', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 35, '', '', 1, 254, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(18, 53, 'Stundentafel', 'stundentafleoberstufe', '<p style="margin-bottom: 6pt; line-height: normal;"><a href="images/Bilder/Angebot/Oberstufe/stundentafel1.jpg"><img style="float: left;" src="images/Bilder/Angebot/Oberstufe/stundentafel1.jpg" alt="stundentafel1" width="233" height="175" /></a><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">Die AHS Contiweg ist eine <strong>allgemeinbildende höhere Schule</strong> mit den Zweigen <strong>Realgymnasium</strong> und <strong>Gymnasium</strong>, die einen Abschluss mit einer <strong>Matura </strong>anbietet.</span></p>\r\n<p style="margin-bottom: 6pt; line-height: normal;"><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;">Im <strong>gymnasialen Zweig</strong> werden verstärkt <strong>Sprachen</strong> angeboten (Spanisch als zweite lebende Fremdsprache ab der 3. Klasse, Latein ab der 5. Klasse), während im <strong>Realgymnasium</strong> der <strong>naturwissenschaftliche Bereich</strong> gefördert wird (Geometrisch Zeichnen in der 3. und 4. Klasse, technisches und textiles Werke auch in der 3. und 4. Klasse, eine zweite lebende Fremdsprache oder Latein ab der 5. Klasse).</span></p>\r\n<p style="margin-bottom: 6pt; line-height: normal;"><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;"><a class="wf_file" href="images/Bilder/Angebot/Oberstufe/Stundentafel_OST_RG.pdf"><span class="wf_file_text">Stundentafel Realgymnasium Oberstufe</span></a></span></p>\r\n<p style="margin-bottom: 6pt; line-height: normal;"><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;"><a class="wf_file" href="images/Bilder/Angebot/Oberstufe/Stundentafel_OST_G.pdf"><span class="wf_file_text">Stundentafel Gymnasium Oberstufe</span></a></span></p>', '', 1, 2, '2013-12-05 07:47:05', 365, '', '2014-04-10 23:42:21', 371, 0, '0000-00-00 00:00:00', '2013-12-05 07:47:05', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 34, '', '', 1, 152, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(19, 54, 'Zentrale Reifeprüfung', 'zentrale-reifepruefung', '<p style="margin: 6pt 0cm;">Die neue Reifeprüfung an allgemein bildenden höheren Schulen (AHS) wird zum Haupttermin 2014/15 in Kraft treten. Die neue Reifeprüfung wird sowohl standardisiert als auch kompetenzorientiert sein.</p>\r\n<p style="margin: 6pt 0cm; line-height: 115%;"><span style="font-size: 11pt; line-height: 115%; font-family: ''Calibri'',''sans-serif'';">Die neue Reifeprüfung wird aus dem verpflichtenden Prüfungsgebiet „Vorwissenschaftliche Arbeit (inkl. Präsentation und Diskussion)“, den (3 bzw. 4) Klausurarbeiten und den (3 bzw. 2) mündlichen Prüfungen bestehen. Sie ist modular aufgebaut, das bedeutet, dass ein/e Schüler/in trotz negativer Leistung(en) in der ersten oder zweiten Säule zur mündlichen Prüfung antreten kann. </span></p>\r\n<p style="margin: 6pt 0cm; line-height: 115%;"><span style="font-size: 11pt; line-height: 115%; font-family: ''Calibri'',''sans-serif'';">Negativ beurteilte Klausuren können wiederholt werden, die Kompensation durch mündliche Prüfungen („Kompensationsprüfungen“, bei standardisierten Klausuren mit zentral vorgegebenen Aufgabenstellungen) ist möglich. </span></p>\r\n<p style="margin: 6pt 0cm; line-height: 115%;"><span style="font-size: 11pt; line-height: 115%; font-family: ''Calibri'',''sans-serif'';">Das negativ beurteilte Prüfungsgebiet „Vorwissenschaftliche Arbeit“ muss mit neuer Themenstellung wiederholt werden. </span></p>\r\n<p style="margin: 6pt 0cm; line-height: 115%;"><a class="wf_file" href="images/Bilder/Angebot/Oberstufe/14_-_reifepruefung_ahs_pr.pdf"><span class="wf_file_text">Zur Grafik hier klicken</span></a></p>\r\n<p style="margin: 6pt 0cm; line-height: 115%;"><span style="font-size: 11pt; line-height: 115%; font-family: ''Calibri'',''sans-serif'';">Quelle: <a href="http://www.Bmukk.gv.at">www. Bmukk.gv.at</a>, Stand 28.02.2014</span></p>\r\n<p style="margin: 6pt 0cm;">Nähere Informationen finden Sie auf <a href="http://www.bmukk.gv.at">www.bmukk.gv.at</a></p>', '', 1, 2, '2013-12-05 07:47:17', 365, '', '2014-03-20 11:28:45', 367, 0, '0000-00-00 00:00:00', '2013-12-05 07:47:17', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 33, '', '', 1, 145, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(21, 56, 'Kontakt', 'kontakt', '<p style="margin-bottom: 0.0001pt;"><span style="font-family: arial,helvetica,sans-serif;"><span class="seitentitel"><strong><span style="font-size: 14pt; line-height: 107%;">Kontakt</span></strong></span><strong><span style="font-size: 14pt; line-height: 107%;"> <br /> </span></strong><span class="style6"><strong><span style="font-size: 12pt; line-height: 107%;">AHS/WMS Contiweg</span></strong></span><strong><span style="font-size: 12pt; line-height: 107%;"><br /> <span class="style6">Contiweg 1, 1220 Wien</span></span></strong></span><br /> <br /><span class="text" style="font-family: arial,helvetica,sans-serif;"> <strong><span style="font-size: 12pt; line-height: 107%;">Direktion</span></strong></span></p>\r\n<p style="margin-bottom: 0.0001pt;"><strong><span style="font-size: 12pt; line-height: 107%;"><a href="images/Bilder/Service/Kontakt/kontakt1.png"><img style="float: left;" src="images/Bilder/Service/Kontakt/kontakt1.png" alt="kontakt1" width="80" height="97" /><br style="clear: both;" /></a></span></strong><span style="font-size: 10pt;"><span style="font-family: arial,helvetica,sans-serif;"><strong><span class="text1"><span style="line-height: 107%;">Mag.<sup>a</sup> Monika Auböck</span></span></strong></span><span style="line-height: 107%;"><br /> <span class="text1">Telefon: 01 / 283 48 23</span><br /> </span><a href="mailto:monika.auboeck@contiweg.at"><span style="line-height: 107%;">monika.auboeck@contiweg.at </span></a><span style="line-height: 107%;"><br /> </span><a href="mailto:dion1.grgorg22@922066.ssr-wien.gv.at"><span style="line-height: 107%;">dion1.grgorg22@922066.ssr-wien.gv.at</span></a><span class="text1"></span></span><span style="font-size: 12pt; line-height: 107%;"></span></p>\r\n<hr />\r\n<p style="margin-bottom: 0.0001pt;"><span style="font-family: arial,helvetica,sans-serif;"><span class="text"><strong><span style="font-size: 12pt; line-height: 107%;">Administration</span></strong></span></span></p>\r\n<p style="margin-bottom: 0.0001pt;"><span style="font-family: arial,helvetica,sans-serif;"><strong><span style="font-size: 12pt; line-height: 107%;"><br /> </span></strong></span><span style="font-size: 10pt;"><span style="font-family: arial,helvetica,sans-serif;"><strong><span class="text1"><span style="line-height: 107%;">MMag.<sup>a</sup> Ursula Wischounig-Schneider</span></span></strong></span><span style="line-height: 107%;"><br /><span class="text1" style="font-family: arial,helvetica,sans-serif;"> Telefon: 01 / 283 48 23 DW 12</span></span></span></p>\r\n<hr />\r\n<p style="margin-bottom: 0.0001pt;"><span style="font-size: 10pt;"><span style="line-height: 107%;"><span class="text1" style="font-family: arial,helvetica,sans-serif;"></span><span class="text" style="font-size: 12pt; font-family: arial,helvetica,sans-serif;"><strong>Sekretariat</strong></span><strong><br /> </strong></span></span></p>\r\n<p style="margin-bottom: 0.0001pt;"><a href="images/Bilder/Service/Kontakt/kontakt2.jpg"><span style="font-size: 12pt; line-height: 107%;"><strong><img style="float: left;" src="images/Bilder/Service/Kontakt/kontakt2.jpg" alt="kontakt2" width="80" height="121" /><br style="clear: both;" /></strong></span></a><span class="text1"><span style="font-size: 12pt; line-height: 107%;"></span></span></p>\r\n<p style="margin-bottom: 0.0001pt;"><span style="font-family: arial,helvetica,sans-serif;"><strong><span class="text1" style="font-size: 10pt;"><span style="line-height: 107%;">Sonja Schuster</span></span></strong><span style="line-height: 107%;"><br /><span class="text1" style="font-size: 10pt;"> Telefon: 01 / 283 48 23 </span><br /><span class="text1" style="font-size: 10pt;"> Fax: 01 / 283 48 23 20<br /></span><br /> </span><a href="mailto:sonja.schuster@contiweg.at"><span style="line-height: 107%;"></span></a><a href="mailto:sek1.grgorg22@922066.ssr-wien.gv.at"><span style="line-height: 107%;"></span></a><span style="font-size: 12pt; line-height: 107%;"></span><strong><span class="text1" style="font-size: 10pt;"><span style="line-height: 107%;">Sabine Logar</span></span></strong><span style="font-size: 12pt; line-height: 107%;"><br /><span class="text1" style="font-size: 10pt;"> Telefon: 01 / 283 48 23/19 </span><br /><span class="text1" style="font-size: 10pt;"> Fax: 01 / 283 48 23 2</span></span></span></p>\r\n<hr />\r\n<p style="margin-bottom: 0.0001pt;"><span style="font-family: arial,helvetica,sans-serif;"><span style="font-size: 12pt; line-height: 107%;"><span class="text1" style="font-size: 10pt;"></span></span><a href="mailto:sabine.logar@contiweg.at"><span style="font-size: 12pt; line-height: 107%;"></span></a></span><span style="font-size: 10pt; font-family: arial,helvetica,sans-serif;"><span style="line-height: 107%;"><span class="text1"><strong><span style="font-size: 12pt;">Schulwart</span><br /> Christian Varga</strong></span></span><span class="text1"><br /> </span><span class="text1"><span style="line-height: 107%;">Telefon: 01 / 283 48 23 / 13<br />Mobil: 0664 5340040</span><br /> </span><a href="mailto:christian.varga@contiweg.at"><span class="text1"><span style="line-height: 107%; color: windowtext; text-decoration: none;">christian.varga@contiweg.at</span></span></a></span></p>\r\n<p style="margin-bottom: 0.0001pt;"><span style="font-size: 10pt;"><span class="text1" style="font-family: arial,helvetica,sans-serif;"><span style="line-height: 107%;"><strong>Peter Loskot</strong></span></span><span class="text1" style="font-family: arial,helvetica,sans-serif;"><span style="line-height: 107%;"><br />Telefon: 01/283 48 23/13</span></span></span></p>\r\n<hr />\r\n<p><span style="font-size: 10pt;"><span class="text1" style="font-family: arial,helvetica,sans-serif;"></span></span><span class="text1" style="font-size: 10pt; font-family: arial,helvetica,sans-serif;"></span><span class="angebot_alles" style="font-size: 12pt; font-family: arial,helvetica,sans-serif;"><strong><span class="alles" style="line-height: 107%;"><span class="text">T</span></span></strong></span><span class="angebot_alles"><span style="font-size: 12pt; font-family: arial,helvetica,sans-serif;"><strong>agesbetreuung</strong></span><br /><span style="font-family: arial,helvetica,sans-serif; font-size: 10pt;">Mag.</span></span><span style="font-family: arial,helvetica,sans-serif; font-size: 10pt;"><sup class="angebot_alles">a</sup><span class="angebot_alles"> Nikoline Kaupe (Leitung)</span></span><br /><span class="angebot_alles" style="font-family: arial,helvetica,sans-serif; font-size: 10pt;"> Telefon: 0681 / 107 04 625</span></p>\r\n<hr />\r\n<p><span style="font-size: 12pt; line-height: 107%;"><span class="text1" style="font-size: 10pt;"></span></span><span style="font-size: 10pt;"><a href="mailto:nikoline.kaupe@contiweg.at"><span style="line-height: 107%;"></span></a></span><span style="font-family: arial,helvetica,sans-serif;"><span style="line-height: 107%;"><span class="text"><strong><span style="font-size: 12pt;">Lehrer/innen</span><br /></strong></span></span><strong><span class="text" style="font-size: 10pt;"><span style="line-height: 107%;">Konferenzzimmer 1</span></span></strong><span style="line-height: 107%;"><br /> <span class="text1" style="font-size: 10pt;">Telefon: 01 / 283 48 23 DW 16</span><br /><strong><span class="text" style="font-size: 10pt;"> Konferenzzimmer 2</span></strong><br /><span class="text1" style="font-size: 10pt;"> Telefon: 01 / 283 48 23 DW 17</span><br /><strong><span class="text" style="font-size: 10pt;"> Konferenzzimmer 3</span></strong><br /><span class="text1" style="font-size: 10pt;"> Telefon: 01 / 283 48 23 DW 18</span></span></span></p>\r\n<hr />\r\n<p><span style="font-size: 10pt;"><span style="line-height: 107%;"><span class="text1"></span></span></span><span class="style6" style="font-family: arial,helvetica,sans-serif;"><strong><span style="font-size: 14pt; line-height: 107%;">AHS/WMS Contiweg</span></strong></span><strong><span style="font-size: 14pt; line-height: 107%;"><br /><span class="style6" style="font-size: 12pt; font-family: arial,helvetica,sans-serif;"> Simonsgasse 23<br />1220 Wien</span><br /> </span></strong><br /> <span class="text" style="font-family: arial,helvetica,sans-serif; font-size: 12pt;"><strong><span style="line-height: 107%;">Stv. Leitung</span></strong></span><strong><span style="line-height: 107%;"></span><span style="font-size: 12pt; line-height: 107%;"><br /> </span></strong><span style="font-size: 10pt;"><span style="font-family: arial,helvetica,sans-serif;"><strong><span class="text1"><span style="line-height: 107%;">Mag.<sup>a</sup> Karina Heerstraß</span></span></strong></span><span style="line-height: 107%;"><br /> <span class="text1"><span style="font-family: arial,helvetica,sans-serif;">Telefon: 01 / 774 62 91</span></span><br /><span class="text1" style="font-family: arial,helvetica,sans-serif;"> Mobiltelefon: 0664 5340220</span></span></span></p>\r\n<hr />\r\n<p><span style="font-size: 10pt;"><span style="line-height: 107%;"><span class="text1"></span></span><a href="mailto:karina.heerstrass@contiweg.at"><span style="line-height: 107%;"></span></a></span><span style="font-size: 12pt; line-height: 107%;"><span style="font-family: arial,helvetica,sans-serif;"><span class="text"><strong>Tagesbetreuung</strong></span><strong><br /> </strong><span class="text1" style="font-size: 10pt;">Mag.<sup>a</sup> Katharina Krausler-Karonitsch (Leitung am Standort Simonsgasse)</span></span><br /><span class="text1" style="font-size: 10pt; font-family: arial,helvetica,sans-serif;"> Telefon: 0664 / 5340030</span><br /> </span><span style="font-size: 10pt;"><a href="mailto:katharina.krausler-karonitsch@contiweg.at"><span style="line-height: 107%;">katharina.krausler-karonitsch@contiweg.at</span></a></span></p>\r\n<hr />\r\n<p><span style="font-size: 10pt;"><a href="mailto:katharina.krausler-karonitsch@contiweg.at"><span style="line-height: 107%;"> </span></a></span><span style="font-family: arial,helvetica,sans-serif; font-size: 10pt;"><span style="line-height: 107%;"><span class="text"><strong><span style="font-size: 12pt;">Lehrer/innen</span><br /></strong></span></span><span class="text"><span style="line-height: 107%;">Konferenzzimmer 1</span></span><span style="line-height: 107%;"><br /> <span class="text1">Telefon: 01 / 774 62 91 DW 212</span></span></span></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '', 1, 2, '2013-12-05 07:47:42', 365, '', '2014-04-11 22:36:25', 371, 371, '2014-04-11 22:36:25', '2013-12-05 07:47:42', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 10, 32, '', '', 1, 487, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(22, 57, '_', '2013-12-05-07-47-55', '', '', 1, 2, '2013-12-05 07:47:55', 365, '', '2014-03-04 11:04:29', 367, 0, '0000-00-00 00:00:00', '2013-12-05 07:47:55', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 31, '', '', 1, 499, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `joem2_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(23, 58, 'Formulare und Downloads', 'formulare-und-downloads', '<p><span style="font-size: 14pt; color: #ff6600;">Beispieltext</span></p>\r\n<p>Auch gibt es niemanden, der den Schmerz an sich liebt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, in denen Mühen und Schmerz ihm große Freude bereiten können. Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen? Aber wer hat irgend ein Recht, einen Menschen zu tadeln, der die Entscheidung trifft, eine Freude zu genießen, die keine unangenehmen Folgen hat, oder einen, der Schmerz vermeidet, welcher keine daraus resultierende Freude nach sich zieht? Auch gibt es niemanden, der den Schmerz an sich liebt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, in denen Mühen und Schmerz ihm <em>große Freude bereite</em>n können. Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen? Aber wer hat irgend ein Recht, einen Menschen zu tadeln, der die Entscheidung trifft, eine Freude zu genießen, die keine unangenehmen Folgen hat, oder einen, der Schmerz vermeidet, welcher keine daraus resultierende Freude nach sich zieht? Auch gibt es niemanden, der den Schmerz an sich liebt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, in denen Mühen und Schmerz ihm große Freude bereiten können. Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen? Aber wer hat irgend ein Recht, einen Menschen zu tadeln, der die Entscheidung trifft, eine Freude zu genießen, die keine unangenehmen Folgen hat, oder einen, der Schmerz vermeidet, welcher keine daraus resultierende Freude nach sich zieht? Auch gibt es niemanden, der den Schmerz an sich liebt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, in denen Mühen und Schmerz ihm große Freude bereiten können. Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen? Aber wer hat irgend ein Recht, einen Menschen zu tadeln, der die Entscheidung trifft, eine Freude zu genießen, die keine unangenehmen Folgen hat, oder einen, der Schmerz vermeidet, welcher keine daraus resultierende Freude nach sich zieht? Auch gibt es niemanden, der den Schmerz an sich lie<span style="text-decoration: underline;">bt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, in denen Mühen und Schmerz ihm große Freude bereiten können. Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen? Aber wer hat irgend ein Recht, einen Menschen zu tadeln, der die Entscheidung trifft, eine Freude zu genießen, die keine unangenehmen Folgen hat, oder einen, der Schmerz vermeidet, welcher keine daraus resultierende Freude nach sich zieht? Auch gibt es niemanden,</span> der den Schmerz an sich liebt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, in denen Mühen und Schmerz ihm große Freude bereiten können. Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen? Aber wer hat irgend ein Recht, einen Menschen zu tadeln, der die Entscheidung trifft, eine Freude zu genießen, die keine unangenehmen Folgen hat, oder einen, der Schmerz vermeidet, welcher keine daraus resultierende Freude nach sich zieht? Auch gibt es niemanden, der den Schmerz an sich liebt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, in denen Mühen und Schmerz ihm große Freude bereiten können. Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen? Aber wer hat irgend ein Recht, einen Menschen zu tadeln, der die Entscheidung trifft, eine Freude zu genießen, die keine unangenehmen Folgen hat, oder einen, der Schmerz vermeidet, welcher keine daraus resultierende Freude nach sich zieht? Auch gibt es niemanden, der den Schmerz an sich liebt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, in denen Mühen und Schmerz ihm große Freude bereiten können. Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen? Aber wer hat irgend ein Recht, einen Menschen zu tadeln, der die Entscheidung trifft, eine Freude zu genießen, die keine unangenehmen Folgen hat, oder einen, der Schmerz vermeidet, welcher keine daraus resultierende Freude nach sich zieht? Auch gibt es niemanden, der den Schmerz an sich liebt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, i<strong>n denen Mühen und Schmerz ihm große Freude bereiten können. Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen? Aber wer hat irgend ein Recht, einen Menschen zu tadeln, der die Entscheidung trifft, eine Freude zu genießen, die keine unangenehmen Folgen hat, oder einen, der Schmerz vermeidet, welcher keine daraus resultierende Freude nach sich zieht? Auch gibt es niemanden, der den Schmerz an sich liebt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, in denen Mühen und Schmerz ihm große Freude bereiten können. Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen? Aber wer hat irgend ein Recht, einen Menschen zu tadeln, der die Entscheidung trifft, eine Freude zu genießen, die keine una</strong>ngenehmen Folgen hat, oder einen, der Schmerz vermeidet, welcher keine daraus resultierende Freude nach sich zieht? Auch gibt es niemanden, der den Schmerz an sich liebt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, in denen Mühen und Schmerz ihm große Freude bereiten können. Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen? Aber wer hat irgend ein Recht, einen Menschen zu tadeln, der die Entscheidung trifft, eine Freude zu genießen, die keine unangenehmen Folgen hat, oder einen, der Schmerz vermeidet, welcher keine daraus resultierende Freude nach sich zieht?Auch gibt es niemanden, der den Schmerz an sich liebt, sucht oder wünscht, nur, weil er Schmerz ist, es sei denn, es kommt zu zufälligen Umständen, in denen Mühen und Schmerz ihm große Freude bereiten können. Um ein triviales Beispiel zu nehmen, wer von uns unterzieht sich je anstrengender körperlicher Betätigung, außer um Vorteile daraus zu ziehen?</p>', '', 1, 2, '2013-12-05 07:48:09', 365, '', '2013-12-15 13:18:53', 367, 0, '0000-00-00 00:00:00', '2013-12-05 07:48:09', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 30, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(24, 59, 'Hausordnung', 'hausordnung', '<p>Zurzeit direktverlinkung.</p>', '', 1, 2, '2013-12-05 07:48:19', 365, '', '2014-03-23 12:14:05', 367, 0, '0000-00-00 00:00:00', '2013-12-05 07:48:19', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 29, '', '', 1, 8, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(25, 60, 'Maßnahmenkatalog', 'massnahmenkatalog', '<p>Zurzeit direktverlinkung.</p>', '', 1, 2, '2013-12-05 07:48:31', 365, '', '2014-03-23 12:16:03', 367, 0, '0000-00-00 00:00:00', '2013-12-05 07:48:31', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 28, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(27, 62, 'Projekte', 'erfolge', '<p>&nbsp;</p>\r\n<p><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;"><strong><span class="random-image"></span>Mu</strong></span><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;"><strong><img style="float: left;" src="images/Bilder/Erfolge/Projekte/Foto1.jpg" alt="Foto1" width="91" height="61" /></strong></span><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;"><strong>sikvideo „Personal Application“<br /><span style="font-size: 8pt;"></span></strong></span><span style="font-family: arial,helvetica,sans-serif; font-size: 10pt;">Das T</span><span style="font-family: arial,helvetica,sans-serif; font-size: 10pt;">hema „Handynutzung“ ist nicht nur am Contiweg ein „heißes“ Thema. Schülerinnen und Schüler haben sich mit diesem Thema auseinandergesetzt und einen Film gedreht, der sich sehen lassen kann.<br /><a class="wf_file" href="images/Bilder/Erfolge/Projekte/Musikvideo-_Personal_Application.pdf"><span class="wf_file_text">Mehr lesen……..<br /></span></a></span><span style="font-family: arial,helvetica,sans-serif; font-size: 10pt;"><a href="index.php?option=com_content&amp;view=article&amp;id=64:film-handy-gut&amp;catid=10:film-handy-gut&amp;Itemid=101"><span style="text-decoration: underline;">Zum Film ………</span></a></span></p>\r\n<hr />\r\n<p><strong><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;">Teilnahme am internationalen Jugenfilmfestival<br /></span></strong><span style="color: #000000;"><span style="font-family: arial,helvetica,sans-serif; font-size: 10pt;"><strong>Das </strong></span><span style="font-size: 10pt;"><span style="font-family: arial,helvetica,sans-serif;"><strong>Musikvideo "Personal Application</strong></span><span style="font-family: arial,helvetica,sans-serif;">"</span></span><span style="font-family: arial,helvetica,sans-serif; font-size: 10pt;"><span style="font-size: 10pt;"> wurde vom Internationalen Jugendfilmfestival in Plasencia / Spanien für den Wettbewerb nominiert. </span>"Personal Application" gewann den Preis für <strong>„Bestes Script“</strong>. </span></span><span style="font-family: arial,helvetica,sans-serif; color: #232323; font-size: 10pt;"><span style="color: #000000;">Jordi und Gzim nahmen die Urkunde stellvertretend für die gesamte Klasse entgegen.</span><br /></span><span style="font-family: arial,helvetica,sans-serif; font-size: 10pt;"><a class="wf_file" href="images/Bilder/Erfolge/Projekte/Projektbericht_Jugendfilmfestival_Spanien_2014.pdf"><span class="wf_file_text">Mehr lesen …</span></a></span></p>\r\n<hr />\r\n<p><span style="font-family: arial,helvetica,sans-serif; font-size: 10pt;"><strong><span style="font-size: 12pt;">Schulpartnerschaft Contiweg – Nottingham High Scool</span><br /></strong>Zu Beginn des Schuljahres 2012/13 ergab sich die tolle Möglichkeit über e-twinning eine Schulpartnerschaft mit einer Schule in Nottingham zu etablieren.<br /><a class="wf_file" href="images/Bilder/Erfolge/Projekte/Contiweg-Nottingham.pdf"><span class="wf_file_text">Mehr lesen ……….<br /></span></a></span><span style="font-family: arial,helvetica,sans-serif; font-size: 10pt;"><a href="index.php?option=com_content&amp;view=article&amp;id=65:video-contiweg-nottingham&amp;catid=11:video-contiweg-nottingham&amp;Itemid=101"><span style="text-decoration: underline;">Zum Video ………..</span></a></span></p>', '', 1, 2, '2013-12-05 07:48:53', 365, '', '2014-04-11 21:40:23', 371, 371, '2014-04-11 21:40:23', '2013-12-05 07:48:53', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 25, 27, '', '', 1, 638, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(29, 64, 'Allgemeine Informationen', 'allgemeine-informationen', '<p style="text-align: center;" align="center"><span class="seitentitel"><strong><span style="font-size: 14pt; font-family: ''Calibri'',''sans-serif'';">Herzlich willkommen in der Schulbibliothek der AHS/WMS Contiweg</span></strong></span></p>\r\n<p style="text-align: center;" align="center"><a href="images/Bilder/Bibliothek/AllgemeineInfos/bibliothek1.jpg"><span class="seitentitel"><strong><span style="font-size: 14pt; font-family: ''Calibri'',''sans-serif'';"><img src="images/Bilder/Bibliothek/AllgemeineInfos/bibliothek1.jpg" alt="bibliothek1" width="233" height="175" /></span></strong></span></a></p>\r\n<p style="text-align: justify; line-height: 115%;">Unsere multimediale Schulbibliothek stellt eines der pädagogischen Zentren der Schule dar und steht allen Schüler/innen sowie Lehrer/innen zur Verfügung. In ihr werden diverse Medien (Bücher, Zeitschriften, Hörbücher, CDs usw.) gesammelt, katalogisiert, systematisiert und in Form der Freihandaufstellung, mit der Möglichkeit der Entlehnung, für die Benützer bereitgestellt.</p>\r\n<p style="line-height: 115%; text-align: center;"><a href="images/Bilder/Bibliothek/AllgemeineInfos/bibliothek2.jpg"><img src="images/Bilder/Bibliothek/AllgemeineInfos/bibliothek2.jpg" alt="bibliothek2" width="233" height="175" /></a></p>\r\n<p style="text-align: justify; line-height: 115%;">Unsere Schulbibliothek ist mit zeitgerechtem EDV-Equipment und Geräten zur digitalen Verarbeitung und Präsentation ausgestattet. Sechs internetfähige Computerarbeitsplätze ermöglichen ein zeitgemäßes Arbeiten.</p>\r\n<p style="text-align: justify; line-height: 115%;"><a href="images/Bilder/Bibliothek/AllgemeineInfos/bibliothek3.jpg"><img style="float: left;" src="images/Bilder/Bibliothek/AllgemeineInfos/bibliothek3.jpg" alt="bibliothek3" width="233" height="175" /></a><a href="images/Bilder/Bibliothek/AllgemeineInfos/bibliothek4.jpg"><img style="float: left;" src="images/Bilder/Bibliothek/AllgemeineInfos/bibliothek4.jpg" alt="bibliothek4" width="233" height="175" /></a><br style="clear: both;" /><br style="clear: both;" /></p>\r\n<p style="text-align: justify; line-height: 115%;">Die Bibliothek kann auch als Klassenzimmer, Arbeitsplatz zum Recherchieren und zum Schmökern verwendet werden. Als pädagogisches Zentrum erfüllt unsere multimediale Schulbibliothek ihre Funktion als Informations-, Lese-, und Arbeitszentrum gleichermaßen für Schüler sowie Lehrer und darüber hinaus auch als Beratungs- und Kommunikationszentrum. Sie ist ein Raum des Lesens, Lernens, Arbeitens sowie der Muse und Erholung.</p>\r\n<p style="text-align: justify; line-height: 115%;"><a href="images/Bilder/Bibliothek/AllgemeineInfos/bibliothek5.jpg"><img style="float: left;" src="images/Bilder/Bibliothek/AllgemeineInfos/bibliothek5.jpg" alt="bibliothek5" width="233" height="175" /></a><a href="images/Bilder/Bibliothek/AllgemeineInfos/bibliothek6.jpg"><img style="float: left;" src="images/Bilder/Bibliothek/AllgemeineInfos/bibliothek6.jpg" alt="bibliothek6" width="233" height="175" /></a><br style="clear: both;" /><br style="clear: both;" /></p>\r\n<p style="text-align: justify; line-height: 115%;"><strong>Das Bibliotheksteam betreut und berät Interessierte und freut sich auf euren Besuch!</strong></p>', '', 1, 2, '2013-12-05 07:49:17', 365, '', '2014-03-23 08:42:01', 367, 0, '0000-00-00 00:00:00', '2013-12-05 07:49:17', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 26, '', '', 1, 284, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(30, 65, 'Buch des Monats', 'buch-der-woche', '<p style="margin-bottom: 0.0001pt; text-align: center; line-height: normal; background: none repeat scroll 0% 0% red;" align="center"><strong><span style="font-size: 14pt;">BUCH DES MONATS</span></strong></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;"><a href="images/Bilder/Bibliothek/BuchdesMonats/buchapril2014.jpg"><strong><span style="font-size: 14pt;"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Bibliothek/BuchdesMonats/buchapril2014.jpg" alt="buchapril2014" width="300" height="410" /></span></strong></a></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;"><strong><span style="font-size: 14pt;">Ritter, Burgen und Turniere: Sachgeschichten und Sagen aus Österreich</span></strong></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;"><a href="http://www.amazon.de/s/ref=ntt_athr_dp_sr_1?_encoding=UTF8&amp;field-author=Monika%20Aub%C3%B6ck&amp;search-alias=books-de&amp;sort=relevancerank"><span style="color: blue;">Monika Auböck</span></a> (Autor), <a href="http://www.amazon.de/s/ref=ntt_athr_dp_sr_2?_encoding=UTF8&amp;field-author=Helga%20Demmer&amp;search-alias=books-de&amp;sort=relevancerank"><span style="color: blue;">Helga Demmer</span></a> (Illustrator)</p>\r\n<p style="margin-bottom: 0.0001pt; line-height: 115%;">Katharina und Daniel sind ins Mittelalter gereist. Als Gäste von Ritter Gernot nehmen</p>\r\n<p style="margin-bottom: 0.0001pt; line-height: 115%;">sie an einem Festmahl teil, beobachten die Knappen bei ihren Waffenübungen, besuchen die Damen der Burg, reiten mit dem Burgherrn zu den Bauern und erleben sogar ein richtiges Turnier. - Österreichische Sagen aus der Ritterzeit begleiten diese Sachgeschichten.</p>\r\n<p style="margin-bottom: 0.0001pt; line-height: 115%;">Viel Spaß beim Lesen</p>', '', 1, 2, '2013-12-05 07:50:10', 365, '', '2014-03-23 08:56:31', 367, 0, '0000-00-00 00:00:00', '2013-12-05 07:50:10', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 25, '', '', 1, 179, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(31, 66, 'Öffnungszeiten', 'oeffnungszeiten', '<p><code>Direkt Verlinkung zu pdf<br /></code></p>', '', 1, 2, '2013-12-05 07:50:22', 365, '', '2014-03-23 10:00:03', 367, 0, '0000-00-00 00:00:00', '2013-12-05 07:50:22', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 21, 24, '', '', 1, 19, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(32, 67, 'Aktuelles', 'aktuelles', '<p style="text-align: center;" align="center"><strong><span style="font-size: 40pt; line-height: 115%; color: #ff0000;">ABGESAGT</span></strong></p>\r\n<p style="text-align: center;" align="center"><span style="font-size: 22pt; line-height: 115%; color: #00b050;">Bildungsstandards Testung </span></p>\r\n<p style="text-align: center;" align="center"><span style="font-size: 22pt; line-height: 115%;">4. Klassen </span></p>\r\n<p style="text-align: center;" align="center"><span style="font-size: 22pt; line-height: 115%;">Deutsch</span></p>\r\n<p style="text-align: center;" align="center"><strong><span style="font-size: 22pt; line-height: 115%; color: #00b050;">2. April 2014</span></strong></p>\r\n<p style="text-align: center;" align="center"><span style="font-size: 22pt; line-height: 115%;">Nähere Informationen: </span><a href="http://www.bifie.at"><span style="font-size: 22pt; line-height: 115%;">www.bifie.at</span></a></p>', '', 1, 2, '2013-12-05 07:50:30', 365, '', '2014-03-24 12:23:31', 367, 0, '0000-00-00 00:00:00', '2013-12-05 07:50:30', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 23, '', '', 1, 713, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(34, 69, 'Direktion', 'direktion', '<table border="0" cellspacing="0" cellpadding="0" align="left">\r\n<tbody>\r\n<tr>\r\n<td style="border: 1px solid white"><img src="images/Bilder/Schulteam/Direktion/direktion1.png" alt="direktion1" width="115" height="175" /></td>\r\n<td style="border: 1px solid white">\r\n<p>Mag.a Monika Auböck</p>\r\n<p>Telefon: 01 / 283 48 23</p>\r\n<p>monika.auboeck@contiweg.at</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style="margin-bottom: 6pt; line-height: normal;">&nbsp;</p>\r\n<p style="margin-bottom: 6pt; line-height: normal;">&nbsp;</p>\r\n<p style="margin-bottom: 6pt; line-height: normal;">&nbsp;</p>\r\n<p style="margin-bottom: 6pt; line-height: normal;">&nbsp;</p>\r\n<p style="margin-bottom: 6pt; line-height: normal;">&nbsp;</p>\r\n<p style="margin-bottom: 6pt; line-height: normal;">&nbsp;</p>\r\n<p style="margin-bottom: 6pt; line-height: normal;">&nbsp;</p>\r\n<p style="margin-bottom: 6pt; line-height: normal;">&nbsp;</p>\r\n<p style="margin-bottom: 6pt; line-height: normal;">Sehr geehrte Besucherin!</p>\r\n<p style="margin-bottom: 6pt; line-height: normal;">Sehr geehrter Besucher!</p>\r\n<p style="margin-bottom: 6pt; line-height: normal;">Herzlich willkommen auf der Homepage des Bundesgymnasiums, Bundesrealgymnasiums, Schulversuch WienerMittel<em>Schule </em>Contiweg.</p>\r\n<p style="margin-bottom: 6pt; line-height: normal;">Die Schule am Contiweg ist eine allgemeinbildende höhere Schule (AHS), die in der Unterstufe als Schulversuch „WienerMittel<em>Schule</em>“ geführt wird. An die Unterstufe schließt eine AHS-Oberstufe mit den Zweigen Realgymnasium und Gymnasium an, die einen Abschluss mit einer Matura anbietet.</p>\r\n<p style="margin-bottom: 6pt; line-height: normal;">Die „WienerMIttel<em>Schule</em>“ ist Teil eines österreichweiten Schulversuchs – der gemeinsamen Schule aller 10- bis 14-jährigen Kinder.</p>\r\n<p style="margin-bottom: 6pt; line-height: normal;">Der Contiweg hatte die einmalige historische Chance, gleich von Beginn an als „NeueMittel<em>Schule</em>“ zu starten, und auch die Chance, Schule gleichsam "auf der grünen Wiese“ neu zu bauen.</p>\r\n<p style="margin-bottom: 6pt; line-height: normal;">Es geht darum Bewährtes weiterzuführen und Neues zu entwickeln und hinzuzufügen.</p>\r\n<p style="margin-bottom: 6pt; text-align: center; line-height: normal;" align="center">Die WienerMittel<em>Schule</em> hat ein pädagogisches Grundkonzept:</p>\r\n<p style="margin-bottom: 6pt; text-align: center; line-height: normal;" align="center">Sie ist als "Leistungsschule", als <strong>„AHS +“</strong> definiert.</p>\r\n<p style="margin-bottom: 6pt; line-height: normal;">Das bedeutet, dass die Leistungsanforderungen der WienerMittel<em>Schule</em> diejenigen einer AHS sind, erweitert um die Fördersysteme anderer Schularten.</p>\r\n<p style="margin-bottom: 6pt; line-height: normal;">Teamteaching, Erweiterungs- und Trainingskurse, Lerncoaching, optimale Förderung der Schülerinnen und Schüler durch Individualisierung und Personalisierung des Unterrichts, sowie NahtstellenpädagogInnen sind nur einige der Säulen der WienerMittel<em>Schule</em>.</p>\r\n<p style="margin-bottom: 6pt; line-height: normal;">Doch gilt für den Contiweg, sich nicht nur intensiv mit dem Thema „WienerMittel<em>Schule</em>“ zu beschäftigen, es gilt auch eine ansprechende Oberstufe anzubieten.</p>\r\n<p style="margin-bottom: 6pt; line-height: normal;">Eine Schule aufzubauen, Kinder ihren Talenten gemäß zu fördern und zu fordern, Schulschwerpunkte zu setzen, den Schulversuch NeueMittel<em>Schule </em>auszubauen, eine Oberstufe zu gestalten, Schülerinnen und Schüler zur neuen, standardisierten Reifeprüfung zu führen ist eine große Herausforderung – für die Lehrerinnen und Lehrer, für die Eltern und nicht zuletzt auch für die Leitung der Schule. Dazu bedarf es eines besonders engagierten Lehrer/innenteams – wie es in unserer Schule, am Contiweg zu finden ist.</p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;">Mag. Monika Auböck</p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;">Direktorin</p>', '', 1, 2, '2013-12-05 07:50:48', 365, '', '2014-03-20 16:31:31', 367, 0, '0000-00-00 00:00:00', '2013-12-05 07:50:48', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 22, '', '', 1, 859, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(35, 70, 'LehrerInnen', 'lehrerinnen', '<p>Zurzeit direktverlinkung zu pdf.</p>', '', 1, 2, '2013-12-05 07:50:59', 365, '', '2014-03-20 16:51:10', 367, 0, '0000-00-00 00:00:00', '2013-12-05 07:50:59', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 21, '', '', 1, 7, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(36, 71, 'SchülerInnen', 'schuelerinnen', '<p><a href="images/Bilder/Schulteam/Schuelerinnen/1A.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/1A.jpg" alt="1A" width="415" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/1B.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/1B.jpg" alt="1B" width="415" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/1C.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/1C.jpg" alt="1C" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/1CA.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/1CA.jpg" alt="1CA" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/1CB.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/1CB.jpg" alt="1CB" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/1CC.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/1CC.jpg" alt="1CC" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/1D.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/1D.jpg" alt="1D" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/1E.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/1E.jpg" alt="1E" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/1F.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/1F.jpg" alt="1F" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/2A.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/2A.jpg" alt="2A" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/2B.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/2B.jpg" alt="2B" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/2C.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/2C.jpg" alt="2C" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/2CA.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/2CA.jpg" alt="2CA" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/2CB.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/2CB.jpg" alt="2CB" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/2CC.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/2CC.jpg" alt="2CC" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/2CD.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/2CD.jpg" alt="2CD" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/2D.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/2D.jpg" alt="2D" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/2E.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/2E.jpg" alt="2E" width="416" height="300" /><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/2F.jpg" alt="2F" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/3A.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/3A.jpg" alt="3A" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/3B.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/3B.jpg" alt="3B" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/3C.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/3C.jpg" alt="3C" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/3D.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/3D.jpg" alt="3D" width="416" height="300" /><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/3E.jpg" alt="3E" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/3F.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/3F.jpg" alt="3F" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/3G.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/3G.jpg" alt="3G" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/3H.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/3H.jpg" alt="3H" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/4A.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/4A.jpg" alt="4A" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/4B.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/4B.jpg" alt="4B" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/4C.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/4C.jpg" alt="4C" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/4D.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/4D.jpg" alt="4D" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/4E.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/4E.jpg" alt="4E" width="416" height="300" /><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/4F.jpg" alt="4F" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/4G.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/4G.jpg" alt="4G" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/4H.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/4H.jpg" alt="4H" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/5A.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/5A.jpg" alt="5A" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/5B.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/5B.jpg" alt="5B" width="416" height="300" /></a><a href="images/Bilder/Schulteam/Schuelerinnen/5C.jpg"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulteam/Schuelerinnen/5C.jpg" alt="5C" width="416" height="300" /></a></p>', '', 1, 2, '2013-12-05 07:51:12', 365, '', '2014-03-21 17:54:26', 367, 0, '0000-00-00 00:00:00', '2013-12-05 07:51:12', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 10, 20, '', '', 1, 923, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `joem2_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(39, 74, 'Psychologin', 'psychologin', '<p style="line-height: 115%;"><span class="text1"><strong><span style="font-size: 14pt; line-height: 115%;">Mag.<sup>a</sup> Dr.<sup>in</sup> Marlis Posch</span></strong></span></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: 115%;"><span style="font-size: 12pt; line-height: 115%;">Schulpsychologin des ÖZPGS </span></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: 115%;"><span style="font-size: 12pt; line-height: 115%;">Klinische Psychologin</span></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: 115%;"><span style="font-size: 12pt; line-height: 115%;">Gesundheitspsychologin</span></p>\r\n<p style="line-height: 115%;"><span class="text1"><br /> </span><span class="text1"><span style="font-size: 12pt; line-height: 115%;">Telefon: 0664 / 885 88 275 (vormittags)</span></span><span style="font-size: 12pt; line-height: 115%;"><br /> <span class="text1">Sprechstunden:</span><br /> <span class="text1">Terminvereinbarungen unter der angegebenen Handynummer</span><br /> </span><a href="mailto:marlis.posch@oezpgs.at"><span style="font-size: 12pt; line-height: 115%;">marlis.posch@oezpgs.at </span></a></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: 115%;"><strong><span style="font-size: 14pt; line-height: 115%;">Was ich anbieten kann:</span></strong></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: 115%;"><strong><span style="font-size: 12pt; line-height: 115%;">für SchülerInnen: </span></strong></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: 115%;"><span style="font-size: 12pt; line-height: 115%;">• </span><span style="font-size: 12pt; line-height: 115%;">wenn du Probleme mit KlassenkameradInnen hast,</span></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: 115%;"><span style="font-size: 12pt; line-height: 115%;">• </span><span style="font-size: 12pt; line-height: 115%;">wenn du Streit mit FreundInnen hast,</span></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: 115%;"><span style="font-size: 12pt; line-height: 115%;">• </span><span style="font-size: 12pt; line-height: 115%;">wenn es Gewalt in deiner Klasse gibt,</span></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: 115%;"><span style="font-size: 12pt; line-height: 115%;">• </span><span style="font-size: 12pt; line-height: 115%;">wenn du Probleme mit Lehrern oder Lehrerinnen hast,</span></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: 115%;"><span style="font-size: 12pt; line-height: 115%;">• </span><span style="font-size: 12pt; line-height: 115%;">wenn du Schwierigkeiten hast und einfach reden möchtest. </span></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: 115%;"><strong><span style="font-size: 12pt; line-height: 115%;">für Eltern: </span></strong></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: 115%;"><span style="font-size: 12pt; line-height: 115%;">• </span><span style="font-size: 12pt; line-height: 115%;">wenn Sie Beratung bei Verhaltens</span><span style="font-size: 12pt; line-height: 115%;">- </span><span style="font-size: 12pt; line-height: 115%;">und Erziehungsproblemen haben möchten,</span></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: 115%;"><span style="font-size: 12pt; line-height: 115%;">• </span><span style="font-size: 12pt; line-height: 115%;">wenn es Schwierigkeiten in der Klasse Ihres Kindes gibt,</span></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: 115%;"><span style="font-size: 12pt; line-height: 115%;">• </span><span style="font-size: 12pt; line-height: 115%;">wenn Sie Konflikte mit Lehrerinnen oder Lehrern haben. </span></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: 115%;"><strong><span style="font-size: 12pt; line-height: 115%;">für LehrerInnen: </span></strong></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: 115%;"><span style="font-size: 12pt; line-height: 115%;">• </span><span style="font-size: 12pt; line-height: 115%;">wenn Sie begleitende Beratung bei Verhaltensproblemen von SchülerInnen haben möchten,</span></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: 115%;"><span style="font-size: 12pt; line-height: 115%;">• </span><span style="font-size: 12pt; line-height: 115%;">wenn es Mobbing und Konflikte unter SchülerInnen gibt,</span></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: 115%;"><span style="font-size: 12pt; line-height: 115%;">• </span><span style="font-size: 12pt; line-height: 115%;">wenn Sie Beratung für Konflikte mit Eltern haben möchten,</span></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: 115%;"><span style="font-size: 12pt; line-height: 115%;">• </span><span style="font-size: 12pt; line-height: 115%;">wenn Sie Unterstützung in der Klasse brauchen (z.B. Workshops, Projekte, Soziales Lernen, Spiele</span><span style="font-size: 12pt; line-height: 115%;">etc.)</span></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: 115%;"><span style="font-size: 12pt; line-height: 115%;">.</span></p>\r\n<p style="margin-bottom: 0.0001pt; text-align: center; line-height: 115%;" align="center"><strong><span style="text-decoration: underline;"><span style="font-size: 12pt; line-height: 115%;">Sprechtage:</span></span></strong></p>\r\n<p style="margin-bottom: 0.0001pt; text-align: center; line-height: 115%;" align="center"><strong><span style="font-size: 12pt; line-height: 115%;">1x pro Woche abwechselnd Mittwoch oder Donnerstag, jeweils 1.- 6. Stunde</span></strong></p>\r\n<p style="margin-bottom: 0.0001pt; text-align: center; line-height: 115%;" align="center"><strong><span style="text-decoration: underline;"><span style="font-size: 12pt; line-height: 115%;">Ort:</span></span></strong></p>\r\n<p style="margin-bottom: 0.0001pt; text-align: center; line-height: 115%;" align="center"><strong><span style="font-size: 12pt; line-height: 115%;">Beratungszimmer, 1. Stock, gegenüber Lehrerzimmer 3</span></strong></p>\r\n<p style="margin-bottom: 0.0001pt; text-align: center; line-height: 115%;" align="center"><strong><span style="text-decoration: underline;"><span style="font-size: 12pt; line-height: 115%;">Terminvereinbarung</span></span></strong><strong><span style="font-size: 12pt; line-height: 115%;">:</span></strong></p>\r\n<p style="margin-bottom: 0.0001pt; text-align: center; line-height: 115%;" align="center"><strong><span style="font-size: 12pt; line-height: 115%;">Im Sekretariat der Schule</span></strong></p>\r\n<p style="margin-bottom: 0.0001pt; text-align: center; line-height: 115%;" align="center"><strong><span style="text-decoration: underline;"><span style="font-size: 12pt; line-height: 115%;">oder unter:</span></span></strong></p>\r\n<p style="margin-bottom: 0.0001pt; text-align: center; line-height: 115%;" align="center"><strong><span style="font-size: 12pt; line-height: 115%;">Tel.: 0664 / 885 88 275 (vormittags)</span></strong></p>\r\n<p style="margin-bottom: 0.0001pt; text-align: center; line-height: 115%;" align="center"><strong><span style="font-size: 12pt; line-height: 115%;">email: </span></strong><a href="mailto:marlis.posch@oezpgs.at"><strong><span style="font-size: 12pt; line-height: 115%;">marlis.posch@oezpgs.at</span></strong></a></p>', '', 1, 2, '2013-12-05 07:51:43', 365, '', '2014-03-21 18:01:41', 367, 0, '0000-00-00 00:00:00', '2013-12-05 07:51:43', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 19, '', '', 1, 200, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(40, 75, 'Schulärztin', 'schulaerztin', '<p><span class="text1"><strong>Dr. Alexandra Schmidt-Trost</strong></span><br /> <span class="text1">Dienstag und Donnerstag: 8.00 – 13.00 Uhr</span><br /> <br /> <span class="text1"><strong>Dr. Hannes Riedl</strong></span><strong><br /> </strong><span class="text1">Mittwoch, 8.00 – 11.00 Uhr, Standort Contiweg</span><br /> <span class="text1">Donnerstag, 8.00 – 11.00 Uhr, Standort Simonsgasse</span></p>', '', 1, 2, '2013-12-05 07:51:55', 365, '', '2014-03-21 18:03:21', 367, 0, '0000-00-00 00:00:00', '2013-12-05 07:51:55', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 18, '', '', 1, 180, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(41, 76, 'BetreuungslehrerIn', 'betreuungslehrerin', '<p style="margin-bottom: 0.0001pt; line-height: normal; text-align: left;">&nbsp;</p>\r\n<table border="0" align="center">\r\n<tbody>\r\n<tr>\r\n<td style="border: 1px solid white;"><a href="images/Bilder/Schulteam/Betreuungslehrerin/betreuungslehrerin1.jpg"><img src="images/Bilder/Schulteam/Betreuungslehrerin/betreuungslehrerin1.jpg" alt="betreuungslehrerin1" width="151" height="150" /></a></td>\r\n<td style="border: 1px solid white;">Mag Inge Schmidt –Heger\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;">Montag 7.00-11.30, Freitag 7.00-13.30</p>\r\n<a href="mailto:inge.schmidt-heger.@aon.at">inge.schmidt-heger.@aon.at</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;"><strong><span style="text-decoration: underline;">Wer kann SchülerInnenberatung in Anspruch nehmen?</span></strong></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;">SchülerInnen,</p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;">Mütter,</p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;">Väter,</p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;">Familien,</p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;">LehrerInnen,</p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;">Klassen</p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;"><strong><span style="text-decoration: underline;">Wann ist der richtige Zeitpunkt für SchülerInnenberatung?</span></strong></p>\r\n<p>Wenn Probleme mit sich selbst auftauchen ( z.B. Ängste, Unsicherheit, Krankheit, Niedergeschlagenheit….),</p>\r\n<p>wenn es Probleme mit anderen gibt (Eltern, Lehrern, Mitschülern, Freunden), wenn die eigene Lösungskompetenz nicht mehr ausreicht, der Leidensdruck zu groß wird oder ein starker Wunsch nach Veränderung besteht……dann freue ich mich über ein erstes Kennenlernen.</p>\r\n<p><strong><span style="text-decoration: underline;">Wie finden Terminvereinbarungen statt?</span></strong></p>\r\n<p>Entweder du schaust zur Terminvereinbarung in meinen Sprechstunden vorbei oder du kontaktierst mich telephonisch oder per Email</p>\r\n<p><strong><span style="text-decoration: underline;">Was geschieht in der SchülerInnenberatung?</span></strong></p>\r\n<p>Ich arbeite systemisch und lösungsorientiert und unterliege der Schweigepflicht. Im geschützten Rahmen des gemeinsamen Gesprächs suchen wir gemeinsam neue Wege und hilfreiche Handlungsalternativen, die zu einer Entlastung führen. Die Stärkung des Selbstwertgefühls ist dabei ein besonderes Anliegen, weil es eine wichtige Basis im Umgang mit den Mitmenschen darstellt und die Konfliktfähigkeit erhöht. Zu meinen Aufgaben zählt auch die Vermittlung zwischen Konfiktpartnern, die Verbesserung des Klassenklimas und die Vergrößerung des Verständnisses für SchülerInnen mit Problemen. Es gibt</p>\r\n<p>Einzelgespräche</p>\r\n<p>längerfristige Betreuung</p>\r\n<p>Familienberatung</p>\r\n<p>Krisenintervention</p>\r\n<p>Arbeit mit Gruppen</p>\r\n<p><strong><span style="text-decoration: underline;">Wo findet die Beratung statt?</span></strong></p>\r\n<p>Das Beratungszimmer befindet sich auf dem Gang der LehrerInnenräume, rechts ganz hinten.</p>\r\n<p>Ich freu mich auf ein erstes Gespräch in meiner Sprechstunde!</p>\r\n<p>&nbsp;</p>', '', 1, 2, '2013-12-05 07:52:04', 365, '', '2014-03-21 18:24:17', 367, 371, '2014-04-11 09:03:27', '2013-12-05 07:52:04', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 11, 17, '', '', 1, 192, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(43, 78, 'BildungsberaterInnen', 'bildungsberaterinnen', '<table border="0" align="center">\r\n<tbody>\r\n<tr>\r\n<td style="border: 1px solid white;">\r\n<p style="margin: 6pt 0cm;"><span style="font-size: 12pt; line-height: 115%;">Mag.<sup>a </sup> Ursula Wischounig-Schneider</span></p>\r\n<p style="margin: 6pt 0cm;"><a href="mailto:ursula.wischounig@contiweg.at"><span style="font-size: 12pt; line-height: 115%;">ursula.wischounig@contiweg.at</span></a></p>\r\n</td>\r\n<td style="border: 1px solid white;">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style="border: 1px solid white;">\r\n<p style="margin: 6pt 0cm;"><span style="font-size: 12pt; line-height: 115%;">Mag.<sup>a</sup> Eva Stockinger</span></p>\r\n<p style="margin: 6pt 0cm;"><a href="mailto:eva.stockinger@contiweg.at"><span style="font-size: 12pt; line-height: 115%;">eva.stockinger@contiweg.at</span></a></p>\r\n</td>\r\n<td style="border: 1px solid white;"><a href="images/Bilder/Schulteam/Bildungsberaterin/bildungsberaterin1.png"><img src="images/Bilder/Schulteam/Bildungsberaterin/bildungsberaterin1.png" alt="bildungsberaterin1" width="100" height="150" /></a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style="margin: 6pt 0cm;"><strong><span style="font-size: 14pt; line-height: 115%;">Die Aufgabenfelder der Schüler- und Bildungsberatung</span></strong></p>\r\n<p style="margin: 6pt 0cm;">Schüler- und Bildungsberater/innen haben zwei Aufgabenfelder, die sich gegenseitig ergänzen und miteinander in Zusammenhang stehen:</p>\r\n<ol style="margin-top: 0cm;" start="1">\r\n<li style="margin-top: 6pt; margin-bottom: 6pt;"><strong>Information </strong>als Orientierungshilfe und Entscheidungsvorbereitung: Sie informieren über weiterführende Ausbildungsmöglichkeiten bzw. Ausbildungsalternativen. Schülerinnen und Schüler bzw. deren Eltern werden über <strong>Bildungsgänge</strong>, deren <strong>Eingangsvoraussetzungen </strong>und <strong>Abschlussqualifikationen </strong>informiert. Die Information erfolgt durch Klassenvorträge, Vorträge bei Elternabenden, Weitergabe von Informationsmaterialien, die Einladung von externen Expertinnen und Experten sowie die Organisation von Exkursionen und Betriebsbesichtigungen.</li>\r\n<li style="margin-top: 6pt; margin-bottom: 6pt;"><strong>Individuelle Beratung und Vermittlung von Hilfe</strong>: Schüler- und Bildungsberater/innen bieten Schülerinnen und Schülern bzw. deren Eltern individuelle Beratung an. Diese Beratung kann <strong>Laufbahnfragen </strong>und/oder andere <strong>persönliche Probleme </strong>betreffen (z.B. Lern- oder Verhaltensschwierigkeiten) bzw. auch in der Vermittlung von Hilfe durch andere Beratungs- oder Betreuungseinrichtungen zum Ausdruck kommen. Schüler- und Bildungsberater/innen sollen in diesem Sinn eine erste <strong>Anlaufstelle für Schwierigkeiten </strong>in und mit der Schule darstellen.</li>\r\n</ol>', '', 1, 2, '2013-12-05 07:52:24', 365, '', '2014-03-21 18:22:47', 367, 0, '0000-00-00 00:00:00', '2013-12-05 07:52:24', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 16, '', '', 1, 176, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(44, 79, 'AbsolventInnen', 'absolventinnen', '<p style="text-align: center;">{loadposition countdown}</p>\r\n<p style="text-align: center;">&nbsp;</p>\r\n<p style="text-align: center;"><strong><span style="font-size: 18pt;">bis zu unserer ersten Maturafeier</span></strong></p>', '', 1, 2, '2013-12-05 07:52:39', 365, '', '2014-04-10 22:23:36', 371, 0, '0000-00-00 00:00:00', '2013-12-05 07:52:39', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"1","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 14, 15, '', '', 1, 223, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(46, 81, 'SGA', 'sga', '<p><strong><span style="font-size: 14pt;">SCHULGEMEINSCHAFTSAUSSCHUSS – SGA</span></strong></p>\r\n<p><span style="font-size: 12pt;"><span style="font-family: arial,helvetica,sans-serif;">Der SGA i</span>st ein Gremium, das an höheren Schulen zur Förderung und Festigung der Schulgemeinschaft zu bilden ist.</span><br /><span style="font-size: 12pt;">Im SGA werden Beratungen und Entscheidungen bezüglich Aufgaben und Themen, die sich aus dem aktuellen Geschehen der Schule ergeben, getroffen.Die <a class="wf_file" href="images/Bilder/Schulpartner/SGA/Gesetzliche_Grundlage_des_SGA.pdf"><span class="wf_file_text">gesetzlichen Grundlagen des SGA</span></a>&nbsp; sind im §64 des Schulunterrichtsgesetzes (SchUG §64) festgelegt.Dem Schulgemeinschaftsausschuss gehören die Schulleiterin und je <strong>3 VertreterInnen</strong> der <strong>LehrerInnen</strong>, der <strong>SchülerInnen</strong> und der <strong>Erziehungsberechtigten</strong> an.</span></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;"><strong><span style="font-size: 13pt;">SchülerInnenvertretung Contiweg 2013/14</span></strong></p>\r\n<p><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;">Schulsprecherin: </span><br /><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;"> Julia Chmela (5A)</span><br /><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;"> <a>julia.chmela@contiweg.at</a></span></p>\r\n<p><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;">Schulsprecherstellvertreterin: </span><br /><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;"> Dilek Karakütük (5A) </span><br /><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;"><a>dilek.karakuetuek@contiweg.at</a></span></p>\r\n<p><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;">Unterstufensprecherin: </span><br /><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;">Linda Kurnava (4D)</span></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;"><strong><span style="font-size: 13pt;">SCHULGEMEINSCHAFTSAUSSCHUSS 2013/14</span></strong></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;"><strong>ElternvertreterInnen SGA</strong></span></p>\r\n<p>Stefan Köhrl <br />(<a href="mailto:stefan.koehrl@tele2.at">stefan.koehrl@tele2.at</a>)</p>\r\n<p><a></a>Elisabeth Happel <br />(<a href="mailto:elisabeth.happel@bahlsen.com">elisabeth.happel@bahlsen.com</a>)</p>\r\n<p>Michaela Zweckmayr <br />(<a href="mailto:zweckmayr@teletronic.at">zweckmayr@teletronic.at</a>)</p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;"><strong>LehrervertreterInnen SGA: </strong></span></p>\r\n<p><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;">Ursula Dichtl </span><br /><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;"> <a href="mailto:ursula.dichtl@contiweg.at">ursula.dichtl@contiweg.at</a></span><br /><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;">Florian Premstaller </span><br /><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;"> <a href="mailto:florian.premstaller@contiweg.a">florian.premstaller@contiweg.at</a></span><br /><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;">Maria Schirmböck </span><br /><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;">maria.schirmboeck@contiweg.at</span></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;"><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;"><strong>SchülervertreterInnen SGA</strong></span></p>\r\n<p><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;">Julia Chmela (5A) </span><br /><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;"> <a href="mailto:julia.chmela@contiweg.at">julia.chmela@contiweg.at</a></span></p>\r\n<p><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;">Dilek Karakütük (5A) </span><br /><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;"> <a href="mailto:dilek.karakuetuek@contiweg.at">dilek.karakuetuek@contiweg.at</a></span></p>\r\n<p><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;">Lisa Köhrl (5A) </span><br /><span style="font-family: arial,helvetica,sans-serif; font-size: 12pt;"> <a href="mailto:lisa.koehrl@contiweg.at"></a><a>lisa.koehrl@contiweg.at</a></span></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;">&nbsp;</p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;">&nbsp;</p>', '', 1, 2, '2013-12-05 07:56:30', 365, '', '2014-04-10 22:11:01', 371, 0, '0000-00-00 00:00:00', '2013-12-05 07:56:30', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 26, 14, '', '', 1, 332, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(47, 82, 'Kooperationen', 'sponsoren', '<p style="margin-bottom: 8pt; line-height: 107%;"><strong><span style="font-size: 16pt; line-height: 107%;">Wir danken folgenden Firmen und Vereinen für die erfolgreiche Kooperation mit der Schule</span></strong></p>\r\n<p style="margin-bottom: 8pt; line-height: 107%;"><a href="images/Bilder/Schulpartner/Kooperationen/kooperationen1.jpg"><strong><span style="font-size: 16pt; line-height: 107%;"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulpartner/Kooperationen/kooperationen1.jpg" alt="kooperationen1" width="765" height="100" /></span></strong></a></p>\r\n<hr />\r\n<p style="margin-bottom: 8pt; line-height: 107%;">&nbsp;</p>\r\n<p style="margin-bottom: 8pt; line-height: 107%;">&nbsp;</p>\r\n<table style="border-color: #ffffff; border-width: 1px; border-style: solid;">\r\n<tbody>\r\n<tr style="border-color: #ffffff; border-width: 1px;">\r\n<td style="border: 1px solid white;"><a href="images/Bilder/Schulpartner/Kooperationen/kooperationen2.jpg"><img src="images/Bilder/Schulpartner/Kooperationen/kooperationen2.jpg" alt="kooperationen2" width="198" height="175" /></a></td>\r\n<td style="border: 1px solid white;"><strong><span style="font-size: 14pt; font-family: ''Calibri'',''sans-serif'';">Spende für den Schulskikurs<br /> Sportique Kagran unterstützt die Familien sozial schwächerer Schüler und Schülerinnen an der Wiener AHS Contiweg</span></strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><span style="font-size: 11pt;">Mitte Jänner 2014 überreichte Klaus Rauscher, Geschäftsführer der Sportique Kagran, einen Scheck über 300,-- Euro an Monika Auböck, die Direktorin der AHS Contiweg im 22. Wiener Gemeindebezirk. Die Summe geht an den Elternverein der Schule. Er unterstützt mit diesem Geld sozial schwächere Familien, damit alle Schüler und Schülerinnen an den Schulskikursen der AHS teilnehmen können. <br /> <br /> <strong>Scheck für Kinder statt „Give-aways“ für Gäste<br /> </strong>Im Sinne des Nachhaltigkeitscredos der Sportique Kagran wurde bei der Eröffnung des Sportgeschäftes im Dezember des Vorjahres bewusst auf „Give-aways“ verzichtet. Dafür stellte Klaus Rauscher der AHS Contiweg 5,-- Euro pro Besucher für die Unterstützung der Schulskikurse zur Verfügung – in Summe 300,-- Euro.</span></p>', '', 1, 2, '2013-12-05 07:56:41', 365, '', '2014-03-24 12:26:23', 367, 0, '0000-00-00 00:00:00', '2013-12-05 07:56:41', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 12, 13, '', '', 1, 201, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(48, 83, 'Links', 'links', '<p><a href="images/Bilder/Schulpartner/Links/link1.gif"><img src="images/Bilder/Schulpartner/Links/link1.gif" alt="link1" /></a><br /><a href="http://www.stadtschulrat.at">www.stadtschulrat.at</a></p>\r\n\r\n<p><a href="images/Bilder/Schulpartner/Links/link2.jpg"><img src="images/Bilder/Schulpartner/Links/link2.jpg" alt="link2" width="651" height="100" /></a><br /><a href="http://www.bmukk.gv.at">http://www.bmukk.gv.at</a></p>\r\n\r\n<p>Atelier Heiss, Architekten<br/>\r\n<p><a href="http://www.atelier-heiss.at/projekt01/index.php?idcatside=56">http://www.atelier-heiss.at/projekt01/index.php?idcatside=56</a></p>', '', 1, 2, '2013-12-05 07:56:50', 365, '', '2014-03-23 08:31:52', 367, 0, '0000-00-00 00:00:00', '2013-12-05 07:56:50', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 12, '', '', 1, 313, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(49, 84, 'Impressum', 'impressum', '<p><span class="text1"><strong><span style="font-size: 12pt; line-height: 107%; font-family: ''Calibri'',''sans-serif'';">Medieninhaber </span></strong></span><strong><span style="font-size: 12pt; line-height: 107%; font-family: ''Calibri'',''sans-serif'';"><br /> </span></strong><span class="text2"><span style="font-size: 12pt; line-height: 107%; font-family: ''Calibri'',''sans-serif'';">Contiweg Wien (BG BRG XXII) </span></span><span style="font-size: 12pt; line-height: 107%; font-family: ''Calibri'',''sans-serif'';"><br /> <br /> <span class="text1"><strong>Sitz </strong></span><br /> <span class="text2">1220 Wien, Contiweg 1 </span><br /> <span class="text1">Vertreten durch </span><br /> <span class="text2">Mag.<sup>a</sup> Monika Auböck, Direktorin </span><br /> <br /> <span class="text1"><strong>Redaktion </strong></span><strong><br /> </strong><span class="text2">Mag.<sup>a</sup> Monika Auböck, Direktorin</span><br /> <span class="text2">Lehrer und Lehrerinnen, Schüler und Schülerinnen der Schule</span><br /> <br /> <span class="text1"><strong>Erklärung über die grundlegende Richtung</strong> </span><br /> <span class="text2">www.contiweg.at ist die offizielle Webseite der Schule. Sie informiert über das Schulprofil, das Schulteam, die Fächer, Unterrichtsprojekte, Schulveranstaltungen und Termine. </span><br /> <br /> <span class="text1"><strong>Urheberrechtliche Bestimmungen </strong></span><br /> <span class="text2">Vervielfältigungen (Abspeichern, Ausdrucken, Versenden und dgl.) von Informationen, die auf dieser Website enthalten sind, sind nur zum eigenen Gebrauch zulässig (§ 42 Urheberrechtsgesetz). </span><br /> <br /> <span class="text1"><strong>Haftung für Inhalte</strong> </span><br /> <span class="text2">Namentlich gekennzeichnete Beiträge und Beiträge auf <a href="http://www.Contiweg.at/">http://www.Contiweg.at/</a> geben die persönliche Meinung des jeweiligen Autors wieder - die Schule ist dafür nicht verantwortlich, sofern es von einer rechtswidrigen Tätigkeit oder Information keine tatsächliche Kenntnis hat und sich in Bezug auf Schadenersatzansprüche auch keiner Tatsachen oder Umstände bewusst ist, aus denen eine rechtswidrige Tätigkeit oder Information offensichtlich wird. </span><br /> <br /> <span class="text2">Sollten Sie Kenntnis von rechtswidrigen Inhalten auf unseren Seiten erlangen, senden Sie bitte umgehend eine E-Mail an Mag.<sup>a</sup> Monika Auböck. Wir werden daraufhin unverzüglich tätig, um diese Inhalte zu entfernen oder den Zugang zu diesen Inhalten zu sperren. </span><br /> <br /> <span class="text1"><strong>Haftung für Hyperlinks </strong></span><strong><br /> </strong><span class="text2">Die Schule ist gemäß §17 des E-Commerce-Gesetzes für die Informationen, auf die mittels Hyperlinks verwiesen wird (externe Hyperlinks), nicht verantwortlich, solange es von der Rechtswidrigkeit der Information keine tatsächliche Kenntnis hat und sich in Bezug auf Schadenersatzansprüche auch keiner Tatsachen oder Umstände bewusst ist, aus denen die etwaige rechtswidrige Tätigkeit oder Information offensichtlich wird. </span><br /> <br /> <span class="text2">Sollten Sie Kenntnis von rechtswidrigen Inhalten erlangen, auf die von <a href="http://www.Contiweg.at/">http://www.Contiweg.at/</a> aus verwiesen wird, senden Sie bitte umgehend ein E-Mail an Mag.<sup>a</sup> Monika Auböck. Wir werden daraufhin unverzüglich tätig, um diese elektronischen Verweise (Hyperlinks) zu entfernen. Eine allgemeine Überprüfungspflicht der Inhalte, auf die verwiesen wird, trifft die Schule nicht. </span><br /> <br /> </span></p>', '', 1, 2, '2013-12-05 08:40:04', 365, '', '2014-03-23 12:27:38', 367, 0, '0000-00-00 00:00:00', '2013-12-05 08:40:04', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 11, '', '', 1, 133, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(50, 86, 'Termine', 'termine', 'Für Details zu den einzelnen Terminen klicken Sie auf den jeweiligen Kalendereintrag.\r\n\r\n', '', 1, 2, '2013-12-29 14:18:24', 367, '', '2013-12-29 14:38:18', 367, 0, '0000-00-00 00:00:00', '2013-12-29 14:18:24', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"1","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 10, 10, '', '', 1, 257, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(52, 88, 'Aktivitäten', 'aktivitaeten', '<pre><span style="font-size: 14pt; font-family: arial,helvetica,sans-serif;">Seite in Arbeit<br />Informationen folgen</span><br /><span style="font-size: 14pt; font-family: arial,helvetica,sans-serif;">Wir bitten um Verständnis</span></pre>\r\n<p>&nbsp;</p>', '', 1, 2, '2014-03-03 06:44:20', 367, '', '2014-04-10 22:27:34', 371, 0, '0000-00-00 00:00:00', '2014-03-03 06:44:20', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 7, 9, '', '', 1, 256, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(53, 89, 'Veranstaltungen', 'student-of-the-year', '<p>Informationen folgen!!!</p>', '', 1, 2, '2014-03-03 06:44:43', 367, '', '2014-04-11 17:27:18', 367, 0, '0000-00-00 00:00:00', '2014-03-03 06:44:43', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 8, '', '', 1, 287, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(54, 90, 'Awards', 'creative-award', '<p>Informationen folgen!!!</p>', '', 1, 2, '2014-03-03 06:45:07', 367, '', '2014-04-11 17:26:53', 367, 0, '0000-00-00 00:00:00', '2014-03-03 06:45:07', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 7, '', '', 1, 205, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(55, 91, 'Buffet', 'buffet', '<p>Informationen folgen!!!</p>', '', 1, 2, '2014-03-03 09:39:20', 367, '', '2014-03-23 15:57:17', 367, 0, '0000-00-00 00:00:00', '2014-03-03 09:39:20', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 6, '', '', 1, 203, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(56, 92, 'Unterrichtszeiten', 'unterrichtszeiten', '<p>Zurzeit direktverlinkung.</p>', '', 1, 2, '2014-03-03 11:17:20', 367, '', '2014-03-23 11:15:13', 367, 0, '0000-00-00 00:00:00', '2014-03-03 11:17:20', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 5, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(57, 93, 'Elternverein', 'elternverein-neu', '<p style="margin-bottom: 0.0001pt; line-height: normal;"><a href="images/Bilder/Schulpartner/ElternvereinNeu/elternverein1.jpg"><strong><span style="font-size: 16pt;"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/Bilder/Schulpartner/ElternvereinNeu/elternverein1.jpg" alt="elternverein1" width="423" height="175" /></span></strong></a></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal; text-align: center;"><strong><span style="font-size: 14pt;">www.contiweg.org</span></strong></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;"><strong><span style="font-size: 16pt;">Elternverein Contiweg</span></strong></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;"><strong><span style="font-size: 14pt;">Vorstand des EV-Contiweg 2013/2014</span></strong></p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;">Obmann: <br /> Stefan Köhrl (<a>stefan.koehrl@tele2.at</a><a href="mailto:stefan.koehrl@tele2.at"></a>)</p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;">Obmann/Stv.: <br /> Fritz Tschemernjak (<a>fritz.tschemernjak@chello.at</a><a href="mailto:fritz.tschemernjak@chello.at"></a>)</p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;">Obmann/2. Stv.: <br />Sandra Schauer (<a>sandra.schauer.elternstv@gmail.com</a><a href="mailto:sandra.schauer.elternstv@gmail.com"></a>)</p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;">Kassier: <br />Karin Seufert (<a href="mailto:karin.seufert@aon.at">karin.seufert@aon.at</a>)</p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;">Kassier/Stv: <br /> Michaela Zweckmayr(<a href="mailto:zweckmayr@teletronic.at">zweckmayr@teletronic.at</a>)</p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;">Schriftführerin: <br /> Gabriele Loacker (<a href="mailto:gabriele.loacker@volksbank.com">gabriele.loacker@volksbank.com</a>)</p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;">Stv. Schriftführerin: <br /> Ulrike Bauer-Marquardt (<a href="mailto:bauer-marquardt@chello.at">bauer-marquardt@chello.at</a>)</p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;">Rechnungsprüfer 1: <br /> Jürgen Kromp (<a href="mailto:juergen@kromp.org">juergen@kromp.org</a>)</p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;">Rechnungsprüfer 2: <br /> Sabine Modl-Liess (<a href="mailto:herbert.liess@chello.at">herbert.liess@chello.at</a>)</p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;">&nbsp;</p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;">&nbsp;</p>\r\n<p style="margin-bottom: 0.0001pt; line-height: normal;">&nbsp;</p>', '', 1, 2, '2014-03-03 11:57:52', 367, '', '2014-04-10 22:21:43', 371, 0, '0000-00-00 00:00:00', '2014-03-03 11:57:52', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 9, 4, '', '', 1, 217, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(59, 95, 'Registrieren', 'registrieren', '<iframe width="100%" scrolling="auto" height="500" frameborder="0" class="wrappercontiuni" src="/contiuni/registrieren.php" name="" id="blockrandom" onload="iFrameHeight()" style="height: 490px;">\r\n    Keine IFrames</iframe>', '', 1, 2, '2014-03-05 06:51:29', 367, '', '2014-03-05 06:53:42', 367, 0, '0000-00-00 00:00:00', '2014-03-05 06:51:29', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 3, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `joem2_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(60, 96, 'Sprechstunden', 'sprechstunden', '<p>Zurzeit direktverlinkung zu pdf.</p>', '', 1, 2, '2014-03-23 11:05:10', 367, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-03-23 11:05:10', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(61, 98, 'Contiuni', 'contiuni', '<p style="text-align: justify;"><a href="images/Bilder/Contiuni/contiuni1.jpg"><img src="images/Bilder/Contiuni/contiuni1.jpg" alt="contiuni1" width="595" height="444" /></a>&nbsp;</p>\r\n<p style="text-align: justify;"><span style="font-size: 12pt;">Die <strong>Conti – Uni</strong> ist ein fixer Bestandteil des schulischen Angebots am Contiweg.</span></p>\r\n<p style="text-align: justify;">&nbsp;</p>\r\n<p><span style="font-size: 12pt;">Die Conti – Uni findet jahrgangs- und fächerübergreifend in der Unterstufe und der Oberstufe statt.</span></p>\r\n<p><span style="font-size: 12pt;">Während der Conti – Uni, die jeweils an den Tagen vor den Semester- bzw. Sommerferien stattfindet, werden von den LehrerInnen dieser Schule Klassenlehrausgänge und unterschiedlichste Workshops angeboten, für die die SchülerInnen sich nach eigenem Interesse anmelden können. Das Angebot reicht hier von Exkursionen wie zum Beispiel in die Müllverbrennungsanlage über Sportkurse wie Schnuppertauchen bis hin zu Kreativworkshops wie Guerilla – Knitting oder Graffiti und Sprachkursen, in denen nicht nur Spanisch gesprochen sondern auch gekocht wird.</span></p>\r\n<p><span style="font-size: 12pt;">Die Conti – Uni lässt sich mit zahlreichen didaktischen und pädagogischen Konzepten verbinden, soll aber in erster Linie einen Zweck erfüllen: den SchülerInnen und LehrerInnen möglichst viel Freude und Spaß zu bereiten!</span></p>\r\n<p><a href="index.php?option=com_wrapper&amp;view=wrapper&amp;Itemid=163">Zur Anmeldung</a></p>', '', 1, 8, '2014-03-23 12:33:41', 367, '', '2014-04-08 21:02:49', 371, 0, '0000-00-00 00:00:00', '2014-03-23 12:33:41', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 4, 1, '', '', 1, 187, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(62, 99, 'Elektronisches Klassenbuch', 'elektronischesklassenbuch', '<p style="margin-bottom: 0.0001pt;">Am Contiweg wird das elektronische Klassenbuch geführt.<br /> Das elektronische Klassenbuch vereinfacht den Informationsfluss innerhalb der Schulgemeinschaft!<br /> Die Kinder erhalten von der Schule die Zugangsdaten, die sie an die Eltern weitergeben.<br /> Sie können dann von Ihrem Computer, Tablet oder Handy auf das elektronische Klassenbuch zugreifen.</p>\r\n<p style="margin-bottom: 0.0001pt;">Im elektronischen Klassenbuch sehen Sie, ob Unterrichtsstunden entfallen, wann Ihre Kinder Schularbeiten und Tests haben.<br /> Fehlzeiten und „Zuspätkommen“ von Schüler/innen können durch die Eltern kontrolliert werden.<br /> Das elektronische Klassenbuch verfügt über ein Nachrichtensystem, in dem die Schule allgemeine Dinge (z.B. Elternabend) mitteilt.<br /> Auch können Krankmeldungen von Schüler/innen von den Eltern direkt eingetragen werden. Ein Anruf in der Schule ist dann nicht mehr erforderlich. Diese Eintragungen ersetzen aber nicht die schriftlichen Entschuldigungen mit der Unterschrift der Eltern.</p>\r\n<p style="margin-bottom: 0.0001pt;">Dem elektronischen Klassenbuch entnehmen Sie auch, ob Unterrichtsstunden entfallen.<br /> Deshalb werden (außer in den ersten Klassen) Stundenentfälle und vorzeitiger Unterrichtsschluss NICHT mehr in das Mitteilungsheft eingetragen. Sollte der Nachmittagsunterricht entfallen, entfällt auch die Mittagsbetreuung und Ihr Kind geht nach der letzten Vormittagsunterrichtsstunde nach Hause. Die Tagesbetreuung findet statt, sofern ihr Kind für diesen Tag angemeldet ist.</p>\r\n<p style="margin-bottom: 0.0001pt;">Es ist daher empfehlenswert, dass das elektronische Klassenbuch täglich einzusehen.</p>\r\n<p><a href="https://arche.webuntis.com/WebUntis/login.do?error=nomandant"><span>Starseite EKB</span></a></p>\r\n<p><a class="wf_file" href="images/Bilder/ElektronischesKlassenbuch/ekb.ppsx"><span class="wf_file_text">Präsentation EKB</span></a></p>\r\n<p><a class="wf_file" href="images/Bilder/ElektronischesKlassenbuch/kuerzel_lehrer.pdf"><span class="wf_file_text">Liste Abkürzungen Lehrer/innen</span></a></p>\r\n<p><a class="wf_file" href="images/Bilder/ElektronischesKlassenbuch/kuerzel_faecher.pdf"><span class="wf_file_text">Liste Abkürzungen Unterrichtsfächer </span></a></p>', '', 1, 12, '2014-03-23 12:52:02', 367, '', '2014-03-27 08:01:14', 367, 0, '0000-00-00 00:00:00', '2014-03-23 12:52:02', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"1","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 12, 1, '', '', 1, 1329, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(64, 103, 'Film Handy gut', 'film-handy-gut', '<p>{loadposition filmhandygut}</p>', '', 1, 10, '2014-03-25 09:51:18', 367, '', '2014-03-25 10:10:19', 367, 0, '0000-00-00 00:00:00', '2014-03-25 09:51:18', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, '', '', 1, 79, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(65, 106, 'Video Contiweg Nottingham', 'video-contiweg-nottingham', '<p>{loadposition videocontiwegnottingham}</p>', '', 1, 11, '2014-03-25 10:15:21', 367, '', '2014-03-25 10:17:22', 367, 0, '0000-00-00 00:00:00', '2014-03-25 10:15:21', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, '', '', 1, 43, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(67, 110, 'Schülerberichte', 'schuelerberichte', '<p>Informationen folgen!!!</p>', '', 1, 2, '2014-04-11 17:27:33', 367, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-04-11 17:27:33', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(68, 111, 'Archiv', 'archiv', '<p>Informationen folgen!!!</p>', '', 1, 2, '2014-04-11 17:27:45', 367, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2014-04-11 17:27:45', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 6, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_contentitem_tag_map`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_contentitem_tag_map`;
CREATE TABLE IF NOT EXISTS `joem2_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

--
-- Daten für Tabelle `joem2_contentitem_tag_map`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_content_frontpage`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_content_frontpage`;
CREATE TABLE IF NOT EXISTS `joem2_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_content_frontpage`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_content_rating`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_content_rating`;
CREATE TABLE IF NOT EXISTS `joem2_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_content_rating`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_content_types`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_content_types`;
CREATE TABLE IF NOT EXISTS `joem2_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Daten für Tabelle `joem2_content_types`
--

INSERT INTO `joem2_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special": {"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute'),
(2, 'Weblink', 'com_weblinks.weblink', '{"special":{"dbtable":"#__weblinks","key":"id","type":"Weblink","prefix":"WeblinksTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"url", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {}}', 'WeblinksHelperRoute::getWeblinkRoute'),
(3, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute'),
(4, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special": {"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute'),
(5, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special": {}}', 'UsersHelperRoute::getUserRoute'),
(6, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute'),
(7, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute'),
(8, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute'),
(9, 'Weblinks Category', 'com_weblinks.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'WeblinksHelperRoute::getCategoryRoute'),
(10, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_contiuni_administrator`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_contiuni_administrator`;
CREATE TABLE IF NOT EXISTS `joem2_contiuni_administrator` (
  `personenid` int(11) NOT NULL,
  `isadministrator` tinyint(1) NOT NULL,
  PRIMARY KEY (`personenid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `joem2_contiuni_administrator`
--

INSERT INTO `joem2_contiuni_administrator` (`personenid`, `isadministrator`) VALUES
(319, 1),
(320, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_contiuni_klasse`
--
-- Erzeugt am: 08. April 2014 um 16:41
--

DROP TABLE IF EXISTS `joem2_contiuni_klasse`;
CREATE TABLE IF NOT EXISTS `joem2_contiuni_klasse` (
  `klassenid` int(11) NOT NULL AUTO_INCREMENT,
  `klassenname` varchar(16) NOT NULL,
  PRIMARY KEY (`klassenid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Daten für Tabelle `joem2_contiuni_klasse`
--

INSERT INTO `joem2_contiuni_klasse` (`klassenid`, `klassenname`) VALUES
(2, '1a');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_contiuni_kurs`
--
-- Erzeugt am: 08. April 2014 um 16:40
--

DROP TABLE IF EXISTS `joem2_contiuni_kurs`;
CREATE TABLE IF NOT EXISTS `joem2_contiuni_kurs` (
  `kursid` int(11) NOT NULL AUTO_INCREMENT,
  `kursname` varchar(256) NOT NULL,
  `kursleiter` int(11) NOT NULL,
  `veranstaltungsort` varchar(256) NOT NULL,
  `teilnehmeranzahl` int(11) NOT NULL,
  `anmeldefrist` date NOT NULL,
  `kursbeginn` date NOT NULL,
  `kursende` date NOT NULL,
  `sonstigeinformationen` varchar(4096) DEFAULT NULL,
  `klassenbeschraenkung` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`kursid`),
  KEY `kursleiter` (`kursleiter`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `joem2_contiuni_kurs`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_contiuni_kursleiter`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_contiuni_kursleiter`;
CREATE TABLE IF NOT EXISTS `joem2_contiuni_kursleiter` (
  `personenid` int(11) NOT NULL,
  `iskursleiter` tinyint(1) NOT NULL,
  PRIMARY KEY (`personenid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `joem2_contiuni_kursleiter`
--

INSERT INTO `joem2_contiuni_kursleiter` (`personenid`, `iskursleiter`) VALUES
(321, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_contiuni_person`
--
-- Erzeugt am: 08. April 2014 um 17:00
--

DROP TABLE IF EXISTS `joem2_contiuni_person`;
CREATE TABLE IF NOT EXISTS `joem2_contiuni_person` (
  `personenid` int(11) NOT NULL AUTO_INCREMENT,
  `vorname` varchar(64) NOT NULL,
  `nachname` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(64) DEFAULT NULL,
  `geschlecht` char(1) DEFAULT NULL,
  PRIMARY KEY (`personenid`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2753 ;

--
-- Daten für Tabelle `joem2_contiuni_person`
--

INSERT INTO `joem2_contiuni_person` (`personenid`, `vorname`, `nachname`, `email`, `password`, `geschlecht`) VALUES
(319, 'Lisa', 'Strebl', 'd09096@student.htlwrn.ac.at', '3da541559918a808c2402bba5012f6c60b27661c', NULL),
(320, 'Petra', 'Pulling', 'petra.pulling@gmx.at', '3da541559918a808c2402bba5012f6c60b27661c', NULL),
(321, 'Daniela', 'Wrana', 'daniela.wrana@contiweg.at', '3da541559918a808c2402bba5012f6c60b27661c', NULL),
(790, 'Niklas Samuel', 'BANCSICH', '444108', '3da541559918a808c2402bba5012f6c60b27661c', 'm'),
(791, 'Tobias', 'BRANDNER', '44235', NULL, 'm'),
(792, 'Anna', 'DECRINIS', '452533', NULL, 'w'),
(793, 'Jasmin', 'DIENDORFER', '43797', NULL, 'w'),
(794, 'Sophie', 'DIEWALD', '443487', NULL, 'w'),
(795, 'Sophia Daniela', 'DJOKIC TONOS', '459209', NULL, 'w'),
(796, 'Kiara Lee', 'ECKHARDT', '450117', NULL, 'w'),
(797, 'Janine', 'EDER', '44938', NULL, 'w'),
(798, 'Schahd', 'ELSANADIDY', '44925', NULL, 'w'),
(799, 'Daniel', 'EMSENHUBER', '422397', NULL, 'm'),
(800, 'Julian', 'HAAS', '445476', NULL, 'm'),
(801, 'Ben Stefan', 'HABERHAUER', '440087', NULL, 'm'),
(802, 'Gülbeyaz', 'KAYNAK', '4399', NULL, 'w'),
(803, 'Julia Verena', 'KLACL', '44110', NULL, 'w'),
(804, 'Julia', 'MOCHE', '44428', NULL, 'w'),
(805, 'Oliver Tobias', 'PAPE', '443841', NULL, 'm'),
(806, 'Martin', 'REINER', '449524', NULL, 'm'),
(807, 'Nicolas', 'SAFARIK', '437341', NULL, 'm'),
(808, 'Kenn-Michael', 'SANGA', '449415', NULL, 'm'),
(809, 'Magdalena Cornelia', 'SCHMOLKA', '449223', NULL, 'w'),
(810, 'Lukas Anthony', 'STAPLES', '443047', NULL, 'm'),
(811, 'Miriam', 'VEDRAL', '450255', NULL, 'w'),
(812, 'Senna', 'YE', '459521', NULL, 'w'),
(1024, 'Niklas Samuel', 'BANCSICH', '444108', '3da541559918a808c2402bba5012f6c60b27661c', 'm'),
(1025, 'Tobias', 'BRANDNER', '44235', NULL, 'm'),
(1026, 'Anna', 'DECRINIS', '452533', NULL, 'w'),
(1027, 'Jasmin', 'DIENDORFER', '43797', NULL, 'w'),
(1028, 'Sophie', 'DIEWALD', '443487', NULL, 'w'),
(1029, 'Sophia Daniela', 'DJOKIC TONOS', '459209', NULL, 'w'),
(1030, 'Kiara Lee', 'ECKHARDT', '450117', NULL, 'w'),
(1031, 'Janine', 'EDER', '44938', NULL, 'w'),
(1032, 'Schahd', 'ELSANADIDY', '44925', NULL, 'w'),
(1033, 'Daniel', 'EMSENHUBER', '422397', NULL, 'm'),
(1034, 'Julian', 'HAAS', '445476', NULL, 'm'),
(1035, 'Ben Stefan', 'HABERHAUER', '440087', NULL, 'm'),
(1036, 'Gülbeyaz', 'KAYNAK', '4399', NULL, 'w'),
(1037, 'Julia Verena', 'KLACL', '44110', NULL, 'w'),
(1038, 'Julia', 'MOCHE', '44428', NULL, 'w'),
(1039, 'Oliver Tobias', 'PAPE', '443841', NULL, 'm'),
(1040, 'Martin', 'REINER', '449524', NULL, 'm'),
(1041, 'Nicolas', 'SAFARIK', '437341', NULL, 'm'),
(1042, 'Kenn-Michael', 'SANGA', '449415', NULL, 'm'),
(1043, 'Magdalena Cornelia', 'SCHMOLKA', '449223', NULL, 'w'),
(1044, 'Lukas Anthony', 'STAPLES', '443047', NULL, 'm'),
(1045, 'Miriam', 'VEDRAL', '450255', NULL, 'w'),
(1046, 'Senna', 'YE', '459521', NULL, 'w'),
(1258, 'Niklas Samuel', 'BANCSICH', '444108', '3da541559918a808c2402bba5012f6c60b27661c', 'm'),
(1259, 'Tobias', 'BRANDNER', '44235', NULL, 'm'),
(1260, 'Anna', 'DECRINIS', '452533', NULL, 'w'),
(1261, 'Jasmin', 'DIENDORFER', '43797', NULL, 'w'),
(1262, 'Sophie', 'DIEWALD', '443487', NULL, 'w'),
(1263, 'Sophia Daniela', 'DJOKIC TONOS', '459209', NULL, 'w'),
(1264, 'Kiara Lee', 'ECKHARDT', '450117', NULL, 'w'),
(1265, 'Janine', 'EDER', '44938', NULL, 'w'),
(1266, 'Schahd', 'ELSANADIDY', '44925', NULL, 'w'),
(1267, 'Daniel', 'EMSENHUBER', '422397', NULL, 'm'),
(1268, 'Julian', 'HAAS', '445476', NULL, 'm'),
(1269, 'Ben Stefan', 'HABERHAUER', '440087', NULL, 'm'),
(1270, 'Gülbeyaz', 'KAYNAK', '4399', NULL, 'w'),
(1271, 'Julia Verena', 'KLACL', '44110', NULL, 'w'),
(1272, 'Julia', 'MOCHE', '44428', NULL, 'w'),
(1273, 'Oliver Tobias', 'PAPE', '443841', NULL, 'm'),
(1274, 'Martin', 'REINER', '449524', NULL, 'm'),
(1275, 'Nicolas', 'SAFARIK', '437341', NULL, 'm'),
(1276, 'Kenn-Michael', 'SANGA', '449415', NULL, 'm'),
(1277, 'Magdalena Cornelia', 'SCHMOLKA', '449223', NULL, 'w'),
(1278, 'Lukas Anthony', 'STAPLES', '443047', NULL, 'm'),
(1279, 'Miriam', 'VEDRAL', '450255', NULL, 'w'),
(1280, 'Senna', 'YE', '459521', NULL, 'w'),
(1492, 'Niklas Samuel', 'BANCSICH', '444108', '3da541559918a808c2402bba5012f6c60b27661c', 'm'),
(1493, 'Tobias', 'BRANDNER', '44235', NULL, 'm'),
(1494, 'Anna', 'DECRINIS', '452533', NULL, 'w'),
(1495, 'Jasmin', 'DIENDORFER', '43797', NULL, 'w'),
(1496, 'Sophie', 'DIEWALD', '443487', NULL, 'w'),
(1497, 'Sophia Daniela', 'DJOKIC TONOS', '459209', NULL, 'w'),
(1498, 'Kiara Lee', 'ECKHARDT', '450117', NULL, 'w'),
(1499, 'Janine', 'EDER', '44938', NULL, 'w'),
(1500, 'Schahd', 'ELSANADIDY', '44925', NULL, 'w'),
(1501, 'Daniel', 'EMSENHUBER', '422397', NULL, 'm'),
(1502, 'Julian', 'HAAS', '445476', NULL, 'm'),
(1503, 'Ben Stefan', 'HABERHAUER', '440087', NULL, 'm'),
(1504, 'Gülbeyaz', 'KAYNAK', '4399', NULL, 'w'),
(1505, 'Julia Verena', 'KLACL', '44110', NULL, 'w'),
(1506, 'Julia', 'MOCHE', '44428', NULL, 'w'),
(1507, 'Oliver Tobias', 'PAPE', '443841', NULL, 'm'),
(1508, 'Martin', 'REINER', '449524', NULL, 'm'),
(1509, 'Nicolas', 'SAFARIK', '437341', NULL, 'm'),
(1510, 'Kenn-Michael', 'SANGA', '449415', NULL, 'm'),
(1511, 'Magdalena Cornelia', 'SCHMOLKA', '449223', NULL, 'w'),
(1512, 'Lukas Anthony', 'STAPLES', '443047', NULL, 'm'),
(1513, 'Miriam', 'VEDRAL', '450255', NULL, 'w'),
(1514, 'Senna', 'YE', '459521', NULL, 'w'),
(1726, 'Niklas Samuel', 'BANCSICH', '444108', '3da541559918a808c2402bba5012f6c60b27661c', 'm'),
(1727, 'Tobias', 'BRANDNER', '44235', NULL, 'm'),
(1728, 'Anna', 'DECRINIS', '452533', NULL, 'w'),
(1729, 'Jasmin', 'DIENDORFER', '43797', NULL, 'w'),
(1730, 'Sophie', 'DIEWALD', '443487', NULL, 'w'),
(1731, 'Sophia Daniela', 'DJOKIC TONOS', '459209', NULL, 'w'),
(1732, 'Kiara Lee', 'ECKHARDT', '450117', NULL, 'w'),
(1733, 'Janine', 'EDER', '44938', NULL, 'w'),
(1734, 'Schahd', 'ELSANADIDY', '44925', NULL, 'w'),
(1735, 'Daniel', 'EMSENHUBER', '422397', NULL, 'm'),
(1736, 'Julian', 'HAAS', '445476', NULL, 'm'),
(1737, 'Ben Stefan', 'HABERHAUER', '440087', NULL, 'm'),
(1738, 'Gülbeyaz', 'KAYNAK', '4399', NULL, 'w'),
(1739, 'Julia Verena', 'KLACL', '44110', NULL, 'w'),
(1740, 'Julia', 'MOCHE', '44428', NULL, 'w'),
(1741, 'Oliver Tobias', 'PAPE', '443841', NULL, 'm'),
(1742, 'Martin', 'REINER', '449524', NULL, 'm'),
(1743, 'Nicolas', 'SAFARIK', '437341', NULL, 'm'),
(1744, 'Kenn-Michael', 'SANGA', '449415', NULL, 'm'),
(1745, 'Magdalena Cornelia', 'SCHMOLKA', '449223', NULL, 'w'),
(1746, 'Lukas Anthony', 'STAPLES', '443047', NULL, 'm'),
(1747, 'Miriam', 'VEDRAL', '450255', NULL, 'w'),
(1748, 'Senna', 'YE', '459521', NULL, 'w'),
(1960, 'Niklas Samuel', 'BANCSICH', '444108', '3da541559918a808c2402bba5012f6c60b27661c', 'm'),
(1961, 'Tobias', 'BRANDNER', '44235', NULL, 'm'),
(1962, 'Anna', 'DECRINIS', '452533', NULL, 'w'),
(1963, 'Jasmin', 'DIENDORFER', '43797', NULL, 'w'),
(1964, 'Sophie', 'DIEWALD', '443487', NULL, 'w'),
(1965, 'Sophia Daniela', 'DJOKIC TONOS', '459209', NULL, 'w'),
(1966, 'Kiara Lee', 'ECKHARDT', '450117', NULL, 'w'),
(1967, 'Janine', 'EDER', '44938', NULL, 'w'),
(1968, 'Schahd', 'ELSANADIDY', '44925', NULL, 'w'),
(1969, 'Daniel', 'EMSENHUBER', '422397', NULL, 'm'),
(1970, 'Julian', 'HAAS', '445476', NULL, 'm'),
(1971, 'Ben Stefan', 'HABERHAUER', '440087', NULL, 'm'),
(1972, 'Gülbeyaz', 'KAYNAK', '4399', NULL, 'w'),
(1973, 'Julia Verena', 'KLACL', '44110', NULL, 'w'),
(1974, 'Julia', 'MOCHE', '44428', NULL, 'w'),
(1975, 'Oliver Tobias', 'PAPE', '443841', NULL, 'm'),
(1976, 'Martin', 'REINER', '449524', NULL, 'm'),
(1977, 'Nicolas', 'SAFARIK', '437341', NULL, 'm'),
(1978, 'Kenn-Michael', 'SANGA', '449415', NULL, 'm'),
(1979, 'Magdalena Cornelia', 'SCHMOLKA', '449223', NULL, 'w'),
(1980, 'Lukas Anthony', 'STAPLES', '443047', NULL, 'm'),
(1981, 'Miriam', 'VEDRAL', '450255', NULL, 'w'),
(1982, 'Senna', 'YE', '459521', NULL, 'w'),
(2074, 'Niklas Samuel', 'BANCSICH', '444108', '3da541559918a808c2402bba5012f6c60b27661c', 'm'),
(2075, 'Tobias', 'BRANDNER', '44235', NULL, 'm'),
(2077, 'Anna', 'DECRINIS', '452533', NULL, 'w'),
(2078, 'Jasmin', 'DIENDORFER', '43797', NULL, 'w'),
(2080, 'Sophie', 'DIEWALD', '443487', NULL, 'w'),
(2081, 'Sophia Daniela', 'DJOKIC TONOS', '459209', NULL, 'w'),
(2083, 'Kiara Lee', 'ECKHARDT', '450117', NULL, 'w'),
(2084, 'Janine', 'EDER', '44938', NULL, 'w'),
(2086, 'Schahd', 'ELSANADIDY', '44925', NULL, 'w'),
(2087, 'Daniel', 'EMSENHUBER', '422397', NULL, 'm'),
(2089, 'Julian', 'HAAS', '445476', NULL, 'm'),
(2090, 'Ben Stefan', 'HABERHAUER', '440087', NULL, 'm'),
(2092, 'Gülbeyaz', 'KAYNAK', '4399', NULL, 'w'),
(2093, 'Julia Verena', 'KLACL', '44110', NULL, 'w'),
(2095, 'Julia', 'MOCHE', '44428', NULL, 'w'),
(2096, 'Oliver Tobias', 'PAPE', '443841', NULL, 'm'),
(2098, 'Martin', 'REINER', '449524', NULL, 'm'),
(2099, 'Nicolas', 'SAFARIK', '437341', NULL, 'm'),
(2101, 'Kenn-Michael', 'SANGA', '449415', NULL, 'm'),
(2102, 'Magdalena Cornelia', 'SCHMOLKA', '449223', NULL, 'w'),
(2104, 'Lukas Anthony', 'STAPLES', '443047', NULL, 'm'),
(2105, 'Miriam', 'VEDRAL', '450255', NULL, 'w'),
(2107, 'Senna', 'YE', '459521', NULL, 'w'),
(2327, 'Niklas Samuel', 'BANCSICH', '444108', '3da541559918a808c2402bba5012f6c60b27661c', 'm'),
(2328, 'Tobias', 'BRANDNER', '44235', NULL, 'm'),
(2330, 'Anna', 'DECRINIS', '452533', NULL, 'w'),
(2331, 'Jasmin', 'DIENDORFER', '43797', NULL, 'w'),
(2333, 'Sophie', 'DIEWALD', '443487', NULL, 'w'),
(2334, 'Sophia Daniela', 'DJOKIC TONOS', '459209', NULL, 'w'),
(2336, 'Kiara Lee', 'ECKHARDT', '450117', NULL, 'w'),
(2337, 'Janine', 'EDER', '44938', NULL, 'w'),
(2339, 'Schahd', 'ELSANADIDY', '44925', NULL, 'w'),
(2340, 'Daniel', 'EMSENHUBER', '422397', NULL, 'm'),
(2342, 'Julian', 'HAAS', '445476', NULL, 'm'),
(2343, 'Ben Stefan', 'HABERHAUER', '440087', NULL, 'm'),
(2345, 'Gülbeyaz', 'KAYNAK', '4399', NULL, 'w'),
(2346, 'Julia Verena', 'KLACL', '44110', NULL, 'w'),
(2348, 'Julia', 'MOCHE', '44428', NULL, 'w'),
(2349, 'Oliver Tobias', 'PAPE', '443841', NULL, 'm'),
(2351, 'Martin', 'REINER', '449524', NULL, 'm'),
(2352, 'Nicolas', 'SAFARIK', '437341', NULL, 'm'),
(2354, 'Kenn-Michael', 'SANGA', '449415', NULL, 'm'),
(2355, 'Magdalena Cornelia', 'SCHMOLKA', '449223', NULL, 'w'),
(2357, 'Lukas Anthony', 'STAPLES', '443047', NULL, 'm'),
(2358, 'Miriam', 'VEDRAL', '450255', NULL, 'w'),
(2360, 'Senna', 'YE', '459521', NULL, 'w'),
(2662, 'Niklas Samuel', 'BANCSICH', '444108', '3da541559918a808c2402bba5012f6c60b27661c', 'm'),
(2663, 'Tobias', 'BRANDNER', '44235', NULL, 'm'),
(2664, 'Anna', 'DECRINIS', '452533', NULL, 'w'),
(2665, 'Jasmin', 'DIENDORFER', '43797', NULL, 'w'),
(2666, 'Sophie', 'DIEWALD', '443487', NULL, 'w'),
(2667, 'Sophia Daniela', 'DJOKIC TONOS', '459209', NULL, 'w'),
(2668, 'Kiara Lee', 'ECKHARDT', '450117', NULL, 'w'),
(2669, 'Janine', 'EDER', '44938', NULL, 'w'),
(2670, 'Schahd', 'ELSANADIDY', '44925', NULL, 'w'),
(2671, 'Daniel', 'EMSENHUBER', '422397', NULL, 'm'),
(2672, 'Julian', 'HAAS', '445476', NULL, 'm'),
(2673, 'Ben Stefan', 'HABERHAUER', '440087', NULL, 'm'),
(2674, 'Gülbeyaz', 'KAYNAK', '4399', NULL, 'w'),
(2675, 'Julia Verena', 'KLACL', '44110', NULL, 'w'),
(2676, 'Julia', 'MOCHE', '44428', NULL, 'w'),
(2677, 'Oliver Tobias', 'PAPE', '443841', NULL, 'm'),
(2678, 'Martin', 'REINER', '449524', NULL, 'm'),
(2679, 'Nicolas', 'SAFARIK', '437341', NULL, 'm'),
(2680, 'Kenn-Michael', 'SANGA', '449415', NULL, 'm'),
(2681, 'Magdalena Cornelia', 'SCHMOLKA', '449223', NULL, 'w'),
(2682, 'Lukas Anthony', 'STAPLES', '443047', NULL, 'm'),
(2683, 'Miriam', 'VEDRAL', '450255', NULL, 'w'),
(2684, 'Senna', 'YE', '459521', NULL, 'w'),
(2696, 'Niklas Samuel', 'BANCSICH', '444108', '3da541559918a808c2402bba5012f6c60b27661c', 'm'),
(2697, 'Tobias', 'BRANDNER', '44235', NULL, 'm'),
(2699, 'Anna', 'DECRINIS', '452533', NULL, 'w'),
(2700, 'Jasmin', 'DIENDORFER', '43797', NULL, 'w'),
(2702, 'Sophie', 'DIEWALD', '443487', NULL, 'w'),
(2703, 'Sophia Daniela', 'DJOKIC TONOS', '459209', NULL, 'w'),
(2705, 'Kiara Lee', 'ECKHARDT', '450117', NULL, 'w'),
(2706, 'Janine', 'EDER', '44938', NULL, 'w'),
(2708, 'Schahd', 'ELSANADIDY', '44925', NULL, 'w'),
(2709, 'Daniel', 'EMSENHUBER', '422397', NULL, 'm'),
(2711, 'Julian', 'HAAS', '445476', NULL, 'm'),
(2712, 'Ben Stefan', 'HABERHAUER', '440087', NULL, 'm'),
(2714, 'Gülbeyaz', 'KAYNAK', '4399', NULL, 'w'),
(2715, 'Julia Verena', 'KLACL', '44110', NULL, 'w'),
(2717, 'Julia', 'MOCHE', '44428', NULL, 'w'),
(2718, 'Oliver Tobias', 'PAPE', '443841', NULL, 'm'),
(2720, 'Martin', 'REINER', '449524', NULL, 'm'),
(2721, 'Nicolas', 'SAFARIK', '437341', NULL, 'm'),
(2723, 'Kenn-Michael', 'SANGA', '449415', NULL, 'm'),
(2724, 'Magdalena Cornelia', 'SCHMOLKA', '449223', NULL, 'w'),
(2726, 'Lukas Anthony', 'STAPLES', '443047', NULL, 'm'),
(2727, 'Miriam', 'VEDRAL', '450255', NULL, 'w'),
(2729, 'Senna', 'YE', '459521', NULL, 'w'),
(2730, 'Niklas Samuel', 'BANCSICH', '444108', '3da541559918a808c2402bba5012f6c60b27661c', 'm'),
(2731, 'Tobias', 'BRANDNER', '44235', NULL, 'm'),
(2732, 'Anna', 'DECRINIS', '452533', NULL, 'w'),
(2733, 'Jasmin', 'DIENDORFER', '43797', NULL, 'w'),
(2734, 'Sophie', 'DIEWALD', '443487', NULL, 'w'),
(2735, 'Sophia Daniela', 'DJOKIC TONOS', '459209', NULL, 'w'),
(2736, 'Kiara Lee', 'ECKHARDT', '450117', NULL, 'w'),
(2737, 'Janine', 'EDER', '44938', NULL, 'w'),
(2738, 'Schahd', 'ELSANADIDY', '44925', NULL, 'w'),
(2739, 'Daniel', 'EMSENHUBER', '422397', NULL, 'm'),
(2740, 'Julian', 'HAAS', '445476', NULL, 'm'),
(2741, 'Ben Stefan', 'HABERHAUER', '440087', NULL, 'm'),
(2742, 'Gülbeyaz', 'KAYNAK', '4399', NULL, 'w'),
(2743, 'Julia Verena', 'KLACL', '44110', NULL, 'w'),
(2744, 'Julia', 'MOCHE', '44428', NULL, 'w'),
(2745, 'Oliver Tobias', 'PAPE', '443841', NULL, 'm'),
(2746, 'Martin', 'REINER', '449524', NULL, 'm'),
(2747, 'Nicolas', 'SAFARIK', '437341', NULL, 'm'),
(2748, 'Kenn-Michael', 'SANGA', '449415', NULL, 'm'),
(2749, 'Magdalena Cornelia', 'SCHMOLKA', '449223', NULL, 'w'),
(2750, 'Lukas Anthony', 'STAPLES', '443047', NULL, 'm'),
(2751, 'Miriam', 'VEDRAL', '450255', NULL, 'w'),
(2752, 'Senna', 'YE', '459521', NULL, 'w');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_contiuni_schueler`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_contiuni_schueler`;
CREATE TABLE IF NOT EXISTS `joem2_contiuni_schueler` (
  `personenid` int(11) NOT NULL,
  `klassenid` int(11) NOT NULL,
  PRIMARY KEY (`personenid`),
  KEY `klassenid` (`klassenid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `joem2_contiuni_schueler`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_contiuni_schuelerkurs`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_contiuni_schuelerkurs`;
CREATE TABLE IF NOT EXISTS `joem2_contiuni_schuelerkurs` (
  `kursid` int(11) NOT NULL DEFAULT '0',
  `schuelerid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kursid`,`schuelerid`),
  KEY `schuelerid` (`schuelerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `joem2_contiuni_schuelerkurs`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_core_log_searches`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_core_log_searches`;
CREATE TABLE IF NOT EXISTS `joem2_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_core_log_searches`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_extensions`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_extensions`;
CREATE TABLE IF NOT EXISTS `joem2_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10024 ;

--
-- Daten für Tabelle `joem2_extensions`
--

INSERT INTO `joem2_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"de-DE"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"ppt,pptx,PPT,PPTX,ppsx,pps,PPSX,PPS,bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"0","check_mime":"0","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"0","show_intro":"0","info_block_position":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"0","show_readmore":"0","show_readmore_title":"0","readmore_limit":"100","show_tags":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"2","mail_to_admin":"1","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":""}', '{"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"name":"PHPMailer","type":"library","creationDate":"2001","author":"PHPMailer","copyright":"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.","authorEmail":"jimjag@gmail.com","authorUrl":"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer","version":"5.2.6","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"name":"SimplePie","type":"library","creationDate":"2004","author":"SimplePie","copyright":"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.2","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"12.2","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":""}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"iPData.Contiweg.at","port":"389","use_ldapV3":"1","negotiate_tls":"0","no_referrals":"0","auth_method":"search","base_dn":"OU=iPack,DC=Contiweg,DC=at","search_string":"sAMAccountName=[search]","users_dn":"","username":"","password":"","ldap_fullname":"displayName","ldap_email":"userPrincipalName","ldap_uid":"sAMAccountName"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2012","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.5.6","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0);
INSERT INTO `joem2_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2013 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":""}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.4","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (United Kingdom)","type":"language","creationDate":"2013-03-07","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.4","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2013 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.5","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'Contiweg', 'template', 'contiweg', '', 0, 1, 1, 0, '{"name":"Contiweg","type":"template","creationDate":"2013-11-21","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"1.0","description":"Artisteer-generated theme","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'GermanDE-CH-AT', 'language', 'de-DE', '', 0, 1, 0, 0, '{"name":"German (DE-CH-AT)","type":"language","creationDate":"01.08.2013","author":"J!German","copyright":"Copyright (C) 2008 - 2013 J!German. All rights reserved.","authorEmail":"team@jgerman.de","authorUrl":"http:\\/\\/www.jgerman.de","version":"3.1.5.1","description":"\\n      <img style=\\"margin: 5px; vertical-align: middle;\\" alt=\\"German (Deutsch)\\" src=\\"data:;base64,R0lGODlhEgAMAJEAAP\\/OAAAAAN0AAAAAACH5BAAAAAAALAAAAAASAAwAAAIXjI+py+2vhJy02ouz3hb4D4biSJbmKRYAOw==\\" height=\\"12\\" width=\\"18\\" \\/>Deutsche Frontend (Website)-\\u00dcbersetzung f\\u00fcr Joomla! 3.1.5\\n      <br \\/>\\n      <img style=\\"margin: 5px; vertical-align: middle;\\" alt=\\"English (Englisch)\\" src=\\"data:image\\/gif;base64,R0lGODlhEgAMAPcAANQYLe+nr+iPmgElcdQuQtQtQtq\\/zc8UK88TKu2Sm+A4SOucpn2RvxIseCBLmRIpdtIWLAEkctAUK\\/\\/f3g4tguqXodozRcwDHNa8y8fT5h9GlP\\/7+R82fcwIIPOCiRg2fwc0fP\\/6+AEohAwqgffV2QYuhfaTmQApgi1VngAZd9Y0SOmTnaysytIjOPixtbZlgOxVYehUYPbP09FqfWByq\\/XL0BIndO2Fju6AieZ8iQAaed9gcOnm7t28wgEpdImUt2B\\/uOtWYsAPHP\\/o5t5SYdzs98pwd\\/KXn\\/\\/v7tjo9WRyqXBtkgEdbPbu8c0MJHdomvB4gHBglMwGH7Nphm6Zy9Pq6uufqfjh5NUwRM8SKhIqd9c5TNc4TNUxRRIjcxAvg9FpfPCmpiBOjv\\/r6cYgKhIfb\\/\\/i4fSTmdm+zClSnOiMl+dXY1RioK5kgxg5hPOZoNMpPmh\\/tTxalmqFut\\/G0tchLdni765RcOiOmQAgfcHZ7v77+3J4o+6UnfTKz\\/\\/\\/\\/OurtYScx66wzThepMy7vwAeeiJLmumQmv\\/m5QAceN00RmOBqgEnc9zr9+lWY+qWoNY0Rw80eudUYWZ1qytZk+unsAYxiup5g+iSnX6Ww7Vif9EQH\\/Df5dbc6hIqdt3w+\\/\\/q6MwFHfOLkuj6\\/+ylrgAVde+aotPQ3+yMls8VLNbc69+lo+6nr9tHWAAPcLTI480GHssAGf\\/\\/\\/wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAAASAAwAAAjoAH9wKPOggZYPPepsCiPHRgNPXtzwGVKEwZdShUoYAAArAIpEKSwp0RTDERREjRiMyIOGYwAHIia9kORhApspRC6NsZOJDgRYlQK1WYODxKc5gjJcYeUnxB8ZCKRYQeKihqw9p1goUNRlC6QCBOAcyNICCxcVBApYUBCrrdtYFw6k6vDW7RsBAlYsqJAgBwInO\\/ocwvNoAaYjQPTIkmXKBA9OEkIBGiVrg5oEqqi8aoIqyIwoGjBwJDWIRiczN1rdOQMDzBNDOk5s7JjGFYU4SUCJMrJETIQBPkAQIiNkFaUBjJhEWlQlIAA7\\" height=\\"12\\" width=\\"18\\" \\/>German Frontend (Website) translation for Joomla! 3.1.5\\n    ","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'TinyMCE de-DE', 'file', 'file_tinymce_de-DE', '', 0, 1, 0, 0, '{"name":"TinyMCE de-DE","type":"file","creationDate":"01.08.2013","author":"J!German","copyright":"Copyright (C) 2008 - 2013 J!German. All rights reserved.","authorEmail":"team@jgerman.de","authorUrl":"http:\\/\\/www.jgerman.de","version":"3.1.5.1","description":"\\n      <img style=\\"margin: 5px; vertical-align: middle;\\" alt=\\"German (Deutsch)\\" src=\\"data:;base64,R0lGODlhEgAMAJEAAP\\/OAAAAAN0AAAAAACH5BAAAAAAALAAAAAASAAwAAAIXjI+py+2vhJy02ouz3hb4D4biSJbmKRYAOw==\\" height=\\"12\\" width=\\"18\\" \\/>Deutsche Editor (TinyMCE)-\\u00dcbersetzung f\\u00fcr Joomla! 3.1.5\\n      <br \\/>\\n      <img style=\\"margin: 5px; vertical-align: middle;\\" alt=\\"English (Englisch)\\" src=\\"data:image\\/gif;base64,R0lGODlhEgAMAPcAANQYLe+nr+iPmgElcdQuQtQtQtq\\/zc8UK88TKu2Sm+A4SOucpn2RvxIseCBLmRIpdtIWLAEkctAUK\\/\\/f3g4tguqXodozRcwDHNa8y8fT5h9GlP\\/7+R82fcwIIPOCiRg2fwc0fP\\/6+AEohAwqgffV2QYuhfaTmQApgi1VngAZd9Y0SOmTnaysytIjOPixtbZlgOxVYehUYPbP09FqfWByq\\/XL0BIndO2Fju6AieZ8iQAaed9gcOnm7t28wgEpdImUt2B\\/uOtWYsAPHP\\/o5t5SYdzs98pwd\\/KXn\\/\\/v7tjo9WRyqXBtkgEdbPbu8c0MJHdomvB4gHBglMwGH7Nphm6Zy9Pq6uufqfjh5NUwRM8SKhIqd9c5TNc4TNUxRRIjcxAvg9FpfPCmpiBOjv\\/r6cYgKhIfb\\/\\/i4fSTmdm+zClSnOiMl+dXY1RioK5kgxg5hPOZoNMpPmh\\/tTxalmqFut\\/G0tchLdni765RcOiOmQAgfcHZ7v77+3J4o+6UnfTKz\\/\\/\\/\\/OurtYScx66wzThepMy7vwAeeiJLmumQmv\\/m5QAceN00RmOBqgEnc9zr9+lWY+qWoNY0Rw80eudUYWZ1qytZk+unsAYxiup5g+iSnX6Ww7Vif9EQH\\/Df5dbc6hIqdt3w+\\/\\/q6MwFHfOLkuj6\\/+ylrgAVde+aotPQ3+yMls8VLNbc69+lo+6nr9tHWAAPcLTI480GHssAGf\\/\\/\\/wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAAASAAwAAAjoAH9wKPOggZYPPepsCiPHRgNPXtzwGVKEwZdShUoYAAArAIpEKSwp0RTDERREjRiMyIOGYwAHIia9kORhApspRC6NsZOJDgRYlQK1WYODxKc5gjJcYeUnxB8ZCKRYQeKihqw9p1goUNRlC6QCBOAcyNICCxcVBApYUBCrrdtYFw6k6vDW7RsBAlYsqJAgBwInO\\/ocwvNoAaYjQPTIkmXKBA9OEkIBGiVrg5oEqqi8aoIqyIwoGjBwJDWIRiczN1rdOQMDzBNDOk5s7JjGFYU4SUCJMrJETIQBPkAQIiNkFaUBjJhEWlQlIAA7\\" height=\\"12\\" width=\\"18\\" \\/>German Editor (TinyMCE) translation for Joomla! 3.1.5\\n    ","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'GermanDE-CH-AT', 'language', 'de-DE', '', 1, 1, 0, 0, '{"name":"German (DE-CH-AT)","type":"language","creationDate":"01.08.2013","author":"J!German","copyright":"Copyright (C) 2008 - 2013 J!German. All rights reserved.","authorEmail":"team@jgerman.de","authorUrl":"http:\\/\\/www.jgerman.de","version":"3.1.5.1","description":"\\n      <img style=\\"margin: 5px; vertical-align: middle;\\" alt=\\"German (Deutsch)\\" src=\\"data:;base64,R0lGODlhEgAMAJEAAP\\/OAAAAAN0AAAAAACH5BAAAAAAALAAAAAASAAwAAAIXjI+py+2vhJy02ouz3hb4D4biSJbmKRYAOw==\\" height=\\"12\\" width=\\"18\\" \\/>Deutsche Backend (Administrator)-\\u00dcbersetzung f\\u00fcr Joomla! 3.1.5\\n      <br \\/>\\n      <img style=\\"margin: 5px; vertical-align: middle;\\" alt=\\"English (Englisch)\\" src=\\"data:image\\/gif;base64,R0lGODlhEgAMAPcAANQYLe+nr+iPmgElcdQuQtQtQtq\\/zc8UK88TKu2Sm+A4SOucpn2RvxIseCBLmRIpdtIWLAEkctAUK\\/\\/f3g4tguqXodozRcwDHNa8y8fT5h9GlP\\/7+R82fcwIIPOCiRg2fwc0fP\\/6+AEohAwqgffV2QYuhfaTmQApgi1VngAZd9Y0SOmTnaysytIjOPixtbZlgOxVYehUYPbP09FqfWByq\\/XL0BIndO2Fju6AieZ8iQAaed9gcOnm7t28wgEpdImUt2B\\/uOtWYsAPHP\\/o5t5SYdzs98pwd\\/KXn\\/\\/v7tjo9WRyqXBtkgEdbPbu8c0MJHdomvB4gHBglMwGH7Nphm6Zy9Pq6uufqfjh5NUwRM8SKhIqd9c5TNc4TNUxRRIjcxAvg9FpfPCmpiBOjv\\/r6cYgKhIfb\\/\\/i4fSTmdm+zClSnOiMl+dXY1RioK5kgxg5hPOZoNMpPmh\\/tTxalmqFut\\/G0tchLdni765RcOiOmQAgfcHZ7v77+3J4o+6UnfTKz\\/\\/\\/\\/OurtYScx66wzThepMy7vwAeeiJLmumQmv\\/m5QAceN00RmOBqgEnc9zr9+lWY+qWoNY0Rw80eudUYWZ1qytZk+unsAYxiup5g+iSnX6Ww7Vif9EQH\\/Df5dbc6hIqdt3w+\\/\\/q6MwFHfOLkuj6\\/+ylrgAVde+aotPQ3+yMls8VLNbc69+lo+6nr9tHWAAPcLTI480GHssAGf\\/\\/\\/wAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACH5BAAAAAAALAAAAAASAAwAAAjoAH9wKPOggZYPPepsCiPHRgNPXtzwGVKEwZdShUoYAAArAIpEKSwp0RTDERREjRiMyIOGYwAHIia9kORhApspRC6NsZOJDgRYlQK1WYODxKc5gjJcYeUnxB8ZCKRYQeKihqw9p1goUNRlC6QCBOAcyNICCxcVBApYUBCrrdtYFw6k6vDW7RsBAlYsqJAgBwInO\\/ocwvNoAaYjQPTIkmXKBA9OEkIBGiVrg5oEqqi8aoIqyIwoGjBwJDWIRiczN1rdOQMDzBNDOk5s7JjGFYU4SUCJMrJETIQBPkAQIiNkFaUBjJhEWlQlIAA7\\" height=\\"12\\" width=\\"18\\" \\/>German Backend (Administrator) translation for Joomla! 3.0.3\\n    ","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'de-DE', 'package', 'pkg_de-DE', '', 0, 1, 1, 0, '{"name":"German Language Pack","type":"package","creationDate":"01.08.2013","author":"J!German","copyright":"","authorEmail":"team@jgerman.de","authorUrl":"http:\\/\\/www.jgerman.de","version":"3.1.5.1","description":"\\n    <div style=\\"text-align: center;\\">\\n      <h2>Deutsches \\u201eFull\\u201c-Sprachpaket f\\u00fcr Joomla! 3.1.5 von <a title=\\"J!German\\" href=\\"http:\\/\\/www.jgerman.de\\" target=\\"_blank\\">J!German<\\/a><\\/h2>\\n      <h3><span style=\\"color: #008000;\\">\\u00dcbersetzungsversion: 3.1.5v1<\\/span><\\/h3>\\n      <hr \\/>\\n      <table rules=\\"all\\" frame=\\"border\\" style=\\"width: 90%; border-color: #000000; border-width: 1px; border-style: solid;\\" align=\\"center\\" border=\\"1\\">\\n      <colgroup> <col width=\\"30%\\" \\/> <col width=\\"60\\" \\/> <\\/colgroup>\\n      <tbody>\\n        <tr>\\n          <td>\\n            <ul>\\n              <li>Frontend (Website)-\\u00dcbersetzung<\\/li>\\n            <\\/ul>\\n          <\\/td>\\n          <td rowspan=\\"2\\">\\n            <ul>\\n              <li>\\n                <span style=\\"text-decoration: underline;\\">Neuinstallation:<\\/span>\\n                <br \\/>\\n                Legen Sie die deutsche Sprache unter <a title=\\"Language Manager\\" href=\\"index.php?option=com_languages\\" target=\\"_blank\\">\\u201eExtensions\\u201c \\u2192 \\u201eLanguage Manager\\u201c<\\/a> als Standardsprache (\\u201eDefault\\u201c), sowohl f\\u00fcr die Website (\\u201eInstalled - Site\\u201c) als auch f\\u00fcr die Administration (\\u201eInstalled - Administrator\\u201c), fest.\\n              <\\/li>\\n              <br \\/>\\n              <li>\\n                <span style=\\"text-decoration: underline;\\">Aktualisierung:<\\/span>\\n                <br \\/>\\n                Es sind keine weiteren Schritte erforderlich.\\n              <\\/li>\\n            <\\/ul>\\n          <\\/td>\\n        <\\/tr>\\n        <tr>\\n          <td>\\n            <ul>\\n              <li>Backend (Administrator)-\\u00dcbersetzung<\\/li>\\n            <\\/ul>\\n          <\\/td>\\n        <\\/tr>\\n        <tr>\\n          <td>\\n            <ul>\\n              <li>Editor (TinyMCE)-\\u00dcbersetzung<\\/li>\\n            <\\/ul>\\n          <\\/td>\\n          <td>\\n            <ul>\\n              <li>\\n                <span style=\\"text-decoration: underline;\\">Neuinstallation:<\\/span>\\n                <br \\/>\\n                Aktivieren Sie in den <a title=\\"TinyMCE in der Pluginverwaltung\\" href=\\"index.php?option=com_plugins&amp;view=plugins&amp;filter_search=TinyMCE\\" target=\\"_blank\\">TinyMCE-Plugineinstellungen<\\/a> die automatische Sprachauswahl auf \\u201eJa\\u201c (\\u201eBasisoptionen\\u201c \\u2192 \\u201eAutom. Sprachauswahl\\u201c).\\n              <\\/li>\\n              <br \\/>\\n              <li>\\n                <span style=\\"text-decoration: underline;\\">Aktualisierung (nur wenn vor dieser Installation ein <strong>separates<\\/strong> TinyMCE-Sprachpaket installiert war):<\\/span>\\n                <br \\/>\\n                Deinstallieren Sie das alte TinyMCE-Sprachpaket \\u00fcber \\u201eErweiterungen\\u201c \\u2192 \\u201eErweiterungen\\u201c \\u2192 \\u201eVerwalten\\u201c \\u2192 \\u201eTinyMCE de-DE\\u201c. Danach installieren Sie dieses Paket erneut.<br \\/>Damit sorgen Sie daf\\u00fcr, dass der alte Aktualisierungsserver f\\u00fcr das einzelne TinyMCE-Sprachpaket aus Joomla! gel\\u00f6scht wird und so bei einer Aktualisierungsanfrage nicht unn\\u00f6tig gepr\\u00fcft wird.\\n              <\\/li>\\n            <\\/ul>\\n          <\\/td>\\n        <\\/tr>\\n      <\\/tbody>\\n      <\\/table>\\n      <br \\/>\\n      <span style=\\"text-decoration: underline;\\">Hinweis:<\\/span> Dieses Paket unterst\\u00fctzt die Joomla! eigene <a title=\\"Joomla!-Aktualisierungsfunktion\\" href=\\"index.php?option=com_installer&amp;view=update\\" target=\\"_blank\\">Aktualisierungsfunktion<\\/a>!\\n    <\\/div>\\n    ","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'plg_editors_jce', 'plugin', 'jce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_jce","type":"plugin","creationDate":"12 December 2013","author":"Ryan Demmer","copyright":"2006-2010 Ryan Demmer","authorEmail":"info@joomlacontenteditor.net","authorUrl":"http:\\/\\/www.joomlacontenteditor.net","version":"2.3.4.4","description":"WF_EDITOR_PLUGIN_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'plg_quickicon_jcefilebrowser', 'plugin', 'jcefilebrowser', 'quickicon', 0, 1, 1, 0, '{"name":"plg_quickicon_jcefilebrowser","type":"plugin","creationDate":"12 December 2013","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved","authorEmail":"@@email@@","authorUrl":"www.joomalcontenteditor.net","version":"2.3.4.4","description":"PLG_QUICKICON_JCEFILEBROWSER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'jce', 'component', 'com_jce', '', 1, 1, 0, 0, '{"name":"JCE","type":"component","creationDate":"12 December 2013","author":"Ryan Demmer","copyright":"Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved","authorEmail":"info@joomlacontenteditor.net","authorUrl":"www.joomlacontenteditor.net","version":"2.3.4.4","description":"WF_ADMIN_DESC","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'Avatar Slide Galleria', 'module', 'mod_avatar_slide_galleria', '', 0, 1, 0, 0, '{"name":"Avatar Slide Galleria","type":"module","creationDate":"September 2012","author":"Nam Chung Tran","copyright":"JoomAvatar.com","authorEmail":"chungtn@joomavatar.com","authorUrl":"www.joomavatar.com","version":"1.4.9","description":"AVATAR_SLIDE_GALLERIA_DESC","group":""}', '{"moduleclass_sfx":"","jquery":"latest","width":"100%","height":"0.4","Source":"folder","flickrSearchBy":"search","stringFlickr":"String,User Name,...","flickrSort":"interestingness-desc","picasaSearchBy":"search","stringPicasa":"String,User Name,...","folder":"true","title":"","description":"","imageLink":"","theme":"true","responsive":"true","lightBox":"true","showCounter":"true","showImageNav":"true","imgPan":"true","swipe":"true","fullscreenBtn":"true","progress":"true","imgPanSmoothness":"3","imgCrop":"true","fullsreenCrop":"true","thumbnails":"true","infoColor":"default","@sp4":"","background":"color","bgColor":"#000000","titleColor":"#000000","desColor":"#000000","autoplay":"true","slideTime":"5000","transitionSpeed":"500","imageQuality":"original","dataSort":"false","transition":"slide","fullscreenTransition":"slide","showInfo":"true","showFileName":"false"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'GoogleCalendar', 'module', 'mod_googlecalendar', '', 0, 1, 0, 0, '{"name":"GoogleCalendar","type":"module","creationDate":"January 2013","author":"Jan Maat","copyright":"Copyright (C) 2012 Jan Maat All rights reserved.","authorEmail":"","authorUrl":"","version":"10_0_0","description":"MOD_GOOGLECALENDAR_DESCRIPTION","group":""}', '[]', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'MOD_COUNT_DOWN_BIG', 'module', 'mod_count_down_big', '', 0, 1, 0, 0, '{"name":"MOD_COUNT_DOWN_BIG","type":"module","creationDate":"2013-12-20","author":"Viktor Vogel","copyright":"Copyright 2013 Viktor Vogel. All rights reserved.","authorEmail":"admin@kubik-rubik.de","authorUrl":"http:\\/\\/joomla-extensions.kubik-rubik.de\\/","version":"3-2","description":"MOD_COUNT_DOWN_BIG_XML_DESCRIPTION","group":""}', '{"ev_day":"01","ev_month":"01","ev_year":"2015","ev_hour":"00","ev_minute":"00","$ev_title":"","ev_text":"","ev_displaytitle":"1","ev_displaydate":"1","ev_dhourshow":"1","dynamic":"1","countup":"1","ev_ddaysleft":"1","showexpired":"1","color":"#000000","ev_displayurl":"0","ev_urltitle":"","ev_url":"http:\\/\\/","newwindow":"_blank","ev_dlink_countup":"1","ev_displayurl_end":"0","ev_urltitle_end":"","ev_url_end":"http:\\/\\/","newwindow_end":"_blank","ev_displayday":"1","datef":"dmy","moduleclass_sfx":"","poweredby":"yes","donation_code":"","krversioncheck":"cdub|3-2","versioncheck_enable":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'Button - Sourcerer', 'plugin', 'sourcerer', 'editors-xtd', 0, 1, 1, 0, '{"name":"Button - Sourcerer","type":"plugin","creationDate":"February 2014","author":"NoNumber (Peter van Westen)","copyright":"Copyright \\u00a9 2014 NoNumber All Rights Reserved","authorEmail":"peter@nonumber.nl","authorUrl":"http:\\/\\/www.nonumber.nl","version":"4.3.2FREE","description":"PLG_EDITORS-XTD_SOURCERER_DESC","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'PLG_SYSTEM_NNFRAMEWORK', 'plugin', 'nnframework', 'system', 0, 1, 1, 0, '{"name":"PLG_SYSTEM_NNFRAMEWORK","type":"plugin","creationDate":"February 2014","author":"NoNumber (Peter van Westen)","copyright":"Copyright \\u00a9 2014 NoNumber All Rights Reserved","authorEmail":"peter@nonumber.nl","authorUrl":"http:\\/\\/www.nonumber.nl","version":"14.2.10","description":"PLG_SYSTEM_NNFRAMEWORK_DESC","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'plg_content_slideboom', 'plugin', 'slideboom', 'content', 0, 1, 1, 0, '{"name":"plg_content_slideboom","type":"plugin","creationDate":"March 2011","author":"Nico van der Neut","copyright":"Copyright (C) 2011 Nico van der Neut ( develop.vdneutonline.nl ). All rights reserved.","authorEmail":"vdneut@gmail.com","authorUrl":"http:\\/\\/develop.vdneutonline.nl","version":"1.1.0","description":"PLG_SLIDEBOOM_PLUGINDESCRIPTION","group":""}', '{"width":"425","height":"370","fullscreen":"1","align":"left","bgcolor":"ffffff","quality":"high"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'Content - GroupDocs Embedder', 'plugin', 'grpdocsviewer', 'content', 0, 1, 1, 0, '{"name":"Content - GroupDocs Embedder","type":"plugin","creationDate":"November 2013","author":"GroupDocs Team","copyright":"Copyright (C) 2008-2013 soeren. All rights reserved.","authorEmail":"support@groupdocs.com","authorUrl":"http:\\/\\/groupdocs.com\\/groupdocsv3\\/apps\\/viewer","version":"1.3.1","description":"Embeds GroupDocs document to your Joomla page.\\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'Editor Button - GroupDocs Viewer', 'plugin', 'grpdocsviewer', 'editors-xtd', 0, 1, 1, 0, '{"name":"Editor Button - GroupDocs Viewer","type":"plugin","creationDate":"November  2013","author":"GroupDocs Team","copyright":"copyright (c) GroupDocs, 2012. All rights  reserved","authorEmail":"support@groupdocs.com","authorUrl":"virtuemart.net","version":"1.3.1","description":"Adds an editor button for GroupDocs Viewer.","group":""}', '{"groupdocs_client_login":"","groupdocs_client_password":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'groupdocsviewer', 'package', 'pkg_groupdocsviewer', '', 0, 1, 1, 0, '{"name":"GroupDocs Viewer Plugins","type":"package","creationDate":"November 2013","author":"GroupDocs Team","copyright":"copyright (c) GroupDocs, 2012. All rights  reserved","authorEmail":"","authorUrl":"","version":"1.3.1","description":"<h2 style=\\"font-size: 2.5em;\\">Thanks for installing the GroupDocs Plugins Package!<\\/h2> <p style=\\"font-size:2.0em;\\">You now have two new plugins: a Content and an Editor Button Plugin. <span style=\\"color:red;\\">Remember\\n to publish both plugins so you can use them.<\\/span>","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 'com_phocadownload', 'component', 'com_phocadownload', '', 1, 1, 0, 0, '{"name":"com_phocadownload","type":"component","creationDate":"20\\/02\\/2014","author":"Jan Pavelka (www.phoca.cz)","copyright":"Jan Pavelka","authorEmail":"","authorUrl":"www.phoca.cz","version":"3.0.4","description":"Phoca Download","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 'Magic Simple Video Player', 'module', 'mod_video', '', 0, 1, 0, 0, '{"name":"Magic Simple Video Player","type":"module","creationDate":"March 2011","author":"Magic Point","copyright":"Released under GNU\\/GPL License","authorEmail":"info@magicpoint.org","authorUrl":"http:\\/\\/www.magicpoint.org\\/","version":"1.0.5","description":"<strong>Thank you for choosing MagicPoint.<\\/strong><\\/br><em>For support or suggestions please use ONLY the form on the support page!<\\/em>\\n\\t\\t<ul>\\n\\t\\t\\t<li><a href=\\"http:\\/\\/www.magicpoint.org\\" target=\\"_blank\\">MagicPoint Site<\\/a><\\/li>\\n\\t\\t\\t<li><a href=\\"http:\\/\\/www.magicpoint.org\\/extensions.html\\" target=\\"_blank\\">New Extensions<\\/a><\\/li>\\n\\t\\t\\t<li><a href=\\"http:\\/\\/www.magicpoint.org\\/documentation.html\\" target=\\"_blank\\">Documentation<\\/a><\\/li>\\n\\t\\t\\t<li><a href=\\"http:\\/\\/shop.magicpoint.org\\/\\" target=\\"_blank\\">Shop<\\/a><\\/li>\\n\\t\\t\\t<li><a href=\\"http:\\/\\/www.magicpoint.org\\/support.html\\" target=\\"_blank\\">Support<\\/a><\\/li>\\n\\t\\t<\\/ul>\\n\\t\\t","group":""}', '{"moduleclass_sfx":"","vscript":"mod1","debugMode":"0","video01":"1","videothumb01":"modules\\/mod_video\\/videos\\/thumbs\\/clip1.jpg","videoimage01":"modules\\/mod_video\\/videos\\/images\\/clip1.jpg","videosource01":"videos\\/clip1.flv","video02":"1","videothumb02":"modules\\/mod_video\\/videos\\/thumbs\\/clip2.jpg","videoimage02":"modules\\/mod_video\\/videos\\/images\\/clip2.jpg","videosource02":"videos\\/clip2.flv","video03":"1","videothumb03":"modules\\/mod_video\\/videos\\/thumbs\\/clip1.jpg","videoimage03":"modules\\/mod_video\\/videos\\/images\\/clip1.jpg","videosource03":"videos\\/clip1.flv","video04":"1","videothumb04":"modules\\/mod_video\\/videos\\/thumbs\\/clip2.jpg","videoimage04":"modules\\/mod_video\\/videos\\/images\\/clip2.jpg","videosource04":"videos\\/clip2.flv","video05":"1","videothumb05":"modules\\/mod_video\\/videos\\/thumbs\\/clip1.jpg","videoimage05":"modules\\/mod_video\\/videos\\/images\\/clip1.jpg","videosource05":"videos\\/clip1.flv","video06":"1","videothumb06":"modules\\/mod_video\\/videos\\/thumbs\\/clip2.jpg","videoimage06":"modules\\/mod_video\\/videos\\/images\\/clip2.jpg","videosource06":"videos\\/clip2.flv","video07":"1","videothumb07":"modules\\/mod_video\\/videos\\/thumbs\\/clip1.jpg","videoimage07":"modules\\/mod_video\\/videos\\/images\\/clip1.jpg","videosource07":"videos\\/clip1.flv","video08":"1","videothumb08":"modules\\/mod_video\\/videos\\/thumbs\\/clip2.jpg","videoimage08":"modules\\/mod_video\\/videos\\/images\\/clip2.jpg","videosource08":"videos\\/clip2.flv","video09":"1","videothumb09":"modules\\/mod_video\\/videos\\/thumbs\\/clip1.jpg","videoimage09":"modules\\/mod_video\\/videos\\/images\\/clip1.jpg","videosource09":"videos\\/clip1.flv","video10":"1","videothumb10":"modules\\/mod_video\\/videos\\/thumbs\\/clip2.jpg","videoimage10":"modules\\/mod_video\\/videos\\/images\\/clip2.jpg","videosource10":"videos\\/clip2.flv","cache":"0","cache_time":"900","admin_modified":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_finder_filters`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_finder_filters`;
CREATE TABLE IF NOT EXISTS `joem2_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `joem2_finder_filters`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_finder_links`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_finder_links`;
CREATE TABLE IF NOT EXISTS `joem2_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
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
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `joem2_finder_links`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_finder_links_terms0`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_finder_links_terms0`;
CREATE TABLE IF NOT EXISTS `joem2_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_finder_links_terms0`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_finder_links_terms1`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_finder_links_terms1`;
CREATE TABLE IF NOT EXISTS `joem2_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_finder_links_terms1`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_finder_links_terms2`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_finder_links_terms2`;
CREATE TABLE IF NOT EXISTS `joem2_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_finder_links_terms2`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_finder_links_terms3`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_finder_links_terms3`;
CREATE TABLE IF NOT EXISTS `joem2_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_finder_links_terms3`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_finder_links_terms4`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_finder_links_terms4`;
CREATE TABLE IF NOT EXISTS `joem2_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_finder_links_terms4`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_finder_links_terms5`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_finder_links_terms5`;
CREATE TABLE IF NOT EXISTS `joem2_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_finder_links_terms5`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_finder_links_terms6`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_finder_links_terms6`;
CREATE TABLE IF NOT EXISTS `joem2_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_finder_links_terms6`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_finder_links_terms7`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_finder_links_terms7`;
CREATE TABLE IF NOT EXISTS `joem2_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_finder_links_terms7`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_finder_links_terms8`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_finder_links_terms8`;
CREATE TABLE IF NOT EXISTS `joem2_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_finder_links_terms8`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_finder_links_terms9`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_finder_links_terms9`;
CREATE TABLE IF NOT EXISTS `joem2_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_finder_links_terms9`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_finder_links_termsa`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_finder_links_termsa`;
CREATE TABLE IF NOT EXISTS `joem2_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_finder_links_termsa`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_finder_links_termsb`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_finder_links_termsb`;
CREATE TABLE IF NOT EXISTS `joem2_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_finder_links_termsb`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_finder_links_termsc`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_finder_links_termsc`;
CREATE TABLE IF NOT EXISTS `joem2_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_finder_links_termsc`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_finder_links_termsd`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_finder_links_termsd`;
CREATE TABLE IF NOT EXISTS `joem2_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_finder_links_termsd`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_finder_links_termse`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_finder_links_termse`;
CREATE TABLE IF NOT EXISTS `joem2_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_finder_links_termse`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_finder_links_termsf`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_finder_links_termsf`;
CREATE TABLE IF NOT EXISTS `joem2_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_finder_links_termsf`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_finder_taxonomy`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_finder_taxonomy`;
CREATE TABLE IF NOT EXISTS `joem2_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `joem2_finder_taxonomy`
--

INSERT INTO `joem2_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_finder_taxonomy_map`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_finder_taxonomy_map`;
CREATE TABLE IF NOT EXISTS `joem2_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_finder_taxonomy_map`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_finder_terms`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_finder_terms`;
CREATE TABLE IF NOT EXISTS `joem2_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `joem2_finder_terms`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_finder_terms_common`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_finder_terms_common`;
CREATE TABLE IF NOT EXISTS `joem2_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_finder_terms_common`
--

INSERT INTO `joem2_finder_terms_common` (`term`, `language`) VALUES
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
('aren''t', 'en'),
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
('isn''t', 'en'),
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
-- Tabellenstruktur für Tabelle `joem2_finder_tokens`
--

DROP TABLE IF EXISTS `joem2_finder_tokens`;
CREATE TABLE IF NOT EXISTS `joem2_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_finder_tokens`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `joem2_finder_tokens_aggregate`;
CREATE TABLE IF NOT EXISTS `joem2_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_finder_tokens_aggregate`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_finder_types`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_finder_types`;
CREATE TABLE IF NOT EXISTS `joem2_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `joem2_finder_types`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_languages`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_languages`;
CREATE TABLE IF NOT EXISTS `joem2_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `joem2_languages`
--

INSERT INTO `joem2_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 0, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_menu`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_menu`;
CREATE TABLE IF NOT EXISTS `joem2_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=196 ;

--
-- Daten für Tabelle `joem2_menu`
--

INSERT INTO `joem2_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 193, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 49, 54, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 50, 51, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 52, 53, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 55, 60, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 56, 57, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 58, 59, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 61, 66, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 62, 63, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 64, 65, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 67, 68, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 69, 70, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 71, 76, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 72, 73, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 74, 75, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 77, 78, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 79, 80, 0, '*', 1),
(23, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 81, 82, 0, '', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"0","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":0,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 11, 12, 1, '*', 0),
(102, 'mainmenu', 'Aktuelles', 'aktuelles', '', 'aktuelles', 'index.php?option=com_content&view=article&id=32', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 0, '*', 0),
(103, 'mainmenu', 'Angebot', 'angebot', '', 'angebot', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 13, 46, 0, '*', 0),
(104, 'mainmenu', 'Allgemeine Infos', 'allgemeine-infos', '', 'angebot/allgemeine-infos', 'index.php?Itemid=', 'alias', 1, 103, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"105","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 14, 23, 0, '*', 0),
(105, 'mainmenu', 'Schulform', 'schulform', '', 'angebot/allgemeine-infos/schulform', 'index.php?option=com_content&view=article&id=5', 'component', 1, 104, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 15, 16, 0, '*', 0),
(106, 'mainmenu', 'Schulgebäude', 'schulgebaeude', '', 'angebot/allgemeine-infos/schulgebaeude', 'index.php?option=com_content&view=article&id=6', 'component', 1, 104, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 17, 18, 0, '*', 0),
(107, 'mainmenu', 'Pädagogische Grundsätze', 'paedagogische-grundsaetze', '', 'angebot/allgemeine-infos/paedagogische-grundsaetze', 'index.php?option=com_content&view=article&id=7', 'component', 1, 104, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 19, 20, 0, '*', 0),
(108, 'mainmenu', 'Wir gestalten Schule', 'wir-gestalten-schule', '', 'angebot/allgemeine-infos/wir-gestalten-schule', 'index.php?option=com_content&view=article&id=8', 'component', 1, 104, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 21, 22, 0, '*', 0),
(109, 'mainmenu', 'Unterstufe', 'unterstufe', '', 'angebot/unterstufe', 'index.php?Itemid=', 'alias', 1, 103, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"110","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 24, 37, 0, '*', 0),
(110, 'mainmenu', 'Was ist die WMS', 'was-ist-die-wms', '', 'angebot/unterstufe/was-ist-die-wms', 'index.php?option=com_content&view=article&id=10', 'component', 1, 109, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 25, 26, 0, '*', 0),
(111, 'mainmenu', 'Besonderheiten', 'besonderheiten', '', 'angebot/unterstufe/besonderheiten', 'index.php?option=com_content&view=article&id=11', 'component', 1, 109, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 27, 28, 0, '*', 0),
(112, 'mainmenu', 'Berufsorientierung', 'berufsorientierung', '', 'angebot/unterstufe/berufsorientierung', 'index.php?option=com_content&view=article&id=12', 'component', 1, 109, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 29, 30, 0, '*', 0),
(113, 'mainmenu', 'Stundentafel', 'stundentafel', '', 'angebot/unterstufe/stundentafel', 'index.php?option=com_content&view=article&id=13', 'component', 1, 109, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 31, 32, 0, '*', 0),
(114, 'mainmenu', 'Tagesbetreuung', 'tagesbetreuung', '', 'angebot/unterstufe/tagesbetreuung', 'index.php?option=com_content&view=article&id=14', 'component', 1, 109, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 33, 34, 0, '*', 0),
(115, 'mainmenu', 'Mittagsbetreuung', 'mittagsbetreuung', '', 'angebot/unterstufe/mittagsbetreuung', 'index.php?option=com_content&view=article&id=15', 'component', 1, 109, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 35, 36, 0, '*', 0),
(116, 'mainmenu', 'Oberstufe', 'oberstufe', '', 'angebot/oberstufe', 'index.php?Itemid=', 'alias', 1, 103, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"117","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 38, 45, 0, '*', 0),
(117, 'mainmenu', 'Unsere Oberstufe', 'unsere-oberstufe', '', 'angebot/oberstufe/unsere-oberstufe', 'index.php?option=com_content&view=article&id=17', 'component', 1, 116, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 39, 40, 0, '*', 0),
(118, 'mainmenu', 'Stundentafel', 'stundentafel', '', 'angebot/oberstufe/stundentafel', 'index.php?option=com_content&view=article&id=18', 'component', 1, 116, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 42, 0, '*', 0),
(119, 'mainmenu', 'Zentrale Reifeprüfung', 'zentrale-reifepruefung', '', 'angebot/oberstufe/zentrale-reifepruefung', 'index.php?option=com_content&view=article&id=19', 'component', 1, 116, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 43, 44, 0, '*', 0),
(120, 'mainmenu', 'Erfolge', 'erfolge', '', 'erfolge', 'index.php?Itemid=', 'alias', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"167","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 83, 96, 0, '*', 0),
(121, 'mainmenu', 'Schulteam', 'schulteam', '', 'schulteam', 'index.php?Itemid=', 'alias', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"122","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 97, 114, 0, '*', 0),
(122, 'mainmenu', 'Direktion', 'direktion', '', 'schulteam/direktion', 'index.php?option=com_content&view=article&id=34', 'component', 1, 121, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 98, 99, 0, '*', 0),
(123, 'mainmenu', 'LehrerInnen', 'lehrerinnen', '', 'schulteam/lehrerinnen', '../images/Bilder/Schulteam/Lehrerinnen/Leherliste_13_14_Faecher.pdf', 'url', 1, 121, 2, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 100, 101, 0, '*', 0),
(124, 'mainmenu', 'SchülerInnen', 'schuelerinnen', '', 'schulteam/schuelerinnen', 'index.php?option=com_content&view=article&id=36', 'component', 1, 121, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 102, 103, 0, '*', 0),
(127, 'mainmenu', 'Psychologin', 'psychologin', '', 'schulteam/psychologin', 'index.php?option=com_content&view=article&id=39', 'component', 1, 121, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 104, 105, 0, '*', 0),
(128, 'mainmenu', 'Schulärztin', 'schulaerztin', '', 'schulteam/schulaerztin', 'index.php?option=com_content&view=article&id=40', 'component', 1, 121, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 106, 107, 0, '*', 0),
(129, 'mainmenu', 'BetreuungslehrerIn', 'betreuungslehrerin', '', 'schulteam/betreuungslehrerin', 'index.php?option=com_content&view=article&id=41', 'component', 1, 121, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 108, 109, 0, '*', 0),
(131, 'mainmenu', 'BildungsberaterInnen', 'bildungsberaterinnen', '', 'schulteam/bildungsberaterinnen', 'index.php?option=com_content&view=article&id=43', 'component', 1, 121, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 110, 111, 0, '*', 0),
(132, 'mainmenu', 'AbsolventInnen', 'absolventinnen', '', 'schulteam/absolventinnen', 'index.php?option=com_content&view=article&id=44', 'component', 1, 121, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 112, 113, 0, '*', 0),
(133, 'mainmenu', 'Schulpartner', 'schulpartner', '', 'schulpartner', 'index.php?Itemid=', 'alias', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"134","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 115, 126, 0, '*', 0),
(134, 'mainmenu', 'SGA', 'sga', '', 'schulpartner/sga', 'index.php?option=com_content&view=article&id=46', 'component', 1, 133, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 116, 117, 0, '*', 0),
(135, 'mainmenu', 'Kooperationen', 'sponsoren', '', 'schulpartner/sponsoren', 'index.php?option=com_content&view=article&id=47', 'component', 1, 133, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 120, 121, 0, '*', 0),
(136, 'mainmenu', 'Links', 'links', '', 'schulpartner/links', 'index.php?option=com_content&view=article&id=48', 'component', 1, 133, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 122, 123, 0, '*', 0),
(137, 'mainmenu', 'Bibliothek', 'bibliothek', '', 'bibliothek', 'index.php?Itemid=', 'alias', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"138","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 127, 134, 0, '*', 0),
(138, 'mainmenu', 'Allgemeine Informationen', 'allgemeine-informationen', '', 'bibliothek/allgemeine-informationen', 'index.php?option=com_content&view=article&id=29', 'component', 1, 137, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 128, 129, 0, '*', 0),
(139, 'mainmenu', 'Buch der Monats', 'buch-der-woche', '', 'bibliothek/buch-der-woche', 'index.php?option=com_content&view=article&id=30', 'component', 1, 137, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 130, 131, 0, '*', 0),
(140, 'mainmenu', 'Öffnungszeiten', 'oeffnungszeiten', '', 'bibliothek/oeffnungszeiten', 'images/Bilder/Bibliothek/Oeffnungszeiten/ffnungszeiten1314.ppsx', 'url', 1, 137, 2, 0, 0, '0000-00-00 00:00:00', 2, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 132, 133, 0, '*', 0),
(141, 'mainmenu', 'Service', 'service', '', 'service', 'index.php?Itemid=', 'alias', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"142","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 135, 152, 0, '*', 0),
(142, 'mainmenu', 'Kontakt', 'kontakt', '', 'service/kontakt', 'index.php?option=com_content&view=article&id=21', 'component', 1, 141, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 136, 137, 0, '*', 0),
(143, 'mainmenu', 'Termine', 'termine', '', 'service/termine', 'index.php?option=com_content&view=article&id=50', 'component', 1, 141, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"1","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 138, 139, 0, '*', 0),
(144, 'mainmenu', 'Sprechstunden', 'sprechstunden', '', 'service/sprechstunden', '../images/Bilder/Service/Sprechstunden/Leherliste_13_14_Faecher_Sprechstunden31314.pdf', 'url', 1, 141, 2, 0, 0, '0000-00-00 00:00:00', 2, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 140, 141, 0, '*', 0),
(145, 'mainmenu', 'Formulare und Downloads', 'formulare-und-downloads', '', 'service/formulare-und-downloads', 'index.php?option=com_phocadownload&view=category&id=1', 'component', 1, 141, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_pagination":"1","show_pagination_limit":"1","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 144, 145, 0, '*', 0),
(146, 'mainmenu', 'Hausordnung', 'hausordnung', '', 'service/hausordnung', 'images/Bilder/Service/Hausordnung/Hausordnung oktober 2013.pdf', 'url', 1, 141, 2, 0, 0, '0000-00-00 00:00:00', 2, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 146, 147, 0, '*', 0),
(147, 'mainmenu', 'Maßnahmenkatalog', 'massnahmenkatalog', '', 'service/massnahmenkatalog', 'images/Bilder/Service/Masnahmenkatalog/Manahmenkatalog juni2012.pdf', 'url', 1, 141, 2, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 148, 149, 0, '*', 0),
(148, 'mainmenu', 'Impressum', 'impressum', '', 'service/impressum', 'index.php?option=com_content&view=article&id=49', 'component', 1, 141, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 150, 151, 0, '*', 0),
(157, 'main', 'JCE', 'jce', '', 'jce', 'index.php?option=com_jce', 'component', 0, 1, 1, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/logo.png', 0, '', 153, 162, 0, '', 1),
(158, 'main', 'WF_MENU_CPANEL', 'wf-menu-cpanel', '', 'jce/wf-menu-cpanel', 'index.php?option=com_jce', 'component', 0, 157, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-cpanel.png', 0, '', 154, 155, 0, '', 1),
(159, 'main', 'WF_MENU_CONFIG', 'wf-menu-config', '', 'jce/wf-menu-config', 'index.php?option=com_jce&view=config', 'component', 0, 157, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-config.png', 0, '', 156, 157, 0, '', 1),
(160, 'main', 'WF_MENU_PROFILES', 'wf-menu-profiles', '', 'jce/wf-menu-profiles', 'index.php?option=com_jce&view=profiles', 'component', 0, 157, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-profiles.png', 0, '', 158, 159, 0, '', 1),
(161, 'main', 'WF_MENU_INSTALL', 'wf-menu-install', '', 'jce/wf-menu-install', 'index.php?option=com_jce&view=installer', 'component', 0, 157, 2, 10007, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_jce/media/img/menu/jce-install.png', 0, '', 160, 161, 0, '', 1),
(163, 'hidden', 'Contiuni', 'contiuni01', '', 'contiuni01', 'index.php?option=com_wrapper&view=wrapper', 'component', 1, 1, 1, 2, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"url":"\\/contiuni\\/index.php","scrolling":"auto","width":"100%","height":"500","height_auto":"1","add_scheme":"1","frameborder":"0","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"contiuni","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 163, 164, 0, '*', 0),
(167, 'mainmenu', 'Projekte', 'projekte', '', 'erfolge/projekte', 'index.php?option=com_content&view=article&id=27', 'component', 1, 120, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 84, 85, 0, '*', 0),
(168, 'mainmenu', 'Aktivitäten', 'aktivitaeten', '', 'erfolge/aktivitaeten', 'index.php?option=com_content&view=article&id=52', 'component', 1, 120, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 86, 87, 0, '*', 0),
(169, 'mainmenu', 'Veranstaltungen', 'veranstaltungen', '', 'erfolge/veranstaltungen', 'index.php?option=com_content&view=article&id=53', 'component', 1, 120, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 88, 89, 0, '*', 0),
(170, 'mainmenu', 'Awards', 'awards', '', 'erfolge/awards', 'index.php?option=com_content&view=article&id=54', 'component', 1, 120, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 90, 91, 0, '*', 0),
(171, 'mainmenu', 'Buffet', 'buffet', '', 'schulpartner/buffet', 'index.php?option=com_content&view=article&id=55', 'component', 1, 133, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 124, 125, 0, '*', 0),
(172, 'mainmenu', 'Unterrichtszeiten', 'unterrichtszeiten', '', 'service/unterrichtszeiten', 'images/Bilder/Service/Unterrichtszeiten/UNterrichtszeiten.pdf', 'url', 1, 141, 2, 0, 0, '0000-00-00 00:00:00', 2, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 142, 143, 0, '*', 0),
(173, 'mainmenu', 'Elternverein', 'elternverein-neu', '', 'schulpartner/elternverein-neu', 'index.php?option=com_content&view=article&id=57', 'component', 1, 133, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 118, 119, 0, '*', 0),
(179, 'main', 'COM_PHOCADOWNLOAD', 'com-phocadownload', '', 'com-phocadownload', 'index.php?option=com_phocadownload', 'component', 0, 1, 1, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu.png', 0, '', 165, 192, 0, '', 1),
(180, 'main', 'COM_PHOCADOWNLOAD_CONTROLPANEL', 'com-phocadownload-controlpanel', '', 'com-phocadownload/com-phocadownload-controlpanel', 'index.php?option=com_phocadownload', 'component', 0, 179, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-control-panel.png', 0, '', 166, 167, 0, '', 1),
(181, 'main', 'COM_PHOCADOWNLOAD_FILES', 'com-phocadownload-files', '', 'com-phocadownload/com-phocadownload-files', 'index.php?option=com_phocadownload&view=phocadownloadfiles', 'component', 0, 179, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu-files.png', 0, '', 168, 169, 0, '', 1),
(182, 'main', 'COM_PHOCADOWNLOAD_CATEGORIES', 'com-phocadownload-categories', '', 'com-phocadownload/com-phocadownload-categories', 'index.php?option=com_phocadownload&view=phocadownloadcats', 'component', 0, 179, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu-category.png', 0, '', 170, 171, 0, '', 1),
(183, 'main', 'COM_PHOCADOWNLOAD_LICENSES', 'com-phocadownload-licenses', '', 'com-phocadownload/com-phocadownload-licenses', 'index.php?option=com_phocadownload&view=phocadownloadlics', 'component', 0, 179, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu-lic.png', 0, '', 172, 173, 0, '', 1),
(184, 'main', 'COM_PHOCADOWNLOAD_STATISTICS', 'com-phocadownload-statistics', '', 'com-phocadownload/com-phocadownload-statistics', 'index.php?option=com_phocadownload&view=phocadownloadstat', 'component', 0, 179, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu-stat.png', 0, '', 174, 175, 0, '', 1),
(185, 'main', 'COM_PHOCADOWNLOAD_DOWNLOADS', 'com-phocadownload-downloads', '', 'com-phocadownload/com-phocadownload-downloads', 'index.php?option=com_phocadownload&view=phocadownloaddownloads', 'component', 0, 179, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu-downloads.png', 0, '', 176, 177, 0, '', 1),
(186, 'main', 'COM_PHOCADOWNLOAD_UPLOADS', 'com-phocadownload-uploads', '', 'com-phocadownload/com-phocadownload-uploads', 'index.php?option=com_phocadownload&view=phocadownloaduploads', 'component', 0, 179, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu-uploads.png', 0, '', 178, 179, 0, '', 1),
(187, 'main', 'COM_PHOCADOWNLOAD_FILE_RATING', 'com-phocadownload-file-rating', '', 'com-phocadownload/com-phocadownload-file-rating', 'index.php?option=com_phocadownload&view=phocadownloadrafile', 'component', 0, 179, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu-vote-file.png', 0, '', 180, 181, 0, '', 1),
(188, 'main', 'COM_PHOCADOWNLOAD_TAGS', 'com-phocadownload-tags', '', 'com-phocadownload/com-phocadownload-tags', 'index.php?option=com_phocadownload&view=phocadownloadtags', 'component', 0, 179, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu-tags.png', 0, '', 182, 183, 0, '', 1),
(189, 'main', 'COM_PHOCADOWNLOAD_LAYOUT', 'com-phocadownload-layout', '', 'com-phocadownload/com-phocadownload-layout', 'index.php?option=com_phocadownload&view=phocadownloadlayouts', 'component', 0, 179, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu-layout.png', 0, '', 184, 185, 0, '', 1),
(190, 'main', 'COM_PHOCADOWNLOAD_STYLES', 'com-phocadownload-styles', '', 'com-phocadownload/com-phocadownload-styles', 'index.php?option=com_phocadownload&view=phocadownloadstyles', 'component', 0, 179, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu-style.png', 0, '', 186, 187, 0, '', 1),
(191, 'main', 'COM_PHOCADOWNLOAD_LOGGING', 'com-phocadownload-logging', '', 'com-phocadownload/com-phocadownload-logging', 'index.php?option=com_phocadownload&view=phocadownloadlogs', 'component', 0, 179, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu-logs.png', 0, '', 188, 189, 0, '', 1),
(192, 'main', 'COM_PHOCADOWNLOAD_INFO', 'com-phocadownload-info', '', 'com-phocadownload/com-phocadownload-info', 'index.php?option=com_phocadownload&view=phocadownloadinfo', 'component', 0, 179, 2, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'media/com_phocadownload/images/administrator/icon-16-pdl-menu-info.png', 0, '', 190, 191, 0, '', 1),
(194, 'mainmenu', 'Schülerberichte', 'schuelerberichte', '', 'erfolge/schuelerberichte', 'index.php?option=com_content&view=article&id=67', 'component', 1, 120, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 92, 93, 0, '*', 0);
INSERT INTO `joem2_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(195, 'mainmenu', 'Archiv', 'archiv', '', 'erfolge/archiv', 'index.php?option=com_content&view=article&id=68', 'component', 1, 120, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_tags":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 94, 95, 0, '*', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_menu_types`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_menu_types`;
CREATE TABLE IF NOT EXISTS `joem2_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Daten für Tabelle `joem2_menu_types`
--

INSERT INTO `joem2_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'hidden', 'Contiuni', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_messages`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_messages`;
CREATE TABLE IF NOT EXISTS `joem2_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `joem2_messages`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_messages_cfg`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_messages_cfg`;
CREATE TABLE IF NOT EXISTS `joem2_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_messages_cfg`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_modules`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_modules`;
CREATE TABLE IF NOT EXISTS `joem2_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=117 ;

--
-- Daten für Tabelle `joem2_modules`
--

INSERT INTO `joem2_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Main Menu', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"art-hmenu","window_open":"","layout":"_:default","moduleclass_sfx":"art-vmenu","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 'Breadcrumbs', '', '', 1, 'position-17', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 0, '{"showHere":"0","showHome":"1","homeText":"Home","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(79, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 'Links', '', '<p><img style="float: left;" src="images/links.png" alt="links" /></p>', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"links","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 'Rechts', '', '<p><img style="float: right;" src="images/rechts01.png" alt="rechts" /></p>', 1, 'position-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"rechts","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(89, 'Schulteam', '', '<div class="schulteam_alles"><a id="schulteam_direktion" href="/index.php/schulteam/direktion">Direktion</a> <a id="schulteam_lehrerinnen" href="images/Bilder/Schulteam/Lehrerinnen/Leherliste_13_14_Faecher.pdf">LehrerInnen</a> <a id="schulteam_schuelerinnen" href="index.php/schulteam/schuelerinnen">SchülerInnen</a> <a id="schulteam_psychologin" href="index.php/schulteam/psychologin">Psychologin</a> <a id="schulteam_schulaerztin" href="index.php/schulteam/schulaerztin">Schulärztin</a> <a id="schulteam_betreuungslehrerin" href="index.php/schulteam/betreuungslehrerin">Betreuungs-lehrerin</a> <a id="schulteam_bildungsberaterinnen" href="index.php/schulteam/bildungsberaterinnen">Bildungsbe-raterInnen</a> <a id="schulteam_absolventinnen" href="index.php/schulteam/absolventinnen">Absolvent - Innen</a></div>', 1, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(90, 'Schulpartner', '', '<div class="schulpartner_alles"><a id="schulpartner_sga" href="/index.php/schulpartner/sga">SGA</a><a id="schulpartner_elternvereinneu" href="/index.php/schulpartner/elternverein-neu">Elternverein</a> <a id="schulpartner_sponsoren" href="index.php/schulpartner/sponsoren">Kooperationen</a> <a id="schulpartner_links" href="index.php/schulpartner/links">Links</a><a id="schulpartner_buffet" href="index.php/schulpartner/buffet">Buffet</a></div>', 1, 'position-4', 371, '2014-04-08 13:58:30', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(91, 'Allgemeine Infos', '', '<div class="allgemeine_infos_alles"><a id="allgemeine_infos_angebot" href="/index.php/angebot">Angebot</a><a id="allgemeine_infos_schulform" href="/index.php/angebot/allgemeine-infos/schulform">Schulform</a> <a id="allgemeine_infos_schulgebaeude" href="index.php/angebot/allgemeine-infos/schulgebaeude">Schulgebäude</a> <a id="allgemeine_infos_padgrundsaetze" href="index.php/angebot/allgemeine-infos/paedagogische-grundsaetze">Pädagogische </p> Grundsätze</a> <a id="allgemeine_infos_wirgestaltenschule" href="index.php/angebot/allgemeine-infos/wir-gestalten-schule">Wir gestalten </p> Schule</a></div>', 1, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 'Unterstufe', '', '<div class="unterstufe_alles"><a id="unterstufe_angebot" href="/index.php/angebot">Angebot</a><a id="unterstufe_wasistdiewms" href="/index.php/angebot/unterstufe/was-ist-die-wms">Was ist die WMS</a><a id="unterstufe_besonderheiten" href="/index.php/angebot/unterstufe/besonderheiten">Besonderheiten</a><a id="unterstufe_berufsorientierung" href="/index.php/angebot/unterstufe/berufsorientierung">Berufs-orientierung</a><a id="unterstufe_stundentafel" href="/index.php/angebot/unterstufe/stundentafel">Stundentafel</a><a id="unterstufe_tagesbetreuung" href="/index.php/angebot/unterstufe/tagesbetreuung">Tagesbetreuung</a><a id="unterstufe_mittagsbetreuung" href="/index.php/angebot/unterstufe/mittagsbetreuung">Mittags-betreuung</a></div>', 1, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 'Oberstufe', '', '<div class="oberstufe_alles"><a id="oberstufe_angebot" href="/index.php/angebot">Angebot</a> <a id="oberstufe_unsere_oberstufe" href="index.php/angebot/oberstufe/unsere-oberstufe">Unsere</p>Oberstufe</a> <a id="oberstufe_stundentafel" href="index.php/angebot/oberstufe/stundentafel">Stundentafel</a><a id="oberstufe_zentrale_reifepruefung" href="/index.php/angebot/oberstufe/zentrale-reifepruefung">Zentrale </p> Reifeprüfung</a> </div>', 1, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 'Bibliothek', '', '<div class="bibliothek_alles"><a id="bibliothek_allgemeine_informationen" href="/index.php/bibliothek/allgemeine-informationen">Allgemeine Informationen</a> <a id="bibliothek_buchderwoche" href="index.php/bibliothek/buch-der-woche">Buch des Monats</a><a id="bibliothek_oeffnungszeiten" href="images/Bilder/Bibliothek/Oeffnungszeiten/ffnungszeiten1314.ppsx" target="_new">Öffnungszeiten</a></div>', 1, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 'Service', '', '<div class="service_alles"><a id="service_kontakt" href="/index.php/service/kontakt">Kontakt</a> <a id="service_termine" href="index.php/service/termine">Termine</a> <a id="service_sprechstunden" href="images/Bilder/Service/Sprechstunden/Leherliste_13_14_Faecher_Sprechstunden31314.pdf">Sprechstunden</a> <a id="service_unterrichtszeiten" href="images/Bilder/Service/Unterrichtszeiten/UNterrichtszeiten.pdf" target="_new">Unterrichts- <br />zeiten</a><a id="service_formulare" href="index.php/service/formulare-und-downloads">Formulare und Downloads</a> <a id="service_hausordnung" href="images/Bilder/Service/Hausordnung/Hausordnung oktober 2013.pdf" target="_new">Hausordnung</a> <a id="service_massnahmenkatalog" href="images/Bilder/Service/Masnahmenkatalog/Manahmenkatalog juni2012.pdf" target="_new">Maßnahmen - katalog</a><a id="service_impressum" href="index.php/service/impressum">Impressum</a></div>', 1, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 'Avatar Slide Galleria', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_avatar_slide_galleria', 1, 1, '', 0, '*'),
(97, 'Slideshow', '', '', 1, 'position-30', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_random_image', 1, 0, '{"type":"jpg","folder":"images\\/slide","link":"","width":"","height":"200","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(98, 'Slideshow Avatar', '', '', 1, 'position-30', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_avatar_slide_galleria', 1, 1, '{"moduleclass_sfx":"","jquery":"latest","width":"100%","height":"0.5","Source":"folder","flickrSearchBy":"search","stringFlickr":"String,User Name,...","flickrSort":"interestingness-desc","picasaSearchBy":"search","stringPicasa":"String,User Name,...","folder":["slide"],"title":"","description":"","imageLink":"","theme":"classic","responsive":"false","lightBox":"false","showCounter":"false","showImageNav":"false","imgPan":"false","swipe":"false","fullscreenBtn":"false","progress":"false","imgPanSmoothness":"3","imgCrop":"true","fullsreenCrop":"true","thumbnails":"false","infoColor":"color","background":"transparent","bgColor":"#000000","titleColor":"#000000","desColor":"#000000","autoplay":"false","slideTime":"5000","transitionSpeed":"500","imageQuality":"original","dataSort":"false","transition":"slide","fullscreenTransition":"slide","showInfo":"false","showFileName":"false","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(99, 'Suche', '', '', 1, 'position-18', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 0, '{"label":"","width":"20","text":"","button":"1","button_pos":"right","imagebutton":"","button_text":"Suchen","opensearch":"0","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(100, 'GoogleCalendar', '', '', 1, 'position-22', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_googlecalendar', 1, 0, '{"code":"<iframe id=\\"calender\\" width=\\"98%\\" height=\\"550\\"  style=\\" border-width:0 ; padding-left: 5px;\\" src=\\"https:\\/\\/www.google.com\\/calendar\\/embed?height=480&amp;wkst=1&amp;bgcolor=%23cccccc&amp;src=grgorg22%40922066.ssr-wien.gv.at&amp;color=%232952A3&amp;src=e_2_de%23weeknum%40group.v.calendar.google.com&amp;color=%23AB8B00&amp;ctz=Europe%2FVienna\\" ><\\/iframe>","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(101, 'CDUB - CountDown-Up Big', '', '', 1, 'countdown', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_count_down_big', 1, 0, '{"ev_day":"29","ev_month":"06","ev_year":"2017","ev_hour":"00","ev_minute":"00","$ev_title":"","ev_text":"","ev_dates":"","ev_displaytitle":"0","ev_displaydate":"1","ev_dhourshow":"0","dynamic":"1","countup":"1","ev_ddaysleft":"1","showexpired":"1","color":"#000000","ev_displayurl":"0","ev_urltitle":"","ev_url":"http:\\/\\/","newwindow":"_self","ev_dlink_countup":"0","ev_displayurl_end":"0","ev_urltitle_end":"","ev_url_end":"http:\\/\\/","newwindow_end":"_self","ev_displayday":"0","datef":"dmy","moduleclass_sfx":"","poweredby":"no","donation_code":"","versioncheck_enable":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(103, 'Erfolge', '', '<div class="erfolge_alles"><a id="erfolge_projekte" href="/index.php/erfolge/projekte">Projekte</a><a id="erfolge_aktivitaeten" href="/index.php/erfolge/aktivitaeten">Aktivitäten</a><a id="erfolge_veranstaltungen" href="index.php/erfolge/veranstaltungen">Veranstaltungen</a><a id="erfolge_awards" href="index.php/erfolge/awards">Awards</a><a id="erfolge_schuelerberichte" href="index.php/erfolge/schuelerberichte">Schülerberichte</a><a id="erfolge_archiv" href="index.php/erfolge/archiv">Archiv</a></div>', 1, 'position-4', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(111, 'Rechts2', '', '<p><img style="float: right;" src="images/rechts02.png" alt="rechts" /></p>', 1, 'position-6', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","backgroundimage":"","layout":"_:default","moduleclass_sfx":"rechts","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(112, 'Magic Simple Video Player', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_video', 1, 1, '', 0, '*'),
(114, 'Film Handy gut', '', '', 1, 'filmhandygut', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_video', 1, 0, '{"moduleclass_sfx":"","vscript":"mod1","debugMode":"0","video01":"1","videothumb01":"\\/","videoimage01":"\\/","videosource01":"images\\/Bilder\\/Erfolge\\/Projekte\\/Film Handy gut.mp4","cache_time":"900","admin_modified":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(115, 'VideoContiwegNottingham', '', '', 1, 'videocontiwegnottingham', 367, '2014-04-07 08:52:35', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_video', 1, 0, '{"moduleclass_sfx":"","vscript":"mod1","debugMode":"0","video01":"1","videothumb01":"\\/","videoimage01":"\\/","videosource01":"images\\/Bilder\\/Erfolge\\/Projekte\\/Video Contiweg-Nottingham.mp4","cache_time":"900","admin_modified":"1","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_modules_menu`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_modules_menu`;
CREATE TABLE IF NOT EXISTS `joem2_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_modules_menu`
--

INSERT INTO `joem2_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
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
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 102),
(87, 103),
(88, 103),
(88, 105),
(88, 107),
(88, 109),
(88, 111),
(88, 113),
(88, 115),
(88, 117),
(88, 119),
(88, 120),
(88, 122),
(88, 124),
(88, 128),
(88, 131),
(88, 133),
(88, 136),
(88, 137),
(88, 139),
(88, 141),
(88, 143),
(88, 146),
(88, 148),
(88, 168),
(88, 170),
(88, 172),
(88, 173),
(88, 195),
(89, 121),
(89, 122),
(89, 123),
(89, 124),
(89, 127),
(89, 128),
(89, 129),
(89, 131),
(89, 132),
(90, 133),
(90, 134),
(90, 135),
(90, 136),
(90, 171),
(90, 173),
(91, 104),
(91, 105),
(91, 106),
(91, 107),
(91, 108),
(92, 109),
(92, 110),
(92, 111),
(92, 112),
(92, 113),
(92, 114),
(92, 115),
(93, 116),
(93, 117),
(93, 118),
(93, 119),
(94, 137),
(94, 138),
(94, 139),
(94, 140),
(95, 141),
(95, 142),
(95, 143),
(95, 144),
(95, 145),
(95, 146),
(95, 147),
(95, 148),
(95, 172),
(97, 0),
(98, 0),
(99, 102),
(99, 103),
(99, 104),
(99, 105),
(99, 106),
(99, 107),
(99, 108),
(99, 109),
(99, 110),
(99, 111),
(99, 112),
(99, 113),
(99, 114),
(99, 115),
(99, 116),
(99, 117),
(99, 118),
(99, 119),
(99, 120),
(99, 121),
(99, 122),
(99, 123),
(99, 124),
(99, 125),
(99, 126),
(99, 127),
(99, 128),
(99, 129),
(99, 130),
(99, 131),
(99, 132),
(99, 133),
(99, 134),
(99, 135),
(99, 136),
(99, 137),
(99, 138),
(99, 139),
(99, 140),
(99, 141),
(99, 142),
(99, 143),
(99, 144),
(99, 145),
(99, 146),
(99, 147),
(99, 148),
(100, 143),
(101, 132),
(103, 120),
(103, 167),
(103, 168),
(103, 169),
(103, 170),
(103, 194),
(103, 195),
(111, 102),
(111, 104),
(111, 106),
(111, 108),
(111, 110),
(111, 112),
(111, 114),
(111, 116),
(111, 118),
(111, 121),
(111, 123),
(111, 127),
(111, 129),
(111, 132),
(111, 134),
(111, 135),
(111, 138),
(111, 140),
(111, 142),
(111, 144),
(111, 145),
(111, 147),
(111, 167),
(111, 169),
(111, 171),
(111, 194),
(114, 0),
(115, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_newsfeeds`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_newsfeeds`;
CREATE TABLE IF NOT EXISTS `joem2_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `joem2_newsfeeds`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_overrider`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_overrider`;
CREATE TABLE IF NOT EXISTS `joem2_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `joem2_overrider`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_phocadownload`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_phocadownload`;
CREATE TABLE IF NOT EXISTS `joem2_phocadownload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sectionid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `filename_play` varchar(250) NOT NULL DEFAULT '',
  `filename_preview` varchar(250) NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(255) NOT NULL DEFAULT '',
  `author_url` varchar(255) NOT NULL DEFAULT '',
  `license` varchar(255) NOT NULL DEFAULT '',
  `license_url` varchar(255) NOT NULL DEFAULT '',
  `image_filename` varchar(255) NOT NULL DEFAULT '',
  `image_filename_spec1` varchar(255) NOT NULL DEFAULT '',
  `image_filename_spec2` varchar(255) NOT NULL DEFAULT '',
  `image_download` varchar(255) NOT NULL DEFAULT '',
  `video_filename` varchar(255) NOT NULL DEFAULT '',
  `link_external` varchar(255) NOT NULL DEFAULT '',
  `mirror1link` varchar(255) NOT NULL DEFAULT '',
  `mirror1title` varchar(255) NOT NULL DEFAULT '',
  `mirror1target` varchar(10) NOT NULL DEFAULT '',
  `mirror2link` varchar(255) NOT NULL DEFAULT '',
  `mirror2title` varchar(255) NOT NULL DEFAULT '',
  `mirror2target` varchar(10) NOT NULL DEFAULT '',
  `description` text,
  `features` text,
  `changelog` text,
  `notes` text,
  `userid` int(11) NOT NULL DEFAULT '0',
  `version` varchar(255) NOT NULL DEFAULT '',
  `directlink` tinyint(1) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `textonly` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `confirm_license` int(11) NOT NULL DEFAULT '0',
  `unaccessible_file` int(11) NOT NULL DEFAULT '0',
  `token` char(64) DEFAULT NULL,
  `tokenhits` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Daten für Tabelle `joem2_phocadownload`
--

INSERT INTO `joem2_phocadownload` (`id`, `catid`, `sectionid`, `sid`, `owner_id`, `title`, `alias`, `filename`, `filename_play`, `filename_preview`, `filesize`, `author`, `author_email`, `author_url`, `license`, `license_url`, `image_filename`, `image_filename_spec1`, `image_filename_spec2`, `image_download`, `video_filename`, `link_external`, `mirror1link`, `mirror1title`, `mirror1target`, `mirror2link`, `mirror2title`, `mirror2target`, `description`, `features`, `changelog`, `notes`, `userid`, `version`, `directlink`, `date`, `publish_up`, `publish_down`, `hits`, `textonly`, `published`, `approved`, `checked_out`, `checked_out_time`, `ordering`, `access`, `confirm_license`, `unaccessible_file`, `token`, `tokenhits`, `params`, `metakey`, `metadesc`, `metadata`, `language`) VALUES
(1, 1, 0, 0, 0, 'Anmeldeformular Uebungen', 'anmeldeformular-uebungen', 'Formulare/anmeldeformular bungen.doc', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2014-03-23 11:50:14', '2014-03-23 11:50:14', '0000-00-00 00:00:00', 14, 0, 1, 1, 0, '0000-00-00 00:00:00', 1, 1, 0, 0, '', 0, NULL, '', '', NULL, '*'),
(2, 1, 0, 0, 0, 'Entschuldigungsformular', 'entschuldigungsformular', 'Formulare/entschuldigungsformular.doc', '', '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '_self', '', '', '_self', '', '', '', '', 0, '', 0, '2014-03-23 11:50:41', '2014-03-23 11:50:41', '0000-00-00 00:00:00', 50, 0, 1, 1, 0, '0000-00-00 00:00:00', 2, 1, 0, 0, '', 0, NULL, '', '', NULL, '*');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_phocadownload_categories`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_phocadownload_categories`;
CREATE TABLE IF NOT EXISTS `joem2_phocadownload_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `section` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `uploaduserid` text,
  `accessuserid` text,
  `deleteuserid` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `count` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `joem2_phocadownload_categories`
--

INSERT INTO `joem2_phocadownload_categories` (`id`, `parent_id`, `section`, `title`, `name`, `alias`, `image`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `uploaduserid`, `accessuserid`, `deleteuserid`, `date`, `count`, `hits`, `params`, `metakey`, `metadesc`, `metadata`, `language`) VALUES
(1, 0, 0, 'Formulare', '', 'formulare', '', '', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 1, '0', '0', '0', '2014-03-23 11:49:44', 0, 0, NULL, '', '', NULL, '*');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_phocadownload_file_votes`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_phocadownload_file_votes`;
CREATE TABLE IF NOT EXISTS `joem2_phocadownload_file_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `joem2_phocadownload_file_votes`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_phocadownload_file_votes_statistics`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_phocadownload_file_votes_statistics`;
CREATE TABLE IF NOT EXISTS `joem2_phocadownload_file_votes_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `joem2_phocadownload_file_votes_statistics`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_phocadownload_layout`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_phocadownload_layout`;
CREATE TABLE IF NOT EXISTS `joem2_phocadownload_layout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categories` text,
  `category` text,
  `file` text,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `joem2_phocadownload_layout`
--

INSERT INTO `joem2_phocadownload_layout` (`id`, `categories`, `category`, `file`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, '<div class="pd-categoriesbox">\r\n<div class="pd-title">{pdtitle}</div>\r\n{pdsubcategories}\r\n{pdclear}\r\n</div>', '<div class="pd-filebox">\r\n{pdfiledesctop}\r\n{pdfile}\r\n<div class="pd-buttons">{pdbuttondownload}</div>\r\n<div class="pd-buttons">{pdbuttondetails}</div>\r\n<div class="pd-buttons">{pdbuttonpreview}</div>\r\n<div class="pd-buttons">{pdbuttonplay}</div>\r\n<div class="pd-mirrors">{pdmirrorlink2} {pdmirrorlink1}</div>\r\n<div class="pd-rating">{pdrating}</div>\r\n<div class="pd-tags">{pdtags}</div>\r\n{pdfiledescbottom}\r\n<div class="pd-cb"></div>\r\n</div>', '<div class="pd-filebox">\r\n{pdimage}\r\n{pdfile}\r\n{pdfilesize}\r\n{pdversion}\r\n{pdlicense}\r\n{pdauthor}\r\n{pdauthoremail}\r\n{pdfiledate}\r\n{pddownloads}\r\n{pddescription}\r\n{pdfeatures}\r\n{pdchangelog}\r\n{pdnotes}\r\n<div class="pd-mirrors">{pdmirrorlink2} {pdmirrorlink1}</div>\r\n<div class="pd-report">{pdreportlink}</div>\r\n<div class="pd-rating">{pdrating}</div>\r\n<div class="pd-tags">{pdtags}</div>\r\n<div class="pd-cb"></div>\r\n</div>', 371, '2014-04-08 21:22:32', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_phocadownload_licenses`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_phocadownload_licenses`;
CREATE TABLE IF NOT EXISTS `joem2_phocadownload_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `joem2_phocadownload_licenses`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_phocadownload_logging`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_phocadownload_logging`;
CREATE TABLE IF NOT EXISTS `joem2_phocadownload_logging` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `fileid` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `page` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `joem2_phocadownload_logging`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_phocadownload_styles`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_phocadownload_styles`;
CREATE TABLE IF NOT EXISTS `joem2_phocadownload_styles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `menulink` text,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Daten für Tabelle `joem2_phocadownload_styles`
--

INSERT INTO `joem2_phocadownload_styles` (`id`, `title`, `alias`, `filename`, `menulink`, `type`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `language`) VALUES
(1, 'Phocadownload', 'phocadownload', 'phocadownload.css', NULL, 1, 1, 0, '0000-00-00 00:00:00', 1, NULL, '*'),
(2, 'Rating', 'rating', 'rating.css', NULL, 1, 1, 0, '0000-00-00 00:00:00', 2, NULL, '*'),
(3, 'Button', 'button', 'button.css', NULL, 1, 0, 0, '0000-00-00 00:00:00', 3, NULL, '*'),
(4, 'Button (Rounded Corners)', '', 'buttonrc.css', NULL, 1, 0, 0, '0000-00-00 00:00:00', 4, NULL, '*'),
(5, 'Default', 'default', 'default.css', NULL, 2, 1, 0, '0000-00-00 00:00:00', 1, NULL, '*'),
(6, 'Bootstrap', '', 'bootstrap.min.css', NULL, 1, 0, 0, '0000-00-00 00:00:00', 5, NULL, '*');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_phocadownload_tags`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_phocadownload_tags`;
CREATE TABLE IF NOT EXISTS `joem2_phocadownload_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link_ext` varchar(255) NOT NULL DEFAULT '',
  `link_cat` int(11) unsigned NOT NULL DEFAULT '0',
  `description` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `joem2_phocadownload_tags`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_phocadownload_tags_ref`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_phocadownload_tags_ref`;
CREATE TABLE IF NOT EXISTS `joem2_phocadownload_tags_ref` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fileid` int(11) NOT NULL DEFAULT '0',
  `tagid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `i_fileid` (`fileid`,`tagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `joem2_phocadownload_tags_ref`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_phocadownload_user_stat`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_phocadownload_user_stat`;
CREATE TABLE IF NOT EXISTS `joem2_phocadownload_user_stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Daten für Tabelle `joem2_phocadownload_user_stat`
--

INSERT INTO `joem2_phocadownload_user_stat` (`id`, `fileid`, `userid`, `count`, `date`, `published`, `ordering`, `language`) VALUES
(1, 2, 0, 50, '2014-04-10 19:27:37', 0, 0, ''),
(2, 1, 0, 14, '2014-04-10 07:20:16', 0, 0, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_redirect_links`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_redirect_links`;
CREATE TABLE IF NOT EXISTS `joem2_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `joem2_redirect_links`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_schemas`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_schemas`;
CREATE TABLE IF NOT EXISTS `joem2_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_schemas`
--

INSERT INTO `joem2_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.1.5'),
(10022, '3.0.2');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_session`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_session`;
CREATE TABLE IF NOT EXISTS `joem2_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_session`
--

INSERT INTO `joem2_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('bucj1r1uoppig008vk8ou5hn51', 0, 1, '1397256023', '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1397256023;s:18:"session.timer.last";i:1397256023;s:17:"session.timer.now";i:1397256023;s:22:"session.client.browser";s:72:"Mozilla/5.0 (Windows NT 6.2; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":24:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}}', 0, ''),
('eku0s18lfkv9b3a5vk6aqclc01', 0, 1, '1397255711', '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1397255710;s:18:"session.timer.last";i:1397255710;s:17:"session.timer.now";i:1397255710;s:22:"session.client.browser";s:83:"Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":24:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}}', 0, ''),
('jrnduvnefn7mqbvt4fk6s8iml3', 1, 0, '1397255786', '__default|a:8:{s:15:"session.counter";i:24;s:19:"session.timer.start";i:1397253317;s:18:"session.timer.last";i:1397255785;s:17:"session.timer.now";i:1397255785;s:22:"session.client.browser";s:72:"Mozilla/5.0 (Windows NT 6.2; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":3:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:5:"de-DE";}s:11:"com_content";O:8:"stdClass":2:{s:8:"articles";O:8:"stdClass":4:{s:6:"filter";O:8:"stdClass":8:{s:6:"search";s:0:"";s:6:"access";i:0;s:9:"author_id";s:0:"";s:9:"published";s:0:"";s:11:"category_id";s:0:"";s:5:"level";i:0;s:8:"language";s:0:"";s:3:"tag";s:0:"";}s:10:"limitstart";s:2:"20";s:8:"ordercol";s:7:"a.title";s:9:"orderdirn";s:3:"asc";}s:4:"edit";O:8:"stdClass":1:{s:7:"article";O:8:"stdClass":2:{s:2:"id";a:1:{i:0;i:21;}s:4:"data";N;}}}s:6:"global";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"limit";i:20;}}}}s:4:"user";O:5:"JUser":24:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";s:3:"371";s:4:"name";s:14:"Monika Auböck";s:8:"username";s:14:"monika.auboeck";s:5:"email";s:26:"monika.auboeck@contiweg.at";s:8:"password";s:65:"617b0734ff4d503f6b4d1fdb440d4e05:Q7cCmMzgRxV3VR2OwoJkKMRgGABWBlML";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"0";s:12:"registerDate";s:19:"2014-04-08 13:07:53";s:13:"lastvisitDate";s:19:"2014-04-11 19:44:21";s:10:"activation";s:0:"";s:6:"params";s:92:"{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}";s:6:"groups";a:2:{i:2;s:1:"2";i:7;s:1:"7";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":6:{s:11:"admin_style";s:0:"";s:14:"admin_language";s:0:"";s:8:"language";s:0:"";s:6:"editor";s:0:"";s:8:"helpsite";s:0:"";s:8:"timezone";s:0:"";}}s:14:"\\0\\0\\0_authGroups";a:4:{i:0;i:1;i:1;i:2;i:3;i:6;i:4;i:7;}s:14:"\\0\\0\\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"1685c4cf81897340a9d04bedbf236180";}__wf|a:1:{s:13:"session.token";s:32:"a4b004db6ecae2129631e17a78522654";}', 371, 'monika.auboeck'),
('p293uitdv4uic9fnuk76a966s0', 0, 1, '1397255870', '__default|a:7:{s:15:"session.counter";i:11;s:19:"session.timer.start";i:1397253311;s:18:"session.timer.last";i:1397255866;s:17:"session.timer.now";i:1397255870;s:22:"session.client.browser";s:72:"Mozilla/5.0 (Windows NT 6.2; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":24:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}}', 0, ''),
('p3tng48ak3q6qfi48hj9al0pu7', 1, 0, '1397256371', '__default|a:8:{s:15:"session.counter";i:30;s:19:"session.timer.start";i:1397256026;s:18:"session.timer.last";i:1397256370;s:17:"session.timer.now";i:1397256371;s:22:"session.client.browser";s:72:"Mozilla/5.0 (Windows NT 6.2; WOW64; rv:28.0) Gecko/20100101 Firefox/28.0";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":3:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:5:"de-DE";}s:14:"com_categories";O:8:"stdClass":1:{s:10:"categories";O:8:"stdClass":1:{s:6:"filter";O:8:"stdClass":1:{s:9:"extension";s:11:"com_content";}}}s:10:"com_config";O:8:"stdClass":1:{s:6:"config";O:8:"stdClass":1:{s:6:"global";O:8:"stdClass":1:{s:4:"data";N;}}}}}s:4:"user";O:5:"JUser":24:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";s:3:"371";s:4:"name";s:14:"Monika Auböck";s:8:"username";s:14:"monika.auboeck";s:5:"email";s:26:"monika.auboeck@contiweg.at";s:8:"password";s:65:"617b0734ff4d503f6b4d1fdb440d4e05:Q7cCmMzgRxV3VR2OwoJkKMRgGABWBlML";s:14:"password_clear";s:0:"";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"0";s:12:"registerDate";s:19:"2014-04-08 13:07:53";s:13:"lastvisitDate";s:19:"2014-04-11 21:55:42";s:10:"activation";s:0:"";s:6:"params";s:92:"{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}";s:6:"groups";a:2:{i:2;s:1:"2";i:7;s:1:"7";}s:5:"guest";i:0;s:13:"lastResetTime";s:19:"0000-00-00 00:00:00";s:10:"resetCount";s:1:"0";s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":6:{s:11:"admin_style";s:0:"";s:14:"admin_language";s:0:"";s:8:"language";s:0:"";s:6:"editor";s:0:"";s:8:"helpsite";s:0:"";s:8:"timezone";s:0:"";}}s:14:"\\0\\0\\0_authGroups";a:4:{i:0;i:1;i:1;i:2;i:3;i:6;i:4;i:7;}s:14:"\\0\\0\\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"9e34398520cc32ae270c02a47a2e72c0";}', 371, 'monika.auboeck'),
('pbej7pk73l9a4pioe5nlefnd51', 0, 1, '1397255756', '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1397255756;s:18:"session.timer.last";i:1397255756;s:17:"session.timer.now";i:1397255756;s:22:"session.client.browser";s:83:"Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)";s:8:"registry";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:4:"user";O:5:"JUser":24:{s:9:"\\0\\0\\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:1:{i:0;s:1:"9";}s:5:"guest";i:1;s:13:"lastResetTime";N;s:10:"resetCount";N;s:10:"\\0\\0\\0_params";O:9:"JRegistry":1:{s:7:"\\0\\0\\0data";O:8:"stdClass":0:{}}s:14:"\\0\\0\\0_authGroups";a:2:{i:0;i:1;i:1;i:9;}s:14:"\\0\\0\\0_authLevels";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:"\\0\\0\\0_authActions";N;s:12:"\\0\\0\\0_errorMsg";N;s:10:"\\0\\0\\0_errors";a:0:{}s:3:"aid";i:0;}}', 0, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_tags`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_tags`;
CREATE TABLE IF NOT EXISTS `joem2_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `joem2_tags`
--

INSERT INTO `joem2_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_template_styles`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_template_styles`;
CREATE TABLE IF NOT EXISTS `joem2_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Daten für Tabelle `joem2_template_styles`
--

INSERT INTO `joem2_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'protostar - Default', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"","logoFile":""}'),
(9, 'contiweg', 0, '1', 'Contiweg - Default', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_ucm_base`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_ucm_base`;
CREATE TABLE IF NOT EXISTS `joem2_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_ucm_base`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_ucm_content`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_ucm_content`;
CREATE TABLE IF NOT EXISTS `joem2_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields' AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `joem2_ucm_content`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_updates`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_updates`;
CREATE TABLE IF NOT EXISTS `joem2_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=53 ;

--
-- Daten für Tabelle `joem2_updates`
--

INSERT INTO `joem2_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(1, 1, 700, 'Joomla', '', 'joomla', 'file', '', 0, '3.2.3', '', 'http://update.joomla.org/core/sts/extension_sts.xml', ''),
(2, 3, 0, 'Malay', '', 'pkg_ms-MY', 'package', '', 0, '3.2.2.1', '', 'http://update.joomla.org/language/details3/ms-MY_details.xml', ''),
(3, 3, 0, 'Romanian', '', 'pkg_ro-RO', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/ro-RO_details.xml', ''),
(4, 3, 0, 'Flemish', '', 'pkg_nl-BE', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/nl-BE_details.xml', ''),
(5, 3, 0, 'Chinese Traditional', '', 'pkg_zh-TW', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/zh-TW_details.xml', ''),
(6, 3, 0, 'French', '', 'pkg_fr-FR', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/fr-FR_details.xml', ''),
(7, 3, 10004, 'German', '', 'pkg_de-DE', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/de-DE_details.xml', ''),
(8, 3, 0, 'Greek', '', 'pkg_el-GR', 'package', '', 0, '3.2.0.1', '', 'http://update.joomla.org/language/details3/el-GR_details.xml', ''),
(9, 3, 0, 'Japanese', '', 'pkg_ja-JP', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/ja-JP_details.xml', ''),
(10, 3, 0, 'Hebrew', '', 'pkg_he-IL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/he-IL_details.xml', ''),
(11, 3, 0, 'EnglishAU', '', 'pkg_en-AU', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/en-AU_details.xml', ''),
(12, 3, 0, 'EnglishUS', '', 'pkg_en-US', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/en-US_details.xml', ''),
(13, 3, 0, 'Hungarian', '', 'pkg_hu-HU', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/hu-HU_details.xml', ''),
(14, 3, 0, 'Afrikaans', '', 'pkg_af-ZA', 'package', '', 0, '3.2.0.1', '', 'http://update.joomla.org/language/details3/af-ZA_details.xml', ''),
(15, 3, 0, 'Arabic Unitag', '', 'pkg_ar-AA', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/ar-AA_details.xml', ''),
(16, 3, 0, 'Belarusian', '', 'pkg_be-BY', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/be-BY_details.xml', ''),
(17, 3, 0, 'Bulgarian', '', 'pkg_bg-BG', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/bg-BG_details.xml', ''),
(18, 3, 0, 'Catalan', '', 'pkg_ca-ES', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/ca-ES_details.xml', ''),
(19, 3, 0, 'Chinese Simplified', '', 'pkg_zh-CN', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/zh-CN_details.xml', ''),
(20, 3, 0, 'Croatian', '', 'pkg_hr-HR', 'package', '', 0, '3.1.5.1', '', 'http://update.joomla.org/language/details3/hr-HR_details.xml', ''),
(21, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.2.3.3', '', 'http://update.joomla.org/language/details3/cs-CZ_details.xml', ''),
(22, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/da-DK_details.xml', ''),
(23, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/nl-NL_details.xml', ''),
(24, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/et-EE_details.xml', ''),
(25, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/it-IT_details.xml', ''),
(26, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/ko-KR_details.xml', ''),
(27, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.2.3.2', '', 'http://update.joomla.org/language/details3/lv-LV_details.xml', ''),
(28, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/mk-MK_details.xml', ''),
(29, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.2.2.1', '', 'http://update.joomla.org/language/details3/nb-NO_details.xml', ''),
(30, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/fa-IR_details.xml', ''),
(31, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/pl-PL_details.xml', ''),
(32, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/ru-RU_details.xml', ''),
(33, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/sk-SK_details.xml', ''),
(34, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/sv-SE_details.xml', ''),
(35, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/sy-IQ_details.xml', ''),
(36, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/ta-IN_details.xml', ''),
(37, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/th-TH_details.xml', ''),
(38, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/tr-TR_details.xml', ''),
(39, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.2.0.6', '', 'http://update.joomla.org/language/details3/uk-UA_details.xml', ''),
(40, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/ug-CN_details.xml', ''),
(41, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'http://update.joomla.org/language/details3/sq-AL_details.xml', ''),
(42, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.0.2.1', '', 'http://update.joomla.org/language/details3/pt-BR_details.xml', ''),
(43, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.2.3.3', '', 'http://update.joomla.org/language/details3/sr-YU_details.xml', ''),
(44, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/es-ES_details.xml', ''),
(45, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/bs-BA_details.xml', ''),
(46, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.2.3.2', '', 'http://update.joomla.org/language/details3/sr-RS_details.xml', ''),
(47, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/vi-VN_details.xml', ''),
(48, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/id-ID_details.xml', ''),
(49, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/fi-FI_details.xml', ''),
(50, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.2.3.1', '', 'http://update.joomla.org/language/details3/sw-KE_details.xml', ''),
(51, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.2.1.1', '', 'http://update.joomla.org/language/details3/srp-ME_details.xml', ''),
(52, 5, 0, 'Sourcerer', '', 'sourcerer', 'plugin', 'system', 0, '4.3.2FREE', '', 'http://download.nonumber.nl/updates.php?e=sourcerer&type=.zip/extension.xml', 'http://www.nonumber.nl/extensions/sourcerer#download');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_update_sites`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_update_sites`;
CREATE TABLE IF NOT EXISTS `joem2_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=6 ;

--
-- Daten für Tabelle `joem2_update_sites`
--

INSERT INTO `joem2_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1, 1397236880),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1, 1397236880),
(3, 'Accredited Joomla! Translations', 'collection', 'http://update.joomla.org/language/translationlist_3.xml', 1, 1397236880),
(4, 'JCE Editor Updates', 'extension', 'https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1&file=extension.xml', 1, 1397236878),
(5, 'NoNumber Sourcerer', 'extension', 'http://download.nonumber.nl/updates.php?e=sourcerer&type=.zip', 1, 1397236878);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_update_sites_extensions`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_update_sites_extensions`;
CREATE TABLE IF NOT EXISTS `joem2_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Daten für Tabelle `joem2_update_sites_extensions`
--

INSERT INTO `joem2_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 600),
(3, 10004),
(4, 10007),
(5, 10013);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_usergroups`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_usergroups`;
CREATE TABLE IF NOT EXISTS `joem2_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Daten für Tabelle `joem2_usergroups`
--

INSERT INTO `joem2_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 22, 'Public'),
(2, 1, 8, 19, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 20, 21, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_users`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_users`;
CREATE TABLE IF NOT EXISTS `joem2_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=375 ;

--
-- Daten für Tabelle `joem2_users`
--

INSERT INTO `joem2_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`) VALUES
(365, 'Super User', 'admin', 'd08096@student.htlwrn.ac.at', 'b30a7f8eac515841bdb81f5a4becd896:RtAXQ7efnNCiEDFyOK8Ch765sNps9vTN', 0, 1, '2013-12-04 21:43:43', '2013-12-05 11:42:12', '0', '{"admin_style":"","admin_language":"de-DE","language":"de-DE","editor":"jce","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0),
(366, 'Michael Lang', 'michael', 'michael@hug.at', 'ab2088ba72735548924b55f0e2f80ced:nqopmQWdUXDaCOZnr3qpHwHSLBekzFbp', 0, 0, '2013-12-05 11:33:18', '2014-03-20 10:44:11', '', '{"admin_style":"","admin_language":"de-DE","language":"de-DE","editor":"jce","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0),
(367, 'Lisa Strebl', 'lisa', 'lisa@hug.at', 'ce691e751d629df05610ddbcd8ff8ed9:l4IXZYCvntT0NzDCOuEtRlHbdFTYRIjq', 0, 0, '2013-12-05 11:33:50', '2014-04-11 17:21:17', '', '{"admin_style":"","admin_language":"de-DE","language":"de-DE","editor":"jce","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0),
(368, 'Mario Weisi', 'mario', 'mario@hug.at', '605a173781f364e5b85c7fb17afd8f10:IEBPWYCLewOpmDfwxUGFtUr1x6FNqvtm', 0, 0, '2013-12-05 11:34:26', '2014-04-08 13:05:06', '', '{"admin_style":"","admin_language":"de-DE","language":"de-DE","editor":"jce","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0),
(371, 'Monika Auböck', 'monika.auboeck', 'monika.auboeck@contiweg.at', '617b0734ff4d503f6b4d1fdb440d4e05:Q7cCmMzgRxV3VR2OwoJkKMRgGABWBlML', 0, 0, '2014-04-08 13:07:53', '2014-04-11 22:40:38', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0),
(372, 'Daniela Wrana', 'daniela.wrana', 'daniela.wrana@contiweg.at', 'b12e468f9903eb0a72d98922008383c0:mmiM7IjHbNgjNtDpR3lrsT6NNtqgg3CA', 0, 0, '2014-04-08 13:10:54', '2014-04-08 13:11:03', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0),
(373, 'Petra Pulling', 'petra.pulling', 'petra.pulling@contiweg.at', '0e4b70b181ac8a8f01c6195b1e950abd:KFVJwqfIMWFPhHRRNwLNnv3AuegjWCyQ', 0, 0, '2014-04-08 13:11:40', '2014-04-08 13:12:01', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0),
(374, 'Ursula Wischounig', 'ursula.wischounig', 'ursula.wischounig@contiweg.at', '00ce229957a5c9b1d4e6993b81cd2062:xDe6eBGHGaGVa6JQ2D6PMVesJVzVvGIr', 0, 0, '2014-04-08 13:13:29', '0000-00-00 00:00:00', '', '{"admin_style":"","admin_language":"","language":"","editor":"","helpsite":"","timezone":""}', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_user_notes`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_user_notes`;
CREATE TABLE IF NOT EXISTS `joem2_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `joem2_user_notes`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_user_profiles`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_user_profiles`;
CREATE TABLE IF NOT EXISTS `joem2_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

--
-- Daten für Tabelle `joem2_user_profiles`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_user_usergroup_map`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_user_usergroup_map`;
CREATE TABLE IF NOT EXISTS `joem2_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `joem2_user_usergroup_map`
--

INSERT INTO `joem2_user_usergroup_map` (`user_id`, `group_id`) VALUES
(365, 8),
(366, 8),
(367, 8),
(368, 8),
(371, 2),
(371, 7),
(372, 2),
(372, 7),
(373, 2),
(373, 7),
(374, 2),
(374, 7);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_viewlevels`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_viewlevels`;
CREATE TABLE IF NOT EXISTS `joem2_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Daten für Tabelle `joem2_viewlevels`
--

INSERT INTO `joem2_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]'),
(5, 'Guest', 0, '[9]');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_weblinks`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_weblinks`;
CREATE TABLE IF NOT EXISTS `joem2_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `joem2_weblinks`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `joem2_wf_profiles`
--
-- Erzeugt am: 03. April 2014 um 13:24
--

DROP TABLE IF EXISTS `joem2_wf_profiles`;
CREATE TABLE IF NOT EXISTS `joem2_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Daten für Tabelle `joem2_wf_profiles`
--

INSERT INTO `joem2_wf_profiles` (`id`, `name`, `description`, `users`, `types`, `components`, `area`, `device`, `rows`, `plugins`, `published`, `ordering`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Default', 'Default Profile for all users', '', '6,7,3,4,5,8', '', 0, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,preview,source,print,searchreplace,spacer,table;visualaid,visualchars,visualblocks,nonbreaking,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article,filemanager,mediamanager', 'charmap,contextmenu,browser,inlinepopups,media,help,clipboard,searchreplace,directionality,fullscreen,preview,source,table,textcase,print,style,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,filemanager,mediamanager', 1, 1, 0, '0000-00-00 00:00:00', '{"editor":{"max_size":"6144"}}'),
(2, 'Front End', 'Sample Front-end Profile', '', '3,4,5', '', 1, 'desktop,tablet,phone', 'help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article', 'charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists', 0, 2, 0, '0000-00-00 00:00:00', ''),
(3, 'Blogger', 'Simple Blogging Profile', '', '3,4,5,6,7,8', '', 0, 'desktop,tablet,phone', 'bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,underline,justifyfull,forecolor,clipboard,removeformat,charmap,indent,outdent,undo,redo,help', 'link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists', 0, 3, 0, '0000-00-00 00:00:00', '{"editor":{"toggle":"0"}}'),
(4, 'Mobile', 'Sample Mobile Profile', '', '3,4,5,6,7,8', '', 0, 'tablet,phone', 'undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink', 'fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists', 0, 4, 0, '0000-00-00 00:00:00', '{"editor":{"toolbar_theme":"mobile","resizing":"0","resize_horizontal":"0","resizing_use_cookie":"0","toggle":"0","links":{"popups":{"default":"","jcemediabox":{"enable":"0"},"window":{"enable":"0"}}}}}');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma_bookmark`
--
-- Erzeugt am: 06. November 2012 um 11:15
-- Aktualisiert am: 06. November 2012 um 11:15
--

DROP TABLE IF EXISTS `pma_bookmark`;
CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks' AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `pma_bookmark`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma_column_info`
--
-- Erzeugt am: 06. November 2012 um 11:15
-- Aktualisiert am: 06. November 2012 um 11:15
--

DROP TABLE IF EXISTS `pma_column_info`;
CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin' AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `pma_column_info`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma_designer_coords`
--
-- Erzeugt am: 06. November 2012 um 11:15
-- Aktualisiert am: 06. November 2012 um 11:15
--

DROP TABLE IF EXISTS `pma_designer_coords`;
CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

--
-- Daten für Tabelle `pma_designer_coords`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma_history`
--
-- Erzeugt am: 06. November 2012 um 11:15
-- Aktualisiert am: 06. November 2012 um 11:15
--

DROP TABLE IF EXISTS `pma_history`;
CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin' AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `pma_history`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma_pdf_pages`
--
-- Erzeugt am: 06. November 2012 um 11:15
-- Aktualisiert am: 06. November 2012 um 11:15
--

DROP TABLE IF EXISTS `pma_pdf_pages`;
CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin' AUTO_INCREMENT=1 ;

--
-- Daten für Tabelle `pma_pdf_pages`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma_relation`
--
-- Erzeugt am: 06. November 2012 um 11:15
-- Aktualisiert am: 06. November 2012 um 11:15
--

DROP TABLE IF EXISTS `pma_relation`;
CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

--
-- Daten für Tabelle `pma_relation`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma_table_coords`
--
-- Erzeugt am: 06. November 2012 um 11:15
-- Aktualisiert am: 06. November 2012 um 11:15
--

DROP TABLE IF EXISTS `pma_table_coords`;
CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

--
-- Daten für Tabelle `pma_table_coords`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma_table_info`
--
-- Erzeugt am: 06. November 2012 um 11:15
-- Aktualisiert am: 06. November 2012 um 11:15
--

DROP TABLE IF EXISTS `pma_table_info`;
CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Daten für Tabelle `pma_table_info`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pma_tracking`
--
-- Erzeugt am: 06. November 2012 um 11:15
-- Aktualisiert am: 06. November 2012 um 11:15
--

DROP TABLE IF EXISTS `pma_tracking`;
CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT;

--
-- Daten für Tabelle `pma_tracking`
--


--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `joem2_contiuni_administrator`
--
ALTER TABLE `joem2_contiuni_administrator`
  ADD CONSTRAINT `joem2_contiuni_administrator_ibfk_1` FOREIGN KEY (`personenid`) REFERENCES `joem2_contiuni_person` (`personenid`);

--
-- Constraints der Tabelle `joem2_contiuni_kurs`
--
ALTER TABLE `joem2_contiuni_kurs`
  ADD CONSTRAINT `joem2_contiuni_kurs_ibfk_1` FOREIGN KEY (`kursleiter`) REFERENCES `joem2_contiuni_kursleiter` (`personenid`);

--
-- Constraints der Tabelle `joem2_contiuni_kursleiter`
--
ALTER TABLE `joem2_contiuni_kursleiter`
  ADD CONSTRAINT `joem2_contiuni_kursleiter_ibfk_1` FOREIGN KEY (`personenid`) REFERENCES `joem2_contiuni_person` (`personenid`);

--
-- Constraints der Tabelle `joem2_contiuni_schueler`
--
ALTER TABLE `joem2_contiuni_schueler`
  ADD CONSTRAINT `joem2_contiuni_schueler_ibfk_2` FOREIGN KEY (`klassenid`) REFERENCES `joem2_contiuni_klasse` (`klassenid`),
  ADD CONSTRAINT `joem2_contiuni_schueler_ibfk_1` FOREIGN KEY (`personenid`) REFERENCES `joem2_contiuni_person` (`personenid`);

--
-- Constraints der Tabelle `joem2_contiuni_schuelerkurs`
--
ALTER TABLE `joem2_contiuni_schuelerkurs`
  ADD CONSTRAINT `joem2_contiuni_schuelerkurs_ibfk_1` FOREIGN KEY (`kursid`) REFERENCES `joem2_contiuni_kurs` (`kursid`),
  ADD CONSTRAINT `joem2_contiuni_schuelerkurs_ibfk_2` FOREIGN KEY (`schuelerid`) REFERENCES `joem2_contiuni_schueler` (`personenid`);
