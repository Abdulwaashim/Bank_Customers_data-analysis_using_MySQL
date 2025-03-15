-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: bank_database
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_acc_num` varchar(20) DEFAULT NULL,
  `customer_ifsc_code` varchar(20) DEFAULT NULL,
  `customer_pan_num` varchar(20) DEFAULT NULL,
  `customer_email_id` varchar(100) DEFAULT NULL,
  `customer_address` text,
  `customer_gender` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_pan_num` (`customer_pan_num`),
  UNIQUE KEY `customer_email_id` (`customer_email_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (123,'Krish','6789054343','SBI00T123','TNVP123','krish@gmail.com','123 Main Street, chennai','male'),(124,'Deepika','6789054344','SBI00T124','TNVP124','deepika@gmail.com','124 Main Street, chennai','female'),(125,'Vimal Kumar','6789054345','SBI00T125','TNVP125','vimalkumar@gmail.com','125 Main Street, tenkasi','male'),(126,'Anjali','6789054346','SBI00T126','TNVP126','anjali@gmail.com','126 Main Street, chennain','female'),(127,'Uma','6789054347','SBI00T127','TNVP127','uma@gmail.com','127 Main Street, kovai','female'),(128,'Mohan','6789054348','SBI00T128','TNVP128','mohan@gmail.com','128 Main Street, chennai','male'),(129,'Keerthi','6789054349','SBI00T129','TNVP129','keerthi@gmail.com','129 Main Street, usulampatti','female'),(130,'Vishnu S','6789054350','SBI00T130','TNVP130','vishnu_s@gmail.com','130 Main Street, kovai','male'),(131,'Ramesh','6789054351','SBI00T131','TNVP131','ramesh@gmail.com','121 Main Street, kovai','male'),(132,'Alex','6789054352','SBI00T132','TNVP132','alex@gmail.com','122 Main Street, chennai','male'),(133,'Rolex','6789054353','SBI00T133','TNVP133','rolex@gmail.com','123 Main Street, chennai','male'),(134,'Putinhee S','6789054354','SBI00T134','TNVP134','putinhee_s@gmail.com','134 Main Street, tambaram','female'),(135,'Vimal A','6789054355','SBI00T135','TNVP135','vimal_a@gmail.com','125 Main Street, chennai','male'),(136,'Divya S','6789054356','SBI00T136','TNVP136','divya_s@gmail.com','126 Main Street, puducheri','female'),(137,'Priyank K','6789054357','SBI00T137','TNVP137','priyank_k@gmail.com','127 Main Street, chennai','male'),(138,'Suresh','6789054358','SBI00T138','TNVP138','suresh@gmail.com','128 Main Street, chennai','male'),(139,'Sneha','6789054359','SBI00T139','TNVP139','sneha@gmail.com','129 Main Street, chennai','female'),(140,'Anir Verma','6789054360','SBI00T140','TNVP140','anirverma@gmail.com','140 Main Street, chennai','male'),(141,'Karthik','6789054361','SBI00T141','TNVP141','karthik@gmail.com','141 Main Street, chennai','male'),(142,'Meena','6789054362','SBI00T142','TNVP142','meena@gmail.com','122 Main Street, chennai','female'),(143,'Rohit','6789054363','SBI00T143','TNVP143','rohit@gmail.com','123 Main Street, chennai','male'),(144,'Swathi','6789054364','SBI00T144','TNVP144','swathi@gmail.com','124 Main Street, trichy','female'),(145,'Amit','6789054365','SBI00T145','TNVP145','amit@gmail.com','125 Main Street, kovai','male'),(146,'Pooja','6789054366','SBI00T146','TNVP146','pooja@gmail.com','126 Main Street, trichy','female'),(147,'Naveen','6789054367','SBI00T147','TNVP147','naveen@gmail.com','127 Main Street, trichy','male'),(148,'Sonia','6789054368','SBI00T148','TNVP148','sonia@gmail.com','128 Main Street, trichy','female'),(149,'Varun','6789054369','SBI00T149','TNVP149','varun@gmail.com','129 Main Street, trichy','male'),(150,'Neha','6789054370','SBI00T150','TNVP150','neha@gmail.com','120 Main Street, chennai','female'),(151,'Arjun','6789054371','SBI00T151','TNVP151','arjun@gmail.com','121 Main Street, chennai','male'),(152,'Divakar','6789054372','SBI00T152','TNVP152','divakar@gmail.com','152 Main Street, chennai','male'),(153,'Shreya','6789054373','SBI00T153','TNVP153','shreya@gmail.com','123 Main Street, trichy','female'),(154,'Harish','6789054374','SBI00T154','TNVP154','harish@gmail.com','124 Main Street, kovai','male'),(155,'Komal','6789054375','SBI00T155','TNVP155','komal@gmail.com','125 Main Street, kovai','female'),(156,'Rajesh','6789054376','SBI00T156','TNVP156','rajesh@gmail.com','126 Main Street, chennai','male'),(157,'Tanvi','6789054377','SBI00T157','TNVP157','tanvi@gmail.com','127 Main Street, trichy','female'),(158,'Vikas','6789054378','SBI00T158','TNVP158','vikas@gmail.com','128 Main Street, chennai','male'),(159,'Prerna','6789054379','SBI00T159','TNVP159','prerna@gmail.com','129 Main Street, trichy','female'),(160,'Surya','6789054380','SBI00T160','TNVP160','surya@gmail.com','120 Main Street, kovai','male'),(161,'Ishita','6789054381','SBI00T161','TNVP161','ishita@gmail.com','121 Main Street, madurai','female'),(162,'Sachin','6789054382','SBI00T162','TNVP162','sachin@gmail.com','122 Main Street, kovai','male'),(163,'Riya','6789054383','SBI00T163','TNVP163','riya@gmail.com','122 Main Street, chennai','female'),(164,'Gopal','6789054384','SBI00T164','TNVP164','gopal@gmail.com','124 Main Street, koavi','male'),(165,'Nidhi','6789054385','SBI00T165','TNVP165','nidhi@gmail.com','125 Main Street, trichy','female'),(166,'Deepak','6789054386','SBI00T166','TNVP166','deepak@gmail.com','126 Main Street, kovai','male'),(167,'Akansha','6789054387','SBI00T167','TNVP167','akansha@gmail.com','127 Main Street, chennai','female'),(168,'Sameer','6789054388','SBI00T168','TNVP168','sameer@gmail.com','168 Main Street, trichy','male'),(169,'Kiran','6789054389','SBI00T169','TNVP169','kiran@gmail.com','129 Main Street, chennai','female');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fixed_deposit`
--

DROP TABLE IF EXISTS `fixed_deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fixed_deposit` (
  `fd_id` int NOT NULL AUTO_INCREMENT,
  `fd_acc_num` varchar(20) DEFAULT NULL,
  `fd_period` varchar(10) DEFAULT NULL,
  `fd_start_date` date DEFAULT NULL,
  `fd_end_date` date DEFAULT NULL,
  `fd_interest` decimal(4,2) DEFAULT NULL,
  `fd_amount` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`fd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fixed_deposit`
--

LOCK TABLES `fixed_deposit` WRITE;
/*!40000 ALTER TABLE `fixed_deposit` DISABLE KEYS */;
INSERT INTO `fixed_deposit` VALUES (1,'6789054352','5 years','2019-03-01','2024-03-01',4.50,25000.00),(2,'6789054402','4 years','2020-05-15','2024-05-15',5.00,22000.00),(3,'6789054403','6 years','2018-08-10','2024-08-10',5.50,35000.00),(4,'6789054381','3 years','2021-01-20','2024-01-20',3.00,15000.00),(5,'6789054405','7 years','2017-06-25','2024-06-25',6.20,50000.00),(6,'6789054383','2 years','2022-09-12','2024-09-12',2.80,12000.00),(7,'6789054364','4 years','2019-12-05','2023-12-05',4.00,18000.00),(8,'6789054387','5 years','2018-07-30','2023-07-30',5.20,30000.00),(9,'6789054356','3 years','2021-11-11','2024-11-11',3.80,14000.00),(10,'6789054410','6 years','2017-04-18','2023-04-18',5.70,45000.00);
/*!40000 ALTER TABLE `fixed_deposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan_details`
--

DROP TABLE IF EXISTS `loan_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan_details` (
  `loan_id` int NOT NULL AUTO_INCREMENT,
  `loan_acc_num` varchar(20) DEFAULT NULL,
  `loan_type` varchar(50) DEFAULT NULL,
  `loan_amount` decimal(12,2) DEFAULT NULL,
  `interest_rate` decimal(5,2) DEFAULT NULL,
  `loan_term_years` int DEFAULT NULL,
  `emi_amount` decimal(12,2) DEFAULT NULL,
  `loan_status` varchar(20) DEFAULT NULL,
  `loan_start_date` date DEFAULT NULL,
  `loan_end_date` date DEFAULT NULL,
  PRIMARY KEY (`loan_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan_details`
--

LOCK TABLES `loan_details` WRITE;
/*!40000 ALTER TABLE `loan_details` DISABLE KEYS */;
INSERT INTO `loan_details` VALUES (1,'6789054371','Home Loan',2500000.00,7.50,20,19393.00,'Active','2020-01-15','2040-01-15'),(2,'6789054381','Personal Loan',500000.00,12.50,5,11222.00,'Closed','2018-06-10','2023-06-10'),(3,'6789054382','Education Loan',600000.00,10.50,8,8547.00,'Active','2019-09-25','2027-09-25'),(4,'6789054388','Home Loan',3000000.00,8.00,25,23145.00,'Active','2017-04-05','2042-04-05'),(5,'6789054389','Personal Loan',400000.00,13.00,3,13456.00,'Defaulted','2020-11-15','2023-11-15'),(6,'6789054386','Home Loan',4500000.00,7.20,30,30987.00,'Active','2015-12-12','2045-12-12'),(7,'6789054348','Personal Loan',200000.00,14.50,4,5678.00,'Closed','2019-08-20','2023-08-20'),(8,'6789054349','Auto Loan',900000.00,8.50,5,15896.00,'Active','2021-10-01','2026-10-01'),(9,'6789054350','Home Loan',5000000.00,7.00,30,34156.00,'Active','2014-11-18','2044-11-18'),(10,'6789054351','Personal Loan',150000.00,13.50,3,4896.00,'Closed','2019-03-25','2022-03-25'),(11,'6789054353','Auto Loan',950000.00,9.70,6,16854.00,'Active','2022-07-12','2028-07-12'),(12,'6789054369','Auto Loan',620000.00,9.30,6,11985.00,'Closed','2017-07-10','2023-07-10'),(13,'6789054372','Education Loan',800000.00,11.20,10,8456.00,'Active','2022-02-18','2032-02-18'),(14,'6789054374','Home Loan',2600000.00,7.90,20,19567.00,'Active','2018-05-30','2038-05-30'),(15,'6789054375','Personal Loan',340000.00,12.50,6,10567.00,'Defaulted','2020-09-10','2026-09-10'),(16,'6789054384','Education Loan',720000.00,10.00,8,8754.00,'Active','2021-06-08','2029-06-08'),(17,'6789054355','Home Loan',5400000.00,6.80,30,35245.00,'Active','2014-11-18','2044-11-18'),(18,'6789054376','Education Loan',740000.00,10.50,9,8456.00,'Active','2020-04-01','2029-04-01');
/*!40000 ALTER TABLE `loan_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `tran_id` int NOT NULL,
  `tran_acc_number` varchar(20) DEFAULT NULL,
  `trans_type` varchar(10) DEFAULT NULL,
  `trans_form` bigint DEFAULT NULL,
  `trans_to` bigint DEFAULT NULL,
  `trans_date_time` datetime DEFAULT NULL,
  `trans_amount` decimal(15,2) DEFAULT NULL,
  `trans_balance` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`tran_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1005,'6789054343','debit',6789054343,9786054401,'2023-01-14 15:10:25',5000.00,15000.00),(1006,'6789054344','credit',9786054402,6789054344,'2023-01-15 16:10:25',7000.00,22000.00),(1007,'6789054345','debit',6789054345,9786054403,'2023-01-16 17:10:25',4000.00,18000.00),(1008,'6789054346','debit',6789054346,9786054404,'2023-01-17 18:10:25',6000.00,14000.00),(1009,'6789054347','credit',9786054405,6789054347,'2023-01-18 19:10:25',8000.00,21000.00),(1010,'6789054348','debit',6789054348,9786054406,'2023-01-19 20:10:25',3000.00,17000.00),(1011,'6789054349','debit',6789054349,9786054407,'2023-01-20 21:10:25',7000.00,10000.00),(1012,'6789054350','credit',9786054408,6789054350,'2023-01-21 22:10:25',9000.00,19000.00),(1013,'6789054351','debit',6789054351,9786054409,'2023-01-22 23:10:25',5500.00,13500.00),(1014,'6789054352','debit',6789054352,9786054410,'2023-01-23 08:10:25',7500.00,11000.00),(1015,'6789054353','credit',9786054411,6789054353,'2023-01-24 09:10:25',8200.00,19200.00),(1016,'6789054354','debit',6789054354,9786054412,'2023-01-25 10:10:25',4900.00,14300.00),(1017,'6789054355','debit',6789054355,9786054413,'2023-01-26 11:10:25',6400.00,8900.00),(1018,'6789054356','credit',9786054414,6789054356,'2023-01-27 12:10:25',7600.00,16600.00),(1019,'6789054357','debit',6789054357,9786054415,'2023-01-28 13:10:25',3200.00,13400.00),(1020,'6789054358','credit',9786054416,6789054358,'2023-01-29 14:10:25',5500.00,18900.00),(1021,'6789054359','debit',6789054359,9786054417,'2023-01-30 15:10:25',7700.00,11200.00),(1022,'6789054360','debit',6789054360,9786054418,'2023-01-31 16:10:25',8500.00,7000.00),(1023,'6789054361','credit',9786054419,6789054361,'2023-02-01 17:10:25',9200.00,16200.00),(1024,'6789054362','debit',6789054362,9786054420,'2023-02-02 18:10:25',4300.00,11900.00),(1025,'6789054363','debit',6789054363,9786054421,'2023-02-03 19:10:25',6800.00,5100.00),(1026,'6789054364','credit',9786054422,6789054364,'2023-02-04 20:10:25',7800.00,12900.00),(1027,'6789054365','debit',6789054365,9786054423,'2023-02-05 21:10:25',5900.00,7000.00),(1028,'6789054366','debit',6789054366,9786054424,'2023-02-06 22:10:25',8200.00,3000.00),(1029,'6789054367','credit',9786054425,6789054367,'2023-02-07 23:10:25',9100.00,12100.00),(1030,'6789054368','debit',6789054368,9786054426,'2023-02-08 08:10:25',4500.00,7600.00),(1031,'6789054369','credit',9786054427,6789054369,'2023-02-09 09:10:25',8300.00,15900.00),(1032,'6789054370','debit',6789054370,9786054428,'2023-02-10 10:10:25',9200.00,6700.00),(1033,'6789054371','debit',6789054371,9786054429,'2023-02-11 11:10:25',6400.00,3000.00),(1034,'6789054372','credit',9786054430,6789054372,'2023-02-12 12:10:25',7800.00,10800.00),(1035,'6789054373','debit',6789054373,9786054431,'2023-02-13 13:10:25',8700.00,2100.00),(1036,'6789054374','credit',9786054432,6789054374,'2023-02-14 14:10:25',9200.00,11300.00),(1037,'6789054375','debit',6789054375,9786054433,'2023-02-15 15:10:25',5300.00,6000.00),(1038,'6789054376','credit',9786054434,6789054376,'2023-02-16 16:10:25',8600.00,14600.00),(1039,'6789054377','debit',6789054377,9786054435,'2023-02-17 17:10:25',7800.00,6800.00),(1040,'6789054378','credit',9786054436,6789054378,'2023-02-18 18:10:25',9700.00,16500.00);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-15 19:04:15
