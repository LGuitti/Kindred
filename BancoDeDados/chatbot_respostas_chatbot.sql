-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: chatbot
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `respostas_chatbot`
--

DROP TABLE IF EXISTS `respostas_chatbot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `respostas_chatbot` (
  `id` int NOT NULL AUTO_INCREMENT,
  `intencao` varchar(255) NOT NULL,
  `resposta` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respostas_chatbot`
--

LOCK TABLES `respostas_chatbot` WRITE;
/*!40000 ALTER TABLE `respostas_chatbot` DISABLE KEYS */;
INSERT INTO `respostas_chatbot` VALUES (1,'Saudacao','Olá! Sou o assistente Kindred. Em que posso ajudar?;Oi! Como posso ser útil hoje?;Olá, como posso ajudar você?'),(2,'Informacao_do_Produto','Nossos produtos incluem impressoras a jato de tinta e laser. Elas são conhecidas por sua qualidade e confiabilidade.;Temos uma variedade de impressoras, desde modelos compactos até impressoras multifuncionais.'),(3,'Suporte_Tecnico','Encaminharemos você para nosso departamento especializado. Também pode entrar em contato com nossa equipe de suporte pelo número 123-456-7890.;Estamos aqui para ajudar com quaisquer problemas técnicos que você possa enfrentar.'),(4,'Garantia','Nossas impressoras têm garantia padrão de 1 ano. Pode estender a garantia mediante pagamento adicional.;Oferecemos opções de garantia estendida para maior tranquilidade.'),(5,'Instalacao_da_Impressora','Para instalar sua impressora, siga as instruções no manual do usuário ou visite nosso site para um guia passo a passo.;Estamos aqui para ajudar com qualquer dúvida durante o processo de instalação.'),(6,'Problemas_com_Impressao','Se estiver enfrentando problemas de impressão, verifique se há papel suficiente na bandeja e se os drivers estão atualizados.;Além disso, certifique-se de que a impressora esteja corretamente conectada e configurada.'),(7,'Xingamento','Este tipo de comportamento não é apropriado e aceito nesta conversa;Pedimos que mantenha a conversa respeitosa e focada em solucionar dúvidas ou problemas.'),(8,'Frustracao','Sinto muito não ter conseguido te ajudar. Estou melhorando para melhor te atender;Compreendemos sua frustração e estamos trabalhando constantemente para melhorar nossos serviços.'),(9,'Encerramento','Obrigado e tenha um otimo dia! Não se esqueça de nos avaliar caso ainda não tenha feito :);Agradecemos por escolher nossos produtos. Se precisar de mais ajuda, estaremos aqui.');
/*!40000 ALTER TABLE `respostas_chatbot` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-07  6:37:48
