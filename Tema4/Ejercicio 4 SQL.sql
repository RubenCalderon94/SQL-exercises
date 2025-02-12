-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: soft
-- ------------------------------------------------------
-- Server version	8.0.11

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
-- Current Database: `soft`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `soft` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;

USE `soft`;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `CODIGO` varchar(5) NOT NULL,
  `NOMBRE` varchar(30) DEFAULT NULL,
  `DIRECCION` varchar(60) DEFAULT NULL,
  `LOCALIDAD` varchar(15) DEFAULT NULL,
  `CPOSTAL` varchar(10) DEFAULT NULL,
  `TELEFONO` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('ALFKI','Maria Anders','Obere Str. 57','BerlÃ­n','12209','030-0074321'),('ANATR','Ana Trujillo','Avda. de la ConstituciÃ³n 2222','MÃ©xico D.F.','05021','(5) 555-4729'),('ANTON','Antonio Moreno','Mataderos  2312','MÃ©xico D.F.','05023','(5) 555-3932'),('AROUT','Thomas Hardy','120 Hanover Sq.','Londres','WA1 1DP','(71) 555-7788'),('BERGS','Christina Berglund','BerguvsvÃ¤gen  8','LuleÃ¥','S-958 22','0921-12 34 65'),('BLAUS','Hanna Moos','Forsterstr. 57','Mannheim','68306','0621-08460'),('BLONP','FrÃ©dÃ©rique Citeaux','24, place KlÃ©ber','Estrasburgo','67000','88.60.15.31'),('BOLID','MartÃ­n Sommer','C/ Araquil, 67','Madrid','28023','(91) 555 22 82'),('BONAP','Laurence Lebihan','12, rue des Bouchers','Marsella','13008','91.24.45.40'),('BOTTM','Elizabeth Lincoln','23 Tsawassen Blvd.','Tsawassen','T2F 8M4','(604) 555-4729'),('BSBEV','Victoria Ashworth','Fauntleroy Circus','Londres','EC2 5NT','(71) 555-1212'),('CACTU','Patricio Simpson','Cerrito 333','Buenos Aires','1010','(1) 135-5555'),('CENTC','Francisco Chang','Sierras de Granada 9993','MÃ©xico D.F.','05022','(5) 555-3392'),('CHOPS','Yang Wang','Hauptstr. 29','Berna','3012','0452-076545'),('COMMI','Pedro Afonso','Av. dos LusÃ­adas, 23','SÃ£o Paulo','05432-043','(11) 555-7647'),('CONSH','Elizabeth Brown','Berkeley Gardens\r\n12  Brewery ','Londres','WX1 6LT','(71) 555-2282'),('DRACD','Sven Ottlieb','Walserweg 21','Aachen','52066','0241-039123'),('DUMON','Janine Labrune','67, rue des Cinquante Otages','Nantes','44000','40.67.88.88'),('EASTC','Ann Devon','35 King George','Londres','WX3 6FW','(71) 555-0297'),('ERNSH','Roland Mendel','Kirchgasse 6','Graz','8010','7675-3425'),('FAMIA','Aria Cruz','Rua OrÃ³s, 92','Sao Paulo','05442-030','(11) 555-9857'),('FISSA','Diego Roel','C/ Moralzarzal, 86','Madrid','28034','(91) 555 94 44'),('FOLIG','Martine RancÃ©','184, chaussÃ©e de Tournai','Lille','59000','20.16.10.16'),('FOLKO','Maria Larsson','Ã…kergatan 24','BrÃ¤cke','S-844 67','0695-34 67 21'),('FRANK','Peter Franken','Berliner Platz 43','MÃ¼nchen','80805','089-0877310'),('FRANR','Carine Schmitt','54, rue Royale','Nantes','44000','40.32.21.21'),('FRANS','Paolo Accorti','Via Monte Bianco 34','Torino','10100','011-4988260'),('FURIB','Lino Rodriguez Larsson','Jardim das rosas n. 32','Lisboa','1675','(1) 354-2534'),('GALED','Eduardo Saavedra','Rambla de CataluÃ±a, 23','Barcelona','08022','(93) 203 4560'),('GODOS','JosÃ© Pedro Freyre','C/ Romero, 33','Sevilla','41101','(95) 555 82 82'),('GOURL','AndrÃ© Fonseca','Av. Brasil, 442','Campinas','04876-786','(11) 555-9482'),('GREAL','Howard Snyder','2732 Baker Blvd.','Eugenia','97403','(503) 555-7555'),('GROSR','Manuel Pereira','5Âª Ave. Los Palos Grandes','Caracas','1081','(2) 283-2951'),('HANAR','Mario Pontes','Rua do PaÃ§o, 67','Rio de Janeiro','05454-876','(21) 555-0091'),('HILAA','Carlos HernÃ¡ndez','Carrera 22 con Ave. Carlos Soublette #8-35','San CristÃ³bal','5022','(5) 555-1340'),('HUNGC','Yoshi Latimer','City Center Plaza\r\n516 Main St.','Elgin','97827','(503) 555-6874'),('HUNGO','Patricia McKenna','8 Johnstown Road','Cork',NULL,'2967 542'),('ISLAT','Helen Bennett','Garden House\r\nCrowther Way','Cowes','PO31 7PJ','(198) 555-8888'),('KOENE','Philip Cramer','Maubelstr. 90','Brandenburgo','14776','0555-09876'),('LONEP','Fran Wilson','89 Chiaroscuro Rd.','Portland','97219','(503) 555-9573'),('MAGAA','Giovanni Rovelli','Via Ludovico il Moro 22','BÃ©rgamo','24100','035-640230'),('MAISD','Catherine Dewey','Rue Joseph-Bens 532','Bruselas','B-1180','(02) 201 24 67'),('MEREP','Jean FresniÃ¨re','43 rue St. Laurent','Montreal','H1J 1C3','(514) 555-8054'),('MORGK','Alexander Feuer','Heerstr. 22','Leipzig','04179','0342-023176'),('NORTS','Simon Crowther','South House\r\n300 Queensbridge','Londres','SW7 1RZ','(71) 555-7733'),('OCEAN','Yvonne Moncada','Ing. Gustavo Moncada 8585\r\nPiso 20-A','Buenos Aires','1010','(1) 135-5333'),('OLDWO','Rene Phillips','2743 Bering St.','Anchorage','99508','(907) 555-7584'),('OTTIK','Henriette Pfalzheim Larsson','Mehrheimerstr. 369','KÃ¶ln','50739','0221-0644327'),('PARIS','Marie Bertrand','265, boulevard Charonne','ParÃ­s','75012','(1) 42.34.22.66'),('PERIC','Guillermo FernÃ¡ndez','Calle Dr. Jorge Cash 321','MÃ©xico D.F.','05033','(5) 552-3745'),('PICCO','Georg Pipps','Geislweg 14','Salzburgo','5020','6562-9722'),('PRINI','Isabel de Castro','Estrada da saÃºde n. 58','Lisboa','1756','(1) 356-5634'),('QUEDE','Bernardo Batista','Rua da Panificadora, 12','Rio de Janeiro','02389-673','(21) 555-4252'),('QUEEN','LÃºcia Carvalho','Alameda dos CanÃ rios, 891','Sao Paulo','05487-020','(11) 555-1189'),('QUICK','Horst Kloss','TaucherstraÃŸe 10','Cunewalde','01307','0372-035188'),('RANCH','Sergio GutiÃ©rrez','Av. del Libertador 900','Buenos Aires','1010','(1) 123-5555'),('RATTC','Paula Wilson','2817 Milton Dr.','Albuquerque','87110','(505) 555-5939'),('REGGC','Maurizio Moroni','Strada Provinciale 124','Reggio Emilia','42100','0522-556721'),('RICAR','Janete Limeira','Av. Copacabana, 267','Rio de Janeiro','02389-890','(21) 555-3412'),('RICSU','Michael Holz','Grenzacherweg 237','GÃ©nova','1203','0897-034214'),('ROMEY','Alejandra Camino','Gran VÃ­a, 1','Madrid','28001','(91) 745 6200'),('SANTG','Jonas Bergulfsen','Erling Skakkes gate 78','Stavern','4110','07-98 92 35'),('SAVEA','Jose Pavarotti','187 Suffolk Ln.','Boise','83720','(208) 555-8097'),('SEVES','Hari Kumar','90 Wadhurst Rd.','Londres','OX15 4NB','(71) 555-1717'),('SIMOB','Jytte Petersen','VinbÃ¦ltet 34','KÃ¸benhavn','1734','31 12 34 56'),('SPECD','Dominique Perrier','25, rue Lauriston','ParÃ­s','75016',NULL),('SPLIR','Art Braunschweiger','P.O. Box 555','Lander','82520','(307) 555-4680'),('SUPRD','Pascale Cartrain','Boulevard Tirou, 255','Charleroi','B-6000','(071) 23 67 22 20'),('THEBI','Liz Nixon','89 Jefferson Way\r\nSuite 2','Portland','97201','(503) 555-3612'),('THECR','Liu Wong','55 Grizzly Peak Rd.','Butte','59801','(406) 555-5834'),('TOMSP','Karin Josephs','Luisenstr. 48','MÃ¼nster','44087','0251-031259'),('TORTU','Miguel Angel Paolino','Avda. Azteca 123','MÃ©xico D.F.','05033','(5) 555-2933'),('TRADH','Anabela Domingues','Av. InÃªs de Castro, 414','Sao Paulo','05634-030','(11) 555-2167'),('TRAIH','Helvetius Nagy','722 DaVinci Blvd.','Kirkland','98034','(206) 555-8257'),('VAFFE','Palle Ibsen','SmagslÃ¸get 45','Ã…rhus','8200','86 21 32 43'),('VICTE','Mary Saveley','2, rue du Commerce','Lion','69004','78.32.54.86');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle`
--

DROP TABLE IF EXISTS `detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle` (
  `NUMEROVENTA` int(11) NOT NULL,
  `NUMPRODUCTO` varchar(50) NOT NULL,
  `UNIDADESVENDIDAS` int(11) DEFAULT NULL,
  PRIMARY KEY (`NUMEROVENTA`,`NUMPRODUCTO`),
  KEY `FK_PRODUCTOS` (`NUMPRODUCTO`),
  CONSTRAINT `FK_PRODUCTOS` FOREIGN KEY (`NUMPRODUCTO`) REFERENCES `productos` (`numeroproducto`),
  CONSTRAINT `FK_VENTAS` FOREIGN KEY (`NUMEROVENTA`) REFERENCES `ventas` (`numeroventa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle`
--

LOCK TABLES `detalle` WRITE;
/*!40000 ALTER TABLE `detalle` DISABLE KEYS */;
INSERT INTO `detalle` VALUES (1,'021-04920',2),(1,'059-03313',4),(1,'076-02393',23),(1,'395-02285',2),(1,'844-00433',8),(1,'B68-00069',10),(2,'021-04920',4),(2,'059-03313',1),(2,'076-02396',4),(2,'395-02285',4),(2,'B68-00069',12),(3,'021-04938',6),(3,'065-03079',1),(3,'077-02233',1),(3,'079-01511',1),(3,'395-02285',14),(4,'021-04920',18),(4,'053-00708',8),(4,'079-01511',23),(4,'F89-00133',2),(5,'021-04938',1),(5,'053-00708',1),(5,'053-00721',10),(5,'340-01061',4),(5,'381-01493',1),(5,'395-02285',2),(5,'F89-00141',1),(6,'053-00708',12),(6,'059-03313',12),(6,'059-03332',1),(6,'844-00433',1),(6,'B68-00069',1),(6,'F97-00047',1),(7,'053-00721',14),(7,'059-03332',14),(7,'065-03075',1),(7,'B68-00069',12),(7,'G20-00104',12),(8,'059-03313',16),(8,'065-03075',16),(8,'065-03079',1),(8,'395-02285',23),(8,'G21-00003',23),(9,'059-03332',18),(9,'065-03079',18),(9,'G77-00059',2),(10,'065-03075',1),(10,'076-02393',1),(10,'G77-00284',4),(11,'065-03079',1),(11,'076-02396',1),(11,'395-02285',6),(12,'076-02393',1),(12,'077-02233',1),(12,'844-00433',8),(13,'077-02237',3),(13,'395-02285',3),(13,'B68-00069',10),(14,'079-01511',3),(14,'844-00433',3),(14,'B68-00069',2),(15,'079-01515',4),(15,'395-02285',4),(15,'B68-00069',4),(16,'164-01879',2),(16,'395-02285',1),(16,'B68-00069',2),(17,'021-04920',1),(17,'164-01884',4),(17,'395-02285',4),(18,'021-04938',1),(18,'053-00721',4),(18,'228-00753',1),(18,'395-02285',1),(19,'021-04920',1),(19,'053-00708',23),(19,'059-03313',1),(19,'228-00759',1),(20,'021-04938',1),(20,'053-00721',4),(20,'059-03332',2),(20,'228-01064',1),(21,'053-00708',23),(21,'059-03313',1),(21,'065-03075',1),(21,'228-01076',23),(22,'059-03332',2),(22,'269-04652',4),(23,'065-03075',1),(23,'269-04674',1),(24,'065-03079',1),(24,'271-00432',2),(25,'076-02393',12),(25,'312-01801',1),(26,'076-02396',23),(26,'312-01938',1),(27,'077-02233',2),(27,'324-00313',12),(28,'340-01061',23),(28,'L09-00108',4),(29,'340-01178',2),(29,'M02-00023',6),(30,'355-00266',4),(30,'M02-00085',8),(31,'355-00529',6),(31,'P70-00020',10),(32,'359-00608',8),(32,'P72-00122',12),(33,'359-00616',10),(33,'P73-00178',14),(34,'395-02285',12),(34,'Q14-00002',16),(35,'395-02285',18),(35,'844-00433',14),(36,'844-00433',1),(36,'B68-00069',16),(37,'B68-00069',18),(38,'395-02285',1),(38,'B68-00069',1),(39,'395-02285',1),(40,'021-04920',2),(40,'395-02285',3),(41,'021-04920',4),(41,'021-04938',4),(42,'021-04938',2),(42,'053-00708',1),(43,'053-00708',4),(43,'053-00721',1),(44,'053-00721',1),(44,'059-03313',1),(45,'059-03313',1),(45,'059-03332',23),(46,'059-03332',1),(46,'065-03075',4),(47,'065-03075',23),(47,'065-03079',1),(48,'065-03079',4),(48,'076-02393',2),(49,'076-02393',1),(49,'076-02396',1),(50,'076-02396',2),(50,'077-02233',1),(51,'077-02233',1),(51,'628-01121',12),(52,'395-02285',1),(52,'659-00933',23),(53,'659-01247',2),(53,'844-00433',12),(54,'660-00085',4),(54,'B68-00069',23),(55,'731-00635',6),(56,'731-00638',8),(57,'810-00628',10),(58,'395-02285',12),(59,'844-00433',14),(60,'B68-00069',16),(61,'B68-00069',18),(62,'395-02285',1),(63,'395-02285',1),(64,'021-04920',2),(65,'021-04938',4),(66,'053-00708',1),(67,'053-00721',1),(68,'059-03313',1),(69,'059-03332',23),(70,'065-03075',4),(71,'065-03079',1),(72,'076-02393',2),(73,'076-02396',1),(74,'077-02233',1),(75,'D47-00215',12),(76,'D48-00371',23),(77,'D75-00360',2),(78,'D86-00883',4),(79,'395-02285',6),(80,'065-03079',1),(81,'076-02393',12),(82,'076-02396',23);
/*!40000 ALTER TABLE `detalle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `NUMEROPRODUCTO` varchar(50) NOT NULL,
  `NOMBREPRODUCTO` varchar(255) DEFAULT NULL,
  `IDIOMA` varchar(255) DEFAULT NULL,
  `PRECIO` double DEFAULT NULL,
  PRIMARY KEY (`NUMEROPRODUCTO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES ('021-04920','Office XP Win32 English MVL','English',99.576),('021-04938','Office XP Win32 Spanish MVL','Spanish',99.576),('053-00708','Proofing Tools 2002 Win32 English MVL','English',15.504),('053-00721','Proofing Tools 2002 Win32 Spanish MVL','Spanish',15.504),('059-03313','Word 2002 Win32 Spanish MVL','Spanish',41.112),('059-03332','Word 2002 Win32 English MVL','English',41.112),('065-03075','Excel 2002 Win32 Spanish MVL','Spanish',41.112),('065-03079','Excel 2002 Win32 English MVL','English',41.112),('076-02393','Project 2002 Win32 English MVL w/1 ProjectSvr CAL','English',48.228),('076-02396','Project 2002 Win32 Spanish MVL w/1 ProjectSvr CAL','Spanish',48.228),('077-02233','Access 2002 Win32 Spanish MVL','Spanish',41.112),('077-02237','Access 2002 Win32 English MVL','English',41.112),('079-01511','PowerPoint 2002 Win32 Spanish MVL','Spanish',41.112),('079-01515','PowerPoint 2002 Win32 English MVL','English',41.112),('164-01879','Publisher 2002 Win32 English MVL','English',45.588),('164-01884','Publisher 2002 Win32 Spanish MVL','Spanish',45.588),('228-00753','SQL Svr 2000 Standard Edtn English MVL','English',157.08),('228-00759','SQL Svr 2000 Standard Edtn Spanish MVL','Spanish',157.08),('228-01064','SQL Svr 2000 Standard Edtn English MVL 1 Processor License','English',1128.84),('228-01076','SQL Svr 2000 Standard Edtn Spanish MVL 1 Processor License','Spanish',1128.84),('269-04652','Office XP Pro Win32 English MVL','English',118.728),('269-04674','Office XP Pro Win32 Spanish MVL','Spanish',118.728),('271-00432','Sys Mgmt Svr 2.0 English MVL','English',54.276),('312-01801','Exchange Svr 2000 English MVL','English',171.96),('312-01938','Exchange Svr 2000 Spanish MVL','Spanish',171.96),('324-00313','VSourceSafe 6.0 Win32 English MVL','English',28.428),('340-01061','VFoxPro Pro 7.0 Win32 Spanish MVL','Spanish',39.096),('340-01178','VFoxPro Pro 8.0 Win32 English MVL','English',31.632),('355-00266','Sys Mgmt CAL 2.0 English MVL','English',8.688),('355-00529','Sys Mgmt CAL 2.0 Spanish MVL','Spanish',8.688),('359-00608','SQL CAL 2000 English MVL Per Device','English',6.636),('359-00616','SQL CAL 2000 Spanish MVL Per Device','Spanish',6.636),('381-01445','Exchange CAL 2000 English MVL','English',2.484),('381-01493','Exchange CAL 2000 Spanish MVL','Spanish',1),('392-01455','FrontPage 2002 Win32 Spanish MVL','Spanish',51.348),('392-01459','FrontPage 2002 Win32 English MVL','English',51.348),('395-01743','Exchange Svr Ent 2000 English MVL','English',621.012),('395-02285','Exchange Svr Ent 2000 Spanish MVL','Spanish',621.012),('450-00388','Encarta Dlx 2003 Win32 English MVL','English',18.912),('450-00395','Encarta Dlx 2003 Win32 Spanish MVL','Spanish',18.912),('519-00218','Services for NetWare 5.0 English MVL','English',56.196),('519-00296','Services for NetWare 5.0 Spanish MVL','Spanish',56.196),('532-00982','Commerce Svr Dev 2002 English MVL','English',95.676),('532-00995','Commerce Svr Std 2002 English MVL 1 Processor License','English',1350.024),('543-01171','Outlook 2002 Win32 Spanish MVL','Spanish',18.612),('543-01175','Outlook 2002 Win32 English MVL','English',18.612),('549-00856','Office XP Dev Win32 Spanish MVL','Spanish',125.136),('549-00858','Office XP Dev Win32 English MVL','English',125.136),('628-00902','VStudio .NET Ent Dev 2002 Win32 Spanish MVL','Spanish',148.236),('628-01121','VStudio .NET Ent Dev 2003 Win32 English MVL','English',148.236),('659-00933','VStudio .NET Pro 2002 Win32 Spanish MVL','Spanish',58.764),('659-01247','VStudio .NET Pro 2003 Win32 English MVL','English',58.764),('660-00085','Host Integration Svr 2000 English MVL 1 Processor License','English',587.448),('731-00635','Office Mac 10.0 Spanish MVL','Spanish',112.836),('731-00638','Office Mac 10.0 English MVL','English',112.836),('810-00628','SQL Svr 2000 Enterprise Edtn English MVL','English',1506.876),('810-00634','SQL Svr 2000 Enterprise Edtn Spanish MVL','Spanish',1506.876),('810-00945','SQL Svr 2000 Enterprise Edtn English MVL 1 Processor License','English',4516.74),('810-00957','SQL Svr 2000 Enterprise Edtn Spanish MVL 1 Processor License','Spanish',4516.74),('844-00433','Encarta Ref Lib 2003 Win32 English MVL','English',29.304),('844-00441','Encarta Ref Lib 2003 Win32 Spanish MVL','Spanish',29.304),('aaaa','aaaa','aaaa',12),('B21-00182','MapPoint 2002 Win32 Spanish MVL Euro Only','Spanish',80.94),('B21-00189','MapPoint 2002 Win32 English MVL','English',80.94),('B51-00238','Services for Unix 3.0 English MVL','English',33.18),('B68-00069','Office XP Pro/FrontPage Win32 Spanish MVL','Spanish',149.376),('B68-00076','Office XP Pro/FrontPage Win32 English MVL','English',149.376),('C10-00119','Windows Advanced Svr 2000 Spanish MVL','Spanish',453.396),('C11-00237','Windows Svr 2000 Spanish MVL','Spanish',115.98),('C78-00128','Windows CAL 2000 Spanish MVL','Spanish',6.204),('C79-00153','Windows Trmnl Svcs CAL 2000 Spanish MVL','Spanish',4.032),('C80-00007','Windows Internet Conn 2000 Spanish MVL','Spanish',754.836),('C81-00008','Windows Trmnl Svcs IntCon 2000 Spanish MVL','Spanish',4996.644),('D46-00297','Excel Mac 10.0 English MVL','English',41.112),('D47-00215','PowerPoint Mac 10.0 English MVL','English',41.112),('D48-00371','Word Mac 10.0 English MVL','English',41.112),('D75-00360','BizTalk Server Std 2002 English MVL 1 Processor License','English',1350.024),('D86-00883','Visio Std 2002 Win32 English MVL','English',22.488),('D86-00897','Visio Std 2002 Win32 Spanish MVL','Spanish',22.488),('D87-00769','Visio Pro 2002 Win32 English MVL','English',55.668),('D87-00783','Visio Pro 2002 Win32 Spanish MVL','Spanish',55.668),('D93-00001','Application Center 2000 English MVL 1 Processor License','English',1274.592),('D97-00092','Exchange Conferencing Svr 2000 English MVL','English',621.012),('D97-00335','Exchange Conferencing Svr 2000 Spanish MVL','Spanish',621.012),('E32-00007','SQL Svr 2000 Developer Edtn English MVL','English',111.948),('E32-00046','SQL Svr 2000 Developer Edtn Spanish MVL','Spanish',111.948),('E49-00507','Mobile Info Svr Ent 2002 English MVL','English',6.828),('E49-00508','Mobile Info Svr Ent 2002 English MVL w/OMA','English',8.844),('E49-00584','Mobile Info Svr Ent 2002 Spanish MVL','Spanish',6.828),('E49-00585','Mobile Info Svr Ent 2002 Spanish MVL w/OMA','Spanish',8.844),('E84-00127','ISA Server 2000 English MVL 1 Processor License','English',318.492),('E84-00135','ISA Server 2000 Spanish MVL 1 Processor License','Spanish',318.492),('E85-00345','Windows XP Professional English UPG MVL','English',66.216),('E85-00369','Windows XP Professional Spanish UPG MVL','Spanish',66.216),('F52-00477','BizTalk Server Ent 2002 English MVL 1 Processor License','English',5359.872),('F89-00133','ISA Server Ent Edtn 2000 Spanish MVL 1 Processor License','Spanish',1401.816),('F89-00141','ISA Server Ent Edtn 2000 English MVL 1 Processor License','English',1401.816),('F97-00047','Class Server 2.0 Win32 English MVL','English',2533.524),('G20-00104','Commerce Svr Ent 2002 English MVL 1 Processor License','English',3858.12),('G21-00003','BizTalk Supplier Accel 1.0 English MVL 1 Processor License','English',2351.172),('G77-00059','VStudio.NET Ent Architect 2002 Win32 Spanish MVL','Spanish',160.488),('G77-00284','VStudio.NET Ent Architect 2003 Win32 English MVL','English',160.488),('H04-00054','SharePoint Portal Svr 2001 English MVL','English',983.7),('H04-00059','SharePoint Portal Svr 2001 Spanish MVL','Spanish',983.7),('H05-00014','SharePoint Portal CAL 2001 English MVL','English',17.676),('H05-00019','SharePoint Portal CAL 2001 Spanish MVL','Spanish',17.676),('H07-00024','Class Server Student Lic 2.0 Win32 English MVL','English',3.72),('H10-00003','BizTalk SAP Ent 1.0 English MVL Adapter Only 1 Processor License','English',6431.88),('H11-00003','BizTalk MQSeries Ent 1.0 English MVL Adapter Only 1 Processor License','English',6431.88),('H21-00369','Project Server CAL 2002 Win32 English MVL','English',6.9),('H21-00372','Project Server CAL 2002 Win32 Spanish MVL','Spanish',6.9),('H22-00446','Project Server 2002 Win32 English MVL','English',36.6),('H22-00449','Project Server 2002 Win32 Spanish MVL','Spanish',36.6),('H30-00226','Project Pro 2002 Win32 Spanish MVL w/1 ProjectSvr CAL','Spanish',78.456),('H30-00230','Project Pro 2002 Win32 English MVL w/1 ProjectSvr CAL','English',78.456),('H32-00005','SPS Extrnl Conn Non Emply 2001 English MVL','English',35000),('H32-00025','SPS Extrnl Conn Non Emply 2001 Spanish MVL','Spanish',22994.004),('HO2-00036','Data Analyzer 2002 Win32 English MVL','English',70.704),('L09-00027','MOM Operations Mgr Base 2000 English MVL 1 Processor License','English',127.308),('L09-00108','MOM Operations Mgr Base 2000 English MVL Migration 1 Processor License','English',63.576),('M02-00023','MOM Application Mgmt Pack 2000 English MVL 1 Processor License','English',127.308),('M02-00085','MOM Application Mgmt Pack 2000 English MVL Migration 1 Processor License','English',63.576),('P70-00020','Windows Svr Web 2003 English MVL','English',160.8),('P72-00122','Windows Svr Ent 2003 English MVL','English',410.136),('P73-00178','Windows Svr Std 2003 English MVL','English',102.492),('Q14-00002','BizTalk Fin Svc Std 1.0 English MVL Accltr Only 1 Processor License','English',1928.64),('Q15-00002','BizTalk Fin Svc Ent 1.0 English MVL Accltr Only 1 Processor License','English',7716.552),('R04-00094','BizTalk Server Dev 2002 English MVL','English',106.992),('R18-00041','Windows Server CAL 2003 English MVL Device CAL','English',6.384),('R18-00042','Windows Server CAL 2003 English MVL User CAL','English',6.384),('R19-00041','Windows Terminal Svr CAL 2003 English MVL User CAL','English',32.1),('R19-00042','Windows Terminal Svr CAL 2003 English MVL Device CAL','English',32.1),('R39-00424','Windows Svr ExtrnConn 2003 English MVL','English',754.212),('R59-00402','Windows Term Svr ExtrnCon 2003 English MVL','English',3227.256),('U01-00170','BizTalk RosettaNet Std 2.0 English MVL Accltr Only 1 Prcsr Lic','English',1928.64),('U02-00118','BizTalk HIPAA Standard 2.0 English MVL Accltr Only 1 Processor License','English',1928.64),('U03-00141','BizTalk RosettaNet Ent 1.1 English MVL Accltr Only 1 Prcsr Lic','English',8575.74),('U03-00179','BizTalk RosettaNet Ent 2.0 English MVL Accltr Only 1 Prcsr Lic','English',7716.552),('U04-00181','BizTalk HIPAA Ent 2.0 English MVL Accltr Only 1 Processor License','English',7716.552),('V04-00169','Content Mgmt Svr Ent Ed 2002 English MVL 1 Processor License','English',16096.14);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedor` (
  `IDVENDEDOR` int(11) NOT NULL,
  `NOMBRE` varchar(30) DEFAULT NULL,
  `DIRECCION` varchar(60) DEFAULT NULL,
  `LOCALIDAD` varchar(15) DEFAULT NULL,
  `CPOSTAL` varchar(10) DEFAULT NULL,
  `TELEFONO` varchar(24) DEFAULT NULL,
  `COMISION` decimal(19,4) DEFAULT NULL,
  `SUELDO` decimal(19,4) DEFAULT NULL,
  PRIMARY KEY (`IDVENDEDOR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
INSERT INTO `vendedor` VALUES (1,'Maria Anders','Obere Str. 577','ZAFRA','12209','030-0074321',100.0000,1000.0000),(2,'Ana Trujillo','Avda. de la Constitución 2222','ZAFRA','05021','(5) 555-4729',100.0000,1000.0000),(3,'Antonio Moreno','Mataderos  2312','ZAFRA','05023','(5) 555-3932',100.0000,1000.0000),(4,'Thomas Hardy','120 Hanover Sq.','ZAFRA','WA1 1DP','(71) 555-7788',300.0000,99999.0000),(5,'Christina Berglund','Berguvsvägen  8','BADAJOZ','S-958 22','0921-12 34 65',100.0000,1000.0000),(6,'Hanna Moos','Forsterstr. 57','MERIDA','68306','0621-08460',100.0000,1000.0000),(7,'Frédérique Citeaux','24, place Kléber','LOS SANTOS','67000','88.60.15.31',100.0000,1300.0000),(8,'Martín Sommer','C/ Araquil, 67',NULL,'28023','(91) 555 22 82',300.0000,1000.0000),(9,'Laurence Lebihan','12, rue des Bouchers',NULL,'13008','91.24.45.40',100.0000,1000.0000),(10,'Elizabeth Lincoln','23 Tsawassen Blvd.',NULL,'T2F 8M4','(604) 555-4729',100.0000,1000.0000),(11,'Victoria Ashworth','Fauntleroy Circus','DON BENITO','EC2 5NT','(71) 555-1212',100.0000,1000.0000),(12,'Patricio Simpson','Cerrito 333','DON BENITO','1010','(1) 135-5555',300.0000,1000.0000),(13,'Francisco Chang','Sierras de Granada 9993','BURGUILLOS','05022','(5) 555-3392',100.0000,1200.0000),(14,'Yang Wang','Hauptstr. 29','BURGUILLOS','3012','0452-076545',100.0000,1000.0000),(15,'Pedro Afonso','Av. dos Lusíadas, 23','ZAFRA','05432-043','(11) 555-7647',300.0000,1100.0000),(16,'Elizabeth Brown','Berkeley Gardens\r\n12  Brewery ','ZAFRA','WX1 6LT','(71) 555-2282',300.0000,1000.0000),(17,'asdfasd',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `NUMEROVENTA` int(11) NOT NULL,
  `CLIENTE` varchar(5) DEFAULT NULL,
  `FECHAVENTA` datetime DEFAULT NULL,
  `PAGADO` tinyint(4) DEFAULT NULL,
  `VENDEDOR` int(11) DEFAULT NULL,
  PRIMARY KEY (`NUMEROVENTA`),
  KEY `FK_VENDEDOR` (`VENDEDOR`),
  KEY `FK_CLIENTES` (`CLIENTE`),
  CONSTRAINT `FK_CLIENTES` FOREIGN KEY (`CLIENTE`) REFERENCES `cliente` (`codigo`),
  CONSTRAINT `FK_VENDEDOR` FOREIGN KEY (`VENDEDOR`) REFERENCES `vendedor` (`idvendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'ANTON','2003-02-12 00:00:00',1,4),(2,'BERGS','2003-02-12 00:00:00',0,2),(3,'BLAUS','2003-02-12 00:00:00',1,2),(4,'BLAUS','2003-01-12 00:00:00',0,4),(5,'BOTTM','2003-01-12 00:00:00',0,4),(6,'BOLID','2003-01-01 00:00:00',0,4),(7,'AROUT','2003-03-23 00:00:00',1,4),(8,'BOTTM','2003-12-23 00:00:00',0,4),(9,'AROUT','2004-01-24 00:00:00',0,NULL),(10,'ALFKI','2007-04-22 00:00:00',0,4),(11,'ANATR','2007-05-24 00:00:00',1,2),(12,'ANTON','2007-06-25 00:00:00',0,2),(13,'AROUT','2007-07-27 00:00:00',0,4),(14,'BERGS','2007-08-28 00:00:00',0,4),(15,'BLAUS','2007-09-29 00:00:00',0,4),(16,'BLONP','2007-10-31 00:00:00',0,2),(17,'BOLID','2007-12-02 00:00:00',1,2),(18,'BONAP','2005-12-03 00:00:00',0,4),(19,'BOTTM','2005-12-03 00:00:00',0,4),(20,'BSBEV','2005-12-03 00:00:00',0,1),(21,'CACTU','2005-12-03 00:00:00',0,4),(22,'CENTC','2005-12-03 00:00:00',1,4),(23,'CHOPS','2005-12-03 00:00:00',0,4),(24,'COMMI','2005-12-03 00:00:00',0,1),(25,'CONSH','2005-12-03 00:00:00',0,4),(26,'DRACD','2005-07-21 00:00:00',1,1),(27,'DUMON','2005-08-22 00:00:00',0,NULL),(28,'EASTC','2005-09-23 00:00:00',0,4),(29,'ERNSH','2005-10-25 00:00:00',0,4),(30,'FAMIA','2005-11-26 00:00:00',1,4),(31,'FISSA','2005-12-28 00:00:00',0,4),(32,'FOLIG','2006-01-29 00:00:00',0,1),(33,'FOLKO','2006-03-02 00:00:00',1,4),(34,'FRANK','2006-04-03 00:00:00',0,4),(35,'FRANR','2006-05-05 00:00:00',0,4),(36,'FRANS','2006-06-06 00:00:00',0,4),(37,'FURIB','2006-07-08 00:00:00',1,4),(38,'GALED','2006-08-09 00:00:00',0,4),(39,'GODOS','2006-09-10 00:00:00',0,1),(40,'GOURL','2006-10-12 00:00:00',0,1),(41,'GREAL','2006-11-13 00:00:00',1,1),(42,'GROSR','2006-12-15 00:00:00',0,NULL),(43,'HANAR','2007-01-16 00:00:00',0,1),(44,'HILAA','2007-02-17 00:00:00',0,2),(45,'HUNGC','2007-03-21 00:00:00',0,2),(46,'HUNGO','2007-04-22 00:00:00',0,4),(47,'ISLAT','2007-05-24 00:00:00',1,4),(48,'KOENE','2007-06-25 00:00:00',0,1),(49,'LACOR','2007-07-27 00:00:00',0,2),(50,'LAMAI','2007-08-28 00:00:00',0,2),(51,'LAUGB','2007-09-29 00:00:00',0,4),(52,'LAZYK','2007-10-31 00:00:00',1,4),(53,'LEHMS','2007-12-02 00:00:00',0,1),(54,'LETSS','2005-12-03 00:00:00',0,1),(55,'LILAS','2005-12-03 00:00:00',0,1),(56,'LINOD','2005-12-03 00:00:00',1,4),(57,'LONEP','2005-12-03 00:00:00',0,2),(58,'MAGAA','2005-12-03 00:00:00',0,4),(59,'MAISD','2005-12-03 00:00:00',0,4),(60,'MEREP','2005-12-03 00:00:00',1,1),(61,'MORGK','2005-12-03 00:00:00',0,1),(62,'NORTS','2005-12-03 00:00:00',0,1),(63,'OCEAN','2005-12-03 00:00:00',0,NULL),(64,'OLDWO','2005-12-03 00:00:00',1,1),(65,'OTTIK','2005-12-03 00:00:00',0,2),(66,'PARIS','2005-12-02 00:00:00',0,2),(67,'PERIC','2005-12-02 00:00:00',0,4),(68,'PICCO','2005-12-02 00:00:00',1,4),(69,'PRINI','2005-12-02 00:00:00',0,1),(70,'QUEDE','2005-12-02 00:00:00',0,2),(71,'FURIB','2007-06-25 00:00:00',0,2),(72,'GALED','2007-07-27 00:00:00',0,4),(73,'GODOS','2007-08-28 00:00:00',0,4),(74,'GOURL','2007-09-29 00:00:00',1,1),(75,'GREAL','2007-10-31 00:00:00',0,11),(76,'GROSR','2007-12-02 00:00:00',0,11),(77,'HANAR','2005-12-03 00:00:00',0,12),(78,'HILAA','2005-12-03 00:00:00',0,12),(79,'HUNGC','2005-12-03 00:00:00',1,13),(80,'HUNGO','2005-12-03 00:00:00',0,14),(81,'ISLAT','2005-12-03 00:00:00',0,15),(82,'KOENE','2005-12-03 00:00:00',0,16);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `oposiciones`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `oposiciones` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;

USE `oposiciones`;

--
-- Table structure for table `examenes`
--

DROP TABLE IF EXISTS `examenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examenes` (
  `CODIGOEXA` tinyint(4) NOT NULL DEFAULT '0',
  `DESCRIPCIONEXA` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CODIGOEXA`),
  UNIQUE KEY `ix_descripcion` (`DESCRIPCIONEXA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examenes`
--

LOCK TABLES `examenes` WRITE;
/*!40000 ALTER TABLE `examenes` DISABLE KEYS */;
INSERT INTO `examenes` VALUES (3,'EXAMEN TEMA TEORIA'),(1,'EXAMEN TIPO TEST 20 PREGUNTAS'),(2,'SUPUESTOS PRACTICOS (3)');
/*!40000 ALTER TABLE `examenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `DNIOPOSITOR` varchar(255) NOT NULL DEFAULT '',
  `CODIGOEXAMEN` tinyint(4) NOT NULL DEFAULT '0',
  `NOTA` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`DNIOPOSITOR`,`CODIGOEXAMEN`),
  KEY `fi0` (`CODIGOEXAMEN`),
  KEY `fi1` (`DNIOPOSITOR`),
  CONSTRAINT `fk_notas_opo` FOREIGN KEY (`DNIOPOSITOR`) REFERENCES `opositores` (`dni`),
  CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`CODIGOEXAMEN`) REFERENCES `examenes` (`codigoexa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES ('1173391',1,2),('1173391',2,5),('1173391',3,6),('11841394',1,3),('11841394',2,5),('11841394',3,3),('11843671',1,3),('11843671',2,4),('11843671',3,3),('11843982',1,4),('11843982',2,7),('11843982',3,3),('11844272',1,5),('11844272',2,9),('11844272',3,3),('11845343',1,6),('11845343',2,8),('11845343',3,3),('11849578',1,7),('11849578',2,8),('11849578',3,5),('11850727',1,8),('11850727',2,8),('11850727',3,5),('11850969',1,7),('11850969',2,8),('11850969',3,5),('11851761',1,7),('11851761',2,8),('11851761',3,4),('11852345',1,1),('11852345',2,8),('11852345',3,7),('14308556',1,2),('14308556',2,8),('14308556',3,9),('1932986',1,2),('1932986',2,9),('1932986',3,8),('1933685',1,3),('1933685',2,2),('1933685',3,8),('1937101',1,3),('1937101',2,3),('1937101',3,8),('2238233',1,5),('2238233',2,3),('2238233',3,8),('2263918',1,5),('2263918',2,4),('2263918',3,8),('2267650',1,5),('2267650',2,5),('2267650',3,8),('2269028',1,4),('2269028',2,6),('2269028',3,8),('2270188',1,6),('2270188',2,7),('2270188',3,9),('2271897',1,3),('2271897',2,8),('2271897',3,7),('2272581',1,3),('2272581',2,7),('2272581',3,2),('2276630',1,3),('2276630',2,7),('2276630',3,3),('2276800',1,3),('2276800',2,1),('2276800',3,3),('2277835',1,3),('2277835',2,2),('2277835',3,4),('2278639',1,5),('2278639',2,2),('2278639',3,5),('2282590',1,5),('2282590',2,3),('2282590',3,6),('2283491',1,5),('2283491',2,3),('2283491',3,7),('2284256',1,4),('2284256',2,5),('2284256',3,8),('2647631',1,7),('2647631',2,5),('2647631',3,7),('2649085',1,9),('2649085',2,5),('2649085',3,7),('2659710',1,8),('2659710',2,4),('2659710',3,1),('2666680',1,8),('2666680',2,2),('2666680',3,2),('2667675',1,8),('2667675',2,3),('2667675',3,2),('2668273',1,8),('2668273',2,3),('2668273',3,3),('2669111',1,8),('2669111',2,4),('2669111',3,3),('2669560',1,8),('2669560',2,5),('2669560',3,5),('2669749',1,8),('2669749',2,6),('2669749',3,5),('2670956',1,9),('2670956',2,7),('2670956',3,5),('30745766',1,2),('30745766',2,8),('30745766',3,4),('3093893',1,3),('3093893',2,7),('3093893',3,6),('32703586',1,3),('32703586',2,7),('32703586',3,3),('33523948',1,4),('33523948',2,1),('33523948',3,3),('36106722',1,5),('36106722',2,2),('36106722',3,3),('3867773',1,6),('3867773',2,2),('3867773',3,3),('3877296',1,7),('3877296',2,3),('3877296',3,3),('3888843',1,8),('3888843',2,3),('3888843',3,5),('3897830',1,7),('3897830',2,5),('3897830',3,5),('3898800',1,7),('3898800',2,5),('3898800',3,5),('3899484',1,1),('3899484',2,5),('3899484',3,4),('3900635',1,2),('3900635',2,4),('3900635',3,7),('3904537',1,2),('3904537',2,6),('3904537',3,9),('3904786',1,3),('3904786',2,3),('3904786',3,8),('3905226',1,3),('3905226',2,3),('3905226',3,8),('3905411',1,5),('3905411',2,3),('3905411',3,8),('3907718',1,5),('3907718',2,3),('3907718',3,8),('3907803',1,5),('3907803',2,3),('3907803',3,8),('4213464',1,4),('4213464',2,5),('4213464',3,8),('4214130',1,6),('4214130',2,5),('4214130',3,8),('4216552',1,3),('4216552',2,5),('4216552',3,9),('4216993',1,3),('4216993',2,4),('4216993',3,7),('43125083',1,3),('43125083',2,2),('43125083',3,5),('46841117',1,3),('46841117',2,3),('46841117',3,4),('46845978',1,3),('46845978',2,3),('46845978',3,4),('46851690',1,5),('46851690',2,4),('46851690',3,2),('46922311',1,5),('46922311',2,5),('46922311',3,4),('46924533',1,5),('46924533',2,6),('46924533',3,2),('46925960',1,4),('46925960',2,7),('46925960',3,3),('46928330',1,7),('46928330',2,8),('46928330',3,3),('46928725',1,9),('46928725',2,7),('46928725',3,4),('46938891',1,8),('46938891',2,7),('46938891',3,5),('47024986',1,8),('47024986',2,1),('47024986',3,6),('47031921',1,8),('47031921',2,2),('47031921',3,7),('47034100',1,8),('47034100',2,2),('47034100',3,8),('47034404',1,8),('47034404',2,3),('47034404',3,7),('47035769',1,8),('47035769',2,3),('47035769',3,7),('47042006',1,8),('47042006',2,5),('47042006',3,1),('47042385',1,9),('47042385',2,5),('47042385',3,2),('47042399',1,7),('47042399',2,5),('47042399',3,2),('47044073',1,2),('47044073',2,4),('47044073',3,3),('47045618',1,3),('47045618',2,6),('47045618',3,3),('47046526',1,3),('47046526',2,3),('47046526',3,5),('47046930',1,4),('47046930',2,3),('47046930',3,5),('47047937',1,5),('47047937',2,3),('47047937',3,5),('47049228',1,6),('47049228',2,3),('47049228',3,4),('47049316',1,7),('47049316',2,3),('47049316',3,6),('47049392',1,8),('47049392',2,5),('47049392',3,3),('47217990',1,7),('47217990',2,5),('47217990',3,3),('47220902',1,7),('47220902',2,5),('47220902',3,2),('47280013',1,1),('47280013',2,4),('47280013',3,3),('47301118',1,2),('47301118',2,7),('47301118',3,3),('47302239',1,2),('47302239',2,9),('47302239',3,4),('47450428',1,3),('47450428',2,8),('47450428',3,5),('47456054',1,3),('47456054',2,8),('47456054',3,6),('47456601',1,5),('47456601',2,8),('47456601',3,7),('47457503',1,5),('47457503',2,8),('47457503',3,8),('47457939',1,5),('47457939',2,8),('47457939',3,7),('47458251',1,4),('47458251',2,8),('47458251',3,7),('47458460',1,6),('47458460',2,8),('47458460',3,1),('47458552',1,3),('47458552',2,9),('47458552',3,2),('47458849',1,3),('47458849',2,2),('47458849',3,2),('47459361',1,3),('47459361',2,3),('47459361',3,3),('47460015',1,3),('47460015',2,3),('47460015',3,3),('47491189',1,3),('47491189',2,4),('47491189',3,5),('47495786',1,5),('47495786',2,5),('47495786',3,5),('47496281',1,5),('47496281',2,6),('47496281',3,5),('47497218',1,5),('47497218',2,7),('47497218',3,4),('47499160',1,4),('47499160',2,8),('47499160',3,6),('48997059',1,7),('48997059',2,7),('48997059',3,3),('48997274',1,9),('48997274',2,7),('48997274',3,3),('49003272',1,8),('49003272',2,1),('49003272',3,3),('49003605',1,8),('49003605',2,2),('49003605',3,3),('49004517',1,8),('49004517',2,2),('49004517',3,3),('49004747',1,8),('49004747',2,3),('49004747',3,5),('49005132',1,8),('49005132',2,3),('49005132',3,5),('49006338',1,8),('49006338',2,5),('49006338',3,5),('49011941',1,8),('49011941',2,5),('49011941',3,4),('49013123',1,9),('49013123',2,5),('49013123',3,7),('49013614',1,7),('49013614',2,4),('49013614',3,2),('49013775',1,5),('49013775',2,6),('49013775',3,3),('49013815',1,4),('49013815',2,3),('49013815',3,3),('49013889',1,4),('49013889',2,3),('49013889',3,4),('49013944',1,2),('49013944',2,3),('49013944',3,5),('49014316',1,4),('49014316',2,3),('49014316',3,6),('49015728',1,2),('49015728',2,3),('49015728',3,7),('49016849',1,3),('49016849',2,5),('49016849',3,8),('49017419',1,3),('49017419',2,5),('49017419',3,7),('49017896',1,4),('49017896',2,5),('49017896',3,7),('49018965',1,5),('49018965',2,4),('49018965',3,1),('49020051',1,6),('49020051',2,7),('49020051',3,2),('50107211',1,7),('50107211',2,9),('50107211',3,2),('50113980',1,8),('50113980',2,8),('50113980',3,3),('50117251',1,7),('50117251',2,8),('50117251',3,3),('50119480',1,7),('50119480',2,8),('50119480',3,5),('50127926',1,1),('50127926',2,8),('50127926',3,5),('50128111',1,2),('50128111',2,8),('50128111',3,5),('50128158',1,2),('50128158',2,8),('50128158',3,4),('50129298',1,3),('50129298',2,8),('50129298',3,6),('50129650',1,3),('50129650',2,9),('50129650',3,3),('50211749',1,5),('50211749',2,7),('50211749',3,3),('50218486',1,5),('50218486',2,2),('50218486',3,3),('50220753',1,5),('50220753',2,3),('50220753',3,3),('50221127',1,4),('50221127',2,3),('50221127',3,3),('50221454',1,6),('50221454',2,4),('50221454',3,5),('50221778',1,3),('50221778',2,5),('50221778',3,5),('50222200',1,3),('50222200',2,6),('50222200',3,5),('50222579',1,2),('50222579',2,7),('50222579',3,4),('50222877',1,3),('50222877',2,8),('50222877',3,7),('50224174',1,3),('50224174',2,7),('50224174',3,9),('50318962',1,4),('50318962',2,7),('50318962',3,8),('50323408',1,5),('50323408',2,1),('50323408',3,8),('50443489',1,6),('50443489',2,2),('50443489',3,8),('50466830',1,7),('50466830',2,2),('50466830',3,8),('50542633',1,8),('50542633',2,3),('50542633',3,8),('50542635',1,7),('50542635',2,3),('50542635',3,8),('50543536',1,7),('50543536',2,5),('50543536',3,8),('50543825',1,1),('50543825',2,5),('50543825',3,9),('50543951',1,2),('50543951',2,5),('50543951',3,7),('50733568',1,2),('50733568',2,4),('50733568',3,5),('50739304',1,3),('50739304',2,6),('50739304',3,4),('50741553',1,3),('50741553',2,3),('50741553',3,4),('50741554',1,5),('50741554',2,3),('50741554',3,2),('50749620',1,5),('50749620',2,3),('50749620',3,3),('50751029',1,5),('50751029',2,3),('50751029',3,3),('50752579',1,4),('50752579',2,3),('50752579',3,4),('50753061',1,6),('50753061',2,5),('50753061',3,5),('50754253',1,3),('50754253',2,5),('50754253',3,6),('50755331',1,3),('50755331',2,5),('50755331',3,7),('50755563',1,3),('50755563',2,4),('50755563',3,8),('50755712',1,3),('50755712',2,7),('50755712',3,7),('50755775',1,3),('50755775',2,2),('50755775',3,7),('50756221',1,5),('50756221',2,3),('50756221',3,1),('50868738',1,5),('50868738',2,3),('50868738',3,2),('50875209',1,5),('50875209',2,4),('50875209',3,2),('50880732',1,4),('50880732',2,5),('50880732',3,3),('50884239',1,7),('50884239',2,6),('50884239',3,3),('50885221',1,2),('50885221',2,7),('50885221',3,5),('50885336',1,3),('50885336',2,8),('50885336',3,5),('50885927',1,3),('50885927',2,7),('50885927',3,5),('50886453',1,4),('50886453',2,7),('50886453',3,4),('50886959',1,5),('50886959',2,1),('50886959',3,6),('50887483',1,6),('50887483',2,2),('50887483',3,3),('50888252',1,7),('50888252',2,2),('50888252',3,3),('50891348',1,8),('50891348',2,3),('50891348',3,3),('51076828',1,7),('51076828',2,3),('51076828',3,3),('51083987',1,7),('51083987',2,5),('51083987',3,3),('51087952',1,1),('51087952',2,5),('51087952',3,5),('51093870',1,2),('51093870',2,5),('51093870',3,5),('51096901',1,2),('51096901',2,4),('51096901',3,5),('51097958',1,3),('51097958',2,6),('51097958',3,4),('51449111',1,3),('51449111',2,3),('51449111',3,7),('51455418',1,5),('51455418',2,3),('51455418',3,9),('51457246',1,5),('51457246',2,3),('51457246',3,8),('51457720',1,5),('51457720',2,3),('51457720',3,8),('51458752',1,4),('51458752',2,3),('51458752',3,8),('51458893',1,6),('51458893',2,5),('51458893',3,8),('51927823',1,3),('51927823',2,5),('51927823',3,8),('51985756',1,3),('51985756',2,5),('51985756',3,8),('52107712',1,3),('52107712',2,4),('52107712',3,8),('52355704',1,3),('52355704',2,7),('52355704',3,9),('52860180',1,3),('52860180',2,9),('52860180',3,7),('52887513',1,5),('52887513',2,8),('52887513',3,5),('52959160',1,5),('52959160',2,8),('52959160',3,4),('52964122',1,5),('52964122',2,8),('52964122',3,4),('52975621',1,4),('52975621',2,8),('52975621',3,2),('52978402',1,7),('52978402',2,8),('52978402',3,4),('52980097',1,9),('52980097',2,8),('52980097',3,2),('52980664',1,8),('52980664',2,8),('52980664',3,3),('52984948',1,8),('52984948',2,9),('52984948',3,3),('52997923',1,8),('52997923',2,2),('52997923',3,4),('52999706',1,8),('52999706',2,3),('52999706',3,5),('52999879',1,8),('52999879',2,3),('52999879',3,6),('53022980',1,8),('53022980',2,4),('53022980',3,7),('53047850',1,8),('53047850',2,5),('53047850',3,8),('53049672',1,9),('53049672',2,6),('53049672',3,7),('53105927',1,7),('53105927',2,7),('53105927',3,7),('53132863',1,5),('53132863',2,8),('53132863',3,1),('53134085',1,4),('53134085',2,7),('53134085',3,2),('53137477',1,4),('53137477',2,7),('53137477',3,2),('53386548',1,2),('53386548',2,1),('53386548',3,3),('53389834',1,3),('53389834',2,2),('53389834',3,3),('53389853',1,3),('53389853',2,2),('53389853',3,5),('53390061',1,4),('53390061',2,3),('53390061',3,5),('53392543',1,5),('53392543',2,3),('53392543',3,5),('53416739',1,6),('53416739',2,5),('53416739',3,4),('53417961',1,7),('53417961',2,5),('53417961',3,0),('53418213',1,8),('53418213',2,5),('53418213',3,0),('53418326',1,7),('53418326',2,4),('53418326',3,0),('53419163',1,7),('53419163',2,6),('53419163',3,0),('53419959',1,1),('53419959',2,3),('53419959',3,0),('53420473',1,2),('53420473',2,3),('53420473',3,0),('53422123',1,2),('53422123',2,3),('53422123',3,5),('53422257',1,3),('53422257',2,3),('53422257',3,5),('53422330',1,3),('53422330',2,3),('53422330',3,0),('53423041',1,5),('53423041',2,5),('53423041',3,0),('53423243',1,5),('53423243',2,5),('53423243',3,7),('53423313',1,5),('53423313',2,5),('53423313',3,9),('53423815',1,4),('53423815',2,4),('53423815',3,0),('53423817',1,6),('53423817',2,7),('53423817',3,0),('53423916',1,3),('53423916',2,9),('53423916',3,8),('53424700',1,3),('53424700',2,8),('53424700',3,8),('53425387',1,3),('53425387',2,8),('53425387',3,0),('53428006',1,3),('53428006',2,8),('53428006',3,0),('53431089',1,3),('53431089',2,8),('53431089',3,0),('53432616',1,5),('53432616',2,8),('53432616',3,9),('53433387',1,5),('53433387',2,8),('53433387',3,9),('53434567',1,5),('53434567',2,8),('53434567',3,3),('53442156',1,4),('53442156',2,9),('53442156',3,9),('53446287',1,7),('53446287',2,7),('53446287',3,9),('53446583',1,9),('53446583',2,2),('53446583',3,5),('53446663',1,8),('53446663',2,3),('53446663',3,9),('53446822',1,8),('53446822',2,3),('53446822',3,9),('53446893',1,8),('53446893',2,4),('53446893',3,9),('53446947',1,8),('53446947',2,5),('53446947',3,9),('53447056',1,8),('53447056',2,6),('53447056',3,7),('53447071',1,8),('53447071',2,7),('53447071',3,1),('53447680',1,8),('53447680',2,8),('53447680',3,2),('53448199',1,9),('53448199',2,2),('53448199',3,2),('53448494',1,7),('53448494',2,3),('53448494',3,9),('53448818',1,5),('53448818',2,3),('53448818',3,8),('53449882',1,4),('53449882',2,4),('53449882',3,5),('53450152',1,4),('53450152',2,5),('53450152',3,8),('53450600',1,2),('53450600',2,6),('53450600',3,5),('53450717',1,4),('53450717',2,7),('53450717',3,8),('53450747',1,2),('53450747',2,8),('53450747',3,6),('53451001',1,3),('53451001',2,7),('53451001',3,6),('53451123',1,3),('53451123',2,7),('53451123',3,3),('53452083',1,4),('53452083',2,1),('53452083',3,6),('53453335',1,5),('53453335',2,2),('53453335',3,3),('53453665',1,6),('53453665',2,2),('53453665',3,4),('53460755',1,7),('53460755',2,3),('53460755',3,5),('53461159',1,8),('53461159',2,3),('53461159',3,2),('53461178',1,7),('53461178',2,5),('53461178',3,5),('53461338',1,7),('53461338',2,5),('53461338',3,2),('53462493',1,1),('53462493',2,5),('53462493',3,2),('53462871',1,2),('53462871',2,4),('53462871',3,2),('53463340',1,2),('53463340',2,6),('53463340',3,8),('53464562',1,3),('53464562',2,3),('53464562',3,2),('53464701',1,3),('53464701',2,3),('53464701',3,8),('53465947',1,5),('53465947',2,3),('53465947',3,3),('53490626',1,5),('53490626',2,3),('53490626',3,8),('5422989',1,5),('5422989',2,3),('5422989',3,8),('6573699',1,4),('6573699',2,5),('6573699',3,7),('70056580',1,6),('70056580',2,5),('70056580',3,7),('70059204',1,3),('70059204',2,5),('70059204',3,7),('70060073',1,3),('70060073',2,4),('70060073',3,7),('70063468',1,3),('70063468',2,7),('70063468',3,3),('70245204',1,3),('70245204',2,9),('70245204',3,3),('70245815',1,3),('70245815',2,8),('70245815',3,4),('70250031',1,2),('70250031',2,8),('70250031',3,5),('70254462',1,3),('70254462',2,8),('70254462',3,6),('71277949',1,3),('71277949',2,8),('71277949',3,7),('71431342',1,4),('71431342',2,8),('71431342',3,7),('71442335',1,5),('71442335',2,8),('71442335',3,7),('71506039',1,6),('71506039',2,8),('71506039',3,7),('71517440',1,7),('71517440',2,9),('71517440',3,1),('71517910',1,8),('71517910',2,2),('71517910',3,2),('7244258',1,7),('7244258',2,3),('7244258',3,2),('72886268',1,7),('72886268',2,3),('72886268',3,7),('74515243',1,1),('74515243',2,4),('74515243',3,7),('74933254',1,2),('74933254',2,5),('74933254',3,5),('75774199',1,2),('75774199',2,6),('75774199',3,5),('76019529',1,3),('76019529',2,7),('76019529',3,5),('76123032',1,3),('76123032',2,8),('76123032',3,6),('76123615',1,5),('76123615',2,7),('76123615',3,6),('76730681',1,5),('76730681',2,7),('76730681',3,3),('77335978',1,5),('77335978',2,1),('77335978',3,3),('7960007',1,4),('7960007',2,2),('7960007',3,10),('8042400',1,6),('8042400',2,2),('8042400',3,3),('9001990',1,3),('9001990',2,3),('9001990',3,3),('9036331',1,3),('9036331',2,3),('9036331',3,10),('9039942',1,3),('9039942',2,5),('9039942',3,5),('9191786',1,3),('9191786',2,5),('9191786',3,5),('9456432',1,3),('9456432',2,5),('9456432',3,4),('9457570',1,5),('9457570',2,4),('9457570',3,7);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opositores`
--

DROP TABLE IF EXISTS `opositores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opositores` (
  `DNI` varchar(14) NOT NULL DEFAULT '',
  `NOMBRE` varchar(255) DEFAULT NULL,
  `CIUDAD` varchar(255) DEFAULT NULL,
  `TELEFONO` varchar(14) DEFAULT NULL,
  `TRIBUNALOPOSITOR` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`DNI`),
  KEY `fi0` (`TRIBUNALOPOSITOR`),
  KEY `ix_nombre` (`NOMBRE`),
  CONSTRAINT `fk_opo_tri` FOREIGN KEY (`TRIBUNALOPOSITOR`) REFERENCES `tribunales` (`codigotribunal`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opositores`
--

LOCK TABLES `opositores` WRITE;
/*!40000 ALTER TABLE `opositores` DISABLE KEYS */;
INSERT INTO `opositores` VALUES ('1173391','GUTIERREZ MARTIN, JUAN JOSE','BADAJOZ','924493332',1),('11841394','MAESTRE PEÑALBA, PATRICIA','BADAJOZ','924493333',1),('11843671','TRUJILLO GALLEGO, MONICA','BADAJOZ','924493334',2),('11843982','PLACER DE MIGUEL, VICTOR','BADAJOZ','924493335',3),('11844272','KAISSI CHERRIB, LAMIA','BADAJOZ','924493336',4),('11845343','GIGORRO CUBERO, IZASKUN','BADAJOZ','924493337',5),('11849578','ROJAS GARCIA, MARTA','BADAJOZ','924493338',5),('11850727','SANCHEZ RUIZ, MARTA','BADAJOZ','924493339',5),('11850969','JARDON MENDEZ, MANUEL LEOPOLDO','BADAJOZ','924493340',5),('11851761','CRISTINA FERNANDEZ, ROBERTO','BADAJOZ','924493341',4),('11852345','ALONSO MUÑOZ, ALEJANDRO','BADAJOZ','924493342',4),('14308556','COLINA MORA, ANGEL','BADAJOZ','924493343',3),('1932986','MUÑOZ SANCHEZ, DAVID','BADAJOZ','924493344',2),('1933685','COBO LENDINEZ, JUAN ANTONIO','BADAJOZ','924493345',2),('1937101','ALONSO GARCIA, JESUS','BADAJOZ','924493346',2),('2238233','COBOS MARTIN, ANA BELEN','BADAJOZ','924493347',2),('2263918','GARCIA BALLESTEROS, MYRIAM','BADAJOZ','924493348',2),('2267650','ARIAS ESCOLAR, MARI CARMEN','BADAJOZ','924493349',2),('2269028','MOLINERO RODRIGUEZ, FERNANDO',NULL,'924493350',2),('2270188','LOPEZ GIL, CRISTINA','BADAJOZ','924493351',2),('2271897','CARRASCO GAMEZ, FRANCISCO JAVIER','BADAJOZ','924493352',1),('2272581','RODRIGUEZ MERINERO, MARTA','BADAJOZ','924493353',1),('2276630','GALAN DOMINGUEZ, DIANA','BADAJOZ','924493354',2),('2276800','SALAS FERNANDEZ, CLARA','BADAJOZ','924493355',3),('2277835','BONILLA PINTADO, PATRICIA','BADAJOZ','924493356',4),('2278639','LANDETE MANTEROLA, JAVIER','BADAJOZ','924493357',5),('2282590','TORRICO PORTERO, PAULA','BADAJOZ','924493358',5),('2283491','RIVAS CARRASCO, EDUARDO','BADAJOZ','924493359',5),('2284256','PLAZA NAVAS, ROCIO','BADAJOZ','924493360',5),('2647631','SOBRADO PANIAGUA, SARA','BADAJOZ','924493361',4),('2649085','MALAGON GOMEZ, DAVID','BADAJOZ','924493362',4),('2659710','GARCIA VOCES, JUAN PEDRO','BADAJOZ','924493363',3),('2666680','PEREZ SANCHEZ, MARIA JESUS','BADAJOZ','924493364',2),('2667675','NAVARRO CABEZAS, MARIA IMILCE','BADAJOZ','924493365',2),('2668273','MERINO ESPINOSA, ROCIO','BADAJOZ','924493366',2),('2669111','LEAL ALCOCER, ALEJANDRO','BADAJOZ','924493367',2),('2669560','CHEN LIN, LIJUN','BADAJOZ','924493368',2),('2669749','MARCOS TEJADA, RODRIGO','BADAJOZ','924493369',2),('2670956','GANDARA VALVERDE, CARLOS EUFRASIO','BADAJOZ','924493370',1),('30745766','DIEZ SANCHEZ, JORGE','BADAJOZ','924493371',1),('3093893','BASCO ANTONA, EVA','BADAJOZ','924493372',2),('32703586','SERRANO BLANCO, LORETO','BADAJOZ','924493373',3),('33523948','DIMITROVA METCHKAROVA, GUERGANA','BADAJOZ','924493374',4),('36106722','HORRILLO SANCHEZ -OCA\\\\A, CARLOS',NULL,'924493375',5),('3867773','JIMENEZ CAMPOS, TERESA','BADAJOZ','924493376',5),('3877296','GARAYALDE LOPEZ, MIREN ELISABET','BADAJOZ','924493377',5),('3888843','MARIN CHICHARRO, LAURA','BADAJOZ','924493378',5),('3897830','CAMPO ARRANZ, RAQUEL','BADAJOZ','924493379',4),('3898800','FERNANDEZ DE CORDOBA GOMEZ, ANA CRISTINA','BADAJOZ','924493380',4),('3899484','SUAREZ GONZALEZ, LAURA','BADAJOZ','924493381',3),('3900635','MARIN LANCHA, RUBEN','BADAJOZ','924493382',2),('3904537','ATANASIO JIMENEZ, NURIA','BADAJOZ','924493383',2),('3904786','ROLDAN RODRIGUEZ, MARIA DEL CARMEN','BADAJOZ','924493384',2),('3905226','SERRANO AVILA, BEATRIZ','BADAJOZ','924493385',2),('3905411','GARCIA LOPEZ, ELENA','BADAJOZ','924493386',2),('3907718','QUINTANA GARCIA, MIGUEL ANGEL','BADAJOZ','924493387',2),('3907803','GUTIERREZ LLORENTE, MA DEL CARMEN','BADAJOZ','924493388',2),('4213464','REYES DE FRUTOS, ESTHER','BADAJOZ','924493389',2),('4214130','LEON RODRIGUEZ, BEGOÑA DE','BADAJOZ','924493390',1),('4216552','SEVILLA SANTIAGO, INES','BADAJOZ','924493391',1),('4216993','ALONSO NICOLAS, CRISTINA','BADAJOZ','924493392',2),('43125083','BAENA MEDINA, MARIA CARMEN','MERIDA','924493393',3),('46841117','TORRES AGUILERA, EDUARDO','MERIDA','924493394',4),('46845978','JIMENEZ SUAREZ, ALBERTO','MERIDA','924493395',5),('46851690','MENGUEZ MURCIANO, DAVID','MERIDA','924493396',5),('46922311','COLOMO GOMEZ, MARCIAL','MERIDA','924493397',5),('46924533','TORREÑO CARRERA, JUAN ANTONIO','MERIDA','924493398',5),('46925960','CUADRADO GUTIERREZ, LORENA','MERIDA','924493399',4),('46928330','RODRIGUEZ MOGOLLON, SILVIA','MERIDA','924493400',4),('46928725','LOPEZ DIAZ, VANESA','MERIDA','924493401',3),('46938891','CORDON HORNILLOS, SARA','MERIDA','924493402',2),('47024986','JUNCO MOLPECERES, RAMON','MERIDA','924493403',2),('47031921','ARROYO NOBLEJAS, MARIA LUISA','MERIDA','924493404',2),('47034100','VILCHES SERRANO, ALFONSO','MERIDA','924493405',2),('47034404','MOLINA GOMEZ, DANIEL','MERIDA','924493406',2),('47035769','MUÑOZ MUÑOZ, SARA',NULL,'924493407',2),('47042006','ROL OLIVER, GLORIA','ZAFRA','924493408',2),('47042385','GRANJA ROCA, ALBA','ZAFRA','924493409',2),('47042399','GALLEGO RODRIGUEZ, RAQUEL','ZAFRA','924493410',1),('47044073','LOPEZ ALAEZ, SARAY','ZAFRA','924493411',1),('47045618','DOMINGUEZ RUBIO, BEGOÑA','ZAFRA','924493412',2),('47046526','VARA PEREZ, BERTA','ZAFRA','924493413',3),('47046930','BLANCO MURILLO, CRISTINA','ZAFRA','924493414',4),('47047937','ALBILLO ARRIBAS, JOSE IGNACIO','ZAFRA','924493415',5),('47049228','SIMON LOPEZ, MARIA','ZAFRA','924493416',5),('47049316','RAMIREZ SIERRA, MARIA','ZAFRA','924493417',5),('47049392','LOPEZ DE LA VIEJA NUÑEZ, MARTA','ZAFRA','924493418',5),('47217990','CUESTA SANCHEZ, FRANCISCO','ZAFRA','924493419',4),('47220902','LOPEZ TOURON, VANESSA','ZAFRA','924493420',4),('47280013','RODRIGUEZ MORENO, JOSE ANGEL','ZAFRA','924493421',3),('47301118','PRIETO MURILLO, JOSE CARLOS','ZAFRA','924493422',2),('47302239','BENAYAS NIETO, BEATRIZ','ZAFRA','924493423',2),('47450428','GUARIDO RINCON, ALEJANDRO','ZAFRA','924493424',2),('47456054','ENCINAS ORTIZ, CRISTINA','ZAFRA','924493425',2),('47456601','CUMPLIDO JIMENEZ, M. ESMERALDA','ZAFRA','924493426',2),('47457503','YEBENES CALVINO, M. DEL MAR','ZAFRA','924493427',2),('47457939','CARO RODRIGUEZ, MIGUEL ANGEL','ZAFRA','924493428',2),('47458251','RODAS YLLATOPA, JAKELIN','ZAFRA','924493429',2),('47458460','GONZALEZ GARCIA, EDUARDO','ZAFRA','924493430',1),('47458552','LOPEZ TUDELA, LAURA','ZAFRA','924493431',1),('47458849','MONTES VILLASEVIL, MIRIAM','ZAFRA','924493432',2),('47459361','ONRAITA CACHAFEIRO, MARIA INES','ZAFRA','924493433',3),('47460015','MANUEL PEDROSA, NOELIA DE','ZAFRA','924493434',4),('47491189','BENITO GARCIA, MIGUEL','ZAFRA','924493435',5),('47495786','PAJARES PALMA, BLANCA','ZAFRA','924493436',5),('47496281','MARTIN MORA, ADRIAN','ZAFRA','924493437',5),('47497218','HERRANZ FERNANDEZ, ALICIA','ZAFRA','924493438',5),('47499160','LOZANO SANCHEZ, DAVID','ZAFRA','924493439',4),('48997059','POS SANCHEZ, CAROLINA','ZAFRA','924493440',4),('48997274','SANCHEZ LAHUERTA, JOSE MANUEL','ZAFRA','924493441',3),('49003272','ALGABA DIEZ, NURIA','ZAFRA','924493442',2),('49003605','SANCHEZ ALCARAZ, ALMUDENA','ZAFRA','924493443',2),('49004517','VALDES MARTIN, EVA','ZAFRA','924493444',2),('49004747','GUTIERREZ TABLADO, RAQUEL','ZAFRA','924493445',2),('49005132','PINEDO VARA, CARLOS','ZAFRA','924493446',2),('49006338','GONZALEZ DELGADO, MARCOS','ZAFRA','924493447',2),('49011941','GARCIA SANCHEZ, PABLO','ZAFRA','924493448',2),('49013123','DIAZ HERNANDEZ, ANGEL JULIAN','ZAFRA','924493449',2),('49013614','APARICIO MORENILLA, RAQUEL','ZAFRA','924493450',5),('49013775','MARTINEZ GUARDIA, DAVID','ZAFRA','924493451',5),('49013815','GAYOL PINTADO, JAVIER','ZAFRA','924493452',4),('49013889','DOMINGUEZ GARCIA, IRENE','ZAFRA','924493453',4),('49013944','HERNANDEZ MATUTE, JORGE','ZAFRA','924493454',3),('49014316','ARRIBAS RODRIGUEZ, DIANA','ZAFRA','924493455',2),('49015728','PEREIRA MORENA, CAROLINA','ZAFRA','924493456',2),('49016849','PESCADOR SANCHEZ, ANA ISABEL','ZAFRA','924493457',2),('49017419','GALLARDO SANCHEZ, Mª CARMEN','ZAFRA','924493458',2),('49017896','MARTIN DIAZ, ANA M.','ZAFRA','924493459',2),('49018965','BORONDO COBO, ANTONIO','ZAFRA','924493460',2),('49020051','PEREZ LOPEZ, RICARDO','ZAFRA','924493461',2),('50107211','GONZALEZ PARRA, JESUS','ZAFRA','924493462',2),('50113980','NEVARES MORENO, MARIO','ZAFRA','924493463',1),('50117251','CHIAS MARCHIANDI, PALOMA','ZAFRA','924493464',1),('50119480','TORNOS YEBES, JESSICA','ZAFRA','924493465',2),('50127926','GUTIERREZ GARCIA, PATRICIA','ZAFRA','924493466',3),('50128111','HERNANDEZ CASTILLA, VERONICA','ZAFRA','924493467',4),('50128158','ROMERA ALVAREZ, M. ROSARIO','ZAFRA','924493468',5),('50129298','DIAZ GONZALEZ, MARCOS','ZAFRA','924493469',5),('50129650','YUSTE JIMENEZ, DAVID','ZAFRA','924493470',5),('50211749','RODRIGUEZ DE VICENTE, ALFREDO','ZAFRA','924493471',5),('50218486','GONZALEZ MARTIN, SARA','ZAFRA','924493472',4),('50220753','MARTIN NIETO, BELEN','ZAFRA','924493473',4),('50221127','MERINO ALVAREZ, DAVID','ZAFRA','924493474',3),('50221454','ORELLANA MORILLAS, JOSE LUIS','ZAFRA','924493475',2),('50221778','DIAZ PAGE, ARTURO ANGEL','ZAFRA','924493476',2),('50222200','HERRANZ DIAZ, RAQUEL','ZAFRA','924493477',2),('50222579','SANCHEZ FERNANDEZ, ELENA','ZAFRA','924493478',2),('50222877','BARREIROS GARCIA, PILAR','ZAFRA','924493479',2),('50224174','SANZ ARCAS, MARIA ELENA','ZAFRA','924493480',2),('50318962','SISON MENA, ELENA','ZAFRA','924493481',2),('50323408','CRESPO NUÑEZ, DAVID','ZAFRA','924493482',2),('50443489','PEÑUELAS FERNANDEZ, LUIS','ZAFRA','924493483',5),('50466830','LOPEZ YUSTA, M TERESA','ZAFRA','924493484',5),('50542633','VALADES FERNANDEZ, LAURA','ZAFRA','924493485',4),('50542635','MONTERO MARTIN, ARACELI','ZAFRA','924493486',4),('50543536','SANTO TOMAS AGULLO, LUIS','ZAFRA','924493487',3),('50543825','LOZOYA NOMBELA, M.DEL SAGRARIO DE','ZAFRA','924493488',2),('50543951','ALVAREZ BERMEJO, JOSE','ZAFRA','924493489',2),('50733568','VICENTE ROSA, ANA MARIA','ZAFRA','924493490',2),('50739304','VILLAR SAEZ, JESUS','ZAFRA','924493491',2),('50741553','GARCIA MEDINA, NURIA','ZAFRA','924493492',2),('50741554','GARCIA SANCHEZ, ANTONIO','ZAFRA','924493493',2),('50749620','DOMINGUEZ SAIZ, CAROLINA','ZAFRA','924493494',2),('50751029','JUAN MUÑOZ, IVAN','ZAFRA','924493495',2),('50752579','PEÑA LOPEZ, MARIA TERESA','ZAFRA','924493496',1),('50753061','LOPEZ LANCHO, ANA MARIA','ZAFRA','924493497',1),('50754253','CABELLO GUTIERREZ, TANIA','ZAFRA','924493498',2),('50755331','HERNANDEZ PEREZ, SARA','ZAFRA','924493499',3),('50755563','GARROTE SANCHEZ, DANIEL','ZAFRA','924493500',4),('50755712','SANCHEZ CISNEROS, PEDRO','ZAFRA','924493501',5),('50755775','GIL TOLMO, CRISTINA','ZAFRA','924493502',5),('50756221','FERNANDEZ GARCIA-OCHOA, SANTIAGO','ZAFRA','924493503',5),('50868738','CALLAU ZORI, MARIA DEL MAR','ZAFRA','924493504',5),('50875209','PASTOR CAMPOS, MARIA DEL MAR','ZAFRA','924493505',4),('50880732','FERNANDEZ HERREROS, ANA','ZAFRA','924493506',4),('50884239','FLORES BARRERO, NURIA','ZAFRA','924493507',3),('50885221','PEREZ MARTINEZ, SERGIO','ZAFRA','924493508',2),('50885336','GUILLEN ALONSO, OSCAR','ZAFRA','924493509',2),('50885927','ALBA RODRIGUEZ, DAVID','ZAFRA','924493510',2),('50886453','SAEZ RAMOS, GUADALUPE','ZAFRA','924493511',2),('50886959','SANCHEZ MORENO, MIGUEL ANGEL','ZAFRA','924493512',2),('50887483','CARRION MARTINEZ, MIRIAM','ZAFRA','924493513',2),('50888252','AGUILAR GONZALEZ, SALVADOR R','ZAFRA','924493514',2),('50891348','CASTRO MULAS, MARTA','ZAFRA','924493515',2),('51076828','FERNANDEZ CASTELLANO, ISMAEL','ZAFRA','924493516',5),('51083987','LIBRAN FRAILE, ISABEL','ZAFRA','924493517',5),('51087952','ORTEGA ARRANZ, CARLOS','ZAFRA','924493518',4),('51093870','REVILLA HERRANZ, VIRGINIA','ZAFRA','924493519',4),('51096901','HIDALGO BLAZQUEZ, VICTOR MANUEL','ZAFRA','924493520',3),('51097958','RODRIGUEZ GIL-ORTEGA, MARIA ISABEL','ZAFRA','924493521',2),('51449111','GUERRERO DURANGO, ANGEL','ZAFRA','924493522',2),('51455418','TENA COBOS, ESTHER','ZAFRA','924493523',2),('51457246','DIAZ HERNANDEZ, RAUL','ZAFRA','924493524',2),('51457720','CONDE RODRIGUEZ, MANUEL','ZAFRA','924493525',2),('51458752','GORDO TAEÑO, VICTOR','ZAFRA','924493526',2),('51458893','MANCHON PEREZ, ELENA','ZAFRA','924493527',2),('51927823','MARTIN PERALTA, CRISTINA','ZAFRA','924493528',2),('51985756','BOCERO CRUZ, MONICA','ZAFRA','924493529',1),('52107712','GONZALEZ TRABADO, ANA','ZAFRA','924493530',1),('52355704','PUERTO MOYA, ISABEL DEL','ZAFRA','924493531',2),('52860180','RAMOS MOÑINO, GUADALUPE','ZAFRA','924493532',3),('52887513','ABAD ROBLES, ARANZAZU','ZAFRA','924493533',4),('52959160','SANCHEZ RUIZ, LAURA','ZAFRA','924493534',5),('52964122','MARCOS MAYORDOMO, JAVIER','ZAFRA','924493535',5),('52975621','PASTRANA PORTILLO, DANIEL','ZAFRA','924493536',5),('52978402','FORONDA DELGADO, ALBERTO','ZAFRA','924493537',5),('52980097','GUO , XIAOLI','ZAFRA','924493538',4),('52980664','PRAENA SANCHEZ, JONATHAN','ZAFRA','924493539',4),('52984948','PEREZ SANCHEZ, MARTA JULIA','ZAFRA','924493540',3),('52997923','MOZAS VOZMEDIANO, PATRICIA','ZAFRA','924493541',2),('52999706','OSPINA TOVAR, JAIME EDUARDO','ZAFRA','924493542',2),('52999879','TALAVERA MARTIN, FRANCISCO JAVIER','ZAFRA','924493543',2),('53022980','GONZALEZ MARTIN, BEATRIZ','ZAFRA','924493544',2),('53047850','VINUESA GOMEZ, LAURA','ZAFRA','924493545',2),('53049672','LOPEZ DEL AMO, SONIA','ZAFRA','924493546',2),('53105927','ESTANGUI SANCHEZ ESCRIBANO, SONIA','ZAFRA','924493547',2),('53132863','GOMEZ DIAZ, M. DEL CAMINO','ZAFRA','924493548',2),('53134085','SAUCE GUERRA, SERGIO','ZAFRA','924493549',5),('53137477','RUEDAS SANCHEZ, ANGEL','ZAFRA','924493550',5),('53386548','GARCIA DE LA TORRE, TERESA','ZAFRA','924493551',4),('53389834','SALVADOR GARCIA, JOSE PABLO','ZAFRA','924493552',4),('53389853','NEVADO ZURITA, JOSE','ZAFRA','924493553',3),('53390061','CASTELLANOS SANCHEZ, LETICIA','ZAFRA','924493554',2),('53392543','GARCIA BARARADO, JAVIER','ZAFRA','924493555',2),('53416739','MADRIGAL VICENTE, AZUCENA','ZAFRA','924493556',2),('53417961','CAMPILLO RODRIGUEZ, SILVIA','ZAFRA','924493557',2),('53418213','VILLASEÑOR ROMAN, MARIA NIEVES','ZAFRA','924493558',2),('53418326','GUTIERREZ GONZALEZ, ANA VICTORIA','ZAFRA','924493559',2),('53419163','MANCHON MUÑOZ, BEGOÑA','ZAFRA','924493560',2),('53419959','GUILLEN ALVAREZ, FERNANDO','ZAFRA','924493561',2),('53420473','TORRE CABRERO, DELIA ANA','ZAFRA','924493562',1),('53422123','RUIZ PORTANOVA, NOELIA','ZAFRA','924493563',1),('53422257','HERRAEZ PEREZ, SARA','ZAFRA','924493564',2),('53422330','MUÑOZ PEÑA, PABLO','ZAFRA','924493565',3),('53423041','HERRAIZ SALAN, ANGEL','ZAFRA','924493566',4),('53423243','VIERA ROMERAL, JUAN JOSE','ZAFRA','924493567',5),('53423313','JIMENEZ RODRIGUEZ, BORIS','ZAFRA','924493568',5),('53423815','RODRIGUEZ BENITO, ANGELINA',NULL,'924493569',5),('53423817','GARCIA MANCHA, NOELIA','VILLAFRANCA','924493570',5),('53423916','PALENCIA LOPEZ, RAUL','VILLAFRANCA','924493571',4),('53424700','RODRIGUEZ PANDO, BARBARA','VILLAFRANCA','924493572',4),('53425387','ARSUAGA BENITO, M. ELENA','VILLAFRANCA','924493573',3),('53428006','VALENZUELA GONZALEZ, ARANZAZU','VILLAFRANCA','924493574',2),('53431089','ARROYO NIETO, DAVID','VILLAFRANCA','924493575',2),('53432616','VELAZQUEZ JARILLO, AGUSTIN','VILLAFRANCA','924493576',2),('53433387','GARRIDO EGEA, JUAN','VILLAFRANCA','924493577',2),('53434567','HERMIDA AYALA, LOURDES A','VILLAFRANCA','924493578',2),('53442156','LOPEZ OLIVARES, PABLO','VILLAFRANCA','924493579',2),('53446287','CHICA ARROYO, JAVIER','VILLAFRANCA','924493580',2),('53446583','PEREZ MARINA, ANGEL ARTURO','VILLAFRANCA','924493581',2),('53446663','FERNANDEZ SANCHEZ, LIDIA',NULL,'924493582',5),('53446822','FERNANDEZ LAMERA, LUCIA','VILLAFRANCA','924493583',5),('53446893','ROMERO HUERTAS, CESAR','VILLAFRANCA','924493584',4),('53446947','ALONSO MARTIN, FERNANDO','VILLAFRANCA','924493585',4),('53447056','SANCHEZ BELLON, ELENA','VILLAFRANCA','924493586',3),('53447071','MUÑOZ MEJIAS, DAVID','VILLAFRANCA','924493587',2),('53447680','GARCIA LOPEZ, SANTIAGO','VILLAFRANCA','924493588',2),('53448199','FERNANDEZ SANCHEZ, MANUEL','VILLAFRANCA','924493589',2),('53448494','GONZALEZ GOMEZ, SILVIA',NULL,'924493590',2),('53448818','ALONSO MAÑAS, OSCAR','ACEUCHAL','924493591',2),('53449882','HERNANDEZ RODRIGUEZ, JAIME','ACEUCHAL','924493592',2),('53450152','SANCHEZ ESQUIVIAS, MARIA','ACEUCHAL','924493593',2),('53450600','BLANCO MORO, LIDIA MARIA','ACEUCHAL','924493594',2),('53450717','ROJO RAYO, MARIA GLORIA','ACEUCHAL','924493595',1),('53450747','PEREZ ORTEGA, ANDRES','ACEUCHAL','924493596',1),('53451001','MANRIQUE DE LARA FERNANDEZ, MIGUEL','ACEUCHAL','924493597',2),('53451123','MARTIN MARTINEZ, CARLOS','ACEUCHAL','924493598',3),('53452083','ESCAMILLA PADILLA, JAVIER','ACEUCHAL','924493599',4),('53453335','MANSILLA GARCIA, LUIS','ACEUCHAL','924493600',5),('53453665','MORENO ROMERO, VERONICA','ACEUCHAL','924493601',5),('53460755','GOMEZ-ALVAREZ DOMINGUEZ, MARIA CARMEN','ACEUCHAL','924493602',5),('53461159','ALHAMBRA FERNANDEZ, GEMMA','ACEUCHAL','924493603',5),('53461178','LASHERAS ROMERO, ALEJANDRO','ACEUCHAL','924493604',4),('53461338','MARTIN CANES, RAUL','ACEUCHAL','924493605',4),('53462493','SAEZ ESPERANZA, RUTH','ACEUCHAL','924493606',3),('53462871','DUATO NAVARRO, RAMON','ACEUCHAL','924493607',2),('53463340','SALAMANCA FELIX, ZAIDA','ACEUCHAL','924493608',2),('53464562','CARRETERO PIRES, ANA',NULL,'924493609',2),('53464701','ESCRIBANO ARIAS, BEATRIZ','DON BENITO','924493610',2),('53465947','CALSO GONZALEZ, ANGEL','DON BENITO','924493611',2),('53490626','SANCHEZ VAQUERIZO, TANIA MARAVILLAS','DON BENITO','924493612',2),('5422989','SANZ RUBIO, PABLO','BADAJOZ','924493613',2),('6573699','GARCIA LOBIT, SARA','BADAJOZ','924493614',2),('70056580','RODRIGUEZ VEGA, VERONICA','DON BENITO','924493615',5),('70059204','BATANERO OCHAITA, M. CONCEPCION','DON BENITO','924493616',5),('70060073','ARRIBAS RAMOS, ESTEFANIA','DON BENITO','924493617',4),('70063468','GIRON MARTIN, MARIO','DON BENITO','924493618',4),('70245204','GONZALEZ GARCIA, MARIA','DON BENITO','924493619',3),('70245815','GARRIDO GARCIA, MARIA','DON BENITO','924493620',2),('70250031','LUACES FEIJOO, TAMARA','DON BENITO','924493621',2),('70254462','CHEN , YUANJIE','DON BENITO','924493622',2),('71277949','SIERRA GONZALEZ, MARIA','DON BENITO','924493623',2),('71431342','CENTENO GONZALEZ, ELENA','DON BENITO','924493624',2),('71442335','DIAZ PANIAGUA, ELENA','DON BENITO','924493625',2),('71506039','NUÑEZ NUÑEZ, ESTEFANIA',NULL,'924493626',2),('71517440','FERNANDEZ HURTADO DE MENDOZA, TAMARA','DON BENITO','924493627',2),('71517910','JIMENEZ JIMENEZ, BEATRIZ','DON BENITO','924493628',1),('7244258','MARTIN MARTINEZ, VANESA','BADAJOZ','924493629',1),('72886268','RODRIGUEZ DE PABLO, CRISTINA','DON BENITO','924493630',2),('74515243','TAYLOR ARIAS, ROCIO','DON BENITO','924493631',3),('74933254','SUAREZ DE SOUSA, CANDELAS','DON BENITO','924493632',4),('75774199','AVILES AVILES, JESUS','DON BENITO','924493633',5),('76019529','FAJARDO ROMAN, PATRICIA','DON BENITO','924493634',5),('76123032','RIO ALVAREZ, SARA DEL','DON BENITO','924493635',5),('76123615','GARCIA MANRIQUE, PATRICIA','DON BENITO','924493636',5),('76730681','GONZALEZ DE LA CUERDA, MARIA','DON BENITO','924493637',4),('77335978','MARTINEZ GONZALEZ, ANGELICA',NULL,'924493638',4),('7960007','CARO ECHEGARAY, RAUL','BADAJOZ','924493639',3),('8042400','GOMEZ DOMINGUEZ, ADORACION','BADAJOZ','924493640',2),('9001990','CARRASCO GONZALEZ, CARLOS','BADAJOZ','924493641',2),('9036331','ARRIAGA SANDOVAL, MARIA JOSE','BADAJOZ','924493642',2),('9039942','HERNANDEZ BRAVO, SOLEDAD','BADAJOZ','924493643',2),('9191786','ABELLA BULE, ISABEL','BADAJOZ','924493644',2),('9456432','MELLADO GONZALEZ, ANTONIO','BADAJOZ','924493645',2),('9457570','CASTIÑEIRA ROMERO, NIEVES','BADAJOZ','924493646',2);
/*!40000 ALTER TABLE `opositores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tribunales`
--

DROP TABLE IF EXISTS `tribunales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tribunales` (
  `CODIGOTRIBUNAL` tinyint(4) NOT NULL DEFAULT '0',
  `PRESIDENTE` varchar(50) DEFAULT NULL,
  `SECRETARIO` varchar(50) DEFAULT NULL,
  `VOCAL1` varchar(50) DEFAULT NULL,
  `VOCAL2` varchar(50) DEFAULT NULL,
  `VOCAL3` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CODIGOTRIBUNAL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tribunales`
--

LOCK TABLES `tribunales` WRITE;
/*!40000 ALTER TABLE `tribunales` DISABLE KEYS */;
INSERT INTO `tribunales` VALUES (1,'PEDRO FERNANDEZ','ISABEL FRESNEDA','LUIS MERLO','ANTONIO ROBLES','VICENTE ROBLES'),(2,'ANA LIMA','TOMAS RODRIGUEZ','ROCIO CINTIA','MODESTA HERMOSO','JUAN ARGUETA'),(3,'PEDRO MUOZ','ANTONIO JESUS MUÑIOZ','EVA MATA','MONTSERRAT ISAMA','RUBEN BLADES'),(4,'JOAQUIN TENA','MANOLO SABINA','ANA CIMA','VICTOR FUENTES','MIGUEL RIOS'),(5,'MATIAS PRATS','FEDERICO JIMENEZ','IÑAQUI ASEUTUNA','LUIS DEL OLMO','EVA LATEX');
/*!40000 ALTER TABLE `tribunales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `departamentos`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `departamentos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;

USE `departamentos`;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamentos` (
  `NumeroDepartamento` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) DEFAULT NULL,
  `Presupuesto` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`NumeroDepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'Nóminas',12000.00),(2,'Personal',10000.00),(3,'Informática',24000.00),(4,'Administración',2999.00);
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `NumeroEmpleado` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) DEFAULT NULL,
  `Salario` decimal(8,2) DEFAULT NULL,
  `Comision` decimal(8,2) DEFAULT NULL,
  `Departamento` int(11) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Telefono` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`NumeroEmpleado`),
  KEY `FK_DEP` (`Departamento`),
  CONSTRAINT `FK_DEP` FOREIGN KEY (`Departamento`) REFERENCES `departamentos` (`numerodepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Luis Salas',1000.00,501.00,1,'luis@gmail.com','33333'),(2,'Carlos Sainz',2000.00,200.00,2,'carlos@gmail.com','44444'),(3,'Eva Hache',1000.00,100.00,2,'eva@gmail.com','333332'),(4,'Faemino Cansado',2100.00,550.00,3,'faemino@gmail.com','23423'),(5,'Goyo Jiménez',3000.00,200.00,4,'goyo@gmail.com','2342343'),(6,'Dani Rovira',NULL,NULL,NULL,'rovira@gmail.com','383838'),(7,'Enrique Saenz',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-14 17:38:54


-- Funciones de fecha y hora.
-- 1. Mostrar la fecha y hora actuales.
 SELECT NOW();
 

-- 2. Mostrar la diferencia de días entre la fecha actual y el 10 de septiembre de 2016.
SELECT DATEDIFF(CURDATE(), '2016-09-10');  -- Con DATEDIFF  se utiliza para calcular la diferencia entre dos fechas, 
-- (CURDATE() fecha de referencia , seria '2016-09-10'
--------------------------------------------------------------------
-- now(): fecha y hora actual.
-- curdate() / current_date(): solo la fecha actual.
-- current_time() / curtime(): solo la hora actual.
--------------------------------------------------------------------
-- 3. Obtener por separado, día, mes y año de la fecha actual.

SELECT DAY(CURDATE()), MONTH(CURDATE()), YEAR(CURDATE()) ;

-- 4. Mostrar la fecha actual y el año de esa fecha. 
SELECT NOW(), year(now());

# 4.1 Formatear la fecha actual en Español

SELECT date_format(current_date(), "%d/%m/%Y");

-- Funciones de texto
-- 5. Obtener el nombre de cada empleado y su número de caracteres (longitud de la cadena).
use departamentos;
SELECT Nombre, LENGTH(Nombre) AS LongitudNombre
FROM empleados;


-- 6. Mostrar “nombre de empleado-número de departamento”.
use jardineria;
SELECT CONCAT_WS("-", Nombre, Puesto) FROM Empleados;

-- 7. Devuelve para cada empleado “Mayor que 1000” o “Menor o igual que 1000” en función de su salario.

USE departamentos;
SELECT 	Nombre, if(Salario > 1000, "Mayor que 1000", "Menor o igual que 1000") FROM empleados;


-- Funciones numéricas.
-- 8. Muestra el salario de cada empleado dividido entre 3, con solo dos decimales y el
-- mismo valor redondeado.

SELECT Salario, round(Salario/3, 2) as Tercio, round(Salario/3) as Tercio1
FROM empleados;
-- round(Salario/3, 2) con round nos redondea, pero le estamos diciendo tambien que nos divida el salario en 3 y nos 
-- redondee a dos decimales.
-- y tambien que nos divida el salario pero sin redondear decimales 
