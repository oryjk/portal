/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50615
Source Host           : localhost:3306
Source Database       : portal

Target Server Type    : MYSQL
Target Server Version : 50615
File Encoding         : 65001

Date: 2015-12-28 17:35:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `aboutus`
-- ----------------------------
DROP TABLE IF EXISTS `aboutus`;
CREATE TABLE `aboutus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `content` varchar(5000) NOT NULL,
  `date` date NOT NULL,
  `type` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aboutus
-- ----------------------------
INSERT INTO `aboutus` VALUES ('4', null, '<p>&nbsp;&nbsp;成都众鑫惠联网络科技有限公司成立于2015年6月，由多家知名金融企业与专业投资机构共同创办，定位于中国互联网金融综合服务平台，囊括了众筹、第三方支付、P2P网贷、在线理财、绝当品销售等多个业务。创始团队在成功运作国内排名前列的P2P公司后再次创业，凭借团队在互联网金融领域的权威性和丰富的经验积累成立“点金子”互联网典当淘宝平台，目前已获资本投资。</p><p>&nbsp;&nbsp;应趋势、谋全局、创新意、求突破，“点金子”尊崇典当淘宝新理念，以线下各典当行的绝当品为销售目标，货源上首先确保质量优势，产品均由典当行自有鉴定师把关，支持国家商品质量鉴定。平台商品在保证质量的情况下还有无可比拟的价格优势，通过创新的金融思维、先进的技术平台和O2O业务模式，“点金子”依托线下典当行优质资源，致力于打造互联网金融领域的创新平台，专注资产管理，不断为投资者提供资金配置解决方案，帮助投资者管理财富。</p><p>&nbsp;&nbsp;在对比目前线上大部分P2P平台模式后，“点金子”平台与典当行合作模式的众筹产品风险更低，资金保障更安全，所有众筹产品都有相应的足值抵押物（如房产、汽车、珠宝商的货物等等）。依据典当业务的特性，在客户不能及时还款的情况下，典当机构可以直接处置相应典当物品进行资金回笼。随着大众群体的消费观、理财观更理性，“点金子”平台通过在當资产众筹业务，让参与进来的用户更了解典当这一传统行业的魅力，通过“点金子”平台成为典当行的“少东家”。</p><p><br/></p>', '2015-12-27', '1', '1');
INSERT INTO `aboutus` VALUES ('5', null, '<p>1）房产抵押贷款</p><p>个人、企业名下的以及取得房产证的住宅、商品房、别墅、写字间、商铺和经营性用房、厂房、土地等。</p><p>2）民品典当</p><p>黄铂金饰品（黄金、铂金、K金首饰及摆件）：珠宝（钻石首饰及裸钻、各类高档宝石饰品，如红宝石、蓝宝石、金绿宝石等）；玉石（翡翠、白玉和田籽料等各类高档玉石）；名表（各类高档名牌手表）；高档红木家具；高档数码产品（数码相机、数码摄像机、笔记本电脑、高档手机、MP3/MP4、IPOD、PSP等产品）；高档家电产品（液晶电视、家庭影院、组合音响、台式整机等产品）；奢侈品等。</p><p>3）汽车质押贷款</p><p>在成都车管所登记的个人、公司所有机动车辆及经销商4S店库存商品车。</p><p><br/></p>', '2015-12-27', '2', '0');
INSERT INTO `aboutus` VALUES ('6', null, '<p><span style=\"font-size: 18px;\"><strong>1）房产抵押贷款</strong></span></p><p>个人、企业名下的以及取得房产证的住宅、商品房、别墅、写字间、商铺和经营性用房、厂房、土地等。</p><p><span style=\"font-size: 18px;\"><strong>2）民品典当</strong></span></p><p>黄铂金饰品（黄金、铂金、K金首饰及摆件）：珠宝（钻石首饰及裸钻、各类高档宝石饰品，如红宝石、蓝宝石、金绿宝石等）；玉石（翡翠、白玉和田籽料等各类高档玉石）；名表（各类高档名牌手表）；高档红木家具；高档数码产品（数码相机、数码摄像机、笔记本电脑、高档手机、MP3/MP4、IPOD、PSP等产品）；高档家电产品（液晶电视、家庭影院、组合音响、台式整机等产品）；奢侈品等。</p><p><span style=\"font-size: 18px;\"><strong>3）汽车质押贷款</strong></span></p><p>在成都车管所登记的个人、公司所有机动车辆及经销商4S店库存商品车。</p><p><br/></p><p>	</p>', '2015-12-27', '2', '1');
INSERT INTO `aboutus` VALUES ('7', null, '<p><strong><span style=\"font-size: 18px;\">1） 网络美工：</span></strong></p><p>较好的广告创意、设计能力，扎实的美术功底，极强的设计表现能力，有独立设计、制作能力；</p><p><strong><span style=\"font-size: 18px;\">2） 网页UX设计：</span></strong></p><p>负责公司网页、网站和Web应用程序的页面制作和美工设计。</p><p><strong><span style=\"font-size: 18px;\">3） 网站运营推广总监</span></strong>：</p><p>全面负责“点金子”网www.dianjinzi.com电商平台（包括PC端、WAP端、APP）的运营工作，如搜索引擎、微信、微博、论 坛、QQ群、友情 链接等，推广公司产品、提高公司网站知名度，提升IP/PV/UV等；</p><p>有意者请将您的简历Email到： dianjinziwang@163.com （请勿以附件形式发送简历！） 邮件名“姓名-部门-职位”</p><p>简历中请注明： 1.您所申请的职位 2.您目前或期望的薪资范畴</p><p><br/></p>', '2015-12-27', '3', '1');
INSERT INTO `aboutus` VALUES ('8', null, '<p><strong><span style=\"font-size: 18px;\">成都总部</span></strong></p><p>&nbsp;&nbsp;地址：成都市武侯区武阳大道5号下一站都市写字楼A座302-303</p><p>&nbsp;&nbsp;邮编：610000</p><p>&nbsp;&nbsp;电话：028-85033350</p><p><strong><span style=\"font-size: 18px;\">商务合作</span></strong></p><p>&nbsp;&nbsp;点金子线上平台致力于拓展绝当品销售渠道的典当行推出多种合作模式。</p><p>&nbsp;&nbsp;我们希望与贵公司共谋发展，一同进步。</p><p>&nbsp;&nbsp;欢迎来电来函：</p><p>&nbsp;&nbsp;电话：028-85033350</p><p><br/></p>', '2015-12-28', '4', '1');

-- ----------------------------
-- Table structure for `baotao`
-- ----------------------------
DROP TABLE IF EXISTS `baotao`;
CREATE TABLE `baotao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `content` varchar(5000) NOT NULL,
  `date` date NOT NULL,
  `type` int(11) NOT NULL,
  `state` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baotao
