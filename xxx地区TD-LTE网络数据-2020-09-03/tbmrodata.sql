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

 Date: 09/06/2021 22:10:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbmrodata
-- ----------------------------
DROP TABLE IF EXISTS `tbmrodata`;
CREATE TABLE `tbmrodata`  (
  `TimeStamp` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '测量时间点',
  `ServingSector` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '服务小区/主小区 ID',
  `InterferingSector` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '干扰小区 ID',
  `LteScRSRP` float UNSIGNED NULL DEFAULT NULL COMMENT '服务小区参考信号接收功率 RSRP',
  `LteNcRSRP` float UNSIGNED NULL DEFAULT NULL COMMENT '干扰小区参考信号接收功率 RSRP',
  `LteNcEarfcn` int UNSIGNED NULL DEFAULT NULL COMMENT '干扰小区频点',
  `LteNcPci` smallint UNSIGNED NULL DEFAULT NULL COMMENT '干扰小区 PCI',
  PRIMARY KEY (`TimeStamp`, `ServingSector`, `InterferingSector`) USING BTREE,
  INDEX `timeindex`(`TimeStamp`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'MRO 测量报告数据表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
