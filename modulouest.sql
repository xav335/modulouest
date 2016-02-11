-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: modulouest
-- ------------------------------------------------------
-- Server version	5.5.44-0+deb8u1

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `login` varchar(30) NOT NULL,
  `mdp` varchar(30) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'modul','modul33','administrateur'),(2,'admin','admin335','ico');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catproduct`
--

DROP TABLE IF EXISTS `catproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catproduct` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `ordre_affichage` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catproduct`
--

LOCK TABLES `catproduct` WRITE;
/*!40000 ALTER TABLE `catproduct` DISABLE KEYS */;
INSERT INTO `catproduct` VALUES (41,41,'Protection bois  ','/_MG_5081-41.jpg',1),(43,43,' ','/_MG_5255-43.jpg',2),(54,0,'Aménagement modulaire  ','',2),(57,56,'amenagements','',1),(58,54,'System Edstrom  ','',4),(60,60,'Protection bois  ','',1),(65,65,'Protection bois  ','',1),(66,66,'Protection aluminium  ','',2),(68,81,'Balisage ','',2),(69,65,'Protection bois ','',1),(73,71,'Protection en Contre Plaqué   ','',1),(75,75,'Protection aluminium  ','',6),(77,75,'Habillage bois  ','',1),(79,79,'Protection bois ','',5),(80,0,'habillage du véhicule ','',1),(81,81,'Gyrophare et rampe  ','',5),(82,82,'Marchepied ','',4),(83,83,'Plastification et résine étanche ','',5),(84,84,'Transformation VP/VU','',8),(85,0,'Hayon élévateur','',9),(86,0,'Aménagement TPMR','',6),(87,0,'Aménagement spécifique','',7),(94,94,'Produits','',13),(96,80,'Habillage et protection','',1),(97,97,'Balisage ','',3),(98,87,'Protection aluminium','',1);
/*!40000 ALTER TABLE `catproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `adresse` varchar(250) NOT NULL,
  `cp` varchar(10) NOT NULL,
  `ville` varchar(100) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `message` text,
  `newsletter` tinyint(4) NOT NULL DEFAULT '0',
  `fromgoldbook` tinyint(4) NOT NULL DEFAULT '0',
  `fromcontact` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (2,'q','q','','','','franck_langleron@hotmail.com','q','',1,1,1),(3,'Javier','Alvarez','55 rue anatole france','33150','Latresne','xavier@gonzalez.pm','06 81 73 18 70','mon message de test',0,0,1),(4,'Xavier','Gonzalez','','','','xavi@gmaeil.cm','05050505','Test',0,0,1);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_categorie`
--

DROP TABLE IF EXISTS `contact_categorie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_categorie` (
  `id_contact` int(11) unsigned NOT NULL,
  `id_categorie` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_categorie`
--

LOCK TABLES `contact_categorie` WRITE;
/*!40000 ALTER TABLE `contact_categorie` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_categorie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goldbook`
--

DROP TABLE IF EXISTS `goldbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goldbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `nom` varchar(250) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` text,
  `online` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goldbook`
--

LOCK TABLES `goldbook` WRITE;
/*!40000 ALTER TABLE `goldbook` DISABLE KEYS */;
INSERT INTO `goldbook` VALUES (1,'2015-09-06 00:00:00','Franck Langleron','franck_langleron@hotmail.com','Très professionnel ! je recommande!!',1),(2,'2015-09-07 00:00:00','Xavier Gonzalez','xavier@gonzalez.pm','Prestation nickel, très pro, très satisfait',1);
/*!40000 ALTER TABLE `goldbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_news`
--

DROP TABLE IF EXISTS `media_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_news` int(11) NOT NULL,
  `url_media` varchar(250) NOT NULL,
  `url_apercu` varchar(250) NOT NULL,
  `type_media` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`id_news`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_news`
--

LOCK TABLES `media_news` WRITE;
/*!40000 ALTER TABLE `media_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id_news` int(11) NOT NULL AUTO_INCREMENT,
  `date_news` datetime NOT NULL,
  `titre` varchar(250) NOT NULL,
  `contenu` text,
  `image1` varchar(250) DEFAULT NULL,
  `online` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_news`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (31,'2016-01-26 00:00:00','Découvrez notre nouveau site internet',' ','/Screen_Shot_2016_01_30_at_16.58.02-31.png',1);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter`
--

DROP TABLE IF EXISTS `newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletter` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `titre` varchar(250) DEFAULT NULL,
  `bas_page` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter`
--

LOCK TABLES `newsletter` WRITE;
/*!40000 ALTER TABLE `newsletter` DISABLE KEYS */;
INSERT INTO `newsletter` VALUES (12,'2015-01-01 00:00:00','Ceci est la toute nouvelle actu',' ');
/*!40000 ALTER TABLE `newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletter_detail`
--

DROP TABLE IF EXISTS `newsletter_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletter_detail` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_newsletter` int(10) unsigned NOT NULL,
  `titre` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `texte` text,
  PRIMARY KEY (`id`,`id_newsletter`)
) ENGINE=InnoDB AUTO_INCREMENT=329 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter_detail`
--

LOCK TABLES `newsletter_detail` WRITE;
/*!40000 ALTER TABLE `newsletter_detail` DISABLE KEYS */;
INSERT INTO `newsletter_detail` VALUES (328,12,'Nouve équipement','/Avril_13_024-12.jpg','http://modulouest.iconeo.fr','');
/*!40000 ALTER TABLE `newsletter_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_categorie` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `fichier_pdf` varchar(100) NOT NULL,
  `accueil` enum('0','1') NOT NULL DEFAULT '0',
  `online` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,96,'Aménagement bois ','L\'aménagement ou l\'équipement d\'un véhicule utilitaire est souvent considéré comme une charge supplémentaire, alors qu\'au contraire un véhicule correctement aménagé est un gain de productif direct.   \r\nGain de temps: Plusieurs études menées faisant apparaitre qu\'un véhicule correctement aménagé permettait de gagner en moyenne une heure par jour. L\'investissement de départ est alors rapidement amorti. \r\nImage de votre entreprise : Un véhicule mal améngé donne une image négative de votre entreprise , comment faire confiance à un professionnel dont le véhicule est un amoncellement d\'outils, de matériaux .... un client se demande rapidement dans quel état il retrouvera son chantier. \r\nSécurité : Moins de risques d\'avoir des objets mobiles à l\'intérieur de votre véhicule , moins de riques de tranferts de charges inopinées risquant de déstabiliser votre véhicule.  \r\n\r\nTous nos aménagements bois sont réalisés sur-mesure en fonction de vos besoins et votre souhait. \r\nRéalisation en contreplaqué brut ou filmé, selon votre choix ?  \r\n \r\n\r\n   ','/0115_002-1.jpg','0','1'),(3,0,'Aménagement spécifique','Depuis plus de 20 ans. MODUL-OUEST répond à la demande de ses clients, nous sommes en mesure d\'apporter une solution à vos contraintes : \r\nAluminium, Résine, Kit Cover ... du plus simple au plus complexe.    ','','0','1'),(6,0,'Signalisation lumineuse et balisage  ','Nous équipons tous types de véhicules de POLICE , GENDARMERIE  et BTP . \r\nBalisage classe A et B , Gyrophare à leds , Triangle a relevage manuel ou électrique .....\r\nNous commercialisons les produits: SIRAC. MERCURA. AXIMUM. T2S . SARR ....    ','','0','0'),(7,0,'Habillage du véhicule   ','L\'habillage d\'un véhicule , consiste à protéger l\'intérieur de chargement de votre véhicule utilitaire des chocs liés à son utilisation.\r\nNos protections sont réalisées en contre plaqué de qualité oukoumé en 5 ou 8 mm d\'épaisseur suivant le type de véhicule .\r\nLes planchers sont réalisés en contre plaqué brut de 15mm ou antidérapant 12 mm suivant la demande et l\'utilisation. \r\nFinition: Joints silicone et barre de seuil aluminium.     ','','0','0'),(8,0,'Signalisation lumineuse ','Partenaire de la marque SIRAC , nous équipons les véhicules de POLICE, GENDARMERIE et POMPIERS ','','0','0'),(9,58,' Aménagement modulaire ','System Edstrom fondée en 1958 , est l\'une des plus ancienne société en EUROPE fabriquant et commercialisant des aménagements pour les véhicules utilitaires. Plus de 50 ans d\'expérience dans le développement de nos produits , plus de 50 ans d\'écoute attentive des souhaits de nos clients pour trouver des solutions pour les utilisateurs. \r\nNotre priorité la sécurité, nos aménagements ont obtenus la certification française INRS NS286     ','','1','1'),(10,98,'Protection aluminium','Une protection aluminium vous permet un lavage ou une désinfection de votre véhicule  ','','0','1'),(11,96,'Habillage bois ','Nos habillage sont réalisés en contreplaqué de qualité supérieur, nous protégeons les parois , les portes et le plancher, ce dernier peut être en contreplaqué antidérapant .\r\nNous pouvons vous proposer du CP filmé ou du Poly pro.    ','','0','0'),(12,58,'Aménagement modulaire System Edstrom ','Véhicule atelier ','','0','1');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_image`
--

DROP TABLE IF EXISTS `product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_image` (
  `num_image` int(11) NOT NULL AUTO_INCREMENT,
  `num_produit` int(11) NOT NULL,
  `fichier` varchar(100) NOT NULL,
  `defaut` enum('oui','non') NOT NULL DEFAULT 'non',
  PRIMARY KEY (`num_image`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image`
--

LOCK TABLES `product_image` WRITE;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
INSERT INTO `product_image` VALUES (20,4,'/IMG_6130-4.jpg','non'),(25,4,'/IMG_6686-4.jpg','oui'),(30,9,'/Fevrier_14_001-9.jpg','oui'),(31,9,'/Fevrier_14_004-9.jpg','non'),(32,9,'/Samsung_1115_004-9.jpg','non'),(33,10,'/003-10.jpg','oui'),(34,11,'/0115_003-11.jpg','oui'),(35,6,'/Oct_15_Tel_037-6.jpg','oui'),(36,3,'/Oct_15_042-3.jpg','oui'),(37,12,'/Samsung_1115_004-12.jpg','oui'),(38,1,'/0115_002-1.jpg','oui');
/*!40000 ALTER TABLE `product_image` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-12  0:44:51
