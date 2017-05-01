/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : g5

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-05-01 20:59:52
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
INSERT INTO `eadept` VALUES ('001', '超市', '0', '001', '1', '1', '1', '');

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
INSERT INTO `eaevent` VALUES ('100000000064164', '10000001', 'developer', '开发人员', '登录系统', '20170315232536', '/g5/login/login.do', null, null);
INSERT INTO `eaevent` VALUES ('100000000064166', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170315232538', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064168', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170315232538', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064170', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[JDBC执行监控]', '20170315232542', '/g5/jdbcMonitor/jdbcInit.do', 'jdbcInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064172', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[queryMonitorData]', '20170315232543', '/g5/jdbcMonitor/queryMonitorData.do', 'queryMonitorData', '0');
INSERT INTO `eaevent` VALUES ('100000000064174', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[Requst请求跟踪]', '20170315232550', '/g5/eventTrack/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064176', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[queryEvents]', '20170315232550', '/g5/eventTrack/queryEvents.do', 'queryEvents', '0');
INSERT INTO `eaevent` VALUES ('100000000064178', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[系统异常监控]', '20170315232612', '/g5/beanMonitor/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064180', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[queryMonitorDatas]', '20170315232612', '/g5/beanMonitor/queryMonitorDatas.do', 'queryMonitorDatas', '0');
INSERT INTO `eaevent` VALUES ('100000000064182', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[queryMonitorData]', '20170315232617', '/g5/jdbcMonitor/queryMonitorData.do', 'queryMonitorData', '0');
INSERT INTO `eaevent` VALUES ('100000000064184', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[queryMonitorData]', '20170315232620', '/g5/jdbcMonitor/queryMonitorData.do', 'queryMonitorData', '0');
INSERT INTO `eaevent` VALUES ('100000000064186', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[deleteMonitorDatas]', '20170315232744', '/g5/jdbcMonitor/deleteMonitorDatas.do', 'deleteMonitorDatas', '0');
INSERT INTO `eaevent` VALUES ('100000000064188', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[queryMonitorData]', '20170315232745', '/g5/jdbcMonitor/queryMonitorData.do', 'queryMonitorData', '0');
INSERT INTO `eaevent` VALUES ('100000000064190', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[deleteMonitorDatas]', '20170315232748', '/g5/jdbcMonitor/deleteMonitorDatas.do', 'deleteMonitorDatas', '0');
INSERT INTO `eaevent` VALUES ('100000000064192', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[queryMonitorData]', '20170315232748', '/g5/jdbcMonitor/queryMonitorData.do', 'queryMonitorData', '0');
INSERT INTO `eaevent` VALUES ('100000000064194', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[deleteMonitorDatas]', '20170315232755', '/g5/jdbcMonitor/deleteMonitorDatas.do', 'deleteMonitorDatas', '0');
INSERT INTO `eaevent` VALUES ('100000000064196', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[queryMonitorData]', '20170315232755', '/g5/jdbcMonitor/queryMonitorData.do', 'queryMonitorData', '0');
INSERT INTO `eaevent` VALUES ('100000000064198', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[供货商管理]', '20170315232814', '/g5/supplier/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064200', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[queryEvents]', '20170315232824', '/g5/eventTrack/queryEvents.do', 'queryEvents', '0');
INSERT INTO `eaevent` VALUES ('100000000064202', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[queryMonitorData]', '20170315232830', '/g5/jdbcMonitor/queryMonitorData.do', 'queryMonitorData', '0');
INSERT INTO `eaevent` VALUES ('100000000064204', '10000001', 'developer', '开发人员', '登录系统', '20170315233127', '/g5/login/login.do', null, null);
INSERT INTO `eaevent` VALUES ('100000000064206', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170315233128', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064208', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170315233129', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064210', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170315233130', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064212', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315233131', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064214', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[供货商管理]', '20170315233134', '/g5/supplier/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064216', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315233135', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064218', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[Requst请求跟踪]', '20170315233140', '/g5/eventTrack/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064220', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[queryEvents]', '20170315233140', '/g5/eventTrack/queryEvents.do', 'queryEvents', '0');
INSERT INTO `eaevent` VALUES ('100000000064222', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[JDBC执行监控]', '20170315233145', '/g5/jdbcMonitor/jdbcInit.do', 'jdbcInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064224', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[queryMonitorData]', '20170315233145', '/g5/jdbcMonitor/queryMonitorData.do', 'queryMonitorData', '0');
INSERT INTO `eaevent` VALUES ('100000000064226', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[Requst请求跟踪]', '20170315233215', '/g5/eventTrack/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064228', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[queryEvents]', '20170315233215', '/g5/eventTrack/queryEvents.do', 'queryEvents', '0');
INSERT INTO `eaevent` VALUES ('100000000064230', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[Session会话监控]', '20170315233217', '/g5/sessionMonitor/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064232', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getSessionList]', '20170315233217', '/g5/sessionMonitor/getSessionList.do', 'getSessionList', '0');
INSERT INTO `eaevent` VALUES ('100000000064234', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170315233318', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064236', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170315233319', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064238', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[供货商管理]', '20170315233321', '/g5/supplier/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064240', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315233321', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064242', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170315233332', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064244', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315233332', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064246', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getList]', '20170315233334', '/g5/api/type/getList.do', 'getList', '0');
INSERT INTO `eaevent` VALUES ('100000000064248', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getList]', '20170315233335', '/g5/api/supplier/getList.do', 'getList', '0');
INSERT INTO `eaevent` VALUES ('100000000064250', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品类型]', '20170315233659', '/g5/type/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064252', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315233659', '/g5/api/type/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064254', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品属性]', '20170315233706', '/g5/attr/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064256', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315233707', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064258', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170315234031', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064260', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170315234031', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064262', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170315234033', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064264', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315234033', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064266', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170315234058', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064268', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170315234058', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064270', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170315234059', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064272', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315234059', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064274', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170315234947', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064276', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170315234947', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064278', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170315234949', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064280', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315234950', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064282', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170315235016', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064284', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170315235017', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064286', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170315235019', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064288', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315235019', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064290', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170315235105', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064292', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170315235106', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064294', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170315235108', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064296', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315235108', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064298', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170315235159', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064300', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170315235200', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064302', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170315235202', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064304', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315235203', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064306', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170315235231', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064308', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170315235231', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064310', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170315235232', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064312', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315235233', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064314', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315235235', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064316', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170315235256', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064318', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170315235257', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064320', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品类型]', '20170315235258', '/g5/type/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064322', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315235259', '/g5/api/type/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064324', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170315235259', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064326', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315235300', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064328', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315235302', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064330', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315235312', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064332', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170315235347', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064334', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170315235347', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064336', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170315235349', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064338', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315235350', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064340', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315235351', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064342', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170315235507', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064344', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170315235507', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064346', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170315235509', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064348', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315235510', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064350', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315235511', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064352', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315235516', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064354', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170315235739', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064356', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170315235740', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064358', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170315235741', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064360', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315235741', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064362', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315235744', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064364', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315235751', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064366', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170315235754', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064368', '10000001', 'developer', '开发人员', '登录系统', '20170316003413', '/g5/login/login.do', null, null);
INSERT INTO `eaevent` VALUES ('100000000064370', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316003413', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064372', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316003414', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064374', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316003415', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064376', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316003416', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064378', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316003417', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064380', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316003420', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064382', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316003425', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064384', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316003649', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064386', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316003649', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064388', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316003659', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064390', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316003700', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064392', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316003701', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064394', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316003710', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064396', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316003738', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064398', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316003739', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064400', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316003740', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064402', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316003740', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064404', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316003742', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064406', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316003818', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064408', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316003819', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064410', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品类型]', '20170316003820', '/g5/type/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064412', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316003820', '/g5/api/type/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064414', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316003821', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064416', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316003821', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064418', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316003823', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064420', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316003845', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064422', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316003845', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064424', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316003847', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064426', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316003847', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064428', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316003848', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064430', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316003946', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064432', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316003946', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064434', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316003947', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064436', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316003948', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064438', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316003950', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064440', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316004228', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064442', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316004229', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064444', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316004230', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064446', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316004231', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064448', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316004232', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064450', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316004402', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064452', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316004402', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064454', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316004403', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064456', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316004404', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064458', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316004405', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064460', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316004504', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064462', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316004504', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064464', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316004507', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064466', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316004508', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064468', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316004509', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064470', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316004509', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064472', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316004511', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064474', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316004945', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064476', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316004945', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064478', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316004946', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064480', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316004947', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064482', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316004948', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064484', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316005002', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064486', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316005003', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064488', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316005005', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064490', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316005005', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064492', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316005007', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064494', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316005022', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064496', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316005038', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064498', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316005038', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064500', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316005039', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064502', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316005040', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064504', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316005042', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064506', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316005047', '/g5/api/supplier/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064508', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316005247', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064510', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316005248', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064512', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316005249', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064514', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316005249', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064516', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316005250', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064518', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316005349', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064520', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316005409', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064522', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316005410', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064524', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316005412', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064526', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316005412', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064528', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316005414', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064530', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316005420', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064532', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316005426', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064534', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316005428', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064536', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316010233', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064538', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316010436', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064540', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316010503', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064542', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316010513', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064544', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316010520', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064546', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316010525', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064548', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316010608', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064550', '10000001', 'developer', '开发人员', '登录系统', '20170316224911', '/g5/login/login.do', null, null);
INSERT INTO `eaevent` VALUES ('100000000064552', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316224913', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064554', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316224914', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064556', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316224916', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064558', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316224917', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064560', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316224920', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064562', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getList]', '20170316225049', '/g5/api/supplier/getList.do', 'getList', '0');
INSERT INTO `eaevent` VALUES ('100000000064564', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getList]', '20170316225049', '/g5/api/type/getList.do', 'getList', '0');
INSERT INTO `eaevent` VALUES ('100000000064566', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316225051', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064568', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316225052', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064570', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316225411', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064572', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316225411', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064574', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316225416', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064576', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316225416', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064578', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316225420', '/g5/api/goodsAttr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064580', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316225432', '/g5/api/goodsAttr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064582', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316225519', '/g5/api/goodsAttr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064584', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316225640', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064586', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316225641', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064588', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316225642', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064590', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316225642', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064592', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316225647', '/g5/api/goodsAttr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064594', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316225705', '/g5/api/goodsAttr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064596', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316225717', '/g5/api/goodsAttr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064598', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316225729', '/g5/api/goodsAttr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064600', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316225850', '/g5/api/goodsAttr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064602', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316225853', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064604', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316225854', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064606', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316225855', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064608', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316225855', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064610', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316225856', '/g5/api/goodsAttr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064612', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316230202', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064614', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316230202', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064616', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316230203', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064618', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316230204', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064620', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316230222', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064622', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316230223', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064624', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316230224', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064626', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316230224', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064628', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316230251', '/g5/api/goodsAttr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064630', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316230257', '/g5/api/goodsAttr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064632', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316230301', '/g5/api/goodsAttr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064634', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316230506', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064636', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316230507', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064638', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316230509', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064640', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316230509', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064642', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316230531', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064644', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316230532', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064646', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316230533', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064648', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316230534', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064650', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316230536', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064652', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316230540', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064654', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316230541', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064656', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316230542', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064658', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316230543', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064660', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316230544', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064662', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316230617', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064664', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316230617', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064666', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316230618', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064668', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316230618', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064670', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316230618', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064672', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316230633', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064674', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316230634', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064676', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316230637', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064678', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316230638', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064680', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316230639', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064682', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316230639', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064684', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316230642', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064686', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316230647', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064688', '10000001', 'developer', '开发人员', '登录系统', '20170316233206', '/g5/login/login.do', null, null);
INSERT INTO `eaevent` VALUES ('100000000064690', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316233207', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064692', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316233209', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064694', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316233209', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064696', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316233211', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064698', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316233216', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064700', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316233314', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064702', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316233314', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064704', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316233315', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064706', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316233316', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064708', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316233318', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064710', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316233437', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064712', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316233438', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064714', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316233439', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064716', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316233440', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064718', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316233446', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064720', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316233512', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064722', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316233513', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064724', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316233515', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064726', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316233515', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064728', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316233517', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064730', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316233619', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064732', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316233620', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064734', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316233621', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064736', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316233622', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064738', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316233624', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064740', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316233931', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064742', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316233931', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064744', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316233932', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064746', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316233933', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064748', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316233944', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064750', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316234112', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064752', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316234113', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064754', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316234116', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064756', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316234116', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064758', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316234118', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064760', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316234150', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064762', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316234151', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064764', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316234158', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064766', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316234158', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064768', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316234200', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064770', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316234229', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064772', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316234230', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064774', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316234231', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064776', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316234232', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064778', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316234233', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064780', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316234258', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064782', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316234259', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064784', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316234300', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064786', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316234300', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064788', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316234303', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064790', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316234402', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064792', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316234403', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064794', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316234404', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064796', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316234405', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064798', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316234406', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064800', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316234427', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064802', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316234428', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064804', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316234429', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064806', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316234429', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064808', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316234431', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064810', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316234451', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064812', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316234452', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064814', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316234453', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064816', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316234453', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064818', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316234455', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064820', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316234541', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064822', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316234542', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064824', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316234543', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064826', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316234543', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064828', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316234545', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064830', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316234734', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064832', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316234734', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064834', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316234735', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064836', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316234736', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064838', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316234738', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064840', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316234816', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064842', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316234817', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064844', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316234818', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064846', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316234818', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064848', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316234820', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064850', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316234854', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064852', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316234854', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064854', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316234855', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064856', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316234856', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064858', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316234857', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064860', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316235615', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064862', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316235616', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064864', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316235620', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064866', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316235621', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064868', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316235623', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064870', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316235649', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064872', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316235650', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064874', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316235651', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064876', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316235651', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064878', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316235654', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064880', '10000001', 'developer', '开发人员', '登录系统', '20170316235852', '/g5/login/login.do', null, null);
INSERT INTO `eaevent` VALUES ('100000000064882', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170316235853', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064884', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170316235854', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064886', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170316235856', '/g5/goods/init.do', 'init', '1');
INSERT INTO `eaevent` VALUES ('100000000064888', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316235857', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064890', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170316235859', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064892', '10000001', 'developer', '开发人员', '登录系统', '20170317000606', '/g5/login/login.do', null, null);
INSERT INTO `eaevent` VALUES ('100000000064894', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170317000607', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064896', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170317000609', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064898', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170317000614', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064900', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317000615', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064902', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317000617', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064904', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170317000951', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064906', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170317000951', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064908', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170317000953', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064910', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317000954', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064912', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317000957', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064914', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170317001110', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064916', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170317001111', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064918', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170317001118', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064920', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317001120', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064922', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317001124', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064924', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170317001327', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064926', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170317001327', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064928', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170317001328', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064930', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317001329', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064932', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317001331', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064934', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[save]', '20170317001334', '/g5/api/goodsAttr/save', 'save', '0');
INSERT INTO `eaevent` VALUES ('100000000064936', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[save]', '20170317001401', '/g5/api/goodsAttr/save', 'save', '0');
INSERT INTO `eaevent` VALUES ('100000000064938', '10000001', 'developer', '开发人员', '登录系统', '20170317002505', '/g5/login/login.do', null, null);
INSERT INTO `eaevent` VALUES ('100000000064940', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170317002507', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064942', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170317002508', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064944', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170317002509', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064946', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317002510', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064948', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317002513', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064950', '10000001', 'developer', '开发人员', '登录系统', '20170317002636', '/g5/login/login.do', null, null);
INSERT INTO `eaevent` VALUES ('100000000064952', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170317002637', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064954', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170317002638', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064956', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170317002639', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064958', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317002641', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064960', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317002642', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064962', '10000001', 'developer', '开发人员', '登录系统', '20170317002830', '/g5/login/login.do', null, null);
INSERT INTO `eaevent` VALUES ('100000000064964', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170317002832', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064966', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170317002833', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064968', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170317002835', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064970', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317002836', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064972', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317002838', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064974', '10000001', 'developer', '开发人员', '登录系统', '20170317003018', '/g5/login/login.do', null, null);
INSERT INTO `eaevent` VALUES ('100000000064976', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170317003019', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064978', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170317003020', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064980', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170317003021', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000064982', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317003022', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064984', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317003024', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064986', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[save]', '20170317003028', '/g5/api/goodsAttr/save', 'save', '0');
INSERT INTO `eaevent` VALUES ('100000000064988', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317003036', '/g5/api/goodsAttr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064990', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317003041', '/g5/api/attr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000064992', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[save]', '20170317003045', '/g5/api/goodsAttr/save', 'save', '0');
INSERT INTO `eaevent` VALUES ('100000000064994', '10000001', 'developer', '开发人员', '登录系统', '20170317011234', '/g5/login/login.do', null, null);
INSERT INTO `eaevent` VALUES ('100000000064996', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170317011236', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000064998', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170317011237', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000065000', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170317011238', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000065002', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317011239', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000065004', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317011242', '/g5/api/goodsAttr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000065006', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170317011719', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000065008', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170317011720', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000065010', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品类型]', '20170317011721', '/g5/type/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000065012', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170317011721', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000065014', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317011722', '/g5/api/type/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000065016', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317011722', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000065018', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317011724', '/g5/api/goodsAttr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000065020', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317011727', '/g5/api/goodsAttr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000065022', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317011812', '/g5/api/goodsAttr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000065024', '10000001', 'developer', '开发人员', '登录系统', '20170317012148', '/g5/login/login.do', null, null);
INSERT INTO `eaevent` VALUES ('100000000065026', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170317012150', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000065028', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170317012151', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000065030', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170317012152', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000065032', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317012153', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000065034', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317012156', '/g5/api/goodsAttr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000065036', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[del]', '20170317012203', '/g5/attr/del.do', 'del', '0');
INSERT INTO `eaevent` VALUES ('100000000065038', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317012207', '/g5/api/goodsAttr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000065040', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170317012242', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000065042', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170317012242', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000065044', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170317012244', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000065046', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317012244', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000065048', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317012246', '/g5/api/goodsAttr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000065050', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[del]', '20170317012251', '/g5/attr/del.do', 'del', '0');
INSERT INTO `eaevent` VALUES ('100000000065052', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[del]', '20170317012525', '/g5/attr/del.do', 'del', '0');
INSERT INTO `eaevent` VALUES ('100000000065054', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170317012543', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000065056', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170317012544', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000065058', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170317012545', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000065060', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317012545', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000065062', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317012547', '/g5/api/goodsAttr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000065064', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[del]', '20170317012552', '/g5/goodsAttr/del.do', 'del', '0');
INSERT INTO `eaevent` VALUES ('100000000065066', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[indexInit]', '20170317012610', '/g5/index/indexInit.do', 'indexInit', '0');
INSERT INTO `eaevent` VALUES ('100000000065068', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[preferencesInit]', '20170317012611', '/g5/index/preferencesInit.do', 'preferencesInit', '0');
INSERT INTO `eaevent` VALUES ('100000000065070', '10000001', 'developer', '开发人员', '开发人员[developer]打开了菜单[商品列表]', '20170317012614', '/g5/goods/init.do', 'init', '0');
INSERT INTO `eaevent` VALUES ('100000000065072', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317012614', '/g5/api/goods/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000065074', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[getAll]', '20170317012617', '/g5/api/goodsAttr/getAll', 'getAll', '0');
INSERT INTO `eaevent` VALUES ('100000000065076', '10000001', 'developer', '开发人员', '开发人员[developer]调用了Action方法[del]', '20170317012620', '/g5/api/goodsAttr/del', 'del', '0');

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
INSERT INTO `eahttpsession` VALUES ('node010mlj35whfn5nk0o4ddwd0zdt0', '开发人员', 'developer', '2017-04-20 00:07:19', '0:0:0:0:0:0:0:1', '10000001', 'CHROME/55.0.');
INSERT INTO `eahttpsession` VALUES ('node01dnmmxj34mk1k1phfg6g2mqjiw1', '开发人员', 'developer', '2017-04-20 00:54:15', '0:0:0:0:0:0:0:1', '10000001', 'CHROME/55.0.');

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
) ENGINE=InnoDB AUTO_INCREMENT=4009 DEFAULT CHARSET=utf8 COMMENT='JDBC监控信息表';

-- ----------------------------
-- Records of eajdbcmonitor
-- ----------------------------
INSERT INTO `eajdbcmonitor` VALUES ('107', 'DELETE      FROM eajdbcmonitor where 1 = 1', '20170315232755', '3', '9', '3');
INSERT INTO `eajdbcmonitor` VALUES ('108', 'UPDATE easequence SET maxid = \'100000000064193\' WHERE fieldname = \'EVENTID\'', '20170315232755', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('109', 'UPDATE easequence SET maxid = \'100000000064194\' WHERE fieldname = \'EVENTID\'', '20170315232755', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('110', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064194\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[deleteMonitorDatas]\', 20170315232755,\'/g5/jdbcMonitor/deleteMonitorDatas.do\',\'deleteMonitorDatas\',0)', '20170315232755', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('111', 'SELECT monitorid, sqltext as sqltext, starttime, costtime, effectrows, type             FROM eajdbcmonitor WHERE 1 = 1                                         ORDER BY starttime desc   limit 0, 100', '20170315232755', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('112', 'SELECT count(*) as count     FROM eajdbcmonitor WHERE 1 = 1', '20170315232755', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('113', 'UPDATE easequence SET maxid = \'100000000064195\' WHERE fieldname = \'EVENTID\'', '20170315232755', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('114', 'UPDATE easequence SET maxid = \'100000000064196\' WHERE fieldname = \'EVENTID\'', '20170315232755', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('115', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064196\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[queryMonitorData]\', 20170315232755,\'/g5/jdbcMonitor/queryMonitorData.do\',\'queryMonitorData\',0)', '20170315232755', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('116', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315232814', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('117', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010301\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170315232814', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('118', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010301\'', '20170315232814', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('119', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010301\'', '20170315232814', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('120', 'UPDATE easequence SET maxid = \'100000000064197\' WHERE fieldname = \'EVENTID\'', '20170315232814', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('121', 'UPDATE easequence SET maxid = \'100000000064198\' WHERE fieldname = \'EVENTID\'', '20170315232814', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('122', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064198\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[供货商管理]\', 20170315232814,\'/g5/supplier/init.do\',\'init\',0)', '20170315232814', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('123', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170315232815', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('124', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170315232815', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('125', 'SELECT   eventid, userid, account, username, description, activetime,            requestpath, methodname,  costtime        FROM eaevent a      WHERE 1 = 1                                  ORDER BY eventid DESC   limit 0, 50', '20170315232824', '7', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('126', 'SELECT count(*) as count     FROM eaevent a WHERE 1 = 1', '20170315232824', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('127', 'UPDATE easequence SET maxid = \'100000000064199\' WHERE fieldname = \'EVENTID\'', '20170315232824', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('128', 'UPDATE easequence SET maxid = \'100000000064200\' WHERE fieldname = \'EVENTID\'', '20170315232824', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('129', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064200\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[queryEvents]\', 20170315232824,\'/g5/eventTrack/queryEvents.do\',\'queryEvents\',0)', '20170315232824', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('130', 'SELECT monitorid, sqltext as sqltext, starttime, costtime, effectrows, type             FROM eajdbcmonitor WHERE 1 = 1                                         ORDER BY starttime desc   limit 0, 100', '20170315232830', '8', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('131', 'SELECT count(*) as count     FROM eajdbcmonitor WHERE 1 = 1', '20170315232830', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('132', 'UPDATE easequence SET maxid = \'100000000064201\' WHERE fieldname = \'EVENTID\'', '20170315232830', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('133', 'UPDATE easequence SET maxid = \'100000000064202\' WHERE fieldname = \'EVENTID\'', '20170315232830', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('134', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064202\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[queryMonitorData]\', 20170315232830,\'/g5/jdbcMonitor/queryMonitorData.do\',\'queryMonitorData\',0)', '20170315232830', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('135', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170315232836', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('136', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170315232836', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('137', 'DELETE      FROM eahttpsession', '20170315233118', '31', '1', '3');
INSERT INTO `eajdbcmonitor` VALUES ('138', 'SELECT codeid, field, fieldname, code, codedesc, sortno     FROM eacode  WHERE enabled = \'1\' ORDER BY codeid , sortno', '20170315233118', '46', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('139', 'SELECT paramid, paramkey, paramvalue     FROM eaparam', '20170315233118', '16', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('140', 'SELECT a.userid, a.username, a.ACCOUNT, a.PASSWORD, a.sex, a.deptid, b.theme, b.layout,          (SELECT customid             FROM eadept            WHERE deptid = a.deptid) AS customid,          (SELECT deptname             FROM eadept            WHERE deptid = a.deptid) AS deptname     FROM eauser a, eausersubinfo b     WHERE a.userid = b.userid and a.locked = \'0\' and a.enabled = \'1\'       AND      a.account = \'developer\'', '20170315233127', '17', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('141', 'SELECT        sessionid as sessionID, userid, username, account, createtime as sessionCreatedTime, explorer, loginip as loginIP        FROM eahttpsession where sessionid = \'node0khcemxg207b0rkpgaaaoqdpa0\'', '20170315233127', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('142', 'INSERT INTO eahttpsession (      sessionid, username, account,       createtime, loginip,userid,explorer)    VALUES (\'node0khcemxg207b0rkpgaaaoqdpa0\', \'开发人员\', \'developer\',       \'2017-03-15 23:31:27\', \'0:0:0:0:0:0:0:1\', \'10000001\',\'CHROME/55.0.\')', '20170315233127', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('143', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EVENTID\'', '20170315233127', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('144', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'XMID\'', '20170315233127', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('145', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'CODEID\'', '20170315233127', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('146', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EXCEPTIONID\'', '20170315233127', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('147', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_ROLE\'', '20170315233127', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('148', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARAMID\'', '20170315233127', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('149', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'ROLEID\'', '20170315233127', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('150', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_USERMENUMAP\'', '20170315233127', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('151', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_USER\'', '20170315233127', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('152', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'USERID\'', '20170315233127', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('153', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'FILEID\'', '20170315233127', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('154', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARTID\'', '20170315233127', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('155', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_EAROLEAUTHORIZE\'', '20170315233127', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('156', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARTID\'', '20170315233127', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('157', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EVENTID\'', '20170315233127', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('158', 'UPDATE easequence SET maxid = \'100000000064203\' WHERE fieldname = \'EVENTID\'', '20170315233127', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('159', 'UPDATE easequence SET maxid = \'100000000064204\' WHERE fieldname = \'EVENTID\'', '20170315233127', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('160', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064204\', \'10000001\', \'developer\',       \'开发人员\', \'登录系统\', 20170315233127,\'/g5/login/login.do\',\'\',\'\')', '20170315233127', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('161', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315233128', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('162', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170315233128', '8', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('163', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315233128', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('164', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315233128', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('165', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315233128', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('166', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170315233128', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('167', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315233128', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('168', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170315233128', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('169', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315233128', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('170', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170315233128', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('171', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315233128', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('172', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170315233128', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('173', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315233128', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('174', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170315233128', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('175', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315233128', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('176', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170315233128', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('177', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315233128', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('178', 'UPDATE easequence SET maxid = \'100000000064205\' WHERE fieldname = \'EVENTID\'', '20170315233128', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('179', 'UPDATE easequence SET maxid = \'100000000064206\' WHERE fieldname = \'EVENTID\'', '20170315233128', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('180', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064206\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170315233128,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170315233128', '7', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('181', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315233129', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('182', 'UPDATE easequence SET maxid = \'100000000064207\' WHERE fieldname = \'EVENTID\'', '20170315233129', '6', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('183', 'UPDATE easequence SET maxid = \'100000000064208\' WHERE fieldname = \'EVENTID\'', '20170315233129', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('184', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064208\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170315233129,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170315233130', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('185', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315233130', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('186', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170315233130', '12', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('187', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170315233130', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('188', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170315233130', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('189', 'UPDATE easequence SET maxid = \'100000000064209\' WHERE fieldname = \'EVENTID\'', '20170315233130', '6', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('190', 'UPDATE easequence SET maxid = \'100000000064210\' WHERE fieldname = \'EVENTID\'', '20170315233130', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('191', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064210\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170315233130,\'/g5/goods/init.do\',\'init\',0)', '20170315233130', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('192', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170315233131', '168', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('193', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170315233131', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('194', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170315233131', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('195', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170315233131', '0', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('196', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170315233131', '15', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('197', 'UPDATE easequence SET maxid = \'100000000064211\' WHERE fieldname = \'EVENTID\'', '20170315233131', '0', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('198', 'UPDATE easequence SET maxid = \'100000000064212\' WHERE fieldname = \'EVENTID\'', '20170315233131', '16', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('199', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064212\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315233131,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170315233131', '0', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('200', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315233134', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('201', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010301\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170315233134', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('202', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010301\'', '20170315233134', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('203', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010301\'', '20170315233134', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('204', 'UPDATE easequence SET maxid = \'100000000064213\' WHERE fieldname = \'EVENTID\'', '20170315233134', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('205', 'UPDATE easequence SET maxid = \'100000000064214\' WHERE fieldname = \'EVENTID\'', '20170315233134', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('206', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064214\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[供货商管理]\', 20170315233134,\'/g5/supplier/init.do\',\'init\',0)', '20170315233134', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('207', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170315233134', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('208', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170315233134', '5', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('209', 'UPDATE easequence SET maxid = \'100000000064215\' WHERE fieldname = \'EVENTID\'', '20170315233135', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('210', 'UPDATE easequence SET maxid = \'100000000064216\' WHERE fieldname = \'EVENTID\'', '20170315233135', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('211', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064216\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315233135,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170315233135', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('212', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315233140', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('213', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'01010403\'', '20170315233140', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('214', 'UPDATE easequence SET maxid = \'100000000064217\' WHERE fieldname = \'EVENTID\'', '20170315233140', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('215', 'UPDATE easequence SET maxid = \'100000000064218\' WHERE fieldname = \'EVENTID\'', '20170315233140', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('216', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064218\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[Requst请求跟踪]\', 20170315233140,\'/g5/eventTrack/init.do\',\'init\',0)', '20170315233140', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('217', 'SELECT   eventid, userid, account, username, description, activetime,            requestpath, methodname,  costtime        FROM eaevent a      WHERE 1 = 1                                  ORDER BY eventid DESC   limit 0, 50', '20170315233140', '51', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('218', 'SELECT count(*) as count     FROM eaevent a WHERE 1 = 1', '20170315233140', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('219', 'UPDATE easequence SET maxid = \'100000000064219\' WHERE fieldname = \'EVENTID\'', '20170315233140', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('220', 'UPDATE easequence SET maxid = \'100000000064220\' WHERE fieldname = \'EVENTID\'', '20170315233140', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('221', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064220\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[queryEvents]\', 20170315233140,\'/g5/eventTrack/queryEvents.do\',\'queryEvents\',0)', '20170315233140', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('222', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315233145', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('223', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'01010405\'', '20170315233145', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('224', 'UPDATE easequence SET maxid = \'100000000064221\' WHERE fieldname = \'EVENTID\'', '20170315233145', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('225', 'UPDATE easequence SET maxid = \'100000000064222\' WHERE fieldname = \'EVENTID\'', '20170315233145', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('226', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064222\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[JDBC执行监控]\', 20170315233145,\'/g5/jdbcMonitor/jdbcInit.do\',\'jdbcInit\',0)', '20170315233145', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('227', 'SELECT monitorid, sqltext as sqltext, starttime, costtime, effectrows, type             FROM eajdbcmonitor WHERE 1 = 1                                         ORDER BY starttime desc   limit 0, 50', '20170315233145', '67', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('228', 'SELECT count(*) as count     FROM eajdbcmonitor WHERE 1 = 1', '20170315233145', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('229', 'UPDATE easequence SET maxid = \'100000000064223\' WHERE fieldname = \'EVENTID\'', '20170315233145', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('230', 'UPDATE easequence SET maxid = \'100000000064224\' WHERE fieldname = \'EVENTID\'', '20170315233145', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('231', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064224\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[queryMonitorData]\', 20170315233145,\'/g5/jdbcMonitor/queryMonitorData.do\',\'queryMonitorData\',0)', '20170315233145', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('232', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315233215', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('233', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'01010403\'', '20170315233215', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('234', 'UPDATE easequence SET maxid = \'100000000064225\' WHERE fieldname = \'EVENTID\'', '20170315233215', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('235', 'UPDATE easequence SET maxid = \'100000000064226\' WHERE fieldname = \'EVENTID\'', '20170315233215', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('236', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064226\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[Requst请求跟踪]\', 20170315233215,\'/g5/eventTrack/init.do\',\'init\',0)', '20170315233215', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('237', 'SELECT   eventid, userid, account, username, description, activetime,            requestpath, methodname,  costtime        FROM eaevent a      WHERE 1 = 1                                  ORDER BY eventid DESC   limit 0, 50', '20170315233215', '9', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('238', 'SELECT count(*) as count     FROM eaevent a WHERE 1 = 1', '20170315233215', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('239', 'UPDATE easequence SET maxid = \'100000000064227\' WHERE fieldname = \'EVENTID\'', '20170315233215', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('240', 'UPDATE easequence SET maxid = \'100000000064228\' WHERE fieldname = \'EVENTID\'', '20170315233215', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('241', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064228\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[queryEvents]\', 20170315233215,\'/g5/eventTrack/queryEvents.do\',\'queryEvents\',0)', '20170315233215', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('242', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315233217', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('243', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'01010401\'', '20170315233217', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('244', 'UPDATE easequence SET maxid = \'100000000064229\' WHERE fieldname = \'EVENTID\'', '20170315233217', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('245', 'UPDATE easequence SET maxid = \'100000000064230\' WHERE fieldname = \'EVENTID\'', '20170315233217', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('246', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064230\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[Session会话监控]\', 20170315233217,\'/g5/sessionMonitor/init.do\',\'init\',0)', '20170315233217', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('247', 'SELECT        sessionid as sessionID, userid, username, account, createtime as sessionCreatedTime,explorer, loginip as loginIP        FROM eahttpsession WHERE 1 = 1                            limit 0, 50', '20170315233217', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('248', 'SELECT        count(*) as count        FROM eahttpsession WHERE 1 = 1', '20170315233217', '11', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('249', 'UPDATE easequence SET maxid = \'100000000064231\' WHERE fieldname = \'EVENTID\'', '20170315233217', '13', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('250', 'UPDATE easequence SET maxid = \'100000000064232\' WHERE fieldname = \'EVENTID\'', '20170315233217', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('251', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064232\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getSessionList]\', 20170315233217,\'/g5/sessionMonitor/getSessionList.do\',\'getSessionList\',0)', '20170315233217', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('252', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315233318', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('253', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170315233318', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('254', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315233318', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('255', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315233318', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('256', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315233318', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('257', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170315233318', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('258', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315233318', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('259', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170315233318', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('260', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315233318', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('261', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170315233318', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('262', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315233318', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('263', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170315233318', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('264', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315233318', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('265', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170315233318', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('266', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315233318', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('267', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170315233318', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('268', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315233318', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('269', 'UPDATE easequence SET maxid = \'100000000064233\' WHERE fieldname = \'EVENTID\'', '20170315233318', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('270', 'UPDATE easequence SET maxid = \'100000000064234\' WHERE fieldname = \'EVENTID\'', '20170315233318', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('271', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064234\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170315233318,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170315233318', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('272', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315233319', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('273', 'UPDATE easequence SET maxid = \'100000000064235\' WHERE fieldname = \'EVENTID\'', '20170315233319', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('274', 'UPDATE easequence SET maxid = \'100000000064236\' WHERE fieldname = \'EVENTID\'', '20170315233319', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('275', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064236\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170315233319,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170315233319', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('276', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315233321', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('277', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010301\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170315233321', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('278', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010301\'', '20170315233321', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('279', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010301\'', '20170315233321', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('280', 'UPDATE easequence SET maxid = \'100000000064237\' WHERE fieldname = \'EVENTID\'', '20170315233321', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('281', 'UPDATE easequence SET maxid = \'100000000064238\' WHERE fieldname = \'EVENTID\'', '20170315233321', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('282', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064238\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[供货商管理]\', 20170315233321,\'/g5/supplier/init.do\',\'init\',0)', '20170315233321', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('283', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170315233321', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('284', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170315233321', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('285', 'UPDATE easequence SET maxid = \'100000000064239\' WHERE fieldname = \'EVENTID\'', '20170315233321', '8', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('286', 'UPDATE easequence SET maxid = \'100000000064240\' WHERE fieldname = \'EVENTID\'', '20170315233321', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('287', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064240\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315233321,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170315233321', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('288', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315233331', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('289', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170315233331', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('290', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170315233331', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('291', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170315233332', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('292', 'UPDATE easequence SET maxid = \'100000000064241\' WHERE fieldname = \'EVENTID\'', '20170315233332', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('293', 'UPDATE easequence SET maxid = \'100000000064242\' WHERE fieldname = \'EVENTID\'', '20170315233332', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('294', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064242\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170315233332,\'/g5/goods/init.do\',\'init\',0)', '20170315233332', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('295', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170315233332', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('296', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170315233332', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('297', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170315233332', '10', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('298', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170315233332', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('299', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170315233332', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('300', 'UPDATE easequence SET maxid = \'100000000064243\' WHERE fieldname = \'EVENTID\'', '20170315233332', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('301', 'UPDATE easequence SET maxid = \'100000000064244\' WHERE fieldname = \'EVENTID\'', '20170315233332', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('302', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064244\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315233332,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170315233332', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('303', 'select t.* from t_type t', '20170315233334', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('304', 'UPDATE easequence SET maxid = \'100000000064245\' WHERE fieldname = \'EVENTID\'', '20170315233334', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('305', 'UPDATE easequence SET maxid = \'100000000064246\' WHERE fieldname = \'EVENTID\'', '20170315233334', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('306', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064246\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getList]\', 20170315233334,\'/g5/api/type/getList.do\',\'getList\',0)', '20170315233334', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('307', 'SELECT t.* FROM t_supplier t', '20170315233335', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('308', 'UPDATE easequence SET maxid = \'100000000064247\' WHERE fieldname = \'EVENTID\'', '20170315233335', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('309', 'UPDATE easequence SET maxid = \'100000000064248\' WHERE fieldname = \'EVENTID\'', '20170315233335', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('310', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064248\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getList]\', 20170315233335,\'/g5/api/supplier/getList.do\',\'getList\',0)', '20170315233335', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('311', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315233659', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('312', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010202\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170315233659', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('313', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010202\'', '20170315233659', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('314', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010202\'', '20170315233659', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('315', 'UPDATE easequence SET maxid = \'100000000064249\' WHERE fieldname = \'EVENTID\'', '20170315233659', '10', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('316', 'UPDATE easequence SET maxid = \'100000000064250\' WHERE fieldname = \'EVENTID\'', '20170315233659', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('317', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064250\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品类型]\', 20170315233659,\'/g5/type/init.do\',\'init\',0)', '20170315233659', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('318', 'select t.* from t_type t         where 1 = 1               limit 0, 20', '20170315233659', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('319', 'select count(t.type_id) from t_type t         where 1 = 1', '20170315233659', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('320', 'UPDATE easequence SET maxid = \'100000000064251\' WHERE fieldname = \'EVENTID\'', '20170315233659', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('321', 'UPDATE easequence SET maxid = \'100000000064252\' WHERE fieldname = \'EVENTID\'', '20170315233659', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('322', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064252\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315233659,\'/g5/api/type/getAll\',\'getAll\',0)', '20170315233659', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('323', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315233706', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('324', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010201\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170315233706', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('325', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010201\'', '20170315233706', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('326', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010201\'', '20170315233706', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('327', 'UPDATE easequence SET maxid = \'100000000064253\' WHERE fieldname = \'EVENTID\'', '20170315233706', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('328', 'UPDATE easequence SET maxid = \'100000000064254\' WHERE fieldname = \'EVENTID\'', '20170315233706', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('329', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064254\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品属性]\', 20170315233706,\'/g5/attr/init.do\',\'init\',0)', '20170315233706', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('330', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170315233707', '6', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('331', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170315233707', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('332', 'UPDATE easequence SET maxid = \'100000000064255\' WHERE fieldname = \'EVENTID\'', '20170315233707', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('333', 'UPDATE easequence SET maxid = \'100000000064256\' WHERE fieldname = \'EVENTID\'', '20170315233707', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('334', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064256\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315233707,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170315233707', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('335', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315234031', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('336', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170315234031', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('337', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315234031', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('338', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315234031', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('339', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315234031', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('340', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170315234031', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('341', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315234031', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('342', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170315234031', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('343', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315234031', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('344', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170315234031', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('345', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315234031', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('346', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170315234031', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('347', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315234031', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('348', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170315234031', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('349', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315234031', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('350', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170315234031', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('351', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315234031', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('352', 'UPDATE easequence SET maxid = \'100000000064257\' WHERE fieldname = \'EVENTID\'', '20170315234031', '10', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('353', 'UPDATE easequence SET maxid = \'100000000064258\' WHERE fieldname = \'EVENTID\'', '20170315234031', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('354', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064258\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170315234031,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170315234031', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('355', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315234031', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('356', 'UPDATE easequence SET maxid = \'100000000064259\' WHERE fieldname = \'EVENTID\'', '20170315234031', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('357', 'UPDATE easequence SET maxid = \'100000000064260\' WHERE fieldname = \'EVENTID\'', '20170315234031', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('358', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064260\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170315234031,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170315234031', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('359', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315234033', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('360', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170315234033', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('361', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170315234033', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('362', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170315234033', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('363', 'UPDATE easequence SET maxid = \'100000000064261\' WHERE fieldname = \'EVENTID\'', '20170315234033', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('364', 'UPDATE easequence SET maxid = \'100000000064262\' WHERE fieldname = \'EVENTID\'', '20170315234033', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('365', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064262\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170315234033,\'/g5/goods/init.do\',\'init\',0)', '20170315234033', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('366', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170315234033', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('367', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170315234033', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('368', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170315234033', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('369', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170315234033', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('370', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170315234033', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('371', 'UPDATE easequence SET maxid = \'100000000064263\' WHERE fieldname = \'EVENTID\'', '20170315234033', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('372', 'UPDATE easequence SET maxid = \'100000000064264\' WHERE fieldname = \'EVENTID\'', '20170315234033', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('373', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064264\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315234033,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170315234033', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('374', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315234058', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('375', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170315234058', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('376', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315234058', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('377', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315234058', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('378', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315234058', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('379', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170315234058', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('380', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315234058', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('381', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170315234058', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('382', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315234058', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('383', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170315234058', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('384', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315234058', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('385', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170315234058', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('386', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315234058', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('387', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170315234058', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('388', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315234058', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('389', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170315234058', '13', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('390', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315234058', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('391', 'UPDATE easequence SET maxid = \'100000000064265\' WHERE fieldname = \'EVENTID\'', '20170315234058', '6', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('392', 'UPDATE easequence SET maxid = \'100000000064266\' WHERE fieldname = \'EVENTID\'', '20170315234058', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('393', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064266\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170315234058,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170315234058', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('394', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315234058', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('395', 'UPDATE easequence SET maxid = \'100000000064267\' WHERE fieldname = \'EVENTID\'', '20170315234058', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('396', 'UPDATE easequence SET maxid = \'100000000064268\' WHERE fieldname = \'EVENTID\'', '20170315234058', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('397', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064268\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170315234058,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170315234058', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('398', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315234059', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('399', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170315234059', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('400', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170315234059', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('401', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170315234059', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('402', 'UPDATE easequence SET maxid = \'100000000064269\' WHERE fieldname = \'EVENTID\'', '20170315234059', '7', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('403', 'UPDATE easequence SET maxid = \'100000000064270\' WHERE fieldname = \'EVENTID\'', '20170315234059', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('404', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064270\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170315234059,\'/g5/goods/init.do\',\'init\',0)', '20170315234059', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('405', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170315234059', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('406', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170315234059', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('407', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170315234059', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('408', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170315234059', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('409', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170315234059', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('410', 'UPDATE easequence SET maxid = \'100000000064271\' WHERE fieldname = \'EVENTID\'', '20170315234059', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('411', 'UPDATE easequence SET maxid = \'100000000064272\' WHERE fieldname = \'EVENTID\'', '20170315234059', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('412', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064272\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315234059,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170315234059', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('413', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315234946', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('414', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170315234946', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('415', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315234946', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('416', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315234946', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('417', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315234946', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('418', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170315234946', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('419', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315234946', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('420', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170315234946', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('421', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315234946', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('422', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170315234946', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('423', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315234946', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('424', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170315234947', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('425', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315234947', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('426', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170315234947', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('427', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315234947', '13', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('428', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170315234947', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('429', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315234947', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('430', 'UPDATE easequence SET maxid = \'100000000064273\' WHERE fieldname = \'EVENTID\'', '20170315234947', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('431', 'UPDATE easequence SET maxid = \'100000000064274\' WHERE fieldname = \'EVENTID\'', '20170315234947', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('432', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064274\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170315234947,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170315234947', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('433', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315234947', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('434', 'UPDATE easequence SET maxid = \'100000000064275\' WHERE fieldname = \'EVENTID\'', '20170315234947', '6', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('435', 'UPDATE easequence SET maxid = \'100000000064276\' WHERE fieldname = \'EVENTID\'', '20170315234947', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('436', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064276\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170315234947,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170315234947', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('437', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315234949', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('438', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170315234949', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('439', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170315234949', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('440', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170315234949', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('441', 'UPDATE easequence SET maxid = \'100000000064277\' WHERE fieldname = \'EVENTID\'', '20170315234949', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('442', 'UPDATE easequence SET maxid = \'100000000064278\' WHERE fieldname = \'EVENTID\'', '20170315234949', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('443', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064278\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170315234949,\'/g5/goods/init.do\',\'init\',0)', '20170315234949', '26', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('444', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170315234950', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('445', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170315234950', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('446', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170315234950', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('447', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170315234950', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('448', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170315234950', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('449', 'UPDATE easequence SET maxid = \'100000000064279\' WHERE fieldname = \'EVENTID\'', '20170315234950', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('450', 'UPDATE easequence SET maxid = \'100000000064280\' WHERE fieldname = \'EVENTID\'', '20170315234950', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('451', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064280\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315234950,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170315234950', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('452', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235016', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('453', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170315235016', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('454', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315235016', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('455', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315235016', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('456', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235016', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('457', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170315235016', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('458', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235016', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('459', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170315235016', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('460', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235016', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('461', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170315235016', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('462', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235016', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('463', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170315235016', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('464', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235016', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('465', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170315235016', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('466', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235016', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('467', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170315235016', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('468', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235016', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('469', 'UPDATE easequence SET maxid = \'100000000064281\' WHERE fieldname = \'EVENTID\'', '20170315235016', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('470', 'UPDATE easequence SET maxid = \'100000000064282\' WHERE fieldname = \'EVENTID\'', '20170315235016', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('471', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064282\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170315235016,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170315235016', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('472', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235017', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('473', 'UPDATE easequence SET maxid = \'100000000064283\' WHERE fieldname = \'EVENTID\'', '20170315235017', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('474', 'UPDATE easequence SET maxid = \'100000000064284\' WHERE fieldname = \'EVENTID\'', '20170315235017', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('475', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064284\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170315235017,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170315235017', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('476', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235019', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('477', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170315235019', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('478', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170315235019', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('479', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170315235019', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('480', 'UPDATE easequence SET maxid = \'100000000064285\' WHERE fieldname = \'EVENTID\'', '20170315235019', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('481', 'UPDATE easequence SET maxid = \'100000000064286\' WHERE fieldname = \'EVENTID\'', '20170315235019', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('482', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064286\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170315235019,\'/g5/goods/init.do\',\'init\',0)', '20170315235019', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('483', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170315235019', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('484', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170315235019', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('485', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170315235019', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('486', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170315235019', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('487', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170315235019', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('488', 'UPDATE easequence SET maxid = \'100000000064287\' WHERE fieldname = \'EVENTID\'', '20170315235019', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('489', 'UPDATE easequence SET maxid = \'100000000064288\' WHERE fieldname = \'EVENTID\'', '20170315235019', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('490', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064288\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315235019,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170315235019', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('491', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235105', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('492', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170315235105', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('493', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315235105', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('494', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315235105', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('495', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235105', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('496', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170315235105', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('497', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235105', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('498', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170315235105', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('499', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235105', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('500', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170315235105', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('501', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235105', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('502', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170315235105', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('503', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235105', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('504', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170315235105', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('505', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235105', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('506', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170315235105', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('507', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235105', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('508', 'UPDATE easequence SET maxid = \'100000000064289\' WHERE fieldname = \'EVENTID\'', '20170315235105', '8', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('509', 'UPDATE easequence SET maxid = \'100000000064290\' WHERE fieldname = \'EVENTID\'', '20170315235105', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('510', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064290\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170315235105,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170315235105', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('511', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235106', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('512', 'UPDATE easequence SET maxid = \'100000000064291\' WHERE fieldname = \'EVENTID\'', '20170315235106', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('513', 'UPDATE easequence SET maxid = \'100000000064292\' WHERE fieldname = \'EVENTID\'', '20170315235106', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('514', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064292\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170315235106,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170315235106', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('515', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235108', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('516', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170315235108', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('517', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170315235108', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('518', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170315235108', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('519', 'UPDATE easequence SET maxid = \'100000000064293\' WHERE fieldname = \'EVENTID\'', '20170315235108', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('520', 'UPDATE easequence SET maxid = \'100000000064294\' WHERE fieldname = \'EVENTID\'', '20170315235108', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('521', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064294\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170315235108,\'/g5/goods/init.do\',\'init\',0)', '20170315235108', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('522', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170315235108', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('523', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170315235108', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('524', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170315235108', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('525', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170315235108', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('526', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170315235108', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('527', 'UPDATE easequence SET maxid = \'100000000064295\' WHERE fieldname = \'EVENTID\'', '20170315235108', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('528', 'UPDATE easequence SET maxid = \'100000000064296\' WHERE fieldname = \'EVENTID\'', '20170315235108', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('529', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064296\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315235108,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170315235108', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('530', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235159', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('531', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170315235159', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('532', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315235159', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('533', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315235159', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('534', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235159', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('535', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170315235159', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('536', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235159', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('537', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170315235159', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('538', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235159', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('539', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170315235159', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('540', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235159', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('541', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170315235159', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('542', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235159', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('543', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170315235159', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('544', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235159', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('545', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170315235159', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('546', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235159', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('547', 'UPDATE easequence SET maxid = \'100000000064297\' WHERE fieldname = \'EVENTID\'', '20170315235159', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('548', 'UPDATE easequence SET maxid = \'100000000064298\' WHERE fieldname = \'EVENTID\'', '20170315235159', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('549', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064298\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170315235159,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170315235159', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('550', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235200', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('551', 'UPDATE easequence SET maxid = \'100000000064299\' WHERE fieldname = \'EVENTID\'', '20170315235200', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('552', 'UPDATE easequence SET maxid = \'100000000064300\' WHERE fieldname = \'EVENTID\'', '20170315235200', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('553', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064300\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170315235200,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170315235200', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('554', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235202', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('555', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170315235202', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('556', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170315235202', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('557', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170315235202', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('558', 'UPDATE easequence SET maxid = \'100000000064301\' WHERE fieldname = \'EVENTID\'', '20170315235202', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('559', 'UPDATE easequence SET maxid = \'100000000064302\' WHERE fieldname = \'EVENTID\'', '20170315235202', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('560', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064302\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170315235202,\'/g5/goods/init.do\',\'init\',0)', '20170315235202', '4', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('561', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170315235203', '6', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('562', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170315235203', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('563', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170315235203', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('564', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170315235203', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('565', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170315235203', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('566', 'UPDATE easequence SET maxid = \'100000000064303\' WHERE fieldname = \'EVENTID\'', '20170315235203', '8', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('567', 'UPDATE easequence SET maxid = \'100000000064304\' WHERE fieldname = \'EVENTID\'', '20170315235203', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('568', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064304\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315235203,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170315235203', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('569', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235230', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('570', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170315235230', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('571', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315235230', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('572', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315235230', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('573', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235230', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('574', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170315235230', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('575', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235230', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('576', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170315235230', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('577', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235230', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('578', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170315235231', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('579', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235231', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('580', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170315235231', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('581', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235231', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('582', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170315235231', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('583', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235231', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('584', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170315235231', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('585', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235231', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('586', 'UPDATE easequence SET maxid = \'100000000064305\' WHERE fieldname = \'EVENTID\'', '20170315235231', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('587', 'UPDATE easequence SET maxid = \'100000000064306\' WHERE fieldname = \'EVENTID\'', '20170315235231', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('588', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064306\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170315235231,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170315235231', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('589', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235231', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('590', 'UPDATE easequence SET maxid = \'100000000064307\' WHERE fieldname = \'EVENTID\'', '20170315235231', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('591', 'UPDATE easequence SET maxid = \'100000000064308\' WHERE fieldname = \'EVENTID\'', '20170315235231', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('592', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064308\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170315235231,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170315235231', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('593', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235232', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('594', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170315235232', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('595', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170315235232', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('596', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170315235232', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('597', 'UPDATE easequence SET maxid = \'100000000064309\' WHERE fieldname = \'EVENTID\'', '20170315235232', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('598', 'UPDATE easequence SET maxid = \'100000000064310\' WHERE fieldname = \'EVENTID\'', '20170315235232', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('599', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064310\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170315235232,\'/g5/goods/init.do\',\'init\',0)', '20170315235233', '35', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('600', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170315235233', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('601', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170315235233', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('602', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170315235233', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('603', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170315235233', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('604', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170315235233', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('605', 'UPDATE easequence SET maxid = \'100000000064311\' WHERE fieldname = \'EVENTID\'', '20170315235233', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('606', 'UPDATE easequence SET maxid = \'100000000064312\' WHERE fieldname = \'EVENTID\'', '20170315235233', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('607', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064312\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315235233,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170315235233', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('608', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170315235235', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('609', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170315235235', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('610', 'UPDATE easequence SET maxid = \'100000000064313\' WHERE fieldname = \'EVENTID\'', '20170315235235', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('611', 'UPDATE easequence SET maxid = \'100000000064314\' WHERE fieldname = \'EVENTID\'', '20170315235235', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('612', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064314\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315235235,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170315235235', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('613', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235256', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('614', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170315235256', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('615', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315235256', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('616', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315235256', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('617', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235256', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('618', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170315235256', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('619', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235256', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('620', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170315235256', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('621', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235256', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('622', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170315235256', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('623', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235256', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('624', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170315235256', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('625', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235256', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('626', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170315235256', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('627', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235256', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('628', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170315235256', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('629', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235256', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('630', 'UPDATE easequence SET maxid = \'100000000064315\' WHERE fieldname = \'EVENTID\'', '20170315235256', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('631', 'UPDATE easequence SET maxid = \'100000000064316\' WHERE fieldname = \'EVENTID\'', '20170315235256', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('632', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064316\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170315235256,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170315235256', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('633', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235257', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('634', 'UPDATE easequence SET maxid = \'100000000064317\' WHERE fieldname = \'EVENTID\'', '20170315235257', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('635', 'UPDATE easequence SET maxid = \'100000000064318\' WHERE fieldname = \'EVENTID\'', '20170315235257', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('636', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064318\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170315235257,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170315235257', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('637', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235258', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('638', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010202\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170315235258', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('639', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010202\'', '20170315235258', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('640', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010202\'', '20170315235258', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('641', 'UPDATE easequence SET maxid = \'100000000064319\' WHERE fieldname = \'EVENTID\'', '20170315235258', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('642', 'UPDATE easequence SET maxid = \'100000000064320\' WHERE fieldname = \'EVENTID\'', '20170315235258', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('643', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064320\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品类型]\', 20170315235258,\'/g5/type/init.do\',\'init\',0)', '20170315235258', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('644', 'select t.* from t_type t         where 1 = 1               limit 0, 20', '20170315235259', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('645', 'select count(t.type_id) from t_type t         where 1 = 1', '20170315235259', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('646', 'UPDATE easequence SET maxid = \'100000000064321\' WHERE fieldname = \'EVENTID\'', '20170315235259', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('647', 'UPDATE easequence SET maxid = \'100000000064322\' WHERE fieldname = \'EVENTID\'', '20170315235259', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('648', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064322\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315235259,\'/g5/api/type/getAll\',\'getAll\',0)', '20170315235259', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('649', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235259', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('650', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170315235259', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('651', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170315235259', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('652', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170315235259', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('653', 'UPDATE easequence SET maxid = \'100000000064323\' WHERE fieldname = \'EVENTID\'', '20170315235259', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('654', 'UPDATE easequence SET maxid = \'100000000064324\' WHERE fieldname = \'EVENTID\'', '20170315235259', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('655', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064324\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170315235259,\'/g5/goods/init.do\',\'init\',0)', '20170315235259', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('656', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170315235259', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('657', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170315235259', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('658', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170315235300', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('659', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170315235300', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('660', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170315235300', '9', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('661', 'UPDATE easequence SET maxid = \'100000000064325\' WHERE fieldname = \'EVENTID\'', '20170315235300', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('662', 'UPDATE easequence SET maxid = \'100000000064326\' WHERE fieldname = \'EVENTID\'', '20170315235300', '72', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('663', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064326\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315235300,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170315235300', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('664', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170315235302', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('665', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170315235302', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('666', 'UPDATE easequence SET maxid = \'100000000064327\' WHERE fieldname = \'EVENTID\'', '20170315235302', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('667', 'UPDATE easequence SET maxid = \'100000000064328\' WHERE fieldname = \'EVENTID\'', '20170315235302', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('668', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064328\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315235302,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170315235302', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('669', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170315235312', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('670', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170315235312', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('671', 'UPDATE easequence SET maxid = \'100000000064329\' WHERE fieldname = \'EVENTID\'', '20170315235312', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('672', 'UPDATE easequence SET maxid = \'100000000064330\' WHERE fieldname = \'EVENTID\'', '20170315235312', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('673', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064330\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315235312,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170315235312', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('674', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235347', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('675', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170315235347', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('676', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315235347', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('677', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315235347', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('678', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235347', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('679', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170315235347', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('680', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235347', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('681', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170315235347', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('682', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235347', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('683', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170315235347', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('684', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235347', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('685', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170315235347', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('686', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235347', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('687', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170315235347', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('688', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235347', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('689', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170315235347', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('690', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235347', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('691', 'UPDATE easequence SET maxid = \'100000000064331\' WHERE fieldname = \'EVENTID\'', '20170315235347', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('692', 'UPDATE easequence SET maxid = \'100000000064332\' WHERE fieldname = \'EVENTID\'', '20170315235347', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('693', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064332\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170315235347,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170315235347', '15', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('694', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235347', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('695', 'UPDATE easequence SET maxid = \'100000000064333\' WHERE fieldname = \'EVENTID\'', '20170315235347', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('696', 'UPDATE easequence SET maxid = \'100000000064334\' WHERE fieldname = \'EVENTID\'', '20170315235347', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('697', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064334\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170315235347,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170315235347', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('698', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235349', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('699', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170315235349', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('700', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170315235349', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('701', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170315235349', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('702', 'UPDATE easequence SET maxid = \'100000000064335\' WHERE fieldname = \'EVENTID\'', '20170315235349', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('703', 'UPDATE easequence SET maxid = \'100000000064336\' WHERE fieldname = \'EVENTID\'', '20170315235349', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('704', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064336\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170315235349,\'/g5/goods/init.do\',\'init\',0)', '20170315235349', '22', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('705', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170315235350', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('706', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170315235350', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('707', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170315235350', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('708', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170315235350', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('709', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170315235350', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('710', 'UPDATE easequence SET maxid = \'100000000064337\' WHERE fieldname = \'EVENTID\'', '20170315235350', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('711', 'UPDATE easequence SET maxid = \'100000000064338\' WHERE fieldname = \'EVENTID\'', '20170315235350', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('712', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064338\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315235350,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170315235350', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('713', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170315235351', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('714', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170315235351', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('715', 'UPDATE easequence SET maxid = \'100000000064339\' WHERE fieldname = \'EVENTID\'', '20170315235351', '6', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('716', 'UPDATE easequence SET maxid = \'100000000064340\' WHERE fieldname = \'EVENTID\'', '20170315235351', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('717', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064340\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315235351,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170315235351', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('718', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235507', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('719', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170315235507', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('720', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315235507', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('721', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315235507', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('722', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235507', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('723', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170315235507', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('724', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235507', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('725', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170315235507', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('726', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235507', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('727', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170315235507', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('728', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235507', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('729', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170315235507', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('730', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235507', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('731', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170315235507', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('732', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235507', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('733', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170315235507', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('734', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235507', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('735', 'UPDATE easequence SET maxid = \'100000000064341\' WHERE fieldname = \'EVENTID\'', '20170315235507', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('736', 'UPDATE easequence SET maxid = \'100000000064342\' WHERE fieldname = \'EVENTID\'', '20170315235507', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('737', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064342\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170315235507,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170315235507', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('738', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235507', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('739', 'UPDATE easequence SET maxid = \'100000000064343\' WHERE fieldname = \'EVENTID\'', '20170315235507', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('740', 'UPDATE easequence SET maxid = \'100000000064344\' WHERE fieldname = \'EVENTID\'', '20170315235508', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('741', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064344\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170315235507,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170315235508', '29', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('742', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235509', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('743', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170315235509', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('744', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170315235509', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('745', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170315235509', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('746', 'UPDATE easequence SET maxid = \'100000000064345\' WHERE fieldname = \'EVENTID\'', '20170315235509', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('747', 'UPDATE easequence SET maxid = \'100000000064346\' WHERE fieldname = \'EVENTID\'', '20170315235509', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('748', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064346\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170315235509,\'/g5/goods/init.do\',\'init\',0)', '20170315235509', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('749', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170315235510', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('750', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170315235510', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('751', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170315235510', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('752', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170315235510', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('753', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170315235510', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('754', 'UPDATE easequence SET maxid = \'100000000064347\' WHERE fieldname = \'EVENTID\'', '20170315235510', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('755', 'UPDATE easequence SET maxid = \'100000000064348\' WHERE fieldname = \'EVENTID\'', '20170315235510', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('756', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064348\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315235510,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170315235510', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('757', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170315235511', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('758', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170315235511', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('759', 'UPDATE easequence SET maxid = \'100000000064349\' WHERE fieldname = \'EVENTID\'', '20170315235511', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('760', 'UPDATE easequence SET maxid = \'100000000064350\' WHERE fieldname = \'EVENTID\'', '20170315235511', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('761', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064350\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315235511,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170315235511', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('762', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170315235516', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('763', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170315235516', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('764', 'UPDATE easequence SET maxid = \'100000000064351\' WHERE fieldname = \'EVENTID\'', '20170315235516', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('765', 'UPDATE easequence SET maxid = \'100000000064352\' WHERE fieldname = \'EVENTID\'', '20170315235516', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('766', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064352\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315235516,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170315235516', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('767', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235739', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('768', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170315235739', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('769', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315235739', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('770', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170315235739', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('771', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235739', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('772', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170315235739', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('773', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235739', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('774', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170315235739', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('775', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235739', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('776', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170315235739', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('777', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235739', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('778', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170315235739', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('779', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235739', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('780', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170315235739', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('781', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235739', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('782', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170315235739', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('783', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170315235739', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('784', 'UPDATE easequence SET maxid = \'100000000064353\' WHERE fieldname = \'EVENTID\'', '20170315235739', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('785', 'UPDATE easequence SET maxid = \'100000000064354\' WHERE fieldname = \'EVENTID\'', '20170315235739', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('786', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064354\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170315235739,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170315235739', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('787', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235739', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('788', 'UPDATE easequence SET maxid = \'100000000064355\' WHERE fieldname = \'EVENTID\'', '20170315235740', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('789', 'UPDATE easequence SET maxid = \'100000000064356\' WHERE fieldname = \'EVENTID\'', '20170315235740', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('790', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064356\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170315235740,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170315235740', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('791', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170315235740', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('792', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170315235741', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('793', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170315235741', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('794', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170315235741', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('795', 'UPDATE easequence SET maxid = \'100000000064357\' WHERE fieldname = \'EVENTID\'', '20170315235741', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('796', 'UPDATE easequence SET maxid = \'100000000064358\' WHERE fieldname = \'EVENTID\'', '20170315235741', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('797', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064358\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170315235741,\'/g5/goods/init.do\',\'init\',0)', '20170315235741', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('798', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170315235741', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('799', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170315235741', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('800', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170315235741', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('801', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170315235741', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('802', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170315235741', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('803', 'UPDATE easequence SET maxid = \'100000000064359\' WHERE fieldname = \'EVENTID\'', '20170315235741', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('804', 'UPDATE easequence SET maxid = \'100000000064360\' WHERE fieldname = \'EVENTID\'', '20170315235741', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('805', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064360\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315235741,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170315235741', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('806', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170315235744', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('807', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170315235744', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('808', 'UPDATE easequence SET maxid = \'100000000064361\' WHERE fieldname = \'EVENTID\'', '20170315235744', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('809', 'UPDATE easequence SET maxid = \'100000000064362\' WHERE fieldname = \'EVENTID\'', '20170315235744', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('810', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064362\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315235744,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170315235744', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('811', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170315235751', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('812', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170315235751', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('813', 'UPDATE easequence SET maxid = \'100000000064363\' WHERE fieldname = \'EVENTID\'', '20170315235751', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('814', 'UPDATE easequence SET maxid = \'100000000064364\' WHERE fieldname = \'EVENTID\'', '20170315235751', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('815', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064364\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315235751,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170315235751', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('816', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170315235754', '1', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('817', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170315235754', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('818', 'UPDATE easequence SET maxid = \'100000000064365\' WHERE fieldname = \'EVENTID\'', '20170315235754', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('819', 'UPDATE easequence SET maxid = \'100000000064366\' WHERE fieldname = \'EVENTID\'', '20170315235754', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('820', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064366\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170315235754,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170315235754', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('821', 'SELECT a.userid, a.username, a.ACCOUNT, a.PASSWORD, a.sex, a.deptid, b.theme, b.layout,          (SELECT customid             FROM eadept            WHERE deptid = a.deptid) AS customid,          (SELECT deptname             FROM eadept            WHERE deptid = a.deptid) AS deptname     FROM eauser a, eausersubinfo b     WHERE a.userid = b.userid and a.locked = \'0\' and a.enabled = \'1\'       AND      a.account = \'developer\'', '20170316003413', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('822', 'SELECT        sessionid as sessionID, userid, username, account, createtime as sessionCreatedTime, explorer, loginip as loginIP        FROM eahttpsession where sessionid = \'node01kwbx3or5mo0spz52qjhhi8n1\'', '20170316003413', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('823', 'INSERT INTO eahttpsession (      sessionid, username, account,       createtime, loginip,userid,explorer)    VALUES (\'node01kwbx3or5mo0spz52qjhhi8n1\', \'开发人员\', \'developer\',       \'2017-03-16 00:34:13\', \'0:0:0:0:0:0:0:1\', \'10000001\',\'CHROME/55.0.\')', '20170316003413', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('824', 'UPDATE easequence SET maxid = \'100000000064367\' WHERE fieldname = \'EVENTID\'', '20170316003413', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('825', 'UPDATE easequence SET maxid = \'100000000064368\' WHERE fieldname = \'EVENTID\'', '20170316003413', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('826', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064368\', \'10000001\', \'developer\',       \'开发人员\', \'登录系统\', 20170316003413,\'/g5/login/login.do\',\'\',\'\')', '20170316003413', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('827', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316003413', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('828', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316003413', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('829', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316003413', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('830', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316003413', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('831', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316003413', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('832', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316003413', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('833', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003413', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('834', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316003413', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('835', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003413', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('836', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316003413', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('837', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003413', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('838', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316003413', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('839', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003413', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('840', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316003413', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('841', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003413', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('842', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316003413', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('843', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003413', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('844', 'UPDATE easequence SET maxid = \'100000000064369\' WHERE fieldname = \'EVENTID\'', '20170316003413', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('845', 'UPDATE easequence SET maxid = \'100000000064370\' WHERE fieldname = \'EVENTID\'', '20170316003413', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('846', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064370\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316003413,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316003413', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('847', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316003413', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('848', 'UPDATE easequence SET maxid = \'100000000064371\' WHERE fieldname = \'EVENTID\'', '20170316003414', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('849', 'UPDATE easequence SET maxid = \'100000000064372\' WHERE fieldname = \'EVENTID\'', '20170316003414', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('850', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064372\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316003414,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316003414', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('851', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316003415', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('852', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316003415', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('853', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316003415', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('854', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316003415', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('855', 'UPDATE easequence SET maxid = \'100000000064373\' WHERE fieldname = \'EVENTID\'', '20170316003415', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('856', 'UPDATE easequence SET maxid = \'100000000064374\' WHERE fieldname = \'EVENTID\'', '20170316003415', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('857', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064374\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316003415,\'/g5/goods/init.do\',\'init\',0)', '20170316003415', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('858', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316003416', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('859', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316003416', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('860', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316003416', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('861', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316003416', '21', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('862', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316003416', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('863', 'UPDATE easequence SET maxid = \'100000000064375\' WHERE fieldname = \'EVENTID\'', '20170316003416', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('864', 'UPDATE easequence SET maxid = \'100000000064376\' WHERE fieldname = \'EVENTID\'', '20170316003416', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('865', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064376\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316003416,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316003416', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('866', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170316003417', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('867', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170316003417', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('868', 'UPDATE easequence SET maxid = \'100000000064377\' WHERE fieldname = \'EVENTID\'', '20170316003417', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('869', 'UPDATE easequence SET maxid = \'100000000064378\' WHERE fieldname = \'EVENTID\'', '20170316003417', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('870', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064378\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316003417,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170316003417', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('871', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170316003420', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('872', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170316003420', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('873', 'UPDATE easequence SET maxid = \'100000000064379\' WHERE fieldname = \'EVENTID\'', '20170316003420', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('874', 'UPDATE easequence SET maxid = \'100000000064380\' WHERE fieldname = \'EVENTID\'', '20170316003420', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('875', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064380\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316003420,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170316003420', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('876', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170316003425', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('877', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170316003425', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('878', 'UPDATE easequence SET maxid = \'100000000064381\' WHERE fieldname = \'EVENTID\'', '20170316003425', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('879', 'UPDATE easequence SET maxid = \'100000000064382\' WHERE fieldname = \'EVENTID\'', '20170316003425', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('880', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064382\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316003425,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170316003425', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('881', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316003649', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('882', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316003649', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('883', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316003649', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('884', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316003649', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('885', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316003649', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('886', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316003649', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('887', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003649', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('888', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316003649', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('889', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003649', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('890', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316003649', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('891', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003649', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('892', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316003649', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('893', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003649', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('894', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316003649', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('895', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003649', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('896', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316003649', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('897', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003649', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('898', 'UPDATE easequence SET maxid = \'100000000064383\' WHERE fieldname = \'EVENTID\'', '20170316003649', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('899', 'UPDATE easequence SET maxid = \'100000000064384\' WHERE fieldname = \'EVENTID\'', '20170316003649', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('900', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064384\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316003649,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316003649', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('901', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316003649', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('902', 'UPDATE easequence SET maxid = \'100000000064385\' WHERE fieldname = \'EVENTID\'', '20170316003649', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('903', 'UPDATE easequence SET maxid = \'100000000064386\' WHERE fieldname = \'EVENTID\'', '20170316003649', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('904', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064386\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316003649,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316003649', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('905', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316003659', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('906', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316003659', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('907', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316003659', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('908', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316003659', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('909', 'UPDATE easequence SET maxid = \'100000000064387\' WHERE fieldname = \'EVENTID\'', '20170316003659', '6', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('910', 'UPDATE easequence SET maxid = \'100000000064388\' WHERE fieldname = \'EVENTID\'', '20170316003659', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('911', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064388\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316003659,\'/g5/goods/init.do\',\'init\',0)', '20170316003659', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('912', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316003700', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('913', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316003700', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('914', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316003700', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('915', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316003700', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('916', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316003700', '7', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('917', 'UPDATE easequence SET maxid = \'100000000064389\' WHERE fieldname = \'EVENTID\'', '20170316003700', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('918', 'UPDATE easequence SET maxid = \'100000000064390\' WHERE fieldname = \'EVENTID\'', '20170316003700', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('919', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064390\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316003700,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316003700', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('920', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170316003701', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('921', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170316003701', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('922', 'UPDATE easequence SET maxid = \'100000000064391\' WHERE fieldname = \'EVENTID\'', '20170316003701', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('923', 'UPDATE easequence SET maxid = \'100000000064392\' WHERE fieldname = \'EVENTID\'', '20170316003701', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('924', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064392\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316003701,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170316003701', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('925', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170316003710', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('926', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170316003710', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('927', 'UPDATE easequence SET maxid = \'100000000064393\' WHERE fieldname = \'EVENTID\'', '20170316003710', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('928', 'UPDATE easequence SET maxid = \'100000000064394\' WHERE fieldname = \'EVENTID\'', '20170316003710', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('929', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064394\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316003710,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170316003710', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('930', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316003738', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('931', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316003738', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('932', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316003738', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('933', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316003738', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('934', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316003738', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('935', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316003738', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('936', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003738', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('937', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316003738', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('938', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003738', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('939', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316003738', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('940', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003738', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('941', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316003738', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('942', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003738', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('943', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316003738', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('944', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003738', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('945', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316003738', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('946', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003738', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('947', 'UPDATE easequence SET maxid = \'100000000064395\' WHERE fieldname = \'EVENTID\'', '20170316003738', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('948', 'UPDATE easequence SET maxid = \'100000000064396\' WHERE fieldname = \'EVENTID\'', '20170316003738', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('949', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064396\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316003738,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316003738', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('950', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316003739', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('951', 'UPDATE easequence SET maxid = \'100000000064397\' WHERE fieldname = \'EVENTID\'', '20170316003739', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('952', 'UPDATE easequence SET maxid = \'100000000064398\' WHERE fieldname = \'EVENTID\'', '20170316003739', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('953', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064398\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316003739,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316003739', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('954', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316003740', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('955', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316003740', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('956', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316003740', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('957', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316003740', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('958', 'UPDATE easequence SET maxid = \'100000000064399\' WHERE fieldname = \'EVENTID\'', '20170316003740', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('959', 'UPDATE easequence SET maxid = \'100000000064400\' WHERE fieldname = \'EVENTID\'', '20170316003740', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('960', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064400\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316003740,\'/g5/goods/init.do\',\'init\',0)', '20170316003740', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('961', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316003740', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('962', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316003740', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('963', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316003740', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('964', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316003740', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('965', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316003740', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('966', 'UPDATE easequence SET maxid = \'100000000064401\' WHERE fieldname = \'EVENTID\'', '20170316003740', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('967', 'UPDATE easequence SET maxid = \'100000000064402\' WHERE fieldname = \'EVENTID\'', '20170316003740', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('968', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064402\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316003740,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316003740', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('969', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170316003742', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('970', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170316003742', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('971', 'UPDATE easequence SET maxid = \'100000000064403\' WHERE fieldname = \'EVENTID\'', '20170316003742', '6', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('972', 'UPDATE easequence SET maxid = \'100000000064404\' WHERE fieldname = \'EVENTID\'', '20170316003742', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('973', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064404\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316003742,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170316003742', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('974', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316003818', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('975', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316003818', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('976', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316003818', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('977', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316003818', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('978', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316003818', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('979', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316003818', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('980', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003818', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('981', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316003818', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('982', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003818', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('983', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316003818', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('984', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003818', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('985', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316003818', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('986', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003818', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('987', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316003818', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('988', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003818', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('989', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316003818', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('990', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003818', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('991', 'UPDATE easequence SET maxid = \'100000000064405\' WHERE fieldname = \'EVENTID\'', '20170316003818', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('992', 'UPDATE easequence SET maxid = \'100000000064406\' WHERE fieldname = \'EVENTID\'', '20170316003818', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('993', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064406\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316003818,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316003818', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('994', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316003819', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('995', 'UPDATE easequence SET maxid = \'100000000064407\' WHERE fieldname = \'EVENTID\'', '20170316003819', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('996', 'UPDATE easequence SET maxid = \'100000000064408\' WHERE fieldname = \'EVENTID\'', '20170316003819', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('997', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064408\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316003819,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316003819', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('998', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316003820', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('999', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010202\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316003820', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1000', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010202\'', '20170316003820', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1001', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010202\'', '20170316003820', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1002', 'UPDATE easequence SET maxid = \'100000000064409\' WHERE fieldname = \'EVENTID\'', '20170316003820', '6', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1003', 'UPDATE easequence SET maxid = \'100000000064410\' WHERE fieldname = \'EVENTID\'', '20170316003820', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1004', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064410\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品类型]\', 20170316003820,\'/g5/type/init.do\',\'init\',0)', '20170316003820', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1005', 'select t.* from t_type t         where 1 = 1               limit 0, 20', '20170316003820', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1006', 'select count(t.type_id) from t_type t         where 1 = 1', '20170316003820', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1007', 'UPDATE easequence SET maxid = \'100000000064411\' WHERE fieldname = \'EVENTID\'', '20170316003820', '7', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1008', 'UPDATE easequence SET maxid = \'100000000064412\' WHERE fieldname = \'EVENTID\'', '20170316003820', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1009', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064412\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316003820,\'/g5/api/type/getAll\',\'getAll\',0)', '20170316003820', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1010', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316003820', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1011', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316003821', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1012', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316003821', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1013', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316003821', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1014', 'UPDATE easequence SET maxid = \'100000000064413\' WHERE fieldname = \'EVENTID\'', '20170316003821', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1015', 'UPDATE easequence SET maxid = \'100000000064414\' WHERE fieldname = \'EVENTID\'', '20170316003821', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1016', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064414\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316003821,\'/g5/goods/init.do\',\'init\',0)', '20170316003821', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1017', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316003821', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1018', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316003821', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1019', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316003821', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1020', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316003821', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1021', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316003821', '24', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1022', 'UPDATE easequence SET maxid = \'100000000064415\' WHERE fieldname = \'EVENTID\'', '20170316003821', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1023', 'UPDATE easequence SET maxid = \'100000000064416\' WHERE fieldname = \'EVENTID\'', '20170316003821', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1024', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064416\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316003821,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316003821', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1025', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170316003823', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1026', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170316003823', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1027', 'UPDATE easequence SET maxid = \'100000000064417\' WHERE fieldname = \'EVENTID\'', '20170316003823', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1028', 'UPDATE easequence SET maxid = \'100000000064418\' WHERE fieldname = \'EVENTID\'', '20170316003823', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1029', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064418\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316003823,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170316003823', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1030', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316003845', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1031', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316003845', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1032', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316003845', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1033', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316003845', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1034', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316003845', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1035', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316003845', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1036', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003845', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1037', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316003845', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1038', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003845', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1039', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316003845', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1040', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003845', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1041', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316003845', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1042', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003845', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1043', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316003845', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1044', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003845', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1045', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316003845', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1046', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003845', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1047', 'UPDATE easequence SET maxid = \'100000000064419\' WHERE fieldname = \'EVENTID\'', '20170316003845', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1048', 'UPDATE easequence SET maxid = \'100000000064420\' WHERE fieldname = \'EVENTID\'', '20170316003845', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1049', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064420\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316003845,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316003845', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1050', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316003845', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1051', 'UPDATE easequence SET maxid = \'100000000064421\' WHERE fieldname = \'EVENTID\'', '20170316003845', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1052', 'UPDATE easequence SET maxid = \'100000000064422\' WHERE fieldname = \'EVENTID\'', '20170316003845', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1053', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064422\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316003845,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316003846', '8', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1054', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316003846', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1055', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316003847', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1056', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316003847', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1057', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316003847', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1058', 'UPDATE easequence SET maxid = \'100000000064423\' WHERE fieldname = \'EVENTID\'', '20170316003847', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1059', 'UPDATE easequence SET maxid = \'100000000064424\' WHERE fieldname = \'EVENTID\'', '20170316003847', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1060', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064424\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316003847,\'/g5/goods/init.do\',\'init\',0)', '20170316003847', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1061', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316003847', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1062', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316003847', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1063', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316003847', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1064', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316003847', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1065', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316003847', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1066', 'UPDATE easequence SET maxid = \'100000000064425\' WHERE fieldname = \'EVENTID\'', '20170316003847', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1067', 'UPDATE easequence SET maxid = \'100000000064426\' WHERE fieldname = \'EVENTID\'', '20170316003847', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1068', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064426\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316003847,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316003847', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1069', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170316003848', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1070', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170316003848', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1071', 'UPDATE easequence SET maxid = \'100000000064427\' WHERE fieldname = \'EVENTID\'', '20170316003848', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1072', 'UPDATE easequence SET maxid = \'100000000064428\' WHERE fieldname = \'EVENTID\'', '20170316003848', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1073', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064428\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316003848,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170316003848', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1074', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316003946', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1075', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316003946', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1076', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316003946', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1077', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316003946', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1078', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316003946', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1079', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316003946', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1080', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003946', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1081', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316003946', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1082', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003946', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1083', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316003946', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1084', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003946', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1085', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316003946', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1086', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003946', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1087', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316003946', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1088', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003946', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1089', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316003946', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1090', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316003946', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1091', 'UPDATE easequence SET maxid = \'100000000064429\' WHERE fieldname = \'EVENTID\'', '20170316003946', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1092', 'UPDATE easequence SET maxid = \'100000000064430\' WHERE fieldname = \'EVENTID\'', '20170316003946', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1093', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064430\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316003946,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316003946', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1094', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316003946', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1095', 'UPDATE easequence SET maxid = \'100000000064431\' WHERE fieldname = \'EVENTID\'', '20170316003946', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1096', 'UPDATE easequence SET maxid = \'100000000064432\' WHERE fieldname = \'EVENTID\'', '20170316003946', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1097', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064432\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316003946,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316003946', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1098', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316003947', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1099', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316003947', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1100', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316003947', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1101', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316003947', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1102', 'UPDATE easequence SET maxid = \'100000000064433\' WHERE fieldname = \'EVENTID\'', '20170316003947', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1103', 'UPDATE easequence SET maxid = \'100000000064434\' WHERE fieldname = \'EVENTID\'', '20170316003947', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1104', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064434\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316003947,\'/g5/goods/init.do\',\'init\',0)', '20170316003947', '17', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1105', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316003948', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1106', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316003948', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1107', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316003948', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1108', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316003948', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1109', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316003948', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1110', 'UPDATE easequence SET maxid = \'100000000064435\' WHERE fieldname = \'EVENTID\'', '20170316003948', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1111', 'UPDATE easequence SET maxid = \'100000000064436\' WHERE fieldname = \'EVENTID\'', '20170316003948', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1112', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064436\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316003948,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316003948', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1113', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170316003950', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1114', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170316003950', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1115', 'UPDATE easequence SET maxid = \'100000000064437\' WHERE fieldname = \'EVENTID\'', '20170316003950', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1116', 'UPDATE easequence SET maxid = \'100000000064438\' WHERE fieldname = \'EVENTID\'', '20170316003950', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1117', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064438\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316003950,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170316003950', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1118', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316004228', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1119', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316004228', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1120', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316004228', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1121', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316004228', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1122', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316004228', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1123', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316004228', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1124', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004228', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1125', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316004228', '7', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1126', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004228', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1127', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316004228', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1128', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004228', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1129', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316004228', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1130', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004228', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1131', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316004228', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1132', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004228', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1133', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316004228', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1134', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004228', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1135', 'UPDATE easequence SET maxid = \'100000000064439\' WHERE fieldname = \'EVENTID\'', '20170316004228', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1136', 'UPDATE easequence SET maxid = \'100000000064440\' WHERE fieldname = \'EVENTID\'', '20170316004228', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1137', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064440\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316004228,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316004228', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1138', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316004229', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1139', 'UPDATE easequence SET maxid = \'100000000064441\' WHERE fieldname = \'EVENTID\'', '20170316004229', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1140', 'UPDATE easequence SET maxid = \'100000000064442\' WHERE fieldname = \'EVENTID\'', '20170316004229', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1141', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064442\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316004229,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316004229', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1142', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316004230', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1143', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316004230', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1144', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316004230', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1145', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316004230', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1146', 'UPDATE easequence SET maxid = \'100000000064443\' WHERE fieldname = \'EVENTID\'', '20170316004230', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1147', 'UPDATE easequence SET maxid = \'100000000064444\' WHERE fieldname = \'EVENTID\'', '20170316004230', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1148', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064444\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316004230,\'/g5/goods/init.do\',\'init\',0)', '20170316004230', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1149', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316004231', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1150', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316004231', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1151', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316004231', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1152', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316004231', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1153', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316004231', '32', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1154', 'UPDATE easequence SET maxid = \'100000000064445\' WHERE fieldname = \'EVENTID\'', '20170316004231', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1155', 'UPDATE easequence SET maxid = \'100000000064446\' WHERE fieldname = \'EVENTID\'', '20170316004231', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1156', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064446\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316004231,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316004231', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1157', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170316004232', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1158', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170316004232', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1159', 'UPDATE easequence SET maxid = \'100000000064447\' WHERE fieldname = \'EVENTID\'', '20170316004232', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1160', 'UPDATE easequence SET maxid = \'100000000064448\' WHERE fieldname = \'EVENTID\'', '20170316004232', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1161', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064448\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316004232,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170316004232', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1162', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316004401', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1163', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316004401', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1164', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316004401', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1165', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316004401', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1166', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316004401', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1167', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316004401', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1168', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004401', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1169', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316004401', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1170', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004401', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1171', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316004401', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1172', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004401', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1173', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316004402', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1174', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004402', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1175', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316004402', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1176', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004402', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1177', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316004402', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1178', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004402', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1179', 'UPDATE easequence SET maxid = \'100000000064449\' WHERE fieldname = \'EVENTID\'', '20170316004402', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1180', 'UPDATE easequence SET maxid = \'100000000064450\' WHERE fieldname = \'EVENTID\'', '20170316004402', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1181', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064450\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316004402,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316004402', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1182', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316004402', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1183', 'UPDATE easequence SET maxid = \'100000000064451\' WHERE fieldname = \'EVENTID\'', '20170316004402', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1184', 'UPDATE easequence SET maxid = \'100000000064452\' WHERE fieldname = \'EVENTID\'', '20170316004402', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1185', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064452\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316004402,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316004402', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1186', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316004403', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1187', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316004403', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1188', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316004403', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1189', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316004403', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1190', 'UPDATE easequence SET maxid = \'100000000064453\' WHERE fieldname = \'EVENTID\'', '20170316004403', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1191', 'UPDATE easequence SET maxid = \'100000000064454\' WHERE fieldname = \'EVENTID\'', '20170316004403', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1192', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064454\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316004403,\'/g5/goods/init.do\',\'init\',0)', '20170316004403', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1193', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316004404', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1194', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316004404', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1195', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316004404', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1196', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316004404', '14', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1197', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316004404', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1198', 'UPDATE easequence SET maxid = \'100000000064455\' WHERE fieldname = \'EVENTID\'', '20170316004404', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1199', 'UPDATE easequence SET maxid = \'100000000064456\' WHERE fieldname = \'EVENTID\'', '20170316004404', '34', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1200', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064456\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316004404,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316004404', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1201', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170316004405', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1202', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170316004405', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1203', 'UPDATE easequence SET maxid = \'100000000064457\' WHERE fieldname = \'EVENTID\'', '20170316004405', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1204', 'UPDATE easequence SET maxid = \'100000000064458\' WHERE fieldname = \'EVENTID\'', '20170316004405', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1205', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064458\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316004405,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170316004405', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1206', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316004504', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1207', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316004504', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1208', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316004504', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1209', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316004504', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1210', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316004504', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1211', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316004504', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1212', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004504', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1213', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316004504', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1214', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004504', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1215', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316004504', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1216', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004504', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1217', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316004504', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1218', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004504', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1219', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316004504', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1220', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004504', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1221', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316004504', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1222', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004504', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1223', 'UPDATE easequence SET maxid = \'100000000064459\' WHERE fieldname = \'EVENTID\'', '20170316004504', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1224', 'UPDATE easequence SET maxid = \'100000000064460\' WHERE fieldname = \'EVENTID\'', '20170316004504', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1225', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064460\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316004504,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316004504', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1226', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316004504', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1227', 'UPDATE easequence SET maxid = \'100000000064461\' WHERE fieldname = \'EVENTID\'', '20170316004504', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1228', 'UPDATE easequence SET maxid = \'100000000064462\' WHERE fieldname = \'EVENTID\'', '20170316004504', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1229', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064462\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316004504,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316004504', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1230', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316004507', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1231', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316004507', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1232', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316004507', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1233', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316004507', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1234', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316004507', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1235', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316004507', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1236', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004507', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1237', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316004507', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1238', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004507', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1239', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316004507', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1240', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004507', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1241', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316004507', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1242', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004507', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1243', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316004507', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1244', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004507', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1245', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316004507', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1246', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004507', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1247', 'UPDATE easequence SET maxid = \'100000000064463\' WHERE fieldname = \'EVENTID\'', '20170316004507', '7', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1248', 'UPDATE easequence SET maxid = \'100000000064464\' WHERE fieldname = \'EVENTID\'', '20170316004507', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1249', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064464\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316004507,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316004507', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1250', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316004508', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1251', 'UPDATE easequence SET maxid = \'100000000064465\' WHERE fieldname = \'EVENTID\'', '20170316004508', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1252', 'UPDATE easequence SET maxid = \'100000000064466\' WHERE fieldname = \'EVENTID\'', '20170316004508', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1253', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064466\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316004508,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316004508', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1254', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316004509', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1255', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316004509', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1256', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316004509', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1257', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316004509', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1258', 'UPDATE easequence SET maxid = \'100000000064467\' WHERE fieldname = \'EVENTID\'', '20170316004509', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1259', 'UPDATE easequence SET maxid = \'100000000064468\' WHERE fieldname = \'EVENTID\'', '20170316004509', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1260', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064468\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316004509,\'/g5/goods/init.do\',\'init\',0)', '20170316004509', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1261', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316004509', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1262', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316004509', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1263', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316004509', '16', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1264', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316004509', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1265', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316004509', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1266', 'UPDATE easequence SET maxid = \'100000000064469\' WHERE fieldname = \'EVENTID\'', '20170316004510', '6', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1267', 'UPDATE easequence SET maxid = \'100000000064470\' WHERE fieldname = \'EVENTID\'', '20170316004510', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1268', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064470\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316004509,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316004510', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1269', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170316004511', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1270', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170316004511', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1271', 'UPDATE easequence SET maxid = \'100000000064471\' WHERE fieldname = \'EVENTID\'', '20170316004511', '30', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1272', 'UPDATE easequence SET maxid = \'100000000064472\' WHERE fieldname = \'EVENTID\'', '20170316004511', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1273', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064472\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316004511,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170316004511', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1274', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316004945', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1275', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316004945', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1276', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316004945', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1277', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316004945', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1278', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316004945', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1279', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316004945', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1280', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004945', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1281', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316004945', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1282', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004945', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1283', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316004945', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1284', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004945', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1285', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316004945', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1286', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004945', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1287', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316004945', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1288', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004945', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1289', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316004945', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1290', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316004945', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1291', 'UPDATE easequence SET maxid = \'100000000064473\' WHERE fieldname = \'EVENTID\'', '20170316004945', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1292', 'UPDATE easequence SET maxid = \'100000000064474\' WHERE fieldname = \'EVENTID\'', '20170316004945', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1293', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064474\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316004945,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316004945', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1294', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316004945', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1295', 'UPDATE easequence SET maxid = \'100000000064475\' WHERE fieldname = \'EVENTID\'', '20170316004945', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1296', 'UPDATE easequence SET maxid = \'100000000064476\' WHERE fieldname = \'EVENTID\'', '20170316004945', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1297', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064476\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316004945,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316004945', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1298', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316004946', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1299', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316004946', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1300', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316004946', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1301', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316004946', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1302', 'UPDATE easequence SET maxid = \'100000000064477\' WHERE fieldname = \'EVENTID\'', '20170316004946', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1303', 'UPDATE easequence SET maxid = \'100000000064478\' WHERE fieldname = \'EVENTID\'', '20170316004946', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1304', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064478\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316004946,\'/g5/goods/init.do\',\'init\',0)', '20170316004946', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1305', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316004947', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1306', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316004947', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1307', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316004947', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1308', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316004947', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1309', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316004947', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1310', 'UPDATE easequence SET maxid = \'100000000064479\' WHERE fieldname = \'EVENTID\'', '20170316004947', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1311', 'UPDATE easequence SET maxid = \'100000000064480\' WHERE fieldname = \'EVENTID\'', '20170316004947', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1312', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064480\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316004947,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316004947', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1313', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170316004948', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1314', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170316004948', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1315', 'UPDATE easequence SET maxid = \'100000000064481\' WHERE fieldname = \'EVENTID\'', '20170316004948', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1316', 'UPDATE easequence SET maxid = \'100000000064482\' WHERE fieldname = \'EVENTID\'', '20170316004948', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1317', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064482\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316004948,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170316004948', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1318', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316005002', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1319', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316005002', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1320', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316005002', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1321', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316005002', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1322', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316005002', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1323', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316005002', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1324', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316005002', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1325', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316005002', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1326', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316005002', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1327', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316005002', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1328', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316005002', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1329', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316005002', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1330', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316005002', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1331', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316005002', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1332', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316005002', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1333', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316005002', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1334', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316005002', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1335', 'UPDATE easequence SET maxid = \'100000000064483\' WHERE fieldname = \'EVENTID\'', '20170316005002', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1336', 'UPDATE easequence SET maxid = \'100000000064484\' WHERE fieldname = \'EVENTID\'', '20170316005002', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1337', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064484\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316005002,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316005002', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1338', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316005003', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1339', 'UPDATE easequence SET maxid = \'100000000064485\' WHERE fieldname = \'EVENTID\'', '20170316005003', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1340', 'UPDATE easequence SET maxid = \'100000000064486\' WHERE fieldname = \'EVENTID\'', '20170316005003', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1341', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064486\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316005003,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316005003', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1342', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316005004', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1343', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316005005', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1344', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316005005', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1345', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316005005', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1346', 'UPDATE easequence SET maxid = \'100000000064487\' WHERE fieldname = \'EVENTID\'', '20170316005005', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1347', 'UPDATE easequence SET maxid = \'100000000064488\' WHERE fieldname = \'EVENTID\'', '20170316005005', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1348', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064488\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316005005,\'/g5/goods/init.do\',\'init\',0)', '20170316005005', '35', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1349', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316005005', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1350', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316005005', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1351', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316005005', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1352', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316005005', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1353', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316005005', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1354', 'UPDATE easequence SET maxid = \'100000000064489\' WHERE fieldname = \'EVENTID\'', '20170316005005', '6', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1355', 'UPDATE easequence SET maxid = \'100000000064490\' WHERE fieldname = \'EVENTID\'', '20170316005005', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1356', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064490\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316005005,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316005005', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1357', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170316005007', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1358', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170316005007', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1359', 'UPDATE easequence SET maxid = \'100000000064491\' WHERE fieldname = \'EVENTID\'', '20170316005007', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1360', 'UPDATE easequence SET maxid = \'100000000064492\' WHERE fieldname = \'EVENTID\'', '20170316005007', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1361', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064492\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316005007,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170316005007', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1362', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170316005022', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1363', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170316005022', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1364', 'UPDATE easequence SET maxid = \'100000000064493\' WHERE fieldname = \'EVENTID\'', '20170316005022', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1365', 'UPDATE easequence SET maxid = \'100000000064494\' WHERE fieldname = \'EVENTID\'', '20170316005022', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1366', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064494\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316005022,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170316005022', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1367', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316005038', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1368', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316005038', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1369', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316005038', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1370', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316005038', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1371', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316005038', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1372', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316005038', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1373', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316005038', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1374', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316005038', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1375', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316005038', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1376', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316005038', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1377', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316005038', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1378', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316005038', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1379', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316005038', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1380', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316005038', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1381', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316005038', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1382', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316005038', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1383', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316005038', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1384', 'UPDATE easequence SET maxid = \'100000000064495\' WHERE fieldname = \'EVENTID\'', '20170316005038', '7', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1385', 'UPDATE easequence SET maxid = \'100000000064496\' WHERE fieldname = \'EVENTID\'', '20170316005038', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1386', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064496\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316005038,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316005038', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1387', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316005038', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1388', 'UPDATE easequence SET maxid = \'100000000064497\' WHERE fieldname = \'EVENTID\'', '20170316005038', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1389', 'UPDATE easequence SET maxid = \'100000000064498\' WHERE fieldname = \'EVENTID\'', '20170316005039', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1390', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064498\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316005038,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316005039', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1391', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316005039', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1392', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316005039', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1393', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316005039', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1394', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316005039', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1395', 'UPDATE easequence SET maxid = \'100000000064499\' WHERE fieldname = \'EVENTID\'', '20170316005039', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1396', 'UPDATE easequence SET maxid = \'100000000064500\' WHERE fieldname = \'EVENTID\'', '20170316005039', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1397', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064500\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316005039,\'/g5/goods/init.do\',\'init\',0)', '20170316005039', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1398', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316005040', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1399', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316005040', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1400', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316005040', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1401', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316005040', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1402', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316005040', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1403', 'UPDATE easequence SET maxid = \'100000000064501\' WHERE fieldname = \'EVENTID\'', '20170316005040', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1404', 'UPDATE easequence SET maxid = \'100000000064502\' WHERE fieldname = \'EVENTID\'', '20170316005040', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1405', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064502\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316005040,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316005040', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1406', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170316005042', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1407', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170316005042', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1408', 'UPDATE easequence SET maxid = \'100000000064503\' WHERE fieldname = \'EVENTID\'', '20170316005042', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1409', 'UPDATE easequence SET maxid = \'100000000064504\' WHERE fieldname = \'EVENTID\'', '20170316005042', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1410', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064504\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316005042,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170316005042', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1411', 'select t.* from t_supplier t         where 1 = 1                                 limit 0, 20', '20170316005047', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1412', 'select count(t.supplier_id) from t_supplier t         where 1 = 1', '20170316005047', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1413', 'UPDATE easequence SET maxid = \'100000000064505\' WHERE fieldname = \'EVENTID\'', '20170316005047', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1414', 'UPDATE easequence SET maxid = \'100000000064506\' WHERE fieldname = \'EVENTID\'', '20170316005047', '10', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1415', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064506\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316005047,\'/g5/api/supplier/getAll\',\'getAll\',0)', '20170316005047', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1416', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316005247', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1417', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316005247', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1418', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316005247', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1419', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316005247', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1420', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316005247', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1421', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316005247', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1422', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316005247', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1423', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316005247', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1424', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316005247', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1425', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316005247', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1426', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316005247', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1427', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316005247', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1428', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316005247', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1429', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316005247', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1430', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316005247', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1431', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316005247', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1432', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316005247', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1433', 'UPDATE easequence SET maxid = \'100000000064507\' WHERE fieldname = \'EVENTID\'', '20170316005247', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1434', 'UPDATE easequence SET maxid = \'100000000064508\' WHERE fieldname = \'EVENTID\'', '20170316005247', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1435', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064508\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316005247,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316005247', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1436', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316005248', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1437', 'UPDATE easequence SET maxid = \'100000000064509\' WHERE fieldname = \'EVENTID\'', '20170316005248', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1438', 'UPDATE easequence SET maxid = \'100000000064510\' WHERE fieldname = \'EVENTID\'', '20170316005248', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1439', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064510\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316005248,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316005248', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1440', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316005249', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1441', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316005249', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1442', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316005249', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1443', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316005249', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1444', 'UPDATE easequence SET maxid = \'100000000064511\' WHERE fieldname = \'EVENTID\'', '20170316005249', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1445', 'UPDATE easequence SET maxid = \'100000000064512\' WHERE fieldname = \'EVENTID\'', '20170316005249', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1446', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064512\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316005249,\'/g5/goods/init.do\',\'init\',0)', '20170316005249', '15', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1447', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316005249', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1448', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316005249', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1449', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316005249', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1450', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316005249', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1451', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316005249', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1452', 'UPDATE easequence SET maxid = \'100000000064513\' WHERE fieldname = \'EVENTID\'', '20170316005249', '6', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1453', 'UPDATE easequence SET maxid = \'100000000064514\' WHERE fieldname = \'EVENTID\'', '20170316005249', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1454', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064514\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316005249,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316005249', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1455', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316005250', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1456', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316005250', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1457', 'UPDATE easequence SET maxid = \'100000000064515\' WHERE fieldname = \'EVENTID\'', '20170316005250', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1458', 'UPDATE easequence SET maxid = \'100000000064516\' WHERE fieldname = \'EVENTID\'', '20170316005250', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1459', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064516\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316005250,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316005250', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1460', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316005349', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1461', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316005349', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1462', 'UPDATE easequence SET maxid = \'100000000064517\' WHERE fieldname = \'EVENTID\'', '20170316005349', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1463', 'UPDATE easequence SET maxid = \'100000000064518\' WHERE fieldname = \'EVENTID\'', '20170316005349', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1464', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064518\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316005349,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316005349', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1465', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316005409', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1466', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316005409', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1467', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316005409', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1468', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316005409', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1469', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316005409', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1470', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316005409', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1471', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316005409', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1472', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316005409', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1473', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316005409', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1474', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316005409', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1475', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316005409', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1476', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316005409', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1477', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316005409', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1478', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316005409', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1479', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316005409', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1480', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316005409', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1481', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316005409', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1482', 'UPDATE easequence SET maxid = \'100000000064519\' WHERE fieldname = \'EVENTID\'', '20170316005409', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1483', 'UPDATE easequence SET maxid = \'100000000064520\' WHERE fieldname = \'EVENTID\'', '20170316005409', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1484', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064520\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316005409,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316005409', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1485', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316005410', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1486', 'UPDATE easequence SET maxid = \'100000000064521\' WHERE fieldname = \'EVENTID\'', '20170316005410', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1487', 'UPDATE easequence SET maxid = \'100000000064522\' WHERE fieldname = \'EVENTID\'', '20170316005410', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1488', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064522\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316005410,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316005410', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1489', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316005412', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1490', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316005412', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1491', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316005412', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1492', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316005412', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1493', 'UPDATE easequence SET maxid = \'100000000064523\' WHERE fieldname = \'EVENTID\'', '20170316005412', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1494', 'UPDATE easequence SET maxid = \'100000000064524\' WHERE fieldname = \'EVENTID\'', '20170316005412', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1495', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064524\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316005412,\'/g5/goods/init.do\',\'init\',0)', '20170316005412', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1496', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316005412', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1497', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316005412', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1498', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316005412', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1499', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316005412', '15', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1500', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316005412', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1501', 'UPDATE easequence SET maxid = \'100000000064525\' WHERE fieldname = \'EVENTID\'', '20170316005412', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1502', 'UPDATE easequence SET maxid = \'100000000064526\' WHERE fieldname = \'EVENTID\'', '20170316005412', '22', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1503', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064526\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316005412,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316005412', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1504', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316005414', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1505', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316005414', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1506', 'UPDATE easequence SET maxid = \'100000000064527\' WHERE fieldname = \'EVENTID\'', '20170316005414', '6', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1507', 'UPDATE easequence SET maxid = \'100000000064528\' WHERE fieldname = \'EVENTID\'', '20170316005414', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1508', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064528\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316005414,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316005414', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1509', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316005420', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1510', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316005420', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1511', 'UPDATE easequence SET maxid = \'100000000064529\' WHERE fieldname = \'EVENTID\'', '20170316005420', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1512', 'UPDATE easequence SET maxid = \'100000000064530\' WHERE fieldname = \'EVENTID\'', '20170316005420', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1513', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064530\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316005420,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316005420', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1514', 'select t.* from t_attr t         where 1 = 1         and             attr_name like \'%12332%\'               limit 0, 20', '20170316005426', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1515', 'select count(t.attr_id) from t_attr t         where 1 = 1         and             attr_name like \'%12332%\'', '20170316005426', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1516', 'UPDATE easequence SET maxid = \'100000000064531\' WHERE fieldname = \'EVENTID\'', '20170316005426', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1517', 'UPDATE easequence SET maxid = \'100000000064532\' WHERE fieldname = \'EVENTID\'', '20170316005426', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1518', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064532\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316005426,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316005426', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1519', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316005428', '1', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1520', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316005428', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1521', 'UPDATE easequence SET maxid = \'100000000064533\' WHERE fieldname = \'EVENTID\'', '20170316005428', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1522', 'UPDATE easequence SET maxid = \'100000000064534\' WHERE fieldname = \'EVENTID\'', '20170316005428', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1523', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064534\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316005428,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316005428', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1524', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316010233', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1525', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316010233', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1526', 'UPDATE easequence SET maxid = \'100000000064535\' WHERE fieldname = \'EVENTID\'', '20170316010233', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1527', 'UPDATE easequence SET maxid = \'100000000064536\' WHERE fieldname = \'EVENTID\'', '20170316010233', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1528', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064536\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316010233,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316010233', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1529', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316010436', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1530', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316010436', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1531', 'UPDATE easequence SET maxid = \'100000000064537\' WHERE fieldname = \'EVENTID\'', '20170316010436', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1532', 'UPDATE easequence SET maxid = \'100000000064538\' WHERE fieldname = \'EVENTID\'', '20170316010436', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1533', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064538\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316010436,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316010436', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1534', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316010503', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1535', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316010503', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1536', 'UPDATE easequence SET maxid = \'100000000064539\' WHERE fieldname = \'EVENTID\'', '20170316010503', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1537', 'UPDATE easequence SET maxid = \'100000000064540\' WHERE fieldname = \'EVENTID\'', '20170316010503', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1538', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064540\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316010503,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316010503', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1539', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316010513', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1540', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316010513', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1541', 'UPDATE easequence SET maxid = \'100000000064541\' WHERE fieldname = \'EVENTID\'', '20170316010513', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1542', 'UPDATE easequence SET maxid = \'100000000064542\' WHERE fieldname = \'EVENTID\'', '20170316010513', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1543', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064542\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316010513,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316010513', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1544', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316010520', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1545', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316010520', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1546', 'UPDATE easequence SET maxid = \'100000000064543\' WHERE fieldname = \'EVENTID\'', '20170316010520', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1547', 'UPDATE easequence SET maxid = \'100000000064544\' WHERE fieldname = \'EVENTID\'', '20170316010520', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1548', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064544\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316010520,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316010520', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1549', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316010525', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1550', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316010525', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1551', 'UPDATE easequence SET maxid = \'100000000064545\' WHERE fieldname = \'EVENTID\'', '20170316010525', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1552', 'UPDATE easequence SET maxid = \'100000000064546\' WHERE fieldname = \'EVENTID\'', '20170316010525', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1553', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064546\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316010525,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316010525', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1554', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316010608', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1555', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316010608', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1556', 'UPDATE easequence SET maxid = \'100000000064547\' WHERE fieldname = \'EVENTID\'', '20170316010608', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1557', 'UPDATE easequence SET maxid = \'100000000064548\' WHERE fieldname = \'EVENTID\'', '20170316010608', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1558', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064548\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316010608,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316010608', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1559', 'DELETE      FROM eahttpsession', '20170316224651', '82', '2', '3');
INSERT INTO `eajdbcmonitor` VALUES ('1560', 'SELECT codeid, field, fieldname, code, codedesc, sortno     FROM eacode  WHERE enabled = \'1\' ORDER BY codeid , sortno', '20170316224651', '49', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1561', 'SELECT paramid, paramkey, paramvalue     FROM eaparam', '20170316224651', '34', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1562', 'SELECT a.userid, a.username, a.ACCOUNT, a.PASSWORD, a.sex, a.deptid, b.theme, b.layout,          (SELECT customid             FROM eadept            WHERE deptid = a.deptid) AS customid,          (SELECT deptname             FROM eadept            WHERE deptid = a.deptid) AS deptname     FROM eauser a, eausersubinfo b     WHERE a.userid = b.userid and a.locked = \'0\' and a.enabled = \'1\'       AND      a.account = \'developer\'', '20170316224911', '15', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1563', 'SELECT        sessionid as sessionID, userid, username, account, createtime as sessionCreatedTime, explorer, loginip as loginIP        FROM eahttpsession where sessionid = \'node014c0gkx0h1sup1km9tskpwggm10\'', '20170316224911', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1564', 'INSERT INTO eahttpsession (      sessionid, username, account,       createtime, loginip,userid,explorer)    VALUES (\'node014c0gkx0h1sup1km9tskpwggm10\', \'开发人员\', \'developer\',       \'2017-03-16 22:49:11\', \'0:0:0:0:0:0:0:1\', \'10000001\',\'CHROME/55.0.\')', '20170316224911', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1565', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EVENTID\'', '20170316224911', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1566', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'XMID\'', '20170316224911', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1567', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'CODEID\'', '20170316224911', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1568', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EXCEPTIONID\'', '20170316224911', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1569', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_ROLE\'', '20170316224911', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1570', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARAMID\'', '20170316224911', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1571', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'ROLEID\'', '20170316224911', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1572', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_USERMENUMAP\'', '20170316224912', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1573', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_USER\'', '20170316224912', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1574', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'USERID\'', '20170316224912', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1575', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'FILEID\'', '20170316224912', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1576', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARTID\'', '20170316224912', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1577', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_EAROLEAUTHORIZE\'', '20170316224912', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1578', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARTID\'', '20170316224912', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1579', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EVENTID\'', '20170316224912', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1580', 'UPDATE easequence SET maxid = \'100000000064549\' WHERE fieldname = \'EVENTID\'', '20170316224912', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1581', 'UPDATE easequence SET maxid = \'100000000064550\' WHERE fieldname = \'EVENTID\'', '20170316224912', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1582', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064550\', \'10000001\', \'developer\',       \'开发人员\', \'登录系统\', 20170316224911,\'/g5/login/login.do\',\'\',\'\')', '20170316224912', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1583', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316224913', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1584', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316224913', '9', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1585', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316224913', '20', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1586', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316224913', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1587', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316224913', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1588', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316224913', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1589', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316224913', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1590', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316224913', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1591', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316224913', '24', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1592', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316224913', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1593', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316224913', '53', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1594', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316224913', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1595', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316224913', '8', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1596', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316224913', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1597', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316224913', '56', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1598', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316224913', '12', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1599', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316224913', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1600', 'UPDATE easequence SET maxid = \'100000000064551\' WHERE fieldname = \'EVENTID\'', '20170316224913', '14', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1601', 'UPDATE easequence SET maxid = \'100000000064552\' WHERE fieldname = \'EVENTID\'', '20170316224913', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1602', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064552\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316224913,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316224913', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1603', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316224914', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1604', 'UPDATE easequence SET maxid = \'100000000064553\' WHERE fieldname = \'EVENTID\'', '20170316224914', '13', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1605', 'UPDATE easequence SET maxid = \'100000000064554\' WHERE fieldname = \'EVENTID\'', '20170316224914', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1606', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064554\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316224914,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316224914', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1607', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316224916', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1608', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316224916', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1609', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316224916', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1610', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316224916', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1611', 'UPDATE easequence SET maxid = \'100000000064555\' WHERE fieldname = \'EVENTID\'', '20170316224916', '6', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1612', 'UPDATE easequence SET maxid = \'100000000064556\' WHERE fieldname = \'EVENTID\'', '20170316224916', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1613', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064556\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316224916,\'/g5/goods/init.do\',\'init\',0)', '20170316224916', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1614', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316224917', '241', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1615', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316224917', '5', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1616', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316224917', '7', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1617', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316224917', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1618', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316224917', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1619', 'UPDATE easequence SET maxid = \'100000000064557\' WHERE fieldname = \'EVENTID\'', '20170316224917', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1620', 'UPDATE easequence SET maxid = \'100000000064558\' WHERE fieldname = \'EVENTID\'', '20170316224917', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1621', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064558\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316224917,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316224917', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1622', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316224920', '5', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1623', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316224920', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1624', 'UPDATE easequence SET maxid = \'100000000064559\' WHERE fieldname = \'EVENTID\'', '20170316224920', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1625', 'UPDATE easequence SET maxid = \'100000000064560\' WHERE fieldname = \'EVENTID\'', '20170316224920', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1626', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064560\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316224920,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316224920', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1627', 'SELECT t.* FROM t_supplier t', '20170316225049', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1628', 'UPDATE easequence SET maxid = \'100000000064561\' WHERE fieldname = \'EVENTID\'', '20170316225049', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1629', 'UPDATE easequence SET maxid = \'100000000064562\' WHERE fieldname = \'EVENTID\'', '20170316225049', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1630', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064562\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getList]\', 20170316225049,\'/g5/api/supplier/getList.do\',\'getList\',0)', '20170316225049', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1631', 'select t.* from t_type t', '20170316225049', '5', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1632', 'UPDATE easequence SET maxid = \'100000000064563\' WHERE fieldname = \'EVENTID\'', '20170316225049', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1633', 'UPDATE easequence SET maxid = \'100000000064564\' WHERE fieldname = \'EVENTID\'', '20170316225049', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1634', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064564\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getList]\', 20170316225049,\'/g5/api/type/getList.do\',\'getList\',0)', '20170316225049', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1635', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316225051', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1636', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316225051', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1637', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316225051', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1638', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316225051', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1639', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316225051', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1640', 'UPDATE easequence SET maxid = \'100000000064565\' WHERE fieldname = \'EVENTID\'', '20170316225051', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1641', 'UPDATE easequence SET maxid = \'100000000064566\' WHERE fieldname = \'EVENTID\'', '20170316225051', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1642', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064566\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316225051,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316225051', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1643', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316225052', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1644', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316225052', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1645', 'UPDATE easequence SET maxid = \'100000000064567\' WHERE fieldname = \'EVENTID\'', '20170316225052', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1646', 'UPDATE easequence SET maxid = \'100000000064568\' WHERE fieldname = \'EVENTID\'', '20170316225052', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1647', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064568\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316225052,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316225052', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1648', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316225411', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1649', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316225411', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1650', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316225411', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1651', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316225411', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1652', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316225411', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1653', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316225411', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1654', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316225411', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1655', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316225411', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1656', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316225411', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1657', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316225411', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1658', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316225411', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1659', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316225411', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1660', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316225411', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1661', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316225411', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1662', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316225411', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1663', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316225411', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1664', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316225411', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1665', 'UPDATE easequence SET maxid = \'100000000064569\' WHERE fieldname = \'EVENTID\'', '20170316225411', '7', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1666', 'UPDATE easequence SET maxid = \'100000000064570\' WHERE fieldname = \'EVENTID\'', '20170316225411', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1667', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064570\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316225411,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316225411', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1668', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316225411', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1669', 'UPDATE easequence SET maxid = \'100000000064571\' WHERE fieldname = \'EVENTID\'', '20170316225411', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1670', 'UPDATE easequence SET maxid = \'100000000064572\' WHERE fieldname = \'EVENTID\'', '20170316225411', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1671', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064572\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316225411,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316225411', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1672', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316225416', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1673', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316225416', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1674', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316225416', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1675', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316225416', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1676', 'UPDATE easequence SET maxid = \'100000000064573\' WHERE fieldname = \'EVENTID\'', '20170316225416', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1677', 'UPDATE easequence SET maxid = \'100000000064574\' WHERE fieldname = \'EVENTID\'', '20170316225416', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1678', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064574\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316225416,\'/g5/goods/init.do\',\'init\',0)', '20170316225416', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1679', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316225416', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1680', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316225416', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1681', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316225416', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1682', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316225416', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1683', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316225416', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1684', 'UPDATE easequence SET maxid = \'100000000064575\' WHERE fieldname = \'EVENTID\'', '20170316225416', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1685', 'UPDATE easequence SET maxid = \'100000000064576\' WHERE fieldname = \'EVENTID\'', '20170316225416', '8', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1686', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064576\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316225416,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316225416', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1687', 'select * from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1                        limit 0, 20', '20170316225420', '12', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1688', 'select count(t.id) from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1', '20170316225420', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1689', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 2', '20170316225420', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1690', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 5', '20170316225420', '10', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1691', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 6', '20170316225420', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1692', 'UPDATE easequence SET maxid = \'100000000064577\' WHERE fieldname = \'EVENTID\'', '20170316225420', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1693', 'UPDATE easequence SET maxid = \'100000000064578\' WHERE fieldname = \'EVENTID\'', '20170316225420', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1694', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064578\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316225420,\'/g5/api/goodsAttr/getAll\',\'getAll\',0)', '20170316225420', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1695', 'select * from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1                        limit 0, 20', '20170316225432', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1696', 'select count(t.id) from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1', '20170316225432', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1697', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 2', '20170316225432', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1698', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 5', '20170316225432', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1699', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 6', '20170316225432', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1700', 'UPDATE easequence SET maxid = \'100000000064579\' WHERE fieldname = \'EVENTID\'', '20170316225432', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1701', 'UPDATE easequence SET maxid = \'100000000064580\' WHERE fieldname = \'EVENTID\'', '20170316225432', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1702', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064580\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316225432,\'/g5/api/goodsAttr/getAll\',\'getAll\',0)', '20170316225432', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1703', 'select * from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1                        limit 0, 20', '20170316225457', '16', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1704', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 2', '20170316225459', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1705', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 5', '20170316225459', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1706', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 6', '20170316225459', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1707', 'select count(t.id) from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1', '20170316225519', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1708', 'UPDATE easequence SET maxid = \'100000000064581\' WHERE fieldname = \'EVENTID\'', '20170316225519', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1709', 'UPDATE easequence SET maxid = \'100000000064582\' WHERE fieldname = \'EVENTID\'', '20170316225519', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1710', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064582\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316225519,\'/g5/api/goodsAttr/getAll\',\'getAll\',0)', '20170316225519', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1711', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316225640', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1712', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316225640', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1713', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316225640', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1714', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316225640', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1715', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316225640', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1716', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316225640', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1717', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316225640', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1718', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316225640', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1719', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316225640', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1720', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316225640', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1721', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316225640', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1722', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316225640', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1723', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316225640', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1724', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316225640', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1725', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316225640', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1726', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316225640', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1727', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316225640', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1728', 'UPDATE easequence SET maxid = \'100000000064583\' WHERE fieldname = \'EVENTID\'', '20170316225640', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1729', 'UPDATE easequence SET maxid = \'100000000064584\' WHERE fieldname = \'EVENTID\'', '20170316225640', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1730', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064584\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316225640,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316225640', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1731', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316225641', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1732', 'UPDATE easequence SET maxid = \'100000000064585\' WHERE fieldname = \'EVENTID\'', '20170316225641', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1733', 'UPDATE easequence SET maxid = \'100000000064586\' WHERE fieldname = \'EVENTID\'', '20170316225641', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1734', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064586\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316225641,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316225641', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1735', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316225642', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1736', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316225642', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1737', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316225642', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1738', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316225642', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1739', 'UPDATE easequence SET maxid = \'100000000064587\' WHERE fieldname = \'EVENTID\'', '20170316225642', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1740', 'UPDATE easequence SET maxid = \'100000000064588\' WHERE fieldname = \'EVENTID\'', '20170316225642', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1741', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064588\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316225642,\'/g5/goods/init.do\',\'init\',0)', '20170316225642', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1742', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316225642', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1743', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316225642', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1744', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316225642', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1745', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316225642', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1746', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316225642', '9', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1747', 'UPDATE easequence SET maxid = \'100000000064589\' WHERE fieldname = \'EVENTID\'', '20170316225642', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1748', 'UPDATE easequence SET maxid = \'100000000064590\' WHERE fieldname = \'EVENTID\'', '20170316225642', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1749', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064590\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316225642,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316225642', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1750', 'select * from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1                        limit 0, 20', '20170316225647', '5', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1751', 'select count(t.id) from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1', '20170316225647', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1752', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 2', '20170316225647', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1753', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 5', '20170316225647', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1754', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 6', '20170316225647', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1755', 'UPDATE easequence SET maxid = \'100000000064591\' WHERE fieldname = \'EVENTID\'', '20170316225647', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1756', 'UPDATE easequence SET maxid = \'100000000064592\' WHERE fieldname = \'EVENTID\'', '20170316225647', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1757', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064592\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316225647,\'/g5/api/goodsAttr/getAll\',\'getAll\',0)', '20170316225647', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1758', 'select * from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1                        limit 0, 20', '20170316225705', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1759', 'select count(t.id) from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1', '20170316225705', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1760', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 2', '20170316225705', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1761', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 5', '20170316225705', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1762', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 6', '20170316225705', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1763', 'UPDATE easequence SET maxid = \'100000000064593\' WHERE fieldname = \'EVENTID\'', '20170316225705', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1764', 'UPDATE easequence SET maxid = \'100000000064594\' WHERE fieldname = \'EVENTID\'', '20170316225705', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1765', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064594\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316225705,\'/g5/api/goodsAttr/getAll\',\'getAll\',0)', '20170316225705', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1766', 'select * from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1                        limit 0, 20', '20170316225717', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1767', 'select count(t.id) from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1', '20170316225717', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1768', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 2', '20170316225717', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1769', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 5', '20170316225717', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1770', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 6', '20170316225717', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1771', 'UPDATE easequence SET maxid = \'100000000064595\' WHERE fieldname = \'EVENTID\'', '20170316225717', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1772', 'UPDATE easequence SET maxid = \'100000000064596\' WHERE fieldname = \'EVENTID\'', '20170316225717', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1773', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064596\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316225717,\'/g5/api/goodsAttr/getAll\',\'getAll\',0)', '20170316225717', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1774', 'select * from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1                        limit 0, 20', '20170316225729', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1775', 'select count(t.id) from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1', '20170316225729', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1776', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 2', '20170316225729', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1777', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 5', '20170316225729', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1778', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 6', '20170316225729', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1779', 'UPDATE easequence SET maxid = \'100000000064597\' WHERE fieldname = \'EVENTID\'', '20170316225729', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1780', 'UPDATE easequence SET maxid = \'100000000064598\' WHERE fieldname = \'EVENTID\'', '20170316225729', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1781', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064598\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316225729,\'/g5/api/goodsAttr/getAll\',\'getAll\',0)', '20170316225729', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1782', 'select * from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1                        limit 0, 20', '20170316225850', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1783', 'select count(t.id) from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1', '20170316225850', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1784', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 2', '20170316225850', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1785', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 5', '20170316225850', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1786', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 6', '20170316225850', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1787', 'UPDATE easequence SET maxid = \'100000000064599\' WHERE fieldname = \'EVENTID\'', '20170316225850', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1788', 'UPDATE easequence SET maxid = \'100000000064600\' WHERE fieldname = \'EVENTID\'', '20170316225850', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1789', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064600\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316225850,\'/g5/api/goodsAttr/getAll\',\'getAll\',0)', '20170316225850', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1790', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316225852', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1791', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316225853', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1792', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316225853', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1793', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316225853', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1794', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316225853', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1795', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316225853', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1796', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316225853', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1797', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316225853', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1798', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316225853', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1799', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316225853', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1800', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316225853', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1801', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316225853', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1802', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316225853', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1803', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316225853', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1804', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316225853', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1805', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316225853', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1806', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316225853', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1807', 'UPDATE easequence SET maxid = \'100000000064601\' WHERE fieldname = \'EVENTID\'', '20170316225853', '7', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1808', 'UPDATE easequence SET maxid = \'100000000064602\' WHERE fieldname = \'EVENTID\'', '20170316225853', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1809', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064602\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316225853,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316225853', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1810', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316225853', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1811', 'UPDATE easequence SET maxid = \'100000000064603\' WHERE fieldname = \'EVENTID\'', '20170316225854', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1812', 'UPDATE easequence SET maxid = \'100000000064604\' WHERE fieldname = \'EVENTID\'', '20170316225854', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1813', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064604\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316225854,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316225854', '33', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1814', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316225855', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1815', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316225855', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1816', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316225855', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1817', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316225855', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1818', 'UPDATE easequence SET maxid = \'100000000064605\' WHERE fieldname = \'EVENTID\'', '20170316225855', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1819', 'UPDATE easequence SET maxid = \'100000000064606\' WHERE fieldname = \'EVENTID\'', '20170316225855', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1820', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064606\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316225855,\'/g5/goods/init.do\',\'init\',0)', '20170316225855', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1821', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316225855', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1822', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316225855', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1823', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316225855', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1824', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316225855', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1825', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316225855', '20', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1826', 'UPDATE easequence SET maxid = \'100000000064607\' WHERE fieldname = \'EVENTID\'', '20170316225855', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1827', 'UPDATE easequence SET maxid = \'100000000064608\' WHERE fieldname = \'EVENTID\'', '20170316225855', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1828', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064608\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316225855,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316225855', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1829', 'select * from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1                        limit 0, 20', '20170316225856', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1830', 'select count(t.id) from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1', '20170316225856', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1831', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 2', '20170316225856', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1832', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 5', '20170316225856', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1833', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 6', '20170316225856', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1834', 'UPDATE easequence SET maxid = \'100000000064609\' WHERE fieldname = \'EVENTID\'', '20170316225856', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1835', 'UPDATE easequence SET maxid = \'100000000064610\' WHERE fieldname = \'EVENTID\'', '20170316225856', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1836', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064610\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316225856,\'/g5/api/goodsAttr/getAll\',\'getAll\',0)', '20170316225856', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1837', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230201', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1838', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316230201', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1839', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316230201', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1840', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316230201', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1841', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230201', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1842', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316230201', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1843', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230201', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1844', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316230201', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1845', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230201', '7', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1846', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316230202', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1847', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230202', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1848', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316230202', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1849', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230202', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1850', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316230202', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1851', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230202', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1852', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316230202', '14', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1853', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230202', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1854', 'UPDATE easequence SET maxid = \'100000000064611\' WHERE fieldname = \'EVENTID\'', '20170316230202', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1855', 'UPDATE easequence SET maxid = \'100000000064612\' WHERE fieldname = \'EVENTID\'', '20170316230202', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1856', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064612\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316230202,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316230202', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1857', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230202', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1858', 'UPDATE easequence SET maxid = \'100000000064613\' WHERE fieldname = \'EVENTID\'', '20170316230202', '6', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1859', 'UPDATE easequence SET maxid = \'100000000064614\' WHERE fieldname = \'EVENTID\'', '20170316230202', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1860', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064614\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316230202,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316230202', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1861', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230203', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1862', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316230203', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1863', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316230203', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1864', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316230203', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1865', 'UPDATE easequence SET maxid = \'100000000064615\' WHERE fieldname = \'EVENTID\'', '20170316230203', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1866', 'UPDATE easequence SET maxid = \'100000000064616\' WHERE fieldname = \'EVENTID\'', '20170316230203', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1867', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064616\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316230203,\'/g5/goods/init.do\',\'init\',0)', '20170316230203', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1868', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316230204', '5', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1869', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316230204', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1870', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316230204', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1871', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316230204', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1872', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316230204', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1873', 'UPDATE easequence SET maxid = \'100000000064617\' WHERE fieldname = \'EVENTID\'', '20170316230204', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1874', 'UPDATE easequence SET maxid = \'100000000064618\' WHERE fieldname = \'EVENTID\'', '20170316230204', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1875', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064618\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316230204,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316230204', '4', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1876', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230222', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1877', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316230222', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1878', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316230222', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1879', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316230222', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1880', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230222', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1881', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316230222', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1882', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230222', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1883', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316230222', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1884', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230222', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1885', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316230222', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1886', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230222', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1887', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316230222', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1888', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230222', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1889', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316230222', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1890', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230222', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1891', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316230222', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1892', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230222', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1893', 'UPDATE easequence SET maxid = \'100000000064619\' WHERE fieldname = \'EVENTID\'', '20170316230222', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1894', 'UPDATE easequence SET maxid = \'100000000064620\' WHERE fieldname = \'EVENTID\'', '20170316230222', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1895', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064620\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316230222,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316230222', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1896', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230222', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1897', 'UPDATE easequence SET maxid = \'100000000064621\' WHERE fieldname = \'EVENTID\'', '20170316230223', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1898', 'UPDATE easequence SET maxid = \'100000000064622\' WHERE fieldname = \'EVENTID\'', '20170316230223', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1899', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064622\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316230223,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316230223', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1900', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230224', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1901', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316230224', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1902', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316230224', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1903', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316230224', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1904', 'UPDATE easequence SET maxid = \'100000000064623\' WHERE fieldname = \'EVENTID\'', '20170316230224', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1905', 'UPDATE easequence SET maxid = \'100000000064624\' WHERE fieldname = \'EVENTID\'', '20170316230224', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1906', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064624\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316230224,\'/g5/goods/init.do\',\'init\',0)', '20170316230224', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1907', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316230224', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1908', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316230224', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1909', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316230224', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1910', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316230224', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1911', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316230224', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1912', 'UPDATE easequence SET maxid = \'100000000064625\' WHERE fieldname = \'EVENTID\'', '20170316230224', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1913', 'UPDATE easequence SET maxid = \'100000000064626\' WHERE fieldname = \'EVENTID\'', '20170316230224', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1914', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064626\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316230224,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316230224', '9', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1915', 'select * from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1                        limit 0, 20', '20170316230251', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1916', 'select count(t.id) from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1', '20170316230251', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1917', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 2', '20170316230251', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1918', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 5', '20170316230251', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1919', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 6', '20170316230251', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1920', 'UPDATE easequence SET maxid = \'100000000064627\' WHERE fieldname = \'EVENTID\'', '20170316230251', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1921', 'UPDATE easequence SET maxid = \'100000000064628\' WHERE fieldname = \'EVENTID\'', '20170316230251', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1922', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064628\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316230251,\'/g5/api/goodsAttr/getAll\',\'getAll\',0)', '20170316230251', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1923', 'select * from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1                        limit 0, 20', '20170316230257', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1924', 'select count(t.id) from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1', '20170316230257', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1925', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 2', '20170316230257', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1926', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 5', '20170316230257', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1927', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 6', '20170316230257', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1928', 'UPDATE easequence SET maxid = \'100000000064629\' WHERE fieldname = \'EVENTID\'', '20170316230257', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1929', 'UPDATE easequence SET maxid = \'100000000064630\' WHERE fieldname = \'EVENTID\'', '20170316230257', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1930', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064630\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316230257,\'/g5/api/goodsAttr/getAll\',\'getAll\',0)', '20170316230257', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1931', 'select * from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1                        limit 0, 20', '20170316230301', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1932', 'select count(t.id) from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1', '20170316230301', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1933', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 2', '20170316230301', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1934', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 5', '20170316230301', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1935', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 6', '20170316230301', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1936', 'UPDATE easequence SET maxid = \'100000000064631\' WHERE fieldname = \'EVENTID\'', '20170316230301', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1937', 'UPDATE easequence SET maxid = \'100000000064632\' WHERE fieldname = \'EVENTID\'', '20170316230301', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1938', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064632\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316230301,\'/g5/api/goodsAttr/getAll\',\'getAll\',0)', '20170316230301', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1939', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230506', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1940', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316230506', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1941', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316230506', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1942', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316230506', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1943', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230506', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1944', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316230506', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1945', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230506', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1946', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316230506', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1947', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230506', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1948', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316230506', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1949', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230506', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1950', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316230506', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1951', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230506', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1952', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316230506', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1953', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230506', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1954', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316230506', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1955', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230506', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1956', 'UPDATE easequence SET maxid = \'100000000064633\' WHERE fieldname = \'EVENTID\'', '20170316230506', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1957', 'UPDATE easequence SET maxid = \'100000000064634\' WHERE fieldname = \'EVENTID\'', '20170316230506', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1958', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064634\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316230506,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316230506', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1959', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230507', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1960', 'UPDATE easequence SET maxid = \'100000000064635\' WHERE fieldname = \'EVENTID\'', '20170316230507', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1961', 'UPDATE easequence SET maxid = \'100000000064636\' WHERE fieldname = \'EVENTID\'', '20170316230507', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1962', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064636\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316230507,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316230507', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1963', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230508', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1964', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316230508', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1965', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316230508', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1966', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316230509', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1967', 'UPDATE easequence SET maxid = \'100000000064637\' WHERE fieldname = \'EVENTID\'', '20170316230509', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1968', 'UPDATE easequence SET maxid = \'100000000064638\' WHERE fieldname = \'EVENTID\'', '20170316230509', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1969', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064638\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316230509,\'/g5/goods/init.do\',\'init\',0)', '20170316230509', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1970', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316230509', '6', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1971', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316230509', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('1972', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316230509', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1973', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316230509', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1974', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316230509', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1975', 'UPDATE easequence SET maxid = \'100000000064639\' WHERE fieldname = \'EVENTID\'', '20170316230509', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1976', 'UPDATE easequence SET maxid = \'100000000064640\' WHERE fieldname = \'EVENTID\'', '20170316230509', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1977', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064640\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316230509,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316230509', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1978', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230531', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1979', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316230531', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1980', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316230531', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1981', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316230531', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1982', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230531', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1983', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316230531', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1984', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230531', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1985', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316230531', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1986', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230531', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1987', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316230531', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1988', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230531', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1989', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316230531', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1990', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230531', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1991', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316230531', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1992', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230531', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1993', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316230531', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1994', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230531', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1995', 'UPDATE easequence SET maxid = \'100000000064641\' WHERE fieldname = \'EVENTID\'', '20170316230531', '9', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1996', 'UPDATE easequence SET maxid = \'100000000064642\' WHERE fieldname = \'EVENTID\'', '20170316230531', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('1997', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064642\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316230531,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316230531', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('1998', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230532', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('1999', 'UPDATE easequence SET maxid = \'100000000064643\' WHERE fieldname = \'EVENTID\'', '20170316230532', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2000', 'UPDATE easequence SET maxid = \'100000000064644\' WHERE fieldname = \'EVENTID\'', '20170316230532', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2001', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064644\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316230532,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316230532', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2002', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230533', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2003', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316230533', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2004', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316230533', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2005', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316230533', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2006', 'UPDATE easequence SET maxid = \'100000000064645\' WHERE fieldname = \'EVENTID\'', '20170316230533', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2007', 'UPDATE easequence SET maxid = \'100000000064646\' WHERE fieldname = \'EVENTID\'', '20170316230533', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2008', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064646\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316230533,\'/g5/goods/init.do\',\'init\',0)', '20170316230533', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2009', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316230534', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2010', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316230534', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2011', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316230534', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2012', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316230534', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2013', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316230534', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2014', 'UPDATE easequence SET maxid = \'100000000064647\' WHERE fieldname = \'EVENTID\'', '20170316230534', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2015', 'UPDATE easequence SET maxid = \'100000000064648\' WHERE fieldname = \'EVENTID\'', '20170316230534', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2016', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064648\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316230534,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316230534', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2017', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316230536', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2018', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316230536', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2019', 'UPDATE easequence SET maxid = \'100000000064649\' WHERE fieldname = \'EVENTID\'', '20170316230536', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2020', 'UPDATE easequence SET maxid = \'100000000064650\' WHERE fieldname = \'EVENTID\'', '20170316230536', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2021', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064650\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316230536,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316230536', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2022', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230540', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2023', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316230540', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2024', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316230540', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2025', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316230540', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2026', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230540', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2027', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316230540', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2028', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230540', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2029', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316230540', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2030', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230540', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2031', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316230540', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2032', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230540', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2033', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316230540', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2034', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230540', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2035', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316230540', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2036', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230540', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2037', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316230540', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2038', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230540', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2039', 'UPDATE easequence SET maxid = \'100000000064651\' WHERE fieldname = \'EVENTID\'', '20170316230540', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2040', 'UPDATE easequence SET maxid = \'100000000064652\' WHERE fieldname = \'EVENTID\'', '20170316230540', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2041', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064652\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316230540,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316230540', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2042', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230540', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2043', 'UPDATE easequence SET maxid = \'100000000064653\' WHERE fieldname = \'EVENTID\'', '20170316230541', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2044', 'UPDATE easequence SET maxid = \'100000000064654\' WHERE fieldname = \'EVENTID\'', '20170316230541', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2045', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064654\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316230541,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316230541', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2046', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230542', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2047', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316230542', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2048', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316230542', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2049', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316230542', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2050', 'UPDATE easequence SET maxid = \'100000000064655\' WHERE fieldname = \'EVENTID\'', '20170316230542', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2051', 'UPDATE easequence SET maxid = \'100000000064656\' WHERE fieldname = \'EVENTID\'', '20170316230542', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2052', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064656\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316230542,\'/g5/goods/init.do\',\'init\',0)', '20170316230542', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2053', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316230542', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2054', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316230542', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2055', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316230542', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2056', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316230542', '10', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2057', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316230542', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2058', 'UPDATE easequence SET maxid = \'100000000064657\' WHERE fieldname = \'EVENTID\'', '20170316230543', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2059', 'UPDATE easequence SET maxid = \'100000000064658\' WHERE fieldname = \'EVENTID\'', '20170316230543', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2060', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064658\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316230543,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316230543', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2061', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316230544', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2062', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316230544', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2063', 'UPDATE easequence SET maxid = \'100000000064659\' WHERE fieldname = \'EVENTID\'', '20170316230544', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2064', 'UPDATE easequence SET maxid = \'100000000064660\' WHERE fieldname = \'EVENTID\'', '20170316230544', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2065', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064660\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316230544,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316230544', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2066', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316230617', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2067', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316230617', '1', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2068', 'UPDATE easequence SET maxid = \'100000000064661\' WHERE fieldname = \'EVENTID\'', '20170316230617', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2069', 'UPDATE easequence SET maxid = \'100000000064662\' WHERE fieldname = \'EVENTID\'', '20170316230617', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2070', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064662\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316230617,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316230617', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2071', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316230617', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2072', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316230617', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2073', 'UPDATE easequence SET maxid = \'100000000064663\' WHERE fieldname = \'EVENTID\'', '20170316230617', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2074', 'UPDATE easequence SET maxid = \'100000000064664\' WHERE fieldname = \'EVENTID\'', '20170316230617', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2075', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064664\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316230617,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316230617', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2076', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316230618', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2077', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316230618', '1', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2078', 'UPDATE easequence SET maxid = \'100000000064665\' WHERE fieldname = \'EVENTID\'', '20170316230618', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2079', 'UPDATE easequence SET maxid = \'100000000064666\' WHERE fieldname = \'EVENTID\'', '20170316230618', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2080', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064666\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316230618,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316230618', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2081', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316230618', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2082', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316230618', '1', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2083', 'UPDATE easequence SET maxid = \'100000000064667\' WHERE fieldname = \'EVENTID\'', '20170316230618', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2084', 'UPDATE easequence SET maxid = \'100000000064668\' WHERE fieldname = \'EVENTID\'', '20170316230618', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2085', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064668\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316230618,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316230618', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2086', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316230618', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2087', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316230618', '1', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2088', 'UPDATE easequence SET maxid = \'100000000064669\' WHERE fieldname = \'EVENTID\'', '20170316230618', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2089', 'UPDATE easequence SET maxid = \'100000000064670\' WHERE fieldname = \'EVENTID\'', '20170316230618', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2090', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064670\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316230618,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316230618', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2091', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230633', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2092', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316230633', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2093', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316230633', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2094', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316230633', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2095', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230633', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2096', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316230633', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2097', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230633', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2098', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316230633', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2099', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230633', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2100', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316230633', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2101', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230633', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2102', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316230633', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2103', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230633', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2104', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316230633', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2105', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230633', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2106', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316230633', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2107', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230633', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2108', 'UPDATE easequence SET maxid = \'100000000064671\' WHERE fieldname = \'EVENTID\'', '20170316230633', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2109', 'UPDATE easequence SET maxid = \'100000000064672\' WHERE fieldname = \'EVENTID\'', '20170316230633', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2110', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064672\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316230633,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316230633', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2111', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230634', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2112', 'UPDATE easequence SET maxid = \'100000000064673\' WHERE fieldname = \'EVENTID\'', '20170316230634', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2113', 'UPDATE easequence SET maxid = \'100000000064674\' WHERE fieldname = \'EVENTID\'', '20170316230634', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2114', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064674\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316230634,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316230634', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2115', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230637', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2116', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316230637', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2117', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316230637', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2118', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316230637', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2119', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230637', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2120', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316230637', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2121', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230637', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2122', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316230637', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2123', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230637', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2124', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316230637', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2125', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230637', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2126', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316230637', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2127', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230637', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2128', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316230637', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2129', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230637', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2130', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316230637', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2131', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316230637', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2132', 'UPDATE easequence SET maxid = \'100000000064675\' WHERE fieldname = \'EVENTID\'', '20170316230637', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2133', 'UPDATE easequence SET maxid = \'100000000064676\' WHERE fieldname = \'EVENTID\'', '20170316230637', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2134', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064676\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316230637,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316230637', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2135', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230637', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2136', 'UPDATE easequence SET maxid = \'100000000064677\' WHERE fieldname = \'EVENTID\'', '20170316230638', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2137', 'UPDATE easequence SET maxid = \'100000000064678\' WHERE fieldname = \'EVENTID\'', '20170316230638', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2138', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064678\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316230638,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316230638', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2139', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316230638', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2140', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316230638', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2141', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316230638', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2142', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316230639', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2143', 'UPDATE easequence SET maxid = \'100000000064679\' WHERE fieldname = \'EVENTID\'', '20170316230639', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2144', 'UPDATE easequence SET maxid = \'100000000064680\' WHERE fieldname = \'EVENTID\'', '20170316230639', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2145', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064680\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316230639,\'/g5/goods/init.do\',\'init\',0)', '20170316230639', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2146', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316230639', '5', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2147', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316230639', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2148', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316230639', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2149', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316230639', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2150', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316230639', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2151', 'UPDATE easequence SET maxid = \'100000000064681\' WHERE fieldname = \'EVENTID\'', '20170316230639', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2152', 'UPDATE easequence SET maxid = \'100000000064682\' WHERE fieldname = \'EVENTID\'', '20170316230639', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2153', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064682\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316230639,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316230639', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2154', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316230642', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2155', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316230642', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2156', 'UPDATE easequence SET maxid = \'100000000064683\' WHERE fieldname = \'EVENTID\'', '20170316230642', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2157', 'UPDATE easequence SET maxid = \'100000000064684\' WHERE fieldname = \'EVENTID\'', '20170316230642', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2158', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064684\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316230642,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316230642', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2159', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316230647', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2160', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316230647', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2161', 'UPDATE easequence SET maxid = \'100000000064685\' WHERE fieldname = \'EVENTID\'', '20170316230647', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2162', 'UPDATE easequence SET maxid = \'100000000064686\' WHERE fieldname = \'EVENTID\'', '20170316230647', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2163', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064686\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316230647,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316230647', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2164', 'DELETE      FROM eahttpsession', '20170316233147', '37', '1', '3');
INSERT INTO `eajdbcmonitor` VALUES ('2165', 'SELECT codeid, field, fieldname, code, codedesc, sortno     FROM eacode  WHERE enabled = \'1\' ORDER BY codeid , sortno', '20170316233147', '30', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2166', 'SELECT paramid, paramkey, paramvalue     FROM eaparam', '20170316233147', '11', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2167', 'SELECT a.userid, a.username, a.ACCOUNT, a.PASSWORD, a.sex, a.deptid, b.theme, b.layout,          (SELECT customid             FROM eadept            WHERE deptid = a.deptid) AS customid,          (SELECT deptname             FROM eadept            WHERE deptid = a.deptid) AS deptname     FROM eauser a, eausersubinfo b     WHERE a.userid = b.userid and a.locked = \'0\' and a.enabled = \'1\'       AND      a.account = \'developer\'', '20170316233206', '11', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2168', 'SELECT        sessionid as sessionID, userid, username, account, createtime as sessionCreatedTime, explorer, loginip as loginIP        FROM eahttpsession where sessionid = \'node0f1hmgzn93u7p1tzgtx2jagpv30\'', '20170316233206', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2169', 'INSERT INTO eahttpsession (      sessionid, username, account,       createtime, loginip,userid,explorer)    VALUES (\'node0f1hmgzn93u7p1tzgtx2jagpv30\', \'开发人员\', \'developer\',       \'2017-03-16 23:32:06\', \'0:0:0:0:0:0:0:1\', \'10000001\',\'CHROME/55.0.\')', '20170316233206', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2170', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EVENTID\'', '20170316233206', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2171', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'XMID\'', '20170316233206', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2172', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'CODEID\'', '20170316233206', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2173', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EXCEPTIONID\'', '20170316233206', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2174', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_ROLE\'', '20170316233206', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2175', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARAMID\'', '20170316233206', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2176', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'ROLEID\'', '20170316233206', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2177', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_USERMENUMAP\'', '20170316233206', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2178', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_USER\'', '20170316233206', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2179', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'USERID\'', '20170316233206', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2180', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'FILEID\'', '20170316233206', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2181', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARTID\'', '20170316233206', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2182', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_EAROLEAUTHORIZE\'', '20170316233206', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2183', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARTID\'', '20170316233206', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2184', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EVENTID\'', '20170316233206', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2185', 'UPDATE easequence SET maxid = \'100000000064687\' WHERE fieldname = \'EVENTID\'', '20170316233206', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2186', 'UPDATE easequence SET maxid = \'100000000064688\' WHERE fieldname = \'EVENTID\'', '20170316233206', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2187', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064688\', \'10000001\', \'developer\',       \'开发人员\', \'登录系统\', 20170316233206,\'/g5/login/login.do\',\'\',\'\')', '20170316233206', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2188', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316233207', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2189', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316233207', '12', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2190', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316233207', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2191', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316233207', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2192', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316233207', '7', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2193', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316233207', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2194', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233207', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2195', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316233207', '10', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2196', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233207', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2197', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316233207', '13', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2198', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233207', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2199', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316233207', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2200', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233207', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2201', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316233207', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2202', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233207', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2203', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316233207', '10', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2204', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233207', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2205', 'UPDATE easequence SET maxid = \'100000000064689\' WHERE fieldname = \'EVENTID\'', '20170316233207', '7', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2206', 'UPDATE easequence SET maxid = \'100000000064690\' WHERE fieldname = \'EVENTID\'', '20170316233207', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2207', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064690\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316233207,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316233207', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2208', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316233209', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2209', 'UPDATE easequence SET maxid = \'100000000064691\' WHERE fieldname = \'EVENTID\'', '20170316233209', '6', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2210', 'UPDATE easequence SET maxid = \'100000000064692\' WHERE fieldname = \'EVENTID\'', '20170316233209', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2211', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064692\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316233209,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316233209', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2212', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316233209', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2213', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316233209', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2214', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316233209', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2215', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316233209', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2216', 'UPDATE easequence SET maxid = \'100000000064693\' WHERE fieldname = \'EVENTID\'', '20170316233209', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2217', 'UPDATE easequence SET maxid = \'100000000064694\' WHERE fieldname = \'EVENTID\'', '20170316233210', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2218', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064694\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316233209,\'/g5/goods/init.do\',\'init\',0)', '20170316233210', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2219', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316233210', '243', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2220', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316233210', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2221', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316233211', '7', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2222', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316233211', '7', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2223', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316233211', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2224', 'UPDATE easequence SET maxid = \'100000000064695\' WHERE fieldname = \'EVENTID\'', '20170316233211', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2225', 'UPDATE easequence SET maxid = \'100000000064696\' WHERE fieldname = \'EVENTID\'', '20170316233211', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2226', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064696\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316233211,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316233211', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2227', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316233216', '10', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2228', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316233216', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2229', 'UPDATE easequence SET maxid = \'100000000064697\' WHERE fieldname = \'EVENTID\'', '20170316233216', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2230', 'UPDATE easequence SET maxid = \'100000000064698\' WHERE fieldname = \'EVENTID\'', '20170316233216', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2231', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064698\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316233216,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316233216', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2232', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316233313', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2233', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316233313', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2234', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316233313', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2235', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316233313', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2236', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316233313', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2237', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316233313', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2238', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233313', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2239', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316233313', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2240', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233313', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2241', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316233313', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2242', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233313', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2243', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316233314', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2244', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233314', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2245', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316233314', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2246', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233314', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2247', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316233314', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2248', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233314', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2249', 'UPDATE easequence SET maxid = \'100000000064699\' WHERE fieldname = \'EVENTID\'', '20170316233314', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2250', 'UPDATE easequence SET maxid = \'100000000064700\' WHERE fieldname = \'EVENTID\'', '20170316233314', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2251', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064700\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316233314,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316233314', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2252', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316233314', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2253', 'UPDATE easequence SET maxid = \'100000000064701\' WHERE fieldname = \'EVENTID\'', '20170316233314', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2254', 'UPDATE easequence SET maxid = \'100000000064702\' WHERE fieldname = \'EVENTID\'', '20170316233314', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2255', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064702\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316233314,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316233314', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2256', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316233315', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2257', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316233315', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2258', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316233315', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2259', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316233315', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2260', 'UPDATE easequence SET maxid = \'100000000064703\' WHERE fieldname = \'EVENTID\'', '20170316233315', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2261', 'UPDATE easequence SET maxid = \'100000000064704\' WHERE fieldname = \'EVENTID\'', '20170316233315', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2262', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064704\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316233315,\'/g5/goods/init.do\',\'init\',0)', '20170316233315', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2263', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316233316', '6', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2264', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316233316', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2265', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316233316', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2266', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316233316', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2267', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316233316', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2268', 'UPDATE easequence SET maxid = \'100000000064705\' WHERE fieldname = \'EVENTID\'', '20170316233316', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2269', 'UPDATE easequence SET maxid = \'100000000064706\' WHERE fieldname = \'EVENTID\'', '20170316233316', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2270', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064706\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316233316,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316233316', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2271', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316233318', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2272', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316233318', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2273', 'UPDATE easequence SET maxid = \'100000000064707\' WHERE fieldname = \'EVENTID\'', '20170316233318', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2274', 'UPDATE easequence SET maxid = \'100000000064708\' WHERE fieldname = \'EVENTID\'', '20170316233318', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2275', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064708\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316233318,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316233318', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2276', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316233437', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2277', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316233437', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2278', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316233437', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2279', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316233437', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2280', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316233437', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2281', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316233437', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2282', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233437', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2283', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316233437', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2284', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233437', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2285', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316233437', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2286', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233437', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2287', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316233437', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2288', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233437', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2289', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316233437', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2290', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233437', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2291', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316233437', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2292', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233437', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2293', 'UPDATE easequence SET maxid = \'100000000064709\' WHERE fieldname = \'EVENTID\'', '20170316233437', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2294', 'UPDATE easequence SET maxid = \'100000000064710\' WHERE fieldname = \'EVENTID\'', '20170316233437', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2295', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064710\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316233437,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316233437', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2296', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316233438', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2297', 'UPDATE easequence SET maxid = \'100000000064711\' WHERE fieldname = \'EVENTID\'', '20170316233438', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2298', 'UPDATE easequence SET maxid = \'100000000064712\' WHERE fieldname = \'EVENTID\'', '20170316233438', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2299', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064712\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316233438,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316233438', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2300', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316233439', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2301', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316233439', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2302', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316233439', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2303', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316233439', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2304', 'UPDATE easequence SET maxid = \'100000000064713\' WHERE fieldname = \'EVENTID\'', '20170316233439', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2305', 'UPDATE easequence SET maxid = \'100000000064714\' WHERE fieldname = \'EVENTID\'', '20170316233439', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2306', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064714\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316233439,\'/g5/goods/init.do\',\'init\',0)', '20170316233439', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2307', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316233439', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2308', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316233439', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2309', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316233440', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2310', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316233440', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2311', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316233440', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2312', 'UPDATE easequence SET maxid = \'100000000064715\' WHERE fieldname = \'EVENTID\'', '20170316233440', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2313', 'UPDATE easequence SET maxid = \'100000000064716\' WHERE fieldname = \'EVENTID\'', '20170316233440', '14', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2314', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064716\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316233440,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316233440', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2315', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316233446', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2316', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316233446', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2317', 'UPDATE easequence SET maxid = \'100000000064717\' WHERE fieldname = \'EVENTID\'', '20170316233446', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2318', 'UPDATE easequence SET maxid = \'100000000064718\' WHERE fieldname = \'EVENTID\'', '20170316233446', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2319', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064718\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316233446,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316233446', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2320', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316233512', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2321', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316233512', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2322', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316233512', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2323', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316233512', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2324', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316233512', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2325', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316233512', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2326', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233512', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2327', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316233512', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2328', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233512', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2329', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316233512', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2330', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233512', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2331', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316233512', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2332', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233512', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2333', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316233512', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2334', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233512', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2335', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316233512', '7', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2336', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233512', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2337', 'UPDATE easequence SET maxid = \'100000000064719\' WHERE fieldname = \'EVENTID\'', '20170316233512', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2338', 'UPDATE easequence SET maxid = \'100000000064720\' WHERE fieldname = \'EVENTID\'', '20170316233512', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2339', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064720\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316233512,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316233512', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2340', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316233513', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2341', 'UPDATE easequence SET maxid = \'100000000064721\' WHERE fieldname = \'EVENTID\'', '20170316233513', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2342', 'UPDATE easequence SET maxid = \'100000000064722\' WHERE fieldname = \'EVENTID\'', '20170316233513', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2343', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064722\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316233513,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316233513', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2344', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316233515', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2345', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316233515', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2346', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316233515', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2347', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316233515', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2348', 'UPDATE easequence SET maxid = \'100000000064723\' WHERE fieldname = \'EVENTID\'', '20170316233515', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2349', 'UPDATE easequence SET maxid = \'100000000064724\' WHERE fieldname = \'EVENTID\'', '20170316233515', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2350', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064724\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316233515,\'/g5/goods/init.do\',\'init\',0)', '20170316233515', '5', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2351', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316233515', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2352', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316233515', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2353', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316233515', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2354', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316233515', '12', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2355', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316233515', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2356', 'UPDATE easequence SET maxid = \'100000000064725\' WHERE fieldname = \'EVENTID\'', '20170316233515', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2357', 'UPDATE easequence SET maxid = \'100000000064726\' WHERE fieldname = \'EVENTID\'', '20170316233515', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2358', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064726\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316233515,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316233515', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2359', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316233517', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2360', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316233517', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2361', 'UPDATE easequence SET maxid = \'100000000064727\' WHERE fieldname = \'EVENTID\'', '20170316233517', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2362', 'UPDATE easequence SET maxid = \'100000000064728\' WHERE fieldname = \'EVENTID\'', '20170316233517', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2363', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064728\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316233517,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316233517', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2364', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316233619', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2365', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316233619', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2366', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316233619', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2367', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316233619', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2368', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316233619', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2369', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316233619', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2370', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233619', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2371', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316233619', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2372', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233619', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2373', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316233619', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2374', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233619', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2375', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316233619', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2376', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233619', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2377', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316233619', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2378', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233619', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2379', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316233619', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2380', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233619', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2381', 'UPDATE easequence SET maxid = \'100000000064729\' WHERE fieldname = \'EVENTID\'', '20170316233619', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2382', 'UPDATE easequence SET maxid = \'100000000064730\' WHERE fieldname = \'EVENTID\'', '20170316233619', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2383', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064730\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316233619,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316233619', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2384', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316233620', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2385', 'UPDATE easequence SET maxid = \'100000000064731\' WHERE fieldname = \'EVENTID\'', '20170316233620', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2386', 'UPDATE easequence SET maxid = \'100000000064732\' WHERE fieldname = \'EVENTID\'', '20170316233620', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2387', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064732\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316233620,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316233620', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2388', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316233621', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2389', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316233621', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2390', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316233621', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2391', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316233621', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2392', 'UPDATE easequence SET maxid = \'100000000064733\' WHERE fieldname = \'EVENTID\'', '20170316233621', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2393', 'UPDATE easequence SET maxid = \'100000000064734\' WHERE fieldname = \'EVENTID\'', '20170316233621', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2394', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064734\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316233621,\'/g5/goods/init.do\',\'init\',0)', '20170316233621', '38', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2395', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316233622', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2396', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316233622', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2397', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316233622', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2398', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316233622', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2399', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316233622', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2400', 'UPDATE easequence SET maxid = \'100000000064735\' WHERE fieldname = \'EVENTID\'', '20170316233622', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2401', 'UPDATE easequence SET maxid = \'100000000064736\' WHERE fieldname = \'EVENTID\'', '20170316233622', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2402', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064736\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316233622,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316233622', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2403', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316233624', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2404', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316233624', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2405', 'UPDATE easequence SET maxid = \'100000000064737\' WHERE fieldname = \'EVENTID\'', '20170316233624', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2406', 'UPDATE easequence SET maxid = \'100000000064738\' WHERE fieldname = \'EVENTID\'', '20170316233624', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2407', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064738\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316233624,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316233624', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2408', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316233930', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2409', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316233930', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2410', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316233930', '14', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2411', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316233930', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2412', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316233930', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2413', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316233930', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2414', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233930', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2415', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316233930', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2416', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233930', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2417', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316233930', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2418', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233930', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2419', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316233930', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2420', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233930', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2421', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316233930', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2422', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233930', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2423', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316233931', '13', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2424', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316233931', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2425', 'UPDATE easequence SET maxid = \'100000000064739\' WHERE fieldname = \'EVENTID\'', '20170316233931', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2426', 'UPDATE easequence SET maxid = \'100000000064740\' WHERE fieldname = \'EVENTID\'', '20170316233931', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2427', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064740\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316233931,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316233931', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2428', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316233931', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2429', 'UPDATE easequence SET maxid = \'100000000064741\' WHERE fieldname = \'EVENTID\'', '20170316233931', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2430', 'UPDATE easequence SET maxid = \'100000000064742\' WHERE fieldname = \'EVENTID\'', '20170316233931', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2431', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064742\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316233931,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316233931', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2432', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316233932', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2433', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316233932', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2434', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316233932', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2435', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316233932', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2436', 'UPDATE easequence SET maxid = \'100000000064743\' WHERE fieldname = \'EVENTID\'', '20170316233932', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2437', 'UPDATE easequence SET maxid = \'100000000064744\' WHERE fieldname = \'EVENTID\'', '20170316233932', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2438', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064744\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316233932,\'/g5/goods/init.do\',\'init\',0)', '20170316233932', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2439', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316233933', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2440', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316233933', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2441', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316233933', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2442', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316233933', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2443', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316233933', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2444', 'UPDATE easequence SET maxid = \'100000000064745\' WHERE fieldname = \'EVENTID\'', '20170316233933', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2445', 'UPDATE easequence SET maxid = \'100000000064746\' WHERE fieldname = \'EVENTID\'', '20170316233933', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2446', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064746\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316233933,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316233933', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2447', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316233944', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2448', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316233944', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2449', 'UPDATE easequence SET maxid = \'100000000064747\' WHERE fieldname = \'EVENTID\'', '20170316233944', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2450', 'UPDATE easequence SET maxid = \'100000000064748\' WHERE fieldname = \'EVENTID\'', '20170316233944', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2451', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064748\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316233944,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316233944', '9', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2452', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234112', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2453', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316234112', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2454', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316234112', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2455', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316234112', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2456', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234112', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2457', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316234112', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2458', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234112', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2459', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316234112', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2460', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234112', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2461', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316234112', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2462', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234112', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2463', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316234112', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2464', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234112', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2465', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316234112', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2466', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234112', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2467', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316234112', '23', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2468', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234112', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2469', 'UPDATE easequence SET maxid = \'100000000064749\' WHERE fieldname = \'EVENTID\'', '20170316234112', '10', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2470', 'UPDATE easequence SET maxid = \'100000000064750\' WHERE fieldname = \'EVENTID\'', '20170316234112', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2471', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064750\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316234112,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316234112', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2472', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234113', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2473', 'UPDATE easequence SET maxid = \'100000000064751\' WHERE fieldname = \'EVENTID\'', '20170316234113', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2474', 'UPDATE easequence SET maxid = \'100000000064752\' WHERE fieldname = \'EVENTID\'', '20170316234113', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2475', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064752\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316234113,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316234113', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2476', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234116', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2477', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316234116', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2478', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316234116', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2479', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316234116', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2480', 'UPDATE easequence SET maxid = \'100000000064753\' WHERE fieldname = \'EVENTID\'', '20170316234116', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2481', 'UPDATE easequence SET maxid = \'100000000064754\' WHERE fieldname = \'EVENTID\'', '20170316234116', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2482', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064754\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316234116,\'/g5/goods/init.do\',\'init\',0)', '20170316234116', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2483', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316234116', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2484', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316234116', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2485', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316234116', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2486', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316234116', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2487', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316234116', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2488', 'UPDATE easequence SET maxid = \'100000000064755\' WHERE fieldname = \'EVENTID\'', '20170316234116', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2489', 'UPDATE easequence SET maxid = \'100000000064756\' WHERE fieldname = \'EVENTID\'', '20170316234116', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2490', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064756\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316234116,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316234116', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2491', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316234118', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2492', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316234118', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2493', 'UPDATE easequence SET maxid = \'100000000064757\' WHERE fieldname = \'EVENTID\'', '20170316234118', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2494', 'UPDATE easequence SET maxid = \'100000000064758\' WHERE fieldname = \'EVENTID\'', '20170316234118', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2495', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064758\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316234118,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316234118', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2496', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234150', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2497', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316234150', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2498', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316234150', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2499', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316234150', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2500', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234150', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2501', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316234150', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2502', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234150', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2503', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316234150', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2504', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234150', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2505', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316234150', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2506', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234150', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2507', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316234150', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2508', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234150', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2509', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316234150', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2510', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234150', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2511', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316234150', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2512', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234150', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2513', 'UPDATE easequence SET maxid = \'100000000064759\' WHERE fieldname = \'EVENTID\'', '20170316234150', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2514', 'UPDATE easequence SET maxid = \'100000000064760\' WHERE fieldname = \'EVENTID\'', '20170316234150', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2515', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064760\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316234150,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316234150', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2516', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234151', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2517', 'UPDATE easequence SET maxid = \'100000000064761\' WHERE fieldname = \'EVENTID\'', '20170316234151', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2518', 'UPDATE easequence SET maxid = \'100000000064762\' WHERE fieldname = \'EVENTID\'', '20170316234151', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2519', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064762\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316234151,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316234151', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2520', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234158', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2521', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316234158', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2522', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316234158', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2523', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316234158', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2524', 'UPDATE easequence SET maxid = \'100000000064763\' WHERE fieldname = \'EVENTID\'', '20170316234158', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2525', 'UPDATE easequence SET maxid = \'100000000064764\' WHERE fieldname = \'EVENTID\'', '20170316234158', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2526', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064764\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316234158,\'/g5/goods/init.do\',\'init\',0)', '20170316234158', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2527', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316234158', '6', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2528', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316234158', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2529', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316234158', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2530', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316234158', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2531', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316234158', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2532', 'UPDATE easequence SET maxid = \'100000000064765\' WHERE fieldname = \'EVENTID\'', '20170316234158', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2533', 'UPDATE easequence SET maxid = \'100000000064766\' WHERE fieldname = \'EVENTID\'', '20170316234158', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2534', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064766\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316234158,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316234158', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2535', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316234200', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2536', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316234200', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2537', 'UPDATE easequence SET maxid = \'100000000064767\' WHERE fieldname = \'EVENTID\'', '20170316234200', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2538', 'UPDATE easequence SET maxid = \'100000000064768\' WHERE fieldname = \'EVENTID\'', '20170316234200', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2539', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064768\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316234200,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316234200', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2540', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234229', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2541', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316234229', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2542', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316234229', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2543', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316234229', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2544', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234229', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2545', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316234229', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2546', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234229', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2547', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316234229', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2548', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234229', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2549', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316234229', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2550', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234229', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2551', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316234229', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2552', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234229', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2553', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316234229', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2554', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234229', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2555', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316234229', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2556', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234229', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2557', 'UPDATE easequence SET maxid = \'100000000064769\' WHERE fieldname = \'EVENTID\'', '20170316234229', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2558', 'UPDATE easequence SET maxid = \'100000000064770\' WHERE fieldname = \'EVENTID\'', '20170316234229', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2559', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064770\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316234229,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316234229', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2560', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234230', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2561', 'UPDATE easequence SET maxid = \'100000000064771\' WHERE fieldname = \'EVENTID\'', '20170316234230', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2562', 'UPDATE easequence SET maxid = \'100000000064772\' WHERE fieldname = \'EVENTID\'', '20170316234230', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2563', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064772\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316234230,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316234230', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2564', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234231', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2565', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316234231', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2566', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316234231', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2567', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316234231', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2568', 'UPDATE easequence SET maxid = \'100000000064773\' WHERE fieldname = \'EVENTID\'', '20170316234231', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2569', 'UPDATE easequence SET maxid = \'100000000064774\' WHERE fieldname = \'EVENTID\'', '20170316234231', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2570', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064774\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316234231,\'/g5/goods/init.do\',\'init\',0)', '20170316234231', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2571', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316234231', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2572', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316234231', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2573', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316234232', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2574', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316234232', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2575', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316234232', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2576', 'UPDATE easequence SET maxid = \'100000000064775\' WHERE fieldname = \'EVENTID\'', '20170316234232', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2577', 'UPDATE easequence SET maxid = \'100000000064776\' WHERE fieldname = \'EVENTID\'', '20170316234232', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2578', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064776\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316234232,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316234232', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2579', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316234233', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2580', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316234233', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2581', 'UPDATE easequence SET maxid = \'100000000064777\' WHERE fieldname = \'EVENTID\'', '20170316234233', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2582', 'UPDATE easequence SET maxid = \'100000000064778\' WHERE fieldname = \'EVENTID\'', '20170316234233', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2583', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064778\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316234233,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316234233', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2584', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234258', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2585', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316234258', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2586', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316234258', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2587', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316234258', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2588', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234258', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2589', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316234258', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2590', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234258', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2591', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316234258', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2592', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234258', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2593', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316234258', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2594', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234258', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2595', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316234258', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2596', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234258', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2597', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316234258', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2598', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234258', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2599', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316234258', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2600', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234258', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2601', 'UPDATE easequence SET maxid = \'100000000064779\' WHERE fieldname = \'EVENTID\'', '20170316234258', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2602', 'UPDATE easequence SET maxid = \'100000000064780\' WHERE fieldname = \'EVENTID\'', '20170316234258', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2603', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064780\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316234258,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316234258', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2604', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234259', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2605', 'UPDATE easequence SET maxid = \'100000000064781\' WHERE fieldname = \'EVENTID\'', '20170316234259', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2606', 'UPDATE easequence SET maxid = \'100000000064782\' WHERE fieldname = \'EVENTID\'', '20170316234259', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2607', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064782\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316234259,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316234259', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2608', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234300', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2609', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316234300', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2610', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316234300', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2611', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316234300', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2612', 'UPDATE easequence SET maxid = \'100000000064783\' WHERE fieldname = \'EVENTID\'', '20170316234300', '6', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2613', 'UPDATE easequence SET maxid = \'100000000064784\' WHERE fieldname = \'EVENTID\'', '20170316234300', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2614', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064784\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316234300,\'/g5/goods/init.do\',\'init\',0)', '20170316234300', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2615', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316234300', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2616', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316234300', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2617', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316234300', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2618', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316234300', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2619', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316234300', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2620', 'UPDATE easequence SET maxid = \'100000000064785\' WHERE fieldname = \'EVENTID\'', '20170316234300', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2621', 'UPDATE easequence SET maxid = \'100000000064786\' WHERE fieldname = \'EVENTID\'', '20170316234300', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2622', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064786\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316234300,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316234300', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2623', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316234303', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2624', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316234303', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2625', 'UPDATE easequence SET maxid = \'100000000064787\' WHERE fieldname = \'EVENTID\'', '20170316234303', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2626', 'UPDATE easequence SET maxid = \'100000000064788\' WHERE fieldname = \'EVENTID\'', '20170316234303', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2627', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064788\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316234303,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316234303', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2628', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234402', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2629', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316234402', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2630', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316234402', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2631', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316234402', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2632', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234402', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2633', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316234402', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2634', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234402', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2635', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316234402', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2636', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234402', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2637', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316234402', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2638', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234402', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2639', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316234402', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2640', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234402', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2641', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316234402', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2642', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234402', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2643', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316234402', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2644', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234402', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2645', 'UPDATE easequence SET maxid = \'100000000064789\' WHERE fieldname = \'EVENTID\'', '20170316234402', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2646', 'UPDATE easequence SET maxid = \'100000000064790\' WHERE fieldname = \'EVENTID\'', '20170316234402', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2647', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064790\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316234402,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316234402', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2648', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234403', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2649', 'UPDATE easequence SET maxid = \'100000000064791\' WHERE fieldname = \'EVENTID\'', '20170316234403', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2650', 'UPDATE easequence SET maxid = \'100000000064792\' WHERE fieldname = \'EVENTID\'', '20170316234403', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2651', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064792\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316234403,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316234403', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2652', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234404', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2653', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316234404', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2654', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316234404', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2655', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316234404', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2656', 'UPDATE easequence SET maxid = \'100000000064793\' WHERE fieldname = \'EVENTID\'', '20170316234404', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2657', 'UPDATE easequence SET maxid = \'100000000064794\' WHERE fieldname = \'EVENTID\'', '20170316234404', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2658', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064794\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316234404,\'/g5/goods/init.do\',\'init\',0)', '20170316234404', '9', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2659', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316234405', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2660', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316234405', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2661', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316234405', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2662', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316234405', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2663', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316234405', '7', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2664', 'UPDATE easequence SET maxid = \'100000000064795\' WHERE fieldname = \'EVENTID\'', '20170316234405', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2665', 'UPDATE easequence SET maxid = \'100000000064796\' WHERE fieldname = \'EVENTID\'', '20170316234405', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2666', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064796\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316234405,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316234405', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2667', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316234406', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2668', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316234406', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2669', 'UPDATE easequence SET maxid = \'100000000064797\' WHERE fieldname = \'EVENTID\'', '20170316234406', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2670', 'UPDATE easequence SET maxid = \'100000000064798\' WHERE fieldname = \'EVENTID\'', '20170316234406', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2671', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064798\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316234406,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316234406', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2672', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234427', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2673', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316234427', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2674', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316234427', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2675', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316234427', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2676', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234427', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2677', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316234427', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2678', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234427', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2679', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316234427', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2680', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234427', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2681', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316234427', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2682', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234427', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2683', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316234427', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2684', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234427', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2685', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316234427', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2686', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234427', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2687', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316234427', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2688', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234427', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2689', 'UPDATE easequence SET maxid = \'100000000064799\' WHERE fieldname = \'EVENTID\'', '20170316234427', '13', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2690', 'UPDATE easequence SET maxid = \'100000000064800\' WHERE fieldname = \'EVENTID\'', '20170316234427', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2691', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064800\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316234427,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316234427', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2692', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234428', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2693', 'UPDATE easequence SET maxid = \'100000000064801\' WHERE fieldname = \'EVENTID\'', '20170316234428', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2694', 'UPDATE easequence SET maxid = \'100000000064802\' WHERE fieldname = \'EVENTID\'', '20170316234428', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2695', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064802\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316234428,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316234428', '7', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2696', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234429', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2697', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316234429', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2698', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316234429', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2699', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316234429', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2700', 'UPDATE easequence SET maxid = \'100000000064803\' WHERE fieldname = \'EVENTID\'', '20170316234429', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2701', 'UPDATE easequence SET maxid = \'100000000064804\' WHERE fieldname = \'EVENTID\'', '20170316234429', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2702', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064804\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316234429,\'/g5/goods/init.do\',\'init\',0)', '20170316234429', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2703', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316234429', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2704', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316234429', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2705', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316234429', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2706', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316234429', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2707', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316234429', '8', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2708', 'UPDATE easequence SET maxid = \'100000000064805\' WHERE fieldname = \'EVENTID\'', '20170316234429', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2709', 'UPDATE easequence SET maxid = \'100000000064806\' WHERE fieldname = \'EVENTID\'', '20170316234429', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2710', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064806\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316234429,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316234429', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2711', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316234431', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2712', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316234431', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2713', 'UPDATE easequence SET maxid = \'100000000064807\' WHERE fieldname = \'EVENTID\'', '20170316234431', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2714', 'UPDATE easequence SET maxid = \'100000000064808\' WHERE fieldname = \'EVENTID\'', '20170316234431', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2715', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064808\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316234431,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316234431', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2716', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234451', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2717', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316234451', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2718', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316234451', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2719', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316234451', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2720', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234451', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2721', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316234451', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2722', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234451', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2723', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316234451', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2724', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234451', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2725', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316234451', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2726', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234451', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2727', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316234451', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2728', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234451', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2729', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316234451', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2730', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234451', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2731', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316234451', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2732', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234451', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2733', 'UPDATE easequence SET maxid = \'100000000064809\' WHERE fieldname = \'EVENTID\'', '20170316234451', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2734', 'UPDATE easequence SET maxid = \'100000000064810\' WHERE fieldname = \'EVENTID\'', '20170316234451', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2735', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064810\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316234451,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316234451', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2736', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234452', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2737', 'UPDATE easequence SET maxid = \'100000000064811\' WHERE fieldname = \'EVENTID\'', '20170316234452', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2738', 'UPDATE easequence SET maxid = \'100000000064812\' WHERE fieldname = \'EVENTID\'', '20170316234452', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2739', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064812\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316234452,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316234452', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2740', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234453', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2741', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316234453', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2742', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316234453', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2743', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316234453', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2744', 'UPDATE easequence SET maxid = \'100000000064813\' WHERE fieldname = \'EVENTID\'', '20170316234453', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2745', 'UPDATE easequence SET maxid = \'100000000064814\' WHERE fieldname = \'EVENTID\'', '20170316234453', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2746', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064814\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316234453,\'/g5/goods/init.do\',\'init\',0)', '20170316234453', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2747', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316234453', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2748', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316234453', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2749', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316234453', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2750', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316234453', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2751', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316234453', '8', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2752', 'UPDATE easequence SET maxid = \'100000000064815\' WHERE fieldname = \'EVENTID\'', '20170316234453', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2753', 'UPDATE easequence SET maxid = \'100000000064816\' WHERE fieldname = \'EVENTID\'', '20170316234453', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2754', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064816\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316234453,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316234453', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2755', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316234455', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2756', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316234455', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2757', 'UPDATE easequence SET maxid = \'100000000064817\' WHERE fieldname = \'EVENTID\'', '20170316234455', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2758', 'UPDATE easequence SET maxid = \'100000000064818\' WHERE fieldname = \'EVENTID\'', '20170316234455', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2759', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064818\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316234455,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316234455', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2760', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234541', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2761', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316234541', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2762', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316234541', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2763', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316234541', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2764', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234541', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2765', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316234541', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2766', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234541', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2767', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316234541', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2768', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234541', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2769', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316234541', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2770', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234541', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2771', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316234541', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2772', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234541', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2773', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316234541', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2774', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234541', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2775', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316234541', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2776', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234541', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2777', 'UPDATE easequence SET maxid = \'100000000064819\' WHERE fieldname = \'EVENTID\'', '20170316234541', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2778', 'UPDATE easequence SET maxid = \'100000000064820\' WHERE fieldname = \'EVENTID\'', '20170316234541', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2779', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064820\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316234541,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316234541', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2780', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234542', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2781', 'UPDATE easequence SET maxid = \'100000000064821\' WHERE fieldname = \'EVENTID\'', '20170316234542', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2782', 'UPDATE easequence SET maxid = \'100000000064822\' WHERE fieldname = \'EVENTID\'', '20170316234542', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2783', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064822\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316234542,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316234542', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2784', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234543', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2785', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316234543', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2786', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316234543', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2787', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316234543', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2788', 'UPDATE easequence SET maxid = \'100000000064823\' WHERE fieldname = \'EVENTID\'', '20170316234543', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2789', 'UPDATE easequence SET maxid = \'100000000064824\' WHERE fieldname = \'EVENTID\'', '20170316234543', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2790', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064824\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316234543,\'/g5/goods/init.do\',\'init\',0)', '20170316234543', '36', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2791', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316234543', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2792', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316234543', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2793', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316234543', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2794', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316234543', '22', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2795', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316234543', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2796', 'UPDATE easequence SET maxid = \'100000000064825\' WHERE fieldname = \'EVENTID\'', '20170316234543', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2797', 'UPDATE easequence SET maxid = \'100000000064826\' WHERE fieldname = \'EVENTID\'', '20170316234543', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2798', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064826\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316234543,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316234543', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2799', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316234545', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2800', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316234545', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2801', 'UPDATE easequence SET maxid = \'100000000064827\' WHERE fieldname = \'EVENTID\'', '20170316234545', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2802', 'UPDATE easequence SET maxid = \'100000000064828\' WHERE fieldname = \'EVENTID\'', '20170316234545', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2803', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064828\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316234545,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316234545', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2804', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234734', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2805', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316234734', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2806', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316234734', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2807', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316234734', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2808', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234734', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2809', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316234734', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2810', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234734', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2811', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316234734', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2812', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234734', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2813', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316234734', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2814', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234734', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2815', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316234734', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2816', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234734', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2817', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316234734', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2818', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234734', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2819', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316234734', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2820', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234734', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2821', 'UPDATE easequence SET maxid = \'100000000064829\' WHERE fieldname = \'EVENTID\'', '20170316234734', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2822', 'UPDATE easequence SET maxid = \'100000000064830\' WHERE fieldname = \'EVENTID\'', '20170316234734', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2823', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064830\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316234734,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316234734', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2824', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234734', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2825', 'UPDATE easequence SET maxid = \'100000000064831\' WHERE fieldname = \'EVENTID\'', '20170316234734', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2826', 'UPDATE easequence SET maxid = \'100000000064832\' WHERE fieldname = \'EVENTID\'', '20170316234734', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2827', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064832\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316234734,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316234734', '28', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2828', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234735', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2829', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316234735', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2830', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316234735', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2831', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316234735', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2832', 'UPDATE easequence SET maxid = \'100000000064833\' WHERE fieldname = \'EVENTID\'', '20170316234735', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2833', 'UPDATE easequence SET maxid = \'100000000064834\' WHERE fieldname = \'EVENTID\'', '20170316234735', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2834', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064834\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316234735,\'/g5/goods/init.do\',\'init\',0)', '20170316234736', '47', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2835', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316234736', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2836', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316234736', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2837', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316234736', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2838', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316234736', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2839', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316234736', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2840', 'UPDATE easequence SET maxid = \'100000000064835\' WHERE fieldname = \'EVENTID\'', '20170316234736', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2841', 'UPDATE easequence SET maxid = \'100000000064836\' WHERE fieldname = \'EVENTID\'', '20170316234736', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2842', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064836\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316234736,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316234736', '6', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2843', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316234737', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2844', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316234737', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2845', 'UPDATE easequence SET maxid = \'100000000064837\' WHERE fieldname = \'EVENTID\'', '20170316234738', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2846', 'UPDATE easequence SET maxid = \'100000000064838\' WHERE fieldname = \'EVENTID\'', '20170316234738', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2847', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064838\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316234738,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316234738', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2848', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234816', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2849', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316234816', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2850', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316234816', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2851', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316234816', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2852', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234816', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2853', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316234816', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2854', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234816', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2855', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316234816', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2856', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234816', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2857', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316234816', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2858', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234816', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2859', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316234816', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2860', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234816', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2861', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316234816', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2862', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234816', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2863', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316234816', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2864', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234816', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2865', 'UPDATE easequence SET maxid = \'100000000064839\' WHERE fieldname = \'EVENTID\'', '20170316234816', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2866', 'UPDATE easequence SET maxid = \'100000000064840\' WHERE fieldname = \'EVENTID\'', '20170316234816', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2867', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064840\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316234816,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316234816', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2868', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234817', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2869', 'UPDATE easequence SET maxid = \'100000000064841\' WHERE fieldname = \'EVENTID\'', '20170316234817', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2870', 'UPDATE easequence SET maxid = \'100000000064842\' WHERE fieldname = \'EVENTID\'', '20170316234817', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2871', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064842\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316234817,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316234817', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2872', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234818', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2873', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316234818', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2874', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316234818', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2875', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316234818', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2876', 'UPDATE easequence SET maxid = \'100000000064843\' WHERE fieldname = \'EVENTID\'', '20170316234818', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2877', 'UPDATE easequence SET maxid = \'100000000064844\' WHERE fieldname = \'EVENTID\'', '20170316234818', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2878', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064844\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316234818,\'/g5/goods/init.do\',\'init\',0)', '20170316234818', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2879', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316234818', '5', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2880', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316234818', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2881', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316234818', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2882', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316234818', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2883', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316234818', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2884', 'UPDATE easequence SET maxid = \'100000000064845\' WHERE fieldname = \'EVENTID\'', '20170316234818', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2885', 'UPDATE easequence SET maxid = \'100000000064846\' WHERE fieldname = \'EVENTID\'', '20170316234818', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2886', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064846\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316234818,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316234818', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2887', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316234820', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2888', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316234820', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2889', 'UPDATE easequence SET maxid = \'100000000064847\' WHERE fieldname = \'EVENTID\'', '20170316234820', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2890', 'UPDATE easequence SET maxid = \'100000000064848\' WHERE fieldname = \'EVENTID\'', '20170316234820', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2891', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064848\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316234820,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316234820', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2892', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234854', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2893', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316234854', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2894', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316234854', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2895', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316234854', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2896', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234854', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2897', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316234854', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2898', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234854', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2899', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316234854', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2900', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234854', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2901', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316234854', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2902', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234854', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2903', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316234854', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2904', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234854', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2905', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316234854', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2906', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234854', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2907', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316234854', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2908', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316234854', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2909', 'UPDATE easequence SET maxid = \'100000000064849\' WHERE fieldname = \'EVENTID\'', '20170316234854', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2910', 'UPDATE easequence SET maxid = \'100000000064850\' WHERE fieldname = \'EVENTID\'', '20170316234854', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2911', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064850\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316234854,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316234854', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2912', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234854', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2913', 'UPDATE easequence SET maxid = \'100000000064851\' WHERE fieldname = \'EVENTID\'', '20170316234854', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2914', 'UPDATE easequence SET maxid = \'100000000064852\' WHERE fieldname = \'EVENTID\'', '20170316234854', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2915', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064852\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316234854,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316234854', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2916', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316234855', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2917', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316234855', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2918', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316234855', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2919', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316234855', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2920', 'UPDATE easequence SET maxid = \'100000000064853\' WHERE fieldname = \'EVENTID\'', '20170316234855', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2921', 'UPDATE easequence SET maxid = \'100000000064854\' WHERE fieldname = \'EVENTID\'', '20170316234855', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2922', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064854\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316234855,\'/g5/goods/init.do\',\'init\',0)', '20170316234855', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2923', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316234856', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2924', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316234856', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2925', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316234856', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2926', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316234856', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2927', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316234856', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2928', 'UPDATE easequence SET maxid = \'100000000064855\' WHERE fieldname = \'EVENTID\'', '20170316234856', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2929', 'UPDATE easequence SET maxid = \'100000000064856\' WHERE fieldname = \'EVENTID\'', '20170316234856', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2930', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064856\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316234856,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316234856', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2931', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316234857', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2932', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316234857', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2933', 'UPDATE easequence SET maxid = \'100000000064857\' WHERE fieldname = \'EVENTID\'', '20170316234857', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2934', 'UPDATE easequence SET maxid = \'100000000064858\' WHERE fieldname = \'EVENTID\'', '20170316234857', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2935', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064858\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316234857,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316234857', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2936', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316235615', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2937', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316235615', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2938', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316235615', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2939', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316235615', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2940', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316235615', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2941', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316235615', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2942', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316235615', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2943', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316235615', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2944', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316235615', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2945', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316235615', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2946', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316235615', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2947', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316235615', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2948', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316235615', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2949', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316235615', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2950', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316235615', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2951', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316235615', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2952', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316235615', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2953', 'UPDATE easequence SET maxid = \'100000000064859\' WHERE fieldname = \'EVENTID\'', '20170316235615', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2954', 'UPDATE easequence SET maxid = \'100000000064860\' WHERE fieldname = \'EVENTID\'', '20170316235615', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2955', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064860\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316235615,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316235615', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2956', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316235616', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2957', 'UPDATE easequence SET maxid = \'100000000064861\' WHERE fieldname = \'EVENTID\'', '20170316235616', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2958', 'UPDATE easequence SET maxid = \'100000000064862\' WHERE fieldname = \'EVENTID\'', '20170316235616', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2959', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064862\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316235616,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316235616', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2960', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316235620', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2961', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316235620', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2962', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316235620', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2963', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316235620', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2964', 'UPDATE easequence SET maxid = \'100000000064863\' WHERE fieldname = \'EVENTID\'', '20170316235620', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2965', 'UPDATE easequence SET maxid = \'100000000064864\' WHERE fieldname = \'EVENTID\'', '20170316235620', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2966', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064864\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316235620,\'/g5/goods/init.do\',\'init\',0)', '20170316235620', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2967', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316235621', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2968', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316235621', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2969', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316235621', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2970', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316235621', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2971', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316235621', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2972', 'UPDATE easequence SET maxid = \'100000000064865\' WHERE fieldname = \'EVENTID\'', '20170316235621', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2973', 'UPDATE easequence SET maxid = \'100000000064866\' WHERE fieldname = \'EVENTID\'', '20170316235621', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2974', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064866\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316235621,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316235621', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2975', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316235623', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2976', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316235623', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('2977', 'UPDATE easequence SET maxid = \'100000000064867\' WHERE fieldname = \'EVENTID\'', '20170316235623', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2978', 'UPDATE easequence SET maxid = \'100000000064868\' WHERE fieldname = \'EVENTID\'', '20170316235623', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2979', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064868\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316235623,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316235623', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('2980', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316235649', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2981', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316235649', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2982', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316235649', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2983', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316235649', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2984', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316235649', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2985', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316235649', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2986', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316235649', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2987', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316235649', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2988', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316235649', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2989', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316235649', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2990', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316235649', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2991', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316235649', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2992', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316235649', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2993', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316235649', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2994', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316235649', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2995', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316235649', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2996', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316235649', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('2997', 'UPDATE easequence SET maxid = \'100000000064869\' WHERE fieldname = \'EVENTID\'', '20170316235649', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2998', 'UPDATE easequence SET maxid = \'100000000064870\' WHERE fieldname = \'EVENTID\'', '20170316235649', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('2999', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064870\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316235649,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316235649', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3000', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316235650', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3001', 'UPDATE easequence SET maxid = \'100000000064871\' WHERE fieldname = \'EVENTID\'', '20170316235650', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3002', 'UPDATE easequence SET maxid = \'100000000064872\' WHERE fieldname = \'EVENTID\'', '20170316235650', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3003', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064872\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316235650,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316235650', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3004', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316235651', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3005', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316235651', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3006', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316235651', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3007', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316235651', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3008', 'UPDATE easequence SET maxid = \'100000000064873\' WHERE fieldname = \'EVENTID\'', '20170316235651', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3009', 'UPDATE easequence SET maxid = \'100000000064874\' WHERE fieldname = \'EVENTID\'', '20170316235651', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3010', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064874\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316235651,\'/g5/goods/init.do\',\'init\',0)', '20170316235651', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3011', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316235651', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3012', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316235651', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3013', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316235651', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3014', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316235651', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3015', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316235651', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3016', 'UPDATE easequence SET maxid = \'100000000064875\' WHERE fieldname = \'EVENTID\'', '20170316235651', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3017', 'UPDATE easequence SET maxid = \'100000000064876\' WHERE fieldname = \'EVENTID\'', '20170316235651', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3018', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064876\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316235651,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316235651', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3019', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316235654', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3020', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316235654', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3021', 'UPDATE easequence SET maxid = \'100000000064877\' WHERE fieldname = \'EVENTID\'', '20170316235654', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3022', 'UPDATE easequence SET maxid = \'100000000064878\' WHERE fieldname = \'EVENTID\'', '20170316235654', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3023', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064878\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316235654,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316235654', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3024', 'DELETE      FROM eahttpsession', '20170316235838', '43', '1', '3');
INSERT INTO `eajdbcmonitor` VALUES ('3025', 'SELECT codeid, field, fieldname, code, codedesc, sortno     FROM eacode  WHERE enabled = \'1\' ORDER BY codeid , sortno', '20170316235838', '38', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3026', 'SELECT paramid, paramkey, paramvalue     FROM eaparam', '20170316235838', '10', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3027', 'SELECT a.userid, a.username, a.ACCOUNT, a.PASSWORD, a.sex, a.deptid, b.theme, b.layout,          (SELECT customid             FROM eadept            WHERE deptid = a.deptid) AS customid,          (SELECT deptname             FROM eadept            WHERE deptid = a.deptid) AS deptname     FROM eauser a, eausersubinfo b     WHERE a.userid = b.userid and a.locked = \'0\' and a.enabled = \'1\'       AND      a.account = \'developer\'', '20170316235852', '11', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3028', 'SELECT        sessionid as sessionID, userid, username, account, createtime as sessionCreatedTime, explorer, loginip as loginIP        FROM eahttpsession where sessionid = \'node03mgf1c07myqpv16gq31bvq3r0\'', '20170316235852', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3029', 'INSERT INTO eahttpsession (      sessionid, username, account,       createtime, loginip,userid,explorer)    VALUES (\'node03mgf1c07myqpv16gq31bvq3r0\', \'开发人员\', \'developer\',       \'2017-03-16 23:58:52\', \'0:0:0:0:0:0:0:1\', \'10000001\',\'CHROME/55.0.\')', '20170316235852', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3030', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EVENTID\'', '20170316235852', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3031', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'XMID\'', '20170316235852', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3032', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'CODEID\'', '20170316235852', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3033', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EXCEPTIONID\'', '20170316235852', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3034', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_ROLE\'', '20170316235852', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3035', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARAMID\'', '20170316235852', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3036', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'ROLEID\'', '20170316235852', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3037', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_USERMENUMAP\'', '20170316235852', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3038', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_USER\'', '20170316235852', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3039', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'USERID\'', '20170316235852', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3040', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'FILEID\'', '20170316235852', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3041', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARTID\'', '20170316235852', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3042', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_EAROLEAUTHORIZE\'', '20170316235852', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3043', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARTID\'', '20170316235852', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3044', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EVENTID\'', '20170316235852', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3045', 'UPDATE easequence SET maxid = \'100000000064879\' WHERE fieldname = \'EVENTID\'', '20170316235852', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3046', 'UPDATE easequence SET maxid = \'100000000064880\' WHERE fieldname = \'EVENTID\'', '20170316235852', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3047', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064880\', \'10000001\', \'developer\',       \'开发人员\', \'登录系统\', 20170316235852,\'/g5/login/login.do\',\'\',\'\')', '20170316235852', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3048', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316235853', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3049', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170316235853', '42', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3050', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316235853', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3051', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170316235853', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3052', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316235853', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3053', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170316235853', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3054', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316235853', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3055', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170316235853', '8', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3056', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316235853', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3057', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170316235853', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3058', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316235853', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3059', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170316235853', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3060', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316235853', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3061', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170316235853', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3062', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316235853', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3063', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170316235853', '7', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3064', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170316235853', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3065', 'UPDATE easequence SET maxid = \'100000000064881\' WHERE fieldname = \'EVENTID\'', '20170316235853', '16', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3066', 'UPDATE easequence SET maxid = \'100000000064882\' WHERE fieldname = \'EVENTID\'', '20170316235853', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3067', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064882\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170316235853,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170316235853', '4', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3068', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316235854', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3069', 'UPDATE easequence SET maxid = \'100000000064883\' WHERE fieldname = \'EVENTID\'', '20170316235854', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3070', 'UPDATE easequence SET maxid = \'100000000064884\' WHERE fieldname = \'EVENTID\'', '20170316235854', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3071', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064884\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170316235854,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170316235854', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3072', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170316235856', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3073', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170316235856', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3074', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170316235856', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3075', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170316235856', '11', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3076', 'UPDATE easequence SET maxid = \'100000000064885\' WHERE fieldname = \'EVENTID\'', '20170316235856', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3077', 'UPDATE easequence SET maxid = \'100000000064886\' WHERE fieldname = \'EVENTID\'', '20170316235856', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3078', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064886\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170316235856,\'/g5/goods/init.do\',\'init\',1)', '20170316235856', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3079', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170316235857', '177', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3080', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170316235857', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3081', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170316235857', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3082', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170316235857', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3083', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170316235857', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3084', 'UPDATE easequence SET maxid = \'100000000064887\' WHERE fieldname = \'EVENTID\'', '20170316235857', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3085', 'UPDATE easequence SET maxid = \'100000000064888\' WHERE fieldname = \'EVENTID\'', '20170316235857', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3086', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064888\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316235857,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170316235857', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3087', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170316235859', '7', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3088', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170316235859', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3089', 'UPDATE easequence SET maxid = \'100000000064889\' WHERE fieldname = \'EVENTID\'', '20170316235859', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3090', 'UPDATE easequence SET maxid = \'100000000064890\' WHERE fieldname = \'EVENTID\'', '20170316235859', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3091', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064890\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170316235859,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170316235859', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3092', 'DELETE      FROM eahttpsession', '20170317000316', '89', '1', '3');
INSERT INTO `eajdbcmonitor` VALUES ('3093', 'SELECT codeid, field, fieldname, code, codedesc, sortno     FROM eacode  WHERE enabled = \'1\' ORDER BY codeid , sortno', '20170317000316', '34', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3094', 'SELECT paramid, paramkey, paramvalue     FROM eaparam', '20170317000316', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3095', 'DELETE      FROM eahttpsession', '20170317000553', '34', '0', '3');
INSERT INTO `eajdbcmonitor` VALUES ('3096', 'SELECT codeid, field, fieldname, code, codedesc, sortno     FROM eacode  WHERE enabled = \'1\' ORDER BY codeid , sortno', '20170317000553', '43', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3097', 'SELECT paramid, paramkey, paramvalue     FROM eaparam', '20170317000553', '8', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3098', 'SELECT a.userid, a.username, a.ACCOUNT, a.PASSWORD, a.sex, a.deptid, b.theme, b.layout,          (SELECT customid             FROM eadept            WHERE deptid = a.deptid) AS customid,          (SELECT deptname             FROM eadept            WHERE deptid = a.deptid) AS deptname     FROM eauser a, eausersubinfo b     WHERE a.userid = b.userid and a.locked = \'0\' and a.enabled = \'1\'       AND      a.account = \'developer\'', '20170317000606', '12', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3099', 'SELECT        sessionid as sessionID, userid, username, account, createtime as sessionCreatedTime, explorer, loginip as loginIP        FROM eahttpsession where sessionid = \'node0lo5pxy9v4ijg7ktsav45cf4z0\'', '20170317000606', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3100', 'INSERT INTO eahttpsession (      sessionid, username, account,       createtime, loginip,userid,explorer)    VALUES (\'node0lo5pxy9v4ijg7ktsav45cf4z0\', \'开发人员\', \'developer\',       \'2017-03-17 00:06:06\', \'0:0:0:0:0:0:0:1\', \'10000001\',\'CHROME/55.0.\')', '20170317000606', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3101', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EVENTID\'', '20170317000606', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3102', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'XMID\'', '20170317000606', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3103', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'CODEID\'', '20170317000606', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3104', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EXCEPTIONID\'', '20170317000606', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3105', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_ROLE\'', '20170317000606', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3106', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARAMID\'', '20170317000606', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3107', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'ROLEID\'', '20170317000606', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3108', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_USERMENUMAP\'', '20170317000606', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3109', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_USER\'', '20170317000606', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3110', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'USERID\'', '20170317000606', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3111', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'FILEID\'', '20170317000606', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3112', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARTID\'', '20170317000606', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3113', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_EAROLEAUTHORIZE\'', '20170317000606', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3114', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARTID\'', '20170317000606', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3115', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EVENTID\'', '20170317000606', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3116', 'UPDATE easequence SET maxid = \'100000000064891\' WHERE fieldname = \'EVENTID\'', '20170317000606', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3117', 'UPDATE easequence SET maxid = \'100000000064892\' WHERE fieldname = \'EVENTID\'', '20170317000606', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3118', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064892\', \'10000001\', \'developer\',       \'开发人员\', \'登录系统\', 20170317000606,\'/g5/login/login.do\',\'\',\'\')', '20170317000606', '4', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3119', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317000607', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3120', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170317000607', '21', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3121', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317000607', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3122', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317000607', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3123', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317000607', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3124', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170317000607', '7', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3125', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317000607', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3126', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170317000607', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3127', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317000607', '35', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3128', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170317000607', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3129', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317000607', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3130', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170317000607', '16', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3131', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317000607', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3132', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170317000607', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3133', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317000607', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3134', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170317000607', '9', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3135', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317000607', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3136', 'UPDATE easequence SET maxid = \'100000000064893\' WHERE fieldname = \'EVENTID\'', '20170317000607', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3137', 'UPDATE easequence SET maxid = \'100000000064894\' WHERE fieldname = \'EVENTID\'', '20170317000607', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3138', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064894\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170317000607,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170317000608', '4', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3139', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317000609', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3140', 'UPDATE easequence SET maxid = \'100000000064895\' WHERE fieldname = \'EVENTID\'', '20170317000609', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3141', 'UPDATE easequence SET maxid = \'100000000064896\' WHERE fieldname = \'EVENTID\'', '20170317000609', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3142', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064896\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170317000609,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170317000609', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3143', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317000613', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3144', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170317000614', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3145', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170317000614', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3146', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170317000614', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3147', 'UPDATE easequence SET maxid = \'100000000064897\' WHERE fieldname = \'EVENTID\'', '20170317000614', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3148', 'UPDATE easequence SET maxid = \'100000000064898\' WHERE fieldname = \'EVENTID\'', '20170317000614', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3149', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064898\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170317000614,\'/g5/goods/init.do\',\'init\',0)', '20170317000614', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3150', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170317000615', '185', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3151', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170317000615', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3152', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170317000615', '9', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3153', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170317000615', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3154', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170317000615', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3155', 'UPDATE easequence SET maxid = \'100000000064899\' WHERE fieldname = \'EVENTID\'', '20170317000615', '17', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3156', 'UPDATE easequence SET maxid = \'100000000064900\' WHERE fieldname = \'EVENTID\'', '20170317000615', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3157', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064900\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317000615,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170317000615', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3158', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170317000617', '5', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3159', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170317000617', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3160', 'UPDATE easequence SET maxid = \'100000000064901\' WHERE fieldname = \'EVENTID\'', '20170317000617', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3161', 'UPDATE easequence SET maxid = \'100000000064902\' WHERE fieldname = \'EVENTID\'', '20170317000617', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3162', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064902\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317000617,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170317000617', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3163', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317000950', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3164', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170317000950', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3165', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317000950', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3166', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317000950', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3167', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317000950', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3168', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170317000950', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3169', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317000950', '7', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3170', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170317000950', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3171', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317000950', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3172', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170317000951', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3173', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317000951', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3174', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170317000951', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3175', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317000951', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3176', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170317000951', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3177', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317000951', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3178', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170317000951', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3179', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317000951', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3180', 'UPDATE easequence SET maxid = \'100000000064903\' WHERE fieldname = \'EVENTID\'', '20170317000951', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3181', 'UPDATE easequence SET maxid = \'100000000064904\' WHERE fieldname = \'EVENTID\'', '20170317000951', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3182', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064904\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170317000951,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170317000951', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3183', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317000951', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3184', 'UPDATE easequence SET maxid = \'100000000064905\' WHERE fieldname = \'EVENTID\'', '20170317000951', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3185', 'UPDATE easequence SET maxid = \'100000000064906\' WHERE fieldname = \'EVENTID\'', '20170317000951', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3186', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064906\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170317000951,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170317000951', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3187', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317000953', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3188', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170317000953', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3189', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170317000953', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3190', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170317000953', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3191', 'UPDATE easequence SET maxid = \'100000000064907\' WHERE fieldname = \'EVENTID\'', '20170317000953', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3192', 'UPDATE easequence SET maxid = \'100000000064908\' WHERE fieldname = \'EVENTID\'', '20170317000953', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3193', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064908\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170317000953,\'/g5/goods/init.do\',\'init\',0)', '20170317000953', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3194', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170317000954', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3195', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170317000954', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3196', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170317000954', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3197', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170317000954', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3198', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170317000954', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3199', 'UPDATE easequence SET maxid = \'100000000064909\' WHERE fieldname = \'EVENTID\'', '20170317000954', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3200', 'UPDATE easequence SET maxid = \'100000000064910\' WHERE fieldname = \'EVENTID\'', '20170317000954', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3201', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064910\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317000954,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170317000954', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3202', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170317000957', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3203', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170317000957', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3204', 'UPDATE easequence SET maxid = \'100000000064911\' WHERE fieldname = \'EVENTID\'', '20170317000957', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3205', 'UPDATE easequence SET maxid = \'100000000064912\' WHERE fieldname = \'EVENTID\'', '20170317000957', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3206', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064912\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317000957,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170317000957', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3207', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317001110', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3208', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170317001110', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3209', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317001110', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3210', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317001110', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3211', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317001110', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3212', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170317001110', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3213', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317001110', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3214', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170317001110', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3215', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317001110', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3216', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170317001110', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3217', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317001110', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3218', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170317001110', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3219', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317001110', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3220', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170317001110', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3221', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317001110', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3222', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170317001110', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3223', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317001110', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3224', 'UPDATE easequence SET maxid = \'100000000064913\' WHERE fieldname = \'EVENTID\'', '20170317001110', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3225', 'UPDATE easequence SET maxid = \'100000000064914\' WHERE fieldname = \'EVENTID\'', '20170317001110', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3226', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064914\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170317001110,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170317001110', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3227', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317001111', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3228', 'UPDATE easequence SET maxid = \'100000000064915\' WHERE fieldname = \'EVENTID\'', '20170317001111', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3229', 'UPDATE easequence SET maxid = \'100000000064916\' WHERE fieldname = \'EVENTID\'', '20170317001111', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3230', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064916\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170317001111,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170317001111', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3231', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317001118', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3232', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170317001118', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3233', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170317001118', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3234', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170317001118', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3235', 'UPDATE easequence SET maxid = \'100000000064917\' WHERE fieldname = \'EVENTID\'', '20170317001118', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3236', 'UPDATE easequence SET maxid = \'100000000064918\' WHERE fieldname = \'EVENTID\'', '20170317001118', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3237', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064918\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170317001118,\'/g5/goods/init.do\',\'init\',0)', '20170317001118', '6', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3238', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170317001119', '5', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3239', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170317001119', '2', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3240', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170317001119', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3241', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170317001119', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3242', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170317001120', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3243', 'UPDATE easequence SET maxid = \'100000000064919\' WHERE fieldname = \'EVENTID\'', '20170317001120', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3244', 'UPDATE easequence SET maxid = \'100000000064920\' WHERE fieldname = \'EVENTID\'', '20170317001120', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3245', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064920\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317001120,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170317001120', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3246', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170317001124', '5', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3247', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170317001124', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3248', 'UPDATE easequence SET maxid = \'100000000064921\' WHERE fieldname = \'EVENTID\'', '20170317001124', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3249', 'UPDATE easequence SET maxid = \'100000000064922\' WHERE fieldname = \'EVENTID\'', '20170317001124', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3250', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064922\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317001124,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170317001124', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3251', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317001326', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3252', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170317001326', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3253', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317001326', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3254', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317001326', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3255', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317001326', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3256', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170317001326', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3257', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317001326', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3258', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170317001326', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3259', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317001326', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3260', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170317001326', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3261', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317001326', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3262', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170317001326', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3263', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317001326', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3264', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170317001326', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3265', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317001326', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3266', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170317001327', '15', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3267', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317001327', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3268', 'UPDATE easequence SET maxid = \'100000000064923\' WHERE fieldname = \'EVENTID\'', '20170317001327', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3269', 'UPDATE easequence SET maxid = \'100000000064924\' WHERE fieldname = \'EVENTID\'', '20170317001327', '12', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3270', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064924\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170317001327,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170317001327', '4', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3271', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317001327', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3272', 'UPDATE easequence SET maxid = \'100000000064925\' WHERE fieldname = \'EVENTID\'', '20170317001327', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3273', 'UPDATE easequence SET maxid = \'100000000064926\' WHERE fieldname = \'EVENTID\'', '20170317001327', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3274', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064926\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170317001327,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170317001327', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3275', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317001328', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3276', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170317001328', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3277', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170317001328', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3278', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170317001328', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3279', 'UPDATE easequence SET maxid = \'100000000064927\' WHERE fieldname = \'EVENTID\'', '20170317001328', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3280', 'UPDATE easequence SET maxid = \'100000000064928\' WHERE fieldname = \'EVENTID\'', '20170317001328', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3281', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064928\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170317001328,\'/g5/goods/init.do\',\'init\',0)', '20170317001328', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3282', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170317001329', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3283', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170317001329', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3284', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170317001329', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3285', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170317001329', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3286', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170317001329', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3287', 'UPDATE easequence SET maxid = \'100000000064929\' WHERE fieldname = \'EVENTID\'', '20170317001329', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3288', 'UPDATE easequence SET maxid = \'100000000064930\' WHERE fieldname = \'EVENTID\'', '20170317001329', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3289', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064930\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317001329,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170317001329', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3290', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170317001331', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3291', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170317001331', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3292', 'UPDATE easequence SET maxid = \'100000000064931\' WHERE fieldname = \'EVENTID\'', '20170317001331', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3293', 'UPDATE easequence SET maxid = \'100000000064932\' WHERE fieldname = \'EVENTID\'', '20170317001331', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3294', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064932\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317001331,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170317001331', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3295', 'UPDATE easequence SET maxid = \'100000000064933\' WHERE fieldname = \'EVENTID\'', '20170317001334', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3296', 'UPDATE easequence SET maxid = \'100000000064934\' WHERE fieldname = \'EVENTID\'', '20170317001334', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3297', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064934\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[save]\', 20170317001334,\'/g5/api/goodsAttr/save\',\'save\',0)', '20170317001334', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3298', 'UPDATE easequence SET maxid = \'100000000064935\' WHERE fieldname = \'EVENTID\'', '20170317001401', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3299', 'UPDATE easequence SET maxid = \'100000000064936\' WHERE fieldname = \'EVENTID\'', '20170317001401', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3300', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064936\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[save]\', 20170317001401,\'/g5/api/goodsAttr/save\',\'save\',0)', '20170317001401', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3301', 'DELETE      FROM eahttpsession', '20170317002450', '63', '1', '3');
INSERT INTO `eajdbcmonitor` VALUES ('3302', 'SELECT codeid, field, fieldname, code, codedesc, sortno     FROM eacode  WHERE enabled = \'1\' ORDER BY codeid , sortno', '20170317002450', '44', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3303', 'SELECT paramid, paramkey, paramvalue     FROM eaparam', '20170317002450', '9', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3304', 'SELECT a.userid, a.username, a.ACCOUNT, a.PASSWORD, a.sex, a.deptid, b.theme, b.layout,          (SELECT customid             FROM eadept            WHERE deptid = a.deptid) AS customid,          (SELECT deptname             FROM eadept            WHERE deptid = a.deptid) AS deptname     FROM eauser a, eausersubinfo b     WHERE a.userid = b.userid and a.locked = \'0\' and a.enabled = \'1\'       AND      a.account = \'developer\'', '20170317002505', '13', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3305', 'SELECT        sessionid as sessionID, userid, username, account, createtime as sessionCreatedTime, explorer, loginip as loginIP        FROM eahttpsession where sessionid = \'node01qwgxhl4n4i7z12ly7o20zi3aw0\'', '20170317002505', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3306', 'INSERT INTO eahttpsession (      sessionid, username, account,       createtime, loginip,userid,explorer)    VALUES (\'node01qwgxhl4n4i7z12ly7o20zi3aw0\', \'开发人员\', \'developer\',       \'2017-03-17 00:25:05\', \'0:0:0:0:0:0:0:1\', \'10000001\',\'CHROME/55.0.\')', '20170317002505', '4', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3307', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EVENTID\'', '20170317002505', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3308', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'XMID\'', '20170317002505', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3309', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'CODEID\'', '20170317002505', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3310', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EXCEPTIONID\'', '20170317002505', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3311', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_ROLE\'', '20170317002505', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3312', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARAMID\'', '20170317002505', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3313', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'ROLEID\'', '20170317002505', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3314', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_USERMENUMAP\'', '20170317002505', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3315', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_USER\'', '20170317002505', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3316', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'USERID\'', '20170317002505', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3317', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'FILEID\'', '20170317002505', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3318', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARTID\'', '20170317002505', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3319', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_EAROLEAUTHORIZE\'', '20170317002505', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3320', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARTID\'', '20170317002505', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3321', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EVENTID\'', '20170317002505', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3322', 'UPDATE easequence SET maxid = \'100000000064937\' WHERE fieldname = \'EVENTID\'', '20170317002505', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3323', 'UPDATE easequence SET maxid = \'100000000064938\' WHERE fieldname = \'EVENTID\'', '20170317002505', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3324', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064938\', \'10000001\', \'developer\',       \'开发人员\', \'登录系统\', 20170317002505,\'/g5/login/login.do\',\'\',\'\')', '20170317002505', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3325', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317002506', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3326', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170317002506', '11', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3327', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317002506', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3328', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317002506', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3329', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317002506', '7', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3330', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170317002506', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3331', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317002506', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3332', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170317002506', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3333', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317002506', '38', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3334', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170317002506', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3335', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317002506', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3336', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170317002506', '8', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3337', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317002506', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3338', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170317002506', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3339', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317002506', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3340', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170317002507', '13', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3341', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317002507', '49', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3342', 'UPDATE easequence SET maxid = \'100000000064939\' WHERE fieldname = \'EVENTID\'', '20170317002507', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3343', 'UPDATE easequence SET maxid = \'100000000064940\' WHERE fieldname = \'EVENTID\'', '20170317002507', '15', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3344', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064940\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170317002507,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170317002507', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3345', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317002508', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3346', 'UPDATE easequence SET maxid = \'100000000064941\' WHERE fieldname = \'EVENTID\'', '20170317002508', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3347', 'UPDATE easequence SET maxid = \'100000000064942\' WHERE fieldname = \'EVENTID\'', '20170317002508', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3348', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064942\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170317002508,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170317002508', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3349', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317002509', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3350', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170317002509', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3351', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170317002509', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3352', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170317002509', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3353', 'UPDATE easequence SET maxid = \'100000000064943\' WHERE fieldname = \'EVENTID\'', '20170317002509', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3354', 'UPDATE easequence SET maxid = \'100000000064944\' WHERE fieldname = \'EVENTID\'', '20170317002509', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3355', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064944\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170317002509,\'/g5/goods/init.do\',\'init\',0)', '20170317002509', '5', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3356', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170317002510', '192', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3357', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170317002510', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3358', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170317002510', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3359', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170317002510', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3360', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170317002510', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3361', 'UPDATE easequence SET maxid = \'100000000064945\' WHERE fieldname = \'EVENTID\'', '20170317002510', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3362', 'UPDATE easequence SET maxid = \'100000000064946\' WHERE fieldname = \'EVENTID\'', '20170317002510', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3363', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064946\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317002510,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170317002510', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3364', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170317002512', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3365', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170317002513', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3366', 'UPDATE easequence SET maxid = \'100000000064947\' WHERE fieldname = \'EVENTID\'', '20170317002513', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3367', 'UPDATE easequence SET maxid = \'100000000064948\' WHERE fieldname = \'EVENTID\'', '20170317002513', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3368', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064948\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317002513,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170317002513', '5', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3369', 'DELETE      FROM eahttpsession', '20170317002619', '41', '1', '3');
INSERT INTO `eajdbcmonitor` VALUES ('3370', 'SELECT codeid, field, fieldname, code, codedesc, sortno     FROM eacode  WHERE enabled = \'1\' ORDER BY codeid , sortno', '20170317002619', '38', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3371', 'SELECT paramid, paramkey, paramvalue     FROM eaparam', '20170317002619', '8', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3372', 'SELECT a.userid, a.username, a.ACCOUNT, a.PASSWORD, a.sex, a.deptid, b.theme, b.layout,          (SELECT customid             FROM eadept            WHERE deptid = a.deptid) AS customid,          (SELECT deptname             FROM eadept            WHERE deptid = a.deptid) AS deptname     FROM eauser a, eausersubinfo b     WHERE a.userid = b.userid and a.locked = \'0\' and a.enabled = \'1\'       AND      a.account = \'developer\'', '20170317002636', '15', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3373', 'SELECT        sessionid as sessionID, userid, username, account, createtime as sessionCreatedTime, explorer, loginip as loginIP        FROM eahttpsession where sessionid = \'node01owx4unwhr6wsvadgtcyt3j9q0\'', '20170317002636', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3374', 'INSERT INTO eahttpsession (      sessionid, username, account,       createtime, loginip,userid,explorer)    VALUES (\'node01owx4unwhr6wsvadgtcyt3j9q0\', \'开发人员\', \'developer\',       \'2017-03-17 00:26:36\', \'0:0:0:0:0:0:0:1\', \'10000001\',\'CHROME/55.0.\')', '20170317002636', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3375', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EVENTID\'', '20170317002636', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3376', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'XMID\'', '20170317002636', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3377', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'CODEID\'', '20170317002636', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3378', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EXCEPTIONID\'', '20170317002636', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3379', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_ROLE\'', '20170317002636', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3380', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARAMID\'', '20170317002636', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3381', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'ROLEID\'', '20170317002636', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3382', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_USERMENUMAP\'', '20170317002636', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3383', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_USER\'', '20170317002636', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3384', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'USERID\'', '20170317002636', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3385', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'FILEID\'', '20170317002636', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3386', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARTID\'', '20170317002636', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3387', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_EAROLEAUTHORIZE\'', '20170317002636', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3388', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARTID\'', '20170317002636', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3389', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EVENTID\'', '20170317002636', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3390', 'UPDATE easequence SET maxid = \'100000000064949\' WHERE fieldname = \'EVENTID\'', '20170317002636', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3391', 'UPDATE easequence SET maxid = \'100000000064950\' WHERE fieldname = \'EVENTID\'', '20170317002636', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3392', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064950\', \'10000001\', \'developer\',       \'开发人员\', \'登录系统\', 20170317002636,\'/g5/login/login.do\',\'\',\'\')', '20170317002636', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3393', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317002636', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3394', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170317002637', '9', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3395', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317002637', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3396', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317002637', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3397', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317002637', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3398', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170317002637', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3399', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317002637', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3400', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170317002637', '9', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3401', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317002637', '8', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3402', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170317002637', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3403', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317002637', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3404', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170317002637', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3405', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317002637', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3406', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170317002637', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3407', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317002637', '17', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3408', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170317002637', '14', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3409', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317002637', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3410', 'UPDATE easequence SET maxid = \'100000000064951\' WHERE fieldname = \'EVENTID\'', '20170317002637', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3411', 'UPDATE easequence SET maxid = \'100000000064952\' WHERE fieldname = \'EVENTID\'', '20170317002637', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3412', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064952\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170317002637,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170317002637', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3413', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317002638', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3414', 'UPDATE easequence SET maxid = \'100000000064953\' WHERE fieldname = \'EVENTID\'', '20170317002638', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3415', 'UPDATE easequence SET maxid = \'100000000064954\' WHERE fieldname = \'EVENTID\'', '20170317002638', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3416', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064954\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170317002638,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170317002638', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3417', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317002639', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3418', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170317002639', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3419', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170317002639', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3420', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170317002639', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3421', 'UPDATE easequence SET maxid = \'100000000064955\' WHERE fieldname = \'EVENTID\'', '20170317002639', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3422', 'UPDATE easequence SET maxid = \'100000000064956\' WHERE fieldname = \'EVENTID\'', '20170317002639', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3423', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064956\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170317002639,\'/g5/goods/init.do\',\'init\',0)', '20170317002639', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3424', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170317002640', '238', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3425', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170317002640', '5', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3426', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170317002640', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3427', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170317002641', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3428', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170317002641', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3429', 'UPDATE easequence SET maxid = \'100000000064957\' WHERE fieldname = \'EVENTID\'', '20170317002641', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3430', 'UPDATE easequence SET maxid = \'100000000064958\' WHERE fieldname = \'EVENTID\'', '20170317002641', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3431', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064958\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317002641,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170317002641', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3432', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170317002642', '7', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3433', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170317002642', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3434', 'UPDATE easequence SET maxid = \'100000000064959\' WHERE fieldname = \'EVENTID\'', '20170317002642', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3435', 'UPDATE easequence SET maxid = \'100000000064960\' WHERE fieldname = \'EVENTID\'', '20170317002642', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3436', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064960\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317002642,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170317002642', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3437', 'DELETE      FROM eahttpsession', '20170317002819', '38', '1', '3');
INSERT INTO `eajdbcmonitor` VALUES ('3438', 'SELECT codeid, field, fieldname, code, codedesc, sortno     FROM eacode  WHERE enabled = \'1\' ORDER BY codeid , sortno', '20170317002819', '40', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3439', 'SELECT paramid, paramkey, paramvalue     FROM eaparam', '20170317002819', '8', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3440', 'SELECT a.userid, a.username, a.ACCOUNT, a.PASSWORD, a.sex, a.deptid, b.theme, b.layout,          (SELECT customid             FROM eadept            WHERE deptid = a.deptid) AS customid,          (SELECT deptname             FROM eadept            WHERE deptid = a.deptid) AS deptname     FROM eauser a, eausersubinfo b     WHERE a.userid = b.userid and a.locked = \'0\' and a.enabled = \'1\'       AND      a.account = \'developer\'', '20170317002830', '13', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3441', 'SELECT        sessionid as sessionID, userid, username, account, createtime as sessionCreatedTime, explorer, loginip as loginIP        FROM eahttpsession where sessionid = \'node01nvifukwwvs9ma8ggn8vdim7s0\'', '20170317002830', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3442', 'INSERT INTO eahttpsession (      sessionid, username, account,       createtime, loginip,userid,explorer)    VALUES (\'node01nvifukwwvs9ma8ggn8vdim7s0\', \'开发人员\', \'developer\',       \'2017-03-17 00:28:30\', \'0:0:0:0:0:0:0:1\', \'10000001\',\'CHROME/55.0.\')', '20170317002830', '4', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3443', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EVENTID\'', '20170317002830', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3444', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'XMID\'', '20170317002830', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3445', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'CODEID\'', '20170317002830', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3446', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EXCEPTIONID\'', '20170317002830', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3447', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_ROLE\'', '20170317002830', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3448', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARAMID\'', '20170317002830', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3449', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'ROLEID\'', '20170317002830', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3450', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_USERMENUMAP\'', '20170317002830', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3451', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_USER\'', '20170317002830', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3452', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'USERID\'', '20170317002830', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3453', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'FILEID\'', '20170317002830', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3454', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARTID\'', '20170317002830', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3455', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_EAROLEAUTHORIZE\'', '20170317002830', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3456', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARTID\'', '20170317002830', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3457', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EVENTID\'', '20170317002830', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3458', 'UPDATE easequence SET maxid = \'100000000064961\' WHERE fieldname = \'EVENTID\'', '20170317002830', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3459', 'UPDATE easequence SET maxid = \'100000000064962\' WHERE fieldname = \'EVENTID\'', '20170317002831', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3460', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064962\', \'10000001\', \'developer\',       \'开发人员\', \'登录系统\', 20170317002830,\'/g5/login/login.do\',\'\',\'\')', '20170317002831', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3461', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317002831', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3462', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170317002831', '9', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3463', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317002831', '54', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3464', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317002831', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3465', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317002831', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3466', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170317002831', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3467', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317002832', '16', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3468', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170317002832', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3469', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317002832', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3470', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170317002832', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3471', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317002832', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3472', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170317002832', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3473', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317002832', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3474', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170317002832', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3475', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317002832', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3476', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170317002832', '16', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3477', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317002832', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3478', 'UPDATE easequence SET maxid = \'100000000064963\' WHERE fieldname = \'EVENTID\'', '20170317002832', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3479', 'UPDATE easequence SET maxid = \'100000000064964\' WHERE fieldname = \'EVENTID\'', '20170317002832', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3480', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064964\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170317002832,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170317002832', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3481', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317002833', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3482', 'UPDATE easequence SET maxid = \'100000000064965\' WHERE fieldname = \'EVENTID\'', '20170317002833', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3483', 'UPDATE easequence SET maxid = \'100000000064966\' WHERE fieldname = \'EVENTID\'', '20170317002833', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3484', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064966\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170317002833,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170317002833', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3485', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317002835', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3486', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170317002835', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3487', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170317002835', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3488', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170317002835', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3489', 'UPDATE easequence SET maxid = \'100000000064967\' WHERE fieldname = \'EVENTID\'', '20170317002835', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3490', 'UPDATE easequence SET maxid = \'100000000064968\' WHERE fieldname = \'EVENTID\'', '20170317002835', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3491', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064968\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170317002835,\'/g5/goods/init.do\',\'init\',0)', '20170317002835', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3492', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170317002836', '180', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3493', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170317002836', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3494', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170317002836', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3495', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170317002836', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3496', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170317002836', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3497', 'UPDATE easequence SET maxid = \'100000000064969\' WHERE fieldname = \'EVENTID\'', '20170317002836', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3498', 'UPDATE easequence SET maxid = \'100000000064970\' WHERE fieldname = \'EVENTID\'', '20170317002836', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3499', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064970\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317002836,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170317002836', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3500', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170317002838', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3501', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170317002838', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3502', 'UPDATE easequence SET maxid = \'100000000064971\' WHERE fieldname = \'EVENTID\'', '20170317002838', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3503', 'UPDATE easequence SET maxid = \'100000000064972\' WHERE fieldname = \'EVENTID\'', '20170317002838', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3504', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064972\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317002838,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170317002838', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3505', 'SELECT t.* FROM t_goods_attr t WHERE t.goods_Id = 1 and t.attr_id = 4', '20170317002842', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3506', 'SELECT t.* FROM t_goods_attr t WHERE t.goods_Id = 1 and t.attr_id = 3', '20170317002842', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3507', 'SELECT t.* FROM t_goods_attr t WHERE t.goods_Id = 1 and t.attr_id = 5', '20170317002842', '8', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3508', 'INSERT             t_goods_attr (goods_id,attr_id,user_id) VALUES                                              (1,4,\'10000001\')                      ,                            (1,3,\'10000001\')', '20170317002842', '4', '2', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3509', 'DELETE      FROM eahttpsession', '20170317003006', '57', '1', '3');
INSERT INTO `eajdbcmonitor` VALUES ('3510', 'SELECT codeid, field, fieldname, code, codedesc, sortno     FROM eacode  WHERE enabled = \'1\' ORDER BY codeid , sortno', '20170317003007', '45', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3511', 'SELECT paramid, paramkey, paramvalue     FROM eaparam', '20170317003007', '9', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3512', 'SELECT a.userid, a.username, a.ACCOUNT, a.PASSWORD, a.sex, a.deptid, b.theme, b.layout,          (SELECT customid             FROM eadept            WHERE deptid = a.deptid) AS customid,          (SELECT deptname             FROM eadept            WHERE deptid = a.deptid) AS deptname     FROM eauser a, eausersubinfo b     WHERE a.userid = b.userid and a.locked = \'0\' and a.enabled = \'1\'       AND      a.account = \'developer\'', '20170317003018', '13', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3513', 'SELECT        sessionid as sessionID, userid, username, account, createtime as sessionCreatedTime, explorer, loginip as loginIP        FROM eahttpsession where sessionid = \'node01ik6jq74eegfu1914jra34tm370\'', '20170317003018', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3514', 'INSERT INTO eahttpsession (      sessionid, username, account,       createtime, loginip,userid,explorer)    VALUES (\'node01ik6jq74eegfu1914jra34tm370\', \'开发人员\', \'developer\',       \'2017-03-17 00:30:18\', \'0:0:0:0:0:0:0:1\', \'10000001\',\'CHROME/55.0.\')', '20170317003018', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3515', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EVENTID\'', '20170317003018', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3516', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'XMID\'', '20170317003018', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3517', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'CODEID\'', '20170317003018', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3518', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EXCEPTIONID\'', '20170317003018', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3519', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_ROLE\'', '20170317003018', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3520', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARAMID\'', '20170317003018', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3521', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'ROLEID\'', '20170317003018', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3522', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_USERMENUMAP\'', '20170317003018', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3523', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_USER\'', '20170317003018', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3524', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'USERID\'', '20170317003018', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3525', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'FILEID\'', '20170317003018', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3526', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARTID\'', '20170317003018', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3527', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_EAROLEAUTHORIZE\'', '20170317003018', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3528', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARTID\'', '20170317003018', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3529', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EVENTID\'', '20170317003018', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3530', 'UPDATE easequence SET maxid = \'100000000064973\' WHERE fieldname = \'EVENTID\'', '20170317003018', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3531', 'UPDATE easequence SET maxid = \'100000000064974\' WHERE fieldname = \'EVENTID\'', '20170317003018', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3532', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064974\', \'10000001\', \'developer\',       \'开发人员\', \'登录系统\', 20170317003018,\'/g5/login/login.do\',\'\',\'\')', '20170317003018', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3533', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317003018', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3534', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170317003019', '7', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3535', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317003019', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3536', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317003019', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3537', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317003019', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3538', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170317003019', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3539', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317003019', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3540', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170317003019', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3541', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317003019', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3542', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170317003019', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3543', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317003019', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3544', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170317003019', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3545', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317003019', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3546', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170317003019', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3547', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317003019', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3548', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170317003019', '13', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3549', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317003019', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3550', 'UPDATE easequence SET maxid = \'100000000064975\' WHERE fieldname = \'EVENTID\'', '20170317003019', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3551', 'UPDATE easequence SET maxid = \'100000000064976\' WHERE fieldname = \'EVENTID\'', '20170317003019', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3552', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064976\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170317003019,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170317003019', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3553', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317003020', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3554', 'UPDATE easequence SET maxid = \'100000000064977\' WHERE fieldname = \'EVENTID\'', '20170317003020', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3555', 'UPDATE easequence SET maxid = \'100000000064978\' WHERE fieldname = \'EVENTID\'', '20170317003020', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3556', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064978\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170317003020,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170317003020', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3557', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317003021', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3558', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170317003021', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3559', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170317003021', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3560', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170317003021', '7', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3561', 'UPDATE easequence SET maxid = \'100000000064979\' WHERE fieldname = \'EVENTID\'', '20170317003021', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3562', 'UPDATE easequence SET maxid = \'100000000064980\' WHERE fieldname = \'EVENTID\'', '20170317003021', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3563', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064980\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170317003021,\'/g5/goods/init.do\',\'init\',0)', '20170317003021', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3564', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170317003022', '226', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3565', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170317003022', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3566', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170317003022', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3567', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170317003022', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3568', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170317003022', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3569', 'UPDATE easequence SET maxid = \'100000000064981\' WHERE fieldname = \'EVENTID\'', '20170317003022', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3570', 'UPDATE easequence SET maxid = \'100000000064982\' WHERE fieldname = \'EVENTID\'', '20170317003022', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3571', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064982\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317003022,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170317003022', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3572', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170317003024', '5', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3573', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170317003024', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3574', 'UPDATE easequence SET maxid = \'100000000064983\' WHERE fieldname = \'EVENTID\'', '20170317003024', '6', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3575', 'UPDATE easequence SET maxid = \'100000000064984\' WHERE fieldname = \'EVENTID\'', '20170317003024', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3576', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064984\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317003024,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170317003024', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3577', 'SELECT t.* FROM t_goods_attr t WHERE t.goods_Id = 1 and t.attr_id = 6', '20170317003028', '16', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3578', 'SELECT t.* FROM t_goods_attr t WHERE t.goods_Id = 1 and t.attr_id = 5', '20170317003028', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3579', 'SELECT t.* FROM t_goods_attr t WHERE t.goods_Id = 1 and t.attr_id = 4', '20170317003028', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3580', 'UPDATE easequence SET maxid = \'100000000064985\' WHERE fieldname = \'EVENTID\'', '20170317003028', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3581', 'UPDATE easequence SET maxid = \'100000000064986\' WHERE fieldname = \'EVENTID\'', '20170317003028', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3582', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064986\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[save]\', 20170317003028,\'/g5/api/goodsAttr/save\',\'save\',0)', '20170317003028', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3583', 'select * from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1                        limit 0, 20', '20170317003036', '5', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3584', 'select count(t.id) from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1', '20170317003036', '11', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3585', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 2', '20170317003036', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3586', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 5', '20170317003036', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3587', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 6', '20170317003036', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3588', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 4', '20170317003036', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3589', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 3', '20170317003036', '36', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3590', 'UPDATE easequence SET maxid = \'100000000064987\' WHERE fieldname = \'EVENTID\'', '20170317003036', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3591', 'UPDATE easequence SET maxid = \'100000000064988\' WHERE fieldname = \'EVENTID\'', '20170317003036', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3592', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064988\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317003036,\'/g5/api/goodsAttr/getAll\',\'getAll\',0)', '20170317003036', '4', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3593', 'select t.* from t_attr t         where 1 = 1               limit 0, 20', '20170317003041', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3594', 'select count(t.attr_id) from t_attr t         where 1 = 1', '20170317003041', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3595', 'UPDATE easequence SET maxid = \'100000000064989\' WHERE fieldname = \'EVENTID\'', '20170317003041', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3596', 'UPDATE easequence SET maxid = \'100000000064990\' WHERE fieldname = \'EVENTID\'', '20170317003041', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3597', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064990\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317003041,\'/g5/api/attr/getAll\',\'getAll\',0)', '20170317003041', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3598', 'SELECT t.* FROM t_goods_attr t WHERE t.goods_Id = 1 and t.attr_id = 5', '20170317003045', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3599', 'UPDATE easequence SET maxid = \'100000000064991\' WHERE fieldname = \'EVENTID\'', '20170317003045', '8', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3600', 'UPDATE easequence SET maxid = \'100000000064992\' WHERE fieldname = \'EVENTID\'', '20170317003045', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3601', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064992\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[save]\', 20170317003045,\'/g5/api/goodsAttr/save\',\'save\',0)', '20170317003045', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3602', 'DELETE      FROM eahttpsession', '20170317003209', '32', '1', '3');
INSERT INTO `eajdbcmonitor` VALUES ('3603', 'SELECT codeid, field, fieldname, code, codedesc, sortno     FROM eacode  WHERE enabled = \'1\' ORDER BY codeid , sortno', '20170317003209', '28', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3604', 'SELECT paramid, paramkey, paramvalue     FROM eaparam', '20170317003209', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3605', 'DELETE      FROM eahttpsession', '20170317010857', '62', '0', '3');
INSERT INTO `eajdbcmonitor` VALUES ('3606', 'SELECT codeid, field, fieldname, code, codedesc, sortno     FROM eacode  WHERE enabled = \'1\' ORDER BY codeid , sortno', '20170317010857', '47', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3607', 'SELECT paramid, paramkey, paramvalue     FROM eaparam', '20170317010857', '16', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3608', 'SELECT a.userid, a.username, a.ACCOUNT, a.PASSWORD, a.sex, a.deptid, b.theme, b.layout,          (SELECT customid             FROM eadept            WHERE deptid = a.deptid) AS customid,          (SELECT deptname             FROM eadept            WHERE deptid = a.deptid) AS deptname     FROM eauser a, eausersubinfo b     WHERE a.userid = b.userid and a.locked = \'0\' and a.enabled = \'1\'       AND      a.account = \'developer\'', '20170317011234', '16', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3609', 'SELECT        sessionid as sessionID, userid, username, account, createtime as sessionCreatedTime, explorer, loginip as loginIP        FROM eahttpsession where sessionid = \'node01vx2z5gcpc3t614c82dnz5z2d30\'', '20170317011234', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3610', 'INSERT INTO eahttpsession (      sessionid, username, account,       createtime, loginip,userid,explorer)    VALUES (\'node01vx2z5gcpc3t614c82dnz5z2d30\', \'开发人员\', \'developer\',       \'2017-03-17 01:12:34\', \'0:0:0:0:0:0:0:1\', \'10000001\',\'CHROME/55.0.\')', '20170317011234', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3611', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EVENTID\'', '20170317011234', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3612', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'XMID\'', '20170317011235', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3613', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'CODEID\'', '20170317011235', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3614', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EXCEPTIONID\'', '20170317011235', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3615', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_ROLE\'', '20170317011235', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3616', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARAMID\'', '20170317011235', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3617', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'ROLEID\'', '20170317011235', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3618', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_USERMENUMAP\'', '20170317011235', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3619', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_USER\'', '20170317011235', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3620', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'USERID\'', '20170317011235', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3621', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'FILEID\'', '20170317011235', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3622', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARTID\'', '20170317011235', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3623', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_EAROLEAUTHORIZE\'', '20170317011235', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3624', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARTID\'', '20170317011235', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3625', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EVENTID\'', '20170317011235', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3626', 'UPDATE easequence SET maxid = \'100000000064993\' WHERE fieldname = \'EVENTID\'', '20170317011235', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3627', 'UPDATE easequence SET maxid = \'100000000064994\' WHERE fieldname = \'EVENTID\'', '20170317011235', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3628', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064994\', \'10000001\', \'developer\',       \'开发人员\', \'登录系统\', 20170317011234,\'/g5/login/login.do\',\'\',\'\')', '20170317011235', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3629', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317011235', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3630', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170317011236', '10', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3631', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317011236', '12', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3632', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317011236', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3633', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317011236', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3634', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170317011236', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3635', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317011236', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3636', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170317011236', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3637', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317011236', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3638', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170317011236', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3639', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317011236', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3640', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170317011236', '11', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3641', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317011236', '8', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3642', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170317011236', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3643', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317011236', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3644', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170317011236', '9', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3645', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317011236', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3646', 'UPDATE easequence SET maxid = \'100000000064995\' WHERE fieldname = \'EVENTID\'', '20170317011236', '6', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3647', 'UPDATE easequence SET maxid = \'100000000064996\' WHERE fieldname = \'EVENTID\'', '20170317011236', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3648', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064996\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170317011236,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170317011236', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3649', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317011237', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3650', 'UPDATE easequence SET maxid = \'100000000064997\' WHERE fieldname = \'EVENTID\'', '20170317011237', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3651', 'UPDATE easequence SET maxid = \'100000000064998\' WHERE fieldname = \'EVENTID\'', '20170317011237', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3652', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000064998\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170317011237,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170317011237', '37', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3653', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317011238', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3654', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170317011238', '9', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3655', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170317011238', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3656', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170317011238', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3657', 'UPDATE easequence SET maxid = \'100000000064999\' WHERE fieldname = \'EVENTID\'', '20170317011238', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3658', 'UPDATE easequence SET maxid = \'100000000065000\' WHERE fieldname = \'EVENTID\'', '20170317011238', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3659', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065000\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170317011238,\'/g5/goods/init.do\',\'init\',0)', '20170317011238', '4', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3660', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170317011239', '155', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3661', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170317011239', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3662', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170317011239', '8', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3663', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170317011239', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3664', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170317011239', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3665', 'UPDATE easequence SET maxid = \'100000000065001\' WHERE fieldname = \'EVENTID\'', '20170317011239', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3666', 'UPDATE easequence SET maxid = \'100000000065002\' WHERE fieldname = \'EVENTID\'', '20170317011239', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3667', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065002\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317011239,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170317011239', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3668', 'select * from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1                        limit 0, 20', '20170317011242', '16', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3669', 'select count(t.id) from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1', '20170317011242', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3670', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 2', '20170317011242', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3671', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 5', '20170317011242', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3672', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 6', '20170317011242', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3673', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 4', '20170317011242', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3674', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 3', '20170317011242', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3675', 'UPDATE easequence SET maxid = \'100000000065003\' WHERE fieldname = \'EVENTID\'', '20170317011242', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3676', 'UPDATE easequence SET maxid = \'100000000065004\' WHERE fieldname = \'EVENTID\'', '20170317011242', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3677', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065004\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317011242,\'/g5/api/goodsAttr/getAll\',\'getAll\',0)', '20170317011242', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3678', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317011719', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3679', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170317011719', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3680', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317011719', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3681', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317011719', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3682', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317011719', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3683', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170317011719', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3684', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317011719', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3685', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170317011719', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3686', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317011719', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3687', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170317011719', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3688', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317011719', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3689', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170317011719', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3690', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317011719', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3691', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170317011719', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3692', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317011719', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3693', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170317011719', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3694', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317011719', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3695', 'UPDATE easequence SET maxid = \'100000000065005\' WHERE fieldname = \'EVENTID\'', '20170317011719', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3696', 'UPDATE easequence SET maxid = \'100000000065006\' WHERE fieldname = \'EVENTID\'', '20170317011719', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3697', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065006\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170317011719,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170317011719', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3698', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317011719', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3699', 'UPDATE easequence SET maxid = \'100000000065007\' WHERE fieldname = \'EVENTID\'', '20170317011720', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3700', 'UPDATE easequence SET maxid = \'100000000065008\' WHERE fieldname = \'EVENTID\'', '20170317011720', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3701', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065008\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170317011720,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170317011720', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3702', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317011721', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3703', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010202\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170317011721', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3704', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010202\'', '20170317011721', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3705', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010202\'', '20170317011721', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3706', 'UPDATE easequence SET maxid = \'100000000065009\' WHERE fieldname = \'EVENTID\'', '20170317011721', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3707', 'UPDATE easequence SET maxid = \'100000000065010\' WHERE fieldname = \'EVENTID\'', '20170317011721', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3708', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065010\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品类型]\', 20170317011721,\'/g5/type/init.do\',\'init\',0)', '20170317011721', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3709', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317011721', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3710', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170317011721', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3711', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170317011721', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3712', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170317011721', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3713', 'UPDATE easequence SET maxid = \'100000000065011\' WHERE fieldname = \'EVENTID\'', '20170317011721', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3714', 'UPDATE easequence SET maxid = \'100000000065012\' WHERE fieldname = \'EVENTID\'', '20170317011721', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3715', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065012\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170317011721,\'/g5/goods/init.do\',\'init\',0)', '20170317011721', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3716', 'select t.* from t_type t         where 1 = 1               limit 0, 20', '20170317011722', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3717', 'select count(t.type_id) from t_type t         where 1 = 1', '20170317011722', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3718', 'UPDATE easequence SET maxid = \'100000000065013\' WHERE fieldname = \'EVENTID\'', '20170317011722', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3719', 'UPDATE easequence SET maxid = \'100000000065014\' WHERE fieldname = \'EVENTID\'', '20170317011722', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3720', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065014\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317011722,\'/g5/api/type/getAll\',\'getAll\',0)', '20170317011722', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3721', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170317011722', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3722', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170317011722', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3723', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170317011722', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3724', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170317011722', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3725', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170317011722', '7', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3726', 'UPDATE easequence SET maxid = \'100000000065015\' WHERE fieldname = \'EVENTID\'', '20170317011722', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3727', 'UPDATE easequence SET maxid = \'100000000065016\' WHERE fieldname = \'EVENTID\'', '20170317011722', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3728', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065016\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317011722,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170317011722', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3729', 'select * from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1                        limit 0, 20', '20170317011724', '5', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3730', 'select count(t.id) from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1', '20170317011724', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3731', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 2', '20170317011724', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3732', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 5', '20170317011724', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3733', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 6', '20170317011724', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3734', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 4', '20170317011724', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3735', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 3', '20170317011724', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3736', 'UPDATE easequence SET maxid = \'100000000065017\' WHERE fieldname = \'EVENTID\'', '20170317011724', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3737', 'UPDATE easequence SET maxid = \'100000000065018\' WHERE fieldname = \'EVENTID\'', '20170317011724', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3738', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065018\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317011724,\'/g5/api/goodsAttr/getAll\',\'getAll\',0)', '20170317011724', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3739', 'select * from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1                        limit 0, 20', '20170317011726', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3740', 'select count(t.id) from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1', '20170317011726', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3741', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 2', '20170317011726', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3742', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 5', '20170317011727', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3743', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 6', '20170317011727', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3744', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 4', '20170317011727', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3745', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 3', '20170317011727', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3746', 'UPDATE easequence SET maxid = \'100000000065019\' WHERE fieldname = \'EVENTID\'', '20170317011727', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3747', 'UPDATE easequence SET maxid = \'100000000065020\' WHERE fieldname = \'EVENTID\'', '20170317011727', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3748', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065020\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317011727,\'/g5/api/goodsAttr/getAll\',\'getAll\',0)', '20170317011727', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3749', 'select * from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1                        limit 0, 20', '20170317011812', '6', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3750', 'select count(t.id) from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1', '20170317011812', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3751', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 2', '20170317011812', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3752', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 5', '20170317011812', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3753', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 6', '20170317011812', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3754', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 4', '20170317011812', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3755', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 3', '20170317011812', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3756', 'UPDATE easequence SET maxid = \'100000000065021\' WHERE fieldname = \'EVENTID\'', '20170317011812', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3757', 'UPDATE easequence SET maxid = \'100000000065022\' WHERE fieldname = \'EVENTID\'', '20170317011812', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3758', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065022\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317011812,\'/g5/api/goodsAttr/getAll\',\'getAll\',0)', '20170317011812', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3759', 'DELETE      FROM eahttpsession', '20170317012133', '37', '1', '3');
INSERT INTO `eajdbcmonitor` VALUES ('3760', 'SELECT codeid, field, fieldname, code, codedesc, sortno     FROM eacode  WHERE enabled = \'1\' ORDER BY codeid , sortno', '20170317012133', '32', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3761', 'SELECT paramid, paramkey, paramvalue     FROM eaparam', '20170317012133', '7', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3762', 'SELECT a.userid, a.username, a.ACCOUNT, a.PASSWORD, a.sex, a.deptid, b.theme, b.layout,          (SELECT customid             FROM eadept            WHERE deptid = a.deptid) AS customid,          (SELECT deptname             FROM eadept            WHERE deptid = a.deptid) AS deptname     FROM eauser a, eausersubinfo b     WHERE a.userid = b.userid and a.locked = \'0\' and a.enabled = \'1\'       AND      a.account = \'developer\'', '20170317012148', '13', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3763', 'SELECT        sessionid as sessionID, userid, username, account, createtime as sessionCreatedTime, explorer, loginip as loginIP        FROM eahttpsession where sessionid = \'node01hk4yrnebskk6fneqbr43tkx80\'', '20170317012148', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3764', 'INSERT INTO eahttpsession (      sessionid, username, account,       createtime, loginip,userid,explorer)    VALUES (\'node01hk4yrnebskk6fneqbr43tkx80\', \'开发人员\', \'developer\',       \'2017-03-17 01:21:48\', \'0:0:0:0:0:0:0:1\', \'10000001\',\'CHROME/55.0.\')', '20170317012148', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3765', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EVENTID\'', '20170317012148', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3766', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'XMID\'', '20170317012148', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3767', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'CODEID\'', '20170317012148', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3768', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EXCEPTIONID\'', '20170317012148', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3769', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_ROLE\'', '20170317012148', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3770', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARAMID\'', '20170317012148', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3771', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'ROLEID\'', '20170317012148', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3772', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_USERMENUMAP\'', '20170317012148', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3773', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_USER\'', '20170317012148', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3774', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'USERID\'', '20170317012148', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3775', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'FILEID\'', '20170317012148', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3776', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARTID\'', '20170317012148', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3777', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'AUTHORIZEID_EAROLEAUTHORIZE\'', '20170317012148', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3778', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'PARTID\'', '20170317012148', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3779', 'SELECT       sequenceid as sequenceid, fieldname as fieldname, maxid as maxid, remark as remark,       pattern as pattern, idtype as idtype   FROM easequence WHERE fieldname = \'EVENTID\'', '20170317012148', '30', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3780', 'UPDATE easequence SET maxid = \'100000000065023\' WHERE fieldname = \'EVENTID\'', '20170317012148', '6', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3781', 'UPDATE easequence SET maxid = \'100000000065024\' WHERE fieldname = \'EVENTID\'', '20170317012148', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3782', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065024\', \'10000001\', \'developer\',       \'开发人员\', \'登录系统\', 20170317012148,\'/g5/login/login.do\',\'\',\'\')', '20170317012148', '5', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3783', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317012149', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3784', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170317012149', '8', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3785', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317012149', '14', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3786', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317012149', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3787', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317012149', '29', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3788', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170317012149', '9', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3789', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317012149', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3790', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170317012149', '17', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3791', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317012149', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3792', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170317012149', '16', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3793', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317012149', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3794', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170317012149', '14', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3795', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317012149', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3796', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170317012149', '26', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3797', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317012149', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3798', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170317012150', '11', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3799', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317012150', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3800', 'UPDATE easequence SET maxid = \'100000000065025\' WHERE fieldname = \'EVENTID\'', '20170317012150', '20', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3801', 'UPDATE easequence SET maxid = \'100000000065026\' WHERE fieldname = \'EVENTID\'', '20170317012150', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3802', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065026\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170317012150,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170317012150', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3803', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317012151', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3804', 'UPDATE easequence SET maxid = \'100000000065027\' WHERE fieldname = \'EVENTID\'', '20170317012151', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3805', 'UPDATE easequence SET maxid = \'100000000065028\' WHERE fieldname = \'EVENTID\'', '20170317012151', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3806', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065028\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170317012151,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170317012151', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3807', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317012152', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3808', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170317012152', '8', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3809', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170317012152', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3810', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170317012152', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3811', 'UPDATE easequence SET maxid = \'100000000065029\' WHERE fieldname = \'EVENTID\'', '20170317012152', '6', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3812', 'UPDATE easequence SET maxid = \'100000000065030\' WHERE fieldname = \'EVENTID\'', '20170317012152', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3813', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065030\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170317012152,\'/g5/goods/init.do\',\'init\',0)', '20170317012152', '6', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3814', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170317012153', '142', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3815', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170317012153', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3816', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170317012153', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3817', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170317012153', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3818', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170317012153', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3819', 'UPDATE easequence SET maxid = \'100000000065031\' WHERE fieldname = \'EVENTID\'', '20170317012153', '7', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3820', 'UPDATE easequence SET maxid = \'100000000065032\' WHERE fieldname = \'EVENTID\'', '20170317012153', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3821', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065032\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317012153,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170317012153', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3822', 'select * from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1                        limit 0, 20', '20170317012156', '13', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3823', 'select count(t.id) from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1', '20170317012156', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3824', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 2', '20170317012156', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3825', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 5', '20170317012156', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3826', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 6', '20170317012156', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3827', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 4', '20170317012156', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3828', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 3', '20170317012156', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3829', 'UPDATE easequence SET maxid = \'100000000065033\' WHERE fieldname = \'EVENTID\'', '20170317012156', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3830', 'UPDATE easequence SET maxid = \'100000000065034\' WHERE fieldname = \'EVENTID\'', '20170317012156', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3831', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065034\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317012156,\'/g5/api/goodsAttr/getAll\',\'getAll\',0)', '20170317012156', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3832', 'DELETE FROM t_attr WHERE attr_id = \'\'', '20170317012203', '2', '0', '3');
INSERT INTO `eajdbcmonitor` VALUES ('3833', 'UPDATE easequence SET maxid = \'100000000065035\' WHERE fieldname = \'EVENTID\'', '20170317012203', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3834', 'UPDATE easequence SET maxid = \'100000000065036\' WHERE fieldname = \'EVENTID\'', '20170317012203', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3835', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065036\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[del]\', 20170317012203,\'/g5/attr/del.do\',\'del\',0)', '20170317012203', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3836', 'select * from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1                        limit 0, 20', '20170317012207', '5', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3837', 'select count(t.id) from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1', '20170317012207', '8', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3838', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 2', '20170317012207', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3839', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 5', '20170317012207', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3840', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 6', '20170317012207', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3841', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 4', '20170317012207', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3842', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 3', '20170317012207', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3843', 'UPDATE easequence SET maxid = \'100000000065037\' WHERE fieldname = \'EVENTID\'', '20170317012207', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3844', 'UPDATE easequence SET maxid = \'100000000065038\' WHERE fieldname = \'EVENTID\'', '20170317012207', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3845', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065038\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317012207,\'/g5/api/goodsAttr/getAll\',\'getAll\',0)', '20170317012207', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3846', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317012242', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3847', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170317012242', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3848', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317012242', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3849', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317012242', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3850', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317012242', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3851', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170317012242', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3852', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317012242', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3853', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170317012242', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3854', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317012242', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3855', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170317012242', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3856', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317012242', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3857', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170317012242', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3858', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317012242', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3859', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170317012242', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3860', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317012242', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3861', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170317012242', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3862', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317012242', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3863', 'UPDATE easequence SET maxid = \'100000000065039\' WHERE fieldname = \'EVENTID\'', '20170317012242', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3864', 'UPDATE easequence SET maxid = \'100000000065040\' WHERE fieldname = \'EVENTID\'', '20170317012242', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3865', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065040\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170317012242,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170317012242', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3866', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317012242', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3867', 'UPDATE easequence SET maxid = \'100000000065041\' WHERE fieldname = \'EVENTID\'', '20170317012242', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3868', 'UPDATE easequence SET maxid = \'100000000065042\' WHERE fieldname = \'EVENTID\'', '20170317012242', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3869', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065042\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170317012242,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170317012242', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3870', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317012244', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3871', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170317012244', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3872', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170317012244', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3873', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170317012244', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3874', 'UPDATE easequence SET maxid = \'100000000065043\' WHERE fieldname = \'EVENTID\'', '20170317012244', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3875', 'UPDATE easequence SET maxid = \'100000000065044\' WHERE fieldname = \'EVENTID\'', '20170317012244', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3876', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065044\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170317012244,\'/g5/goods/init.do\',\'init\',0)', '20170317012244', '26', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3877', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170317012244', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3878', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170317012244', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3879', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170317012244', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3880', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170317012244', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3881', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170317012244', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3882', 'UPDATE easequence SET maxid = \'100000000065045\' WHERE fieldname = \'EVENTID\'', '20170317012244', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3883', 'UPDATE easequence SET maxid = \'100000000065046\' WHERE fieldname = \'EVENTID\'', '20170317012244', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3884', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065046\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317012244,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170317012244', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3885', 'select * from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1                        limit 0, 20', '20170317012246', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3886', 'select count(t.id) from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1', '20170317012246', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3887', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 2', '20170317012246', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3888', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 5', '20170317012246', '8', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3889', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 6', '20170317012246', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3890', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 4', '20170317012246', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3891', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 3', '20170317012246', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3892', 'UPDATE easequence SET maxid = \'100000000065047\' WHERE fieldname = \'EVENTID\'', '20170317012246', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3893', 'UPDATE easequence SET maxid = \'100000000065048\' WHERE fieldname = \'EVENTID\'', '20170317012246', '8', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3894', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065048\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317012246,\'/g5/api/goodsAttr/getAll\',\'getAll\',0)', '20170317012246', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3895', 'DELETE FROM t_attr WHERE attr_id = \'\'', '20170317012251', '2', '0', '3');
INSERT INTO `eajdbcmonitor` VALUES ('3896', 'UPDATE easequence SET maxid = \'100000000065049\' WHERE fieldname = \'EVENTID\'', '20170317012251', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3897', 'UPDATE easequence SET maxid = \'100000000065050\' WHERE fieldname = \'EVENTID\'', '20170317012251', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3898', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065050\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[del]\', 20170317012251,\'/g5/attr/del.do\',\'del\',0)', '20170317012251', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3899', 'DELETE FROM t_attr WHERE attr_id = \'\'', '20170317012525', '3', '0', '3');
INSERT INTO `eajdbcmonitor` VALUES ('3900', 'UPDATE easequence SET maxid = \'100000000065051\' WHERE fieldname = \'EVENTID\'', '20170317012525', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3901', 'UPDATE easequence SET maxid = \'100000000065052\' WHERE fieldname = \'EVENTID\'', '20170317012525', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3902', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065052\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[del]\', 20170317012525,\'/g5/attr/del.do\',\'del\',0)', '20170317012525', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3903', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317012543', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3904', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170317012543', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3905', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317012543', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3906', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317012543', '1', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3907', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317012543', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3908', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170317012543', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3909', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317012543', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3910', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170317012543', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3911', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317012543', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3912', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170317012543', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3913', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317012543', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3914', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170317012543', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3915', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317012543', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3916', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170317012543', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3917', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317012543', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3918', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170317012543', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3919', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317012543', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3920', 'UPDATE easequence SET maxid = \'100000000065053\' WHERE fieldname = \'EVENTID\'', '20170317012543', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3921', 'UPDATE easequence SET maxid = \'100000000065054\' WHERE fieldname = \'EVENTID\'', '20170317012543', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3922', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065054\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170317012543,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170317012543', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3923', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317012544', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3924', 'UPDATE easequence SET maxid = \'100000000065055\' WHERE fieldname = \'EVENTID\'', '20170317012544', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3925', 'UPDATE easequence SET maxid = \'100000000065056\' WHERE fieldname = \'EVENTID\'', '20170317012544', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3926', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065056\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170317012544,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170317012544', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3927', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317012545', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3928', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170317012545', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3929', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170317012545', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3930', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170317012545', '5', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3931', 'UPDATE easequence SET maxid = \'100000000065057\' WHERE fieldname = \'EVENTID\'', '20170317012545', '6', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3932', 'UPDATE easequence SET maxid = \'100000000065058\' WHERE fieldname = \'EVENTID\'', '20170317012545', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3933', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065058\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170317012545,\'/g5/goods/init.do\',\'init\',0)', '20170317012545', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3934', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170317012545', '5', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3935', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170317012545', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3936', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170317012545', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3937', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170317012545', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3938', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170317012545', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3939', 'UPDATE easequence SET maxid = \'100000000065059\' WHERE fieldname = \'EVENTID\'', '20170317012545', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3940', 'UPDATE easequence SET maxid = \'100000000065060\' WHERE fieldname = \'EVENTID\'', '20170317012545', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3941', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065060\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317012545,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170317012545', '3', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3942', 'select * from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1                        limit 0, 20', '20170317012547', '5', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3943', 'select count(t.id) from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1', '20170317012547', '18', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3944', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 2', '20170317012547', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3945', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 5', '20170317012547', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3946', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 6', '20170317012547', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3947', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 4', '20170317012547', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3948', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 3', '20170317012547', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3949', 'UPDATE easequence SET maxid = \'100000000065061\' WHERE fieldname = \'EVENTID\'', '20170317012547', '5', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3950', 'UPDATE easequence SET maxid = \'100000000065062\' WHERE fieldname = \'EVENTID\'', '20170317012547', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3951', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065062\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317012547,\'/g5/api/goodsAttr/getAll\',\'getAll\',0)', '20170317012547', '30', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3952', 'DELETE FROM t_goods_attr WHERE id = \'\'', '20170317012552', '3', '0', '3');
INSERT INTO `eajdbcmonitor` VALUES ('3953', 'UPDATE easequence SET maxid = \'100000000065063\' WHERE fieldname = \'EVENTID\'', '20170317012552', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3954', 'UPDATE easequence SET maxid = \'100000000065064\' WHERE fieldname = \'EVENTID\'', '20170317012552', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3955', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065064\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[del]\', 20170317012552,\'/g5/goodsAttr/del.do\',\'del\',0)', '20170317012552', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3956', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317012610', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3957', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls, \'1\' as authorizelevel, b.sortno              FROM eamenu b   WHERE                       LENGTH(b.menuid) = 4                               ORDER BY b.sortno asc', '20170317012610', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3958', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317012610', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3959', 'SELECT deptid, deptname from eadept a     WHERE a.deptid = \'001\' and a.enabled=\'1\'', '20170317012610', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3960', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317012610', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3961', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0102%\'          ORDER BY b.sortno asc', '20170317012610', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3962', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317012610', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3963', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0103%\'          ORDER BY b.sortno asc', '20170317012610', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3964', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317012610', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3965', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0104%\'          ORDER BY b.sortno asc', '20170317012610', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3966', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317012610', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3967', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0105%\'          ORDER BY b.sortno asc', '20170317012610', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3968', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317012610', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3969', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0106%\'          ORDER BY b.sortno asc', '20170317012610', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3970', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317012610', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3971', 'SELECT DISTINCT b.menuid, b.menuname, b.iconcls,b.parentid,b.request,b.sortno,                     b.expanded,\'1\' as authorizelevel, b.icon              FROM eamenu b             WHERE  b.menuid like \'0101%\'          ORDER BY b.sortno asc', '20170317012610', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3972', 'SELECT menuname FROM eamenu WHERE menuid = \'01\'', '20170317012610', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3973', 'UPDATE easequence SET maxid = \'100000000065065\' WHERE fieldname = \'EVENTID\'', '20170317012610', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3974', 'UPDATE easequence SET maxid = \'100000000065066\' WHERE fieldname = \'EVENTID\'', '20170317012610', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3975', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065066\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[indexInit]\', 20170317012610,\'/g5/index/indexInit.do\',\'indexInit\',0)', '20170317012610', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3976', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317012611', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3977', 'UPDATE easequence SET maxid = \'100000000065067\' WHERE fieldname = \'EVENTID\'', '20170317012611', '6', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3978', 'UPDATE easequence SET maxid = \'100000000065068\' WHERE fieldname = \'EVENTID\'', '20170317012611', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3979', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065068\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[preferencesInit]\', 20170317012611,\'/g5/index/preferencesInit.do\',\'preferencesInit\',0)', '20170317012611', '4', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3980', 'SELECT theme, layout, background FROM eausersubinfo     WHERE userid = \'10000001\'', '20170317012614', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3981', 'SELECT distinct a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, earolemenupart b      WHERE a.partid = b.partid and b.menuid = \'010203\' and b.roleid in (SELECT roleid FROM eauserauthorize WHERE userid = \'10000001\')', '20170317012614', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3982', 'SELECT a.cmpid,a.cmptype,b.partauthtype FROM eamenupart a, eausermenupart b      WHERE a.partid = b.partid and b.userid = \'10000001\' and b.menuid = \'010203\'', '20170317012614', '2', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3983', 'SELECT             menuid, menuname, parentid,       iconcls, expanded, request,       leaf, sortno, remark,       icon           FROM eamenu where menuid = \'010203\'', '20170317012614', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3984', 'UPDATE easequence SET maxid = \'100000000065069\' WHERE fieldname = \'EVENTID\'', '20170317012614', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3985', 'UPDATE easequence SET maxid = \'100000000065070\' WHERE fieldname = \'EVENTID\'', '20170317012614', '3', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3986', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065070\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]打开了菜单[商品列表]\', 20170317012614,\'/g5/goods/init.do\',\'init\',0)', '20170317012614', '15', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3987', 'select t.* from t_goods t         where 1 = 1                                          limit 0, 20', '20170317012614', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3988', 'select count(t.goods_id) from t_goods t         where 1 = 1', '20170317012614', '4', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3989', 'SELECT t.* FROM t_supplier t WHERE t.supplier_Id = 1', '20170317012614', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3990', 'SELECT t.* FROM t_type t WHERE t.type_id = 4', '20170317012614', '6', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3991', 'SELECT           t.USERID,t.USERNAME,t.ACCOUNT,t.PASSWORD,t.SEX         FROM eauser t         WHERE t.USERID = \'\'', '20170317012614', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3992', 'UPDATE easequence SET maxid = \'100000000065071\' WHERE fieldname = \'EVENTID\'', '20170317012614', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3993', 'UPDATE easequence SET maxid = \'100000000065072\' WHERE fieldname = \'EVENTID\'', '20170317012614', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('3994', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065072\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317012614,\'/g5/api/goods/getAll\',\'getAll\',0)', '20170317012614', '2', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('3995', 'select * from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1                        limit 0, 20', '20170317012617', '5', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3996', 'select count(t.id) from t_goods_attr t         left join t_attr x on t.attr_id = x.attr_id         where 1 = 1', '20170317012617', '3', '-1', '0');
INSERT INTO `eajdbcmonitor` VALUES ('3997', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 2', '20170317012617', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3998', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 5', '20170317012617', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('3999', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 6', '20170317012617', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('4000', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 4', '20170317012617', '3', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('4001', 'SELECT t.* FROM t_attr t WHERE t.attr_id = 3', '20170317012617', '4', '-1', '4');
INSERT INTO `eajdbcmonitor` VALUES ('4002', 'UPDATE easequence SET maxid = \'100000000065073\' WHERE fieldname = \'EVENTID\'', '20170317012617', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('4003', 'UPDATE easequence SET maxid = \'100000000065074\' WHERE fieldname = \'EVENTID\'', '20170317012617', '2', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('4004', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065074\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[getAll]\', 20170317012617,\'/g5/api/goodsAttr/getAll\',\'getAll\',0)', '20170317012617', '1', '1', '1');
INSERT INTO `eajdbcmonitor` VALUES ('4005', 'DELETE FROM t_goods_attr WHERE id = \'\'', '20170317012620', '2', '0', '3');
INSERT INTO `eajdbcmonitor` VALUES ('4006', 'UPDATE easequence SET maxid = \'100000000065075\' WHERE fieldname = \'EVENTID\'', '20170317012620', '4', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('4007', 'UPDATE easequence SET maxid = \'100000000065076\' WHERE fieldname = \'EVENTID\'', '20170317012620', '1', '1', '2');
INSERT INTO `eajdbcmonitor` VALUES ('4008', 'INSERT INTO eaevent (      eventid, userid, account,       username, description, activetime,requestpath,methodname,costtime)    VALUES (\'100000000065076\', \'10000001\', \'developer\',       \'开发人员\', \'开发人员[developer]调用了Action方法[del]\', 20170317012620,\'/g5/api/goodsAttr/del\',\'del\',0)', '20170317012620', '1', '1', '1');

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
INSERT INTO `eamenu` VALUES ('01', '超市管理系统', '0', null, '0', null, '0', '1', null, null, '1', null, null, null, null);
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
INSERT INTO `eamenu` VALUES ('0102', '商品管理', '01', '', '0', '', '0', '0', '', '', '0', '', '800', '600', '0');
INSERT INTO `eamenu` VALUES ('010201', '商品属性', '0102', '', '0', '/attr/init.do', '1', '0', '', '', '0', '', '800', '600', '0');
INSERT INTO `eamenu` VALUES ('010202', '商品类型', '0102', '', '0', '/type/init.do', '1', '0', '', '', '0', '', '800', '600', '0');
INSERT INTO `eamenu` VALUES ('010203', '商品列表', '0102', '', '0', '/goods/init.do', '1', '0', '', '', '0', '', '800', '600', '0');
INSERT INTO `eamenu` VALUES ('0103', '供货商管理', '01', '', '0', '', '0', '0', '', '', '0', '', '800', '600', '0');
INSERT INTO `eamenu` VALUES ('010301', '供货商管理', '0103', '', '0', '/supplier/init.do', '1', '0', '', '', '0', '', '800', '600', '0');
INSERT INTO `eamenu` VALUES ('0104', '销售管理', '01', '', '0', '', '0', '0', '', '', '0', '', '800', '600', '0');
INSERT INTO `eamenu` VALUES ('010401', '销售记录', '0104', '', '0', '/sale/init.do', '1', '0', '', '', '0', '', '800', '600', '0');
INSERT INTO `eamenu` VALUES ('0105', '库存管理', '01', '', '0', '', '0', '0', '', '', '0', '', '800', '600', '0');
INSERT INTO `eamenu` VALUES ('010501', '库存盘点', '0105', '', '0', '/stock/init.do', '1', '0', '', '', '0', '', '800', '600', '0');
INSERT INTO `eamenu` VALUES ('010502', '变更记录', '0105', '', '0', '/stockLog/init.do', '1', '0', '', '', '0', '', '800', '600', '0');
INSERT INTO `eamenu` VALUES ('010503', '采购单列表', '0105', '', '0', '/stock/purchase/init.do', '1', '0', '', '', '0', '', '800', '600', '0');
INSERT INTO `eamenu` VALUES ('0106', '采购管理', '01', '', '0', '', '0', '0', '', '', '0', '', '800', '600', '0');
INSERT INTO `eamenu` VALUES ('010601', '采购单管理', '0106', '', '0', '/purchase/init.do', '1', '0', '', '', '0', '', '800', '600', '0');
INSERT INTO `eamenu` VALUES ('0107', '审批', '01', '', '0', '', '0', '0', '', '', '0', '', '800', '600', '0');
INSERT INTO `eamenu` VALUES ('010701', '采购单审批', '0107', '', '0', '/approve/purchase/init.do', '1', '0', '', '', '0', '', '800', '600', '0');
INSERT INTO `eamenu` VALUES ('0108', '统计', '01', '', '0', '', '0', '0', '', '', '0', '', '800', '600', '0');
INSERT INTO `eamenu` VALUES ('010801', '销售统计', '0108', '', '0', '/statistics/staSale/init.do', '1', '1', '', '', '0', '', '800', '600', '0');
INSERT INTO `eamenu` VALUES ('010802', '采购统计', '0108', '', '0', '/statistics/staPurchase/init.do', '1', '0', '', '', '0', '', '800', '600', '0');

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
INSERT INTO `eaparam` VALUES ('10000017', 'SYS_TITLE', '超市管理系统', '系统标题');
INSERT INTO `eaparam` VALUES ('10000018', 'LOGIN_WINDOW_TITLE', '超市管理系统', '登录窗口标题');
INSERT INTO `eaparam` VALUES ('10000019', 'LOGIN_WINDOW_BANNER', '/resource/image/login_banner.png', '登录窗口的Banner图片。尺寸规格:450 X 70');
INSERT INTO `eaparam` VALUES ('10000020', 'WEST_NAVIGATE_TITLE', '系统导航', '左边菜单导航栏标题');
INSERT INTO `eaparam` VALUES ('10000021', 'BOTTOM_COPYRIGHT', 'Copyright&copy 2015 中国.北京', '右下角的版权信息');
INSERT INTO `eaparam` VALUES ('10000022', 'MENU_FIRST', '超市管理系统', '中心面板导航菜单的第一个节点名');
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
INSERT INTO `earole` VALUES ('10000100', '采购员', '001', '1', '', '0');
INSERT INTO `earole` VALUES ('10000101', '销售员', '001', '1', '', '0');
INSERT INTO `earole` VALUES ('10000102', '库管', '001', '1', '', '0');
INSERT INTO `earole` VALUES ('10000103', '超市管理员', '001', '2', '', '0');
INSERT INTO `earole` VALUES ('10000104', '经理', '001', '1', '', '0');

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
INSERT INTO `earoleauthorize` VALUES ('10001728', '10000100', '01', '1');
INSERT INTO `earoleauthorize` VALUES ('10001729', '10000100', '0106', '1');
INSERT INTO `earoleauthorize` VALUES ('10001730', '10000100', '010601', '1');
INSERT INTO `earoleauthorize` VALUES ('10001731', '10000100', '0103', '1');
INSERT INTO `earoleauthorize` VALUES ('10001732', '10000100', '010301', '1');
INSERT INTO `earoleauthorize` VALUES ('10001733', '10000101', '01', '1');
INSERT INTO `earoleauthorize` VALUES ('10001734', '10000101', '0104', '1');
INSERT INTO `earoleauthorize` VALUES ('10001735', '10000101', '010401', '1');
INSERT INTO `earoleauthorize` VALUES ('10001744', '10000103', '01', '2');
INSERT INTO `earoleauthorize` VALUES ('10001745', '10000103', '0102', '2');
INSERT INTO `earoleauthorize` VALUES ('10001746', '10000103', '010201', '2');
INSERT INTO `earoleauthorize` VALUES ('10001747', '10000103', '010202', '2');
INSERT INTO `earoleauthorize` VALUES ('10001748', '10000103', '010203', '2');
INSERT INTO `earoleauthorize` VALUES ('10001749', '10000103', '0103', '2');
INSERT INTO `earoleauthorize` VALUES ('10001750', '10000103', '010301', '2');
INSERT INTO `earoleauthorize` VALUES ('10001751', '10000103', '0104', '2');
INSERT INTO `earoleauthorize` VALUES ('10001752', '10000103', '010401', '2');
INSERT INTO `earoleauthorize` VALUES ('10001753', '10000103', '0105', '2');
INSERT INTO `earoleauthorize` VALUES ('10001754', '10000103', '010501', '2');
INSERT INTO `earoleauthorize` VALUES ('10001755', '10000103', '010502', '2');
INSERT INTO `earoleauthorize` VALUES ('10001756', '10000103', '010503', '2');
INSERT INTO `earoleauthorize` VALUES ('10001757', '10000103', '0106', '2');
INSERT INTO `earoleauthorize` VALUES ('10001758', '10000103', '010601', '2');
INSERT INTO `earoleauthorize` VALUES ('10001759', '10000103', '0107', '2');
INSERT INTO `earoleauthorize` VALUES ('10001760', '10000103', '010701', '2');
INSERT INTO `earoleauthorize` VALUES ('10001761', '10000102', '01', '1');
INSERT INTO `earoleauthorize` VALUES ('10001762', '10000102', '0102', '1');
INSERT INTO `earoleauthorize` VALUES ('10001763', '10000102', '010201', '1');
INSERT INTO `earoleauthorize` VALUES ('10001764', '10000102', '010202', '1');
INSERT INTO `earoleauthorize` VALUES ('10001765', '10000102', '010203', '1');
INSERT INTO `earoleauthorize` VALUES ('10001766', '10000102', '0105', '1');
INSERT INTO `earoleauthorize` VALUES ('10001767', '10000102', '010501', '1');
INSERT INTO `earoleauthorize` VALUES ('10001768', '10000102', '010502', '1');
INSERT INTO `earoleauthorize` VALUES ('10001769', '10000102', '010503', '1');
INSERT INTO `earoleauthorize` VALUES ('10001770', '10000104', '01', '1');
INSERT INTO `earoleauthorize` VALUES ('10001771', '10000104', '0102', '1');
INSERT INTO `earoleauthorize` VALUES ('10001772', '10000104', '010201', '1');
INSERT INTO `earoleauthorize` VALUES ('10001773', '10000104', '010202', '1');
INSERT INTO `earoleauthorize` VALUES ('10001774', '10000104', '010203', '1');
INSERT INTO `earoleauthorize` VALUES ('10001775', '10000104', '0106', '1');
INSERT INTO `earoleauthorize` VALUES ('10001776', '10000104', '010601', '1');
INSERT INTO `earoleauthorize` VALUES ('10001777', '10000104', '0107', '1');
INSERT INTO `earoleauthorize` VALUES ('10001778', '10000104', '010701', '1');
INSERT INTO `earoleauthorize` VALUES ('10001779', '10000104', '0103', '1');
INSERT INTO `earoleauthorize` VALUES ('10001780', '10000104', '010301', '1');
INSERT INTO `earoleauthorize` VALUES ('10001781', '10000104', '0104', '1');
INSERT INTO `earoleauthorize` VALUES ('10001782', '10000104', '010401', '1');
INSERT INTO `earoleauthorize` VALUES ('10001783', '10000104', '0105', '1');
INSERT INTO `earoleauthorize` VALUES ('10001784', '10000104', '010501', '1');
INSERT INTO `earoleauthorize` VALUES ('10001785', '10000104', '010502', '1');
INSERT INTO `earoleauthorize` VALUES ('10001786', '10000104', '010503', '1');

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
INSERT INTO `easequence` VALUES ('1001', 'ROLEID', '10000104', '角色ID', '00000000', '1');
INSERT INTO `easequence` VALUES ('1002', 'USERID', '10004946', '用户ID', '00000000', '1');
INSERT INTO `easequence` VALUES ('1003', 'PARAMID', '10000036', '参数ID', '00000000', '1');
INSERT INTO `easequence` VALUES ('1004', 'EXCEPTIONID', '10000102', '异常ID', '00000000', '1');
INSERT INTO `easequence` VALUES ('1005', 'AUTHORIZEID_ROLE', '10001786', '角色授权ID', '00000000', '1');
INSERT INTO `easequence` VALUES ('1006', 'AUTHORIZEID_USER', '10004913', '人员授权ID', '00000000', '1');
INSERT INTO `easequence` VALUES ('1007', 'AUTHORIZEID_USERMENUMAP', '10000448', '人员菜单映射ID', '00000000', '1');
INSERT INTO `easequence` VALUES ('1008', 'XMID', '1000341267', '演示表(EZ_CHARGECATALOG)项目ID', '0000000000', '1');
INSERT INTO `easequence` VALUES ('1009', 'EVENTID', '100000000065076', '事件ID', '000000000000000', '1');
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
INSERT INTO `eauser` VALUES ('10004941', '超市管理员', 'admin', 'RaFutWeh0ww=', '1', '001', '0', '', '2', '1');
INSERT INTO `eauser` VALUES ('10004942', '采购', 'cg', 'RaFutWeh0ww=', '0', '001', '0', '', '1', '1');
INSERT INTO `eauser` VALUES ('10004943', '销售', 'xs', 'RaFutWeh0ww=', '1', '001', '0', '', '1', '1');
INSERT INTO `eauser` VALUES ('10004944', '库管', 'kg', 'RaFutWeh0ww=', '1', '001', '0', '', '1', '1');
INSERT INTO `eauser` VALUES ('10004945', '经理', 'jd', 'piz3LxCKeRI=', '1', '001', '0', '', '1', '1');
INSERT INTO `eauser` VALUES ('10004946', '张三', 'zhangs', 'RaFutWeh0ww=', '1', '001', '0', '', '1', '1');

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
INSERT INTO `eauserauthorize` VALUES ('10004909', '10004942', '10000100');
INSERT INTO `eauserauthorize` VALUES ('10004910', '10004943', '10000101');
INSERT INTO `eauserauthorize` VALUES ('10004911', '10004944', '10000102');
INSERT INTO `eauserauthorize` VALUES ('10004912', '10004941', '10000103');
INSERT INTO `eauserauthorize` VALUES ('10004913', '10004945', '10000104');

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
INSERT INTO `eausermenumap` VALUES ('10000442', '10004941', '01', '1');
INSERT INTO `eausermenumap` VALUES ('10000443', '10004941', '0101', '1');
INSERT INTO `eausermenumap` VALUES ('10000444', '10004941', '010102', '1');
INSERT INTO `eausermenumap` VALUES ('10000445', '10004941', '01010201', '1');
INSERT INTO `eausermenumap` VALUES ('10000447', '10004941', '01010202', '1');
INSERT INTO `eausermenumap` VALUES ('10000446', '10004941', '01010204', '1');
INSERT INTO `eausermenumap` VALUES ('10000448', '10004941', '01010205', '1');

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
INSERT INTO `eausersubinfo` VALUES ('10004941', null, null, null);
INSERT INTO `eausersubinfo` VALUES ('10004942', null, null, null);
INSERT INTO `eausersubinfo` VALUES ('10004943', null, null, null);
INSERT INTO `eausersubinfo` VALUES ('10004944', null, null, null);
INSERT INTO `eausersubinfo` VALUES ('10004945', null, null, null);
INSERT INTO `eausersubinfo` VALUES ('10004946', null, null, null);

-- ----------------------------
-- Table structure for t_attr
-- ----------------------------
DROP TABLE IF EXISTS `t_attr`;
CREATE TABLE `t_attr` (
  `attr_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '属性ID',
  `attr_name` varchar(32) DEFAULT NULL COMMENT '属性名称',
  `attr_value` varchar(32) DEFAULT NULL COMMENT '属性值',
  PRIMARY KEY (`attr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_attr
-- ----------------------------
INSERT INTO `t_attr` VALUES ('2', '容量', '500ml');
INSERT INTO `t_attr` VALUES ('3', '颜色', '黄色');
INSERT INTO `t_attr` VALUES ('4', '高', '12cm');
INSERT INTO `t_attr` VALUES ('5', '酒精浓度', '50');
INSERT INTO `t_attr` VALUES ('6', '香型', '浓香型');

-- ----------------------------
-- Table structure for t_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `goods_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `serial_number` varchar(16) DEFAULT NULL COMMENT '编号',
  `bar_code` varchar(16) DEFAULT NULL COMMENT '条形码',
  `goods_name` varchar(64) NOT NULL COMMENT '产品名称',
  `brand` varchar(64) NOT NULL COMMENT '品牌',
  `ori_area` varchar(128) NOT NULL COMMENT '产地',
  `in_price` decimal(10,0) NOT NULL COMMENT '进价',
  `out_price` decimal(10,0) NOT NULL COMMENT '售价',
  `supplier_id` int(11) NOT NULL COMMENT '供货商ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `type_id` int(11) NOT NULL COMMENT '类别ID',
  `user_id` varchar(8) NOT NULL COMMENT '创建人',
  PRIMARY KEY (`goods_id`),
  KEY `attr_id` (`type_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `t_goods_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `t_supplier` (`supplier_id`),
  CONSTRAINT `t_goods_ibfk_2` FOREIGN KEY (`type_id`) REFERENCES `t_type` (`type_id`),
  CONSTRAINT `t_goods_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `eauser` (`USERID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('4', 'XY-001', '001', '长白山鹿茸', '长白山', '长白山', '800', '1000', '1', '2017-03-21 00:53:52', '3', '10000001');
INSERT INTO `t_goods` VALUES ('5', 'XY-002', '002', '西湖龙井', '龙井', '杭州西湖', '200', '560', '1', '2017-03-24 22:09:40', '3', '10000001');
INSERT INTO `t_goods` VALUES ('6', 'XY-003', '003', '蛋糕', '恒源蛋糕', '北京大兴', '350', '460', '2', '2017-04-07 01:30:05', '3', '10000001');
INSERT INTO `t_goods` VALUES ('7', 'XY-004', '004', '脆脆鲨', '脆脆鲨', '中国', '1', '2', '3', '2017-04-18 01:13:50', '7', '10000001');
INSERT INTO `t_goods` VALUES ('16', 'XY-005', '005', '蒙牛酸奶', '蒙牛', '内蒙古呼和浩特', '10', '0', '3', '2017-04-18 22:59:32', '8', '10000001');
INSERT INTO `t_goods` VALUES ('17', 'XY-006', '006', '好吃点', '好吃点', '中国上海', '20', '30', '2', '2017-04-20 00:56:53', '7', '10000001');
INSERT INTO `t_goods` VALUES ('18', '', '', '金典牛奶', '金典', '中国山东', '10', '0', '3', '2017-04-20 01:19:47', '7', '10000001');

-- ----------------------------
-- Table structure for t_goods_attr
-- ----------------------------
DROP TABLE IF EXISTS `t_goods_attr`;
CREATE TABLE `t_goods_attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `attr_id` int(11) NOT NULL COMMENT '属性ID',
  `user_id` varchar(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attr_id` (`attr_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `t_goods_attr_ibfk_1` FOREIGN KEY (`attr_id`) REFERENCES `t_attr` (`attr_id`),
  CONSTRAINT `t_goods_attr_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `eauser` (`USERID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_goods_attr
-- ----------------------------
INSERT INTO `t_goods_attr` VALUES ('14', '4', '4', '10000001');
INSERT INTO `t_goods_attr` VALUES ('15', '4', '5', '10000001');
INSERT INTO `t_goods_attr` VALUES ('16', '4', '6', '10000001');
INSERT INTO `t_goods_attr` VALUES ('17', '5', '6', '10000001');
INSERT INTO `t_goods_attr` VALUES ('18', '4', '3', '10000001');
INSERT INTO `t_goods_attr` VALUES ('19', '4', '2', '10000001');

-- ----------------------------
-- Table structure for t_purchase
-- ----------------------------
DROP TABLE IF EXISTS `t_purchase`;
CREATE TABLE `t_purchase` (
  `purchase_id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_number` varchar(32) NOT NULL COMMENT '采购单号',
  `total` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总金额',
  `payable` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '应付金额',
  `actual` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '实付金额',
  `user_id` int(11) NOT NULL COMMENT '经办人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `finish_time` datetime DEFAULT NULL COMMENT '完成时间',
  `status` char(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `comment` varchar(128) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`purchase_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_purchase
-- ----------------------------
INSERT INTO `t_purchase` VALUES ('7', 'CY-001', '50.00', '50.00', '50.00', '10000001', '2017-04-12 22:56:09', '2017-04-14 22:59:37', '3', '无');
INSERT INTO `t_purchase` VALUES ('8', 'CY-002', '200.00', '200.00', '200.00', '10000001', '2017-04-18 01:01:41', '2017-04-18 01:42:18', '3', '200');
INSERT INTO `t_purchase` VALUES ('9', 'CY-003', '500.00', '500.00', '500.00', '10000001', '2017-04-20 01:12:21', '2017-04-20 01:19:47', '3', '');

-- ----------------------------
-- Table structure for t_purchase_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_purchase_goods`;
CREATE TABLE `t_purchase_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_id` int(11) NOT NULL,
  `goods_id` int(11) DEFAULT NULL COMMENT '商品ID',
  `goods_name` varchar(32) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  `price` decimal(10,0) NOT NULL DEFAULT '0' COMMENT '单价',
  `supplier_id` int(11) NOT NULL,
  `brand` varchar(32) NOT NULL,
  `ori_area` varchar(128) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_purchase_goods
-- ----------------------------
INSERT INTO `t_purchase_goods` VALUES ('14', '7', '16', '蒙牛酸奶', '5', '10', '3', '蒙牛', '内蒙古呼和浩特', '8');
INSERT INTO `t_purchase_goods` VALUES ('15', '8', '7', '脆脆鲨', '200', '1', '3', '脆脆鲨', '中国', '7');
INSERT INTO `t_purchase_goods` VALUES ('16', '9', '18', '金典牛奶', '50', '10', '3', '金典', '中国山东', '7');

-- ----------------------------
-- Table structure for t_sale
-- ----------------------------
DROP TABLE IF EXISTS `t_sale`;
CREATE TABLE `t_sale` (
  `sale_id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_number` varchar(32) NOT NULL,
  `total` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '总金额',
  `payable` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '应付金额',
  `actual` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '实付金额',
  `user_id` int(11) NOT NULL COMMENT '经办人',
  `create_time` datetime NOT NULL COMMENT '销售时间',
  `comment` varchar(128) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`sale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sale
-- ----------------------------
INSERT INTO `t_sale` VALUES ('2', 'SL_00013', '5001.00', '5002.00', '5003.00', '10000001', '2017-03-23 22:50:04', '114');
INSERT INTO `t_sale` VALUES ('16', 'SL-002', '450.00', '460.00', '460.00', '10000001', '2017-03-25 17:24:58', '1');
INSERT INTO `t_sale` VALUES ('17', 'SL-0089', '500.00', '11.00', '125.00', '10000001', '2017-03-25 21:44:19', '');
INSERT INTO `t_sale` VALUES ('18', 'SL-0982', '89.00', '58.00', '200.00', '10000001', '2017-03-25 21:51:15', '');
INSERT INTO `t_sale` VALUES ('19', 'SL-004', '400.00', '200.00', '300.00', '10000001', '2017-03-26 10:05:00', '');
INSERT INTO `t_sale` VALUES ('20', 'SL-1000', '400.00', '200.00', '111.00', '10000001', '2017-03-26 10:05:45', '111');

-- ----------------------------
-- Table structure for t_sale_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_sale_goods`;
CREATE TABLE `t_sale_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sale_id` int(11) NOT NULL COMMENT '销售单ID',
  `goods_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0' COMMENT '数量',
  `out_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '单价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sale_goods
-- ----------------------------
INSERT INTO `t_sale_goods` VALUES ('10', '16', '5', '2', '560.00');
INSERT INTO `t_sale_goods` VALUES ('11', '17', '5', '20', '560.00');
INSERT INTO `t_sale_goods` VALUES ('12', '18', '4', '2', '1000.00');
INSERT INTO `t_sale_goods` VALUES ('13', '19', '4', '23', '1000.00');
INSERT INTO `t_sale_goods` VALUES ('14', '20', '4', '10', '1000.00');

-- ----------------------------
-- Table structure for t_stock
-- ----------------------------
DROP TABLE IF EXISTS `t_stock`;
CREATE TABLE `t_stock` (
  `stock_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `goods_id` int(11) NOT NULL COMMENT '商品ID',
  `amount` int(11) NOT NULL DEFAULT '0' COMMENT '库存数量',
  `warn_amount` int(11) NOT NULL DEFAULT '0' COMMENT '库存警告数量',
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_stock
-- ----------------------------
INSERT INTO `t_stock` VALUES ('5', '7', '400', '10');
INSERT INTO `t_stock` VALUES ('9', '16', '5', '1');
INSERT INTO `t_stock` VALUES ('10', '17', '0', '0');
INSERT INTO `t_stock` VALUES ('11', '18', '50', '0');

-- ----------------------------
-- Table structure for t_stock_log
-- ----------------------------
DROP TABLE IF EXISTS `t_stock_log`;
CREATE TABLE `t_stock_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stock_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `create_time` datetime NOT NULL,
  `user_id` varchar(8) NOT NULL,
  `chg_amount` int(11) NOT NULL,
  `chg_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_stock_log
-- ----------------------------
INSERT INTO `t_stock_log` VALUES ('12', '2', '4', '100', '2017-03-26 10:23:19', '10000001', '100', '3');
INSERT INTO `t_stock_log` VALUES ('13', '5', '7', '200', '2017-04-18 01:42:18', '10000001', '200', '2');
INSERT INTO `t_stock_log` VALUES ('14', '16', '16', '0', '2017-04-18 22:59:36', '10000001', '5', '0');
INSERT INTO `t_stock_log` VALUES ('15', '5', '7', '400', '2017-04-19 23:46:04', '10000001', '0', '1');
INSERT INTO `t_stock_log` VALUES ('16', '5', '7', '400', '2017-04-20 00:07:30', '10000001', '0', '1');
INSERT INTO `t_stock_log` VALUES ('17', '5', '7', '400', '2017-04-20 00:07:51', '10000001', '0', '1');
INSERT INTO `t_stock_log` VALUES ('18', '5', '7', '400', '2017-04-20 00:07:55', '10000001', '0', '1');
INSERT INTO `t_stock_log` VALUES ('19', '5', '7', '400', '2017-04-20 00:09:24', '10000001', '-11', '1');
INSERT INTO `t_stock_log` VALUES ('20', '5', '7', '389', '2017-04-20 00:09:28', '10000001', '11', '1');
INSERT INTO `t_stock_log` VALUES ('21', '17', '17', '0', '2017-04-20 00:56:53', '10000001', '0', '0');
INSERT INTO `t_stock_log` VALUES ('22', '18', '18', '0', '2017-04-20 01:19:47', '10000001', '50', '0');

-- ----------------------------
-- Table structure for t_supplier
-- ----------------------------
DROP TABLE IF EXISTS `t_supplier`;
CREATE TABLE `t_supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '供货商ID',
  `supplier_name` varchar(32) NOT NULL,
  `addr` varchar(128) DEFAULT NULL COMMENT '收货地址',
  `tel` bigint(20) NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `qq` varchar(16) DEFAULT NULL,
  `contacts` varchar(16) DEFAULT NULL COMMENT '联系人姓名',
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_supplier
-- ----------------------------
INSERT INTO `t_supplier` VALUES ('1', '老干妈', '北京市朝阳区', '13800138001', 'aa12@sina.com.cn', '7894582', '李四');
INSERT INTO `t_supplier` VALUES ('2', '恒源集团', '北京市大兴区', '13800138002', 'hyjt@163.com', '4689256841', 'Mr.Sun');
INSERT INTO `t_supplier` VALUES ('3', '蒙牛集团', '内蒙古呼和浩特市和林格尔盛乐经济园区', '13800138003', 'mn@qq.com', '8623978', '牛根生');

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(32) NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES ('1', '书籍');
INSERT INTO `t_type` VALUES ('2', '海鲜');
INSERT INTO `t_type` VALUES ('3', '食品');
INSERT INTO `t_type` VALUES ('4', '酒');
INSERT INTO `t_type` VALUES ('5', '糖果');
INSERT INTO `t_type` VALUES ('7', '饼干糕点');
INSERT INTO `t_type` VALUES ('8', '鲜奶');

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
