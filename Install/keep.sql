/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : keep

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-08-18 17:19:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for keep_admin_branch
-- ----------------------------
DROP TABLE IF EXISTS `keep_admin_branch`;
CREATE TABLE `keep_admin_branch` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `level` int(4) unsigned DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keep_admin_branch
-- ----------------------------
INSERT INTO `keep_admin_branch` VALUES ('1', 'branch1', '部门一', '1', '1');
INSERT INTO `keep_admin_branch` VALUES ('2', 'branch2', '部门二', '2', '2');
INSERT INTO `keep_admin_branch` VALUES ('3', 'branch', '部门三', '1', '1');

-- ----------------------------
-- Table structure for keep_admin_level
-- ----------------------------
DROP TABLE IF EXISTS `keep_admin_level`;
CREATE TABLE `keep_admin_level` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `level` int(4) unsigned DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keep_admin_level
-- ----------------------------
INSERT INTO `keep_admin_level` VALUES ('1', 'level1', '级别一', '1', '2');
INSERT INTO `keep_admin_level` VALUES ('2', 'level2', '级别二', '2', '1');
INSERT INTO `keep_admin_level` VALUES ('3', 'level3', '级别三', '3', '1');
INSERT INTO `keep_admin_level` VALUES ('4', 'level4', '级别4', '4', '2');

-- ----------------------------
-- Table structure for keep_admin_member
-- ----------------------------
DROP TABLE IF EXISTS `keep_admin_member`;
CREATE TABLE `keep_admin_member` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `encrypt` varchar(4) NOT NULL,
  `title` varchar(20) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `branch` int(4) unsigned NOT NULL DEFAULT '0' COMMENT '部门',
  `level` int(4) unsigned NOT NULL DEFAULT '0',
  `email` varchar(32) NOT NULL DEFAULT '',
  `addtime` varchar(32) NOT NULL COMMENT '添加时间',
  `adduser` varchar(32) NOT NULL COMMENT '添加者',
  `authority` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否针对该用户制定了权限 0否1是',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `loginip` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `headimg` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keep_admin_member
-- ----------------------------
INSERT INTO `keep_admin_member` VALUES ('1', 'admin', '90fbxeAiDIO1y+V1bJONn00dlnQfjZXESoaf9TWFwNAjGw', '2123', '超级管理员', '0', '0', '272@qq.com', '1495092506', 'fjwcoder', '0', '0', '127.0.0.1', '1', '__STATIC__\\upload\\images\\headimg\\20170816\\ec78513b29f856cf591bec12993323cc.jpg');
INSERT INTO `keep_admin_member` VALUES ('2', 'admin1', '997cqYR0ziyDJAVVOpTFL9ph0+tj6oKAg+TG091ljSSUGqw', 'e10a', '冯建文0', '0', '3', '22@qq.com', '1502692147', 'admin', '1', '0', '', '1', '__STATIC__\\upload\\images\\headimg\\20170817\\bbd7591dc7666b871ce0cafae0f2e2ca.jpg');
INSERT INTO `keep_admin_member` VALUES ('3', 'admin2', '997cqYR0ziyDJAVVOpTFL9ph0+tj6oKAg+TG091ljSSUGqw', 'e10a', '冯建文', '1', '3', '33@qq.com', '1502692147', 'admin', '0', '0', '', '1', '');
INSERT INTO `keep_admin_member` VALUES ('4', 'admin3', 'a1b2JJdb5T7qELR8+M9nnDVeJrQZ7DOV8ElfWQ/7FF5FGBc', 'e10a', '李敏', '3', '2', '2222@qq.com', '1502871785', 'admin', '0', '0', '', '1', null);
INSERT INTO `keep_admin_member` VALUES ('5', 'admin4', '997cqYR0ziyDJAVVOpTFL9ph0+tj6oKAg+TG091ljSSUGqw', 'e10a', '王五', '1', '2', '222@qq.com', '1502871810', 'admin', '0', '0', '', '2', null);

