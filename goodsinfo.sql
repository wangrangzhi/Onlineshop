/*
Navicat MySQL Data Transfer

Source Server         : a
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : db_shop

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2014-05-11 17:10:39
*/

SET FOREIGN_KEY_CHECKS=0;

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
