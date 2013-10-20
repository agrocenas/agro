-- MySQL Loaders for project AGROCENAS
--
-- Database: agro
-- ------------------------------------------------------

--
-- suppliers
--

LOCK TABLES `suppliers` WRITE;
INSERT INTO `suppliers` VALUES (1, 1, 'Produtor1', '31566564', 'Rua das maçãs', 'Lisboa');
INSERT INTO `suppliers` VALUES (2, 1, 'Produtor2', '+44 564612345', 'Rua das alfacinhas','Lisboa');
UNLOCK TABLES;


--
-- contacts
--


--
-- product_types
--

LOCK TABLES `product_types` WRITE;
INSERT INTO `product_types` VALUES  
(1,'Frutas')
,(2,'Vegetais')
,(3,'Aromáticas')
,(4, 'Plantas Vivas')
,(5,'Cogumelos')
,(6,'Chás');
UNLOCK TABLES;

--
-- products
--

LOCK TABLES `products` WRITE;
INSERT INTO `products` VALUES (1,1,'Laranjas','10.50','N');
INSERT INTO `products` VALUES(2,2,'Espinafres','10.40','Y');
INSERT INTO `products` VALUES(3,2,'Cebola','20.10','Y');
INSERT INTO `products` VALUES(4,3,'Coentros','15.50','Y');
INSERT INTO `products` VALUES(5,3,'Oregaos','7.50','N');
INSERT INTO `products` VALUES(6,6,'Chá Principe','3.50','Y');
INSERT INTO `products` VALUES(7,6,'Chá Verde','4.50','Y');
UNLOCK TABLES;


--
-- users
--

LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES(1,'demo','c0bd96dc7ea4ec56741a4e07f6ce98012814d853','Demo User','demo@agrocenas.com','2013-04-10 20:53:03','Y');
INSERT INTO `users` VALUES(2, 'master' , '4f26aeafdb2367620a393c973eddbe8f8b846ebd', 'master of the universe', 'namasteadmin@gmail.com', '2013-04-10 20:30:00', 'Y');
UNLOCK TABLES;


