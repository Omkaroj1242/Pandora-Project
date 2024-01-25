-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pandora
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
-- Table structure for table `food_item`
--

DROP TABLE IF EXISTS `food_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_item` (
  `food_item_id` bigint NOT NULL AUTO_INCREMENT,
  `actual_price` double NOT NULL,
  `available_quantity` int NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `offer` double NOT NULL,
  `category_id` bigint DEFAULT NULL,
  PRIMARY KEY (`food_item_id`),
  KEY `FK3omsn0mggulies5jhowcv9qoa` (`category_id`),
  CONSTRAINT `FK3omsn0mggulies5jhowcv9qoa` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_item`
--

LOCK TABLES `food_item` WRITE;
/*!40000 ALTER TABLE `food_item` DISABLE KEYS */;
INSERT INTO `food_item` VALUES (1,120,19,'Biryani is a mixed rice dish most popular in South Asia. It is made with rice, some type of meat and spices. To cater to vegetarians, in some cases, it is prepared by substituting vegetables for the meat. Sometimes eggs and/or potatoes are added. ',_binary '','https://www.licious.in/blog/wp-content/uploads/2020/12/Hyderabadi-chicken-Biryani.jpg','Biryani',10,1),(2,100,19,'Idli Sambar is a South Indian breakfast meal where soft fluffy steamed cakes known as idli are served with sambar, a vegetable lentil stew. Idli Sambar is made with lentils, plenty of spices, mixed vegetables and herbs.\n',_binary '','https://img-global.cpcdn.com/recipes/0ab0c56e39003e77/1200x630cq70/photo.jpg','Idli',15,1),(3,100,29,'A dosa is a thin savory crepe in South Indian cuisine made from a fermented batter of ground black gram and rice. Dosas are served hot, often with chutney and sambar. Dosas are popular in South Asia as well as around the world.',_binary '','https://www.finedininglovers.com/sites/g/files/xknfdk626/files/2023-02/Dosa%20recipe%20via%20Deepla%20Tamang%20Unsplash.jpeg','Dosa',10,1),(4,100,20,'A renowned Chinese dish known for its crispy duck skin and succulent meat.',_binary '','https://images.pexels.com/photos/5848599/pexels-photo-5848599.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2','Peking Duck',10,2),(6,100,20,'A classic Chinese fried rice dish with a mix of colorful vegetables, meat, and eggs.\n',_binary '','https://cdn.sanity.io/images/2r0kdewr/production/82f8a09e19a456b94077b31d23861a5b03905307-1000x667.jpg?w=600&q=50','Yangzhou Fried Rice',10,2),(7,110,10,'A signature Sichuan dish known for its spicy and flavorful braised tofu with minced meat.',_binary '','https://twoplaidaprons.com/wp-content/uploads/2022/05/mapo-tofu-in-bowl-thumbnail.jpg','Mapo Tofu',15,2),(10,60,98,'Gulab jamun is a sweet confectionary or dessert, originating in the Indian subcontinent and a type of mithai popular in India, Pakistan, Nepal, the Maldives, and Bangladesh, as well as Myanmar.',_binary '','https://t0.gstatic.com/licensed-image?q=tbn:ANd9GcRAKZkqVdOBlAF99hpeKTkLqumRyViDWokRCaj_frTcQECXWWOLB9Yi1l-D_Ds30xYx','Gulab Jamun',10,4),(13,100,30,'Upma is a popular South Indian breakfast made with cream of wheat or semolina flour (called rava or suji locally), veggies, spices and herbs',_binary '','https://www.indianhealthyrecipes.com/wp-content/uploads/2021/08/upma-recipe.jpg','Upma',15,5);
/*!40000 ALTER TABLE `food_item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-25 10:33:47
