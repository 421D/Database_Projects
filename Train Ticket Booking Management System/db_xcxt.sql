/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : db_hcdp

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 08/11/2021 15:52:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cusinfo
-- ----------------------------
DROP TABLE IF EXISTS `cusinfo`;
CREATE TABLE `cusinfo`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `cidcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `intime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册时间',
  `cpassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录密码',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '旅客信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cusinfo
-- ----------------------------
INSERT INTO `cusinfo` VALUES (1, '张三', '2', '2016-04-04 11:21:10', '22');
INSERT INTO `cusinfo` VALUES (2, '李四', '110', '2016-04-05 06:39:55', '1');
INSERT INTO `cusinfo` VALUES (4, '猿来入此', '622921199005222621', '2019-04-23 10:54:11', '123456');
INSERT INTO `cusinfo` VALUES (5, '马景涛', '622921199505062356', '2019-04-23 02:41:58', '123456');
INSERT INTO `cusinfo` VALUES (6, 'aaa', '12345', '2021-11-08 03:41:56', '12345');

-- ----------------------------
-- Table structure for dpiao
-- ----------------------------
DROP TABLE IF EXISTS `dpiao`;
CREATE TABLE `dpiao`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `cidcard` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `pid` int(11) NULL DEFAULT NULL COMMENT '票id',
  `lyflag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订票状态',
  `reservationcode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '订票信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dpiao
-- ----------------------------
INSERT INTO `dpiao` VALUES (35, '2', 2, '已预订', '951054');
INSERT INTO `dpiao` VALUES (37, '2', 4, '已预订', '645304');

-- ----------------------------
-- Table structure for piao
-- ----------------------------
DROP TABLE IF EXISTS `piao`;
CREATE TABLE `piao`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车id',
  `szdid` int(11) NULL DEFAULT NULL COMMENT '始发站点id',
  `ezdid` int(11) NULL DEFAULT NULL COMMENT '目的站点id',
  `stime` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发车时间',
  `pval` float NULL DEFAULT NULL COMMENT '票价',
  `cxzh` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车厢座号',
  `ptype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车票类型',
  `yxsj` datetime(0) NULL DEFAULT NULL COMMENT '有效日期',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 50 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '车票信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of piao
