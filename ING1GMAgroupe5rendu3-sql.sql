-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tri_selectif
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `bonreduction`
--

DROP TABLE IF EXISTS `bonreduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bonreduction` (
  `idBon` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tauxReduction` float NOT NULL,
  `pointsNecessaires` int NOT NULL,
  `estUtilise` tinyint(1) NOT NULL DEFAULT '0',
  `idCategorie` int DEFAULT NULL,
  PRIMARY KEY (`idBon`),
  KEY `idCategorie` (`idCategorie`),
  CONSTRAINT `bonreduction_ibfk_1` FOREIGN KEY (`idCategorie`) REFERENCES `categorieproduit` (`idCategorie`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonreduction`
--

LOCK TABLES `bonreduction` WRITE;
/*!40000 ALTER TABLE `bonreduction` DISABLE KEYS */;
INSERT INTO `bonreduction` VALUES (148,'Bon pour Categorie_C1_1_1',16,11,0,377),(149,'Bon pour Categorie_C1_1_2',17,12,0,378),(150,'Bon pour Categorie_C1_1_3',18,13,0,379),(151,'Bon pour Categorie_C1_1_4',19,14,0,380),(152,'Bon pour Categorie_C1_2_1',16,11,0,381),(153,'Bon pour Categorie_C1_2_2',17,12,0,382),(154,'Bon pour Categorie_C1_2_3',18,13,0,383),(155,'Bon pour Categorie_C1_2_4',19,14,0,384),(156,'Bon pour Categorie_C2_1_1',16,11,0,397),(157,'Bon pour Categorie_C2_1_2',17,12,0,398),(158,'Bon pour Categorie_C2_1_3',18,13,0,399),(159,'Bon pour Categorie_C2_1_4',19,14,0,400),(160,'Bon pour Categorie_C2_2_1',16,11,0,401),(161,'Bon pour Categorie_C2_2_2',17,12,0,402),(162,'Bon pour Categorie_C2_2_3',18,13,0,403),(163,'Bon pour Categorie_C2_2_4',19,14,0,404);
/*!40000 ALTER TABLE `bonreduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorieproduit`
--

DROP TABLE IF EXISTS `categorieproduit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorieproduit` (
  `idCategorie` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tauxReduction` float NOT NULL,
  `pointNecessaire` int NOT NULL,
  `id_centre_tri` int DEFAULT NULL,
  PRIMARY KEY (`idCategorie`),
  UNIQUE KEY `unique_idcategorie_par_centre` (`idCategorie`,`id_centre_tri`)
) ENGINE=InnoDB AUTO_INCREMENT=405 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorieproduit`
--

LOCK TABLES `categorieproduit` WRITE;
/*!40000 ALTER TABLE `categorieproduit` DISABLE KEYS */;
INSERT INTO `categorieproduit` VALUES (365,'Categorie_C1_1_1',16,11,201),(366,'Categorie_C1_1_2',17,12,201),(367,'Categorie_C1_1_3',18,13,201),(368,'Categorie_C1_1_4',19,14,201),(369,'Categorie_C1_2_1',16,11,201),(370,'Categorie_C1_2_2',17,12,201),(371,'Categorie_C1_2_3',18,13,201),(372,'Categorie_C1_2_4',19,14,201),(373,'Categorie_C1_3_1',16,11,201),(374,'Categorie_C1_3_2',17,12,201),(375,'Categorie_C1_3_3',18,13,201),(376,'Categorie_C1_3_4',19,14,201),(377,'Categorie_C1_1_1',16,11,201),(378,'Categorie_C1_1_2',17,12,201),(379,'Categorie_C1_1_3',18,13,201),(380,'Categorie_C1_1_4',19,14,201),(381,'Categorie_C1_2_1',16,11,201),(382,'Categorie_C1_2_2',17,12,201),(383,'Categorie_C1_2_3',18,13,201),(384,'Categorie_C1_2_4',19,14,201),(385,'Categorie_C2_1_1',16,11,202),(386,'Categorie_C2_1_2',17,12,202),(387,'Categorie_C2_1_3',18,13,202),(388,'Categorie_C2_1_4',19,14,202),(389,'Categorie_C2_2_1',16,11,202),(390,'Categorie_C2_2_2',17,12,202),(391,'Categorie_C2_2_3',18,13,202),(392,'Categorie_C2_2_4',19,14,202),(393,'Categorie_C2_3_1',16,11,202),(394,'Categorie_C2_3_2',17,12,202),(395,'Categorie_C2_3_3',18,13,202),(396,'Categorie_C2_3_4',19,14,202),(397,'Categorie_C2_1_1',16,11,202),(398,'Categorie_C2_1_2',17,12,202),(399,'Categorie_C2_1_3',18,13,202),(400,'Categorie_C2_1_4',19,14,202),(401,'Categorie_C2_2_1',16,11,202),(402,'Categorie_C2_2_2',17,12,202),(403,'Categorie_C2_2_3',18,13,202),(404,'Categorie_C2_2_4',19,14,202);
/*!40000 ALTER TABLE `categorieproduit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centredetri`
--

DROP TABLE IF EXISTS `centredetri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `centredetri` (
  `idCentreDeTri` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_admin` int DEFAULT NULL,
  PRIMARY KEY (`idCentreDeTri`),
  KEY `fk_centre_admin` (`id_admin`),
  CONSTRAINT `fk_centre_admin` FOREIGN KEY (`id_admin`) REFERENCES `compte` (`idCompte`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=509 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centredetri`
--

LOCK TABLES `centredetri` WRITE;
/*!40000 ALTER TABLE `centredetri` DISABLE KEYS */;
INSERT INTO `centredetri` VALUES (201,'CentreTri1','Adresse1',101),(202,'CentreTri2','Adresse2',102);
/*!40000 ALTER TABLE `centredetri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commerce`
--

DROP TABLE IF EXISTS `commerce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commerce` (
  `idCommerce` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categorie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idCommerce`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commerce`
--

LOCK TABLES `commerce` WRITE;
/*!40000 ALTER TABLE `commerce` DISABLE KEYS */;
INSERT INTO `commerce` VALUES (271,'CommerceC1_1','Rue Com1',NULL),(272,'CommerceC1_2','Rue Com2',NULL),(273,'CommerceC1_3','Rue Com3',NULL),(274,'CommerceC2_1','Rue Com1',NULL),(275,'CommerceC2_2','Rue Com2',NULL),(276,'CommerceC2_3','Rue Com3',NULL);
/*!40000 ALTER TABLE `commerce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commerce_categorie`
--

DROP TABLE IF EXISTS `commerce_categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commerce_categorie` (
  `idCommerce` int NOT NULL,
  `idCategorie` int NOT NULL,
  PRIMARY KEY (`idCommerce`,`idCategorie`),
  UNIQUE KEY `unique_categorie_par_commerce` (`idCommerce`,`idCategorie`),
  KEY `fk_commerce_categorie` (`idCategorie`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commerce_categorie`
--

LOCK TABLES `commerce_categorie` WRITE;
/*!40000 ALTER TABLE `commerce_categorie` DISABLE KEYS */;
INSERT INTO `commerce_categorie` VALUES (271,365),(271,366),(271,367),(271,368),(272,369),(272,370),(272,371),(272,372),(273,373),(273,374),(273,375),(273,376),(274,385),(274,386),(274,387),(274,388),(275,389),(275,390),(275,391),(275,392),(276,393),(276,394),(276,395),(276,396);
/*!40000 ALTER TABLE `commerce_categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commerce_contrat`
--

DROP TABLE IF EXISTS `commerce_contrat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commerce_contrat` (
  `idCommerce` int NOT NULL,
  `idContrat` int NOT NULL,
  PRIMARY KEY (`idCommerce`,`idContrat`),
  KEY `idContrat` (`idContrat`),
  CONSTRAINT `commerce_contrat_ibfk_1` FOREIGN KEY (`idCommerce`) REFERENCES `commerce` (`idCommerce`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `commerce_contrat_ibfk_2` FOREIGN KEY (`idContrat`) REFERENCES `partenariat` (`idContrat`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commerce_contrat`
--

LOCK TABLES `commerce_contrat` WRITE;
/*!40000 ALTER TABLE `commerce_contrat` DISABLE KEYS */;
INSERT INTO `commerce_contrat` VALUES (271,1043),(272,1043),(273,1043),(274,1044),(275,1044),(276,1044);
/*!40000 ALTER TABLE `commerce_contrat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compte`
--

DROP TABLE IF EXISTS `compte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compte` (
  `idCompte` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motDePasse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pointFidelite` int DEFAULT '0',
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `typeUser` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  PRIMARY KEY (`idCompte`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=97547 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compte`
--

LOCK TABLES `compte` WRITE;
/*!40000 ALTER TABLE `compte` DISABLE KEYS */;
INSERT INTO `compte` VALUES (1,'SuperAdmin','admin@tri.fr','admin',100,'Central','admin'),(101,'Admin1','admin1@tri.fr','admin',41,'Zone1','admin'),(102,'Admin2','admin2@tri.fr','admin',43,'Zone2','admin'),(3011,'UserC1_1','user11@mail.com','user',30,'Adresse1','user'),(3012,'UserC1_2','user12@mail.com','user',67,'Adresse1','user'),(3013,'UserC1_3','user13@mail.com','user',-22,'Adresse1','user'),(3014,'UserC1_4','user14@mail.com','user',16,'Adresse1','user'),(3021,'UserC2_1','user21@mail.com','user',-17,'Adresse2','user'),(3022,'UserC2_2','user22@mail.com','user',-4,'Adresse2','user'),(3023,'UserC2_3','user23@mail.com','user',22,'Adresse2','user'),(3024,'UserC2_4','user24@mail.com','user',33,'Adresse2','user');
/*!40000 ALTER TABLE `compte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compte_bonreduction`
--

DROP TABLE IF EXISTS `compte_bonreduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compte_bonreduction` (
  `idCompte` int NOT NULL,
  `idBon` int NOT NULL,
  PRIMARY KEY (`idCompte`,`idBon`),
  KEY `compte_bonreduction_ibfk_2` (`idBon`),
  CONSTRAINT `compte_bonreduction_ibfk_1` FOREIGN KEY (`idCompte`) REFERENCES `compte` (`idCompte`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `compte_bonreduction_ibfk_2` FOREIGN KEY (`idBon`) REFERENCES `bonreduction` (`idBon`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compte_bonreduction`
--

LOCK TABLES `compte_bonreduction` WRITE;
/*!40000 ALTER TABLE `compte_bonreduction` DISABLE KEYS */;
INSERT INTO `compte_bonreduction` VALUES (3011,148),(3011,149),(3012,150),(3012,151),(3013,152),(3013,153),(3014,154),(3014,155),(3021,156),(3021,157),(3022,158),(3022,159),(3023,160),(3023,161),(3024,162),(3024,163);
/*!40000 ALTER TABLE `compte_bonreduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compte_poubelle`
--

DROP TABLE IF EXISTS `compte_poubelle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compte_poubelle` (
  `idCompte` int NOT NULL,
  `idPoubelle` int NOT NULL,
  PRIMARY KEY (`idCompte`,`idPoubelle`),
  KEY `idPoubelle` (`idPoubelle`),
  CONSTRAINT `compte_poubelle_ibfk_1` FOREIGN KEY (`idCompte`) REFERENCES `compte` (`idCompte`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `compte_poubelle_ibfk_2` FOREIGN KEY (`idPoubelle`) REFERENCES `poubelle` (`idPoubelle`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compte_poubelle`
--

LOCK TABLES `compte_poubelle` WRITE;
/*!40000 ALTER TABLE `compte_poubelle` DISABLE KEYS */;
INSERT INTO `compte_poubelle` VALUES (3011,293),(3012,293),(3013,293),(3014,293),(3011,294),(3012,294),(3013,294),(3014,294),(3011,295),(3012,295),(3013,295),(3014,295),(3011,296),(3012,296),(3013,296),(3014,296),(3011,297),(3012,297),(3013,297),(3014,297),(3021,298),(3022,298),(3023,298),(3024,298),(3021,299),(3022,299),(3023,299),(3024,299),(3021,300),(3022,300),(3023,300),(3024,300),(3021,301),(3022,301),(3023,301),(3024,301),(3021,302),(3022,302),(3023,302),(3024,302);
/*!40000 ALTER TABLE `compte_poubelle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compte_produit`
--

DROP TABLE IF EXISTS `compte_produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compte_produit` (
  `idCompte` int NOT NULL,
  `idProduit` int NOT NULL,
  PRIMARY KEY (`idCompte`,`idProduit`),
  KEY `fk_produit_cp` (`idProduit`),
  CONSTRAINT `fk_compte` FOREIGN KEY (`idCompte`) REFERENCES `compte` (`idCompte`) ON DELETE CASCADE,
  CONSTRAINT `fk_produit_cp` FOREIGN KEY (`idProduit`) REFERENCES `produit` (`idProduit`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compte_produit`
--

LOCK TABLES `compte_produit` WRITE;
/*!40000 ALTER TABLE `compte_produit` DISABLE KEYS */;
INSERT INTO `compte_produit` VALUES (101,693),(101,694),(101,695),(101,696),(101,697),(101,698),(101,699),(101,700),(101,701),(101,702),(101,703),(101,704),(101,705),(101,706),(101,707),(101,708),(101,709),(101,710),(101,711),(101,712),(101,713),(101,714),(101,715),(101,716),(101,717),(101,718),(101,719),(101,720),(101,721),(101,722),(101,723),(101,724),(101,725),(101,726),(101,727),(101,728),(102,729),(102,730),(102,731),(102,732),(102,733),(102,734),(102,735),(102,736),(102,737),(102,738),(102,739),(102,740),(102,741),(102,742),(102,743),(102,744),(102,745),(102,746),(102,747),(102,748),(102,749),(102,750),(102,751),(102,752),(102,753),(102,754),(102,755),(102,756),(102,757),(102,758),(102,759),(102,760),(102,761),(102,762),(102,763),(102,764);
/*!40000 ALTER TABLE `compte_produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contrat_categorie`
--

DROP TABLE IF EXISTS `contrat_categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contrat_categorie` (
  `idContrat` int NOT NULL,
  `idCategorie` int NOT NULL,
  PRIMARY KEY (`idContrat`,`idCategorie`),
  KEY `contrat_categorie_ibfk_2` (`idCategorie`),
  CONSTRAINT `contrat_categorie_ibfk_1` FOREIGN KEY (`idContrat`) REFERENCES `partenariat` (`idContrat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `contrat_categorie_ibfk_2` FOREIGN KEY (`idCategorie`) REFERENCES `categorieproduit` (`idCategorie`) ON DELETE CASCADE,
  CONSTRAINT `fk_contrat_categorie` FOREIGN KEY (`idCategorie`) REFERENCES `categorieproduit` (`idCategorie`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrat_categorie`
--

LOCK TABLES `contrat_categorie` WRITE;
/*!40000 ALTER TABLE `contrat_categorie` DISABLE KEYS */;
INSERT INTO `contrat_categorie` VALUES (1043,365),(1043,366),(1043,367),(1043,368),(1043,369),(1043,370),(1043,371),(1043,372),(1043,373),(1043,374),(1043,375),(1043,376),(1044,385),(1044,386),(1044,387),(1044,388),(1044,389),(1044,390),(1044,391),(1044,392),(1044,393),(1044,394),(1044,395),(1044,396);
/*!40000 ALTER TABLE `contrat_categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dechet`
--

DROP TABLE IF EXISTS `dechet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dechet` (
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `masse` float NOT NULL,
  PRIMARY KEY (`nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dechet`
--

LOCK TABLES `dechet` WRITE;
/*!40000 ALTER TABLE `dechet` DISABLE KEYS */;
INSERT INTO `dechet` VALUES ('Bio1','BIODECHET',2),('Bio2','BIODECHET',1),('Métaux','METAUX',60),('Papier','PAPIER',30),('Papier1','PAPIER',2),('Papier2','PAPIER',4),('plastique','PLASTIQUE',20),('PlastiquePiece','PLASTIQUE',1.5),('verre','VERRE',10);
/*!40000 ALTER TABLE `dechet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depot`
--

DROP TABLE IF EXISTS `depot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `depot` (
  `idDepot` int NOT NULL AUTO_INCREMENT,
  `quantite` float NOT NULL,
  `dateDepot` datetime NOT NULL,
  `pointsGagnes` float NOT NULL,
  `idPoubelle` int NOT NULL,
  `dechetNom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idDepot`),
  KEY `idPoubelle` (`idPoubelle`),
  KEY `dechetNom` (`dechetNom`),
  CONSTRAINT `depot_ibfk_1` FOREIGN KEY (`idPoubelle`) REFERENCES `poubelle` (`idPoubelle`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `depot_ibfk_2` FOREIGN KEY (`dechetNom`) REFERENCES `dechet` (`nom`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=990408 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depot`
--

LOCK TABLES `depot` WRITE;
/*!40000 ALTER TABLE `depot` DISABLE KEYS */;
/*!40000 ALTER TABLE `depot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historiquedepot`
--

DROP TABLE IF EXISTS `historiquedepot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historiquedepot` (
  `idDepot` int NOT NULL,
  `idPoubelle` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dateDepot` datetime DEFAULT NULL,
  `dechetNom` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantite` float DEFAULT NULL,
  `pointsGagnes` int DEFAULT NULL,
  `idCompte` int DEFAULT NULL,
  PRIMARY KEY (`idDepot`),
  KEY `idPoubelle` (`idPoubelle`),
  KEY `fk_depot_compte` (`idCompte`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historiquedepot`
--

LOCK TABLES `historiquedepot` WRITE;
/*!40000 ALTER TABLE `historiquedepot` DISABLE KEYS */;
INSERT INTO `historiquedepot` VALUES (2001,'PB001','2025-05-03 18:51:27','Plastique',2.5,10,2),(2002,'PB001','2025-05-05 18:51:27','Verre',4,12,2),(2003,'PB002','2025-05-07 18:51:27','Carton',1.2,5,2),(989972,'202','2025-05-08 23:49:01','verre',10,22,97531),(167371,'202','2025-05-08 23:49:09','verre',5,11,97531),(650357,'201','2025-05-09 17:29:34','plastique',20,50,97533),(929612,'201','2025-05-09 19:08:21','plastique',40,100,97533),(990407,'201','2025-05-09 19:25:24','plastique',20,50,97533),(564160,'202','2025-05-09 19:48:39','verre',10,22,97533),(391337,'201','2025-05-09 19:54:25','plastique',80,200,97533),(235006,'204','2025-05-09 20:11:09','Métaux',15,42,97533),(270899,'227','2025-05-09 21:27:23','Plastique',5,13,3011),(201479,'242','2025-05-10 13:22:40','Plastique',80,200,3014),(897804,'250','2025-05-17 14:17:54','Métaux',40,112,97541),(729283,'250','2025-05-17 14:18:22','Métaux',60,168,97541),(505606,'252','2025-05-17 14:18:36','Papier',40,92,97541),(977274,'239','2025-05-21 22:21:27','Papier',40,92,3011),(678573,'239','2025-05-21 22:22:11','Papier',10,23,3013),(913215,'238','2025-05-21 22:22:37','Papier',30,69,3013),(434036,'237','2025-05-21 22:24:32','Plastique',20,50,3012),(113295,'237','2025-05-21 22:26:05','Plastique',20,50,3012);
/*!40000 ALTER TABLE `historiquedepot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partenariat`
--

DROP TABLE IF EXISTS `partenariat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `partenariat` (
  `idContrat` int NOT NULL AUTO_INCREMENT,
  `dateDebut` datetime NOT NULL,
  `dateFin` datetime NOT NULL,
  `tauxConversion` int NOT NULL,
  `id_centre_tri` int NOT NULL,
  PRIMARY KEY (`idContrat`),
  KEY `id_centre_tri` (`id_centre_tri`),
  CONSTRAINT `partenariat_ibfk_1` FOREIGN KEY (`id_centre_tri`) REFERENCES `centredetri` (`idCentreDeTri`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1045 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partenariat`
--

LOCK TABLES `partenariat` WRITE;
/*!40000 ALTER TABLE `partenariat` DISABLE KEYS */;
INSERT INTO `partenariat` VALUES (1043,'2025-05-21 00:00:00','2027-05-21 00:00:00',5,201),(1044,'2025-05-21 00:00:00','2027-05-21 00:00:00',5,202);
/*!40000 ALTER TABLE `partenariat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `poubelle`
--

DROP TABLE IF EXISTS `poubelle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `poubelle` (
  `idPoubelle` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capaciteMax` float DEFAULT NULL,
  `capaciteActuelle` float DEFAULT NULL,
  `estPleine` tinyint(1) DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `typePoubelle` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idCentreDeTri` int NOT NULL,
  PRIMARY KEY (`idPoubelle`),
  KEY `idCentreDeTri` (`idCentreDeTri`),
  CONSTRAINT `poubelle_ibfk_1` FOREIGN KEY (`idCentreDeTri`) REFERENCES `centredetri` (`idCentreDeTri`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=303 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `poubelle`
--

LOCK TABLES `poubelle` WRITE;
/*!40000 ALTER TABLE `poubelle` DISABLE KEYS */;
INSERT INTO `poubelle` VALUES (293,'Poubelle_PLASTIQUE_C1',100,0,0,'Adresse1','PLASTIQUE',201),(294,'Poubelle_VERRE_C1',100,0,0,'Adresse1','VERRE',201),(295,'Poubelle_PAPIER_C1',100,0,0,'Adresse1','PAPIER',201),(296,'Poubelle_METAUX_C1',100,0,0,'Adresse1','METAUX',201),(297,'Poubelle_BIODECHET_C1',100,0,0,'Adresse1','BIODECHET',201),(298,'Poubelle_PLASTIQUE_C2',100,0,0,'Adresse2','PLASTIQUE',202),(299,'Poubelle_VERRE_C2',100,0,0,'Adresse2','VERRE',202),(300,'Poubelle_PAPIER_C2',100,0,0,'Adresse2','PAPIER',202),(301,'Poubelle_METAUX_C2',100,0,0,'Adresse2','METAUX',202),(302,'Poubelle_BIODECHET_C2',100,0,0,'Adresse2','BIODECHET',202);
/*!40000 ALTER TABLE `poubelle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produit` (
  `idProduit` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` float NOT NULL,
  `dateAchat` date NOT NULL,
  PRIMARY KEY (`idProduit`)
) ENGINE=InnoDB AUTO_INCREMENT=765 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produit`
--

LOCK TABLES `produit` WRITE;
/*!40000 ALTER TABLE `produit` DISABLE KEYS */;
INSERT INTO `produit` VALUES (693,'Produit_C1_1_1_1',10,'2025-05-21'),(694,'Produit_C1_1_1_2',20,'2025-05-21'),(695,'Produit_C1_1_1_3',30,'2025-05-21'),(696,'Produit_C1_1_2_1',10,'2025-05-21'),(697,'Produit_C1_1_2_2',20,'2025-05-21'),(698,'Produit_C1_1_2_3',30,'2025-05-21'),(699,'Produit_C1_1_3_1',10,'2025-05-21'),(700,'Produit_C1_1_3_2',20,'2025-05-21'),(701,'Produit_C1_1_3_3',30,'2025-05-21'),(702,'Produit_C1_1_4_1',10,'2025-05-21'),(703,'Produit_C1_1_4_2',20,'2025-05-21'),(704,'Produit_C1_1_4_3',30,'2025-05-21'),(705,'Produit_C1_2_1_1',10,'2025-05-21'),(706,'Produit_C1_2_1_2',20,'2025-05-21'),(707,'Produit_C1_2_1_3',30,'2025-05-21'),(708,'Produit_C1_2_2_1',10,'2025-05-21'),(709,'Produit_C1_2_2_2',20,'2025-05-21'),(710,'Produit_C1_2_2_3',30,'2025-05-21'),(711,'Produit_C1_2_3_1',10,'2025-05-21'),(712,'Produit_C1_2_3_2',20,'2025-05-21'),(713,'Produit_C1_2_3_3',30,'2025-05-21'),(714,'Produit_C1_2_4_1',10,'2025-05-21'),(715,'Produit_C1_2_4_2',20,'2025-05-21'),(716,'Produit_C1_2_4_3',30,'2025-05-21'),(717,'Produit_C1_3_1_1',10,'2025-05-21'),(718,'Produit_C1_3_1_2',20,'2025-05-21'),(719,'Produit_C1_3_1_3',30,'2025-05-21'),(720,'Produit_C1_3_2_1',10,'2025-05-21'),(721,'Produit_C1_3_2_2',20,'2025-05-21'),(722,'Produit_C1_3_2_3',30,'2025-05-21'),(723,'Produit_C1_3_3_1',10,'2025-05-21'),(724,'Produit_C1_3_3_2',20,'2025-05-21'),(725,'Produit_C1_3_3_3',30,'2025-05-21'),(726,'Produit_C1_3_4_1',10,'2025-05-21'),(727,'Produit_C1_3_4_2',20,'2025-05-21'),(728,'Produit_C1_3_4_3',30,'2025-05-21'),(729,'Produit_C2_1_1_1',10,'2025-05-21'),(730,'Produit_C2_1_1_2',20,'2025-05-21'),(731,'Produit_C2_1_1_3',30,'2025-05-21'),(732,'Produit_C2_1_2_1',10,'2025-05-21'),(733,'Produit_C2_1_2_2',20,'2025-05-21'),(734,'Produit_C2_1_2_3',30,'2025-05-21'),(735,'Produit_C2_1_3_1',10,'2025-05-21'),(736,'Produit_C2_1_3_2',20,'2025-05-21'),(737,'Produit_C2_1_3_3',30,'2025-05-21'),(738,'Produit_C2_1_4_1',10,'2025-05-21'),(739,'Produit_C2_1_4_2',20,'2025-05-21'),(740,'Produit_C2_1_4_3',30,'2025-05-21'),(741,'Produit_C2_2_1_1',10,'2025-05-21'),(742,'Produit_C2_2_1_2',20,'2025-05-21'),(743,'Produit_C2_2_1_3',30,'2025-05-21'),(744,'Produit_C2_2_2_1',10,'2025-05-21'),(745,'Produit_C2_2_2_2',20,'2025-05-21'),(746,'Produit_C2_2_2_3',30,'2025-05-21'),(747,'Produit_C2_2_3_1',10,'2025-05-21'),(748,'Produit_C2_2_3_2',20,'2025-05-21'),(749,'Produit_C2_2_3_3',30,'2025-05-21'),(750,'Produit_C2_2_4_1',10,'2025-05-21'),(751,'Produit_C2_2_4_2',20,'2025-05-21'),(752,'Produit_C2_2_4_3',30,'2025-05-21'),(753,'Produit_C2_3_1_1',10,'2025-05-21'),(754,'Produit_C2_3_1_2',20,'2025-05-21'),(755,'Produit_C2_3_1_3',30,'2025-05-21'),(756,'Produit_C2_3_2_1',10,'2025-05-21'),(757,'Produit_C2_3_2_2',20,'2025-05-21'),(758,'Produit_C2_3_2_3',30,'2025-05-21'),(759,'Produit_C2_3_3_1',10,'2025-05-21'),(760,'Produit_C2_3_3_2',20,'2025-05-21'),(761,'Produit_C2_3_3_3',30,'2025-05-21'),(762,'Produit_C2_3_4_1',10,'2025-05-21'),(763,'Produit_C2_3_4_2',20,'2025-05-21'),(764,'Produit_C2_3_4_3',30,'2025-05-21');
/*!40000 ALTER TABLE `produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produit_categorie`
--

DROP TABLE IF EXISTS `produit_categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produit_categorie` (
  `idProduit` int NOT NULL,
  `idCategorie` int NOT NULL,
  PRIMARY KEY (`idProduit`,`idCategorie`),
  KEY `fk_pc_categorie` (`idCategorie`),
  CONSTRAINT `fk_pc_categorie` FOREIGN KEY (`idCategorie`) REFERENCES `categorieproduit` (`idCategorie`) ON DELETE CASCADE,
  CONSTRAINT `fk_produit` FOREIGN KEY (`idProduit`) REFERENCES `produit` (`idProduit`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produit_categorie`
--

LOCK TABLES `produit_categorie` WRITE;
/*!40000 ALTER TABLE `produit_categorie` DISABLE KEYS */;
INSERT INTO `produit_categorie` VALUES (693,365),(694,365),(695,365),(696,366),(697,366),(698,366),(699,367),(700,367),(701,367),(702,368),(703,368),(704,368),(705,369),(706,369),(707,369),(708,370),(709,370),(710,370),(711,371),(712,371),(713,371),(714,372),(715,372),(716,372),(717,373),(718,373),(719,373),(720,374),(721,374),(722,374),(723,375),(724,375),(725,375),(726,376),(727,376),(728,376),(729,385),(730,385),(731,385),(732,386),(733,386),(734,386),(735,387),(736,387),(737,387),(738,388),(739,388),(740,388),(741,389),(742,389),(743,389),(744,390),(745,390),(746,390),(747,391),(748,391),(749,391),(750,392),(751,392),(752,392),(753,393),(754,393),(755,393),(756,394),(757,394),(758,394),(759,395),(760,395),(761,395),(762,396),(763,396),(764,396);
/*!40000 ALTER TABLE `produit_categorie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-21 22:53:29