-- ----------------------------
-- Table structure for keep_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `keep_admin_menu`;
CREATE TABLE `keep_admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(20) DEFAULT NULL COMMENT '标识',
  `title` varchar(20) NOT NULL COMMENT '标识',
  `pid` int(10) unsigned DEFAULT NULL,
  `id_list` text,
  `sort` int(4) unsigned NOT NULL COMMENT '级别',
  `deep` int(4) unsigned NOT NULL COMMENT '等级，从1开始',
  `level` int(4) unsigned DEFAULT '99' COMMENT '级别',
  `url` varchar(32) DEFAULT NULL,
  `icon` varchar(32) DEFAULT NULL,
  `isnode` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是不是一个父节点',
  `status` int(1) unsigned NOT NULL COMMENT '状态',
  `remark` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keep_admin_menu
-- ----------------------------
INSERT INTO `keep_admin_menu` VALUES ('1', 'CMS_WELCOME_LOGIN', '欢迎登录', '0', '1', '1', '1', '99', null, 'glyphicon-home', '1', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('2', 'CMS_SYSTEM_SET', '系统设置', '0', '2', '2', '1', '0', null, 'glyphicon-cog', '1', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('3', 'CMS_EXT_MANAGE', '扩展管理', '0', '3', '3', '1', '0', null, 'glyphicon-magnet', '1', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('4', 'NODE_WELCOME_ANNOUNC', '系统公告', '1', '1,4', '1', '2', '99', null, null, '1', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('5', 'NODE_SYSTEM_SET', '系统设置', '2', '2,5', '1', '2', '0', null, null, '1', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('6', 'NAV_SYSTEM_SET', '基本配置', '5', '2,5,6', '1', '3', '0', '/admin/system/index/navid/6', 'glyphicon-cog', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('7', 'NODE_ADMIN_MANAGE', '后台用户', '3', '3,7', '1', '2', '99', null, null, '1', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('8', 'NAV_ADMIN_MANAGE', '用户列表', '7', '3,7,8', '1', '3', '0', '/admin/member/index/navid/8', 'glyphicon-user', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('9', 'NAV_ADMIN_INFO', '我的信息', '7', '3,7,9', '2', '3', '99', '/admin/member/edit/navid/9', 'glyphicon-user', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('10', 'NAV_ADMIN_PWD', '修改密码', '7', '3,7,10', '3', '3', '99', '/admin/member/passcode/navid/10', 'glyphicon-lock', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('11', 'NODE_ADMIN_BELONG', '用户归属', '3', '3,11', '2', '2', '0', null, null, '1', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('12', 'NAV_ADMIN_BRANCH', '部门管理', '11', '3,11,12', '1', '3', '0', '/admin/branch/index/navid/12', 'glyphicon-user', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('13', 'NAV_ADMIN_LEVEL', '级别管理', '11', '3,11,13', '2', '3', '0', '/admin/level/index/navid/13', 'glyphicon-user', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('14', 'NAV_WELCOME_ANNOUNCE', '系统公告', '4', '1,4,14', '1', '3', '99', '', null, '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('15', 'WEB_SET', '前台设置', '0', '4', '4', '1', '0', '', 'glyphicon-globe', '1', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('17', 'WEB_EXT_SET', '扩展设置', '15', '2,15,17', '1', '2', '0', '', '', '1', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('16', 'NAV_WEB_SEO', 'SEO设置', '5', '2,5,16', '2', '3', '0', '/admin/seo/index/navid/16', 'glyphicon-tags', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('18', 'WEB_SET_REGIST', '用户注册', '17', '2,17,18', '1', '3', '0', '/admin/web/regist/navid/18', 'glyphicon-thumbs-up', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('19', 'NAV_WEB_LINK', '友情链接', '5', '2,5,19', '3', '0', '0', '/admin/link/index/navid/19', 'glyphicon-link	', '0', '1', null);
INSERT INTO `keep_admin_menu` VALUES ('20', '', '', null, null, '0', '0', null, null, null, '0', '0', null);

-- ----------------------------
-- Table structure for keep_admin_node
-- ----------------------------
DROP TABLE IF EXISTS `keep_admin_node`;
CREATE TABLE `keep_admin_node` (
  `menu_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '编号',
  `branch_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '编号',
  `level_id` int(10) NOT NULL DEFAULT '0' COMMENT '标识',
  `user_id` int(10) NOT NULL DEFAULT '0' COMMENT '标识'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keep_admin_node
-- ----------------------------
INSERT INTO `keep_admin_node` VALUES ('10', '0', '0', '2');
INSERT INTO `keep_admin_node` VALUES ('9', '0', '0', '2');
INSERT INTO `keep_admin_node` VALUES ('8', '0', '0', '2');
INSERT INTO `keep_admin_node` VALUES ('7', '0', '0', '2');
INSERT INTO `keep_admin_node` VALUES ('3', '0', '0', '2');
INSERT INTO `keep_admin_node` VALUES ('14', '0', '0', '2');
INSERT INTO `keep_admin_node` VALUES ('4', '0', '0', '2');
INSERT INTO `keep_admin_node` VALUES ('1', '0', '0', '2');

-- ----------------------------
-- Table structure for keep_answer_log
-- ----------------------------
DROP TABLE IF EXISTS `keep_answer_log`;
CREATE TABLE `keep_answer_log` (
  `nid` int(10) unsigned NOT NULL COMMENT '问卷id',
  `persion` varchar(32) NOT NULL COMMENT '答题人',
  `qid` int(8) unsigned NOT NULL COMMENT '问题编号',
  `aid` int(2) unsigned NOT NULL COMMENT '答案id',
  `point` int(3) NOT NULL,
  `remark` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keep_answer_log
-- ----------------------------
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '1', '1', '2', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '2', '1', '3', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '1', '4', '8', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '2', '2', '0', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '1', '5', '8', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '2', '3', '0', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '1', '6', '10', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '2', '3', '0', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '1', '5', '8', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '2', '3', '0', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '1', '3', '4', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '2', '2', '3', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '3', '3', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '4', '3', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '5', '3', '10', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '6', '2', '2', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '7', '1', '8', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '8', '3', '4', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '9', '2', '4', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '10', '2', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '1', '5', '8', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '2', '1', '10', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '3', '3', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '4', '3', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '5', '1', '0', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '6', '2', '2', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '7', '2', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '8', '3', '4', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '9', '3', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '10', '2', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '1', '5', '8', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '2', '1', '10', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '3', '3', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '4', '3', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '5', '1', '0', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '6', '2', '2', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '7', '2', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '8', '3', '4', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '9', '3', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '10', '2', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '1', '4', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '2', '2', '3', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '3', '3', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '4', '3', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '5', '2', '5', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '6', '2', '2', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '7', '3', '4', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '8', '3', '4', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '9', '2', '4', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '10', '2', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '1', '3', '4', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '2', '2', '3', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '3', '2', '2', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '4', '3', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '5', '1', '0', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '6', '3', '10', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '7', '3', '4', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '8', '3', '4', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '9', '3', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '10', '2', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '1', '3', '4', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '2', '3', '0', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '3', '6', '10', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '4', '4', '10', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '5', '1', '0', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '6', '1', '4', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '7', '2', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '8', '3', '4', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '9', '2', '4', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '10', '3', '8', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '1', '3', '4', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '2', '3', '0', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '3', '6', '10', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '4', '4', '10', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '5', '1', '0', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '6', '1', '4', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '7', '2', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '8', '3', '4', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '9', '2', '4', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '10', '3', '8', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '1', '3', '4', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '2', '3', '0', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '3', '6', '10', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '4', '4', '10', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '5', '1', '0', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '6', '1', '4', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '7', '2', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '8', '3', '4', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '9', '2', '4', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '10', '3', '8', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '1', '6', '10', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '2', '1', '10', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '3', '6', '10', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '4', '4', '10', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '5', '3', '10', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '6', '3', '10', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '7', '2', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '8', '2', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '9', '3', '6', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '10', '3', '8', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '1', '1', '0', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '2', '1', '10', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '3', '1', '0', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '4', '1', '0', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '5', '1', '0', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '6', '1', '4', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '7', '1', '8', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '8', '1', '10', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '9', '1', '0', null);
INSERT INTO `keep_answer_log` VALUES ('1', 'default', '10', '1', '0', null);

-- ----------------------------
-- Table structure for keep_categories
-- ----------------------------
DROP TABLE IF EXISTS `keep_categories`;
CREATE TABLE `keep_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `xname` varchar(50) DEFAULT NULL,
  `parentid` int(10) DEFAULT '0',
  `parentid_list` varchar(20) DEFAULT '0',
  `depth` varchar(10) DEFAULT NULL,
  `state` varchar(10) DEFAULT '1',
  `priority` varchar(10) DEFAULT '0',
  `isnode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keep_categories
-- ----------------------------
INSERT INTO `keep_categories` VALUES ('1', '图书', null, '0', '1', '1', '1', '0', '1');
INSERT INTO `keep_categories` VALUES ('2', '科技', null, '1', '1,2', '2', '1', '0', '1');
INSERT INTO `keep_categories` VALUES ('3', '计算机/互联网', null, '2', '1,2,3', '3', '1', '0', '0');
INSERT INTO `keep_categories` VALUES ('4', '医学', null, '2', '1,2,4', '3', '1', '0', '0');
INSERT INTO `keep_categories` VALUES ('5', '自然与科学', null, '2', '1,2,5', '3', '1', '0', '0');
INSERT INTO `keep_categories` VALUES ('6', '电脑办公', null, '0', '6', '1', '1', '0', '1');
INSERT INTO `keep_categories` VALUES ('7', '电脑整机', null, '6', '6,7', '2', '1', '0', '1');
INSERT INTO `keep_categories` VALUES ('8', '笔记本', null, '7', '6,7,8', '3', '1', '0', '0');
INSERT INTO `keep_categories` VALUES ('9', '平板电脑', null, '7', '6,7,9', '3', '1', '0', '0');
INSERT INTO `keep_categories` VALUES ('10', '服务器', null, '7', '6,7,10', '3', '1', '0', '0');
INSERT INTO `keep_categories` VALUES ('11', '家用电器', null, '0', '11', '1', '1', '0', '1');
INSERT INTO `keep_categories` VALUES ('12', '厨房电器', null, '11', '11,12', '2', '1', '0', '1');
INSERT INTO `keep_categories` VALUES ('13', '电饭锅', null, '12', '11,12,13', '3', '1', '0', '0');
INSERT INTO `keep_categories` VALUES ('14', '大家电', null, '11', '11,14', '2', '1', '0', '1');
INSERT INTO `keep_categories` VALUES ('15', '冰箱', null, '14', '11,14,15', '3', '1', '0', '0');
INSERT INTO `keep_categories` VALUES ('16', '计算机/硬件', null, '2', '1,2,16', '3', '1', '0', '1');
INSERT INTO `keep_categories` VALUES ('17', '硬件CPU', null, '16', '1,2,16,17', '4', '1', '0', '0');

-- ----------------------------
-- Table structure for keep_question_answer
-- ----------------------------
DROP TABLE IF EXISTS `keep_question_answer`;
CREATE TABLE `keep_question_answer` (
  `qid` int(10) unsigned NOT NULL COMMENT '问卷id',
  `id` int(10) unsigned NOT NULL COMMENT '问题id',
  `aid` int(10) unsigned NOT NULL COMMENT '答案id',
  `letter` char(1) NOT NULL COMMENT '字母选项',
  `title` varchar(64) NOT NULL COMMENT '选项内容',
  `point` int(2) unsigned NOT NULL COMMENT '分值',
  `status` tinyint(1) unsigned NOT NULL,
  `count` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '选择次数',
  `remark` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keep_question_answer
-- ----------------------------
INSERT INTO `keep_question_answer` VALUES ('1', '1', '0', 'A', '0', '0', '1', '1', '');
INSERT INTO `keep_question_answer` VALUES ('1', '1', '1', 'B', '1', '2', '1', '2', '');
INSERT INTO `keep_question_answer` VALUES ('1', '1', '2', 'C', '2', '4', '1', '3', '');
INSERT INTO `keep_question_answer` VALUES ('1', '1', '3', 'D', '3', '6', '1', '4', '');
INSERT INTO `keep_question_answer` VALUES ('1', '1', '4', 'E', '4', '8', '1', '2', '');
INSERT INTO `keep_question_answer` VALUES ('1', '2', '0', 'A', '有', '10', '1', '1', null);
INSERT INTO `keep_question_answer` VALUES ('1', '2', '1', 'B', '有（仅为朋友帮忙）', '3', '1', '0', null);
INSERT INTO `keep_question_answer` VALUES ('1', '2', '2', 'C', '无', '0', '1', '0', null);
INSERT INTO `keep_question_answer` VALUES ('1', '1', '5', 'F', '5', '10', '1', '2', null);
INSERT INTO `keep_question_answer` VALUES ('1', '3', '0', 'A', '0-1万元', '0', '1', '1', '');
INSERT INTO `keep_question_answer` VALUES ('1', '3', '1', 'B', '1-3万元', '2', '1', '0', '');
INSERT INTO `keep_question_answer` VALUES ('1', '3', '2', 'C', '3-5万元', '6', '1', '0', '');
INSERT INTO `keep_question_answer` VALUES ('1', '3', '3', 'D', '5-10万元', '8', '1', '0', '');
INSERT INTO `keep_question_answer` VALUES ('1', '3', '4', 'E', '10-20万元', '10', '1', '0', '');
INSERT INTO `keep_question_answer` VALUES ('1', '3', '5', 'F', '20万元以上', '10', '1', '0', '');
INSERT INTO `keep_question_answer` VALUES ('1', '4', '0', 'A', '无制度，一人决策', '0', '1', '1', '');
INSERT INTO `keep_question_answer` VALUES ('1', '4', '1', 'B', '有制度，但不运作', '2', '1', '0', '');
INSERT INTO `keep_question_answer` VALUES ('1', '4', '2', 'C', '无制度，集体决策 ', '6', '1', '0', '');
INSERT INTO `keep_question_answer` VALUES ('1', '4', '3', 'D', '有制度且运作良好', '10', '1', '0', '');
INSERT INTO `keep_question_answer` VALUES ('1', '5', '0', 'A', '内部无成文规章，外部使用通用合同', '0', '1', '1', '');
INSERT INTO `keep_question_answer` VALUES ('1', '5', '1', 'B', '内部无成文规章，对外合同为定制', '5', '1', '0', '');
INSERT INTO `keep_question_answer` VALUES ('1', '5', '2', 'C', '内部有成文规章，外部使用定制合同', '10', '1', '0', '');
INSERT INTO `keep_question_answer` VALUES ('1', '6', '0', 'A', '找熟人关系', '4', '1', '1', '');
INSERT INTO `keep_question_answer` VALUES ('1', '6', '1', 'B', '自行解决', '2', '1', '0', '');
INSERT INTO `keep_question_answer` VALUES ('1', '6', '2', 'C', '寻求律师帮助', '10', '1', '0', '');
INSERT INTO `keep_question_answer` VALUES ('1', '7', '0', 'A', '0件', '8', '1', '1', '');
INSERT INTO `keep_question_answer` VALUES ('1', '7', '1', 'B', '1-5件', '6', '1', '0', '');
INSERT INTO `keep_question_answer` VALUES ('1', '7', '2', 'C', '5-10件', '4', '1', '0', '');
INSERT INTO `keep_question_answer` VALUES ('1', '7', '3', 'D', '10-20件', '2', '1', '0', '');
INSERT INTO `keep_question_answer` VALUES ('1', '7', '4', 'E', '20件以上', '0', '1', '0', '');
INSERT INTO `keep_question_answer` VALUES ('1', '8', '0', 'A', '挽回损失', '10', '1', '1', '');
INSERT INTO `keep_question_answer` VALUES ('1', '8', '1', 'B', '无损失', '6', '1', '0', '');
INSERT INTO `keep_question_answer` VALUES ('1', '8', '1', 'B', '无损失', '6', '1', '0', '');
INSERT INTO `keep_question_answer` VALUES ('1', '8', '2', 'C', '损失不大', '4', '1', '0', '');
INSERT INTO `keep_question_answer` VALUES ('1', '8', '3', 'D', '巨大损失', '0', '1', '0', '');
INSERT INTO `keep_question_answer` VALUES ('1', '9', '0', 'A', '完全内因', '0', '1', '1', '');
INSERT INTO `keep_question_answer` VALUES ('1', '9', '1', 'B', '主要内因', '4', '1', '0', '');
INSERT INTO `keep_question_answer` VALUES ('1', '9', '2', 'C', '外因', '6', '1', '0', '');
INSERT INTO `keep_question_answer` VALUES ('1', '9', '3', 'D', '主要外因', '8', '1', '0', '');
INSERT INTO `keep_question_answer` VALUES ('1', '10', '0', 'A', '不满意', '0', '1', '1', '');
INSERT INTO `keep_question_answer` VALUES ('1', '10', '1', 'B', '一般', '6', '1', '0', '');
INSERT INTO `keep_question_answer` VALUES ('1', '10', '2', 'C', '满意', '8', '1', '0', '');
INSERT INTO `keep_question_answer` VALUES ('1', '10', '3', 'D', '棒极了', '10', '1', '0', '');

-- ----------------------------
-- Table structure for keep_question_log
-- ----------------------------
DROP TABLE IF EXISTS `keep_question_log`;
CREATE TABLE `keep_question_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `persion` varchar(32) NOT NULL,
  `nid` int(10) unsigned NOT NULL,
  `point` int(4) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `level` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keep_question_log
