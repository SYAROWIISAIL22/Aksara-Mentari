/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.6.22-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: book_db
-- ------------------------------------------------------
-- Server version	10.6.22-MariaDB-ubu2204

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) NOT NULL,
  `detail` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `loggable_id` int(11) DEFAULT NULL,
  `loggable_type` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activities_user_id_index` (`user_id`),
  KEY `activities_entity_id_index` (`loggable_id`),
  KEY `activities_key_index` (`type`),
  KEY `activities_created_at_index` (`created_at`),
  KEY `activities_ip_index` (`ip`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (1,'auth_login','standard; (1) Admin',1,'127.0.0.1',NULL,NULL,'2025-07-17 19:53:33','2025-07-17 19:53:33'),(2,'auth_login','standard; (1) Admin',1,'127.0.0.1',NULL,NULL,'2025-07-17 20:01:59','2025-07-17 20:01:59'),(3,'settings_update','registration',1,'127.0.0.1',NULL,NULL,'2025-07-17 20:02:34','2025-07-17 20:02:34'),(4,'user_create','(4) mael',1,'127.0.0.1',NULL,NULL,'2025-07-17 20:03:46','2025-07-17 20:03:46'),(5,'auth_login','standard; (4) mael',4,'127.0.0.1',NULL,NULL,'2025-07-17 20:03:58','2025-07-17 20:03:58'),(6,'auth_login','standard; (1) Admin',1,'127.0.0.1',NULL,NULL,'2025-07-17 20:05:16','2025-07-17 20:05:16'),(7,'auth_login','standard; (1) Admin',1,'127.0.0.1',NULL,NULL,'2025-07-17 21:00:53','2025-07-17 21:00:53'),(8,'auth_login','standard; (4) mael',4,'127.0.0.1',NULL,NULL,'2025-07-17 21:01:34','2025-07-17 21:01:34'),(9,'auth_login','standard; (1) Admin',1,'127.0.0.1',NULL,NULL,'2025-07-17 23:59:43','2025-07-17 23:59:43'),(10,'book_create','(1) Model klasifikasi penyakit jantung menggunakan regresi logistik',1,'127.0.0.1',1,'book','2025-07-18 00:00:53','2025-07-18 00:00:53'),(11,'auth_login','standard; (4) mael',4,'127.0.0.1',NULL,NULL,'2025-07-18 00:12:04','2025-07-18 00:12:04'),(12,'auth_login','standard; (1) Admin',1,'127.0.0.1',NULL,NULL,'2025-07-18 16:15:41','2025-07-18 16:15:41'),(13,'settings_update','customization',1,'127.0.0.1',NULL,NULL,'2025-07-18 16:17:30','2025-07-18 16:17:30'),(14,'settings_update','customization',1,'127.0.0.1',NULL,NULL,'2025-07-18 16:17:47','2025-07-18 16:17:47'),(15,'settings_update','customization',1,'127.0.0.1',NULL,NULL,'2025-07-18 16:18:52','2025-07-18 16:18:52'),(16,'settings_update','customization',1,'127.0.0.1',NULL,NULL,'2025-07-18 16:19:13','2025-07-18 16:19:13'),(17,'settings_update','customization',1,'127.0.0.1',NULL,NULL,'2025-07-18 16:20:13','2025-07-18 16:20:13'),(18,'book_delete','(1) Model klasifikasi penyakit jantung menggunakan regresi logistik',1,'127.0.0.1',1,'book','2025-07-18 16:43:34','2025-07-18 16:43:34'),(19,'book_create','(2) Panti asuhan Tebar kasih-yang bahkan tidak memberi kasih, dan tanpa asuhan.',1,'127.0.0.1',2,'book','2025-07-18 16:46:21','2025-07-18 16:46:21'),(20,'book_update','(2) Panti asuhan Tebar kasih-yang bahkan tidak memberi kasih, dan tanpa asuhan.',1,'127.0.0.1',2,'book','2025-07-18 16:46:35','2025-07-18 16:46:35'),(21,'page_create','(2) New Page',1,'127.0.0.1',2,'page','2025-07-18 16:57:32','2025-07-18 16:57:32'),(22,'book_update','(2) Panti asuhan Tebar kasih-yang bahkan tidak memberi kasih, dan tanpa asuhan.',1,'127.0.0.1',2,'book','2025-07-18 16:57:44','2025-07-18 16:57:44'),(23,'book_update','(2) Panti asuhan Tebar kasih-yang bahkan tidak memberi kasih, dan tanpa asuhan.',1,'127.0.0.1',2,'book','2025-07-18 16:58:17','2025-07-18 16:58:17'),(24,'book_delete','(2) Panti asuhan Tebar kasih-yang bahkan tidak memberi kasih, dan tanpa asuhan.',1,'127.0.0.1',2,'book','2025-07-18 16:58:26','2025-07-18 16:58:26'),(25,'book_create','(3) Panti asuhan Tebar kasih-yang bahkan tidak memberi kasih, dan tanpa asuhan.',1,'127.0.0.1',3,'book','2025-07-18 17:00:48','2025-07-18 17:00:48'),(26,'page_create','(3) 1',1,'127.0.0.1',3,'page','2025-07-18 17:04:31','2025-07-18 17:04:31'),(27,'page_update','(3) Panti asuhan Tebar kasih-yang bahkan tidak memberi kasih, dan tanpa asuhan',1,'127.0.0.1',3,'page','2025-07-18 17:05:55','2025-07-18 17:05:55'),(28,'page_update','(3) Panti asuhan Tebar kasih-yang bahkan tidak memberi kasih, dan tanpa asuhan',1,'127.0.0.1',3,'page','2025-07-18 17:08:45','2025-07-18 17:08:45'),(29,'auth_login','standard; (4) mael',4,'127.0.0.1',NULL,NULL,'2025-07-18 17:09:31','2025-07-18 17:09:31'),(30,'auth_login','standard; (1) Admin',1,'127.0.0.1',NULL,NULL,'2025-07-18 17:10:21','2025-07-18 17:10:21'),(31,'page_update','(3) Panti asuhan Tebar kasih-yang bahkan tidak memberi kasih, dan tanpa asuhan',1,'127.0.0.1',3,'page','2025-07-18 17:11:03','2025-07-18 17:11:03'),(32,'auth_login','standard; (4) mael',4,'127.0.0.1',NULL,NULL,'2025-07-18 17:13:34','2025-07-18 17:13:34'),(33,'auth_login','standard; (1) Admin',1,'127.0.0.1',NULL,NULL,'2025-07-18 17:14:07','2025-07-18 17:14:07'),(34,'auth_login','standard; (4) mael',4,'127.0.0.1',NULL,NULL,'2025-07-18 17:15:40','2025-07-18 17:15:40');
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_tokens`
--

