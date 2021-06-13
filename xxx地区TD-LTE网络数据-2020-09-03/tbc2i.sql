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

 Date: 09/06/2021 22:10:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbc2i
-- ----------------------------
DROP TABLE IF EXISTS `tbc2i`;
CREATE TABLE `tbc2i`  (
  `CITY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '城市名称',
  `SCELL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主小区 ID',
  `NCELL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '邻小区 ID',
  `PrC2I9` float NULL DEFAULT NULL COMMENT '邻小区对主小区的 C2I 干扰概率',
  `C2I_Mean` float NULL DEFAULT NULL COMMENT 'C2I 干扰的均值',
  `Std` float NULL DEFAULT NULL COMMENT 'C2I 干扰的标准差',
  `SampleCount` float NULL DEFAULT NULL COMMENT '邻区 NCELL 出现次数',
  `WeightedC2I` float NULL DEFAULT NULL COMMENT '加权 C2I 干扰',
  PRIMARY KEY (`SCELL`, `NCELL`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '基于 MR 测量报告的干扰分析表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
