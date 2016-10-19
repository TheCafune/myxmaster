/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50623
Source Host           : localhost:3306
Source Database       : xmaster

Target Server Type    : MYSQL
Target Server Version : 50623
File Encoding         : 65001

Date: 2016-10-19 08:43:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bd_dataset`
-- ----------------------------
DROP TABLE IF EXISTS `bd_dataset`;
CREATE TABLE `bd_dataset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataset_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataset_type` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `psw` varchar(255) DEFAULT NULL,
  `src` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `publisher` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `deleted_mark` int(11) NOT NULL,
  `meta_created` datetime NOT NULL,
  `meta_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of bd_dataset
-- ----------------------------
INSERT INTO `bd_dataset` VALUES ('15', 'data1', '银行', 'jdbc:mysql://127.0.0.1:3306/jxc', 'com.mysql.jdbc.Driver', 'root', '123', '银行', null, null, '', '1', '2016-10-04 19:45:01', '2016-10-04 19:45:58');
INSERT INTO `bd_dataset` VALUES ('16', '1', '1', '1', '1', '1', '1', '1', '1', '1', null, '0', '2016-10-05 02:58:26', '2016-10-05 14:58:31');

-- ----------------------------
-- Table structure for `ly_buttom`
-- ----------------------------
DROP TABLE IF EXISTS `ly_buttom`;
CREATE TABLE `ly_buttom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `buttom` varchar(200) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_buttom
-- ----------------------------
INSERT INTO `ly_buttom` VALUES ('1', '新增', '<button type=\"button\" id=\"addFun\" class=\"btn btn-primary marR10\">新增</button>', '');
INSERT INTO `ly_buttom` VALUES ('2', '编辑', '<button type=\"button\" id=\"editFun\" class=\"btn btn-info marR10\">编辑</button>', null);
INSERT INTO `ly_buttom` VALUES ('3', '删除', '<button type=\"button\" id=\"delFun\" class=\"btn btn-danger marR10\">删除</button>', null);
INSERT INTO `ly_buttom` VALUES ('4', '上传', '<button type=\"button\" id=\"upLoad\" class=\"btn btn-primary marR10\">上传</button>', null);
INSERT INTO `ly_buttom` VALUES ('5', '下载', '<button type=\"button\" id=\"downLoad\" class=\"btn btn-primary marR10\">下载</button>', null);
INSERT INTO `ly_buttom` VALUES ('6', '上移', '<button type=\"button\" id=\"lyGridUp\" class=\"btn btn-success marR10\">上移</button>', null);
INSERT INTO `ly_buttom` VALUES ('7', '下移', '<button type=\"button\" id=\"lyGridDown\" class=\"btn btn btn-grey marR10\">下移</button>', null);
INSERT INTO `ly_buttom` VALUES ('8', '分配权限', '<button type=\"button\" id=\"permissions\" class=\"btn btn btn-grey marR10\">分配权限</button>', null);

-- ----------------------------
-- Table structure for `ly_danger`
-- ----------------------------
DROP TABLE IF EXISTS `ly_danger`;
CREATE TABLE `ly_danger` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `happenTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `endTime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_danger
-- ----------------------------
INSERT INTO `ly_danger` VALUES ('1', 'aaa', '2016-10-05 11:41:28', 'aaa');
INSERT INTO `ly_danger` VALUES ('2', 'bb', '2016-10-05 11:41:34', 'bbb');
INSERT INTO `ly_danger` VALUES ('3', 'c', '2016-10-05 11:41:42', 's');
INSERT INTO `ly_danger` VALUES ('4', 'd', '2016-10-05 11:41:44', 'gg');
INSERT INTO `ly_danger` VALUES ('5', 'r', '2016-10-05 11:41:42', 's');

-- ----------------------------
-- Table structure for `ly_dangerouschemicals`
-- ----------------------------
DROP TABLE IF EXISTS `ly_dangerouschemicals`;
CREATE TABLE `ly_dangerouschemicals` (
  `id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `classification` varchar(255) NOT NULL,
  `critical_discharge` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_dangerouschemicals
