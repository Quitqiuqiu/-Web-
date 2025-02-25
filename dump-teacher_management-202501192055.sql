-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: teacher_management
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `administrators`
--

DROP TABLE IF EXISTS `administrators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrators` (
  `work_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` enum('男','女','性别') DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`work_id`),
  KEY `administrators_users_FK` (`user_id`),
  CONSTRAINT `administrators_users_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='管理员表，存储管理员信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrators`
--

LOCK TABLES `administrators` WRITE;
/*!40000 ALTER TABLE `administrators` DISABLE KEYS */;
INSERT INTO `administrators` VALUES (14955563,'Ronnie O\'sullivan','男',94),(43185018,'Mark Selby','男',93),(46127555,'Mark Allen','男',95),(53831172,'Shaun Murphy','女',98),(70082472,'Judd Trump','女',91),(76166224,'Ding Junhui','女',99),(78510085,'Mark Williams','男',96),(91384319,'Kyren Wilson','男',92),(96257383,'Luca Brecel','男',97);
/*!40000 ALTER TABLE `administrators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `work_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` enum('男','女','性别') DEFAULT NULL,
  `school` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`work_id`),
  KEY `teachers_users_FK` (`user_id`),
  CONSTRAINT `teachers_users_FK` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='教师表，存储教师信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (12775872,'Spike','男','商学与管理学院','副教授',15),(13268700,'Anechka','女','公共卫生学院','副教授',59),(14704802,'Waru','男','马克思主义学院','副教授',24),(15778859,'Benny','男','建设工程学院','教授',78),(16050183,'Eddie','女','仪器科学与电气工程学院','讲师',85),(16187539,'Meenisha','男','生命科学学院','副教授',84),(17666163,'Dani','女','计算机科学与技术学院','副教授',46),(18396214,'Bryn','男','建设工程学院','讲师',56),(18463947,'Tyler Morgan','女','汽车工程学院','教授',2),(19102315,'Brooke Burke','男','仪器科学与电气工程学院','副教授',81),(20947196,'Chase','女','动物医学学院','教授',63),(21055574,'Medusa','女','通信工程学院','讲师',35),(21657127,'Jewels','男','公共卫生学院','讲师',14),(21851866,'TJ','男','马克思主义学院','教授',86),(22347072,'Rydell','男','通信工程学院','讲师',57),(22420487,'Shinmizu','女','药学院','讲师',64),(22483420,'Dante','男','东北亚学院','副教授',38),(22675077,'Ferro','女','哲学社会学院','教授',47),(22785332,'Manu','女','仪器科学与电气工程学院','副教授',16),(23253331,'Maya','女','基础医学院新能源与环境学院','教授',61),(23311413,'Viggo','女','物理学院','讲师',48),(23353098,'Lina Navarro','男','东北亚学院','副教授',6),(25562524,'Webster','女','仪器科学与电气工程学院','教授',11),(26283665,'Alec','女','基础医学院新能源与环境学院','教授',67),(26670979,'Jessica Miller','女','建设工程学院','教授',3),(26736085,'Razor','男','通信工程学院','教授',8),(26821149,'Monica','男','法学院','教授',44),(26873717,'Ken Block','女','计算机科学与技术学院','讲师',51),(27250708,'Nikita','男','软件学院','副教授',42),(27301907,'Eleonore','男','公共卫生学院','教授',60),(28629128,'Justicia','男','艺术学院','副教授',28),(30485380,'Kurt','女','商学与管理学院','副教授',88),(31624971,'Marcus Weir','女','仪器科学与电气工程学院','副教授',7),(32238038,'Izzy','女','交通学院','副教授',69),(32864161,'Bru','男','基础医学院新能源与环境学院','讲师',43),(34150575,'Vaughn Gittin','女','化学学院','副教授',54),(34566470,'JV','女','动物医学学院','副教授',13),(38488715,'Chilton','女','外国语言文化学院','教授',32),(38903121,'Akira Nakai','女','计算机科学与技术学院','讲师',52),(40029262,'Richie','男','艺术学院','讲师',49),(40508697,'Lyric','女','外国语言文化学院','教授',33),(41115709,'Travis','男','文学院','教授',17),(42886706,'Ravindra Chaudhry','女','生命科学学院','讲师',5),(43712406,'Yaz','男','仪器科学与电气工程学院','讲师',29),(44190666,'Sean McAlister','男','艺术学院','教授',4),(46235136,'Ryo Watanabe','男','物理学院','教授',90),(46799267,'Jerry','女','公共卫生学院','副教授',45),(48154285,'Sparky','男','考古学院','讲师',41),(49847588,'Magnus Walker','男','通信工程学院','教授',53),(50693310,'Anna Rivera','女','文学院','教授',20),(51909385,'Bridlet','男','文学院','讲师',39),(52074376,'Baron','男','艺术学院','教授',71),(53415315,'Boost','男','东北亚学院','讲师',31),(57903308,'Chad','男','考古学院','讲师',87),(59431087,'Harlow','女','公共卫生学院','教授',27),(59771995,'Big Lou','男','商学与管理学院','讲师',70),(60041388,'Bull','女','文学院','讲师',9),(61934567,'Julia','女','商学与管理学院','副教授',77),(62614936,'Dino','女','基础医学院新能源与环境学院','副教授',75),(62764317,'Youmna','女','马克思主义学院','教授',62),(64704780,'Ross','男','药学院','讲师',30),(67555985,'Lucas Rivera','男','护理学院','讲师',19),(67841650,'A$AP Rocky','女','电子科学与工程学院','副教授',34),(71092932,'Ozzy','女','哲学社会学院','副教授',37),(72214603,'Obi','女','交通学院','教授',23),(73164891,'Cha Cha','女','商学与管理学院','副教授',26),(73843850,'Morgan Stevenson','男','公共卫生学院','副教授',65),(74167723,'Fredric Aasbo','男','外国语言文化学院','副教授',55),(76341026,'Tobey','女','外国语言文化学院','副教授',74),(78642735,'Bit','女','基础医学院新能源与环境学院','教授',79),(79884221,'Robyn','男','通信工程学院','教授',18),(80131888,'2440','女','艺术学院','副教授',1),(81052176,'Sonny','女','植物科学学院','副教授',68),(83002314,'Frank Mercer','女','地球科学学院','教授',21),(83768047,'Anita','男','物理学院','讲师',76),(83833488,'Hiroshi Fujiwara','女','物理学院','教授',80),(87464378,'Sam Harper','男','护理学院','教授',73),(87822727,'Ming','女','仪器科学与电气工程学院','讲师',12),(88461764,'Shinichi Morohoshi','女','软件学院','副教授',50),(88668306,'Jack Rourke','男','文学院','讲师',72),(89056370,'Holden Parker Ⅲ','女','文学院','教授',66),(89215531,'Maddox','女','化学学院','副教授',36),(89349723,'Icaro','男','动物医学学院','讲师',40),(89953555,'Todd','男','马克思主义学院','讲师',89),(91361528,'Danny Shaw','男','仪器科学与电气工程学院','教授',22),(92424408,'Rudiger','男','计算机科学与技术学院','教授',58),(93850847,'Samantha','女','体育学院','教授',83),(95862588,'Ronnie','男','哲学社会学院','教授',10),(96009989,'Dal-Rae','男','基础医学院新能源与环境学院','讲师',25),(98975891,'Ryan Cooper','女','软件学院','教授',82);
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户表，登录认证';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Qiu','uza0SDshCNEk','教师','CvK3xHqdJR@qq.com'),(2,'Ty','fW2gamUls9bK','教师','1GEA35D@163.com'),(3,'Jess','pNiG93SMlQnx','教师','6aaUN@163.com'),(4,'Mac','pbGoSWHgAHRO','教师','VdaCA6l@outlook.com'),(5,'Rav','W18kz0hh410D','教师','yHVpE4daQg@qq.com'),(6,'Lina','AGuPJbSXDtVW','教师','u1z01wbU@163.com'),(7,'Gambler','ziTq0IF5LRvZ','教师','3E2rsHLncH@qq.com'),(8,'Razor','IV4gZi3GkFpu','教师','UYNs6UduO7@163.com'),(9,'Bull','WbD5MwVh90L9','教师','ybbKD@qq.com'),(10,'Ronnie','f0n0VqqYvJP8','教师','kFd5dR3M@gmail.com'),(11,'Webster','f8TwHHUqWu5w','教师','zE4dpcwD@outlook.com'),(12,'Ming','X15eDH8VFUvx','教师','YP8HepJ@gmail.com'),(13,'JV','N6Q4lkmRoaDO','教师','zPThG1dss@gmail.com'),(14,'Jewels','NvTfxKtEtDqw','教师','GbYVN1BfE@mails.jlu.edu.cn'),(15,'Spike','LMeEfPbdiiR0','教师','tT3ZtM@163.com'),(16,'Manu','sqsQ2Ed8U0CK','教师','XfynEM@163.com'),(17,'Travis','SOpye3Xw1M6y','教师','3w9m4UK@gmail.com'),(18,'Robyn','J6dEkXf3BYYt','教师','lWKkIDMcm@qq.com'),(19,'Lucas','8VZeKCEZ3bAQ','教师','hM7lXubiE@gmail.com'),(20,'Anna','KGEZO0tVfFRO','教师','7jiSd@gmail.com'),(21,'Mercer','WlssJFDf7DaP','教师','YZhTohhWb0@163.com'),(22,'Shaw','81JnBHsOqHQt','教师','4aX1WDUTdz@outlook.com'),(23,'Obi','XY0erYW0naRu','教师','KE4C0@qq.com'),(24,'Waru','NUAZsQmtSm95','教师','WFuqxlF@163.com'),(25,'Dal-Rae','2IewisqjJgbA','教师','Urdx4@mails.jlu.edu.cn'),(26,'Cha Cha','zIJRJRiYd2zs','教师','X7DZSpS@mails.jlu.edu.cn'),(27,'Harlow','5LCpPbxzIgNH','教师','GwJLMwTQKt@mails.jlu.edu.cn'),(28,'Justicia','RqSi9mBZNXZm','教师','pRtIZgNv@qq.com'),(29,'Yaz','kQOddt1zKCyY','教师','YnxZk@163.com'),(30,'Ross','gA7mJTIzEngn','教师','zjLneCFsGM@gmail.com'),(31,'Boost','Q7iS35DgB2XB','教师','w2cZoyW7@qq.com'),(32,'Chilton','kl2Zhh1Sw1gG','教师','mRdCBE@qq.com'),(33,'Lyric','wyl2Bd70autz','教师','iimGr@163.com'),(34,'Rocky','vGzKH95Tilf0','教师','d8fxaP@mails.jlu.edu.cn'),(35,'Medusa','lm07GYwuz9TV','教师','WQRyUswSJx@mails.jlu.edu.cn'),(36,'Maddox','DIwlQbv1Ml1A','教师','FpGZ4qXdoU@qq.com'),(37,'Ozzy','f6JDvMAlEYGh','教师','4xUTof@qq.com'),(38,'Dante','mgBQp8TpdIg7','教师','5jyfYpugQ@mails.jlu.edu.cn'),(39,'Bridlet','68OEpGl49Swj','教师','n0N6IK6cJq@mails.jlu.edu.cn'),(40,'Icaro','xm4XNw0ikXmM','教师','OYjqqt85@gmail.com'),(41,'Sparky','m7p0fHGFAqi4','教师','0IbqOMGvVF@gmail.com'),(42,'Nikita','5e1GgyF3uEm3','教师','chOqmg6EW@outlook.com'),(43,'Bru','k6lIjkt6YALm','教师','YBO7meP8@gmail.com'),(44,'Monica','oirgrnjcuQNX','教师','3h792besN@outlook.com'),(45,'Jerry','ywmHbODNUREE','教师','PxF30TkdJx@mails.jlu.edu.cn'),(46,'Dani','exnBYerArcOt','教师','IOAZIy@163.com'),(47,'Ferro','wVGd9cZzT87b','教师','0PphsSrd@outlook.com'),(48,'Viggo','PVptW5kkREH3','教师','c1KXa@gmail.com'),(49,'Richie','7SGOBtZB3cRl','教师','gXRwmo@163.com'),(50,'Morohoshi','Qj6Ytp6mUQtW','教师','wbmCfhssp7@outlook.com'),(51,'Ken','bRLjMQ8tDlqJ','教师','nvXqf@mails.jlu.edu.cn'),(52,'Nakai','BvsVNdILTBrN','教师','dIJchOm1TR@163.com'),(53,'Manu','GT4WpNMH6mku','教师','c0IFg1AX0g@qq.com'),(54,'Gittin','xmCurm2oQGWM','教师','sm0vLNA5@gmail.com'),(55,'Aasbo','8nFtNWF5yq7k','教师','WtsTCn@mails.jlu.edu.cn'),(56,'Bryn','7ETcVugXOKFE','教师','YfWqVhy6@mails.jlu.edu.cn'),(57,'Rydell','A9HUBnhAEzkW','教师','dYNnGmNVsI@gmail.com'),(58,'Rudiger','Uc53lvV2UWha','教师','lQq1DiI@outlook.com'),(59,'Anechka','ROq0ykrfAiKr','教师','wPNSn6@qq.com'),(60,'Eleonore','HjFxjyYhnarZ','教师','RKCPtB@mails.jlu.edu.cn'),(61,'Maya','n9HHF88AeXHY','教师','69cLanU4zp@163.com'),(62,'Youmna','rXIw5C8kFkm2','教师','gVwzEV@163.com'),(63,'Chase','jKp4Httv8snP','教师','bQH7qb@qq.com'),(64,'Shinmizu','csgyYtkFtUdw','教师','yq8gyq5e96@163.com'),(65,'Stevenson','ij6G9cfefWuw','教师','klxT4@outlook.com'),(66,'Holden','iUjsmmS5DeFP','教师','9uE2Q@outlook.com'),(67,'Alec','kK8uJFT8nrmx','教师','4ZqY9O@gmail.com'),(68,'Sonny','A6AfQ6g6nMTx','教师','0QGOwDo@163.com'),(69,'Izzy','k105rsh5qtjg','教师','ENjzRLP@qq.com'),(70,'Big Lou','3XAyzuAxKbmx','教师','7XyY2Sekd@mails.jlu.edu.cn'),(71,'Baron','Pxqa9ieAN2xO','教师','h6C0m9Gk@outlook.com'),(72,'Jack','FHPwogznwCWg','教师','pfP6EHt@qq.com'),(73,'Sam','iHnszGFxbPa9','教师','0y0U1O1@163.com'),(74,'Tobey','n6f7DF1dKx4U','教师','hq55S@mails.jlu.edu.cn'),(75,'Dino','lyFVg7cd5QS9','教师','aDtnTPtLk@gmail.com'),(76,'Anita','BgeNZnYuZmTV','教师','XVYH4WDf1A@outlook.com'),(77,'Julia','oDyp2H2riHGt','教师','wDZHs@qq.com'),(78,'Benny','q7n2LK0pLRhI','教师','rQ3nHv22@gmail.com'),(79,'Bit','6IT3zAIML8ag','教师','uU5mWApr@qq.com'),(80,'Fujiwara','mZZ4S5kHbUtH','教师','usjQnb@gmail.com'),(81,'Rachel','MufugucUQntd','教师','7ghJj9AKHN@gmail.com'),(82,'Ryan','1GcX1ATKgvyC','教师','SPRajyfZ@qq.com'),(83,'Samantha','SUxy6YcA9Oov','教师','8pQ3pvQ12k@gmail.com'),(84,'Meenisha','zGu3zlyiHsly','教师','URu1TE@gmail.com'),(85,'Eddie','QywVdUzYiDm0','教师','nhXTfP3b@163.com'),(86,'TJ','z3lCOafYNmVE','教师','HmU0zW@163.com'),(87,'Chad','A7V9Ip6CC00E','教师','Q63Ry07@mails.jlu.edu.cn'),(88,'Kurt','W83r8GVuTmMS','教师','AI8v6q@qq.com'),(89,'Todd','oDmfXZo22QCW','教师','gKOoJekmv@163.com'),(90,'Ryo','j2WrGqX2BsM3','管理员','eu9GmeM@qq.com'),(91,'Ace','6tRsq4XcriLD','管理员','RHXJcZ57MZ@outlook.com'),(92,'Warrior','KtwNfHu2yVoZ','管理员','XuL5uQE@qq.com'),(93,'Jester','L2i4bJzcg77M','管理员','HpjU5szxu@mails.jlu.edu.cn'),(94,'Rocket','W8jYddNtmWIC','管理员','NGsFWEAlf@qq.com'),(95,'Pistol','LjBo3I3SHFJI','管理员','y7A2uUYkQ@gmail.com'),(96,'Sprog','nSjW6fONEoVu','管理员','hYjImqG6C@gmail.com'),(97,'Bullet','kG7DNUiYOEFj','管理员','7hpRX@qq.com'),(98,'Magician','oUOl9OuUuFei','管理员','RIK4BBa@qq.com'),(99,'Dragon','ZjqQjvNrAzxr','管理员','b46SeW@qq.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'teacher_management'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-19 20:55:56
