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

 Date: 09/06/2021 22:10:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbcell_traffic
-- ----------------------------
DROP TABLE IF EXISTS `tbcell_traffic`;
CREATE TABLE `tbcell_traffic`  (
  `Date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '统计日期',
  `Hour` smallint UNSIGNED NOT NULL COMMENT '统计时间',
  `Sector_ID` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '小区标识',
  `Traffic` float UNSIGNED NULL DEFAULT NULL COMMENT '小区话务量',
  PRIMARY KEY (`Date`, `Hour`, `Sector_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '57 个小区 2019-2020 年一年的小时级话务数据' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