--
-- posts
--
LOCK TABLES `posts` WRITE;
INSERT INTO `posts` VALUES(1 ,'1', '2013-04-10 20:53:03', '1', 'Primeiro produto' ,'Y');
INSERT INTO `posts` VALUES(2 ,'1', '2013-04-10 20:53:04', '1', 'Segundo produto' ,'N');
INSERT INTO `posts` VALUES(3 ,'1', '2013-04-10 20:53:04', '2', ' produto' ,'Y');
INSERT INTO `posts` VALUES(4 ,'1', '2013-04-10 20:53:04', '3', ' produto' ,'N');
INSERT INTO `posts` VALUES(5 ,'1', '2013-04-10 20:53:04', '4', ' produto' ,'N');
INSERT INTO `posts` VALUES(6 ,'1', '2013-04-10 20:53:04', '3', 'Segundo produto' ,'N');
INSERT INTO `posts` VALUES(7 ,'1', '2013-04-10 20:53:04', '2', ' produto' ,'N');
INSERT INTO `posts` VALUES(8 ,'1', '2013-04-10 20:53:04', '4', ' produto' ,'N');
INSERT INTO `posts` VALUES(9 ,'1', '2013-04-10 20:53:04', '3', ' produto' ,'N');
INSERT INTO `posts` VALUES(10 ,'1', '2013-04-10 20:53:04', '3', ' produto' ,'Y');
INSERT INTO `posts` VALUES(11 ,'1', '2013-04-10 20:53:04', '2', ' produto' ,'Y');
INSERT INTO `posts` VALUES(12 ,'1', '2013-04-10 20:53:04', '1', ' produto' ,'N');
INSERT INTO `posts` VALUES(13 ,'1', '2013-04-10 20:53:04', '4', ' produto' ,'N');
INSERT INTO `posts` VALUES(14 ,'1', '2013-04-10 20:53:04', '1', ' produto' ,'N');
INSERT INTO `posts` VALUES(15 ,'1', '2013-04-10 20:53:04', '4', ' produto' ,'Y');
INSERT INTO `posts` VALUES(16 ,'1', '2013-04-10 20:53:04', '3', ' produto' ,'Y');
INSERT INTO `posts` VALUES(17 ,'1', '2013-04-10 20:53:04', '1', ' produto' ,'Y');
INSERT INTO `posts` VALUES(18 ,'1', '2013-04-10 20:53:04', '3', ' produto' ,'Y');
INSERT INTO `posts` VALUES(19 ,'1', '2013-04-10 20:53:04', '4', ' produto' ,'Y');
INSERT INTO `posts` VALUES(20 ,'1', '2013-04-10 20:53:04', '2', ' produto' ,'Y');
INSERT INTO `posts` VALUES(21 ,'1', '2013-04-10 20:53:04', '1', ' produto' ,'Y');
INSERT INTO `posts` VALUES(22 ,'1', '2013-04-10 20:53:04', '1', ' produto' ,'N');
INSERT INTO `posts` VALUES(23 ,'1', '2013-04-10 20:53:04', '3', ' produto' ,'Y');
INSERT INTO `posts` VALUES(24 ,'1', '2013-04-10 20:53:04', '2', ' produto' ,'Y');
INSERT INTO `posts` VALUES(25 ,'1', '2013-04-10 20:53:04', '1', ' produto' ,'Y');
INSERT INTO `posts` VALUES(26 ,'1', '2013-04-10 20:53:04', '3', ' produto' ,'N');
INSERT INTO `posts` VALUES(27 ,'1', '2013-04-10 20:53:04', '1', ' produto' ,'Y');
INSERT INTO `posts` VALUES(28 ,'1', '2013-04-10 20:53:04', '2', ' produto' ,'Y');
INSERT INTO `posts` VALUES(29 ,'1', '2013-04-10 20:53:04', '1', ' produto' ,'N');
INSERT INTO `posts` VALUES(30 ,'1', '2013-04-10 20:53:04', '1', ' produto' ,'Y');
INSERT INTO `posts` VALUES(31 ,'1', '2013-04-10 20:53:04', '1', ' produto' ,'Y');
INSERT INTO `posts` VALUES(32 ,'1', '2013-04-10 20:53:04', '1', ' produto' ,'N');
INSERT INTO `posts` VALUES(33 ,'1', '2013-04-10 20:53:04', '2', ' produto' ,'Y');
INSERT INTO `posts` VALUES(34 ,'1', '2013-04-10 20:53:04', '1', ' produto' ,'Y');
INSERT INTO `posts` VALUES(35 ,'1', '2013-04-10 20:53:04', '3', ' produto' ,'N');
INSERT INTO `posts` VALUES(36 ,'1', '2013-04-10 20:53:04', '1', ' produto' ,'Y');
INSERT INTO `posts` VALUES(37 ,'1', '2013-04-10 20:53:04', '2', ' produto' ,'N');
INSERT INTO `posts` VALUES(38 ,'1', '2013-04-10 20:53:04', '1', ' produto' ,'Y');
INSERT INTO `posts` VALUES(39 ,'1', '2013-04-10 20:53:04', '3', ' produto' ,'Y');
INSERT INTO `posts` VALUES(40 ,'1', '2013-04-10 20:53:04', '1', ' produto' ,'N');
INSERT INTO `posts` VALUES(41 ,'1', '2013-04-10 20:53:04', '4', ' produto' ,'Y');
INSERT INTO `posts` VALUES(42 ,'1', '2013-04-10 20:53:04', '1', ' produto' ,'Y');
INSERT INTO `posts` VALUES(43 ,'1', '2013-04-10 20:53:04', '1', ' produto' ,'Y');
INSERT INTO `posts` VALUES(44 ,'1', '2013-04-10 20:53:04', '5', ' produto' ,'N');
INSERT INTO `posts` VALUES(45 ,'1', '2013-04-10 20:53:04', '1', ' produto' ,'N');
INSERT INTO `posts` VALUES(46 ,'1', '2013-04-10 20:53:04', '1', ' produto' ,'N');
INSERT INTO `posts` VALUES(47 ,'1', '2013-04-10 20:53:04', '1', ' produto' ,'Y');
INSERT INTO `posts` VALUES(48 ,'1', '2013-04-10 20:53:04', '2', ' produto' ,'Y');
INSERT INTO `posts` VALUES(49 ,'1', '2013-04-10 20:53:04', '1', ' produto' ,'Y');
INSERT INTO `posts` VALUES(50 ,'1', '2013-04-10 20:53:04', '1', ' produto' ,'N');
UNLOCK TABLES;


