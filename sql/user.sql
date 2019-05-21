/*
Navicat MySQL Data Transfer

Source Server         : hihi
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : login

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-05-21 16:30:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '15989159942', '123456', 'xie');
INSERT INTO `user` VALUES (null, '15989159941', '123654', 'jia');
INSERT INTO `user` VALUES (null, '15989159940', '123123', 'ming');
INSERT INTO `user` VALUES (null, '15989159944', '123123', '123');
INSERT INTO `user` VALUES (null, '15989159945', '123123', '123123');
INSERT INTO `user` VALUES (null, '15989159946', '123123', '12');
INSERT INTO `user` VALUES (null, '14545454511', '123123', 'xjm');
INSERT INTO `user` VALUES (null, '13397518026', 'a123456', 'abcd');
SET FOREIGN_KEY_CHECKS=1;
