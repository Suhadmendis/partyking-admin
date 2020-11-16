/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50711
 Source Host           : localhost:3306
 Source Schema         : sample

 Target Server Type    : MySQL
 Target Server Version : 50711
 File Encoding         : 65001

 Date: 16/11/2020 10:30:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_entry
-- ----------------------------
DROP TABLE IF EXISTS `sys_entry`;
CREATE TABLE `sys_entry`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `url` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `des` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `super` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `main` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sub` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `class_1` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `class_2` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `color` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `block` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_entry
-- ----------------------------
INSERT INTO `sys_entry` VALUES (23, 'Create User', 'new_user', NULL, 'Main', NULL, 'Administration', NULL, NULL, NULL, NULL);
INSERT INTO `sys_entry` VALUES (24, 'Change Password', 'change_password', NULL, 'Main', NULL, 'Administration', NULL, NULL, NULL, NULL);
INSERT INTO `sys_entry` VALUES (25, 'Manage Permission', 'user_p', NULL, 'Main', NULL, 'Administration', NULL, NULL, NULL, NULL);
INSERT INTO `sys_entry` VALUES (48, 'System Infomation', 'system_info', NULL, 'Main', NULL, 'Administration', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_info`;
CREATE TABLE `sys_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `COM_NAME` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `COM_EMAIL` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `COM_ADD1` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `COM_ADD2` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `COM_TEL1` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `COM_TEL2` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `COM_FAX` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `COM_TAX` decimal(15, 2) NULL DEFAULT NULL,
  `membership_ref` int(255) NULL DEFAULT NULL,
  `product_category_ref` int(255) NULL DEFAULT NULL,
  `product_ref` int(255) NULL DEFAULT NULL,
  `benefit_ref` int(255) NULL DEFAULT NULL,
  `card_ref` int(255) NULL DEFAULT NULL,
  `user_ref` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_info
-- ----------------------------
INSERT INTO `sys_info` VALUES (1, 'Loyalty', 'Email', 'Address 1', 'Address 2', 'Contact 1', 'Contact 2', 'FAX', 1200.00, 4, 2, 1, 2, NULL, NULL);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `REF` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `entry` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `operation` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sys_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP(0),
  `user` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ip` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of sys_log
-- ----------------------------

-- ----------------------------
-- Table structure for user_mast
-- ----------------------------
DROP TABLE IF EXISTS `user_mast`;
CREATE TABLE `user_mast`  (
  `user_name` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_type` varchar(40) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_depart` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `U_email` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `R_email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `user_level` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  `dev` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0'
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of user_mast
-- ----------------------------
INSERT INTO `user_mast` VALUES ('admin', '1234', 'Admin', NULL, NULL, NULL, '0', '0');
INSERT INTO `user_mast` VALUES ('akila', '1234', '', NULL, '', '', '0', '0');
INSERT INTO `user_mast` VALUES ('nethadun', '1234', '', NULL, '', '', '0', '0');

-- ----------------------------
-- Table structure for userpermission
-- ----------------------------
DROP TABLE IF EXISTS `userpermission`;
CREATE TABLE `userpermission`  (
  `id` bigint(20) NULL DEFAULT NULL,
  `username` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `userpass` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `grp` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `docid` bigint(20) NULL DEFAULT 0,
  `doc_view` smallint(11) NULL DEFAULT 0,
  `doc_feed` smallint(1) NULL DEFAULT 0,
  `doc_mod` smallint(1) NULL DEFAULT 0,
  `price_edit` smallint(1) NULL DEFAULT 0,
  `admin` smallint(1) NULL DEFAULT 0,
  `dev` smallint(1) NULL DEFAULT 0,
  `doc_print` smallint(1) NULL DEFAULT 0,
  `comcode` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  `comname` varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0',
  `sal_ex` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `logdate` date NULL DEFAULT NULL,
  INDEX `userpermission`(`username`, `grp`, `docid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of userpermission
-- ----------------------------
INSERT INTO `userpermission` VALUES (NULL, 'admin', '1234', 'Administration', 23, 1, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'admin', '1234', 'Administration', 24, 1, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'admin', '1234', 'Administration', 25, 1, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'admin', '1234', 'Allocation', 56, 1, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'admin', '1234', 'Allocation', 58, 1, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'admin', '1234', 'Allocation', 59, 1, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'admin', '1234', 'Main', 53, 1, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'admin', '1234', 'Main', 54, 1, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'admin', '1234', 'Main', 55, 1, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'admin', '1234', 'Main', 57, 1, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'admin', '1234', 'System', 48, 1, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'nethadun', '1234', 'Administration', 23, 1, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'nethadun', '1234', 'Administration', 24, 1, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'nethadun', '1234', 'Administration', 25, 1, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'nethadun', '1234', 'Allocation', 56, 0, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'nethadun', '1234', 'Allocation', 58, 0, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'nethadun', '1234', 'Allocation', 59, 0, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'nethadun', '1234', 'Main', 53, 0, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'nethadun', '1234', 'Main', 54, 0, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'nethadun', '1234', 'Main', 55, 0, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'nethadun', '1234', 'Main', 57, 0, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'nethadun', '1234', 'System', 48, 0, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'akila', '123', 'Administration', 23, 0, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'akila', '123', 'Administration', 24, 0, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'akila', '123', 'Administration', 25, 0, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'akila', '123', 'Allocation', 56, 1, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'akila', '123', 'Allocation', 58, 1, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'akila', '123', 'Allocation', 59, 1, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'akila', '123', 'Main', 53, 0, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'akila', '123', 'Main', 54, 0, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'akila', '123', 'Main', 55, 0, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'akila', '123', 'Main', 57, 0, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);
INSERT INTO `userpermission` VALUES (NULL, 'akila', '123', 'System', 48, 0, 0, 0, 0, 0, 0, 0, '0', '0', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
