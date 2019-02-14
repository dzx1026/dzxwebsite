/*
 Navicat Premium Data Transfer

 Source Server         : 182.92.82.103
 Source Server Type    : MySQL
 Source Server Version : 50173
 Source Host           : 182.92.82.103
 Source Database       : mmall

 Target Server Type    : MySQL
 Target Server Version : 50173
 File Encoding         : utf-8

 Date: 04/13/2017 22:04:18 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `article`
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `attachedfile_id` int(11) NOT NULL COMMENT '附件id',
  `category_id` int(11) NOT NULL COMMENT '分类id',
  `title` varchar(100) NOT NULL COMMENT '文章标题',
  `subtitle` varchar(100) DEFAULT NULL COMMENT '文章副标题',
  `detail` text COMMENT '文章内容',
  `main_image` varchar(500) COMMENT '主图内容',
  `upload_time` datetime DEFAULT NULL COMMENT '上传时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`) USING BTREE       --使用btree的索引方式
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;   --自增因子，从这个数字开始自增

-- ----------------------------
--  Records of `article`
-- ----------------------------
BEGIN;
INSERT INTO `article` VALUES ('100', '100', '100', '111', '这是一个测试文章','测试','测试内容测试内容测试内容测试内容测试内容', 'http://www.baidu.com','2017-04-13 21:27:06','2017-04-13 21:27:06', '2017-04-13 21:27:06');
COMMIT;


SET FOREIGN_KEY_CHECKS = 1;