-- ----------------------------
INSERT INTO `keep_question_log` VALUES ('1', 'default', '1', '8', null, '1');
INSERT INTO `keep_question_log` VALUES ('2', 'default', '1', '10', null, '1');
INSERT INTO `keep_question_log` VALUES ('3', 'default', '1', '8', null, '1');
INSERT INTO `keep_question_log` VALUES ('4', 'default', '1', '53', null, '2');
INSERT INTO `keep_question_log` VALUES ('5', 'default', '1', '54', null, '2');
INSERT INTO `keep_question_log` VALUES ('6', 'default', '1', '54', null, '2');
INSERT INTO `keep_question_log` VALUES ('7', 'default', '1', '97', null, '3');
INSERT INTO `keep_question_log` VALUES ('8', 'default', '1', '92', null, '3');
INSERT INTO `keep_question_log` VALUES ('9', 'default', '1', '50', null, '2');
INSERT INTO `keep_question_log` VALUES ('10', 'default', '1', '86', null, '3');
INSERT INTO `keep_question_log` VALUES ('11', 'default', '1', '32', null, '1');

-- ----------------------------
-- Table structure for keep_question_naire
-- ----------------------------
DROP TABLE IF EXISTS `keep_question_naire`;
CREATE TABLE `keep_question_naire` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '问卷编号',
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `sec_title` varchar(128) DEFAULT NULL,
  `topic` text COMMENT '主题说明',
  `direction` varchar(255) DEFAULT NULL,
  `addtime` int(10) NOT NULL,
  `start_time` int(10) DEFAULT NULL,
  `end_time` int(10) DEFAULT NULL,
  `status` tinyint(1) unsigned NOT NULL COMMENT '状态',
  `q_count` int(2) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keep_question_naire
