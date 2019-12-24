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

 Date: 23/12/2019 14:04:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for checkins
-- ----------------------------
DROP TABLE IF EXISTS `checkins`;
CREATE TABLE `checkins`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` enum('男','女') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cardtype` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cardno` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `roomid` int(11) NULL DEFAULT NULL,
  `checkintime` datetime(0) NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT NULL,
  `totalprice` float(10, 2) NULL DEFAULT NULL,
  `state` enum('未结账','已结账') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`cid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of checkins
-- ----------------------------
INSERT INTO `checkins` VALUES (1, '李黎明', '男', '身份证', '430104198807079900', 103, '2019-08-23 18:59:37', 1, 200.00, '已结账');
INSERT INTO `checkins` VALUES (2, '刘建军', '男', '身份证', '430111197902018822', 101, '2019-08-20 19:00:47', 1, 200.00, '已结账');
INSERT INTO `checkins` VALUES (3, '江山', '男', '身份证', '510215198808099922', 104, '2019-08-25 19:10:56', 1, 288.00, '已结账');
INSERT INTO `checkins` VALUES (4, '黄珊', '女', '身份证', '43011119990808', 101, '2019-09-17 13:42:34', 1, 200.00, '已结账');
INSERT INTO `checkins` VALUES (5, '刘小小', '女', '身份证', '430102199702139900', 104, '2019-09-17 14:40:49', 2, NULL, '未结账');
INSERT INTO `checkins` VALUES (6, '黄佳威', '男', '身份证', '430111199802019900', 103, '2019-12-23 13:59:05', 1, NULL, '未结账');

SET FOREIGN_KEY_CHECKS = 1;
