/*
Navicat MySQL Data Transfer

Source Server         : a
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : db_shop

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2014-05-11 17:10:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `orderlist`
-- ----------------------------
DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist` (
  `Orderid` int(4) NOT NULL auto_increment,
  `Goodsid` varchar(20) NOT NULL,
  `Ordernum` int(4) NOT NULL,
  `Ispay` char(1) NOT NULL,
  PRIMARY KEY  (`Orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderlist
-- ----------------------------
