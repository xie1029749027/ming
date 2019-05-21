/*
Navicat MySQL Data Transfer

Source Server         : hihi
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : login

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2019-05-21 16:30:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for liebiao1
-- ----------------------------
DROP TABLE IF EXISTS `liebiao1`;
CREATE TABLE `liebiao1` (
  `id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sale` int(11) DEFAULT NULL,
  `yishou` int(11) DEFAULT NULL,
  `danjia` float DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `url1` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of liebiao1
-- ----------------------------
INSERT INTO `liebiao1` VALUES ('1', '../img/lb1.jpg', '比瑞吉 博美成全粮天然狗粮', '139', '4534', '34.75', '40', 'lb1.jpg&lb2.jpg&lb3.jpg');
INSERT INTO `liebiao1` VALUES ('2', '../img/lb2.jpg', '法国皇家ROYAL CANIN 小型犬离乳期奶糕1kg MIS30', '140', '4535', '35.75', '41', 'lb2.jpg&lb3.jpg&lb4.jpg');
INSERT INTO `liebiao1` VALUES ('3', '../img/lb3.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD30', '141', '4536', '36.75', '42', 'lb3.jpg&lb4.jpg&lb5.jpg');
INSERT INTO `liebiao1` VALUES ('4', '../img/lb4.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD31', '142', '4537', '37.75', '43', 'lb4.jpg&lb5.jpg&lb6.jpg');
INSERT INTO `liebiao1` VALUES ('5', '../img/lb5.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD32', '143', '4538', '38.75', '44', 'lb5.jpg&lb6.jpg&lb7.jpg');
INSERT INTO `liebiao1` VALUES ('6', '../img/lb6.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD33', '144', '4539', '39.75', '45', 'lb8.jpg&lb9.jpg&lb10.jpg');
INSERT INTO `liebiao1` VALUES ('7', '../img/lb7.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD34', '145', '4540', '40.75', '46', 'lb10.jpg&lb11.jpg&lb12.jpg');
INSERT INTO `liebiao1` VALUES ('8', '../img/lb8.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD35', '146', '4541', '41.75', '47', 'lb11.jpg&lb12.jpg&lb13.jpg');
INSERT INTO `liebiao1` VALUES ('9', '../img/lb9.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD36', '147', '4542', '42.75', '48', 'lb12.jpg&lb13.jpg&lb1.jpg');
INSERT INTO `liebiao1` VALUES ('10', '../img/lb10.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD37', '148', '4543', '43.75', '49', 'lb13.jpg&lb1.jpg&lb2.jpg');
INSERT INTO `liebiao1` VALUES ('11', '../img/lb11.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD38', '149', '4544', '44.75', '50', 'xq1.jpg&xq2.jpg&xq3.jpg');
INSERT INTO `liebiao1` VALUES ('12', '../img/lb12.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD39', '150', '4545', '45.75', '51', 'lb1.jpg&lb2.jpg&lb3.jpg');
INSERT INTO `liebiao1` VALUES ('14', '../img/lb13.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD40', '151', '4546', '46.75', '52', 'lb2.jpg&lb3.jpg&lb4.jpg');
INSERT INTO `liebiao1` VALUES ('15', '../img/lb1.jpg', '比瑞吉 博美成全粮天然狗粮', '139', '4534', '34.75', '40', 'lb3.jpg&lb4.jpg&lb5.jpg');
INSERT INTO `liebiao1` VALUES ('16', '../img/lb2.jpg', '法国皇家ROYAL CANIN 小型犬离乳期奶糕1kg MIS30', '140', '4535', '35.75', '41', 'lb4.jpg&lb5.jpg&lb6.jpg');
INSERT INTO `liebiao1` VALUES ('17', '../img/lb3.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD30', '141', '4536', '36.75', '42', 'lb5.jpg&lb6.jpg&lb7.jpg');
INSERT INTO `liebiao1` VALUES ('18', '../img/lb4.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD31', '142', '4537', '37.75', '43', 'lb8.jpg&lb9.jpg&lb10.jpg');
INSERT INTO `liebiao1` VALUES ('19', '../img/lb5.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD32', '143', '4538', '38.75', '44', 'lb10.jpg&lb11.jpg&lb12.jpg');
INSERT INTO `liebiao1` VALUES ('20', '../img/lb6.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD33', '144', '4539', '39.75', '45', 'lb11.jpg&lb12.jpg&lb13.jpg');
INSERT INTO `liebiao1` VALUES ('21', '../img/lb7.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD34', '145', '4540', '40.75', '46', 'lb12.jpg&lb13.jpg&lb1.jpg');
INSERT INTO `liebiao1` VALUES ('22', '../img/lb8.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD35', '146', '4541', '41.75', '47', 'lb13.jpg&lb1.jpg&lb2.jpg');
INSERT INTO `liebiao1` VALUES ('23', '../img/lb9.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD36', '147', '4542', '42.75', '48', 'xq1.jpg&xq2.jpg&xq3.jpg');
INSERT INTO `liebiao1` VALUES ('24', '../img/lb10.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD37', '148', '4543', '43.75', '49', 'lb1.jpg&lb2.jpg&lb3.jpg');
INSERT INTO `liebiao1` VALUES ('25', '../img/lb11.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD38', '149', '4544', '44.75', '50', 'lb2.jpg&lb3.jpg&lb4.jpg');
INSERT INTO `liebiao1` VALUES ('26', '../img/lb12.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD39', '150', '4545', '45.75', '51', 'lb3.jpg&lb4.jpg&lb5.jpg');
INSERT INTO `liebiao1` VALUES ('27', '../img/lb13.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD40', '151', '4546', '46.75', '52', 'lb4.jpg&lb5.jpg&lb6.jpg');
INSERT INTO `liebiao1` VALUES ('28', '../img/lb1.jpg', '比瑞吉 博美成全粮天然狗粮', '139', '4534', '34.75', '40', 'lb5.jpg&lb6.jpg&lb7.jpg');
INSERT INTO `liebiao1` VALUES ('29', '../img/lb2.jpg', '法国皇家ROYAL CANIN 小型犬离乳期奶糕1kg MIS30', '140', '4535', '35.75', '41', 'lb8.jpg&lb9.jpg&lb10.jpg');
INSERT INTO `liebiao1` VALUES ('30', '../img/lb3.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD30', '141', '4536', '36.75', '42', 'lb10.jpg&lb11.jpg&lb12.jpg');
INSERT INTO `liebiao1` VALUES ('31', '../img/lb4.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD31', '142', '4537', '37.75', '43', 'lb11.jpg&lb12.jpg&lb13.jpg');
INSERT INTO `liebiao1` VALUES ('32', '../img/lb5.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD32', '143', '4538', '38.75', '44', 'lb12.jpg&lb13.jpg&lb1.jpg');
INSERT INTO `liebiao1` VALUES ('33', '../img/lb6.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD33', '144', '4539', '39.75', '45', 'lb13.jpg&lb1.jpg&lb2.jpg');
INSERT INTO `liebiao1` VALUES ('34', '../img/lb7.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD34', '145', '4540', '40.75', '46', 'xq1.jpg&xq2.jpg&xq3.jpg');
INSERT INTO `liebiao1` VALUES ('35', '../img/lb8.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD35', '146', '4541', '41.75', '47', 'lb1.jpg&lb2.jpg&lb3.jpg');
INSERT INTO `liebiao1` VALUES ('36', '../img/lb9.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD36', '147', '4542', '42.75', '48', 'lb2.jpg&lb3.jpg&lb4.jpg');
INSERT INTO `liebiao1` VALUES ('37', '../img/lb10.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD37', '148', '4543', '43.75', '49', 'lb3.jpg&lb4.jpg&lb5.jpg');
INSERT INTO `liebiao1` VALUES ('38', '../img/lb11.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD38', '149', '4544', '44.75', '50', 'lb4.jpg&lb5.jpg&lb6.jpg');
INSERT INTO `liebiao1` VALUES ('39', '../img/lb12.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD39', '150', '4545', '45.75', '51', 'lb5.jpg&lb6.jpg&lb7.jpg');
INSERT INTO `liebiao1` VALUES ('40', '../img/lb13.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD40', '151', '4546', '46.75', '52', 'lb8.jpg&lb9.jpg&lb10.jpg');
INSERT INTO `liebiao1` VALUES ('41', '../img/lb1.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD41', '152', '4547', '47.75', '53', 'lb10.jpg&lb11.jpg&lb12.jpg');
INSERT INTO `liebiao1` VALUES ('42', '../img/lb2.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD42', '153', '4548', '48.75', '54', 'lb11.jpg&lb12.jpg&lb13.jpg');
INSERT INTO `liebiao1` VALUES ('43', '../img/lb3.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD43', '154', '4549', '49.75', '55', 'lb12.jpg&lb13.jpg&lb1.jpg');
INSERT INTO `liebiao1` VALUES ('44', '../img/lb4.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD44', '155', '4550', '50.75', '56', 'lb13.jpg&lb1.jpg&lb2.jpg');
INSERT INTO `liebiao1` VALUES ('45', '../img/lb5.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD45', '156', '4551', '51.75', '57', 'xq1.jpg&xq2.jpg&xq3.jpg');
INSERT INTO `liebiao1` VALUES ('46', '../img/lb6.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD46', '157', '4552', '52.75', '58', 'lb1.jpg&lb2.jpg&lb3.jpg');
INSERT INTO `liebiao1` VALUES ('47', '../img/lb7.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD47', '158', '4553', '53.75', '59', 'lb2.jpg&lb3.jpg&lb4.jpg');
INSERT INTO `liebiao1` VALUES ('48', '../img/lb8.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD48', '159', '4554', '54.75', '60', 'lb3.jpg&lb4.jpg&lb5.jpg');
INSERT INTO `liebiao1` VALUES ('49', '../img/lb9.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD49', '160', '4555', '55.75', '61', 'lb4.jpg&lb5.jpg&lb6.jpg');
INSERT INTO `liebiao1` VALUES ('50', '../img/lb10.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD50', '161', '4556', '56.75', '62', 'lb5.jpg&lb6.jpg&lb7.jpg');
INSERT INTO `liebiao1` VALUES ('51', '../img/lb11.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD51', '162', '4557', '57.75', '63', 'lb8.jpg&lb9.jpg&lb10.jpg');
INSERT INTO `liebiao1` VALUES ('52', '../img/lb12.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD52', '163', '4558', '58.75', '64', 'lb10.jpg&lb11.jpg&lb12.jpg');
INSERT INTO `liebiao1` VALUES ('53', '../img/lb13.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD53', '164', '4559', '59.75', '65', 'lb11.jpg&lb12.jpg&lb13.jpg');
INSERT INTO `liebiao1` VALUES ('54', '../img/lb1.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD54', '165', '4560', '60.75', '66', 'lb12.jpg&lb13.jpg&lb1.jpg');
INSERT INTO `liebiao1` VALUES ('55', '../img/lb2.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD55', '166', '4561', '61.75', '67', 'lb13.jpg&lb1.jpg&lb2.jpg');
INSERT INTO `liebiao1` VALUES ('56', '../img/lb3.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD56', '167', '4562', '62.75', '68', 'xq1.jpg&xq2.jpg&xq3.jpg');
INSERT INTO `liebiao1` VALUES ('57', '../img/lb4.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD57', '168', '4563', '63.75', '69', 'lb1.jpg&lb2.jpg&lb3.jpg');
INSERT INTO `liebiao1` VALUES ('58', '../img/lb5.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD58', '169', '4564', '64.75', '70', 'lb2.jpg&lb3.jpg&lb4.jpg');
INSERT INTO `liebiao1` VALUES ('59', '../img/lb6.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD59', '170', '4565', '65.75', '71', 'lb3.jpg&lb4.jpg&lb5.jpg');
INSERT INTO `liebiao1` VALUES ('60', '../img/lb7.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD60', '171', '4566', '66.75', '72', 'lb4.jpg&lb5.jpg&lb6.jpg');
INSERT INTO `liebiao1` VALUES ('61', '../img/lb8.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD61', '172', '4567', '67.75', '73', 'lb5.jpg&lb6.jpg&lb7.jpg');
INSERT INTO `liebiao1` VALUES ('62', '../img/lb9.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD62', '173', '4568', '68.75', '74', 'lb8.jpg&lb9.jpg&lb10.jpg');
INSERT INTO `liebiao1` VALUES ('63', '../img/lb10.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD63', '174', '4569', '69.75', '75', 'lb10.jpg&lb11.jpg&lb12.jpg');
INSERT INTO `liebiao1` VALUES ('64', '../img/lb11.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD64', '175', '4570', '70.75', '76', 'lb11.jpg&lb12.jpg&lb13.jpg');
INSERT INTO `liebiao1` VALUES ('65', '../img/lb12.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD65', '176', '4571', '71.75', '77', 'lb12.jpg&lb13.jpg&lb1.jpg');
INSERT INTO `liebiao1` VALUES ('66', '../img/lb13.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD66', '177', '4572', '72.75', '78', 'lb13.jpg&lb1.jpg&lb2.jpg');
INSERT INTO `liebiao1` VALUES ('67', '../img/lb1.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD67', '178', '4573', '73.75', '79', 'xq1.jpg&xq2.jpg&xq3.jpg');
INSERT INTO `liebiao1` VALUES ('68', '../img/lb2.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD68', '179', '4574', '74.75', '80', 'lb1.jpg&lb2.jpg&lb3.jpg');
INSERT INTO `liebiao1` VALUES ('69', '../img/lb3.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD69', '180', '4575', '75.75', '81', 'lb2.jpg&lb3.jpg&lb4.jpg');
INSERT INTO `liebiao1` VALUES ('70', '../img/lb4.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD70', '181', '4576', '76.75', '82', 'lb3.jpg&lb4.jpg&lb5.jpg');
INSERT INTO `liebiao1` VALUES ('71', '../img/lb5.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD71', '182', '4577', '77.75', '83', 'lb4.jpg&lb5.jpg&lb6.jpg');
INSERT INTO `liebiao1` VALUES ('72', '../img/lb6.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD72', '183', '4578', '78.75', '84', 'lb5.jpg&lb6.jpg&lb7.jpg');
INSERT INTO `liebiao1` VALUES ('73', '../img/lb7.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD73', '184', '4579', '79.75', '85', 'lb8.jpg&lb9.jpg&lb10.jpg');
INSERT INTO `liebiao1` VALUES ('74', '../img/lb8.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD74', '185', '4580', '80.75', '86', 'lb10.jpg&lb11.jpg&lb12.jpg');
INSERT INTO `liebiao1` VALUES ('75', '../img/lb9.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD75', '186', '4581', '81.75', '87', 'lb11.jpg&lb12.jpg&lb13.jpg');
INSERT INTO `liebiao1` VALUES ('76', '../img/lb10.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD76', '187', '4582', '82.75', '88', 'lb12.jpg&lb13.jpg&lb1.jpg');
INSERT INTO `liebiao1` VALUES ('77', '../img/lb11.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD77', '188', '4583', '83.75', '89', 'lb13.jpg&lb1.jpg&lb2.jpg');
INSERT INTO `liebiao1` VALUES ('78', '../img/lb12.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD78', '189', '4584', '84.75', '90', 'xq1.jpg&xq2.jpg&xq3.jpg');
INSERT INTO `liebiao1` VALUES ('79', '../img/lb13.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD79', '190', '4585', '85.75', '91', 'lb1.jpg&lb2.jpg&lb3.jpg');
INSERT INTO `liebiao1` VALUES ('80', '../img/lb1.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD80', '191', '4586', '86.75', '92', 'lb2.jpg&lb3.jpg&lb4.jpg');
INSERT INTO `liebiao1` VALUES ('81', '../img/lb2.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD81', '192', '4587', '87.75', '93', 'lb3.jpg&lb4.jpg&lb5.jpg');
INSERT INTO `liebiao1` VALUES ('82', '../img/lb3.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD82', '193', '4588', '88.75', '94', 'lb4.jpg&lb5.jpg&lb6.jpg');
INSERT INTO `liebiao1` VALUES ('83', '../img/lb4.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD83', '194', '4589', '89.75', '95', 'lb5.jpg&lb6.jpg&lb7.jpg');
INSERT INTO `liebiao1` VALUES ('84', '../img/lb5.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD84', '195', '4590', '90.75', '96', 'lb8.jpg&lb9.jpg&lb10.jpg');
INSERT INTO `liebiao1` VALUES ('85', '../img/lb6.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD85', '196', '4591', '91.75', '97', 'lb10.jpg&lb11.jpg&lb12.jpg');
INSERT INTO `liebiao1` VALUES ('86', '../img/lb7.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD86', '197', '4592', '92.75', '98', 'lb11.jpg&lb12.jpg&lb13.jpg');
INSERT INTO `liebiao1` VALUES ('87', '../img/lb8.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD87', '198', '4593', '93.75', '99', 'lb12.jpg&lb13.jpg&lb1.jpg');
INSERT INTO `liebiao1` VALUES ('88', '../img/lb9.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD88', '199', '4594', '94.75', '100', 'lb13.jpg&lb1.jpg&lb2.jpg');
INSERT INTO `liebiao1` VALUES ('89', '../img/lb10.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD89', '200', '4595', '95.75', '101', 'xq1.jpg&xq2.jpg&xq3.jpg');
INSERT INTO `liebiao1` VALUES ('90', '../img/lb11.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD90', '201', '4596', '96.75', '102', 'lb1.jpg&lb2.jpg&lb3.jpg');
INSERT INTO `liebiao1` VALUES ('91', '../img/lb12.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD91', '202', '4597', '97.75', '103', 'lb2.jpg&lb3.jpg&lb4.jpg');
INSERT INTO `liebiao1` VALUES ('92', '../img/lb13.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD92', '203', '4598', '98.75', '104', 'lb3.jpg&lb4.jpg&lb5.jpg');
INSERT INTO `liebiao1` VALUES ('93', '../img/lb1.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD93', '204', '4599', '99.75', '105', 'lb4.jpg&lb5.jpg&lb6.jpg');
INSERT INTO `liebiao1` VALUES ('94', '../img/lb2.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD94', '205', '4600', '100.75', '106', 'lb5.jpg&lb6.jpg&lb7.jpg');
INSERT INTO `liebiao1` VALUES ('95', '../img/lb3.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD95', '206', '4601', '101.75', '107', 'lb8.jpg&lb9.jpg&lb10.jpg');
INSERT INTO `liebiao1` VALUES ('96', '../img/lb4.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD96', '207', '4602', '102.75', '108', 'lb10.jpg&lb11.jpg&lb12.jpg');
INSERT INTO `liebiao1` VALUES ('97', '../img/lb5.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD97', '208', '4603', '103.75', '109', 'lb11.jpg&lb12.jpg&lb13.jpg');
INSERT INTO `liebiao1` VALUES ('98', '../img/lb6.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD98', '209', '4604', '104.75', '110', 'lb12.jpg&lb13.jpg&lb1.jpg');
INSERT INTO `liebiao1` VALUES ('99', '../img/lb7.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD99', '210', '4605', '105.75', '111', 'lb13.jpg&lb1.jpg&lb2.jpg');
INSERT INTO `liebiao1` VALUES ('100', '../img/lb8.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD100', '211', '4606', '106.75', '112', 'xq1.jpg&xq2.jpg&xq3.jpg');
INSERT INTO `liebiao1` VALUES ('101', '../img/lb9.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD101', '212', '4607', '107.75', '113', 'lb1.jpg&lb2.jpg&lb3.jpg');
INSERT INTO `liebiao1` VALUES ('102', '../img/lb10.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD102', '213', '4608', '108.75', '114', 'lb2.jpg&lb3.jpg&lb4.jpg');
INSERT INTO `liebiao1` VALUES ('103', '../img/lb11.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD103', '214', '4609', '109.75', '115', 'lb3.jpg&lb4.jpg&lb5.jpg');
INSERT INTO `liebiao1` VALUES ('104', '../img/lb12.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD104', '215', '4610', '110.75', '116', 'lb4.jpg&lb5.jpg&lb6.jpg');
INSERT INTO `liebiao1` VALUES ('105', '../img/lb13.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD105', '216', '4611', '111.75', '117', 'lb5.jpg&lb6.jpg&lb7.jpg');
INSERT INTO `liebiao1` VALUES ('106', '../img/lb1.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD106', '217', '4612', '112.75', '118', 'lb8.jpg&lb9.jpg&lb10.jpg');
INSERT INTO `liebiao1` VALUES ('107', '../img/lb2.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD107', '218', '4613', '113.75', '119', 'lb10.jpg&lb11.jpg&lb12.jpg');
INSERT INTO `liebiao1` VALUES ('108', '../img/lb3.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD108', '219', '4614', '114.75', '120', 'lb11.jpg&lb12.jpg&lb13.jpg');
INSERT INTO `liebiao1` VALUES ('109', '../img/lb4.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD109', '220', '4615', '115.75', '121', 'lb12.jpg&lb13.jpg&lb1.jpg');
INSERT INTO `liebiao1` VALUES ('110', '../img/lb5.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD110', '221', '4616', '116.75', '122', 'lb13.jpg&lb1.jpg&lb2.jpg');
INSERT INTO `liebiao1` VALUES ('111', '../img/lb6.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD111', '222', '4617', '117.75', '123', 'xq1.jpg&xq2.jpg&xq3.jpg');
INSERT INTO `liebiao1` VALUES ('112', '../img/lb7.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD112', '223', '4618', '118.75', '124', 'lb1.jpg&lb2.jpg&lb3.jpg');
INSERT INTO `liebiao1` VALUES ('113', '../img/lb8.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD113', '224', '4619', '119.75', '125', 'lb2.jpg&lb3.jpg&lb4.jpg');
INSERT INTO `liebiao1` VALUES ('114', '../img/lb9.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD114', '225', '4620', '120.75', '126', 'lb3.jpg&lb4.jpg&lb5.jpg');
INSERT INTO `liebiao1` VALUES ('115', '../img/lb10.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD115', '226', '4621', '121.75', '127', 'lb4.jpg&lb5.jpg&lb6.jpg');
INSERT INTO `liebiao1` VALUES ('116', '../img/lb11.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD116', '227', '4622', '122.75', '128', 'lb5.jpg&lb6.jpg&lb7.jpg');
INSERT INTO `liebiao1` VALUES ('117', '../img/lb12.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD117', '228', '4623', '123.75', '129', 'lb8.jpg&lb9.jpg&lb10.jpg');
INSERT INTO `liebiao1` VALUES ('118', '../img/lb13.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD118', '229', '4624', '124.75', '130', 'lb10.jpg&lb11.jpg&lb12.jpg');
INSERT INTO `liebiao1` VALUES ('119', '../img/lb1.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD119', '230', '4625', '125.75', '131', 'lb11.jpg&lb12.jpg&lb13.jpg');
INSERT INTO `liebiao1` VALUES ('120', '../img/lb2.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD120', '231', '4626', '126.75', '132', 'lb12.jpg&lb13.jpg&lb1.jpg');
INSERT INTO `liebiao1` VALUES ('121', '../img/lb3.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD121', '232', '4627', '127.75', '133', 'lb13.jpg&lb1.jpg&lb2.jpg');
INSERT INTO `liebiao1` VALUES ('122', '../img/lb4.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD122', '233', '4628', '128.75', '134', 'xq1.jpg&xq2.jpg&xq3.jpg');
INSERT INTO `liebiao1` VALUES ('123', '../img/lb5.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD123', '234', '4629', '129.75', '135', 'lb1.jpg&lb2.jpg&lb3.jpg');
INSERT INTO `liebiao1` VALUES ('124', '../img/lb6.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD124', '235', '4630', '130.75', '136', 'lb2.jpg&lb3.jpg&lb4.jpg');
INSERT INTO `liebiao1` VALUES ('125', '../img/lb7.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD125', '236', '4631', '131.75', '137', 'lb3.jpg&lb4.jpg&lb5.jpg');
INSERT INTO `liebiao1` VALUES ('126', '../img/lb8.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD126', '237', '4632', '132.75', '138', 'lb4.jpg&lb5.jpg&lb6.jpg');
INSERT INTO `liebiao1` VALUES ('127', '../img/lb9.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD127', '238', '4633', '133.75', '139', 'lb5.jpg&lb6.jpg&lb7.jpg');
INSERT INTO `liebiao1` VALUES ('128', '../img/lb10.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD128', '239', '4634', '134.75', '140', 'lb8.jpg&lb9.jpg&lb10.jpg');
INSERT INTO `liebiao1` VALUES ('129', '../img/lb11.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD129', '240', '4635', '135.75', '141', 'lb10.jpg&lb11.jpg&lb12.jpg');
INSERT INTO `liebiao1` VALUES ('130', '../img/lb12.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD130', '241', '4636', '136.75', '142', 'lb11.jpg&lb12.jpg&lb13.jpg');
INSERT INTO `liebiao1` VALUES ('131', '../img/lb13.jpg', '法国皇家ROYAL CANIN 泰迪贵宾成犬粮专用狗粮3kg PD131', '242', '4637', '137.75', '143', 'lb12.jpg&lb13.jpg&lb1.jpg');
SET FOREIGN_KEY_CHECKS=1;
