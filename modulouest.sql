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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catproduct`
--

LOCK TABLES `catproduct` WRITE;
/*!40000 ALTER TABLE `catproduct` DISABLE KEYS */;
INSERT INTO `catproduct` VALUES (41,41,'Protection bois  ','/_MG_5081-41.jpg',1),(43,43,' ','/_MG_5255-43.jpg',2),(54,0,'Aménagement modulaire    ','',2),(57,56,'amenagements','',1),(60,60,'Protection bois  ','',1),(65,65,'Protection bois  ','',1),(66,66,'Protection aluminium  ','',2),(68,81,'Balisage ','',2),(69,65,'Protection bois ','',1),(73,71,'Protection en Contre Plaqué   ','',1),(75,75,'Protection aluminium  ','',6),(77,75,'Habillage bois  ','',1),(79,79,'Protection bois ','',5),(81,81,'Gyrophare et rampe  ','',5),(82,82,'Marchepied ','',4),(83,83,'Plastification et résine étanche ','',5),(84,84,'Transformation VP/VU','',8),(85,0,'Hayon élévateur','',4),(86,0,'Aménagement TPMR','',5),(87,0,'Aménagement spécifique','',3),(94,94,'Produits','',13),(96,80,'Habillage et protection','',1),(97,97,'Balisage ','',3),(99,0,'Habillage et protection bois   ','',9),(100,0,'Galerie et Berce-vitre   ','',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (4,'Xavier','Gonzalez','','','','xavi@gmaeil.cm','05050505','Test',0,0,1),(5,'valerie','praud gaillac','centre Hospitalier Cadillac 89 rue Cazeau Cazalet ','33410','cadillac','valeri.praud-gaillac@ch-cadilac.fr','0556765167','bonjour\r\n\r\nNous souhaiterions aménager un véhicule de type Boxer pour l\'équipe centrale d\'entretien des locaux, pourriez vous nous envoyer un catalogue des aménagements que vous proposez.\r\nMerci\r\nCordialement ',0,0,1),(6,'Louis','Lefrancois','1 passage des meneaux ','33880','Saint caprais ','lefrancoislouis@outlook.fr','0689217251','Bonjour, j\'aimerai connaître le prix pour un habillage bois côté et plafond ainsi que porte arrière sur un Vito. \r\n',0,0,1),(7,'Xavier','Gaite',' Croix rouge de Bordeaux  - 50 Rue Ferrere','33000','Bordeaux','x.gaite73@gmail.com','0634377131','Bonjour , \r\nje suis Mr Gaité Xavier ( Responsable du parc  auto de la croix rouge de Bordeaux ) , je viens vers vous pour éffectuer un devis de pose de rampe et public  adress Mercura .\r\nLe matériel est en notre position ainsi que tous l\'équipement complet car nous l\'avons déposer de notre ancien véhicule ( Citroen Berlingo de 2011 ) et nous devons équiper le nouveau de meme marque mais le dernier modèle avec écran tactique ect......\r\nMerci pour votre réponse .\r\nCordialement',0,0,1),(8,'denis','douet','612 rte lande de mouillerat','40180','riviere saas et gourby','denis.douet40@orange.fr','0603610581','equipement d\' un vito',0,0,1),(9,'Rodolphe','Guyot','','33500','Libourne','rodolphe.guyot@free.fr','0680046258','Bonjour\r\nFaites vous des habillages en polyester pour utilitaire (transport de matériel médical donc nettoyage et désinfection)\r\nMerci de votre rapide réponse\r\n',0,0,1),(10,'jean francois','DELOS','18 RUE DE MAGRIGNE','33240','SAINT LAURENT D ARCE','carinecoste33@orange.fr','06 16 95 40 62','devis aménagement FIAT DUCATO L2H3 CASIER COTE GAUCHE SUR TOUTE LA LONGUEUR AVEC ETBLIE A L AVANT ET UNE ETAGERE EN DESSOUS LE TOUT EN BOIS\r\n MERCI EN ATTENTE DEVOTRE REPONSE',0,0,1);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter_detail`
--

