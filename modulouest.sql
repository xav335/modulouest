-- MySQL dump 10.13  Distrib 5.5.58, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: modulouest
-- ------------------------------------------------------
-- Server version	5.5.58-0+deb8u1

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
INSERT INTO `admin` VALUES (1,'modul','modul33335','administrateur'),(2,'admin','admin335335','ico');
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
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catproduct`
--

LOCK TABLES `catproduct` WRITE;
/*!40000 ALTER TABLE `catproduct` DISABLE KEYS */;
INSERT INTO `catproduct` VALUES (41,41,'Protection bois  ','/_MG_5081-41.jpg',1),(43,43,' ','/_MG_5255-43.jpg',2),(54,0,'Aménagement modulaire    ','',3),(57,56,'amenagements','',1),(60,60,'Protection bois  ','',1),(65,65,'Protection bois  ','',1),(66,66,'Protection aluminium  ','',2),(68,81,'Balisage ','',2),(69,65,'Protection bois ','',1),(73,71,'Protection en Contre Plaqué   ','',1),(75,75,'Protection aluminium  ','',6),(77,75,'Habillage bois  ','',1),(79,79,'Protection bois ','',5),(81,81,'Gyrophare et rampe  ','',5),(82,82,'Marchepied ','',4),(83,83,'Plastification et résine étanche ','',5),(84,84,'Transformation VP/VU','',8),(85,0,'Hayon élévateur','',5),(86,0,'Aménagement TPMR','',6),(87,0,'Aménagement spécifique','',7),(94,94,'Produits','',13),(96,80,'Habillage et protection','',1),(97,97,'Balisage ','',3),(99,0,'Habillage et protection bois   ','',9),(100,0,'Galerie et Berce-vitre   ','',4),(102,102,'Aménagement bois ','',2),(103,0,'Signalisation lumineuse et balisage ','',8);
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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (4,'Xavier','Gonzalez','','','','xavi@gmaeil.cm','05050505','Test',0,0,1),(5,'valerie','praud gaillac','centre Hospitalier Cadillac 89 rue Cazeau Cazalet ','33410','cadillac','valeri.praud-gaillac@ch-cadilac.fr','0556765167','bonjour\r\n\r\nNous souhaiterions aménager un véhicule de type Boxer pour l\'équipe centrale d\'entretien des locaux, pourriez vous nous envoyer un catalogue des aménagements que vous proposez.\r\nMerci\r\nCordialement ',0,0,1),(6,'Louis','Lefrancois','1 passage des meneaux ','33880','Saint caprais ','lefrancoislouis@outlook.fr','0689217251','Bonjour, j\'aimerai connaître le prix pour un habillage bois côté et plafond ainsi que porte arrière sur un Vito. \r\n',0,0,1),(7,'Xavier','Gaite',' Croix rouge de Bordeaux  - 50 Rue Ferrere','33000','Bordeaux','x.gaite73@gmail.com','0634377131','Bonjour , \r\nje suis Mr Gaité Xavier ( Responsable du parc  auto de la croix rouge de Bordeaux ) , je viens vers vous pour éffectuer un devis de pose de rampe et public  adress Mercura .\r\nLe matériel est en notre position ainsi que tous l\'équipement complet car nous l\'avons déposer de notre ancien véhicule ( Citroen Berlingo de 2011 ) et nous devons équiper le nouveau de meme marque mais le dernier modèle avec écran tactique ect......\r\nMerci pour votre réponse .\r\nCordialement',0,0,1),(8,'denis','douet','612 rte lande de mouillerat','40180','riviere saas et gourby','denis.douet40@orange.fr','0603610581','equipement d\' un vito',0,0,1),(9,'Rodolphe','Guyot','','33500','Libourne','rodolphe.guyot@free.fr','0680046258','Bonjour\r\nFaites vous des habillages en polyester pour utilitaire (transport de matériel médical donc nettoyage et désinfection)\r\nMerci de votre rapide réponse\r\n',0,0,1),(10,'jean francois','DELOS','18 RUE DE MAGRIGNE','33240','SAINT LAURENT D ARCE','carinecoste33@orange.fr','06 16 95 40 62','devis aménagement FIAT DUCATO L2H3 CASIER COTE GAUCHE SUR TOUTE LA LONGUEUR AVEC ETBLIE A L AVANT ET UNE ETAGERE EN DESSOUS LE TOUT EN BOIS\r\n MERCI EN ATTENTE DEVOTRE REPONSE',0,0,1),(11,'Cedric ','Gorrichon ','12 chemin montplaisir ','16100','Cognac ','ced_16@live.fr','0627201101','Bonjour  recherche  kit bois vernis complet  pour sprinter 2009 l2h2  \r\nAvec toit et plancher  antidérapant ? \r\nSi vous faites  isolation  et prix  de installation   \r\nMerci d avance ',0,0,1),(12,'Robin','ALLORY','564 rue magnanarelles','13680','Lancon Provence','robinallory@hotmail.fr','0642764686','Bonjour,\r\nje souhaite faire le montage de 3 sièges funny de chez scora dans un renault trafic de 2008.\r\nPourriez-vous me recontacter par téléphone au 0642764686 afin de convenir des détails et de me transférer un devis par mail?\r\nD\'avance merci\r\nCordialement,\r\nRobin ALLORY\r\n',0,0,1),(13,'eric','marcy','13 allee des palombes','33610','canejan','azurse@aol.com','0678423371','ford custom 290 l1h1 2.0 tdci 130 ch habillage bois ',0,0,1),(14,'Stéphane ','Jacopit ','Rue Louis bleriot ','33660','St seurin sur l isle','stephanejacopit@yahoo.fr','0625854217','Bonsoir\r\n\r\nPourriez-vous me faire un devis pour habillage bois d un trafic l1 de 2017\r\nMerci',0,0,1),(15,'ERIC','COTER','CH DU CLAUS','06110','le cannet','afplecannet@gmail.com','0493460607','BONJOUR \r\nJE SOUHAITE UN DEVIS POUR UN PORTE VITRE POUR SPRINTER LONG',0,0,1),(16,'sebastien','colombel','1 RUE DES BELGES','14150','ouistreham','ent.colombel@gmail.com','0672349847',' Bonjour\r\n j\'aimerai équiper mon Mercedes sprinter du 05/04/2000 réhaussé d\'un habillage polyester ou autre sauf bois, je veux que ce kit protège mon camion et que je puisse le laver, j\'ai 1 porte coulissante.\r\nMerci de m\'envoyer votre meilleure offre tarifaire en m\'indiquant les délais de pose.\r\nMerci ',0,0,1),(17,'LAIDA PRODUCTION','DUSSORT','lieu dit la suisse','17270','ST PIERRE DU PALAIS','contact@laidaproduction.com','0608430880','bonjour je recherche une étagère en bois pour passage de roue droit.\r\n\r\nDim : long : 88 cm / larg : 23 cm / h : 1.35 m\r\nBoxer : L3 h 2  2017\r\n\r\nMerci de me faire un devis',0,0,1),(18,'MICKAEL','RAISON','','79000','NIORT','mickael.raison@pgamotors.com','0764152293','\r\nPeux tu me chiffrer rapidement les éléments suivant :\r\n\r\n  SUR JUMPER 35 L3H2 :  Qté : 3 \r\n•	Kit bois (cotés, cache roue, porte arrière) + plancher antidérapant\r\n•	Ventilation dessus toit (rotatif) plus une grille aération basse\r\nSUR UN JUMPY M /  Qté :1\r\n         Idem ci-dessus\r\n\r\nMerci,\r\n\r\nCordialement.\r\n\r\n         \r\nMickaël RAISON\r\nConseiller commercial PME-PMI\r\nmickael.raison@pgamotors.com\r\n\r\nTEL:  07.64.15.22.93\r\n\r\nCITROËN NIORT et  PARTHENAY\r\nhttp://www.citroen-niort.fr\r\n \r\n\r\n		\r\n\r\n',0,0,1),(19,'sebastien','desfontaine','Les Zelles ','33','bordeaux','sebadesfontaine@gmail.com','0663209787','Bonjour, \r\n\r\nPouvez vous nous faire parvenir un devis pour équiper une galerie de toit et un berce vitre coté conducteur sur un kangoo de 2015.\r\n\r\ncdlt',0,0,1),(20,'Isabelle','CERVEIRA','17 Thomas Edison','33600','PESSAC','i.cerveira@geo-sat.com','0783718587','Bonjour\r\n\r\nA fin d\'obtenir un devis pour les flocage de nos 50 véhicules coordonnées de la société + bandes signalisation rouge et blanc sur GIRONDE, comment je peux vous transmettre un fichier comme exemple ainsi que la liste de voitures sur excel ?\r\n\r\n\r\nIsabelle',0,0,1),(21,'G','finzi','121 LE MONTPIOLLIER','69380','CHASSELAY','kargil@wanadoo.fr','0621045121','	Bonjour,\r\n\r\npour vos besoins en plaques alvéolées en polypro pour l \'habillage intérieur des utilititaires, n\' hesitez pas à nous consulter.\r\n\r\nJe vous invite à visiter notre site www.kargil.com.\r\n\r\navec la couleur, la surface , le grammage , et la quantité désirée par commande , je vous donnerai nos prix .\r\n\r\ncordialement\r\n\r\n\r\nKARGIL / G. Finzi\r\n121 le montpiollier 69 380 chasselay\r\nkargil@wanadoo.fr - www.kargil.com\r\nTél : 06.21.04.51.21\r\n',0,0,1),(22,'Amaury','BLAISE','ZAC DE MONTIMARAN','34500','BEZIERS','amaury.blaise@tressol-chabrier.com','0499432000','Bonjour,\r\n\r\nNous sommes Concessionnaire Opel à Béziers et je souhaite installer pour un client une banquette AR repliable sur un Opel Combo Cargo Fourgon L1H1 avec porte latérale droite. Est-ce possible et à quel coût ?\r\nMerci pour votre retour',0,0,1),(23,'christophe ','PINTO','44 avenue de Libourne ','33870','vayres','asvppolice@mairie-vayres.fr','0557552557','bonjour pourriez-vous nous faire un devis sur une rampe police  mercura \r\n\r\ncordialement ',0,0,1),(24,'Jean Baptiste','Lesbats','1499 Avenue de l\'Océan','40990','MEES','cdg@lapeguehabitat.fr','0677934616','Bonjour, \r\n\r\nSuite à mon appel téléphonique, pouvez-vous me faire un devis pour la pause d\'une galerie et de 2 berces vitres sur un Sprinter 37 S (L2H2) et pour une installation sur notre site.\r\nNous aurions besoin d\'une installation semaine 1 ou 2, car la demande est urgente.\r\n\r\nMerci d\'avance.\r\n\r\nCordialement',0,0,1),(25,'Nicolas','Zoccali ','','','','nicolas.zoccali@gmail.com','06 65 58 67 45','Bonjour,\r\nJe souhaite faire poser un vitrage sur la porte latérale de mon transporteur t5 de 2013.\r\nLa vôtre doit être teintée et ouvrable.\r\n\r\nPouvez vous me faire parvenir un devis par mail.\r\n\r\nCordialement Mr zoccali ',0,0,1),(26,'Gerard','Vallet','Le Bouscat','33110','Le Bouscat','g.vallet@laposte.net','0681616318','Bonjour,\r\nJe vous contacte pour vous demander de me réaliser un devis pour l’aménagement d’un fourgon utilitaire Jumpy (taille M):\r\n\r\n	- Sachant qu’il sera vitré à gauche et droite en rang 2. \r\n\r\n	- Equipé également d’un hayon arrière vitré.\r\n\r\n	- Absence de la cloison entre poste conduite et l’espace fourgon.\r\n\r\nJe souhaiterais donc:\r\n\r\n	- une isolation et un habillage bois\r\n\r\n	- Un éclairage plafond led.\r\n\r\n	- Une armoire (longueur 200cm) côté parois conducteur.\r\n\r\n	- Un plan de travail relevable (120x45cm) côté parois passager.\r\n\r\n\r\nJe reste à votre disposition pour des renseignements ou explications complémentaires.\r\n\r\n\r\nCordialement,\r\n\r\nGerard Vallet\r\n0681616318\r\ng.vallet@laposte.net',0,0,1),(27,'','LAMOISE','','','','caprandoquad@gmail.com','','Victor & Loic de Modul Ouest ont fait un super travail. je voulais aménager un Sprinter pour mon Activité de Randonné en Quad. Ils ont fait un travail formidable. Ils ont écoutés mes souhaits et ont su mettre leur savoir et leur professionnalisme a la réalisation de ce projet. Ils ont crée un aménagement de toute pièces conforme a mes souhait et au dela. Merci a eux',0,1,0),(28,'Julien','Loubriat','avenue du Gle de Gaulle','33502','Libourne','j.loubriat@fayattp.fayat.com','0557553290','Bonjour,\r\n\r\nNous avons en projet la réalisation de 17 paires de rampes alu amovibles pour le chargement de matériel dans nos fourgons.\r\nNous souhaitons un système empêchant la rampe de glisser lorsque elle est mise en place ainsi qu\'un système de rangement (suspendu au plafond).\r\nLa largeur souhaitée est de 40 cm Le poids maximum est de 100 Kg.\r\nNos fourgons sont des boxer et des master.\r\n\r\nCordialement,\r\n\r\nJulien Loubriat\r\n06.30.00.94.25\r\n\r\n ',0,0,1),(29,'Sabrina','Derouaz','82 rue des boutons d\'or','33370','Yvrac','sabrinaderouaz@gmail.com','0782729125','Bonjour, \r\n\r\nMadame, Monsieur,\r\n\r\nSuite à votre offre d\'emploi pour le poste d\'assistante administrative et comptable sur le site Pôle Emploi pour laquelle j\'ai postuler, je souhaiterais vous faire savoir que je suis motivée et dynamique pour répondre à vos attentes et ainsi assurer une productivité efficace à votre entreprise.\r\n\r\nJe vous remercie de l\'attention que vous voudrez bien porter à ma candidature, et, dans l\'attente d\'une réponse de votre part, je vous prie d\'agréer mes salutations distinguées. \r\n\r\nMlle Derouaz Sabrina',0,0,1),(30,'Eric','Fulbert','rue des mauries','24400','St Médard de Mussidan','centreautospneus24@orange.fr','0553811808','à l\'attention de Mr DANPURE\r\n\r\nSuite à notre conversation de vendredi 06/07, j\'ai la possibilité de me rendre dans vos locaux le lundi 16/07. \r\nJe serais heureux de pouvoir aborder avec vous les différents points du sujet évoqué par téléphone.\r\nmerci de bien vouloir me contacter pour confirmer un rendez-vous\r\n0553811808 ou 0662074647\r\ncentreautospneus24@orange.fr\r\n\r\nCordialement\r\n\r\nEric Fulbert',0,0,1),(31,'société CLOISONNEMENT VOTRE','Piveteau','30 Avenue Leon Jouhaux','33210','LANGON','dpiveteau-c.votre@orange.fr','0556638758','Bonjour ,\r\n\r\nPourriez vous m envoyer une offre de prix pour la fourniture  d habillage bois pour un Peugeot Boxer \r\n335 L3H2 .\r\n\r\nCordialement D Piveteau',0,0,1),(32,'JOEL  ','PERUCH','194 allée des Palanques','33127','Saint Jean d\'Illac','etelec33@gmail.com','0609747453','Sté ETELEC -\r\nBonsoir, avons besoin d\'une offre de prix pour l\'équipement de 4 Utilitaires Peugeot type PARTNER.\r\nMerci',0,0,1),(33,'ERIC','JEROME',' 13 route de la villedieu','86340','GIZAY','c_jerome_eric@yahoo.fr','0761770295',' bonjour je voudrais savoir si pour aménage mon Dacia dokker van  par double plancher en bois\r\nmerci d\'avance \r\ncordialement',0,0,1),(34,'David','Bertolle','75 cours Alsace Lorraine','33000','Bordeaux','bertolle.david@sfr.fr','0620248623','B‌onjour,\r\n\r\nNous recherchons actuellement une entreprise capable de réaménager un fourgon ou remorque dans le cadre de notre activité, la consigne de contenants alimentaires. En effet, nous avons besoin d\'envelopper l\'intérieur du véhicule de résine afin de garantir un niveau d\'hygiène élevé. J\'ai vu que vous réalisiez ce type de prestation. \r\n\r\nPourriez-vous me recontacter pour m\'expliquer plus en détail votre solution? Et réaliser par la suite un chiffrage.\r\n\r\nCordialement,\r\nDavid Bertolle\r\nEntreprise Box-Eat\r\n',0,0,1),(35,'DORIAN','MAZEAU','09, Esplanade du 18 Juin','33230','SAINT MEDARD DE GUIZIERES','police.municipale@saintmedarddeguizieres.fr','0620466452','Bonjour,\r\nJe vous contact afin de savoir si vous faites les aménagements pour les véhicules de la Police Municipale, à savoir pose de kit de sérigraphie police municipale et de rampe gyrophare de couleur bleu avec sirène.\r\n\r\nCordialement.',0,0,1),(36,'Thomas','BOUVET','2 rue rene martrenchar','33150','Cenon','t.bouvet@soconaq.com','07 64 49 09 72','Bonjour,\r\n\r\nDans le cadre du SAV pour notre société de constructions de maisons, nous aurions un peugeot EXPERT de type L2 H1 à aménager, il faudrait quelque chose de polyvalent, pourriez vous nous envoyer des exemples ou que l\'on prenne rendez vous pour en discuter. \r\n\r\nCordialement \r\n\r\nThomas BOUVET\r\nSté SOCONAQ',0,0,1),(37,'Gaetan','COPPENOLLE','34 lotissement domaine de martinet','47220','caudecoste','gaetanspv50@hotmail.fr','0606418270','Bonjour,\r\n\r\nActuellement je possède un T5 long en 3 places et je souhaiterais ajouter une banquette à l\'arrière pour le passer en 6 places. Serait-il possible de faire cet réalisation et à quel prix environ ?\r\n\r\nVous occupez vous également de la passer au mines pour la modification de la carte grise ?\r\n\r\nCordialement',0,0,1),(38,'Tony','Delmas','Le bois de la me','24410','Parcoul','tony-delmas@orange.fr','0689567106','Bonjour\r\nDevis pour un citroen jumper l2 h2\r\nPour une galerie avec échelle et porte verre le tous en aluminium \r\nMerci dans l attente de votre proposition\r\nBonne réception ',0,0,1),(39,'Fabien','Briaud','','','','fabienbriaud@gmail.com','0626160019','Bonjour,\r\n\r\nJe voudrais faire installer une camera de recul sur ma peugeot 208 (sur l’écran d\'origine) immatriculé en 2018 (écran smeg il me semble). Est ce que c\'est un service que vous proposer? Si oui à quelle prix?\r\n\r\nJe vous remercie\r\n\r\nCordialement ',0,0,1),(40,'Cyril','Dupuy','','','','cyril.pvbl@gmail.com','0644308958','Bonjour, je voulais savoir out vous en étiez sur l\'avancement du devis pour mon jumpy. Cdt , Cyril Dupuy',0,0,1),(41,'francois','loisy','7 route de port neuf','33360','camblanes et meynac','lesjardinsdeportneuf@gmail.com','066951608','bonsoir je souhaiterais un devis pour aménager bois un master L2H2 du 12/16.\r\nIl me faudrait un plancher (12mm) antidérapant, habiller les passage de roues (15mm) et faire une etagère côté gauche du véhicule avec 3 étagères espacés de 310 mm. la premiere audessus du passage de roue et l\'avant dernière étagère à 200 mm.\r\nmerci de me recontacter .',0,0,1),(42,'guillaume','vareillas','8 rue pablo neruda','33140','villenave d\'ornon ','contact@feralu-menuiseries.fr','06.63.22.92.65','Bonjour nous venons d\'achetez un jumpy l1 h1 qui a étais équipé par vos soins au niveaux du plancher , de la galerie , de l\'attelage et du pupitre latéral . Nous souhaitons aménagé l’intérieur avec des rangement pour de la visserie et autres outillages auriez vous des modèles a nous présenté pour avoir une idée du rendu  et un tarif pour cette prestation ?\r\ncordialement   ',0,0,1),(43,'Damien','GASNIER','16 Rue Diamant','33185','LE HAILLAN','d.gasnier@missenard-quint.com','0633939261','Bonjour,\r\n\r\nJe souhaite obtenir un devis pour l\'aménagement de deux vehicules neufs\r\n\r\nPeugeot Expert 4 - 2019\r\nPeugeot Boxer L2H2 - 2019\r\n\r\nEn vous remerciant,\r\n\r\nCordialement,\r\nDamien GASNIER',0,0,1),(44,'Magali','Furet','Le loup','33330','Saint-Christophe-des-Bardes','lutinous@orange.fr','0676813469','Bonjour\r\nJe désirerais savoir le tarif pour faire un interieur bois pour un expert sachant que nous avons déjà le plancher bois.\r\nCordialement ',0,0,1),(45,'Michel','Picq','42 route de saint yzan ','17210','Bussac foret','michelpicq@orange.fr','06 08 60 08 37','Bonjour \r\nJe suis en train d\'acquérir un Peugeot boxer de mars 2014 et je souhaiterais installer un attelage ,mais ce vehicule est équipé d\'un radar de recul et je n\'ai pas de bouton pour le désactiver ,Pouvez vous me faire un devis de fourniture et pose (attelage et faisceau )\r\nC\'est Peugeot lormon qui m\'a donné vos coordonnées ,le vehicule est chez eux.\r\n\r\nMerci \r\nMichel Picq ',0,0,1),(46,'Arnaud','Marchand','18 route des monts','17210','Orignolles','gidonet@orange.fr','0640177658','Bonjour,\r\n\r\nJe suis Mr Marchand Arnaud, dirigeant de Gidonet (Gironde Dordogne Nettoyage) jeune et dynamique société de nettoyage basée sur la commune d’Orignolles.\r\n\r\nNous possédons déjà une clientèle diverse et variée :\r\n- Unovitis / Maïsadour à Néac\r\n\r\n- Les rhums Guiose à Saint-Seurin-Sur-l’Isle\r\n\r\n- La ville de Coutras (CCAS et château d\'Eygreteau)\r\n\r\n- Assistavet vétérinaires à Villenave d\'Ornon\r\n\r\n- Le cabinet médical de St Aigulin\r\n\r\nJe souhaiterais savoir si vous voulez confier votre tâche de nettoyage de votre local à une entreprise, dans le cas où vous n’en posséderiez pas, nous pourrions alors vous proposer nos services.\r\n\r\nEn effet, confier votre prestation de nettoyage à une société spécialisée vous permet d’avoir une prestation professionnelle, avec des produits adaptés à diverses besoins : au contact alimentaire, désinfectant/bactéricide… et respectueux de l’environnement : nous travaillons avec des produits éco labélisés ou avec des produits écologiques normés.\r\n\r\nJe suis à votre disposition pour tout entretien et éventuellement le cas échéant la visite de vos locaux afin de voir avec vous les différents besoins de nettoyage et/ou de vitrerie dont vous pourriez bénéficier au sein de ma structure.\r\n\r\nDans l\'attente de votre réponse, recevez mes sincères salutations.\r\n\r\nCordialement,\r\n\r\nMr Marchand Arnaud.',0,0,1),(47,'','','','','','jmcdill6@comcast.net','','',1,0,0),(48,'','','','','','reynanrochin@gmail.com','','',1,0,0),(49,'','','','','','sunalum11@gmail.com','','',1,0,0),(50,'','','','','','pepasa2017@gmail.com','','',1,0,0),(51,'','','','','','cburkhart0220@gmail.com','','',1,0,0),(52,'','','','','','tzaccariello@upiping.com','','',1,0,0),(53,'','','','','','nlarson19@hotmail.com','','',1,0,0),(54,'','','','','','steve@axiomelectricservice.com','','',1,0,0),(55,'','','','','','comfortshoppe@bex.net','','',1,0,0),(56,'','','','','','sealicker@aol.com','','',1,0,0),(57,'','','','','','paysse.francois@gmail.com','','',1,0,0),(58,'','','','','','halligan-james@comcast.net','','',1,0,0),(59,'','','','','','flo_txl@gmx.de','','',1,0,0),(60,'','','','','','kenman63@yahoo.com','','',1,0,0),(61,'','','','','','arusznica@gmail.com','','',1,0,0),(62,'','','','','','steveejoseph@gmail.com','','',1,0,0),(63,'','','','','','jace_holt@msn.com','','',1,0,0),(64,'','','','','','rmacias@fracshack.com','','',1,0,0),(65,'','','','','','jordan@14joules.com','','',1,0,0),(66,'','','','','','s.sinale-elhage@centralbank.cw','','',1,0,0),(67,'','','','','','momrouf@netscape.net','','',1,0,0),(68,'','','','','','kmflynnjr@gmail.com','','',1,0,0),(69,'','','','','','brittany.reid1@gmail.com','','',1,0,0),(70,'','','','','','sarahvankruistum@gmail.com','','',1,0,0),(71,'','','','','','mohamadain2002@yahoo.com','','',1,0,0),(72,'','','','','','selenehurley@gmail.com','','',1,0,0),(73,'','','','','','nightkeeper61@gmail.com','','',1,0,0),(74,'','','','','','mikaylabrendle@yahoo.com','','',1,0,0),(75,'','','','','','megan_fano29@yahoo.com','','',1,0,0),(76,'','','','','','atherrien18@sympatico.ca','','',1,0,0),(77,'','','','','','sherithenaillady@charter.net','','',1,0,0),(78,'','','','','','richieb7138@aol.com','','',1,0,0),(79,'','','','','','okamikeyfan@sbcglobal.net','','',1,0,0),(80,'','','','','','gshoemake@windstream.net','','',1,0,0),(81,'','','','','','xxrentfan325xx@yahoo.com','','',1,0,0),(82,'','','','','','stulip3359@aol.com','','',1,0,0),(83,'','','','','','chadclay@gmail.com','','',1,0,0),(84,'','','','','','taosborne@att.net','','',1,0,0),(85,'','','','','','donnampaolino@gmail.com','','',1,0,0),(86,'','','','','','mpremo1985@gmail.com','','',1,0,0),(87,'','','','','','jnewsome3858@gmail.com','','',1,0,0),(88,'','','','','','michaelfox@aol.com','','',1,0,0),(89,'','','','','','nneomaokorie@gmail.com','','',1,0,0),(90,'','','','','','vuong1992@hotmail.com','','',1,0,0),(91,'','','','','','ewilson@islandrecreational.com','','',1,0,0),(92,'','','','','','stefan.federhofer@sparkasse-neumarkt.de','','',1,0,0),(93,'','','','','','robertwillis@msn.com','','',1,0,0),(94,'','','','','','sales-icedataservices-usinsidesales@theice.com','','',1,0,0),(95,'','','','','','sales-icedataservices-apacenquiries@theice.com','','',1,0,0),(96,'','','','','','jayt@five-star-rv.com','','',1,0,0),(97,'','','','','','dawkinscorey49@gmail.com','','',1,0,0),(98,'','','','','','lindsay.simmen@gmail.com','','',1,0,0),(99,'','','','','','hiddenwikifrash@protonmail.com','','',1,0,0),(100,'','','','','','liottakaren@ymail.com','','',1,0,0),(101,'','','','','','katie.kuga@gmail.com','','',1,0,0),(102,'','','','','','rmassa@unitedpb.com','','',1,0,0),(103,'','','','','','mattlee0037@gmail.com','','',1,0,0),(104,'','','','','','alexappelt@gmx.de','','',1,0,0),(105,'','','','','','seanalvarez09@gmail.com','','',1,0,0),(106,'','','','','','sweinberg@fwblaw.net','','',1,0,0),(107,'','','','','','annjoan0807@icloud.com','','',1,0,0),(108,'','','','','','alysepec@gmail.com','','',1,0,0),(109,'','','','','','wpd115@cox.net','','',1,0,0),(110,'','','','','','fsousa3@colonialbeverage.com','','',1,0,0),(111,'','','','','','caylor@layer3com.com','','',1,0,0),(112,'','','','','','rmules71@gmail.com','','',1,0,0),(113,'','','','','','sue.fischler@synergis.com','','',1,0,0),(114,'','','','','','dquinn@caportho.com','','',1,0,0),(115,'','','','','','bdart81@yahoo.com','','',1,0,0),(116,'','','','','','agiett2@gmail.com','','',1,0,0),(117,'','','','','','ndeming1018@yahoo.com','','',1,0,0),(118,'','','','','','dokument868@gmx.de','','',1,0,0),(119,'','','','','','renee_smith_99@yahoo.com','','',1,0,0),(120,'','','','','','melissa_erwin77@yahoo.com','','',1,0,0),(121,'pasdois','loic','4 parc du daurat','33210','langon','pasdois.emmanuelle@orange.fr','0648583836','Bonjour, nous souhaitons aménager 2 véhicules utilitaires Renault Traffic neufs. Pourriez-vous me contacter afin de nous présenter votre gamme.\r\nCordialement',0,0,1),(122,'Eric','SERRES','Rte de Saint Savin','65400','LAU BALAGNAS','eric.serres@edf.fr','0762460494','Bonjour,\r\nje vous contact pour avoir des renseignements sur un outillage et aménagement que vous avez réalisé pour l\'équipe EDF de mécanique sur le site de LAU BALAGNAS.\r\nDans l\'attente de votre réponse.\r\nCordialement.\r\n',0,0,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goldbook`
--

