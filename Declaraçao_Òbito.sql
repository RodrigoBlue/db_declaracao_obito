-- MySQL dump 10.13 Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost Database: declaracao_obito
-- ------------------------------------------------------
-- Server version 8.0.26
--
-- Table structure for table `acidente_trabalho`
create database declaracao_obito;
use declaracao_obito;
unlock tables;
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
DROP TABLE IF EXISTS `acidente_trabalho`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acidente_trabalho` (
`cod_AT` int NOT NULL,
`cod_ce` int DEFAULT NULL,
`sim` varchar(3) DEFAULT NULL,
`nao` varchar(3) DEFAULT NULL,
`ignorado` varchar(8) DEFAULT NULL,
PRIMARY KEY (`cod_AT`),
KEY `FK_acidente_trabalho_2` (`cod_ce`),
CONSTRAINT `FK_acidente_trabalho_2` FOREIGN KEY (`cod_ce`) REFERENCES `causa_externa` (`cod_ce`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `acidente_trabalho`
--
LOCK TABLES `acidente_trabalho` WRITE;
/*!40000 ALTER TABLE `acidente_trabalho` DISABLE KEYS */;
INSERT INTO `acidente_trabalho` VALUES (10,100,NULL,'Não',NULL),(11,101,NULL,'Não',NULL);
/*!40000 ALTER TABLE `acidente_trabalho` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `assist_media`
--
DROP TABLE IF EXISTS `assist_media`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assist_media` (
`cod_am` int NOT NULL,
`sim` varchar(3) DEFAULT NULL,
`nao` varchar(3) DEFAULT NULL,
`ignorado` varchar(8) DEFAULT NULL,
`cod_mg` int DEFAULT NULL,
PRIMARY KEY (`cod_am`),
KEY `FK_assist_media_2` (`cod_mg`),
CONSTRAINT `FK_assist_media_2` FOREIGN KEY (`cod_mg`) REFERENCES `obito_mulher` (`cod_mg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `assist_media`
--
LOCK TABLES `assist_media` WRITE;
/*!40000 ALTER TABLE `assist_media` DISABLE KEYS */;
INSERT INTO `assist_media` VALUES (10,'Sim',NULL,NULL,600);
/*!40000 ALTER TABLE `assist_media` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `atendimento_falecido`
--
DROP TABLE IF EXISTS `atendimento_falecido`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atendimento_falecido` (
`cod_atendimento` int NOT NULL,
`fk_crm` int DEFAULT NULL,
`sim` char(3) DEFAULT NULL,
`substituto` char(10) DEFAULT NULL,
`iml` char(3) DEFAULT NULL,
`svo` char(3) DEFAULT NULL,
`outros` char(5) DEFAULT NULL,
PRIMARY KEY (`cod_atendimento`),
KEY `FK_atendimento_falecido_2` (`fk_crm`),
CONSTRAINT `FK_atendimento_falecido_2` FOREIGN KEY (`fk_crm`) REFERENCES `medico` (`crm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `atendimento_falecido`
--
LOCK TABLES `atendimento_falecido` WRITE;
/*!40000 ALTER TABLE `atendimento_falecido` DISABLE KEYS */;
INSERT INTO `atendimento_falecido` VALUES (10,1000,'Sim',NULL,NULL,NULL,NULL),(11,1001,NULL,'Substituto',NULL,NULL,NULL),(12,1002,'Sim',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `atendimento_falecido` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `bairro_distrito_oco`
--
DROP TABLE IF EXISTS `bairro_distrito_oco`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bairro_distrito_oco` (
`id_bairro_distrito` int NOT NULL,
`nome_bairro_distrito` varchar(30) DEFAULT NULL,
`codigo` int DEFAULT NULL,
`cod_ocorrencia` int DEFAULT NULL,
PRIMARY KEY (`id_bairro_distrito`),
KEY `FK_bairro_distrito_oco_2` (`cod_ocorrencia`),
CONSTRAINT `FK_bairro_distrito_oco_2` FOREIGN KEY (`cod_ocorrencia`) REFERENCES `ocorrencia` (`cod_ocorrencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `bairro_distrito_oco`
--
LOCK TABLES `bairro_distrito_oco` WRITE;
/*!40000 ALTER TABLE `bairro_distrito_oco` DISABLE KEYS */;
INSERT INTO `bairro_distrito_oco` VALUES (70,'Consolação',444,300),(71,'Santana',555,301),(72,'Pinheiro',988,302),(73,'Liberdade',141,303);
/*!40000 ALTER TABLE `bairro_distrito_oco` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `bairro_distrito_res`
--
DROP TABLE IF EXISTS `bairro_distrito_res`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bairro_distrito_res` (
`id_bairro_distrito` int NOT NULL,
`nome_bairro_distrito` varchar(30) DEFAULT NULL,
`codigo_bairro_distrito` int DEFAULT NULL,
`cod_residencia` int DEFAULT NULL,
PRIMARY KEY (`id_bairro_distrito`),
KEY `FK_bairro_distrito_res_2` (`cod_residencia`),
CONSTRAINT `FK_bairro_distrito_res_2` FOREIGN KEY (`cod_residencia`) REFERENCES `residencia` (`cod_residencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `bairro_distrito_res`
--
LOCK TABLES `bairro_distrito_res` WRITE;
/*!40000 ALTER TABLE `bairro_distrito_res` DISABLE KEYS */;
INSERT INTO `bairro_distrito_res` VALUES (1,'Vila Dimas',3333,500),(2,'Prudencia',1112,501),(3,'Independecia Sa',4545,502),(4,'Alvora',5231,503);
/*!40000 ALTER TABLE `bairro_distrito_res` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `cartorio`
--
DROP TABLE IF EXISTS `cartorio`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cartorio` (
`cod_cartorio` int NOT NULL,
`nome_cartorio` varchar(40) DEFAULT NULL,
`codigo` int DEFAULT NULL,
`nome_cemiterio` varchar(40) DEFAULT NULL,
PRIMARY KEY (`cod_cartorio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `cartorio`
--
LOCK TABLES `cartorio` WRITE;
/*!40000 ALTER TABLE `cartorio` DISABLE KEYS */;
INSERT INTO `cartorio` VALUES (177,'Vera Cruz',20,'Olinda Khaz'),(178,'Maga Filed',89,'Campos Helisios'),(179,'Gramat GUTSZ',56,'StonField'),(180,'Rosario Vwollew',17,'Campos Phoenix');
/*!40000 ALTER TABLE `cartorio` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `cartorio_do`
--
DROP TABLE IF EXISTS `cartorio_do`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cartorio_do` (
`fk_cod_cartorio` int DEFAULT NULL,
`fk_numero_DO` int DEFAULT NULL,
KEY `fk_cod_cartorio` (`fk_cod_cartorio`),
KEY `fk_numero_Do` (`fk_numero_DO`),
CONSTRAINT `fk_cod_cartorio` FOREIGN KEY (`fk_cod_cartorio`) REFERENCES `cartorio` (`cod_cartorio`),
CONSTRAINT `fk_numero_Do` FOREIGN KEY (`fk_numero_DO`) REFERENCES `do` (`numero_do`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `cartorio_do`
--
LOCK TABLES `cartorio_do` WRITE;
/*!40000 ALTER TABLE `cartorio_do` DISABLE KEYS */;
INSERT INTO `cartorio_do` VALUES (177,70020),(178,70021),(179,70022),(180,70023);
/*!40000 ALTER TABLE `cartorio_do` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `causa_externa`
--
DROP TABLE IF EXISTS `causa_externa`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `causa_externa` (
`cod_ce` int NOT NULL,
`descri_evento` text,
`cod_cco` int DEFAULT NULL,
PRIMARY KEY (`cod_ce`),
KEY `FK_causa_externa_2` (`cod_cco`),
CONSTRAINT `FK_causa_externa_2` FOREIGN KEY (`cod_cco`) REFERENCES `condi_causa_obito` (`cod_cco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `causa_externa`
--
LOCK TABLES `causa_externa` WRITE;
/*!40000 ALTER TABLE `causa_externa` DISABLE KEYS */;
INSERT INTO `causa_externa` VALUES (100,'Individuo morto por sete disparos de arma de fogo efetuados por duas pessoas devido a uma possivel briga em um bar',700),(101,'Individuo se envolveu em um acidente de transito onde o mesmo foi atropelado por um carro em alta velocidade foram prestados os devidos socorros porem o indivudio veio a falencia',701);
/*!40000 ALTER TABLE `causa_externa` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `causa_morte_parte1`
--
DROP TABLE IF EXISTS `causa_morte_parte1`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `causa_morte_parte1` (
`cod_cmp1` int NOT NULL,
`campo_a` varchar(45) DEFAULT NULL,
`campo_b` varchar(45) DEFAULT NULL,
`campo_c` varchar(45) DEFAULT NULL,
`campo_d` varchar(45) DEFAULT NULL,
`codigo_cid` int DEFAULT NULL,
`tempo_apro_morte` varchar(30) DEFAULT NULL,
`cod_dg` int DEFAULT NULL,
PRIMARY KEY (`cod_cmp1`),
KEY `FK_causa_morte_parte1_2` (`cod_dg`),
CONSTRAINT `FK_causa_morte_parte1_2` FOREIGN KEY (`cod_dg`) REFERENCES `diagnostico` (`cod_dg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `causa_morte_parte1`
--
LOCK TABLES `causa_morte_parte1` WRITE;
/*!40000 ALTER TABLE `causa_morte_parte1` DISABLE KEYS */;
INSERT INTO `causa_morte_parte1` VALUES (10,'Traumatismo Cranicefálico','Disparo Intecional de Arma de Fogo',NULL,NULL,NULL,'1 Dia',1),(11,'Choque Traumatico','Fraturas Múltiplas','Pedreste Atropelado por Carro',NULL,NULL,'5 Dias',2),(12,'Sarampo','Broncopneumonia',NULL,NULL,NULL,'10 Dias',3),(13,'Infecção Intra_Uterina','Ruptura Prematura da Membrana',NULL,NULL,NULL,'1 Dia',4);
/*!40000 ALTER TABLE `causa_morte_parte1` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `causa_morte_parte2`
--
DROP TABLE IF EXISTS `causa_morte_parte2`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `causa_morte_parte2` (
`cod_cmp2` int NOT NULL,
`campo1` varchar(45) DEFAULT NULL,
`campo2` varchar(45) DEFAULT NULL,
`tempo_apro_morte` varchar(30) DEFAULT NULL,
`cod_dg` int DEFAULT NULL,
PRIMARY KEY (`cod_cmp2`),
KEY `FK_causa_morte_parte2_2` (`cod_dg`),
CONSTRAINT `FK_causa_morte_parte2_2` FOREIGN KEY (`cod_dg`) REFERENCES `diagnostico` (`cod_dg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `causa_morte_parte2`
--
LOCK TABLES `causa_morte_parte2` WRITE;
/*!40000 ALTER TABLE `causa_morte_parte2` DISABLE KEYS */;
/*!40000 ALTER TABLE `causa_morte_parte2` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `cirurgia`
--
DROP TABLE IF EXISTS `cirurgia`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cirurgia` (
`cod_cir` int NOT NULL,
`sim` varchar(3) DEFAULT NULL,
`nao` varchar(3) DEFAULT NULL,
`ignorado` varchar(8) DEFAULT NULL,
`cod_dg` int DEFAULT NULL,
PRIMARY KEY (`cod_cir`),
KEY `FK_cirurgia_2` (`cod_dg`),
CONSTRAINT `FK_cirurgia_2` FOREIGN KEY (`cod_dg`) REFERENCES `diagnostico` (`cod_dg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `cirurgia`
--
LOCK TABLES `cirurgia` WRITE;
/*!40000 ALTER TABLE `cirurgia` DISABLE KEYS */;
INSERT INTO `cirurgia` VALUES (30,NULL,NULL,NULL,1),(31,NULL,NULL,NULL,2),(32,NULL,NULL,NULL,3),(33,'Sim',NULL,NULL,4);
/*!40000 ALTER TABLE `cirurgia` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `condi_causa_obito`
--
DROP TABLE IF EXISTS `condi_causa_obito`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `condi_causa_obito` (
`cod_cco` int NOT NULL,
`cod_obito` int DEFAULT NULL,
PRIMARY KEY (`cod_cco`),
KEY `cod_obito` (`cod_obito`),
CONSTRAINT `cod_obito` FOREIGN KEY (`cod_obito`) REFERENCES `obito` (`cod_obito`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `condi_causa_obito`
--
LOCK TABLES `condi_causa_obito` WRITE;
/*!40000 ALTER TABLE `condi_causa_obito` DISABLE KEYS */;
INSERT INTO `condi_causa_obito` VALUES (700,3000),(701,3001),(702,3002),(703,3003);
/*!40000 ALTER TABLE `condi_causa_obito` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `contato`
--
DROP TABLE IF EXISTS `contato`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contato` (
`cod_contato` int NOT NULL,
`fk_crm` int DEFAULT NULL,
`telefone` varchar(20) DEFAULT NULL,
`telefone_res` varchar(20) DEFAULT NULL,
`email` varchar(30) DEFAULT NULL,
PRIMARY KEY (`cod_contato`),
KEY `FK_contato_1` (`fk_crm`),
CONSTRAINT `FK_contato_1` FOREIGN KEY (`fk_crm`) REFERENCES `medico` (`crm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `contato`
--
LOCK TABLES `contato` WRITE;
/*!40000 ALTER TABLE `contato` DISABLE KEYS */;
INSERT INTO `contato` VALUES (1,1000,'61-992650001',NULL,'Joãogomes@gmail.com'),(2,1001,'34-993667701','81406080','MarcosSV@gmai.com'),(3,1002,'65-9981001','90786540','Carlamarreiro@hotmail.com');
/*!40000 ALTER TABLE `contato` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `declarante`
--
DROP TABLE IF EXISTS `declarante`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `declarante` (
`cod_declarante` int NOT NULL,
`nome_completo` varchar(45) DEFAULT NULL,
`assinatura` varchar(45) DEFAULT NULL,
`cod_responsavel` int DEFAULT NULL,
PRIMARY KEY (`cod_declarante`),
KEY `FK_declarante_2` (`cod_responsavel`),
CONSTRAINT `FK_declarante_2` FOREIGN KEY (`cod_responsavel`) REFERENCES `local_sem_medico` (`cod_responsavel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `declarante`
--
LOCK TABLES `declarante` WRITE;
/*!40000 ALTER TABLE `declarante` DISABLE KEYS */;
/*!40000 ALTER TABLE `declarante` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `diagnostico`
--
DROP TABLE IF EXISTS `diagnostico`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnostico` (
`cod_dg` int NOT NULL,
`cod_cco` int DEFAULT NULL,
PRIMARY KEY (`cod_dg`),
KEY `FK_Diagnostico_2` (`cod_cco`),
CONSTRAINT `FK_Diagnostico_2` FOREIGN KEY (`cod_cco`) REFERENCES `condi_causa_obito` (`cod_cco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `diagnostico`
--
LOCK TABLES `diagnostico` WRITE;
/*!40000 ALTER TABLE `diagnostico` DISABLE KEYS */;
INSERT INTO `diagnostico` VALUES (1,700),(2,701),(3,702),(4,703);
/*!40000 ALTER TABLE `diagnostico` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `do`
--
DROP TABLE IF EXISTS `doo`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doo` (
`numero_do` int NOT NULL,
PRIMARY KEY (`numero_do`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `do`
--
LOCK TABLES `doo` WRITE;
/*!40000 ALTER TABLE `doo` DISABLE KEYS */;
INSERT INTO `doo` VALUES (70020),(70021),(70022),(70023);
/*!40000 ALTER TABLE `doo` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `duracao_gestacao`
--
DROP TABLE IF EXISTS `duracao_gestacao`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `duracao_gestacao` (
`id_gestacao` int NOT NULL,
`cod_mae` int DEFAULT NULL,
`menor_22` varchar(20) DEFAULT NULL,
`22_27` varchar(20) DEFAULT NULL,
`28_31` varchar(20) DEFAULT NULL,
`32_36` varchar(20) DEFAULT NULL,
`37_41` varchar(20) DEFAULT NULL,
`42_mais` varchar(20) DEFAULT NULL,
`ignorado` varchar(20) DEFAULT NULL,
PRIMARY KEY (`id_gestacao`),
KEY `FK_duracao_gestacao_2` (`cod_mae`),
CONSTRAINT `FK_duracao_gestacao_2` FOREIGN KEY (`cod_mae`) REFERENCES `informacoes_mae` (`cod_mae`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `duracao_gestacao`
--
LOCK TABLES `duracao_gestacao` WRITE;
/*!40000 ALTER TABLE `duracao_gestacao` DISABLE KEYS */;
INSERT INTO `duracao_gestacao` VALUES (70,10,NULL,NULL,NULL,NULL,'39 semanas',NULL,NULL);
/*!40000 ALTER TABLE `duracao_gestacao` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `endereco_ocorrencia`
--
DROP TABLE IF EXISTS `endereco_ocorrencia`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco_ocorrencia` (
`id_endr_oco` int NOT NULL,
`cod_ocorrencia` int DEFAULT NULL,
`nome_enderc` varchar(30) DEFAULT NULL,
`numero` int DEFAULT NULL,
`complemento` varchar(30) DEFAULT NULL,
`codigo_enderc` int DEFAULT NULL,
`cep` int DEFAULT NULL,
PRIMARY KEY (`id_endr_oco`),
KEY `FK_endereco_ocorrencia_2` (`cod_ocorrencia`),
CONSTRAINT `FK_endereco_ocorrencia_2` FOREIGN KEY (`cod_ocorrencia`) REFERENCES `ocorrencia` (`cod_ocorrencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `endereco_ocorrencia`
--
LOCK TABLES `endereco_ocorrencia` WRITE;
/*!40000 ALTER TABLE `endereco_ocorrencia` DISABLE KEYS */;
INSERT INTO `endereco_ocorrencia` VALUES (2,301,'Rua Kennedy Viçosa',65,'Conjunto F Bloco C',222,79854781),(4,303,'Avenida das Nações',210,'Quadra 5 Bloco G',554,74526140);
/*!40000 ALTER TABLE `endereco_ocorrencia` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `escolaridade`
--
DROP TABLE IF EXISTS `escolaridade`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `escolaridade` (
`cod_escolaridade` int NOT NULL,
`nenhuma` varchar(20) DEFAULT NULL,
`um_tres` varchar(20) DEFAULT NULL,
`quatro_set` varchar(20) DEFAULT NULL,
`oito_onze` varchar(20) DEFAULT NULL,
`DOZE_mais` varchar(20) DEFAULT NULL,
`ignorado` varchar(10) DEFAULT NULL,
`ric` int DEFAULT NULL,
PRIMARY KEY (`cod_escolaridade`),
KEY `FK_escolaridade_2` (`ric`),
CONSTRAINT `FK_escolaridade_2` FOREIGN KEY (`ric`) REFERENCES `identificacao` (`ric`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `escolaridade`
--
LOCK TABLES `escolaridade` WRITE;
/*!40000 ALTER TABLE `escolaridade` DISABLE KEYS */;
INSERT INTO `escolaridade` VALUES (1,NULL,NULL,NULL,NULL,NULL,'ignorado',12702301),(2,NULL,NULL,NULL,'Fundamental',NULL,NULL,95414578),(3,NULL,NULL,NULL,NULL,'Superior',NULL,20343859),(4,NULL,NULL,NULL,NULL,NULL,'ignorado',65108579);
/*!40000 ALTER TABLE `escolaridade` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `escolaridade_mae`
--
DROP TABLE IF EXISTS `escolaridade_mae`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `escolaridade_mae` (
`cod_escolaridade` int NOT NULL,
`nenhuma` varchar(20) DEFAULT NULL,
`um_tres` varchar(20) DEFAULT NULL,
`quatro_set` varchar(20) DEFAULT NULL,
`oito_onze` varchar(20) DEFAULT NULL,
`12_mais` varchar(20) DEFAULT NULL,
`ignorado` varchar(10) DEFAULT NULL,
`cod_mae` int DEFAULT NULL,
PRIMARY KEY (`cod_escolaridade`),
KEY `FK_escolaridade_mae_2` (`cod_mae`),
CONSTRAINT `FK_escolaridade_mae_2` FOREIGN KEY (`cod_mae`) REFERENCES `informacoes_mae` (`cod_mae`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `escolaridade_mae`
--
LOCK TABLES `escolaridade_mae` WRITE;
/*!40000 ALTER TABLE `escolaridade_mae` DISABLE KEYS */;
INSERT INTO `escolaridade_mae` VALUES (1,NULL,NULL,NULL,NULL,NULL,'Ignorado',10);
/*!40000 ALTER TABLE `escolaridade_mae` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `estabelecimento_saude`
--
DROP TABLE IF EXISTS `estabelecimento_saude`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estabelecimento_saude` (
`estb_saude` int NOT NULL,
`nome_estb` varchar(30) DEFAULT NULL,
`codigo_estb` int DEFAULT NULL,
`id_local_ocorrencia` int DEFAULT NULL,
PRIMARY KEY (`estb_saude`),
KEY `FK_estabelecimento_saude_2` (`id_local_ocorrencia`),
CONSTRAINT `FK_estabelecimento_saude_2` FOREIGN KEY (`id_local_ocorrencia`) REFERENCES `local_ocorrencia` (`id_local_ocorrencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `estabelecimento_saude`
--
LOCK TABLES `estabelecimento_saude` WRITE;
/*!40000 ALTER TABLE `estabelecimento_saude` DISABLE KEYS */;
/*!40000 ALTER TABLE `estabelecimento_saude` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `estado_civil`
--
DROP TABLE IF EXISTS `estado_civil`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado_civil` (
`cod_estado_civil` int NOT NULL,
`solteiro` varchar(10) DEFAULT NULL,
`casado` varchar(10) DEFAULT NULL,
`viuvo` varchar(10) DEFAULT NULL,
`separado_judicial` varchar(20) DEFAULT NULL,
`uniao_Estavel` varchar(30) DEFAULT NULL,
`ignorado` varchar(10) DEFAULT NULL,
`ric` int DEFAULT NULL,
PRIMARY KEY (`cod_estado_civil`),
KEY `FK_estado_civil_2` (`ric`),
CONSTRAINT `FK_estado_civil_2` FOREIGN KEY (`ric`) REFERENCES `identificacao` (`ric`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `estado_civil`
--
LOCK TABLES `estado_civil` WRITE;
/*!40000 ALTER TABLE `estado_civil` DISABLE KEYS */;
INSERT INTO `estado_civil` VALUES (40,NULL,'Casado',NULL,NULL,NULL,NULL,12702301),(41,'Solteiro',NULL,NULL,NULL,NULL,NULL,20343859),(42,NULL,NULL,NULL,null,NULL,
'Ignorado',65108579),(43,NULL,NULL,NULL,NULL,'União Estavel',NULL,95414578);
/*!40000 ALTER TABLE `estado_civil` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `exame_complementar`
--
DROP TABLE IF EXISTS `exame_complementar`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exame_complementar` (
`cod_ex` int NOT NULL,
`sim` varchar(3) DEFAULT NULL,
`nao` varchar(3) DEFAULT NULL,
`ignorado` varchar(8) DEFAULT NULL,
`cod_dg` int DEFAULT NULL,
PRIMARY KEY (`cod_ex`),
KEY `FK_exame_complementar_2` (`cod_dg`),
CONSTRAINT `FK_exame_complementar_2` FOREIGN KEY (`cod_dg`) REFERENCES `diagnostico` (`cod_dg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `exame_complementar`
--
LOCK TABLES `exame_complementar` WRITE;
/*!40000 ALTER TABLE `exame_complementar` DISABLE KEYS */;
INSERT INTO `exame_complementar` VALUES (2000,NULL,'Não',NULL,1),(2001,NULL,'Não',NULL,2),(2002,NULL,'Não',NULL,3),(2003,NULL,'Não',NULL,4);
/*!40000 ALTER TABLE `exame_complementar` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `feto`
--
DROP TABLE IF EXISTS `feto`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feto` (
`id_feto` int NOT NULL,
`cod_mae` int DEFAULT NULL,
`peso_nasc` varchar(15) DEFAULT NULL,
`numero_Dn` int DEFAULT NULL,
PRIMARY KEY (`id_feto`),
KEY `FK_feto_2` (`cod_mae`),
CONSTRAINT `FK_feto_2` FOREIGN KEY (`cod_mae`) REFERENCES `informacoes_mae` (`cod_mae`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `feto`
--
LOCK TABLES `feto` WRITE;
/*!40000 ALTER TABLE `feto` DISABLE KEYS */;
INSERT INTO `feto` VALUES (100,10,'2.60 Kilos',333540);
/*!40000 ALTER TABLE `feto` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `filhos_tidos`
--
DROP TABLE IF EXISTS `filhos_tidos`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filhos_tidos` (
`cod_filhos` int NOT NULL,
`cod_mae` int DEFAULT NULL,
`nasc_vivos` int DEFAULT NULL,
`nasc_mortos` int DEFAULT NULL,
PRIMARY KEY (`cod_filhos`),
KEY `FK_filhos_tidos_2` (`cod_mae`),
CONSTRAINT `FK_filhos_tidos_2` FOREIGN KEY (`cod_mae`) REFERENCES `informacoes_mae` (`cod_mae`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `filhos_tidos`
--
LOCK TABLES `filhos_tidos` WRITE;
/*!40000 ALTER TABLE `filhos_tidos` DISABLE KEYS */;
INSERT INTO `filhos_tidos` VALUES (1,10,1,NULL);
/*!40000 ALTER TABLE `filhos_tidos` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `fonte_informacao`
--
DROP TABLE IF EXISTS `fonte_informacao`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fonte_informacao` (
`cod_fi` int NOT NULL,
`cod_ce` int DEFAULT NULL,
`boletim` varchar(8) DEFAULT NULL,
`hospital` varchar(8) DEFAULT NULL,
`familia` varchar(8) DEFAULT NULL,
`outros` varchar(8) DEFAULT NULL,
`ignorado` varchar(8) DEFAULT NULL,
PRIMARY KEY (`cod_fi`),
KEY `FK_fonte_informacao_2` (`cod_ce`),
CONSTRAINT `FK_fonte_informacao_2` FOREIGN KEY (`cod_ce`) REFERENCES `causa_externa` (`cod_ce`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `fonte_informacao`
--
LOCK TABLES `fonte_informacao` WRITE;
/*!40000 ALTER TABLE `fonte_informacao` DISABLE KEYS */;
INSERT INTO `fonte_informacao` VALUES (30,100,'Boletim',NULL,NULL,NULL,NULL),(31,101,'Boletim',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `fonte_informacao` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `idade`
--
DROP TABLE IF EXISTS `idade`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `idade` (
`anos_completo` smallint DEFAULT NULL,
`ate_um_ano` smallint DEFAULT NULL,
`ate_um_mes` smallint DEFAULT NULL,
`ate_um_dia` smallint DEFAULT NULL,
`ate_uma_hora` smallint DEFAULT NULL,
`cod_idade` int NOT NULL,
`ric` int DEFAULT NULL,
PRIMARY KEY (`cod_idade`),
KEY `FK_idade_2` (`ric`),
CONSTRAINT `FK_idade_2` FOREIGN KEY (`ric`) REFERENCES `identificacao` (`ric`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `idade`
--
LOCK TABLES `idade` WRITE;
/*!40000 ALTER TABLE `idade` DISABLE KEYS */;
INSERT INTO `idade` VALUES (21,NULL,NULL,NULL,NULL,1,12702301),(26,NULL,NULL,NULL,NULL,2,95414578),(41,NULL,NULL,NULL,NULL,3,20343859),(NULL,1,NULL,NULL,NULL,4,65108579);
/*!40000 ALTER TABLE `idade` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `identificacao`
--
DROP TABLE IF EXISTS `identificacao`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `identificacao` (
`nome_falecido` varchar(45) DEFAULT NULL,
`nome_mae` varchar(45) DEFAULT NULL,
`nome_pai` varchar(45) DEFAULT NULL,
`data_nasc` date DEFAULT NULL,
`ric` int NOT NULL,
`fk_numero_do` int DEFAULT NULL,
PRIMARY KEY (`ric`),
KEY `FK_identificacao_2` (`fk_numero_do`),
CONSTRAINT `FK_identificacao_2` FOREIGN KEY (`fk_numero_do`) REFERENCES `do` (`numero_do`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `identificacao`
--
LOCK TABLES `identificacao` WRITE;
/*!40000 ALTER TABLE `identificacao` DISABLE KEYS */;
INSERT INTO `identificacao` VALUES ('Yuri Vilela Gomes','Gabriela Julia Vilela Gomes','Junior Vilela Gomes','2000-09-27',12702301,70021),('Kayo Alcantra Barbosa Lima','Marcela Fernanda Barbolsa Lima','Tiago Barbosa Lima','1980-05-19',20343859,70020),('Enzo Gabriel Nunes','Izabela Maria Nunes','Fernando Khlem Nunes','2021-10-20',65108579,70023),('Denise Katia Almeida da Cunha','Maria Almeida da Cunha','Osvaldo Almeida da Cunha','1995-04-06',95414578,70022);
/*!40000 ALTER TABLE `identificacao` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `informacoes_mae`
--
DROP TABLE IF EXISTS `informacoes_mae`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informacoes_mae` (
`cod_mae` int NOT NULL,
`cod_fetal_menor` int DEFAULT NULL,
`idade` varchar(10) DEFAULT NULL,
PRIMARY KEY (`cod_mae`),
KEY `FK_informacoes_mae_2` (`cod_fetal_menor`),
CONSTRAINT `FK_informacoes_mae_2` FOREIGN KEY (`cod_fetal_menor`) REFERENCES `obito_fetal_menor_um_ano` (`cod_fetal_menor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `informacoes_mae`
--
LOCK TABLES `informacoes_mae` WRITE;
/*!40000 ALTER TABLE `informacoes_mae` DISABLE KEYS */;
INSERT INTO `informacoes_mae` VALUES (10,8000,'26 Anos');
/*!40000 ALTER TABLE `informacoes_mae` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `local_ocorrencia`
--
DROP TABLE IF EXISTS `local_ocorrencia`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `local_ocorrencia` (
`id_local_ocorrencia` int NOT NULL,
`hospital` varchar(10) DEFAULT NULL,
`outro_estb_saude` varchar(20) DEFAULT NULL,
`domicilio` varchar(10) DEFAULT NULL,
`via_publica` varchar(20) DEFAULT NULL,
`outros` varchar(10) DEFAULT NULL,
`ignorado` varchar(20) DEFAULT NULL,
`cod_ocorrencia` int DEFAULT NULL,
PRIMARY KEY (`id_local_ocorrencia`),
KEY `FK_local_ocorrencia_2` (`cod_ocorrencia`),
CONSTRAINT `FK_local_ocorrencia_2` FOREIGN KEY (`cod_ocorrencia`) REFERENCES `ocorrencia` (`cod_ocorrencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `local_ocorrencia`
--
LOCK TABLES `local_ocorrencia` WRITE;
/*!40000 ALTER TABLE `local_ocorrencia` DISABLE KEYS */;
INSERT INTO `local_ocorrencia` VALUES (10,NULL,NULL,'Domicilio',NULL,NULL,NULL,300),(11,NULL,NULL,'Domicilio',NULL,NULL,NULL,302),(12,'Hospital',NULL,NULL,NULL,NULL,NULL,301),(13,'Hospital',NULL,NULL,NULL,NULL,NULL,303);
/*!40000 ALTER TABLE `local_ocorrencia` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `local_sem_medico`
--
DROP TABLE IF EXISTS `local_sem_medico`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `local_sem_medico` (
`cod_responsavel` int NOT NULL,
PRIMARY KEY (`cod_responsavel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `local_sem_medico`
--
LOCK TABLES `local_sem_medico` WRITE;
/*!40000 ALTER TABLE `local_sem_medico` DISABLE KEYS */;
/*!40000 ALTER TABLE `local_sem_medico` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `logradouro`
--
DROP TABLE IF EXISTS `logradouro`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logradouro` (
`id_logradouro` int NOT NULL,
`cod_residencia` int DEFAULT NULL,
`nome_endr` varchar(30) DEFAULT NULL,
`numero` int DEFAULT NULL,
`complemento` varchar(30) DEFAULT NULL,
`codigo` int DEFAULT NULL,
`cep` int DEFAULT NULL,
PRIMARY KEY (`id_logradouro`),
KEY `FK_logradouro_2` (`cod_residencia`),
CONSTRAINT `FK_logradouro_2` FOREIGN KEY (`cod_residencia`) REFERENCES `residencia` (`cod_residencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `logradouro`
--
LOCK TABLES `logradouro` WRITE;
/*!40000 ALTER TABLE `logradouro` DISABLE KEYS */;
INSERT INTO `logradouro` VALUES (1,500,'Condominio Moradas Dos Nobres',76,'Conjunto G',7060,73365591),(2,501,'Rua Kennedy Santos',264,'Quadra 5 Bloco G',1030,76355911),(3,502,'Piraraquara',2020,'Conjunto K Bloco F',5696,74463599),(4,503,'Rua Portelio Filho',6174,'null',1040,793552527);
/*!40000 ALTER TABLE `logradouro` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `logradouro_obito`
--
DROP TABLE IF EXISTS `logradouro_obito`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logradouro_obito` (
`id_logradouro` int NOT NULL,
`nome_endrc` varchar(40) DEFAULT NULL,
`cod_ce` int DEFAULT NULL,
PRIMARY KEY (`id_logradouro`),
KEY `FK_logradouro_obito_2` (`cod_ce`),
CONSTRAINT `FK_logradouro_obito_2` FOREIGN KEY (`cod_ce`) REFERENCES `causa_externa` (`cod_ce`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `logradouro_obito`
--
LOCK TABLES `logradouro_obito` WRITE;
/*!40000 ALTER TABLE `logradouro_obito` DISABLE KEYS */;
INSERT INTO `logradouro_obito` VALUES (70,'Vila Martins Quadra F',100),(71,'Avenida Prudente Braga',101);
/*!40000 ALTER TABLE `logradouro_obito` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `medico`
--
DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico` (
`crm` int NOT NULL,
`data_atestado` date DEFAULT NULL,
`assinatura` varchar(40) DEFAULT NULL,
`nome_medico` varchar(60) DEFAULT NULL,
PRIMARY KEY (`crm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `medico`
--
LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES (1000,'2017-04-17','João G.B','João Gomes Bizzera'),(1001,'2018-05-20','Marcos S.V','Marcos Silva Viera'),(1002,'2016-07-30','Carla M.R','Carla Marreiro Ribeiro');
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `medico_do`
--
DROP TABLE IF EXISTS `medico_do`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medico_do` (
`fk_crm` int DEFAULT NULL,
`fk_numero_do` int DEFAULT NULL,
`fk_cod_responsavel` int DEFAULT NULL,
KEY `FK_Medico_do_1` (`fk_crm`),
KEY `FK_Medico_do_2` (`fk_numero_do`),
KEY `FK_Medico_do_3` (`fk_cod_responsavel`),
CONSTRAINT `FK_Medico_do_1` FOREIGN KEY (`fk_crm`) REFERENCES `medico` (`crm`),
CONSTRAINT `FK_Medico_do_2` FOREIGN KEY (`fk_numero_do`) REFERENCES `do` (`numero_do`),
CONSTRAINT `FK_Medico_do_3` FOREIGN KEY (`fk_cod_responsavel`) REFERENCES `local_sem_medico` (`cod_responsavel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `medico_do`
--
LOCK TABLES `medico_do` WRITE;
/*!40000 ALTER TABLE `medico_do` DISABLE KEYS */;
INSERT INTO `medico_do` VALUES (1000,70020,NULL),(1001,70021,NULL),(1002,70022,NULL),(1000,70023,NULL);
/*!40000 ALTER TABLE `medico_do` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `morte_gpa`
--
DROP TABLE IF EXISTS `morte_gpa`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `morte_gpa` (
`cod_gpa` int NOT NULL,
`sim` char(3) DEFAULT NULL,
`nao` char(3) DEFAULT NULL,
`ignorado` char(10) DEFAULT NULL,
`cod_mg` int DEFAULT NULL,
PRIMARY KEY (`cod_gpa`),
KEY `FK_morte_gpa_2` (`cod_mg`),
CONSTRAINT `FK_morte_gpa_2` FOREIGN KEY (`cod_mg`) REFERENCES `obito_mulher` (`cod_mg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `morte_gpa`
--
LOCK TABLES `morte_gpa` WRITE;
/*!40000 ALTER TABLE `morte_gpa` DISABLE KEYS */;
INSERT INTO `morte_gpa` VALUES (1,'Sim',NULL,NULL,600);
/*!40000 ALTER TABLE `morte_gpa` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `morte_puerperio`
--
DROP TABLE IF EXISTS `morte_puerperio`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `morte_puerperio` (
`cod_mp` int NOT NULL,
`sim_42dias` varchar(15) DEFAULT NULL,
`sim_43dias_1ano` varchar(15) DEFAULT NULL,
`nao` varchar(3) DEFAULT NULL,
`ignorado` varchar(8) DEFAULT NULL,
`cod_mg` int DEFAULT NULL,
PRIMARY KEY (`cod_mp`),
KEY `FK_morte_puerperio_2` (`cod_mg`),
CONSTRAINT `FK_morte_puerperio_2` FOREIGN KEY (`cod_mg`) REFERENCES `obito_mulher` (`cod_mg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `morte_puerperio`
--
LOCK TABLES `morte_puerperio` WRITE;
/*!40000 ALTER TABLE `morte_puerperio` DISABLE KEYS */;
INSERT INTO `morte_puerperio` VALUES (100,NULL,NULL,'Não',NULL,600);
/*!40000 ALTER TABLE `morte_puerperio` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `morte_rel_parto`
--
DROP TABLE IF EXISTS `morte_rel_parto`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `morte_rel_parto` (
`id_morte_parto` int NOT NULL,
`cod_mae` int DEFAULT NULL,
`antes` varchar(5) DEFAULT NULL,
`durante` varchar(7) DEFAULT NULL,
`depois` varchar(6) DEFAULT NULL,
`ignorado` varchar(8) DEFAULT NULL,
PRIMARY KEY (`id_morte_parto`),
KEY `FK_morte_rel_parto_2` (`cod_mae`),
CONSTRAINT `FK_morte_rel_parto_2` FOREIGN KEY (`cod_mae`) REFERENCES `informacoes_mae` (`cod_mae`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `morte_rel_parto`
--
LOCK TABLES `morte_rel_parto` WRITE;
/*!40000 ALTER TABLE `morte_rel_parto` DISABLE KEYS */;
INSERT INTO `morte_rel_parto` VALUES (90,10,NULL,NULL,'Depois',NULL);
/*!40000 ALTER TABLE `morte_rel_parto` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `municipio_cartorio`
--
DROP TABLE IF EXISTS `municipio_cartorio`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `municipio_cartorio` (
`id_municipio` int NOT NULL,
`nome_municipio` varchar(40) DEFAULT NULL,
`uf` char(2) DEFAULT NULL,
`cod_cartorio` int DEFAULT NULL,
PRIMARY KEY (`id_municipio`),
KEY `FK_municipio_cartorio_2` (`cod_cartorio`),
CONSTRAINT `FK_municipio_cartorio_2` FOREIGN KEY (`cod_cartorio`) REFERENCES `cartorio` (`cod_cartorio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `municipio_cartorio`
--
LOCK TABLES `municipio_cartorio` WRITE;
/*!40000 ALTER TABLE `municipio_cartorio` DISABLE KEYS */;
/*!40000 ALTER TABLE `municipio_cartorio` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `municipio_oco`
--
DROP TABLE IF EXISTS `municipio_oco`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `municipio_oco` (
`id_municipio` int NOT NULL,
`nome_municipio` varchar(30) DEFAULT NULL,
`uf` char(2) DEFAULT NULL,
`codigo` int DEFAULT NULL,
`cod_ocorrencia` int DEFAULT NULL,
PRIMARY KEY (`id_municipio`),
KEY `FK_municipio_oco_2` (`cod_ocorrencia`),
CONSTRAINT `FK_municipio_oco_2` FOREIGN KEY (`cod_ocorrencia`) REFERENCES `ocorrencia` (`cod_ocorrencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `municipio_oco`
--
LOCK TABLES `municipio_oco` WRITE;
/*!40000 ALTER TABLE `municipio_oco` DISABLE KEYS */;
INSERT INTO `municipio_oco` VALUES (1,'São Paulo','SP',3698,300),(2,'Santa Catarina','SC',4578,301),(3,'Distrito Federal','DF',3695,302),(4,'São Paulo','SP',7012,303);
/*!40000 ALTER TABLE `municipio_oco` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `municipio_res`
--
DROP TABLE IF EXISTS `municipio_res`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `municipio_res` (
`id_municipio` int NOT NULL,
`nome_municipio` varchar(30) DEFAULT NULL,
`uf` char(2) DEFAULT NULL,
`codigo_municipio` int DEFAULT NULL,
`cod_residencia` int DEFAULT NULL,
PRIMARY KEY (`id_municipio`),
KEY `FK_municipio_res_2` (`cod_residencia`),
CONSTRAINT `FK_municipio_res_2` FOREIGN KEY (`cod_residencia`) REFERENCES `residencia` (`cod_residencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `municipio_res`
--
LOCK TABLES `municipio_res` WRITE;
/*!40000 ALTER TABLE `municipio_res` DISABLE KEYS */;
INSERT INTO `municipio_res` VALUES (20,'Distrito Federal','DF',7,500),(21,'Distrito Federal','DF',7,501),(22,'Minas Gerais','MG',19,502),(23,'Santa Catarina','SC',33,503);
/*!40000 ALTER TABLE `municipio_res` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `naturalidade`
--
DROP TABLE IF EXISTS `naturalidade`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `naturalidade` (
`cod_natural` int NOT NULL,
`municipio` varchar(40) DEFAULT NULL,
`uf` char(2) DEFAULT NULL,
`pais_origem` varchar(20) DEFAULT NULL,
`ric` int DEFAULT NULL,
PRIMARY KEY (`cod_natural`),
KEY `FK_naturalidade_2` (`ric`),
CONSTRAINT `FK_naturalidade_2` FOREIGN KEY (`ric`) REFERENCES `identificacao` (`ric`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `naturalidade`
--
LOCK TABLES `naturalidade` WRITE;
/*!40000 ALTER TABLE `naturalidade` DISABLE KEYS */;
INSERT INTO `naturalidade` VALUES (1,'Distrito Federal','DF',NULL,20343859),(2,'Distrito Federal','DF',NULL,12702301),(3,'Minas Gerais','MG',NULL,95414578),(4,'Santa Catarina','SC',NULL,65108579);
/*!40000 ALTER TABLE `naturalidade` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `necropcia`
--
DROP TABLE IF EXISTS `necropcia`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `necropcia` (
`cod_necro` int NOT NULL,
`sim` varchar(3) DEFAULT NULL,
`nao` varchar(3) DEFAULT NULL,
`ignorado` varchar(8) DEFAULT NULL,
`cod_dg` int DEFAULT NULL,
PRIMARY KEY (`cod_necro`),
KEY `FK_necropcia_2` (`cod_dg`),
CONSTRAINT `FK_necropcia_2` FOREIGN KEY (`cod_dg`) REFERENCES `diagnostico` (`cod_dg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `necropcia`
--
LOCK TABLES `necropcia` WRITE;
/*!40000 ALTER TABLE `necropcia` DISABLE KEYS */;
INSERT INTO `necropcia` VALUES (100,NULL,NULL,NULL,1),(101,NULL,NULL,NULL,2),(102,NULL,NULL,NULL,3),(103,NULL,'Não',NULL,4);
/*!40000 ALTER TABLE `necropcia` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `obito`
--
DROP TABLE IF EXISTS `obito`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obito` (
`cod_obito` int NOT NULL,
`ric` int NOT NULL,
`data_obito` date DEFAULT NULL,
`hora_obito` time DEFAULT NULL,
`fetal` varchar(5) NOT NULL,
`nao_fetal` varchar(10) NOT NULL,
PRIMARY KEY (`cod_obito`),
KEY `ric` (`ric`),
CONSTRAINT `obito_ibfk_1` FOREIGN KEY (`ric`) REFERENCES `identificacao` (`ric`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `obito`
--
LOCK TABLES `obito` WRITE;
/*!40000 ALTER TABLE `obito` DISABLE KEYS */;
INSERT INTO `obito` VALUES (3000,12702301,'2017-07-14','20:14:12','','Não Fetal'),(3001,20343859,'2020-10-26','17:20:30','','Não Fetal'),(3002,65108579,'2021-11-03','14:40:20','','Não Fetal'),(3003,95414578,'2019-06-25','22:04:10','Fetal','');
/*!40000 ALTER TABLE `obito` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `obito_fetal_menor_um_ano`
--
DROP TABLE IF EXISTS `obito_fetal_menor_um_ano`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obito_fetal_menor_um_ano` (
`cod_fetal_menor` int NOT NULL,
`cod_obito` int DEFAULT NULL,
PRIMARY KEY (`cod_fetal_menor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `obito_fetal_menor_um_ano`
--
LOCK TABLES `obito_fetal_menor_um_ano` WRITE;
/*!40000 ALTER TABLE `obito_fetal_menor_um_ano` DISABLE KEYS */;
INSERT INTO `obito_fetal_menor_um_ano` VALUES (8000,3003);
/*!40000 ALTER TABLE `obito_fetal_menor_um_ano` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `obito_mulher`
--
DROP TABLE IF EXISTS `obito_mulher`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obito_mulher` (
`cod_mg` int NOT NULL,
`cod_cco` int DEFAULT NULL,
PRIMARY KEY (`cod_mg`),
KEY `FK_obito_mulher_2` (`cod_cco`),
CONSTRAINT `FK_obito_mulher_2` FOREIGN KEY (`cod_cco`) REFERENCES `condi_causa_obito` (`cod_cco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `obito_mulher`
--
LOCK TABLES `obito_mulher` WRITE;
/*!40000 ALTER TABLE `obito_mulher` DISABLE KEYS */;
INSERT INTO `obito_mulher` VALUES (600,703);
/*!40000 ALTER TABLE `obito_mulher` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `ocorrencia`
--
DROP TABLE IF EXISTS `ocorrencia`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ocorrencia` (
`cod_ocorrencia` int NOT NULL,
`ric` int DEFAULT NULL,
PRIMARY KEY (`cod_ocorrencia`),
KEY `FK_ocorrencia_2` (`ric`),
CONSTRAINT `FK_ocorrencia_2` FOREIGN KEY (`ric`) REFERENCES `identificacao` (`ric`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `ocorrencia`
--
LOCK TABLES `ocorrencia` WRITE;
/*!40000 ALTER TABLE `ocorrencia` DISABLE KEYS */;
INSERT INTO `ocorrencia` VALUES (300,12702301),(302,20343859),(303,65108579),(301,95414578);
/*!40000 ALTER TABLE `ocorrencia` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `ocupacao`
--
DROP TABLE IF EXISTS `ocupacao`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ocupacao` (
`id_ocupacao` int NOT NULL,
`ocupacao_habitual` text,
`codigo_ocup` int DEFAULT NULL,
`ric` int DEFAULT NULL,
PRIMARY KEY (`id_ocupacao`),
KEY `FK_ocupacao_2` (`ric`),
CONSTRAINT `FK_ocupacao_2` FOREIGN KEY (`ric`) REFERENCES `identificacao` (`ric`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `ocupacao`
--
LOCK TABLES `ocupacao` WRITE;
/*!40000 ALTER TABLE `ocupacao` DISABLE KEYS */;
INSERT INTO `ocupacao` VALUES (100,'Cabeleleiro e motorista de aplicativo na maior parte do tempo',223,12702301),(101,'Engenheiro Civil trabalhando em obras de Reforma Governamental, pelo governo do Distrito Federal',334,20343859),(102,'Trabalhou como Diarista na maior parte do tempo em sua vida',556,95414578),(103,null,799,65108579);
/*!40000 ALTER TABLE `ocupacao` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `ocupacao_mae`
--
DROP TABLE IF EXISTS `ocupacao_mae`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ocupacao_mae` (
`id_ocupacao` int NOT NULL,
`ocupacao_habitual` text,
`codigo_ocup` int DEFAULT NULL,
`cod_mae` int DEFAULT NULL,
PRIMARY KEY (`id_ocupacao`),
KEY `FK_ocupacao_mae_2` (`cod_mae`),
CONSTRAINT `FK_ocupacao_mae_2` FOREIGN KEY (`cod_mae`) REFERENCES `informacoes_mae` (`cod_mae`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `ocupacao_mae`
--
LOCK TABLES `ocupacao_mae` WRITE;
/*!40000 ALTER TABLE `ocupacao_mae` DISABLE KEYS */;
INSERT INTO `ocupacao_mae` VALUES (20,'Estudante de Direito',33,10);
/*!40000 ALTER TABLE `ocupacao_mae` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `raca_cor`
--
DROP TABLE IF EXISTS `raca_cor`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raca_cor` (
`cod_raca_cor` int NOT NULL,
`branco` varchar(10) DEFAULT NULL,
`parda` varchar(10) DEFAULT NULL,
`preta` varchar(10) DEFAULT NULL,
`amarela` varchar(10) DEFAULT NULL,
`indigena` varchar(10) DEFAULT NULL,
`ric` int DEFAULT NULL,
PRIMARY KEY (`cod_raca_cor`),
KEY `FK_raca_cor_2` (`ric`),
CONSTRAINT `FK_raca_cor_2` FOREIGN KEY (`ric`) REFERENCES `identificacao` (`ric`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `raca_cor`
--
LOCK TABLES `raca_cor` WRITE;
/*!40000 ALTER TABLE `raca_cor` DISABLE KEYS */;
INSERT INTO `raca_cor` VALUES (1,'Branco',NULL,NULL,NULL,NULL,12702301),(2,NULL,NULL,'Preta',NULL,NULL,95414578),(3,NULL,'Parda',NULL,NULL,NULL,20343859),(4,'Branco',NULL,NULL,NULL,NULL,65108579);
/*!40000 ALTER TABLE `raca_cor` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `registro_cartorio`
--
DROP TABLE IF EXISTS `registro_cartorio`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro_cartorio` (
`id_registro` int NOT NULL,
`cod_cartorio` int DEFAULT NULL,
`numero_registro` int DEFAULT NULL,
`data_registro` date DEFAULT NULL,
PRIMARY KEY (`id_registro`),
KEY `FK_registro_cartorio_2` (`cod_cartorio`),
CONSTRAINT `FK_registro_cartorio_2` FOREIGN KEY (`cod_cartorio`) REFERENCES `cartorio` (`cod_cartorio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `registro_cartorio`
--
LOCK TABLES `registro_cartorio` WRITE;
/*!40000 ALTER TABLE `registro_cartorio` DISABLE KEYS */;
/*!40000 ALTER TABLE `registro_cartorio` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `residencia`
--
DROP TABLE IF EXISTS `residencia`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `residencia` (
`cod_residencia` int NOT NULL,
`ric` int DEFAULT NULL,
PRIMARY KEY (`cod_residencia`),
KEY `FK_residencia_2` (`ric`),
CONSTRAINT `FK_residencia_2` FOREIGN KEY (`ric`) REFERENCES `identificacao` (`ric`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `residencia`
--
LOCK TABLES `residencia` WRITE;
/*!40000 ALTER TABLE `residencia` DISABLE KEYS */;
INSERT INTO `residencia` VALUES (500,12702301),(501,20343859),(502,65108579),(503,95414578);
/*!40000 ALTER TABLE `residencia` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `sexo`
--
DROP TABLE IF EXISTS `sexo`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sexo` (
`cod_sexo` int NOT NULL,
`masculino` varchar(10) DEFAULT NULL,
`feminino` varchar(10) DEFAULT NULL,
`ignorado` varchar(10) DEFAULT NULL,
`ric` int DEFAULT NULL,
PRIMARY KEY (`cod_sexo`),
KEY `FK_sexo_2` (`ric`),
CONSTRAINT `FK_sexo_2` FOREIGN KEY (`ric`) REFERENCES `identificacao` (`ric`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `sexo`
--
LOCK TABLES `sexo` WRITE;
/*!40000 ALTER TABLE `sexo` DISABLE KEYS */;
INSERT INTO `sexo` VALUES (20,'Masculino',NULL,NULL,12702301),(21,'Masculino',NULL,NULL,65108579),(22,'Masculino',NULL,NULL,20343859),(23,NULL,'Feminino',NULL,95414578);
/*!40000 ALTER TABLE `sexo` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `testemunha1`
--
DROP TABLE IF EXISTS `testemunha1`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testemunha1` (
`cod_testemunha1` int NOT NULL,
`assinatura1` varchar(45) DEFAULT NULL,
`doc_identidade1` int DEFAULT NULL,
`cod_responsavel` int DEFAULT NULL,
PRIMARY KEY (`cod_testemunha1`),
KEY `FK_testemunha1_2` (`cod_responsavel`),
CONSTRAINT `FK_testemunha1_2` FOREIGN KEY (`cod_responsavel`) REFERENCES `local_sem_medico` (`cod_responsavel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `testemunha1`
--
LOCK TABLES `testemunha1` WRITE;
/*!40000 ALTER TABLE `testemunha1` DISABLE KEYS */;
/*!40000 ALTER TABLE `testemunha1` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `testemunha2`
--
DROP TABLE IF EXISTS `testemunha2`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testemunha2` (
`cod_testemunha2` int NOT NULL,
`assinatura2` varchar(45) DEFAULT NULL,
`doc_identidade2` int DEFAULT NULL,
`cod_responsavel` int DEFAULT NULL,
PRIMARY KEY (`cod_testemunha2`),
KEY `FK_testemunha2_2` (`cod_responsavel`),
CONSTRAINT `FK_testemunha2_2` FOREIGN KEY (`cod_responsavel`) REFERENCES `local_sem_medico` (`cod_responsavel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `testemunha2`
--
LOCK TABLES `testemunha2` WRITE;
/*!40000 ALTER TABLE `testemunha2` DISABLE KEYS */;
/*!40000 ALTER TABLE `testemunha2` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `tipo_gravidez`
--
DROP TABLE IF EXISTS `tipo_gravidez`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_gravidez` (
`id_tipo_gravidez` int NOT NULL,
`cod_mae` int DEFAULT NULL,
`unica` varchar(8) DEFAULT NULL,
`dupla` varchar(8) DEFAULT NULL,
`tripla_mais` varchar(8) DEFAULT NULL,
`ignorado` varchar(8) DEFAULT NULL,
PRIMARY KEY (`id_tipo_gravidez`),
KEY `FK_tipo_gravidez_2` (`cod_mae`),
CONSTRAINT `FK_tipo_gravidez_2` FOREIGN KEY (`cod_mae`) REFERENCES `informacoes_mae` (`cod_mae`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `tipo_gravidez`
--
LOCK TABLES `tipo_gravidez` WRITE;
/*!40000 ALTER TABLE `tipo_gravidez` DISABLE KEYS */;
INSERT INTO `tipo_gravidez` VALUES (1,10,'Unica',NULL,NULL,NULL);
/*!40000 ALTER TABLE `tipo_gravidez` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `tipo_obito`
--
DROP TABLE IF EXISTS `tipo_obito`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_obito` (
`cod_tip` int NOT NULL,
`cod_ce` int DEFAULT NULL,
`acidente` varchar(8) DEFAULT NULL,
`suicidio` varchar(10) DEFAULT NULL,
`homicidio` varchar(10) DEFAULT NULL,
`outros` varchar(6) DEFAULT NULL,
`ignorado` varchar(8) DEFAULT NULL,
PRIMARY KEY (`cod_tip`),
KEY `FK_Tipo_obito_2` (`cod_ce`),
CONSTRAINT `FK_Tipo_obito_2` FOREIGN KEY (`cod_ce`) REFERENCES `causa_externa` (`cod_ce`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `tipo_obito`
--
LOCK TABLES `tipo_obito` WRITE;
/*!40000 ALTER TABLE `tipo_obito` DISABLE KEYS */;
INSERT INTO `tipo_obito` VALUES (1,100,NULL,NULL,'Homicidio',NULL,NULL),(2,101,'Acidente',NULL,null,NULL,NULL);
/*!40000 ALTER TABLE `tipo_obito` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `tipo_parto`
--
DROP TABLE IF EXISTS `tipo_parto`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_parto` (
`id_tipo_parto` int NOT NULL,
`cod_mae` int DEFAULT NULL,
`vaginal` varchar(7) DEFAULT NULL,
`cesareo` varchar(7) DEFAULT NULL,
`ignorado` varchar(7) DEFAULT NULL,
PRIMARY KEY (`id_tipo_parto`),
KEY `FK_tipo_parto_2` (`cod_mae`),
CONSTRAINT `FK_tipo_parto_2` FOREIGN KEY (`cod_mae`) REFERENCES `informacoes_mae` (`cod_mae`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `tipo_parto`
--
LOCK TABLES `tipo_parto` WRITE;
/*!40000 ALTER TABLE `tipo_parto` DISABLE KEYS */;
INSERT INTO `tipo_parto` VALUES (50,10,'Vaginal',NULL,NULL);
/*!40000 ALTER TABLE `tipo_parto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;



-- Procedure que consulta informações de todos os médicos cadastrados no banco com base no seu número de CRM e traz os respectivos números das declarações de óbito que cada um preencheu.
create procedure BuscarMedico(numero int)
select m.crm CRM,
m.nome_medico as 'Nome do Medico',
m.assinatura as 'Assinatura',
m.data_atestado as 'Data de Atestado',
c.telefone as 'Numero do Celular',
c.telefone_Res as 'Telefone residencial',
c.email as 'Email',
a.sim as 'Atendimento ao Falecido?',
a.substituto as 'Atendimento ao Falecido?',
d.numero_Do as 'Do Preenchida',
f.nome_falecido as 'Nome do Falecido'
from medico m
join contato c
on m.crm = c.fk_crm
join atendimento_falecido a
on m.crm = a.fk_crm
join medico_do md
on m.crm = md.fk_crm
join doo d
on d.numero_do = md.fk_numero_Do
join identificacao f
on f.fk_numero_Do = d.numero_Do
where m.crm = numero;
call buscarmedico(1000)
-- CRMS Disponíveis para consulta
1000
1001
1002
-- Procedure que traz todas informações relacionadas aos falecidos consultando pelo número do RIC ou pelo número da Declaração de óbito.
create procedure infofalecido(numero int)
SELECT d.numero_do 'Numero Do',
F.ric 'Numero Ric',
F.NOME_FALECIDO 'Nome Falecido',
F.DATA_NASC 'Data de Nascimento',
F.NOME_MAE 'Nome da Mãe',
F.NOME_PAI 'Nome do Pai',
N.MUNICIPIO 'Municipio Natural',
N.UF,
e.cod_Estado_civil 'Codigo Estado Civil',
e.solteiro 'Solteiro',
e.casado 'Casado',
e.separado_judicial 'Separado Judicialmente',
e.uniao_estavel 'União Estável',
e.ignorado 'Ignorado',
I.ANOS_COMPLETO 'Idade',
i.ate_um_ano 'Idade ate um ano',
s.cod_sexo 'Codigo Sexo',
S.MASCULINO,
S.FEMININO,
R.branco 'Cor Branca',
r.parda 'Cor Parda',
r.preta 'Cor Preta',
r.amarela 'Cor amarela',
r.indigena 'Cor Indigena',
Es.oito_Onze 'Nivel escolar',
es.doze_mais 'Nivel escolar',
es.ignorado 'Nivel escolar',
OP.OCUPACAO_HABITUAL 'Ocupação Habitual',
rd.cod_residencia 'Codigo de Residencia',
ms.nome_municipio 'Municipio da Residencia',
ms.uf UF,
ms.codigo_municipio 'Codigo Municipio',
ld.nome_endr 'Nome do Endereço',
ld.numero 'Numero do Endereço',
ld.complemento 'Complemento',
ld.cep 'Numero do CEP'
FROM doo d
join identificacao f
on d.numero_do = f.fk_numero_Do
JOIN NATURALIDADE N
ON F.RIC = N.RIC
JOIN ESTADO_CIVIL E
ON F.RIC = E.RIC
JOIN IDADE I
ON F.RIC = I.RIC
JOIN SEXO S
ON F.RIC = S.RIC
JOIN ESCOLARIDADE ES
ON F.RIC = ES.RIC
JOIN OCUPACAO OP
ON F.RIC = OP.RIC
JOIN RACA_COR R
ON F.RIC = R.RIC
join residencia rd
on f.ric = rd.ric
join municipio_res ms
on rd.cod_Residencia = ms.cod_residencia
join logradouro ld
on rd.cod_residencia = ld.cod_residencia
where f.ric = numero or f.fk_numero_Do = numero;
call infofalecido(12702301);
-- Números de RIC disponíveis para consulta
12702301
20343859
65108579
95414578
-- Números de DO disponiveis para consulta
70020
70021
70022
70023
-- Procedure que traz informações da Do consultada pelo número da Do e do cartório onde o falecido foi registrado seu respectivo nome e informações do medico que preencheu a Do.
create procedure BuscarDO(NUMERO INT)
select d.numero_do as 'Numero DO',
c.nome_cartorio as 'Nome Cartorio',
c.nome_cemiterio as 'Nome Cemiteiro',
f.ric Ric,
f.nome_falecido as 'Nome do falecido',
f.nome_mae as 'Nome da mãe',
f.nome_Pai as 'Nome do pai',
f.data_nasc as 'Data de Nascimento',
m.nome_Medico 'Nome Medico',
m.assinatura as 'Assinatura do Medico',
m.crm as CRM
from doo d
join cartorio_Do cd
on cd.fk_numero_do = d.numero_Do
join cartorio c
on c.cod_cartorio = cd.fk_cod_cartorio
join identificacao f
on f.fk_numero_Do = d.numero_Do
join medico_do md
on d.numero_do = md.fk_numero_DO
join medico m
on m.crm = md.fk_crm
WHERE D.NUMERO_DO = NUMERO;
call buscardo(70023);


-- Procedure que traz informações relacionadas aos obitos em mulheres, consultada pelo Numero da Do, trazendo todas informações relevantes para a identificação da pessoa e as causas do seu óbito.
create procedure InfoMulher(numero int)
select dd.numero_Do as 'Numero DO',
f.ric RIC,
f.nome_falecido as 'Nome Falecido',
f.data_nasc as 'Data de Nascimento',
s.masculino 'Masculino',
s.feminino 'Feminino',
n.municipio 'Municipio Natural',
n.uf Uf,
l.id_local_ocorrencia 'Id Ocorrencia',
l.hospital Hospital,
l.outro_Estb_saude 'Outro Estabelecimento de saude',
l.domicilio Domicilio,
l.via_publica 'Via Pública',
o.cod_obito as 'Codigo Óbito',
cm.campo_a as 'Campo A',cm.campo_b as 'Campo B',cm.campo_c as 'Campo C',cm.campo_d as 'Campo D',
g.sim aS 'Morte Gravidez, Parto, Aborto?',
dgt.*,
tg.unica AS 'Tipo de Gravidez',tg.dupla as 'Tipo de Gravidez',tg.tripla_mais as 'Tipo de Gravidez',
tp.vaginal as 'Tipo de Parto',
tp.cesareo as 'Tipo de Parto',
tp.ignorado as 'Tipo de Parto',
op.ocupacao_habitual as 'Ocupação Habitual',
fe.id_Feto 'Id do Rescem Nascido',
fe.peso_nasc as 'Peso ao Nascer',
fe.numero_dn as 'Numero Declaração de Nascido'
from doo dd
join identificacao f
on dd.numero_do = f.fk_numero_Do
join sexo s
on f.ric = s.ric
join naturalidade n
on f.ric = n.ric
join ocorrencia oc
on f.ric = oc.ric
join local_ocorrencia l
on oc.cod_ocorrencia = l.cod_ocorrencia
join obito o
on f.ric = o.ric
join condi_causa_obito ca
on o.cod_obito = ca.cod_obito
join diagnostico d
on ca.cod_cco = d.cod_cco
join causa_morte_parte1 cm
on d.cod_Dg = cm.cod_Dg
join obito_mulher om
on ca.cod_cco = om.cod_cco
join morte_gpa g
on om.cod_mg = g.cod_mg
join obito_fetal_menor_um_ano ofm
on o.cod_obito = ofm.cod_obito
join informacoes_mae im
on ofm.cod_fetal_menor = im.cod_fetal_menor
join duracao_gestacao dgt
on im.cod_mae = dgt.cod_mae
join tipo_gravidez tg
on im.cod_mae = tg.cod_mae
join tipo_parto tp
on im.cod_mae = tp.cod_mae
join ocupacao_mae op
on im.cod_mae = op.cod_mae
join feto fe
on im.cod_mae = fe.cod_mae
where dd.numero_Do = numero;
call infomulher(70022);
-- Numero da Do disponivel para consulta
70022





