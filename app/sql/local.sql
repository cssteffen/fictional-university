-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-04-20 17:56:02','2020-04-20 17:56:02','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=381 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://fictional-university','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://fictional-university','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Fictional University','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','The best university in the world.','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','cara@treadstonedesign.com','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:152:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"professor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"professor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"professor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"professor/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:30:\"professor/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:38:\"professor/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:45:\"professor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:34:\"professor/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:26:\"professor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"professor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"professor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=41&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:5:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:3;s:39:\"manual-image-crop/manual-image-crop.php\";i:4;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','fictional-university-theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_whitelist','1','yes');
INSERT INTO `wp_options` VALUES (43,'blacklist_keys','','no');
INSERT INTO `wp_options` VALUES (44,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','47018','yes');
INSERT INTO `wp_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (51,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (53,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (69,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (73,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_text','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_rss','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','43','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','41','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (92,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (93,'admin_email_lifespan','1602957361','yes');
INSERT INTO `wp_options` VALUES (94,'initial_db_version','47018','yes');
INSERT INTO `wp_options` VALUES (95,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (96,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (97,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (103,'cron','a:7:{i:1587855364;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1587880564;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1587923762;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587924020;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1587924021;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588096562;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'nonce_key','#Gew3(Xu{#onc<:NWd-OY{FiwEhQ>Ew@FOB(B+8`IBmqi?F?@;FQ&nXwLZXsk<cO','no');
INSERT INTO `wp_options` VALUES (111,'nonce_salt','Fat?{yfIp+wXN(`?bOIk9>h4RYqqxfnA>6^|Yxg,ao;-ky)p~ &/E8?VMLek@AVe','no');
INSERT INTO `wp_options` VALUES (112,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.4.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.4-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.4\";s:7:\"version\";s:3:\"5.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1587839082;s:15:\"version_checked\";s:3:\"5.4\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (117,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1587408206;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (118,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1587839083;s:7:\"checked\";a:1:{s:26:\"fictional-university-theme\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (124,'_site_transient_timeout_browser_8e0a730ed752fb115e838c5f4441e856','1588010420','no');
INSERT INTO `wp_options` VALUES (125,'_site_transient_browser_8e0a730ed752fb115e838c5f4441e856','a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"75.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (126,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1588010420','no');
INSERT INTO `wp_options` VALUES (127,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (131,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (144,'current_theme','Fictional University','yes');
INSERT INTO `wp_options` VALUES (145,'theme_mods_fictional-university-theme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:18:\"headerMenuLocation\";i:2;s:17:\"footerLocationOne\";i:3;s:17:\"footerLocationTwo\";i:4;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (146,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (150,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (151,'new_admin_email','cara@treadstonedesign.com','yes');
INSERT INTO `wp_options` VALUES (175,'_transient_health-check-site-status-result','{\"good\":\"11\",\"recommended\":\"6\",\"critical\":\"0\"}','yes');
INSERT INTO `wp_options` VALUES (180,'_site_transient_timeout_browser_102f5b3df328e7118125e61b042e4dbe','1588106170','no');
INSERT INTO `wp_options` VALUES (181,'_site_transient_browser_102f5b3df328e7118125e61b042e4dbe','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"67.0.3396.87\";s:8:\"platform\";s:7:\"Android\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:1;}','no');
INSERT INTO `wp_options` VALUES (195,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (243,'recently_activated','a:2:{s:61:\"image-regenerate-select-crop/image-regenerate-select-crop.php\";i:1587763826;s:29:\"acf-extended/acf-extended.php\";i:1587697803;}','yes');
INSERT INTO `wp_options` VALUES (250,'_site_transient_timeout_browser_db66764158ad735dc8956813bb7e178d','1588266161','no');
INSERT INTO `wp_options` VALUES (251,'_site_transient_browser_db66764158ad735dc8956813bb7e178d','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"81.0.4044.113\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (271,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (289,'acf_version','5.8.9','yes');
INSERT INTO `wp_options` VALUES (319,'cptui_new_install','false','yes');
INSERT INTO `wp_options` VALUES (320,'cptui_post_types','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (363,'sirsc_db_version','5.41','yes');
INSERT INTO `wp_options` VALUES (372,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1587839083;s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.9\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.5\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.7.4\";s:61:\"image-regenerate-select-crop/image-regenerate-select-crop.php\";s:5:\"5.4.1\";s:39:\"manual-image-crop/manual-image-crop.php\";s:4:\"1.12\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.9\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.7.4\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.7.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:61:\"image-regenerate-select-crop/image-regenerate-select-crop.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:42:\"w.org/plugins/image-regenerate-select-crop\";s:4:\"slug\";s:28:\"image-regenerate-select-crop\";s:6:\"plugin\";s:61:\"image-regenerate-select-crop/image-regenerate-select-crop.php\";s:11:\"new_version\";s:5:\"5.4.1\";s:3:\"url\";s:59:\"https://wordpress.org/plugins/image-regenerate-select-crop/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/image-regenerate-select-crop.5.4.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:81:\"https://ps.w.org/image-regenerate-select-crop/assets/icon-128x128.png?rev=1758978\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:83:\"https://ps.w.org/image-regenerate-select-crop/assets/banner-772x250.png?rev=1073288\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"manual-image-crop/manual-image-crop.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/manual-image-crop\";s:4:\"slug\";s:17:\"manual-image-crop\";s:6:\"plugin\";s:39:\"manual-image-crop/manual-image-crop.php\";s:11:\"new_version\";s:4:\"1.12\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/manual-image-crop/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/manual-image-crop.1.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-256x256.png?rev=1154913\";s:2:\"1x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-128x128.png?rev=1154913\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/manual-image-crop/assets/banner-1544x500.jpg?rev=781224\";s:2:\"1x\";s:71:\"https://ps.w.org/manual-image-crop/assets/banner-772x250.jpg?rev=781224\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.3\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (373,'mic_make2x','true','yes');
INSERT INTO `wp_options` VALUES (377,'_site_transient_timeout_theme_roots','1587840883','no');
INSERT INTO `wp_options` VALUES (378,'_site_transient_theme_roots','a:1:{s:26:\"fictional-university-theme\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1587411526:1');
INSERT INTO `wp_postmeta` VALUES (6,7,'_edit_lock','1587411877:1');
INSERT INTO `wp_postmeta` VALUES (9,10,'_edit_lock','1587412470:1');
INSERT INTO `wp_postmeta` VALUES (10,12,'_edit_lock','1587765947:1');
INSERT INTO `wp_postmeta` VALUES (11,14,'_edit_lock','1587490962:1');
INSERT INTO `wp_postmeta` VALUES (12,16,'_edit_lock','1587676730:1');
INSERT INTO `wp_postmeta` VALUES (13,18,'_edit_lock','1587500724:1');
INSERT INTO `wp_postmeta` VALUES (14,20,'_edit_lock','1587494156:1');
INSERT INTO `wp_postmeta` VALUES (15,3,'_edit_lock','1587494170:1');
INSERT INTO `wp_postmeta` VALUES (16,22,'_edit_lock','1587500685:1');
INSERT INTO `wp_postmeta` VALUES (26,25,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (27,25,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (28,25,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (29,25,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (30,25,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (31,25,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (32,25,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (33,25,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (44,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (45,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (46,27,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (47,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (48,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (49,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (50,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (51,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (89,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (90,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (91,32,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (92,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (93,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (94,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (95,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (96,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (98,33,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (99,33,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (100,33,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (101,33,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (102,33,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (103,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (104,33,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (105,33,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (107,34,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (108,34,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (109,34,'_menu_item_object_id','34');
INSERT INTO `wp_postmeta` VALUES (110,34,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (111,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (112,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (113,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (114,34,'_menu_item_url','https://google.com');
INSERT INTO `wp_postmeta` VALUES (116,35,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (117,35,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (118,35,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (119,35,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (120,35,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (121,35,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (122,35,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (123,35,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (125,36,'_edit_lock','1587658552:1');
INSERT INTO `wp_postmeta` VALUES (126,39,'_edit_lock','1587658592:1');
INSERT INTO `wp_postmeta` VALUES (127,36,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (128,36,'_wp_trash_meta_time','1587658754');
INSERT INTO `wp_postmeta` VALUES (129,36,'_wp_desired_post_slug','home');
INSERT INTO `wp_postmeta` VALUES (130,39,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (131,39,'_wp_trash_meta_time','1587658757');
INSERT INTO `wp_postmeta` VALUES (132,39,'_wp_desired_post_slug','home-2');
INSERT INTO `wp_postmeta` VALUES (133,41,'_edit_lock','1587658727:1');
INSERT INTO `wp_postmeta` VALUES (134,43,'_edit_lock','1587662936:1');
INSERT INTO `wp_postmeta` VALUES (135,48,'_edit_lock','1587660699:1');
INSERT INTO `wp_postmeta` VALUES (136,49,'_edit_lock','1587660735:1');
INSERT INTO `wp_postmeta` VALUES (143,51,'_edit_lock','1587661324:1');
INSERT INTO `wp_postmeta` VALUES (144,51,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (145,51,'_wp_trash_meta_time','1587661479');
INSERT INTO `wp_postmeta` VALUES (146,51,'_wp_desired_post_slug','testing-page');
INSERT INTO `wp_postmeta` VALUES (147,43,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (148,53,'_edit_lock','1587683590:1');
INSERT INTO `wp_postmeta` VALUES (155,56,'_edit_lock','1587662977:1');
INSERT INTO `wp_postmeta` VALUES (164,53,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (167,61,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (168,61,'_edit_lock','1587758083:1');
INSERT INTO `wp_postmeta` VALUES (169,62,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (170,62,'_edit_lock','1587755791:1');
INSERT INTO `wp_postmeta` VALUES (171,63,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (172,63,'_edit_lock','1587700502:1');
INSERT INTO `wp_postmeta` VALUES (180,67,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (181,67,'_edit_lock','1587695737:1');
INSERT INTO `wp_postmeta` VALUES (182,63,'event_date','20200410');
INSERT INTO `wp_postmeta` VALUES (183,63,'_event_date','field_5ea22636fcd1a');
INSERT INTO `wp_postmeta` VALUES (184,62,'event_date','20200529');
INSERT INTO `wp_postmeta` VALUES (185,62,'_event_date','field_5ea22636fcd1a');
INSERT INTO `wp_postmeta` VALUES (186,61,'event_date','20200612');
INSERT INTO `wp_postmeta` VALUES (187,61,'_event_date','field_5ea22636fcd1a');
INSERT INTO `wp_postmeta` VALUES (188,69,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (189,69,'_edit_lock','1587753860:1');
INSERT INTO `wp_postmeta` VALUES (190,69,'event_date','20201210');
INSERT INTO `wp_postmeta` VALUES (191,69,'_event_date','field_5ea22636fcd1a');
INSERT INTO `wp_postmeta` VALUES (192,70,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (193,70,'_edit_lock','1587690570:1');
INSERT INTO `wp_postmeta` VALUES (194,72,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (195,72,'_edit_lock','1587755998:1');
INSERT INTO `wp_postmeta` VALUES (196,72,'event_date','20191231');
INSERT INTO `wp_postmeta` VALUES (197,72,'_event_date','field_5ea22636fcd1a');
INSERT INTO `wp_postmeta` VALUES (198,73,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (199,73,'_edit_lock','1587692020:1');
INSERT INTO `wp_postmeta` VALUES (200,74,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (201,74,'_edit_lock','1587756948:1');
INSERT INTO `wp_postmeta` VALUES (202,75,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (203,75,'_edit_lock','1587692152:1');
INSERT INTO `wp_postmeta` VALUES (204,76,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (205,76,'_edit_lock','1587694799:1');
INSERT INTO `wp_postmeta` VALUES (206,62,'related_program','');
INSERT INTO `wp_postmeta` VALUES (207,62,'_related_program','field_5ea245ec14ed1');
INSERT INTO `wp_postmeta` VALUES (208,78,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (209,78,'_edit_lock','1587697350:1');
INSERT INTO `wp_postmeta` VALUES (210,76,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (211,76,'_wp_trash_meta_time','1587694947');
INSERT INTO `wp_postmeta` VALUES (212,76,'_wp_desired_post_slug','group_5ea245dfc783d');
INSERT INTO `wp_postmeta` VALUES (213,77,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (214,77,'_wp_trash_meta_time','1587694947');
INSERT INTO `wp_postmeta` VALUES (215,77,'_wp_desired_post_slug','field_5ea245ec14ed1');
INSERT INTO `wp_postmeta` VALUES (216,79,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (217,79,'_edit_lock','1587758431:1');
INSERT INTO `wp_postmeta` VALUES (218,82,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (219,82,'_edit_lock','1587700318:1');
INSERT INTO `wp_postmeta` VALUES (220,83,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (221,83,'_edit_lock','1587699564:1');
INSERT INTO `wp_postmeta` VALUES (222,82,'related_exams','a:2:{i:0;s:2:\"74\";i:1;s:2:\"73\";}');
INSERT INTO `wp_postmeta` VALUES (223,82,'_related_exams','field_5ea25fc5efce6');
INSERT INTO `wp_postmeta` VALUES (224,63,'related_programs','a:1:{i:0;s:2:\"75\";}');
INSERT INTO `wp_postmeta` VALUES (225,63,'_related_programs','field_5ea24d81daf22');
INSERT INTO `wp_postmeta` VALUES (226,82,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (227,82,'_wp_trash_meta_time','1587700597');
INSERT INTO `wp_postmeta` VALUES (228,82,'_wp_desired_post_slug','math-exam');
INSERT INTO `wp_postmeta` VALUES (229,69,'related_programs','a:3:{i:0;s:2:\"75\";i:1;s:2:\"73\";i:2;s:2:\"74\";}');
INSERT INTO `wp_postmeta` VALUES (230,69,'_related_programs','field_5ea24d81daf22');
INSERT INTO `wp_postmeta` VALUES (231,62,'related_programs','a:2:{i:0;s:2:\"74\";i:1;s:2:\"73\";}');
INSERT INTO `wp_postmeta` VALUES (232,62,'_related_programs','field_5ea24d81daf22');
INSERT INTO `wp_postmeta` VALUES (233,61,'related_programs','a:1:{i:0;s:2:\"73\";}');
INSERT INTO `wp_postmeta` VALUES (234,61,'_related_programs','field_5ea24d81daf22');
INSERT INTO `wp_postmeta` VALUES (235,83,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (236,83,'_wp_trash_meta_time','1587700705');
INSERT INTO `wp_postmeta` VALUES (237,83,'_wp_desired_post_slug','group_5ea25fb5b9c0b');
INSERT INTO `wp_postmeta` VALUES (238,84,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (239,84,'_wp_trash_meta_time','1587700705');
INSERT INTO `wp_postmeta` VALUES (240,84,'_wp_desired_post_slug','field_5ea25fc5efce6');
INSERT INTO `wp_postmeta` VALUES (241,72,'related_programs','');
INSERT INTO `wp_postmeta` VALUES (242,72,'_related_programs','field_5ea24d81daf22');
INSERT INTO `wp_postmeta` VALUES (243,87,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (244,87,'_edit_lock','1587764023:1');
INSERT INTO `wp_postmeta` VALUES (245,88,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (246,88,'_edit_lock','1587765493:1');
INSERT INTO `wp_postmeta` VALUES (247,88,'related_programs','a:1:{i:0;s:2:\"74\";}');
INSERT INTO `wp_postmeta` VALUES (248,88,'_related_programs','field_5ea24d81daf22');
INSERT INTO `wp_postmeta` VALUES (249,89,'_wp_attached_file','2020/04/original-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (250,89,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:27:\"2020/04/original-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"original-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"original-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"original-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"original-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"original-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"original-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:20:\"original-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:20:\"original-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"original.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (251,88,'_thumbnail_id','89');
INSERT INTO `wp_postmeta` VALUES (252,90,'_wp_attached_file','2020/04/original1-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (253,90,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:28:\"2020/04/original1-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"original1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"original1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"original1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"original1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"original1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:23:\"original1-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:21:\"original1-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:21:\"original1-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"original1.jpg\";s:15:\"micSelectedArea\";a:2:{s:18:\"professorLandscape\";a:5:{s:1:\"x\";s:1:\"7\";s:1:\"y\";s:2:\"31\";s:1:\"w\";s:16:\"418.461538461528\";s:1:\"h\";s:3:\"272\";s:5:\"scale\";s:4:\"5.12\";}s:17:\"professorPortrait\";a:5:{s:1:\"x\";s:3:\"128\";s:1:\"y\";s:2:\"36\";s:1:\"w\";s:3:\"209\";s:1:\"h\";s:18:\"283.02083333333275\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (254,87,'_thumbnail_id','90');
INSERT INTO `wp_postmeta` VALUES (255,87,'related_programs','a:2:{i:0;s:2:\"75\";i:1;s:2:\"74\";}');
INSERT INTO `wp_postmeta` VALUES (256,87,'_related_programs','field_5ea24d81daf22');
INSERT INTO `wp_postmeta` VALUES (257,91,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (258,91,'_edit_lock','1587762758:1');
INSERT INTO `wp_postmeta` VALUES (259,92,'_wp_attached_file','2020/04/original2-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (260,92,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1999;s:4:\"file\";s:28:\"2020/04/original2-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"original2-300x234.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"original2-1024x800.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"original2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"original2-768x600.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"original2-1536x1199.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:23:\"original2-2048x1599.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:21:\"original2-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:21:\"original2-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"original2.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (261,91,'_thumbnail_id','92');
INSERT INTO `wp_postmeta` VALUES (262,91,'related_programs','a:1:{i:0;s:2:\"73\";}');
INSERT INTO `wp_postmeta` VALUES (263,91,'_related_programs','field_5ea24d81daf22');
INSERT INTO `wp_postmeta` VALUES (264,93,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (265,93,'_edit_lock','1587764581:1');
INSERT INTO `wp_postmeta` VALUES (266,96,'_wp_attached_file','2020/04/field-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (267,96,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:24:\"2020/04/field-scaled.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"field-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"field-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"field-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"field-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"field-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:19:\"field-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:17:\"field-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:17:\"field-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:18:\"field-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:9:\"field.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (268,88,'page_banner_subtitle','The leading voice on barking and biology');
INSERT INTO `wp_postmeta` VALUES (269,88,'_page_banner_subtitle','field_5ea35d540f386');
INSERT INTO `wp_postmeta` VALUES (270,88,'page_banner_background_image','96');
INSERT INTO `wp_postmeta` VALUES (271,88,'_page_banner_background_image','field_5ea35d8c8498f');
INSERT INTO `wp_postmeta` VALUES (272,97,'_wp_attached_file','2020/04/original-1-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (273,97,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1709;s:4:\"file\";s:29:\"2020/04/original-1-scaled.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"original-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"original-1-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"original-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"original-1-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:24:\"original-1-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:24:\"original-1-2048x1367.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1367;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:22:\"original-1-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:22:\"original-1-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:23:\"original-1-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:14:\"original-1.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (274,12,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (275,12,'page_banner_subtitle','We are a great school that has been around for a long time.');
INSERT INTO `wp_postmeta` VALUES (276,12,'_page_banner_subtitle','field_5ea35d540f386');
INSERT INTO `wp_postmeta` VALUES (277,12,'page_banner_background_image','97');
INSERT INTO `wp_postmeta` VALUES (278,12,'_page_banner_background_image','field_5ea35d8c8498f');
INSERT INTO `wp_postmeta` VALUES (279,98,'page_banner_subtitle','We are a great school that has been around for a long time.');
INSERT INTO `wp_postmeta` VALUES (280,98,'_page_banner_subtitle','field_5ea35d540f386');
INSERT INTO `wp_postmeta` VALUES (281,98,'page_banner_background_image','97');
INSERT INTO `wp_postmeta` VALUES (282,98,'_page_banner_background_image','field_5ea35d8c8498f');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-04-20 17:56:02','2020-04-20 17:56:02','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2020-04-20 17:56:02','2020-04-20 17:56:02','',0,'http://fictional-university/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-04-20 17:56:02','2020-04-20 17:56:02','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://fictional-university/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2020-04-20 17:56:02','2020-04-20 17:56:02','',0,'http://fictional-university/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2020-04-20 17:56:02','2020-04-20 17:56:02','<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://fictional-university.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Additional information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>How we protect your data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What data breach procedures we have in place</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What third parties we receive data from</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What automated decision making and/or profiling we do with user data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Industry regulatory disclosure requirements</h3>\n<!-- /wp:heading -->','Privacy Policy','','publish','closed','open','','privacy-policy','','','2020-04-21 18:38:32','2020-04-21 18:38:32','',0,'http://fictional-university/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,1,'2020-04-20 18:00:21','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-04-20 18:00:21','0000-00-00 00:00:00','',0,'http://fictional-university/?p=4',0,'post','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2020-04-20 19:40:43','2020-04-20 19:40:43','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut porttitor leo a diam sollicitudin tempor id eu nisl. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu. Suspendisse interdum consectetur libero id faucibus nisl. Commodo quis imperdiet massa tincidunt nunc pulvinar sapien. Fermentum dui faucibus in ornare quam viverra orci sagittis. Augue neque gravida in fermentum et sollicitudin. Accumsan sit amet nulla facilisi morbi. Eget nullam non nisi est. Dictum at tempor commodo ullamcorper a. Risus in hendrerit gravida rutrum quisque non. Vulputate mi sit amet mauris commodo quis imperdiet massa tincidunt. Arcu vitae elementum curabitur vitae nunc sed velit dignissim. Commodo nulla facilisi nullam vehicula ipsum a. Neque vitae tempus quam pellentesque nec. Tristique senectus et netus et.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ac odio tempor orci dapibus ultrices in iaculis. Nulla aliquet porttitor lacus luctus accumsan tortor. Amet venenatis urna cursus eget nunc. Interdum posuere lorem ipsum dolor sit. Venenatis cras sed felis eget. Sed felis eget velit aliquet sagittis id consectetur. Nisi porta lorem mollis aliquam ut porttitor leo a. Id semper risus in hendrerit gravida rutrum quisque non. Non pulvinar neque laoreet suspendisse interdum. Lectus proin nibh nisl condimentum id. Tellus pellentesque eu tincidunt tortor aliquam. Odio facilisis mauris sit amet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maecenas pharetra convallis posuere morbi leo urna molestie. Tortor at auctor urna nunc id cursus. Varius sit amet mattis vulputate enim nulla aliquet. Sagittis purus sit amet volutpat consequat mauris nunc congue. Tristique et egestas quis ipsum suspendisse ultrices gravida dictum. Fermentum et sollicitudin ac orci phasellus egestas. Purus sit amet luctus venenatis lectus magna fringilla. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Consequat semper viverra nam libero justo laoreet sit amet cursus. Nisi est sit amet facilisis magna etiam tempor orci eu. Congue quisque egestas diam in arcu cursus euismod quis viverra.</p>\n<!-- /wp:paragraph -->','Test Post','','publish','open','open','','test-post','','','2020-04-20 19:40:43','2020-04-20 19:40:43','',0,'http://fictional-university/?p=5',0,'post','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2020-04-20 19:40:43','2020-04-20 19:40:43','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut porttitor leo a diam sollicitudin tempor id eu nisl. Ac orci phasellus egestas tellus rutrum tellus pellentesque eu. Suspendisse interdum consectetur libero id faucibus nisl. Commodo quis imperdiet massa tincidunt nunc pulvinar sapien. Fermentum dui faucibus in ornare quam viverra orci sagittis. Augue neque gravida in fermentum et sollicitudin. Accumsan sit amet nulla facilisi morbi. Eget nullam non nisi est. Dictum at tempor commodo ullamcorper a. Risus in hendrerit gravida rutrum quisque non. Vulputate mi sit amet mauris commodo quis imperdiet massa tincidunt. Arcu vitae elementum curabitur vitae nunc sed velit dignissim. Commodo nulla facilisi nullam vehicula ipsum a. Neque vitae tempus quam pellentesque nec. Tristique senectus et netus et.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ac odio tempor orci dapibus ultrices in iaculis. Nulla aliquet porttitor lacus luctus accumsan tortor. Amet venenatis urna cursus eget nunc. Interdum posuere lorem ipsum dolor sit. Venenatis cras sed felis eget. Sed felis eget velit aliquet sagittis id consectetur. Nisi porta lorem mollis aliquam ut porttitor leo a. Id semper risus in hendrerit gravida rutrum quisque non. Non pulvinar neque laoreet suspendisse interdum. Lectus proin nibh nisl condimentum id. Tellus pellentesque eu tincidunt tortor aliquam. Odio facilisis mauris sit amet.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Maecenas pharetra convallis posuere morbi leo urna molestie. Tortor at auctor urna nunc id cursus. Varius sit amet mattis vulputate enim nulla aliquet. Sagittis purus sit amet volutpat consequat mauris nunc congue. Tristique et egestas quis ipsum suspendisse ultrices gravida dictum. Fermentum et sollicitudin ac orci phasellus egestas. Purus sit amet luctus venenatis lectus magna fringilla. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare. Consequat semper viverra nam libero justo laoreet sit amet cursus. Nisi est sit amet facilisis magna etiam tempor orci eu. Congue quisque egestas diam in arcu cursus euismod quis viverra.</p>\n<!-- /wp:paragraph -->','Test Post','','inherit','closed','closed','','5-revision-v1','','','2020-04-20 19:40:43','2020-04-20 19:40:43','',5,'http://fictional-university/5-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2020-04-20 19:43:26','2020-04-20 19:43:26','<!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt ornare massa eget egestas purus viverra. Felis bibendum ut tristique et egestas quis ipsum. Facilisi morbi tempus iaculis urna id volutpat lacus. Nulla pellentesque dignissim enim sit amet venenatis. Lorem dolor sed viverra ipsum. Posuere urna nec tincidunt praesent semper. Sed vulputate mi sit amet mauris commodo quis. Auctor neque vitae tempus quam pellentesque nec nam. Luctus accumsan tortor posuere ac ut consequat. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Amet consectetur adipiscing elit pellentesque habitant morbi. Vestibulum lorem sed risus ultricies tristique nulla aliquet enim tortor. Purus non enim praesent elementum facilisis leo vel fringilla est. Purus faucibus ornare suspendisse sed nisi. Natoque penatibus et magnis dis parturient montes nascetur ridiculus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum morbi blandit cursus risus. Consectetur adipiscing elit pellentesque habitant morbi tristique senectus et. Sed elementum tempus egestas sed sed risus. Vestibulum sed arcu non odio euismod lacinia at quis risus. Gravida dictum fusce ut placerat orci. Eu lobortis elementum nibh tellus molestie. Tellus molestie nunc non blandit massa enim. Id aliquet lectus proin nibh nisl condimentum id venenatis a. Condimentum mattis pellentesque id nibh. At risus viverra adipiscing at in tellus integer feugiat scelerisque. Ipsum nunc aliquet bibendum enim facilisis gravida neque. Mi ipsum faucibus vitae aliquet nec ullamcorper. Vitae semper quis lectus nulla at. Massa sed elementum tempus egestas sed sed risus. Non enim praesent elementum facilisis. Odio euismod lacinia at quis risus sed vulputate. Volutpat sed cras ornare arcu dui vivamus arcu felis bibendum. Malesuada fames ac turpis egestas integer eget. Nunc scelerisque viverra mauris in.</p>\n<!-- /wp:paragraph -->','Second Test Post','','publish','open','open','','second-test-post','','','2020-04-20 19:43:26','2020-04-20 19:43:26','',0,'http://fictional-university/?p=7',0,'post','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2020-04-20 19:43:26','2020-04-20 19:43:26','<!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt ornare massa eget egestas purus viverra. Felis bibendum ut tristique et egestas quis ipsum. Facilisi morbi tempus iaculis urna id volutpat lacus. Nulla pellentesque dignissim enim sit amet venenatis. Lorem dolor sed viverra ipsum. Posuere urna nec tincidunt praesent semper. Sed vulputate mi sit amet mauris commodo quis. Auctor neque vitae tempus quam pellentesque nec nam. Luctus accumsan tortor posuere ac ut consequat. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Amet consectetur adipiscing elit pellentesque habitant morbi. Vestibulum lorem sed risus ultricies tristique nulla aliquet enim tortor. Purus non enim praesent elementum facilisis leo vel fringilla est. Purus faucibus ornare suspendisse sed nisi. Natoque penatibus et magnis dis parturient montes nascetur ridiculus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum morbi blandit cursus risus. Consectetur adipiscing elit pellentesque habitant morbi tristique senectus et. Sed elementum tempus egestas sed sed risus. Vestibulum sed arcu non odio euismod lacinia at quis risus. Gravida dictum fusce ut placerat orci. Eu lobortis elementum nibh tellus molestie. Tellus molestie nunc non blandit massa enim. Id aliquet lectus proin nibh nisl condimentum id venenatis a. Condimentum mattis pellentesque id nibh. At risus viverra adipiscing at in tellus integer feugiat scelerisque. Ipsum nunc aliquet bibendum enim facilisis gravida neque. Mi ipsum faucibus vitae aliquet nec ullamcorper. Vitae semper quis lectus nulla at. Massa sed elementum tempus egestas sed sed risus. Non enim praesent elementum facilisis. Odio euismod lacinia at quis risus sed vulputate. Volutpat sed cras ornare arcu dui vivamus arcu felis bibendum. Malesuada fames ac turpis egestas integer eget. Nunc scelerisque viverra mauris in.</p>\n<!-- /wp:paragraph -->','Second Test Post','','inherit','closed','closed','','7-revision-v1','','','2020-04-20 19:43:26','2020-04-20 19:43:26','',7,'http://fictional-university/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2020-04-20 19:44:14','2020-04-20 19:44:14','<!-- wp:image {\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://fillmurray.com/g/200/300\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tincidunt ornare massa eget egestas purus viverra. Felis bibendum ut tristique et egestas quis ipsum. Facilisi morbi tempus iaculis urna id volutpat lacus. Nulla pellentesque dignissim enim sit amet venenatis. Lorem dolor sed viverra ipsum. Posuere urna nec tincidunt praesent semper. Sed vulputate mi sit amet mauris commodo quis. Auctor neque vitae tempus quam pellentesque nec nam. Luctus accumsan tortor posuere ac ut consequat. Tincidunt nunc pulvinar sapien et ligula ullamcorper. Amet consectetur adipiscing elit pellentesque habitant morbi. Vestibulum lorem sed risus ultricies tristique nulla aliquet enim tortor. Purus non enim praesent elementum facilisis leo vel fringilla est. Purus faucibus ornare suspendisse sed nisi. Natoque penatibus et magnis dis parturient montes nascetur ridiculus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum morbi blandit cursus risus. Consectetur adipiscing elit pellentesque habitant morbi tristique senectus et. Sed elementum tempus egestas sed sed risus. Vestibulum sed arcu non odio euismod lacinia at quis risus. Gravida dictum fusce ut placerat orci. Eu lobortis elementum nibh tellus molestie. Tellus molestie nunc non blandit massa enim. Id aliquet lectus proin nibh nisl condimentum id venenatis a. Condimentum mattis pellentesque id nibh. At risus viverra adipiscing at in tellus integer feugiat scelerisque. Ipsum nunc aliquet bibendum enim facilisis gravida neque. Mi ipsum faucibus vitae aliquet nec ullamcorper. Vitae semper quis lectus nulla at. Massa sed elementum tempus egestas sed sed risus. Non enim praesent elementum facilisis. Odio euismod lacinia at quis risus sed vulputate. Volutpat sed cras ornare arcu dui vivamus arcu felis bibendum. Malesuada fames ac turpis egestas integer eget. Nunc scelerisque viverra mauris in.</p>\n<!-- /wp:paragraph -->','Second Test Post','','inherit','closed','closed','','7-autosave-v1','','','2020-04-20 19:44:14','2020-04-20 19:44:14','',7,'http://fictional-university/7-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2020-04-20 19:56:38','2020-04-20 19:56:38','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Felis eget nunc lobortis mattis aliquam faucibus purus in. Eget nulla facilisi etiam dignissim. Sollicitudin aliquam ultrices sagittis orci a. Nunc pulvinar sapien et ligula ullamcorper. Aliquam id diam maecenas ultricies mi eget mauris pharetra et. Praesent tristique magna sit amet purus gravida. Odio ut enim blandit volutpat maecenas volutpat blandit. Tempor nec feugiat nisl pretium fusce. Morbi tincidunt ornare massa eget egestas purus viverra.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In massa tempor nec feugiat nisl pretium fusce id velit. Nunc pulvinar sapien et ligula ullamcorper malesuada proin. Suspendisse in est ante in. Elit ut aliquam purus sit amet. Suspendisse interdum consectetur libero id faucibus nisl. Nisl nunc mi ipsum faucibus vitae. Mi tempus imperdiet nulla malesuada pellentesque elit. Praesent tristique magna sit amet purus gravida quis blandit. Felis donec et odio pellentesque. Mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare.</p>\n<!-- /wp:paragraph -->','Test Page 123','','publish','closed','closed','','test-page-123','','','2020-04-20 19:56:38','2020-04-20 19:56:38','',0,'http://fictional-university/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2020-04-20 19:56:38','2020-04-20 19:56:38','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Felis eget nunc lobortis mattis aliquam faucibus purus in. Eget nulla facilisi etiam dignissim. Sollicitudin aliquam ultrices sagittis orci a. Nunc pulvinar sapien et ligula ullamcorper. Aliquam id diam maecenas ultricies mi eget mauris pharetra et. Praesent tristique magna sit amet purus gravida. Odio ut enim blandit volutpat maecenas volutpat blandit. Tempor nec feugiat nisl pretium fusce. Morbi tincidunt ornare massa eget egestas purus viverra.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In massa tempor nec feugiat nisl pretium fusce id velit. Nunc pulvinar sapien et ligula ullamcorper malesuada proin. Suspendisse in est ante in. Elit ut aliquam purus sit amet. Suspendisse interdum consectetur libero id faucibus nisl. Nisl nunc mi ipsum faucibus vitae. Mi tempus imperdiet nulla malesuada pellentesque elit. Praesent tristique magna sit amet purus gravida quis blandit. Felis donec et odio pellentesque. Mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare.</p>\n<!-- /wp:paragraph -->','Test Page 123','','inherit','closed','closed','','10-revision-v1','','','2020-04-20 19:56:38','2020-04-20 19:56:38','',10,'http://fictional-university/10-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2020-04-21 17:44:19','2020-04-21 17:44:19','<!-- wp:paragraph -->\r\n<p>This is the about page content.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Imperdiet sed euismod nisi porta lorem. Sem fringilla ut morbi tincidunt augue. Varius duis at consectetur lorem. Lectus sit amet est placerat in egestas. Justo eget magna fermentum iaculis eu non. Orci porta non pulvinar neque laoreet suspendisse interdum. Aliquet risus feugiat in ante metus. Pellentesque nec nam aliquam sem. Rhoncus aenean vel elit scelerisque mauris.</p>\r\n<!-- /wp:paragraph -->','About Us','','publish','closed','closed','','about-us','','','2020-04-24 22:05:47','2020-04-24 22:05:47','',0,'http://fictional-university/?page_id=12',0,'page','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2020-04-21 17:44:19','2020-04-21 17:44:19','<!-- wp:paragraph -->\n<p>This is the about page content. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Imperdiet sed euismod nisi porta lorem. Sem fringilla ut morbi tincidunt augue. Varius duis at consectetur lorem. Lectus sit amet est placerat in egestas. Justo eget magna fermentum iaculis eu non. Orci porta non pulvinar neque laoreet suspendisse interdum. Aliquet risus feugiat in ante metus. Pellentesque nec nam aliquam sem. Rhoncus aenean vel elit scelerisque mauris.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','12-revision-v1','','','2020-04-21 17:44:19','2020-04-21 17:44:19','',12,'http://fictional-university/12-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-04-21 17:44:53','0000-00-00 00:00:00','<!-- wp:paragraph -->\n<p>This is the privacy policy content. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Imperdiet sed euismod nisi porta lorem. Sem fringilla ut morbi tincidunt augue. Varius duis at consectetur lorem. Lectus sit amet est placerat in egestas. Justo eget magna fermentum iaculis eu non. Orci porta non pulvinar neque laoreet suspendisse interdum. Aliquet risus feugiat in ante metus. Pellentesque nec nam aliquam sem. Rhoncus aenean vel elit scelerisque mauris.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','draft','closed','closed','','','','','2020-04-21 17:44:53','2020-04-21 17:44:53','',0,'http://fictional-university/?page_id=14',0,'page','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2020-04-21 17:44:53','2020-04-21 17:44:53','<!-- wp:paragraph -->\n<p>This is the privacy policy content. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Imperdiet sed euismod nisi porta lorem. Sem fringilla ut morbi tincidunt augue. Varius duis at consectetur lorem. Lectus sit amet est placerat in egestas. Justo eget magna fermentum iaculis eu non. Orci porta non pulvinar neque laoreet suspendisse interdum. Aliquet risus feugiat in ante metus. Pellentesque nec nam aliquam sem. Rhoncus aenean vel elit scelerisque mauris.</p>\n<!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','14-revision-v1','','','2020-04-21 17:44:53','2020-04-21 17:44:53','',14,'http://fictional-university/14-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2020-04-21 18:16:21','2020-04-21 18:16:21','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Imperdiet sed euismod nisi porta lorem. Sem fringilla ut morbi tincidunt augue. Varius duis at consectetur lorem. Lectus sit amet est placerat in egestas. Justo eget magna fermentum iaculis eu non. Orci porta non pulvinar neque laoreet suspendisse interdum. Aliquet risus feugiat in ante metus. Pellentesque nec nam aliquam sem. Rhoncus aenean vel elit scelerisque mauris.</p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2020-04-21 20:28:01','2020-04-21 20:28:01','',12,'http://fictional-university/?page_id=16',1,'page','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-04-21 18:16:21','2020-04-21 18:16:21','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Imperdiet sed euismod nisi porta lorem. Sem fringilla ut morbi tincidunt augue. Varius duis at consectetur lorem. Lectus sit amet est placerat in egestas. Justo eget magna fermentum iaculis eu non. Orci porta non pulvinar neque laoreet suspendisse interdum. Aliquet risus feugiat in ante metus. Pellentesque nec nam aliquam sem. Rhoncus aenean vel elit scelerisque mauris.</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','16-revision-v1','','','2020-04-21 18:16:21','2020-04-21 18:16:21','',16,'http://fictional-university/16-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-04-21 18:17:38','2020-04-21 18:17:38','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Imperdiet sed euismod nisi porta lorem. Sem fringilla ut morbi tincidunt augue. Varius duis at consectetur lorem. Lectus sit amet est placerat in egestas. Justo eget magna fermentum iaculis eu non. Orci porta non pulvinar neque laoreet suspendisse interdum. Aliquet risus feugiat in ante metus. Pellentesque nec nam aliquam sem. Rhoncus aenean vel elit scelerisque mauris.</p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2020-04-21 20:27:45','2020-04-21 20:27:45','',12,'http://fictional-university/?page_id=18',2,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2020-04-21 18:17:38','2020-04-21 18:17:38','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Imperdiet sed euismod nisi porta lorem. Sem fringilla ut morbi tincidunt augue. Varius duis at consectetur lorem. Lectus sit amet est placerat in egestas. Justo eget magna fermentum iaculis eu non. Orci porta non pulvinar neque laoreet suspendisse interdum. Aliquet risus feugiat in ante metus. Pellentesque nec nam aliquam sem. Rhoncus aenean vel elit scelerisque mauris.</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','18-revision-v1','','','2020-04-21 18:17:38','2020-04-21 18:17:38','',18,'http://fictional-university/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2020-04-21 18:37:43','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-04-21 18:37:43','0000-00-00 00:00:00','',0,'http://fictional-university/?page_id=20',0,'page','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2020-04-21 18:38:32','2020-04-21 18:38:32','<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://fictional-university.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Additional information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>How we protect your data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What data breach procedures we have in place</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What third parties we receive data from</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What automated decision making and/or profiling we do with user data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Industry regulatory disclosure requirements</h3>\n<!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2020-04-21 18:38:32','2020-04-21 18:38:32','',3,'http://fictional-university/3-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-04-21 18:38:55','2020-04-21 18:38:55','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Imperdiet sed euismod nisi porta lorem. Sem fringilla ut morbi tincidunt augue. Varius duis at consectetur lorem. Lectus sit amet est placerat in egestas. Justo eget magna fermentum iaculis eu non. Orci porta non pulvinar neque laoreet suspendisse interdum. Aliquet risus feugiat in ante metus. Pellentesque nec nam aliquam sem. Rhoncus aenean vel elit scelerisque mauris.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','publish','closed','closed','','cookie-policy','','','2020-04-21 18:38:55','2020-04-21 18:38:55','',3,'http://fictional-university/?page_id=22',0,'page','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2020-04-21 18:38:55','2020-04-21 18:38:55','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Imperdiet sed euismod nisi porta lorem. Sem fringilla ut morbi tincidunt augue. Varius duis at consectetur lorem. Lectus sit amet est placerat in egestas. Justo eget magna fermentum iaculis eu non. Orci porta non pulvinar neque laoreet suspendisse interdum. Aliquet risus feugiat in ante metus. Pellentesque nec nam aliquam sem. Rhoncus aenean vel elit scelerisque mauris.</p>\n<!-- /wp:paragraph -->','Cookie Policy','','inherit','closed','closed','','22-revision-v1','','','2020-04-21 18:38:55','2020-04-21 18:38:55','',22,'http://fictional-university/22-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2020-04-21 21:30:18','2020-04-21 21:30:18',' ','','','publish','closed','closed','','25','','','2020-04-21 21:51:45','2020-04-21 21:51:45','',0,'http://fictional-university/?p=25',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2020-04-21 21:30:18','2020-04-21 21:30:18',' ','','','publish','closed','closed','','27','','','2020-04-21 21:51:45','2020-04-21 21:51:45','',0,'http://fictional-university/?p=27',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2020-04-21 21:42:14','2020-04-21 21:42:14',' ','','','publish','closed','closed','','32','','','2020-04-21 21:54:29','2020-04-21 21:54:29','',0,'http://fictional-university/?p=32',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-04-21 21:42:14','2020-04-21 21:42:14',' ','','','publish','closed','closed','','33','','','2020-04-21 21:54:29','2020-04-21 21:54:29','',3,'http://fictional-university/?p=33',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-04-21 21:43:19','2020-04-21 21:43:19','','Google','','publish','closed','closed','','google','','','2020-04-21 21:54:59','2020-04-21 21:54:59','',0,'http://fictional-university/?p=34',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2020-04-21 21:43:19','2020-04-21 21:43:19',' ','','','publish','closed','closed','','35','','','2020-04-21 21:54:59','2020-04-21 21:54:59','',0,'http://fictional-university/?p=35',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2020-04-23 16:17:46','2020-04-23 16:17:46','','Home','','trash','closed','closed','','home__trashed','','','2020-04-23 16:19:14','2020-04-23 16:19:14','',0,'http://fictional-university/?page_id=36',0,'page','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2020-04-23 16:17:46','2020-04-23 16:17:46','','Home','','inherit','closed','closed','','36-revision-v1','','','2020-04-23 16:17:46','2020-04-23 16:17:46','',36,'http://fictional-university/36-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2020-04-23 16:18:01','2020-04-23 16:18:01','','Home','','inherit','closed','closed','','36-autosave-v1','','','2020-04-23 16:18:01','2020-04-23 16:18:01','',36,'http://fictional-university/36-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2020-04-23 16:18:27','2020-04-23 16:18:27','','Home','','trash','closed','closed','','home-2__trashed','','','2020-04-23 16:19:17','2020-04-23 16:19:17','',0,'http://fictional-university/?page_id=39',0,'page','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2020-04-23 16:18:27','2020-04-23 16:18:27','','Home','','inherit','closed','closed','','39-revision-v1','','','2020-04-23 16:18:27','2020-04-23 16:18:27','',39,'http://fictional-university/39-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2020-04-23 16:19:27','2020-04-23 16:19:27','','Home','','publish','closed','closed','','home','','','2020-04-23 16:19:27','2020-04-23 16:19:27','',0,'http://fictional-university/?page_id=41',0,'page','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2020-04-23 16:19:27','2020-04-23 16:19:27','','Home','','inherit','closed','closed','','41-revision-v1','','','2020-04-23 16:19:27','2020-04-23 16:19:27','',41,'http://fictional-university/41-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2020-04-23 16:21:21','2020-04-23 16:21:21','','Blog','','publish','closed','closed','','blog','','','2020-04-23 17:11:11','2020-04-23 17:11:11','',0,'http://fictional-university/?page_id=43',0,'page','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2020-04-23 16:21:21','2020-04-23 16:21:21','','Next Page','','inherit','closed','closed','','43-revision-v1','','','2020-04-23 16:21:21','2020-04-23 16:21:21','',43,'http://fictional-university/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2020-04-23 16:23:12','2020-04-23 16:23:12','','Blog','','inherit','closed','closed','','43-revision-v1','','','2020-04-23 16:23:12','2020-04-23 16:23:12','',43,'http://fictional-university/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2020-04-23 16:24:38','2020-04-23 16:24:38','<!-- wp:paragraph -->\n<p>test</p>\n<!-- /wp:paragraph -->','Blog','','inherit','closed','closed','','43-revision-v1','','','2020-04-23 16:24:38','2020-04-23 16:24:38','',43,'http://fictional-university/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2020-04-23 16:39:58','2020-04-23 16:39:58','','Blog','','inherit','closed','closed','','43-revision-v1','','','2020-04-23 16:39:58','2020-04-23 16:39:58','',43,'http://fictional-university/43-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2020-04-23 16:54:00','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-04-23 16:54:00','0000-00-00 00:00:00','',0,'http://fictional-university/?page_id=48',0,'page','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2020-04-23 16:54:38','2020-04-23 16:54:38','<!-- wp:paragraph -->\n<p>What is going on?</p>\n<!-- /wp:paragraph -->','Thursday News','','publish','open','open','','thursday-news','','','2020-04-23 16:54:48','2020-04-23 16:54:48','',0,'http://fictional-university/?p=49',0,'post','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2020-04-23 16:54:38','2020-04-23 16:54:38','<!-- wp:paragraph -->\n<p>What is going on?</p>\n<!-- /wp:paragraph -->','Thursday News','','inherit','closed','closed','','49-revision-v1','','','2020-04-23 16:54:38','2020-04-23 16:54:38','',49,'http://fictional-university/49-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2020-04-23 17:04:24','2020-04-23 17:04:24','','Testing page','','trash','closed','closed','','testing-page__trashed','','','2020-04-23 17:04:39','2020-04-23 17:04:39','',0,'http://fictional-university/?page_id=51',0,'page','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2020-04-23 17:04:24','2020-04-23 17:04:24','','Testing page','','inherit','closed','closed','','51-revision-v1','','','2020-04-23 17:04:24','2020-04-23 17:04:24','',51,'http://fictional-university/51-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2020-04-23 17:26:53','2020-04-23 17:26:53','<!-- wp:paragraph -->\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Imperdiet sed euismod nisi porta lorem. Sem fringilla ut morbi tincidunt augue. Varius duis at consectetur lorem. Lectus sit amet est placerat in egestas. Justo eget magna fermentum iaculis eu non. Orci porta non pulvinar neque laoreet suspendisse interdum. Aliquet risus feugiat in ante metus. Pellentesque nec nam aliquam sem. Rhoncus aenean vel elit scelerisque mauris.</p>\r\n<!-- /wp:paragraph -->','We Won an Award!','Our school has won another award this year.','publish','open','open','','we-won-an-award','','','2020-04-23 23:11:40','2020-04-23 23:11:40','',0,'http://fictional-university/?p=53',0,'post','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2020-04-23 17:26:53','2020-04-23 17:26:53','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Imperdiet sed euismod nisi porta lorem. Sem fringilla ut morbi tincidunt augue. Varius duis at consectetur lorem. Lectus sit amet est placerat in egestas. Justo eget magna fermentum iaculis eu non. Orci porta non pulvinar neque laoreet suspendisse interdum. Aliquet risus feugiat in ante metus. Pellentesque nec nam aliquam sem. Rhoncus aenean vel elit scelerisque mauris.</p>\n<!-- /wp:paragraph -->','We Won an Award!','','inherit','closed','closed','','53-revision-v1','','','2020-04-23 17:26:53','2020-04-23 17:26:53','',53,'http://fictional-university/53-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2020-04-23 17:31:41','2020-04-23 17:31:41','','Testing new page','','publish','closed','closed','','testing-new-page','','','2020-04-23 17:31:41','2020-04-23 17:31:41','',0,'http://fictional-university/?page_id=56',0,'page','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2020-04-23 17:31:41','2020-04-23 17:31:41','','Testing new page','','inherit','closed','closed','','56-revision-v1','','','2020-04-23 17:31:41','2020-04-23 17:31:41','',56,'http://fictional-university/56-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2020-04-23 17:51:33','2020-04-23 17:51:33','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Imperdiet sed euismod nisi porta lorem. Sem fringilla ut morbi tincidunt augue. Varius duis at consectetur lorem. Lectus sit amet est placerat in egestas. Justo eget magna fermentum iaculis eu non. Orci porta non pulvinar neque laoreet suspendisse interdum. Aliquet risus feugiat in ante metus. Pellentesque nec nam aliquam sem. Rhoncus aenean vel elit scelerisque mauris. </p>\n<!-- /wp:paragraph -->','We Won an Award!','','inherit','closed','closed','','53-revision-v1','','','2020-04-23 17:51:33','2020-04-23 17:51:33','',53,'http://fictional-university/53-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2020-04-23 17:56:49','2020-04-23 17:56:49','<!-- wp:paragraph -->\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Imperdiet sed euismod nisi porta lorem. Sem fringilla ut morbi tincidunt augue. Varius duis at consectetur lorem. Lectus sit amet est placerat in egestas. Justo eget magna fermentum iaculis eu non. Orci porta non pulvinar neque laoreet suspendisse interdum. Aliquet risus feugiat in ante metus. Pellentesque nec nam aliquam sem. Rhoncus aenean vel elit scelerisque mauris.</p>\r\n<!-- /wp:paragraph -->','We Won an Award!','','inherit','closed','closed','','53-revision-v1','','','2020-04-23 17:56:49','2020-04-23 17:56:49','',53,'http://fictional-university/53-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2020-04-23 21:31:27','2020-04-23 21:31:27','<div id=\"output\" class=\"page-generator__output js-generator-output\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lectus nulla at volutpat diam. Bibendum at varius vel pharetra vel turpis nunc eget. Nunc non blandit massa enim nec dui nunc mattis enim. Urna condimentum mattis\r\n\r\n</div>\r\nMonth, Date  Year\r\n\r\nTime AM/PM','Math Meetup','','publish','closed','closed','','math-meetup','','','2020-04-24 19:38:22','2020-04-24 19:38:22','',0,'http://fictional-university/?post_type=event&#038;p=61',0,'event','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2020-04-23 21:31:56','2020-04-23 21:31:56','<div id=\"output\" class=\"page-generator__output js-generator-output\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lectus nulla at volutpat diam. Bibendum at varius vel pharetra vel turpis nunc eget. Nunc non blandit massa enim nec dui nunc mattis enim. Urna condimentum mattis .\r\n\r\n</div>','The Science of Cats','','publish','closed','closed','','the-science-of-cats','','','2020-04-24 18:55:43','2020-04-24 18:55:43','',0,'http://fictional-university/?post_type=event&#038;p=62',0,'event','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2020-04-23 21:32:19','2020-04-23 21:32:19','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lectus nulla at volutpat diam. Bibendum at varius vel pharetra vel turpis nunc eget. Nunc non blandit massa enim nec dui nunc mattis enim. Urna condimentum mattis .\r\n\r\nMonth, Day  Year\r\n\r\nTime AM/PM','Poetry Day','Poetry Day is going to be Amazing!','publish','closed','closed','','poetry-day','','','2020-04-24 03:56:20','2020-04-24 03:56:20','',0,'http://fictional-university/?post_type=event&#038;p=63',0,'event','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2020-04-23 22:17:24','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-04-23 22:17:24','0000-00-00 00:00:00','',0,'http://fictional-university/?post_type=event&p=64',0,'event','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2020-04-23 22:17:53','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-04-23 22:17:53','0000-00-00 00:00:00','',0,'http://fictional-university/?post_type=event&p=65',0,'event','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2020-04-23 23:11:40','2020-04-23 23:11:40','<!-- wp:paragraph -->\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Imperdiet sed euismod nisi porta lorem. Sem fringilla ut morbi tincidunt augue. Varius duis at consectetur lorem. Lectus sit amet est placerat in egestas. Justo eget magna fermentum iaculis eu non. Orci porta non pulvinar neque laoreet suspendisse interdum. Aliquet risus feugiat in ante metus. Pellentesque nec nam aliquam sem. Rhoncus aenean vel elit scelerisque mauris.</p>\r\n<!-- /wp:paragraph -->','We Won an Award!','Our school has won another award this year.','inherit','closed','closed','','53-revision-v1','','','2020-04-23 23:11:40','2020-04-23 23:11:40','',53,'http://fictional-university/53-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2020-04-23 23:39:15','2020-04-23 23:39:15','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Event Date','event-date','publish','closed','closed','','group_5ea22621bde3b','','','2020-04-24 02:37:56','2020-04-24 02:37:56','',0,'http://fictional-university/?post_type=acf-field-group&#038;p=67',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2020-04-23 23:39:15','2020-04-23 23:39:15','a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:6:\"F j, Y\";s:13:\"return_format\";s:3:\"Ymd\";s:9:\"first_day\";i:1;}','Event Date','event_date','publish','closed','closed','','field_5ea22636fcd1a','','','2020-04-23 23:42:49','2020-04-23 23:42:49','',67,'http://fictional-university/?post_type=acf-field&#038;p=68',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2020-04-24 00:56:51','2020-04-24 00:56:51','Info coming soon...','Winter Study Night','','publish','closed','closed','','winter-study-night','','','2020-04-24 03:59:45','2020-04-24 03:59:45','',0,'http://fictional-university/?post_type=event&#038;p=69',0,'event','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2020-04-24 00:58:58','2020-04-24 00:58:58','','Past Events','','publish','closed','closed','','past-events','','','2020-04-24 00:58:58','2020-04-24 00:58:58','',0,'http://fictional-university/?page_id=70',0,'page','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2020-04-24 00:58:58','2020-04-24 00:58:58','','Past Events','','inherit','closed','closed','','70-revision-v1','','','2020-04-24 00:58:58','2020-04-24 00:58:58','',70,'http://fictional-university/70-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2020-04-24 01:12:43','2020-04-24 01:12:43','<div id=\"output\" class=\"page-generator__output js-generator-output\">\r\n\r\nHappy New Year!\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lectus nulla at volutpat diam. Bibendum at varius vel pharetra vel turpis nunc eget. Nunc non blandit massa enim nec dui nunc mattis enim. Urna condimentum mattis pellentesque id. Interdum posuere lorem ipsum dolor sit. Semper risus in hendrerit gravida rutrum quisque. Facilisi etiam dignissim diam quis. Faucibus interdum posuere lorem ipsum. Scelerisque eu ultrices vitae auctor eu augue ut lectus arcu. Ullamcorper dignissim cras tincidunt lobortis feugiat vivamus. Risus in hendrerit gravida rutrum quisque. Morbi blandit cursus risus at ultrices mi. Aliquam id diam maecenas ultricies mi eget.\r\n\r\n</div>','New Year 2020','','publish','closed','closed','','new-year-2020','','','2020-04-24 19:19:05','2020-04-24 19:19:05','',0,'http://fictional-university/?post_type=event&#038;p=72',0,'event','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2020-04-24 01:36:03','2020-04-24 01:36:03','<div id=\"output\" class=\"page-generator__output js-generator-output\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Elit at imperdiet dui accumsan sit amet nulla. Condimentum id venenatis a condimentum vitae sapien pellentesque habitant. Orci nulla pellentesque dignissim enim. Pulvinar pellentesque habitant morbi tristique senectus. Quis blandit turpis cursus in hac habitasse platea. Id venenatis a condimentum vitae sapien pellentesque habitant morbi. Gravida quis blandit turpis cursus in hac habitasse platea dictumst. Quis enim lobortis scelerisque fermentum dui faucibus in ornare. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Feugiat scelerisque varius morbi enim nunc.\r\n\r\n</div>','Math','','publish','closed','closed','','math','','','2020-04-24 01:36:03','2020-04-24 01:36:03','',0,'http://fictional-university/?post_type=program&#038;p=73',0,'program','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2020-04-24 01:36:19','2020-04-24 01:36:19','<div id=\"output\" class=\"page-generator__output js-generator-output\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Elit at imperdiet dui accumsan sit amet nulla. Condimentum id venenatis a condimentum vitae sapien pellentesque habitant. Orci nulla pellentesque dignissim enim. Pulvinar pellentesque habitant morbi tristique senectus. Quis blandit turpis cursus in hac habitasse platea. Id venenatis a condimentum vitae sapien pellentesque habitant morbi. Gravida quis blandit turpis cursus in hac habitasse platea dictumst. Quis enim lobortis scelerisque fermentum dui faucibus in ornare. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Feugiat scelerisque varius morbi enim nunc.\r\n\r\n</div>','Biology','','publish','closed','closed','','biology','','','2020-04-24 01:36:19','2020-04-24 01:36:19','',0,'http://fictional-university/?post_type=program&#038;p=74',0,'program','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2020-04-24 01:36:31','2020-04-24 01:36:31','<div id=\"output\" class=\"page-generator__output js-generator-output\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Elit at imperdiet dui accumsan sit amet nulla. Condimentum id venenatis a condimentum vitae sapien pellentesque habitant. Orci nulla pellentesque dignissim enim. Pulvinar pellentesque habitant morbi tristique senectus. Quis blandit turpis cursus in hac habitasse platea. Id venenatis a condimentum vitae sapien pellentesque habitant morbi. Gravida quis blandit turpis cursus in hac habitasse platea dictumst. Quis enim lobortis scelerisque fermentum dui faucibus in ornare. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Feugiat scelerisque varius morbi enim nunc.\r\n\r\n</div>','English','','publish','closed','closed','','english','','','2020-04-24 01:36:31','2020-04-24 01:36:31','',0,'http://fictional-university/?post_type=program&#038;p=75',0,'program','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2020-04-24 01:52:43','2020-04-24 01:52:43','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Related Program','related-program','trash','closed','closed','','group_5ea245dfc783d__trashed','','','2020-04-24 02:22:27','2020-04-24 02:22:27','',0,'http://fictional-university/?post_type=acf-field-group&#038;p=76',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2020-04-24 01:52:43','2020-04-24 01:52:43','a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:2:{i:0;s:6:\"search\";i:1;s:9:\"post_type\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}','Related Program(s)','related_programs','trash','closed','closed','','field_5ea245ec14ed1__trashed','','','2020-04-24 02:22:27','2020-04-24 02:22:27','',76,'http://fictional-university/?post_type=acf-field&#038;p=77',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2020-04-24 02:05:21','2020-04-24 02:05:21','<div id=\"output\" class=\"page-generator__output js-generator-output\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Elit at imperdiet dui accumsan sit amet nulla. Condimentum id venenatis a condimentum vitae sapien pellentesque habitant. Orci nulla pellentesque dignissim enim. Pulvinar pellentesque habitant morbi tristique senectus. Quis blandit turpis cursus in hac habitasse platea. Id venenatis a condimentum vitae sapien pellentesque habitant morbi. Gravida quis blandit turpis cursus in hac habitasse platea dictumst. Quis enim lobortis scelerisque fermentum dui faucibus in ornare. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Feugiat scelerisque varius morbi enim nunc.\r\n\r\n</div>','Art','','publish','closed','closed','','art','','','2020-04-24 02:05:21','2020-04-24 02:05:21','',0,'http://fictional-university/?post_type=program&#038;p=78',0,'program','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2020-04-24 02:25:35','2020-04-24 02:25:35','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Related Program','related-program','publish','closed','closed','','group_5ea24d6611bad','','','2020-04-24 20:02:52','2020-04-24 20:02:52','',0,'http://fictional-university/?post_type=acf-field-group&#038;p=79',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2020-04-24 02:25:35','2020-04-24 02:25:35','a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}','Related Program(s)','related_programs','publish','closed','closed','','field_5ea24d81daf22','','','2020-04-24 03:59:29','2020-04-24 03:59:29','',79,'http://fictional-university/?post_type=acf-field&#038;p=80',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2020-04-24 03:40:31','2020-04-24 03:40:31','coming soon','Math Exam','','trash','closed','closed','','math-exam__trashed','','','2020-04-24 03:56:37','2020-04-24 03:56:37','',0,'http://fictional-university/?post_type=exams&#038;p=82',0,'exams','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2020-04-24 03:41:41','2020-04-24 03:41:41','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"exams\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Exam Group','exam-group','trash','closed','closed','','group_5ea25fb5b9c0b__trashed','','','2020-04-24 03:58:25','2020-04-24 03:58:25','',0,'http://fictional-university/?post_type=acf-field-group&#038;p=83',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2020-04-24 03:41:41','2020-04-24 03:41:41','a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:3:{i:0;s:6:\"search\";i:1;s:9:\"post_type\";i:2;s:8:\"taxonomy\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}','Related Exams','related_exams','trash','closed','closed','','field_5ea25fc5efce6__trashed','','','2020-04-24 03:58:25','2020-04-24 03:58:25','',83,'http://fictional-university/?post_type=acf-field&#038;p=84',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2020-04-24 03:56:42','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-04-24 03:56:42','0000-00-00 00:00:00','',0,'http://fictional-university/?post_type=exams&p=86',0,'exams','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2020-04-24 19:58:03','2020-04-24 19:58:03','<div id=\"output\" class=\"page-generator__output js-generator-output\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Elit at imperdiet dui accumsan sit amet nulla. Condimentum id venenatis a condimentum vitae sapien pellentesque habitant. Orci nulla pellentesque dignissim enim. Pulvinar pellentesque habitant morbi tristique senectus. Quis blandit turpis cursus in hac habitasse platea. Id venenatis a condimentum vitae sapien pellentesque habitant morbi. Gravida quis blandit turpis cursus in hac habitasse platea dictumst. Quis enim lobortis scelerisque fermentum dui faucibus in ornare. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Feugiat scelerisque varius morbi enim nunc.\r\n\r\n</div>','Dr. Meowsalot','','publish','closed','closed','','dr-meowsalot','','','2020-04-24 20:52:55','2020-04-24 20:52:55','',0,'http://fictional-university/?post_type=professor&#038;p=87',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2020-04-24 19:58:13','2020-04-24 19:58:13','<div id=\"output\" class=\"page-generator__output js-generator-output\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Elit at imperdiet dui accumsan sit amet nulla. Condimentum id venenatis a condimentum vitae sapien pellentesque habitant. Orci nulla pellentesque dignissim enim. Pulvinar pellentesque habitant morbi tristique senectus. Quis blandit turpis cursus in hac habitasse platea. Id venenatis a condimentum vitae sapien pellentesque habitant morbi. Gravida quis blandit turpis cursus in hac habitasse platea dictumst. Quis enim lobortis scelerisque fermentum dui faucibus in ornare. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Feugiat scelerisque varius morbi enim nunc.\r\n\r\n</div>','Dr. Barksalot','','publish','closed','closed','','dr-barksalot','','','2020-04-24 21:48:26','2020-04-24 21:48:26','',0,'http://fictional-university/?post_type=professor&#038;p=88',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2020-04-24 20:51:33','2020-04-24 20:51:33','','original','','inherit','open','closed','','original','','','2020-04-24 20:51:33','2020-04-24 20:51:33','',88,'http://fictional-university/wp-content/uploads/2020/04/original.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (90,1,'2020-04-24 20:52:24','2020-04-24 20:52:24','','original(1)','','inherit','open','closed','','original1','','','2020-04-24 20:52:24','2020-04-24 20:52:24','',87,'http://fictional-university/wp-content/uploads/2020/04/original1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (91,1,'2020-04-24 21:13:16','2020-04-24 21:13:16','<div id=\"output\" class=\"page-generator__output js-generator-output\">\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Elit at imperdiet dui accumsan sit amet nulla. Condimentum id venenatis a condimentum vitae sapien pellentesque habitant. Orci nulla pellentesque dignissim enim. Pulvinar pellentesque habitant morbi tristique senectus. Quis blandit turpis cursus in hac habitasse platea. Id venenatis a condimentum vitae sapien pellentesque habitant morbi. Gravida quis blandit turpis cursus in hac habitasse platea dictumst. Quis enim lobortis scelerisque fermentum dui faucibus in ornare. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant morbi tristique. Feugiat scelerisque varius morbi enim nunc.\r\n\r\n</div>','Dr. Froggerson','','publish','closed','closed','','dr-froggerson','','','2020-04-24 21:14:56','2020-04-24 21:14:56','',0,'http://fictional-university/?post_type=professor&#038;p=91',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2020-04-24 21:13:05','2020-04-24 21:13:05','','original(2)','','inherit','open','closed','','original2','','','2020-04-24 21:13:05','2020-04-24 21:13:05','',91,'http://fictional-university/wp-content/uploads/2020/04/original2.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (93,1,'2020-04-24 21:42:56','2020-04-24 21:42:56','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Page Banner','page-banner','publish','closed','closed','','group_5ea35d4c6acf6','','','2020-04-24 21:45:20','2020-04-24 21:45:20','',0,'http://fictional-university/?post_type=acf-field-group&#038;p=93',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2020-04-24 21:42:56','2020-04-24 21:42:56','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Page Banner Subtitle','page_banner_subtitle','publish','closed','closed','','field_5ea35d540f386','','','2020-04-24 21:45:15','2020-04-24 21:45:15','',93,'http://fictional-university/?post_type=acf-field&#038;p=94',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2020-04-24 21:45:15','2020-04-24 21:45:15','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Page Banner Background Image','page_banner_background_image','publish','closed','closed','','field_5ea35d8c8498f','','','2020-04-24 21:45:15','2020-04-24 21:45:15','',93,'http://fictional-university/?post_type=acf-field&p=95',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2020-04-24 21:48:16','2020-04-24 21:48:16','','field','','inherit','open','closed','','field','','','2020-04-24 21:48:16','2020-04-24 21:48:16','',88,'http://fictional-university/wp-content/uploads/2020/04/field.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (97,1,'2020-04-24 22:05:33','2020-04-24 22:05:33','','original','','inherit','open','closed','','original-2','','','2020-04-24 22:05:33','2020-04-24 22:05:33','',12,'http://fictional-university/wp-content/uploads/2020/04/original-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (98,1,'2020-04-24 22:05:47','2020-04-24 22:05:47','<!-- wp:paragraph -->\r\n<p>This is the about page content.</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Imperdiet sed euismod nisi porta lorem. Sem fringilla ut morbi tincidunt augue. Varius duis at consectetur lorem. Lectus sit amet est placerat in egestas. Justo eget magna fermentum iaculis eu non. Orci porta non pulvinar neque laoreet suspendisse interdum. Aliquet risus feugiat in ante metus. Pellentesque nec nam aliquam sem. Rhoncus aenean vel elit scelerisque mauris.</p>\r\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','12-revision-v1','','','2020-04-24 22:05:47','2020-04-24 22:05:47','',12,'http://fictional-university/12-revision-v1/',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (5,1,0);
INSERT INTO `wp_term_relationships` VALUES (7,1,0);
INSERT INTO `wp_term_relationships` VALUES (25,2,0);
INSERT INTO `wp_term_relationships` VALUES (27,2,0);
INSERT INTO `wp_term_relationships` VALUES (32,3,0);
INSERT INTO `wp_term_relationships` VALUES (33,3,0);
INSERT INTO `wp_term_relationships` VALUES (34,4,0);
INSERT INTO `wp_term_relationships` VALUES (35,4,0);
INSERT INTO `wp_term_relationships` VALUES (49,1,0);
INSERT INTO `wp_term_relationships` VALUES (53,5,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,2);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','We love to blog about our awards.',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'My Main Header Menu','my-main-header-menu',0);
INSERT INTO `wp_terms` VALUES (3,'My Magical Menu','my-magical-menu',0);
INSERT INTO `wp_terms` VALUES (4,'Super Amazing Menu','super-amazing-menu',0);
INSERT INTO `wp_terms` VALUES (5,'Awards','awards',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','Cara');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','Testing hello world 123.');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:10:{s:64:\"ea2e941b02a2202ce5c3b916b3c6842b9545b4813e1983f4d17594d0880a62b8\";a:4:{s:10:\"expiration\";i:1587830263;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:75.0) Gecko/20100101 Firefox/75.0\";s:5:\"login\";i:1587657463;}s:64:\"5836bc15d4025017a59ffbc6a76d00a061ad704bb1cd66393ff2b1cd0c4a9747\";a:4:{s:10:\"expiration\";i:1587834161;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587661361;}s:64:\"2cad281d0f91d7670517bc4f6614b2e7448c8a85f9f79141b5234a2fb60a5471\";a:4:{s:10:\"expiration\";i:1587834521;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.113 Safari/537.36\";s:5:\"login\";i:1587661721;}s:64:\"9cef1d41e792bf622539aa41503dbe554aaa4430fa83065b99dc1c2568eef2fa\";a:4:{s:10:\"expiration\";i:1587834622;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:75.0) Gecko/20100101 Firefox/75.0\";s:5:\"login\";i:1587661822;}s:64:\"f59ecc54ffe204a2b98ac1401cd1496671099c81bb4261ad53097d10712fb9e0\";a:4:{s:10:\"expiration\";i:1587836174;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:75.0) Gecko/20100101 Firefox/75.0\";s:5:\"login\";i:1587663374;}s:64:\"131a805906ccf1223acc4ebba204d0f9606ba81013be13316d704f69e883d050\";a:4:{s:10:\"expiration\";i:1587836661;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:75.0) Gecko/20100101 Firefox/75.0\";s:5:\"login\";i:1587663861;}s:64:\"057fd6aec76c5a7418e5036b6697f1678f5aedd5d627f23ccb4b7d9cf1d8e64e\";a:4:{s:10:\"expiration\";i:1587837281;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:75.0) Gecko/20100101 Firefox/75.0\";s:5:\"login\";i:1587664481;}s:64:\"7c93595d8061e673fda68268d952447591faac7932697a33226db1370b9081f1\";a:4:{s:10:\"expiration\";i:1587848155;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:82:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:75.0) Gecko/20100101 Firefox/75.0\";s:5:\"login\";i:1587675355;}s:64:\"cf717c393c84a728f498e3c9d959dadc776456f88443d8a59062ed13da136339\";a:4:{s:10:\"expiration\";i:1587870033;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1587697233;}s:64:\"d17e0d841f90fda9047b34d5073ae9222ee57c2954629123b5e448fbb572a59d\";a:4:{s:10:\"expiration\";i:1587870036;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.122 Safari/537.36\";s:5:\"login\";i:1587697236;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','4');
INSERT INTO `wp_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'nav_menu_recently_edited','4');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_user-settings','unfold=1&mfold=o&libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings-time','1587761524');
INSERT INTO `wp_usermeta` VALUES (23,1,'closedpostboxes_post','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (24,1,'metaboxhidden_post','a:7:{i:0;s:12:\"revisionsdiv\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}');
INSERT INTO `wp_usermeta` VALUES (25,1,'closedpostboxes_event','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (26,1,'metaboxhidden_event','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (27,1,'acf_user_settings','a:1:{s:15:\"show_field_keys\";s:1:\"0\";}');
INSERT INTO `wp_usermeta` VALUES (28,1,'closedpostboxes_acf-field-group','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (29,1,'metaboxhidden_acf-field-group','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (30,1,'closedpostboxes_professor','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (31,1,'metaboxhidden_professor','a:1:{i:0;s:7:\"slugdiv\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'Cara','$P$BmwFttD9GYm8.5ZGczCh/BcI8g2E8D0','cara','cara@treadstonedesign.com','http://fictional-university','2020-04-20 17:56:02','',0,'Cara');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-25 15:56:36
