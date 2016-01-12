/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50615
Source Host           : localhost:3306
Source Database       : portal

Target Server Type    : MYSQL
Target Server Version : 50615
File Encoding         : 65001

Date: 2015-12-31 17:18:43
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
-- Table structure for `banner`
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `banner_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(100) NOT NULL,
  `type` int(10) unsigned NOT NULL,
  `status` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('1', 'resources/core/images/banner5.jpg', '2', null);
INSERT INTO `banner` VALUES ('2', 'resources/core/images/banner7.jpg', '3', null);
INSERT INTO `banner` VALUES ('3', 'resources/core/images/banner3.jpg', '1', null);
INSERT INTO `banner` VALUES ('4', 'resources/core/images/banner4.jpg', '1', null);
INSERT INTO `banner` VALUES ('5', 'resources/core/images/banner1.jpg', '1', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of baotao
-- ----------------------------
INSERT INTO `baotao` VALUES ('4', null, '<p>&nbsp;&nbsp;成都众鑫惠联网络科技有限公司成立于2015年6月，由多家知名金融企业与专业投资机构共同创办，定位于中国互联网金融综合服务平台，囊括了众筹、第三方支付、P2P网贷、在线理财、绝当品销售等多个业务。创始团队在成功运作国内排名前列的P2P公司后再次创业，凭借团队在互联网金融领域的权威性和丰富的经验积累成立“点金子”互联网典当淘宝平台，目前已获资本投资。</p><p>	</p>', '2015-12-25', '1', '0');
INSERT INTO `baotao` VALUES ('5', null, '<p>&nbsp;&nbsp;成都众鑫惠联网络科技有限公司成立于2015年6月，由多家知名金融企业与专业投资机构共同创办，定位于中国互联网金融综合服务平台，囊括了众筹、第三方支付、P2P网贷、在线理财、绝当品销售等多个业务。创始团队在成功运作国内排名前列的P2P公司后再次创业，凭借团队在互联网金融领域的权威性和丰富的经验积累成立“点金子”互联网典当淘宝平台，目前已获资本投资。&nbsp;</p><p><br/></p><p>&nbsp;&nbsp;应趋势、谋全局、创新意、求突破，“点金子”尊崇典当淘宝新理念，以线下各典当行的绝当品为销售目标，货源上首先确保质量优势，产品均由典当行自有鉴定师把关，支持国家商品质量鉴定。平台商品在保证质量的情况下还有无可比拟的价格优势，通过创新的金融思维、先进的技术平台和O2O业务模式，“点金子”依托线下典当行优质资源，致力于打造互联网金融领域的创新平台，专注资产管理，不断为投资者提供资金配置解决方案，帮助投资者管理财富。</p>', '2015-12-25', '2', '0');
INSERT INTO `baotao` VALUES ('6', null, '<p>&nbsp;&nbsp;成都众鑫惠联网络科技有限公司成立于2015年6月，由多家知名金融企业与专业投资机构共同创办，定位于中国互联网金融综合服务平台，囊括了众筹、第三方支付、P2P网贷、在线理财、绝当品销售等多个业务。创始团队在成功运作国内排名前列的P2P公司后再次创业，凭借团队在互联网金融领域的权威性和丰富的经验积累成立“点金子”互联网典当淘宝平台，目前已获资本投资。&nbsp;</p><p>&nbsp;&nbsp;应趋势、谋全局、创新意、求突破，“点金子”尊崇典当淘宝新理念，以线下各典当行的绝当品为销售目标，货源上首先确保质量优势，产品均由典当行自有鉴定师把关，支持国家商品质量鉴定。平台商品在保证质量的情况下还有无可比拟的价格优势，通过创新的金融思维、先进的技术平台和O2O业务模式，“点金子”依托线下典当行优质资源，致力于打造互联网金融领域的创新平台，专注资产管理，不断为投资者提供资金配置解决方案，帮助投资者管理财富。</p><p>	</p>', '2015-12-25', '2', '0');
INSERT INTO `baotao` VALUES ('12', null, '<p>&nbsp;&nbsp;成都众鑫惠联网络科技有限公司成立于2015年6月，由多家知名金融企业与专业投资机构共同创办，定位于中国互联网金融综合服务平台，囊括了众筹、第三方支付、P2P网贷、在线理财、绝当品销售等多个业务。创始团队在成功运作国内排名前列的P2P公司后再次创业，凭借团队在互联网金融领域的权威性和丰富的经验积累成立“点金子”互联网典当淘宝平台，目前已获资本投资。</p><p>&nbsp;&nbsp;应趋势、谋全局、创新意、求突破，“点金子”尊崇典当淘宝新理念，以线下各典当行的绝当品为销售目标，货源上首先确保质量优势，产品均由典当行自有鉴定师把关，支持国家商品质量鉴定。平台商品在保证质量的情况下还有无可比拟的价格优势，通过创新的金融思维、先进的技术平台和O2O业务模式，“点金子”依托线下典当行优质资源，致力于打造互联网金融领域的创新平台，专注资产管理，不断为投资者提供资金配置解决方案，帮助投资者管理财富。</p><p>&nbsp;&nbsp;在对比目前线上大部分P2P平台模式后，“点金子”平台与典当行合作模式的众筹产品风险更低，资金保障更安全，所有众筹产品都有相应的足值抵押物（如房产、汽车、珠宝商的货物等等）。依据典当业务的特性，在客户不能及时还款的情况下，典当机构可以直接处置相应典当物品进行资金回笼。随着大众群体的消费观、理财观更理性，“点金子”平台通过在當资产众筹业务，让参与进来的用户更了解典当这一传统行业的魅力，通过“点金子”平台成为典当行的“少东家”。</p><p><br/></p><p><br/></p><p>	</p>', '2015-12-29', '2', '0');
INSERT INTO `baotao` VALUES ('13', null, '<p>&nbsp;&nbsp;成都众鑫惠联网络科技有限公司成立于2015年6月，由多家知名金融企业与专业投资机构共同创办，定位于中国互联网金融综合服务平台，囊括了众筹、第三方支付、P2P网贷、在线理财、绝当品销售等多个业务。创始团队在成功运作国内排名前列的P2P公司后再次创业，凭借团队在互联网金融领域的权威性和丰富的经验积累成立“点金子”互联网典当淘宝平台，目前已获资本投资。</p><p>&nbsp;&nbsp;应趋势、谋全局、创新意、求突破，“点金子”尊崇典当淘宝新理念，以线下各典当行的绝当品为销售目标，货源上首先确保质量优势，产品均由典当行自有鉴定师把关，支持国家商品质量鉴定。平台商品在保证质量的情况下还有无可比拟的价格优势，通过创新的金融思维、先进的技术平台和O2O业务模式，“点金子”依托线下典当行优质资源，致力于打造互联网金融领域的创新平台，专注资产管理，不断为投资者提供资金配置解决方案，帮助投资者管理财富。</p><p>&nbsp;&nbsp;在对比目前线上大部分P2P平台模式后，“点金子”平台与典当行合作模式的众筹产品风险更低，资金保障更安全，所有众筹产品都有相应的足值抵押物（如房产、汽车、珠宝商的货物等等）。依据典当业务的特性，在客户不能及时还款的情况下，典当机构可以直接处置相应典当物品进行资金回笼。随着大众群体的消费观、理财观更理性，“点金子”平台通过在當资产众筹业务，让参与进来的用户更了解典当这一传统行业的魅力，通过“点金子”平台成为典当行的“少东家”。</p><p><br/></p><p><br/></p><p><br/></p><p>	</p>', '2015-12-29', '2', '0');
INSERT INTO `baotao` VALUES ('14', null, '<p>&nbsp;&nbsp;点金子绝当淘（<a href=\"http://mp.dianjinzi.com\" target=\"_self\" title=\"mp.dianjinzi.com\">mp.dianjinzi.com</a>），是众鑫惠联旗下新一代的B2C网络典当综合平台,囊括了珠宝首饰、奢侈品、黄铂金、钟表、艺术品、数码产品等绝当品销售,以及线上咨询、估价、预约时间到店进行典当等多个业务。除网上浏览、选定商品、订单购买等基础功能外，点金子还丰富了鉴定、拍卖等方面的服务功能。绝当淘集绝当品在线销售、在线典当于一身，真正做到线上线下有效结合，旨在为广大用户提供全新的购物体验！</p><p><br/></p><p><br/></p><p><br/></p><p>	</p>', '2015-12-31', '2', '0');
INSERT INTO `baotao` VALUES ('15', null, '<p>&nbsp;&nbsp;点金子绝当淘（mp.dianjinzi.com），是众鑫惠联旗下新一代的B2C网络典当综合平台,囊括了珠宝首饰、奢侈品、黄铂金、钟表、艺术品、数码产品等绝当品销售,以及线上咨询、估价、预约时间到店进行典当等多个业务。除网上浏览、选定商品、订单购买等基础功能外，点金子还丰富了鉴定、拍卖等方面的服务功能。绝当淘集绝当品在线销售、在线典当于一身，真正做到线上线下有效结合，旨在为广大用户提供全新的购物体验！</p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p>', '2015-12-31', '2', '1');
INSERT INTO `baotao` VALUES ('16', null, '<p style=\"text-align: left;\">&nbsp;&nbsp;点金子淘在当（www.dianjinzi.com），是众鑫惠联以自身专业典当行金融服务经验和创新互联网思维完美结合而打造的专业、安全、透明、多方共赢的投融资平台。其凭借研发技术、金融产品与信审风控等方面的强大优势，以用户体验为核心，完善的风控流程和成熟的风控规范操作，一方面，使借款者能够快捷、低成本地获得融资，其中的典当行有机会获得更多资源；&nbsp;另一方面，使投资者可以更方便、安全地享受财富升值。</p><p><br style=\"text-align: left;\"/></p>', '2015-12-31', '1', '0');
INSERT INTO `baotao` VALUES ('17', null, '<p><span style=\"font-size: 18px;\">&nbsp;&nbsp;点金子绝当淘（mp.dianjinzi.com），是众鑫惠联旗下新一代的B2C网络典当综合平台,囊括了珠宝首饰、奢侈品、黄铂金、钟表、艺术品、数码产品等绝当品销售,以及线上咨询、估价、预约时间到店进行典当等多个业务。除网上浏览、选定商品、订单购买等基础功能外，点金子还丰富了鉴定、拍卖等方面的服务功能。绝当淘集绝当品在线销售、在线典当于一身，真正做到线上线下有效结合，旨在为广大用户提供全新的购物体验！</span></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p>	</p>', '2015-12-31', '2', '0');
INSERT INTO `baotao` VALUES ('18', null, '<p><span style=\"font-size: 16px;\">&nbsp;&nbsp;点金子绝当淘（mp.dianjinzi.com），是众鑫惠联旗下新一代的B2C网络典当综合平台,囊括了珠宝首饰、奢侈品、黄铂金、钟表、艺术品、数码产品等绝当品销售,以及线上咨询、估价、预约时间到店进行典当等多个业务。除网上浏览、选定商品、订单购买等基础功能外，点金子还丰富了鉴定、拍卖等方面的服务功能。绝当淘集绝当品在线销售、在线典当于一身，真正做到线上线下有效结合，旨在为广大用户提供全新的购物体验！</span></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p><br/></p><p>	</p>', '2015-12-31', '2', '0');
INSERT INTO `baotao` VALUES ('19', null, '<p style=\"text-align: left;\"><span style=\"font-size: 16px;\">&nbsp;&nbsp;点金子淘在当（www.dianjinzi.com），是众鑫惠联以自身专业典当行金融服务经验和创新互联网思维完美结合而打造的专业、安全、透明、多方共赢的投融资平台。其凭借研发技术、金融产品与信审风控等方面的强大优势，以用户体验为核心，完善的风控流程和成熟的风控规范操作，一方面，使借款者能够快捷、低成本地获得融资，其中的典当行有机会获得更多资源；&nbsp;另一方面，使投资者可以更方便、安全地享受财富升值。</span></p><p><br style=\"text-align: left;\"/></p><p>	</p>', '2015-12-31', '1', '0');
INSERT INTO `baotao` VALUES ('20', null, '<p style=\"text-align: left;\"><span style=\"font-size: 16px;\">&nbsp;&nbsp;点金子淘在当（www.dianjinzi.com），是众鑫惠联以自身专业典当行金融服务经验和创新互联网思维完美结合而打造的专业、安全、透明、多方共赢的投融资平台。其凭借研发技术、金融产品与信审风控等方面的强大优势，以用户体验为核心，完善的风控流程和成熟的风控规范操作，一方面，使借款者能够快捷、低成本地获得融资，其中的典当行有机会获得更多资源；另一方面，使投资者可以更方便、安全地享受财富升值。</span></p><p><br style=\"text-align: left;\"/></p><p><br/></p><p>	</p>', '2015-12-31', '1', '0');
INSERT INTO `baotao` VALUES ('21', null, '<p><span style=\"font-size: 16px;\">&nbsp;&nbsp;点金子淘在当（www.dianjinzi.com），是众鑫惠联以自身专业典当行金融服务经验和创新互联网思维完美结合而打造的专业、安全、透明、多方共赢的投融资平台。其凭借研发技术、金融产品与信审风控等方面的强大优势，以用户体验为核心，完善的风控流程和成熟的风控规范操作，一方面，使借款者能够快捷、低成本地获得融资，其中的典当行有机会获得更多资源；另一方面，使投资者可以更方便、安全地享受财富升值。</span></p>', '2015-12-31', '1', '0');
INSERT INTO `baotao` VALUES ('22', null, '<p>&nbsp;&nbsp;点金子淘在当（www.dianjinzi.com），是众鑫惠联以自身专业典当行金融服务经验和创新互联网思维完美结合而打造的专业、安全、透明、多方共赢的投融资平台。其凭借研发技术、金融产品与信审风控等方面的强大优势，以用户体验为核心，完善的风控流程和成熟的风控规范操作，一方面，使借款者能够快捷、低成本地获得融资，其中的典当行有机会获得更多资源；&amp;nbsp;另一方面，使投资者可以更方便、安全地享受财富升值。</p>', '2015-12-31', '1', '1');

-- ----------------------------
-- Table structure for `categroy`
-- ----------------------------
DROP TABLE IF EXISTS `categroy`;
CREATE TABLE `categroy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `type` int(10) unsigned DEFAULT NULL,
  `num` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categroy
