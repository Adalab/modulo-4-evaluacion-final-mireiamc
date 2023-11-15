-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: sql.freedb.tech    Database: freedb_harry_potter_desserts
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.22.04.1

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
-- Table structure for table `films`
--

DROP TABLE IF EXISTS `films`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `films` (
  `id` int NOT NULL AUTO_INCREMENT,
  `film` varchar(50) DEFAULT NULL,
  `year` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `films`
--

LOCK TABLES `films` WRITE;
/*!40000 ALTER TABLE `films` DISABLE KEYS */;
INSERT INTO `films` VALUES (1,'Harry Potter y la piedra filosofal',2001),(2,'Harry Potter y la cámara secreta',2002),(3,'Harry Potter y el Prisionero de Azkaban',2004),(4,'Harry Potter y el Cáliz de fuego',2005);
/*!40000 ALTER TABLE `films` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `film_id` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `ingredientes` varchar(200) DEFAULT NULL,
  `instructions` text,
  PRIMARY KEY (`id`),
  KEY `fk_film_id` (`film_id`),
  CONSTRAINT `fk_film_id` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES (1,4,'Pastel de Ron Weasly','1 taza y 1/2 de harina de trigo, 1 cucharadita de levadura, 1/4 de cucharadita de sal, 1 pastilla y 1/2 de mantequilla a temperatura ambiente, 1 taza de azúcar, 3 huevos a temperatura ambiente, 1/2 ta','Batir con la batidora electrica todos los ingredientes juntos e introducir en el horno a 180 grados unos 40min o hasta pinchar con un palillo y que salga totalmente limpio. '),(2,1,'Pastel de Hagrid','1 taza y 1/2 de harina de trigo, 1 cucharadita de levadura, 1/4 cucharadita de sal, 1 pastilla y 1/2 de mantequilla, 1 taza de azúcar, 3 huevos. Para el relleno: 1 taza de leche entera, 1/2 taza de na','Batir con la batidora electrica todos los ingredientes juntos e introducir en el horno a 180 grados unos 40min o hasta pinchar con un palillo y que salga totalmente limpio. Para el relleno montar todos los ingredientes juntos hasta formar una crema. Rellenar el bizcocho previamente enfriado.'),(3,2,'Pudin de tia Petunia','Una base de bizcocho a tu eleccion partida en rebanadas de 1cm de grosor, 1/2 taza de mermelada de fresa, 1/2kg de fresas naturales, nata montada, 1 cucharada sopera de almendras tostadas','Forrar un molde con trocitos de bizcocho alrededor y en la base. Rellenar con una primera capa de mermelada y nata montada, añadir otra capa de bizcocho y volver a cerrar con nata montada y mermelada de fresa. Seguir así hasta conseguir la altura deseada. Acabar decorando en la parte superior con fresas naturales. '),(7,3,'Tarta de Hermione','1 taza y 1/2 de harina de trigo, 1/2 taza de almendras molidas, 1 cucharadita de levadura, 1 pastilla y 1/2 de mantequilla, 1 taza de azucar, 3 huevos. 1/2 taza de leche entera a temperatura ambiente.','Batir con la batidora electrica todos los ingredientes juntos e introducir en el horno a 180 grados unos 40min o hasta pinchar con un palillo y que salga totalmente limpio. Para el relleno montar todos los ingredientes juntos hasta formar una crema. Rellenar el bizcocho y decorar con la mermelada de crezas y las cerezas. ');
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-15 12:12:06
