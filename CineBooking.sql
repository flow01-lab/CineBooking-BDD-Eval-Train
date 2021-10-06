-- MariaDB dump 10.19  Distrib 10.6.4-MariaDB, for osx10.16 (x86_64)
--
-- Host: localhost    Database: CineBooking
-- ------------------------------------------------------
-- Server version	10.6.4-MariaDB

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
-- Table structure for table `Cinemas`
--

DROP TABLE IF EXISTS `Cinemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cinemas` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Adress` varchar(254) DEFAULT NULL,
  `ZIPCode` int(11) DEFAULT NULL,
  `Phone` varchar(25) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cinemas`
--

LOCK TABLES `Cinemas` WRITE;
/*!40000 ALTER TABLE `Cinemas` DISABLE KEYS */;
INSERT INTO `Cinemas` VALUES (1,'Le Concorde','Villeflight','8 Rue Belair',87000,'0260385223','contact@concorde.fr'),(2,'Le Manège','Tours','10 Rue de la Cavalerie',37000,'0460532976','contact@lemanège-tours.fr'),(3,'Le Cihell','Enfert','12 Avenue du Purgatoire',88666,'0945278566','contact@lecihell.com');
/*!40000 ALTER TABLE `Cinemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customers` (
  `Id` char(36) NOT NULL,
  `FirstName` varchar(25) DEFAULT NULL,
  `LastName` varchar(25) DEFAULT NULL,
  `DateBirth` date DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Phone` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES ('3debcb30-26b7-11ec-93f4-acde48001122','John','Doe','1970-09-12','jonh.doe@studi-universe.com','0660385223'),('3dec6522-26b7-11ec-93f4-acde48001122','Sarah','Conor','1983-06-26','sarah.conor@studi-universe.com','0705329763'),('3dec83ea-26b7-11ec-93f4-acde48001122','Martin','Dupond','1998-08-15','dupond.martin@studi-universe.com','0845278566');
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movies`
--

DROP TABLE IF EXISTS `Movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movies` (
  `Id` char(36) NOT NULL,
  `Name` varchar(254) DEFAULT NULL,
  `Duration` int(11) DEFAULT NULL,
  `Director` varchar(100) DEFAULT NULL,
  `ReleaseDate` year(4) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movies`
--

LOCK TABLES `Movies` WRITE;
/*!40000 ALTER TABLE `Movies` DISABLE KEYS */;
INSERT INTO `Movies` VALUES ('26645012-26b8-11ec-93f4-acde48001122','Gunda',93,'Victor Kossakovsky',2020,'Norvège/États-Unis'),('26646426-26b8-11ec-93f4-acde48001122','The Earth is Blue as an Orange',74,'Iryna Tsilyk',2020,'Ukraine/Litunanie'),('26646534-26b8-11ec-93f4-acde48001122','STARGIRL',107,'Julia Hart',2020,'États-Unis'),('26646584-26b8-11ec-93f4-acde48001122','ORLANDO',94,'Sally Potter',1992,'Royaume-Unis'),('266465ca-26b8-11ec-93f4-acde48001122','MY SALINGER YEAR',101,'Philippe Falardeau',2020,'Irlande/Canada');
/*!40000 ALTER TABLE `Movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderCustom`
--

DROP TABLE IF EXISTS `OrderCustom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrderCustom` (
  `Id` char(36) NOT NULL,
  `CustomerId` char(36) DEFAULT NULL,
  `CinemaId` int(11) DEFAULT NULL,
  `OrderDate` datetime DEFAULT NULL,
  `MovieId` char(36) DEFAULT NULL,
  `SessionId` int(11) DEFAULT NULL,
  `RateId` int(11) DEFAULT NULL,
  `Places` int(11) DEFAULT NULL,
  `Cost` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderCustom`
--

LOCK TABLES `OrderCustom` WRITE;
/*!40000 ALTER TABLE `OrderCustom` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrderCustom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProjectRooms`
--

DROP TABLE IF EXISTS `ProjectRooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProjectRooms` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `Places` int(11) DEFAULT NULL,
  `NbSessionAuth` int(11) DEFAULT NULL,
  `CinemaId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProjectRooms`
--

LOCK TABLES `ProjectRooms` WRITE;
/*!40000 ALTER TABLE `ProjectRooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProjectRooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rates`
--

DROP TABLE IF EXISTS `Rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Rates` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) DEFAULT NULL,
  `Price` decimal(10,0) DEFAULT NULL,
  `Currency` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rates`
--

LOCK TABLES `Rates` WRITE;
/*!40000 ALTER TABLE `Rates` DISABLE KEYS */;
INSERT INTO `Rates` VALUES (1,'Plein Tarif',9,'€'),(2,'Etudiant',8,'€'),(3,'Moins de 14 ans',6,'€');
/*!40000 ALTER TABLE `Rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sessions`
--

DROP TABLE IF EXISTS `Sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sessions` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `DateTime` datetime DEFAULT NULL,
  `ProjectRoomId` int(11) DEFAULT NULL,
  `MovieId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sessions`
--

LOCK TABLES `Sessions` WRITE;
/*!40000 ALTER TABLE `Sessions` DISABLE KEYS */;
INSERT INTO `Sessions` VALUES (1,'2021-10-11 10:00:00',NULL,NULL),(2,'2021-10-11 10:30:00',NULL,NULL),(3,'2021-10-11 11:00:00',NULL,NULL),(4,'2021-10-11 12:00:00',NULL,NULL),(5,'2021-10-12 10:00:00',NULL,NULL),(6,'2021-10-12 14:00:00',NULL,NULL),(7,'2021-10-12 15:00:00',NULL,NULL),(8,'2021-10-13 11:00:00',NULL,NULL),(9,'2021-10-13 16:00:00',NULL,NULL),(10,'2021-10-14 14:00:00',NULL,NULL);
/*!40000 ALTER TABLE `Sessions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-06 18:26:33
