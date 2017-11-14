/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : mzd

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2017-11-13 11:47:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for securityrole
-- ----------------------------
DROP TABLE IF EXISTS `securityrole`;
CREATE TABLE `securityrole` (
  `uname` varchar(255) DEFAULT NULL,
  `rolename` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of securityrole
-- ----------------------------
INSERT INTO `securityrole` VALUES ('admin', 'ROLE_USER');
INSERT INTO `securityrole` VALUES ('admin', 'ROLE_ADMIN');
INSERT INTO `securityrole` VALUES ('mzd', 'ROLE_USER');
INSERT INTO `securityrole` VALUES ('vip', 'ROLE_USER');
INSERT INTO `securityrole` VALUES ('vip', 'ROLE_VIP');
INSERT INTO `securityrole` VALUES ('admin', 'ROLE_VIP');

-- ----------------------------
-- Table structure for securityuser
-- ----------------------------
DROP TABLE IF EXISTS `securityuser`;
CREATE TABLE `securityuser` (
  `uname` varchar(255) DEFAULT NULL,
  `psw` varchar(255) DEFAULT NULL,
  `enabled` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of securityuser
-- ----------------------------
INSERT INTO `securityuser` VALUES ('admin', '123', '1');
INSERT INTO `securityuser` VALUES ('mzd', '123', '1');
INSERT INTO `securityuser` VALUES ('vip', '123', '1');
