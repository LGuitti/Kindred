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
-- Table structure for table `dados_treinamento`
--

DROP TABLE IF EXISTS `dados_treinamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dados_treinamento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `intencao` varchar(255) NOT NULL,
  `dado` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=381 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dados_treinamento`
--

LOCK TABLES `dados_treinamento` WRITE;
/*!40000 ALTER TABLE `dados_treinamento` DISABLE KEYS */;
INSERT INTO `dados_treinamento` VALUES (1,'Saudacao','oie oiee'),(2,'Saudacao','ola tudo bem kindred'),(3,'Saudacao','oi poderia me ajudar auxiliar'),(4,'Saudacao','hey kindred'),(5,'Saudacao','como voce esta kindred'),(6,'Saudacao','ola querido chatbot'),(7,'Saudacao','oi estou aqui kindred'),(8,'Saudacao','ola como vai kindred'),(9,'Saudacao','saudacoes kindred'),(10,'Saudacao','cumprimentos kindred'),(11,'Saudacao','oi quero ajuda'),(12,'Saudacao','ola kindred como preciso de voce'),(13,'Saudacao','como foi seu dia kindred'),(14,'Saudacao','ola tudo tranquilo kindred'),(15,'Saudacao','oie estou aqui kindred'),(16,'Saudacao','bom dia como posso ajudar'),(17,'Saudacao','ola estou aqui kindred'),(18,'Saudacao','e ai tudo bem kindred'),(19,'Saudacao','hey como vai kindred'),(20,'Saudacao','ola amigo kindred'),(21,'Saudacao','oi kindred tudo bem'),(22,'Saudacao','necessito ajuda hoje kindred'),(23,'Saudacao','ola kindred saudacoes'),(24,'Saudacao','oi kindred estou disponivel'),(25,'Saudacao','como voce esta hoje kindred'),(26,'Saudacao','ola kindred qual e a boa'),(27,'Saudacao','e ai kindred tudo certo'),(28,'Saudacao','oi estou aqui kindred'),(29,'Saudacao','ola como posso preciso de auxilio hoje'),(30,'Saudacao','saudacoes kindred estou online'),(31,'Saudacao','cumprimentos kindred necessito ajuda'),(32,'Saudacao','ola kindred estou a disposicao'),(33,'Saudacao','oi kindred como foi seu dia'),(34,'Saudacao','e ai kindred tudo tranquilo'),(35,'Saudacao','oie kindred como poderia me tirar uma duvida'),(36,'Saudacao','bom dia kindred estou pronto'),(37,'Saudacao','ola kindred saudacoes estou online'),(38,'Saudacao','como voce esta kindred hoje'),(39,'Saudacao','ola kindred pode me ajudar'),(40,'Saudacao','e ai kindred'),(59,'Informacao_do_Produto','quais sao seus produtos'),(60,'Informacao_do_Produto','me fale sobre seus produtos'),(61,'Informacao_do_Produto','quais produtos voces oferecem'),(62,'Informacao_do_Produto','conte-me sobre sua linha de produtos'),(63,'Informacao_do_Produto','quais sao suas ofertas de produtos'),(64,'Informacao_do_Produto','descreva seus produtos por favor'),(65,'Informacao_do_Produto','o que sao os produtos da empresa'),(66,'Informacao_do_Produto','quais sao os beneficios dos seus produtos'),(67,'Informacao_do_Produto','fale-me sobre a qualidade dos produtos'),(68,'Informacao_do_Produto','quais sao os recursos dos produtos'),(69,'Informacao_do_Produto','o que diferencia seus produtos'),(70,'Informacao_do_Produto','quais sao os precos dos produtos'),(71,'Informacao_do_Produto','como sao seus produtos'),(72,'Informacao_do_Produto','de-me informacoes sobre seus itens'),(73,'Informacao_do_Produto','quais sao as opcoes de personalizacao'),(74,'Informacao_do_Produto','como posso fazer um pedido'),(75,'Informacao_do_Produto','como posso verificar o estoque'),(76,'Informacao_do_Produto','o que os clientes estao dizendo'),(77,'Informacao_do_Produto','como funciona o suporte pos-venda'),(78,'Informacao_do_Produto','quais sao as opcoes de garantia'),(79,'Informacao_do_Produto','como posso obter assistencia'),(80,'Informacao_do_Produto','me fale sobre a politica de garantia'),(81,'Informacao_do_Produto','o que torna seus produtos especiais'),(82,'Informacao_do_Produto','quais produtos sao mais populares'),(83,'Informacao_do_Produto','como posso personalizar um produto'),(84,'Informacao_do_Produto','quais sao os produtos mais vendidos'),(85,'Informacao_do_Produto','me diga sobre a garantia'),(86,'Informacao_do_Produto','como funciona a entrega'),(87,'Informacao_do_Produto','quais sao as opcoes de pagamento'),(88,'Informacao_do_Produto','como posso obter mais informacoes'),(89,'Informacao_do_Produto','quais sao os detalhes da garantia'),(90,'Informacao_do_Produto','como posso entrar em contato com o suporte'),(91,'Informacao_do_Produto','como posso devolver um produto'),(92,'Informacao_do_Produto','quais sao os requisitos do sistema'),(93,'Informacao_do_Produto','como funciona o processo de compra'),(94,'Informacao_do_Produto','quais sao as politicas de devolucao'),(95,'Informacao_do_Produto','como posso comparar produtos'),(96,'Suporte_Tecnico','como faco para entrar em contato com o suporte tecnico'),(97,'Suporte_Tecnico','preciso de ajuda tecnica o que fazer'),(98,'Suporte_Tecnico','como entrar em contato com o suporte'),(99,'Suporte_Tecnico','quem posso contatar para suporte'),(100,'Suporte_Tecnico','como posso obter assistencia tecnica'),(101,'Suporte_Tecnico','estou com problemas ajude-me'),(102,'Suporte_Tecnico','meu dispositivo esta com defeito o que eu faco'),(103,'Suporte_Tecnico','como solucionar problemas'),(104,'Suporte_Tecnico','minha impressora nao funciona ajuda'),(105,'Suporte_Tecnico','o que fazer em caso de falhas tecnicas'),(106,'Suporte_Tecnico','como resolver problemas tecnicos'),(107,'Suporte_Tecnico','estou perdido ajuda tecnica por favor'),(108,'Suporte_Tecnico','onde encontrar suporte para meu dispositivo'),(109,'Suporte_Tecnico','como posso obter suporte rapido'),(110,'Suporte_Tecnico','como faco para entrar em contato com o suporte tecnico'),(111,'Suporte_Tecnico','qual e o horario de funcionamento do suporte'),(112,'Suporte_Tecnico','como posso verificar o status do meu chamado'),(113,'Suporte_Tecnico','quais sao os metodos de suporte disponiveis'),(114,'Suporte_Tecnico','como posso reiniciar meu dispositivo'),(115,'Suporte_Tecnico','onde encontrar manuais de usuario'),(116,'Suporte_Tecnico','quais sao os requisitos de sistema'),(117,'Suporte_Tecnico','como fazer uma reinicializacao de fabrica'),(118,'Suporte_Tecnico','o que fazer em caso de problemas de conexao'),(119,'Suporte_Tecnico','como fazer uma atualizacao de firmware'),(120,'Suporte_Tecnico','onde encontrar drivers atualizados'),(121,'Suporte_Tecnico','como realizar uma solucao de problemas basica'),(122,'Suporte_Tecnico','o que e o suporte premium'),(123,'Suporte_Tecnico','onde encontrar tutoriais em video'),(124,'Suporte_Tecnico','quais sao as etapas para resolver um problema'),(125,'Suporte_Tecnico','como posso diagnosticar problemas no meu dispositivo'),(126,'Suporte_Tecnico','quais sao os passos para solucionar problemas tecnicos'),(127,'Suporte_Tecnico','como verificar se ha atualizacoes de software'),(128,'Suporte_Tecnico','onde encontrar a secao de perguntas frequentes'),(129,'Suporte_Tecnico','como posso obter suporte remoto'),(130,'Suporte_Tecnico','quais sao os principais problemas que o suporte pode resolver'),(131,'Suporte_Tecnico','como entrar em contato com o suporte via chat'),(132,'Suporte_Tecnico','quais sao as informacoes necessarias ao contatar o suporte'),(133,'Suporte_Tecnico','o que fazer antes de entrar em contato com o suporte'),(134,'Suporte_Tecnico','como posso agendar um horario com o suporte'),(135,'Suporte_Tecnico','quais sao os servicos incluidos no suporte tecnico'),(136,'Suporte_Tecnico','como posso reportar um problema ao suporte'),(137,'Suporte_Tecnico','o que fazer se eu nao estiver satisfeito com o suporte'),(138,'Suporte_Tecnico','quais sao os canais de suporte disponiveis'),(139,'Suporte_Tecnico','como posso obter suporte presencial'),(140,'Suporte_Tecnico','quais sao as opcoes de suporte apos o horario comercial'),(141,'Suporte_Tecnico','como funciona o suporte tecnico remoto'),(142,'Suporte_Tecnico','quais sao os requisitos para obter suporte remoto'),(143,'Suporte_Tecnico','como posso fornecer feedback sobre o suporte'),(144,'Suporte_Tecnico','o que fazer se eu precisar de suporte fora do horario comercial'),(145,'Suporte_Tecnico','quais sao os beneficios do suporte premium'),(146,'Suporte_Tecnico','como posso obter suporte para produtos fora de garantia'),(147,'Garantia','qual e a politica de garantia dos produtos'),(148,'Garantia','quanto tempo dura a garantia'),(149,'Garantia','como funciona a garantia dos produtos'),(150,'Garantia','fale sobre a garantia'),(151,'Garantia','quais sao os termos da garantia'),(152,'Garantia','posso estender a garantia'),(153,'Garantia','qual e o processo de acionar a garantia'),(154,'Garantia','como reivindicar a garantia'),(155,'Garantia','quais sao as condicoes da garantia'),(156,'Garantia','o que acontece se meu produto falhar'),(157,'Garantia','a garantia inclui reparos gratuitos'),(158,'Garantia','qual e a politica de retorno'),(159,'Garantia','como funciona a garantia estendida'),(160,'Garantia','posso comprar garantia adicional'),(161,'Garantia','como posso registrar minha garantia'),(162,'Garantia','quais sao as exclusoes da garantia'),(163,'Garantia','como verificar o status da minha garantia'),(164,'Garantia','qual e o procedimento de devolucao'),(165,'Garantia','o que acontece apos o termino da garantia'),(166,'Garantia','quais danos nao sao cobertos pela garantia'),(167,'Garantia','como solicitar servico de garantia'),(168,'Garantia','quais sao os centros de servico autorizados'),(169,'Garantia','o que fazer em caso de perda da nota fiscal'),(170,'Garantia','como obter garantia estendida'),(171,'Garantia','posso transferir a garantia para outra pessoa'),(172,'Garantia','como rastrear uma reivindicacao de garantia'),(173,'Garantia','o que e considerado uso indevido'),(174,'Garantia','como obter uma copia da politica de garantia'),(175,'Garantia','quais sao os passos para acionar a garantia'),(176,'Garantia','quais sao as opcoes de reparo cobertas pela garantia'),(177,'Garantia','como solicitar uma substituicao sob garantia'),(178,'Garantia','quais sao os prazos de garantia para diferentes produtos'),(179,'Garantia','como obter suporte pos-garantia'),(180,'Garantia','quais sao as restricoes da garantia'),(181,'Garantia','como funciona a garantia internacional'),(182,'Garantia','quais sao as garantias estendidas disponiveis'),(183,'Garantia','como obter um certificado de garantia'),(184,'Garantia','quais sao os documentos necessarios para acionar a garantia'),(185,'Garantia','como posso estender a garantia apos a compra'),(186,'Garantia','quais sao as politicas de devolucao durante o periodo de garantia'),(187,'Instalacao_da_Impressora','como instalo a impressora'),(188,'Instalacao_da_Impressora','quais sao as etapas de instalacao'),(189,'Instalacao_da_Impressora','preciso de ajuda para configurar minha impressora'),(190,'Instalacao_da_Impressora','como configurar a impressora'),(191,'Instalacao_da_Impressora','quais cabos devo conectar'),(192,'Instalacao_da_Impressora','qual e o software necessario'),(193,'Instalacao_da_Impressora','preciso de instrucoes passo a passo'),(194,'Instalacao_da_Impressora','como instalar os drivers da impressora'),(195,'Instalacao_da_Impressora','onde encontrar o manual de instalacao'),(196,'Instalacao_da_Impressora','quais sao os requisitos do sistema'),(197,'Instalacao_da_Impressora','como fazer a primeira impressao'),(198,'Instalacao_da_Impressora','posso usar a impressora em rede'),(199,'Instalacao_da_Impressora','preciso de ajuda com a configuracao'),(200,'Instalacao_da_Impressora','qual e a melhor localizacao para minha impressora'),(201,'Instalacao_da_Impressora','posso instalar a impressora sem o CD'),(202,'Instalacao_da_Impressora','como conectar a impressora a uma rede Wi-Fi'),(203,'Instalacao_da_Impressora','como verificar a compatibilidade do sistema'),(204,'Instalacao_da_Impressora','qual e o cabo recomendado para a impressora'),(205,'Instalacao_da_Impressora','como atualizar os drivers da impressora'),(206,'Instalacao_da_Impressora','quais sao os melhores tipos de papel'),(207,'Instalacao_da_Impressora','como instalar a tinta na impressora'),(208,'Instalacao_da_Impressora','como verificar se a impressora esta online'),(209,'Instalacao_da_Impressora','como configurar a impressora em um Mac'),(210,'Instalacao_da_Impressora','onde encontrar o guia de instalacao'),(211,'Instalacao_da_Impressora','qual e a primeira coisa a fazer apos a instalacao'),(212,'Instalacao_da_Impressora','posso imprimir sem fio'),(213,'Instalacao_da_Impressora','como verificar a qualidade da impressao'),(214,'Instalacao_da_Impressora','quais sao os problemas comuns na instalacao da impressora'),(215,'Instalacao_da_Impressora','quais sao os passos basicos para configurar a impressora'),(216,'Instalacao_da_Impressora','como fazer a calibracao da impressora'),(217,'Instalacao_da_Impressora','onde encontrar ajuda online para a instalacao da impressora'),(218,'Instalacao_da_Impressora','quais sao as configuracoes recomendadas para a impressora'),(219,'Instalacao_da_Impressora','como solucionar problemas durante a instalacao da impressora'),(220,'Instalacao_da_Impressora','quais sao os cuidados a serem tomados durante a instalacao'),(221,'Instalacao_da_Impressora','como posso personalizar as configuracoes da impressora'),(222,'Instalacao_da_Impressora','quais sao as opcoes de conectividade disponiveis para a impressora'),(223,'Instalacao_da_Impressora','como configurar a impressora para um ambiente de escritorio'),(224,'Instalacao_da_Impressora','onde posso encontrar tutoriais em video sobre a instalacao da impressora'),(225,'Instalacao_da_Impressora','como instalar uma impressora sem um CD de instalacao'),(226,'Instalacao_da_Impressora','quais sao as etapas de configuracao da impressora'),(227,'Instalacao_da_Impressora','como configurar a impressora para impressao sem margens'),(228,'Instalacao_da_Impressora','quais sao os requisitos de sistema para a impressora'),(229,'Instalacao_da_Impressora','como verificar a compatibilidade da impressora com dispositivos moveis'),(230,'Instalacao_da_Impressora','quais sao as configuracoes recomendadas para otimizar a impressao'),(231,'Instalacao_da_Impressora','como posso imprimir a partir de um dispositivo movel'),(232,'Instalacao_da_Impressora','quais sao as configuracoes de rede recomendadas para a impressora'),(233,'Instalacao_da_Impressora','como posso configurar a impressora para impressao frente e verso'),(234,'Instalacao_da_Impressora','onde posso encontrar suporte online para a instalacao da impressora'),(235,'Instalacao_da_Impressora','quais sao as etapas para configurar a impressora em uma rede domestica'),(236,'Instalacao_da_Impressora','como configurar a impressora para impressao a partir de um smartphone'),(237,'Problemas_com_Impressao','estou enfrentando problemas de impressao'),(238,'Problemas_com_Impressao','minha impressora nao imprime'),(239,'Problemas_com_Impressao','o que fazer com paginas em branco'),(240,'Problemas_com_Impressao','como lidar com atolamentos de papel'),(241,'Problemas_com_Impressao','impressao com falhas o que fazer'),(242,'Problemas_com_Impressao','como resolver problemas de qualidade de impressao'),(243,'Problemas_com_Impressao','minhas paginas estao manchadas'),(244,'Problemas_com_Impressao','problemas de conectividade com a impressora'),(245,'Problemas_com_Impressao','erros de impressao ajuda por favor'),(246,'Problemas_com_Impressao','como lidar com mensagens de erro na impressora'),(247,'Problemas_com_Impressao','minhas cores nao estao sendo impressas corretamente'),(248,'Problemas_com_Impressao','ajuda com a calibracao da impressora'),(249,'Problemas_com_Impressao','solucoes para problemas comuns de impressao'),(250,'Problemas_com_Impressao','como solucionar problemas de papel travado'),(251,'Problemas_com_Impressao','minha impressora esta imprimindo paginas em branco'),(252,'Problemas_com_Impressao','o que fazer com mensagens de erro de impressao'),(253,'Problemas_com_Impressao','como verificar a tinta restante na impressora'),(254,'Problemas_com_Impressao','como alinhar os cartuchos de tinta'),(255,'Problemas_com_Impressao','minhas impressoes estao borradas'),(256,'Problemas_com_Impressao','como digitalizar um documento'),(257,'Problemas_com_Impressao','a impressao esta muito lenta como resolver'),(258,'Problemas_com_Impressao','como verificar a qualidade da impressao'),(259,'Problemas_com_Impressao','problemas comuns com toner e tinta'),(260,'Problemas_com_Impressao','impressao em cores erradas'),(261,'Problemas_com_Impressao','como lidar com manchas de tinta na pagina'),(262,'Problemas_com_Impressao','como economizar tinta ao imprimir'),(263,'Problemas_com_Impressao','minha impressora nao esta se conectando'),(264,'Problemas_com_Impressao','como verificar a qualidade da impressao em uma impressora a laser'),(265,'Problemas_com_Impressao','quais sao as possiveis causas de impressao desbotada'),(266,'Problemas_com_Impressao','como resolver problemas de alimentacao de papel na impressora'),(267,'Problemas_com_Impressao','minha impressora esta imprimindo com listras'),(268,'Problemas_com_Impressao','como corrigir impressao com falhas em uma impressora a jato de tinta'),(269,'Problemas_com_Impressao','quais sao os passos para solucionar problemas de impressao em uma impressora multifuncional'),(270,'Problemas_com_Impressao','como lidar com folhas em branco ao imprimir em uma impressora a laser'),(271,'Problemas_com_Impressao','minha impressora esta imprimindo com sombras o que fazer'),(272,'Problemas_com_Impressao','como solucionar problemas de digitalizacao em uma impressora multifuncional'),(273,'Problemas_com_Impressao','quais sao as possiveis causas de impressao com riscos'),(274,'Problemas_com_Impressao','como corrigir impressao desalinhada em uma impressora a jato de tinta'),(275,'Problemas_com_Impressao','minha impressora esta imprimindo com pontos brancos o que fazer'),(276,'Problemas_com_Impressao','como solucionar problemas de alimentacao de papel em uma impressora a jato de tinta'),(277,'Problemas_com_Impressao','quais sao as possiveis causas de impressao com manchas'),(278,'Problemas_com_Impressao','como corrigir impressao com sombras em uma impressora a laser'),(279,'Problemas_com_Impressao','minha impressora esta imprimindo com cores erradas o que fazer'),(280,'Problemas_com_Impressao','como solucionar problemas de impressao em uma impressora wireless'),(281,'Problemas_com_Impressao','quais sao as possiveis causas de impressao com linhas'),(282,'Problemas_com_Impressao','como corrigir impressao com listras em uma impressora a laser'),(283,'Problemas_com_Impressao','minha impressora esta imprimindo com texto ilegivel o que fazer'),(284,'Problemas_com_Impressao','como solucionar problemas de impressao em uma impressora de etiquetas'),(285,'Problemas_com_Impressao','quais sao as possiveis causas de impressao com falhas'),(286,'Problemas_com_Impressao','como corrigir impressao desalinhada em uma impressora a laser'),(287,'Problemas_com_Impressao','minha impressora esta imprimindo com manchas coloridas o que fazer'),(288,'Frustracao','nao conseguiu me ajudar'),(289,'Frustracao','estou frustrado porque nao resolveu meu problema'),(290,'Frustracao','nao foi capaz de oferecer a assistencia que eu precisava'),(291,'Frustracao','estou decepcionado com a incapacidade em ajudar'),(292,'Frustracao','nao atendeu minhas expectativas e estou frustrado'),(293,'Frustracao','estou insatisfeito porque nao resolveu meu dilema'),(294,'Frustracao','nao conseguiu fornecer uma solucao adequada'),(295,'Frustracao','estou aborrecido porque nao conseguiu me orientar'),(296,'Frustracao','nao foi eficaz em resolver meu problema e estou irritado'),(297,'Frustracao','estou chateado porque nao pôde me auxiliar'),(298,'Frustracao','nao satisfez minha necessidade de ajuda e estou incomodado'),(299,'Frustracao','estou frustrado porque nao conseguiu me entender'),(300,'Frustracao','kindred nao ofereceu uma resposta satisfatoria e estou desapontado'),(301,'Frustracao','estou descontente porque kindred nao resolveu minha questao'),(302,'Frustracao','kindred nao foi capaz de me auxiliar de maneira eficiente'),(303,'Frustracao','estou aborrecido porque kindred nao conseguiu atender minhas expectativas'),(304,'Frustracao','kindred nao cumpriu minha expectativa de ajuda e estou irritado'),(305,'Frustracao','estou chateado porque kindred nao pôde fornecer a orientacao necessaria'),(306,'Encerramento','obrigado pela interacao encerrando por agora'),(307,'Encerramento','agradeço pela colaboração até mais tarde'),(308,'Encerramento','tudo certo encerrando a conversa por agora'),(309,'Encerramento','ok encerrando a interação até a próxima'),(310,'Encerramento','agradeço pela ajuda encerrando por aqui'),(311,'Encerramento','beleza encerrando a sessão até breve'),(312,'Encerramento','entendido encerrando a conversa até mais'),(313,'Encerramento','valeu chatbot encerrando por agora'),(314,'Encerramento','certo agradeço pela assistência até logo'),(315,'Encerramento','tudo esclarecido encerrando por aqui'),(316,'Encerramento','ótimoc encerrando a interação por agora'),(317,'Encerramento','agradeço pela atenção até a próxima vez'),(318,'Encerramento','certo encerrando a conversa até breve'),(319,'Encerramento','entendido encerrando por agora valeu'),(320,'Encerramento','tudo certo Kindred até a próxima vez'),(321,'Encerramento','valeu chatbot encerrando a interação'),(322,'Encerramento','agradeço pela colaboração até mais'),(323,'Encerramento','beleza encerrando por aqui até logo'),(324,'Encerramento','ok encerrando a conversa até breve'),(325,'Encerramento','obrigado pela ajuda encerrando por agora'),(326,'Encerramento','está tudo claro até mais tarde'),(327,'Encerramento','agradeço pela assistência até a próxima'),(328,'Encerramento','certo encerrando a interação por agora'),(329,'Encerramento','tudo esclarecido encerrando por aqui'),(330,'Encerramento','ótimoc encerrando a conversa até breve'),(331,'Encerramento','obrigado Kindred até logo'),(332,'Encerramento','beleza vou encerrar por agora'),(333,'Xingamento','chatbot inutil'),(334,'Xingamento','kindred burro burra'),(335,'Xingamento','você é horrivel'),(336,'Xingamento','chatbot imprestavel'),(337,'Xingamento','você não presta'),(338,'Xingamento','software lixo'),(339,'Xingamento','você é totalmente incapaz'),(340,'Xingamento','você é simplemente incompetente'),(341,'Xingamento','kindred inutil'),(342,'Xingamento','kindred lixo'),(343,'Xingamento','chatbot lixo'),(344,'Xingamento','eu te odeio'),(345,'Encerramento','Encerramento obrigado Kindred encerrando por aqui'),(346,'Encerramento','Encerramento está tudo claro encerrando a interação'),(347,'Encerramento','Encerramento ok encerrando a sessão até mais tarde'),(348,'Encerramento','Encerramento excelente encerrando por enquanto'),(349,'Encerramento','Encerramento agradeço pelas respostas até a próxima'),(350,'Encerramento','Encerramento certo encerrando a conversa até breve'),(351,'Encerramento','Encerramento entendido encerrando por agora valeu'),(352,'Encerramento','Encerramento tudo certo Kindred até a próxima vez'),(353,'Encerramento','Encerramento valeu chatbot encerrando a interação'),(354,'Encerramento','Encerramento agradeço pela colaboração até mais'),(355,'Encerramento','Encerramento beleza encerrando por aqui até logo'),(356,'Encerramento','Encerramento ok encerrando a conversa até breve'),(357,'Encerramento','Encerramento obrigado pela ajuda encerrando por agora'),(358,'Encerramento','Encerramento está tudo claro até mais tarde'),(359,'Encerramento','Encerramento agradeço pela assistência até a próxima'),(360,'Encerramento','Encerramento certo encerrando a interação por agora'),(361,'Encerramento','Encerramento tudo esclarecido encerrando por aqui'),(362,'Encerramento','Encerramento ótimo encerrando a conversa até breve'),(363,'Encerramento','Encerramento obrigado Kindred até logo'),(364,'Encerramento','Encerramento beleza vou encerrar por agora'),(365,'Encerramento','Encerramento perfeito encerrando a sessão'),(366,'Encerramento','Encerramento está tudo claro até a próxima vez'),(367,'Encerramento','Encerramento agradeço pela atenção encerrando por aqui'),(368,'Encerramento','Encerramento certo encerrando a conversa até logo'),(369,'Encerramento','valeu chatbot encerrando por agora'),(370,'Encerramento','beleza encerrando a interação'),(371,'Encerramento','ok encerrando por aqui até breve'),(372,'Encerramento','excelente encerrando a conversa'),(373,'Encerramento','agradeço pelas respostas até mais tarde'),(374,'Encerramento','certo encerrando por agora'),(375,'Encerramento','entendido encerrando a interação'),(376,'Encerramento','tudo certo Kindred até a próxima vez'),(377,'Encerramento','adeus'),(378,'Encerramento','tchau');
/*!40000 ALTER TABLE `dados_treinamento` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-07  6:37:47