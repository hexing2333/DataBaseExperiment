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

 Date: 09/06/2021 22:10:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbatuhandover
-- ----------------------------
DROP TABLE IF EXISTS `tbatuhandover`;
CREATE TABLE `tbatuhandover`  (
  `SSECTOR_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `NSECTOR_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `HOATT` int UNSIGNED NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '路测 ATU 切换统计矩阵' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
