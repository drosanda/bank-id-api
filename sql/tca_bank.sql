-- MariaDB dump 10.17  Distrib 10.4.11-MariaDB, for osx10.10 (x86_64)
--
-- Host: localhost    Database: tca_bank
-- ------------------------------------------------------
-- Server version	10.4.11-MariaDB

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
-- Table structure for table `a_bank`
--

DROP TABLE IF EXISTS `a_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_bank` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(51) DEFAULT NULL,
  `kode` varchar(3) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `alamat` varchar(128) DEFAULT NULL,
  `telp` varchar(41) DEFAULT NULL,
  `fax` varchar(51) DEFAULT NULL,
  `website` varchar(33) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COMMENT='bank list source ojk 2021';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_bank`
--

LOCK TABLES `a_bank` WRITE;
/*!40000 ALTER TABLE `a_bank` DISABLE KEYS */;
INSERT INTO `a_bank` VALUES (1,'BANK UMUM PERSERO','002','PT BANK RAKYAT INDONESIA (PERSERO) Tbk','Jl. Jend. Sudirman Kav. 44-46, Jakarta 10210','(021) 2510244, 2510254, 2510269-264','Fax : (021) 2500077, 2500065','www.bri.co.id'),(2,'BANK UMUM PERSERO','008','PT BANK MANDIRI (PERSERO) Tbk','Plaza Mandiri, Jl. Gatot Subroto Kav. 36-38, Jakarta 12190','(021) 5245006, 5245858, 5245849, 52997777','Fax : (021) 5263459, 5263460, 5268246, 52997735','www.bankmandiri.co.id'),(3,'BANK UMUM PERSERO','008','PT BANK NEGARA INDONESIA (PERSERO) Tbk','Jl. Jend. Sudirman Kav. 1, Jakarta 10220','(021) 2511218-19-20-22-24-25-26-29','Fax : (021) 2511221, 5709506','www.bni.co.id'),(4,'BANK UMUM PERSERO','200','PT BANK TABUNGAN NEGARA (PERSERO) Tbk','Gedung Menara BTN, Jl. Gajah Mada No. 1, Jakarta 10130','(021) 2310490, 6336789, 26533555','Fax : (021) 6346704','www.btn.co.id'),(5,'BANK UMUM SWASTA NASIONAL','011','PT BANK DANAMON INDONESIA Tbk','Menara Bank Danamon, Jl. HR. Rasuna Said Blok C No. 10, Karet Setiabudi, Jakarta Selatan 12940','(021) 8064 5000','Fax :�(021) 80645033','www.danamon.co.id'),(6,'BANK UMUM SWASTA NASIONAL','013','PT BANK PERMATA Tbk','Gedung World Trade Center (WTC) II, Jl. Jend. Sudirman Kav. 29-31 Jakarta 12920','(021) 5237788','Fax : (021) 5237253','www.permatabank.com'),(7,'BANK UMUM SWASTA NASIONAL','014','PT BANK CENTRAL ASIA Tbk','Menara BCA, Grand Indonesia Jl. M.H Thamrin No. 1, Jakarta 10310','(021) 2358-8000','Fax : (021) 2358-8300','www.bca.co.id'),(8,'BANK UMUM SWASTA NASIONAL','016','PT BANK MAYBANK �INDONESIA Tbk','Gedung Sentral Senayan 3, Lt. 26, Jl. Asia Afrika No. 8, Gelora Bung Karno - Senayan, Jakarta Pusat 10270','(021) 29228888','Fax : (021) 29228914','www.maybank.co.id'),(9,'BANK UMUM SWASTA NASIONAL','019','PT PAN INDONESIA BANK Tbk','Panin Bank Centre, Jl. Jend. Sudirman Kav. 1 (Senayan), Jakarta 10270','(021) 2700545 (10 lines)','Fax : (021) 2700340, 2700391','www.panin.co.id'),(10,'BANK UMUM SWASTA NASIONAL','022','PT BANK CIMB NIAGA Tbk','Graha Niaga / Niaga Tower Jl. Jend. Sudirman Kav. 58, Jakarta 12190','(021) 2505151, 2505252, 2505353','Fax : (021) 2505202, 2505205','www.cimbniaga.com'),(11,'BANK UMUM SWASTA NASIONAL','023','PT BANK UOB INDONESIA','Gedung UOB Plaza, Jl. M.H. Thamrin No. 10 Jakarta 10230','(021) 23506000','Fax : (021) 29936632','www.uob.co.id'),(12,'BANK UMUM SWASTA NASIONAL','028','PT BANK OCBC NISP Tbk','OCBC NISP Tower, Jl. Prof.Dr. Satrio Kav. 25, Jakarta Selatan 12950','(021) 25533888','Fax : (021) 57944000','www.ocbcnisp.com'),(13,'BANK UMUM SWASTA NASIONAL','037','PT BANK ARTHA GRAHA INTERNASIONAL Tbk','Gedung Arha Graha, Lt. 5, Jl. Sudirman Kav. 52-53, Senayan, Jakarta 12190','(021) 5711095, 5152168','Fax : (021) 5711084','www.arthagraha.com'),(14,'BANK UMUM SWASTA NASIONAL','076','PT BANK BUMI ARTA Tbk','Jl. KH. Wahid Hasyim No. 234, Jakarta 10250','(021) 2300893, 2300455','Fax : (021) 3102632, 325291, 2303624','www.bankbba.co.id'),(15,'BANK UMUM SWASTA NASIONAL','087','PT BANK HSBC INDONESIA','World Trade Centre 1, Lt.3 Jl. Jend Sudirman Kav. 29-31, Karet Kuningan, Setiabudi, Jakarta Selatan 12920','(021) 25514777','Fax : (021) 52961015','www.hsbc.co.id'),(16,'BANK UMUM SWASTA NASIONAL','095','PT BANK JTRUST INDONESIA Tbk','Gedung Sahid Sudirman Center Lt. 33 Jl. Sudirman No. 86, Jakarta Pusat 10220','(021) 29261111(HUNTING)','Fax : (021) 5224670','www.jtrustbank.co.id'),(17,'BANK UMUM SWASTA NASIONAL','097','PT BANK MAYAPADA INTERNATIONAL Tbk','Mayapada Tower - 2nd Floor, Jl. Jend. Sudirman Kav. 28, Jakarta 12920','(021) 5212288, 5212300','Fax : (021) 5211995-965-539-985','www.bankmayapada.com'),(18,'BANK UMUM SWASTA NASIONAL','146','PT BANK OF INDIA INDONESIA Tbk','Jl. H. Samanhudi No. 37, Jakarta 10710','(021) 3808178, 3500007 (HUNTING)','Fax : (021) 3808178','www.boiindonesia.co.id'),(19,'BANK UMUM SWASTA NASIONAL','147','PT BANK MUAMALAT INDONESIA Tbk','Gedung Muamalat Tower �Jl. Prof. Dr. Satrio Kav. 18, Jakarta 10220','(021) 80666000','Fax : (021) 2511465, 2511453','www.muamalatbank.com'),(20,'BANK UMUM SWASTA NASIONAL','151','PT BANK MESTIKA DHARMA Tbk','Jl. Zainul Arifin 118, Medan 20153','(061) 4525800, 4560991-5500','Fax : (061) 4525800, 4560991-5500','www.bankmestika.co.id'),(21,'BANK UMUM SWASTA NASIONAL','152','PT BANK SHINHAN INDONESIA','Ged. International Financial Centre (IFC) Tower 2 Lt. Dasar, Mezz anine, 30 dan 31 Jl. Jend. Sudirman Kav. 22-23 Jakarta Selatan','(021) 29751500','Fax : (021) 2311522, 2310159','www.shinhan.co.id'),(22,'BANK UMUM SWASTA NASIONAL','153','PT BANK SINARMAS Tbk','Sinarmas Land Plaza, Menara I, Lt. 1 &2 Jl. MH. Thamrin Kav. 51, Jakarta 10350','(021) 31990101','Fax : (021) 31990405','www.banksinarmas .co.id'),(23,'BANK UMUM SWASTA NASIONAL','157','PT BANK MASPION INDONESIA Tbk','Jl. Basuki Rahmat No. 50 - 54, Surabaya','(031) 5319818, 5456334, 5356123','Fax : (031) 3536839','www.bankmaspion.co.id'),(24,'BANK UMUM SWASTA NASIONAL','161','PT BANK GANESHA Tbk','Wisma Hayam Wuruk Lt.1 & 2, Jl. Hayam Wuruk No. 8, Jakarta Pusat','(021) 29109900','Fax : (021) 29109992','www.bankganesha.co.id'),(25,'BANK UMUM SWASTA NASIONAL','164','PT BANK ICBC INDONESIA','ICBC Tower Lt. 32, Jl. M.H. Thamrin No. 81, Jakarta Pusat','021-23556000','Fax : (021) 31996016','www.icbcindo.com'),(26,'BANK UMUM SWASTA NASIONAL','167','PT BANK QNB INDONESIA Tbk','Revenue Tower District 8 Lt.8 Jl. Jend. Sudirman Kav. 52-53 Jakarta 12190','(021) 5155155','Fax : (021) 5155155','www.qnb.co.id'),(27,'BANK UMUM SWASTA NASIONAL','212','PT BANK WOORI SAUDARA INDONESIA 1906 Tbk','Gedung Treasury Tower Lt.26 dan 27 District 8, SCBC Lt.28 Jl. Jend. Sudirman Kav.52 - 53 Jakarta 12190','(021) 50871906','Fax : (021) 50871900','www.banksaudara.com'),(28,'BANK UMUM SWASTA NASIONAL','426','PT BANK MEGA Tbk','Menara Bank Mega Lt.15, Jl. Kapten Tendean Kav. 12-14 A, Jakarta 12790','(021) 7917500','Fax : (021) 79187100','www.bankmega.com'),(29,'BANK UMUM SWASTA NASIONAL','441','PT BANK KB BUKOPIN Tbk','Jl. MT. Haryono Kav. 50-51, Jakarta 12770','(021) 7989837, 7988266','Fax : (021) 7980625, 7980238, 7980244','www.bukopin.co.id'),(30,'BANK UMUM SWASTA NASIONAL','451','PT BANK SYARIAH INDONESIA Tbk *)','Jl. Abdul Muis No. 2-4, Jakarta Pusat','(021) 3810226, 14040','Fax : (021) 3924517, 3805272','www.bankbsi.co.id/'),(31,'BANK UMUM SWASTA NASIONAL','484','PT BANK KEB HANA INDONESIA','Mangkuluhur City Tower One Jl. Jend. Gatot Subroto Kav. 1-3 Kel. Karet Semanggi, Jakarta Selatan','(021) 5220222, 5220223,�50811111','Fax: (021) 50811123','www.hanabank.co.id'),(32,'BANK UMUM SWASTA NASIONAL','485','PT BANK MNC INTERNASIONAL Tbk','Gedung MNC Financial Center, Lt. 6,7,8 Jl. Kebon Sirih Raya No. 27, Jakarta Pusat 10340','(021) 3919898','Fax : (021) 5701635','www.mncbank.co.id'),(33,'BANK UMUM SWASTA NASIONAL','494','PT BANK RAKYAT INDONESIA AGRONIAGA Tbk','Gedung BRI Agro Lt. 1-7 Jl. Warung Jati Barat No. 139 RT.010 RW.009 Kel Kalibata, Pancoran Jakarta Selatan 12740','(021) 79199980','Fax : (021) 79199950','www.bankagro.co.id'),(34,'BANK UMUM SWASTA NASIONAL','498','PT BANK SBI INDONESIA','Graha Mandiri, Jl. Imam Bonjol No.61 Lt. 1, Jakarta Pusat 10310','(021) 39838747, 3805080','Fax : (021) 3854491, 3864075','www.sbiindo.com'),(35,'BANK UMUM SWASTA NASIONAL','506','PT BANK MEGA SYARIAH','Menara Mega Syariah, Jl. HR Rasuna Said Kav. 19A, Jakarta 12950','(021) 29852000','Fax : (021) 29852100','www.megasyariah.co.id'),(36,'BANK UMUM SWASTA NASIONAL','555','PT BANK INDEX SELINDO','Plaza Bank Index Lt. 8 Jl. M. H. Thamrin No. 57 Jakarta Pusat','(021) 3922328','Fax : (021) 3922336','www.bankindex.co.id'),(37,'BANK UMUM SWASTA NASIONAL','553','PT BANK MAYORA','Gedung Mayora, Jl. Tomang Raya Kav. 21-23, Jakarta 11440','(021) 5655287-88','Fax : (021) 565 5277','www.bankmayora.com'),(38,'BANK UMUM SWASTA NASIONAL','036','PT BANK CHINA CONSTRUCTION BANK INDONESIA Tbk','Gedung Perkantoran sahid Sudirman Center Lt. 15 Jl. Jenderal Sudirman Kav. 86','(021) 50821000','Fax : (021) 50821010','http://idn.ccb.com/'),(39,'BANK UMUM SWASTA NASIONAL','046','PT BANK DBS INDONESIA','DBS Bank Tower, Lobby Level Lt 33-37 Ciputra World 1, Jl. Prof. Dr. Satrio Kav 3-5 Jakarta 12940','(021) 29885000','Fax : -','www.dbs.com'),(40,'BANK UMUM SWASTA NASIONAL','047','PT BANK RESONA PERDANIA','Menara Mulia Lt. 5 & 6, Suite 501 & 601 Jl. Gatot Subroto Kav. 9-11, Jakarta','(021) 5701958','Fax : (021) 5701950, 5701936, 5701939','www.perdania.co.id'),(41,'BANK UMUM SWASTA NASIONAL','048','PT BANK MIZUHO INDONESIA','Menara Astra, Lantai 53, Jl. Jend. Sudirman Kav. 5-6, Jakarta','(021) 50910888 ','Fax : (021) 3926354','www.mizuhocbk.co.id'),(42,'BANK UMUM SWASTA NASIONAL','054','PT BANK CAPITAL INDONESIA Tbk','Gedung Menara Jamsostek Lt. 1 & 6, Jl. Gatot Subroto No. 38 Jakarta Selatan 12710','(021) 27938989','Fax : (021) 27938900','www.bankcapital.co.id'),(43,'BANK UMUM SWASTA NASIONAL','057','PT BANK BNP PARIBAS INDONESIA','Sequis Tower Lt.28, SCBD Lot 11B Jl. Jenderal Sudirman Kav.71 Jakarta 12190','(021) 50814789','Fax : (021) 50814790','www.bnpparibas.co.id'),(44,'BANK UMUM SWASTA NASIONAL','061','PT BANK ANZ INDONESIA','World Trade Centre 3, Lt.30-31 Jl. Jend. Sudirman Kav.29-31, Karet Kuningan, Setiabudi, Jakarta Selatan 12920','(021) 5750300','Fax : (021) 5727447','www.anz.com'),(45,'BANK UMUM SWASTA NASIONAL','945','PT BANK IBK INDONESIA Tbk','Wisma GKBI Suites-UG01 Jl. Jendral Sudirman No. 29, Jakarta','021-57908888','Fax : -','www.bankagris.co.id'),(46,'BANK UMUM SWASTA NASIONAL','947','PT BANK�ALADIN�SYARIAH Tbk **)','Millennium Centennial Center Lt 7 Jl. Jendral Sudirman Kav. 25 Jakarta 12920','(021) 2506446','Fax : (021) 2506445','www.maybanksyariah.co.id'),(47,'BANK UMUM SWASTA NASIONAL','949','PT BANK CTBC INDONESIA','Tamara Center Lt. 15-17, Jl. Jend. Sudirman Kav. 24, Jakarta 12920','(021) 25578787','Fax : (021) 5206767','www.chinatrust.co.id'),(48,'BANK UMUM SWASTA NASIONAL','950','PT BANK COMMONWEALTH','Treasury Tower Lt. 65 Lot 28 SCBD, Jl. Jendral Sudirman Kav 52-45, Jakarta Selatan','(021) 50960000','Fax : (021) 60960140','www.commbank.co.id'),(49,'BANK UMUM SWASTA NASIONAL','213','PT BANK BTPN Tbk','Menara BTPN - CBD Mega Kuningan, Jl. Dr. Ide Anak Agung Gde Agung Kav. 5,5 - 5,6 Jakarta Selatan 12950','(021) 30026200','Fax : (021) 30026308','www.btpn.com'),(50,'BANK UMUM SWASTA NASIONAL','405','PT BANK VICTORIA SYARIAH','Gd Graha BIP lantai 5 Jl.Gatot Subroto Kav.23 Karet Semanggi Setiabudi Jakarta Selatan','(021) 5600467','Fax : (021) 57940941','www.bankvictoriasyariah.co.id'),(51,'BANK UMUM SWASTA NASIONAL','425','PT BANK JABAR BANTEN SYARIAH','Jl. Braga No. 135 Bandung','022-4202599','Fax : (022) 4212550/4212524','www.bjbsyariah.co.id'),(52,'BANK UMUM SWASTA NASIONAL','459','PT BANK BISNIS INTERNASIONAL','Jl. Ir. H. Djuanda No. 137, Bandung','(022) 2501787, 2511900, 4233458','Fax : (022) 4235741','www.bankbisnis.com'),(53,'BANK UMUM SWASTA NASIONAL','472','PT BANK JASA JAKARTA','Jl. Tiang Bendera III No. 26-28-30, Jakarta 11230','(021) 6902611, 6906950','Fax : (021) 6902619, 6910270, 6902031','www.bjj.co.id'),(54,'BANK UMUM SWASTA NASIONAL','490','PT BANK NEO COMMERCE Tbk','Treasury Tower Lt.60, District 8 SCBD Lot 28, Jl Jendral Sudirman Kav 52-53, Jakarta Selatan','(021) 3517523, 3517533','Fax : (021) 3517530, 3517535','www.yudhabhakti.co.id'),(55,'BANK UMUM SWASTA NASIONAL','501','PT BANK DIGITAL BCA','Gedung The City Tower (TCT) Lt.11 Jl. MH. Thamrin No.81 Kel. Dukuh Atas, Kec. Menteng Jakarta Pusat','(021) 63864472,73,75','Fax : (021) 63864476-63864474','www.digitalbca.co.id'),(56,'BANK UMUM SWASTA NASIONAL','503','PT BANK NATIONALNOBU Tbk','Plaza Semanggi Lt. 9, Jl. Jendral Sudirman Kav. 50 Jakarta','(021) 25535128','Fax : (021) 6310517','www.nobubank.com'),(57,'BANK UMUM SWASTA NASIONAL','513','PT BANK INA PERDANA Tbk','Wisma BSG, Jl. Abdul Muis No. 40, Jakarta Pusat','(021) 3859050','Fax : (021) 3859041','www.bankina.co.id'),(58,'BANK UMUM SWASTA NASIONAL','517','PT BANK PANIN DUBAI SYARIAH Tbk','Gd.Panin Life Centre Lt. 3, Jl. Letjend S. Parman Kav 91 Jakarta 11420','(021) 56956100','Fax : (021) 56956105','www.paninbanksyariah.co.id'),(59,'BANK UMUM SWASTA NASIONAL','520','PT PRIMA MASTER BANK','Jl. Jembatan Merah No. 15-17, Surabaya 60175','(031) 3531253 (HUNTING)','Fax : (031) 3520437','www.primamasterbank.co.id'),(60,'BANK UMUM SWASTA NASIONAL','521','PT BANK SYARIAH BUKOPIN','Jl. Salemba Raya No. 55, Jakarta','(021) 2300912','Fax : (021) 3148401','wwww.syariahbukopin.co.id'),(61,'BANK UMUM SWASTA NASIONAL','523','PT BANK SAHABAT SAMPOERNA','Gedung Sampoerna Strategic Square Menara Utara, Lt. Mezzanine Jl. Jend. Sudirman Kav 45 Jakarta','(021) 57951515','Fax : (021) 57950624','www.banksampoerna.com'),(62,'BANK UMUM SWASTA NASIONAL','526','PT BANK OKE INDONESIA Tbk','Jl. Ir. H. Juanda No. 12, Jakarta 10120','(021) 2312633','Fax : (021) 2313749','www.okbank.co.id'),(63,'BANK UMUM SWASTA NASIONAL','531','PT BANK AMAR INDONESIA','Jl. Basuki Rahmad No. 109, Surabaya','(031) 99015959','Fax : (031) 3536839','www.anglomasbank.co.id'),(64,'BANK UMUM SWASTA NASIONAL','535','PT BANK SEABANK INDONESIA','Gedung IKP RI, Jl. R.P. Suroso No. 21, Jakarta 10330','(021) 3100422, 3100448','Fax : (021) 3102970, 3100959','www.bankkesejahteraan.co.id'),(65,'BANK UMUM SWASTA NASIONAL','536','PT BANK BCA SYARIAH','Jl. Jatinegara Timur No. 72, Jakarta 13310','(021) 8190072, 8505030, 8505035','Fax : (021) 8190826, 85901568','www.bcasyariah.co.id'),(66,'BANK UMUM SWASTA NASIONAL','542','PT BANK JAGO TBK','Menara BTPN Lt 43,45 dan 46 Jl. Dr. Ide Anak Agung Gde Agung Kav.5,5-5,6 Jakarta Selatan','(021) 50927460','-','www.jago.com'),(67,'BANK UMUM SWASTA NASIONAL','547','PT BANK BTPN SYARIAH Tbk','Menara BTPN, Lt. 12 CBD Mega Kuningan, Jl. Dr. Ide Anak Agung Gde Agung Kav. 5.5-5.6 Kel. Kuningan Timur, Jakarta Selatan','(021) 30026400','Fax : (021) 29021699','www.btpnsyariah.com'),(68,'BANK UMUM SWASTA NASIONAL','548','PT BANK MULTIARTA SENTOSA','Graha Bank MAS Lt. 3, Jl. Setiabudi Selatan Kav. 7-8, Jakarta Selatan','(021) 5790 6006','Fax : (021) 5790 6005','www.bankmas.co.id'),(69,'BANK UMUM SWASTA NASIONAL','562','PT BANK FAMA INTERNASIONAL','Jl. Asia Afrika No. 115, Bandung','(022) 4200808','Fax : (022) 4200277','www.bankfama.co.id'),(70,'BANK UMUM SWASTA NASIONAL','564','PT BANK MANDIRI TASPEN','Graha Mantap, Jl Cikini Raya No.42 Jakarta','(021) 21231772','Fax : (021) 21231984','www.bankmantap.co.id'),(71,'BANK UMUM SWASTA NASIONAL','566','PT BANK VICTORIA INTERNATIONAL Tbk','Gedung Graha BIP Lt.10 Jl. Gatot Subroto Kav. 23 Karet Semanggi, Setiabudi Jakarta Selatan 12930','(021) 5228888','Fax : (021) 5228777','www.victoriabank.co.id'),(72,'BANK UMUM SWASTA NASIONAL','567','PT BANK HARDA INTERNASIONAL Tbk','Asean Tower Lt 1 dan 3, Jl. KH. Samanhudi No. 10, Jakarta Pusat','(021) 3841178, 3841022-23','Fax : (021) 6123959-7023','www.bankbhi.co.id'),(73,'BANK PEMBANGUNAN DAERAH','110','PT BPD JAWA BARAT DAN BANTEN Tbk','Jl. Naripan No. 12 - 14, Bandung 40111','(022) 4234868, 4230223','Fax : (022) 4210391, 4232153, 4206944-3934','www.bankjabar.co.id'),(74,'BANK PEMBANGUNAN DAERAH','111','PT BPD DKI','Gd. Prasada Sasana Karya Jl. Suryopranoto No. 8, Jakarta Pusat','(021) 2314567 (HUNTING)','Fax : (021) 3517660, 2310194, 2312884','www.bankdki.co.id'),(75,'BANK PEMBANGUNAN DAERAH','112','PT BPD DAERAH ISTIMEWA YOGYAKARTA','Jl. Tentara Pelajar No. 7, Yogyakarta','(0274) 561614','Fax : (0274) 562303, 520955','www.bpddiy.co.id'),(76,'BANK PEMBANGUNAN DAERAH','113','PT BPD JAWA TENGAH','Gedung Grinatha Jl. Pemuda No. 142, Semarang, Jawa Tengah 50132','(024) 3547541, 3554025','Fax : (024) 3540170, 3520186, 3556529','www.bankjateng.co.id'),(77,'BANK PEMBANGUNAN DAERAH','114','PT BPD JAWA TIMUR Tbk','Jl. Basuki Rakhmat No. 98-104, Surabaya','(031) 5310090-99','Fax : (031) 5311055','www.bankjatim.co.id'),(78,'BANK PEMBANGUNAN DAERAH','115','PT BPD JAMBI','Jl. Jend. A. Yani No. 18, Telanaipura, Jambi','(0741) 60416, 60665, 62790, 64628','Fax : (0741) 64882','www.bankjambi.co.id'),(79,'BANK PEMBANGUNAN DAERAH','116','PT BANK ACEH SYARIAH','Jl. Mr. H. T. Mohd. Hasan Gampong Lancot No. 89 Batoh, Banda Aceh','(0651) 22966','Fax : (0651) 33565','www.bankaceh.co.id'),(80,'BANK PEMBANGUNAN DAERAH','117','PT BPD SUMATERA UTARA','Jl. Imam Bonjol No. 18, Medan 20152','(061) 4155100, 4515100','Fax : (061) 4574153, 4574145, 4512652','www.banksumut.com'),(81,'BANK PEMBANGUNAN DAERAH','118','PT BPD SUMATERA BARAT','Jl. Pemuda No. 21, Padang 25117','(0751) 25055, 31577, 31578','Fax : (0751) 37749, 31491','www.banknagari.co.id'),(82,'BANK PEMBANGUNAN DAERAH','119','PT BPD RIAU KEPRI','Menara Dang Merdu BRK �Jl. Jend. Sudirman No. 462, Kota Pekanbaru','(0761) 47070','Fax : (0761) 33397, 21195, 40134, 40135','www.bankriau.co.id'),(83,'BANK PEMBANGUNAN DAERAH','120','PT BPD SUMATERA SELATAN DAN BANGKA BELITUNG','Jl. Gubernur H. Ahmad Bastari No. 07 Kel. Silaberanti Kec. Seberang Ulu I Jakabaring Palembang','(0711) 5228080','Fax : (0711) 5228107','www.banksumselbabel.com'),(84,'BANK PEMBANGUNAN DAERAH','121','PT BPD LAMPUNG','Jl. Wolter Monginsidi No. 182, Teluk Betung, Bandar Lampung 35215','(0721) 487175, 482237','Fax : (0721) 485530','www.banklampung.co.id'),(85,'BANK PEMBANGUNAN DAERAH','122','PT BPD KALIMANTAN SELATAN','Jl. Lambung Mangkurat No. 7, Banjarmasin 70111','(0511) 3350726-28','Fax : (0511) 57330, 50722','www.bankbpdkalsel.co.id'),(86,'BANK PEMBANGUNAN DAERAH','123','PT BPD KALIMANTAN BARAT','Jl. Rahadi Oesman No. 10, Pontianak 78117','(0561) 732148, 734713, 736723','Fax : (0561) 734351, 745148, 745149','www.bankkalbar.co.id'),(87,'BANK PEMBANGUNAN DAERAH','124','PT BPD KALIMANTAN TIMUR DAN KALIMANTAN UTARA','Jl. Jend. Sudirman No. 33, Samarinda','(0541) 735500, 739563 - 567','Fax : (0541) 735580, 748362','www.bankkaltim.com'),(88,'BANK PEMBANGUNAN DAERAH','125','PT BPD KALIMANTAN TENGAH','Jl. RTA Milono No. 12, Palangka Raya 73111','(0536) 3226812','Fax : (0536) 3242470','www.bp-kalteng.com'),(89,'BANK PEMBANGUNAN DAERAH','126','PT BPD SULAWESI SELATAN DAN SULAWESI BARAT','Jl. Dr. Sam Ratulangi No. 16, Makassar 90125','(0411) 859171-72-73-74, 859176-181','Fax : (0411) 854611, 859178','www.banksulsel.co.id'),(90,'BANK PEMBANGUNAN DAERAH','127','PT BPD SULAWESI UTARA DAN �GORONTALO','Jl. Sam Ratulangi No. 9, Manado 95111','(0431) 861759, 851451','Fax : (0431) 846515, 854522, 852430','www.banksulutgo.co.id'),(91,'BANK PEMBANGUNAN DAERAH','128','PT BANK NTB SYARIAH','Jl. Pejanggik No. 30, Mataram','(0370) 632177, 636331, 635332','Fax : (0370) 623527, 623526, 648766','www.bankntb.co.id'),(92,'BANK PEMBANGUNAN DAERAH','129','PT BPD BALI','Jl. Raya Puputan Niti Mandala, Renon, Denpasar','(0361) 223301 - 05','Fax : (0361) 229439, 235806, 237691','www.bpdbali.co.id'),(93,'BANK PEMBANGUNAN DAERAH','130','PT BPD NUSA TENGGARA TIMUR','Jl. W.J. Lalamentik No. 102, Kupang, Nusa Tenggara Timur, 85000','(0380) 840555','Fax : (0380) 840567','www.bpdntt.co.id'),(94,'BANK PEMBANGUNAN DAERAH','131','PT BPD MALUKU DAN MALUKU UTARA','Jl. Raya Pattimura 9, Ambon 97124','(0911) 354214, 353144, 354229, 310696','Fax : (0911) 353144, 354997, 354229, 345719, 342029','www.bankmaluku.co.id'),(95,'BANK PEMBANGUNAN DAERAH','132','PT BPD PAPUA','Jl. Ahmad Yani 5-7, Jayapura 99111, Kotak Pos 1536','(0967) 532011 (hunting)','Fax : (0967) 533019','www.bankpapua.com'),(96,'BANK PEMBANGUNAN DAERAH','133','PT BPD BENGKULU','Jl. S. Parman Padang Jati Nomor 57, Kota Bengkulu','(0736) 341170','Fax : (0736) 21178','www.bankbengkulu.co.id'),(97,'BANK PEMBANGUNAN DAERAH','134','PT BPD SULAWESI TENGAH','Jl. St. Hasanuddin No. 20, Palu','(0451) 421780','Fax : (0451) 424405','www.sulteng.go.id'),(98,'BANK PEMBANGUNAN DAERAH','135','PT BPD SULAWESI TENGGARA','Jl. May. Jend. Sutoyo No. 95, Kendari, Sulawesi Tenggara','(0401) 3121526, 3122104-194-551, 3123163','Fax : (0401) 321568','www.banksultra.co.id'),(99,'BANK PEMBANGUNAN DAERAH','137','PT BPD BANTEN Tbk','Jl. Juhdi 28 RT 005 RW 007 Kel. Cimundang, Serang','(0254) 7917346','Fax : (021)�79199950','www.bankbanten.co.id'),(100,'KANTOR CABANG BANK YANG BERKEDUDUKAN DI LUAR NEGERI','031','CITIBANK N.A.','Citibank Tower Lt. 8-11 Pacific Century Place SCBD Lot. 10 Jl. Jend. Sudirman No.52-53 Jakarta 12190','(021) 80862500','Fax : -','www.citibank.co.id'),(101,'KANTOR CABANG BANK YANG BERKEDUDUKAN DI LUAR NEGERI','032','JP MORGAN CHASE BANK NA','Gedung The Energy Lt. 5 & 6, SCBD Lot 11A, JL. Jend. Sudirman Kav 52-53, Jakarta 12190','(021) 52918000, 52918750, 52918233','Fax : (021) 52918211, 52918233, 5710958','www.jpmorganchase.com'),(102,'KANTOR CABANG BANK YANG BERKEDUDUKAN DI LUAR NEGERI','033','BANK OF AMERICA N.A','Gedung Bursa Efek Jakarta, Tower 2, Lt 23, Jl. Sudirman Kav. 52-53, Jakarta','(021) 29553700','Fax : (021) 5151407-5158088','www.bankofamerica.com'),(103,'KANTOR CABANG BANK YANG BERKEDUDUKAN DI LUAR NEGERI','040','BANGKOK BANK PCL','Jl. MH. Thamrin No. 3, Jakarta','(021) 2311008','Fax : (021) 377842, 2310070, 3853881','www.bangkokbank.co.id'),(104,'KANTOR CABANG BANK YANG BERKEDUDUKAN DI LUAR NEGERI','042','MUFG BANK LTD','Gedung Mid Plaza Lt.1-3, Jl. Jend Sudirman Kav. 10-11, Jakarta 10220','(021) 5706185, 5705177, 5703955','Fax : (021) 5704149-7625, 5731927-6565','www.mufg.co.id'),(105,'KANTOR CABANG BANK YANG BERKEDUDUKAN DI LUAR NEGERI','050','STANDARD CHARTERED BANK','Menara Standard Chartered Bank, Jl. Prof. Dr. Satrio No. 164, Jakarta 12950','(021) 2550000, 579 99988','Fax : (021) 5722280, 5721234','www.standardchartered.com'),(106,'KANTOR CABANG BANK YANG BERKEDUDUKAN DI LUAR NEGERI','067','DEUTSCHE BANK AG','Deutsche Bank Building, Jl. Imam Bonjol No. 80, Jakarta','(021) 29644401','Fax : (021) 31935252','www.deutsche-bank.co.id/indonesia'),(107,'KANTOR CABANG BANK YANG BERKEDUDUKAN DI LUAR NEGERI','069','BANK OF CHINA (HONG KONG) LIMITED','Wisma Tamara, Suite 101-201, Jl. Jend. Sudirman Kav. 24, Jakarta','(021) 5205502','Fax : (021) 5201113, 5207572','www.bankofchina.co.id');
/*!40000 ALTER TABLE `a_bank` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-19  2:39:12