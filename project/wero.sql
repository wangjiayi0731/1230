/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : wero

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 07/04/2020 16:06:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for pro
-- ----------------------------
DROP TABLE IF EXISTS `pro`;
CREATE TABLE `pro`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `price` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `single` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pro
-- ----------------------------
INSERT INTO `pro` VALUES (1, '空调', '1200', '北京', '15', '1');
INSERT INTO `pro` VALUES (2, '加湿器', '500', '上海', '25', '0');
INSERT INTO `pro` VALUES (3, '洗衣机', '2500', '深圳', '16', '1');
INSERT INTO `pro` VALUES (4, '烘干机', '2000', '北京', '25', '1');
INSERT INTO `pro` VALUES (5, '洗碗机', '1500', '上海', '26', '0');
INSERT INTO `pro` VALUES (6, '空调', '1200', '北京', '15', '1');
INSERT INTO `pro` VALUES (7, '加湿器', '500', '上海', '25', '0');
INSERT INTO `pro` VALUES (8, '洗衣机', '2500', '深圳', '16', '1');
INSERT INTO `pro` VALUES (9, '烘干机', '2000', '北京', '25', '1');
INSERT INTO `pro` VALUES (10, '洗碗机', '1500', '上海', '26', '0');
INSERT INTO `pro` VALUES (15, '洗衣机', '1500', '深圳', '25', '0');

