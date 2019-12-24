/*
 Navicat Premium Data Transfer

 Source Server         : mysql1
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : test0308

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 23/12/2019 14:04:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `roomid` int(11) NOT NULL AUTO_INCREMENT,
  `roomtype` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` float(255, 0) NULL DEFAULT NULL,
  `roomstate` enum('未使用','已预定','已入住') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`roomid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES (101, '单人间', 200, '未使用');
INSERT INTO `room` VALUES (102, '双人间', 288, '已预定');
INSERT INTO `room` VALUES (103, '单人间', 200, '已入住');
INSERT INTO `room` VALUES (104, '双人间', 288, '已入住');

SET FOREIGN_KEY_CHECKS = 1;
