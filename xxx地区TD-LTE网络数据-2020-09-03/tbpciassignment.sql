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

 Date: 09/06/2021 22:10:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbpciassignment
-- ----------------------------
DROP TABLE IF EXISTS `tbpciassignment`;
CREATE TABLE `tbpciassignment`  (
  `ASSIGN_ID` smallint UNSIGNED NOT NULL COMMENT '分配方案编号',
  `EARFCN` int UNSIGNED NULL DEFAULT NULL COMMENT '小区频点编号',
  `SECTOR_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '小区 ID',
  `SECTOR_NAME` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '小区名称',
  `ENODEB_ID` int UNSIGNED NULL DEFAULT NULL COMMENT '基站标识',
  `PCI` int UNSIGNED NULL DEFAULT NULL COMMENT '优化调整后的本小区 PCI 值',
  `PSS` int UNSIGNED NULL DEFAULT NULL COMMENT '小区 PSS',
  `SSS` int UNSIGNED NULL DEFAULT NULL COMMENT '小区 SSS',
  `LONGITUDE` float(10, 0) UNSIGNED NULL DEFAULT NULL COMMENT '小区经度',
  `LATITUDE` float(10, 0) UNSIGNED NULL DEFAULT NULL COMMENT '小区纬度',
  `STYLE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '基站类型',
  `OPT_DATETIME` datetime NULL DEFAULT NULL COMMENT '优化时间',
  PRIMARY KEY (`ASSIGN_ID`, `SECTOR_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '小区 PCI 优化调整结果表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
