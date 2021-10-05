-- MySQL dump 10.13  Distrib 5.7.35, for Win64 (x86_64)
--
-- Host: localhost    Database: tabela1
-- ------------------------------------------------------
-- Server version	5.7.35-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `igrac`
--

DROP TABLE IF EXISTS `igrac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igrac` (
  `IDIgrac` int(99) NOT NULL,
  `Ime` varchar(25) DEFAULT NULL,
  `IDTim` int(5) DEFAULT NULL,
  `Rating` int(5) DEFAULT NULL,
  `IDPozicija` int(1) DEFAULT NULL,
  PRIMARY KEY (`IDIgrac`),
  KEY `IDPozicija` (`IDPozicija`),
  KEY `IDTim` (`IDTim`),
  CONSTRAINT `igrac_ibfk_1` FOREIGN KEY (`IDPozicija`) REFERENCES `pozicija` (`IDPozicija`) ON DELETE SET NULL,
  CONSTRAINT `igrac_ibfk_2` FOREIGN KEY (`IDTim`) REFERENCES `tim` (`IDTim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `igrac`
--

LOCK TABLES `igrac` WRITE;
/*!40000 ALTER TABLE `igrac` DISABLE KEYS */;
INSERT INTO `igrac` VALUES (25907144,'Cr1t',1,11500,4),(72312627,'MATUMBAMAN',3,13970,1),(73562326,'zai',3,10100,3),(84772440,'Iceiceice',1,10000,3),(86745912,'Arteezy',1,11000,1),(87278757,'Puppey',3,11740,5),(89117038,'YapzOr',3,9800,4),(94155156,'Fly',1,10300,5),(111114687,'y`',2,11850,5),(118134220,'Faith_Bian',2,11330,3),(121769650,'Nisha',3,12575,2),(154715080,'Abed',1,12000,2),(157475523,'XinQ',2,12970,4),(173978074,'NothingToSay',2,12650,2),(898754153,'Ame',2,11800,1);
/*!40000 ALTER TABLE `igrac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mec`
--

DROP TABLE IF EXISTS `mec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mec` (
  `IDMec` int(15) NOT NULL,
  `ProsecanRating` int(12) DEFAULT NULL,
  `Pobedio_IDTim` int(5) DEFAULT NULL,
  `IDRegija` int(5) DEFAULT NULL,
  PRIMARY KEY (`IDMec`),
  KEY `IDTim` (`Pobedio_IDTim`),
  KEY `IDRegija` (`IDRegija`),
  CONSTRAINT `mec_ibfk_1` FOREIGN KEY (`Pobedio_IDTim`) REFERENCES `tim` (`IDTim`) ON DELETE CASCADE,
  CONSTRAINT `mec_ibfk_2` FOREIGN KEY (`IDRegija`) REFERENCES `regija` (`IDRegija`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mec`
--

LOCK TABLES `mec` WRITE;
/*!40000 ALTER TABLE `mec` DISABLE KEYS */;
INSERT INTO `mec` VALUES (165570298,11540,1,3),(604080278,11540,2,2),(897213453,11637,3,1);
/*!40000 ALTER TABLE `mec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pozicija`
--

DROP TABLE IF EXISTS `pozicija`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pozicija` (
  `IDPozicija` int(1) NOT NULL,
  `Role` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`IDPozicija`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pozicija`
--

LOCK TABLES `pozicija` WRITE;
/*!40000 ALTER TABLE `pozicija` DISABLE KEYS */;
INSERT INTO `pozicija` VALUES (1,'Carry'),(2,'Mid'),(3,'Offlane'),(4,'Support'),(5,'Hard Support');
/*!40000 ALTER TABLE `pozicija` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regija`
--

DROP TABLE IF EXISTS `regija`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regija` (
  `IDRegija` int(5) NOT NULL,
  `Naziv` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`IDRegija`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regija`
--

LOCK TABLES `regija` WRITE;
/*!40000 ALTER TABLE `regija` DISABLE KEYS */;
INSERT INTO `regija` VALUES (1,'EU West'),(2,'EU East'),(3,'Russia');
/*!40000 ALTER TABLE `regija` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tim`
--

DROP TABLE IF EXISTS `tim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tim` (
  `IDTim` int(5) NOT NULL,
  `Naziv` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`IDTim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tim`
--

LOCK TABLES `tim` WRITE;
/*!40000 ALTER TABLE `tim` DISABLE KEYS */;
INSERT INTO `tim` VALUES (1,'EG'),(2,'PSG.LGD'),(3,'Team Secret');
/*!40000 ALTER TABLE `tim` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-05 23:26:57