-- ----------------------------
-- Table structure for tpadmin
-- ----------------------------
DROP TABLE IF EXISTS `tpadmin`;
CREATE TABLE `tpadmin`  (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '密码',
  `login_ip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '登录ip',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  `create_time` int(11) DEFAULT NULL COMMENT '添加时间',
  `login_time` int(11) DEFAULT NULL COMMENT '登录时间',
  `status` int(11) DEFAULT NULL COMMENT '0代表没有登录 1代表登录',
  `salt` int(11) DEFAULT NULL COMMENT '密钥',
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tpadmin
-- ----------------------------
INSERT INTO `tpadmin` VALUES (1, 'tomi', '123456', '127.0.0.1', 1583759392, 1583759392, 32454556, 1, NULL);
INSERT INTO `tpadmin` VALUES (2, 'tome', '231456', '127.0.0.1', 1583758110, 1583758110, NULL, 1, NULL);
INSERT INTO `tpadmin` VALUES (3, 'xiaomi', '123456', '127.0.0.1', 1583926147, 1583926147, NULL, 1, NULL);
INSERT INTO `tpadmin` VALUES (4, 'tome', '123456', '127.0.0.1', 1584001527, 1584001527, NULL, 1, NULL);
INSERT INTO `tpadmin` VALUES (5, 'tome', '123456', '127.0.0.1', 1584004850, 1584004850, NULL, 1, NULL);
INSERT INTO `tpadmin` VALUES (6, 'tome', '123456', '127.0.0.1', 1584066024, 1584066024, NULL, 1, NULL);
INSERT INTO `tpadmin` VALUES (7, NULL, NULL, '127.0.0.1', 1586243885, 1586243885, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tpdl
-- ----------------------------
DROP TABLE IF EXISTS `tpdl`;
CREATE TABLE `tpdl`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tpdl
-- ----------------------------
INSERT INTO `tpdl` VALUES (1, 'tom', '123456');
INSERT INTO `tpdl` VALUES (2, 'xaiomi', '220524');
INSERT INTO `tpdl` VALUES (3, 'wangyu', '123456');
INSERT INTO `tpdl` VALUES (4, 'timie', '220524');
INSERT INTO `tpdl` VALUES (5, 'timo', '123456');

-- ----------------------------
-- Table structure for tpdn
-- ----------------------------
DROP TABLE IF EXISTS `tpdn`;
CREATE TABLE `tpdn`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jiage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `xiancun` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sunhui` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `daixiu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tpdn
-- ----------------------------
INSERT INTO `tpdn` VALUES (1, '三星主机', '5300', '231', '56', '18');
INSERT INTO `tpdn` VALUES (2, '三星显示屏', '1200', '310', '26', '3');
INSERT INTO `tpdn` VALUES (3, '联想主机', '2900', '103', '23', '4');
INSERT INTO `tpdn` VALUES (4, '华硕主机', '4100', '56', '13', '0');
INSERT INTO `tpdn` VALUES (5, '华硕显示屏', '1000', '26', '0', '0');
INSERT INTO `tpdn` VALUES (6, '惠普笔记本', '4600', '30', '1', '0');
INSERT INTO `tpdn` VALUES (7, '三星笔记本', '3500', '46', '5', '0');
INSERT INTO `tpdn` VALUES (10, '东方红', '50000', '2', '0', '0');

-- ----------------------------
-- Table structure for tpgz
-- ----------------------------
DROP TABLE IF EXISTS `tpgz`;
CREATE TABLE `tpgz`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ruzhi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gongzi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `zhiwei` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tpgz
-- ----------------------------
INSERT INTO `tpgz` VALUES (1, '王浩', '2010', '64000', '1313675265', 'CEO');
INSERT INTO `tpgz` VALUES (2, '李娜', '2010', '60000', '13356569653', 'CFO');
INSERT INTO `tpgz` VALUES (3, '王效丽', '2011', '50000', '13831695658', '销售总监');
INSERT INTO `tpgz` VALUES (4, '李浩', '2012', '45000', '17732466589', '销售副总裁');
INSERT INTO `tpgz` VALUES (5, '向禹', '2014', '23000', '13135699656', '财务部秘书');
INSERT INTO `tpgz` VALUES (6, '张婷', '2011', '25000', '13831698462', '资产部总监');
INSERT INTO `tpgz` VALUES (7, '刘丽伟', '2016', '20000', '17732654956', '行政部总监');
INSERT INTO `tpgz` VALUES (8, '张羽', '2018', '14000', '13346258565', '行政部副总监');
INSERT INTO `tpgz` VALUES (9, '王思禹', '2017', '18000', '13373121504', '设计总监');

-- ----------------------------
-- Table structure for tpsp
-- ----------------------------
DROP TABLE IF EXISTS `tpsp`;
CREATE TABLE `tpsp`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jiage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `shuliang` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tpsp
-- ----------------------------
INSERT INTO `tpsp` VALUES (1, '海尔空调', '2800', '68');
INSERT INTO `tpsp` VALUES (2, '美的空调', '2500', '24');
INSERT INTO `tpsp` VALUES (3, '美的咖啡机', '1330', '63');
INSERT INTO `tpsp` VALUES (4, '宜家办公桌', '420', '230');
INSERT INTO `tpsp` VALUES (5, '宜家办公椅', '230', '321');
INSERT INTO `tpsp` VALUES (6, '三星电脑显示屏', '1500', '423');
INSERT INTO `tpsp` VALUES (7, '联想键盘', '150', '500');
INSERT INTO `tpsp` VALUES (8, '三星鼠标', '80', '500');

-- ----------------------------
-- Table structure for tpzuo
-- ----------------------------
DROP TABLE IF EXISTS `tpzuo`;
CREATE TABLE `tpzuo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jiage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `xs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `js` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `xz` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sj` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `qita` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tpzuo
-- ----------------------------
INSERT INTO `tpzuo` VALUES (1, '宜家办公桌', '420', '230', '132', '20', '56', '17');
INSERT INTO `tpzuo` VALUES (2, '宜家办公椅', '230', '230', '138', '25', '56', '19');
INSERT INTO `tpzuo` VALUES (3, '会议室桌子', '500', '2', '3', '5', '1', '1');
INSERT INTO `tpzuo` VALUES (4, '会议室椅子', '100', '50', '60', '40', '58', '53');

-- ----------------------------
-- Table structure for tpzy
-- ----------------------------
DROP TABLE IF EXISTS `tpzy`;
CREATE TABLE `tpzy`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bumen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `zhiwei` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tpzy
-- ----------------------------
INSERT INTO `tpzy` VALUES (1, '王效丽', '销售部', '总监');
INSERT INTO `tpzy` VALUES (2, '李浩', '销售部', '副总监');
INSERT INTO `tpzy` VALUES (3, '王浩', '行政部', 'CEO');
INSERT INTO `tpzy` VALUES (4, '李娜', '行政部', 'CFO');
INSERT INTO `tpzy` VALUES (5, '向禹', '财务部', '秘书');
INSERT INTO `tpzy` VALUES (6, '张婷', '资产部', '总监');
INSERT INTO `tpzy` VALUES (7, '刘丽伟', '行政部', '总监');
INSERT INTO `tpzy` VALUES (8, '张羽', '行政部', '副总监');
INSERT INTO `tpzy` VALUES (9, '王思禹', '设计部', '总监');
INSERT INTO `tpzy` VALUES (10, '王伟', '设计部', '副总监');

SET FOREIGN_KEY_CHECKS = 1;
