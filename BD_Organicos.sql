CREATE DATABASE  IF NOT EXISTS `bd_organicos_teste` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_organicos_teste`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_organicos_teste
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `Id_Categoria` smallint NOT NULL,
  `Descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Latcinios'),(2,'Legumes'),(3,'frutas'),(4,'Carnes');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `CPF` varchar(11) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `Sobrenome` varchar(50) DEFAULT NULL,
  `Data_Nascimento` date DEFAULT NULL,
  `Idade` smallint DEFAULT NULL,
  `Telefone` varchar(15) DEFAULT NULL,
  `CEP` varchar(9) DEFAULT NULL,
  `Cidade` varchar(50) DEFAULT NULL,
  `Rua` varchar(50) DEFAULT NULL,
  `Numero` smallint DEFAULT NULL,
  PRIMARY KEY (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES ('11122211131','João','da Silva','2085-01-02',38,'5551999981111','111222111','Sao Paulo','jacare',23456),('11122211132','Michele','Victovisc','2000-05-02',23,'5551999982222','111222333','Rafagrado','utunburi',151),('11122211133','Ana','Monticlara','2001-04-02',22,'5551999983333','111222444','Rafagrado','gatonasca',5698),('11122211134','Maria','Peixes Cunha','1995-07-02',28,'5551999984444','111222555','Sao Paulo','Cavalo Correia',223),('11122211135','Paula','Matiuca Pananbica','1990-08-02',33,'5551999985555','111222666','Paulopolis','feitoria',2547),('11122211136','Alexande','de Moraes','1972-09-04',51,'5551999986666','111222665','Rafagrado','Fisca Limas',3365);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forma_pgto`
--

DROP TABLE IF EXISTS `forma_pgto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forma_pgto` (
  `Id_pgto` smallint NOT NULL,
  `Descricao` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_pgto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_pgto`
--

LOCK TABLES `forma_pgto` WRITE;
/*!40000 ALTER TABLE `forma_pgto` DISABLE KEYS */;
INSERT INTO `forma_pgto` VALUES (1,'Dinheiro'),(2,'Cartao de débito'),(3,'Cartão de Crédito');
/*!40000 ALTER TABLE `forma_pgto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `Cod_Produto` smallint NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `Preco` float DEFAULT NULL,
  `Id_Categoria` smallint DEFAULT NULL,
  PRIMARY KEY (`Cod_Produto`),
  KEY `FK_Produto_2` (`Id_Categoria`),
  CONSTRAINT `FK_Produto_2` FOREIGN KEY (`Id_Categoria`) REFERENCES `categoria` (`Id_Categoria`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1001,'Batata Doce',5.5,2),(1002,'Batata convencional',4.5,2),(1003,'Repolho',3.2,2),(1004,'Queijo',30,1),(1005,'Ricota',4.5,1),(1006,'Banana',6.7,3),(1007,'Bergamota',3.2,3),(1008,'Carne de Porco',27.5,4),(1009,'Linguça',35.9,4),(1010,'Murcilha',29.5,4);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda` (
  `cod_venda` int NOT NULL AUTO_INCREMENT,
  `Parcelas` smallint DEFAULT NULL,
  `Quantidade` smallint DEFAULT NULL,
  `Cod_Vendedor` smallint DEFAULT NULL,
  `Cliente_CPF` varchar(11) DEFAULT NULL,
  `forma_pgto` smallint DEFAULT NULL,
  PRIMARY KEY (`cod_venda`),
  KEY `FK_Venda_2` (`Cod_Vendedor`),
  KEY `FK_Venda_3` (`Cliente_CPF`),
  KEY `FK_Venda_4` (`forma_pgto`),
  CONSTRAINT `FK_Venda_2` FOREIGN KEY (`Cod_Vendedor`) REFERENCES `vendedor` (`Cod_vendedor`) ON DELETE RESTRICT,
  CONSTRAINT `FK_Venda_3` FOREIGN KEY (`Cliente_CPF`) REFERENCES `cliente` (`CPF`) ON DELETE RESTRICT,
  CONSTRAINT `FK_Venda_4` FOREIGN KEY (`forma_pgto`) REFERENCES `forma_pgto` (`Id_pgto`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES (1,1,1,201,'11122211131',1),(2,1,5,201,'11122211132',3),(3,2,4,202,'11122211135',2),(4,1,2,202,'11122211134',2),(5,4,1,203,'11122211134',3),(6,1,2,204,'11122211136',1);
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda_produto`
--

DROP TABLE IF EXISTS `venda_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda_produto` (
  `Cod_Venda` int NOT NULL,
  `Cod_Produto` smallint NOT NULL,
  `Quantidade` smallint DEFAULT NULL,
  PRIMARY KEY (`Cod_Venda`,`Cod_Produto`),
  KEY `FK_Venda_Produto_2` (`Cod_Produto`),
  CONSTRAINT `FK_Venda_Produto_1` FOREIGN KEY (`Cod_Venda`) REFERENCES `venda` (`cod_venda`),
  CONSTRAINT `FK_Venda_Produto_2` FOREIGN KEY (`Cod_Produto`) REFERENCES `produto` (`Cod_Produto`) ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda_produto`
--

LOCK TABLES `venda_produto` WRITE;
/*!40000 ALTER TABLE `venda_produto` DISABLE KEYS */;
INSERT INTO `venda_produto` VALUES (1,1001,1),(2,1004,2),(2,1005,3),(3,1004,2),(3,1010,2),(4,1009,2),(5,1005,1),(6,1001,2);
/*!40000 ALTER TABLE `venda_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendedor`
--

DROP TABLE IF EXISTS `vendedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendedor` (
  `Cod_vendedor` smallint NOT NULL,
  `CPF` varchar(11) DEFAULT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cod_vendedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendedor`
--

LOCK TABLES `vendedor` WRITE;
/*!40000 ALTER TABLE `vendedor` DISABLE KEYS */;
INSERT INTO `vendedor` VALUES (201,'44455566655','Pedro'),(202,'44455566644','Henrrique'),(203,'44455566677','Luan'),(204,'44455566688','Monica');
/*!40000 ALTER TABLE `vendedor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-15 20:29:59
