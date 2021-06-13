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

 Date: 09/06/2021 22:10:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tboptcell
-- ----------------------------
DROP TABLE IF EXISTS `tboptcell`;
CREATE TABLE `tboptcell`  (
  `SECTOR_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '小区 ID',
  `EARFCN` int UNSIGNED NULL DEFAULT NULL COMMENT '频点编号',
  `CELL_TYPE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '小区类型',
  PRIMARY KEY (`SECTOR_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '优化小区/保护带小区表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
