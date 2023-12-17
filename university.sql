-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: university
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `accesscontroller`
--

DROP TABLE IF EXISTS `accesscontroller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accesscontroller` (
  `EnterpriseName` text,
  `AccessCode` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesscontroller`
--

LOCK TABLES `accesscontroller` WRITE;
/*!40000 ALTER TABLE `accesscontroller` DISABLE KEYS */;
INSERT INTO `accesscontroller` VALUES ('Cafeteria Accountant',1),('Cafeteria Manager',1),('Head Librarian',0),('Catalogue Specialist',0),('Database Analyst',1),('IT Manager',0),('Administrator',1),('Transcript Authority',1);
/*!40000 ALTER TABLE `accesscontroller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campus_dining_staff`
--

DROP TABLE IF EXISTS `campus_dining_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campus_dining_staff` (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Position` varchar(255) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `DateOfHire` date DEFAULT NULL,
  `ContractType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campus_dining_staff`
--

LOCK TABLES `campus_dining_staff` WRITE;
/*!40000 ALTER TABLE `campus_dining_staff` DISABLE KEYS */;
INSERT INTO `campus_dining_staff` VALUES (1,'Tom','Chef','@TomChef','tomcooks',NULL,NULL,NULL,NULL,NULL),(2,'John Doe','Cafeteria Manager','cafemanager123','securepassword','john.doe@example.com','123-456-7890','123 Main St, Cityville','2023-01-01','Full Time'),(3,'Harry','Accountant','Cafeteria@Accounts','123456','account@example.com','555-987-6543','123 Oak St, Cityville','2023-12-10','Part Time');
/*!40000 ALTER TABLE `campus_dining_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communication`
--

DROP TABLE IF EXISTS `communication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communication` (
  `CommunicationID` int NOT NULL AUTO_INCREMENT,
  `UserID` int DEFAULT NULL,
  `Sender` varchar(255) DEFAULT NULL,
  `Receiver` varchar(255) DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL,
  `Message` text,
  `Timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`CommunicationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communication`
--

LOCK TABLES `communication` WRITE;
/*!40000 ALTER TABLE `communication` DISABLE KEYS */;
/*!40000 ALTER TABLE `communication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `CourseID` int NOT NULL AUTO_INCREMENT,
  `CourseName` varchar(255) DEFAULT NULL,
  `Description` text,
  `Credits` int DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  `MaximumStudents` int DEFAULT NULL,
  `Schedule` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CourseID`),
  KEY `fk_faculty` (`EmployeeID`),
  CONSTRAINT `fk_faculty` FOREIGN KEY (`EmployeeID`) REFERENCES `faculty` (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (6,'Introduction to Computer Science','An introductory course covering fundamental concepts in computer science.',3,1,50,'MWF'),(7,'Random Course','This is a random course description.',3,58335,50,'MWF'),(12,'Web Design','Web designing Course',3,58335,50,'TTS'),(38,'Mobile App Development','Creating software for smartphones or tablets.',3,58336,50,'MWF'),(39,'Network Security','Safeguarding computer networks from unauthorized access and attacks.',3,58337,50,'TTS'),(40,'Artificial Intelligence','Creating smart computer systems that mimic human intelligence.',3,58338,50,'MWF'),(41,'Cloud Computing','Using the internet for storing and processing data on remote servers.',3,58339,50,'TTS'),(42,'Operating Systems','Software managing computer hardware and facilitating program communication.',3,58340,50,'MWF'),(43,'Cybersecurity Fundamental','Protecting digital systems from unauthorized access and attacks.',3,58341,50,'TTS'),(44,'Web Design','Crafting the visual and user experience aspects of websites.',3,58342,50,'MWF'),(45,'Mobile App Development','Creating software applications for mobile devices.',3,58343,50,'TTS');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dining_orders`
--

DROP TABLE IF EXISTS `dining_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dining_orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `EmployeeID` int NOT NULL,
  `CustomerID` int NOT NULL,
  `OrderDate` date NOT NULL,
  `ItemName` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Rating` int NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Quantity` int NOT NULL,
  `TotalAmount` decimal(10,2) NOT NULL,
  `Status` varchar(50) NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `fk_customer_dining_orders` (`EmployeeID`),
  CONSTRAINT `fk_customer_dining_orders` FOREIGN KEY (`EmployeeID`) REFERENCES `campus_dining_staff` (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dining_orders`
--

LOCK TABLES `dining_orders` WRITE;
/*!40000 ALTER TABLE `dining_orders` DISABLE KEYS */;
INSERT INTO `dining_orders` VALUES (2,1,0,'2023-12-07','Spaghetti Carbonara','Classic Italian pasta with creamy sauce',4,'Main Course',2,18.99,'');
/*!40000 ALTER TABLE `dining_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employers`
--

DROP TABLE IF EXISTS `employers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employers` (
  `EmployerID` int NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(255) DEFAULT NULL,
  `IndustryName` varchar(255) DEFAULT NULL,
  `CompanyDescription` text,
  `Location` varchar(255) DEFAULT NULL,
  `Website` varchar(255) DEFAULT NULL,
  `ContactPersonName` varchar(255) DEFAULT NULL,
  `ContactPersonEmail` varchar(255) DEFAULT NULL,
  `ContactPersonPhone` varchar(20) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `ProfilePhoto` varchar(255) DEFAULT NULL,
  `Experience` int DEFAULT '5',
  `Designation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EmployerID`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=764576 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employers`
--

LOCK TABLES `employers` WRITE;
/*!40000 ALTER TABLE `employers` DISABLE KEYS */;
INSERT INTO `employers` VALUES (1,'Random Company','Random Industry','Description of the random company.','Random Location','http://www.randomwebsite.com','John Doe','john.doe@example.com','123-456-7890','@John','doe',NULL,5,'HR'),(55,'Amazon Inc. ','AI & Robotics','Amazon.com, Inc. is an American multinational technology company focusing on e-commerce, cloud computing, online advertising, digital streaming, and artificial intelligence.','Boston, MA','https://www.amazon.com/ref=nav_logo','Gabriel','hr@Amazon.com','+166548876','@Gabriel','1234567',NULL,5,NULL),(764575,'Google','Technology','Designing modern products','Boston, MA','www.google,com','Adam','hr@google.com','563049857','@Adam','12345',NULL,5,NULL);
/*!40000 ALTER TABLE `employers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Contact` varchar(255) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `Nationality` varchar(255) DEFAULT NULL,
  `Department` varchar(255) DEFAULT NULL,
  `LanguageTaught` varchar(255) DEFAULT NULL,
  `Position` varchar(255) DEFAULT NULL,
  `EmergencyContact` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `ProfilePhoto` varchar(255) DEFAULT NULL,
  `CourseTaught` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=58345 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES (1,'John Doe','123-456-7890','1980-01-01','Male','US','Computer Science','English','Professor','987-654-3210','johndoe@example.com','johndoe','password123','/path/to/profile.jpg','Database Management Systems'),(58335,'Amuthan','123-456-7890','1985-05-15','Male','Indian','Computer Science','English','Professor','987-654-3210','amuthan@example.com','@Amuthan','12345','/path/to/profile/photo.jpg','Software Engineering'),(58336,'Roy','765487','1995-02-12','Male','Indian','Computer Science','English','Assistant Professor','784569437','Roy@email.com','@RoyK','12345',NULL,'Mobile App Development'),(58337,'Sarah Johnson','555-789-1234','1983-07-20','Female','Canadian','Information Technology','English','Professor','222-333-4444','sarah.johnson@example.com','sarahjohnson','securepass123','/path/to/sarah_photo.jpg','Network Security'),(58338,'Alex Wang','666-456-7890','1979-09-12','Male','Chinese','Computer Science','English','Associate Professor','987-654-3210','alex.wang@example.com','alexwang','pass9876','/path/to/alex_photo.jpg','Artificial Intelligence'),(58339,'Elena Rodriguez','777-987-6543','1984-04-05','Female','Spanish','Information Technology','Spanish','Professor','123-987-6543','elena.rodriguez@example.com','elenarodriguez','123456789','/path/to/elena_photo.jpg','Cloud Computing'),(58340,'Brian Miller','888-567-1234','1980-11-30','Male','American','Computer Science','English','Professor','333-222-1111','brian.miller@example.com','brianmiller','password999','/path/to/brian_photo.jpg','Operating Systems'),(58341,'Linda Lee','999-345-6789','1986-02-28','Female','Canadian','Information Technology','English','Associate Professor','555-666-7777','linda.lee@example.com','lindalee','securepass777','/path/to/linda_photo.jpg','Cybersecurity Fundamentals'),(58342,'Samuel Kim','101-234-5678','1982-06-15','Male','Korean','Computer Science','English','Professor','777-888-9999','samuel.kim@example.com','samuelkim','pass12345','/path/to/samuel_photo.jpg','Web Design'),(58343,'Nina Gupta','202-345-6789','1983-03-10','Female','Indian','Information Technology','English','Professor','111-222-3333','nina.gupta@example.com','ninagupta','nina123','/path/to/nina_photo.jpg','Mobile App Development'),(58344,'Sneha','586348659','1977-08-08','Male','Indian','Management','Chinese','Assistant Professor','45609360','sneha@university.com','@Sneha','12345',NULL,NULL);
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feedback` (
  `FeedbackID` int NOT NULL AUTO_INCREMENT,
  `StudentID` int DEFAULT NULL,
  `EmployeeID` int DEFAULT NULL,
  `FeedbackText` text,
  `Timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`FeedbackID`),
  KEY `StudentID` (`StudentID`),
  KEY `EmployeeID` (`EmployeeID`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`EmployeeID`) REFERENCES `faculty` (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
INSERT INTO `feedback` VALUES (1,2817169,58336,'Course could be taught in mre detail !!','2023-11-27 04:04:16');
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issued_books`
--

DROP TABLE IF EXISTS `issued_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issued_books` (
  `IssueID` int NOT NULL AUTO_INCREMENT,
  `StudentID` int NOT NULL,
  `BookID` int NOT NULL,
  `ReturnDate` date DEFAULT NULL,
  `FineAmount` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`IssueID`),
  UNIQUE KEY `unique_issue` (`StudentID`,`BookID`),
  KEY `fk_book` (`BookID`),
  CONSTRAINT `fk_book` FOREIGN KEY (`BookID`) REFERENCES `library_books` (`BookID`),
  CONSTRAINT `fk_student` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issued_books`
--

LOCK TABLES `issued_books` WRITE;
/*!40000 ALTER TABLE `issued_books` DISABLE KEYS */;
INSERT INTO `issued_books` VALUES (3,2817169,2,'2023-12-10',0.00),(4,2817169,4,'2023-12-10',0.00);
/*!40000 ALTER TABLE `issued_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issues`
--

DROP TABLE IF EXISTS `issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issues` (
  `IssueID` int NOT NULL AUTO_INCREMENT,
  `SupportID` varchar(6) DEFAULT NULL,
  `IssueType` varchar(20) DEFAULT NULL,
  `Subject` varchar(255) DEFAULT NULL,
  `Description` text,
  `StatusID` int DEFAULT '1',
  `ResponseMessage` text,
  `UserID` int DEFAULT NULL,
  PRIMARY KEY (`IssueID`),
  KEY `SupportID` (`SupportID`),
  KEY `StatusID` (`StatusID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `issues_ibfk_2` FOREIGN KEY (`SupportID`) REFERENCES `itsupport` (`SupportID`),
  CONSTRAINT `issues_ibfk_3` FOREIGN KEY (`StatusID`) REFERENCES `issuestatus` (`StatusID`),
  CONSTRAINT `issues_ibfk_4` FOREIGN KEY (`UserID`) REFERENCES `students` (`StudentID`),
  CONSTRAINT `issues_chk_1` CHECK ((`IssueType` in (_utf8mb4'Incident',_utf8mb4'Service Request')))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issues`
--

LOCK TABLES `issues` WRITE;
/*!40000 ALTER TABLE `issues` DISABLE KEYS */;
INSERT INTO `issues` VALUES (1,NULL,'Incident','Network Issue','Network Error while connecting ',1,NULL,NULL),(2,NULL,'Incident','Data Error','Data Entering Error',1,NULL,NULL),(3,NULL,'Incident','Network Issue','I have connection Issue',1,'Hello World',2817169);
/*!40000 ALTER TABLE `issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `issuestatus`
--

DROP TABLE IF EXISTS `issuestatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `issuestatus` (
  `StatusID` int NOT NULL,
  `StatusName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`StatusID`),
  CONSTRAINT `issuestatus_chk_1` CHECK ((`StatusName` in (_cp850'In Progress',_cp850'Completed')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `issuestatus`
--

LOCK TABLES `issuestatus` WRITE;
/*!40000 ALTER TABLE `issuestatus` DISABLE KEYS */;
INSERT INTO `issuestatus` VALUES (1,'Completed'),(2,'In Progress');
/*!40000 ALTER TABLE `issuestatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itsupport`
--

DROP TABLE IF EXISTS `itsupport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itsupport` (
  `SupportID` varchar(6) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Contact` varchar(50) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`SupportID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itsupport`
--

LOCK TABLES `itsupport` WRITE;
/*!40000 ALTER TABLE `itsupport` DISABLE KEYS */;
INSERT INTO `itsupport` VALUES ('ABC123','John Doe','555-1234','johndoe','password123','john.doe@example.com','Support Specialist','IT Department'),('DEF456','Jane Smith','555-5678','janesmith','securepass','jane.smith@example.com','IT Manager','IT Department'),('GHI789','Bob Johnson','555-9876','bobjohnson','pass123','bob.johnson@example.com','Database Analyst','Networking Team');
/*!40000 ALTER TABLE `itsupport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_applications`
--

DROP TABLE IF EXISTS `job_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_applications` (
  `ApplicationID` int NOT NULL AUTO_INCREMENT,
  `JobID` int NOT NULL,
  `StudentID` int NOT NULL,
  `Applied` bit(1) DEFAULT b'0',
  PRIMARY KEY (`ApplicationID`),
  KEY `JobID` (`JobID`),
  KEY `StudentID` (`StudentID`),
  CONSTRAINT `job_applications_ibfk_2` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_applications`
--

LOCK TABLES `job_applications` WRITE;
/*!40000 ALTER TABLE `job_applications` DISABLE KEYS */;
INSERT INTO `job_applications` VALUES (1,1,2817169,_binary ''),(2,1,2817169,_binary ''),(3,1,2817169,_binary ''),(4,1,2817169,_binary ''),(5,1,1008,_binary ''),(6,2,1008,_binary '');
/*!40000 ALTER TABLE `job_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `JobID` int NOT NULL AUTO_INCREMENT,
  `EmployerID` int NOT NULL,
  `JobType` varchar(50) DEFAULT NULL,
  `JobCategory` varchar(50) DEFAULT NULL,
  `JobDescription` text,
  `ApplicationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`JobID`),
  KEY `EmployerID` (`EmployerID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,1,'Full-time','IT','We are looking for a skilled software developer to join our team.','2023-10-29 23:18:30'),(2,1,'Full-time','IT','We are looking for a skilled software developer to join our team.','2023-10-29 23:42:12'),(14,764575,'IT Support','Technology','Administratror','2023-11-27 04:33:28');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `librarians`
--

DROP TABLE IF EXISTS `librarians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `librarians` (
  `LibrarianID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Contact` varchar(255) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Position` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `ContractType` varchar(255) NOT NULL,
  PRIMARY KEY (`LibrarianID`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `librarians`
--

LOCK TABLES `librarians` WRITE;
/*!40000 ALTER TABLE `librarians` DISABLE KEYS */;
INSERT INTO `librarians` VALUES (1,'John Doe','+1234567890','head_librarian','a_secure_password','Head Librarian','head.librarian@example.com','Full-Time'),(2,'Jane Smith','+9876543210','cataloging_specialist','another_secure_password','Cataloging Specialist','cataloging.specialist@example.com','Part-Time');
/*!40000 ALTER TABLE `librarians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_books`
--

DROP TABLE IF EXISTS `library_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `library_books` (
  `BookID` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) NOT NULL,
  `Author` varchar(255) NOT NULL,
  `Genre` varchar(255) DEFAULT NULL,
  `ISBN` varchar(20) NOT NULL,
  `Quantity` int NOT NULL,
  `AvailableQuantity` int NOT NULL,
  PRIMARY KEY (`BookID`),
  UNIQUE KEY `ISBN` (`ISBN`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_books`
--

LOCK TABLES `library_books` WRITE;
/*!40000 ALTER TABLE `library_books` DISABLE KEYS */;
INSERT INTO `library_books` VALUES (1,'The Great Gatsby','F. Scott Fitzgerald','Classic','978-3-16-148410-0',5,5),(2,'To Kill a Mockingbird','Harper Lee','Fiction','978-0-06-112008-4',8,8),(3,'1984','Roy','Fiction','978-0-45-152493-5',10,10),(4,'The Hobbit','J.R.R. Tolkien','Fantasy','978-0-261-10225-4',7,7),(5,'Pride and Prejudice','Jane Austen','Romance','978-0-48-683548-9',6,6),(6,'The Catcher in the Rye','J.D. Salinger','Coming-of-Age','978-0-316-76948-0',4,4),(7,'The Alchemist','Paulo Coelho','Adventure','978-0-06-112241-5',12,12),(8,'The Shining','Stephen King','Horror','978-0-385-12167-5',9,9),(9,'The Da Vinci Code','Dan Brown','Mystery','978-0-385-50420-5',11,11),(10,'Harry Potter and the Sorcerer\'s Stone','J.K. Rowling','Fantasy','978-0-74-753269-9',15,15);
/*!40000 ALTER TABLE `library_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentcourseenrollment`
--

DROP TABLE IF EXISTS `studentcourseenrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentcourseenrollment` (
  `EnrollmentID` int NOT NULL AUTO_INCREMENT,
  `StudentID` int DEFAULT NULL,
  `CourseID` int DEFAULT NULL,
  `Grade` int DEFAULT '0',
  PRIMARY KEY (`EnrollmentID`),
  KEY `StudentID` (`StudentID`),
  KEY `CourseID` (`CourseID`),
  CONSTRAINT `studentcourseenrollment_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  CONSTRAINT `studentcourseenrollment_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentcourseenrollment`
--

LOCK TABLES `studentcourseenrollment` WRITE;
/*!40000 ALTER TABLE `studentcourseenrollment` DISABLE KEYS */;
INSERT INTO `studentcourseenrollment` VALUES (3,1008,7,80),(11,1008,12,95),(12,1008,38,91),(13,1008,39,72),(14,1008,40,76),(15,1008,41,89),(16,1008,42,91);
/*!40000 ALTER TABLE `studentcourseenrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `StudentID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Contact` varchar(255) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `Nationality` varchar(255) DEFAULT NULL,
  `ProgramOfStudy` varchar(255) DEFAULT NULL,
  `EnrollmentStatus` varchar(50) DEFAULT NULL,
  `EmergencyContact` varchar(255) DEFAULT NULL,
  `CreditsEarned` int DEFAULT NULL,
  `ProfilePhoto` varchar(255) DEFAULT NULL,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`StudentID`),
  UNIQUE KEY `Username` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=8901235 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1008,'Atharva Keshre','781008777','1998-10-08','Male','Indian','Information Systems','Enrolled','9988888',0,NULL,'@AtharvaK','12345'),(7584,'Aryan','587346590','1998-08-08','Male','Indian','Information Systems','Enrolled','56345098',3,NULL,'@Aryan','12345'),(65889,'Adarsh','324768','1998-08-08','Male','Indian',NULL,'Enrolled','47578320',0,NULL,'Adarsh','12345'),(1234567,'Emily Johnson','6171234567','1999-04-23','Female','American','Computer Science','Enrolled','6179876543',35,NULL,'@EmilyJ','password'),(2345678,'Michael Smith','8572345678','2000-02-10','Male','Canadian','Business Management','Enrolled','8573456789',32,NULL,'@MichaelS','abc123'),(2817169,'Atharv Joshi','(781)-873-2929','2001-08-15','Male','Indian','Information Systems','Enrolled','(781)-873-6252',0,'C:UsersAtharv JoshiDocumentsNetBeansProjectsHomework-3srcIconProfile.jpg','@Atharv','12345'),(3456789,'Sophia Lee','4159876543','1998-12-03','Female','Korean','Marketing','Enrolled','4158765432',33,NULL,'@SophiaL','qwerty'),(4567890,'Daniel Brown','6508765432','1997-06-17','Male','Australian','Information Systems','Enrolled','6507654321',29,NULL,'@DanielB','123abc'),(5678901,'Isabella Martinez','2137654321','2002-03-05','Female','Mexican','Computer Science','Enrolled','2136543210',27,NULL,'@IsabellaM','hello'),(6789012,'Liam Wilson','3126543210','1996-09-12','Male','British','Business Management','Enrolled','3125432109',34,NULL,'@LiamW','welcome'),(7655543,'Amisha Bhawsar','+91 99262 43713','1999-08-08','Female','Indian',NULL,'Enrolled','+91 99262 43713',21,NULL,'@Amisha','123456'),(7890123,'Olivia Taylor','4085432109','2003-07-28','Female','Canadian','Marketing','Enrolled','4084321098',31,NULL,'@OliviaT','sunshine'),(8901234,'Ethan Adams','5104321098','1995-11-09','Male','American','Information Systems','Enrolled','5103210987',36,NULL,'@EthanA','spring');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_orders`
--

DROP TABLE IF EXISTS `user_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_orders` (
  `User_ID` int NOT NULL,
  `Item_Name` varchar(255) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Status` varchar(50) DEFAULT 'Preparing'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_orders`
--

LOCK TABLES `user_orders` WRITE;
/*!40000 ALTER TABLE `user_orders` DISABLE KEYS */;
INSERT INTO `user_orders` VALUES (2817169,'Spaghetti Carbonara',18.99,'Preparing');
/*!40000 ALTER TABLE `user_orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-10 22:06:18
