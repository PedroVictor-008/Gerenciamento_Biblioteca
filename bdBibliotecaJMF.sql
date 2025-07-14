CREATE DATABASE  IF NOT EXISTS `bd_bilbiotecajmf` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_bilbiotecajmf`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_bilbiotecajmf
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add acervo',7,'add_acervo'),(26,'Can change acervo',7,'change_acervo'),(27,'Can delete acervo',7,'delete_acervo'),(28,'Can view acervo',7,'view_acervo'),(29,'Can add autor',8,'add_autor'),(30,'Can change autor',8,'change_autor'),(31,'Can delete autor',8,'delete_autor'),(32,'Can view autor',8,'view_autor'),(33,'Can add categoria',9,'add_categoria'),(34,'Can change categoria',9,'change_categoria'),(35,'Can delete categoria',9,'delete_categoria'),(36,'Can view categoria',9,'view_categoria'),(37,'Can add genero',10,'add_genero'),(38,'Can change genero',10,'change_genero'),(39,'Can delete genero',10,'delete_genero'),(40,'Can view genero',10,'view_genero'),(41,'Can add acervo autor',11,'add_acervoautor'),(42,'Can change acervo autor',11,'change_acervoautor'),(43,'Can delete acervo autor',11,'delete_acervoautor'),(44,'Can view acervo autor',11,'view_acervoautor'),(45,'Can add aluno',12,'add_aluno'),(46,'Can change aluno',12,'change_aluno'),(47,'Can delete aluno',12,'delete_aluno'),(48,'Can view aluno',12,'view_aluno'),(49,'Can add funcionario',13,'add_funcionario'),(50,'Can change funcionario',13,'change_funcionario'),(51,'Can delete funcionario',13,'delete_funcionario'),(52,'Can view funcionario',13,'view_funcionario'),(53,'Can add locacao',14,'add_locacao'),(54,'Can change locacao',14,'change_locacao'),(55,'Can delete locacao',14,'delete_locacao'),(56,'Can view locacao',14,'view_locacao');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$1000000$UvjHBESZgMnjhElFQL5K9a$3u2wqSQikXqRWuWph7K9bkvpw0MpaQQLfQonuhifL88=','2025-07-13 23:56:10.266615',1,'bibliotecajmf','','','pedro121victor@gmail.com',1,1,'2025-05-30 19:14:19.245214');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_acervo`
--

DROP TABLE IF EXISTS `core_acervo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_acervo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `sinopse` longtext,
  `quantidade_exemplares` int NOT NULL,
  `isbn` varchar(13) DEFAULT NULL,
  `estante` varchar(50) DEFAULT NULL,
  `prateleira` varchar(50) DEFAULT NULL,
  `categoria_id` bigint NOT NULL,
  `genero_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `core_acervo_categoria_id_b766a4b8_fk_core_categoria_id` (`categoria_id`),
  KEY `core_acervo_genero_id_f6e2aede_fk_core_genero_id` (`genero_id`),
  CONSTRAINT `core_acervo_categoria_id_b766a4b8_fk_core_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `core_categoria` (`id`),
  CONSTRAINT `core_acervo_genero_id_f6e2aede_fk_core_genero_id` FOREIGN KEY (`genero_id`) REFERENCES `core_genero` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_acervo`
--

