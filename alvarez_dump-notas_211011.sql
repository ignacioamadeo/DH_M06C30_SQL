-- MySQL dump 10.13  Distrib 8.0.26, for macos10.15 (x86_64)
--
-- Host: localhost    Database: notas
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `tipo_categoria` varchar(20) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Personal'),(2,'Trabajo'),(3,'Casa'),(4,'Compras'),(5,'Viajes'),(6,'Libros'),(7,'Pendientes'),(8,'Terminado'),(9,'Peliculas'),(10,'Telefonos');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `id_nota` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `fecha_creacion` date NOT NULL,
  `fecha_modificacion` date NOT NULL,
  `descripcion` text,
  `borrar_permiso` tinyint NOT NULL,
  `id_usuario` int NOT NULL,
  PRIMARY KEY (`id_nota`),
  KEY `notas_FK` (`id_usuario`),
  CONSTRAINT `notas_FK` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,'Reduced','2020-10-18','2021-01-30','sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at',1,6),(2,'focus group','2020-11-20','2020-11-14','nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere',0,8),(3,'Realigned','2020-10-26','2021-04-05','curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel',1,3),(4,'application','2021-06-06','2021-10-01','in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu',1,5),(5,'Switchable','2021-09-02','2021-03-10','duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus',1,8),(6,'Focused','2021-05-12','2021-04-09','nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a',1,4),(7,'Total','2021-05-25','2021-01-19','nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc',0,9),(8,'5th generation','2020-12-10','2020-12-07','eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat',0,7),(9,'Horizontal','2021-06-14','2021-02-17','curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat',1,1),(10,'Devolved','2021-04-07','2021-07-03','dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut',1,4);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas_categorias`
--

DROP TABLE IF EXISTS `notas_categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas_categorias` (
  `id_relacion` int NOT NULL AUTO_INCREMENT,
  `id_nota` int NOT NULL,
  `id_categoria` int NOT NULL,
  PRIMARY KEY (`id_relacion`),
  KEY `notas_categorias_FK` (`id_categoria`),
  KEY `notas_categorias_FK_1` (`id_nota`),
  CONSTRAINT `notas_categorias_FK` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`),
  CONSTRAINT `notas_categorias_FK_1` FOREIGN KEY (`id_nota`) REFERENCES `notas` (`id_nota`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas_categorias`
--

LOCK TABLES `notas_categorias` WRITE;
/*!40000 ALTER TABLE `notas_categorias` DISABLE KEYS */;
INSERT INTO `notas_categorias` VALUES (1,7,7),(2,10,1),(3,1,4),(4,3,9),(5,2,7),(6,1,9),(7,2,5),(8,1,9),(9,7,3),(10,5,7);
/*!40000 ALTER TABLE `notas_categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  `mail` varchar(30) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Lissie','lricardon0@youku.com'),(2,'Frannie','fswalowe1@google.com.hk'),(3,'Leodora','lloughan2@theatlantic.com'),(4,'Cecelia','clandal3@digg.com'),(5,'Rufus','rjiggen4@hhs.gov'),(6,'Carly','cclunie5@hatena.ne.jp'),(7,'Bastian','bhudghton6@icio.us'),(8,'Tristam','tillingworth7@photobucket.com'),(9,'Barnabas','braveau8@macromedia.com'),(10,'Farlay','fblomfield9@nydailynews.com');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'notas'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-11 11:46:39