-- ----------------------------
INSERT INTO `ly_dangerouschemicals` VALUES ('1', '叠氮化钡\r\n\r\n叠氮化钡', '爆炸品', '0.5');
INSERT INTO `ly_dangerouschemicals` VALUES ('2', '叠氮化铅', '爆炸品', '0.5');
INSERT INTO `ly_dangerouschemicals` VALUES ('3', '硝酸铵（含可燃物＞0.2%）', '爆炸品', '5');
INSERT INTO `ly_dangerouschemicals` VALUES ('4', '三硝基苯甲醚', '爆炸品', '5');
INSERT INTO `ly_dangerouschemicals` VALUES ('5', '雷酸汞', '爆炸品', '0.5');
INSERT INTO `ly_dangerouschemicals` VALUES ('6', '三硝基甲苯', '爆炸品', '5');
INSERT INTO `ly_dangerouschemicals` VALUES ('7', '硝化甘油', '爆炸品', '1');
INSERT INTO `ly_dangerouschemicals` VALUES ('8', '硝化纤维素', '爆炸品', '10');
INSERT INTO `ly_dangerouschemicals` VALUES ('9', '丁二烯', '易燃气体', '5');
INSERT INTO `ly_dangerouschemicals` VALUES ('10', '二甲醚', '易燃气体', '50');
INSERT INTO `ly_dangerouschemicals` VALUES ('11', '甲烷，天然气', '易燃气体', '50');
INSERT INTO `ly_dangerouschemicals` VALUES ('12', '氯乙烯', '易燃气体', '50');
INSERT INTO `ly_dangerouschemicals` VALUES ('13', '氢', '易燃气体', '5');
INSERT INTO `ly_dangerouschemicals` VALUES ('14', '液化石油气', '易燃气体', '50');
INSERT INTO `ly_dangerouschemicals` VALUES ('15', '一甲胺', '易燃气体', '5');
INSERT INTO `ly_dangerouschemicals` VALUES ('16', '乙炔', '易燃气体', '1');
INSERT INTO `ly_dangerouschemicals` VALUES ('17', '乙烯', '易燃气体', '50');
INSERT INTO `ly_dangerouschemicals` VALUES ('18', '氨', '毒性气体', '10');
INSERT INTO `ly_dangerouschemicals` VALUES ('19', '氨', '毒性气体', '1');
INSERT INTO `ly_dangerouschemicals` VALUES ('20', '二氧化氮', '毒性气体', '1');
INSERT INTO `ly_dangerouschemicals` VALUES ('21', '二氧化硫', '毒性气体', '20');
INSERT INTO `ly_dangerouschemicals` VALUES ('22', '氟', '毒性气体', '1');
INSERT INTO `ly_dangerouschemicals` VALUES ('23', '光气', '毒性气体', '0.3');
INSERT INTO `ly_dangerouschemicals` VALUES ('24', '环氧乙烷', '毒性气体', '10');
INSERT INTO `ly_dangerouschemicals` VALUES ('25', '甲醛（含量＞90%）', '毒性气体', '5');
INSERT INTO `ly_dangerouschemicals` VALUES ('26', '磷化氢', '毒性气体', '1');
INSERT INTO `ly_dangerouschemicals` VALUES ('27', '硫化氢', '毒性气体', '5');
INSERT INTO `ly_dangerouschemicals` VALUES ('28', '氯化氢', '毒性气体', '20');
INSERT INTO `ly_dangerouschemicals` VALUES ('29', '氯', '毒性气体', '5');
INSERT INTO `ly_dangerouschemicals` VALUES ('30', '煤气（CO，CO和H2、CH4的混合物等）', '毒性气体', '20');
INSERT INTO `ly_dangerouschemicals` VALUES ('31', '砷化三氢', '毒性气体', '1');
INSERT INTO `ly_dangerouschemicals` VALUES ('32', '锑化氢', '毒性气体', '1');
INSERT INTO `ly_dangerouschemicals` VALUES ('33', '硒化氢', '毒性气体', '1');
INSERT INTO `ly_dangerouschemicals` VALUES ('34', '溴甲烷', '毒性气体', '10');
INSERT INTO `ly_dangerouschemicals` VALUES ('35', '苯', '易燃液体', '50');
INSERT INTO `ly_dangerouschemicals` VALUES ('36', '苯乙烯', '易燃液体', '500');
INSERT INTO `ly_dangerouschemicals` VALUES ('37', '丙酮', '易燃液体', '500');
INSERT INTO `ly_dangerouschemicals` VALUES ('38', '丙烯腈', '易燃液体', '50');
INSERT INTO `ly_dangerouschemicals` VALUES ('39', '二硫化碳', '易燃液体', '50');
INSERT INTO `ly_dangerouschemicals` VALUES ('40', '环己烷', '易燃液体', '500');
INSERT INTO `ly_dangerouschemicals` VALUES ('41', '环氧丙烷', '易燃液体', '10');
INSERT INTO `ly_dangerouschemicals` VALUES ('42', '甲苯', '易燃液体', '500');
INSERT INTO `ly_dangerouschemicals` VALUES ('43', '甲醇', '易燃液体', '500');
INSERT INTO `ly_dangerouschemicals` VALUES ('44', '汽油', '易燃液体', '200');
INSERT INTO `ly_dangerouschemicals` VALUES ('45', '乙醇', '易燃液体', '500');
INSERT INTO `ly_dangerouschemicals` VALUES ('46', '乙醚', '易燃液体', '10');
INSERT INTO `ly_dangerouschemicals` VALUES ('47', '乙酸乙酯', '易燃液体', '500');
INSERT INTO `ly_dangerouschemicals` VALUES ('48', '正己烷', '易燃液体', '500');
INSERT INTO `ly_dangerouschemicals` VALUES ('49', '黄磷', '易于自燃的物\n质', '50');
INSERT INTO `ly_dangerouschemicals` VALUES ('50', '烷基铝', '易于自燃的物\n质', '1');
INSERT INTO `ly_dangerouschemicals` VALUES ('51', '戊硼烷', '易于自燃的物\n质', '1');
INSERT INTO `ly_dangerouschemicals` VALUES ('52', '电石', '遇水放出易燃气体的物质', '100');
INSERT INTO `ly_dangerouschemicals` VALUES ('53', '钾', '遇水放出易燃气体的物质', '1');
INSERT INTO `ly_dangerouschemicals` VALUES ('54', '钠', '遇水放出易燃气体的物质', '10');
INSERT INTO `ly_dangerouschemicals` VALUES ('55', '发烟硫酸', '氧化性物质', '100');
INSERT INTO `ly_dangerouschemicals` VALUES ('56', '过氧化钾', '氧化性物质', '20');
INSERT INTO `ly_dangerouschemicals` VALUES ('57', '过氧化钠', '氧化性物质', '20');
INSERT INTO `ly_dangerouschemicals` VALUES ('58', '氯酸钾', '氧化性物质', '100');
INSERT INTO `ly_dangerouschemicals` VALUES ('59', '氯酸钠', '氧化性物质', '100');
INSERT INTO `ly_dangerouschemicals` VALUES ('60', '硝酸（发红烟的）', '氧化性物质', '20');
INSERT INTO `ly_dangerouschemicals` VALUES ('61', '硝酸（发红烟的除外，含硝酸＞70%）', '氧化性物质', '100');
INSERT INTO `ly_dangerouschemicals` VALUES ('62', '硝酸铵（含可燃物≤0.2%）', '氧化性物质', '300');
INSERT INTO `ly_dangerouschemicals` VALUES ('63', '硝酸铵基化肥', '氧化性物质', '1000');
INSERT INTO `ly_dangerouschemicals` VALUES ('64', '过氧乙酸（含量≥60%）', '有机过氧化物', '10');
INSERT INTO `ly_dangerouschemicals` VALUES ('65', '过氧化甲乙酮（含量≥60%）', '有机过氧化物', '10');
INSERT INTO `ly_dangerouschemicals` VALUES ('66', '丙酮合氰化氢', '毒性物质', '20');
INSERT INTO `ly_dangerouschemicals` VALUES ('67', '丙烯醛', '毒性物质', '20');
INSERT INTO `ly_dangerouschemicals` VALUES ('68', '氟化氢', '毒性物质', '1');
INSERT INTO `ly_dangerouschemicals` VALUES ('69', '环氧氯丙烷（3-氯-1,2-环氧丙烷）', '毒性物质', '20');
INSERT INTO `ly_dangerouschemicals` VALUES ('70', '环氧溴丙烷（表溴醇）', '毒性物质', '20');
INSERT INTO `ly_dangerouschemicals` VALUES ('71', '甲苯二异氰酸酯', '毒性物质', '100');
INSERT INTO `ly_dangerouschemicals` VALUES ('72', '氯化硫', '毒性物质', '1');
INSERT INTO `ly_dangerouschemicals` VALUES ('73', '氰化氢', '毒性物质', '1');
INSERT INTO `ly_dangerouschemicals` VALUES ('74', '三氧化硫', '毒性物质', '75');
INSERT INTO `ly_dangerouschemicals` VALUES ('75', '烯丙胺', '毒性物质', '20');
INSERT INTO `ly_dangerouschemicals` VALUES ('76', '溴', '毒性物质', '20');
INSERT INTO `ly_dangerouschemicals` VALUES ('77', '乙撑亚胺', '毒性物质', '20');
INSERT INTO `ly_dangerouschemicals` VALUES ('78', '异氰酸甲酯', '毒性物质', '0.75');

-- ----------------------------
-- Table structure for `ly_emergency`
-- ----------------------------
DROP TABLE IF EXISTS `ly_emergency`;
CREATE TABLE `ly_emergency` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `happenTime` datetime DEFAULT '0000-00-00 00:00:00',
  `department` varchar(255) DEFAULT NULL,
  `official` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `handle` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_emergency
