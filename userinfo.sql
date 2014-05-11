/*
Navicat MySQL Data Transfer

Source Server         : a
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : db_shop

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2014-05-11 16:55:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `Userid` int(4) NOT NULL auto_increment,
  `Regname` varchar(50) NOT NULL,
  `Realname` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Sexy` char(2) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Identifyid` char(18) NOT NULL,
  `Bankid` char(20) NOT NULL,
  PRIMARY KEY  (`Userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