LOCK TABLES `newsletter_detail` WRITE;
/*!40000 ALTER TABLE `newsletter_detail` DISABLE KEYS */;
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
INSERT INTO `product` VALUES (3,87,'Aménagement spécifique','Depuis plus de 20 ans. MODUL-OUEST répond à la demande de ses clients, nous sommes en mesure d\'apporter une solution à vos contraintes : \r\nAluminium, Résine, Kit Cover ... du plus simple au plus complexe.    ','','1','1'),(6,0,'Signalisation lumineuse et balisage  ','Nous équipons tous types de véhicules de POLICE , GENDARMERIE  et BTP . \r\nBalisage classe A et B , Gyrophare à leds , Triangle a relevage manuel ou électrique .....\r\nNous commercialisons les produits: SIRAC. MERCURA. AXIMUM. T2S . SARR ....    ','','1','1'),(7,99,'Habillage du véhicule   ','L\'habillage d\'un véhicule , consiste à protéger l\'intérieur de chargement de votre véhicule utilitaire des chocs liés à son utilisation.\r\nNos protections sont réalisées en contre plaqué de qualité oukoumé en 5 ou 8 mm d\'épaisseur suivant le type de véhicule .\r\nLes planchers sont réalisés en contre plaqué brut de 15mm ou antidérapant 12 mm suivant la demande et l\'utilisation. \r\nNous réalisons aussi des protections en contre plaqué filmé brun ou gris qui vous apporte une finition personnalisée par sa couleur et plus facile d\'entretien car lessivable. \r\nFinition: Joints silicone et barre de seuil aluminium. \r\n    ','','1','1'),(9,54,' Aménagement modulaire ','System Edstrom fondée en 1958 , est l\'une des plus ancienne société en EUROPE fabriquant et commercialisant des aménagements modulaires pour les véhicules utilitaires. Plus de 50 ans d\'expérience dans le développement de nos produits , plus de 50 ans d\'écoute attentive des souhaits de nos clients pour trouver des solutions pour les utilisateurs. \r\nNotre priorité la sécurité ! Nos aménagements ont obtenus la certification française INRS NS286 et nous pouvons affirmer sans aucun doute que nous sommes très flexibles en ce qui concerne les aménagements . Cela repose sur le fait que nous avons un système modulaire. Nos tiroirs et tablettes peuvent être combinés à l\'infini. Cela veut dire que vous pouvez dessiner votre propre aménagement afin de l\'avoir exactement comme vous le souhaitez. De plus , le jour ou vous changez de véhicule , vous pouvez amener votre aménagement avec vous si vous le voulez.     ','','1','1'),(10,0,'Protection aluminium','Une protection aluminium vous permet un lavage ou une désinfection de votre véhicule  ','','1','1'),(12,99,'Aménagement bois ','Nous concevons et réalisons toutes vos demandes d\'aménagements en bois, propres à satisfaire tous vos besoins. ( étagères, tiroirs, casiers de rangement ) . \r\nTous nos aménagements sont réalisés en contre-plaqué brut de qualité \"okoumé\" . Nous réalisons aussi des aménagements en contre-plaqué filmé BRUN ou GRIS. \r\nLe bois filmé de couleur est lisse et plus facile d\'entretien, vous pouvez l\'essuyer avec un chiffon humide ou une éponge.          ','','1','1');
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image`
--

LOCK TABLES `product_image` WRITE;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
INSERT INTO `product_image` VALUES (20,4,'/IMG_6130-4.jpg','non'),(25,4,'/IMG_6686-4.jpg','oui'),(30,9,'/Fevrier_14_001-9.jpg','oui'),(31,9,'/Fevrier_14_004-9.jpg','non'),(32,9,'/Samsung_1115_004-9.jpg','non'),(34,11,'/0115_003-11.jpg','oui'),(36,3,'/Oct_15_042-3.jpg','oui'),(38,1,'/0115_002-1.jpg','non'),(39,13,'/0115_003-13.jpg','oui'),(40,1,'/Trafic_MTS_014-1.jpg','oui'),(44,10,'/AVAD_006-10.jpg','non'),(45,11,'/0115_003-11.jpg','non'),(47,3,'/AVAD_001-3.jpg','non'),(48,3,'/003-3.jpg','non'),(49,9,'/20140214_083539-9.jpg','non'),(50,9,'/Master-9.jpg','non'),(51,9,'/mb_sprinter_3665_05-9.jpg','non'),(52,3,'/Oct_15_Tel_026-3.jpg','non'),(53,3,'/AVAD_006-3.jpg','non'),(54,7,'/Oct_15_034-7.jpg','non'),(55,7,'/Novembre_12_004-7.jpg','non'),(56,7,'/Decembre_12_010-7.jpg','non'),(57,7,'/Avril_13_034-7.jpg','non'),(59,6,'/DSCF2356-6.jpg','non'),(60,6,'/DSCF1159-6.jpg','non'),(61,6,'/200-6.jpg','non'),(62,10,'/003-10.jpg','oui'),(63,12,'/Trafic_MTS_014-12.jpg','non'),(64,12,'/Mai_15_007-12.jpg','oui'),(65,12,'/DSCF2379-12.jpg','non'),(66,12,'/BB_0115_007-12.jpg','non'),(67,12,'/BB_0115_005-12.jpg','non'),(68,12,'/225-12.jpg','non'),(69,12,'/0115_002-12.jpg','non'),(70,6,'/Juillet_11_024-6.jpg','non'),(71,7,'/Avril_13_034-7.jpg','oui'),(72,6,'/023-6.jpg','oui');
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

-- Dump completed on 2016-10-14 17:57:47