LOCK TABLES `goldbook` WRITE;
/*!40000 ALTER TABLE `goldbook` DISABLE KEYS */;
INSERT INTO `goldbook` VALUES (1,'2015-09-06 00:00:00','Franck Langleron','franck_langleron@hotmail.com','Très professionnel ! je recommande!!',1),(2,'2015-09-07 00:00:00','Xavier Gonzalez','xavier@gonzalez.pm','Prestation nickel, très pro, très satisfait',1),(3,'2018-03-10 00:00:00','LAMOISE','caprandoquad@gmail.com','Victor & Loic de Modul Ouest ont fait un super travail. je voulais aménager un Sprinter pour mon Activité de Randonné en Quad. Ils ont fait un travail formidable. Ils ont écoutés mes souhaits et ont su mettre leur savoir et leur professionnalisme a la réalisation de ce projet. Ils ont crée un aménagement de toute pièces conforme a mes souhait et au dela. Merci a eux',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletter_detail`
--

LOCK TABLES `newsletter_detail` WRITE;
/*!40000 ALTER TABLE `newsletter_detail` DISABLE KEYS */;
INSERT INTO `newsletter_detail` VALUES (1,12,'','','http://www.votreimmopro.com/','');
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (3,87,'Aménagement spécifique','Depuis plus de 20 ans. MODUL-OUEST répond à la demande de ses clients, nous sommes en mesure d\'apporter une solution à vos contraintes : \r\nAluminium, Résine, Kit Cover ... du plus simple au plus complexe.    ','','1','1'),(6,103,'Signalisation lumineuse et balisage  ','Nous équipons tous types de véhicules de POLICE , GENDARMERIE  et BTP . \r\nBalisage classe A et B , Gyrophare à leds , Triangle a relevage manuel ou électrique .....\r\nNous commercialisons les produits: SIRAC. MERCURA. AXIMUM. T2S . SARR ....    ','','1','1'),(7,99,'Habillage du véhicule   ','L\'habillage d\'un véhicule , consiste à protéger l\'intérieur de chargement de votre véhicule utilitaire des chocs liés à son utilisation.\r\nNos protections sont réalisées en contre plaqué de qualité oukoumé en 5 ou 8 mm d\'épaisseur suivant le type de véhicule .\r\nLes planchers sont réalisés en contre plaqué brut de 15mm ou antidérapant 12 mm suivant la demande et l\'utilisation. \r\nNous réalisons aussi des protections en contre plaqué filmé brun ou gris qui vous apporte une finition personnalisée par sa couleur et plus facile d\'entretien car lessivable. \r\nFinition: Joints silicone et barre de seuil aluminium. \r\n    ','','1','1'),(9,54,' Aménagement modulaire ','System Edstrom fondée en 1958 , est l\'une des plus ancienne société en EUROPE fabriquant et commercialisant des aménagements modulaires pour les véhicules utilitaires. Plus de 50 ans d\'expérience dans le développement de nos produits , plus de 50 ans d\'écoute attentive des souhaits de nos clients pour trouver des solutions pour les utilisateurs. \r\nNotre priorité la sécurité ! Nos aménagements ont obtenus la certification française INRS NS286 et nous pouvons affirmer sans aucun doute que nous sommes très flexibles en ce qui concerne les aménagements . Cela repose sur le fait que nous avons un système modulaire. Nos tiroirs et tablettes peuvent être combinés à l\'infini. Cela veut dire que vous pouvez dessiner votre propre aménagement afin de l\'avoir exactement comme vous le souhaitez. De plus , le jour ou vous changez de véhicule , vous pouvez amener votre aménagement avec vous si vous le voulez.     ','/188-9.jpg','0','0'),(10,87,'Protection aluminium','Une protection aluminium vous permet un lavage ou une désinfection de votre véhicule  ','','1','1'),(12,99,'Aménagement bois ','Nous concevons et réalisons toutes vos demandes d\'aménagements en bois, propres à satisfaire tous vos besoins. ( étagères, tiroirs, casiers de rangement ) . \r\nTous nos aménagements sont réalisés en contre-plaqué brut de qualité \"okoumé\" . Nous réalisons aussi des aménagements en contre-plaqué filmé BRUN ou GRIS. \r\nLe bois filmé de couleur est lisse et plus facile d\'entretien, vous pouvez l\'essuyer avec un chiffon humide ou une éponge.          ','','1','1'),(13,100,'Galerie et berce vitre  ','Nous commercialisons des galeries et berce-vitre fabriquées en France exclusivement .Aujourd\'hui nous travaillons avec deux fournisseurs . \r\nLa galerie permet de transportée des marchandises longues sur votre véhicule. \r\nNos galeries sont en aluminium ou en acier galvanisé et porte entre 70 et 200 kg suivant le type de véhicule et les données constructeur .     ','','1','1'),(14,85,'Hayon élevateur ','Nous commercialisons les hayons de marque DHOLLANDIA , fixé a l\'arrière du véhicule cette plateforme hydraulique permet de charger des palettes lourdes sans efforts. \r\nNous vous proposons aussi la potence de levage EASY LOAD , cette potence de levage fixée à l\'intérieur du véhicule est la solution pour le chargement des véhicules utilitaires.    ','','1','1'),(16,87,'Divers ','Suivant votre demande . Nous sommes en mesure de trouver une solution chez nos divers fournisseurs pour répondre à vos exigences.  ','','1','1'),(17,54,'AMÉNAGEMENT MODULAIRE','System Edstrom fondée en 1958 , est l\'une des plus ancienne société en EUROPE fabriquant et commercialisant des aménagements modulaires pour les véhicules utilitaires. Plus de 50 ans d\'expérience dans le développement de nos produits , plus de 50 ans d\'écoute attentive des souhaits de nos clients pour trouver des solutions pour les utilisateurs.\r\nNotre priorité la sécurité ! Nos aménagements ont obtenus la certification française INRS NS286 et nous pouvons affirmer sans aucun doute que nous sommes très flexibles en ce qui concerne les aménagements . Cela repose sur le fait que nous avons un système modulaire. Nos tiroirs et tablettes peuvent être combinés à l\'infini. Cela veut dire que vous pouvez dessiner votre propre aménagement afin de l\'avoir exactement comme vous le souhaitez. De plus , le jour ou vous changez de véhicule , vous pouvez amener votre aménagement avec vous si vous le voulez.','','1','1'),(18,54,'Aménagement modulaire','System Edstrom fondée en 1958 , est l\'une des plus ancienne société en EUROPE fabriquant et commercialisant des aménagements modulaires pour les véhicules utilitaires. Plus de 50 ans d\'expérience dans le développement de nos produits , plus de 50 ans d\'écoute attentive des souhaits de nos clients pour trouver des solutions pour les utilisateurs.\r\nNotre priorité la sécurité ! Nos aménagements ont obtenus la certification française INRS NS286 et nous pouvons affirmer sans aucun doute que nous sommes très flexibles en ce qui concerne les aménagements . Cela repose sur le fait que nous avons un système modulaire. Nos tiroirs et tablettes peuvent être combinés à l\'infini. Cela veut dire que vous pouvez dessiner votre propre aménagement afin de l\'avoir exactement comme vous le souhaitez. De plus , le jour ou vous changez de véhicule , vous pouvez amener votre aménagement avec vous si vous le voulez.','','1','1'),(19,54,'Aménagement modulaire','System Edstrom fondée en 1958 , est l\'une des plus ancienne société en EUROPE fabriquant et commercialisant des aménagements modulaires pour les véhicules utilitaires. Plus de 50 ans d\'expérience dans le développement de nos produits , plus de 50 ans d\'écoute attentive des souhaits de nos clients pour trouver des solutions pour les utilisateurs.\r\nNotre priorité la sécurité ! Nos aménagements ont obtenus la certification française INRS NS286 et nous pouvons affirmer sans aucun doute que nous sommes très flexibles en ce qui concerne les aménagements . Cela repose sur le fait que nous avons un système modulaire. Nos tiroirs et tablettes peuvent être combinés à l\'infini. Cela veut dire que vous pouvez dessiner votre propre aménagement afin de l\'avoir exactement comme vous le souhaitez. De plus , le jour ou vous changez de véhicule , vous pouvez amener votre aménagement avec vous si vous le voulez.','','1','1'),(20,54,'Aménagement modulaire','System Edstrom fondée en 1958 , est l\'une des plus ancienne société en EUROPE fabriquant et commercialisant des aménagements modulaires pour les véhicules utilitaires. Plus de 50 ans d\'expérience dans le développement de nos produits , plus de 50 ans d\'écoute attentive des souhaits de nos clients pour trouver des solutions pour les utilisateurs.\r\nNotre priorité la sécurité ! Nos aménagements ont obtenus la certification française INRS NS286 et nous pouvons affirmer sans aucun doute que nous sommes très flexibles en ce qui concerne les aménagements . Cela repose sur le fait que nous avons un système modulaire. Nos tiroirs et tablettes peuvent être combinés à l\'infini. Cela veut dire que vous pouvez dessiner votre propre aménagement afin de l\'avoir exactement comme vous le souhaitez. De plus , le jour ou vous changez de véhicule , vous pouvez amener votre aménagement avec vous si vous le voulez.','','1','1');
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_image`
--

LOCK TABLES `product_image` WRITE;
/*!40000 ALTER TABLE `product_image` DISABLE KEYS */;
INSERT INTO `product_image` VALUES (20,4,'/IMG_6130-4.jpg','non'),(25,4,'/IMG_6686-4.jpg','oui'),(32,9,'/Samsung_1115_004-9.jpg','non'),(34,11,'/0115_003-11.jpg','oui'),(36,3,'/Oct_15_042-3.jpg','oui'),(38,1,'/0115_002-1.jpg','non'),(40,1,'/Trafic_MTS_014-1.jpg','oui'),(44,10,'/AVAD_006-10.jpg','non'),(45,11,'/0115_003-11.jpg','non'),(47,3,'/AVAD_001-3.jpg','non'),(48,3,'/003-3.jpg','non'),(49,9,'/20140214_083539-9.jpg','non'),(50,9,'/Master-9.jpg','non'),(51,9,'/mb_sprinter_3665_05-9.jpg','non'),(52,3,'/Oct_15_Tel_026-3.jpg','non'),(53,3,'/AVAD_006-3.jpg','non'),(54,7,'/Oct_15_034-7.jpg','non'),(55,7,'/Novembre_12_004-7.jpg','non'),(56,7,'/Decembre_12_010-7.jpg','non'),(57,7,'/Avril_13_034-7.jpg','non'),(59,6,'/DSCF2356-6.jpg','non'),(60,6,'/DSCF1159-6.jpg','non'),(61,6,'/200-6.jpg','non'),(62,10,'/003-10.jpg','oui'),(63,12,'/Trafic_MTS_014-12.jpg','non'),(65,12,'/DSCF2379-12.jpg','non'),(66,12,'/BB_0115_007-12.jpg','non'),(67,12,'/BB_0115_005-12.jpg','non'),(68,12,'/225-12.jpg','non'),(69,12,'/0115_002-12.jpg','non'),(70,6,'/Juillet_11_024-6.jpg','non'),(71,7,'/Avril_13_034-7.jpg','oui'),(72,6,'/023-6.jpg','oui'),(73,9,'/Tel_0916_034-9.jpg','non'),(74,9,'/Juin_16_Tel_001-9.jpg','non'),(75,12,'/Tel_0916_009-12.jpg','non'),(76,12,'/Tel_0916_001-12.jpg','non'),(77,12,'/Mars_15_018-12.jpg','non'),(78,12,'/Octobre_14_002-12.jpg','non'),(79,12,'/octobre_12_021-12.jpg','non'),(80,13,'/Avril_13_001-13.jpg','non'),(81,13,'/Mars_15_002-13.jpg','oui'),(82,13,'/Avril_13_004-13.jpg','non'),(83,13,'/DSCF2868-13.jpg','non'),(84,13,'/DSCF2241-13.jpg','non'),(85,9,'/20160531_182757-9.jpg','non'),(86,9,'/AVAD_003-9.jpg','non'),(87,9,'/Juin_16_Tel_002-9.jpg','non'),(88,9,'/samsumg_0117_014-9.jpg','non'),(89,12,'/Tel_0916_037-12.jpg','oui'),(90,12,'/samsumg_0117_010-12.jpg','non'),(91,12,'/MAI_16_007-12.jpg','non'),(92,12,'/DSCF2948-12.jpg','non'),(93,12,'/DSCF2769-12.jpg','non'),(94,12,'/DEC_15_021-12.jpg','non'),(95,14,'/EasyLoad_250Kg_Pompe-14.jpg','oui'),(96,14,'/SEPT_13_006-14.jpg','non'),(97,9,'/TIGF_007-9.jpg','oui'),(98,9,'/Tel_0916_031-9.jpg','non'),(99,9,'/DSCF2762-9.jpg','non'),(100,3,'/Novembre_16_009-3.jpg','non'),(101,15,'/0115_001-15.jpg','oui'),(102,6,'/DSCF2253-6.jpg','non'),(103,6,'/MAI_16_001-6.jpg','non'),(104,9,'/tel_02_238-9.jpg','non'),(105,3,'/ESAT_002-3.jpg','non'),(106,9,'/20170407_102259-9.jpg','non'),(107,9,'/Mecatraction_006-9.jpg','non'),(108,9,'/Mecatraction_005-9.jpg','non'),(109,9,'/20170407_102401-9.jpg','non'),(110,9,'/Juillet_17_011-9.jpg','non'),(111,9,'/samsung_09_122-9.jpg','non'),(112,16,'/Novembre_16_009-16.jpg','oui'),(113,16,'/Durisotti_004-16.jpg','non'),(114,16,'/DEC_15_015-16.jpg','non'),(115,9,'/188-9.jpg','non'),(116,12,'/MAI_16_008-12.jpg','non'),(117,16,'/Oct_15_Tel_026-16.jpg','non'),(118,13,'/DSCF2864-13.jpg','non'),(119,13,'/DSCF2863-13.jpg','non'),(120,16,'/DSCF2337-16.jpg','non'),(121,17,'/DSC00110-17.jpg','oui'),(122,18,'/AB_LOC_1_-18.jpg','oui'),(123,19,'/DSC00237-19.jpg','oui'),(124,20,'/DSC00289-20.jpg','oui');
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

-- Dump completed on 2019-12-16 11:42:54
