-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: ncm
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `descriptionncm`
--

DROP TABLE IF EXISTS `descriptionncm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `descriptionncm` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ncm` varchar(10) NOT NULL,
  `descriptionProduct` varchar(350) NOT NULL,
  `atention` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descriptionncm`
--

LOCK TABLES `descriptionncm` WRITE;
/*!40000 ALTER TABLE `descriptionncm` DISABLE KEYS */;
INSERT INTO `descriptionncm` VALUES (1,'9701.21.00','Quadros, pinturas e desenhos feitos inteiramente a mão','Com mais de 100 anos. Exceto Planos, plantas e desenhos, de arquitetura, de engenharia e outros planos e desenhos industriais, comerciais, topográficos ou semelhantes, originais, feitos à mão; textos manuscritos; reproduções fotográficas em papel sensibilizado e cópias a papel-carbono (papel químico) dos planos, plantas, desenhos ou textos acima referidos e os artigos manufaturados decorados a mão.'),(2,'9701.22.00','Mosaicos feitos inteiramente a mão','Com mais de 100 anos. Exceto Planos, plantas e desenhos, de arquitetura, de engenharia e outros planos e desenhos industriais, comerciais, topográficos ou semelhantes, originais, feitos à mão; textos manuscritos; reproduções fotográficas em papel sensibilizado e cópias a papel-carbono (papel químico) dos planos, plantas, desenhos ou textos acima referidos e os artigos manufaturados decorados a mão. '),(3,'9701.29.00','Colagens e quadros decorativos semelhantes feitos inteiramente a mão','Com mais de 100 anos. Exceto Planos, plantas e desenhos, de arquitetura, de engenharia e outros planos e desenhos industriais, comerciais, topográficos ou semelhantes, originais, feitos à mão; textos manuscritos; reproduções fotográficas em papel sensibilizado e cópias a papel-carbono (papel químico) dos planos, plantas, desenhos ou textos acima referidos e os artigos manufaturados decorados a mão.'),(4,'9701.91.00','Quadros, pinturas e desenhos','Exceto Planos, plantas e desenhos, de arquitetura, de engenharia e outros planos e desenhos industriais, comerciais, topográficos ou semelhantes, originais, feitos à mão; textos manuscritos; reproduções fotográficas em papel sensibilizado e cópias a papel-carbono (papel químico) dos planos, plantas, desenhos ou textos acima referidos e os artigos manufaturados decorados a mão.'),(5,'9701.92.00','Mosaicos','Exceto Planos, plantas e desenhos, de arquitetura, de engenharia e outros planos e desenhos industriais, comerciais, topográficos ou semelhantes, originais, feitos à mão; textos manuscritos; reproduções fotográficas em papel sensibilizado e cópias a papel-carbono (papel químico) dos planos, plantas, desenhos ou textos acima referidos e os artigos manufaturados decorados a mão.'),(6,'9701.29.00','Colagens e quadros decorativos semelhantes feitos inteiramente a mão','Exceto Planos, plantas e desenhos, de arquitetura, de engenharia e outros planos e desenhos industriais, comerciais, topográficos ou semelhantes, originais, feitos à mão; textos manuscritos; reproduções fotográficas em papel sensibilizado e cópias a papel-carbono (papel químico) dos planos, plantas, desenhos ou textos acima referidos e os artigos manufaturados decorados a mão.'),(7,'9702.10.00','Gravuras, estampas e litografias, originais.','Com mais de 100 anos'),(8,'9702.90.00','Gravuras, estampas e litografias, originais.',''),(9,'9703.10.00','Produções originais de arte estatuária ou de escultura, de quaisquer matérias.','Com mais de 100 anos'),(10,'9703.90.00','Produções originais de arte estatuária ou de escultura, de quaisquer matérias.',''),(11,'9704.00.00','Selos postais, selos fiscais, marcas postais, envelopes de primeiro dia (first-day covers), inteiros postais e semelhantes, obliterados, ou não obliterados.','Exceto selos postais, fiscais e semelhantes, não obliterados, tendo ou destinando-se a ter curso legal no país em que têm, ou terão, um valor facial reconhecido; papel selado; notas (papéis-moeda); cheques; certificados de ações ou de obrigações e títulos semelhantes.'),(12,'9705.10.00','Coleções e peças de coleção que apresentem um interesse arqueológico, etnográfico ou histórico',''),(13,'9705.21.00','Coleções e peças de coleção que apresentem um interesse zoológico, botânico, mineralógico, anatômico ou paleontológico:','Espécimes humanos e suas partes'),(14,'9705.22.00','Coleções e peças de coleção que apresentem um interesse zoológico, botânico, mineralógico, anatômico ou paleontológico:','Espécies extintas ou ameaçadas de extinção, e suas partes'),(15,'9705.29.00','Coleções e peças de coleção que apresentem um interesse zoológico, botânico, mineralógico, anatômico ou paleontológico:','Outras'),(16,'9705.31.00','Coleções e peças de coleção que apresentem um interesse numismático:','Com mais de 100 anos'),(17,'9705.39.00','Coleções e peças de coleção que apresentem um interesse numismático:','Outras'),(18,'9706.10.00','Antiguidades com mais de 100 anos.','Com mais de 250 anos '),(19,'9706.90.00','Antiguidades com mais de 100 anos.','Outras');
/*!40000 ALTER TABLE `descriptionncm` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-07 12:22:45