LOCK TABLES `core_acervo` WRITE;
/*!40000 ALTER TABLE `core_acervo` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_acervo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_acervoautor`
--

DROP TABLE IF EXISTS `core_acervoautor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_acervoautor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `acervo_id` bigint NOT NULL,
  `autor_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `core_acervoautor_acervo_id_autor_id_c03130e6_uniq` (`acervo_id`,`autor_id`),
  KEY `core_acervoautor_autor_id_2a75c775_fk_core_autor_id` (`autor_id`),
  CONSTRAINT `core_acervoautor_acervo_id_626f6ebe_fk_core_acervo_id` FOREIGN KEY (`acervo_id`) REFERENCES `core_acervo` (`id`),
  CONSTRAINT `core_acervoautor_autor_id_2a75c775_fk_core_autor_id` FOREIGN KEY (`autor_id`) REFERENCES `core_autor` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_acervoautor`
--

LOCK TABLES `core_acervoautor` WRITE;
/*!40000 ALTER TABLE `core_acervoautor` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_acervoautor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_autor`
--

DROP TABLE IF EXISTS `core_autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_autor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_autor`
--

LOCK TABLES `core_autor` WRITE;
/*!40000 ALTER TABLE `core_autor` DISABLE KEYS */;
/*!40000 ALTER TABLE `core_autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_categoria`
--

DROP TABLE IF EXISTS `core_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_categoria`
--

LOCK TABLES `core_categoria` WRITE;
/*!40000 ALTER TABLE `core_categoria` DISABLE KEYS */;
INSERT INTO `core_categoria` VALUES (1,'autobiografia religiosa');
/*!40000 ALTER TABLE `core_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_genero`
--

DROP TABLE IF EXISTS `core_genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_genero` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_genero`
--

LOCK TABLES `core_genero` WRITE;
/*!40000 ALTER TABLE `core_genero` DISABLE KEYS */;
INSERT INTO `core_genero` VALUES (1,'biografia espiritual');
/*!40000 ALTER TABLE `core_genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2025-06-09 21:30:42.314284','1','José de  Alencar',1,'[{\"added\": {}}]',8,1),(2,'2025-06-09 21:31:17.613325','1','José de  Alencar',3,'',8,1),(3,'2025-06-13 17:42:24.379882','1','autobiografia religiosa',1,'[{\"added\": {}}]',9,1),(4,'2025-06-13 17:42:38.464403','1','biografia espiritual',1,'[{\"added\": {}}]',10,1),(5,'2025-06-13 17:43:18.956345','1','História de uma alma',1,'[{\"added\": {}}]',7,1),(6,'2025-07-13 23:56:55.095849','1','História de uma alma',3,'',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'core','acervo'),(11,'core','acervoautor'),(8,'core','autor'),(9,'core','categoria'),(10,'core','genero'),(14,'locacoes','locacao'),(6,'sessions','session'),(12,'usuarios','aluno'),(13,'usuarios','funcionario');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-05-30 19:11:57.870424'),(2,'auth','0001_initial','2025-05-30 19:11:58.482463'),(3,'admin','0001_initial','2025-05-30 19:11:58.621926'),(4,'admin','0002_logentry_remove_auto_add','2025-05-30 19:11:58.628012'),(5,'admin','0003_logentry_add_action_flag_choices','2025-05-30 19:11:58.634475'),(6,'contenttypes','0002_remove_content_type_name','2025-05-30 19:11:58.774177'),(7,'auth','0002_alter_permission_name_max_length','2025-05-30 19:11:58.851380'),(8,'auth','0003_alter_user_email_max_length','2025-05-30 19:11:58.882994'),(9,'auth','0004_alter_user_username_opts','2025-05-30 19:11:58.891647'),(10,'auth','0005_alter_user_last_login_null','2025-05-30 19:11:58.952402'),(11,'auth','0006_require_contenttypes_0002','2025-05-30 19:11:58.956101'),(12,'auth','0007_alter_validators_add_error_messages','2025-05-30 19:11:58.962593'),(13,'auth','0008_alter_user_username_max_length','2025-05-30 19:11:59.039010'),(14,'auth','0009_alter_user_last_name_max_length','2025-05-30 19:11:59.114688'),(15,'auth','0010_alter_group_name_max_length','2025-05-30 19:11:59.138566'),(16,'auth','0011_update_proxy_permissions','2025-05-30 19:11:59.145550'),(17,'auth','0012_alter_user_first_name_max_length','2025-05-30 19:11:59.212591'),(18,'core','0001_initial','2025-05-30 19:11:59.541586'),(19,'sessions','0001_initial','2025-05-30 19:11:59.569759'),(20,'usuarios','0001_initial','2025-05-30 21:00:20.850591'),(21,'locacoes','0001_initial','2025-05-30 21:11:25.321166'),(22,'locacoes','0002_locacao_status','2025-05-30 21:30:05.749134');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('pfvxrifocjhwifldsn7fke287u6r2m8c','.eJxVjMsOwiAQRf-FtSHgyKMu3fcbyAwDUjWQlHZl_HfbpAvd3nPOfYuA61LC2tMcJhZXocXpdyOMz1R3wA-s9yZjq8s8kdwVedAux8bpdTvcv4OCvWx1okH7DAoHsNmjShEI3OWMEMGyNUykULOJBhgdZZ2yMqyj996pLRSfL_YVOFg:1uL5Dx:BY8aLDWgNTBshkLdGjVm9t-F5LHkSeyvdKmcwmx2onc','2025-06-13 19:17:01.105360'),('vxgsypdd8augrj8klxg3pv55c64e4i7q','.eJxVjMsOwiAQRf-FtSHgyKMu3fcbyAwDUjWQlHZl_HfbpAvd3nPOfYuA61LC2tMcJhZXocXpdyOMz1R3wA-s9yZjq8s8kdwVedAux8bpdTvcv4OCvWx1okH7DAoHsNmjShEI3OWMEMGyNUykULOJBhgdZZ2yMqyj996pLRSfL_YVOFg:1ub6YE:Udn434FkkPfgh6tGU_mYg8wbS3zyjG3XYxC1ys0x6U4','2025-07-27 23:56:10.276749');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locacoes_locacao`
--

DROP TABLE IF EXISTS `locacoes_locacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locacoes_locacao` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `data_hora_locacao` datetime(6) NOT NULL,
  `data_devolucao` datetime(6) DEFAULT NULL,
  `acervo_id` bigint NOT NULL,
  `aluno_id` bigint NOT NULL,
  `funcionario_id` bigint NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `locacoes_locacao_acervo_id_52443ec0_fk_core_acervo_id` (`acervo_id`),
  KEY `locacoes_locacao_aluno_id_06075c7b_fk_usuarios_aluno_id` (`aluno_id`),
  KEY `locacoes_locacao_funcionario_id_d71a28fa_fk_usuarios_` (`funcionario_id`),
  CONSTRAINT `locacoes_locacao_acervo_id_52443ec0_fk_core_acervo_id` FOREIGN KEY (`acervo_id`) REFERENCES `core_acervo` (`id`),
  CONSTRAINT `locacoes_locacao_aluno_id_06075c7b_fk_usuarios_aluno_id` FOREIGN KEY (`aluno_id`) REFERENCES `usuarios_aluno` (`id`),
  CONSTRAINT `locacoes_locacao_funcionario_id_d71a28fa_fk_usuarios_` FOREIGN KEY (`funcionario_id`) REFERENCES `usuarios_funcionario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locacoes_locacao`
--

LOCK TABLES `locacoes_locacao` WRITE;
/*!40000 ALTER TABLE `locacoes_locacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `locacoes_locacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_aluno`
--

DROP TABLE IF EXISTS `usuarios_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_aluno` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cpf` varchar(11) NOT NULL,
  `matricula` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf` (`cpf`),
  UNIQUE KEY `matricula` (`matricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_aluno`
--

LOCK TABLES `usuarios_aluno` WRITE;
/*!40000 ALTER TABLE `usuarios_aluno` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_funcionario`
--

DROP TABLE IF EXISTS `usuarios_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_funcionario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `email` varchar(254) DEFAULT NULL,
  `telefone` varchar(20) NOT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `cpf` varchar(11) NOT NULL,
  `cargo` varchar(100) NOT NULL,
  `eixo` varchar(100) NOT NULL,
  `usuario_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf` (`cpf`),
  UNIQUE KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `usuarios_funcionario_usuario_id_b7ab06d6_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_funcionario`
--

LOCK TABLES `usuarios_funcionario` WRITE;
/*!40000 ALTER TABLE `usuarios_funcionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuarios_funcionario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-13 20:58:41