-- ----------------------------
INSERT INTO `categroy` VALUES ('1', '公司介绍', 'aboutus/showCompanyIntroduction', '1', '1');
INSERT INTO `categroy` VALUES ('2', '业务范围', 'aboutus/showSphereOfBusiness', '2', '2');
INSERT INTO `categroy` VALUES ('3', '招贤纳士', 'aboutus/showRecruitment', '3', '3');
INSERT INTO `categroy` VALUES ('4', '联系我们', 'aboutus/showContactUs', '4', '4');

-- ----------------------------
-- Table structure for `companyintro`
-- ----------------------------
DROP TABLE IF EXISTS `companyintro`;
CREATE TABLE `companyintro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `article` varchar(5000) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `banner_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of companyintro
-- ----------------------------
INSERT INTO `companyintro` VALUES ('1', '公司简介', '<p>&nbsp;&nbsp;成都众鑫惠联网络科技有限公司成立于2015年6月，由多家知名金融企业与专业投资机构共同创办，定位于中国互联网金融综合服务平台，囊括了众筹、第三方支付、P2P网贷、在线理财、绝当品销售等多个业务。创始团队在成功运作国内排名前列的P2P公司后再次创业，凭借团队在互联网金融领域的权威性和丰富的经验积累成立“点金子”互联网典当淘宝平台，目前已获资本投资。</p><p>	</p>', null, null, null, '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of media
-- ----------------------------
INSERT INTO `media` VALUES ('4', 'resources/core/images/banner7d8ad2561c53239ba085054633f0dff3.jpg', '1', '8');
INSERT INTO `media` VALUES ('5', '', '1', '9');
INSERT INTO `media` VALUES ('6', 'resources/core/images/bannercategory-ring.jpg', '1', '10');
INSERT INTO `media` VALUES ('7', 'resources/core/images/bannercategory-ring.jpg', '1', '11');
INSERT INTO `media` VALUES ('8', 'resources/core/images/bannercategory-ring.jpg', '1', '12');
INSERT INTO `media` VALUES ('9', 'resources/core/images/bannerC1509134757_advertisement_00.jpg', '1', '13');
INSERT INTO `media` VALUES ('10', 'resources/core/images/bannerC1509134757_advertisement_00.jpg', '1', '14');
INSERT INTO `media` VALUES ('11', 'resources/core/images/bannerC1509134757_advertisement_00.jpg', '1', '15');
INSERT INTO `media` VALUES ('12', 'resources/core/images/bannerC1509134757_advertisement_00.jpg', '1', '16');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `url` varchar(256) DEFAULT NULL,
  `type` varchar(5) NOT NULL,
  `num` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '首页', 'home', '1', '1');