-- ----------------------------
INSERT INTO `baotao` VALUES ('2', null, '<p>sdrfsdfsdv</p>', '2015-12-25', '2', '0');
INSERT INTO `baotao` VALUES ('3', null, '<p>hbjbkjbkbk</p>', '2015-12-25', '1', '0');
INSERT INTO `baotao` VALUES ('4', null, '<p>&nbsp;&nbsp;成都众鑫惠联网络科技有限公司成立于2015年6月，由多家知名金融企业与专业投资机构共同创办，定位于中国互联网金融综合服务平台，囊括了众筹、第三方支付、P2P网贷、在线理财、绝当品销售等多个业务。创始团队在成功运作国内排名前列的P2P公司后再次创业，凭借团队在互联网金融领域的权威性和丰富的经验积累成立“点金子”互联网典当淘宝平台，目前已获资本投资。</p><p>	</p>', '2015-12-25', '1', '1');
INSERT INTO `baotao` VALUES ('5', null, '<p>&nbsp;&nbsp;成都众鑫惠联网络科技有限公司成立于2015年6月，由多家知名金融企业与专业投资机构共同创办，定位于中国互联网金融综合服务平台，囊括了众筹、第三方支付、P2P网贷、在线理财、绝当品销售等多个业务。创始团队在成功运作国内排名前列的P2P公司后再次创业，凭借团队在互联网金融领域的权威性和丰富的经验积累成立“点金子”互联网典当淘宝平台，目前已获资本投资。&nbsp;</p><p><br/></p><p>&nbsp;&nbsp;应趋势、谋全局、创新意、求突破，“点金子”尊崇典当淘宝新理念，以线下各典当行的绝当品为销售目标，货源上首先确保质量优势，产品均由典当行自有鉴定师把关，支持国家商品质量鉴定。平台商品在保证质量的情况下还有无可比拟的价格优势，通过创新的金融思维、先进的技术平台和O2O业务模式，“点金子”依托线下典当行优质资源，致力于打造互联网金融领域的创新平台，专注资产管理，不断为投资者提供资金配置解决方案，帮助投资者管理财富。</p>', '2015-12-25', '2', '0');
INSERT INTO `baotao` VALUES ('6', null, '<p>&nbsp;&nbsp;成都众鑫惠联网络科技有限公司成立于2015年6月，由多家知名金融企业与专业投资机构共同创办，定位于中国互联网金融综合服务平台，囊括了众筹、第三方支付、P2P网贷、在线理财、绝当品销售等多个业务。创始团队在成功运作国内排名前列的P2P公司后再次创业，凭借团队在互联网金融领域的权威性和丰富的经验积累成立“点金子”互联网典当淘宝平台，目前已获资本投资。&nbsp;</p><p>&nbsp;&nbsp;应趋势、谋全局、创新意、求突破，“点金子”尊崇典当淘宝新理念，以线下各典当行的绝当品为销售目标，货源上首先确保质量优势，产品均由典当行自有鉴定师把关，支持国家商品质量鉴定。平台商品在保证质量的情况下还有无可比拟的价格优势，通过创新的金融思维、先进的技术平台和O2O业务模式，“点金子”依托线下典当行优质资源，致力于打造互联网金融领域的创新平台，专注资产管理，不断为投资者提供资金配置解决方案，帮助投资者管理财富。</p><p>	</p>', '2015-12-25', '2', '0');
INSERT INTO `baotao` VALUES ('7', null, '<p>&nbsp;&nbsp;成都众鑫惠联网络科技有限公司成立于2015年6月，由多家知名金融企业与专业投资机构共同创办，定位于中国互联网金融综合服务平台，囊括了众筹、第三方支付、P2P网贷、在线理财、绝当品销售等多个业务。创始团队在成功运作国内排名前列的P2P公司后再次创业，凭借团队在互联网金融领域的权威性和丰富的经验积累成立“点金子”互联网典当淘宝平台，目前已获资本投资。</p><p>&nbsp;&nbsp;应趋势、谋全局、创新意、求突破，“点金子”尊崇典当淘宝新理念，以线下各典当行的绝当品为销售目标，货源上首先确保质量优势，产品均由典当行自有鉴定师把关，支持国家商品质量鉴定。平台商品在保证质量的情况下还有无可比拟的价格优势，通过创新的金融思维、先进的技术平台和O2O业务模式，“点金子”依托线下典当行优质资源，致力于打造互联网金融领域的创新平台，专注资产管理，不断为投资者提供资金配置解决方案，帮助投资者管理财富。</p><p>&nbsp;&nbsp;在对比目前线上大部分P2P平台模式后，“点金子”平台与典当行合作模式的众筹产品风险更低，资金保障更安全，所有众筹产品都有相应的足值抵押物（如房产、汽车、珠宝商的货物等等）。依据典当业务的特性，在客户不能及时还款的情况下，典当机构可以直接处置相应典当物品进行资金回笼。随着大众群体的消费观、理财观更理性，“点金子”平台通过在當资产众筹业务，让参与进来的用户更了解典当这一传统行业的魅力，通过“点金子”平台成为典当行的“少东家”。</p><p><br/></p>', '2015-12-27', '2', '0');
INSERT INTO `baotao` VALUES ('8', null, '<p>&nbsp;&nbsp;成都众鑫惠联网络科技有限公司成立于2015年6月，由多家知名金融企业与专业投资机构共同创办，定位于中国互联网金融综合服务平台，囊括了众筹、第三方支付、P2P网贷、在线理财、绝当品销售等多个业务。创始团队在成功运作国内排名前列的P2P公司后再次创业，凭借团队在互联网金融领域的权威性和丰富的经验积累成立“点金子”互联网典当淘宝平台，目前已获资本投资。</p><p>&nbsp;&nbsp;应趋势、谋全局、创新意、求突破，“点金子”尊崇典当淘宝新理念，以线下各典当行的绝当品为销售目标，货源上首先确保质量优势，产品均由典当行自有鉴定师把关，支持国家商品质量鉴定。平台商品在保证质量的情况下还有无可比拟的价格优势，通过创新的金融思维、先进的技术平台和O2O业务模式，“点金子”依托线下典当行优质资源，致力于打造互联网金融领域的创新平台，专注资产管理，不断为投资者提供资金配置解决方案，帮助投资者管理财富。</p><p>&nbsp;&nbsp;在对比目前线上大部分P2P平台模式后，“点金子”平台与典当行合作模式的众筹产品风险更低，资金保障更安全，所有众筹产品都有相应的足值抵押物（如房产、汽车、珠宝商的货物等等）。依据典当业务的特性，在客户不能及时还款的情况下，典当机构可以直接处置相应典当物品进行资金回笼。随着大众群体的消费观、理财观更理性，“点金子”平台通过在當资产众筹业务，让参与进来的用户更了解典当这一传统行业的魅力，通过“点金子”平台成为典当行的“少东家”。</p><p><br/></p>', '2015-12-27', '2', '1');