-- ----------------------------
INSERT INTO `keep_question_naire` VALUES ('1', '', '安进法务测试系统', null, '【首页】良好法务体系建设是公司发展的基石。安进法务作为您事业的护航者与助推者，在COSO内控模型的基础上结合多年法律服务经验，独家开发出本测试系统，为您简要判断公司的法务能力。本测试将花费您大约2分钟的时间，测试结果仅供参考。', null, '1496737121', '1496737121', '0', '1', '0', null);
INSERT INTO `keep_question_naire` VALUES ('2', '', '测试问卷', null, '测试问卷', null, '0', null, null, '1', '0', null);

-- ----------------------------
-- Table structure for keep_question_question
-- ----------------------------
DROP TABLE IF EXISTS `keep_question_question`;
CREATE TABLE `keep_question_question` (
  `id` int(10) unsigned NOT NULL COMMENT '问卷id',
  `qid` int(10) unsigned NOT NULL COMMENT '题目编号',
  `name` varchar(32) DEFAULT NULL,
  `question` varchar(256) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keep_question_question
-- ----------------------------
INSERT INTO `keep_question_question` VALUES ('1', '1', null, '公司专门负责法务工作人员的数量？');
INSERT INTO `keep_question_question` VALUES ('2', '1', null, '公司是否聘请了外部法律顾问？');
INSERT INTO `keep_question_question` VALUES ('3', '1', null, '公司每年在法务方面的支出（含内部法务人员的工资、部门运转费用及外聘法律顾问的服务费）');
INSERT INTO `keep_question_question` VALUES ('4', '1', null, '公司决策层面是否建立了有效的法人治理制度并实际运作，公司重大事务是否群策群力？\r\n');
INSERT INTO `keep_question_question` VALUES ('5', '1', null, '公司日常运作层面是否有章可循，各类合同制度是否为定制？');
INSERT INTO `keep_question_question` VALUES ('6', '1', null, '公司若发生法律纠纷，在解决方式上首选以下哪项？');
INSERT INTO `keep_question_question` VALUES ('7', '1', null, '公司近3年产生纠纷的数量？（不限于诉讼）');
INSERT INTO `keep_question_question` VALUES ('8', '1', null, '公司近3年所产生纠纷的处理结果？');
INSERT INTO `keep_question_question` VALUES ('9', '1', null, '公司近3年所产生纠纷的原因？');
INSERT INTO `keep_question_question` VALUES ('10', '1', null, '您对自己的法务情况是否满意？');

-- ----------------------------
-- Table structure for keep_question_result
-- ----------------------------
DROP TABLE IF EXISTS `keep_question_result`;
CREATE TABLE `keep_question_result` (
  `qid` int(10) unsigned NOT NULL COMMENT '问卷id',
  `id` int(10) unsigned NOT NULL COMMENT '结论id',
  `lpoint` int(3) NOT NULL COMMENT '分档下限',
  `hpoint` int(3) NOT NULL COMMENT '分档上限',
  `topic` varchar(64) NOT NULL,
  `description` varchar(512) NOT NULL,
  `level` int(2) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '该档的数目'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keep_question_result
-- ----------------------------
INSERT INTO `keep_question_result` VALUES ('1', '1', '2', '43', '较差', '贵司的法务水平较为低端，建议贵司能够提升法律意识，更加重视法务建设，避免让潜在纠纷阻碍公司的发展道路。祝颂商祺！', '1', '4');
INSERT INTO `keep_question_result` VALUES ('1', '2', '44', '83', '一般', '贵司的法务水平较为大众化，建议贵司能够更加重视法务建设，切实有效的避免或有风险转变为法律纠纷。祝颂商祺！', '2', '4');
INSERT INTO `keep_question_result` VALUES ('1', '3', '84', '100', '优秀', '\r\n您十分注重公司的法务体系建设，具备完整的法务框架且执行有力有效。希望贵司能够继续提升自己的法务能力。祝颂商祺！', '3', '3');

-- ----------------------------
-- Table structure for keep_web_config
-- ----------------------------
DROP TABLE IF EXISTS `keep_web_config`;
CREATE TABLE `keep_web_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '加载项名称',
  `title` varchar(64) NOT NULL,
  `value` varchar(128) NOT NULL DEFAULT '' COMMENT '加载项值',
  `status` smallint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否加载 默认1加载',
  `space` int(2) unsigned NOT NULL DEFAULT '0' COMMENT '作用域 0全局，1后台，2PC, 3 移动',
  `must` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `remark` varchar(64) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keep_web_config
-- ----------------------------
INSERT INTO `keep_web_config` VALUES ('1', 'web_name', '网站全称', 'Keep官方网站', '1', '0', '1', '1', '网站全名');
INSERT INTO `keep_web_config` VALUES ('2', 'web_url', '网站域名', 'http://keep.io', '1', '0', '0', '1', '网站域名，可不填写');
INSERT INTO `keep_web_config` VALUES ('3', 'admin_title', '后台名称', 'KEEP后台管理系统', '1', '0', '1', '1', null);
INSERT INTO `keep_web_config` VALUES ('4', 'doc_root', '站点根目录', 'H:/PHP_Develop/WWW/keep/public', '1', '0', '0', '0', '站点根目录，不可修改，自动获取');

-- ----------------------------
-- Table structure for keep_web_icon
-- ----------------------------
DROP TABLE IF EXISTS `keep_web_icon`;
CREATE TABLE `keep_web_icon` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `value` varchar(64) NOT NULL,
  `tvalue` varchar(64) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `remark` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keep_web_icon
-- ----------------------------
INSERT INTO `keep_web_icon` VALUES ('1', '主页', 'glyphicon-home', 'glyphicon glyphicon-home', '1', '');
INSERT INTO `keep_web_icon` VALUES ('2', '设置', 'glyphicon-cog', 'glyphicon glyphicon-cog', '1', '');
INSERT INTO `keep_web_icon` VALUES ('3', '用户', 'glyphicon-user', 'glyphicon glyphicon-user', '1', '');
INSERT INTO `keep_web_icon` VALUES ('4', '删除', 'glyphicon-trash', 'glyphicon glyphicon-trash', '1', '');
INSERT INTO `keep_web_icon` VALUES ('5', '关闭/退出', 'glyphicon-off', 'glyphicon glyphicon-off', '1', '');
INSERT INTO `keep_web_icon` VALUES ('6', '锁/密码', 'glyphicon-lock', 'glyphicon glyphicon-lock', '1', '');
INSERT INTO `keep_web_icon` VALUES ('7', '云端', 'glyphicon-cloud', 'glyphicon glyphicon-cloud', '1', '');
INSERT INTO `keep_web_icon` VALUES ('8', '搜索', 'glyphicon-search', 'glyphicon glyphicon-search', '1', '');
INSERT INTO `keep_web_icon` VALUES ('9', '刷新', 'glyphicon-refresh', 'glyphicon glyphicon-refresh', '1', '');
INSERT INTO `keep_web_icon` VALUES ('10', '图片', 'glyphicon-picture', 'glyphicon glyphicon-picture', '1', '');
INSERT INTO `keep_web_icon` VALUES ('11', '分享', 'glyphicon-share-alt', 'glyphicon glyphicon-share-alt', '1', '');
INSERT INTO `keep_web_icon` VALUES ('12', '日历', 'glyphicon-calendar', 'glyphicon glyphicon-calendar', '1', '');
INSERT INTO `keep_web_icon` VALUES ('13', '扳手', 'glyphicon-wrench', 'glyphicon glyphicon-wrench', '1', '');
INSERT INTO `keep_web_icon` VALUES ('14', '磁铁', 'glyphicon-magnet', 'glyphicon glyphicon-magnet', '1', '');
INSERT INTO `keep_web_icon` VALUES ('15', '评论', 'glyphicon-comment', 'glyphicon glyphicon-comment', '1', '');
INSERT INTO `keep_web_icon` VALUES ('16', '全屏', 'glyphicon-resize-full', 'glyphicon glyphicon-resize-full', '1', '');
INSERT INTO `keep_web_icon` VALUES ('17', '窗口化', 'glyphicon-resize-small', 'glyphicon glyphicon-resize-small', '1', '');
INSERT INTO `keep_web_icon` VALUES ('18', '左尖角', 'glyphicon-chevron-left', 'glyphicon glyphicon-chevron-left', '1', '');
INSERT INTO `keep_web_icon` VALUES ('19', '右尖角', 'glyphicon-chevron-right', 'glyphicon glyphicon-chevron-right', '1', '');
INSERT INTO `keep_web_icon` VALUES ('20', '上尖角', 'glyphicon-chevron-up', 'glyphicon glyphicon-chevron-up', '1', '');
INSERT INTO `keep_web_icon` VALUES ('21', '下尖角', 'glyphicon-chevron-down', 'glyphicon glyphicon-chevron-down', '1', '');
INSERT INTO `keep_web_icon` VALUES ('22', '满星标', 'glyphicon-star', 'glyphicon glyphicon-star', '1', '');
INSERT INTO `keep_web_icon` VALUES ('23', '空星标', 'glyphicon-star-empty', 'glyphicon glyphicon-star-empty', '1', '');
INSERT INTO `keep_web_icon` VALUES ('24', '对号', 'glyphicon-ok', 'glyphicon glyphicon-ok', '1', '');
INSERT INTO `keep_web_icon` VALUES ('25', '错号', 'glyphicon-remove', 'glyphicon glyphicon-remove', '1', '');

-- ----------------------------
-- Table structure for keep_wechat_config
-- ----------------------------
DROP TABLE IF EXISTS `keep_wechat_config`;
CREATE TABLE `keep_wechat_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '标识',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '说明',
  `tvalue` varchar(150) NOT NULL DEFAULT '' COMMENT '参数类型',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '类型',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '分组',
  `value` text,
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `typeid` (`typeid`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of keep_wechat_config
-- ----------------------------
INSERT INTO `keep_wechat_config` VALUES ('1', 'ACCESS_TOKEN', '微信ACCESS_TOKEN', '', '', '0', '0', '{\"access_token\":\"adMecI7xJfyyrfS_leI0FjQlvv1dxYGOZrcpC4znmPLV1c1Dhj-R_e7bMBDtKBFx-7u1T51ZotTRDF4cJ8DhwleOq_XC8M2YzVbrs5qFgzgUOSfAHAICG\",\"stop_time\":1497251800}', '0');