INSERT INTO `menu` VALUES ('2', '绝当淘', 'baotao/showJueDangTao', '2', '2');
INSERT INTO `menu` VALUES ('3', '淘在当', 'baotao/showShouYiTao', '3', '3');
INSERT INTO `menu` VALUES ('4', '新闻资讯', 'news/all', '4', '4');
INSERT INTO `menu` VALUES ('5', '关于我们', 'aboutus/showCompanyIntroduction', '5', '5');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('8', '222222222222222222222222', '111111', '2015-12-30', '1', '0');
INSERT INTO `news` VALUES ('9', '111111111111', '222', '2015-12-31', '2', '0');
INSERT INTO `news` VALUES ('10', '中新网12月30日电（IT频道 吴涛）29日，国内漏洞报告平台乌云的一则漏洞公告显示，中国移动、电信和联通存在流量计费系统漏洞，用户可以利用该漏洞从而使用远远超出其套餐的流量。\n\n　　随后，中新网IT频道联系了三大运营商核实情况，截至发稿，尚未收到回应。\n\n　　乌云在上述漏洞公告中称，运营商为了给客户提供方便，设置了免收取流量费的白名单，当计费系统检测到用户访问的是白名单中的网址或接收彩信时就不会进行扣费。\n\n　　“问题出在检测上，当用户访问互联网时，向服务器发送一条http请求头，计费系统通过检测请求头来分辨用户访问的是不是白名单中的网址或者是接收彩信。但是计费系统检测的是用户发来的请求信息，这条信息是来自于用户的，通过自定义该信息可以达到欺骗计费检测达到免流量上网的目的。”上述漏洞公告描述道。\n\n　　乌云在公告中还称，若漏洞扩大，会使运营商损失过大。独立电信行业分析师付亮对中新网IT频道表示，电信运营商计费系统可能有BUG，上述情况也有可能存在，但这不是大漏洞，影响不大。（中新网IT频道）', '三大运营商被曝存计费漏洞：用户可免费用流量', '2015-12-31', '1', '1');
INSERT INTO `news` VALUES ('11', '加强新闻职业道德建设，培养造就一支“政治强、业务精、纪律严、作风正”的新闻工作者队伍，是马克思主义新闻观的基本要求，是党的新闻事业健康发展的根本保证。习近平总书记曾经指出，新闻工作是一种崇高的职业。每个新闻工作者都应该自重、自爱、自强，从而形成一种良好的作风。\n\n　　总体来看，新闻工作者队伍的状况是党和人民可以信赖的。不过，随着新闻媒体改革的不断深入和网络技术的迅猛发展，媒体格局和舆论生态发生了深刻变化，新闻工作者队伍也呈现出新的特点，特别是随着投资主体的日益多元和新兴媒体的急剧扩张，媒体从业人员的构成更复杂、思想更活跃、流动性更大，这些都对新闻职业道德建设提出了新的课题和挑战，有偿新闻、有偿不闻、新闻敲诈、报道失实等情况时有发生。在这样的新形势下，中国记协成立新闻道德委员会，依据法律法规，通过强化自律和他律，规范职业行为，防范失德风险，推动行风建设，十分必要。\n\n　　多年来，人民日报社编委会一直高度重视职业道德建设，从严管理采编队伍，针对新闻事业发展的新形势和新闻工作环境的新变化，采取了一系列行之有效的措施，正风肃纪，真抓严管，标本兼治，防患未然，坚决杜绝损害新闻行业声誉的行为，自觉维护党中央机关报的良好形象。\n\n　　一是筑牢防火墙。我们结合“三项学习教育活动”，对所有编辑记者分期分批进行专题培训，划定道德红线，做到警钟长鸣。我们制定了《人民日报采编手册》等带有“硬约束”性质的系统性规章，完善了职业道德建设的相关规定，明确了人民日报社编辑记者的行为准则，厘清了真与假、是与非、公与私、义与利的界限，始终坚持“政治导向第一、社会效益第一、人的品质第一”的原则，反复强调“不到现场不写稿、不是自采不署名、不经核实不发表”的规范，切实做到“人人肩上有责任，个个心里有标准、篇篇稿中有法度”。\n\n　　二是建立黑名单。我们强调职业道德建设没有“编外”，不管是总社的还是分社的，不管是报纸的还是刊物的，不管是网站的还是客户端、微信、微博的，不管是编辑部门的还是社属媒体的，只要违反纪律、冲撞行规、触碰底线，一经查实即纳入“黑名单”，轻则给予黄牌警告，重则实行终身禁入，不得在人民日报系统内任何一家媒体继续从业。\n\n　　三是严查逾矩者。我们始终坚持把政治纪律、政治规矩和宣传纪律放在前面，以严的标准要求编辑记者，以严的措施管理编辑记者，以严的纪律约束编辑记者，对于踩“红线”、闯“雷区”的行为实行“零容忍”，使所有员工心有所畏、言有所戒、行有所止。\n\n　　作风建设永远在路上，新闻道德建设也永远在路上。针对新闻事业发展的新形势和新闻工作者队伍出现的新问题，结合我们在实际工作中的一些体会，提出如下具体建议：\n\n　　一是强化主体责任。各媒体是道德建设的第一责任人，要细化制度，强化约束，守好自己的门，管好自己的人，使所有从业人员始终心存敬畏，手握戒尺。\n\n　　二是设立举报热线。畅通举报和处理机制，发现见利忘义、敲诈勒索、行为不端、造谣生事行为，无论何时何地，都能及时举报，快速处置，绝不让目无法纪者逍遥法纪之外。\n\n　　三是建立信息平台。建立全国新闻从业人员信息库，实现信息资源共享和要情实时发布，做到“一处违规，全国可查”“一次失范，终身记录”，让恪守新闻职业道德成为鞭策个人行为的准绳。', '新闻道德委员会成立大会发言精选 为行业正本清源 ', '2015-12-31', '2', '1');
INSERT INTO `news` VALUES ('12', ' 金庸、阎肃等知名人士屡次“被死亡”，“致癌”的假新闻让草莓滞销，“广告费”原来竟是“保护费”……“潜伏”在各个舆论场，总是能听到不少人对新闻不良现象的吐槽。公众的微观感受，在媒体那里折射出的，正是新闻道德的滑坡和新闻责任的缺失。“铁肩担道义，妙手著文章。”这是媒体人的自许和追求，也是社会的赞誉和期待，但一些新闻道德的污垢和“雾霾”正在让其蒙尘。\n\n    无道德，不新闻。新闻道德既是媒体公信力的根本基石，也是新闻成为社会正能量的重要支撑，只有挺起道德“脊梁”的新闻报道，才能在错综复杂的舆论环境中担起坚持正确舆论导向、为全面深化改革提供舆论支持的重任。如何重建新闻道德，匡正新闻失范？如何强化职业伦理，防止新闻失序？中国记协新闻道德委员会的成立，是对这道时代课题作出的最新回答。它的成立，不仅承载着公众的关注，也承载着媒体人的期待。\n\n    道德问题单靠道德自身解决，往往是不可靠的。道德背后，需要刚性的约束和强效的监督。新闻道德委员会依据法律法规，通过强化自律和他律，规范职业行为，推动行风建设，不仅具有很强的针对性，而且具有重大的现实意义。从“负面案例清单”到聘请社会监督员参与，再到召开典型案例评议会……自2013年第一批试点建立以来，新闻道德委员会剑指新闻界虚假新闻、低俗之风、不良广告、新闻敲诈等“新旧四害”，有力清除着新闻道德的毒瘤。\n\n    当前，新闻正处在一个全新的舆论场和传播格局，新媒体的冲击、转型的挑战、市场的压力，无一不将新闻从业者的道德置于全新的拷问之中。面对“快”的压力和“利”的诱惑，要不要屈服和低头？面对“眼球”的竞争和“面子”的虚荣，能不能拉低一点底线？面对规则的漏洞和制度的罅隙，会不会侥幸试一把？心中若校不准道德的定盘星，在这些外界的诱惑面前，“新闻节操”必“碎”一地。校准新闻道德的定盘星，就是为了筑牢新闻品格的堤坝，锻造媒体的公信力，挺起新闻的“脊梁”。\n\n    “倘若一个国家是一条航行在大海上的船，新闻记者就是船头的瞭望者。他要在一望无际的海面上观察一切，审视海上的不测风云和浅滩暗礁，及时发出警告。”眼下，这艘大船仍在驶向彼岸的征途中，瞭望不能“掉线”，心中的理想和价值还需坚守，道德和良心也请继续在岗。', '时刻校准新闻道德的定盘星 ', '2015-12-31', '2', '1');
INSERT INTO `news` VALUES ('13', ' 金庸、阎肃等知名人士屡次“被死亡”，“致癌”的假新闻让草莓滞销，“广告费”原来竟是“保护费”……“潜伏”在各个舆论场，总是能听到不少人对新闻不良现象的吐槽。公众的微观感受，在媒体那里折射出的，正是新闻道德的滑坡和新闻责任的缺失。“铁肩担道义，妙手著文章。”这是媒体人的自许和追求，也是社会的赞誉和期待，但一些新闻道德的污垢和“雾霾”正在让其蒙尘。\n\n    无道德，不新闻。新闻道德既是媒体公信力的根本基石，也是新闻成为社会正能量的重要支撑，只有挺起道德“脊梁”的新闻报道，才能在错综复杂的舆论环境中担起坚持正确舆论导向、为全面深化改革提供舆论支持的重任。如何重建新闻道德，匡正新闻失范？如何强化职业伦理，防止新闻失序？中国记协新闻道德委员会的成立，是对这道时代课题作出的最新回答。它的成立，不仅承载着公众的关注，也承载着媒体人的期待。\n\n    道德问题单靠道德自身解决，往往是不可靠的。道德背后，需要刚性的约束和强效的监督。新闻道德委员会依据法律法规，通过强化自律和他律，规范职业行为，推动行风建设，不仅具有很强的针对性，而且具有重大的现实意义。从“负面案例清单”到聘请社会监督员参与，再到召开典型案例评议会……自2013年第一批试点建立以来，新闻道德委员会剑指新闻界虚假新闻、低俗之风、不良广告、新闻敲诈等“新旧四害”，有力清除着新闻道德的毒瘤。\n\n    当前，新闻正处在一个全新的舆论场和传播格局，新媒体的冲击、转型的挑战、市场的压力，无一不将新闻从业者的道德置于全新的拷问之中。面对“快”的压力和“利”的诱惑，要不要屈服和低头？面对“眼球”的竞争和“面子”的虚荣，能不能拉低一点底线？面对规则的漏洞和制度的罅隙，会不会侥幸试一把？心中若校不准道德的定盘星，在这些外界的诱惑面前，“新闻节操”必“碎”一地。校准新闻道德的定盘星，就是为了筑牢新闻品格的堤坝，锻造媒体的公信力，挺起新闻的“脊梁”。\n\n    “倘若一个国家是一条航行在大海上的船，新闻记者就是船头的瞭望者。他要在一望无际的海面上观察一切，审视海上的不测风云和浅滩暗礁，及时发出警告。”眼下，这艘大船仍在驶向彼岸的征途中，瞭望不能“掉线”，心中的理想和价值还需坚守，道德和良心也请继续在岗。', '时刻校准新闻道德的定盘星 ', '2015-12-31', '2', '1');
INSERT INTO `news` VALUES ('14', '日本央行推行宽松政策 日元创十二年新低\n\n　　今年6月5日，日元兑美元汇率跌破125：1，创下近十二年以来的低位。日央行持续维持大规模量化宽松政策是日元汇率走弱的主因。时至年底，日元兑美元汇率仍维持在120：1的低位。由于经济前景不明朗，日本央行不排除进一步放水的可能。\n\n　　日本央行目前的量化宽松规模为市场货币流通量每年增加约80万亿日元，今年一直维持该规模。但日本央行在12月的货币政策会议上追加了“补充的货币宽松措施”。\n\n　　其中，该行将把购入国债的到期时间最长延至12年，同时新设每年3000亿日元框架，用于购买以积极致力于设备投资和人才投资的企业为对象的交易所交易基金(ETF)。日本央行希望以此促进企业设备投资和涨薪动向，切实实现物价上涨。具体而言，ETF扩容将于2016年4月起实施，国债购买期限从目前的7至10年延长为7至12年。', '十大海外财经新闻', '2015-12-31', '1', '1');
INSERT INTO `news` VALUES ('15', '美国环保署9月21日表示，德国大众汽车旗下不同型号的大约48.2万辆柴油车涉嫌违规排放。根据美国《清洁空气法》，每辆违规排放汽车面临最多3.75万美元罚款。这意味着，大众汽车可能面临最高180亿美元的罚款。\r\n\r\n　　此后几日大众股价连续遭到重挫，大众发表声明说，该公司涉嫌违规排放事件所涉及的柴油汽车数量可能达到1100万辆，公司绝不容忍违法行为，将向公众通报调查进展。声明表示，公司已拨款65亿欧元应对此次违规排放事件。大众汽车首席执行官马丁·温特科恩因此宣布辞职。\r\n\r\n　　10月份，大众汽车表示，将主动扩大内部调查，试图发现是否有其他安装作弊软件的发动机型号。', '　尾气排放造假 大众汽车丑闻缠身', '2015-12-31', '1', '1');
INSERT INTO `news` VALUES ('16', '　欧洲央行进一步扩大量化宽松。在美欧货币政策分化的刺激下，美元指数在11月30日创下100.55的近12年新高。\r\n\r\n　　自2014年中以来，美元指数一路走强，今年3月突破100关口，创12年高位。随后由于市场对美联储何时加息感到迷茫，美元指数涨势暂歇，持续区间震荡。10月中旬以来，随着加息预期再度升温，美元指数重拾升势。自去年5月初以来，美元指数累计涨幅达到24%。\r\n\r\n　　在12月的货币政策例会上，欧洲央行宣布下调隔夜存款利率10个基点至-0.3%，延长当前的资产购买计划至2017年3月甚至更晚时间，并扩大资产购买范围。今年以来，欧元兑美元累计下跌近13%。', '　美欧货币政策分化 美元创十二年新高', '2015-12-31', '1', '1');

-- ----------------------------
-- Table structure for `newscategroy`
-- ----------------------------
DROP TABLE IF EXISTS `newscategroy`;
CREATE TABLE `newscategroy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newscategroy
-- ----------------------------
INSERT INTO `newscategroy` VALUES ('1', '新闻资讯', null);
INSERT INTO `newscategroy` VALUES ('2', '公司新闻', null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(46) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '0', 'root', '63a9f0ea7bb98050796b649e85481845');


-- ----------------------------
-- Table structure for `team`
-- ----------------------------
CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_url` varchar(200) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `user_intro` varchar(600) NOT NULL,
  `skill` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