-- ----------------------------
-- Table structure for `categroy`
-- ----------------------------
DROP TABLE IF EXISTS `categroy`;
CREATE TABLE `categroy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categroy
-- ----------------------------

-- ----------------------------
-- Table structure for `companyintro`
-- ----------------------------
DROP TABLE IF EXISTS `companyintro`;
CREATE TABLE `companyintro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `article` varchar(5000) NOT NULL,
  `date` date NOT NULL,
  `banner_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of companyintro
-- ----------------------------

-- ----------------------------
-- Table structure for `media`
-- ----------------------------
DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) DEFAULT NULL,
  `type` int(20) DEFAULT NULL,
  `relation` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of media
-- ----------------------------
INSERT INTO `media` VALUES ('2', '6655', '3344', '7766');
INSERT INTO `media` VALUES ('3', '555', '2', '66');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `url` varchar(256) NOT NULL,
  `type` varchar(5) DEFAULT NULL,
  `num` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '首页', '#', '1', '1');
INSERT INTO `menu` VALUES ('2', '绝当淘', '#', '2', '2');
INSERT INTO `menu` VALUES ('3', '收益淘', '#', '3', '3');
INSERT INTO `menu` VALUES ('4', '新闻资讯', '#', '4', '4');
INSERT INTO `menu` VALUES ('5', '关于我们', '#', '5', '5');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article` varchar(5000) DEFAULT NULL,
  `title` varchar(26) DEFAULT NULL,
  `date` date NOT NULL,
  `categroy_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('2', '66', '77', '2015-12-23', '88', '1');
INSERT INTO `news` VALUES ('3', '33', '44', '2015-12-24', '55', '0');
INSERT INTO `news` VALUES ('4', '44', '55', '2015-12-25', '66', '1');
INSERT INTO `news` VALUES ('5', '55', '66', '2015-12-26', '77', '0');
INSERT INTO `news` VALUES ('6', '66', '77', '2015-12-23', '88', '1');
INSERT INTO `news` VALUES ('7', null, '在', '0000-00-00', null, '1');

-- ----------------------------
-- Table structure for `newscategroy`
-- ----------------------------
DROP TABLE IF EXISTS `newscategroy`;
CREATE TABLE `newscategroy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newscategroy
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '0', 'root', 'root');
