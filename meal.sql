/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.5.53 : Database - meal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`meal` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `meal`;

/*Table structure for table `m_admin_access` */

CREATE TABLE `m_admin_access` (
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '模型名称',
  `group` varchar(16) NOT NULL DEFAULT '' COMMENT '权限分组标识',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `nid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '授权节点id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='统一授权表';

/*Data for the table `m_admin_access` */

/*Table structure for table `m_admin_action` */

CREATE TABLE `m_admin_action` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '所属模块名',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '行为唯一标识',
  `title` varchar(80) NOT NULL DEFAULT '' COMMENT '行为标题',
  `remark` varchar(128) NOT NULL DEFAULT '' COMMENT '行为描述',
  `rule` text NOT NULL COMMENT '行为规则',
  `log` text NOT NULL COMMENT '日志规则',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='系统行为表';

/*Data for the table `m_admin_action` */

insert  into `m_admin_action`(`id`,`module`,`name`,`title`,`remark`,`rule`,`log`,`status`,`create_time`,`update_time`) values (1,'user','user_add','添加用户','添加用户','','[user|get_nickname] 添加了用户：[record|get_nickname]',1,1480156399,1480163853),(2,'user','user_edit','编辑用户','编辑用户','','[user|get_nickname] 编辑了用户：[details]',1,1480164578,1480297748),(3,'user','user_delete','删除用户','删除用户','','[user|get_nickname] 删除了用户：[details]',1,1480168582,1480168616),(4,'user','user_enable','启用用户','启用用户','','[user|get_nickname] 启用了用户：[details]',1,1480169185,1480169185),(5,'user','user_disable','禁用用户','禁用用户','','[user|get_nickname] 禁用了用户：[details]',1,1480169214,1480170581),(6,'user','user_access','用户授权','用户授权','','[user|get_nickname] 对用户：[record|get_nickname] 进行了授权操作。详情：[details]',1,1480221441,1480221563),(7,'user','role_add','添加角色','添加角色','','[user|get_nickname] 添加了角色：[details]',1,1480251473,1480251473),(8,'user','role_edit','编辑角色','编辑角色','','[user|get_nickname] 编辑了角色：[details]',1,1480252369,1480252369),(9,'user','role_delete','删除角色','删除角色','','[user|get_nickname] 删除了角色：[details]',1,1480252580,1480252580),(10,'user','role_enable','启用角色','启用角色','','[user|get_nickname] 启用了角色：[details]',1,1480252620,1480252620),(11,'user','role_disable','禁用角色','禁用角色','','[user|get_nickname] 禁用了角色：[details]',1,1480252651,1480252651),(12,'user','attachment_enable','启用附件','启用附件','','[user|get_nickname] 启用了附件：附件ID([details])',1,1480253226,1480253332),(13,'user','attachment_disable','禁用附件','禁用附件','','[user|get_nickname] 禁用了附件：附件ID([details])',1,1480253267,1480253340),(14,'user','attachment_delete','删除附件','删除附件','','[user|get_nickname] 删除了附件：附件ID([details])',1,1480253323,1480253323),(15,'admin','config_add','添加配置','添加配置','','[user|get_nickname] 添加了配置，[details]',1,1480296196,1480296196),(16,'admin','config_edit','编辑配置','编辑配置','','[user|get_nickname] 编辑了配置：[details]',1,1480296960,1480296960),(17,'admin','config_enable','启用配置','启用配置','','[user|get_nickname] 启用了配置：[details]',1,1480298479,1480298479),(18,'admin','config_disable','禁用配置','禁用配置','','[user|get_nickname] 禁用了配置：[details]',1,1480298506,1480298506),(19,'admin','config_delete','删除配置','删除配置','','[user|get_nickname] 删除了配置：[details]',1,1480298532,1480298532),(20,'admin','database_export','备份数据库','备份数据库','','[user|get_nickname] 备份了数据库：[details]',1,1480298946,1480298946),(21,'admin','database_import','还原数据库','还原数据库','','[user|get_nickname] 还原了数据库：[details]',1,1480301990,1480302022),(22,'admin','database_optimize','优化数据表','优化数据表','','[user|get_nickname] 优化了数据表：[details]',1,1480302616,1480302616),(23,'admin','database_repair','修复数据表','修复数据表','','[user|get_nickname] 修复了数据表：[details]',1,1480302798,1480302798),(24,'admin','database_backup_delete','删除数据库备份','删除数据库备份','','[user|get_nickname] 删除了数据库备份：[details]',1,1480302870,1480302870),(25,'admin','hook_add','添加钩子','添加钩子','','[user|get_nickname] 添加了钩子：[details]',1,1480303198,1480303198),(26,'admin','hook_edit','编辑钩子','编辑钩子','','[user|get_nickname] 编辑了钩子：[details]',1,1480303229,1480303229),(27,'admin','hook_delete','删除钩子','删除钩子','','[user|get_nickname] 删除了钩子：[details]',1,1480303264,1480303264),(28,'admin','hook_enable','启用钩子','启用钩子','','[user|get_nickname] 启用了钩子：[details]',1,1480303294,1480303294),(29,'admin','hook_disable','禁用钩子','禁用钩子','','[user|get_nickname] 禁用了钩子：[details]',1,1480303409,1480303409),(30,'admin','menu_add','添加节点','添加节点','','[user|get_nickname] 添加了节点：[details]',1,1480305468,1480305468),(31,'admin','menu_edit','编辑节点','编辑节点','','[user|get_nickname] 编辑了节点：[details]',1,1480305513,1480305513),(32,'admin','menu_delete','删除节点','删除节点','','[user|get_nickname] 删除了节点：[details]',1,1480305562,1480305562),(33,'admin','menu_enable','启用节点','启用节点','','[user|get_nickname] 启用了节点：[details]',1,1480305630,1480305630),(34,'admin','menu_disable','禁用节点','禁用节点','','[user|get_nickname] 禁用了节点：[details]',1,1480305659,1480305659),(35,'admin','module_install','安装模块','安装模块','','[user|get_nickname] 安装了模块：[details]',1,1480307558,1480307558),(36,'admin','module_uninstall','卸载模块','卸载模块','','[user|get_nickname] 卸载了模块：[details]',1,1480307588,1480307588),(37,'admin','module_enable','启用模块','启用模块','','[user|get_nickname] 启用了模块：[details]',1,1480307618,1480307618),(38,'admin','module_disable','禁用模块','禁用模块','','[user|get_nickname] 禁用了模块：[details]',1,1480307653,1480307653),(39,'admin','module_export','导出模块','导出模块','','[user|get_nickname] 导出了模块：[details]',1,1480307682,1480307682),(40,'admin','packet_install','安装数据包','安装数据包','','[user|get_nickname] 安装了数据包：[details]',1,1480308342,1480308342),(41,'admin','packet_uninstall','卸载数据包','卸载数据包','','[user|get_nickname] 卸载了数据包：[details]',1,1480308372,1480308372),(42,'admin','system_config_update','更新系统设置','更新系统设置','','[user|get_nickname] 更新了系统设置：[details]',1,1480309555,1480309642),(43,'cms','slider_delete','删除滚动图片','删除滚动图片','','[user|get_nickname] 删除了滚动图片：[details]',1,1541401577,1541401577),(44,'cms','slider_edit','编辑滚动图片','编辑滚动图片','','[user|get_nickname] 编辑了滚动图片：[details]',1,1541401577,1541401577),(45,'cms','slider_add','添加滚动图片','添加滚动图片','','[user|get_nickname] 添加了滚动图片：[details]',1,1541401577,1541401577),(46,'cms','document_delete','删除文档','删除文档','','[user|get_nickname] 删除了文档：[details]',1,1541401577,1541401577),(47,'cms','document_restore','还原文档','还原文档','','[user|get_nickname] 还原了文档：[details]',1,1541401577,1541401577),(48,'cms','nav_disable','禁用导航','禁用导航','','[user|get_nickname] 禁用了导航：[details]',1,1541401577,1541401577),(49,'cms','nav_enable','启用导航','启用导航','','[user|get_nickname] 启用了导航：[details]',1,1541401577,1541401577),(50,'cms','nav_delete','删除导航','删除导航','','[user|get_nickname] 删除了导航：[details]',1,1541401577,1541401577),(51,'cms','nav_edit','编辑导航','编辑导航','','[user|get_nickname] 编辑了导航：[details]',1,1541401577,1541401577),(52,'cms','nav_add','添加导航','添加导航','','[user|get_nickname] 添加了导航：[details]',1,1541401577,1541401577),(53,'cms','model_disable','禁用内容模型','禁用内容模型','','[user|get_nickname] 禁用了内容模型：[details]',1,1541401577,1541401577),(54,'cms','model_enable','启用内容模型','启用内容模型','','[user|get_nickname] 启用了内容模型：[details]',1,1541401577,1541401577),(55,'cms','model_delete','删除内容模型','删除内容模型','','[user|get_nickname] 删除了内容模型：[details]',1,1541401577,1541401577),(56,'cms','model_edit','编辑内容模型','编辑内容模型','','[user|get_nickname] 编辑了内容模型：[details]',1,1541401577,1541401577),(57,'cms','model_add','添加内容模型','添加内容模型','','[user|get_nickname] 添加了内容模型：[details]',1,1541401577,1541401577),(58,'cms','menu_disable','禁用导航菜单','禁用导航菜单','','[user|get_nickname] 禁用了导航菜单：[details]',1,1541401577,1541401577),(59,'cms','menu_enable','启用导航菜单','启用导航菜单','','[user|get_nickname] 启用了导航菜单：[details]',1,1541401577,1541401577),(60,'cms','menu_delete','删除导航菜单','删除导航菜单','','[user|get_nickname] 删除了导航菜单：[details]',1,1541401577,1541401577),(61,'cms','menu_edit','编辑导航菜单','编辑导航菜单','','[user|get_nickname] 编辑了导航菜单：[details]',1,1541401577,1541401577),(62,'cms','menu_add','添加导航菜单','添加导航菜单','','[user|get_nickname] 添加了导航菜单：[details]',1,1541401577,1541401577),(63,'cms','link_disable','禁用友情链接','禁用友情链接','','[user|get_nickname] 禁用了友情链接：[details]',1,1541401577,1541401577),(64,'cms','link_enable','启用友情链接','启用友情链接','','[user|get_nickname] 启用了友情链接：[details]',1,1541401577,1541401577),(65,'cms','link_delete','删除友情链接','删除友情链接','','[user|get_nickname] 删除了友情链接：[details]',1,1541401577,1541401577),(66,'cms','link_edit','编辑友情链接','编辑友情链接','','[user|get_nickname] 编辑了友情链接：[details]',1,1541401577,1541401577),(67,'cms','link_add','添加友情链接','添加友情链接','','[user|get_nickname] 添加了友情链接：[details]',1,1541401577,1541401577),(68,'cms','field_disable','禁用模型字段','禁用模型字段','','[user|get_nickname] 禁用了模型字段：[details]',1,1541401577,1541401577),(69,'cms','field_enable','启用模型字段','启用模型字段','','[user|get_nickname] 启用了模型字段：[details]',1,1541401577,1541401577),(70,'cms','field_delete','删除模型字段','删除模型字段','','[user|get_nickname] 删除了模型字段：[details]',1,1541401577,1541401577),(71,'cms','field_edit','编辑模型字段','编辑模型字段','','[user|get_nickname] 编辑了模型字段：[details]',1,1541401577,1541401577),(72,'cms','field_add','添加模型字段','添加模型字段','','[user|get_nickname] 添加了模型字段：[details]',1,1541401577,1541401577),(73,'cms','column_disable','禁用栏目','禁用栏目','','[user|get_nickname] 禁用了栏目：[details]',1,1541401577,1541401577),(74,'cms','column_enable','启用栏目','启用栏目','','[user|get_nickname] 启用了栏目：[details]',1,1541401577,1541401577),(75,'cms','column_delete','删除栏目','删除栏目','','[user|get_nickname] 删除了栏目：[details]',1,1541401577,1541401577),(76,'cms','column_edit','编辑栏目','编辑栏目','','[user|get_nickname] 编辑了栏目：[details]',1,1541401577,1541401577),(77,'cms','column_add','添加栏目','添加栏目','','[user|get_nickname] 添加了栏目：[details]',1,1541401577,1541401577),(78,'cms','advert_type_disable','禁用广告分类','禁用广告分类','','[user|get_nickname] 禁用了广告分类：[details]',1,1541401577,1541401577),(79,'cms','advert_type_enable','启用广告分类','启用广告分类','','[user|get_nickname] 启用了广告分类：[details]',1,1541401577,1541401577),(80,'cms','advert_type_delete','删除广告分类','删除广告分类','','[user|get_nickname] 删除了广告分类：[details]',1,1541401577,1541401577),(81,'cms','advert_type_edit','编辑广告分类','编辑广告分类','','[user|get_nickname] 编辑了广告分类：[details]',1,1541401577,1541401577),(82,'cms','advert_type_add','添加广告分类','添加广告分类','','[user|get_nickname] 添加了广告分类：[details]',1,1541401577,1541401577),(83,'cms','advert_disable','禁用广告','禁用广告','','[user|get_nickname] 禁用了广告：[details]',1,1541401577,1541401577),(84,'cms','advert_enable','启用广告','启用广告','','[user|get_nickname] 启用了广告：[details]',1,1541401577,1541401577),(85,'cms','advert_delete','删除广告','删除广告','','[user|get_nickname] 删除了广告：[details]',1,1541401577,1541401577),(86,'cms','advert_edit','编辑广告','编辑广告','','[user|get_nickname] 编辑了广告：[details]',1,1541401577,1541401577),(87,'cms','advert_add','添加广告','添加广告','','[user|get_nickname] 添加了广告：[details]',1,1541401577,1541401577),(88,'cms','document_disable','禁用文档','禁用文档','','[user|get_nickname] 禁用了文档：[details]',1,1541401577,1541401577),(89,'cms','document_enable','启用文档','启用文档','','[user|get_nickname] 启用了文档：[details]',1,1541401577,1541401577),(90,'cms','document_trash','回收文档','回收文档','','[user|get_nickname] 回收了文档：[details]',1,1541401577,1541401577),(91,'cms','document_edit','编辑文档','编辑文档','','[user|get_nickname] 编辑了文档：[details]',1,1541401577,1541401577),(92,'cms','document_add','添加文档','添加文档','','[user|get_nickname] 添加了文档：[details]',1,1541401577,1541401577),(93,'cms','slider_enable','启用滚动图片','启用滚动图片','','[user|get_nickname] 启用了滚动图片：[details]',1,1541401577,1541401577),(94,'cms','slider_disable','禁用滚动图片','禁用滚动图片','','[user|get_nickname] 禁用了滚动图片：[details]',1,1541401577,1541401577),(95,'cms','support_add','添加客服','添加客服','','[user|get_nickname] 添加了客服：[details]',1,1541401577,1541401577),(96,'cms','support_edit','编辑客服','编辑客服','','[user|get_nickname] 编辑了客服：[details]',1,1541401577,1541401577),(97,'cms','support_delete','删除客服','删除客服','','[user|get_nickname] 删除了客服：[details]',1,1541401577,1541401577),(98,'cms','support_enable','启用客服','启用客服','','[user|get_nickname] 启用了客服：[details]',1,1541401577,1541401577),(99,'cms','support_disable','禁用客服','禁用客服','','[user|get_nickname] 禁用了客服：[details]',1,1541401577,1541401577);

/*Table structure for table `m_admin_attachment` */

CREATE TABLE `m_admin_attachment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '文件名',
  `module` varchar(32) NOT NULL DEFAULT '' COMMENT '模块名，由哪个模块上传的',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '文件路径',
  `thumb` varchar(255) NOT NULL DEFAULT '' COMMENT '缩略图路径',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '文件链接',
  `mime` varchar(128) NOT NULL DEFAULT '' COMMENT '文件mime类型',
  `ext` char(8) NOT NULL DEFAULT '' COMMENT '文件类型',
  `size` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `md5` char(32) NOT NULL DEFAULT '' COMMENT '文件md5',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT 'sha1 散列值',
  `driver` varchar(16) NOT NULL DEFAULT 'local' COMMENT '上传驱动',
  `download` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '下载次数',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `width` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '图片宽度',
  `height` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '图片高度',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='附件表';

/*Data for the table `m_admin_attachment` */

insert  into `m_admin_attachment`(`id`,`uid`,`name`,`module`,`path`,`thumb`,`url`,`mime`,`ext`,`size`,`md5`,`sha1`,`driver`,`download`,`create_time`,`update_time`,`sort`,`status`,`width`,`height`) values (3,1,'1539077359-92export.xls','user','uploads/files/20181010/84d8ede6bfb2f1928d14872e6ba81e70.xls','','','application/vnd.ms-excel','xls',23040,'bdf5a747273f48b51233063d5c5ae735','2c5be62cd8e1e3a567d841e4d8c5aad80da69eb4','local',0,1539154591,1539154591,100,1,0,0);

/*Table structure for table `m_admin_config` */

CREATE TABLE `m_admin_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT '名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '标题',
  `group` varchar(32) NOT NULL DEFAULT '' COMMENT '配置分组',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '类型',
  `value` text NOT NULL COMMENT '配置值',
  `options` text NOT NULL COMMENT '配置项',
  `tips` varchar(256) NOT NULL DEFAULT '' COMMENT '配置提示',
  `ajax_url` varchar(256) NOT NULL DEFAULT '' COMMENT '联动下拉框ajax地址',
  `next_items` varchar(256) NOT NULL DEFAULT '' COMMENT '联动下拉框的下级下拉框名，多个以逗号隔开',
  `param` varchar(32) NOT NULL DEFAULT '' COMMENT '联动下拉框请求参数名',
  `format` varchar(32) NOT NULL DEFAULT '' COMMENT '格式，用于格式文本',
  `table` varchar(32) NOT NULL DEFAULT '' COMMENT '表名，只用于快速联动类型',
  `level` tinyint(2) unsigned NOT NULL DEFAULT '2' COMMENT '联动级别，只用于快速联动类型',
  `key` varchar(32) NOT NULL DEFAULT '' COMMENT '键字段，只用于快速联动类型',
  `option` varchar(32) NOT NULL DEFAULT '' COMMENT '值字段，只用于快速联动类型',
  `pid` varchar(32) NOT NULL DEFAULT '' COMMENT '父级id字段，只用于快速联动类型',
  `ak` varchar(32) NOT NULL DEFAULT '' COMMENT '百度地图appkey',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态：0禁用，1启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='系统配置表';

/*Data for the table `m_admin_config` */

insert  into `m_admin_config`(`id`,`name`,`title`,`group`,`type`,`value`,`options`,`tips`,`ajax_url`,`next_items`,`param`,`format`,`table`,`level`,`key`,`option`,`pid`,`ak`,`create_time`,`update_time`,`sort`,`status`) values (1,'web_site_status','站点开关','base','switch','1','','站点关闭后将不能访问，后台可正常登录','','','','','',2,'','','','',1475240395,1477403914,1,1),(2,'web_site_title','站点标题','base','text','掌圣订餐','','调用方式：<code>config(\'web_site_title\')</code>','','','','','',2,'','','','',1475240646,1477710341,2,1),(3,'web_site_slogan','站点标语','base','text','掌圣订餐，极简、极速、极致','','站点口号，调用方式：<code>config(\'web_site_slogan\')</code>','','','','','',2,'','','','',1475240994,1477710357,3,1),(4,'web_site_logo','站点LOGO','base','image','','','','','','','','',2,'','','','',1475241067,1475241067,4,1),(5,'web_site_description','站点描述','base','textarea','','','网站描述，有利于搜索引擎抓取相关信息','','','','','',2,'','','','',1475241186,1475241186,6,1),(6,'web_site_keywords','站点关键词','base','text','掌圣订餐','','网站搜索引擎关键字','','','','','',2,'','','','',1475241328,1475241328,7,1),(7,'web_site_copyright','版权信息','base','text','Copyright © 2015-2017 ZSPHP All rights reserved.','','调用方式：<code>config(\'web_site_copyright\')</code>','','','','','',2,'','','','',1475241416,1477710383,8,1),(8,'web_site_icp','备案信息','base','text','','','调用方式：<code>config(\'web_site_icp\')</code>','','','','','',2,'','','','',1475241441,1477710441,9,1),(9,'web_site_statistics','站点统计','base','textarea','','','网站统计代码，支持百度、Google、cnzz等，调用方式：<code>config(\'web_site_statistics\')</code>','','','','','',2,'','','','',1475241498,1477710455,10,1),(10,'config_group','配置分组','system','array','base:基本\r\nsystem:系统\r\nupload:上传\r\ndevelop:开发\r\ndatabase:数据库','','','','','','','',2,'','','','',1475241716,1477649446,100,1),(11,'form_item_type','配置类型','system','array','text:单行文本\r\ntextarea:多行文本\r\nstatic:静态文本\r\npassword:密码\r\ncheckbox:复选框\r\nradio:单选按钮\r\ndate:日期\r\ndatetime:日期+时间\r\nhidden:隐藏\r\nswitch:开关\r\narray:数组\r\nselect:下拉框\r\nlinkage:普通联动下拉框\r\nlinkages:快速联动下拉框\r\nimage:单张图片\r\nimages:多张图片\r\nfile:单个文件\r\nfiles:多个文件\r\nueditor:UEditor 编辑器\r\nwangeditor:wangEditor 编辑器\r\neditormd:markdown 编辑器\r\nckeditor:ckeditor 编辑器\r\nicon:字体图标\r\ntags:标签\r\nnumber:数字\r\nbmap:百度地图\r\ncolorpicker:取色器\r\njcrop:图片裁剪\r\nmasked:格式文本\r\nrange:范围\r\ntime:时间','','','','','','','',2,'','','','',1475241835,1495853193,100,1),(12,'upload_file_size','文件上传大小限制','upload','text','0','','0为不限制大小，单位：kb','','','','','',2,'','','','',1475241897,1477663520,100,1),(13,'upload_file_ext','允许上传的文件后缀','upload','tags','doc,docx,xls,xlsx,ppt,pptx,pdf,wps,txt,rar,zip,gz,bz2,7z','','多个后缀用逗号隔开，不填写则不限制类型','','','','','',2,'','','','',1475241975,1477649489,100,1),(14,'upload_image_size','图片上传大小限制','upload','text','0','','0为不限制大小，单位：kb','','','','','',2,'','','','',1475242015,1477663529,100,1),(15,'upload_image_ext','允许上传的图片后缀','upload','tags','gif,jpg,jpeg,bmp,png','','多个后缀用逗号隔开，不填写则不限制类型','','','','','',2,'','','','',1475242056,1477649506,100,1),(16,'list_rows','分页数量','system','number','20','','每页的记录数','','','','','',2,'','','','',1475242066,1476074507,101,1),(17,'system_color','后台配色方案','system','radio','default','default:Default\r\namethyst:Amethyst\r\ncity:City\r\nflat:Flat\r\nmodern:Modern\r\nsmooth:Smooth','','','','','','',2,'','','','',1475250066,1477316689,102,1),(18,'develop_mode','开发模式','develop','radio','1','0:关闭\r\n1:开启','','','','','','',2,'','','','',1476864205,1476864231,100,1),(19,'app_trace','显示页面Trace','develop','radio','0','0:否\r\n1:是','','','','','','',2,'','','','',1476866355,1476866355,100,1),(21,'data_backup_path','数据库备份根路径','database','text','../data/','','路径必须以 / 结尾','','','','','',2,'','','','',1477017745,1477018467,100,1),(22,'data_backup_part_size','数据库备份卷大小','database','text','20971520','','该值用于限制压缩后的分卷最大长度。单位：B；建议设置20M','','','','','',2,'','','','',1477017886,1477017886,100,1),(23,'data_backup_compress','数据库备份文件是否启用压缩','database','radio','1','0:否\r\n1:是','压缩备份文件需要PHP环境支持 <code>gzopen</code>, <code>gzwrite</code>函数','','','','','',2,'','','','',1477017978,1477018172,100,1),(24,'data_backup_compress_level','数据库备份文件压缩级别','database','radio','9','1:最低\r\n4:一般\r\n9:最高','数据库备份文件的压缩级别，该配置在开启压缩时生效','','','','','',2,'','','','',1477018083,1477018083,100,1),(25,'top_menu_max','顶部导航模块数量','system','text','10','','设置顶部导航默认显示的模块数量','','','','','',2,'','','','',1477579289,1477579289,103,1),(26,'web_site_logo_text','站点LOGO文字','base','image','','','','','','','','',2,'','','','',1477620643,1477620643,5,1),(27,'upload_image_thumb','缩略图尺寸','upload','text','','','不填写则不生成缩略图，如需生成 <code>300x300</code> 的缩略图，则填写 <code>300,300</code> ，请注意，逗号必须是英文逗号','','','','','',2,'','','','',1477644150,1477649513,100,1),(28,'upload_image_thumb_type','缩略图裁剪类型','upload','radio','1','1:等比例缩放\r\n2:缩放后填充\r\n3:居中裁剪\r\n4:左上角裁剪\r\n5:右下角裁剪\r\n6:固定尺寸缩放','该项配置只有在启用生成缩略图时才生效','','','','','',2,'','','','',1477646271,1477649521,100,1),(29,'upload_thumb_water','添加水印','upload','switch','0','','','','','','','',2,'','','','',1477649648,1477649648,100,1),(30,'upload_thumb_water_pic','水印图片','upload','image','','','只有开启水印功能才生效','','','','','',2,'','','','',1477656390,1477656390,100,1),(31,'upload_thumb_water_position','水印位置','upload','radio','9','1:左上角\r\n2:上居中\r\n3:右上角\r\n4:左居中\r\n5:居中\r\n6:右居中\r\n7:左下角\r\n8:下居中\r\n9:右下角','只有开启水印功能才生效','','','','','',2,'','','','',1477656528,1477656528,100,1),(32,'upload_thumb_water_alpha','水印透明度','upload','text','50','','请输入0~100之间的数字，数字越小，透明度越高','','','','','',2,'','','','',1477656714,1477661309,100,1),(33,'wipe_cache_type','清除缓存类型','system','checkbox','TEMP_PATH','TEMP_PATH:应用缓存\r\nLOG_PATH:应用日志\r\nCACHE_PATH:项目模板缓存','清除缓存时，要删除的缓存类型','','','','','',2,'','','','',1477727305,1477727305,100,1),(34,'captcha_signin','后台验证码开关','system','switch','0','','后台登录时是否需要验证码','','','','','',2,'','','','',1478771958,1478771958,99,1),(35,'home_default_module','前台默认模块','system','select','index','','前台默认访问的模块，该模块必须有Index控制器和index方法','','','','','',0,'','','','',1486714723,1486715620,104,1),(36,'minify_status','开启minify','system','switch','0','','开启minify会压缩合并js、css文件，可以减少资源请求次数，如果不支持minify，可关闭','','','','','',0,'','','','',1487035843,1487035843,99,1),(37,'upload_driver','上传驱动','upload','radio','local','local:本地','图片或文件上传驱动','','','','','',0,'','','','',1501488567,1501490821,100,1),(38,'system_log','系统日志','system','switch','1','','是否开启系统日志功能','','','','','',0,'','','','',1512635391,1512635391,99,1),(39,'asset_version','资源版本号','develop','text','20180327','','可通过修改版号强制用户更新静态文件','','','','','',0,'','','','',1522143239,1522143239,100,1);

/*Table structure for table `m_admin_hook` */

CREATE TABLE `m_admin_hook` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `plugin` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子来自哪个插件',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '钩子描述',
  `system` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统钩子',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='钩子表';

/*Data for the table `m_admin_hook` */

insert  into `m_admin_hook`(`id`,`name`,`plugin`,`description`,`system`,`create_time`,`update_time`,`status`) values (1,'admin_index','','后台首页',1,1468174214,1477757518,1),(2,'plugin_index_tab_list','','插件扩展tab钩子',1,1468174214,1468174214,1),(3,'module_index_tab_list','','模块扩展tab钩子',1,1468174214,1468174214,1),(4,'page_tips','','每个页面的提示',1,1468174214,1468174214,1),(5,'signin_footer','','登录页面底部钩子',1,1479269315,1479269315,1),(6,'signin_captcha','','登录页面验证码钩子',1,1479269315,1479269315,1),(7,'signin','','登录控制器钩子',1,1479386875,1479386875,1),(8,'upload_attachment','','附件上传钩子',1,1501493808,1501493808,1),(9,'page_plugin_js','','页面插件js钩子',1,1503633591,1503633591,1),(10,'page_plugin_css','','页面插件css钩子',1,1503633591,1503633591,1),(11,'signin_sso','','单点登录钩子',1,1503633591,1503633591,1),(12,'signout_sso','','单点退出钩子',1,1503633591,1503633591,1),(13,'user_add','','添加用户钩子',1,1503633591,1503633591,1),(14,'user_edit','','编辑用户钩子',1,1503633591,1503633591,1),(15,'user_delete','','删除用户钩子',1,1503633591,1503633591,1),(16,'user_enable','','启用用户钩子',1,1503633591,1503633591,1),(17,'user_disable','','禁用用户钩子',1,1503633591,1503633591,1);

/*Table structure for table `m_admin_hook_plugin` */

CREATE TABLE `m_admin_hook_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(32) NOT NULL DEFAULT '' COMMENT '钩子id',
  `plugin` varchar(32) NOT NULL DEFAULT '' COMMENT '插件标识',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='钩子-插件对应表';

/*Data for the table `m_admin_hook_plugin` */

insert  into `m_admin_hook_plugin`(`id`,`hook`,`plugin`,`create_time`,`update_time`,`sort`,`status`) values (1,'admin_index','SystemInfo',1477757503,1477757503,1,1),(2,'admin_index','DevTeam',1477755780,1477755780,2,1);

/*Table structure for table `m_admin_icon` */

CREATE TABLE `m_admin_icon` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '图标名称',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '图标css地址',
  `prefix` varchar(32) NOT NULL DEFAULT '' COMMENT '图标前缀',
  `font_family` varchar(32) NOT NULL DEFAULT '' COMMENT '字体名',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图标表';

/*Data for the table `m_admin_icon` */

/*Table structure for table `m_admin_icon_list` */

CREATE TABLE `m_admin_icon_list` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `icon_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属图标id',
  `title` varchar(128) NOT NULL DEFAULT '' COMMENT '图标标题',
  `class` varchar(255) NOT NULL DEFAULT '' COMMENT '图标类名',
  `code` varchar(128) NOT NULL DEFAULT '' COMMENT '图标关键词',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='详细图标列表';

/*Data for the table `m_admin_icon_list` */

/*Table structure for table `m_admin_log` */

CREATE TABLE `m_admin_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `action_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '行为id',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '执行用户id',
  `action_ip` bigint(20) NOT NULL COMMENT '执行行为者ip',
  `model` varchar(50) NOT NULL DEFAULT '' COMMENT '触发行为的表',
  `record_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '触发行为的数据id',
  `remark` longtext NOT NULL COMMENT '日志备注',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '执行行为的时间',
  PRIMARY KEY (`id`),
  KEY `action_ip_ix` (`action_ip`),
  KEY `action_id_ix` (`action_id`),
  KEY `user_id_ix` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='行为日志表';

/*Data for the table `m_admin_log` */

insert  into `m_admin_log`(`id`,`action_id`,`user_id`,`action_ip`,`model`,`record_id`,`remark`,`status`,`create_time`) values (1,35,1,2130706433,'admin_module',0,'超级管理员 安装了模块：订餐',1,1538302766),(2,36,1,2130706433,'admin_module',0,'超级管理员 卸载了模块：订餐',1,1538302845),(3,35,1,2130706433,'admin_module',0,'超级管理员 安装了模块：订餐',1,1538302852),(4,36,1,2130706433,'admin_module',0,'超级管理员 卸载了模块：订餐',1,1538382688),(5,35,1,2130706433,'admin_module',0,'超级管理员 安装了模块：订餐',1,1538382722),(6,31,1,2130706433,'admin_menu',279,'超级管理员 编辑了节点：节点ID(279)',1,1538975563),(7,32,1,2130706433,'admin_menu',281,'超级管理员 删除了节点：节点ID(281),节点标题(编辑),节点链接(meal/document/edit)',1,1538975587),(8,32,1,2130706433,'admin_menu',282,'超级管理员 删除了节点：节点ID(282),节点标题(删除),节点链接(cms/document/delete)',1,1538975594),(9,32,1,2130706433,'admin_menu',283,'超级管理员 删除了节点：节点ID(283),节点标题(启用),节点链接(meal/document/enable)',1,1538975600),(10,32,1,2130706433,'admin_menu',284,'超级管理员 删除了节点：节点ID(284),节点标题(禁用),节点链接(cms/document/disable)',1,1538975608),(11,32,1,2130706433,'admin_menu',285,'超级管理员 删除了节点：节点ID(285),节点标题(快速编辑),节点链接(cms/document/quickedit)',1,1538975615),(12,32,1,2130706433,'admin_menu',295,'超级管理员 删除了节点：节点ID(295),节点标题(还原),节点链接(cms/recycle/restore)',1,1538975623),(13,32,1,2130706433,'admin_menu',294,'超级管理员 删除了节点：节点ID(294),节点标题(删除),节点链接(cms/recycle/delete)',1,1538975627),(14,32,1,2130706433,'admin_menu',293,'超级管理员 删除了节点：节点ID(293),节点标题(回收站),节点链接(cms/recycle/index)',1,1538975633),(15,32,1,2130706433,'admin_menu',292,'超级管理员 删除了节点：节点ID(292),节点标题(快速编辑),节点链接(cms/page/quickedit)',1,1538975638),(16,32,1,2130706433,'admin_menu',291,'超级管理员 删除了节点：节点ID(291),节点标题(禁用),节点链接(cms/page/disable)',1,1538975643),(17,32,1,2130706433,'admin_menu',290,'超级管理员 删除了节点：节点ID(290),节点标题(启用),节点链接(cms/page/enable)',1,1538975648),(18,32,1,2130706433,'admin_menu',289,'超级管理员 删除了节点：节点ID(289),节点标题(删除),节点链接(cms/page/delete)',1,1538975654),(19,32,1,2130706433,'admin_menu',288,'超级管理员 删除了节点：节点ID(288),节点标题(编辑),节点链接(cms/page/edit)',1,1538975659),(20,32,1,2130706433,'admin_menu',287,'超级管理员 删除了节点：节点ID(287),节点标题(新增),节点链接(cms/page/add)',1,1538975665),(21,32,1,2130706433,'admin_menu',286,'超级管理员 删除了节点：节点ID(286),节点标题(单页管理),节点链接(cms/page/index)',1,1538975670),(22,32,1,2130706433,'admin_menu',280,'超级管理员 删除了节点：节点ID(280),节点标题(文档列表),节点链接(meal/document/index)',1,1538975675),(23,42,1,2130706433,'admin_config',0,'超级管理员 更新了系统设置：分组(base)',1,1538985353),(24,42,1,2130706433,'admin_config',0,'超级管理员 更新了系统设置：分组(meal)',1,1539066537),(25,42,1,2130706433,'admin_config',0,'超级管理员 更新了系统设置：分组(meal)',1,1539066573),(26,42,1,2130706433,'admin_config',0,'超级管理员 更新了系统设置：分组(meal)',1,1539077465),(27,42,1,2130706433,'admin_config',0,'超级管理员 更新了系统设置：分组(meal)',1,1539077475),(28,30,1,2130706433,'admin_menu',296,'超级管理员 添加了节点：所属模块(user),所属节点ID(20),节点标题(导入),节点链接(user/index/import)',1,1539080673),(29,1,1,2130706433,'admin_user',2,'超级管理员 添加了用户：',1,1539083436),(30,1,1,2130706433,'admin_user',3,'超级管理员 添加了用户：',1,1539083436),(31,1,1,2130706433,'admin_user',4,'超级管理员 添加了用户：',1,1539083436),(32,1,1,2130706433,'admin_user',5,'超级管理员 添加了用户：',1,1539083436),(33,1,1,2130706433,'admin_user',6,'超级管理员 添加了用户：',1,1539083519),(34,1,1,2130706433,'admin_user',7,'超级管理员 添加了用户：',1,1539083519),(35,1,1,2130706433,'admin_user',8,'超级管理员 添加了用户：',1,1539083519),(36,1,1,2130706433,'admin_user',9,'超级管理员 添加了用户：',1,1539083519),(37,1,1,2130706433,'admin_user',10,'超级管理员 添加了用户：玩家昵称',1,1539083593),(38,1,1,2130706433,'admin_user',11,'超级管理员 添加了用户：玩家昵称',1,1539083593),(39,1,1,2130706433,'admin_user',12,'超级管理员 添加了用户：玩家昵称',1,1539083593),(40,1,1,2130706433,'admin_user',13,'超级管理员 添加了用户：玩家昵称',1,1539083593),(41,1,1,2130706433,'admin_user',14,'超级管理员 添加了用户：玩家昵称',1,1539083779),(42,1,1,2130706433,'admin_user',15,'超级管理员 添加了用户：玩家2015066',1,1539083779),(43,1,1,2130706433,'admin_user',16,'超级管理员 添加了用户：玩家2015066',1,1539083779),(44,1,1,2130706433,'admin_user',17,'超级管理员 添加了用户：玩家2015066',1,1539083779),(45,2,1,2130706433,'admin_user',17,'超级管理员 编辑了用户：字段(status)，原值(0)，新值：(true)',1,1539083836),(46,2,1,2130706433,'admin_user',15,'超级管理员 编辑了用户：字段(status)，原值(0)，新值：(true)',1,1539083837),(47,2,1,2130706433,'admin_user',16,'超级管理员 编辑了用户：字段(status)，原值(0)，新值：(true)',1,1539083839),(48,2,1,2130706433,'admin_user',14,'超级管理员 编辑了用户：字段(status)，原值(0)，新值：(true)',1,1539083839),(49,42,17,2130706433,'admin_config',0,'玩家2015066 更新了系统设置：分组(meal)',1,1539084020),(50,42,17,2130706433,'admin_config',0,'玩家2015066 更新了系统设置：分组(meal)',1,1539084035),(51,42,17,2130706433,'admin_config',0,'玩家2015066 更新了系统设置：分组(meal)',1,1539131857),(52,30,17,2130706433,'admin_menu',297,'玩家2015066 添加了节点：所属模块(meal),所属节点ID(279),节点标题(导出),节点链接(meal/index/export)',1,1539133249),(53,7,17,2130706433,'admin_role',2,'玩家2015066 添加了角色：普通',1,1539134917),(54,2,17,2130706433,'admin_user',17,'玩家2015066 编辑了用户：玩家2015066',1,1539134936),(55,2,17,2130706433,'admin_user',15,'玩家2015066 编辑了用户：玩家2015066',1,1539134957),(56,2,17,2130706433,'admin_user',16,'玩家2015066 编辑了用户：玩家2015066',1,1539134993),(57,2,17,2130706433,'admin_user',14,'玩家2015066 编辑了用户：玩家昵称',1,1539135004),(58,42,1,2130706433,'admin_config',0,'超级管理员 更新了系统设置：分组(meal)',1,1539142730),(59,42,1,2130706433,'admin_config',0,'超级管理员 更新了系统设置：分组(meal)',1,1539142760),(60,35,1,2130706433,'admin_module',0,'超级管理员 安装了模块：门户',1,1541401576);

/*Table structure for table `m_admin_menu` */

CREATE TABLE `m_admin_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级菜单id',
  `module` varchar(16) NOT NULL DEFAULT '' COMMENT '模块名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '菜单标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '菜单图标',
  `url_type` varchar(16) NOT NULL DEFAULT '' COMMENT '链接类型（link：外链，module：模块）',
  `url_value` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `url_target` varchar(16) NOT NULL DEFAULT '_self' COMMENT '链接打开方式：_blank,_self',
  `online_hide` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '网站上线后是否隐藏',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `system_menu` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统菜单，系统菜单不可删除',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `params` varchar(255) NOT NULL DEFAULT '' COMMENT '参数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=391 DEFAULT CHARSET=utf8 COMMENT='后台菜单表';

/*Data for the table `m_admin_menu` */

insert  into `m_admin_menu`(`id`,`pid`,`module`,`title`,`icon`,`url_type`,`url_value`,`url_target`,`online_hide`,`create_time`,`update_time`,`sort`,`system_menu`,`status`,`params`) values (1,0,'admin','首页','fa fa-fw fa-home','module_admin','admin/index/index','_self',0,1467617722,1477710540,1,1,1,''),(2,1,'admin','快捷操作','fa fa-fw fa-folder-open-o','module_admin','','_self',0,1467618170,1477710695,1,1,1,''),(3,2,'admin','清空缓存','fa fa-fw fa-trash-o','module_admin','admin/index/wipecache','_self',0,1467618273,1489049773,3,1,1,''),(4,0,'admin','系统','fa fa-fw fa-gear','module_admin','admin/system/index','_self',0,1467618361,1477710540,2,1,1,''),(5,4,'admin','系统功能','si si-wrench','module_admin','','_self',0,1467618441,1477710695,1,1,1,''),(6,5,'admin','系统设置','fa fa-fw fa-wrench','module_admin','admin/system/index','_self',0,1467618490,1477710695,1,1,1,''),(7,5,'admin','配置管理','fa fa-fw fa-gears','module_admin','admin/config/index','_self',0,1467618618,1477710695,2,1,1,''),(8,7,'admin','新增','','module_admin','admin/config/add','_self',0,1467618648,1477710695,1,1,1,''),(9,7,'admin','编辑','','module_admin','admin/config/edit','_self',0,1467619566,1477710695,2,1,1,''),(10,7,'admin','删除','','module_admin','admin/config/delete','_self',0,1467619583,1477710695,3,1,1,''),(11,7,'admin','启用','','module_admin','admin/config/enable','_self',0,1467619609,1477710695,4,1,1,''),(12,7,'admin','禁用','','module_admin','admin/config/disable','_self',0,1467619637,1477710695,5,1,1,''),(13,5,'admin','节点管理','fa fa-fw fa-bars','module_admin','admin/menu/index','_self',0,1467619882,1477710695,3,1,1,''),(14,13,'admin','新增','','module_admin','admin/menu/add','_self',0,1467619902,1477710695,1,1,1,''),(15,13,'admin','编辑','','module_admin','admin/menu/edit','_self',0,1467620331,1477710695,2,1,1,''),(16,13,'admin','删除','','module_admin','admin/menu/delete','_self',0,1467620363,1477710695,3,1,1,''),(17,13,'admin','启用','','module_admin','admin/menu/enable','_self',0,1467620386,1477710695,4,1,1,''),(18,13,'admin','禁用','','module_admin','admin/menu/disable','_self',0,1467620404,1477710695,5,1,1,''),(19,68,'user','权限管理','fa fa-fw fa-key','module_admin','','_self',0,1467688065,1477710702,1,1,1,''),(20,19,'user','用户管理','fa fa-fw fa-user','module_admin','user/index/index','_self',0,1467688137,1477710702,1,1,1,''),(21,20,'user','新增','','module_admin','user/index/add','_self',0,1467688177,1477710702,1,1,1,''),(22,20,'user','编辑','','module_admin','user/index/edit','_self',0,1467688202,1477710702,2,1,1,''),(23,20,'user','删除','','module_admin','user/index/delete','_self',0,1467688219,1477710702,3,1,1,''),(24,20,'user','启用','','module_admin','user/index/enable','_self',0,1467688238,1477710702,4,1,1,''),(25,20,'user','禁用','','module_admin','user/index/disable','_self',0,1467688256,1477710702,5,1,1,''),(211,64,'admin','日志详情','','module_admin','admin/log/details','_self',0,1480299320,1480299320,100,0,1,''),(32,4,'admin','扩展中心','si si-social-dropbox','module_admin','','_self',0,1467688853,1477710695,2,1,1,''),(33,32,'admin','模块管理','fa fa-fw fa-th-large','module_admin','admin/module/index','_self',0,1467689008,1477710695,1,1,1,''),(34,33,'admin','导入','','module_admin','admin/module/import','_self',0,1467689153,1477710695,1,1,1,''),(35,33,'admin','导出','','module_admin','admin/module/export','_self',0,1467689173,1477710695,2,1,1,''),(36,33,'admin','安装','','module_admin','admin/module/install','_self',0,1467689192,1477710695,3,1,1,''),(37,33,'admin','卸载','','module_admin','admin/module/uninstall','_self',0,1467689241,1477710695,4,1,1,''),(38,33,'admin','启用','','module_admin','admin/module/enable','_self',0,1467689294,1477710695,5,1,1,''),(39,33,'admin','禁用','','module_admin','admin/module/disable','_self',0,1467689312,1477710695,6,1,1,''),(40,33,'admin','更新','','module_admin','admin/module/update','_self',0,1467689341,1477710695,7,1,1,''),(41,32,'admin','插件管理','fa fa-fw fa-puzzle-piece','module_admin','admin/plugin/index','_self',0,1467689527,1477710695,2,1,1,''),(42,41,'admin','导入','','module_admin','admin/plugin/import','_self',0,1467689650,1477710695,1,1,1,''),(43,41,'admin','导出','','module_admin','admin/plugin/export','_self',0,1467689665,1477710695,2,1,1,''),(44,41,'admin','安装','','module_admin','admin/plugin/install','_self',0,1467689680,1477710695,3,1,1,''),(45,41,'admin','卸载','','module_admin','admin/plugin/uninstall','_self',0,1467689700,1477710695,4,1,1,''),(46,41,'admin','启用','','module_admin','admin/plugin/enable','_self',0,1467689730,1477710695,5,1,1,''),(47,41,'admin','禁用','','module_admin','admin/plugin/disable','_self',0,1467689747,1477710695,6,1,1,''),(48,41,'admin','设置','','module_admin','admin/plugin/config','_self',0,1467689789,1477710695,7,1,1,''),(49,41,'admin','管理','','module_admin','admin/plugin/manage','_self',0,1467689846,1477710695,8,1,1,''),(50,5,'admin','附件管理','fa fa-fw fa-cloud-upload','module_admin','admin/attachment/index','_self',0,1467690161,1477710695,4,1,1,''),(51,70,'admin','文件上传','','module_admin','admin/attachment/upload','_self',0,1467690240,1489049773,1,1,1,''),(52,50,'admin','下载','','module_admin','admin/attachment/download','_self',0,1467690334,1477710695,2,1,1,''),(53,50,'admin','启用','','module_admin','admin/attachment/enable','_self',0,1467690352,1477710695,3,1,1,''),(54,50,'admin','禁用','','module_admin','admin/attachment/disable','_self',0,1467690369,1477710695,4,1,1,''),(55,50,'admin','删除','','module_admin','admin/attachment/delete','_self',0,1467690396,1477710695,5,1,1,''),(56,41,'admin','删除','','module_admin','admin/plugin/delete','_self',0,1467858065,1477710695,11,1,1,''),(57,41,'admin','编辑','','module_admin','admin/plugin/edit','_self',0,1467858092,1477710695,10,1,1,''),(60,41,'admin','新增','','module_admin','admin/plugin/add','_self',0,1467858421,1477710695,9,1,1,''),(61,41,'admin','执行','','module_admin','admin/plugin/execute','_self',0,1467879016,1477710695,14,1,1,''),(62,13,'admin','保存','','module_admin','admin/menu/save','_self',0,1468073039,1477710695,6,1,1,''),(64,5,'admin','系统日志','fa fa-fw fa-book','module_admin','admin/log/index','_self',0,1476111944,1477710695,6,0,1,''),(65,5,'admin','数据库管理','fa fa-fw fa-database','module_admin','admin/database/index','_self',0,1476111992,1477710695,8,0,1,''),(66,32,'admin','数据包管理','fa fa-fw fa-database','module_admin','admin/packet/index','_self',0,1476112326,1477710695,4,0,1,''),(67,19,'user','角色管理','fa fa-fw fa-users','module_admin','user/role/index','_self',0,1476113025,1477710702,3,0,1,''),(68,0,'user','用户','fa fa-fw fa-user','module_admin','user/index/index','_self',0,1476193348,1477710540,3,0,1,''),(69,32,'admin','钩子管理','fa fa-fw fa-anchor','module_admin','admin/hook/index','_self',0,1476236193,1477710695,3,0,1,''),(70,2,'admin','后台首页','fa fa-fw fa-tachometer','module_admin','admin/index/index','_self',0,1476237472,1489049773,1,0,1,''),(71,67,'user','新增','','module_admin','user/role/add','_self',0,1476256935,1477710702,1,0,1,''),(72,67,'user','编辑','','module_admin','user/role/edit','_self',0,1476256968,1477710702,2,0,1,''),(73,67,'user','删除','','module_admin','user/role/delete','_self',0,1476256993,1477710702,3,0,1,''),(74,67,'user','启用','','module_admin','user/role/enable','_self',0,1476257023,1477710702,4,0,1,''),(75,67,'user','禁用','','module_admin','user/role/disable','_self',0,1476257046,1477710702,5,0,1,''),(76,20,'user','授权','','module_admin','user/index/access','_self',0,1476375187,1477710702,6,0,1,''),(77,69,'admin','新增','','module_admin','admin/hook/add','_self',0,1476668971,1477710695,1,0,1,''),(78,69,'admin','编辑','','module_admin','admin/hook/edit','_self',0,1476669006,1477710695,2,0,1,''),(79,69,'admin','删除','','module_admin','admin/hook/delete','_self',0,1476669375,1477710695,3,0,1,''),(80,69,'admin','启用','','module_admin','admin/hook/enable','_self',0,1476669427,1477710695,4,0,1,''),(81,69,'admin','禁用','','module_admin','admin/hook/disable','_self',0,1476669564,1477710695,5,0,1,''),(183,66,'admin','安装','','module_admin','admin/packet/install','_self',0,1476851362,1477710695,1,0,1,''),(184,66,'admin','卸载','','module_admin','admin/packet/uninstall','_self',0,1476851382,1477710695,2,0,1,''),(185,5,'admin','行为管理','fa fa-fw fa-bug','module_admin','admin/action/index','_self',0,1476882441,1477710695,7,0,1,''),(186,185,'admin','新增','','module_admin','admin/action/add','_self',0,1476884439,1477710695,1,0,1,''),(187,185,'admin','编辑','','module_admin','admin/action/edit','_self',0,1476884464,1477710695,2,0,1,''),(188,185,'admin','启用','','module_admin','admin/action/enable','_self',0,1476884493,1477710695,3,0,1,''),(189,185,'admin','禁用','','module_admin','admin/action/disable','_self',0,1476884534,1477710695,4,0,1,''),(190,185,'admin','删除','','module_admin','admin/action/delete','_self',0,1476884551,1477710695,5,0,1,''),(191,65,'admin','备份数据库','','module_admin','admin/database/export','_self',0,1476972746,1477710695,1,0,1,''),(192,65,'admin','还原数据库','','module_admin','admin/database/import','_self',0,1476972772,1477710695,2,0,1,''),(193,65,'admin','优化表','','module_admin','admin/database/optimize','_self',0,1476972800,1477710695,3,0,1,''),(194,65,'admin','修复表','','module_admin','admin/database/repair','_self',0,1476972825,1477710695,4,0,1,''),(195,65,'admin','删除备份','','module_admin','admin/database/delete','_self',0,1476973457,1477710695,5,0,1,''),(210,41,'admin','快速编辑','','module_admin','admin/plugin/quickedit','_self',0,1477713981,1477713981,100,0,1,''),(209,185,'admin','快速编辑','','module_admin','admin/action/quickedit','_self',0,1477713939,1477713939,100,0,1,''),(208,7,'admin','快速编辑','','module_admin','admin/config/quickedit','_self',0,1477713808,1477713808,100,0,1,''),(207,69,'admin','快速编辑','','module_admin','admin/hook/quickedit','_self',0,1477713770,1477713770,100,0,1,''),(212,2,'admin','个人设置','fa fa-fw fa-user','module_admin','admin/index/profile','_self',0,1489049767,1489049773,2,0,1,''),(213,70,'admin','检查版本更新','','module_admin','admin/index/checkupdate','_self',0,1490588610,1490588610,100,0,1,''),(214,68,'user','消息管理','fa fa-fw fa-comments-o','module_admin','','_self',0,1520492129,1520492129,100,0,1,''),(215,214,'user','消息列表','fa fa-fw fa-th-list','module_admin','user/message/index','_self',0,1520492195,1520492195,100,0,1,''),(216,215,'user','新增','','module_admin','user/message/add','_self',0,1520492195,1520492195,100,0,1,''),(217,215,'user','编辑','','module_admin','user/message/edit','_self',0,1520492195,1520492195,100,0,1,''),(218,215,'user','删除','','module_admin','user/message/delete','_self',0,1520492195,1520492195,100,0,1,''),(219,215,'user','启用','','module_admin','user/message/enable','_self',0,1520492195,1520492195,100,0,1,''),(220,215,'user','禁用','','module_admin','user/message/disable','_self',0,1520492195,1520492195,100,0,1,''),(221,215,'user','快速编辑','','module_admin','user/message/quickedit','_self',0,1520492195,1520492195,100,0,1,''),(222,2,'admin','消息中心','fa fa-fw fa-comments-o','module_admin','admin/message/index','_self',0,1520495992,1520496254,100,0,1,''),(223,222,'admin','删除','','module_admin','admin/message/delete','_self',0,1520495992,1520496263,100,0,1,''),(224,222,'admin','启用','','module_admin','admin/message/enable','_self',0,1520495992,1520496270,100,0,1,''),(225,32,'admin','图标管理','fa fa-fw fa-tint','module_admin','admin/icon/index','_self',0,1520908295,1520908295,100,0,1,''),(226,225,'admin','新增','','module_admin','admin/icon/add','_self',0,1520908295,1520908295,100,0,1,''),(227,225,'admin','编辑','','module_admin','admin/icon/edit','_self',0,1520908295,1520908295,100,0,1,''),(228,225,'admin','删除','','module_admin','admin/icon/delete','_self',0,1520908295,1520908295,100,0,1,''),(229,225,'admin','启用','','module_admin','admin/icon/enable','_self',0,1520908295,1520908295,100,0,1,''),(230,225,'admin','禁用','','module_admin','admin/icon/disable','_self',0,1520908295,1520908295,100,0,1,''),(231,225,'admin','快速编辑','','module_admin','admin/icon/quickedit','_self',0,1520908295,1520908295,100,0,1,''),(232,225,'admin','图标列表','','module_admin','admin/icon/items','_self',0,1520923368,1520923368,100,0,1,''),(233,225,'admin','更新图标','','module_admin','admin/icon/reload','_self',0,1520931908,1520931908,100,0,1,''),(234,20,'user','快速编辑','','module_admin','user/index/quickedit','_self',0,1526028258,1526028258,100,0,1,''),(235,67,'user','快速编辑','','module_admin','user/role/quickedit','_self',0,1526028282,1526028282,100,0,1,''),(311,308,'cms','删除','','module_admin','cms/page/delete','_self',0,1541401577,1541401577,100,0,1,''),(310,308,'cms','编辑','','module_admin','cms/page/edit','_self',0,1541401577,1541401577,100,0,1,''),(309,308,'cms','新增','','module_admin','cms/page/add','_self',0,1541401577,1541401577,100,0,1,''),(308,299,'cms','单页管理','fa fa-fw fa-file-word-o','module_admin','cms/page/index','_self',0,1541401577,1541401577,100,0,1,''),(306,302,'cms','禁用','','module_admin','cms/document/disable','_self',0,1541401577,1541401577,100,0,1,''),(307,302,'cms','快速编辑','','module_admin','cms/document/quickedit','_self',0,1541401577,1541401577,100,0,1,''),(305,302,'cms','启用','','module_admin','cms/document/enable','_self',0,1541401577,1541401577,100,0,1,''),(304,302,'cms','删除','','module_admin','cms/document/delete','_self',0,1541401577,1541401577,100,0,1,''),(298,0,'cms','门户','fa fa-fw fa-newspaper-o','module_admin','cms/index/index','_self',0,1541401577,1541401577,100,0,1,''),(299,298,'cms','常用操作','fa fa-fw fa-folder-open-o','module_admin','','_self',0,1541401577,1541401577,100,0,1,''),(300,299,'cms','仪表盘','fa fa-fw fa-tachometer','module_admin','cms/index/index','_self',0,1541401577,1541401577,100,0,1,''),(301,299,'cms','发布文档','fa fa-fw fa-plus','module_admin','cms/document/add','_self',0,1541401577,1541401577,100,0,1,''),(302,299,'cms','文档列表','fa fa-fw fa-list','module_admin','cms/document/index','_self',0,1541401577,1541401577,100,0,1,''),(303,302,'cms','编辑','','module_admin','cms/document/edit','_self',0,1541401577,1541401577,100,0,1,''),(296,20,'user','导入','','module_admin','user/index/import','_self',0,1539080673,1539080673,100,0,1,''),(297,279,'meal','导出','','module_admin','meal/index/export','_self',0,1539133249,1539133249,100,0,1,''),(279,277,'meal','订单列表','fa fa-fw fa-plus','module_admin','meal/index/lists','_self',0,1538382722,1538975563,100,0,1,''),(278,277,'meal','仪表盘','fa fa-fw fa-tachometer','module_admin','meal/index/index','_self',0,1538382722,1538382722,100,0,1,''),(277,276,'meal','常用操作','fa fa-fw fa-folder-open-o','module_admin','','_self',0,1538382722,1538382722,100,0,1,''),(276,0,'meal','订餐','fa fa-fw fa-newspaper-o','module_admin','meal/index/index','_self',0,1538382722,1538382722,100,0,1,''),(312,308,'cms','启用','','module_admin','cms/page/enable','_self',0,1541401577,1541401577,100,0,1,''),(313,308,'cms','禁用','','module_admin','cms/page/disable','_self',0,1541401577,1541401577,100,0,1,''),(314,308,'cms','快速编辑','','module_admin','cms/page/quickedit','_self',0,1541401577,1541401577,100,0,1,''),(315,299,'cms','回收站','fa fa-fw fa-recycle','module_admin','cms/recycle/index','_self',0,1541401577,1541401577,100,0,1,''),(316,315,'cms','删除','','module_admin','cms/recycle/delete','_self',0,1541401577,1541401577,100,0,1,''),(317,315,'cms','还原','','module_admin','cms/recycle/restore','_self',0,1541401577,1541401577,100,0,1,''),(318,298,'cms','内容管理','fa fa-fw fa-th-list','module_admin','','_self',0,1541401577,1541401577,100,0,1,''),(319,298,'cms','营销管理','fa fa-fw fa-money','module_admin','','_self',0,1541401577,1541401577,100,0,1,''),(320,319,'cms','广告管理','fa fa-fw fa-handshake-o','module_admin','cms/advert/index','_self',0,1541401577,1541401577,100,0,1,''),(321,320,'cms','新增','','module_admin','cms/advert/add','_self',0,1541401577,1541401577,100,0,1,''),(322,320,'cms','编辑','','module_admin','cms/advert/edit','_self',0,1541401577,1541401577,100,0,1,''),(323,320,'cms','删除','','module_admin','cms/advert/delete','_self',0,1541401577,1541401577,100,0,1,''),(324,320,'cms','启用','','module_admin','cms/advert/enable','_self',0,1541401577,1541401577,100,0,1,''),(325,320,'cms','禁用','','module_admin','cms/advert/disable','_self',0,1541401577,1541401577,100,0,1,''),(326,320,'cms','快速编辑','','module_admin','cms/advert/quickedit','_self',0,1541401577,1541401577,100,0,1,''),(327,320,'cms','广告分类','','module_admin','cms/advert_type/index','_self',0,1541401577,1541401577,100,0,1,''),(328,327,'cms','新增','','module_admin','cms/advert_type/add','_self',0,1541401577,1541401577,100,0,1,''),(329,327,'cms','编辑','','module_admin','cms/advert_type/edit','_self',0,1541401577,1541401577,100,0,1,''),(330,327,'cms','删除','','module_admin','cms/advert_type/delete','_self',0,1541401577,1541401577,100,0,1,''),(331,327,'cms','启用','','module_admin','cms/advert_type/enable','_self',0,1541401577,1541401577,100,0,1,''),(332,327,'cms','禁用','','module_admin','cms/advert_type/disable','_self',0,1541401577,1541401577,100,0,1,''),(333,327,'cms','快速编辑','','module_admin','cms/advert_type/quickedit','_self',0,1541401577,1541401577,100,0,1,''),(334,319,'cms','滚动图片','fa fa-fw fa-photo','module_admin','cms/slider/index','_self',0,1541401577,1541401577,100,0,1,''),(335,334,'cms','新增','','module_admin','cms/slider/add','_self',0,1541401577,1541401577,100,0,1,''),(336,334,'cms','编辑','','module_admin','cms/slider/edit','_self',0,1541401577,1541401577,100,0,1,''),(337,334,'cms','删除','','module_admin','cms/slider/delete','_self',0,1541401577,1541401577,100,0,1,''),(338,334,'cms','启用','','module_admin','cms/slider/enable','_self',0,1541401577,1541401577,100,0,1,''),(339,334,'cms','禁用','','module_admin','cms/slider/disable','_self',0,1541401577,1541401577,100,0,1,''),(340,334,'cms','快速编辑','','module_admin','cms/slider/quickedit','_self',0,1541401577,1541401577,100,0,1,''),(341,319,'cms','友情链接','fa fa-fw fa-link','module_admin','cms/link/index','_self',0,1541401577,1541401577,100,0,1,''),(342,341,'cms','新增','','module_admin','cms/link/add','_self',0,1541401577,1541401577,100,0,1,''),(343,341,'cms','编辑','','module_admin','cms/link/edit','_self',0,1541401577,1541401577,100,0,1,''),(344,341,'cms','删除','','module_admin','cms/link/delete','_self',0,1541401577,1541401577,100,0,1,''),(345,341,'cms','启用','','module_admin','cms/link/enable','_self',0,1541401577,1541401577,100,0,1,''),(346,341,'cms','禁用','','module_admin','cms/link/disable','_self',0,1541401577,1541401577,100,0,1,''),(347,341,'cms','快速编辑','','module_admin','cms/link/quickedit','_self',0,1541401577,1541401577,100,0,1,''),(348,319,'cms','客服管理','fa fa-fw fa-commenting','module_admin','cms/support/index','_self',0,1541401577,1541401577,100,0,1,''),(349,348,'cms','新增','','module_admin','cms/support/add','_self',0,1541401577,1541401577,100,0,1,''),(350,348,'cms','编辑','','module_admin','cms/support/edit','_self',0,1541401577,1541401577,100,0,1,''),(351,348,'cms','删除','','module_admin','cms/support/delete','_self',0,1541401577,1541401577,100,0,1,''),(352,348,'cms','启用','','module_admin','cms/support/enable','_self',0,1541401577,1541401577,100,0,1,''),(353,348,'cms','禁用','','module_admin','cms/support/disable','_self',0,1541401577,1541401577,100,0,1,''),(354,348,'cms','快速编辑','','module_admin','cms/support/quickedit','_self',0,1541401577,1541401577,100,0,1,''),(355,298,'cms','门户设置','fa fa-fw fa-sliders','module_admin','','_self',0,1541401577,1541401577,100,0,1,''),(356,355,'cms','栏目分类','fa fa-fw fa-sitemap','module_admin','cms/column/index','_self',1,1541401577,1541401577,100,0,1,''),(357,356,'cms','新增','','module_admin','cms/column/add','_self',0,1541401577,1541401577,100,0,1,''),(358,356,'cms','编辑','','module_admin','cms/column/edit','_self',0,1541401577,1541401577,100,0,1,''),(359,356,'cms','删除','','module_admin','cms/column/delete','_self',0,1541401577,1541401577,100,0,1,''),(360,356,'cms','启用','','module_admin','cms/column/enable','_self',0,1541401577,1541401577,100,0,1,''),(361,356,'cms','禁用','','module_admin','cms/column/disable','_self',0,1541401577,1541401577,100,0,1,''),(362,356,'cms','快速编辑','','module_admin','cms/column/quickedit','_self',0,1541401577,1541401577,100,0,1,''),(363,355,'cms','内容模型','fa fa-fw fa-th-large','module_admin','cms/model/index','_self',0,1541401577,1541401577,100,0,1,''),(364,363,'cms','新增','','module_admin','cms/model/add','_self',0,1541401577,1541401577,100,0,1,''),(365,363,'cms','编辑','','module_admin','cms/model/edit','_self',0,1541401577,1541401577,100,0,1,''),(366,363,'cms','删除','','module_admin','cms/model/delete','_self',0,1541401577,1541401577,100,0,1,''),(367,363,'cms','启用','','module_admin','cms/model/enable','_self',0,1541401577,1541401577,100,0,1,''),(368,363,'cms','禁用','','module_admin','cms/model/disable','_self',0,1541401577,1541401577,100,0,1,''),(369,363,'cms','快速编辑','','module_admin','cms/model/quickedit','_self',0,1541401577,1541401577,100,0,1,''),(370,363,'cms','字段管理','','module_admin','cms/field/index','_self',0,1541401577,1541401577,100,0,1,''),(371,370,'cms','新增','','module_admin','cms/field/add','_self',0,1541401577,1541401577,100,0,1,''),(372,370,'cms','编辑','','module_admin','cms/field/edit','_self',0,1541401577,1541401577,100,0,1,''),(373,370,'cms','删除','','module_admin','cms/field/delete','_self',0,1541401577,1541401577,100,0,1,''),(374,370,'cms','启用','','module_admin','cms/field/enable','_self',0,1541401577,1541401577,100,0,1,''),(375,370,'cms','禁用','','module_admin','cms/field/disable','_self',0,1541401577,1541401577,100,0,1,''),(376,370,'cms','快速编辑','','module_admin','cms/field/quickedit','_self',0,1541401577,1541401577,100,0,1,''),(377,355,'cms','导航管理','fa fa-fw fa-map-signs','module_admin','cms/nav/index','_self',0,1541401577,1541401577,100,0,1,''),(378,377,'cms','新增','','module_admin','cms/nav/add','_self',0,1541401577,1541401577,100,0,1,''),(379,377,'cms','编辑','','module_admin','cms/nav/edit','_self',0,1541401577,1541401577,100,0,1,''),(380,377,'cms','删除','','module_admin','cms/nav/delete','_self',0,1541401577,1541401577,100,0,1,''),(381,377,'cms','启用','','module_admin','cms/nav/enable','_self',0,1541401577,1541401577,100,0,1,''),(382,377,'cms','禁用','','module_admin','cms/nav/disable','_self',0,1541401577,1541401577,100,0,1,''),(383,377,'cms','快速编辑','','module_admin','cms/nav/quickedit','_self',0,1541401577,1541401577,100,0,1,''),(384,377,'cms','菜单管理','','module_admin','cms/menu/index','_self',0,1541401577,1541401577,100,0,1,''),(385,384,'cms','新增','','module_admin','cms/menu/add','_self',0,1541401577,1541401577,100,0,1,''),(386,384,'cms','编辑','','module_admin','cms/menu/edit','_self',0,1541401577,1541401577,100,0,1,''),(387,384,'cms','删除','','module_admin','cms/menu/delete','_self',0,1541401577,1541401577,100,0,1,''),(388,384,'cms','启用','','module_admin','cms/menu/enable','_self',0,1541401577,1541401577,100,0,1,''),(389,384,'cms','禁用','','module_admin','cms/menu/disable','_self',0,1541401577,1541401577,100,0,1,''),(390,384,'cms','快速编辑','','module_admin','cms/menu/quickedit','_self',0,1541401577,1541401577,100,0,1,'');

/*Table structure for table `m_admin_message` */

CREATE TABLE `m_admin_message` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uid_receive` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '接收消息的用户id',
  `uid_send` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发送消息的用户id',
  `type` varchar(128) NOT NULL DEFAULT '' COMMENT '消息分类',
  `content` text NOT NULL COMMENT '消息内容',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `read_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '阅读时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='消息表';

/*Data for the table `m_admin_message` */

/*Table structure for table `m_admin_module` */

CREATE TABLE `m_admin_module` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '模块名称（标识）',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '模块标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '图标',
  `description` text NOT NULL COMMENT '描述',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `author_url` varchar(255) NOT NULL DEFAULT '' COMMENT '作者主页',
  `config` text COMMENT '配置信息',
  `access` text COMMENT '授权配置',
  `version` varchar(16) NOT NULL DEFAULT '' COMMENT '版本号',
  `identifier` varchar(64) NOT NULL DEFAULT '' COMMENT '模块唯一标识符',
  `system_module` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统模块',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='模块表';

/*Data for the table `m_admin_module` */

insert  into `m_admin_module`(`id`,`name`,`title`,`icon`,`description`,`author`,`author_url`,`config`,`access`,`version`,`identifier`,`system_module`,`create_time`,`update_time`,`sort`,`status`) values (1,'admin','系统','fa fa-fw fa-gear','系统模块，DolphinPHP的核心模块','DolphinPHP','http://www.dolphinphp.com','','','1.0.0','admin.dolphinphp.module',1,1468204902,1468204902,100,1),(2,'user','用户','fa fa-fw fa-user','用户模块，DolphinPHP自带模块','DolphinPHP','http://www.dolphinphp.com','','','1.0.0','user.dolphinphp.module',1,1468204902,1468204902,100,1),(5,'meal','订餐','fa fa-fw fa-newspaper-o','订餐模块','LIBING','https://zskeji.worktile.com','{\"lunch_begin\":\"08:30:00\",\"lunch_end\":\"10:30:00\",\"dinner_begin\":\"14:00:00\",\"dinner_end\":\"19:30:00\",\"quit_lunch\":\"12:00:00\",\"quit_dinner\":\"19:30:00\"}','{\"group\":{\"tab_title\":\"\\u680f\\u76ee\\u6388\\u6743\",\"table_name\":\"cms_column\",\"primary_key\":\"id\",\"parent_id\":\"pid\",\"node_name\":\"name\"}}','1.0.0','meal.libing.module',0,1538382722,1539066475,100,1),(6,'cms','门户','fa fa-fw fa-newspaper-o','门户模块','CaiWeiMing','http://www.dolphinphp.com','{\"summary\":0,\"contact\":\"<div class=\\\"font-s13 push\\\"><strong>\\u6cb3\\u6e90\\u5e02\\u5353\\u9510\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8<\\/strong><br \\/>\\r\\n\\u5730\\u5740\\uff1a\\u6cb3\\u6e90\\u5e02\\u6c5f\\u4e1c\\u65b0\\u533a\\u4e1c\\u73af\\u8def\\u6c47\\u901a\\u82d1D3-H232<br \\/>\\r\\n\\u7535\\u8bdd\\uff1a0762-8910006<br \\/>\\r\\n\\u90ae\\u7bb1\\uff1aadmin@zrthink.com<\\/div>\",\"meta_head\":\"\",\"meta_foot\":\"\",\"support_status\":1,\"support_color\":\"rgba(0,158,232,1)\",\"support_wx\":\"\",\"support_extra\":\"\"}','{\"group\":{\"tab_title\":\"\\u680f\\u76ee\\u6388\\u6743\",\"table_name\":\"cms_column\",\"primary_key\":\"id\",\"parent_id\":\"pid\",\"node_name\":\"name\"}}','1.0.0','cms.ming.module',0,1541401577,1541401577,100,1);

/*Table structure for table `m_admin_packet` */

CREATE TABLE `m_admin_packet` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '数据包名',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '数据包标题',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `author_url` varchar(255) NOT NULL DEFAULT '' COMMENT '作者url',
  `version` varchar(16) NOT NULL,
  `tables` text NOT NULL COMMENT '数据表名',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='数据包表';

/*Data for the table `m_admin_packet` */

/*Table structure for table `m_admin_plugin` */

CREATE TABLE `m_admin_plugin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '插件名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '插件标题',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '图标',
  `description` text NOT NULL COMMENT '插件描述',
  `author` varchar(32) NOT NULL DEFAULT '' COMMENT '作者',
  `author_url` varchar(255) NOT NULL DEFAULT '' COMMENT '作者主页',
  `config` text NOT NULL COMMENT '配置信息',
  `version` varchar(16) NOT NULL DEFAULT '' COMMENT '版本号',
  `identifier` varchar(64) NOT NULL DEFAULT '' COMMENT '插件唯一标识符',
  `admin` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否有后台管理',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '安装时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='插件表';

/*Data for the table `m_admin_plugin` */

insert  into `m_admin_plugin`(`id`,`name`,`title`,`icon`,`description`,`author`,`author_url`,`config`,`version`,`identifier`,`admin`,`create_time`,`update_time`,`sort`,`status`) values (1,'SystemInfo','系统环境信息','fa fa-fw fa-info-circle','在后台首页显示服务器信息','蔡伟明','http://www.caiweiming.com','{\"display\":\"1\",\"width\":\"6\"}','1.0.0','system_info.ming.plugin',0,1477757503,1477757503,100,1),(2,'DevTeam','开发团队成员信息','fa fa-fw fa-users','开发团队成员信息','蔡伟明','http://www.caiweiming.com','{\"display\":\"1\",\"width\":\"6\"}','1.0.0','dev_team.ming.plugin',0,1477755780,1477755780,100,1);

/*Table structure for table `m_admin_role` */

CREATE TABLE `m_admin_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级角色',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '角色名称',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '角色描述',
  `menu_auth` text NOT NULL COMMENT '菜单权限',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  `access` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否可登录后台',
  `default_module` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '默认访问模块',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色表';

/*Data for the table `m_admin_role` */

insert  into `m_admin_role`(`id`,`pid`,`name`,`description`,`menu_auth`,`sort`,`create_time`,`update_time`,`status`,`access`,`default_module`) values (1,0,'超级管理员','系统默认创建的角色，拥有最高权限','',0,1476270000,1468117612,1,1,0),(2,0,'普通','','[]',100,1539134918,1539134918,1,0,1);

/*Table structure for table `m_admin_user` */

CREATE TABLE `m_admin_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `nickname` varchar(32) NOT NULL DEFAULT '' COMMENT '昵称',
  `password` varchar(96) NOT NULL DEFAULT '' COMMENT '密码',
  `email` varchar(64) NOT NULL DEFAULT '' COMMENT '邮箱地址',
  `email_bind` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否绑定邮箱地址',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号码',
  `mobile_bind` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否绑定手机号码',
  `avatar` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '头像',
  `money` decimal(11,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '余额',
  `score` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `role` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '角色ID',
  `group` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '部门id',
  `signup_ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '注册ip',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `last_login_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '最后一次登录时间',
  `last_login_ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '登录ip',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态：0禁用，1启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `m_admin_user` */

insert  into `m_admin_user`(`id`,`username`,`nickname`,`password`,`email`,`email_bind`,`mobile`,`mobile_bind`,`avatar`,`money`,`score`,`role`,`group`,`signup_ip`,`create_time`,`update_time`,`last_login_time`,`last_login_ip`,`sort`,`status`) values (1,'admin','超级管理员','$2y$10$Brw6wmuSLIIx3Yabid8/Wu5l8VQ9M/H/CG3C9RqN9dUCwZW3ljGOK','',0,'',0,0,'0.00',0,1,0,0,1476065410,1541401555,1541401555,2130706433,100,1),(14,'玩家昵称','玩家昵称','$2y$10$Mk/1ZG.lT/hm5zm.1IpHcutIIfWOGPKYrjaLfBRljph4APhF5XtTW','',0,'',0,0,'0.00',0,2,0,0,1539083780,1539135004,0,0,100,1);

/*Table structure for table `m_cms_advert` */

CREATE TABLE `m_cms_advert` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '分类id',
  `tagname` varchar(30) NOT NULL DEFAULT '' COMMENT '广告位标识',
  `ad_type` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '广告类型',
  `timeset` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '时间限制:0-永不过期,1-在设内时间内有效',
  `start_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '开始时间',
  `end_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '结束时间',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '广告位名称',
  `content` text NOT NULL COMMENT '广告内容',
  `expcontent` text NOT NULL COMMENT '过期显示内容',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='广告表';

/*Data for the table `m_cms_advert` */

/*Table structure for table `m_cms_advert_type` */

CREATE TABLE `m_cms_advert_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '分类名称',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='广告分类表';

/*Data for the table `m_cms_advert_type` */

/*Table structure for table `m_cms_column` */

CREATE TABLE `m_cms_column` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '栏目名称',
  `model` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文档模型id',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接',
  `target` varchar(16) NOT NULL DEFAULT '_self' COMMENT '链接打开方式',
  `content` text NOT NULL COMMENT '内容',
  `icon` varchar(64) NOT NULL DEFAULT '' COMMENT '字体图标',
  `index_template` varchar(32) NOT NULL DEFAULT '' COMMENT '封面模板',
  `list_template` varchar(32) NOT NULL DEFAULT '' COMMENT '列表页模板',
  `detail_template` varchar(32) NOT NULL DEFAULT '' COMMENT '详情页模板',
  `post_auth` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '投稿权限',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `hide` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `rank_auth` int(11) NOT NULL DEFAULT '0' COMMENT '浏览权限，-1待审核，0为开放浏览，大于0则为对应的用户角色id',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '栏目属性：0-最终列表栏目，1-外部链接，2-频道封面',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目表';

/*Data for the table `m_cms_column` */

/*Table structure for table `m_cms_document` */

CREATE TABLE `m_cms_document` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '栏目id',
  `model` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '文档模型ID',
  `title` varchar(256) NOT NULL DEFAULT '' COMMENT '标题',
  `shorttitle` varchar(32) NOT NULL DEFAULT '' COMMENT '简略标题',
  `uid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `flag` set('j','p','b','s','a','f','c','h') DEFAULT NULL COMMENT '自定义属性',
  `view` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '阅读量',
  `comment` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `good` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '点赞数',
  `bad` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '踩数',
  `mark` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数量',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `trash` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '回收站',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文档基础表';

/*Data for the table `m_cms_document` */

/*Table structure for table `m_cms_field` */

CREATE TABLE `m_cms_field` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '字段名称',
  `name` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '字段标题',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT '字段类型',
  `define` varchar(128) NOT NULL DEFAULT '' COMMENT '字段定义',
  `value` text COMMENT '默认值',
  `options` text COMMENT '额外选项',
  `tips` varchar(256) NOT NULL DEFAULT '' COMMENT '提示说明',
  `fixed` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否为固定字段',
  `show` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否显示',
  `model` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属文档模型id',
  `ajax_url` varchar(256) NOT NULL DEFAULT '' COMMENT '联动下拉框ajax地址',
  `next_items` varchar(256) NOT NULL DEFAULT '' COMMENT '联动下拉框的下级下拉框名，多个以逗号隔开',
  `param` varchar(32) NOT NULL DEFAULT '' COMMENT '联动下拉框请求参数名',
  `format` varchar(32) NOT NULL DEFAULT '' COMMENT '格式，用于格式文本',
  `table` varchar(32) NOT NULL DEFAULT '' COMMENT '表名，只用于快速联动类型',
  `level` tinyint(2) unsigned NOT NULL DEFAULT '2' COMMENT '联动级别，只用于快速联动类型',
  `key` varchar(32) NOT NULL DEFAULT '' COMMENT '键字段，只用于快速联动类型',
  `option` varchar(32) NOT NULL DEFAULT '' COMMENT '值字段，只用于快速联动类型',
  `pid` varchar(32) NOT NULL DEFAULT '' COMMENT '父级id字段，只用于快速联动类型',
  `ak` varchar(32) NOT NULL DEFAULT '' COMMENT '百度地图appkey',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='文档字段表';

/*Data for the table `m_cms_field` */

insert  into `m_cms_field`(`id`,`name`,`title`,`type`,`define`,`value`,`options`,`tips`,`fixed`,`show`,`model`,`ajax_url`,`next_items`,`param`,`format`,`table`,`level`,`key`,`option`,`pid`,`ak`,`create_time`,`update_time`,`sort`,`status`) values (1,'id','ID','text','int(11) UNSIGNED NOT NULL','0','','ID',0,0,0,'','','','','',0,'','','','',1480562978,1480562978,100,1),(2,'cid','栏目','select','int(11) UNSIGNED NOT NULL','0','','请选择所属栏目',0,0,0,'','','','','',0,'','','','',1480562978,1480562978,100,1),(3,'uid','用户ID','text','int(11) UNSIGNED NOT NULL','0','','',0,0,0,'','','','','',0,'','','','',1480563110,1480563110,100,1),(4,'model','模型ID','text','int(11) UNSIGNED NOT NULL','0','','',0,0,0,'','','','','',0,'','','','',1480563110,1480563110,100,1),(5,'title','标题','text','varchar(128) NOT NULL','','','文档标题',0,1,0,'','','','','',0,'','','','',1480575844,1480576134,1,1),(6,'shorttitle','简略标题','text','varchar(32) NOT NULL','','','简略标题',0,1,0,'','','','','',0,'','','','',1480575844,1480576134,1,1),(7,'flag','自定义属性','checkbox','set(\'j\',\'p\',\'b\',\'s\',\'a\',\'f\',\'h\',\'c\') NULL DEFAULT NULL','','j:跳转\r\np:图片\r\nb:加粗\r\ns:滚动\r\na:特荐\r\nf:幻灯\r\nh:头条\r\nc:推荐','自定义属性',0,1,0,'','','','','',0,'','','','',1480671258,1480671258,100,1),(8,'view','阅读量','text','int(11) UNSIGNED NOT NULL','0','','',0,1,0,'','','','','',0,'','','','',1480563149,1480563149,100,1),(9,'comment','评论数','text','int(11) UNSIGNED NOT NULL','0','','',0,0,0,'','','','','',0,'','','','',1480563189,1480563189,100,1),(10,'good','点赞数','text','int(11) UNSIGNED NOT NULL','0','','',0,0,0,'','','','','',0,'','','','',1480563279,1480563279,100,1),(11,'bad','踩数','text','int(11) UNSIGNED NOT NULL','0','','',0,0,0,'','','','','',0,'','','','',1480563330,1480563330,100,1),(12,'mark','收藏数量','text','int(11) UNSIGNED NOT NULL','0','','',0,0,0,'','','','','',0,'','','','',1480563372,1480563372,100,1),(13,'create_time','创建时间','datetime','int(11) UNSIGNED NOT NULL','0','','',0,0,0,'','','','','',0,'','','','',1480563406,1480563406,100,1),(14,'update_time','更新时间','datetime','int(11) UNSIGNED NOT NULL','0','','',0,0,0,'','','','','',0,'','','','',1480563432,1480563432,100,1),(15,'sort','排序','text','int(11) NOT NULL','100','','',0,1,0,'','','','','',0,'','','','',1480563510,1480563510,100,1),(16,'status','状态','radio','tinyint(2) UNSIGNED NOT NULL','1','0:禁用\r\n1:启用','',0,1,0,'','','','','',0,'','','','',1480563576,1480563576,100,1),(17,'trash','回收站','text','tinyint(2) UNSIGNED NOT NULL','0','','',0,0,0,'','','','','',0,'','','','',1480563576,1480563576,100,1);

/*Table structure for table `m_cms_link` */

CREATE TABLE `m_cms_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '类型：1-文字链接，2-图片链接',
  `title` varchar(128) NOT NULL DEFAULT '' COMMENT '链接标题',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `logo` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '链接LOGO',
  `contact` varchar(255) NOT NULL DEFAULT '' COMMENT '联系方式',
  `sort` int(11) NOT NULL DEFAULT '100',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='有钱链接表';

/*Data for the table `m_cms_link` */

/*Table structure for table `m_cms_menu` */

CREATE TABLE `m_cms_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '导航id',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `column` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '栏目id',
  `page` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '单页id',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '类型：0-栏目链接，1-单页链接，2-自定义链接',
  `title` varchar(128) NOT NULL DEFAULT '' COMMENT '菜单标题',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接',
  `css` varchar(64) NOT NULL DEFAULT '' COMMENT 'css类',
  `rel` varchar(64) NOT NULL DEFAULT '' COMMENT '链接关系网',
  `target` varchar(16) NOT NULL DEFAULT '' COMMENT '打开方式',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='菜单表';

/*Data for the table `m_cms_menu` */

insert  into `m_cms_menu`(`id`,`nid`,`pid`,`column`,`page`,`type`,`title`,`url`,`css`,`rel`,`target`,`create_time`,`update_time`,`sort`,`status`) values (1,1,0,0,0,2,'首页','cms/index/index','','','_self',1492345605,1492345605,100,1),(2,2,0,0,0,2,'关于我们','http://www.dolphinphp.com','','','_self',1492346763,1492346763,100,1),(3,3,0,0,0,2,'开发文档','http://www.kancloud.cn/ming5112/dolphinphp','','','_self',1492346812,1492346812,100,1),(4,3,0,0,0,2,'开发者社区','http://bbs.dolphinphp.com/','','','_self',1492346832,1492346832,100,1),(5,1,0,0,0,2,'二级菜单','http://www.dolphinphp.com','','','_self',1492347372,1492347510,100,1),(6,1,5,0,0,2,'子菜单','http://www.dolphinphp.com','','','_self',1492347388,1492347520,100,1);

/*Table structure for table `m_cms_model` */

CREATE TABLE `m_cms_model` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '模型名称',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '模型标题',
  `table` varchar(64) NOT NULL DEFAULT '' COMMENT '附加表名称',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '模型类别：0-系统模型，1-普通模型，2-独立模型',
  `icon` varchar(64) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '100' COMMENT '排序',
  `system` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否系统模型',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='内容模型表';

/*Data for the table `m_cms_model` */

/*Table structure for table `m_cms_nav` */

CREATE TABLE `m_cms_nav` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(32) NOT NULL DEFAULT '' COMMENT '导航标识',
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '菜单标题',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='导航表';

/*Data for the table `m_cms_nav` */

insert  into `m_cms_nav`(`id`,`tag`,`title`,`create_time`,`update_time`,`status`) values (1,'main_nav','顶部导航',1492345083,1492345083,1),(2,'about_nav','底部关于',1492346685,1492346685,1),(3,'support_nav','服务与支持',1492346715,1492346715,1);

/*Table structure for table `m_cms_page` */

CREATE TABLE `m_cms_page` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '单页标题',
  `content` mediumtext NOT NULL COMMENT '单页内容',
  `keywords` varchar(32) NOT NULL DEFAULT '' COMMENT '关键词',
  `description` varchar(250) NOT NULL DEFAULT '' COMMENT '页面描述',
  `template` varchar(32) NOT NULL DEFAULT '' COMMENT '模板文件',
  `cover` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '单页封面',
  `view` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '阅读量',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单页表';

/*Data for the table `m_cms_page` */

/*Table structure for table `m_cms_slider` */

CREATE TABLE `m_cms_slider` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL DEFAULT '' COMMENT '标题',
  `cover` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '封面id',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `sort` int(11) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='滚动图片表';

/*Data for the table `m_cms_slider` */

/*Table structure for table `m_cms_support` */

CREATE TABLE `m_cms_support` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT '客服名称',
  `qq` varchar(16) NOT NULL DEFAULT '' COMMENT 'QQ',
  `msn` varchar(100) NOT NULL DEFAULT '' COMMENT 'msn',
  `taobao` varchar(100) NOT NULL DEFAULT '' COMMENT 'taobao',
  `alibaba` varchar(100) NOT NULL DEFAULT '' COMMENT 'alibaba',
  `skype` varchar(100) NOT NULL DEFAULT '' COMMENT 'skype',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `sort` int(11) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='客服表';

/*Data for the table `m_cms_support` */

/*Table structure for table `m_meal_order` */

CREATE TABLE `m_meal_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `weekday` int(11) NOT NULL,
  `mealtime` int(11) NOT NULL,
  `ap` enum('am','pm') NOT NULL DEFAULT 'pm',
  `mealdate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4;

/*Data for the table `m_meal_order` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
