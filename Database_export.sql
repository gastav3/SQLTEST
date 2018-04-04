CREATE DATABASE  IF NOT EXISTS `gustav_andersson_slutprojekt_` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `gustav_andersson_slutprojekt_`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: gustav_andersson_slutprojekt_
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor` (
  `idActor` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idActor`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
INSERT INTO `actor` VALUES (1,'Sven','Svensson'),(2,'Lars','Larsson'),(3,'Anders','Andersson'),(4,'Ingvar','Ingvarsson'),(5,'Bob','Bobsson'),(6,'Stina','Stinasson'),(7,'Per','Persson'),(8,'Olle','Ollesson'),(9,'Gustaf','Gustafsson');
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actors_of_movie`
--

DROP TABLE IF EXISTS `actors_of_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actors_of_movie` (
  `actor_idActor` int(11) NOT NULL,
  `movie_idMovie` int(11) NOT NULL,
  PRIMARY KEY (`actor_idActor`,`movie_idMovie`),
  KEY `fk_actor_has_movie_movie1_idx` (`movie_idMovie`),
  KEY `fk_actor_has_movie_actor1_idx` (`actor_idActor`),
  CONSTRAINT `fk_actor_has_movie_actor1` FOREIGN KEY (`actor_idActor`) REFERENCES `actor` (`idActor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_actor_has_movie_movie1` FOREIGN KEY (`movie_idMovie`) REFERENCES `movie` (`idMovie`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors_of_movie`
--

