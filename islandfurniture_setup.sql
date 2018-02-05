CREATE DATABASE  IF NOT EXISTS `islandfurniture-it07` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `islandfurniture-it07`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: islandfurniture-it07
-- ------------------------------------------------------
-- Server version   5.6.21-log

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
-- Table structure for table `accessrightentity`
--

DROP TABLE IF EXISTS `accessrightentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessrightentity` (
  `ID` bigint(20) NOT NULL,
  `ROLE_ID` bigint(20) DEFAULT NULL,
  `STAFF_ID` bigint(20) DEFAULT NULL,
  `MANUFACTURINGFACILITY_ID` bigint(20) DEFAULT NULL,
  `REGIONALOFFICE_ID` bigint(20) DEFAULT NULL,
  `STORE_ID` bigint(20) DEFAULT NULL,
  `WAREHOUSE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ACCESSRIGHTENTITY_ROLE_ID` (`ROLE_ID`),
  KEY `FK_ACCESSRIGHTENTITY_STORE_ID` (`STORE_ID`),
  KEY `FK_ACCESSRIGHTENTITY_WAREHOUSE_ID` (`WAREHOUSE_ID`),
  KEY `FK_ACCESSRIGHTENTITY_STAFF_ID` (`STAFF_ID`),
  KEY `FK_ACCESSRIGHTENTITY_REGIONALOFFICE_ID` (`REGIONALOFFICE_ID`),
  KEY `FK_ACCESSRIGHTENTITY_MANUFACTURINGFACILITY_ID` (`MANUFACTURINGFACILITY_ID`),
  CONSTRAINT `FK_ACCESSRIGHTENTITY_MANUFACTURINGFACILITY_ID` FOREIGN KEY (`MANUFACTURINGFACILITY_ID`) REFERENCES `manufacturingfacilityentity` (`ID`),
  CONSTRAINT `FK_ACCESSRIGHTENTITY_REGIONALOFFICE_ID` FOREIGN KEY (`REGIONALOFFICE_ID`) REFERENCES `regionalofficeentity` (`ID`),
  CONSTRAINT `FK_ACCESSRIGHTENTITY_ROLE_ID` FOREIGN KEY (`ROLE_ID`) REFERENCES `roleentity` (`ID`),
  CONSTRAINT `FK_ACCESSRIGHTENTITY_STAFF_ID` FOREIGN KEY (`STAFF_ID`) REFERENCES `staffentity` (`ID`),
  CONSTRAINT `FK_ACCESSRIGHTENTITY_STORE_ID` FOREIGN KEY (`STORE_ID`) REFERENCES `storeentity` (`ID`),
  CONSTRAINT `FK_ACCESSRIGHTENTITY_WAREHOUSE_ID` FOREIGN KEY (`WAREHOUSE_ID`) REFERENCES `warehouseentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessrightentity`
--

LOCK TABLES `accessrightentity` WRITE;
/*!40000 ALTER TABLE `accessrightentity` DISABLE KEYS */;
INSERT INTO `accessrightentity` VALUES (7951,4,2101,NULL,NULL,59,NULL),(7952,9,17,NULL,NULL,59,NULL),(7953,9,18,NULL,NULL,59,NULL),(7954,2,651,NULL,53,NULL,NULL),(7955,3,655,NULL,NULL,NULL,55),(7956,10,2053,NULL,NULL,59,NULL),(7957,12,2051,NULL,NULL,59,NULL),(7958,12,2052,NULL,NULL,59,NULL),(8301,7,8257,NULL,53,NULL,NULL),(8302,7,8258,NULL,653,NULL,NULL),(8303,8,8259,54,NULL,NULL,NULL),(9801,12,2204,NULL,NULL,59,NULL);
/*!40000 ALTER TABLE `accessrightentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accessrightsentity`
--

DROP TABLE IF EXISTS `accessrightsentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessrightsentity` (
  `ID` bigint(20) NOT NULL,
  `ROLE_ID` bigint(20) DEFAULT NULL,
  `STAFF_ID` bigint(20) DEFAULT NULL,
  `MANUFACTURINGFACILITY_ID` bigint(20) DEFAULT NULL,
  `REGIONALOFFICE_ID` bigint(20) DEFAULT NULL,
  `STORE_ID` bigint(20) DEFAULT NULL,
  `WAREHOUSE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ACCESSRIGHTSENTITY_REGIONALOFFICE_ID` (`REGIONALOFFICE_ID`),
  KEY `FK_ACCESSRIGHTSENTITY_STORE_ID` (`STORE_ID`),
  KEY `FK_ACCESSRIGHTSENTITY_WAREHOUSE_ID` (`WAREHOUSE_ID`),
  KEY `FK_ACCESSRIGHTSENTITY_STAFF_ID` (`STAFF_ID`),
  KEY `FK_ACCESSRIGHTSENTITY_ROLE_ID` (`ROLE_ID`),
  KEY `FK_ACCESSRIGHTSENTITY_MANUFACTURINGFACILITY_ID` (`MANUFACTURINGFACILITY_ID`),
  CONSTRAINT `FK_ACCESSRIGHTSENTITY_MANUFACTURINGFACILITY_ID` FOREIGN KEY (`MANUFACTURINGFACILITY_ID`) REFERENCES `manufacturingfacilityentity` (`ID`),
  CONSTRAINT `FK_ACCESSRIGHTSENTITY_REGIONALOFFICE_ID` FOREIGN KEY (`REGIONALOFFICE_ID`) REFERENCES `regionalofficeentity` (`ID`),
  CONSTRAINT `FK_ACCESSRIGHTSENTITY_ROLE_ID` FOREIGN KEY (`ROLE_ID`) REFERENCES `roleentity` (`ID`),
  CONSTRAINT `FK_ACCESSRIGHTSENTITY_STAFF_ID` FOREIGN KEY (`STAFF_ID`) REFERENCES `staffentity` (`ID`),
  CONSTRAINT `FK_ACCESSRIGHTSENTITY_STORE_ID` FOREIGN KEY (`STORE_ID`) REFERENCES `storeentity` (`ID`),
  CONSTRAINT `FK_ACCESSRIGHTSENTITY_WAREHOUSE_ID` FOREIGN KEY (`WAREHOUSE_ID`) REFERENCES `warehouseentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessrightsentity`
--

LOCK TABLES `accessrightsentity` WRITE;
/*!40000 ALTER TABLE `accessrightsentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `accessrightsentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcemententity`
--

DROP TABLE IF EXISTS `announcemententity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcemententity` (
  `ID` bigint(20) NOT NULL,
  `BROADCASTEDDATE` date DEFAULT NULL,
  `EXPIRYDATE` date DEFAULT NULL,
  `MESSAGE` longtext,
  `SENDER` longtext,
  `TITLE` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcemententity`
--

LOCK TABLES `announcemententity` WRITE;
/*!40000 ALTER TABLE `announcemententity` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcemententity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billofmaterialentity`
--

DROP TABLE IF EXISTS `billofmaterialentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billofmaterialentity` (
  `ID` bigint(20) NOT NULL,
  `DESCRIPTION` longtext,
  `NAME` longtext,
  `WORKHOURS` int(11) DEFAULT NULL,
  `FURNITURE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_BILLOFMATERIALENTITY_FURNITURE_ID` (`FURNITURE_ID`),
  CONSTRAINT `FK_BILLOFMATERIALENTITY_FURNITURE_ID` FOREIGN KEY (`FURNITURE_ID`) REFERENCES `itementity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billofmaterialentity`
--

LOCK TABLES `billofmaterialentity` WRITE;
/*!40000 ALTER TABLE `billofmaterialentity` DISABLE KEYS */;
INSERT INTO `billofmaterialentity` VALUES (333,'BOM1 Description','BOM1',10,69),(334,'BOM2 Description','BOM2',10,71),(335,'BOM3 Description','BOM3',15,70);
/*!40000 ALTER TABLE `billofmaterialentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billofmaterialentity_lineitementity`
--

DROP TABLE IF EXISTS `billofmaterialentity_lineitementity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billofmaterialentity_lineitementity` (
  `BillOfMaterialEntity_ID` bigint(20) NOT NULL,
  `listOfLineItems_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`BillOfMaterialEntity_ID`,`listOfLineItems_ID`),
  KEY `BLLOFMATERIALENTITYLINEITEMENTITYlistOfLineItemsID` (`listOfLineItems_ID`),
  CONSTRAINT `BLLFMTERIALENTITYLINEITEMENTITYBllfMterialEntityID` FOREIGN KEY (`BillOfMaterialEntity_ID`) REFERENCES `billofmaterialentity` (`ID`),
  CONSTRAINT `BLLOFMATERIALENTITYLINEITEMENTITYlistOfLineItemsID` FOREIGN KEY (`listOfLineItems_ID`) REFERENCES `lineitementity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billofmaterialentity_lineitementity`
--

LOCK TABLES `billofmaterialentity_lineitementity` WRITE;
/*!40000 ALTER TABLE `billofmaterialentity_lineitementity` DISABLE KEYS */;
INSERT INTO `billofmaterialentity_lineitementity` VALUES (333,4565),(333,4566),(334,4568),(334,4570),(335,4573),(335,4575);
/*!40000 ALTER TABLE `billofmaterialentity_lineitementity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comboentity`
--

DROP TABLE IF EXISTS `comboentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comboentity` (
  `ID` bigint(20) NOT NULL,
  `IMAGEURL` longtext,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_COMBOENTITY_ID` FOREIGN KEY (`ID`) REFERENCES `itementity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comboentity`
--

LOCK TABLES `comboentity` WRITE;
/*!40000 ALTER TABLE `comboentity` DISABLE KEYS */;
INSERT INTO `comboentity` VALUES (4596,'/IS3102_Project-war/img/products/K_CO_01.jpg'),(4599,'/IS3102_Project-war/img/products/K_CO_02.jpg'),(4617,'/IS3102_Project-war/img/products/K_CO_03.jpg'),(4619,'/IS3102_Project-war/img/products/K_CO_04.jpg'),(4623,'/IS3102_Project-war/img/products/K_CO_05.jpg');
/*!40000 ALTER TABLE `comboentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `combolineitementity`
--

DROP TABLE IF EXISTS `combolineitementity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `combolineitementity` (
  `ID` bigint(20) NOT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  `COMBO_ID` bigint(20) DEFAULT NULL,
  `MENUITEM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_COMBOLINEITEMENTITY_MENUITEM_ID` (`MENUITEM_ID`),
  KEY `FK_COMBOLINEITEMENTITY_COMBO_ID` (`COMBO_ID`),
  CONSTRAINT `FK_COMBOLINEITEMENTITY_COMBO_ID` FOREIGN KEY (`COMBO_ID`) REFERENCES `itementity` (`ID`),
  CONSTRAINT `FK_COMBOLINEITEMENTITY_MENUITEM_ID` FOREIGN KEY (`MENUITEM_ID`) REFERENCES `itementity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `combolineitementity`
--

LOCK TABLES `combolineitementity` WRITE;
/*!40000 ALTER TABLE `combolineitementity` DISABLE KEYS */;
INSERT INTO `combolineitementity` VALUES (4597,NULL,4596,4590),(4598,NULL,4596,4591),(4600,NULL,4599,4579),(4601,NULL,NULL,4591),(4602,NULL,NULL,4591),(4615,NULL,NULL,4591),(4616,NULL,NULL,4591),(4618,NULL,NULL,4591),(4628,NULL,4619,4584),(4629,NULL,4619,4592),(4632,NULL,4623,4586),(4635,NULL,NULL,4592),(4638,NULL,4617,4578),(4639,NULL,NULL,4591),(6351,NULL,4599,4591),(6352,NULL,4617,4591),(6353,NULL,4623,4592);
/*!40000 ALTER TABLE `combolineitementity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country_ecommerce`
--

DROP TABLE IF EXISTS `country_ecommerce`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country_ecommerce` (
  `CountryEntity_ID` bigint(20) NOT NULL,
  `WarehouseEntity_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`CountryEntity_ID`,`WarehouseEntity_ID`),
  KEY `WarehouseEntity_ID_idx` (`WarehouseEntity_ID`),
  CONSTRAINT `CountryEntity_ID` FOREIGN KEY (`CountryEntity_ID`) REFERENCES `countryentity` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `WarehouseEntity_ID` FOREIGN KEY (`WarehouseEntity_ID`) REFERENCES `warehouseentity` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country_ecommerce`
--

LOCK TABLES `country_ecommerce` WRITE;
/*!40000 ALTER TABLE `country_ecommerce` DISABLE KEYS */;
INSERT INTO `country_ecommerce` VALUES (25,10002);
/*!40000 ALTER TABLE `country_ecommerce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countryentity`
--

DROP TABLE IF EXISTS `countryentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countryentity` (
  `ID` bigint(20) NOT NULL,
  `COUNTRYCODE` int(11) DEFAULT NULL,
  `CURRENCY` longtext,
  `EXCHANGERATE` double DEFAULT NULL,
  `NAME` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countryentity`
--

LOCK TABLES `countryentity` WRITE;
/*!40000 ALTER TABLE `countryentity` DISABLE KEYS */;
INSERT INTO `countryentity` VALUES (25,65,'SGD',1.25,'Singapore'),(26,60,'MYR',3,'Malaysia'),(27,62,'IDR',120,'Indonesia'),(28,1,'USD',1,'United States'),(29,86,'RMB',6.13,'China'),(65,4,'EUR',0.798,'France');
/*!40000 ALTER TABLE `countryentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerindependentrequiremententity`
--

DROP TABLE IF EXISTS `customerindependentrequiremententity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customerindependentrequiremententity` (
  `ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerindependentrequiremententity`
--

LOCK TABLES `customerindependentrequiremententity` WRITE;
/*!40000 ALTER TABLE `customerindependentrequiremententity` DISABLE KEYS */;
/*!40000 ALTER TABLE `customerindependentrequiremententity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveryorderentity`
--

DROP TABLE IF EXISTS `deliveryorderentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deliveryorderentity` (
  `ID` bigint(20) NOT NULL,
  `ISDELETED` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryorderentity`
--

LOCK TABLES `deliveryorderentity` WRITE;
/*!40000 ALTER TABLE `deliveryorderentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `deliveryorderentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbackentity`
--

DROP TABLE IF EXISTS `feedbackentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedbackentity` (
  `ID` bigint(20) NOT NULL,
  `EMAIL` longtext,
  `MESSAGE` longtext,
  `NAME` longtext,
  `SUBJECT` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbackentity`
--

LOCK TABLES `feedbackentity` WRITE;
/*!40000 ALTER TABLE `feedbackentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedbackentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `furnitureentity`
--

DROP TABLE IF EXISTS `furnitureentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `furnitureentity` (
  `ID` bigint(20) NOT NULL,
  `IMAGEURL` longtext,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_FURNITUREENTITY_ID` FOREIGN KEY (`ID`) REFERENCES `itementity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `furnitureentity`
--

LOCK TABLES `furnitureentity` WRITE;
/*!40000 ALTER TABLE `furnitureentity` DISABLE KEYS */;
INSERT INTO `furnitureentity` VALUES (69,'/IS3102_Project-war/img/products/F_TD_01.jpg'),(70,'/IS3102_Project-war/img/products/F_BM_21.jpg'),(71,'/IS3102_Project-war/img/products/F_TD_02.jpg'),(751,'/IS3102_Project-war/img/products/F_TD_03.jpg'),(752,'/IS3102_Project-war/img/products/F_TD_04.jpg'),(755,'/IS3102_Project-war/img/products/F_TD_05.jpg'),(756,'/IS3102_Project-war/img/products/F_TD_06.jpg'),(757,'/IS3102_Project-war/img/products/F_TD_07.jpg'),(759,'/IS3102_Project-war/img/products/F_TD_08.jpg'),(760,'/IS3102_Project-war/img/products/F_TD_09.jpg'),(761,'/IS3102_Project-war/img/products/F_TD_10.jpg'),(762,'/IS3102_Project-war/img/products/F_BA_11.jpg'),(763,'/IS3102_Project-war/img/products/F_SC_40.jpg'),(764,'/IS3102_Project-war/img/products/F_BA_12.jpg'),(765,'/IS3102_Project-war/img/products/F_BA_13.jpg'),(767,'/IS3102_Project-war/img/products/F_BA_14.jpg'),(768,'/IS3102_Project-war/img/products/F_BA_15.jpg'),(769,'/IS3102_Project-war/img/products/F_CS_41.jpg'),(770,'/IS3102_Project-war/img/products/F_BA_16.jpg'),(771,'/IS3102_Project-war/img/products/F_BA_17.jpg'),(772,'/IS3102_Project-war/img/products/F_CS_42.jpg'),(801,'/IS3102_Project-war/img/products/F_CS_44.jpg'),(802,'/IS3102_Project-war/img/products/F_CS_45.jpg'),(803,'/IS3102_Project-war/img/products/F_BA_18.jpg'),(804,'/IS3102_Project-war/img/products/F_CS_46.jpg'),(805,'/IS3102_Project-war/img/products/With suction cup that grip smooth surfaces. Made of zink-plated steel which is durable and rust resistant..jpg'),(806,'/IS3102_Project-war/img/products/F_CS_47.jpg'),(808,'/IS3102_Project-war/img/products/F_CS_48.jpg'),(809,'/IS3102_Project-war/img/products/F_BA_19.jpg'),(851,'/IS3102_Project-war/img/products/F_CS_49.jpg'),(901,'/IS3102_Project-war/img/products/F_BA_20.jpg'),(902,'/IS3102_Project-war/img/products/F_BM_22.jpg'),(903,'/IS3102_Project-war/img/products/F_BM_23.jpg'),(904,'/IS3102_Project-war/img/products/F_CS_50.jpg'),(905,'/IS3102_Project-war/img/products/F_BM_24.jpg'),(906,'/IS3102_Project-war/img/products/F_LI_51.jpg'),(907,'/IS3102_Project-war/img/products/F_BM_25.jpg'),(908,'/IS3102_Project-war/img/products/F_LI_52.jpg'),(909,'/IS3102_Project-war/img/products/F_BM_26.jpg'),(910,'/IS3102_Project-war/img/products/F_LI_53.jpg'),(911,'/IS3102_Project-war/img/products/F_BM_27.jpg'),(912,'/IS3102_Project-war/img/products/F_LI_54.jpg'),(913,'/IS3102_Project-war/img/products/F_BM_28.jpg'),(914,'/IS3102_Project-war/img/products/F_LI_55.jpg'),(915,'/IS3102_Project-war/img/products/F_BM_29.jpg'),(916,'/IS3102_Project-war/img/products/F_LI_56.jpg'),(917,'/IS3102_Project-war/img/products/F_BM_30.jpg'),(918,'/IS3102_Project-war/img/products/F_LI_57.jpg'),(919,'/IS3102_Project-war/img/products/F_SC_31.jpg'),(920,'/IS3102_Project-war/img/products/F_LI_58.jpg'),(921,'/IS3102_Project-war/img/products/F_SC_32.jpg'),(922,'/IS3102_Project-war/img/products/F_LI_59.jpg'),(924,'/IS3102_Project-war/img/products/F_SC_33.jpg'),(925,'/IS3102_Project-war/img/products/F_LI_60.jpg'),(926,'/IS3102_Project-war/img/products/F_SC_34.jpg'),(927,'/IS3102_Project-war/img/products/F_ST_61.jpg'),(928,'/IS3102_Project-war/img/products/F_SC_35.jpg'),(930,'/IS3102_Project-war/img/products/F_ST_62.jpg'),(931,'/IS3102_Project-war/img/products/F_SC_36.jpg'),(932,'/IS3102_Project-war/img/products/F_ST_63.jpg'),(934,'/IS3102_Project-war/img/products/F_SC_37.jpg'),(935,'/IS3102_Project-war/img/products/F_ST_64.jpg'),(936,'/IS3102_Project-war/img/products/F_SC_38.jpg'),(937,'/IS3102_Project-war/img/products/F_SC_39.jpg'),(938,'/IS3102_Project-war/img/products/F_ST_65.jpg'),(940,'/IS3102_Project-war/img/products/F_ST_66.jpg'),(941,'/IS3102_Project-war/img/products/F_ST_67.jpg'),(943,'/IS3102_Project-war/img/products/F_ST_68.jpg'),(944,'/IS3102_Project-war/img/products/F_ST_69.jpg'),(946,'/IS3102_Project-war/img/products/F_ST_70.jpg'),(947,'/IS3102_Project-war/img/products/F_CH_71.jpg'),(949,'/IS3102_Project-war/img/products/F_CH_72.jpg'),(950,'/IS3102_Project-war/img/products/F_CH_73.jpg'),(952,'/IS3102_Project-war/img/products/F_CH_74.jpg'),(953,'/IS3102_Project-war/img/products/F_CH_75.jpg'),(955,'/IS3102_Project-war/img/products/F_CH_76.jpg'),(956,'/IS3102_Project-war/img/products/F_CH_77.jpg'),(958,'/IS3102_Project-war/img/products/F_CH_78.jpg'),(959,'/IS3102_Project-war/img/products/F_CH_79.jpg'),(961,'/IS3102_Project-war/img/products/F_CH_80.jpg'),(4651,'/IS3102_Project-war/img/products/F_CS_43.jpg');
/*!40000 ALTER TABLE `furnitureentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_countryentity`
--

DROP TABLE IF EXISTS `item_countryentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_countryentity` (
  `ID` bigint(20) NOT NULL,
  `ISDELETED` tinyint(1) DEFAULT '0',
  `RETAILPRICE` double DEFAULT NULL,
  `ITEM_ID` bigint(20) DEFAULT NULL,
  `COUNTRY_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ITEM_COUNTRYENTITY_COUNTRY_ID` (`COUNTRY_ID`),
  KEY `FK_ITEM_COUNTRYENTITY_ITEM_ID` (`ITEM_ID`),
  CONSTRAINT `FK_ITEM_COUNTRYENTITY_COUNTRY_ID` FOREIGN KEY (`COUNTRY_ID`) REFERENCES `countryentity` (`ID`),
  CONSTRAINT `FK_ITEM_COUNTRYENTITY_ITEM_ID` FOREIGN KEY (`ITEM_ID`) REFERENCES `itementity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_countryentity`
--

LOCK TABLES `item_countryentity` WRITE;
/*!40000 ALTER TABLE `item_countryentity` DISABLE KEYS */;
INSERT INTO `item_countryentity` VALUES (4557,0,100,69,25),(4642,0,120,71,25),(4701,0,119,751,25),(4702,0,130,752,25),(4703,0,125,755,25),(4704,0,124,756,25),(4705,0,80,757,25),(4706,0,98,759,25),(4707,0,170,760,25),(4708,0,40,761,25),(4709,0,90,762,25),(4710,0,95,764,25),(4711,0,150,765,25),(4712,0,30,767,25),(4713,0,5,768,25),(4714,0,4,770,25),(4715,0,10,771,25),(4716,0,19,803,25),(4717,0,4,809,25),(4718,0,2,901,25),(4719,0,300,70,25),(4720,0,250,902,25),(4721,0,260,903,25),(4722,0,450,905,25),(4723,0,280,907,25),(4724,0,260,909,25),(4725,0,270,911,25),(4726,0,290,913,25),(4727,0,255,915,25),(4728,0,120,917,25),(4729,0,450,919,25),(4730,0,355,921,25),(4731,0,370,924,25),(4732,0,270,926,25),(4733,0,270,928,25),(4734,0,600,931,25),(4735,0,70,934,25),(4736,0,136,936,25),(4737,0,670,937,25),(4738,0,90,763,25),(4739,0,40,769,25),(4740,0,40,772,25),(4741,0,26,4651,25),(4742,0,12,801,25),(4743,0,35,802,25),(4744,0,35,804,25),(4745,0,30,806,25),(4746,0,25,808,25),(4747,0,15,851,25),(4748,0,13,904,25),(4749,0,40,906,25),(4750,0,119,908,25),(4751,0,30,910,25),(4752,0,34,912,25),(4753,0,65,914,25),(4754,0,67,916,25),(4755,0,96,918,25),(4756,0,12,920,25),(4757,0,62,922,25),(4758,0,43,925,25),(4759,0,320,927,25),(4760,0,490,930,25),(4761,0,370,932,25),(4762,0,70,935,25),(4763,0,320,938,25),(4764,0,180,940,25),(4765,0,264,941,25),(4766,0,170,943,25),(4767,0,30,944,25),(4768,0,25,946,25),(4769,0,27,947,25),(4770,0,31,949,25),(4771,0,48,950,25),(4772,0,8,952,25),(4773,0,7,953,25),(4774,0,2,955,25),(4775,0,12,956,25),(4776,0,10,958,25),(4777,0,3,959,25),(4778,0,2,961,25),(4801,0,240,69,26),(4802,0,288,71,26),(4851,0,286,751,26),(4852,0,312,752,26),(4853,0,300,755,26),(4854,0,298,756,26),(4855,0,192,757,26),(4856,0,235,759,26),(4857,0,408,760,26),(4858,0,96,761,26),(4859,0,216,762,26),(4860,0,228,764,26),(4861,0,360,765,26),(4862,0,72,767,26),(4863,0,12,768,26),(4864,0,10,770,26),(4865,0,24,771,26),(4866,0,46,803,26),(4867,0,10,809,26),(4868,0,5,901,26),(4869,0,720,70,26),(4870,0,600,902,26),(4871,0,624,903,26),(4872,0,1080,905,26),(4873,0,672,907,26),(4874,0,624,909,26),(4875,0,648,911,26),(4876,0,696,913,26),(4877,0,612,915,26),(4878,0,288,917,26),(4879,0,1080,919,26),(4880,0,852,921,26),(4881,0,888,924,26),(4882,0,648,926,26),(4883,0,648,928,26),(4884,0,1440,931,26),(4885,0,168,934,26),(4886,0,326,936,26),(4887,0,1608,937,26),(4888,0,216,763,26),(4889,0,96,769,26),(4890,0,96,772,26),(4891,0,62,4651,26),(4892,0,29,801,26),(4893,0,84,802,26),(4894,0,84,804,26),(4895,0,72,806,26),(4896,0,60,808,26),(4897,0,36,851,26),(4898,0,31,904,26),(4899,0,96,906,26),(4900,0,286,908,26),(4901,0,72,910,26),(4902,0,82,912,26),(4903,0,156,914,26),(4904,0,161,916,26),(4905,0,230,918,26),(4906,0,29,920,26),(4907,0,149,922,26),(4908,0,103,925,26),(4909,0,768,927,26),(4910,0,1176,930,26),(4911,0,888,932,26),(4912,0,168,935,26),(4913,0,768,938,26),(4914,0,432,940,26),(4915,0,634,941,26),(4916,0,408,943,26),(4917,0,72,944,26),(4918,0,60,946,26),(4919,0,65,947,26),(4920,0,74,949,26),(4921,0,115,950,26),(4922,0,19,952,26),(4923,0,17,953,26),(4924,0,5,955,26),(4925,0,29,956,26),(4926,0,24,958,26),(4927,0,7,959,26),(4928,0,5,961,26),(4951,0,9600,69,27),(4952,0,11520,71,27),(4953,0,11424,751,27),(4954,0,12480,752,27),(4955,0,12000,755,27),(4956,0,11904,756,27),(4957,0,7680,757,27),(4958,0,9408,759,27),(4959,0,16320,760,27),(4960,0,3840,761,27),(4961,0,8640,762,27),(4962,0,9120,764,27),(4963,0,14400,765,27),(4964,0,2880,767,27),(4965,0,480,768,27),(4966,0,384,770,27),(4967,0,960,771,27),(4968,0,1824,803,27),(4969,0,384,809,27),(4970,0,192,901,27),(4971,0,28800,70,27),(4972,0,24000,902,27),(4973,0,24960,903,27),(4974,0,43200,905,27),(4975,0,26880,907,27),(4976,0,24960,909,27),(4977,0,25920,911,27),(4978,0,27840,913,27),(4979,0,24480,915,27),(4980,0,11520,917,27),(4981,0,43200,919,27),(4982,0,34080,921,27),(4983,0,35520,924,27),(4984,0,25920,926,27),(4985,0,25920,928,27),(4986,0,57600,931,27),(4987,0,6720,934,27),(4988,0,13056,936,27),(4989,0,64320,937,27),(4990,0,8640,763,27),(4991,0,3840,769,27),(4992,0,3840,772,27),(4993,0,2496,4651,27),(4994,0,1152,801,27),(4995,0,3360,802,27),(4996,0,3360,804,27),(4997,0,2880,806,27),(4998,0,2400,808,27),(4999,0,1440,851,27),(5000,0,1248,904,27),(5001,0,3840,906,27),(5002,0,11424,908,27),(5003,0,2880,910,27),(5004,0,3264,912,27),(5005,0,6240,914,27),(5006,0,6432,916,27),(5007,0,9216,918,27),(5008,0,1152,920,27),(5009,0,5952,922,27),(5010,0,4128,925,27),(5011,0,30720,927,27),(5012,0,47040,930,27),(5013,0,35520,932,27),(5014,0,6720,935,27),(5015,0,30720,938,27),(5016,0,17280,940,27),(5017,0,25344,941,27),(5018,0,16320,943,27),(5019,0,2880,944,27),(5020,0,2400,946,27),(5021,0,2592,947,27),(5022,0,2976,949,27),(5023,0,4608,950,27),(5024,0,768,952,27),(5025,0,672,953,27),(5026,0,192,955,27),(5027,0,1152,956,27),(5028,0,960,958,27),(5029,0,288,959,27),(5030,0,192,961,27),(5051,0,80,69,28),(5052,0,96,71,28),(5053,0,95,751,28),(5054,0,104,752,28),(5055,0,100,755,28),(5056,0,99,756,28),(5057,0,64,757,28),(5058,0,78,759,28),(5059,0,136,760,28),(5060,0,32,761,28),(5061,0,72,762,28),(5062,0,76,764,28),(5063,0,120,765,28),(5064,0,24,767,28),(5065,0,4,768,28),(5066,0,3,770,28),(5067,0,8,771,28),(5068,0,15,803,28),(5069,0,3,809,28),(5070,0,2,901,28),(5071,0,240,70,28),(5072,0,200,902,28),(5073,0,208,903,28),(5074,0,360,905,28),(5075,0,224,907,28),(5076,0,208,909,28),(5077,0,216,911,28),(5078,0,232,913,28),(5079,0,204,915,28),(5080,0,96,917,28),(5081,0,360,919,28),(5082,0,284,921,28),(5083,0,296,924,28),(5084,0,216,926,28),(5085,0,216,928,28),(5086,0,480,931,28),(5087,0,56,934,28),(5088,0,109,936,28),(5089,0,536,937,28),(5090,0,72,763,28),(5091,0,32,769,28),(5092,0,32,772,28),(5093,0,21,4651,28),(5094,0,10,801,28),(5095,0,28,802,28),(5096,0,28,804,28),(5097,0,24,806,28),(5098,0,20,808,28),(5099,0,12,851,28),(5100,0,10,904,28),(5101,0,32,906,28),(5102,0,95,908,28),(5103,0,24,910,28),(5104,0,27,912,28),(5105,0,52,914,28),(5106,0,54,916,28),(5107,0,77,918,28),(5108,0,10,920,28),(5109,0,50,922,28),(5110,0,34,925,28),(5111,0,256,927,28),(5112,0,392,930,28),(5113,0,296,932,28),(5114,0,56,935,28),(5115,0,256,938,28),(5116,0,144,940,28),(5117,0,211,941,28),(5118,0,136,943,28),(5119,0,24,944,28),(5120,0,20,946,28),(5121,0,22,947,28),(5122,0,25,949,28),(5123,0,38,950,28),(5124,0,6,952,28),(5125,0,6,953,28),(5126,0,2,955,28),(5127,0,10,956,28),(5128,0,8,958,28),(5129,0,2,959,28),(5130,0,2,961,28),(5151,0,490,69,29),(5152,0,588,71,29),(5153,0,584,751,29),(5154,0,638,752,29),(5155,0,613,755,29),(5156,0,608,756,29),(5157,0,392,757,29),(5158,0,481,759,29),(5159,0,834,760,29),(5160,0,196,761,29),(5161,0,441,762,29),(5162,0,466,764,29),(5163,0,736,765,29),(5164,0,147,767,29),(5165,0,25,768,29),(5166,0,20,770,29),(5167,0,49,771,29),(5168,0,93,803,29),(5169,0,20,809,29),(5170,0,10,901,29),(5171,0,1471,70,29),(5172,0,1226,902,29),(5173,0,1275,903,29),(5174,0,2207,905,29),(5175,0,1373,907,29),(5176,0,1275,909,29),(5177,0,1324,911,29),(5178,0,1422,913,29),(5179,0,1251,915,29),(5180,0,588,917,29),(5181,0,2207,919,29),(5182,0,1741,921,29),(5183,0,1814,924,29),(5184,0,1324,926,29),(5185,0,1324,928,29),(5186,0,2942,931,29),(5187,0,343,934,29),(5188,0,667,936,29),(5189,0,3286,937,29),(5190,0,441,763,29),(5191,0,196,769,29),(5192,0,196,772,29),(5193,0,128,4651,29),(5194,0,59,801,29),(5195,0,172,802,29),(5196,0,172,804,29),(5197,0,147,806,29),(5198,0,123,808,29),(5199,0,74,851,29),(5200,0,64,904,29),(5201,0,196,906,29),(5202,0,584,908,29),(5203,0,147,910,29),(5204,0,167,912,29),(5205,0,319,914,29),(5206,0,329,916,29),(5207,0,471,918,29),(5208,0,59,920,29),(5209,0,304,922,29),(5210,0,211,925,29),(5211,0,1569,927,29),(5212,0,2403,930,29),(5213,0,1814,932,29),(5214,0,343,935,29),(5215,0,1569,938,29),(5216,0,883,940,29),(5217,0,1295,941,29),(5218,0,834,943,29),(5219,0,147,944,29),(5220,0,123,946,29),(5221,0,132,947,29),(5222,0,152,949,29),(5223,0,235,950,29),(5224,0,39,952,29),(5225,0,34,953,29),(5226,0,10,955,29),(5227,0,59,956,29),(5228,0,49,958,29),(5229,0,15,959,29),(5230,0,10,961,29),(5251,0,64,69,65),(5252,0,77,71,65),(5253,0,76,751,65),(5254,0,83,752,65),(5255,0,80,755,65),(5256,0,79,756,65),(5257,0,51,757,65),(5258,0,63,759,65),(5259,0,109,760,65),(5260,0,26,761,65),(5261,0,57,762,65),(5262,0,61,764,65),(5263,0,96,765,65),(5264,0,19,767,65),(5265,0,3,768,65),(5266,0,3,770,65),(5267,0,6,771,65),(5268,0,12,803,65),(5269,0,3,809,65),(5270,0,1,901,65),(5271,0,192,70,65),(5272,0,160,902,65),(5273,0,166,903,65),(5274,0,287,905,65),(5275,0,179,907,65),(5276,0,166,909,65),(5277,0,172,911,65),(5278,0,185,913,65),(5279,0,163,915,65),(5280,0,77,917,65),(5281,0,287,919,65),(5282,0,227,921,65),(5283,0,236,924,65),(5284,0,172,926,65),(5285,0,172,928,65),(5286,0,383,931,65),(5287,0,45,934,65),(5288,0,87,936,65),(5289,0,428,937,65),(5290,0,57,763,65),(5291,0,26,769,65),(5292,0,26,772,65),(5293,0,17,4651,65),(5294,0,8,801,65),(5295,0,22,802,65),(5296,0,22,804,65),(5297,0,19,806,65),(5298,0,16,808,65),(5299,0,10,851,65),(5300,0,8,904,65),(5301,0,26,906,65),(5302,0,76,908,65),(5303,0,19,910,65),(5304,0,22,912,65),(5305,0,41,914,65),(5306,0,43,916,65),(5307,0,61,918,65),(5308,0,8,920,65),(5309,0,40,922,65),(5310,0,27,925,65),(5311,0,204,927,65),(5312,0,313,930,65),(5313,0,236,932,65),(5314,0,45,935,65),(5315,0,204,938,65),(5316,0,115,940,65),(5317,0,169,941,65),(5318,0,109,943,65),(5319,0,19,944,65),(5320,0,16,946,65),(5321,0,17,947,65),(5322,0,20,949,65),(5323,0,31,950,65),(5324,0,5,952,65),(5325,0,4,953,65),(5326,0,1,955,65),(5327,0,8,956,65),(5328,0,6,958,65),(5329,0,2,959,65),(5330,0,1,961,65),(5351,0,1,2302,25),(5352,0,1,2303,25),(5353,0,4,4578,25),(5354,0,3,4579,25),(5355,0,2,4580,25),(5356,0,3,4581,25),(5357,0,1,4582,25),(5358,0,2,4583,25),(5359,0,1,4584,25),(5360,0,1,4585,25),(5361,0,2,4586,25),(5362,0,1,4587,25),(5363,0,1,4588,25),(5364,0,1,4589,25),(5365,0,2,4590,25),(5366,0,1,4591,25),(5367,0,1,4592,25),(5368,0,1,4593,25),(5369,0,1,4594,25),(5401,0,2,2302,26),(5402,0,2,2303,26),(5403,0,10,4578,26),(5404,0,7,4579,26),(5405,0,5,4580,26),(5406,0,7,4581,26),(5407,0,2,4582,26),(5408,0,5,4583,26),(5409,0,2,4584,26),(5410,0,2,4585,26),(5411,0,5,4586,26),(5412,0,2,4587,26),(5413,0,2,4588,26),(5414,0,2,4589,26),(5415,0,5,4590,26),(5416,0,2,4591,26),(5417,0,2,4592,26),(5418,0,2,4593,26),(5419,0,2,4594,26),(5451,0,96,2302,27),(5452,0,96,2303,27),(5453,0,384,4578,27),(5454,0,288,4579,27),(5455,0,192,4580,27),(5456,0,288,4581,27),(5457,0,96,4582,27),(5458,0,192,4583,27),(5459,0,96,4584,27),(5460,0,96,4585,27),(5461,0,192,4586,27),(5462,0,96,4587,27),(5463,0,96,4588,27),(5464,0,96,4589,27),(5465,0,192,4590,27),(5466,0,96,4591,27),(5467,0,96,4592,27),(5468,0,96,4593,27),(5469,0,96,4594,27),(5501,0,1,2302,28),(5502,0,1,2303,28),(5503,0,3,4578,28),(5504,0,2,4579,28),(5505,0,2,4580,28),(5506,0,2,4581,28),(5507,0,1,4582,28),(5508,0,2,4583,28),(5509,0,1,4584,28),(5510,0,1,4585,28),(5511,0,2,4586,28),(5512,0,1,4587,28),(5513,0,1,4588,28),(5514,0,1,4589,28),(5515,0,2,4590,28),(5516,0,1,4591,28),(5517,0,1,4592,28),(5518,0,1,4593,28),(5519,0,1,4594,28),(5551,0,5,2302,29),(5552,0,5,2303,29),(5553,0,20,4578,29),(5554,0,15,4579,29),(5555,0,10,4580,29),(5556,0,15,4581,29),(5557,0,5,4582,29),(5558,0,10,4583,29),(5559,0,5,4584,29),(5560,0,5,4585,29),(5561,0,10,4586,29),(5562,0,5,4587,29),(5563,0,5,4588,29),(5564,0,5,4589,29),(5565,0,10,4590,29),(5566,0,5,4591,29),(5567,0,5,4592,29),(5568,0,5,4593,29),(5569,0,5,4594,29),(5601,0,1,2302,65),(5602,0,1,2303,65),(5603,0,3,4578,65),(5604,0,2,4579,65),(5605,0,1,4580,65),(5606,0,2,4581,65),(5607,0,1,4582,65),(5608,0,1,4583,65),(5609,0,1,4584,65),(5610,0,1,4585,65),(5611,0,1,4586,65),(5612,0,1,4587,65),(5613,0,1,4588,65),(5614,0,1,4589,65),(5615,0,1,4590,65),(5616,0,1,4591,65),(5617,0,1,4592,65),(5618,0,1,4593,65),(5619,0,1,4594,65),(5651,0,2,2301,65),(5652,0,1,4551,65),(5653,0,1,4552,65),(5654,0,2,4553,65),(5655,0,1,4554,65),(5656,0,3,4555,65),(5657,0,3,4556,65),(5658,0,3,4558,65),(5659,0,3,4559,65),(5660,0,4,4560,65),(5661,0,4,4561,65),(5662,0,1,4562,65),(5663,0,1,4563,65),(5664,0,1,4564,65),(5665,0,1,4567,65),(5666,0,1,4569,65),(5667,0,1,4571,65),(5668,0,1,4574,65),(5669,0,1,4576,65),(5670,0,1,4577,65),(5701,0,15,2301,29),(5702,0,10,4551,29),(5703,0,10,4552,29),(5704,0,15,4553,29),(5705,0,10,4554,29),(5706,0,20,4555,29),(5707,0,20,4556,29),(5708,0,20,4558,29),(5709,0,20,4559,29),(5710,0,29,4560,29),(5711,0,29,4561,29),(5712,0,5,4562,29),(5713,0,5,4563,29),(5714,0,5,4564,29),(5715,0,10,4567,29),(5716,0,10,4569,29),(5717,0,10,4571,29),(5718,0,10,4574,29),(5719,0,10,4576,29),(5720,0,10,4577,29),(5751,0,2,2301,28),(5752,0,2,4551,28),(5753,0,2,4552,28),(5754,0,2,4553,28),(5755,0,2,4554,28),(5756,0,3,4555,28),(5757,0,3,4556,28),(5758,0,3,4558,28),(5759,0,3,4559,28),(5760,0,5,4560,28),(5761,0,5,4561,28),(5762,0,1,4562,28),(5763,0,1,4563,28),(5764,0,1,4564,28),(5765,0,2,4567,28),(5766,0,2,4569,28),(5767,0,2,4571,28),(5768,0,2,4574,28),(5769,0,2,4576,28),(5770,0,2,4577,28),(5801,0,288,2301,27),(5802,0,192,4551,27),(5803,0,192,4552,27),(5804,0,288,4553,27),(5805,0,192,4554,27),(5806,0,384,4555,27),(5807,0,384,4556,27),(5808,0,384,4558,27),(5809,0,384,4559,27),(5810,0,576,4560,27),(5811,0,576,4561,27),(5812,0,96,4562,27),(5813,0,96,4563,27),(5814,0,96,4564,27),(5815,0,192,4567,27),(5816,0,192,4569,27),(5817,0,192,4571,27),(5818,0,192,4574,27),(5819,0,192,4576,27),(5820,0,192,4577,27),(5851,0,7,2301,26),(5852,0,5,4551,26),(5853,0,5,4552,26),(5854,0,7,4553,26),(5855,0,5,4554,26),(5856,0,10,4555,26),(5857,0,10,4556,26),(5858,0,10,4558,26),(5859,0,10,4559,26),(5860,0,14,4560,26),(5861,0,14,4561,26),(5862,0,2,4562,26),(5863,0,2,4563,26),(5864,0,2,4564,26),(5865,0,5,4567,26),(5866,0,5,4569,26),(5867,0,5,4571,26),(5868,0,5,4574,26),(5869,0,5,4576,26),(5870,0,5,4577,26),(5901,0,3,2301,25),(5902,0,2,4551,25),(5903,0,2,4552,25),(5904,0,3,4553,25),(5905,0,2,4554,25),(5906,0,4,4555,25),(5907,0,4,4556,25),(5908,0,4,4558,25),(5909,0,4,4559,25),(5910,0,6,4560,25),(5911,0,6,4561,25),(5912,0,1,4562,25),(5913,0,1,4563,25),(5914,0,1,4564,25),(5915,0,2,4567,25),(5916,0,2,4569,25),(5917,0,2,4571,25),(5918,0,2,4574,25),(5919,0,2,4576,25),(5920,0,2,4577,25),(5951,0,2,4596,25),(5952,0,2,4599,25),(5953,0,2,4617,25),(5954,0,2,4619,25),(5955,0,2,4623,25),(6001,0,5,4596,26),(6002,0,5,4599,26),(6003,0,5,4617,26),(6004,0,5,4619,26),(6005,0,5,4623,26),(6051,0,192,4596,27),(6052,0,192,4599,27),(6053,0,192,4617,27),(6054,0,192,4619,27),(6055,0,192,4623,27),(6101,0,2,4596,28),(6102,0,2,4599,28),(6103,0,2,4617,28),(6104,0,2,4619,28),(6105,0,2,4623,28),(6151,0,10,4596,29),(6152,0,10,4599,29),(6153,0,10,4617,29),(6154,0,10,4619,29),(6155,0,10,4623,29),(6201,0,1,4596,65),(6202,0,1,4599,65),(6203,0,1,4617,65),(6204,0,1,4619,65),(6205,0,1,4623,65);
/*!40000 ALTER TABLE `item_countryentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itementity`
--

DROP TABLE IF EXISTS `itementity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itementity` (
  `ID` bigint(20) NOT NULL,
  `DTYPE` varchar(31) DEFAULT NULL,
  `SKU` longtext,
  `_LENGTH` int(11) DEFAULT NULL,
  `CATEGORY` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `HEIGHT` int(11) DEFAULT NULL,
  `ISDELETED` tinyint(1) DEFAULT '0',
  `NAME` longtext,
  `TYPE` longtext,
  `VOLUME` int(11) DEFAULT NULL,
  `WIDTH` int(11) DEFAULT NULL,
  `WAREHOUSES_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ITEMENTITY_WAREHOUSES_ID` (`WAREHOUSES_ID`),
  CONSTRAINT `FK_ITEMENTITY_WAREHOUSES_ID` FOREIGN KEY (`WAREHOUSES_ID`) REFERENCES `warehouseentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itementity`
--

LOCK TABLES `itementity` WRITE;
/*!40000 ALTER TABLE `itementity` DISABLE KEYS */;
INSERT INTO `itementity` VALUES (69,'FurnitureEntity','F_TD_01',100,'Tables & Desks','Pre-drilled holes for legs, for easy assembly. Adjustable feet make the table stand steady also on uneven floors',60,0,'LINMON','Furniture',444000,74,NULL),(70,'FurnitureEntity','F_BM_21',206,'Beds & Mattresses','The 4 large drawers give you an extra storage space under the bed. Adjustable bed sides allow you to use mattresses of different thicknesses.',47,0,'BRIMNES','Furniture',1529756,158,NULL),(71,'FurnitureEntity','F_TD_02',99,'Tables & Desks','The table top in tempered glass is stain resistant and easy to clean. Adjustable feet make the table stand steady also on uneven floors.',52,0,'GLASHOLM','Furniture',365508,71,NULL),(72,'RawMaterialEntity','RM1',100,'Metal','A piece of steel',1,0,'Steel','Raw Material',5000,50,NULL),(73,'RawMaterialEntity','RM2',10,'Paint','Coating for tables',5,0,'Epoxy powder coating','Raw Material',500,10,NULL),(74,'MenuItemEntity','MI1',1,'Main','hao wei dao, bu jie shi',1,0,'Chicken Rice','Menu Item',1,1,NULL),(75,'MenuItemEntity','MI2',1,'Sides','hao wei dao, bu jie shi',1,0,'Salad','Menu Item',1,1,NULL),(751,'FurnitureEntity','F_TD_03',120,'Tables & Desks','Pre-drilled holes for legs, for easy assembly. Solid wood is a durable natural material',60,0,'HISSMON','Furniture',540000,75,NULL),(752,'FurnitureEntity','F_TD_04',140,'Tables & Desks','Pre-drilled holes for legs, for easy assembly. The table can be moved across the floor without worry because the plastic feet protect against scratching.',75,0,'TORNLIDEN','Furniture',766500,73,NULL),(755,'FurnitureEntity','F_TD_05',120,'Tables & Desks','Can be placed in the middle of a room because the back is finished. Cable outlet for easy cable management. ',60,0,'NIPEN','Furniture',532800,74,NULL),(756,'FurnitureEntity','F_TD_06',148,'Tables & Desks','The table top in tempered glass is stain resistant and easy to clean.',73,0,'ADILS','Furniture',767084,71,NULL),(757,'FurnitureEntity','F_TD_07',150,'Tables & Desks','Pre-drilled holes for legs, for easy assembly. Solid wood is a durable natural material.',75,0,'GERTON','Furniture',843750,75,NULL),(759,'FurnitureEntity','F_TD_08',150,'Tables & Desks','You can choose a flat or tilted table top, which is good for writing, painting or drawing, by adjusting the trestle. ',75,0,'ALEX','Furniture',843750,75,NULL),(760,'FurnitureEntity','F_TD_09',200,'Tables & Desks','A long table top makes it easy to create a workspace for two. Pre-drilled holes for legs, for easy assembly.',60,0,'ODDVALD','Furniture',900000,75,NULL),(761,'FurnitureEntity','F_TD_10',120,'Tables & Desks','Tables & Desks',60,0,'FINNVARD','Furniture',540000,75,NULL),(762,'FurnitureEntity','F_BA_11',45,'Bathroom','The included water trap is easy to connect to the drain, washing machine and dryer because it is flexible.',43,0,'TALLEVIKEN','Furniture',21285,11,NULL),(763,'FurnitureEntity','F_SC_40',75,'Sofas & Chairs','The cover is easy to keep clean as it is removable and can be machine washed. The armchair is lightweight and easy to move if you want to clean the floor or rearrange the furniture.',78,0,'STRANDMON','Furniture',415350,71,NULL),(764,'FurnitureEntity','F_BA_12',40,'Bathroom','The included water trap is easy to connect to the drain, washing machine and dryer because it is flexible.',53,0,'RATTVIKEN','Furniture',27560,13,NULL),(765,'FurnitureEntity','F_BA_13',49,'Bathroom','10 year guarantee. Read about the terms in the guarantee brochure. The included water trap is easy to connect to the drain, washing machine and dryer because it is flexible.',103,0,'ODENSVIK','Furniture',30282,6,NULL),(767,'FurnitureEntity','F_BA_14',50,'Bathroom','Wash-basin water trap',20,0,'LILLANGEN','Furniture',25000,25,NULL),(768,'FurnitureEntity','F_BA_15',17,'Bathroom','Water drains easily through the holes in the bottom. With suction cups that grips smooth surfaces.',28,0,'RONNSKAR','Furniture',9044,19,NULL),(769,'FurnitureEntity','F_CS_41',34,'Cabinets & Storage','Perfect for newspapers, photos or other memorabilia. Easy to pull out and lift as the basket has handles.',32,0,'ANTONIUS','Furniture',34816,32,NULL),(770,'FurnitureEntity','F_BA_16',8,'Bathroom','Easy to refill as the dispenser has a wide opening.',8,0,'SILVERAN','Furniture',1152,18,NULL),(771,'FurnitureEntity','F_BA_17',80,'Bathroom','Towel hanger/shelf, stainless steel',28,0,'GODMORGON','Furniture',11200,5,NULL),(772,'FurnitureEntity','F_CS_42',37,'Cabinets & Storage','Suitable for storing or moving books and other heavy items, since the bottom is reinforced. The included self-adhesive labels help you to organise and find your things. Cut-out handles on two sides make it easier to lift and carry the box.',18,0,'JOSEF','Furniture',18648,28,NULL),(801,'FurnitureEntity','F_CS_44',29,'Cabinets & Storage','Collecting newspapers, toys, hats and gloves in baskets makes it easier to find what you need and keeps the room looking neat and uncluttered.',16,0,'IVAR','Furniture',17632,38,NULL),(802,'FurnitureEntity','F_CS_45',33,'Cabinets & Storage','Perfect for newspapers, photos or other memorabilia. Sea grass has natural colour variations which makes every basket unique. ',32,0,'OBSERVATOR','Furniture',33792,32,NULL),(803,'FurnitureEntity','F_BA_18',6,'Bathroom','Towel holder 4 bars',46,0,'HAMNVIKEN','Furniture',4416,16,NULL),(804,'FurnitureEntity','F_CS_46',25,'Cabinets & Storage','You can stack 2 mini chests on top of each other if you want to make the most of the space in your bookcase or on your desk.',17,0,'ALGOT','Furniture',14025,33,NULL),(805,'FurnitureEntity','With suction cup that grip smooth surfaces. Made of zink-plated steel which is durable and rust resistant.',6,'Bathroom','F_BA_19',8,1,'RAGRUND','Furniture',240,5,NULL),(806,'FurnitureEntity','F_CS_47',18,'Cabinets & Storage','Combine and stack as you want. Can be mounted on the wall or placed directly on a desk. Able to pull out.',16,0,'HYLLIS','Furniture',7776,27,NULL),(807,'RawMaterialEntity','RM3',100,'Plastic','Thermoplastic polymer used in a wide variety of applications including packaging and labeling',1,0,'Polypropylene plastic','Raw Material',5000,50,NULL),(808,'FurnitureEntity','F_CS_48',32,'Cabinets & Storage','Each basket is woven by hand and is therefore unique.',25,0,'EKBY','Furniture',25600,32,NULL),(809,'FurnitureEntity','F_BA_19',6,'Bathroom','With suction cup that grip smooth surfaces. Made of zink-plated steel which is durable and rust resistant.',8,0,'RAGRUND','Furniture',240,5,NULL),(851,'FurnitureEntity','F_CS_49',32,'Cabinets & Storage','Each basket is woven by hand and is therefore unique.',32,0,'VALTER','Furniture',20480,20,NULL),(852,'RawMaterialEntity','RM4',100,'Fibre','Type of engineered wood product that is made out of wood fibers',3,0,'Fibreboard','Raw Material',15000,50,NULL),(901,'FurnitureEntity','F_BA_20',4,'Bathroom','Double hook, black',4,0,'STORJORM','Furniture',128,8,NULL),(902,'FurnitureEntity','F_BM_22',206,'Beds & Mattresses','Adjustable bed sides allow you to use mattresses of different thicknesses.',168,0,'BRUSALI','Furniture',3183936,92,NULL),(903,'FurnitureEntity','F_BM_23',215,'Beds & Mattresses','If you read or watch TV in bed the soft headboard is comfortable to lean against. You can choose between a colourful or plain white headboard since the soft cover has two sides. ',156,0,'FJELL','Furniture',3119220,93,NULL),(904,'FurnitureEntity','F_CS_50',24,'Cabinets & Storage','Suitable for storing your DVDs, games, chargers, remote controls or desk accessories. The lid protects the contents and makes the box stackable.',27,0,'HENSVIK','Furniture',10368,16,NULL),(905,'FurnitureEntity','F_BM_24',209,'Beds & Mattresses','The 4 large drawers give you an extra storage space under the bed. Adjustable bed sides allow you to use mattresses of different thicknesses.',162,0,'SKOGN','Furniture',3859812,114,NULL),(906,'FurnitureEntity','F_LI_51',12,'Lightings','You can easily direct the light where you want it because the lamp arm is adjustable. The LED light source consumes up to 85% less energy and lasts 20 times longer than incandescent bulbs.',60,0,'GALLO','Furniture',8640,12,NULL),(907,'FurnitureEntity','F_BM_25',211,'Beds & Mattresses','Made of solid wood, which is a hardwearing and warm natural material. Adjustable bed sides allow you to use mattresses of different thicknesses.',167,0,'MALM','Furniture',4298914,122,NULL),(908,'FurnitureEntity','F_LI_52',60,'Lightings','LED lighting at the end of each arm creates an exciting light effect. The LED light source consumes up to 85% less energy and lasts 20 times longer than incandescent bulbs.',50,0,'JARPEN','Furniture',180000,60,NULL),(909,'FurnitureEntity','F_BM_26',200,'Beds & Mattresses','Get all-over support and comfort with a resilient foam mattress. This mattress is approved for children.',90,0,'OTTOMAN','Furniture',180000,10,NULL),(910,'FurnitureEntity','F_LI_53',40,'Lightings','The LED light source consumes up to 85% less energy and lasts 20 times longer than incandescent bulbs. You never have to change a light bulb as this lamp has a LED light source built right into it.',138,0,'BJARNUM','Furniture',220800,40,NULL),(911,'FurnitureEntity','F_BM_27',200,'Beds & Mattresses','Get all-over support and comfort with a resilient foam mattress. Easy to keep clean since you can remove the fabric and wash it by machine.',140,0,'FLAXA','Furniture',336000,12,NULL),(912,'FurnitureEntity','F_LI_54',13,'Lightings','Helping you save energy and reduce your environmental impact because it is powered by a solar panel that converts sunlight into electricity.',44,0,'STILIG','Furniture',7436,13,NULL),(913,'FurnitureEntity','F_BM_28',200,'Beds & Mattresses','Get all-over support and comfort with a resilient foam mattress. A generous layer of soft fillings adds support and comfort. ',140,0,'MANDAL','Furniture',392000,14,NULL),(914,'FurnitureEntity','F_LI_55',70,'Lightings','The tubes with LEDs create exciting lighting effects and look like the path of fireflies flying in the air. The LED light source consumes up to 85% less energy and lasts 20 times longer than incandescent bulbs.',60,0,'ROBERT','Furniture',294000,70,NULL),(915,'FurnitureEntity','F_BM_29',200,'Beds & Mattresses','Easy to keep clean since you can remove the cover and wash it by machine. Gives your bed set a colour coordinated look together with HAFSLO sprung mattress.',150,0,'HEMNES','Furniture',600000,20,NULL),(916,'FurnitureEntity','F_LI_56',19,'Lightings','You can easily direct the light where you want it because the lamp arm and head are adjustable. The LED light source consumes up to 85% less energy and lasts 20 times longer than incandescent bulbs.',110,0,'KARL','Furniture',39710,19,NULL),(917,'FurnitureEntity','F_BM_30',200,'Beds & Mattresses','High resilience foam with pressure-relieving capacity provides good comfort. Easy to keep clean since you can remove the cover and wash it by machine. ',90,0,'TARVA','Furniture',90000,5,NULL),(918,'FurnitureEntity','F_LI_57',25,'Lightings','Base/ Tube: Steel, Nickel-plated Arm: Synthetic rubber',138,0,'MANS','Furniture',86250,25,NULL),(919,'FurnitureEntity','F_SC_31',97,'Sofas & Chair','You get extra soft comfort and support because the thick seat cushions have a core of pocket springs and a top of cut foam and polyester fibres.',251,0,'BOSNAS','Furniture',1606902,66,NULL),(920,'FurnitureEntity','F_LI_58',38,'Lightings','You can create a soft, cosy atmosphere in your home with a textile shade that spreads a diffused and decorative light.',24,0,'RISET','Furniture',34656,38,NULL),(921,'FurnitureEntity','F_SC_32',96,'Sofas & Chair','You can really loosen up and relax in comfort because the high back on this chair provides extra support for your neck.',82,0,'KVIK','Furniture',795072,101,NULL),(922,'FurnitureEntity','F_LI_59',16,'Lightings','You can easily aim the light where you need it because the lamp head is adjustable. For instance, you can direct the light on the book you are reading, use it as an uplighter or aim it to focus on a specific area in the room.',38,0,'RYSSBY','Furniture',9728,16,NULL),(923,'RawMaterialEntity','RM5',25,'Paint','Fast-drying paint containing pigment suspension in acrylic polymer emulsion',50,0,'Acrylic paint','Raw Material',31250,25,NULL),(924,'FurnitureEntity','F_SC_33',88,'Sofas & Chair','The cover is easy to keep clean as it is removable and can be machine washed. Seat cushions filled with high resilience foam and polyester fibre wadding give comfortable support for your body',179,0,'NOCKEBY','Furniture',1386176,88,NULL),(925,'FurnitureEntity','F_LI_60',13,'Lightings','Gives a diffused light; good for spreading light into larger areas of a bathroom. Flexible; can be mounted with the light turned downwards or upwards.',13,0,'TORE','Furniture',3380,20,NULL),(926,'FurnitureEntity','F_SC_34',85,'Sofas & Chair','Armchair, Holmby natural',67,0,'EKENAS','Furniture',546720,96,NULL),(927,'FurnitureEntity','F_ST_61',40,'Study','A long table top makes it easy to create a workspace for two.',120,0,'STADJAN','Furniture',864000,180,NULL),(928,'FurnitureEntity','F_SC_35',83,'Sofas & Chair','Layer-glued bent birch frame gives comfortable resilience. Extra cushions to alternate with mean it\'s easy to give both your sofa and room a new look. ',68,0,'VILLSTAD','Furniture',564400,100,NULL),(929,'RawMaterialEntity','RM6',80,'Wood','An engineered wood product manufactured from wood chips, sawmill shavings, or even sawdust, and a synthetic resin or other suitable binder, which is pressed and extruded',5,0,'Particleboard','Raw Material',24000,60,NULL),(930,'FurnitureEntity','F_ST_62',65,'Study','You can make room for a computer monitor or extra storage by adjusting the middle shelf.- You can collect cables and extension leads on the shelf under the table top, so they?re hidden but still close at hand.',135,0,'BYLLAM','Furniture',1202175,137,NULL),(931,'FurnitureEntity','F_SC_36',95,'Sofas & Chair','The high back gives good support for your neck and head.- Seat cushions with cold foam and a top layer of memory foam.',190,0,'KLIPPAN','Furniture',1786950,99,NULL),(932,'FurnitureEntity','F_ST_63',65,'Study','You can fit a computer in the cabinet, since the shelf is adjustable. Drawer stops prevent the drawers from being pulled out too far. Can be placed in the middle of a room because the back is finished.',145,0,'MICKE','Furniture',688025,73,NULL),(933,'RawMaterialEntity','RM7',100,'Paper','Used for writing, drawing, or printing on, or as wrapping material',5,0,'Paper','Raw Material',15000,30,NULL),(934,'FurnitureEntity','F_SC_37',75,'Sofas & Chair','The armchair is lightweight and easy to move if you want to clean the floor or rearrange the furniture.',64,0,'KARSTAD','Furniture',360000,75,NULL),(935,'FurnitureEntity','F_ST_64',30,'Study','You can save space by hanging the laptop support on the wall from the cut-out handles ? the legs fold flat under the surface. You sit comfortably with the screen at eye level thanks to the tilted surface.',42,0,'BRADA','Furniture',26460,21,NULL),(936,'FurnitureEntity','F_SC_38',79,'Sofas & Chair','Soft, hardwearing and easy care leather which is practical for families with children. You sit comfortably thanks to the extra wide seat. Moulded high resilience foam gives rounded shapes and durable comfort.',78,0,'POANG','Furniture',542256,88,NULL),(937,'FurnitureEntity','F_SC_39',93,'Sofas & Chair','A range of coordinated covers makes it easy for you to give your furniture a new look. The cover is easy to keep clean as it is removable and can be machine washed. ',244,0,'STOCKSUND','Furniture',1815360,80,NULL),(938,'FurnitureEntity','F_ST_65',28,'Study','Adjustable shelves; adapt space between shelves according to your needs. Surface made from natural wood veneer.',160,0,'BESTA BURS','Furniture',904960,202,NULL),(939,'RawMaterialEntity','RM8',100,'Wood','Wood from dicot angiosperm trees',3,0,'Hard wood','Raw Material',15000,50,NULL),(940,'FurnitureEntity','F_ST_66',32,'Study','You can hide all cables and still have them close at hand with the help of the built-in cable collector at the bottom of the bookshelf. The shelves are adjustable so you can customise your storage as needed.',75,0,'SVARTASEN','Furniture',434400,181,NULL),(941,'FurnitureEntity','F_ST_67',45,'Study','10 year guarantee. Read about the terms in the guarantee brochure.- Suitable for use in the middle of a room since it is finished on the back.',80,0,'BEKANT','Furniture',432000,120,NULL),(942,'RawMaterialEntity','RM9',80,'Glass','Type of safety glass processed by controlled thermal or chemical treatments to increase its strength compared with normal glass',5,0,'Tempered glass','Raw Material',24000,60,NULL),(943,'FurnitureEntity','F_ST_68',36,'Study','Tempered glass and metal are durable materials that provide an open, airy feel. A simple unit can be enough storage for a limited space or the foundation for a larger storage solution if your needs change.',100,0,'BORGSJO','Furniture',630000,175,NULL),(944,'FurnitureEntity','F_ST_69',39,'Study','You can use the furniture as a room divider because it looks good from every angle. Choose whether you want to place it vertically or horizontally and use it as a shelf or sideboard.',100,0,'NORRASEN','Furniture',573300,147,NULL),(945,'RawMaterialEntity','RM10',30,'Aluminium','Very thin sheet metal',2,0,'Foil','Raw Material',1800,30,NULL),(946,'FurnitureEntity','F_ST_70',20,'Study','Drawer stops prevent the drawers from being pulled out too far.',119,0,'VITTSJO','Furniture',66640,28,NULL),(947,'FurnitureEntity','F_CH_71',73,'Children','Rocking helps develop the child\'s sense of balance and the brain to sort sensory impressions.',29,0,'ROCKING','Furniture',110084,52,NULL),(948,'RawMaterialEntity','RM11',10,'Plastic','This material is a terpolymer of acrylonitrile, butadiene and styrene',5,0,'ABS plastic','Raw Material',500,10,NULL),(949,'FurnitureEntity','F_CH_72',10,'Children','Sharp contrasts that are easy for a baby to see. Movement and sharp contrasts stimulate the baby\'s eyesight. Reaching out for toys stimulates the baby\'s development of eye-hand coordination.',55,0,'DUCKTIG','Furniture',23650,43,NULL),(950,'FurnitureEntity','F_CH_73',28,'Children','The trailer can be uncoupled. Crane and blocks with magnets makes it easier to lift and load.- Develops fine motor skills and logical thinking.',11,0,'BEEPBEP','Furniture',4620,15,NULL),(951,'RawMaterialEntity','RM12',50,'Ceramic','A hard-fired ceramic ware that has a dense, vitrified, but opaque body and is used especially for plumbing fixtures',5,0,'Vitreous china','Raw Material',7500,30,NULL),(952,'FurnitureEntity','F_CH_74',10,'Children','The strawberry makes a sound when squeezed which stimulates the baby\'s sense of sight, hearing and touch.- Low sound level, adapted to sensitive baby ears.',20,0,'PINKBERR','Furniture',3000,15,NULL),(953,'FurnitureEntity','F_CH_75',20,'Children','The bath toy stimulates your child?s development of fine motor skills.- Makes bath time fun and exciting.',30,0,'CHOOBOAT','Furniture',12000,20,NULL),(954,'RawMaterialEntity','RM13',20,'Paint',' A coating of colored, opaque, or transparent material applied to ceramics before firing',5,0,'Coloured glaze','Raw Material',2000,20,NULL),(955,'FurnitureEntity','F_CH_76',8,'Children','Great for parties and everyday meals. Made of durable plastic and safe to use in the dishwasher and microwave.- Can be stacked to save space when stored.',15,0,'CUPMANY','Furniture',960,8,NULL),(956,'FurnitureEntity','F_CH_77',7,'Children','The lid is formed with room for a child\'s nose so it is comfortable to drink from, without leaning the head back',15,0,'NOSEBOTL','Furniture',735,7,NULL),(957,'RawMaterialEntity','RM14',20,'Aluminium','A light malleable ductile silvery-white metallic element that resists corrosion',10,0,'Aluminium','Raw Material',4000,20,NULL),(958,'FurnitureEntity','F_CH_78',29,'Children','The place mat protects the table top and is easy to wipe clean.- The funny fruit characters hold your child\'s attention while eating and inspire them to learn about nature and how plants grow.',36,0,'DRAWSTUF','Furniture',3132,3,NULL),(959,'FurnitureEntity','F_CH_79',10,'Children','The small spoon is easy for babies to hold when learning to eat by themselves.- The larger spoon has a long handle that makes it easier to take up food from a jar when feeding your baby.',3,0,'COLOSPO','Furniture',60,2,NULL),(960,'RawMaterialEntity','RM15',10,'Rubber','Any of several substances similar to natural rubber in properties and uses, produced by the polymerization of an unsaturated hydrocarbon',3,0,'Synthetic rubber','Raw Material',600,20,NULL),(961,'FurnitureEntity','F_CH_80',10,'Children','The small spoon is easy for babies to hold when learning to eat by themselves.- The larger spoon has a long handle that makes it easier to take up food from a jar when feeding your baby.',4,0,'WHISPO','Furniture',80,2,NULL),(962,'RawMaterialEntity','RM16',50,'Metal','A form of steel containing chromium, resistant to tarnishing and rust',10,0,'Stainless steel','Raw Material',15000,30,NULL),(963,'RawMaterialEntity','RM17',10,'Plastic','A synthetic resin in which the polymer units are linked by ester groups, used chiefly to make synthetic textile fibres',5,0,'Polyester','Raw Material',250,5,NULL),(964,'RawMaterialEntity','RM18',10,'Cotton','A soft white fibrous substance which surrounds the seeds of the cotton plant and is made into textile fibre and thread for sewing',5,0,'Cotton','Raw Material',500,10,NULL),(965,'RawMaterialEntity','RM19',50,'Wood','Soft wood for manufacturing',10,0,'Solid pine','Raw Material',15000,30,NULL),(966,'RawMaterialEntity','RM20',10,'Paint','A penetrative dye or chemical used in colouring a material or object',10,0,'Stain','Raw Material',1000,10,NULL),(967,'RawMaterialEntity','RM21',10,'Cloth','Sheet or web structures bonded together by entangling fiber or filaments (and by perforating films) mechanically, thermally or chemically',10,0,'Non-woven polypropylene','Raw Material',1000,10,NULL),(968,'RawMaterialEntity','RM22',50,'Wood','A type of strong thin wooden board consisting of two or more layers glued and pressed together with the direction of the grain alternating',10,0,'Plywood','Raw Material',15000,30,NULL),(970,'RawMaterialEntity','RM24',20,'Wood','Wood product made of very thin sheets of birch wood. ',5,0,'Birch veneer','Raw Material',2000,20,NULL),(971,'RawMaterialEntity','RM25',20,'Paper','Pasteboard or stiff paper',5,0,'Cardboard','Raw Material',2000,20,NULL),(972,'RawMaterialEntity','RM26',10,'Paint','Lacquers based on the products of polymerization of esters of acrylic or methacrylic acid (acrylates)',10,0,'Acrylic lacquer','Raw Material',500,5,NULL),(973,'RawMaterialEntity','RM27',10,'Rubber','A tough elastic polymeric substance made from the latex of a tropical plant or synthetically',10,0,'Rubber','Raw Material',500,5,NULL),(974,'RawMaterialEntity','RM28',20,'Glass','A reinforced plastic material composed of glass fibres embedded in a resin matrix',10,0,'Fibreglass','Raw Material',2000,10,NULL),(2301,'RetailProductEntity','RP_CH_1',20,'Chocolate','Molten Chocolate Cake at Chili\'s Grill & Bar \"The San Bruno location is quite cozy but it does not lack anything other chillis locations offer to their guests.',5,0,'KitKat','Retail Product',1000,10,NULL),(2302,'MenuItemEntity','K_MI_01',1,'Menu Item','Description',1,0,'LohMaiKai','Menu Item',1,1,NULL),(2303,'MenuItemEntity','K_MI_02',1,'Menu Item','Description',1,0,'Spring','Menu Item',1,1,NULL),(4551,'RetailProductEntity','RP_CH_2',10,'Chocolate','A NEW addition to the BOOST range is Cadbury BOOST NUTS. ',2,0,'Mars','Retail Product',100,5,NULL),(4552,'RetailProductEntity','RP_CH_3',10,'Chocolate','Just try to resist!',2,0,'Brunos','Retail Product',100,5,NULL),(4553,'RetailProductEntity','RP_CH_4',20,'Chocolate','\"A delicious combination of smooth choc centre PACKED WITH PEANUTS,  rolled in chewy caramel, all covered in Cadbury milk chocolate.\"',5,0,'Hershey','Retail Product',1000,10,NULL),(4554,'RetailProductEntity','RP_CH_5',10,'Chocolate','\"Golden honeycomb covered in Cadbury Dairy Milk milk chocolate, Crunchie  is the chocolate bar that offers an uplifting taste experience. \"',2,0,'MiloBar','Retail Product',100,5,NULL),(4555,'RetailProductEntity','RP_CF_6',10,'Canned Food','Perfect for lunch, you can serve spoonfuls of mango chutney with the wraps for a sweet, spicy kick.',10,0,'Curry Tuna','Retail Product',1000,10,NULL),(4556,'RetailProductEntity','RP_CF_7',10,'Canned Food','Try spinach or tomato tortillas for a shot of color and flavor. ',10,0,'Plain Tuna','Retail Product',1000,10,NULL),(4558,'RetailProductEntity','RP_CF_8',10,'Canned Food','Whole-wheat tortillas deliver a nutty taste along with fiber and other nutrients.',10,0,'Chicken','Retail Product',1000,10,NULL),(4559,'RetailProductEntity','RP_CF_9',10,'Canned Food','Delicious and easy to the stomach canned plain chicken.',10,0,'Chicken Wings','Retail Product',1000,10,NULL),(4560,'RetailProductEntity','RP_DR_10',6,'Drink','Milk tea from renowned F&N beverages.',15,0,'Coffee','Retail Product',540,6,NULL),(4561,'RetailProductEntity','RP_DR_11',6,'Drink','Coffee tea to help boost up your energy.',15,0,'Tea','Retail Product',540,6,NULL),(4562,'RetailProductEntity','RP_DR_12',10,'Drink','Milo to give a head start to the day.',15,0,'Milo','Retail Product',750,5,NULL),(4563,'RetailProductEntity','RP_DR_13',6,'Drink','Horlick to give you the necessary nutrients.',15,0,'Horlick','Retail Product',540,6,NULL),(4564,'RetailProductEntity','RP_DR_14',6,'Drink','Keep yourself hydrated through the day.',15,0,'Water','Retail Product',540,6,NULL),(4567,'RetailProductEntity','RP_IN_15',10,'Instant Noodle','Spicy authentic thai tom yum chicken instant noodle.',10,0,'Instant ','Retail Product',1000,10,NULL),(4569,'RetailProductEntity','RP_IN_16',10,'Instant Noodle','Curry chicken instant noodle, delicious and easy on the stomach.',10,0,'Instant Noodle Packet','Retail Product',1000,10,NULL),(4571,'RetailProductEntity','RP_BR_17',10,'Bread','Thick delicious cream with butter on the bread.',2,0,'Butter','Retail Product',100,5,NULL),(4574,'RetailProductEntity','RP_BR_18',10,'Bread','Chocolate flavoured cream bread on the bread.',2,0,'Bread','Retail Product',100,5,NULL),(4576,'RetailProductEntity','RP_BR_19',10,'Bread','Vannila flavoured cream bread on the bread.',2,0,'Loaf','Retail Product',100,5,NULL),(4577,'RetailProductEntity','RP_BR_20',10,'Bread','Plain and original simple gardenia bread.',2,0,'Big Bread','Retail Product',100,5,NULL),(4578,'MenuItemEntity','K_MI_03',1,'Menu Item','Description',1,0,'Curry','Menu Item',1,1,NULL),(4579,'MenuItemEntity','K_MI_04',1,'Menu Item','Description',1,0,'FriedRice','Menu Item',1,1,NULL),(4580,'MenuItemEntity','K_MI_05',1,'Menu Item','Description',1,0,'NasiLemak','Menu Item',1,1,NULL),(4581,'MenuItemEntity','K_MI_06',1,'Menu Item','Description',1,0,'NasiPadi','Menu Item',1,1,NULL),(4582,'MenuItemEntity','K_MI_07',1,'Menu Item','Description',1,0,'Gravad','Menu Item',1,1,NULL),(4583,'MenuItemEntity','K_MI_08',1,'Menu Item','Description',1,0,'Tuna','Menu Item',1,1,NULL),(4584,'MenuItemEntity','K_MI_09',1,'Menu Item','Description',1,0,'Hotcake','Menu Item',1,1,NULL),(4585,'MenuItemEntity','K_MI_10',1,'Menu Item','Description',1,0,'ColdWater','Menu Item',1,1,NULL),(4586,'MenuItemEntity','K_MI_11',1,'Menu Item','Description',1,0,'Mushroom','Menu Item',1,1,NULL),(4587,'MenuItemEntity','K_MI_12',1,'Menu Item','Description',1,0,'Salmon ','Menu Item',1,1,NULL),(4588,'MenuItemEntity','K_MI_13',1,'Menu Item','Description',1,0,'Shrimp','Menu Item',1,1,NULL),(4589,'MenuItemEntity','K_MI_14',1,'Menu Item','Description',1,0,'Veggie','Menu Item',1,1,NULL),(4590,'MenuItemEntity','K_MI_15',1,'Menu Item','Description',1,0,'Chicken','Menu Item',1,1,NULL),(4591,'MenuItemEntity','K_MI_16',1,'Menu Item','Description',1,0,'Coke','Menu Item',1,1,NULL),(4592,'MenuItemEntity','K_MI_17',1,'Menu Item','Description',1,0,'Milo','Menu Item',1,1,NULL),(4593,'MenuItemEntity','K_MI_18',1,'Menu Item','Description',1,0,'Coffee','Menu Item',1,1,NULL),(4594,'MenuItemEntity','K_MI_19',1,'Menu Item','Description',1,0,'Tea','Menu Item',1,1,NULL),(4596,'ComboEntity','K_CO_01',1,NULL,'Combo 1',1,0,'Combo 1','Combo',1,1,NULL),(4599,'ComboEntity','K_CO_02',1,NULL,'Combo 2',1,0,'Combo 2','Combo',1,1,NULL),(4617,'ComboEntity','K_CO_03',1,NULL,'Combo 3',1,0,'Combo 3','Combo',1,1,NULL),(4619,'ComboEntity','K_CO_04',1,NULL,'Combo 4',1,0,'Combo 4','Combo',1,1,NULL),(4623,'ComboEntity','K_CO_05',1,NULL,'Combo 5',1,0,'Combo 5','Combo',1,1,NULL),(4651,'FurnitureEntity','F_CS_43',37,'Cabinets & Storage','Suitable for storing or moving books and other heavy items, since the bottom is reinforced. The included self-adhesive labels help you to organise and find your things. Cut-out handles on two sides make it easier to lift and carry the box.',18,0,'GORM','Furniture',18648,28,NULL),(7959,'RawIngredientEntity','RI1',40,'Raw Ingredient','1KG White Rice',10,0,'Rice','Raw Ingredient',8000,20,NULL),(7960,'RawIngredientEntity','RI2',30,'Raw Ingredient','1 Whole Chicken',20,0,'Chicken','Raw Ingredient',18000,30,NULL),(7961,'RawIngredientEntity','RI3',20,'Raw Ingredient','20 Carrots',20,0,'Carrots','Raw Ingredient',8000,20,NULL),(7962,'RawIngredientEntity','RI4',100,'Raw Ingredient','1KG Green China Cabbage',20,0,'Cabbage','Raw Ingredient',200000,100,NULL),(7963,'RawIngredientEntity','RI5',50,'Raw Ingredient','1KG Lamb Meat',10,0,'Mutton','Raw Ingredient',25000,50,NULL),(7964,'RawIngredientEntity','RI6',50,'Raw Ingredient','30 Fresh Chicken Eggs',5,0,'Egg','Raw Ingredient',12500,50,NULL),(7965,'RawIngredientEntity','RI7',10,'Raw Ingredient','1KG Sausages',10,0,'Sausage','Raw Ingredient',1000,10,NULL),(7966,'RawIngredientEntity','RI8',20,'Raw Ingredient','2KG Prawns',10,0,'Prawn','Raw Ingredient',4000,20,NULL),(7967,'RawIngredientEntity','RI9',30,'Raw Ingredient','2KG Beef Sirloin',20,0,'Beef','Raw Ingredient',18000,30,NULL),(7968,'RawIngredientEntity','RI10',30,'Raw Ingredient','1KG Salmon',20,0,'Salmon','Raw Ingredient',18000,30,NULL),(7969,'RawIngredientEntity','RI11',30,'Raw Ingredient','1KG Tuna',20,0,'Tuna','Raw Ingredient',18000,30,NULL),(7970,'RawIngredientEntity','RI12',80,'Raw Ingredient','1KG Bread',30,0,'Bread','Raw Ingredient',72000,30,NULL),(7971,'RawIngredientEntity','RI13',10,'Raw Ingredient','500G Butter',5,0,'Butter','Raw Ingredient',500,10,NULL),(7972,'RawIngredientEntity','RI14',10,'Raw Ingredient','500G Mushrooms',10,0,'Mushroom','Raw Ingredient',1000,10,NULL),(7974,'RawIngredientEntity','RI15',40,'Raw Ingredient','2KG Flour',10,0,'Flour','Raw Ingredient',8000,20,NULL),(7975,'RawIngredientEntity','RI16',40,'Raw Ingredient','2KG Pasta',10,0,'Pasta','Raw Ingredient',8000,20,NULL),(7976,'RawIngredientEntity','RI17',30,'Raw Ingredient','300ML x Dozen',50,0,'Coke','Raw Ingredient',75000,50,NULL),(7978,'RawIngredientEntity','RI18',30,'Raw Ingredient','300ML x Dozen',50,0,'Milo','Raw Ingredient',75000,50,NULL),(7979,'RawIngredientEntity','RI19',30,'Raw Ingredient','3KG Coffee Powder',50,0,'Coffee','Raw Ingredient',75000,50,NULL),(7980,'RawIngredientEntity','RI20',30,'Raw Ingredient','2KG Tea Leaves',50,0,'Tea','Raw Ingredient',75000,50,NULL);
/*!40000 ALTER TABLE `itementity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineitementity`
--

DROP TABLE IF EXISTS `lineitementity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lineitementity` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `PACKTYPE` varchar(255) DEFAULT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  `ITEM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_LINEITEMENTITY_ITEM_ID` (`ITEM_ID`),
  CONSTRAINT `FK_LINEITEMENTITY_ITEM_ID` FOREIGN KEY (`ITEM_ID`) REFERENCES `itementity` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10057 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineitementity`
--

LOCK TABLES `lineitementity` WRITE;
/*!40000 ALTER TABLE `lineitementity` DISABLE KEYS */;
INSERT INTO `lineitementity` VALUES (4565,'',1,72),(4566,'',2,73),(4568,'',1,72),(4570,'',3,807),(4573,'',2,73),(4575,'',3,807),(6302,'',8,4571),(6305,'',2,760),(6306,'',2,762),(6309,'',1,756),(6310,'',1,70),(6313,'',1,4576),(6314,'',2,767),(6315,'',1,917),(6316,'',1,920),(6319,'',2,767),(6320,'',2,905),(6323,'',1,926),(6324,'',1,907),(6325,'',1,916),(6355,'',2,4563),(6356,'',2,4555),(6359,'',1,756),(6360,'',1,901),(6361,'',1,802),(6362,'',1,808),(6363,'',1,4555),(6364,'',3,4586),(6365,'',3,4589),(6368,'',1,4577),(6369,'',1,4564),(6372,'',2,70),(6373,'',2,768),(6374,'',2,752),(6377,'',1,772),(6378,'',1,802),(6381,'',1,946),(6382,'',2,952),(6383,'',2,958),(6386,'',2,927),(6387,'',2,949),(6388,'',1,752),(6391,'',1,70),(6394,'',1,906),(6395,'',1,938),(6396,'',1,761),(6397,'',2,768),(6400,'',1,4556),(6401,'',1,4559),(6402,'',1,4560),(6405,'',3,771),(6408,'',1,4555),(6409,'',1,4556),(6410,'',1,4558),(6411,'',1,768),(6414,'',1,931),(6417,'',1,4567),(6418,'',1,4558),(6421,'',1,4553),(6422,'',1,4562),(6425,'',1,927),(6426,'',1,931),(6427,'',1,936),(6430,'',1,950),(6431,'',1,755),(6432,'',1,4563),(6435,'',2,4567),(6436,'',1,4574),(6437,'',1,4560),(6440,'',1,69),(6441,'',1,762),(6444,'',1,70),(6447,'',1,915),(6448,'',1,921),(6451,'',1,769),(6452,'',1,801),(6455,'',1,808),(6458,'',1,935),(6459,'',1,940),(6462,'',1,69),(6463,'',1,904),(6464,'',1,920),(6467,'',1,947),(6468,'',1,757),(6471,'',2,71),(6474,'',2,941),(6475,'',2,912),(6478,'',1,765),(6479,'',1,762),(6482,'',1,755),(6483,'',1,765),(6484,'',1,803),(6487,'',3,2303),(6488,'',2,4585),(6489,'',2,4590),(6492,'',2,2303),(6493,'',2,4585),(6494,'',3,4590),(6497,'',1,903),(6500,'',1,4556),(6501,'',1,926),(6502,'',1,4574),(6505,'',1,961),(6506,'',1,943),(6507,'',1,908),(6510,'',2,4578),(6511,'',1,4581),(6512,'',1,4584),(6515,'',1,767),(6516,'',1,760),(6517,'',1,919),(6520,'',1,4591),(6521,'',1,4590),(6522,'',2,4587),(6525,'',1,4560),(6526,'',1,804),(6527,'',1,938),(6530,'',1,950),(6531,'',1,911),(6532,'',1,802),(6535,'',2,4582),(6536,'',1,4583),(6537,'',2,4580),(6538,'',1,4594),(6541,'',1,760),(6544,'',1,916),(6545,'',1,961),(6546,'',1,4559),(6547,'',1,4571),(6550,'',1,851),(6551,'',1,946),(6552,'',1,912),(6555,'',2,944),(6556,'',2,958),(6559,'',1,921),(6560,'',1,936),(6563,'',1,902),(6564,'',1,755),(6567,'',1,4651),(6568,'',1,768),(6569,'',1,938),(6572,'',1,765),(6575,'',1,4563),(6576,'',1,4571),(6579,'',2,2303),(6580,'',2,4578),(6581,'',2,4585),(6584,'',1,71),(6585,'',1,940),(6588,'',1,2302),(6589,'',3,2303),(6590,'',1,4579),(6591,'',2,4591),(6592,'',2,4592),(6595,'',1,761),(6596,'',1,901),(6597,'',1,931),(6600,'',2,953),(6603,'',2,940),(6604,'',2,949),(6605,'',1,902),(6608,'',1,922),(6609,'',1,943),(6612,'',1,4589),(6613,'',1,4588),(6614,'',1,4587),(6615,'',1,4594),(6618,'',1,952),(6619,'',1,916),(6622,'',2,4551),(6623,'',2,4555),(6624,'',1,2301),(6627,'',7,4584),(6630,'',2,913),(6631,'',2,901),(6634,'',4,4586),(6635,'',3,4584),(6636,'',3,4580),(6637,'',2,4578),(6638,'',2,4593),(6639,'',2,4591),(6642,'',1,909),(6643,'',1,768),(6644,'',1,905),(6645,'',1,752),(6646,'',1,952),(6647,'',1,958),(6650,'',1,759),(6653,'',1,922),(6656,'',1,915),(6657,'',1,809),(6658,'',1,751),(6661,'',4,4592),(6662,'',4,2303),(6665,'',2,4578),(6666,'',2,4580),(6667,'',2,4592),(6670,'',1,947),(6673,'',2,4589),(6674,'',2,4587),(6675,'',2,4585),(6678,'',1,952),(6681,'',2,4593),(6682,'',2,4582),(6685,'',1,961),(6688,'',1,4579),(6689,'',1,4590),(6692,'',1,762),(6693,'',1,70),(6696,'',1,765),(6699,'',2,4584),(6700,'',2,4586),(6701,'',2,4590),(6704,'',2,4651),(6707,'',2,908),(6710,'',1,4586),(6711,'',3,4580),(6712,'',1,4585),(6715,'',2,4577),(6716,'',2,4567),(6719,'',1,2302),(6720,'',1,2303),(6721,'',1,4581),(6722,'',1,4588),(6723,'',1,4591),(6726,'',1,938),(6727,'',1,755),(6730,'',2,4554),(6731,'',2,4560),(6734,'',1,761),(6735,'',1,770),(6736,'',1,809),(6739,'',3,4593),(6740,'',3,4589),(6743,'',1,767),(6746,'',2,4579),(6747,'',3,4580),(6748,'',2,4583),(6749,'',2,4587),(6750,'',2,4593),(6753,'',1,920),(6754,'',1,910),(6755,'',1,941),(6758,'',1,756),(6761,'',3,4582),(6762,'',3,4580),(6763,'',7,4583),(6766,'',1,915),(6767,'',2,752),(6768,'',1,927),(6771,'',1,903),(6772,'',1,909),(6775,'',1,958),(6776,'',1,961),(6779,'',3,4579),(6780,'',3,4578),(6783,'',1,944),(6784,'',1,912),(6785,'',1,903),(6786,'',1,755),(6789,'',1,924),(6790,'',1,931),(6793,'',1,4578),(6796,'',2,759),(6799,'',2,4590),(6800,'',1,4578),(6801,'',2,2303),(6802,'',1,4582),(6803,'',2,4592),(6806,'',10,2303),(6809,'',1,769),(6810,'',1,804),(6813,'',1,762),(6816,'',1,944),(6817,'',1,71),(6818,'',1,756),(6821,'',1,764),(6824,'',1,801),(6825,'',1,808),(6828,'',1,2302),(6829,'',1,4593),(6832,'',1,765),(6835,'',1,908),(6838,'',1,767),(6841,'',1,4567),(6842,'',1,4551),(6845,'',1,930),(6848,'',2,768),(6851,'',1,4593),(6852,'',1,2303),(6855,'',1,770),(6858,'',1,4555),(6859,'',1,4569),(6862,'',3,771),(6865,'',1,943),(6866,'',1,926),(6867,'',1,804),(6868,'',1,761),(6871,'',1,803),(6874,'',1,751),(6875,'',1,755),(6878,'',3,4586),(6879,'',1,4583),(6880,'',2,4584),(6881,'',1,4591),(6882,'',2,4592),(6883,'',2,4593),(6884,'',2,4589),(6887,'',1,809),(6890,'',1,901),(6893,'',2,765),(6894,'',2,809),(6895,'',1,756),(6898,'',1,4586),(6899,'',1,2303),(6902,'',1,70),(6905,'',2,902),(6908,'',1,771),(6909,'',1,851),(6910,'',2,912),(6911,'',1,941),(6914,'',1,4651),(6915,'',1,808),(6916,'',1,937),(6919,'',1,903),(6922,'',1,916),(6923,'',1,927),(6926,'',1,905),(6929,'',1,949),(6930,'',1,959),(6933,'',1,907),(6936,'',1,909),(6939,'',2,4591),(6940,'',1,4578),(6941,'',1,4583),(6944,'',1,764),(6945,'',1,901),(6946,'',1,913),(6949,'',1,915),(6952,'',2,4562),(6953,'',2,4574),(6956,'',1,4580),(6957,'',1,4579),(6958,'',1,4578),(6959,'',2,4585),(6960,'',2,4591),(6961,'',1,4587),(6964,'',1,801),(6965,'',1,916),(6968,'',2,917),(6971,'',1,917),(6974,'',1,921),(6977,'',1,4554),(6978,'',1,4569),(6981,'',1,924),(6984,'',1,943),(6985,'',1,768),(6986,'',1,70),(6989,'',1,926),(6992,'',1,4558),(6993,'',1,4564),(6996,'',1,928),(6999,'',2,4589),(7000,'',1,4585),(7001,'',1,4593),(7004,'',2,931),(7007,'',1,4590),(7008,'',2,4587),(7009,'',1,4584),(7010,'',2,4586),(7011,'',2,4592),(7012,'',1,4593),(7015,'',1,4569),(7016,'',2,4576),(7017,'',2,4562),(7020,'',1,809),(7021,'',1,765),(7022,'',1,4555),(7025,'',2,934),(7028,'',1,4552),(7029,'',1,4562),(7032,'',2,936),(7035,'',3,4560),(7036,'',3,4571),(7037,'',1,770),(7040,'',1,937),(7043,'',1,901),(7044,'',1,902),(7047,'',1,763),(7050,'',1,769),(7053,'',1,927),(7054,'',1,920),(7057,'',1,4583),(7058,'',1,4582),(7059,'',1,4580),(7060,'',1,2302),(7061,'',1,2303),(7062,'',1,4585),(7063,'',1,4591),(7066,'',1,904),(7067,'',1,912),(7068,'',1,4560),(7071,'',1,772),(7074,'',1,4556),(7075,'',1,4562),(7078,'',1,4651),(7081,'',1,914),(7084,'',1,801),(7087,'',3,4574),(7090,'',2,4567),(7091,'',1,4555),(7092,'',2,4562),(7095,'',1,802),(7098,'',1,804),(7101,'',1,4564),(7104,'',1,801),(7105,'',1,806),(7108,'',1,4553),(7109,'',1,4560),(7112,'',4,808),(7115,'',1,851),(7118,'',1,904),(7121,'',1,769),(7122,'',1,936),(7123,'',1,912),(7126,'',3,4592),(7127,'',1,4589),(7128,'',3,4587),(7129,'',3,4586),(7130,'',1,4580),(7133,'',2,906),(7136,'',2,4563),(7137,'',2,4561),(7138,'',1,4553),(7139,'',1,4555),(7142,'',1,71),(7143,'',1,757),(7146,'',1,908),(7147,'',1,910),(7150,'',1,767),(7151,'',1,902),(7154,'',2,4576),(7155,'',2,4564),(7156,'',1,4559),(7159,'',1,770),(7160,'',1,851),(7163,'',2,912),(7166,'',1,4553),(7167,'',2,4559),(7168,'',2,4563),(7171,'',1,905),(7174,'',1,920),(7175,'',1,949),(7178,'',1,914),(7179,'',1,916),(7182,'',2,918),(7185,'',5,4551),(7188,'',1,4578),(7189,'',1,4579),(7190,'',1,4580),(7191,'',1,4582),(7192,'',1,4586),(7193,'',1,4593),(7194,'',1,4594),(7197,'',1,920),(7200,'',1,915),(7201,'',2,955),(7202,'',2,952),(7205,'',1,4571),(7206,'',1,4561),(7209,'',1,922),(7212,'',1,925),(7215,'',1,4558),(7216,'',1,944),(7219,'',1,927),(7222,'',1,756),(7223,'',1,936),(7226,'',2,4558),(7227,'',2,4561),(7230,'',2,930),(7233,'',1,941),(7234,'',1,915),(7237,'',1,932),(7240,'',2,950),(7241,'',2,952),(7244,'',1,935),(7247,'',1,4555),(7248,'',1,4554),(7249,'',2,4553),(7250,'',1,4552),(7251,'',2,4551),(7254,'',1,918),(7255,'',1,940),(7256,'',1,937),(7259,'',1,938),(7260,'',1,940),(7263,'',1,765),(7264,'',1,952),(7267,'',1,760),(7268,'',1,4564),(7271,'',1,907),(7274,'',1,941),(7275,'',1,943),(7276,'',1,944),(7279,'',1,759),(7280,'',1,764),(7281,'',1,751),(7284,'',1,950),(7287,'',1,4576),(7288,'',1,770),(7289,'',1,70),(7292,'',1,907),(7295,'',2,4567),(7296,'',1,4569),(7297,'',1,4571),(7298,'',2,4576),(7299,'',2,4577),(7302,'',1,902),(7303,'',1,944),(7306,'',1,947),(7307,'',1,946),(7310,'',1,907),(7311,'',1,924),(7312,'',1,769),(7315,'',1,935),(7316,'',1,851),(7317,'',1,926),(7320,'',1,69),(7321,'',1,760),(7324,'',1,906),(7325,'',1,918),(7326,'',1,802),(7329,'',1,949),(7330,'',1,950),(7331,'',1,952),(7332,'',1,953),(7335,'',1,937),(7338,'',7,4569),(7341,'',1,914),(7342,'',2,927),(7343,'',1,949),(7346,'',1,955),(7347,'',1,956),(7348,'',1,958),(7351,'',1,956),(7352,'',1,949),(7353,'',1,930),(7356,'',1,69),(7357,'',1,919),(7360,'',2,959),(7361,'',2,961),(7364,'',1,4561),(7365,'',1,919),(7368,'',1,755),(7369,'',1,941),(7370,'',1,2301),(7371,'',1,4551),(7372,'',1,4552),(7375,'',1,4562),(7378,'',1,926),(7381,'',2,4558),(7382,'',2,4563),(7383,'',2,4574),(7386,'',1,4583),(7389,'',1,928),(7390,'',1,932),(7393,'',1,944),(7394,'',1,958),(7397,'',1,4588),(7400,'',1,4567),(7401,'',1,4571),(7402,'',1,4560),(7405,'',1,4592),(7408,'',1,4576),(7411,'',1,4554),(7412,'',1,4558),(7413,'',1,4561),(7416,'',1,4561),(7417,'',1,4562),(7418,'',1,4563),(7419,'',1,938),(7422,'',1,2301),(7423,'',1,4567),(7426,'',1,4564),(7427,'',1,4576),(7430,'',1,765),(7431,'',1,902),(7432,'',1,905),(7435,'',1,936),(7436,'',1,4651),(7439,'',1,4563),(7440,'',1,4569),(7443,'',1,917),(7444,'',1,931),(7445,'',1,772),(7448,'',1,4554),(7449,'',1,936),(7452,'',2,910),(7453,'',1,940),(7454,'',1,950),(7457,'',1,918),(7458,'',1,908),(7459,'',1,4564),(7462,'',1,959),(7463,'',1,955),(7464,'',1,952),(7467,'',1,752),(7470,'',2,931),(7471,'',2,921),(7474,'',1,762),(7475,'',1,926),(7478,'',1,947),(7479,'',1,931),(7480,'',1,771),(7483,'',1,920),(7484,'',1,922),(7487,'',1,937),(7488,'',1,919),(7489,'',1,913),(7492,'',1,4571),(7493,'',2,4574),(7494,'',1,4558),(7495,'',1,71),(7498,'',1,756),(7499,'',1,760),(7500,'',1,768),(7503,'',1,930),(7504,'',1,806),(7505,'',1,924),(7508,'',1,913),(7509,'',1,763),(7510,'',1,806),(7513,'',1,901),(7514,'',1,921),(7515,'',1,763),(7518,'',1,752),(7519,'',1,760),(7520,'',1,767),(7523,'',1,906),(7524,'',1,808),(7527,'',1,903),(7528,'',1,926),(7529,'',1,802),(7532,'',1,4562),(7533,'',1,4571),(7536,'',1,908),(7537,'',1,752),(7540,'',1,4577),(7541,'',1,4576),(7544,'',1,751),(7545,'',1,961),(7546,'',1,959),(7549,'',1,920),(7550,'',1,946),(7551,'',1,955),(7554,'',1,802),(7555,'',1,804),(7559,'',1,910),(7560,'',1,943),(7563,'',1,949),(7564,'',1,958),(7567,'',1,4555),(7568,'',1,4560),(7569,'',1,4571),(7572,'',1,4576),(7575,'',1,941),(7576,'',1,70),(7584,'',1,4576),(7585,'',1,4567),(7586,'',1,4562),(7589,'',1,4552),(7590,'',1,4559),(7591,'',1,4563),(7594,'',1,961),(7595,'',1,940),(7598,'',1,803),(7599,'',1,940),(7602,'',1,947),(7603,'',1,941),(7606,'',1,765),(7607,'',1,906),(7608,'',1,4553),(7609,'',1,4554),(7610,'',1,4551),(7613,'',1,767),(7614,'',1,4567),(7617,'',1,760),(7618,'',1,762),(7621,'',1,4559),(7622,'',1,4569),(7625,'',1,809),(7626,'',1,926),(7627,'',1,4651),(7630,'',1,770),(7631,'',1,949),(7632,'',1,940),(7635,'',1,910),(7636,'',1,930),(7637,'',1,950),(7640,'',1,953),(7641,'',1,920),(7644,'',1,757),(7645,'',1,764),(7648,'',1,905),(7649,'',1,757),(7652,'',1,802),(7653,'',1,936),(7656,'',1,921),(7657,'',1,931),(7658,'',1,801),(7661,'',1,4564),(7662,'',1,4560),(7665,'',1,918),(7666,'',1,936),(7669,'',1,4554),(7670,'',1,4560),(7673,'',1,910),(7674,'',1,932),(7675,'',1,4571),(7676,'',1,4574),(7679,'',1,802),(7680,'',1,911),(7683,'',1,803),(7684,'',1,928),(7687,'',1,932),(7688,'',1,946),(7691,'',1,924),(7692,'',1,921),(7693,'',1,4564),(7696,'',1,761),(7697,'',1,764),(7700,'',2,902),(7701,'',2,751),(7704,'',1,770),(7705,'',1,919),(7708,'',1,904),(7709,'',1,906),(7712,'',1,4559),(7713,'',1,4556),(7714,'',1,4555),(7717,'',1,914),(7718,'',1,927),(7721,'',1,955),(7722,'',1,4577),(7725,'',3,4574),(7726,'',3,4562),(7729,'',1,927),(7730,'',1,953),(7733,'',1,765),(7734,'',1,926),(7737,'',1,4560),(7738,'',1,4551),(7741,'',1,955),(7742,'',1,925),(7743,'',1,909),(7744,'',1,921),(7747,'',1,806),(7748,'',1,910),(7749,'',1,947),(7752,'',1,911),(7753,'',1,902),(7754,'',1,760),(7755,'',1,751),(7758,'',1,905),(7759,'',1,771),(7762,'',1,953),(7763,'',1,943),(7764,'',1,925),(7767,'',2,925),(7768,'',2,921),(7771,'',1,931),(7774,'',1,4559),(7775,'',1,4558),(7778,'',1,4553),(7779,'',1,915),(7780,'',1,752),(7783,'',1,762),(7786,'',1,767),(7787,'',1,915),(7790,'',1,760),(7791,'',1,756),(7792,'',1,4563),(7795,'',1,4569),(7796,'',1,4567),(7797,'',1,950),(7800,'',1,924),(7801,'',1,851),(7804,'',1,4571),(7805,'',1,4567),(7808,'',1,906),(7809,'',1,930),(7812,'',1,916),(7813,'',1,851),(7816,'',1,949),(7819,'',1,767),(7820,'',1,809),(7821,'',1,4576),(7824,'',1,935),(7825,'',1,925),(7826,'',1,801),(7827,'',1,4560),(7830,'',1,940),(7831,'',1,904),(7832,'',1,915),(7835,'',1,762),(7836,'',1,771),(7837,'',1,912),(7840,'',1,762),(7841,'',1,756),(7844,'',1,953),(7845,'',1,918),(7848,'',1,913),(7851,'',1,803),(7852,'',1,4567),(7855,'',1,759),(7858,'',1,4562),(7859,'',1,767),(7862,'',1,755),(7863,'',1,921),(7866,'',1,759),(7867,'',1,803),(7870,'',1,4551),(7871,'',1,4559),(7872,'',1,905),(7873,'',1,767),(7876,'',1,802),(7877,'',1,935),(7878,'',1,949),(7881,'',1,908),(7882,'',1,806),(7885,'',1,755),(7886,'',1,914),(7889,'',1,4569),(7892,'',1,4558),(7893,'',1,4563),(7896,'',1,4556),(7899,'',1,808),(7900,'',1,910),(7903,'',1,4571),(7906,'',1,752),(7907,'',1,761),(7908,'',1,932),(7909,'',1,922),(7910,'',1,927),(7913,'',2,4553),(7916,'',1,4579),(7921,'',1,4558),(7922,'',1,910),(7925,'',1,4592),(7989,'',5,7959),(7990,'',4,7960),(7991,'',1,7966),(7992,'',1,7974),(7993,'',1,7961),(7994,'',5,7960),(7995,'',2,7961),(8001,'',4,7959),(8051,'',1,7964),(8052,'',3,7965),(8053,'',3,7966),(8054,'',3,7959),(8055,'',1,7964),(8056,'',3,7969),(8057,'',3,7960),(8101,'',1,7967),(8151,'',4,7963),(8152,'',1,7961),(8153,'',5,7971),(8154,'',5,7969),(8155,'',3,7975),(8156,'',2,7974),(8157,'',2,7971),(8851,'',70,70),(8852,'',60,69),(8855,'',30,71),(8902,'',100,73),(8903,'',30,72),(8955,NULL,30,69),(8956,NULL,22,71),(8957,NULL,44,950),(8959,NULL,4,931),(9002,'',44,950),(9003,'',44,950),(9005,'',22,71),(9006,'',22,71),(9008,'',4,931),(9009,'',4,931),(9773,'',10,69),(9774,'',50,71),(9853,NULL,18,4577),(9854,NULL,188,4577),(9902,'',188,4577),(9903,'',188,4577),(9952,NULL,10,69),(9955,'',10,69),(9956,'',10,69),(10056,'',12,71);
/*!40000 ALTER TABLE `lineitementity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loyaltytierentity`
--

DROP TABLE IF EXISTS `loyaltytierentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loyaltytierentity` (
  `ID` bigint(20) NOT NULL,
  `AMTOFSPENDINGREQUIRED` double DEFAULT NULL,
  `ISDELETED` tinyint(1) DEFAULT '0',
  `TIER` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loyaltytierentity`
--

LOCK TABLES `loyaltytierentity` WRITE;
/*!40000 ALTER TABLE `loyaltytierentity` DISABLE KEYS */;
INSERT INTO `loyaltytierentity` VALUES (12,5000,0,'Gold'),(13,3000,0,'Silver'),(14,1000,0,'Bronze'),(15,0,0,'Classic');
/*!40000 ALTER TABLE `loyaltytierentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturingfacilityentity`
--

DROP TABLE IF EXISTS `manufacturingfacilityentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturingfacilityentity` (
  `ID` bigint(20) NOT NULL,
  `ADDRESS` longtext,
  `CAPACITY` int(11) DEFAULT NULL,
  `EMAIL` longtext,
  `ISDELETED` tinyint(1) DEFAULT '0',
  `NAME` longtext,
  `TELEPHONE` longtext,
  `REGIONALOFFICE_ID` bigint(20) DEFAULT NULL,
  `WAREHOUSE_ID` bigint(20) DEFAULT NULL,
  `latitude` text,
  `longitude` text,
  PRIMARY KEY (`ID`),
  KEY `FK_MANUFACTURINGFACILITYENTITY_REGIONALOFFICE_ID` (`REGIONALOFFICE_ID`),
  KEY `FK_MANUFACTURINGFACILITYENTITY_WAREHOUSE_ID` (`WAREHOUSE_ID`),
  CONSTRAINT `FK_MANUFACTURINGFACILITYENTITY_REGIONALOFFICE_ID` FOREIGN KEY (`REGIONALOFFICE_ID`) REFERENCES `regionalofficeentity` (`ID`),
  CONSTRAINT `FK_MANUFACTURINGFACILITYENTITY_WAREHOUSE_ID` FOREIGN KEY (`WAREHOUSE_ID`) REFERENCES `warehouseentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturingfacilityentity`
--

LOCK TABLES `manufacturingfacilityentity` WRITE;
/*!40000 ALTER TABLE `manufacturingfacilityentity` DISABLE KEYS */;
INSERT INTO `manufacturingfacilityentity` VALUES (54,'3 Jurong Industrial Park',10000,'MFSG1@islandfurniture.com',0,'Manufacturing Facility SG1','67183645',53,55,'1.33364','103.71543'),(56,'26 Toh Guan Road',3000,'MFSG2@islandfurniture.com',0,'Manufacturing Facility SG2','67183664',53,57,'1.33523','103.75139');
/*!40000 ALTER TABLE `manufacturingfacilityentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masterproductionscheduleentity`
--

DROP TABLE IF EXISTS `masterproductionscheduleentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masterproductionscheduleentity` (
  `ID` bigint(20) NOT NULL,
  `AMOUNT_MONTH` int(11) DEFAULT NULL,
  `AMOUNT_WEEK1` int(11) DEFAULT NULL,
  `AMOUNT_WEEK2` int(11) DEFAULT NULL,
  `AMOUNT_WEEK3` int(11) DEFAULT NULL,
  `AMOUNT_WEEK4` int(11) DEFAULT NULL,
  `AMOUNT_WEEK5` int(11) DEFAULT NULL,
  `MENUITEM_ID` bigint(20) DEFAULT NULL,
  `MF_ID` bigint(20) DEFAULT NULL,
  `STORE_ID` bigint(20) DEFAULT NULL,
  `FURNITURE_ID` bigint(20) DEFAULT NULL,
  `SCHEDULE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_MASTERPRODUCTIONSCHEDULEENTITY_STORE_ID` (`STORE_ID`),
  KEY `FK_MASTERPRODUCTIONSCHEDULEENTITY_MENUITEM_ID` (`MENUITEM_ID`),
  KEY `FK_MASTERPRODUCTIONSCHEDULEENTITY_MF_ID` (`MF_ID`),
  KEY `FK_MASTERPRODUCTIONSCHEDULEENTITY_FURNITURE_ID` (`FURNITURE_ID`),
  KEY `FK_MASTERPRODUCTIONSCHEDULEENTITY_SCHEDULE_ID` (`SCHEDULE_ID`),
  CONSTRAINT `FK_MASTERPRODUCTIONSCHEDULEENTITY_FURNITURE_ID` FOREIGN KEY (`FURNITURE_ID`) REFERENCES `itementity` (`ID`),
  CONSTRAINT `FK_MASTERPRODUCTIONSCHEDULEENTITY_MENUITEM_ID` FOREIGN KEY (`MENUITEM_ID`) REFERENCES `itementity` (`ID`),
  CONSTRAINT `FK_MASTERPRODUCTIONSCHEDULEENTITY_MF_ID` FOREIGN KEY (`MF_ID`) REFERENCES `manufacturingfacilityentity` (`ID`),
  CONSTRAINT `FK_MASTERPRODUCTIONSCHEDULEENTITY_SCHEDULE_ID` FOREIGN KEY (`SCHEDULE_ID`) REFERENCES `monthscheduleentity` (`ID`),
  CONSTRAINT `FK_MASTERPRODUCTIONSCHEDULEENTITY_STORE_ID` FOREIGN KEY (`STORE_ID`) REFERENCES `storeentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masterproductionscheduleentity`
--

LOCK TABLES `masterproductionscheduleentity` WRITE;
/*!40000 ALTER TABLE `masterproductionscheduleentity` DISABLE KEYS */;
INSERT INTO `masterproductionscheduleentity` VALUES (8750,1246,0,312,312,312,310,2302,NULL,59,NULL,7557),(8751,1250,0,313,313,313,311,2303,NULL,59,NULL,7557),(8752,0,0,0,0,0,0,4578,NULL,59,NULL,7557),(8753,0,0,0,0,0,0,4579,NULL,59,NULL,7557),(8754,0,0,0,0,0,0,4580,NULL,59,NULL,7557),(8755,0,0,0,0,0,0,4581,NULL,59,NULL,7557),(8756,0,0,0,0,0,0,4582,NULL,59,NULL,7557),(8757,0,0,0,0,0,0,4583,NULL,59,NULL,7557),(8758,0,0,0,0,0,0,4584,NULL,59,NULL,7557),(8759,0,0,0,0,0,0,4585,NULL,59,NULL,7557),(8760,0,0,0,0,0,0,4586,NULL,59,NULL,7557),(8761,0,0,0,0,0,0,4587,NULL,59,NULL,7557),(8762,0,0,0,0,0,0,4588,NULL,59,NULL,7557),(8763,0,0,0,0,0,0,4589,NULL,59,NULL,7557),(8764,0,0,0,0,0,0,4590,NULL,59,NULL,7557),(8765,0,0,0,0,0,0,4591,NULL,59,NULL,7557),(8766,0,0,0,0,0,0,4592,NULL,59,NULL,7557),(8767,0,0,0,0,0,0,4593,NULL,59,NULL,7557),(8768,0,0,0,0,0,0,4594,NULL,59,NULL,7557);
/*!40000 ALTER TABLE `masterproductionscheduleentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materialrequiremententity`
--

DROP TABLE IF EXISTS `materialrequiremententity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materialrequiremententity` (
  `ID` bigint(20) NOT NULL,
  `DAY` int(11) DEFAULT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  `MF_ID` bigint(20) DEFAULT NULL,
  `MPS_ID` bigint(20) DEFAULT NULL,
  `RAWINGREDIENT_ID` bigint(20) DEFAULT NULL,
  `RAWMATERIAL_ID` bigint(20) DEFAULT NULL,
  `SCHEDULE_ID` bigint(20) DEFAULT NULL,
  `STORE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_MATERIALREQUIREMENTENTITY_RAWINGREDIENT_ID` (`RAWINGREDIENT_ID`),
  KEY `FK_MATERIALREQUIREMENTENTITY_RAWMATERIAL_ID` (`RAWMATERIAL_ID`),
  KEY `FK_MATERIALREQUIREMENTENTITY_STORE_ID` (`STORE_ID`),
  KEY `FK_MATERIALREQUIREMENTENTITY_MF_ID` (`MF_ID`),
  KEY `FK_MATERIALREQUIREMENTENTITY_MPS_ID` (`MPS_ID`),
  KEY `FK_MATERIALREQUIREMENTENTITY_SCHEDULE_ID` (`SCHEDULE_ID`),
  CONSTRAINT `FK_MATERIALREQUIREMENTENTITY_MF_ID` FOREIGN KEY (`MF_ID`) REFERENCES `manufacturingfacilityentity` (`ID`),
  CONSTRAINT `FK_MATERIALREQUIREMENTENTITY_MPS_ID` FOREIGN KEY (`MPS_ID`) REFERENCES `masterproductionscheduleentity` (`ID`),
  CONSTRAINT `FK_MATERIALREQUIREMENTENTITY_RAWINGREDIENT_ID` FOREIGN KEY (`RAWINGREDIENT_ID`) REFERENCES `itementity` (`ID`),
  CONSTRAINT `FK_MATERIALREQUIREMENTENTITY_RAWMATERIAL_ID` FOREIGN KEY (`RAWMATERIAL_ID`) REFERENCES `itementity` (`ID`),
  CONSTRAINT `FK_MATERIALREQUIREMENTENTITY_SCHEDULE_ID` FOREIGN KEY (`SCHEDULE_ID`) REFERENCES `monthscheduleentity` (`ID`),
  CONSTRAINT `FK_MATERIALREQUIREMENTENTITY_STORE_ID` FOREIGN KEY (`STORE_ID`) REFERENCES `storeentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materialrequiremententity`
--

LOCK TABLES `materialrequiremententity` WRITE;
/*!40000 ALTER TABLE `materialrequiremententity` DISABLE KEYS */;
INSERT INTO `materialrequiremententity` VALUES (8821,2,79,NULL,8750,7959,NULL,7557,59),(8822,9,79,NULL,8750,7959,NULL,7557,59),(8823,16,79,NULL,8750,7959,NULL,7557,59),(8824,23,78,NULL,8750,7959,NULL,7557,59),(8825,2,63,NULL,8750,7960,NULL,7557,59),(8826,9,63,NULL,8750,7960,NULL,7557,59),(8827,16,63,NULL,8750,7960,NULL,7557,59),(8828,23,63,NULL,8750,7960,NULL,7557,59),(8829,2,8,NULL,8751,7966,NULL,7557,59),(8830,9,8,NULL,8751,7966,NULL,7557,59),(8831,16,8,NULL,8751,7966,NULL,7557,59),(8832,23,8,NULL,8751,7966,NULL,7557,59),(8833,2,8,NULL,8751,7974,NULL,7557,59),(8834,9,8,NULL,8751,7974,NULL,7557,59),(8835,16,8,NULL,8751,7974,NULL,7557,59),(8836,23,8,NULL,8751,7974,NULL,7557,59),(8837,2,8,NULL,8751,7961,NULL,7557,59),(8838,9,8,NULL,8751,7961,NULL,7557,59),(8839,16,8,NULL,8751,7961,NULL,7557,59),(8840,23,8,NULL,8751,7961,NULL,7557,59);
/*!40000 ALTER TABLE `materialrequiremententity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memberentity`
--

DROP TABLE IF EXISTS `memberentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memberentity` (
  `ID` bigint(20) NOT NULL,
  `DOB` date DEFAULT NULL,
  `ACCOUNTACTIVATIONSTATUS` tinyint(1) DEFAULT '0',
  `ACCOUNTLOCKSTATUS` tinyint(1) DEFAULT '0',
  `ACTIVATIONCODE` varchar(255) DEFAULT NULL,
  `ADDRESS` longtext,
  `AGE` int(11) DEFAULT NULL,
  `CITY` longtext,
  `CUMULATIVESPENDING` double DEFAULT NULL,
  `EMAIL` longtext,
  `INCOME` int(11) DEFAULT NULL,
  `ISDELETED` tinyint(1) DEFAULT '0',
  `JOINDATE` date DEFAULT NULL,
  `LOYALTYCARDID` varchar(255) DEFAULT NULL,
  `LOYALTYPOINTS` int(11) DEFAULT NULL,
  `NAME` longtext,
  `OCCUPATION` varchar(255) DEFAULT NULL,
  `PASSWORDHASH` varchar(255) DEFAULT NULL,
  `PASSWORDRESET` varchar(255) DEFAULT NULL,
  `PASSWORDSALT` varchar(255) DEFAULT NULL,
  `PHONE` longtext,
  `SECURITYANSWER` longtext,
  `SECURITYQUESTION` int(11) DEFAULT NULL,
  `SERVICELEVELAGREEMENT` tinyint(1) DEFAULT '0',
  `UNLOCKCODE` varchar(255) DEFAULT NULL,
  `ZIPCODE` longtext,
  `LOYALTYTIER_ID` bigint(20) DEFAULT NULL,
  `COUNTRY_ID` bigint(20) DEFAULT NULL,
  `WISHLIST_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_MEMBERENTITY_LOYALTYTIER_ID` (`LOYALTYTIER_ID`),
  KEY `FK_MEMBERENTITY_COUNTRY_ID` (`COUNTRY_ID`),
  KEY `FK_MEMBERENTITY_WISHLIST_ID` (`WISHLIST_ID`),
  CONSTRAINT `FK_MEMBERENTITY_COUNTRY_ID` FOREIGN KEY (`COUNTRY_ID`) REFERENCES `countryentity` (`ID`),
  CONSTRAINT `FK_MEMBERENTITY_LOYALTYTIER_ID` FOREIGN KEY (`LOYALTYTIER_ID`) REFERENCES `loyaltytierentity` (`ID`),
  CONSTRAINT `FK_MEMBERENTITY_WISHLIST_ID` FOREIGN KEY (`WISHLIST_ID`) REFERENCES `wishlistentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberentity`
--

LOCK TABLES `memberentity` WRITE;
/*!40000 ALTER TABLE `memberentity` DISABLE KEYS */;
INSERT INTO `memberentity` VALUES (1,'1995-01-18',0,0,NULL,NULL,25,'Malaysia',934,'molestie.tortor@adipiscinglobortis.net',18573,0,'2014-06-24',NULL,2781,'Lucy Rodriguez',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(2,'1991-04-22',0,0,NULL,NULL,20,'Malaysia',4776,'dui@velit.net',26387,0,'2011-12-30',NULL,3990,'Hasad Blackburn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(3,'1993-02-07',0,0,NULL,NULL,21,'Malaysia',2080,'eget.ipsum@ametultriciessem.org',3525,0,'2012-05-03',NULL,4350,'Dexter Carroll',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(4,'1990-06-09',0,0,NULL,NULL,18,'Malaysia',1051,'eget@Phasellusnulla.edu',975,0,'2011-04-29',NULL,1845,'Leslie Vargas',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(5,'1996-07-06',0,0,NULL,NULL,21,'Malaysia',1405,'pharetra.nibh@Namac.co.uk',18192,0,'2011-02-25',NULL,1217,'Rose Tran',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(6,'1994-05-15',0,0,NULL,NULL,20,'Malaysia',2695,'semper.Nam.tempor@lobortismaurisSuspendisse.ca',8767,0,'2010-03-18',NULL,4376,'Ria Dean',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(7,'1994-01-25',0,0,NULL,NULL,23,'Malaysia',3251,'diam@risusDonec.edu',24049,0,'2011-11-17',NULL,2338,'Sierra Dunn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(8,'1994-12-15',0,0,NULL,NULL,19,'Malaysia',3570,'pede.Cum@consequatdolorvitae.org',10008,0,'2012-08-31',NULL,3641,'Callum Bradford',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(9,'1990-06-22',0,0,NULL,NULL,23,'Malaysia',2075,'quis.tristique@pharetrautpharetra.co.uk',5722,0,'2011-07-24',NULL,1932,'Zahir Hines',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(10,'1996-06-12',0,0,NULL,NULL,22,'Malaysia',3782,'orci.sem.eget@fringillaeuismod.com',4727,0,'2011-06-01',NULL,3821,'Maxwell Wilder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(11,'1994-08-26',0,0,NULL,NULL,20,'Malaysia',4161,'eu@inceptoshymenaeos.co.uk',14829,0,'2012-04-25',NULL,1519,'Imogene Bates',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(12,'1991-10-24',0,0,NULL,NULL,23,'Malaysia',3126,'eu.euismod.ac@vel.co.uk',14900,0,'2013-02-02',NULL,910,'Ian Weiss',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(13,'1995-03-28',0,0,NULL,NULL,20,'Malaysia',2938,'Aliquam.fringilla@lectusquismassa.com',17958,0,'2012-07-13',NULL,4579,'Kelsie Stanley',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(14,'1992-12-06',0,0,NULL,NULL,23,'Malaysia',1669,'enim.consequat.purus@fermentum.ca',19113,0,'2013-07-03',NULL,3473,'Uta Knight',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(15,'1992-12-30',0,0,NULL,NULL,24,'Malaysia',2132,'libero.Morbi@Maurisvestibulum.ca',29333,0,'2013-01-23',NULL,1313,'Flynn Kennedy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(16,'1989-11-09',0,0,NULL,NULL,23,'Malaysia',4950,'ac.sem.ut@nonfeugiatnec.co.uk',421,0,'2010-12-21',NULL,4153,'Aline Booker',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(17,'1995-09-17',0,0,NULL,NULL,19,'Malaysia',4352,'semper@feugiat.edu',16074,0,'2013-11-06',NULL,3191,'Dora James',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(18,'1991-07-14',0,0,NULL,NULL,25,'Malaysia',849,'mauris.elit.dictum@quama.edu',28958,0,'2011-01-28',NULL,4812,'Cain Mccarty',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(19,'1991-04-15',0,0,NULL,NULL,21,'Malaysia',4545,'nunc.nulla@commodoatlibero.net',15046,0,'2010-02-17',NULL,1082,'Hilda Roth',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(20,'1991-07-31',0,0,NULL,NULL,23,'Malaysia',3326,'Sed.neque.Sed@inconsequatenim.org',5803,0,'2013-02-27',NULL,280,'Cameran Benton',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(21,'1987-10-19',0,0,NULL,NULL,34,'Malaysia',4543,'a@nonmassanon.edu',42402,0,'2010-12-28',NULL,9419,'Gemma Campbell',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(22,'1980-05-15',0,0,NULL,NULL,34,'Malaysia',1323,'at.pretium@loremvehicula.edu',50258,0,'2013-07-13',NULL,7389,'Lara Wade',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(23,'1985-07-02',0,0,NULL,NULL,31,'Malaysia',9698,'Morbi.vehicula.Pellentesque@litoratorquent.edu',40732,0,'2012-06-17',NULL,2830,'Kyla Doyle',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(24,'1974-01-04',0,0,NULL,NULL,36,'Malaysia',4075,'sit@nullamagna.net',58430,0,'2010-07-03',NULL,3409,'Paula Ramirez',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(25,'1986-06-23',0,0,NULL,NULL,37,'Malaysia',2491,'sed.dictum@Aeneaneuismodmauris.edu',32167,0,'2014-09-06',NULL,8883,'Priscilla Nguyen',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(26,'1980-10-10',0,0,NULL,NULL,39,'Malaysia',3326,'accumsan@sem.net',44232,0,'2014-07-18',NULL,3042,'Ivan Hendricks',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(27,'1979-06-03',0,0,NULL,NULL,27,'Malaysia',3767,'nascetur.ridiculus@enimMaurisquis.ca',23760,0,'2011-07-13',NULL,7942,'Joel Hawkins',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(28,'1981-07-23',0,0,NULL,NULL,29,'Malaysia',8163,'elit.fermentum@Nuncsollicitudin.net',54214,0,'2012-06-23',NULL,6123,'Edward Tanner',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(29,'1978-10-22',0,0,NULL,NULL,26,'Malaysia',7896,'elementum@Loremipsum.ca',48005,0,'2011-11-24',NULL,9920,'Chadwick Black',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(30,'1986-07-29',0,0,NULL,NULL,36,'Malaysia',9018,'Ut@arcuNuncmauris.net',50194,0,'2013-10-05',NULL,5741,'Alvin Branch',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(31,'1988-04-17',0,0,NULL,NULL,38,'Malaysia',1896,'Aenean.gravida@enim.ca',21557,0,'2010-01-11',NULL,7880,'Ashely Garrison',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(32,'1987-04-12',0,0,NULL,NULL,32,'Malaysia',2748,'per.inceptos.hymenaeos@ascelerisquesed.ca',58707,0,'2012-07-14',NULL,2550,'Cade Murray',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(33,'1977-01-11',0,0,NULL,NULL,36,'Malaysia',8376,'quis@sem.edu',26448,0,'2010-04-28',NULL,2104,'Kay Blackwell',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(34,'1984-04-25',0,0,NULL,NULL,34,'Malaysia',3448,'gravida.Praesent.eu@anteblandit.edu',29093,0,'2013-06-12',NULL,7835,'Heidi Holden',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(35,'1980-02-07',0,0,NULL,NULL,36,'Malaysia',5336,'vel@venenatisa.net',34250,0,'2010-09-05',NULL,4491,'Daquan Gentry',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(36,'1983-12-17',0,0,NULL,NULL,40,'Malaysia',5828,'a.tortor.Nunc@iaculisquis.co.uk',24362,0,'2011-09-28',NULL,5036,'Zena Cherry',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(37,'1974-05-01',0,0,NULL,NULL,26,'Malaysia',4572,'sapien.gravida.non@Ut.edu',32794,0,'2011-11-30',NULL,4096,'Cole Jefferson',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(38,'1975-10-13',0,0,NULL,NULL,26,'Malaysia',4790,'lorem.sit.amet@molestiearcu.co.uk',33667,0,'2014-09-28',NULL,3028,'Arthur Malone',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(39,'1986-10-11',0,0,NULL,NULL,29,'Malaysia',8605,'Cum@vulputatevelit.net',37308,0,'2013-12-31',NULL,6937,'Ria Medina',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(40,'1987-10-14',0,0,NULL,NULL,38,'Malaysia',8266,'netus@Nuncullamcorpervelit.org',53172,0,'2014-07-02',NULL,6073,'Samuel Romero',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(41,'1975-07-30',0,0,NULL,NULL,34,'Malaysia',3105,'imperdiet.ornare@maurisIntegersem.edu',49787,0,'2014-02-18',NULL,6218,'Adele Griffith',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(42,'1984-11-27',0,0,NULL,NULL,31,'Malaysia',5230,'libero@euturpis.ca',58702,0,'2014-01-22',NULL,8610,'Marshall Dickson',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(43,'1985-06-19',0,0,NULL,NULL,30,'Malaysia',4889,'eros@Morbi.edu',34239,0,'2011-12-04',NULL,6042,'Ryder Hutchinson',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(44,'1982-10-13',0,0,NULL,NULL,27,'Malaysia',9331,'sit.amet@natoque.edu',37359,0,'2010-02-06',NULL,4156,'Ann Christian',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(45,'1978-07-03',0,0,NULL,NULL,39,'Malaysia',3328,'metus.In.lorem@Phasellusnulla.org',48126,0,'2013-04-14',NULL,2998,'Dorian Melendez',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(46,'1986-01-05',0,0,NULL,NULL,34,'Malaysia',7383,'orci.tincidunt.adipiscing@nec.net',37726,0,'2014-03-04',NULL,5003,'Samantha Frye',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(47,'1982-11-22',0,0,NULL,NULL,30,'Malaysia',1629,'urna.Ut@tortor.net',25652,0,'2010-10-07',NULL,1827,'Grant Beck',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(48,'1976-11-17',0,0,NULL,NULL,38,'Malaysia',4437,'fringilla@pede.org',28605,0,'2010-08-07',NULL,1271,'Eliana Riley',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(49,'1978-09-23',0,0,NULL,NULL,29,'Malaysia',1576,'tellus@variusultricesmauris.ca',55626,0,'2011-12-31',NULL,4103,'Keelie Sutton',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(50,'1980-01-28',0,0,NULL,NULL,33,'Malaysia',6184,'eleifend.nec.malesuada@In.net',25704,0,'2013-07-07',NULL,9332,'Lawrence Joseph',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(51,'1964-04-18',0,0,NULL,NULL,43,'Malaysia',7743,'mi.Duis@anteipsum.co.uk',81604,0,'2012-12-01',NULL,23349,'Lara Snow',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(52,'1967-07-22',0,0,NULL,NULL,55,'Singapore',7022,'quam@acarcuNunc.edu',45129,0,'2012-01-24',NULL,12817,'Allegra Shelton',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(53,'1959-05-24',0,0,NULL,NULL,46,'Singapore',4023,'Phasellus@laoreet.org',91998,0,'2011-12-07',NULL,23833,'Dexter Higgins',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(54,'1964-07-14',0,0,NULL,NULL,48,'Singapore',12889,'pulvinar.arcu.et@orciconsectetuer.com',71910,0,'2012-09-26',NULL,6261,'Xerxes Terry',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(55,'1966-10-25',0,0,NULL,NULL,51,'Singapore',9800,'lorem.ut@aarcu.net',70146,0,'2014-09-23',NULL,21318,'Upton Fletcher',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(56,'1968-07-03',0,0,NULL,NULL,43,'Singapore',16447,'Phasellus@nonummy.co.uk',89858,0,'2011-09-30',NULL,23154,'Lisandra Sherman',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(57,'1964-05-25',0,0,NULL,NULL,52,'Singapore',19565,'sem.vitae.aliquam@nonhendrerit.ca',77355,0,'2012-03-03',NULL,2055,'Nora Stuart',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(58,'1968-02-23',0,0,NULL,NULL,48,'Singapore',5749,'aliquet@utaliquam.org',59242,0,'2014-01-29',NULL,14412,'Blair Dodson',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(59,'1960-07-31',0,0,NULL,NULL,48,'Singapore',18058,'Aenean@libero.ca',85968,0,'2010-08-10',NULL,16608,'Wendy Finley',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(60,'1968-08-05',0,0,NULL,NULL,50,'Singapore',6768,'lacus.Ut@Maecenasmi.com',31946,0,'2011-07-04',NULL,10028,'Caldwell Reid',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(61,'1970-12-09',0,0,NULL,NULL,43,'Singapore',16434,'odio.sagittis.semper@elitpharetraut.com',40345,0,'2011-08-26',NULL,2943,'Beau Preston',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(62,'1963-12-03',0,0,NULL,NULL,47,'Singapore',2697,'eu.ligula@vulputateullamcorpermagna.ca',44822,0,'2012-05-13',NULL,4148,'Robin Craft',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(63,'1973-01-24',0,0,NULL,NULL,49,'Singapore',2812,'pretium@purusinmolestie.com',84427,0,'2010-11-19',NULL,10002,'Deirdre Peterson',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(64,'1960-11-22',0,0,NULL,NULL,49,'Singapore',17939,'semper.rutrum.Fusce@sitamet.net',83535,0,'2012-09-28',NULL,9029,'Ramona Jimenez',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(65,'1965-03-15',0,0,NULL,NULL,45,'Singapore',14824,'elit@quisurna.co.uk',89590,0,'2012-09-11',NULL,1735,'Celeste Payne',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(66,'1968-11-28',0,0,NULL,NULL,54,'Singapore',23394,'in@ornareplacerat.org',41035,0,'2012-09-13',NULL,6021,'Guy Sandoval',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(67,'1965-06-18',0,0,NULL,NULL,46,'Singapore',3850,'Curabitur.sed.tortor@libero.ca',65945,0,'2010-02-26',NULL,2186,'Jordan Rivas',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(68,'1970-07-06',0,0,NULL,NULL,44,'Singapore',7066,'Donec.egestas.Duis@Phasellusdapibusquam.edu',84874,0,'2011-01-09',NULL,5952,'Sandra Harrison',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(69,'1967-07-01',0,0,NULL,NULL,44,'Singapore',13256,'non.vestibulum@eleifend.org',99109,0,'2010-09-15',NULL,24137,'Germane Marquez',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(70,'1972-06-19',0,0,NULL,NULL,46,'Singapore',20230,'Vestibulum@eueuismod.edu',70653,0,'2011-09-14',NULL,1899,'Kamal Hull',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(71,'1963-09-30',0,0,NULL,NULL,45,'Singapore',3846,'eu.nibh@vulputateullamcorper.com',65838,0,'2012-01-09',NULL,23001,'Sylvester Hahn',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(72,'1965-04-18',0,0,NULL,NULL,44,'Singapore',7923,'enim.nec.tempus@nequeseddictum.com',55338,0,'2011-01-11',NULL,2421,'Kimberley Wilder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(73,'1964-12-03',0,0,NULL,NULL,44,'Singapore',9895,'massa.lobortis.ultrices@Fuscemi.org',71599,0,'2012-11-04',NULL,16651,'Amber Richards',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(74,'1964-05-20',0,0,NULL,NULL,41,'Singapore',21102,'Etiam.vestibulum@amet.net',80054,0,'2011-12-08',NULL,12243,'Quon French',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(75,'1969-07-16',0,0,NULL,NULL,50,'Singapore',10733,'pellentesque.eget.dictum@ametultricies.co.uk',51333,0,'2011-06-23',NULL,14110,'Rinah Winters',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(76,'1971-06-08',0,0,NULL,NULL,54,'Singapore',24481,'gravida.Praesent@non.com',62141,0,'2011-09-03',NULL,11621,'Jasper Boone',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(77,'1964-04-28',0,0,NULL,NULL,42,'Singapore',6848,'auctor@lectuspede.com',83111,0,'2012-03-01',NULL,21316,'Edan Herrera',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(78,'1962-07-11',0,0,NULL,NULL,53,'Singapore',11592,'Phasellus.elit.pede@pedeCum.ca',31810,0,'2010-03-01',NULL,23776,'Raymond Bailey',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(79,'1961-01-01',0,0,NULL,NULL,53,'Singapore',5447,'tristique.aliquet@Maecenasiaculis.com',75085,0,'2010-08-26',NULL,13181,'Jerome Gay',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(80,'1969-09-24',0,0,NULL,NULL,43,'Singapore',24077,'et.ipsum.cursus@litoratorquent.co.uk',66429,0,'2012-08-26',NULL,12785,'Jeremy Andrews',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(81,'1942-10-22',0,0,NULL,NULL,63,'Singapore',12357,'dui.Cum@eratneque.ca',97181,0,'2013-08-26',NULL,1609,'Aladdin Fletcher',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(82,'1957-09-15',0,0,NULL,NULL,61,'Singapore',9880,'ante.lectus@viverra.com',110469,0,'2012-08-26',NULL,12915,'Matthew Michael',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(83,'1942-05-04',0,0,NULL,NULL,69,'Singapore',9736,'ultricies@Proin.co.uk',90285,0,'2012-08-26',NULL,2246,'Amaya Diaz',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(84,'1956-05-15',0,0,NULL,NULL,64,'Singapore',17331,'dis.parturient@inaliquet.edu',123278,0,'2012-08-26',NULL,4674,'Jorden Farmer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(85,'1945-12-09',0,0,NULL,NULL,72,'Singapore',17330,'enim.nec.tempus@aauctor.edu',89585,0,'2010-01-26',NULL,17222,'Abigail Barnes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(86,'1950-11-25',0,0,NULL,NULL,66,'Singapore',8052,'blandit.at@odiotristique.co.uk',134173,0,'2012-08-26',NULL,1264,'Igor Rose',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(87,'1957-04-24',0,0,NULL,NULL,66,'Singapore',13022,'Nunc.mauris.sapien@nascetur.org',127569,0,'2010-08-26',NULL,6544,'Doris Spencer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(88,'1950-02-03',0,0,NULL,NULL,61,'Singapore',10757,'magna.Suspendisse.tristique@Phasellusdolor.ca',97956,0,'2011-08-26',NULL,14937,'Isaiah Norton',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(89,'1958-06-13',0,0,NULL,NULL,65,'Singapore',15296,'ac.libero.nec@Nullamscelerisque.co.uk',73163,0,'2012-08-26',NULL,12649,'Ezra Rush',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(90,'1941-03-22',0,0,NULL,NULL,72,'Singapore',2163,'malesuada.fringilla.est@tristiquenequevenenatis.org',147035,0,'2010-08-26',NULL,3358,'Rafael Mendoza',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(91,'1941-03-11',0,0,NULL,NULL,73,'Singapore',15009,'purus@etnetuset.ca',45829,0,'2011-08-26',NULL,15214,'Hiram Romero',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(92,'1940-12-24',0,0,NULL,NULL,63,'Singapore',6408,'vehicula.Pellentesque@erategettincidunt.org',145093,0,'2010-08-21',NULL,16226,'Autumn Farmer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(93,'1949-02-17',0,0,NULL,NULL,65,'Singapore',8709,'et.libero@temporloremeget.net',107333,0,'2010-08-16',NULL,16331,'Hop Mcleod',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(94,'1948-06-28',0,0,NULL,NULL,73,'Singapore',3633,'ut@pellentesquemassa.net',42935,0,'2011-03-26',NULL,5331,'Tate Copeland',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(95,'1956-05-25',0,0,NULL,NULL,68,'Singapore\n',8433,'scelerisque@mifringilla.net',146031,0,'2010-11-26',NULL,10794,'Sonia Fleming',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(96,'1947-01-29',0,0,NULL,NULL,63,'Singapore',18792,'nulla@tinciduntcongueturpis.com',121086,0,'2011-08-26',NULL,5004,'Rinah Lindsey',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(97,'1948-07-01',0,0,NULL,NULL,67,'Singapore',10435,'Morbi.sit.amet@Vivamus.co.uk',116604,0,'2010-08-26',NULL,16729,'Shafira Emerson',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(98,'1947-08-07',0,0,NULL,NULL,58,'Singapore',13498,'ut.odio@Proinnisl.ca',147455,0,'2013-08-26',NULL,8744,'Hanna Cooper',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(99,'1941-11-24',0,0,NULL,NULL,69,'Singapore',5310,'nisl@ac.org',88187,0,'2010-03-26',NULL,8477,'Arthur Brennan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(100,'1947-04-10',0,0,NULL,NULL,62,'Singapore',18889,'facilisis@laciniaSed.net',66933,0,'2010-08-22',NULL,8074,'Aubrey Mcconnell',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(101,NULL,0,0,'841054890535932125412909112466441713802',NULL,25,'Singapore',10,'loiliangyang@gmail.com',100000,0,'2012-10-29',NULL,300,'Loi Liang Yang',NULL,'bc4d74ab75e065c99932160b5ab4ce4e','649908576796901861204780292989611276614','[112, -36, -116, 50, -22, 82, 15, 40, -72, -1, 84, -28, -6, 69, -29, -6]',NULL,NULL,NULL,NULL,'515370680316050837272913468076547215400',NULL,15,NULL,303),(8351,NULL,1,0,'411998275444624381958709830676481534777','31 Tanglin Halt Road, Singapore 141031 ',24,'Singapore',0,'superman@hotmail.com',4000,0,'2014-11-09','F2E5A75D9000',0,'Superman',NULL,'27908f04b1b35621cb1c4f277c14aa1b','75015596874935075133109759241076504436','[7, 57, -23, 98, -90, 6, 60, -11, 22, 10, 3, 120, -101, 100, -104, 95]','82881619','Wonderwoman',1,NULL,'1114691765802382662135531436673008353378',NULL,15,NULL,8352),(8353,NULL,1,0,'408421923336368598492115858826725181138',NULL,NULL,NULL,0,'john@hotmail.com',NULL,0,'2014-11-09','',0,NULL,NULL,'9078e63af0dfccdc222749acea81dda9','117701370456581652007813607971397117974','[-87, -11, -18, 56, -112, 77, 8, -17, 104, 70, 14, -11, 100, -51, -56, -77]',NULL,NULL,NULL,NULL,'64713552781349781868155097216446605033',NULL,15,NULL,8354);
/*!40000 ALTER TABLE `memberentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memberentity_lineitementity`
--

DROP TABLE IF EXISTS `memberentity_lineitementity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memberentity_lineitementity` (
  `MemberEntity_ID` bigint(20) NOT NULL,
  `shoppingList_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`MemberEntity_ID`,`shoppingList_ID`),
  KEY `FK_MEMBERENTITY_LINEITEMENTITY_shoppingList_ID` (`shoppingList_ID`),
  CONSTRAINT `FK_MEMBERENTITY_LINEITEMENTITY_MemberEntity_ID` FOREIGN KEY (`MemberEntity_ID`) REFERENCES `memberentity` (`ID`),
  CONSTRAINT `FK_MEMBERENTITY_LINEITEMENTITY_shoppingList_ID` FOREIGN KEY (`shoppingList_ID`) REFERENCES `lineitementity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberentity_lineitementity`
--

LOCK TABLES `memberentity_lineitementity` WRITE;
/*!40000 ALTER TABLE `memberentity_lineitementity` DISABLE KEYS */;
/*!40000 ALTER TABLE `memberentity_lineitementity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menuitementity`
--

DROP TABLE IF EXISTS `menuitementity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menuitementity` (
  `ID` bigint(20) NOT NULL,
  `IMAGEURL` longtext,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_MENUITEMENTITY_ID` FOREIGN KEY (`ID`) REFERENCES `itementity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuitementity`
--

LOCK TABLES `menuitementity` WRITE;
/*!40000 ALTER TABLE `menuitementity` DISABLE KEYS */;
INSERT INTO `menuitementity` VALUES (2302,'/IS3102_Project-war/img/products/K_MI_01.jpg'),(2303,'/IS3102_Project-war/img/products/K_MI_02.jpg'),(4578,'/IS3102_Project-war/img/products/K_MI_03.jpg'),(4579,'/IS3102_Project-war/img/products/K_MI_04.jpg'),(4580,'/IS3102_Project-war/img/products/K_MI_05.jpg'),(4581,'/IS3102_Project-war/img/products/K_MI_06.jpg'),(4582,'/IS3102_Project-war/img/products/K_MI_07.jpg'),(4583,'/IS3102_Project-war/img/products/K_MI_08.jpg'),(4584,'/IS3102_Project-war/img/products/K_MI_09.jpg'),(4585,'/IS3102_Project-war/img/products/K_MI_10.jpg'),(4586,'/IS3102_Project-war/img/products/K_MI_11.jpg'),(4587,'/IS3102_Project-war/img/products/K_MI_12.jpg'),(4588,'/IS3102_Project-war/img/products/K_MI_13.jpg'),(4589,'/IS3102_Project-war/img/products/K_MI_14.jpg'),(4590,'/IS3102_Project-war/img/products/K_MI_15.jpg'),(4591,'/IS3102_Project-war/img/products/K_MI_16.jpg'),(4592,'/IS3102_Project-war/img/products/K_MI_17.jpg'),(4593,'/IS3102_Project-war/img/products/K_MI_18.jpg'),(4594,'/IS3102_Project-war/img/products/K_MI_19.jpg');
/*!40000 ALTER TABLE `menuitementity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messageentity`
--

DROP TABLE IF EXISTS `messageentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messageentity` (
  `ID` bigint(20) NOT NULL,
  `DTYPE` varchar(31) DEFAULT NULL,
  `MESSAGE` longtext,
  `MESSAGEREAD` tinyint(1) DEFAULT '0',
  `SENTDATE` datetime DEFAULT NULL,
  `MESSAGEOWNER_ID` bigint(20) DEFAULT NULL,
  `SENDER_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_MESSAGEENTITY_MESSAGEOWNER_ID` (`MESSAGEOWNER_ID`),
  KEY `FK_MESSAGEENTITY_SENDER_ID` (`SENDER_ID`),
  CONSTRAINT `FK_MESSAGEENTITY_MESSAGEOWNER_ID` FOREIGN KEY (`MESSAGEOWNER_ID`) REFERENCES `staffentity` (`ID`),
  CONSTRAINT `FK_MESSAGEENTITY_SENDER_ID` FOREIGN KEY (`SENDER_ID`) REFERENCES `staffentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messageentity`
--

LOCK TABLES `messageentity` WRITE;
/*!40000 ALTER TABLE `messageentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `messageentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messageentity_staffentity`
--

DROP TABLE IF EXISTS `messageentity_staffentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messageentity_staffentity` (
  `MessageEntity_ID` bigint(20) NOT NULL,
  `receivers_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`MessageEntity_ID`,`receivers_ID`),
  KEY `FK_MESSAGEENTITY_STAFFENTITY_receivers_ID` (`receivers_ID`),
  CONSTRAINT `FK_MESSAGEENTITY_STAFFENTITY_MessageEntity_ID` FOREIGN KEY (`MessageEntity_ID`) REFERENCES `messageentity` (`ID`),
  CONSTRAINT `FK_MESSAGEENTITY_STAFFENTITY_receivers_ID` FOREIGN KEY (`receivers_ID`) REFERENCES `staffentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messageentity_staffentity`
--

LOCK TABLES `messageentity_staffentity` WRITE;
/*!40000 ALTER TABLE `messageentity_staffentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `messageentity_staffentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messageinboxentity`
--

DROP TABLE IF EXISTS `messageinboxentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messageinboxentity` (
  `ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_MESSAGEINBOXENTITY_ID` FOREIGN KEY (`ID`) REFERENCES `messageentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messageinboxentity`
--

LOCK TABLES `messageinboxentity` WRITE;
/*!40000 ALTER TABLE `messageinboxentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `messageinboxentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messageoutboxentity`
--

DROP TABLE IF EXISTS `messageoutboxentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messageoutboxentity` (
  `ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_MESSAGEOUTBOXENTITY_ID` FOREIGN KEY (`ID`) REFERENCES `messageentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messageoutboxentity`
--

LOCK TABLES `messageoutboxentity` WRITE;
/*!40000 ALTER TABLE `messageoutboxentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `messageoutboxentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthscheduleentity`
--

DROP TABLE IF EXISTS `monthscheduleentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthscheduleentity` (
  `ID` bigint(20) NOT NULL,
  `DATE` date DEFAULT NULL,
  `MONTH` int(11) DEFAULT NULL,
  `WORKDAYS_FIFTHWEEK` int(11) DEFAULT NULL,
  `WORKDAYS_FIRSTWEEK` int(11) DEFAULT NULL,
  `WORKDAYS_FORTHWEEK` int(11) DEFAULT NULL,
  `WORKDAYS_SECONDWEEK` int(11) DEFAULT NULL,
  `WORKDAYS_THIRDWEEK` int(11) DEFAULT NULL,
  `YEAR` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthscheduleentity`
--

LOCK TABLES `monthscheduleentity` WRITE;
/*!40000 ALTER TABLE `monthscheduleentity` DISABLE KEYS */;
INSERT INTO `monthscheduleentity` VALUES (30,NULL,1,0,5,5,5,5,2013),(31,NULL,2,0,5,5,5,5,2013),(32,NULL,3,0,5,5,5,5,2013),(33,NULL,4,0,5,5,5,5,2013),(34,NULL,5,0,5,5,5,5,2013),(35,NULL,6,0,5,5,5,5,2013),(36,NULL,7,0,5,5,5,5,2013),(37,NULL,8,0,5,5,5,5,2013),(38,NULL,9,0,5,5,5,5,2013),(39,NULL,10,0,5,5,5,5,2013),(40,NULL,11,0,5,5,5,5,2013),(41,NULL,12,0,5,5,5,5,2013),(42,NULL,1,0,5,5,5,5,2014),(43,NULL,2,0,5,5,5,5,2014),(44,NULL,3,0,5,5,5,5,2014),(45,NULL,4,0,5,5,5,5,2014),(46,NULL,5,0,5,5,5,5,2014),(47,NULL,6,0,5,5,5,5,2014),(48,NULL,7,0,5,5,5,5,2014),(49,NULL,8,0,5,5,5,5,2014),(50,NULL,9,0,5,5,5,5,2014),(51,NULL,10,0,5,5,5,5,2014),(7557,NULL,11,5,0,5,5,5,2014);
/*!40000 ALTER TABLE `monthscheduleentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pickrequestentity`
--

DROP TABLE IF EXISTS `pickrequestentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pickrequestentity` (
  `ID` bigint(20) NOT NULL,
  `COLLECTIONSTATUS` int(11) DEFAULT NULL,
  `DATECALLED` datetime DEFAULT NULL,
  `DATECOMPLETED` datetime DEFAULT NULL,
  `DATESUBMITTED` datetime DEFAULT NULL,
  `PICKSTATUS` int(11) DEFAULT NULL,
  `QUEUENO` varchar(255) DEFAULT NULL,
  `PICKER_ID` bigint(20) DEFAULT NULL,
  `SALESRECORD_ID` bigint(20) DEFAULT NULL,
  `STORE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_PICKREQUESTENTITY_SALESRECORD_ID` (`SALESRECORD_ID`),
  KEY `FK_PICKREQUESTENTITY_PICKER_ID` (`PICKER_ID`),
  KEY `FK_PICKREQUESTENTITY_STORE_ID` (`STORE_ID`),
  CONSTRAINT `FK_PICKREQUESTENTITY_PICKER_ID` FOREIGN KEY (`PICKER_ID`) REFERENCES `staffentity` (`ID`),
  CONSTRAINT `FK_PICKREQUESTENTITY_SALESRECORD_ID` FOREIGN KEY (`SALESRECORD_ID`) REFERENCES `salesrecordentity` (`ID`),
  CONSTRAINT `FK_PICKREQUESTENTITY_STORE_ID` FOREIGN KEY (`STORE_ID`) REFERENCES `storeentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pickrequestentity`
--

LOCK TABLES `pickrequestentity` WRITE;
/*!40000 ALTER TABLE `pickrequestentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `pickrequestentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pickrequestentity_lineitementity`
--

DROP TABLE IF EXISTS `pickrequestentity_lineitementity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pickrequestentity_lineitementity` (
  `PickRequestEntity_ID` bigint(20) NOT NULL,
  `items_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`PickRequestEntity_ID`,`items_ID`),
  KEY `FK_PICKREQUESTENTITY_LINEITEMENTITY_items_ID` (`items_ID`),
  CONSTRAINT `FK_PICKREQUESTENTITY_LINEITEMENTITY_items_ID` FOREIGN KEY (`items_ID`) REFERENCES `lineitementity` (`ID`),
  CONSTRAINT `PICKREQUESTENTITYLINEITEMENTITYPickRequestEntityID` FOREIGN KEY (`PickRequestEntity_ID`) REFERENCES `pickrequestentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pickrequestentity_lineitementity`
--

LOCK TABLES `pickrequestentity_lineitementity` WRITE;
/*!40000 ALTER TABLE `pickrequestentity_lineitementity` DISABLE KEYS */;
/*!40000 ALTER TABLE `pickrequestentity_lineitementity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productgroupentity`
--

DROP TABLE IF EXISTS `productgroupentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productgroupentity` (
  `ID` bigint(20) NOT NULL,
  `ISDELETED` tinyint(1) DEFAULT '0',
  `LOTSIZE` int(11) DEFAULT NULL,
  `PRODUCTGROUPNAME` longtext,
  `TYPE` varchar(255) DEFAULT NULL,
  `WORKHOURS` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productgroupentity`
--

LOCK TABLES `productgroupentity` WRITE;
/*!40000 ALTER TABLE `productgroupentity` DISABLE KEYS */;
INSERT INTO `productgroupentity` VALUES (62,0,10,'PG001','Furniture',10),(63,0,10,'PG002','Furniture',15),(64,0,10,'PG003','Retail Product',20);
/*!40000 ALTER TABLE `productgroupentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productgrouplineitementity`
--

DROP TABLE IF EXISTS `productgrouplineitementity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productgrouplineitementity` (
  `ID` bigint(20) NOT NULL,
  `PERCENT` double DEFAULT NULL,
  `ITEM_ID` bigint(20) DEFAULT NULL,
  `PRODUCTGROUP_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_PRODUCTGROUPLINEITEMENTITY_ITEM_ID` (`ITEM_ID`),
  KEY `FK_PRODUCTGROUPLINEITEMENTITY_PRODUCTGROUP_ID` (`PRODUCTGROUP_ID`),
  CONSTRAINT `FK_PRODUCTGROUPLINEITEMENTITY_ITEM_ID` FOREIGN KEY (`ITEM_ID`) REFERENCES `itementity` (`ID`),
  CONSTRAINT `FK_PRODUCTGROUPLINEITEMENTITY_PRODUCTGROUP_ID` FOREIGN KEY (`PRODUCTGROUP_ID`) REFERENCES `productgroupentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productgrouplineitementity`
--

LOCK TABLES `productgrouplineitementity` WRITE;
/*!40000 ALTER TABLE `productgrouplineitementity` DISABLE KEYS */;
INSERT INTO `productgrouplineitementity` VALUES (332,0.01,69,NULL),(336,0.01,69,62),(337,0.01,71,62),(338,0.01,70,63),(2304,0.01,2301,64);
/*!40000 ALTER TABLE `productgrouplineitementity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotionentity`
--

DROP TABLE IF EXISTS `promotionentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotionentity` (
  `ID` bigint(20) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `DISCOUNTRATE` double DEFAULT NULL,
  `ENDDATE` date DEFAULT NULL,
  `IMAGEURL` varchar(255) DEFAULT NULL,
  `STARTDATE` date DEFAULT NULL,
  `COUNTRY_ID` bigint(20) DEFAULT NULL,
  `ITEM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_PROMOTIONENTITY_ITEM_ID` (`ITEM_ID`),
  KEY `FK_PROMOTIONENTITY_COUNTRY_ID` (`COUNTRY_ID`),
  CONSTRAINT `FK_PROMOTIONENTITY_COUNTRY_ID` FOREIGN KEY (`COUNTRY_ID`) REFERENCES `countryentity` (`ID`),
  CONSTRAINT `FK_PROMOTIONENTITY_ITEM_ID` FOREIGN KEY (`ITEM_ID`) REFERENCES `itementity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotionentity`
--

LOCK TABLES `promotionentity` WRITE;
/*!40000 ALTER TABLE `promotionentity` DISABLE KEYS */;
INSERT INTO `promotionentity` VALUES (1853,'BRIMNES Nov Promotion',10,'2014-11-24','/IS3102_Project-war/img/promotions/F_BM_212014-11-24.jpg','2014-11-05',25,70),(1854,'STRANDMON Nov Promo',30,'2014-12-06','/IS3102_Project-war/img/promotions/F_SC_402014-12-06.jpg','2014-11-05',25,763);
/*!40000 ALTER TABLE `promotionentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseorderentity`
--

DROP TABLE IF EXISTS `purchaseorderentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchaseorderentity` (
  `ID` bigint(20) NOT NULL,
  `CREATEDDATE` datetime DEFAULT NULL,
  `EXPECTEDRECEIVEDDATE` date DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `SUBMITTEDBY` varchar(255) DEFAULT NULL,
  `DESTINATION_ID` bigint(20) DEFAULT NULL,
  `SUPPLIER_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_PURCHASEORDERENTITY_DESTINATION_ID` (`DESTINATION_ID`),
  KEY `FK_PURCHASEORDERENTITY_SUPPLIER_ID` (`SUPPLIER_ID`),
  CONSTRAINT `FK_PURCHASEORDERENTITY_DESTINATION_ID` FOREIGN KEY (`DESTINATION_ID`) REFERENCES `warehouseentity` (`ID`),
  CONSTRAINT `FK_PURCHASEORDERENTITY_SUPPLIER_ID` FOREIGN KEY (`SUPPLIER_ID`) REFERENCES `supplierentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseorderentity`
--

LOCK TABLES `purchaseorderentity` WRITE;
/*!40000 ALTER TABLE `purchaseorderentity` DISABLE KEYS */;
INSERT INTO `purchaseorderentity` VALUES (9852,'2014-11-11 07:50:47','2014-11-10','Completed','Neo Wei',6252,8904);
/*!40000 ALTER TABLE `purchaseorderentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseorderentity_lineitementity`
--

DROP TABLE IF EXISTS `purchaseorderentity_lineitementity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchaseorderentity_lineitementity` (
  `PurchaseOrderEntity_ID` bigint(20) NOT NULL,
  `lineItems_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`PurchaseOrderEntity_ID`,`lineItems_ID`),
  KEY `FK_PURCHASEORDERENTITY_LINEITEMENTITY_lineItems_ID` (`lineItems_ID`),
  CONSTRAINT `FK_PURCHASEORDERENTITY_LINEITEMENTITY_lineItems_ID` FOREIGN KEY (`lineItems_ID`) REFERENCES `lineitementity` (`ID`),
  CONSTRAINT `PRCHSEORDERENTITYLINEITEMENTITYPrchseOrderEntityID` FOREIGN KEY (`PurchaseOrderEntity_ID`) REFERENCES `purchaseorderentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseorderentity_lineitementity`
--

LOCK TABLES `purchaseorderentity_lineitementity` WRITE;
/*!40000 ALTER TABLE `purchaseorderentity_lineitementity` DISABLE KEYS */;
INSERT INTO `purchaseorderentity_lineitementity` VALUES (9852,9854);
/*!40000 ALTER TABLE `purchaseorderentity_lineitementity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrphonesyncentity`
--

DROP TABLE IF EXISTS `qrphonesyncentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrphonesyncentity` (
  `ID` bigint(20) NOT NULL,
  `MEMBEREMAIL` varchar(255) DEFAULT NULL,
  `QRCODE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrphonesyncentity`
--

LOCK TABLES `qrphonesyncentity` WRITE;
/*!40000 ALTER TABLE `qrphonesyncentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrphonesyncentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rawingrediententity`
--

DROP TABLE IF EXISTS `rawingrediententity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rawingrediententity` (
  `ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_RAWINGREDIENTENTITY_ID` FOREIGN KEY (`ID`) REFERENCES `itementity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rawingrediententity`
--

LOCK TABLES `rawingrediententity` WRITE;
/*!40000 ALTER TABLE `rawingrediententity` DISABLE KEYS */;
INSERT INTO `rawingrediententity` VALUES (7959),(7960),(7961),(7962),(7963),(7964),(7965),(7966),(7967),(7968),(7969),(7970),(7971),(7972),(7974),(7975),(7976),(7978),(7979),(7980);
/*!40000 ALTER TABLE `rawingrediententity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rawmaterialentity`
--

DROP TABLE IF EXISTS `rawmaterialentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rawmaterialentity` (
  `ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_RAWMATERIALENTITY_ID` FOREIGN KEY (`ID`) REFERENCES `itementity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rawmaterialentity`
--

LOCK TABLES `rawmaterialentity` WRITE;
/*!40000 ALTER TABLE `rawmaterialentity` DISABLE KEYS */;
INSERT INTO `rawmaterialentity` VALUES (72),(73),(807),(852),(923),(929),(933),(939),(942),(945),(948),(951),(954),(957),(960),(962),(963),(964),(965),(966),(967),(968),(970),(971),(972),(973),(974);
/*!40000 ALTER TABLE `rawmaterialentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipeentity`
--

DROP TABLE IF EXISTS `recipeentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipeentity` (
  `ID` bigint(20) NOT NULL,
  `BROADLOTSIZE` int(11) DEFAULT NULL,
  `DESCRIPTION` longtext,
  `NAME` longtext,
  `MENUITEM_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_RECIPEENTITY_MENUITEM_ID` (`MENUITEM_ID`),
  CONSTRAINT `FK_RECIPEENTITY_MENUITEM_ID` FOREIGN KEY (`MENUITEM_ID`) REFERENCES `itementity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipeentity`
--

LOCK TABLES `recipeentity` WRITE;
/*!40000 ALTER TABLE `recipeentity` DISABLE KEYS */;
INSERT INTO `recipeentity` VALUES (7973,20,'Classic dim sum dish served during yum cha hours','LohMaiKai Recipe',2302),(7977,40,'Delicious fried golden spring rolls with prawn filling','Spring Rolls Recipe',2303),(7981,10,'Yummy golden curry with chicken and fresh potatoes ','Curry Chicken Recipe',4578),(7983,10,'Seafood fried rice sprinkled with fresh chopped green onions','FriedRice Recipe',4579),(7984,15,'Traditional Malay food cooked with coconut milk','NasiLemak Recipe',4580),(7985,10,'Rice cooked with chilli padi very hot and spicy','NasiPadi Recipe',4581),(7986,15,'Indian styled cuisine with chick peas','Gravad Recipe',4582),(7987,10,'Tuna tossed with american cream sauce','Tuna Recipe',4583),(7988,20,'Hot cakes for kids! They love it!','Hotcake Recipe',4584);
/*!40000 ALTER TABLE `recipeentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipeentity_lineitementity`
--

DROP TABLE IF EXISTS `recipeentity_lineitementity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipeentity_lineitementity` (
  `RecipeEntity_ID` bigint(20) NOT NULL,
  `listOfLineItems_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`RecipeEntity_ID`,`listOfLineItems_ID`),
  KEY `FK_RECIPEENTITY_LINEITEMENTITY_listOfLineItems_ID` (`listOfLineItems_ID`),
  CONSTRAINT `FK_RECIPEENTITY_LINEITEMENTITY_RecipeEntity_ID` FOREIGN KEY (`RecipeEntity_ID`) REFERENCES `recipeentity` (`ID`),
  CONSTRAINT `FK_RECIPEENTITY_LINEITEMENTITY_listOfLineItems_ID` FOREIGN KEY (`listOfLineItems_ID`) REFERENCES `lineitementity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipeentity_lineitementity`
--

LOCK TABLES `recipeentity_lineitementity` WRITE;
/*!40000 ALTER TABLE `recipeentity_lineitementity` DISABLE KEYS */;
INSERT INTO `recipeentity_lineitementity` VALUES (7973,7989),(7973,7990),(7977,7991),(7977,7992),(7977,7993),(7981,7994),(7981,7995),(7983,8001),(7983,8051),(7983,8052),(7983,8053),(7984,8054),(7984,8055),(7984,8056),(7985,8057),(7985,8101),(7986,8151),(7986,8152),(7986,8153),(7987,8154),(7987,8155),(7988,8156),(7988,8157);
/*!40000 ALTER TABLE `recipeentity_lineitementity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `redemptionorderentity`
--

DROP TABLE IF EXISTS `redemptionorderentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `redemptionorderentity` (
  `ID` bigint(20) NOT NULL,
  `ISDELETED` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `redemptionorderentity`
--

LOCK TABLES `redemptionorderentity` WRITE;
/*!40000 ALTER TABLE `redemptionorderentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `redemptionorderentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regionalofficeentity`
--

DROP TABLE IF EXISTS `regionalofficeentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regionalofficeentity` (
  `ID` bigint(20) NOT NULL,
  `ADDRESS` longtext,
  `EMAIL` longtext,
  `ISDELETED` tinyint(1) DEFAULT '0',
  `NAME` longtext,
  `TELEPHONE` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regionalofficeentity`
--

LOCK TABLES `regionalofficeentity` WRITE;
/*!40000 ALTER TABLE `regionalofficeentity` DISABLE KEYS */;
INSERT INTO `regionalofficeentity` VALUES (52,'33 Dubai Lane','MERO@if.com',1,'Middle East Regional Office','686351234563'),(53,'33 Jurong Town Hall Road #05-34','apacro@if.com',0,'Asia Pacific Regional Office','61234563'),(652,'Via Fraccalanza,1, 35129 Padova PD','europero@if.com',0,'Europe Regional Office','89353413213'),(653,'17146 NE Sandy Blvd','americaro@if.com',0,'America Regional Office','141995342');
/*!40000 ALTER TABLE `regionalofficeentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurantmenuitementity`
--

DROP TABLE IF EXISTS `restaurantmenuitementity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurantmenuitementity` (
  `ID` bigint(20) NOT NULL,
  `ISDELETED` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurantmenuitementity`
--

LOCK TABLES `restaurantmenuitementity` WRITE;
/*!40000 ALTER TABLE `restaurantmenuitementity` DISABLE KEYS */;
/*!40000 ALTER TABLE `restaurantmenuitementity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retailproductentity`
--

DROP TABLE IF EXISTS `retailproductentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retailproductentity` (
  `ID` bigint(20) NOT NULL,
  `IMAGEURL` longtext,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_RETAILPRODUCTENTITY_ID` FOREIGN KEY (`ID`) REFERENCES `itementity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retailproductentity`
--

LOCK TABLES `retailproductentity` WRITE;
/*!40000 ALTER TABLE `retailproductentity` DISABLE KEYS */;
INSERT INTO `retailproductentity` VALUES (2301,'/IS3102_Project-war/img/products/RP_CH_1.jpg'),(4551,'/IS3102_Project-war/img/products/RP_CH_2.jpg'),(4552,'/IS3102_Project-war/img/products/RP_CH_3.jpg'),(4553,'/IS3102_Project-war/img/products/RP_CH_4.jpg'),(4554,'/IS3102_Project-war/img/products/RP_CH_5.jpg'),(4555,'/IS3102_Project-war/img/products/RP_CF_6.jpg'),(4556,'/IS3102_Project-war/img/products/RP_CF_7.jpg'),(4558,'/IS3102_Project-war/img/products/RP_CF_8.jpg'),(4559,'/IS3102_Project-war/img/products/RP_CF_9.jpg'),(4560,'/IS3102_Project-war/img/products/RP_DR_10.jpg'),(4561,'/IS3102_Project-war/img/products/RP_DR_11.jpg'),(4562,'/IS3102_Project-war/img/products/RP_DR_12.jpg'),(4563,'/IS3102_Project-war/img/products/RP_DR_13.jpg'),(4564,'/IS3102_Project-war/img/products/RP_DR_14.jpg'),(4567,'/IS3102_Project-war/img/products/RP_IN_15.jpg'),(4569,'/IS3102_Project-war/img/products/RP_IN_16.jpg'),(4571,'/IS3102_Project-war/img/products/RP_BR_17.jpg'),(4574,'/IS3102_Project-war/img/products/RP_BR_18.jpg'),(4576,'/IS3102_Project-war/img/products/RP_BR_19.jpg'),(4577,'/IS3102_Project-war/img/products/RP_BR_20.jpg');
/*!40000 ALTER TABLE `retailproductentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roleentity`
--

DROP TABLE IF EXISTS `roleentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roleentity` (
  `ID` bigint(20) NOT NULL,
  `ACCESSLEVEL` longtext,
  `NAME` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roleentity`
--

LOCK TABLES `roleentity` WRITE;
/*!40000 ALTER TABLE `roleentity` DISABLE KEYS */;
INSERT INTO `roleentity` VALUES (1,'System','Administrator'),(2,'Region','Regional Manager'),(3,'Facility','Warehouse Manager'),(4,'Facility','Store Manager'),(5,'Organization','Marketing Director'),(6,'Organization','Product Development Engineer'),(7,'Region','Purchasing Manager'),(8,'Facility','Manufacturing Facility Manager'),(9,'Facility','Cashier'),(10,'Facility','Receptionist'),(11,'Organization','Global Manager'),(12,'Facility','Picker');
/*!40000 ALTER TABLE `roleentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saleandoperationplanentity`
--

DROP TABLE IF EXISTS `saleandoperationplanentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saleandoperationplanentity` (
  `ID` bigint(20) NOT NULL,
  `CURRENTINVENTORYLEVEL` int(11) DEFAULT NULL,
  `MONTH` int(11) DEFAULT NULL,
  `PRODUCTIONPLAN` int(11) DEFAULT NULL,
  `SALEFORCASTDATA` int(11) DEFAULT NULL,
  `TARGETINVENTORYLEVEL` int(11) DEFAULT NULL,
  `YEAR` int(11) DEFAULT NULL,
  `MANUFACTURINGFACILITY_ID` bigint(20) DEFAULT NULL,
  `PRODUCTGROUP_ID` bigint(20) DEFAULT NULL,
  `SCHEDULE_ID` bigint(20) DEFAULT NULL,
  `STORE_ID` bigint(20) DEFAULT NULL,
  `SALEFORCAST_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SALEANDOPERATIONPLANENTITY_SCHEDULE_ID` (`SCHEDULE_ID`),
  KEY `FK_SALEANDOPERATIONPLANENTITY_SALEFORCAST_ID` (`SALEFORCAST_ID`),
  KEY `FK_SALEANDOPERATIONPLANENTITY_PRODUCTGROUP_ID` (`PRODUCTGROUP_ID`),
  KEY `FK_SALEANDOPERATIONPLANENTITY_STORE_ID` (`STORE_ID`),
  KEY `SALEANDOPERATIONPLANENTITYMANUFACTURINGFACILITY_ID` (`MANUFACTURINGFACILITY_ID`),
  CONSTRAINT `FK_SALEANDOPERATIONPLANENTITY_PRODUCTGROUP_ID` FOREIGN KEY (`PRODUCTGROUP_ID`) REFERENCES `productgroupentity` (`ID`),
  CONSTRAINT `FK_SALEANDOPERATIONPLANENTITY_SALEFORCAST_ID` FOREIGN KEY (`SALEFORCAST_ID`) REFERENCES `saleforecastentity` (`ID`),
  CONSTRAINT `FK_SALEANDOPERATIONPLANENTITY_SCHEDULE_ID` FOREIGN KEY (`SCHEDULE_ID`) REFERENCES `monthscheduleentity` (`ID`),
  CONSTRAINT `FK_SALEANDOPERATIONPLANENTITY_STORE_ID` FOREIGN KEY (`STORE_ID`) REFERENCES `storeentity` (`ID`),
  CONSTRAINT `SALEANDOPERATIONPLANENTITYMANUFACTURINGFACILITY_ID` FOREIGN KEY (`MANUFACTURINGFACILITY_ID`) REFERENCES `manufacturingfacilityentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saleandoperationplanentity`
--

LOCK TABLES `saleandoperationplanentity` WRITE;
/*!40000 ALTER TABLE `saleandoperationplanentity` DISABLE KEYS */;
INSERT INTO `saleandoperationplanentity` VALUES (4604,0,6,180,154,26,2014,NULL,62,47,59,NULL),(4606,0,6,130,107,23,2014,NULL,63,47,59,NULL),(4608,0,6,80,55,25,2014,NULL,64,47,59,NULL),(4610,0,7,180,157,23,2014,NULL,62,48,59,NULL),(4612,0,7,130,109,21,2014,NULL,63,48,59,NULL),(4614,0,7,80,60,20,2014,NULL,64,48,59,NULL),(4621,0,8,180,159,21,2014,NULL,62,49,59,NULL),(4624,0,8,140,111,29,2014,NULL,63,49,59,NULL),(4626,0,8,90,67,23,2014,NULL,64,49,59,NULL),(4630,0,9,190,162,28,2014,NULL,62,50,59,NULL),(4633,0,9,150,123,27,2014,NULL,63,50,59,NULL),(4636,0,9,100,73,27,2014,NULL,64,50,59,NULL),(4637,0,10,190,166,24,2014,NULL,62,51,59,NULL),(4640,0,10,150,125,25,2014,NULL,63,51,59,NULL),(4641,0,10,100,78,22,2014,NULL,64,51,59,NULL);
/*!40000 ALTER TABLE `saleandoperationplanentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saleforecastentity`
--

DROP TABLE IF EXISTS `saleforecastentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `saleforecastentity` (
  `ID` bigint(20) NOT NULL,
  `METHOD` varchar(255) DEFAULT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  `MENUITEM_ID` bigint(20) DEFAULT NULL,
  `PRODUCTGROUP_ID` bigint(20) DEFAULT NULL,
  `SCHEDULE_ID` bigint(20) DEFAULT NULL,
  `STORE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SALEFORECASTENTITY_MENUITEM_ID` (`MENUITEM_ID`),
  KEY `FK_SALEFORECASTENTITY_SCHEDULE_ID` (`SCHEDULE_ID`),
  KEY `FK_SALEFORECASTENTITY_STORE_ID` (`STORE_ID`),
  KEY `FK_SALEFORECASTENTITY_PRODUCTGROUP_ID` (`PRODUCTGROUP_ID`),
  CONSTRAINT `FK_SALEFORECASTENTITY_MENUITEM_ID` FOREIGN KEY (`MENUITEM_ID`) REFERENCES `itementity` (`ID`),
  CONSTRAINT `FK_SALEFORECASTENTITY_PRODUCTGROUP_ID` FOREIGN KEY (`PRODUCTGROUP_ID`) REFERENCES `productgroupentity` (`ID`),
  CONSTRAINT `FK_SALEFORECASTENTITY_SCHEDULE_ID` FOREIGN KEY (`SCHEDULE_ID`) REFERENCES `monthscheduleentity` (`ID`),
  CONSTRAINT `FK_SALEFORECASTENTITY_STORE_ID` FOREIGN KEY (`STORE_ID`) REFERENCES `storeentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saleforecastentity`
--

LOCK TABLES `saleforecastentity` WRITE;
/*!40000 ALTER TABLE `saleforecastentity` DISABLE KEYS */;
INSERT INTO `saleforecastentity` VALUES (4507,'R',166,NULL,62,51,59),(4508,'R',125,NULL,63,51,59),(4509,'R',78,NULL,64,51,59),(4603,'R',154,NULL,62,47,59),(4605,'R',107,NULL,63,47,59),(4607,'R',55,NULL,64,47,59),(4609,'R',157,NULL,62,48,59),(4611,'R',109,NULL,63,48,59),(4613,'R',60,NULL,64,48,59),(4620,'R',159,NULL,62,49,59),(4622,'R',111,NULL,63,49,59),(4625,'R',67,NULL,64,49,59),(4627,'R',162,NULL,62,50,59),(4631,'R',123,NULL,63,50,59),(4634,'R',73,NULL,64,50,59),(7580,'R',166,NULL,62,7557,59),(7581,'R',125,NULL,63,7557,59),(7582,'R',78,NULL,64,7557,59),(8401,'R',1246,2302,NULL,7557,59),(8402,'R',1250,2303,NULL,7557,59),(8403,'R',0,4578,NULL,7557,59),(8404,'R',0,4579,NULL,7557,59),(8405,'R',0,4580,NULL,7557,59),(8406,'R',0,4581,NULL,7557,59),(8407,'R',0,4582,NULL,7557,59),(8408,'R',0,4583,NULL,7557,59),(8409,'R',0,4584,NULL,7557,59),(8410,'R',0,4585,NULL,7557,59),(8411,'R',0,4586,NULL,7557,59),(8412,'R',0,4587,NULL,7557,59),(8413,'R',0,4588,NULL,7557,59),(8414,'R',0,4589,NULL,7557,59),(8415,'R',0,4590,NULL,7557,59),(8416,'R',0,4591,NULL,7557,59),(8417,'R',0,4592,NULL,7557,59),(8418,'R',0,4593,NULL,7557,59),(8419,'R',0,4594,NULL,7557,59),(9751,'R',169,NULL,62,7557,60),(9752,'R',127,NULL,63,7557,60),(9753,'R',82,NULL,64,7557,60),(9754,'R',1246,2302,NULL,7557,60),(9755,'R',1250,2303,NULL,7557,60),(9756,'R',0,4578,NULL,7557,60),(9757,'R',0,4579,NULL,7557,60),(9758,'R',0,4580,NULL,7557,60),(9759,'R',0,4581,NULL,7557,60),(9760,'R',0,4582,NULL,7557,60),(9761,'R',0,4583,NULL,7557,60),(9762,'R',0,4584,NULL,7557,60),(9763,'R',0,4585,NULL,7557,60),(9764,'R',0,4586,NULL,7557,60),(9765,'R',0,4587,NULL,7557,60),(9766,'R',0,4588,NULL,7557,60),(9767,'R',0,4589,NULL,7557,60),(9768,'R',0,4590,NULL,7557,60),(9769,'R',0,4591,NULL,7557,60),(9770,'R',0,4592,NULL,7557,60),(9771,'R',0,4593,NULL,7557,60),(9772,'R',0,4594,NULL,7557,60);
/*!40000 ALTER TABLE `saleforecastentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesfigureentity`
--

DROP TABLE IF EXISTS `salesfigureentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salesfigureentity` (
  `ID` bigint(20) NOT NULL,
  `QUANTITY` int(11) DEFAULT NULL,
  `MENUITEM_ID` bigint(20) DEFAULT NULL,
  `PRODUCTGROUP_ID` bigint(20) DEFAULT NULL,
  `SCHEDULE_ID` bigint(20) DEFAULT NULL,
  `STORE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SALESFIGUREENTITY_PRODUCTGROUP_ID` (`PRODUCTGROUP_ID`),
  KEY `FK_SALESFIGUREENTITY_STORE_ID` (`STORE_ID`),
  KEY `FK_SALESFIGUREENTITY_MENUITEM_ID` (`MENUITEM_ID`),
  KEY `FK_SALESFIGUREENTITY_SCHEDULE_ID` (`SCHEDULE_ID`),
  CONSTRAINT `FK_SALESFIGUREENTITY_MENUITEM_ID` FOREIGN KEY (`MENUITEM_ID`) REFERENCES `itementity` (`ID`),
  CONSTRAINT `FK_SALESFIGUREENTITY_PRODUCTGROUP_ID` FOREIGN KEY (`PRODUCTGROUP_ID`) REFERENCES `productgroupentity` (`ID`),
  CONSTRAINT `FK_SALESFIGUREENTITY_SCHEDULE_ID` FOREIGN KEY (`SCHEDULE_ID`) REFERENCES `monthscheduleentity` (`ID`),
  CONSTRAINT `FK_SALESFIGUREENTITY_STORE_ID` FOREIGN KEY (`STORE_ID`) REFERENCES `storeentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesfigureentity`
--

LOCK TABLES `salesfigureentity` WRITE;
/*!40000 ALTER TABLE `salesfigureentity` DISABLE KEYS */;
INSERT INTO `salesfigureentity` VALUES (68,100,NULL,62,30,59),(71,50,NULL,63,30,59),(73,55,NULL,64,30,59),(74,108,NULL,62,31,59),(77,58,NULL,63,31,59),(79,50,NULL,64,31,59),(80,106,NULL,62,32,59),(83,56,NULL,63,32,59),(85,45,NULL,64,32,59),(86,104,NULL,62,33,59),(89,54,NULL,63,33,59),(91,50,NULL,64,33,59),(92,112,NULL,62,34,59),(95,62,NULL,63,34,59),(97,55,NULL,64,34,59),(98,120,NULL,62,35,59),(101,70,NULL,63,35,59),(103,50,NULL,64,35,59),(104,118,NULL,62,36,59),(107,68,NULL,63,36,59),(109,45,NULL,64,36,59),(110,116,NULL,62,37,59),(113,66,NULL,63,37,59),(115,50,NULL,64,37,59),(116,124,NULL,62,38,59),(119,124,NULL,63,38,59),(121,55,NULL,64,38,59),(122,132,NULL,62,39,59),(125,82,NULL,63,39,59),(127,50,NULL,64,39,59),(128,130,NULL,62,40,59),(131,80,NULL,63,40,59),(133,45,NULL,64,40,59),(134,128,NULL,62,41,59),(137,78,NULL,63,41,59),(139,50,NULL,64,41,59),(140,136,NULL,62,42,59),(143,86,NULL,63,42,59),(145,55,NULL,64,42,59),(146,144,NULL,62,43,59),(149,94,NULL,63,43,59),(151,50,NULL,64,43,59),(152,142,NULL,62,44,59),(155,92,NULL,63,44,59),(157,45,NULL,64,44,59),(158,140,NULL,62,45,59),(161,90,NULL,63,45,59),(163,50,NULL,64,45,59),(164,148,NULL,62,46,59),(167,98,NULL,63,46,59),(169,55,NULL,64,46,59),(170,156,NULL,62,47,59),(173,106,NULL,63,47,59),(175,70,NULL,64,47,59),(176,154,NULL,62,48,59),(179,104,NULL,63,48,59),(181,80,NULL,64,48,59),(182,152,NULL,62,49,59),(185,102,NULL,63,49,59),(187,88,NULL,64,49,59),(188,160,NULL,62,50,59),(191,160,NULL,63,50,59),(193,95,NULL,64,50,59),(194,168,NULL,62,51,59),(197,118,NULL,63,51,59),(199,90,NULL,64,51,59),(200,100,NULL,62,30,61),(203,50,NULL,63,30,61),(205,55,NULL,64,30,61),(206,108,NULL,62,31,61),(209,58,NULL,63,31,61),(211,50,NULL,64,31,61),(212,106,NULL,62,32,61),(215,56,NULL,63,32,61),(217,45,NULL,64,32,61),(218,104,NULL,62,33,61),(221,54,NULL,63,33,61),(223,50,NULL,64,33,61),(224,112,NULL,62,34,61),(227,62,NULL,63,34,61),(229,55,NULL,64,34,61),(230,120,NULL,62,35,61),(233,70,NULL,63,35,61),(235,50,NULL,64,35,61),(236,118,NULL,62,36,61),(239,68,NULL,63,36,61),(241,45,NULL,64,36,61),(242,116,NULL,62,37,61),(245,66,NULL,63,37,61),(247,50,NULL,64,37,61),(248,124,NULL,62,38,61),(251,124,NULL,63,38,61),(253,55,NULL,64,38,61),(254,132,NULL,62,39,61),(257,82,NULL,63,39,61),(259,50,NULL,64,39,61),(260,130,NULL,62,40,61),(263,80,NULL,63,40,61),(265,45,NULL,64,40,61),(266,128,NULL,62,41,61),(269,78,NULL,63,41,61),(271,50,NULL,64,41,61),(272,136,NULL,62,42,61),(275,86,NULL,63,42,61),(277,55,NULL,64,42,61),(278,144,NULL,62,43,61),(281,94,NULL,63,43,61),(283,50,NULL,64,43,61),(284,142,NULL,62,44,61),(287,92,NULL,63,44,61),(289,45,NULL,64,44,61),(290,140,NULL,62,45,61),(293,90,NULL,63,45,61),(295,50,NULL,64,45,61),(296,148,NULL,62,46,61),(299,98,NULL,63,46,61),(301,55,NULL,64,46,61),(302,156,NULL,62,47,61),(305,106,NULL,63,47,61),(307,70,NULL,64,47,61),(308,154,NULL,62,48,61),(311,104,NULL,63,48,61),(313,80,NULL,64,48,61),(314,152,NULL,62,49,61),(317,102,NULL,63,49,61),(319,88,NULL,64,49,61),(320,160,NULL,62,50,61),(323,160,NULL,63,50,61),(325,95,NULL,64,50,61),(326,168,NULL,62,51,61),(329,118,NULL,63,51,61),(331,90,NULL,64,51,61),(2351,100,NULL,62,30,59),(2354,50,NULL,63,30,59),(2356,55,NULL,64,30,59),(2357,1171,2302,NULL,30,59),(2358,1206,2303,NULL,30,59),(2359,108,NULL,62,31,59),(2362,58,NULL,63,31,59),(2364,50,NULL,64,31,59),(2365,1276,2302,NULL,31,59),(2366,1311,2303,NULL,31,59),(2367,106,NULL,62,32,59),(2370,56,NULL,63,32,59),(2372,45,NULL,64,32,59),(2373,1241,2302,NULL,32,59),(2374,1171,2303,NULL,32,59),(2375,104,NULL,62,33,59),(2378,54,NULL,63,33,59),(2380,50,NULL,64,33,59),(2381,1206,2302,NULL,33,59),(2382,1276,2303,NULL,33,59),(2383,112,NULL,62,34,59),(2386,62,NULL,63,34,59),(2388,55,NULL,64,34,59),(2389,1311,2302,NULL,34,59),(2390,1241,2303,NULL,34,59),(2391,120,NULL,62,35,59),(2394,70,NULL,63,35,59),(2396,50,NULL,64,35,59),(2397,1171,2302,NULL,35,59),(2398,1206,2303,NULL,35,59),(2399,118,NULL,62,36,59),(2402,68,NULL,63,36,59),(2404,45,NULL,64,36,59),(2405,1276,2302,NULL,36,59),(2406,1311,2303,NULL,36,59),(2407,116,NULL,62,37,59),(2410,66,NULL,63,37,59),(2412,50,NULL,64,37,59),(2413,1241,2302,NULL,37,59),(2414,1171,2303,NULL,37,59),(2415,124,NULL,62,38,59),(2418,124,NULL,63,38,59),(2420,55,NULL,64,38,59),(2421,1206,2302,NULL,38,59),(2422,1276,2303,NULL,38,59),(2423,132,NULL,62,39,59),(2426,82,NULL,63,39,59),(2428,50,NULL,64,39,59),(2429,1311,2302,NULL,39,59),(2430,1241,2303,NULL,39,59),(2431,130,NULL,62,40,59),(2434,80,NULL,63,40,59),(2436,45,NULL,64,40,59),(2437,1171,2302,NULL,40,59),(2438,1206,2303,NULL,40,59),(2439,128,NULL,62,41,59),(2442,78,NULL,63,41,59),(2444,50,NULL,64,41,59),(2445,1276,2302,NULL,41,59),(2446,1311,2303,NULL,41,59),(2447,136,NULL,62,42,59),(2450,86,NULL,63,42,59),(2452,55,NULL,64,42,59),(2453,1241,2302,NULL,42,59),(2454,1171,2303,NULL,42,59),(2455,144,NULL,62,43,59),(2458,94,NULL,63,43,59),(2460,50,NULL,64,43,59),(2461,1206,2302,NULL,43,59),(2462,1276,2303,NULL,43,59),(2463,142,NULL,62,44,59),(2466,92,NULL,63,44,59),(2468,45,NULL,64,44,59),(2469,1311,2302,NULL,44,59),(2470,1241,2303,NULL,44,59),(2471,140,NULL,62,45,59),(2474,90,NULL,63,45,59),(2476,50,NULL,64,45,59),(2477,1171,2302,NULL,45,59),(2478,1206,2303,NULL,45,59),(2479,148,NULL,62,46,59),(2482,98,NULL,63,46,59),(2484,55,NULL,64,46,59),(2485,1276,2302,NULL,46,59),(2486,1311,2303,NULL,46,59),(2487,156,NULL,62,47,59),(2490,106,NULL,63,47,59),(2492,70,NULL,64,47,59),(2493,1241,2302,NULL,47,59),(2494,1171,2303,NULL,47,59),(2495,154,NULL,62,48,59),(2498,104,NULL,63,48,59),(2500,80,NULL,64,48,59),(2501,1206,2302,NULL,48,59),(2502,1276,2303,NULL,48,59),(2503,152,NULL,62,49,59),(2506,102,NULL,63,49,59),(2508,88,NULL,64,49,59),(2509,1311,2302,NULL,49,59),(2510,1241,2303,NULL,49,59),(2511,160,NULL,62,50,59),(2514,160,NULL,63,50,59),(2516,95,NULL,64,50,59),(2517,1171,2302,NULL,50,59),(2518,1206,2303,NULL,50,59),(2519,168,NULL,62,51,59),(2522,118,NULL,63,51,59),(2524,90,NULL,64,51,59),(2525,1276,2302,NULL,51,59),(2526,1311,2303,NULL,51,59),(2527,100,NULL,62,30,60),(2530,50,NULL,63,30,60),(2532,55,NULL,64,30,60),(2533,1171,2302,NULL,30,60),(2534,1206,2303,NULL,30,60),(2535,108,NULL,62,31,60),(2538,58,NULL,63,31,60),(2540,50,NULL,64,31,60),(2541,1276,2302,NULL,31,60),(2542,1311,2303,NULL,31,60),(2543,106,NULL,62,32,60),(2546,56,NULL,63,32,60),(2548,45,NULL,64,32,60),(2549,1241,2302,NULL,32,60),(2550,1171,2303,NULL,32,60),(2551,104,NULL,62,33,60),(2554,54,NULL,63,33,60),(2556,50,NULL,64,33,60),(2557,1206,2302,NULL,33,60),(2558,1276,2303,NULL,33,60),(2559,112,NULL,62,34,60),(2562,62,NULL,63,34,60),(2564,55,NULL,64,34,60),(2565,1311,2302,NULL,34,60),(2566,1241,2303,NULL,34,60),(2567,120,NULL,62,35,60),(2570,70,NULL,63,35,60),(2572,50,NULL,64,35,60),(2573,1171,2302,NULL,35,60),(2574,1206,2303,NULL,35,60),(2575,118,NULL,62,36,60),(2578,68,NULL,63,36,60),(2580,45,NULL,64,36,60),(2581,1276,2302,NULL,36,60),(2582,1311,2303,NULL,36,60),(2583,116,NULL,62,37,60),(2586,66,NULL,63,37,60),(2588,50,NULL,64,37,60),(2589,1241,2302,NULL,37,60),(2590,1171,2303,NULL,37,60),(2591,124,NULL,62,38,60),(2594,124,NULL,63,38,60),(2596,55,NULL,64,38,60),(2597,1206,2302,NULL,38,60),(2598,1276,2303,NULL,38,60),(2599,132,NULL,62,39,60),(2602,82,NULL,63,39,60),(2604,50,NULL,64,39,60),(2605,1311,2302,NULL,39,60),(2606,1241,2303,NULL,39,60),(2607,130,NULL,62,40,60),(2610,80,NULL,63,40,60),(2612,45,NULL,64,40,60),(2613,1171,2302,NULL,40,60),(2614,1206,2303,NULL,40,60),(2615,128,NULL,62,41,60),(2618,78,NULL,63,41,60),(2620,50,NULL,64,41,60),(2621,1276,2302,NULL,41,60),(2622,1311,2303,NULL,41,60),(2623,136,NULL,62,42,60),(2626,86,NULL,63,42,60),(2628,55,NULL,64,42,60),(2629,1241,2302,NULL,42,60),(2630,1171,2303,NULL,42,60),(2631,144,NULL,62,43,60),(2634,94,NULL,63,43,60),(2636,50,NULL,64,43,60),(2637,1206,2302,NULL,43,60),(2638,1276,2303,NULL,43,60),(2639,142,NULL,62,44,60),(2642,92,NULL,63,44,60),(2644,45,NULL,64,44,60),(2645,1311,2302,NULL,44,60),(2646,1241,2303,NULL,44,60),(2647,140,NULL,62,45,60),(2650,90,NULL,63,45,60),(2652,50,NULL,64,45,60),(2653,1171,2302,NULL,45,60),(2654,1206,2303,NULL,45,60),(2655,148,NULL,62,46,60),(2658,98,NULL,63,46,60),(2660,55,NULL,64,46,60),(2661,1276,2302,NULL,46,60),(2662,1311,2303,NULL,46,60),(2663,156,NULL,62,47,60),(2666,106,NULL,63,47,60),(2668,70,NULL,64,47,60),(2669,1241,2302,NULL,47,60),(2670,1171,2303,NULL,47,60),(2671,154,NULL,62,48,60),(2674,104,NULL,63,48,60),(2676,80,NULL,64,48,60),(2677,1206,2302,NULL,48,60),(2678,1276,2303,NULL,48,60),(2679,152,NULL,62,49,60),(2682,102,NULL,63,49,60),(2684,88,NULL,64,49,60),(2685,1311,2302,NULL,49,60),(2686,1241,2303,NULL,49,60),(2687,160,NULL,62,50,60),(2690,160,NULL,63,50,60),(2692,95,NULL,64,50,60),(2693,1171,2302,NULL,50,60),(2694,1206,2303,NULL,50,60),(2695,168,NULL,62,51,60),(2698,118,NULL,63,51,60),(2700,90,NULL,64,51,60),(2701,1276,2302,NULL,51,60),(2702,1311,2303,NULL,51,60),(2703,100,NULL,62,30,61),(2706,50,NULL,63,30,61),(2708,55,NULL,64,30,61),(2709,1171,2302,NULL,30,61),(2710,1206,2303,NULL,30,61),(2711,108,NULL,62,31,61),(2714,58,NULL,63,31,61),(2716,50,NULL,64,31,61),(2717,1276,2302,NULL,31,61),(2718,1311,2303,NULL,31,61),(2719,106,NULL,62,32,61),(2722,56,NULL,63,32,61),(2724,45,NULL,64,32,61),(2725,1241,2302,NULL,32,61),(2726,1171,2303,NULL,32,61),(2727,104,NULL,62,33,61),(2730,54,NULL,63,33,61),(2732,50,NULL,64,33,61),(2733,1206,2302,NULL,33,61),(2734,1276,2303,NULL,33,61),(2735,112,NULL,62,34,61),(2738,62,NULL,63,34,61),(2740,55,NULL,64,34,61),(2741,1311,2302,NULL,34,61),(2742,1241,2303,NULL,34,61),(2743,120,NULL,62,35,61),(2746,70,NULL,63,35,61),(2748,50,NULL,64,35,61),(2749,1171,2302,NULL,35,61),(2750,1206,2303,NULL,35,61),(2751,118,NULL,62,36,61),(2754,68,NULL,63,36,61),(2756,45,NULL,64,36,61),(2757,1276,2302,NULL,36,61),(2758,1311,2303,NULL,36,61),(2759,116,NULL,62,37,61),(2762,66,NULL,63,37,61),(2764,50,NULL,64,37,61),(2765,1241,2302,NULL,37,61),(2766,1171,2303,NULL,37,61),(2767,124,NULL,62,38,61),(2770,124,NULL,63,38,61),(2772,55,NULL,64,38,61),(2773,1206,2302,NULL,38,61),(2774,1276,2303,NULL,38,61),(2775,132,NULL,62,39,61),(2778,82,NULL,63,39,61),(2780,50,NULL,64,39,61),(2781,1311,2302,NULL,39,61),(2782,1241,2303,NULL,39,61),(2783,130,NULL,62,40,61),(2786,80,NULL,63,40,61),(2788,45,NULL,64,40,61),(2789,1171,2302,NULL,40,61),(2790,1206,2303,NULL,40,61),(2791,128,NULL,62,41,61),(2794,78,NULL,63,41,61),(2796,50,NULL,64,41,61),(2797,1276,2302,NULL,41,61),(2798,1311,2303,NULL,41,61),(2799,136,NULL,62,42,61),(2802,86,NULL,63,42,61),(2804,55,NULL,64,42,61),(2805,1241,2302,NULL,42,61),(2806,1171,2303,NULL,42,61),(2807,144,NULL,62,43,61),(2810,94,NULL,63,43,61),(2812,50,NULL,64,43,61),(2813,1206,2302,NULL,43,61),(2814,1276,2303,NULL,43,61),(2815,142,NULL,62,44,61),(2818,92,NULL,63,44,61),(2820,45,NULL,64,44,61),(2821,1311,2302,NULL,44,61),(2822,1241,2303,NULL,44,61),(2823,140,NULL,62,45,61),(2826,90,NULL,63,45,61),(2828,50,NULL,64,45,61),(2829,1171,2302,NULL,45,61),(2830,1206,2303,NULL,45,61),(2831,148,NULL,62,46,61),(2834,98,NULL,63,46,61),(2836,55,NULL,64,46,61),(2837,1276,2302,NULL,46,61),(2838,1311,2303,NULL,46,61),(2839,156,NULL,62,47,61),(2842,106,NULL,63,47,61),(2844,70,NULL,64,47,61),(2845,1241,2302,NULL,47,61),(2846,1171,2303,NULL,47,61),(2847,154,NULL,62,48,61),(2850,104,NULL,63,48,61),(2852,80,NULL,64,48,61),(2853,1206,2302,NULL,48,61),(2854,1276,2303,NULL,48,61),(2855,152,NULL,62,49,61),(2858,102,NULL,63,49,61),(2860,88,NULL,64,49,61),(2861,1311,2302,NULL,49,61),(2862,1241,2303,NULL,49,61),(2863,160,NULL,62,50,61),(2866,160,NULL,63,50,61),(2868,95,NULL,64,50,61),(2869,1171,2302,NULL,50,61),(2870,1206,2303,NULL,50,61),(2871,168,NULL,62,51,61),(2874,118,NULL,63,51,61),(2876,90,NULL,64,51,61),(2877,1276,2302,NULL,51,61),(2878,1311,2303,NULL,51,61),(2879,100,NULL,62,30,551),(2882,50,NULL,63,30,551),(2884,55,NULL,64,30,551),(2885,1171,2302,NULL,30,551),(2886,1206,2303,NULL,30,551),(2887,108,NULL,62,31,551),(2890,58,NULL,63,31,551),(2892,50,NULL,64,31,551),(2893,1276,2302,NULL,31,551),(2894,1311,2303,NULL,31,551),(2895,106,NULL,62,32,551),(2898,56,NULL,63,32,551),(2900,45,NULL,64,32,551),(2901,1241,2302,NULL,32,551),(2902,1171,2303,NULL,32,551),(2903,104,NULL,62,33,551),(2906,54,NULL,63,33,551),(2908,50,NULL,64,33,551),(2909,1206,2302,NULL,33,551),(2910,1276,2303,NULL,33,551),(2911,112,NULL,62,34,551),(2914,62,NULL,63,34,551),(2916,55,NULL,64,34,551),(2917,1311,2302,NULL,34,551),(2918,1241,2303,NULL,34,551),(2919,120,NULL,62,35,551),(2922,70,NULL,63,35,551),(2924,50,NULL,64,35,551),(2925,1171,2302,NULL,35,551),(2926,1206,2303,NULL,35,551),(2927,118,NULL,62,36,551),(2930,68,NULL,63,36,551),(2932,45,NULL,64,36,551),(2933,1276,2302,NULL,36,551),(2934,1311,2303,NULL,36,551),(2935,116,NULL,62,37,551),(2938,66,NULL,63,37,551),(2940,50,NULL,64,37,551),(2941,1241,2302,NULL,37,551),(2942,1171,2303,NULL,37,551),(2943,124,NULL,62,38,551),(2946,124,NULL,63,38,551),(2948,55,NULL,64,38,551),(2949,1206,2302,NULL,38,551),(2950,1276,2303,NULL,38,551),(2951,132,NULL,62,39,551),(2954,82,NULL,63,39,551),(2956,50,NULL,64,39,551),(2957,1311,2302,NULL,39,551),(2958,1241,2303,NULL,39,551),(2959,130,NULL,62,40,551),(2962,80,NULL,63,40,551),(2964,45,NULL,64,40,551),(2965,1171,2302,NULL,40,551),(2966,1206,2303,NULL,40,551),(2967,128,NULL,62,41,551),(2970,78,NULL,63,41,551),(2972,50,NULL,64,41,551),(2973,1276,2302,NULL,41,551),(2974,1311,2303,NULL,41,551),(2975,136,NULL,62,42,551),(2978,86,NULL,63,42,551),(2980,55,NULL,64,42,551),(2981,1241,2302,NULL,42,551),(2982,1171,2303,NULL,42,551),(2983,144,NULL,62,43,551),(2986,94,NULL,63,43,551),(2988,50,NULL,64,43,551),(2989,1206,2302,NULL,43,551),(2990,1276,2303,NULL,43,551),(2991,142,NULL,62,44,551),(2994,92,NULL,63,44,551),(2996,45,NULL,64,44,551),(2997,1311,2302,NULL,44,551),(2998,1241,2303,NULL,44,551),(2999,140,NULL,62,45,551),(3002,90,NULL,63,45,551),(3004,50,NULL,64,45,551),(3005,1171,2302,NULL,45,551),(3006,1206,2303,NULL,45,551),(3007,148,NULL,62,46,551),(3010,98,NULL,63,46,551),(3012,55,NULL,64,46,551),(3013,1276,2302,NULL,46,551),(3014,1311,2303,NULL,46,551),(3015,156,NULL,62,47,551),(3018,106,NULL,63,47,551),(3020,70,NULL,64,47,551),(3021,1241,2302,NULL,47,551),(3022,1171,2303,NULL,47,551),(3023,154,NULL,62,48,551),(3026,104,NULL,63,48,551),(3028,80,NULL,64,48,551),(3029,1206,2302,NULL,48,551),(3030,1276,2303,NULL,48,551),(3031,152,NULL,62,49,551),(3034,102,NULL,63,49,551),(3036,88,NULL,64,49,551),(3037,1311,2302,NULL,49,551),(3038,1241,2303,NULL,49,551),(3039,160,NULL,62,50,551),(3042,160,NULL,63,50,551),(3044,95,NULL,64,50,551),(3045,1171,2302,NULL,50,551),(3046,1206,2303,NULL,50,551),(3047,168,NULL,62,51,551),(3050,118,NULL,63,51,551),(3052,90,NULL,64,51,551),(3053,1276,2302,NULL,51,551),(3054,1311,2303,NULL,51,551),(3055,100,NULL,62,30,601),(3058,50,NULL,63,30,601),(3060,55,NULL,64,30,601),(3061,1171,2302,NULL,30,601),(3062,1206,2303,NULL,30,601),(3063,108,NULL,62,31,601),(3066,58,NULL,63,31,601),(3068,50,NULL,64,31,601),(3069,1276,2302,NULL,31,601),(3070,1311,2303,NULL,31,601),(3071,106,NULL,62,32,601),(3074,56,NULL,63,32,601),(3076,45,NULL,64,32,601),(3077,1241,2302,NULL,32,601),(3078,1171,2303,NULL,32,601),(3079,104,NULL,62,33,601),(3082,54,NULL,63,33,601),(3084,50,NULL,64,33,601),(3085,1206,2302,NULL,33,601),(3086,1276,2303,NULL,33,601),(3087,112,NULL,62,34,601),(3090,62,NULL,63,34,601),(3092,55,NULL,64,34,601),(3093,1311,2302,NULL,34,601),(3094,1241,2303,NULL,34,601),(3095,120,NULL,62,35,601),(3098,70,NULL,63,35,601),(3100,50,NULL,64,35,601),(3101,1171,2302,NULL,35,601),(3102,1206,2303,NULL,35,601),(3103,118,NULL,62,36,601),(3106,68,NULL,63,36,601),(3108,45,NULL,64,36,601),(3109,1276,2302,NULL,36,601),(3110,1311,2303,NULL,36,601),(3111,116,NULL,62,37,601),(3114,66,NULL,63,37,601),(3116,50,NULL,64,37,601),(3117,1241,2302,NULL,37,601),(3118,1171,2303,NULL,37,601),(3119,124,NULL,62,38,601),(3122,124,NULL,63,38,601),(3124,55,NULL,64,38,601),(3125,1206,2302,NULL,38,601),(3126,1276,2303,NULL,38,601),(3127,132,NULL,62,39,601),(3130,82,NULL,63,39,601),(3132,50,NULL,64,39,601),(3133,1311,2302,NULL,39,601),(3134,1241,2303,NULL,39,601),(3135,130,NULL,62,40,601),(3138,80,NULL,63,40,601),(3140,45,NULL,64,40,601),(3141,1171,2302,NULL,40,601),(3142,1206,2303,NULL,40,601),(3143,128,NULL,62,41,601),(3146,78,NULL,63,41,601),(3148,50,NULL,64,41,601),(3149,1276,2302,NULL,41,601),(3150,1311,2303,NULL,41,601),(3151,136,NULL,62,42,601),(3154,86,NULL,63,42,601),(3156,55,NULL,64,42,601),(3157,1241,2302,NULL,42,601),(3158,1171,2303,NULL,42,601),(3159,144,NULL,62,43,601),(3162,94,NULL,63,43,601),(3164,50,NULL,64,43,601),(3165,1206,2302,NULL,43,601),(3166,1276,2303,NULL,43,601),(3167,142,NULL,62,44,601),(3170,92,NULL,63,44,601),(3172,45,NULL,64,44,601),(3173,1311,2302,NULL,44,601),(3174,1241,2303,NULL,44,601),(3175,140,NULL,62,45,601),(3178,90,NULL,63,45,601),(3180,50,NULL,64,45,601),(3181,1171,2302,NULL,45,601),(3182,1206,2303,NULL,45,601),(3183,148,NULL,62,46,601),(3186,98,NULL,63,46,601),(3188,55,NULL,64,46,601),(3189,1276,2302,NULL,46,601),(3190,1311,2303,NULL,46,601),(3191,156,NULL,62,47,601),(3194,106,NULL,63,47,601),(3196,70,NULL,64,47,601),(3197,1241,2302,NULL,47,601),(3198,1171,2303,NULL,47,601),(3199,154,NULL,62,48,601),(3202,104,NULL,63,48,601),(3204,80,NULL,64,48,601),(3205,1206,2302,NULL,48,601),(3206,1276,2303,NULL,48,601),(3207,152,NULL,62,49,601),(3210,102,NULL,63,49,601),(3212,88,NULL,64,49,601),(3213,1311,2302,NULL,49,601),(3214,1241,2303,NULL,49,601),(3215,160,NULL,62,50,601),(3218,160,NULL,63,50,601),(3220,95,NULL,64,50,601),(3221,1171,2302,NULL,50,601),(3222,1206,2303,NULL,50,601),(3223,168,NULL,62,51,601),(3226,118,NULL,63,51,601),(3228,90,NULL,64,51,601),(3229,1276,2302,NULL,51,601),(3230,1311,2303,NULL,51,601),(3231,100,NULL,62,30,1801),(3234,50,NULL,63,30,1801),(3236,55,NULL,64,30,1801),(3237,1171,2302,NULL,30,1801),(3238,1206,2303,NULL,30,1801),(3239,108,NULL,62,31,1801),(3242,58,NULL,63,31,1801),(3244,50,NULL,64,31,1801),(3245,1276,2302,NULL,31,1801),(3246,1311,2303,NULL,31,1801),(3247,106,NULL,62,32,1801),(3250,56,NULL,63,32,1801),(3252,45,NULL,64,32,1801),(3253,1241,2302,NULL,32,1801),(3254,1171,2303,NULL,32,1801),(3255,104,NULL,62,33,1801),(3258,54,NULL,63,33,1801),(3260,50,NULL,64,33,1801),(3261,1206,2302,NULL,33,1801),(3262,1276,2303,NULL,33,1801),(3263,112,NULL,62,34,1801),(3266,62,NULL,63,34,1801),(3268,55,NULL,64,34,1801),(3269,1311,2302,NULL,34,1801),(3270,1241,2303,NULL,34,1801),(3271,120,NULL,62,35,1801),(3274,70,NULL,63,35,1801),(3276,50,NULL,64,35,1801),(3277,1171,2302,NULL,35,1801),(3278,1206,2303,NULL,35,1801),(3279,118,NULL,62,36,1801),(3282,68,NULL,63,36,1801),(3284,45,NULL,64,36,1801),(3285,1276,2302,NULL,36,1801),(3286,1311,2303,NULL,36,1801),(3287,116,NULL,62,37,1801),(3290,66,NULL,63,37,1801),(3292,50,NULL,64,37,1801),(3293,1241,2302,NULL,37,1801),(3294,1171,2303,NULL,37,1801),(3295,124,NULL,62,38,1801),(3298,124,NULL,63,38,1801),(3300,55,NULL,64,38,1801),(3301,1206,2302,NULL,38,1801),(3302,1276,2303,NULL,38,1801),(3303,132,NULL,62,39,1801),(3306,82,NULL,63,39,1801),(3308,50,NULL,64,39,1801),(3309,1311,2302,NULL,39,1801),(3310,1241,2303,NULL,39,1801),(3311,130,NULL,62,40,1801),(3314,80,NULL,63,40,1801),(3316,45,NULL,64,40,1801),(3317,1171,2302,NULL,40,1801),(3318,1206,2303,NULL,40,1801),(3319,128,NULL,62,41,1801),(3322,78,NULL,63,41,1801),(3324,50,NULL,64,41,1801),(3325,1276,2302,NULL,41,1801),(3326,1311,2303,NULL,41,1801),(3327,136,NULL,62,42,1801),(3330,86,NULL,63,42,1801),(3332,55,NULL,64,42,1801),(3333,1241,2302,NULL,42,1801),(3334,1171,2303,NULL,42,1801),(3335,144,NULL,62,43,1801),(3338,94,NULL,63,43,1801),(3340,50,NULL,64,43,1801),(3341,1206,2302,NULL,43,1801),(3342,1276,2303,NULL,43,1801),(3343,142,NULL,62,44,1801),(3346,92,NULL,63,44,1801),(3348,45,NULL,64,44,1801),(3349,1311,2302,NULL,44,1801),(3350,1241,2303,NULL,44,1801),(3351,140,NULL,62,45,1801),(3354,90,NULL,63,45,1801),(3356,50,NULL,64,45,1801),(3357,1171,2302,NULL,45,1801),(3358,1206,2303,NULL,45,1801),(3359,148,NULL,62,46,1801),(3362,98,NULL,63,46,1801),(3364,55,NULL,64,46,1801),(3365,1276,2302,NULL,46,1801),(3366,1311,2303,NULL,46,1801),(3367,156,NULL,62,47,1801),(3370,106,NULL,63,47,1801),(3372,70,NULL,64,47,1801),(3373,1241,2302,NULL,47,1801),(3374,1171,2303,NULL,47,1801),(3375,154,NULL,62,48,1801),(3378,104,NULL,63,48,1801),(3380,80,NULL,64,48,1801),(3381,1206,2302,NULL,48,1801),(3382,1276,2303,NULL,48,1801),(3383,152,NULL,62,49,1801),(3386,102,NULL,63,49,1801),(3388,88,NULL,64,49,1801),(3389,1311,2302,NULL,49,1801),(3390,1241,2303,NULL,49,1801),(3391,160,NULL,62,50,1801),(3394,160,NULL,63,50,1801),(3396,95,NULL,64,50,1801),(3397,1171,2302,NULL,50,1801),(3398,1206,2303,NULL,50,1801),(3399,168,NULL,62,51,1801),(3402,118,NULL,63,51,1801),(3404,90,NULL,64,51,1801),(3405,1276,2302,NULL,51,1801),(3406,1311,2303,NULL,51,1801),(3451,100,NULL,62,30,59),(3454,50,NULL,63,30,59),(3456,55,NULL,64,30,59),(3457,1171,2302,NULL,30,59),(3458,1206,2303,NULL,30,59),(3459,108,NULL,62,31,59),(3462,58,NULL,63,31,59),(3464,50,NULL,64,31,59),(3465,1276,2302,NULL,31,59),(3466,1311,2303,NULL,31,59),(3467,106,NULL,62,32,59),(3470,56,NULL,63,32,59),(3472,45,NULL,64,32,59),(3473,1241,2302,NULL,32,59),(3474,1171,2303,NULL,32,59),(3475,104,NULL,62,33,59),(3478,54,NULL,63,33,59),(3480,50,NULL,64,33,59),(3481,1206,2302,NULL,33,59),(3482,1276,2303,NULL,33,59),(3483,112,NULL,62,34,59),(3486,62,NULL,63,34,59),(3488,55,NULL,64,34,59),(3489,1311,2302,NULL,34,59),(3490,1241,2303,NULL,34,59),(3491,120,NULL,62,35,59),(3494,70,NULL,63,35,59),(3496,50,NULL,64,35,59),(3497,1171,2302,NULL,35,59),(3498,1206,2303,NULL,35,59),(3499,118,NULL,62,36,59),(3502,68,NULL,63,36,59),(3504,45,NULL,64,36,59),(3505,1276,2302,NULL,36,59),(3506,1311,2303,NULL,36,59),(3507,116,NULL,62,37,59),(3510,66,NULL,63,37,59),(3512,50,NULL,64,37,59),(3513,1241,2302,NULL,37,59),(3514,1171,2303,NULL,37,59),(3515,124,NULL,62,38,59),(3518,124,NULL,63,38,59),(3520,55,NULL,64,38,59),(3521,1206,2302,NULL,38,59),(3522,1276,2303,NULL,38,59),(3523,132,NULL,62,39,59),(3526,82,NULL,63,39,59),(3528,50,NULL,64,39,59),(3529,1311,2302,NULL,39,59),(3530,1241,2303,NULL,39,59),(3531,130,NULL,62,40,59),(3534,80,NULL,63,40,59),(3536,45,NULL,64,40,59),(3537,1171,2302,NULL,40,59),(3538,1206,2303,NULL,40,59),(3539,128,NULL,62,41,59),(3542,78,NULL,63,41,59),(3544,50,NULL,64,41,59),(3545,1276,2302,NULL,41,59),(3546,1311,2303,NULL,41,59),(3547,136,NULL,62,42,59),(3550,86,NULL,63,42,59),(3552,55,NULL,64,42,59),(3553,1241,2302,NULL,42,59),(3554,1171,2303,NULL,42,59),(3555,144,NULL,62,43,59),(3558,94,NULL,63,43,59),(3560,50,NULL,64,43,59),(3561,1206,2302,NULL,43,59),(3562,1276,2303,NULL,43,59),(3563,142,NULL,62,44,59),(3566,92,NULL,63,44,59),(3568,45,NULL,64,44,59),(3569,1311,2302,NULL,44,59),(3570,1241,2303,NULL,44,59),(3571,140,NULL,62,45,59),(3574,90,NULL,63,45,59),(3576,50,NULL,64,45,59),(3577,1171,2302,NULL,45,59),(3578,1206,2303,NULL,45,59),(3579,148,NULL,62,46,59),(3582,98,NULL,63,46,59),(3584,55,NULL,64,46,59),(3585,1276,2302,NULL,46,59),(3586,1311,2303,NULL,46,59),(3587,156,NULL,62,47,59),(3590,106,NULL,63,47,59),(3592,70,NULL,64,47,59),(3593,1241,2302,NULL,47,59),(3594,1171,2303,NULL,47,59),(3595,154,NULL,62,48,59),(3598,104,NULL,63,48,59),(3600,80,NULL,64,48,59),(3601,1206,2302,NULL,48,59),(3602,1276,2303,NULL,48,59),(3603,152,NULL,62,49,59),(3606,102,NULL,63,49,59),(3608,88,NULL,64,49,59),(3609,1311,2302,NULL,49,59),(3610,1241,2303,NULL,49,59),(3611,160,NULL,62,50,59),(3614,160,NULL,63,50,59),(3616,95,NULL,64,50,59),(3617,1171,2302,NULL,50,59),(3618,1206,2303,NULL,50,59),(3619,168,NULL,62,51,59),(3622,118,NULL,63,51,59),(3624,90,NULL,64,51,59),(3625,1276,2302,NULL,51,59),(3626,1311,2303,NULL,51,59),(3627,100,NULL,62,30,60),(3630,50,NULL,63,30,60),(3632,55,NULL,64,30,60),(3633,1171,2302,NULL,30,60),(3634,1206,2303,NULL,30,60),(3635,108,NULL,62,31,60),(3638,58,NULL,63,31,60),(3640,50,NULL,64,31,60),(3641,1276,2302,NULL,31,60),(3642,1311,2303,NULL,31,60),(3643,106,NULL,62,32,60),(3646,56,NULL,63,32,60),(3648,45,NULL,64,32,60),(3649,1241,2302,NULL,32,60),(3650,1171,2303,NULL,32,60),(3651,104,NULL,62,33,60),(3654,54,NULL,63,33,60),(3656,50,NULL,64,33,60),(3657,1206,2302,NULL,33,60),(3658,1276,2303,NULL,33,60),(3659,112,NULL,62,34,60),(3662,62,NULL,63,34,60),(3664,55,NULL,64,34,60),(3665,1311,2302,NULL,34,60),(3666,1241,2303,NULL,34,60),(3667,120,NULL,62,35,60),(3670,70,NULL,63,35,60),(3672,50,NULL,64,35,60),(3673,1171,2302,NULL,35,60),(3674,1206,2303,NULL,35,60),(3675,118,NULL,62,36,60),(3678,68,NULL,63,36,60),(3680,45,NULL,64,36,60),(3681,1276,2302,NULL,36,60),(3682,1311,2303,NULL,36,60),(3683,116,NULL,62,37,60),(3686,66,NULL,63,37,60),(3688,50,NULL,64,37,60),(3689,1241,2302,NULL,37,60),(3690,1171,2303,NULL,37,60),(3691,124,NULL,62,38,60),(3694,124,NULL,63,38,60),(3696,55,NULL,64,38,60),(3697,1206,2302,NULL,38,60),(3698,1276,2303,NULL,38,60),(3699,132,NULL,62,39,60),(3702,82,NULL,63,39,60),(3704,50,NULL,64,39,60),(3705,1311,2302,NULL,39,60),(3706,1241,2303,NULL,39,60),(3707,130,NULL,62,40,60),(3710,80,NULL,63,40,60),(3712,45,NULL,64,40,60),(3713,1171,2302,NULL,40,60),(3714,1206,2303,NULL,40,60),(3715,128,NULL,62,41,60),(3718,78,NULL,63,41,60),(3720,50,NULL,64,41,60),(3721,1276,2302,NULL,41,60),(3722,1311,2303,NULL,41,60),(3723,136,NULL,62,42,60),(3726,86,NULL,63,42,60),(3728,55,NULL,64,42,60),(3729,1241,2302,NULL,42,60),(3730,1171,2303,NULL,42,60),(3731,144,NULL,62,43,60),(3734,94,NULL,63,43,60),(3736,50,NULL,64,43,60),(3737,1206,2302,NULL,43,60),(3738,1276,2303,NULL,43,60),(3739,142,NULL,62,44,60),(3742,92,NULL,63,44,60),(3744,45,NULL,64,44,60),(3745,1311,2302,NULL,44,60),(3746,1241,2303,NULL,44,60),(3747,140,NULL,62,45,60),(3750,90,NULL,63,45,60),(3752,50,NULL,64,45,60),(3753,1171,2302,NULL,45,60),(3754,1206,2303,NULL,45,60),(3755,148,NULL,62,46,60),(3758,98,NULL,63,46,60),(3760,55,NULL,64,46,60),(3761,1276,2302,NULL,46,60),(3762,1311,2303,NULL,46,60),(3763,156,NULL,62,47,60),(3766,106,NULL,63,47,60),(3768,70,NULL,64,47,60),(3769,1241,2302,NULL,47,60),(3770,1171,2303,NULL,47,60),(3771,154,NULL,62,48,60),(3774,104,NULL,63,48,60),(3776,80,NULL,64,48,60),(3777,1206,2302,NULL,48,60),(3778,1276,2303,NULL,48,60),(3779,152,NULL,62,49,60),(3782,102,NULL,63,49,60),(3784,88,NULL,64,49,60),(3785,1311,2302,NULL,49,60),(3786,1241,2303,NULL,49,60),(3787,160,NULL,62,50,60),(3790,160,NULL,63,50,60),(3792,95,NULL,64,50,60),(3793,1171,2302,NULL,50,60),(3794,1206,2303,NULL,50,60),(3795,168,NULL,62,51,60),(3798,118,NULL,63,51,60),(3800,90,NULL,64,51,60),(3801,1276,2302,NULL,51,60),(3802,1311,2303,NULL,51,60),(3803,100,NULL,62,30,61),(3806,50,NULL,63,30,61),(3808,55,NULL,64,30,61),(3809,1171,2302,NULL,30,61),(3810,1206,2303,NULL,30,61),(3811,108,NULL,62,31,61),(3814,58,NULL,63,31,61),(3816,50,NULL,64,31,61),(3817,1276,2302,NULL,31,61),(3818,1311,2303,NULL,31,61),(3819,106,NULL,62,32,61),(3822,56,NULL,63,32,61),(3824,45,NULL,64,32,61),(3825,1241,2302,NULL,32,61),(3826,1171,2303,NULL,32,61),(3827,104,NULL,62,33,61),(3830,54,NULL,63,33,61),(3832,50,NULL,64,33,61),(3833,1206,2302,NULL,33,61),(3834,1276,2303,NULL,33,61),(3835,112,NULL,62,34,61),(3838,62,NULL,63,34,61),(3840,55,NULL,64,34,61),(3841,1311,2302,NULL,34,61),(3842,1241,2303,NULL,34,61),(3843,120,NULL,62,35,61),(3846,70,NULL,63,35,61),(3848,50,NULL,64,35,61),(3849,1171,2302,NULL,35,61),(3850,1206,2303,NULL,35,61),(3851,118,NULL,62,36,61),(3854,68,NULL,63,36,61),(3856,45,NULL,64,36,61),(3857,1276,2302,NULL,36,61),(3858,1311,2303,NULL,36,61),(3859,116,NULL,62,37,61),(3862,66,NULL,63,37,61),(3864,50,NULL,64,37,61),(3865,1241,2302,NULL,37,61),(3866,1171,2303,NULL,37,61),(3867,124,NULL,62,38,61),(3870,124,NULL,63,38,61),(3872,55,NULL,64,38,61),(3873,1206,2302,NULL,38,61),(3874,1276,2303,NULL,38,61),(3875,132,NULL,62,39,61),(3878,82,NULL,63,39,61),(3880,50,NULL,64,39,61),(3881,1311,2302,NULL,39,61),(3882,1241,2303,NULL,39,61),(3883,130,NULL,62,40,61),(3886,80,NULL,63,40,61),(3888,45,NULL,64,40,61),(3889,1171,2302,NULL,40,61),(3890,1206,2303,NULL,40,61),(3891,128,NULL,62,41,61),(3894,78,NULL,63,41,61),(3896,50,NULL,64,41,61),(3897,1276,2302,NULL,41,61),(3898,1311,2303,NULL,41,61),(3899,136,NULL,62,42,61),(3902,86,NULL,63,42,61),(3904,55,NULL,64,42,61),(3905,1241,2302,NULL,42,61),(3906,1171,2303,NULL,42,61),(3907,144,NULL,62,43,61),(3910,94,NULL,63,43,61),(3912,50,NULL,64,43,61),(3913,1206,2302,NULL,43,61),(3914,1276,2303,NULL,43,61),(3915,142,NULL,62,44,61),(3918,92,NULL,63,44,61),(3920,45,NULL,64,44,61),(3921,1311,2302,NULL,44,61),(3922,1241,2303,NULL,44,61),(3923,140,NULL,62,45,61),(3926,90,NULL,63,45,61),(3928,50,NULL,64,45,61),(3929,1171,2302,NULL,45,61),(3930,1206,2303,NULL,45,61),(3931,148,NULL,62,46,61),(3934,98,NULL,63,46,61),(3936,55,NULL,64,46,61),(3937,1276,2302,NULL,46,61),(3938,1311,2303,NULL,46,61),(3939,156,NULL,62,47,61),(3942,106,NULL,63,47,61),(3944,70,NULL,64,47,61),(3945,1241,2302,NULL,47,61),(3946,1171,2303,NULL,47,61),(3947,154,NULL,62,48,61),(3950,104,NULL,63,48,61),(3952,80,NULL,64,48,61),(3953,1206,2302,NULL,48,61),(3954,1276,2303,NULL,48,61),(3955,152,NULL,62,49,61),(3958,102,NULL,63,49,61),(3960,88,NULL,64,49,61),(3961,1311,2302,NULL,49,61),(3962,1241,2303,NULL,49,61),(3963,160,NULL,62,50,61),(3966,160,NULL,63,50,61),(3968,95,NULL,64,50,61),(3969,1171,2302,NULL,50,61),(3970,1206,2303,NULL,50,61),(3971,168,NULL,62,51,61),(3974,118,NULL,63,51,61),(3976,90,NULL,64,51,61),(3977,1276,2302,NULL,51,61),(3978,1311,2303,NULL,51,61),(3979,100,NULL,62,30,551),(3982,50,NULL,63,30,551),(3984,55,NULL,64,30,551),(3985,1171,2302,NULL,30,551),(3986,1206,2303,NULL,30,551),(3987,108,NULL,62,31,551),(3990,58,NULL,63,31,551),(3992,50,NULL,64,31,551),(3993,1276,2302,NULL,31,551),(3994,1311,2303,NULL,31,551),(3995,106,NULL,62,32,551),(3998,56,NULL,63,32,551),(4000,45,NULL,64,32,551),(4001,1241,2302,NULL,32,551),(4002,1171,2303,NULL,32,551),(4003,104,NULL,62,33,551),(4006,54,NULL,63,33,551),(4008,50,NULL,64,33,551),(4009,1206,2302,NULL,33,551),(4010,1276,2303,NULL,33,551),(4011,112,NULL,62,34,551),(4014,62,NULL,63,34,551),(4016,55,NULL,64,34,551),(4017,1311,2302,NULL,34,551),(4018,1241,2303,NULL,34,551),(4019,120,NULL,62,35,551),(4022,70,NULL,63,35,551),(4024,50,NULL,64,35,551),(4025,1171,2302,NULL,35,551),(4026,1206,2303,NULL,35,551),(4027,118,NULL,62,36,551),(4030,68,NULL,63,36,551),(4032,45,NULL,64,36,551),(4033,1276,2302,NULL,36,551),(4034,1311,2303,NULL,36,551),(4035,116,NULL,62,37,551),(4038,66,NULL,63,37,551),(4040,50,NULL,64,37,551),(4041,1241,2302,NULL,37,551),(4042,1171,2303,NULL,37,551),(4043,124,NULL,62,38,551),(4046,124,NULL,63,38,551),(4048,55,NULL,64,38,551),(4049,1206,2302,NULL,38,551),(4050,1276,2303,NULL,38,551),(4051,132,NULL,62,39,551),(4054,82,NULL,63,39,551),(4056,50,NULL,64,39,551),(4057,1311,2302,NULL,39,551),(4058,1241,2303,NULL,39,551),(4059,130,NULL,62,40,551),(4062,80,NULL,63,40,551),(4064,45,NULL,64,40,551),(4065,1171,2302,NULL,40,551),(4066,1206,2303,NULL,40,551),(4067,128,NULL,62,41,551),(4070,78,NULL,63,41,551),(4072,50,NULL,64,41,551),(4073,1276,2302,NULL,41,551),(4074,1311,2303,NULL,41,551),(4075,136,NULL,62,42,551),(4078,86,NULL,63,42,551),(4080,55,NULL,64,42,551),(4081,1241,2302,NULL,42,551),(4082,1171,2303,NULL,42,551),(4083,144,NULL,62,43,551),(4086,94,NULL,63,43,551),(4088,50,NULL,64,43,551),(4089,1206,2302,NULL,43,551),(4090,1276,2303,NULL,43,551),(4091,142,NULL,62,44,551),(4094,92,NULL,63,44,551),(4096,45,NULL,64,44,551),(4097,1311,2302,NULL,44,551),(4098,1241,2303,NULL,44,551),(4099,140,NULL,62,45,551),(4102,90,NULL,63,45,551),(4104,50,NULL,64,45,551),(4105,1171,2302,NULL,45,551),(4106,1206,2303,NULL,45,551),(4107,148,NULL,62,46,551),(4110,98,NULL,63,46,551),(4112,55,NULL,64,46,551),(4113,1276,2302,NULL,46,551),(4114,1311,2303,NULL,46,551),(4115,156,NULL,62,47,551),(4118,106,NULL,63,47,551),(4120,70,NULL,64,47,551),(4121,1241,2302,NULL,47,551),(4122,1171,2303,NULL,47,551),(4123,154,NULL,62,48,551),(4126,104,NULL,63,48,551),(4128,80,NULL,64,48,551),(4129,1206,2302,NULL,48,551),(4130,1276,2303,NULL,48,551),(4131,152,NULL,62,49,551),(4134,102,NULL,63,49,551),(4136,88,NULL,64,49,551),(4137,1311,2302,NULL,49,551),(4138,1241,2303,NULL,49,551),(4139,160,NULL,62,50,551),(4142,160,NULL,63,50,551),(4144,95,NULL,64,50,551),(4145,1171,2302,NULL,50,551),(4146,1206,2303,NULL,50,551),(4147,168,NULL,62,51,551),(4150,118,NULL,63,51,551),(4152,90,NULL,64,51,551),(4153,1276,2302,NULL,51,551),(4154,1311,2303,NULL,51,551),(4155,100,NULL,62,30,601),(4158,50,NULL,63,30,601),(4160,55,NULL,64,30,601),(4161,1171,2302,NULL,30,601),(4162,1206,2303,NULL,30,601),(4163,108,NULL,62,31,601),(4166,58,NULL,63,31,601),(4168,50,NULL,64,31,601),(4169,1276,2302,NULL,31,601),(4170,1311,2303,NULL,31,601),(4171,106,NULL,62,32,601),(4174,56,NULL,63,32,601),(4176,45,NULL,64,32,601),(4177,1241,2302,NULL,32,601),(4178,1171,2303,NULL,32,601),(4179,104,NULL,62,33,601),(4182,54,NULL,63,33,601),(4184,50,NULL,64,33,601),(4185,1206,2302,NULL,33,601),(4186,1276,2303,NULL,33,601),(4187,112,NULL,62,34,601),(4190,62,NULL,63,34,601),(4192,55,NULL,64,34,601),(4193,1311,2302,NULL,34,601),(4194,1241,2303,NULL,34,601),(4195,120,NULL,62,35,601),(4198,70,NULL,63,35,601),(4200,50,NULL,64,35,601),(4201,1171,2302,NULL,35,601),(4202,1206,2303,NULL,35,601),(4203,118,NULL,62,36,601),(4206,68,NULL,63,36,601),(4208,45,NULL,64,36,601),(4209,1276,2302,NULL,36,601),(4210,1311,2303,NULL,36,601),(4211,116,NULL,62,37,601),(4214,66,NULL,63,37,601),(4216,50,NULL,64,37,601),(4217,1241,2302,NULL,37,601),(4218,1171,2303,NULL,37,601),(4219,124,NULL,62,38,601),(4222,124,NULL,63,38,601),(4224,55,NULL,64,38,601),(4225,1206,2302,NULL,38,601),(4226,1276,2303,NULL,38,601),(4227,132,NULL,62,39,601),(4230,82,NULL,63,39,601),(4232,50,NULL,64,39,601),(4233,1311,2302,NULL,39,601),(4234,1241,2303,NULL,39,601),(4235,130,NULL,62,40,601),(4238,80,NULL,63,40,601),(4240,45,NULL,64,40,601),(4241,1171,2302,NULL,40,601),(4242,1206,2303,NULL,40,601),(4243,128,NULL,62,41,601),(4246,78,NULL,63,41,601),(4248,50,NULL,64,41,601),(4249,1276,2302,NULL,41,601),(4250,1311,2303,NULL,41,601),(4251,136,NULL,62,42,601),(4254,86,NULL,63,42,601),(4256,55,NULL,64,42,601),(4257,1241,2302,NULL,42,601),(4258,1171,2303,NULL,42,601),(4259,144,NULL,62,43,601),(4262,94,NULL,63,43,601),(4264,50,NULL,64,43,601),(4265,1206,2302,NULL,43,601),(4266,1276,2303,NULL,43,601),(4267,142,NULL,62,44,601),(4270,92,NULL,63,44,601),(4272,45,NULL,64,44,601),(4273,1311,2302,NULL,44,601),(4274,1241,2303,NULL,44,601),(4275,140,NULL,62,45,601),(4278,90,NULL,63,45,601),(4280,50,NULL,64,45,601),(4281,1171,2302,NULL,45,601),(4282,1206,2303,NULL,45,601),(4283,148,NULL,62,46,601),(4286,98,NULL,63,46,601),(4288,55,NULL,64,46,601),(4289,1276,2302,NULL,46,601),(4290,1311,2303,NULL,46,601),(4291,156,NULL,62,47,601),(4294,106,NULL,63,47,601),(4296,70,NULL,64,47,601),(4297,1241,2302,NULL,47,601),(4298,1171,2303,NULL,47,601),(4299,154,NULL,62,48,601),(4302,104,NULL,63,48,601),(4304,80,NULL,64,48,601),(4305,1206,2302,NULL,48,601),(4306,1276,2303,NULL,48,601),(4307,152,NULL,62,49,601),(4310,102,NULL,63,49,601),(4312,88,NULL,64,49,601),(4313,1311,2302,NULL,49,601),(4314,1241,2303,NULL,49,601),(4315,160,NULL,62,50,601),(4318,160,NULL,63,50,601),(4320,95,NULL,64,50,601),(4321,1171,2302,NULL,50,601),(4322,1206,2303,NULL,50,601),(4323,168,NULL,62,51,601),(4326,118,NULL,63,51,601),(4328,90,NULL,64,51,601),(4329,1276,2302,NULL,51,601),(4330,1311,2303,NULL,51,601),(4331,100,NULL,62,30,1801),(4334,50,NULL,63,30,1801),(4336,55,NULL,64,30,1801),(4337,1171,2302,NULL,30,1801),(4338,1206,2303,NULL,30,1801),(4339,108,NULL,62,31,1801),(4342,58,NULL,63,31,1801),(4344,50,NULL,64,31,1801),(4345,1276,2302,NULL,31,1801),(4346,1311,2303,NULL,31,1801),(4347,106,NULL,62,32,1801),(4350,56,NULL,63,32,1801),(4352,45,NULL,64,32,1801),(4353,1241,2302,NULL,32,1801),(4354,1171,2303,NULL,32,1801),(4355,104,NULL,62,33,1801),(4358,54,NULL,63,33,1801),(4360,50,NULL,64,33,1801),(4361,1206,2302,NULL,33,1801),(4362,1276,2303,NULL,33,1801),(4363,112,NULL,62,34,1801),(4366,62,NULL,63,34,1801),(4368,55,NULL,64,34,1801),(4369,1311,2302,NULL,34,1801),(4370,1241,2303,NULL,34,1801),(4371,120,NULL,62,35,1801),(4374,70,NULL,63,35,1801),(4376,50,NULL,64,35,1801),(4377,1171,2302,NULL,35,1801),(4378,1206,2303,NULL,35,1801),(4379,118,NULL,62,36,1801),(4382,68,NULL,63,36,1801),(4384,45,NULL,64,36,1801),(4385,1276,2302,NULL,36,1801),(4386,1311,2303,NULL,36,1801),(4387,116,NULL,62,37,1801),(4390,66,NULL,63,37,1801),(4392,50,NULL,64,37,1801),(4393,1241,2302,NULL,37,1801),(4394,1171,2303,NULL,37,1801),(4395,124,NULL,62,38,1801),(4398,124,NULL,63,38,1801),(4400,55,NULL,64,38,1801),(4401,1206,2302,NULL,38,1801),(4402,1276,2303,NULL,38,1801),(4403,132,NULL,62,39,1801),(4406,82,NULL,63,39,1801),(4408,50,NULL,64,39,1801),(4409,1311,2302,NULL,39,1801),(4410,1241,2303,NULL,39,1801),(4411,130,NULL,62,40,1801),(4414,80,NULL,63,40,1801),(4416,45,NULL,64,40,1801),(4417,1171,2302,NULL,40,1801),(4418,1206,2303,NULL,40,1801),(4419,128,NULL,62,41,1801),(4422,78,NULL,63,41,1801),(4424,50,NULL,64,41,1801),(4425,1276,2302,NULL,41,1801),(4426,1311,2303,NULL,41,1801),(4427,136,NULL,62,42,1801),(4430,86,NULL,63,42,1801),(4432,55,NULL,64,42,1801),(4433,1241,2302,NULL,42,1801),(4434,1171,2303,NULL,42,1801),(4435,144,NULL,62,43,1801),(4438,94,NULL,63,43,1801),(4440,50,NULL,64,43,1801),(4441,1206,2302,NULL,43,1801),(4442,1276,2303,NULL,43,1801),(4443,142,NULL,62,44,1801),(4446,92,NULL,63,44,1801),(4448,45,NULL,64,44,1801),(4449,1311,2302,NULL,44,1801),(4450,1241,2303,NULL,44,1801),(4451,140,NULL,62,45,1801),(4454,90,NULL,63,45,1801),(4456,50,NULL,64,45,1801),(4457,1171,2302,NULL,45,1801),(4458,1206,2303,NULL,45,1801),(4459,148,NULL,62,46,1801),(4462,98,NULL,63,46,1801),(4464,55,NULL,64,46,1801),(4465,1276,2302,NULL,46,1801),(4466,1311,2303,NULL,46,1801),(4467,156,NULL,62,47,1801),(4470,106,NULL,63,47,1801),(4472,70,NULL,64,47,1801),(4473,1241,2302,NULL,47,1801),(4474,1171,2303,NULL,47,1801),(4475,154,NULL,62,48,1801),(4478,104,NULL,63,48,1801),(4480,80,NULL,64,48,1801),(4481,1206,2302,NULL,48,1801),(4482,1276,2303,NULL,48,1801),(4483,152,NULL,62,49,1801),(4486,102,NULL,63,49,1801),(4488,88,NULL,64,49,1801),(4489,1311,2302,NULL,49,1801),(4490,1241,2303,NULL,49,1801),(4491,160,NULL,62,50,1801),(4494,160,NULL,63,50,1801),(4496,95,NULL,64,50,1801),(4497,1171,2302,NULL,50,1801),(4498,1206,2303,NULL,50,1801),(4499,168,NULL,62,51,1801),(4502,118,NULL,63,51,1801),(4504,90,NULL,64,51,1801),(4505,1276,2302,NULL,51,1801),(4506,1311,2303,NULL,51,1801),(7578,1,NULL,63,7557,551),(7918,1038,4579,NULL,7557,551),(7927,1038,4592,NULL,7557,551),(9051,100,NULL,62,30,60),(9054,50,NULL,63,30,60),(9056,55,NULL,64,30,60),(9057,108,NULL,62,31,60),(9060,58,NULL,63,31,60),(9062,50,NULL,64,31,60),(9063,106,NULL,62,32,60),(9066,56,NULL,63,32,60),(9068,45,NULL,64,32,60),(9069,104,NULL,62,33,60),(9072,54,NULL,63,33,60),(9074,50,NULL,64,33,60),(9075,112,NULL,62,34,60),(9078,62,NULL,63,34,60),(9080,55,NULL,64,34,60),(9081,120,NULL,62,35,60),(9084,70,NULL,63,35,60),(9086,50,NULL,64,35,60),(9087,118,NULL,62,36,60),(9090,68,NULL,63,36,60),(9092,45,NULL,64,36,60),(9093,116,NULL,62,37,60),(9096,66,NULL,63,37,60),(9098,50,NULL,64,37,60),(9099,124,NULL,62,38,60),(9102,124,NULL,63,38,60),(9104,55,NULL,64,38,60),(9105,132,NULL,62,39,60),(9108,82,NULL,63,39,60),(9110,50,NULL,64,39,60),(9111,130,NULL,62,40,60),(9114,80,NULL,63,40,60),(9116,45,NULL,64,40,60),(9117,128,NULL,62,41,60),(9120,78,NULL,63,41,60),(9122,50,NULL,64,41,60),(9123,136,NULL,62,42,60),(9126,86,NULL,63,42,60),(9128,55,NULL,64,42,60),(9129,144,NULL,62,43,60),(9132,94,NULL,63,43,60),(9134,50,NULL,64,43,60),(9135,142,NULL,62,44,60),(9138,92,NULL,63,44,60),(9140,45,NULL,64,44,60),(9141,140,NULL,62,45,60),(9144,90,NULL,63,45,60),(9146,50,NULL,64,45,60),(9147,148,NULL,62,46,60),(9150,98,NULL,63,46,60),(9152,55,NULL,64,46,60),(9153,156,NULL,62,47,60),(9156,106,NULL,63,47,60),(9158,70,NULL,64,47,60),(9159,154,NULL,62,48,60),(9162,104,NULL,63,48,60),(9164,80,NULL,64,48,60),(9165,152,NULL,62,49,60),(9168,102,NULL,63,49,60),(9170,88,NULL,64,49,60),(9171,160,NULL,62,50,60),(9174,160,NULL,63,50,60),(9176,95,NULL,64,50,60),(9177,168,NULL,62,51,60),(9180,118,NULL,63,51,60),(9182,90,NULL,64,51,60),(9183,166,NULL,62,7557,60),(9186,116,NULL,63,7557,60),(9188,90,NULL,64,7557,60),(9189,100,NULL,62,30,61),(9192,50,NULL,63,30,61),(9194,55,NULL,64,30,61),(9195,108,NULL,62,31,61),(9198,58,NULL,63,31,61),(9200,50,NULL,64,31,61),(9201,106,NULL,62,32,61),(9204,56,NULL,63,32,61),(9206,45,NULL,64,32,61),(9207,104,NULL,62,33,61),(9210,54,NULL,63,33,61),(9212,50,NULL,64,33,61),(9213,112,NULL,62,34,61),(9216,62,NULL,63,34,61),(9218,55,NULL,64,34,61),(9219,120,NULL,62,35,61),(9222,70,NULL,63,35,61),(9224,50,NULL,64,35,61),(9225,118,NULL,62,36,61),(9228,68,NULL,63,36,61),(9230,45,NULL,64,36,61),(9231,116,NULL,62,37,61),(9234,66,NULL,63,37,61),(9236,50,NULL,64,37,61),(9237,124,NULL,62,38,61),(9240,124,NULL,63,38,61),(9242,55,NULL,64,38,61),(9243,132,NULL,62,39,61),(9246,82,NULL,63,39,61),(9248,50,NULL,64,39,61),(9249,130,NULL,62,40,61),(9252,80,NULL,63,40,61),(9254,45,NULL,64,40,61),(9255,128,NULL,62,41,61),(9258,78,NULL,63,41,61),(9260,50,NULL,64,41,61),(9261,136,NULL,62,42,61),(9264,86,NULL,63,42,61),(9266,55,NULL,64,42,61),(9267,144,NULL,62,43,61),(9270,94,NULL,63,43,61),(9272,50,NULL,64,43,61),(9273,142,NULL,62,44,61),(9276,92,NULL,63,44,61),(9278,45,NULL,64,44,61),(9279,140,NULL,62,45,61),(9282,90,NULL,63,45,61),(9284,50,NULL,64,45,61),(9285,148,NULL,62,46,61),(9288,98,NULL,63,46,61),(9290,55,NULL,64,46,61),(9291,156,NULL,62,47,61),(9294,106,NULL,63,47,61),(9296,70,NULL,64,47,61),(9297,154,NULL,62,48,61),(9300,104,NULL,63,48,61),(9302,80,NULL,64,48,61),(9303,152,NULL,62,49,61),(9306,102,NULL,63,49,61),(9308,88,NULL,64,49,61),(9309,160,NULL,62,50,61),(9312,160,NULL,63,50,61),(9314,95,NULL,64,50,61),(9315,168,NULL,62,51,61),(9318,118,NULL,63,51,61),(9320,90,NULL,64,51,61),(9321,166,NULL,62,7557,61),(9324,116,NULL,63,7557,61),(9326,90,NULL,64,7557,61),(9327,100,NULL,62,30,551),(9330,50,NULL,63,30,551),(9332,55,NULL,64,30,551),(9333,108,NULL,62,31,551),(9336,58,NULL,63,31,551),(9338,50,NULL,64,31,551),(9339,106,NULL,62,32,551),(9342,56,NULL,63,32,551),(9344,45,NULL,64,32,551),(9345,104,NULL,62,33,551),(9348,54,NULL,63,33,551),(9350,50,NULL,64,33,551),(9351,112,NULL,62,34,551),(9354,62,NULL,63,34,551),(9356,55,NULL,64,34,551),(9357,120,NULL,62,35,551),(9360,70,NULL,63,35,551),(9362,50,NULL,64,35,551),(9363,118,NULL,62,36,551),(9366,68,NULL,63,36,551),(9368,45,NULL,64,36,551),(9369,116,NULL,62,37,551),(9372,66,NULL,63,37,551),(9374,50,NULL,64,37,551),(9375,124,NULL,62,38,551),(9378,124,NULL,63,38,551),(9380,55,NULL,64,38,551),(9381,132,NULL,62,39,551),(9384,82,NULL,63,39,551),(9386,50,NULL,64,39,551),(9387,130,NULL,62,40,551),(9390,80,NULL,63,40,551),(9392,45,NULL,64,40,551),(9393,128,NULL,62,41,551),(9396,78,NULL,63,41,551),(9398,50,NULL,64,41,551),(9399,136,NULL,62,42,551),(9402,86,NULL,63,42,551),(9404,55,NULL,64,42,551),(9405,144,NULL,62,43,551),(9408,94,NULL,63,43,551),(9410,50,NULL,64,43,551),(9411,142,NULL,62,44,551),(9414,92,NULL,63,44,551),(9416,45,NULL,64,44,551),(9417,140,NULL,62,45,551),(9420,90,NULL,63,45,551),(9422,50,NULL,64,45,551),(9423,148,NULL,62,46,551),(9426,98,NULL,63,46,551),(9428,55,NULL,64,46,551),(9429,156,NULL,62,47,551),(9432,106,NULL,63,47,551),(9434,70,NULL,64,47,551),(9435,154,NULL,62,48,551),(9438,104,NULL,63,48,551),(9440,80,NULL,64,48,551),(9441,152,NULL,62,49,551),(9444,102,NULL,63,49,551),(9446,88,NULL,64,49,551),(9447,160,NULL,62,50,551),(9450,160,NULL,63,50,551),(9452,95,NULL,64,50,551),(9453,168,NULL,62,51,551),(9456,118,NULL,63,51,551),(9458,90,NULL,64,51,551),(9459,166,NULL,62,7557,551),(9462,116,NULL,63,7557,551),(9464,90,NULL,64,7557,551),(9465,100,NULL,62,30,601),(9468,50,NULL,63,30,601),(9470,55,NULL,64,30,601),(9471,108,NULL,62,31,601),(9474,58,NULL,63,31,601),(9476,50,NULL,64,31,601),(9477,106,NULL,62,32,601),(9480,56,NULL,63,32,601),(9482,45,NULL,64,32,601),(9483,104,NULL,62,33,601),(9486,54,NULL,63,33,601),(9488,50,NULL,64,33,601),(9489,112,NULL,62,34,601),(9492,62,NULL,63,34,601),(9494,55,NULL,64,34,601),(9495,120,NULL,62,35,601),(9498,70,NULL,63,35,601),(9500,50,NULL,64,35,601),(9501,118,NULL,62,36,601),(9504,68,NULL,63,36,601),(9506,45,NULL,64,36,601),(9507,116,NULL,62,37,601),(9510,66,NULL,63,37,601),(9512,50,NULL,64,37,601),(9513,124,NULL,62,38,601),(9516,124,NULL,63,38,601),(9518,55,NULL,64,38,601),(9519,132,NULL,62,39,601),(9522,82,NULL,63,39,601),(9524,50,NULL,64,39,601),(9525,130,NULL,62,40,601),(9528,80,NULL,63,40,601),(9530,45,NULL,64,40,601),(9531,128,NULL,62,41,601),(9534,78,NULL,63,41,601),(9536,50,NULL,64,41,601),(9537,136,NULL,62,42,601),(9540,86,NULL,63,42,601),(9542,55,NULL,64,42,601),(9543,144,NULL,62,43,601),(9546,94,NULL,63,43,601),(9548,50,NULL,64,43,601),(9549,142,NULL,62,44,601),(9552,92,NULL,63,44,601),(9554,45,NULL,64,44,601),(9555,140,NULL,62,45,601),(9558,90,NULL,63,45,601),(9560,50,NULL,64,45,601),(9561,148,NULL,62,46,601),(9564,98,NULL,63,46,601),(9566,55,NULL,64,46,601),(9567,156,NULL,62,47,601),(9570,106,NULL,63,47,601),(9572,70,NULL,64,47,601),(9573,154,NULL,62,48,601),(9576,104,NULL,63,48,601),(9578,80,NULL,64,48,601),(9579,152,NULL,62,49,601),(9582,102,NULL,63,49,601),(9584,88,NULL,64,49,601),(9585,160,NULL,62,50,601),(9588,160,NULL,63,50,601),(9590,95,NULL,64,50,601),(9591,168,NULL,62,51,601),(9594,118,NULL,63,51,601),(9596,90,NULL,64,51,601),(9597,166,NULL,62,7557,601),(9600,116,NULL,63,7557,601),(9602,90,NULL,64,7557,601),(9603,100,NULL,62,30,1801),(9606,50,NULL,63,30,1801),(9608,55,NULL,64,30,1801),(9609,108,NULL,62,31,1801),(9612,58,NULL,63,31,1801),(9614,50,NULL,64,31,1801),(9615,106,NULL,62,32,1801),(9618,56,NULL,63,32,1801),(9620,45,NULL,64,32,1801),(9621,104,NULL,62,33,1801),(9624,54,NULL,63,33,1801),(9626,50,NULL,64,33,1801),(9627,112,NULL,62,34,1801),(9630,62,NULL,63,34,1801),(9632,55,NULL,64,34,1801),(9633,120,NULL,62,35,1801),(9636,70,NULL,63,35,1801),(9638,50,NULL,64,35,1801),(9639,118,NULL,62,36,1801),(9642,68,NULL,63,36,1801),(9644,45,NULL,64,36,1801),(9645,116,NULL,62,37,1801),(9648,66,NULL,63,37,1801),(9650,50,NULL,64,37,1801),(9651,124,NULL,62,38,1801),(9654,124,NULL,63,38,1801),(9656,55,NULL,64,38,1801),(9657,132,NULL,62,39,1801),(9660,82,NULL,63,39,1801),(9662,50,NULL,64,39,1801),(9663,130,NULL,62,40,1801),(9666,80,NULL,63,40,1801),(9668,45,NULL,64,40,1801),(9669,128,NULL,62,41,1801),(9672,78,NULL,63,41,1801),(9674,50,NULL,64,41,1801),(9675,136,NULL,62,42,1801),(9678,86,NULL,63,42,1801),(9680,55,NULL,64,42,1801),(9681,144,NULL,62,43,1801),(9684,94,NULL,63,43,1801),(9686,50,NULL,64,43,1801),(9687,142,NULL,62,44,1801),(9690,92,NULL,63,44,1801),(9692,45,NULL,64,44,1801),(9693,140,NULL,62,45,1801),(9696,90,NULL,63,45,1801),(9698,50,NULL,64,45,1801),(9699,148,NULL,62,46,1801),(9702,98,NULL,63,46,1801),(9704,55,NULL,64,46,1801),(9705,156,NULL,62,47,1801),(9708,106,NULL,63,47,1801),(9710,70,NULL,64,47,1801),(9711,154,NULL,62,48,1801),(9714,104,NULL,63,48,1801),(9716,80,NULL,64,48,1801),(9717,152,NULL,62,49,1801),(9720,102,NULL,63,49,1801),(9722,88,NULL,64,49,1801),(9723,160,NULL,62,50,1801),(9726,160,NULL,63,50,1801),(9728,95,NULL,64,50,1801),(9729,168,NULL,62,51,1801),(9732,118,NULL,63,51,1801),(9734,90,NULL,64,51,1801),(9735,166,NULL,62,7557,1801),(9738,116,NULL,63,7557,1801),(9740,90,NULL,64,7557,1801);
/*!40000 ALTER TABLE `salesfigureentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesfigurelineitementity`
--

DROP TABLE IF EXISTS `salesfigurelineitementity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salesfigurelineitementity` (
  `ID` bigint(20) NOT NULL,
  `SKU` varchar(255) DEFAULT NULL,
  `SALEAMOUNT` int(11) DEFAULT NULL,
  `SALEFIGURE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SALESFIGURELINEITEMENTITY_SALEFIGURE_ID` (`SALEFIGURE_ID`),
  CONSTRAINT `FK_SALESFIGURELINEITEMENTITY_SALEFIGURE_ID` FOREIGN KEY (`SALEFIGURE_ID`) REFERENCES `salesfigureentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesfigurelineitementity`
--

LOCK TABLES `salesfigurelineitementity` WRITE;
/*!40000 ALTER TABLE `salesfigurelineitementity` DISABLE KEYS */;
INSERT INTO `salesfigurelineitementity` VALUES (69,'F_TD_01',66,68),(70,'F_TD_02',34,68),(72,'F_BM_21',50,71),(75,'F_TD_01',72,74),(76,'F_TD_02',36,74),(78,'F_BM_21',58,77),(81,'F_TD_01',70,80),(82,'F_TD_02',36,80),(84,'F_BM_21',56,83),(87,'F_TD_01',69,86),(88,'F_TD_02',35,86),(90,'F_BM_21',54,89),(93,'F_TD_01',74,92),(94,'F_TD_02',38,92),(96,'F_BM_21',62,95),(99,'F_TD_01',80,98),(100,'F_TD_02',40,98),(102,'F_BM_21',70,101),(105,'F_TD_01',78,104),(106,'F_TD_02',40,104),(108,'F_BM_21',68,107),(111,'F_TD_01',77,110),(112,'F_TD_02',39,110),(114,'F_BM_21',66,113),(117,'F_TD_01',82,116),(118,'F_TD_02',42,116),(120,'F_BM_21',124,119),(123,'F_TD_01',88,122),(124,'F_TD_02',44,122),(126,'F_BM_21',82,125),(129,'F_TD_01',86,128),(130,'F_TD_02',44,128),(132,'F_BM_21',80,131),(135,'F_TD_01',85,134),(136,'F_TD_02',43,134),(138,'F_BM_21',78,137),(141,'F_TD_01',90,140),(142,'F_TD_02',46,140),(144,'F_BM_21',86,143),(147,'F_TD_01',96,146),(148,'F_TD_02',48,146),(150,'F_BM_21',94,149),(153,'F_TD_01',94,152),(154,'F_TD_02',48,152),(156,'F_BM_21',92,155),(159,'F_TD_01',93,158),(160,'F_TD_02',47,158),(162,'F_BM_21',90,161),(165,'F_TD_01',98,164),(166,'F_TD_02',50,164),(168,'F_BM_21',98,167),(171,'F_TD_01',104,170),(172,'F_TD_02',52,170),(174,'F_BM_21',106,173),(177,'F_TD_01',102,176),(178,'F_TD_02',52,176),(180,'F_BM_21',104,179),(183,'F_TD_01',101,182),(184,'F_TD_02',51,182),(186,'F_BM_21',102,185),(189,'F_TD_01',106,188),(190,'F_TD_02',54,188),(192,'F_BM_21',160,191),(195,'F_TD_01',112,194),(196,'F_TD_02',56,194),(198,'F_BM_21',118,197),(201,'F_TD_01',66,200),(202,'F_TD_02',34,200),(204,'F_BM_21',50,203),(207,'F_TD_01',72,206),(208,'F_TD_02',36,206),(210,'F_BM_21',58,209),(213,'F_TD_01',70,212),(214,'F_TD_02',36,212),(216,'F_BM_21',56,215),(219,'F_TD_01',69,218),(220,'F_TD_02',35,218),(222,'F_BM_21',54,221),(225,'F_TD_01',74,224),(226,'F_TD_02',38,224),(228,'F_BM_21',62,227),(231,'F_TD_01',80,230),(232,'F_TD_02',40,230),(234,'F_BM_21',70,233),(237,'F_TD_01',78,236),(238,'F_TD_02',40,236),(240,'F_BM_21',68,239),(243,'F_TD_01',77,242),(244,'F_TD_02',39,242),(246,'F_BM_21',66,245),(249,'F_TD_01',82,248),(250,'F_TD_02',42,248),(252,'F_BM_21',124,251),(255,'F_TD_01',88,254),(256,'F_TD_02',44,254),(258,'F_BM_21',82,257),(261,'F_TD_01',86,260),(262,'F_TD_02',44,260),(264,'F_BM_21',80,263),(267,'F_TD_01',85,266),(268,'F_TD_02',43,266),(270,'F_BM_21',78,269),(273,'F_TD_01',90,272),(274,'F_TD_02',46,272),(276,'F_BM_21',86,275),(279,'F_TD_01',96,278),(280,'F_TD_02',48,278),(282,'F_BM_21',94,281),(285,'F_TD_01',94,284),(286,'F_TD_02',48,284),(288,'F_BM_21',92,287),(291,'F_TD_01',93,290),(292,'F_TD_02',47,290),(294,'F_BM_21',90,293),(297,'F_TD_01',98,296),(298,'F_TD_02',50,296),(300,'F_BM_21',98,299),(303,'F_TD_01',104,302),(304,'F_TD_02',52,302),(306,'F_BM_21',106,305),(309,'F_TD_01',102,308),(310,'F_TD_02',52,308),(312,'F_BM_21',104,311),(315,'F_TD_01',101,314),(316,'F_TD_02',51,314),(318,'F_BM_21',102,317),(321,'F_TD_01',106,320),(322,'F_TD_02',54,320),(324,'F_BM_21',160,323),(327,'F_TD_01',112,326),(328,'F_TD_02',56,326),(330,'F_BM_21',118,329),(2352,'F_TD_01',66,2351),(2353,'F_TD_02',34,2351),(2355,'F_BM_21',50,2354),(2360,'F_TD_01',72,2359),(2361,'F_TD_02',36,2359),(2363,'F_BM_21',58,2362),(2368,'F_TD_01',70,2367),(2369,'F_TD_02',36,2367),(2371,'F_BM_21',56,2370),(2376,'F_TD_01',69,2375),(2377,'F_TD_02',35,2375),(2379,'F_BM_21',54,2378),(2384,'F_TD_01',74,2383),(2385,'F_TD_02',38,2383),(2387,'F_BM_21',62,2386),(2392,'F_TD_01',80,2391),(2393,'F_TD_02',40,2391),(2395,'F_BM_21',70,2394),(2400,'F_TD_01',78,2399),(2401,'F_TD_02',40,2399),(2403,'F_BM_21',68,2402),(2408,'F_TD_01',77,2407),(2409,'F_TD_02',39,2407),(2411,'F_BM_21',66,2410),(2416,'F_TD_01',82,2415),(2417,'F_TD_02',42,2415),(2419,'F_BM_21',124,2418),(2424,'F_TD_01',88,2423),(2425,'F_TD_02',44,2423),(2427,'F_BM_21',82,2426),(2432,'F_TD_01',86,2431),(2433,'F_TD_02',44,2431),(2435,'F_BM_21',80,2434),(2440,'F_TD_01',85,2439),(2441,'F_TD_02',43,2439),(2443,'F_BM_21',78,2442),(2448,'F_TD_01',90,2447),(2449,'F_TD_02',46,2447),(2451,'F_BM_21',86,2450),(2456,'F_TD_01',96,2455),(2457,'F_TD_02',48,2455),(2459,'F_BM_21',94,2458),(2464,'F_TD_01',94,2463),(2465,'F_TD_02',48,2463),(2467,'F_BM_21',92,2466),(2472,'F_TD_01',93,2471),(2473,'F_TD_02',47,2471),(2475,'F_BM_21',90,2474),(2480,'F_TD_01',98,2479),(2481,'F_TD_02',50,2479),(2483,'F_BM_21',98,2482),(2488,'F_TD_01',104,2487),(2489,'F_TD_02',52,2487),(2491,'F_BM_21',106,2490),(2496,'F_TD_01',102,2495),(2497,'F_TD_02',52,2495),(2499,'F_BM_21',104,2498),(2504,'F_TD_01',101,2503),(2505,'F_TD_02',51,2503),(2507,'F_BM_21',102,2506),(2512,'F_TD_01',106,2511),(2513,'F_TD_02',54,2511),(2515,'F_BM_21',160,2514),(2520,'F_TD_01',112,2519),(2521,'F_TD_02',56,2519),(2523,'F_BM_21',118,2522),(2528,'F_TD_01',66,2527),(2529,'F_TD_02',34,2527),(2531,'F_BM_21',50,2530),(2536,'F_TD_01',72,2535),(2537,'F_TD_02',36,2535),(2539,'F_BM_21',58,2538),(2544,'F_TD_01',70,2543),(2545,'F_TD_02',36,2543),(2547,'F_BM_21',56,2546),(2552,'F_TD_01',69,2551),(2553,'F_TD_02',35,2551),(2555,'F_BM_21',54,2554),(2560,'F_TD_01',74,2559),(2561,'F_TD_02',38,2559),(2563,'F_BM_21',62,2562),(2568,'F_TD_01',80,2567),(2569,'F_TD_02',40,2567),(2571,'F_BM_21',70,2570),(2576,'F_TD_01',78,2575),(2577,'F_TD_02',40,2575),(2579,'F_BM_21',68,2578),(2584,'F_TD_01',77,2583),(2585,'F_TD_02',39,2583),(2587,'F_BM_21',66,2586),(2592,'F_TD_01',82,2591),(2593,'F_TD_02',42,2591),(2595,'F_BM_21',124,2594),(2600,'F_TD_01',88,2599),(2601,'F_TD_02',44,2599),(2603,'F_BM_21',82,2602),(2608,'F_TD_01',86,2607),(2609,'F_TD_02',44,2607),(2611,'F_BM_21',80,2610),(2616,'F_TD_01',85,2615),(2617,'F_TD_02',43,2615),(2619,'F_BM_21',78,2618),(2624,'F_TD_01',90,2623),(2625,'F_TD_02',46,2623),(2627,'F_BM_21',86,2626),(2632,'F_TD_01',96,2631),(2633,'F_TD_02',48,2631),(2635,'F_BM_21',94,2634),(2640,'F_TD_01',94,2639),(2641,'F_TD_02',48,2639),(2643,'F_BM_21',92,2642),(2648,'F_TD_01',93,2647),(2649,'F_TD_02',47,2647),(2651,'F_BM_21',90,2650),(2656,'F_TD_01',98,2655),(2657,'F_TD_02',50,2655),(2659,'F_BM_21',98,2658),(2664,'F_TD_01',104,2663),(2665,'F_TD_02',52,2663),(2667,'F_BM_21',106,2666),(2672,'F_TD_01',102,2671),(2673,'F_TD_02',52,2671),(2675,'F_BM_21',104,2674),(2680,'F_TD_01',101,2679),(2681,'F_TD_02',51,2679),(2683,'F_BM_21',102,2682),(2688,'F_TD_01',106,2687),(2689,'F_TD_02',54,2687),(2691,'F_BM_21',160,2690),(2696,'F_TD_01',112,2695),(2697,'F_TD_02',56,2695),(2699,'F_BM_21',118,2698),(2704,'F_TD_01',66,2703),(2705,'F_TD_02',34,2703),(2707,'F_BM_21',50,2706),(2712,'F_TD_01',72,2711),(2713,'F_TD_02',36,2711),(2715,'F_BM_21',58,2714),(2720,'F_TD_01',70,2719),(2721,'F_TD_02',36,2719),(2723,'F_BM_21',56,2722),(2728,'F_TD_01',69,2727),(2729,'F_TD_02',35,2727),(2731,'F_BM_21',54,2730),(2736,'F_TD_01',74,2735),(2737,'F_TD_02',38,2735),(2739,'F_BM_21',62,2738),(2744,'F_TD_01',80,2743),(2745,'F_TD_02',40,2743),(2747,'F_BM_21',70,2746),(2752,'F_TD_01',78,2751),(2753,'F_TD_02',40,2751),(2755,'F_BM_21',68,2754),(2760,'F_TD_01',77,2759),(2761,'F_TD_02',39,2759),(2763,'F_BM_21',66,2762),(2768,'F_TD_01',82,2767),(2769,'F_TD_02',42,2767),(2771,'F_BM_21',124,2770),(2776,'F_TD_01',88,2775),(2777,'F_TD_02',44,2775),(2779,'F_BM_21',82,2778),(2784,'F_TD_01',86,2783),(2785,'F_TD_02',44,2783),(2787,'F_BM_21',80,2786),(2792,'F_TD_01',85,2791),(2793,'F_TD_02',43,2791),(2795,'F_BM_21',78,2794),(2800,'F_TD_01',90,2799),(2801,'F_TD_02',46,2799),(2803,'F_BM_21',86,2802),(2808,'F_TD_01',96,2807),(2809,'F_TD_02',48,2807),(2811,'F_BM_21',94,2810),(2816,'F_TD_01',94,2815),(2817,'F_TD_02',48,2815),(2819,'F_BM_21',92,2818),(2824,'F_TD_01',93,2823),(2825,'F_TD_02',47,2823),(2827,'F_BM_21',90,2826),(2832,'F_TD_01',98,2831),(2833,'F_TD_02',50,2831),(2835,'F_BM_21',98,2834),(2840,'F_TD_01',104,2839),(2841,'F_TD_02',52,2839),(2843,'F_BM_21',106,2842),(2848,'F_TD_01',102,2847),(2849,'F_TD_02',52,2847),(2851,'F_BM_21',104,2850),(2856,'F_TD_01',101,2855),(2857,'F_TD_02',51,2855),(2859,'F_BM_21',102,2858),(2864,'F_TD_01',106,2863),(2865,'F_TD_02',54,2863),(2867,'F_BM_21',160,2866),(2872,'F_TD_01',112,2871),(2873,'F_TD_02',56,2871),(2875,'F_BM_21',118,2874),(2880,'F_TD_01',66,2879),(2881,'F_TD_02',34,2879),(2883,'F_BM_21',50,2882),(2888,'F_TD_01',72,2887),(2889,'F_TD_02',36,2887),(2891,'F_BM_21',58,2890),(2896,'F_TD_01',70,2895),(2897,'F_TD_02',36,2895),(2899,'F_BM_21',56,2898),(2904,'F_TD_01',69,2903),(2905,'F_TD_02',35,2903),(2907,'F_BM_21',54,2906),(2912,'F_TD_01',74,2911),(2913,'F_TD_02',38,2911),(2915,'F_BM_21',62,2914),(2920,'F_TD_01',80,2919),(2921,'F_TD_02',40,2919),(2923,'F_BM_21',70,2922),(2928,'F_TD_01',78,2927),(2929,'F_TD_02',40,2927),(2931,'F_BM_21',68,2930),(2936,'F_TD_01',77,2935),(2937,'F_TD_02',39,2935),(2939,'F_BM_21',66,2938),(2944,'F_TD_01',82,2943),(2945,'F_TD_02',42,2943),(2947,'F_BM_21',124,2946),(2952,'F_TD_01',88,2951),(2953,'F_TD_02',44,2951),(2955,'F_BM_21',82,2954),(2960,'F_TD_01',86,2959),(2961,'F_TD_02',44,2959),(2963,'F_BM_21',80,2962),(2968,'F_TD_01',85,2967),(2969,'F_TD_02',43,2967),(2971,'F_BM_21',78,2970),(2976,'F_TD_01',90,2975),(2977,'F_TD_02',46,2975),(2979,'F_BM_21',86,2978),(2984,'F_TD_01',96,2983),(2985,'F_TD_02',48,2983),(2987,'F_BM_21',94,2986),(2992,'F_TD_01',94,2991),(2993,'F_TD_02',48,2991),(2995,'F_BM_21',92,2994),(3000,'F_TD_01',93,2999),(3001,'F_TD_02',47,2999),(3003,'F_BM_21',90,3002),(3008,'F_TD_01',98,3007),(3009,'F_TD_02',50,3007),(3011,'F_BM_21',98,3010),(3016,'F_TD_01',104,3015),(3017,'F_TD_02',52,3015),(3019,'F_BM_21',106,3018),(3024,'F_TD_01',102,3023),(3025,'F_TD_02',52,3023),(3027,'F_BM_21',104,3026),(3032,'F_TD_01',101,3031),(3033,'F_TD_02',51,3031),(3035,'F_BM_21',102,3034),(3040,'F_TD_01',106,3039),(3041,'F_TD_02',54,3039),(3043,'F_BM_21',160,3042),(3048,'F_TD_01',112,3047),(3049,'F_TD_02',56,3047),(3051,'F_BM_21',118,3050),(3056,'F_TD_01',66,3055),(3057,'F_TD_02',34,3055),(3059,'F_BM_21',50,3058),(3064,'F_TD_01',72,3063),(3065,'F_TD_02',36,3063),(3067,'F_BM_21',58,3066),(3072,'F_TD_01',70,3071),(3073,'F_TD_02',36,3071),(3075,'F_BM_21',56,3074),(3080,'F_TD_01',69,3079),(3081,'F_TD_02',35,3079),(3083,'F_BM_21',54,3082),(3088,'F_TD_01',74,3087),(3089,'F_TD_02',38,3087),(3091,'F_BM_21',62,3090),(3096,'F_TD_01',80,3095),(3097,'F_TD_02',40,3095),(3099,'F_BM_21',70,3098),(3104,'F_TD_01',78,3103),(3105,'F_TD_02',40,3103),(3107,'F_BM_21',68,3106),(3112,'F_TD_01',77,3111),(3113,'F_TD_02',39,3111),(3115,'F_BM_21',66,3114),(3120,'F_TD_01',82,3119),(3121,'F_TD_02',42,3119),(3123,'F_BM_21',124,3122),(3128,'F_TD_01',88,3127),(3129,'F_TD_02',44,3127),(3131,'F_BM_21',82,3130),(3136,'F_TD_01',86,3135),(3137,'F_TD_02',44,3135),(3139,'F_BM_21',80,3138),(3144,'F_TD_01',85,3143),(3145,'F_TD_02',43,3143),(3147,'F_BM_21',78,3146),(3152,'F_TD_01',90,3151),(3153,'F_TD_02',46,3151),(3155,'F_BM_21',86,3154),(3160,'F_TD_01',96,3159),(3161,'F_TD_02',48,3159),(3163,'F_BM_21',94,3162),(3168,'F_TD_01',94,3167),(3169,'F_TD_02',48,3167),(3171,'F_BM_21',92,3170),(3176,'F_TD_01',93,3175),(3177,'F_TD_02',47,3175),(3179,'F_BM_21',90,3178),(3184,'F_TD_01',98,3183),(3185,'F_TD_02',50,3183),(3187,'F_BM_21',98,3186),(3192,'F_TD_01',104,3191),(3193,'F_TD_02',52,3191),(3195,'F_BM_21',106,3194),(3200,'F_TD_01',102,3199),(3201,'F_TD_02',52,3199),(3203,'F_BM_21',104,3202),(3208,'F_TD_01',101,3207),(3209,'F_TD_02',51,3207),(3211,'F_BM_21',102,3210),(3216,'F_TD_01',106,3215),(3217,'F_TD_02',54,3215),(3219,'F_BM_21',160,3218),(3224,'F_TD_01',112,3223),(3225,'F_TD_02',56,3223),(3227,'F_BM_21',118,3226),(3232,'F_TD_01',66,3231),(3233,'F_TD_02',34,3231),(3235,'F_BM_21',50,3234),(3240,'F_TD_01',72,3239),(3241,'F_TD_02',36,3239),(3243,'F_BM_21',58,3242),(3248,'F_TD_01',70,3247),(3249,'F_TD_02',36,3247),(3251,'F_BM_21',56,3250),(3256,'F_TD_01',69,3255),(3257,'F_TD_02',35,3255),(3259,'F_BM_21',54,3258),(3264,'F_TD_01',74,3263),(3265,'F_TD_02',38,3263),(3267,'F_BM_21',62,3266),(3272,'F_TD_01',80,3271),(3273,'F_TD_02',40,3271),(3275,'F_BM_21',70,3274),(3280,'F_TD_01',78,3279),(3281,'F_TD_02',40,3279),(3283,'F_BM_21',68,3282),(3288,'F_TD_01',77,3287),(3289,'F_TD_02',39,3287),(3291,'F_BM_21',66,3290),(3296,'F_TD_01',82,3295),(3297,'F_TD_02',42,3295),(3299,'F_BM_21',124,3298),(3304,'F_TD_01',88,3303),(3305,'F_TD_02',44,3303),(3307,'F_BM_21',82,3306),(3312,'F_TD_01',86,3311),(3313,'F_TD_02',44,3311),(3315,'F_BM_21',80,3314),(3320,'F_TD_01',85,3319),(3321,'F_TD_02',43,3319),(3323,'F_BM_21',78,3322),(3328,'F_TD_01',90,3327),(3329,'F_TD_02',46,3327),(3331,'F_BM_21',86,3330),(3336,'F_TD_01',96,3335),(3337,'F_TD_02',48,3335),(3339,'F_BM_21',94,3338),(3344,'F_TD_01',94,3343),(3345,'F_TD_02',48,3343),(3347,'F_BM_21',92,3346),(3352,'F_TD_01',93,3351),(3353,'F_TD_02',47,3351),(3355,'F_BM_21',90,3354),(3360,'F_TD_01',98,3359),(3361,'F_TD_02',50,3359),(3363,'F_BM_21',98,3362),(3368,'F_TD_01',104,3367),(3369,'F_TD_02',52,3367),(3371,'F_BM_21',106,3370),(3376,'F_TD_01',102,3375),(3377,'F_TD_02',52,3375),(3379,'F_BM_21',104,3378),(3384,'F_TD_01',101,3383),(3385,'F_TD_02',51,3383),(3387,'F_BM_21',102,3386),(3392,'F_TD_01',106,3391),(3393,'F_TD_02',54,3391),(3395,'F_BM_21',160,3394),(3400,'F_TD_01',112,3399),(3401,'F_TD_02',56,3399),(3403,'F_BM_21',118,3402),(3452,'F_TD_01',66,3451),(3453,'F_TD_02',34,3451),(3455,'F_BM_21',50,3454),(3460,'F_TD_01',72,3459),(3461,'F_TD_02',36,3459),(3463,'F_BM_21',58,3462),(3468,'F_TD_01',70,3467),(3469,'F_TD_02',36,3467),(3471,'F_BM_21',56,3470),(3476,'F_TD_01',69,3475),(3477,'F_TD_02',35,3475),(3479,'F_BM_21',54,3478),(3484,'F_TD_01',74,3483),(3485,'F_TD_02',38,3483),(3487,'F_BM_21',62,3486),(3492,'F_TD_01',80,3491),(3493,'F_TD_02',40,3491),(3495,'F_BM_21',70,3494),(3500,'F_TD_01',78,3499),(3501,'F_TD_02',40,3499),(3503,'F_BM_21',68,3502),(3508,'F_TD_01',77,3507),(3509,'F_TD_02',39,3507),(3511,'F_BM_21',66,3510),(3516,'F_TD_01',82,3515),(3517,'F_TD_02',42,3515),(3519,'F_BM_21',124,3518),(3524,'F_TD_01',88,3523),(3525,'F_TD_02',44,3523),(3527,'F_BM_21',82,3526),(3532,'F_TD_01',86,3531),(3533,'F_TD_02',44,3531),(3535,'F_BM_21',80,3534),(3540,'F_TD_01',85,3539),(3541,'F_TD_02',43,3539),(3543,'F_BM_21',78,3542),(3548,'F_TD_01',90,3547),(3549,'F_TD_02',46,3547),(3551,'F_BM_21',86,3550),(3556,'F_TD_01',96,3555),(3557,'F_TD_02',48,3555),(3559,'F_BM_21',94,3558),(3564,'F_TD_01',94,3563),(3565,'F_TD_02',48,3563),(3567,'F_BM_21',92,3566),(3572,'F_TD_01',93,3571),(3573,'F_TD_02',47,3571),(3575,'F_BM_21',90,3574),(3580,'F_TD_01',98,3579),(3581,'F_TD_02',50,3579),(3583,'F_BM_21',98,3582),(3588,'F_TD_01',104,3587),(3589,'F_TD_02',52,3587),(3591,'F_BM_21',106,3590),(3596,'F_TD_01',102,3595),(3597,'F_TD_02',52,3595),(3599,'F_BM_21',104,3598),(3604,'F_TD_01',101,3603),(3605,'F_TD_02',51,3603),(3607,'F_BM_21',102,3606),(3612,'F_TD_01',106,3611),(3613,'F_TD_02',54,3611),(3615,'F_BM_21',160,3614),(3620,'F_TD_01',112,3619),(3621,'F_TD_02',56,3619),(3623,'F_BM_21',118,3622),(3628,'F_TD_01',66,3627),(3629,'F_TD_02',34,3627),(3631,'F_BM_21',50,3630),(3636,'F_TD_01',72,3635),(3637,'F_TD_02',36,3635),(3639,'F_BM_21',58,3638),(3644,'F_TD_01',70,3643),(3645,'F_TD_02',36,3643),(3647,'F_BM_21',56,3646),(3652,'F_TD_01',69,3651),(3653,'F_TD_02',35,3651),(3655,'F_BM_21',54,3654),(3660,'F_TD_01',74,3659),(3661,'F_TD_02',38,3659),(3663,'F_BM_21',62,3662),(3668,'F_TD_01',80,3667),(3669,'F_TD_02',40,3667),(3671,'F_BM_21',70,3670),(3676,'F_TD_01',78,3675),(3677,'F_TD_02',40,3675),(3679,'F_BM_21',68,3678),(3684,'F_TD_01',77,3683),(3685,'F_TD_02',39,3683),(3687,'F_BM_21',66,3686),(3692,'F_TD_01',82,3691),(3693,'F_TD_02',42,3691),(3695,'F_BM_21',124,3694),(3700,'F_TD_01',88,3699),(3701,'F_TD_02',44,3699),(3703,'F_BM_21',82,3702),(3708,'F_TD_01',86,3707),(3709,'F_TD_02',44,3707),(3711,'F_BM_21',80,3710),(3716,'F_TD_01',85,3715),(3717,'F_TD_02',43,3715),(3719,'F_BM_21',78,3718),(3724,'F_TD_01',90,3723),(3725,'F_TD_02',46,3723),(3727,'F_BM_21',86,3726),(3732,'F_TD_01',96,3731),(3733,'F_TD_02',48,3731),(3735,'F_BM_21',94,3734),(3740,'F_TD_01',94,3739),(3741,'F_TD_02',48,3739),(3743,'F_BM_21',92,3742),(3748,'F_TD_01',93,3747),(3749,'F_TD_02',47,3747),(3751,'F_BM_21',90,3750),(3756,'F_TD_01',98,3755),(3757,'F_TD_02',50,3755),(3759,'F_BM_21',98,3758),(3764,'F_TD_01',104,3763),(3765,'F_TD_02',52,3763),(3767,'F_BM_21',106,3766),(3772,'F_TD_01',102,3771),(3773,'F_TD_02',52,3771),(3775,'F_BM_21',104,3774),(3780,'F_TD_01',101,3779),(3781,'F_TD_02',51,3779),(3783,'F_BM_21',102,3782),(3788,'F_TD_01',106,3787),(3789,'F_TD_02',54,3787),(3791,'F_BM_21',160,3790),(3796,'F_TD_01',112,3795),(3797,'F_TD_02',56,3795),(3799,'F_BM_21',118,3798),(3804,'F_TD_01',66,3803),(3805,'F_TD_02',34,3803),(3807,'F_BM_21',50,3806),(3812,'F_TD_01',72,3811),(3813,'F_TD_02',36,3811),(3815,'F_BM_21',58,3814),(3820,'F_TD_01',70,3819),(3821,'F_TD_02',36,3819),(3823,'F_BM_21',56,3822),(3828,'F_TD_01',69,3827),(3829,'F_TD_02',35,3827),(3831,'F_BM_21',54,3830),(3836,'F_TD_01',74,3835),(3837,'F_TD_02',38,3835),(3839,'F_BM_21',62,3838),(3844,'F_TD_01',80,3843),(3845,'F_TD_02',40,3843),(3847,'F_BM_21',70,3846),(3852,'F_TD_01',78,3851),(3853,'F_TD_02',40,3851),(3855,'F_BM_21',68,3854),(3860,'F_TD_01',77,3859),(3861,'F_TD_02',39,3859),(3863,'F_BM_21',66,3862),(3868,'F_TD_01',82,3867),(3869,'F_TD_02',42,3867),(3871,'F_BM_21',124,3870),(3876,'F_TD_01',88,3875),(3877,'F_TD_02',44,3875),(3879,'F_BM_21',82,3878),(3884,'F_TD_01',86,3883),(3885,'F_TD_02',44,3883),(3887,'F_BM_21',80,3886),(3892,'F_TD_01',85,3891),(3893,'F_TD_02',43,3891),(3895,'F_BM_21',78,3894),(3900,'F_TD_01',90,3899),(3901,'F_TD_02',46,3899),(3903,'F_BM_21',86,3902),(3908,'F_TD_01',96,3907),(3909,'F_TD_02',48,3907),(3911,'F_BM_21',94,3910),(3916,'F_TD_01',94,3915),(3917,'F_TD_02',48,3915),(3919,'F_BM_21',92,3918),(3924,'F_TD_01',93,3923),(3925,'F_TD_02',47,3923),(3927,'F_BM_21',90,3926),(3932,'F_TD_01',98,3931),(3933,'F_TD_02',50,3931),(3935,'F_BM_21',98,3934),(3940,'F_TD_01',104,3939),(3941,'F_TD_02',52,3939),(3943,'F_BM_21',106,3942),(3948,'F_TD_01',102,3947),(3949,'F_TD_02',52,3947),(3951,'F_BM_21',104,3950),(3956,'F_TD_01',101,3955),(3957,'F_TD_02',51,3955),(3959,'F_BM_21',102,3958),(3964,'F_TD_01',106,3963),(3965,'F_TD_02',54,3963),(3967,'F_BM_21',160,3966),(3972,'F_TD_01',112,3971),(3973,'F_TD_02',56,3971),(3975,'F_BM_21',118,3974),(3980,'F_TD_01',66,3979),(3981,'F_TD_02',34,3979),(3983,'F_BM_21',50,3982),(3988,'F_TD_01',72,3987),(3989,'F_TD_02',36,3987),(3991,'F_BM_21',58,3990),(3996,'F_TD_01',70,3995),(3997,'F_TD_02',36,3995),(3999,'F_BM_21',56,3998),(4004,'F_TD_01',69,4003),(4005,'F_TD_02',35,4003),(4007,'F_BM_21',54,4006),(4012,'F_TD_01',74,4011),(4013,'F_TD_02',38,4011),(4015,'F_BM_21',62,4014),(4020,'F_TD_01',80,4019),(4021,'F_TD_02',40,4019),(4023,'F_BM_21',70,4022),(4028,'F_TD_01',78,4027),(4029,'F_TD_02',40,4027),(4031,'F_BM_21',68,4030),(4036,'F_TD_01',77,4035),(4037,'F_TD_02',39,4035),(4039,'F_BM_21',66,4038),(4044,'F_TD_01',82,4043),(4045,'F_TD_02',42,4043),(4047,'F_BM_21',124,4046),(4052,'F_TD_01',88,4051),(4053,'F_TD_02',44,4051),(4055,'F_BM_21',82,4054),(4060,'F_TD_01',86,4059),(4061,'F_TD_02',44,4059),(4063,'F_BM_21',80,4062),(4068,'F_TD_01',85,4067),(4069,'F_TD_02',43,4067),(4071,'F_BM_21',78,4070),(4076,'F_TD_01',90,4075),(4077,'F_TD_02',46,4075),(4079,'F_BM_21',86,4078),(4084,'F_TD_01',96,4083),(4085,'F_TD_02',48,4083),(4087,'F_BM_21',94,4086),(4092,'F_TD_01',94,4091),(4093,'F_TD_02',48,4091),(4095,'F_BM_21',92,4094),(4100,'F_TD_01',93,4099),(4101,'F_TD_02',47,4099),(4103,'F_BM_21',90,4102),(4108,'F_TD_01',98,4107),(4109,'F_TD_02',50,4107),(4111,'F_BM_21',98,4110),(4116,'F_TD_01',104,4115),(4117,'F_TD_02',52,4115),(4119,'F_BM_21',106,4118),(4124,'F_TD_01',102,4123),(4125,'F_TD_02',52,4123),(4127,'F_BM_21',104,4126),(4132,'F_TD_01',101,4131),(4133,'F_TD_02',51,4131),(4135,'F_BM_21',102,4134),(4140,'F_TD_01',106,4139),(4141,'F_TD_02',54,4139),(4143,'F_BM_21',160,4142),(4148,'F_TD_01',112,4147),(4149,'F_TD_02',56,4147),(4151,'F_BM_21',118,4150),(4156,'F_TD_01',66,4155),(4157,'F_TD_02',34,4155),(4159,'F_BM_21',50,4158),(4164,'F_TD_01',72,4163),(4165,'F_TD_02',36,4163),(4167,'F_BM_21',58,4166),(4172,'F_TD_01',70,4171),(4173,'F_TD_02',36,4171),(4175,'F_BM_21',56,4174),(4180,'F_TD_01',69,4179),(4181,'F_TD_02',35,4179),(4183,'F_BM_21',54,4182),(4188,'F_TD_01',74,4187),(4189,'F_TD_02',38,4187),(4191,'F_BM_21',62,4190),(4196,'F_TD_01',80,4195),(4197,'F_TD_02',40,4195),(4199,'F_BM_21',70,4198),(4204,'F_TD_01',78,4203),(4205,'F_TD_02',40,4203),(4207,'F_BM_21',68,4206),(4212,'F_TD_01',77,4211),(4213,'F_TD_02',39,4211),(4215,'F_BM_21',66,4214),(4220,'F_TD_01',82,4219),(4221,'F_TD_02',42,4219),(4223,'F_BM_21',124,4222),(4228,'F_TD_01',88,4227),(4229,'F_TD_02',44,4227),(4231,'F_BM_21',82,4230),(4236,'F_TD_01',86,4235),(4237,'F_TD_02',44,4235),(4239,'F_BM_21',80,4238),(4244,'F_TD_01',85,4243),(4245,'F_TD_02',43,4243),(4247,'F_BM_21',78,4246),(4252,'F_TD_01',90,4251),(4253,'F_TD_02',46,4251),(4255,'F_BM_21',86,4254),(4260,'F_TD_01',96,4259),(4261,'F_TD_02',48,4259),(4263,'F_BM_21',94,4262),(4268,'F_TD_01',94,4267),(4269,'F_TD_02',48,4267),(4271,'F_BM_21',92,4270),(4276,'F_TD_01',93,4275),(4277,'F_TD_02',47,4275),(4279,'F_BM_21',90,4278),(4284,'F_TD_01',98,4283),(4285,'F_TD_02',50,4283),(4287,'F_BM_21',98,4286),(4292,'F_TD_01',104,4291),(4293,'F_TD_02',52,4291),(4295,'F_BM_21',106,4294),(4300,'F_TD_01',102,4299),(4301,'F_TD_02',52,4299),(4303,'F_BM_21',104,4302),(4308,'F_TD_01',101,4307),(4309,'F_TD_02',51,4307),(4311,'F_BM_21',102,4310),(4316,'F_TD_01',106,4315),(4317,'F_TD_02',54,4315),(4319,'F_BM_21',160,4318),(4324,'F_TD_01',112,4323),(4325,'F_TD_02',56,4323),(4327,'F_BM_21',118,4326),(4332,'F_TD_01',66,4331),(4333,'F_TD_02',34,4331),(4335,'F_BM_21',50,4334),(4340,'F_TD_01',72,4339),(4341,'F_TD_02',36,4339),(4343,'F_BM_21',58,4342),(4348,'F_TD_01',70,4347),(4349,'F_TD_02',36,4347),(4351,'F_BM_21',56,4350),(4356,'F_TD_01',69,4355),(4357,'F_TD_02',35,4355),(4359,'F_BM_21',54,4358),(4364,'F_TD_01',74,4363),(4365,'F_TD_02',38,4363),(4367,'F_BM_21',62,4366),(4372,'F_TD_01',80,4371),(4373,'F_TD_02',40,4371),(4375,'F_BM_21',70,4374),(4380,'F_TD_01',78,4379),(4381,'F_TD_02',40,4379),(4383,'F_BM_21',68,4382),(4388,'F_TD_01',77,4387),(4389,'F_TD_02',39,4387),(4391,'F_BM_21',66,4390),(4396,'F_TD_01',82,4395),(4397,'F_TD_02',42,4395),(4399,'F_BM_21',124,4398),(4404,'F_TD_01',88,4403),(4405,'F_TD_02',44,4403),(4407,'F_BM_21',82,4406),(4412,'F_TD_01',86,4411),(4413,'F_TD_02',44,4411),(4415,'F_BM_21',80,4414),(4420,'F_TD_01',85,4419),(4421,'F_TD_02',43,4419),(4423,'F_BM_21',78,4422),(4428,'F_TD_01',90,4427),(4429,'F_TD_02',46,4427),(4431,'F_BM_21',86,4430),(4436,'F_TD_01',96,4435),(4437,'F_TD_02',48,4435),(4439,'F_BM_21',94,4438),(4444,'F_TD_01',94,4443),(4445,'F_TD_02',48,4443),(4447,'F_BM_21',92,4446),(4452,'F_TD_01',93,4451),(4453,'F_TD_02',47,4451),(4455,'F_BM_21',90,4454),(4460,'F_TD_01',98,4459),(4461,'F_TD_02',50,4459),(4463,'F_BM_21',98,4462),(4468,'F_TD_01',104,4467),(4469,'F_TD_02',52,4467),(4471,'F_BM_21',106,4470),(4476,'F_TD_01',102,4475),(4477,'F_TD_02',52,4475),(4479,'F_BM_21',104,4478),(4484,'F_TD_01',101,4483),(4485,'F_TD_02',51,4483),(4487,'F_BM_21',102,4486),(4492,'F_TD_01',106,4491),(4493,'F_TD_02',54,4491),(4495,'F_BM_21',160,4494),(4500,'F_TD_01',112,4499),(4501,'F_TD_02',56,4499),(4503,'F_BM_21',118,4502),(7579,'F_BM_21',1,7578),(7919,'K_MI_04',1,7918),(7928,'K_MI_17',1,7927),(9052,'F_TD_01',66,9051),(9053,'F_TD_02',34,9051),(9055,'F_BM_21',50,9054),(9058,'F_TD_01',72,9057),(9059,'F_TD_02',36,9057),(9061,'F_BM_21',58,9060),(9064,'F_TD_01',70,9063),(9065,'F_TD_02',36,9063),(9067,'F_BM_21',56,9066),(9070,'F_TD_01',69,9069),(9071,'F_TD_02',35,9069),(9073,'F_BM_21',54,9072),(9076,'F_TD_01',74,9075),(9077,'F_TD_02',38,9075),(9079,'F_BM_21',62,9078),(9082,'F_TD_01',80,9081),(9083,'F_TD_02',40,9081),(9085,'F_BM_21',70,9084),(9088,'F_TD_01',78,9087),(9089,'F_TD_02',40,9087),(9091,'F_BM_21',68,9090),(9094,'F_TD_01',77,9093),(9095,'F_TD_02',39,9093),(9097,'F_BM_21',66,9096),(9100,'F_TD_01',82,9099),(9101,'F_TD_02',42,9099),(9103,'F_BM_21',124,9102),(9106,'F_TD_01',88,9105),(9107,'F_TD_02',44,9105),(9109,'F_BM_21',82,9108),(9112,'F_TD_01',86,9111),(9113,'F_TD_02',44,9111),(9115,'F_BM_21',80,9114),(9118,'F_TD_01',85,9117),(9119,'F_TD_02',43,9117),(9121,'F_BM_21',78,9120),(9124,'F_TD_01',90,9123),(9125,'F_TD_02',46,9123),(9127,'F_BM_21',86,9126),(9130,'F_TD_01',96,9129),(9131,'F_TD_02',48,9129),(9133,'F_BM_21',94,9132),(9136,'F_TD_01',94,9135),(9137,'F_TD_02',48,9135),(9139,'F_BM_21',92,9138),(9142,'F_TD_01',93,9141),(9143,'F_TD_02',47,9141),(9145,'F_BM_21',90,9144),(9148,'F_TD_01',98,9147),(9149,'F_TD_02',50,9147),(9151,'F_BM_21',98,9150),(9154,'F_TD_01',104,9153),(9155,'F_TD_02',52,9153),(9157,'F_BM_21',106,9156),(9160,'F_TD_01',102,9159),(9161,'F_TD_02',52,9159),(9163,'F_BM_21',104,9162),(9166,'F_TD_01',101,9165),(9167,'F_TD_02',51,9165),(9169,'F_BM_21',102,9168),(9172,'F_TD_01',106,9171),(9173,'F_TD_02',54,9171),(9175,'F_BM_21',160,9174),(9178,'F_TD_01',112,9177),(9179,'F_TD_02',56,9177),(9181,'F_BM_21',118,9180),(9184,'F_TD_01',110,9183),(9185,'F_TD_02',56,9183),(9187,'F_BM_21',116,9186),(9190,'F_TD_01',66,9189),(9191,'F_TD_02',34,9189),(9193,'F_BM_21',50,9192),(9196,'F_TD_01',72,9195),(9197,'F_TD_02',36,9195),(9199,'F_BM_21',58,9198),(9202,'F_TD_01',70,9201),(9203,'F_TD_02',36,9201),(9205,'F_BM_21',56,9204),(9208,'F_TD_01',69,9207),(9209,'F_TD_02',35,9207),(9211,'F_BM_21',54,9210),(9214,'F_TD_01',74,9213),(9215,'F_TD_02',38,9213),(9217,'F_BM_21',62,9216),(9220,'F_TD_01',80,9219),(9221,'F_TD_02',40,9219),(9223,'F_BM_21',70,9222),(9226,'F_TD_01',78,9225),(9227,'F_TD_02',40,9225),(9229,'F_BM_21',68,9228),(9232,'F_TD_01',77,9231),(9233,'F_TD_02',39,9231),(9235,'F_BM_21',66,9234),(9238,'F_TD_01',82,9237),(9239,'F_TD_02',42,9237),(9241,'F_BM_21',124,9240),(9244,'F_TD_01',88,9243),(9245,'F_TD_02',44,9243),(9247,'F_BM_21',82,9246),(9250,'F_TD_01',86,9249),(9251,'F_TD_02',44,9249),(9253,'F_BM_21',80,9252),(9256,'F_TD_01',85,9255),(9257,'F_TD_02',43,9255),(9259,'F_BM_21',78,9258),(9262,'F_TD_01',90,9261),(9263,'F_TD_02',46,9261),(9265,'F_BM_21',86,9264),(9268,'F_TD_01',96,9267),(9269,'F_TD_02',48,9267),(9271,'F_BM_21',94,9270),(9274,'F_TD_01',94,9273),(9275,'F_TD_02',48,9273),(9277,'F_BM_21',92,9276),(9280,'F_TD_01',93,9279),(9281,'F_TD_02',47,9279),(9283,'F_BM_21',90,9282),(9286,'F_TD_01',98,9285),(9287,'F_TD_02',50,9285),(9289,'F_BM_21',98,9288),(9292,'F_TD_01',104,9291),(9293,'F_TD_02',52,9291),(9295,'F_BM_21',106,9294),(9298,'F_TD_01',102,9297),(9299,'F_TD_02',52,9297),(9301,'F_BM_21',104,9300),(9304,'F_TD_01',101,9303),(9305,'F_TD_02',51,9303),(9307,'F_BM_21',102,9306),(9310,'F_TD_01',106,9309),(9311,'F_TD_02',54,9309),(9313,'F_BM_21',160,9312),(9316,'F_TD_01',112,9315),(9317,'F_TD_02',56,9315),(9319,'F_BM_21',118,9318),(9322,'F_TD_01',110,9321),(9323,'F_TD_02',56,9321),(9325,'F_BM_21',116,9324),(9328,'F_TD_01',66,9327),(9329,'F_TD_02',34,9327),(9331,'F_BM_21',50,9330),(9334,'F_TD_01',72,9333),(9335,'F_TD_02',36,9333),(9337,'F_BM_21',58,9336),(9340,'F_TD_01',70,9339),(9341,'F_TD_02',36,9339),(9343,'F_BM_21',56,9342),(9346,'F_TD_01',69,9345),(9347,'F_TD_02',35,9345),(9349,'F_BM_21',54,9348),(9352,'F_TD_01',74,9351),(9353,'F_TD_02',38,9351),(9355,'F_BM_21',62,9354),(9358,'F_TD_01',80,9357),(9359,'F_TD_02',40,9357),(9361,'F_BM_21',70,9360),(9364,'F_TD_01',78,9363),(9365,'F_TD_02',40,9363),(9367,'F_BM_21',68,9366),(9370,'F_TD_01',77,9369),(9371,'F_TD_02',39,9369),(9373,'F_BM_21',66,9372),(9376,'F_TD_01',82,9375),(9377,'F_TD_02',42,9375),(9379,'F_BM_21',124,9378),(9382,'F_TD_01',88,9381),(9383,'F_TD_02',44,9381),(9385,'F_BM_21',82,9384),(9388,'F_TD_01',86,9387),(9389,'F_TD_02',44,9387),(9391,'F_BM_21',80,9390),(9394,'F_TD_01',85,9393),(9395,'F_TD_02',43,9393),(9397,'F_BM_21',78,9396),(9400,'F_TD_01',90,9399),(9401,'F_TD_02',46,9399),(9403,'F_BM_21',86,9402),(9406,'F_TD_01',96,9405),(9407,'F_TD_02',48,9405),(9409,'F_BM_21',94,9408),(9412,'F_TD_01',94,9411),(9413,'F_TD_02',48,9411),(9415,'F_BM_21',92,9414),(9418,'F_TD_01',93,9417),(9419,'F_TD_02',47,9417),(9421,'F_BM_21',90,9420),(9424,'F_TD_01',98,9423),(9425,'F_TD_02',50,9423),(9427,'F_BM_21',98,9426),(9430,'F_TD_01',104,9429),(9431,'F_TD_02',52,9429),(9433,'F_BM_21',106,9432),(9436,'F_TD_01',102,9435),(9437,'F_TD_02',52,9435),(9439,'F_BM_21',104,9438),(9442,'F_TD_01',101,9441),(9443,'F_TD_02',51,9441),(9445,'F_BM_21',102,9444),(9448,'F_TD_01',106,9447),(9449,'F_TD_02',54,9447),(9451,'F_BM_21',160,9450),(9454,'F_TD_01',112,9453),(9455,'F_TD_02',56,9453),(9457,'F_BM_21',118,9456),(9460,'F_TD_01',110,9459),(9461,'F_TD_02',56,9459),(9463,'F_BM_21',116,9462),(9466,'F_TD_01',66,9465),(9467,'F_TD_02',34,9465),(9469,'F_BM_21',50,9468),(9472,'F_TD_01',72,9471),(9473,'F_TD_02',36,9471),(9475,'F_BM_21',58,9474),(9478,'F_TD_01',70,9477),(9479,'F_TD_02',36,9477),(9481,'F_BM_21',56,9480),(9484,'F_TD_01',69,9483),(9485,'F_TD_02',35,9483),(9487,'F_BM_21',54,9486),(9490,'F_TD_01',74,9489),(9491,'F_TD_02',38,9489),(9493,'F_BM_21',62,9492),(9496,'F_TD_01',80,9495),(9497,'F_TD_02',40,9495),(9499,'F_BM_21',70,9498),(9502,'F_TD_01',78,9501),(9503,'F_TD_02',40,9501),(9505,'F_BM_21',68,9504),(9508,'F_TD_01',77,9507),(9509,'F_TD_02',39,9507),(9511,'F_BM_21',66,9510),(9514,'F_TD_01',82,9513),(9515,'F_TD_02',42,9513),(9517,'F_BM_21',124,9516),(9520,'F_TD_01',88,9519),(9521,'F_TD_02',44,9519),(9523,'F_BM_21',82,9522),(9526,'F_TD_01',86,9525),(9527,'F_TD_02',44,9525),(9529,'F_BM_21',80,9528),(9532,'F_TD_01',85,9531),(9533,'F_TD_02',43,9531),(9535,'F_BM_21',78,9534),(9538,'F_TD_01',90,9537),(9539,'F_TD_02',46,9537),(9541,'F_BM_21',86,9540),(9544,'F_TD_01',96,9543),(9545,'F_TD_02',48,9543),(9547,'F_BM_21',94,9546),(9550,'F_TD_01',94,9549),(9551,'F_TD_02',48,9549),(9553,'F_BM_21',92,9552),(9556,'F_TD_01',93,9555),(9557,'F_TD_02',47,9555),(9559,'F_BM_21',90,9558),(9562,'F_TD_01',98,9561),(9563,'F_TD_02',50,9561),(9565,'F_BM_21',98,9564),(9568,'F_TD_01',104,9567),(9569,'F_TD_02',52,9567),(9571,'F_BM_21',106,9570),(9574,'F_TD_01',102,9573),(9575,'F_TD_02',52,9573),(9577,'F_BM_21',104,9576),(9580,'F_TD_01',101,9579),(9581,'F_TD_02',51,9579),(9583,'F_BM_21',102,9582),(9586,'F_TD_01',106,9585),(9587,'F_TD_02',54,9585),(9589,'F_BM_21',160,9588),(9592,'F_TD_01',112,9591),(9593,'F_TD_02',56,9591),(9595,'F_BM_21',118,9594),(9598,'F_TD_01',110,9597),(9599,'F_TD_02',56,9597),(9601,'F_BM_21',116,9600),(9604,'F_TD_01',66,9603),(9605,'F_TD_02',34,9603),(9607,'F_BM_21',50,9606),(9610,'F_TD_01',72,9609),(9611,'F_TD_02',36,9609),(9613,'F_BM_21',58,9612),(9616,'F_TD_01',70,9615),(9617,'F_TD_02',36,9615),(9619,'F_BM_21',56,9618),(9622,'F_TD_01',69,9621),(9623,'F_TD_02',35,9621),(9625,'F_BM_21',54,9624),(9628,'F_TD_01',74,9627),(9629,'F_TD_02',38,9627),(9631,'F_BM_21',62,9630),(9634,'F_TD_01',80,9633),(9635,'F_TD_02',40,9633),(9637,'F_BM_21',70,9636),(9640,'F_TD_01',78,9639),(9641,'F_TD_02',40,9639),(9643,'F_BM_21',68,9642),(9646,'F_TD_01',77,9645),(9647,'F_TD_02',39,9645),(9649,'F_BM_21',66,9648),(9652,'F_TD_01',82,9651),(9653,'F_TD_02',42,9651),(9655,'F_BM_21',124,9654),(9658,'F_TD_01',88,9657),(9659,'F_TD_02',44,9657),(9661,'F_BM_21',82,9660),(9664,'F_TD_01',86,9663),(9665,'F_TD_02',44,9663),(9667,'F_BM_21',80,9666),(9670,'F_TD_01',85,9669),(9671,'F_TD_02',43,9669),(9673,'F_BM_21',78,9672),(9676,'F_TD_01',90,9675),(9677,'F_TD_02',46,9675),(9679,'F_BM_21',86,9678),(9682,'F_TD_01',96,9681),(9683,'F_TD_02',48,9681),(9685,'F_BM_21',94,9684),(9688,'F_TD_01',94,9687),(9689,'F_TD_02',48,9687),(9691,'F_BM_21',92,9690),(9694,'F_TD_01',93,9693),(9695,'F_TD_02',47,9693),(9697,'F_BM_21',90,9696),(9700,'F_TD_01',98,9699),(9701,'F_TD_02',50,9699),(9703,'F_BM_21',98,9702),(9706,'F_TD_01',104,9705),(9707,'F_TD_02',52,9705),(9709,'F_BM_21',106,9708),(9712,'F_TD_01',102,9711),(9713,'F_TD_02',52,9711),(9715,'F_BM_21',104,9714),(9718,'F_TD_01',101,9717),(9719,'F_TD_02',51,9717),(9721,'F_BM_21',102,9720),(9724,'F_TD_01',106,9723),(9725,'F_TD_02',54,9723),(9727,'F_BM_21',160,9726),(9730,'F_TD_01',112,9729),(9731,'F_TD_02',56,9729),(9733,'F_BM_21',118,9732),(9736,'F_TD_01',110,9735),(9737,'F_TD_02',56,9735),(9739,'F_BM_21',116,9738);
/*!40000 ALTER TABLE `salesfigurelineitementity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesrecordentity`
--

DROP TABLE IF EXISTS `salesrecordentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salesrecordentity` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `AMOUNTDUE` double DEFAULT NULL,
  `AMOUNTPAID` double DEFAULT NULL,
  `AMOUNTPAIDUSINGPOINTS` double DEFAULT NULL,
  `CREATEDDATE` datetime DEFAULT NULL,
  `CURRENCY` varchar(255) DEFAULT NULL,
  `LOYALTYPOINTSDEDUCTED` int(11) DEFAULT NULL,
  `POSNAME` varchar(255) DEFAULT NULL,
  `RECEIPTNO` varchar(255) DEFAULT NULL,
  `SERVEDBYSTAFF` varchar(255) DEFAULT NULL,
  `MEMBER_ID` bigint(20) DEFAULT NULL,
  `STORE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SALESRECORDENTITY_MEMBER_ID` (`MEMBER_ID`),
  KEY `FK_SALESRECORDENTITY_STORE_ID` (`STORE_ID`),
  CONSTRAINT `FK_SALESRECORDENTITY_MEMBER_ID` FOREIGN KEY (`MEMBER_ID`) REFERENCES `memberentity` (`ID`),
  CONSTRAINT `FK_SALESRECORDENTITY_STORE_ID` FOREIGN KEY (`STORE_ID`) REFERENCES `storeentity` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7926 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesrecordentity`
--

LOCK TABLES `salesrecordentity` WRITE;
/*!40000 ALTER TABLE `salesrecordentity` DISABLE KEYS */;
INSERT INTO `salesrecordentity` VALUES (6301,40,40,0,'2014-09-06 21:21:04','MYR',0,' Counter 1','1415280062951','Cashier 1',56,551),(6304,600,600,0,'2014-11-06 21:21:47','SGD',0,' Counter 1','1415280104191','Cashier 1',1,59),(6308,518,518,0,'2011-12-31 21:22:58','SGD',0,' Counter 1','1415280174775','Cashier 1',2,59),(6312,515,515,0,'2014-03-06 21:24:10','MYR',0,' Counter 1','1415280249579','Cashier 1',58,551),(6318,600,600,0,'2013-01-01 21:24:10','SGD',0,' Counter 1','1415280247070','Cashier 1',3,59),(6322,617,617,0,'2012-04-03 21:24:37','SGD',0,' Counter 1','1415280274180','Cashier 1',4,59),(6354,9,9,0,'2011-09-06 21:27:32','SGD',0,' Counter 1','1415280448326','Cashier 1',5,59),(6358,589,589,0,'2014-02-23 21:45:45','MYR',0,' Counter 1','1415280462401','Cashier 1',95,551),(6367,9,9,0,'2011-11-06 21:27:53','SGD',0,' Counter 1','1415280469444','Cashier 1',6,59),(6371,675,675,0,'2013-11-06 21:28:23','SGD',0,' Counter 1','1415280499701','Cashier 1',7,59),(6376,110,110,0,'2012-11-06 21:29:04','SGD',0,' Counter 1','1415280540939','Cashier 1',8,59),(6380,263,263,0,'2010-11-06 21:29:11','MYR',0,' Counter 1','1415280551801','Cashier 1',35,551),(6385,772,772,0,'2013-11-06 21:29:30','SGD',0,' Counter 1','1415280566554','Cashier 1',9,59),(6390,270,270,0,'2013-11-06 21:29:39','SGD',0,' Counter 1','1415280576195','Cashier 1',10,59),(6393,984,984,0,'2013-11-06 21:29:54','MYR',0,' Counter 1','1415280594073','Cashier 1',23,551),(6399,20,20,0,'2013-11-06 21:30:03','SGD',0,' Counter 1','1415280599910','Cashier 1',11,59),(6404,72,72,0,'2014-05-06 21:30:12','MYR',0,' Counter 1','1415280611505','Cashier 1',46,551),(6407,102,102,0,'2014-11-06 21:30:21','MYR',0,' Counter 1','1415280622216','Cashier 1',67,551),(6413,1440,1440,0,'2013-11-06 21:30:25','MYR',0,' Counter 1','1415280624758','Cashier 1',34,551),(6416,14,14,0,'2014-01-06 21:30:31','SGD',0,' Counter 1','1415280627572','Cashier 1',12,59),(6420,5,5,0,'2012-11-06 21:30:45','SGD',0,' Counter 1','1415280642020','Cashier 1',13,59),(6424,2534,2534,0,'2013-11-06 21:30:56','MYR',0,' Counter 1','1415280656229','Cashier 1',36,551),(6429,425,425,0,'2012-12-11 21:42:56','MYR',0,' Counter 1','1415280659096','Cashier 1',86,551),(6434,18,18,0,'2013-11-06 21:31:09','SGD',0,' Counter 1','1415280665373','Cashier 1',14,59),(6439,190,190,0,'2013-11-06 21:31:30','SGD',0,' Counter 1','1415280686899','Cashier 1',15,59),(6443,270,270,0,'2013-11-06 21:31:39','SGD',0,' Counter 1','1415280695712','Cashier 1',16,59),(6446,1120,1120,0,'2013-12-06 21:31:53','SGD',0,' Counter 1','1415280709739','Cashier 1',17,59),(6450,52,52,0,'2013-11-06 21:32:04','SGD',0,' Counter 1','1415280720673','Cashier 1',18,59),(6454,25,25,0,'2012-11-06 21:32:12','SGD',0,' Counter 1','1415280728883','Cashier 1',19,59),(6457,610,610,0,'2013-11-06 21:32:33','SGD',0,' Counter 1','1415280749930','Cashier 1',20,59),(6461,13248,13248,0,'2014-11-06 21:32:36','IDR',0,' Counter 1','1415280716679','Cashier 1',NULL,601),(6466,107,107,0,'2013-11-06 21:32:50','SGD',0,' Counter 1','1415280767268','Cashier 1',21,59),(6470,576,576,0,'2011-01-06 21:32:55','MYR',0,' Counter 1','1415280774689','Cashier 1',35,551),(6473,298,298,0,'2014-11-01 21:33:11','SGD',0,' Counter 1','1415280787412','Cashier 1',22,59),(6477,240,240,0,'2013-06-06 21:33:29','SGD',0,' Counter 1','1415280805716','Cashier 1',23,59),(6481,1112,1112,0,'2012-12-11 21:42:56','MYR',0,' Counter 1','1415280810264','Cashier 1',87,551),(6486,23,23,0,'2014-11-06 21:33:37','MYR',0,' Counter 1','1415280818327','Cashier 1',38,551),(6491,23,23,0,'2014-08-06 21:33:38','MYR',0,' Counter 1','1415280818676','Cashier 1',26,551),(6496,260,260,0,'2013-11-06 21:33:39','SGD',0,' Counter 1','1415280815397','Cashier 1',24,59),(6499,52800,52800,0,'2014-11-06 21:33:57','IDR',0,' Counter 1','1415280798055','Cashier 1',NULL,601),(6504,1107,1107,0,'2013-11-06 21:34:01','MYR',0,' Counter 1','1415280841239','Cashier 1',48,551),(6509,43,43,0,'2014-02-23 21:45:45','MYR',0,' Counter 1','1415280850782','Cashier 1',69,551),(6514,1560,1560,0,'2012-11-06 21:34:23','MYR',0,' Counter 1','1415280862516','Cashier 1',60,551),(6519,26,26,0,'2013-11-06 21:34:44','MYR',0,' Counter 1','1415280884910','Cashier 1',60,551),(6524,66528,66528,0,'2014-11-06 21:34:54','IDR',0,' Counter 1','1415280854926','Cashier 1',NULL,601),(6529,1077,1077,0,'2013-01-06 21:43:26','MYR',0,' Counter 1','1415280926901','Cashier 1',70,551),(6534,35,35,0,'2012-11-06 21:35:32','MYR',0,' Counter 1','1415280932958','Cashier 1',48,551),(6540,408,408,0,'2013-11-06 21:35:33','MYR',0,' Counter 1','1415280933091','Cashier 1',36,551),(6543,7200,7200,0,'2014-11-06 21:35:42','IDR',0,' Counter 1','1415280903169','Cashier 1',NULL,601),(6549,378,378,0,'2012-11-06 21:36:00','MYR',0,' Counter 1','1415280959818','Cashier 1',24,551),(6554,3840,3840,0,'2014-11-06 21:36:05','IDR',0,' Counter 1','1415280926337','Cashier 1',NULL,601),(6558,627,627,0,'2014-11-06 21:36:11','SGD',0,' Counter 1','1415280967747','Cashier 1',25,59),(6562,375,375,0,'2014-09-06 21:36:25','SGD',0,' Counter 1','1415280982034','Cashier 1',26,59),(6566,904,904,0,'2013-02-06 21:36:27','MYR',0,' Counter 1','1415280987153','Cashier 1',13,551),(6571,150,150,0,'2013-04-10 21:36:34','SGD',0,' Counter 1','1415280990876','Cashier 1',2,59),(6574,960,960,0,'2014-11-06 21:36:37','IDR',0,' Counter 1','1415280957854','Cashier 1',NULL,601),(6578,17,17,0,'2014-02-18 21:36:42','SGD',0,' Counter 1','1415281002514','Cashier 1',2,59),(6583,1008,1008,0,'2014-10-06 21:36:44','MYR',0,' Counter 1','1415281003913','Cashier 1',25,551),(6587,25,25,0,'2014-02-06 21:36:46','MYR',0,' Counter 1','1415281006749','Cashier 1',36,551),(6594,642,642,0,'2013-10-06 21:36:53','SGD',0,' Counter 1','1415281009994','Cashier 1',28,59),(6599,34,34,0,'2014-10-06 21:36:55','MYR',0,' Counter 1','1415281015263','Cashier 1',26,551),(6602,44256,44256,0,'2014-11-06 21:37:04','IDR',0,' Counter 1','1415280985006','Cashier 1',NULL,601),(6607,402,402,0,'2013-11-06 21:37:09','SGD',0,' Counter 1','1415281025402','Cashier 1',29,59),(6611,12,12,0,'2013-11-06 21:37:13','SGD',0,' Counter 1','1415281034070','Cashier 1',30,59),(6617,142,142,0,'2010-11-06 21:37:21','SGD',0,' Counter 1','1415281038326','Cashier 1',31,59),(6621,2016,2016,0,'2014-11-06 21:37:32','IDR',0,' Counter 1','1415281013241','Cashier 1',NULL,601),(6626,7,7,0,'2013-11-06 21:37:33','SGD',0,' Counter 1','1415281053295','Cashier 1',32,59),(6629,292,292,0,'2013-11-06 21:37:34','SGD',0,' Counter 1','1415281050383','Cashier 1',33,59),(6633,44,44,0,'2014-02-06 21:37:34','MYR',0,' Counter 1','1415281054731','Cashier 1',17,551),(6641,3319,3319,0,'2014-01-06 21:37:38','MYR',0,' Counter 1','1415281057508','Cashier 1',28,551),(6649,235,235,0,'2014-10-16 21:37:48','MYR',0,' Counter 1','1415281067582','Cashier 1',26,551),(6652,149,149,0,'2012-10-17 21:37:54','MYR',0,' Counter 1','1415281073996','Cashier 1',3,551),(6655,36288,36288,0,'2014-11-06 21:37:55','IDR',0,' Counter 1','1415281036084','Cashier 1',NULL,601),(6660,8,8,0,'2013-12-06 21:37:58','SGD',0,' Counter 1','1415281078565','Cashier 1',34,59),(6664,8,8,0,'2013-11-06 21:38:01','SGD',0,' Counter 1','1415281077681','Cashier 1',35,59),(6669,65,65,0,'2014-04-06 21:38:02','MYR',0,' Counter 1','1415281082454','Cashier 1',98,551),(6672,14,14,0,'2013-11-06 21:38:07','MYR',0,' Counter 1','1415281088165','Cashier 1',5,551),(6677,19,19,0,'2013-01-06 21:38:09','MYR',0,' Counter 1','1415281089319','Cashier 1',36,551),(6680,4,4,0,'2014-09-06 21:38:12','SGD',0,' Counter 1','1415281088820','Cashier 1',36,59),(6684,5,5,0,'2013-08-06 21:38:15','MYR',0,' Counter 1','1415281095164','Cashier 1',34,551),(6687,20,20,0,'2011-11-06 21:38:18','SGD',0,' Counter 1','1415281098153','Cashier 1',37,59),(6691,37440,37440,0,'2014-11-06 21:38:20','IDR',0,' Counter 1','1415281060853','Cashier 1',NULL,601),(6695,360,360,0,'2014-09-06 21:38:24','MYR',0,' Counter 1','1415281104428','Cashier 1',23,551),(6698,5,5,0,'2014-11-01 21:38:29','SGD',0,' Counter 1','1415281106093','Cashier 1',38,59),(6703,124,124,0,'2014-02-06 21:38:33','MYR',0,' Counter 1','1415281112899','Cashier 1',7,551),(6706,572,572,0,'2014-04-06 21:38:41','MYR',0,' Counter 1','1415281120821','Cashier 1',58,551),(6709,13,13,0,'2014-01-06 21:38:48','SGD',0,' Counter 1','1415281128539','Cashier 1',39,59),(6714,1728,1728,0,'2014-11-06 21:38:55','IDR',0,' Counter 1','1415281096020','Cashier 1',NULL,601),(6718,15,15,0,'2013-11-06 21:38:57','MYR',0,' Counter 1','1415281138157','Cashier 1',75,551),(6725,1368,1368,0,'2013-09-10 21:39:01','MYR',0,' Counter 1','1415281140770','Cashier 1',3,551),(6729,1536,1536,0,'2014-11-06 21:39:23','IDR',0,' Counter 1','1415281123424','Cashier 1',NULL,601),(6733,4608,4608,0,'2014-11-06 21:39:45','IDR',0,' Counter 1','1415281145651','Cashier 1',NULL,601),(6738,2,2,0,'2014-11-01 21:39:56','SGD',0,' Counter 1','1415281192816','Cashier 1',40,59),(6742,72,72,0,'2012-09-03 21:39:59','MYR',0,' Counter 1','1415281198905','Cashier 1',2,551),(6745,35,35,0,'2012-11-06 21:40:03','MYR',0,' Counter 1','1415281204148','Cashier 1',4,551),(6752,29376,29376,0,'2014-11-06 21:40:07','IDR',0,' Counter 1','1415281168182','Cashier 1',NULL,601),(6757,124,124,0,'2014-03-06 21:40:10','SGD',0,' Counter 1','1415281207063','Cashier 1',41,59),(6760,23,23,0,'2014-07-06 21:40:14','SGD',0,' Counter 1','1415281214894','Cashier 1',42,59),(6765,1692,1692,0,'2014-01-06 21:40:14','MYR',0,' Counter 1','1415281214433','Cashier 1',6,551),(6770,520,520,0,'2012-11-06 21:40:25','SGD',0,' Counter 1','1415281222111','Cashier 1',43,59),(6774,2304,2304,0,'2014-11-06 21:40:28','IDR',0,' Counter 1','1415281188847','Cashier 1',NULL,601),(6778,17,17,0,'2012-11-06 21:40:32','SGD',0,' Counter 1','1415281232363','Cashier 1',44,59),(6782,2002,2002,0,'2013-11-16 21:40:34','MYR',0,' Counter 1','1415281234324','Cashier 1',8,551),(6788,970,970,0,'2014-11-02 21:40:36','SGD',0,' Counter 1','1415281233113','Cashier 1',55,59),(6792,4,4,0,'2013-11-06 21:40:37','SGD',0,' Counter 1','1415281237192','Cashier 1',45,59),(6795,470,470,0,'2014-02-23 21:45:45','MYR',0,' Counter 1','1415281241808','Cashier 1',93,551),(6798,25,25,0,'2014-11-06 21:40:42','MYR',0,' Counter 1','1415281243044','Cashier 1',73,551),(6805,10,10,0,'2014-06-06 21:40:46','SGD',0,' Counter 1','1415281246147','Cashier 1',46,59),(6808,75,75,0,'2011-11-06 21:40:46','SGD',0,' Counter 1','1415281242902','Cashier 1',47,59),(6812,216,216,0,'2012-12-11 21:42:56','MYR',0,' Counter 1','1415281248251','Cashier 1',53,551),(6815,26304,26304,0,'2014-11-06 21:40:51','IDR',0,' Counter 1','1415281212404','Cashier 1',NULL,601),(6820,228,228,0,'2013-08-06 21:40:53','MYR',0,' Counter 1','1415281252788','Cashier 1',45,551),(6823,37,37,0,'2011-11-06 21:40:59','SGD',0,' Counter 1','1415281255610','Cashier 1',48,59),(6827,4,4,0,'2013-11-06 21:41:00','SGD',0,' Counter 1','1415281260484','Cashier 1',49,59),(6831,360,360,0,'2013-10-14 21:41:00','MYR',0,' Counter 1','1415281260204','Cashier 1',3,551),(6834,119,119,0,'2013-11-06 21:41:05','SGD',0,' Counter 1','1415281262118','Cashier 1',50,59),(6837,72,72,0,'2013-01-06 21:41:06','MYR',0,' Counter 1','1415281265744','Cashier 1',5,551),(6840,1536,1536,0,'2014-11-06 21:41:11','IDR',0,' Counter 1','1415281231481','Cashier 1',NULL,601),(6844,490,490,0,'2014-11-01 21:41:12','SGD',0,' Counter 1','1415281268741','Cashier 1',51,59),(6847,24,24,0,'2013-09-06 21:41:12','MYR',0,' Counter 1','1415281272286','Cashier 1',45,551),(6850,4,4,0,'2013-11-06 21:41:12','SGD',0,' Counter 1','1415281272973','Cashier 1',52,59),(6854,10,10,0,'2013-01-06 21:43:26','MYR',0,' Counter 1','1415281282775','Cashier 1',67,551),(6857,1152,1152,0,'2014-11-06 21:41:24','IDR',0,' Counter 1','1415281244447','Cashier 1',NULL,601),(6861,72,72,0,'2012-11-06 21:41:30','MYR',0,' Counter 1','1415281289651','Cashier 1',96,551),(6864,515,515,0,'2014-01-06 21:41:30','SGD',0,' Counter 1','1415281286656','Cashier 1',53,59),(6870,46,46,0,'2012-11-06 21:41:36','MYR',0,' Counter 1','1415281295879','Cashier 1',37,551),(6873,34848,34848,0,'2014-11-06 21:41:39','IDR',0,' Counter 1','1415281260204','Cashier 1',NULL,601),(6877,30,30,0,'2014-10-26 21:41:40','MYR',0,' Counter 1','1415281300587','Cashier 1',26,551),(6886,10,10,0,'2011-11-06 21:41:42','MYR',0,' Counter 1','1415281301555','Cashier 1',5,551),(6889,5,5,0,'2014-10-08 21:41:49','MYR',0,' Counter 1','1415281309309','Cashier 1',25,551),(6892,278,278,0,'2014-10-06 21:41:53','SGD',0,' Counter 1','1415281309967','Cashier 1',54,59),(6897,8,8,0,'2014-11-01 21:41:54','SGD',0,' Counter 1','1415281314536','Cashier 1',55,59),(6901,720,720,0,'2012-11-06 21:41:57','MYR',0,' Counter 1','1415281316472','Cashier 1',47,551),(6904,1200,1200,0,'2013-11-06 21:42:02','MYR',0,' Counter 1','1415281322432','Cashier 1',4,551),(6907,31008,31008,0,'2014-11-06 21:42:04','IDR',0,' Counter 1','1415281285355','Cashier 1',NULL,601),(6913,721,721,0,'2014-11-01 21:42:07','SGD',0,' Counter 1','1415281323483','Cashier 1',56,59),(6918,624,624,0,'2013-09-09 21:42:09','MYR',0,' Counter 1','1415281329460','Cashier 1',3,551),(6921,387,387,0,'2013-11-06 21:42:16','SGD',0,' Counter 1','1415281332508','Cashier 1',57,59),(6925,1080,1080,0,'2012-12-06 21:42:16','MYR',0,' Counter 1','1415281336266','Cashier 1',37,551),(6928,3264,3264,0,'2014-11-06 21:42:17','IDR',0,' Counter 1','1415281297997','Cashier 1',NULL,601),(6932,672,672,0,'2013-11-06 21:42:23','MYR',0,' Counter 1','1415281342653','Cashier 1',47,551),(6935,624,624,0,'2014-11-06 21:42:29','MYR',0,' Counter 1','1415281348605','Cashier 1',58,551),(6938,22,22,0,'2014-11-06 21:42:29','SGD',0,' Counter 1','1415281349262','Cashier 1',58,59),(6943,387,387,0,'2012-11-06 21:42:30','SGD',0,' Counter 1','1415281346512','Cashier 1',59,59),(6948,612,612,0,'2013-01-06 21:43:26','MYR',0,' Counter 1','1415281354689','Cashier 1',69,551),(6951,288,288,0,'2014-11-06 21:42:38','IDR',0,' Counter 1','1415281318922','Cashier 1',NULL,601),(6955,34,34,0,'2012-11-06 21:42:39','MYR',0,' Counter 1','1415281359499','Cashier 1',63,551),(6963,79,79,0,'2014-01-06 21:42:41','SGD',0,' Counter 1','1415281358145','Cashier 1',60,59),(6967,576,576,0,'2014-11-06 21:42:42','MYR',0,' Counter 1','1415281362312','Cashier 1',25,551),(6970,288,288,0,'2014-07-06 21:42:50','MYR',0,' Counter 1','1415281370052','Cashier 1',46,551),(6973,852,852,0,'2012-12-11 21:42:56','MYR',0,' Counter 1','1415281376419','Cashier 1',75,551),(6976,4,4,0,'2012-11-06 21:42:58','SGD',0,' Counter 1','1415281374586','Cashier 1',61,59),(6980,888,888,0,'2013-11-06 21:43:03','MYR',0,' Counter 1','1415281383195','Cashier 1',96,551),(6983,62400,62400,0,'2014-11-06 21:43:07','IDR',0,' Counter 1','1415281347525','Cashier 1',NULL,601),(6988,648,648,0,'2014-08-04 21:43:08','MYR',0,' Counter 1','1415281387855','Cashier 1',3,551),(6991,5,5,0,'2013-11-06 21:43:10','SGD',0,' Counter 1','1415281386761','Cashier 1',62,59),(6995,648,648,0,'2014-10-06 21:43:14','MYR',0,' Counter 1','1415281393602','Cashier 1',36,551),(6998,8,8,0,'2013-11-06 21:43:15','SGD',0,' Counter 1','1415281395660','Cashier 1',63,59),(7003,2880,2880,0,'2014-01-06 21:43:21','MYR',0,' Counter 1','1415281400734','Cashier 1',35,551),(7006,41,41,0,'2014-11-01 21:43:23','MYR',0,' Counter 1','1415281404003','Cashier 1',35,551),(7014,5,5,0,'2013-01-06 21:43:26','SGD',0,' Counter 1','1415281402640','Cashier 1',64,59),(7019,15168,15168,0,'2014-11-06 21:43:27','IDR',0,' Counter 1','1415281368221','Cashier 1',NULL,601),(7024,336,336,0,'2013-10-06 21:43:30','MYR',0,' Counter 1','1415281409563','Cashier 1',57,551),(7027,3,3,0,'2013-01-06 21:43:26','SGD',0,' Counter 1','1415281412882','Cashier 1',65,59),(7031,652,652,0,'2013-10-06 21:43:46','MYR',0,' Counter 1','1415281425494','Cashier 1',45,551),(7034,1152,1152,0,'2014-11-06 21:43:49','IDR',0,' Counter 1','1415281389696','Cashier 1',NULL,601),(7039,1608,1608,0,'2014-01-06 21:43:53','MYR',0,' Counter 1','1415281433284','Cashier 1',34,551),(7042,24192,24192,0,'2014-11-06 21:44:01','IDR',0,' Counter 1','1415281401698','Cashier 1',NULL,601),(7046,216,216,0,'2013-11-01 21:44:01','MYR',0,' Counter 1','1415281440860','Cashier 1',23,551),(7049,96,96,0,'2014-02-06 21:44:08','MYR',0,' Counter 1','1415281447699','Cashier 1',34,551),(7052,356,356,0,'2014-11-06 21:44:11','SGD',0,' Counter 1','1415281451692','Cashier 1',66,59),(7056,34,34,0,'2014-01-06 21:44:21','MYR',0,' Counter 1','1415281461774','Cashier 1',57,551),(7065,5088,5088,0,'2014-11-06 21:44:22','IDR',0,' Counter 1','1415281423053','Cashier 1',NULL,601),(7070,96,96,0,'2013-01-06 21:43:26','MYR',0,' Counter 1','1415281462347','Cashier 1',68,551),(7073,5,5,0,'2014-11-06 21:44:23','SGD',0,' Counter 1','1415281460296','Cashier 1',67,59),(7077,62,62,0,'2012-10-06 21:44:27','MYR',0,' Counter 1','1415281467440','Cashier 1',35,551),(7080,65,65,0,'2014-11-06 21:44:29','SGD',0,' Counter 1','1415281469459','Cashier 1',68,59),(7083,29,29,0,'2014-11-06 21:44:32','MYR',0,' Counter 1','1415281472379','Cashier 1',2,551),(7086,576,576,0,'2014-11-06 21:44:33','IDR',0,' Counter 1','1415281433911','Cashier 1',NULL,601),(7089,7,7,0,'2013-01-06 21:43:26','SGD',0,' Counter 1','1415281472929','Cashier 1',69,59),(7094,84,84,0,'2011-09-06 21:44:39','MYR',0,' Counter 1','1415281479068','Cashier 1',35,551),(7097,84,84,0,'2014-02-23 21:45:45','MYR',0,' Counter 1','1415281484652','Cashier 1',75,551),(7100,96,96,0,'2014-11-06 21:44:45','IDR',0,' Counter 1','1415281445669','Cashier 1',NULL,601),(7103,168,168,0,'2014-02-06 21:44:45','SGD',0,' Counter 1','1415281485695','Cashier 1',50,59),(7107,9,9,0,'2014-11-06 21:44:49','SGD',0,' Counter 1','1415281486043','Cashier 1',70,59),(7111,240,240,0,'2014-02-23 21:45:45','MYR',0,' Counter 1','1415281490369','Cashier 1',87,551),(7114,36,36,0,'2014-01-06 21:44:57','MYR',0,' Counter 1','1415281497403','Cashier 1',45,551),(7117,31,31,0,'2014-03-06 21:45:05','MYR',0,' Counter 1','1415281504772','Cashier 1',34,551),(7120,20160,20160,0,'2014-11-06 21:45:07','IDR',0,' Counter 1','1415281468195','Cashier 1',NULL,601),(7125,43,43,0,'2014-11-03 21:45:13','MYR',0,' Counter 1','1415281513553','Cashier 1',25,551),(7132,192,192,0,'2014-11-01 21:45:13','MYR',0,' Counter 1','1415281513031','Cashier 1',26,551),(7135,14,14,0,'2014-11-06 21:45:19','SGD',0,' Counter 1','1415281515730','Cashier 1',71,59),(7141,19200,19200,0,'2014-11-06 21:45:24','IDR',0,' Counter 1','1415281484930','Cashier 1',NULL,601),(7145,644,644,0,'2012-09-06 21:45:30','MYR',0,' Counter 1','1415281529537','Cashier 1',37,551),(7149,310,310,0,'2014-02-23 21:45:45','SGD',0,' Counter 1','1415281532807','Cashier 1',72,59),(7153,7,7,0,'2014-11-06 21:45:32','SGD',0,' Counter 1','1415281529276','Cashier 1',73,59),(7158,1824,1824,0,'2014-11-06 21:45:36','IDR',0,' Counter 1','1415281496959','Cashier 1',NULL,601),(7162,164,164,0,'2014-07-06 21:45:37','MYR',0,' Counter 1','1415281536811','Cashier 1',58,551),(7165,8,8,0,'2014-02-23 21:45:45','SGD',0,' Counter 1','1415281541676','Cashier 1',65,59),(7170,450,450,0,'2014-11-06 21:45:49','SGD',0,' Counter 1','1415281549400','Cashier 1',74,59),(7173,4128,4128,0,'2014-11-06 21:45:49','IDR',0,' Counter 1','1415281509799','Cashier 1',NULL,601),(7177,478,478,0,'2014-02-23 21:45:45','MYR',0,' Counter 1','1415281552572','Cashier 1',69,551),(7181,460,460,0,'2014-03-06 21:46:00','MYR',0,' Counter 1','1415281559901','Cashier 1',7,551),(7184,960,960,0,'2014-11-06 21:46:02','IDR',0,' Counter 1','1415281522803','Cashier 1',NULL,601),(7187,68,68,0,'2012-11-06 21:46:02','MYR',0,' Counter 1','1415281563361','Cashier 1',5,551),(7196,29,29,0,'2014-11-06 21:46:07','MYR',0,' Counter 1','1415281567299','Cashier 1',87,551),(7199,265,265,0,'2014-03-06 21:46:11','SGD',0,' Counter 1','1415281571352','Cashier 1',75,59),(7204,768,768,0,'2014-11-06 21:46:19','IDR',0,' Counter 1','1415281539608','Cashier 1',NULL,601),(7208,149,149,0,'2013-03-06 21:46:21','MYR',0,' Counter 1','1415281580954','Cashier 1',50,551),(7211,103,103,0,'2014-01-06 21:46:28','MYR',0,' Counter 1','1415281588456','Cashier 1',48,551),(7214,3264,3264,0,'2014-11-06 21:46:33','IDR',0,' Counter 1','1415281553608','Cashier 1',NULL,601),(7218,768,768,0,'2014-01-06 21:46:34','MYR',0,' Counter 1','1415281594015','Cashier 1',30,551),(7221,260,260,0,'2014-04-06 21:46:41','SGD',0,' Counter 1','1415281601442','Cashier 1',76,59),(7225,10,10,0,'2014-09-06 21:46:41','SGD',0,' Counter 1','1415281598121','Cashier 1',77,59),(7229,2352,2352,0,'2014-04-06 21:46:43','MYR',0,' Counter 1','1415281602874','Cashier 1',20,551),(7232,49824,49824,0,'2014-11-06 21:46:46','IDR',0,' Counter 1','1415281566774','Cashier 1',NULL,601),(7236,888,888,0,'2012-07-06 21:46:50','MYR',0,' Counter 1','1415281609778','Cashier 1',10,551),(7239,56,56,0,'2014-02-23 21:45:45','SGD',0,' Counter 1','1415281609967','Cashier 1',78,59),(7243,168,168,0,'2014-02-06 21:46:56','MYR',0,' Counter 1','1415281616263','Cashier 1',90,551),(7246,94,94,0,'2014-11-02 21:46:57','MYR',0,' Counter 1','1415281617649','Cashier 1',57,551),(7253,946,946,0,'2014-03-06 21:47:06','SGD',0,' Counter 1','1415281622935','Cashier 1',79,59),(7258,1200,1200,0,'2013-12-06 21:47:08','MYR',0,' Counter 1','1415281628101','Cashier 1',32,551),(7262,158,158,0,'2013-11-06 21:47:09','SGD',0,' Counter 1','1415281629808','Cashier 1',80,59),(7266,16416,16416,0,'2014-11-06 21:47:12','IDR',0,' Counter 1','1415281592976','Cashier 1',NULL,601),(7270,280,280,0,'2013-11-06 21:47:17','SGD',0,' Counter 1','1415281633471','Cashier 1',81,59),(7273,1114,1114,0,'2014-11-06 21:47:20','MYR',0,' Counter 1','1415281640269','Cashier 1',72,551),(7278,312,312,0,'2012-12-11 21:42:56','SGD',0,' Counter 1','1415281645440','Cashier 1',82,59),(7283,48,48,0,'2013-11-06 21:47:30','SGD',0,' Counter 1','1415281650456','Cashier 1',83,59),(7286,29376,29376,0,'2014-11-06 21:47:31','IDR',0,' Counter 1','1415281611902','Cashier 1',NULL,601),(7291,280,280,0,'2012-12-11 21:42:56','SGD',0,' Counter 1','1415281651540','Cashier 1',84,59),(7294,55,55,0,'2014-10-06 21:47:35','MYR',0,' Counter 1','1415281655649','Cashier 1',93,551),(7301,26880,26880,0,'2014-11-06 21:47:43','IDR',0,' Counter 1','1415281623478','Cashier 1',NULL,601),(7305,125,125,0,'2014-09-06 21:47:47','MYR',0,' Counter 1','1415281666557','Cashier 1',92,551),(7309,1060,1060,0,'2014-11-06 21:47:48','SGD',0,' Counter 1','1415281665023','Cashier 1',85,59),(7314,355,355,0,'2012-12-11 21:42:56','SGD',0,' Counter 1','1415281673931','Cashier 1',86,59),(7319,25920,25920,0,'2014-11-06 21:47:57','IDR',0,' Counter 1','1415281637553','Cashier 1',NULL,601),(7323,171,171,0,'2014-11-06 21:48:00','SGD',0,' Counter 1','1415281677313','Cashier 1',87,59),(7328,225,225,0,'2013-11-06 21:48:04','MYR',0,' Counter 1','1415281683945','Cashier 1',81,551),(7334,670,670,0,'2012-12-11 21:42:56','SGD',0,' Counter 1','1415281685220','Cashier 1',88,59),(7337,1344,1344,0,'2014-11-06 21:48:12','IDR',0,' Counter 1','1415281653265','Cashier 1',NULL,601),(7340,416,416,0,'2014-11-06 21:48:13','SGD',0,' Counter 1','1415281689660','Cashier 1',89,59),(7345,58,58,0,'2014-02-23 21:45:45','MYR',0,' Counter 1','1415281703482','Cashier 1',84,551),(7350,533,533,0,'2014-03-06 21:48:28','SGD',0,' Counter 1','1415281704319','Cashier 1',90,59),(7355,1200,1200,0,'2014-02-23 21:45:45','SGD',0,' Counter 1','1415281710777','Cashier 1',91,59),(7359,12,12,0,'2014-02-23 21:45:45','MYR',0,' Counter 1','1415281711938','Cashier 1',74,551),(7363,44352,44352,0,'2014-11-06 21:48:35','IDR',0,' Counter 1','1415281675477','Cashier 1',NULL,601),(7367,1014,1014,0,'2014-11-06 21:48:36','MYR',0,' Counter 1','1415281716864','Cashier 1',NULL,551),(7374,2,2,0,'2014-11-06 21:48:41','MYR',0,' Counter 1','1415281720920','Cashier 1',NULL,551),(7377,270,270,0,'2014-11-01 21:48:41','SGD',0,' Counter 1','1415281721793','Cashier 1',92,59),(7380,7,7,0,'2014-04-06 21:48:46','SGD',0,' Counter 1','1415281722556','Cashier 1',93,59),(7385,5,5,0,'2014-11-06 21:48:52','MYR',0,' Counter 1','1415281732346','Cashier 1',NULL,551),(7388,61440,61440,0,'2014-11-06 21:48:53','IDR',0,' Counter 1','1415281693503','Cashier 1',NULL,601),(7392,3840,3840,0,'2014-11-06 21:49:06','IDR',0,' Counter 1','1415281707195','Cashier 1',NULL,601),(7396,2,2,0,'2014-11-06 21:49:06','MYR',0,' Counter 1','1415281746326','Cashier 1',NULL,551),(7399,10,10,0,'2014-02-06 21:49:07','SGD',0,' Counter 1','1415281743836','Cashier 1',94,59),(7404,2,2,0,'2014-11-06 21:49:12','MYR',0,' Counter 1','1415281751682','Cashier 1',NULL,551),(7407,5,5,0,'2014-11-06 21:49:20','MYR',0,' Counter 1','1415281759938','Cashier 1',NULL,551),(7410,12,12,0,'2013-11-06 21:49:23','SGD',0,' Counter 1','1415281760145','Cashier 1',95,59),(7415,818,818,0,'2014-11-06 21:49:30','MYR',0,' Counter 1','1415281771029','Cashier 1',NULL,551),(7421,480,480,0,'2014-11-06 21:49:33','IDR',0,' Counter 1','1415281733410','Cashier 1',NULL,601),(7425,3,3,0,'2014-02-23 21:45:45','SGD',0,' Counter 1','1415281771911','Cashier 1',96,59),(7429,81600,81600,0,'2014-11-06 21:49:52','IDR',0,' Counter 1','1415281752713','Cashier 1',NULL,601),(7434,15552,15552,0,'2014-11-06 21:50:04','IDR',0,' Counter 1','1415281765027','Cashier 1',NULL,601),(7438,576,576,0,'2014-11-06 21:50:16','IDR',0,' Counter 1','1415281776920','Cashier 1',NULL,601),(7442,760,760,0,'2013-11-06 21:50:24','SGD',0,' Counter 1','1415281820425','Cashier 1',97,59),(7447,26496,26496,0,'2014-11-06 21:50:32','IDR',0,' Counter 1','1415281793051','Cashier 1',NULL,601),(7451,258,258,0,'2014-01-06 21:50:36','SGD',0,' Counter 1','1415281833062','Cashier 1',98,59),(7456,536,536,0,'2014-11-06 21:50:40','MYR',0,' Counter 1','1415281840847','Cashier 1',NULL,551),(7461,13,13,0,'2012-11-06 21:50:42','SGD',0,' Counter 1','1415281842872','Cashier 1',99,59),(7466,130,130,0,'2012-11-06 21:50:45','SGD',0,' Counter 1','1415281841466','Cashier 1',100,59),(7469,183360,183360,0,'2014-11-06 21:50:45','IDR',0,' Counter 1','1415281806202','Cashier 1',NULL,601),(7473,360,360,0,'2012-01-06 21:50:53','SGD',0,' Counter 1','1415281850042','Cashier 1',101,59),(7477,637,637,0,'2014-09-08 21:50:56','SGD',0,' Counter 1','1415281856730','Cashier 1',3,59),(7482,7104,7104,0,'2014-11-06 21:51:00','IDR',0,' Counter 1','1415281820576','Cashier 1',NULL,601),(7486,1410,1410,0,'2011-12-28 21:51:05','SGD',0,' Counter 1','1415281861582','Cashier 1',4,59),(7491,318,318,0,'2014-11-06 21:51:13','MYR',0,' Counter 1','1415281873951','Cashier 1',NULL,551),(7497,299,299,0,'2014-02-06 21:51:16','SGD',0,' Counter 1','1415281872799','Cashier 1',45,59),(7502,85440,85440,0,'2014-11-06 21:51:17','IDR',0,' Counter 1','1415281837429','Cashier 1',NULL,601),(7507,383,383,0,'2013-11-06 21:51:29','SGD',0,' Counter 1','1415281885836','Cashier 1',101,59),(7512,42912,42912,0,'2014-11-06 21:51:34','IDR',0,' Counter 1','1415281854590','Cashier 1',NULL,601),(7517,330,330,0,'2012-11-06 21:51:42','SGD',0,' Counter 1','1415281899192','Cashier 1',101,59),(7522,6240,6240,0,'2014-11-06 21:51:44','IDR',0,' Counter 1','1415281864607','Cashier 1',NULL,601),(7526,565,565,0,'2012-10-10 21:51:54','SGD',0,' Counter 1','1415281911045','Cashier 1',3,59),(7531,288,288,0,'2014-11-06 21:51:59','IDR',0,' Counter 1','1415281880261','Cashier 1',NULL,601),(7535,249,249,0,'2014-02-23 21:45:45','SGD',0,' Counter 1','1415281920519','Cashier 1',66,59),(7539,384,384,0,'2014-11-06 21:52:11','IDR',0,' Counter 1','1415281892395','Cashier 1',NULL,601),(7543,620,620,0,'2014-11-06 21:52:13','MYR',0,' Counter 1','1415281934174','Cashier 1',NULL,551),(7548,39,39,0,'2014-06-06 21:52:18','SGD',0,' Counter 1','1415281934889','Cashier 1',77,59),(7553,6720,6720,0,'2014-11-06 21:52:23','IDR',0,' Counter 1','1415281904252','Cashier 1',NULL,601),(7558,19200,19200,0,'2014-11-06 21:52:35','IDR',0,' Counter 1','1415281916098','Cashier 1',NULL,601),(7562,3936,3936,0,'2014-11-06 21:52:49','IDR',0,' Counter 1','1415281929444','Cashier 1',NULL,601),(7566,12,12,0,'2012-12-11 21:42:56','SGD',0,' Counter 1','1415281969886','Cashier 1',88,59),(7571,2,2,0,'2011-11-06 21:53:01','SGD',0,' Counter 1','1415281977853','Cashier 1',99,59),(7574,1354,1354,0,'2014-11-06 21:54:11','MYR',0,' Counter 1','1415282051926','Cashier 1',NULL,551),(7583,5,5,0,'2012-10-06 21:58:40','SGD',0,' Counter 1','1415282317149','Cashier 1',23,59),(7588,7,7,0,'2013-11-06 21:58:55','SGD',0,' Counter 1','1415282331724','Cashier 1',97,59),(7593,17472,17472,0,'2014-11-06 21:58:57','IDR',0,' Counter 1','1415282297910','Cashier 1',NULL,601),(7597,19104,19104,0,'2014-11-06 21:59:11','IDR',0,' Counter 1','1415282311951','Cashier 1',NULL,601),(7601,27936,27936,0,'2014-11-06 21:59:25','IDR',0,' Counter 1','1415282325987','Cashier 1',NULL,601),(7605,593,593,0,'2014-11-06 21:59:33','MYR',0,' Counter 1','1415282374116','Cashier 1',NULL,551),(7612,5952,5952,0,'2014-11-06 21:59:40','IDR',0,' Counter 1','1415282340694','Cashier 1',NULL,601),(7616,260,260,0,'2014-02-23 21:45:45','SGD',0,' Counter 1','1415282384807','Cashier 1',87,59),(7620,1152,1152,0,'2014-11-06 21:59:53','IDR',0,' Counter 1','1415282353637','Cashier 1',NULL,601),(7624,300,300,0,'2014-11-06 22:00:01','SGD',0,' Counter 1','1415282397867','Cashier 1',65,59),(7629,20640,20640,0,'2014-11-06 22:00:10','IDR',0,' Counter 1','1415282371038','Cashier 1',NULL,601),(7634,568,568,0,'2012-11-06 22:00:13','SGD',0,' Counter 1','1415282409740','Cashier 1',5,59),(7639,1824,1824,0,'2014-11-06 22:00:22','IDR',0,' Counter 1','1415282382998','Cashier 1',NULL,601),(7643,175,175,0,'2014-03-06 22:00:22','SGD',0,' Counter 1','1415282418903','Cashier 1',45,59),(7647,530,530,0,'2014-04-06 22:00:30','SGD',0,' Counter 1','1415282426483','Cashier 1',34,59),(7651,16416,16416,0,'2014-11-06 22:00:33','IDR',0,' Counter 1','1415282393741','Cashier 1',NULL,601),(7655,967,967,0,'2012-12-06 22:00:42','SGD',0,' Counter 1','1415282439153','Cashier 1',23,59),(7660,768,768,0,'2014-11-06 22:00:51','IDR',0,' Counter 1','1415282411603','Cashier 1',NULL,601),(7664,232,232,0,'2013-01-06 21:43:26','SGD',0,' Counter 1','1415282449538','Cashier 1',65,59),(7668,768,768,0,'2014-11-06 22:01:02','IDR',0,' Counter 1','1415282422498','Cashier 1',NULL,601),(7672,1134,1134,0,'2014-11-06 22:01:09','MYR',0,' Counter 1','1415282469547','Cashier 1',NULL,551),(7678,29280,29280,0,'2014-11-06 22:01:17','IDR',0,' Counter 1','1415282437547','Cashier 1',NULL,601),(7682,27744,27744,0,'2014-11-06 22:01:27','IDR',0,' Counter 1','1415282448207','Cashier 1',NULL,601),(7686,37920,37920,0,'2014-11-06 22:01:39','IDR',0,' Counter 1','1415282460012','Cashier 1',NULL,601),(7690,1752,1752,0,'2014-11-06 22:01:42','MYR',0,' Counter 1','1415282503275','Cashier 1',NULL,551),(7695,12960,12960,0,'2014-11-06 22:01:57','IDR',0,' Counter 1','1415282478204','Cashier 1',NULL,601),(7699,35424,35424,0,'2014-11-06 22:02:14','IDR',0,' Counter 1','1415282495123','Cashier 1',NULL,601),(7703,43584,43584,0,'2014-11-06 22:02:28','IDR',0,' Counter 1','1415282509340','Cashier 1',NULL,601),(7707,5088,5088,0,'2014-11-06 22:02:42','IDR',0,' Counter 1','1415282523227','Cashier 1',NULL,601),(7711,40,40,0,'2014-11-06 22:02:50','MYR',0,' Counter 1','1415282570955','Cashier 1',NULL,551),(7716,36960,36960,0,'2014-11-06 22:02:55','IDR',0,' Counter 1','1415282535831','Cashier 1',NULL,601),(7720,768,768,0,'2014-11-06 22:03:11','IDR',0,' Counter 1','1415282551601','Cashier 1',NULL,601),(7724,864,864,0,'2014-11-06 22:03:23','IDR',0,' Counter 1','1415282563912','Cashier 1',NULL,601),(7728,31392,31392,0,'2014-11-06 22:03:37','IDR',0,' Counter 1','1415282577773','Cashier 1',NULL,601),(7732,1656,1656,0,'2014-11-06 22:03:46','MYR',0,' Counter 1','1415282626257','Cashier 1',NULL,551),(7736,62,62,0,'2014-10-06 22:03:58','SGD',0,' Counter 1','1415282638136','Cashier 1',76,59),(7740,63360,63360,0,'2014-11-06 22:03:59','IDR',0,' Counter 1','1415282599625','Cashier 1',NULL,601),(7746,274,274,0,'2014-11-06 22:04:03','MYR',0,' Counter 1','1415282642968','Cashier 1',NULL,551),(7751,1942,1942,0,'2014-11-06 22:04:10','MYR',0,' Counter 1','1415282650265','Cashier 1',NULL,551),(7757,45120,45120,0,'2014-11-06 22:04:10','IDR',0,' Counter 1','1415282611333','Cashier 1',NULL,601),(7761,1039,1039,0,'2014-11-06 22:04:19','MYR',0,' Counter 1','1415282658651','Cashier 1',NULL,551),(7766,1910,1910,0,'2014-11-06 22:04:26','MYR',0,' Counter 1','1415282666139','Cashier 1',NULL,551),(7770,1440,1440,0,'2014-11-06 22:04:32','MYR',0,' Counter 1','1415282671623','Cashier 1',NULL,551),(7773,16,16,0,'2012-06-06 22:04:32','SGD',0,' Counter 1','1415282672818','Cashier 1',37,59),(7777,37536,37536,0,'2014-11-06 22:04:33','IDR',0,' Counter 1','1415282633623','Cashier 1',NULL,601),(7782,216,216,0,'2014-11-06 22:04:39','MYR',0,' Counter 1','1415282678888','Cashier 1',NULL,551),(7785,684,684,0,'2014-11-06 22:04:46','MYR',0,' Counter 1','1415282686131','Cashier 1',NULL,551),(7789,28512,28512,0,'2014-11-06 22:04:50','IDR',0,' Counter 1','1415282650665','Cashier 1',NULL,601),(7794,62,62,0,'2014-08-06 22:04:51','SGD',0,' Counter 1','1415282691610','Cashier 1',58,59),(7799,924,924,0,'2014-11-06 22:04:57','MYR',0,' Counter 1','1415282697126','Cashier 1',NULL,551),(7803,384,384,0,'2014-11-06 22:05:01','IDR',0,' Counter 1','1415282661995','Cashier 1',NULL,601),(7807,530,530,0,'2014-11-02 22:05:02','SGD',0,' Counter 1','1415282702463','Cashier 1',25,59),(7811,197,197,0,'2014-11-06 22:05:06','MYR',0,' Counter 1','1415282706368','Cashier 1',NULL,551),(7815,74,74,0,'2014-11-06 22:05:11','MYR',0,' Counter 1','1415282711150','Cashier 1',NULL,551),(7818,3648,3648,0,'2014-11-06 22:05:21','IDR',0,' Counter 1','1415282682114','Cashier 1',NULL,601),(7823,131,131,0,'2014-03-06 22:05:23','SGD',0,' Counter 1','1415282723109','Cashier 1',48,59),(7829,1507,1507,0,'2014-11-06 22:05:23','MYR',0,' Counter 1','1415282723018','Cashier 1',NULL,551),(7834,322,322,0,'2014-11-06 22:05:34','MYR',0,' Counter 1','1415282734100','Cashier 1',NULL,551),(7839,20544,20544,0,'2014-11-06 22:05:42','IDR',0,' Counter 1','1415282702915','Cashier 1',NULL,601),(7843,247,247,0,'2014-11-06 22:05:42','MYR',0,' Counter 1','1415282742090','Cashier 1',NULL,551),(7847,696,696,0,'2014-11-06 22:05:48','MYR',0,' Counter 1','1415282748211','Cashier 1',NULL,551),(7850,2208,2208,0,'2014-11-06 22:05:58','IDR',0,' Counter 1','1415282718580','Cashier 1',NULL,601),(7854,235,235,0,'2014-11-06 22:05:59','MYR',0,' Counter 1','1415282758755','Cashier 1',NULL,551),(7857,5952,5952,0,'2014-11-06 22:06:08','IDR',0,' Counter 1','1415282728717','Cashier 1',NULL,601),(7861,1152,1152,0,'2014-11-06 22:06:16','MYR',0,' Counter 1','1415282775519','Cashier 1',NULL,551),(7865,20640,20640,0,'2014-11-06 22:06:21','IDR',0,' Counter 1','1415282741540','Cashier 1',NULL,601),(7869,486,486,0,'2014-11-06 22:06:26','SGD',0,' Counter 1','1415282786832','Cashier 1',69,59),(7875,326,326,0,'2014-11-06 22:06:31','MYR',0,' Counter 1','1415282790717','Cashier 1',NULL,551),(7880,14304,14304,0,'2014-11-06 22:06:35','IDR',0,' Counter 1','1415282755862','Cashier 1',NULL,601),(7884,190,190,0,'2013-05-06 22:06:41','SGD',0,' Counter 1','1415282801398','Cashier 1',24,59),(7888,5,5,0,'2014-11-06 22:06:45','MYR',0,' Counter 1','1415282805317','Cashier 1',NULL,551),(7891,480,480,0,'2014-11-06 22:06:50','IDR',0,' Counter 1','1415282770410','Cashier 1',NULL,601),(7895,10,10,0,'2014-11-06 22:06:50','MYR',0,' Counter 1','1415282810134','Cashier 1',NULL,551),(7898,55,55,0,'2012-06-06 22:06:53','SGD',0,' Counter 1','1415282813604','Cashier 1',35,59),(7902,5,5,0,'2014-11-06 22:06:55','MYR',0,' Counter 1','1415282815303','Cashier 1',NULL,551),(7905,3711,3711,0,'2014-11-06 22:07:01','MYR',0,' Counter 1','1415282821960','Cashier 1',NULL,551),(7912,6,6,0,'2014-08-06 22:07:02','SGD',0,' Counter 1','1415282822941','Cashier 1',46,59),(7915,7,7,0,'2014-11-06 22:07:03','MYR',0,' Counter 1','1415282822765','Cashier 1',NULL,551),(7920,3648,3648,0,'2014-11-06 22:07:04','IDR',0,' Counter 1','1415282784637','Cashier 1',NULL,601),(7924,2,2,0,'2014-11-06 22:07:08','MYR',0,' Counter 1','1415282827570','Cashier 1',NULL,551);
/*!40000 ALTER TABLE `salesrecordentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesrecordentity_lineitementity`
--

DROP TABLE IF EXISTS `salesrecordentity_lineitementity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salesrecordentity_lineitementity` (
  `SalesRecordEntity_ID` bigint(20) NOT NULL,
  `itemsPurchased_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`SalesRecordEntity_ID`,`itemsPurchased_ID`),
  KEY `SALESRECORDENTITY_LINEITEMENTITY_itemsPurchased_ID` (`itemsPurchased_ID`),
  CONSTRAINT `SALESRECORDENTITYLINEITEMENTITYSalesRecordEntityID` FOREIGN KEY (`SalesRecordEntity_ID`) REFERENCES `salesrecordentity` (`ID`),
  CONSTRAINT `SALESRECORDENTITY_LINEITEMENTITY_itemsPurchased_ID` FOREIGN KEY (`itemsPurchased_ID`) REFERENCES `lineitementity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesrecordentity_lineitementity`
--

LOCK TABLES `salesrecordentity_lineitementity` WRITE;
/*!40000 ALTER TABLE `salesrecordentity_lineitementity` DISABLE KEYS */;
INSERT INTO `salesrecordentity_lineitementity` VALUES (6301,6302),(6304,6305),(6304,6306),(6308,6309),(6308,6310),(6312,6313),(6312,6314),(6312,6315),(6312,6316),(6318,6319),(6318,6320),(6322,6323),(6322,6324),(6322,6325),(6354,6355),(6354,6356),(6358,6359),(6358,6360),(6358,6361),(6358,6362),(6358,6363),(6358,6364),(6358,6365),(6367,6368),(6367,6369),(6371,6372),(6371,6373),(6371,6374),(6376,6377),(6376,6378),(6380,6381),(6380,6382),(6380,6383),(6385,6386),(6385,6387),(6385,6388),(6390,6391),(6393,6394),(6393,6395),(6393,6396),(6393,6397),(6399,6400),(6399,6401),(6399,6402),(6404,6405),(6407,6408),(6407,6409),(6407,6410),(6407,6411),(6413,6414),(6416,6417),(6416,6418),(6420,6421),(6420,6422),(6424,6425),(6424,6426),(6424,6427),(6429,6430),(6429,6431),(6429,6432),(6434,6435),(6434,6436),(6434,6437),(6439,6440),(6439,6441),(6443,6444),(6446,6447),(6446,6448),(6450,6451),(6450,6452),(6454,6455),(6457,6458),(6457,6459),(6461,6462),(6461,6463),(6461,6464),(6466,6467),(6466,6468),(6470,6471),(6473,6474),(6473,6475),(6477,6478),(6477,6479),(6481,6482),(6481,6483),(6481,6484),(6486,6487),(6486,6488),(6486,6489),(6491,6492),(6491,6493),(6491,6494),(6496,6497),(6499,6500),(6499,6501),(6499,6502),(6504,6505),(6504,6506),(6504,6507),(6509,6510),(6509,6511),(6509,6512),(6514,6515),(6514,6516),(6514,6517),(6519,6520),(6519,6521),(6519,6522),(6524,6525),(6524,6526),(6524,6527),(6529,6530),(6529,6531),(6529,6532),(6534,6535),(6534,6536),(6534,6537),(6534,6538),(6540,6541),(6543,6544),(6543,6545),(6543,6546),(6543,6547),(6549,6550),(6549,6551),(6549,6552),(6554,6555),(6554,6556),(6558,6559),(6558,6560),(6562,6563),(6562,6564),(6566,6567),(6566,6568),(6566,6569),(6571,6572),(6574,6575),(6574,6576),(6578,6579),(6578,6580),(6578,6581),(6583,6584),(6583,6585),(6587,6588),(6587,6589),(6587,6590),(6587,6591),(6587,6592),(6594,6595),(6594,6596),(6594,6597),(6599,6600),(6602,6603),(6602,6604),(6602,6605),(6607,6608),(6607,6609),(6611,6612),(6611,6613),(6611,6614),(6611,6615),(6617,6618),(6617,6619),(6621,6622),(6621,6623),(6621,6624),(6626,6627),(6629,6630),(6629,6631),(6633,6634),(6633,6635),(6633,6636),(6633,6637),(6633,6638),(6633,6639),(6641,6642),(6641,6643),(6641,6644),(6641,6645),(6641,6646),(6641,6647),(6649,6650),(6652,6653),(6655,6656),(6655,6657),(6655,6658),(6660,6661),(6660,6662),(6664,6665),(6664,6666),(6664,6667),(6669,6670),(6672,6673),(6672,6674),(6672,6675),(6677,6678),(6680,6681),(6680,6682),(6684,6685),(6687,6688),(6687,6689),(6691,6692),(6691,6693),(6695,6696),(6698,6699),(6698,6700),(6698,6701),(6703,6704),(6706,6707),(6709,6710),(6709,6711),(6709,6712),(6714,6715),(6714,6716),(6718,6719),(6718,6720),(6718,6721),(6718,6722),(6718,6723),(6725,6726),(6725,6727),(6729,6730),(6729,6731),(6733,6734),(6733,6735),(6733,6736),(6738,6739),(6738,6740),(6742,6743),(6745,6746),(6745,6747),(6745,6748),(6745,6749),(6745,6750),(6752,6753),(6752,6754),(6752,6755),(6757,6758),(6760,6761),(6760,6762),(6760,6763),(6765,6766),(6765,6767),(6765,6768),(6770,6771),(6770,6772),(6774,6775),(6774,6776),(6778,6779),(6778,6780),(6782,6783),(6782,6784),(6782,6785),(6782,6786),(6788,6789),(6788,6790),(6792,6793),(6795,6796),(6798,6799),(6798,6800),(6798,6801),(6798,6802),(6798,6803),(6805,6806),(6808,6809),(6808,6810),(6812,6813),(6815,6816),(6815,6817),(6815,6818),(6820,6821),(6823,6824),(6823,6825),(6827,6828),(6827,6829),(6831,6832),(6834,6835),(6837,6838),(6840,6841),(6840,6842),(6844,6845),(6847,6848),(6850,6851),(6850,6852),(6854,6855),(6857,6858),(6857,6859),(6861,6862),(6864,6865),(6864,6866),(6864,6867),(6864,6868),(6870,6871),(6873,6874),(6873,6875),(6877,6878),(6877,6879),(6877,6880),(6877,6881),(6877,6882),(6877,6883),(6877,6884),(6886,6887),(6889,6890),(6892,6893),(6892,6894),(6892,6895),(6897,6898),(6897,6899),(6901,6902),(6904,6905),(6907,6908),(6907,6909),(6907,6910),(6907,6911),(6913,6914),(6913,6915),(6913,6916),(6918,6919),(6921,6922),(6921,6923),(6925,6926),(6928,6929),(6928,6930),(6932,6933),(6935,6936),(6938,6939),(6938,6940),(6938,6941),(6943,6944),(6943,6945),(6943,6946),(6948,6949),(6951,6952),(6951,6953),(6955,6956),(6955,6957),(6955,6958),(6955,6959),(6955,6960),(6955,6961),(6963,6964),(6963,6965),(6967,6968),(6970,6971),(6973,6974),(6976,6977),(6976,6978),(6980,6981),(6983,6984),(6983,6985),(6983,6986),(6988,6989),(6991,6992),(6991,6993),(6995,6996),(6998,6999),(6998,7000),(6998,7001),(7003,7004),(7006,7007),(7006,7008),(7006,7009),(7006,7010),(7006,7011),(7006,7012),(7014,7015),(7014,7016),(7014,7017),(7019,7020),(7019,7021),(7019,7022),(7024,7025),(7027,7028),(7027,7029),(7031,7032),(7034,7035),(7034,7036),(7034,7037),(7039,7040),(7042,7043),(7042,7044),(7046,7047),(7049,7050),(7052,7053),(7052,7054),(7056,7057),(7056,7058),(7056,7059),(7056,7060),(7056,7061),(7056,7062),(7056,7063),(7065,7066),(7065,7067),(7065,7068),(7070,7071),(7073,7074),(7073,7075),(7077,7078),(7080,7081),(7083,7084),(7086,7087),(7089,7090),(7089,7091),(7089,7092),(7094,7095),(7097,7098),(7100,7101),(7103,7104),(7103,7105),(7107,7108),(7107,7109),(7111,7112),(7114,7115),(7117,7118),(7120,7121),(7120,7122),(7120,7123),(7125,7126),(7125,7127),(7125,7128),(7125,7129),(7125,7130),(7132,7133),(7135,7136),(7135,7137),(7135,7138),(7135,7139),(7141,7142),(7141,7143),(7145,7146),(7145,7147),(7149,7150),(7149,7151),(7153,7154),(7153,7155),(7153,7156),(7158,7159),(7158,7160),(7162,7163),(7165,7166),(7165,7167),(7165,7168),(7170,7171),(7173,7174),(7173,7175),(7177,7178),(7177,7179),(7181,7182),(7184,7185),(7187,7188),(7187,7189),(7187,7190),(7187,7191),(7187,7192),(7187,7193),(7187,7194),(7196,7197),(7199,7200),(7199,7201),(7199,7202),(7204,7205),(7204,7206),(7208,7209),(7211,7212),(7214,7215),(7214,7216),(7218,7219),(7221,7222),(7221,7223),(7225,7226),(7225,7227),(7229,7230),(7232,7233),(7232,7234),(7236,7237),(7239,7240),(7239,7241),(7243,7244),(7246,7247),(7246,7248),(7246,7249),(7246,7250),(7246,7251),(7253,7254),(7253,7255),(7253,7256),(7258,7259),(7258,7260),(7262,7263),(7262,7264),(7266,7267),(7266,7268),(7270,7271),(7273,7274),(7273,7275),(7273,7276),(7278,7279),(7278,7280),(7278,7281),(7283,7284),(7286,7287),(7286,7288),(7286,7289),(7291,7292),(7294,7295),(7294,7296),(7294,7297),(7294,7298),(7294,7299),(7301,7302),(7301,7303),(7305,7306),(7305,7307),(7309,7310),(7309,7311),(7309,7312),(7314,7315),(7314,7316),(7314,7317),(7319,7320),(7319,7321),(7323,7324),(7323,7325),(7323,7326),(7328,7329),(7328,7330),(7328,7331),(7328,7332),(7334,7335),(7337,7338),(7340,7341),(7340,7342),(7340,7343),(7345,7346),(7345,7347),(7345,7348),(7350,7351),(7350,7352),(7350,7353),(7355,7356),(7355,7357),(7359,7360),(7359,7361),(7363,7364),(7363,7365),(7367,7368),(7367,7369),(7367,7370),(7367,7371),(7367,7372),(7374,7375),(7377,7378),(7380,7381),(7380,7382),(7380,7383),(7385,7386),(7388,7389),(7388,7390),(7392,7393),(7392,7394),(7396,7397),(7399,7400),(7399,7401),(7399,7402),(7404,7405),(7407,7408),(7410,7411),(7410,7412),(7410,7413),(7415,7416),(7415,7417),(7415,7418),(7415,7419),(7421,7422),(7421,7423),(7425,7426),(7425,7427),(7429,7430),(7429,7431),(7429,7432),(7434,7435),(7434,7436),(7438,7439),(7438,7440),(7442,7443),(7442,7444),(7442,7445),(7447,7448),(7447,7449),(7451,7452),(7451,7453),(7451,7454),(7456,7457),(7456,7458),(7456,7459),(7461,7462),(7461,7463),(7461,7464),(7466,7467),(7469,7470),(7469,7471),(7473,7474),(7473,7475),(7477,7478),(7477,7479),(7477,7480),(7482,7483),(7482,7484),(7486,7487),(7486,7488),(7486,7489),(7491,7492),(7491,7493),(7491,7494),(7491,7495),(7497,7498),(7497,7499),(7497,7500),(7502,7503),(7502,7504),(7502,7505),(7507,7508),(7507,7509),(7507,7510),(7512,7513),(7512,7514),(7512,7515),(7517,7518),(7517,7519),(7517,7520),(7522,7523),(7522,7524),(7526,7527),(7526,7528),(7526,7529),(7531,7532),(7531,7533),(7535,7536),(7535,7537),(7539,7540),(7539,7541),(7543,7544),(7543,7545),(7543,7546),(7548,7549),(7548,7550),(7548,7551),(7553,7554),(7553,7555),(7558,7559),(7558,7560),(7562,7563),(7562,7564),(7566,7567),(7566,7568),(7566,7569),(7571,7572),(7574,7575),(7574,7576),(7583,7584),(7583,7585),(7583,7586),(7588,7589),(7588,7590),(7588,7591),(7593,7594),(7593,7595),(7597,7598),(7597,7599),(7601,7602),(7601,7603),(7605,7606),(7605,7607),(7605,7608),(7605,7609),(7605,7610),(7612,7613),(7612,7614),(7616,7617),(7616,7618),(7620,7621),(7620,7622),(7624,7625),(7624,7626),(7624,7627),(7629,7630),(7629,7631),(7629,7632),(7634,7635),(7634,7636),(7634,7637),(7639,7640),(7639,7641),(7643,7644),(7643,7645),(7647,7648),(7647,7649),(7651,7652),(7651,7653),(7655,7656),(7655,7657),(7655,7658),(7660,7661),(7660,7662),(7664,7665),(7664,7666),(7668,7669),(7668,7670),(7672,7673),(7672,7674),(7672,7675),(7672,7676),(7678,7679),(7678,7680),(7682,7683),(7682,7684),(7686,7687),(7686,7688),(7690,7691),(7690,7692),(7690,7693),(7695,7696),(7695,7697),(7699,7700),(7699,7701),(7703,7704),(7703,7705),(7707,7708),(7707,7709),(7711,7712),(7711,7713),(7711,7714),(7716,7717),(7716,7718),(7720,7721),(7720,7722),(7724,7725),(7724,7726),(7728,7729),(7728,7730),(7732,7733),(7732,7734),(7736,7737),(7736,7738),(7740,7741),(7740,7742),(7740,7743),(7740,7744),(7746,7747),(7746,7748),(7746,7749),(7751,7752),(7751,7753),(7751,7754),(7751,7755),(7757,7758),(7757,7759),(7761,7762),(7761,7763),(7761,7764),(7766,7767),(7766,7768),(7770,7771),(7773,7774),(7773,7775),(7777,7778),(7777,7779),(7777,7780),(7782,7783),(7785,7786),(7785,7787),(7789,7790),(7789,7791),(7789,7792),(7794,7795),(7794,7796),(7794,7797),(7799,7800),(7799,7801),(7803,7804),(7803,7805),(7807,7808),(7807,7809),(7811,7812),(7811,7813),(7815,7816),(7818,7819),(7818,7820),(7818,7821),(7823,7824),(7823,7825),(7823,7826),(7823,7827),(7829,7830),(7829,7831),(7829,7832),(7834,7835),(7834,7836),(7834,7837),(7839,7840),(7839,7841),(7843,7844),(7843,7845),(7847,7848),(7850,7851),(7850,7852),(7854,7855),(7857,7858),(7857,7859),(7861,7862),(7861,7863),(7865,7866),(7865,7867),(7869,7870),(7869,7871),(7869,7872),(7869,7873),(7875,7876),(7875,7877),(7875,7878),(7880,7881),(7880,7882),(7884,7885),(7884,7886),(7888,7889),(7891,7892),(7891,7893),(7895,7896),(7898,7899),(7898,7900),(7902,7903),(7905,7906),(7905,7907),(7905,7908),(7905,7909),(7905,7910),(7912,7913),(7915,7916),(7920,7921),(7920,7922),(7924,7925);
/*!40000 ALTER TABLE `salesrecordentity_lineitementity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence`
--

DROP TABLE IF EXISTS `sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sequence` (
  `SEQ_NAME` varchar(50) NOT NULL,
  `SEQ_COUNT` decimal(38,0) DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence`
--

LOCK TABLES `sequence` WRITE;
/*!40000 ALTER TABLE `sequence` DISABLE KEYS */;
INSERT INTO `sequence` VALUES ('SEQ_GEN',10050);
/*!40000 ALTER TABLE `sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippingorderentity`
--

DROP TABLE IF EXISTS `shippingorderentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shippingorderentity` (
  `ID` bigint(20) NOT NULL,
  `CREATEDDATE` datetime DEFAULT NULL,
  `EXPECTEDRECEIVEDDATE` date DEFAULT NULL,
  `RECEIVEDDATE` date DEFAULT NULL,
  `SHIPPEDDATE` date DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `SUBMITTEDBY` varchar(255) DEFAULT NULL,
  `DESTINATION_ID` bigint(20) DEFAULT NULL,
  `ORIGIN_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SHIPPINGORDERENTITY_ORIGIN_ID` (`ORIGIN_ID`),
  KEY `FK_SHIPPINGORDERENTITY_DESTINATION_ID` (`DESTINATION_ID`),
  CONSTRAINT `FK_SHIPPINGORDERENTITY_DESTINATION_ID` FOREIGN KEY (`DESTINATION_ID`) REFERENCES `warehouseentity` (`ID`),
  CONSTRAINT `FK_SHIPPINGORDERENTITY_ORIGIN_ID` FOREIGN KEY (`ORIGIN_ID`) REFERENCES `warehouseentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippingorderentity`
--

LOCK TABLES `shippingorderentity` WRITE;
/*!40000 ALTER TABLE `shippingorderentity` DISABLE KEYS */;
INSERT INTO `shippingorderentity` VALUES (8954,'2014-11-10 19:16:51','2014-11-10',NULL,'2014-11-10','Completed','Yang Lusi',58,55),(9951,'2014-11-12 05:08:03','2014-11-11',NULL,'2014-11-12','Completed','Tan Wee Kek',58,55);
/*!40000 ALTER TABLE `shippingorderentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippingorderentity_lineitementity`
--

DROP TABLE IF EXISTS `shippingorderentity_lineitementity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shippingorderentity_lineitementity` (
  `ShippingOrderEntity_ID` bigint(20) NOT NULL,
  `lineItems_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ShippingOrderEntity_ID`,`lineItems_ID`),
  KEY `FK_SHIPPINGORDERENTITY_LINEITEMENTITY_lineItems_ID` (`lineItems_ID`),
  CONSTRAINT `FK_SHIPPINGORDERENTITY_LINEITEMENTITY_lineItems_ID` FOREIGN KEY (`lineItems_ID`) REFERENCES `lineitementity` (`ID`),
  CONSTRAINT `SHPPNGORDERENTITYLINEITEMENTITYShppngOrderEntityID` FOREIGN KEY (`ShippingOrderEntity_ID`) REFERENCES `shippingorderentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippingorderentity_lineitementity`
--

LOCK TABLES `shippingorderentity_lineitementity` WRITE;
/*!40000 ALTER TABLE `shippingorderentity_lineitementity` DISABLE KEYS */;
INSERT INTO `shippingorderentity_lineitementity` VALUES (8954,8955),(8954,8956),(8954,8957),(8954,8959),(9951,9952);
/*!40000 ALTER TABLE `shippingorderentity_lineitementity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffentity`
--

DROP TABLE IF EXISTS `staffentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staffentity` (
  `ID` bigint(20) NOT NULL,
  `ACCOUNTACTIVATIONSTATUS` tinyint(1) DEFAULT '0',
  `ACCOUNTLOCKSTATUS` tinyint(1) DEFAULT '0',
  `ACTIVATIONCODE` varchar(255) DEFAULT NULL,
  `ADDRESS` longtext,
  `EMAIL` longtext,
  `IDENTIFICATIONNO` longtext,
  `INVALIDLOGINATTEMPT` int(11) DEFAULT NULL,
  `NAME` longtext,
  `PASSWORDHASH` varchar(255) DEFAULT NULL,
  `PASSWORDRESET` varchar(255) DEFAULT NULL,
  `PASSWORDSALT` varchar(255) DEFAULT NULL,
  `PHONE` longtext,
  `UNLOCKCODE` varchar(255) DEFAULT NULL,
  `COUNTRY_ID` bigint(20) DEFAULT NULL,
  `SECURITYQUESTION` int(11) DEFAULT NULL,
  `SECURITYANSWER` longtext,
  PRIMARY KEY (`ID`),
  KEY `FK_STAFFENTITY_COUNTRY_ID` (`COUNTRY_ID`),
  CONSTRAINT `FK_STAFFENTITY_COUNTRY_ID` FOREIGN KEY (`COUNTRY_ID`) REFERENCES `countryentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffentity`
--

LOCK TABLES `staffentity` WRITE;
/*!40000 ALTER TABLE `staffentity` DISABLE KEYS */;
INSERT INTO `staffentity` VALUES (16,1,0,'814292717220353071974428978835930019330','Island Furniture','admin@if.com','S0000000A',0,'Administrator','6609703c2943f425e825ea6d7556b5f8','148505879971152623550152519351826954392','[65, 52, 90, -126, -87, 40, -18, -31, 14, -41, 70, 91, -120, 93, -9, 32]','+65 65162727','1192693581301540901127154209773574496973',NULL,NULL,NULL),(17,1,0,'438529524624671430725073260865310757578','A','cashier1@if.com','0',0,'Cashier 1','f7875ae5664433d5300d86d35815b5ec','283612956050292243519201620627312350118','[28, 94, 34, 47, -8, -28, 119, 49, -79, -81, -96, 100, -3, -54, -63, -59]','0','911466642546624829033801920017103789904',NULL,NULL,NULL),(18,1,0,'1097721954424565083992373119800201351708','A','cashier2@if.com','0',0,'Cashier 2','f7f0cd08014e1be7b68afb5cf02a8b6d','560421491371022878071436344266169962084','[113, -11, 32, -117, 48, -6, -82, 28, 46, 74, 55, -36, -105, 98, -63, -50]','0','1020666786188367717812690952728941349998',NULL,NULL,NULL),(651,1,0,'527251204310442764033102789234202579301','A','linbaoyu@if.com','S0000000A',0,'Lin Baoyu','6609703c2943f425e825ea6d7556b5f8','148505879971152623550152519351826954392','[65, 52, 90, -126, -87, 40, -18, -31, 14, -41, 70, 91, -120, 93, -9, 32]','0','1270990061143830790436437898612058204034',NULL,NULL,NULL),(655,1,0,'846403418582792989077887853820354193086','A','zxd@if.com','S0000000A',0,'Jason Sim','6609703c2943f425e825ea6d7556b5f8','148505879971152623550152519351826954392','[65, 52, 90, -126, -87, 40, -18, -31, 14, -41, 70, 91, -120, 93, -9, 32]','0','1128425595788404368493025973247403070221',NULL,NULL,NULL),(2051,1,0,'614632932872514036465359970206143155559','A','trolley1@if.com','0',0,'Trolley 1','6609703c2943f425e825ea6d7556b5f8','518661726563450852149558577744838106638','[65, 52, 90, -126, -87, 40, -18, -31, 14, -41, 70, 91, -120, 93, -9, 32]','0','238121558910432018953037134570375687293',NULL,NULL,NULL),(2052,1,0,'190377471735296600505289127100537524876','A','trolley2@if.com','0',0,'Trolley 2','6609703c2943f425e825ea6d7556b5f8','631296368332094081185141789781502037421','[65, 52, 90, -126, -87, 40, -18, -31, 14, -41, 70, 91, -120, 93, -9, 32]','0','713283057206414244663005170828186332172',NULL,NULL,NULL),(2053,1,0,'1130431065037163361202476491633924125302','A','receptionist1@if.com','0',0,'Recepionist','6609703c2943f425e825ea6d7556b5f8','539779156365038682659330314500099209825','[65, 52, 90, -126, -87, 40, -18, -31, 14, -41, 70, 91, -120, 93, -9, 32]','0','336030237432192003952308446302717539875',NULL,NULL,NULL),(2101,1,0,'1134933179401310669906940082619538389143','A','lyg@if.com','S0000000A',0,'Lee Yuan Guang','6609703c2943f425e825ea6d7556b5f8','1176570190871845601327975959605049741332','[65, 52, 90, -126, -87, 40, -18, -31, 14, -41, 70, 91, -120, 93, -9, 32]','0','1226939320008295250843492965655927896793',NULL,NULL,NULL),(2204,1,0,'638786792663103047714307124010645444389','A','trolley3@if.com','0',0,'Trolley 3','6609703c2943f425e825ea6d7556b5f8','1259814976908030518509784915466363361669','[65, 52, 90, -126, -87, 40, -18, -31, 14, -41, 70, 91, -120, 93, -9, 32]','0','384332099062464775868924775540136511693',NULL,NULL,NULL),(8201,0,0,'879346760343103866135906101923010087308','A','deleteme@if.com','S0000000A',0,'Delete Me','f06e4e333cc419e7af99da096b462cc5','175462482119092766038928983203880755476','[-12, 4, 49, -116, -65, -22, -84, -108, -54, -116, -28, 72, 87, -108, 121, 101]','0','798588871913932456814722233337594715764',NULL,NULL,NULL),(8255,1,0,'600776359049369622479719941403025032870','A','globalmgr@if.com','S0000000A',0,'Peter','6609703c2943f425e825ea6d7556b5f8','236897981587787262749138020505751615040','[65, 52, 90, -126, -87, 40, -18, -31, 14, -41, 70, 91, -120, 93, -9, 32]','0','1187749242795887616677583165306012084285',NULL,NULL,NULL),(8256,1,0,'144576279309878502434746740929265725422','A','engineer@if.com','S0000000A',0,'Meepo','6609703c2943f425e825ea6d7556b5f8','1123460316470671945606558558379156873155','[65, 52, 90, -126, -87, 40, -18, -31, 14, -41, 70, 91, -120, 93, -9, 32]','0','654012089938795785701092905386425099624',NULL,NULL,NULL),(8257,1,0,'1207358687825845312328257913502190772587','A','apacpurchase@if.com','S0000000A',0,'Neo Wei','6609703c2943f425e825ea6d7556b5f8','1313244725204513042758358003385342052511','[65, 52, 90, -126, -87, 40, -18, -31, 14, -41, 70, 91, -120, 93, -9, 32]','0','1175648420970622312582002128059692884232',NULL,NULL,NULL),(8258,1,0,'1195282060133183035963871346874962498075','A','americapurchase@if.com','S0000000A',0,'Darius','6609703c2943f425e825ea6d7556b5f8','573904879324238588119343938391949924292','[65, 52, 90, -126, -87, 40, -18, -31, 14, -41, 70, 91, -120, 93, -9, 32]','0','415566169615174226444372113153766605271',NULL,NULL,NULL),(8259,1,0,'893170701285444598806258340586588323935','A','mfsg1mgr@if.com','S0000000A',0,'Xiao Dong','6609703c2943f425e825ea6d7556b5f8','123647104973703100779083947308123945685','[65, 52, 90, -126, -87, 40, -18, -31, 14, -41, 70, 91, -120, 93, -9, 32]','0','44894161945005886622452729946386912805',NULL,NULL,'null'),(8260,1,0,'786631111046559132775865410545983238807','A','marketing@if.com','S0000000A',0,'Zheng','6609703c2943f425e825ea6d7556b5f8','270059634751996179750782344297568349059','[65, 52, 90, -126, -87, 40, -18, -31, 14, -41, 70, 91, -120, 93, -9, 32]','0','1322965334612042326578980895433078287719',NULL,NULL,'null');
/*!40000 ALTER TABLE `staffentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffentity_messageinboxentity`
--

DROP TABLE IF EXISTS `staffentity_messageinboxentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staffentity_messageinboxentity` (
  `StaffEntity_ID` bigint(20) NOT NULL,
  `inboxMessages_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`StaffEntity_ID`,`inboxMessages_ID`),
  KEY `FK_STAFFENTITY_MESSAGEINBOXENTITY_inboxMessages_ID` (`inboxMessages_ID`),
  CONSTRAINT `FK_STAFFENTITY_MESSAGEINBOXENTITY_StaffEntity_ID` FOREIGN KEY (`StaffEntity_ID`) REFERENCES `staffentity` (`ID`),
  CONSTRAINT `FK_STAFFENTITY_MESSAGEINBOXENTITY_inboxMessages_ID` FOREIGN KEY (`inboxMessages_ID`) REFERENCES `messageentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffentity_messageinboxentity`
--

LOCK TABLES `staffentity_messageinboxentity` WRITE;
/*!40000 ALTER TABLE `staffentity_messageinboxentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `staffentity_messageinboxentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffentity_messageoutboxentity`
--

DROP TABLE IF EXISTS `staffentity_messageoutboxentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staffentity_messageoutboxentity` (
  `StaffEntity_ID` bigint(20) NOT NULL,
  `sentMessages_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`StaffEntity_ID`,`sentMessages_ID`),
  KEY `FK_STAFFENTITY_MESSAGEOUTBOXENTITY_sentMessages_ID` (`sentMessages_ID`),
  CONSTRAINT `FK_STAFFENTITY_MESSAGEOUTBOXENTITY_StaffEntity_ID` FOREIGN KEY (`StaffEntity_ID`) REFERENCES `staffentity` (`ID`),
  CONSTRAINT `FK_STAFFENTITY_MESSAGEOUTBOXENTITY_sentMessages_ID` FOREIGN KEY (`sentMessages_ID`) REFERENCES `messageentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffentity_messageoutboxentity`
--

LOCK TABLES `staffentity_messageoutboxentity` WRITE;
/*!40000 ALTER TABLE `staffentity_messageoutboxentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `staffentity_messageoutboxentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffentity_roleentity`
--

DROP TABLE IF EXISTS `staffentity_roleentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staffentity_roleentity` (
  `roles_ID` bigint(20) NOT NULL,
  `staffs_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`roles_ID`,`staffs_ID`),
  KEY `FK_STAFFENTITY_ROLEENTITY_staffs_ID` (`staffs_ID`),
  CONSTRAINT `FK_STAFFENTITY_ROLEENTITY_roles_ID` FOREIGN KEY (`roles_ID`) REFERENCES `roleentity` (`ID`),
  CONSTRAINT `FK_STAFFENTITY_ROLEENTITY_staffs_ID` FOREIGN KEY (`staffs_ID`) REFERENCES `staffentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffentity_roleentity`
--

LOCK TABLES `staffentity_roleentity` WRITE;
/*!40000 ALTER TABLE `staffentity_roleentity` DISABLE KEYS */;
INSERT INTO `staffentity_roleentity` VALUES (1,16),(9,17),(9,18),(2,651),(3,655),(12,2051),(12,2052),(10,2053),(4,2101),(12,2204),(11,8255),(6,8256),(7,8257),(7,8258),(8,8259),(5,8260);
/*!40000 ALTER TABLE `staffentity_roleentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffentity_todoentity`
--

DROP TABLE IF EXISTS `staffentity_todoentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staffentity_todoentity` (
  `StaffEntity_ID` bigint(20) NOT NULL,
  `toDoList_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`StaffEntity_ID`,`toDoList_ID`),
  KEY `FK_STAFFENTITY_TODOENTITY_toDoList_ID` (`toDoList_ID`),
  CONSTRAINT `FK_STAFFENTITY_TODOENTITY_StaffEntity_ID` FOREIGN KEY (`StaffEntity_ID`) REFERENCES `staffentity` (`ID`),
  CONSTRAINT `FK_STAFFENTITY_TODOENTITY_toDoList_ID` FOREIGN KEY (`toDoList_ID`) REFERENCES `todoentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffentity_todoentity`
--

LOCK TABLES `staffentity_todoentity` WRITE;
/*!40000 ALTER TABLE `staffentity_todoentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `staffentity_todoentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storagebinentity`
--

DROP TABLE IF EXISTS `storagebinentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storagebinentity` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `_LENGTH` int(11) DEFAULT NULL,
  `FREEVOLUME` int(11) DEFAULT NULL,
  `HEIGHT` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `VOLUME` int(11) DEFAULT NULL,
  `WIDTH` int(11) DEFAULT NULL,
  `WAREHOUSE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_STORAGEBINENTITY_WAREHOUSE_ID` (`WAREHOUSE_ID`),
  CONSTRAINT `FK_STORAGEBINENTITY_WAREHOUSE_ID` FOREIGN KEY (`WAREHOUSE_ID`) REFERENCES `warehouseentity` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storagebinentity`
--

LOCK TABLES `storagebinentity` WRITE;
/*!40000 ALTER TABLE `storagebinentity` DISABLE KEYS */;
INSERT INTO `storagebinentity` VALUES (4,1200,1728000000,1200,'Outbound Bin','Outbound',1728000000,1200,58),(5,1200,144000000,100,'Inbound Delivery Area','Inbound',144000000,1200,55),(6,600,917080,300,'BRIMNES Storage Area','Pallet',108000000,600,55),(7,400,21360000,300,'LINMON Storage Area','Pallet',48000000,400,55),(8,400,13034760,200,'GLASHOLM Storage Area','Pallet',24000000,300,55),(9,500,77284600,400,'Outbound Shipping Area','Outbound',100000000,500,55),(10,50,75000,50,'EPC Bin','Shelf',125000,50,55),(11,100,100000,50,'Steel Plates Shelf','Shelf',250000,50,55),(12,1200,1728000000,1200,'Inbound Delivery Area','Inbound',1728000000,1200,58),(13,300,2796720,200,'8426 Children Toy Display Area','Furniture Marketplace',3000000,50,58),(14,300,9958824,200,'9842 GLASHOLM Storage Area','Pallet',18000000,300,58),(15,900,10852200,100,'4806 KLIPPAN Storage Area','Pallet',18000000,200,58),(16,300,13560000,200,'7313 LINMON Storage Area','Pallet',18000000,300,58),(17,100,81200,10,'Big Bread Cabinet','Retail Outlet',100000,100,6252),(18,1200,1728000000,1200,'Inbound Bin','Inbound',1728000000,1200,6252),(20,1300,2129400000,1260,'Inbound Bin','Inbound',2129400000,1300,10002),(21,1200,139613904,100,'Outbound Bin','Outbound',144000000,1200,57);
/*!40000 ALTER TABLE `storagebinentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storagebinentity_lineitementity`
--

DROP TABLE IF EXISTS `storagebinentity_lineitementity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storagebinentity_lineitementity` (
  `StorageBinEntity_ID` bigint(20) NOT NULL,
  `lineItems_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`StorageBinEntity_ID`,`lineItems_ID`),
  KEY `FK_STORAGEBINENTITY_LINEITEMENTITY_lineItems_ID` (`lineItems_ID`),
  CONSTRAINT `FK_STORAGEBINENTITY_LINEITEMENTITY_lineItems_ID` FOREIGN KEY (`lineItems_ID`) REFERENCES `lineitementity` (`ID`),
  CONSTRAINT `STORAGEBINENTITY_LINEITEMENTITYStorageBinEntity_ID` FOREIGN KEY (`StorageBinEntity_ID`) REFERENCES `storagebinentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storagebinentity_lineitementity`
--

LOCK TABLES `storagebinentity_lineitementity` WRITE;
/*!40000 ALTER TABLE `storagebinentity_lineitementity` DISABLE KEYS */;
INSERT INTO `storagebinentity_lineitementity` VALUES (6,8851),(7,8852),(8,8855),(10,8902),(11,8903),(13,9003),(14,9006),(15,9009),(9,9773),(9,9774),(17,9903),(16,9956),(21,10056);
/*!40000 ALTER TABLE `storagebinentity_lineitementity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_itementity`
--

DROP TABLE IF EXISTS `store_itementity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_itementity` (
  `ID` bigint(20) NOT NULL,
  `SAFESTOCK` int(11) DEFAULT NULL,
  `ITEM_ID` bigint(20) DEFAULT NULL,
  `STORE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_STORE_ITEMENTITY_STORE_ID` (`STORE_ID`),
  KEY `FK_STORE_ITEMENTITY_ITEM_ID` (`ITEM_ID`),
  CONSTRAINT `FK_STORE_ITEMENTITY_ITEM_ID` FOREIGN KEY (`ITEM_ID`) REFERENCES `itementity` (`ID`),
  CONSTRAINT `FK_STORE_ITEMENTITY_STORE_ID` FOREIGN KEY (`STORE_ID`) REFERENCES `storeentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_itementity`
--

LOCK TABLES `store_itementity` WRITE;
/*!40000 ALTER TABLE `store_itementity` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_itementity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_manufacturingfacility`
--

DROP TABLE IF EXISTS `store_manufacturingfacility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `store_manufacturingfacility` (
  `storeList_ID` bigint(20) NOT NULL,
  `manufacturingFacilityList_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`storeList_ID`,`manufacturingFacilityList_ID`),
  KEY `stremanufacturingFacilitymnfacturingFacilityListID` (`manufacturingFacilityList_ID`),
  CONSTRAINT `FK_store_manufacturingFacility_storeList_ID` FOREIGN KEY (`storeList_ID`) REFERENCES `storeentity` (`ID`),
  CONSTRAINT `stremanufacturingFacilitymnfacturingFacilityListID` FOREIGN KEY (`manufacturingFacilityList_ID`) REFERENCES `manufacturingfacilityentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_manufacturingfacility`
--

LOCK TABLES `store_manufacturingfacility` WRITE;
/*!40000 ALTER TABLE `store_manufacturingfacility` DISABLE KEYS */;
INSERT INTO `store_manufacturingfacility` VALUES (59,54),(59,56),(61,56);
/*!40000 ALTER TABLE `store_manufacturingfacility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeentity`
--

DROP TABLE IF EXISTS `storeentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeentity` (
  `ID` bigint(20) NOT NULL,
  `ADDRESS` longtext,
  `EMAIL` longtext,
  `ISDELETED` tinyint(1) DEFAULT '0',
  `NAME` longtext,
  `POSTALCODE` longtext,
  `TELEPHONE` longtext,
  `COUNTRY_ID` bigint(20) DEFAULT NULL,
  `REGIONALOFFICE_ID` bigint(20) DEFAULT NULL,
  `WAREHOUSE_ID` bigint(20) DEFAULT NULL,
  `STOREMAPIMAGEURL` varchar(256) DEFAULT NULL,
  `longitude` text,
  `latitude` text,
  PRIMARY KEY (`ID`),
  KEY `FK_STOREENTITY_COUNTRY_ID` (`COUNTRY_ID`),
  KEY `FK_STOREENTITY_WAREHOUSE_ID` (`WAREHOUSE_ID`),
  KEY `FK_STOREENTITY_REGIONALOFFICE_ID` (`REGIONALOFFICE_ID`),
  CONSTRAINT `FK_STOREENTITY_COUNTRY_ID` FOREIGN KEY (`COUNTRY_ID`) REFERENCES `countryentity` (`ID`),
  CONSTRAINT `FK_STOREENTITY_REGIONALOFFICE_ID` FOREIGN KEY (`REGIONALOFFICE_ID`) REFERENCES `regionalofficeentity` (`ID`),
  CONSTRAINT `FK_STOREENTITY_WAREHOUSE_ID` FOREIGN KEY (`WAREHOUSE_ID`) REFERENCES `warehouseentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeentity`
--

LOCK TABLES `storeentity` WRITE;
/*!40000 ALTER TABLE `storeentity` DISABLE KEYS */;
INSERT INTO `storeentity` VALUES (59,'317 Alexandra Rd','queens@if.com',0,'Queenstown Store','623633','67866868',25,53,58,'/IS3102_Project-war/img/storemaps/queens.jpg','103.80287','1.27471'),(60,'20 Kent Ridge Road','kentridge@if.com',0,'Kent Ridge Store','624753','67522475',25,53,1751,'/IS3102_Project-war/img/storemaps/kentridge.jpg','103.77866','1.29484'),(61,'60 Tampines North Drive','tampi@if.com',0,'Tampines Store','640258','67866868',25,53,60,'/IS3102_Project-war/img/storemaps/tampi.jpg','103.95827','1.34893'),(551,'Jalan PJU 7/2, Mutiara Damansara, Petaling Jaya','kualalumpur@if.com',0,'Kuala Lumpur Store','47820','377267777',26,53,6252,'/IS3102_Project-war/img/storemaps/kualalumpur.jpg','101.61061','3.15632'),(601,'Jalur Sutera Boulevard No. 45 Alam Sutera','jarkata@if.com',0,'Jarkata Store','847298','02129853900',27,53,6251,'/IS3102_Project-war/img/storemaps/jarkata.jpg','106.66027','-6.23710'),(1801,'126 Caoxi Bei Lu, Shanghai','caoxi@if.com',0,'Caoxi Bei Store','9035959','2154254532',29,53,6253,'/IS3102_Project-war/img/storemaps/caoxi.jpg','121.43575','31.17783'),(10001,'Singapore','sg_ecommerce@if.com',0,'ECommerce Store','000000','00000000',25,53,10002,'/IS3102_Project-war/img/storemaps/ECommerce Store.jpg','1','1');
/*!40000 ALTER TABLE `storeentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptionentity`
--

DROP TABLE IF EXISTS `subscriptionentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptionentity` (
  `ID` bigint(20) NOT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptionentity`
--

LOCK TABLES `subscriptionentity` WRITE;
/*!40000 ALTER TABLE `subscriptionentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscriptionentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_itementity`
--

DROP TABLE IF EXISTS `supplier_itementity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier_itementity` (
  `ID` bigint(20) NOT NULL,
  `COSTPRICE` double DEFAULT NULL,
  `ISDELETED` tinyint(1) DEFAULT '0',
  `LEADTIME` int(11) DEFAULT NULL,
  `LOTSIZE` int(11) DEFAULT NULL,
  `ITEM_ID` bigint(20) DEFAULT NULL,
  `SUPPLIER_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SUPPLIER_ITEMENTITY_SUPPLIER_ID` (`SUPPLIER_ID`),
  KEY `FK_SUPPLIER_ITEMENTITY_ITEM_ID` (`ITEM_ID`),
  CONSTRAINT `FK_SUPPLIER_ITEMENTITY_ITEM_ID` FOREIGN KEY (`ITEM_ID`) REFERENCES `itementity` (`ID`),
  CONSTRAINT `FK_SUPPLIER_ITEMENTITY_SUPPLIER_ID` FOREIGN KEY (`SUPPLIER_ID`) REFERENCES `supplierentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_itementity`
--

LOCK TABLES `supplier_itementity` WRITE;
/*!40000 ALTER TABLE `supplier_itementity` DISABLE KEYS */;
INSERT INTO `supplier_itementity` VALUES (363,10,0,2,10,72,66),(364,10,0,2,10,73,67),(4595,10,0,2,20,807,66),(7982,10,0,2,10,2301,68),(8253,8,0,4,30,965,8251),(8254,5,0,3,5,948,8252),(8906,10,0,2,10,7959,8904),(8907,10,0,2,10,7960,8904),(8908,10,0,2,10,7961,8904),(8909,10,0,2,10,7966,8905),(8951,10,0,2,10,7974,8905),(9851,10,0,2,10,4577,8904);
/*!40000 ALTER TABLE `supplier_itementity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplierentity`
--

DROP TABLE IF EXISTS `supplierentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplierentity` (
  `ID` bigint(20) NOT NULL,
  `ADDRESS` longtext,
  `CONTACTNO` longtext,
  `EMAIL` longtext,
  `ISDELETED` tinyint(1) DEFAULT '0',
  `SUPPLIERNAME` longtext,
  `COUNTRY_ID` bigint(20) DEFAULT NULL,
  `REGIONALOFFICE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SUPPLIERENTITY_REGIONALOFFICE_ID` (`REGIONALOFFICE_ID`),
  KEY `FK_SUPPLIERENTITY_COUNTRY_ID` (`COUNTRY_ID`),
  CONSTRAINT `FK_SUPPLIERENTITY_COUNTRY_ID` FOREIGN KEY (`COUNTRY_ID`) REFERENCES `countryentity` (`ID`),
  CONSTRAINT `FK_SUPPLIERENTITY_REGIONALOFFICE_ID` FOREIGN KEY (`REGIONALOFFICE_ID`) REFERENCES `regionalofficeentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplierentity`
--

LOCK TABLES `supplierentity` WRITE;
/*!40000 ALTER TABLE `supplierentity` DISABLE KEYS */;
INSERT INTO `supplierentity` VALUES (66,'231 Bukit Panjang Road','67911580','contact@chevronphilips.com',0,'Chevron Phillips Chemicals Asia Pte Ltd',25,53),(67,'3 Dover Road','67911432','john@acumen.com.sg',0,'Acumen Engrg Pte Ltd',25,53),(68,'3 Bukit Timah Road','67911433','supplies@alliedspecialty.com.sg',0,'Allied Specialty Compounds Pte Ltd',25,53),(8251,'1200 Cedar Valley Drive Westlake Village, CA 91362','8189918553','enquiries@mws.com',0,'MWS Wire Industries',28,653),(8252,'3131 Main Street Lafayette, IN 47905-2272','765-771-3629','carol@aluco.com',0,'Aluminum Co. of America',28,653),(8904,'20 Pandan Loop #01-157','67796332','sales@hongfood.com.sg',0,'Hongfood Supplies',25,53),(8905,'6 Fishery Road Port #02M','62684144','sales@lshworld.com',0,'Lim Siang Huat',25,53);
/*!40000 ALTER TABLE `supplierentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todoentity`
--

DROP TABLE IF EXISTS `todoentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todoentity` (
  `ID` bigint(20) NOT NULL,
  `DESCRIPTION` longtext,
  `ISDONE` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todoentity`
--

LOCK TABLES `todoentity` WRITE;
/*!40000 ALTER TABLE `todoentity` DISABLE KEYS */;
/*!40000 ALTER TABLE `todoentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferorderentity`
--

DROP TABLE IF EXISTS `transferorderentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transferorderentity` (
  `ID` bigint(20) NOT NULL,
  `DATECREATED` datetime DEFAULT NULL,
  `DATETRANSFERRED` datetime DEFAULT NULL,
  `ISDELETED` tinyint(1) DEFAULT '0',
  `STATUS` varchar(255) DEFAULT NULL,
  `SUBMITTEDBY` varchar(255) DEFAULT NULL,
  `WAREHOUSE_ID` bigint(20) DEFAULT NULL,
  `LINEITEM_ID` bigint(20) DEFAULT NULL,
  `ORIGIN_ID` bigint(20) DEFAULT NULL,
  `TARGET_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_TRANSFERORDERENTITY_ORIGIN_ID` (`ORIGIN_ID`),
  KEY `FK_TRANSFERORDERENTITY_WAREHOUSE_ID` (`WAREHOUSE_ID`),
  KEY `FK_TRANSFERORDERENTITY_LINEITEM_ID` (`LINEITEM_ID`),
  KEY `FK_TRANSFERORDERENTITY_TARGET_ID` (`TARGET_ID`),
  CONSTRAINT `FK_TRANSFERORDERENTITY_LINEITEM_ID` FOREIGN KEY (`LINEITEM_ID`) REFERENCES `lineitementity` (`ID`),
  CONSTRAINT `FK_TRANSFERORDERENTITY_ORIGIN_ID` FOREIGN KEY (`ORIGIN_ID`) REFERENCES `storagebinentity` (`ID`),
  CONSTRAINT `FK_TRANSFERORDERENTITY_TARGET_ID` FOREIGN KEY (`TARGET_ID`) REFERENCES `storagebinentity` (`ID`),
  CONSTRAINT `FK_TRANSFERORDERENTITY_WAREHOUSE_ID` FOREIGN KEY (`WAREHOUSE_ID`) REFERENCES `warehouseentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferorderentity`
--

LOCK TABLES `transferorderentity` WRITE;
/*!40000 ALTER TABLE `transferorderentity` DISABLE KEYS */;
INSERT INTO `transferorderentity` VALUES (8854,'2014-11-10 18:01:37',NULL,0,'Pending','N.A.',55,NULL,5,8),(9001,'2014-11-10 19:34:02','2014-11-10 19:34:11',0,'Completed','Lee Yuan Guang',58,9002,12,13),(9004,'2014-11-10 19:34:17','2014-11-10 19:34:29',0,'Completed','Lee Yuan Guang',58,9005,12,14),(9007,'2014-11-10 19:36:02','2014-11-10 19:36:16',0,'Completed','Lee Yuan Guang',58,9008,12,15),(9901,'2014-11-12 00:31:13','2014-11-12 00:31:27',0,'Completed','Ahmad',6252,9902,18,17),(9954,'2014-11-12 05:08:38','2014-11-12 05:09:02',0,'Completed','Lee Yuan Guang',58,9955,12,16);
/*!40000 ALTER TABLE `transferorderentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouseentity`
--

DROP TABLE IF EXISTS `warehouseentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouseentity` (
  `ID` bigint(20) NOT NULL,
  `ADDRESS` longtext,
  `EMAIL` longtext,
  `ISDELETED` tinyint(1) DEFAULT '0',
  `TELEPHONE` longtext,
  `WAREHOUSENAME` longtext,
  `COUNTRY_ID` bigint(20) DEFAULT NULL,
  `REGIONALOFFICE_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_WAREHOUSEENTITY_COUNTRY_ID` (`COUNTRY_ID`),
  KEY `FK_WAREHOUSEENTITY_REGIONALOFFICE_ID` (`REGIONALOFFICE_ID`),
  CONSTRAINT `FK_WAREHOUSEENTITY_COUNTRY_ID` FOREIGN KEY (`COUNTRY_ID`) REFERENCES `countryentity` (`ID`),
  CONSTRAINT `FK_WAREHOUSEENTITY_REGIONALOFFICE_ID` FOREIGN KEY (`REGIONALOFFICE_ID`) REFERENCES `regionalofficeentity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouseentity`
--

LOCK TABLES `warehouseentity` WRITE;
/*!40000 ALTER TABLE `warehouseentity` DISABLE KEYS */;
INSERT INTO `warehouseentity` VALUES (55,'3 Jurong Industrial Park','MFSG1@islandfurniture.com',0,'67183645','Manufacturing Facility SG1 Warehouse',25,53),(57,'26 Toh Guan Road','MFSG2@islandfurniture.com',0,'67183664','Manufacturing Facility SG2 Warehouse',25,53),(58,'317 Alexandra Rd, Singapore 159965','queens@if.com',0,'67866868','Queenstown Store Warehouse',25,53),(60,'60 Tampines North Drive','tampi@if.com',0,'67866868','Tampines Store Warehouse',25,53),(1751,'20 Kent Ridge Road','kentridge@if.com',0,'67522476','Kent Ridge Store Warehouse',25,53),(6251,'Jalur Sutera Boulevard No. 45 Alam Sutera','jarkata@if.com',0,'02129853900','Jarkata Store Warehouse',27,53),(6252,'Jalan PJU 7/2, Mutiara Damansara, 47820 Petaling Jaya','kualalumpur@if.com',0,'377267777','Kuala Lumpur Store Warehouse',26,53),(6253,'126 Caoxi Bei Lu, Shanghai','caoxi@if.com',0,'2154254532','Caoxi Bei Store Warehouse',29,53),(10002,'Singapore','sg_ecommerce@if.com',0,'0000000','Singapore ECommerce Warehouse',25,53);
/*!40000 ALTER TABLE `warehouseentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlistentity`
--

DROP TABLE IF EXISTS `wishlistentity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishlistentity` (
  `ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlistentity`
--

LOCK TABLES `wishlistentity` WRITE;
/*!40000 ALTER TABLE `wishlistentity` DISABLE KEYS */;
INSERT INTO `wishlistentity` VALUES (21),(23),(8352),(8354);
/*!40000 ALTER TABLE `wishlistentity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlistentity_itementity`
--

DROP TABLE IF EXISTS `wishlistentity_itementity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishlistentity_itementity` (
  `WishListEntity_ID` bigint(20) NOT NULL,
  `items_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`WishListEntity_ID`,`items_ID`),
  KEY `FK_WISHLISTENTITY_ITEMENTITY_items_ID` (`items_ID`),
  CONSTRAINT `FK_WISHLISTENTITY_ITEMENTITY_WishListEntity_ID` FOREIGN KEY (`WishListEntity_ID`) REFERENCES `wishlistentity` (`ID`),
  CONSTRAINT `FK_WISHLISTENTITY_ITEMENTITY_items_ID` FOREIGN KEY (`items_ID`) REFERENCES `itementity` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlistentity_itementity`
--

LOCK TABLES `wishlistentity_itementity` WRITE;
/*!40000 ALTER TABLE `wishlistentity_itementity` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlistentity_itementity` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-06-05 11:30:38