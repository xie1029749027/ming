/*
Navicat MySQL Data Transfer

Source Server         : hihi
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : login

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-05-21 16:30:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dingdan
-- ----------------------------
DROP TABLE IF EXISTS `dingdan`;
CREATE TABLE `dingdan` (
  `zid` int(255) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(255) NOT NULL,
  `qty` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`zid`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dingdan
-- ----------------------------
INSERT INTO `dingdan` VALUES ('32', '3', '6', '15989159942');
INSERT INTO `dingdan` VALUES ('28', '5', '10', '15989159942');
INSERT INTO `dingdan` VALUES ('30', '1', '5', '15989159942');
INSERT INTO `dingdan` VALUES ('31', '4', '3', '15989159942');
SET FOREIGN_KEY_CHECKS=1;
