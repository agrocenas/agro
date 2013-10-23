-- MySQL Schema creation for project AGROCENAS
--
-- Database: agro
-- ------------------------------------------------------

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
CREATE TABLE `suppliers` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user` INT UNSIGNED NOT NULL REFERENCES users(`id`),
  `name` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `telephone` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `address` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `city` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


--
-- Table structure for table `contacts`
-- If user is logged in register his userID 
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user` INT UNSIGNED REFERENCES users(`id`),
  `name` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `comments` text COLLATE utf8_spanish_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `product_types_id` int UNSIGNED NOT NULL REFERENCES product_types(`id`),
  `name` VARCHAR(70) CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NOT NULL ,
  `price` DECIMAL(16,2) NOT NULL ,
  `active` ENUM('Y','N') CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NULL DEFAULT NULL ,
  PRIMARY KEY (`id`) 
)
ENGINE = InnoDB AUTO_INCREMENT = 8 DEFAULT CHARACTER SET = utf8 COLLATE = utf8_spanish_ci;



--
-- Table structure for table `product_types`
--

DROP TABLE IF EXISTS `product_types`;
CREATE TABLE `product_types` (
  `id` INT unsigned NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(70) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;



--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_spanish_ci NOT NULL,
  `password` char(40) COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(120) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(70) COLLATE utf8_spanish_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `active` char(1) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE  TABLE IF NOT EXISTS `posts` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `user` INT NOT NULL REFERENCES users(`id`),
  `date` DATETIME NOT NULL ,
  `product` INT NOT NULL REFERENCES product(`id`),
  `description` VARCHAR(4000) CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NOT NULL ,
  `active` CHAR(1) CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NOT NULL ,
  PRIMARY KEY (`id`)
)
ENGINE = InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE  TABLE IF NOT EXISTS `comments` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `user` INT NOT NULL REFERENCES users(`id`),  
  `date` DATETIME NOT NULL , -- use date from post_comment instead
  `rating` INT UNSIGNED REFERENCES ratings(`id`), 
  `title` VARCHAR(50) CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' ,
  `descrition` VARCHAR(500) CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NOT NULL ,
  `active` CHAR(1) CHARACTER SET 'utf8' COLLATE 'utf8_spanish_ci' NOT NULL ,
  PRIMARY KEY (`id`)
)
ENGINE = InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;


--
-- Relational table for post comments
--

DROP TABLE IF EXISTS `post_comments`;
CREATE TABLE `post_comments` (
    `id` INT unsigned NOT NULL AUTO_INCREMENT,
    `post` INT NOT NULL REFERENCES posts(`id`),
    `comment` INT NOT NULL REFERENCES comments(`id`),
    -- `created_at` DATE NOT NULL,
    PRIMARY KEY (`id`)
);

--
-- Table structure for table `ratings``
--

DROP TABLE IF EXISTS `ratings`;
CREATE TABLE `ratings` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(25) COLLATE utf8_spanish_ci NOT NULL,
  `descrition` VARCHAR(50) COLLATE utf8_spanish_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;



-- 
-- Table structure for table 'maplocations'
--

DROP TABLE IF EXISTS `maplocations`;
CREATE TABLE `maplocations` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR( 60 ) NOT NULL ,
  `address` VARCHAR( 80 ) NOT NULL ,
  `lat` FLOAT( 10, 6 ) NOT NULL ,
  `lng` FLOAT( 10, 6 ) NOT NULL ,
  `type` VARCHAR( 30 ) NOT NULL,
PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci; 


-- 
-- Table structure for table 'pictures'
--

DROP TABLE IF EXISTS `pictures`;
CREATE TABLE `pictures` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `caption` VARCHAR( 256 ) NOT NULL ,
  `type` VARCHAR( 30 ) NOT NULL ,
PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

