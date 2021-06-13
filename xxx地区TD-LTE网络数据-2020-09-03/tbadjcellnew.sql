/*
 Navicat Premium Data Transfer

 Source Server         : DB
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : localhost:3306
 Source Schema         : tb

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 09/06/2021 22:09:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbadjcellnew
-- ----------------------------
DROP TABLE IF EXISTS `tbadjcellnew`;
CREATE TABLE `tbadjcellnew`  (
  `S_SECTOR_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主小区/服务小区 ID',
  `N_SECTOR_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '邻小区 ID',
  `S_EARFCN` int UNSIGNED NULL DEFAULT NULL COMMENT '主小区频点',
  `N_EARFCN` int UNSIGNED NULL DEFAULT NULL COMMENT '邻小区频点',
  PRIMARY KEY (`S_SECTOR_ID`, `N_SECTOR_ID`) USING BTREE,
  INDEX `tbadjcellnew_S_SECTOR_ID_index`(`S_SECTOR_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
