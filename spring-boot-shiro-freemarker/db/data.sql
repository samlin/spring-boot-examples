/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : ssf

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-12-22 23:51:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_permission
-- ----------------------------
DROP TABLE IF EXISTS `tb_permission`;
CREATE TABLE `tb_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `is_hide` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `source_key` varchar(255) DEFAULT NULL,
  `source_url` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_permission
-- ----------------------------
INSERT INTO `tb_permission` VALUES ('1', '2018-01-10 13:56:51', '用户管理', null, '0', '2', '用户管理', '1', 'system:user:index', '/admin/user/index', '1', '2018-01-10 13:59:01', '0');
INSERT INTO `tb_permission` VALUES ('2', '2018-01-10 13:56:51', '用户编辑', null, '0', '3', '用户编辑', '1', 'system:user:edit', '/admin/user/edit*', '2', '2018-01-10 16:26:42', '1');
INSERT INTO `tb_permission` VALUES ('3', '2018-01-11 16:48:48', '用户添加', null, '0', '3', '用户添加', '2', 'system:user:add', '/admin/user/add', '2', '2018-01-11 16:49:26', '1');
INSERT INTO `tb_permission` VALUES ('4', '2018-01-11 16:48:48', '用户删除', null, '0', '3', '用户删除', '3', 'system:user:deleteBatch', '/admin/user/deleteBatch', '2', '2018-01-18 14:11:41', '1');
INSERT INTO `tb_permission` VALUES ('5', '2018-01-11 16:48:48', '角色分配', null, '0', '3', '角色分配', '4', 'system:user:grant', '/admin/user/grant/**', '2', '2018-01-18 14:11:51', '1');
INSERT INTO `tb_permission` VALUES ('6', '2018-01-12 16:45:10', '角色管理', null, '0', '2', '角色管理', '2', 'system:role:index', '/admin/role/index', '1', '2018-01-12 16:46:52', '0');
INSERT INTO `tb_permission` VALUES ('7', '2018-01-12 16:47:02', '角色编辑', null, '0', '3', '角色编辑', '1', 'system:role:edit', '/admin/role/edit*', '2', '2018-01-18 10:24:06', '1');
INSERT INTO `tb_permission` VALUES ('8', '2018-01-12 16:47:23', '角色添加', null, '0', '3', '角色添加', '2', 'system:role:add', '/admin/role/add', '2', '2018-01-12 16:49:16', '6');
INSERT INTO `tb_permission` VALUES ('9', '2018-01-12 16:47:23', '角色删除', null, '0', '3', '角色删除', '3', 'system:role:deleteBatch', '/admin/role/deleteBatch', '2', '2018-01-18 14:12:03', '6');
INSERT INTO `tb_permission` VALUES ('10', '2018-01-12 16:47:23', '资源分配', null, '0', '3', '资源分配', '4', 'system:role:grant', '/admin/role/grant/**', '2', '2018-01-18 14:12:11', '6');
INSERT INTO `tb_permission` VALUES ('11', '2018-01-17 11:21:12', '资源管理', null, '0', '2', '资源管理', '3', 'system:resource:index', '/admin/resource/index', '1', '2018-01-17 11:21:42', '0');
INSERT INTO `tb_permission` VALUES ('12', '2018-01-17 11:21:52', '资源编辑', null, '0', '3', '资源编辑', '1', 'system:resource:edit', '/admin/resource/edit*', '2', '2018-01-17 11:22:36', '11');
INSERT INTO `tb_permission` VALUES ('13', '2018-01-17 11:21:54', '资源添加', null, '0', '3', '资源添加', '2', 'system:resource:add', '/admin/resource/add', '2', '2018-01-17 11:22:39', '11');
INSERT INTO `tb_permission` VALUES ('14', '2018-01-17 11:21:54', '资源删除', null, '0', '3', '资源删除', '3', 'system:resource:deleteBatch', '/admin/resource/deleteBatch', '2', '2018-01-18 14:12:31', '11');
INSERT INTO `tb_permission` VALUES ('61', '2018-01-10 13:56:51', '系统管理', null, '0', '1', '系统管理', '1', 'system', 'javascript:void(0);', '1', '2018-01-10 13:59:01', null);

-- ----------------------------
-- Table structure for tb_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_role`;
CREATE TABLE `tb_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `role_key` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role
-- ----------------------------
INSERT INTO `tb_role` VALUES ('1', '2018-01-09 17:25:30', '超级管理员', 'administrator', 'administrator', '0', '2018-01-09 17:26:25');

-- ----------------------------
-- Table structure for tb_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_permission`;
CREATE TABLE `tb_role_permission` (
  `role_id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`resource_id`),
  KEY `FKdnam10di61avx67n0u9vx4801` (`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role_permission
-- ----------------------------
INSERT INTO `tb_role_permission` VALUES ('1', '0');
INSERT INTO `tb_role_permission` VALUES ('1', '1');
INSERT INTO `tb_role_permission` VALUES ('1', '2');
INSERT INTO `tb_role_permission` VALUES ('1', '3');
INSERT INTO `tb_role_permission` VALUES ('1', '4');
INSERT INTO `tb_role_permission` VALUES ('1', '5');
INSERT INTO `tb_role_permission` VALUES ('1', '6');
INSERT INTO `tb_role_permission` VALUES ('1', '7');
INSERT INTO `tb_role_permission` VALUES ('1', '8');
INSERT INTO `tb_role_permission` VALUES ('1', '9');
INSERT INTO `tb_role_permission` VALUES ('1', '10');
INSERT INTO `tb_role_permission` VALUES ('1', '11');
INSERT INTO `tb_role_permission` VALUES ('1', '12');
INSERT INTO `tb_role_permission` VALUES ('1', '13');
INSERT INTO `tb_role_permission` VALUES ('1', '14');

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `delete_status` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `locked` int(11) DEFAULT NULL,
  `nick_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', '广州', '', '2018-01-09 17:26:39', '2018-01-09 17:26:41', '0', '超级管理员', 'lyh0622@126.com', '0', 'admin', '114CNIIUINKMJK72AA1P5807U3', '1', '13112256276', '2018-01-09 17:27:11', 'admin');

-- ----------------------------
-- Table structure for tb_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_role`;
CREATE TABLE `tb_user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKea2ootw6b6bb0xt3ptl28bymv` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user_role
-- ----------------------------
INSERT INTO `tb_user_role` VALUES ('1', '1');