LOCK TABLES `actors_of_movie` WRITE;
/*!40000 ALTER TABLE `actors_of_movie` DISABLE KEYS */;
/*!40000 ALTER TABLE `actors_of_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `all_movies`
--

DROP TABLE IF EXISTS `all_movies`;
/*!50001 DROP VIEW IF EXISTS `all_movies`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_movies` AS SELECT 
 1 AS `idMovie`,
 1 AS `movieType`,
 1 AS `movieName`,
 1 AS `releaseYear`,
 1 AS `genre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `all_movies_that_are_lended_out_view`
--

DROP TABLE IF EXISTS `all_movies_that_are_lended_out_view`;
/*!50001 DROP VIEW IF EXISTS `all_movies_that_are_lended_out_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_movies_that_are_lended_out_view` AS SELECT 
 1 AS `movieName`,
 1 AS `customerFirstName`,
 1 AS `customerLastName`,
 1 AS `employeeFirstName`,
 1 AS `employeeLastName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `all_movies_that_should_have_been_returned_view`
--

DROP TABLE IF EXISTS `all_movies_that_should_have_been_returned_view`;
/*!50001 DROP VIEW IF EXISTS `all_movies_that_should_have_been_returned_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_movies_that_should_have_been_returned_view` AS SELECT 
 1 AS `movieName`,
 1 AS `customerFirstName`,
 1 AS `customerLastName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `all_movies_view`
--

DROP TABLE IF EXISTS `all_movies_view`;
/*!50001 DROP VIEW IF EXISTS `all_movies_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_movies_view` AS SELECT 
 1 AS `idMovie`,
 1 AS `movieType`,
 1 AS `movieName`,
 1 AS `releaseYear`,
 1 AS `genre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `all_movies_with_genre_action`
--

DROP TABLE IF EXISTS `all_movies_with_genre_action`;
/*!50001 DROP VIEW IF EXISTS `all_movies_with_genre_action`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `all_movies_with_genre_action` AS SELECT 
 1 AS `idMovie`,
 1 AS `movieType`,
 1 AS `movieName`,
 1 AS `releaseYear`,
 1 AS `genre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `count_and_list_movies_rented_out_by_employee_view`
--

DROP TABLE IF EXISTS `count_and_list_movies_rented_out_by_employee_view`;
/*!50001 DROP VIEW IF EXISTS `count_and_list_movies_rented_out_by_employee_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `count_and_list_movies_rented_out_by_employee_view` AS SELECT 
 1 AS `First_Name`,
 1 AS `Last_Name`,
 1 AS `Movies_Lended`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `idCustomer` int(11) NOT NULL AUTO_INCREMENT,
  `customerFirstName` varchar(45) DEFAULT NULL,
  `customerLastName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCustomer`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'August','Gernandt'),(2,'Lovisa','From'),(3,'sak','Ahrenberg'),(4,'Amelia','Brinkmann'),(5,'William','Bergling');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director` (
  `idDirector` int(11) NOT NULL AUTO_INCREMENT,
  `directorFirstName` varchar(45) DEFAULT NULL,
  `directorLastName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDirector`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
INSERT INTO `director` VALUES (1,'Vera','Ahlgren'),(2,'Elliot','Björnberg'),(3,'Adam','Ahlmark'),(4,'Noah','Almkvist'),(5,'Melina','Davidsson');
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directors_of_movie`
--

DROP TABLE IF EXISTS `directors_of_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directors_of_movie` (
  `director_idDirector` int(11) NOT NULL,
  `movie_idMovie` int(11) NOT NULL,
  PRIMARY KEY (`director_idDirector`,`movie_idMovie`),
  KEY `fk_director_has_movie_movie1_idx` (`movie_idMovie`),
  KEY `fk_director_has_movie_director1_idx` (`director_idDirector`),
  CONSTRAINT `fk_director_has_movie_director1` FOREIGN KEY (`director_idDirector`) REFERENCES `director` (`idDirector`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_director_has_movie_movie1` FOREIGN KEY (`movie_idMovie`) REFERENCES `movie` (`idMovie`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors_of_movie`
--

LOCK TABLES `directors_of_movie` WRITE;
/*!40000 ALTER TABLE `directors_of_movie` DISABLE KEYS */;
/*!40000 ALTER TABLE `directors_of_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `idEmployee` int(11) NOT NULL AUTO_INCREMENT,
  `employeeFirstName` varchar(45) DEFAULT NULL,
  `employeeLastName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEmployee`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Adam','Löfberg'),(2,'Elsa','Marklund'),(3,'Meja','Almén'),(4,'Alvin','Nordlander'),(5,'Clara','Nordenberg');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `idMovie` int(11) NOT NULL AUTO_INCREMENT,
  `movieType` int(11) NOT NULL,
  `movieName` varchar(45) DEFAULT NULL,
  `releaseYear` date DEFAULT NULL,
  `genre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMovie`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,1,'Toy Story 1','2005-01-04','Action'),(2,1,'Toy Story 1','2005-01-04','Action'),(3,1,'Toy Story 1','2005-01-04','Action'),(4,1,'Toy Story 1','2005-01-04','Action'),(5,1,'Toy Story 1','2005-01-04','Action'),(6,2,'Shrek 3','2007-02-21','Family'),(7,3,'Inception','2010-12-01','Action'),(8,3,'Inception','2010-12-01','Action'),(9,3,'Inception','2010-12-01','Action'),(10,4,'Star Wars','2015-09-01','Sci-fi'),(11,5,'Lord of The Rings','2003-02-27','Fantasy'),(12,6,'Spooky Movie 1','2018-03-29','Horror'),(13,7,'Lord of The Rings 2','2018-02-21','Drama'),(14,8,'Pirates of Piratebay','2018-01-17','Drama'),(15,8,'Pirates of Piratebay','2018-01-17','Drama'),(16,9,'Taken 5','2018-11-24','Action'),(17,10,'Shrek 1','2001-05-10','Thriller');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_rented_details`
--

DROP TABLE IF EXISTS `movie_rented_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_rented_details` (
  `idMovieDetails` int(11) NOT NULL AUTO_INCREMENT,
  `rentedOutDate` date DEFAULT NULL,
  `movieReturnedDate` date DEFAULT NULL,
  `expectedReturnDate` date DEFAULT NULL,
  `movie_idMovie` int(11) NOT NULL,
  `Customer_idCustomer` int(11) NOT NULL,
  `employee_idEmployee` int(11) NOT NULL,
  PRIMARY KEY (`idMovieDetails`,`movie_idMovie`,`Customer_idCustomer`,`employee_idEmployee`),
  KEY `fk_movie_rented_details_movie1_idx` (`movie_idMovie`),
  KEY `fk_movie_rented_details_Customer1_idx` (`Customer_idCustomer`),
  KEY `fk_movie_rented_details_employee1_idx` (`employee_idEmployee`),
  CONSTRAINT `fk_movie_rented_details_Customer1` FOREIGN KEY (`Customer_idCustomer`) REFERENCES `customer` (`idCustomer`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movie_rented_details_employee1` FOREIGN KEY (`employee_idEmployee`) REFERENCES `employee` (`idEmployee`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_movie_rented_details_movie1` FOREIGN KEY (`movie_idMovie`) REFERENCES `movie` (`idMovie`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_rented_details`
--

LOCK TABLES `movie_rented_details` WRITE;
/*!40000 ALTER TABLE `movie_rented_details` DISABLE KEYS */;
INSERT INTO `movie_rented_details` VALUES (1,'2018-04-04','2018-04-06','2018-04-06',1,1,2),(2,'2018-03-02',NULL,'2018-03-06',4,1,2),(3,'2018-04-01','2018-04-05','2018-04-05',2,2,2),(4,'2018-04-02','2018-04-04','2018-04-06',7,2,2),(5,'2018-04-03',NULL,'2018-04-07',5,4,3),(6,'2018-04-02','2018-04-04','2018-04-06',10,3,3),(7,'2015-04-01',NULL,'2015-04-05',2,1,3),(8,'2018-04-02','2018-04-06','2018-04-06',2,5,1),(9,'2018-03-31','2018-04-03','2018-04-03',1,2,1),(10,'2018-04-06','2018-04-06','2018-04-10',9,4,1);
/*!40000 ALTER TABLE `movie_rented_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `new_view`
--

DROP TABLE IF EXISTS `new_view`;
/*!50001 DROP VIEW IF EXISTS `new_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `new_view` AS SELECT 
 1 AS `idMovie`,
 1 AS `movieType`,
 1 AS `movieName`,
 1 AS `releaseYear`,
 1 AS `genre`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'gustav_andersson_slutprojekt_'
--

--
-- Dumping routines for database 'gustav_andersson_slutprojekt_'
--

--
-- Final view structure for view `all_movies`
--

/*!50001 DROP VIEW IF EXISTS `all_movies`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_movies` AS select `movie`.`idMovie` AS `idMovie`,`movie`.`movieType` AS `movieType`,`movie`.`movieName` AS `movieName`,`movie`.`releaseYear` AS `releaseYear`,`movie`.`genre` AS `genre` from `movie` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `all_movies_that_are_lended_out_view`
--

/*!50001 DROP VIEW IF EXISTS `all_movies_that_are_lended_out_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_movies_that_are_lended_out_view` AS select `m`.`movieName` AS `movieName`,`c`.`customerFirstName` AS `customerFirstName`,`c`.`customerLastName` AS `customerLastName`,`e`.`employeeFirstName` AS `employeeFirstName`,`e`.`employeeLastName` AS `employeeLastName` from (((`movie_rented_details` `md` left join `customer` `c` on((`c`.`idCustomer` = `md`.`Customer_idCustomer`))) left join `employee` `e` on((`e`.`idEmployee` = `md`.`employee_idEmployee`))) left join `movie` `m` on((`m`.`idMovie` = `md`.`movie_idMovie`))) where isnull(`md`.`movieReturnedDate`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `all_movies_that_should_have_been_returned_view`
--

/*!50001 DROP VIEW IF EXISTS `all_movies_that_should_have_been_returned_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_movies_that_should_have_been_returned_view` AS select `m`.`movieName` AS `movieName`,`c`.`customerFirstName` AS `customerFirstName`,`c`.`customerLastName` AS `customerLastName` from ((`movie_rented_details` `md` left join `customer` `c` on((`c`.`idCustomer` = `md`.`Customer_idCustomer`))) left join `movie` `m` on((`m`.`idMovie` = `md`.`movie_idMovie`))) where isnull(`md`.`movieReturnedDate`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `all_movies_view`
--

/*!50001 DROP VIEW IF EXISTS `all_movies_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_movies_view` AS select `movie`.`idMovie` AS `idMovie`,`movie`.`movieType` AS `movieType`,`movie`.`movieName` AS `movieName`,`movie`.`releaseYear` AS `releaseYear`,`movie`.`genre` AS `genre` from `movie` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `all_movies_with_genre_action`
--

/*!50001 DROP VIEW IF EXISTS `all_movies_with_genre_action`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_movies_with_genre_action` AS select `movie`.`idMovie` AS `idMovie`,`movie`.`movieType` AS `movieType`,`movie`.`movieName` AS `movieName`,`movie`.`releaseYear` AS `releaseYear`,`movie`.`genre` AS `genre` from `movie` where (`movie`.`genre` = 'Action') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `count_and_list_movies_rented_out_by_employee_view`
--

/*!50001 DROP VIEW IF EXISTS `count_and_list_movies_rented_out_by_employee_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `count_and_list_movies_rented_out_by_employee_view` AS select `e`.`employeeFirstName` AS `First_Name`,`e`.`employeeLastName` AS `Last_Name`,count(0) AS `Movies_Lended` from (`employee` `e` left join `movie_rented_details` `md` on((`e`.`idEmployee` = `md`.`employee_idEmployee`))) where (`e`.`idEmployee` = `md`.`employee_idEmployee`) group by `e`.`employeeFirstName` order by `Movies_Lended` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_view`
--

/*!50001 DROP VIEW IF EXISTS `new_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_view` AS select `movie`.`idMovie` AS `idMovie`,`movie`.`movieType` AS `movieType`,`movie`.`movieName` AS `movieName`,`movie`.`releaseYear` AS `releaseYear`,`movie`.`genre` AS `genre` from `movie` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-04 22:44:56