--
-- comments
--
LOCK TABLES `comments` WRITE;
INSERT INTO `comments` VALUES (1, 1, 1, '2013-04-10 20:53:04', 5 , 'nice vegies', 'tasted it yesterday and they are great!', 'Y');
INSERT INTO `comments` VALUES (2, 1, 2, '2013-04-11 20:53:04', 5 , 'good', 'tasted it yesterday and they are great!', 'Y');
INSERT INTO `comments` VALUES (3, 2, 1, '2013-04-12 20:53:04', 5 , 'suck', 'tasted it yesterday and they are shit!', 'Y');
INSERT INTO `comments` VALUES (4, 2, 2, '2013-04-13 20:53:04', 5 , 'fraud!', '=)#$#%$%"$##!', 'Y');
INSERT INTO `comments` VALUES (5, 2, 2, '2013-04-14 20:53:04', 5 , 'cheater', 'payed and not receive a thing!', 'Y');
INSERT INTO `comments` VALUES (6, 3, 2, '2013-04-15 20:53:04', 5 , 'nice vegies1', 'tasted it yesterday and they are great!', 'Y');
INSERT INTO `comments` VALUES (7, 3, 2, '2013-04-16 20:53:04', 5 , 'nice vegies2', 'tasted it yesterday!', 'Y');
INSERT INTO `comments` VALUES (8, 3, 2, '2013-04-17 20:53:04', 5 , 'nice vegies3', 'tasted it yesterday', 'Y');
INSERT INTO `comments` VALUES (9, 3, 2, '2013-04-18 20:53:04', 5 , 'nice vegies4', 'tasted it !', 'Y');
INSERT INTO `comments` VALUES (10, 4, 2, '2013-04-19 20:53:04', 5 , 'nice ', 'some dirt', 'Y');
INSERT INTO `comments` VALUES (11, 5, 2, '2013-04-20 20:53:04', 5 , 'cool', 'had one rotten!', 'Y');
UNLOCK TABLES;

--
-- ratings
--
LOCK TABLES `ratings` WRITE;
INSERT INTO `ratings` VALUES (0 , 'Fraude', 'Nao é produtor, não entrega os produtos, outras'); 
INSERT INTO `ratings` VALUES (1 , 'Mau', 'Produtos estragados,outras');
INSERT INTO `ratings` VALUES (2 , 'A melhorar', 'Má apresentação,outras');
INSERT INTO `ratings` VALUES (3 , 'Satisfatorio', 'O Normal');
INSERT INTO `ratings` VALUES (4 , 'Bom', 'Supera as expectativas');
INSERT INTO `ratings` VALUES (5 , 'Excelente', 'Bom preço, boa qualidate, pontual, outras ');
UNLOCK TABLES;

-- map locations
LOCK TABLES `maplocations` WRITE;
INSERT INTO `maplocations` (`id`,`name`,`address`,`lat`,`lng`,`type`) VALUES (4,'Amelia MAria','Golega',39.402512,-8.491393,'user');
INSERT INTO `maplocations` (`id`,`name`,`address`,`lat`,`lng`,`type`) VALUES (5,'ze manel','Travessa da Cruz, brancos, Torres vedras',39.107265,-9.148924,'supplier');
INSERT INTO `maplocations` (`id`,`name`,`address`,`lat`,`lng`,`type`) VALUES (6,'Maria','Av. Professor Egas Moniz, Lisboa, Portugal',38.750423,-9.162045,'user');
INSERT INTO `maplocations` (`id`,`name`,`address`,`lat`,`lng`,`type`) VALUES (7,'Isaura','Rua Antonio Macedo, Lisboa, Portugal',38.740562,-9.178077,'user');
INSERT INTO `maplocations` (`id`,`name`,`address`,`lat`,`lng`,`type`) VALUES (8,'Patricio','Rua Buraca, Lisboa, Portugal',38.741890,-9.203204,'supplier');
INSERT INTO `maplocations` (`id`,`name`,`address`,`lat`,`lng`,`type`) VALUES (9,'Antonieta','Campo Grande, Lisboa, Portugal',38.757915,-9.203204,'user');
INSERT INTO `maplocations` (`id`,`name`,`address`,`lat`,`lng`,`type`) VALUES (10,'Chico cesar','Estrada Militar, Sacavem, Portugal',38.812344,-9.115776,'supplier');
INSERT INTO `maplocations` (`id`,`name`,`address`,`lat`,`lng`,`type`) VALUES (11,'Carlos Alberto','Rua Pedro Alvares Cabral, Loures, Portugal',38.840717,-9.203204,'supplier');
INSERT INTO `maplocations` (`id`,`name`,`address`,`lat`,`lng`,`type`) VALUES (12,'Felismina maria','Rua Virginia Vitorino, Lisboa',38.840729,-9.160280,'user');UNLOCK  TABLES;
UNLOCK TABLES;

