/*
Navicat MySQL Data Transfer

Source Server         : a
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : db_shop

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2014-05-11 17:10:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admininfo`
-- ----------------------------
DROP TABLE IF EXISTS `admininfo`;
CREATE TABLE `admininfo` (
  `Adminname` varchar(20) NOT NULL,
  `Adminpsw` varchar(20) NOT NULL,
  PRIMARY KEY  (`Adminname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admininfo
-- ----------------------------

-- ----------------------------
-- Table structure for `goodscatalog`
-- ----------------------------
DROP TABLE IF EXISTS `goodscatalog`;
CREATE TABLE `goodscatalog` (
  `Catelogid` int(4) NOT NULL auto_increment,
  `Catalogname` varchar(20) NOT NULL,
  PRIMARY KEY  (`Catelogid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodscatalog
-- ----------------------------

-- ----------------------------
-- Table structure for `goodsinfo`
-- ----------------------------
DROP TABLE IF EXISTS `goodsinfo`;
CREATE TABLE `goodsinfo` (
  `Goodsid` int(4) NOT NULL auto_increment,
  `Goodsname` varchar(20) NOT NULL,
  `Goodsprice` float(4,0) NOT NULL,
  `Goodsum` float(4,0) NOT NULL,
  `Goodsmaker` varchar(100) NOT NULL,
  `Goodsdesc` varchar(200) NOT NULL,
  PRIMARY KEY  (`Goodsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodsinfo
-- ----------------------------

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
