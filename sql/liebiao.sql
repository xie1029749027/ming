/*
Navicat MySQL Data Transfer

Source Server         : hihi
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : login

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-05-21 16:30:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for liebiao
-- ----------------------------
DROP TABLE IF EXISTS `liebiao`;
CREATE TABLE `liebiao` (
  `id` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sale` varchar(255) DEFAULT NULL,
  `yishou` varchar(255) DEFAULT NULL,
  `danjia` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `url1` varchar(255) DEFAULT NULL,
  `fenzu` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of liebiao
-- ----------------------------
INSERT INTO `liebiao` VALUES ('1', './img/hot1.jpg', '爱宝嘉 超大柔软宠物温暖邂逅爱心猫猫狗狗床', '158', '77', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg&xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('2', './img/hot2.jpg', '日本APDC 电解漂漂水家居宠物除菌消臭清新喷雾300ml  宠物除臭喷剂', '159', '78', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('3', './img/hot3.jpg', '小佩Petkit 宠物智能猫窝冬季保暖冬天空调窝四季通用小型犬狗窝', '160', '79', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('4', './img/hot4.jpg', '伊丽 Elite 小怪兽猫窝爬架', '161', '80', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('5', './img/hot5.jpg', 'Touchcat它它 超可爱温暖猫窝动物园系列图案猫抓板', '162', '81', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('6', './img/hot6.jpg', '比瑞吉 室内成猫粮天然粮2kg', '163', '82', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('7', './img/hot7.jpg', '伯纳天纯 成猫天然无谷配方猫粮1.5kg', '164', '83', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('8', './img/hot8.jpg', '爱宝嘉 超大柔软宠物温暖邂逅爱心猫猫狗狗床', '165', '84', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('9', './img/hot9.jpg', '日本APDC 电解漂漂水家居宠物除菌消臭清新喷雾300ml  宠物除臭喷剂', '166', '85', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('10', './img/hot10.jpg', '小佩Petkit 宠物智能猫窝冬季保暖冬天空调窝四季通用小型犬狗窝', '167', '86', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('11', './img/hot11.jpg', '伊丽 Elite 小怪兽猫窝爬架', '168', '87', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('12', './img/hot12.jpg', 'Touchcat它它 超可爱温暖猫窝动物园系列图案猫抓板', '169', '88', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('14', './img/b1.jpg', 'brand_1', '', '', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('15', './img/b2.jpg', 'brand_2', '', '', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('16', './img/b3.jpg', 'brand_3', '', '', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('17', './img/b4.jpg', 'brand_4', '', '', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('18', './img/b5.jpg', 'brand_5', '', '', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('19', './img/b6.jpg', 'brand_6', '', '', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('20', './img/b7.jpg', 'brand_7', '', '', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('21', './img/b8.jpg', 'brand_8', '', '', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('22', './img/b9.jpg', 'brand_9', '', '', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('23', './img/dog_c1.jpg', '爱宝嘉 超大柔软宠物温暖邂逅爱心猫猫狗狗床', '205', '100', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', '1');
INSERT INTO `liebiao` VALUES ('24', './img/dog_c2.jpg', '日本APDC 电解漂漂水家居宠物除菌消臭清新喷雾300ml  宠物除臭喷剂', '199', '101', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', '1');
INSERT INTO `liebiao` VALUES ('25', './img/dog_c3.jpg', '小佩Petkit 宠物智能猫窝冬季保暖冬天空调窝四季通用小型犬狗窝', '202', '102', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', '1');
INSERT INTO `liebiao` VALUES ('26', './img/dog_c4.jpg', '伊丽 Elite 小怪兽猫窝爬架', '198', '103', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', '1');
INSERT INTO `liebiao` VALUES ('27', './img/dog_c5.jpg', 'Touchcat它它 超可爱温暖猫窝动物园系列图案猫抓板', '204', '104', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', '1');
INSERT INTO `liebiao` VALUES ('28', './img/dog_c6.jpg', '比瑞吉 室内成猫粮天然粮2kg', '197', '105', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', '1');
INSERT INTO `liebiao` VALUES ('29', './img/dog_c7.jpg', '伯纳天纯 成猫天然无谷配方猫粮1.5kg', '206', '106', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', '1');
INSERT INTO `liebiao` VALUES ('30', './img/dog_c8.jpg', '爱宝嘉 超大柔软宠物温暖邂逅爱心猫猫狗狗床', '207', '107', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', '1');
INSERT INTO `liebiao` VALUES ('31', './img/dog_c1.jpg', '爱宝嘉 超大柔软宠物温暖邂逅爱心猫猫狗狗床', '208', '108', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', '2');
INSERT INTO `liebiao` VALUES ('32', './img/dog_c2.jpg', '日本APDC 电解漂漂水家居宠物除菌消臭清新喷雾300ml  宠物除臭喷剂', '209', '109', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', '2');
INSERT INTO `liebiao` VALUES ('33', './img/dog_c3.jpg', '小佩Petkit 宠物智能猫窝冬季保暖冬天空调窝四季通用小型犬狗窝', '210', '110', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', '2');
INSERT INTO `liebiao` VALUES ('34', './img/dog_c4.jpg', '伊丽 Elite 小怪兽猫窝爬架', '211', '111', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', '2');
INSERT INTO `liebiao` VALUES ('35', './img/dog_c5.jpg', 'Touchcat它它 超可爱温暖猫窝动物园系列图案猫抓板', '212', '112', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', '2');
INSERT INTO `liebiao` VALUES ('36', './img/dog_c6.jpg', '比瑞吉 室内成猫粮天然粮2kg', '213', '113', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', '2');
INSERT INTO `liebiao` VALUES ('37', './img/dog_c7.jpg', '伯纳天纯 成猫天然无谷配方猫粮1.5kg', '214', '114', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', '2');
INSERT INTO `liebiao` VALUES ('38', './img/dog_c8.jpg', '爱宝嘉 超大柔软宠物温暖邂逅爱心猫猫狗狗床', '215', '115', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', '3');
INSERT INTO `liebiao` VALUES ('39', './img/dog_c1.jpg', '爱宝嘉 超大柔软宠物温暖邂逅爱心猫猫狗狗床', '216', '116', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', '3');
INSERT INTO `liebiao` VALUES ('40', './img/dog_c2.jpg', '日本APDC 电解漂漂水家居宠物除菌消臭清新喷雾300ml  宠物除臭喷剂', '217', '117', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', '3');
INSERT INTO `liebiao` VALUES ('41', './img/dog_c3.jpg', '小佩Petkit 宠物智能猫窝冬季保暖冬天空调窝四季通用小型犬狗窝', '218', '118', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', '3');
INSERT INTO `liebiao` VALUES ('42', './img/dog_c4.jpg', '伊丽 Elite 小怪兽猫窝爬架', '219', '119', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', '3');
INSERT INTO `liebiao` VALUES ('43', './img/dog_c5.jpg', 'Touchcat它它 超可爱温暖猫窝动物园系列图案猫抓板', '220', '120', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', '3');
INSERT INTO `liebiao` VALUES ('44', './img/dog_c6.jpg', '比瑞吉 室内成猫粮天然粮2kg', '221', '121', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', '3');
INSERT INTO `liebiao` VALUES ('45', './img/dog_c7.jpg', '伯纳天纯 成猫天然无谷配方猫粮1.5kg', '222', '122', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', '3');
INSERT INTO `liebiao` VALUES ('46', './img/dog_c8.jpg', '爱宝嘉 超大柔软宠物温暖邂逅爱心猫猫狗狗床', '223', '123', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', '4');
INSERT INTO `liebiao` VALUES ('47', './img/dog_c1.jpg', '爱宝嘉 超大柔软宠物温暖邂逅爱心猫猫狗狗床', '224', '124', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', '4');
INSERT INTO `liebiao` VALUES ('48', './img/dog_c2.jpg', '日本APDC 电解漂漂水家居宠物除菌消臭清新喷雾300ml  宠物除臭喷剂', '225', '125', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', '4');
INSERT INTO `liebiao` VALUES ('49', './img/dog_c3.jpg', '小佩Petkit 宠物智能猫窝冬季保暖冬天空调窝四季通用小型犬狗窝', '226', '126', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', '4');
INSERT INTO `liebiao` VALUES ('50', './img/dog_c4.jpg', '伊丽 Elite 小怪兽猫窝爬架', '227', '127', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', '4');
INSERT INTO `liebiao` VALUES ('51', './img/dog_c5.jpg', 'Touchcat它它 超可爱温暖猫窝动物园系列图案猫抓板', '228', '128', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', '4');
INSERT INTO `liebiao` VALUES ('52', './img/dog_c6.jpg', '比瑞吉 室内成猫粮天然粮2kg', '229', '129', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', '4');
INSERT INTO `liebiao` VALUES ('53', './img/dog_c7.jpg', '伯纳天纯 成猫天然无谷配方猫粮1.5kg', '230', '130', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', '4');
INSERT INTO `liebiao` VALUES ('54', './img/dog_c8.jpg', '爱宝嘉 超大柔软宠物温暖邂逅爱心猫猫狗狗床', '231', '131', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', '5');
INSERT INTO `liebiao` VALUES ('55', './img/dog_c1.jpg', '爱宝嘉 超大柔软宠物温暖邂逅爱心猫猫狗狗床', '232', '132', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', '5');
INSERT INTO `liebiao` VALUES ('56', './img/dog_c2.jpg', '日本APDC 电解漂漂水家居宠物除菌消臭清新喷雾300ml  宠物除臭喷剂', '233', '133', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', '5');
INSERT INTO `liebiao` VALUES ('57', './img/dog_c3.jpg', '小佩Petkit 宠物智能猫窝冬季保暖冬天空调窝四季通用小型犬狗窝', '234', '134', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', '5');
INSERT INTO `liebiao` VALUES ('58', './img/dog_c4.jpg', '伊丽 Elite 小怪兽猫窝爬架', '235', '135', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', '5');
INSERT INTO `liebiao` VALUES ('59', './img/dog_c5.jpg', 'Touchcat它它 超可爱温暖猫窝动物园系列图案猫抓板', '236', '136', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', '5');
INSERT INTO `liebiao` VALUES ('60', './img/dog_c6.jpg', '比瑞吉 室内成猫粮天然粮2kg', '237', '137', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', '6');
INSERT INTO `liebiao` VALUES ('61', './img/dog_c7.jpg', '伯纳天纯 成猫天然无谷配方猫粮1.5kg', '238', '138', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', '6');
INSERT INTO `liebiao` VALUES ('62', './img/dog_c8.jpg', '爱宝嘉 超大柔软宠物温暖邂逅爱心猫猫狗狗床', '239', '139', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', '6');
INSERT INTO `liebiao` VALUES ('63', './img/dog_c1.jpg', '爱宝嘉 超大柔软宠物温暖邂逅爱心猫猫狗狗床', '240', '140', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', '6');
INSERT INTO `liebiao` VALUES ('64', './img/dog_c2.jpg', '日本APDC 电解漂漂水家居宠物除菌消臭清新喷雾300ml  宠物除臭喷剂', '241', '141', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', '6');
INSERT INTO `liebiao` VALUES ('65', './img/dog_c3.jpg', '小佩Petkit 宠物智能猫窝冬季保暖冬天空调窝四季通用小型犬狗窝', '242', '142', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', '6');
INSERT INTO `liebiao` VALUES ('66', './img/dog_c4.jpg', '伊丽 Elite 小怪兽猫窝爬架', '243', '143', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', '6');
INSERT INTO `liebiao` VALUES ('67', './img/dog_c5.jpg', 'Touchcat它它 超可爱温暖猫窝动物园系列图案猫抓板', '244', '144', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', '7');
INSERT INTO `liebiao` VALUES ('68', './img/dog_c6.jpg', '比瑞吉 室内成猫粮天然粮2kg', '245', '145', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', '7');
INSERT INTO `liebiao` VALUES ('69', './img/dog_c7.jpg', '伯纳天纯 成猫天然无谷配方猫粮1.5kg', '246', '146', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', '7');
INSERT INTO `liebiao` VALUES ('70', './img/dog_c8.jpg', '爱宝嘉 超大柔软宠物温暖邂逅爱心猫猫狗狗床', '247', '147', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', '7');
INSERT INTO `liebiao` VALUES ('71', './img/dog_c1.jpg', '爱宝嘉 超大柔软宠物温暖邂逅爱心猫猫狗狗床', '248', '148', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', '7');
INSERT INTO `liebiao` VALUES ('72', './img/dog_c2.jpg', '日本APDC 电解漂漂水家居宠物除菌消臭清新喷雾300ml  宠物除臭喷剂', '249', '149', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', '7');
INSERT INTO `liebiao` VALUES ('73', './img/dog_c3.jpg', '小佩Petkit 宠物智能猫窝冬季保暖冬天空调窝四季通用小型犬狗窝', '250', '150', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', '7');
INSERT INTO `liebiao` VALUES ('74', './img/dog_c4.jpg', '伊丽 Elite 小怪兽猫窝爬架', '251', '151', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', '8');
INSERT INTO `liebiao` VALUES ('75', './img/dog_c5.jpg', 'Touchcat它它 超可爱温暖猫窝动物园系列图案猫抓板', '252', '152', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', '8');
INSERT INTO `liebiao` VALUES ('76', './img/dog_c6.jpg', '比瑞吉 室内成猫粮天然粮2kg', '253', '153', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', '8');
INSERT INTO `liebiao` VALUES ('77', './img/dog_c7.jpg', '伯纳天纯 成猫天然无谷配方猫粮1.5kg', '254', '154', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', '8');
INSERT INTO `liebiao` VALUES ('78', './img/dog_c8.jpg', '爱宝嘉 超大柔软宠物温暖邂逅爱心猫猫狗狗床', '255', '155', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', '8');
INSERT INTO `liebiao` VALUES ('79', './img/dog_c1.jpg', '爱宝嘉 超大柔软宠物温暖邂逅爱心猫猫狗狗床', '256', '156', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', '8');
INSERT INTO `liebiao` VALUES ('80', './img/dog_c2.jpg', '日本APDC 电解漂漂水家居宠物除菌消臭清新喷雾300ml  宠物除臭喷剂', '257', '157', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', '8');
INSERT INTO `liebiao` VALUES ('81', './img/dog_c3.jpg', '小佩Petkit 宠物智能猫窝冬季保暖冬天空调窝四季通用小型犬狗窝', '258', '158', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', '9');
INSERT INTO `liebiao` VALUES ('82', './img/dog_c4.jpg', '伊丽 Elite 小怪兽猫窝爬架', '259', '159', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', '9');
INSERT INTO `liebiao` VALUES ('83', './img/dog_c5.jpg', 'Touchcat它它 超可爱温暖猫窝动物园系列图案猫抓板', '260', '160', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', '9');
INSERT INTO `liebiao` VALUES ('84', './img/dog_c6.jpg', '比瑞吉 室内成猫粮天然粮2kg', '261', '161', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', '9');
INSERT INTO `liebiao` VALUES ('85', './img/dog_c7.jpg', '伯纳天纯 成猫天然无谷配方猫粮1.5kg', '262', '162', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', '9');
INSERT INTO `liebiao` VALUES ('86', './img/dog_c8.jpg', '爱宝嘉 超大柔软宠物温暖邂逅爱心猫猫狗狗床', '263', '163', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', '9');
INSERT INTO `liebiao` VALUES ('87', './img/dog_c1.jpg', '爱宝嘉 超大柔软宠物温暖邂逅爱心猫猫狗狗床', '264', '164', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', '9');
INSERT INTO `liebiao` VALUES ('88', './img/dog_c2.jpg', '日本APDC 电解漂漂水家居宠物除菌消臭清新喷雾300ml  宠物除臭喷剂', '265', '165', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('89', './img/dog_c3.jpg', '小佩Petkit 宠物智能猫窝冬季保暖冬天空调窝四季通用小型犬狗窝', '266', '166', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('90', './img/dog_c4.jpg', '伊丽 Elite 小怪兽猫窝爬架', '267', '167', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('91', './img/dog_c5.jpg', 'Touchcat它它 超可爱温暖猫窝动物园系列图案猫抓板', '268', '168', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('92', './img/dog_c6.jpg', '比瑞吉 室内成猫粮天然粮2kg', '269', '169', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('93', './img/dog_c7.jpg', '伯纳天纯 成猫天然无谷配方猫粮1.5kg', '270', '170', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('94', './img/dog_c8.jpg', '爱宝嘉 超大柔软宠物温暖邂逅爱心猫猫狗狗床', '271', '171', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('95', './img/dog_c1.jpg', '爱宝嘉 超大柔软宠物温暖邂逅爱心猫猫狗狗床', '272', '172', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('96', './img/dog_c2.jpg', '日本APDC 电解漂漂水家居宠物除菌消臭清新喷雾300ml  宠物除臭喷剂', '273', '173', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('97', './img/dog_c3.jpg', '小佩Petkit 宠物智能猫窝冬季保暖冬天空调窝四季通用小型犬狗窝', '274', '174', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('98', './img/dog_c4.jpg', '伊丽 Elite 小怪兽猫窝爬架', '275', '175', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('99', './img/dog_c5.jpg', 'Touchcat它它 超可爱温暖猫窝动物园系列图案猫抓板', '276', '176', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('100', './img/dog_c6.jpg', '比瑞吉 室内成猫粮天然粮2kg', '277', '177', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('101', './img/dog_c7.jpg', '伯纳天纯 成猫天然无谷配方猫粮1.5kg', '278', '178', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('102', './img/dog_c8.jpg', '爱宝嘉 超大柔软宠物温暖邂逅爱心猫猫狗狗床', '279', '179', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('103', '../img/lb1.jpg', '比瑞吉 博美成犬粮天然狗粮2kg1', '300', '200', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('104', '../img/lb2.jpg', '喜乐比 成犬粮鸡肉蔬果健康狗粮15kg2', '301', '201', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('105', '../img/lb3.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg3', '302', '202', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('106', '../img/lb4.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg4', '303', '203', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('107', '../img/lb5.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg5', '304', '204', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('108', '../img/lb6.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg6', '305', '205', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('109', '../img/lb7.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg7', '306', '206', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('110', '../img/lb8.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg8', '307', '207', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('111', '../img/lb9.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg9', '308', '208', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('112', '../img/lb10.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg10', '309', '209', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('113', '../img/lb11.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg11', '310', '210', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('114', '../img/lb12.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg12', '311', '211', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('115', '../img/lb13.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg13', '312', '212', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('116', '../img/lb1.jpg', '比瑞吉 博美成犬粮天然狗粮2kg1', '313', '213', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('117', '../img/lb2.jpg', '喜乐比 成犬粮鸡肉蔬果健康狗粮15kg2', '314', '214', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('118', '../img/lb3.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg3', '315', '215', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('119', '../img/lb4.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg4', '316', '216', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('120', '../img/lb5.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg5', '317', '217', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('121', '../img/lb6.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg6', '318', '218', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('122', '../img/lb7.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg7', '319', '219', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('123', '../img/lb8.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg8', '320', '220', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('124', '../img/lb9.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg9', '321', '221', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('125', '../img/lb10.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg10', '322', '222', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('126', '../img/lb11.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg11', '323', '223', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('127', '../img/lb12.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg12', '324', '224', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('128', '../img/lb13.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg13', '325', '225', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('129', '../img/lb1.jpg', '比瑞吉 博美成犬粮天然狗粮2kg1', '326', '226', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('130', '../img/lb2.jpg', '喜乐比 成犬粮鸡肉蔬果健康狗粮15kg2', '327', '227', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('131', '../img/lb3.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg3', '328', '228', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('132', '../img/lb4.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg4', '329', '229', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('133', '../img/lb5.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg5', '330', '230', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('134', '../img/lb6.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg6', '331', '231', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('135', '../img/lb7.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg7', '332', '232', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('136', '../img/lb8.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg8', '333', '233', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('137', '../img/lb9.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg9', '334', '234', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('138', '../img/lb10.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg10', '335', '235', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('139', '../img/lb11.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg11', '336', '236', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('140', '../img/lb12.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg12', '337', '237', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('141', '../img/lb13.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg13', '338', '238', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('142', '../img/lb1.jpg', '比瑞吉 博美成犬粮天然狗粮2kg1', '339', '239', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('143', '../img/lb2.jpg', '喜乐比 成犬粮鸡肉蔬果健康狗粮15kg2', '340', '240', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('144', '../img/lb3.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg3', '341', '241', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('145', '../img/lb4.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg4', '342', '242', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('146', '../img/lb5.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg5', '343', '243', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('147', '../img/lb6.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg6', '344', '244', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('148', '../img/lb7.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg7', '345', '245', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('149', '../img/lb8.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg8', '346', '246', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('150', '../img/lb9.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg9', '347', '247', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('151', '../img/lb10.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg10', '348', '248', '', '', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('152', '../img/lb11.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg11', '349', '249', '', '', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('153', '../img/lb12.jpg', '冠能PROPLAN 小型犬成犬全价狗粮7kg12', '350', '250', '', '', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('154', '../img/lb1.jpg', '比瑞吉 博美成全粮天然狗粮', '139', '4534', '34.75', '40', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('155', '../img/lb2.jpg', '法国皇家ROYAL CANIN 小型犬离乳期奶糕1kg MIS30', '140', '4535', '35.75', '41', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('156', '../img/lb3.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD30', '141', '4536', '36.75', '42', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('157', '../img/lb4.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD31', '142', '4537', '37.75', '43', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('158', '../img/lb5.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD32', '143', '4538', '38.75', '44', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('159', '../img/lb6.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD33', '144', '4539', '39.75', '45', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('160', '../img/lb7.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD34', '145', '4540', '40.75', '46', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('161', '../img/lb8.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD35', '146', '4541', '41.75', '47', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('162', '../img/lb9.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD36', '147', '4542', '42.75', '48', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('163', '../img/lb10.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD37', '148', '4543', '43.75', '49', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('164', '../img/lb11.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD38', '149', '4544', '44.75', '50', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('165', '../img/lb12.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD39', '150', '4545', '45.75', '51', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('166', '../img/lb13.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD40', '151', '4546', '46.75', '52', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('167', '../img/lb1.jpg', '比瑞吉 博美成全粮天然狗粮', '139', '4534', '34.75', '40', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('168', '../img/lb2.jpg', '法国皇家ROYAL CANIN 小型犬离乳期奶糕1kg MIS30', '140', '4535', '35.75', '41', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('169', '../img/lb3.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD30', '141', '4536', '36.75', '42', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('170', '../img/lb4.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD31', '142', '4537', '37.75', '43', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('171', '../img/lb5.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD32', '143', '4538', '38.75', '44', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('172', '../img/lb6.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD33', '144', '4539', '39.75', '45', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('173', '../img/lb7.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD34', '145', '4540', '40.75', '46', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('174', '../img/lb8.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD35', '146', '4541', '41.75', '47', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('175', '../img/lb9.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD36', '147', '4542', '42.75', '48', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('176', '../img/lb10.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD37', '148', '4543', '43.75', '49', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('177', '../img/lb11.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD38', '149', '4544', '44.75', '50', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('178', '../img/lb12.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD39', '150', '4545', '45.75', '51', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('179', '../img/lb13.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD40', '151', '4546', '46.75', '52', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('180', '../img/lb1.jpg', '比瑞吉 博美成全粮天然狗粮', '139', '4534', '34.75', '40', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('181', '../img/lb2.jpg', '法国皇家ROYAL CANIN 小型犬离乳期奶糕1kg MIS30', '140', '4535', '35.75', '41', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('182', '../img/lb3.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD30', '141', '4536', '36.75', '42', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('183', '../img/lb4.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD31', '142', '4537', '37.75', '43', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('184', '../img/lb5.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD32', '143', '4538', '38.75', '44', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('185', '../img/lb6.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD33', '144', '4539', '39.75', '45', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('186', '../img/lb7.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD34', '145', '4540', '40.75', '46', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('187', '../img/lb8.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD35', '146', '9', '41.75', '47', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('188', '../img/lb9.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD36', '147', '4542', '42.75', '48', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('189', '../img/lb10.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD37', '148', '7', '43.75', '49', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
INSERT INTO `liebiao` VALUES ('190', '../img/lb11.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD38', '149', '450', '44.75', '50', 'xq7.jpg&xq8.jpg&xq9.jpg', null);
INSERT INTO `liebiao` VALUES ('191', '../img/lb12.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD39', '150', '454', '45.75', '51', 'xq1.jpg&xq2.jpg&xq3.jpg', null);
INSERT INTO `liebiao` VALUES ('192', '../img/lb13.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD40', '151', '45', '46.75', '52', 'xq4.jpg&xq5.jpg&xq6.jpg', null);
SET FOREIGN_KEY_CHECKS=1;
