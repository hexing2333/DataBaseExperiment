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

 Date: 09/06/2021 22:10:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbatudatanew
-- ----------------------------
DROP TABLE IF EXISTS `tbatudatanew`;
CREATE TABLE `tbatudatanew`  (
  `seq` bigint UNSIGNED NOT NULL,
  `FileName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Longitude` float(10, 6) UNSIGNED NULL DEFAULT NULL,
  `Latitude` float(10, 6) UNSIGNED NULL DEFAULT NULL,
  `CellID` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `TAC` int UNSIGNED NULL DEFAULT NULL,
  `EARFCN` int UNSIGNED NULL DEFAULT NULL,
  `PCI` smallint UNSIGNED NULL DEFAULT NULL,
  `RSRP` float NULL DEFAULT NULL,
  `RS_SINR` float NULL DEFAULT NULL,
  `NCell_ID_1` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `NCell_EARFCN_1` int NULL DEFAULT NULL,
  `NCell_PCI_1` smallint NULL DEFAULT NULL,
  `NCell_RSRP_1` float NULL DEFAULT NULL,
  `NCell_ID_2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `NCell_EARFCN_2` int NULL DEFAULT NULL,
  `NCell_PCI_2` smallint NULL DEFAULT NULL,
  `NCell_RSRP_2` float NULL DEFAULT NULL,
  `NCell_ID_3` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `NCell_EARFCN_3` int NULL DEFAULT NULL,
  `NCell_PCI_3` smallint NULL DEFAULT NULL,
  `NCell_RSRP_3` float NULL DEFAULT NULL,
  `NCell_ID_4` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `NCell_EARFCN_4` int NULL DEFAULT NULL,
  `NCell_PCI_4` smallint UNSIGNED NULL DEFAULT NULL,
  `NCell_RSRP_4` float NULL DEFAULT NULL,
  `NCell_ID_5` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `NCell_EARFCN_5` int NULL DEFAULT NULL,
  `NCell_PCI_5` smallint UNSIGNED NULL DEFAULT NULL,
  `NCell_RSRP_5` float NULL DEFAULT NULL,
  `NCell_ID_6` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `NCell_EARFCN_6` int NULL DEFAULT NULL,
  `NCell_PCI_6` smallint UNSIGNED NULL DEFAULT NULL,
  `NCell_RSRP_6` float NULL DEFAULT NULL,
  PRIMARY KEY (`seq`, `FileName`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '路测 ATU 数据表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