DROP TABLE IF EXISTS `api_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `token_id` varchar(191) NOT NULL,
  `secret` varchar(191) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `expires_at` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_tokens_token_id_unique` (`token_id`),
  KEY `api_tokens_user_id_index` (`user_id`),
  KEY `api_tokens_expires_at_index` (`expires_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_tokens`
--

LOCK TABLES `api_tokens` WRITE;
/*!40000 ALTER TABLE `api_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `attachments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `path` text NOT NULL,
  `extension` varchar(20) NOT NULL,
  `uploaded_to` int(11) NOT NULL,
  `external` tinyint(1) NOT NULL,
  `order` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attachments_uploaded_to_index` (`uploaded_to`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
INSERT INTO `attachments` VALUES (1,'c1fcc05c-35cf-4d4f-9f29-8479100b1d8d.pdf','uploads/files/2025-07-Jul/UKXRiadobDBAdiCP-pdf','pdf',2,0,1,1,1,'2025-07-18 16:57:19','2025-07-18 16:57:19'),(2,'c1fcc05c-35cf-4d4f-9f29-8479100b1d8d.pdf','uploads/files/2025-07-Jul/NckJJEC62THfpEsv-pdf','pdf',3,0,1,1,1,'2025-07-18 17:08:43','2025-07-18 17:08:43');
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `image_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owned_by` int(10) unsigned NOT NULL,
  `default_template_id` int(11) DEFAULT NULL,
  `description_html` text NOT NULL,
  `sort_rule_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `books_slug_index` (`slug`),
  KEY `books_created_by_index` (`created_by`),
  KEY `books_updated_by_index` (`updated_by`),
  KEY `books_owned_by_index` (`owned_by`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'Model klasifikasi penyakit jantung menggunakan regresi logistik','model-klasifikasi-penyakit-jantung-menggunakan-regresi-logistik','','2025-07-18 00:00:53','2025-07-18 16:43:34',1,1,NULL,'2025-07-18 16:43:34',1,NULL,'',NULL),(2,'Panti asuhan Tebar kasih-yang bahkan tidak memberi kasih, dan tanpa asuhan.','panti-asuhan-tebar-kasih-yang-bahkan-tidak-memberi-kasih-dan-tanpa-asuhan','','2025-07-18 16:46:21','2025-07-18 16:58:26',1,1,9,'2025-07-18 16:58:26',1,NULL,'<p><br></p>',NULL),(3,'Panti asuhan Tebar kasih-yang bahkan tidak memberi kasih, dan tanpa asuhan.','panti-asuhan-tebar-kasih-yang-bahkan-tidak-memberi-kasih-dan-tanpa-asuhan','','2025-07-18 17:00:48','2025-07-18 17:00:48',1,1,10,NULL,1,NULL,'',NULL);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshelves`
--

DROP TABLE IF EXISTS `bookshelves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshelves` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(180) NOT NULL,
  `slug` varchar(180) NOT NULL,
  `description` text NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owned_by` int(10) unsigned NOT NULL,
  `description_html` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bookshelves_slug_index` (`slug`),
  KEY `bookshelves_created_by_index` (`created_by`),
  KEY `bookshelves_updated_by_index` (`updated_by`),
  KEY `bookshelves_owned_by_index` (`owned_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshelves`
--

LOCK TABLES `bookshelves` WRITE;
/*!40000 ALTER TABLE `bookshelves` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookshelves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookshelves_books`
--

DROP TABLE IF EXISTS `bookshelves_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookshelves_books` (
  `bookshelf_id` int(10) unsigned NOT NULL,
  `book_id` int(10) unsigned NOT NULL,
  `order` int(10) unsigned NOT NULL,
  PRIMARY KEY (`bookshelf_id`,`book_id`),
  KEY `bookshelves_books_book_id_foreign` (`book_id`),
  CONSTRAINT `bookshelves_books_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `bookshelves_books_bookshelf_id_foreign` FOREIGN KEY (`bookshelf_id`) REFERENCES `bookshelves` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookshelves_books`
--

LOCK TABLES `bookshelves_books` WRITE;
/*!40000 ALTER TABLE `bookshelves_books` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookshelves_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(191) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  UNIQUE KEY `cache_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapters`
--

DROP TABLE IF EXISTS `chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `chapters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `priority` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owned_by` int(10) unsigned NOT NULL,
  `description_html` text NOT NULL,
  `default_template_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `chapters_slug_index` (`slug`),
  KEY `chapters_book_id_index` (`book_id`),
  KEY `chapters_priority_index` (`priority`),
  KEY `chapters_created_by_index` (`created_by`),
  KEY `chapters_updated_by_index` (`updated_by`),
  KEY `chapters_owned_by_index` (`owned_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapters`
--

LOCK TABLES `chapters` WRITE;
/*!40000 ALTER TABLE `chapters` DISABLE KEYS */;
/*!40000 ALTER TABLE `chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned NOT NULL,
  `entity_type` varchar(191) NOT NULL,
  `text` longtext DEFAULT NULL,
  `html` longtext DEFAULT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `local_id` int(10) unsigned DEFAULT NULL,
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `content_ref` varchar(191) NOT NULL,
  `archived` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_entity_id_entity_type_index` (`entity_id`,`entity_type`),
  KEY `comments_local_id_index` (`local_id`),
  KEY `comments_archived_index` (`archived`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deletions`
--

DROP TABLE IF EXISTS `deletions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `deletions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deleted_by` int(11) NOT NULL,
  `deletable_type` varchar(100) NOT NULL,
  `deletable_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deletions_deleted_by_index` (`deleted_by`),
  KEY `deletions_deletable_type_index` (`deletable_type`),
  KEY `deletions_deletable_id_index` (`deletable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deletions`
--

LOCK TABLES `deletions` WRITE;
/*!40000 ALTER TABLE `deletions` DISABLE KEYS */;
INSERT INTO `deletions` VALUES (1,1,'book',1,'2025-07-18 16:43:34','2025-07-18 16:43:34'),(2,1,'book',2,'2025-07-18 16:58:26','2025-07-18 16:58:26');
/*!40000 ALTER TABLE `deletions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_confirmations`
--

DROP TABLE IF EXISTS `email_confirmations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_confirmations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email_confirmations_user_id_index` (`user_id`),
  KEY `email_confirmations_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_confirmations`
--

LOCK TABLES `email_confirmations` WRITE;
/*!40000 ALTER TABLE `email_confirmations` DISABLE KEYS */;
/*!40000 ALTER TABLE `email_confirmations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entity_permissions`
--

DROP TABLE IF EXISTS `entity_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `entity_permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(10) unsigned NOT NULL,
  `entity_type` varchar(25) NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `view` tinyint(1) NOT NULL DEFAULT 0,
  `create` tinyint(1) NOT NULL DEFAULT 0,
  `update` tinyint(1) NOT NULL DEFAULT 0,
  `delete` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `new_entity_permissions_entity_id_entity_type_index` (`entity_id`,`entity_type`),
  KEY `new_entity_permissions_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entity_permissions`
--

LOCK TABLES `entity_permissions` WRITE;
/*!40000 ALTER TABLE `entity_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `entity_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favourites`
--

DROP TABLE IF EXISTS `favourites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `favourites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `favouritable_id` int(11) NOT NULL,
  `favouritable_type` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `favouritable_index` (`favouritable_id`,`favouritable_type`),
  KEY `favourites_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favourites`
--

LOCK TABLES `favourites` WRITE;
/*!40000 ALTER TABLE `favourites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favourites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `url` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `path` varchar(400) NOT NULL,
  `type` varchar(191) NOT NULL,
  `uploaded_to` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `images_type_index` (`type`),
  KEY `images_uploaded_to_index` (`uploaded_to`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (2,'rP9gDMphzG-avatar.png','http://127.0.0.1:8000/uploads/images/user/2025-07/rp9gdmphzg-avatar.png','2025-07-17 20:03:46','2025-07-17 20:03:46',4,4,'/uploads/images/user/2025-07/rp9gdmphzg-avatar.png','user',4),(3,'WhatsApp Image 2025-07-18 at 08.13.33.jpeg','http://127.0.0.1:8000/uploads/images/system/2025-07/whatsapp-image-2025-07-18-at-08-13-33.jpeg','2025-07-18 16:17:30','2025-07-18 16:17:30',1,1,'/uploads/images/system/2025-07/whatsapp-image-2025-07-18-at-08-13-33.jpeg','system',0),(4,'WhatsApp Image 2025-07-18 at 08.13.33.jpeg','http://127.0.0.1:8000/uploads/images/system/2025-07/4ipwhatsapp-image-2025-07-18-at-08-13-33.jpeg','2025-07-18 16:17:30','2025-07-18 16:17:30',1,1,'/uploads/images/system/2025-07/4ipwhatsapp-image-2025-07-18-at-08-13-33.jpeg','system',0),(5,'WhatsApp Image 2025-07-18 at 08.13.33.jpeg','http://127.0.0.1:8000/uploads/images/system/2025-07/F0bwhatsapp-image-2025-07-18-at-08-13-33.jpeg','2025-07-18 16:17:30','2025-07-18 16:17:30',1,1,'/uploads/images/system/2025-07/F0bwhatsapp-image-2025-07-18-at-08-13-33.jpeg','system',0),(6,'WhatsApp Image 2025-07-18 at 08.13.33.jpeg','http://127.0.0.1:8000/uploads/images/system/2025-07/31Dwhatsapp-image-2025-07-18-at-08-13-33.jpeg','2025-07-18 16:17:30','2025-07-18 16:17:30',1,1,'/uploads/images/system/2025-07/31Dwhatsapp-image-2025-07-18-at-08-13-33.jpeg','system',0),(7,'WhatsApp Image 2025-07-18 at 08.13.33.jpeg','http://127.0.0.1:8000/uploads/images/system/2025-07/uBcwhatsapp-image-2025-07-18-at-08-13-33.jpeg','2025-07-18 16:17:30','2025-07-18 16:17:30',1,1,'/uploads/images/system/2025-07/uBcwhatsapp-image-2025-07-18-at-08-13-33.jpeg','system',0),(8,'WhatsApp Image 2025-07-18 at 08.13.33.jpeg','http://127.0.0.1:8000/uploads/images/system/2025-07/2Frwhatsapp-image-2025-07-18-at-08-13-33.jpeg','2025-07-18 16:18:52','2025-07-18 16:18:52',1,1,'/uploads/images/system/2025-07/2Frwhatsapp-image-2025-07-18-at-08-13-33.jpeg','system',0),(9,'WhatsApp Image 2025-07-19 at 08.25.38.jpeg','http://127.0.0.1:8000/uploads/images/cover_book/2025-07/whatsapp-image-2025-07-19-at-08-25-38.jpeg','2025-07-18 16:46:21','2025-07-18 16:46:21',1,1,'/uploads/images/cover_book/2025-07/whatsapp-image-2025-07-19-at-08-25-38.jpeg','cover_book',2),(10,'WhatsApp Image 2025-07-19 at 08.25.38.jpeg','http://127.0.0.1:8000/uploads/images/cover_book/2025-07/aIpwhatsapp-image-2025-07-19-at-08-25-38.jpeg','2025-07-18 17:00:48','2025-07-18 17:00:48',1,1,'/uploads/images/cover_book/2025-07/aIpwhatsapp-image-2025-07-19-at-08-25-38.jpeg','cover_book',3);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imports`
--

DROP TABLE IF EXISTS `imports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `imports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `path` varchar(191) NOT NULL,
  `size` int(11) NOT NULL,
  `type` varchar(191) NOT NULL,
  `metadata` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `imports_created_by_index` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imports`
--

LOCK TABLES `imports` WRITE;
/*!40000 ALTER TABLE `imports` DISABLE KEYS */;
/*!40000 ALTER TABLE `imports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joint_permissions`
--

DROP TABLE IF EXISTS `joint_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `joint_permissions` (
  `role_id` int(11) NOT NULL,
  `entity_type` varchar(191) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `status` tinyint(3) unsigned NOT NULL,
  `owner_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`role_id`,`entity_type`,`entity_id`),
  KEY `joint_permissions_entity_id_entity_type_index` (`entity_id`,`entity_type`),
  KEY `joint_permissions_role_id_index` (`role_id`),
  KEY `joint_permissions_status_index` (`status`),
  KEY `joint_permissions_owner_id_index` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joint_permissions`
--

LOCK TABLES `joint_permissions` WRITE;
/*!40000 ALTER TABLE `joint_permissions` DISABLE KEYS */;
INSERT INTO `joint_permissions` VALUES (1,'book',1,3,1),(1,'book',2,3,1),(1,'book',3,3,1),(1,'page',1,3,1),(1,'page',2,3,1),(1,'page',3,3,1),(2,'book',1,1,1),(2,'book',2,1,1),(2,'book',3,1,1),(2,'page',1,1,1),(2,'page',2,1,1),(2,'page',3,1,1),(3,'book',1,1,1),(3,'book',2,1,1),(3,'book',3,1,1),(3,'page',1,1,1),(3,'page',2,1,1),(3,'page',3,1,1),(4,'book',1,1,1),(4,'book',2,1,1),(4,'book',3,1,1),(4,'page',1,1,1),(4,'page',2,1,1),(4,'page',3,1,1);
/*!40000 ALTER TABLE `joint_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mfa_values`
--

DROP TABLE IF EXISTS `mfa_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `mfa_values` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `method` varchar(20) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mfa_values_user_id_index` (`user_id`),
  KEY `mfa_values_method_index` (`method`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mfa_values`
--

LOCK TABLES `mfa_values` WRITE;
/*!40000 ALTER TABLE `mfa_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `mfa_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2015_07_12_114933_create_books_table',1),(4,'2015_07_12_190027_create_pages_table',1),(5,'2015_07_13_172121_create_images_table',1),(6,'2015_07_27_172342_create_chapters_table',1),(7,'2015_08_08_200447_add_users_to_entities',1),(8,'2015_08_09_093534_create_page_revisions_table',1),(9,'2015_08_16_142133_create_activities_table',1),(10,'2015_08_29_105422_add_roles_and_permissions',1),(11,'2015_08_30_125859_create_settings_table',1),(12,'2015_08_31_175240_add_search_indexes',1),(13,'2015_09_04_165821_create_social_accounts_table',1),(14,'2015_09_05_164707_add_email_confirmation_table',1),(15,'2015_11_21_145609_create_views_table',1),(16,'2015_11_26_221857_add_entity_indexes',1),(17,'2015_12_05_145049_fulltext_weighting',1),(18,'2015_12_07_195238_add_image_upload_types',1),(19,'2015_12_09_195748_add_user_avatars',1),(20,'2016_01_11_210908_add_external_auth_to_users',1),(21,'2016_02_25_184030_add_slug_to_revisions',1),(22,'2016_02_27_120329_update_permissions_and_roles',1),(23,'2016_02_28_084200_add_entity_access_controls',1),(24,'2016_03_09_203143_add_page_revision_types',1),(25,'2016_03_13_082138_add_page_drafts',1),(26,'2016_03_25_123157_add_markdown_support',1),(27,'2016_04_09_100730_add_view_permissions_to_roles',1),(28,'2016_04_20_192649_create_joint_permissions_table',1),(29,'2016_05_06_185215_create_tags_table',1),(30,'2016_07_07_181521_add_summary_to_page_revisions',1),(31,'2016_09_29_101449_remove_hidden_roles',1),(32,'2016_10_09_142037_create_attachments_table',1),(33,'2017_01_21_163556_create_cache_table',1),(34,'2017_01_21_163602_create_sessions_table',1),(35,'2017_03_19_091553_create_search_index_table',1),(36,'2017_04_20_185112_add_revision_counts',1),(37,'2017_07_02_152834_update_db_encoding_to_ut8mb4',1),(38,'2017_08_01_130541_create_comments_table',1),(39,'2017_08_29_102650_add_cover_image_display',1),(40,'2018_07_15_173514_add_role_external_auth_id',1),(41,'2018_08_04_115700_create_bookshelves_table',1),(42,'2019_07_07_112515_add_template_support',1),(43,'2019_08_17_140214_add_user_invites_table',1),(44,'2019_12_29_120917_add_api_auth',1),(45,'2020_08_04_111754_drop_joint_permissions_id',1),(46,'2020_08_04_131052_remove_role_name_field',1),(47,'2020_09_19_094251_add_activity_indexes',1),(48,'2020_09_27_210059_add_entity_soft_deletes',1),(49,'2020_09_27_210528_create_deletions_table',1),(50,'2020_11_07_232321_simplify_activities_table',1),(51,'2020_12_30_173528_add_owned_by_field_to_entities',1),(52,'2021_01_30_225441_add_settings_type_column',1),(53,'2021_03_08_215138_add_user_slug',1),(54,'2021_05_15_173110_create_favourites_table',1),(55,'2021_06_30_173111_create_mfa_values_table',1),(56,'2021_07_03_085038_add_mfa_enforced_to_roles_table',1),(57,'2021_08_28_161743_add_export_role_permission',1),(58,'2021_09_26_044614_add_activities_ip_column',1),(59,'2021_11_26_070438_add_index_for_user_ip',1),(60,'2021_12_07_111343_create_webhooks_table',1),(61,'2021_12_13_152024_create_jobs_table',1),(62,'2021_12_13_152120_create_failed_jobs_table',1),(63,'2022_01_03_154041_add_webhooks_timeout_error_columns',1),(64,'2022_04_17_101741_add_editor_change_field_and_permission',1),(65,'2022_04_25_140741_update_polymorphic_types',1),(66,'2022_07_16_170051_drop_joint_permission_type',1),(67,'2022_08_17_092941_create_references_table',1),(68,'2022_09_02_082910_fix_shelf_cover_image_types',1),(69,'2022_10_07_091406_flatten_entity_permissions_table',1),(70,'2022_10_08_104202_drop_entity_restricted_field',1),(71,'2023_01_24_104625_refactor_joint_permissions_storage',1),(72,'2023_01_28_141230_copy_color_settings_for_dark_mode',1),(73,'2023_02_20_093655_increase_attachments_path_length',1),(74,'2023_02_23_200227_add_updated_at_index_to_pages',1),(75,'2023_06_10_071823_remove_guest_user_secondary_roles',1),(76,'2023_06_25_181952_remove_bookshelf_create_entity_permissions',1),(77,'2023_07_25_124945_add_receive_notifications_role_permissions',1),(78,'2023_07_31_104430_create_watches_table',1),(79,'2023_08_21_174248_increase_cache_size',1),(80,'2023_12_02_104541_add_default_template_to_books',1),(81,'2023_12_17_140913_add_description_html_to_entities',1),(82,'2024_01_01_104542_add_default_template_to_chapters',1),(83,'2024_02_04_141358_add_views_updated_index',1),(84,'2024_05_04_154409_rename_activity_relation_columns',1),(85,'2024_09_29_140340_ensure_editor_value_set',1),(86,'2024_10_29_114420_add_import_role_permission',1),(87,'2024_11_02_160700_create_imports_table',1),(88,'2024_11_27_171039_add_instance_id_setting',1),(89,'2025_01_29_180933_create_sort_rules_table',1),(90,'2025_02_05_150842_add_sort_rule_id_to_books',1),(91,'2025_04_18_215145_add_content_refs_and_archived_to_comments',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_revisions`
--

DROP TABLE IF EXISTS `page_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `page_revisions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `html` longtext NOT NULL,
  `text` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `book_slug` varchar(191) NOT NULL,
  `type` varchar(191) NOT NULL DEFAULT 'version',
  `markdown` longtext NOT NULL DEFAULT '',
  `summary` varchar(191) DEFAULT NULL,
  `revision_number` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_revisions_page_id_index` (`page_id`),
  KEY `page_revisions_slug_index` (`slug`),
  KEY `page_revisions_book_slug_index` (`book_slug`),
  KEY `page_revisions_type_index` (`type`),
  KEY `page_revisions_revision_number_index` (`revision_number`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_revisions`
--

LOCK TABLES `page_revisions` WRITE;
/*!40000 ALTER TABLE `page_revisions` DISABLE KEYS */;
INSERT INTO `page_revisions` VALUES (1,2,'New Page','','',1,'2025-07-18 16:57:32','2025-07-18 16:57:32','new-page','panti-asuhan-tebar-kasih-yang-bahkan-tidak-memberi-kasih-dan-tanpa-asuhan','version','','Initial publish',1),(2,3,'1','<p class=\"align-left\" id=\"bkmrk-aksara-mentari.\">Aksara Mentari.</p>\r\n<p class=\"align-left\" id=\"bkmrk-tebar-kasihyuni-alif\"><br>TEBAR KASIH<br>Yuni Alifia<br>Jln. Tabah Guyar, kampung kawah api. 15 Juni 2009</p>\r\n<p class=\"align-left\" id=\"bkmrk-%E2%80%9Cbaring-dan-buka-baj\"><br>“Baring dan buka bajumu” Re--anak perempuan yang menjalani hidup hampir genap 8<br>tahun itu menutup mata dengan-masih berusaha melonggarkan kain yang membaluti tubuh<br>mungilnya. Matanya tak lagi menyuarkan bercak air, hampir setiap pukul 9.00 malam, di hari<br>ahad, akan seperti ini. Bapak—orang yang memiliki peran utama dalam ruang kasih yang<br>didirikan, selalu mencuri masa agar bisa menyantap Re. Disaksikan bingkai dengan gambar suci<br>tuhan-Bapa didalamnya. Waktu bergulir begitu lambat, seakan mendukung bejatnya binatang<br>yang sudah berhasil melucuti hak otoritas dari tubuh Re.<br>“Kasi desah dong lacur, dasar bocah sialan”. Mulut bau tembakau bercampur dengan<br>jigong dan gigi berlapis tidak pernah tersisir sikat gigi itu menyuarkan sesalnya pada Re. Bahkan<br>sejak kali pertama meraba hingga pada tahap berani merampas kesucian dari tubuhnya, Re tidak<br>pernah membuka mulut bahkan bersuara nakal seperti yang Bapak minta. Hanya tangisan pilu<br>dihiasi memar membiru pada area privasinya.<br>“hmm, legit, bapak suka sekali tubuh kamu ini, minggu depan sudah harus sampai duluan<br>ke sini ya, jangan buat bapak nunggu”<br>Setelah bercakap seperti itu, bapak-biadab itu pergi meninggalkan Re yang terbaring lemah,<br>dengan lelehan sperma yang berlomba keluar dari area kewanitaannya. Sakit-perih, bahkan Re<br>berfikir area itu hancur.<br>“Reina! Re! Reina!”<br>Disisi lain gedung terdengar jeritan perempuan dewasa memanggilnya, Re bangkit terduduk<br>dengan berusaha memunguti gaun lusuh bergambar Bunga aster khas anak-anak seusianya. Re<br>memberikan usapan lembut pada rambut hitam legam yang sudah lama tidak dia beri sampo.<br>Bahkan Re tidak ingat kapan terakhir kali dia menyentuh air untuk membersihkan tubuhnya.<br>“Re! Re! Reina!”<br>Daya, satu-satunya penghuni perempuan dewasa di panti itu, yang ditugaskan dalam menjaga<br>dan mengawasi para penghuni lainnya— terutama dalam urusan perut dan kebersihan.</p>','Aksara Mentari.\r\nTEBAR KASIHYuni AlifiaJln. Tabah Guyar, kampung kawah api. 15 Juni 2009\r\n“Baring dan buka bajumu” Re--anak perempuan yang menjalani hidup hampir genap 8tahun itu menutup mata dengan-masih berusaha melonggarkan kain yang membaluti tubuhmungilnya. Matanya tak lagi menyuarkan bercak air, hampir setiap pukul 9.00 malam, di hariahad, akan seperti ini. Bapak—orang yang memiliki peran utama dalam ruang kasih yangdidirikan, selalu mencuri masa agar bisa menyantap Re. Disaksikan bingkai dengan gambar sucituhan-Bapa didalamnya. Waktu bergulir begitu lambat, seakan mendukung bejatnya binatangyang sudah berhasil melucuti hak otoritas dari tubuh Re.“Kasi desah dong lacur, dasar bocah sialan”. Mulut bau tembakau bercampur denganjigong dan gigi berlapis tidak pernah tersisir sikat gigi itu menyuarkan sesalnya pada Re. Bahkansejak kali pertama meraba hingga pada tahap berani merampas kesucian dari tubuhnya, Re tidakpernah membuka mulut bahkan bersuara nakal seperti yang Bapak minta. Hanya tangisan piludihiasi memar membiru pada area privasinya.“hmm, legit, bapak suka sekali tubuh kamu ini, minggu depan sudah harus sampai duluanke sini ya, jangan buat bapak nunggu”Setelah bercakap seperti itu, bapak-biadab itu pergi meninggalkan Re yang terbaring lemah,dengan lelehan sperma yang berlomba keluar dari area kewanitaannya. Sakit-perih, bahkan Reberfikir area itu hancur.“Reina! Re! Reina!”Disisi lain gedung terdengar jeritan perempuan dewasa memanggilnya, Re bangkit terdudukdengan berusaha memunguti gaun lusuh bergambar Bunga aster khas anak-anak seusianya. Rememberikan usapan lembut pada rambut hitam legam yang sudah lama tidak dia beri sampo.Bahkan Re tidak ingat kapan terakhir kali dia menyentuh air untuk membersihkan tubuhnya.“Re! Re! Reina!”Daya, satu-satunya penghuni perempuan dewasa di panti itu, yang ditugaskan dalam menjagadan mengawasi para penghuni lainnya— terutama dalam urusan perut dan kebersihan.',1,'2025-07-18 17:04:31','2025-07-18 17:04:31','1','panti-asuhan-tebar-kasih-yang-bahkan-tidak-memberi-kasih-dan-tanpa-asuhan','version','','Initial publish',1),(4,3,'Panti asuhan Tebar kasih-yang bahkan tidak memberi kasih, dan tanpa asuhan','<p id=\"bkmrk-aksara-mentari.\" class=\"align-left\">Aksara Mentari.</p>\r\n<p id=\"bkmrk-tebar-kasihyuni-alif\" class=\"align-left\"><br>TEBAR KASIH<br>Yuni Alifia<br>Jln. Tabah Guyar, kampung kawah api. 15 Juni 2009</p>\r\n<p id=\"bkmrk-%E2%80%9Cbaring-dan-buka-baj\" class=\"align-left\"><br>“Baring dan buka bajumu” Re--anak perempuan yang menjalani hidup hampir genap 8<br>tahun itu menutup mata dengan-masih berusaha melonggarkan kain yang membaluti tubuh<br>mungilnya. Matanya tak lagi menyuarkan bercak air, hampir setiap pukul 9.00 malam, di hari<br>ahad, akan seperti ini. Bapak—orang yang memiliki peran utama dalam ruang kasih yang<br>didirikan, selalu mencuri masa agar bisa menyantap Re. Disaksikan bingkai dengan gambar suci<br>tuhan-Bapa didalamnya. Waktu bergulir begitu lambat, seakan mendukung bejatnya binatang<br>yang sudah berhasil melucuti hak otoritas dari tubuh Re.<br>“Kasi desah dong lacur, dasar bocah sialan”. Mulut bau tembakau bercampur dengan<br>jigong dan gigi berlapis tidak pernah tersisir sikat gigi itu menyuarkan sesalnya pada Re. Bahkan<br>sejak kali pertama meraba hingga pada tahap berani merampas kesucian dari tubuhnya, Re tidak<br>pernah membuka mulut bahkan bersuara nakal seperti yang Bapak minta. Hanya tangisan pilu<br>dihiasi memar membiru pada area privasinya.<br>“hmm, legit, bapak suka sekali tubuh kamu ini, minggu depan sudah harus sampai duluan<br>ke sini ya, jangan buat bapak nunggu”<br>Setelah bercakap seperti itu, bapak-biadab itu pergi meninggalkan Re yang terbaring lemah,<br>dengan lelehan sperma yang berlomba keluar dari area kewanitaannya. Sakit-perih, bahkan Re<br>berfikir area itu hancur.<br>“Reina! Re! Reina!”<br>Disisi lain gedung terdengar jeritan perempuan dewasa memanggilnya, Re bangkit terduduk<br>dengan berusaha memunguti gaun lusuh bergambar Bunga aster khas anak-anak seusianya. Re<br>memberikan usapan lembut pada rambut hitam legam yang sudah lama tidak dia beri sampo.<br>Bahkan Re tidak ingat kapan terakhir kali dia menyentuh air untuk membersihkan tubuhnya.<br>“Re! Re! Reina!”<br>Daya, satu-satunya penghuni perempuan dewasa di panti itu, yang ditugaskan dalam menjaga<br>dan mengawasi para penghuni lainnya— terutama dalam urusan perut dan kebersihan.</p>','Aksara Mentari.\r\nTEBAR KASIHYuni AlifiaJln. Tabah Guyar, kampung kawah api. 15 Juni 2009\r\n“Baring dan buka bajumu” Re--anak perempuan yang menjalani hidup hampir genap 8tahun itu menutup mata dengan-masih berusaha melonggarkan kain yang membaluti tubuhmungilnya. Matanya tak lagi menyuarkan bercak air, hampir setiap pukul 9.00 malam, di hariahad, akan seperti ini. Bapak—orang yang memiliki peran utama dalam ruang kasih yangdidirikan, selalu mencuri masa agar bisa menyantap Re. Disaksikan bingkai dengan gambar sucituhan-Bapa didalamnya. Waktu bergulir begitu lambat, seakan mendukung bejatnya binatangyang sudah berhasil melucuti hak otoritas dari tubuh Re.“Kasi desah dong lacur, dasar bocah sialan”. Mulut bau tembakau bercampur denganjigong dan gigi berlapis tidak pernah tersisir sikat gigi itu menyuarkan sesalnya pada Re. Bahkansejak kali pertama meraba hingga pada tahap berani merampas kesucian dari tubuhnya, Re tidakpernah membuka mulut bahkan bersuara nakal seperti yang Bapak minta. Hanya tangisan piludihiasi memar membiru pada area privasinya.“hmm, legit, bapak suka sekali tubuh kamu ini, minggu depan sudah harus sampai duluanke sini ya, jangan buat bapak nunggu”Setelah bercakap seperti itu, bapak-biadab itu pergi meninggalkan Re yang terbaring lemah,dengan lelehan sperma yang berlomba keluar dari area kewanitaannya. Sakit-perih, bahkan Reberfikir area itu hancur.“Reina! Re! Reina!”Disisi lain gedung terdengar jeritan perempuan dewasa memanggilnya, Re bangkit terdudukdengan berusaha memunguti gaun lusuh bergambar Bunga aster khas anak-anak seusianya. Rememberikan usapan lembut pada rambut hitam legam yang sudah lama tidak dia beri sampo.Bahkan Re tidak ingat kapan terakhir kali dia menyentuh air untuk membersihkan tubuhnya.“Re! Re! Reina!”Daya, satu-satunya penghuni perempuan dewasa di panti itu, yang ditugaskan dalam menjagadan mengawasi para penghuni lainnya— terutama dalam urusan perut dan kebersihan.',1,'2025-07-18 17:05:55','2025-07-18 17:05:55','panti-asuhan-tebar-kasih-yang-bahkan-tidak-memberi-kasih-dan-tanpa-asuhan','panti-asuhan-tebar-kasih-yang-bahkan-tidak-memberi-kasih-dan-tanpa-asuhan','version','','',2),(6,3,'Panti asuhan Tebar kasih-yang bahkan tidak memberi kasih, dan tanpa asuhan','<p id=\"bkmrk-aksara-mentari.\" class=\"align-left\">Aksara Mentari.</p>\r\n<p id=\"bkmrk-tebar-kasihyuni-alif\" class=\"align-left\"><br>TEBAR KASIH<br>Yuni Alifia<br>Jln. Tabah Guyar, kampung kawah api. 15 Juni 2009</p>\r\n<p id=\"bkmrk-%E2%80%9Cbaring-dan-buka-baj\" class=\"align-left\"><br>“Baring dan buka bajumu” Re--anak perempuan yang menjalani hidup hampir genap 8<br>tahun itu menutup mata dengan-masih berusaha melonggarkan kain yang membaluti tubuh<br>mungilnya. Matanya tak lagi menyuarkan bercak air, hampir setiap pukul 9.00 malam, di hari<br>ahad, akan seperti ini. Bapak—orang yang memiliki peran utama dalam ruang kasih yang<br>didirikan, selalu mencuri masa agar bisa menyantap Re. Disaksikan bingkai dengan gambar suci<br>tuhan-Bapa didalamnya. Waktu bergulir begitu lambat, seakan mendukung bejatnya binatang<br>yang sudah berhasil melucuti hak otoritas dari tubuh Re.<br>“Kasi desah dong lacur, dasar bocah sialan”. Mulut bau tembakau bercampur dengan<br>jigong dan gigi berlapis tidak pernah tersisir sikat gigi itu menyuarkan sesalnya pada Re. Bahkan<br>sejak kali pertama meraba hingga pada tahap berani merampas kesucian dari tubuhnya, Re tidak<br>pernah membuka mulut bahkan bersuara nakal seperti yang Bapak minta. Hanya tangisan pilu<br>dihiasi memar membiru pada area privasinya.<br>“hmm, legit, bapak suka sekali tubuh kamu ini, minggu depan sudah harus sampai duluan<br>ke sini ya, jangan buat bapak nunggu”<br>Setelah bercakap seperti itu, bapak-biadab itu pergi meninggalkan Re yang terbaring lemah,<br>dengan lelehan sperma yang berlomba keluar dari area kewanitaannya. Sakit-perih, bahkan Re<br>berfikir area itu hancur.<br>“Reina! Re! Reina!”<br>Disisi lain gedung terdengar jeritan perempuan dewasa memanggilnya, Re bangkit terduduk<br>dengan berusaha memunguti gaun lusuh bergambar Bunga aster khas anak-anak seusianya. Re<br>memberikan usapan lembut pada rambut hitam legam yang sudah lama tidak dia beri sampo.<br>Bahkan Re tidak ingat kapan terakhir kali dia menyentuh air untuk membersihkan tubuhnya.<br>“Re! Re! Reina!”<br>Daya, satu-satunya penghuni perempuan dewasa di panti itu, yang ditugaskan dalam menjaga<br>dan mengawasi para penghuni lainnya— terutama dalam urusan perut dan kebersihan.</p>\r\n<p class=\"align-left\" id=\"bkmrk-%C2%A0\">&nbsp;</p>\r\n<p class=\"align-left\" id=\"bkmrk-%E2%80%9Cmbak-kenapa%3F%E2%80%9D.-suar\">“Mbak kenapa?”. Suara khas yang sangat Daya kenali menyapa indera pendengarannya,<br>tubuhnya memutar, dengan langkah cepat dan perasaan cemas—bercampur lega menyelimuti.<br>Daya memeluknya erat, dan dibalas Re tidak kalah erat, bahkan dia merintih, pilu bercampur<br>sesak yang Re rasakan membuncah seketika, dia tidak berdaya, dia lemah, dia sakit, dia hancur.<br>Daya yang merasakan gelenyar aneh dari Re—dengan perlahan memundurkan tubuh Re.<br>“kenapa sayang?, mbak udah disini. Reina udah kemana aja tadi sayang, mbak takut<br>sekali” sembari membelai lembut helai rambut Re yang sedikit berantakan.<br>“Re takut mbak, Re ingin pulang, Re ndak kuat, Re takut sekali”. Tubuh mungil itu<br>bergetar hebat, gaun putih selutut dengan motif bunga aster lusuh terbalut ditubunya–seperti<br>sudah dipakai seharian yang diremat kuat. Rintihan tangisnya diredam Dengan menenggelamkan<br>kepalanya di perut mbak Daya. Pilu tangisnya terasa, bagi setiap yang mendengarnya. Usapan<br>lembut disalurkan mbak Daya untuk menguatkan Re agar menghentikan tangisnya<br>Daya—yang dipanggil mbak oleh hampir seluruh penghuni panti asuhan tebar kasih kini<br>menuntun Re menjauh dari area kamar yang terhubung dengan rumah utama pemilik panti, yaitu<br>bapak dan mama. Pasangan dengan seribu wajah penuh kebejatan. Tidak banyak yang tahu<br>kecuali para penghuni panti dan segelintir tetangga—dengan perbandingan jarak bangunan yang<br>cukup jauh.<br>&nbsp;Daya memberikan satu gelas air untuk Re minum, dia memberi usapan lembut pada kepala<br>bocah umur 8 tahun itu, bercak air mulai berlomba keluar menuruni jalur pipi kurusnya. Re<br>tercekat, dia benar-benar sekarat sekarang, sangat sakit untuknya menerima fakta bahwa dia<br>tidak berharga, semenjak 1.825 hari dihidupnya, Re ingin menyerah detik ini juga, Re ingin mati<br>dalam dekapan Tuhan. Re mendongak setelah selesai pada acara minumnya yang mengundang<br>sayatan baru pada hati mbak Daya.<br>&nbsp;“sekarang coba ngomong pelan-pelan, kamu habis ngapain di gudang itu?”<br>&nbsp;“Apa Tuhan sangat tidak mencintai Re mbak Daya?”<br>&nbsp;“Re?”<br>Daya memberi dekapan kepadanya, meski anak itu hanya menangis dan tidak bicara setelah<br>ditanyai olehnya. Tuhan, bagaimana semua ini akan berakhir, bagaimana seorang anak kecil bisa<br>berfikir sejauh ini–fikirnya.<br>Setelah memastikan Reina terlelap sempurna, Daya memberanikan diri menuju rumah<br>utama yang dihuni oleh dua orang yang mereka anggap sebagai orang tua mereka, disana dia</p>\r\n<p class=\"align-left\" id=\"bkmrk-%C2%A0-1\">&nbsp;</p>\r\n<p class=\"align-left\" id=\"bkmrk-tinggal%2C-dan-dihancu\">tinggal, dan dihancurkan. Daya menjadi anak adopsi di keluarga ini sejak usianya menginjak<br>angka ke-3, dijadikan bahan pancingan agar sang mama memiliki momongan dengan segera.<br>Di dalam bayangan Daya saat itu, Bapak dan Mama merupakan figur malaikat yang<br>dikirim Tuhan untuknya, segala yang anak itu inginkan awalnya terpenuhi, dan dibanjiri kasih<br>dan cinta. Namun semua berubah ketika dia menginjak usia yang ke-5. Di malam setelah pesta<br>ulang tahunnya dirayakan, figur ayah yang dia panggil bapak memasuki kamarnya, tanpa sehelai<br>benang yang membaluti tubuhnya, bapak telanjang seperti orang gila yang kehilangan akal<br>sehat—Daya gemetar ketakutan, suara tangisannya bahkan tak terdengar, tercekal, tubuh kecil itu<br>terlonjak, remuk dan lebur terasa pada tulang punggungnya, Daya belum faham, bapak<br>melecehkannya, merobek sisa kehidupan yang menjadi letak kehormatannya.<br>Tubuhnya terhuyung hingga membentur dinding dipan, meneriaki satu nama yang dia<br>sangka akan segera meraihnya dan membawa dia pergi menjauh dari kegiatan bejat sang bapak<br>angkat.<br>“Mama..minta tolong, Daya sakit!”<br>“Mama!”<br>“Mama!”<br>Panggilan itu dia lontarkan sebanyak yang dia bisa, tapi nihil, sang mama dilain dimensi ruang<br>sedang asyik dengan pria simpanannya juga, mencumbu tanpa henti bahkan hingga fajar terganti.<br>Bapak—biadab itu masih terus menyetubuhi Daya, nafasnya tersenggal, bau tembakau<br>bercampur alkohol menguar dari mulut rakusnya, wajahnya penuh peluh, dengan sperma yang<br>tercecer pada dinding kamar Daya. Desahan kotor terus dilantunkan guna memuaskan hasrat<br>bejatnya.<br>Daya terbangun dengan peluh yang menghiasi wajah dan tubuhnya, dia bermimpi—lagi,<br>sejak kejadian itu hingga usianya menginjak 28 tahun Daya tidak lagi dapat terlelap tenang.<br>Selalu–dengan kejadian Yang Sama. Dia bangkit dan melirik ke arah jendela kayu kamar itu,<br>masih subuh—fikirnya. Daya mempersiapkan diri sebelum pergi ke pasar soang untuk membeli<br>bahan masakan yang akan diberikan kepada 35 anak panti. Sebelum keluar dengan sepeda butut<br>yang dia beli di saudagar loak, kakinya melangkah menuju kamar tempat Reina singgah.<br>“Maya ada lihat Reina?”<br>“Tidak mbak, sejak kemarin malam sudah tidak di kasurnya”</p>\r\n<p class=\"align-left\" id=\"bkmrk-%C2%A0-2\">&nbsp;</p>\r\n<p class=\"align-left\" id=\"bkmrk-daya-terbelalak%2C-tep\">Daya terbelalak, tepat pukul sepuluh malam kemarin, dia mengantarkan Reina menuju<br>kamar ini, dan melihat Reina terlelap damai dalam tidurnya. Bahkan teman sekamar Re<br>mengatakan tidak pernah menemukan Reina sejak malam tadi.<br>“kemarin malam mbak yang antar Reina kesini, kalian juga tidur disini, Maya lihat mbak<br>masuk dan nyalain saklar lampu kan sayang?”<br>“Iya mbak Daya, tapi mbak ngomong sendiri, dan ndak lagi sama siapa-siapa”<br>“Maya kasi tau ke Sedah subuh tadi kalau mbak Daya seperti orang mengigau”<br>Daya menutup mulutnya rapat, lalu Reina, anak itu dimana sekarang. Apakah ini mimpi,<br>bangungkan Daya untuk mencerna fakta bahwa anaknya—Reina yang dia bawa ke kamar ini,<br>tertidur damai selepas menangis dalam dekapannya.<br>“sekarang Maya, Sedah sama Rita tolong mbak Daya buat cari Reina ya sayang”<br>Mereka berempat terus mencari, mengelilingi bangunan utama hingga taman yang lebih<br>terlihat seperti gurun, tanaman bahkan enggan hidup di tanah penuh kepalsuan ini. Hanya satu<br>yang belum Daya telusuri, yaitu gudang kumuh dekat sawah yang letaknya sering dia sebut titik<br>buta. Daya tinggal di rumah ini tidak sebentar, gudang itu menjadi tempat paling dilarang di<br>panti asuhan ini, lalu untuk apa Re berada disana—fikirnya. Namun, insting seorang Ibu tidak<br>pernah melesat, walaupun tahu akan mendapat hukuman berat setelahnya, Daya tidak lagi peduli<br>pada laki-laki bejat itu, dia akan menemukan buah hatinya.<br>Langkah yang semakin berat, jantung yang semakin terpompa asal mengikuti tempo<br>perasaannya, Daya terisak, menggigiti bagian dalam pipinya untuk yang kesekian kalinya, dia<br>meraung, mencakar pintu kayu sialan yang menghalanginya. Putrinya Re—terbaring tanpa<br>busana, dengan alat kelamin yang hancur, mulut berbusa dan mata lebam, raganya terlentang<br>tepat disamping kertas foto yang dia remat. Tuhan—itu Tuhan yesus, dalam genggaman tangan<br>kecilnya, yang mungkin menahan sakit selama waktu yang tidak ditentukan.<br>Daya menggeleng hebat, tidak percaya putri tunggalnya akan mengalami hal serupa<br>dengan masa kecilnya, Raga mungil tidak berdosa itu pasti sangat tidak kuat dalam menahan<br>sakit yang dia terima, Tuhan mengambilnya tepat di hari kelahirannya, dalam keadaan yang tidak<br>pernah Daya bayangkan. Daya terus mendekapnya hangat, tubuh kaku yang membiru dengan<br>organ vital yang hancur itu adalah putri kecilnya.<br>“sayang, nak, Reina bangun sayang, sekarang kita akan beli kue telur yang banyak untuk<br>Ulang tahun Re, lalu pergi menghadiri acara di gereja kampung utama. Re mau kan sayang”</p>\r\n<p class=\"align-left\" id=\"bkmrk-%C2%A0-3\">&nbsp;</p>\r\n<p class=\"align-left\" id=\"bkmrk-daya-terus-berucap-k\">Daya terus berucap kepada putri kecilnya. Meski tahu bahwa jasad itu tidak akan pernah bangun<br>dan membalas pelukannya. Bahkan Reina tidak pernah dia ajarkan untuk memanggilnya dengan<br>sebutan “Mama” karena takut Reina akan malu karena lahir tanpa ada figur seorang ayah.<br>Tuhan Yesus tempat ini tidak sesuai nama, tidak tebar kasih sampai kepada teman-teman Re,<br>berkati orang yang melahirkan Re, Yang tulus mencintai Re, Beri dia tempat terbaik disisiMu<br>Tuhan. Re belum pintar menulis, mbak Daya baru mengajarkan sampai sini. Mbak Daya bilang<br>Re cepat pintar dan faham. Berkati selalu Re dengan otak Yang pintar seperti mbak Daya. Mbak<br>Daya, Re selalu cintakan mbak. Terus sehat dan makan enak mbak. Re ingin pulang duluan,<br>Karena Tuhan ingin menjemput dan Re juga ingin ikut. Terimakasi mbak Daya.<br>Note: do not eat, child-grooming, pedofilia, disturbing, triggering and more traumatized<br>Panti asuhan Tebar kasih–yang bahkan tidak menebar kasih, dan tanpa asuhan.</p>','Aksara Mentari.\r\nTEBAR KASIHYuni AlifiaJln. Tabah Guyar, kampung kawah api. 15 Juni 2009\r\n“Baring dan buka bajumu” Re--anak perempuan yang menjalani hidup hampir genap 8tahun itu menutup mata dengan-masih berusaha melonggarkan kain yang membaluti tubuhmungilnya. Matanya tak lagi menyuarkan bercak air, hampir setiap pukul 9.00 malam, di hariahad, akan seperti ini. Bapak—orang yang memiliki peran utama dalam ruang kasih yangdidirikan, selalu mencuri masa agar bisa menyantap Re. Disaksikan bingkai dengan gambar sucituhan-Bapa didalamnya. Waktu bergulir begitu lambat, seakan mendukung bejatnya binatangyang sudah berhasil melucuti hak otoritas dari tubuh Re.“Kasi desah dong lacur, dasar bocah sialan”. Mulut bau tembakau bercampur denganjigong dan gigi berlapis tidak pernah tersisir sikat gigi itu menyuarkan sesalnya pada Re. Bahkansejak kali pertama meraba hingga pada tahap berani merampas kesucian dari tubuhnya, Re tidakpernah membuka mulut bahkan bersuara nakal seperti yang Bapak minta. Hanya tangisan piludihiasi memar membiru pada area privasinya.“hmm, legit, bapak suka sekali tubuh kamu ini, minggu depan sudah harus sampai duluanke sini ya, jangan buat bapak nunggu”Setelah bercakap seperti itu, bapak-biadab itu pergi meninggalkan Re yang terbaring lemah,dengan lelehan sperma yang berlomba keluar dari area kewanitaannya. Sakit-perih, bahkan Reberfikir area itu hancur.“Reina! Re! Reina!”Disisi lain gedung terdengar jeritan perempuan dewasa memanggilnya, Re bangkit terdudukdengan berusaha memunguti gaun lusuh bergambar Bunga aster khas anak-anak seusianya. Rememberikan usapan lembut pada rambut hitam legam yang sudah lama tidak dia beri sampo.Bahkan Re tidak ingat kapan terakhir kali dia menyentuh air untuk membersihkan tubuhnya.“Re! Re! Reina!”Daya, satu-satunya penghuni perempuan dewasa di panti itu, yang ditugaskan dalam menjagadan mengawasi para penghuni lainnya— terutama dalam urusan perut dan kebersihan.\r\n \r\n“Mbak kenapa?”. Suara khas yang sangat Daya kenali menyapa indera pendengarannya,tubuhnya memutar, dengan langkah cepat dan perasaan cemas—bercampur lega menyelimuti.Daya memeluknya erat, dan dibalas Re tidak kalah erat, bahkan dia merintih, pilu bercampursesak yang Re rasakan membuncah seketika, dia tidak berdaya, dia lemah, dia sakit, dia hancur.Daya yang merasakan gelenyar aneh dari Re—dengan perlahan memundurkan tubuh Re.“kenapa sayang?, mbak udah disini. Reina udah kemana aja tadi sayang, mbak takutsekali” sembari membelai lembut helai rambut Re yang sedikit berantakan.“Re takut mbak, Re ingin pulang, Re ndak kuat, Re takut sekali”. Tubuh mungil itubergetar hebat, gaun putih selutut dengan motif bunga aster lusuh terbalut ditubunya–sepertisudah dipakai seharian yang diremat kuat. Rintihan tangisnya diredam Dengan menenggelamkankepalanya di perut mbak Daya. Pilu tangisnya terasa, bagi setiap yang mendengarnya. Usapanlembut disalurkan mbak Daya untuk menguatkan Re agar menghentikan tangisnyaDaya—yang dipanggil mbak oleh hampir seluruh penghuni panti asuhan tebar kasih kinimenuntun Re menjauh dari area kamar yang terhubung dengan rumah utama pemilik panti, yaitubapak dan mama. Pasangan dengan seribu wajah penuh kebejatan. Tidak banyak yang tahukecuali para penghuni panti dan segelintir tetangga—dengan perbandingan jarak bangunan yangcukup jauh. Daya memberikan satu gelas air untuk Re minum, dia memberi usapan lembut pada kepalabocah umur 8 tahun itu, bercak air mulai berlomba keluar menuruni jalur pipi kurusnya. Retercekat, dia benar-benar sekarat sekarang, sangat sakit untuknya menerima fakta bahwa diatidak berharga, semenjak 1.825 hari dihidupnya, Re ingin menyerah detik ini juga, Re ingin matidalam dekapan Tuhan. Re mendongak setelah selesai pada acara minumnya yang mengundangsayatan baru pada hati mbak Daya. “sekarang coba ngomong pelan-pelan, kamu habis ngapain di gudang itu?” “Apa Tuhan sangat tidak mencintai Re mbak Daya?” “Re?”Daya memberi dekapan kepadanya, meski anak itu hanya menangis dan tidak bicara setelahditanyai olehnya. Tuhan, bagaimana semua ini akan berakhir, bagaimana seorang anak kecil bisaberfikir sejauh ini–fikirnya.Setelah memastikan Reina terlelap sempurna, Daya memberanikan diri menuju rumahutama yang dihuni oleh dua orang yang mereka anggap sebagai orang tua mereka, disana dia\r\n \r\ntinggal, dan dihancurkan. Daya menjadi anak adopsi di keluarga ini sejak usianya menginjakangka ke-3, dijadikan bahan pancingan agar sang mama memiliki momongan dengan segera.Di dalam bayangan Daya saat itu, Bapak dan Mama merupakan figur malaikat yangdikirim Tuhan untuknya, segala yang anak itu inginkan awalnya terpenuhi, dan dibanjiri kasihdan cinta. Namun semua berubah ketika dia menginjak usia yang ke-5. Di malam setelah pestaulang tahunnya dirayakan, figur ayah yang dia panggil bapak memasuki kamarnya, tanpa sehelaibenang yang membaluti tubuhnya, bapak telanjang seperti orang gila yang kehilangan akalsehat—Daya gemetar ketakutan, suara tangisannya bahkan tak terdengar, tercekal, tubuh kecil ituterlonjak, remuk dan lebur terasa pada tulang punggungnya, Daya belum faham, bapakmelecehkannya, merobek sisa kehidupan yang menjadi letak kehormatannya.Tubuhnya terhuyung hingga membentur dinding dipan, meneriaki satu nama yang diasangka akan segera meraihnya dan membawa dia pergi menjauh dari kegiatan bejat sang bapakangkat.“Mama..minta tolong, Daya sakit!”“Mama!”“Mama!”Panggilan itu dia lontarkan sebanyak yang dia bisa, tapi nihil, sang mama dilain dimensi ruangsedang asyik dengan pria simpanannya juga, mencumbu tanpa henti bahkan hingga fajar terganti.Bapak—biadab itu masih terus menyetubuhi Daya, nafasnya tersenggal, bau tembakaubercampur alkohol menguar dari mulut rakusnya, wajahnya penuh peluh, dengan sperma yangtercecer pada dinding kamar Daya. Desahan kotor terus dilantunkan guna memuaskan hasratbejatnya.Daya terbangun dengan peluh yang menghiasi wajah dan tubuhnya, dia bermimpi—lagi,sejak kejadian itu hingga usianya menginjak 28 tahun Daya tidak lagi dapat terlelap tenang.Selalu–dengan kejadian Yang Sama. Dia bangkit dan melirik ke arah jendela kayu kamar itu,masih subuh—fikirnya. Daya mempersiapkan diri sebelum pergi ke pasar soang untuk membelibahan masakan yang akan diberikan kepada 35 anak panti. Sebelum keluar dengan sepeda bututyang dia beli di saudagar loak, kakinya melangkah menuju kamar tempat Reina singgah.“Maya ada lihat Reina?”“Tidak mbak, sejak kemarin malam sudah tidak di kasurnya”\r\n \r\nDaya terbelalak, tepat pukul sepuluh malam kemarin, dia mengantarkan Reina menujukamar ini, dan melihat Reina terlelap damai dalam tidurnya. Bahkan teman sekamar Remengatakan tidak pernah menemukan Reina sejak malam tadi.“kemarin malam mbak yang antar Reina kesini, kalian juga tidur disini, Maya lihat mbakmasuk dan nyalain saklar lampu kan sayang?”“Iya mbak Daya, tapi mbak ngomong sendiri, dan ndak lagi sama siapa-siapa”“Maya kasi tau ke Sedah subuh tadi kalau mbak Daya seperti orang mengigau”Daya menutup mulutnya rapat, lalu Reina, anak itu dimana sekarang. Apakah ini mimpi,bangungkan Daya untuk mencerna fakta bahwa anaknya—Reina yang dia bawa ke kamar ini,tertidur damai selepas menangis dalam dekapannya.“sekarang Maya, Sedah sama Rita tolong mbak Daya buat cari Reina ya sayang”Mereka berempat terus mencari, mengelilingi bangunan utama hingga taman yang lebihterlihat seperti gurun, tanaman bahkan enggan hidup di tanah penuh kepalsuan ini. Hanya satuyang belum Daya telusuri, yaitu gudang kumuh dekat sawah yang letaknya sering dia sebut titikbuta. Daya tinggal di rumah ini tidak sebentar, gudang itu menjadi tempat paling dilarang dipanti asuhan ini, lalu untuk apa Re berada disana—fikirnya. Namun, insting seorang Ibu tidakpernah melesat, walaupun tahu akan mendapat hukuman berat setelahnya, Daya tidak lagi pedulipada laki-laki bejat itu, dia akan menemukan buah hatinya.Langkah yang semakin berat, jantung yang semakin terpompa asal mengikuti tempoperasaannya, Daya terisak, menggigiti bagian dalam pipinya untuk yang kesekian kalinya, diameraung, mencakar pintu kayu sialan yang menghalanginya. Putrinya Re—terbaring tanpabusana, dengan alat kelamin yang hancur, mulut berbusa dan mata lebam, raganya terlentangtepat disamping kertas foto yang dia remat. Tuhan—itu Tuhan yesus, dalam genggaman tangankecilnya, yang mungkin menahan sakit selama waktu yang tidak ditentukan.Daya menggeleng hebat, tidak percaya putri tunggalnya akan mengalami hal serupadengan masa kecilnya, Raga mungil tidak berdosa itu pasti sangat tidak kuat dalam menahansakit yang dia terima, Tuhan mengambilnya tepat di hari kelahirannya, dalam keadaan yang tidakpernah Daya bayangkan. Daya terus mendekapnya hangat, tubuh kaku yang membiru denganorgan vital yang hancur itu adalah putri kecilnya.“sayang, nak, Reina bangun sayang, sekarang kita akan beli kue telur yang banyak untukUlang tahun Re, lalu pergi menghadiri acara di gereja kampung utama. Re mau kan sayang”\r\n \r\nDaya terus berucap kepada putri kecilnya. Meski tahu bahwa jasad itu tidak akan pernah bangundan membalas pelukannya. Bahkan Reina tidak pernah dia ajarkan untuk memanggilnya dengansebutan “Mama” karena takut Reina akan malu karena lahir tanpa ada figur seorang ayah.Tuhan Yesus tempat ini tidak sesuai nama, tidak tebar kasih sampai kepada teman-teman Re,berkati orang yang melahirkan Re, Yang tulus mencintai Re, Beri dia tempat terbaik disisiMuTuhan. Re belum pintar menulis, mbak Daya baru mengajarkan sampai sini. Mbak Daya bilangRe cepat pintar dan faham. Berkati selalu Re dengan otak Yang pintar seperti mbak Daya. MbakDaya, Re selalu cintakan mbak. Terus sehat dan makan enak mbak. Re ingin pulang duluan,Karena Tuhan ingin menjemput dan Re juga ingin ikut. Terimakasi mbak Daya.Note: do not eat, child-grooming, pedofilia, disturbing, triggering and more traumatizedPanti asuhan Tebar kasih–yang bahkan tidak menebar kasih, dan tanpa asuhan.',1,'2025-07-18 17:08:45','2025-07-18 17:08:45','panti-asuhan-tebar-kasih-yang-bahkan-tidak-memberi-kasih-dan-tanpa-asuhan','panti-asuhan-tebar-kasih-yang-bahkan-tidak-memberi-kasih-dan-tanpa-asuhan','version','','',3),(8,3,'Panti asuhan Tebar kasih-yang bahkan tidak memberi kasih, dan tanpa asuhan','<p id=\"bkmrk-aksara-mentari.\" class=\"align-left\">Aksara Mentari.</p>\r\n<p id=\"bkmrk-tebar-kasihyuni-alif\" class=\"align-left\"><br>TEBAR KASIH<br>Yuni Alifia<br>Jln. Tabah Guyar, kampung kawah api. 15 Juni 2009</p>\r\n<p id=\"bkmrk-%E2%80%9Cbaring-dan-buka-baj\" class=\"align-left\"><br>“Baring dan buka bajumu” Re--anak perempuan yang menjalani hidup hampir genap 8<br>tahun itu menutup mata dengan-masih berusaha melonggarkan kain yang membaluti tubuh<br>mungilnya. Matanya tak lagi menyuarkan bercak air, hampir setiap pukul 9.00 malam, di hari<br>ahad, akan seperti ini. Bapak—orang yang memiliki peran utama dalam ruang kasih yang<br>didirikan, selalu mencuri masa agar bisa menyantap Re. Disaksikan bingkai dengan gambar suci<br>tuhan-Bapa didalamnya. Waktu bergulir begitu lambat, seakan mendukung bejatnya binatang<br>yang sudah berhasil melucuti hak otoritas dari tubuh Re.<br>“Kasi desah dong lacur, dasar bocah sialan”. Mulut bau tembakau bercampur dengan<br>jigong dan gigi berlapis tidak pernah tersisir sikat gigi itu menyuarkan sesalnya pada Re. Bahkan<br>sejak kali pertama meraba hingga pada tahap berani merampas kesucian dari tubuhnya, Re tidak<br>pernah membuka mulut bahkan bersuara nakal seperti yang Bapak minta. Hanya tangisan pilu<br>dihiasi memar membiru pada area privasinya.<br>“hmm, legit, bapak suka sekali tubuh kamu ini, minggu depan sudah harus sampai duluan<br>ke sini ya, jangan buat bapak nunggu”<br>Setelah bercakap seperti itu, bapak-biadab itu pergi meninggalkan Re yang terbaring lemah,<br>dengan lelehan sperma yang berlomba keluar dari area kewanitaannya. Sakit-perih, bahkan Re<br>berfikir area itu hancur.<br>“Reina! Re! Reina!”<br>Disisi lain gedung terdengar jeritan perempuan dewasa memanggilnya, Re bangkit terduduk<br>dengan berusaha memunguti gaun lusuh bergambar Bunga aster khas anak-anak seusianya. Re<br>memberikan usapan lembut pada rambut hitam legam yang sudah lama tidak dia beri sampo.<br>Bahkan Re tidak ingat kapan terakhir kali dia menyentuh air untuk membersihkan tubuhnya.<br>“Re! Re! Reina!”<br>Daya, satu-satunya penghuni perempuan dewasa di panti itu, yang ditugaskan dalam menjaga<br>dan mengawasi para penghuni lainnya— terutama dalam urusan perut dan kebersihan.</p>\r\n<p id=\"bkmrk-%C2%A0\" class=\"align-left\"></p>\r\n<p id=\"bkmrk-%E2%80%9Cmbak-kenapa%3F%E2%80%9D.-suar\" class=\"align-left\">“Mbak kenapa?”. Suara khas yang sangat Daya kenali menyapa indera pendengarannya,<br>tubuhnya memutar, dengan langkah cepat dan perasaan cemas—bercampur lega menyelimuti.<br>Daya memeluknya erat, dan dibalas Re tidak kalah erat, bahkan dia merintih, pilu bercampur<br>sesak yang Re rasakan membuncah seketika, dia tidak berdaya, dia lemah, dia sakit, dia hancur.<br>Daya yang merasakan gelenyar aneh dari Re—dengan perlahan memundurkan tubuh Re.<br>“kenapa sayang?, mbak udah disini. Reina udah kemana aja tadi sayang, mbak takut<br>sekali” sembari membelai lembut helai rambut Re yang sedikit berantakan.<br>“Re takut mbak, Re ingin pulang, Re ndak kuat, Re takut sekali”. Tubuh mungil itu<br>bergetar hebat, gaun putih selutut dengan motif bunga aster lusuh terbalut ditubunya–seperti<br>sudah dipakai seharian yang diremat kuat. Rintihan tangisnya diredam Dengan menenggelamkan<br>kepalanya di perut mbak Daya. Pilu tangisnya terasa, bagi setiap yang mendengarnya. Usapan<br>lembut disalurkan mbak Daya untuk menguatkan Re agar menghentikan tangisnya<br>Daya—yang dipanggil mbak oleh hampir seluruh penghuni panti asuhan tebar kasih kini<br>menuntun Re menjauh dari area kamar yang terhubung dengan rumah utama pemilik panti, yaitu<br>bapak dan mama. Pasangan dengan seribu wajah penuh kebejatan. Tidak banyak yang tahu<br>kecuali para penghuni panti dan segelintir tetangga—dengan perbandingan jarak bangunan yang<br>cukup jauh.<br>&nbsp;Daya memberikan satu gelas air untuk Re minum, dia memberi usapan lembut pada kepala<br>bocah umur 8 tahun itu, bercak air mulai berlomba keluar menuruni jalur pipi kurusnya. Re<br>tercekat, dia benar-benar sekarat sekarang, sangat sakit untuknya menerima fakta bahwa dia<br>tidak berharga, semenjak 1.825 hari dihidupnya, Re ingin menyerah detik ini juga, Re ingin mati<br>dalam dekapan Tuhan. Re mendongak setelah selesai pada acara minumnya yang mengundang<br>sayatan baru pada hati mbak Daya.<br>&nbsp;“sekarang coba ngomong pelan-pelan, kamu habis ngapain di gudang itu?”<br>&nbsp;“Apa Tuhan sangat tidak mencintai Re mbak Daya?”<br>&nbsp;“Re?”<br>Daya memberi dekapan kepadanya, meski anak itu hanya menangis dan tidak bicara setelah<br>ditanyai olehnya. Tuhan, bagaimana semua ini akan berakhir, bagaimana seorang anak kecil bisa<br>berfikir sejauh ini–fikirnya.<br>Setelah memastikan Reina terlelap sempurna, Daya memberanikan diri menuju rumah<br>utama yang dihuni oleh dua orang yang mereka anggap sebagai orang tua mereka, disana dia</p>\r\n<p id=\"bkmrk-%C2%A0-1\" class=\"align-left\"></p>\r\n<p id=\"bkmrk-tinggal%2C-dan-dihancu\" class=\"align-left\">tinggal, dan dihancurkan. Daya menjadi anak adopsi di keluarga ini sejak usianya menginjak<br>angka ke-3, dijadikan bahan pancingan agar sang mama memiliki momongan dengan segera.<br>Di dalam bayangan Daya saat itu, Bapak dan Mama merupakan figur malaikat yang<br>dikirim Tuhan untuknya, segala yang anak itu inginkan awalnya terpenuhi, dan dibanjiri kasih<br>dan cinta. Namun semua berubah ketika dia menginjak usia yang ke-5. Di malam setelah pesta<br>ulang tahunnya dirayakan, figur ayah yang dia panggil bapak memasuki kamarnya, tanpa sehelai<br>benang yang membaluti tubuhnya, bapak telanjang seperti orang gila yang kehilangan akal<br>sehat—Daya gemetar ketakutan, suara tangisannya bahkan tak terdengar, tercekal, tubuh kecil itu<br>terlonjak, remuk dan lebur terasa pada tulang punggungnya, Daya belum faham, bapak<br>melecehkannya, merobek sisa kehidupan yang menjadi letak kehormatannya.<br>Tubuhnya terhuyung hingga membentur dinding dipan, meneriaki satu nama yang dia<br>sangka akan segera meraihnya dan membawa dia pergi menjauh dari kegiatan bejat sang bapak<br>angkat.<br>“Mama..minta tolong, Daya sakit!”<br>“Mama!”<br>“Mama!”<br>Panggilan itu dia lontarkan sebanyak yang dia bisa, tapi nihil, sang mama dilain dimensi ruang<br>sedang asyik dengan pria simpanannya juga, mencumbu tanpa henti bahkan hingga fajar terganti.<br>Bapak—biadab itu masih terus menyetubuhi Daya, nafasnya tersenggal, bau tembakau<br>bercampur alkohol menguar dari mulut rakusnya, wajahnya penuh peluh, dengan sperma yang<br>tercecer pada dinding kamar Daya. Desahan kotor terus dilantunkan guna memuaskan hasrat<br>bejatnya.<br>Daya terbangun dengan peluh yang menghiasi wajah dan tubuhnya, dia bermimpi—lagi,<br>sejak kejadian itu hingga usianya menginjak 28 tahun Daya tidak lagi dapat terlelap tenang.<br>Selalu–dengan kejadian Yang Sama. Dia bangkit dan melirik ke arah jendela kayu kamar itu,<br>masih subuh—fikirnya. Daya mempersiapkan diri sebelum pergi ke pasar soang untuk membeli<br>bahan masakan yang akan diberikan kepada 35 anak panti. Sebelum keluar dengan sepeda butut<br>yang dia beli di saudagar loak, kakinya melangkah menuju kamar tempat Reina singgah.<br>“Maya ada lihat Reina?”<br>“Tidak mbak, sejak kemarin malam sudah tidak di kasurnya”</p>\r\n<p id=\"bkmrk-%C2%A0-2\" class=\"align-left\"></p>\r\n<p id=\"bkmrk-daya-terbelalak%2C-tep\" class=\"align-left\">Daya terbelalak, tepat pukul sepuluh malam kemarin, dia mengantarkan Reina menuju<br>kamar ini, dan melihat Reina terlelap damai dalam tidurnya. Bahkan teman sekamar Re<br>mengatakan tidak pernah menemukan Reina sejak malam tadi.<br>“kemarin malam mbak yang antar Reina kesini, kalian juga tidur disini, Maya lihat mbak<br>masuk dan nyalain saklar lampu kan sayang?”<br>“Iya mbak Daya, tapi mbak ngomong sendiri, dan ndak lagi sama siapa-siapa”<br>“Maya kasi tau ke Sedah subuh tadi kalau mbak Daya seperti orang mengigau”<br>Daya menutup mulutnya rapat, lalu Reina, anak itu dimana sekarang. Apakah ini mimpi,<br>bangungkan Daya untuk mencerna fakta bahwa anaknya—Reina yang dia bawa ke kamar ini,<br>tertidur damai selepas menangis dalam dekapannya.<br>“sekarang Maya, Sedah sama Rita tolong mbak Daya buat cari Reina ya sayang”<br>Mereka berempat terus mencari, mengelilingi bangunan utama hingga taman yang lebih<br>terlihat seperti gurun, tanaman bahkan enggan hidup di tanah penuh kepalsuan ini. Hanya satu<br>yang belum Daya telusuri, yaitu gudang kumuh dekat sawah yang letaknya sering dia sebut titik<br>buta. Daya tinggal di rumah ini tidak sebentar, gudang itu menjadi tempat paling dilarang di<br>panti asuhan ini, lalu untuk apa Re berada disana—fikirnya. Namun, insting seorang Ibu tidak<br>pernah melesat, walaupun tahu akan mendapat hukuman berat setelahnya, Daya tidak lagi peduli<br>pada laki-laki bejat itu, dia akan menemukan buah hatinya.<br>Langkah yang semakin berat, jantung yang semakin terpompa asal mengikuti tempo<br>perasaannya, Daya terisak, menggigiti bagian dalam pipinya untuk yang kesekian kalinya, dia<br>meraung, mencakar pintu kayu sialan yang menghalanginya. Putrinya Re—terbaring tanpa<br>busana, dengan alat kelamin yang hancur, mulut berbusa dan mata lebam, raganya terlentang<br>tepat disamping kertas foto yang dia remat. Tuhan—itu Tuhan yesus, dalam genggaman tangan<br>kecilnya, yang mungkin menahan sakit selama waktu yang tidak ditentukan.<br>Daya menggeleng hebat, tidak percaya putri tunggalnya akan mengalami hal serupa<br>dengan masa kecilnya, Raga mungil tidak berdosa itu pasti sangat tidak kuat dalam menahan<br>sakit yang dia terima, Tuhan mengambilnya tepat di hari kelahirannya, dalam keadaan yang tidak<br>pernah Daya bayangkan. Daya terus mendekapnya hangat, tubuh kaku yang membiru dengan<br>organ vital yang hancur itu adalah putri kecilnya.<br>“sayang, nak, Reina bangun sayang, sekarang kita akan beli kue telur yang banyak untuk<br>Ulang tahun Re, lalu pergi menghadiri acara di gereja kampung utama. Re mau kan sayang”</p>\r\n<p id=\"bkmrk-%C2%A0-3\" class=\"align-left\"></p>\r\n<p id=\"bkmrk-daya-terus-berucap-k\" class=\"align-left\">Daya terus berucap kepada putri kecilnya. Meski tahu bahwa jasad itu tidak akan pernah bangun<br>dan membalas pelukannya. Bahkan Reina tidak pernah dia ajarkan untuk memanggilnya dengan<br>sebutan “Mama” karena takut Reina akan malu karena lahir tanpa ada figur seorang ayah.<br>Tuhan Yesus tempat ini tidak sesuai nama, tidak tebar kasih sampai kepada teman-teman Re,<br>berkati orang yang melahirkan Re, Yang tulus mencintai Re, Beri dia tempat terbaik disisiMu<br>Tuhan. Re belum pintar menulis, mbak Daya baru mengajarkan sampai sini. Mbak Daya bilang<br>Re cepat pintar dan faham. Berkati selalu Re dengan otak Yang pintar seperti mbak Daya. Mbak<br>Daya, Re selalu cintakan mbak. Terus sehat dan makan enak mbak. Re ingin pulang duluan,<br>Karena Tuhan ingin menjemput dan Re juga ingin ikut. Terimakasi mbak Daya.<br>Note: do not eat, child-grooming, pedofilia, disturbing, triggering and more traumatized<br>Panti asuhan Tebar kasih–yang bahkan tidak menebar kasih, dan tanpa asuhan.</p>','Aksara Mentari.\r\nTEBAR KASIHYuni AlifiaJln. Tabah Guyar, kampung kawah api. 15 Juni 2009\r\n“Baring dan buka bajumu” Re--anak perempuan yang menjalani hidup hampir genap 8tahun itu menutup mata dengan-masih berusaha melonggarkan kain yang membaluti tubuhmungilnya. Matanya tak lagi menyuarkan bercak air, hampir setiap pukul 9.00 malam, di hariahad, akan seperti ini. Bapak—orang yang memiliki peran utama dalam ruang kasih yangdidirikan, selalu mencuri masa agar bisa menyantap Re. Disaksikan bingkai dengan gambar sucituhan-Bapa didalamnya. Waktu bergulir begitu lambat, seakan mendukung bejatnya binatangyang sudah berhasil melucuti hak otoritas dari tubuh Re.“Kasi desah dong lacur, dasar bocah sialan”. Mulut bau tembakau bercampur denganjigong dan gigi berlapis tidak pernah tersisir sikat gigi itu menyuarkan sesalnya pada Re. Bahkansejak kali pertama meraba hingga pada tahap berani merampas kesucian dari tubuhnya, Re tidakpernah membuka mulut bahkan bersuara nakal seperti yang Bapak minta. Hanya tangisan piludihiasi memar membiru pada area privasinya.“hmm, legit, bapak suka sekali tubuh kamu ini, minggu depan sudah harus sampai duluanke sini ya, jangan buat bapak nunggu”Setelah bercakap seperti itu, bapak-biadab itu pergi meninggalkan Re yang terbaring lemah,dengan lelehan sperma yang berlomba keluar dari area kewanitaannya. Sakit-perih, bahkan Reberfikir area itu hancur.“Reina! Re! Reina!”Disisi lain gedung terdengar jeritan perempuan dewasa memanggilnya, Re bangkit terdudukdengan berusaha memunguti gaun lusuh bergambar Bunga aster khas anak-anak seusianya. Rememberikan usapan lembut pada rambut hitam legam yang sudah lama tidak dia beri sampo.Bahkan Re tidak ingat kapan terakhir kali dia menyentuh air untuk membersihkan tubuhnya.“Re! Re! Reina!”Daya, satu-satunya penghuni perempuan dewasa di panti itu, yang ditugaskan dalam menjagadan mengawasi para penghuni lainnya— terutama dalam urusan perut dan kebersihan.\r\n\r\n“Mbak kenapa?”. Suara khas yang sangat Daya kenali menyapa indera pendengarannya,tubuhnya memutar, dengan langkah cepat dan perasaan cemas—bercampur lega menyelimuti.Daya memeluknya erat, dan dibalas Re tidak kalah erat, bahkan dia merintih, pilu bercampursesak yang Re rasakan membuncah seketika, dia tidak berdaya, dia lemah, dia sakit, dia hancur.Daya yang merasakan gelenyar aneh dari Re—dengan perlahan memundurkan tubuh Re.“kenapa sayang?, mbak udah disini. Reina udah kemana aja tadi sayang, mbak takutsekali” sembari membelai lembut helai rambut Re yang sedikit berantakan.“Re takut mbak, Re ingin pulang, Re ndak kuat, Re takut sekali”. Tubuh mungil itubergetar hebat, gaun putih selutut dengan motif bunga aster lusuh terbalut ditubunya–sepertisudah dipakai seharian yang diremat kuat. Rintihan tangisnya diredam Dengan menenggelamkankepalanya di perut mbak Daya. Pilu tangisnya terasa, bagi setiap yang mendengarnya. Usapanlembut disalurkan mbak Daya untuk menguatkan Re agar menghentikan tangisnyaDaya—yang dipanggil mbak oleh hampir seluruh penghuni panti asuhan tebar kasih kinimenuntun Re menjauh dari area kamar yang terhubung dengan rumah utama pemilik panti, yaitubapak dan mama. Pasangan dengan seribu wajah penuh kebejatan. Tidak banyak yang tahukecuali para penghuni panti dan segelintir tetangga—dengan perbandingan jarak bangunan yangcukup jauh. Daya memberikan satu gelas air untuk Re minum, dia memberi usapan lembut pada kepalabocah umur 8 tahun itu, bercak air mulai berlomba keluar menuruni jalur pipi kurusnya. Retercekat, dia benar-benar sekarat sekarang, sangat sakit untuknya menerima fakta bahwa diatidak berharga, semenjak 1.825 hari dihidupnya, Re ingin menyerah detik ini juga, Re ingin matidalam dekapan Tuhan. Re mendongak setelah selesai pada acara minumnya yang mengundangsayatan baru pada hati mbak Daya. “sekarang coba ngomong pelan-pelan, kamu habis ngapain di gudang itu?” “Apa Tuhan sangat tidak mencintai Re mbak Daya?” “Re?”Daya memberi dekapan kepadanya, meski anak itu hanya menangis dan tidak bicara setelahditanyai olehnya. Tuhan, bagaimana semua ini akan berakhir, bagaimana seorang anak kecil bisaberfikir sejauh ini–fikirnya.Setelah memastikan Reina terlelap sempurna, Daya memberanikan diri menuju rumahutama yang dihuni oleh dua orang yang mereka anggap sebagai orang tua mereka, disana dia\r\n\r\ntinggal, dan dihancurkan. Daya menjadi anak adopsi di keluarga ini sejak usianya menginjakangka ke-3, dijadikan bahan pancingan agar sang mama memiliki momongan dengan segera.Di dalam bayangan Daya saat itu, Bapak dan Mama merupakan figur malaikat yangdikirim Tuhan untuknya, segala yang anak itu inginkan awalnya terpenuhi, dan dibanjiri kasihdan cinta. Namun semua berubah ketika dia menginjak usia yang ke-5. Di malam setelah pestaulang tahunnya dirayakan, figur ayah yang dia panggil bapak memasuki kamarnya, tanpa sehelaibenang yang membaluti tubuhnya, bapak telanjang seperti orang gila yang kehilangan akalsehat—Daya gemetar ketakutan, suara tangisannya bahkan tak terdengar, tercekal, tubuh kecil ituterlonjak, remuk dan lebur terasa pada tulang punggungnya, Daya belum faham, bapakmelecehkannya, merobek sisa kehidupan yang menjadi letak kehormatannya.Tubuhnya terhuyung hingga membentur dinding dipan, meneriaki satu nama yang diasangka akan segera meraihnya dan membawa dia pergi menjauh dari kegiatan bejat sang bapakangkat.“Mama..minta tolong, Daya sakit!”“Mama!”“Mama!”Panggilan itu dia lontarkan sebanyak yang dia bisa, tapi nihil, sang mama dilain dimensi ruangsedang asyik dengan pria simpanannya juga, mencumbu tanpa henti bahkan hingga fajar terganti.Bapak—biadab itu masih terus menyetubuhi Daya, nafasnya tersenggal, bau tembakaubercampur alkohol menguar dari mulut rakusnya, wajahnya penuh peluh, dengan sperma yangtercecer pada dinding kamar Daya. Desahan kotor terus dilantunkan guna memuaskan hasratbejatnya.Daya terbangun dengan peluh yang menghiasi wajah dan tubuhnya, dia bermimpi—lagi,sejak kejadian itu hingga usianya menginjak 28 tahun Daya tidak lagi dapat terlelap tenang.Selalu–dengan kejadian Yang Sama. Dia bangkit dan melirik ke arah jendela kayu kamar itu,masih subuh—fikirnya. Daya mempersiapkan diri sebelum pergi ke pasar soang untuk membelibahan masakan yang akan diberikan kepada 35 anak panti. Sebelum keluar dengan sepeda bututyang dia beli di saudagar loak, kakinya melangkah menuju kamar tempat Reina singgah.“Maya ada lihat Reina?”“Tidak mbak, sejak kemarin malam sudah tidak di kasurnya”\r\n\r\nDaya terbelalak, tepat pukul sepuluh malam kemarin, dia mengantarkan Reina menujukamar ini, dan melihat Reina terlelap damai dalam tidurnya. Bahkan teman sekamar Remengatakan tidak pernah menemukan Reina sejak malam tadi.“kemarin malam mbak yang antar Reina kesini, kalian juga tidur disini, Maya lihat mbakmasuk dan nyalain saklar lampu kan sayang?”“Iya mbak Daya, tapi mbak ngomong sendiri, dan ndak lagi sama siapa-siapa”“Maya kasi tau ke Sedah subuh tadi kalau mbak Daya seperti orang mengigau”Daya menutup mulutnya rapat, lalu Reina, anak itu dimana sekarang. Apakah ini mimpi,bangungkan Daya untuk mencerna fakta bahwa anaknya—Reina yang dia bawa ke kamar ini,tertidur damai selepas menangis dalam dekapannya.“sekarang Maya, Sedah sama Rita tolong mbak Daya buat cari Reina ya sayang”Mereka berempat terus mencari, mengelilingi bangunan utama hingga taman yang lebihterlihat seperti gurun, tanaman bahkan enggan hidup di tanah penuh kepalsuan ini. Hanya satuyang belum Daya telusuri, yaitu gudang kumuh dekat sawah yang letaknya sering dia sebut titikbuta. Daya tinggal di rumah ini tidak sebentar, gudang itu menjadi tempat paling dilarang dipanti asuhan ini, lalu untuk apa Re berada disana—fikirnya. Namun, insting seorang Ibu tidakpernah melesat, walaupun tahu akan mendapat hukuman berat setelahnya, Daya tidak lagi pedulipada laki-laki bejat itu, dia akan menemukan buah hatinya.Langkah yang semakin berat, jantung yang semakin terpompa asal mengikuti tempoperasaannya, Daya terisak, menggigiti bagian dalam pipinya untuk yang kesekian kalinya, diameraung, mencakar pintu kayu sialan yang menghalanginya. Putrinya Re—terbaring tanpabusana, dengan alat kelamin yang hancur, mulut berbusa dan mata lebam, raganya terlentangtepat disamping kertas foto yang dia remat. Tuhan—itu Tuhan yesus, dalam genggaman tangankecilnya, yang mungkin menahan sakit selama waktu yang tidak ditentukan.Daya menggeleng hebat, tidak percaya putri tunggalnya akan mengalami hal serupadengan masa kecilnya, Raga mungil tidak berdosa itu pasti sangat tidak kuat dalam menahansakit yang dia terima, Tuhan mengambilnya tepat di hari kelahirannya, dalam keadaan yang tidakpernah Daya bayangkan. Daya terus mendekapnya hangat, tubuh kaku yang membiru denganorgan vital yang hancur itu adalah putri kecilnya.“sayang, nak, Reina bangun sayang, sekarang kita akan beli kue telur yang banyak untukUlang tahun Re, lalu pergi menghadiri acara di gereja kampung utama. Re mau kan sayang”\r\n\r\nDaya terus berucap kepada putri kecilnya. Meski tahu bahwa jasad itu tidak akan pernah bangundan membalas pelukannya. Bahkan Reina tidak pernah dia ajarkan untuk memanggilnya dengansebutan “Mama” karena takut Reina akan malu karena lahir tanpa ada figur seorang ayah.Tuhan Yesus tempat ini tidak sesuai nama, tidak tebar kasih sampai kepada teman-teman Re,berkati orang yang melahirkan Re, Yang tulus mencintai Re, Beri dia tempat terbaik disisiMuTuhan. Re belum pintar menulis, mbak Daya baru mengajarkan sampai sini. Mbak Daya bilangRe cepat pintar dan faham. Berkati selalu Re dengan otak Yang pintar seperti mbak Daya. MbakDaya, Re selalu cintakan mbak. Terus sehat dan makan enak mbak. Re ingin pulang duluan,Karena Tuhan ingin menjemput dan Re juga ingin ikut. Terimakasi mbak Daya.Note: do not eat, child-grooming, pedofilia, disturbing, triggering and more traumatizedPanti asuhan Tebar kasih–yang bahkan tidak menebar kasih, dan tanpa asuhan.',1,'2025-07-18 17:11:03','2025-07-18 17:11:03','panti-asuhan-tebar-kasih-yang-bahkan-tidak-memberi-kasih-dan-tanpa-asuhan','panti-asuhan-tebar-kasih-yang-bahkan-tidak-memberi-kasih-dan-tanpa-asuhan','version','','',4);
/*!40000 ALTER TABLE `page_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `book_id` int(11) NOT NULL,
  `chapter_id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `html` longtext NOT NULL,
  `text` longtext NOT NULL,
  `priority` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `draft` tinyint(1) NOT NULL DEFAULT 0,
  `markdown` longtext NOT NULL DEFAULT '',
  `revision_count` int(11) NOT NULL,
  `template` tinyint(1) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `owned_by` int(10) unsigned NOT NULL,
  `editor` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `pages_slug_index` (`slug`),
  KEY `pages_book_id_index` (`book_id`),
  KEY `pages_chapter_id_index` (`chapter_id`),
  KEY `pages_priority_index` (`priority`),
  KEY `pages_created_by_index` (`created_by`),
  KEY `pages_updated_by_index` (`updated_by`),
  KEY `pages_draft_index` (`draft`),
  KEY `pages_template_index` (`template`),
  KEY `pages_owned_by_index` (`owned_by`),
  KEY `pages_updated_at_index` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,1,0,'New Page','','','',0,'2025-07-18 00:00:58','2025-07-18 16:43:34',1,1,1,'',0,0,'2025-07-18 16:43:34',1,'wysiwyg'),(2,2,0,'New Page','new-page','','',2,'2025-07-18 16:46:39','2025-07-18 16:58:26',1,1,0,'',1,0,'2025-07-18 16:58:26',1,'wysiwyg'),(3,3,0,'Panti asuhan Tebar kasih-yang bahkan tidak memberi kasih, dan tanpa asuhan','panti-asuhan-tebar-kasih-yang-bahkan-tidak-memberi-kasih-dan-tanpa-asuhan','<p id=\"bkmrk-aksara-mentari.\" class=\"align-left\">Aksara Mentari.</p>\r\n<p id=\"bkmrk-tebar-kasihyuni-alif\" class=\"align-left\"><br>TEBAR KASIH<br>Yuni Alifia<br>Jln. Tabah Guyar, kampung kawah api. 15 Juni 2009</p>\r\n<p id=\"bkmrk-%E2%80%9Cbaring-dan-buka-baj\" class=\"align-left\"><br>“Baring dan buka bajumu” Re--anak perempuan yang menjalani hidup hampir genap 8<br>tahun itu menutup mata dengan-masih berusaha melonggarkan kain yang membaluti tubuh<br>mungilnya. Matanya tak lagi menyuarkan bercak air, hampir setiap pukul 9.00 malam, di hari<br>ahad, akan seperti ini. Bapak—orang yang memiliki peran utama dalam ruang kasih yang<br>didirikan, selalu mencuri masa agar bisa menyantap Re. Disaksikan bingkai dengan gambar suci<br>tuhan-Bapa didalamnya. Waktu bergulir begitu lambat, seakan mendukung bejatnya binatang<br>yang sudah berhasil melucuti hak otoritas dari tubuh Re.<br>“Kasi desah dong lacur, dasar bocah sialan”. Mulut bau tembakau bercampur dengan<br>jigong dan gigi berlapis tidak pernah tersisir sikat gigi itu menyuarkan sesalnya pada Re. Bahkan<br>sejak kali pertama meraba hingga pada tahap berani merampas kesucian dari tubuhnya, Re tidak<br>pernah membuka mulut bahkan bersuara nakal seperti yang Bapak minta. Hanya tangisan pilu<br>dihiasi memar membiru pada area privasinya.<br>“hmm, legit, bapak suka sekali tubuh kamu ini, minggu depan sudah harus sampai duluan<br>ke sini ya, jangan buat bapak nunggu”<br>Setelah bercakap seperti itu, bapak-biadab itu pergi meninggalkan Re yang terbaring lemah,<br>dengan lelehan sperma yang berlomba keluar dari area kewanitaannya. Sakit-perih, bahkan Re<br>berfikir area itu hancur.<br>“Reina! Re! Reina!”<br>Disisi lain gedung terdengar jeritan perempuan dewasa memanggilnya, Re bangkit terduduk<br>dengan berusaha memunguti gaun lusuh bergambar Bunga aster khas anak-anak seusianya. Re<br>memberikan usapan lembut pada rambut hitam legam yang sudah lama tidak dia beri sampo.<br>Bahkan Re tidak ingat kapan terakhir kali dia menyentuh air untuk membersihkan tubuhnya.<br>“Re! Re! Reina!”<br>Daya, satu-satunya penghuni perempuan dewasa di panti itu, yang ditugaskan dalam menjaga<br>dan mengawasi para penghuni lainnya— terutama dalam urusan perut dan kebersihan.</p>\r\n<p id=\"bkmrk-%C2%A0\" class=\"align-left\"></p>\r\n<p id=\"bkmrk-%E2%80%9Cmbak-kenapa%3F%E2%80%9D.-suar\" class=\"align-left\">“Mbak kenapa?”. Suara khas yang sangat Daya kenali menyapa indera pendengarannya,<br>tubuhnya memutar, dengan langkah cepat dan perasaan cemas—bercampur lega menyelimuti.<br>Daya memeluknya erat, dan dibalas Re tidak kalah erat, bahkan dia merintih, pilu bercampur<br>sesak yang Re rasakan membuncah seketika, dia tidak berdaya, dia lemah, dia sakit, dia hancur.<br>Daya yang merasakan gelenyar aneh dari Re—dengan perlahan memundurkan tubuh Re.<br>“kenapa sayang?, mbak udah disini. Reina udah kemana aja tadi sayang, mbak takut<br>sekali” sembari membelai lembut helai rambut Re yang sedikit berantakan.<br>“Re takut mbak, Re ingin pulang, Re ndak kuat, Re takut sekali”. Tubuh mungil itu<br>bergetar hebat, gaun putih selutut dengan motif bunga aster lusuh terbalut ditubunya–seperti<br>sudah dipakai seharian yang diremat kuat. Rintihan tangisnya diredam Dengan menenggelamkan<br>kepalanya di perut mbak Daya. Pilu tangisnya terasa, bagi setiap yang mendengarnya. Usapan<br>lembut disalurkan mbak Daya untuk menguatkan Re agar menghentikan tangisnya<br>Daya—yang dipanggil mbak oleh hampir seluruh penghuni panti asuhan tebar kasih kini<br>menuntun Re menjauh dari area kamar yang terhubung dengan rumah utama pemilik panti, yaitu<br>bapak dan mama. Pasangan dengan seribu wajah penuh kebejatan. Tidak banyak yang tahu<br>kecuali para penghuni panti dan segelintir tetangga—dengan perbandingan jarak bangunan yang<br>cukup jauh.<br>&nbsp;Daya memberikan satu gelas air untuk Re minum, dia memberi usapan lembut pada kepala<br>bocah umur 8 tahun itu, bercak air mulai berlomba keluar menuruni jalur pipi kurusnya. Re<br>tercekat, dia benar-benar sekarat sekarang, sangat sakit untuknya menerima fakta bahwa dia<br>tidak berharga, semenjak 1.825 hari dihidupnya, Re ingin menyerah detik ini juga, Re ingin mati<br>dalam dekapan Tuhan. Re mendongak setelah selesai pada acara minumnya yang mengundang<br>sayatan baru pada hati mbak Daya.<br>&nbsp;“sekarang coba ngomong pelan-pelan, kamu habis ngapain di gudang itu?”<br>&nbsp;“Apa Tuhan sangat tidak mencintai Re mbak Daya?”<br>&nbsp;“Re?”<br>Daya memberi dekapan kepadanya, meski anak itu hanya menangis dan tidak bicara setelah<br>ditanyai olehnya. Tuhan, bagaimana semua ini akan berakhir, bagaimana seorang anak kecil bisa<br>berfikir sejauh ini–fikirnya.<br>Setelah memastikan Reina terlelap sempurna, Daya memberanikan diri menuju rumah<br>utama yang dihuni oleh dua orang yang mereka anggap sebagai orang tua mereka, disana dia</p>\r\n<p id=\"bkmrk-%C2%A0-1\" class=\"align-left\"></p>\r\n<p id=\"bkmrk-tinggal%2C-dan-dihancu\" class=\"align-left\">tinggal, dan dihancurkan. Daya menjadi anak adopsi di keluarga ini sejak usianya menginjak<br>angka ke-3, dijadikan bahan pancingan agar sang mama memiliki momongan dengan segera.<br>Di dalam bayangan Daya saat itu, Bapak dan Mama merupakan figur malaikat yang<br>dikirim Tuhan untuknya, segala yang anak itu inginkan awalnya terpenuhi, dan dibanjiri kasih<br>dan cinta. Namun semua berubah ketika dia menginjak usia yang ke-5. Di malam setelah pesta<br>ulang tahunnya dirayakan, figur ayah yang dia panggil bapak memasuki kamarnya, tanpa sehelai<br>benang yang membaluti tubuhnya, bapak telanjang seperti orang gila yang kehilangan akal<br>sehat—Daya gemetar ketakutan, suara tangisannya bahkan tak terdengar, tercekal, tubuh kecil itu<br>terlonjak, remuk dan lebur terasa pada tulang punggungnya, Daya belum faham, bapak<br>melecehkannya, merobek sisa kehidupan yang menjadi letak kehormatannya.<br>Tubuhnya terhuyung hingga membentur dinding dipan, meneriaki satu nama yang dia<br>sangka akan segera meraihnya dan membawa dia pergi menjauh dari kegiatan bejat sang bapak<br>angkat.<br>“Mama..minta tolong, Daya sakit!”<br>“Mama!”<br>“Mama!”<br>Panggilan itu dia lontarkan sebanyak yang dia bisa, tapi nihil, sang mama dilain dimensi ruang<br>sedang asyik dengan pria simpanannya juga, mencumbu tanpa henti bahkan hingga fajar terganti.<br>Bapak—biadab itu masih terus menyetubuhi Daya, nafasnya tersenggal, bau tembakau<br>bercampur alkohol menguar dari mulut rakusnya, wajahnya penuh peluh, dengan sperma yang<br>tercecer pada dinding kamar Daya. Desahan kotor terus dilantunkan guna memuaskan hasrat<br>bejatnya.<br>Daya terbangun dengan peluh yang menghiasi wajah dan tubuhnya, dia bermimpi—lagi,<br>sejak kejadian itu hingga usianya menginjak 28 tahun Daya tidak lagi dapat terlelap tenang.<br>Selalu–dengan kejadian Yang Sama. Dia bangkit dan melirik ke arah jendela kayu kamar itu,<br>masih subuh—fikirnya. Daya mempersiapkan diri sebelum pergi ke pasar soang untuk membeli<br>bahan masakan yang akan diberikan kepada 35 anak panti. Sebelum keluar dengan sepeda butut<br>yang dia beli di saudagar loak, kakinya melangkah menuju kamar tempat Reina singgah.<br>“Maya ada lihat Reina?”<br>“Tidak mbak, sejak kemarin malam sudah tidak di kasurnya”</p>\r\n<p id=\"bkmrk-%C2%A0-2\" class=\"align-left\"></p>\r\n<p id=\"bkmrk-daya-terbelalak%2C-tep\" class=\"align-left\">Daya terbelalak, tepat pukul sepuluh malam kemarin, dia mengantarkan Reina menuju<br>kamar ini, dan melihat Reina terlelap damai dalam tidurnya. Bahkan teman sekamar Re<br>mengatakan tidak pernah menemukan Reina sejak malam tadi.<br>“kemarin malam mbak yang antar Reina kesini, kalian juga tidur disini, Maya lihat mbak<br>masuk dan nyalain saklar lampu kan sayang?”<br>“Iya mbak Daya, tapi mbak ngomong sendiri, dan ndak lagi sama siapa-siapa”<br>“Maya kasi tau ke Sedah subuh tadi kalau mbak Daya seperti orang mengigau”<br>Daya menutup mulutnya rapat, lalu Reina, anak itu dimana sekarang. Apakah ini mimpi,<br>bangungkan Daya untuk mencerna fakta bahwa anaknya—Reina yang dia bawa ke kamar ini,<br>tertidur damai selepas menangis dalam dekapannya.<br>“sekarang Maya, Sedah sama Rita tolong mbak Daya buat cari Reina ya sayang”<br>Mereka berempat terus mencari, mengelilingi bangunan utama hingga taman yang lebih<br>terlihat seperti gurun, tanaman bahkan enggan hidup di tanah penuh kepalsuan ini. Hanya satu<br>yang belum Daya telusuri, yaitu gudang kumuh dekat sawah yang letaknya sering dia sebut titik<br>buta. Daya tinggal di rumah ini tidak sebentar, gudang itu menjadi tempat paling dilarang di<br>panti asuhan ini, lalu untuk apa Re berada disana—fikirnya. Namun, insting seorang Ibu tidak<br>pernah melesat, walaupun tahu akan mendapat hukuman berat setelahnya, Daya tidak lagi peduli<br>pada laki-laki bejat itu, dia akan menemukan buah hatinya.<br>Langkah yang semakin berat, jantung yang semakin terpompa asal mengikuti tempo<br>perasaannya, Daya terisak, menggigiti bagian dalam pipinya untuk yang kesekian kalinya, dia<br>meraung, mencakar pintu kayu sialan yang menghalanginya. Putrinya Re—terbaring tanpa<br>busana, dengan alat kelamin yang hancur, mulut berbusa dan mata lebam, raganya terlentang<br>tepat disamping kertas foto yang dia remat. Tuhan—itu Tuhan yesus, dalam genggaman tangan<br>kecilnya, yang mungkin menahan sakit selama waktu yang tidak ditentukan.<br>Daya menggeleng hebat, tidak percaya putri tunggalnya akan mengalami hal serupa<br>dengan masa kecilnya, Raga mungil tidak berdosa itu pasti sangat tidak kuat dalam menahan<br>sakit yang dia terima, Tuhan mengambilnya tepat di hari kelahirannya, dalam keadaan yang tidak<br>pernah Daya bayangkan. Daya terus mendekapnya hangat, tubuh kaku yang membiru dengan<br>organ vital yang hancur itu adalah putri kecilnya.<br>“sayang, nak, Reina bangun sayang, sekarang kita akan beli kue telur yang banyak untuk<br>Ulang tahun Re, lalu pergi menghadiri acara di gereja kampung utama. Re mau kan sayang”</p>\r\n<p id=\"bkmrk-%C2%A0-3\" class=\"align-left\"></p>\r\n<p id=\"bkmrk-daya-terus-berucap-k\" class=\"align-left\">Daya terus berucap kepada putri kecilnya. Meski tahu bahwa jasad itu tidak akan pernah bangun<br>dan membalas pelukannya. Bahkan Reina tidak pernah dia ajarkan untuk memanggilnya dengan<br>sebutan “Mama” karena takut Reina akan malu karena lahir tanpa ada figur seorang ayah.<br>Tuhan Yesus tempat ini tidak sesuai nama, tidak tebar kasih sampai kepada teman-teman Re,<br>berkati orang yang melahirkan Re, Yang tulus mencintai Re, Beri dia tempat terbaik disisiMu<br>Tuhan. Re belum pintar menulis, mbak Daya baru mengajarkan sampai sini. Mbak Daya bilang<br>Re cepat pintar dan faham. Berkati selalu Re dengan otak Yang pintar seperti mbak Daya. Mbak<br>Daya, Re selalu cintakan mbak. Terus sehat dan makan enak mbak. Re ingin pulang duluan,<br>Karena Tuhan ingin menjemput dan Re juga ingin ikut. Terimakasi mbak Daya.<br>Note: do not eat, child-grooming, pedofilia, disturbing, triggering and more traumatized<br>Panti asuhan Tebar kasih–yang bahkan tidak menebar kasih, dan tanpa asuhan.</p>','Aksara Mentari.\r\nTEBAR KASIHYuni AlifiaJln. Tabah Guyar, kampung kawah api. 15 Juni 2009\r\n“Baring dan buka bajumu” Re--anak perempuan yang menjalani hidup hampir genap 8tahun itu menutup mata dengan-masih berusaha melonggarkan kain yang membaluti tubuhmungilnya. Matanya tak lagi menyuarkan bercak air, hampir setiap pukul 9.00 malam, di hariahad, akan seperti ini. Bapak—orang yang memiliki peran utama dalam ruang kasih yangdidirikan, selalu mencuri masa agar bisa menyantap Re. Disaksikan bingkai dengan gambar sucituhan-Bapa didalamnya. Waktu bergulir begitu lambat, seakan mendukung bejatnya binatangyang sudah berhasil melucuti hak otoritas dari tubuh Re.“Kasi desah dong lacur, dasar bocah sialan”. Mulut bau tembakau bercampur denganjigong dan gigi berlapis tidak pernah tersisir sikat gigi itu menyuarkan sesalnya pada Re. Bahkansejak kali pertama meraba hingga pada tahap berani merampas kesucian dari tubuhnya, Re tidakpernah membuka mulut bahkan bersuara nakal seperti yang Bapak minta. Hanya tangisan piludihiasi memar membiru pada area privasinya.“hmm, legit, bapak suka sekali tubuh kamu ini, minggu depan sudah harus sampai duluanke sini ya, jangan buat bapak nunggu”Setelah bercakap seperti itu, bapak-biadab itu pergi meninggalkan Re yang terbaring lemah,dengan lelehan sperma yang berlomba keluar dari area kewanitaannya. Sakit-perih, bahkan Reberfikir area itu hancur.“Reina! Re! Reina!”Disisi lain gedung terdengar jeritan perempuan dewasa memanggilnya, Re bangkit terdudukdengan berusaha memunguti gaun lusuh bergambar Bunga aster khas anak-anak seusianya. Rememberikan usapan lembut pada rambut hitam legam yang sudah lama tidak dia beri sampo.Bahkan Re tidak ingat kapan terakhir kali dia menyentuh air untuk membersihkan tubuhnya.“Re! Re! Reina!”Daya, satu-satunya penghuni perempuan dewasa di panti itu, yang ditugaskan dalam menjagadan mengawasi para penghuni lainnya— terutama dalam urusan perut dan kebersihan.\r\n\r\n“Mbak kenapa?”. Suara khas yang sangat Daya kenali menyapa indera pendengarannya,tubuhnya memutar, dengan langkah cepat dan perasaan cemas—bercampur lega menyelimuti.Daya memeluknya erat, dan dibalas Re tidak kalah erat, bahkan dia merintih, pilu bercampursesak yang Re rasakan membuncah seketika, dia tidak berdaya, dia lemah, dia sakit, dia hancur.Daya yang merasakan gelenyar aneh dari Re—dengan perlahan memundurkan tubuh Re.“kenapa sayang?, mbak udah disini. Reina udah kemana aja tadi sayang, mbak takutsekali” sembari membelai lembut helai rambut Re yang sedikit berantakan.“Re takut mbak, Re ingin pulang, Re ndak kuat, Re takut sekali”. Tubuh mungil itubergetar hebat, gaun putih selutut dengan motif bunga aster lusuh terbalut ditubunya–sepertisudah dipakai seharian yang diremat kuat. Rintihan tangisnya diredam Dengan menenggelamkankepalanya di perut mbak Daya. Pilu tangisnya terasa, bagi setiap yang mendengarnya. Usapanlembut disalurkan mbak Daya untuk menguatkan Re agar menghentikan tangisnyaDaya—yang dipanggil mbak oleh hampir seluruh penghuni panti asuhan tebar kasih kinimenuntun Re menjauh dari area kamar yang terhubung dengan rumah utama pemilik panti, yaitubapak dan mama. Pasangan dengan seribu wajah penuh kebejatan. Tidak banyak yang tahukecuali para penghuni panti dan segelintir tetangga—dengan perbandingan jarak bangunan yangcukup jauh. Daya memberikan satu gelas air untuk Re minum, dia memberi usapan lembut pada kepalabocah umur 8 tahun itu, bercak air mulai berlomba keluar menuruni jalur pipi kurusnya. Retercekat, dia benar-benar sekarat sekarang, sangat sakit untuknya menerima fakta bahwa diatidak berharga, semenjak 1.825 hari dihidupnya, Re ingin menyerah detik ini juga, Re ingin matidalam dekapan Tuhan. Re mendongak setelah selesai pada acara minumnya yang mengundangsayatan baru pada hati mbak Daya. “sekarang coba ngomong pelan-pelan, kamu habis ngapain di gudang itu?” “Apa Tuhan sangat tidak mencintai Re mbak Daya?” “Re?”Daya memberi dekapan kepadanya, meski anak itu hanya menangis dan tidak bicara setelahditanyai olehnya. Tuhan, bagaimana semua ini akan berakhir, bagaimana seorang anak kecil bisaberfikir sejauh ini–fikirnya.Setelah memastikan Reina terlelap sempurna, Daya memberanikan diri menuju rumahutama yang dihuni oleh dua orang yang mereka anggap sebagai orang tua mereka, disana dia\r\n\r\ntinggal, dan dihancurkan. Daya menjadi anak adopsi di keluarga ini sejak usianya menginjakangka ke-3, dijadikan bahan pancingan agar sang mama memiliki momongan dengan segera.Di dalam bayangan Daya saat itu, Bapak dan Mama merupakan figur malaikat yangdikirim Tuhan untuknya, segala yang anak itu inginkan awalnya terpenuhi, dan dibanjiri kasihdan cinta. Namun semua berubah ketika dia menginjak usia yang ke-5. Di malam setelah pestaulang tahunnya dirayakan, figur ayah yang dia panggil bapak memasuki kamarnya, tanpa sehelaibenang yang membaluti tubuhnya, bapak telanjang seperti orang gila yang kehilangan akalsehat—Daya gemetar ketakutan, suara tangisannya bahkan tak terdengar, tercekal, tubuh kecil ituterlonjak, remuk dan lebur terasa pada tulang punggungnya, Daya belum faham, bapakmelecehkannya, merobek sisa kehidupan yang menjadi letak kehormatannya.Tubuhnya terhuyung hingga membentur dinding dipan, meneriaki satu nama yang diasangka akan segera meraihnya dan membawa dia pergi menjauh dari kegiatan bejat sang bapakangkat.“Mama..minta tolong, Daya sakit!”“Mama!”“Mama!”Panggilan itu dia lontarkan sebanyak yang dia bisa, tapi nihil, sang mama dilain dimensi ruangsedang asyik dengan pria simpanannya juga, mencumbu tanpa henti bahkan hingga fajar terganti.Bapak—biadab itu masih terus menyetubuhi Daya, nafasnya tersenggal, bau tembakaubercampur alkohol menguar dari mulut rakusnya, wajahnya penuh peluh, dengan sperma yangtercecer pada dinding kamar Daya. Desahan kotor terus dilantunkan guna memuaskan hasratbejatnya.Daya terbangun dengan peluh yang menghiasi wajah dan tubuhnya, dia bermimpi—lagi,sejak kejadian itu hingga usianya menginjak 28 tahun Daya tidak lagi dapat terlelap tenang.Selalu–dengan kejadian Yang Sama. Dia bangkit dan melirik ke arah jendela kayu kamar itu,masih subuh—fikirnya. Daya mempersiapkan diri sebelum pergi ke pasar soang untuk membelibahan masakan yang akan diberikan kepada 35 anak panti. Sebelum keluar dengan sepeda bututyang dia beli di saudagar loak, kakinya melangkah menuju kamar tempat Reina singgah.“Maya ada lihat Reina?”“Tidak mbak, sejak kemarin malam sudah tidak di kasurnya”\r\n\r\nDaya terbelalak, tepat pukul sepuluh malam kemarin, dia mengantarkan Reina menujukamar ini, dan melihat Reina terlelap damai dalam tidurnya. Bahkan teman sekamar Remengatakan tidak pernah menemukan Reina sejak malam tadi.“kemarin malam mbak yang antar Reina kesini, kalian juga tidur disini, Maya lihat mbakmasuk dan nyalain saklar lampu kan sayang?”“Iya mbak Daya, tapi mbak ngomong sendiri, dan ndak lagi sama siapa-siapa”“Maya kasi tau ke Sedah subuh tadi kalau mbak Daya seperti orang mengigau”Daya menutup mulutnya rapat, lalu Reina, anak itu dimana sekarang. Apakah ini mimpi,bangungkan Daya untuk mencerna fakta bahwa anaknya—Reina yang dia bawa ke kamar ini,tertidur damai selepas menangis dalam dekapannya.“sekarang Maya, Sedah sama Rita tolong mbak Daya buat cari Reina ya sayang”Mereka berempat terus mencari, mengelilingi bangunan utama hingga taman yang lebihterlihat seperti gurun, tanaman bahkan enggan hidup di tanah penuh kepalsuan ini. Hanya satuyang belum Daya telusuri, yaitu gudang kumuh dekat sawah yang letaknya sering dia sebut titikbuta. Daya tinggal di rumah ini tidak sebentar, gudang itu menjadi tempat paling dilarang dipanti asuhan ini, lalu untuk apa Re berada disana—fikirnya. Namun, insting seorang Ibu tidakpernah melesat, walaupun tahu akan mendapat hukuman berat setelahnya, Daya tidak lagi pedulipada laki-laki bejat itu, dia akan menemukan buah hatinya.Langkah yang semakin berat, jantung yang semakin terpompa asal mengikuti tempoperasaannya, Daya terisak, menggigiti bagian dalam pipinya untuk yang kesekian kalinya, diameraung, mencakar pintu kayu sialan yang menghalanginya. Putrinya Re—terbaring tanpabusana, dengan alat kelamin yang hancur, mulut berbusa dan mata lebam, raganya terlentangtepat disamping kertas foto yang dia remat. Tuhan—itu Tuhan yesus, dalam genggaman tangankecilnya, yang mungkin menahan sakit selama waktu yang tidak ditentukan.Daya menggeleng hebat, tidak percaya putri tunggalnya akan mengalami hal serupadengan masa kecilnya, Raga mungil tidak berdosa itu pasti sangat tidak kuat dalam menahansakit yang dia terima, Tuhan mengambilnya tepat di hari kelahirannya, dalam keadaan yang tidakpernah Daya bayangkan. Daya terus mendekapnya hangat, tubuh kaku yang membiru denganorgan vital yang hancur itu adalah putri kecilnya.“sayang, nak, Reina bangun sayang, sekarang kita akan beli kue telur yang banyak untukUlang tahun Re, lalu pergi menghadiri acara di gereja kampung utama. Re mau kan sayang”\r\n\r\nDaya terus berucap kepada putri kecilnya. Meski tahu bahwa jasad itu tidak akan pernah bangundan membalas pelukannya. Bahkan Reina tidak pernah dia ajarkan untuk memanggilnya dengansebutan “Mama” karena takut Reina akan malu karena lahir tanpa ada figur seorang ayah.Tuhan Yesus tempat ini tidak sesuai nama, tidak tebar kasih sampai kepada teman-teman Re,berkati orang yang melahirkan Re, Yang tulus mencintai Re, Beri dia tempat terbaik disisiMuTuhan. Re belum pintar menulis, mbak Daya baru mengajarkan sampai sini. Mbak Daya bilangRe cepat pintar dan faham. Berkati selalu Re dengan otak Yang pintar seperti mbak Daya. MbakDaya, Re selalu cintakan mbak. Terus sehat dan makan enak mbak. Re ingin pulang duluan,Karena Tuhan ingin menjemput dan Re juga ingin ikut. Terimakasi mbak Daya.Note: do not eat, child-grooming, pedofilia, disturbing, triggering and more traumatizedPanti asuhan Tebar kasih–yang bahkan tidak menebar kasih, dan tanpa asuhan.',2,'2025-07-18 17:00:52','2025-07-18 17:11:03',1,1,0,'',4,1,NULL,1,'wysiwyg');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `role_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(24,2),(25,1),(25,2),(26,1),(26,2),(27,1),(27,2),(28,1),(28,2),(29,1),(29,2),(30,1),(30,2),(31,1),(31,2),(32,1),(32,2),(33,1),(33,2),(34,1),(34,2),(35,1),(35,2),(36,1),(36,2),(37,1),(37,2),(38,1),(38,2),(39,1),(39,2),(40,1),(40,2),(41,1),(41,2),(42,1),(42,2),(43,1),(43,2),(44,1),(44,2),(45,1),(45,2),(46,1),(46,2),(47,1),(47,2),(48,1),(48,2),(48,3),(48,4),(49,1),(49,2),(49,3),(49,4),(50,1),(50,2),(50,3),(50,4),(51,1),(51,2),(51,3),(51,4),(52,1),(52,2),(52,3),(52,4),(53,1),(53,2),(53,3),(53,4),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(66,2),(66,3),(66,4),(67,1),(67,2),(67,3),(67,4),(68,1),(68,2),(69,1),(69,2),(70,1),(70,2),(71,1),(71,2),(72,1),(72,2),(73,1),(73,2),(74,1),(75,1),(76,1),(76,2),(76,3),(76,4),(77,1),(78,1),(79,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `references`
--

DROP TABLE IF EXISTS `references`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `references` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_id` int(10) unsigned NOT NULL,
  `from_type` varchar(25) NOT NULL,
  `to_id` int(10) unsigned NOT NULL,
  `to_type` varchar(25) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `references_from_id_index` (`from_id`),
  KEY `references_from_type_index` (`from_type`),
  KEY `references_to_id_index` (`to_id`),
  KEY `references_to_type_index` (`to_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `references`
--

LOCK TABLES `references` WRITE;
/*!40000 ALTER TABLE `references` DISABLE KEYS */;
/*!40000 ALTER TABLE `references` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permissions`
--

DROP TABLE IF EXISTS `role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permissions`
--

LOCK TABLES `role_permissions` WRITE;
/*!40000 ALTER TABLE `role_permissions` DISABLE KEYS */;
INSERT INTO `role_permissions` VALUES (19,'settings-manage','Manage Settings',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(20,'users-manage','Manage Users',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(21,'user-roles-manage','Manage Roles & Permissions',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(22,'restrictions-manage-all','Manage All Entity Permissions',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(23,'restrictions-manage-own','Manage Entity Permissions On Own Content',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(24,'book-create-all','Create All Books',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(25,'book-create-own','Create Own Books',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(26,'book-update-all','Update All Books',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(27,'book-update-own','Update Own Books',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(28,'book-delete-all','Delete All Books',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(29,'book-delete-own','Delete Own Books',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(30,'page-create-all','Create All Pages',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(31,'page-create-own','Create Own Pages',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(32,'page-update-all','Update All Pages',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(33,'page-update-own','Update Own Pages',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(34,'page-delete-all','Delete All Pages',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(35,'page-delete-own','Delete Own Pages',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(36,'chapter-create-all','Create All Chapters',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(37,'chapter-create-own','Create Own Chapters',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(38,'chapter-update-all','Update All Chapters',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(39,'chapter-update-own','Update Own Chapters',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(40,'chapter-delete-all','Delete All Chapters',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(41,'chapter-delete-own','Delete Own Chapters',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(42,'image-create-all','Create All Images',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(43,'image-create-own','Create Own Images',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(44,'image-update-all','Update All Images',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(45,'image-update-own','Update Own Images',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(46,'image-delete-all','Delete All Images',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(47,'image-delete-own','Delete Own Images',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(48,'book-view-all','View All Books',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(49,'book-view-own','View Own Books',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(50,'page-view-all','View All Pages',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(51,'page-view-own','View Own Pages',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(52,'chapter-view-all','View All Chapters',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(53,'chapter-view-own','View Own Chapters',NULL,'2025-07-17 16:47:21','2025-07-17 16:47:21'),(54,'attachment-create-all','Create All Attachments',NULL,'2025-07-17 16:47:22','2025-07-17 16:47:22'),(55,'attachment-create-own','Create Own Attachments',NULL,'2025-07-17 16:47:22','2025-07-17 16:47:22'),(56,'attachment-update-all','Update All Attachments',NULL,'2025-07-17 16:47:22','2025-07-17 16:47:22'),(57,'attachment-update-own','Update Own Attachments',NULL,'2025-07-17 16:47:22','2025-07-17 16:47:22'),(58,'attachment-delete-all','Delete All Attachments',NULL,'2025-07-17 16:47:22','2025-07-17 16:47:22'),(59,'attachment-delete-own','Delete Own Attachments',NULL,'2025-07-17 16:47:22','2025-07-17 16:47:22'),(60,'comment-create-all','Create All Comments',NULL,'2025-07-17 16:47:22','2025-07-17 16:47:22'),(61,'comment-create-own','Create Own Comments',NULL,'2025-07-17 16:47:22','2025-07-17 16:47:22'),(62,'comment-update-all','Update All Comments',NULL,'2025-07-17 16:47:22','2025-07-17 16:47:22'),(63,'comment-update-own','Update Own Comments',NULL,'2025-07-17 16:47:22','2025-07-17 16:47:22'),(64,'comment-delete-all','Delete All Comments',NULL,'2025-07-17 16:47:22','2025-07-17 16:47:22'),(65,'comment-delete-own','Delete Own Comments',NULL,'2025-07-17 16:47:22','2025-07-17 16:47:22'),(66,'bookshelf-view-all','View All BookShelves',NULL,'2025-07-17 16:47:22','2025-07-17 16:47:22'),(67,'bookshelf-view-own','View Own BookShelves',NULL,'2025-07-17 16:47:22','2025-07-17 16:47:22'),(68,'bookshelf-create-all','Create All BookShelves',NULL,'2025-07-17 16:47:22','2025-07-17 16:47:22'),(69,'bookshelf-create-own','Create Own BookShelves',NULL,'2025-07-17 16:47:22','2025-07-17 16:47:22'),(70,'bookshelf-update-all','Update All BookShelves',NULL,'2025-07-17 16:47:22','2025-07-17 16:47:22'),(71,'bookshelf-update-own','Update Own BookShelves',NULL,'2025-07-17 16:47:22','2025-07-17 16:47:22'),(72,'bookshelf-delete-all','Delete All BookShelves',NULL,'2025-07-17 16:47:22','2025-07-17 16:47:22'),(73,'bookshelf-delete-own','Delete Own BookShelves',NULL,'2025-07-17 16:47:22','2025-07-17 16:47:22'),(74,'templates-manage','Manage Page Templates',NULL,'2025-07-17 16:47:22','2025-07-17 16:47:22'),(75,'access-api','Access system API',NULL,'2025-07-17 16:47:23','2025-07-17 16:47:23'),(76,'content-export','Export Content',NULL,'2025-07-17 16:47:24','2025-07-17 16:47:24'),(77,'editor-change','Change page editor',NULL,'2025-07-17 16:47:25','2025-07-17 16:47:25'),(78,'receive-notifications','Receive & Manage Notifications',NULL,'2025-07-17 16:47:25','2025-07-17 16:47:25'),(79,'content-import','Import Content',NULL,'2025-07-17 16:47:26','2025-07-17 16:47:26');
/*!40000 ALTER TABLE `role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_user`
--

DROP TABLE IF EXISTS `role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_user`
--

LOCK TABLES `role_user` WRITE;
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` VALUES (1,1),(2,4),(4,4);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `display_name` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `system_name` varchar(191) NOT NULL,
  `external_auth_id` varchar(180) NOT NULL DEFAULT '',
  `mfa_enforced` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roles_system_name_index` (`system_name`),
  KEY `roles_external_auth_id_index` (`external_auth_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin','Administrator of the whole application','2025-07-17 16:47:20','2025-07-17 16:47:20','admin','',0),(2,'Editor','User can edit Books, Chapters & Pages','2025-07-17 16:47:20','2025-07-17 16:47:20','','',0),(3,'Viewer','User can view books & their content behind authentication','2025-07-17 16:47:20','2025-07-17 16:47:20','','',0),(4,'Public','The role given to public visitors if allowed','2025-07-17 16:47:21','2025-07-17 16:47:21','public','',0);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_terms`
--

DROP TABLE IF EXISTS `search_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `search_terms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(180) NOT NULL,
  `entity_type` varchar(100) NOT NULL,
  `entity_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `search_terms_term_index` (`term`),
  KEY `search_terms_entity_type_index` (`entity_type`),
  KEY `search_terms_entity_type_entity_id_index` (`entity_type`,`entity_id`),
  KEY `search_terms_score_index` (`score`)
) ENGINE=InnoDB AUTO_INCREMENT=2129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_terms`
--

LOCK TABLES `search_terms` WRITE;
/*!40000 ALTER TABLE `search_terms` DISABLE KEYS */;
INSERT INTO `search_terms` VALUES (1,'Model','book',1,48),(2,'klasifikasi','book',1,48),(3,'penyakit','book',1,48),(4,'jantung','book',1,48),(5,'menggunakan','book',1,48),(6,'regresi','book',1,48),(7,'logistik','book',1,48),(35,'New','page',2,40),(36,'Page','page',2,40),(50,'Panti','book',2,48),(51,'asuhan','book',2,96),(52,'Tebar','book',2,48),(53,'kasih','book',2,96),(54,'yang','book',2,48),(55,'kasih-yang','book',2,48),(56,'bahkan','book',2,48),(57,'tidak','book',2,48),(58,'memberi','book',2,48),(59,'dan','book',2,48),(60,'tanpa','book',2,48),(61,'category','book',2,3),(62,'cerpen','book',2,5),(63,'Panti','book',3,48),(64,'asuhan','book',3,96),(65,'Tebar','book',3,48),(66,'kasih','book',3,96),(67,'yang','book',3,48),(68,'kasih-yang','book',3,48),(69,'bahkan','book',3,48),(70,'tidak','book',3,48),(71,'memberi','book',3,48),(72,'dan','book',3,48),(73,'tanpa','book',3,48),(74,'category','book',3,3),(75,'cerpen','book',3,5),(1336,'Panti','page',3,41),(1337,'asuhan','page',3,84),(1338,'Tebar','page',3,41),(1339,'kasih','page',3,85),(1340,'yang','page',3,94),(1341,'kasih-yang','page',3,40),(1342,'bahkan','page',3,47),(1343,'tidak','page',3,65),(1344,'memberi','page',3,42),(1345,'dan','page',3,66),(1346,'tanpa','page',3,45),(1347,'Aksara','page',3,1),(1348,'Mentari','page',3,1),(1349,'TEBAR','page',3,1),(1350,'KASIH','page',3,1),(1351,'Yuni','page',3,1),(1352,'Alifia','page',3,1),(1353,'Jln','page',3,1),(1354,'Tabah','page',3,1),(1355,'Guyar','page',3,1),(1356,'kampung','page',3,2),(1357,'kawah','page',3,1),(1358,'api','page',3,1),(1359,'15','page',3,1),(1360,'Juni','page',3,1),(1361,'2009','page',3,1),(1362,'“Baring','page',3,1),(1363,'buka','page',3,1),(1364,'bajumu”','page',3,1),(1365,'Re','page',3,40),(1366,'anak','page',3,9),(1367,'-anak','page',3,1),(1368,'perempuan','page',3,3),(1369,'menjalani','page',3,1),(1370,'hidup','page',3,2),(1371,'hampir','page',3,3),(1372,'genap','page',3,1),(1373,'8','page',3,2),(1374,'tahun','page',3,4),(1375,'itu','page',3,23),(1376,'menutup','page',3,2),(1377,'mata','page',3,2),(1378,'dengan','page',3,19),(1379,'masih','page',3,3),(1380,'dengan-masih','page',3,1),(1381,'berusaha','page',3,2),(1382,'melonggarkan','page',3,1),(1383,'kain','page',3,1),(1384,'membaluti','page',3,2),(1385,'tubuh','page',3,6),(1386,'mungilnya','page',3,1),(1387,'Matanya','page',3,1),(1388,'tak','page',3,2),(1389,'lagi','page',3,4),(1390,'menyuarkan','page',3,2),(1391,'bercak','page',3,2),(1392,'air','page',3,4),(1393,'setiap','page',3,2),(1394,'pukul','page',3,2),(1395,'9','page',3,1),(1396,'00','page',3,1),(1397,'9.00','page',3,1),(1398,'malam','page',3,6),(1399,'di','page',3,12),(1400,'hari','page',3,3),(1401,'ahad','page',3,1),(1402,'akan','page',3,10),(1403,'seperti','page',3,7),(1404,'ini','page',3,12),(1405,'Bapak—orang','page',3,1),(1406,'memiliki','page',3,2),(1407,'peran','page',3,1),(1408,'utama','page',3,5),(1409,'dalam','page',3,11),(1410,'ruang','page',3,2),(1411,'didirikan','page',3,1),(1412,'selalu','page',3,3),(1413,'mencuri','page',3,1),(1414,'masa','page',3,2),(1415,'agar','page',3,3),(1416,'bisa','page',3,3),(1417,'menyantap','page',3,1),(1418,'Disaksikan','page',3,1),(1419,'bingkai','page',3,1),(1420,'gambar','page',3,1),(1421,'suci','page',3,1),(1422,'tuhan','page',3,1),(1423,'Bapa','page',3,1),(1424,'tuhan-Bapa','page',3,1),(1425,'didalamnya','page',3,1),(1426,'Waktu','page',3,1),(1427,'bergulir','page',3,1),(1428,'begitu','page',3,1),(1429,'lambat','page',3,1),(1430,'seakan','page',3,1),(1431,'mendukung','page',3,1),(1432,'bejatnya','page',3,2),(1433,'binatang','page',3,1),(1434,'sudah','page',3,5),(1435,'berhasil','page',3,1),(1436,'melucuti','page',3,1),(1437,'hak','page',3,1),(1438,'otoritas','page',3,1),(1439,'dari','page',3,7),(1440,'“Kasi','page',3,1),(1441,'desah','page',3,1),(1442,'dong','page',3,1),(1443,'lacur','page',3,1),(1444,'dasar','page',3,1),(1445,'bocah','page',3,2),(1446,'sialan”','page',3,1),(1447,'Mulut','page',3,1),(1448,'bau','page',3,2),(1449,'tembakau','page',3,2),(1450,'bercampur','page',3,3),(1451,'jigong','page',3,1),(1452,'gigi','page',3,2),(1453,'berlapis','page',3,1),(1454,'pernah','page',3,7),(1455,'tersisir','page',3,1),(1456,'sikat','page',3,1),(1457,'sesalnya','page',3,1),(1458,'pada','page',3,10),(1459,'Bahkan','page',3,4),(1460,'sejak','page',3,5),(1461,'kali','page',3,2),(1462,'pertama','page',3,1),(1463,'meraba','page',3,1),(1464,'hingga','page',3,5),(1465,'tahap','page',3,1),(1466,'berani','page',3,1),(1467,'merampas','page',3,1),(1468,'kesucian','page',3,1),(1469,'tubuhnya','page',3,5),(1470,'membuka','page',3,1),(1471,'mulut','page',3,3),(1472,'bersuara','page',3,1),(1473,'nakal','page',3,1),(1474,'Bapak','page',3,2),(1475,'minta','page',3,2),(1476,'Hanya','page',3,2),(1477,'tangisan','page',3,1),(1478,'pilu','page',3,2),(1479,'dihiasi','page',3,1),(1480,'memar','page',3,1),(1481,'membiru','page',3,2),(1482,'area','page',3,4),(1483,'privasinya','page',3,1),(1484,'“hmm','page',3,1),(1485,'legit','page',3,1),(1486,'bapak','page',3,8),(1487,'suka','page',3,1),(1488,'sekali','page',3,1),(1489,'kamu','page',3,2),(1490,'minggu','page',3,1),(1491,'depan','page',3,1),(1492,'harus','page',3,1),(1493,'sampai','page',3,3),(1494,'duluan','page',3,2),(1495,'ke','page',3,7),(1496,'sini','page',3,2),(1497,'ya','page',3,2),(1498,'jangan','page',3,1),(1499,'buat','page',3,2),(1500,'nunggu”','page',3,1),(1501,'Setelah','page',3,2),(1502,'bercakap','page',3,1),(1503,'biadab','page',3,1),(1504,'bapak-biadab','page',3,1),(1505,'pergi','page',3,4),(1506,'meninggalkan','page',3,1),(1507,'terbaring','page',3,1),(1508,'lemah','page',3,2),(1509,'lelehan','page',3,1),(1510,'sperma','page',3,2),(1511,'berlomba','page',3,2),(1512,'keluar','page',3,3),(1513,'kewanitaannya','page',3,1),(1514,'Sakit','page',3,1),(1515,'perih','page',3,1),(1516,'Sakit-perih','page',3,1),(1517,'berfikir','page',3,2),(1518,'hancur','page',3,4),(1519,'“Reina','page',3,1),(1520,'Reina','page',3,15),(1521,'”','page',3,11),(1522,'Disisi','page',3,1),(1523,'lain','page',3,1),(1524,'gedung','page',3,1),(1525,'terdengar','page',3,2),(1526,'jeritan','page',3,1),(1527,'dewasa','page',3,2),(1528,'memanggilnya','page',3,2),(1529,'bangkit','page',3,2),(1530,'terduduk','page',3,1),(1531,'memunguti','page',3,1),(1532,'gaun','page',3,2),(1533,'lusuh','page',3,2),(1534,'bergambar','page',3,1),(1535,'Bunga','page',3,1),(1536,'aster','page',3,2),(1537,'khas','page',3,2),(1538,'anak-anak','page',3,1),(1539,'seusianya','page',3,1),(1540,'memberikan','page',3,2),(1541,'usapan','page',3,2),(1542,'lembut','page',3,4),(1543,'rambut','page',3,2),(1544,'hitam','page',3,1),(1545,'legam','page',3,1),(1546,'lama','page',3,1),(1547,'dia','page',3,28),(1548,'beri','page',3,1),(1549,'sampo','page',3,1),(1550,'ingat','page',3,1),(1551,'kapan','page',3,1),(1552,'terakhir','page',3,1),(1553,'menyentuh','page',3,1),(1554,'untuk','page',3,9),(1555,'membersihkan','page',3,1),(1556,'“Re','page',3,3),(1557,'Daya','page',3,39),(1558,'satu','page',3,4),(1559,'satunya','page',3,1),(1560,'satu-satunya','page',3,1),(1561,'penghuni','page',3,4),(1562,'panti','page',3,6),(1563,'ditugaskan','page',3,1),(1564,'menjaga','page',3,1),(1565,'mengawasi','page',3,1),(1566,'para','page',3,2),(1567,'lainnya—','page',3,1),(1568,'terutama','page',3,1),(1569,'urusan','page',3,1),(1570,'perut','page',3,2),(1571,'kebersihan','page',3,1),(1572,'“Mbak','page',3,1),(1573,'kenapa','page',3,1),(1574,'Suara','page',3,1),(1575,'sangat','page',3,4),(1576,'kenali','page',3,1),(1577,'menyapa','page',3,1),(1578,'indera','page',3,1),(1579,'pendengarannya','page',3,1),(1580,'memutar','page',3,1),(1581,'langkah','page',3,1),(1582,'cepat','page',3,2),(1583,'perasaan','page',3,1),(1584,'cemas—bercampur','page',3,1),(1585,'lega','page',3,1),(1586,'menyelimuti','page',3,1),(1587,'memeluknya','page',3,1),(1588,'erat','page',3,2),(1589,'dibalas','page',3,1),(1590,'kalah','page',3,1),(1591,'merintih','page',3,1),(1592,'sesak','page',3,1),(1593,'rasakan','page',3,1),(1594,'membuncah','page',3,1),(1595,'seketika','page',3,1),(1596,'berdaya','page',3,1),(1597,'sakit','page',3,5),(1598,'merasakan','page',3,1),(1599,'gelenyar','page',3,1),(1600,'aneh','page',3,1),(1601,'Re—dengan','page',3,1),(1602,'perlahan','page',3,1),(1603,'memundurkan','page',3,1),(1604,'“kenapa','page',3,1),(1605,'sayang','page',3,4),(1606,'mbak','page',3,20),(1607,'udah','page',3,2),(1608,'disini','page',3,2),(1609,'kemana','page',3,1),(1610,'aja','page',3,1),(1611,'tadi','page',3,3),(1612,'takut','page',3,4),(1613,'sekali”','page',3,2),(1614,'sembari','page',3,1),(1615,'membelai','page',3,1),(1616,'helai','page',3,1),(1617,'sedikit','page',3,1),(1618,'berantakan','page',3,1),(1619,'ingin','page',3,6),(1620,'pulang','page',3,2),(1621,'ndak','page',3,2),(1622,'kuat','page',3,3),(1623,'Tubuh','page',3,1),(1624,'mungil','page',3,2),(1625,'bergetar','page',3,1),(1626,'hebat','page',3,2),(1627,'putih','page',3,1),(1628,'selutut','page',3,1),(1629,'motif','page',3,1),(1630,'bunga','page',3,1),(1631,'terbalut','page',3,1),(1632,'ditubunya–seperti','page',3,1),(1633,'dipakai','page',3,1),(1634,'seharian','page',3,1),(1635,'diremat','page',3,1),(1636,'Rintihan','page',3,1),(1637,'tangisnya','page',3,3),(1638,'diredam','page',3,1),(1639,'Dengan','page',3,1),(1640,'menenggelamkan','page',3,1),(1641,'kepalanya','page',3,1),(1642,'Pilu','page',3,1),(1643,'terasa','page',3,2),(1644,'bagi','page',3,1),(1645,'mendengarnya','page',3,1),(1646,'Usapan','page',3,1),(1647,'disalurkan','page',3,1),(1648,'menguatkan','page',3,1),(1649,'menghentikan','page',3,1),(1650,'Daya—yang','page',3,1),(1651,'dipanggil','page',3,1),(1652,'oleh','page',3,2),(1653,'seluruh','page',3,1),(1654,'tebar','page',3,2),(1655,'kini','page',3,1),(1656,'menuntun','page',3,1),(1657,'menjauh','page',3,2),(1658,'kamar','page',3,6),(1659,'terhubung','page',3,1),(1660,'rumah','page',3,3),(1661,'pemilik','page',3,1),(1662,'yaitu','page',3,2),(1663,'mama','page',3,3),(1664,'Pasangan','page',3,1),(1665,'seribu','page',3,1),(1666,'wajah','page',3,2),(1667,'penuh','page',3,3),(1668,'kebejatan','page',3,1),(1669,'Tidak','page',3,1),(1670,'banyak','page',3,2),(1671,'tahu','page',3,3),(1672,'kecuali','page',3,1),(1673,'segelintir','page',3,1),(1674,'tetangga—dengan','page',3,1),(1675,'perbandingan','page',3,1),(1676,'jarak','page',3,1),(1677,'bangunan','page',3,2),(1678,'cukup','page',3,1),(1679,'jauh','page',3,1),(1680,'gelas','page',3,1),(1681,'minum','page',3,1),(1682,'kepala','page',3,1),(1683,'umur','page',3,1),(1684,'mulai','page',3,1),(1685,'menuruni','page',3,1),(1686,'jalur','page',3,1),(1687,'pipi','page',3,1),(1688,'kurusnya','page',3,1),(1689,'tercekat','page',3,1),(1690,'benar','page',3,2),(1691,'benar-benar','page',3,1),(1692,'sekarat','page',3,1),(1693,'sekarang','page',3,3),(1694,'untuknya','page',3,2),(1695,'menerima','page',3,1),(1696,'fakta','page',3,2),(1697,'bahwa','page',3,3),(1698,'berharga','page',3,1),(1699,'semenjak','page',3,1),(1700,'1','page',3,1),(1701,'825','page',3,1),(1702,'1.825','page',3,1),(1703,'dihidupnya','page',3,1),(1704,'menyerah','page',3,1),(1705,'detik','page',3,1),(1706,'juga','page',3,4),(1707,'mati','page',3,1),(1708,'dekapan','page',3,2),(1709,'Tuhan','page',3,9),(1710,'mendongak','page',3,1),(1711,'setelah','page',3,3),(1712,'selesai','page',3,1),(1713,'acara','page',3,2),(1714,'minumnya','page',3,1),(1715,'mengundang','page',3,1),(1716,'sayatan','page',3,1),(1717,'baru','page',3,2),(1718,'hati','page',3,1),(1719,'“sekarang','page',3,2),(1720,'coba','page',3,1),(1721,'ngomong','page',3,2),(1722,'pelan','page',3,2),(1723,'pelan-pelan','page',3,1),(1724,'habis','page',3,1),(1725,'ngapain','page',3,1),(1726,'gudang','page',3,3),(1727,'“Apa','page',3,1),(1728,'mencintai','page',3,2),(1729,'kepadanya','page',3,1),(1730,'meski','page',3,1),(1731,'hanya','page',3,1),(1732,'menangis','page',3,2),(1733,'bicara','page',3,1),(1734,'ditanyai','page',3,1),(1735,'olehnya','page',3,1),(1736,'bagaimana','page',3,2),(1737,'semua','page',3,2),(1738,'berakhir','page',3,1),(1739,'seorang','page',3,3),(1740,'kecil','page',3,2),(1741,'sejauh','page',3,1),(1742,'ini–fikirnya','page',3,1),(1743,'memastikan','page',3,1),(1744,'terlelap','page',3,3),(1745,'sempurna','page',3,1),(1746,'memberanikan','page',3,1),(1747,'diri','page',3,2),(1748,'menuju','page',3,3),(1749,'dihuni','page',3,1),(1750,'dua','page',3,1),(1751,'orang','page',3,5),(1752,'mereka','page',3,2),(1753,'anggap','page',3,1),(1754,'sebagai','page',3,1),(1755,'tua','page',3,1),(1756,'disana','page',3,1),(1757,'tinggal','page',3,2),(1758,'dihancurkan','page',3,1),(1759,'menjadi','page',3,3),(1760,'adopsi','page',3,1),(1761,'keluarga','page',3,1),(1762,'usianya','page',3,2),(1763,'menginjak','page',3,3),(1764,'angka','page',3,1),(1765,'3','page',3,1),(1766,'ke-3','page',3,1),(1767,'dijadikan','page',3,1),(1768,'bahan','page',3,2),(1769,'pancingan','page',3,1),(1770,'sang','page',3,3),(1771,'momongan','page',3,1),(1772,'segera','page',3,2),(1773,'Di','page',3,2),(1774,'bayangan','page',3,1),(1775,'saat','page',3,1),(1776,'Mama','page',3,1),(1777,'merupakan','page',3,1),(1778,'figur','page',3,3),(1779,'malaikat','page',3,1),(1780,'dikirim','page',3,1),(1781,'segala','page',3,1),(1782,'inginkan','page',3,1),(1783,'awalnya','page',3,1),(1784,'terpenuhi','page',3,1),(1785,'dibanjiri','page',3,1),(1786,'cinta','page',3,1),(1787,'Namun','page',3,2),(1788,'berubah','page',3,1),(1789,'ketika','page',3,1),(1790,'usia','page',3,1),(1791,'5','page',3,1),(1792,'ke-5','page',3,1),(1793,'pesta','page',3,1),(1794,'ulang','page',3,1),(1795,'tahunnya','page',3,1),(1796,'dirayakan','page',3,1),(1797,'ayah','page',3,2),(1798,'panggil','page',3,1),(1799,'memasuki','page',3,1),(1800,'kamarnya','page',3,1),(1801,'sehelai','page',3,1),(1802,'benang','page',3,1),(1803,'telanjang','page',3,1),(1804,'gila','page',3,1),(1805,'kehilangan','page',3,1),(1806,'akal','page',3,1),(1807,'sehat—Daya','page',3,1),(1808,'gemetar','page',3,1),(1809,'ketakutan','page',3,1),(1810,'suara','page',3,1),(1811,'tangisannya','page',3,1),(1812,'tercekal','page',3,1),(1813,'terlonjak','page',3,1),(1814,'remuk','page',3,1),(1815,'lebur','page',3,1),(1816,'tulang','page',3,1),(1817,'punggungnya','page',3,1),(1818,'belum','page',3,3),(1819,'faham','page',3,2),(1820,'melecehkannya','page',3,1),(1821,'merobek','page',3,1),(1822,'sisa','page',3,1),(1823,'kehidupan','page',3,1),(1824,'letak','page',3,1),(1825,'kehormatannya','page',3,1),(1826,'Tubuhnya','page',3,1),(1827,'terhuyung','page',3,1),(1828,'membentur','page',3,1),(1829,'dinding','page',3,2),(1830,'dipan','page',3,1),(1831,'meneriaki','page',3,1),(1832,'nama','page',3,2),(1833,'sangka','page',3,1),(1834,'meraihnya','page',3,1),(1835,'membawa','page',3,1),(1836,'kegiatan','page',3,1),(1837,'bejat','page',3,2),(1838,'angkat','page',3,1),(1839,'“Mama','page',3,3),(1840,'.minta','page',3,1),(1841,'tolong','page',3,2),(1842,'Panggilan','page',3,1),(1843,'lontarkan','page',3,1),(1844,'sebanyak','page',3,1),(1845,'tapi','page',3,2),(1846,'nihil','page',3,1),(1847,'dilain','page',3,1),(1848,'dimensi','page',3,1),(1849,'sedang','page',3,1),(1850,'asyik','page',3,1),(1851,'pria','page',3,1),(1852,'simpanannya','page',3,1),(1853,'mencumbu','page',3,1),(1854,'henti','page',3,1),(1855,'fajar','page',3,1),(1856,'terganti','page',3,1),(1857,'Bapak—biadab','page',3,1),(1858,'terus','page',3,5),(1859,'menyetubuhi','page',3,1),(1860,'nafasnya','page',3,1),(1861,'tersenggal','page',3,1),(1862,'alkohol','page',3,1),(1863,'menguar','page',3,1),(1864,'rakusnya','page',3,1),(1865,'wajahnya','page',3,1),(1866,'peluh','page',3,2),(1867,'tercecer','page',3,1),(1868,'Desahan','page',3,1),(1869,'kotor','page',3,1),(1870,'dilantunkan','page',3,1),(1871,'guna','page',3,1),(1872,'memuaskan','page',3,1),(1873,'hasrat','page',3,1),(1874,'terbangun','page',3,1),(1875,'menghiasi','page',3,1),(1876,'bermimpi—lagi','page',3,1),(1877,'kejadian','page',3,2),(1878,'28','page',3,1),(1879,'dapat','page',3,1),(1880,'tenang','page',3,1),(1881,'Selalu–dengan','page',3,1),(1882,'Yang','page',3,3),(1883,'Sama','page',3,1),(1884,'Dia','page',3,1),(1885,'melirik','page',3,1),(1886,'arah','page',3,1),(1887,'jendela','page',3,1),(1888,'kayu','page',3,2),(1889,'subuh—fikirnya','page',3,1),(1890,'mempersiapkan','page',3,1),(1891,'sebelum','page',3,1),(1892,'pasar','page',3,1),(1893,'soang','page',3,1),(1894,'membeli','page',3,1),(1895,'masakan','page',3,1),(1896,'diberikan','page',3,1),(1897,'kepada','page',3,3),(1898,'35','page',3,1),(1899,'Sebelum','page',3,1),(1900,'sepeda','page',3,1),(1901,'butut','page',3,1),(1902,'beli','page',3,2),(1903,'saudagar','page',3,1),(1904,'loak','page',3,1),(1905,'kakinya','page',3,1),(1906,'melangkah','page',3,1),(1907,'tempat','page',3,4),(1908,'singgah','page',3,1),(1909,'“Maya','page',3,2),(1910,'ada','page',3,2),(1911,'lihat','page',3,2),(1912,'“Tidak','page',3,1),(1913,'kemarin','page',3,2),(1914,'kasurnya”','page',3,1),(1915,'terbelalak','page',3,1),(1916,'tepat','page',3,3),(1917,'sepuluh','page',3,1),(1918,'mengantarkan','page',3,1),(1919,'melihat','page',3,1),(1920,'damai','page',3,2),(1921,'tidurnya','page',3,1),(1922,'teman','page',3,3),(1923,'sekamar','page',3,1),(1924,'mengatakan','page',3,1),(1925,'menemukan','page',3,2),(1926,'“kemarin','page',3,1),(1927,'antar','page',3,1),(1928,'kesini','page',3,1),(1929,'kalian','page',3,1),(1930,'tidur','page',3,1),(1931,'Maya','page',3,2),(1932,'masuk','page',3,1),(1933,'nyalain','page',3,1),(1934,'saklar','page',3,1),(1935,'lampu','page',3,1),(1936,'kan','page',3,2),(1937,'“Iya','page',3,1),(1938,'sendiri','page',3,1),(1939,'sama','page',3,2),(1940,'siapa','page',3,1),(1941,'siapa”','page',3,1),(1942,'siapa-siapa”','page',3,1),(1943,'kasi','page',3,1),(1944,'tau','page',3,1),(1945,'Sedah','page',3,2),(1946,'subuh','page',3,1),(1947,'kalau','page',3,1),(1948,'mengigau”','page',3,1),(1949,'mulutnya','page',3,1),(1950,'rapat','page',3,1),(1951,'lalu','page',3,3),(1952,'dimana','page',3,1),(1953,'Apakah','page',3,1),(1954,'mimpi','page',3,1),(1955,'bangungkan','page',3,1),(1956,'mencerna','page',3,1),(1957,'anaknya—Reina','page',3,1),(1958,'bawa','page',3,1),(1959,'tertidur','page',3,1),(1960,'selepas','page',3,1),(1961,'dekapannya','page',3,1),(1962,'Rita','page',3,1),(1963,'cari','page',3,1),(1964,'sayang”','page',3,2),(1965,'Mereka','page',3,1),(1966,'berempat','page',3,1),(1967,'mencari','page',3,1),(1968,'mengelilingi','page',3,1),(1969,'taman','page',3,1),(1970,'lebih','page',3,1),(1971,'terlihat','page',3,1),(1972,'gurun','page',3,1),(1973,'tanaman','page',3,1),(1974,'enggan','page',3,1),(1975,'tanah','page',3,1),(1976,'kepalsuan','page',3,1),(1977,'telusuri','page',3,1),(1978,'kumuh','page',3,1),(1979,'dekat','page',3,1),(1980,'sawah','page',3,1),(1981,'letaknya','page',3,1),(1982,'sering','page',3,1),(1983,'sebut','page',3,1),(1984,'titik','page',3,1),(1985,'buta','page',3,1),(1986,'sebentar','page',3,1),(1987,'paling','page',3,1),(1988,'dilarang','page',3,1),(1989,'apa','page',3,1),(1990,'berada','page',3,1),(1991,'disana—fikirnya','page',3,1),(1992,'insting','page',3,1),(1993,'Ibu','page',3,1),(1994,'melesat','page',3,1),(1995,'walaupun','page',3,1),(1996,'mendapat','page',3,1),(1997,'hukuman','page',3,1),(1998,'berat','page',3,2),(1999,'setelahnya','page',3,1),(2000,'peduli','page',3,1),(2001,'laki','page',3,2),(2002,'laki-laki','page',3,1),(2003,'buah','page',3,1),(2004,'hatinya','page',3,1),(2005,'Langkah','page',3,1),(2006,'semakin','page',3,2),(2007,'jantung','page',3,1),(2008,'terpompa','page',3,1),(2009,'asal','page',3,1),(2010,'mengikuti','page',3,1),(2011,'tempo','page',3,1),(2012,'perasaannya','page',3,1),(2013,'terisak','page',3,1),(2014,'menggigiti','page',3,1),(2015,'bagian','page',3,1),(2016,'pipinya','page',3,1),(2017,'kesekian','page',3,1),(2018,'kalinya','page',3,1),(2019,'meraung','page',3,1),(2020,'mencakar','page',3,1),(2021,'pintu','page',3,1),(2022,'sialan','page',3,1),(2023,'menghalanginya','page',3,1),(2024,'Putrinya','page',3,1),(2025,'Re—terbaring','page',3,1),(2026,'busana','page',3,1),(2027,'alat','page',3,1),(2028,'kelamin','page',3,1),(2029,'berbusa','page',3,1),(2030,'lebam','page',3,1),(2031,'raganya','page',3,1),(2032,'terlentang','page',3,1),(2033,'disamping','page',3,1),(2034,'kertas','page',3,1),(2035,'foto','page',3,1),(2036,'remat','page',3,1),(2037,'Tuhan—itu','page',3,1),(2038,'yesus','page',3,1),(2039,'genggaman','page',3,1),(2040,'tangan','page',3,1),(2041,'kecilnya','page',3,4),(2042,'mungkin','page',3,1),(2043,'menahan','page',3,2),(2044,'selama','page',3,1),(2045,'waktu','page',3,1),(2046,'ditentukan','page',3,1),(2047,'menggeleng','page',3,1),(2048,'percaya','page',3,1),(2049,'putri','page',3,3),(2050,'tunggalnya','page',3,1),(2051,'mengalami','page',3,1),(2052,'hal','page',3,1),(2053,'serupa','page',3,1),(2054,'Raga','page',3,1),(2055,'berdosa','page',3,1),(2056,'pasti','page',3,1),(2057,'terima','page',3,1),(2058,'mengambilnya','page',3,1),(2059,'kelahirannya','page',3,1),(2060,'keadaan','page',3,1),(2061,'bayangkan','page',3,1),(2062,'mendekapnya','page',3,1),(2063,'hangat','page',3,1),(2064,'kaku','page',3,1),(2065,'organ','page',3,1),(2066,'vital','page',3,1),(2067,'adalah','page',3,1),(2068,'“sayang','page',3,1),(2069,'nak','page',3,1),(2070,'bangun','page',3,2),(2071,'kita','page',3,1),(2072,'kue','page',3,1),(2073,'telur','page',3,1),(2074,'Ulang','page',3,1),(2075,'menghadiri','page',3,1),(2076,'gereja','page',3,1),(2077,'mau','page',3,1),(2078,'berucap','page',3,1),(2079,'Meski','page',3,1),(2080,'jasad','page',3,1),(2081,'membalas','page',3,1),(2082,'pelukannya','page',3,1),(2083,'ajarkan','page',3,1),(2084,'sebutan','page',3,1),(2085,'“Mama”','page',3,1),(2086,'karena','page',3,2),(2087,'malu','page',3,1),(2088,'lahir','page',3,1),(2089,'Yesus','page',3,1),(2090,'sesuai','page',3,1),(2091,'teman-teman','page',3,1),(2092,'berkati','page',3,1),(2093,'melahirkan','page',3,1),(2094,'tulus','page',3,1),(2095,'Beri','page',3,1),(2096,'terbaik','page',3,1),(2097,'disisiMu','page',3,1),(2098,'pintar','page',3,3),(2099,'menulis','page',3,1),(2100,'mengajarkan','page',3,1),(2101,'Mbak','page',3,2),(2102,'bilang','page',3,1),(2103,'Berkati','page',3,1),(2104,'otak','page',3,1),(2105,'cintakan','page',3,1),(2106,'Terus','page',3,1),(2107,'sehat','page',3,1),(2108,'makan','page',3,1),(2109,'enak','page',3,1),(2110,'Karena','page',3,1),(2111,'menjemput','page',3,1),(2112,'ikut','page',3,1),(2113,'Terimakasi','page',3,1),(2114,'Note','page',3,1),(2115,'do','page',3,1),(2116,'not','page',3,1),(2117,'eat','page',3,1),(2118,'child','page',3,1),(2119,'grooming','page',3,1),(2120,'child-grooming','page',3,1),(2121,'pedofilia','page',3,1),(2122,'disturbing','page',3,1),(2123,'triggering','page',3,1),(2124,'and','page',3,1),(2125,'more','page',3,1),(2126,'traumatized','page',3,1),(2127,'kasih–yang','page',3,1),(2128,'menebar','page',3,1);
/*!40000 ALTER TABLE `search_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `setting_key` varchar(191) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'string',
  PRIMARY KEY (`setting_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES ('app-color','#ff7300','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('app-color-dark','#195785','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('app-color-light','rgba(255,115,0,0.15)','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('app-color-light-dark','rgba(32,110,167,0.15)','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('app-custom-head','','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('app-editor','wysiwyg','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('app-footer-links','[]','2025-07-18 16:17:30','2025-07-18 16:17:30','array'),('app-homepage','','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('app-homepage-type','default','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('app-icon','http://127.0.0.1:8000/uploads/images/system/2025-07/whatsapp-image-2025-07-18-at-08-13-33.jpeg','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('app-icon-128','http://127.0.0.1:8000/uploads/images/system/2025-07/F0bwhatsapp-image-2025-07-18-at-08-13-33.jpeg','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('app-icon-180','http://127.0.0.1:8000/uploads/images/system/2025-07/4ipwhatsapp-image-2025-07-18-at-08-13-33.jpeg','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('app-icon-32','http://127.0.0.1:8000/uploads/images/system/2025-07/uBcwhatsapp-image-2025-07-18-at-08-13-33.jpeg','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('app-icon-64','http://127.0.0.1:8000/uploads/images/system/2025-07/31Dwhatsapp-image-2025-07-18-at-08-13-33.jpeg','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('app-logo','http://127.0.0.1:8000/uploads/images/system/2025-07/2Frwhatsapp-image-2025-07-18-at-08-13-33.jpeg','2025-07-18 16:18:52','2025-07-18 16:18:52','string'),('app-name','Aksara Mentari','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('app-name-header','true','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('book-color','#077b70','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('book-color-dark','#389f60','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('bookshelf-color','#a94747','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('bookshelf-color-dark','#ff5454','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('chapter-color','#af4d0d','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('chapter-color-dark','#ee7a2d','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('instance-id','9869d603-1e0e-43c6-8c59-d65462f695d5','2025-07-17 16:47:26','2025-07-17 16:47:26','string'),('link-color','#ff9b00','2025-07-18 16:17:30','2025-07-18 16:20:13','string'),('link-color-dark','#429fe3','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('page-color','#206ea7','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('page-color-dark','#429fe3','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('page-draft-color','#7e50b1','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('page-draft-color-dark','#a66ce8','2025-07-18 16:17:30','2025-07-18 16:17:30','string'),('registration-confirmation','false','2025-07-17 20:02:34','2025-07-17 20:02:34','string'),('registration-enabled','true','2025-07-17 20:02:34','2025-07-17 20:02:34','string'),('registration-restrict','','2025-07-17 20:02:34','2025-07-17 20:02:34','string'),('registration-role','3','2025-07-17 20:02:34','2025-07-17 20:02:34','string'),('user:1:books_sort','created_at','2025-07-18 17:12:09','2025-07-18 17:12:09','string'),('user:1:books_sort_order','desc','2025-07-18 17:12:09','2025-07-18 17:12:10','string'),('user:1:dark-mode-enabled','false','2025-07-17 19:59:14','2025-07-17 19:59:15','string'),('user:1:section_expansion#home-details','true','2025-07-17 19:59:10','2025-07-17 19:59:10','string'),('user:4:books_sort','updated_at','2025-07-18 17:13:44','2025-07-18 17:15:51','string'),('user:4:books_sort_order','desc','2025-07-18 17:13:44','2025-07-18 17:15:46','string'),('user:4:bookshelves_view_type','list','2025-07-17 20:04:46','2025-07-17 20:04:46','string'),('user:4:dark-mode-enabled','false','2025-07-17 23:59:27','2025-07-17 23:59:29','string'),('user:4:language','id','2025-07-17 20:03:45','2025-07-17 20:03:45','string');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_accounts`
--

DROP TABLE IF EXISTS `social_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `driver` varchar(191) NOT NULL,
  `driver_id` varchar(191) NOT NULL,
  `avatar` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_accounts_user_id_index` (`user_id`),
  KEY `social_accounts_driver_index` (`driver`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_accounts`
--

LOCK TABLES `social_accounts` WRITE;
/*!40000 ALTER TABLE `social_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sort_rules`
--

DROP TABLE IF EXISTS `sort_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sort_rules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `sequence` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sort_rules`
--

LOCK TABLES `sort_rules` WRITE;
/*!40000 ALTER TABLE `sort_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `sort_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entity_id` int(11) NOT NULL,
  `entity_type` varchar(100) NOT NULL,
  `name` varchar(191) NOT NULL,
  `value` varchar(191) NOT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tags_name_index` (`name`),
  KEY `tags_value_index` (`value`),
  KEY `tags_order_index` (`order`),
  KEY `tags_entity_id_entity_type_index` (`entity_id`,`entity_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (4,2,'book','category','cerpen',0,'2025-07-18 16:58:17','2025-07-18 16:58:17'),(5,3,'book','category','cerpen',0,'2025-07-18 17:00:48','2025-07-18 17:00:48');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_invites`
--

DROP TABLE IF EXISTS `user_invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_invites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_invites_user_id_index` (`user_id`),
  KEY `user_invites_token_index` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_invites`
--

LOCK TABLES `user_invites` WRITE;
/*!40000 ALTER TABLE `user_invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(60) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email_confirmed` tinyint(1) NOT NULL DEFAULT 1,
  `image_id` int(11) NOT NULL DEFAULT 0,
  `external_auth_id` varchar(191) NOT NULL,
  `system_name` varchar(191) DEFAULT NULL,
  `slug` varchar(180) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_slug_unique` (`slug`),
  KEY `users_external_auth_id_index` (`external_auth_id`),
  KEY `users_system_name_index` (`system_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin','admin@admin.com','$2y$12$FUjKL.eH26KEtF/nkK.5a.OaWVc0igWeKyPk7Ss99Z9K3czr2jyRa',NULL,'2025-07-17 16:47:20','2025-07-17 16:47:20',1,0,'',NULL,'admin'),(2,'Guest','guest@example.com','',NULL,'2025-07-17 16:47:22','2025-07-17 16:47:22',1,0,'','public','guest'),(4,'mael','mael@gmail.com','$2y$12$NsgITNNM7J54/paMV803KOzuVtUCzo6JuQZyF8zzZz2gKP6jjDefy',NULL,'2025-07-17 20:03:45','2025-07-17 20:03:46',1,2,'',NULL,'mael');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `views`
--

DROP TABLE IF EXISTS `views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `views` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `viewable_id` int(11) NOT NULL,
  `viewable_type` varchar(191) NOT NULL,
  `views` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `views_user_id_index` (`user_id`),
  KEY `views_viewable_id_index` (`viewable_id`),
  KEY `views_updated_at_index` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `views`
--

LOCK TABLES `views` WRITE;
/*!40000 ALTER TABLE `views` DISABLE KEYS */;
INSERT INTO `views` VALUES (1,1,1,'book',6,'2025-07-18 00:00:53','2025-07-18 16:43:27'),(2,4,1,'book',4,'2025-07-18 00:12:07','2025-07-18 00:12:25'),(3,1,2,'book',8,'2025-07-18 16:46:21','2025-07-18 16:58:20'),(4,1,2,'page',3,'2025-07-18 16:57:32','2025-07-18 16:58:00'),(5,1,3,'book',7,'2025-07-18 17:00:48','2025-07-18 17:13:20'),(6,1,3,'page',14,'2025-07-18 17:04:31','2025-07-18 17:12:59'),(7,4,3,'book',4,'2025-07-18 17:09:41','2025-07-18 17:16:07'),(8,4,3,'page',2,'2025-07-18 17:09:43','2025-07-18 17:13:53');
/*!40000 ALTER TABLE `views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watches`
--

DROP TABLE IF EXISTS `watches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `watches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `watchable_id` int(11) NOT NULL,
  `watchable_type` varchar(100) NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `watchable_index` (`watchable_id`,`watchable_type`),
  KEY `watches_user_id_index` (`user_id`),
  KEY `watches_level_index` (`level`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watches`
--

LOCK TABLES `watches` WRITE;
/*!40000 ALTER TABLE `watches` DISABLE KEYS */;
INSERT INTO `watches` VALUES (1,1,3,'page',2,'2025-07-18 17:11:25','2025-07-18 17:11:25');
/*!40000 ALTER TABLE `watches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webhook_tracked_events`
--

DROP TABLE IF EXISTS `webhook_tracked_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `webhook_tracked_events` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `webhook_id` int(11) NOT NULL,
  `event` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `webhook_tracked_events_event_index` (`event`),
  KEY `webhook_tracked_events_webhook_id_index` (`webhook_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhook_tracked_events`
--

LOCK TABLES `webhook_tracked_events` WRITE;
/*!40000 ALTER TABLE `webhook_tracked_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `webhook_tracked_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webhooks`
--

DROP TABLE IF EXISTS `webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `webhooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `endpoint` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `timeout` int(10) unsigned NOT NULL DEFAULT 3,
  `last_error` text NOT NULL DEFAULT '',
  `last_called_at` timestamp NULL DEFAULT NULL,
  `last_errored_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `webhooks_name_index` (`name`),
  KEY `webhooks_active_index` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhooks`
--

LOCK TABLES `webhooks` WRITE;
/*!40000 ALTER TABLE `webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `webhooks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-19 16:21:34