-- ----------------------------
INSERT INTO `piao` VALUES (1, '1', 1, 2, '07：30：00', 50, '一车厢20号', '硬座', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (2, '1', 1, 3, '8:20:00', 50, '1车厢22号', '硬座', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (3, '1', 1, 3, '8：00', 50, '二车厢33号', '硬座', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (4, '1', 1, 3, '8：00', 50, '二车厢32号', '硬座', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (5, '1', 1, 3, '8：00', 50, '二车厢31号', '硬座', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (6, '1', 1, 3, '8：00', 50, '二车厢01号', '硬座', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (7, '1', 1, 3, '8：00', 50, '二车厢02号', '硬座', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (8, '1', 1, 3, '8：00', 50, '二车厢03号', '硬座', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (9, '3', 1, 4, '7:00', 10, '一车厢12座号', '软卧', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (10, '1', 1, 3, '09:31:00', 120, '12车厢12座号', '软卧', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (11, '1', 1, 3, '09:31:00', 120, '12车厢12座号', '软卧', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (12, '1', 1, 3, '09:31:00', 120, '12车厢12座号', '软卧', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (13, '3', 1, 4, '10:30', 100, '12车厢12座号', '硬座', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (14, '2', 1, 3, '12:12', 100, '12车厢12座号', '软卧', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (15, '2', 1, 3, '12:30', 100, '1车13座', '硬卧', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (16, '2', 1, 3, '12:30', 100, '1车12座', '硬卧', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (17, '3', 6, 3, '14:00', 100, '一车厢15座', '硬卧', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (18, '1', 1, 2, '10:12', 190, '一车厢12座', '软卧', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (19, '1', 1, 3, '10:30', 150, '1车01号', '硬座', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (20, '1', 1, 3, '10:30', 150, '1车02号', '硬座', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (21, '1', 1, 3, '10:30', 150, '1车03号', '硬座', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (22, '1', 1, 3, '10:30', 150, '1车04号', '硬座', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (23, '1', 1, 3, '10:30', 150, '1车05号', '硬座', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (24, '1', 1, 3, '10:30', 350, '2车01号', '硬卧', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (25, '1', 1, 3, '10:30', 350, '2车02号', '硬卧', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (26, '1', 1, 3, '10:30', 350, '2车03号', '硬卧', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (27, '1', 1, 3, '10:30', 650, '3车01号', '软卧', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (28, '1', 1, 3, '10:30', 650, '3车02号', '软卧', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (29, '1', 1, 3, '10:30', 650, '3车03号', '软卧', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (30, '2', 1, 3, '12:30', 650, '8车01号', '硬座', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (31, '2', 1, 3, '12:30', 650, '8车02号', '硬座', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (32, '2', 1, 3, '12:30', 850, '9车02号', '硬卧', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (33, '5', 1, 3, '14:30', 850, '1车02号', '硬卧', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (34, '5', 1, 3, '14:30', 1250, '3车01号', '软卧', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (35, '5', 1, 3, '14:30', 1250, '3车02号', '软卧', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (37, '1', 1, 3, '1:30', 150, '1车01号', '硬座', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (38, '1', 1, 3, '1:30', 150, '1车01号', '硬座', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (39, '1', 1, 3, '1:30', 150, '1车01号', '硬座', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (40, '1', 1, 3, '1:30', 150, '1车01号', '硬座', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (41, '1', 1, 3, '1:30', 150, '1车01号', '硬座', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (42, '1', 1, 3, '1:30', 150, '1车01号', '硬座', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (43, '2', 1, 3, '1:30', 550, '1车01号', '硬卧', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (44, '2', 1, 3, '1:30', 550, '1车01号', '硬卧', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (45, '2', 1, 3, '1:30', 550, '1车01号', '硬卧', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (46, '2', 1, 3, '1:30', 550, '1车01号', '硬卧', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (47, '2', 1, 3, '1:30', 550, '1车01号', '硬卧', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (48, '2', 1, 3, '1:30', 550, '1车01号', '硬卧', '2021-11-10 00:00:00');
INSERT INTO `piao` VALUES (49, '1', 1, 2, '8:20:00', 0, '1', '硬座', '2021-11-11 00:00:00');

-- ----------------------------
-- Table structure for traininfo
-- ----------------------------
DROP TABLE IF EXISTS `traininfo`;
CREATE TABLE `traininfo`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车名',
  `cz` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '车长',
  `znums` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '总座位数',
  `xcnums` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '限乘人数',
  `traintype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '火车类型',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '火车信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of traininfo
-- ----------------------------
INSERT INTO `traininfo` VALUES (1, 'A100', 'null', '60', '30', 'null');
INSERT INTO `traininfo` VALUES (2, 'P200', '李明', '50', '50', '特快');
INSERT INTO `traininfo` VALUES (3, 'N300', '李四', '50', '50', '高铁');
INSERT INTO `traininfo` VALUES (5, 'A101', '张伟', '50', '50', '动车');
INSERT INTO `traininfo` VALUES (6, 'P201', '马致远', '50', '50', '特快');
INSERT INTO `traininfo` VALUES (7, 'A102', 'null', '10', '10', 'null');

-- ----------------------------
-- Table structure for userinfo
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `upassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `utype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES (1, 'admin', 'admin', '管理员');
INSERT INTO `userinfo` VALUES (2, '111', '111', NULL);

-- ----------------------------
-- Table structure for xianlu
-- ----------------------------
DROP TABLE IF EXISTS `xianlu`;
CREATE TABLE `xianlu`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `xh` int(11) NULL DEFAULT NULL COMMENT '站点序号',
  `tid` int(11) NULL DEFAULT NULL COMMENT '车id',
  `zdid` int(11) NULL DEFAULT NULL COMMENT '站点id',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '线路信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xianlu
-- ----------------------------
INSERT INTO `xianlu` VALUES (1, 1, 1, 1);
INSERT INTO `xianlu` VALUES (2, 2, 1, 2);
INSERT INTO `xianlu` VALUES (3, 3, 1, 3);
INSERT INTO `xianlu` VALUES (4, 1, 2, 1);
INSERT INTO `xianlu` VALUES (5, 2, 2, 3);
INSERT INTO `xianlu` VALUES (7, 2, 3, 4);
INSERT INTO `xianlu` VALUES (8, 3, 2, 4);
INSERT INTO `xianlu` VALUES (9, 3, 3, 3);
INSERT INTO `xianlu` VALUES (10, 1, 3, 6);
INSERT INTO `xianlu` VALUES (11, 1, 5, 1);
INSERT INTO `xianlu` VALUES (12, 2, 5, 2);
INSERT INTO `xianlu` VALUES (13, 3, 5, 3);
INSERT INTO `xianlu` VALUES (14, 4, 5, 4);
INSERT INTO `xianlu` VALUES (15, 5, 5, 5);
INSERT INTO `xianlu` VALUES (17, 6, 5, 8);
INSERT INTO `xianlu` VALUES (18, 1, 6, 8);
INSERT INTO `xianlu` VALUES (19, 2, 6, 5);
INSERT INTO `xianlu` VALUES (20, 3, 6, 3);
INSERT INTO `xianlu` VALUES (21, 4, 6, 10);

-- ----------------------------
-- Table structure for zhandian
-- ----------------------------
DROP TABLE IF EXISTS `zhandian`;
CREATE TABLE `zhandian`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `zdname` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '站点名称',
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '站点信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zhandian
-- ----------------------------
INSERT INTO `zhandian` VALUES (1, '本校区');
INSERT INTO `zhandian` VALUES (2, '分校区');
INSERT INTO `zhandian` VALUES (3, '火车东站');
INSERT INTO `zhandian` VALUES (4, '火车西站');
INSERT INTO `zhandian` VALUES (5, '火车南站');
INSERT INTO `zhandian` VALUES (6, '火车北站');
INSERT INTO `zhandian` VALUES (8, '汽车东站');
INSERT INTO `zhandian` VALUES (9, '汽车西站');
INSERT INTO `zhandian` VALUES (10, '汽车南站');
INSERT INTO `zhandian` VALUES (11, '汽车北站');

SET FOREIGN_KEY_CHECKS = 1;
