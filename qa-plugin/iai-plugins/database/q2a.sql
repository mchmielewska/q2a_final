-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 16, 2020 at 02:17 PM
-- Server version: 5.7.30-33
-- PHP Version: 7.3.14-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `q2a`
--

-- --------------------------------------------------------

--
-- Table structure for table `qa_categories`
--

CREATE TABLE `qa_categories` (
  `categoryid` int(10) UNSIGNED NOT NULL,
  `parentid` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(80) NOT NULL,
  `tags` varchar(200) NOT NULL,
  `content` varchar(800) NOT NULL DEFAULT '',
  `qcount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `position` smallint(5) UNSIGNED NOT NULL,
  `backpath` varchar(804) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_categorymetas`
--

CREATE TABLE `qa_categorymetas` (
  `categoryid` int(10) UNSIGNED NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_contentwords`
--

CREATE TABLE `qa_contentwords` (
  `postid` int(10) UNSIGNED NOT NULL,
  `wordid` int(10) UNSIGNED NOT NULL,
  `count` tinyint(3) UNSIGNED NOT NULL,
  `type` enum('Q','A','C','NOTE') NOT NULL,
  `questionid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_bcategories`
--

CREATE TABLE `qa_en_bcategories` (
  `categoryid` int(10) UNSIGNED NOT NULL,
  `parentid` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(80) NOT NULL,
  `tags` varchar(200) NOT NULL,
  `content` varchar(800) NOT NULL DEFAULT '',
  `qcount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `position` smallint(5) UNSIGNED NOT NULL,
  `backpath` varchar(804) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_bcategorymetas`
--

CREATE TABLE `qa_en_bcategorymetas` (
  `categoryid` int(10) UNSIGNED NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_bcontentwords`
--

CREATE TABLE `qa_en_bcontentwords` (
  `postid` int(10) UNSIGNED NOT NULL,
  `wordid` int(10) UNSIGNED NOT NULL,
  `count` tinyint(3) UNSIGNED NOT NULL,
  `type` enum('Q','A','C','NOTE') NOT NULL,
  `questionid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_biplimits`
--

CREATE TABLE `qa_en_biplimits` (
  `ip` varbinary(16) NOT NULL,
  `action` char(1) CHARACTER SET ascii NOT NULL,
  `period` int(10) UNSIGNED NOT NULL,
  `count` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_boptions`
--

CREATE TABLE `qa_en_boptions` (
  `title` varchar(40) NOT NULL,
  `content` varchar(12000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_en_boptions`
--

INSERT INTO `qa_en_boptions` (`title`, `content`) VALUES
('avatar_allow_gravatar', '1'),
('avatar_allow_upload', '1'),
('avatar_default_show', ''),
('avatar_users_size', '30'),
('block_bad_usernames', 'niezalogowany'),
('block_ips_write', ''),
('cache_flaggedcount', ''),
('cache_queuedcount', ''),
('cache_tagcount', ''),
('cache_uapprovecount', '1'),
('cache_userpointscount', '2'),
('columns_users', '2'),
('comment_on_as', '1'),
('comment_on_qs', '0'),
('confirm_user_emails', '1'),
('custom_footer', ''),
('custom_header', ''),
('custom_in_head', ''),
('db_version', ''),
('do_ask_check_qs', '0'),
('do_complete_tags', '1'),
('do_example_tags', '1'),
('editor_for_qs', 'WYSIWYG Editor'),
('enabled_plugins', ''),
('event_logger_to_database', ''),
('event_logger_to_files', ''),
('extra_field_active', ''),
('feedback_enabled', '1'),
('feed_for_qa', '1'),
('feed_per_category', '1'),
('flagging_of_posts', '1'),
('form_security_salt', 'gv4kc02xv76at8ewge4h3xrvkvzm2a8v'),
('from_email', 'no-reply@idosell.com'),
('home_description', ''),
('logo_height', ''),
('logo_show', ''),
('logo_url', ''),
('logo_width', ''),
('max_rate_ip_qs', '20'),
('max_rate_user_qs', '10'),
('minify_html', '1'),
('moderate_users', ''),
('nav_activity', ''),
('nav_ask', '1'),
('nav_categories', ''),
('nav_home', ''),
('nav_hot', ''),
('nav_qa_is_home', ''),
('nav_questions', '1'),
('nav_tags', '1'),
('nav_unanswered', '1'),
('nav_users', '1'),
('neat_urls', '1'),
('notify_users_default', '1'),
('pages_prev_next', '3'),
('page_size_ask_tags', '5'),
('page_size_home', '20'),
('page_size_users', '30'),
('permit_delete_hidden', '40'),
('permit_hide_show', '70'),
('permit_moderate', '100'),
('permit_post_a', '150'),
('permit_post_c', '150'),
('permit_post_q', '150'),
('permit_view_new_users_page', '70'),
('permit_view_special_users_page', '40'),
('permit_view_voters_flaggers', '20'),
('points_a_selected', '30'),
('points_a_voted_max_gain', '20'),
('points_a_voted_max_loss', '5'),
('points_base', '100'),
('points_c_voted_max_gain', '10'),
('points_c_voted_max_loss', '3'),
('points_multiple', '10'),
('points_per_a_voted', ''),
('points_per_a_voted_down', '2'),
('points_per_a_voted_up', '2'),
('points_per_c_voted_down', '0'),
('points_per_c_voted_up', '0'),
('points_per_q_voted', ''),
('points_per_q_voted_down', '1'),
('points_per_q_voted_up', '1'),
('points_post_a', '4'),
('points_post_q', '2'),
('points_q_voted_max_gain', '10'),
('points_q_voted_max_loss', '3'),
('points_select_a', '3'),
('points_vote_down_a', '1'),
('points_vote_down_q', '1'),
('points_vote_on_a', ''),
('points_vote_on_q', ''),
('points_vote_up_a', '1'),
('points_vote_up_q', '1'),
('register_notify_admin', ''),
('show_compact_numbers', '1'),
('show_custom_ask', ''),
('show_custom_footer', ''),
('show_custom_header', ''),
('show_custom_home', ''),
('show_custom_in_head', ''),
('show_custom_sidebar', '1'),
('show_custom_sidepanel', ''),
('show_custom_welcome', '0'),
('show_notice_visitor', ''),
('show_notice_welcome', ''),
('site_language', ''),
('site_maintenance', '0'),
('site_text_direction', 'ltr'),
('site_theme', 'Kopia'),
('site_theme_mobile', 'SnowFlat'),
('site_title', 'Idosell Pytania i odpowiedzi'),
('site_url', 'https://q2a.idosell.com/'),
('smtp_active', ''),
('tags_or_categories', 'tc'),
('tag_separator_comma', ''),
('wysiwyg_editor_upload_images', '');

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_bpages`
--

CREATE TABLE `qa_en_bpages` (
  `pageid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(80) NOT NULL,
  `nav` char(1) CHARACTER SET ascii NOT NULL,
  `position` smallint(5) UNSIGNED NOT NULL,
  `flags` tinyint(3) UNSIGNED NOT NULL,
  `permit` tinyint(3) UNSIGNED DEFAULT NULL,
  `tags` varchar(200) NOT NULL,
  `heading` varchar(800) DEFAULT NULL,
  `content` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_bpostmetas`
--

CREATE TABLE `qa_en_bpostmetas` (
  `postid` int(10) UNSIGNED NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_bposts`
--

CREATE TABLE `qa_en_bposts` (
  `postid` int(10) UNSIGNED NOT NULL,
  `type` enum('Q','A','C','Q_HIDDEN','A_HIDDEN','C_HIDDEN','Q_QUEUED','A_QUEUED','C_QUEUED','NOTE') NOT NULL,
  `parentid` int(10) UNSIGNED DEFAULT NULL,
  `categoryid` int(10) UNSIGNED DEFAULT NULL,
  `catidpath1` int(10) UNSIGNED DEFAULT NULL,
  `catidpath2` int(10) UNSIGNED DEFAULT NULL,
  `catidpath3` int(10) UNSIGNED DEFAULT NULL,
  `acount` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `amaxvote` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `selchildid` int(10) UNSIGNED DEFAULT NULL,
  `closedbyid` int(10) UNSIGNED DEFAULT NULL,
  `userid` int(10) UNSIGNED DEFAULT NULL,
  `cookieid` bigint(20) UNSIGNED DEFAULT NULL,
  `createip` varbinary(16) DEFAULT NULL,
  `lastuserid` int(10) UNSIGNED DEFAULT NULL,
  `lastip` varbinary(16) DEFAULT NULL,
  `upvotes` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `downvotes` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `netvotes` smallint(6) NOT NULL DEFAULT '0',
  `lastviewip` varbinary(16) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hotness` float DEFAULT NULL,
  `flagcount` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `format` varchar(20) CHARACTER SET ascii NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `title` varchar(800) DEFAULT NULL,
  `content` varchar(12000) DEFAULT NULL,
  `tags` varchar(800) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `notify` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_bposttags`
--

CREATE TABLE `qa_en_bposttags` (
  `postid` int(10) UNSIGNED NOT NULL,
  `wordid` int(10) UNSIGNED NOT NULL,
  `postcreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_bsharedevents`
--

CREATE TABLE `qa_en_bsharedevents` (
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) UNSIGNED NOT NULL,
  `questionid` int(10) UNSIGNED NOT NULL,
  `lastpostid` int(10) UNSIGNED NOT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `lastuserid` int(10) UNSIGNED DEFAULT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_btagmetas`
--

CREATE TABLE `qa_en_btagmetas` (
  `tag` varchar(80) NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_btagwords`
--

CREATE TABLE `qa_en_btagwords` (
  `postid` int(10) UNSIGNED NOT NULL,
  `wordid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_btitlewords`
--

CREATE TABLE `qa_en_btitlewords` (
  `postid` int(10) UNSIGNED NOT NULL,
  `wordid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_buserevents`
--

CREATE TABLE `qa_en_buserevents` (
  `userid` int(10) UNSIGNED NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) UNSIGNED NOT NULL,
  `questionid` int(10) UNSIGNED NOT NULL,
  `lastpostid` int(10) UNSIGNED NOT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `lastuserid` int(10) UNSIGNED DEFAULT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_buserfavorites`
--

CREATE TABLE `qa_en_buserfavorites` (
  `userid` int(10) UNSIGNED NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) UNSIGNED NOT NULL,
  `nouserevents` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_buserlevels`
--

CREATE TABLE `qa_en_buserlevels` (
  `userid` int(10) UNSIGNED NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) UNSIGNED NOT NULL,
  `level` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_buserlimits`
--

CREATE TABLE `qa_en_buserlimits` (
  `userid` int(10) UNSIGNED NOT NULL,
  `action` char(1) CHARACTER SET ascii NOT NULL,
  `period` int(10) UNSIGNED NOT NULL,
  `count` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_busermetas`
--

CREATE TABLE `qa_en_busermetas` (
  `userid` int(10) UNSIGNED NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_busernotices`
--

CREATE TABLE `qa_en_busernotices` (
  `noticeid` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `content` varchar(12000) NOT NULL,
  `format` varchar(20) CHARACTER SET ascii NOT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_buserpoints`
--

CREATE TABLE `qa_en_buserpoints` (
  `userid` int(10) UNSIGNED NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `qposts` mediumint(9) NOT NULL DEFAULT '0',
  `aposts` mediumint(9) NOT NULL DEFAULT '0',
  `cposts` mediumint(9) NOT NULL DEFAULT '0',
  `aselects` mediumint(9) NOT NULL DEFAULT '0',
  `aselecteds` mediumint(9) NOT NULL DEFAULT '0',
  `qupvotes` mediumint(9) NOT NULL DEFAULT '0',
  `qdownvotes` mediumint(9) NOT NULL DEFAULT '0',
  `aupvotes` mediumint(9) NOT NULL DEFAULT '0',
  `adownvotes` mediumint(9) NOT NULL DEFAULT '0',
  `cupvotes` mediumint(9) NOT NULL DEFAULT '0',
  `cdownvotes` mediumint(9) NOT NULL DEFAULT '0',
  `qvoteds` int(11) NOT NULL DEFAULT '0',
  `avoteds` int(11) NOT NULL DEFAULT '0',
  `cvoteds` int(11) NOT NULL DEFAULT '0',
  `upvoteds` int(11) NOT NULL DEFAULT '0',
  `downvoteds` int(11) NOT NULL DEFAULT '0',
  `bonus` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_en_buserpoints`
--

INSERT INTO `qa_en_buserpoints` (`userid`, `points`, `qposts`, `aposts`, `cposts`, `aselects`, `aselecteds`, `qupvotes`, `qdownvotes`, `aupvotes`, `adownvotes`, `cupvotes`, `cdownvotes`, `qvoteds`, `avoteds`, `cvoteds`, `upvoteds`, `downvoteds`, `bonus`) VALUES
(1, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_buservotes`
--

CREATE TABLE `qa_en_buservotes` (
  `postid` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `vote` tinyint(4) NOT NULL,
  `flag` tinyint(4) NOT NULL,
  `votecreated` datetime DEFAULT NULL,
  `voteupdated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_bwidgets`
--

CREATE TABLE `qa_en_bwidgets` (
  `widgetid` smallint(5) UNSIGNED NOT NULL,
  `place` char(2) CHARACTER SET ascii NOT NULL,
  `position` smallint(5) UNSIGNED NOT NULL,
  `tags` varchar(800) CHARACTER SET ascii NOT NULL,
  `title` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_bwords`
--

CREATE TABLE `qa_en_bwords` (
  `wordid` int(10) UNSIGNED NOT NULL,
  `word` varchar(80) NOT NULL,
  `titlecount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `contentcount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tagwordcount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tagcount` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_scategories`
--

CREATE TABLE `qa_en_scategories` (
  `categoryid` int(10) UNSIGNED NOT NULL,
  `parentid` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(80) NOT NULL,
  `tags` varchar(200) NOT NULL,
  `content` varchar(800) NOT NULL DEFAULT '',
  `qcount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `position` smallint(5) UNSIGNED NOT NULL,
  `backpath` varchar(804) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_scategorymetas`
--

CREATE TABLE `qa_en_scategorymetas` (
  `categoryid` int(10) UNSIGNED NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_scontentwords`
--

CREATE TABLE `qa_en_scontentwords` (
  `postid` int(10) UNSIGNED NOT NULL,
  `wordid` int(10) UNSIGNED NOT NULL,
  `count` tinyint(3) UNSIGNED NOT NULL,
  `type` enum('Q','A','C','NOTE') NOT NULL,
  `questionid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_siplimits`
--

CREATE TABLE `qa_en_siplimits` (
  `ip` varbinary(16) NOT NULL,
  `action` char(1) CHARACTER SET ascii NOT NULL,
  `period` int(10) UNSIGNED NOT NULL,
  `count` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_soptions`
--

CREATE TABLE `qa_en_soptions` (
  `title` varchar(40) NOT NULL,
  `content` varchar(12000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_en_soptions`
--

INSERT INTO `qa_en_soptions` (`title`, `content`) VALUES
('avatar_allow_gravatar', '1'),
('avatar_allow_upload', '1'),
('avatar_default_show', ''),
('block_ips_write', ''),
('cache_qcount', ''),
('cache_tagcount', ''),
('cache_uapprovecount', '1'),
('cache_unaqcount', ''),
('cache_userpointscount', '1'),
('columns_tags', '3'),
('custom_footer', ''),
('custom_header', ''),
('custom_in_head', ''),
('do_count_q_views', '1'),
('enabled_plugins', ''),
('feedback_enabled', '1'),
('feed_for_qa', '1'),
('feed_for_questions', '1'),
('feed_for_unanswered', '1'),
('feed_per_category', '1'),
('form_security_salt', '46qd6cep1waro0ucd3porzg9gagt9d97'),
('home_description', ''),
('logo_height', ''),
('logo_show', ''),
('logo_url', ''),
('logo_width', ''),
('minify_html', '1'),
('nav_activity', ''),
('nav_ask', '1'),
('nav_categories', ''),
('nav_home', ''),
('nav_hot', ''),
('nav_qa_is_home', ''),
('nav_questions', '1'),
('nav_tags', '1'),
('nav_unanswered', '1'),
('nav_users', '1'),
('neat_urls', '5'),
('pages_prev_next', '3'),
('page_size_home', '20'),
('page_size_qs', '20'),
('page_size_tags', '30'),
('page_size_una_qs', '20'),
('permit_delete_hidden', '40'),
('permit_hide_show', '70'),
('permit_moderate', '100'),
('permit_post_q', '150'),
('permit_view_voters_flaggers', '20'),
('points_a_selected', '30'),
('points_a_voted_max_gain', '20'),
('points_a_voted_max_loss', '5'),
('points_base', '100'),
('points_c_voted_max_gain', '10'),
('points_c_voted_max_loss', '3'),
('points_multiple', '10'),
('points_per_a_voted', ''),
('points_per_a_voted_down', '2'),
('points_per_a_voted_up', '2'),
('points_per_c_voted_down', '0'),
('points_per_c_voted_up', '0'),
('points_per_q_voted', ''),
('points_per_q_voted_down', '1'),
('points_per_q_voted_up', '1'),
('points_post_a', '4'),
('points_post_q', '2'),
('points_q_voted_max_gain', '10'),
('points_q_voted_max_loss', '3'),
('points_select_a', '3'),
('points_vote_down_a', '1'),
('points_vote_down_q', '1'),
('points_vote_on_a', ''),
('points_vote_on_q', ''),
('points_vote_up_a', '1'),
('points_vote_up_q', '1'),
('show_custom_footer', ''),
('show_custom_header', ''),
('show_custom_home', ''),
('show_custom_in_head', ''),
('show_custom_sidebar', '1'),
('show_custom_sidepanel', ''),
('show_notice_welcome', ''),
('site_language', ''),
('site_maintenance', ''),
('site_text_direction', 'ltr'),
('site_theme', 'SnowFlat'),
('site_url', 'https://q2a.idosell.com/'),
('tags_or_categories', 'tc'),
('voting_on_as', '1');

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_spages`
--

CREATE TABLE `qa_en_spages` (
  `pageid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(80) NOT NULL,
  `nav` char(1) CHARACTER SET ascii NOT NULL,
  `position` smallint(5) UNSIGNED NOT NULL,
  `flags` tinyint(3) UNSIGNED NOT NULL,
  `permit` tinyint(3) UNSIGNED DEFAULT NULL,
  `tags` varchar(200) NOT NULL,
  `heading` varchar(800) DEFAULT NULL,
  `content` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_spostmetas`
--

CREATE TABLE `qa_en_spostmetas` (
  `postid` int(10) UNSIGNED NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_sposts`
--

CREATE TABLE `qa_en_sposts` (
  `postid` int(10) UNSIGNED NOT NULL,
  `type` enum('Q','A','C','Q_HIDDEN','A_HIDDEN','C_HIDDEN','Q_QUEUED','A_QUEUED','C_QUEUED','NOTE') NOT NULL,
  `parentid` int(10) UNSIGNED DEFAULT NULL,
  `categoryid` int(10) UNSIGNED DEFAULT NULL,
  `catidpath1` int(10) UNSIGNED DEFAULT NULL,
  `catidpath2` int(10) UNSIGNED DEFAULT NULL,
  `catidpath3` int(10) UNSIGNED DEFAULT NULL,
  `acount` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `amaxvote` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `selchildid` int(10) UNSIGNED DEFAULT NULL,
  `closedbyid` int(10) UNSIGNED DEFAULT NULL,
  `userid` int(10) UNSIGNED DEFAULT NULL,
  `cookieid` bigint(20) UNSIGNED DEFAULT NULL,
  `createip` varbinary(16) DEFAULT NULL,
  `lastuserid` int(10) UNSIGNED DEFAULT NULL,
  `lastip` varbinary(16) DEFAULT NULL,
  `upvotes` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `downvotes` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `netvotes` smallint(6) NOT NULL DEFAULT '0',
  `lastviewip` varbinary(16) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hotness` float DEFAULT NULL,
  `flagcount` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `format` varchar(20) CHARACTER SET ascii NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `title` varchar(800) DEFAULT NULL,
  `content` varchar(12000) DEFAULT NULL,
  `tags` varchar(800) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `notify` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_sposttags`
--

CREATE TABLE `qa_en_sposttags` (
  `postid` int(10) UNSIGNED NOT NULL,
  `wordid` int(10) UNSIGNED NOT NULL,
  `postcreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_ssharedevents`
--

CREATE TABLE `qa_en_ssharedevents` (
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) UNSIGNED NOT NULL,
  `questionid` int(10) UNSIGNED NOT NULL,
  `lastpostid` int(10) UNSIGNED NOT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `lastuserid` int(10) UNSIGNED DEFAULT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_stagmetas`
--

CREATE TABLE `qa_en_stagmetas` (
  `tag` varchar(80) NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_stagwords`
--

CREATE TABLE `qa_en_stagwords` (
  `postid` int(10) UNSIGNED NOT NULL,
  `wordid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_stitlewords`
--

CREATE TABLE `qa_en_stitlewords` (
  `postid` int(10) UNSIGNED NOT NULL,
  `wordid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_suserevents`
--

CREATE TABLE `qa_en_suserevents` (
  `userid` int(10) UNSIGNED NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) UNSIGNED NOT NULL,
  `questionid` int(10) UNSIGNED NOT NULL,
  `lastpostid` int(10) UNSIGNED NOT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `lastuserid` int(10) UNSIGNED DEFAULT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_suserfavorites`
--

CREATE TABLE `qa_en_suserfavorites` (
  `userid` int(10) UNSIGNED NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) UNSIGNED NOT NULL,
  `nouserevents` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_suserlevels`
--

CREATE TABLE `qa_en_suserlevels` (
  `userid` int(10) UNSIGNED NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) UNSIGNED NOT NULL,
  `level` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_suserlimits`
--

CREATE TABLE `qa_en_suserlimits` (
  `userid` int(10) UNSIGNED NOT NULL,
  `action` char(1) CHARACTER SET ascii NOT NULL,
  `period` int(10) UNSIGNED NOT NULL,
  `count` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_susermetas`
--

CREATE TABLE `qa_en_susermetas` (
  `userid` int(10) UNSIGNED NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_susernotices`
--

CREATE TABLE `qa_en_susernotices` (
  `noticeid` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `content` varchar(12000) NOT NULL,
  `format` varchar(20) CHARACTER SET ascii NOT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_suserpoints`
--

CREATE TABLE `qa_en_suserpoints` (
  `userid` int(10) UNSIGNED NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `qposts` mediumint(9) NOT NULL DEFAULT '0',
  `aposts` mediumint(9) NOT NULL DEFAULT '0',
  `cposts` mediumint(9) NOT NULL DEFAULT '0',
  `aselects` mediumint(9) NOT NULL DEFAULT '0',
  `aselecteds` mediumint(9) NOT NULL DEFAULT '0',
  `qupvotes` mediumint(9) NOT NULL DEFAULT '0',
  `qdownvotes` mediumint(9) NOT NULL DEFAULT '0',
  `aupvotes` mediumint(9) NOT NULL DEFAULT '0',
  `adownvotes` mediumint(9) NOT NULL DEFAULT '0',
  `cupvotes` mediumint(9) NOT NULL DEFAULT '0',
  `cdownvotes` mediumint(9) NOT NULL DEFAULT '0',
  `qvoteds` int(11) NOT NULL DEFAULT '0',
  `avoteds` int(11) NOT NULL DEFAULT '0',
  `cvoteds` int(11) NOT NULL DEFAULT '0',
  `upvoteds` int(11) NOT NULL DEFAULT '0',
  `downvoteds` int(11) NOT NULL DEFAULT '0',
  `bonus` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_en_suserpoints`
--

INSERT INTO `qa_en_suserpoints` (`userid`, `points`, `qposts`, `aposts`, `cposts`, `aselects`, `aselecteds`, `qupvotes`, `qdownvotes`, `aupvotes`, `adownvotes`, `cupvotes`, `cdownvotes`, `qvoteds`, `avoteds`, `cvoteds`, `upvoteds`, `downvoteds`, `bonus`) VALUES
(2, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_suservotes`
--

CREATE TABLE `qa_en_suservotes` (
  `postid` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `vote` tinyint(4) NOT NULL,
  `flag` tinyint(4) NOT NULL,
  `votecreated` datetime DEFAULT NULL,
  `voteupdated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_swidgets`
--

CREATE TABLE `qa_en_swidgets` (
  `widgetid` smallint(5) UNSIGNED NOT NULL,
  `place` char(2) CHARACTER SET ascii NOT NULL,
  `position` smallint(5) UNSIGNED NOT NULL,
  `tags` varchar(800) CHARACTER SET ascii NOT NULL,
  `title` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_en_swords`
--

CREATE TABLE `qa_en_swords` (
  `wordid` int(10) UNSIGNED NOT NULL,
  `word` varchar(80) NOT NULL,
  `titlecount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `contentcount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tagwordcount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tagcount` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_iplimits`
--

CREATE TABLE `qa_iplimits` (
  `ip` varbinary(16) NOT NULL,
  `action` char(1) CHARACTER SET ascii NOT NULL,
  `period` int(10) UNSIGNED NOT NULL,
  `count` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_iplimits`
--

INSERT INTO `qa_iplimits` (`ip`, `action`, `period`, `count`) VALUES
(0x0a000202, 'L', 443028, 1);

-- --------------------------------------------------------

--
-- Table structure for table `qa_langservice`
--

CREATE TABLE `qa_langservice` (
  `user_id` int(11) NOT NULL,
  `selected_language` varchar(5) CHARACTER SET utf8 NOT NULL,
  `selected_service` varchar(7) CHARACTER SET utf8 NOT NULL,
  `selected_interface_lang` varchar(5) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `qa_options`
--

CREATE TABLE `qa_options` (
  `title` varchar(40) NOT NULL,
  `content` varchar(12000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_options`
--

INSERT INTO `qa_options` (`title`, `content`) VALUES
('allow_login_email_only', ''),
('avatar_allow_gravatar', '1'),
('avatar_allow_upload', '1'),
('avatar_default_show', ''),
('avatar_users_size', '30'),
('block_ips_write', ''),
('cache_flaggedcount', ''),
('cache_qcount', ''),
('cache_queuedcount', ''),
('cache_tagcount', ''),
('cache_uapprovecount', '0'),
('cache_unaqcount', ''),
('cache_userpointscount', '1'),
('columns_tags', '3'),
('columns_users', '2'),
('comment_on_as', '1'),
('comment_on_qs', '0'),
('custom_footer', ''),
('custom_header', ''),
('custom_in_head', ''),
('db_version', ''),
('do_count_q_views', '1'),
('enabled_plugins', ''),
('event_logger_to_database', ''),
('event_logger_to_files', ''),
('feedback_enabled', '1'),
('feed_for_qa', '1'),
('feed_for_questions', '1'),
('feed_for_unanswered', '1'),
('feed_per_category', '1'),
('flagging_of_posts', '1'),
('form_security_salt', '90nseskxlfd10jkigelabt1epfe4jkda'),
('home_description', ''),
('logo_height', ''),
('logo_show', ''),
('logo_url', ''),
('logo_width', ''),
('max_rate_ip_logins', '20'),
('minify_html', '1'),
('moderate_users', ''),
('nav_activity', ''),
('nav_ask', '1'),
('nav_categories', ''),
('nav_home', ''),
('nav_hot', ''),
('nav_qa_is_home', ''),
('nav_questions', '1'),
('nav_tags', '1'),
('nav_unanswered', '1'),
('nav_users', '1'),
('neat_urls', '5'),
('pages_prev_next', '3'),
('page_size_home', '20'),
('page_size_qs', '20'),
('page_size_tags', '30'),
('page_size_una_qs', '20'),
('page_size_users', '30'),
('permit_delete_hidden', '40'),
('permit_hide_show', '70'),
('permit_moderate', '100'),
('permit_post_a', '150'),
('permit_post_c', '150'),
('permit_post_q', '150'),
('permit_view_new_users_page', '70'),
('permit_view_special_users_page', '40'),
('permit_view_voters_flaggers', '20'),
('points_a_selected', '30'),
('points_a_voted_max_gain', '20'),
('points_a_voted_max_loss', '5'),
('points_base', '100'),
('points_c_voted_max_gain', '10'),
('points_c_voted_max_loss', '3'),
('points_multiple', '10'),
('points_per_a_voted', ''),
('points_per_a_voted_down', '2'),
('points_per_a_voted_up', '2'),
('points_per_c_voted_down', '0'),
('points_per_c_voted_up', '0'),
('points_per_q_voted', ''),
('points_per_q_voted_down', '1'),
('points_per_q_voted_up', '1'),
('points_post_a', '4'),
('points_post_q', '2'),
('points_q_voted_max_gain', '10'),
('points_q_voted_max_loss', '3'),
('points_select_a', '3'),
('points_vote_down_a', '1'),
('points_vote_down_q', '1'),
('points_vote_on_a', ''),
('points_vote_on_q', ''),
('points_vote_up_a', '1'),
('points_vote_up_q', '1'),
('show_compact_numbers', '1'),
('show_custom_footer', ''),
('show_custom_header', ''),
('show_custom_home', ''),
('show_custom_in_head', ''),
('show_custom_sidebar', '1'),
('show_custom_sidepanel', ''),
('show_notice_visitor', ''),
('show_notice_welcome', ''),
('site_language', ''),
('site_maintenance', '0'),
('site_text_direction', 'ltr'),
('site_theme', 'Kopia'),
('site_theme_mobile', 'SnowFlat'),
('site_title', 'Idosell Q&A'),
('site_url', 'https://q2a.idosell.com/'),
('tags_or_categories', 'tc'),
('voting_on_as', '1');

-- --------------------------------------------------------

--
-- Table structure for table `qa_pages`
--

CREATE TABLE `qa_pages` (
  `pageid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(80) NOT NULL,
  `nav` char(1) CHARACTER SET ascii NOT NULL,
  `position` smallint(5) UNSIGNED NOT NULL,
  `flags` tinyint(3) UNSIGNED NOT NULL,
  `permit` tinyint(3) UNSIGNED DEFAULT NULL,
  `tags` varchar(200) NOT NULL,
  `heading` varchar(800) DEFAULT NULL,
  `content` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_bcategories`
--

CREATE TABLE `qa_pl_bcategories` (
  `categoryid` int(10) UNSIGNED NOT NULL,
  `parentid` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(80) NOT NULL,
  `tags` varchar(200) NOT NULL,
  `content` varchar(800) NOT NULL DEFAULT '',
  `qcount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `position` smallint(5) UNSIGNED NOT NULL,
  `backpath` varchar(804) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_bcategorymetas`
--

CREATE TABLE `qa_pl_bcategorymetas` (
  `categoryid` int(10) UNSIGNED NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_bcontentwords`
--

CREATE TABLE `qa_pl_bcontentwords` (
  `postid` int(10) UNSIGNED NOT NULL,
  `wordid` int(10) UNSIGNED NOT NULL,
  `count` tinyint(3) UNSIGNED NOT NULL,
  `type` enum('Q','A','C','NOTE') NOT NULL,
  `questionid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_biplimits`
--

CREATE TABLE `qa_pl_biplimits` (
  `ip` varbinary(16) NOT NULL,
  `action` char(1) CHARACTER SET ascii NOT NULL,
  `period` int(10) UNSIGNED NOT NULL,
  `count` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_boptions`
--

CREATE TABLE `qa_pl_boptions` (
  `title` varchar(40) NOT NULL,
  `content` varchar(12000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_bpages`
--

CREATE TABLE `qa_pl_bpages` (
  `pageid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(80) NOT NULL,
  `nav` char(1) CHARACTER SET ascii NOT NULL,
  `position` smallint(5) UNSIGNED NOT NULL,
  `flags` tinyint(3) UNSIGNED NOT NULL,
  `permit` tinyint(3) UNSIGNED DEFAULT NULL,
  `tags` varchar(200) NOT NULL,
  `heading` varchar(800) DEFAULT NULL,
  `content` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_bpostmetas`
--

CREATE TABLE `qa_pl_bpostmetas` (
  `postid` int(10) UNSIGNED NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_bposts`
--

CREATE TABLE `qa_pl_bposts` (
  `postid` int(10) UNSIGNED NOT NULL,
  `type` enum('Q','A','C','Q_HIDDEN','A_HIDDEN','C_HIDDEN','Q_QUEUED','A_QUEUED','C_QUEUED','NOTE') NOT NULL,
  `parentid` int(10) UNSIGNED DEFAULT NULL,
  `categoryid` int(10) UNSIGNED DEFAULT NULL,
  `catidpath1` int(10) UNSIGNED DEFAULT NULL,
  `catidpath2` int(10) UNSIGNED DEFAULT NULL,
  `catidpath3` int(10) UNSIGNED DEFAULT NULL,
  `acount` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `amaxvote` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `selchildid` int(10) UNSIGNED DEFAULT NULL,
  `closedbyid` int(10) UNSIGNED DEFAULT NULL,
  `userid` int(10) UNSIGNED DEFAULT NULL,
  `cookieid` bigint(20) UNSIGNED DEFAULT NULL,
  `createip` varbinary(16) DEFAULT NULL,
  `lastuserid` int(10) UNSIGNED DEFAULT NULL,
  `lastip` varbinary(16) DEFAULT NULL,
  `upvotes` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `downvotes` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `netvotes` smallint(6) NOT NULL DEFAULT '0',
  `lastviewip` varbinary(16) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hotness` float DEFAULT NULL,
  `flagcount` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `format` varchar(20) CHARACTER SET ascii NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `title` varchar(800) DEFAULT NULL,
  `content` varchar(12000) DEFAULT NULL,
  `tags` varchar(800) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `notify` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_bposttags`
--

CREATE TABLE `qa_pl_bposttags` (
  `postid` int(10) UNSIGNED NOT NULL,
  `wordid` int(10) UNSIGNED NOT NULL,
  `postcreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_bsharedevents`
--

CREATE TABLE `qa_pl_bsharedevents` (
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) UNSIGNED NOT NULL,
  `questionid` int(10) UNSIGNED NOT NULL,
  `lastpostid` int(10) UNSIGNED NOT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `lastuserid` int(10) UNSIGNED DEFAULT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_btagmetas`
--

CREATE TABLE `qa_pl_btagmetas` (
  `tag` varchar(80) NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_btagwords`
--

CREATE TABLE `qa_pl_btagwords` (
  `postid` int(10) UNSIGNED NOT NULL,
  `wordid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_btitlewords`
--

CREATE TABLE `qa_pl_btitlewords` (
  `postid` int(10) UNSIGNED NOT NULL,
  `wordid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_buserevents`
--

CREATE TABLE `qa_pl_buserevents` (
  `userid` int(10) UNSIGNED NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) UNSIGNED NOT NULL,
  `questionid` int(10) UNSIGNED NOT NULL,
  `lastpostid` int(10) UNSIGNED NOT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `lastuserid` int(10) UNSIGNED DEFAULT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_buserfavorites`
--

CREATE TABLE `qa_pl_buserfavorites` (
  `userid` int(10) UNSIGNED NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) UNSIGNED NOT NULL,
  `nouserevents` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_buserlevels`
--

CREATE TABLE `qa_pl_buserlevels` (
  `userid` int(10) UNSIGNED NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) UNSIGNED NOT NULL,
  `level` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_buserlimits`
--

CREATE TABLE `qa_pl_buserlimits` (
  `userid` int(10) UNSIGNED NOT NULL,
  `action` char(1) CHARACTER SET ascii NOT NULL,
  `period` int(10) UNSIGNED NOT NULL,
  `count` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_busermetas`
--

CREATE TABLE `qa_pl_busermetas` (
  `userid` int(10) UNSIGNED NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_busernotices`
--

CREATE TABLE `qa_pl_busernotices` (
  `noticeid` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `content` varchar(12000) NOT NULL,
  `format` varchar(20) CHARACTER SET ascii NOT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_buserpoints`
--

CREATE TABLE `qa_pl_buserpoints` (
  `userid` int(10) UNSIGNED NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `qposts` mediumint(9) NOT NULL DEFAULT '0',
  `aposts` mediumint(9) NOT NULL DEFAULT '0',
  `cposts` mediumint(9) NOT NULL DEFAULT '0',
  `aselects` mediumint(9) NOT NULL DEFAULT '0',
  `aselecteds` mediumint(9) NOT NULL DEFAULT '0',
  `qupvotes` mediumint(9) NOT NULL DEFAULT '0',
  `qdownvotes` mediumint(9) NOT NULL DEFAULT '0',
  `aupvotes` mediumint(9) NOT NULL DEFAULT '0',
  `adownvotes` mediumint(9) NOT NULL DEFAULT '0',
  `cupvotes` mediumint(9) NOT NULL DEFAULT '0',
  `cdownvotes` mediumint(9) NOT NULL DEFAULT '0',
  `qvoteds` int(11) NOT NULL DEFAULT '0',
  `avoteds` int(11) NOT NULL DEFAULT '0',
  `cvoteds` int(11) NOT NULL DEFAULT '0',
  `upvoteds` int(11) NOT NULL DEFAULT '0',
  `downvoteds` int(11) NOT NULL DEFAULT '0',
  `bonus` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_buservotes`
--

CREATE TABLE `qa_pl_buservotes` (
  `postid` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `vote` tinyint(4) NOT NULL,
  `flag` tinyint(4) NOT NULL,
  `votecreated` datetime DEFAULT NULL,
  `voteupdated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_bwidgets`
--

CREATE TABLE `qa_pl_bwidgets` (
  `widgetid` smallint(5) UNSIGNED NOT NULL,
  `place` char(2) CHARACTER SET ascii NOT NULL,
  `position` smallint(5) UNSIGNED NOT NULL,
  `tags` varchar(800) CHARACTER SET ascii NOT NULL,
  `title` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_bwords`
--

CREATE TABLE `qa_pl_bwords` (
  `wordid` int(10) UNSIGNED NOT NULL,
  `word` varchar(80) NOT NULL,
  `titlecount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `contentcount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tagwordcount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tagcount` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_scategories`
--

CREATE TABLE `qa_pl_scategories` (
  `categoryid` int(10) UNSIGNED NOT NULL,
  `parentid` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(80) NOT NULL,
  `tags` varchar(200) NOT NULL,
  `content` varchar(800) NOT NULL DEFAULT '',
  `qcount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `position` smallint(5) UNSIGNED NOT NULL,
  `backpath` varchar(804) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_scategorymetas`
--

CREATE TABLE `qa_pl_scategorymetas` (
  `categoryid` int(10) UNSIGNED NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_scontentwords`
--

CREATE TABLE `qa_pl_scontentwords` (
  `postid` int(10) UNSIGNED NOT NULL,
  `wordid` int(10) UNSIGNED NOT NULL,
  `count` tinyint(3) UNSIGNED NOT NULL,
  `type` enum('Q','A','C','NOTE') NOT NULL,
  `questionid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_siplimits`
--

CREATE TABLE `qa_pl_siplimits` (
  `ip` varbinary(16) NOT NULL,
  `action` char(1) CHARACTER SET ascii NOT NULL,
  `period` int(10) UNSIGNED NOT NULL,
  `count` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_soptions`
--

CREATE TABLE `qa_pl_soptions` (
  `title` varchar(40) NOT NULL,
  `content` varchar(12000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_pl_soptions`
--

INSERT INTO `qa_pl_soptions` (`title`, `content`) VALUES
('avatar_allow_gravatar', '1'),
('avatar_allow_upload', '1'),
('avatar_default_show', ''),
('block_ips_write', ''),
('cache_uapprovecount', '1'),
('cache_userpointscount', '1'),
('custom_footer', ''),
('custom_header', ''),
('custom_in_head', ''),
('enabled_plugins', ''),
('feedback_enabled', '1'),
('feed_for_qa', '1'),
('feed_per_category', '1'),
('form_security_salt', 'wgy0wac5ul4uxp7ulwjnli8jcru4rut3'),
('home_description', ''),
('logo_height', ''),
('logo_show', ''),
('logo_url', ''),
('logo_width', ''),
('minify_html', '1'),
('nav_activity', ''),
('nav_ask', '1'),
('nav_categories', ''),
('nav_home', ''),
('nav_hot', ''),
('nav_qa_is_home', ''),
('nav_questions', '1'),
('nav_tags', '1'),
('nav_unanswered', '1'),
('nav_users', '1'),
('neat_urls', '5'),
('page_size_home', '20'),
('permit_delete_hidden', '40'),
('permit_hide_show', '70'),
('permit_moderate', '100'),
('permit_post_q', '150'),
('permit_view_voters_flaggers', '20'),
('points_a_selected', '30'),
('points_a_voted_max_gain', '20'),
('points_a_voted_max_loss', '5'),
('points_base', '100'),
('points_c_voted_max_gain', '10'),
('points_c_voted_max_loss', '3'),
('points_multiple', '10'),
('points_per_a_voted', ''),
('points_per_a_voted_down', '2'),
('points_per_a_voted_up', '2'),
('points_per_c_voted_down', '0'),
('points_per_c_voted_up', '0'),
('points_per_q_voted', ''),
('points_per_q_voted_down', '1'),
('points_per_q_voted_up', '1'),
('points_post_a', '4'),
('points_post_q', '2'),
('points_q_voted_max_gain', '10'),
('points_q_voted_max_loss', '3'),
('points_select_a', '3'),
('points_vote_down_a', '1'),
('points_vote_down_q', '1'),
('points_vote_on_a', ''),
('points_vote_on_q', ''),
('points_vote_up_a', '1'),
('points_vote_up_q', '1'),
('show_custom_footer', ''),
('show_custom_header', ''),
('show_custom_home', ''),
('show_custom_in_head', ''),
('show_custom_sidebar', '1'),
('show_custom_sidepanel', ''),
('show_notice_welcome', ''),
('site_language', ''),
('site_maintenance', ''),
('site_text_direction', 'ltr'),
('site_theme', 'SnowFlat'),
('site_url', 'https://q2a.idosell.com/'),
('tags_or_categories', 'tc');

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_spages`
--

CREATE TABLE `qa_pl_spages` (
  `pageid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(80) NOT NULL,
  `nav` char(1) CHARACTER SET ascii NOT NULL,
  `position` smallint(5) UNSIGNED NOT NULL,
  `flags` tinyint(3) UNSIGNED NOT NULL,
  `permit` tinyint(3) UNSIGNED DEFAULT NULL,
  `tags` varchar(200) NOT NULL,
  `heading` varchar(800) DEFAULT NULL,
  `content` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_spostmetas`
--

CREATE TABLE `qa_pl_spostmetas` (
  `postid` int(10) UNSIGNED NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_sposts`
--

CREATE TABLE `qa_pl_sposts` (
  `postid` int(10) UNSIGNED NOT NULL,
  `type` enum('Q','A','C','Q_HIDDEN','A_HIDDEN','C_HIDDEN','Q_QUEUED','A_QUEUED','C_QUEUED','NOTE') NOT NULL,
  `parentid` int(10) UNSIGNED DEFAULT NULL,
  `categoryid` int(10) UNSIGNED DEFAULT NULL,
  `catidpath1` int(10) UNSIGNED DEFAULT NULL,
  `catidpath2` int(10) UNSIGNED DEFAULT NULL,
  `catidpath3` int(10) UNSIGNED DEFAULT NULL,
  `acount` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `amaxvote` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `selchildid` int(10) UNSIGNED DEFAULT NULL,
  `closedbyid` int(10) UNSIGNED DEFAULT NULL,
  `userid` int(10) UNSIGNED DEFAULT NULL,
  `cookieid` bigint(20) UNSIGNED DEFAULT NULL,
  `createip` varbinary(16) DEFAULT NULL,
  `lastuserid` int(10) UNSIGNED DEFAULT NULL,
  `lastip` varbinary(16) DEFAULT NULL,
  `upvotes` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `downvotes` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `netvotes` smallint(6) NOT NULL DEFAULT '0',
  `lastviewip` varbinary(16) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hotness` float DEFAULT NULL,
  `flagcount` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `format` varchar(20) CHARACTER SET ascii NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `title` varchar(800) DEFAULT NULL,
  `content` varchar(12000) DEFAULT NULL,
  `tags` varchar(800) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `notify` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_sposttags`
--

CREATE TABLE `qa_pl_sposttags` (
  `postid` int(10) UNSIGNED NOT NULL,
  `wordid` int(10) UNSIGNED NOT NULL,
  `postcreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_ssharedevents`
--

CREATE TABLE `qa_pl_ssharedevents` (
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) UNSIGNED NOT NULL,
  `questionid` int(10) UNSIGNED NOT NULL,
  `lastpostid` int(10) UNSIGNED NOT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `lastuserid` int(10) UNSIGNED DEFAULT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_stagmetas`
--

CREATE TABLE `qa_pl_stagmetas` (
  `tag` varchar(80) NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_stagwords`
--

CREATE TABLE `qa_pl_stagwords` (
  `postid` int(10) UNSIGNED NOT NULL,
  `wordid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_stitlewords`
--

CREATE TABLE `qa_pl_stitlewords` (
  `postid` int(10) UNSIGNED NOT NULL,
  `wordid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_suserevents`
--

CREATE TABLE `qa_pl_suserevents` (
  `userid` int(10) UNSIGNED NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) UNSIGNED NOT NULL,
  `questionid` int(10) UNSIGNED NOT NULL,
  `lastpostid` int(10) UNSIGNED NOT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `lastuserid` int(10) UNSIGNED DEFAULT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_suserfavorites`
--

CREATE TABLE `qa_pl_suserfavorites` (
  `userid` int(10) UNSIGNED NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) UNSIGNED NOT NULL,
  `nouserevents` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_suserlevels`
--

CREATE TABLE `qa_pl_suserlevels` (
  `userid` int(10) UNSIGNED NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) UNSIGNED NOT NULL,
  `level` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_suserlimits`
--

CREATE TABLE `qa_pl_suserlimits` (
  `userid` int(10) UNSIGNED NOT NULL,
  `action` char(1) CHARACTER SET ascii NOT NULL,
  `period` int(10) UNSIGNED NOT NULL,
  `count` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_susermetas`
--

CREATE TABLE `qa_pl_susermetas` (
  `userid` int(10) UNSIGNED NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_susernotices`
--

CREATE TABLE `qa_pl_susernotices` (
  `noticeid` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `content` varchar(12000) NOT NULL,
  `format` varchar(20) CHARACTER SET ascii NOT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_suserpoints`
--

CREATE TABLE `qa_pl_suserpoints` (
  `userid` int(10) UNSIGNED NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `qposts` mediumint(9) NOT NULL DEFAULT '0',
  `aposts` mediumint(9) NOT NULL DEFAULT '0',
  `cposts` mediumint(9) NOT NULL DEFAULT '0',
  `aselects` mediumint(9) NOT NULL DEFAULT '0',
  `aselecteds` mediumint(9) NOT NULL DEFAULT '0',
  `qupvotes` mediumint(9) NOT NULL DEFAULT '0',
  `qdownvotes` mediumint(9) NOT NULL DEFAULT '0',
  `aupvotes` mediumint(9) NOT NULL DEFAULT '0',
  `adownvotes` mediumint(9) NOT NULL DEFAULT '0',
  `cupvotes` mediumint(9) NOT NULL DEFAULT '0',
  `cdownvotes` mediumint(9) NOT NULL DEFAULT '0',
  `qvoteds` int(11) NOT NULL DEFAULT '0',
  `avoteds` int(11) NOT NULL DEFAULT '0',
  `cvoteds` int(11) NOT NULL DEFAULT '0',
  `upvoteds` int(11) NOT NULL DEFAULT '0',
  `downvoteds` int(11) NOT NULL DEFAULT '0',
  `bonus` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_pl_suserpoints`
--

INSERT INTO `qa_pl_suserpoints` (`userid`, `points`, `qposts`, `aposts`, `cposts`, `aselects`, `aselecteds`, `qupvotes`, `qdownvotes`, `aupvotes`, `adownvotes`, `cupvotes`, `cdownvotes`, `qvoteds`, `avoteds`, `cvoteds`, `upvoteds`, `downvoteds`, `bonus`) VALUES
(2, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_suservotes`
--

CREATE TABLE `qa_pl_suservotes` (
  `postid` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `vote` tinyint(4) NOT NULL,
  `flag` tinyint(4) NOT NULL,
  `votecreated` datetime DEFAULT NULL,
  `voteupdated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_swidgets`
--

CREATE TABLE `qa_pl_swidgets` (
  `widgetid` smallint(5) UNSIGNED NOT NULL,
  `place` char(2) CHARACTER SET ascii NOT NULL,
  `position` smallint(5) UNSIGNED NOT NULL,
  `tags` varchar(800) CHARACTER SET ascii NOT NULL,
  `title` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_pl_swords`
--

CREATE TABLE `qa_pl_swords` (
  `wordid` int(10) UNSIGNED NOT NULL,
  `word` varchar(80) NOT NULL,
  `titlecount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `contentcount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tagwordcount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tagcount` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_postmetas`
--

CREATE TABLE `qa_postmetas` (
  `postid` int(10) UNSIGNED NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_posts`
--

CREATE TABLE `qa_posts` (
  `postid` int(10) UNSIGNED NOT NULL,
  `type` enum('Q','A','C','Q_HIDDEN','A_HIDDEN','C_HIDDEN','Q_QUEUED','A_QUEUED','C_QUEUED','NOTE') NOT NULL,
  `parentid` int(10) UNSIGNED DEFAULT NULL,
  `categoryid` int(10) UNSIGNED DEFAULT NULL,
  `catidpath1` int(10) UNSIGNED DEFAULT NULL,
  `catidpath2` int(10) UNSIGNED DEFAULT NULL,
  `catidpath3` int(10) UNSIGNED DEFAULT NULL,
  `acount` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `amaxvote` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `selchildid` int(10) UNSIGNED DEFAULT NULL,
  `closedbyid` int(10) UNSIGNED DEFAULT NULL,
  `userid` int(10) UNSIGNED DEFAULT NULL,
  `cookieid` bigint(20) UNSIGNED DEFAULT NULL,
  `createip` varbinary(16) DEFAULT NULL,
  `lastuserid` int(10) UNSIGNED DEFAULT NULL,
  `lastip` varbinary(16) DEFAULT NULL,
  `upvotes` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `downvotes` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `netvotes` smallint(6) NOT NULL DEFAULT '0',
  `lastviewip` varbinary(16) DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hotness` float DEFAULT NULL,
  `flagcount` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `format` varchar(20) CHARACTER SET ascii NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` datetime DEFAULT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `title` varchar(800) DEFAULT NULL,
  `content` varchar(12000) DEFAULT NULL,
  `tags` varchar(800) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `notify` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_posttags`
--

CREATE TABLE `qa_posttags` (
  `postid` int(10) UNSIGNED NOT NULL,
  `wordid` int(10) UNSIGNED NOT NULL,
  `postcreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_sharedevents`
--

CREATE TABLE `qa_sharedevents` (
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) UNSIGNED NOT NULL,
  `questionid` int(10) UNSIGNED NOT NULL,
  `lastpostid` int(10) UNSIGNED NOT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `lastuserid` int(10) UNSIGNED DEFAULT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_tagmetas`
--

CREATE TABLE `qa_tagmetas` (
  `tag` varchar(80) NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_tagwords`
--

CREATE TABLE `qa_tagwords` (
  `postid` int(10) UNSIGNED NOT NULL,
  `wordid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_titlewords`
--

CREATE TABLE `qa_titlewords` (
  `postid` int(10) UNSIGNED NOT NULL,
  `wordid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_userevents`
--

CREATE TABLE `qa_userevents` (
  `userid` int(10) UNSIGNED NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) UNSIGNED NOT NULL,
  `questionid` int(10) UNSIGNED NOT NULL,
  `lastpostid` int(10) UNSIGNED NOT NULL,
  `updatetype` char(1) CHARACTER SET ascii DEFAULT NULL,
  `lastuserid` int(10) UNSIGNED DEFAULT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_userfavorites`
--

CREATE TABLE `qa_userfavorites` (
  `userid` int(10) UNSIGNED NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) UNSIGNED NOT NULL,
  `nouserevents` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_userlevels`
--

CREATE TABLE `qa_userlevels` (
  `userid` int(10) UNSIGNED NOT NULL,
  `entitytype` char(1) CHARACTER SET ascii NOT NULL,
  `entityid` int(10) UNSIGNED NOT NULL,
  `level` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_userlimits`
--

CREATE TABLE `qa_userlimits` (
  `userid` int(10) UNSIGNED NOT NULL,
  `action` char(1) CHARACTER SET ascii NOT NULL,
  `period` int(10) UNSIGNED NOT NULL,
  `count` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_usermetas`
--

CREATE TABLE `qa_usermetas` (
  `userid` int(10) UNSIGNED NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_usernotices`
--

CREATE TABLE `qa_usernotices` (
  `noticeid` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `content` varchar(12000) NOT NULL,
  `format` varchar(20) CHARACTER SET ascii NOT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_userpoints`
--

CREATE TABLE `qa_userpoints` (
  `userid` int(10) UNSIGNED NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `qposts` mediumint(9) NOT NULL DEFAULT '0',
  `aposts` mediumint(9) NOT NULL DEFAULT '0',
  `cposts` mediumint(9) NOT NULL DEFAULT '0',
  `aselects` mediumint(9) NOT NULL DEFAULT '0',
  `aselecteds` mediumint(9) NOT NULL DEFAULT '0',
  `qupvotes` mediumint(9) NOT NULL DEFAULT '0',
  `qdownvotes` mediumint(9) NOT NULL DEFAULT '0',
  `aupvotes` mediumint(9) NOT NULL DEFAULT '0',
  `adownvotes` mediumint(9) NOT NULL DEFAULT '0',
  `cupvotes` mediumint(9) NOT NULL DEFAULT '0',
  `cdownvotes` mediumint(9) NOT NULL DEFAULT '0',
  `qvoteds` int(11) NOT NULL DEFAULT '0',
  `avoteds` int(11) NOT NULL DEFAULT '0',
  `cvoteds` int(11) NOT NULL DEFAULT '0',
  `upvoteds` int(11) NOT NULL DEFAULT '0',
  `downvoteds` int(11) NOT NULL DEFAULT '0',
  `bonus` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `qa_userpoints`
--

INSERT INTO `qa_userpoints` (`userid`, `points`, `qposts`, `aposts`, `cposts`, `aselects`, `aselecteds`, `qupvotes`, `qdownvotes`, `aupvotes`, `adownvotes`, `cupvotes`, `cdownvotes`, `qvoteds`, `avoteds`, `cvoteds`, `upvoteds`, `downvoteds`, `bonus`) VALUES
(1, 100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `qa_uservotes`
--

CREATE TABLE `qa_uservotes` (
  `postid` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `vote` tinyint(4) NOT NULL,
  `flag` tinyint(4) NOT NULL,
  `votecreated` datetime DEFAULT NULL,
  `voteupdated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_widgets`
--

CREATE TABLE `qa_widgets` (
  `widgetid` smallint(5) UNSIGNED NOT NULL,
  `place` char(2) CHARACTER SET ascii NOT NULL,
  `position` smallint(5) UNSIGNED NOT NULL,
  `tags` varchar(800) CHARACTER SET ascii NOT NULL,
  `title` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `qa_words`
--

CREATE TABLE `qa_words` (
  `wordid` int(10) UNSIGNED NOT NULL,
  `word` varchar(80) NOT NULL,
  `titlecount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `contentcount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tagwordcount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `tagcount` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sharedusers_blobs`
--

CREATE TABLE `sharedusers_blobs` (
  `blobid` bigint(20) UNSIGNED NOT NULL,
  `format` varchar(20) CHARACTER SET ascii NOT NULL,
  `content` mediumblob,
  `filename` varchar(255) DEFAULT NULL,
  `userid` int(10) UNSIGNED DEFAULT NULL,
  `cookieid` bigint(20) UNSIGNED DEFAULT NULL,
  `createip` varbinary(16) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sharedusers_cache`
--

CREATE TABLE `sharedusers_cache` (
  `type` char(8) CHARACTER SET ascii NOT NULL,
  `cacheid` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `content` mediumblob NOT NULL,
  `created` datetime NOT NULL,
  `lastread` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sharedusers_cookies`
--

CREATE TABLE `sharedusers_cookies` (
  `cookieid` bigint(20) UNSIGNED NOT NULL,
  `created` datetime NOT NULL,
  `createip` varbinary(16) NOT NULL,
  `written` datetime DEFAULT NULL,
  `writeip` varbinary(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sharedusers_messages`
--

CREATE TABLE `sharedusers_messages` (
  `messageid` int(10) UNSIGNED NOT NULL,
  `type` enum('PUBLIC','PRIVATE') NOT NULL DEFAULT 'PRIVATE',
  `fromuserid` int(10) UNSIGNED DEFAULT NULL,
  `touserid` int(10) UNSIGNED DEFAULT NULL,
  `fromhidden` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `tohidden` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `content` varchar(12000) NOT NULL,
  `format` varchar(20) CHARACTER SET ascii NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sharedusers_userfields`
--

CREATE TABLE `sharedusers_userfields` (
  `fieldid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(40) DEFAULT NULL,
  `position` smallint(5) UNSIGNED NOT NULL,
  `flags` tinyint(3) UNSIGNED NOT NULL,
  `permit` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sharedusers_userlogins`
--

CREATE TABLE `sharedusers_userlogins` (
  `userid` int(10) UNSIGNED NOT NULL,
  `source` varchar(16) CHARACTER SET ascii NOT NULL,
  `identifier` varbinary(1024) NOT NULL,
  `identifiermd5` binary(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sharedusers_userprofile`
--

CREATE TABLE `sharedusers_userprofile` (
  `userid` int(10) UNSIGNED NOT NULL,
  `title` varchar(40) NOT NULL,
  `content` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sharedusers_users`
--

CREATE TABLE `sharedusers_users` (
  `userid` int(10) UNSIGNED NOT NULL,
  `created` datetime NOT NULL,
  `createip` varbinary(16) NOT NULL,
  `email` varchar(80) NOT NULL,
  `handle` varchar(20) NOT NULL,
  `avatarblobid` bigint(20) UNSIGNED DEFAULT NULL,
  `avatarwidth` smallint(5) UNSIGNED DEFAULT NULL,
  `avatarheight` smallint(5) UNSIGNED DEFAULT NULL,
  `passsalt` binary(16) DEFAULT NULL,
  `passcheck` binary(20) DEFAULT NULL,
  `passhash` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `level` tinyint(3) UNSIGNED NOT NULL,
  `loggedin` datetime NOT NULL,
  `loginip` varbinary(16) NOT NULL,
  `written` datetime DEFAULT NULL,
  `writeip` varbinary(16) DEFAULT NULL,
  `emailcode` char(8) CHARACTER SET ascii NOT NULL DEFAULT '',
  `sessioncode` char(8) CHARACTER SET ascii NOT NULL DEFAULT '',
  `sessionsource` varchar(16) CHARACTER SET ascii DEFAULT '',
  `flags` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `wallposts` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sharedusers_users`
--

INSERT INTO `sharedusers_users` (`userid`, `created`, `createip`, `email`, `handle`, `avatarblobid`, `avatarwidth`, `avatarheight`, `passsalt`, `passcheck`, `passhash`, `level`, `loggedin`, `loginip`, `written`, `writeip`, `emailcode`, `sessioncode`, `sessionsource`, `flags`, `wallposts`) VALUES
(1, '2020-07-16 14:03:16', 0x0a000202, 'mail', 'root', NULL, NULL, NULL, NULL, NULL, '$2y$10$3ah/bcgIsg0vmqOh2CrM.uycA9bH3y7xXT/IFNl.hOsZX8PaINnrm', 120, '2020-07-16 14:08:07', 0x0a000202, NULL, NULL, '', 'lpdhnskj', NULL, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `qa_categories`
--
ALTER TABLE `qa_categories`
  ADD PRIMARY KEY (`categoryid`),
  ADD UNIQUE KEY `parentid` (`parentid`,`tags`),
  ADD UNIQUE KEY `parentid_2` (`parentid`,`position`),
  ADD KEY `backpath` (`backpath`(200));

--
-- Indexes for table `qa_categorymetas`
--
ALTER TABLE `qa_categorymetas`
  ADD PRIMARY KEY (`categoryid`,`title`);

--
-- Indexes for table `qa_contentwords`
--
ALTER TABLE `qa_contentwords`
  ADD KEY `postid` (`postid`),
  ADD KEY `wordid` (`wordid`);

--
-- Indexes for table `qa_en_bcategories`
--
ALTER TABLE `qa_en_bcategories`
  ADD PRIMARY KEY (`categoryid`),
  ADD UNIQUE KEY `parentid` (`parentid`,`tags`),
  ADD UNIQUE KEY `parentid_2` (`parentid`,`position`),
  ADD KEY `backpath` (`backpath`(200));

--
-- Indexes for table `qa_en_bcategorymetas`
--
ALTER TABLE `qa_en_bcategorymetas`
  ADD PRIMARY KEY (`categoryid`,`title`);

--
-- Indexes for table `qa_en_bcontentwords`
--
ALTER TABLE `qa_en_bcontentwords`
  ADD KEY `postid` (`postid`),
  ADD KEY `wordid` (`wordid`);

--
-- Indexes for table `qa_en_biplimits`
--
ALTER TABLE `qa_en_biplimits`
  ADD UNIQUE KEY `ip` (`ip`,`action`);

--
-- Indexes for table `qa_en_boptions`
--
ALTER TABLE `qa_en_boptions`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `qa_en_bpages`
--
ALTER TABLE `qa_en_bpages`
  ADD PRIMARY KEY (`pageid`),
  ADD UNIQUE KEY `position` (`position`),
  ADD KEY `tags` (`tags`);

--
-- Indexes for table `qa_en_bpostmetas`
--
ALTER TABLE `qa_en_bpostmetas`
  ADD PRIMARY KEY (`postid`,`title`);

--
-- Indexes for table `qa_en_bposts`
--
ALTER TABLE `qa_en_bposts`
  ADD PRIMARY KEY (`postid`),
  ADD KEY `type` (`type`,`created`),
  ADD KEY `type_2` (`type`,`acount`,`created`),
  ADD KEY `type_4` (`type`,`netvotes`,`created`),
  ADD KEY `type_5` (`type`,`views`,`created`),
  ADD KEY `type_6` (`type`,`hotness`),
  ADD KEY `type_7` (`type`,`amaxvote`,`created`),
  ADD KEY `parentid` (`parentid`,`type`),
  ADD KEY `userid` (`userid`,`type`,`created`),
  ADD KEY `selchildid` (`selchildid`,`type`,`created`),
  ADD KEY `closedbyid` (`closedbyid`),
  ADD KEY `catidpath1` (`catidpath1`,`type`,`created`),
  ADD KEY `catidpath2` (`catidpath2`,`type`,`created`),
  ADD KEY `catidpath3` (`catidpath3`,`type`,`created`),
  ADD KEY `categoryid` (`categoryid`,`type`,`created`),
  ADD KEY `createip` (`createip`,`created`),
  ADD KEY `updated` (`updated`,`type`),
  ADD KEY `flagcount` (`flagcount`,`created`,`type`),
  ADD KEY `catidpath1_2` (`catidpath1`,`updated`,`type`),
  ADD KEY `catidpath2_2` (`catidpath2`,`updated`,`type`),
  ADD KEY `catidpath3_2` (`catidpath3`,`updated`,`type`),
  ADD KEY `categoryid_2` (`categoryid`,`updated`,`type`),
  ADD KEY `lastuserid` (`lastuserid`,`updated`,`type`),
  ADD KEY `lastip` (`lastip`,`updated`,`type`);

--
-- Indexes for table `qa_en_bposttags`
--
ALTER TABLE `qa_en_bposttags`
  ADD KEY `postid` (`postid`),
  ADD KEY `wordid` (`wordid`,`postcreated`);

--
-- Indexes for table `qa_en_bsharedevents`
--
ALTER TABLE `qa_en_bsharedevents`
  ADD KEY `entitytype` (`entitytype`,`entityid`,`updated`),
  ADD KEY `questionid` (`questionid`,`entitytype`,`entityid`);

--
-- Indexes for table `qa_en_btagmetas`
--
ALTER TABLE `qa_en_btagmetas`
  ADD PRIMARY KEY (`tag`,`title`);

--
-- Indexes for table `qa_en_btagwords`
--
ALTER TABLE `qa_en_btagwords`
  ADD KEY `postid` (`postid`),
  ADD KEY `wordid` (`wordid`);

--
-- Indexes for table `qa_en_btitlewords`
--
ALTER TABLE `qa_en_btitlewords`
  ADD KEY `postid` (`postid`),
  ADD KEY `wordid` (`wordid`);

--
-- Indexes for table `qa_en_buserevents`
--
ALTER TABLE `qa_en_buserevents`
  ADD KEY `userid` (`userid`,`updated`),
  ADD KEY `questionid` (`questionid`,`userid`);

--
-- Indexes for table `qa_en_buserfavorites`
--
ALTER TABLE `qa_en_buserfavorites`
  ADD PRIMARY KEY (`userid`,`entitytype`,`entityid`),
  ADD KEY `userid` (`userid`,`nouserevents`),
  ADD KEY `entitytype` (`entitytype`,`entityid`,`nouserevents`);

--
-- Indexes for table `qa_en_buserlevels`
--
ALTER TABLE `qa_en_buserlevels`
  ADD UNIQUE KEY `userid` (`userid`,`entitytype`,`entityid`),
  ADD KEY `entitytype` (`entitytype`,`entityid`);

--
-- Indexes for table `qa_en_buserlimits`
--
ALTER TABLE `qa_en_buserlimits`
  ADD UNIQUE KEY `userid` (`userid`,`action`);

--
-- Indexes for table `qa_en_busermetas`
--
ALTER TABLE `qa_en_busermetas`
  ADD PRIMARY KEY (`userid`,`title`);

--
-- Indexes for table `qa_en_busernotices`
--
ALTER TABLE `qa_en_busernotices`
  ADD PRIMARY KEY (`noticeid`),
  ADD KEY `userid` (`userid`,`created`);

--
-- Indexes for table `qa_en_buserpoints`
--
ALTER TABLE `qa_en_buserpoints`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `points` (`points`);

--
-- Indexes for table `qa_en_buservotes`
--
ALTER TABLE `qa_en_buservotes`
  ADD UNIQUE KEY `userid` (`userid`,`postid`),
  ADD KEY `postid` (`postid`),
  ADD KEY `voted` (`votecreated`,`voteupdated`);

--
-- Indexes for table `qa_en_bwidgets`
--
ALTER TABLE `qa_en_bwidgets`
  ADD PRIMARY KEY (`widgetid`),
  ADD UNIQUE KEY `position` (`position`);

--
-- Indexes for table `qa_en_bwords`
--
ALTER TABLE `qa_en_bwords`
  ADD PRIMARY KEY (`wordid`),
  ADD KEY `word` (`word`),
  ADD KEY `tagcount` (`tagcount`);

--
-- Indexes for table `qa_en_scategories`
--
ALTER TABLE `qa_en_scategories`
  ADD PRIMARY KEY (`categoryid`),
  ADD UNIQUE KEY `parentid` (`parentid`,`tags`),
  ADD UNIQUE KEY `parentid_2` (`parentid`,`position`),
  ADD KEY `backpath` (`backpath`(200));

--
-- Indexes for table `qa_en_scategorymetas`
--
ALTER TABLE `qa_en_scategorymetas`
  ADD PRIMARY KEY (`categoryid`,`title`);

--
-- Indexes for table `qa_en_scontentwords`
--
ALTER TABLE `qa_en_scontentwords`
  ADD KEY `postid` (`postid`),
  ADD KEY `wordid` (`wordid`);

--
-- Indexes for table `qa_en_siplimits`
--
ALTER TABLE `qa_en_siplimits`
  ADD UNIQUE KEY `ip` (`ip`,`action`);

--
-- Indexes for table `qa_en_soptions`
--
ALTER TABLE `qa_en_soptions`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `qa_en_spages`
--
ALTER TABLE `qa_en_spages`
  ADD PRIMARY KEY (`pageid`),
  ADD UNIQUE KEY `position` (`position`),
  ADD KEY `tags` (`tags`);

--
-- Indexes for table `qa_en_spostmetas`
--
ALTER TABLE `qa_en_spostmetas`
  ADD PRIMARY KEY (`postid`,`title`);

--
-- Indexes for table `qa_en_sposts`
--
ALTER TABLE `qa_en_sposts`
  ADD PRIMARY KEY (`postid`),
  ADD KEY `type` (`type`,`created`),
  ADD KEY `type_2` (`type`,`acount`,`created`),
  ADD KEY `type_4` (`type`,`netvotes`,`created`),
  ADD KEY `type_5` (`type`,`views`,`created`),
  ADD KEY `type_6` (`type`,`hotness`),
  ADD KEY `type_7` (`type`,`amaxvote`,`created`),
  ADD KEY `parentid` (`parentid`,`type`),
  ADD KEY `userid` (`userid`,`type`,`created`),
  ADD KEY `selchildid` (`selchildid`,`type`,`created`),
  ADD KEY `closedbyid` (`closedbyid`),
  ADD KEY `catidpath1` (`catidpath1`,`type`,`created`),
  ADD KEY `catidpath2` (`catidpath2`,`type`,`created`),
  ADD KEY `catidpath3` (`catidpath3`,`type`,`created`),
  ADD KEY `categoryid` (`categoryid`,`type`,`created`),
  ADD KEY `createip` (`createip`,`created`),
  ADD KEY `updated` (`updated`,`type`),
  ADD KEY `flagcount` (`flagcount`,`created`,`type`),
  ADD KEY `catidpath1_2` (`catidpath1`,`updated`,`type`),
  ADD KEY `catidpath2_2` (`catidpath2`,`updated`,`type`),
  ADD KEY `catidpath3_2` (`catidpath3`,`updated`,`type`),
  ADD KEY `categoryid_2` (`categoryid`,`updated`,`type`),
  ADD KEY `lastuserid` (`lastuserid`,`updated`,`type`),
  ADD KEY `lastip` (`lastip`,`updated`,`type`);

--
-- Indexes for table `qa_en_sposttags`
--
ALTER TABLE `qa_en_sposttags`
  ADD KEY `postid` (`postid`),
  ADD KEY `wordid` (`wordid`,`postcreated`);

--
-- Indexes for table `qa_en_ssharedevents`
--
ALTER TABLE `qa_en_ssharedevents`
  ADD KEY `entitytype` (`entitytype`,`entityid`,`updated`),
  ADD KEY `questionid` (`questionid`,`entitytype`,`entityid`);

--
-- Indexes for table `qa_en_stagmetas`
--
ALTER TABLE `qa_en_stagmetas`
  ADD PRIMARY KEY (`tag`,`title`);

--
-- Indexes for table `qa_en_stagwords`
--
ALTER TABLE `qa_en_stagwords`
  ADD KEY `postid` (`postid`),
  ADD KEY `wordid` (`wordid`);

--
-- Indexes for table `qa_en_stitlewords`
--
ALTER TABLE `qa_en_stitlewords`
  ADD KEY `postid` (`postid`),
  ADD KEY `wordid` (`wordid`);

--
-- Indexes for table `qa_en_suserevents`
--
ALTER TABLE `qa_en_suserevents`
  ADD KEY `userid` (`userid`,`updated`),
  ADD KEY `questionid` (`questionid`,`userid`);

--
-- Indexes for table `qa_en_suserfavorites`
--
ALTER TABLE `qa_en_suserfavorites`
  ADD PRIMARY KEY (`userid`,`entitytype`,`entityid`),
  ADD KEY `userid` (`userid`,`nouserevents`),
  ADD KEY `entitytype` (`entitytype`,`entityid`,`nouserevents`);

--
-- Indexes for table `qa_en_suserlevels`
--
ALTER TABLE `qa_en_suserlevels`
  ADD UNIQUE KEY `userid` (`userid`,`entitytype`,`entityid`),
  ADD KEY `entitytype` (`entitytype`,`entityid`);

--
-- Indexes for table `qa_en_suserlimits`
--
ALTER TABLE `qa_en_suserlimits`
  ADD UNIQUE KEY `userid` (`userid`,`action`);

--
-- Indexes for table `qa_en_susermetas`
--
ALTER TABLE `qa_en_susermetas`
  ADD PRIMARY KEY (`userid`,`title`);

--
-- Indexes for table `qa_en_susernotices`
--
ALTER TABLE `qa_en_susernotices`
  ADD PRIMARY KEY (`noticeid`),
  ADD KEY `userid` (`userid`,`created`);

--
-- Indexes for table `qa_en_suserpoints`
--
ALTER TABLE `qa_en_suserpoints`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `points` (`points`);

--
-- Indexes for table `qa_en_suservotes`
--
ALTER TABLE `qa_en_suservotes`
  ADD UNIQUE KEY `userid` (`userid`,`postid`),
  ADD KEY `postid` (`postid`),
  ADD KEY `voted` (`votecreated`,`voteupdated`);

--
-- Indexes for table `qa_en_swidgets`
--
ALTER TABLE `qa_en_swidgets`
  ADD PRIMARY KEY (`widgetid`),
  ADD UNIQUE KEY `position` (`position`);

--
-- Indexes for table `qa_en_swords`
--
ALTER TABLE `qa_en_swords`
  ADD PRIMARY KEY (`wordid`),
  ADD KEY `word` (`word`),
  ADD KEY `tagcount` (`tagcount`);

--
-- Indexes for table `qa_iplimits`
--
ALTER TABLE `qa_iplimits`
  ADD UNIQUE KEY `ip` (`ip`,`action`);

--
-- Indexes for table `qa_langservice`
--
ALTER TABLE `qa_langservice`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `qa_options`
--
ALTER TABLE `qa_options`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `qa_pages`
--
ALTER TABLE `qa_pages`
  ADD PRIMARY KEY (`pageid`),
  ADD UNIQUE KEY `position` (`position`),
  ADD KEY `tags` (`tags`);

--
-- Indexes for table `qa_pl_bcategories`
--
ALTER TABLE `qa_pl_bcategories`
  ADD PRIMARY KEY (`categoryid`),
  ADD UNIQUE KEY `parentid` (`parentid`,`tags`),
  ADD UNIQUE KEY `parentid_2` (`parentid`,`position`),
  ADD KEY `backpath` (`backpath`(200));

--
-- Indexes for table `qa_pl_bcategorymetas`
--
ALTER TABLE `qa_pl_bcategorymetas`
  ADD PRIMARY KEY (`categoryid`,`title`);

--
-- Indexes for table `qa_pl_bcontentwords`
--
ALTER TABLE `qa_pl_bcontentwords`
  ADD KEY `postid` (`postid`),
  ADD KEY `wordid` (`wordid`);

--
-- Indexes for table `qa_pl_biplimits`
--
ALTER TABLE `qa_pl_biplimits`
  ADD UNIQUE KEY `ip` (`ip`,`action`);

--
-- Indexes for table `qa_pl_boptions`
--
ALTER TABLE `qa_pl_boptions`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `qa_pl_bpages`
--
ALTER TABLE `qa_pl_bpages`
  ADD PRIMARY KEY (`pageid`),
  ADD UNIQUE KEY `position` (`position`),
  ADD KEY `tags` (`tags`);

--
-- Indexes for table `qa_pl_bpostmetas`
--
ALTER TABLE `qa_pl_bpostmetas`
  ADD PRIMARY KEY (`postid`,`title`);

--
-- Indexes for table `qa_pl_bposts`
--
ALTER TABLE `qa_pl_bposts`
  ADD PRIMARY KEY (`postid`),
  ADD KEY `type` (`type`,`created`),
  ADD KEY `type_2` (`type`,`acount`,`created`),
  ADD KEY `type_4` (`type`,`netvotes`,`created`),
  ADD KEY `type_5` (`type`,`views`,`created`),
  ADD KEY `type_6` (`type`,`hotness`),
  ADD KEY `type_7` (`type`,`amaxvote`,`created`),
  ADD KEY `parentid` (`parentid`,`type`),
  ADD KEY `userid` (`userid`,`type`,`created`),
  ADD KEY `selchildid` (`selchildid`,`type`,`created`),
  ADD KEY `closedbyid` (`closedbyid`),
  ADD KEY `catidpath1` (`catidpath1`,`type`,`created`),
  ADD KEY `catidpath2` (`catidpath2`,`type`,`created`),
  ADD KEY `catidpath3` (`catidpath3`,`type`,`created`),
  ADD KEY `categoryid` (`categoryid`,`type`,`created`),
  ADD KEY `createip` (`createip`,`created`),
  ADD KEY `updated` (`updated`,`type`),
  ADD KEY `flagcount` (`flagcount`,`created`,`type`),
  ADD KEY `catidpath1_2` (`catidpath1`,`updated`,`type`),
  ADD KEY `catidpath2_2` (`catidpath2`,`updated`,`type`),
  ADD KEY `catidpath3_2` (`catidpath3`,`updated`,`type`),
  ADD KEY `categoryid_2` (`categoryid`,`updated`,`type`),
  ADD KEY `lastuserid` (`lastuserid`,`updated`,`type`),
  ADD KEY `lastip` (`lastip`,`updated`,`type`);

--
-- Indexes for table `qa_pl_bposttags`
--
ALTER TABLE `qa_pl_bposttags`
  ADD KEY `postid` (`postid`),
  ADD KEY `wordid` (`wordid`,`postcreated`);

--
-- Indexes for table `qa_pl_bsharedevents`
--
ALTER TABLE `qa_pl_bsharedevents`
  ADD KEY `entitytype` (`entitytype`,`entityid`,`updated`),
  ADD KEY `questionid` (`questionid`,`entitytype`,`entityid`);

--
-- Indexes for table `qa_pl_btagmetas`
--
ALTER TABLE `qa_pl_btagmetas`
  ADD PRIMARY KEY (`tag`,`title`);

--
-- Indexes for table `qa_pl_btagwords`
--
ALTER TABLE `qa_pl_btagwords`
  ADD KEY `postid` (`postid`),
  ADD KEY `wordid` (`wordid`);

--
-- Indexes for table `qa_pl_btitlewords`
--
ALTER TABLE `qa_pl_btitlewords`
  ADD KEY `postid` (`postid`),
  ADD KEY `wordid` (`wordid`);

--
-- Indexes for table `qa_pl_buserevents`
--
ALTER TABLE `qa_pl_buserevents`
  ADD KEY `userid` (`userid`,`updated`),
  ADD KEY `questionid` (`questionid`,`userid`);

--
-- Indexes for table `qa_pl_buserfavorites`
--
ALTER TABLE `qa_pl_buserfavorites`
  ADD PRIMARY KEY (`userid`,`entitytype`,`entityid`),
  ADD KEY `userid` (`userid`,`nouserevents`),
  ADD KEY `entitytype` (`entitytype`,`entityid`,`nouserevents`);

--
-- Indexes for table `qa_pl_buserlevels`
--
ALTER TABLE `qa_pl_buserlevels`
  ADD UNIQUE KEY `userid` (`userid`,`entitytype`,`entityid`),
  ADD KEY `entitytype` (`entitytype`,`entityid`);

--
-- Indexes for table `qa_pl_buserlimits`
--
ALTER TABLE `qa_pl_buserlimits`
  ADD UNIQUE KEY `userid` (`userid`,`action`);

--
-- Indexes for table `qa_pl_busermetas`
--
ALTER TABLE `qa_pl_busermetas`
  ADD PRIMARY KEY (`userid`,`title`);

--
-- Indexes for table `qa_pl_busernotices`
--
ALTER TABLE `qa_pl_busernotices`
  ADD PRIMARY KEY (`noticeid`),
  ADD KEY `userid` (`userid`,`created`);

--
-- Indexes for table `qa_pl_buserpoints`
--
ALTER TABLE `qa_pl_buserpoints`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `points` (`points`);

--
-- Indexes for table `qa_pl_buservotes`
--
ALTER TABLE `qa_pl_buservotes`
  ADD UNIQUE KEY `userid` (`userid`,`postid`),
  ADD KEY `postid` (`postid`),
  ADD KEY `voted` (`votecreated`,`voteupdated`);

--
-- Indexes for table `qa_pl_bwidgets`
--
ALTER TABLE `qa_pl_bwidgets`
  ADD PRIMARY KEY (`widgetid`),
  ADD UNIQUE KEY `position` (`position`);

--
-- Indexes for table `qa_pl_bwords`
--
ALTER TABLE `qa_pl_bwords`
  ADD PRIMARY KEY (`wordid`),
  ADD KEY `word` (`word`),
  ADD KEY `tagcount` (`tagcount`);

--
-- Indexes for table `qa_pl_scategories`
--
ALTER TABLE `qa_pl_scategories`
  ADD PRIMARY KEY (`categoryid`),
  ADD UNIQUE KEY `parentid` (`parentid`,`tags`),
  ADD UNIQUE KEY `parentid_2` (`parentid`,`position`),
  ADD KEY `backpath` (`backpath`(200));

--
-- Indexes for table `qa_pl_scategorymetas`
--
ALTER TABLE `qa_pl_scategorymetas`
  ADD PRIMARY KEY (`categoryid`,`title`);

--
-- Indexes for table `qa_pl_scontentwords`
--
ALTER TABLE `qa_pl_scontentwords`
  ADD KEY `postid` (`postid`),
  ADD KEY `wordid` (`wordid`);

--
-- Indexes for table `qa_pl_siplimits`
--
ALTER TABLE `qa_pl_siplimits`
  ADD UNIQUE KEY `ip` (`ip`,`action`);

--
-- Indexes for table `qa_pl_soptions`
--
ALTER TABLE `qa_pl_soptions`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `qa_pl_spages`
--
ALTER TABLE `qa_pl_spages`
  ADD PRIMARY KEY (`pageid`),
  ADD UNIQUE KEY `position` (`position`),
  ADD KEY `tags` (`tags`);

--
-- Indexes for table `qa_pl_spostmetas`
--
ALTER TABLE `qa_pl_spostmetas`
  ADD PRIMARY KEY (`postid`,`title`);

--
-- Indexes for table `qa_pl_sposts`
--
ALTER TABLE `qa_pl_sposts`
  ADD PRIMARY KEY (`postid`),
  ADD KEY `type` (`type`,`created`),
  ADD KEY `type_2` (`type`,`acount`,`created`),
  ADD KEY `type_4` (`type`,`netvotes`,`created`),
  ADD KEY `type_5` (`type`,`views`,`created`),
  ADD KEY `type_6` (`type`,`hotness`),
  ADD KEY `type_7` (`type`,`amaxvote`,`created`),
  ADD KEY `parentid` (`parentid`,`type`),
  ADD KEY `userid` (`userid`,`type`,`created`),
  ADD KEY `selchildid` (`selchildid`,`type`,`created`),
  ADD KEY `closedbyid` (`closedbyid`),
  ADD KEY `catidpath1` (`catidpath1`,`type`,`created`),
  ADD KEY `catidpath2` (`catidpath2`,`type`,`created`),
  ADD KEY `catidpath3` (`catidpath3`,`type`,`created`),
  ADD KEY `categoryid` (`categoryid`,`type`,`created`),
  ADD KEY `createip` (`createip`,`created`),
  ADD KEY `updated` (`updated`,`type`),
  ADD KEY `flagcount` (`flagcount`,`created`,`type`),
  ADD KEY `catidpath1_2` (`catidpath1`,`updated`,`type`),
  ADD KEY `catidpath2_2` (`catidpath2`,`updated`,`type`),
  ADD KEY `catidpath3_2` (`catidpath3`,`updated`,`type`),
  ADD KEY `categoryid_2` (`categoryid`,`updated`,`type`),
  ADD KEY `lastuserid` (`lastuserid`,`updated`,`type`),
  ADD KEY `lastip` (`lastip`,`updated`,`type`);

--
-- Indexes for table `qa_pl_sposttags`
--
ALTER TABLE `qa_pl_sposttags`
  ADD KEY `postid` (`postid`),
  ADD KEY `wordid` (`wordid`,`postcreated`);

--
-- Indexes for table `qa_pl_ssharedevents`
--
ALTER TABLE `qa_pl_ssharedevents`
  ADD KEY `entitytype` (`entitytype`,`entityid`,`updated`),
  ADD KEY `questionid` (`questionid`,`entitytype`,`entityid`);

--
-- Indexes for table `qa_pl_stagmetas`
--
ALTER TABLE `qa_pl_stagmetas`
  ADD PRIMARY KEY (`tag`,`title`);

--
-- Indexes for table `qa_pl_stagwords`
--
ALTER TABLE `qa_pl_stagwords`
  ADD KEY `postid` (`postid`),
  ADD KEY `wordid` (`wordid`);

--
-- Indexes for table `qa_pl_stitlewords`
--
ALTER TABLE `qa_pl_stitlewords`
  ADD KEY `postid` (`postid`),
  ADD KEY `wordid` (`wordid`);

--
-- Indexes for table `qa_pl_suserevents`
--
ALTER TABLE `qa_pl_suserevents`
  ADD KEY `userid` (`userid`,`updated`),
  ADD KEY `questionid` (`questionid`,`userid`);

--
-- Indexes for table `qa_pl_suserfavorites`
--
ALTER TABLE `qa_pl_suserfavorites`
  ADD PRIMARY KEY (`userid`,`entitytype`,`entityid`),
  ADD KEY `userid` (`userid`,`nouserevents`),
  ADD KEY `entitytype` (`entitytype`,`entityid`,`nouserevents`);

--
-- Indexes for table `qa_pl_suserlevels`
--
ALTER TABLE `qa_pl_suserlevels`
  ADD UNIQUE KEY `userid` (`userid`,`entitytype`,`entityid`),
  ADD KEY `entitytype` (`entitytype`,`entityid`);

--
-- Indexes for table `qa_pl_suserlimits`
--
ALTER TABLE `qa_pl_suserlimits`
  ADD UNIQUE KEY `userid` (`userid`,`action`);

--
-- Indexes for table `qa_pl_susermetas`
--
ALTER TABLE `qa_pl_susermetas`
  ADD PRIMARY KEY (`userid`,`title`);

--
-- Indexes for table `qa_pl_susernotices`
--
ALTER TABLE `qa_pl_susernotices`
  ADD PRIMARY KEY (`noticeid`),
  ADD KEY `userid` (`userid`,`created`);

--
-- Indexes for table `qa_pl_suserpoints`
--
ALTER TABLE `qa_pl_suserpoints`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `points` (`points`);

--
-- Indexes for table `qa_pl_suservotes`
--
ALTER TABLE `qa_pl_suservotes`
  ADD UNIQUE KEY `userid` (`userid`,`postid`),
  ADD KEY `postid` (`postid`),
  ADD KEY `voted` (`votecreated`,`voteupdated`);

--
-- Indexes for table `qa_pl_swidgets`
--
ALTER TABLE `qa_pl_swidgets`
  ADD PRIMARY KEY (`widgetid`),
  ADD UNIQUE KEY `position` (`position`);

--
-- Indexes for table `qa_pl_swords`
--
ALTER TABLE `qa_pl_swords`
  ADD PRIMARY KEY (`wordid`),
  ADD KEY `word` (`word`),
  ADD KEY `tagcount` (`tagcount`);

--
-- Indexes for table `qa_postmetas`
--
ALTER TABLE `qa_postmetas`
  ADD PRIMARY KEY (`postid`,`title`);

--
-- Indexes for table `qa_posts`
--
ALTER TABLE `qa_posts`
  ADD PRIMARY KEY (`postid`),
  ADD KEY `type` (`type`,`created`),
  ADD KEY `type_2` (`type`,`acount`,`created`),
  ADD KEY `type_4` (`type`,`netvotes`,`created`),
  ADD KEY `type_5` (`type`,`views`,`created`),
  ADD KEY `type_6` (`type`,`hotness`),
  ADD KEY `type_7` (`type`,`amaxvote`,`created`),
  ADD KEY `parentid` (`parentid`,`type`),
  ADD KEY `userid` (`userid`,`type`,`created`),
  ADD KEY `selchildid` (`selchildid`,`type`,`created`),
  ADD KEY `closedbyid` (`closedbyid`),
  ADD KEY `catidpath1` (`catidpath1`,`type`,`created`),
  ADD KEY `catidpath2` (`catidpath2`,`type`,`created`),
  ADD KEY `catidpath3` (`catidpath3`,`type`,`created`),
  ADD KEY `categoryid` (`categoryid`,`type`,`created`),
  ADD KEY `createip` (`createip`,`created`),
  ADD KEY `updated` (`updated`,`type`),
  ADD KEY `flagcount` (`flagcount`,`created`,`type`),
  ADD KEY `catidpath1_2` (`catidpath1`,`updated`,`type`),
  ADD KEY `catidpath2_2` (`catidpath2`,`updated`,`type`),
  ADD KEY `catidpath3_2` (`catidpath3`,`updated`,`type`),
  ADD KEY `categoryid_2` (`categoryid`,`updated`,`type`),
  ADD KEY `lastuserid` (`lastuserid`,`updated`,`type`),
  ADD KEY `lastip` (`lastip`,`updated`,`type`);

--
-- Indexes for table `qa_posttags`
--
ALTER TABLE `qa_posttags`
  ADD KEY `postid` (`postid`),
  ADD KEY `wordid` (`wordid`,`postcreated`);

--
-- Indexes for table `qa_sharedevents`
--
ALTER TABLE `qa_sharedevents`
  ADD KEY `entitytype` (`entitytype`,`entityid`,`updated`),
  ADD KEY `questionid` (`questionid`,`entitytype`,`entityid`);

--
-- Indexes for table `qa_tagmetas`
--
ALTER TABLE `qa_tagmetas`
  ADD PRIMARY KEY (`tag`,`title`);

--
-- Indexes for table `qa_tagwords`
--
ALTER TABLE `qa_tagwords`
  ADD KEY `postid` (`postid`),
  ADD KEY `wordid` (`wordid`);

--
-- Indexes for table `qa_titlewords`
--
ALTER TABLE `qa_titlewords`
  ADD KEY `postid` (`postid`),
  ADD KEY `wordid` (`wordid`);

--
-- Indexes for table `qa_userevents`
--
ALTER TABLE `qa_userevents`
  ADD KEY `userid` (`userid`,`updated`),
  ADD KEY `questionid` (`questionid`,`userid`);

--
-- Indexes for table `qa_userfavorites`
--
ALTER TABLE `qa_userfavorites`
  ADD PRIMARY KEY (`userid`,`entitytype`,`entityid`),
  ADD KEY `userid` (`userid`,`nouserevents`),
  ADD KEY `entitytype` (`entitytype`,`entityid`,`nouserevents`);

--
-- Indexes for table `qa_userlevels`
--
ALTER TABLE `qa_userlevels`
  ADD UNIQUE KEY `userid` (`userid`,`entitytype`,`entityid`),
  ADD KEY `entitytype` (`entitytype`,`entityid`);

--
-- Indexes for table `qa_userlimits`
--
ALTER TABLE `qa_userlimits`
  ADD UNIQUE KEY `userid` (`userid`,`action`);

--
-- Indexes for table `qa_usermetas`
--
ALTER TABLE `qa_usermetas`
  ADD PRIMARY KEY (`userid`,`title`);

--
-- Indexes for table `qa_usernotices`
--
ALTER TABLE `qa_usernotices`
  ADD PRIMARY KEY (`noticeid`),
  ADD KEY `userid` (`userid`,`created`);

--
-- Indexes for table `qa_userpoints`
--
ALTER TABLE `qa_userpoints`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `points` (`points`);

--
-- Indexes for table `qa_uservotes`
--
ALTER TABLE `qa_uservotes`
  ADD UNIQUE KEY `userid` (`userid`,`postid`),
  ADD KEY `postid` (`postid`),
  ADD KEY `voted` (`votecreated`,`voteupdated`);

--
-- Indexes for table `qa_widgets`
--
ALTER TABLE `qa_widgets`
  ADD PRIMARY KEY (`widgetid`),
  ADD UNIQUE KEY `position` (`position`);

--
-- Indexes for table `qa_words`
--
ALTER TABLE `qa_words`
  ADD PRIMARY KEY (`wordid`),
  ADD KEY `word` (`word`),
  ADD KEY `tagcount` (`tagcount`);

--
-- Indexes for table `sharedusers_blobs`
--
ALTER TABLE `sharedusers_blobs`
  ADD PRIMARY KEY (`blobid`);

--
-- Indexes for table `sharedusers_cache`
--
ALTER TABLE `sharedusers_cache`
  ADD PRIMARY KEY (`type`,`cacheid`),
  ADD KEY `lastread` (`lastread`);

--
-- Indexes for table `sharedusers_cookies`
--
ALTER TABLE `sharedusers_cookies`
  ADD PRIMARY KEY (`cookieid`);

--
-- Indexes for table `sharedusers_messages`
--
ALTER TABLE `sharedusers_messages`
  ADD PRIMARY KEY (`messageid`),
  ADD KEY `type` (`type`,`fromuserid`,`touserid`,`created`),
  ADD KEY `touserid` (`touserid`,`type`,`created`),
  ADD KEY `fromhidden` (`fromhidden`),
  ADD KEY `tohidden` (`tohidden`),
  ADD KEY `qa_messages_ibfk_1` (`fromuserid`);

--
-- Indexes for table `sharedusers_userfields`
--
ALTER TABLE `sharedusers_userfields`
  ADD PRIMARY KEY (`fieldid`);

--
-- Indexes for table `sharedusers_userlogins`
--
ALTER TABLE `sharedusers_userlogins`
  ADD KEY `source` (`source`,`identifiermd5`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `sharedusers_userprofile`
--
ALTER TABLE `sharedusers_userprofile`
  ADD UNIQUE KEY `userid` (`userid`,`title`);

--
-- Indexes for table `sharedusers_users`
--
ALTER TABLE `sharedusers_users`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `email` (`email`),
  ADD KEY `handle` (`handle`),
  ADD KEY `level` (`level`),
  ADD KEY `created` (`created`,`level`,`flags`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `qa_categories`
--
ALTER TABLE `qa_categories`
  MODIFY `categoryid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_en_bcategories`
--
ALTER TABLE `qa_en_bcategories`
  MODIFY `categoryid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_en_bpages`
--
ALTER TABLE `qa_en_bpages`
  MODIFY `pageid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_en_bposts`
--
ALTER TABLE `qa_en_bposts`
  MODIFY `postid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_en_busernotices`
--
ALTER TABLE `qa_en_busernotices`
  MODIFY `noticeid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_en_bwidgets`
--
ALTER TABLE `qa_en_bwidgets`
  MODIFY `widgetid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_en_bwords`
--
ALTER TABLE `qa_en_bwords`
  MODIFY `wordid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_en_scategories`
--
ALTER TABLE `qa_en_scategories`
  MODIFY `categoryid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_en_spages`
--
ALTER TABLE `qa_en_spages`
  MODIFY `pageid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_en_sposts`
--
ALTER TABLE `qa_en_sposts`
  MODIFY `postid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_en_susernotices`
--
ALTER TABLE `qa_en_susernotices`
  MODIFY `noticeid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_en_swidgets`
--
ALTER TABLE `qa_en_swidgets`
  MODIFY `widgetid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_en_swords`
--
ALTER TABLE `qa_en_swords`
  MODIFY `wordid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_pages`
--
ALTER TABLE `qa_pages`
  MODIFY `pageid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_pl_bcategories`
--
ALTER TABLE `qa_pl_bcategories`
  MODIFY `categoryid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_pl_bpages`
--
ALTER TABLE `qa_pl_bpages`
  MODIFY `pageid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_pl_bposts`
--
ALTER TABLE `qa_pl_bposts`
  MODIFY `postid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_pl_busernotices`
--
ALTER TABLE `qa_pl_busernotices`
  MODIFY `noticeid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_pl_bwidgets`
--
ALTER TABLE `qa_pl_bwidgets`
  MODIFY `widgetid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_pl_bwords`
--
ALTER TABLE `qa_pl_bwords`
  MODIFY `wordid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_pl_scategories`
--
ALTER TABLE `qa_pl_scategories`
  MODIFY `categoryid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_pl_spages`
--
ALTER TABLE `qa_pl_spages`
  MODIFY `pageid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_pl_sposts`
--
ALTER TABLE `qa_pl_sposts`
  MODIFY `postid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_pl_susernotices`
--
ALTER TABLE `qa_pl_susernotices`
  MODIFY `noticeid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_pl_swidgets`
--
ALTER TABLE `qa_pl_swidgets`
  MODIFY `widgetid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_pl_swords`
--
ALTER TABLE `qa_pl_swords`
  MODIFY `wordid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_posts`
--
ALTER TABLE `qa_posts`
  MODIFY `postid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_usernotices`
--
ALTER TABLE `qa_usernotices`
  MODIFY `noticeid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_widgets`
--
ALTER TABLE `qa_widgets`
  MODIFY `widgetid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_words`
--
ALTER TABLE `qa_words`
  MODIFY `wordid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sharedusers_messages`
--
ALTER TABLE `sharedusers_messages`
  MODIFY `messageid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sharedusers_userfields`
--
ALTER TABLE `sharedusers_userfields`
  MODIFY `fieldid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sharedusers_users`
--
ALTER TABLE `sharedusers_users`
  MODIFY `userid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `qa_categorymetas`
--
ALTER TABLE `qa_categorymetas`
  ADD CONSTRAINT `qa_categorymetas_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `qa_categories` (`categoryid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_contentwords`
--
ALTER TABLE `qa_contentwords`
  ADD CONSTRAINT `qa_contentwords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_contentwords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_words` (`wordid`);

--
-- Constraints for table `qa_en_bcategorymetas`
--
ALTER TABLE `qa_en_bcategorymetas`
  ADD CONSTRAINT `qa_en_bcategorymetas_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `qa_en_bcategories` (`categoryid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_en_bcontentwords`
--
ALTER TABLE `qa_en_bcontentwords`
  ADD CONSTRAINT `qa_en_bcontentwords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_en_bposts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_en_bcontentwords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_en_bwords` (`wordid`);

--
-- Constraints for table `qa_en_bpostmetas`
--
ALTER TABLE `qa_en_bpostmetas`
  ADD CONSTRAINT `qa_en_bpostmetas_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_en_bposts` (`postid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_en_bposts`
--
ALTER TABLE `qa_en_bposts`
  ADD CONSTRAINT `qa_en_bposts_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE SET NULL,
  ADD CONSTRAINT `qa_en_bposts_ibfk_2` FOREIGN KEY (`parentid`) REFERENCES `qa_en_bposts` (`postid`),
  ADD CONSTRAINT `qa_en_bposts_ibfk_3` FOREIGN KEY (`categoryid`) REFERENCES `qa_en_bcategories` (`categoryid`) ON DELETE SET NULL,
  ADD CONSTRAINT `qa_en_bposts_ibfk_4` FOREIGN KEY (`closedbyid`) REFERENCES `qa_en_bposts` (`postid`);

--
-- Constraints for table `qa_en_bposttags`
--
ALTER TABLE `qa_en_bposttags`
  ADD CONSTRAINT `qa_en_bposttags_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_en_bposts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_en_bposttags_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_en_bwords` (`wordid`);

--
-- Constraints for table `qa_en_btagwords`
--
ALTER TABLE `qa_en_btagwords`
  ADD CONSTRAINT `qa_en_btagwords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_en_bposts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_en_btagwords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_en_bwords` (`wordid`);

--
-- Constraints for table `qa_en_btitlewords`
--
ALTER TABLE `qa_en_btitlewords`
  ADD CONSTRAINT `qa_en_btitlewords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_en_bposts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_en_btitlewords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_en_bwords` (`wordid`);

--
-- Constraints for table `qa_en_buserevents`
--
ALTER TABLE `qa_en_buserevents`
  ADD CONSTRAINT `qa_en_buserevents_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_en_buserfavorites`
--
ALTER TABLE `qa_en_buserfavorites`
  ADD CONSTRAINT `qa_en_buserfavorites_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_en_buserlevels`
--
ALTER TABLE `qa_en_buserlevels`
  ADD CONSTRAINT `qa_en_buserlevels_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_en_buserlimits`
--
ALTER TABLE `qa_en_buserlimits`
  ADD CONSTRAINT `qa_en_buserlimits_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_en_busermetas`
--
ALTER TABLE `qa_en_busermetas`
  ADD CONSTRAINT `qa_en_busermetas_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_en_busernotices`
--
ALTER TABLE `qa_en_busernotices`
  ADD CONSTRAINT `qa_en_busernotices_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_en_buservotes`
--
ALTER TABLE `qa_en_buservotes`
  ADD CONSTRAINT `qa_en_buservotes_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_en_bposts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_en_buservotes_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_en_scategorymetas`
--
ALTER TABLE `qa_en_scategorymetas`
  ADD CONSTRAINT `qa_en_scategorymetas_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `qa_en_scategories` (`categoryid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_en_scontentwords`
--
ALTER TABLE `qa_en_scontentwords`
  ADD CONSTRAINT `qa_en_scontentwords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_en_sposts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_en_scontentwords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_en_swords` (`wordid`);

--
-- Constraints for table `qa_en_spostmetas`
--
ALTER TABLE `qa_en_spostmetas`
  ADD CONSTRAINT `qa_en_spostmetas_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_en_sposts` (`postid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_en_sposts`
--
ALTER TABLE `qa_en_sposts`
  ADD CONSTRAINT `qa_en_sposts_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE SET NULL,
  ADD CONSTRAINT `qa_en_sposts_ibfk_2` FOREIGN KEY (`parentid`) REFERENCES `qa_en_sposts` (`postid`),
  ADD CONSTRAINT `qa_en_sposts_ibfk_3` FOREIGN KEY (`categoryid`) REFERENCES `qa_en_scategories` (`categoryid`) ON DELETE SET NULL,
  ADD CONSTRAINT `qa_en_sposts_ibfk_4` FOREIGN KEY (`closedbyid`) REFERENCES `qa_en_sposts` (`postid`);

--
-- Constraints for table `qa_en_sposttags`
--
ALTER TABLE `qa_en_sposttags`
  ADD CONSTRAINT `qa_en_sposttags_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_en_sposts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_en_sposttags_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_en_swords` (`wordid`);

--
-- Constraints for table `qa_en_stagwords`
--
ALTER TABLE `qa_en_stagwords`
  ADD CONSTRAINT `qa_en_stagwords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_en_sposts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_en_stagwords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_en_swords` (`wordid`);

--
-- Constraints for table `qa_en_stitlewords`
--
ALTER TABLE `qa_en_stitlewords`
  ADD CONSTRAINT `qa_en_stitlewords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_en_sposts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_en_stitlewords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_en_swords` (`wordid`);

--
-- Constraints for table `qa_en_suserevents`
--
ALTER TABLE `qa_en_suserevents`
  ADD CONSTRAINT `qa_en_suserevents_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_en_suserfavorites`
--
ALTER TABLE `qa_en_suserfavorites`
  ADD CONSTRAINT `qa_en_suserfavorites_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_en_suserlevels`
--
ALTER TABLE `qa_en_suserlevels`
  ADD CONSTRAINT `qa_en_suserlevels_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_en_suserlimits`
--
ALTER TABLE `qa_en_suserlimits`
  ADD CONSTRAINT `qa_en_suserlimits_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_en_susermetas`
--
ALTER TABLE `qa_en_susermetas`
  ADD CONSTRAINT `qa_en_susermetas_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_en_susernotices`
--
ALTER TABLE `qa_en_susernotices`
  ADD CONSTRAINT `qa_en_susernotices_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_en_suservotes`
--
ALTER TABLE `qa_en_suservotes`
  ADD CONSTRAINT `qa_en_suservotes_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_en_sposts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_en_suservotes_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_pl_bcategorymetas`
--
ALTER TABLE `qa_pl_bcategorymetas`
  ADD CONSTRAINT `qa_pl_bcategorymetas_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `qa_pl_bcategories` (`categoryid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_pl_bcontentwords`
--
ALTER TABLE `qa_pl_bcontentwords`
  ADD CONSTRAINT `qa_pl_bcontentwords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_pl_bposts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_pl_bcontentwords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_pl_bwords` (`wordid`);

--
-- Constraints for table `qa_pl_bpostmetas`
--
ALTER TABLE `qa_pl_bpostmetas`
  ADD CONSTRAINT `qa_pl_bpostmetas_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_pl_bposts` (`postid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_pl_bposts`
--
ALTER TABLE `qa_pl_bposts`
  ADD CONSTRAINT `qa_pl_bposts_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE SET NULL,
  ADD CONSTRAINT `qa_pl_bposts_ibfk_2` FOREIGN KEY (`parentid`) REFERENCES `qa_pl_bposts` (`postid`),
  ADD CONSTRAINT `qa_pl_bposts_ibfk_3` FOREIGN KEY (`categoryid`) REFERENCES `qa_pl_bcategories` (`categoryid`) ON DELETE SET NULL,
  ADD CONSTRAINT `qa_pl_bposts_ibfk_4` FOREIGN KEY (`closedbyid`) REFERENCES `qa_pl_bposts` (`postid`);

--
-- Constraints for table `qa_pl_bposttags`
--
ALTER TABLE `qa_pl_bposttags`
  ADD CONSTRAINT `qa_pl_bposttags_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_pl_bposts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_pl_bposttags_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_pl_bwords` (`wordid`);

--
-- Constraints for table `qa_pl_btagwords`
--
ALTER TABLE `qa_pl_btagwords`
  ADD CONSTRAINT `qa_pl_btagwords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_pl_bposts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_pl_btagwords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_pl_bwords` (`wordid`);

--
-- Constraints for table `qa_pl_btitlewords`
--
ALTER TABLE `qa_pl_btitlewords`
  ADD CONSTRAINT `qa_pl_btitlewords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_pl_bposts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_pl_btitlewords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_pl_bwords` (`wordid`);

--
-- Constraints for table `qa_pl_buserevents`
--
ALTER TABLE `qa_pl_buserevents`
  ADD CONSTRAINT `qa_pl_buserevents_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_pl_buserfavorites`
--
ALTER TABLE `qa_pl_buserfavorites`
  ADD CONSTRAINT `qa_pl_buserfavorites_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_pl_buserlevels`
--
ALTER TABLE `qa_pl_buserlevels`
  ADD CONSTRAINT `qa_pl_buserlevels_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_pl_buserlimits`
--
ALTER TABLE `qa_pl_buserlimits`
  ADD CONSTRAINT `qa_pl_buserlimits_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_pl_busermetas`
--
ALTER TABLE `qa_pl_busermetas`
  ADD CONSTRAINT `qa_pl_busermetas_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_pl_busernotices`
--
ALTER TABLE `qa_pl_busernotices`
  ADD CONSTRAINT `qa_pl_busernotices_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_pl_buservotes`
--
ALTER TABLE `qa_pl_buservotes`
  ADD CONSTRAINT `qa_pl_buservotes_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_pl_bposts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_pl_buservotes_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_pl_scategorymetas`
--
ALTER TABLE `qa_pl_scategorymetas`
  ADD CONSTRAINT `qa_pl_scategorymetas_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `qa_pl_scategories` (`categoryid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_pl_scontentwords`
--
ALTER TABLE `qa_pl_scontentwords`
  ADD CONSTRAINT `qa_pl_scontentwords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_pl_sposts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_pl_scontentwords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_pl_swords` (`wordid`);

--
-- Constraints for table `qa_pl_spostmetas`
--
ALTER TABLE `qa_pl_spostmetas`
  ADD CONSTRAINT `qa_pl_spostmetas_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_pl_sposts` (`postid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_pl_sposts`
--
ALTER TABLE `qa_pl_sposts`
  ADD CONSTRAINT `qa_pl_sposts_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE SET NULL,
  ADD CONSTRAINT `qa_pl_sposts_ibfk_2` FOREIGN KEY (`parentid`) REFERENCES `qa_pl_sposts` (`postid`),
  ADD CONSTRAINT `qa_pl_sposts_ibfk_3` FOREIGN KEY (`categoryid`) REFERENCES `qa_pl_scategories` (`categoryid`) ON DELETE SET NULL,
  ADD CONSTRAINT `qa_pl_sposts_ibfk_4` FOREIGN KEY (`closedbyid`) REFERENCES `qa_pl_sposts` (`postid`);

--
-- Constraints for table `qa_pl_sposttags`
--
ALTER TABLE `qa_pl_sposttags`
  ADD CONSTRAINT `qa_pl_sposttags_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_pl_sposts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_pl_sposttags_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_pl_swords` (`wordid`);

--
-- Constraints for table `qa_pl_stagwords`
--
ALTER TABLE `qa_pl_stagwords`
  ADD CONSTRAINT `qa_pl_stagwords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_pl_sposts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_pl_stagwords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_pl_swords` (`wordid`);

--
-- Constraints for table `qa_pl_stitlewords`
--
ALTER TABLE `qa_pl_stitlewords`
  ADD CONSTRAINT `qa_pl_stitlewords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_pl_sposts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_pl_stitlewords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_pl_swords` (`wordid`);

--
-- Constraints for table `qa_pl_suserevents`
--
ALTER TABLE `qa_pl_suserevents`
  ADD CONSTRAINT `qa_pl_suserevents_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_pl_suserfavorites`
--
ALTER TABLE `qa_pl_suserfavorites`
  ADD CONSTRAINT `qa_pl_suserfavorites_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_pl_suserlevels`
--
ALTER TABLE `qa_pl_suserlevels`
  ADD CONSTRAINT `qa_pl_suserlevels_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_pl_suserlimits`
--
ALTER TABLE `qa_pl_suserlimits`
  ADD CONSTRAINT `qa_pl_suserlimits_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_pl_susermetas`
--
ALTER TABLE `qa_pl_susermetas`
  ADD CONSTRAINT `qa_pl_susermetas_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_pl_susernotices`
--
ALTER TABLE `qa_pl_susernotices`
  ADD CONSTRAINT `qa_pl_susernotices_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_pl_suservotes`
--
ALTER TABLE `qa_pl_suservotes`
  ADD CONSTRAINT `qa_pl_suservotes_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_pl_sposts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_pl_suservotes_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_postmetas`
--
ALTER TABLE `qa_postmetas`
  ADD CONSTRAINT `qa_postmetas_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_posts`
--
ALTER TABLE `qa_posts`
  ADD CONSTRAINT `qa_posts_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE SET NULL,
  ADD CONSTRAINT `qa_posts_ibfk_2` FOREIGN KEY (`parentid`) REFERENCES `qa_posts` (`postid`),
  ADD CONSTRAINT `qa_posts_ibfk_3` FOREIGN KEY (`categoryid`) REFERENCES `qa_categories` (`categoryid`) ON DELETE SET NULL,
  ADD CONSTRAINT `qa_posts_ibfk_4` FOREIGN KEY (`closedbyid`) REFERENCES `qa_posts` (`postid`);

--
-- Constraints for table `qa_posttags`
--
ALTER TABLE `qa_posttags`
  ADD CONSTRAINT `qa_posttags_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_posttags_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_words` (`wordid`);

--
-- Constraints for table `qa_tagwords`
--
ALTER TABLE `qa_tagwords`
  ADD CONSTRAINT `qa_tagwords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_tagwords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_words` (`wordid`);

--
-- Constraints for table `qa_titlewords`
--
ALTER TABLE `qa_titlewords`
  ADD CONSTRAINT `qa_titlewords_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_titlewords_ibfk_2` FOREIGN KEY (`wordid`) REFERENCES `qa_words` (`wordid`);

--
-- Constraints for table `qa_userevents`
--
ALTER TABLE `qa_userevents`
  ADD CONSTRAINT `qa_userevents_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_userfavorites`
--
ALTER TABLE `qa_userfavorites`
  ADD CONSTRAINT `qa_userfavorites_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_userlevels`
--
ALTER TABLE `qa_userlevels`
  ADD CONSTRAINT `qa_userlevels_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_userlimits`
--
ALTER TABLE `qa_userlimits`
  ADD CONSTRAINT `qa_userlimits_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_usermetas`
--
ALTER TABLE `qa_usermetas`
  ADD CONSTRAINT `qa_usermetas_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_usernotices`
--
ALTER TABLE `qa_usernotices`
  ADD CONSTRAINT `qa_usernotices_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `qa_uservotes`
--
ALTER TABLE `qa_uservotes`
  ADD CONSTRAINT `qa_uservotes_ibfk_1` FOREIGN KEY (`postid`) REFERENCES `qa_posts` (`postid`) ON DELETE CASCADE,
  ADD CONSTRAINT `qa_uservotes_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `sharedusers_messages`
--
ALTER TABLE `sharedusers_messages`
  ADD CONSTRAINT `qa_messages_ibfk_1` FOREIGN KEY (`fromuserid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE SET NULL,
  ADD CONSTRAINT `qa_messages_ibfk_2` FOREIGN KEY (`touserid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE SET NULL;

--
-- Constraints for table `sharedusers_userlogins`
--
ALTER TABLE `sharedusers_userlogins`
  ADD CONSTRAINT `sharedusers_userlogins_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `sharedusers_userprofile`
--
ALTER TABLE `sharedusers_userprofile`
  ADD CONSTRAINT `sharedusers_userprofile_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `sharedusers_users` (`userid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
