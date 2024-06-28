-- MySQL dump 10.13  Distrib 8.0.37, for Linux (x86_64)
--
-- Host: localhost    Database: egg_shop
-- ------------------------------------------------------
-- Server version	8.0.37-0ubuntu0.22.04.3

--
-- Table structure for table `user`
--

-- creates the table 'user' in the database
CREATE TABLE `user` (
  `user_id` int unsigned NOT NULL AUTO_INCREMENT,  -- creates a coloumn 'user_id'
  `first_name` varchar(50) NOT NULL,  -- creates a column 'first_name'
  `last_name` varchar(50) NOT NULL,  -- creates a column 'last_name'
  PRIMARY KEY (`user_id`)  -- sets user_id as the primary key
)