-- ----------------------------
INSERT INTO `ly_emergency` VALUES ('1', '8.12天津港爆炸', '天津滨海新区', '2015-08-12 21:08:51', '消防局', 'XXX', '瑞海公司危险品仓库最先起火；23时34分06秒发生第一次爆炸,34分37秒发生第二次更剧烈的爆炸', '天津消防总队共调集23个消防中队的93辆消防车、600余名官兵在现场全力灭火处置。', null, '特别重大生产安全责任事故');
INSERT INTO `ly_emergency` VALUES ('2', '1', '1', null, '1', null, '1', '1', '22222', null);
INSERT INTO `ly_emergency` VALUES ('3', '222', '222', '2016-09-12 21:43:47', '222', null, '222', '22', '22', '222');
INSERT INTO `ly_emergency` VALUES ('4', null, null, '2016-10-03 21:34:10', null, null, null, null, null, null);
INSERT INTO `ly_emergency` VALUES ('5', '23', '2342', '0000-00-00 00:00:00', null, null, null, null, null, null);
INSERT INTO `ly_emergency` VALUES ('6', '555', '555', '2016-10-06 09:48:33', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `ly_industry`
-- ----------------------------
DROP TABLE IF EXISTS `ly_industry`;
CREATE TABLE `ly_industry` (
  `EnterpriseID` int(30) NOT NULL DEFAULT '0',
  `EnterName` varchar(255) DEFAULT NULL,
  `ShortName` varchar(255) DEFAULT NULL,
  `CorpEmail` varchar(255) DEFAULT NULL,
  `CorpTelephone` varchar(255) DEFAULT NULL,
  `CorpdelegMphone` varchar(255) DEFAULT NULL,
  `Corpdeleg` varchar(255) DEFAULT NULL,
  `IsDangerCp` int(1) DEFAULT NULL,
  `SafetyMageNum` varchar(255) DEFAULT NULL,
  `RegCapital` varchar(255) DEFAULT NULL,
  `EmployeeNum` varchar(255) DEFAULT NULL,
  `MainProduct` varchar(255) DEFAULT NULL,
  `WorkRange` varchar(255) DEFAULT NULL,
  `EnterpriseArea` varchar(255) DEFAULT NULL,
  `EnterType` varchar(255) DEFAULT NULL,
  `EconomicType` varchar(255) DEFAULT NULL,
  `TradeType` varchar(255) DEFAULT NULL,
  `OrgaCode` varchar(255) DEFAULT NULL,
  `RegCode` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `AreaCode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EnterpriseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_industry
-- ----------------------------
INSERT INTO `ly_industry` VALUES ('0', 'd', 'd', 'd', 's', 's', 's', '1', 'd', 'f', 'g', 'g', 'g', 'g', 'g', 'g', 'd', 'd', 'f', 'd', 'd');
INSERT INTO `ly_industry` VALUES ('1', 'czs', 'sdf', 'sdf', 'sdf', 'sadf', 'asdf', '0', 'sadf', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', 'asdf', 'sadf', 'asdf', 'asf');
INSERT INTO `ly_industry` VALUES ('3', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('4', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('5', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('10', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('11', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('12', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('13', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('14', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('15', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('16', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('17', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('18', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('19', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('20', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('30', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('31', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('32', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('33', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('34', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('35', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('36', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('37', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('38', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `ly_industry` VALUES ('39', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `ly_log`
-- ----------------------------
DROP TABLE IF EXISTS `ly_log`;
CREATE TABLE `ly_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountName` varchar(30) DEFAULT NULL,
  `module` varchar(30) DEFAULT NULL,
  `methods` varchar(30) DEFAULT NULL,
  `actionTime` varchar(30) DEFAULT NULL,
  `userIP` varchar(30) DEFAULT NULL,
  `operTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_log
-- ----------------------------

-- ----------------------------
-- Table structure for `ly_resources`
-- ----------------------------
DROP TABLE IF EXISTS `ly_resources`;
CREATE TABLE `ly_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `resKey` varchar(50) DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL,
  `resUrl` varchar(200) DEFAULT NULL,
  `level` int(4) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `ishide` int(3) DEFAULT '0',
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_resources
-- ----------------------------
INSERT INTO `ly_resources` VALUES ('1', '系统基础管理', '0', 'system', '0', 'system', '1', 'fa-desktop', '0', '系统基础管理');
INSERT INTO `ly_resources` VALUES ('2', '用户管理', '1', 'account', '1', '/user/list.shtml', '2', null, '0', null);
INSERT INTO `ly_resources` VALUES ('3', '角色管理', '1', 'role', '1', '/role/list.shtml', '7', 'fa-list', '0', '组管理');
INSERT INTO `ly_resources` VALUES ('4', '菜单管理', '1', 'ly_resources', '1', '/resources/list.shtml', '12', 'fa-list-alt', '0', '菜单管理');
INSERT INTO `ly_resources` VALUES ('5', '新增用户', '2', 'account_add', '2', '/user/addUI.shtml', '3', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addAccount&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('6', '修改用户', '2', 'account_edit', '2', '/user/editUI.shtml', '4', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editAccount&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('7', '删除用户', '2', 'account_delete', '2', '/user/deleteById.shtml', '5', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delAccount&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('8', '新增角色', '3', 'role_add', '2', '/role/addUI.shtml', '8', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addRole&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('9', '修改角色', '3', 'role_edit', '2', '/role/editUI.shtml', '9', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editRole&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('10', '删除角色', '3', 'role_delete', '2', '/role/delete.shtml', '10', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delRole&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('11', '分配权限', '3', 'role_perss', '2', '/resources/permissions.shtml', '11', '无', '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;permissions&quot;&nbsp;class=&quot;btn&nbsp;btn&nbsp;btn-grey&nbsp;marR10&quot;&gt;分配权限&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('25', '登陆信息管理', '0', 'ly_login', '0', 'ly_login', '18', 'fa-calendar', '0', '登陆信息管理');
INSERT INTO `ly_resources` VALUES ('26', '用户登录记录', '25', 'ly_log_list', '1', '/userlogin/listUI.shtml', '19', null, '0', '用户登录记录');
INSERT INTO `ly_resources` VALUES ('27', '操作日志管理', '0', 'ly_log', '0', 'ly_log', '20', 'fa-picture-o', '1', '操作日志管理');
INSERT INTO `ly_resources` VALUES ('28', '日志查询', '27', 'ly_log', '1', '/log/list.shtml', '21', null, '0', null);
INSERT INTO `ly_resources` VALUES ('29', '新增菜单资源', '4', 'ly_resources_add', '2', '/resources/addUI.shtml', '13', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addFun&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('30', '修改菜单资源', '4', 'ly_resources_edit', '2', '/resources/editUI.shtml', '14', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editFun&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('31', '删除菜单资源', '4', 'ly_resources_delete', '2', '/resources/delete.shtml', '15', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delFun&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('32', '系统监控管理', '0', 'monitor', '0', 'monitor', '16', 'fa-tag', '0', '系统监控管理');
INSERT INTO `ly_resources` VALUES ('33', '实时监控', '32', 'sysmonitor', '1', '/monitor/monitor.shtml', '17', null, '0', '实时监控');
INSERT INTO `ly_resources` VALUES ('34', '分配权限', '2', 'permissions', '2', '/resources/permissions.shtml', '6', null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;permissions&quot;&nbsp;class=&quot;btn&nbsp;btn&nbsp;btn-grey&nbsp;marR10&quot;&gt;分配权限&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('35', '告警列表', '32', 'monitor_warn', '1', '/monitor/list.shtml', null, null, '0', '告警列表');
INSERT INTO `ly_resources` VALUES ('37', '资源上传', '0', 'resource_upload', '0', 'resourceupload', null, 'fa-glass', '0', '资源上传');
INSERT INTO `ly_resources` VALUES ('38', '数据集上传', '37', 'dataset_upload', '1', '/dataset/upload.shtml', null, null, '0', '数据集上传');
INSERT INTO `ly_resources` VALUES ('39', '数据集审核', '37', 'dataset_audit', '1', '/dataset/audit.shtml', null, null, '0', '数据集审核');
INSERT INTO `ly_resources` VALUES ('40', '资源管理', '0', 'resource_manage', '0', 'resourcemanage', null, 'fa-inbox', '0', '资源管理');
INSERT INTO `ly_resources` VALUES ('41', '数据集查看', '40', 'dataset_list', '1', '/dataset/list.shtml', null, null, '0', '数据集查看');
INSERT INTO `ly_resources` VALUES ('42', '元数据管理', '40', 'metadata_manage', '1', '/metadata/manage.shtml', null, null, '0', '元数据管理');
INSERT INTO `ly_resources` VALUES ('43', '匿名搜索', '0', 'search', '0', 'search', null, 'fa-search-minus', '0', '匿名搜索');
INSERT INTO `ly_resources` VALUES ('44', '感知搜索', '43', 'perceptual_search', '1', 'perceptual_search', null, null, '0', '感知搜索');
INSERT INTO `ly_resources` VALUES ('45', '数据集搜索 ', '43', 'dataset_search', '1', 'dataset_search', null, null, '0', '数据集搜索 ');
INSERT INTO `ly_resources` VALUES ('46', '结构化检查', '43', 'structured_search', '1', 'structured_search', null, null, '0', '结构化检查');
INSERT INTO `ly_resources` VALUES ('47', '地名搜索', '43', 'placename_search', '1', 'placename_search', null, null, '0', '地名搜索');
INSERT INTO `ly_resources` VALUES ('48', '语义搜索', '43', 'semantic_search', '1', 'semantic_search', null, null, '0', '语义搜索');
INSERT INTO `ly_resources` VALUES ('49', '全文搜索', '43', 'fulltext_search', '1', 'fulltext_search', null, null, '0', '全文搜索');
INSERT INTO `ly_resources` VALUES ('50', '数据集增加', '41', 'dataset_add', '2', '/dataset/add.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addFun&quot;&nbsp;class=&quot;btn&nbsp;btn-success&nbsp;marR10&quot;&gt;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('51', '数据集编辑', '41', 'dataset_edit', '2', '/dataset/edit.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editFun&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('52', '数据集删除', '41', 'dataset_delete', '2', '/dataset/delete.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delFun&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('53', '案例管理', '40', 'case_manage', '1', '/meetup/list.shtml', null, null, '0', null);
INSERT INTO `ly_resources` VALUES ('54', '案例新增', '53', 'case_add', '2', '/meetup/add.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addFun&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('55', '案例编辑', '53', 'case_edit', '2', '/meetup/edit.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editFun&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('56', '案例删除', '53', 'case_delete', '2', '/meetup/delete.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delFun&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('57', '突发事件', '0', 'emergency', '0', 'emergency', null, null, '0', '突发事件');
INSERT INTO `ly_resources` VALUES ('58', '事件列表', '57', 'emergency_list', '1', '/emergency/list.shtml', null, null, '0', null);
INSERT INTO `ly_resources` VALUES ('59', '事件新增', '58', 'emergency_add', '2', '/emergency/add.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addFun&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('60', '事件编辑', '58', 'emergency_edit', '2', '/emergency/edit.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editFun&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('61', '事件删除', '58', 'emergency_delete', '2', '/emergency/delete.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delFun&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('62', '隐患排查管理', '40', 'danger_manage', '1', '/danger/list.shtml', null, null, '0', '隐患排查');
INSERT INTO `ly_resources` VALUES ('63', '隐患事件新增', '62', 'danger_add', '2', '/danger/add.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addFun&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('64', '隐患事件编辑', '62', 'danger_edit', '2', '/danger/edit.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editFun&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('65', '隐患事件删除', '62', 'danger_delete', '2', '/danger/delete.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delFun&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('66', 'meetup', '57', 'meetup', '1', '/meetup/list.shtml', null, null, '0', null);
INSERT INTO `ly_resources` VALUES ('67', 'meetup1', '66', 'meetup1', '2', '/meetup/add.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;addFun&quot;&nbsp;class=&quot;btn&nbsp;btn-primary&nbsp;marR10&quot;&gt;新增&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('68', 'meetup2', '66', 'meetup2', '2', '/meetup/edit.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;editFun&quot;&nbsp;class=&quot;btn&nbsp;btn-info&nbsp;marR10&quot;&gt;编辑&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('69', 'meetup3', '66', 'meetup3', '2', '/meetup/delete.shtml', null, null, '0', '&lt;button&nbsp;type=&quot;button&quot;&nbsp;id=&quot;delFun&quot;&nbsp;class=&quot;btn&nbsp;btn-danger&nbsp;marR10&quot;&gt;删除&lt;/button&gt;');
INSERT INTO `ly_resources` VALUES ('70', '风险评估', '0', 'risk', '0', 'risk', null, null, '0', null);
INSERT INTO `ly_resources` VALUES ('71', '指标管理', '70', 'risk_manage', '0', '/risk/list.shtml', null, null, '0', null);
INSERT INTO `ly_resources` VALUES ('72', '风险评估', '70', 'risk_evaluate', '0', 'risk_evaluate', null, null, '0', null);
INSERT INTO `ly_resources` VALUES ('73', '预测预警', '0', 'forcast', '0', 'forcast', null, 'fa-comments', '0', '预测预警');
INSERT INTO `ly_resources` VALUES ('74', '可视化预测', '73', 'forcastShow', '1', '/forcast/showAPage.shtml', null, null, '0', null);
INSERT INTO `ly_resources` VALUES ('75', '风险评估结果', '73', 'risk_assessment_result', '1', '/forcast/risk_assessment_result.shtml', null, null, '0', '风险评估结果');
INSERT INTO `ly_resources` VALUES ('76', '隐患排查结果', '73', 'potential_hazard_result', '1', '/forcast/potential_hazard.shtml', null, null, '0', '隐患排查结果');
INSERT INTO `ly_resources` VALUES ('77', '决策指挥', '0', 'decision', '0', 'decision', null, null, '0', '决策指挥');
INSERT INTO `ly_resources` VALUES ('78', '隐患排查', '0', 'potential_hazard', '0', 'potential_hazard', null, null, '0', '隐患排查');
INSERT INTO `ly_resources` VALUES ('79', '企业管理', '0', 'idustry_manage', '0', 'industry', null, null, '0', '企业管理');
INSERT INTO `ly_resources` VALUES ('80', '企业显示', '79', 'industryshow', '0', '/industry/list.shtml', null, null, '0', '企业显示');

-- ----------------------------
-- Table structure for `ly_res_user`
-- ----------------------------
DROP TABLE IF EXISTS `ly_res_user`;
CREATE TABLE `ly_res_user` (
  `resId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  PRIMARY KEY (`userId`,`resId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_res_user
-- ----------------------------
INSERT INTO `ly_res_user` VALUES ('1', '4');
INSERT INTO `ly_res_user` VALUES ('2', '4');
INSERT INTO `ly_res_user` VALUES ('3', '4');
INSERT INTO `ly_res_user` VALUES ('4', '4');
INSERT INTO `ly_res_user` VALUES ('5', '4');
INSERT INTO `ly_res_user` VALUES ('6', '4');
INSERT INTO `ly_res_user` VALUES ('7', '4');
INSERT INTO `ly_res_user` VALUES ('8', '4');
INSERT INTO `ly_res_user` VALUES ('9', '4');
INSERT INTO `ly_res_user` VALUES ('10', '4');
INSERT INTO `ly_res_user` VALUES ('11', '4');
INSERT INTO `ly_res_user` VALUES ('25', '4');
INSERT INTO `ly_res_user` VALUES ('26', '4');
INSERT INTO `ly_res_user` VALUES ('29', '4');
INSERT INTO `ly_res_user` VALUES ('30', '4');
INSERT INTO `ly_res_user` VALUES ('31', '4');
INSERT INTO `ly_res_user` VALUES ('34', '4');
INSERT INTO `ly_res_user` VALUES ('40', '4');
INSERT INTO `ly_res_user` VALUES ('41', '4');
INSERT INTO `ly_res_user` VALUES ('42', '4');
INSERT INTO `ly_res_user` VALUES ('50', '4');
INSERT INTO `ly_res_user` VALUES ('51', '4');
INSERT INTO `ly_res_user` VALUES ('52', '4');
INSERT INTO `ly_res_user` VALUES ('53', '4');
INSERT INTO `ly_res_user` VALUES ('54', '4');
INSERT INTO `ly_res_user` VALUES ('55', '4');
INSERT INTO `ly_res_user` VALUES ('56', '4');
INSERT INTO `ly_res_user` VALUES ('62', '4');
INSERT INTO `ly_res_user` VALUES ('63', '4');
INSERT INTO `ly_res_user` VALUES ('64', '4');
INSERT INTO `ly_res_user` VALUES ('65', '4');
INSERT INTO `ly_res_user` VALUES ('70', '4');
INSERT INTO `ly_res_user` VALUES ('71', '4');
INSERT INTO `ly_res_user` VALUES ('72', '4');
INSERT INTO `ly_res_user` VALUES ('73', '4');
INSERT INTO `ly_res_user` VALUES ('74', '4');
INSERT INTO `ly_res_user` VALUES ('75', '4');
INSERT INTO `ly_res_user` VALUES ('76', '4');
INSERT INTO `ly_res_user` VALUES ('77', '4');
INSERT INTO `ly_res_user` VALUES ('78', '4');
INSERT INTO `ly_res_user` VALUES ('79', '4');
INSERT INTO `ly_res_user` VALUES ('80', '4');
INSERT INTO `ly_res_user` VALUES ('1', '5');
INSERT INTO `ly_res_user` VALUES ('2', '5');
INSERT INTO `ly_res_user` VALUES ('3', '5');
INSERT INTO `ly_res_user` VALUES ('4', '5');
INSERT INTO `ly_res_user` VALUES ('5', '5');
INSERT INTO `ly_res_user` VALUES ('6', '5');
INSERT INTO `ly_res_user` VALUES ('7', '5');
INSERT INTO `ly_res_user` VALUES ('8', '5');
INSERT INTO `ly_res_user` VALUES ('9', '5');
INSERT INTO `ly_res_user` VALUES ('10', '5');
INSERT INTO `ly_res_user` VALUES ('11', '5');
INSERT INTO `ly_res_user` VALUES ('25', '5');
INSERT INTO `ly_res_user` VALUES ('26', '5');
INSERT INTO `ly_res_user` VALUES ('27', '5');
INSERT INTO `ly_res_user` VALUES ('28', '5');
INSERT INTO `ly_res_user` VALUES ('29', '5');
INSERT INTO `ly_res_user` VALUES ('30', '5');
INSERT INTO `ly_res_user` VALUES ('31', '5');
INSERT INTO `ly_res_user` VALUES ('32', '5');
INSERT INTO `ly_res_user` VALUES ('33', '5');
INSERT INTO `ly_res_user` VALUES ('34', '5');
INSERT INTO `ly_res_user` VALUES ('35', '5');
INSERT INTO `ly_res_user` VALUES ('37', '5');
INSERT INTO `ly_res_user` VALUES ('38', '5');
INSERT INTO `ly_res_user` VALUES ('39', '5');
INSERT INTO `ly_res_user` VALUES ('40', '5');
INSERT INTO `ly_res_user` VALUES ('41', '5');
INSERT INTO `ly_res_user` VALUES ('42', '5');
INSERT INTO `ly_res_user` VALUES ('43', '5');
INSERT INTO `ly_res_user` VALUES ('44', '5');
INSERT INTO `ly_res_user` VALUES ('45', '5');
INSERT INTO `ly_res_user` VALUES ('46', '5');
INSERT INTO `ly_res_user` VALUES ('47', '5');
INSERT INTO `ly_res_user` VALUES ('48', '5');
INSERT INTO `ly_res_user` VALUES ('49', '5');
INSERT INTO `ly_res_user` VALUES ('50', '5');
INSERT INTO `ly_res_user` VALUES ('40', '6');
INSERT INTO `ly_res_user` VALUES ('41', '6');
INSERT INTO `ly_res_user` VALUES ('42', '6');
INSERT INTO `ly_res_user` VALUES ('37', '7');
INSERT INTO `ly_res_user` VALUES ('39', '7');
INSERT INTO `ly_res_user` VALUES ('43', '8');
INSERT INTO `ly_res_user` VALUES ('44', '8');
INSERT INTO `ly_res_user` VALUES ('45', '8');
INSERT INTO `ly_res_user` VALUES ('46', '8');
INSERT INTO `ly_res_user` VALUES ('47', '8');
INSERT INTO `ly_res_user` VALUES ('48', '8');
INSERT INTO `ly_res_user` VALUES ('49', '8');
INSERT INTO `ly_res_user` VALUES ('37', '9');
INSERT INTO `ly_res_user` VALUES ('38', '9');
INSERT INTO `ly_res_user` VALUES ('1', '10');
INSERT INTO `ly_res_user` VALUES ('2', '10');
INSERT INTO `ly_res_user` VALUES ('3', '10');
INSERT INTO `ly_res_user` VALUES ('4', '10');
INSERT INTO `ly_res_user` VALUES ('5', '10');
INSERT INTO `ly_res_user` VALUES ('6', '10');
INSERT INTO `ly_res_user` VALUES ('7', '10');
INSERT INTO `ly_res_user` VALUES ('8', '10');
INSERT INTO `ly_res_user` VALUES ('9', '10');
INSERT INTO `ly_res_user` VALUES ('10', '10');
INSERT INTO `ly_res_user` VALUES ('11', '10');
INSERT INTO `ly_res_user` VALUES ('29', '10');
INSERT INTO `ly_res_user` VALUES ('30', '10');
INSERT INTO `ly_res_user` VALUES ('31', '10');
INSERT INTO `ly_res_user` VALUES ('34', '10');
INSERT INTO `ly_res_user` VALUES ('70', '10');
INSERT INTO `ly_res_user` VALUES ('71', '10');
INSERT INTO `ly_res_user` VALUES ('72', '10');

-- ----------------------------
-- Table structure for `ly_role`
-- ----------------------------
DROP TABLE IF EXISTS `ly_role`;
CREATE TABLE `ly_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `state` varchar(3) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `roleKey` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_role
-- ----------------------------
INSERT INTO `ly_role` VALUES ('1', '0', '平台管理者', 'platform_manager', '平台管理者');
INSERT INTO `ly_role` VALUES ('3', '0', '超级管理员', 'SUPER', '超级管理员');
INSERT INTO `ly_role` VALUES ('4', '0', '匿名搜索者', 'visitor', '匿名搜索者');
INSERT INTO `ly_role` VALUES ('5', '0', '应用请求者', 'application_requester', '应用请求者');
INSERT INTO `ly_role` VALUES ('6', '0', '应用管理者', 'application_manager', '应用管理者');
INSERT INTO `ly_role` VALUES ('7', '0', '应用提供者', 'application_provider', '应用提供者');
INSERT INTO `ly_role` VALUES ('8', '0', '平台监控者', 'platform_monitor', '平台监控者');
INSERT INTO `ly_role` VALUES ('9', '0', '资源管理者', 'resource_manager', '资源管理者');
INSERT INTO `ly_role` VALUES ('10', '0', '资源审核者', 'resource_auditor', '资源审核者');
INSERT INTO `ly_role` VALUES ('11', '0', '资源提供者', 'resource_provider', '资源提供者');
INSERT INTO `ly_role` VALUES ('12', '0', 'hanRole', 'hanRole', 'hanRole');

-- ----------------------------
-- Table structure for `ly_server_info`
-- ----------------------------
DROP TABLE IF EXISTS `ly_server_info`;
CREATE TABLE `ly_server_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cpuUsage` varchar(255) DEFAULT NULL,
  `setCpuUsage` varchar(255) DEFAULT NULL,
  `jvmUsage` varchar(255) DEFAULT NULL,
  `setJvmUsage` varchar(255) DEFAULT NULL,
  `ramUsage` varchar(255) DEFAULT NULL,
  `setRamUsage` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `operTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `mark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_server_info
-- ----------------------------
INSERT INTO `ly_server_info` VALUES ('5', '18', '40', '49', '40', '71', '40', '121261494@qq.com', '2015-04-25 18:07:02', '<font color=\"red\">JVM当前：49%,超出预设值 40%<br>内存当前：71%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES ('6', '3', '40', '50', '40', '71', '40', '121261494@qq.com', '2015-04-25 18:08:03', '<font color=\"red\">JVM当前：50%,超出预设值 40%<br>内存当前：71%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES ('7', '5', '40', '50', '40', '70', '40', '121261494@qq.com', '2015-04-25 18:09:02', '<font color=\"red\">JVM当前：50%,超出预设值 40%<br>内存当前：70%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES ('8', '5', '40', '52', '40', '69', '40', '121261494@qq.com', '2015-04-25 18:10:03', '<font color=\"red\">JVM当前：52%,超出预设值 40%<br>内存当前：69%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES ('9', '2', '40', '52', '40', '68', '40', '121261494@qq.com', '2015-04-25 18:11:02', '<font color=\"red\">JVM当前：52%,超出预设值 40%<br>内存当前：68%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES ('10', '7', '40', '53', '40', '67', '40', '121261494@qq.com', '2015-04-25 18:12:02', '<font color=\"red\">JVM当前：53%,超出预设值 40%<br>内存当前：67%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES ('11', '5', '40', '54', '40', '67', '40', '121261494@qq.com', '2015-04-25 18:13:02', '<font color=\"red\">JVM当前：54%,超出预设值 40%<br>内存当前：67%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES ('12', '16', '40', '55', '40', '66', '40', '121261494@qq.com', '2015-04-25 18:14:02', '<font color=\"red\">JVM当前：55%,超出预设值 40%<br>内存当前：66%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES ('13', '5', '40', '56', '40', '65', '40', '121261494@qq.com', '2015-04-25 18:15:02', '<font color=\"red\">JVM当前：56%,超出预设值 40%<br>内存当前：65%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES ('14', '8', '40', '57', '40', '64', '40', '121261494@qq.com', '2015-04-25 18:16:02', '<font color=\"red\">JVM当前：57%,超出预设值 40%<br>内存当前：64%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES ('15', '3', '40', '58', '40', '63', '40', '121261494@qq.com', '2015-04-25 18:17:02', '<font color=\"red\">JVM当前：58%,超出预设值 40%<br>内存当前：63%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES ('16', '6', '40', '59', '40', '62', '40', '121261494@qq.com', '2015-04-25 18:18:03', '<font color=\"red\">JVM当前：59%,超出预设值 40%<br>内存当前：62%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES ('17', '1', '40', '60', '40', '61', '40', '121261494@qq.com', '2015-04-25 18:19:02', '<font color=\"red\">JVM当前：60%,超出预设值 40%<br>内存当前：61%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES ('18', '5', '40', '61', '40', '61', '40', '121261494@qq.com', '2015-04-25 18:20:02', '<font color=\"red\">JVM当前：61%,超出预设值 40%<br>内存当前：61%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES ('19', '5', '40', '38', '40', '61', '40', '121261494@qq.com', '2015-04-25 18:21:02', '<font color=\"red\">内存当前：61%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES ('20', '5', '40', '39', '40', '60', '40', '121261494@qq.com', '2015-04-25 18:22:02', '<font color=\"red\">内存当前：60%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES ('21', '4', '40', '40', '40', '59', '40', '121261494@qq.com', '2015-04-25 18:23:02', '<font color=\"red\">内存当前：59%,超出预设值  40%</font>');
INSERT INTO `ly_server_info` VALUES ('22', '32', '80', '41', '80', '81', '80', '121261494@qq.com', '2015-04-26 01:43:05', '<font color=\"red\">内存当前：81%,超出预设值  80%</font>');
INSERT INTO `ly_server_info` VALUES ('23', '55', '80', '55', '80', '81', '80', '121261494@qq.com', '2015-04-26 01:50:03', '<font color=\"red\">内存当前：81%,超出预设值  80%</font>');
INSERT INTO `ly_server_info` VALUES ('24', '13', '80', '53', '80', '81', '80', '121261494@qq.com', '2015-04-26 01:59:08', '<font color=\"red\">内存当前：81%,超出预设值  80%</font>');
INSERT INTO `ly_server_info` VALUES ('25', '85', '80', '58', '80', '72', '80', '121261494@qq.com', '2015-04-26 02:46:06', '<font color=\"red\">CPU当前：85%,超出预设值  80%<br></font>');
INSERT INTO `ly_server_info` VALUES ('26', '34', '80', '59', '80', '81', '80', '121261494@qq.com', '2015-04-27 00:29:06', '<font color=\"red\">内存当前：81%,超出预设值  80%</font>');
INSERT INTO `ly_server_info` VALUES ('27', '92', '80', '47', '80', '64', '80', '121261494@qq.com', '2015-04-27 00:44:07', '<font color=\"red\">CPU当前：92%,超出预设值  80%<br></font>');
INSERT INTO `ly_server_info` VALUES ('28', '85', '80', '49', '80', '68', '80', '121261494@qq.com', '2015-04-27 23:38:04', '<font color=\"red\">CPU当前：85%,超出预设值  80%<br></font>');
INSERT INTO `ly_server_info` VALUES ('29', '94', '80', '69', '80', '73', '80', '121261494@qq.com', '2015-04-28 01:35:03', '<font color=\"red\">CPU当前：94%,超出预设值  80%<br></font>');
INSERT INTO `ly_server_info` VALUES ('30', '6', '80', '43', '80', '87', '80', '121261494@qq.com', '2015-05-09 00:00:08', '<font color=\"red\">内存当前：87%,超出预设值  80%</font>');
INSERT INTO `ly_server_info` VALUES ('31', '88', '80', '59', '80', '87', '80', '121261494@qq.com', '2015-05-09 00:01:14', '<font color=\"red\">CPU当前：88%,超出预设值  80%<br>内存当前：87%,超出预设值  80%</font>');

-- ----------------------------
-- Table structure for `ly_user`
-- ----------------------------
DROP TABLE IF EXISTS `ly_user`;
CREATE TABLE `ly_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `accountName` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `credentialsSalt` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `locked` varchar(3) DEFAULT '0',
  `createTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deletestatus` int(1) DEFAULT '0' COMMENT '逻辑删除状态0:存在1:删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_user
-- ----------------------------
INSERT INTO `ly_user` VALUES ('4', 'npt', 'npt', '4cb708ca19dbc510e9e4ad172d33ec03', '46f4aae8ab90317d001c803b63b34185', null, '0', '2016-09-26 17:39:22', '0');
INSERT INTO `ly_user` VALUES ('5', 'lx一号:平台管理者', 'lx1', '7e65746ec84e1e9a419a65737274c4ce', '3eea32364613ee64c774d8532130f81f', null, '0', '2016-09-26 20:13:19', '0');
INSERT INTO `ly_user` VALUES ('6', 'lx二号:资源管理者', 'lx2', 'dd21cd227fc9b971c6ae1f8741794777', '665ce1ee70347865c7b549ebbda89ead', null, '0', '2016-09-26 20:26:46', '0');
INSERT INTO `ly_user` VALUES ('7', 'lx三号:资源管理者', 'lx3', '40869eb27a07be5aadf32151598c06d4', '4ce003fc9b34f88582ae462dee3b71ef', null, '0', '2016-09-26 20:27:02', '0');
INSERT INTO `ly_user` VALUES ('8', '游客', 'visitor', '9b6d993a05b6e483e07a5b236f3859d0', '873607ae7ab9e07779327cd96f1a8fec', null, '0', '2016-09-26 22:18:42', '0');
INSERT INTO `ly_user` VALUES ('9', 'lx四号:资源提供者', 'lx4', 'd4558544081b47c95ca7023c7bfeb2b6', 'e5f5a8827749f11e7cfd6298113d81ad', null, '0', '2016-09-26 20:27:55', '0');
INSERT INTO `ly_user` VALUES ('10', 'han', 'han', '24e71ba7cc2e0b7b62a127081555e0ac', 'c23d27946ba372e6e69680841a55dd32', null, '0', '2016-10-08 16:27:14', '0');

-- ----------------------------
-- Table structure for `ly_userlogin`
-- ----------------------------
DROP TABLE IF EXISTS `ly_userlogin`;
CREATE TABLE `ly_userlogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `accountName` varchar(20) DEFAULT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `loginIP` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ly_user_loginlist` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=342 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_userlogin
-- ----------------------------
INSERT INTO `ly_userlogin` VALUES ('143', '3', 'admin', '2016-09-26 17:29:35', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('144', '3', 'admin', '2016-09-26 17:32:28', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('145', '3', 'admin', '2016-09-26 17:33:15', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('146', '3', 'admin', '2016-09-26 17:38:40', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('147', '4', 'npt', '2016-09-26 17:39:38', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('148', '3', 'admin', '2016-09-26 17:40:22', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('149', '4', 'npt', '2016-09-26 17:41:03', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('150', '4', 'npt', '2016-09-26 17:56:55', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('151', '4', 'npt', '2016-09-26 18:05:53', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('152', '4', 'npt', '2016-09-26 20:10:31', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('153', '8', 'visitor', '2016-09-26 21:00:04', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('154', '8', 'visitor', '2016-09-26 21:42:29', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('155', '5', 'lx1', '2016-09-26 21:45:27', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('156', '5', 'lx1', '2016-09-26 22:09:03', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('157', '8', 'visitor', '2016-09-26 22:14:18', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('158', '8', 'visitor', '2016-09-26 22:18:27', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('159', '8', 'visitor', '2016-09-26 22:18:51', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('160', null, 'visitor', '2016-09-26 22:19:15', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('161', null, 'visitor', '2016-09-26 22:19:26', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('162', null, 'visitor', '2016-09-26 22:19:40', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('163', null, 'visitor', '2016-09-26 22:19:51', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('164', null, 'visitor', '2016-09-26 22:20:02', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('165', null, 'visitor', '2016-09-26 22:20:42', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('166', '5', 'lx1', '2016-09-26 22:21:14', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('167', null, 'visitor', '2016-09-26 22:21:24', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('168', null, 'visitor', '2016-09-26 22:22:28', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('169', null, 'visitor', '2016-09-26 22:26:05', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('170', '5', 'lx1', '2016-09-26 22:28:56', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('171', '5', 'lx1', '2016-09-26 22:28:56', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('172', '5', 'lx1', '2016-09-26 22:28:56', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('173', '8', 'visitor', '2016-09-26 22:32:32', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('174', '8', 'visitor', '2016-09-26 22:38:21', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('175', '5', 'lx1', '2016-09-26 22:38:26', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('176', '5', 'lx1', '2016-09-28 10:51:18', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('177', '5', 'lx1', '2016-09-28 11:10:49', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('178', '5', 'lx1', '2016-09-28 11:16:12', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('179', '5', 'lx1', '2016-09-28 11:18:50', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('180', '5', 'lx1', '2016-09-28 11:23:12', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('181', '5', 'lx1', '2016-09-28 11:43:11', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('182', '5', 'lx1', '2016-09-28 11:48:52', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('183', '5', 'lx1', '2016-09-28 11:53:05', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('184', '5', 'lx1', '2016-09-28 11:56:31', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('185', '5', 'lx1', '2016-09-28 12:13:29', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('186', '5', 'lx1', '2016-09-29 15:10:19', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('187', '5', 'lx1', '2016-10-04 15:49:11', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('188', '5', 'lx1', '2016-10-04 16:54:02', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('189', '5', 'lx1', '2016-10-04 17:14:46', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('190', '5', 'lx1', '2016-10-04 19:55:03', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('191', '5', 'lx1', '2016-10-04 19:58:58', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('192', '5', 'lx1', '2016-10-04 19:59:48', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('193', '5', 'lx1', '2016-10-04 20:01:53', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('194', '5', 'lx1', '2016-10-04 20:04:53', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('195', '5', 'lx1', '2016-10-04 20:20:41', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('196', '5', 'lx1', '2016-10-04 20:28:37', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('197', '5', 'lx1', '2016-10-04 20:32:29', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('198', '4', 'npt', '2016-10-04 21:05:04', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('199', '4', 'npt', '2016-10-04 21:25:18', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('200', '4', 'npt', '2016-10-04 21:27:25', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('201', '4', 'npt', '2016-10-04 22:21:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('202', '4', 'npt', '2016-10-04 22:32:29', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('203', '4', 'npt', '2016-10-05 09:19:03', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('204', '4', 'npt', '2016-10-05 10:54:28', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('205', '4', 'npt', '2016-10-05 11:44:31', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('206', '4', 'npt', '2016-10-05 11:45:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('207', '4', 'npt', '2016-10-05 11:55:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('208', '4', 'npt', '2016-10-05 12:06:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('209', '4', 'npt', '2016-10-05 13:57:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('210', '4', 'npt', '2016-10-05 14:25:08', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('211', '4', 'npt', '2016-10-05 14:28:43', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('212', '4', 'npt', '2016-10-05 14:35:10', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('213', '4', 'npt', '2016-10-05 14:37:01', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('214', '4', 'npt', '2016-10-05 20:21:00', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('215', '4', 'npt', '2016-10-05 21:14:24', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('216', '4', 'npt', '2016-10-05 22:35:37', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('217', '4', 'npt', '2016-10-05 22:44:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('218', '4', 'npt', '2016-10-05 22:46:21', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('219', '4', 'npt', '2016-10-06 19:08:48', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('220', '4', 'npt', '2016-10-06 20:24:50', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('221', '4', 'npt', '2016-10-06 20:25:38', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('222', '4', 'npt', '2016-10-06 20:55:40', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('223', '4', 'npt', '2016-10-06 21:22:36', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('224', '4', 'npt', '2016-10-06 21:31:53', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('225', '4', 'npt', '2016-10-06 21:48:09', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('226', '4', 'npt', '2016-10-08 14:38:39', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('227', '4', 'npt', '2016-10-08 15:26:19', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('228', '10', 'han', '2016-10-08 16:26:23', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('229', '10', 'han', '2016-10-08 17:06:44', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('230', '8', 'visitor', '2016-10-08 18:06:02', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('231', '10', 'han', '2016-10-08 18:31:52', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('232', '10', 'han', '2016-10-08 18:32:34', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('233', '10', 'han', '2016-10-08 18:34:14', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('234', '10', 'han', '2016-10-08 18:57:14', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('235', '10', 'han', '2016-10-08 18:58:36', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('236', '10', 'han', '2016-10-08 19:11:16', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('237', '10', 'han', '2016-10-09 09:23:03', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('238', '11', 'biin', '2016-10-09 09:27:11', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('239', '10', 'han', '2016-10-09 09:27:26', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('240', '11', 'biin', '2016-10-09 09:27:55', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('241', '10', 'han', '2016-10-09 09:28:46', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('242', '11', 'biin', '2016-10-09 09:30:03', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('243', '10', 'han', '2016-10-09 09:31:48', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('244', '10', 'han', '2016-10-09 09:41:56', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('245', '10', 'han', '2016-10-09 10:10:30', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('246', '10', 'han', '2016-10-09 10:30:28', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('247', '4', 'npt', '2016-10-09 10:30:51', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('248', '10', 'han', '2016-10-09 10:32:16', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('249', '4', 'npt', '2016-10-09 10:34:03', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('250', '5', 'lx1', '2016-10-09 10:52:07', '0:0:0:0:0:0:0:1');
INSERT INTO `ly_userlogin` VALUES ('251', '4', 'npt', '2016-10-09 11:44:33', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('252', '4', 'npt', '2016-10-09 11:44:34', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('253', '4', 'npt', '2016-10-09 20:18:53', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('254', '5', 'lx1', '2016-10-09 20:22:55', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('255', '4', 'npt', '2016-10-09 20:23:12', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('256', '6', 'lx2', '2016-10-09 20:25:03', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('257', '7', 'lx3', '2016-10-09 20:25:20', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('258', '9', 'lx4', '2016-10-09 20:25:33', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('259', '5', 'lx1', '2016-10-09 20:25:58', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('260', '4', 'npt', '2016-10-09 20:26:10', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('261', '4', 'npt', '2016-10-09 21:55:52', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('262', '4', 'npt', '2016-10-10 07:49:45', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('263', '4', 'npt', '2016-10-10 09:52:35', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('264', '9', 'lx4', '2016-10-10 09:54:10', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('265', '4', 'npt', '2016-10-10 09:54:21', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('266', '9', 'lx4', '2016-10-10 10:25:23', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('267', '4', 'npt', '2016-10-10 10:25:36', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('268', '4', 'npt', '2016-10-10 10:38:17', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('269', '4', 'npt', '2016-10-10 11:01:06', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('270', '4', 'npt', '2016-10-10 11:08:12', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('271', '4', 'npt', '2016-10-10 11:09:35', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('272', '4', 'npt', '2016-10-10 11:20:38', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('273', '4', 'npt', '2016-10-10 11:22:54', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('274', '4', 'npt', '2016-10-10 11:23:49', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('275', '4', 'npt', '2016-10-10 11:28:57', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('276', '4', 'npt', '2016-10-10 14:52:45', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('277', '4', 'npt', '2016-10-10 15:05:37', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('278', '4', 'npt', '2016-10-10 15:40:46', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('279', '4', 'npt', '2016-10-10 15:41:48', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('280', '4', 'npt', '2016-10-10 15:42:58', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('281', '4', 'npt', '2016-10-10 16:18:20', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('282', '4', 'npt', '2016-10-10 16:19:14', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('283', '4', 'npt', '2016-10-10 16:20:09', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('284', '4', 'npt', '2016-10-10 16:41:55', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('285', '4', 'npt', '2016-10-10 16:44:10', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('286', '4', 'npt', '2016-10-10 16:47:10', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('287', '4', 'npt', '2016-10-10 16:50:30', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('288', '4', 'npt', '2016-10-10 16:52:49', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('289', '4', 'npt', '2016-10-10 16:53:08', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('290', '4', 'npt', '2016-10-10 16:53:24', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('291', '4', 'npt', '2016-10-10 16:59:29', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('292', '4', 'npt', '2016-10-10 16:59:48', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('293', '4', 'npt', '2016-10-11 08:47:35', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('294', '4', 'npt', '2016-10-11 17:24:08', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('295', '4', 'npt', '2016-10-13 17:13:00', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('296', '4', 'npt', '2016-10-13 17:58:51', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('297', '4', 'npt', '2016-10-13 18:13:28', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('298', '4', 'npt', '2016-10-13 18:35:26', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('299', '4', 'npt', '2016-10-13 18:39:50', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('300', '4', 'npt', '2016-10-13 19:46:35', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('301', '4', 'npt', '2016-10-13 20:12:30', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('302', '4', 'npt', '2016-10-13 20:19:00', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('303', '4', 'npt', '2016-10-13 20:19:00', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('304', '4', 'npt', '2016-10-13 21:53:45', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('305', '4', 'npt', '2016-10-13 21:58:29', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('306', '4', 'npt', '2016-10-13 22:44:27', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('307', '4', 'npt', '2016-10-13 22:51:39', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('308', '4', 'npt', '2016-10-14 08:37:29', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('309', '4', 'npt', '2016-10-14 10:50:12', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('310', '4', 'npt', '2016-10-14 18:14:19', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('311', '4', 'npt', '2016-10-14 18:36:16', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('312', '4', 'npt', '2016-10-14 18:38:31', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('313', '4', 'npt', '2016-10-14 18:46:31', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('314', '4', 'npt', '2016-10-14 18:49:26', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('315', '4', 'npt', '2016-10-14 18:52:22', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('316', '4', 'npt', '2016-10-14 19:00:36', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('317', '4', 'npt', '2016-10-14 19:08:32', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('318', '4', 'npt', '2016-10-14 19:10:15', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('319', '4', 'npt', '2016-10-14 19:12:21', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('320', '4', 'npt', '2016-10-14 19:31:01', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('321', '4', 'npt', '2016-10-14 20:12:53', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('322', '4', 'npt', '2016-10-14 20:59:18', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('323', '4', 'npt', '2016-10-14 21:29:32', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('324', '4', 'npt', '2016-10-14 21:37:07', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('325', '4', 'npt', '2016-10-14 21:38:01', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('326', '4', 'npt', '2016-10-14 21:38:54', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('327', '4', 'npt', '2016-10-15 07:40:56', '172.23.234.191');
INSERT INTO `ly_userlogin` VALUES ('328', '4', 'npt', '2016-10-15 18:48:15', '172.23.234.191');
INSERT INTO `ly_userlogin` VALUES ('329', '4', 'npt', '2016-10-15 21:17:50', '172.23.234.191');
INSERT INTO `ly_userlogin` VALUES ('330', '4', 'npt', '2016-10-15 21:19:37', '172.24.71.10');
INSERT INTO `ly_userlogin` VALUES ('331', '4', 'npt', '2016-10-18 16:55:17', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('332', '4', 'npt', '2016-10-18 16:56:41', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('333', '4', 'npt', '2016-10-18 18:31:49', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('334', '4', 'npt', '2016-10-18 18:46:26', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('335', '4', 'npt', '2016-10-18 18:54:29', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('336', '4', 'npt', '2016-10-18 19:08:18', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('337', '4', 'npt', '2016-10-18 19:09:21', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('338', '4', 'npt', '2016-10-18 19:14:37', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('339', '4', 'npt', '2016-10-18 19:39:41', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('340', '4', 'npt', '2016-10-19 08:39:03', '127.0.0.1');
INSERT INTO `ly_userlogin` VALUES ('341', '4', 'npt', '2016-10-19 08:40:10', '127.0.0.1');

-- ----------------------------
-- Table structure for `ly_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `ly_user_role`;
CREATE TABLE `ly_user_role` (
  `userId` int(11) NOT NULL,
  `roleId` int(11) NOT NULL,
  PRIMARY KEY (`userId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ly_user_role
-- ----------------------------
INSERT INTO `ly_user_role` VALUES ('4', '3');
INSERT INTO `ly_user_role` VALUES ('5', '1');
INSERT INTO `ly_user_role` VALUES ('6', '9');
INSERT INTO `ly_user_role` VALUES ('7', '10');
INSERT INTO `ly_user_role` VALUES ('8', '4');
INSERT INTO `ly_user_role` VALUES ('9', '11');
INSERT INTO `ly_user_role` VALUES ('10', '12');
