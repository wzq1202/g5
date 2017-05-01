/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50535
Source Host           : localhost:3306
Source Database       : g5

Target Server Type    : MYSQL
Target Server Version : 50535
File Encoding         : 65001

Date: 2015-03-24 16:45:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for eacode
-- ----------------------------
DROP TABLE IF EXISTS `eacode`;
CREATE TABLE `eacode` (
  `CODEID` varchar(8) NOT NULL COMMENT '对照ID',
  `FIELD` varchar(15) NOT NULL COMMENT '对照字段',
  `FIELDNAME` varchar(20) NOT NULL COMMENT '对照字段名称',
  `CODE` varchar(10) NOT NULL COMMENT '代码',
  `CODEDESC` varchar(100) NOT NULL COMMENT '代码描述',
  `ENABLED` varchar(2) NOT NULL DEFAULT '1' COMMENT '启用状态(0:禁用;1:启用)',
  `EDITMODE` varchar(2) NOT NULL DEFAULT '1' COMMENT '编辑模式(0:只读;1:可编辑)',
  `SORTNO` int(4) DEFAULT NULL COMMENT '排序号',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`CODEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码对照表';

-- ----------------------------
-- Records of eacode
-- ----------------------------
INSERT INTO `eacode` VALUES ('10000000', 'SEX', '性别', '0', '未知', '0', '0', '1', '');
INSERT INTO `eacode` VALUES ('10000001', 'SEX', '性别', '1', '男', '1', '0', '2', '');
INSERT INTO `eacode` VALUES ('10000002', 'SEX', '性别', '2', '女', '1', '0', '3', null);
INSERT INTO `eacode` VALUES ('10000003', 'LOCKED', '锁定', '0', '激活', '1', '0', '2', null);
INSERT INTO `eacode` VALUES ('10000004', 'LOCKED', '锁定', '1', '锁定', '1', '0', '1', null);
INSERT INTO `eacode` VALUES ('10000005', 'ROLETYPE', '角色类型', '2', '管理角色', '1', '0', '2', null);
INSERT INTO `eacode` VALUES ('10000006', 'ROLETYPE', '角色类型', '1', '业务角色', '1', '0', '1', null);
INSERT INTO `eacode` VALUES ('10000007', 'LEAF', '节点类型', '1', '叶子节点', '1', '0', '1', null);
INSERT INTO `eacode` VALUES ('10000008', 'LEAF', '节点类型', '0', '树枝节点', '1', '0', '2', null);
INSERT INTO `eacode` VALUES ('10000009', 'EDITMODE', '编辑模式', '0', '只读', '1', '0', '1', null);
INSERT INTO `eacode` VALUES ('10000010', 'EDITMODE', '编辑模式', '1', '可编辑', '1', '0', '2', null);
INSERT INTO `eacode` VALUES ('10000011', 'ENABLED', '启用状态', '0', '禁用', '1', '0', '1', null);
INSERT INTO `eacode` VALUES ('10000012', 'ENABLED', '启用状态', '1', '启用', '1', '0', '2', null);
INSERT INTO `eacode` VALUES ('10000015', 'AUTHORIZELEVEL', '权限级别', '1', '访问权限', '1', '0', '1', null);
INSERT INTO `eacode` VALUES ('10000016', 'AUTHORIZELEVEL', '权限级别', '2', '管理权限', '1', '0', '2', null);
INSERT INTO `eacode` VALUES ('10000018', 'ROLETYPE', '角色类型', '3', '系统内置角色', '1', '0', '3', null);
INSERT INTO `eacode` VALUES ('10000039', 'MENUTYPE', '菜单类型', '1', '系统菜单', '1', '0', '1', null);
INSERT INTO `eacode` VALUES ('10000040', 'MENUTYPE', '菜单类型', '0', '业务菜单', '1', '0', '2', null);
INSERT INTO `eacode` VALUES ('10000041', 'USERTYPE', '人员类型', '1', '经办员', '1', '0', '1', null);
INSERT INTO `eacode` VALUES ('10000042', 'USERTYPE', '人员类型', '2', '管理员', '1', '0', '2', null);
INSERT INTO `eacode` VALUES ('10000043', 'USERTYPE', '人员类型', '3', '系统内置用户', '1', '0', '3', null);
INSERT INTO `eacode` VALUES ('10000044', 'QYBZ', '启用标志', '1', '启用', '1', '1', '1', '表格演示例子中使用');
INSERT INTO `eacode` VALUES ('10000047', 'QYBZ', '启用标志', '0', '停用', '1', '1', '2', '表格演示例子中使用');
INSERT INTO `eacode` VALUES ('10000048', 'CMPTYPE', 'UI元素类型', '1', '按钮', '1', '0', '1', null);
INSERT INTO `eacode` VALUES ('10000049', 'CMPTYPE', 'UI元素类型', '2', '表单输入(textField|textArea|comboBox|checkBox|radioBox|htmlEditor)', '1', '0', '2', null);
INSERT INTO `eacode` VALUES ('10000050', 'CMPTYPE', 'UI组件类型', '3', '面板容器(Panel|TabPanel|GridPanel|FormPanel|TreePanel)', '1', '0', '3', null);
INSERT INTO `eacode` VALUES ('10000051', 'PARTAUTHTYPE', 'UI元素授权类型', '1', '禁用', '1', '0', '2', null);
INSERT INTO `eacode` VALUES ('10000052', 'PARTAUTHTYPE', 'UI元素授权类型', '3', '只读', '1', '0', '3', null);
INSERT INTO `eacode` VALUES ('10000053', 'PARTAUTHTYPE', 'UI元素授权类型', '4', '编辑', '1', '0', '4', null);
INSERT INTO `eacode` VALUES ('10000054', 'PARTAUTHTYPE', 'UI元素授权类型', '5', '显示', '1', '0', '5', null);
INSERT INTO `eacode` VALUES ('10000055', 'PARTAUTHTYPE', 'UI元素授权类型', '6', '隐藏', '1', '0', '6', null);
INSERT INTO `eacode` VALUES ('10000056', 'PARTAUTHTYPE', 'UI元素授权类型', '0', '挂起', '1', '0', '1', null);
INSERT INTO `eacode` VALUES ('10000057', 'PARTAUTHTYPE', 'UI元素授权类型', '2', '激活', '1', '0', '4', null);
INSERT INTO `eacode` VALUES ('10000058', 'ADVISETYPE', '通知类型', '1', '方法调用', '1', '0', '1', null);
INSERT INTO `eacode` VALUES ('10000059', 'ADVISETYPE', '通知类型', '2', '异常捕获', '1', '0', '2', null);
INSERT INTO `eacode` VALUES ('10000062', 'EXPAND', '节点状态', '1', '展开', '1', '0', null, '');
INSERT INTO `eacode` VALUES ('10000063', 'EXPAND', '展开状态', '0', '收缩', '1', '0', null, '');

-- ----------------------------
-- Table structure for eadept
-- ----------------------------
DROP TABLE IF EXISTS `eadept`;
CREATE TABLE `eadept` (
  `DEPTID` varchar(100) NOT NULL COMMENT '部门编号',
  `DEPTNAME` varchar(20) NOT NULL COMMENT '部门名称',
  `PARENTID` varchar(100) NOT NULL COMMENT '上级部门编号',
  `CUSTOMID` varchar(10) DEFAULT NULL COMMENT '自定义部门编号',
  `ENABLED` varchar(1) NOT NULL DEFAULT '1' COMMENT '启用状态',
  `SORTNO` int(4) DEFAULT NULL COMMENT '排序号',
  `LEAF` varchar(2) NOT NULL DEFAULT '0' COMMENT '叶子节点(0:树枝节点;1:叶子节点)',
  `REMARK` varchar(100) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`DEPTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门信息表';

-- ----------------------------
-- Records of eadept
-- ----------------------------
INSERT INTO `eadept` VALUES ('001', '西中街小学', '0', '001', '1', '1', '1', '');

-- ----------------------------
-- Table structure for eaevent
-- ----------------------------
DROP TABLE IF EXISTS `eaevent`;
CREATE TABLE `eaevent` (
  `EVENTID` varchar(20) NOT NULL COMMENT '事件ID',
  `USERID` varchar(8) DEFAULT NULL COMMENT '用户ID',
  `ACCOUNT` varchar(30) DEFAULT NULL COMMENT '登录账号',
  `USERNAME` varchar(20) DEFAULT NULL COMMENT '用户名',
  `DESCRIPTION` varchar(100) DEFAULT NULL COMMENT '事件描述',
  `ACTIVETIME` bigint(14) DEFAULT NULL COMMENT '活动时间',
  `REQUESTPATH` varchar(200) DEFAULT NULL COMMENT '请求路劲',
  `METHODNAME` varchar(50) DEFAULT NULL COMMENT 'Action方法名',
  `COSTTIME` int(10) DEFAULT NULL COMMENT '耗时',
  PRIMARY KEY (`EVENTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='操作员事件表';

-- ----------------------------
-- Records of eaevent
-- ----------------------------

-- ----------------------------
-- Table structure for eaexception
-- ----------------------------
DROP TABLE IF EXISTS `eaexception`;
CREATE TABLE `eaexception` (
  `EXCEPTIONID` varchar(20) NOT NULL COMMENT '异常ID',
  `CLAZZ` varchar(200) DEFAULT NULL COMMENT '异常类',
  `METHODNAME` varchar(50) DEFAULT NULL COMMENT '方法名',
  `ACTIVETIME` bigint(14) DEFAULT NULL COMMENT '激活时间',
  `EXCEPTION` varchar(2000) DEFAULT NULL COMMENT '异常信息',
  PRIMARY KEY (`EXCEPTIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统异常监控表';

-- ----------------------------
-- Records of eaexception
-- ----------------------------

-- ----------------------------
-- Table structure for eahelp
-- ----------------------------
DROP TABLE IF EXISTS `eahelp`;
CREATE TABLE `eahelp` (
  `HELPID` varchar(8) NOT NULL COMMENT '功能模块帮助编号',
  `MENUID` varchar(8) NOT NULL COMMENT '菜单编号',
  `CONTENT` varchar(4000) DEFAULT NULL COMMENT '帮助内容',
  PRIMARY KEY (`HELPID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='帮助信息表';

-- ----------------------------
-- Records of eahelp
-- ----------------------------

-- ----------------------------
-- Table structure for eahttpsession
-- ----------------------------
DROP TABLE IF EXISTS `eahttpsession`;
CREATE TABLE `eahttpsession` (
  `SESSIONID` varchar(100) NOT NULL COMMENT '会话ID',
  `USERNAME` varchar(20) DEFAULT NULL COMMENT '用户名',
  `ACCOUNT` varchar(30) DEFAULT NULL COMMENT '登录账户',
  `CREATETIME` varchar(20) DEFAULT NULL COMMENT '会话创建时间',
  `LOGINIP` varchar(100) DEFAULT NULL COMMENT '登录IP',
  `USERID` varchar(8) DEFAULT NULL COMMENT '用户编号',
  `EXPLORER` varchar(15) DEFAULT NULL COMMENT '客户端浏览器',
  PRIMARY KEY (`SESSIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='HTTP会话资源管理';

-- ----------------------------
-- Records of eahttpsession
-- ----------------------------
INSERT INTO `eahttpsession` VALUES ('BE1F3B0E728E0B50FA78DD76BCB3BF0E', '开发人员', 'developer', '2015-03-24 16:44:21', '0:0:0:0:0:0:0:1', '10000001', 'CHROME/31.0.');

-- ----------------------------
-- Table structure for eaicon
-- ----------------------------
DROP TABLE IF EXISTS `eaicon`;
CREATE TABLE `eaicon` (
  `ICONID` varchar(8) NOT NULL COMMENT '图标编号',
  `FILENAME` varchar(50) NOT NULL COMMENT '文件名',
  `CSSNAME` varchar(50) NOT NULL COMMENT 'CSS类名',
  UNIQUE KEY `UK1_EAICON` (`FILENAME`),
  UNIQUE KEY `UK2_EAICON` (`CSSNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统图标表';

-- ----------------------------
-- Records of eaicon
-- ----------------------------
INSERT INTO `eaicon` VALUES ('10000018', 'accept.png', 'acceptIcon');
INSERT INTO `eaicon` VALUES ('10000046', 'add.png', 'addIcon');
INSERT INTO `eaicon` VALUES ('10000008', 'application.png', 'applicationIcon');
INSERT INTO `eaicon` VALUES ('10000010', 'application_cascade.png', 'application_cascadeIcon');
INSERT INTO `eaicon` VALUES ('10000009', 'application_double.png', 'application_doubleIcon');
INSERT INTO `eaicon` VALUES ('10000005', 'application_home.png', 'application_homeIcon');
INSERT INTO `eaicon` VALUES ('10000028', 'application_view_list.png', 'application_view_listIcon');
INSERT INTO `eaicon` VALUES ('10000063', 'app_boxes.png', 'app_boxesIcon');
INSERT INTO `eaicon` VALUES ('10000064', 'app_left.png', 'app_leftIcon');
INSERT INTO `eaicon` VALUES ('10000065', 'app_right.png', 'app_rightIcon');
INSERT INTO `eaicon` VALUES ('10000022', 'arrow_refresh.png', 'arrow_refreshIcon');
INSERT INTO `eaicon` VALUES ('10000066', 'arrow_switch.png', 'arrow_switchIcon');
INSERT INTO `eaicon` VALUES ('10000048', 'award_star_silver_3.png', 'award_star_silver_3Icon');
INSERT INTO `eaicon` VALUES ('10000025', 'book_previous.png', 'book_previousIcon');
INSERT INTO `eaicon` VALUES ('10000053', 'bug.png', 'bugIcon');
INSERT INTO `eaicon` VALUES ('10000033', 'building.png', 'buildingIcon');
INSERT INTO `eaicon` VALUES ('10000032', 'chart_organisation.png', 'chart_organisationIcon');
INSERT INTO `eaicon` VALUES ('10000037', 'collapse-all.gif', 'collapse-allIcon');
INSERT INTO `eaicon` VALUES ('10000007', 'comments.png', 'commentsIcon');
INSERT INTO `eaicon` VALUES ('10000012', 'comments_add.png', 'comments_addIcon');
INSERT INTO `eaicon` VALUES ('10000017', 'comment_add.png', 'comment_addIcon');
INSERT INTO `eaicon` VALUES ('10000054', 'config.png', 'configIcon');
INSERT INTO `eaicon` VALUES ('10000004', 'cup.png', 'cupIcon');
INSERT INTO `eaicon` VALUES ('10000051', 'database_connect.png', 'database_connectIcon');
INSERT INTO `eaicon` VALUES ('10000056', 'database_refresh.png', 'database_refreshIcon');
INSERT INTO `eaicon` VALUES ('10000019', 'delete.png', 'deleteIcon');
INSERT INTO `eaicon` VALUES ('10000049', 'disconnect.png', 'disconnectIcon');
INSERT INTO `eaicon` VALUES ('10000058', 'docs.gif', 'docsIcon');
INSERT INTO `eaicon` VALUES ('10000062', 'download.png', 'downloadIcon');
INSERT INTO `eaicon` VALUES ('10000047', 'edit1.png', 'edit1Icon');
INSERT INTO `eaicon` VALUES ('10000052', 'exclamation.png', 'exclamationIcon');
INSERT INTO `eaicon` VALUES ('10000036', 'expand-all.gif', 'expand-allIcon');
INSERT INTO `eaicon` VALUES ('10000001', 'folder_camera.png', 'folder_cameraIcon');
INSERT INTO `eaicon` VALUES ('10000003', 'folder_feed.png', 'folder_feedIcon');
INSERT INTO `eaicon` VALUES ('10000002', 'folder_user.png', 'folder_userIcon');
INSERT INTO `eaicon` VALUES ('10000000', 'folder_wrench.png', 'folder_wrenchIcon');
INSERT INTO `eaicon` VALUES ('10000006', 'group.png', 'groupIcon');
INSERT INTO `eaicon` VALUES ('10000039', 'group_link.png', 'group_linkIcon');
INSERT INTO `eaicon` VALUES ('10000027', 'image.png', 'imageIcon');
INSERT INTO `eaicon` VALUES ('10000029', 'key.png', 'keyIcon');
INSERT INTO `eaicon` VALUES ('10000031', 'layout_content.png', 'layout_contentIcon');
INSERT INTO `eaicon` VALUES ('10000023', 'lock.png', 'lockIcon');
INSERT INTO `eaicon` VALUES ('10000041', 'medal_gold_1.png', 'medal_gold_1Icon');
INSERT INTO `eaicon` VALUES ('10000040', 'medal_silver_3.png', 'medal_silver_3Icon');
INSERT INTO `eaicon` VALUES ('10000060', 'message_edit.png', 'message_editIcon');
INSERT INTO `eaicon` VALUES ('10000013', 'page_add.png', 'page_addIcon');
INSERT INTO `eaicon` VALUES ('10000015', 'page_del.png', 'page_delIcon');
INSERT INTO `eaicon` VALUES ('10000014', 'page_edit_1.png', 'page_edit_1Icon');
INSERT INTO `eaicon` VALUES ('10000044', 'page_excel.png', 'page_excelIcon');
INSERT INTO `eaicon` VALUES ('10000030', 'page_find.png', 'page_findIcon');
INSERT INTO `eaicon` VALUES ('10000016', 'page_refresh.png', 'page_refreshIcon');
INSERT INTO `eaicon` VALUES ('10000045', 'plugin.png', 'pluginIcon');
INSERT INTO `eaicon` VALUES ('10000043', 'preview.png', 'previewIcon');
INSERT INTO `eaicon` VALUES ('10000042', 'printer.png', 'printerIcon');
INSERT INTO `eaicon` VALUES ('10000055', 'server_connect.png', 'server_connectIcon');
INSERT INTO `eaicon` VALUES ('10000020', 'status_away.png', 'status_awayIcon');
INSERT INTO `eaicon` VALUES ('10000021', 'status_busy.png', 'status_busyIcon');
INSERT INTO `eaicon` VALUES ('10000035', 'status_online.png', 'status_onlineIcon');
INSERT INTO `eaicon` VALUES ('10000050', 'table.png', 'tableIcon');
INSERT INTO `eaicon` VALUES ('10000011', 'tbar_synchronize.png', 'tbar_synchronizeIcon');
INSERT INTO `eaicon` VALUES ('10000059', 'theme2.png', 'theme2Icon');
INSERT INTO `eaicon` VALUES ('10000061', 'upload.png', 'uploadIcon');
INSERT INTO `eaicon` VALUES ('10000038', 'user.png', 'userIcon');
INSERT INTO `eaicon` VALUES ('10000057', 'user_comment.png', 'user_commentIcon');
INSERT INTO `eaicon` VALUES ('10000034', 'user_female.png', 'user_femaleIcon');
INSERT INTO `eaicon` VALUES ('10000026', 'window_caise_list.png', 'window_caise_listIcon');
INSERT INTO `eaicon` VALUES ('10000024', 'wrench.png', 'wrenchIcon');

-- ----------------------------
-- Table structure for eajdbcmonitor
-- ----------------------------
DROP TABLE IF EXISTS `eajdbcmonitor`;
CREATE TABLE `eajdbcmonitor` (
  `MONITORID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '监控ID',
  `SQLTEXT` longtext COMMENT 'SQL语句',
  `STARTTIME` bigint(14) DEFAULT NULL COMMENT '执行开始时间',
  `COSTTIME` int(10) DEFAULT NULL COMMENT '执行总耗时',
  `EFFECTROWS` int(10) DEFAULT NULL COMMENT '影响行数',
  `TYPE` varchar(1) DEFAULT NULL COMMENT '数据操作类型(1:INSERT;2:UPDATE;3:DELETE;4:SELECT;5:CALLPRC)',
  PRIMARY KEY (`MONITORID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='JDBC监控信息表';

-- ----------------------------
-- Records of eajdbcmonitor
-- ----------------------------

-- ----------------------------
-- Table structure for eamenu
-- ----------------------------
DROP TABLE IF EXISTS `eamenu`;
CREATE TABLE `eamenu` (
  `MENUID` varchar(60) NOT NULL COMMENT '菜单编号',
  `MENUNAME` varchar(50) NOT NULL COMMENT '菜单名称',
  `PARENTID` varchar(60) NOT NULL COMMENT '上级菜单编号',
  `ICONCLS` varchar(50) DEFAULT NULL COMMENT '节点图标CSS类名',
  `EXPANDED` varchar(2) DEFAULT '0' COMMENT '展开状态(1:展开;0:收缩)',
  `REQUEST` varchar(100) DEFAULT NULL COMMENT '请求地址',
  `LEAF` varchar(2) NOT NULL DEFAULT '0' COMMENT '叶子节点(0:树枝节点;1:叶子节点)',
  `SORTNO` int(4) DEFAULT NULL COMMENT '排序号',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  `ICON` varchar(50) DEFAULT NULL COMMENT '节点图标',
  `MENUTYPE` varchar(2) DEFAULT '0' COMMENT '菜单类型(1:系统菜单;0:业务菜单)',
  `SHORTCUT` varchar(50) DEFAULT NULL COMMENT '桌面图标文件',
  `WIDTH` int(4) DEFAULT NULL COMMENT '桌面窗口宽度',
  `HEIGHT` int(4) DEFAULT NULL COMMENT '桌面窗口高度',
  `SCROLLBAR` varchar(1) DEFAULT '0' COMMENT '桌面窗口滚动条(1：有；0：无)',
  PRIMARY KEY (`MENUID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单资源信息表';

-- ----------------------------
-- Records of eamenu
-- ----------------------------
INSERT INTO `eamenu` VALUES ('01', '选课管理系统', '0', null, '0', null, '0', '1', null, null, '1', null, null, null, null);
INSERT INTO `eamenu` VALUES ('0101', '系统管理', '01', 'folder_wrenchIcon', '0', null, '0', '1', null, null, '1', null, null, null, null);
INSERT INTO `eamenu` VALUES ('010102', '权限管理', '0101', null, '1', null, '0', '1', null, null, '1', null, null, null, null);
INSERT INTO `eamenu` VALUES ('01010201', '组织机构管理', '010102', 'chart_organisationIcon', '0', '/organization/departmentInit.do', '1', '1', null, 'chart_organisation.png', '1', 'onebit_18.png', null, null, '');
INSERT INTO `eamenu` VALUES ('01010202', '人员管理与授权', '010102', 'group_linkIcon', '0', '/user/userInit.do', '1', '3', null, 'group_link.png', '1', 'groupofusers.png', null, null, null);
INSERT INTO `eamenu` VALUES ('01010204', '角色管理与授权', '010102', 'award_star_silver_3Icon', '0', '/role/roleInit.do', '1', '2', null, 'award_star_silver_3.png', '1', 'favbadd.png', null, null, null);
INSERT INTO `eamenu` VALUES ('01010205', '菜单资源管理', '010102', 'arrow_switchIcon', '0', '/resource/menuResourceInit.do', '1', '4', null, 'arrow_switch.png', '1', 'documentsorcopy.png', null, null, null);
INSERT INTO `eamenu` VALUES ('01010206', 'UI元素托管', '010102', 'app_boxesIcon', '0', '/part/init.do', '1', '5', '', 'app_boxes.png', '1', 'file.png', null, null, null);
INSERT INTO `eamenu` VALUES ('01010207', 'UI元素角色授权', '010102', 'app_leftIcon', '0', '/rolePart/init.do', '1', '6', '', 'app_left.png', '1', 'filelocked.png', null, null, null);
INSERT INTO `eamenu` VALUES ('01010208', 'UI元素人员授权', '010102', 'app_rightIcon', '0', '/userPart/init.do', '1', '7', '', 'app_right.png', '1', 'addfile.png', null, null, null);
INSERT INTO `eamenu` VALUES ('010103', '基础数据维护', '0101', null, '1', null, '0', '2', null, null, '1', null, null, null, null);
INSERT INTO `eamenu` VALUES ('01010301', '字典维护', '010103', 'application_view_listIcon', '0', '/resource/codeTableInit.do', '1', '1', null, 'application_view_list.png', '1', 'shortcut_11.png', null, null, null);
INSERT INTO `eamenu` VALUES ('01010303', '全局参数表维护', '010103', 'configIcon', '0', '/param/init.do', '1', '2', null, 'config.png', '1', 'textfile.png', null, null, null);
INSERT INTO `eamenu` VALUES ('010104', '运行监控', '0101', null, '1', null, '0', '3', null, null, '1', null, null, null, null);
INSERT INTO `eamenu` VALUES ('01010401', 'Session会话监控', '010104', 'user_commentIcon', '0', '/sessionMonitor/init.do', '1', '2', null, 'user_comment.png', '1', 'onebit_22.png', null, null, null);
INSERT INTO `eamenu` VALUES ('01010403', 'Requst请求跟踪', '010104', 'bugIcon', '0', '/eventTrack/init.do', '1', '1', null, 'bug.png', '1', 'onebit_08.png', null, null, null);
INSERT INTO `eamenu` VALUES ('01010405', 'JDBC执行监控', '010104', 'database_refreshIcon', '0', '/jdbcMonitor/jdbcInit.do', '1', '3', null, 'database_refresh.png', '1', 'shortcut_8.png', null, null, null);
INSERT INTO `eamenu` VALUES ('01010406', '系统异常监控', '010104', 'disconnectIcon', '0', '/beanMonitor/init.do', '1', '4', null, 'disconnect.png', '1', 'close.png', null, null, null);

-- ----------------------------
-- Table structure for eamenupart
-- ----------------------------
DROP TABLE IF EXISTS `eamenupart`;
CREATE TABLE `eamenupart` (
  `PARTID` varchar(8) NOT NULL COMMENT 'UI组件编号',
  `MENUID` varchar(60) NOT NULL COMMENT '菜单ID',
  `CMPID` varchar(20) NOT NULL COMMENT 'UI组件ID',
  `CMPTYPE` varchar(2) NOT NULL COMMENT 'UI组件类型(1:按钮组件;2:表单输入组件;3:容器面板组件)',
  `REMARK` varchar(100) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`PARTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='UI托管组件';

-- ----------------------------
-- Records of eamenupart
-- ----------------------------

-- ----------------------------
-- Table structure for eaparam
-- ----------------------------
DROP TABLE IF EXISTS `eaparam`;
CREATE TABLE `eaparam` (
  `PARAMID` varchar(8) NOT NULL COMMENT '参数编号',
  `PARAMKEY` varchar(50) NOT NULL COMMENT '参数键名',
  `PARAMVALUE` varchar(1000) NOT NULL COMMENT '参数键值',
  `REMARK` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`PARAMID`),
  UNIQUE KEY `UK_EAPARAM` (`PARAMKEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='全局参数表';

-- ----------------------------
-- Records of eaparam
-- ----------------------------
INSERT INTO `eaparam` VALUES ('10000008', 'SYS_DEFAULT_THEME', 'default', '系统默认主题皮肤');
INSERT INTO `eaparam` VALUES ('10000009', 'DEFAULT_ADMIN_ACCOUNT', 'super', '默认超级管理员帐户');
INSERT INTO `eaparam` VALUES ('10000010', 'DEFAULT_DEVELOP_ACCOUNT', 'developer', '系统默认开发专用帐户');
INSERT INTO `eaparam` VALUES ('10000017', 'SYS_TITLE', '西中街小学选课管理系统', '系统标题');
INSERT INTO `eaparam` VALUES ('10000018', 'LOGIN_WINDOW_TITLE', '西中街小学选课管理系统', '登录窗口标题');
INSERT INTO `eaparam` VALUES ('10000019', 'LOGIN_WINDOW_BANNER', '/resource/image/login_banner.png', '登录窗口的Banner图片。尺寸规格:450 X 70');
INSERT INTO `eaparam` VALUES ('10000020', 'WEST_NAVIGATE_TITLE', '系统导航', '左边菜单导航栏标题');
INSERT INTO `eaparam` VALUES ('10000021', 'BOTTOM_COPYRIGHT', 'Copyright&copy 2015 中国.北京', '右下角的版权信息');
INSERT INTO `eaparam` VALUES ('10000022', 'MENU_FIRST', '选课管理系统', '中心面板导航菜单的第一个节点名');
INSERT INTO `eaparam` VALUES ('10000023', 'WELCOME_PAGE_TITLE', '我的工作台', '缺省欢迎页面的标题');
INSERT INTO `eaparam` VALUES ('10000024', 'INDEX_BANNER', '/resource/image/title_banner.png', '首页Banner图片,必须为透明的PNG图片,建议尺寸:600 X 58');
INSERT INTO `eaparam` VALUES ('10000025', 'PAGE_LOAD_MSG', '正在驱动页面,请稍等...', '页面加载等待提示信息');
INSERT INTO `eaparam` VALUES ('10000027', 'MULTI_SESSION', '1', '是否允许同一个帐户建立多个会话连接。1:允许;0:不允许');
INSERT INTO `eaparam` VALUES ('10000028', 'WEST_CARDMENU_ACTIVEONTOP', '1', '左侧卡片树菜单当前活动卡片是否置顶1:置顶;0:不置顶');
INSERT INTO `eaparam` VALUES ('10000029', 'TITLE_ICON', 'g4.ico', '显示在浏览器标题前面的小图标(注:必须为.ico格式)');
INSERT INTO `eaparam` VALUES ('10000030', 'EXCEPTION_CLIENT_MSG', '很遗憾的通知您：服务器发生了错误，您提交的请求处理失败。', '客户端异常响应概要信息');
INSERT INTO `eaparam` VALUES ('10000031', 'EXCEPTION_CLIENT_WIN_SIZE', '400,150', '客户端异常信息窗口宽度高度设置');
INSERT INTO `eaparam` VALUES ('10000033', 'APP_LAYOUT', '1', '系统级缺省主界面布局模式。1:传统经典布局;2:个性桌面布局。');
INSERT INTO `eaparam` VALUES ('10000034', 'DESKTOP_BACKGROUND', 'desktop2.jpg', '系统缺省桌面背景图片');

-- ----------------------------
-- Table structure for earole
-- ----------------------------
DROP TABLE IF EXISTS `earole`;
CREATE TABLE `earole` (
  `ROLEID` varchar(8) NOT NULL COMMENT '角色编号',
  `ROLENAME` varchar(50) NOT NULL COMMENT '角色名称',
  `DEPTID` varchar(100) NOT NULL COMMENT '所属部门编号',
  `ROLETYPE` varchar(2) NOT NULL DEFAULT '1' COMMENT '角色类型(1:业务角色;2:管理角色 ;3:系统内置角色)',
  `REMARK` varchar(2) DEFAULT NULL COMMENT '备注',
  `LOCKED` varchar(2) DEFAULT '0' COMMENT '锁定标志(1:锁定;0:激活)',
  PRIMARY KEY (`ROLEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of earole
-- ----------------------------

-- ----------------------------
-- Table structure for earoleauthorize
-- ----------------------------
DROP TABLE IF EXISTS `earoleauthorize`;
CREATE TABLE `earoleauthorize` (
  `AUTHORIZEID` varchar(8) NOT NULL COMMENT '授权ID',
  `ROLEID` varchar(8) NOT NULL COMMENT '角色编号',
  `MENUID` varchar(60) NOT NULL COMMENT '菜单编号',
  `AUTHORIZELEVEL` varchar(2) NOT NULL DEFAULT '1' COMMENT '权限级别(1:访问权限;2:管理权限)',
  PRIMARY KEY (`AUTHORIZEID`),
  UNIQUE KEY `UK_EARWAUTHORIZE` (`MENUID`,`AUTHORIZELEVEL`,`AUTHORIZEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色授权表';

-- ----------------------------
-- Records of earoleauthorize
-- ----------------------------

-- ----------------------------
-- Table structure for earolemenupart
-- ----------------------------
DROP TABLE IF EXISTS `earolemenupart`;
CREATE TABLE `earolemenupart` (
  `AUTHORIZEID` varchar(8) NOT NULL COMMENT '授权ID',
  `ROLEID` varchar(8) NOT NULL COMMENT '角色ID',
  `MENUID` varchar(60) NOT NULL COMMENT '菜单ID',
  `PARTID` varchar(8) NOT NULL COMMENT 'UI元素ID',
  `PARTAUTHTYPE` varchar(1) NOT NULL COMMENT 'UI元素授权类型',
  PRIMARY KEY (`AUTHORIZEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='UI元素角色授权表';

-- ----------------------------
-- Records of earolemenupart
-- ----------------------------

-- ----------------------------
-- Table structure for easequence
-- ----------------------------
DROP TABLE IF EXISTS `easequence`;
CREATE TABLE `easequence` (
  `SEQUENCEID` varchar(4) NOT NULL COMMENT '编号',
  `FIELDNAME` varchar(50) NOT NULL COMMENT '字段名',
  `MAXID` varchar(50) NOT NULL COMMENT '当前最大值',
  `REMARK` varchar(100) DEFAULT NULL COMMENT '备注',
  `PATTERN` varchar(50) NOT NULL COMMENT '样式',
  `IDTYPE` varchar(2) NOT NULL DEFAULT '2' COMMENT 'ID类型(1:系统内置;2:用户自定义)',
  PRIMARY KEY (`SEQUENCEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='序列号生成器';

-- ----------------------------
-- Records of easequence
-- ----------------------------
INSERT INTO `easequence` VALUES ('1000', 'CODEID', '10000064', '代码表ID', '00000000', '1');
INSERT INTO `easequence` VALUES ('1001', 'ROLEID', '10000099', '角色ID', '00000000', '1');
INSERT INTO `easequence` VALUES ('1002', 'USERID', '10004940', '用户ID', '00000000', '1');
INSERT INTO `easequence` VALUES ('1003', 'PARAMID', '10000036', '参数ID', '00000000', '1');
INSERT INTO `easequence` VALUES ('1004', 'EXCEPTIONID', '10000102', '异常ID', '00000000', '1');
INSERT INTO `easequence` VALUES ('1005', 'AUTHORIZEID_ROLE', '10001710', '角色授权ID', '00000000', '1');
INSERT INTO `easequence` VALUES ('1006', 'AUTHORIZEID_USER', '10004908', '人员授权ID', '00000000', '1');
INSERT INTO `easequence` VALUES ('1007', 'AUTHORIZEID_USERMENUMAP', '10000441', '人员菜单映射ID', '00000000', '1');
INSERT INTO `easequence` VALUES ('1008', 'XMID', '1000341267', '演示表(EZ_CHARGECATALOG)项目ID', '0000000000', '1');
INSERT INTO `easequence` VALUES ('1009', 'EVENTID', '100000000064162', '事件ID', '000000000000000', '1');
INSERT INTO `easequence` VALUES ('1011', 'FILEID', '10000135', '文件ID', '00000000', '1');
INSERT INTO `easequence` VALUES ('1012', 'PARTID', '10000116', 'UI元素ID', '00000000', '1');
INSERT INTO `easequence` VALUES ('1013', 'AUTHORIZEID_EAUSERAUTHORIZE', '10000000', 'UI元素人员授权ID', '00000000', '1');
INSERT INTO `easequence` VALUES ('1014', 'AUTHORIZEID_EAROLEAUTHORIZE', '10000013', 'UI元素角色授权ID', '00000000', '1');

-- ----------------------------
-- Table structure for eauser
-- ----------------------------
DROP TABLE IF EXISTS `eauser`;
CREATE TABLE `eauser` (
  `USERID` varchar(8) NOT NULL COMMENT '用户编号',
  `USERNAME` varchar(20) NOT NULL COMMENT '用户名',
  `ACCOUNT` varchar(30) NOT NULL COMMENT '登陆帐户',
  `PASSWORD` varchar(50) NOT NULL COMMENT '密码',
  `SEX` varchar(2) NOT NULL DEFAULT '0' COMMENT '性别(0:未知;1:男;2:女)',
  `DEPTID` varchar(100) NOT NULL COMMENT '部门编号',
  `LOCKED` varchar(2) NOT NULL DEFAULT '0' COMMENT '锁定标志(1:锁定;0:激活)',
  `REMARK` varchar(50) DEFAULT NULL COMMENT '备注',
  `USERTYPE` varchar(2) DEFAULT '1' COMMENT '人员类型(1:经办员;2:管理员;3:系统内置人员;)',
  `ENABLED` varchar(2) NOT NULL DEFAULT '1' COMMENT '启用状态',
  PRIMARY KEY (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of eauser
-- ----------------------------
INSERT INTO `eauser` VALUES ('10000000', '超级用户', 'super', 'P8Pfz23x8JI=', '1', '001', '0', '超级用户,享有系统最高管理权限', '3', '1');
INSERT INTO `eauser` VALUES ('10000001', '开发人员', 'developer', 'RaFutWeh0ww=', '0', '001', '0', '1', '3', '1');

-- ----------------------------
-- Table structure for eauserauthorize
-- ----------------------------
DROP TABLE IF EXISTS `eauserauthorize`;
CREATE TABLE `eauserauthorize` (
  `AUTHORIZEID` varchar(8) NOT NULL COMMENT '授权ID',
  `USERID` varchar(8) NOT NULL COMMENT '用户编号',
  `ROLEID` varchar(8) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`AUTHORIZEID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户授权表';

-- ----------------------------
-- Records of eauserauthorize
-- ----------------------------

-- ----------------------------
-- Table structure for eausermenumap
-- ----------------------------
DROP TABLE IF EXISTS `eausermenumap`;
CREATE TABLE `eausermenumap` (
  `AUTHORIZEID` varchar(8) NOT NULL COMMENT '授权编号',
  `USERID` varchar(8) NOT NULL COMMENT '人员编号',
  `MENUID` varchar(60) NOT NULL COMMENT '菜单编号',
  `AUTHORIZELEVEL` varchar(2) NOT NULL COMMENT '权限级别(1:访问权限;2:管理权限)',
  PRIMARY KEY (`AUTHORIZEID`),
  UNIQUE KEY `UK_EAUSERMENUMAP` (`USERID`,`MENUID`,`AUTHORIZELEVEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户菜单映射表';

-- ----------------------------
-- Records of eausermenumap
-- ----------------------------

-- ----------------------------
-- Table structure for eausermenupart
-- ----------------------------
DROP TABLE IF EXISTS `eausermenupart`;
CREATE TABLE `eausermenupart` (
  `AUTHORIZEID` varchar(8) NOT NULL COMMENT '授权ID',
  `USERID` varchar(8) NOT NULL COMMENT '人员ID',
  `MENUID` varchar(60) NOT NULL COMMENT '菜单ID',
  `PARTID` varchar(8) NOT NULL COMMENT 'UI元素ID',
  `PARTAUTHTYPE` varchar(1) NOT NULL COMMENT 'UI元素授权类型',
  PRIMARY KEY (`AUTHORIZEID`),
  UNIQUE KEY `INDEX_EAUSERMENUPART` (`USERID`,`MENUID`,`PARTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='UI元素人员授权表';

-- ----------------------------
-- Records of eausermenupart
-- ----------------------------

-- ----------------------------
-- Table structure for eausersubinfo
-- ----------------------------
DROP TABLE IF EXISTS `eausersubinfo`;
CREATE TABLE `eausersubinfo` (
  `USERID` varchar(8) NOT NULL COMMENT '人员编号',
  `THEME` varchar(50) DEFAULT NULL COMMENT '自定义主题皮肤',
  `LAYOUT` varchar(1) DEFAULT NULL COMMENT '系统级缺省主界面布局模式。1:传统经典布局;2:个性桌面布局。',
  `BACKGROUND` varchar(50) DEFAULT NULL COMMENT '系统桌面背景图片',
  PRIMARY KEY (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='人员信息附加属性表';

-- ----------------------------
-- Records of eausersubinfo
-- ----------------------------
INSERT INTO `eausersubinfo` VALUES ('10000000', 'purple2', '1', 'desktop3.jpg');
INSERT INTO `eausersubinfo` VALUES ('10000001', 'default', '1', 'desktop3.jpg');

-- ----------------------------
-- Table structure for test_1
-- ----------------------------
DROP TABLE IF EXISTS `test_1`;
CREATE TABLE `test_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_1
-- ----------------------------

-- ----------------------------
-- Table structure for test_2
-- ----------------------------
DROP TABLE IF EXISTS `test_2`;
CREATE TABLE `test_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test_2
-- ----------------------------

-- ----------------------------
-- Procedure structure for g4_prc_demo
-- ----------------------------
DROP PROCEDURE IF EXISTS `g4_prc_demo`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `g4_prc_demo`( 
        IN prm_myname VARCHAR(100),
        IN prm_number1 INT,
        IN prm_number2 INT,
        OUT prm_sum INT,
        OUT prm_result  VARCHAR(100),
        OUT prm_AppCode VARCHAR(100),
        OUT prm_ErrorMsg VARCHAR(100)
        )
BEGIN
        SET prm_sum = prm_number1 + prm_number2;
        SET prm_result = CONCAT('hello, ',prm_myname,'!');
        SET prm_AppCode = 1;
        SET prm_ErrorMsg = '';
    END
;;
DELIMITER ;
