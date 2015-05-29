/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : caodian

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2015-05-29 23:22:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cms_article`
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `link` varchar(255) DEFAULT NULL COMMENT '文章链接',
  `color` varchar(50) DEFAULT NULL COMMENT '标题颜色',
  `image` varchar(255) DEFAULT NULL COMMENT '文章图片',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` varchar(255) DEFAULT NULL COMMENT '描述、摘要',
  `weight` int(11) DEFAULT '0' COMMENT '权重，越大越靠前',
  `weight_date` datetime DEFAULT NULL COMMENT '权重期限',
  `hits` int(11) DEFAULT '0' COMMENT '点击数',
  `posid` varchar(10) DEFAULT NULL COMMENT '推荐位，多选',
  `custom_content_view` varchar(255) DEFAULT NULL COMMENT '自定义内容视图',
  `view_config` text COMMENT '视图配置',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_article_create_by` (`create_by`),
  KEY `cms_article_title` (`title`),
  KEY `cms_article_keywords` (`keywords`),
  KEY `cms_article_del_flag` (`del_flag`),
  KEY `cms_article_weight` (`weight`),
  KEY `cms_article_update_date` (`update_date`),
  KEY `cms_article_category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES ('1', '3', '文章标题标题标题标题', null, 'green', null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('10', '4', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('11', '5', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('12', '5', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('13', '5', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('14', '7', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('15', '7', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('16', '7', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('17', '7', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('18', '8', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('19', '8', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('2', '3', '文章标题标题标题标题', null, 'red', null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('20', '8', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('21', '8', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('22', '9', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('23', '9', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('24', '9', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('25', '9', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('26', '9', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('27', '11', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('28', '11', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('29', '11', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('3', '3', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('30', '11', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('31', '11', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('32', '12', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('33', '12', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('34', '12', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('35', '12', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('36', '12', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('37', '13', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('38', '13', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('39', '13', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('4', '3', '文章标题标题标题标题', null, 'green', null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('40', '13', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('41', '14', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('42', '14', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('43', '14', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('44', '14', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('45', '14', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('46', '15', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('47', '15', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('48', '15', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('49', '16', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('5', '3', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('50', '17', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('51', '17', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('52', '26', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('53', '26', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('6', '3', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('7', '4', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('8', '4', '文章标题标题标题标题', null, 'blue', null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_article` VALUES ('9', '4', '文章标题标题标题标题', null, null, null, '关键字1,关键字2', null, '0', null, '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');

-- ----------------------------
-- Table structure for `cms_article_data`
-- ----------------------------
DROP TABLE IF EXISTS `cms_article_data`;
CREATE TABLE `cms_article_data` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `content` text COMMENT '文章内容',
  `copyfrom` varchar(255) DEFAULT NULL COMMENT '文章来源',
  `relation` varchar(255) DEFAULT NULL COMMENT '相关文章',
  `allow_comment` char(1) DEFAULT NULL COMMENT '是否允许评论',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章详表';

-- ----------------------------
-- Records of cms_article_data
-- ----------------------------
INSERT INTO `cms_article_data` VALUES ('1', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('10', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('11', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('12', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('13', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('14', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('15', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('16', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('17', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('18', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('19', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('2', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('20', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('21', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('22', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('23', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('24', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('25', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('26', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('27', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('28', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('29', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('3', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('30', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('31', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('32', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('33', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('34', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('35', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('36', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('37', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('38', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('39', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('4', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('40', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('41', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('42', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('43', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('44', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('45', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('46', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('47', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('48', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('49', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('5', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('50', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('51', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('52', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('53', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('6', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('7', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('8', '文章内容内容内容内容', '来源', '1,2,3', '1');
INSERT INTO `cms_article_data` VALUES ('9', '文章内容内容内容内容', '来源', '1,2,3', '1');

-- ----------------------------
-- Table structure for `cms_category`
-- ----------------------------
DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE `cms_category` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `site_id` varchar(64) DEFAULT '1' COMMENT '站点编号',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属机构',
  `module` varchar(20) DEFAULT NULL COMMENT '栏目模块',
  `name` varchar(100) NOT NULL COMMENT '栏目名称',
  `image` varchar(255) DEFAULT NULL COMMENT '栏目图片',
  `href` varchar(255) DEFAULT NULL COMMENT '链接',
  `target` varchar(20) DEFAULT NULL COMMENT '目标',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `sort` int(11) DEFAULT '30' COMMENT '排序（升序）',
  `in_menu` char(1) DEFAULT '1' COMMENT '是否在导航中显示',
  `in_list` char(1) DEFAULT '1' COMMENT '是否在分类页中显示列表',
  `show_modes` char(1) DEFAULT '0' COMMENT '展现方式',
  `allow_comment` char(1) DEFAULT NULL COMMENT '是否允许评论',
  `is_audit` char(1) DEFAULT NULL COMMENT '是否需要审核',
  `custom_list_view` varchar(255) DEFAULT NULL COMMENT '自定义列表视图',
  `custom_content_view` varchar(255) DEFAULT NULL COMMENT '自定义内容视图',
  `view_config` text COMMENT '视图配置',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_category_parent_id` (`parent_id`),
  KEY `cms_category_module` (`module`),
  KEY `cms_category_name` (`name`),
  KEY `cms_category_sort` (`sort`),
  KEY `cms_category_del_flag` (`del_flag`),
  KEY `cms_category_office_id` (`office_id`),
  KEY `cms_category_site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of cms_category
-- ----------------------------
INSERT INTO `cms_category` VALUES ('1', '0', '0,', '0', '1', null, '顶级栏目', null, null, null, null, null, '0', '1', '1', '0', '0', '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('10', '1', '0,1,', '1', '4', 'article', '软件介绍', null, null, null, null, null, '20', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('11', '10', '0,1,10,', '1', '4', 'article', '网络工具', null, null, null, null, null, '30', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('12', '10', '0,1,10,', '1', '4', 'article', '浏览工具', null, null, null, null, null, '40', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('13', '10', '0,1,10,', '1', '4', 'article', '浏览辅助', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('14', '10', '0,1,10,', '1', '4', 'article', '网络优化', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('15', '10', '0,1,10,', '1', '4', 'article', '邮件处理', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('16', '10', '0,1,10,', '1', '4', 'article', '下载工具', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('17', '10', '0,1,10,', '1', '4', 'article', '搜索工具', null, null, null, null, null, '50', '1', '1', '2', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('18', '1', '0,1,', '1', '5', 'link', '友情链接', null, null, null, null, null, '90', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('19', '18', '0,1,18,', '1', '5', 'link', '常用网站', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('2', '1', '0,1,', '1', '3', 'article', '组织机构', null, null, null, null, null, '10', '1', '1', '0', '0', '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('20', '18', '0,1,18,', '1', '5', 'link', '门户网站', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('21', '18', '0,1,18,', '1', '5', 'link', '购物网站', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('22', '18', '0,1,18,', '1', '5', 'link', '交友社区', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('23', '18', '0,1,18,', '1', '5', 'link', '音乐视频', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('24', '1', '0,1,', '1', '6', null, '百度一下', null, 'http://www.baidu.com', '_blank', null, null, '90', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('25', '1', '0,1,', '1', '6', null, '全文检索', null, '/search', null, null, null, '90', '0', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('26', '1', '0,1,', '2', '6', 'article', '测试栏目', null, null, null, null, null, '90', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('27', '1', '0,1,', '1', '6', null, '公共留言', null, '/guestbook', null, null, null, '90', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('3', '2', '0,1,2,', '1', '3', 'article', '网站简介', null, null, null, null, null, '30', '1', '1', '0', '0', '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('4', '2', '0,1,2,', '1', '3', 'article', '内部机构', null, null, null, null, null, '40', '1', '1', '0', '0', '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('5', '2', '0,1,2,', '1', '3', 'article', '地方机构', null, null, null, null, null, '50', '1', '1', '0', '0', '1', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('6', '1', '0,1,', '1', '3', 'article', '质量检验', null, null, null, null, null, '20', '1', '1', '1', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('7', '6', '0,1,6,', '1', '3', 'article', '产品质量', null, null, null, null, null, '30', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('8', '6', '0,1,6,', '1', '3', 'article', '技术质量', null, null, null, null, null, '40', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_category` VALUES ('9', '6', '0,1,6,', '1', '3', 'article', '工程质量', null, null, null, null, null, '50', '1', '1', '0', '1', '0', null, null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');

-- ----------------------------
-- Table structure for `cms_comment`
-- ----------------------------
DROP TABLE IF EXISTS `cms_comment`;
CREATE TABLE `cms_comment` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `content_id` varchar(64) NOT NULL COMMENT '栏目内容的编号',
  `title` varchar(255) DEFAULT NULL COMMENT '栏目内容的标题',
  `content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `name` varchar(100) DEFAULT NULL COMMENT '评论姓名',
  `ip` varchar(100) DEFAULT NULL COMMENT '评论IP',
  `create_date` datetime NOT NULL COMMENT '评论时间',
  `audit_user_id` varchar(64) DEFAULT NULL COMMENT '审核人',
  `audit_date` datetime DEFAULT NULL COMMENT '审核时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_comment_category_id` (`category_id`),
  KEY `cms_comment_content_id` (`content_id`),
  KEY `cms_comment_status` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';

-- ----------------------------
-- Records of cms_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `cms_guestbook`
-- ----------------------------
DROP TABLE IF EXISTS `cms_guestbook`;
CREATE TABLE `cms_guestbook` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) NOT NULL COMMENT '留言分类',
  `content` varchar(255) NOT NULL COMMENT '留言内容',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(100) NOT NULL COMMENT '邮箱',
  `phone` varchar(100) NOT NULL COMMENT '电话',
  `workunit` varchar(100) NOT NULL COMMENT '单位',
  `ip` varchar(100) NOT NULL COMMENT 'IP',
  `create_date` datetime NOT NULL COMMENT '留言时间',
  `re_user_id` varchar(64) DEFAULT NULL COMMENT '回复人',
  `re_date` datetime DEFAULT NULL COMMENT '回复时间',
  `re_content` varchar(100) DEFAULT NULL COMMENT '回复内容',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_guestbook_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言板';

-- ----------------------------
-- Records of cms_guestbook
-- ----------------------------

-- ----------------------------
-- Table structure for `cms_link`
-- ----------------------------
DROP TABLE IF EXISTS `cms_link`;
CREATE TABLE `cms_link` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `title` varchar(255) NOT NULL COMMENT '链接名称',
  `color` varchar(50) DEFAULT NULL COMMENT '标题颜色',
  `image` varchar(255) DEFAULT NULL COMMENT '链接图片',
  `href` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `weight` int(11) DEFAULT '0' COMMENT '权重，越大越靠前',
  `weight_date` datetime DEFAULT NULL COMMENT '权重期限',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_link_category_id` (`category_id`),
  KEY `cms_link_title` (`title`),
  KEY `cms_link_del_flag` (`del_flag`),
  KEY `cms_link_weight` (`weight`),
  KEY `cms_link_create_by` (`create_by`),
  KEY `cms_link_update_date` (`update_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='友情链接';

-- ----------------------------
-- Records of cms_link
-- ----------------------------
INSERT INTO `cms_link` VALUES ('1', '19', 'JeeSite', null, null, 'http://thinkgem.github.com/jeesite', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('10', '22', '58同城', null, null, 'http://www.58.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('11', '23', '视频大全', null, null, 'http://v.360.cn/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('12', '23', '凤凰网', null, null, 'http://www.ifeng.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('2', '19', 'ThinkGem', null, null, 'http://thinkgem.iteye.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('3', '19', '百度一下', null, null, 'http://www.baidu.com', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('4', '19', '谷歌搜索', null, null, 'http://www.google.com', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('5', '20', '新浪网', null, null, 'http://www.sina.com.cn', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('6', '20', '腾讯网', null, null, 'http://www.qq.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('7', '21', '淘宝网', null, null, 'http://www.taobao.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('8', '21', '新华网', null, null, 'http://www.xinhuanet.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_link` VALUES ('9', '22', '赶集网', null, null, 'http://www.ganji.com/', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');

-- ----------------------------
-- Table structure for `cms_site`
-- ----------------------------
DROP TABLE IF EXISTS `cms_site`;
CREATE TABLE `cms_site` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(100) NOT NULL COMMENT '站点名称',
  `title` varchar(100) NOT NULL COMMENT '站点标题',
  `logo` varchar(255) DEFAULT NULL COMMENT '站点Logo',
  `domain` varchar(255) DEFAULT NULL COMMENT '站点域名',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `theme` varchar(255) DEFAULT 'default' COMMENT '主题',
  `copyright` text COMMENT '版权信息',
  `custom_index_view` varchar(255) DEFAULT NULL COMMENT '自定义站点首页视图',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_site_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='站点表';

-- ----------------------------
-- Records of cms_site
-- ----------------------------
INSERT INTO `cms_site` VALUES ('1', '默认站点', 'JeeSite Web', null, null, 'JeeSite', 'JeeSite', 'basic', 'Copyright &copy; 2012-2013 <a href=\'http://thinkgem.iteye.com\' target=\'_blank\'>ThinkGem</a> - Powered By <a href=\'https://github.com/thinkgem/jeesite\' target=\'_blank\'>JeeSite</a> V1.0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `cms_site` VALUES ('2', '子站点测试', 'JeeSite Subsite', null, null, 'JeeSite subsite', 'JeeSite subsite', 'basic', 'Copyright &copy; 2012-2013 <a href=\'http://thinkgem.iteye.com\' target=\'_blank\'>ThinkGem</a> - Powered By <a href=\'https://github.com/thinkgem/jeesite\' target=\'_blank\'>JeeSite</a> V1.0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');

-- ----------------------------
-- Table structure for `gen_scheme`
-- ----------------------------
DROP TABLE IF EXISTS `gen_scheme`;
CREATE TABLE `gen_scheme` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) DEFAULT NULL COMMENT '分类',
  `package_name` varchar(500) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `sub_module_name` varchar(30) DEFAULT NULL COMMENT '生成子模块名',
  `function_name` varchar(500) DEFAULT NULL COMMENT '生成功能名',
  `function_name_simple` varchar(100) DEFAULT NULL COMMENT '生成功能名（简写）',
  `function_author` varchar(100) DEFAULT NULL COMMENT '生成功能作者',
  `gen_table_id` varchar(200) DEFAULT NULL COMMENT '生成表编号',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_scheme_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='生成方案';

-- ----------------------------
-- Records of gen_scheme
-- ----------------------------
INSERT INTO `gen_scheme` VALUES ('059e4edfc12e42838d714234cfba9e49', 'api.like', 'curd', 'com.gome.trend.modules', 'api', '', '点赞', '点赞', 'caoxiaobing', '76827f6a31fd41fc8fbb4701302658be', '1', '2015-05-28 13:51:38', '1', '2015-05-28 13:53:19', '', '0');
INSERT INTO `gen_scheme` VALUES ('10df8ccf5a4749cfacb0ff5cff8a0485', 'admin.tag', 'curd', 'com.gome.trend.modules', 'content', '', '标签', '标签', '标签', 'e0a9247de2a74b0283ba849d17be132b', '1', '2015-05-29 15:38:00', '1', '2015-05-29 15:38:00', '', '0');
INSERT INTO `gen_scheme` VALUES ('145efef68b3342bc8b689fccbf4a857d', 'api comment', 'curd', 'com.gome.trend.modules', 'api', '', '评论', '评论', 'caoxiaobing', 'e63bfd5d847b47fdbe053bd6e8018ae6', '1', '2015-05-28 13:50:41', '1', '2015-05-28 13:50:41', '', '0');
INSERT INTO `gen_scheme` VALUES ('35a13dc260284a728a270db3f382664b', '树结构', 'treeTable', 'com.thinkgem.jeesite.modules', 'test', null, '树结构生成', '树结构', 'ThinkGem', 'f6e4dafaa72f4c509636484715f33a96', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_scheme` VALUES ('9b815a0eb51d4851aa4e068f36b24c48', 'api tag', 'curd', 'com.gome.trend.modules', 'api', '', '标签', '标签', 'caoxiaobing', 'e0a9247de2a74b0283ba849d17be132b', '1', '2015-05-28 13:54:07', '1', '2015-05-28 13:54:07', '', '0');
INSERT INTO `gen_scheme` VALUES ('9c9de9db6da743bb899036c6546061ac', '单表', 'curd', 'com.thinkgem.jeesite.modules', 'test', null, '单表生成', '单表', 'ThinkGem', 'aef6f1fc948f4c9ab1c1b780bc471cc2', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_scheme` VALUES ('a84ae3799ca340f5ac5f71f0dd9d4bb4', 'api photo', 'curd', 'com.gome.trend.modules', 'api', '', '接口', '图片', 'caoxiaobing', '5327b5d64ef7451ebfb04b07ba31b17f', '1', '2015-05-28 12:14:17', '1', '2015-05-28 12:18:48', '', '0');
INSERT INTO `gen_scheme` VALUES ('d5a54b2f29fc4bbea6794b2a0b1a50b0', 'admin.comment', 'curd', 'com.gome.trend.modules', 'content', '', '评论', '评论', '评论', 'e63bfd5d847b47fdbe053bd6e8018ae6', '1', '2015-05-29 17:52:40', '1', '2015-05-29 17:55:32', '', '0');
INSERT INTO `gen_scheme` VALUES ('e6d905fd236b46d1af581dd32bdfb3b0', '主子表', 'curd_many', 'com.thinkgem.jeesite.modules', 'test', null, '主子表生成', '主子表', 'ThinkGem', '43d6d5acffa14c258340ce6765e46c6f', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_scheme` VALUES ('f611394909ca49d596ff632fcf8c1226', '图片', 'curd', 'com.gome.trend.modules', 'content', '', '图片管理', '图片', 'caoxiaobing', '5327b5d64ef7451ebfb04b07ba31b17f', '1', '2015-05-26 11:02:44', '1', '2015-05-28 10:49:40', '', '0');

-- ----------------------------
-- Table structure for `gen_table`
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) DEFAULT NULL COMMENT '描述',
  `class_name` varchar(100) DEFAULT NULL COMMENT '实体类名称',
  `parent_table` varchar(200) DEFAULT NULL COMMENT '关联父表',
  `parent_table_fk` varchar(100) DEFAULT NULL COMMENT '关联父表外键',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_table_name` (`name`),
  KEY `gen_table_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('00480e9e4c604d01aeab30411fd7e261', 'go_user', 'go_user', 'GoUser', '', '', '1', '2015-05-26 10:58:40', '1', '2015-05-26 10:58:40', '', '0');
INSERT INTO `gen_table` VALUES ('43d6d5acffa14c258340ce6765e46c6f', 'test_data_main', '业务数据表', 'TestDataMain', null, null, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table` VALUES ('5327b5d64ef7451ebfb04b07ba31b17f', 'go_photo', 'go_photo', 'GoPhoto', '', '', '1', '2015-05-26 10:58:07', '1', '2015-05-26 10:58:07', '', '0');
INSERT INTO `gen_table` VALUES ('6e05c389f3c6415ea34e55e9dfb28934', 'test_data_child', '业务数据子表', 'TestDataChild', 'test_data_main', 'test_data_main_id', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table` VALUES ('76827f6a31fd41fc8fbb4701302658be', 'go_like', 'go_like', 'GoLike', '', '', '1', '2015-05-26 10:59:28', '1', '2015-05-26 10:59:28', '', '0');
INSERT INTO `gen_table` VALUES ('aef6f1fc948f4c9ab1c1b780bc471cc2', 'test_data', '业务数据表', 'TestData', null, null, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table` VALUES ('e0a9247de2a74b0283ba849d17be132b', 'go_tag', 'go_tag', 'GoTag', '', '', '1', '2015-05-26 10:59:04', '1', '2015-05-26 10:59:04', '', '0');
INSERT INTO `gen_table` VALUES ('e63bfd5d847b47fdbe053bd6e8018ae6', 'go_comment', 'go_comment', 'GoComment', '', '', '1', '2015-05-26 10:57:39', '1', '2015-05-26 10:57:39', '', '0');
INSERT INTO `gen_table` VALUES ('f6e4dafaa72f4c509636484715f33a96', 'test_tree', '树结构表', 'TestTree', null, null, '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');

-- ----------------------------
-- Table structure for `gen_table_column`
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `gen_table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) DEFAULT NULL COMMENT '描述',
  `jdbc_type` varchar(100) DEFAULT NULL COMMENT '列的数据类型的字节长度',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键',
  `is_null` char(1) DEFAULT NULL COMMENT '是否可为空',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段',
  `query_type` varchar(200) DEFAULT NULL COMMENT '查询方式（等于、不等于、大于、小于、范围、左LIKE、右LIKE、左右LIKE）',
  `show_type` varchar(200) DEFAULT NULL COMMENT '字段生成方案（文本框、文本域、下拉框、复选框、单选框、字典选择、人员选择、部门选择、区域选择）',
  `dict_type` varchar(200) DEFAULT NULL COMMENT '字典类型',
  `settings` varchar(2000) DEFAULT NULL COMMENT '其它设置（扩展字段JSON）',
  `sort` decimal(10,0) DEFAULT NULL COMMENT '排序（升序）',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_table_column_table_id` (`gen_table_id`),
  KEY `gen_table_column_name` (`name`),
  KEY `gen_table_column_sort` (`sort`),
  KEY `gen_table_column_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('00d2d60553d547138fd8d5ccabdb8c6c', 'e0a9247de2a74b0283ba849d17be132b', 'update_by', '更新者', 'varchar(64)', 'com.thinkgem.jeesite.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '120', '1', '2015-05-26 10:59:07', '1', '2015-05-26 10:59:07', null, '0');
INSERT INTO `gen_table_column` VALUES ('0902a0cb3e8f434280c20e9d771d0658', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'sex', '性别', 'char(1)', 'String', 'sex', '0', '1', '1', '1', '1', '1', '=', 'radiobox', 'sex', null, '6', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('0aedf11543094d898b33e282bec280d1', 'e63bfd5d847b47fdbe053bd6e8018ae6', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', null, '100', '1', '2015-05-26 10:57:40', '1', '2015-05-26 10:57:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('0ea7bb699d434dee886353a11c12cf2e', 'e63bfd5d847b47fdbe053bd6e8018ae6', 'status', '状态', 'tinyint(1)', 'String', 'status', '0', '0', '0', '1', '0', '0', '=', 'radiobox', '', null, '30', '1', '2015-05-26 10:57:39', '1', '2015-05-26 10:57:39', null, '0');
INSERT INTO `gen_table_column` VALUES ('103fc05c88ff40639875c2111881996a', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'create_date', '创建时间', 'timestamp(6)', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', null, null, '9', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('11c91717626949e18e0355ba57908f08', 'e63bfd5d847b47fdbe053bd6e8018ae6', 'reply_uid', '回复的用户id', 'int(11)', 'String', 'replyUid', '0', '0', '0', '0', '0', '0', '=', 'input', '', null, '60', '1', '2015-05-26 10:57:39', '1', '2015-05-26 10:57:39', null, '0');
INSERT INTO `gen_table_column` VALUES ('12fa38dd986e41908f7fefa5839d1220', '6e05c389f3c6415ea34e55e9dfb28934', 'create_by', '创建者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', null, null, '4', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('131712cb55e440eaa815648f53a1da26', '5327b5d64ef7451ebfb04b07ba31b17f', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', '', null, '120', '1', '2015-05-26 10:58:07', '1', '2015-05-26 10:58:07', null, '0');
INSERT INTO `gen_table_column` VALUES ('15051b314b764815ba2521084db65a2d', 'e63bfd5d847b47fdbe053bd6e8018ae6', 'reply_comment_id', '回复评论的id', 'int(11)', 'String', 'replyCommentId', '0', '0', '0', '0', '0', '0', '=', 'input', '', null, '50', '1', '2015-05-26 10:57:39', '1', '2015-05-26 10:57:39', null, '0');
INSERT INTO `gen_table_column` VALUES ('1664ceb1173b47f39bd0f8e4a1df0fac', '5327b5d64ef7451ebfb04b07ba31b17f', 'create_by', '创建者', 'varchar(64)', 'com.thinkgem.jeesite.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', null, '90', '1', '2015-05-26 10:58:07', '1', '2015-05-26 10:58:07', null, '0');
INSERT INTO `gen_table_column` VALUES ('1809a35e992844108b1114bf88fef025', 'e0a9247de2a74b0283ba849d17be132b', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', null, '110', '1', '2015-05-26 10:59:07', '1', '2015-05-26 10:59:07', null, '0');
INSERT INTO `gen_table_column` VALUES ('195ee9241f954d008fe01625f4adbfef', 'f6e4dafaa72f4c509636484715f33a96', 'create_by', '创建者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', null, null, '6', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('19c6478b8ff54c60910c2e4fc3d27503', '43d6d5acffa14c258340ce6765e46c6f', 'id', '编号', 'varchar2(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', null, null, '1', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('1ac6562f753d4e599693840651ab2bf7', '43d6d5acffa14c258340ce6765e46c6f', 'in_date', '加入日期', 'date(7)', 'java.util.Date', 'inDate', '0', '1', '1', '1', '0', '0', '=', 'dateselect', null, null, '7', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('1b8eb55f65284fa6b0a5879b6d8ad3ec', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'in_date', '加入日期', 'date(7)', 'java.util.Date', 'inDate', '0', '1', '1', '1', '0', '1', 'between', 'dateselect', null, null, '7', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('1d5ca4d114be41e99f8dc42a682ba609', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'user_id', '归属用户', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'user.id|name', '0', '1', '1', '1', '1', '1', '=', 'userselect', null, null, '2', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('21756504ffdc487eb167a823f89c0c06', '43d6d5acffa14c258340ce6765e46c6f', 'update_by', '更新者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', null, null, '10', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('21aa792d458c45a6be88990c7b3eca2b', 'e63bfd5d847b47fdbe053bd6e8018ae6', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '130', '1', '2015-05-26 10:57:40', '1', '2015-05-26 10:57:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('24bbdc0a555e4412a106ab1c5f03008e', 'f6e4dafaa72f4c509636484715f33a96', 'parent_ids', '所有父级编号', 'varchar2(2000)', 'String', 'parentIds', '0', '0', '1', '1', '0', '0', 'like', 'input', null, null, '3', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('285917eba86b4c27a1791505016bc1d2', '5327b5d64ef7451ebfb04b07ba31b17f', 'intro', '图片描述', 'text', 'String', 'intro', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '20', '1', '2015-05-26 10:58:07', '1', '2015-05-26 10:58:07', null, '0');
INSERT INTO `gen_table_column` VALUES ('2ae0d9079ca34044b7601d13b8fb8517', 'e63bfd5d847b47fdbe053bd6e8018ae6', 'comment_content', '评论内容', 'text', 'String', 'commentContent', '0', '0', '1', '1', '0', '0', '=', 'textarea', '', null, '20', '1', '2015-05-26 10:57:39', '1', '2015-05-26 10:57:39', null, '0');
INSERT INTO `gen_table_column` VALUES ('2e2c24004d714af2858331442de8600c', 'e0a9247de2a74b0283ba849d17be132b', 'del_flag', '删除标记', 'tinyint(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '150', '1', '2015-05-26 10:59:07', '1', '2015-05-26 10:59:07', null, '0');
INSERT INTO `gen_table_column` VALUES ('2f96df01a9a14592b657c9b69cf0f695', '5327b5d64ef7451ebfb04b07ba31b17f', 'uid', '发布用户id', 'varchar(64)', 'String', 'uid', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '60', '1', '2015-05-26 10:58:07', '1', '2015-05-26 10:58:07', null, '0');
INSERT INTO `gen_table_column` VALUES ('30548723e1ce470ea497506c4bcac723', 'e0a9247de2a74b0283ba849d17be132b', 'tag_y', '标签y轴', 'tinyint(1)', 'String', 'tagY', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '40', '1', '2015-05-26 10:59:04', '1', '2015-05-26 10:59:04', null, '0');
INSERT INTO `gen_table_column` VALUES ('33152ce420904594b3eac796a27f0560', '6e05c389f3c6415ea34e55e9dfb28934', 'id', '编号', 'varchar2(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', null, null, '1', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('35af241859624a01917ab64c3f4f0813', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'del_flag', '删除标记（0：正常；1：删除）', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '13', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('37277dfc84ab49b2b9a450eae32dc5c8', 'e63bfd5d847b47fdbe053bd6e8018ae6', 'post_uid', '发布用户', 'varchar(64)', 'String', 'postUid', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '70', '1', '2015-05-26 10:57:39', '1', '2015-05-26 10:57:39', null, '0');
INSERT INTO `gen_table_column` VALUES ('38c775cfb8c34d88bbb81856992e1412', '76827f6a31fd41fc8fbb4701302658be', 'time_create', '创建时间', 'datetime', 'java.util.Date', 'timeCreate', '0', '0', '1', '1', '0', '0', '=', 'dateselect', '', null, '30', '1', '2015-05-26 10:59:28', '1', '2015-05-26 10:59:28', null, '0');
INSERT INTO `gen_table_column` VALUES ('398b4a03f06940bfb979ca574e1911e3', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'create_by', '创建者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', null, null, '8', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('3a7cf23ae48a4c849ceb03feffc7a524', '43d6d5acffa14c258340ce6765e46c6f', 'area_id', '归属区域', 'nvarchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.Area', 'area.id|name', '0', '1', '1', '1', '0', '0', '=', 'areaselect', null, null, '4', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('3d9c32865bb44e85af73381df0ffbf3d', '43d6d5acffa14c258340ce6765e46c6f', 'update_date', '更新时间', 'timestamp(6)', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', null, null, '11', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('3fd00ba46adc4afe89d779a9e27170fa', 'e0a9247de2a74b0283ba849d17be132b', 'productid', '国美商品productId', 'varchar(64)', 'String', 'productid', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '80', '1', '2015-05-26 10:59:06', '1', '2015-05-26 10:59:06', null, '0');
INSERT INTO `gen_table_column` VALUES ('407314bf63534dc7a6620ce2f9624b2c', '76827f6a31fd41fc8fbb4701302658be', 'photo_id', '图片id', 'varchar(64)', 'String', 'photoId', '1', '0', '1', '1', '0', '0', '=', 'input', '', null, '10', '1', '2015-05-26 10:59:28', '1', '2015-05-26 10:59:28', null, '0');
INSERT INTO `gen_table_column` VALUES ('416c76d2019b4f76a96d8dc3a8faf84c', 'f6e4dafaa72f4c509636484715f33a96', 'update_date', '更新时间', 'timestamp(6)', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', null, null, '9', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('4576ae58445445bfbfa70656983942c5', 'e0a9247de2a74b0283ba849d17be132b', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '140', '1', '2015-05-26 10:59:07', '1', '2015-05-26 10:59:07', null, '0');
INSERT INTO `gen_table_column` VALUES ('46e6d8283270493687085d29efdecb05', 'f6e4dafaa72f4c509636484715f33a96', 'del_flag', '删除标记（0：正常；1：删除）', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '11', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('47a7f17cf9454da7b722b8a27e46adc1', '5327b5d64ef7451ebfb04b07ba31b17f', 'height', '图片高度', 'smallint(6)', 'String', 'height', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '40', '1', '2015-05-26 10:58:07', '1', '2015-05-26 10:58:07', null, '0');
INSERT INTO `gen_table_column` VALUES ('4864c164269a495288e2976e7f9e2c49', 'e63bfd5d847b47fdbe053bd6e8018ae6', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', '', null, '120', '1', '2015-05-26 10:57:40', '1', '2015-05-26 10:57:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('4a0a1fff86ca46519477d66b82e01991', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'name', '名称', 'nvarchar2(100)', 'String', 'name', '0', '1', '1', '1', '1', '1', 'like', 'input', null, null, '5', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('4c8ef12cb6924b9ba44048ba9913150b', '43d6d5acffa14c258340ce6765e46c6f', 'create_date', '创建时间', 'timestamp(6)', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', null, null, '9', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('53d65a3d306d4fac9e561db9d3c66912', '6e05c389f3c6415ea34e55e9dfb28934', 'del_flag', '删除标记（0：正常；1：删除）', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '9', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('56fa71c0bd7e4132931874e548dc9ba5', '6e05c389f3c6415ea34e55e9dfb28934', 'update_by', '更新者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', null, null, '6', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('5a4a1933c9c844fdba99de043dc8205e', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'update_by', '更新者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', null, null, '10', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('5ab38a3dfcb84593be5c546b1fd4c440', '5327b5d64ef7451ebfb04b07ba31b17f', 'update_by', '更新者', 'varchar(64)', 'com.thinkgem.jeesite.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '110', '1', '2015-05-26 10:58:07', '1', '2015-05-26 10:58:07', null, '0');
INSERT INTO `gen_table_column` VALUES ('5e5c69bd3eaa4dcc9743f361f3771c08', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'id', '编号', 'varchar2(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', null, null, '1', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('633f5a49ec974c099158e7b3e6bfa930', 'f6e4dafaa72f4c509636484715f33a96', 'name', '名称', 'nvarchar2(100)', 'String', 'name', '0', '0', '1', '1', '1', '1', 'like', 'input', null, null, '4', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('652491500f2641ffa7caf95a93e64d34', '6e05c389f3c6415ea34e55e9dfb28934', 'update_date', '更新时间', 'timestamp(6)', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', null, null, '7', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('6763ff6dc7cd4c668e76cf9b697d3ff6', 'f6e4dafaa72f4c509636484715f33a96', 'sort', '排序', 'number(10)', 'Integer', 'sort', '0', '0', '1', '1', '1', '0', '=', 'input', null, null, '5', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('67d0331f809a48ee825602659f0778e8', '43d6d5acffa14c258340ce6765e46c6f', 'name', '名称', 'nvarchar2(100)', 'String', 'name', '0', '1', '1', '1', '1', '1', 'like', 'input', null, null, '5', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('68345713bef3445c906f70e68f55de38', '6e05c389f3c6415ea34e55e9dfb28934', 'test_data_main_id', '业务主表', 'varchar2(64)', 'String', 'testDataMain.id', '0', '1', '1', '1', '0', '0', '=', 'input', null, null, '2', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('68393e2279b347709ef59066d5bec2db', 'e63bfd5d847b47fdbe053bd6e8018ae6', 'update_by', '更新者', 'varchar(64)', 'com.thinkgem.jeesite.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '110', '1', '2015-05-26 10:57:40', '1', '2015-05-26 10:57:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('69b8388e65fd43f7bfab86e777f4f328', 'e0a9247de2a74b0283ba849d17be132b', 'tag_id', '标签id', 'varchar(64)', 'String', 'tagId', '1', '0', '1', '1', '0', '0', '=', 'input', '', null, '10', '1', '2015-05-26 10:59:04', '1', '2015-05-26 10:59:04', null, '0');
INSERT INTO `gen_table_column` VALUES ('71ea4bc10d274911b405f3165fc1bb1a', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'area_id', '归属区域', 'nvarchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.Area', 'area.id|name', '0', '1', '1', '1', '1', '1', '=', 'areaselect', null, null, '4', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('74aad4649b6840babae96e8250a524dd', 'e0a9247de2a74b0283ba849d17be132b', 'create_by', '创建者', 'varchar(64)', 'com.thinkgem.jeesite.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', null, '100', '1', '2015-05-26 10:59:07', '1', '2015-05-26 10:59:07', null, '0');
INSERT INTO `gen_table_column` VALUES ('76fdc3a40d314e6ebc8f6b0f73043cc7', '5327b5d64ef7451ebfb04b07ba31b17f', 'status', '图片状态，1，正常，0异常', 'tinyint(1)', 'String', 'status', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '80', '1', '2015-05-26 10:58:07', '1', '2015-05-26 10:58:07', null, '0');
INSERT INTO `gen_table_column` VALUES ('7ca1a1a0cc6947c789cde42a4f83a95f', '5327b5d64ef7451ebfb04b07ba31b17f', 'color', '图片颜色值', 'smallint(6)', 'String', 'color', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '70', '1', '2015-05-26 10:58:07', '1', '2015-05-26 10:58:07', null, '0');
INSERT INTO `gen_table_column` VALUES ('7f871058d94c4d9a89084be7c9ce806d', '6e05c389f3c6415ea34e55e9dfb28934', 'remarks', '备注信息', 'nvarchar2(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'input', null, null, '8', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('83d4f1252f6548adabd4acf2db40fc1e', 'e0a9247de2a74b0283ba849d17be132b', 'tag_type', '标记类型', 'enum(\'text\',\'product\')', 'String', 'tagType', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '50', '1', '2015-05-26 10:59:04', '1', '2015-05-26 10:59:04', null, '0');
INSERT INTO `gen_table_column` VALUES ('8b48774cfe184913b8b5eb17639cf12d', '43d6d5acffa14c258340ce6765e46c6f', 'create_by', '创建者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', null, null, '8', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('8b7cf0525519474ebe1de9e587eb7067', '6e05c389f3c6415ea34e55e9dfb28934', 'create_date', '创建时间', 'timestamp(6)', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', null, null, '5', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('8b9de88df53e485d8ef461c4b1824bc1', '43d6d5acffa14c258340ce6765e46c6f', 'user_id', '归属用户', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'user.id|name', '0', '1', '1', '1', '1', '1', '=', 'userselect', null, null, '2', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('8da38dbe5fe54e9bb1f9682c27fbf403', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'remarks', '备注信息', 'nvarchar2(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', null, null, '12', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('8ee4231f9ddb404e9399485d42afc7d0', 'e63bfd5d847b47fdbe053bd6e8018ae6', 'create_by', '创建者', 'varchar(64)', 'com.thinkgem.jeesite.modules.sys.entity.User', 'createBy.id', '0', '0', '1', '0', '0', '0', '=', 'input', '', null, '90', '1', '2015-05-26 10:57:39', '1', '2015-05-26 10:57:39', null, '0');
INSERT INTO `gen_table_column` VALUES ('92481c16a0b94b0e8bba16c3c54eb1e4', 'f6e4dafaa72f4c509636484715f33a96', 'create_date', '创建时间', 'timestamp(6)', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', null, null, '7', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('93929cbdd95f43678b50c5deab4e4bdb', 'e63bfd5d847b47fdbe053bd6e8018ae6', 'comment_id', 'comment_id', 'varchar(64)', 'String', 'commentId', '1', '0', '0', '0', '0', '0', '=', 'input', '', null, '10', '1', '2015-05-26 10:57:39', '1', '2015-05-26 10:57:39', null, '0');
INSERT INTO `gen_table_column` VALUES ('96ddd79ef22d4886b04a5515e8eb8b19', 'e0a9247de2a74b0283ba849d17be132b', 'photo_id', '图片id', 'varchar(64)', 'String', 'photoId', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '20', '1', '2015-05-26 10:59:04', '1', '2015-05-26 10:59:04', null, '0');
INSERT INTO `gen_table_column` VALUES ('9a012c1d2f934dbf996679adb7cc827a', 'f6e4dafaa72f4c509636484715f33a96', 'parent_id', '父级编号', 'varchar2(64)', 'This', 'parent.id|name', '0', '0', '1', '1', '0', '0', '=', 'treeselect', null, null, '2', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('9d14d6c97de544e68d97071103aa4ebf', 'e63bfd5d847b47fdbe053bd6e8018ae6', 'is_reply', '是否回复', 'tinyint(1)', 'String', 'isReply', '0', '0', '0', '0', '0', '0', '=', 'input', '', null, '40', '1', '2015-05-26 10:57:39', '1', '2015-05-26 10:57:39', null, '0');
INSERT INTO `gen_table_column` VALUES ('ad3bf0d4b44b4528a5211a66af88f322', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'office_id', '归属部门', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.Office', 'office.id|name', '0', '1', '1', '1', '1', '1', '=', 'officeselect', null, null, '3', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('b2c557a963c94f79bb5b09db3b142368', '5327b5d64ef7451ebfb04b07ba31b17f', 'photo_path', '图片地址', 'varchar(255)', 'String', 'photoPath', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '50', '1', '2015-05-26 10:58:07', '1', '2015-05-26 10:58:07', null, '0');
INSERT INTO `gen_table_column` VALUES ('bb1256a8d1b741f6936d8fed06f45eed', 'f6e4dafaa72f4c509636484715f33a96', 'update_by', '更新者', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.User', 'updateBy.id', '0', '0', '1', '1', '0', '0', '=', 'input', null, null, '8', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('bd836b84b7804ec88487787b738f6809', 'e0a9247de2a74b0283ba849d17be132b', 'tag_x', '标签x', 'tinyint(1)', 'String', 'tagX', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '30', '1', '2015-05-26 10:59:04', '1', '2015-05-26 10:59:04', null, '0');
INSERT INTO `gen_table_column` VALUES ('bfb75cd400f34d97ae2d4e3b79017e69', 'e0a9247de2a74b0283ba849d17be132b', 'skuid', '国美商品sku', 'varchar(64)', 'String', 'skuid', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '70', '1', '2015-05-26 10:59:06', '1', '2015-05-26 10:59:06', null, '0');
INSERT INTO `gen_table_column` VALUES ('c47111d255fd4ac9a630d8b832dbb7ef', '5327b5d64ef7451ebfb04b07ba31b17f', 'create_date', '创建时间', 'datetime', 'java.util.Date', 'createDate', '0', '0', '1', '0', '0', '0', '=', 'dateselect', '', null, '100', '1', '2015-05-26 10:58:07', '1', '2015-05-26 10:58:07', null, '0');
INSERT INTO `gen_table_column` VALUES ('ca68a2d403f0449cbaa1d54198c6f350', '43d6d5acffa14c258340ce6765e46c6f', 'office_id', '归属部门', 'varchar2(64)', 'com.thinkgem.jeesite.modules.modules.sys.entity.Office', 'office.id|name', '0', '1', '1', '1', '0', '0', '=', 'officeselect', null, null, '3', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('cb9c0ec3da26432d9cbac05ede0fd1d0', '43d6d5acffa14c258340ce6765e46c6f', 'remarks', '备注信息', 'nvarchar2(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', null, null, '12', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('cbbc935108124153b49a2dda034a1de1', 'e0a9247de2a74b0283ba849d17be132b', 'status', '标签状态', 'tinyint(1)', 'String', 'status', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '90', '1', '2015-05-26 10:59:07', '1', '2015-05-26 10:59:07', null, '0');
INSERT INTO `gen_table_column` VALUES ('ceca3a2a624d4aad9b04ff4a8ef594e0', '5327b5d64ef7451ebfb04b07ba31b17f', 'del_flag', '删除标记', 'tinyint(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '140', '1', '2015-05-26 10:58:07', '1', '2015-05-26 10:58:07', null, '0');
INSERT INTO `gen_table_column` VALUES ('cfcfa06ea61749c9b4c4dbc507e0e580', 'f6e4dafaa72f4c509636484715f33a96', 'id', '编号', 'varchar2(64)', 'String', 'id', '1', '0', '1', '0', '0', '0', '=', 'input', null, null, '1', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('d3af8066f32f4088bca6a7051703cc3c', 'e63bfd5d847b47fdbe053bd6e8018ae6', 'photo_id', '图片id', 'varchar(64)', 'String', 'photoId', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '80', '1', '2015-05-26 10:57:39', '1', '2015-05-26 10:57:39', null, '0');
INSERT INTO `gen_table_column` VALUES ('d5c2d932ae904aa8a9f9ef34cd36fb0b', '43d6d5acffa14c258340ce6765e46c6f', 'sex', '性别', 'char(1)', 'String', 'sex', '0', '1', '1', '1', '0', '1', '=', 'select', 'sex', null, '6', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('d7d16b3a669f48d7b97a68b30d1f6746', 'e0a9247de2a74b0283ba849d17be132b', 'update_date', '更新时间', 'datetime', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', '', null, '130', '1', '2015-05-26 10:59:07', '1', '2015-05-26 10:59:07', null, '0');
INSERT INTO `gen_table_column` VALUES ('da19894822144ea799b588e86db74940', 'e0a9247de2a74b0283ba849d17be132b', 'tag_title', '标签文本内容', 'varchar(50)', 'String', 'tagTitle', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '60', '1', '2015-05-26 10:59:06', '1', '2015-05-26 10:59:06', null, '0');
INSERT INTO `gen_table_column` VALUES ('dceae332eeff4740bcf53b39b704bcc0', '5327b5d64ef7451ebfb04b07ba31b17f', 'photo_id', '图片id', 'varchar(64)', 'String', 'photoId', '1', '0', '1', '1', '0', '0', '=', 'input', '', null, '10', '1', '2015-05-26 10:58:07', '1', '2015-05-26 10:58:07', null, '0');
INSERT INTO `gen_table_column` VALUES ('e2ea1410188748a5b37b0a8b9d45c0ab', 'e63bfd5d847b47fdbe053bd6e8018ae6', 'del_flag', '删除标记', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '140', '1', '2015-05-26 10:57:40', '1', '2015-05-26 10:57:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('e4dc20a758f84c32904a7e7d2618fe96', '76827f6a31fd41fc8fbb4701302658be', 'uid', '用户id', 'varchar(64)', 'String', 'uid', '1', '0', '1', '1', '0', '0', '=', 'input', '', null, '20', '1', '2015-05-26 10:59:28', '1', '2015-05-26 10:59:28', null, '0');
INSERT INTO `gen_table_column` VALUES ('e64050a2ebf041faa16f12dda5dcf784', '6e05c389f3c6415ea34e55e9dfb28934', 'name', '名称', 'nvarchar2(100)', 'String', 'name', '0', '1', '1', '1', '1', '1', 'like', 'input', null, null, '3', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('e8d11127952d4aa288bb3901fc83127f', '43d6d5acffa14c258340ce6765e46c6f', 'del_flag', '删除标记（0：正常；1：删除）', 'char(1)', 'String', 'delFlag', '0', '0', '1', '0', '0', '0', '=', 'radiobox', 'del_flag', null, '13', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('e98049c061c0446080303c1b8afb8329', '00480e9e4c604d01aeab30411fd7e261', 'uid', '用户id', 'varchar(64)', 'String', 'uid', '1', '0', '1', '1', '0', '0', '=', 'input', '', null, '10', '1', '2015-05-26 10:58:40', '1', '2015-05-26 10:58:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('eb2e5afd13f147a990d30e68e7f64e12', 'aef6f1fc948f4c9ab1c1b780bc471cc2', 'update_date', '更新时间', 'timestamp(6)', 'java.util.Date', 'updateDate', '0', '0', '1', '1', '1', '0', '=', 'dateselect', null, null, '11', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('ec58349a3e1349e18c483ad32d2e92c6', '5327b5d64ef7451ebfb04b07ba31b17f', 'width', '图片宽度', 'smallint(6)', 'String', 'width', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '30', '1', '2015-05-26 10:58:07', '1', '2015-05-26 10:58:07', null, '0');
INSERT INTO `gen_table_column` VALUES ('f0032a44446f443f8fce585820174d8a', 'e63bfd5d847b47fdbe053bd6e8018ae6', 'del_by', '删除用户', 'varchar(64)', 'String', 'delBy', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '150', '1', '2015-05-26 10:57:40', '1', '2015-05-26 10:57:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('f4a83eb9c0334035b9026899dfd4f80a', '00480e9e4c604d01aeab30411fd7e261', 'status', '用户状态', 'tinyint(1)', 'String', 'status', '0', '0', '1', '1', '0', '0', '=', 'input', '', null, '20', '1', '2015-05-26 10:58:40', '1', '2015-05-26 10:58:40', null, '0');
INSERT INTO `gen_table_column` VALUES ('f5ed8c82bad0413fbfcccefa95931358', 'f6e4dafaa72f4c509636484715f33a96', 'remarks', '备注信息', 'nvarchar2(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', null, null, '10', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', null, '0');
INSERT INTO `gen_table_column` VALUES ('f77e6fc35f9c405ead503df621fe8a7d', '5327b5d64ef7451ebfb04b07ba31b17f', 'remarks', '备注信息', 'varchar(255)', 'String', 'remarks', '0', '1', '1', '1', '1', '0', '=', 'textarea', '', null, '130', '1', '2015-05-26 10:58:07', '1', '2015-05-26 10:58:07', null, '0');

-- ----------------------------
-- Table structure for `gen_template`
-- ----------------------------
DROP TABLE IF EXISTS `gen_template`;
CREATE TABLE `gen_template` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) DEFAULT NULL COMMENT '分类',
  `file_path` varchar(500) DEFAULT NULL COMMENT '生成文件路径',
  `file_name` varchar(200) DEFAULT NULL COMMENT '生成文件名',
  `content` text COMMENT '内容',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_template_del_falg` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码模板表';

-- ----------------------------
-- Records of gen_template
-- ----------------------------

-- ----------------------------
-- Table structure for `go_comment`
-- ----------------------------
DROP TABLE IF EXISTS `go_comment`;
CREATE TABLE `go_comment` (
  `comment_id` varchar(64) NOT NULL,
  `comment_content` text NOT NULL COMMENT '评论内容',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `is_reply` tinyint(1) NOT NULL COMMENT '是否回复',
  `reply_comment_id` int(11) NOT NULL COMMENT '回复评论的id',
  `reply_uid` int(11) NOT NULL COMMENT '回复的用户id',
  `post_uid` varchar(64) NOT NULL COMMENT '发布用户',
  `photo_id` varchar(64) NOT NULL COMMENT '图片id',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `del_by` varchar(64) NOT NULL COMMENT '删除用户',
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of go_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `go_like`
-- ----------------------------
DROP TABLE IF EXISTS `go_like`;
CREATE TABLE `go_like` (
  `photo_id` varchar(64) NOT NULL COMMENT '图片id',
  `uid` varchar(64) NOT NULL COMMENT '用户id',
  `time_create` datetime NOT NULL COMMENT '创建时间',
  UNIQUE KEY `photo_id` (`photo_id`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of go_like
-- ----------------------------

-- ----------------------------
-- Table structure for `go_photo`
-- ----------------------------
DROP TABLE IF EXISTS `go_photo`;
CREATE TABLE `go_photo` (
  `photo_id` varchar(64) NOT NULL COMMENT '图片id',
  `intro` text NOT NULL COMMENT '图片描述',
  `width` smallint(6) NOT NULL DEFAULT '0' COMMENT '图片宽度',
  `height` smallint(6) NOT NULL DEFAULT '0' COMMENT '图片高度',
  `photo_path` varchar(255) NOT NULL COMMENT '图片地址',
  `uid` varchar(64) NOT NULL COMMENT '发布用户id',
  `color` smallint(6) NOT NULL COMMENT '图片颜色值',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '图片状态，1，正常，0异常',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`photo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of go_photo
-- ----------------------------
INSERT INTO `go_photo` VALUES ('1', '1231', '123', '123', '1212', '12', '0', '1', '1', '2015-05-29 15:32:21', '', '0000-00-00 00:00:00', null, '0');
INSERT INTO `go_photo` VALUES ('12', '1212', '21', '12', '1221', '112', '11', '1', '1', '2015-05-28 11:51:39', '1', '2015-05-28 11:51:39', '12112', '0');

-- ----------------------------
-- Table structure for `go_tag`
-- ----------------------------
DROP TABLE IF EXISTS `go_tag`;
CREATE TABLE `go_tag` (
  `tag_id` varchar(64) NOT NULL COMMENT '标签id',
  `photo_id` varchar(64) NOT NULL COMMENT '图片id',
  `tag_x` tinyint(1) NOT NULL COMMENT '标签x',
  `tag_y` tinyint(1) NOT NULL COMMENT '标签y轴',
  `tag_type` enum('text','product') NOT NULL DEFAULT 'text' COMMENT '标记类型',
  `tag_title` varchar(50) NOT NULL COMMENT '标签文本内容',
  `skuId` varchar(64) NOT NULL COMMENT '国美商品sku',
  `productId` varchar(64) NOT NULL COMMENT '国美商品productId',
  `status` tinyint(1) NOT NULL COMMENT '标签状态',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` tinyint(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of go_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `go_user`
-- ----------------------------
DROP TABLE IF EXISTS `go_user`;
CREATE TABLE `go_user` (
  `uid` varchar(64) NOT NULL COMMENT '用户id',
  `status` tinyint(1) NOT NULL COMMENT '用户状态',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of go_user
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_area`
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `type` char(1) DEFAULT NULL COMMENT '区域类型',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_area_parent_id` (`parent_id`),
  KEY `sys_area_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区域表';

-- ----------------------------
-- Records of sys_area
-- ----------------------------
INSERT INTO `sys_area` VALUES ('1', '0', '0,', '中国', '10', '100000', '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_area` VALUES ('2', '1', '0,1,', '北京市', '20', '100036', '2', '1', '2013-05-27 08:00:00', '1', '2015-05-27 21:40:31', '', '0');
INSERT INTO `sys_area` VALUES ('3', '2', '0,1,2,', '济南市', '30', '110101', '3', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_area` VALUES ('4', '3', '0,1,2,3,', '历城区', '40', '110102', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_area` VALUES ('5', '3', '0,1,2,3,', '历下区', '50', '110104', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_area` VALUES ('6', '3', '0,1,2,3,', '高新区', '60', '110105', '4', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');

-- ----------------------------
-- Table structure for `sys_dict`
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `value` varchar(100) NOT NULL COMMENT '数据值',
  `label` varchar(100) NOT NULL COMMENT '标签名',
  `type` varchar(100) NOT NULL COMMENT '类型',
  `description` varchar(100) NOT NULL COMMENT '描述',
  `sort` decimal(10,0) NOT NULL COMMENT '排序（升序）',
  `parent_id` varchar(64) DEFAULT '0' COMMENT '父级编号',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`label`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1', '0', '正常', 'del_flag', '删除标记', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('10', 'yellow', '黄色', 'color', '颜色值', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('100', 'java.util.Date', 'Date', 'gen_java_type', 'Java类型', '50', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('101', 'com.thinkgem.jeesite.modules.sys.entity.User', 'User', 'gen_java_type', 'Java类型', '60', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('102', 'com.thinkgem.jeesite.modules.sys.entity.Office', 'Office', 'gen_java_type', 'Java类型', '70', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('103', 'com.thinkgem.jeesite.modules.sys.entity.Area', 'Area', 'gen_java_type', 'Java类型', '80', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('104', 'Custom', 'Custom', 'gen_java_type', 'Java类型', '90', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('105', '1', '会议通告\0\0', 'oa_notify_type', '通知通告类型', '10', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('106', '2', '奖惩通告\0\0', 'oa_notify_type', '通知通告类型', '20', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('107', '3', '活动通告\0\0', 'oa_notify_type', '通知通告类型', '30', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('108', '0', '草稿', 'oa_notify_status', '通知通告状态', '10', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('109', '1', '发布', 'oa_notify_status', '通知通告状态', '20', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('11', 'orange', '橙色', 'color', '颜色值', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('110', '0', '未读', 'oa_notify_read', '通知通告状态', '10', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('111', '1', '已读', 'oa_notify_read', '通知通告状态', '20', '0', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('12', 'default', '默认主题', 'theme', '主题方案', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('13', 'cerulean', '天蓝主题', 'theme', '主题方案', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('14', 'readable', '橙色主题', 'theme', '主题方案', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('15', 'united', '红色主题', 'theme', '主题方案', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('16', 'flat', 'Flat主题', 'theme', '主题方案', '60', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('17', '1', '国家', 'sys_area_type', '区域类型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('18', '2', '省份、直辖市', 'sys_area_type', '区域类型', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('19', '3', '地市', 'sys_area_type', '区域类型', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('2', '1', '删除', 'del_flag', '删除标记', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('20', '4', '区县', 'sys_area_type', '区域类型', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('21', '1', '公司', 'sys_office_type', '机构类型', '60', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('22', '2', '部门', 'sys_office_type', '机构类型', '70', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('23', '3', '小组', 'sys_office_type', '机构类型', '80', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('24', '4', '其它', 'sys_office_type', '机构类型', '90', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('25', '1', '综合部', 'sys_office_common', '快捷通用部门', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('26', '2', '开发部', 'sys_office_common', '快捷通用部门', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('27', '3', '人力部', 'sys_office_common', '快捷通用部门', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('28', '1', '一级', 'sys_office_grade', '机构等级', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('29', '2', '二级', 'sys_office_grade', '机构等级', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('3', '1', '显示', 'show_hide', '显示/隐藏', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('30', '3', '三级', 'sys_office_grade', '机构等级', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('31', '4', '四级', 'sys_office_grade', '机构等级', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('32', '1', '所有数据', 'sys_data_scope', '数据范围', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('33', '2', '所在公司及以下数据', 'sys_data_scope', '数据范围', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('34', '3', '所在公司数据', 'sys_data_scope', '数据范围', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('35', '4', '所在部门及以下数据', 'sys_data_scope', '数据范围', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('36', '5', '所在部门数据', 'sys_data_scope', '数据范围', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('37', '8', '仅本人数据', 'sys_data_scope', '数据范围', '90', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('38', '9', '按明细设置', 'sys_data_scope', '数据范围', '100', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('39', '1', '系统管理', 'sys_user_type', '用户类型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('4', '0', '隐藏', 'show_hide', '显示/隐藏', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('40', '2', '部门经理', 'sys_user_type', '用户类型', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('41', '3', '普通用户', 'sys_user_type', '用户类型', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('42', 'basic', '基础主题', 'cms_theme', '站点主题', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('43', 'blue', '蓝色主题', 'cms_theme', '站点主题', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('44', 'red', '红色主题', 'cms_theme', '站点主题', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('45', 'article', '文章模型', 'cms_module', '栏目模型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('46', 'picture', '图片模型', 'cms_module', '栏目模型', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('47', 'download', '下载模型', 'cms_module', '栏目模型', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('48', 'link', '链接模型', 'cms_module', '栏目模型', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('49', 'special', '专题模型', 'cms_module', '栏目模型', '50', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('5', '1', '是', 'yes_no', '是/否', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('50', '0', '默认展现方式', 'cms_show_modes', '展现方式', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('51', '1', '首栏目内容列表', 'cms_show_modes', '展现方式', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('52', '2', '栏目第一条内容', 'cms_show_modes', '展现方式', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('53', '0', '发布', 'cms_del_flag', '内容状态', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('54', '1', '删除', 'cms_del_flag', '内容状态', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('55', '2', '审核', 'cms_del_flag', '内容状态', '15', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('56', '1', '首页焦点图', 'cms_posid', '推荐位', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('57', '2', '栏目页文章推荐', 'cms_posid', '推荐位', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('58', '1', '咨询', 'cms_guestbook', '留言板分类', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('59', '2', '建议', 'cms_guestbook', '留言板分类', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('6', '0', '否', 'yes_no', '是/否', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('60', '3', '投诉', 'cms_guestbook', '留言板分类', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('61', '4', '其它', 'cms_guestbook', '留言板分类', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('62', '1', '公休', 'oa_leave_type', '请假类型', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('63', '2', '病假', 'oa_leave_type', '请假类型', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('64', '3', '事假', 'oa_leave_type', '请假类型', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('65', '4', '调休', 'oa_leave_type', '请假类型', '40', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('66', '5', '婚假', 'oa_leave_type', '请假类型', '60', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('67', '1', '接入日志', 'sys_log_type', '日志类型', '30', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('68', '2', '异常日志', 'sys_log_type', '日志类型', '40', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('69', 'leave', '请假流程', 'act_type', '流程类型', '10', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('7', 'red', '红色', 'color', '颜色值', '10', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('70', 'test_audit', '审批测试流程', 'act_type', '流程类型', '20', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('71', '1', '分类1', 'act_category', '流程分类', '10', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('72', '2', '分类2', 'act_category', '流程分类', '20', '0', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('73', 'crud', '增删改查', 'gen_category', '代码生成分类', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('74', 'crud_many', '增删改查（包含从表）', 'gen_category', '代码生成分类', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('75', 'tree', '树结构', 'gen_category', '代码生成分类', '30', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('76', '=', '=', 'gen_query_type', '查询方式', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('77', '!=', '!=', 'gen_query_type', '查询方式', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('78', '&gt;', '&gt;', 'gen_query_type', '查询方式', '30', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('79', '&lt;', '&lt;', 'gen_query_type', '查询方式', '40', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('8', 'green', '绿色', 'color', '颜色值', '20', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('80', 'between', 'Between', 'gen_query_type', '查询方式', '50', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('81', 'like', 'Like', 'gen_query_type', '查询方式', '60', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('82', 'left_like', 'Left Like', 'gen_query_type', '查询方式', '70', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('83', 'right_like', 'Right Like', 'gen_query_type', '查询方式', '80', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('84', 'input', '文本框', 'gen_show_type', '字段生成方案', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('85', 'textarea', '文本域', 'gen_show_type', '字段生成方案', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('86', 'select', '下拉框', 'gen_show_type', '字段生成方案', '30', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('87', 'checkbox', '复选框', 'gen_show_type', '字段生成方案', '40', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('88', 'radiobox', '单选框', 'gen_show_type', '字段生成方案', '50', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('89', 'dateselect', '日期选择', 'gen_show_type', '字段生成方案', '60', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('9', 'blue', '蓝色', 'color', '颜色值', '30', '0', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('90', 'userselect', '人员选择', 'gen_show_type', '字段生成方案', '70', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('91', 'officeselect', '部门选择', 'gen_show_type', '字段生成方案', '80', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('92', 'areaselect', '区域选择', 'gen_show_type', '字段生成方案', '90', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('93', 'String', 'String', 'gen_java_type', 'Java类型', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('94', 'Long', 'Long', 'gen_java_type', 'Java类型', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('95', 'dao', '仅持久层', 'gen_category', '代码生成分类\0\0\0\0', '40', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('96', '1', '男', 'sex', '性别', '10', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('97', '2', '女', 'sex', '性别', '20', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '0');
INSERT INTO `sys_dict` VALUES ('98', 'Integer', 'Integer', 'gen_java_type', 'Java类型', '30', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');
INSERT INTO `sys_dict` VALUES ('99', 'Double', 'Double', 'gen_java_type', 'Java类型', '40', '0', '1', '2013-10-28 08:00:00', '1', '2013-10-28 08:00:00', null, '1');

-- ----------------------------
-- Table structure for `sys_log`
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) DEFAULT '' COMMENT '日志标题',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `remote_addr` varchar(255) DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) DEFAULT NULL COMMENT '请求URI',
  `method` varchar(5) DEFAULT NULL COMMENT '操作方式',
  `params` text COMMENT '操作提交的数据',
  `exception` text COMMENT '异常信息',
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`),
  KEY `sys_log_request_uri` (`request_uri`),
  KEY `sys_log_type` (`type`),
  KEY `sys_log_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('0032232fa83f4d7fb9f151d0b9e03c8c', '1', '内容管理-内容管理-内容发布', '1', '2015-05-27 21:47:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0062b06e487d4efaa611938115fccca1', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-26 00:16:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('008811dd4ee54e0c858d26db3540b206', '1', '我的面板-个人信息-修改密码', '1', '2015-05-26 00:14:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/modifyPwd', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('00d02ded735f48578098af2d791c3ef6', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:43:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('00d0760fbde94adcba97c4828bc38c00', '1', '我的面板-个人信息-个人信息', '1', '2015-05-27 21:46:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0111fe5482aa4a0a90fc4da84453bf3b', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-27 21:36:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('01a2329cbce7427980cb7ade6147f23d', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 00:14:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('01b19157f31640fab640a052c21bb10e', '1', '内容管理-内容管理', '1', '2015-05-26 10:43:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('01cde1d808f14cf4acc987dafc61d391', '1', '系统设置-机构用户-用户管理', '1', '2015-05-28 11:41:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('01e104c0f13d40be980cd5a3d7fc785c', '1', '内容管理-内容管理-内容发布-文章模型-查看', '1', '2015-05-28 11:28:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/article/findByIds', 'GET', 'ids=1,2,3', '');
INSERT INTO `sys_log` VALUES ('0203bd56d8f14eb4b416f2057bfa2ee1', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 10:15:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('021458329e764a049d33da330fa43045', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-26 00:36:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('022ae17cd4944fe9ba4a17cc52013eab', '1', '在线办公-通知通告-我的通告', '1', '2015-05-26 10:15:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/oa/oaNotify/self', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('023cd487f9b84babb0686aca061a0fbf', '1', '系统登录', '1', '2015-05-29 16:12:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('0254cd70dba84f89aa3ae9920d8ca4e4', '1', '内容管理-内容管理-内容发布', '1', '2015-05-27 21:45:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('026180c538a64f5a96850a3319a2630c', '1', '系统设置-机构用户-机构管理', '1', '2015-05-27 21:41:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0284b3102b1241bf93d11d3cc400c13f', '1', '我的面板-个人信息-修改密码', '1', '2015-05-26 00:02:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/modifyPwd', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('03a232fd3f0548a08dd76959bf876271', '1', '系统登录', '1', '2015-05-28 13:44:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('03d521650b874ade90c3cecc43a6eccc', '1', '内容管理-内容管理', '1', '2015-05-26 00:36:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0447afc0313d4a66a125a3b78050d53c', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-28 11:47:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('049a33d9e6df4947a664be05a2a4ba97', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 10:40:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('04a1502baff44b4fbbd0cbb359be7e7c', '1', '我的面板-个人信息-修改密码', '1', '2015-05-26 10:20:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/modifyPwd', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('04b06a33e80248edaa0a8c5672b5490e', '1', '内容管理-内容管理-内容发布-文章模型-查看', '1', '2015-05-28 11:28:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/article/form', 'GET', 'id=1', '');
INSERT INTO `sys_log` VALUES ('04ff29b12d3d4398ba09c5054f2e1d08', '1', '系统设置-系统设置-字典管理-查看', '1', '2015-05-28 11:21:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/dict/form', 'GET', 'id=60', '');
INSERT INTO `sys_log` VALUES ('05440e02f76245fba469cabcea36d515', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 10:54:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('058df88180bc44e3b22ecdf53e9b87bd', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 10:21:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('05da96b5444e43468709789a6abc7ca6', '1', '代码生成-生成示例-主子表', '1', '2015-05-27 21:48:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testDataMain', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('05e31976c9b148898d3f26aa51f19c33', '1', '代码生成-生成示例-单表', '1', '2015-05-26 00:34:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testData', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('05ebabf1eca24c2fb7cc7843cc4dcd9e', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-26 11:26:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('05f0e57f738f458a8a239e636fb7c437', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 00:15:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0645a66849944aae87c06feb8bbadb36', '1', '内容管理-内容管理', '1', '2015-05-28 14:48:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0659ca80e70c4339b097b38d6c7ea8d3', '1', '内容管理-内容管理', '1', '2015-05-28 13:51:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('065dea6a6aa5493f9367809db4655754', '1', '内容管理-内容管理', '1', '2015-05-28 10:30:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('06955a447fff4f168007baa8ec80e6f7', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 10:42:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0695cef78fb74640be73f416b585c14a', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 10:18:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('073171e6a3fe4e5dab98c62e6413b2af', '1', '内容管理-内容管理-图片管理-查看', '1', '2015-05-28 14:53:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('074ecfb30a5241a8b47ecb054622d3d7', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-28 14:48:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('07553eecae1440e697aa4c56c9d8637c', '1', '内容管理-内容管理', '1', '2015-05-26 10:41:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0798860a0e994ca08c46cc10c7fd001c', '1', '在线办公-通知通告-我的通告', '1', '2015-05-26 00:15:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/oa/oaNotify/self', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('07fb6ade692644f3abaecff0c109ffc0', '1', '内容管理-内容管理', '1', '2015-05-26 11:27:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('08881542144a4954805007749b89c370', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:15:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('08aa316e8c4f4c83af3e62f3823ee97e', '1', '代码生成-代码生成-生成方案配置', '1', '2015-05-26 00:34:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('09160b91869d4495b4660d288a30b21b', '1', '内容管理-内容管理-图片管理-查看', '1', '2015-05-28 13:52:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('093a9160acd6484a8b14ca66b911a27f', '1', '内容管理-内容管理', '1', '2015-05-26 00:14:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0959021f4b4044ae8045c7a8d04a2363', '1', '系统设置-系统设置-字典管理', '1', '2015-05-26 00:07:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/dict/', 'POST', 'pageNo=3&description=&pageSize=30&type=', '');
INSERT INTO `sys_log` VALUES ('09e28c7911e04bdab6d9bc8df1cda766', '1', '代码生成-代码生成-生成方案配置', '1', '2015-05-26 00:36:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('09fc3343867149ccbcb6cb574d23f1d4', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:43:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', 'repage=', '');
INSERT INTO `sys_log` VALUES ('0a18e706996a4c8f8009408f788b436d', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 11:29:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0a667ffad00849c59a51a7e9b5a050c4', '1', '系统登录', '1', '2015-05-28 14:42:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('0a9265dee82745b6a79894e9588be061', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 00:14:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0b220efe89c84abaa564ea77ea464010', '1', '在线办公-个人办公-审批测试', '1', '2015-05-26 00:03:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/oa/testAudit', 'GET', 'tabPageId=jerichotabiframe_8', '');
INSERT INTO `sys_log` VALUES ('0b285a59b9c54a5ba1f57befe0fb1b8a', '1', '内容管理-内容管理-内容发布', '1', '2015-05-28 11:50:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0b984283dfcf4e4ba7e5e0cd4d400742', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-05-26 00:15:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/comment/', 'GET', 'status=2', '');
INSERT INTO `sys_log` VALUES ('0c174cc8fd7446c6805f16d1d19e95f5', '1', '我的面板-个人信息-修改密码', '1', '2015-05-26 00:03:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/modifyPwd', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0ca4cc190ca841399f46c153c63bd1b4', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 00:14:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0ca982e60196411799315484da33bbaf', '1', '系统登录', '1', '2015-05-28 17:23:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('0cbee6ee739349339427656e6c0dc4e2', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:42:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/form', 'GET', 'id=1', '');
INSERT INTO `sys_log` VALUES ('0cca56ba91e346b09c2f5e9c40b67401', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-28 11:45:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0cf1072d5b204a34935e338b48c44fee', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:15:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0d2b9dba65a1474896eb6fae3d13944e', '1', '内容管理-内容管理-标签管理', '1', '2015-05-29 23:08:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goTag', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0dc60e9858b845d6954dc03f4a8d3344', '1', '内容管理-内容管理', '1', '2015-05-27 21:47:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0dff61a4e20147f197a7fb910ffaa595', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 11:29:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0e08b56b22a941aaa2696ffb4c3ae110', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-26 00:18:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('0e2f598a18f7405383b68347f32c8254', '1', '在线办公-通知通告-通告管理', '1', '2015-05-26 00:14:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/oa/oaNotify', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0e567ac5fabd48919f0e551739838dd1', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-29 15:42:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0e8d8f1eaf07432fbcad7b20eb41e1e9', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-27 21:47:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0ebb9274088a4e1a97318d58893010aa', '1', '系统设置-系统设置-角色管理', '1', '2015-05-29 16:07:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0ecaacd7eae64fc28de6918664b57e43', '1', '系统设置-机构用户-机构管理', '1', '2015-05-29 23:16:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0f36995ec3624b29833dc55c1de829ff', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 10:20:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0f606b7468eb4f259960885b6f00f2a0', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-28 11:41:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0f7d6cd36fff4a8e8393e13a549bbc5c', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-29 15:43:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0f94504ae26c45a68bf69486951c513b', '1', '系统设置-机构用户-区域管理', '1', '2015-05-27 21:44:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/area/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0fd11f8eb64e474a9c7c0ee481504ce3', '1', '内容管理-内容管理-内容发布', '1', '2015-05-28 11:50:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('0ff82c37c60d49fa85fb5c4bdf564c1d', '1', '系统设置-系统设置-菜单管理-修改', '1', '2015-05-28 11:49:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/save', 'POST', 'id=b7e206eebc8c400b85b5170e707896e4&parent.id=96a0df838dcd42fb83363ecbaa15222c&parent.name=图片管理&name=修改&href=&target=&icon=&sort=60&isShow=0&permission=content:goPhoto:edit&remarks=', '');
INSERT INTO `sys_log` VALUES ('100d56c1d4e2448f926f9dc818ffd453', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 00:05:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', 'tabPageId=jerichotabiframe_29', '');
INSERT INTO `sys_log` VALUES ('1053747b8b1d4fb9ad2f3ed363a9908c', '1', '系统设置-机构用户-机构管理', '1', '2015-05-29 23:07:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('10ac02d6bb04400fabb5117eace24b9c', '1', '系统设置-系统设置-角色管理', '1', '2015-05-29 23:21:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('10bfb9a414ed4ff8a81e7c9035cd285e', '1', '内容管理-内容管理-图片管理-查看', '1', '2015-05-28 11:51:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('10c8aaa83f28438388180199d7319e6a', '1', '系统设置-系统设置-菜单管理-修改', '1', '2015-05-29 15:45:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/save', 'POST', 'icon=&sort=30&permission=content:goTag:view&remarks=&id=77b3ad22809b4c0fa4c96ef96965a071&parent.id=622064d097494b70bcbf7db1d5aa76ff&name=查看&target=&href=&parent.name=标签管理&isShow=0', '');
INSERT INTO `sys_log` VALUES ('10eb3df78bcf4741a1b95e5ad82a396a', '1', '代码生成-代码生成-生成方案配置', '1', '2015-05-28 13:49:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('10eff842924343e1bac866277c36c569', '1', '内容管理-内容管理-图片管理-查看', '1', '2015-05-28 11:51:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto/form', 'GET', 'id=', '');
INSERT INTO `sys_log` VALUES ('10f547d0107948739b2fb8ce9776c357', '1', '系统设置-机构用户-区域管理-修改', '1', '2015-05-27 21:40:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/area/delete', 'GET', 'id=3', '');
INSERT INTO `sys_log` VALUES ('111c481c6189469aaabbcc9a9c5dce8e', '1', '内容管理-内容管理', '1', '2015-05-26 11:27:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1122002e21ab4aef955c83f2402c4c1d', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:42:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/form', 'GET', 'id=1', '');
INSERT INTO `sys_log` VALUES ('11bd18dd9fbf4900b8e0adde6a110c16', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 10:33:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('11fa00e24ffa46a88e7631101f28fd46', '1', '系统设置-机构用户-机构管理', '1', '2015-05-27 21:44:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('12212581e00c4d0489ed729942c0804c', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 10:15:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('124785c18e994515805080a49545e9fd', '1', '内容管理-内容管理-内容发布', '1', '2015-05-28 13:55:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('12906633233647ba8c3bacb4f365cfa2', '1', '内容管理-内容管理', '1', '2015-05-28 13:55:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('12d99f6d3b5d413eaa32c419808fc4cb', '1', '系统设置-系统设置-菜单管理-修改', '1', '2015-05-29 23:09:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/delete', 'GET', 'id=71', '');
INSERT INTO `sys_log` VALUES ('1361ed592aae4dddbecc7978edb71898', '1', '内容管理-内容管理', '1', '2015-05-26 11:25:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('137848c6b5d642fab64ea043011fc48d', '1', '内容管理-栏目设置-站点设置', '1', '2015-05-27 21:46:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/site/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('13accc6260ac4648a331a257b20b2b38', '1', '代码生成-代码生成-生成方案配置', '1', '2015-05-29 15:37:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('13f53fd95944445ca9b4f2aa04db9f79', '1', '内容管理-内容管理', '1', '2015-05-27 21:46:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('142c73a4b497494b8e9915e2f935c72c', '1', '系统设置-系统设置-菜单管理-查看', '1', '2015-05-29 15:43:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/form', 'GET', 'parent.id=622064d097494b70bcbf7db1d5aa76ff', '');
INSERT INTO `sys_log` VALUES ('14322dd752244067b8ad57190e412883', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 10:42:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('14470c5b57a14d3ab53f23c6b6e3a640', '1', '内容管理-内容管理-内容发布-文章模型-查看', '1', '2015-05-26 00:20:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/article/form', 'GET', 'id=1', '');
INSERT INTO `sys_log` VALUES ('1471eaafe65447c98aaab821406298d7', '1', '内容管理-内容管理', '1', '2015-05-26 10:42:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('14aeb37d33a94b4393ddead15c630ad6', '1', '内容管理-内容管理', '1', '2015-05-28 14:48:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('150d23fe28af485c951c5971cd366809', '1', '系统设置-系统设置-菜单管理-修改', '1', '2015-05-28 11:41:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/delete', 'GET', 'id=23', '');
INSERT INTO `sys_log` VALUES ('151afbebd86541cebb0ffdc82719a633', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-28 11:45:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1594396d7b8b450ba60d4e1f8dedcea5', '1', '内容管理-内容管理-图片管理', '1', '2015-05-26 11:27:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('15a531675dbe45259ba40a1981e07dd2', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 00:10:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', 'tabPageId=jerichotabiframe_68', '');
INSERT INTO `sys_log` VALUES ('15e7035d3402459b92d0ed94a1c59ab7', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-28 17:38:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('16042b28cb074507ac255e78a300bdeb', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-26 00:04:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('17072e3506354dda8aa9085e3af91327', '1', '系统设置-机构用户-用户管理', '1', '2015-05-27 21:44:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1726d843a0694b08851f76eae8837ee4', '1', '内容管理-内容管理-内容发布', '1', '2015-05-29 16:12:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('174be4c03f7f42c5b6f7d54f70c8576c', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 11:27:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('17e9808b3bbd443dac1671f5b134a425', '1', '系统设置-机构用户-机构管理', '1', '2015-05-26 10:42:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('18095f6a592b47688e125434078cd22d', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 10:42:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('181d4f08558846d7ad5bdd0edd9ed851', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-29 22:35:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('182b56eab4404c4da55d52a0b4b5b744', '1', '在线办公-通知通告-我的通告', '1', '2015-05-26 10:20:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/oa/oaNotify/self', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('183758a454404da2b081d0c03ca5e394', '1', '在线办公-通知通告-我的通告', '1', '2015-05-26 00:10:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/oa/oaNotify/self', 'GET', 'tabPageId=jerichotabiframe_65', '');
INSERT INTO `sys_log` VALUES ('1865b40f63794f2987a5396540ae60b3', '1', '在线办公-通知通告-我的通告', '1', '2015-05-26 00:34:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/oa/oaNotify/self', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('18a3a3576bbc4e2495339c8de09ca530', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-29 23:09:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('18b6aaee915244518e3857b17aed98ec', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 11:26:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('18bcb914151a4b1898f3b9e27a0d026a', '1', '我的面板-个人信息-个人信息', '1', '2015-05-29 23:21:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('190843b3b3fc47d795f6495b9aa62869', '1', '内容管理-内容管理', '1', '2015-05-27 21:47:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1975b77f06064f34ac1e850577339a41', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 10:14:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('198e75b1a71d4cb3aecb906dcdfc354d', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 10:39:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('19d7312538f24dc4a8a0e3160af0cd5c', '1', '内容管理-内容管理-内容发布', '1', '2015-05-28 11:45:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('19f7c765698540a3a881545a68d6f475', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:41:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=1&parentIds=0,1,', '');
INSERT INTO `sys_log` VALUES ('1a2c864c376f42819010a5b3d62d96d5', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:47:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1a2e8cefe9e74dfea167bfb44b9d79c2', '1', '内容管理-内容管理', '1', '2015-05-26 00:15:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1a98c70bc04e4c089228d6bd29bf99d6', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-26 00:11:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', 'tabPageId=jerichotabiframe_82', '');
INSERT INTO `sys_log` VALUES ('1b072842fc2848c2b427a0280cffa2d7', '1', '内容管理-内容管理-内容发布', '1', '2015-05-29 23:08:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1b604758d6264ae2a1ca3d0233e565b1', '1', '系统设置-机构用户-区域管理', '1', '2015-05-29 22:35:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/area/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1b62adfbceef44dd8bef0c656f1997c1', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 11:23:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1b968477486144b2be4c588730ffbaa1', '1', '内容管理-内容管理', '1', '2015-05-28 13:55:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1bdc82a5a9b24a1da0dc43d0017246be', '1', '内容管理-内容管理', '1', '2015-05-26 00:15:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1cc44f9a7f764defad2194c0c9b812ec', '1', '内容管理-栏目设置-站点设置', '1', '2015-05-26 00:22:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/site/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1cf45496dcad401892030a8f7eff5264', '1', '系统设置-机构用户-区域管理', '1', '2015-05-28 11:45:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/area/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1d2672e4758143fd8eddaa07bf01c870', '1', '内容管理-内容管理', '1', '2015-05-26 00:23:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1db3662d86ce4afe837be9cace2183ff', '1', '系统设置-机构用户-用户管理', '1', '2015-05-28 10:33:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1debe056a017430ebaa87efd5dc88d1b', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-28 14:47:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1e66f272edff48a6a0727862248bd904', '1', '内容管理-内容管理', '1', '2015-05-26 11:27:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1ef9e33153144fc39fb396ba6915ab7b', '1', '代码生成-生成示例-树结构', '1', '2015-05-26 00:36:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testTree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1efa8fdb3d834bb7b2445c172b5ae762', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:12:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('1f1e5f84f341438b940bd81b087b3ec1', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:19:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1f1f6a541ff140518e7d3a9275001223', '1', '系统设置-机构用户-用户管理', '1', '2015-05-27 21:44:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1f5eb7a2a1764c1688335dc4391a9dff', '1', '系统设置-机构用户-机构管理', '1', '2015-05-26 00:04:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', 'tabPageId=jerichotabiframe_26', '');
INSERT INTO `sys_log` VALUES ('1f855d4cacfc4492a29ad8b4bfe3ffa2', '1', '系统设置-机构用户-区域管理-修改', '1', '2015-05-27 21:40:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/area/save', 'POST', 'id=2&parent.id=1&parent.name=中国&name=北京市&code=100036&type=2&remarks=', '');
INSERT INTO `sys_log` VALUES ('1fda6ef787bb423cb337546d2e14ea2f', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-28 11:45:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('1ff524ed5e68450088e7e86f8ff7db62', '1', '内容管理-内容管理', '1', '2015-05-28 11:27:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('202b185a8e0048dcaadd30091c8805a7', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-29 15:45:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('20955c2a05a24a93944fd0b73d4c5b14', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 10:18:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('20ba0a1948fe4f45aaeaa3baa29c69aa', '1', '我的面板-个人信息-个人信息', '1', '2015-05-28 14:42:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2114b61d59b34b80baa4fa352788763b', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:43:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', 'office.id=4&office.name=运营部', '');
INSERT INTO `sys_log` VALUES ('215cb9ab08794ac6811fa7d1ce2d36a2', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:41:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=1&parentIds=0,1,', '');
INSERT INTO `sys_log` VALUES ('21982cd8f49e4083a7a5469e36ce5ce0', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 00:22:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('226dd9074a86449e8b05e8745dea3c58', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 00:36:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('22787a9fa453460cbee0de467effb4ee', '1', '内容管理-内容管理-图片管理-查看', '1', '2015-05-28 13:52:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('22e21fab446a4242a42e8deb8413c6e8', '1', '内容管理-内容管理', '1', '2015-05-26 10:42:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('234456338cab45aa9151f714603fa986', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-29 15:43:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('235b68499e8b483bb7fdf66a33b44b13', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 10:32:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('23656f4f892c45e89902829652837c59', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 10:15:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('23760e9f69774befb53e79520eaa7e61', '1', '系统设置-机构用户-区域管理', '1', '2015-05-27 21:40:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/area/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('239da2de14f34cb5bd00afed11523e87', '1', '内容管理-内容管理', '1', '2015-05-28 10:30:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('23c0865009f24700b239bbdd2402ec66', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 00:16:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('247859daeedb467b84aee3a6b041fcce', '1', '在线办公-通知通告-我的通告', '1', '2015-05-26 00:03:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/oa/oaNotify/self', 'GET', 'tabPageId=jerichotabiframe_6', '');
INSERT INTO `sys_log` VALUES ('2530bc171eeb4526906371343395cb3c', '1', '内容管理-内容管理-内容发布', '1', '2015-05-29 23:07:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('25417876bfa2401e9ee9731fddc381c3', '1', '系统登录', '1', '2015-05-28 11:49:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('254baf491bad4b24857e801ab382b6ef', '1', '系统设置-系统设置-角色管理', '1', '2015-05-27 21:38:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2557a3d1ea5145d3b0323bad7d21e6f8', '1', '系统设置-系统设置-字典管理', '1', '2015-05-28 11:21:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('256e01c3b00c4a59bfe41dfab328b6e4', '1', '系统设置-日志查询-日志查询', '1', '2015-05-29 23:07:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/log', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('25b3d9f0fdf547cd925e8566e0245cf0', '1', '内容管理-内容管理', '1', '2015-05-29 16:12:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('25cf7dd42b9445f68e1f9c8ee2d8b8ff', '1', '内容管理-内容管理-图片管理-查看', '1', '2015-05-28 14:45:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('25d721a38d7248be9e73e9a72b4eb008', '1', '系统设置-系统设置-菜单管理-查看', '1', '2015-05-28 11:46:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/form', 'GET', 'parent.id=96a0df838dcd42fb83363ecbaa15222c', '');
INSERT INTO `sys_log` VALUES ('25fdbdb642e5474a827eb261a6c0769f', '1', '内容管理-内容管理', '1', '2015-05-26 00:20:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2628e1d027cf45a09ac8f5c86c089fc0', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:38:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2653e58e50944abaab0fcc4400455801', '1', '系统设置-机构用户-机构管理', '1', '2015-05-26 00:16:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('265f28620f5047149dad0fc8c6a9064d', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:42:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=0,', '');
INSERT INTO `sys_log` VALUES ('2667f7901b854757badb535f543ff8a0', '1', '内容管理-内容管理', '1', '2015-05-29 23:07:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('268619883aef4f199908834dac27ee12', '1', '系统设置-机构用户-用户管理', '1', '2015-05-29 17:52:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('269a2077eff04dbfae5339ea220ced45', '1', '我的面板-个人信息-修改密码', '1', '2015-05-26 10:40:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/modifyPwd', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('26ae627e5edf4e829f19667a20da0b5e', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 00:23:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('273e3f3d42cc43ec8d98a5a44fe61ebd', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 00:47:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2743eab9e57c4e5fab5b10c991591d01', '1', '系统登录', '1', '2015-05-26 11:27:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('27447dc03cf6410381e048d96c7638ff', '1', '系统设置-系统设置-角色管理-修改', '1', '2015-05-28 11:44:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/save', 'POST', 'id=2&office.id=2&office.name=公司领导&oldName=公司管理员&name=公司管理员&oldEnname=hr&enname=hr&roleType=assignment&sysData=1&useable=1&dataScope=2&menuIds=1,27,28,29,30,71,56,57,58,59,62,88,89,90,63,73,74,64,65,66,69,70,72,31,40,41,42,43,44,45,46,47,48...&officeIds=&remarks=', '');
INSERT INTO `sys_log` VALUES ('279bf7e783534e3fac162e586e468033', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 11:22:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('27c50cdd42a54a1493ab8ceff3a437b8', '1', '代码生成-生成示例-单表-查看', '1', '2015-05-26 10:18:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testData/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('27c5bdeb0a7d45c4852dada48ff134f6', '1', '系统设置-系统设置-角色管理', '1', '2015-05-29 15:44:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/', 'GET', 'repage=', '');
INSERT INTO `sys_log` VALUES ('27d589effbdc4290897466aab2ad3690', '1', '我的面板-个人信息-个人信息', '1', '2015-05-28 11:35:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('285ec8b7824a41af945beaffae4bfeb4', '1', '系统设置-机构用户-区域管理', '1', '2015-05-28 17:38:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/area/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('28a8485aca8143e28bcab0d05b516f86', '1', '系统设置-系统设置-菜单管理-查看', '1', '2015-05-28 11:47:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/form', 'GET', 'id=55', '');
INSERT INTO `sys_log` VALUES ('28db5110832949ee8050822629d8a926', '1', '系统设置-系统设置-菜单管理-修改', '1', '2015-05-29 15:44:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/save', 'POST', 'id=77b3ad22809b4c0fa4c96ef96965a071&icon=&sort=30&parent.id=622064d097494b70bcbf7db1d5aa76ff&name=查看&target=&permission=content:goTag:view&remarks=&href=&parent.name=标签管理&isShow=1', '');
INSERT INTO `sys_log` VALUES ('28e8bc4d71e346af890e23eb8b77e492', '1', '内容管理-内容管理', '1', '2015-05-29 22:36:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('28f1ba5195644a75b7806c9f2044fe24', '1', '内容管理-内容管理', '1', '2015-05-26 00:22:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('290e490cf8a342db824b633b133eea57', '1', '内容管理-内容管理', '1', '2015-05-26 11:23:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('290fd8cd1b78471cb5addaa8cb31184e', '1', '系统设置-系统设置-角色管理', '1', '2015-05-28 11:41:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('29299f0ccbd14a0a8d2b42e31b8d38ec', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 00:05:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', 'tabPageId=jerichotabiframe_36', '');
INSERT INTO `sys_log` VALUES ('29501db087e0487ca13354c760c3d4ef', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 11:26:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('29f3b19034724964ae7f304ea4ecaa69', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 10:41:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2a34d340b1e3400fb27a39006f2fc255', '1', '内容管理-内容管理-图片管理', '1', '2015-05-26 11:27:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2a416790610044d48abcc694317a1646', '1', '系统登录', '1', '2015-05-28 12:09:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/tree', 'GET', 'parentId=79', '');
INSERT INTO `sys_log` VALUES ('2a6e02c7260c4cbba6f39b275afe03cd', '1', '系统设置-机构用户-机构管理-修改', '1', '2015-05-27 21:42:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/save', 'POST', 'id=1&parent.id=&parent.name=&area.id=2&area.name=北京市&name=国美总公司&code=100000&type=1&grade=1&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=', '');
INSERT INTO `sys_log` VALUES ('2a928d43bc65474c99f592688fdd4c3f', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 00:34:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2ab49e2d35764190b1ff482186002a53', '1', '系统设置-系统设置-角色管理-修改', '1', '2015-05-28 11:44:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/assign', 'GET', 'id=2', '');
INSERT INTO `sys_log` VALUES ('2acc2e6cdd9648b5b1efc73e9241daec', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-28 10:33:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2b997a05276044ecb27848346a8d7997', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 00:18:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2bad9381a72144899b554bdbf5ec854e', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 11:45:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2c0205f6bbe7415baef3f03286324204', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-28 17:38:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2c45f855e8064ced94433a4fe6ae9c20', '1', '系统设置-机构用户-用户管理-修改', '1', '2015-05-28 11:44:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/save', 'POST', 'id=1&photo=&company.id=1&company.name=国美总公司&office.id=2&office.name=公司领导&no=0001&name=系统管理员&oldLoginName=thinkgem&loginName=admin&newPassword=&confirmNewPassword=&email=caoxb@ichaotu.com&phone=8675&mobile=8675&loginFlag=1&userType=&roleIdList=2&_roleIdList=on&remarks=最高管理员', '');
INSERT INTO `sys_log` VALUES ('2c4e4abf2ba249559b030b826cbff074', '1', '代码生成-生成示例-单表', '1', '2015-05-26 00:34:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testData', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2c758745b4344b0faaf0a0f94b527590', '1', '内容管理-统计分析-信息量统计', '1', '2015-05-26 00:04:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/stats/article', 'GET', 'tabPageId=jerichotabiframe_20', '');
INSERT INTO `sys_log` VALUES ('2cf491e0ce624e6c9cc32947f8ffc12c', '1', '内容管理-内容管理', '1', '2015-05-26 10:42:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2d269e2994d647d7ab8ef7fc3cf493ab', '1', '内容管理-内容管理-内容发布', '1', '2015-05-28 10:33:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2dd0f063e394433985b4d7d450046f4f', '1', '内容管理-内容管理', '1', '2015-05-27 21:46:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2e594c55abb04ec6a89781026aef85f1', '1', '代码生成-生成示例-树结构', '1', '2015-05-26 00:35:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testTree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2f07ccb9ec8341f18e21f84d7a98d1cc', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:14:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2f20cdd1622141b0954dd7a36fe38037', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 00:15:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('2f56c979db3441248a31b9b3e529fd9d', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-26 10:21:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('2f72b40adfe941449600182725943566', '1', '系统登录', '1', '2015-05-26 10:14:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('2ff71f4875534d9ab8ad61366401c330', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-28 11:49:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('303db220cf2f487fa6c8e4ca7169366c', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-28 17:36:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('30519e5bb1404dabbcd21150fee4df7f', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:43:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3076dc1b33a34774802ff19b108bfeeb', '1', '系统设置-系统设置-角色管理-查看', '1', '2015-05-28 11:42:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/form', 'GET', 'id=1', '');
INSERT INTO `sys_log` VALUES ('309b1ab14a8741bfa05a6a97b7025bb2', '1', '系统设置-系统设置-菜单管理-查看', '1', '2015-05-28 11:49:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/form', 'GET', 'id=b7e206eebc8c400b85b5170e707896e4', '');
INSERT INTO `sys_log` VALUES ('309bf616cb5b4faf8e5f5c99591ac410', '1', '代码生成-代码生成-生成方案配置', '1', '2015-05-28 14:47:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('30f73d10013742e49f88e8c89afd896e', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 11:23:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('31476fe0c4bf4649bb98bba20786ebb3', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-29 23:16:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('320957e7913a4704b483cd0d0bf3622d', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-28 13:55:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('322ccaba58e94fcdb92d120094f7c05f', '1', '内容管理-内容管理-内容发布', '1', '2015-05-29 15:45:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('326ada95e9ff47579e25ffdcdb8f8ebc', '1', '系统登录', '1', '2015-05-29 16:06:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3274ecfa10a34336b7722d89307a30ea', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 11:22:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('32c88ce3c93f4846b96ca6255d355511', '1', '内容管理-内容管理', '1', '2015-05-29 22:35:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('333e9977e4a642af93904098d9c58387', '1', '我的面板-个人信息-个人信息', '1', '2015-05-27 21:36:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3366c358c74f46be8ed121451137d86e', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-26 11:23:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3383ab2b45ad4a7f80df02c6ba46af58', '1', '系统设置-机构用户-机构管理', '1', '2015-05-27 21:44:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('33f152432aa44bbf925176e4f10b7d51', '1', '系统登录', '1', '2015-05-29 16:12:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('33fa38cfa4174a7f93b36ef4d2a82c56', '1', '系统登录', '1', '2015-05-28 11:43:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('3470ab90b87d4c999ca2dc6147987428', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 10:14:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('348e422eb243439488139aa2ae0be956', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-28 11:45:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('349044dbc90a4d8baf41dbb35c00838c', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 00:36:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('34c8b4e7b0364669afb5fe8ae9da430f', '1', '系统设置-机构用户-用户管理', '1', '2015-05-28 11:21:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('34f38682eb5141e5a8873c56796fa9ce', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:42:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('351ff7e9b2c84107bb25d29859039e8d', '1', '内容管理-内容管理', '1', '2015-05-29 23:07:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('353e9595c16c49a4ab3020ae804319b8', '1', '内容管理-内容管理', '1', '2015-05-28 11:50:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('359d9942faf54bbdbda09f1d4002d541', '1', '内容管理-内容管理', '1', '2015-05-26 00:22:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('35ea623cf9134f46ac940a7e9e30fbd1', '1', '系统设置-机构用户-用户管理', '1', '2015-05-28 11:43:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('364a4d7da7a147ef8a36a0ccac952539', '1', '代码生成-生成示例-主子表', '1', '2015-05-26 10:18:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testDataMain', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3661e9ea1d254242b4351e14b8c47802', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 10:21:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('36c020d9087e41fa819ec15f35298aee', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 10:15:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('37182d4e4ce242af9173ef6a7bdbfde6', '1', '内容管理-内容管理-内容发布', '1', '2015-05-28 13:51:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('374a69b42f394109bb956f60ea506f63', '1', '系统设置-系统设置-角色管理', '1', '2015-05-28 11:44:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/', 'GET', 'repage=', '');
INSERT INTO `sys_log` VALUES ('3758dc2047d6485699c1d5e021b2f69c', '1', '系统设置-系统设置-字典管理', '1', '2015-05-26 00:07:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/dict/', 'POST', 'pageNo=2&description=&pageSize=30&type=', '');
INSERT INTO `sys_log` VALUES ('37641ed6bb894823aef04c497adf209e', '1', '代码生成-代码生成-生成方案配置', '1', '2015-05-28 12:11:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('37842404faa44a66a682d9e5f12eca66', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-05-29 13:52:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/comment/', 'POST', 'title=12&pageNo=1&pageSize=30&delFlag=2', '');
INSERT INTO `sys_log` VALUES ('37f74a0e8e334164bbc4cf5317ab3b4e', '1', '我的面板-个人信息-个人信息', '1', '2015-05-29 15:37:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3864031c0d52489f85699e16073a8bc8', '1', '我的面板-个人信息-个人信息', '1', '2015-05-28 11:21:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('38888cf840ca41a1a503e75c9aaa1808', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-28 10:33:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('38e434afe29544679c659abc932f4b4a', '1', '代码生成-生成示例-树结构', '1', '2015-05-26 10:18:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testTree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('38eb4777c67340f28f586fc7b6cf7e36', '1', '代码生成-代码生成-生成方案配置', '1', '2015-05-29 17:52:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('39145e53e87c4a94acc868400a5d5159', '1', '内容管理-内容管理', '1', '2015-05-26 11:27:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3914acce24454f579a173f5af8d9667c', '1', '内容管理-内容管理', '1', '2015-05-26 11:29:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('39471979eec247e586658f037e61d9b9', '1', '系统登录', '1', '2015-05-29 16:06:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3a2bbc1f3729440c8c1dc4fcd3d12776', '1', '内容管理-统计分析-信息量统计', '1', '2015-05-26 00:21:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/stats/article', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3abe244e25dc47678cafe06a8b205d53', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 00:22:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3ae188f5ee4b47dbb171d0c87e04e60b', '1', '内容管理-内容管理-内容发布', '1', '2015-05-29 22:35:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('3ae3730003dd4aa2b26062c6d25a3561', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 00:10:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3b488445c90b4c7bb8c24d98fcd9b79b', '1', '系统设置-机构用户-用户管理', '1', '2015-05-29 23:07:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3b8c0af0d2d24102aea18083dc374c7d', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 10:40:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3ba67e9eb4b94722b5d307e92c9d0977', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:41:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/form', 'GET', 'parent.id=1', '');
INSERT INTO `sys_log` VALUES ('3bb9b5597a914579a217da8dbaf4f684', '1', '系统设置-系统设置-角色管理', '1', '2015-05-26 00:17:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3bf68d0b9e1244edab41fca81136179f', '1', '系统设置-机构用户-用户管理-修改', '1', '2015-05-27 21:43:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/delete', 'GET', 'id=7', '');
INSERT INTO `sys_log` VALUES ('3c33a3ba52eb44c4a54dac4ec13bdceb', '1', '代码生成-生成示例-单表', '1', '2015-05-26 00:23:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testData', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3c45aa8554874739b31aa27da85cfd56', '1', '系统设置-系统设置-菜单管理-修改', '1', '2015-05-29 23:09:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/delete', 'GET', 'id=60', '');
INSERT INTO `sys_log` VALUES ('3cd7274a9c7c416f9d16948d695d57cf', '1', '代码生成-生成示例-主子表', '1', '2015-05-26 00:05:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testDataMain', 'GET', 'tabPageId=jerichotabiframe_32', '');
INSERT INTO `sys_log` VALUES ('3d7c85dadd854b55be98c497d7b38b46', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:12:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('3da9a629c1a0452fbe1ecd6cf4e9dc4f', '1', '代码生成-生成示例-单表', '1', '2015-05-26 00:05:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testData', 'GET', 'tabPageId=jerichotabiframe_31', '');
INSERT INTO `sys_log` VALUES ('3db463479f11459e9bfcfb537e8dc7c7', '1', '内容管理-内容管理', '1', '2015-05-26 00:13:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3dc37791467f434ea24e6623c4887d01', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-29 15:45:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3e50ccd19c274c298c3b37353d152dc2', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-05-26 10:14:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/comment/', 'GET', 'status=2', '');
INSERT INTO `sys_log` VALUES ('3e5ccb87d4d6484692dee751f1df7057', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:47:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3e6f0280bf6b43afb93151871f145de1', '1', '内容管理-栏目设置-栏目管理', '1', '2015-05-29 23:08:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/category/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3e712dbcf76f4cca81228eaf7f035e02', '1', '代码生成-代码生成-生成方案配置', '1', '2015-05-28 10:49:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3e7363ebce9c49f2a385b43f2c107830', '1', '系统登录', '1', '2015-05-28 14:52:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3e75ff438bc24faab2d93172fef3d39b', '1', '系统设置-机构用户-机构管理', '1', '2015-05-27 21:45:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3ed9c981918c4027a78154d4eac388f8', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 10:39:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3ee2d9a649894fc986e80712de9c03e3', '1', '系统设置-系统设置-角色管理', '1', '2015-05-26 00:22:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3ef5e85d1d3f466f91c9aa69dae6057e', '1', '系统登录', '1', '2015-05-28 11:32:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('3f19b809e80e4770b072288b007eb563', '1', '内容管理-内容管理', '1', '2015-05-26 11:26:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3f3723bec5164316bfdedba3b2c51af8', '1', '内容管理-内容管理', '1', '2015-05-28 11:21:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3f438defd2894996ab19488f244fffa2', '1', '内容管理-内容管理', '1', '2015-05-29 23:16:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('3f751a2ec0264f45bd64c3d368060dd2', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:41:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4075fb71383948feac0e3f623ab77fea', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 00:14:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('40d2cac84ec140e9b6e441f289014089', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-26 11:23:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('420edc2401e745bebad37084d705d510', '1', '系统设置-机构用户-用户管理', '1', '2015-05-28 14:45:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4230504568b341c2b682c85feec96b10', '1', '系统登录', '1', '2015-05-26 00:34:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('42862429c208488f87b4ea7eb274ab54', '1', '系统设置-系统设置-角色管理-查看', '1', '2015-05-29 15:44:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/form', 'GET', 'id=1', '');
INSERT INTO `sys_log` VALUES ('42b313d7c77c4070b19cf355f4081746', '1', '内容管理-内容管理', '1', '2015-05-26 00:15:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('431bc736c9eb4e8db8ec5ae2acebe3c9', '1', '内容管理-内容管理', '1', '2015-05-26 11:25:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4365c913cfc64fbf8c6cd2ca7191059f', '1', '系统设置-机构用户-用户管理', '1', '2015-05-28 11:43:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('439aa1b436384122a523529f6993a4e6', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-26 11:20:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4529cd81aefe4d09ac60d708b0960ff3', '1', '系统设置-系统设置-菜单管理-查看', '1', '2015-05-29 15:43:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/form', 'GET', 'id=77b3ad22809b4c0fa4c96ef96965a071', '');
INSERT INTO `sys_log` VALUES ('455f3d981bef4e8ca75b531a09c2d663', '1', '内容管理-内容管理', '1', '2015-05-26 10:21:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('45df58c8a33b45189cc24f59b7dd6350', '1', '在线办公-通知通告-我的通告', '1', '2015-05-26 00:14:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/oa/oaNotify/self', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('45e3156bed234308b8adfabc69569875', '1', '我的面板-个人信息-个人信息', '1', '2015-05-29 22:35:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('45ffae087a6547f0b57397d03cc79a44', '1', '我的面板-个人信息-个人信息', '1', '2015-05-27 21:46:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('461479f4acdf470b8e5a48dbfda506df', '1', '内容管理-内容管理', '1', '2015-05-26 00:36:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('46209bd6418f42829d1029e5fb1c8c58', '1', '系统登录', '1', '2015-05-26 00:22:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('46bc8fa99baa4ee39eb5f171f1ff6c5c', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:41:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('46c17e42172b46cc8cdcbb5dac213747', '1', '在线办公-通知通告-我的通告', '1', '2015-05-26 00:18:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/oa/oaNotify/self', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('47307999113541efb046abfdbdaa71f4', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-29 15:42:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4732e4c52b9449c8b9a28b07d506960b', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-26 10:15:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4780bf18053f469dbaf117d165c4d159', '1', '系统设置-系统设置-角色管理-查看', '1', '2015-05-29 16:07:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/form', 'GET', 'id=1', '');
INSERT INTO `sys_log` VALUES ('47a22efedce4459fb954a3ad6a7312ec', '1', '系统设置-机构用户-用户管理', '1', '2015-05-28 13:55:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('47f34cb511984def9849c04f3a0a770e', '1', '代码生成-生成示例-主子表', '1', '2015-05-26 00:34:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testDataMain', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('48619111f154491dab4a0c6984d8c652', '1', '内容管理-内容管理', '1', '2015-05-26 10:43:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('48a5bda193b64f358b294ef66a88dd85', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 00:23:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('48e4cea9f54e485f879649fe24ad7b3e', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:46:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('48ead6926ebd4a3f97f1567b0ee18afa', '1', '内容管理-内容管理', '1', '2015-05-28 11:45:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('491584a7755d45f2a1e81814db458f9c', '1', '系统设置-日志查询-日志查询', '1', '2015-05-26 00:11:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/log', 'GET', 'tabPageId=jerichotabiframe_85', '');
INSERT INTO `sys_log` VALUES ('4923a7d42b844cb9b8c0526357d920c2', '1', '内容管理-内容管理-公共留言-查看', '1', '2015-05-26 00:03:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/guestbook/', 'GET', 'tabPageId=jerichotabiframe_19&status=2', '');
INSERT INTO `sys_log` VALUES ('4936294bd10c4a759d4a96c904d3d2bf', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 00:23:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4938423fac344477badf0678b742a37e', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 10:39:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('49401112c8844d1c90f2fea85973dca5', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 00:36:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('49a0cb0f6b2b41dc9c0c9e57592f9215', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-26 00:11:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('49ec87dbc7d64715839dc6a69ae10a14', '1', '内容管理-内容管理', '1', '2015-05-27 21:45:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4a2befa2f0e04472ab9a513889b20909', '1', '在线办公-通知通告-我的通告', '1', '2015-05-26 00:13:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/oa/oaNotify/self', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4a642a33220d477e96f939bd4b30f77e', '1', '系统登录', '1', '2015-05-29 15:42:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/tree', 'GET', 'parentId=2', '');
INSERT INTO `sys_log` VALUES ('4a9a30e611aa43e680329c1c3f63f7bd', '1', '内容管理-内容管理', '1', '2015-05-26 10:14:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4b554e3f518840feb2cccd7ce5e1878c', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:44:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('4b6dd6e4bb9c4dcf9ecf0b7d3867d552', '1', '系统设置-系统设置-菜单管理-查看', '1', '2015-05-26 00:05:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/form', 'GET', 'id=68', '');
INSERT INTO `sys_log` VALUES ('4b82c746b444496e8fbbba6e26dc2239', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 10:42:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4b9ac4efdac84818a99e7ebab899233e', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 10:42:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4bc514d240a24afeafdb5c17aa5d07a9', '1', '系统设置-日志查询-日志查询', '1', '2015-05-29 22:36:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/log', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4bed6f379f4d4249a7f0340da7d37569', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 00:15:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4beffe1a46ee46c6bfa917b905a86d51', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 00:16:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4ca670a2a16645aea64b4343996f8acc', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 00:34:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4cd4945efb2848acb9af3b5ddea8b019', '1', '内容管理-内容管理-内容发布', '1', '2015-05-28 11:44:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4cf321fcff21453e9b858ef9cf02b0c7', '1', '内容管理-栏目设置-栏目管理', '1', '2015-05-27 21:46:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/category/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4d2fcca3fc8b46c0b84a12c398e6ab80', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 00:36:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4d3908407fdc4887985c9345142e9695', '1', '内容管理-内容管理', '1', '2015-05-26 00:47:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4d4df917373e4751b9485a5ab42ac997', '1', '系统设置-机构用户-区域管理', '1', '2015-05-26 00:04:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/area/', 'GET', 'tabPageId=jerichotabiframe_27', '');
INSERT INTO `sys_log` VALUES ('4d5e80a0bcc0432d9f58727ea124a645', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 11:22:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4d77f6664285484195e9df32812728f0', '1', '系统设置-机构用户-用户管理', '1', '2015-05-28 11:45:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4dc386aec731465388607fdf665ae9dd', '1', '内容管理-内容管理-内容发布', '1', '2015-05-29 23:15:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4e2557b6be374c3ca215a8c241c93b50', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 11:35:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4ebbfa74730f4d5da8ecef7b1b2f2613', '1', '内容管理-内容管理-图片管理', '1', '2015-05-26 11:25:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4ee8a50485354966aa97e3a4a184bd89', '1', '系统设置-机构用户-用户管理', '1', '2015-05-27 21:47:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4f25eecd29b84fd9ac9bc2a93bc8c985', '1', '内容管理-内容管理', '1', '2015-05-28 14:45:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4f44a5b0760e488581af94003d6e4441', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-29 22:35:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4f9a26b3f5aa43f994fbe6bdc6598ef7', '1', '我的面板-个人信息-修改密码', '1', '2015-05-27 21:36:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/modifyPwd', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('4f9f281091d645fb8e0d895e48634a39', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-28 11:41:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4fc4a247048f4deaaaadb2c04be7e590', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:47:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('4fc4e55c05204080b91fe197c6593643', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 11:32:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('50287007d9924a0eac7dd2844d2aaf4a', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:41:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('50457d3442354962ad07a1a1bd96817e', '1', '内容管理-内容管理-内容发布', '1', '2015-05-29 16:12:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('504f06133722468194f81dc2b54ce8fa', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 11:22:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('505a11a2fd764c5d8a6e055e57337def', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 11:26:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('507bc78fa93e48908b383a12b53bc176', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:14:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5085743bd2e14f378796409b6a5bd837', '1', '内容管理-内容管理', '1', '2015-05-26 10:14:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('50fa538b801a42178e04b902b8b428da', '1', '内容管理-内容管理', '1', '2015-05-28 11:44:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('51241362247c4d4a9493d304ffc0cdb7', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 14:48:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('51393aa9313d49b3a231a7e292b217e7', '1', '内容管理-栏目设置-站点设置', '1', '2015-05-26 00:22:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/site/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('51432c3ecd2e4e038b740d2334e99d40', '1', '内容管理-内容管理', '1', '2015-05-28 17:36:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('517487fc62854c9baf9027214b1259bb', '1', '内容管理-内容管理', '1', '2015-05-28 13:51:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('520b758d680f48a59aba76c22a4989f2', '1', '系统设置-系统设置-字典管理', '1', '2015-05-29 22:36:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('52400ee6c212484b8323aae02e24b5b0', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 11:41:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('52a68e0bda81429f97ec9d120b68a18d', '1', '内容管理-内容管理', '1', '2015-05-28 11:45:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5304434b3b9c495a9c68a4643dbb55f4', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 10:15:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('531a622788bf4d96b8d6bc7211beed4b', '1', '系统设置-机构用户-机构管理', '1', '2015-05-26 00:18:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5374dbcb72994608a5ee064347e5ff4a', '1', '系统设置-机构用户-用户管理', '1', '2015-05-27 21:36:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('53dd525c66b3492e89780877289dd69c', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:16:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('54f0750f887040c5a52c9a9a435b6576', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-29 23:07:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('54f4ca356a0c4697b73cd2b57c0c1f49', '1', '内容管理-内容管理', '1', '2015-05-28 10:33:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('55068d484a3a4e1abaf207ba7d013cba', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 10:21:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5518a0eb943d4dfea1bc7f2d365298c9', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 11:26:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5522315737394e898e1b46273d72df20', '1', '系统设置-系统设置-角色管理', '1', '2015-05-26 00:11:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/', 'GET', 'tabPageId=jerichotabiframe_83', '');
INSERT INTO `sys_log` VALUES ('558b2797af644302b5a82d079c018d0c', '1', '内容管理-内容管理', '1', '2015-05-28 11:50:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('55943c759653450bb5af4ea86f98ed49', '1', '系统设置-系统设置-菜单管理-修改', '1', '2015-05-28 11:48:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/save', 'POST', 'id=&parent.id=96a0df838dcd42fb83363ecbaa15222c&parent.name=图片管理&name=修改&href=&target=&icon=&sort=60&isShow=1&permission=content:goPhoto:edit&remarks=', '');
INSERT INTO `sys_log` VALUES ('55d9c00d03b642a39d92f33d4675bb3c', '1', '系统设置-系统设置-角色管理', '1', '2015-05-26 00:17:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('56a6f150c2884a6e8e42ad52a02aca09', '1', '内容管理-内容管理', '1', '2015-05-26 10:41:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('570d3cad7a3a489bace814ba16118b3b', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 11:21:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('577a568aff8d4fdf9adadd5616f631e0', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:41:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=1&parentIds=0,1,', '');
INSERT INTO `sys_log` VALUES ('5798d6ffeb9648769fa4b23f36d1efed', '1', '系统设置-机构用户-机构管理-修改', '1', '2015-05-27 21:41:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/delete', 'GET', 'id=3', '');
INSERT INTO `sys_log` VALUES ('57c5ac7856a4425ebeb7371623955cf7', '1', '内容管理-内容管理', '1', '2015-05-26 11:23:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('57c869d630e24cbcb13cbbe532db45df', '1', '内容管理-内容管理-内容发布-文章模型', '1', '2015-05-26 00:10:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/article/', 'GET', 'category.id=3', '');
INSERT INTO `sys_log` VALUES ('57f1ced3f28e4c919de0ba04540cedf6', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 11:29:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('583b1e34ed7e4934a20779a5fc2f3dbd', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 14:45:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('589241526db94edb93b41dabf0e4c84b', '1', '内容管理-栏目设置-站点设置', '1', '2015-05-29 23:08:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/site/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('58ccc6c471ee451a9a2655513b049f1f', '1', '我的面板-个人信息-个人信息', '1', '2015-05-28 13:44:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('58f0c6332459491180a7c759ab61c616', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:43:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('59085f8807ac4887af2a7dad2e7cf355', '1', '内容管理-栏目设置-切换站点', '1', '2015-05-26 00:22:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/site/select', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5929615c0adf44318e017262c1433776', '1', '系统设置-系统设置-菜单管理-查看', '1', '2015-05-26 11:26:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/form', 'GET', 'id=96a0df838dcd42fb83363ecbaa15222c', '');
INSERT INTO `sys_log` VALUES ('5933b2917e2d421bbc94ef2b7e0f9460', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 11:42:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('59341560a2be4f2f8e801b7dfb582ac6', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 10:27:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('59892fbaf8a04d209a1adebd235636c6', '1', '我的面板-个人信息-个人信息', '1', '2015-05-28 10:30:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('59b3edc4a3404a499fe3444032a52899', '1', '系统设置-系统设置-角色管理-修改', '1', '2015-05-26 00:17:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/assign', 'GET', 'id=1', '');
INSERT INTO `sys_log` VALUES ('59c676a169bf4d308304bb3517e0ed3c', '1', '系统登录', '1', '2015-05-28 13:55:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5a08e0f6f2c54f7cb0cf5adf78ee12bb', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-28 11:48:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5a2235e94d9445adbd2f0bebece4da72', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 11:25:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5a5968fe40c540afb8174892f1d2778f', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 10:33:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5a6824b8c1e54300ae519a6411a18f66', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-05-26 00:23:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/comment/', 'GET', 'status=2', '');
INSERT INTO `sys_log` VALUES ('5a8ee99ce7fc49368daf8dd24ef82f20', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:43:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', 'repage=', '');
INSERT INTO `sys_log` VALUES ('5af1b147d5d94d5cbdae95169db5e8d1', '1', '系统设置-机构用户-用户管理-修改', '1', '2015-05-28 11:43:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/checkLoginName', 'GET', 'oldLoginName=thinkgem&loginName=admin', '');
INSERT INTO `sys_log` VALUES ('5b8a520f2d0c45ca985ec68c2442e7c7', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-28 15:37:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5ba5bebd35fa4b32ad44f21da2341538', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 10:14:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5bba2dab1884449e86d613a231d4bd88', '1', '代码生成-代码生成-生成方案配置', '1', '2015-05-26 00:23:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5bbd69cfc4414422baeed49b7b1acd1c', '1', '代码生成-生成示例-主子表', '1', '2015-05-26 00:34:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testDataMain', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5bc53b1ab9424b358bd6b14f418d7a06', '1', '系统设置-机构用户-用户管理-修改', '1', '2015-05-27 21:43:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/delete', 'GET', 'id=11', '');
INSERT INTO `sys_log` VALUES ('5bfcfb205c784df4929227eef011a1af', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 00:09:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', 'tabPageId=jerichotabiframe_63', '');
INSERT INTO `sys_log` VALUES ('5c07ddf9d730409c89e1cfec15a7fde1', '1', '内容管理-内容管理', '1', '2015-05-29 16:07:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5c527894c0894d4895f19fa6f29c150b', '1', '系统登录', '1', '2015-05-27 21:47:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('5cc3b8b67e184741bec4543bc57d8c42', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 10:42:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5cd071ea960e4b2698a9bb318441c983', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:44:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('5cd692cd36e648e0b5bd31c779eed469', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:44:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/form', 'GET', 'parent.id=', '');
INSERT INTO `sys_log` VALUES ('5cf43070f1df41f0935f0754e52256d3', '1', '内容管理-内容管理', '1', '2015-05-27 21:47:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5cf62dbccda64de7abcadd5df2285d27', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:43:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', 'repage=', '');
INSERT INTO `sys_log` VALUES ('5d385147e81140369e73d0d1d544b0d9', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 00:13:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5d861e1cf52c473da522ea45200767c1', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-29 23:07:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5d8bdc819c724406ae2789a2cd362d17', '1', '我的面板-个人信息-个人信息', '1', '2015-05-29 17:52:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5dbde5632ca84a8ab29f2e3f376a4cbe', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-05-29 13:52:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/comment/', 'POST', 'title=12&pageNo=1&pageSize=30&delFlag=2', '');
INSERT INTO `sys_log` VALUES ('5e39777f4e0248428496d6dc8a91e6b9', '1', '代码生成-代码生成-生成方案配置', '1', '2015-05-26 10:21:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5e3af9cf4cf141c68082c3b31d6193b8', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:14:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5e57bbfaa9ca44eba6d37b7f5b0d1c38', '1', '我的面板-个人信息-个人信息', '1', '2015-05-27 21:36:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('5e8a0b1ee4854e38968e86cf31f9dcba', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-26 00:34:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5e8b26b6ea3d4161b7311d72167ff980', '1', '系统设置-机构用户-机构管理', '1', '2015-05-29 16:06:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5e916b843a7144f0bd958ffe1af46529', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-29 15:45:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5e9557489d8a4427bbbe5019c95db104', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:09:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'POST', 'phone=8675&email=thinkgem@163.com&name=系统管理员&remarks=最高管理员&photo=&mobile=8675', '');
INSERT INTO `sys_log` VALUES ('5ea1a226eb5243d1a8dbd44d2e319e3f', '1', '内容管理-内容管理-标签管理', '1', '2015-05-29 16:13:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goTag', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5ea8f4150bdb4156a4b8558a35516180', '1', '系统登录', '1', '2015-05-28 15:07:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5ee7cd3851ba4d1a84977b08c3dbb273', '1', '系统设置-系统设置-角色管理-查看', '1', '2015-05-28 11:44:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/form', 'GET', 'id=2', '');
INSERT INTO `sys_log` VALUES ('5f469cfd44f948d99c95b578cf086b2f', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 00:22:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5fa6d053a4f142a9b9ec7796d8a3e981', '1', '系统设置-机构用户-用户管理', '1', '2015-05-28 14:48:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('5ff161db591d4522ac64de190cebb00a', '1', '系统设置-机构用户-用户管理', '1', '2015-05-29 16:06:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('605c7c0d4d014261bff83d0a9823c13b', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-05-26 11:22:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/comment/', 'GET', 'status=2', '');
INSERT INTO `sys_log` VALUES ('60bd98e94b204c53b515d1be4324453c', '1', '内容管理-内容管理-图片管理', '1', '2015-05-26 11:29:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('60d59af0cee84148ab005603fd37554b', '1', '系统设置-系统设置-菜单管理-修改', '1', '2015-05-29 23:10:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/delete', 'GET', 'id=32', '');
INSERT INTO `sys_log` VALUES ('61231ed7cfab4f869e25fc08ebceb586', '1', '我的面板-个人信息-个人信息', '1', '2015-05-28 17:38:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('613b1d0da90a48358c101c99a3cfaa67', '1', '内容管理-内容管理-内容发布', '1', '2015-05-29 23:21:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('618055537af64c2f95ac23f9da1621cc', '1', '我的面板-个人信息-个人信息', '1', '2015-05-27 21:47:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('618480c795234a5a89eb45f966ed1398', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:41:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=1&parentIds=0,1,', '');
INSERT INTO `sys_log` VALUES ('618d071ee80943f2b99b63a68d66603c', '1', '系统设置-机构用户-机构管理', '1', '2015-05-26 00:17:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('61918de7065d4494a1b5d0e0e7eadfd4', '1', '内容管理-内容管理', '1', '2015-05-26 10:15:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6196a503807d4e0a976aeab8e2021275', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 00:23:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('61c036c44e104971b7f55c5ad8fa9521', '1', '内容管理-内容管理-内容发布', '1', '2015-05-28 10:33:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('61c18e36fd64420a894be942c7423102', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-27 21:45:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('61c7f8516ae444bd828c5d12a05205c9', '1', '内容管理-内容管理-图片管理-查看', '1', '2015-05-28 13:52:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('61e12fd2696843bebfe17b5141f6428a', '1', '代码生成-生成示例-主子表', '1', '2015-05-26 00:36:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testDataMain', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6256d657f1c64b48986457c9a8c10765', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-28 17:34:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('62f43d7002f747c3b06c4d3e31566d34', '1', '内容管理-内容管理', '1', '2015-05-26 10:42:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('637be71f414843a4a9c3533f14e6e6d1', '1', '系统设置-机构用户-区域管理-查看', '1', '2015-05-26 00:16:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/area/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('63ab1fd2321d46a9a6d6da825ea96ef4', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:44:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('63af4565451845c7b31c2eb62b52a254', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 00:12:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', 'tabPageId=jerichotabiframe_92', '');
INSERT INTO `sys_log` VALUES ('6456d4d02ada407f9c21ca809c353a96', '1', '在线办公-通知通告-我的通告', '1', '2015-05-26 10:15:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/oa/oaNotify/self', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('64651953799541ccb51a1697e8f13962', '1', '内容管理-内容管理', '1', '2015-05-26 10:15:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('647b7968fa7d43ad9a7b50fd3bd36567', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-05-26 10:42:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/comment/', 'GET', 'status=2', '');
INSERT INTO `sys_log` VALUES ('6489af44e3ee4a458921683240e08f7e', '1', '内容管理-内容管理-内容发布', '1', '2015-05-29 22:36:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6493137980fc422a9162e1134ca1d252', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 11:25:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('64ece45f6b774555820d07690f15ff51', '1', '内容管理-内容管理', '1', '2015-05-26 10:14:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6558f15217f144bf887c1e5394fe62f2', '1', '我的面板-个人信息-个人信息', '1', '2015-05-28 17:24:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('655f37d362b54cd7aa839be1f3574661', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 00:14:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('65a13b3d1a3d44d2aa546c4193c66d9c', '1', '内容管理-内容管理', '1', '2015-05-29 23:21:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('65c6afa1931843a9a97e25c1f713876a', '1', '内容管理-内容管理', '1', '2015-05-26 00:23:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('65e012f2a8034669bd21b1b168050cad', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 13:55:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6606837048ea48f5a23a981a30ceb140', '1', '内容管理-内容管理', '1', '2015-05-27 21:47:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('663f8c7542464b45a54d93917cdcb702', '1', '我的面板-个人信息-个人信息', '1', '2015-05-29 13:51:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('66abb33b484e4e779d425e9fe50cff33', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 10:27:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('66c9ec0d28e34d39a30dff8373b29a00', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-28 10:30:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('67057c69efed4b5cb847003099ecef17', '1', '内容管理-内容管理', '1', '2015-05-26 11:29:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6716ff0073804f2ca0f46a0f0a2fb23f', '1', '系统设置-机构用户-用户管理-修改', '1', '2015-05-27 21:43:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/delete', 'GET', 'id=3', '');
INSERT INTO `sys_log` VALUES ('68351d29c2b541788bbb54a5b531c432', '1', '系统登录', '1', '2015-05-28 11:35:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('6865e56904294d0383406f6aba7cdb10', '1', '我的面板-个人信息-个人信息', '1', '2015-05-28 11:49:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('68a8da5ee7c4471aa9ebb6d4a3be591e', '1', '内容管理-内容管理-公共留言-查看', '1', '2015-05-28 11:22:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/guestbook/', 'GET', 'status=2', '');
INSERT INTO `sys_log` VALUES ('68badcebc6cb420c92d521158e961179', '1', '内容管理-栏目设置-切换站点', '1', '2015-05-26 00:22:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/site/select', 'GET', 'id=2', '');
INSERT INTO `sys_log` VALUES ('68c7d753b9b646d296f7013158aaab51', '1', '系统设置-系统设置-角色管理-查看', '1', '2015-05-28 11:49:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/form', 'GET', 'id=1', '');
INSERT INTO `sys_log` VALUES ('68f51b4f3cf34fef993a751ad0a0110a', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 00:36:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6911c2c3c87744ffa43a8b14f0b319a3', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 00:20:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6920f7ee34cc4f7e8d173e4805d52f3b', '1', '系统设置-机构用户-用户管理', '1', '2015-05-28 11:45:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('69929ec78986414b96f3b4f8883001e8', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-26 11:23:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('69ba738a4d484b5f95bcead03c60bb13', '1', '内容管理-内容管理', '1', '2015-05-26 11:26:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('69e112f22afa42da98bb2b9fcc027529', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 00:18:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6a076260beb5430e8587add7b7ba3081', '1', '系统设置-机构用户-区域管理', '1', '2015-05-29 23:21:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/area/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6a32d1adaf22494caee9fe5fed616147', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 10:15:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6a3f63cbc71447ab9cc1f1f6e4683475', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-26 11:26:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6aa163f6d818482fb215b8523780274c', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 00:34:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6aba893181d44accb6da8b569658a6ee', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:44:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6ae5cd87ee3c4c8688d208ff76e27b99', '1', '内容管理-内容管理', '1', '2015-05-28 14:48:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6b3d46296ff64beb87d0ebb8207b0230', '1', '代码生成-代码生成-生成方案配置', '1', '2015-05-26 10:32:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6b7489a068604a64b32e6b86324017a9', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-29 23:16:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6bcfcb315ba343f9ac760caab85b8251', '1', '内容管理-内容管理-内容发布', '1', '2015-05-28 14:48:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6bd2bd23c0ae473dbb15189d07f854ed', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-26 11:22:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6c0e530daba0490da11fbeb379a250db', '1', '代码生成-生成示例-树结构', '1', '2015-05-26 00:15:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testTree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6c21a5c4301a46638756f1526d9eac91', '1', '系统设置-机构用户-用户管理-修改', '1', '2015-05-27 21:43:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/delete', 'GET', 'id=12', '');
INSERT INTO `sys_log` VALUES ('6c8a274c36e74c64b2ad4f8681694437', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:13:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('6d5607c823fb4ce6b0a5df8dec0b5db2', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-05-29 23:08:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/comment/', 'GET', 'status=2', '');
INSERT INTO `sys_log` VALUES ('6d752a358b714d8894d49aab4bc0d970', '1', '系统设置-系统设置-角色管理-修改', '1', '2015-05-28 11:49:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/save', 'POST', 'id=1&office.id=2&office.name=公司领导&oldName=系统管理员&name=系统管理员&oldEnname=dept&enname=dept&roleType=assignment&sysData=1&useable=1&dataScope=1&menuIds=1,27,28,29,30,71,56,57,58,59,62,88,89,90,63,73,74,64,65,66,69,70,72,31,40,41,42,43,44,45,46,47,48...&officeIds=&remarks=', '');
INSERT INTO `sys_log` VALUES ('6d7f44f606bc485eb727cf7ee05dfb32', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:43:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6db89e0fbf4240a3a9e4e5fecdd3f3d6', '1', '系统设置-机构用户-用户管理', '1', '2015-05-28 11:50:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6dc3ece7809148b09baef1141d3eb6b7', '1', '我的面板-个人信息-个人信息', '1', '2015-05-29 23:07:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6de62cc77fe9434b9c6d3ba7461f4ab4', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 11:22:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6e177429bd0e44fdbdb5b0dc4e5a099c', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:16:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6eb99d8fb7f8447a97629fda37adea91', '1', '内容管理-内容管理', '1', '2015-05-26 00:03:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6eea403133b648cfaa78f2a1f51047cf', '1', '系统设置-系统设置-字典管理', '1', '2015-05-28 11:21:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6efa02fb597346dea3e06b065d2a50a4', '1', '代码生成-生成示例-树结构', '1', '2015-05-27 21:48:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testTree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6f55d6e2ccfa49aabf22d73606cda4de', '1', '内容管理-内容管理-内容发布', '1', '2015-05-29 13:51:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', 'tabPageId=jerichotabiframe_1', '');
INSERT INTO `sys_log` VALUES ('6f571a9c749b489f9c5a3273de80b5a9', '1', '内容管理-内容管理', '1', '2015-05-28 14:45:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6f6331b2ccf34078bb740f928faf6514', '1', '我的面板-个人信息-修改密码', '1', '2015-05-26 00:47:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/modifyPwd', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6f90e7bec60d46d980c08af1b0d3f599', '1', '我的面板-个人信息-个人信息', '1', '2015-05-29 23:17:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('6fac43c7804447b5bf68c446601305bc', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-29 23:09:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('700199d29f274e32b4bf3d8f5bb64729', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 00:20:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('706faba9cc2e4edc8c3b6a545a9ea552', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:40:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('70d62a7b5a3f455da0bc36b1f29422f2', '1', '系统设置-系统设置-字典管理', '1', '2015-05-27 21:37:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/dict/', 'POST', 'pageNo=3&pageSize=30&type=&description=', '');
INSERT INTO `sys_log` VALUES ('713e2dd8e1f1484e922a803e0c0d38c4', '1', '系统登录', '1', '2015-05-28 11:50:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('7274c62ac09048de963d5abda6c9ba4f', '1', '系统设置-机构用户-区域管理', '1', '2015-05-26 00:16:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/area/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('72907e79dafa473586612168b2b9753e', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 10:39:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('72c99bc527b14bb5b216aa0f647088b6', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:15:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('72d3460f8736433f8ab1ca4cb220e5bd', '1', '系统登录', '1', '2015-05-29 13:51:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('72f26f8cda634354b6a7ac106df564a2', '1', '代码生成-代码生成-生成方案配置', '1', '2015-05-26 00:36:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7310f917a99d4f6f92122bc039aa9229', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-29 23:09:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7369444005704c6a968d05ff4b5a5c65', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 00:13:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('74097c2adda24faf82a0a3c26b425020', '1', '系统设置-系统设置-菜单管理-修改', '1', '2015-05-26 11:27:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/save', 'POST', 'sort=110&remarks=&id=96a0df838dcd42fb83363ecbaa15222c&name=图片管理&href=/content/goPhoto&parent.name=内容管理&icon=&permission=&parent.id=40&target=&isShow=1', '');
INSERT INTO `sys_log` VALUES ('7423dc9e64444db59bc6f0e7d2598807', '1', '内容管理-内容管理-内容发布-文章模型', '1', '2015-05-26 00:10:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/article/', 'GET', 'category.id=2', '');
INSERT INTO `sys_log` VALUES ('74496649dd3d4cc6946b933406cf0c3a', '1', '系统设置-机构用户-机构管理', '1', '2015-05-29 22:35:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('74a26f8f554c4a59822d23022e1e10d1', '1', '系统设置-机构用户-机构管理', '1', '2015-05-27 21:44:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('74afadba7393495bbe20545c55185efa', '1', '内容管理-内容管理', '1', '2015-05-26 00:23:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('752309b5e71e494ebb0dfaa7d6ab1585', '1', '内容管理-统计分析-信息量统计', '1', '2015-05-29 23:08:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/stats/article', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('757a8b5aaeec4518a94af64b5343e64f', '1', '系统设置-系统设置-字典管理', '1', '2015-05-26 00:07:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/dict/', 'GET', 'tabPageId=jerichotabiframe_49', '');
INSERT INTO `sys_log` VALUES ('758e43a700fd4a3db0e5fa8985bdd34d', '1', '内容管理-内容管理-内容发布', '1', '2015-05-29 23:16:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7591e777202949ab9a9dd3de56d9cee8', '1', '内容管理-内容管理', '1', '2015-05-26 10:42:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('75b55abce5ee49e191b6f3205b0855fb', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 00:34:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7615a67b1d0b46808276414c1435f0ac', '1', '内容管理-内容管理', '1', '2015-05-29 23:10:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7651dfeff74a46feaf03524deea9299e', '1', '内容管理-内容管理', '1', '2015-05-29 22:36:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('765f96641b02406088cf39884158ae18', '1', '系统登录', '1', '2015-05-26 10:24:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('76b09d7480da4d8db6586d70e38561e4', '1', '内容管理-内容管理-图片管理', '1', '2015-05-26 11:29:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('76f1c19686db4b4f8ac5c4e3aaf7f576', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 10:15:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('77440c4426994876b8a6737911e64de3', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 10:21:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7746d75a526d44369c85b6249f6072fd', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-26 11:26:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('776c43a822e84361a33ec64f0335aedb', '1', '系统设置-机构用户-用户管理-修改', '1', '2015-05-27 21:43:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/delete', 'GET', 'id=8', '');
INSERT INTO `sys_log` VALUES ('779befc8c8994acfa6af33e106750ab8', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-28 11:44:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', 'repage=', '');
INSERT INTO `sys_log` VALUES ('77a2580529c942d1a657b309d1eaa845', '1', '内容管理-内容管理', '1', '2015-05-26 00:10:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('77fbc55f8d6e4a1ba9139acd45f15e55', '1', '我的面板-个人信息-个人信息', '1', '2015-05-27 21:46:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7813c79115324687bc27c1432ff76ee6', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 00:35:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('782d34de727842b08e91b6334e453cb8', '1', '内容管理-内容管理', '1', '2015-05-26 11:29:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7831177fbe854cdb9df03d6e5b63b062', '1', '内容管理-内容管理', '1', '2015-05-28 11:27:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7849a56155d448378e4916a6210a9424', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-29 17:52:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('787379dac3054d478e0a680c4217b031', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-28 11:43:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('78b6c571beb34801b09efda815d9081f', '1', '我的面板-个人信息-个人信息', '1', '2015-05-28 10:45:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('78dfa7101f0b4702bd091534b7a32e89', '1', '内容管理-内容管理', '1', '2015-05-28 14:48:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('78ef5bfca61c495ebe082ad60f8c78d8', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-26 00:04:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', 'tabPageId=jerichotabiframe_28', '');
INSERT INTO `sys_log` VALUES ('791805d62eed4ffdac630ab565527356', '1', '我的面板-个人信息-修改密码', '1', '2015-05-26 00:16:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/modifyPwd', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('799b8a48a3104a949a619653405cb46d', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:44:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('79a5544802ab40c18253be0be1323cf5', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:47:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('79dabf72dba8498187d941b13557cb41', '1', '系统设置-机构用户-机构管理-修改', '1', '2015-05-27 21:41:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/delete', 'GET', 'id=6', '');
INSERT INTO `sys_log` VALUES ('79de890ad60949b7a4fd7973ae95958a', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 10:24:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7a27d346dbbf435ca6342b46cc74e7fa', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 11:28:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7ac2391b3aa84223bb3211fed83082b8', '1', '系统设置-机构用户-用户管理', '1', '2015-05-27 21:46:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7ac546a496b54065ac460ebda49ab1db', '1', '我的面板-个人信息-个人信息', '1', '2015-05-28 11:50:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7af6166196ca47d2813c1fda7244c6b5', '1', '内容管理-内容管理', '1', '2015-05-28 11:21:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7b280c7144604bd28b55537ad9fdd478', '1', '内容管理-内容管理', '1', '2015-05-26 10:42:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7b47d7fcb5414ad69736bbd4366753dd', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:46:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7b69b2b48da643cbac4288172a3b7869', '1', '内容管理-内容管理-内容发布-文章模型', '1', '2015-05-26 00:20:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/article/', 'GET', 'category.id=3', '');
INSERT INTO `sys_log` VALUES ('7b780b0e9c7b438399bb98eeb8320bc8', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:42:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('7c07fb76171d499b8d677469e9d6f38c', '1', '系统设置-机构用户-用户管理', '1', '2015-05-27 21:36:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7c395588c1ed40ac947d0e55af1e6f6d', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 10:32:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7c56e6b516784f4397b58a8e584846e3', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 10:20:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7cab46e96eb64b82a1ddcf4dc90228f3', '1', '系统设置-日志查询-日志查询', '1', '2015-05-27 21:38:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/log', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7d57d4a533424b46886b205fc67b48af', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-28 14:48:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7d8513c27b84411aaf48e0a76977ee50', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:43:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', 'repage=', '');
INSERT INTO `sys_log` VALUES ('7de8df374e2a475ebb01da90eeb27858', '1', '代码生成-代码生成-生成方案配置', '1', '2015-05-26 10:26:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7deb3c98a67c434bb5b23ecdb01c3c24', '1', '内容管理-内容管理', '1', '2015-05-26 10:39:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7e5923665a8242c5939b8b3172e435d0', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-29 15:44:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7e5b02cedb474caabb43403fd0ec0b5d', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:40:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('7e60c0864d49439a903daad02552601a', '1', '系统设置-系统设置-角色管理', '1', '2015-05-29 15:44:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7e847aa02f2d4211ad6cbf207dbf043a', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 14:52:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7ed4ab43900a4ea0b4939962bed44690', '1', '内容管理-栏目设置-栏目管理', '1', '2015-05-26 00:22:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/category/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7f0c15c030ae4fcf959833d6ee450e99', '1', '系统设置-机构用户-用户管理', '1', '2015-05-29 16:06:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7f468a173c9d4283a30ce49408dbdac2', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 00:34:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7f48e5811981409c93b42a8e859f432f', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:36:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7f74420556234494909f7134da61fa33', '1', '代码生成-代码生成-生成方案配置', '1', '2015-05-26 00:05:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genScheme', 'GET', 'tabPageId=jerichotabiframe_30', '');
INSERT INTO `sys_log` VALUES ('7f9a5d002142489fa012b5b736f2ac14', '1', '系统登录', '1', '2015-05-28 17:34:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/tree', 'GET', 'parentId=2', '');
INSERT INTO `sys_log` VALUES ('7fa12201e4ae426490a69c799a41caa9', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 11:25:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('7fac8b10fec748de9cfbd8f1bc564186', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:44:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('805c2749c7db43eaa2ba39f74079c1b8', '1', '我的面板-个人信息-个人信息', '1', '2015-05-28 10:30:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('805ded69cc9d45fd89eaf1abbf0c1bcf', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 11:28:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('819056946bed4e4b9c07ed22efa429b7', '1', '我的面板-个人信息-个人信息', '1', '2015-05-27 21:47:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('81d2512e07524d62ac6b96fbad5314ab', '1', '系统设置-机构用户-机构管理', '1', '2015-05-26 10:21:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('81fe5b11d45c494299d6f89a843eeacd', '1', '内容管理-内容管理', '1', '2015-05-26 10:21:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('824065a455e244e99018e4a71477d6c7', '1', '内容管理-内容管理', '1', '2015-05-28 10:33:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('825753677fef438d8b918695bc72418f', '1', '系统设置-机构用户-用户管理', '1', '2015-05-27 21:44:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('827f190e1e784f3f81eddeb3059ba273', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-05-26 10:15:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/comment/', 'GET', 'status=2', '');
INSERT INTO `sys_log` VALUES ('82830e368ab54123b816ee73752fe49a', '1', '内容管理-内容管理', '1', '2015-05-27 21:46:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('82880ceb4d0f4df5a9580d6bc214399c', '1', '系统设置-系统设置-角色管理', '1', '2015-05-28 11:44:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('82b0f1ca3ae041b198decb54381a983f', '1', '系统登录', '1', '2015-05-28 17:14:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('82c38e14477447af887c0cf24b3cd3cf', '1', '代码生成-代码生成-生成方案配置', '1', '2015-05-28 10:31:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8330300328f24120bf3a2ff9ceba9523', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-28 11:49:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('83f16e5435354162a888dda09a523b21', '1', '内容管理-内容管理-内容发布', '1', '2015-05-28 11:21:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('840694edf447459bb48d3f9ba16fed7d', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:40:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=1&parentIds=0,1,', '');
INSERT INTO `sys_log` VALUES ('840cc76dcf324fb69582a7fd5a9ceb02', '1', '在线办公-流程管理-流程管理', '1', '2015-05-26 00:03:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/act/process', 'GET', 'tabPageId=jerichotabiframe_9', '');
INSERT INTO `sys_log` VALUES ('844df9b5afa742769531fe5d9d149213', '1', '在线办公-个人办公-我的任务', '1', '2015-05-26 00:10:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/act/task/todo/', 'GET', 'tabPageId=jerichotabiframe_72', '');
INSERT INTO `sys_log` VALUES ('847e8feaba2d443c96846c4b3c404680', '1', '系统设置-系统设置-角色管理', '1', '2015-05-26 00:06:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/', 'GET', 'tabPageId=jerichotabiframe_48', '');
INSERT INTO `sys_log` VALUES ('848e307ec8954f948843ee256a56f5b4', '1', '代码生成-生成示例-单表', '1', '2015-05-26 00:05:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testData', 'GET', 'tabPageId=jerichotabiframe_40', '');
INSERT INTO `sys_log` VALUES ('84d4e9ddeaf342b189f60f42b88190db', '1', '代码生成-代码生成-生成方案配置', '1', '2015-05-26 00:05:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genScheme', 'GET', 'tabPageId=jerichotabiframe_37', '');
INSERT INTO `sys_log` VALUES ('85046e2fee7543c691785929abd5e4c2', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 11:20:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('85114b46db834baeaf443c208269af0a', '1', '内容管理-内容管理', '1', '2015-05-29 13:51:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('853b424a3dc942d79e8f6e8a809e0df3', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:43:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', 'repage=', '');
INSERT INTO `sys_log` VALUES ('85556dca439b4f12be3d9b8b88dcb7ef', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-29 15:44:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('85673a8d95ae4db0a3756245fbcf5d18', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-28 11:49:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('856f829b3ce040de9b42eceff27d7503', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-28 11:50:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('85b17360f10b41289b2b4a0242c71216', '1', '内容管理-内容管理', '1', '2015-05-29 15:45:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('863c545134374e15bae08e23eaee7555', '1', '我的面板-个人信息-个人信息', '1', '2015-05-27 21:46:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('86cc8507cd0d4c66b4e4ebab18d05164', '1', '系统设置-系统设置-菜单管理-查看', '1', '2015-05-28 11:45:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/form', 'GET', 'id=96a0df838dcd42fb83363ecbaa15222c', '');
INSERT INTO `sys_log` VALUES ('86dd0281217c4929874227992e06f439', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 11:32:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('873bb3275a3a42e6aeb68efb96945824', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-05-29 13:52:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/comment/', 'POST', 'title=12&pageNo=1&pageSize=30&delFlag=2', '');
INSERT INTO `sys_log` VALUES ('879dcfc7ea6e4ab8b766ecbff2d4936a', '1', '内容管理-内容管理-图片管理-查看', '1', '2015-05-28 13:52:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('87a8aacec6d842f6a44a766dc3d74173', '1', '系统设置-机构用户-区域管理', '1', '2015-05-27 21:44:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/area/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('87ade888b38a46b8891f1b1903a47569', '1', '系统设置-机构用户-区域管理', '1', '2015-05-26 00:11:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/area/', 'GET', 'tabPageId=jerichotabiframe_81', '');
INSERT INTO `sys_log` VALUES ('87e6e0cb0b084566a46c35e1ec390711', '1', '系统设置-系统设置-字典管理', '1', '2015-05-28 11:21:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8808a330e24744c2831d576e439f80d1', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 00:15:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('88515ac9e52f4274b25560441c9fa724', '1', '系统登录', '1', '2015-05-28 11:40:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('89101286d77b405f9b2a43420f9ba0fb', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-28 11:44:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('893675b0bdd34f9489ad7fba9afd41db', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 00:09:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8937fe4855dc4149935858e66f99f454', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-29 23:09:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('89aa0f645e544e96a841cc9b737b02d1', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-05-26 10:15:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/comment/', 'GET', 'status=2', '');
INSERT INTO `sys_log` VALUES ('89aa8d723ecb47ccbce022658ff1acf1', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:46:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('89ea6164a54e49b184676c915d0cf775', '1', '内容管理-内容管理', '1', '2015-05-27 21:45:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8a09c718e3744f65b340cadfe3bfb569', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 11:27:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8a72990127ad40a8a933dfb00bf35e74', '1', '内容管理-栏目设置-切换站点', '1', '2015-05-27 21:46:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/site/select', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8a86fbba236d44b3bbebd5522a6690ac', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 00:18:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8aa7d7667d4241bc8bb3f5c62010dc7d', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-26 00:17:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('8ae1ae2c98ce49a9b6f7ea7d64bbdd2d', '1', '内容管理-内容管理', '1', '2015-05-26 00:20:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8afa722606954a93abec29f5e7316cdc', '1', '代码生成-生成示例-单表', '1', '2015-05-26 00:36:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testData', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8b05a4cf10be4ae2a105d7d51fc2e0c1', '1', '系统登录', '1', '2015-05-29 23:15:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('8b43d614520b4cfa865177099c310554', '1', '我的面板-个人信息-个人信息', '1', '2015-05-28 11:43:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8b637169b31d439690383202a2912c96', '1', '内容管理-内容管理', '1', '2015-05-26 11:26:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8b63bd1aba2548ecac033757fe773ddf', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 00:23:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8b85b6148d7a46c08361a09e4c132b0f', '1', '代码生成-生成示例-主子表', '1', '2015-05-26 00:23:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testDataMain', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8bb8f927a40545ddaf547f8ec2d988fc', '1', '系统设置-系统设置-角色管理', '1', '2015-05-28 11:42:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/', 'GET', 'repage=', '');
INSERT INTO `sys_log` VALUES ('8bba62960a314942885e4fc626404e45', '1', '内容管理-内容管理', '1', '2015-05-26 10:15:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8bc0d8a30b174a5082dc443f127b0e69', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:43:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', 'office.id=2&office.name=公司领导', '');
INSERT INTO `sys_log` VALUES ('8be6f97f4dd7490886388ee34b84c517', '1', '内容管理-内容管理', '1', '2015-05-28 11:45:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8c07e7f72ea24381a4a963dadaa16954', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 10:41:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8c3c0ce6287146a484d2f9fe8e53a19f', '1', '内容管理-内容管理-图片管理-查看', '1', '2015-05-28 11:51:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto/', 'GET', 'repage=', '');
INSERT INTO `sys_log` VALUES ('8cd97bb07d99402a9bbcecc3e712d906', '1', '系统登录', '1', '2015-05-27 21:36:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('8cdc10cef2074ee29b3471e3cb72d244', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 10:21:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8d19a8cba64045a4ac2c0fa99cc62524', '1', '在线办公-个人办公-审批测试', '1', '2015-05-26 00:10:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/oa/testAudit', 'GET', 'tabPageId=jerichotabiframe_73', '');
INSERT INTO `sys_log` VALUES ('8d1dc1139a0a44d7a45e1468d6ad471a', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-27 21:47:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8d5361e66e034a3a9ff085a34ec28e1b', '1', '代码生成-代码生成-生成方案配置', '1', '2015-05-29 17:55:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8dd3b63320df416eba8f3cef1a086881', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:44:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8dd821967c9b465e9a39091ff225075a', '1', '系统登录', '1', '2015-05-26 00:47:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/area/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8df01e7bed7d41dd803d805925e582c7', '1', '内容管理-统计分析-信息量统计', '1', '2015-05-29 23:08:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/stats/article', 'POST', 'categoryName=&officeId=&officeName=&categoryId=&endDate=2015-05-31&beginDate=2015-05-01', '');
INSERT INTO `sys_log` VALUES ('8e031d52c89848a8b91b6902d58e4166', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-28 11:50:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8e283eb2ecc84e6bb5ea436c08833016', '1', '系统设置-机构用户-用户管理-修改', '1', '2015-05-28 11:43:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/checkLoginName', 'GET', 'oldLoginName=thinkgem&loginName=thinkgem', '');
INSERT INTO `sys_log` VALUES ('8e749e3bc4814db29418cdafef6a2101', '1', '内容管理-内容管理', '1', '2015-05-26 00:13:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8e8f21c40d82473a9757c3f5f08776dd', '1', '代码生成-生成示例-单表', '1', '2015-05-26 10:18:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testData', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8ec28b8e1eb54088ad31148484bfacc4', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 10:33:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('8fe9b4fe4fca4e83ba7a376728b552ba', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 11:26:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('901748e73b234b56b011217369e76748', '1', '在线办公-通知通告-我的通告', '1', '2015-05-26 00:36:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/oa/oaNotify/self', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('904249a0ed7b4d589eb8452f74ebc6a6', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:22:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9079306d0e8247f6a3e120e9cd77a24f', '1', '系统设置-机构用户-用户管理-修改', '1', '2015-05-27 21:43:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/delete', 'GET', 'id=6', '');
INSERT INTO `sys_log` VALUES ('90a2f540eb1749529165d5982accfce9', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 10:32:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('90d9c0405cf74acfa85f02aebd360101', '1', '系统设置-机构用户-用户管理', '1', '2015-05-28 17:38:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('910afbab0dec4b10ba8e076acf5aa108', '1', '系统设置-日志查询-日志查询', '1', '2015-05-26 00:07:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/log', 'GET', 'tabPageId=jerichotabiframe_50', '');
INSERT INTO `sys_log` VALUES ('910c2b83835b46b1b46e730cb14b984f', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 00:21:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('911d798995e947f0a047323211a7723a', '1', '系统设置-机构用户-区域管理', '1', '2015-05-27 21:42:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/area/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9159cf722aff477796d9b2cfa72517ac', '1', '内容管理-内容管理', '1', '2015-05-26 00:18:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('91ab8801a4264247a6b6e6552bd94e3e', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 00:14:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('91d435b7bd764dbe8286af87d20034b9', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:03:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9210cf51e4cb490191bd9ea9dc404717', '1', '系统设置-机构用户-用户管理', '1', '2015-05-27 21:38:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('92156c24e0b546a8bccb600e4f830ad4', '1', '系统设置-机构用户-用户管理-修改', '1', '2015-05-27 21:44:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/checkLoginName', 'GET', 'oldLoginName=&loginName=thinkgem', '');
INSERT INTO `sys_log` VALUES ('922b2f8ec8254f39a1dc502d80e529a3', '1', '系统设置-机构用户-用户管理', '1', '2015-05-29 23:21:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('923c6200b6d14d45876f183c6c3ac200', '1', '代码生成-生成示例-单表', '1', '2015-05-26 00:36:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testData', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('924968201b9d41d09692bc04f1e7321a', '1', '系统设置-机构用户-机构管理', '1', '2015-05-26 00:13:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('928e7bf6ebba4ac7bd8f6743e055729d', '1', '内容管理-内容管理-图片管理-查看', '1', '2015-05-28 13:52:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('92af0d4bfb2a47f0bee248fb069db79d', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-28 11:47:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('93076408ff704c00bb68fa780a772107', '1', '内容管理-内容管理', '1', '2015-05-26 00:15:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('930c826265374d39ae0551d20b5cae68', '1', '内容管理-内容管理', '1', '2015-05-29 13:51:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('93123241c2914248ba5de5056d19e571', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-28 12:09:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('93742530c49243afb76c7dc09653270a', '1', '内容管理-内容管理', '1', '2015-05-28 11:50:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('93c57388b8784eeb86b0209065da263a', '1', '内容管理-栏目设置-切换站点', '1', '2015-05-29 23:09:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/site/select', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('942f037801264b7f99520cdd0602e03c', '1', '我的面板-个人信息-个人信息', '1', '2015-05-29 16:12:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('94cc8c3a500a4041901b0563ace0b689', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-29 16:06:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('95357317c33c4c50baea3d98d0227f81', '1', '系统设置-系统设置-字典管理', '1', '2015-05-26 00:11:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/dict/', 'GET', 'tabPageId=jerichotabiframe_84', '');
INSERT INTO `sys_log` VALUES ('961cc740d7ed4427ba96d913a6b4eb9a', '1', '内容管理-栏目设置-栏目管理', '1', '2015-05-26 10:42:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/category/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9626750c0cd84af0a087de4283f18f2f', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-05-29 13:51:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/comment/', 'POST', 'title=12&pageNo=1&pageSize=30&delFlag=2', '');
INSERT INTO `sys_log` VALUES ('962c8004291f49c79c16e0171c81ecbe', '1', '我的面板-个人信息-修改密码', '1', '2015-05-26 10:40:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/modifyPwd', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('962e737ccc4242caad7f4a8fa6e8c11f', '1', '代码生成-生成示例-单表', '1', '2015-05-26 10:23:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testData', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9633a230d4154ee89c6ee6246d230ce9', '1', '内容管理-内容管理', '1', '2015-05-26 10:42:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9665bad4bf7f43e9b2e5538e62b6dc3b', '1', '系统设置-日志查询-日志查询', '1', '2015-05-26 00:09:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/log', 'GET', 'tabPageId=jerichotabiframe_61', '');
INSERT INTO `sys_log` VALUES ('9691bb2e6a53466da934c03f381a89fa', '1', '系统登录', '1', '2015-05-26 11:26:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('96d4df175a13437a81487b0f71a0280f', '1', '内容管理-内容管理', '1', '2015-05-29 23:15:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('96d62b094c0d4be08b911b6e91efe031', '1', '系统设置-系统设置-角色管理-查看', '1', '2015-05-29 22:36:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/form', 'GET', 'id=6', '');
INSERT INTO `sys_log` VALUES ('9725af18c7a24987aa08fc8524bbd87a', '1', '内容管理-内容管理', '1', '2015-05-26 00:47:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9784d66f04b0489189c2d0fb3d0d5936', '1', '系统设置-机构用户-区域管理', '1', '2015-05-29 16:06:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/area/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('97b2f2eb81644bcb9eb324da40df6799', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-28 11:41:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('97f17f58ecd0434cb0d4c36e8fee2378', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 10:42:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('97fc45016bd14ea8a28fa2b62e932a8f', '1', '代码生成-代码生成-生成方案配置', '1', '2015-05-28 12:09:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9826b7119cf9446baa6948444b361b33', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:40:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('9857eda069e94360a6722fb60ebfac5f', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 10:41:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('98bfffa0e94c481db5a9cef09e625e95', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-28 13:49:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('98e24ffb8b0d4856b3a7dd9953ea64bd', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-28 15:07:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9922f15a798347369aa877d189fe3768', '1', '内容管理-内容管理', '1', '2015-05-26 10:42:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('992dcbaaea6241749b72434606cf6a4d', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 11:35:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('995ffb7018264efd85635e2fc53d0c54', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 00:36:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('998020a0426140b2ab4b69211f271883', '1', '内容管理-内容管理-内容发布', '1', '2015-05-28 17:36:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9985d7493df84df2824038d9e2d0ed6e', '1', '内容管理-内容管理', '1', '2015-05-26 00:16:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9a67ba9975904a2d89a15fbd8f40758b', '1', '内容管理-内容管理', '1', '2015-05-29 23:21:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9abcff9284b94143be7a1dba76939c6f', '1', '系统设置-机构用户-用户管理', '1', '2015-05-29 23:07:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9aca2c611d3d4530bc49a2fc14650a59', '1', '内容管理-内容管理', '1', '2015-05-29 23:08:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9ad37f9a047b4237b140bd96de773c2f', '1', '代码生成-生成示例-单表-查看', '1', '2015-05-26 10:23:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testData/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9ae49e7b637f4d039a1d508a283d767b', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 10:14:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9b0541bb74a043c7b99b4b89e4142910', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-29 15:37:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9b17bac733ab4db99af07c40aaa27b2a', '1', '系统登录', '1', '2015-05-28 11:27:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9b57e00a37094d0ab020a062317977f8', '1', '系统设置-机构用户-机构管理', '1', '2015-05-26 00:16:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9bae5b25956745a38eaa1a344f2a4475', '1', '内容管理-内容管理-内容发布', '1', '2015-05-27 21:47:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9bb9a89ed6ba4189bc7dcfc344b87f7a', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-28 10:45:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9c5ead92780840bbabf089ad4656dd73', '1', '内容管理-内容管理', '1', '2015-05-26 10:39:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9da6e9866c3d4d6bb1ecd35f8d8c6351', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 11:45:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9dc10ba4428141679bb8db3f9b183ef1', '1', '系统设置-系统设置-角色管理-修改', '1', '2015-05-26 00:17:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/assign', 'GET', 'id=6', '');
INSERT INTO `sys_log` VALUES ('9dcb4c54d86a4cf0a1d5aa2a40e19700', '1', '系统设置-系统设置-角色管理-查看', '1', '2015-05-26 00:18:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/users', 'GET', 'officeId=1', '');
INSERT INTO `sys_log` VALUES ('9e8f8287d27a41508a3f6ac407913e4f', '1', '系统设置-系统设置-菜单管理-查看', '1', '2015-05-29 15:44:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/form', 'GET', 'parent.id=622064d097494b70bcbf7db1d5aa76ff', '');
INSERT INTO `sys_log` VALUES ('9f6e6e7a848544c4a403a6f89063cdee', '1', '我的面板-个人信息-个人信息', '1', '2015-05-29 23:21:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9f9e526c3f5e4f27a792ed18fccf7342', '1', '系统设置-机构用户-用户管理', '1', '2015-05-27 21:44:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('9fa4715583fe4bc5b892ade48d29abc9', '1', '内容管理-栏目设置-站点设置', '1', '2015-05-26 00:04:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/site/', 'GET', 'tabPageId=jerichotabiframe_22', '');
INSERT INTO `sys_log` VALUES ('9fb4be7094f5447a98b031ee110f621f', '1', '在线办公-通知通告-我的通告', '1', '2015-05-26 00:14:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/oa/oaNotify/self', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a0608f2527334946b5405d245d28e486', '1', '内容管理-内容管理-内容发布-文章模型-查看', '1', '2015-05-26 00:20:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/article/findByIds', 'GET', 'ids=1,2,3', '');
INSERT INTO `sys_log` VALUES ('a06f488cd5554da197443dce8c2fd49b', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-26 00:17:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a09bea0296064a5baf12252e15e7037d', '1', '系统设置-机构用户-用户管理', '1', '2015-05-29 23:16:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a0d0ccc1c10740749b4e991dd084e86d', '1', '代码生成-生成示例-树结构', '1', '2015-05-26 00:05:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testTree', 'GET', 'tabPageId=jerichotabiframe_42', '');
INSERT INTO `sys_log` VALUES ('a0f3157e45a644e79414e60f1019e00d', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:43:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', 'repage=', '');
INSERT INTO `sys_log` VALUES ('a0f3681bb16041d3a5edbff45c5cc144', '1', '内容管理-内容管理-内容发布', '1', '2015-05-28 11:27:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a1e2f062377f49f199b83f6d720fad9d', '1', '内容管理-内容管理-公共留言-查看', '1', '2015-05-28 11:49:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/guestbook/', 'GET', 'status=2', '');
INSERT INTO `sys_log` VALUES ('a2227ca2f3f6497a842023af9004e7b4', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:41:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=1&parentIds=0,1,', '');
INSERT INTO `sys_log` VALUES ('a245977bcd8d45a3a8e11f3cff520167', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-26 10:42:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('a26e98ea4c12452189403abf48208c42', '1', '系统设置-机构用户-机构管理', '1', '2015-05-27 21:44:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a32032a524b34a759e3762c1142713ea', '1', '内容管理-内容管理', '1', '2015-05-26 00:16:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a377ae964cde47f1a9f3685cf4803708', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:36:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a3a06437ed494101add7bf54203d14bd', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:45:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('a3a676d700d94ef3982d076a7d066d25', '1', '代码生成-生成示例-树结构', '1', '2015-05-26 00:23:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testTree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a3bed50419f34b699fe29933259cd4c1', '1', '系统设置-机构用户-区域管理', '1', '2015-05-29 23:07:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/area/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a3ee8983e02145c08c3f2f2fb2b6e352', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-29 15:37:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a4250189feb34df5bad1e2f4d590329b', '1', '系统设置-机构用户-用户管理', '1', '2015-05-27 21:46:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a45f747faee3457bb10b59df2468f5ff', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 11:45:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a46d0c5933354d26905bb415e466009d', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-29 23:09:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a4826263581c4e219c16646c368e5112', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:43:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', 'repage=', '');
INSERT INTO `sys_log` VALUES ('a49c27f5e8d04291a5a1e116feeff14b', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-29 15:45:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a4bc350d07044761bfd1c138bef3f74a', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:39:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('a4fe4f2ea2be4898a56e190602452d7e', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 00:04:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', 'tabPageId=jerichotabiframe_25', '');
INSERT INTO `sys_log` VALUES ('a54b15a4d6e04fb4a01a94be572b1090', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:03:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a584cf91c76b403093495c7628acece7', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-28 11:43:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/form', 'GET', 'id=1', '');
INSERT INTO `sys_log` VALUES ('a597b6d32adf42b6b8f050e398ad84f1', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-29 22:35:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('a5a816d5c23b471bace5d31c80ed258d', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 00:23:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a5e06da6d15f47adb9e1975abc867292', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-28 10:33:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a5fa334ab4e746d8921cd857c3d15174', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-27 21:36:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a60f93cdb2dd4f989688c8a9c47bf7eb', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-27 21:44:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a61d6f90bb124655abc3a29ad63362d0', '1', '内容管理-内容管理', '1', '2015-05-28 11:49:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a625077f660b499b8656043821372b76', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-05-26 10:14:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/comment/', 'GET', 'status=2', '');
INSERT INTO `sys_log` VALUES ('a656db31b73d492e91fb5e46da9aee6a', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-05-26 00:21:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/comment/', 'GET', 'status=2', '');
INSERT INTO `sys_log` VALUES ('a68d6c1316e14c48a7288d16d2df527b', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 10:40:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a6dc2e324e574fc499171ed45b841d29', '1', '系统登录', '1', '2015-05-28 15:37:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a72ac63ecb0b42e8af9e1e6118258909', '1', '内容管理-内容管理-图片管理', '1', '2015-05-26 11:27:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a7674d1af0d847b8aa2bef83b6130c64', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-29 23:21:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a780fba4f6c34af28134e675b188d6c4', '1', '系统设置-机构用户-用户管理', '1', '2015-05-29 23:09:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a8333ab6129a4eb6bc97075845a49f35', '1', '代码生成-代码生成-生成方案配置', '1', '2015-05-26 10:23:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a8596d6034d94c4fa23cf56f0129b842', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-27 21:36:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a88cc7e35b924767afe9257a5a7ad4ce', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-29 15:36:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', 'tabPageId=jerichotabiframe_5', '');
INSERT INTO `sys_log` VALUES ('a8b4e71568ae4e4892ae099b09a03f84', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 10:15:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a8be6285e4fb4267a72a3b3c35b10cb5', '1', '系统设置-系统设置-角色管理', '1', '2015-05-29 16:07:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a8c766beeb334b3db46d26e0ae3a65e7', '1', '我的面板-个人信息-个人信息', '1', '2015-05-29 23:10:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a8f22352b37f4cdc9ed6d02630885282', '1', '我的面板-个人信息-个人信息', '1', '2015-05-29 15:45:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a8f39cc15e90454498661531438f896c', '1', '内容管理-内容管理-内容发布', '1', '2015-05-29 16:07:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a91b817879f845d2b7ec3a94e674dfc7', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 11:50:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a92dec7476f44defbffb7aef52278e7f', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 10:40:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a989075992d3422ba2ffd3e1faa5c6c7', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 00:15:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a9d7e88552a441b0a9089443667757ae', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:03:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('a9ed99da0c1a407f93e3c23de9d2bc9e', '1', '系统设置-系统设置-菜单管理-查看', '1', '2015-05-28 11:48:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/form', 'GET', 'parent.id=96a0df838dcd42fb83363ecbaa15222c', '');
INSERT INTO `sys_log` VALUES ('aa0f452354614199b38d54060c225e48', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-05-26 00:20:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/comment/', 'POST', 'title=&pageNo=1&pageSize=30&delFlag=0', '');
INSERT INTO `sys_log` VALUES ('aa5ef5784f3545459f405671043e72fc', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 10:42:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('aa6db11faadf49089386e5af04a80c17', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-28 10:45:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('aa90103e067f44a9a01abfb4ed3bf0b9', '1', '系统设置-机构用户-用户管理', '1', '2015-05-28 15:37:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('aaabcfbb6fdd443ea4cbe6686d8e69be', '1', '系统登录', '1', '2015-05-26 11:24:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('ab2efba2d8b14abe9242f6e6fc72b6ce', '1', '系统设置-机构用户-区域管理', '1', '2015-05-26 00:47:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/area/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ab6a7b873e4e4a38b1842d30ae159233', '1', '内容管理-内容管理', '1', '2015-05-26 10:21:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ab70733dab23435f8bb0eea6447040f5', '1', '系统设置-机构用户-用户管理-修改', '1', '2015-05-27 21:43:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/delete', 'GET', 'id=13', '');
INSERT INTO `sys_log` VALUES ('abd7de2c21c240fc8652fff54556a5dc', '1', '系统设置-日志查询-日志查询', '1', '2015-05-27 21:38:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/log', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('abe18834bdba4bd98c895a422d785f4b', '1', '系统设置-机构用户-机构管理', '1', '2015-05-29 16:06:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ac0f79d9675b45c7a4a25ef8db583512', '1', '系统设置-机构用户-机构管理', '1', '2015-05-26 00:47:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ac8fa773506744de9bbb3118fd940a80', '1', '内容管理-内容管理', '1', '2015-05-26 00:03:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('acd1a21009ee4c62b55f5d4c5e2d5f37', '1', '系统设置-系统设置-菜单管理-修改', '1', '2015-05-29 23:09:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/delete', 'GET', 'id=33', '');
INSERT INTO `sys_log` VALUES ('ad3476a4ab42435b8424a46ca37048a4', '1', '内容管理-内容管理', '1', '2015-05-29 23:16:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ad5452449b2e48f2802c1cbc86809b17', '1', '系统设置-系统设置-菜单管理-修改', '1', '2015-05-27 21:36:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/save', 'POST', 'id=62&parent.id=1&parent.name=功能菜单&name=在线办公&href=&target=&icon=&sort=200&isShow=0&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('ad5eddb76b68436daee02bc037dafed7', '1', '在线办公-通知通告-我的通告', '1', '2015-05-26 00:14:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/oa/oaNotify/self', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ad755b2244ad4e5a9a7ee4ad2ba78f1a', '1', '内容管理-内容管理', '1', '2015-05-26 11:26:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ad8ea1c576854e2c87fb3ce368544f29', '1', '内容管理-内容管理-内容发布', '1', '2015-05-28 11:50:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ada072080bef406f9d6cefbe7da5fba0', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-28 11:50:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('aded9d8e1ac6451582bf40a21cab5cea', '1', '内容管理-内容管理', '1', '2015-05-26 10:21:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('adefee7bf0c64044bfbf7ffff356f789', '1', '内容管理-内容管理-图片管理', '1', '2015-05-29 23:07:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ae0f4c5a6623496cb5ef72b26a50ac6b', '1', '内容管理-栏目设置-切换站点', '1', '2015-05-26 00:22:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/site/select', 'GET', 'id=1', '');
INSERT INTO `sys_log` VALUES ('ae10a925bed14ade88dedd7a483bb74c', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 00:23:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ae207daa202c4166bf16ecc024587cca', '1', '内容管理-内容管理', '1', '2015-05-26 10:18:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ae256299417343f6b1fc2971b5c41924', '1', '内容管理-内容管理-内容发布', '1', '2015-05-29 23:10:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ae410a4b7c45407587be5db33771b2a8', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-29 23:07:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('aea33fe3dc544e7895c742a2d1596cbe', '1', '我的面板-个人信息-个人信息', '1', '2015-05-29 23:15:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('aea782be5ace4a21869176f299d4e654', '1', '系统设置-机构用户-用户管理-修改', '1', '2015-05-27 21:43:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/delete', 'GET', 'id=4', '');
INSERT INTO `sys_log` VALUES ('aeb360d781d74937acf51003ea3d4d4e', '1', '我的面板-个人信息-个人信息', '1', '2015-05-29 23:21:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('aef4144bc94444a485cb6eead4e63c12', '1', '系统设置-机构用户-用户管理', '1', '2015-05-27 21:41:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('af5a7b49cb87413f82b28965636e31c3', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 11:28:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('af662b40d6544257b272bd325e3b9075', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:13:47', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('af769362dd1a4a2e9c4108055e2faa8b', '1', '内容管理-内容管理-内容发布-文章模型', '1', '2015-05-28 11:27:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/article/', 'GET', 'category.id=3', '');
INSERT INTO `sys_log` VALUES ('afbaa391879f479a8e960a180f4c0b8a', '1', '系统设置-系统设置-角色管理', '1', '2015-05-28 11:49:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/', 'GET', 'repage=', '');
INSERT INTO `sys_log` VALUES ('afe0e123f62a492c8d686dbbf1d02cc1', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 10:40:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b0300ae6b6d8490dadfd544583df9231', '1', '内容管理-内容管理', '1', '2015-05-26 11:29:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b0516fb6db3749ec97f030f1b1c493ec', '1', '内容管理-内容管理', '1', '2015-05-26 00:18:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b0bea11a337c4b4583d751af04d07589', '1', '系统设置-机构用户-用户管理', '1', '2015-05-27 21:46:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b112750f694a41b39db37a8dadb2f5d8', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 10:42:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b14d216ff34040f59058e3b08cbbe5e8', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 00:14:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b1526250293b41b8bbce1cfddb48a1cb', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-28 11:21:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b167f9a52f3644638471b9600b36313a', '1', '系统登录', '1', '2015-05-29 23:21:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('b1b070bf1fe348b4bc3b21d5dd4e9d6b', '1', '代码生成-生成示例-主子表', '1', '2015-05-26 00:15:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testDataMain', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b273112514624ffe997af686275a7bd6', '1', '系统设置-系统设置-菜单管理-查看', '1', '2015-05-29 15:45:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/form', 'GET', 'id=69dd4d1c6991474a8f60f3072f995418', '');
INSERT INTO `sys_log` VALUES ('b27c00255dc741b98a0614d834bbe9a6', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:41:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/form', 'GET', 'id=4', '');
INSERT INTO `sys_log` VALUES ('b29737de792d4d48a07b03534fcddb95', '1', '内容管理-内容管理', '1', '2015-05-26 00:15:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b2a4bd5197624731926dc03d2a4db1f7', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:41:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=1&parentIds=0,1,', '');
INSERT INTO `sys_log` VALUES ('b2d30e9706a3417197b4af15e4c675d2', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-29 23:16:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('b2f429ba88ee48dc9393597d92247ba5', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 00:36:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b3171b92c84940a8b7dd2dea2c6324b9', '1', '在线办公-通知通告-通告管理', '1', '2015-05-26 00:10:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/oa/oaNotify', 'GET', 'tabPageId=jerichotabiframe_66', '');
INSERT INTO `sys_log` VALUES ('b37d80bb582447d7abf292c492408d64', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 00:36:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b3917f95583b4745b71a1474268fd5eb', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 10:20:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b3bb036febb9450a98295786b7f45e81', '1', '系统设置-机构用户-机构管理', '1', '2015-05-28 17:36:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b3c07f5d31e849afabd1d20d064a47fd', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 10:15:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b42ef6edc9f04ac69cb747c39285f3ec', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-26 00:06:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', 'tabPageId=jerichotabiframe_45', '');
INSERT INTO `sys_log` VALUES ('b44549143ea34f539121a8429e426452', '1', '内容管理-内容管理', '1', '2015-05-28 10:33:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b48f1ca820d54fbd8d543ea863a7e896', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-28 14:45:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b52f6aec0ae3459cb95e973e81d49cdb', '1', '内容管理-内容管理-图片管理', '1', '2015-05-29 23:08:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b59988aa377f441981c0ef81705e7876', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:40:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('b5b27fc4385b424fb60a455aee583ba1', '1', '内容管理-内容管理', '1', '2015-05-26 11:27:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b5b5e06cae754a92be4bff86fd4a8d50', '1', '内容管理-内容管理', '1', '2015-05-26 10:42:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b5d9aab37269405fb1f985eb24b2ee2a', '1', '系统设置-机构用户-用户管理', '1', '2015-05-27 21:47:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b5ee16bf9116454c934e3713cd1ce52a', '1', '内容管理-内容管理', '1', '2015-05-26 11:22:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b5f3f5fa1ea44cffb833a7fe9d00240d', '1', '内容管理-内容管理-内容发布', '1', '2015-05-28 10:30:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b5fd0b36754040e2b0a775eb23b04db2', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-26 00:16:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('b6508945a7324cf4b8176d4d10f7ca41', '1', '系统登录', '1', '2015-05-27 21:46:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b68c83e5d2b64b88b01740aeeb7f3493', '1', '内容管理-统计分析-信息量统计', '1', '2015-05-29 23:08:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/stats/article', 'POST', 'categoryName=&officeId=&officeName=&categoryId=&endDate=2015-05-31&beginDate=2015-05-01', '');
INSERT INTO `sys_log` VALUES ('b6b00bf2cd8d44d687e8607bc3e38b2f', '1', '内容管理-内容管理', '1', '2015-05-26 10:15:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b6f82847b33140eaaa73742723920e72', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-29 23:07:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('b738c75b0e2d4053b777f84b93f684e0', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-05-29 23:15:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/comment/', 'GET', 'status=2', '');
INSERT INTO `sys_log` VALUES ('b756d4a0a9794c5fa41de90e7bcf5e4a', '1', '内容管理-栏目设置-栏目管理', '1', '2015-05-26 00:22:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/category/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b776fbb3dc284b1c90935764f65e1d50', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-29 16:06:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('b788c7ab26d8422698e57e4421a5c24e', '1', '系统设置-机构用户-机构管理', '1', '2015-05-27 21:40:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b7b92df2e1734dd79fe7ee0dd7ac5375', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-29 23:10:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b7c90c3867ff47feba7df9ceb55daf12', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 11:27:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b7f67ea0e1b445debcabec5a32b473d9', '1', '系统登录', '1', '2015-05-29 17:55:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b8b4200ef3144781bc63ab733bea928c', '1', '内容管理-内容管理', '1', '2015-05-28 11:43:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b8b59c2353aa44a19059d97c698331df', '1', '内容管理-内容管理', '1', '2015-05-26 00:20:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b901ada4a35b4464ad12302c7502d74e', '1', '内容管理-内容管理-内容发布', '1', '2015-05-28 11:43:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('b9d094743cfe4c4194b90b1dde38bfe6', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 10:40:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ba470768619d4f8184ca1346b5362006', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 11:25:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bb35df7dda9d463fa33d1a9b2f2dccdf', '1', '系统设置-系统设置-菜单管理-查看', '1', '2015-05-28 11:47:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/form', 'GET', 'id=82464c946b964575959e3ac3488d9cff', '');
INSERT INTO `sys_log` VALUES ('bb35e7e5ef3e4c7fb8b51de6b931ccfd', '1', '内容管理-内容管理', '1', '2015-05-26 10:42:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bb383dc6f3264a5987520131e8a7eb91', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 11:25:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bb4a19f4919a46629a067b5e8d8dd685', '1', '在线办公-个人办公-我的任务', '1', '2015-05-26 00:03:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/act/task/todo/', 'GET', 'tabPageId=jerichotabiframe_7', '');
INSERT INTO `sys_log` VALUES ('bbabd177ffa54e30a229643a3e3fdfad', '1', '系统登录', '1', '2015-05-28 11:45:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('bbc3971446a14d18820e272d9f2c9f12', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-26 00:18:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bbdb93b2b04541f9ac3daef899c7c18c', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:13:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bbf347ef6e3d49ba807315834c93a063', '1', '内容管理-内容管理-标签管理', '1', '2015-05-29 23:08:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goTag', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bc6cd5e5b7024daeb30a4851b0eea00a', '1', '在线办公-通知通告-我的通告', '1', '2015-05-26 00:15:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/oa/oaNotify/self', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bd2017c8746e4b6388e839e1c62c07c4', '1', '系统设置-系统设置-菜单管理-查看', '1', '2015-05-29 15:45:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/form', 'GET', 'id=77b3ad22809b4c0fa4c96ef96965a071', '');
INSERT INTO `sys_log` VALUES ('bda441efabc8478daf54b8cd8dcf8562', '1', '在线办公-通知通告-我的通告', '1', '2015-05-26 00:16:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/oa/oaNotify/self', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bdbc1f0eb6884bb48b9e1951253665d4', '1', '内容管理-内容管理', '1', '2015-05-28 11:43:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bdc69f057e3549beb80a1603899bad9b', '1', '系统设置-机构用户-机构管理', '1', '2015-05-27 21:40:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('be0ce35a08974c908375b84ca287ff52', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 00:06:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', 'tabPageId=jerichotabiframe_44', '');
INSERT INTO `sys_log` VALUES ('be2f778dec754ad793bdce322b0c176d', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 10:21:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('be38337ca39d457d8d0ddfca7fc27fdb', '1', '内容管理-内容管理', '1', '2015-05-29 23:08:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bec8f6b872f54c09bacb6487486454c9', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 00:06:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('becd88d8615c44fb830b28f00fca96bb', '1', '系统设置-机构用户-机构管理', '1', '2015-05-27 21:44:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bf0a8c45dbbb40efb968d692606e8206', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:44:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('bf0f1c69f68a4b7baecfe920bea68a6d', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 10:42:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bf15cc2ffb5f4815bb4dc9a712633482', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 00:15:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bf220944fbad469da44aec46926c9b37', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-28 10:33:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bf3f1654bf964024974542e0a42dc46d', '1', '系统设置-机构用户-机构管理', '1', '2015-05-27 21:41:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bf447023c7274df6a318e94ef7bf5d7c', '1', '代码生成-生成示例-单表', '1', '2015-05-26 00:15:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testData', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bf510cf136e747b59561e30c5650622a', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 10:43:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bf6bef4dadc5483f911f88adfae7910c', '1', '系统登录', '1', '2015-05-29 23:10:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('bf76e56d23fc408a995a526c3fd08825', '1', '内容管理-内容管理', '1', '2015-05-27 21:46:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bf910b9955114e8bada0e8c0167e7fb0', '1', '在线办公-通知通告-我的通告', '1', '2015-05-26 10:41:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/oa/oaNotify/self', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('bff3068fbe5248de992887d966f5f256', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-29 22:36:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c009620c7f784c74aef74ae5006079fc', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 10:43:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c02ab84956994eca9b104aad9b028741', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-28 11:48:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c0c98d783d3340f595bb67a79c515e53', '1', '系统登录', '1', '2015-05-26 10:39:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/tree', 'GET', 'parentId=31', '');
INSERT INTO `sys_log` VALUES ('c0dcba5119094208a014404fa148e315', '1', '内容管理-内容管理', '1', '2015-05-26 10:14:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c10556a00e4a4ce2b14c2028678679ae', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 11:26:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c13b607f163644db89f758a6a1104abe', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 00:16:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c1414358f45849bdb46f9a98d7adfcf8', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 11:43:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c1884e0109454515b8685ca5f3d78df4', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:42:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c1a58d10fc1e4ae6805bb7499ce70128', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 10:20:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c1adff688e32464b8128f965548cd41d', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-29 23:16:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c2c729ce696f4af882caad5d485bdb6e', '1', '内容管理-内容管理-内容发布-文章模型', '1', '2015-05-26 00:10:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/article/', 'GET', 'category.id=3', '');
INSERT INTO `sys_log` VALUES ('c2d75dfd396f40c0ba67d6bdf06a45c9', '1', '系统设置-机构用户-用户管理', '1', '2015-05-29 23:16:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c3285da3a943414699171b348919b612', '1', '内容管理-内容管理', '1', '2015-05-28 10:33:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c32d2ee191dd47e0817bcdacc63021f7', '1', '内容管理-内容管理-内容发布', '1', '2015-05-27 21:46:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c34b1f3e36444acca583916267311410', '1', '系统设置-系统设置-字典管理', '1', '2015-05-27 21:36:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c3831b31cbc847efae2e750247bfd9e2', '1', '系统设置-系统设置-菜单管理-修改', '1', '2015-05-29 15:43:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/save', 'POST', 'id=&icon=&sort=140&parent.id=40&name=标签管理&target=&permission=&remarks=&href=/content/goTag&parent.name=内容管理&isShow=1', '');
INSERT INTO `sys_log` VALUES ('c3944fe9f2504109a25724c2e6ed10d5', '1', '系统设置-系统设置-菜单管理-修改', '1', '2015-05-29 15:44:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/save', 'POST', 'id=&icon=&sort=60&parent.id=622064d097494b70bcbf7db1d5aa76ff&name=修改&target=&permission=content:goPhoto:edit&remarks=&href=&parent.name=标签管理&isShow=1', '');
INSERT INTO `sys_log` VALUES ('c3aaaa8cb693472fa21ee846829bbc4b', '1', '系统设置-系统设置-菜单管理-查看', '1', '2015-05-26 11:23:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/form', 'GET', 'id=41', '');
INSERT INTO `sys_log` VALUES ('c3bfd8f461e14dc9a8bae0a98ac44401', '1', '我的面板-个人信息-修改密码', '1', '2015-05-26 00:15:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/modifyPwd', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c3cbd0e161de44c7bde738868c5df9ca', '1', '系统设置-机构用户-区域管理', '1', '2015-05-27 21:40:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/area/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c46d67358e764c4196cb7f44a71b02ac', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-28 17:36:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('c4988e50c3164185abda49176551391b', '1', '系统登录', '1', '2015-05-26 10:54:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/tree', 'GET', 'parentId=79', '');
INSERT INTO `sys_log` VALUES ('c4cdc49d839e43b597a402ed376f88c3', '1', '代码生成-生成示例-主子表', '1', '2015-05-26 10:18:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testDataMain', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c4d36c5f1d774108ad4c04618115be0f', '1', '系统设置-系统设置-菜单管理-修改', '1', '2015-05-26 11:22:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/save', 'POST', 'id=&icon=&sort=110&parent.id=40&name=图片管理&target=&permission=&remarks=&href=/content/&parent.name=内容管理&isShow=1', '');
INSERT INTO `sys_log` VALUES ('c4f1a727920e49baa4cc2fc662af3fdc', '1', '系统设置-机构用户-用户管理', '1', '2015-05-28 10:33:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c5703dab5a834d96bba4c6b1858dcb83', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-05-26 00:10:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/comment/', 'GET', 'tabPageId=jerichotabiframe_77&status=2', '');
INSERT INTO `sys_log` VALUES ('c6430dd8a80a40b895f8149cb78b38be', '1', '内容管理-内容管理', '1', '2015-05-26 10:21:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c648a8c37385415ea162e5fb00d007dc', '1', '代码生成-代码生成-生成方案配置', '1', '2015-05-26 11:00:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c670c42ff9454c078d812e203c870f28', '1', '内容管理-内容管理-内容发布', '1', '2015-05-28 11:49:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c6e29f0aaaf5450a98a29931a76cb9b0', '1', '我的面板-个人信息-个人信息', '1', '2015-05-28 11:32:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c73ba6c33e7d466d9308083cca9df484', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-05-26 00:03:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/comment/', 'GET', 'tabPageId=jerichotabiframe_16&status=2', '');
INSERT INTO `sys_log` VALUES ('c7499bcf99dc4cc59093d2d7fa639adb', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:34:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c80a1e69a90848e1a5224eda5b2cd14b', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 00:15:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c83067e9431842f7aec45dbbc0588b67', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:44:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c8566ad58b5142eeb3d9122af366013b', '1', '系统登录', '1', '2015-05-28 10:30:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('c8f3b14461da4e768ac711c7b34a2e76', '1', '内容管理-内容管理', '1', '2015-05-26 00:36:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c9205ff9099143cb8417e8d50059f63e', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:36:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c94d71bc3ed243a1ac693632a6927dba', '1', '系统登录', '1', '2015-05-26 11:20:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c9724ebe827241e181b3de878321ac46', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 10:20:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('c9ab771a501c46b3849b1b7d872baa62', '1', '系统设置-机构用户-机构管理', '1', '2015-05-27 21:40:34', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c9db686121fa4442b309616ccb9d0b7d', '1', '内容管理-内容管理', '1', '2015-05-28 11:44:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('c9fe6675c0d14329a6ab9596f571d86b', '1', '系统设置-机构用户-用户管理-修改', '1', '2015-05-27 21:43:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/delete', 'GET', 'id=9', '');
INSERT INTO `sys_log` VALUES ('ca1918d5e6644c7b81a8cd4d39333185', '1', '内容管理-内容管理', '1', '2015-05-29 23:15:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ca884e8bfc394c17a71a76bed3fc4c3a', '1', '我的面板-个人信息-个人信息', '1', '2015-05-27 21:47:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cafc359f74dc482fb682ed544eaaf3c8', '1', '内容管理-内容管理', '1', '2015-05-26 00:15:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cb032d1926d7428e9ff90a1a01d15c48', '1', '代码生成-代码生成-生成方案配置', '1', '2015-05-26 10:25:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cb0dfcf4dc4d4be6b17074cdc102e4d9', '1', '内容管理-内容管理', '1', '2015-05-28 10:33:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cb202539f970425db42a72a1534a733d', '1', '系统设置-机构用户-区域管理-查看', '1', '2015-05-27 21:40:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/area/form', 'GET', 'id=2', '');
INSERT INTO `sys_log` VALUES ('cba2e485abcf43719a8bba6eb3e50a1d', '1', '内容管理-内容管理', '1', '2015-05-26 00:21:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cbc05472bbdf442ea88e0811d813f643', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 11:29:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cbc40619ddbd4abda37893188456a27c', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-29 15:37:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cc39167e739949e8808ebe8459c5f7a2', '1', '系统设置-机构用户-机构管理', '1', '2015-05-26 00:11:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', 'tabPageId=jerichotabiframe_80', '');
INSERT INTO `sys_log` VALUES ('cc8722b861a54ded94faefec353d7689', '1', '内容管理-内容管理', '1', '2015-05-28 17:36:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cca8883bd1864f65ad7ed407793626ac', '1', '内容管理-内容管理', '1', '2015-05-26 10:21:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ccd53bdfebd5473096a875d9d8c92c1c', '1', '内容管理-内容管理', '1', '2015-05-26 10:15:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cceb0543a9f140e1bbf5243cac2d312f', '1', '内容管理-内容管理', '1', '2015-05-26 10:14:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ccfb8d880735468495159073aebcc098', '1', '系统设置-系统设置-角色管理', '1', '2015-05-28 11:48:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cd36e89c610d44ef84290e99e67d68b7', '1', '内容管理-内容管理', '1', '2015-05-28 17:36:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cd793d5950924779b4724a78bb5dc6fe', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-28 11:43:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cdab955d69ba4243a629af26152ff614', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 10:41:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cdcfe1cc97a0465b99a7cd5ddc807481', '1', '系统设置-机构用户-用户管理', '1', '2015-05-29 22:35:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cdf94f41aa794a17a75c7486492af729', '1', '内容管理-内容管理', '1', '2015-05-28 11:45:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ce0c105ca7f944f89ad5ab2b91b9db45', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 13:51:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ce2789fdbce54bf7852657b9a71c931b', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 00:15:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ce6e12b100b14e82b86da801b690925c', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:14:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cf36190928f542dfab573d0e5d88c7b9', '1', '系统设置-系统设置-角色管理', '1', '2015-05-29 22:36:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/', 'GET', 'repage=', '');
INSERT INTO `sys_log` VALUES ('cf41404ae1ed41fa8c43c4d9388e4720', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 00:04:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cf50596fce8f4edcbba543bedad2c98e', '1', '内容管理-内容管理', '1', '2015-05-26 00:15:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cfca2cdc1f7643f1b3ea3eebfe88bbf4', '1', '代码生成-生成示例-单表-查看', '1', '2015-05-26 00:34:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testData/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('cff6a490506947bf9d8e86790b269962', '1', '内容管理-内容管理', '1', '2015-05-26 00:36:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d007769e237748e49209af39916d20cf', '1', '内容管理-内容管理', '1', '2015-05-26 00:23:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d0280fcddc9f471e8db076d78938daad', '1', '内容管理-内容管理-图片管理-查看', '1', '2015-05-28 11:51:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto/', 'POST', 'pageNo=1&pageSize=30', '');
INSERT INTO `sys_log` VALUES ('d0907b3cd2a0498499df122cb11e56ff', '1', '系统设置-机构用户-机构管理-修改', '1', '2015-05-27 21:40:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/delete', 'GET', 'id=7', '');
INSERT INTO `sys_log` VALUES ('d0c3ef018aa642b8bfedcf92abb484a8', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-05-28 11:28:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/comment/', 'GET', 'status=2', '');
INSERT INTO `sys_log` VALUES ('d1074e8d651c42b08fc15d080691d420', '1', '我的面板-个人信息-修改密码', '1', '2015-05-26 00:14:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/modifyPwd', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d112bab98127491181bca937df66b2c1', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:41:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d14aac4ae410439893d1cf842e849ad0', '1', '代码生成-代码生成-生成方案配置', '1', '2015-05-27 21:47:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d1a2ad0dbdc548eaa46cf4a0a3faf981', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:46:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d1aded4a92de414b98996fc832dacaa6', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:14:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d1b3c36f8a81458f939fca7bf2ea6efe', '1', '代码生成-生成示例-单表', '1', '2015-05-27 21:48:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testData', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d1efe7d39fe14311a058dd446c33de89', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 10:20:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d203e914269448a198c1d0d10b2545d1', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 10:40:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d255957532e34963a719021052d7d596', '1', '内容管理-内容管理-图片管理-查看', '1', '2015-05-28 13:52:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d28d65a2a2874751b16718c48200c714', '1', '内容管理-内容管理', '1', '2015-05-28 10:33:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d2bf76ea74744686b2e5da99bc7e7b7c', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 11:21:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d2c1d16d0d70455ebb17755a3a0770e9', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:39:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/form', 'GET', 'id=1', '');
INSERT INTO `sys_log` VALUES ('d2ff54847eb5450e941193f7866df2c4', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-26 00:47:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('d31ecc8cc46c4a0dafa65424c34e2e3f', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-28 11:45:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d36b5d3e3be54c82bca0b0538bef0483', '1', '代码生成-生成示例-单表', '1', '2015-05-26 10:18:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testData', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d4179bca4790492982c0de2d7507930c', '1', '系统设置-机构用户-区域管理', '1', '2015-05-26 10:21:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/area/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d42dd99fed5b43caae6d8edc0d8b8f57', '1', '内容管理-内容管理', '1', '2015-05-26 00:14:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d447b019647b4b4c9f5eb347cc7a8bae', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 11:43:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d49574e471e149dea31527700666ebff', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-05-26 00:15:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/comment/', 'GET', 'status=2', '');
INSERT INTO `sys_log` VALUES ('d4a71ca3b8e34fc78f4021ed2ee59a2b', '1', '内容管理-内容管理', '1', '2015-05-26 00:14:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d4c5d4ee8ea643baa9e53f7d82b8b8b8', '1', '内容管理-内容管理-图片管理-查看', '1', '2015-05-28 14:53:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d4d876dabbc14d338002138308ef5dc6', '1', '系统设置-机构用户-用户管理', '1', '2015-05-29 22:35:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d4ddc24ad0c44febb1a585192ab76d57', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 10:42:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d4e703dd04514de39c95fd9136da6c61', '1', '系统设置-系统设置-菜单管理-修改', '1', '2015-05-26 11:26:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/save', 'POST', 'href=/content/photo&parent.name=内容管理&permission=&parent.id=40&sort=110&remarks=&id=96a0df838dcd42fb83363ecbaa15222c&name=图片管理&icon=&target=&isShow=1', '');
INSERT INTO `sys_log` VALUES ('d52d128401b44afda5ec7831ed33ee7a', '1', '系统设置-系统设置-角色管理-查看', '1', '2015-05-29 16:07:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d52fc41a27264b58af32f7df2632808c', '1', '我的面板-个人信息-个人信息', '1', '2015-05-29 23:10:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d584350fb4ef4436aac75ccfacea424d', '1', '内容管理-内容管理', '1', '2015-05-26 00:36:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d59308cc4b184877b6a280775c3e510b', '1', '系统设置-机构用户-用户管理', '1', '2015-05-27 21:42:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d59bd2068be74c1fb1cda61536b11756', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:13:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('d5ae967dd30944e28b0719e484b90259', '1', '内容管理-内容管理-图片管理-修改', '1', '2015-05-28 11:51:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto/save', 'POST', 'id=&photoId=12&intro=1212&width=21&height=12&photoPath=1221&uid=112&color=11&status=1&remarks=12112', '');
INSERT INTO `sys_log` VALUES ('d5b9019b40fd4e3197cc75be3ee9cae8', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:02:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('d5f0b185851a4fe8a62df55bd77d8979', '1', '我的面板-个人信息-修改密码', '1', '2015-05-26 00:19:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/modifyPwd', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d616790b42dc478e89a56f55e4771fc9', '1', '系统设置-系统设置-角色管理-修改', '1', '2015-05-29 22:36:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/save', 'POST', 'dataScope=8&officeIds=&remarks=&office.id=2&oldName=普通用户&id=6&menuIds=&useable=1&office.name=公司领导&name=普通用户&roleType=assignment&sysData=1&enname=d&oldEnname=d', '');
INSERT INTO `sys_log` VALUES ('d6451057c63c452486c523e168c0dc2c', '1', '代码生成-生成示例-树结构', '1', '2015-05-26 00:05:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testTree', 'GET', 'tabPageId=jerichotabiframe_35', '');
INSERT INTO `sys_log` VALUES ('d64b754bd9fc4f2ebf1ad54e0e689ac6', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 00:14:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d75d1fbc7a8d4925975c4b4c520fa8e8', '1', '系统登录', '1', '2015-05-26 00:02:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('d76d277521ae40539323696b1319c391', '1', '系统设置-机构用户-用户管理-修改', '1', '2015-05-27 21:43:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/delete', 'GET', 'id=10', '');
INSERT INTO `sys_log` VALUES ('d7d17a778e794950adaddd425822489b', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 11:23:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d815604c83004fc59a239214f26701cb', '1', '内容管理-内容管理', '1', '2015-05-29 22:35:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d84b3e9a01db44888b837d01dcfb41e4', '1', '在线办公-流程管理-模型管理', '1', '2015-05-26 00:03:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/act/model', 'GET', 'tabPageId=jerichotabiframe_10', '');
INSERT INTO `sys_log` VALUES ('d877220b046e4bf6bdea08338df264cc', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 10:21:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d877c22aac064963b93950f3f65830dd', '1', '我的面板-个人信息-修改密码', '1', '2015-05-26 00:15:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/modifyPwd', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d879adc7581747309462989c628a20d6', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:14:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d888a7d27d5040cb834558a5b5bd0613', '1', '内容管理-内容管理', '1', '2015-05-26 10:14:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d89bd7cbea414e34b33275a1ba5f5f07', '1', '内容管理-内容管理', '1', '2015-05-29 22:35:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d8bdede3c0b64b14b033d96881fe9c03', '1', '内容管理-内容管理', '1', '2015-05-26 11:29:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d8c28a6651624fdb860d309a9e8aee33', '1', '系统设置-系统设置-菜单管理-修改', '1', '2015-05-29 15:43:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/save', 'POST', 'id=&icon=&sort=30&parent.id=622064d097494b70bcbf7db1d5aa76ff&name=查看&target=&permission=&remarks=&href=&parent.name=标签管理&isShow=1', '');
INSERT INTO `sys_log` VALUES ('d8d551d56a52441198a00ff4b56143e4', '1', '我的面板-个人信息-个人信息', '1', '2015-05-29 23:21:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('d9ad34fc9d9f427aae93b4492359d971', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-28 13:52:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('da188b4375ad448090b9b1e053f1f78e', '1', '系统设置-机构用户-机构管理', '1', '2015-05-27 21:42:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('da6ae4c2dc734d6ea8178dba03515741', '1', '系统设置-系统设置-字典管理-查看', '1', '2015-05-28 11:21:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/dict/form', 'GET', 'sort=10', '');
INSERT INTO `sys_log` VALUES ('da8961229b1f43d19d1594c30c7642fa', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 10:43:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('daaca6f4035c4953917d0e2131602613', '1', '内容管理-内容管理', '1', '2015-05-26 00:14:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('dab4b072b9ea4c72b05870f68db895c6', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 10:40:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('dabc027ec482401d832e0735a29b5b4b', '1', '我的面板-个人信息-个人信息', '1', '2015-05-28 11:45:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('daf974e916b244bab3ab22ce9d9ce5df', '1', '内容管理-栏目设置-切换站点', '1', '2015-05-26 00:22:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/site/select', 'GET', 'id=2', '');
INSERT INTO `sys_log` VALUES ('db39f69a309a4b1aacac8083be2e7989', '1', '系统设置-机构用户-机构管理', '1', '2015-05-27 21:44:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('dc11638ba72e46f3b792e9e3c20726ab', '1', '系统登录', '1', '2015-05-29 17:51:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('dc1b1996a6b74f0cad70198b7aeb61e0', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:44:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('dd2f897b1a634f04a7db19fc6eaa4df0', '1', '内容管理-栏目设置-栏目管理', '1', '2015-05-26 00:04:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/category/', 'GET', 'tabPageId=jerichotabiframe_21', '');
INSERT INTO `sys_log` VALUES ('dd81e8a704e64c3f8294beff07dff009', '1', '代码生成-代码生成-生成方案配置', '1', '2015-05-28 13:52:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ddaa6a0071d2447b9299fd896e07f1c8', '1', '系统设置-系统设置-菜单管理-修改', '1', '2015-05-28 11:48:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/save', 'POST', 'id=82464c946b964575959e3ac3488d9cff&parent.id=96a0df838dcd42fb83363ecbaa15222c&parent.name=图片管理&name=查看&href=&target=&icon=&sort=30&isShow=0&permission=content:goPhoto:view&remarks=', '');
INSERT INTO `sys_log` VALUES ('de53442e78b84e9c9c2601961135c0aa', '1', '内容管理-内容管理', '1', '2015-05-26 11:26:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('dea3c10d1f88454bbf8b3d3d155c56a5', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-28 11:49:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('deac3676e14f4e299812eb78aa223257', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 00:34:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('def27871d4ce4e4daf317f5ddca5544f', '1', '系统设置-机构用户-区域管理', '1', '2015-05-27 21:44:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/area/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('df0156749422441d8dd28659bb18f9e8', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 10:14:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('df269773f81d40a6bfb00fde7e6214aa', '1', '我的面板-个人信息-个人信息', '1', '2015-05-28 17:14:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('df527366b1c44d3ab4a4432d55a1c05e', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 11:27:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('df9853d6390b46d4abc807044fc2e0b0', '1', '系统设置-系统设置-菜单管理-修改', '1', '2015-05-28 11:47:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/save', 'POST', 'id=&parent.id=96a0df838dcd42fb83363ecbaa15222c&parent.name=图片管理&name=查看&href=content:goPhoto:view&target=&icon=&sort=30&isShow=0&permission=&remarks=', '');
INSERT INTO `sys_log` VALUES ('dfa20499829b4ed2a49bd2aad960780b', '1', '系统设置-系统设置-菜单管理-查看', '1', '2015-05-29 15:43:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/form', 'GET', 'parent.id=40', '');
INSERT INTO `sys_log` VALUES ('dfaa129f0d614dba8a7413300dfa42f0', '1', '内容管理-内容管理', '1', '2015-05-26 00:14:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('dfeb0e732f8846ea8c9144dec26ea4db', '1', '系统设置-机构用户-区域管理', '1', '2015-05-27 21:39:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/area/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('dffd83f5e8e946c196ae811de6129c3d', '1', '内容管理-内容管理', '1', '2015-05-26 00:14:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e034353f301a48b986b3abf2145bd5c9', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:44:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('e03592995161451285924df5a3604dfb', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:44:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e0742ae15ce14593913d1f139a0c52f4', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 11:29:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e077cf70400c463c9a909299ddb4c8e4', '1', '内容管理-内容管理', '1', '2015-05-26 00:36:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e07a686fb64a496f9cae947ebe54f11b', '1', '内容管理-内容管理', '1', '2015-05-26 00:21:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e07cb0cb5342499f80ae59fb5062a6cd', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 11:26:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e085ccd4b5dc4ea2a482b96303edf5c0', '1', '内容管理-内容管理', '1', '2015-05-29 23:16:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e091ba7bd4214894897846a3ba503216', '1', '内容管理-内容管理-内容发布', '1', '2015-05-29 22:35:44', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e0ca2f822ae349d99b230e1a67b02806', '1', '系统设置-系统设置-菜单管理-查看', '1', '2015-05-26 00:06:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/form', 'GET', 'id=56', '');
INSERT INTO `sys_log` VALUES ('e0caf6517ef24eccb044f4b7a317224c', '1', '系统设置-机构用户-区域管理', '1', '2015-05-27 21:40:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/area/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e0d587f0795a43f7b5c57a8ec9c77f17', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:36:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e0f384424bba41aca2283100a3e3c0b0', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-28 15:38:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e1103f19a17e45dab6241d96874f48da', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 10:41:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e15825b6cf3a4ef494108971346ef3e9', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 00:36:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e17d7b637c0b4d3a8b3d4cfc502babeb', '1', '我的面板-个人信息-修改密码', '1', '2015-05-26 00:03:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/modifyPwd', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e1c07e6145224e3182b9c5f3251a50d5', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-29 16:06:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e1ff8ba994e444bfb5b62becfec7e771', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 00:15:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e2706148d7c24c4da9cd51e9f3cb6632', '1', '系统设置-系统设置-角色管理', '1', '2015-05-29 16:06:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e319dc4de83547149fa980e17d21ce83', '1', '系统设置-系统设置-角色管理', '1', '2015-05-29 22:36:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e31dce9b837f4168b39bf5caa20157d0', '1', '系统设置-机构用户-用户管理', '1', '2015-05-29 15:45:13', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e31e3b91cd064bb69ddc91c21e09890f', '1', '系统设置-机构用户-用户管理', '1', '2015-05-29 16:06:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e38d3fe3178946e1a768ce68dee7785a', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-26 00:22:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e3b0905b70e8488395c9387837c9ea87', '1', '系统登录', '1', '2015-05-28 11:21:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('e3f57a40d74246a4a83e41cd11c403af', '1', '系统设置-机构用户-用户管理', '1', '2015-05-28 17:36:11', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e408ae639aae49deb44933b387f1cfe5', '1', '系统设置-机构用户-机构管理-修改', '1', '2015-05-27 21:41:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/save', 'POST', 'id=4&parent.id=1&parent.name=山东省总公司&area.id=2&area.name=北京市&name=运营部&code=100003&type=2&grade=1&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=', '');
INSERT INTO `sys_log` VALUES ('e47744c0933a41c0938fb911c2f40293', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 10:14:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e47bbad514ae4027a231e31d96574a57', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 10:21:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e58b98474f84442c8e5109a22a59d736', '1', '我的面板-个人信息-个人信息', '1', '2015-05-29 22:35:38', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('e5b1119abe4f444388d3069c4168120a', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 11:29:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e5ee221565d5422e840d6c9507936159', '1', '内容管理-内容管理-内容发布', '1', '2015-05-28 14:45:14', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e6150a9d753e416e96684bab2606555f', '1', '系统设置-系统设置-角色管理', '1', '2015-05-28 11:44:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e6580fa225814b939850a673def21b8e', '1', '内容管理-内容管理', '1', '2015-05-26 10:15:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e69adbc14feb4824bd38ae5b8e301860', '1', '系统设置-系统设置-角色管理-修改', '1', '2015-05-28 11:42:51', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/save', 'POST', 'id=1&office.id=2&office.name=公司领导&oldName=系统管理员&name=系统管理员&oldEnname=dept&enname=dept&roleType=assignment&sysData=1&useable=1&dataScope=1&menuIds=1,27,28,29,30,71,56,57,58,59,62,88,89,90,63,73,74,64,65,66,69,70,72,31,40,41,42,43,44,45,46,47,48...&officeIds=&remarks=', '');
INSERT INTO `sys_log` VALUES ('e6ffefbca4fd42abb128056a49557f6a', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 11:22:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e71716b74dda477f9746783e148e6e2b', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-26 11:27:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e75e6f0666f849ce98571ff74ee24e7d', '1', '在线办公-通知通告-我的通告', '1', '2015-05-26 00:14:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/oa/oaNotify/self', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e770865c128f41b89f35f12edc5fc361', '1', '内容管理-内容管理', '1', '2015-05-29 22:35:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e7832f63dcd64aa894d468681b596568', '1', '系统设置-系统设置-菜单管理-修改', '1', '2015-05-29 23:09:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/delete', 'GET', 'id=62', '');
INSERT INTO `sys_log` VALUES ('e78b9a65ec5142a981913347359801f1', '1', '系统设置-系统设置-角色管理', '1', '2015-05-26 00:17:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e7b398badbc34cb1b0f40569927042b3', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-28 17:36:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e7f4ee71bdb440a8b1174e39f3dde119', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-28 14:45:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e8176e09100c4f5f819c100903378a71', '1', '系统设置-系统设置-菜单管理-查看', '1', '2015-05-26 11:26:06', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/form', 'GET', 'id=96a0df838dcd42fb83363ecbaa15222c', '');
INSERT INTO `sys_log` VALUES ('e826b1ab63d54833a83a55a51f161507', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-28 11:49:52', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e82bfff1ef154b4ab91bdcdc485e0326', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-28 12:09:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e8398fd1203a4994a91f7e366b468ad4', '1', '系统设置-机构用户-用户管理', '1', '2015-05-27 21:42:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e872ef4121c94013981a94fee88093c4', '1', '内容管理-内容管理', '1', '2015-05-28 11:49:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e8bc1b5d308f48e29a128236046797c8', '1', '内容管理-内容管理-内容发布-文章模型', '1', '2015-05-26 00:10:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/article/', 'GET', 'category.id=4', '');
INSERT INTO `sys_log` VALUES ('e90cbce39d474f1999317c48b6f10bee', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-05-29 13:51:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/comment/', 'GET', 'tabPageId=jerichotabiframe_2&status=2', '');
INSERT INTO `sys_log` VALUES ('e94e7d2f855f4911a5ab46011714131a', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 10:40:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e950ceec1811403d8863751af2dff858', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 00:03:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', 'tabPageId=jerichotabiframe_15', '');
INSERT INTO `sys_log` VALUES ('e95a5329bb094809b763112ad3b8bd07', '1', '系统设置-机构用户-用户管理', '1', '2015-05-27 21:41:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('e98e553ac8e3425982432d5c60dad4a6', '1', '系统设置-机构用户-用户管理', '1', '2015-05-28 17:36:15', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ea2a52ea43814c1a83f0d3d50ce17900', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 00:15:49', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ea4c96eac4aa4a00a0e46a5adf41134d', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 10:23:46', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ea972ed581de46a6a31bcaaf96bb68d3', '1', '内容管理-内容管理', '1', '2015-05-26 10:18:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ea9fe87032704d7484104d6b8291df9e', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-05-29 13:51:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/comment/', 'POST', 'title=12&pageNo=1&pageSize=30&delFlag=2', '');
INSERT INTO `sys_log` VALUES ('eac3538611dd40f78e93d58c235ca2d5', '1', '代码生成-代码生成-生成方案配置', '1', '2015-05-29 15:37:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genScheme', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ead6f2331f1d478d99fb0397de740395', '1', '内容管理-内容管理', '1', '2015-05-29 23:16:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('eb73bfcddb654945a45fe50b35b322c3', '1', '系统设置-机构用户-用户管理', '1', '2015-05-29 15:42:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ebe4ebc4b6bd4552b2abc25f626050e4', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-29 16:06:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('ebf10bcac8b9480a9b551d46d61cbac2', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 10:21:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ec71e9acfe4e461dac80a896ec8b1f5d', '1', '系统登录', '1', '2015-05-29 22:35:35', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('ed07f4352e364c82a53f6f58b9c28227', '1', '在线办公-通知通告-我的通告', '1', '2015-05-26 00:16:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/oa/oaNotify/self', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ed0a995cb71242018d8a495a85ead0d0', '1', '内容管理-内容管理', '1', '2015-05-29 23:10:26', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ed7fbf866550461a8af02d813248402d', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 00:10:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', 'tabPageId=jerichotabiframe_69', '');
INSERT INTO `sys_log` VALUES ('edf4420160c441939235c6a2a3660e86', '1', '内容管理-内容管理', '1', '2015-05-28 11:50:00', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('edfe3e6c26fc4df5a7cebcabf958f870', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 00:23:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ee2a82eb29574a359ab988a6a396f816', '1', '我的面板-个人信息-修改密码', '1', '2015-05-26 00:36:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/modifyPwd', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ee55be23da944000b7e35f419dbef32a', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-26 11:22:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ee9d2528831d499290a3572412604520', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 00:16:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('eea68dbca7914cb385fc8c8746829520', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 11:22:48', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('eecd60e8af9947719abfbd5a46208685', '1', '内容管理-内容管理-图片管理', '1', '2015-05-28 11:45:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('eee883db92e440bb99d26843436c3630', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 10:42:21', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ef1f7c37c52e4b04afc79e81481a0555', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 00:18:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ef2f4ab1b70d4576a29621ffd3c16f1b', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 10:14:59', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ef3d602b99c14a918a43a76eec9b4f89', '1', '我的面板-个人信息-个人信息', '1', '2015-05-27 21:46:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ef4ce95536e34a38ae477807389d5521', '1', '内容管理-内容管理-内容发布', '1', '2015-05-27 21:46:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ef53298cd804466ebb94711d092d0109', '1', '系统设置-系统设置-角色管理', '1', '2015-05-26 00:34:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ef5605778c4948f3b5055fd2f5c7201d', '1', '系统设置-机构用户-用户管理', '1', '2015-05-28 17:34:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ef80d962b4c244e1857fc719ddb85d54', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:13:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ef8686514d2e40c588c9848f13d345d5', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-29 22:35:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f03af3f11430461aae8187d73ded25ff', '1', '系统设置-机构用户-用户管理', '1', '2015-05-28 11:45:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f0412b8a9a324cad8ba158b9f8efc749', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-29 17:52:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f07bf5874ef94926b4c656be29d78f05', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 11:26:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f0999a189880455484b7ebec6912a4d7', '1', '代码生成-生成示例-单表', '1', '2015-05-26 10:21:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/test/testData', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f12a464c034b4a278d5062fb569aaf24', '1', '内容管理-内容管理', '1', '2015-05-26 11:27:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f1398899633d4c01bb020b50fbfcb0bf', '1', '系统设置-机构用户-用户管理', '1', '2015-05-27 21:46:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f14cb6ca1aca48f9ac20c5c767b46d93', '1', '我的面板-个人信息-修改密码', '1', '2015-05-26 00:36:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/modifyPwd', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f16e1e5b19374d5ca982c2508d2eb4f4', '1', '内容管理-内容管理', '1', '2015-05-26 11:26:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f17111b366b34764ac49bf77224e9ac6', '1', '系统设置-机构用户-用户管理', '1', '2015-05-28 11:49:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f180be5f2d59463b8eeeac27322787b9', '1', '系统设置-系统设置-菜单管理-查看', '1', '2015-05-26 11:23:50', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/form', 'GET', 'id=96a0df838dcd42fb83363ecbaa15222c', '');
INSERT INTO `sys_log` VALUES ('f1941364d5db4e1eb6269b7b0042554f', '1', '内容管理-内容管理', '1', '2015-05-26 11:22:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f1b108b3a2504820a89cdaf49ec5c388', '1', '内容管理-内容管理', '1', '2015-05-28 17:36:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f1c54c93ab3f484581160a98323726a7', '1', '内容管理-内容管理', '1', '2015-05-26 10:15:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f1c98e9b0513442abf507067d1929061', '1', '系统设置-系统设置-菜单管理-查看', '1', '2015-05-26 11:21:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/form', 'GET', 'parent.id=40', '');
INSERT INTO `sys_log` VALUES ('f1ca77a4c7954ca888e3d47ed99fd120', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:13:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('f1e5e34bb5b8424d939720bc952e6085', '1', '系统设置-系统设置-菜单管理-修改', '1', '2015-05-29 15:45:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/save', 'POST', 'id=69dd4d1c6991474a8f60f3072f995418&icon=&sort=60&parent.id=622064d097494b70bcbf7db1d5aa76ff&name=修改&target=&permission=content:goPhoto:edit&remarks=&href=&parent.name=标签管理&isShow=0', '');
INSERT INTO `sys_log` VALUES ('f204451406404f8da4122c75e9308e59', '1', '内容管理-内容管理', '1', '2015-05-28 11:43:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f2313f0a43ee488189fd75cf4c54d1b6', '1', '内容管理-内容管理', '1', '2015-05-29 16:12:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f237d01f1a344d4d99454705f207130a', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-26 00:13:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('f27d4c3c615e44d9a6de4c3a8d4cfe19', '1', '系统登录', '1', '2015-05-28 10:45:29', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('f29298fbca024b16b39f76947807cd3c', '1', '系统登录', '1', '2015-05-26 00:12:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('f2d816cc571449449aeaeb572721a937', '1', '系统设置-机构用户-用户管理', '1', '2015-05-27 21:40:37', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f329c38eeece4cff8a7b86ae775510af', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 00:15:54', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f391b94fa5534a9692e6d7511c329f09', '1', '内容管理-内容管理', '1', '2015-05-26 11:29:02', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f3b3ea1a19ca404eb6881606ff24b498', '1', '内容管理-内容管理', '1', '2015-05-29 15:45:09', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f3bd518f57db44178e588468cae5e679', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:47:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f3c2e7addc4647c4904b6ec24fbf27a9', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 00:36:36', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f47786b5de7a416ca737492b9450cb3a', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 00:36:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f5184bb6ab6b4bbfbf23efe526a05621', '1', '内容管理-内容管理-评论管理-查看', '1', '2015-05-26 00:20:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/comment/', 'GET', 'status=2', '');
INSERT INTO `sys_log` VALUES ('f535296cb2b34b90bbb2a3fd6d1fcbac', '1', '我的面板-个人信息-修改密码', '1', '2015-05-26 10:14:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/modifyPwd', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f58be56f0f3f45ccb7fcdaffc10dab02', '1', '系统设置-机构用户-用户管理', '1', '2015-05-28 11:49:33', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f5b0067380594b0289cf28ebc0454f4d', '1', '内容管理-内容管理', '1', '2015-05-26 00:15:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f5b304c8524144fabe167e630e9ebb54', '1', '系统登录', '1', '2015-05-29 23:07:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('f5b35870fc9d49a9b18bde07d160e701', '1', '系统设置-机构用户-机构管理', '1', '2015-05-27 21:39:19', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f5b427195a5f4421bd38236c1cc51cb3', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 10:43:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f600510a59fd4208a416550ddfe787c7', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:43:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', 'repage=', '');
INSERT INTO `sys_log` VALUES ('f61b6d83ecd2488ab528b14f09b23538', '1', '内容管理-内容管理-公共留言-查看', '1', '2015-05-29 23:08:10', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/guestbook/', 'GET', 'status=2', '');
INSERT INTO `sys_log` VALUES ('f643af975c0e4603816c24708749fd9e', '1', '在线办公-通知通告-我的通告', '1', '2015-05-26 00:14:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/oa/oaNotify/self', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f6902173de0f41bf81bc22f76305ef12', '1', '系统设置-日志查询-日志查询', '1', '2015-05-27 21:38:30', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/log', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f6ba07127e28444a93d863191734633e', '1', '内容管理-内容管理-内容发布', '1', '2015-05-28 17:36:18', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f6bd8a222d864afaa3ec50246364492b', '1', '内容管理-内容管理-图片管理', '1', '2015-05-26 11:26:32', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/photo', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f6c6828f3cd64c00b1f89eaa79c24625', '1', '系统设置-机构用户-用户管理', '1', '2015-05-29 23:16:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f6c6d67922c041268c37f50bf4e3450d', '1', '系统设置-机构用户-机构管理-查看', '1', '2015-05-27 21:44:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/office/list', 'GET', 'id=&parentIds=', '');
INSERT INTO `sys_log` VALUES ('f6fae8a526ee4354952a70a45020c6ff', '1', '内容管理-内容管理', '1', '2015-05-26 00:10:17', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f750c66fd28e424ebc4c0749ca7b5369', '1', '内容管理-内容管理-内容发布', '1', '2015-05-28 14:48:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f766080635bc4977a9227450e878946a', '1', '在线办公-通知通告-我的通告', '1', '2015-05-26 00:15:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/oa/oaNotify/self', 'POST', 'title=&pageNo=1&pageSize=30&type=3', '');
INSERT INTO `sys_log` VALUES ('f876e4ebb09848ce9b89a7304df43912', '1', '内容管理-内容管理', '1', '2015-05-29 16:07:25', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f88f21ab650045c19a7f7942c185f595', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-28 11:43:16', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f8cf5957e9d54d499b56dd191b66d4ef', '1', '内容管理-栏目设置-切换站点', '1', '2015-05-26 00:04:04', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/site/select', 'GET', 'tabPageId=jerichotabiframe_23', '');
INSERT INTO `sys_log` VALUES ('f911194f734446a3a2cb1dbf5743d196', '1', '内容管理-内容管理-标签管理', '1', '2015-05-29 16:12:42', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goTag', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f9134852a4cf4b8ea9c9eabd57acdccc', '1', '系统设置-系统设置-角色管理-修改', '1', '2015-05-29 15:44:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/save', 'POST', 'dataScope=1&officeIds=&remarks=&office.id=2&oldName=系统管理员&id=1&menuIds=1,27,28,29,30,71,56,57,58,59,62,88,89,90,63,73,74,64,65,66,69,70,72,31,40,41,42,43,44,45,46,47,48...&useable=1&office.name=公司领导&name=系统管理员&roleType=assignment&sysData=1&enname=dept&oldEnname=dept', '');
INSERT INTO `sys_log` VALUES ('f9354694878045c9818d3c982dfab69e', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 00:36:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f96dc8667bde41929e0f75a1ba90856d', '1', '内容管理-内容管理', '1', '2015-05-28 11:43:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f9825ab856ce48c9bde0409bf7d88ae5', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 10:41:55', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f98a733a82204605a6d5270c634f75cd', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:13:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('f99418a6cda943f8827c03b8d15a98c4', '1', '系统设置-系统设置-字典管理', '1', '2015-05-27 21:38:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('f9a0a3585ebc4ec3a6f2d43e2eabab42', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:13:03', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', 'tabPageId=jerichotabiframe_0', '');
INSERT INTO `sys_log` VALUES ('f9d56453d814490c8389f02106a28570', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 00:18:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('fa36f6da8aef4507af102d9c8d41a513', '1', '系统设置-机构用户-用户管理', '1', '2015-05-26 00:13:40', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('fa43c8ed63c84befa260e4cc35c0dc38', '1', '我的面板-个人信息-修改密码', '1', '2015-05-26 00:14:20', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/modifyPwd', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('face2d20fc82432bbe28ca713fbf989f', '1', '系统设置-系统设置-菜单管理', '1', '2015-05-29 23:09:58', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('fb2ba080cdfb4c75b71f7a1483e13d0d', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 00:15:12', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('fbbd535ff5544e9bb07c8736bdce1ce4', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 00:19:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('fbce6b68119b41e78d89d159e9133c79', '1', '我的面板-个人信息-个人信息', '1', '2015-05-26 10:41:07', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/info', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('fc466952f271402894be12cdad6d67d6', '1', '系统设置-系统设置-字典管理', '1', '2015-05-26 00:34:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/dict/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('fc5816fedbf34d4693bf3639ede99396', '1', '我的面板-个人信息-修改密码', '1', '2015-05-26 00:16:23', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/modifyPwd', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('fc9032ccdfac4dedbf8b5baa68c3e660', '1', '内容管理-内容管理', '1', '2015-05-26 00:20:27', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/none', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('fca46a22a8ef4b8d96307670af09d4bd', '1', '内容管理-内容管理-图片管理', '1', '2015-05-29 23:08:22', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('fd56ad3563344ec3b1f06e5537dd8c41', '1', '系统登录', '1', '2015-05-29 15:45:05', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a', 'GET', 'login=', '');
INSERT INTO `sys_log` VALUES ('fd6453d044fb48eabc2e699108c27502', '1', '系统设置-系统设置-菜单管理-查看', '1', '2015-05-27 21:36:43', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/form', 'GET', 'id=62', '');
INSERT INTO `sys_log` VALUES ('fd8a1c6e8e9c4a51bbac75d32d46ad1f', '1', '内容管理-内容管理-内容发布', '1', '2015-05-29 23:16:57', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('fd90b506cf2c4173a9fcccef6da245a7', '1', '内容管理-内容管理-图片管理-查看', '1', '2015-05-28 11:51:28', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/content/goPhoto/form', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('fda0ebcb40e84a48ae57e954b9e59dba', '1', '内容管理-内容管理-内容发布', '1', '2015-05-26 00:13:39', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('fdaaedc293aa4aef8040147ba760242c', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:36:31', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('fe0aec0c142a4a10bc362a34d3404422', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-26 00:16:56', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('fe1d81882ac04787bacdd427f8bb7078', '1', '系统登录', '1', '2015-05-29 15:36:41', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/menu/tree', 'GET', 'parentId=79', '');
INSERT INTO `sys_log` VALUES ('fe5a600699b24a38ad3e9b8492cf5fa6', '1', '系统设置-系统设置-角色管理-查看', '1', '2015-05-26 00:18:08', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/role/usertorole', 'POST', 'id=1&___t0.8017634807748986=', '');
INSERT INTO `sys_log` VALUES ('fe70f0f548184e92aa2e92e00030b474', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:43:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', 'repage=', '');
INSERT INTO `sys_log` VALUES ('fe9801ab631245ef9e308e93547c4a15', '1', '代码生成-代码生成-业务表配置', '1', '2015-05-26 10:25:45', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/gen/genTable', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('febc3f1780b74a15a2b7c710dbff977c', '1', '内容管理-内容管理', '1', '2015-05-26 10:15:01', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/cms/tree', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ff63dc1fdd5f41dd802b2aa248d19e8c', '1', '系统设置-机构用户-用户管理', '1', '2015-05-28 11:50:53', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/index', 'GET', '', '');
INSERT INTO `sys_log` VALUES ('ff8e07bf7c644e619be6963e17a5674e', '1', '系统设置-机构用户-用户管理-查看', '1', '2015-05-27 21:43:24', '0:0:0:0:0:0:0:1', 'Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0', '/jeesite/a/sys/user/list', 'GET', 'repage=', '');

-- ----------------------------
-- Table structure for `sys_mdict`
-- ----------------------------
DROP TABLE IF EXISTS `sys_mdict`;
CREATE TABLE `sys_mdict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_mdict_parent_id` (`parent_id`),
  KEY `sys_mdict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='多级字典表';

-- ----------------------------
-- Records of sys_mdict
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `href` varchar(2000) DEFAULT NULL COMMENT '链接',
  `target` varchar(20) DEFAULT NULL COMMENT '目标',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `is_show` char(1) NOT NULL COMMENT '是否在菜单中显示',
  `permission` varchar(200) DEFAULT NULL COMMENT '权限标识',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_menu_parent_id` (`parent_id`),
  KEY `sys_menu_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('0b2ebd4d639e4c2b83c2dd0764522f24', 'ba8092291b40482db8fe7fc006ea3d76', '0,1,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,', '编辑', '60', '', '', '', '0', 'test:testData:edit', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('0ca004d6b1bf4bcab9670a5060d82a55', '3c92c17886944d0687e73e286cada573', '0,1,79,3c92c17886944d0687e73e286cada573,', '树结构', '90', '/test/testTree', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('1', '0', '0,', '功能菜单', '0', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('10', '3', '0,1,2,3,', '字典管理', '60', '/sys/dict/', null, 'th-list', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('11', '10', '0,1,2,3,10,', '查看', '30', null, null, null, '0', 'sys:dict:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('12', '10', '0,1,2,3,10,', '修改', '40', null, null, null, '0', 'sys:dict:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('13', '2', '0,1,2,', '机构用户', '970', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('14', '13', '0,1,2,13,', '区域管理', '50', '/sys/area/', null, 'th', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('15', '14', '0,1,2,13,14,', '查看', '30', null, null, null, '0', 'sys:area:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('16', '14', '0,1,2,13,14,', '修改', '40', null, null, null, '0', 'sys:area:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('17', '13', '0,1,2,13,', '机构管理', '40', '/sys/office/', null, 'th-large', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('18', '17', '0,1,2,13,17,', '查看', '30', null, null, null, '0', 'sys:office:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('19', '17', '0,1,2,13,17,', '修改', '40', null, null, null, '0', 'sys:office:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('2', '1', '0,1,', '系统设置', '900', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('20', '13', '0,1,2,13,', '用户管理', '30', '/sys/user/index', null, 'user', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('21', '20', '0,1,2,13,20,', '查看', '30', null, null, null, '0', 'sys:user:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('22', '20', '0,1,2,13,20,', '修改', '40', null, null, null, '0', 'sys:user:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('23', '2', '0,1,2,', '关于帮助', '990', null, null, null, '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('24', '23', '0,1,2,23', '官方首页', '30', 'http://jeesite.com', '_blank', null, '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('25', '23', '0,1,2,23', '项目支持', '50', 'http://jeesite.com/donation.html', '_blank', null, '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('26', '23', '0,1,2,23', '论坛交流', '80', 'http://bbs.jeesite.com', '_blank', null, '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('27', '1', '0,1,', '我的面板', '100', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('28', '27', '0,1,27,', '个人信息', '30', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('29', '28', '0,1,27,28,', '个人信息', '30', '/sys/user/info', null, 'user', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('3', '2', '0,1,2,', '系统设置', '980', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('30', '28', '0,1,27,28,', '修改密码', '40', '/sys/user/modifyPwd', null, 'lock', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('31', '1', '0,1,', '内容管理', '500', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('32', '31', '0,1,31,', '栏目设置', '990', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('33', '32', '0,1,31,32', '栏目管理', '30', '/cms/category/', null, 'align-justify', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('34', '33', '0,1,31,32,33,', '查看', '30', null, null, null, '0', 'cms:category:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('35', '33', '0,1,31,32,33,', '修改', '40', null, null, null, '0', 'cms:category:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('36', '32', '0,1,31,32', '站点设置', '40', '/cms/site/', null, 'certificate', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('37', '36', '0,1,31,32,36,', '查看', '30', null, null, null, '0', 'cms:site:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('38', '36', '0,1,31,32,36,', '修改', '40', null, null, null, '0', 'cms:site:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('39', '32', '0,1,31,32', '切换站点', '50', '/cms/site/select', null, 'retweet', '1', 'cms:site:select', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('3c92c17886944d0687e73e286cada573', '79', '0,1,79,', '生成示例', '120', '', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('4', '3', '0,1,2,3,', '菜单管理', '30', '/sys/menu/', null, 'list-alt', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('40', '31', '0,1,31,', '内容管理', '500', null, null, null, '1', 'cms:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('41', '40', '0,1,31,40,', '内容发布', '30', '/cms/', null, 'briefcase', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('42', '41', '0,1,31,40,41,', '文章模型', '40', '/cms/article/', null, 'file', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('43', '42', '0,1,31,40,41,42,', '查看', '30', null, null, null, '0', 'cms:article:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('44', '42', '0,1,31,40,41,42,', '修改', '40', null, null, null, '0', 'cms:article:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('45', '42', '0,1,31,40,41,42,', '审核', '50', null, null, null, '0', 'cms:article:audit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('46', '41', '0,1,31,40,41,', '链接模型', '60', '/cms/link/', null, 'random', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('47', '46', '0,1,31,40,41,46,', '查看', '30', null, null, null, '0', 'cms:link:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('48', '46', '0,1,31,40,41,46,', '修改', '40', null, null, null, '0', 'cms:link:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('4855cf3b25c244fb8500a380db189d97', 'b1f6d1b86ba24365bae7fd86c5082317', '0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,', '查看', '30', '', '', '', '0', 'test:testDataMain:view', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('49', '46', '0,1,31,40,41,46,', '审核', '50', null, null, null, '0', 'cms:link:audit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('5', '4', '0,1,2,3,4,', '查看', '30', null, null, null, '0', 'sys:menu:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('50', '40', '0,1,31,40,', '评论管理', '40', '/cms/comment/?status=2', null, 'comment', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('51', '50', '0,1,31,40,50,', '查看', '30', null, null, null, '0', 'cms:comment:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('52', '50', '0,1,31,40,50,', '审核', '40', null, null, null, '0', 'cms:comment:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('53', '40', '0,1,31,40,', '公共留言', '80', '/cms/guestbook/?status=2', null, 'glass', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('54', '53', '0,1,31,40,53,', '查看', '30', null, null, null, '0', 'cms:guestbook:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('55', '53', '0,1,31,40,53,', '审核', '40', null, null, null, '0', 'cms:guestbook:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('56', '71', '0,1,27,71,', '文件管理', '90', '/../static/ckfinder/ckfinder.html', null, 'folder-open', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('57', '56', '0,1,27,40,56,', '查看', '30', null, null, null, '0', 'cms:ckfinder:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('58', '56', '0,1,27,40,56,', '上传', '40', null, null, null, '0', 'cms:ckfinder:upload', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('59', '56', '0,1,27,40,56,', '修改', '50', null, null, null, '0', 'cms:ckfinder:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('6', '4', '0,1,2,3,4,', '修改', '40', null, null, null, '0', 'sys:menu:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('60', '31', '0,1,31,', '统计分析', '600', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('61', '60', '0,1,31,60,', '信息量统计', '30', '/cms/stats/article', null, 'tasks', '1', 'cms:stats:article', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('62', '1', '0,1,', '在线办公', '200', '', '', '', '0', '', '1', '2013-05-27 08:00:00', '1', '2015-05-27 21:36:49', '', '1');
INSERT INTO `sys_menu` VALUES ('622064d097494b70bcbf7db1d5aa76ff', '40', '0,1,31,40,', '标签管理', '140', '/content/goTag', '', '', '1', '', '1', '2015-05-29 15:43:25', '1', '2015-05-29 15:43:25', '', '0');
INSERT INTO `sys_menu` VALUES ('63', '62', '0,1,62,', '个人办公', '30', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('64', '63', '0,1,62,63,', '请假办理', '300', '/oa/leave', null, 'leaf', '0', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('65', '64', '0,1,62,63,64,', '查看', '30', null, null, null, '0', 'oa:leave:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('66', '64', '0,1,62,63,64,', '修改', '40', null, null, null, '0', 'oa:leave:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('67', '2', '0,1,2,', '日志查询', '985', null, null, null, '1', null, '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('68', '67', '0,1,2,67,', '日志查询', '30', '/sys/log', null, 'pencil', '1', 'sys:log:view', '1', '2013-06-03 08:00:00', '1', '2013-06-03 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('69', '62', '0,1,62,', '流程管理', '300', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('69dd4d1c6991474a8f60f3072f995418', '622064d097494b70bcbf7db1d5aa76ff', '0,1,31,40,622064d097494b70bcbf7db1d5aa76ff,', '修改', '60', '', '', '', '0', 'content:goPhoto:edit', '1', '2015-05-29 15:44:25', '1', '2015-05-29 15:45:41', '', '0');
INSERT INTO `sys_menu` VALUES ('7', '3', '0,1,2,3,', '角色管理', '50', '/sys/role/', null, 'lock', '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('70', '69', '0,1,62,69,', '流程管理', '50', '/act/process', null, 'road', '1', 'act:process:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('71', '27', '0,1,27,', '文件管理', '90', null, null, null, '1', null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('72', '69', '0,1,62,69,', '模型管理', '100', '/act/model', null, 'road', '1', 'act:model:edit', '1', '2013-09-20 08:00:00', '1', '2013-09-20 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('73', '63', '0,1,62,63,', '我的任务', '50', '/act/task/todo/', null, 'tasks', '1', null, '1', '2013-09-24 08:00:00', '1', '2013-09-24 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('74', '63', '0,1,62,63,', '审批测试', '100', '/oa/testAudit', null, null, '1', 'oa:testAudit:view,oa:testAudit:edit', '1', '2013-09-24 08:00:00', '1', '2013-09-24 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('75', '1', '0,1,', '在线演示', '3000', null, null, null, '1', null, '1', '2013-10-08 08:00:00', '1', '2013-10-08 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('77b3ad22809b4c0fa4c96ef96965a071', '622064d097494b70bcbf7db1d5aa76ff', '0,1,31,40,622064d097494b70bcbf7db1d5aa76ff,', '查看', '30', '', '', '', '0', 'content:goTag:view', '1', '2015-05-29 15:43:39', '1', '2015-05-29 15:45:29', '', '0');
INSERT INTO `sys_menu` VALUES ('79', '1', '0,1,', '代码生成', '5000', null, null, null, '1', null, '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('8', '7', '0,1,2,3,7,', '查看', '30', null, null, null, '0', 'sys:role:view', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('80', '79', '0,1,79,', '代码生成', '50', null, null, null, '1', null, '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('81', '80', '0,1,79,80,', '生成方案配置', '30', '/gen/genScheme', null, null, '1', 'gen:genScheme:view,gen:genScheme:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('82', '80', '0,1,79,80,', '业务表配置', '20', '/gen/genTable', null, null, '1', 'gen:genTable:view,gen:genTable:edit,gen:genTableColumn:view,gen:genTableColumn:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('82464c946b964575959e3ac3488d9cff', '96a0df838dcd42fb83363ecbaa15222c', '0,1,31,40,96a0df838dcd42fb83363ecbaa15222c,', '查看', '30', '', '', '', '0', 'content:goPhoto:view', '1', '2015-05-28 11:47:09', '1', '2015-05-28 11:48:00', '', '0');
INSERT INTO `sys_menu` VALUES ('83', '80', '0,1,79,80,', '代码模板管理', '90', '/gen/genTemplate', null, null, '1', 'gen:genTemplate:view,gen:genTemplate:edit', '1', '2013-10-16 08:00:00', '1', '2013-10-16 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('84', '67', '0,1,2,67,', '连接池监视', '40', '/../druid', null, null, '1', null, '1', '2013-10-18 08:00:00', '1', '2013-10-18 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('85', '76', '0,1,75,76,', '行政区域', '80', '/../static/map/map-city.html', null, null, '1', null, '1', '2013-10-22 08:00:00', '1', '2013-10-22 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('86', '75', '0,1,75,', '组件演示', '50', null, null, null, '1', null, '1', '2013-10-22 08:00:00', '1', '2013-10-22 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('87', '86', '0,1,75,86,', '组件演示', '30', '/test/test/form', null, null, '1', 'test:test:view,test:test:edit', '1', '2013-10-22 08:00:00', '1', '2013-10-22 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('88', '62', '0,1,62,', '通知通告', '20', '', '', '', '1', '', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('89', '88', '0,1,62,88,', '我的通告', '30', '/oa/oaNotify/self', '', '', '1', '', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('9', '7', '0,1,2,3,7,', '修改', '40', null, null, null, '0', 'sys:role:edit', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_menu` VALUES ('90', '88', '0,1,62,88,', '通告管理', '50', '/oa/oaNotify', '', '', '1', 'oa:oaNotify:view,oa:oaNotify:edit', '1', '2013-11-08 08:00:00', '1', '2013-11-08 08:00:00', null, '1');
INSERT INTO `sys_menu` VALUES ('96a0df838dcd42fb83363ecbaa15222c', '40', '0,1,31,40,', '图片管理', '110', '/content/goPhoto', '', '', '1', '', '1', '2015-05-26 11:22:29', '1', '2015-05-26 11:27:05', '', '0');
INSERT INTO `sys_menu` VALUES ('afab2db430e2457f9cf3a11feaa8b869', '0ca004d6b1bf4bcab9670a5060d82a55', '0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,', '编辑', '60', '', '', '', '0', 'test:testTree:edit', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('b1f6d1b86ba24365bae7fd86c5082317', '3c92c17886944d0687e73e286cada573', '0,1,79,3c92c17886944d0687e73e286cada573,', '主子表', '60', '/test/testDataMain', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('b7e206eebc8c400b85b5170e707896e4', '96a0df838dcd42fb83363ecbaa15222c', '0,1,31,40,96a0df838dcd42fb83363ecbaa15222c,', '修改', '60', '', '', '', '0', 'content:goPhoto:edit', '1', '2015-05-28 11:48:31', '1', '2015-05-28 11:49:48', '', '0');
INSERT INTO `sys_menu` VALUES ('ba8092291b40482db8fe7fc006ea3d76', '3c92c17886944d0687e73e286cada573', '0,1,79,3c92c17886944d0687e73e286cada573,', '单表', '30', '/test/testData', '', '', '1', '', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('c2e4d9082a0b4386884a0b203afe2c5c', '0ca004d6b1bf4bcab9670a5060d82a55', '0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,', '查看', '30', '', '', '', '0', 'test:testTree:view', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('d15ec45a4c5449c3bbd7a61d5f9dd1d2', 'b1f6d1b86ba24365bae7fd86c5082317', '0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,', '编辑', '60', '', '', '', '0', 'test:testDataMain:edit', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');
INSERT INTO `sys_menu` VALUES ('df7ce823c5b24ff9bada43d992f373e2', 'ba8092291b40482db8fe7fc006ea3d76', '0,1,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,', '查看', '30', '', '', '', '0', 'test:testData:view', '1', '2013-08-12 13:10:05', '1', '2013-08-12 13:10:05', '', '0');

-- ----------------------------
-- Table structure for `sys_office`
-- ----------------------------
DROP TABLE IF EXISTS `sys_office`;
CREATE TABLE `sys_office` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `area_id` varchar(64) NOT NULL COMMENT '归属区域',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `type` char(1) NOT NULL COMMENT '机构类型',
  `grade` char(1) NOT NULL COMMENT '机构等级',
  `address` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `zip_code` varchar(100) DEFAULT NULL COMMENT '邮政编码',
  `master` varchar(100) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `fax` varchar(200) DEFAULT NULL COMMENT '传真',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `USEABLE` varchar(64) DEFAULT NULL COMMENT '是否启用',
  `PRIMARY_PERSON` varchar(64) DEFAULT NULL COMMENT '主负责人',
  `DEPUTY_PERSON` varchar(64) DEFAULT NULL COMMENT '副负责人',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_office_parent_id` (`parent_id`),
  KEY `sys_office_del_flag` (`del_flag`),
  KEY `sys_office_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='机构表';

-- ----------------------------
-- Records of sys_office
-- ----------------------------
INSERT INTO `sys_office` VALUES ('1', '0', '0,', '国美总公司', '10', '2', '100000', '1', '1', '', '', '', '', '', '', '1', '', '', '1', '2013-05-27 08:00:00', '1', '2015-05-27 21:42:18', '', '0');
INSERT INTO `sys_office` VALUES ('10', '7', '0,1,7,', '市场部', '30', '3', '200003', '2', '2', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_office` VALUES ('11', '7', '0,1,7,', '技术部', '40', '3', '200004', '2', '2', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_office` VALUES ('12', '7', '0,1,7,', '历城区分公司', '0', '4', '201000', '1', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_office` VALUES ('13', '12', '0,1,7,12,', '公司领导', '10', '4', '201001', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_office` VALUES ('14', '12', '0,1,7,12,', '综合部', '20', '4', '201002', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_office` VALUES ('15', '12', '0,1,7,12,', '市场部', '30', '4', '201003', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_office` VALUES ('16', '12', '0,1,7,12,', '技术部', '40', '4', '201004', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_office` VALUES ('17', '7', '0,1,7,', '历下区分公司', '40', '5', '201010', '1', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_office` VALUES ('18', '17', '0,1,7,17,', '公司领导', '10', '5', '201011', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_office` VALUES ('19', '17', '0,1,7,17,', '综合部', '20', '5', '201012', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_office` VALUES ('2', '1', '0,1,', '公司领导', '10', '2', '100001', '2', '1', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('20', '17', '0,1,7,17,', '市场部', '30', '5', '201013', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_office` VALUES ('21', '17', '0,1,7,17,', '技术部', '40', '5', '201014', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_office` VALUES ('22', '7', '0,1,7,', '高新区分公司', '50', '6', '201010', '1', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_office` VALUES ('23', '22', '0,1,7,22,', '公司领导', '10', '6', '201011', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_office` VALUES ('24', '22', '0,1,7,22,', '综合部', '20', '6', '201012', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_office` VALUES ('25', '22', '0,1,7,22,', '市场部', '30', '6', '201013', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_office` VALUES ('26', '22', '0,1,7,22,', '技术部', '40', '6', '201014', '2', '3', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_office` VALUES ('3', '1', '0,1,', '综合部', '20', '2', '100002', '2', '1', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_office` VALUES ('4', '1', '0,1,', '运营部', '30', '2', '100003', '2', '1', '', '', '', '', '', '', '1', '', '', '1', '2013-05-27 08:00:00', '1', '2015-05-27 21:41:42', '', '0');
INSERT INTO `sys_office` VALUES ('5', '1', '0,1,', '技术部', '40', '2', '100004', '2', '1', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_office` VALUES ('6', '1', '0,1,', '研发部', '50', '2', '100005', '2', '1', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_office` VALUES ('7', '1', '0,1,', '济南市分公司', '20', '3', '200000', '1', '2', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_office` VALUES ('8', '7', '0,1,7,', '公司领导', '10', '3', '200001', '2', '2', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_office` VALUES ('9', '7', '0,1,7,', '综合部', '20', '3', '200002', '2', '2', null, null, null, null, null, null, '1', null, null, '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属机构',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `enname` varchar(255) DEFAULT NULL COMMENT '英文名称',
  `role_type` varchar(255) DEFAULT NULL COMMENT '角色类型',
  `data_scope` char(1) DEFAULT NULL COMMENT '数据范围',
  `is_sys` varchar(64) DEFAULT NULL COMMENT '是否系统数据',
  `useable` varchar(64) DEFAULT NULL COMMENT '是否可用',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_role_del_flag` (`del_flag`),
  KEY `sys_role_enname` (`enname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '2', '系统管理员', 'dept', 'assignment', '1', '1', '1', '1', '2013-05-27 08:00:00', '1', '2015-05-29 15:44:57', '', '0');
INSERT INTO `sys_role` VALUES ('2', '2', '公司管理员', 'hr', 'assignment', '2', '1', '1', '1', '2013-05-27 08:00:00', '1', '2015-05-28 11:44:51', '', '0');
INSERT INTO `sys_role` VALUES ('3', '1', '本公司管理员', 'a', 'assignment', '3', null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_role` VALUES ('4', '1', '部门管理员', 'b', 'assignment', '4', null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_role` VALUES ('5', '1', '本部门管理员', 'c', 'assignment', '5', null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_role` VALUES ('6', '2', '普通用户', 'd', 'assignment', '8', '1', '1', '1', '2013-05-27 08:00:00', '1', '2015-05-29 22:36:12', '', '0');
INSERT INTO `sys_role` VALUES ('7', '7', '济南市管理员', 'e', 'assignment', '9', null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');

-- ----------------------------
-- Table structure for `sys_role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  `menu_id` varchar(64) NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-菜单';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1', '1');
INSERT INTO `sys_role_menu` VALUES ('1', '10');
INSERT INTO `sys_role_menu` VALUES ('1', '11');
INSERT INTO `sys_role_menu` VALUES ('1', '12');
INSERT INTO `sys_role_menu` VALUES ('1', '13');
INSERT INTO `sys_role_menu` VALUES ('1', '14');
INSERT INTO `sys_role_menu` VALUES ('1', '15');
INSERT INTO `sys_role_menu` VALUES ('1', '16');
INSERT INTO `sys_role_menu` VALUES ('1', '17');
INSERT INTO `sys_role_menu` VALUES ('1', '18');
INSERT INTO `sys_role_menu` VALUES ('1', '19');
INSERT INTO `sys_role_menu` VALUES ('1', '2');
INSERT INTO `sys_role_menu` VALUES ('1', '20');
INSERT INTO `sys_role_menu` VALUES ('1', '21');
INSERT INTO `sys_role_menu` VALUES ('1', '22');
INSERT INTO `sys_role_menu` VALUES ('1', '24');
INSERT INTO `sys_role_menu` VALUES ('1', '27');
INSERT INTO `sys_role_menu` VALUES ('1', '28');
INSERT INTO `sys_role_menu` VALUES ('1', '29');
INSERT INTO `sys_role_menu` VALUES ('1', '3');
INSERT INTO `sys_role_menu` VALUES ('1', '30');
INSERT INTO `sys_role_menu` VALUES ('1', '31');
INSERT INTO `sys_role_menu` VALUES ('1', '32');
INSERT INTO `sys_role_menu` VALUES ('1', '33');
INSERT INTO `sys_role_menu` VALUES ('1', '34');
INSERT INTO `sys_role_menu` VALUES ('1', '35');
INSERT INTO `sys_role_menu` VALUES ('1', '36');
INSERT INTO `sys_role_menu` VALUES ('1', '37');
INSERT INTO `sys_role_menu` VALUES ('1', '38');
INSERT INTO `sys_role_menu` VALUES ('1', '39');
INSERT INTO `sys_role_menu` VALUES ('1', '4');
INSERT INTO `sys_role_menu` VALUES ('1', '40');
INSERT INTO `sys_role_menu` VALUES ('1', '41');
INSERT INTO `sys_role_menu` VALUES ('1', '42');
INSERT INTO `sys_role_menu` VALUES ('1', '43');
INSERT INTO `sys_role_menu` VALUES ('1', '44');
INSERT INTO `sys_role_menu` VALUES ('1', '45');
INSERT INTO `sys_role_menu` VALUES ('1', '46');
INSERT INTO `sys_role_menu` VALUES ('1', '47');
INSERT INTO `sys_role_menu` VALUES ('1', '48');
INSERT INTO `sys_role_menu` VALUES ('1', '49');
INSERT INTO `sys_role_menu` VALUES ('1', '5');
INSERT INTO `sys_role_menu` VALUES ('1', '50');
INSERT INTO `sys_role_menu` VALUES ('1', '51');
INSERT INTO `sys_role_menu` VALUES ('1', '52');
INSERT INTO `sys_role_menu` VALUES ('1', '53');
INSERT INTO `sys_role_menu` VALUES ('1', '54');
INSERT INTO `sys_role_menu` VALUES ('1', '55');
INSERT INTO `sys_role_menu` VALUES ('1', '56');
INSERT INTO `sys_role_menu` VALUES ('1', '57');
INSERT INTO `sys_role_menu` VALUES ('1', '58');
INSERT INTO `sys_role_menu` VALUES ('1', '59');
INSERT INTO `sys_role_menu` VALUES ('1', '6');
INSERT INTO `sys_role_menu` VALUES ('1', '60');
INSERT INTO `sys_role_menu` VALUES ('1', '61');
INSERT INTO `sys_role_menu` VALUES ('1', '62');
INSERT INTO `sys_role_menu` VALUES ('1', '622064d097494b70bcbf7db1d5aa76ff');
INSERT INTO `sys_role_menu` VALUES ('1', '63');
INSERT INTO `sys_role_menu` VALUES ('1', '64');
INSERT INTO `sys_role_menu` VALUES ('1', '65');
INSERT INTO `sys_role_menu` VALUES ('1', '66');
INSERT INTO `sys_role_menu` VALUES ('1', '67');
INSERT INTO `sys_role_menu` VALUES ('1', '68');
INSERT INTO `sys_role_menu` VALUES ('1', '69');
INSERT INTO `sys_role_menu` VALUES ('1', '69dd4d1c6991474a8f60f3072f995418');
INSERT INTO `sys_role_menu` VALUES ('1', '7');
INSERT INTO `sys_role_menu` VALUES ('1', '70');
INSERT INTO `sys_role_menu` VALUES ('1', '71');
INSERT INTO `sys_role_menu` VALUES ('1', '72');
INSERT INTO `sys_role_menu` VALUES ('1', '73');
INSERT INTO `sys_role_menu` VALUES ('1', '74');
INSERT INTO `sys_role_menu` VALUES ('1', '77b3ad22809b4c0fa4c96ef96965a071');
INSERT INTO `sys_role_menu` VALUES ('1', '79');
INSERT INTO `sys_role_menu` VALUES ('1', '8');
INSERT INTO `sys_role_menu` VALUES ('1', '80');
INSERT INTO `sys_role_menu` VALUES ('1', '81');
INSERT INTO `sys_role_menu` VALUES ('1', '82');
INSERT INTO `sys_role_menu` VALUES ('1', '82464c946b964575959e3ac3488d9cff');
INSERT INTO `sys_role_menu` VALUES ('1', '84');
INSERT INTO `sys_role_menu` VALUES ('1', '85');
INSERT INTO `sys_role_menu` VALUES ('1', '88');
INSERT INTO `sys_role_menu` VALUES ('1', '89');
INSERT INTO `sys_role_menu` VALUES ('1', '9');
INSERT INTO `sys_role_menu` VALUES ('1', '90');
INSERT INTO `sys_role_menu` VALUES ('1', '96a0df838dcd42fb83363ecbaa15222c');
INSERT INTO `sys_role_menu` VALUES ('1', 'b7e206eebc8c400b85b5170e707896e4');
INSERT INTO `sys_role_menu` VALUES ('2', '1');
INSERT INTO `sys_role_menu` VALUES ('2', '10');
INSERT INTO `sys_role_menu` VALUES ('2', '11');
INSERT INTO `sys_role_menu` VALUES ('2', '12');
INSERT INTO `sys_role_menu` VALUES ('2', '13');
INSERT INTO `sys_role_menu` VALUES ('2', '14');
INSERT INTO `sys_role_menu` VALUES ('2', '15');
INSERT INTO `sys_role_menu` VALUES ('2', '16');
INSERT INTO `sys_role_menu` VALUES ('2', '17');
INSERT INTO `sys_role_menu` VALUES ('2', '18');
INSERT INTO `sys_role_menu` VALUES ('2', '19');
INSERT INTO `sys_role_menu` VALUES ('2', '2');
INSERT INTO `sys_role_menu` VALUES ('2', '20');
INSERT INTO `sys_role_menu` VALUES ('2', '21');
INSERT INTO `sys_role_menu` VALUES ('2', '22');
INSERT INTO `sys_role_menu` VALUES ('2', '24');
INSERT INTO `sys_role_menu` VALUES ('2', '27');
INSERT INTO `sys_role_menu` VALUES ('2', '28');
INSERT INTO `sys_role_menu` VALUES ('2', '29');
INSERT INTO `sys_role_menu` VALUES ('2', '3');
INSERT INTO `sys_role_menu` VALUES ('2', '30');
INSERT INTO `sys_role_menu` VALUES ('2', '31');
INSERT INTO `sys_role_menu` VALUES ('2', '32');
INSERT INTO `sys_role_menu` VALUES ('2', '33');
INSERT INTO `sys_role_menu` VALUES ('2', '34');
INSERT INTO `sys_role_menu` VALUES ('2', '35');
INSERT INTO `sys_role_menu` VALUES ('2', '36');
INSERT INTO `sys_role_menu` VALUES ('2', '37');
INSERT INTO `sys_role_menu` VALUES ('2', '38');
INSERT INTO `sys_role_menu` VALUES ('2', '39');
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '40');
INSERT INTO `sys_role_menu` VALUES ('2', '41');
INSERT INTO `sys_role_menu` VALUES ('2', '42');
INSERT INTO `sys_role_menu` VALUES ('2', '43');
INSERT INTO `sys_role_menu` VALUES ('2', '44');
INSERT INTO `sys_role_menu` VALUES ('2', '45');
INSERT INTO `sys_role_menu` VALUES ('2', '46');
INSERT INTO `sys_role_menu` VALUES ('2', '47');
INSERT INTO `sys_role_menu` VALUES ('2', '48');
INSERT INTO `sys_role_menu` VALUES ('2', '49');
INSERT INTO `sys_role_menu` VALUES ('2', '5');
INSERT INTO `sys_role_menu` VALUES ('2', '50');
INSERT INTO `sys_role_menu` VALUES ('2', '51');
INSERT INTO `sys_role_menu` VALUES ('2', '52');
INSERT INTO `sys_role_menu` VALUES ('2', '53');
INSERT INTO `sys_role_menu` VALUES ('2', '54');
INSERT INTO `sys_role_menu` VALUES ('2', '55');
INSERT INTO `sys_role_menu` VALUES ('2', '56');
INSERT INTO `sys_role_menu` VALUES ('2', '57');
INSERT INTO `sys_role_menu` VALUES ('2', '58');
INSERT INTO `sys_role_menu` VALUES ('2', '59');
INSERT INTO `sys_role_menu` VALUES ('2', '6');
INSERT INTO `sys_role_menu` VALUES ('2', '60');
INSERT INTO `sys_role_menu` VALUES ('2', '61');
INSERT INTO `sys_role_menu` VALUES ('2', '62');
INSERT INTO `sys_role_menu` VALUES ('2', '63');
INSERT INTO `sys_role_menu` VALUES ('2', '64');
INSERT INTO `sys_role_menu` VALUES ('2', '65');
INSERT INTO `sys_role_menu` VALUES ('2', '66');
INSERT INTO `sys_role_menu` VALUES ('2', '67');
INSERT INTO `sys_role_menu` VALUES ('2', '68');
INSERT INTO `sys_role_menu` VALUES ('2', '69');
INSERT INTO `sys_role_menu` VALUES ('2', '7');
INSERT INTO `sys_role_menu` VALUES ('2', '70');
INSERT INTO `sys_role_menu` VALUES ('2', '71');
INSERT INTO `sys_role_menu` VALUES ('2', '72');
INSERT INTO `sys_role_menu` VALUES ('2', '73');
INSERT INTO `sys_role_menu` VALUES ('2', '74');
INSERT INTO `sys_role_menu` VALUES ('2', '79');
INSERT INTO `sys_role_menu` VALUES ('2', '8');
INSERT INTO `sys_role_menu` VALUES ('2', '80');
INSERT INTO `sys_role_menu` VALUES ('2', '81');
INSERT INTO `sys_role_menu` VALUES ('2', '82');
INSERT INTO `sys_role_menu` VALUES ('2', '84');
INSERT INTO `sys_role_menu` VALUES ('2', '85');
INSERT INTO `sys_role_menu` VALUES ('2', '88');
INSERT INTO `sys_role_menu` VALUES ('2', '89');
INSERT INTO `sys_role_menu` VALUES ('2', '9');
INSERT INTO `sys_role_menu` VALUES ('2', '90');
INSERT INTO `sys_role_menu` VALUES ('2', '96a0df838dcd42fb83363ecbaa15222c');
INSERT INTO `sys_role_menu` VALUES ('3', '1');
INSERT INTO `sys_role_menu` VALUES ('3', '10');
INSERT INTO `sys_role_menu` VALUES ('3', '11');
INSERT INTO `sys_role_menu` VALUES ('3', '12');
INSERT INTO `sys_role_menu` VALUES ('3', '13');
INSERT INTO `sys_role_menu` VALUES ('3', '14');
INSERT INTO `sys_role_menu` VALUES ('3', '15');
INSERT INTO `sys_role_menu` VALUES ('3', '16');
INSERT INTO `sys_role_menu` VALUES ('3', '17');
INSERT INTO `sys_role_menu` VALUES ('3', '18');
INSERT INTO `sys_role_menu` VALUES ('3', '19');
INSERT INTO `sys_role_menu` VALUES ('3', '2');
INSERT INTO `sys_role_menu` VALUES ('3', '20');
INSERT INTO `sys_role_menu` VALUES ('3', '21');
INSERT INTO `sys_role_menu` VALUES ('3', '22');
INSERT INTO `sys_role_menu` VALUES ('3', '23');
INSERT INTO `sys_role_menu` VALUES ('3', '24');
INSERT INTO `sys_role_menu` VALUES ('3', '25');
INSERT INTO `sys_role_menu` VALUES ('3', '26');
INSERT INTO `sys_role_menu` VALUES ('3', '27');
INSERT INTO `sys_role_menu` VALUES ('3', '28');
INSERT INTO `sys_role_menu` VALUES ('3', '29');
INSERT INTO `sys_role_menu` VALUES ('3', '3');
INSERT INTO `sys_role_menu` VALUES ('3', '30');
INSERT INTO `sys_role_menu` VALUES ('3', '31');
INSERT INTO `sys_role_menu` VALUES ('3', '32');
INSERT INTO `sys_role_menu` VALUES ('3', '33');
INSERT INTO `sys_role_menu` VALUES ('3', '34');
INSERT INTO `sys_role_menu` VALUES ('3', '35');
INSERT INTO `sys_role_menu` VALUES ('3', '36');
INSERT INTO `sys_role_menu` VALUES ('3', '37');
INSERT INTO `sys_role_menu` VALUES ('3', '38');
INSERT INTO `sys_role_menu` VALUES ('3', '39');
INSERT INTO `sys_role_menu` VALUES ('3', '4');
INSERT INTO `sys_role_menu` VALUES ('3', '40');
INSERT INTO `sys_role_menu` VALUES ('3', '41');
INSERT INTO `sys_role_menu` VALUES ('3', '42');
INSERT INTO `sys_role_menu` VALUES ('3', '43');
INSERT INTO `sys_role_menu` VALUES ('3', '44');
INSERT INTO `sys_role_menu` VALUES ('3', '45');
INSERT INTO `sys_role_menu` VALUES ('3', '46');
INSERT INTO `sys_role_menu` VALUES ('3', '47');
INSERT INTO `sys_role_menu` VALUES ('3', '48');
INSERT INTO `sys_role_menu` VALUES ('3', '49');
INSERT INTO `sys_role_menu` VALUES ('3', '5');
INSERT INTO `sys_role_menu` VALUES ('3', '50');
INSERT INTO `sys_role_menu` VALUES ('3', '51');
INSERT INTO `sys_role_menu` VALUES ('3', '52');
INSERT INTO `sys_role_menu` VALUES ('3', '53');
INSERT INTO `sys_role_menu` VALUES ('3', '54');
INSERT INTO `sys_role_menu` VALUES ('3', '55');
INSERT INTO `sys_role_menu` VALUES ('3', '56');
INSERT INTO `sys_role_menu` VALUES ('3', '57');
INSERT INTO `sys_role_menu` VALUES ('3', '58');
INSERT INTO `sys_role_menu` VALUES ('3', '59');
INSERT INTO `sys_role_menu` VALUES ('3', '6');
INSERT INTO `sys_role_menu` VALUES ('3', '60');
INSERT INTO `sys_role_menu` VALUES ('3', '61');
INSERT INTO `sys_role_menu` VALUES ('3', '62');
INSERT INTO `sys_role_menu` VALUES ('3', '63');
INSERT INTO `sys_role_menu` VALUES ('3', '64');
INSERT INTO `sys_role_menu` VALUES ('3', '65');
INSERT INTO `sys_role_menu` VALUES ('3', '66');
INSERT INTO `sys_role_menu` VALUES ('3', '67');
INSERT INTO `sys_role_menu` VALUES ('3', '68');
INSERT INTO `sys_role_menu` VALUES ('3', '69');
INSERT INTO `sys_role_menu` VALUES ('3', '7');
INSERT INTO `sys_role_menu` VALUES ('3', '70');
INSERT INTO `sys_role_menu` VALUES ('3', '71');
INSERT INTO `sys_role_menu` VALUES ('3', '72');
INSERT INTO `sys_role_menu` VALUES ('3', '73');
INSERT INTO `sys_role_menu` VALUES ('3', '74');
INSERT INTO `sys_role_menu` VALUES ('3', '75');
INSERT INTO `sys_role_menu` VALUES ('3', '76');
INSERT INTO `sys_role_menu` VALUES ('3', '77');
INSERT INTO `sys_role_menu` VALUES ('3', '78');
INSERT INTO `sys_role_menu` VALUES ('3', '79');
INSERT INTO `sys_role_menu` VALUES ('3', '8');
INSERT INTO `sys_role_menu` VALUES ('3', '80');
INSERT INTO `sys_role_menu` VALUES ('3', '81');
INSERT INTO `sys_role_menu` VALUES ('3', '82');
INSERT INTO `sys_role_menu` VALUES ('3', '83');
INSERT INTO `sys_role_menu` VALUES ('3', '84');
INSERT INTO `sys_role_menu` VALUES ('3', '85');
INSERT INTO `sys_role_menu` VALUES ('3', '86');
INSERT INTO `sys_role_menu` VALUES ('3', '87');
INSERT INTO `sys_role_menu` VALUES ('3', '88');
INSERT INTO `sys_role_menu` VALUES ('3', '89');
INSERT INTO `sys_role_menu` VALUES ('3', '9');
INSERT INTO `sys_role_menu` VALUES ('3', '90');

-- ----------------------------
-- Table structure for `sys_role_office`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_office`;
CREATE TABLE `sys_role_office` (
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  `office_id` varchar(64) NOT NULL COMMENT '机构编号',
  PRIMARY KEY (`role_id`,`office_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-机构';

-- ----------------------------
-- Records of sys_role_office
-- ----------------------------
INSERT INTO `sys_role_office` VALUES ('7', '10');
INSERT INTO `sys_role_office` VALUES ('7', '11');
INSERT INTO `sys_role_office` VALUES ('7', '12');
INSERT INTO `sys_role_office` VALUES ('7', '13');
INSERT INTO `sys_role_office` VALUES ('7', '14');
INSERT INTO `sys_role_office` VALUES ('7', '15');
INSERT INTO `sys_role_office` VALUES ('7', '16');
INSERT INTO `sys_role_office` VALUES ('7', '17');
INSERT INTO `sys_role_office` VALUES ('7', '18');
INSERT INTO `sys_role_office` VALUES ('7', '19');
INSERT INTO `sys_role_office` VALUES ('7', '20');
INSERT INTO `sys_role_office` VALUES ('7', '21');
INSERT INTO `sys_role_office` VALUES ('7', '22');
INSERT INTO `sys_role_office` VALUES ('7', '23');
INSERT INTO `sys_role_office` VALUES ('7', '24');
INSERT INTO `sys_role_office` VALUES ('7', '25');
INSERT INTO `sys_role_office` VALUES ('7', '26');
INSERT INTO `sys_role_office` VALUES ('7', '7');
INSERT INTO `sys_role_office` VALUES ('7', '8');
INSERT INTO `sys_role_office` VALUES ('7', '9');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `company_id` varchar(64) NOT NULL COMMENT '归属公司',
  `office_id` varchar(64) NOT NULL COMMENT '归属部门',
  `login_name` varchar(100) NOT NULL COMMENT '登录名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `no` varchar(100) DEFAULT NULL COMMENT '工号',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) DEFAULT NULL COMMENT '手机',
  `user_type` char(1) DEFAULT NULL COMMENT '用户类型',
  `photo` varchar(1000) DEFAULT NULL COMMENT '用户头像',
  `login_ip` varchar(100) DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `login_flag` varchar(64) DEFAULT NULL COMMENT '是否可登录',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_user_office_id` (`office_id`),
  KEY `sys_user_login_name` (`login_name`),
  KEY `sys_user_company_id` (`company_id`),
  KEY `sys_user_update_date` (`update_date`),
  KEY `sys_user_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '1', '2', 'admin', 'ce9cb6b7e98a731a006203eb7608c460e74077db1648b2ccec93ad20', '0001', '系统管理员', 'caoxb@ichaotu.com', '8675', '8675', '', '', '0:0:0:0:0:0:0:1', '2015-05-29 23:21:52', '1', '1', '2013-05-27 08:00:00', '1', '2015-05-28 11:44:08', '最高管理员', '0');
INSERT INTO `sys_user` VALUES ('10', '7', '11', 'jn_jsb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0010', '济南技术部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_user` VALUES ('11', '12', '13', 'lc_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0011', '济南历城领导', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_user` VALUES ('12', '12', '18', 'lx_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0012', '济南历下领导', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_user` VALUES ('13', '22', '23', 'gx_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0013', '济南高新领导', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_user` VALUES ('2', '1', '2', 'sd_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0002', '管理员', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_user` VALUES ('3', '1', '3', 'sd_zhb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0003', '综合部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_user` VALUES ('4', '1', '4', 'sd_scb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0004', '市场部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_user` VALUES ('5', '1', '5', 'sd_jsb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0005', '技术部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '0');
INSERT INTO `sys_user` VALUES ('6', '1', '6', 'sd_yfb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0006', '研发部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_user` VALUES ('7', '7', '8', 'jn_admin', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0007', '济南领导', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_user` VALUES ('8', '7', '9', 'jn_zhb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0008', '济南综合部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');
INSERT INTO `sys_user` VALUES ('9', '7', '10', 'jn_scb', '02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032', '0009', '济南市场部', null, null, null, null, null, null, null, '1', '1', '2013-05-27 08:00:00', '1', '2013-05-27 08:00:00', null, '1');

-- ----------------------------
-- Table structure for `sys_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` varchar(64) NOT NULL COMMENT '用户编号',
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户-角色';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('1', '2');
INSERT INTO `sys_user_role` VALUES ('10', '2');
INSERT INTO `sys_user_role` VALUES ('11', '3');
INSERT INTO `sys_user_role` VALUES ('12', '4');
INSERT INTO `sys_user_role` VALUES ('13', '5');
INSERT INTO `sys_user_role` VALUES ('14', '6');
INSERT INTO `sys_user_role` VALUES ('2', '1');
INSERT INTO `sys_user_role` VALUES ('3', '2');
INSERT INTO `sys_user_role` VALUES ('4', '3');
INSERT INTO `sys_user_role` VALUES ('5', '4');
INSERT INTO `sys_user_role` VALUES ('6', '5');
INSERT INTO `sys_user_role` VALUES ('7', '2');
INSERT INTO `sys_user_role` VALUES ('7', '7');
INSERT INTO `sys_user_role` VALUES ('8', '2');
INSERT INTO `sys_user_role` VALUES ('9', '1');

-- ----------------------------
-- Table structure for `test_data`
-- ----------------------------
DROP TABLE IF EXISTS `test_data`;
CREATE TABLE `test_data` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `user_id` varchar(64) DEFAULT NULL COMMENT '归属用户',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属部门',
  `area_id` varchar(64) DEFAULT NULL COMMENT '归属区域',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `in_date` date DEFAULT NULL COMMENT '加入日期',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务数据表';

-- ----------------------------
-- Records of test_data
-- ----------------------------

-- ----------------------------
-- Table structure for `test_data_child`
-- ----------------------------
DROP TABLE IF EXISTS `test_data_child`;
CREATE TABLE `test_data_child` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `test_data_main_id` varchar(64) DEFAULT NULL COMMENT '业务主表ID',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_child_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务数据子表';

-- ----------------------------
-- Records of test_data_child
-- ----------------------------

-- ----------------------------
-- Table structure for `test_data_main`
-- ----------------------------
DROP TABLE IF EXISTS `test_data_main`;
CREATE TABLE `test_data_main` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `user_id` varchar(64) DEFAULT NULL COMMENT '归属用户',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属部门',
  `area_id` varchar(64) DEFAULT NULL COMMENT '归属区域',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `in_date` date DEFAULT NULL COMMENT '加入日期',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_main_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务数据表';

-- ----------------------------
-- Records of test_data_main
-- ----------------------------

-- ----------------------------
-- Table structure for `test_tree`
-- ----------------------------
DROP TABLE IF EXISTS `test_tree`;
CREATE TABLE `test_tree` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_tree_del_flag` (`del_flag`),
  KEY `test_data_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='树结构表';

-- ----------------------------
-- Records of test_tree
-- ----------------------------
