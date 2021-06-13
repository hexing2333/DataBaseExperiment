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

 Date: 09/06/2021 22:10:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbhandover
-- ----------------------------
DROP TABLE IF EXISTS `tbhandover`;
CREATE TABLE `tbhandover`  (
  `CITY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '城市名称',
  `SCELL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '切换源小区 ID',
  `NCELL` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '切换目标小区 ID',
  `HOATT` int UNSIGNED NULL DEFAULT NULL COMMENT '切换尝试次数',
  `HOSUCC` int UNSIGNED NULL DEFAULT NULL COMMENT '切换成功次数',
  `HOSUCCRATE` float UNSIGNED NULL DEFAULT NULL COMMENT '切换成功率',
  PRIMARY KEY (`SCELL`, `NCELL`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '小区切换统计性能表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
