# Host: localhost  (Version: 5.6.21-log)
# Date: 2021-01-21 01:07:20
# Generator: MySQL-Front 5.3  (Build 4.212)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "mt_officer"
#

DROP TABLE IF EXISTS `mt_officer`;
CREATE TABLE `mt_officer` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `OfficerID` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Desig` varchar(255) DEFAULT NULL,
  `Remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "mt_officer"
#

INSERT INTO `mt_officer` VALUES (1,'Off123','Abdul Jabbar','Murder Case Officer','Good Response Team');

#
# Structure for table "mt_station"
#

DROP TABLE IF EXISTS `mt_station`;
CREATE TABLE `mt_station` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `stationName` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `Incharge` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "mt_station"
#

INSERT INTO `mt_station` VALUES (1,'Roza Police Station','Roza B Darga Gulbarga','Ramesha');

#
# Structure for table "tr_criminal"
#

DROP TABLE IF EXISTS `tr_criminal`;
CREATE TABLE `tr_criminal` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FIRNo` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `CrimeDesc` varchar(500) DEFAULT NULL,
  `OfficerAllocated` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `CrimeDate` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tr_criminal"
#

INSERT INTO `tr_criminal` VALUES (1,'FIR20013','Raheem Sadiq',25,'test','Off123','gul','969696','Male','2021-03-02');

#
# Structure for table "tr_fir"
#

DROP TABLE IF EXISTS `tr_fir`;
CREATE TABLE `tr_fir` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FIRNo` varchar(255) DEFAULT NULL,
  `District` varchar(255) DEFAULT NULL,
  `PoliceStation` varchar(255) DEFAULT NULL,
  `FIRDesc` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tr_fir"
#

INSERT INTO `tr_fir` VALUES (1,'FIR20013','Gulbarga','Roza Police Station','Murdur Case');
