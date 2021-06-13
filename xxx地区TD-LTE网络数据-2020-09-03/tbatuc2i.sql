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

 Date: 09/06/2021 22:09:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbatuc2i
-- ----------------------------
DROP TABLE IF EXISTS `tbatuc2i`;
CREATE TABLE `tbatuc2i`  (
  `SECTOR_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `NCELL_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `RATIO_ALL` float UNSIGNED NULL DEFAULT NULL,
  `RANK` int UNSIGNED NULL DEFAULT NULL,
  `COSITE` tinyint UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`SECTOR_ID`, `NCELL_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '路测 ATU C2I 干扰矩阵表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
