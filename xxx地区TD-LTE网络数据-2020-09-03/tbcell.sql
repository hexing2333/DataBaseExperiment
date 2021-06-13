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

 Date: 09/06/2021 22:10:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbcell
-- ----------------------------
DROP TABLE IF EXISTS `tbcell`;
CREATE TABLE `tbcell`  (
  `CITY` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '城市/地区名称',
  `SECTOR_ID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '小区 ID',
  `SECTOR_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '小区名称',
  `ENODEBID` int NOT NULL COMMENT '小区基站 ID，所属基站 eNodeB 的标识',
  `ENODEB_NAME` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '基站名称',
  `EARFCN` int UNSIGNED NOT NULL COMMENT '小区配置的频点编号',
  `PCI` int UNSIGNED NULL DEFAULT NULL COMMENT '物理小区标识',
  `PSS` int UNSIGNED NULL DEFAULT NULL COMMENT '主同步信号标识',
  `SSS` int UNSIGNED NULL DEFAULT NULL COMMENT '辅同步信号标识',
  `TAC` int UNSIGNED NULL DEFAULT NULL COMMENT '跟踪区编码',
  `VENDOR` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '设备厂家',
  `LONGITUDE` decimal(10, 6) UNSIGNED NOT NULL COMMENT '小区所属基站的经度',
  `LATITUDE` decimal(10, 6) UNSIGNED NOT NULL COMMENT '小区所属基站的纬度',
  `STYLE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '基站类型',
  `AZIMUTH` int UNSIGNED NOT NULL COMMENT '小区天线方位角',
  `HEIGHT` int UNSIGNED NULL DEFAULT NULL COMMENT '小区天线高度',
  `ELECTTILT` int UNSIGNED NULL DEFAULT NULL COMMENT '小区天线电下倾角',
  `MECHTILT` int NULL DEFAULT NULL COMMENT '小区天线机械下倾角',
  `TOTLETILT` int UNSIGNED NOT NULL COMMENT '总下倾角',
  PRIMARY KEY (`SECTOR_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
