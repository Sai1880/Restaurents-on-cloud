/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.0.67-community-nt : Database - hotel_order
*********************************************************************
Server version : 5.0.67-community-nt
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `hotel_order`;

USE `hotel_order`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(70) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COMMENT='details of all categoried';

/*Data for the table `category` */

insert  into `category`(`id`,`name`) values (1,'Starters'),(2,'BreakFast'),(3,'Lunch'),(4,'Snacks and Drinks'),(5,'pizza'),(6,'biryani'),(7,'veg biryani');

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `category_id` int(10) unsigned NOT NULL default '0',
  `name` varchar(45) NOT NULL default '',
  `qnt` int(10) unsigned NOT NULL default '0',
  `cost` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COMMENT='item detail';

/*Data for the table `item` */

insert  into `item`(`id`,`category_id`,`name`,`qnt`,`cost`) values (1,1,'Papad',1,'20'),(2,1,'Soup',1,'50'),(3,2,'Omlette',2,'100'),(4,3,'Biryani',1,'80'),(5,5,'veg',1,'200'),(6,3,'white rice',20,'100'),(7,2,'idly',20,'10'),(8,1,'chilly',30,'1'),(9,6,'dum biryani',2,'100'),(10,7,'veg rice',2,'200');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `user_name` varchar(45) NOT NULL default '',
  `pass` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`user_name`,`pass`) values (1,'cook','cook'),(2,'1','table1'),(3,'2','table2'),(4,'3','table3'),(5,'4','table4'),(6,'5','table5');

/*Table structure for table `order_details` */

DROP TABLE IF EXISTS `order_details`;

CREATE TABLE `order_details` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `order_id` int(10) unsigned NOT NULL default '0',
  `item_id` int(10) unsigned NOT NULL default '0',
  `qnt` int(10) unsigned NOT NULL default '0',
  `status` varchar(45) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `order_details` */

insert  into `order_details`(`id`,`order_id`,`item_id`,`qnt`,`status`) values (1,1,6,0,'STARTED'),(2,2,10,2,'STARTED'),(3,3,10,2,'STARTED'),(4,4,10,2,'STARTED'),(5,5,10,1,'STARTED');

/*Table structure for table `order_master` */

DROP TABLE IF EXISTS `order_master`;

CREATE TABLE `order_master` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `table_no` int(10) unsigned NOT NULL default '0',
  `name` varchar(20) NOT NULL default '',
  `order_date` date NOT NULL default '0000-00-00',
  `order_time` time NOT NULL default '00:00:00',
  `status` varchar(15) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `order_master` */

insert  into `order_master`(`id`,`table_no`,`name`,`order_date`,`order_time`,`status`) values (1,2,'vijay','2024-04-02','17:47:54','COOKED'),(2,1,'','2024-04-02','20:27:21','null'),(3,1,'2','2024-04-02','20:27:30','JUST_ORDERED'),(4,2,'nani','2024-04-02','20:29:33','JUST_ORDERED'),(5,2,'nani','2024-04-02','20:32:51','JUST_ORDERED');
