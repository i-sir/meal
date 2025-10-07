/*
 Navicat MySQL Dump SQL

 Source Server         : aa商城模板
 Source Server Type    : MySQL
 Source Server Version : 50744 (5.7.44-log)
 Source Host           : 8.153.162.204:3306
 Source Schema         : aaa

 Target Server Type    : MySQL
 Target Server Version : 50744 (5.7.44-log)
 File Encoding         : 65001

 Date: 17/09/2025 10:11:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cmf_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `cmf_admin_menu`;
CREATE TABLE `cmf_admin_menu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父菜单id',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '菜单类型;1:有界面可访问菜单,2:无界面可访问菜单,0:只作为菜单',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态;1:显示,0:不显示',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `app` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '应用名',
  `controller` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '控制器名',
  `action` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '操作名称',
  `param` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '额外参数',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '菜单名称',
  `icon` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '菜单图标',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint(20) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` bigint(20) NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE,
  INDEX `controller`(`controller`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 296 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '后台菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_admin_menu
-- ----------------------------
INSERT INTO `cmf_admin_menu` VALUES (1, 0, 0, 1, 9000, 'admin', 'Plugin', 'default', '', '插件中心', 'cloud', '插件中心', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (2, 1, 1, 0, 1000, 'admin', 'Hook', 'index', '', '钩子管理', '', '钩子管理', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (3, 2, 1, 0, 1000, 'admin', 'Hook', 'plugins', '', '钩子插件管理', '', '钩子插件管理', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (4, 2, 2, 0, 1000, 'admin', 'Hook', 'pluginListOrder', '', '钩子插件排序', '', '钩子插件排序', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (5, 2, 1, 0, 1000, 'admin', 'Hook', 'sync', '', '同步钩子', '', '同步钩子', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (6, 0, 0, 1, 100, 'admin', 'Setting', 'default', '', '设置', 'cogs', '系统设置入口', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (7, 248, 1, 1, 1000, 'admin', 'Link', 'index', '', '链接管理', '', '友情链接管理', 1740995591, 1741659517, 0);
INSERT INTO `cmf_admin_menu` VALUES (8, 7, 1, 0, 1000, 'admin', 'Link', 'add', '', '添加友情链接', '', '添加友情链接', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (9, 7, 2, 0, 1000, 'admin', 'Link', 'addPost', '', '添加友情链接提交保存', '', '添加友情链接提交保存', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (10, 7, 1, 0, 1000, 'admin', 'Link', 'edit', '', '编辑友情链接', '', '编辑友情链接', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (11, 7, 2, 0, 1000, 'admin', 'Link', 'editPost', '', '编辑友情链接提交保存', '', '编辑友情链接提交保存', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (12, 7, 2, 0, 1000, 'admin', 'Link', 'delete', '', '删除友情链接', '', '删除友情链接', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (13, 7, 2, 0, 1000, 'admin', 'Link', 'listOrder', '', '友情链接排序', '', '友情链接排序', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (14, 7, 2, 0, 1000, 'admin', 'Link', 'toggle', '', '友情链接显示隐藏', '', '友情链接显示隐藏', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (15, 6, 1, 0, 500, 'admin', 'Mailer', 'index', '', '邮箱配置', '', '邮箱配置', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (16, 15, 2, 0, 1000, 'admin', 'Mailer', 'indexPost', '', '邮箱配置提交保存', '', '邮箱配置提交保存', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (17, 15, 1, 0, 1000, 'admin', 'Mailer', 'template', '', '邮件模板', '', '邮件模板', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (18, 15, 2, 0, 1000, 'admin', 'Mailer', 'templatePost', '', '邮件模板提交', '', '邮件模板提交', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (19, 15, 1, 0, 1000, 'admin', 'Mailer', 'test', '', '邮件发送测试', '', '邮件发送测试', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (20, 6, 1, 0, 510, 'admin', 'Menu', 'index', '', '后台菜单', '', '后台菜单管理', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (21, 20, 1, 0, 1000, 'admin', 'Menu', 'lists', '', '所有菜单', '', '后台所有菜单列表', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (22, 20, 1, 0, 1000, 'admin', 'Menu', 'add', '', '后台菜单添加', '', '后台菜单添加', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (23, 20, 2, 0, 1000, 'admin', 'Menu', 'addPost', '', '后台菜单添加提交保存', '', '后台菜单添加提交保存', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (24, 20, 1, 0, 1000, 'admin', 'Menu', 'edit', '', '后台菜单编辑', '', '后台菜单编辑', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (25, 20, 2, 0, 1000, 'admin', 'Menu', 'editPost', '', '后台菜单编辑提交保存', '', '后台菜单编辑提交保存', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (26, 20, 2, 0, 1000, 'admin', 'Menu', 'delete', '', '后台菜单删除', '', '后台菜单删除', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (27, 20, 2, 0, 1000, 'admin', 'Menu', 'listOrder', '', '后台菜单排序', '', '后台菜单排序', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (28, 20, 1, 0, 1000, 'admin', 'Menu', 'getActions', '', '导入新后台菜单', '', '导入新后台菜单', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (29, 6, 1, 0, 520, 'admin', 'Nav', 'index', '', '导航管理', '', '导航管理', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (30, 29, 1, 0, 1000, 'admin', 'Nav', 'add', '', '添加导航', '', '添加导航', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (31, 29, 2, 0, 1000, 'admin', 'Nav', 'addPost', '', '添加导航提交保存', '', '添加导航提交保存', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (32, 29, 1, 0, 1000, 'admin', 'Nav', 'edit', '', '编辑导航', '', '编辑导航', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (33, 29, 2, 0, 1000, 'admin', 'Nav', 'editPost', '', '编辑导航提交保存', '', '编辑导航提交保存', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (34, 29, 2, 0, 1000, 'admin', 'Nav', 'delete', '', '删除导航', '', '删除导航', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (35, 29, 1, 0, 1000, 'admin', 'NavMenu', 'index', '', '导航菜单', '', '导航菜单', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (36, 35, 1, 0, 1000, 'admin', 'NavMenu', 'add', '', '添加导航菜单', '', '添加导航菜单', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (37, 35, 2, 0, 1000, 'admin', 'NavMenu', 'addPost', '', '添加导航菜单提交保存', '', '添加导航菜单提交保存', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (38, 35, 1, 0, 1000, 'admin', 'NavMenu', 'edit', '', '编辑导航菜单', '', '编辑导航菜单', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (39, 35, 2, 0, 1000, 'admin', 'NavMenu', 'editPost', '', '编辑导航菜单提交保存', '', '编辑导航菜单提交保存', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (40, 35, 2, 0, 1000, 'admin', 'NavMenu', 'delete', '', '删除导航菜单', '', '删除导航菜单', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (41, 35, 2, 0, 1000, 'admin', 'NavMenu', 'listOrder', '', '导航菜单排序', '', '导航菜单排序', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (42, 1, 1, 1, 1000, 'admin', 'Plugin', 'index', '', '插件列表', '', '插件列表', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (43, 42, 2, 0, 1000, 'admin', 'Plugin', 'toggle', '', '插件启用禁用', '', '插件启用禁用', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (44, 42, 1, 0, 1000, 'admin', 'Plugin', 'setting', '', '插件设置', '', '插件设置', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (45, 42, 2, 0, 1000, 'admin', 'Plugin', 'settingPost', '', '插件设置提交', '', '插件设置提交', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (46, 42, 2, 0, 1000, 'admin', 'Plugin', 'install', '', '插件安装', '', '插件安装', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (47, 42, 2, 0, 1000, 'admin', 'Plugin', 'update', '', '插件更新', '', '插件更新', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (48, 42, 2, 0, 1000, 'admin', 'Plugin', 'uninstall', '', '卸载插件', '', '卸载插件', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (49, 0, 0, 1, 8900, 'admin', 'User', 'default', '', '管理组', 'users', '管理组', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (50, 49, 1, 1, 1000, 'admin', 'Rbac', 'index', '', '角色管理', '', '角色管理', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (51, 50, 1, 0, 1000, 'admin', 'Rbac', 'roleAdd', '', '添加角色', '', '添加角色', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (52, 50, 2, 0, 1000, 'admin', 'Rbac', 'roleAddPost', '', '添加角色提交', '', '添加角色提交', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (53, 50, 1, 0, 1000, 'admin', 'Rbac', 'roleEdit', '', '编辑角色', '', '编辑角色', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (54, 50, 2, 0, 1000, 'admin', 'Rbac', 'roleEditPost', '', '编辑角色提交', '', '编辑角色提交', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (55, 50, 2, 0, 1000, 'admin', 'Rbac', 'roleDelete', '', '删除角色', '', '删除角色', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (56, 50, 1, 0, 1000, 'admin', 'Rbac', 'authorize', '', '设置角色权限', '', '设置角色权限', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (57, 50, 2, 0, 1000, 'admin', 'Rbac', 'authorizePost', '', '角色授权提交', '', '角色授权提交', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (58, 199, 1, 0, 10000, 'admin', 'RecycleBin', 'index', '', '回收站', '', '回收站', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (59, 58, 2, 0, 1000, 'admin', 'RecycleBin', 'restore', '', '回收站还原', '', '回收站还原', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (60, 58, 2, 0, 1000, 'admin', 'RecycleBin', 'delete', '', '回收站彻底删除', '', '回收站彻底删除', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (61, 6, 1, 0, 530, 'admin', 'Route', 'index', '', 'URL美化', '', 'URL规则管理', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (62, 61, 1, 0, 1000, 'admin', 'Route', 'add', '', '添加路由规则', '', '添加路由规则', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (63, 61, 2, 0, 1000, 'admin', 'Route', 'addPost', '', '添加路由规则提交', '', '添加路由规则提交', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (64, 61, 1, 0, 1000, 'admin', 'Route', 'edit', '', '路由规则编辑', '', '路由规则编辑', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (65, 61, 2, 0, 1000, 'admin', 'Route', 'editPost', '', '路由规则编辑提交', '', '路由规则编辑提交', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (66, 61, 2, 0, 1000, 'admin', 'Route', 'delete', '', '路由规则删除', '', '路由规则删除', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (67, 61, 2, 0, 1000, 'admin', 'Route', 'ban', '', '路由规则禁用', '', '路由规则禁用', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (68, 61, 2, 0, 1000, 'admin', 'Route', 'open', '', '路由规则启用', '', '路由规则启用', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (69, 61, 2, 0, 1000, 'admin', 'Route', 'listOrder', '', '路由规则排序', '', '路由规则排序', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (70, 61, 1, 0, 1000, 'admin', 'Route', 'select', '', '选择URL', '', '选择URL', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (71, 6, 1, 0, 540, 'admin', 'Setting', 'site', '', '网站信息', '', '网站信息', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (72, 71, 2, 0, 1000, 'admin', 'Setting', 'sitePost', '', '网站信息设置提交', '', '网站信息设置提交', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (73, 199, 1, 0, 1000, 'admin', 'Setting', 'password', '', '密码修改', '', '密码修改', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (74, 73, 2, 0, 1000, 'admin', 'Setting', 'passwordPost', '', '密码修改提交', '', '密码修改提交', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (75, 6, 1, 1, 30, 'admin', 'Setting', 'upload', '', '上传设置', '', '上传设置', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (76, 75, 2, 0, 1000, 'admin', 'Setting', 'uploadPost', '', '上传设置提交', '', '上传设置提交', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (77, 199, 1, 0, 1000, 'admin', 'Setting', 'clearCache', '', '清除缓存', '', '清除缓存', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (78, 248, 1, 1, 20, 'admin', 'Slide', 'index', '', '分类管理', '', '幻灯片管理', 1740995591, 1741659181, 0);
INSERT INTO `cmf_admin_menu` VALUES (79, 78, 1, 0, 1000, 'admin', 'Slide', 'add', '', '添加幻灯片', '', '添加幻灯片', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (80, 78, 2, 0, 1000, 'admin', 'Slide', 'addPost', '', '添加幻灯片提交', '', '添加幻灯片提交', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (81, 78, 1, 0, 1000, 'admin', 'Slide', 'edit', '', '编辑幻灯片', '', '编辑幻灯片', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (82, 78, 2, 0, 1000, 'admin', 'Slide', 'editPost', '', '编辑幻灯片提交', '', '编辑幻灯片提交', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (83, 78, 2, 0, 1000, 'admin', 'Slide', 'delete', '', '删除幻灯片', '', '删除幻灯片', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (84, 78, 1, 0, 1000, 'admin', 'SlideItem', 'index', '', '幻灯片页面列表', '', '幻灯片页面列表', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (85, 84, 1, 0, 1000, 'admin', 'SlideItem', 'add', '', '幻灯片页面添加', '', '幻灯片页面添加', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (86, 84, 2, 0, 1000, 'admin', 'SlideItem', 'addPost', '', '幻灯片页面添加提交', '', '幻灯片页面添加提交', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (87, 84, 1, 0, 1000, 'admin', 'SlideItem', 'edit', '', '幻灯片页面编辑', '', '幻灯片页面编辑', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (88, 84, 2, 0, 1000, 'admin', 'SlideItem', 'editPost', '', '幻灯片页面编辑提交', '', '幻灯片页面编辑提交', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (89, 84, 2, 0, 1000, 'admin', 'SlideItem', 'delete', '', '幻灯片页面删除', '', '幻灯片页面删除', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (90, 84, 2, 0, 1000, 'admin', 'SlideItem', 'ban', '', '幻灯片页面隐藏', '', '幻灯片页面隐藏', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (91, 84, 2, 0, 1000, 'admin', 'SlideItem', 'cancelBan', '', '幻灯片页面显示', '', '幻灯片页面显示', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (92, 84, 2, 0, 1000, 'admin', 'SlideItem', 'listOrder', '', '幻灯片页面排序', '', '幻灯片页面排序', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (93, 6, 1, 1, 40, 'admin', 'Storage', 'index', '', '文件存储', '', '文件存储', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (94, 93, 2, 0, 1000, 'admin', 'Storage', 'settingPost', '', '文件存储设置提交', '', '文件存储设置提交', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (95, 6, 1, 0, 550, 'admin', 'Theme', 'index', '', '模板管理', '', '模板管理', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (96, 95, 1, 0, 1000, 'admin', 'Theme', 'install', '', '安装模板', '', '安装模板', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (97, 95, 2, 0, 1000, 'admin', 'Theme', 'uninstall', '', '卸载模板', '', '卸载模板', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (98, 95, 2, 0, 1000, 'admin', 'Theme', 'installTheme', '', '模板安装', '', '模板安装', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (99, 95, 2, 0, 1000, 'admin', 'Theme', 'update', '', '模板更新', '', '模板更新', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (100, 95, 2, 0, 1000, 'admin', 'Theme', 'active', '', '启用模板', '', '启用模板', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (101, 95, 1, 0, 1000, 'admin', 'Theme', 'files', '', '模板文件列表', '', '启用模板', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (102, 95, 1, 0, 1000, 'admin', 'Theme', 'fileSetting', '', '模板文件设置', '', '模板文件设置', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (103, 95, 1, 0, 1000, 'admin', 'Theme', 'fileArrayData', '', '模板文件数组数据列表', '', '模板文件数组数据列表', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (104, 95, 2, 0, 1000, 'admin', 'Theme', 'fileArrayDataEdit', '', '模板文件数组数据添加编辑', '', '模板文件数组数据添加编辑', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (105, 95, 2, 0, 1000, 'admin', 'Theme', 'fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '', '模板文件数组数据添加编辑提交保存', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (106, 95, 2, 0, 1000, 'admin', 'Theme', 'fileArrayDataDelete', '', '模板文件数组数据删除', '', '模板文件数组数据删除', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (107, 95, 2, 0, 1000, 'admin', 'Theme', 'settingPost', '', '模板文件编辑提交保存', '', '模板文件编辑提交保存', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (108, 95, 1, 0, 1000, 'admin', 'Theme', 'dataSource', '', '模板文件设置数据源', '', '模板文件设置数据源', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (109, 95, 1, 0, 1000, 'admin', 'Theme', 'design', '', '模板设计', '', '模板设计', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (112, 111, 1, 0, 1000, 'admin', 'User', 'add', '', '管理员添加', '', '管理员添加', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (113, 111, 2, 0, 1000, 'admin', 'User', 'addPost', '', '管理员添加提交', '', '管理员添加提交', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (114, 111, 1, 0, 1000, 'admin', 'User', 'edit', '', '管理员编辑', '', '管理员编辑', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (115, 111, 2, 0, 1000, 'admin', 'User', 'editPost', '', '管理员编辑提交', '', '管理员编辑提交', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (116, 111, 1, 0, 1000, 'admin', 'User', 'userInfo', '', '个人信息', '', '管理员个人信息修改', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (117, 111, 2, 0, 1000, 'admin', 'User', 'userInfoPost', '', '管理员个人信息修改提交', '', '管理员个人信息修改提交', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (118, 111, 2, 0, 1000, 'admin', 'User', 'delete', '', '管理员删除', '', '管理员删除', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (119, 111, 2, 0, 1000, 'admin', 'User', 'ban', '', '停用管理员', '', '停用管理员', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (120, 111, 2, 0, 1000, 'admin', 'User', 'cancelBan', '', '启用管理员', '', '启用管理员', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (121, 199, 1, 0, 1000, 'user', 'AdminAsset', 'index', '', '资源管理', 'file', '资源管理列表', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (122, 121, 2, 0, 1000, 'user', 'AdminAsset', 'delete', '', '删除文件', '', '删除文件', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (123, 110, 0, 1, 10000, 'user', 'AdminIndex', 'default1', '', '用户组', '', '用户组', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (124, 123, 1, 1, 10000, 'user', 'AdminIndex', 'index', '', '本站用户', '', '本站用户', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (125, 124, 2, 0, 10000, 'user', 'AdminIndex', 'ban', '', '本站用户拉黑', '', '本站用户拉黑', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (126, 124, 2, 0, 10000, 'user', 'AdminIndex', 'cancelBan', '', '本站用户启用', '', '本站用户启用', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (127, 123, 1, 1, 10000, 'user', 'AdminOauth', 'index', '', '第三方用户', '', '第三方用户', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (128, 127, 2, 0, 10000, 'user', 'AdminOauth', 'delete', '', '删除第三方用户绑定', '', '删除第三方用户绑定', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (130, 129, 1, 0, 1000, 'user', 'AdminUserAction', 'edit', '', '编辑用户操作', '', '编辑用户操作', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (131, 129, 2, 0, 1000, 'user', 'AdminUserAction', 'editPost', '', '编辑用户操作提交', '', '编辑用户操作提交', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (132, 129, 1, 0, 1000, 'user', 'AdminUserAction', 'sync', '', '同步用户操作', '', '同步用户操作', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (162, 58, 2, 0, 1000, 'admin', 'RecycleBin', 'clear', '', '清空回收站', '', '一键清空回收站', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (163, 1, 1, 1, 1000, 'plugin/Swagger', 'AdminIndex', 'index', '', 'Swagger', '', 'Swagger', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (164, 6, 1, 1, 10, 'plugin/Configs', 'AdminIndex', 'index', '', '系统参数设置', '', '系统参数设置', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (167, 0, 1, 1, 1000, 'admin', 'member', 'default', '', '用户管理', 'user-o', '', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (168, 167, 1, 1, 1000, 'admin', 'member', 'index', '', '用户管理', '', '', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (169, 1, 1, 1, 1000, '/plugin/form', 'AdminIndex', 'setting', '', '生成CURD', '', '', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (179, 0, 1, 1, 8000, 'admin', 'dingdan', 'index', '', '订单管理', 'reorder', '', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (180, 179, 1, 1, 1000, 'admin', 'shop_order', 'index', '', '订单管理', '', '', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (183, 182, 1, 0, 10000, 'admin', 'Shop', 'edit', '', '编辑', '', '', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (184, 182, 1, 0, 10000, 'admin', 'Shop', 'add', '', '添加', '', '', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (185, 182, 1, 0, 10000, 'admin', 'Shop', 'find', '', '查看', '', '', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (186, 182, 1, 0, 10000, 'admin', 'Shop', 'delete', '', '删除', '', '', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (198, 6, 1, 1, 1000, 'plugin/weipay', 'admin_index', 'index', '', '小程序设置', '', '', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (199, 0, 2, 0, 9100, 'admin', 'moren', 'index', '', '子权限', '', '', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (217, 49, 1, 1, 10000, 'admin', 'AdminUser', 'index', '', '管理员', '', '', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (218, 217, 1, 0, 10000, 'admin', 'AdminUser', 'edit', '', '编辑', '', '', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (219, 217, 1, 0, 10000, 'admin', 'AdminUser', 'add', '', '添加', '', '', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (220, 217, 1, 0, 10000, 'admin', 'AdminUser', 'delete', '', '删除', '', '', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (231, 0, 1, 1, 8200, 'admin', 'asset', 'log_all', '', '资金变动记录', 'rmb', '', 1740995591, 1748747904, 0);
INSERT INTO `cmf_admin_menu` VALUES (232, 0, 1, 1, 8100, 'admin', 'withdrawal', 'index', '', '提现管理', 'cc', '', 1740995591, 1740995591, 0);
INSERT INTO `cmf_admin_menu` VALUES (248, 6, 1, 1, 20, 'admin', 'Slide', 'de', '', '幻灯片管理', '', '', 1741658856, NULL, 0);
INSERT INTO `cmf_admin_menu` VALUES (274, 6, 1, 1, 1100, 'admin', 'wechat_menu', 'index', '', '公众号自定义菜单', '', '', 1743910920, NULL, 0);
INSERT INTO `cmf_admin_menu` VALUES (275, 0, 1, 1, 10000, 'admin', 'base_test', 'index', '', '测试模板', '', '', NULL, NULL, 1747377463);
INSERT INTO `cmf_admin_menu` VALUES (276, 275, 1, 0, 10000, 'admin', 'base_test', 'edit', '', '编辑', '', '', NULL, NULL, 0);
INSERT INTO `cmf_admin_menu` VALUES (277, 275, 1, 0, 10000, 'admin', 'base_test', 'add', '', '添加', '', '', NULL, NULL, 0);
INSERT INTO `cmf_admin_menu` VALUES (278, 275, 1, 0, 10000, 'admin', 'base_test', 'find', '', '查看', '', '', NULL, NULL, 0);
INSERT INTO `cmf_admin_menu` VALUES (279, 275, 1, 0, 10000, 'admin', 'base_test', 'delete', '', '删除', '', '', NULL, NULL, 0);
INSERT INTO `cmf_admin_menu` VALUES (280, 167, 1, 1, 10000, 'admin', 'member', 'children_tree', '', '关系图', '', '', 1748829750, NULL, 0);
INSERT INTO `cmf_admin_menu` VALUES (281, 0, 1, 1, 3000, 'admin', 'shangpin', 'index', '', '商品管理', 'diamond', '', 1753240857, NULL, 0);
INSERT INTO `cmf_admin_menu` VALUES (282, 281, 1, 1, 10000, 'admin', 'shop_goods', 'index', '', '商品管理', '', '', NULL, NULL, 0);
INSERT INTO `cmf_admin_menu` VALUES (283, 282, 1, 0, 10000, 'admin', 'shop_goods', 'edit', '', '编辑', '', '', NULL, NULL, 0);
INSERT INTO `cmf_admin_menu` VALUES (284, 282, 1, 0, 10000, 'admin', 'shop_goods', 'add', '', '添加', '', '', NULL, NULL, 0);
INSERT INTO `cmf_admin_menu` VALUES (285, 282, 1, 0, 10000, 'admin', 'shop_goods', 'delete', '', '删除', '', '', NULL, NULL, 0);
INSERT INTO `cmf_admin_menu` VALUES (286, 282, 1, 0, 10000, 'admin', 'shop_goods', 'list_order_post', '', '排序', '', '', NULL, NULL, 0);
INSERT INTO `cmf_admin_menu` VALUES (287, 281, 1, 1, 10000, 'admin', 'shop_goods_class', 'index', '', '分类管理', '', '', NULL, NULL, 0);
INSERT INTO `cmf_admin_menu` VALUES (288, 287, 1, 0, 10000, 'admin', 'shop_goods_class', 'edit', '', '编辑', '', '', NULL, NULL, 0);
INSERT INTO `cmf_admin_menu` VALUES (289, 287, 1, 0, 10000, 'admin', 'shop_goods_class', 'add', '', '添加', '', '', NULL, NULL, 0);
INSERT INTO `cmf_admin_menu` VALUES (290, 287, 1, 0, 10000, 'admin', 'shop_goods_class', 'delete', '', '删除', '', '', NULL, NULL, 0);
INSERT INTO `cmf_admin_menu` VALUES (291, 287, 1, 0, 10000, 'admin', 'shop_goods_class', 'list_order_post', '', '排序', '', '', NULL, NULL, 0);
INSERT INTO `cmf_admin_menu` VALUES (292, 0, 1, 1, 8300, 'admin', 'shop_coupon', 'index', '', '优惠券管理', 'ticket', '', NULL, 1753241121, 0);
INSERT INTO `cmf_admin_menu` VALUES (293, 292, 1, 0, 10000, 'admin', 'shop_coupon', 'edit', '', '编辑', '', '', NULL, NULL, 0);
INSERT INTO `cmf_admin_menu` VALUES (294, 292, 1, 0, 10000, 'admin', 'shop_coupon', 'add', '', '添加', '', '', NULL, NULL, 0);
INSERT INTO `cmf_admin_menu` VALUES (295, 292, 1, 0, 10000, 'admin', 'shop_coupon', 'delete', '', '删除', '', '', NULL, NULL, 0);

-- ----------------------------
-- Table structure for cmf_asset
-- ----------------------------
DROP TABLE IF EXISTS `cmf_asset`;
CREATE TABLE `cmf_asset`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  `file_size` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '文件大小,单位B',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '上传时间',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:可用,0:不可用',
  `download_times` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '下载次数',
  `file_key` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '文件惟一码',
  `filename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `file_path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文件路径,相对于upload目录,可以为url',
  `file_md5` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文件md5值',
  `file_sha1` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `suffix` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文件后缀名,不包括点',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '其它详细信息,JSON格式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '资源表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_asset
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_auth_access
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_access`;
CREATE TABLE `cmf_auth_access`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL COMMENT '角色',
  `rule_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '权限规则分类,请加应用前缀,如admin_',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  INDEX `rule_name`(`rule_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 151 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限授权表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_auth_access
-- ----------------------------
INSERT INTO `cmf_auth_access` VALUES (135, 2, 'admin/member/default', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (136, 2, 'admin/member/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (137, 2, 'admin/plugin/default', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (138, 2, 'admin/hook/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (139, 2, 'admin/hook/plugins', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (140, 2, 'admin/hook/pluginlistorder', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (141, 2, 'admin/hook/sync', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (142, 2, 'admin/plugin/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (143, 2, 'admin/plugin/toggle', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (144, 2, 'admin/plugin/setting', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (145, 2, 'admin/plugin/settingpost', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (146, 2, 'admin/plugin/install', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (147, 2, 'admin/plugin/update', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (148, 2, 'admin/plugin/uninstall', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (149, 2, 'plugin/swagger/adminindex/index', 'admin_url');
INSERT INTO `cmf_auth_access` VALUES (150, 2, '/plugin/form/adminindex/setting', 'admin_url');

-- ----------------------------
-- Table structure for cmf_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `cmf_auth_rule`;
CREATE TABLE `cmf_auth_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否有效(0:无效,1:有效)',
  `app` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则所属app',
  `type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '权限规则分类，请加应用前缀,如admin_',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,全小写',
  `param` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '额外url参数',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '规则描述',
  `condition` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  INDEX `module`(`app`, `status`, `type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 234 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '权限规则表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_auth_rule
-- ----------------------------
INSERT INTO `cmf_auth_rule` VALUES (1, 1, 'admin', 'admin_url', 'admin/Hook/index', '', '钩子管理', '');
INSERT INTO `cmf_auth_rule` VALUES (2, 1, 'admin', 'admin_url', 'admin/Hook/plugins', '', '钩子插件管理', '');
INSERT INTO `cmf_auth_rule` VALUES (3, 1, 'admin', 'admin_url', 'admin/Hook/pluginListOrder', '', '钩子插件排序', '');
INSERT INTO `cmf_auth_rule` VALUES (4, 1, 'admin', 'admin_url', 'admin/Hook/sync', '', '同步钩子', '');
INSERT INTO `cmf_auth_rule` VALUES (5, 1, 'admin', 'admin_url', 'admin/Link/index', '', '链接管理', '');
INSERT INTO `cmf_auth_rule` VALUES (6, 1, 'admin', 'admin_url', 'admin/Link/add', '', '添加友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES (7, 1, 'admin', 'admin_url', 'admin/Link/addPost', '', '添加友情链接提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (8, 1, 'admin', 'admin_url', 'admin/Link/edit', '', '编辑友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES (9, 1, 'admin', 'admin_url', 'admin/Link/editPost', '', '编辑友情链接提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (10, 1, 'admin', 'admin_url', 'admin/Link/delete', '', '删除友情链接', '');
INSERT INTO `cmf_auth_rule` VALUES (11, 1, 'admin', 'admin_url', 'admin/Link/listOrder', '', '友情链接排序', '');
INSERT INTO `cmf_auth_rule` VALUES (12, 1, 'admin', 'admin_url', 'admin/Link/toggle', '', '友情链接显示隐藏', '');
INSERT INTO `cmf_auth_rule` VALUES (13, 1, 'admin', 'admin_url', 'admin/Mailer/index', '', '邮箱配置', '');
INSERT INTO `cmf_auth_rule` VALUES (14, 1, 'admin', 'admin_url', 'admin/Mailer/indexPost', '', '邮箱配置提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (15, 1, 'admin', 'admin_url', 'admin/Mailer/template', '', '邮件模板', '');
INSERT INTO `cmf_auth_rule` VALUES (16, 1, 'admin', 'admin_url', 'admin/Mailer/templatePost', '', '邮件模板提交', '');
INSERT INTO `cmf_auth_rule` VALUES (17, 1, 'admin', 'admin_url', 'admin/Mailer/test', '', '邮件发送测试', '');
INSERT INTO `cmf_auth_rule` VALUES (18, 1, 'admin', 'admin_url', 'admin/Menu/index', '', '后台菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (19, 1, 'admin', 'admin_url', 'admin/Menu/lists', '', '所有菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (20, 1, 'admin', 'admin_url', 'admin/Menu/add', '', '后台菜单添加', '');
INSERT INTO `cmf_auth_rule` VALUES (21, 1, 'admin', 'admin_url', 'admin/Menu/addPost', '', '后台菜单添加提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (22, 1, 'admin', 'admin_url', 'admin/Menu/edit', '', '后台菜单编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (23, 1, 'admin', 'admin_url', 'admin/Menu/editPost', '', '后台菜单编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (24, 1, 'admin', 'admin_url', 'admin/Menu/delete', '', '后台菜单删除', '');
INSERT INTO `cmf_auth_rule` VALUES (25, 1, 'admin', 'admin_url', 'admin/Menu/listOrder', '', '后台菜单排序', '');
INSERT INTO `cmf_auth_rule` VALUES (26, 1, 'admin', 'admin_url', 'admin/Menu/getActions', '', '导入新后台菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (27, 1, 'admin', 'admin_url', 'admin/Nav/index', '', '导航管理', '');
INSERT INTO `cmf_auth_rule` VALUES (28, 1, 'admin', 'admin_url', 'admin/Nav/add', '', '添加导航', '');
INSERT INTO `cmf_auth_rule` VALUES (29, 1, 'admin', 'admin_url', 'admin/Nav/addPost', '', '添加导航提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (30, 1, 'admin', 'admin_url', 'admin/Nav/edit', '', '编辑导航', '');
INSERT INTO `cmf_auth_rule` VALUES (31, 1, 'admin', 'admin_url', 'admin/Nav/editPost', '', '编辑导航提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (32, 1, 'admin', 'admin_url', 'admin/Nav/delete', '', '删除导航', '');
INSERT INTO `cmf_auth_rule` VALUES (33, 1, 'admin', 'admin_url', 'admin/NavMenu/index', '', '导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (34, 1, 'admin', 'admin_url', 'admin/NavMenu/add', '', '添加导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (35, 1, 'admin', 'admin_url', 'admin/NavMenu/addPost', '', '添加导航菜单提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (36, 1, 'admin', 'admin_url', 'admin/NavMenu/edit', '', '编辑导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (37, 1, 'admin', 'admin_url', 'admin/NavMenu/editPost', '', '编辑导航菜单提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (38, 1, 'admin', 'admin_url', 'admin/NavMenu/delete', '', '删除导航菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (39, 1, 'admin', 'admin_url', 'admin/NavMenu/listOrder', '', '导航菜单排序', '');
INSERT INTO `cmf_auth_rule` VALUES (40, 1, 'admin', 'admin_url', 'admin/Plugin/default', '', '插件中心', '');
INSERT INTO `cmf_auth_rule` VALUES (41, 1, 'admin', 'admin_url', 'admin/Plugin/index', '', '插件列表', '');
INSERT INTO `cmf_auth_rule` VALUES (42, 1, 'admin', 'admin_url', 'admin/Plugin/toggle', '', '插件启用禁用', '');
INSERT INTO `cmf_auth_rule` VALUES (43, 1, 'admin', 'admin_url', 'admin/Plugin/setting', '', '插件设置', '');
INSERT INTO `cmf_auth_rule` VALUES (44, 1, 'admin', 'admin_url', 'admin/Plugin/settingPost', '', '插件设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES (45, 1, 'admin', 'admin_url', 'admin/Plugin/install', '', '插件安装', '');
INSERT INTO `cmf_auth_rule` VALUES (46, 1, 'admin', 'admin_url', 'admin/Plugin/update', '', '插件更新', '');
INSERT INTO `cmf_auth_rule` VALUES (47, 1, 'admin', 'admin_url', 'admin/Plugin/uninstall', '', '卸载插件', '');
INSERT INTO `cmf_auth_rule` VALUES (48, 1, 'admin', 'admin_url', 'admin/Rbac/index', '', '角色管理', '');
INSERT INTO `cmf_auth_rule` VALUES (49, 1, 'admin', 'admin_url', 'admin/Rbac/roleAdd', '', '添加角色', '');
INSERT INTO `cmf_auth_rule` VALUES (50, 1, 'admin', 'admin_url', 'admin/Rbac/roleAddPost', '', '添加角色提交', '');
INSERT INTO `cmf_auth_rule` VALUES (51, 1, 'admin', 'admin_url', 'admin/Rbac/roleEdit', '', '编辑角色', '');
INSERT INTO `cmf_auth_rule` VALUES (52, 1, 'admin', 'admin_url', 'admin/Rbac/roleEditPost', '', '编辑角色提交', '');
INSERT INTO `cmf_auth_rule` VALUES (53, 1, 'admin', 'admin_url', 'admin/Rbac/roleDelete', '', '删除角色', '');
INSERT INTO `cmf_auth_rule` VALUES (54, 1, 'admin', 'admin_url', 'admin/Rbac/authorize', '', '设置角色权限', '');
INSERT INTO `cmf_auth_rule` VALUES (55, 1, 'admin', 'admin_url', 'admin/Rbac/authorizePost', '', '角色授权提交', '');
INSERT INTO `cmf_auth_rule` VALUES (56, 1, 'admin', 'admin_url', 'admin/RecycleBin/index', '', '回收站', '');
INSERT INTO `cmf_auth_rule` VALUES (57, 1, 'admin', 'admin_url', 'admin/RecycleBin/restore', '', '回收站还原', '');
INSERT INTO `cmf_auth_rule` VALUES (58, 1, 'admin', 'admin_url', 'admin/RecycleBin/delete', '', '回收站彻底删除', '');
INSERT INTO `cmf_auth_rule` VALUES (59, 1, 'admin', 'admin_url', 'admin/Route/index', '', 'URL美化', '');
INSERT INTO `cmf_auth_rule` VALUES (60, 1, 'admin', 'admin_url', 'admin/Route/add', '', '添加路由规则', '');
INSERT INTO `cmf_auth_rule` VALUES (61, 1, 'admin', 'admin_url', 'admin/Route/addPost', '', '添加路由规则提交', '');
INSERT INTO `cmf_auth_rule` VALUES (62, 1, 'admin', 'admin_url', 'admin/Route/edit', '', '路由规则编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (63, 1, 'admin', 'admin_url', 'admin/Route/editPost', '', '路由规则编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (64, 1, 'admin', 'admin_url', 'admin/Route/delete', '', '路由规则删除', '');
INSERT INTO `cmf_auth_rule` VALUES (65, 1, 'admin', 'admin_url', 'admin/Route/ban', '', '路由规则禁用', '');
INSERT INTO `cmf_auth_rule` VALUES (66, 1, 'admin', 'admin_url', 'admin/Route/open', '', '路由规则启用', '');
INSERT INTO `cmf_auth_rule` VALUES (67, 1, 'admin', 'admin_url', 'admin/Route/listOrder', '', '路由规则排序', '');
INSERT INTO `cmf_auth_rule` VALUES (68, 1, 'admin', 'admin_url', 'admin/Route/select', '', '选择URL', '');
INSERT INTO `cmf_auth_rule` VALUES (69, 1, 'admin', 'admin_url', 'admin/Setting/default', '', '设置', '');
INSERT INTO `cmf_auth_rule` VALUES (70, 1, 'admin', 'admin_url', 'admin/Setting/site', '', '网站信息', '');
INSERT INTO `cmf_auth_rule` VALUES (71, 1, 'admin', 'admin_url', 'admin/Setting/sitePost', '', '网站信息设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES (72, 1, 'admin', 'admin_url', 'admin/Setting/password', '', '密码修改', '');
INSERT INTO `cmf_auth_rule` VALUES (73, 1, 'admin', 'admin_url', 'admin/Setting/passwordPost', '', '密码修改提交', '');
INSERT INTO `cmf_auth_rule` VALUES (74, 1, 'admin', 'admin_url', 'admin/Setting/upload', '', '上传设置', '');
INSERT INTO `cmf_auth_rule` VALUES (75, 1, 'admin', 'admin_url', 'admin/Setting/uploadPost', '', '上传设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES (76, 1, 'admin', 'admin_url', 'admin/Setting/clearCache', '', '清除缓存', '');
INSERT INTO `cmf_auth_rule` VALUES (77, 1, 'admin', 'admin_url', 'admin/Slide/index', '', '分类管理', '');
INSERT INTO `cmf_auth_rule` VALUES (78, 1, 'admin', 'admin_url', 'admin/Slide/add', '', '添加幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES (79, 1, 'admin', 'admin_url', 'admin/Slide/addPost', '', '添加幻灯片提交', '');
INSERT INTO `cmf_auth_rule` VALUES (80, 1, 'admin', 'admin_url', 'admin/Slide/edit', '', '编辑幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES (81, 1, 'admin', 'admin_url', 'admin/Slide/editPost', '', '编辑幻灯片提交', '');
INSERT INTO `cmf_auth_rule` VALUES (82, 1, 'admin', 'admin_url', 'admin/Slide/delete', '', '删除幻灯片', '');
INSERT INTO `cmf_auth_rule` VALUES (83, 1, 'admin', 'admin_url', 'admin/SlideItem/index', '', '幻灯片页面列表', '');
INSERT INTO `cmf_auth_rule` VALUES (84, 1, 'admin', 'admin_url', 'admin/SlideItem/add', '', '幻灯片页面添加', '');
INSERT INTO `cmf_auth_rule` VALUES (85, 1, 'admin', 'admin_url', 'admin/SlideItem/addPost', '', '幻灯片页面添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES (86, 1, 'admin', 'admin_url', 'admin/SlideItem/edit', '', '幻灯片页面编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (87, 1, 'admin', 'admin_url', 'admin/SlideItem/editPost', '', '幻灯片页面编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (88, 1, 'admin', 'admin_url', 'admin/SlideItem/delete', '', '幻灯片页面删除', '');
INSERT INTO `cmf_auth_rule` VALUES (89, 1, 'admin', 'admin_url', 'admin/SlideItem/ban', '', '幻灯片页面隐藏', '');
INSERT INTO `cmf_auth_rule` VALUES (90, 1, 'admin', 'admin_url', 'admin/SlideItem/cancelBan', '', '幻灯片页面显示', '');
INSERT INTO `cmf_auth_rule` VALUES (91, 1, 'admin', 'admin_url', 'admin/SlideItem/listOrder', '', '幻灯片页面排序', '');
INSERT INTO `cmf_auth_rule` VALUES (92, 1, 'admin', 'admin_url', 'admin/Storage/index', '', '文件存储', '');
INSERT INTO `cmf_auth_rule` VALUES (93, 1, 'admin', 'admin_url', 'admin/Storage/settingPost', '', '文件存储设置提交', '');
INSERT INTO `cmf_auth_rule` VALUES (94, 1, 'admin', 'admin_url', 'admin/Theme/index', '', '模板管理', '');
INSERT INTO `cmf_auth_rule` VALUES (95, 1, 'admin', 'admin_url', 'admin/Theme/install', '', '安装模板', '');
INSERT INTO `cmf_auth_rule` VALUES (96, 1, 'admin', 'admin_url', 'admin/Theme/uninstall', '', '卸载模板', '');
INSERT INTO `cmf_auth_rule` VALUES (97, 1, 'admin', 'admin_url', 'admin/Theme/installTheme', '', '模板安装', '');
INSERT INTO `cmf_auth_rule` VALUES (98, 1, 'admin', 'admin_url', 'admin/Theme/update', '', '模板更新', '');
INSERT INTO `cmf_auth_rule` VALUES (99, 1, 'admin', 'admin_url', 'admin/Theme/active', '', '启用模板', '');
INSERT INTO `cmf_auth_rule` VALUES (100, 1, 'admin', 'admin_url', 'admin/Theme/files', '', '模板文件列表', '');
INSERT INTO `cmf_auth_rule` VALUES (101, 1, 'admin', 'admin_url', 'admin/Theme/fileSetting', '', '模板文件设置', '');
INSERT INTO `cmf_auth_rule` VALUES (102, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayData', '', '模板文件数组数据列表', '');
INSERT INTO `cmf_auth_rule` VALUES (103, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataEdit', '', '模板文件数组数据添加编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (104, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataEditPost', '', '模板文件数组数据添加编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (105, 1, 'admin', 'admin_url', 'admin/Theme/fileArrayDataDelete', '', '模板文件数组数据删除', '');
INSERT INTO `cmf_auth_rule` VALUES (106, 1, 'admin', 'admin_url', 'admin/Theme/settingPost', '', '模板文件编辑提交保存', '');
INSERT INTO `cmf_auth_rule` VALUES (107, 1, 'admin', 'admin_url', 'admin/Theme/dataSource', '', '模板文件设置数据源', '');
INSERT INTO `cmf_auth_rule` VALUES (108, 1, 'admin', 'admin_url', 'admin/Theme/design', '', '模板设计', '');
INSERT INTO `cmf_auth_rule` VALUES (109, 1, 'admin', 'admin_url', 'admin/User/default', '', '管理组', '');
INSERT INTO `cmf_auth_rule` VALUES (110, 1, 'admin', 'admin_url', 'admin/User/index', '', '管理员', '');
INSERT INTO `cmf_auth_rule` VALUES (111, 1, 'admin', 'admin_url', 'admin/User/add', '', '管理员添加', '');
INSERT INTO `cmf_auth_rule` VALUES (112, 1, 'admin', 'admin_url', 'admin/User/addPost', '', '管理员添加提交', '');
INSERT INTO `cmf_auth_rule` VALUES (113, 1, 'admin', 'admin_url', 'admin/User/edit', '', '管理员编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (114, 1, 'admin', 'admin_url', 'admin/User/editPost', '', '管理员编辑提交', '');
INSERT INTO `cmf_auth_rule` VALUES (115, 1, 'admin', 'admin_url', 'admin/User/userInfo', '', '个人信息', '');
INSERT INTO `cmf_auth_rule` VALUES (116, 1, 'admin', 'admin_url', 'admin/User/userInfoPost', '', '管理员个人信息修改提交', '');
INSERT INTO `cmf_auth_rule` VALUES (117, 1, 'admin', 'admin_url', 'admin/User/delete', '', '管理员删除', '');
INSERT INTO `cmf_auth_rule` VALUES (118, 1, 'admin', 'admin_url', 'admin/User/ban', '', '停用管理员', '');
INSERT INTO `cmf_auth_rule` VALUES (119, 1, 'admin', 'admin_url', 'admin/User/cancelBan', '', '启用管理员', '');
INSERT INTO `cmf_auth_rule` VALUES (120, 1, 'user', 'admin_url', 'user/AdminAsset/index', '', '资源管理', '');
INSERT INTO `cmf_auth_rule` VALUES (121, 1, 'user', 'admin_url', 'user/AdminAsset/delete', '', '删除文件', '');
INSERT INTO `cmf_auth_rule` VALUES (122, 1, 'user', 'admin_url', 'user/AdminIndex/default', '', '管理员', '');
INSERT INTO `cmf_auth_rule` VALUES (123, 1, 'user', 'admin_url', 'user/AdminIndex/default1', '', '用户组', '');
INSERT INTO `cmf_auth_rule` VALUES (124, 1, 'user', 'admin_url', 'user/AdminIndex/index', '', '本站用户', '');
INSERT INTO `cmf_auth_rule` VALUES (125, 1, 'user', 'admin_url', 'user/AdminIndex/ban', '', '本站用户拉黑', '');
INSERT INTO `cmf_auth_rule` VALUES (126, 1, 'user', 'admin_url', 'user/AdminIndex/cancelBan', '', '本站用户启用', '');
INSERT INTO `cmf_auth_rule` VALUES (127, 1, 'user', 'admin_url', 'user/AdminOauth/index', '', '第三方用户', '');
INSERT INTO `cmf_auth_rule` VALUES (128, 1, 'user', 'admin_url', 'user/AdminOauth/delete', '', '删除第三方用户绑定', '');
INSERT INTO `cmf_auth_rule` VALUES (129, 1, 'user', 'admin_url', 'user/AdminUserAction/index', '', '用户操作管理', '');
INSERT INTO `cmf_auth_rule` VALUES (130, 1, 'user', 'admin_url', 'user/AdminUserAction/edit', '', '编辑用户操作', '');
INSERT INTO `cmf_auth_rule` VALUES (131, 1, 'user', 'admin_url', 'user/AdminUserAction/editPost', '', '编辑用户操作提交', '');
INSERT INTO `cmf_auth_rule` VALUES (132, 1, 'user', 'admin_url', 'user/AdminUserAction/sync', '', '同步用户操作', '');
INSERT INTO `cmf_auth_rule` VALUES (133, 1, 'admin', 'admin_url', 'admin/AppInfo/index', '', '应用设置', '');
INSERT INTO `cmf_auth_rule` VALUES (162, 1, 'admin', 'admin_url', 'admin/RecycleBin/clear', '', '清空回收站', '');
INSERT INTO `cmf_auth_rule` VALUES (163, 1, 'plugin/Swagger', 'plugin_url', 'plugin/Swagger/AdminIndex/index', '', 'Swagger', '');
INSERT INTO `cmf_auth_rule` VALUES (164, 1, 'plugin/Configs', 'plugin_url', 'plugin/Configs/AdminIndex/index', '', '系统参数设置', '');
INSERT INTO `cmf_auth_rule` VALUES (166, 1, 'plugin/AdminJournal', 'admin_url', 'plugin/AdminJournal/AdminIndex/index', '', '操作日志', '');
INSERT INTO `cmf_auth_rule` VALUES (167, 1, 'admin', 'admin_url', 'admin/member/default', '', '用户管理', '');
INSERT INTO `cmf_auth_rule` VALUES (168, 1, 'admin', 'admin_url', 'admin/member/index', '', '用户管理', '');
INSERT INTO `cmf_auth_rule` VALUES (169, 1, '/plugin/form', 'admin_url', '/plugin/form/AdminIndex/setting', '', '生成CURD', '');
INSERT INTO `cmf_auth_rule` VALUES (177, 1, 'admin', 'admin_url', 'admin/dingdan/index', '', '订单管理', '');
INSERT INTO `cmf_auth_rule` VALUES (178, 1, 'admin', 'admin_url', 'admin/shop_order/index', '', '订单管理', '');
INSERT INTO `cmf_auth_rule` VALUES (179, 1, 'admin', 'admin_url', 'admin/Shop/index', '', '店铺管理', '');
INSERT INTO `cmf_auth_rule` VALUES (180, 1, 'admin', 'admin_url', 'admin/Shop/edit', '', '店铺管理-编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (181, 1, 'admin', 'admin_url', 'admin/Shop/add', '', '店铺管理-添加', '');
INSERT INTO `cmf_auth_rule` VALUES (182, 1, 'admin', 'admin_url', 'admin/Shop/find', '', '店铺管理-查看', '');
INSERT INTO `cmf_auth_rule` VALUES (183, 1, 'admin', 'admin_url', 'admin/Shop/delete', '', '店铺管理-删除', '');
INSERT INTO `cmf_auth_rule` VALUES (184, 1, 'admin', 'admin_url', 'admin/FormTest/index', '', '测试生成crud', '');
INSERT INTO `cmf_auth_rule` VALUES (185, 1, 'admin', 'admin_url', 'admin/FormTest/edit', '', '测试生成crud-编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (186, 1, 'admin', 'admin_url', 'admin/FormTest/add', '', '测试生成crud-添加', '');
INSERT INTO `cmf_auth_rule` VALUES (187, 1, 'admin', 'admin_url', 'admin/FormTest/find', '', '测试生成crud-查看', '');
INSERT INTO `cmf_auth_rule` VALUES (188, 1, 'admin', 'admin_url', 'admin/FormTest/delete', '', '测试生成crud-删除', '');
INSERT INTO `cmf_auth_rule` VALUES (189, 1, 'admin', 'admin_url', 'admin/FormTest/recommend_post', '', '测试生成crud-推荐', '');
INSERT INTO `cmf_auth_rule` VALUES (190, 1, 'admin', 'admin_url', 'admin/FormTest/list_order_post', '', '测试生成crud-排序', '');
INSERT INTO `cmf_auth_rule` VALUES (191, 1, 'admin', 'admin_url', 'admin/test/index', '', '测试', '');
INSERT INTO `cmf_auth_rule` VALUES (192, 1, 'plugin/weipay', 'admin_url', 'plugin/weipay/admin_index/index', '', '小程序设置', '');
INSERT INTO `cmf_auth_rule` VALUES (193, 1, 'admin', 'admin_url', 'admin/moren/index', '', '子权限', '');
INSERT INTO `cmf_auth_rule` VALUES (194, 1, 'admin', 'admin_url', 'admin/asset/log_all', '', '资金变动记录', '');
INSERT INTO `cmf_auth_rule` VALUES (195, 1, 'admin', 'admin_url', 'admin/withdrawal/index', '', '提现管理', '');
INSERT INTO `cmf_auth_rule` VALUES (196, 1, 'admin', 'admin_url', 'admin/base_test/index', '', '测试', '');
INSERT INTO `cmf_auth_rule` VALUES (197, 1, 'admin', 'admin_url', 'admin/BaseTest/index', '', '测试', '');
INSERT INTO `cmf_auth_rule` VALUES (198, 1, 'admin', 'admin_url', 'admin/BaseTest/edit', '', '测试-编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (199, 1, 'admin', 'admin_url', 'admin/BaseTest/add', '', '测试-添加', '');
INSERT INTO `cmf_auth_rule` VALUES (200, 1, 'admin', 'admin_url', 'admin/BaseTest/find', '', '测试-查看', '');
INSERT INTO `cmf_auth_rule` VALUES (201, 1, 'admin', 'admin_url', 'admin/BaseTest/delete', '', '测试-删除', '');
INSERT INTO `cmf_auth_rule` VALUES (202, 1, 'admin', 'admin_url', 'admin/ct/index', '', '测试', '');
INSERT INTO `cmf_auth_rule` VALUES (203, 1, 'admin', 'admin_url', 'admin/rere/idnf', '', '测试', '');
INSERT INTO `cmf_auth_rule` VALUES (204, 1, 'a', 'admin_url', 'a/a/a', '', '测试', '');
INSERT INTO `cmf_auth_rule` VALUES (205, 1, 'a', 'admin_url', 'a/a/a1', '', 'a', '');
INSERT INTO `cmf_auth_rule` VALUES (206, 1, 'admin', 'admin_url', 'admin/Slide/de', '', '幻灯片管理', '');
INSERT INTO `cmf_auth_rule` VALUES (207, 1, 'aa', 'admin_url', 'aa/aa/aa', '', 'aa', '');
INSERT INTO `cmf_auth_rule` VALUES (208, 1, 'aa', 'admin_url', 'aa/aa/aac', 'ee', 'aa', '');
INSERT INTO `cmf_auth_rule` VALUES (209, 1, 'admin', 'admin_url', 'admin/BaseTest/list_order_post', '', '测试-排序', '');
INSERT INTO `cmf_auth_rule` VALUES (210, 1, 'admin', 'admin_url', 'admin/BaseTest/recommend_post', '', '测试-推荐', '');
INSERT INTO `cmf_auth_rule` VALUES (211, 1, 'admin', 'admin_url', 'admin/base_test/edit', '', '测试-编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (212, 1, 'admin', 'admin_url', 'admin/base_test/add', '', '测试-添加', '');
INSERT INTO `cmf_auth_rule` VALUES (213, 1, 'admin', 'admin_url', 'admin/base_test/find', '', '测试-查看', '');
INSERT INTO `cmf_auth_rule` VALUES (214, 1, 'admin', 'admin_url', 'admin/base_test/delete', '', '测试-删除', '');
INSERT INTO `cmf_auth_rule` VALUES (215, 1, 'admin', 'admin_url', 'admin/wechat_menu/index', '', '公众号自定义菜单', '');
INSERT INTO `cmf_auth_rule` VALUES (216, 1, 'admin', 'admin_url', 'admin/base_test/recommend_post', '', '测试模板-推荐', '');
INSERT INTO `cmf_auth_rule` VALUES (217, 1, 'admin', 'admin_url', 'admin/base_test/list_order_post', '', '测试模板-排序', '');
INSERT INTO `cmf_auth_rule` VALUES (218, 1, 'admin', 'admin_url', 'admin/member/children_tree', '', '关系图', '');
INSERT INTO `cmf_auth_rule` VALUES (219, 1, 'admin', 'admin_url', 'admin/shangpin/index', '', '商品管理', '');
INSERT INTO `cmf_auth_rule` VALUES (220, 1, 'admin', 'admin_url', 'admin/shop_goods/index', '', '商品管理', '');
INSERT INTO `cmf_auth_rule` VALUES (221, 1, 'admin', 'admin_url', 'admin/shop_goods/edit', '', '商品管理-编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (222, 1, 'admin', 'admin_url', 'admin/shop_goods/add', '', '商品管理-添加', '');
INSERT INTO `cmf_auth_rule` VALUES (223, 1, 'admin', 'admin_url', 'admin/shop_goods/delete', '', '商品管理-删除', '');
INSERT INTO `cmf_auth_rule` VALUES (224, 1, 'admin', 'admin_url', 'admin/shop_goods/list_order_post', '', '商品管理-排序', '');
INSERT INTO `cmf_auth_rule` VALUES (225, 1, 'admin', 'admin_url', 'admin/shop_goods_class/index', '', '分类管理', '');
INSERT INTO `cmf_auth_rule` VALUES (226, 1, 'admin', 'admin_url', 'admin/shop_goods_class/edit', '', '分类管理-编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (227, 1, 'admin', 'admin_url', 'admin/shop_goods_class/add', '', '分类管理-添加', '');
INSERT INTO `cmf_auth_rule` VALUES (228, 1, 'admin', 'admin_url', 'admin/shop_goods_class/delete', '', '分类管理-删除', '');
INSERT INTO `cmf_auth_rule` VALUES (229, 1, 'admin', 'admin_url', 'admin/shop_goods_class/list_order_post', '', '分类管理-排序', '');
INSERT INTO `cmf_auth_rule` VALUES (230, 1, 'admin', 'admin_url', 'admin/shop_coupon/index', '', '优惠券管理', '');
INSERT INTO `cmf_auth_rule` VALUES (231, 1, 'admin', 'admin_url', 'admin/shop_coupon/edit', '', '优惠券-编辑', '');
INSERT INTO `cmf_auth_rule` VALUES (232, 1, 'admin', 'admin_url', 'admin/shop_coupon/add', '', '优惠券-添加', '');
INSERT INTO `cmf_auth_rule` VALUES (233, 1, 'admin', 'admin_url', 'admin/shop_coupon/delete', '', '优惠券-删除', '');

-- ----------------------------
-- Table structure for cmf_base_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_base_admin_log`;
CREATE TABLE `cmf_base_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(2) NULL DEFAULT 1 COMMENT '1后台  2前端',
  `log` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '操作地址参数',
  `admin_id` int(11) NULL DEFAULT NULL COMMENT '登录人',
  `admin_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录标识',
  `ip` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `menu_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '地址栏',
  `param` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '参数值',
  `create_time` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `date` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日期',
  `visit_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '域名+参数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '管理员日志' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_base_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_base_asset_log
-- ----------------------------
DROP TABLE IF EXISTS `cmf_base_asset_log`;
CREATE TABLE `cmf_base_asset_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `admin_id` int(11) NULL DEFAULT 0,
  `order_num` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单单号',
  `operate_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'balance' COMMENT '操作类型:balance余额,point积分',
  `identity_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'member' COMMENT '身份类型',
  `change_type` tinyint(6) NULL DEFAULT NULL COMMENT '变动类型:1=收入,2=支出',
  `order_type` int(11) NULL DEFAULT 0 COMMENT '订单类型 ',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '变动金额',
  `before` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更前',
  `after` decimal(10, 2) NOT NULL DEFAULT 0.00 COMMENT '变更后',
  `content` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '变动说明',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `order_id` int(11) NULL DEFAULT 0 COMMENT '订单ID',
  `child_id` int(11) NULL DEFAULT NULL COMMENT '子级id',
  `describe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作描述',
  `create_time` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint(20) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` bigint(20) NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `uid`(`user_id`) USING BTREE,
  INDEX `operate_type`(`operate_type`, `identity_type`, `change_type`, `order_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户资产变动记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_base_asset_log
-- ----------------------------
INSERT INTO `cmf_base_asset_log` VALUES (1, 1, NULL, '250331139942598896', 'balance', 'member', 1, 100, 10.00, 0.00, 10.00, '测试', '操作人[1-admin];操作说明[测试];操作类型[增加用户余额];', 0, 0, NULL, 1743413994, NULL, 0);
INSERT INTO `cmf_base_asset_log` VALUES (2, 1, NULL, '250331140034522352', 'balance', 'member', 2, 100, 2.00, 10.00, 8.00, '测测', '操作人[1-admin];操作说明[测测];操作类型[扣除用户余额];', 0, 0, NULL, 1743414003, NULL, 0);
INSERT INTO `cmf_base_asset_log` VALUES (3, 1, 1, '250601487521262447', 'balance', 'member', 1, 1100, 10.00, 8.00, 18.00, '管理员添加', '操作人[1-admin];操作说明[管理员添加];操作类型[增加用户余额];', 0, 0, NULL, 1748748752, NULL, 0);
INSERT INTO `cmf_base_asset_log` VALUES (4, 1, 1, '250601488624175304', 'balance', 'member', 1, 1100, 10.00, 18.00, 28.00, '管理员添加', '操作人[1-admin];操作说明[管理员添加];操作类型[增加用户余额];', 0, 0, '管理员添加记录 [1000]', 1748748862, NULL, 0);
INSERT INTO `cmf_base_asset_log` VALUES (5, 1, 1, '250601490590160497', 'point', 'member', 1, 1200, 80.00, 0.00, 80.00, '管理员添加', '操作人[1-admin];操作说明[管理员添加];操作类型[增加用户积分];', 0, 0, '管理员添加记录 [1000]', 1748749059, NULL, 0);
INSERT INTO `cmf_base_asset_log` VALUES (6, 1, 1, '250601490691464936', 'point', 'member', 1, 1200, 90.00, 80.00, 170.00, '管理员添加', '操作人[1-admin];操作说明[管理员添加];操作类型[增加用户积分];', 0, 0, '管理员添加记录 [1000]', 1748749069, NULL, 0);
INSERT INTO `cmf_base_asset_log` VALUES (7, 1, 1, '250601493137382580', 'balance', 'member', 1, 1100, 80.00, 28.00, 108.00, '管理员添加', '操作人[1-admin];操作说明[管理员添加];操作类型[增加用户余额];', 0, 0, '管理员添加记录 [1000]', 1748749313, NULL, 0);
INSERT INTO `cmf_base_asset_log` VALUES (8, 1, 1, '250601493209171595', 'balance', 'member', 2, 1110, 10.00, 108.00, 98.00, '管理员扣除', '操作人[1-admin];操作说明[管理员扣除];操作类型[扣除用户余额];', 0, 0, '管理员扣除记录 [1000]', 1748749320, NULL, 0);
INSERT INTO `cmf_base_asset_log` VALUES (9, 1, 1, '250601493288025844', 'point', 'member', 2, 1210, 10.00, 170.00, 160.00, '管理员扣除', '操作人[1-admin];操作说明[管理员扣除];操作类型[扣除用户积分];', 0, 0, '管理员扣除记录 [1000]', 1748749328, NULL, 0);

-- ----------------------------
-- Table structure for cmf_base_comment
-- ----------------------------
DROP TABLE IF EXISTS `cmf_base_comment`;
CREATE TABLE `cmf_base_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'goods' COMMENT '类型:goods商品评价',
  `pid` int(11) NULL DEFAULT NULL COMMENT '关联id',
  `parent_id` int(11) NULL DEFAULT 0 COMMENT '上级id',
  `answer_user_id` int(11) NULL DEFAULT 0 COMMENT '回答某人用户id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '发布评论人id',
  `content` varchar(2555) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '图片',
  `star` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '5' COMMENT '星级',
  `is_show` tinyint(2) NULL DEFAULT 1 COMMENT '1显示,2隐藏',
  `like_count` int(5) NULL DEFAULT 0 COMMENT '点赞量',
  `is_top` int(11) NULL DEFAULT 1 COMMENT '1未置顶,2已置顶',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `ext_id` int(11) NULL DEFAULT NULL COMMENT '扩展id',
  `send_user_id` int(11) NULL DEFAULT NULL COMMENT '通知-发布文章者',
  `create_time` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint(20) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` bigint(20) NULL DEFAULT 0 COMMENT '软删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pid`(`pid`, `parent_id`, `user_id`, `type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '评论管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_base_comment
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_base_config
-- ----------------------------
DROP TABLE IF EXISTS `cmf_base_config`;
CREATE TABLE `cmf_base_config`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'group_id只',
  `is_menu` tinyint(4) NULL DEFAULT 2 COMMENT '是否菜单1:线上显示,本地都显示,2所有不显示,3本地显示,线上不显示',
  `menu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单名字',
  `key` bigint(20) NULL DEFAULT NULL COMMENT 'group_id值',
  `group_id` bigint(20) NULL DEFAULT NULL COMMENT '分组ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '参数名',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '参数值,序列化数据',
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '参数说明',
  `uridata` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '附加数据',
  `data` varchar(2555) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据源',
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'text' COMMENT '设置类型 ',
  `about` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注注释',
  `list_order` bigint(20) NULL DEFAULT NULL COMMENT '排序',
  `status` tinyint(100) NULL DEFAULT 1 COMMENT '0不显示',
  `scatter` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '隔断,打散数据 /',
  `data_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '数据类型',
  `is_label` tinyint(4) NULL DEFAULT 0 COMMENT '组件数据格式:0否,1是',
  `is_edit` tinyint(4) NULL DEFAULT 0 COMMENT '禁止编辑:0否,1是',
  `is_show` tinyint(4) NULL DEFAULT 1 COMMENT '显示:0否,1是',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `is_menu`(`is_menu`, `key`, `group_id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 153 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统配置' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_base_config
-- ----------------------------
INSERT INTO `cmf_base_config` VALUES (1, 1, '系统配置', 100, 0, 'system_configuration', '', '系统配置', '', 's:0:\"\";', 'text', '', 100, 1, '', '', 0, 0, 1);
INSERT INTO `cmf_base_config` VALUES (2, 3, '私有配置', 999999, 0, 'private_configuration', '', '私有配置', '', 's:0:\"\";', 'text', '', 999999, 1, '', '', 0, 0, 1);
INSERT INTO `cmf_base_config` VALUES (100, 2, NULL, 0, 100, 'app_logo', 's:70:\"xcxkf00000000001/default/20250723/3647c4d7fe333252ce16e4b5b04dcd82.jpg\";', '应用LOGO', '', 's:0:\"\";', 'img', '', 1, 1, '', 'string', 0, 0, 1);
INSERT INTO `cmf_base_config` VALUES (101, 2, NULL, 0, 100, 'app_name', 's:12:\"商城模板\";', '应用名称', '', 's:0:\"\";', '', '', 2, 1, '', 'string', 0, 0, 1);
INSERT INTO `cmf_base_config` VALUES (102, 2, '', 0, 999999, 'domain_name', 's:24:\"http://shop_template.com\";', '域名', '', 's:0:\"\";', 'text', '', 100, 1, '', 'string', 0, 0, 1);
INSERT INTO `cmf_base_config` VALUES (103, 2, NULL, 0, 999999, 'app_expiration_time', 's:0:\"\";', '应用到期时间', '', 's:0:\"\";', 'date', '开发应用到期时间', 300, 1, '', '', 0, 0, 0);
INSERT INTO `cmf_base_config` VALUES (104, 2, '', 0, 999999, 'project_name', 's:12:\"商城模板\";', '项目名字', '', 's:0:\"\";', '', '本地项目名', 300, 1, '', '', 0, 0, 1);
INSERT INTO `cmf_base_config` VALUES (105, 2, '', 0, 999999, 'copyright', 's:42:\"技术支持：微巨宝科技有限公司\";', '版权', '', 's:0:\"\";', '', '登录页版权', 400, 1, '', '', 0, 0, 1);
INSERT INTO `cmf_base_config` VALUES (106, 2, '', 0, 999999, 'local_domain_name', 's:30:\"http://shop_template.ikun:9090\";', '本地域名', '', 's:0:\"\";', '', '', 200, 1, '', '', 0, 0, 1);
INSERT INTO `cmf_base_config` VALUES (107, 2, '', 0, 999999, 'log_file_days', 's:2:\"10\";', '日志文件保留天数', '', 's:0:\"\";', 'number', '日志文件保留天数', 500, 1, '', '', 0, 0, 1);
INSERT INTO `cmf_base_config` VALUES (136, 2, NULL, 0, 888888, 'program_code', 's:70:\"xcxkf00000000001/default/20250723/1066cb6c7b7eef58a1cf0b7f1e9b718d.jpg\";', '程序码二维码', '', 's:0:\"\";', 'img', '', 200, 1, '', NULL, 0, 0, 1);
INSERT INTO `cmf_base_config` VALUES (137, 3, '程序配置', 888888, 0, 'program_configuration', NULL, '程序配置', NULL, 's:0:\"\";', '', '', 999998, 1, '', NULL, 0, 0, 0);
INSERT INTO `cmf_base_config` VALUES (139, 2, NULL, 0, 888888, 'program_information', 's:27:\"商城模板-*****-***-****\";', '程序信息', '', 's:0:\"\";', '', '程序基础信息', 100, 1, '', NULL, 0, 0, 1);
INSERT INTO `cmf_base_config` VALUES (141, 2, NULL, 0, 999999, 'order_automatic_cancellation_time', 's:2:\"15\";', '订单自动取消时', NULL, 's:0:\"\";', 'number', '单位/分钟', 600, 1, '', NULL, 0, 0, 1);
INSERT INTO `cmf_base_config` VALUES (142, 2, NULL, 0, 999999, 'order_auto_completion_time', 's:2:\"10\";', '订单发货后自动完成时间', NULL, 's:0:\"\";', 'number', '单位/天', 700, 1, '', NULL, 0, 0, 1);
INSERT INTO `cmf_base_config` VALUES (143, 2, NULL, 0, 999999, 'tencent_map_key', 's:35:\"GGVBZ-DUV6J-N33FQ-FX3AE-HTJ56-N6FDP\";', '腾讯地图key', NULL, 's:0:\"\";', '', '用于地图转经纬度,经纬度转地址,腾讯地图key', 800, 1, '', NULL, 0, 0, 1);
INSERT INTO `cmf_base_config` VALUES (148, 2, NULL, 0, 888888, 'trial_version_qr_image', 's:71:\"xcxkf00000000001/default/20250723/9cc7f604e8438da9c47dc5a55a637abc.jpeg\";', '体验版', NULL, 's:0:\"\";', 'img', '', 300, 1, '', NULL, 0, 0, 1);
INSERT INTO `cmf_base_config` VALUES (149, 2, NULL, 0, 888888, 'qr_code_official_account_image', 's:70:\"xcxkf00000000001/default/20250626/c824083a7d170de7ecab2cfd8e3386a2.jpg\";', '公众号二维码', NULL, 's:0:\"\";', 'img', '', 400, 1, '', NULL, 0, 0, 1);
INSERT INTO `cmf_base_config` VALUES (150, 2, NULL, 0, 888888, 'h5_address_code', 's:70:\"xcxkf00000000001/default/20250626/abc0b2bf8d69a3e90116ad07dc78f4ad.jpg\";', 'h5地址码', NULL, 's:0:\"\";', 'img', '', 500, 1, '', NULL, 0, 0, 1);

-- ----------------------------
-- Table structure for cmf_base_express
-- ----------------------------
DROP TABLE IF EXISTS `cmf_base_express`;
CREATE TABLE `cmf_base_express`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '快递名称',
  `abbr` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '微信快递code',
  `kd_hundred_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '快递100code',
  `kd_bird_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '快递鸟code',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '2删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '快递表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_base_express
-- ----------------------------
INSERT INTO `cmf_base_express` VALUES (1, '安能物流', 'ANE', 'annengwuliu', 'ANE', 1);
INSERT INTO `cmf_base_express` VALUES (2, '百世快递', 'BEST', 'huitongkuaidi', 'HTKY', 1);
INSERT INTO `cmf_base_express` VALUES (3, '德邦快递', 'DB', 'debangkuaidi', 'DBL', 1);
INSERT INTO `cmf_base_express` VALUES (4, '中国邮政速递物流', 'EMS', 'youzhengguonei', 'YZPY', 1);
INSERT INTO `cmf_base_express` VALUES (6, '京东快递', 'JDL', 'jd', 'JD', 1);
INSERT INTO `cmf_base_express` VALUES (7, '极兔快递', 'JTSD', 'jtexpress', 'JTSD', 1);
INSERT INTO `cmf_base_express` VALUES (9, '顺丰速运', 'SF', 'shunfeng', 'SF', 1);
INSERT INTO `cmf_base_express` VALUES (10, '申通快递', 'STO', 'shentong', 'STO', 1);
INSERT INTO `cmf_base_express` VALUES (12, '圆通速递', 'YTO', 'yuantong', 'YTO', 1);
INSERT INTO `cmf_base_express` VALUES (13, '韵达快递', 'YUNDA', 'yunda', 'YD', 1);
INSERT INTO `cmf_base_express` VALUES (14, '中通快递', 'ZTO', 'zhongtong', 'ZTO', 1);

-- ----------------------------
-- Table structure for cmf_base_form_model
-- ----------------------------
DROP TABLE IF EXISTS `cmf_base_form_model`;
CREATE TABLE `cmf_base_form_model`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `json_params` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `type` tinyint(2) NULL DEFAULT 1 COMMENT '1提交数据  2访问域名',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '生成curt' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_base_form_model
-- ----------------------------
INSERT INTO `cmf_base_form_model` VALUES (1, 'a:29:{s:10:\"table_name\";s:10:\"shop_goods\";s:10:\"model_name\";s:9:\"ShopGoods\";s:4:\"tags\";s:12:\"商品管理\";s:7:\"keyword\";a:1:{s:10:\"goods_name\";s:2:\"on\";}s:8:\"validate\";a:14:{s:2:\"id\";s:4:\"null\";s:4:\"type\";s:4:\"null\";s:7:\"shop_id\";s:4:\"null\";s:10:\"goods_name\";s:4:\"null\";s:5:\"price\";s:4:\"null\";s:10:\"line_price\";s:4:\"null\";s:5:\"image\";s:4:\"null\";s:6:\"images\";s:4:\"null\";s:10:\"sell_count\";s:4:\"null\";s:5:\"stock\";s:4:\"null\";s:3:\"tag\";s:4:\"null\";s:7:\"content\";s:4:\"null\";s:4:\"code\";s:4:\"null\";s:8:\"qr_image\";s:4:\"null\";}s:13:\"validate_text\";a:14:{s:2:\"id\";s:0:\"\";s:4:\"type\";s:0:\"\";s:7:\"shop_id\";s:0:\"\";s:10:\"goods_name\";s:0:\"\";s:5:\"price\";s:0:\"\";s:10:\"line_price\";s:0:\"\";s:5:\"image\";s:0:\"\";s:6:\"images\";s:0:\"\";s:10:\"sell_count\";s:0:\"\";s:5:\"stock\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:7:\"content\";s:0:\"\";s:4:\"code\";s:0:\"\";s:8:\"qr_image\";s:0:\"\";}s:14:\"api_controller\";s:2:\"on\";s:12:\"api_paginate\";s:2:\"on\";s:10:\"api_openid\";s:6:\"openid\";s:16:\"admin_controller\";s:2:\"on\";s:14:\"admin_paginate\";s:2:\"on\";s:10:\"admin_view\";s:2:\"on\";s:10:\"admin_menu\";s:2:\"on\";s:9:\"index_add\";s:2:\"on\";s:10:\"index_edit\";s:2:\"on\";s:12:\"index_delete\";s:2:\"on\";s:16:\"index_list_order\";s:2:\"on\";s:9:\"parent_id\";s:3:\"281\";s:4:\"name\";s:12:\"商品管理\";s:3:\"app\";s:5:\"admin\";s:6:\"action\";s:5:\"index\";s:5:\"param\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:6:\"remark\";s:0:\"\";s:6:\"status\";s:1:\"1\";s:4:\"type\";s:1:\"1\";s:7:\"_plugin\";s:4:\"form\";s:11:\"_controller\";s:10:\"AdminIndex\";s:7:\"_action\";s:11:\"settingPost\";}', 1, NULL);
INSERT INTO `cmf_base_form_model` VALUES (2, 'http://repair.ikun:9090/plugin/form/AdminIndex/settingPost', 2, '表名:shop_goods  -------  控制器(tags):商品管理');
INSERT INTO `cmf_base_form_model` VALUES (3, 'a:29:{s:10:\"table_name\";s:16:\"shop_goods_class\";s:10:\"model_name\";s:14:\"ShopGoodsClass\";s:4:\"tags\";s:12:\"分类管理\";s:7:\"keyword\";a:1:{s:4:\"name\";s:2:\"on\";}s:8:\"validate\";a:5:{s:2:\"id\";s:4:\"null\";s:4:\"type\";s:4:\"null\";s:3:\"pid\";s:4:\"null\";s:4:\"name\";s:4:\"null\";s:5:\"image\";s:4:\"null\";}s:13:\"validate_text\";a:5:{s:2:\"id\";s:0:\"\";s:4:\"type\";s:0:\"\";s:3:\"pid\";s:0:\"\";s:4:\"name\";s:0:\"\";s:5:\"image\";s:0:\"\";}s:14:\"api_controller\";s:2:\"on\";s:12:\"api_paginate\";s:2:\"on\";s:10:\"api_openid\";s:6:\"openid\";s:16:\"admin_controller\";s:2:\"on\";s:14:\"admin_paginate\";s:2:\"on\";s:10:\"admin_view\";s:2:\"on\";s:10:\"admin_menu\";s:2:\"on\";s:9:\"index_add\";s:2:\"on\";s:10:\"index_edit\";s:2:\"on\";s:12:\"index_delete\";s:2:\"on\";s:16:\"index_list_order\";s:2:\"on\";s:9:\"parent_id\";s:3:\"281\";s:4:\"name\";s:12:\"分类管理\";s:3:\"app\";s:5:\"admin\";s:6:\"action\";s:5:\"index\";s:5:\"param\";s:0:\"\";s:4:\"icon\";s:0:\"\";s:6:\"remark\";s:0:\"\";s:6:\"status\";s:1:\"1\";s:4:\"type\";s:1:\"1\";s:7:\"_plugin\";s:4:\"form\";s:11:\"_controller\";s:10:\"AdminIndex\";s:7:\"_action\";s:11:\"settingPost\";}', 1, NULL);
INSERT INTO `cmf_base_form_model` VALUES (4, 'http://repair.ikun:9090/plugin/form/AdminIndex/settingPost', 2, '表名:shop_goods_class  -------  控制器(tags):分类管理');
INSERT INTO `cmf_base_form_model` VALUES (5, 'a:28:{s:10:\"table_name\";s:11:\"shop_coupon\";s:10:\"model_name\";s:10:\"ShopCoupon\";s:4:\"tags\";s:9:\"优惠券\";s:7:\"keyword\";a:1:{s:4:\"name\";s:2:\"on\";}s:8:\"validate\";a:10:{s:2:\"id\";s:4:\"null\";s:4:\"type\";s:4:\"null\";s:4:\"name\";s:4:\"null\";s:11:\"full_amount\";s:4:\"null\";s:6:\"amount\";s:4:\"null\";s:5:\"count\";s:4:\"null\";s:12:\"select_count\";s:4:\"null\";s:5:\"limit\";s:4:\"null\";s:7:\"content\";s:4:\"null\";s:3:\"day\";s:4:\"null\";}s:13:\"validate_text\";a:10:{s:2:\"id\";s:0:\"\";s:4:\"type\";s:0:\"\";s:4:\"name\";s:0:\"\";s:11:\"full_amount\";s:0:\"\";s:6:\"amount\";s:0:\"\";s:5:\"count\";s:0:\"\";s:12:\"select_count\";s:0:\"\";s:5:\"limit\";s:0:\"\";s:7:\"content\";s:0:\"\";s:3:\"day\";s:0:\"\";}s:14:\"api_controller\";s:2:\"on\";s:12:\"api_paginate\";s:2:\"on\";s:10:\"api_openid\";s:6:\"openid\";s:16:\"admin_controller\";s:2:\"on\";s:14:\"admin_paginate\";s:2:\"on\";s:10:\"admin_view\";s:2:\"on\";s:10:\"admin_menu\";s:2:\"on\";s:9:\"index_add\";s:2:\"on\";s:10:\"index_edit\";s:2:\"on\";s:12:\"index_delete\";s:2:\"on\";s:9:\"parent_id\";s:0:\"\";s:4:\"name\";s:9:\"优惠券\";s:3:\"app\";s:5:\"admin\";s:6:\"action\";s:5:\"index\";s:5:\"param\";s:0:\"\";s:4:\"icon\";s:6:\"ticket\";s:6:\"remark\";s:0:\"\";s:6:\"status\";s:1:\"1\";s:4:\"type\";s:1:\"1\";s:7:\"_plugin\";s:4:\"form\";s:11:\"_controller\";s:10:\"AdminIndex\";s:7:\"_action\";s:11:\"settingPost\";}', 1, NULL);
INSERT INTO `cmf_base_form_model` VALUES (6, 'http://repair.ikun:9090/plugin/form/AdminIndex/settingPost', 2, '表名:shop_coupon  -------  控制器(tags):优惠券');

-- ----------------------------
-- Table structure for cmf_base_leave
-- ----------------------------
DROP TABLE IF EXISTS `cmf_base_leave`;
CREATE TABLE `cmf_base_leave`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(2555) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '留言内容',
  `images` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '图集',
  `reply_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回复内容',
  `reply_time` bigint(20) NULL DEFAULT NULL COMMENT '回复时间',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态:1待处理,2已处理',
  `create_time` bigint(20) NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` bigint(20) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` bigint(20) NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '投诉建议' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_base_leave
-- ----------------------------
INSERT INTO `cmf_base_leave` VALUES (14, 1, '刘', '199999', NULL, '哈哈哈哈', NULL, NULL, NULL, 1, 1749610814, NULL, 0);
INSERT INTO `cmf_base_leave` VALUES (15, 1, '刘', '199999', '水电费', '哈哈哈哈', NULL, '收到抚慰费', 1749610833, 2, 1749610827, 1749610833, 0);

-- ----------------------------
-- Table structure for cmf_base_like
-- ----------------------------
DROP TABLE IF EXISTS `cmf_base_like`;
CREATE TABLE `cmf_base_like`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型:1论坛',
  `pid` int(11) NULL DEFAULT NULL COMMENT '关联id',
  `create_time` bigint(20) NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` bigint(20) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` bigint(20) NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`, `type`, `pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '点赞&收藏' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_base_like
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_base_order_pay
-- ----------------------------
DROP TABLE IF EXISTS `cmf_base_order_pay`;
CREATE TABLE `cmf_base_order_pay`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NULL DEFAULT NULL COMMENT '关联订单id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '关联用户',
  `openid` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'openid',
  `order_type` int(5) NULL DEFAULT 1 COMMENT '订单类型:',
  `pay_type` tinyint(4) NULL DEFAULT 1 COMMENT '支付类型:1微信支付,2余额支付,3积分支付,4支付宝支付',
  `order_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联订单号',
  `pay_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发起支付单号',
  `trade_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第三方返回单号',
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '支付金额',
  `notify` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '回调信息',
  `status` int(2) NULL DEFAULT 1 COMMENT '支付状态:1未支付,2已支付',
  `pay_time` bigint(20) NULL DEFAULT NULL COMMENT '支付时间',
  `create_time` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint(20) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` bigint(20) NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '支付管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_base_order_pay
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_base_test
-- ----------------------------
DROP TABLE IF EXISTS `cmf_base_test`;
CREATE TABLE `cmf_base_test`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NULL DEFAULT 1 COMMENT '类型:1普通商品,2抢购商品,3拼团商品',
  `class_id` int(11) NULL DEFAULT NULL COMMENT '分类id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态:1审核中,2已通过,3已拒绝',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '封面',
  `a_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '介绍图',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '图集',
  `a_images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '图集222',
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件',
  `a_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件222',
  `video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '视频',
  `a_video` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '视频222',
  `pay_type` tinyint(4) NULL DEFAULT 1 COMMENT '支付类型:1微信,2余额,3支付宝',
  `introduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '介绍',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容',
  `is_index` tinyint(4) NULL DEFAULT 1 COMMENT '首页推荐:1是,2否',
  `is_pay` tinyint(4) NULL DEFAULT 1 COMMENT '支付:1是,2否',
  `is_show` tinyint(4) NULL DEFAULT 1 COMMENT '显示:1是,2否',
  `is_recommend` tinyint(4) NULL DEFAULT 2 COMMENT '推荐:1是,2否',
  `list_order` int(11) NULL DEFAULT 1000 COMMENT '排序',
  `refuse` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '拒绝理由',
  `pass_time` bigint(20) NULL DEFAULT NULL COMMENT '通过时间',
  `refuse_time` bigint(20) NULL DEFAULT NULL COMMENT '拒绝时间',
  `cancel_time` bigint(20) NULL DEFAULT NULL COMMENT '取消时间',
  `reply` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '回复内容',
  `reply_time` bigint(20) NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint(20) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` bigint(20) NULL DEFAULT 0 COMMENT '删除时间',
  `finish_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '完成图片',
  `receive_time` bigint(20) NULL DEFAULT NULL COMMENT '领取时间',
  `finish_time` bigint(20) NULL DEFAULT NULL COMMENT '完成时间',
  `fail_time` bigint(20) NULL DEFAULT NULL COMMENT '失败时间',
  `start_time` bigint(20) NULL DEFAULT NULL COMMENT '开始时间',
  `begin_time` bigint(20) NULL DEFAULT NULL COMMENT '开始时间22',
  `end_time` bigint(20) NULL DEFAULT NULL COMMENT '结束时间',
  `stop_time` bigint(20) NULL DEFAULT NULL COMMENT '结束时间22',
  `closing_time` bigint(20) NULL DEFAULT NULL COMMENT '结束时间33',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 167 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '测试模板' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_base_test
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_base_withdrawal
-- ----------------------------
DROP TABLE IF EXISTS `cmf_base_withdrawal`;
CREATE TABLE `cmf_base_withdrawal`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户信息',
  `identity_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'member' COMMENT '身份类型',
  `type` tinyint(2) NULL DEFAULT 1 COMMENT '提现类型:1支付宝,2微信,3银行卡',
  `openid` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'openid',
  `wx_openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '提现金额',
  `charges` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '手续费',
  `rmb` decimal(10, 2) NULL DEFAULT NULL COMMENT '需打款金额',
  `status` tinyint(2) NULL DEFAULT 1 COMMENT '状态:1待审核,2已审核,3已拒绝',
  `refuse` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '拒绝原因',
  `order_num` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `create_time` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint(20) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` bigint(20) NULL DEFAULT 0 COMMENT '删除时间',
  `ali_username` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ali_account` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wx_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `wx_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `opening_bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bank_username` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bank_account` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `package_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `transfer_bill_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pass_time` bigint(20) NULL DEFAULT NULL COMMENT '打款时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '会员提现申请' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_base_withdrawal
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_comment
-- ----------------------------
DROP TABLE IF EXISTS `cmf_comment`;
CREATE TABLE `cmf_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` int(11) NULL DEFAULT NULL COMMENT '文章id',
  `parent_id` int(11) NULL DEFAULT 0 COMMENT '上级id',
  `answer_user_id` int(11) NULL DEFAULT 0 COMMENT '回答某人用户id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '发布评论人id',
  `content` varchar(2555) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `is_show` tinyint(2) NULL DEFAULT 1 COMMENT '1显示,2隐藏',
  `send_user_id` int(11) NULL DEFAULT NULL COMMENT '通知-发布文章者',
  `like_count` int(5) NULL DEFAULT 0 COMMENT '点赞量',
  `is_top` int(11) NULL DEFAULT 1 COMMENT '1未置顶,2已置顶',
  `type` tinyint(4) NULL DEFAULT 1 COMMENT '类型:1结婚墙,2寻缘墙',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `create_time` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint(20) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` bigint(20) NULL DEFAULT 0 COMMENT '软删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `pid`(`pid`, `parent_id`, `user_id`, `type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '评论管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_comment
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_hook
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook`;
CREATE TABLE `cmf_hook`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '钩子类型(1:系统钩子;2:应用钩子;3:模板钩子;4:后台模板钩子)',
  `once` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否只允许一个插件运行(0:多个;1:一个)',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '钩子名称',
  `hook` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '钩子',
  `app` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '应用名(只有应用钩子才用)',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统钩子表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_hook
-- ----------------------------
INSERT INTO `cmf_hook` VALUES (2, 1, 0, '应用开始', 'app_begin', 'cmf', '应用开始');
INSERT INTO `cmf_hook` VALUES (3, 1, 0, '模块初始化', 'module_init', 'cmf', '模块初始化');
INSERT INTO `cmf_hook` VALUES (4, 1, 0, '控制器开始', 'action_begin', 'cmf', '控制器开始');
INSERT INTO `cmf_hook` VALUES (5, 1, 0, '视图输出过滤', 'view_filter', 'cmf', '视图输出过滤');
INSERT INTO `cmf_hook` VALUES (6, 1, 0, '应用结束', 'app_end', 'cmf', '应用结束');
INSERT INTO `cmf_hook` VALUES (7, 1, 0, '日志write方法', 'log_write', 'cmf', '日志write方法');
INSERT INTO `cmf_hook` VALUES (8, 1, 0, '输出结束', 'response_end', 'cmf', '输出结束');
INSERT INTO `cmf_hook` VALUES (9, 1, 0, '后台控制器初始化', 'admin_init', 'cmf', '后台控制器初始化');
INSERT INTO `cmf_hook` VALUES (10, 1, 0, '前台控制器初始化', 'home_init', 'cmf', '前台控制器初始化');
INSERT INTO `cmf_hook` VALUES (11, 1, 1, '发送手机验证码', 'send_mobile_verification_code', 'cmf', '发送手机验证码');
INSERT INTO `cmf_hook` VALUES (12, 3, 0, '模板 body标签开始', 'body_start', '', '模板 body标签开始');
INSERT INTO `cmf_hook` VALUES (13, 3, 0, '模板 head标签结束前', 'before_head_end', '', '模板 head标签结束前');
INSERT INTO `cmf_hook` VALUES (14, 3, 0, '模板底部开始', 'footer_start', '', '模板底部开始');
INSERT INTO `cmf_hook` VALUES (15, 3, 0, '模板底部开始之前', 'before_footer', '', '模板底部开始之前');
INSERT INTO `cmf_hook` VALUES (16, 3, 0, '模板底部结束之前', 'before_footer_end', '', '模板底部结束之前');
INSERT INTO `cmf_hook` VALUES (17, 3, 0, '模板 body 标签结束之前', 'before_body_end', '', '模板 body 标签结束之前');
INSERT INTO `cmf_hook` VALUES (18, 3, 0, '模板左边栏开始', 'left_sidebar_start', '', '模板左边栏开始');
INSERT INTO `cmf_hook` VALUES (19, 3, 0, '模板左边栏结束之前', 'before_left_sidebar_end', '', '模板左边栏结束之前');
INSERT INTO `cmf_hook` VALUES (20, 3, 0, '模板右边栏开始', 'right_sidebar_start', '', '模板右边栏开始');
INSERT INTO `cmf_hook` VALUES (21, 3, 0, '模板右边栏结束之前', 'before_right_sidebar_end', '', '模板右边栏结束之前');
INSERT INTO `cmf_hook` VALUES (22, 3, 1, '评论区', 'comment', '', '评论区');
INSERT INTO `cmf_hook` VALUES (23, 3, 1, '留言区', 'guestbook', '', '留言区');
INSERT INTO `cmf_hook` VALUES (24, 2, 0, '后台首页仪表盘', 'admin_dashboard', 'admin', '后台首页仪表盘');
INSERT INTO `cmf_hook` VALUES (25, 4, 0, '后台模板 head标签结束前', 'admin_before_head_end', '', '后台模板 head标签结束前');
INSERT INTO `cmf_hook` VALUES (26, 4, 0, '后台模板 body 标签结束之前', 'admin_before_body_end', '', '后台模板 body 标签结束之前');
INSERT INTO `cmf_hook` VALUES (27, 2, 0, '后台登录页面', 'admin_login', 'admin', '后台登录页面');
INSERT INTO `cmf_hook` VALUES (28, 1, 1, '前台模板切换', 'switch_theme', 'cmf', '前台模板切换');
INSERT INTO `cmf_hook` VALUES (29, 3, 0, '主要内容之后', 'after_content', '', '主要内容之后');
INSERT INTO `cmf_hook` VALUES (32, 2, 1, '获取上传界面', 'fetch_upload_view', 'user', '获取上传界面');
INSERT INTO `cmf_hook` VALUES (33, 3, 0, '主要内容之前', 'before_content', 'cmf', '主要内容之前');
INSERT INTO `cmf_hook` VALUES (34, 1, 0, '日志写入完成', 'log_write_done', 'cmf', '日志写入完成');
INSERT INTO `cmf_hook` VALUES (35, 1, 1, '后台模板切换', 'switch_admin_theme', 'cmf', '后台模板切换');
INSERT INTO `cmf_hook` VALUES (36, 1, 1, '验证码图片', 'captcha_image', 'cmf', '验证码图片');
INSERT INTO `cmf_hook` VALUES (37, 2, 1, '后台模板设计界面', 'admin_theme_design_view', 'admin', '后台模板设计界面');
INSERT INTO `cmf_hook` VALUES (38, 2, 1, '后台设置网站信息界面', 'admin_setting_site_view', 'admin', '后台设置网站信息界面');
INSERT INTO `cmf_hook` VALUES (39, 2, 1, '后台清除缓存界面', 'admin_setting_clear_cache_view', 'admin', '后台清除缓存界面');
INSERT INTO `cmf_hook` VALUES (40, 2, 1, '后台导航管理界面', 'admin_nav_index_view', 'admin', '后台导航管理界面');
INSERT INTO `cmf_hook` VALUES (41, 2, 1, '后台友情链接管理界面', 'admin_link_index_view', 'admin', '后台友情链接管理界面');
INSERT INTO `cmf_hook` VALUES (42, 2, 1, '后台幻灯片管理界面', 'admin_slide_index_view', 'admin', '后台幻灯片管理界面');
INSERT INTO `cmf_hook` VALUES (43, 2, 1, '后台管理员列表界面', 'admin_user_index_view', 'admin', '后台管理员列表界面');
INSERT INTO `cmf_hook` VALUES (44, 2, 1, '后台角色管理界面', 'admin_rbac_index_view', 'admin', '后台角色管理界面');
INSERT INTO `cmf_hook` VALUES (49, 2, 1, '用户管理本站用户列表界面', 'user_admin_index_view', 'user', '用户管理本站用户列表界面');
INSERT INTO `cmf_hook` VALUES (50, 2, 1, '资源管理列表界面', 'user_admin_asset_index_view', 'user', '资源管理列表界面');
INSERT INTO `cmf_hook` VALUES (51, 2, 1, '用户管理第三方用户列表界面', 'user_admin_oauth_index_view', 'user', '用户管理第三方用户列表界面');
INSERT INTO `cmf_hook` VALUES (52, 2, 1, '后台首页界面', 'admin_index_index_view', 'admin', '后台首页界面');
INSERT INTO `cmf_hook` VALUES (53, 2, 1, '后台回收站界面', 'admin_recycle_bin_index_view', 'admin', '后台回收站界面');
INSERT INTO `cmf_hook` VALUES (54, 2, 1, '后台菜单管理界面', 'admin_menu_index_view', 'admin', '后台菜单管理界面');
INSERT INTO `cmf_hook` VALUES (55, 2, 1, '后台自定义登录是否开启钩子', 'admin_custom_login_open', 'admin', '后台自定义登录是否开启钩子');
INSERT INTO `cmf_hook` VALUES (64, 2, 1, '后台幻灯片页面列表界面', 'admin_slide_item_index_view', 'admin', '后台幻灯片页面列表界面');
INSERT INTO `cmf_hook` VALUES (65, 2, 1, '后台幻灯片页面添加界面', 'admin_slide_item_add_view', 'admin', '后台幻灯片页面添加界面');
INSERT INTO `cmf_hook` VALUES (66, 2, 1, '后台幻灯片页面编辑界面', 'admin_slide_item_edit_view', 'admin', '后台幻灯片页面编辑界面');
INSERT INTO `cmf_hook` VALUES (67, 2, 1, '后台管理员添加界面', 'admin_user_add_view', 'admin', '后台管理员添加界面');
INSERT INTO `cmf_hook` VALUES (68, 2, 1, '后台管理员编辑界面', 'admin_user_edit_view', 'admin', '后台管理员编辑界面');
INSERT INTO `cmf_hook` VALUES (69, 2, 1, '后台角色添加界面', 'admin_rbac_role_add_view', 'admin', '后台角色添加界面');
INSERT INTO `cmf_hook` VALUES (70, 2, 1, '后台角色编辑界面', 'admin_rbac_role_edit_view', 'admin', '后台角色编辑界面');
INSERT INTO `cmf_hook` VALUES (71, 2, 1, '后台角色授权界面', 'admin_rbac_authorize_view', 'admin', '后台角色授权界面');

-- ----------------------------
-- Table structure for cmf_hook_plugin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_hook_plugin`;
CREATE TABLE `cmf_hook_plugin`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态(0:禁用,1:启用)',
  `hook` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '钩子名',
  `plugin` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '插件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统钩子插件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_hook_plugin
-- ----------------------------
INSERT INTO `cmf_hook_plugin` VALUES (2, 10000, 1, 'app_begin', 'Configs');
INSERT INTO `cmf_hook_plugin` VALUES (3, 10000, 1, 'fetch_upload_view', 'Oss');
INSERT INTO `cmf_hook_plugin` VALUES (4, 10000, 1, 'admin_init', 'AdminJournal');
INSERT INTO `cmf_hook_plugin` VALUES (5, 10000, 1, 'admin_login', 'FengiyLogin');
INSERT INTO `cmf_hook_plugin` VALUES (6, 10000, 1, 'send_mobile_verification_code', 'HuYi');

-- ----------------------------
-- Table structure for cmf_link
-- ----------------------------
DROP TABLE IF EXISTS `cmf_link`;
CREATE TABLE `cmf_link`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:显示;0:不显示',
  `rating` int(11) NOT NULL DEFAULT 0 COMMENT '友情链接评级',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接描述',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接地址',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '友情链接名称',
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接图标',
  `target` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `rel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '链接与网站的关系',
  `cate_id` int(11) NULL DEFAULT 0 COMMENT '链接分类',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '友情链接表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_link
-- ----------------------------
INSERT INTO `cmf_link` VALUES (1, 0, 1, 200, '小程序首页', '/pages/index/index', '首页', 'admin/20230218/64aab5da8de3c18e39354a90b4efa5be.png', '_blank', '', 0);
INSERT INTO `cmf_link` VALUES (2, 0, 0, 100, '', '/pages/user/index', '个人中心', '', '', '', 0);

-- ----------------------------
-- Table structure for cmf_link_category
-- ----------------------------
DROP TABLE IF EXISTS `cmf_link_category`;
CREATE TABLE `cmf_link_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分类备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '链接分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_link_category
-- ----------------------------
INSERT INTO `cmf_link_category` VALUES (1, '小程序链接', '');
INSERT INTO `cmf_link_category` VALUES (2, '其他', '');

-- ----------------------------
-- Table structure for cmf_member
-- ----------------------------
DROP TABLE IF EXISTS `cmf_member`;
CREATE TABLE `cmf_member`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `openid` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'openid',
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `pass` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `balance` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '余额',
  `point` decimal(11, 2) NULL DEFAULT 0.00 COMMENT '积分',
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录ip地址',
  `login_time` bigint(20) NULL DEFAULT NULL COMMENT '最后登录时间',
  `login_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录城市',
  `create_time` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint(20) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` bigint(20) NULL DEFAULT 0 COMMENT '删除时间',
  `invite_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邀请码',
  `pid` int(11) NULL DEFAULT NULL COMMENT '上级',
  `mini_openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '小程序openid',
  `official_openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '公众openid',
  `unionid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'unionid',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_member
-- ----------------------------
INSERT INTO `cmf_member` VALUES (1, '测试平台用户-1', 'xcxkf00000000001/default/20250602/92957f701d37f4e9b9f09e77d292bc2c.jpg', '1', '1888888888', '1', 98.00, 160.00, '', 1740965414, '', 1740965414, 1740965414, 0, '0001', 0, NULL, NULL, NULL);
INSERT INTO `cmf_member` VALUES (2, '小小怪-1', 'xcxkf00000000001/default/20250602/92957f701d37f4e9b9f09e77d292bc2c.jpg', '2', '1222222222', NULL, 0.00, 0.00, NULL, 1740965414, NULL, 1740965414, NULL, 0, '1222222222', 1, NULL, NULL, NULL);
INSERT INTO `cmf_member` VALUES (3, '小小怪-2', 'xcxkf00000000001/default/20250602/92957f701d37f4e9b9f09e77d292bc2c.jpg', '3', '1333333333', NULL, 0.00, 0.00, NULL, 1740965414, NULL, 1740965414, NULL, 0, '1333333333', 2, NULL, NULL, NULL);
INSERT INTO `cmf_member` VALUES (4, '小小怪-3', 'xcxkf00000000001/default/20250602/92957f701d37f4e9b9f09e77d292bc2c.jpg', '4', '1444444444', NULL, 0.00, 0.00, NULL, 1740965414, NULL, 1740965414, NULL, 0, '1444444444', 3, NULL, NULL, NULL);
INSERT INTO `cmf_member` VALUES (5, '小小怪-4', 'xcxkf00000000001/default/20250602/92957f701d37f4e9b9f09e77d292bc2c.jpg', '5', '1555555500', NULL, 0.00, 0.00, NULL, 1740965414, NULL, 1740965414, NULL, 0, '1555555500', 4, NULL, NULL, NULL);
INSERT INTO `cmf_member` VALUES (6, '小小怪-5', 'xcxkf00000000001/default/20250602/92957f701d37f4e9b9f09e77d292bc2c.jpg', '6', '1666666666', NULL, 0.00, 0.00, NULL, 1740965414, NULL, 1740965414, NULL, 0, '1666666666', 5, NULL, NULL, NULL);
INSERT INTO `cmf_member` VALUES (7, '小小怪-6', 'xcxkf00000000001/default/20250602/92957f701d37f4e9b9f09e77d292bc2c.jpg', '7', '1777777777', NULL, 0.00, 0.00, NULL, 1740965414, NULL, 1740965414, NULL, 0, '1777777777', 6, NULL, NULL, NULL);
INSERT INTO `cmf_member` VALUES (8, '测试平台用户-2', 'xcxkf00000000001/default/20250602/92957f701d37f4e9b9f09e77d292bc2c.jpg', '8', '1588888888', NULL, 0.00, 0.00, NULL, 1740965414, NULL, 1740965414, NULL, 0, '1588888888', 0, NULL, NULL, NULL);
INSERT INTO `cmf_member` VALUES (9, '大大怪-1', 'xcxkf00000000001/default/20250602/92957f701d37f4e9b9f09e77d292bc2c.jpg', '9', '1522222222', NULL, 0.00, 0.00, NULL, 1740965414, NULL, 1740965414, NULL, 0, '1522222222', 8, NULL, NULL, NULL);
INSERT INTO `cmf_member` VALUES (10, '大大怪-2', 'xcxkf00000000001/default/20250602/92957f701d37f4e9b9f09e77d292bc2c.jpg', '10', '1533333333', NULL, 0.00, 0.00, NULL, 1740965414, NULL, 1740965414, NULL, 0, '1533333333', 9, NULL, NULL, NULL);
INSERT INTO `cmf_member` VALUES (11, '大大怪-3', 'xcxkf00000000001/default/20250602/92957f701d37f4e9b9f09e77d292bc2c.jpg', '11', '1544444444', NULL, 0.00, 0.00, NULL, 1740965414, NULL, 1740965414, NULL, 0, '1544444444', 10, NULL, NULL, NULL);
INSERT INTO `cmf_member` VALUES (12, '大大怪-4', 'xcxkf00000000001/default/20250602/92957f701d37f4e9b9f09e77d292bc2c.jpg', '12', '1555555550', NULL, 0.00, 0.00, NULL, 1740965414, NULL, 1740965414, NULL, 0, '1555555550', 11, NULL, NULL, NULL);
INSERT INTO `cmf_member` VALUES (13, '大大怪-5', 'xcxkf00000000001/default/20250602/92957f701d37f4e9b9f09e77d292bc2c.jpg', '13', '1566666666', NULL, 0.00, 0.00, NULL, 1740965414, NULL, 1740965414, NULL, 0, '1566666666', 12, NULL, NULL, NULL);
INSERT INTO `cmf_member` VALUES (14, '小小怪-1-1', 'xcxkf00000000001/default/20250602/92957f701d37f4e9b9f09e77d292bc2c.jpg', '14', '1233333333', NULL, 0.00, 0.00, NULL, 1740965414, NULL, 1740965414, NULL, 0, '1233333333', 1, NULL, NULL, NULL);
INSERT INTO `cmf_member` VALUES (15, '小小怪-1-2', 'xcxkf00000000001/default/20250602/92957f701d37f4e9b9f09e77d292bc2c.jpg', '15', '1244444444', NULL, 0.00, 0.00, NULL, 1740965414, NULL, 1740965414, NULL, 0, '1244444444', 1, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for cmf_member_gzh
-- ----------------------------
DROP TABLE IF EXISTS `cmf_member_gzh`;
CREATE TABLE `cmf_member_gzh`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'openid',
  `unionid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'unionId',
  `ext` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '扩展信息',
  `create_time` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '公众号用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_member_gzh
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_option
-- ----------------------------
DROP TABLE IF EXISTS `cmf_option`;
CREATE TABLE `cmf_option`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `autoload` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否自动加载;1:自动加载;0:不自动加载',
  `option_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '配置名',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '配置值',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `option_name`(`option_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '全站配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_option
-- ----------------------------
INSERT INTO `cmf_option` VALUES (1, 1, 'site_info', '{\"site_name\":\"微巨宝定制后台模板\",\"site_seo_title\":\"微巨宝定制后台模板\",\"site_seo_keywords\":\"\",\"site_seo_description\":\"\"}');
INSERT INTO `cmf_option` VALUES (2, 1, 'set_config', '{\"app_name\":\"商城模板\",\"app_logo\":\"xcxkf00000000001\\/default\\/20250723\\/3647c4d7fe333252ce16e4b5b04dcd82.jpg\",\"user_agreement\":\"&lt;p&gt;用户协议&lt;\\/p&gt;\",\"privacy_agreement\":\"&lt;p&gt;&lt;span style=&quot;color: rgba(0, 0, 0, 0.85); font-family: &amp;quot;Helvetica Neue&amp;quot;, Helvetica, &amp;quot;PingFang SC&amp;quot;, Tahoma, Arial, sans-serif; font-size: 14px; font-weight: 700; text-align: right; background-color: rgb(255, 255, 255);&quot;&gt;隐私协议&lt;\\/span&gt;&lt;\\/p&gt;\",\"group_id\":\"200\",\"app_logo_1\":\"https:\\/\\/oss.ausite.cn\\/dz000\\/default\\/20230217\\/2680011108c19b50228c124d86749b7d.jpg?watermark\",\"_plugin\":\"configs\",\"_controller\":\"admin_index\",\"_action\":\"index\",\"test\":\"111\",\"domain_name\":\"http:\\/\\/shop_template.com\",\"s\":[\"sdfwe\",\"sfwaweew\"],\"f\":[\"fawefewfawefwe\"],\"debug_mode\":\"1\",\"app_expiration_time\":\"2033-04-29 00:00\",\"listorder\":{\"100\":\"1\",\"101\":\"2\",\"108\":\"100\"},\"label\":{\"139\":\"程序信息\"},\"name\":{\"139\":\"program_information\"},\"about\":{\"139\":\"程序基础信息\"},\"project_name\":\"商城模板\",\"copyright\":\"技术支持：微巨宝科技有限公司\",\"local_domain_name\":\"http:\\/\\/shop_template.ikun:9090\",\"number_of_days_for_log_files\":\"\",\"log_file_days\":\"10\",\"list_order\":{\"139\":\"100\",\"136\":\"200\",\"148\":\"300\",\"149\":\"400\",\"150\":\"500\"},\"video\":\"dzkf00000000001\\/default\\/20240624\\/c2dcc94117717aaad3d7d9664c2affcb.mp4\",\"file2\":\"dzkf00000000001\\/default\\/20240624\\/2cec82e71890d9b59a689e8a869c544e.docx\",\"video2\":\"dzkf00000000001\\/default\\/20240624\\/ab75196b4f0f699eb563758d59e662ca.mp4\",\"file333\":\"dzkf00000000001\\/default\\/20240624\\/9fff193bb6acaead8c8523bea7a76ad6.pdf\",\"program_code\":\"xcxkf00000000001\\/default\\/20250723\\/1066cb6c7b7eef58a1cf0b7f1e9b718d.jpg\",\"program_information\":\"商城模板-*****-***-****\",\"is_show\":\"1\",\"show\":{\"app_logo\":\"on\",\"app_name\":\"on\"},\"order_automatic_cancellation_time\":\"15\",\"order_auto_completion_time\":\"10\",\"tencent_map_key\":\"GGVBZ-DUV6J-N33FQ-FX3AE-HTJ56-N6FDP\",\"cescesges\":[\"2\",\"3\",\"4\"],\"testing_and_testing\":\"额外各位各位e4545\",\"measure\":\"&lt;p&gt;冯绍峰无法&lt;\\/p&gt;\",\"is_edit\":\"1\",\"is_label\":\"1\",\"isShow\":{\"app_logo\":\"on\",\"app_name\":\"on\"},\"isEdit\":{\"app_logo\":\"on\",\"app_name\":\"on\"},\"isLabel\":{\"test1\":\"on\"},\"test1\":\"111222\",\"trial_version_qr_image\":\"xcxkf00000000001\\/default\\/20250723\\/9cc7f604e8438da9c47dc5a55a637abc.jpeg\",\"showList\":{\"139\":\"on\",\"136\":\"on\",\"148\":\"on\",\"149\":\"on\",\"150\":\"on\"},\"qr_code_official_account_image\":\"xcxkf00000000001\\/default\\/20250626\\/c824083a7d170de7ecab2cfd8e3386a2.jpg\",\"h5_address_code\":\"xcxkf00000000001\\/default\\/20250626\\/abc0b2bf8d69a3e90116ad07dc78f4ad.jpg\"}');
INSERT INTO `cmf_option` VALUES (3, 1, 'storage', '{\"storages\":{\"Oss\":{\"name\":\"阿里云OSS存储\",\"driver\":\"\\\\plugins\\\\oss\\\\lib\\\\Oss\"}},\"type\":\"Oss\"}');
INSERT INTO `cmf_option` VALUES (4, 1, 'weipay', '{\"wx_mp_app_id\":\"\",\"wx_mini_app_id\":\"\",\"wx_mp_app_secret\":\"\",\"wx_mini_app_secret\":\"\",\"wx_token\":\"\",\"wx_encodingaeskey\":\"\",\"wx_app_id\":\"\",\"wx_mch_id\":\"\",\"wx_v2_mch_secret_key\":\"Qwertyuiopasdfghjklzxcvbnm123456\",\"wx_v3_mch_secret_key\":\"Qwertyuiopasdfghjklzxcvbnm123456\",\"wx_mch_secret_cert\":\"\",\"wx_mch_public_cert_path\":\"\",\"wx_notify_url\":\"\\/api\\/wxapp\\/notify\\/wxPayNotify\",\"ali_app_id\":\"\",\"ali_app_secret_cert\":\"\",\"ali_app_public_cert_path\":\"\",\"ali_alipay_public_cert_path\":\"\",\"ali_alipay_root_cert_path\":\"\",\"ali_notify_url\":\"\",\"ali_return_url\":\"\",\"wx_system_type\":\"wx_mini\",\"wx_certificates\":\"****\",\"wx_v3_key\":\"Qwertyuiopasdfghjklzxcvbnm123456\",\"transfer_notify_url\":\"\\/api\\/wxapp\\/WxBase\\/notify\"}');
INSERT INTO `cmf_option` VALUES (5, 1, 'upload_setting', '{\"max_files\":\"20\",\"chunk_size\":\"512\",\"file_types\":{\"image\":{\"upload_max_filesize\":\"15360\",\"extensions\":\"jpg,jpeg,png,gif,bmp4,mp3\"},\"video\":{\"upload_max_filesize\":\"15360\",\"extensions\":\"mp4,avi,wmv,rm,rmvb,mkv\"},\"audio\":{\"upload_max_filesize\":\"15360\",\"extensions\":\"mp3,wma,wav\"},\"file\":{\"upload_max_filesize\":\"15360\",\"extensions\":\"txt,pdf,doc,docx,xls,xlsx,ppt,pptx,zip,rar,pem\"}}}');

-- ----------------------------
-- Table structure for cmf_plugin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_plugin`;
CREATE TABLE `cmf_plugin`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `type` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '插件类型;1:网站;8:微信',
  `has_admin` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否有后台管理,0:没有;1:有',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态;1:开启;0:禁用',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '插件安装时间',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '插件标识名,英文字母(惟一)',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件名称',
  `demo_url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `hooks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '实现的钩子;以“,”分隔',
  `author` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '插件作者',
  `author_url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `version` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '插件版本号',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '插件描述',
  `config` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '插件配置',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '插件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_plugin
-- ----------------------------
INSERT INTO `cmf_plugin` VALUES (1, 1, 1, 1, 1660558216, 'Weipay', 'APP信息&支付信息', '', '', 'wjb', '', '1.0.0', '微信小程序&公众号&支付宝支付信息', '[]');
INSERT INTO `cmf_plugin` VALUES (2, 1, 1, 1, 1660558220, 'Swagger', 'Swagger', 'http://demo.thinkcmf.com', '', 'ThinkCMF', 'http://www.thinkcmf.com', '1.0.0', 'Swagger', '[]');
INSERT INTO `cmf_plugin` VALUES (4, 1, 1, 1, 1660723183, 'Configs', '系统参数设置', '', '', 'lampzww', '', '1.0', 'config读取配置参数扩展', '[]');
INSERT INTO `cmf_plugin` VALUES (6, 1, 0, 1, 1660723194, 'Oss', 'OSS上传', '', '', 'zsl', '', '1.0.0', 'OSS上传', '{\"accessKey\":\"LTAI5t9uSAQt9GiYcZ7X34Xe\",\"secretKey\":\"4zgCseVv6ufMsAu2oP1BoK5SFoGOi3\",\"protocol\":\"https\",\"domain\":\"oss.ausite.cn\",\"bucket\":\"twjbdzoss\",\"style_separator\":\"?\",\"dir\":\"xcxkf00000000001\"}');
INSERT INTO `cmf_plugin` VALUES (8, 1, 1, 1, 1660723805, 'Form', '表单生成', 'http://demo.thinkcmf.com', '', 'idcpj', 'http://www.thinkcmf.com', '1.1', '表单生成', '{\"custom_config\":\"0\",\"text\":\"hello,ThinkCMF!\",\"password\":\"\",\"number\":\"1.0\",\"select\":\"1\",\"checkbox\":1,\"radio\":\"1\",\"radio2\":\"1\",\"textarea\":\"\\u8fd9\\u91cc\\u662f\\u4f60\\u8981\\u586b\\u5199\\u7684\\u5185\\u5bb9\",\"date\":\"2017-05-20\",\"datetime\":\"2017-05-20\",\"color\":\"#103633\",\"image\":\"\",\"file\":\"\",\"location\":\"\"}');
INSERT INTO `cmf_plugin` VALUES (9, 1, 1, 1, 1662171892, 'AdminJournal', '操作日志', 'https://www.wzxaini9.cn/', '', 'Powerless', 'https://www.wzxaini9.cn/', '1.2.0', '后台操作日志', '[]');
INSERT INTO `cmf_plugin` VALUES (10, 1, 0, 1, 1670382358, 'FengiyLogin', '微巨宝自定义登录页', '', '', 'Fengiy', '', '1.0', '支持大背景/轮播图/Logo/名称自定义', '{\"b_bg\":\"\",\"b_bg_illus\":\"\"}');
INSERT INTO `cmf_plugin` VALUES (11, 1, 1, 1, 1718330446, 'LoginTime', '登陆状态时长控制', 'http://www.songzhenjiang.cn', '', 'Tangchao', 'http://www.songzhenjiang.cn', '1.0', '登陆状态时长控制', '[]');
INSERT INTO `cmf_plugin` VALUES (12, 1, 0, 1, 1745481075, 'HuYi', '互亿短信', '', '', 'wjb', '', '1.0', '互亿短信', '{\"apiid\":\"C69066392\",\"apikey\":\"2f4f438100ef2bc001a69be1c2721760\",\"voice_apiid\":\"VM33201086\",\"voice_apikey\":\"ea3895f9022e4576e91ea9db6f1aa656\"}');

-- ----------------------------
-- Table structure for cmf_recycle_bin
-- ----------------------------
DROP TABLE IF EXISTS `cmf_recycle_bin`;
CREATE TABLE `cmf_recycle_bin`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NULL DEFAULT 0 COMMENT '删除内容 id',
  `create_time` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '创建时间',
  `table_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '删除内容所在表名',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '删除内容名称',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = ' 回收站' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_recycle_bin
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_region
-- ----------------------------
DROP TABLE IF EXISTS `cmf_region`;
CREATE TABLE `cmf_region`  (
  `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` bigint(12) NULL DEFAULT NULL COMMENT '行政区划代码',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `parent_id` bigint(11) NULL DEFAULT NULL COMMENT '上级id',
  `level_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '层级',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1000000003 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '省市区' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_region
-- ----------------------------
INSERT INTO `cmf_region` VALUES (10000000, 100000, '全国', 0, '0');
INSERT INTO `cmf_region` VALUES (10000001, 110000, '北京市', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000002, 120000, '天津市', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000003, 130000, '河北省', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000004, 140000, '山西省', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000005, 150000, '内蒙古自治区', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000006, 210000, '辽宁省', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000007, 220000, '吉林省', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000008, 230000, '黑龙江省', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000009, 310000, '上海市', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000010, 320000, '江苏省', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000011, 330000, '浙江省', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000012, 340000, '安徽省', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000013, 350000, '福建省', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000014, 360000, '江西省', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000015, 370000, '山东省', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000016, 410000, '河南省', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000017, 420000, '湖北省', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000018, 430000, '湖南省', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000019, 440000, '广东省', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000020, 450000, '广西壮族自治区', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000021, 460000, '海南省', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000022, 500000, '重庆市', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000023, 510000, '四川省', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000024, 520000, '贵州省', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000025, 530000, '云南省', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000026, 540000, '西藏自治区', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000027, 610000, '陕西省', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000028, 620000, '甘肃省', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000029, 630000, '青海省', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000030, 640000, '宁夏回族自治区', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000031, 650000, '新疆维吾尔自治区', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000032, 710000, '台湾省', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000033, 810000, '香港特别行政区', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000034, 820000, '澳门特别行政区', 10000000, '1');
INSERT INTO `cmf_region` VALUES (10000035, 110100, '北京市', 10000001, '2');
INSERT INTO `cmf_region` VALUES (10000036, 120100, '天津市', 10000002, '2');
INSERT INTO `cmf_region` VALUES (10000037, 130100, '石家庄市', 10000003, '2');
INSERT INTO `cmf_region` VALUES (10000038, 130200, '唐山市', 10000003, '2');
INSERT INTO `cmf_region` VALUES (10000039, 130300, '秦皇岛市', 10000003, '2');
INSERT INTO `cmf_region` VALUES (10000040, 130400, '邯郸市', 10000003, '2');
INSERT INTO `cmf_region` VALUES (10000041, 130500, '邢台市', 10000003, '2');
INSERT INTO `cmf_region` VALUES (10000042, 130600, '保定市', 10000003, '2');
INSERT INTO `cmf_region` VALUES (10000043, 130700, '张家口市', 10000003, '2');
INSERT INTO `cmf_region` VALUES (10000044, 130800, '承德市', 10000003, '2');
INSERT INTO `cmf_region` VALUES (10000045, 130900, '沧州市', 10000003, '2');
INSERT INTO `cmf_region` VALUES (10000046, 131000, '廊坊市', 10000003, '2');
INSERT INTO `cmf_region` VALUES (10000047, 131100, '衡水市', 10000003, '2');
INSERT INTO `cmf_region` VALUES (10000048, 140100, '太原市', 10000004, '2');
INSERT INTO `cmf_region` VALUES (10000049, 140200, '大同市', 10000004, '2');
INSERT INTO `cmf_region` VALUES (10000050, 140300, '阳泉市', 10000004, '2');
INSERT INTO `cmf_region` VALUES (10000051, 140400, '长治市', 10000004, '2');
INSERT INTO `cmf_region` VALUES (10000052, 140500, '晋城市', 10000004, '2');
INSERT INTO `cmf_region` VALUES (10000053, 140600, '朔州市', 10000004, '2');
INSERT INTO `cmf_region` VALUES (10000054, 140700, '晋中市', 10000004, '2');
INSERT INTO `cmf_region` VALUES (10000055, 140800, '运城市', 10000004, '2');
INSERT INTO `cmf_region` VALUES (10000056, 140900, '忻州市', 10000004, '2');
INSERT INTO `cmf_region` VALUES (10000057, 141000, '临汾市', 10000004, '2');
INSERT INTO `cmf_region` VALUES (10000058, 141100, '吕梁市', 10000004, '2');
INSERT INTO `cmf_region` VALUES (10000059, 150100, '呼和浩特市', 10000005, '2');
INSERT INTO `cmf_region` VALUES (10000060, 150200, '包头市', 10000005, '2');
INSERT INTO `cmf_region` VALUES (10000061, 150300, '乌海市', 10000005, '2');
INSERT INTO `cmf_region` VALUES (10000062, 150400, '赤峰市', 10000005, '2');
INSERT INTO `cmf_region` VALUES (10000063, 150500, '通辽市', 10000005, '2');
INSERT INTO `cmf_region` VALUES (10000064, 150600, '鄂尔多斯市', 10000005, '2');
INSERT INTO `cmf_region` VALUES (10000065, 150700, '呼伦贝尔市', 10000005, '2');
INSERT INTO `cmf_region` VALUES (10000066, 150800, '巴彦淖尔市', 10000005, '2');
INSERT INTO `cmf_region` VALUES (10000067, 150900, '乌兰察布市', 10000005, '2');
INSERT INTO `cmf_region` VALUES (10000068, 152200, '兴安盟', 10000005, '2');
INSERT INTO `cmf_region` VALUES (10000069, 152500, '锡林郭勒盟', 10000005, '2');
INSERT INTO `cmf_region` VALUES (10000070, 152900, '阿拉善盟', 10000005, '2');
INSERT INTO `cmf_region` VALUES (10000071, 210100, '沈阳市', 10000006, '2');
INSERT INTO `cmf_region` VALUES (10000072, 210200, '大连市', 10000006, '2');
INSERT INTO `cmf_region` VALUES (10000073, 210300, '鞍山市', 10000006, '2');
INSERT INTO `cmf_region` VALUES (10000074, 210400, '抚顺市', 10000006, '2');
INSERT INTO `cmf_region` VALUES (10000075, 210500, '本溪市', 10000006, '2');
INSERT INTO `cmf_region` VALUES (10000076, 210600, '丹东市', 10000006, '2');
INSERT INTO `cmf_region` VALUES (10000077, 210700, '锦州市', 10000006, '2');
INSERT INTO `cmf_region` VALUES (10000078, 210800, '营口市', 10000006, '2');
INSERT INTO `cmf_region` VALUES (10000079, 210900, '阜新市', 10000006, '2');
INSERT INTO `cmf_region` VALUES (10000080, 211000, '辽阳市', 10000006, '2');
INSERT INTO `cmf_region` VALUES (10000081, 211100, '盘锦市', 10000006, '2');
INSERT INTO `cmf_region` VALUES (10000082, 211200, '铁岭市', 10000006, '2');
INSERT INTO `cmf_region` VALUES (10000083, 211300, '朝阳市', 10000006, '2');
INSERT INTO `cmf_region` VALUES (10000084, 211400, '葫芦岛市', 10000006, '2');
INSERT INTO `cmf_region` VALUES (10000085, 220100, '长春市', 10000007, '2');
INSERT INTO `cmf_region` VALUES (10000086, 220200, '吉林市', 10000007, '2');
INSERT INTO `cmf_region` VALUES (10000087, 220300, '四平市', 10000007, '2');
INSERT INTO `cmf_region` VALUES (10000088, 220400, '辽源市', 10000007, '2');
INSERT INTO `cmf_region` VALUES (10000089, 220500, '通化市', 10000007, '2');
INSERT INTO `cmf_region` VALUES (10000090, 220600, '白山市', 10000007, '2');
INSERT INTO `cmf_region` VALUES (10000091, 220700, '松原市', 10000007, '2');
INSERT INTO `cmf_region` VALUES (10000092, 220800, '白城市', 10000007, '2');
INSERT INTO `cmf_region` VALUES (10000093, 222400, '延边朝鲜族自治州', 10000007, '2');
INSERT INTO `cmf_region` VALUES (10000094, 230100, '哈尔滨市', 10000008, '2');
INSERT INTO `cmf_region` VALUES (10000095, 230200, '齐齐哈尔市', 10000008, '2');
INSERT INTO `cmf_region` VALUES (10000096, 230300, '鸡西市', 10000008, '2');
INSERT INTO `cmf_region` VALUES (10000097, 230400, '鹤岗市', 10000008, '2');
INSERT INTO `cmf_region` VALUES (10000098, 230500, '双鸭山市', 10000008, '2');
INSERT INTO `cmf_region` VALUES (10000099, 230600, '大庆市', 10000008, '2');
INSERT INTO `cmf_region` VALUES (10000100, 230700, '伊春市', 10000008, '2');
INSERT INTO `cmf_region` VALUES (10000101, 230800, '佳木斯市', 10000008, '2');
INSERT INTO `cmf_region` VALUES (10000102, 230900, '七台河市', 10000008, '2');
INSERT INTO `cmf_region` VALUES (10000103, 231000, '牡丹江市', 10000008, '2');
INSERT INTO `cmf_region` VALUES (10000104, 231100, '黑河市', 10000008, '2');
INSERT INTO `cmf_region` VALUES (10000105, 231200, '绥化市', 10000008, '2');
INSERT INTO `cmf_region` VALUES (10000106, 232700, '大兴安岭地区', 10000008, '2');
INSERT INTO `cmf_region` VALUES (10000107, 310100, '上海市', 10000009, '2');
INSERT INTO `cmf_region` VALUES (10000108, 320100, '南京市', 10000010, '2');
INSERT INTO `cmf_region` VALUES (10000109, 320200, '无锡市', 10000010, '2');
INSERT INTO `cmf_region` VALUES (10000110, 320300, '徐州市', 10000010, '2');
INSERT INTO `cmf_region` VALUES (10000111, 320400, '常州市', 10000010, '2');
INSERT INTO `cmf_region` VALUES (10000112, 320500, '苏州市', 10000010, '2');
INSERT INTO `cmf_region` VALUES (10000113, 320600, '南通市', 10000010, '2');
INSERT INTO `cmf_region` VALUES (10000114, 320700, '连云港市', 10000010, '2');
INSERT INTO `cmf_region` VALUES (10000115, 320800, '淮安市', 10000010, '2');
INSERT INTO `cmf_region` VALUES (10000116, 320900, '盐城市', 10000010, '2');
INSERT INTO `cmf_region` VALUES (10000117, 321000, '扬州市', 10000010, '2');
INSERT INTO `cmf_region` VALUES (10000118, 321100, '镇江市', 10000010, '2');
INSERT INTO `cmf_region` VALUES (10000119, 321200, '泰州市', 10000010, '2');
INSERT INTO `cmf_region` VALUES (10000120, 321300, '宿迁市', 10000010, '2');
INSERT INTO `cmf_region` VALUES (10000121, 330100, '杭州市', 10000011, '2');
INSERT INTO `cmf_region` VALUES (10000122, 330200, '宁波市', 10000011, '2');
INSERT INTO `cmf_region` VALUES (10000123, 330300, '温州市', 10000011, '2');
INSERT INTO `cmf_region` VALUES (10000124, 330400, '嘉兴市', 10000011, '2');
INSERT INTO `cmf_region` VALUES (10000125, 330500, '湖州市', 10000011, '2');
INSERT INTO `cmf_region` VALUES (10000126, 330600, '绍兴市', 10000011, '2');
INSERT INTO `cmf_region` VALUES (10000127, 330700, '金华市', 10000011, '2');
INSERT INTO `cmf_region` VALUES (10000128, 330800, '衢州市', 10000011, '2');
INSERT INTO `cmf_region` VALUES (10000129, 330900, '舟山市', 10000011, '2');
INSERT INTO `cmf_region` VALUES (10000130, 331000, '台州市', 10000011, '2');
INSERT INTO `cmf_region` VALUES (10000131, 331100, '丽水市', 10000011, '2');
INSERT INTO `cmf_region` VALUES (10000132, 340100, '合肥市', 10000012, '2');
INSERT INTO `cmf_region` VALUES (10000133, 340200, '芜湖市', 10000012, '2');
INSERT INTO `cmf_region` VALUES (10000134, 340300, '蚌埠市', 10000012, '2');
INSERT INTO `cmf_region` VALUES (10000135, 340400, '淮南市', 10000012, '2');
INSERT INTO `cmf_region` VALUES (10000136, 340500, '马鞍山市', 10000012, '2');
INSERT INTO `cmf_region` VALUES (10000137, 340600, '淮北市', 10000012, '2');
INSERT INTO `cmf_region` VALUES (10000138, 340700, '铜陵市', 10000012, '2');
INSERT INTO `cmf_region` VALUES (10000139, 340800, '安庆市', 10000012, '2');
INSERT INTO `cmf_region` VALUES (10000140, 341000, '黄山市', 10000012, '2');
INSERT INTO `cmf_region` VALUES (10000141, 341100, '滁州市', 10000012, '2');
INSERT INTO `cmf_region` VALUES (10000142, 341200, '阜阳市', 10000012, '2');
INSERT INTO `cmf_region` VALUES (10000143, 341300, '宿州市', 10000012, '2');
INSERT INTO `cmf_region` VALUES (10000144, 341500, '六安市', 10000012, '2');
INSERT INTO `cmf_region` VALUES (10000145, 341600, '亳州市', 10000012, '2');
INSERT INTO `cmf_region` VALUES (10000146, 341700, '池州市', 10000012, '2');
INSERT INTO `cmf_region` VALUES (10000147, 341800, '宣城市', 10000012, '2');
INSERT INTO `cmf_region` VALUES (10000148, 350100, '福州市', 10000013, '2');
INSERT INTO `cmf_region` VALUES (10000149, 350200, '厦门市', 10000013, '2');
INSERT INTO `cmf_region` VALUES (10000150, 350300, '莆田市', 10000013, '2');
INSERT INTO `cmf_region` VALUES (10000151, 350400, '三明市', 10000013, '2');
INSERT INTO `cmf_region` VALUES (10000152, 350500, '泉州市', 10000013, '2');
INSERT INTO `cmf_region` VALUES (10000153, 350600, '漳州市', 10000013, '2');
INSERT INTO `cmf_region` VALUES (10000154, 350700, '南平市', 10000013, '2');
INSERT INTO `cmf_region` VALUES (10000155, 350800, '龙岩市', 10000013, '2');
INSERT INTO `cmf_region` VALUES (10000156, 350900, '宁德市', 10000013, '2');
INSERT INTO `cmf_region` VALUES (10000157, 360100, '南昌市', 10000014, '2');
INSERT INTO `cmf_region` VALUES (10000158, 360200, '景德镇市', 10000014, '2');
INSERT INTO `cmf_region` VALUES (10000159, 360300, '萍乡市', 10000014, '2');
INSERT INTO `cmf_region` VALUES (10000160, 360400, '九江市', 10000014, '2');
INSERT INTO `cmf_region` VALUES (10000161, 360500, '新余市', 10000014, '2');
INSERT INTO `cmf_region` VALUES (10000162, 360600, '鹰潭市', 10000014, '2');
INSERT INTO `cmf_region` VALUES (10000163, 360700, '赣州市', 10000014, '2');
INSERT INTO `cmf_region` VALUES (10000164, 360800, '吉安市', 10000014, '2');
INSERT INTO `cmf_region` VALUES (10000165, 360900, '宜春市', 10000014, '2');
INSERT INTO `cmf_region` VALUES (10000166, 361000, '抚州市', 10000014, '2');
INSERT INTO `cmf_region` VALUES (10000167, 361100, '上饶市', 10000014, '2');
INSERT INTO `cmf_region` VALUES (10000168, 370100, '济南市', 10000015, '2');
INSERT INTO `cmf_region` VALUES (10000169, 370200, '青岛市', 10000015, '2');
INSERT INTO `cmf_region` VALUES (10000170, 370300, '淄博市', 10000015, '2');
INSERT INTO `cmf_region` VALUES (10000171, 370400, '枣庄市', 10000015, '2');
INSERT INTO `cmf_region` VALUES (10000172, 370500, '东营市', 10000015, '2');
INSERT INTO `cmf_region` VALUES (10000173, 370600, '烟台市', 10000015, '2');
INSERT INTO `cmf_region` VALUES (10000174, 370700, '潍坊市', 10000015, '2');
INSERT INTO `cmf_region` VALUES (10000175, 370800, '济宁市', 10000015, '2');
INSERT INTO `cmf_region` VALUES (10000176, 370900, '泰安市', 10000015, '2');
INSERT INTO `cmf_region` VALUES (10000177, 371000, '威海市', 10000015, '2');
INSERT INTO `cmf_region` VALUES (10000178, 371100, '日照市', 10000015, '2');
INSERT INTO `cmf_region` VALUES (10000179, 371300, '临沂市', 10000015, '2');
INSERT INTO `cmf_region` VALUES (10000180, 371400, '德州市', 10000015, '2');
INSERT INTO `cmf_region` VALUES (10000181, 371500, '聊城市', 10000015, '2');
INSERT INTO `cmf_region` VALUES (10000182, 371600, '滨州市', 10000015, '2');
INSERT INTO `cmf_region` VALUES (10000183, 371700, '菏泽市', 10000015, '2');
INSERT INTO `cmf_region` VALUES (10000184, 410100, '郑州市', 10000016, '2');
INSERT INTO `cmf_region` VALUES (10000185, 410200, '开封市', 10000016, '2');
INSERT INTO `cmf_region` VALUES (10000186, 410300, '洛阳市', 10000016, '2');
INSERT INTO `cmf_region` VALUES (10000187, 410400, '平顶山市', 10000016, '2');
INSERT INTO `cmf_region` VALUES (10000188, 410500, '安阳市', 10000016, '2');
INSERT INTO `cmf_region` VALUES (10000189, 410600, '鹤壁市', 10000016, '2');
INSERT INTO `cmf_region` VALUES (10000190, 410700, '新乡市', 10000016, '2');
INSERT INTO `cmf_region` VALUES (10000191, 410800, '焦作市', 10000016, '2');
INSERT INTO `cmf_region` VALUES (10000192, 410900, '濮阳市', 10000016, '2');
INSERT INTO `cmf_region` VALUES (10000193, 411000, '许昌市', 10000016, '2');
INSERT INTO `cmf_region` VALUES (10000194, 411100, '漯河市', 10000016, '2');
INSERT INTO `cmf_region` VALUES (10000195, 411200, '三门峡市', 10000016, '2');
INSERT INTO `cmf_region` VALUES (10000196, 411300, '南阳市', 10000016, '2');
INSERT INTO `cmf_region` VALUES (10000197, 411400, '商丘市', 10000016, '2');
INSERT INTO `cmf_region` VALUES (10000198, 411500, '信阳市', 10000016, '2');
INSERT INTO `cmf_region` VALUES (10000199, 411600, '周口市', 10000016, '2');
INSERT INTO `cmf_region` VALUES (10000200, 411700, '驻马店市', 10000016, '2');
INSERT INTO `cmf_region` VALUES (10000201, 419000, '省直辖县', 10000016, '2');
INSERT INTO `cmf_region` VALUES (10000202, 420100, '武汉市', 10000017, '2');
INSERT INTO `cmf_region` VALUES (10000203, 420200, '黄石市', 10000017, '2');
INSERT INTO `cmf_region` VALUES (10000204, 420300, '十堰市', 10000017, '2');
INSERT INTO `cmf_region` VALUES (10000205, 420500, '宜昌市', 10000017, '2');
INSERT INTO `cmf_region` VALUES (10000206, 420600, '襄阳市', 10000017, '2');
INSERT INTO `cmf_region` VALUES (10000207, 420700, '鄂州市', 10000017, '2');
INSERT INTO `cmf_region` VALUES (10000208, 420800, '荆门市', 10000017, '2');
INSERT INTO `cmf_region` VALUES (10000209, 420900, '孝感市', 10000017, '2');
INSERT INTO `cmf_region` VALUES (10000210, 421000, '荆州市', 10000017, '2');
INSERT INTO `cmf_region` VALUES (10000211, 421100, '黄冈市', 10000017, '2');
INSERT INTO `cmf_region` VALUES (10000212, 421200, '咸宁市', 10000017, '2');
INSERT INTO `cmf_region` VALUES (10000213, 421300, '随州市', 10000017, '2');
INSERT INTO `cmf_region` VALUES (10000214, 422800, '恩施土家族苗族自治州', 10000017, '2');
INSERT INTO `cmf_region` VALUES (10000215, 429000, '省直辖县', 10000017, '2');
INSERT INTO `cmf_region` VALUES (10000216, 430100, '长沙市', 10000018, '2');
INSERT INTO `cmf_region` VALUES (10000217, 430200, '株洲市', 10000018, '2');
INSERT INTO `cmf_region` VALUES (10000218, 430300, '湘潭市', 10000018, '2');
INSERT INTO `cmf_region` VALUES (10000219, 430400, '衡阳市', 10000018, '2');
INSERT INTO `cmf_region` VALUES (10000220, 430500, '邵阳市', 10000018, '2');
INSERT INTO `cmf_region` VALUES (10000221, 430600, '岳阳市', 10000018, '2');
INSERT INTO `cmf_region` VALUES (10000222, 430700, '常德市', 10000018, '2');
INSERT INTO `cmf_region` VALUES (10000223, 430800, '张家界市', 10000018, '2');
INSERT INTO `cmf_region` VALUES (10000224, 430900, '益阳市', 10000018, '2');
INSERT INTO `cmf_region` VALUES (10000225, 431000, '郴州市', 10000018, '2');
INSERT INTO `cmf_region` VALUES (10000226, 431100, '永州市', 10000018, '2');
INSERT INTO `cmf_region` VALUES (10000227, 431200, '怀化市', 10000018, '2');
INSERT INTO `cmf_region` VALUES (10000228, 431300, '娄底市', 10000018, '2');
INSERT INTO `cmf_region` VALUES (10000229, 433100, '湘西土家族苗族自治州', 10000018, '2');
INSERT INTO `cmf_region` VALUES (10000230, 440100, '广州市', 10000019, '2');
INSERT INTO `cmf_region` VALUES (10000231, 440200, '韶关市', 10000019, '2');
INSERT INTO `cmf_region` VALUES (10000232, 440300, '深圳市', 10000019, '2');
INSERT INTO `cmf_region` VALUES (10000233, 440400, '珠海市', 10000019, '2');
INSERT INTO `cmf_region` VALUES (10000234, 440500, '汕头市', 10000019, '2');
INSERT INTO `cmf_region` VALUES (10000235, 440600, '佛山市', 10000019, '2');
INSERT INTO `cmf_region` VALUES (10000236, 440700, '江门市', 10000019, '2');
INSERT INTO `cmf_region` VALUES (10000237, 440800, '湛江市', 10000019, '2');
INSERT INTO `cmf_region` VALUES (10000238, 440900, '茂名市', 10000019, '2');
INSERT INTO `cmf_region` VALUES (10000239, 441200, '肇庆市', 10000019, '2');
INSERT INTO `cmf_region` VALUES (10000240, 441300, '惠州市', 10000019, '2');
INSERT INTO `cmf_region` VALUES (10000241, 441400, '梅州市', 10000019, '2');
INSERT INTO `cmf_region` VALUES (10000242, 441500, '汕尾市', 10000019, '2');
INSERT INTO `cmf_region` VALUES (10000243, 441600, '河源市', 10000019, '2');
INSERT INTO `cmf_region` VALUES (10000244, 441700, '阳江市', 10000019, '2');
INSERT INTO `cmf_region` VALUES (10000245, 441800, '清远市', 10000019, '2');
INSERT INTO `cmf_region` VALUES (10000246, 441900, '东莞市', 10000019, '2');
INSERT INTO `cmf_region` VALUES (10000247, 442000, '中山市', 10000019, '2');
INSERT INTO `cmf_region` VALUES (10000248, 445100, '潮州市', 10000019, '2');
INSERT INTO `cmf_region` VALUES (10000249, 445200, '揭阳市', 10000019, '2');
INSERT INTO `cmf_region` VALUES (10000250, 445300, '云浮市', 10000019, '2');
INSERT INTO `cmf_region` VALUES (10000251, 450100, '南宁市', 10000020, '2');
INSERT INTO `cmf_region` VALUES (10000252, 450200, '柳州市', 10000020, '2');
INSERT INTO `cmf_region` VALUES (10000253, 450300, '桂林市', 10000020, '2');
INSERT INTO `cmf_region` VALUES (10000254, 450400, '梧州市', 10000020, '2');
INSERT INTO `cmf_region` VALUES (10000255, 450500, '北海市', 10000020, '2');
INSERT INTO `cmf_region` VALUES (10000256, 450600, '防城港市', 10000020, '2');
INSERT INTO `cmf_region` VALUES (10000257, 450700, '钦州市', 10000020, '2');
INSERT INTO `cmf_region` VALUES (10000258, 450800, '贵港市', 10000020, '2');
INSERT INTO `cmf_region` VALUES (10000259, 450900, '玉林市', 10000020, '2');
INSERT INTO `cmf_region` VALUES (10000260, 451000, '百色市', 10000020, '2');
INSERT INTO `cmf_region` VALUES (10000261, 451100, '贺州市', 10000020, '2');
INSERT INTO `cmf_region` VALUES (10000262, 451200, '河池市', 10000020, '2');
INSERT INTO `cmf_region` VALUES (10000263, 451300, '来宾市', 10000020, '2');
INSERT INTO `cmf_region` VALUES (10000264, 451400, '崇左市', 10000020, '2');
INSERT INTO `cmf_region` VALUES (10000265, 460100, '海口市', 10000021, '2');
INSERT INTO `cmf_region` VALUES (10000266, 460200, '三亚市', 10000021, '2');
INSERT INTO `cmf_region` VALUES (10000267, 460300, '三沙市', 10000021, '2');
INSERT INTO `cmf_region` VALUES (10000268, 460400, '儋州市', 10000021, '2');
INSERT INTO `cmf_region` VALUES (10000269, 469000, '省直辖县', 10000021, '2');
INSERT INTO `cmf_region` VALUES (10000270, 500100, '重庆市', 10000022, '2');
INSERT INTO `cmf_region` VALUES (10000271, 500200, '县', 10000022, '2');
INSERT INTO `cmf_region` VALUES (10000272, 510100, '成都市', 10000023, '2');
INSERT INTO `cmf_region` VALUES (10000273, 510300, '自贡市', 10000023, '2');
INSERT INTO `cmf_region` VALUES (10000274, 510400, '攀枝花市', 10000023, '2');
INSERT INTO `cmf_region` VALUES (10000275, 510500, '泸州市', 10000023, '2');
INSERT INTO `cmf_region` VALUES (10000276, 510600, '德阳市', 10000023, '2');
INSERT INTO `cmf_region` VALUES (10000277, 510700, '绵阳市', 10000023, '2');
INSERT INTO `cmf_region` VALUES (10000278, 510800, '广元市', 10000023, '2');
INSERT INTO `cmf_region` VALUES (10000279, 510900, '遂宁市', 10000023, '2');
INSERT INTO `cmf_region` VALUES (10000280, 511000, '内江市', 10000023, '2');
INSERT INTO `cmf_region` VALUES (10000281, 511100, '乐山市', 10000023, '2');
INSERT INTO `cmf_region` VALUES (10000282, 511300, '南充市', 10000023, '2');
INSERT INTO `cmf_region` VALUES (10000283, 511400, '眉山市', 10000023, '2');
INSERT INTO `cmf_region` VALUES (10000284, 511500, '宜宾市', 10000023, '2');
INSERT INTO `cmf_region` VALUES (10000285, 511600, '广安市', 10000023, '2');
INSERT INTO `cmf_region` VALUES (10000286, 511700, '达州市', 10000023, '2');
INSERT INTO `cmf_region` VALUES (10000287, 511800, '雅安市', 10000023, '2');
INSERT INTO `cmf_region` VALUES (10000288, 511900, '巴中市', 10000023, '2');
INSERT INTO `cmf_region` VALUES (10000289, 512000, '资阳市', 10000023, '2');
INSERT INTO `cmf_region` VALUES (10000290, 513200, '阿坝藏族羌族自治州', 10000023, '2');
INSERT INTO `cmf_region` VALUES (10000291, 513300, '甘孜藏族自治州', 10000023, '2');
INSERT INTO `cmf_region` VALUES (10000292, 513400, '凉山彝族自治州', 10000023, '2');
INSERT INTO `cmf_region` VALUES (10000293, 520100, '贵阳市', 10000024, '2');
INSERT INTO `cmf_region` VALUES (10000294, 520200, '六盘水市', 10000024, '2');
INSERT INTO `cmf_region` VALUES (10000295, 520300, '遵义市', 10000024, '2');
INSERT INTO `cmf_region` VALUES (10000296, 520400, '安顺市', 10000024, '2');
INSERT INTO `cmf_region` VALUES (10000297, 520500, '毕节市', 10000024, '2');
INSERT INTO `cmf_region` VALUES (10000298, 520600, '铜仁市', 10000024, '2');
INSERT INTO `cmf_region` VALUES (10000299, 522300, '黔西南布依族苗族自治州', 10000024, '2');
INSERT INTO `cmf_region` VALUES (10000300, 522600, '黔东南苗族侗族自治州', 10000024, '2');
INSERT INTO `cmf_region` VALUES (10000301, 522700, '黔南布依族苗族自治州', 10000024, '2');
INSERT INTO `cmf_region` VALUES (10000302, 530100, '昆明市', 10000025, '2');
INSERT INTO `cmf_region` VALUES (10000303, 530300, '曲靖市', 10000025, '2');
INSERT INTO `cmf_region` VALUES (10000304, 530400, '玉溪市', 10000025, '2');
INSERT INTO `cmf_region` VALUES (10000305, 530500, '保山市', 10000025, '2');
INSERT INTO `cmf_region` VALUES (10000306, 530600, '昭通市', 10000025, '2');
INSERT INTO `cmf_region` VALUES (10000307, 530700, '丽江市', 10000025, '2');
INSERT INTO `cmf_region` VALUES (10000308, 530800, '普洱市', 10000025, '2');
INSERT INTO `cmf_region` VALUES (10000309, 530900, '临沧市', 10000025, '2');
INSERT INTO `cmf_region` VALUES (10000310, 532300, '楚雄彝族自治州', 10000025, '2');
INSERT INTO `cmf_region` VALUES (10000311, 532500, '红河哈尼族彝族自治州', 10000025, '2');
INSERT INTO `cmf_region` VALUES (10000312, 532600, '文山壮族苗族自治州', 10000025, '2');
INSERT INTO `cmf_region` VALUES (10000313, 532800, '西双版纳傣族自治州', 10000025, '2');
INSERT INTO `cmf_region` VALUES (10000314, 532900, '大理白族自治州', 10000025, '2');
INSERT INTO `cmf_region` VALUES (10000315, 533100, '德宏傣族景颇族自治州', 10000025, '2');
INSERT INTO `cmf_region` VALUES (10000316, 533300, '怒江傈僳族自治州', 10000025, '2');
INSERT INTO `cmf_region` VALUES (10000317, 533400, '迪庆藏族自治州', 10000025, '2');
INSERT INTO `cmf_region` VALUES (10000318, 540100, '拉萨市', 10000026, '2');
INSERT INTO `cmf_region` VALUES (10000319, 540200, '日喀则市', 10000026, '2');
INSERT INTO `cmf_region` VALUES (10000320, 540300, '昌都市', 10000026, '2');
INSERT INTO `cmf_region` VALUES (10000321, 540400, '林芝市', 10000026, '2');
INSERT INTO `cmf_region` VALUES (10000322, 540500, '山南市', 10000026, '2');
INSERT INTO `cmf_region` VALUES (10000323, 540600, '那曲市', 10000026, '2');
INSERT INTO `cmf_region` VALUES (10000324, 542500, '阿里地区', 10000026, '2');
INSERT INTO `cmf_region` VALUES (10000325, 610100, '西安市', 10000027, '2');
INSERT INTO `cmf_region` VALUES (10000326, 610200, '铜川市', 10000027, '2');
INSERT INTO `cmf_region` VALUES (10000327, 610300, '宝鸡市', 10000027, '2');
INSERT INTO `cmf_region` VALUES (10000328, 610400, '咸阳市', 10000027, '2');
INSERT INTO `cmf_region` VALUES (10000329, 610500, '渭南市', 10000027, '2');
INSERT INTO `cmf_region` VALUES (10000330, 610600, '延安市', 10000027, '2');
INSERT INTO `cmf_region` VALUES (10000331, 610700, '汉中市', 10000027, '2');
INSERT INTO `cmf_region` VALUES (10000332, 610800, '榆林市', 10000027, '2');
INSERT INTO `cmf_region` VALUES (10000333, 610900, '安康市', 10000027, '2');
INSERT INTO `cmf_region` VALUES (10000334, 611000, '商洛市', 10000027, '2');
INSERT INTO `cmf_region` VALUES (10000335, 620100, '兰州市', 10000028, '2');
INSERT INTO `cmf_region` VALUES (10000336, 620200, '嘉峪关市', 10000028, '2');
INSERT INTO `cmf_region` VALUES (10000337, 620300, '金昌市', 10000028, '2');
INSERT INTO `cmf_region` VALUES (10000338, 620400, '白银市', 10000028, '2');
INSERT INTO `cmf_region` VALUES (10000339, 620500, '天水市', 10000028, '2');
INSERT INTO `cmf_region` VALUES (10000340, 620600, '武威市', 10000028, '2');
INSERT INTO `cmf_region` VALUES (10000341, 620700, '张掖市', 10000028, '2');
INSERT INTO `cmf_region` VALUES (10000342, 620800, '平凉市', 10000028, '2');
INSERT INTO `cmf_region` VALUES (10000343, 620900, '酒泉市', 10000028, '2');
INSERT INTO `cmf_region` VALUES (10000344, 621000, '庆阳市', 10000028, '2');
INSERT INTO `cmf_region` VALUES (10000345, 621100, '定西市', 10000028, '2');
INSERT INTO `cmf_region` VALUES (10000346, 621200, '陇南市', 10000028, '2');
INSERT INTO `cmf_region` VALUES (10000347, 622900, '临夏回族自治州', 10000028, '2');
INSERT INTO `cmf_region` VALUES (10000348, 623000, '甘南藏族自治州', 10000028, '2');
INSERT INTO `cmf_region` VALUES (10000349, 630100, '西宁市', 10000029, '2');
INSERT INTO `cmf_region` VALUES (10000350, 630200, '海东市', 10000029, '2');
INSERT INTO `cmf_region` VALUES (10000351, 632200, '海北藏族自治州', 10000029, '2');
INSERT INTO `cmf_region` VALUES (10000352, 632300, '黄南藏族自治州', 10000029, '2');
INSERT INTO `cmf_region` VALUES (10000353, 632500, '海南藏族自治州', 10000029, '2');
INSERT INTO `cmf_region` VALUES (10000354, 632600, '果洛藏族自治州', 10000029, '2');
INSERT INTO `cmf_region` VALUES (10000355, 632700, '玉树藏族自治州', 10000029, '2');
INSERT INTO `cmf_region` VALUES (10000356, 632800, '海西蒙古族藏族自治州', 10000029, '2');
INSERT INTO `cmf_region` VALUES (10000357, 640100, '银川市', 10000030, '2');
INSERT INTO `cmf_region` VALUES (10000358, 640200, '石嘴山市', 10000030, '2');
INSERT INTO `cmf_region` VALUES (10000359, 640300, '吴忠市', 10000030, '2');
INSERT INTO `cmf_region` VALUES (10000360, 640400, '固原市', 10000030, '2');
INSERT INTO `cmf_region` VALUES (10000361, 640500, '中卫市', 10000030, '2');
INSERT INTO `cmf_region` VALUES (10000362, 650100, '乌鲁木齐市', 10000031, '2');
INSERT INTO `cmf_region` VALUES (10000363, 650200, '克拉玛依市', 10000031, '2');
INSERT INTO `cmf_region` VALUES (10000364, 650400, '吐鲁番市', 10000031, '2');
INSERT INTO `cmf_region` VALUES (10000365, 650500, '哈密市', 10000031, '2');
INSERT INTO `cmf_region` VALUES (10000366, 652300, '昌吉回族自治州', 10000031, '2');
INSERT INTO `cmf_region` VALUES (10000367, 652700, '博尔塔拉蒙古自治州', 10000031, '2');
INSERT INTO `cmf_region` VALUES (10000368, 652800, '巴音郭楞蒙古自治州', 10000031, '2');
INSERT INTO `cmf_region` VALUES (10000369, 652900, '阿克苏地区', 10000031, '2');
INSERT INTO `cmf_region` VALUES (10000370, 653000, '克孜勒苏柯尔克孜自治州', 10000031, '2');
INSERT INTO `cmf_region` VALUES (10000371, 653100, '喀什地区', 10000031, '2');
INSERT INTO `cmf_region` VALUES (10000372, 653200, '和田地区', 10000031, '2');
INSERT INTO `cmf_region` VALUES (10000373, 654000, '伊犁哈萨克自治州', 10000031, '2');
INSERT INTO `cmf_region` VALUES (10000374, 654200, '塔城地区', 10000031, '2');
INSERT INTO `cmf_region` VALUES (10000375, 654300, '阿勒泰地区', 10000031, '2');
INSERT INTO `cmf_region` VALUES (10000376, 659000, '自治区直辖县级行政区划', 10000031, '2');
INSERT INTO `cmf_region` VALUES (10000377, 710100, '台北市', 10000032, '2');
INSERT INTO `cmf_region` VALUES (10000378, 710200, '高雄市', 10000032, '2');
INSERT INTO `cmf_region` VALUES (10000379, 710300, '台南市', 10000032, '2');
INSERT INTO `cmf_region` VALUES (10000380, 710400, '台中市', 10000032, '2');
INSERT INTO `cmf_region` VALUES (10000381, 710500, '金门县', 10000032, '2');
INSERT INTO `cmf_region` VALUES (10000382, 710600, '南投县', 10000032, '2');
INSERT INTO `cmf_region` VALUES (10000383, 710700, '基隆市', 10000032, '2');
INSERT INTO `cmf_region` VALUES (10000384, 710800, '新竹市', 10000032, '2');
INSERT INTO `cmf_region` VALUES (10000385, 710900, '嘉义市', 10000032, '2');
INSERT INTO `cmf_region` VALUES (10000386, 711100, '新北市', 10000032, '2');
INSERT INTO `cmf_region` VALUES (10000387, 711200, '宜兰县', 10000032, '2');
INSERT INTO `cmf_region` VALUES (10000388, 711300, '新竹县', 10000032, '2');
INSERT INTO `cmf_region` VALUES (10000389, 711400, '桃园县', 10000032, '2');
INSERT INTO `cmf_region` VALUES (10000390, 711500, '苗栗县', 10000032, '2');
INSERT INTO `cmf_region` VALUES (10000391, 711700, '彰化县', 10000032, '2');
INSERT INTO `cmf_region` VALUES (10000392, 711900, '嘉义县', 10000032, '2');
INSERT INTO `cmf_region` VALUES (10000393, 712100, '云林县', 10000032, '2');
INSERT INTO `cmf_region` VALUES (10000394, 712400, '屏东县', 10000032, '2');
INSERT INTO `cmf_region` VALUES (10000395, 712500, '台东县', 10000032, '2');
INSERT INTO `cmf_region` VALUES (10000396, 712600, '花莲县', 10000032, '2');
INSERT INTO `cmf_region` VALUES (10000397, 712700, '澎湖县', 10000032, '2');
INSERT INTO `cmf_region` VALUES (10000398, 712800, '连江县', 10000032, '2');
INSERT INTO `cmf_region` VALUES (10000399, 810100, '香港岛', 10000033, '2');
INSERT INTO `cmf_region` VALUES (10000400, 810200, '九龙', 10000033, '2');
INSERT INTO `cmf_region` VALUES (10000401, 810300, '新界', 10000033, '2');
INSERT INTO `cmf_region` VALUES (10000402, 820100, '澳门半岛', 10000034, '2');
INSERT INTO `cmf_region` VALUES (10000403, 820200, '离岛', 10000034, '2');
INSERT INTO `cmf_region` VALUES (10000404, 110101, '东城区', 10000035, '3');
INSERT INTO `cmf_region` VALUES (10000405, 110102, '西城区', 10000035, '3');
INSERT INTO `cmf_region` VALUES (10000406, 110105, '朝阳区', 10000035, '3');
INSERT INTO `cmf_region` VALUES (10000407, 110106, '丰台区', 10000035, '3');
INSERT INTO `cmf_region` VALUES (10000408, 110107, '石景山区', 10000035, '3');
INSERT INTO `cmf_region` VALUES (10000409, 110108, '海淀区', 10000035, '3');
INSERT INTO `cmf_region` VALUES (10000410, 110109, '门头沟区', 10000035, '3');
INSERT INTO `cmf_region` VALUES (10000411, 110111, '房山区', 10000035, '3');
INSERT INTO `cmf_region` VALUES (10000412, 110112, '通州区', 10000035, '3');
INSERT INTO `cmf_region` VALUES (10000413, 110113, '顺义区', 10000035, '3');
INSERT INTO `cmf_region` VALUES (10000414, 110114, '昌平区', 10000035, '3');
INSERT INTO `cmf_region` VALUES (10000415, 110115, '大兴区', 10000035, '3');
INSERT INTO `cmf_region` VALUES (10000416, 110116, '怀柔区', 10000035, '3');
INSERT INTO `cmf_region` VALUES (10000417, 110117, '平谷区', 10000035, '3');
INSERT INTO `cmf_region` VALUES (10000418, 110118, '密云区', 10000035, '3');
INSERT INTO `cmf_region` VALUES (10000419, 110119, '延庆区', 10000035, '3');
INSERT INTO `cmf_region` VALUES (10000420, 120101, '和平区', 10000036, '3');
INSERT INTO `cmf_region` VALUES (10000421, 120102, '河东区', 10000036, '3');
INSERT INTO `cmf_region` VALUES (10000422, 120103, '河西区', 10000036, '3');
INSERT INTO `cmf_region` VALUES (10000423, 120104, '南开区', 10000036, '3');
INSERT INTO `cmf_region` VALUES (10000424, 120105, '河北区', 10000036, '3');
INSERT INTO `cmf_region` VALUES (10000425, 120106, '红桥区', 10000036, '3');
INSERT INTO `cmf_region` VALUES (10000426, 120110, '东丽区', 10000036, '3');
INSERT INTO `cmf_region` VALUES (10000427, 120111, '西青区', 10000036, '3');
INSERT INTO `cmf_region` VALUES (10000428, 120112, '津南区', 10000036, '3');
INSERT INTO `cmf_region` VALUES (10000429, 120113, '北辰区', 10000036, '3');
INSERT INTO `cmf_region` VALUES (10000430, 120114, '武清区', 10000036, '3');
INSERT INTO `cmf_region` VALUES (10000431, 120115, '宝坻区', 10000036, '3');
INSERT INTO `cmf_region` VALUES (10000432, 120116, '滨海新区', 10000036, '3');
INSERT INTO `cmf_region` VALUES (10000433, 120117, '宁河区', 10000036, '3');
INSERT INTO `cmf_region` VALUES (10000434, 120118, '静海区', 10000036, '3');
INSERT INTO `cmf_region` VALUES (10000435, 120119, '蓟州区', 10000036, '3');
INSERT INTO `cmf_region` VALUES (10000436, 130102, '长安区', 10000037, '3');
INSERT INTO `cmf_region` VALUES (10000437, 130104, '桥西区', 10000037, '3');
INSERT INTO `cmf_region` VALUES (10000438, 130105, '新华区', 10000037, '3');
INSERT INTO `cmf_region` VALUES (10000439, 130107, '井陉矿区', 10000037, '3');
INSERT INTO `cmf_region` VALUES (10000440, 130108, '裕华区', 10000037, '3');
INSERT INTO `cmf_region` VALUES (10000441, 130109, '藁城区', 10000037, '3');
INSERT INTO `cmf_region` VALUES (10000442, 130110, '鹿泉区', 10000037, '3');
INSERT INTO `cmf_region` VALUES (10000443, 130111, '栾城区', 10000037, '3');
INSERT INTO `cmf_region` VALUES (10000444, 130121, '井陉县', 10000037, '3');
INSERT INTO `cmf_region` VALUES (10000445, 130123, '正定县', 10000037, '3');
INSERT INTO `cmf_region` VALUES (10000446, 130125, '行唐县', 10000037, '3');
INSERT INTO `cmf_region` VALUES (10000447, 130126, '灵寿县', 10000037, '3');
INSERT INTO `cmf_region` VALUES (10000448, 130127, '高邑县', 10000037, '3');
INSERT INTO `cmf_region` VALUES (10000449, 130128, '深泽县', 10000037, '3');
INSERT INTO `cmf_region` VALUES (10000450, 130129, '赞皇县', 10000037, '3');
INSERT INTO `cmf_region` VALUES (10000451, 130130, '无极县', 10000037, '3');
INSERT INTO `cmf_region` VALUES (10000452, 130131, '平山县', 10000037, '3');
INSERT INTO `cmf_region` VALUES (10000453, 130132, '元氏县', 10000037, '3');
INSERT INTO `cmf_region` VALUES (10000454, 130133, '赵县', 10000037, '3');
INSERT INTO `cmf_region` VALUES (10000455, 130181, '辛集市', 10000037, '3');
INSERT INTO `cmf_region` VALUES (10000456, 130183, '晋州市', 10000037, '3');
INSERT INTO `cmf_region` VALUES (10000457, 130184, '新乐市', 10000037, '3');
INSERT INTO `cmf_region` VALUES (10000458, 130202, '路南区', 10000038, '3');
INSERT INTO `cmf_region` VALUES (10000459, 130203, '路北区', 10000038, '3');
INSERT INTO `cmf_region` VALUES (10000460, 130204, '古冶区', 10000038, '3');
INSERT INTO `cmf_region` VALUES (10000461, 130205, '开平区', 10000038, '3');
INSERT INTO `cmf_region` VALUES (10000462, 130207, '丰南区', 10000038, '3');
INSERT INTO `cmf_region` VALUES (10000463, 130208, '丰润区', 10000038, '3');
INSERT INTO `cmf_region` VALUES (10000464, 130209, '曹妃甸区', 10000038, '3');
INSERT INTO `cmf_region` VALUES (10000465, 130224, '滦南县', 10000038, '3');
INSERT INTO `cmf_region` VALUES (10000466, 130225, '乐亭县', 10000038, '3');
INSERT INTO `cmf_region` VALUES (10000467, 130227, '迁西县', 10000038, '3');
INSERT INTO `cmf_region` VALUES (10000468, 130229, '玉田县', 10000038, '3');
INSERT INTO `cmf_region` VALUES (10000469, 130281, '遵化市', 10000038, '3');
INSERT INTO `cmf_region` VALUES (10000470, 130283, '迁安市', 10000038, '3');
INSERT INTO `cmf_region` VALUES (10000471, 130284, '滦州市', 10000038, '3');
INSERT INTO `cmf_region` VALUES (10000472, 130302, '海港区', 10000039, '3');
INSERT INTO `cmf_region` VALUES (10000473, 130303, '山海关区', 10000039, '3');
INSERT INTO `cmf_region` VALUES (10000474, 130304, '北戴河区', 10000039, '3');
INSERT INTO `cmf_region` VALUES (10000475, 130306, '抚宁区', 10000039, '3');
INSERT INTO `cmf_region` VALUES (10000476, 130321, '青龙满族自治县', 10000039, '3');
INSERT INTO `cmf_region` VALUES (10000477, 130322, '昌黎县', 10000039, '3');
INSERT INTO `cmf_region` VALUES (10000478, 130324, '卢龙县', 10000039, '3');
INSERT INTO `cmf_region` VALUES (10000479, 130390, '经济技术开发区', 10000039, '3');
INSERT INTO `cmf_region` VALUES (10000480, 130402, '邯山区', 10000040, '3');
INSERT INTO `cmf_region` VALUES (10000481, 130403, '丛台区', 10000040, '3');
INSERT INTO `cmf_region` VALUES (10000482, 130404, '复兴区', 10000040, '3');
INSERT INTO `cmf_region` VALUES (10000483, 130406, '峰峰矿区', 10000040, '3');
INSERT INTO `cmf_region` VALUES (10000484, 130407, '肥乡区', 10000040, '3');
INSERT INTO `cmf_region` VALUES (10000485, 130408, '永年区', 10000040, '3');
INSERT INTO `cmf_region` VALUES (10000486, 130423, '临漳县', 10000040, '3');
INSERT INTO `cmf_region` VALUES (10000487, 130424, '成安县', 10000040, '3');
INSERT INTO `cmf_region` VALUES (10000488, 130425, '大名县', 10000040, '3');
INSERT INTO `cmf_region` VALUES (10000489, 130426, '涉县', 10000040, '3');
INSERT INTO `cmf_region` VALUES (10000490, 130427, '磁县', 10000040, '3');
INSERT INTO `cmf_region` VALUES (10000491, 130430, '邱县', 10000040, '3');
INSERT INTO `cmf_region` VALUES (10000492, 130431, '鸡泽县', 10000040, '3');
INSERT INTO `cmf_region` VALUES (10000493, 130432, '广平县', 10000040, '3');
INSERT INTO `cmf_region` VALUES (10000494, 130433, '馆陶县', 10000040, '3');
INSERT INTO `cmf_region` VALUES (10000495, 130434, '魏县', 10000040, '3');
INSERT INTO `cmf_region` VALUES (10000496, 130435, '曲周县', 10000040, '3');
INSERT INTO `cmf_region` VALUES (10000497, 130481, '武安市', 10000040, '3');
INSERT INTO `cmf_region` VALUES (10000498, 130502, '桥东区', 10000041, '3');
INSERT INTO `cmf_region` VALUES (10000499, 130503, '桥西区', 10000041, '3');
INSERT INTO `cmf_region` VALUES (10000500, 130521, '邢台县', 10000041, '3');
INSERT INTO `cmf_region` VALUES (10000501, 130522, '临城县', 10000041, '3');
INSERT INTO `cmf_region` VALUES (10000502, 130523, '内丘县', 10000041, '3');
INSERT INTO `cmf_region` VALUES (10000503, 130524, '柏乡县', 10000041, '3');
INSERT INTO `cmf_region` VALUES (10000504, 130525, '隆尧县', 10000041, '3');
INSERT INTO `cmf_region` VALUES (10000505, 130526, '任县', 10000041, '3');
INSERT INTO `cmf_region` VALUES (10000506, 130527, '南和县', 10000041, '3');
INSERT INTO `cmf_region` VALUES (10000507, 130528, '宁晋县', 10000041, '3');
INSERT INTO `cmf_region` VALUES (10000508, 130529, '巨鹿县', 10000041, '3');
INSERT INTO `cmf_region` VALUES (10000509, 130530, '新河县', 10000041, '3');
INSERT INTO `cmf_region` VALUES (10000510, 130531, '广宗县', 10000041, '3');
INSERT INTO `cmf_region` VALUES (10000511, 130532, '平乡县', 10000041, '3');
INSERT INTO `cmf_region` VALUES (10000512, 130533, '威县', 10000041, '3');
INSERT INTO `cmf_region` VALUES (10000513, 130534, '清河县', 10000041, '3');
INSERT INTO `cmf_region` VALUES (10000514, 130535, '临西县', 10000041, '3');
INSERT INTO `cmf_region` VALUES (10000515, 130581, '南宫市', 10000041, '3');
INSERT INTO `cmf_region` VALUES (10000516, 130582, '沙河市', 10000041, '3');
INSERT INTO `cmf_region` VALUES (10000517, 130602, '竞秀区', 10000042, '3');
INSERT INTO `cmf_region` VALUES (10000518, 130606, '莲池区', 10000042, '3');
INSERT INTO `cmf_region` VALUES (10000519, 130607, '满城区', 10000042, '3');
INSERT INTO `cmf_region` VALUES (10000520, 130608, '清苑区', 10000042, '3');
INSERT INTO `cmf_region` VALUES (10000521, 130609, '徐水区', 10000042, '3');
INSERT INTO `cmf_region` VALUES (10000522, 130623, '涞水县', 10000042, '3');
INSERT INTO `cmf_region` VALUES (10000523, 130624, '阜平县', 10000042, '3');
INSERT INTO `cmf_region` VALUES (10000524, 130626, '定兴县', 10000042, '3');
INSERT INTO `cmf_region` VALUES (10000525, 130627, '唐县', 10000042, '3');
INSERT INTO `cmf_region` VALUES (10000526, 130628, '高阳县', 10000042, '3');
INSERT INTO `cmf_region` VALUES (10000527, 130629, '容城县', 10000042, '3');
INSERT INTO `cmf_region` VALUES (10000528, 130630, '涞源县', 10000042, '3');
INSERT INTO `cmf_region` VALUES (10000529, 130631, '望都县', 10000042, '3');
INSERT INTO `cmf_region` VALUES (10000530, 130632, '安新县', 10000042, '3');
INSERT INTO `cmf_region` VALUES (10000531, 130633, '易县', 10000042, '3');
INSERT INTO `cmf_region` VALUES (10000532, 130634, '曲阳县', 10000042, '3');
INSERT INTO `cmf_region` VALUES (10000533, 130635, '蠡县', 10000042, '3');
INSERT INTO `cmf_region` VALUES (10000534, 130636, '顺平县', 10000042, '3');
INSERT INTO `cmf_region` VALUES (10000535, 130637, '博野县', 10000042, '3');
INSERT INTO `cmf_region` VALUES (10000536, 130638, '雄县', 10000042, '3');
INSERT INTO `cmf_region` VALUES (10000537, 130681, '涿州市', 10000042, '3');
INSERT INTO `cmf_region` VALUES (10000538, 130682, '定州市', 10000042, '3');
INSERT INTO `cmf_region` VALUES (10000539, 130683, '安国市', 10000042, '3');
INSERT INTO `cmf_region` VALUES (10000540, 130684, '高碑店市', 10000042, '3');
INSERT INTO `cmf_region` VALUES (10000541, 130702, '桥东区', 10000043, '3');
INSERT INTO `cmf_region` VALUES (10000542, 130703, '桥西区', 10000043, '3');
INSERT INTO `cmf_region` VALUES (10000543, 130705, '宣化区', 10000043, '3');
INSERT INTO `cmf_region` VALUES (10000544, 130706, '下花园区', 10000043, '3');
INSERT INTO `cmf_region` VALUES (10000545, 130708, '万全区', 10000043, '3');
INSERT INTO `cmf_region` VALUES (10000546, 130709, '崇礼区', 10000043, '3');
INSERT INTO `cmf_region` VALUES (10000547, 130722, '张北县', 10000043, '3');
INSERT INTO `cmf_region` VALUES (10000548, 130723, '康保县', 10000043, '3');
INSERT INTO `cmf_region` VALUES (10000549, 130724, '沽源县', 10000043, '3');
INSERT INTO `cmf_region` VALUES (10000550, 130725, '尚义县', 10000043, '3');
INSERT INTO `cmf_region` VALUES (10000551, 130726, '蔚县', 10000043, '3');
INSERT INTO `cmf_region` VALUES (10000552, 130727, '阳原县', 10000043, '3');
INSERT INTO `cmf_region` VALUES (10000553, 130728, '怀安县', 10000043, '3');
INSERT INTO `cmf_region` VALUES (10000554, 130730, '怀来县', 10000043, '3');
INSERT INTO `cmf_region` VALUES (10000555, 130731, '涿鹿县', 10000043, '3');
INSERT INTO `cmf_region` VALUES (10000556, 130732, '赤城县', 10000043, '3');
INSERT INTO `cmf_region` VALUES (10000557, 130802, '双桥区', 10000044, '3');
INSERT INTO `cmf_region` VALUES (10000558, 130803, '双滦区', 10000044, '3');
INSERT INTO `cmf_region` VALUES (10000559, 130804, '鹰手营子矿区', 10000044, '3');
INSERT INTO `cmf_region` VALUES (10000560, 130821, '承德县', 10000044, '3');
INSERT INTO `cmf_region` VALUES (10000561, 130822, '兴隆县', 10000044, '3');
INSERT INTO `cmf_region` VALUES (10000562, 130824, '滦平县', 10000044, '3');
INSERT INTO `cmf_region` VALUES (10000563, 130825, '隆化县', 10000044, '3');
INSERT INTO `cmf_region` VALUES (10000564, 130826, '丰宁满族自治县', 10000044, '3');
INSERT INTO `cmf_region` VALUES (10000565, 130827, '宽城满族自治县', 10000044, '3');
INSERT INTO `cmf_region` VALUES (10000566, 130828, '围场满族蒙古族自治县', 10000044, '3');
INSERT INTO `cmf_region` VALUES (10000567, 130881, '平泉市', 10000044, '3');
INSERT INTO `cmf_region` VALUES (10000568, 130902, '新华区', 10000045, '3');
INSERT INTO `cmf_region` VALUES (10000569, 130903, '运河区', 10000045, '3');
INSERT INTO `cmf_region` VALUES (10000570, 130921, '沧县', 10000045, '3');
INSERT INTO `cmf_region` VALUES (10000571, 130922, '青县', 10000045, '3');
INSERT INTO `cmf_region` VALUES (10000572, 130923, '东光县', 10000045, '3');
INSERT INTO `cmf_region` VALUES (10000573, 130924, '海兴县', 10000045, '3');
INSERT INTO `cmf_region` VALUES (10000574, 130925, '盐山县', 10000045, '3');
INSERT INTO `cmf_region` VALUES (10000575, 130926, '肃宁县', 10000045, '3');
INSERT INTO `cmf_region` VALUES (10000576, 130927, '南皮县', 10000045, '3');
INSERT INTO `cmf_region` VALUES (10000577, 130928, '吴桥县', 10000045, '3');
INSERT INTO `cmf_region` VALUES (10000578, 130929, '献县', 10000045, '3');
INSERT INTO `cmf_region` VALUES (10000579, 130930, '孟村回族自治县', 10000045, '3');
INSERT INTO `cmf_region` VALUES (10000580, 130981, '泊头市', 10000045, '3');
INSERT INTO `cmf_region` VALUES (10000581, 130982, '任丘市', 10000045, '3');
INSERT INTO `cmf_region` VALUES (10000582, 130983, '黄骅市', 10000045, '3');
INSERT INTO `cmf_region` VALUES (10000583, 130984, '河间市', 10000045, '3');
INSERT INTO `cmf_region` VALUES (10000584, 131002, '安次区', 10000046, '3');
INSERT INTO `cmf_region` VALUES (10000585, 131003, '广阳区', 10000046, '3');
INSERT INTO `cmf_region` VALUES (10000586, 131022, '固安县', 10000046, '3');
INSERT INTO `cmf_region` VALUES (10000587, 131023, '永清县', 10000046, '3');
INSERT INTO `cmf_region` VALUES (10000588, 131024, '香河县', 10000046, '3');
INSERT INTO `cmf_region` VALUES (10000589, 131025, '大城县', 10000046, '3');
INSERT INTO `cmf_region` VALUES (10000590, 131026, '文安县', 10000046, '3');
INSERT INTO `cmf_region` VALUES (10000591, 131028, '大厂回族自治县', 10000046, '3');
INSERT INTO `cmf_region` VALUES (10000592, 131081, '霸州市', 10000046, '3');
INSERT INTO `cmf_region` VALUES (10000593, 131082, '三河市', 10000046, '3');
INSERT INTO `cmf_region` VALUES (10000594, 131090, '开发区', 10000046, '3');
INSERT INTO `cmf_region` VALUES (10000595, 131102, '桃城区', 10000047, '3');
INSERT INTO `cmf_region` VALUES (10000596, 131103, '冀州区', 10000047, '3');
INSERT INTO `cmf_region` VALUES (10000597, 131121, '枣强县', 10000047, '3');
INSERT INTO `cmf_region` VALUES (10000598, 131122, '武邑县', 10000047, '3');
INSERT INTO `cmf_region` VALUES (10000599, 131123, '武强县', 10000047, '3');
INSERT INTO `cmf_region` VALUES (10000600, 131124, '饶阳县', 10000047, '3');
INSERT INTO `cmf_region` VALUES (10000601, 131125, '安平县', 10000047, '3');
INSERT INTO `cmf_region` VALUES (10000602, 131126, '故城县', 10000047, '3');
INSERT INTO `cmf_region` VALUES (10000603, 131127, '景县', 10000047, '3');
INSERT INTO `cmf_region` VALUES (10000604, 131128, '阜城县', 10000047, '3');
INSERT INTO `cmf_region` VALUES (10000605, 131182, '深州市', 10000047, '3');
INSERT INTO `cmf_region` VALUES (10000606, 140105, '小店区', 10000048, '3');
INSERT INTO `cmf_region` VALUES (10000607, 140106, '迎泽区', 10000048, '3');
INSERT INTO `cmf_region` VALUES (10000608, 140107, '杏花岭区', 10000048, '3');
INSERT INTO `cmf_region` VALUES (10000609, 140108, '尖草坪区', 10000048, '3');
INSERT INTO `cmf_region` VALUES (10000610, 140109, '万柏林区', 10000048, '3');
INSERT INTO `cmf_region` VALUES (10000611, 140110, '晋源区', 10000048, '3');
INSERT INTO `cmf_region` VALUES (10000612, 140121, '清徐县', 10000048, '3');
INSERT INTO `cmf_region` VALUES (10000613, 140122, '阳曲县', 10000048, '3');
INSERT INTO `cmf_region` VALUES (10000614, 140123, '娄烦县', 10000048, '3');
INSERT INTO `cmf_region` VALUES (10000615, 140181, '古交市', 10000048, '3');
INSERT INTO `cmf_region` VALUES (10000616, 140212, '新荣区', 10000049, '3');
INSERT INTO `cmf_region` VALUES (10000617, 140213, '平城区', 10000049, '3');
INSERT INTO `cmf_region` VALUES (10000618, 140214, '云冈区', 10000049, '3');
INSERT INTO `cmf_region` VALUES (10000619, 140215, '云州区', 10000049, '3');
INSERT INTO `cmf_region` VALUES (10000620, 140221, '阳高县', 10000049, '3');
INSERT INTO `cmf_region` VALUES (10000621, 140222, '天镇县', 10000049, '3');
INSERT INTO `cmf_region` VALUES (10000622, 140223, '广灵县', 10000049, '3');
INSERT INTO `cmf_region` VALUES (10000623, 140224, '灵丘县', 10000049, '3');
INSERT INTO `cmf_region` VALUES (10000624, 140225, '浑源县', 10000049, '3');
INSERT INTO `cmf_region` VALUES (10000625, 140226, '左云县', 10000049, '3');
INSERT INTO `cmf_region` VALUES (10000626, 140302, '城区', 10000050, '3');
INSERT INTO `cmf_region` VALUES (10000627, 140303, '矿区', 10000050, '3');
INSERT INTO `cmf_region` VALUES (10000628, 140311, '郊区', 10000050, '3');
INSERT INTO `cmf_region` VALUES (10000629, 140321, '平定县', 10000050, '3');
INSERT INTO `cmf_region` VALUES (10000630, 140322, '盂县', 10000050, '3');
INSERT INTO `cmf_region` VALUES (10000631, 140403, '潞州区', 10000051, '3');
INSERT INTO `cmf_region` VALUES (10000632, 140404, '上党区', 10000051, '3');
INSERT INTO `cmf_region` VALUES (10000633, 140405, '屯留区', 10000051, '3');
INSERT INTO `cmf_region` VALUES (10000634, 140406, '潞城区', 10000051, '3');
INSERT INTO `cmf_region` VALUES (10000635, 140423, '襄垣县', 10000051, '3');
INSERT INTO `cmf_region` VALUES (10000636, 140425, '平顺县', 10000051, '3');
INSERT INTO `cmf_region` VALUES (10000637, 140426, '黎城县', 10000051, '3');
INSERT INTO `cmf_region` VALUES (10000638, 140427, '壶关县', 10000051, '3');
INSERT INTO `cmf_region` VALUES (10000639, 140428, '长子县', 10000051, '3');
INSERT INTO `cmf_region` VALUES (10000640, 140429, '武乡县', 10000051, '3');
INSERT INTO `cmf_region` VALUES (10000641, 140430, '沁县', 10000051, '3');
INSERT INTO `cmf_region` VALUES (10000642, 140431, '沁源县', 10000051, '3');
INSERT INTO `cmf_region` VALUES (10000643, 140502, '城区', 10000052, '3');
INSERT INTO `cmf_region` VALUES (10000644, 140521, '沁水县', 10000052, '3');
INSERT INTO `cmf_region` VALUES (10000645, 140522, '阳城县', 10000052, '3');
INSERT INTO `cmf_region` VALUES (10000646, 140524, '陵川县', 10000052, '3');
INSERT INTO `cmf_region` VALUES (10000647, 140525, '泽州县', 10000052, '3');
INSERT INTO `cmf_region` VALUES (10000648, 140581, '高平市', 10000052, '3');
INSERT INTO `cmf_region` VALUES (10000649, 140602, '朔城区', 10000053, '3');
INSERT INTO `cmf_region` VALUES (10000650, 140603, '平鲁区', 10000053, '3');
INSERT INTO `cmf_region` VALUES (10000651, 140621, '山阴县', 10000053, '3');
INSERT INTO `cmf_region` VALUES (10000652, 140622, '应县', 10000053, '3');
INSERT INTO `cmf_region` VALUES (10000653, 140623, '右玉县', 10000053, '3');
INSERT INTO `cmf_region` VALUES (10000654, 140681, '怀仁市', 10000053, '3');
INSERT INTO `cmf_region` VALUES (10000655, 140702, '榆次区', 10000054, '3');
INSERT INTO `cmf_region` VALUES (10000656, 140721, '榆社县', 10000054, '3');
INSERT INTO `cmf_region` VALUES (10000657, 140722, '左权县', 10000054, '3');
INSERT INTO `cmf_region` VALUES (10000658, 140723, '和顺县', 10000054, '3');
INSERT INTO `cmf_region` VALUES (10000659, 140724, '昔阳县', 10000054, '3');
INSERT INTO `cmf_region` VALUES (10000660, 140725, '寿阳县', 10000054, '3');
INSERT INTO `cmf_region` VALUES (10000661, 140726, '太谷县', 10000054, '3');
INSERT INTO `cmf_region` VALUES (10000662, 140727, '祁县', 10000054, '3');
INSERT INTO `cmf_region` VALUES (10000663, 140728, '平遥县', 10000054, '3');
INSERT INTO `cmf_region` VALUES (10000664, 140729, '灵石县', 10000054, '3');
INSERT INTO `cmf_region` VALUES (10000665, 140781, '介休市', 10000054, '3');
INSERT INTO `cmf_region` VALUES (10000666, 140802, '盐湖区', 10000055, '3');
INSERT INTO `cmf_region` VALUES (10000667, 140821, '临猗县', 10000055, '3');
INSERT INTO `cmf_region` VALUES (10000668, 140822, '万荣县', 10000055, '3');
INSERT INTO `cmf_region` VALUES (10000669, 140823, '闻喜县', 10000055, '3');
INSERT INTO `cmf_region` VALUES (10000670, 140824, '稷山县', 10000055, '3');
INSERT INTO `cmf_region` VALUES (10000671, 140825, '新绛县', 10000055, '3');
INSERT INTO `cmf_region` VALUES (10000672, 140826, '绛县', 10000055, '3');
INSERT INTO `cmf_region` VALUES (10000673, 140827, '垣曲县', 10000055, '3');
INSERT INTO `cmf_region` VALUES (10000674, 140828, '夏县', 10000055, '3');
INSERT INTO `cmf_region` VALUES (10000675, 140829, '平陆县', 10000055, '3');
INSERT INTO `cmf_region` VALUES (10000676, 140830, '芮城县', 10000055, '3');
INSERT INTO `cmf_region` VALUES (10000677, 140881, '永济市', 10000055, '3');
INSERT INTO `cmf_region` VALUES (10000678, 140882, '河津市', 10000055, '3');
INSERT INTO `cmf_region` VALUES (10000679, 140902, '忻府区', 10000056, '3');
INSERT INTO `cmf_region` VALUES (10000680, 140921, '定襄县', 10000056, '3');
INSERT INTO `cmf_region` VALUES (10000681, 140922, '五台县', 10000056, '3');
INSERT INTO `cmf_region` VALUES (10000682, 140923, '代县', 10000056, '3');
INSERT INTO `cmf_region` VALUES (10000683, 140924, '繁峙县', 10000056, '3');
INSERT INTO `cmf_region` VALUES (10000684, 140925, '宁武县', 10000056, '3');
INSERT INTO `cmf_region` VALUES (10000685, 140926, '静乐县', 10000056, '3');
INSERT INTO `cmf_region` VALUES (10000686, 140927, '神池县', 10000056, '3');
INSERT INTO `cmf_region` VALUES (10000687, 140928, '五寨县', 10000056, '3');
INSERT INTO `cmf_region` VALUES (10000688, 140929, '岢岚县', 10000056, '3');
INSERT INTO `cmf_region` VALUES (10000689, 140930, '河曲县', 10000056, '3');
INSERT INTO `cmf_region` VALUES (10000690, 140931, '保德县', 10000056, '3');
INSERT INTO `cmf_region` VALUES (10000691, 140932, '偏关县', 10000056, '3');
INSERT INTO `cmf_region` VALUES (10000692, 140981, '原平市', 10000056, '3');
INSERT INTO `cmf_region` VALUES (10000693, 141002, '尧都区', 10000057, '3');
INSERT INTO `cmf_region` VALUES (10000694, 141021, '曲沃县', 10000057, '3');
INSERT INTO `cmf_region` VALUES (10000695, 141022, '翼城县', 10000057, '3');
INSERT INTO `cmf_region` VALUES (10000696, 141023, '襄汾县', 10000057, '3');
INSERT INTO `cmf_region` VALUES (10000697, 141024, '洪洞县', 10000057, '3');
INSERT INTO `cmf_region` VALUES (10000698, 141025, '古县', 10000057, '3');
INSERT INTO `cmf_region` VALUES (10000699, 141026, '安泽县', 10000057, '3');
INSERT INTO `cmf_region` VALUES (10000700, 141027, '浮山县', 10000057, '3');
INSERT INTO `cmf_region` VALUES (10000701, 141028, '吉县', 10000057, '3');
INSERT INTO `cmf_region` VALUES (10000702, 141029, '乡宁县', 10000057, '3');
INSERT INTO `cmf_region` VALUES (10000703, 141030, '大宁县', 10000057, '3');
INSERT INTO `cmf_region` VALUES (10000704, 141031, '隰县', 10000057, '3');
INSERT INTO `cmf_region` VALUES (10000705, 141032, '永和县', 10000057, '3');
INSERT INTO `cmf_region` VALUES (10000706, 141033, '蒲县', 10000057, '3');
INSERT INTO `cmf_region` VALUES (10000707, 141034, '汾西县', 10000057, '3');
INSERT INTO `cmf_region` VALUES (10000708, 141081, '侯马市', 10000057, '3');
INSERT INTO `cmf_region` VALUES (10000709, 141082, '霍州市', 10000057, '3');
INSERT INTO `cmf_region` VALUES (10000710, 141102, '离石区', 10000058, '3');
INSERT INTO `cmf_region` VALUES (10000711, 141121, '文水县', 10000058, '3');
INSERT INTO `cmf_region` VALUES (10000712, 141122, '交城县', 10000058, '3');
INSERT INTO `cmf_region` VALUES (10000713, 141123, '兴县', 10000058, '3');
INSERT INTO `cmf_region` VALUES (10000714, 141124, '临县', 10000058, '3');
INSERT INTO `cmf_region` VALUES (10000715, 141125, '柳林县', 10000058, '3');
INSERT INTO `cmf_region` VALUES (10000716, 141126, '石楼县', 10000058, '3');
INSERT INTO `cmf_region` VALUES (10000717, 141127, '岚县', 10000058, '3');
INSERT INTO `cmf_region` VALUES (10000718, 141128, '方山县', 10000058, '3');
INSERT INTO `cmf_region` VALUES (10000719, 141129, '中阳县', 10000058, '3');
INSERT INTO `cmf_region` VALUES (10000720, 141130, '交口县', 10000058, '3');
INSERT INTO `cmf_region` VALUES (10000721, 141181, '孝义市', 10000058, '3');
INSERT INTO `cmf_region` VALUES (10000722, 141182, '汾阳市', 10000058, '3');
INSERT INTO `cmf_region` VALUES (10000723, 150102, '新城区', 10000059, '3');
INSERT INTO `cmf_region` VALUES (10000724, 150103, '回民区', 10000059, '3');
INSERT INTO `cmf_region` VALUES (10000725, 150104, '玉泉区', 10000059, '3');
INSERT INTO `cmf_region` VALUES (10000726, 150105, '赛罕区', 10000059, '3');
INSERT INTO `cmf_region` VALUES (10000727, 150121, '土默特左旗', 10000059, '3');
INSERT INTO `cmf_region` VALUES (10000728, 150122, '托克托县', 10000059, '3');
INSERT INTO `cmf_region` VALUES (10000729, 150123, '和林格尔县', 10000059, '3');
INSERT INTO `cmf_region` VALUES (10000730, 150124, '清水河县', 10000059, '3');
INSERT INTO `cmf_region` VALUES (10000731, 150125, '武川县', 10000059, '3');
INSERT INTO `cmf_region` VALUES (10000732, 150202, '东河区', 10000060, '3');
INSERT INTO `cmf_region` VALUES (10000733, 150203, '昆都仑区', 10000060, '3');
INSERT INTO `cmf_region` VALUES (10000734, 150204, '青山区', 10000060, '3');
INSERT INTO `cmf_region` VALUES (10000735, 150205, '石拐区', 10000060, '3');
INSERT INTO `cmf_region` VALUES (10000736, 150206, '白云鄂博矿区', 10000060, '3');
INSERT INTO `cmf_region` VALUES (10000737, 150207, '九原区', 10000060, '3');
INSERT INTO `cmf_region` VALUES (10000738, 150221, '土默特右旗', 10000060, '3');
INSERT INTO `cmf_region` VALUES (10000739, 150222, '固阳县', 10000060, '3');
INSERT INTO `cmf_region` VALUES (10000740, 150223, '达尔罕茂明安联合旗', 10000060, '3');
INSERT INTO `cmf_region` VALUES (10000741, 150302, '海勃湾区', 10000061, '3');
INSERT INTO `cmf_region` VALUES (10000742, 150303, '海南区', 10000061, '3');
INSERT INTO `cmf_region` VALUES (10000743, 150304, '乌达区', 10000061, '3');
INSERT INTO `cmf_region` VALUES (10000744, 150402, '红山区', 10000062, '3');
INSERT INTO `cmf_region` VALUES (10000745, 150403, '元宝山区', 10000062, '3');
INSERT INTO `cmf_region` VALUES (10000746, 150404, '松山区', 10000062, '3');
INSERT INTO `cmf_region` VALUES (10000747, 150421, '阿鲁科尔沁旗', 10000062, '3');
INSERT INTO `cmf_region` VALUES (10000748, 150422, '巴林左旗', 10000062, '3');
INSERT INTO `cmf_region` VALUES (10000749, 150423, '巴林右旗', 10000062, '3');
INSERT INTO `cmf_region` VALUES (10000750, 150424, '林西县', 10000062, '3');
INSERT INTO `cmf_region` VALUES (10000751, 150425, '克什克腾旗', 10000062, '3');
INSERT INTO `cmf_region` VALUES (10000752, 150426, '翁牛特旗', 10000062, '3');
INSERT INTO `cmf_region` VALUES (10000753, 150428, '喀喇沁旗', 10000062, '3');
INSERT INTO `cmf_region` VALUES (10000754, 150429, '宁城县', 10000062, '3');
INSERT INTO `cmf_region` VALUES (10000755, 150430, '敖汉旗', 10000062, '3');
INSERT INTO `cmf_region` VALUES (10000756, 150502, '科尔沁区', 10000063, '3');
INSERT INTO `cmf_region` VALUES (10000757, 150521, '科尔沁左翼中旗', 10000063, '3');
INSERT INTO `cmf_region` VALUES (10000758, 150522, '科尔沁左翼后旗', 10000063, '3');
INSERT INTO `cmf_region` VALUES (10000759, 150523, '开鲁县', 10000063, '3');
INSERT INTO `cmf_region` VALUES (10000760, 150524, '库伦旗', 10000063, '3');
INSERT INTO `cmf_region` VALUES (10000761, 150525, '奈曼旗', 10000063, '3');
INSERT INTO `cmf_region` VALUES (10000762, 150526, '扎鲁特旗', 10000063, '3');
INSERT INTO `cmf_region` VALUES (10000763, 150581, '霍林郭勒市', 10000063, '3');
INSERT INTO `cmf_region` VALUES (10000764, 150602, '东胜区', 10000064, '3');
INSERT INTO `cmf_region` VALUES (10000765, 150603, '康巴什区', 10000064, '3');
INSERT INTO `cmf_region` VALUES (10000766, 150621, '达拉特旗', 10000064, '3');
INSERT INTO `cmf_region` VALUES (10000767, 150622, '准格尔旗', 10000064, '3');
INSERT INTO `cmf_region` VALUES (10000768, 150623, '鄂托克前旗', 10000064, '3');
INSERT INTO `cmf_region` VALUES (10000769, 150624, '鄂托克旗', 10000064, '3');
INSERT INTO `cmf_region` VALUES (10000770, 150625, '杭锦旗', 10000064, '3');
INSERT INTO `cmf_region` VALUES (10000771, 150626, '乌审旗', 10000064, '3');
INSERT INTO `cmf_region` VALUES (10000772, 150627, '伊金霍洛旗', 10000064, '3');
INSERT INTO `cmf_region` VALUES (10000773, 150702, '海拉尔区', 10000065, '3');
INSERT INTO `cmf_region` VALUES (10000774, 150703, '扎赉诺尔区', 10000065, '3');
INSERT INTO `cmf_region` VALUES (10000775, 150721, '阿荣旗', 10000065, '3');
INSERT INTO `cmf_region` VALUES (10000776, 150722, '莫力达瓦达斡尔族自治旗', 10000065, '3');
INSERT INTO `cmf_region` VALUES (10000777, 150723, '鄂伦春自治旗', 10000065, '3');
INSERT INTO `cmf_region` VALUES (10000778, 150724, '鄂温克族自治旗', 10000065, '3');
INSERT INTO `cmf_region` VALUES (10000779, 150725, '陈巴尔虎旗', 10000065, '3');
INSERT INTO `cmf_region` VALUES (10000780, 150726, '新巴尔虎左旗', 10000065, '3');
INSERT INTO `cmf_region` VALUES (10000781, 150727, '新巴尔虎右旗', 10000065, '3');
INSERT INTO `cmf_region` VALUES (10000782, 150781, '满洲里市', 10000065, '3');
INSERT INTO `cmf_region` VALUES (10000783, 150782, '牙克石市', 10000065, '3');
INSERT INTO `cmf_region` VALUES (10000784, 150783, '扎兰屯市', 10000065, '3');
INSERT INTO `cmf_region` VALUES (10000785, 150784, '额尔古纳市', 10000065, '3');
INSERT INTO `cmf_region` VALUES (10000786, 150785, '根河市', 10000065, '3');
INSERT INTO `cmf_region` VALUES (10000787, 150802, '临河区', 10000066, '3');
INSERT INTO `cmf_region` VALUES (10000788, 150821, '五原县', 10000066, '3');
INSERT INTO `cmf_region` VALUES (10000789, 150822, '磴口县', 10000066, '3');
INSERT INTO `cmf_region` VALUES (10000790, 150823, '乌拉特前旗', 10000066, '3');
INSERT INTO `cmf_region` VALUES (10000791, 150824, '乌拉特中旗', 10000066, '3');
INSERT INTO `cmf_region` VALUES (10000792, 150825, '乌拉特后旗', 10000066, '3');
INSERT INTO `cmf_region` VALUES (10000793, 150826, '杭锦后旗', 10000066, '3');
INSERT INTO `cmf_region` VALUES (10000794, 150902, '集宁区', 10000067, '3');
INSERT INTO `cmf_region` VALUES (10000795, 150921, '卓资县', 10000067, '3');
INSERT INTO `cmf_region` VALUES (10000796, 150922, '化德县', 10000067, '3');
INSERT INTO `cmf_region` VALUES (10000797, 150923, '商都县', 10000067, '3');
INSERT INTO `cmf_region` VALUES (10000798, 150924, '兴和县', 10000067, '3');
INSERT INTO `cmf_region` VALUES (10000799, 150925, '凉城县', 10000067, '3');
INSERT INTO `cmf_region` VALUES (10000800, 150926, '察哈尔右翼前旗', 10000067, '3');
INSERT INTO `cmf_region` VALUES (10000801, 150927, '察哈尔右翼中旗', 10000067, '3');
INSERT INTO `cmf_region` VALUES (10000802, 150928, '察哈尔右翼后旗', 10000067, '3');
INSERT INTO `cmf_region` VALUES (10000803, 150929, '四子王旗', 10000067, '3');
INSERT INTO `cmf_region` VALUES (10000804, 150981, '丰镇市', 10000067, '3');
INSERT INTO `cmf_region` VALUES (10000805, 152201, '乌兰浩特市', 10000068, '3');
INSERT INTO `cmf_region` VALUES (10000806, 152202, '阿尔山市', 10000068, '3');
INSERT INTO `cmf_region` VALUES (10000807, 152221, '科尔沁右翼前旗', 10000068, '3');
INSERT INTO `cmf_region` VALUES (10000808, 152222, '科尔沁右翼中旗', 10000068, '3');
INSERT INTO `cmf_region` VALUES (10000809, 152223, '扎赉特旗', 10000068, '3');
INSERT INTO `cmf_region` VALUES (10000810, 152224, '突泉县', 10000068, '3');
INSERT INTO `cmf_region` VALUES (10000811, 152501, '二连浩特市', 10000069, '3');
INSERT INTO `cmf_region` VALUES (10000812, 152502, '锡林浩特市', 10000069, '3');
INSERT INTO `cmf_region` VALUES (10000813, 152522, '阿巴嘎旗', 10000069, '3');
INSERT INTO `cmf_region` VALUES (10000814, 152523, '苏尼特左旗', 10000069, '3');
INSERT INTO `cmf_region` VALUES (10000815, 152524, '苏尼特右旗', 10000069, '3');
INSERT INTO `cmf_region` VALUES (10000816, 152525, '东乌珠穆沁旗', 10000069, '3');
INSERT INTO `cmf_region` VALUES (10000817, 152526, '西乌珠穆沁旗', 10000069, '3');
INSERT INTO `cmf_region` VALUES (10000818, 152527, '太仆寺旗', 10000069, '3');
INSERT INTO `cmf_region` VALUES (10000819, 152528, '镶黄旗', 10000069, '3');
INSERT INTO `cmf_region` VALUES (10000820, 152529, '正镶白旗', 10000069, '3');
INSERT INTO `cmf_region` VALUES (10000821, 152530, '正蓝旗', 10000069, '3');
INSERT INTO `cmf_region` VALUES (10000822, 152531, '多伦县', 10000069, '3');
INSERT INTO `cmf_region` VALUES (10000823, 152921, '阿拉善左旗', 10000070, '3');
INSERT INTO `cmf_region` VALUES (10000824, 152922, '阿拉善右旗', 10000070, '3');
INSERT INTO `cmf_region` VALUES (10000825, 152923, '额济纳旗', 10000070, '3');
INSERT INTO `cmf_region` VALUES (10000826, 210102, '和平区', 10000071, '3');
INSERT INTO `cmf_region` VALUES (10000827, 210103, '沈河区', 10000071, '3');
INSERT INTO `cmf_region` VALUES (10000828, 210104, '大东区', 10000071, '3');
INSERT INTO `cmf_region` VALUES (10000829, 210105, '皇姑区', 10000071, '3');
INSERT INTO `cmf_region` VALUES (10000830, 210106, '铁西区', 10000071, '3');
INSERT INTO `cmf_region` VALUES (10000831, 210111, '苏家屯区', 10000071, '3');
INSERT INTO `cmf_region` VALUES (10000832, 210112, '浑南区', 10000071, '3');
INSERT INTO `cmf_region` VALUES (10000833, 210113, '沈北新区', 10000071, '3');
INSERT INTO `cmf_region` VALUES (10000834, 210114, '于洪区', 10000071, '3');
INSERT INTO `cmf_region` VALUES (10000835, 210115, '辽中区', 10000071, '3');
INSERT INTO `cmf_region` VALUES (10000836, 210123, '康平县', 10000071, '3');
INSERT INTO `cmf_region` VALUES (10000837, 210124, '法库县', 10000071, '3');
INSERT INTO `cmf_region` VALUES (10000838, 210181, '新民市', 10000071, '3');
INSERT INTO `cmf_region` VALUES (10000839, 210190, '经济技术开发区', 10000071, '3');
INSERT INTO `cmf_region` VALUES (10000840, 210202, '中山区', 10000072, '3');
INSERT INTO `cmf_region` VALUES (10000841, 210203, '西岗区', 10000072, '3');
INSERT INTO `cmf_region` VALUES (10000842, 210204, '沙河口区', 10000072, '3');
INSERT INTO `cmf_region` VALUES (10000843, 210211, '甘井子区', 10000072, '3');
INSERT INTO `cmf_region` VALUES (10000844, 210212, '旅顺口区', 10000072, '3');
INSERT INTO `cmf_region` VALUES (10000845, 210213, '金州区', 10000072, '3');
INSERT INTO `cmf_region` VALUES (10000846, 210214, '普兰店区', 10000072, '3');
INSERT INTO `cmf_region` VALUES (10000847, 210224, '长海县', 10000072, '3');
INSERT INTO `cmf_region` VALUES (10000848, 210281, '瓦房店市', 10000072, '3');
INSERT INTO `cmf_region` VALUES (10000849, 210283, '庄河市', 10000072, '3');
INSERT INTO `cmf_region` VALUES (10000850, 210302, '铁东区', 10000073, '3');
INSERT INTO `cmf_region` VALUES (10000851, 210303, '铁西区', 10000073, '3');
INSERT INTO `cmf_region` VALUES (10000852, 210304, '立山区', 10000073, '3');
INSERT INTO `cmf_region` VALUES (10000853, 210311, '千山区', 10000073, '3');
INSERT INTO `cmf_region` VALUES (10000854, 210321, '台安县', 10000073, '3');
INSERT INTO `cmf_region` VALUES (10000855, 210323, '岫岩满族自治县', 10000073, '3');
INSERT INTO `cmf_region` VALUES (10000856, 210381, '海城市', 10000073, '3');
INSERT INTO `cmf_region` VALUES (10000857, 210390, '高新区', 10000073, '3');
INSERT INTO `cmf_region` VALUES (10000858, 210402, '新抚区', 10000074, '3');
INSERT INTO `cmf_region` VALUES (10000859, 210403, '东洲区', 10000074, '3');
INSERT INTO `cmf_region` VALUES (10000860, 210404, '望花区', 10000074, '3');
INSERT INTO `cmf_region` VALUES (10000861, 210411, '顺城区', 10000074, '3');
INSERT INTO `cmf_region` VALUES (10000862, 210421, '抚顺县', 10000074, '3');
INSERT INTO `cmf_region` VALUES (10000863, 210422, '新宾满族自治县', 10000074, '3');
INSERT INTO `cmf_region` VALUES (10000864, 210423, '清原满族自治县', 10000074, '3');
INSERT INTO `cmf_region` VALUES (10000865, 210502, '平山区', 10000075, '3');
INSERT INTO `cmf_region` VALUES (10000866, 210503, '溪湖区', 10000075, '3');
INSERT INTO `cmf_region` VALUES (10000867, 210504, '明山区', 10000075, '3');
INSERT INTO `cmf_region` VALUES (10000868, 210505, '南芬区', 10000075, '3');
INSERT INTO `cmf_region` VALUES (10000869, 210521, '本溪满族自治县', 10000075, '3');
INSERT INTO `cmf_region` VALUES (10000870, 210522, '桓仁满族自治县', 10000075, '3');
INSERT INTO `cmf_region` VALUES (10000871, 210602, '元宝区', 10000076, '3');
INSERT INTO `cmf_region` VALUES (10000872, 210603, '振兴区', 10000076, '3');
INSERT INTO `cmf_region` VALUES (10000873, 210604, '振安区', 10000076, '3');
INSERT INTO `cmf_region` VALUES (10000874, 210624, '宽甸满族自治县', 10000076, '3');
INSERT INTO `cmf_region` VALUES (10000875, 210681, '东港市', 10000076, '3');
INSERT INTO `cmf_region` VALUES (10000876, 210682, '凤城市', 10000076, '3');
INSERT INTO `cmf_region` VALUES (10000877, 210702, '古塔区', 10000077, '3');
INSERT INTO `cmf_region` VALUES (10000878, 210703, '凌河区', 10000077, '3');
INSERT INTO `cmf_region` VALUES (10000879, 210711, '太和区', 10000077, '3');
INSERT INTO `cmf_region` VALUES (10000880, 210726, '黑山县', 10000077, '3');
INSERT INTO `cmf_region` VALUES (10000881, 210727, '义县', 10000077, '3');
INSERT INTO `cmf_region` VALUES (10000882, 210781, '凌海市', 10000077, '3');
INSERT INTO `cmf_region` VALUES (10000883, 210782, '北镇市', 10000077, '3');
INSERT INTO `cmf_region` VALUES (10000884, 210793, '经济技术开发区', 10000077, '3');
INSERT INTO `cmf_region` VALUES (10000885, 210802, '站前区', 10000078, '3');
INSERT INTO `cmf_region` VALUES (10000886, 210803, '西市区', 10000078, '3');
INSERT INTO `cmf_region` VALUES (10000887, 210804, '鲅鱼圈区', 10000078, '3');
INSERT INTO `cmf_region` VALUES (10000888, 210811, '老边区', 10000078, '3');
INSERT INTO `cmf_region` VALUES (10000889, 210881, '盖州市', 10000078, '3');
INSERT INTO `cmf_region` VALUES (10000890, 210882, '大石桥市', 10000078, '3');
INSERT INTO `cmf_region` VALUES (10000891, 210902, '海州区', 10000079, '3');
INSERT INTO `cmf_region` VALUES (10000892, 210903, '新邱区', 10000079, '3');
INSERT INTO `cmf_region` VALUES (10000893, 210904, '太平区', 10000079, '3');
INSERT INTO `cmf_region` VALUES (10000894, 210905, '清河门区', 10000079, '3');
INSERT INTO `cmf_region` VALUES (10000895, 210911, '细河区', 10000079, '3');
INSERT INTO `cmf_region` VALUES (10000896, 210921, '阜新蒙古族自治县', 10000079, '3');
INSERT INTO `cmf_region` VALUES (10000897, 210922, '彰武县', 10000079, '3');
INSERT INTO `cmf_region` VALUES (10000898, 211002, '白塔区', 10000080, '3');
INSERT INTO `cmf_region` VALUES (10000899, 211003, '文圣区', 10000080, '3');
INSERT INTO `cmf_region` VALUES (10000900, 211004, '宏伟区', 10000080, '3');
INSERT INTO `cmf_region` VALUES (10000901, 211005, '弓长岭区', 10000080, '3');
INSERT INTO `cmf_region` VALUES (10000902, 211011, '太子河区', 10000080, '3');
INSERT INTO `cmf_region` VALUES (10000903, 211021, '辽阳县', 10000080, '3');
INSERT INTO `cmf_region` VALUES (10000904, 211081, '灯塔市', 10000080, '3');
INSERT INTO `cmf_region` VALUES (10000905, 211102, '双台子区', 10000081, '3');
INSERT INTO `cmf_region` VALUES (10000906, 211103, '兴隆台区', 10000081, '3');
INSERT INTO `cmf_region` VALUES (10000907, 211104, '大洼区', 10000081, '3');
INSERT INTO `cmf_region` VALUES (10000908, 211122, '盘山县', 10000081, '3');
INSERT INTO `cmf_region` VALUES (10000909, 211202, '银州区', 10000082, '3');
INSERT INTO `cmf_region` VALUES (10000910, 211204, '清河区', 10000082, '3');
INSERT INTO `cmf_region` VALUES (10000911, 211221, '铁岭县', 10000082, '3');
INSERT INTO `cmf_region` VALUES (10000912, 211223, '西丰县', 10000082, '3');
INSERT INTO `cmf_region` VALUES (10000913, 211224, '昌图县', 10000082, '3');
INSERT INTO `cmf_region` VALUES (10000914, 211281, '调兵山市', 10000082, '3');
INSERT INTO `cmf_region` VALUES (10000915, 211282, '开原市', 10000082, '3');
INSERT INTO `cmf_region` VALUES (10000916, 211302, '双塔区', 10000083, '3');
INSERT INTO `cmf_region` VALUES (10000917, 211303, '龙城区', 10000083, '3');
INSERT INTO `cmf_region` VALUES (10000918, 211321, '朝阳县', 10000083, '3');
INSERT INTO `cmf_region` VALUES (10000919, 211322, '建平县', 10000083, '3');
INSERT INTO `cmf_region` VALUES (10000920, 211324, '喀喇沁左翼蒙古族自治县', 10000083, '3');
INSERT INTO `cmf_region` VALUES (10000921, 211381, '北票市', 10000083, '3');
INSERT INTO `cmf_region` VALUES (10000922, 211382, '凌源市', 10000083, '3');
INSERT INTO `cmf_region` VALUES (10000923, 211402, '连山区', 10000084, '3');
INSERT INTO `cmf_region` VALUES (10000924, 211403, '龙港区', 10000084, '3');
INSERT INTO `cmf_region` VALUES (10000925, 211404, '南票区', 10000084, '3');
INSERT INTO `cmf_region` VALUES (10000926, 211421, '绥中县', 10000084, '3');
INSERT INTO `cmf_region` VALUES (10000927, 211422, '建昌县', 10000084, '3');
INSERT INTO `cmf_region` VALUES (10000928, 211481, '兴城市', 10000084, '3');
INSERT INTO `cmf_region` VALUES (10000929, 220102, '南关区', 10000085, '3');
INSERT INTO `cmf_region` VALUES (10000930, 220103, '宽城区', 10000085, '3');
INSERT INTO `cmf_region` VALUES (10000931, 220104, '朝阳区', 10000085, '3');
INSERT INTO `cmf_region` VALUES (10000932, 220105, '二道区', 10000085, '3');
INSERT INTO `cmf_region` VALUES (10000933, 220106, '绿园区', 10000085, '3');
INSERT INTO `cmf_region` VALUES (10000934, 220112, '双阳区', 10000085, '3');
INSERT INTO `cmf_region` VALUES (10000935, 220113, '九台区', 10000085, '3');
INSERT INTO `cmf_region` VALUES (10000936, 220122, '农安县', 10000085, '3');
INSERT INTO `cmf_region` VALUES (10000937, 220182, '榆树市', 10000085, '3');
INSERT INTO `cmf_region` VALUES (10000938, 220183, '德惠市', 10000085, '3');
INSERT INTO `cmf_region` VALUES (10000939, 220192, '经济技术开发区', 10000085, '3');
INSERT INTO `cmf_region` VALUES (10000940, 220202, '昌邑区', 10000086, '3');
INSERT INTO `cmf_region` VALUES (10000941, 220203, '龙潭区', 10000086, '3');
INSERT INTO `cmf_region` VALUES (10000942, 220204, '船营区', 10000086, '3');
INSERT INTO `cmf_region` VALUES (10000943, 220211, '丰满区', 10000086, '3');
INSERT INTO `cmf_region` VALUES (10000944, 220221, '永吉县', 10000086, '3');
INSERT INTO `cmf_region` VALUES (10000945, 220281, '蛟河市', 10000086, '3');
INSERT INTO `cmf_region` VALUES (10000946, 220282, '桦甸市', 10000086, '3');
INSERT INTO `cmf_region` VALUES (10000947, 220283, '舒兰市', 10000086, '3');
INSERT INTO `cmf_region` VALUES (10000948, 220284, '磐石市', 10000086, '3');
INSERT INTO `cmf_region` VALUES (10000949, 220302, '铁西区', 10000087, '3');
INSERT INTO `cmf_region` VALUES (10000950, 220303, '铁东区', 10000087, '3');
INSERT INTO `cmf_region` VALUES (10000951, 220322, '梨树县', 10000087, '3');
INSERT INTO `cmf_region` VALUES (10000952, 220323, '伊通满族自治县', 10000087, '3');
INSERT INTO `cmf_region` VALUES (10000953, 220381, '公主岭市', 10000087, '3');
INSERT INTO `cmf_region` VALUES (10000954, 220382, '双辽市', 10000087, '3');
INSERT INTO `cmf_region` VALUES (10000955, 220402, '龙山区', 10000088, '3');
INSERT INTO `cmf_region` VALUES (10000956, 220403, '西安区', 10000088, '3');
INSERT INTO `cmf_region` VALUES (10000957, 220421, '东丰县', 10000088, '3');
INSERT INTO `cmf_region` VALUES (10000958, 220422, '东辽县', 10000088, '3');
INSERT INTO `cmf_region` VALUES (10000959, 220502, '东昌区', 10000089, '3');
INSERT INTO `cmf_region` VALUES (10000960, 220503, '二道江区', 10000089, '3');
INSERT INTO `cmf_region` VALUES (10000961, 220521, '通化县', 10000089, '3');
INSERT INTO `cmf_region` VALUES (10000962, 220523, '辉南县', 10000089, '3');
INSERT INTO `cmf_region` VALUES (10000963, 220524, '柳河县', 10000089, '3');
INSERT INTO `cmf_region` VALUES (10000964, 220581, '梅河口市', 10000089, '3');
INSERT INTO `cmf_region` VALUES (10000965, 220582, '集安市', 10000089, '3');
INSERT INTO `cmf_region` VALUES (10000966, 220602, '浑江区', 10000090, '3');
INSERT INTO `cmf_region` VALUES (10000967, 220605, '江源区', 10000090, '3');
INSERT INTO `cmf_region` VALUES (10000968, 220621, '抚松县', 10000090, '3');
INSERT INTO `cmf_region` VALUES (10000969, 220622, '靖宇县', 10000090, '3');
INSERT INTO `cmf_region` VALUES (10000970, 220623, '长白朝鲜族自治县', 10000090, '3');
INSERT INTO `cmf_region` VALUES (10000971, 220681, '临江市', 10000090, '3');
INSERT INTO `cmf_region` VALUES (10000972, 220702, '宁江区', 10000091, '3');
INSERT INTO `cmf_region` VALUES (10000973, 220721, '前郭尔罗斯蒙古族自治县', 10000091, '3');
INSERT INTO `cmf_region` VALUES (10000974, 220722, '长岭县', 10000091, '3');
INSERT INTO `cmf_region` VALUES (10000975, 220723, '乾安县', 10000091, '3');
INSERT INTO `cmf_region` VALUES (10000976, 220781, '扶余市', 10000091, '3');
INSERT INTO `cmf_region` VALUES (10000977, 220802, '洮北区', 10000092, '3');
INSERT INTO `cmf_region` VALUES (10000978, 220821, '镇赉县', 10000092, '3');
INSERT INTO `cmf_region` VALUES (10000979, 220822, '通榆县', 10000092, '3');
INSERT INTO `cmf_region` VALUES (10000980, 220881, '洮南市', 10000092, '3');
INSERT INTO `cmf_region` VALUES (10000981, 220882, '大安市', 10000092, '3');
INSERT INTO `cmf_region` VALUES (10000982, 222401, '延吉市', 10000093, '3');
INSERT INTO `cmf_region` VALUES (10000983, 222402, '图们市', 10000093, '3');
INSERT INTO `cmf_region` VALUES (10000984, 222403, '敦化市', 10000093, '3');
INSERT INTO `cmf_region` VALUES (10000985, 222404, '珲春市', 10000093, '3');
INSERT INTO `cmf_region` VALUES (10000986, 222405, '龙井市', 10000093, '3');
INSERT INTO `cmf_region` VALUES (10000987, 222406, '和龙市', 10000093, '3');
INSERT INTO `cmf_region` VALUES (10000988, 222424, '汪清县', 10000093, '3');
INSERT INTO `cmf_region` VALUES (10000989, 222426, '安图县', 10000093, '3');
INSERT INTO `cmf_region` VALUES (10000990, 230102, '道里区', 10000094, '3');
INSERT INTO `cmf_region` VALUES (10000991, 230103, '南岗区', 10000094, '3');
INSERT INTO `cmf_region` VALUES (10000992, 230104, '道外区', 10000094, '3');
INSERT INTO `cmf_region` VALUES (10000993, 230108, '平房区', 10000094, '3');
INSERT INTO `cmf_region` VALUES (10000994, 230109, '松北区', 10000094, '3');
INSERT INTO `cmf_region` VALUES (10000995, 230110, '香坊区', 10000094, '3');
INSERT INTO `cmf_region` VALUES (10000996, 230111, '呼兰区', 10000094, '3');
INSERT INTO `cmf_region` VALUES (10000997, 230112, '阿城区', 10000094, '3');
INSERT INTO `cmf_region` VALUES (10000998, 230113, '双城区', 10000094, '3');
INSERT INTO `cmf_region` VALUES (10000999, 230123, '依兰县', 10000094, '3');
INSERT INTO `cmf_region` VALUES (10001000, 230124, '方正县', 10000094, '3');
INSERT INTO `cmf_region` VALUES (10001001, 230125, '宾县', 10000094, '3');
INSERT INTO `cmf_region` VALUES (10001002, 230126, '巴彦县', 10000094, '3');
INSERT INTO `cmf_region` VALUES (10001003, 230127, '木兰县', 10000094, '3');
INSERT INTO `cmf_region` VALUES (10001004, 230128, '通河县', 10000094, '3');
INSERT INTO `cmf_region` VALUES (10001005, 230129, '延寿县', 10000094, '3');
INSERT INTO `cmf_region` VALUES (10001006, 230183, '尚志市', 10000094, '3');
INSERT INTO `cmf_region` VALUES (10001007, 230184, '五常市', 10000094, '3');
INSERT INTO `cmf_region` VALUES (10001008, 230202, '龙沙区', 10000095, '3');
INSERT INTO `cmf_region` VALUES (10001009, 230203, '建华区', 10000095, '3');
INSERT INTO `cmf_region` VALUES (10001010, 230204, '铁锋区', 10000095, '3');
INSERT INTO `cmf_region` VALUES (10001011, 230205, '昂昂溪区', 10000095, '3');
INSERT INTO `cmf_region` VALUES (10001012, 230206, '富拉尔基区', 10000095, '3');
INSERT INTO `cmf_region` VALUES (10001013, 230207, '碾子山区', 10000095, '3');
INSERT INTO `cmf_region` VALUES (10001014, 230208, '梅里斯达斡尔族区', 10000095, '3');
INSERT INTO `cmf_region` VALUES (10001015, 230221, '龙江县', 10000095, '3');
INSERT INTO `cmf_region` VALUES (10001016, 230223, '依安县', 10000095, '3');
INSERT INTO `cmf_region` VALUES (10001017, 230224, '泰来县', 10000095, '3');
INSERT INTO `cmf_region` VALUES (10001018, 230225, '甘南县', 10000095, '3');
INSERT INTO `cmf_region` VALUES (10001019, 230227, '富裕县', 10000095, '3');
INSERT INTO `cmf_region` VALUES (10001020, 230229, '克山县', 10000095, '3');
INSERT INTO `cmf_region` VALUES (10001021, 230230, '克东县', 10000095, '3');
INSERT INTO `cmf_region` VALUES (10001022, 230231, '拜泉县', 10000095, '3');
INSERT INTO `cmf_region` VALUES (10001023, 230281, '讷河市', 10000095, '3');
INSERT INTO `cmf_region` VALUES (10001024, 230302, '鸡冠区', 10000096, '3');
INSERT INTO `cmf_region` VALUES (10001025, 230303, '恒山区', 10000096, '3');
INSERT INTO `cmf_region` VALUES (10001026, 230304, '滴道区', 10000096, '3');
INSERT INTO `cmf_region` VALUES (10001027, 230305, '梨树区', 10000096, '3');
INSERT INTO `cmf_region` VALUES (10001028, 230306, '城子河区', 10000096, '3');
INSERT INTO `cmf_region` VALUES (10001029, 230307, '麻山区', 10000096, '3');
INSERT INTO `cmf_region` VALUES (10001030, 230321, '鸡东县', 10000096, '3');
INSERT INTO `cmf_region` VALUES (10001031, 230381, '虎林市', 10000096, '3');
INSERT INTO `cmf_region` VALUES (10001032, 230382, '密山市', 10000096, '3');
INSERT INTO `cmf_region` VALUES (10001033, 230402, '向阳区', 10000097, '3');
INSERT INTO `cmf_region` VALUES (10001034, 230403, '工农区', 10000097, '3');
INSERT INTO `cmf_region` VALUES (10001035, 230404, '南山区', 10000097, '3');
INSERT INTO `cmf_region` VALUES (10001036, 230405, '兴安区', 10000097, '3');
INSERT INTO `cmf_region` VALUES (10001037, 230406, '东山区', 10000097, '3');
INSERT INTO `cmf_region` VALUES (10001038, 230407, '兴山区', 10000097, '3');
INSERT INTO `cmf_region` VALUES (10001039, 230421, '萝北县', 10000097, '3');
INSERT INTO `cmf_region` VALUES (10001040, 230422, '绥滨县', 10000097, '3');
INSERT INTO `cmf_region` VALUES (10001041, 230502, '尖山区', 10000098, '3');
INSERT INTO `cmf_region` VALUES (10001042, 230503, '岭东区', 10000098, '3');
INSERT INTO `cmf_region` VALUES (10001043, 230505, '四方台区', 10000098, '3');
INSERT INTO `cmf_region` VALUES (10001044, 230506, '宝山区', 10000098, '3');
INSERT INTO `cmf_region` VALUES (10001045, 230521, '集贤县', 10000098, '3');
INSERT INTO `cmf_region` VALUES (10001046, 230522, '友谊县', 10000098, '3');
INSERT INTO `cmf_region` VALUES (10001047, 230523, '宝清县', 10000098, '3');
INSERT INTO `cmf_region` VALUES (10001048, 230524, '饶河县', 10000098, '3');
INSERT INTO `cmf_region` VALUES (10001049, 230602, '萨尔图区', 10000099, '3');
INSERT INTO `cmf_region` VALUES (10001050, 230603, '龙凤区', 10000099, '3');
INSERT INTO `cmf_region` VALUES (10001051, 230604, '让胡路区', 10000099, '3');
INSERT INTO `cmf_region` VALUES (10001052, 230605, '红岗区', 10000099, '3');
INSERT INTO `cmf_region` VALUES (10001053, 230606, '大同区', 10000099, '3');
INSERT INTO `cmf_region` VALUES (10001054, 230621, '肇州县', 10000099, '3');
INSERT INTO `cmf_region` VALUES (10001055, 230622, '肇源县', 10000099, '3');
INSERT INTO `cmf_region` VALUES (10001056, 230623, '林甸县', 10000099, '3');
INSERT INTO `cmf_region` VALUES (10001057, 230624, '杜尔伯特蒙古族自治县', 10000099, '3');
INSERT INTO `cmf_region` VALUES (10001058, 230702, '伊春区', 10000100, '3');
INSERT INTO `cmf_region` VALUES (10001059, 230703, '南岔区', 10000100, '3');
INSERT INTO `cmf_region` VALUES (10001060, 230704, '友好区', 10000100, '3');
INSERT INTO `cmf_region` VALUES (10001061, 230705, '西林区', 10000100, '3');
INSERT INTO `cmf_region` VALUES (10001062, 230706, '翠峦区', 10000100, '3');
INSERT INTO `cmf_region` VALUES (10001063, 230707, '新青区', 10000100, '3');
INSERT INTO `cmf_region` VALUES (10001064, 230708, '美溪区', 10000100, '3');
INSERT INTO `cmf_region` VALUES (10001065, 230709, '金山屯区', 10000100, '3');
INSERT INTO `cmf_region` VALUES (10001066, 230710, '五营区', 10000100, '3');
INSERT INTO `cmf_region` VALUES (10001067, 230711, '乌马河区', 10000100, '3');
INSERT INTO `cmf_region` VALUES (10001068, 230712, '汤旺河区', 10000100, '3');
INSERT INTO `cmf_region` VALUES (10001069, 230713, '带岭区', 10000100, '3');
INSERT INTO `cmf_region` VALUES (10001070, 230714, '乌伊岭区', 10000100, '3');
INSERT INTO `cmf_region` VALUES (10001071, 230715, '红星区', 10000100, '3');
INSERT INTO `cmf_region` VALUES (10001072, 230716, '上甘岭区', 10000100, '3');
INSERT INTO `cmf_region` VALUES (10001073, 230722, '嘉荫县', 10000100, '3');
INSERT INTO `cmf_region` VALUES (10001074, 230781, '铁力市', 10000100, '3');
INSERT INTO `cmf_region` VALUES (10001075, 230803, '向阳区', 10000101, '3');
INSERT INTO `cmf_region` VALUES (10001076, 230804, '前进区', 10000101, '3');
INSERT INTO `cmf_region` VALUES (10001077, 230805, '东风区', 10000101, '3');
INSERT INTO `cmf_region` VALUES (10001078, 230811, '郊区', 10000101, '3');
INSERT INTO `cmf_region` VALUES (10001079, 230822, '桦南县', 10000101, '3');
INSERT INTO `cmf_region` VALUES (10001080, 230826, '桦川县', 10000101, '3');
INSERT INTO `cmf_region` VALUES (10001081, 230828, '汤原县', 10000101, '3');
INSERT INTO `cmf_region` VALUES (10001082, 230881, '同江市', 10000101, '3');
INSERT INTO `cmf_region` VALUES (10001083, 230882, '富锦市', 10000101, '3');
INSERT INTO `cmf_region` VALUES (10001084, 230883, '抚远市', 10000101, '3');
INSERT INTO `cmf_region` VALUES (10001085, 230902, '新兴区', 10000102, '3');
INSERT INTO `cmf_region` VALUES (10001086, 230903, '桃山区', 10000102, '3');
INSERT INTO `cmf_region` VALUES (10001087, 230904, '茄子河区', 10000102, '3');
INSERT INTO `cmf_region` VALUES (10001088, 230921, '勃利县', 10000102, '3');
INSERT INTO `cmf_region` VALUES (10001089, 231002, '东安区', 10000103, '3');
INSERT INTO `cmf_region` VALUES (10001090, 231003, '阳明区', 10000103, '3');
INSERT INTO `cmf_region` VALUES (10001091, 231004, '爱民区', 10000103, '3');
INSERT INTO `cmf_region` VALUES (10001092, 231005, '西安区', 10000103, '3');
INSERT INTO `cmf_region` VALUES (10001093, 231025, '林口县', 10000103, '3');
INSERT INTO `cmf_region` VALUES (10001094, 231081, '绥芬河市', 10000103, '3');
INSERT INTO `cmf_region` VALUES (10001095, 231083, '海林市', 10000103, '3');
INSERT INTO `cmf_region` VALUES (10001096, 231084, '宁安市', 10000103, '3');
INSERT INTO `cmf_region` VALUES (10001097, 231085, '穆棱市', 10000103, '3');
INSERT INTO `cmf_region` VALUES (10001098, 231086, '东宁市', 10000103, '3');
INSERT INTO `cmf_region` VALUES (10001099, 231102, '爱辉区', 10000104, '3');
INSERT INTO `cmf_region` VALUES (10001100, 231121, '嫩江县', 10000104, '3');
INSERT INTO `cmf_region` VALUES (10001101, 231123, '逊克县', 10000104, '3');
INSERT INTO `cmf_region` VALUES (10001102, 231124, '孙吴县', 10000104, '3');
INSERT INTO `cmf_region` VALUES (10001103, 231181, '北安市', 10000104, '3');
INSERT INTO `cmf_region` VALUES (10001104, 231182, '五大连池市', 10000104, '3');
INSERT INTO `cmf_region` VALUES (10001105, 231202, '北林区', 10000105, '3');
INSERT INTO `cmf_region` VALUES (10001106, 231221, '望奎县', 10000105, '3');
INSERT INTO `cmf_region` VALUES (10001107, 231222, '兰西县', 10000105, '3');
INSERT INTO `cmf_region` VALUES (10001108, 231223, '青冈县', 10000105, '3');
INSERT INTO `cmf_region` VALUES (10001109, 231224, '庆安县', 10000105, '3');
INSERT INTO `cmf_region` VALUES (10001110, 231225, '明水县', 10000105, '3');
INSERT INTO `cmf_region` VALUES (10001111, 231226, '绥棱县', 10000105, '3');
INSERT INTO `cmf_region` VALUES (10001112, 231281, '安达市', 10000105, '3');
INSERT INTO `cmf_region` VALUES (10001113, 231282, '肇东市', 10000105, '3');
INSERT INTO `cmf_region` VALUES (10001114, 231283, '海伦市', 10000105, '3');
INSERT INTO `cmf_region` VALUES (10001115, 232701, '漠河市', 10000106, '3');
INSERT INTO `cmf_region` VALUES (10001116, 232721, '呼玛县', 10000106, '3');
INSERT INTO `cmf_region` VALUES (10001117, 232722, '塔河县', 10000106, '3');
INSERT INTO `cmf_region` VALUES (10001118, 232790, '松岭区', 10000106, '3');
INSERT INTO `cmf_region` VALUES (10001119, 232791, '呼中区', 10000106, '3');
INSERT INTO `cmf_region` VALUES (10001120, 232792, '加格达奇区', 10000106, '3');
INSERT INTO `cmf_region` VALUES (10001121, 232793, '新林区', 10000106, '3');
INSERT INTO `cmf_region` VALUES (10001122, 310101, '黄浦区', 10000107, '3');
INSERT INTO `cmf_region` VALUES (10001123, 310104, '徐汇区', 10000107, '3');
INSERT INTO `cmf_region` VALUES (10001124, 310105, '长宁区', 10000107, '3');
INSERT INTO `cmf_region` VALUES (10001125, 310106, '静安区', 10000107, '3');
INSERT INTO `cmf_region` VALUES (10001126, 310107, '普陀区', 10000107, '3');
INSERT INTO `cmf_region` VALUES (10001127, 310109, '虹口区', 10000107, '3');
INSERT INTO `cmf_region` VALUES (10001128, 310110, '杨浦区', 10000107, '3');
INSERT INTO `cmf_region` VALUES (10001129, 310112, '闵行区', 10000107, '3');
INSERT INTO `cmf_region` VALUES (10001130, 310113, '宝山区', 10000107, '3');
INSERT INTO `cmf_region` VALUES (10001131, 310114, '嘉定区', 10000107, '3');
INSERT INTO `cmf_region` VALUES (10001132, 310115, '浦东新区', 10000107, '3');
INSERT INTO `cmf_region` VALUES (10001133, 310116, '金山区', 10000107, '3');
INSERT INTO `cmf_region` VALUES (10001134, 310117, '松江区', 10000107, '3');
INSERT INTO `cmf_region` VALUES (10001135, 310118, '青浦区', 10000107, '3');
INSERT INTO `cmf_region` VALUES (10001136, 310120, '奉贤区', 10000107, '3');
INSERT INTO `cmf_region` VALUES (10001137, 310151, '崇明区', 10000107, '3');
INSERT INTO `cmf_region` VALUES (10001138, 320102, '玄武区', 10000108, '3');
INSERT INTO `cmf_region` VALUES (10001139, 320104, '秦淮区', 10000108, '3');
INSERT INTO `cmf_region` VALUES (10001140, 320105, '建邺区', 10000108, '3');
INSERT INTO `cmf_region` VALUES (10001141, 320106, '鼓楼区', 10000108, '3');
INSERT INTO `cmf_region` VALUES (10001142, 320111, '浦口区', 10000108, '3');
INSERT INTO `cmf_region` VALUES (10001143, 320113, '栖霞区', 10000108, '3');
INSERT INTO `cmf_region` VALUES (10001144, 320114, '雨花台区', 10000108, '3');
INSERT INTO `cmf_region` VALUES (10001145, 320115, '江宁区', 10000108, '3');
INSERT INTO `cmf_region` VALUES (10001146, 320116, '六合区', 10000108, '3');
INSERT INTO `cmf_region` VALUES (10001147, 320117, '溧水区', 10000108, '3');
INSERT INTO `cmf_region` VALUES (10001148, 320118, '高淳区', 10000108, '3');
INSERT INTO `cmf_region` VALUES (10001149, 320205, '锡山区', 10000109, '3');
INSERT INTO `cmf_region` VALUES (10001150, 320206, '惠山区', 10000109, '3');
INSERT INTO `cmf_region` VALUES (10001151, 320211, '滨湖区', 10000109, '3');
INSERT INTO `cmf_region` VALUES (10001152, 320213, '梁溪区', 10000109, '3');
INSERT INTO `cmf_region` VALUES (10001153, 320214, '新吴区', 10000109, '3');
INSERT INTO `cmf_region` VALUES (10001154, 320281, '江阴市', 10000109, '3');
INSERT INTO `cmf_region` VALUES (10001155, 320282, '宜兴市', 10000109, '3');
INSERT INTO `cmf_region` VALUES (10001156, 320302, '鼓楼区', 10000110, '3');
INSERT INTO `cmf_region` VALUES (10001157, 320303, '云龙区', 10000110, '3');
INSERT INTO `cmf_region` VALUES (10001158, 320305, '贾汪区', 10000110, '3');
INSERT INTO `cmf_region` VALUES (10001159, 320311, '泉山区', 10000110, '3');
INSERT INTO `cmf_region` VALUES (10001160, 320312, '铜山区', 10000110, '3');
INSERT INTO `cmf_region` VALUES (10001161, 320321, '丰县', 10000110, '3');
INSERT INTO `cmf_region` VALUES (10001162, 320322, '沛县', 10000110, '3');
INSERT INTO `cmf_region` VALUES (10001163, 320324, '睢宁县', 10000110, '3');
INSERT INTO `cmf_region` VALUES (10001164, 320381, '新沂市', 10000110, '3');
INSERT INTO `cmf_region` VALUES (10001165, 320382, '邳州市', 10000110, '3');
INSERT INTO `cmf_region` VALUES (10001166, 320391, '工业园区', 10000110, '3');
INSERT INTO `cmf_region` VALUES (10001167, 320402, '天宁区', 10000111, '3');
INSERT INTO `cmf_region` VALUES (10001168, 320404, '钟楼区', 10000111, '3');
INSERT INTO `cmf_region` VALUES (10001169, 320411, '新北区', 10000111, '3');
INSERT INTO `cmf_region` VALUES (10001170, 320412, '武进区', 10000111, '3');
INSERT INTO `cmf_region` VALUES (10001171, 320413, '金坛区', 10000111, '3');
INSERT INTO `cmf_region` VALUES (10001172, 320481, '溧阳市', 10000111, '3');
INSERT INTO `cmf_region` VALUES (10001173, 320505, '虎丘区', 10000112, '3');
INSERT INTO `cmf_region` VALUES (10001174, 320506, '吴中区', 10000112, '3');
INSERT INTO `cmf_region` VALUES (10001175, 320507, '相城区', 10000112, '3');
INSERT INTO `cmf_region` VALUES (10001176, 320508, '姑苏区', 10000112, '3');
INSERT INTO `cmf_region` VALUES (10001177, 320509, '吴江区', 10000112, '3');
INSERT INTO `cmf_region` VALUES (10001178, 320581, '常熟市', 10000112, '3');
INSERT INTO `cmf_region` VALUES (10001179, 320582, '张家港市', 10000112, '3');
INSERT INTO `cmf_region` VALUES (10001180, 320583, '昆山市', 10000112, '3');
INSERT INTO `cmf_region` VALUES (10001181, 320585, '太仓市', 10000112, '3');
INSERT INTO `cmf_region` VALUES (10001182, 320590, '工业园区', 10000112, '3');
INSERT INTO `cmf_region` VALUES (10001183, 320591, '高新区', 10000112, '3');
INSERT INTO `cmf_region` VALUES (10001184, 320602, '崇川区', 10000113, '3');
INSERT INTO `cmf_region` VALUES (10001185, 320611, '港闸区', 10000113, '3');
INSERT INTO `cmf_region` VALUES (10001186, 320612, '通州区', 10000113, '3');
INSERT INTO `cmf_region` VALUES (10001187, 320623, '如东县', 10000113, '3');
INSERT INTO `cmf_region` VALUES (10001188, 320681, '启东市', 10000113, '3');
INSERT INTO `cmf_region` VALUES (10001189, 320682, '如皋市', 10000113, '3');
INSERT INTO `cmf_region` VALUES (10001190, 320684, '海门市', 10000113, '3');
INSERT INTO `cmf_region` VALUES (10001191, 320685, '海安市', 10000113, '3');
INSERT INTO `cmf_region` VALUES (10001192, 320691, '高新区', 10000113, '3');
INSERT INTO `cmf_region` VALUES (10001193, 320703, '连云区', 10000114, '3');
INSERT INTO `cmf_region` VALUES (10001194, 320706, '海州区', 10000114, '3');
INSERT INTO `cmf_region` VALUES (10001195, 320707, '赣榆区', 10000114, '3');
INSERT INTO `cmf_region` VALUES (10001196, 320722, '东海县', 10000114, '3');
INSERT INTO `cmf_region` VALUES (10001197, 320723, '灌云县', 10000114, '3');
INSERT INTO `cmf_region` VALUES (10001198, 320724, '灌南县', 10000114, '3');
INSERT INTO `cmf_region` VALUES (10001199, 320803, '淮安区', 10000115, '3');
INSERT INTO `cmf_region` VALUES (10001200, 320804, '淮阴区', 10000115, '3');
INSERT INTO `cmf_region` VALUES (10001201, 320812, '清江浦区', 10000115, '3');
INSERT INTO `cmf_region` VALUES (10001202, 320813, '洪泽区', 10000115, '3');
INSERT INTO `cmf_region` VALUES (10001203, 320826, '涟水县', 10000115, '3');
INSERT INTO `cmf_region` VALUES (10001204, 320830, '盱眙县', 10000115, '3');
INSERT INTO `cmf_region` VALUES (10001205, 320831, '金湖县', 10000115, '3');
INSERT INTO `cmf_region` VALUES (10001206, 320890, '经济开发区', 10000115, '3');
INSERT INTO `cmf_region` VALUES (10001207, 320902, '亭湖区', 10000116, '3');
INSERT INTO `cmf_region` VALUES (10001208, 320903, '盐都区', 10000116, '3');
INSERT INTO `cmf_region` VALUES (10001209, 320904, '大丰区', 10000116, '3');
INSERT INTO `cmf_region` VALUES (10001210, 320921, '响水县', 10000116, '3');
INSERT INTO `cmf_region` VALUES (10001211, 320922, '滨海县', 10000116, '3');
INSERT INTO `cmf_region` VALUES (10001212, 320923, '阜宁县', 10000116, '3');
INSERT INTO `cmf_region` VALUES (10001213, 320924, '射阳县', 10000116, '3');
INSERT INTO `cmf_region` VALUES (10001214, 320925, '建湖县', 10000116, '3');
INSERT INTO `cmf_region` VALUES (10001215, 320981, '东台市', 10000116, '3');
INSERT INTO `cmf_region` VALUES (10001216, 321002, '广陵区', 10000117, '3');
INSERT INTO `cmf_region` VALUES (10001217, 321003, '邗江区', 10000117, '3');
INSERT INTO `cmf_region` VALUES (10001218, 321012, '江都区', 10000117, '3');
INSERT INTO `cmf_region` VALUES (10001219, 321023, '宝应县', 10000117, '3');
INSERT INTO `cmf_region` VALUES (10001220, 321081, '仪征市', 10000117, '3');
INSERT INTO `cmf_region` VALUES (10001221, 321084, '高邮市', 10000117, '3');
INSERT INTO `cmf_region` VALUES (10001222, 321090, '经济开发区', 10000117, '3');
INSERT INTO `cmf_region` VALUES (10001223, 321102, '京口区', 10000118, '3');
INSERT INTO `cmf_region` VALUES (10001224, 321111, '润州区', 10000118, '3');
INSERT INTO `cmf_region` VALUES (10001225, 321112, '丹徒区', 10000118, '3');
INSERT INTO `cmf_region` VALUES (10001226, 321181, '丹阳市', 10000118, '3');
INSERT INTO `cmf_region` VALUES (10001227, 321182, '扬中市', 10000118, '3');
INSERT INTO `cmf_region` VALUES (10001228, 321183, '句容市', 10000118, '3');
INSERT INTO `cmf_region` VALUES (10001229, 321202, '海陵区', 10000119, '3');
INSERT INTO `cmf_region` VALUES (10001230, 321203, '高港区', 10000119, '3');
INSERT INTO `cmf_region` VALUES (10001231, 321204, '姜堰区', 10000119, '3');
INSERT INTO `cmf_region` VALUES (10001232, 321281, '兴化市', 10000119, '3');
INSERT INTO `cmf_region` VALUES (10001233, 321282, '靖江市', 10000119, '3');
INSERT INTO `cmf_region` VALUES (10001234, 321283, '泰兴市', 10000119, '3');
INSERT INTO `cmf_region` VALUES (10001235, 321302, '宿城区', 10000120, '3');
INSERT INTO `cmf_region` VALUES (10001236, 321311, '宿豫区', 10000120, '3');
INSERT INTO `cmf_region` VALUES (10001237, 321322, '沭阳县', 10000120, '3');
INSERT INTO `cmf_region` VALUES (10001238, 321323, '泗阳县', 10000120, '3');
INSERT INTO `cmf_region` VALUES (10001239, 321324, '泗洪县', 10000120, '3');
INSERT INTO `cmf_region` VALUES (10001240, 330102, '上城区', 10000121, '3');
INSERT INTO `cmf_region` VALUES (10001241, 330103, '下城区', 10000121, '3');
INSERT INTO `cmf_region` VALUES (10001242, 330104, '江干区', 10000121, '3');
INSERT INTO `cmf_region` VALUES (10001243, 330105, '拱墅区', 10000121, '3');
INSERT INTO `cmf_region` VALUES (10001244, 330106, '西湖区', 10000121, '3');
INSERT INTO `cmf_region` VALUES (10001245, 330108, '滨江区', 10000121, '3');
INSERT INTO `cmf_region` VALUES (10001246, 330109, '萧山区', 10000121, '3');
INSERT INTO `cmf_region` VALUES (10001247, 330110, '余杭区', 10000121, '3');
INSERT INTO `cmf_region` VALUES (10001248, 330111, '富阳区', 10000121, '3');
INSERT INTO `cmf_region` VALUES (10001249, 330112, '临安区', 10000121, '3');
INSERT INTO `cmf_region` VALUES (10001250, 330122, '桐庐县', 10000121, '3');
INSERT INTO `cmf_region` VALUES (10001251, 330127, '淳安县', 10000121, '3');
INSERT INTO `cmf_region` VALUES (10001252, 330182, '建德市', 10000121, '3');
INSERT INTO `cmf_region` VALUES (10001253, 330203, '海曙区', 10000122, '3');
INSERT INTO `cmf_region` VALUES (10001254, 330205, '江北区', 10000122, '3');
INSERT INTO `cmf_region` VALUES (10001255, 330206, '北仑区', 10000122, '3');
INSERT INTO `cmf_region` VALUES (10001256, 330211, '镇海区', 10000122, '3');
INSERT INTO `cmf_region` VALUES (10001257, 330212, '鄞州区', 10000122, '3');
INSERT INTO `cmf_region` VALUES (10001258, 330213, '奉化区', 10000122, '3');
INSERT INTO `cmf_region` VALUES (10001259, 330225, '象山县', 10000122, '3');
INSERT INTO `cmf_region` VALUES (10001260, 330226, '宁海县', 10000122, '3');
INSERT INTO `cmf_region` VALUES (10001261, 330281, '余姚市', 10000122, '3');
INSERT INTO `cmf_region` VALUES (10001262, 330282, '慈溪市', 10000122, '3');
INSERT INTO `cmf_region` VALUES (10001263, 330302, '鹿城区', 10000123, '3');
INSERT INTO `cmf_region` VALUES (10001264, 330303, '龙湾区', 10000123, '3');
INSERT INTO `cmf_region` VALUES (10001265, 330304, '瓯海区', 10000123, '3');
INSERT INTO `cmf_region` VALUES (10001266, 330305, '洞头区', 10000123, '3');
INSERT INTO `cmf_region` VALUES (10001267, 330324, '永嘉县', 10000123, '3');
INSERT INTO `cmf_region` VALUES (10001268, 330326, '平阳县', 10000123, '3');
INSERT INTO `cmf_region` VALUES (10001269, 330327, '苍南县', 10000123, '3');
INSERT INTO `cmf_region` VALUES (10001270, 330328, '文成县', 10000123, '3');
INSERT INTO `cmf_region` VALUES (10001271, 330329, '泰顺县', 10000123, '3');
INSERT INTO `cmf_region` VALUES (10001272, 330381, '瑞安市', 10000123, '3');
INSERT INTO `cmf_region` VALUES (10001273, 330382, '乐清市', 10000123, '3');
INSERT INTO `cmf_region` VALUES (10001274, 330402, '南湖区', 10000124, '3');
INSERT INTO `cmf_region` VALUES (10001275, 330411, '秀洲区', 10000124, '3');
INSERT INTO `cmf_region` VALUES (10001276, 330421, '嘉善县', 10000124, '3');
INSERT INTO `cmf_region` VALUES (10001277, 330424, '海盐县', 10000124, '3');
INSERT INTO `cmf_region` VALUES (10001278, 330481, '海宁市', 10000124, '3');
INSERT INTO `cmf_region` VALUES (10001279, 330482, '平湖市', 10000124, '3');
INSERT INTO `cmf_region` VALUES (10001280, 330483, '桐乡市', 10000124, '3');
INSERT INTO `cmf_region` VALUES (10001281, 330502, '吴兴区', 10000125, '3');
INSERT INTO `cmf_region` VALUES (10001282, 330503, '南浔区', 10000125, '3');
INSERT INTO `cmf_region` VALUES (10001283, 330521, '德清县', 10000125, '3');
INSERT INTO `cmf_region` VALUES (10001284, 330522, '长兴县', 10000125, '3');
INSERT INTO `cmf_region` VALUES (10001285, 330523, '安吉县', 10000125, '3');
INSERT INTO `cmf_region` VALUES (10001286, 330602, '越城区', 10000126, '3');
INSERT INTO `cmf_region` VALUES (10001287, 330603, '柯桥区', 10000126, '3');
INSERT INTO `cmf_region` VALUES (10001288, 330604, '上虞区', 10000126, '3');
INSERT INTO `cmf_region` VALUES (10001289, 330624, '新昌县', 10000126, '3');
INSERT INTO `cmf_region` VALUES (10001290, 330681, '诸暨市', 10000126, '3');
INSERT INTO `cmf_region` VALUES (10001291, 330683, '嵊州市', 10000126, '3');
INSERT INTO `cmf_region` VALUES (10001292, 330702, '婺城区', 10000127, '3');
INSERT INTO `cmf_region` VALUES (10001293, 330703, '金东区', 10000127, '3');
INSERT INTO `cmf_region` VALUES (10001294, 330723, '武义县', 10000127, '3');
INSERT INTO `cmf_region` VALUES (10001295, 330726, '浦江县', 10000127, '3');
INSERT INTO `cmf_region` VALUES (10001296, 330727, '磐安县', 10000127, '3');
INSERT INTO `cmf_region` VALUES (10001297, 330781, '兰溪市', 10000127, '3');
INSERT INTO `cmf_region` VALUES (10001298, 330782, '义乌市', 10000127, '3');
INSERT INTO `cmf_region` VALUES (10001299, 330783, '东阳市', 10000127, '3');
INSERT INTO `cmf_region` VALUES (10001300, 330784, '永康市', 10000127, '3');
INSERT INTO `cmf_region` VALUES (10001301, 330802, '柯城区', 10000128, '3');
INSERT INTO `cmf_region` VALUES (10001302, 330803, '衢江区', 10000128, '3');
INSERT INTO `cmf_region` VALUES (10001303, 330822, '常山县', 10000128, '3');
INSERT INTO `cmf_region` VALUES (10001304, 330824, '开化县', 10000128, '3');
INSERT INTO `cmf_region` VALUES (10001305, 330825, '龙游县', 10000128, '3');
INSERT INTO `cmf_region` VALUES (10001306, 330881, '江山市', 10000128, '3');
INSERT INTO `cmf_region` VALUES (10001307, 330902, '定海区', 10000129, '3');
INSERT INTO `cmf_region` VALUES (10001308, 330903, '普陀区', 10000129, '3');
INSERT INTO `cmf_region` VALUES (10001309, 330921, '岱山县', 10000129, '3');
INSERT INTO `cmf_region` VALUES (10001310, 330922, '嵊泗县', 10000129, '3');
INSERT INTO `cmf_region` VALUES (10001311, 331002, '椒江区', 10000130, '3');
INSERT INTO `cmf_region` VALUES (10001312, 331003, '黄岩区', 10000130, '3');
INSERT INTO `cmf_region` VALUES (10001313, 331004, '路桥区', 10000130, '3');
INSERT INTO `cmf_region` VALUES (10001314, 331022, '三门县', 10000130, '3');
INSERT INTO `cmf_region` VALUES (10001315, 331023, '天台县', 10000130, '3');
INSERT INTO `cmf_region` VALUES (10001316, 331024, '仙居县', 10000130, '3');
INSERT INTO `cmf_region` VALUES (10001317, 331081, '温岭市', 10000130, '3');
INSERT INTO `cmf_region` VALUES (10001318, 331082, '临海市', 10000130, '3');
INSERT INTO `cmf_region` VALUES (10001319, 331083, '玉环市', 10000130, '3');
INSERT INTO `cmf_region` VALUES (10001320, 331102, '莲都区', 10000131, '3');
INSERT INTO `cmf_region` VALUES (10001321, 331121, '青田县', 10000131, '3');
INSERT INTO `cmf_region` VALUES (10001322, 331122, '缙云县', 10000131, '3');
INSERT INTO `cmf_region` VALUES (10001323, 331123, '遂昌县', 10000131, '3');
INSERT INTO `cmf_region` VALUES (10001324, 331124, '松阳县', 10000131, '3');
INSERT INTO `cmf_region` VALUES (10001325, 331125, '云和县', 10000131, '3');
INSERT INTO `cmf_region` VALUES (10001326, 331126, '庆元县', 10000131, '3');
INSERT INTO `cmf_region` VALUES (10001327, 331127, '景宁畲族自治县', 10000131, '3');
INSERT INTO `cmf_region` VALUES (10001328, 331181, '龙泉市', 10000131, '3');
INSERT INTO `cmf_region` VALUES (10001329, 340102, '瑶海区', 10000132, '3');
INSERT INTO `cmf_region` VALUES (10001330, 340103, '庐阳区', 10000132, '3');
INSERT INTO `cmf_region` VALUES (10001331, 340104, '蜀山区', 10000132, '3');
INSERT INTO `cmf_region` VALUES (10001332, 340111, '包河区', 10000132, '3');
INSERT INTO `cmf_region` VALUES (10001333, 340121, '长丰县', 10000132, '3');
INSERT INTO `cmf_region` VALUES (10001334, 340122, '肥东县', 10000132, '3');
INSERT INTO `cmf_region` VALUES (10001335, 340123, '肥西县', 10000132, '3');
INSERT INTO `cmf_region` VALUES (10001336, 340124, '庐江县', 10000132, '3');
INSERT INTO `cmf_region` VALUES (10001337, 340181, '巢湖市', 10000132, '3');
INSERT INTO `cmf_region` VALUES (10001338, 340190, '高新技术开发区', 10000132, '3');
INSERT INTO `cmf_region` VALUES (10001339, 340191, '经济技术开发区', 10000132, '3');
INSERT INTO `cmf_region` VALUES (10001340, 340202, '镜湖区', 10000133, '3');
INSERT INTO `cmf_region` VALUES (10001341, 340203, '弋江区', 10000133, '3');
INSERT INTO `cmf_region` VALUES (10001342, 340207, '鸠江区', 10000133, '3');
INSERT INTO `cmf_region` VALUES (10001343, 340208, '三山区', 10000133, '3');
INSERT INTO `cmf_region` VALUES (10001344, 340221, '芜湖县', 10000133, '3');
INSERT INTO `cmf_region` VALUES (10001345, 340222, '繁昌县', 10000133, '3');
INSERT INTO `cmf_region` VALUES (10001346, 340223, '南陵县', 10000133, '3');
INSERT INTO `cmf_region` VALUES (10001347, 340225, '无为县', 10000133, '3');
INSERT INTO `cmf_region` VALUES (10001348, 340302, '龙子湖区', 10000134, '3');
INSERT INTO `cmf_region` VALUES (10001349, 340303, '蚌山区', 10000134, '3');
INSERT INTO `cmf_region` VALUES (10001350, 340304, '禹会区', 10000134, '3');
INSERT INTO `cmf_region` VALUES (10001351, 340311, '淮上区', 10000134, '3');
INSERT INTO `cmf_region` VALUES (10001352, 340321, '怀远县', 10000134, '3');
INSERT INTO `cmf_region` VALUES (10001353, 340322, '五河县', 10000134, '3');
INSERT INTO `cmf_region` VALUES (10001354, 340323, '固镇县', 10000134, '3');
INSERT INTO `cmf_region` VALUES (10001355, 340402, '大通区', 10000135, '3');
INSERT INTO `cmf_region` VALUES (10001356, 340403, '田家庵区', 10000135, '3');
INSERT INTO `cmf_region` VALUES (10001357, 340404, '谢家集区', 10000135, '3');
INSERT INTO `cmf_region` VALUES (10001358, 340405, '八公山区', 10000135, '3');
INSERT INTO `cmf_region` VALUES (10001359, 340406, '潘集区', 10000135, '3');
INSERT INTO `cmf_region` VALUES (10001360, 340421, '凤台县', 10000135, '3');
INSERT INTO `cmf_region` VALUES (10001361, 340422, '寿县', 10000135, '3');
INSERT INTO `cmf_region` VALUES (10001362, 340503, '花山区', 10000136, '3');
INSERT INTO `cmf_region` VALUES (10001363, 340504, '雨山区', 10000136, '3');
INSERT INTO `cmf_region` VALUES (10001364, 340506, '博望区', 10000136, '3');
INSERT INTO `cmf_region` VALUES (10001365, 340521, '当涂县', 10000136, '3');
INSERT INTO `cmf_region` VALUES (10001366, 340522, '含山县', 10000136, '3');
INSERT INTO `cmf_region` VALUES (10001367, 340523, '和县', 10000136, '3');
INSERT INTO `cmf_region` VALUES (10001368, 340602, '杜集区', 10000137, '3');
INSERT INTO `cmf_region` VALUES (10001369, 340603, '相山区', 10000137, '3');
INSERT INTO `cmf_region` VALUES (10001370, 340604, '烈山区', 10000137, '3');
INSERT INTO `cmf_region` VALUES (10001371, 340621, '濉溪县', 10000137, '3');
INSERT INTO `cmf_region` VALUES (10001372, 340705, '铜官区', 10000138, '3');
INSERT INTO `cmf_region` VALUES (10001373, 340706, '义安区', 10000138, '3');
INSERT INTO `cmf_region` VALUES (10001374, 340711, '郊区', 10000138, '3');
INSERT INTO `cmf_region` VALUES (10001375, 340722, '枞阳县', 10000138, '3');
INSERT INTO `cmf_region` VALUES (10001376, 340802, '迎江区', 10000139, '3');
INSERT INTO `cmf_region` VALUES (10001377, 340803, '大观区', 10000139, '3');
INSERT INTO `cmf_region` VALUES (10001378, 340811, '宜秀区', 10000139, '3');
INSERT INTO `cmf_region` VALUES (10001379, 340822, '怀宁县', 10000139, '3');
INSERT INTO `cmf_region` VALUES (10001380, 340824, '潜山县', 10000139, '3');
INSERT INTO `cmf_region` VALUES (10001381, 340825, '太湖县', 10000139, '3');
INSERT INTO `cmf_region` VALUES (10001382, 340826, '宿松县', 10000139, '3');
INSERT INTO `cmf_region` VALUES (10001383, 340827, '望江县', 10000139, '3');
INSERT INTO `cmf_region` VALUES (10001384, 340828, '岳西县', 10000139, '3');
INSERT INTO `cmf_region` VALUES (10001385, 340881, '桐城市', 10000139, '3');
INSERT INTO `cmf_region` VALUES (10001386, 341002, '屯溪区', 10000140, '3');
INSERT INTO `cmf_region` VALUES (10001387, 341003, '黄山区', 10000140, '3');
INSERT INTO `cmf_region` VALUES (10001388, 341004, '徽州区', 10000140, '3');
INSERT INTO `cmf_region` VALUES (10001389, 341021, '歙县', 10000140, '3');
INSERT INTO `cmf_region` VALUES (10001390, 341022, '休宁县', 10000140, '3');
INSERT INTO `cmf_region` VALUES (10001391, 341023, '黟县', 10000140, '3');
INSERT INTO `cmf_region` VALUES (10001392, 341024, '祁门县', 10000140, '3');
INSERT INTO `cmf_region` VALUES (10001393, 341102, '琅琊区', 10000141, '3');
INSERT INTO `cmf_region` VALUES (10001394, 341103, '南谯区', 10000141, '3');
INSERT INTO `cmf_region` VALUES (10001395, 341122, '来安县', 10000141, '3');
INSERT INTO `cmf_region` VALUES (10001396, 341124, '全椒县', 10000141, '3');
INSERT INTO `cmf_region` VALUES (10001397, 341125, '定远县', 10000141, '3');
INSERT INTO `cmf_region` VALUES (10001398, 341126, '凤阳县', 10000141, '3');
INSERT INTO `cmf_region` VALUES (10001399, 341181, '天长市', 10000141, '3');
INSERT INTO `cmf_region` VALUES (10001400, 341182, '明光市', 10000141, '3');
INSERT INTO `cmf_region` VALUES (10001401, 341202, '颍州区', 10000142, '3');
INSERT INTO `cmf_region` VALUES (10001402, 341203, '颍东区', 10000142, '3');
INSERT INTO `cmf_region` VALUES (10001403, 341204, '颍泉区', 10000142, '3');
INSERT INTO `cmf_region` VALUES (10001404, 341221, '临泉县', 10000142, '3');
INSERT INTO `cmf_region` VALUES (10001405, 341222, '太和县', 10000142, '3');
INSERT INTO `cmf_region` VALUES (10001406, 341225, '阜南县', 10000142, '3');
INSERT INTO `cmf_region` VALUES (10001407, 341226, '颍上县', 10000142, '3');
INSERT INTO `cmf_region` VALUES (10001408, 341282, '界首市', 10000142, '3');
INSERT INTO `cmf_region` VALUES (10001409, 341302, '埇桥区', 10000143, '3');
INSERT INTO `cmf_region` VALUES (10001410, 341321, '砀山县', 10000143, '3');
INSERT INTO `cmf_region` VALUES (10001411, 341322, '萧县', 10000143, '3');
INSERT INTO `cmf_region` VALUES (10001412, 341323, '灵璧县', 10000143, '3');
INSERT INTO `cmf_region` VALUES (10001413, 341324, '泗县', 10000143, '3');
INSERT INTO `cmf_region` VALUES (10001414, 341390, '经济开发区', 10000143, '3');
INSERT INTO `cmf_region` VALUES (10001415, 341502, '金安区', 10000144, '3');
INSERT INTO `cmf_region` VALUES (10001416, 341503, '裕安区', 10000144, '3');
INSERT INTO `cmf_region` VALUES (10001417, 341504, '叶集区', 10000144, '3');
INSERT INTO `cmf_region` VALUES (10001418, 341522, '霍邱县', 10000144, '3');
INSERT INTO `cmf_region` VALUES (10001419, 341523, '舒城县', 10000144, '3');
INSERT INTO `cmf_region` VALUES (10001420, 341524, '金寨县', 10000144, '3');
INSERT INTO `cmf_region` VALUES (10001421, 341525, '霍山县', 10000144, '3');
INSERT INTO `cmf_region` VALUES (10001422, 341602, '谯城区', 10000145, '3');
INSERT INTO `cmf_region` VALUES (10001423, 341621, '涡阳县', 10000145, '3');
INSERT INTO `cmf_region` VALUES (10001424, 341622, '蒙城县', 10000145, '3');
INSERT INTO `cmf_region` VALUES (10001425, 341623, '利辛县', 10000145, '3');
INSERT INTO `cmf_region` VALUES (10001426, 341702, '贵池区', 10000146, '3');
INSERT INTO `cmf_region` VALUES (10001427, 341721, '东至县', 10000146, '3');
INSERT INTO `cmf_region` VALUES (10001428, 341722, '石台县', 10000146, '3');
INSERT INTO `cmf_region` VALUES (10001429, 341723, '青阳县', 10000146, '3');
INSERT INTO `cmf_region` VALUES (10001430, 341802, '宣州区', 10000147, '3');
INSERT INTO `cmf_region` VALUES (10001431, 341821, '郎溪县', 10000147, '3');
INSERT INTO `cmf_region` VALUES (10001432, 341822, '广德县', 10000147, '3');
INSERT INTO `cmf_region` VALUES (10001433, 341823, '泾县', 10000147, '3');
INSERT INTO `cmf_region` VALUES (10001434, 341824, '绩溪县', 10000147, '3');
INSERT INTO `cmf_region` VALUES (10001435, 341825, '旌德县', 10000147, '3');
INSERT INTO `cmf_region` VALUES (10001436, 341881, '宁国市', 10000147, '3');
INSERT INTO `cmf_region` VALUES (10001437, 350102, '鼓楼区', 10000148, '3');
INSERT INTO `cmf_region` VALUES (10001438, 350103, '台江区', 10000148, '3');
INSERT INTO `cmf_region` VALUES (10001439, 350104, '仓山区', 10000148, '3');
INSERT INTO `cmf_region` VALUES (10001440, 350105, '马尾区', 10000148, '3');
INSERT INTO `cmf_region` VALUES (10001441, 350111, '晋安区', 10000148, '3');
INSERT INTO `cmf_region` VALUES (10001442, 350112, '长乐区', 10000148, '3');
INSERT INTO `cmf_region` VALUES (10001443, 350121, '闽侯县', 10000148, '3');
INSERT INTO `cmf_region` VALUES (10001444, 350122, '连江县', 10000148, '3');
INSERT INTO `cmf_region` VALUES (10001445, 350123, '罗源县', 10000148, '3');
INSERT INTO `cmf_region` VALUES (10001446, 350124, '闽清县', 10000148, '3');
INSERT INTO `cmf_region` VALUES (10001447, 350125, '永泰县', 10000148, '3');
INSERT INTO `cmf_region` VALUES (10001448, 350128, '平潭县', 10000148, '3');
INSERT INTO `cmf_region` VALUES (10001449, 350181, '福清市', 10000148, '3');
INSERT INTO `cmf_region` VALUES (10001450, 350203, '思明区', 10000149, '3');
INSERT INTO `cmf_region` VALUES (10001451, 350205, '海沧区', 10000149, '3');
INSERT INTO `cmf_region` VALUES (10001452, 350206, '湖里区', 10000149, '3');
INSERT INTO `cmf_region` VALUES (10001453, 350211, '集美区', 10000149, '3');
INSERT INTO `cmf_region` VALUES (10001454, 350212, '同安区', 10000149, '3');
INSERT INTO `cmf_region` VALUES (10001455, 350213, '翔安区', 10000149, '3');
INSERT INTO `cmf_region` VALUES (10001456, 350302, '城厢区', 10000150, '3');
INSERT INTO `cmf_region` VALUES (10001457, 350303, '涵江区', 10000150, '3');
INSERT INTO `cmf_region` VALUES (10001458, 350304, '荔城区', 10000150, '3');
INSERT INTO `cmf_region` VALUES (10001459, 350305, '秀屿区', 10000150, '3');
INSERT INTO `cmf_region` VALUES (10001460, 350322, '仙游县', 10000150, '3');
INSERT INTO `cmf_region` VALUES (10001461, 350402, '梅列区', 10000151, '3');
INSERT INTO `cmf_region` VALUES (10001462, 350403, '三元区', 10000151, '3');
INSERT INTO `cmf_region` VALUES (10001463, 350421, '明溪县', 10000151, '3');
INSERT INTO `cmf_region` VALUES (10001464, 350423, '清流县', 10000151, '3');
INSERT INTO `cmf_region` VALUES (10001465, 350424, '宁化县', 10000151, '3');
INSERT INTO `cmf_region` VALUES (10001466, 350425, '大田县', 10000151, '3');
INSERT INTO `cmf_region` VALUES (10001467, 350426, '尤溪县', 10000151, '3');
INSERT INTO `cmf_region` VALUES (10001468, 350427, '沙县', 10000151, '3');
INSERT INTO `cmf_region` VALUES (10001469, 350428, '将乐县', 10000151, '3');
INSERT INTO `cmf_region` VALUES (10001470, 350429, '泰宁县', 10000151, '3');
INSERT INTO `cmf_region` VALUES (10001471, 350430, '建宁县', 10000151, '3');
INSERT INTO `cmf_region` VALUES (10001472, 350481, '永安市', 10000151, '3');
INSERT INTO `cmf_region` VALUES (10001473, 350502, '鲤城区', 10000152, '3');
INSERT INTO `cmf_region` VALUES (10001474, 350503, '丰泽区', 10000152, '3');
INSERT INTO `cmf_region` VALUES (10001475, 350504, '洛江区', 10000152, '3');
INSERT INTO `cmf_region` VALUES (10001476, 350505, '泉港区', 10000152, '3');
INSERT INTO `cmf_region` VALUES (10001477, 350521, '惠安县', 10000152, '3');
INSERT INTO `cmf_region` VALUES (10001478, 350524, '安溪县', 10000152, '3');
INSERT INTO `cmf_region` VALUES (10001479, 350525, '永春县', 10000152, '3');
INSERT INTO `cmf_region` VALUES (10001480, 350526, '德化县', 10000152, '3');
INSERT INTO `cmf_region` VALUES (10001481, 350527, '金门县', 10000152, '3');
INSERT INTO `cmf_region` VALUES (10001482, 350581, '石狮市', 10000152, '3');
INSERT INTO `cmf_region` VALUES (10001483, 350582, '晋江市', 10000152, '3');
INSERT INTO `cmf_region` VALUES (10001484, 350583, '南安市', 10000152, '3');
INSERT INTO `cmf_region` VALUES (10001485, 350602, '芗城区', 10000153, '3');
INSERT INTO `cmf_region` VALUES (10001486, 350603, '龙文区', 10000153, '3');
INSERT INTO `cmf_region` VALUES (10001487, 350622, '云霄县', 10000153, '3');
INSERT INTO `cmf_region` VALUES (10001488, 350623, '漳浦县', 10000153, '3');
INSERT INTO `cmf_region` VALUES (10001489, 350624, '诏安县', 10000153, '3');
INSERT INTO `cmf_region` VALUES (10001490, 350625, '长泰县', 10000153, '3');
INSERT INTO `cmf_region` VALUES (10001491, 350626, '东山县', 10000153, '3');
INSERT INTO `cmf_region` VALUES (10001492, 350627, '南靖县', 10000153, '3');
INSERT INTO `cmf_region` VALUES (10001493, 350628, '平和县', 10000153, '3');
INSERT INTO `cmf_region` VALUES (10001494, 350629, '华安县', 10000153, '3');
INSERT INTO `cmf_region` VALUES (10001495, 350681, '龙海市', 10000153, '3');
INSERT INTO `cmf_region` VALUES (10001496, 350702, '延平区', 10000154, '3');
INSERT INTO `cmf_region` VALUES (10001497, 350703, '建阳区', 10000154, '3');
INSERT INTO `cmf_region` VALUES (10001498, 350721, '顺昌县', 10000154, '3');
INSERT INTO `cmf_region` VALUES (10001499, 350722, '浦城县', 10000154, '3');
INSERT INTO `cmf_region` VALUES (10001500, 350723, '光泽县', 10000154, '3');
INSERT INTO `cmf_region` VALUES (10001501, 350724, '松溪县', 10000154, '3');
INSERT INTO `cmf_region` VALUES (10001502, 350725, '政和县', 10000154, '3');
INSERT INTO `cmf_region` VALUES (10001503, 350781, '邵武市', 10000154, '3');
INSERT INTO `cmf_region` VALUES (10001504, 350782, '武夷山市', 10000154, '3');
INSERT INTO `cmf_region` VALUES (10001505, 350783, '建瓯市', 10000154, '3');
INSERT INTO `cmf_region` VALUES (10001506, 350802, '新罗区', 10000155, '3');
INSERT INTO `cmf_region` VALUES (10001507, 350803, '永定区', 10000155, '3');
INSERT INTO `cmf_region` VALUES (10001508, 350821, '长汀县', 10000155, '3');
INSERT INTO `cmf_region` VALUES (10001509, 350823, '上杭县', 10000155, '3');
INSERT INTO `cmf_region` VALUES (10001510, 350824, '武平县', 10000155, '3');
INSERT INTO `cmf_region` VALUES (10001511, 350825, '连城县', 10000155, '3');
INSERT INTO `cmf_region` VALUES (10001512, 350881, '漳平市', 10000155, '3');
INSERT INTO `cmf_region` VALUES (10001513, 350902, '蕉城区', 10000156, '3');
INSERT INTO `cmf_region` VALUES (10001514, 350921, '霞浦县', 10000156, '3');
INSERT INTO `cmf_region` VALUES (10001515, 350922, '古田县', 10000156, '3');
INSERT INTO `cmf_region` VALUES (10001516, 350923, '屏南县', 10000156, '3');
INSERT INTO `cmf_region` VALUES (10001517, 350924, '寿宁县', 10000156, '3');
INSERT INTO `cmf_region` VALUES (10001518, 350925, '周宁县', 10000156, '3');
INSERT INTO `cmf_region` VALUES (10001519, 350926, '柘荣县', 10000156, '3');
INSERT INTO `cmf_region` VALUES (10001520, 350981, '福安市', 10000156, '3');
INSERT INTO `cmf_region` VALUES (10001521, 350982, '福鼎市', 10000156, '3');
INSERT INTO `cmf_region` VALUES (10001522, 360102, '东湖区', 10000157, '3');
INSERT INTO `cmf_region` VALUES (10001523, 360103, '西湖区', 10000157, '3');
INSERT INTO `cmf_region` VALUES (10001524, 360104, '青云谱区', 10000157, '3');
INSERT INTO `cmf_region` VALUES (10001525, 360105, '湾里区', 10000157, '3');
INSERT INTO `cmf_region` VALUES (10001526, 360111, '青山湖区', 10000157, '3');
INSERT INTO `cmf_region` VALUES (10001527, 360112, '新建区', 10000157, '3');
INSERT INTO `cmf_region` VALUES (10001528, 360121, '南昌县', 10000157, '3');
INSERT INTO `cmf_region` VALUES (10001529, 360123, '安义县', 10000157, '3');
INSERT INTO `cmf_region` VALUES (10001530, 360124, '进贤县', 10000157, '3');
INSERT INTO `cmf_region` VALUES (10001531, 360190, '经济技术开发区', 10000157, '3');
INSERT INTO `cmf_region` VALUES (10001532, 360192, '高新区', 10000157, '3');
INSERT INTO `cmf_region` VALUES (10001533, 360202, '昌江区', 10000158, '3');
INSERT INTO `cmf_region` VALUES (10001534, 360203, '珠山区', 10000158, '3');
INSERT INTO `cmf_region` VALUES (10001535, 360222, '浮梁县', 10000158, '3');
INSERT INTO `cmf_region` VALUES (10001536, 360281, '乐平市', 10000158, '3');
INSERT INTO `cmf_region` VALUES (10001537, 360302, '安源区', 10000159, '3');
INSERT INTO `cmf_region` VALUES (10001538, 360313, '湘东区', 10000159, '3');
INSERT INTO `cmf_region` VALUES (10001539, 360321, '莲花县', 10000159, '3');
INSERT INTO `cmf_region` VALUES (10001540, 360322, '上栗县', 10000159, '3');
INSERT INTO `cmf_region` VALUES (10001541, 360323, '芦溪县', 10000159, '3');
INSERT INTO `cmf_region` VALUES (10001542, 360402, '濂溪区', 10000160, '3');
INSERT INTO `cmf_region` VALUES (10001543, 360403, '浔阳区', 10000160, '3');
INSERT INTO `cmf_region` VALUES (10001544, 360404, '柴桑区', 10000160, '3');
INSERT INTO `cmf_region` VALUES (10001545, 360423, '武宁县', 10000160, '3');
INSERT INTO `cmf_region` VALUES (10001546, 360424, '修水县', 10000160, '3');
INSERT INTO `cmf_region` VALUES (10001547, 360425, '永修县', 10000160, '3');
INSERT INTO `cmf_region` VALUES (10001548, 360426, '德安县', 10000160, '3');
INSERT INTO `cmf_region` VALUES (10001549, 360428, '都昌县', 10000160, '3');
INSERT INTO `cmf_region` VALUES (10001550, 360429, '湖口县', 10000160, '3');
INSERT INTO `cmf_region` VALUES (10001551, 360430, '彭泽县', 10000160, '3');
INSERT INTO `cmf_region` VALUES (10001552, 360481, '瑞昌市', 10000160, '3');
INSERT INTO `cmf_region` VALUES (10001553, 360482, '共青城市', 10000160, '3');
INSERT INTO `cmf_region` VALUES (10001554, 360483, '庐山市', 10000160, '3');
INSERT INTO `cmf_region` VALUES (10001555, 360490, '经济技术开发区', 10000160, '3');
INSERT INTO `cmf_region` VALUES (10001556, 360502, '渝水区', 10000161, '3');
INSERT INTO `cmf_region` VALUES (10001557, 360521, '分宜县', 10000161, '3');
INSERT INTO `cmf_region` VALUES (10001558, 360602, '月湖区', 10000162, '3');
INSERT INTO `cmf_region` VALUES (10001559, 360603, '余江区', 10000162, '3');
INSERT INTO `cmf_region` VALUES (10001560, 360681, '贵溪市', 10000162, '3');
INSERT INTO `cmf_region` VALUES (10001561, 360702, '章贡区', 10000163, '3');
INSERT INTO `cmf_region` VALUES (10001562, 360703, '南康区', 10000163, '3');
INSERT INTO `cmf_region` VALUES (10001563, 360704, '赣县区', 10000163, '3');
INSERT INTO `cmf_region` VALUES (10001564, 360722, '信丰县', 10000163, '3');
INSERT INTO `cmf_region` VALUES (10001565, 360723, '大余县', 10000163, '3');
INSERT INTO `cmf_region` VALUES (10001566, 360724, '上犹县', 10000163, '3');
INSERT INTO `cmf_region` VALUES (10001567, 360725, '崇义县', 10000163, '3');
INSERT INTO `cmf_region` VALUES (10001568, 360726, '安远县', 10000163, '3');
INSERT INTO `cmf_region` VALUES (10001569, 360727, '龙南县', 10000163, '3');
INSERT INTO `cmf_region` VALUES (10001570, 360728, '定南县', 10000163, '3');
INSERT INTO `cmf_region` VALUES (10001571, 360729, '全南县', 10000163, '3');
INSERT INTO `cmf_region` VALUES (10001572, 360730, '宁都县', 10000163, '3');
INSERT INTO `cmf_region` VALUES (10001573, 360731, '于都县', 10000163, '3');
INSERT INTO `cmf_region` VALUES (10001574, 360732, '兴国县', 10000163, '3');
INSERT INTO `cmf_region` VALUES (10001575, 360733, '会昌县', 10000163, '3');
INSERT INTO `cmf_region` VALUES (10001576, 360734, '寻乌县', 10000163, '3');
INSERT INTO `cmf_region` VALUES (10001577, 360735, '石城县', 10000163, '3');
INSERT INTO `cmf_region` VALUES (10001578, 360781, '瑞金市', 10000163, '3');
INSERT INTO `cmf_region` VALUES (10001579, 360802, '吉州区', 10000164, '3');
INSERT INTO `cmf_region` VALUES (10001580, 360803, '青原区', 10000164, '3');
INSERT INTO `cmf_region` VALUES (10001581, 360821, '吉安县', 10000164, '3');
INSERT INTO `cmf_region` VALUES (10001582, 360822, '吉水县', 10000164, '3');
INSERT INTO `cmf_region` VALUES (10001583, 360823, '峡江县', 10000164, '3');
INSERT INTO `cmf_region` VALUES (10001584, 360824, '新干县', 10000164, '3');
INSERT INTO `cmf_region` VALUES (10001585, 360825, '永丰县', 10000164, '3');
INSERT INTO `cmf_region` VALUES (10001586, 360826, '泰和县', 10000164, '3');
INSERT INTO `cmf_region` VALUES (10001587, 360827, '遂川县', 10000164, '3');
INSERT INTO `cmf_region` VALUES (10001588, 360828, '万安县', 10000164, '3');
INSERT INTO `cmf_region` VALUES (10001589, 360829, '安福县', 10000164, '3');
INSERT INTO `cmf_region` VALUES (10001590, 360830, '永新县', 10000164, '3');
INSERT INTO `cmf_region` VALUES (10001591, 360881, '井冈山市', 10000164, '3');
INSERT INTO `cmf_region` VALUES (10001592, 360902, '袁州区', 10000165, '3');
INSERT INTO `cmf_region` VALUES (10001593, 360921, '奉新县', 10000165, '3');
INSERT INTO `cmf_region` VALUES (10001594, 360922, '万载县', 10000165, '3');
INSERT INTO `cmf_region` VALUES (10001595, 360923, '上高县', 10000165, '3');
INSERT INTO `cmf_region` VALUES (10001596, 360924, '宜丰县', 10000165, '3');
INSERT INTO `cmf_region` VALUES (10001597, 360925, '靖安县', 10000165, '3');
INSERT INTO `cmf_region` VALUES (10001598, 360926, '铜鼓县', 10000165, '3');
INSERT INTO `cmf_region` VALUES (10001599, 360981, '丰城市', 10000165, '3');
INSERT INTO `cmf_region` VALUES (10001600, 360982, '樟树市', 10000165, '3');
INSERT INTO `cmf_region` VALUES (10001601, 360983, '高安市', 10000165, '3');
INSERT INTO `cmf_region` VALUES (10001602, 361002, '临川区', 10000166, '3');
INSERT INTO `cmf_region` VALUES (10001603, 361003, '东乡区', 10000166, '3');
INSERT INTO `cmf_region` VALUES (10001604, 361021, '南城县', 10000166, '3');
INSERT INTO `cmf_region` VALUES (10001605, 361022, '黎川县', 10000166, '3');
INSERT INTO `cmf_region` VALUES (10001606, 361023, '南丰县', 10000166, '3');
INSERT INTO `cmf_region` VALUES (10001607, 361024, '崇仁县', 10000166, '3');
INSERT INTO `cmf_region` VALUES (10001608, 361025, '乐安县', 10000166, '3');
INSERT INTO `cmf_region` VALUES (10001609, 361026, '宜黄县', 10000166, '3');
INSERT INTO `cmf_region` VALUES (10001610, 361027, '金溪县', 10000166, '3');
INSERT INTO `cmf_region` VALUES (10001611, 361028, '资溪县', 10000166, '3');
INSERT INTO `cmf_region` VALUES (10001612, 361030, '广昌县', 10000166, '3');
INSERT INTO `cmf_region` VALUES (10001613, 361102, '信州区', 10000167, '3');
INSERT INTO `cmf_region` VALUES (10001614, 361103, '广丰区', 10000167, '3');
INSERT INTO `cmf_region` VALUES (10001615, 361121, '上饶县', 10000167, '3');
INSERT INTO `cmf_region` VALUES (10001616, 361123, '玉山县', 10000167, '3');
INSERT INTO `cmf_region` VALUES (10001617, 361124, '铅山县', 10000167, '3');
INSERT INTO `cmf_region` VALUES (10001618, 361125, '横峰县', 10000167, '3');
INSERT INTO `cmf_region` VALUES (10001619, 361126, '弋阳县', 10000167, '3');
INSERT INTO `cmf_region` VALUES (10001620, 361127, '余干县', 10000167, '3');
INSERT INTO `cmf_region` VALUES (10001621, 361128, '鄱阳县', 10000167, '3');
INSERT INTO `cmf_region` VALUES (10001622, 361129, '万年县', 10000167, '3');
INSERT INTO `cmf_region` VALUES (10001623, 361130, '婺源县', 10000167, '3');
INSERT INTO `cmf_region` VALUES (10001624, 361181, '德兴市', 10000167, '3');
INSERT INTO `cmf_region` VALUES (10001625, 370102, '历下区', 10000168, '3');
INSERT INTO `cmf_region` VALUES (10001626, 370103, '市中区', 10000168, '3');
INSERT INTO `cmf_region` VALUES (10001627, 370104, '槐荫区', 10000168, '3');
INSERT INTO `cmf_region` VALUES (10001628, 370105, '天桥区', 10000168, '3');
INSERT INTO `cmf_region` VALUES (10001629, 370112, '历城区', 10000168, '3');
INSERT INTO `cmf_region` VALUES (10001630, 370113, '长清区', 10000168, '3');
INSERT INTO `cmf_region` VALUES (10001631, 370114, '章丘区', 10000168, '3');
INSERT INTO `cmf_region` VALUES (10001632, 370115, '济阳区', 10000168, '3');
INSERT INTO `cmf_region` VALUES (10001633, 370116, '莱芜区', 10000168, '3');
INSERT INTO `cmf_region` VALUES (10001634, 370117, '钢城区', 10000168, '3');
INSERT INTO `cmf_region` VALUES (10001635, 370124, '平阴县', 10000168, '3');
INSERT INTO `cmf_region` VALUES (10001636, 370126, '商河县', 10000168, '3');
INSERT INTO `cmf_region` VALUES (10001637, 370190, '高新区', 10000168, '3');
INSERT INTO `cmf_region` VALUES (10001638, 370202, '市南区', 10000169, '3');
INSERT INTO `cmf_region` VALUES (10001639, 370203, '市北区', 10000169, '3');
INSERT INTO `cmf_region` VALUES (10001640, 370211, '黄岛区', 10000169, '3');
INSERT INTO `cmf_region` VALUES (10001641, 370212, '崂山区', 10000169, '3');
INSERT INTO `cmf_region` VALUES (10001642, 370213, '李沧区', 10000169, '3');
INSERT INTO `cmf_region` VALUES (10001643, 370214, '城阳区', 10000169, '3');
INSERT INTO `cmf_region` VALUES (10001644, 370215, '即墨区', 10000169, '3');
INSERT INTO `cmf_region` VALUES (10001645, 370281, '胶州市', 10000169, '3');
INSERT INTO `cmf_region` VALUES (10001646, 370283, '平度市', 10000169, '3');
INSERT INTO `cmf_region` VALUES (10001647, 370285, '莱西市', 10000169, '3');
INSERT INTO `cmf_region` VALUES (10001648, 370290, '开发区', 10000169, '3');
INSERT INTO `cmf_region` VALUES (10001649, 370302, '淄川区', 10000170, '3');
INSERT INTO `cmf_region` VALUES (10001650, 370303, '张店区', 10000170, '3');
INSERT INTO `cmf_region` VALUES (10001651, 370304, '博山区', 10000170, '3');
INSERT INTO `cmf_region` VALUES (10001652, 370305, '临淄区', 10000170, '3');
INSERT INTO `cmf_region` VALUES (10001653, 370306, '周村区', 10000170, '3');
INSERT INTO `cmf_region` VALUES (10001654, 370321, '桓台县', 10000170, '3');
INSERT INTO `cmf_region` VALUES (10001655, 370322, '高青县', 10000170, '3');
INSERT INTO `cmf_region` VALUES (10001656, 370323, '沂源县', 10000170, '3');
INSERT INTO `cmf_region` VALUES (10001657, 370402, '市中区', 10000171, '3');
INSERT INTO `cmf_region` VALUES (10001658, 370403, '薛城区', 10000171, '3');
INSERT INTO `cmf_region` VALUES (10001659, 370404, '峄城区', 10000171, '3');
INSERT INTO `cmf_region` VALUES (10001660, 370405, '台儿庄区', 10000171, '3');
INSERT INTO `cmf_region` VALUES (10001661, 370406, '山亭区', 10000171, '3');
INSERT INTO `cmf_region` VALUES (10001662, 370481, '滕州市', 10000171, '3');
INSERT INTO `cmf_region` VALUES (10001663, 370502, '东营区', 10000172, '3');
INSERT INTO `cmf_region` VALUES (10001664, 370503, '河口区', 10000172, '3');
INSERT INTO `cmf_region` VALUES (10001665, 370505, '垦利区', 10000172, '3');
INSERT INTO `cmf_region` VALUES (10001666, 370522, '利津县', 10000172, '3');
INSERT INTO `cmf_region` VALUES (10001667, 370523, '广饶县', 10000172, '3');
INSERT INTO `cmf_region` VALUES (10001668, 370602, '芝罘区', 10000173, '3');
INSERT INTO `cmf_region` VALUES (10001669, 370611, '福山区', 10000173, '3');
INSERT INTO `cmf_region` VALUES (10001670, 370612, '牟平区', 10000173, '3');
INSERT INTO `cmf_region` VALUES (10001671, 370613, '莱山区', 10000173, '3');
INSERT INTO `cmf_region` VALUES (10001672, 370634, '长岛县', 10000173, '3');
INSERT INTO `cmf_region` VALUES (10001673, 370681, '龙口市', 10000173, '3');
INSERT INTO `cmf_region` VALUES (10001674, 370682, '莱阳市', 10000173, '3');
INSERT INTO `cmf_region` VALUES (10001675, 370683, '莱州市', 10000173, '3');
INSERT INTO `cmf_region` VALUES (10001676, 370684, '蓬莱市', 10000173, '3');
INSERT INTO `cmf_region` VALUES (10001677, 370685, '招远市', 10000173, '3');
INSERT INTO `cmf_region` VALUES (10001678, 370686, '栖霞市', 10000173, '3');
INSERT INTO `cmf_region` VALUES (10001679, 370687, '海阳市', 10000173, '3');
INSERT INTO `cmf_region` VALUES (10001680, 370690, '开发区', 10000173, '3');
INSERT INTO `cmf_region` VALUES (10001681, 370702, '潍城区', 10000174, '3');
INSERT INTO `cmf_region` VALUES (10001682, 370703, '寒亭区', 10000174, '3');
INSERT INTO `cmf_region` VALUES (10001683, 370704, '坊子区', 10000174, '3');
INSERT INTO `cmf_region` VALUES (10001684, 370705, '奎文区', 10000174, '3');
INSERT INTO `cmf_region` VALUES (10001685, 370724, '临朐县', 10000174, '3');
INSERT INTO `cmf_region` VALUES (10001686, 370725, '昌乐县', 10000174, '3');
INSERT INTO `cmf_region` VALUES (10001687, 370781, '青州市', 10000174, '3');
INSERT INTO `cmf_region` VALUES (10001688, 370782, '诸城市', 10000174, '3');
INSERT INTO `cmf_region` VALUES (10001689, 370783, '寿光市', 10000174, '3');
INSERT INTO `cmf_region` VALUES (10001690, 370784, '安丘市', 10000174, '3');
INSERT INTO `cmf_region` VALUES (10001691, 370785, '高密市', 10000174, '3');
INSERT INTO `cmf_region` VALUES (10001692, 370786, '昌邑市', 10000174, '3');
INSERT INTO `cmf_region` VALUES (10001693, 370790, '开发区', 10000174, '3');
INSERT INTO `cmf_region` VALUES (10001694, 370791, '高新区', 10000174, '3');
INSERT INTO `cmf_region` VALUES (10001695, 370811, '任城区', 10000175, '3');
INSERT INTO `cmf_region` VALUES (10001696, 370812, '兖州区', 10000175, '3');
INSERT INTO `cmf_region` VALUES (10001697, 370826, '微山县', 10000175, '3');
INSERT INTO `cmf_region` VALUES (10001698, 370827, '鱼台县', 10000175, '3');
INSERT INTO `cmf_region` VALUES (10001699, 370828, '金乡县', 10000175, '3');
INSERT INTO `cmf_region` VALUES (10001700, 370829, '嘉祥县', 10000175, '3');
INSERT INTO `cmf_region` VALUES (10001701, 370830, '汶上县', 10000175, '3');
INSERT INTO `cmf_region` VALUES (10001702, 370831, '泗水县', 10000175, '3');
INSERT INTO `cmf_region` VALUES (10001703, 370832, '梁山县', 10000175, '3');
INSERT INTO `cmf_region` VALUES (10001704, 370881, '曲阜市', 10000175, '3');
INSERT INTO `cmf_region` VALUES (10001705, 370883, '邹城市', 10000175, '3');
INSERT INTO `cmf_region` VALUES (10001706, 370890, '高新区', 10000175, '3');
INSERT INTO `cmf_region` VALUES (10001707, 370902, '泰山区', 10000176, '3');
INSERT INTO `cmf_region` VALUES (10001708, 370911, '岱岳区', 10000176, '3');
INSERT INTO `cmf_region` VALUES (10001709, 370921, '宁阳县', 10000176, '3');
INSERT INTO `cmf_region` VALUES (10001710, 370923, '东平县', 10000176, '3');
INSERT INTO `cmf_region` VALUES (10001711, 370982, '新泰市', 10000176, '3');
INSERT INTO `cmf_region` VALUES (10001712, 370983, '肥城市', 10000176, '3');
INSERT INTO `cmf_region` VALUES (10001713, 371002, '环翠区', 10000177, '3');
INSERT INTO `cmf_region` VALUES (10001714, 371003, '文登区', 10000177, '3');
INSERT INTO `cmf_region` VALUES (10001715, 371082, '荣成市', 10000177, '3');
INSERT INTO `cmf_region` VALUES (10001716, 371083, '乳山市', 10000177, '3');
INSERT INTO `cmf_region` VALUES (10001717, 371091, '经济技术开发区', 10000177, '3');
INSERT INTO `cmf_region` VALUES (10001718, 371102, '东港区', 10000178, '3');
INSERT INTO `cmf_region` VALUES (10001719, 371103, '岚山区', 10000178, '3');
INSERT INTO `cmf_region` VALUES (10001720, 371121, '五莲县', 10000178, '3');
INSERT INTO `cmf_region` VALUES (10001721, 371122, '莒县', 10000178, '3');
INSERT INTO `cmf_region` VALUES (10001722, 371302, '兰山区', 10000179, '3');
INSERT INTO `cmf_region` VALUES (10001723, 371311, '罗庄区', 10000179, '3');
INSERT INTO `cmf_region` VALUES (10001724, 371312, '河东区', 10000179, '3');
INSERT INTO `cmf_region` VALUES (10001725, 371321, '沂南县', 10000179, '3');
INSERT INTO `cmf_region` VALUES (10001726, 371322, '郯城县', 10000179, '3');
INSERT INTO `cmf_region` VALUES (10001727, 371323, '沂水县', 10000179, '3');
INSERT INTO `cmf_region` VALUES (10001728, 371324, '兰陵县', 10000179, '3');
INSERT INTO `cmf_region` VALUES (10001729, 371325, '费县', 10000179, '3');
INSERT INTO `cmf_region` VALUES (10001730, 371326, '平邑县', 10000179, '3');
INSERT INTO `cmf_region` VALUES (10001731, 371327, '莒南县', 10000179, '3');
INSERT INTO `cmf_region` VALUES (10001732, 371328, '蒙阴县', 10000179, '3');
INSERT INTO `cmf_region` VALUES (10001733, 371329, '临沭县', 10000179, '3');
INSERT INTO `cmf_region` VALUES (10001734, 371402, '德城区', 10000180, '3');
INSERT INTO `cmf_region` VALUES (10001735, 371403, '陵城区', 10000180, '3');
INSERT INTO `cmf_region` VALUES (10001736, 371422, '宁津县', 10000180, '3');
INSERT INTO `cmf_region` VALUES (10001737, 371423, '庆云县', 10000180, '3');
INSERT INTO `cmf_region` VALUES (10001738, 371424, '临邑县', 10000180, '3');
INSERT INTO `cmf_region` VALUES (10001739, 371425, '齐河县', 10000180, '3');
INSERT INTO `cmf_region` VALUES (10001740, 371426, '平原县', 10000180, '3');
INSERT INTO `cmf_region` VALUES (10001741, 371427, '夏津县', 10000180, '3');
INSERT INTO `cmf_region` VALUES (10001742, 371428, '武城县', 10000180, '3');
INSERT INTO `cmf_region` VALUES (10001743, 371481, '乐陵市', 10000180, '3');
INSERT INTO `cmf_region` VALUES (10001744, 371482, '禹城市', 10000180, '3');
INSERT INTO `cmf_region` VALUES (10001745, 371502, '东昌府区', 10000181, '3');
INSERT INTO `cmf_region` VALUES (10001746, 371521, '阳谷县', 10000181, '3');
INSERT INTO `cmf_region` VALUES (10001747, 371522, '莘县', 10000181, '3');
INSERT INTO `cmf_region` VALUES (10001748, 371523, '茌平县', 10000181, '3');
INSERT INTO `cmf_region` VALUES (10001749, 371524, '东阿县', 10000181, '3');
INSERT INTO `cmf_region` VALUES (10001750, 371525, '冠县', 10000181, '3');
INSERT INTO `cmf_region` VALUES (10001751, 371526, '高唐县', 10000181, '3');
INSERT INTO `cmf_region` VALUES (10001752, 371581, '临清市', 10000181, '3');
INSERT INTO `cmf_region` VALUES (10001753, 371602, '滨城区', 10000182, '3');
INSERT INTO `cmf_region` VALUES (10001754, 371603, '沾化区', 10000182, '3');
INSERT INTO `cmf_region` VALUES (10001755, 371621, '惠民县', 10000182, '3');
INSERT INTO `cmf_region` VALUES (10001756, 371622, '阳信县', 10000182, '3');
INSERT INTO `cmf_region` VALUES (10001757, 371623, '无棣县', 10000182, '3');
INSERT INTO `cmf_region` VALUES (10001758, 371625, '博兴县', 10000182, '3');
INSERT INTO `cmf_region` VALUES (10001759, 371681, '邹平市', 10000182, '3');
INSERT INTO `cmf_region` VALUES (10001760, 371702, '牡丹区', 10000183, '3');
INSERT INTO `cmf_region` VALUES (10001761, 371703, '定陶区', 10000183, '3');
INSERT INTO `cmf_region` VALUES (10001762, 371721, '曹县', 10000183, '3');
INSERT INTO `cmf_region` VALUES (10001763, 371722, '单县', 10000183, '3');
INSERT INTO `cmf_region` VALUES (10001764, 371723, '成武县', 10000183, '3');
INSERT INTO `cmf_region` VALUES (10001765, 371724, '巨野县', 10000183, '3');
INSERT INTO `cmf_region` VALUES (10001766, 371725, '郓城县', 10000183, '3');
INSERT INTO `cmf_region` VALUES (10001767, 371726, '鄄城县', 10000183, '3');
INSERT INTO `cmf_region` VALUES (10001768, 371728, '东明县', 10000183, '3');
INSERT INTO `cmf_region` VALUES (10001769, 410102, '中原区', 10000184, '3');
INSERT INTO `cmf_region` VALUES (10001770, 410103, '二七区', 10000184, '3');
INSERT INTO `cmf_region` VALUES (10001771, 410104, '管城回族区', 10000184, '3');
INSERT INTO `cmf_region` VALUES (10001772, 410105, '金水区', 10000184, '3');
INSERT INTO `cmf_region` VALUES (10001773, 410106, '上街区', 10000184, '3');
INSERT INTO `cmf_region` VALUES (10001774, 410108, '惠济区', 10000184, '3');
INSERT INTO `cmf_region` VALUES (10001775, 410122, '中牟县', 10000184, '3');
INSERT INTO `cmf_region` VALUES (10001776, 410181, '巩义市', 10000184, '3');
INSERT INTO `cmf_region` VALUES (10001777, 410182, '荥阳市', 10000184, '3');
INSERT INTO `cmf_region` VALUES (10001778, 410183, '新密市', 10000184, '3');
INSERT INTO `cmf_region` VALUES (10001779, 410184, '新郑市', 10000184, '3');
INSERT INTO `cmf_region` VALUES (10001780, 410185, '登封市', 10000184, '3');
INSERT INTO `cmf_region` VALUES (10001781, 410190, '高新技术开发区', 10000184, '3');
INSERT INTO `cmf_region` VALUES (10001782, 410191, '经济技术开发区', 10000184, '3');
INSERT INTO `cmf_region` VALUES (10001783, 410202, '龙亭区', 10000185, '3');
INSERT INTO `cmf_region` VALUES (10001784, 410203, '顺河回族区', 10000185, '3');
INSERT INTO `cmf_region` VALUES (10001785, 410204, '鼓楼区', 10000185, '3');
INSERT INTO `cmf_region` VALUES (10001786, 410205, '禹王台区', 10000185, '3');
INSERT INTO `cmf_region` VALUES (10001787, 410212, '祥符区', 10000185, '3');
INSERT INTO `cmf_region` VALUES (10001788, 410221, '杞县', 10000185, '3');
INSERT INTO `cmf_region` VALUES (10001789, 410222, '通许县', 10000185, '3');
INSERT INTO `cmf_region` VALUES (10001790, 410223, '尉氏县', 10000185, '3');
INSERT INTO `cmf_region` VALUES (10001791, 410225, '兰考县', 10000185, '3');
INSERT INTO `cmf_region` VALUES (10001792, 410302, '老城区', 10000186, '3');
INSERT INTO `cmf_region` VALUES (10001793, 410303, '西工区', 10000186, '3');
INSERT INTO `cmf_region` VALUES (10001794, 410304, '瀍河回族区', 10000186, '3');
INSERT INTO `cmf_region` VALUES (10001795, 410305, '涧西区', 10000186, '3');
INSERT INTO `cmf_region` VALUES (10001796, 410306, '吉利区', 10000186, '3');
INSERT INTO `cmf_region` VALUES (10001797, 410311, '洛龙区', 10000186, '3');
INSERT INTO `cmf_region` VALUES (10001798, 410322, '孟津县', 10000186, '3');
INSERT INTO `cmf_region` VALUES (10001799, 410323, '新安县', 10000186, '3');
INSERT INTO `cmf_region` VALUES (10001800, 410324, '栾川县', 10000186, '3');
INSERT INTO `cmf_region` VALUES (10001801, 410325, '嵩县', 10000186, '3');
INSERT INTO `cmf_region` VALUES (10001802, 410326, '汝阳县', 10000186, '3');
INSERT INTO `cmf_region` VALUES (10001803, 410327, '宜阳县', 10000186, '3');
INSERT INTO `cmf_region` VALUES (10001804, 410328, '洛宁县', 10000186, '3');
INSERT INTO `cmf_region` VALUES (10001805, 410329, '伊川县', 10000186, '3');
INSERT INTO `cmf_region` VALUES (10001806, 410381, '偃师市', 10000186, '3');
INSERT INTO `cmf_region` VALUES (10001807, 410402, '新华区', 10000187, '3');
INSERT INTO `cmf_region` VALUES (10001808, 410403, '卫东区', 10000187, '3');
INSERT INTO `cmf_region` VALUES (10001809, 410404, '石龙区', 10000187, '3');
INSERT INTO `cmf_region` VALUES (10001810, 410411, '湛河区', 10000187, '3');
INSERT INTO `cmf_region` VALUES (10001811, 410421, '宝丰县', 10000187, '3');
INSERT INTO `cmf_region` VALUES (10001812, 410422, '叶县', 10000187, '3');
INSERT INTO `cmf_region` VALUES (10001813, 410423, '鲁山县', 10000187, '3');
INSERT INTO `cmf_region` VALUES (10001814, 410425, '郏县', 10000187, '3');
INSERT INTO `cmf_region` VALUES (10001815, 410481, '舞钢市', 10000187, '3');
INSERT INTO `cmf_region` VALUES (10001816, 410482, '汝州市', 10000187, '3');
INSERT INTO `cmf_region` VALUES (10001817, 410502, '文峰区', 10000188, '3');
INSERT INTO `cmf_region` VALUES (10001818, 410503, '北关区', 10000188, '3');
INSERT INTO `cmf_region` VALUES (10001819, 410505, '殷都区', 10000188, '3');
INSERT INTO `cmf_region` VALUES (10001820, 410506, '龙安区', 10000188, '3');
INSERT INTO `cmf_region` VALUES (10001821, 410522, '安阳县', 10000188, '3');
INSERT INTO `cmf_region` VALUES (10001822, 410523, '汤阴县', 10000188, '3');
INSERT INTO `cmf_region` VALUES (10001823, 410526, '滑县', 10000188, '3');
INSERT INTO `cmf_region` VALUES (10001824, 410527, '内黄县', 10000188, '3');
INSERT INTO `cmf_region` VALUES (10001825, 410581, '林州市', 10000188, '3');
INSERT INTO `cmf_region` VALUES (10001826, 410590, '开发区', 10000188, '3');
INSERT INTO `cmf_region` VALUES (10001827, 410602, '鹤山区', 10000189, '3');
INSERT INTO `cmf_region` VALUES (10001828, 410603, '山城区', 10000189, '3');
INSERT INTO `cmf_region` VALUES (10001829, 410611, '淇滨区', 10000189, '3');
INSERT INTO `cmf_region` VALUES (10001830, 410621, '浚县', 10000189, '3');
INSERT INTO `cmf_region` VALUES (10001831, 410622, '淇县', 10000189, '3');
INSERT INTO `cmf_region` VALUES (10001832, 410702, '红旗区', 10000190, '3');
INSERT INTO `cmf_region` VALUES (10001833, 410703, '卫滨区', 10000190, '3');
INSERT INTO `cmf_region` VALUES (10001834, 410704, '凤泉区', 10000190, '3');
INSERT INTO `cmf_region` VALUES (10001835, 410711, '牧野区', 10000190, '3');
INSERT INTO `cmf_region` VALUES (10001836, 410721, '新乡县', 10000190, '3');
INSERT INTO `cmf_region` VALUES (10001837, 410724, '获嘉县', 10000190, '3');
INSERT INTO `cmf_region` VALUES (10001838, 410725, '原阳县', 10000190, '3');
INSERT INTO `cmf_region` VALUES (10001839, 410726, '延津县', 10000190, '3');
INSERT INTO `cmf_region` VALUES (10001840, 410727, '封丘县', 10000190, '3');
INSERT INTO `cmf_region` VALUES (10001841, 410728, '长垣县', 10000190, '3');
INSERT INTO `cmf_region` VALUES (10001842, 410781, '卫辉市', 10000190, '3');
INSERT INTO `cmf_region` VALUES (10001843, 410782, '辉县市', 10000190, '3');
INSERT INTO `cmf_region` VALUES (10001844, 410802, '解放区', 10000191, '3');
INSERT INTO `cmf_region` VALUES (10001845, 410803, '中站区', 10000191, '3');
INSERT INTO `cmf_region` VALUES (10001846, 410804, '马村区', 10000191, '3');
INSERT INTO `cmf_region` VALUES (10001847, 410811, '山阳区', 10000191, '3');
INSERT INTO `cmf_region` VALUES (10001848, 410821, '修武县', 10000191, '3');
INSERT INTO `cmf_region` VALUES (10001849, 410822, '博爱县', 10000191, '3');
INSERT INTO `cmf_region` VALUES (10001850, 410823, '武陟县', 10000191, '3');
INSERT INTO `cmf_region` VALUES (10001851, 410825, '温县', 10000191, '3');
INSERT INTO `cmf_region` VALUES (10001852, 410882, '沁阳市', 10000191, '3');
INSERT INTO `cmf_region` VALUES (10001853, 410883, '孟州市', 10000191, '3');
INSERT INTO `cmf_region` VALUES (10001854, 410902, '华龙区', 10000192, '3');
INSERT INTO `cmf_region` VALUES (10001855, 410922, '清丰县', 10000192, '3');
INSERT INTO `cmf_region` VALUES (10001856, 410923, '南乐县', 10000192, '3');
INSERT INTO `cmf_region` VALUES (10001857, 410926, '范县', 10000192, '3');
INSERT INTO `cmf_region` VALUES (10001858, 410927, '台前县', 10000192, '3');
INSERT INTO `cmf_region` VALUES (10001859, 410928, '濮阳县', 10000192, '3');
INSERT INTO `cmf_region` VALUES (10001860, 411002, '魏都区', 10000193, '3');
INSERT INTO `cmf_region` VALUES (10001861, 411003, '建安区', 10000193, '3');
INSERT INTO `cmf_region` VALUES (10001862, 411024, '鄢陵县', 10000193, '3');
INSERT INTO `cmf_region` VALUES (10001863, 411025, '襄城县', 10000193, '3');
INSERT INTO `cmf_region` VALUES (10001864, 411081, '禹州市', 10000193, '3');
INSERT INTO `cmf_region` VALUES (10001865, 411082, '长葛市', 10000193, '3');
INSERT INTO `cmf_region` VALUES (10001866, 411102, '源汇区', 10000194, '3');
INSERT INTO `cmf_region` VALUES (10001867, 411103, '郾城区', 10000194, '3');
INSERT INTO `cmf_region` VALUES (10001868, 411104, '召陵区', 10000194, '3');
INSERT INTO `cmf_region` VALUES (10001869, 411121, '舞阳县', 10000194, '3');
INSERT INTO `cmf_region` VALUES (10001870, 411122, '临颍县', 10000194, '3');
INSERT INTO `cmf_region` VALUES (10001871, 411202, '湖滨区', 10000195, '3');
INSERT INTO `cmf_region` VALUES (10001872, 411203, '陕州区', 10000195, '3');
INSERT INTO `cmf_region` VALUES (10001873, 411221, '渑池县', 10000195, '3');
INSERT INTO `cmf_region` VALUES (10001874, 411224, '卢氏县', 10000195, '3');
INSERT INTO `cmf_region` VALUES (10001875, 411281, '义马市', 10000195, '3');
INSERT INTO `cmf_region` VALUES (10001876, 411282, '灵宝市', 10000195, '3');
INSERT INTO `cmf_region` VALUES (10001877, 411302, '宛城区', 10000196, '3');
INSERT INTO `cmf_region` VALUES (10001878, 411303, '卧龙区', 10000196, '3');
INSERT INTO `cmf_region` VALUES (10001879, 411321, '南召县', 10000196, '3');
INSERT INTO `cmf_region` VALUES (10001880, 411322, '方城县', 10000196, '3');
INSERT INTO `cmf_region` VALUES (10001881, 411323, '西峡县', 10000196, '3');
INSERT INTO `cmf_region` VALUES (10001882, 411324, '镇平县', 10000196, '3');
INSERT INTO `cmf_region` VALUES (10001883, 411325, '内乡县', 10000196, '3');
INSERT INTO `cmf_region` VALUES (10001884, 411326, '淅川县', 10000196, '3');
INSERT INTO `cmf_region` VALUES (10001885, 411327, '社旗县', 10000196, '3');
INSERT INTO `cmf_region` VALUES (10001886, 411328, '唐河县', 10000196, '3');
INSERT INTO `cmf_region` VALUES (10001887, 411329, '新野县', 10000196, '3');
INSERT INTO `cmf_region` VALUES (10001888, 411330, '桐柏县', 10000196, '3');
INSERT INTO `cmf_region` VALUES (10001889, 411381, '邓州市', 10000196, '3');
INSERT INTO `cmf_region` VALUES (10001890, 411402, '梁园区', 10000197, '3');
INSERT INTO `cmf_region` VALUES (10001891, 411403, '睢阳区', 10000197, '3');
INSERT INTO `cmf_region` VALUES (10001892, 411421, '民权县', 10000197, '3');
INSERT INTO `cmf_region` VALUES (10001893, 411422, '睢县', 10000197, '3');
INSERT INTO `cmf_region` VALUES (10001894, 411423, '宁陵县', 10000197, '3');
INSERT INTO `cmf_region` VALUES (10001895, 411424, '柘城县', 10000197, '3');
INSERT INTO `cmf_region` VALUES (10001896, 411425, '虞城县', 10000197, '3');
INSERT INTO `cmf_region` VALUES (10001897, 411426, '夏邑县', 10000197, '3');
INSERT INTO `cmf_region` VALUES (10001898, 411481, '永城市', 10000197, '3');
INSERT INTO `cmf_region` VALUES (10001899, 411502, '浉河区', 10000198, '3');
INSERT INTO `cmf_region` VALUES (10001900, 411503, '平桥区', 10000198, '3');
INSERT INTO `cmf_region` VALUES (10001901, 411521, '罗山县', 10000198, '3');
INSERT INTO `cmf_region` VALUES (10001902, 411522, '光山县', 10000198, '3');
INSERT INTO `cmf_region` VALUES (10001903, 411523, '新县', 10000198, '3');
INSERT INTO `cmf_region` VALUES (10001904, 411524, '商城县', 10000198, '3');
INSERT INTO `cmf_region` VALUES (10001905, 411525, '固始县', 10000198, '3');
INSERT INTO `cmf_region` VALUES (10001906, 411526, '潢川县', 10000198, '3');
INSERT INTO `cmf_region` VALUES (10001907, 411527, '淮滨县', 10000198, '3');
INSERT INTO `cmf_region` VALUES (10001908, 411528, '息县', 10000198, '3');
INSERT INTO `cmf_region` VALUES (10001909, 411602, '川汇区', 10000199, '3');
INSERT INTO `cmf_region` VALUES (10001910, 411621, '扶沟县', 10000199, '3');
INSERT INTO `cmf_region` VALUES (10001911, 411622, '西华县', 10000199, '3');
INSERT INTO `cmf_region` VALUES (10001912, 411623, '商水县', 10000199, '3');
INSERT INTO `cmf_region` VALUES (10001913, 411624, '沈丘县', 10000199, '3');
INSERT INTO `cmf_region` VALUES (10001914, 411625, '郸城县', 10000199, '3');
INSERT INTO `cmf_region` VALUES (10001915, 411626, '淮阳县', 10000199, '3');
INSERT INTO `cmf_region` VALUES (10001916, 411627, '太康县', 10000199, '3');
INSERT INTO `cmf_region` VALUES (10001917, 411628, '鹿邑县', 10000199, '3');
INSERT INTO `cmf_region` VALUES (10001918, 411681, '项城市', 10000199, '3');
INSERT INTO `cmf_region` VALUES (10001919, 411690, '经济开发区', 10000199, '3');
INSERT INTO `cmf_region` VALUES (10001920, 411702, '驿城区', 10000200, '3');
INSERT INTO `cmf_region` VALUES (10001921, 411721, '西平县', 10000200, '3');
INSERT INTO `cmf_region` VALUES (10001922, 411722, '上蔡县', 10000200, '3');
INSERT INTO `cmf_region` VALUES (10001923, 411723, '平舆县', 10000200, '3');
INSERT INTO `cmf_region` VALUES (10001924, 411724, '正阳县', 10000200, '3');
INSERT INTO `cmf_region` VALUES (10001925, 411725, '确山县', 10000200, '3');
INSERT INTO `cmf_region` VALUES (10001926, 411726, '泌阳县', 10000200, '3');
INSERT INTO `cmf_region` VALUES (10001927, 411727, '汝南县', 10000200, '3');
INSERT INTO `cmf_region` VALUES (10001928, 411728, '遂平县', 10000200, '3');
INSERT INTO `cmf_region` VALUES (10001929, 411729, '新蔡县', 10000200, '3');
INSERT INTO `cmf_region` VALUES (10001930, 419001, '济源市', 10000201, '3');
INSERT INTO `cmf_region` VALUES (10001931, 420102, '江岸区', 10000202, '3');
INSERT INTO `cmf_region` VALUES (10001932, 420103, '江汉区', 10000202, '3');
INSERT INTO `cmf_region` VALUES (10001933, 420104, '硚口区', 10000202, '3');
INSERT INTO `cmf_region` VALUES (10001934, 420105, '汉阳区', 10000202, '3');
INSERT INTO `cmf_region` VALUES (10001935, 420106, '武昌区', 10000202, '3');
INSERT INTO `cmf_region` VALUES (10001936, 420107, '青山区', 10000202, '3');
INSERT INTO `cmf_region` VALUES (10001937, 420111, '洪山区', 10000202, '3');
INSERT INTO `cmf_region` VALUES (10001938, 420112, '东西湖区', 10000202, '3');
INSERT INTO `cmf_region` VALUES (10001939, 420113, '汉南区', 10000202, '3');
INSERT INTO `cmf_region` VALUES (10001940, 420114, '蔡甸区', 10000202, '3');
INSERT INTO `cmf_region` VALUES (10001941, 420115, '江夏区', 10000202, '3');
INSERT INTO `cmf_region` VALUES (10001942, 420116, '黄陂区', 10000202, '3');
INSERT INTO `cmf_region` VALUES (10001943, 420117, '新洲区', 10000202, '3');
INSERT INTO `cmf_region` VALUES (10001944, 420202, '黄石港区', 10000203, '3');
INSERT INTO `cmf_region` VALUES (10001945, 420203, '西塞山区', 10000203, '3');
INSERT INTO `cmf_region` VALUES (10001946, 420204, '下陆区', 10000203, '3');
INSERT INTO `cmf_region` VALUES (10001947, 420205, '铁山区', 10000203, '3');
INSERT INTO `cmf_region` VALUES (10001948, 420222, '阳新县', 10000203, '3');
INSERT INTO `cmf_region` VALUES (10001949, 420281, '大冶市', 10000203, '3');
INSERT INTO `cmf_region` VALUES (10001950, 420302, '茅箭区', 10000204, '3');
INSERT INTO `cmf_region` VALUES (10001951, 420303, '张湾区', 10000204, '3');
INSERT INTO `cmf_region` VALUES (10001952, 420304, '郧阳区', 10000204, '3');
INSERT INTO `cmf_region` VALUES (10001953, 420322, '郧西县', 10000204, '3');
INSERT INTO `cmf_region` VALUES (10001954, 420323, '竹山县', 10000204, '3');
INSERT INTO `cmf_region` VALUES (10001955, 420324, '竹溪县', 10000204, '3');
INSERT INTO `cmf_region` VALUES (10001956, 420325, '房县', 10000204, '3');
INSERT INTO `cmf_region` VALUES (10001957, 420381, '丹江口市', 10000204, '3');
INSERT INTO `cmf_region` VALUES (10001958, 420502, '西陵区', 10000205, '3');
INSERT INTO `cmf_region` VALUES (10001959, 420503, '伍家岗区', 10000205, '3');
INSERT INTO `cmf_region` VALUES (10001960, 420504, '点军区', 10000205, '3');
INSERT INTO `cmf_region` VALUES (10001961, 420505, '猇亭区', 10000205, '3');
INSERT INTO `cmf_region` VALUES (10001962, 420506, '夷陵区', 10000205, '3');
INSERT INTO `cmf_region` VALUES (10001963, 420525, '远安县', 10000205, '3');
INSERT INTO `cmf_region` VALUES (10001964, 420526, '兴山县', 10000205, '3');
INSERT INTO `cmf_region` VALUES (10001965, 420527, '秭归县', 10000205, '3');
INSERT INTO `cmf_region` VALUES (10001966, 420528, '长阳土家族自治县', 10000205, '3');
INSERT INTO `cmf_region` VALUES (10001967, 420529, '五峰土家族自治县', 10000205, '3');
INSERT INTO `cmf_region` VALUES (10001968, 420581, '宜都市', 10000205, '3');
INSERT INTO `cmf_region` VALUES (10001969, 420582, '当阳市', 10000205, '3');
INSERT INTO `cmf_region` VALUES (10001970, 420583, '枝江市', 10000205, '3');
INSERT INTO `cmf_region` VALUES (10001971, 420590, '经济开发区', 10000205, '3');
INSERT INTO `cmf_region` VALUES (10001972, 420602, '襄城区', 10000206, '3');
INSERT INTO `cmf_region` VALUES (10001973, 420606, '樊城区', 10000206, '3');
INSERT INTO `cmf_region` VALUES (10001974, 420607, '襄州区', 10000206, '3');
INSERT INTO `cmf_region` VALUES (10001975, 420624, '南漳县', 10000206, '3');
INSERT INTO `cmf_region` VALUES (10001976, 420625, '谷城县', 10000206, '3');
INSERT INTO `cmf_region` VALUES (10001977, 420626, '保康县', 10000206, '3');
INSERT INTO `cmf_region` VALUES (10001978, 420682, '老河口市', 10000206, '3');
INSERT INTO `cmf_region` VALUES (10001979, 420683, '枣阳市', 10000206, '3');
INSERT INTO `cmf_region` VALUES (10001980, 420684, '宜城市', 10000206, '3');
INSERT INTO `cmf_region` VALUES (10001981, 420702, '梁子湖区', 10000207, '3');
INSERT INTO `cmf_region` VALUES (10001982, 420703, '华容区', 10000207, '3');
INSERT INTO `cmf_region` VALUES (10001983, 420704, '鄂城区', 10000207, '3');
INSERT INTO `cmf_region` VALUES (10001984, 420802, '东宝区', 10000208, '3');
INSERT INTO `cmf_region` VALUES (10001985, 420804, '掇刀区', 10000208, '3');
INSERT INTO `cmf_region` VALUES (10001986, 420822, '沙洋县', 10000208, '3');
INSERT INTO `cmf_region` VALUES (10001987, 420881, '钟祥市', 10000208, '3');
INSERT INTO `cmf_region` VALUES (10001988, 420882, '京山市', 10000208, '3');
INSERT INTO `cmf_region` VALUES (10001989, 420902, '孝南区', 10000209, '3');
INSERT INTO `cmf_region` VALUES (10001990, 420921, '孝昌县', 10000209, '3');
INSERT INTO `cmf_region` VALUES (10001991, 420922, '大悟县', 10000209, '3');
INSERT INTO `cmf_region` VALUES (10001992, 420923, '云梦县', 10000209, '3');
INSERT INTO `cmf_region` VALUES (10001993, 420981, '应城市', 10000209, '3');
INSERT INTO `cmf_region` VALUES (10001994, 420982, '安陆市', 10000209, '3');
INSERT INTO `cmf_region` VALUES (10001995, 420984, '汉川市', 10000209, '3');
INSERT INTO `cmf_region` VALUES (10001996, 421002, '沙市区', 10000210, '3');
INSERT INTO `cmf_region` VALUES (10001997, 421003, '荆州区', 10000210, '3');
INSERT INTO `cmf_region` VALUES (10001998, 421022, '公安县', 10000210, '3');
INSERT INTO `cmf_region` VALUES (10001999, 421023, '监利县', 10000210, '3');
INSERT INTO `cmf_region` VALUES (10002000, 421024, '江陵县', 10000210, '3');
INSERT INTO `cmf_region` VALUES (10002001, 421081, '石首市', 10000210, '3');
INSERT INTO `cmf_region` VALUES (10002002, 421083, '洪湖市', 10000210, '3');
INSERT INTO `cmf_region` VALUES (10002003, 421087, '松滋市', 10000210, '3');
INSERT INTO `cmf_region` VALUES (10002004, 421102, '黄州区', 10000211, '3');
INSERT INTO `cmf_region` VALUES (10002005, 421121, '团风县', 10000211, '3');
INSERT INTO `cmf_region` VALUES (10002006, 421122, '红安县', 10000211, '3');
INSERT INTO `cmf_region` VALUES (10002007, 421123, '罗田县', 10000211, '3');
INSERT INTO `cmf_region` VALUES (10002008, 421124, '英山县', 10000211, '3');
INSERT INTO `cmf_region` VALUES (10002009, 421125, '浠水县', 10000211, '3');
INSERT INTO `cmf_region` VALUES (10002010, 421126, '蕲春县', 10000211, '3');
INSERT INTO `cmf_region` VALUES (10002011, 421127, '黄梅县', 10000211, '3');
INSERT INTO `cmf_region` VALUES (10002012, 421181, '麻城市', 10000211, '3');
INSERT INTO `cmf_region` VALUES (10002013, 421182, '武穴市', 10000211, '3');
INSERT INTO `cmf_region` VALUES (10002014, 421202, '咸安区', 10000212, '3');
INSERT INTO `cmf_region` VALUES (10002015, 421221, '嘉鱼县', 10000212, '3');
INSERT INTO `cmf_region` VALUES (10002016, 421222, '通城县', 10000212, '3');
INSERT INTO `cmf_region` VALUES (10002017, 421223, '崇阳县', 10000212, '3');
INSERT INTO `cmf_region` VALUES (10002018, 421224, '通山县', 10000212, '3');
INSERT INTO `cmf_region` VALUES (10002019, 421281, '赤壁市', 10000212, '3');
INSERT INTO `cmf_region` VALUES (10002020, 421303, '曾都区', 10000213, '3');
INSERT INTO `cmf_region` VALUES (10002021, 421321, '随县', 10000213, '3');
INSERT INTO `cmf_region` VALUES (10002022, 421381, '广水市', 10000213, '3');
INSERT INTO `cmf_region` VALUES (10002023, 422801, '恩施市', 10000214, '3');
INSERT INTO `cmf_region` VALUES (10002024, 422802, '利川市', 10000214, '3');
INSERT INTO `cmf_region` VALUES (10002025, 422822, '建始县', 10000214, '3');
INSERT INTO `cmf_region` VALUES (10002026, 422823, '巴东县', 10000214, '3');
INSERT INTO `cmf_region` VALUES (10002027, 422825, '宣恩县', 10000214, '3');
INSERT INTO `cmf_region` VALUES (10002028, 422826, '咸丰县', 10000214, '3');
INSERT INTO `cmf_region` VALUES (10002029, 422827, '来凤县', 10000214, '3');
INSERT INTO `cmf_region` VALUES (10002030, 422828, '鹤峰县', 10000214, '3');
INSERT INTO `cmf_region` VALUES (10002031, 429004, '仙桃市', 10000215, '3');
INSERT INTO `cmf_region` VALUES (10002032, 429005, '潜江市', 10000215, '3');
INSERT INTO `cmf_region` VALUES (10002033, 429006, '天门市', 10000215, '3');
INSERT INTO `cmf_region` VALUES (10002034, 429021, '神农架林区', 10000215, '3');
INSERT INTO `cmf_region` VALUES (10002035, 430102, '芙蓉区', 10000216, '3');
INSERT INTO `cmf_region` VALUES (10002036, 430103, '天心区', 10000216, '3');
INSERT INTO `cmf_region` VALUES (10002037, 430104, '岳麓区', 10000216, '3');
INSERT INTO `cmf_region` VALUES (10002038, 430105, '开福区', 10000216, '3');
INSERT INTO `cmf_region` VALUES (10002039, 430111, '雨花区', 10000216, '3');
INSERT INTO `cmf_region` VALUES (10002040, 430112, '望城区', 10000216, '3');
INSERT INTO `cmf_region` VALUES (10002041, 430121, '长沙县', 10000216, '3');
INSERT INTO `cmf_region` VALUES (10002042, 430181, '浏阳市', 10000216, '3');
INSERT INTO `cmf_region` VALUES (10002043, 430182, '宁乡市', 10000216, '3');
INSERT INTO `cmf_region` VALUES (10002044, 430202, '荷塘区', 10000217, '3');
INSERT INTO `cmf_region` VALUES (10002045, 430203, '芦淞区', 10000217, '3');
INSERT INTO `cmf_region` VALUES (10002046, 430204, '石峰区', 10000217, '3');
INSERT INTO `cmf_region` VALUES (10002047, 430211, '天元区', 10000217, '3');
INSERT INTO `cmf_region` VALUES (10002048, 430212, '渌口区', 10000217, '3');
INSERT INTO `cmf_region` VALUES (10002049, 430223, '攸县', 10000217, '3');
INSERT INTO `cmf_region` VALUES (10002050, 430224, '茶陵县', 10000217, '3');
INSERT INTO `cmf_region` VALUES (10002051, 430225, '炎陵县', 10000217, '3');
INSERT INTO `cmf_region` VALUES (10002052, 430281, '醴陵市', 10000217, '3');
INSERT INTO `cmf_region` VALUES (10002053, 430302, '雨湖区', 10000218, '3');
INSERT INTO `cmf_region` VALUES (10002054, 430304, '岳塘区', 10000218, '3');
INSERT INTO `cmf_region` VALUES (10002055, 430321, '湘潭县', 10000218, '3');
INSERT INTO `cmf_region` VALUES (10002056, 430381, '湘乡市', 10000218, '3');
INSERT INTO `cmf_region` VALUES (10002057, 430382, '韶山市', 10000218, '3');
INSERT INTO `cmf_region` VALUES (10002058, 430405, '珠晖区', 10000219, '3');
INSERT INTO `cmf_region` VALUES (10002059, 430406, '雁峰区', 10000219, '3');
INSERT INTO `cmf_region` VALUES (10002060, 430407, '石鼓区', 10000219, '3');
INSERT INTO `cmf_region` VALUES (10002061, 430408, '蒸湘区', 10000219, '3');
INSERT INTO `cmf_region` VALUES (10002062, 430412, '南岳区', 10000219, '3');
INSERT INTO `cmf_region` VALUES (10002063, 430421, '衡阳县', 10000219, '3');
INSERT INTO `cmf_region` VALUES (10002064, 430422, '衡南县', 10000219, '3');
INSERT INTO `cmf_region` VALUES (10002065, 430423, '衡山县', 10000219, '3');
INSERT INTO `cmf_region` VALUES (10002066, 430424, '衡东县', 10000219, '3');
INSERT INTO `cmf_region` VALUES (10002067, 430426, '祁东县', 10000219, '3');
INSERT INTO `cmf_region` VALUES (10002068, 430481, '耒阳市', 10000219, '3');
INSERT INTO `cmf_region` VALUES (10002069, 430482, '常宁市', 10000219, '3');
INSERT INTO `cmf_region` VALUES (10002070, 430502, '双清区', 10000220, '3');
INSERT INTO `cmf_region` VALUES (10002071, 430503, '大祥区', 10000220, '3');
INSERT INTO `cmf_region` VALUES (10002072, 430511, '北塔区', 10000220, '3');
INSERT INTO `cmf_region` VALUES (10002073, 430521, '邵东县', 10000220, '3');
INSERT INTO `cmf_region` VALUES (10002074, 430522, '新邵县', 10000220, '3');
INSERT INTO `cmf_region` VALUES (10002075, 430523, '邵阳县', 10000220, '3');
INSERT INTO `cmf_region` VALUES (10002076, 430524, '隆回县', 10000220, '3');
INSERT INTO `cmf_region` VALUES (10002077, 430525, '洞口县', 10000220, '3');
INSERT INTO `cmf_region` VALUES (10002078, 430527, '绥宁县', 10000220, '3');
INSERT INTO `cmf_region` VALUES (10002079, 430528, '新宁县', 10000220, '3');
INSERT INTO `cmf_region` VALUES (10002080, 430529, '城步苗族自治县', 10000220, '3');
INSERT INTO `cmf_region` VALUES (10002081, 430581, '武冈市', 10000220, '3');
INSERT INTO `cmf_region` VALUES (10002082, 430602, '岳阳楼区', 10000221, '3');
INSERT INTO `cmf_region` VALUES (10002083, 430603, '云溪区', 10000221, '3');
INSERT INTO `cmf_region` VALUES (10002084, 430611, '君山区', 10000221, '3');
INSERT INTO `cmf_region` VALUES (10002085, 430621, '岳阳县', 10000221, '3');
INSERT INTO `cmf_region` VALUES (10002086, 430623, '华容县', 10000221, '3');
INSERT INTO `cmf_region` VALUES (10002087, 430624, '湘阴县', 10000221, '3');
INSERT INTO `cmf_region` VALUES (10002088, 430626, '平江县', 10000221, '3');
INSERT INTO `cmf_region` VALUES (10002089, 430681, '汨罗市', 10000221, '3');
INSERT INTO `cmf_region` VALUES (10002090, 430682, '临湘市', 10000221, '3');
INSERT INTO `cmf_region` VALUES (10002091, 430702, '武陵区', 10000222, '3');
INSERT INTO `cmf_region` VALUES (10002092, 430703, '鼎城区', 10000222, '3');
INSERT INTO `cmf_region` VALUES (10002093, 430721, '安乡县', 10000222, '3');
INSERT INTO `cmf_region` VALUES (10002094, 430722, '汉寿县', 10000222, '3');
INSERT INTO `cmf_region` VALUES (10002095, 430723, '澧县', 10000222, '3');
INSERT INTO `cmf_region` VALUES (10002096, 430724, '临澧县', 10000222, '3');
INSERT INTO `cmf_region` VALUES (10002097, 430725, '桃源县', 10000222, '3');
INSERT INTO `cmf_region` VALUES (10002098, 430726, '石门县', 10000222, '3');
INSERT INTO `cmf_region` VALUES (10002099, 430781, '津市市', 10000222, '3');
INSERT INTO `cmf_region` VALUES (10002100, 430802, '永定区', 10000223, '3');
INSERT INTO `cmf_region` VALUES (10002101, 430811, '武陵源区', 10000223, '3');
INSERT INTO `cmf_region` VALUES (10002102, 430821, '慈利县', 10000223, '3');
INSERT INTO `cmf_region` VALUES (10002103, 430822, '桑植县', 10000223, '3');
INSERT INTO `cmf_region` VALUES (10002104, 430902, '资阳区', 10000224, '3');
INSERT INTO `cmf_region` VALUES (10002105, 430903, '赫山区', 10000224, '3');
INSERT INTO `cmf_region` VALUES (10002106, 430921, '南县', 10000224, '3');
INSERT INTO `cmf_region` VALUES (10002107, 430922, '桃江县', 10000224, '3');
INSERT INTO `cmf_region` VALUES (10002108, 430923, '安化县', 10000224, '3');
INSERT INTO `cmf_region` VALUES (10002109, 430981, '沅江市', 10000224, '3');
INSERT INTO `cmf_region` VALUES (10002110, 431002, '北湖区', 10000225, '3');
INSERT INTO `cmf_region` VALUES (10002111, 431003, '苏仙区', 10000225, '3');
INSERT INTO `cmf_region` VALUES (10002112, 431021, '桂阳县', 10000225, '3');
INSERT INTO `cmf_region` VALUES (10002113, 431022, '宜章县', 10000225, '3');
INSERT INTO `cmf_region` VALUES (10002114, 431023, '永兴县', 10000225, '3');
INSERT INTO `cmf_region` VALUES (10002115, 431024, '嘉禾县', 10000225, '3');
INSERT INTO `cmf_region` VALUES (10002116, 431025, '临武县', 10000225, '3');
INSERT INTO `cmf_region` VALUES (10002117, 431026, '汝城县', 10000225, '3');
INSERT INTO `cmf_region` VALUES (10002118, 431027, '桂东县', 10000225, '3');
INSERT INTO `cmf_region` VALUES (10002119, 431028, '安仁县', 10000225, '3');
INSERT INTO `cmf_region` VALUES (10002120, 431081, '资兴市', 10000225, '3');
INSERT INTO `cmf_region` VALUES (10002121, 431102, '零陵区', 10000226, '3');
INSERT INTO `cmf_region` VALUES (10002122, 431103, '冷水滩区', 10000226, '3');
INSERT INTO `cmf_region` VALUES (10002123, 431121, '祁阳县', 10000226, '3');
INSERT INTO `cmf_region` VALUES (10002124, 431122, '东安县', 10000226, '3');
INSERT INTO `cmf_region` VALUES (10002125, 431123, '双牌县', 10000226, '3');
INSERT INTO `cmf_region` VALUES (10002126, 431124, '道县', 10000226, '3');
INSERT INTO `cmf_region` VALUES (10002127, 431125, '江永县', 10000226, '3');
INSERT INTO `cmf_region` VALUES (10002128, 431126, '宁远县', 10000226, '3');
INSERT INTO `cmf_region` VALUES (10002129, 431127, '蓝山县', 10000226, '3');
INSERT INTO `cmf_region` VALUES (10002130, 431128, '新田县', 10000226, '3');
INSERT INTO `cmf_region` VALUES (10002131, 431129, '江华瑶族自治县', 10000226, '3');
INSERT INTO `cmf_region` VALUES (10002132, 431202, '鹤城区', 10000227, '3');
INSERT INTO `cmf_region` VALUES (10002133, 431221, '中方县', 10000227, '3');
INSERT INTO `cmf_region` VALUES (10002134, 431222, '沅陵县', 10000227, '3');
INSERT INTO `cmf_region` VALUES (10002135, 431223, '辰溪县', 10000227, '3');
INSERT INTO `cmf_region` VALUES (10002136, 431224, '溆浦县', 10000227, '3');
INSERT INTO `cmf_region` VALUES (10002137, 431225, '会同县', 10000227, '3');
INSERT INTO `cmf_region` VALUES (10002138, 431226, '麻阳苗族自治县', 10000227, '3');
INSERT INTO `cmf_region` VALUES (10002139, 431227, '新晃侗族自治县', 10000227, '3');
INSERT INTO `cmf_region` VALUES (10002140, 431228, '芷江侗族自治县', 10000227, '3');
INSERT INTO `cmf_region` VALUES (10002141, 431229, '靖州苗族侗族自治县', 10000227, '3');
INSERT INTO `cmf_region` VALUES (10002142, 431230, '通道侗族自治县', 10000227, '3');
INSERT INTO `cmf_region` VALUES (10002143, 431281, '洪江市', 10000227, '3');
INSERT INTO `cmf_region` VALUES (10002144, 431302, '娄星区', 10000228, '3');
INSERT INTO `cmf_region` VALUES (10002145, 431321, '双峰县', 10000228, '3');
INSERT INTO `cmf_region` VALUES (10002146, 431322, '新化县', 10000228, '3');
INSERT INTO `cmf_region` VALUES (10002147, 431381, '冷水江市', 10000228, '3');
INSERT INTO `cmf_region` VALUES (10002148, 431382, '涟源市', 10000228, '3');
INSERT INTO `cmf_region` VALUES (10002149, 433101, '吉首市', 10000229, '3');
INSERT INTO `cmf_region` VALUES (10002150, 433122, '泸溪县', 10000229, '3');
INSERT INTO `cmf_region` VALUES (10002151, 433123, '凤凰县', 10000229, '3');
INSERT INTO `cmf_region` VALUES (10002152, 433124, '花垣县', 10000229, '3');
INSERT INTO `cmf_region` VALUES (10002153, 433125, '保靖县', 10000229, '3');
INSERT INTO `cmf_region` VALUES (10002154, 433126, '古丈县', 10000229, '3');
INSERT INTO `cmf_region` VALUES (10002155, 433127, '永顺县', 10000229, '3');
INSERT INTO `cmf_region` VALUES (10002156, 433130, '龙山县', 10000229, '3');
INSERT INTO `cmf_region` VALUES (10002157, 440103, '荔湾区', 10000230, '3');
INSERT INTO `cmf_region` VALUES (10002158, 440104, '越秀区', 10000230, '3');
INSERT INTO `cmf_region` VALUES (10002159, 440105, '海珠区', 10000230, '3');
INSERT INTO `cmf_region` VALUES (10002160, 440106, '天河区', 10000230, '3');
INSERT INTO `cmf_region` VALUES (10002161, 440111, '白云区', 10000230, '3');
INSERT INTO `cmf_region` VALUES (10002162, 440112, '黄埔区', 10000230, '3');
INSERT INTO `cmf_region` VALUES (10002163, 440113, '番禺区', 10000230, '3');
INSERT INTO `cmf_region` VALUES (10002164, 440114, '花都区', 10000230, '3');
INSERT INTO `cmf_region` VALUES (10002165, 440115, '南沙区', 10000230, '3');
INSERT INTO `cmf_region` VALUES (10002166, 440117, '从化区', 10000230, '3');
INSERT INTO `cmf_region` VALUES (10002167, 440118, '增城区', 10000230, '3');
INSERT INTO `cmf_region` VALUES (10002168, 440203, '武江区', 10000231, '3');
INSERT INTO `cmf_region` VALUES (10002169, 440204, '浈江区', 10000231, '3');
INSERT INTO `cmf_region` VALUES (10002170, 440205, '曲江区', 10000231, '3');
INSERT INTO `cmf_region` VALUES (10002171, 440222, '始兴县', 10000231, '3');
INSERT INTO `cmf_region` VALUES (10002172, 440224, '仁化县', 10000231, '3');
INSERT INTO `cmf_region` VALUES (10002173, 440229, '翁源县', 10000231, '3');
INSERT INTO `cmf_region` VALUES (10002174, 440232, '乳源瑶族自治县', 10000231, '3');
INSERT INTO `cmf_region` VALUES (10002175, 440233, '新丰县', 10000231, '3');
INSERT INTO `cmf_region` VALUES (10002176, 440281, '乐昌市', 10000231, '3');
INSERT INTO `cmf_region` VALUES (10002177, 440282, '南雄市', 10000231, '3');
INSERT INTO `cmf_region` VALUES (10002178, 440303, '罗湖区', 10000232, '3');
INSERT INTO `cmf_region` VALUES (10002179, 440304, '福田区', 10000232, '3');
INSERT INTO `cmf_region` VALUES (10002180, 440305, '南山区', 10000232, '3');
INSERT INTO `cmf_region` VALUES (10002181, 440306, '宝安区', 10000232, '3');
INSERT INTO `cmf_region` VALUES (10002182, 440307, '龙岗区', 10000232, '3');
INSERT INTO `cmf_region` VALUES (10002183, 440308, '盐田区', 10000232, '3');
INSERT INTO `cmf_region` VALUES (10002184, 440309, '龙华区', 10000232, '3');
INSERT INTO `cmf_region` VALUES (10002185, 440310, '坪山区', 10000232, '3');
INSERT INTO `cmf_region` VALUES (10002186, 440311, '光明区', 10000232, '3');
INSERT INTO `cmf_region` VALUES (10002187, 440402, '香洲区', 10000233, '3');
INSERT INTO `cmf_region` VALUES (10002188, 440403, '斗门区', 10000233, '3');
INSERT INTO `cmf_region` VALUES (10002189, 440404, '金湾区', 10000233, '3');
INSERT INTO `cmf_region` VALUES (10002190, 440507, '龙湖区', 10000234, '3');
INSERT INTO `cmf_region` VALUES (10002191, 440511, '金平区', 10000234, '3');
INSERT INTO `cmf_region` VALUES (10002192, 440512, '濠江区', 10000234, '3');
INSERT INTO `cmf_region` VALUES (10002193, 440513, '潮阳区', 10000234, '3');
INSERT INTO `cmf_region` VALUES (10002194, 440514, '潮南区', 10000234, '3');
INSERT INTO `cmf_region` VALUES (10002195, 440515, '澄海区', 10000234, '3');
INSERT INTO `cmf_region` VALUES (10002196, 440523, '南澳县', 10000234, '3');
INSERT INTO `cmf_region` VALUES (10002197, 440604, '禅城区', 10000235, '3');
INSERT INTO `cmf_region` VALUES (10002198, 440605, '南海区', 10000235, '3');
INSERT INTO `cmf_region` VALUES (10002199, 440606, '顺德区', 10000235, '3');
INSERT INTO `cmf_region` VALUES (10002200, 440607, '三水区', 10000235, '3');
INSERT INTO `cmf_region` VALUES (10002201, 440608, '高明区', 10000235, '3');
INSERT INTO `cmf_region` VALUES (10002202, 440703, '蓬江区', 10000236, '3');
INSERT INTO `cmf_region` VALUES (10002203, 440704, '江海区', 10000236, '3');
INSERT INTO `cmf_region` VALUES (10002204, 440705, '新会区', 10000236, '3');
INSERT INTO `cmf_region` VALUES (10002205, 440781, '台山市', 10000236, '3');
INSERT INTO `cmf_region` VALUES (10002206, 440783, '开平市', 10000236, '3');
INSERT INTO `cmf_region` VALUES (10002207, 440784, '鹤山市', 10000236, '3');
INSERT INTO `cmf_region` VALUES (10002208, 440785, '恩平市', 10000236, '3');
INSERT INTO `cmf_region` VALUES (10002209, 440802, '赤坎区', 10000237, '3');
INSERT INTO `cmf_region` VALUES (10002210, 440803, '霞山区', 10000237, '3');
INSERT INTO `cmf_region` VALUES (10002211, 440804, '坡头区', 10000237, '3');
INSERT INTO `cmf_region` VALUES (10002212, 440811, '麻章区', 10000237, '3');
INSERT INTO `cmf_region` VALUES (10002213, 440823, '遂溪县', 10000237, '3');
INSERT INTO `cmf_region` VALUES (10002214, 440825, '徐闻县', 10000237, '3');
INSERT INTO `cmf_region` VALUES (10002215, 440881, '廉江市', 10000237, '3');
INSERT INTO `cmf_region` VALUES (10002216, 440882, '雷州市', 10000237, '3');
INSERT INTO `cmf_region` VALUES (10002217, 440883, '吴川市', 10000237, '3');
INSERT INTO `cmf_region` VALUES (10002218, 440890, '经济技术开发区', 10000237, '3');
INSERT INTO `cmf_region` VALUES (10002219, 440902, '茂南区', 10000238, '3');
INSERT INTO `cmf_region` VALUES (10002220, 440904, '电白区', 10000238, '3');
INSERT INTO `cmf_region` VALUES (10002221, 440981, '高州市', 10000238, '3');
INSERT INTO `cmf_region` VALUES (10002222, 440982, '化州市', 10000238, '3');
INSERT INTO `cmf_region` VALUES (10002223, 440983, '信宜市', 10000238, '3');
INSERT INTO `cmf_region` VALUES (10002224, 441202, '端州区', 10000239, '3');
INSERT INTO `cmf_region` VALUES (10002225, 441203, '鼎湖区', 10000239, '3');
INSERT INTO `cmf_region` VALUES (10002226, 441204, '高要区', 10000239, '3');
INSERT INTO `cmf_region` VALUES (10002227, 441223, '广宁县', 10000239, '3');
INSERT INTO `cmf_region` VALUES (10002228, 441224, '怀集县', 10000239, '3');
INSERT INTO `cmf_region` VALUES (10002229, 441225, '封开县', 10000239, '3');
INSERT INTO `cmf_region` VALUES (10002230, 441226, '德庆县', 10000239, '3');
INSERT INTO `cmf_region` VALUES (10002231, 441284, '四会市', 10000239, '3');
INSERT INTO `cmf_region` VALUES (10002232, 441302, '惠城区', 10000240, '3');
INSERT INTO `cmf_region` VALUES (10002233, 441303, '惠阳区', 10000240, '3');
INSERT INTO `cmf_region` VALUES (10002234, 441322, '博罗县', 10000240, '3');
INSERT INTO `cmf_region` VALUES (10002235, 441323, '惠东县', 10000240, '3');
INSERT INTO `cmf_region` VALUES (10002236, 441324, '龙门县', 10000240, '3');
INSERT INTO `cmf_region` VALUES (10002237, 441402, '梅江区', 10000241, '3');
INSERT INTO `cmf_region` VALUES (10002238, 441403, '梅县区', 10000241, '3');
INSERT INTO `cmf_region` VALUES (10002239, 441422, '大埔县', 10000241, '3');
INSERT INTO `cmf_region` VALUES (10002240, 441423, '丰顺县', 10000241, '3');
INSERT INTO `cmf_region` VALUES (10002241, 441424, '五华县', 10000241, '3');
INSERT INTO `cmf_region` VALUES (10002242, 441426, '平远县', 10000241, '3');
INSERT INTO `cmf_region` VALUES (10002243, 441427, '蕉岭县', 10000241, '3');
INSERT INTO `cmf_region` VALUES (10002244, 441481, '兴宁市', 10000241, '3');
INSERT INTO `cmf_region` VALUES (10002245, 441502, '城区', 10000242, '3');
INSERT INTO `cmf_region` VALUES (10002246, 441521, '海丰县', 10000242, '3');
INSERT INTO `cmf_region` VALUES (10002247, 441523, '陆河县', 10000242, '3');
INSERT INTO `cmf_region` VALUES (10002248, 441581, '陆丰市', 10000242, '3');
INSERT INTO `cmf_region` VALUES (10002249, 441602, '源城区', 10000243, '3');
INSERT INTO `cmf_region` VALUES (10002250, 441621, '紫金县', 10000243, '3');
INSERT INTO `cmf_region` VALUES (10002251, 441622, '龙川县', 10000243, '3');
INSERT INTO `cmf_region` VALUES (10002252, 441623, '连平县', 10000243, '3');
INSERT INTO `cmf_region` VALUES (10002253, 441624, '和平县', 10000243, '3');
INSERT INTO `cmf_region` VALUES (10002254, 441625, '东源县', 10000243, '3');
INSERT INTO `cmf_region` VALUES (10002255, 441702, '江城区', 10000244, '3');
INSERT INTO `cmf_region` VALUES (10002256, 441704, '阳东区', 10000244, '3');
INSERT INTO `cmf_region` VALUES (10002257, 441721, '阳西县', 10000244, '3');
INSERT INTO `cmf_region` VALUES (10002258, 441781, '阳春市', 10000244, '3');
INSERT INTO `cmf_region` VALUES (10002259, 441802, '清城区', 10000245, '3');
INSERT INTO `cmf_region` VALUES (10002260, 441803, '清新区', 10000245, '3');
INSERT INTO `cmf_region` VALUES (10002261, 441821, '佛冈县', 10000245, '3');
INSERT INTO `cmf_region` VALUES (10002262, 441823, '阳山县', 10000245, '3');
INSERT INTO `cmf_region` VALUES (10002263, 441825, '连山壮族瑶族自治县', 10000245, '3');
INSERT INTO `cmf_region` VALUES (10002264, 441826, '连南瑶族自治县', 10000245, '3');
INSERT INTO `cmf_region` VALUES (10002265, 441881, '英德市', 10000245, '3');
INSERT INTO `cmf_region` VALUES (10002266, 441882, '连州市', 10000245, '3');
INSERT INTO `cmf_region` VALUES (10002267, 441901, '中堂镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002268, 441903, '南城街道办事处', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002269, 441904, '长安镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002270, 441905, '东坑镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002271, 441906, '樟木头镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002272, 441907, '莞城街道办事处', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002273, 441908, '石龙镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002274, 441909, '桥头镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002275, 441910, '万江街道办事处', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002276, 441911, '麻涌镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002277, 441912, '虎门镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002278, 441913, '谢岗镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002279, 441914, '石碣镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002280, 441915, '茶山镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002281, 441916, '东城街道办事处', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002282, 441917, '洪梅镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002283, 441918, '道滘镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002284, 441919, '高埗镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002285, 441920, '企石镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002286, 441921, '凤岗镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002287, 441922, '大岭山镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002288, 441923, '松山湖管委会', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002289, 441924, '清溪镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002290, 441925, '望牛墩镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002291, 441926, '厚街镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002292, 441927, '常平镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002293, 441928, '寮步镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002294, 441929, '石排镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002295, 441930, '横沥镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002296, 441931, '塘厦镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002297, 441932, '黄江镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002298, 441933, '大朗镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002299, 441934, '东莞港', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002300, 441935, '东莞生态园', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002301, 441990, '沙田镇', 10000246, '3');
INSERT INTO `cmf_region` VALUES (10002302, 442001, '南头镇', 10000247, '3');
INSERT INTO `cmf_region` VALUES (10002303, 442002, '神湾镇', 10000247, '3');
INSERT INTO `cmf_region` VALUES (10002304, 442003, '东凤镇', 10000247, '3');
INSERT INTO `cmf_region` VALUES (10002305, 442004, '五桂山街道办事处', 10000247, '3');
INSERT INTO `cmf_region` VALUES (10002306, 442005, '黄圃镇', 10000247, '3');
INSERT INTO `cmf_region` VALUES (10002307, 442006, '小榄镇', 10000247, '3');
INSERT INTO `cmf_region` VALUES (10002308, 442007, '石岐区街道办事处', 10000247, '3');
INSERT INTO `cmf_region` VALUES (10002309, 442008, '横栏镇', 10000247, '3');
INSERT INTO `cmf_region` VALUES (10002310, 442009, '三角镇', 10000247, '3');
INSERT INTO `cmf_region` VALUES (10002311, 442010, '三乡镇', 10000247, '3');
INSERT INTO `cmf_region` VALUES (10002312, 442011, '港口镇', 10000247, '3');
INSERT INTO `cmf_region` VALUES (10002313, 442012, '沙溪镇', 10000247, '3');
INSERT INTO `cmf_region` VALUES (10002314, 442013, '板芙镇', 10000247, '3');
INSERT INTO `cmf_region` VALUES (10002315, 442015, '东升镇', 10000247, '3');
INSERT INTO `cmf_region` VALUES (10002316, 442016, '阜沙镇', 10000247, '3');
INSERT INTO `cmf_region` VALUES (10002317, 442017, '民众镇', 10000247, '3');
INSERT INTO `cmf_region` VALUES (10002318, 442018, '东区街道办事处', 10000247, '3');
INSERT INTO `cmf_region` VALUES (10002319, 442019, '火炬开发区街道办事处', 10000247, '3');
INSERT INTO `cmf_region` VALUES (10002320, 442020, '西区街道办事处', 10000247, '3');
INSERT INTO `cmf_region` VALUES (10002321, 442021, '南区街道办事处', 10000247, '3');
INSERT INTO `cmf_region` VALUES (10002322, 442022, '古镇镇', 10000247, '3');
INSERT INTO `cmf_region` VALUES (10002323, 442023, '坦洲镇', 10000247, '3');
INSERT INTO `cmf_region` VALUES (10002324, 442024, '大涌镇', 10000247, '3');
INSERT INTO `cmf_region` VALUES (10002325, 442025, '南朗镇', 10000247, '3');
INSERT INTO `cmf_region` VALUES (10002326, 445102, '湘桥区', 10000248, '3');
INSERT INTO `cmf_region` VALUES (10002327, 445103, '潮安区', 10000248, '3');
INSERT INTO `cmf_region` VALUES (10002328, 445122, '饶平县', 10000248, '3');
INSERT INTO `cmf_region` VALUES (10002329, 445202, '榕城区', 10000249, '3');
INSERT INTO `cmf_region` VALUES (10002330, 445203, '揭东区', 10000249, '3');
INSERT INTO `cmf_region` VALUES (10002331, 445222, '揭西县', 10000249, '3');
INSERT INTO `cmf_region` VALUES (10002332, 445224, '惠来县', 10000249, '3');
INSERT INTO `cmf_region` VALUES (10002333, 445281, '普宁市', 10000249, '3');
INSERT INTO `cmf_region` VALUES (10002334, 445302, '云城区', 10000250, '3');
INSERT INTO `cmf_region` VALUES (10002335, 445303, '云安区', 10000250, '3');
INSERT INTO `cmf_region` VALUES (10002336, 445321, '新兴县', 10000250, '3');
INSERT INTO `cmf_region` VALUES (10002337, 445322, '郁南县', 10000250, '3');
INSERT INTO `cmf_region` VALUES (10002338, 445381, '罗定市', 10000250, '3');
INSERT INTO `cmf_region` VALUES (10002339, 450102, '兴宁区', 10000251, '3');
INSERT INTO `cmf_region` VALUES (10002340, 450103, '青秀区', 10000251, '3');
INSERT INTO `cmf_region` VALUES (10002341, 450105, '江南区', 10000251, '3');
INSERT INTO `cmf_region` VALUES (10002342, 450107, '西乡塘区', 10000251, '3');
INSERT INTO `cmf_region` VALUES (10002343, 450108, '良庆区', 10000251, '3');
INSERT INTO `cmf_region` VALUES (10002344, 450109, '邕宁区', 10000251, '3');
INSERT INTO `cmf_region` VALUES (10002345, 450110, '武鸣区', 10000251, '3');
INSERT INTO `cmf_region` VALUES (10002346, 450123, '隆安县', 10000251, '3');
INSERT INTO `cmf_region` VALUES (10002347, 450124, '马山县', 10000251, '3');
INSERT INTO `cmf_region` VALUES (10002348, 450125, '上林县', 10000251, '3');
INSERT INTO `cmf_region` VALUES (10002349, 450126, '宾阳县', 10000251, '3');
INSERT INTO `cmf_region` VALUES (10002350, 450127, '横县', 10000251, '3');
INSERT INTO `cmf_region` VALUES (10002351, 450202, '城中区', 10000252, '3');
INSERT INTO `cmf_region` VALUES (10002352, 450203, '鱼峰区', 10000252, '3');
INSERT INTO `cmf_region` VALUES (10002353, 450204, '柳南区', 10000252, '3');
INSERT INTO `cmf_region` VALUES (10002354, 450205, '柳北区', 10000252, '3');
INSERT INTO `cmf_region` VALUES (10002355, 450206, '柳江区', 10000252, '3');
INSERT INTO `cmf_region` VALUES (10002356, 450222, '柳城县', 10000252, '3');
INSERT INTO `cmf_region` VALUES (10002357, 450223, '鹿寨县', 10000252, '3');
INSERT INTO `cmf_region` VALUES (10002358, 450224, '融安县', 10000252, '3');
INSERT INTO `cmf_region` VALUES (10002359, 450225, '融水苗族自治县', 10000252, '3');
INSERT INTO `cmf_region` VALUES (10002360, 450226, '三江侗族自治县', 10000252, '3');
INSERT INTO `cmf_region` VALUES (10002361, 450302, '秀峰区', 10000253, '3');
INSERT INTO `cmf_region` VALUES (10002362, 450303, '叠彩区', 10000253, '3');
INSERT INTO `cmf_region` VALUES (10002363, 450304, '象山区', 10000253, '3');
INSERT INTO `cmf_region` VALUES (10002364, 450305, '七星区', 10000253, '3');
INSERT INTO `cmf_region` VALUES (10002365, 450311, '雁山区', 10000253, '3');
INSERT INTO `cmf_region` VALUES (10002366, 450312, '临桂区', 10000253, '3');
INSERT INTO `cmf_region` VALUES (10002367, 450321, '阳朔县', 10000253, '3');
INSERT INTO `cmf_region` VALUES (10002368, 450323, '灵川县', 10000253, '3');
INSERT INTO `cmf_region` VALUES (10002369, 450324, '全州县', 10000253, '3');
INSERT INTO `cmf_region` VALUES (10002370, 450325, '兴安县', 10000253, '3');
INSERT INTO `cmf_region` VALUES (10002371, 450326, '永福县', 10000253, '3');
INSERT INTO `cmf_region` VALUES (10002372, 450327, '灌阳县', 10000253, '3');
INSERT INTO `cmf_region` VALUES (10002373, 450328, '龙胜各族自治县', 10000253, '3');
INSERT INTO `cmf_region` VALUES (10002374, 450329, '资源县', 10000253, '3');
INSERT INTO `cmf_region` VALUES (10002375, 450330, '平乐县', 10000253, '3');
INSERT INTO `cmf_region` VALUES (10002376, 450332, '恭城瑶族自治县', 10000253, '3');
INSERT INTO `cmf_region` VALUES (10002377, 450381, '荔浦市', 10000253, '3');
INSERT INTO `cmf_region` VALUES (10002378, 450403, '万秀区', 10000254, '3');
INSERT INTO `cmf_region` VALUES (10002379, 450405, '长洲区', 10000254, '3');
INSERT INTO `cmf_region` VALUES (10002380, 450406, '龙圩区', 10000254, '3');
INSERT INTO `cmf_region` VALUES (10002381, 450421, '苍梧县', 10000254, '3');
INSERT INTO `cmf_region` VALUES (10002382, 450422, '藤县', 10000254, '3');
INSERT INTO `cmf_region` VALUES (10002383, 450423, '蒙山县', 10000254, '3');
INSERT INTO `cmf_region` VALUES (10002384, 450481, '岑溪市', 10000254, '3');
INSERT INTO `cmf_region` VALUES (10002385, 450502, '海城区', 10000255, '3');
INSERT INTO `cmf_region` VALUES (10002386, 450503, '银海区', 10000255, '3');
INSERT INTO `cmf_region` VALUES (10002387, 450512, '铁山港区', 10000255, '3');
INSERT INTO `cmf_region` VALUES (10002388, 450521, '合浦县', 10000255, '3');
INSERT INTO `cmf_region` VALUES (10002389, 450602, '港口区', 10000256, '3');
INSERT INTO `cmf_region` VALUES (10002390, 450603, '防城区', 10000256, '3');
INSERT INTO `cmf_region` VALUES (10002391, 450621, '上思县', 10000256, '3');
INSERT INTO `cmf_region` VALUES (10002392, 450681, '东兴市', 10000256, '3');
INSERT INTO `cmf_region` VALUES (10002393, 450702, '钦南区', 10000257, '3');
INSERT INTO `cmf_region` VALUES (10002394, 450703, '钦北区', 10000257, '3');
INSERT INTO `cmf_region` VALUES (10002395, 450721, '灵山县', 10000257, '3');
INSERT INTO `cmf_region` VALUES (10002396, 450722, '浦北县', 10000257, '3');
INSERT INTO `cmf_region` VALUES (10002397, 450802, '港北区', 10000258, '3');
INSERT INTO `cmf_region` VALUES (10002398, 450803, '港南区', 10000258, '3');
INSERT INTO `cmf_region` VALUES (10002399, 450804, '覃塘区', 10000258, '3');
INSERT INTO `cmf_region` VALUES (10002400, 450821, '平南县', 10000258, '3');
INSERT INTO `cmf_region` VALUES (10002401, 450881, '桂平市', 10000258, '3');
INSERT INTO `cmf_region` VALUES (10002402, 450902, '玉州区', 10000259, '3');
INSERT INTO `cmf_region` VALUES (10002403, 450903, '福绵区', 10000259, '3');
INSERT INTO `cmf_region` VALUES (10002404, 450921, '容县', 10000259, '3');
INSERT INTO `cmf_region` VALUES (10002405, 450922, '陆川县', 10000259, '3');
INSERT INTO `cmf_region` VALUES (10002406, 450923, '博白县', 10000259, '3');
INSERT INTO `cmf_region` VALUES (10002407, 450924, '兴业县', 10000259, '3');
INSERT INTO `cmf_region` VALUES (10002408, 450981, '北流市', 10000259, '3');
INSERT INTO `cmf_region` VALUES (10002409, 451002, '右江区', 10000260, '3');
INSERT INTO `cmf_region` VALUES (10002410, 451021, '田阳县', 10000260, '3');
INSERT INTO `cmf_region` VALUES (10002411, 451022, '田东县', 10000260, '3');
INSERT INTO `cmf_region` VALUES (10002412, 451023, '平果县', 10000260, '3');
INSERT INTO `cmf_region` VALUES (10002413, 451024, '德保县', 10000260, '3');
INSERT INTO `cmf_region` VALUES (10002414, 451026, '那坡县', 10000260, '3');
INSERT INTO `cmf_region` VALUES (10002415, 451027, '凌云县', 10000260, '3');
INSERT INTO `cmf_region` VALUES (10002416, 451028, '乐业县', 10000260, '3');
INSERT INTO `cmf_region` VALUES (10002417, 451029, '田林县', 10000260, '3');
INSERT INTO `cmf_region` VALUES (10002418, 451030, '西林县', 10000260, '3');
INSERT INTO `cmf_region` VALUES (10002419, 451031, '隆林各族自治县', 10000260, '3');
INSERT INTO `cmf_region` VALUES (10002420, 451081, '靖西市', 10000260, '3');
INSERT INTO `cmf_region` VALUES (10002421, 451102, '八步区', 10000261, '3');
INSERT INTO `cmf_region` VALUES (10002422, 451103, '平桂区', 10000261, '3');
INSERT INTO `cmf_region` VALUES (10002423, 451121, '昭平县', 10000261, '3');
INSERT INTO `cmf_region` VALUES (10002424, 451122, '钟山县', 10000261, '3');
INSERT INTO `cmf_region` VALUES (10002425, 451123, '富川瑶族自治县', 10000261, '3');
INSERT INTO `cmf_region` VALUES (10002426, 451202, '金城江区', 10000262, '3');
INSERT INTO `cmf_region` VALUES (10002427, 451203, '宜州区', 10000262, '3');
INSERT INTO `cmf_region` VALUES (10002428, 451221, '南丹县', 10000262, '3');
INSERT INTO `cmf_region` VALUES (10002429, 451222, '天峨县', 10000262, '3');
INSERT INTO `cmf_region` VALUES (10002430, 451223, '凤山县', 10000262, '3');
INSERT INTO `cmf_region` VALUES (10002431, 451224, '东兰县', 10000262, '3');
INSERT INTO `cmf_region` VALUES (10002432, 451225, '罗城仫佬族自治县', 10000262, '3');
INSERT INTO `cmf_region` VALUES (10002433, 451226, '环江毛南族自治县', 10000262, '3');
INSERT INTO `cmf_region` VALUES (10002434, 451227, '巴马瑶族自治县', 10000262, '3');
INSERT INTO `cmf_region` VALUES (10002435, 451228, '都安瑶族自治县', 10000262, '3');
INSERT INTO `cmf_region` VALUES (10002436, 451229, '大化瑶族自治县', 10000262, '3');
INSERT INTO `cmf_region` VALUES (10002437, 451302, '兴宾区', 10000263, '3');
INSERT INTO `cmf_region` VALUES (10002438, 451321, '忻城县', 10000263, '3');
INSERT INTO `cmf_region` VALUES (10002439, 451322, '象州县', 10000263, '3');
INSERT INTO `cmf_region` VALUES (10002440, 451323, '武宣县', 10000263, '3');
INSERT INTO `cmf_region` VALUES (10002441, 451324, '金秀瑶族自治县', 10000263, '3');
INSERT INTO `cmf_region` VALUES (10002442, 451381, '合山市', 10000263, '3');
INSERT INTO `cmf_region` VALUES (10002443, 451402, '江州区', 10000264, '3');
INSERT INTO `cmf_region` VALUES (10002444, 451421, '扶绥县', 10000264, '3');
INSERT INTO `cmf_region` VALUES (10002445, 451422, '宁明县', 10000264, '3');
INSERT INTO `cmf_region` VALUES (10002446, 451423, '龙州县', 10000264, '3');
INSERT INTO `cmf_region` VALUES (10002447, 451424, '大新县', 10000264, '3');
INSERT INTO `cmf_region` VALUES (10002448, 451425, '天等县', 10000264, '3');
INSERT INTO `cmf_region` VALUES (10002449, 451481, '凭祥市', 10000264, '3');
INSERT INTO `cmf_region` VALUES (10002450, 460105, '秀英区', 10000265, '3');
INSERT INTO `cmf_region` VALUES (10002451, 460106, '龙华区', 10000265, '3');
INSERT INTO `cmf_region` VALUES (10002452, 460107, '琼山区', 10000265, '3');
INSERT INTO `cmf_region` VALUES (10002453, 460108, '美兰区', 10000265, '3');
INSERT INTO `cmf_region` VALUES (10002454, 460202, '海棠区', 10000266, '3');
INSERT INTO `cmf_region` VALUES (10002455, 460203, '吉阳区', 10000266, '3');
INSERT INTO `cmf_region` VALUES (10002456, 460204, '天涯区', 10000266, '3');
INSERT INTO `cmf_region` VALUES (10002457, 460205, '崖州区', 10000266, '3');
INSERT INTO `cmf_region` VALUES (10002458, 460321, '西沙群岛', 10000267, '3');
INSERT INTO `cmf_region` VALUES (10002459, 460322, '南沙群岛', 10000267, '3');
INSERT INTO `cmf_region` VALUES (10002460, 460323, '中沙群岛的岛礁及其海域', 10000267, '3');
INSERT INTO `cmf_region` VALUES (10002461, 460401, '那大镇', 10000268, '3');
INSERT INTO `cmf_region` VALUES (10002462, 460402, '和庆镇', 10000268, '3');
INSERT INTO `cmf_region` VALUES (10002463, 460403, '南丰镇', 10000268, '3');
INSERT INTO `cmf_region` VALUES (10002464, 460404, '大成镇', 10000268, '3');
INSERT INTO `cmf_region` VALUES (10002465, 460405, '雅星镇', 10000268, '3');
INSERT INTO `cmf_region` VALUES (10002466, 460406, '兰洋镇', 10000268, '3');
INSERT INTO `cmf_region` VALUES (10002467, 460407, '光村镇', 10000268, '3');
INSERT INTO `cmf_region` VALUES (10002468, 460408, '木棠镇', 10000268, '3');
INSERT INTO `cmf_region` VALUES (10002469, 460409, '海头镇', 10000268, '3');
INSERT INTO `cmf_region` VALUES (10002470, 460410, '峨蔓镇', 10000268, '3');
INSERT INTO `cmf_region` VALUES (10002471, 460411, '王五镇', 10000268, '3');
INSERT INTO `cmf_region` VALUES (10002472, 460412, '白马井镇', 10000268, '3');
INSERT INTO `cmf_region` VALUES (10002473, 460413, '中和镇', 10000268, '3');
INSERT INTO `cmf_region` VALUES (10002474, 460414, '排浦镇', 10000268, '3');
INSERT INTO `cmf_region` VALUES (10002475, 460415, '东成镇', 10000268, '3');
INSERT INTO `cmf_region` VALUES (10002476, 460416, '新州镇', 10000268, '3');
INSERT INTO `cmf_region` VALUES (10002477, 460417, '洋浦经济开发区', 10000268, '3');
INSERT INTO `cmf_region` VALUES (10002478, 460418, '华南热作学院', 10000268, '3');
INSERT INTO `cmf_region` VALUES (10002479, 469001, '五指山市', 10000269, '3');
INSERT INTO `cmf_region` VALUES (10002480, 469002, '琼海市', 10000269, '3');
INSERT INTO `cmf_region` VALUES (10002481, 469005, '文昌市', 10000269, '3');
INSERT INTO `cmf_region` VALUES (10002482, 469006, '万宁市', 10000269, '3');
INSERT INTO `cmf_region` VALUES (10002483, 469007, '东方市', 10000269, '3');
INSERT INTO `cmf_region` VALUES (10002484, 469021, '定安县', 10000269, '3');
INSERT INTO `cmf_region` VALUES (10002485, 469022, '屯昌县', 10000269, '3');
INSERT INTO `cmf_region` VALUES (10002486, 469023, '澄迈县', 10000269, '3');
INSERT INTO `cmf_region` VALUES (10002487, 469024, '临高县', 10000269, '3');
INSERT INTO `cmf_region` VALUES (10002488, 469025, '白沙黎族自治县', 10000269, '3');
INSERT INTO `cmf_region` VALUES (10002489, 469026, '昌江黎族自治县', 10000269, '3');
INSERT INTO `cmf_region` VALUES (10002490, 469027, '乐东黎族自治县', 10000269, '3');
INSERT INTO `cmf_region` VALUES (10002491, 469028, '陵水黎族自治县', 10000269, '3');
INSERT INTO `cmf_region` VALUES (10002492, 469029, '保亭黎族苗族自治县', 10000269, '3');
INSERT INTO `cmf_region` VALUES (10002493, 469030, '琼中黎族苗族自治县', 10000269, '3');
INSERT INTO `cmf_region` VALUES (10002494, 500101, '万州区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002495, 500102, '涪陵区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002496, 500103, '渝中区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002497, 500104, '大渡口区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002498, 500105, '江北区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002499, 500106, '沙坪坝区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002500, 500107, '九龙坡区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002501, 500108, '南岸区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002502, 500109, '北碚区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002503, 500110, '綦江区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002504, 500111, '大足区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002505, 500112, '渝北区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002506, 500113, '巴南区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002507, 500114, '黔江区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002508, 500115, '长寿区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002509, 500116, '江津区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002510, 500117, '合川区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002511, 500118, '永川区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002512, 500119, '南川区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002513, 500120, '璧山区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002514, 500151, '铜梁区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002515, 500152, '潼南区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002516, 500153, '荣昌区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002517, 500154, '开州区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002518, 500155, '梁平区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002519, 500156, '武隆区', 10000270, '3');
INSERT INTO `cmf_region` VALUES (10002520, 500229, '城口县', 10000271, '3');
INSERT INTO `cmf_region` VALUES (10002521, 500230, '丰都县', 10000271, '3');
INSERT INTO `cmf_region` VALUES (10002522, 500231, '垫江县', 10000271, '3');
INSERT INTO `cmf_region` VALUES (10002523, 500233, '忠县', 10000271, '3');
INSERT INTO `cmf_region` VALUES (10002524, 500235, '云阳县', 10000271, '3');
INSERT INTO `cmf_region` VALUES (10002525, 500236, '奉节县', 10000271, '3');
INSERT INTO `cmf_region` VALUES (10002526, 500237, '巫山县', 10000271, '3');
INSERT INTO `cmf_region` VALUES (10002527, 500238, '巫溪县', 10000271, '3');
INSERT INTO `cmf_region` VALUES (10002528, 500240, '石柱土家族自治县', 10000271, '3');
INSERT INTO `cmf_region` VALUES (10002529, 500241, '秀山土家族苗族自治县', 10000271, '3');
INSERT INTO `cmf_region` VALUES (10002530, 500242, '酉阳土家族苗族自治县', 10000271, '3');
INSERT INTO `cmf_region` VALUES (10002531, 500243, '彭水苗族土家族自治县', 10000271, '3');
INSERT INTO `cmf_region` VALUES (10002532, 510104, '锦江区', 10000272, '3');
INSERT INTO `cmf_region` VALUES (10002533, 510105, '青羊区', 10000272, '3');
INSERT INTO `cmf_region` VALUES (10002534, 510106, '金牛区', 10000272, '3');
INSERT INTO `cmf_region` VALUES (10002535, 510107, '武侯区', 10000272, '3');
INSERT INTO `cmf_region` VALUES (10002536, 510108, '成华区', 10000272, '3');
INSERT INTO `cmf_region` VALUES (10002537, 510112, '龙泉驿区', 10000272, '3');
INSERT INTO `cmf_region` VALUES (10002538, 510113, '青白江区', 10000272, '3');
INSERT INTO `cmf_region` VALUES (10002539, 510114, '新都区', 10000272, '3');
INSERT INTO `cmf_region` VALUES (10002540, 510115, '温江区', 10000272, '3');
INSERT INTO `cmf_region` VALUES (10002541, 510116, '双流区', 10000272, '3');
INSERT INTO `cmf_region` VALUES (10002542, 510117, '郫都区', 10000272, '3');
INSERT INTO `cmf_region` VALUES (10002543, 510121, '金堂县', 10000272, '3');
INSERT INTO `cmf_region` VALUES (10002544, 510129, '大邑县', 10000272, '3');
INSERT INTO `cmf_region` VALUES (10002545, 510131, '蒲江县', 10000272, '3');
INSERT INTO `cmf_region` VALUES (10002546, 510132, '新津县', 10000272, '3');
INSERT INTO `cmf_region` VALUES (10002547, 510181, '都江堰市', 10000272, '3');
INSERT INTO `cmf_region` VALUES (10002548, 510182, '彭州市', 10000272, '3');
INSERT INTO `cmf_region` VALUES (10002549, 510183, '邛崃市', 10000272, '3');
INSERT INTO `cmf_region` VALUES (10002550, 510184, '崇州市', 10000272, '3');
INSERT INTO `cmf_region` VALUES (10002551, 510185, '简阳市', 10000272, '3');
INSERT INTO `cmf_region` VALUES (10002552, 510191, '高新区', 10000272, '3');
INSERT INTO `cmf_region` VALUES (10002553, 510302, '自流井区', 10000273, '3');
INSERT INTO `cmf_region` VALUES (10002554, 510303, '贡井区', 10000273, '3');
INSERT INTO `cmf_region` VALUES (10002555, 510304, '大安区', 10000273, '3');
INSERT INTO `cmf_region` VALUES (10002556, 510311, '沿滩区', 10000273, '3');
INSERT INTO `cmf_region` VALUES (10002557, 510321, '荣县', 10000273, '3');
INSERT INTO `cmf_region` VALUES (10002558, 510322, '富顺县', 10000273, '3');
INSERT INTO `cmf_region` VALUES (10002559, 510402, '东区', 10000274, '3');
INSERT INTO `cmf_region` VALUES (10002560, 510403, '西区', 10000274, '3');
INSERT INTO `cmf_region` VALUES (10002561, 510411, '仁和区', 10000274, '3');
INSERT INTO `cmf_region` VALUES (10002562, 510421, '米易县', 10000274, '3');
INSERT INTO `cmf_region` VALUES (10002563, 510422, '盐边县', 10000274, '3');
INSERT INTO `cmf_region` VALUES (10002564, 510502, '江阳区', 10000275, '3');
INSERT INTO `cmf_region` VALUES (10002565, 510503, '纳溪区', 10000275, '3');
INSERT INTO `cmf_region` VALUES (10002566, 510504, '龙马潭区', 10000275, '3');
INSERT INTO `cmf_region` VALUES (10002567, 510521, '泸县', 10000275, '3');
INSERT INTO `cmf_region` VALUES (10002568, 510522, '合江县', 10000275, '3');
INSERT INTO `cmf_region` VALUES (10002569, 510524, '叙永县', 10000275, '3');
INSERT INTO `cmf_region` VALUES (10002570, 510525, '古蔺县', 10000275, '3');
INSERT INTO `cmf_region` VALUES (10002571, 510603, '旌阳区', 10000276, '3');
INSERT INTO `cmf_region` VALUES (10002572, 510604, '罗江区', 10000276, '3');
INSERT INTO `cmf_region` VALUES (10002573, 510623, '中江县', 10000276, '3');
INSERT INTO `cmf_region` VALUES (10002574, 510681, '广汉市', 10000276, '3');
INSERT INTO `cmf_region` VALUES (10002575, 510682, '什邡市', 10000276, '3');
INSERT INTO `cmf_region` VALUES (10002576, 510683, '绵竹市', 10000276, '3');
INSERT INTO `cmf_region` VALUES (10002577, 510703, '涪城区', 10000277, '3');
INSERT INTO `cmf_region` VALUES (10002578, 510704, '游仙区', 10000277, '3');
INSERT INTO `cmf_region` VALUES (10002579, 510705, '安州区', 10000277, '3');
INSERT INTO `cmf_region` VALUES (10002580, 510722, '三台县', 10000277, '3');
INSERT INTO `cmf_region` VALUES (10002581, 510723, '盐亭县', 10000277, '3');
INSERT INTO `cmf_region` VALUES (10002582, 510725, '梓潼县', 10000277, '3');
INSERT INTO `cmf_region` VALUES (10002583, 510726, '北川羌族自治县', 10000277, '3');
INSERT INTO `cmf_region` VALUES (10002584, 510727, '平武县', 10000277, '3');
INSERT INTO `cmf_region` VALUES (10002585, 510781, '江油市', 10000277, '3');
INSERT INTO `cmf_region` VALUES (10002586, 510791, '高新区', 10000277, '3');
INSERT INTO `cmf_region` VALUES (10002587, 510802, '利州区', 10000278, '3');
INSERT INTO `cmf_region` VALUES (10002588, 510811, '昭化区', 10000278, '3');
INSERT INTO `cmf_region` VALUES (10002589, 510812, '朝天区', 10000278, '3');
INSERT INTO `cmf_region` VALUES (10002590, 510821, '旺苍县', 10000278, '3');
INSERT INTO `cmf_region` VALUES (10002591, 510822, '青川县', 10000278, '3');
INSERT INTO `cmf_region` VALUES (10002592, 510823, '剑阁县', 10000278, '3');
INSERT INTO `cmf_region` VALUES (10002593, 510824, '苍溪县', 10000278, '3');
INSERT INTO `cmf_region` VALUES (10002594, 510903, '船山区', 10000279, '3');
INSERT INTO `cmf_region` VALUES (10002595, 510904, '安居区', 10000279, '3');
INSERT INTO `cmf_region` VALUES (10002596, 510921, '蓬溪县', 10000279, '3');
INSERT INTO `cmf_region` VALUES (10002597, 510922, '射洪县', 10000279, '3');
INSERT INTO `cmf_region` VALUES (10002598, 510923, '大英县', 10000279, '3');
INSERT INTO `cmf_region` VALUES (10002599, 511002, '市中区', 10000280, '3');
INSERT INTO `cmf_region` VALUES (10002600, 511011, '东兴区', 10000280, '3');
INSERT INTO `cmf_region` VALUES (10002601, 511024, '威远县', 10000280, '3');
INSERT INTO `cmf_region` VALUES (10002602, 511025, '资中县', 10000280, '3');
INSERT INTO `cmf_region` VALUES (10002603, 511083, '隆昌市', 10000280, '3');
INSERT INTO `cmf_region` VALUES (10002604, 511102, '市中区', 10000281, '3');
INSERT INTO `cmf_region` VALUES (10002605, 511111, '沙湾区', 10000281, '3');
INSERT INTO `cmf_region` VALUES (10002606, 511112, '五通桥区', 10000281, '3');
INSERT INTO `cmf_region` VALUES (10002607, 511113, '金口河区', 10000281, '3');
INSERT INTO `cmf_region` VALUES (10002608, 511123, '犍为县', 10000281, '3');
INSERT INTO `cmf_region` VALUES (10002609, 511124, '井研县', 10000281, '3');
INSERT INTO `cmf_region` VALUES (10002610, 511126, '夹江县', 10000281, '3');
INSERT INTO `cmf_region` VALUES (10002611, 511129, '沐川县', 10000281, '3');
INSERT INTO `cmf_region` VALUES (10002612, 511132, '峨边彝族自治县', 10000281, '3');
INSERT INTO `cmf_region` VALUES (10002613, 511133, '马边彝族自治县', 10000281, '3');
INSERT INTO `cmf_region` VALUES (10002614, 511181, '峨眉山市', 10000281, '3');
INSERT INTO `cmf_region` VALUES (10002615, 511302, '顺庆区', 10000282, '3');
INSERT INTO `cmf_region` VALUES (10002616, 511303, '高坪区', 10000282, '3');
INSERT INTO `cmf_region` VALUES (10002617, 511304, '嘉陵区', 10000282, '3');
INSERT INTO `cmf_region` VALUES (10002618, 511321, '南部县', 10000282, '3');
INSERT INTO `cmf_region` VALUES (10002619, 511322, '营山县', 10000282, '3');
INSERT INTO `cmf_region` VALUES (10002620, 511323, '蓬安县', 10000282, '3');
INSERT INTO `cmf_region` VALUES (10002621, 511324, '仪陇县', 10000282, '3');
INSERT INTO `cmf_region` VALUES (10002622, 511325, '西充县', 10000282, '3');
INSERT INTO `cmf_region` VALUES (10002623, 511381, '阆中市', 10000282, '3');
INSERT INTO `cmf_region` VALUES (10002624, 511402, '东坡区', 10000283, '3');
INSERT INTO `cmf_region` VALUES (10002625, 511403, '彭山区', 10000283, '3');
INSERT INTO `cmf_region` VALUES (10002626, 511421, '仁寿县', 10000283, '3');
INSERT INTO `cmf_region` VALUES (10002627, 511423, '洪雅县', 10000283, '3');
INSERT INTO `cmf_region` VALUES (10002628, 511424, '丹棱县', 10000283, '3');
INSERT INTO `cmf_region` VALUES (10002629, 511425, '青神县', 10000283, '3');
INSERT INTO `cmf_region` VALUES (10002630, 511502, '翠屏区', 10000284, '3');
INSERT INTO `cmf_region` VALUES (10002631, 511503, '南溪区', 10000284, '3');
INSERT INTO `cmf_region` VALUES (10002632, 511504, '叙州区', 10000284, '3');
INSERT INTO `cmf_region` VALUES (10002633, 511523, '江安县', 10000284, '3');
INSERT INTO `cmf_region` VALUES (10002634, 511524, '长宁县', 10000284, '3');
INSERT INTO `cmf_region` VALUES (10002635, 511525, '高县', 10000284, '3');
INSERT INTO `cmf_region` VALUES (10002636, 511526, '珙县', 10000284, '3');
INSERT INTO `cmf_region` VALUES (10002637, 511527, '筠连县', 10000284, '3');
INSERT INTO `cmf_region` VALUES (10002638, 511528, '兴文县', 10000284, '3');
INSERT INTO `cmf_region` VALUES (10002639, 511529, '屏山县', 10000284, '3');
INSERT INTO `cmf_region` VALUES (10002640, 511602, '广安区', 10000285, '3');
INSERT INTO `cmf_region` VALUES (10002641, 511603, '前锋区', 10000285, '3');
INSERT INTO `cmf_region` VALUES (10002642, 511621, '岳池县', 10000285, '3');
INSERT INTO `cmf_region` VALUES (10002643, 511622, '武胜县', 10000285, '3');
INSERT INTO `cmf_region` VALUES (10002644, 511623, '邻水县', 10000285, '3');
INSERT INTO `cmf_region` VALUES (10002645, 511681, '华蓥市', 10000285, '3');
INSERT INTO `cmf_region` VALUES (10002646, 511702, '通川区', 10000286, '3');
INSERT INTO `cmf_region` VALUES (10002647, 511703, '达川区', 10000286, '3');
INSERT INTO `cmf_region` VALUES (10002648, 511722, '宣汉县', 10000286, '3');
INSERT INTO `cmf_region` VALUES (10002649, 511723, '开江县', 10000286, '3');
INSERT INTO `cmf_region` VALUES (10002650, 511724, '大竹县', 10000286, '3');
INSERT INTO `cmf_region` VALUES (10002651, 511725, '渠县', 10000286, '3');
INSERT INTO `cmf_region` VALUES (10002652, 511781, '万源市', 10000286, '3');
INSERT INTO `cmf_region` VALUES (10002653, 511802, '雨城区', 10000287, '3');
INSERT INTO `cmf_region` VALUES (10002654, 511803, '名山区', 10000287, '3');
INSERT INTO `cmf_region` VALUES (10002655, 511822, '荥经县', 10000287, '3');
INSERT INTO `cmf_region` VALUES (10002656, 511823, '汉源县', 10000287, '3');
INSERT INTO `cmf_region` VALUES (10002657, 511824, '石棉县', 10000287, '3');
INSERT INTO `cmf_region` VALUES (10002658, 511825, '天全县', 10000287, '3');
INSERT INTO `cmf_region` VALUES (10002659, 511826, '芦山县', 10000287, '3');
INSERT INTO `cmf_region` VALUES (10002660, 511827, '宝兴县', 10000287, '3');
INSERT INTO `cmf_region` VALUES (10002661, 511902, '巴州区', 10000288, '3');
INSERT INTO `cmf_region` VALUES (10002662, 511903, '恩阳区', 10000288, '3');
INSERT INTO `cmf_region` VALUES (10002663, 511921, '通江县', 10000288, '3');
INSERT INTO `cmf_region` VALUES (10002664, 511922, '南江县', 10000288, '3');
INSERT INTO `cmf_region` VALUES (10002665, 511923, '平昌县', 10000288, '3');
INSERT INTO `cmf_region` VALUES (10002666, 512002, '雁江区', 10000289, '3');
INSERT INTO `cmf_region` VALUES (10002667, 512021, '安岳县', 10000289, '3');
INSERT INTO `cmf_region` VALUES (10002668, 512022, '乐至县', 10000289, '3');
INSERT INTO `cmf_region` VALUES (10002669, 513201, '马尔康市', 10000290, '3');
INSERT INTO `cmf_region` VALUES (10002670, 513221, '汶川县', 10000290, '3');
INSERT INTO `cmf_region` VALUES (10002671, 513222, '理县', 10000290, '3');
INSERT INTO `cmf_region` VALUES (10002672, 513223, '茂县', 10000290, '3');
INSERT INTO `cmf_region` VALUES (10002673, 513224, '松潘县', 10000290, '3');
INSERT INTO `cmf_region` VALUES (10002674, 513225, '九寨沟县', 10000290, '3');
INSERT INTO `cmf_region` VALUES (10002675, 513226, '金川县', 10000290, '3');
INSERT INTO `cmf_region` VALUES (10002676, 513227, '小金县', 10000290, '3');
INSERT INTO `cmf_region` VALUES (10002677, 513228, '黑水县', 10000290, '3');
INSERT INTO `cmf_region` VALUES (10002678, 513230, '壤塘县', 10000290, '3');
INSERT INTO `cmf_region` VALUES (10002679, 513231, '阿坝县', 10000290, '3');
INSERT INTO `cmf_region` VALUES (10002680, 513232, '若尔盖县', 10000290, '3');
INSERT INTO `cmf_region` VALUES (10002681, 513233, '红原县', 10000290, '3');
INSERT INTO `cmf_region` VALUES (10002682, 513301, '康定市', 10000291, '3');
INSERT INTO `cmf_region` VALUES (10002683, 513322, '泸定县', 10000291, '3');
INSERT INTO `cmf_region` VALUES (10002684, 513323, '丹巴县', 10000291, '3');
INSERT INTO `cmf_region` VALUES (10002685, 513324, '九龙县', 10000291, '3');
INSERT INTO `cmf_region` VALUES (10002686, 513325, '雅江县', 10000291, '3');
INSERT INTO `cmf_region` VALUES (10002687, 513326, '道孚县', 10000291, '3');
INSERT INTO `cmf_region` VALUES (10002688, 513327, '炉霍县', 10000291, '3');
INSERT INTO `cmf_region` VALUES (10002689, 513328, '甘孜县', 10000291, '3');
INSERT INTO `cmf_region` VALUES (10002690, 513329, '新龙县', 10000291, '3');
INSERT INTO `cmf_region` VALUES (10002691, 513330, '德格县', 10000291, '3');
INSERT INTO `cmf_region` VALUES (10002692, 513331, '白玉县', 10000291, '3');
INSERT INTO `cmf_region` VALUES (10002693, 513332, '石渠县', 10000291, '3');
INSERT INTO `cmf_region` VALUES (10002694, 513333, '色达县', 10000291, '3');
INSERT INTO `cmf_region` VALUES (10002695, 513334, '理塘县', 10000291, '3');
INSERT INTO `cmf_region` VALUES (10002696, 513335, '巴塘县', 10000291, '3');
INSERT INTO `cmf_region` VALUES (10002697, 513336, '乡城县', 10000291, '3');
INSERT INTO `cmf_region` VALUES (10002698, 513337, '稻城县', 10000291, '3');
INSERT INTO `cmf_region` VALUES (10002699, 513338, '得荣县', 10000291, '3');
INSERT INTO `cmf_region` VALUES (10002700, 513401, '西昌市', 10000292, '3');
INSERT INTO `cmf_region` VALUES (10002701, 513422, '木里藏族自治县', 10000292, '3');
INSERT INTO `cmf_region` VALUES (10002702, 513423, '盐源县', 10000292, '3');
INSERT INTO `cmf_region` VALUES (10002703, 513424, '德昌县', 10000292, '3');
INSERT INTO `cmf_region` VALUES (10002704, 513425, '会理县', 10000292, '3');
INSERT INTO `cmf_region` VALUES (10002705, 513426, '会东县', 10000292, '3');
INSERT INTO `cmf_region` VALUES (10002706, 513427, '宁南县', 10000292, '3');
INSERT INTO `cmf_region` VALUES (10002707, 513428, '普格县', 10000292, '3');
INSERT INTO `cmf_region` VALUES (10002708, 513429, '布拖县', 10000292, '3');
INSERT INTO `cmf_region` VALUES (10002709, 513430, '金阳县', 10000292, '3');
INSERT INTO `cmf_region` VALUES (10002710, 513431, '昭觉县', 10000292, '3');
INSERT INTO `cmf_region` VALUES (10002711, 513432, '喜德县', 10000292, '3');
INSERT INTO `cmf_region` VALUES (10002712, 513433, '冕宁县', 10000292, '3');
INSERT INTO `cmf_region` VALUES (10002713, 513434, '越西县', 10000292, '3');
INSERT INTO `cmf_region` VALUES (10002714, 513435, '甘洛县', 10000292, '3');
INSERT INTO `cmf_region` VALUES (10002715, 513436, '美姑县', 10000292, '3');
INSERT INTO `cmf_region` VALUES (10002716, 513437, '雷波县', 10000292, '3');
INSERT INTO `cmf_region` VALUES (10002717, 520102, '南明区', 10000293, '3');
INSERT INTO `cmf_region` VALUES (10002718, 520103, '云岩区', 10000293, '3');
INSERT INTO `cmf_region` VALUES (10002719, 520111, '花溪区', 10000293, '3');
INSERT INTO `cmf_region` VALUES (10002720, 520112, '乌当区', 10000293, '3');
INSERT INTO `cmf_region` VALUES (10002721, 520113, '白云区', 10000293, '3');
INSERT INTO `cmf_region` VALUES (10002722, 520115, '观山湖区', 10000293, '3');
INSERT INTO `cmf_region` VALUES (10002723, 520121, '开阳县', 10000293, '3');
INSERT INTO `cmf_region` VALUES (10002724, 520122, '息烽县', 10000293, '3');
INSERT INTO `cmf_region` VALUES (10002725, 520123, '修文县', 10000293, '3');
INSERT INTO `cmf_region` VALUES (10002726, 520181, '清镇市', 10000293, '3');
INSERT INTO `cmf_region` VALUES (10002727, 520201, '钟山区', 10000294, '3');
INSERT INTO `cmf_region` VALUES (10002728, 520203, '六枝特区', 10000294, '3');
INSERT INTO `cmf_region` VALUES (10002729, 520221, '水城县', 10000294, '3');
INSERT INTO `cmf_region` VALUES (10002730, 520281, '盘州市', 10000294, '3');
INSERT INTO `cmf_region` VALUES (10002731, 520302, '红花岗区', 10000295, '3');
INSERT INTO `cmf_region` VALUES (10002732, 520303, '汇川区', 10000295, '3');
INSERT INTO `cmf_region` VALUES (10002733, 520304, '播州区', 10000295, '3');
INSERT INTO `cmf_region` VALUES (10002734, 520322, '桐梓县', 10000295, '3');
INSERT INTO `cmf_region` VALUES (10002735, 520323, '绥阳县', 10000295, '3');
INSERT INTO `cmf_region` VALUES (10002736, 520324, '正安县', 10000295, '3');
INSERT INTO `cmf_region` VALUES (10002737, 520325, '道真仡佬族苗族自治县', 10000295, '3');
INSERT INTO `cmf_region` VALUES (10002738, 520326, '务川仡佬族苗族自治县', 10000295, '3');
INSERT INTO `cmf_region` VALUES (10002739, 520327, '凤冈县', 10000295, '3');
INSERT INTO `cmf_region` VALUES (10002740, 520328, '湄潭县', 10000295, '3');
INSERT INTO `cmf_region` VALUES (10002741, 520329, '余庆县', 10000295, '3');
INSERT INTO `cmf_region` VALUES (10002742, 520330, '习水县', 10000295, '3');
INSERT INTO `cmf_region` VALUES (10002743, 520381, '赤水市', 10000295, '3');
INSERT INTO `cmf_region` VALUES (10002744, 520382, '仁怀市', 10000295, '3');
INSERT INTO `cmf_region` VALUES (10002745, 520402, '西秀区', 10000296, '3');
INSERT INTO `cmf_region` VALUES (10002746, 520403, '平坝区', 10000296, '3');
INSERT INTO `cmf_region` VALUES (10002747, 520422, '普定县', 10000296, '3');
INSERT INTO `cmf_region` VALUES (10002748, 520423, '镇宁布依族苗族自治县', 10000296, '3');
INSERT INTO `cmf_region` VALUES (10002749, 520424, '关岭布依族苗族自治县', 10000296, '3');
INSERT INTO `cmf_region` VALUES (10002750, 520425, '紫云苗族布依族自治县', 10000296, '3');
INSERT INTO `cmf_region` VALUES (10002751, 520502, '七星关区', 10000297, '3');
INSERT INTO `cmf_region` VALUES (10002752, 520521, '大方县', 10000297, '3');
INSERT INTO `cmf_region` VALUES (10002753, 520522, '黔西县', 10000297, '3');
INSERT INTO `cmf_region` VALUES (10002754, 520523, '金沙县', 10000297, '3');
INSERT INTO `cmf_region` VALUES (10002755, 520524, '织金县', 10000297, '3');
INSERT INTO `cmf_region` VALUES (10002756, 520525, '纳雍县', 10000297, '3');
INSERT INTO `cmf_region` VALUES (10002757, 520526, '威宁彝族回族苗族自治县', 10000297, '3');
INSERT INTO `cmf_region` VALUES (10002758, 520527, '赫章县', 10000297, '3');
INSERT INTO `cmf_region` VALUES (10002759, 520602, '碧江区', 10000298, '3');
INSERT INTO `cmf_region` VALUES (10002760, 520603, '万山区', 10000298, '3');
INSERT INTO `cmf_region` VALUES (10002761, 520621, '江口县', 10000298, '3');
INSERT INTO `cmf_region` VALUES (10002762, 520622, '玉屏侗族自治县', 10000298, '3');
INSERT INTO `cmf_region` VALUES (10002763, 520623, '石阡县', 10000298, '3');
INSERT INTO `cmf_region` VALUES (10002764, 520624, '思南县', 10000298, '3');
INSERT INTO `cmf_region` VALUES (10002765, 520625, '印江土家族苗族自治县', 10000298, '3');
INSERT INTO `cmf_region` VALUES (10002766, 520626, '德江县', 10000298, '3');
INSERT INTO `cmf_region` VALUES (10002767, 520627, '沿河土家族自治县', 10000298, '3');
INSERT INTO `cmf_region` VALUES (10002768, 520628, '松桃苗族自治县', 10000298, '3');
INSERT INTO `cmf_region` VALUES (10002769, 522301, '兴义市', 10000299, '3');
INSERT INTO `cmf_region` VALUES (10002770, 522302, '兴仁市', 10000299, '3');
INSERT INTO `cmf_region` VALUES (10002771, 522323, '普安县', 10000299, '3');
INSERT INTO `cmf_region` VALUES (10002772, 522324, '晴隆县', 10000299, '3');
INSERT INTO `cmf_region` VALUES (10002773, 522325, '贞丰县', 10000299, '3');
INSERT INTO `cmf_region` VALUES (10002774, 522326, '望谟县', 10000299, '3');
INSERT INTO `cmf_region` VALUES (10002775, 522327, '册亨县', 10000299, '3');
INSERT INTO `cmf_region` VALUES (10002776, 522328, '安龙县', 10000299, '3');
INSERT INTO `cmf_region` VALUES (10002777, 522601, '凯里市', 10000300, '3');
INSERT INTO `cmf_region` VALUES (10002778, 522622, '黄平县', 10000300, '3');
INSERT INTO `cmf_region` VALUES (10002779, 522623, '施秉县', 10000300, '3');
INSERT INTO `cmf_region` VALUES (10002780, 522624, '三穗县', 10000300, '3');
INSERT INTO `cmf_region` VALUES (10002781, 522625, '镇远县', 10000300, '3');
INSERT INTO `cmf_region` VALUES (10002782, 522626, '岑巩县', 10000300, '3');
INSERT INTO `cmf_region` VALUES (10002783, 522627, '天柱县', 10000300, '3');
INSERT INTO `cmf_region` VALUES (10002784, 522628, '锦屏县', 10000300, '3');
INSERT INTO `cmf_region` VALUES (10002785, 522629, '剑河县', 10000300, '3');
INSERT INTO `cmf_region` VALUES (10002786, 522630, '台江县', 10000300, '3');
INSERT INTO `cmf_region` VALUES (10002787, 522631, '黎平县', 10000300, '3');
INSERT INTO `cmf_region` VALUES (10002788, 522632, '榕江县', 10000300, '3');
INSERT INTO `cmf_region` VALUES (10002789, 522633, '从江县', 10000300, '3');
INSERT INTO `cmf_region` VALUES (10002790, 522634, '雷山县', 10000300, '3');
INSERT INTO `cmf_region` VALUES (10002791, 522635, '麻江县', 10000300, '3');
INSERT INTO `cmf_region` VALUES (10002792, 522636, '丹寨县', 10000300, '3');
INSERT INTO `cmf_region` VALUES (10002793, 522701, '都匀市', 10000301, '3');
INSERT INTO `cmf_region` VALUES (10002794, 522702, '福泉市', 10000301, '3');
INSERT INTO `cmf_region` VALUES (10002795, 522722, '荔波县', 10000301, '3');
INSERT INTO `cmf_region` VALUES (10002796, 522723, '贵定县', 10000301, '3');
INSERT INTO `cmf_region` VALUES (10002797, 522725, '瓮安县', 10000301, '3');
INSERT INTO `cmf_region` VALUES (10002798, 522726, '独山县', 10000301, '3');
INSERT INTO `cmf_region` VALUES (10002799, 522727, '平塘县', 10000301, '3');
INSERT INTO `cmf_region` VALUES (10002800, 522728, '罗甸县', 10000301, '3');
INSERT INTO `cmf_region` VALUES (10002801, 522729, '长顺县', 10000301, '3');
INSERT INTO `cmf_region` VALUES (10002802, 522730, '龙里县', 10000301, '3');
INSERT INTO `cmf_region` VALUES (10002803, 522731, '惠水县', 10000301, '3');
INSERT INTO `cmf_region` VALUES (10002804, 522732, '三都水族自治县', 10000301, '3');
INSERT INTO `cmf_region` VALUES (10002805, 530102, '五华区', 10000302, '3');
INSERT INTO `cmf_region` VALUES (10002806, 530103, '盘龙区', 10000302, '3');
INSERT INTO `cmf_region` VALUES (10002807, 530111, '官渡区', 10000302, '3');
INSERT INTO `cmf_region` VALUES (10002808, 530112, '西山区', 10000302, '3');
INSERT INTO `cmf_region` VALUES (10002809, 530113, '东川区', 10000302, '3');
INSERT INTO `cmf_region` VALUES (10002810, 530114, '呈贡区', 10000302, '3');
INSERT INTO `cmf_region` VALUES (10002811, 530115, '晋宁区', 10000302, '3');
INSERT INTO `cmf_region` VALUES (10002812, 530124, '富民县', 10000302, '3');
INSERT INTO `cmf_region` VALUES (10002813, 530125, '宜良县', 10000302, '3');
INSERT INTO `cmf_region` VALUES (10002814, 530126, '石林彝族自治县', 10000302, '3');
INSERT INTO `cmf_region` VALUES (10002815, 530127, '嵩明县', 10000302, '3');
INSERT INTO `cmf_region` VALUES (10002816, 530128, '禄劝彝族苗族自治县', 10000302, '3');
INSERT INTO `cmf_region` VALUES (10002817, 530129, '寻甸回族彝族自治县', 10000302, '3');
INSERT INTO `cmf_region` VALUES (10002818, 530181, '安宁市', 10000302, '3');
INSERT INTO `cmf_region` VALUES (10002819, 530302, '麒麟区', 10000303, '3');
INSERT INTO `cmf_region` VALUES (10002820, 530303, '沾益区', 10000303, '3');
INSERT INTO `cmf_region` VALUES (10002821, 530304, '马龙区', 10000303, '3');
INSERT INTO `cmf_region` VALUES (10002822, 530322, '陆良县', 10000303, '3');
INSERT INTO `cmf_region` VALUES (10002823, 530323, '师宗县', 10000303, '3');
INSERT INTO `cmf_region` VALUES (10002824, 530324, '罗平县', 10000303, '3');
INSERT INTO `cmf_region` VALUES (10002825, 530325, '富源县', 10000303, '3');
INSERT INTO `cmf_region` VALUES (10002826, 530326, '会泽县', 10000303, '3');
INSERT INTO `cmf_region` VALUES (10002827, 530381, '宣威市', 10000303, '3');
INSERT INTO `cmf_region` VALUES (10002828, 530402, '红塔区', 10000304, '3');
INSERT INTO `cmf_region` VALUES (10002829, 530403, '江川区', 10000304, '3');
INSERT INTO `cmf_region` VALUES (10002830, 530422, '澄江县', 10000304, '3');
INSERT INTO `cmf_region` VALUES (10002831, 530423, '通海县', 10000304, '3');
INSERT INTO `cmf_region` VALUES (10002832, 530424, '华宁县', 10000304, '3');
INSERT INTO `cmf_region` VALUES (10002833, 530425, '易门县', 10000304, '3');
INSERT INTO `cmf_region` VALUES (10002834, 530426, '峨山彝族自治县', 10000304, '3');
INSERT INTO `cmf_region` VALUES (10002835, 530427, '新平彝族傣族自治县', 10000304, '3');
INSERT INTO `cmf_region` VALUES (10002836, 530428, '元江哈尼族彝族傣族自治县', 10000304, '3');
INSERT INTO `cmf_region` VALUES (10002837, 530502, '隆阳区', 10000305, '3');
INSERT INTO `cmf_region` VALUES (10002838, 530521, '施甸县', 10000305, '3');
INSERT INTO `cmf_region` VALUES (10002839, 530523, '龙陵县', 10000305, '3');
INSERT INTO `cmf_region` VALUES (10002840, 530524, '昌宁县', 10000305, '3');
INSERT INTO `cmf_region` VALUES (10002841, 530581, '腾冲市', 10000305, '3');
INSERT INTO `cmf_region` VALUES (10002842, 530602, '昭阳区', 10000306, '3');
INSERT INTO `cmf_region` VALUES (10002843, 530621, '鲁甸县', 10000306, '3');
INSERT INTO `cmf_region` VALUES (10002844, 530622, '巧家县', 10000306, '3');
INSERT INTO `cmf_region` VALUES (10002845, 530623, '盐津县', 10000306, '3');
INSERT INTO `cmf_region` VALUES (10002846, 530624, '大关县', 10000306, '3');
INSERT INTO `cmf_region` VALUES (10002847, 530625, '永善县', 10000306, '3');
INSERT INTO `cmf_region` VALUES (10002848, 530626, '绥江县', 10000306, '3');
INSERT INTO `cmf_region` VALUES (10002849, 530627, '镇雄县', 10000306, '3');
INSERT INTO `cmf_region` VALUES (10002850, 530628, '彝良县', 10000306, '3');
INSERT INTO `cmf_region` VALUES (10002851, 530629, '威信县', 10000306, '3');
INSERT INTO `cmf_region` VALUES (10002852, 530681, '水富市', 10000306, '3');
INSERT INTO `cmf_region` VALUES (10002853, 530702, '古城区', 10000307, '3');
INSERT INTO `cmf_region` VALUES (10002854, 530721, '玉龙纳西族自治县', 10000307, '3');
INSERT INTO `cmf_region` VALUES (10002855, 530722, '永胜县', 10000307, '3');
INSERT INTO `cmf_region` VALUES (10002856, 530723, '华坪县', 10000307, '3');
INSERT INTO `cmf_region` VALUES (10002857, 530724, '宁蒗彝族自治县', 10000307, '3');
INSERT INTO `cmf_region` VALUES (10002858, 530802, '思茅区', 10000308, '3');
INSERT INTO `cmf_region` VALUES (10002859, 530821, '宁洱哈尼族彝族自治县', 10000308, '3');
INSERT INTO `cmf_region` VALUES (10002860, 530822, '墨江哈尼族自治县', 10000308, '3');
INSERT INTO `cmf_region` VALUES (10002861, 530823, '景东彝族自治县', 10000308, '3');
INSERT INTO `cmf_region` VALUES (10002862, 530824, '景谷傣族彝族自治县', 10000308, '3');
INSERT INTO `cmf_region` VALUES (10002863, 530825, '镇沅彝族哈尼族拉祜族自治县', 10000308, '3');
INSERT INTO `cmf_region` VALUES (10002864, 530826, '江城哈尼族彝族自治县', 10000308, '3');
INSERT INTO `cmf_region` VALUES (10002865, 530827, '孟连傣族拉祜族佤族自治县', 10000308, '3');
INSERT INTO `cmf_region` VALUES (10002866, 530828, '澜沧拉祜族自治县', 10000308, '3');
INSERT INTO `cmf_region` VALUES (10002867, 530829, '西盟佤族自治县', 10000308, '3');
INSERT INTO `cmf_region` VALUES (10002868, 530902, '临翔区', 10000309, '3');
INSERT INTO `cmf_region` VALUES (10002869, 530921, '凤庆县', 10000309, '3');
INSERT INTO `cmf_region` VALUES (10002870, 530922, '云县', 10000309, '3');
INSERT INTO `cmf_region` VALUES (10002871, 530923, '永德县', 10000309, '3');
INSERT INTO `cmf_region` VALUES (10002872, 530924, '镇康县', 10000309, '3');
INSERT INTO `cmf_region` VALUES (10002873, 530925, '双江拉祜族佤族布朗族傣族自治县', 10000309, '3');
INSERT INTO `cmf_region` VALUES (10002874, 530926, '耿马傣族佤族自治县', 10000309, '3');
INSERT INTO `cmf_region` VALUES (10002875, 530927, '沧源佤族自治县', 10000309, '3');
INSERT INTO `cmf_region` VALUES (10002876, 532301, '楚雄市', 10000310, '3');
INSERT INTO `cmf_region` VALUES (10002877, 532322, '双柏县', 10000310, '3');
INSERT INTO `cmf_region` VALUES (10002878, 532323, '牟定县', 10000310, '3');
INSERT INTO `cmf_region` VALUES (10002879, 532324, '南华县', 10000310, '3');
INSERT INTO `cmf_region` VALUES (10002880, 532325, '姚安县', 10000310, '3');
INSERT INTO `cmf_region` VALUES (10002881, 532326, '大姚县', 10000310, '3');
INSERT INTO `cmf_region` VALUES (10002882, 532327, '永仁县', 10000310, '3');
INSERT INTO `cmf_region` VALUES (10002883, 532328, '元谋县', 10000310, '3');
INSERT INTO `cmf_region` VALUES (10002884, 532329, '武定县', 10000310, '3');
INSERT INTO `cmf_region` VALUES (10002885, 532331, '禄丰县', 10000310, '3');
INSERT INTO `cmf_region` VALUES (10002886, 532501, '个旧市', 10000311, '3');
INSERT INTO `cmf_region` VALUES (10002887, 532502, '开远市', 10000311, '3');
INSERT INTO `cmf_region` VALUES (10002888, 532503, '蒙自市', 10000311, '3');
INSERT INTO `cmf_region` VALUES (10002889, 532504, '弥勒市', 10000311, '3');
INSERT INTO `cmf_region` VALUES (10002890, 532523, '屏边苗族自治县', 10000311, '3');
INSERT INTO `cmf_region` VALUES (10002891, 532524, '建水县', 10000311, '3');
INSERT INTO `cmf_region` VALUES (10002892, 532525, '石屏县', 10000311, '3');
INSERT INTO `cmf_region` VALUES (10002893, 532527, '泸西县', 10000311, '3');
INSERT INTO `cmf_region` VALUES (10002894, 532528, '元阳县', 10000311, '3');
INSERT INTO `cmf_region` VALUES (10002895, 532529, '红河县', 10000311, '3');
INSERT INTO `cmf_region` VALUES (10002896, 532530, '金平苗族瑶族傣族自治县', 10000311, '3');
INSERT INTO `cmf_region` VALUES (10002897, 532531, '绿春县', 10000311, '3');
INSERT INTO `cmf_region` VALUES (10002898, 532532, '河口瑶族自治县', 10000311, '3');
INSERT INTO `cmf_region` VALUES (10002899, 532601, '文山市', 10000312, '3');
INSERT INTO `cmf_region` VALUES (10002900, 532622, '砚山县', 10000312, '3');
INSERT INTO `cmf_region` VALUES (10002901, 532623, '西畴县', 10000312, '3');
INSERT INTO `cmf_region` VALUES (10002902, 532624, '麻栗坡县', 10000312, '3');
INSERT INTO `cmf_region` VALUES (10002903, 532625, '马关县', 10000312, '3');
INSERT INTO `cmf_region` VALUES (10002904, 532626, '丘北县', 10000312, '3');
INSERT INTO `cmf_region` VALUES (10002905, 532627, '广南县', 10000312, '3');
INSERT INTO `cmf_region` VALUES (10002906, 532628, '富宁县', 10000312, '3');
INSERT INTO `cmf_region` VALUES (10002907, 532801, '景洪市', 10000313, '3');
INSERT INTO `cmf_region` VALUES (10002908, 532822, '勐海县', 10000313, '3');
INSERT INTO `cmf_region` VALUES (10002909, 532823, '勐腊县', 10000313, '3');
INSERT INTO `cmf_region` VALUES (10002910, 532901, '大理市', 10000314, '3');
INSERT INTO `cmf_region` VALUES (10002911, 532922, '漾濞彝族自治县', 10000314, '3');
INSERT INTO `cmf_region` VALUES (10002912, 532923, '祥云县', 10000314, '3');
INSERT INTO `cmf_region` VALUES (10002913, 532924, '宾川县', 10000314, '3');
INSERT INTO `cmf_region` VALUES (10002914, 532925, '弥渡县', 10000314, '3');
INSERT INTO `cmf_region` VALUES (10002915, 532926, '南涧彝族自治县', 10000314, '3');
INSERT INTO `cmf_region` VALUES (10002916, 532927, '巍山彝族回族自治县', 10000314, '3');
INSERT INTO `cmf_region` VALUES (10002917, 532928, '永平县', 10000314, '3');
INSERT INTO `cmf_region` VALUES (10002918, 532929, '云龙县', 10000314, '3');
INSERT INTO `cmf_region` VALUES (10002919, 532930, '洱源县', 10000314, '3');
INSERT INTO `cmf_region` VALUES (10002920, 532931, '剑川县', 10000314, '3');
INSERT INTO `cmf_region` VALUES (10002921, 532932, '鹤庆县', 10000314, '3');
INSERT INTO `cmf_region` VALUES (10002922, 533102, '瑞丽市', 10000315, '3');
INSERT INTO `cmf_region` VALUES (10002923, 533103, '芒市', 10000315, '3');
INSERT INTO `cmf_region` VALUES (10002924, 533122, '梁河县', 10000315, '3');
INSERT INTO `cmf_region` VALUES (10002925, 533123, '盈江县', 10000315, '3');
INSERT INTO `cmf_region` VALUES (10002926, 533124, '陇川县', 10000315, '3');
INSERT INTO `cmf_region` VALUES (10002927, 533301, '泸水市', 10000316, '3');
INSERT INTO `cmf_region` VALUES (10002928, 533323, '福贡县', 10000316, '3');
INSERT INTO `cmf_region` VALUES (10002929, 533324, '贡山独龙族怒族自治县', 10000316, '3');
INSERT INTO `cmf_region` VALUES (10002930, 533325, '兰坪白族普米族自治县', 10000316, '3');
INSERT INTO `cmf_region` VALUES (10002931, 533401, '香格里拉市', 10000317, '3');
INSERT INTO `cmf_region` VALUES (10002932, 533422, '德钦县', 10000317, '3');
INSERT INTO `cmf_region` VALUES (10002933, 533423, '维西傈僳族自治县', 10000317, '3');
INSERT INTO `cmf_region` VALUES (10002934, 540102, '城关区', 10000318, '3');
INSERT INTO `cmf_region` VALUES (10002935, 540103, '堆龙德庆区', 10000318, '3');
INSERT INTO `cmf_region` VALUES (10002936, 540104, '达孜区', 10000318, '3');
INSERT INTO `cmf_region` VALUES (10002937, 540121, '林周县', 10000318, '3');
INSERT INTO `cmf_region` VALUES (10002938, 540122, '当雄县', 10000318, '3');
INSERT INTO `cmf_region` VALUES (10002939, 540123, '尼木县', 10000318, '3');
INSERT INTO `cmf_region` VALUES (10002940, 540124, '曲水县', 10000318, '3');
INSERT INTO `cmf_region` VALUES (10002941, 540127, '墨竹工卡县', 10000318, '3');
INSERT INTO `cmf_region` VALUES (10002942, 540202, '桑珠孜区', 10000319, '3');
INSERT INTO `cmf_region` VALUES (10002943, 540221, '南木林县', 10000319, '3');
INSERT INTO `cmf_region` VALUES (10002944, 540222, '江孜县', 10000319, '3');
INSERT INTO `cmf_region` VALUES (10002945, 540223, '定日县', 10000319, '3');
INSERT INTO `cmf_region` VALUES (10002946, 540224, '萨迦县', 10000319, '3');
INSERT INTO `cmf_region` VALUES (10002947, 540225, '拉孜县', 10000319, '3');
INSERT INTO `cmf_region` VALUES (10002948, 540226, '昂仁县', 10000319, '3');
INSERT INTO `cmf_region` VALUES (10002949, 540227, '谢通门县', 10000319, '3');
INSERT INTO `cmf_region` VALUES (10002950, 540228, '白朗县', 10000319, '3');
INSERT INTO `cmf_region` VALUES (10002951, 540229, '仁布县', 10000319, '3');
INSERT INTO `cmf_region` VALUES (10002952, 540230, '康马县', 10000319, '3');
INSERT INTO `cmf_region` VALUES (10002953, 540231, '定结县', 10000319, '3');
INSERT INTO `cmf_region` VALUES (10002954, 540232, '仲巴县', 10000319, '3');
INSERT INTO `cmf_region` VALUES (10002955, 540233, '亚东县', 10000319, '3');
INSERT INTO `cmf_region` VALUES (10002956, 540234, '吉隆县', 10000319, '3');
INSERT INTO `cmf_region` VALUES (10002957, 540235, '聂拉木县', 10000319, '3');
INSERT INTO `cmf_region` VALUES (10002958, 540236, '萨嘎县', 10000319, '3');
INSERT INTO `cmf_region` VALUES (10002959, 540237, '岗巴县', 10000319, '3');
INSERT INTO `cmf_region` VALUES (10002960, 540302, '卡若区', 10000320, '3');
INSERT INTO `cmf_region` VALUES (10002961, 540321, '江达县', 10000320, '3');
INSERT INTO `cmf_region` VALUES (10002962, 540322, '贡觉县', 10000320, '3');
INSERT INTO `cmf_region` VALUES (10002963, 540323, '类乌齐县', 10000320, '3');
INSERT INTO `cmf_region` VALUES (10002964, 540324, '丁青县', 10000320, '3');
INSERT INTO `cmf_region` VALUES (10002965, 540325, '察雅县', 10000320, '3');
INSERT INTO `cmf_region` VALUES (10002966, 540326, '八宿县', 10000320, '3');
INSERT INTO `cmf_region` VALUES (10002967, 540327, '左贡县', 10000320, '3');
INSERT INTO `cmf_region` VALUES (10002968, 540328, '芒康县', 10000320, '3');
INSERT INTO `cmf_region` VALUES (10002969, 540329, '洛隆县', 10000320, '3');
INSERT INTO `cmf_region` VALUES (10002970, 540330, '边坝县', 10000320, '3');
INSERT INTO `cmf_region` VALUES (10002971, 540402, '巴宜区', 10000321, '3');
INSERT INTO `cmf_region` VALUES (10002972, 540421, '工布江达县', 10000321, '3');
INSERT INTO `cmf_region` VALUES (10002973, 540422, '米林县', 10000321, '3');
INSERT INTO `cmf_region` VALUES (10002974, 540423, '墨脱县', 10000321, '3');
INSERT INTO `cmf_region` VALUES (10002975, 540424, '波密县', 10000321, '3');
INSERT INTO `cmf_region` VALUES (10002976, 540425, '察隅县', 10000321, '3');
INSERT INTO `cmf_region` VALUES (10002977, 540426, '朗县', 10000321, '3');
INSERT INTO `cmf_region` VALUES (10002978, 540502, '乃东区', 10000322, '3');
INSERT INTO `cmf_region` VALUES (10002979, 540521, '扎囊县', 10000322, '3');
INSERT INTO `cmf_region` VALUES (10002980, 540522, '贡嘎县', 10000322, '3');
INSERT INTO `cmf_region` VALUES (10002981, 540523, '桑日县', 10000322, '3');
INSERT INTO `cmf_region` VALUES (10002982, 540524, '琼结县', 10000322, '3');
INSERT INTO `cmf_region` VALUES (10002983, 540525, '曲松县', 10000322, '3');
INSERT INTO `cmf_region` VALUES (10002984, 540526, '措美县', 10000322, '3');
INSERT INTO `cmf_region` VALUES (10002985, 540527, '洛扎县', 10000322, '3');
INSERT INTO `cmf_region` VALUES (10002986, 540528, '加查县', 10000322, '3');
INSERT INTO `cmf_region` VALUES (10002987, 540529, '隆子县', 10000322, '3');
INSERT INTO `cmf_region` VALUES (10002988, 540530, '错那县', 10000322, '3');
INSERT INTO `cmf_region` VALUES (10002989, 540531, '浪卡子县', 10000322, '3');
INSERT INTO `cmf_region` VALUES (10002990, 540602, '色尼区', 10000323, '3');
INSERT INTO `cmf_region` VALUES (10002991, 540621, '嘉黎县', 10000323, '3');
INSERT INTO `cmf_region` VALUES (10002992, 540622, '比如县', 10000323, '3');
INSERT INTO `cmf_region` VALUES (10002993, 540623, '聂荣县', 10000323, '3');
INSERT INTO `cmf_region` VALUES (10002994, 540624, '安多县', 10000323, '3');
INSERT INTO `cmf_region` VALUES (10002995, 540625, '申扎县', 10000323, '3');
INSERT INTO `cmf_region` VALUES (10002996, 540626, '索县', 10000323, '3');
INSERT INTO `cmf_region` VALUES (10002997, 540627, '班戈县', 10000323, '3');
INSERT INTO `cmf_region` VALUES (10002998, 540628, '巴青县', 10000323, '3');
INSERT INTO `cmf_region` VALUES (10002999, 540629, '尼玛县', 10000323, '3');
INSERT INTO `cmf_region` VALUES (10003000, 540630, '双湖县', 10000323, '3');
INSERT INTO `cmf_region` VALUES (10003001, 542521, '普兰县', 10000324, '3');
INSERT INTO `cmf_region` VALUES (10003002, 542522, '札达县', 10000324, '3');
INSERT INTO `cmf_region` VALUES (10003003, 542523, '噶尔县', 10000324, '3');
INSERT INTO `cmf_region` VALUES (10003004, 542524, '日土县', 10000324, '3');
INSERT INTO `cmf_region` VALUES (10003005, 542525, '革吉县', 10000324, '3');
INSERT INTO `cmf_region` VALUES (10003006, 542526, '改则县', 10000324, '3');
INSERT INTO `cmf_region` VALUES (10003007, 542527, '措勤县', 10000324, '3');
INSERT INTO `cmf_region` VALUES (10003008, 610102, '新城区', 10000325, '3');
INSERT INTO `cmf_region` VALUES (10003009, 610103, '碑林区', 10000325, '3');
INSERT INTO `cmf_region` VALUES (10003010, 610104, '莲湖区', 10000325, '3');
INSERT INTO `cmf_region` VALUES (10003011, 610111, '灞桥区', 10000325, '3');
INSERT INTO `cmf_region` VALUES (10003012, 610112, '未央区', 10000325, '3');
INSERT INTO `cmf_region` VALUES (10003013, 610113, '雁塔区', 10000325, '3');
INSERT INTO `cmf_region` VALUES (10003014, 610114, '阎良区', 10000325, '3');
INSERT INTO `cmf_region` VALUES (10003015, 610115, '临潼区', 10000325, '3');
INSERT INTO `cmf_region` VALUES (10003016, 610116, '长安区', 10000325, '3');
INSERT INTO `cmf_region` VALUES (10003017, 610117, '高陵区', 10000325, '3');
INSERT INTO `cmf_region` VALUES (10003018, 610118, '鄠邑区', 10000325, '3');
INSERT INTO `cmf_region` VALUES (10003019, 610122, '蓝田县', 10000325, '3');
INSERT INTO `cmf_region` VALUES (10003020, 610124, '周至县', 10000325, '3');
INSERT INTO `cmf_region` VALUES (10003021, 610202, '王益区', 10000326, '3');
INSERT INTO `cmf_region` VALUES (10003022, 610203, '印台区', 10000326, '3');
INSERT INTO `cmf_region` VALUES (10003023, 610204, '耀州区', 10000326, '3');
INSERT INTO `cmf_region` VALUES (10003024, 610222, '宜君县', 10000326, '3');
INSERT INTO `cmf_region` VALUES (10003025, 610302, '渭滨区', 10000327, '3');
INSERT INTO `cmf_region` VALUES (10003026, 610303, '金台区', 10000327, '3');
INSERT INTO `cmf_region` VALUES (10003027, 610304, '陈仓区', 10000327, '3');
INSERT INTO `cmf_region` VALUES (10003028, 610322, '凤翔县', 10000327, '3');
INSERT INTO `cmf_region` VALUES (10003029, 610323, '岐山县', 10000327, '3');
INSERT INTO `cmf_region` VALUES (10003030, 610324, '扶风县', 10000327, '3');
INSERT INTO `cmf_region` VALUES (10003031, 610326, '眉县', 10000327, '3');
INSERT INTO `cmf_region` VALUES (10003032, 610327, '陇县', 10000327, '3');
INSERT INTO `cmf_region` VALUES (10003033, 610328, '千阳县', 10000327, '3');
INSERT INTO `cmf_region` VALUES (10003034, 610329, '麟游县', 10000327, '3');
INSERT INTO `cmf_region` VALUES (10003035, 610330, '凤县', 10000327, '3');
INSERT INTO `cmf_region` VALUES (10003036, 610331, '太白县', 10000327, '3');
INSERT INTO `cmf_region` VALUES (10003037, 610402, '秦都区', 10000328, '3');
INSERT INTO `cmf_region` VALUES (10003038, 610403, '杨陵区', 10000328, '3');
INSERT INTO `cmf_region` VALUES (10003039, 610404, '渭城区', 10000328, '3');
INSERT INTO `cmf_region` VALUES (10003040, 610422, '三原县', 10000328, '3');
INSERT INTO `cmf_region` VALUES (10003041, 610423, '泾阳县', 10000328, '3');
INSERT INTO `cmf_region` VALUES (10003042, 610424, '乾县', 10000328, '3');
INSERT INTO `cmf_region` VALUES (10003043, 610425, '礼泉县', 10000328, '3');
INSERT INTO `cmf_region` VALUES (10003044, 610426, '永寿县', 10000328, '3');
INSERT INTO `cmf_region` VALUES (10003045, 610428, '长武县', 10000328, '3');
INSERT INTO `cmf_region` VALUES (10003046, 610429, '旬邑县', 10000328, '3');
INSERT INTO `cmf_region` VALUES (10003047, 610430, '淳化县', 10000328, '3');
INSERT INTO `cmf_region` VALUES (10003048, 610431, '武功县', 10000328, '3');
INSERT INTO `cmf_region` VALUES (10003049, 610481, '兴平市', 10000328, '3');
INSERT INTO `cmf_region` VALUES (10003050, 610482, '彬州市', 10000328, '3');
INSERT INTO `cmf_region` VALUES (10003051, 610502, '临渭区', 10000329, '3');
INSERT INTO `cmf_region` VALUES (10003052, 610503, '华州区', 10000329, '3');
INSERT INTO `cmf_region` VALUES (10003053, 610522, '潼关县', 10000329, '3');
INSERT INTO `cmf_region` VALUES (10003054, 610523, '大荔县', 10000329, '3');
INSERT INTO `cmf_region` VALUES (10003055, 610524, '合阳县', 10000329, '3');
INSERT INTO `cmf_region` VALUES (10003056, 610525, '澄城县', 10000329, '3');
INSERT INTO `cmf_region` VALUES (10003057, 610526, '蒲城县', 10000329, '3');
INSERT INTO `cmf_region` VALUES (10003058, 610527, '白水县', 10000329, '3');
INSERT INTO `cmf_region` VALUES (10003059, 610528, '富平县', 10000329, '3');
INSERT INTO `cmf_region` VALUES (10003060, 610581, '韩城市', 10000329, '3');
INSERT INTO `cmf_region` VALUES (10003061, 610582, '华阴市', 10000329, '3');
INSERT INTO `cmf_region` VALUES (10003062, 610602, '宝塔区', 10000330, '3');
INSERT INTO `cmf_region` VALUES (10003063, 610603, '安塞区', 10000330, '3');
INSERT INTO `cmf_region` VALUES (10003064, 610621, '延长县', 10000330, '3');
INSERT INTO `cmf_region` VALUES (10003065, 610622, '延川县', 10000330, '3');
INSERT INTO `cmf_region` VALUES (10003066, 610623, '子长县', 10000330, '3');
INSERT INTO `cmf_region` VALUES (10003067, 610625, '志丹县', 10000330, '3');
INSERT INTO `cmf_region` VALUES (10003068, 610626, '吴起县', 10000330, '3');
INSERT INTO `cmf_region` VALUES (10003069, 610627, '甘泉县', 10000330, '3');
INSERT INTO `cmf_region` VALUES (10003070, 610628, '富县', 10000330, '3');
INSERT INTO `cmf_region` VALUES (10003071, 610629, '洛川县', 10000330, '3');
INSERT INTO `cmf_region` VALUES (10003072, 610630, '宜川县', 10000330, '3');
INSERT INTO `cmf_region` VALUES (10003073, 610631, '黄龙县', 10000330, '3');
INSERT INTO `cmf_region` VALUES (10003074, 610632, '黄陵县', 10000330, '3');
INSERT INTO `cmf_region` VALUES (10003075, 610702, '汉台区', 10000331, '3');
INSERT INTO `cmf_region` VALUES (10003076, 610703, '南郑区', 10000331, '3');
INSERT INTO `cmf_region` VALUES (10003077, 610722, '城固县', 10000331, '3');
INSERT INTO `cmf_region` VALUES (10003078, 610723, '洋县', 10000331, '3');
INSERT INTO `cmf_region` VALUES (10003079, 610724, '西乡县', 10000331, '3');
INSERT INTO `cmf_region` VALUES (10003080, 610725, '勉县', 10000331, '3');
INSERT INTO `cmf_region` VALUES (10003081, 610726, '宁强县', 10000331, '3');
INSERT INTO `cmf_region` VALUES (10003082, 610727, '略阳县', 10000331, '3');
INSERT INTO `cmf_region` VALUES (10003083, 610728, '镇巴县', 10000331, '3');
INSERT INTO `cmf_region` VALUES (10003084, 610729, '留坝县', 10000331, '3');
INSERT INTO `cmf_region` VALUES (10003085, 610730, '佛坪县', 10000331, '3');
INSERT INTO `cmf_region` VALUES (10003086, 610802, '榆阳区', 10000332, '3');
INSERT INTO `cmf_region` VALUES (10003087, 610803, '横山区', 10000332, '3');
INSERT INTO `cmf_region` VALUES (10003088, 610822, '府谷县', 10000332, '3');
INSERT INTO `cmf_region` VALUES (10003089, 610824, '靖边县', 10000332, '3');
INSERT INTO `cmf_region` VALUES (10003090, 610825, '定边县', 10000332, '3');
INSERT INTO `cmf_region` VALUES (10003091, 610826, '绥德县', 10000332, '3');
INSERT INTO `cmf_region` VALUES (10003092, 610827, '米脂县', 10000332, '3');
INSERT INTO `cmf_region` VALUES (10003093, 610828, '佳县', 10000332, '3');
INSERT INTO `cmf_region` VALUES (10003094, 610829, '吴堡县', 10000332, '3');
INSERT INTO `cmf_region` VALUES (10003095, 610830, '清涧县', 10000332, '3');
INSERT INTO `cmf_region` VALUES (10003096, 610831, '子洲县', 10000332, '3');
INSERT INTO `cmf_region` VALUES (10003097, 610881, '神木市', 10000332, '3');
INSERT INTO `cmf_region` VALUES (10003098, 610902, '汉滨区', 10000333, '3');
INSERT INTO `cmf_region` VALUES (10003099, 610921, '汉阴县', 10000333, '3');
INSERT INTO `cmf_region` VALUES (10003100, 610922, '石泉县', 10000333, '3');
INSERT INTO `cmf_region` VALUES (10003101, 610923, '宁陕县', 10000333, '3');
INSERT INTO `cmf_region` VALUES (10003102, 610924, '紫阳县', 10000333, '3');
INSERT INTO `cmf_region` VALUES (10003103, 610925, '岚皋县', 10000333, '3');
INSERT INTO `cmf_region` VALUES (10003104, 610926, '平利县', 10000333, '3');
INSERT INTO `cmf_region` VALUES (10003105, 610927, '镇坪县', 10000333, '3');
INSERT INTO `cmf_region` VALUES (10003106, 610928, '旬阳县', 10000333, '3');
INSERT INTO `cmf_region` VALUES (10003107, 610929, '白河县', 10000333, '3');
INSERT INTO `cmf_region` VALUES (10003108, 611002, '商州区', 10000334, '3');
INSERT INTO `cmf_region` VALUES (10003109, 611021, '洛南县', 10000334, '3');
INSERT INTO `cmf_region` VALUES (10003110, 611022, '丹凤县', 10000334, '3');
INSERT INTO `cmf_region` VALUES (10003111, 611023, '商南县', 10000334, '3');
INSERT INTO `cmf_region` VALUES (10003112, 611024, '山阳县', 10000334, '3');
INSERT INTO `cmf_region` VALUES (10003113, 611025, '镇安县', 10000334, '3');
INSERT INTO `cmf_region` VALUES (10003114, 611026, '柞水县', 10000334, '3');
INSERT INTO `cmf_region` VALUES (10003115, 620102, '城关区', 10000335, '3');
INSERT INTO `cmf_region` VALUES (10003116, 620103, '七里河区', 10000335, '3');
INSERT INTO `cmf_region` VALUES (10003117, 620104, '西固区', 10000335, '3');
INSERT INTO `cmf_region` VALUES (10003118, 620105, '安宁区', 10000335, '3');
INSERT INTO `cmf_region` VALUES (10003119, 620111, '红古区', 10000335, '3');
INSERT INTO `cmf_region` VALUES (10003120, 620121, '永登县', 10000335, '3');
INSERT INTO `cmf_region` VALUES (10003121, 620122, '皋兰县', 10000335, '3');
INSERT INTO `cmf_region` VALUES (10003122, 620123, '榆中县', 10000335, '3');
INSERT INTO `cmf_region` VALUES (10003123, 620201, '市辖区', 10000336, '3');
INSERT INTO `cmf_region` VALUES (10003124, 620290, '雄关区', 10000336, '3');
INSERT INTO `cmf_region` VALUES (10003125, 620291, '长城区', 10000336, '3');
INSERT INTO `cmf_region` VALUES (10003126, 620292, '镜铁区', 10000336, '3');
INSERT INTO `cmf_region` VALUES (10003127, 620293, '新城镇', 10000336, '3');
INSERT INTO `cmf_region` VALUES (10003128, 620294, '峪泉镇', 10000336, '3');
INSERT INTO `cmf_region` VALUES (10003129, 620295, '文殊镇', 10000336, '3');
INSERT INTO `cmf_region` VALUES (10003130, 620302, '金川区', 10000337, '3');
INSERT INTO `cmf_region` VALUES (10003131, 620321, '永昌县', 10000337, '3');
INSERT INTO `cmf_region` VALUES (10003132, 620402, '白银区', 10000338, '3');
INSERT INTO `cmf_region` VALUES (10003133, 620403, '平川区', 10000338, '3');
INSERT INTO `cmf_region` VALUES (10003134, 620421, '靖远县', 10000338, '3');
INSERT INTO `cmf_region` VALUES (10003135, 620422, '会宁县', 10000338, '3');
INSERT INTO `cmf_region` VALUES (10003136, 620423, '景泰县', 10000338, '3');
INSERT INTO `cmf_region` VALUES (10003137, 620502, '秦州区', 10000339, '3');
INSERT INTO `cmf_region` VALUES (10003138, 620503, '麦积区', 10000339, '3');
INSERT INTO `cmf_region` VALUES (10003139, 620521, '清水县', 10000339, '3');
INSERT INTO `cmf_region` VALUES (10003140, 620522, '秦安县', 10000339, '3');
INSERT INTO `cmf_region` VALUES (10003141, 620523, '甘谷县', 10000339, '3');
INSERT INTO `cmf_region` VALUES (10003142, 620524, '武山县', 10000339, '3');
INSERT INTO `cmf_region` VALUES (10003143, 620525, '张家川回族自治县', 10000339, '3');
INSERT INTO `cmf_region` VALUES (10003144, 620602, '凉州区', 10000340, '3');
INSERT INTO `cmf_region` VALUES (10003145, 620621, '民勤县', 10000340, '3');
INSERT INTO `cmf_region` VALUES (10003146, 620622, '古浪县', 10000340, '3');
INSERT INTO `cmf_region` VALUES (10003147, 620623, '天祝藏族自治县', 10000340, '3');
INSERT INTO `cmf_region` VALUES (10003148, 620702, '甘州区', 10000341, '3');
INSERT INTO `cmf_region` VALUES (10003149, 620721, '肃南裕固族自治县', 10000341, '3');
INSERT INTO `cmf_region` VALUES (10003150, 620722, '民乐县', 10000341, '3');
INSERT INTO `cmf_region` VALUES (10003151, 620723, '临泽县', 10000341, '3');
INSERT INTO `cmf_region` VALUES (10003152, 620724, '高台县', 10000341, '3');
INSERT INTO `cmf_region` VALUES (10003153, 620725, '山丹县', 10000341, '3');
INSERT INTO `cmf_region` VALUES (10003154, 620802, '崆峒区', 10000342, '3');
INSERT INTO `cmf_region` VALUES (10003155, 620821, '泾川县', 10000342, '3');
INSERT INTO `cmf_region` VALUES (10003156, 620822, '灵台县', 10000342, '3');
INSERT INTO `cmf_region` VALUES (10003157, 620823, '崇信县', 10000342, '3');
INSERT INTO `cmf_region` VALUES (10003158, 620825, '庄浪县', 10000342, '3');
INSERT INTO `cmf_region` VALUES (10003159, 620826, '静宁县', 10000342, '3');
INSERT INTO `cmf_region` VALUES (10003160, 620881, '华亭市', 10000342, '3');
INSERT INTO `cmf_region` VALUES (10003161, 620902, '肃州区', 10000343, '3');
INSERT INTO `cmf_region` VALUES (10003162, 620921, '金塔县', 10000343, '3');
INSERT INTO `cmf_region` VALUES (10003163, 620922, '瓜州县', 10000343, '3');
INSERT INTO `cmf_region` VALUES (10003164, 620923, '肃北蒙古族自治县', 10000343, '3');
INSERT INTO `cmf_region` VALUES (10003165, 620924, '阿克塞哈萨克族自治县', 10000343, '3');
INSERT INTO `cmf_region` VALUES (10003166, 620981, '玉门市', 10000343, '3');
INSERT INTO `cmf_region` VALUES (10003167, 620982, '敦煌市', 10000343, '3');
INSERT INTO `cmf_region` VALUES (10003168, 621002, '西峰区', 10000344, '3');
INSERT INTO `cmf_region` VALUES (10003169, 621021, '庆城县', 10000344, '3');
INSERT INTO `cmf_region` VALUES (10003170, 621022, '环县', 10000344, '3');
INSERT INTO `cmf_region` VALUES (10003171, 621023, '华池县', 10000344, '3');
INSERT INTO `cmf_region` VALUES (10003172, 621024, '合水县', 10000344, '3');
INSERT INTO `cmf_region` VALUES (10003173, 621025, '正宁县', 10000344, '3');
INSERT INTO `cmf_region` VALUES (10003174, 621026, '宁县', 10000344, '3');
INSERT INTO `cmf_region` VALUES (10003175, 621027, '镇原县', 10000344, '3');
INSERT INTO `cmf_region` VALUES (10003176, 621102, '安定区', 10000345, '3');
INSERT INTO `cmf_region` VALUES (10003177, 621121, '通渭县', 10000345, '3');
INSERT INTO `cmf_region` VALUES (10003178, 621122, '陇西县', 10000345, '3');
INSERT INTO `cmf_region` VALUES (10003179, 621123, '渭源县', 10000345, '3');
INSERT INTO `cmf_region` VALUES (10003180, 621124, '临洮县', 10000345, '3');
INSERT INTO `cmf_region` VALUES (10003181, 621125, '漳县', 10000345, '3');
INSERT INTO `cmf_region` VALUES (10003182, 621126, '岷县', 10000345, '3');
INSERT INTO `cmf_region` VALUES (10003183, 621202, '武都区', 10000346, '3');
INSERT INTO `cmf_region` VALUES (10003184, 621221, '成县', 10000346, '3');
INSERT INTO `cmf_region` VALUES (10003185, 621222, '文县', 10000346, '3');
INSERT INTO `cmf_region` VALUES (10003186, 621223, '宕昌县', 10000346, '3');
INSERT INTO `cmf_region` VALUES (10003187, 621224, '康县', 10000346, '3');
INSERT INTO `cmf_region` VALUES (10003188, 621225, '西和县', 10000346, '3');
INSERT INTO `cmf_region` VALUES (10003189, 621226, '礼县', 10000346, '3');
INSERT INTO `cmf_region` VALUES (10003190, 621227, '徽县', 10000346, '3');
INSERT INTO `cmf_region` VALUES (10003191, 621228, '两当县', 10000346, '3');
INSERT INTO `cmf_region` VALUES (10003192, 622901, '临夏市', 10000347, '3');
INSERT INTO `cmf_region` VALUES (10003193, 622921, '临夏县', 10000347, '3');
INSERT INTO `cmf_region` VALUES (10003194, 622922, '康乐县', 10000347, '3');
INSERT INTO `cmf_region` VALUES (10003195, 622923, '永靖县', 10000347, '3');
INSERT INTO `cmf_region` VALUES (10003196, 622924, '广河县', 10000347, '3');
INSERT INTO `cmf_region` VALUES (10003197, 622925, '和政县', 10000347, '3');
INSERT INTO `cmf_region` VALUES (10003198, 622926, '东乡族自治县', 10000347, '3');
INSERT INTO `cmf_region` VALUES (10003199, 622927, '积石山保安族东乡族撒拉族自治县', 10000347, '3');
INSERT INTO `cmf_region` VALUES (10003200, 623001, '合作市', 10000348, '3');
INSERT INTO `cmf_region` VALUES (10003201, 623021, '临潭县', 10000348, '3');
INSERT INTO `cmf_region` VALUES (10003202, 623022, '卓尼县', 10000348, '3');
INSERT INTO `cmf_region` VALUES (10003203, 623023, '舟曲县', 10000348, '3');
INSERT INTO `cmf_region` VALUES (10003204, 623024, '迭部县', 10000348, '3');
INSERT INTO `cmf_region` VALUES (10003205, 623025, '玛曲县', 10000348, '3');
INSERT INTO `cmf_region` VALUES (10003206, 623026, '碌曲县', 10000348, '3');
INSERT INTO `cmf_region` VALUES (10003207, 623027, '夏河县', 10000348, '3');
INSERT INTO `cmf_region` VALUES (10003208, 630102, '城东区', 10000349, '3');
INSERT INTO `cmf_region` VALUES (10003209, 630103, '城中区', 10000349, '3');
INSERT INTO `cmf_region` VALUES (10003210, 630104, '城西区', 10000349, '3');
INSERT INTO `cmf_region` VALUES (10003211, 630105, '城北区', 10000349, '3');
INSERT INTO `cmf_region` VALUES (10003212, 630121, '大通回族土族自治县', 10000349, '3');
INSERT INTO `cmf_region` VALUES (10003213, 630122, '湟中县', 10000349, '3');
INSERT INTO `cmf_region` VALUES (10003214, 630123, '湟源县', 10000349, '3');
INSERT INTO `cmf_region` VALUES (10003215, 630202, '乐都区', 10000350, '3');
INSERT INTO `cmf_region` VALUES (10003216, 630203, '平安区', 10000350, '3');
INSERT INTO `cmf_region` VALUES (10003217, 630222, '民和回族土族自治县', 10000350, '3');
INSERT INTO `cmf_region` VALUES (10003218, 630223, '互助土族自治县', 10000350, '3');
INSERT INTO `cmf_region` VALUES (10003219, 630224, '化隆回族自治县', 10000350, '3');
INSERT INTO `cmf_region` VALUES (10003220, 630225, '循化撒拉族自治县', 10000350, '3');
INSERT INTO `cmf_region` VALUES (10003221, 632221, '门源回族自治县', 10000351, '3');
INSERT INTO `cmf_region` VALUES (10003222, 632222, '祁连县', 10000351, '3');
INSERT INTO `cmf_region` VALUES (10003223, 632223, '海晏县', 10000351, '3');
INSERT INTO `cmf_region` VALUES (10003224, 632224, '刚察县', 10000351, '3');
INSERT INTO `cmf_region` VALUES (10003225, 632321, '同仁县', 10000352, '3');
INSERT INTO `cmf_region` VALUES (10003226, 632322, '尖扎县', 10000352, '3');
INSERT INTO `cmf_region` VALUES (10003227, 632323, '泽库县', 10000352, '3');
INSERT INTO `cmf_region` VALUES (10003228, 632324, '河南蒙古族自治县', 10000352, '3');
INSERT INTO `cmf_region` VALUES (10003229, 632521, '共和县', 10000353, '3');
INSERT INTO `cmf_region` VALUES (10003230, 632522, '同德县', 10000353, '3');
INSERT INTO `cmf_region` VALUES (10003231, 632523, '贵德县', 10000353, '3');
INSERT INTO `cmf_region` VALUES (10003232, 632524, '兴海县', 10000353, '3');
INSERT INTO `cmf_region` VALUES (10003233, 632525, '贵南县', 10000353, '3');
INSERT INTO `cmf_region` VALUES (10003234, 632621, '玛沁县', 10000354, '3');
INSERT INTO `cmf_region` VALUES (10003235, 632622, '班玛县', 10000354, '3');
INSERT INTO `cmf_region` VALUES (10003236, 632623, '甘德县', 10000354, '3');
INSERT INTO `cmf_region` VALUES (10003237, 632624, '达日县', 10000354, '3');
INSERT INTO `cmf_region` VALUES (10003238, 632625, '久治县', 10000354, '3');
INSERT INTO `cmf_region` VALUES (10003239, 632626, '玛多县', 10000354, '3');
INSERT INTO `cmf_region` VALUES (10003240, 632701, '玉树市', 10000355, '3');
INSERT INTO `cmf_region` VALUES (10003241, 632722, '杂多县', 10000355, '3');
INSERT INTO `cmf_region` VALUES (10003242, 632723, '称多县', 10000355, '3');
INSERT INTO `cmf_region` VALUES (10003243, 632724, '治多县', 10000355, '3');
INSERT INTO `cmf_region` VALUES (10003244, 632725, '囊谦县', 10000355, '3');
INSERT INTO `cmf_region` VALUES (10003245, 632726, '曲麻莱县', 10000355, '3');
INSERT INTO `cmf_region` VALUES (10003246, 632801, '格尔木市', 10000356, '3');
INSERT INTO `cmf_region` VALUES (10003247, 632802, '德令哈市', 10000356, '3');
INSERT INTO `cmf_region` VALUES (10003248, 632803, '茫崖市', 10000356, '3');
INSERT INTO `cmf_region` VALUES (10003249, 632821, '乌兰县', 10000356, '3');
INSERT INTO `cmf_region` VALUES (10003250, 632822, '都兰县', 10000356, '3');
INSERT INTO `cmf_region` VALUES (10003251, 632823, '天峻县', 10000356, '3');
INSERT INTO `cmf_region` VALUES (10003252, 640104, '兴庆区', 10000357, '3');
INSERT INTO `cmf_region` VALUES (10003253, 640105, '西夏区', 10000357, '3');
INSERT INTO `cmf_region` VALUES (10003254, 640106, '金凤区', 10000357, '3');
INSERT INTO `cmf_region` VALUES (10003255, 640121, '永宁县', 10000357, '3');
INSERT INTO `cmf_region` VALUES (10003256, 640122, '贺兰县', 10000357, '3');
INSERT INTO `cmf_region` VALUES (10003257, 640181, '灵武市', 10000357, '3');
INSERT INTO `cmf_region` VALUES (10003258, 640202, '大武口区', 10000358, '3');
INSERT INTO `cmf_region` VALUES (10003259, 640205, '惠农区', 10000358, '3');
INSERT INTO `cmf_region` VALUES (10003260, 640221, '平罗县', 10000358, '3');
INSERT INTO `cmf_region` VALUES (10003261, 640302, '利通区', 10000359, '3');
INSERT INTO `cmf_region` VALUES (10003262, 640303, '红寺堡区', 10000359, '3');
INSERT INTO `cmf_region` VALUES (10003263, 640323, '盐池县', 10000359, '3');
INSERT INTO `cmf_region` VALUES (10003264, 640324, '同心县', 10000359, '3');
INSERT INTO `cmf_region` VALUES (10003265, 640381, '青铜峡市', 10000359, '3');
INSERT INTO `cmf_region` VALUES (10003266, 640402, '原州区', 10000360, '3');
INSERT INTO `cmf_region` VALUES (10003267, 640422, '西吉县', 10000360, '3');
INSERT INTO `cmf_region` VALUES (10003268, 640423, '隆德县', 10000360, '3');
INSERT INTO `cmf_region` VALUES (10003269, 640424, '泾源县', 10000360, '3');
INSERT INTO `cmf_region` VALUES (10003270, 640425, '彭阳县', 10000360, '3');
INSERT INTO `cmf_region` VALUES (10003271, 640502, '沙坡头区', 10000361, '3');
INSERT INTO `cmf_region` VALUES (10003272, 640521, '中宁县', 10000361, '3');
INSERT INTO `cmf_region` VALUES (10003273, 640522, '海原县', 10000361, '3');
INSERT INTO `cmf_region` VALUES (10003274, 650102, '天山区', 10000362, '3');
INSERT INTO `cmf_region` VALUES (10003275, 650103, '沙依巴克区', 10000362, '3');
INSERT INTO `cmf_region` VALUES (10003276, 650104, '新市区', 10000362, '3');
INSERT INTO `cmf_region` VALUES (10003277, 650105, '水磨沟区', 10000362, '3');
INSERT INTO `cmf_region` VALUES (10003278, 650106, '头屯河区', 10000362, '3');
INSERT INTO `cmf_region` VALUES (10003279, 650107, '达坂城区', 10000362, '3');
INSERT INTO `cmf_region` VALUES (10003280, 650109, '米东区', 10000362, '3');
INSERT INTO `cmf_region` VALUES (10003281, 650121, '乌鲁木齐县', 10000362, '3');
INSERT INTO `cmf_region` VALUES (10003282, 650202, '独山子区', 10000363, '3');
INSERT INTO `cmf_region` VALUES (10003283, 650203, '克拉玛依区', 10000363, '3');
INSERT INTO `cmf_region` VALUES (10003284, 650204, '白碱滩区', 10000363, '3');
INSERT INTO `cmf_region` VALUES (10003285, 650205, '乌尔禾区', 10000363, '3');
INSERT INTO `cmf_region` VALUES (10003286, 650402, '高昌区', 10000364, '3');
INSERT INTO `cmf_region` VALUES (10003287, 650421, '鄯善县', 10000364, '3');
INSERT INTO `cmf_region` VALUES (10003288, 650422, '托克逊县', 10000364, '3');
INSERT INTO `cmf_region` VALUES (10003289, 650502, '伊州区', 10000365, '3');
INSERT INTO `cmf_region` VALUES (10003290, 650521, '巴里坤哈萨克自治县', 10000365, '3');
INSERT INTO `cmf_region` VALUES (10003291, 650522, '伊吾县', 10000365, '3');
INSERT INTO `cmf_region` VALUES (10003292, 652301, '昌吉市', 10000366, '3');
INSERT INTO `cmf_region` VALUES (10003293, 652302, '阜康市', 10000366, '3');
INSERT INTO `cmf_region` VALUES (10003294, 652323, '呼图壁县', 10000366, '3');
INSERT INTO `cmf_region` VALUES (10003295, 652324, '玛纳斯县', 10000366, '3');
INSERT INTO `cmf_region` VALUES (10003296, 652325, '奇台县', 10000366, '3');
INSERT INTO `cmf_region` VALUES (10003297, 652327, '吉木萨尔县', 10000366, '3');
INSERT INTO `cmf_region` VALUES (10003298, 652328, '木垒哈萨克自治县', 10000366, '3');
INSERT INTO `cmf_region` VALUES (10003299, 652701, '博乐市', 10000367, '3');
INSERT INTO `cmf_region` VALUES (10003300, 652702, '阿拉山口市', 10000367, '3');
INSERT INTO `cmf_region` VALUES (10003301, 652722, '精河县', 10000367, '3');
INSERT INTO `cmf_region` VALUES (10003302, 652723, '温泉县', 10000367, '3');
INSERT INTO `cmf_region` VALUES (10003303, 652801, '库尔勒市', 10000368, '3');
INSERT INTO `cmf_region` VALUES (10003304, 652822, '轮台县', 10000368, '3');
INSERT INTO `cmf_region` VALUES (10003305, 652823, '尉犁县', 10000368, '3');
INSERT INTO `cmf_region` VALUES (10003306, 652824, '若羌县', 10000368, '3');
INSERT INTO `cmf_region` VALUES (10003307, 652825, '且末县', 10000368, '3');
INSERT INTO `cmf_region` VALUES (10003308, 652826, '焉耆回族自治县', 10000368, '3');
INSERT INTO `cmf_region` VALUES (10003309, 652827, '和静县', 10000368, '3');
INSERT INTO `cmf_region` VALUES (10003310, 652828, '和硕县', 10000368, '3');
INSERT INTO `cmf_region` VALUES (10003311, 652829, '博湖县', 10000368, '3');
INSERT INTO `cmf_region` VALUES (10003312, 652901, '阿克苏市', 10000369, '3');
INSERT INTO `cmf_region` VALUES (10003313, 652922, '温宿县', 10000369, '3');
INSERT INTO `cmf_region` VALUES (10003314, 652923, '库车县', 10000369, '3');
INSERT INTO `cmf_region` VALUES (10003315, 652924, '沙雅县', 10000369, '3');
INSERT INTO `cmf_region` VALUES (10003316, 652925, '新和县', 10000369, '3');
INSERT INTO `cmf_region` VALUES (10003317, 652926, '拜城县', 10000369, '3');
INSERT INTO `cmf_region` VALUES (10003318, 652927, '乌什县', 10000369, '3');
INSERT INTO `cmf_region` VALUES (10003319, 652928, '阿瓦提县', 10000369, '3');
INSERT INTO `cmf_region` VALUES (10003320, 652929, '柯坪县', 10000369, '3');
INSERT INTO `cmf_region` VALUES (10003321, 653001, '阿图什市', 10000370, '3');
INSERT INTO `cmf_region` VALUES (10003322, 653022, '阿克陶县', 10000370, '3');
INSERT INTO `cmf_region` VALUES (10003323, 653023, '阿合奇县', 10000370, '3');
INSERT INTO `cmf_region` VALUES (10003324, 653024, '乌恰县', 10000370, '3');
INSERT INTO `cmf_region` VALUES (10003325, 653101, '喀什市', 10000371, '3');
INSERT INTO `cmf_region` VALUES (10003326, 653121, '疏附县', 10000371, '3');
INSERT INTO `cmf_region` VALUES (10003327, 653122, '疏勒县', 10000371, '3');
INSERT INTO `cmf_region` VALUES (10003328, 653123, '英吉沙县', 10000371, '3');
INSERT INTO `cmf_region` VALUES (10003329, 653124, '泽普县', 10000371, '3');
INSERT INTO `cmf_region` VALUES (10003330, 653125, '莎车县', 10000371, '3');
INSERT INTO `cmf_region` VALUES (10003331, 653126, '叶城县', 10000371, '3');
INSERT INTO `cmf_region` VALUES (10003332, 653127, '麦盖提县', 10000371, '3');
INSERT INTO `cmf_region` VALUES (10003333, 653128, '岳普湖县', 10000371, '3');
INSERT INTO `cmf_region` VALUES (10003334, 653129, '伽师县', 10000371, '3');
INSERT INTO `cmf_region` VALUES (10003335, 653130, '巴楚县', 10000371, '3');
INSERT INTO `cmf_region` VALUES (10003336, 653131, '塔什库尔干塔吉克自治县', 10000371, '3');
INSERT INTO `cmf_region` VALUES (10003337, 653201, '和田市', 10000372, '3');
INSERT INTO `cmf_region` VALUES (10003338, 653221, '和田县', 10000372, '3');
INSERT INTO `cmf_region` VALUES (10003339, 653222, '墨玉县', 10000372, '3');
INSERT INTO `cmf_region` VALUES (10003340, 653223, '皮山县', 10000372, '3');
INSERT INTO `cmf_region` VALUES (10003341, 653224, '洛浦县', 10000372, '3');
INSERT INTO `cmf_region` VALUES (10003342, 653225, '策勒县', 10000372, '3');
INSERT INTO `cmf_region` VALUES (10003343, 653226, '于田县', 10000372, '3');
INSERT INTO `cmf_region` VALUES (10003344, 653227, '民丰县', 10000372, '3');
INSERT INTO `cmf_region` VALUES (10003345, 654002, '伊宁市', 10000373, '3');
INSERT INTO `cmf_region` VALUES (10003346, 654003, '奎屯市', 10000373, '3');
INSERT INTO `cmf_region` VALUES (10003347, 654004, '霍尔果斯市', 10000373, '3');
INSERT INTO `cmf_region` VALUES (10003348, 654021, '伊宁县', 10000373, '3');
INSERT INTO `cmf_region` VALUES (10003349, 654022, '察布查尔锡伯自治县', 10000373, '3');
INSERT INTO `cmf_region` VALUES (10003350, 654023, '霍城县', 10000373, '3');
INSERT INTO `cmf_region` VALUES (10003351, 654024, '巩留县', 10000373, '3');
INSERT INTO `cmf_region` VALUES (10003352, 654025, '新源县', 10000373, '3');
INSERT INTO `cmf_region` VALUES (10003353, 654026, '昭苏县', 10000373, '3');
INSERT INTO `cmf_region` VALUES (10003354, 654027, '特克斯县', 10000373, '3');
INSERT INTO `cmf_region` VALUES (10003355, 654028, '尼勒克县', 10000373, '3');
INSERT INTO `cmf_region` VALUES (10003356, 654201, '塔城市', 10000374, '3');
INSERT INTO `cmf_region` VALUES (10003357, 654202, '乌苏市', 10000374, '3');
INSERT INTO `cmf_region` VALUES (10003358, 654221, '额敏县', 10000374, '3');
INSERT INTO `cmf_region` VALUES (10003359, 654223, '沙湾县', 10000374, '3');
INSERT INTO `cmf_region` VALUES (10003360, 654224, '托里县', 10000374, '3');
INSERT INTO `cmf_region` VALUES (10003361, 654225, '裕民县', 10000374, '3');
INSERT INTO `cmf_region` VALUES (10003362, 654226, '和布克赛尔蒙古自治县', 10000374, '3');
INSERT INTO `cmf_region` VALUES (10003363, 654301, '阿勒泰市', 10000375, '3');
INSERT INTO `cmf_region` VALUES (10003364, 654321, '布尔津县', 10000375, '3');
INSERT INTO `cmf_region` VALUES (10003365, 654322, '富蕴县', 10000375, '3');
INSERT INTO `cmf_region` VALUES (10003366, 654323, '福海县', 10000375, '3');
INSERT INTO `cmf_region` VALUES (10003367, 654324, '哈巴河县', 10000375, '3');
INSERT INTO `cmf_region` VALUES (10003368, 654325, '青河县', 10000375, '3');
INSERT INTO `cmf_region` VALUES (10003369, 654326, '吉木乃县', 10000375, '3');
INSERT INTO `cmf_region` VALUES (10003370, 659001, '石河子市', 10000376, '3');
INSERT INTO `cmf_region` VALUES (10003371, 659002, '阿拉尔市', 10000376, '3');
INSERT INTO `cmf_region` VALUES (10003372, 659003, '图木舒克市', 10000376, '3');
INSERT INTO `cmf_region` VALUES (10003373, 659004, '五家渠市', 10000376, '3');
INSERT INTO `cmf_region` VALUES (10003374, 659005, '北屯市', 10000376, '3');
INSERT INTO `cmf_region` VALUES (10003375, 659006, '铁门关市', 10000376, '3');
INSERT INTO `cmf_region` VALUES (10003376, 659007, '双河市', 10000376, '3');
INSERT INTO `cmf_region` VALUES (10003377, 659008, '可克达拉市', 10000376, '3');
INSERT INTO `cmf_region` VALUES (10003378, 659009, '昆玉市', 10000376, '3');
INSERT INTO `cmf_region` VALUES (10003379, 710101, '中正区', 10000377, '3');
INSERT INTO `cmf_region` VALUES (10003380, 710102, '大同区', 10000377, '3');
INSERT INTO `cmf_region` VALUES (10003381, 710103, '中山区', 10000377, '3');
INSERT INTO `cmf_region` VALUES (10003382, 710104, '松山区', 10000377, '3');
INSERT INTO `cmf_region` VALUES (10003383, 710105, '大安区', 10000377, '3');
INSERT INTO `cmf_region` VALUES (10003384, 710106, '万华区', 10000377, '3');
INSERT INTO `cmf_region` VALUES (10003385, 710107, '信义区', 10000377, '3');
INSERT INTO `cmf_region` VALUES (10003386, 710108, '士林区', 10000377, '3');
INSERT INTO `cmf_region` VALUES (10003387, 710109, '北投区', 10000377, '3');
INSERT INTO `cmf_region` VALUES (10003388, 710110, '内湖区', 10000377, '3');
INSERT INTO `cmf_region` VALUES (10003389, 710111, '南港区', 10000377, '3');
INSERT INTO `cmf_region` VALUES (10003390, 710112, '文山区', 10000377, '3');
INSERT INTO `cmf_region` VALUES (10003391, 710199, '其它区', 10000377, '3');
INSERT INTO `cmf_region` VALUES (10003392, 710201, '新兴区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003393, 710202, '前金区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003394, 710203, '芩雅区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003395, 710204, '盐埕区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003396, 710205, '鼓山区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003397, 710206, '旗津区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003398, 710207, '前镇区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003399, 710208, '三民区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003400, 710209, '左营区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003401, 710210, '楠梓区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003402, 710211, '小港区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003403, 710241, '苓雅区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003404, 710242, '仁武区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003405, 710243, '大社区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003406, 710244, '冈山区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003407, 710245, '路竹区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003408, 710246, '阿莲区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003409, 710247, '田寮区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003410, 710248, '燕巢区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003411, 710249, '桥头区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003412, 710250, '梓官区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003413, 710251, '弥陀区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003414, 710252, '永安区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003415, 710253, '湖内区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003416, 710254, '凤山区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003417, 710255, '大寮区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003418, 710256, '林园区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003419, 710257, '鸟松区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003420, 710258, '大树区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003421, 710259, '旗山区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003422, 710260, '美浓区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003423, 710261, '六龟区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003424, 710262, '内门区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003425, 710263, '杉林区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003426, 710264, '甲仙区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003427, 710265, '桃源区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003428, 710266, '那玛夏区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003429, 710267, '茂林区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003430, 710268, '茄萣区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003431, 710299, '其它区', 10000378, '3');
INSERT INTO `cmf_region` VALUES (10003432, 710301, '中西区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003433, 710302, '东区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003434, 710303, '南区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003435, 710304, '北区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003436, 710305, '安平区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003437, 710306, '安南区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003438, 710339, '永康区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003439, 710340, '归仁区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003440, 710341, '新化区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003441, 710342, '左镇区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003442, 710343, '玉井区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003443, 710344, '楠西区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003444, 710345, '南化区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003445, 710346, '仁德区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003446, 710347, '关庙区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003447, 710348, '龙崎区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003448, 710349, '官田区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003449, 710350, '麻豆区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003450, 710351, '佳里区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003451, 710352, '西港区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003452, 710353, '七股区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003453, 710354, '将军区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003454, 710355, '学甲区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003455, 710356, '北门区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003456, 710357, '新营区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003457, 710358, '后壁区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003458, 710359, '白河区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003459, 710360, '东山区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003460, 710361, '六甲区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003461, 710362, '下营区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003462, 710363, '柳营区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003463, 710364, '盐水区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003464, 710365, '善化区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003465, 710366, '大内区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003466, 710367, '山上区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003467, 710368, '新市区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003468, 710369, '安定区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003469, 710399, '其它区', 10000379, '3');
INSERT INTO `cmf_region` VALUES (10003470, 710401, '中区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003471, 710402, '东区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003472, 710403, '南区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003473, 710404, '西区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003474, 710405, '北区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003475, 710406, '北屯区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003476, 710407, '西屯区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003477, 710408, '南屯区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003478, 710431, '太平区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003479, 710432, '大里区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003480, 710433, '雾峰区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003481, 710434, '乌日区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003482, 710435, '丰原区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003483, 710436, '后里区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003484, 710437, '石冈区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003485, 710438, '东势区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003486, 710439, '和平区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003487, 710440, '新社区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003488, 710441, '潭子区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003489, 710442, '大雅区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003490, 710443, '神冈区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003491, 710444, '大肚区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003492, 710445, '沙鹿区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003493, 710446, '龙井区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003494, 710447, '梧栖区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003495, 710448, '清水区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003496, 710449, '大甲区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003497, 710450, '外埔区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003498, 710451, '大安区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003499, 710499, '其它区', 10000380, '3');
INSERT INTO `cmf_region` VALUES (10003500, 710507, '金沙镇', 10000381, '3');
INSERT INTO `cmf_region` VALUES (10003501, 710508, '金湖镇', 10000381, '3');
INSERT INTO `cmf_region` VALUES (10003502, 710509, '金宁乡', 10000381, '3');
INSERT INTO `cmf_region` VALUES (10003503, 710510, '金城镇', 10000381, '3');
INSERT INTO `cmf_region` VALUES (10003504, 710511, '烈屿乡', 10000381, '3');
INSERT INTO `cmf_region` VALUES (10003505, 710512, '乌坵乡', 10000381, '3');
INSERT INTO `cmf_region` VALUES (10003506, 710614, '南投市', 10000382, '3');
INSERT INTO `cmf_region` VALUES (10003507, 710615, '中寮乡', 10000382, '3');
INSERT INTO `cmf_region` VALUES (10003508, 710616, '草屯镇', 10000382, '3');
INSERT INTO `cmf_region` VALUES (10003509, 710617, '国姓乡', 10000382, '3');
INSERT INTO `cmf_region` VALUES (10003510, 710618, '埔里镇', 10000382, '3');
INSERT INTO `cmf_region` VALUES (10003511, 710619, '仁爱乡', 10000382, '3');
INSERT INTO `cmf_region` VALUES (10003512, 710620, '名间乡', 10000382, '3');
INSERT INTO `cmf_region` VALUES (10003513, 710621, '集集镇', 10000382, '3');
INSERT INTO `cmf_region` VALUES (10003514, 710622, '水里乡', 10000382, '3');
INSERT INTO `cmf_region` VALUES (10003515, 710623, '鱼池乡', 10000382, '3');
INSERT INTO `cmf_region` VALUES (10003516, 710624, '信义乡', 10000382, '3');
INSERT INTO `cmf_region` VALUES (10003517, 710625, '竹山镇', 10000382, '3');
INSERT INTO `cmf_region` VALUES (10003518, 710626, '鹿谷乡', 10000382, '3');
INSERT INTO `cmf_region` VALUES (10003519, 710701, '仁爱区', 10000383, '3');
INSERT INTO `cmf_region` VALUES (10003520, 710702, '信义区', 10000383, '3');
INSERT INTO `cmf_region` VALUES (10003521, 710703, '中正区', 10000383, '3');
INSERT INTO `cmf_region` VALUES (10003522, 710704, '中山区', 10000383, '3');
INSERT INTO `cmf_region` VALUES (10003523, 710705, '安乐区', 10000383, '3');
INSERT INTO `cmf_region` VALUES (10003524, 710706, '暖暖区', 10000383, '3');
INSERT INTO `cmf_region` VALUES (10003525, 710707, '七堵区', 10000383, '3');
INSERT INTO `cmf_region` VALUES (10003526, 710799, '其它区', 10000383, '3');
INSERT INTO `cmf_region` VALUES (10003527, 710801, '东区', 10000384, '3');
INSERT INTO `cmf_region` VALUES (10003528, 710802, '北区', 10000384, '3');
INSERT INTO `cmf_region` VALUES (10003529, 710803, '香山区', 10000384, '3');
INSERT INTO `cmf_region` VALUES (10003530, 710899, '其它区', 10000384, '3');
INSERT INTO `cmf_region` VALUES (10003531, 710901, '东区', 10000385, '3');
INSERT INTO `cmf_region` VALUES (10003532, 710902, '西区', 10000385, '3');
INSERT INTO `cmf_region` VALUES (10003533, 710999, '其它区', 10000385, '3');
INSERT INTO `cmf_region` VALUES (10003534, 711130, '万里区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003535, 711132, '板桥区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003536, 711133, '汐止区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003537, 711134, '深坑区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003538, 711135, '石碇区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003539, 711136, '瑞芳区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003540, 711137, '平溪区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003541, 711138, '双溪区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003542, 711139, '贡寮区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003543, 711140, '新店区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003544, 711141, '坪林区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003545, 711142, '乌来区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003546, 711143, '永和区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003547, 711144, '中和区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003548, 711145, '土城区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003549, 711146, '三峡区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003550, 711147, '树林区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003551, 711148, '莺歌区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003552, 711149, '三重区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003553, 711150, '新庄区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003554, 711151, '泰山区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003555, 711152, '林口区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003556, 711153, '芦洲区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003557, 711154, '五股区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003558, 711155, '八里区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003559, 711156, '淡水区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003560, 711157, '三芝区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003561, 711158, '石门区', 10000386, '3');
INSERT INTO `cmf_region` VALUES (10003562, 711287, '宜兰市', 10000387, '3');
INSERT INTO `cmf_region` VALUES (10003563, 711288, '头城镇', 10000387, '3');
INSERT INTO `cmf_region` VALUES (10003564, 711289, '礁溪乡', 10000387, '3');
INSERT INTO `cmf_region` VALUES (10003565, 711290, '壮围乡', 10000387, '3');
INSERT INTO `cmf_region` VALUES (10003566, 711291, '员山乡', 10000387, '3');
INSERT INTO `cmf_region` VALUES (10003567, 711292, '罗东镇', 10000387, '3');
INSERT INTO `cmf_region` VALUES (10003568, 711293, '三星乡', 10000387, '3');
INSERT INTO `cmf_region` VALUES (10003569, 711294, '大同乡', 10000387, '3');
INSERT INTO `cmf_region` VALUES (10003570, 711295, '五结乡', 10000387, '3');
INSERT INTO `cmf_region` VALUES (10003571, 711296, '冬山乡', 10000387, '3');
INSERT INTO `cmf_region` VALUES (10003572, 711297, '苏澳镇', 10000387, '3');
INSERT INTO `cmf_region` VALUES (10003573, 711298, '南澳乡', 10000387, '3');
INSERT INTO `cmf_region` VALUES (10003574, 711299, '钓鱼台', 10000387, '3');
INSERT INTO `cmf_region` VALUES (10003575, 711387, '竹北市', 10000388, '3');
INSERT INTO `cmf_region` VALUES (10003576, 711388, '湖口乡', 10000388, '3');
INSERT INTO `cmf_region` VALUES (10003577, 711389, '新丰乡', 10000388, '3');
INSERT INTO `cmf_region` VALUES (10003578, 711390, '新埔镇', 10000388, '3');
INSERT INTO `cmf_region` VALUES (10003579, 711391, '关西镇', 10000388, '3');
INSERT INTO `cmf_region` VALUES (10003580, 711392, '芎林乡', 10000388, '3');
INSERT INTO `cmf_region` VALUES (10003581, 711393, '宝山乡', 10000388, '3');
INSERT INTO `cmf_region` VALUES (10003582, 711394, '竹东镇', 10000388, '3');
INSERT INTO `cmf_region` VALUES (10003583, 711395, '五峰乡', 10000388, '3');
INSERT INTO `cmf_region` VALUES (10003584, 711396, '横山乡', 10000388, '3');
INSERT INTO `cmf_region` VALUES (10003585, 711397, '尖石乡', 10000388, '3');
INSERT INTO `cmf_region` VALUES (10003586, 711398, '北埔乡', 10000388, '3');
INSERT INTO `cmf_region` VALUES (10003587, 711399, '峨眉乡', 10000388, '3');
INSERT INTO `cmf_region` VALUES (10003588, 711414, '中坜区', 10000389, '3');
INSERT INTO `cmf_region` VALUES (10003589, 711415, '平镇区', 10000389, '3');
INSERT INTO `cmf_region` VALUES (10003590, 711417, '杨梅区', 10000389, '3');
INSERT INTO `cmf_region` VALUES (10003591, 711418, '新屋区', 10000389, '3');
INSERT INTO `cmf_region` VALUES (10003592, 711419, '观音区', 10000389, '3');
INSERT INTO `cmf_region` VALUES (10003593, 711420, '桃园区', 10000389, '3');
INSERT INTO `cmf_region` VALUES (10003594, 711421, '龟山区', 10000389, '3');
INSERT INTO `cmf_region` VALUES (10003595, 711422, '八德区', 10000389, '3');
INSERT INTO `cmf_region` VALUES (10003596, 711423, '大溪区', 10000389, '3');
INSERT INTO `cmf_region` VALUES (10003597, 711425, '大园区', 10000389, '3');
INSERT INTO `cmf_region` VALUES (10003598, 711426, '芦竹区', 10000389, '3');
INSERT INTO `cmf_region` VALUES (10003599, 711487, '中坜市', 10000389, '3');
INSERT INTO `cmf_region` VALUES (10003600, 711488, '平镇市', 10000389, '3');
INSERT INTO `cmf_region` VALUES (10003601, 711489, '龙潭乡', 10000389, '3');
INSERT INTO `cmf_region` VALUES (10003602, 711490, '杨梅市', 10000389, '3');
INSERT INTO `cmf_region` VALUES (10003603, 711491, '新屋乡', 10000389, '3');
INSERT INTO `cmf_region` VALUES (10003604, 711492, '观音乡', 10000389, '3');
INSERT INTO `cmf_region` VALUES (10003605, 711493, '桃园市', 10000389, '3');
INSERT INTO `cmf_region` VALUES (10003606, 711494, '龟山乡', 10000389, '3');
INSERT INTO `cmf_region` VALUES (10003607, 711495, '八德市', 10000389, '3');
INSERT INTO `cmf_region` VALUES (10003608, 711496, '大溪镇', 10000389, '3');
INSERT INTO `cmf_region` VALUES (10003609, 711497, '复兴乡', 10000389, '3');
INSERT INTO `cmf_region` VALUES (10003610, 711498, '大园乡', 10000389, '3');
INSERT INTO `cmf_region` VALUES (10003611, 711499, '芦竹乡', 10000389, '3');
INSERT INTO `cmf_region` VALUES (10003612, 711520, '头份市', 10000390, '3');
INSERT INTO `cmf_region` VALUES (10003613, 711582, '竹南镇', 10000390, '3');
INSERT INTO `cmf_region` VALUES (10003614, 711583, '头份镇', 10000390, '3');
INSERT INTO `cmf_region` VALUES (10003615, 711584, '三湾乡', 10000390, '3');
INSERT INTO `cmf_region` VALUES (10003616, 711585, '南庄乡', 10000390, '3');
INSERT INTO `cmf_region` VALUES (10003617, 711586, '狮潭乡', 10000390, '3');
INSERT INTO `cmf_region` VALUES (10003618, 711587, '后龙镇', 10000390, '3');
INSERT INTO `cmf_region` VALUES (10003619, 711588, '通霄镇', 10000390, '3');
INSERT INTO `cmf_region` VALUES (10003620, 711589, '苑里镇', 10000390, '3');
INSERT INTO `cmf_region` VALUES (10003621, 711590, '苗栗市', 10000390, '3');
INSERT INTO `cmf_region` VALUES (10003622, 711591, '造桥乡', 10000390, '3');
INSERT INTO `cmf_region` VALUES (10003623, 711592, '头屋乡', 10000390, '3');
INSERT INTO `cmf_region` VALUES (10003624, 711593, '公馆乡', 10000390, '3');
INSERT INTO `cmf_region` VALUES (10003625, 711594, '大湖乡', 10000390, '3');
INSERT INTO `cmf_region` VALUES (10003626, 711595, '泰安乡', 10000390, '3');
INSERT INTO `cmf_region` VALUES (10003627, 711596, '铜锣乡', 10000390, '3');
INSERT INTO `cmf_region` VALUES (10003628, 711597, '三义乡', 10000390, '3');
INSERT INTO `cmf_region` VALUES (10003629, 711598, '西湖乡', 10000390, '3');
INSERT INTO `cmf_region` VALUES (10003630, 711599, '卓兰镇', 10000390, '3');
INSERT INTO `cmf_region` VALUES (10003631, 711736, '员林市', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003632, 711774, '彰化市', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003633, 711775, '芬园乡', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003634, 711776, '花坛乡', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003635, 711777, '秀水乡', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003636, 711778, '鹿港镇', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003637, 711779, '福兴乡', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003638, 711780, '线西乡', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003639, 711781, '和美镇', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003640, 711782, '伸港乡', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003641, 711783, '员林镇', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003642, 711784, '社头乡', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003643, 711785, '永靖乡', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003644, 711786, '埔心乡', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003645, 711787, '溪湖镇', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003646, 711788, '大村乡', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003647, 711789, '埔盐乡', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003648, 711790, '田中镇', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003649, 711791, '北斗镇', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003650, 711792, '田尾乡', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003651, 711793, '埤头乡', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003652, 711794, '溪州乡', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003653, 711795, '竹塘乡', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003654, 711796, '二林镇', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003655, 711797, '大城乡', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003656, 711798, '芳苑乡', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003657, 711799, '二水乡', 10000391, '3');
INSERT INTO `cmf_region` VALUES (10003658, 711982, '番路乡', 10000392, '3');
INSERT INTO `cmf_region` VALUES (10003659, 711983, '梅山乡', 10000392, '3');
INSERT INTO `cmf_region` VALUES (10003660, 711984, '竹崎乡', 10000392, '3');
INSERT INTO `cmf_region` VALUES (10003661, 711985, '阿里山乡', 10000392, '3');
INSERT INTO `cmf_region` VALUES (10003662, 711986, '中埔乡', 10000392, '3');
INSERT INTO `cmf_region` VALUES (10003663, 711987, '大埔乡', 10000392, '3');
INSERT INTO `cmf_region` VALUES (10003664, 711988, '水上乡', 10000392, '3');
INSERT INTO `cmf_region` VALUES (10003665, 711989, '鹿草乡', 10000392, '3');
INSERT INTO `cmf_region` VALUES (10003666, 711990, '太保市', 10000392, '3');
INSERT INTO `cmf_region` VALUES (10003667, 711991, '朴子市', 10000392, '3');
INSERT INTO `cmf_region` VALUES (10003668, 711992, '东石乡', 10000392, '3');
INSERT INTO `cmf_region` VALUES (10003669, 711993, '六脚乡', 10000392, '3');
INSERT INTO `cmf_region` VALUES (10003670, 711994, '新港乡', 10000392, '3');
INSERT INTO `cmf_region` VALUES (10003671, 711995, '民雄乡', 10000392, '3');
INSERT INTO `cmf_region` VALUES (10003672, 711996, '大林镇', 10000392, '3');
INSERT INTO `cmf_region` VALUES (10003673, 711997, '溪口乡', 10000392, '3');
INSERT INTO `cmf_region` VALUES (10003674, 711998, '义竹乡', 10000392, '3');
INSERT INTO `cmf_region` VALUES (10003675, 711999, '布袋镇', 10000392, '3');
INSERT INTO `cmf_region` VALUES (10003676, 712180, '斗南镇', 10000393, '3');
INSERT INTO `cmf_region` VALUES (10003677, 712181, '大埤乡', 10000393, '3');
INSERT INTO `cmf_region` VALUES (10003678, 712182, '虎尾镇', 10000393, '3');
INSERT INTO `cmf_region` VALUES (10003679, 712183, '土库镇', 10000393, '3');
INSERT INTO `cmf_region` VALUES (10003680, 712184, '褒忠乡', 10000393, '3');
INSERT INTO `cmf_region` VALUES (10003681, 712185, '东势乡', 10000393, '3');
INSERT INTO `cmf_region` VALUES (10003682, 712186, '台西乡', 10000393, '3');
INSERT INTO `cmf_region` VALUES (10003683, 712187, '仑背乡', 10000393, '3');
INSERT INTO `cmf_region` VALUES (10003684, 712188, '麦寮乡', 10000393, '3');
INSERT INTO `cmf_region` VALUES (10003685, 712189, '斗六市', 10000393, '3');
INSERT INTO `cmf_region` VALUES (10003686, 712190, '林内乡', 10000393, '3');
INSERT INTO `cmf_region` VALUES (10003687, 712191, '古坑乡', 10000393, '3');
INSERT INTO `cmf_region` VALUES (10003688, 712192, '莿桐乡', 10000393, '3');
INSERT INTO `cmf_region` VALUES (10003689, 712193, '西螺镇', 10000393, '3');
INSERT INTO `cmf_region` VALUES (10003690, 712194, '二仑乡', 10000393, '3');
INSERT INTO `cmf_region` VALUES (10003691, 712195, '北港镇', 10000393, '3');
INSERT INTO `cmf_region` VALUES (10003692, 712196, '水林乡', 10000393, '3');
INSERT INTO `cmf_region` VALUES (10003693, 712197, '口湖乡', 10000393, '3');
INSERT INTO `cmf_region` VALUES (10003694, 712198, '四湖乡', 10000393, '3');
INSERT INTO `cmf_region` VALUES (10003695, 712199, '元长乡', 10000393, '3');
INSERT INTO `cmf_region` VALUES (10003696, 712451, '崁顶乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003697, 712467, '屏东市', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003698, 712468, '三地门乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003699, 712469, '雾台乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003700, 712470, '玛家乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003701, 712471, '九如乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003702, 712472, '里港乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003703, 712473, '高树乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003704, 712474, '盐埔乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003705, 712475, '长治乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003706, 712476, '麟洛乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003707, 712477, '竹田乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003708, 712478, '内埔乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003709, 712479, '万丹乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003710, 712480, '潮州镇', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003711, 712481, '泰武乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003712, 712482, '来义乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003713, 712483, '万峦乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003714, 712484, '莰顶乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003715, 712485, '新埤乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003716, 712486, '南州乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003717, 712487, '林边乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003718, 712488, '东港镇', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003719, 712489, '琉球乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003720, 712490, '佳冬乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003721, 712491, '新园乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003722, 712492, '枋寮乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003723, 712493, '枋山乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003724, 712494, '春日乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003725, 712495, '狮子乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003726, 712496, '车城乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003727, 712497, '牡丹乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003728, 712498, '恒春镇', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003729, 712499, '满州乡', 10000394, '3');
INSERT INTO `cmf_region` VALUES (10003730, 712584, '台东市', 10000395, '3');
INSERT INTO `cmf_region` VALUES (10003731, 712585, '绿岛乡', 10000395, '3');
INSERT INTO `cmf_region` VALUES (10003732, 712586, '兰屿乡', 10000395, '3');
INSERT INTO `cmf_region` VALUES (10003733, 712587, '延平乡', 10000395, '3');
INSERT INTO `cmf_region` VALUES (10003734, 712588, '卑南乡', 10000395, '3');
INSERT INTO `cmf_region` VALUES (10003735, 712589, '鹿野乡', 10000395, '3');
INSERT INTO `cmf_region` VALUES (10003736, 712590, '关山镇', 10000395, '3');
INSERT INTO `cmf_region` VALUES (10003737, 712591, '海端乡', 10000395, '3');
INSERT INTO `cmf_region` VALUES (10003738, 712592, '池上乡', 10000395, '3');
INSERT INTO `cmf_region` VALUES (10003739, 712593, '东河乡', 10000395, '3');
INSERT INTO `cmf_region` VALUES (10003740, 712594, '成功镇', 10000395, '3');
INSERT INTO `cmf_region` VALUES (10003741, 712595, '长滨乡', 10000395, '3');
INSERT INTO `cmf_region` VALUES (10003742, 712596, '金峰乡', 10000395, '3');
INSERT INTO `cmf_region` VALUES (10003743, 712597, '大武乡', 10000395, '3');
INSERT INTO `cmf_region` VALUES (10003744, 712598, '达仁乡', 10000395, '3');
INSERT INTO `cmf_region` VALUES (10003745, 712599, '太麻里乡', 10000395, '3');
INSERT INTO `cmf_region` VALUES (10003746, 712686, '花莲市', 10000396, '3');
INSERT INTO `cmf_region` VALUES (10003747, 712687, '新城乡', 10000396, '3');
INSERT INTO `cmf_region` VALUES (10003748, 712688, '太鲁阁', 10000396, '3');
INSERT INTO `cmf_region` VALUES (10003749, 712689, '秀林乡', 10000396, '3');
INSERT INTO `cmf_region` VALUES (10003750, 712690, '吉安乡', 10000396, '3');
INSERT INTO `cmf_region` VALUES (10003751, 712691, '寿丰乡', 10000396, '3');
INSERT INTO `cmf_region` VALUES (10003752, 712692, '凤林镇', 10000396, '3');
INSERT INTO `cmf_region` VALUES (10003753, 712693, '光复乡', 10000396, '3');
INSERT INTO `cmf_region` VALUES (10003754, 712694, '丰滨乡', 10000396, '3');
INSERT INTO `cmf_region` VALUES (10003755, 712695, '瑞穗乡', 10000396, '3');
INSERT INTO `cmf_region` VALUES (10003756, 712696, '万荣乡', 10000396, '3');
INSERT INTO `cmf_region` VALUES (10003757, 712697, '玉里镇', 10000396, '3');
INSERT INTO `cmf_region` VALUES (10003758, 712698, '卓溪乡', 10000396, '3');
INSERT INTO `cmf_region` VALUES (10003759, 712699, '富里乡', 10000396, '3');
INSERT INTO `cmf_region` VALUES (10003760, 712794, '马公市', 10000397, '3');
INSERT INTO `cmf_region` VALUES (10003761, 712795, '西屿乡', 10000397, '3');
INSERT INTO `cmf_region` VALUES (10003762, 712796, '望安乡', 10000397, '3');
INSERT INTO `cmf_region` VALUES (10003763, 712797, '七美乡', 10000397, '3');
INSERT INTO `cmf_region` VALUES (10003764, 712798, '白沙乡', 10000397, '3');
INSERT INTO `cmf_region` VALUES (10003765, 712799, '湖西乡', 10000397, '3');
INSERT INTO `cmf_region` VALUES (10003766, 712896, '南竿乡', 10000398, '3');
INSERT INTO `cmf_region` VALUES (10003767, 712897, '北竿乡', 10000398, '3');
INSERT INTO `cmf_region` VALUES (10003768, 712898, '东引乡', 10000398, '3');
INSERT INTO `cmf_region` VALUES (10003769, 712899, '莒光乡', 10000398, '3');
INSERT INTO `cmf_region` VALUES (10003770, 810101, '中西区', 10000399, '3');
INSERT INTO `cmf_region` VALUES (10003771, 810102, '湾仔区', 10000399, '3');
INSERT INTO `cmf_region` VALUES (10003772, 810103, '东区', 10000399, '3');
INSERT INTO `cmf_region` VALUES (10003773, 810104, '南区', 10000399, '3');
INSERT INTO `cmf_region` VALUES (10003774, 810201, '九龙城区', 10000400, '3');
INSERT INTO `cmf_region` VALUES (10003775, 810202, '油尖旺区', 10000400, '3');
INSERT INTO `cmf_region` VALUES (10003776, 810203, '深水埗区', 10000400, '3');
INSERT INTO `cmf_region` VALUES (10003777, 810204, '黄大仙区', 10000400, '3');
INSERT INTO `cmf_region` VALUES (10003778, 810205, '观塘区', 10000400, '3');
INSERT INTO `cmf_region` VALUES (10003779, 810301, '北区', 10000401, '3');
INSERT INTO `cmf_region` VALUES (10003780, 810302, '大埔区', 10000401, '3');
INSERT INTO `cmf_region` VALUES (10003781, 810303, '沙田区', 10000401, '3');
INSERT INTO `cmf_region` VALUES (10003782, 810304, '西贡区', 10000401, '3');
INSERT INTO `cmf_region` VALUES (10003783, 810305, '元朗区', 10000401, '3');
INSERT INTO `cmf_region` VALUES (10003784, 810306, '屯门区', 10000401, '3');
INSERT INTO `cmf_region` VALUES (10003785, 810307, '荃湾区', 10000401, '3');
INSERT INTO `cmf_region` VALUES (10003786, 810308, '葵青区', 10000401, '3');
INSERT INTO `cmf_region` VALUES (10003787, 810309, '离岛区', 10000401, '3');
INSERT INTO `cmf_region` VALUES (10003788, 820101, '澳门半岛', 10000402, '3');
INSERT INTO `cmf_region` VALUES (10003789, 820201, '离岛', 10000403, '3');
INSERT INTO `cmf_region` VALUES (1000000002, 0, '暂无选择', 10000000, '0');

-- ----------------------------
-- Table structure for cmf_region_letter
-- ----------------------------
DROP TABLE IF EXISTS `cmf_region_letter`;
CREATE TABLE `cmf_region_letter`  (
  `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `code` bigint(12) NULL DEFAULT NULL COMMENT '行政区划代码',
  `parent_id` bigint(11) NULL DEFAULT NULL COMMENT '上级id',
  `level_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '层级',
  `letter` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '首字母',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10003790 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_region_letter
-- ----------------------------
INSERT INTO `cmf_region_letter` VALUES (10000001, '北京市', 110000, 10000000, '1', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000002, '天津市', 120000, 10000000, '1', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000003, '河北省', 130000, 10000000, '1', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000004, '山西省', 140000, 10000000, '1', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000005, '内蒙古自治区', 150000, 10000000, '1', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000006, '辽宁省', 210000, 10000000, '1', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000007, '吉林省', 220000, 10000000, '1', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000008, '黑龙江省', 230000, 10000000, '1', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000009, '上海市', 310000, 10000000, '1', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000010, '江苏省', 320000, 10000000, '1', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000011, '浙江省', 330000, 10000000, '1', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000012, '安徽省', 340000, 10000000, '1', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000013, '福建省', 350000, 10000000, '1', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000014, '江西省', 360000, 10000000, '1', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000015, '山东省', 370000, 10000000, '1', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000016, '河南省', 410000, 10000000, '1', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000017, '湖北省', 420000, 10000000, '1', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000018, '湖南省', 430000, 10000000, '1', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000019, '广东省', 440000, 10000000, '1', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000020, '广西壮族自治区', 450000, 10000000, '1', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000021, '海南省', 460000, 10000000, '1', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000022, '重庆市', 500000, 10000000, '1', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000023, '四川省', 510000, 10000000, '1', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000024, '贵州省', 520000, 10000000, '1', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000025, '云南省', 530000, 10000000, '1', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000026, '西藏自治区', 540000, 10000000, '1', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000027, '陕西省', 610000, 10000000, '1', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000028, '甘肃省', 620000, 10000000, '1', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000029, '青海省', 630000, 10000000, '1', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000030, '宁夏回族自治区', 640000, 10000000, '1', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000031, '新疆维吾尔自治区', 650000, 10000000, '1', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000032, '台湾省', 710000, 10000000, '1', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000033, '香港特别行政区', 810000, 10000000, '1', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000034, '澳门特别行政区', 820000, 10000000, '1', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000035, '北京市', 110100, 10000001, '2', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000036, '天津市', 120100, 10000002, '2', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000037, '石家庄市', 130100, 10000003, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000038, '唐山市', 130200, 10000003, '2', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000039, '秦皇岛市', 130300, 10000003, '2', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000040, '邯郸市', 130400, 10000003, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000041, '邢台市', 130500, 10000003, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000042, '保定市', 130600, 10000003, '2', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000043, '张家口市', 130700, 10000003, '2', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000044, '承德市', 130800, 10000003, '2', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000045, '沧州市', 130900, 10000003, '2', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000046, '廊坊市', 131000, 10000003, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000047, '衡水市', 131100, 10000003, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000048, '太原市', 140100, 10000004, '2', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000049, '大同市', 140200, 10000004, '2', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000050, '阳泉市', 140300, 10000004, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000051, '长治市', 140400, 10000004, '2', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000052, '晋城市', 140500, 10000004, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000053, '朔州市', 140600, 10000004, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000054, '晋中市', 140700, 10000004, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000055, '运城市', 140800, 10000004, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000056, '忻州市', 140900, 10000004, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000057, '临汾市', 141000, 10000004, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000058, '吕梁市', 141100, 10000004, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000059, '呼和浩特市', 150100, 10000005, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000060, '包头市', 150200, 10000005, '2', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000061, '乌海市', 150300, 10000005, '2', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000062, '赤峰市', 150400, 10000005, '2', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000063, '通辽市', 150500, 10000005, '2', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000064, '鄂尔多斯市', 150600, 10000005, '2', 'E');
INSERT INTO `cmf_region_letter` VALUES (10000065, '呼伦贝尔市', 150700, 10000005, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000066, '巴彦淖尔市', 150800, 10000005, '2', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000067, '乌兰察布市', 150900, 10000005, '2', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000068, '兴安盟', 152200, 10000005, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000069, '锡林郭勒盟', 152500, 10000005, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000070, '阿拉善盟', 152900, 10000005, '2', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000071, '沈阳市', 210100, 10000006, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000072, '大连市', 210200, 10000006, '2', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000073, '鞍山市', 210300, 10000006, '2', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000074, '抚顺市', 210400, 10000006, '2', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000075, '本溪市', 210500, 10000006, '2', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000076, '丹东市', 210600, 10000006, '2', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000077, '锦州市', 210700, 10000006, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000078, '营口市', 210800, 10000006, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000079, '阜新市', 210900, 10000006, '2', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000080, '辽阳市', 211000, 10000006, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000081, '盘锦市', 211100, 10000006, '2', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000082, '铁岭市', 211200, 10000006, '2', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000083, '朝阳市', 211300, 10000006, '2', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000084, '葫芦岛市', 211400, 10000006, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000085, '长春市', 220100, 10000007, '2', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000086, '吉林市', 220200, 10000007, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000087, '四平市', 220300, 10000007, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000088, '辽源市', 220400, 10000007, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000089, '通化市', 220500, 10000007, '2', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000090, '白山市', 220600, 10000007, '2', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000091, '松原市', 220700, 10000007, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000092, '白城市', 220800, 10000007, '2', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000093, '延边朝鲜族自治州', 222400, 10000007, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000094, '哈尔滨市', 230100, 10000008, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000095, '齐齐哈尔市', 230200, 10000008, '2', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000096, '鸡西市', 230300, 10000008, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000097, '鹤岗市', 230400, 10000008, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000098, '双鸭山市', 230500, 10000008, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000099, '大庆市', 230600, 10000008, '2', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000100, '伊春市', 230700, 10000008, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000101, '佳木斯市', 230800, 10000008, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000102, '七台河市', 230900, 10000008, '2', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000103, '牡丹江市', 231000, 10000008, '2', 'M');
INSERT INTO `cmf_region_letter` VALUES (10000104, '黑河市', 231100, 10000008, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000105, '绥化市', 231200, 10000008, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000106, '大兴安岭地区', 232700, 10000008, '2', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000107, '上海市', 310100, 10000009, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000108, '南京市', 320100, 10000010, '2', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000109, '无锡市', 320200, 10000010, '2', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000110, '徐州市', 320300, 10000010, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000111, '常州市', 320400, 10000010, '2', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000112, '苏州市', 320500, 10000010, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000113, '南通市', 320600, 10000010, '2', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000114, '连云港市', 320700, 10000010, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000115, '淮安市', 320800, 10000010, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000116, '盐城市', 320900, 10000010, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000117, '扬州市', 321000, 10000010, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000118, '镇江市', 321100, 10000010, '2', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000119, '泰州市', 321200, 10000010, '2', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000120, '宿迁市', 321300, 10000010, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000121, '杭州市', 330100, 10000011, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000122, '宁波市', 330200, 10000011, '2', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000123, '温州市', 330300, 10000011, '2', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000124, '嘉兴市', 330400, 10000011, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000125, '湖州市', 330500, 10000011, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000126, '绍兴市', 330600, 10000011, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000127, '金华市', 330700, 10000011, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000128, '衢州市', 330800, 10000011, '2', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000129, '舟山市', 330900, 10000011, '2', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000130, '台州市', 331000, 10000011, '2', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000131, '丽水市', 331100, 10000011, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000132, '合肥市', 340100, 10000012, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000133, '芜湖市', 340200, 10000012, '2', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000134, '蚌埠市', 340300, 10000012, '2', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000135, '淮南市', 340400, 10000012, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000136, '马鞍山市', 340500, 10000012, '2', 'M');
INSERT INTO `cmf_region_letter` VALUES (10000137, '淮北市', 340600, 10000012, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000138, '铜陵市', 340700, 10000012, '2', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000139, '安庆市', 340800, 10000012, '2', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000140, '黄山市', 341000, 10000012, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000141, '滁州市', 341100, 10000012, '2', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000142, '阜阳市', 341200, 10000012, '2', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000143, '宿州市', 341300, 10000012, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000144, '六安市', 341500, 10000012, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000145, '亳州市', 341600, 10000012, '2', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000146, '池州市', 341700, 10000012, '2', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000147, '宣城市', 341800, 10000012, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000148, '福州市', 350100, 10000013, '2', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000149, '厦门市', 350200, 10000013, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000150, '莆田市', 350300, 10000013, '2', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000151, '三明市', 350400, 10000013, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000152, '泉州市', 350500, 10000013, '2', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000153, '漳州市', 350600, 10000013, '2', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000154, '南平市', 350700, 10000013, '2', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000155, '龙岩市', 350800, 10000013, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000156, '宁德市', 350900, 10000013, '2', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000157, '南昌市', 360100, 10000014, '2', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000158, '景德镇市', 360200, 10000014, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000159, '萍乡市', 360300, 10000014, '2', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000160, '九江市', 360400, 10000014, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000161, '新余市', 360500, 10000014, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000162, '鹰潭市', 360600, 10000014, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000163, '赣州市', 360700, 10000014, '2', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000164, '吉安市', 360800, 10000014, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000165, '宜春市', 360900, 10000014, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000166, '抚州市', 361000, 10000014, '2', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000167, '上饶市', 361100, 10000014, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000168, '济南市', 370100, 10000015, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000169, '青岛市', 370200, 10000015, '2', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000170, '淄博市', 370300, 10000015, '2', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000171, '枣庄市', 370400, 10000015, '2', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000172, '东营市', 370500, 10000015, '2', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000173, '烟台市', 370600, 10000015, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000174, '潍坊市', 370700, 10000015, '2', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000175, '济宁市', 370800, 10000015, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000176, '泰安市', 370900, 10000015, '2', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000177, '威海市', 371000, 10000015, '2', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000178, '日照市', 371100, 10000015, '2', 'R');
INSERT INTO `cmf_region_letter` VALUES (10000179, '临沂市', 371300, 10000015, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000180, '德州市', 371400, 10000015, '2', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000181, '聊城市', 371500, 10000015, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000182, '滨州市', 371600, 10000015, '2', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000183, '菏泽市', 371700, 10000015, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000184, '郑州市', 410100, 10000016, '2', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000185, '开封市', 410200, 10000016, '2', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000186, '洛阳市', 410300, 10000016, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000187, '平顶山市', 410400, 10000016, '2', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000188, '安阳市', 410500, 10000016, '2', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000189, '鹤壁市', 410600, 10000016, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000190, '新乡市', 410700, 10000016, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000191, '焦作市', 410800, 10000016, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000192, '濮阳市', 410900, 10000016, '2', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000193, '许昌市', 411000, 10000016, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000194, '漯河市', 411100, 10000016, '2', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000195, '三门峡市', 411200, 10000016, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000196, '南阳市', 411300, 10000016, '2', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000197, '商丘市', 411400, 10000016, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000198, '信阳市', 411500, 10000016, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000199, '周口市', 411600, 10000016, '2', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000200, '驻马店市', 411700, 10000016, '2', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000201, '省直辖县', 419000, 10000016, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000202, '武汉市', 420100, 10000017, '2', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000203, '黄石市', 420200, 10000017, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000204, '十堰市', 420300, 10000017, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000205, '宜昌市', 420500, 10000017, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000206, '襄阳市', 420600, 10000017, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000207, '鄂州市', 420700, 10000017, '2', 'E');
INSERT INTO `cmf_region_letter` VALUES (10000208, '荆门市', 420800, 10000017, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000209, '孝感市', 420900, 10000017, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000210, '荆州市', 421000, 10000017, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000211, '黄冈市', 421100, 10000017, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000212, '咸宁市', 421200, 10000017, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000213, '随州市', 421300, 10000017, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000214, '恩施土家族苗族自治州', 422800, 10000017, '2', 'E');
INSERT INTO `cmf_region_letter` VALUES (10000215, '省直辖县', 429000, 10000017, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000216, '长沙市', 430100, 10000018, '2', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000217, '株洲市', 430200, 10000018, '2', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000218, '湘潭市', 430300, 10000018, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000219, '衡阳市', 430400, 10000018, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000220, '邵阳市', 430500, 10000018, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000221, '岳阳市', 430600, 10000018, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000222, '常德市', 430700, 10000018, '2', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000223, '张家界市', 430800, 10000018, '2', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000224, '益阳市', 430900, 10000018, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000225, '郴州市', 431000, 10000018, '2', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000226, '永州市', 431100, 10000018, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000227, '怀化市', 431200, 10000018, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000228, '娄底市', 431300, 10000018, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000229, '湘西土家族苗族自治州', 433100, 10000018, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000230, '广州市', 440100, 10000019, '2', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000231, '韶关市', 440200, 10000019, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000232, '深圳市', 440300, 10000019, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000233, '珠海市', 440400, 10000019, '2', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000234, '汕头市', 440500, 10000019, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000235, '佛山市', 440600, 10000019, '2', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000236, '江门市', 440700, 10000019, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000237, '湛江市', 440800, 10000019, '2', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000238, '茂名市', 440900, 10000019, '2', 'M');
INSERT INTO `cmf_region_letter` VALUES (10000239, '肇庆市', 441200, 10000019, '2', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000240, '惠州市', 441300, 10000019, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000241, '梅州市', 441400, 10000019, '2', 'M');
INSERT INTO `cmf_region_letter` VALUES (10000242, '汕尾市', 441500, 10000019, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000243, '河源市', 441600, 10000019, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000244, '阳江市', 441700, 10000019, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000245, '清远市', 441800, 10000019, '2', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000246, '东莞市', 441900, 10000019, '2', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000247, '中山市', 442000, 10000019, '2', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000248, '潮州市', 445100, 10000019, '2', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000249, '揭阳市', 445200, 10000019, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000250, '云浮市', 445300, 10000019, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000251, '南宁市', 450100, 10000020, '2', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000252, '柳州市', 450200, 10000020, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000253, '桂林市', 450300, 10000020, '2', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000254, '梧州市', 450400, 10000020, '2', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000255, '北海市', 450500, 10000020, '2', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000256, '防城港市', 450600, 10000020, '2', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000257, '钦州市', 450700, 10000020, '2', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000258, '贵港市', 450800, 10000020, '2', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000259, '玉林市', 450900, 10000020, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000260, '百色市', 451000, 10000020, '2', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000261, '贺州市', 451100, 10000020, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000262, '河池市', 451200, 10000020, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000263, '来宾市', 451300, 10000020, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000264, '崇左市', 451400, 10000020, '2', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000265, '海口市', 460100, 10000021, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000266, '三亚市', 460200, 10000021, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000267, '三沙市', 460300, 10000021, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000268, '儋州市', 460400, 10000021, '2', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000269, '省直辖县', 469000, 10000021, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000270, '重庆市', 500100, 10000022, '2', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000271, '县', 500200, 10000022, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000272, '成都市', 510100, 10000023, '2', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000273, '自贡市', 510300, 10000023, '2', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000274, '攀枝花市', 510400, 10000023, '2', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000275, '泸州市', 510500, 10000023, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000276, '德阳市', 510600, 10000023, '2', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000277, '绵阳市', 510700, 10000023, '2', 'M');
INSERT INTO `cmf_region_letter` VALUES (10000278, '广元市', 510800, 10000023, '2', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000279, '遂宁市', 510900, 10000023, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000280, '内江市', 511000, 10000023, '2', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000281, '乐山市', 511100, 10000023, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000282, '南充市', 511300, 10000023, '2', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000283, '眉山市', 511400, 10000023, '2', 'M');
INSERT INTO `cmf_region_letter` VALUES (10000284, '宜宾市', 511500, 10000023, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000285, '广安市', 511600, 10000023, '2', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000286, '达州市', 511700, 10000023, '2', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000287, '雅安市', 511800, 10000023, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000288, '巴中市', 511900, 10000023, '2', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000289, '资阳市', 512000, 10000023, '2', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000290, '阿坝藏族羌族自治州', 513200, 10000023, '2', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000291, '甘孜藏族自治州', 513300, 10000023, '2', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000292, '凉山彝族自治州', 513400, 10000023, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000293, '贵阳市', 520100, 10000024, '2', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000294, '六盘水市', 520200, 10000024, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000295, '遵义市', 520300, 10000024, '2', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000296, '安顺市', 520400, 10000024, '2', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000297, '毕节市', 520500, 10000024, '2', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000298, '铜仁市', 520600, 10000024, '2', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000299, '黔西南布依族苗族自治州', 522300, 10000024, '2', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000300, '黔东南苗族侗族自治州', 522600, 10000024, '2', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000301, '黔南布依族苗族自治州', 522700, 10000024, '2', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000302, '昆明市', 530100, 10000025, '2', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000303, '曲靖市', 530300, 10000025, '2', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000304, '玉溪市', 530400, 10000025, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000305, '保山市', 530500, 10000025, '2', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000306, '昭通市', 530600, 10000025, '2', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000307, '丽江市', 530700, 10000025, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000308, '普洱市', 530800, 10000025, '2', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000309, '临沧市', 530900, 10000025, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000310, '楚雄彝族自治州', 532300, 10000025, '2', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000311, '红河哈尼族彝族自治州', 532500, 10000025, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000312, '文山壮族苗族自治州', 532600, 10000025, '2', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000313, '西双版纳傣族自治州', 532800, 10000025, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000314, '大理白族自治州', 532900, 10000025, '2', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000315, '德宏傣族景颇族自治州', 533100, 10000025, '2', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000316, '怒江傈僳族自治州', 533300, 10000025, '2', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000317, '迪庆藏族自治州', 533400, 10000025, '2', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000318, '拉萨市', 540100, 10000026, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000319, '日喀则市', 540200, 10000026, '2', 'R');
INSERT INTO `cmf_region_letter` VALUES (10000320, '昌都市', 540300, 10000026, '2', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000321, '林芝市', 540400, 10000026, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000322, '山南市', 540500, 10000026, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000323, '那曲市', 540600, 10000026, '2', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000324, '阿里地区', 542500, 10000026, '2', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000325, '西安市', 610100, 10000027, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000326, '铜川市', 610200, 10000027, '2', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000327, '宝鸡市', 610300, 10000027, '2', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000328, '咸阳市', 610400, 10000027, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000329, '渭南市', 610500, 10000027, '2', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000330, '延安市', 610600, 10000027, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000331, '汉中市', 610700, 10000027, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000332, '榆林市', 610800, 10000027, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000333, '安康市', 610900, 10000027, '2', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000334, '商洛市', 611000, 10000027, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000335, '兰州市', 620100, 10000028, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000336, '嘉峪关市', 620200, 10000028, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000337, '金昌市', 620300, 10000028, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000338, '白银市', 620400, 10000028, '2', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000339, '天水市', 620500, 10000028, '2', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000340, '武威市', 620600, 10000028, '2', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000341, '张掖市', 620700, 10000028, '2', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000342, '平凉市', 620800, 10000028, '2', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000343, '酒泉市', 620900, 10000028, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000344, '庆阳市', 621000, 10000028, '2', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000345, '定西市', 621100, 10000028, '2', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000346, '陇南市', 621200, 10000028, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000347, '临夏回族自治州', 622900, 10000028, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000348, '甘南藏族自治州', 623000, 10000028, '2', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000349, '西宁市', 630100, 10000029, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000350, '海东市', 630200, 10000029, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000351, '海北藏族自治州', 632200, 10000029, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000352, '黄南藏族自治州', 632300, 10000029, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000353, '海南藏族自治州', 632500, 10000029, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000354, '果洛藏族自治州', 632600, 10000029, '2', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000355, '玉树藏族自治州', 632700, 10000029, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000356, '海西蒙古族藏族自治州', 632800, 10000029, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000357, '银川市', 640100, 10000030, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000358, '石嘴山市', 640200, 10000030, '2', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000359, '吴忠市', 640300, 10000030, '2', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000360, '固原市', 640400, 10000030, '2', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000361, '中卫市', 640500, 10000030, '2', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000362, '乌鲁木齐市', 650100, 10000031, '2', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000363, '克拉玛依市', 650200, 10000031, '2', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000364, '吐鲁番市', 650400, 10000031, '2', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000365, '哈密市', 650500, 10000031, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000366, '昌吉回族自治州', 652300, 10000031, '2', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000367, '博尔塔拉蒙古自治州', 652700, 10000031, '2', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000368, '巴音郭楞蒙古自治州', 652800, 10000031, '2', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000369, '阿克苏地区', 652900, 10000031, '2', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000370, '克孜勒苏柯尔克孜自治州', 653000, 10000031, '2', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000371, '喀什地区', 653100, 10000031, '2', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000372, '和田地区', 653200, 10000031, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000373, '伊犁哈萨克自治州', 654000, 10000031, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000374, '塔城地区', 654200, 10000031, '2', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000375, '阿勒泰地区', 654300, 10000031, '2', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000376, '自治区直辖县级行政区划', 659000, 10000031, '2', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000377, '台北市', 710100, 10000032, '2', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000378, '高雄市', 710200, 10000032, '2', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000379, '台南市', 710300, 10000032, '2', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000380, '台中市', 710400, 10000032, '2', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000381, '金门县', 710500, 10000032, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000382, '南投县', 710600, 10000032, '2', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000383, '基隆市', 710700, 10000032, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000384, '新竹市', 710800, 10000032, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000385, '嘉义市', 710900, 10000032, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000386, '新北市', 711100, 10000032, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000387, '宜兰县', 711200, 10000032, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000388, '新竹县', 711300, 10000032, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000389, '桃园县', 711400, 10000032, '2', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000390, '苗栗县', 711500, 10000032, '2', 'M');
INSERT INTO `cmf_region_letter` VALUES (10000391, '彰化县', 711700, 10000032, '2', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000392, '嘉义县', 711900, 10000032, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000393, '云林县', 712100, 10000032, '2', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000394, '屏东县', 712400, 10000032, '2', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000395, '台东县', 712500, 10000032, '2', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000396, '花莲县', 712600, 10000032, '2', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000397, '澎湖县', 712700, 10000032, '2', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000398, '连江县', 712800, 10000032, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000399, '香港岛', 810100, 10000033, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000400, '九龙', 810200, 10000033, '2', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000401, '新界', 810300, 10000033, '2', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000402, '澳门半岛', 820100, 10000034, '2', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000403, '离岛', 820200, 10000034, '2', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000404, '东城区', 110101, 10000035, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000405, '西城区', 110102, 10000035, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000406, '朝阳区', 110105, 10000035, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000407, '丰台区', 110106, 10000035, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000408, '石景山区', 110107, 10000035, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000409, '海淀区', 110108, 10000035, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000410, '门头沟区', 110109, 10000035, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10000411, '房山区', 110111, 10000035, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000412, '通州区', 110112, 10000035, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000413, '顺义区', 110113, 10000035, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000414, '昌平区', 110114, 10000035, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000415, '大兴区', 110115, 10000035, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000416, '怀柔区', 110116, 10000035, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000417, '平谷区', 110117, 10000035, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000418, '密云区', 110118, 10000035, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10000419, '延庆区', 110119, 10000035, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000420, '和平区', 120101, 10000036, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000421, '河东区', 120102, 10000036, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000422, '河西区', 120103, 10000036, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000423, '南开区', 120104, 10000036, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000424, '河北区', 120105, 10000036, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000425, '红桥区', 120106, 10000036, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000426, '东丽区', 120110, 10000036, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000427, '西青区', 120111, 10000036, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000428, '津南区', 120112, 10000036, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000429, '北辰区', 120113, 10000036, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000430, '武清区', 120114, 10000036, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000431, '宝坻区', 120115, 10000036, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000432, '滨海新区', 120116, 10000036, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000433, '宁河区', 120117, 10000036, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000434, '静海区', 120118, 10000036, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000435, '蓟州区', 120119, 10000036, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000436, '长安区', 130102, 10000037, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000437, '桥西区', 130104, 10000037, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000438, '新华区', 130105, 10000037, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000439, '井陉矿区', 130107, 10000037, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000440, '裕华区', 130108, 10000037, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000441, '藁城区', 130109, 10000037, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000442, '鹿泉区', 130110, 10000037, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000443, '栾城区', 130111, 10000037, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000444, '井陉县', 130121, 10000037, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000445, '正定县', 130123, 10000037, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000446, '行唐县', 130125, 10000037, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000447, '灵寿县', 130126, 10000037, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000448, '高邑县', 130127, 10000037, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000449, '深泽县', 130128, 10000037, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000450, '赞皇县', 130129, 10000037, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000451, '无极县', 130130, 10000037, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000452, '平山县', 130131, 10000037, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000453, '元氏县', 130132, 10000037, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000454, '赵县', 130133, 10000037, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000455, '辛集市', 130181, 10000037, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000456, '晋州市', 130183, 10000037, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000457, '新乐市', 130184, 10000037, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000458, '路南区', 130202, 10000038, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000459, '路北区', 130203, 10000038, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000460, '古冶区', 130204, 10000038, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000461, '开平区', 130205, 10000038, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000462, '丰南区', 130207, 10000038, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000463, '丰润区', 130208, 10000038, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000464, '曹妃甸区', 130209, 10000038, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000465, '滦南县', 130224, 10000038, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000466, '乐亭县', 130225, 10000038, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000467, '迁西县', 130227, 10000038, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000468, '玉田县', 130229, 10000038, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000469, '遵化市', 130281, 10000038, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000470, '迁安市', 130283, 10000038, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000471, '滦州市', 130284, 10000038, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000472, '海港区', 130302, 10000039, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000473, '山海关区', 130303, 10000039, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000474, '北戴河区', 130304, 10000039, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000475, '抚宁区', 130306, 10000039, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000476, '青龙满族自治县', 130321, 10000039, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000477, '昌黎县', 130322, 10000039, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000478, '卢龙县', 130324, 10000039, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000479, '经济技术开发区', 130390, 10000039, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000480, '邯山区', 130402, 10000040, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000481, '丛台区', 130403, 10000040, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000482, '复兴区', 130404, 10000040, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000483, '峰峰矿区', 130406, 10000040, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000484, '肥乡区', 130407, 10000040, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000485, '永年区', 130408, 10000040, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000486, '临漳县', 130423, 10000040, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000487, '成安县', 130424, 10000040, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000488, '大名县', 130425, 10000040, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000489, '涉县', 130426, 10000040, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000490, '磁县', 130427, 10000040, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000491, '邱县', 130430, 10000040, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000492, '鸡泽县', 130431, 10000040, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000493, '广平县', 130432, 10000040, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000494, '馆陶县', 130433, 10000040, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000495, '魏县', 130434, 10000040, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000496, '曲周县', 130435, 10000040, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000497, '武安市', 130481, 10000040, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000498, '桥东区', 130502, 10000041, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000499, '桥西区', 130503, 10000041, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000500, '邢台县', 130521, 10000041, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000501, '临城县', 130522, 10000041, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000502, '内丘县', 130523, 10000041, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000503, '柏乡县', 130524, 10000041, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000504, '隆尧县', 130525, 10000041, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000505, '任县', 130526, 10000041, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10000506, '南和县', 130527, 10000041, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000507, '宁晋县', 130528, 10000041, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000508, '巨鹿县', 130529, 10000041, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000509, '新河县', 130530, 10000041, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000510, '广宗县', 130531, 10000041, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000511, '平乡县', 130532, 10000041, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000512, '威县', 130533, 10000041, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000513, '清河县', 130534, 10000041, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000514, '临西县', 130535, 10000041, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000515, '南宫市', 130581, 10000041, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000516, '沙河市', 130582, 10000041, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000517, '竞秀区', 130602, 10000042, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000518, '莲池区', 130606, 10000042, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000519, '满城区', 130607, 10000042, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10000520, '清苑区', 130608, 10000042, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000521, '徐水区', 130609, 10000042, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000522, '涞水县', 130623, 10000042, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000523, '阜平县', 130624, 10000042, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000524, '定兴县', 130626, 10000042, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000525, '唐县', 130627, 10000042, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000526, '高阳县', 130628, 10000042, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000527, '容城县', 130629, 10000042, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10000528, '涞源县', 130630, 10000042, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000529, '望都县', 130631, 10000042, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000530, '安新县', 130632, 10000042, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000531, '易县', 130633, 10000042, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000532, '曲阳县', 130634, 10000042, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000533, '蠡县', 130635, 10000042, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000534, '顺平县', 130636, 10000042, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000535, '博野县', 130637, 10000042, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000536, '雄县', 130638, 10000042, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000537, '涿州市', 130681, 10000042, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000538, '定州市', 130682, 10000042, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000539, '安国市', 130683, 10000042, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000540, '高碑店市', 130684, 10000042, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000541, '桥东区', 130702, 10000043, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000542, '桥西区', 130703, 10000043, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000543, '宣化区', 130705, 10000043, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000544, '下花园区', 130706, 10000043, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000545, '万全区', 130708, 10000043, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000546, '崇礼区', 130709, 10000043, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000547, '张北县', 130722, 10000043, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000548, '康保县', 130723, 10000043, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000549, '沽源县', 130724, 10000043, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000550, '尚义县', 130725, 10000043, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000551, '蔚县', 130726, 10000043, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000552, '阳原县', 130727, 10000043, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000553, '怀安县', 130728, 10000043, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000554, '怀来县', 130730, 10000043, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000555, '涿鹿县', 130731, 10000043, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000556, '赤城县', 130732, 10000043, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000557, '双桥区', 130802, 10000044, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000558, '双滦区', 130803, 10000044, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000559, '鹰手营子矿区', 130804, 10000044, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000560, '承德县', 130821, 10000044, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000561, '兴隆县', 130822, 10000044, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000562, '滦平县', 130824, 10000044, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000563, '隆化县', 130825, 10000044, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000564, '丰宁满族自治县', 130826, 10000044, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000565, '宽城满族自治县', 130827, 10000044, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000566, '围场满族蒙古族自治县', 130828, 10000044, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000567, '平泉市', 130881, 10000044, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000568, '新华区', 130902, 10000045, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000569, '运河区', 130903, 10000045, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000570, '沧县', 130921, 10000045, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000571, '青县', 130922, 10000045, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000572, '东光县', 130923, 10000045, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000573, '海兴县', 130924, 10000045, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000574, '盐山县', 130925, 10000045, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000575, '肃宁县', 130926, 10000045, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000576, '南皮县', 130927, 10000045, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000577, '吴桥县', 130928, 10000045, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000578, '献县', 130929, 10000045, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000579, '孟村回族自治县', 130930, 10000045, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10000580, '泊头市', 130981, 10000045, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000581, '任丘市', 130982, 10000045, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10000582, '黄骅市', 130983, 10000045, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000583, '河间市', 130984, 10000045, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000584, '安次区', 131002, 10000046, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000585, '广阳区', 131003, 10000046, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000586, '固安县', 131022, 10000046, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000587, '永清县', 131023, 10000046, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000588, '香河县', 131024, 10000046, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000589, '大城县', 131025, 10000046, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000590, '文安县', 131026, 10000046, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000591, '大厂回族自治县', 131028, 10000046, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000592, '霸州市', 131081, 10000046, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000593, '三河市', 131082, 10000046, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000594, '开发区', 131090, 10000046, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000595, '桃城区', 131102, 10000047, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000596, '冀州区', 131103, 10000047, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000597, '枣强县', 131121, 10000047, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000598, '武邑县', 131122, 10000047, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000599, '武强县', 131123, 10000047, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000600, '饶阳县', 131124, 10000047, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10000601, '安平县', 131125, 10000047, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000602, '故城县', 131126, 10000047, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000603, '景县', 131127, 10000047, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000604, '阜城县', 131128, 10000047, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000605, '深州市', 131182, 10000047, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000606, '小店区', 140105, 10000048, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000607, '迎泽区', 140106, 10000048, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000608, '杏花岭区', 140107, 10000048, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000609, '尖草坪区', 140108, 10000048, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000610, '万柏林区', 140109, 10000048, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000611, '晋源区', 140110, 10000048, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000612, '清徐县', 140121, 10000048, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000613, '阳曲县', 140122, 10000048, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000614, '娄烦县', 140123, 10000048, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000615, '古交市', 140181, 10000048, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000616, '新荣区', 140212, 10000049, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000617, '平城区', 140213, 10000049, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000618, '云冈区', 140214, 10000049, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000619, '云州区', 140215, 10000049, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000620, '阳高县', 140221, 10000049, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000621, '天镇县', 140222, 10000049, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000622, '广灵县', 140223, 10000049, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000623, '灵丘县', 140224, 10000049, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000624, '浑源县', 140225, 10000049, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000625, '左云县', 140226, 10000049, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000626, '城区', 140302, 10000050, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000627, '矿区', 140303, 10000050, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000628, '郊区', 140311, 10000050, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000629, '平定县', 140321, 10000050, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000630, '盂县', 140322, 10000050, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000631, '潞州区', 140403, 10000051, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000632, '上党区', 140404, 10000051, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000633, '屯留区', 140405, 10000051, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000634, '潞城区', 140406, 10000051, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000635, '襄垣县', 140423, 10000051, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000636, '平顺县', 140425, 10000051, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000637, '黎城县', 140426, 10000051, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000638, '壶关县', 140427, 10000051, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000639, '长子县', 140428, 10000051, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000640, '武乡县', 140429, 10000051, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000641, '沁县', 140430, 10000051, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000642, '沁源县', 140431, 10000051, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000643, '城区', 140502, 10000052, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000644, '沁水县', 140521, 10000052, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000645, '阳城县', 140522, 10000052, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000646, '陵川县', 140524, 10000052, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000647, '泽州县', 140525, 10000052, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000648, '高平市', 140581, 10000052, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000649, '朔城区', 140602, 10000053, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000650, '平鲁区', 140603, 10000053, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000651, '山阴县', 140621, 10000053, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000652, '应县', 140622, 10000053, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000653, '右玉县', 140623, 10000053, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000654, '怀仁市', 140681, 10000053, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000655, '榆次区', 140702, 10000054, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000656, '榆社县', 140721, 10000054, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000657, '左权县', 140722, 10000054, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000658, '和顺县', 140723, 10000054, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000659, '昔阳县', 140724, 10000054, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000660, '寿阳县', 140725, 10000054, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000661, '太谷县', 140726, 10000054, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000662, '祁县', 140727, 10000054, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000663, '平遥县', 140728, 10000054, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000664, '灵石县', 140729, 10000054, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000665, '介休市', 140781, 10000054, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000666, '盐湖区', 140802, 10000055, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000667, '临猗县', 140821, 10000055, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000668, '万荣县', 140822, 10000055, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000669, '闻喜县', 140823, 10000055, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000670, '稷山县', 140824, 10000055, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000671, '新绛县', 140825, 10000055, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000672, '绛县', 140826, 10000055, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000673, '垣曲县', 140827, 10000055, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000674, '夏县', 140828, 10000055, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000675, '平陆县', 140829, 10000055, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000676, '芮城县', 140830, 10000055, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10000677, '永济市', 140881, 10000055, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000678, '河津市', 140882, 10000055, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000679, '忻府区', 140902, 10000056, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000680, '定襄县', 140921, 10000056, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000681, '五台县', 140922, 10000056, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000682, '代县', 140923, 10000056, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000683, '繁峙县', 140924, 10000056, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000684, '宁武县', 140925, 10000056, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000685, '静乐县', 140926, 10000056, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000686, '神池县', 140927, 10000056, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000687, '五寨县', 140928, 10000056, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000688, '岢岚县', 140929, 10000056, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000689, '河曲县', 140930, 10000056, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000690, '保德县', 140931, 10000056, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000691, '偏关县', 140932, 10000056, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000692, '原平市', 140981, 10000056, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000693, '尧都区', 141002, 10000057, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000694, '曲沃县', 141021, 10000057, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000695, '翼城县', 141022, 10000057, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000696, '襄汾县', 141023, 10000057, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000697, '洪洞县', 141024, 10000057, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000698, '古县', 141025, 10000057, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000699, '安泽县', 141026, 10000057, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000700, '浮山县', 141027, 10000057, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000701, '吉县', 141028, 10000057, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000702, '乡宁县', 141029, 10000057, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000703, '大宁县', 141030, 10000057, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000704, '隰县', 141031, 10000057, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000705, '永和县', 141032, 10000057, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000706, '蒲县', 141033, 10000057, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000707, '汾西县', 141034, 10000057, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000708, '侯马市', 141081, 10000057, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000709, '霍州市', 141082, 10000057, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000710, '离石区', 141102, 10000058, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000711, '文水县', 141121, 10000058, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000712, '交城县', 141122, 10000058, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000713, '兴县', 141123, 10000058, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000714, '临县', 141124, 10000058, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000715, '柳林县', 141125, 10000058, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000716, '石楼县', 141126, 10000058, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000717, '岚县', 141127, 10000058, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000718, '方山县', 141128, 10000058, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000719, '中阳县', 141129, 10000058, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000720, '交口县', 141130, 10000058, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000721, '孝义市', 141181, 10000058, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000722, '汾阳市', 141182, 10000058, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000723, '新城区', 150102, 10000059, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000724, '回民区', 150103, 10000059, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000725, '玉泉区', 150104, 10000059, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000726, '赛罕区', 150105, 10000059, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000727, '土默特左旗', 150121, 10000059, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000728, '托克托县', 150122, 10000059, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000729, '和林格尔县', 150123, 10000059, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000730, '清水河县', 150124, 10000059, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000731, '武川县', 150125, 10000059, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000732, '东河区', 150202, 10000060, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000733, '昆都仑区', 150203, 10000060, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000734, '青山区', 150204, 10000060, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000735, '石拐区', 150205, 10000060, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000736, '白云鄂博矿区', 150206, 10000060, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000737, '九原区', 150207, 10000060, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000738, '土默特右旗', 150221, 10000060, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000739, '固阳县', 150222, 10000060, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000740, '达尔罕茂明安联合旗', 150223, 10000060, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000741, '海勃湾区', 150302, 10000061, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000742, '海南区', 150303, 10000061, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000743, '乌达区', 150304, 10000061, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000744, '红山区', 150402, 10000062, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000745, '元宝山区', 150403, 10000062, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000746, '松山区', 150404, 10000062, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000747, '阿鲁科尔沁旗', 150421, 10000062, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000748, '巴林左旗', 150422, 10000062, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000749, '巴林右旗', 150423, 10000062, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000750, '林西县', 150424, 10000062, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000751, '克什克腾旗', 150425, 10000062, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000752, '翁牛特旗', 150426, 10000062, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000753, '喀喇沁旗', 150428, 10000062, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000754, '宁城县', 150429, 10000062, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000755, '敖汉旗', 150430, 10000062, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000756, '科尔沁区', 150502, 10000063, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000757, '科尔沁左翼中旗', 150521, 10000063, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000758, '科尔沁左翼后旗', 150522, 10000063, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000759, '开鲁县', 150523, 10000063, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000760, '库伦旗', 150524, 10000063, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000761, '奈曼旗', 150525, 10000063, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000762, '扎鲁特旗', 150526, 10000063, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000763, '霍林郭勒市', 150581, 10000063, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000764, '东胜区', 150602, 10000064, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000765, '康巴什区', 150603, 10000064, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000766, '达拉特旗', 150621, 10000064, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000767, '准格尔旗', 150622, 10000064, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000768, '鄂托克前旗', 150623, 10000064, '3', 'E');
INSERT INTO `cmf_region_letter` VALUES (10000769, '鄂托克旗', 150624, 10000064, '3', 'E');
INSERT INTO `cmf_region_letter` VALUES (10000770, '杭锦旗', 150625, 10000064, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000771, '乌审旗', 150626, 10000064, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000772, '伊金霍洛旗', 150627, 10000064, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000773, '海拉尔区', 150702, 10000065, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000774, '扎赉诺尔区', 150703, 10000065, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000775, '阿荣旗', 150721, 10000065, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000776, '莫力达瓦达斡尔族自治旗', 150722, 10000065, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10000777, '鄂伦春自治旗', 150723, 10000065, '3', 'E');
INSERT INTO `cmf_region_letter` VALUES (10000778, '鄂温克族自治旗', 150724, 10000065, '3', 'E');
INSERT INTO `cmf_region_letter` VALUES (10000779, '陈巴尔虎旗', 150725, 10000065, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000780, '新巴尔虎左旗', 150726, 10000065, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000781, '新巴尔虎右旗', 150727, 10000065, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000782, '满洲里市', 150781, 10000065, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10000783, '牙克石市', 150782, 10000065, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000784, '扎兰屯市', 150783, 10000065, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000785, '额尔古纳市', 150784, 10000065, '3', 'E');
INSERT INTO `cmf_region_letter` VALUES (10000786, '根河市', 150785, 10000065, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000787, '临河区', 150802, 10000066, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000788, '五原县', 150821, 10000066, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000789, '磴口县', 150822, 10000066, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000790, '乌拉特前旗', 150823, 10000066, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000791, '乌拉特中旗', 150824, 10000066, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000792, '乌拉特后旗', 150825, 10000066, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000793, '杭锦后旗', 150826, 10000066, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000794, '集宁区', 150902, 10000067, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000795, '卓资县', 150921, 10000067, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000796, '化德县', 150922, 10000067, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000797, '商都县', 150923, 10000067, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000798, '兴和县', 150924, 10000067, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000799, '凉城县', 150925, 10000067, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000800, '察哈尔右翼前旗', 150926, 10000067, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000801, '察哈尔右翼中旗', 150927, 10000067, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000802, '察哈尔右翼后旗', 150928, 10000067, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000803, '四子王旗', 150929, 10000067, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000804, '丰镇市', 150981, 10000067, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000805, '乌兰浩特市', 152201, 10000068, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000806, '阿尔山市', 152202, 10000068, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000807, '科尔沁右翼前旗', 152221, 10000068, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000808, '科尔沁右翼中旗', 152222, 10000068, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000809, '扎赉特旗', 152223, 10000068, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000810, '突泉县', 152224, 10000068, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000811, '二连浩特市', 152501, 10000069, '3', 'E');
INSERT INTO `cmf_region_letter` VALUES (10000812, '锡林浩特市', 152502, 10000069, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000813, '阿巴嘎旗', 152522, 10000069, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000814, '苏尼特左旗', 152523, 10000069, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000815, '苏尼特右旗', 152524, 10000069, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000816, '东乌珠穆沁旗', 152525, 10000069, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000817, '西乌珠穆沁旗', 152526, 10000069, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000818, '太仆寺旗', 152527, 10000069, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000819, '镶黄旗', 152528, 10000069, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000820, '正镶白旗', 152529, 10000069, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000821, '正蓝旗', 152530, 10000069, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000822, '多伦县', 152531, 10000069, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000823, '阿拉善左旗', 152921, 10000070, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000824, '阿拉善右旗', 152922, 10000070, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000825, '额济纳旗', 152923, 10000070, '3', 'E');
INSERT INTO `cmf_region_letter` VALUES (10000826, '和平区', 210102, 10000071, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000827, '沈河区', 210103, 10000071, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000828, '大东区', 210104, 10000071, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000829, '皇姑区', 210105, 10000071, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000830, '铁西区', 210106, 10000071, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000831, '苏家屯区', 210111, 10000071, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000832, '浑南区', 210112, 10000071, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000833, '沈北新区', 210113, 10000071, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000834, '于洪区', 210114, 10000071, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000835, '辽中区', 210115, 10000071, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000836, '康平县', 210123, 10000071, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000837, '法库县', 210124, 10000071, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000838, '新民市', 210181, 10000071, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000839, '经济技术开发区', 210190, 10000071, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000840, '中山区', 210202, 10000072, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000841, '西岗区', 210203, 10000072, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000842, '沙河口区', 210204, 10000072, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000843, '甘井子区', 210211, 10000072, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000844, '旅顺口区', 210212, 10000072, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000845, '金州区', 210213, 10000072, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000846, '普兰店区', 210214, 10000072, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000847, '长海县', 210224, 10000072, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000848, '瓦房店市', 210281, 10000072, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000849, '庄河市', 210283, 10000072, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000850, '铁东区', 210302, 10000073, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000851, '铁西区', 210303, 10000073, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000852, '立山区', 210304, 10000073, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000853, '千山区', 210311, 10000073, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000854, '台安县', 210321, 10000073, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000855, '岫岩满族自治县', 210323, 10000073, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000856, '海城市', 210381, 10000073, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000857, '高新区', 210390, 10000073, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000858, '新抚区', 210402, 10000074, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000859, '东洲区', 210403, 10000074, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000860, '望花区', 210404, 10000074, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000861, '顺城区', 210411, 10000074, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000862, '抚顺县', 210421, 10000074, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000863, '新宾满族自治县', 210422, 10000074, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000864, '清原满族自治县', 210423, 10000074, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000865, '平山区', 210502, 10000075, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000866, '溪湖区', 210503, 10000075, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000867, '明山区', 210504, 10000075, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10000868, '南芬区', 210505, 10000075, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000869, '本溪满族自治县', 210521, 10000075, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000870, '桓仁满族自治县', 210522, 10000075, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000871, '元宝区', 210602, 10000076, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000872, '振兴区', 210603, 10000076, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000873, '振安区', 210604, 10000076, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000874, '宽甸满族自治县', 210624, 10000076, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000875, '东港市', 210681, 10000076, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000876, '凤城市', 210682, 10000076, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000877, '古塔区', 210702, 10000077, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000878, '凌河区', 210703, 10000077, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000879, '太和区', 210711, 10000077, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000880, '黑山县', 210726, 10000077, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000881, '义县', 210727, 10000077, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000882, '凌海市', 210781, 10000077, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000883, '北镇市', 210782, 10000077, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000884, '经济技术开发区', 210793, 10000077, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000885, '站前区', 210802, 10000078, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000886, '西市区', 210803, 10000078, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000887, '鲅鱼圈区', 210804, 10000078, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000888, '老边区', 210811, 10000078, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000889, '盖州市', 210881, 10000078, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000890, '大石桥市', 210882, 10000078, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000891, '海州区', 210902, 10000079, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000892, '新邱区', 210903, 10000079, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000893, '太平区', 210904, 10000079, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000894, '清河门区', 210905, 10000079, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000895, '细河区', 210911, 10000079, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000896, '阜新蒙古族自治县', 210921, 10000079, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000897, '彰武县', 210922, 10000079, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000898, '白塔区', 211002, 10000080, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000899, '文圣区', 211003, 10000080, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000900, '宏伟区', 211004, 10000080, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000901, '弓长岭区', 211005, 10000080, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000902, '太子河区', 211011, 10000080, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000903, '辽阳县', 211021, 10000080, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000904, '灯塔市', 211081, 10000080, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000905, '双台子区', 211102, 10000081, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000906, '兴隆台区', 211103, 10000081, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000907, '大洼区', 211104, 10000081, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000908, '盘山县', 211122, 10000081, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000909, '银州区', 211202, 10000082, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000910, '清河区', 211204, 10000082, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000911, '铁岭县', 211221, 10000082, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000912, '西丰县', 211223, 10000082, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000913, '昌图县', 211224, 10000082, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000914, '调兵山市', 211281, 10000082, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000915, '开原市', 211282, 10000082, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000916, '双塔区', 211302, 10000083, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000917, '龙城区', 211303, 10000083, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000918, '朝阳县', 211321, 10000083, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000919, '建平县', 211322, 10000083, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000920, '喀喇沁左翼蒙古族自治县', 211324, 10000083, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000921, '北票市', 211381, 10000083, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10000922, '凌源市', 211382, 10000083, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000923, '连山区', 211402, 10000084, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000924, '龙港区', 211403, 10000084, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000925, '南票区', 211404, 10000084, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000926, '绥中县', 211421, 10000084, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000927, '建昌县', 211422, 10000084, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000928, '兴城市', 211481, 10000084, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000929, '南关区', 220102, 10000085, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000930, '宽城区', 220103, 10000085, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10000931, '朝阳区', 220104, 10000085, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000932, '二道区', 220105, 10000085, '3', 'E');
INSERT INTO `cmf_region_letter` VALUES (10000933, '绿园区', 220106, 10000085, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000934, '双阳区', 220112, 10000085, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000935, '九台区', 220113, 10000085, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000936, '农安县', 220122, 10000085, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000937, '榆树市', 220182, 10000085, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000938, '德惠市', 220183, 10000085, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000939, '经济技术开发区', 220192, 10000085, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000940, '昌邑区', 220202, 10000086, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000941, '龙潭区', 220203, 10000086, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000942, '船营区', 220204, 10000086, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000943, '丰满区', 220211, 10000086, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000944, '永吉县', 220221, 10000086, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000945, '蛟河市', 220281, 10000086, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000946, '桦甸市', 220282, 10000086, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000947, '舒兰市', 220283, 10000086, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000948, '磐石市', 220284, 10000086, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000949, '铁西区', 220302, 10000087, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000950, '铁东区', 220303, 10000087, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000951, '梨树县', 220322, 10000087, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000952, '伊通满族自治县', 220323, 10000087, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000953, '公主岭市', 220381, 10000087, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10000954, '双辽市', 220382, 10000087, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000955, '龙山区', 220402, 10000088, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000956, '西安区', 220403, 10000088, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000957, '东丰县', 220421, 10000088, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000958, '东辽县', 220422, 10000088, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000959, '东昌区', 220502, 10000089, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000960, '二道江区', 220503, 10000089, '3', 'E');
INSERT INTO `cmf_region_letter` VALUES (10000961, '通化县', 220521, 10000089, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000962, '辉南县', 220523, 10000089, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000963, '柳河县', 220524, 10000089, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000964, '梅河口市', 220581, 10000089, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10000965, '集安市', 220582, 10000089, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000966, '浑江区', 220602, 10000090, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000967, '江源区', 220605, 10000090, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000968, '抚松县', 220621, 10000090, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000969, '靖宇县', 220622, 10000090, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10000970, '长白朝鲜族自治县', 220623, 10000090, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000971, '临江市', 220681, 10000090, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000972, '宁江区', 220702, 10000091, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000973, '前郭尔罗斯蒙古族自治县', 220721, 10000091, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000974, '长岭县', 220722, 10000091, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10000975, '乾安县', 220723, 10000091, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10000976, '扶余市', 220781, 10000091, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10000977, '洮北区', 220802, 10000092, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000978, '镇赉县', 220821, 10000092, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10000979, '通榆县', 220822, 10000092, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000980, '洮南市', 220881, 10000092, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000981, '大安市', 220882, 10000092, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000982, '延吉市', 222401, 10000093, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10000983, '图们市', 222402, 10000093, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10000984, '敦化市', 222403, 10000093, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000985, '珲春市', 222404, 10000093, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000986, '龙井市', 222405, 10000093, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10000987, '和龙市', 222406, 10000093, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000988, '汪清县', 222424, 10000093, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10000989, '安图县', 222426, 10000093, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000990, '道里区', 230102, 10000094, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000991, '南岗区', 230103, 10000094, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10000992, '道外区', 230104, 10000094, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10000993, '平房区', 230108, 10000094, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10000994, '松北区', 230109, 10000094, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000995, '香坊区', 230110, 10000094, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10000996, '呼兰区', 230111, 10000094, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10000997, '阿城区', 230112, 10000094, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10000998, '双城区', 230113, 10000094, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10000999, '依兰县', 230123, 10000094, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001000, '方正县', 230124, 10000094, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001001, '宾县', 230125, 10000094, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001002, '巴彦县', 230126, 10000094, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001003, '木兰县', 230127, 10000094, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001004, '通河县', 230128, 10000094, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001005, '延寿县', 230129, 10000094, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001006, '尚志市', 230183, 10000094, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001007, '五常市', 230184, 10000094, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001008, '龙沙区', 230202, 10000095, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001009, '建华区', 230203, 10000095, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001010, '铁锋区', 230204, 10000095, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001011, '昂昂溪区', 230205, 10000095, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10001012, '富拉尔基区', 230206, 10000095, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001013, '碾子山区', 230207, 10000095, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001014, '梅里斯达斡尔族区', 230208, 10000095, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001015, '龙江县', 230221, 10000095, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001016, '依安县', 230223, 10000095, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001017, '泰来县', 230224, 10000095, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001018, '甘南县', 230225, 10000095, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001019, '富裕县', 230227, 10000095, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001020, '克山县', 230229, 10000095, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10001021, '克东县', 230230, 10000095, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10001022, '拜泉县', 230231, 10000095, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001023, '讷河市', 230281, 10000095, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001024, '鸡冠区', 230302, 10000096, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001025, '恒山区', 230303, 10000096, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001026, '滴道区', 230304, 10000096, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001027, '梨树区', 230305, 10000096, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001028, '城子河区', 230306, 10000096, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001029, '麻山区', 230307, 10000096, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001030, '鸡东县', 230321, 10000096, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001031, '虎林市', 230381, 10000096, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001032, '密山市', 230382, 10000096, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001033, '向阳区', 230402, 10000097, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001034, '工农区', 230403, 10000097, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001035, '南山区', 230404, 10000097, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001036, '兴安区', 230405, 10000097, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001037, '东山区', 230406, 10000097, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001038, '兴山区', 230407, 10000097, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001039, '萝北县', 230421, 10000097, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001040, '绥滨县', 230422, 10000097, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001041, '尖山区', 230502, 10000098, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001042, '岭东区', 230503, 10000098, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001043, '四方台区', 230505, 10000098, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001044, '宝山区', 230506, 10000098, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001045, '集贤县', 230521, 10000098, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001046, '友谊县', 230522, 10000098, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001047, '宝清县', 230523, 10000098, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001048, '饶河县', 230524, 10000098, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10001049, '萨尔图区', 230602, 10000099, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001050, '龙凤区', 230603, 10000099, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001051, '让胡路区', 230604, 10000099, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10001052, '红岗区', 230605, 10000099, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001053, '大同区', 230606, 10000099, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001054, '肇州县', 230621, 10000099, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001055, '肇源县', 230622, 10000099, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001056, '林甸县', 230623, 10000099, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001057, '杜尔伯特蒙古族自治县', 230624, 10000099, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001058, '伊春区', 230702, 10000100, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001059, '南岔区', 230703, 10000100, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001060, '友好区', 230704, 10000100, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001061, '西林区', 230705, 10000100, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001062, '翠峦区', 230706, 10000100, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001063, '新青区', 230707, 10000100, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001064, '美溪区', 230708, 10000100, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001065, '金山屯区', 230709, 10000100, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001066, '五营区', 230710, 10000100, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001067, '乌马河区', 230711, 10000100, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001068, '汤旺河区', 230712, 10000100, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001069, '带岭区', 230713, 10000100, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001070, '乌伊岭区', 230714, 10000100, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001071, '红星区', 230715, 10000100, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001072, '上甘岭区', 230716, 10000100, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001073, '嘉荫县', 230722, 10000100, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001074, '铁力市', 230781, 10000100, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001075, '向阳区', 230803, 10000101, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001076, '前进区', 230804, 10000101, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001077, '东风区', 230805, 10000101, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001078, '郊区', 230811, 10000101, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001079, '桦南县', 230822, 10000101, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001080, '桦川县', 230826, 10000101, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001081, '汤原县', 230828, 10000101, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001082, '同江市', 230881, 10000101, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001083, '富锦市', 230882, 10000101, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001084, '抚远市', 230883, 10000101, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001085, '新兴区', 230902, 10000102, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001086, '桃山区', 230903, 10000102, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001087, '茄子河区', 230904, 10000102, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001088, '勃利县', 230921, 10000102, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001089, '东安区', 231002, 10000103, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001090, '阳明区', 231003, 10000103, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001091, '爱民区', 231004, 10000103, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10001092, '西安区', 231005, 10000103, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001093, '林口县', 231025, 10000103, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001094, '绥芬河市', 231081, 10000103, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001095, '海林市', 231083, 10000103, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001096, '宁安市', 231084, 10000103, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001097, '穆棱市', 231085, 10000103, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001098, '东宁市', 231086, 10000103, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001099, '爱辉区', 231102, 10000104, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10001100, '嫩江县', 231121, 10000104, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001101, '逊克县', 231123, 10000104, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001102, '孙吴县', 231124, 10000104, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001103, '北安市', 231181, 10000104, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001104, '五大连池市', 231182, 10000104, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001105, '北林区', 231202, 10000105, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001106, '望奎县', 231221, 10000105, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001107, '兰西县', 231222, 10000105, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001108, '青冈县', 231223, 10000105, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001109, '庆安县', 231224, 10000105, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001110, '明水县', 231225, 10000105, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001111, '绥棱县', 231226, 10000105, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001112, '安达市', 231281, 10000105, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10001113, '肇东市', 231282, 10000105, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001114, '海伦市', 231283, 10000105, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001115, '漠河市', 232701, 10000106, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001116, '呼玛县', 232721, 10000106, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001117, '塔河县', 232722, 10000106, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001118, '松岭区', 232790, 10000106, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001119, '呼中区', 232791, 10000106, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001120, '加格达奇区', 232792, 10000106, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001121, '新林区', 232793, 10000106, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001122, '黄浦区', 310101, 10000107, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001123, '徐汇区', 310104, 10000107, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001124, '长宁区', 310105, 10000107, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001125, '静安区', 310106, 10000107, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001126, '普陀区', 310107, 10000107, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10001127, '虹口区', 310109, 10000107, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001128, '杨浦区', 310110, 10000107, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001129, '闵行区', 310112, 10000107, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001130, '宝山区', 310113, 10000107, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001131, '嘉定区', 310114, 10000107, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001132, '浦东新区', 310115, 10000107, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10001133, '金山区', 310116, 10000107, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001134, '松江区', 310117, 10000107, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001135, '青浦区', 310118, 10000107, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001136, '奉贤区', 310120, 10000107, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001137, '崇明区', 310151, 10000107, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001138, '玄武区', 320102, 10000108, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001139, '秦淮区', 320104, 10000108, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001140, '建邺区', 320105, 10000108, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001141, '鼓楼区', 320106, 10000108, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001142, '浦口区', 320111, 10000108, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10001143, '栖霞区', 320113, 10000108, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001144, '雨花台区', 320114, 10000108, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001145, '江宁区', 320115, 10000108, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001146, '六合区', 320116, 10000108, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001147, '溧水区', 320117, 10000108, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001148, '高淳区', 320118, 10000108, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001149, '锡山区', 320205, 10000109, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001150, '惠山区', 320206, 10000109, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001151, '滨湖区', 320211, 10000109, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001152, '梁溪区', 320213, 10000109, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001153, '新吴区', 320214, 10000109, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001154, '江阴市', 320281, 10000109, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001155, '宜兴市', 320282, 10000109, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001156, '鼓楼区', 320302, 10000110, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001157, '云龙区', 320303, 10000110, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001158, '贾汪区', 320305, 10000110, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001159, '泉山区', 320311, 10000110, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001160, '铜山区', 320312, 10000110, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001161, '丰县', 320321, 10000110, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001162, '沛县', 320322, 10000110, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10001163, '睢宁县', 320324, 10000110, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001164, '新沂市', 320381, 10000110, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001165, '邳州市', 320382, 10000110, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10001166, '工业园区', 320391, 10000110, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001167, '天宁区', 320402, 10000111, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001168, '钟楼区', 320404, 10000111, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001169, '新北区', 320411, 10000111, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001170, '武进区', 320412, 10000111, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001171, '金坛区', 320413, 10000111, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001172, '溧阳市', 320481, 10000111, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001173, '虎丘区', 320505, 10000112, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001174, '吴中区', 320506, 10000112, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001175, '相城区', 320507, 10000112, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001176, '姑苏区', 320508, 10000112, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001177, '吴江区', 320509, 10000112, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001178, '常熟市', 320581, 10000112, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001179, '张家港市', 320582, 10000112, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001180, '昆山市', 320583, 10000112, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10001181, '太仓市', 320585, 10000112, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001182, '工业园区', 320590, 10000112, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001183, '高新区', 320591, 10000112, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001184, '崇川区', 320602, 10000113, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001185, '港闸区', 320611, 10000113, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001186, '通州区', 320612, 10000113, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001187, '如东县', 320623, 10000113, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10001188, '启东市', 320681, 10000113, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001189, '如皋市', 320682, 10000113, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10001190, '海门市', 320684, 10000113, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001191, '海安市', 320685, 10000113, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001192, '高新区', 320691, 10000113, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001193, '连云区', 320703, 10000114, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001194, '海州区', 320706, 10000114, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001195, '赣榆区', 320707, 10000114, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001196, '东海县', 320722, 10000114, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001197, '灌云县', 320723, 10000114, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001198, '灌南县', 320724, 10000114, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001199, '淮安区', 320803, 10000115, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001200, '淮阴区', 320804, 10000115, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001201, '清江浦区', 320812, 10000115, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001202, '洪泽区', 320813, 10000115, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001203, '涟水县', 320826, 10000115, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001204, '盱眙县', 320830, 10000115, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001205, '金湖县', 320831, 10000115, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001206, '经济开发区', 320890, 10000115, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001207, '亭湖区', 320902, 10000116, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001208, '盐都区', 320903, 10000116, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001209, '大丰区', 320904, 10000116, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001210, '响水县', 320921, 10000116, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001211, '滨海县', 320922, 10000116, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001212, '阜宁县', 320923, 10000116, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001213, '射阳县', 320924, 10000116, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001214, '建湖县', 320925, 10000116, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001215, '东台市', 320981, 10000116, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001216, '广陵区', 321002, 10000117, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001217, '邗江区', 321003, 10000117, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001218, '江都区', 321012, 10000117, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001219, '宝应县', 321023, 10000117, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001220, '仪征市', 321081, 10000117, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001221, '高邮市', 321084, 10000117, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001222, '经济开发区', 321090, 10000117, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001223, '京口区', 321102, 10000118, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001224, '润州区', 321111, 10000118, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10001225, '丹徒区', 321112, 10000118, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001226, '丹阳市', 321181, 10000118, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001227, '扬中市', 321182, 10000118, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001228, '句容市', 321183, 10000118, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001229, '海陵区', 321202, 10000119, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001230, '高港区', 321203, 10000119, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001231, '姜堰区', 321204, 10000119, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001232, '兴化市', 321281, 10000119, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001233, '靖江市', 321282, 10000119, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001234, '泰兴市', 321283, 10000119, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001235, '宿城区', 321302, 10000120, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001236, '宿豫区', 321311, 10000120, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001237, '沭阳县', 321322, 10000120, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001238, '泗阳县', 321323, 10000120, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001239, '泗洪县', 321324, 10000120, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001240, '上城区', 330102, 10000121, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001241, '下城区', 330103, 10000121, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001242, '江干区', 330104, 10000121, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001243, '拱墅区', 330105, 10000121, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001244, '西湖区', 330106, 10000121, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001245, '滨江区', 330108, 10000121, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001246, '萧山区', 330109, 10000121, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001247, '余杭区', 330110, 10000121, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001248, '富阳区', 330111, 10000121, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001249, '临安区', 330112, 10000121, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001250, '桐庐县', 330122, 10000121, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001251, '淳安县', 330127, 10000121, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001252, '建德市', 330182, 10000121, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001253, '海曙区', 330203, 10000122, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001254, '江北区', 330205, 10000122, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001255, '北仑区', 330206, 10000122, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001256, '镇海区', 330211, 10000122, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001257, '鄞州区', 330212, 10000122, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001258, '奉化区', 330213, 10000122, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001259, '象山县', 330225, 10000122, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001260, '宁海县', 330226, 10000122, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001261, '余姚市', 330281, 10000122, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001262, '慈溪市', 330282, 10000122, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001263, '鹿城区', 330302, 10000123, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001264, '龙湾区', 330303, 10000123, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001265, '瓯海区', 330304, 10000123, '3', 'O');
INSERT INTO `cmf_region_letter` VALUES (10001266, '洞头区', 330305, 10000123, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001267, '永嘉县', 330324, 10000123, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001268, '平阳县', 330326, 10000123, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10001269, '苍南县', 330327, 10000123, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001270, '文成县', 330328, 10000123, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001271, '泰顺县', 330329, 10000123, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001272, '瑞安市', 330381, 10000123, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10001273, '乐清市', 330382, 10000123, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001274, '南湖区', 330402, 10000124, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001275, '秀洲区', 330411, 10000124, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001276, '嘉善县', 330421, 10000124, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001277, '海盐县', 330424, 10000124, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001278, '海宁市', 330481, 10000124, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001279, '平湖市', 330482, 10000124, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10001280, '桐乡市', 330483, 10000124, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001281, '吴兴区', 330502, 10000125, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001282, '南浔区', 330503, 10000125, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001283, '德清县', 330521, 10000125, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001284, '长兴县', 330522, 10000125, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001285, '安吉县', 330523, 10000125, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10001286, '越城区', 330602, 10000126, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001287, '柯桥区', 330603, 10000126, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10001288, '上虞区', 330604, 10000126, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001289, '新昌县', 330624, 10000126, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001290, '诸暨市', 330681, 10000126, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001291, '嵊州市', 330683, 10000126, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001292, '婺城区', 330702, 10000127, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001293, '金东区', 330703, 10000127, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001294, '武义县', 330723, 10000127, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001295, '浦江县', 330726, 10000127, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10001296, '磐安县', 330727, 10000127, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10001297, '兰溪市', 330781, 10000127, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001298, '义乌市', 330782, 10000127, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001299, '东阳市', 330783, 10000127, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001300, '永康市', 330784, 10000127, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001301, '柯城区', 330802, 10000128, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10001302, '衢江区', 330803, 10000128, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001303, '常山县', 330822, 10000128, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001304, '开化县', 330824, 10000128, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10001305, '龙游县', 330825, 10000128, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001306, '江山市', 330881, 10000128, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001307, '定海区', 330902, 10000129, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001308, '普陀区', 330903, 10000129, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10001309, '岱山县', 330921, 10000129, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001310, '嵊泗县', 330922, 10000129, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001311, '椒江区', 331002, 10000130, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001312, '黄岩区', 331003, 10000130, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001313, '路桥区', 331004, 10000130, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001314, '三门县', 331022, 10000130, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001315, '天台县', 331023, 10000130, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001316, '仙居县', 331024, 10000130, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001317, '温岭市', 331081, 10000130, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001318, '临海市', 331082, 10000130, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001319, '玉环市', 331083, 10000130, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001320, '莲都区', 331102, 10000131, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001321, '青田县', 331121, 10000131, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001322, '缙云县', 331122, 10000131, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001323, '遂昌县', 331123, 10000131, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001324, '松阳县', 331124, 10000131, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001325, '云和县', 331125, 10000131, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001326, '庆元县', 331126, 10000131, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001327, '景宁畲族自治县', 331127, 10000131, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001328, '龙泉市', 331181, 10000131, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001329, '瑶海区', 340102, 10000132, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001330, '庐阳区', 340103, 10000132, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001331, '蜀山区', 340104, 10000132, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001332, '包河区', 340111, 10000132, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001333, '长丰县', 340121, 10000132, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001334, '肥东县', 340122, 10000132, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001335, '肥西县', 340123, 10000132, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001336, '庐江县', 340124, 10000132, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001337, '巢湖市', 340181, 10000132, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001338, '高新技术开发区', 340190, 10000132, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001339, '经济技术开发区', 340191, 10000132, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001340, '镜湖区', 340202, 10000133, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001341, '弋江区', 340203, 10000133, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001342, '鸠江区', 340207, 10000133, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001343, '三山区', 340208, 10000133, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001344, '芜湖县', 340221, 10000133, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001345, '繁昌县', 340222, 10000133, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001346, '南陵县', 340223, 10000133, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001347, '无为县', 340225, 10000133, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001348, '龙子湖区', 340302, 10000134, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001349, '蚌山区', 340303, 10000134, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001350, '禹会区', 340304, 10000134, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001351, '淮上区', 340311, 10000134, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001352, '怀远县', 340321, 10000134, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001353, '五河县', 340322, 10000134, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001354, '固镇县', 340323, 10000134, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001355, '大通区', 340402, 10000135, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001356, '田家庵区', 340403, 10000135, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001357, '谢家集区', 340404, 10000135, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001358, '八公山区', 340405, 10000135, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001359, '潘集区', 340406, 10000135, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10001360, '凤台县', 340421, 10000135, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001361, '寿县', 340422, 10000135, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001362, '花山区', 340503, 10000136, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001363, '雨山区', 340504, 10000136, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001364, '博望区', 340506, 10000136, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001365, '当涂县', 340521, 10000136, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001366, '含山县', 340522, 10000136, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001367, '和县', 340523, 10000136, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001368, '杜集区', 340602, 10000137, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001369, '相山区', 340603, 10000137, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001370, '烈山区', 340604, 10000137, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001371, '濉溪县', 340621, 10000137, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001372, '铜官区', 340705, 10000138, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001373, '义安区', 340706, 10000138, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001374, '郊区', 340711, 10000138, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001375, '枞阳县', 340722, 10000138, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001376, '迎江区', 340802, 10000139, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001377, '大观区', 340803, 10000139, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001378, '宜秀区', 340811, 10000139, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001379, '怀宁县', 340822, 10000139, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001380, '潜山县', 340824, 10000139, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001381, '太湖县', 340825, 10000139, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001382, '宿松县', 340826, 10000139, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001383, '望江县', 340827, 10000139, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001384, '岳西县', 340828, 10000139, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001385, '桐城市', 340881, 10000139, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001386, '屯溪区', 341002, 10000140, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001387, '黄山区', 341003, 10000140, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001388, '徽州区', 341004, 10000140, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001389, '歙县', 341021, 10000140, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001390, '休宁县', 341022, 10000140, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001391, '黟县', 341023, 10000140, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001392, '祁门县', 341024, 10000140, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001393, '琅琊区', 341102, 10000141, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001394, '南谯区', 341103, 10000141, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001395, '来安县', 341122, 10000141, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001396, '全椒县', 341124, 10000141, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001397, '定远县', 341125, 10000141, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001398, '凤阳县', 341126, 10000141, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001399, '天长市', 341181, 10000141, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001400, '明光市', 341182, 10000141, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001401, '颍州区', 341202, 10000142, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001402, '颍东区', 341203, 10000142, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001403, '颍泉区', 341204, 10000142, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001404, '临泉县', 341221, 10000142, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001405, '太和县', 341222, 10000142, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001406, '阜南县', 341225, 10000142, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001407, '颍上县', 341226, 10000142, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001408, '界首市', 341282, 10000142, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001409, '埇桥区', 341302, 10000143, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001410, '砀山县', 341321, 10000143, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001411, '萧县', 341322, 10000143, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001412, '灵璧县', 341323, 10000143, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001413, '泗县', 341324, 10000143, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001414, '经济开发区', 341390, 10000143, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001415, '金安区', 341502, 10000144, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001416, '裕安区', 341503, 10000144, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001417, '叶集区', 341504, 10000144, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001418, '霍邱县', 341522, 10000144, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001419, '舒城县', 341523, 10000144, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001420, '金寨县', 341524, 10000144, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001421, '霍山县', 341525, 10000144, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001422, '谯城区', 341602, 10000145, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001423, '涡阳县', 341621, 10000145, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001424, '蒙城县', 341622, 10000145, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001425, '利辛县', 341623, 10000145, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001426, '贵池区', 341702, 10000146, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001427, '东至县', 341721, 10000146, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001428, '石台县', 341722, 10000146, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001429, '青阳县', 341723, 10000146, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001430, '宣州区', 341802, 10000147, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001431, '郎溪县', 341821, 10000147, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001432, '广德县', 341822, 10000147, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001433, '泾县', 341823, 10000147, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001434, '绩溪县', 341824, 10000147, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001435, '旌德县', 341825, 10000147, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001436, '宁国市', 341881, 10000147, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001437, '鼓楼区', 350102, 10000148, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001438, '台江区', 350103, 10000148, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001439, '仓山区', 350104, 10000148, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001440, '马尾区', 350105, 10000148, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001441, '晋安区', 350111, 10000148, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001442, '长乐区', 350112, 10000148, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001443, '闽侯县', 350121, 10000148, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001444, '连江县', 350122, 10000148, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001445, '罗源县', 350123, 10000148, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001446, '闽清县', 350124, 10000148, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001447, '永泰县', 350125, 10000148, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001448, '平潭县', 350128, 10000148, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10001449, '福清市', 350181, 10000148, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001450, '思明区', 350203, 10000149, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001451, '海沧区', 350205, 10000149, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001452, '湖里区', 350206, 10000149, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001453, '集美区', 350211, 10000149, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001454, '同安区', 350212, 10000149, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001455, '翔安区', 350213, 10000149, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001456, '城厢区', 350302, 10000150, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001457, '涵江区', 350303, 10000150, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001458, '荔城区', 350304, 10000150, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001459, '秀屿区', 350305, 10000150, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001460, '仙游县', 350322, 10000150, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001461, '梅列区', 350402, 10000151, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001462, '三元区', 350403, 10000151, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001463, '明溪县', 350421, 10000151, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001464, '清流县', 350423, 10000151, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001465, '宁化县', 350424, 10000151, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001466, '大田县', 350425, 10000151, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001467, '尤溪县', 350426, 10000151, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001468, '沙县', 350427, 10000151, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001469, '将乐县', 350428, 10000151, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001470, '泰宁县', 350429, 10000151, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001471, '建宁县', 350430, 10000151, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001472, '永安市', 350481, 10000151, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001473, '鲤城区', 350502, 10000152, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001474, '丰泽区', 350503, 10000152, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001475, '洛江区', 350504, 10000152, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001476, '泉港区', 350505, 10000152, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001477, '惠安县', 350521, 10000152, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001478, '安溪县', 350524, 10000152, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10001479, '永春县', 350525, 10000152, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001480, '德化县', 350526, 10000152, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001481, '金门县', 350527, 10000152, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001482, '石狮市', 350581, 10000152, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001483, '晋江市', 350582, 10000152, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001484, '南安市', 350583, 10000152, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001485, '芗城区', 350602, 10000153, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001486, '龙文区', 350603, 10000153, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001487, '云霄县', 350622, 10000153, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001488, '漳浦县', 350623, 10000153, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001489, '诏安县', 350624, 10000153, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001490, '长泰县', 350625, 10000153, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001491, '东山县', 350626, 10000153, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001492, '南靖县', 350627, 10000153, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001493, '平和县', 350628, 10000153, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10001494, '华安县', 350629, 10000153, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001495, '龙海市', 350681, 10000153, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001496, '延平区', 350702, 10000154, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001497, '建阳区', 350703, 10000154, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001498, '顺昌县', 350721, 10000154, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001499, '浦城县', 350722, 10000154, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10001500, '光泽县', 350723, 10000154, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001501, '松溪县', 350724, 10000154, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001502, '政和县', 350725, 10000154, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001503, '邵武市', 350781, 10000154, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001504, '武夷山市', 350782, 10000154, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001505, '建瓯市', 350783, 10000154, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001506, '新罗区', 350802, 10000155, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001507, '永定区', 350803, 10000155, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001508, '长汀县', 350821, 10000155, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001509, '上杭县', 350823, 10000155, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001510, '武平县', 350824, 10000155, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001511, '连城县', 350825, 10000155, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001512, '漳平市', 350881, 10000155, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001513, '蕉城区', 350902, 10000156, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001514, '霞浦县', 350921, 10000156, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001515, '古田县', 350922, 10000156, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001516, '屏南县', 350923, 10000156, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10001517, '寿宁县', 350924, 10000156, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001518, '周宁县', 350925, 10000156, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001519, '柘荣县', 350926, 10000156, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001520, '福安市', 350981, 10000156, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001521, '福鼎市', 350982, 10000156, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001522, '东湖区', 360102, 10000157, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001523, '西湖区', 360103, 10000157, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001524, '青云谱区', 360104, 10000157, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001525, '湾里区', 360105, 10000157, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001526, '青山湖区', 360111, 10000157, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001527, '新建区', 360112, 10000157, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001528, '南昌县', 360121, 10000157, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001529, '安义县', 360123, 10000157, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10001530, '进贤县', 360124, 10000157, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001531, '经济技术开发区', 360190, 10000157, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001532, '高新区', 360192, 10000157, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001533, '昌江区', 360202, 10000158, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001534, '珠山区', 360203, 10000158, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001535, '浮梁县', 360222, 10000158, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001536, '乐平市', 360281, 10000158, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001537, '安源区', 360302, 10000159, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10001538, '湘东区', 360313, 10000159, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001539, '莲花县', 360321, 10000159, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001540, '上栗县', 360322, 10000159, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001541, '芦溪县', 360323, 10000159, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001542, '濂溪区', 360402, 10000160, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001543, '浔阳区', 360403, 10000160, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001544, '柴桑区', 360404, 10000160, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001545, '武宁县', 360423, 10000160, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001546, '修水县', 360424, 10000160, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001547, '永修县', 360425, 10000160, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001548, '德安县', 360426, 10000160, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001549, '都昌县', 360428, 10000160, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001550, '湖口县', 360429, 10000160, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001551, '彭泽县', 360430, 10000160, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10001552, '瑞昌市', 360481, 10000160, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10001553, '共青城市', 360482, 10000160, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001554, '庐山市', 360483, 10000160, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001555, '经济技术开发区', 360490, 10000160, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001556, '渝水区', 360502, 10000161, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001557, '分宜县', 360521, 10000161, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001558, '月湖区', 360602, 10000162, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001559, '余江区', 360603, 10000162, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001560, '贵溪市', 360681, 10000162, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001561, '章贡区', 360702, 10000163, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001562, '南康区', 360703, 10000163, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001563, '赣县区', 360704, 10000163, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001564, '信丰县', 360722, 10000163, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001565, '大余县', 360723, 10000163, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001566, '上犹县', 360724, 10000163, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001567, '崇义县', 360725, 10000163, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001568, '安远县', 360726, 10000163, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10001569, '龙南县', 360727, 10000163, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001570, '定南县', 360728, 10000163, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001571, '全南县', 360729, 10000163, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001572, '宁都县', 360730, 10000163, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001573, '于都县', 360731, 10000163, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001574, '兴国县', 360732, 10000163, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001575, '会昌县', 360733, 10000163, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001576, '寻乌县', 360734, 10000163, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001577, '石城县', 360735, 10000163, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001578, '瑞金市', 360781, 10000163, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10001579, '吉州区', 360802, 10000164, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001580, '青原区', 360803, 10000164, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001581, '吉安县', 360821, 10000164, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001582, '吉水县', 360822, 10000164, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001583, '峡江县', 360823, 10000164, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001584, '新干县', 360824, 10000164, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001585, '永丰县', 360825, 10000164, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001586, '泰和县', 360826, 10000164, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001587, '遂川县', 360827, 10000164, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001588, '万安县', 360828, 10000164, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001589, '安福县', 360829, 10000164, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10001590, '永新县', 360830, 10000164, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001591, '井冈山市', 360881, 10000164, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001592, '袁州区', 360902, 10000165, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001593, '奉新县', 360921, 10000165, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001594, '万载县', 360922, 10000165, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001595, '上高县', 360923, 10000165, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001596, '宜丰县', 360924, 10000165, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001597, '靖安县', 360925, 10000165, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001598, '铜鼓县', 360926, 10000165, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001599, '丰城市', 360981, 10000165, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001600, '樟树市', 360982, 10000165, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001601, '高安市', 360983, 10000165, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001602, '临川区', 361002, 10000166, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001603, '东乡区', 361003, 10000166, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001604, '南城县', 361021, 10000166, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001605, '黎川县', 361022, 10000166, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001606, '南丰县', 361023, 10000166, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001607, '崇仁县', 361024, 10000166, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001608, '乐安县', 361025, 10000166, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001609, '宜黄县', 361026, 10000166, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001610, '金溪县', 361027, 10000166, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001611, '资溪县', 361028, 10000166, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001612, '广昌县', 361030, 10000166, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001613, '信州区', 361102, 10000167, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001614, '广丰区', 361103, 10000167, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001615, '上饶县', 361121, 10000167, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001616, '玉山县', 361123, 10000167, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001617, '铅山县', 361124, 10000167, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001618, '横峰县', 361125, 10000167, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001619, '弋阳县', 361126, 10000167, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001620, '余干县', 361127, 10000167, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001621, '鄱阳县', 361128, 10000167, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10001622, '万年县', 361129, 10000167, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001623, '婺源县', 361130, 10000167, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001624, '德兴市', 361181, 10000167, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001625, '历下区', 370102, 10000168, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001626, '市中区', 370103, 10000168, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001627, '槐荫区', 370104, 10000168, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001628, '天桥区', 370105, 10000168, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001629, '历城区', 370112, 10000168, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001630, '长清区', 370113, 10000168, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001631, '章丘区', 370114, 10000168, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001632, '济阳区', 370115, 10000168, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001633, '莱芜区', 370116, 10000168, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001634, '钢城区', 370117, 10000168, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001635, '平阴县', 370124, 10000168, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10001636, '商河县', 370126, 10000168, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001637, '高新区', 370190, 10000168, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001638, '市南区', 370202, 10000169, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001639, '市北区', 370203, 10000169, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001640, '黄岛区', 370211, 10000169, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001641, '崂山区', 370212, 10000169, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001642, '李沧区', 370213, 10000169, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001643, '城阳区', 370214, 10000169, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001644, '即墨区', 370215, 10000169, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001645, '胶州市', 370281, 10000169, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001646, '平度市', 370283, 10000169, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10001647, '莱西市', 370285, 10000169, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001648, '开发区', 370290, 10000169, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10001649, '淄川区', 370302, 10000170, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001650, '张店区', 370303, 10000170, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001651, '博山区', 370304, 10000170, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001652, '临淄区', 370305, 10000170, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001653, '周村区', 370306, 10000170, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001654, '桓台县', 370321, 10000170, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001655, '高青县', 370322, 10000170, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001656, '沂源县', 370323, 10000170, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001657, '市中区', 370402, 10000171, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001658, '薛城区', 370403, 10000171, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001659, '峄城区', 370404, 10000171, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001660, '台儿庄区', 370405, 10000171, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001661, '山亭区', 370406, 10000171, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001662, '滕州市', 370481, 10000171, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001663, '东营区', 370502, 10000172, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001664, '河口区', 370503, 10000172, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001665, '垦利区', 370505, 10000172, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10001666, '利津县', 370522, 10000172, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001667, '广饶县', 370523, 10000172, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001668, '芝罘区', 370602, 10000173, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001669, '福山区', 370611, 10000173, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001670, '牟平区', 370612, 10000173, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001671, '莱山区', 370613, 10000173, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001672, '长岛县', 370634, 10000173, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001673, '龙口市', 370681, 10000173, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001674, '莱阳市', 370682, 10000173, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001675, '莱州市', 370683, 10000173, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001676, '蓬莱市', 370684, 10000173, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10001677, '招远市', 370685, 10000173, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001678, '栖霞市', 370686, 10000173, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001679, '海阳市', 370687, 10000173, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001680, '开发区', 370690, 10000173, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10001681, '潍城区', 370702, 10000174, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001682, '寒亭区', 370703, 10000174, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001683, '坊子区', 370704, 10000174, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001684, '奎文区', 370705, 10000174, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10001685, '临朐县', 370724, 10000174, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001686, '昌乐县', 370725, 10000174, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001687, '青州市', 370781, 10000174, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001688, '诸城市', 370782, 10000174, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001689, '寿光市', 370783, 10000174, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001690, '安丘市', 370784, 10000174, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10001691, '高密市', 370785, 10000174, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001692, '昌邑市', 370786, 10000174, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001693, '开发区', 370790, 10000174, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10001694, '高新区', 370791, 10000174, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001695, '任城区', 370811, 10000175, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10001696, '兖州区', 370812, 10000175, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001697, '微山县', 370826, 10000175, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001698, '鱼台县', 370827, 10000175, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001699, '金乡县', 370828, 10000175, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001700, '嘉祥县', 370829, 10000175, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001701, '汶上县', 370830, 10000175, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001702, '泗水县', 370831, 10000175, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001703, '梁山县', 370832, 10000175, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001704, '曲阜市', 370881, 10000175, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001705, '邹城市', 370883, 10000175, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001706, '高新区', 370890, 10000175, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001707, '泰山区', 370902, 10000176, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001708, '岱岳区', 370911, 10000176, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001709, '宁阳县', 370921, 10000176, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001710, '东平县', 370923, 10000176, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001711, '新泰市', 370982, 10000176, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001712, '肥城市', 370983, 10000176, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001713, '环翠区', 371002, 10000177, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001714, '文登区', 371003, 10000177, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001715, '荣成市', 371082, 10000177, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10001716, '乳山市', 371083, 10000177, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10001717, '经济技术开发区', 371091, 10000177, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001718, '东港区', 371102, 10000178, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001719, '岚山区', 371103, 10000178, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001720, '五莲县', 371121, 10000178, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001721, '莒县', 371122, 10000178, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001722, '兰山区', 371302, 10000179, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001723, '罗庄区', 371311, 10000179, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001724, '河东区', 371312, 10000179, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001725, '沂南县', 371321, 10000179, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001726, '郯城县', 371322, 10000179, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001727, '沂水县', 371323, 10000179, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001728, '兰陵县', 371324, 10000179, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001729, '费县', 371325, 10000179, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001730, '平邑县', 371326, 10000179, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10001731, '莒南县', 371327, 10000179, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001732, '蒙阴县', 371328, 10000179, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001733, '临沭县', 371329, 10000179, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001734, '德城区', 371402, 10000180, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001735, '陵城区', 371403, 10000180, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001736, '宁津县', 371422, 10000180, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001737, '庆云县', 371423, 10000180, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001738, '临邑县', 371424, 10000180, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001739, '齐河县', 371425, 10000180, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001740, '平原县', 371426, 10000180, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10001741, '夏津县', 371427, 10000180, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001742, '武城县', 371428, 10000180, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001743, '乐陵市', 371481, 10000180, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001744, '禹城市', 371482, 10000180, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001745, '东昌府区', 371502, 10000181, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001746, '阳谷县', 371521, 10000181, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001747, '莘县', 371522, 10000181, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001748, '茌平县', 371523, 10000181, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001749, '东阿县', 371524, 10000181, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001750, '冠县', 371525, 10000181, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001751, '高唐县', 371526, 10000181, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001752, '临清市', 371581, 10000181, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001753, '滨城区', 371602, 10000182, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001754, '沾化区', 371603, 10000182, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001755, '惠民县', 371621, 10000182, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001756, '阳信县', 371622, 10000182, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001757, '无棣县', 371623, 10000182, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001758, '博兴县', 371625, 10000182, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001759, '邹平市', 371681, 10000182, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001760, '牡丹区', 371702, 10000183, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001761, '定陶区', 371703, 10000183, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001762, '曹县', 371721, 10000183, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001763, '单县', 371722, 10000183, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001764, '成武县', 371723, 10000183, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001765, '巨野县', 371724, 10000183, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001766, '郓城县', 371725, 10000183, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001767, '鄄城县', 371726, 10000183, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001768, '东明县', 371728, 10000183, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001769, '中原区', 410102, 10000184, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001770, '二七区', 410103, 10000184, '3', 'E');
INSERT INTO `cmf_region_letter` VALUES (10001771, '管城回族区', 410104, 10000184, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001772, '金水区', 410105, 10000184, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001773, '上街区', 410106, 10000184, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001774, '惠济区', 410108, 10000184, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001775, '中牟县', 410122, 10000184, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001776, '巩义市', 410181, 10000184, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001777, '荥阳市', 410182, 10000184, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001778, '新密市', 410183, 10000184, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001779, '新郑市', 410184, 10000184, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001780, '登封市', 410185, 10000184, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001781, '高新技术开发区', 410190, 10000184, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001782, '经济技术开发区', 410191, 10000184, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001783, '龙亭区', 410202, 10000185, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001784, '顺河回族区', 410203, 10000185, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001785, '鼓楼区', 410204, 10000185, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001786, '禹王台区', 410205, 10000185, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001787, '祥符区', 410212, 10000185, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001788, '杞县', 410221, 10000185, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001789, '通许县', 410222, 10000185, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001790, '尉氏县', 410223, 10000185, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001791, '兰考县', 410225, 10000185, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001792, '老城区', 410302, 10000186, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001793, '西工区', 410303, 10000186, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001794, '瀍河回族区', 410304, 10000186, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001795, '涧西区', 410305, 10000186, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001796, '吉利区', 410306, 10000186, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001797, '洛龙区', 410311, 10000186, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001798, '孟津县', 410322, 10000186, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001799, '新安县', 410323, 10000186, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001800, '栾川县', 410324, 10000186, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001801, '嵩县', 410325, 10000186, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001802, '汝阳县', 410326, 10000186, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10001803, '宜阳县', 410327, 10000186, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001804, '洛宁县', 410328, 10000186, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001805, '伊川县', 410329, 10000186, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001806, '偃师市', 410381, 10000186, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001807, '新华区', 410402, 10000187, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001808, '卫东区', 410403, 10000187, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001809, '石龙区', 410404, 10000187, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001810, '湛河区', 410411, 10000187, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001811, '宝丰县', 410421, 10000187, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001812, '叶县', 410422, 10000187, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001813, '鲁山县', 410423, 10000187, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001814, '郏县', 410425, 10000187, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001815, '舞钢市', 410481, 10000187, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001816, '汝州市', 410482, 10000187, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10001817, '文峰区', 410502, 10000188, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001818, '北关区', 410503, 10000188, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001819, '殷都区', 410505, 10000188, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001820, '龙安区', 410506, 10000188, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001821, '安阳县', 410522, 10000188, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10001822, '汤阴县', 410523, 10000188, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001823, '滑县', 410526, 10000188, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001824, '内黄县', 410527, 10000188, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001825, '林州市', 410581, 10000188, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001826, '开发区', 410590, 10000188, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10001827, '鹤山区', 410602, 10000189, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001828, '山城区', 410603, 10000189, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001829, '淇滨区', 410611, 10000189, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001830, '浚县', 410621, 10000189, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001831, '淇县', 410622, 10000189, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001832, '红旗区', 410702, 10000190, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001833, '卫滨区', 410703, 10000190, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001834, '凤泉区', 410704, 10000190, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001835, '牧野区', 410711, 10000190, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001836, '新乡县', 410721, 10000190, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001837, '获嘉县', 410724, 10000190, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001838, '原阳县', 410725, 10000190, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001839, '延津县', 410726, 10000190, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001840, '封丘县', 410727, 10000190, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001841, '长垣县', 410728, 10000190, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001842, '卫辉市', 410781, 10000190, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001843, '辉县市', 410782, 10000190, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001844, '解放区', 410802, 10000191, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001845, '中站区', 410803, 10000191, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001846, '马村区', 410804, 10000191, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001847, '山阳区', 410811, 10000191, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001848, '修武县', 410821, 10000191, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001849, '博爱县', 410822, 10000191, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001850, '武陟县', 410823, 10000191, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001851, '温县', 410825, 10000191, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001852, '沁阳市', 410882, 10000191, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001853, '孟州市', 410883, 10000191, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001854, '华龙区', 410902, 10000192, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001855, '清丰县', 410922, 10000192, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001856, '南乐县', 410923, 10000192, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001857, '范县', 410926, 10000192, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001858, '台前县', 410927, 10000192, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001859, '濮阳县', 410928, 10000192, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10001860, '魏都区', 411002, 10000193, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001861, '建安区', 411003, 10000193, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001862, '鄢陵县', 411024, 10000193, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001863, '襄城县', 411025, 10000193, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001864, '禹州市', 411081, 10000193, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001865, '长葛市', 411082, 10000193, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001866, '源汇区', 411102, 10000194, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001867, '郾城区', 411103, 10000194, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001868, '召陵区', 411104, 10000194, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001869, '舞阳县', 411121, 10000194, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001870, '临颍县', 411122, 10000194, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001871, '湖滨区', 411202, 10000195, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001872, '陕州区', 411203, 10000195, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001873, '渑池县', 411221, 10000195, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001874, '卢氏县', 411224, 10000195, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001875, '义马市', 411281, 10000195, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001876, '灵宝市', 411282, 10000195, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001877, '宛城区', 411302, 10000196, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001878, '卧龙区', 411303, 10000196, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001879, '南召县', 411321, 10000196, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001880, '方城县', 411322, 10000196, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001881, '西峡县', 411323, 10000196, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001882, '镇平县', 411324, 10000196, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001883, '内乡县', 411325, 10000196, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001884, '淅川县', 411326, 10000196, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001885, '社旗县', 411327, 10000196, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001886, '唐河县', 411328, 10000196, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001887, '新野县', 411329, 10000196, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001888, '桐柏县', 411330, 10000196, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001889, '邓州市', 411381, 10000196, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001890, '梁园区', 411402, 10000197, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001891, '睢阳区', 411403, 10000197, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001892, '民权县', 411421, 10000197, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001893, '睢县', 411422, 10000197, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001894, '宁陵县', 411423, 10000197, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001895, '柘城县', 411424, 10000197, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001896, '虞城县', 411425, 10000197, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001897, '夏邑县', 411426, 10000197, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001898, '永城市', 411481, 10000197, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001899, '浉河区', 411502, 10000198, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001900, '平桥区', 411503, 10000198, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10001901, '罗山县', 411521, 10000198, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001902, '光山县', 411522, 10000198, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001903, '新县', 411523, 10000198, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001904, '商城县', 411524, 10000198, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001905, '固始县', 411525, 10000198, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001906, '潢川县', 411526, 10000198, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001907, '淮滨县', 411527, 10000198, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001908, '息县', 411528, 10000198, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001909, '川汇区', 411602, 10000199, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001910, '扶沟县', 411621, 10000199, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001911, '西华县', 411622, 10000199, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001912, '商水县', 411623, 10000199, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001913, '沈丘县', 411624, 10000199, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001914, '郸城县', 411625, 10000199, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001915, '淮阳县', 411626, 10000199, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001916, '太康县', 411627, 10000199, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001917, '鹿邑县', 411628, 10000199, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001918, '项城市', 411681, 10000199, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001919, '经济开发区', 411690, 10000199, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001920, '驿城区', 411702, 10000200, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001921, '西平县', 411721, 10000200, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001922, '上蔡县', 411722, 10000200, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001923, '平舆县', 411723, 10000200, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10001924, '正阳县', 411724, 10000200, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001925, '确山县', 411725, 10000200, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001926, '泌阳县', 411726, 10000200, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001927, '汝南县', 411727, 10000200, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10001928, '遂平县', 411728, 10000200, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001929, '新蔡县', 411729, 10000200, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001930, '济源市', 419001, 10000201, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001931, '江岸区', 420102, 10000202, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001932, '江汉区', 420103, 10000202, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001933, '硚口区', 420104, 10000202, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001934, '汉阳区', 420105, 10000202, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001935, '武昌区', 420106, 10000202, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001936, '青山区', 420107, 10000202, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10001937, '洪山区', 420111, 10000202, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001938, '东西湖区', 420112, 10000202, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001939, '汉南区', 420113, 10000202, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001940, '蔡甸区', 420114, 10000202, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001941, '江夏区', 420115, 10000202, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001942, '黄陂区', 420116, 10000202, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001943, '新洲区', 420117, 10000202, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001944, '黄石港区', 420202, 10000203, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001945, '西塞山区', 420203, 10000203, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001946, '下陆区', 420204, 10000203, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001947, '铁山区', 420205, 10000203, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10001948, '阳新县', 420222, 10000203, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001949, '大冶市', 420281, 10000203, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001950, '茅箭区', 420302, 10000204, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10001951, '张湾区', 420303, 10000204, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001952, '郧阳区', 420304, 10000204, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001953, '郧西县', 420322, 10000204, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001954, '竹山县', 420323, 10000204, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001955, '竹溪县', 420324, 10000204, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001956, '房县', 420325, 10000204, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001957, '丹江口市', 420381, 10000204, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001958, '西陵区', 420502, 10000205, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001959, '伍家岗区', 420503, 10000205, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001960, '点军区', 420504, 10000205, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001961, '猇亭区', 420505, 10000205, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001962, '夷陵区', 420506, 10000205, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001963, '远安县', 420525, 10000205, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001964, '兴山县', 420526, 10000205, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001965, '秭归县', 420527, 10000205, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001966, '长阳土家族自治县', 420528, 10000205, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10001967, '五峰土家族自治县', 420529, 10000205, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10001968, '宜都市', 420581, 10000205, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001969, '当阳市', 420582, 10000205, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001970, '枝江市', 420583, 10000205, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001971, '经济开发区', 420590, 10000205, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001972, '襄城区', 420602, 10000206, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001973, '樊城区', 420606, 10000206, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10001974, '襄州区', 420607, 10000206, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001975, '南漳县', 420624, 10000206, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10001976, '谷城县', 420625, 10000206, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001977, '保康县', 420626, 10000206, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10001978, '老河口市', 420682, 10000206, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001979, '枣阳市', 420683, 10000206, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001980, '宜城市', 420684, 10000206, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001981, '梁子湖区', 420702, 10000207, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10001982, '华容区', 420703, 10000207, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001983, '鄂城区', 420704, 10000207, '3', 'E');
INSERT INTO `cmf_region_letter` VALUES (10001984, '东宝区', 420802, 10000208, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001985, '掇刀区', 420804, 10000208, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001986, '沙洋县', 420822, 10000208, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001987, '钟祥市', 420881, 10000208, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10001988, '京山市', 420882, 10000208, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001989, '孝南区', 420902, 10000209, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001990, '孝昌县', 420921, 10000209, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10001991, '大悟县', 420922, 10000209, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10001992, '云梦县', 420923, 10000209, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001993, '应城市', 420981, 10000209, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10001994, '安陆市', 420982, 10000209, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10001995, '汉川市', 420984, 10000209, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10001996, '沙市区', 421002, 10000210, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10001997, '荆州区', 421003, 10000210, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10001998, '公安县', 421022, 10000210, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10001999, '监利县', 421023, 10000210, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002000, '江陵县', 421024, 10000210, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002001, '石首市', 421081, 10000210, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002002, '洪湖市', 421083, 10000210, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002003, '松滋市', 421087, 10000210, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002004, '黄州区', 421102, 10000211, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002005, '团风县', 421121, 10000211, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002006, '红安县', 421122, 10000211, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002007, '罗田县', 421123, 10000211, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002008, '英山县', 421124, 10000211, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002009, '浠水县', 421125, 10000211, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002010, '蕲春县', 421126, 10000211, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002011, '黄梅县', 421127, 10000211, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002012, '麻城市', 421181, 10000211, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002013, '武穴市', 421182, 10000211, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002014, '咸安区', 421202, 10000212, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002015, '嘉鱼县', 421221, 10000212, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002016, '通城县', 421222, 10000212, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002017, '崇阳县', 421223, 10000212, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002018, '通山县', 421224, 10000212, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002019, '赤壁市', 421281, 10000212, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002020, '曾都区', 421303, 10000213, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002021, '随县', 421321, 10000213, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002022, '广水市', 421381, 10000213, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002023, '恩施市', 422801, 10000214, '3', 'E');
INSERT INTO `cmf_region_letter` VALUES (10002024, '利川市', 422802, 10000214, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002025, '建始县', 422822, 10000214, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002026, '巴东县', 422823, 10000214, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002027, '宣恩县', 422825, 10000214, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002028, '咸丰县', 422826, 10000214, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002029, '来凤县', 422827, 10000214, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002030, '鹤峰县', 422828, 10000214, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002031, '仙桃市', 429004, 10000215, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002032, '潜江市', 429005, 10000215, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002033, '天门市', 429006, 10000215, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002034, '神农架林区', 429021, 10000215, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002035, '芙蓉区', 430102, 10000216, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10002036, '天心区', 430103, 10000216, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002037, '岳麓区', 430104, 10000216, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002038, '开福区', 430105, 10000216, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10002039, '雨花区', 430111, 10000216, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002040, '望城区', 430112, 10000216, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002041, '长沙县', 430121, 10000216, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002042, '浏阳市', 430181, 10000216, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002043, '宁乡市', 430182, 10000216, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002044, '荷塘区', 430202, 10000217, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002045, '芦淞区', 430203, 10000217, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002046, '石峰区', 430204, 10000217, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002047, '天元区', 430211, 10000217, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002048, '渌口区', 430212, 10000217, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002049, '攸县', 430223, 10000217, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002050, '茶陵县', 430224, 10000217, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002051, '炎陵县', 430225, 10000217, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002052, '醴陵市', 430281, 10000217, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002053, '雨湖区', 430302, 10000218, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002054, '岳塘区', 430304, 10000218, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002055, '湘潭县', 430321, 10000218, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002056, '湘乡市', 430381, 10000218, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002057, '韶山市', 430382, 10000218, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002058, '珠晖区', 430405, 10000219, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002059, '雁峰区', 430406, 10000219, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002060, '石鼓区', 430407, 10000219, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002061, '蒸湘区', 430408, 10000219, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002062, '南岳区', 430412, 10000219, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002063, '衡阳县', 430421, 10000219, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002064, '衡南县', 430422, 10000219, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002065, '衡山县', 430423, 10000219, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002066, '衡东县', 430424, 10000219, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002067, '祁东县', 430426, 10000219, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002068, '耒阳市', 430481, 10000219, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002069, '常宁市', 430482, 10000219, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002070, '双清区', 430502, 10000220, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002071, '大祥区', 430503, 10000220, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002072, '北塔区', 430511, 10000220, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002073, '邵东县', 430521, 10000220, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002074, '新邵县', 430522, 10000220, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002075, '邵阳县', 430523, 10000220, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002076, '隆回县', 430524, 10000220, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002077, '洞口县', 430525, 10000220, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002078, '绥宁县', 430527, 10000220, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002079, '新宁县', 430528, 10000220, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002080, '城步苗族自治县', 430529, 10000220, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002081, '武冈市', 430581, 10000220, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002082, '岳阳楼区', 430602, 10000221, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002083, '云溪区', 430603, 10000221, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002084, '君山区', 430611, 10000221, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002085, '岳阳县', 430621, 10000221, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002086, '华容县', 430623, 10000221, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002087, '湘阴县', 430624, 10000221, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002088, '平江县', 430626, 10000221, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002089, '汨罗市', 430681, 10000221, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002090, '临湘市', 430682, 10000221, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002091, '武陵区', 430702, 10000222, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002092, '鼎城区', 430703, 10000222, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002093, '安乡县', 430721, 10000222, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10002094, '汉寿县', 430722, 10000222, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002095, '澧县', 430723, 10000222, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002096, '临澧县', 430724, 10000222, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002097, '桃源县', 430725, 10000222, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002098, '石门县', 430726, 10000222, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002099, '津市市', 430781, 10000222, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002100, '永定区', 430802, 10000223, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002101, '武陵源区', 430811, 10000223, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002102, '慈利县', 430821, 10000223, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002103, '桑植县', 430822, 10000223, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002104, '资阳区', 430902, 10000224, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002105, '赫山区', 430903, 10000224, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002106, '南县', 430921, 10000224, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002107, '桃江县', 430922, 10000224, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002108, '安化县', 430923, 10000224, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10002109, '沅江市', 430981, 10000224, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002110, '北湖区', 431002, 10000225, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002111, '苏仙区', 431003, 10000225, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002112, '桂阳县', 431021, 10000225, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002113, '宜章县', 431022, 10000225, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002114, '永兴县', 431023, 10000225, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002115, '嘉禾县', 431024, 10000225, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002116, '临武县', 431025, 10000225, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002117, '汝城县', 431026, 10000225, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10002118, '桂东县', 431027, 10000225, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002119, '安仁县', 431028, 10000225, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10002120, '资兴市', 431081, 10000225, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002121, '零陵区', 431102, 10000226, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002122, '冷水滩区', 431103, 10000226, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002123, '祁阳县', 431121, 10000226, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002124, '东安县', 431122, 10000226, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002125, '双牌县', 431123, 10000226, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002126, '道县', 431124, 10000226, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002127, '江永县', 431125, 10000226, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002128, '宁远县', 431126, 10000226, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002129, '蓝山县', 431127, 10000226, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002130, '新田县', 431128, 10000226, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002131, '江华瑶族自治县', 431129, 10000226, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002132, '鹤城区', 431202, 10000227, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002133, '中方县', 431221, 10000227, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002134, '沅陵县', 431222, 10000227, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002135, '辰溪县', 431223, 10000227, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002136, '溆浦县', 431224, 10000227, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002137, '会同县', 431225, 10000227, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002138, '麻阳苗族自治县', 431226, 10000227, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002139, '新晃侗族自治县', 431227, 10000227, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002140, '芷江侗族自治县', 431228, 10000227, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002141, '靖州苗族侗族自治县', 431229, 10000227, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002142, '通道侗族自治县', 431230, 10000227, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002143, '洪江市', 431281, 10000227, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002144, '娄星区', 431302, 10000228, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002145, '双峰县', 431321, 10000228, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002146, '新化县', 431322, 10000228, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002147, '冷水江市', 431381, 10000228, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002148, '涟源市', 431382, 10000228, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002149, '吉首市', 433101, 10000229, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002150, '泸溪县', 433122, 10000229, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002151, '凤凰县', 433123, 10000229, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10002152, '花垣县', 433124, 10000229, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002153, '保靖县', 433125, 10000229, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002154, '古丈县', 433126, 10000229, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002155, '永顺县', 433127, 10000229, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002156, '龙山县', 433130, 10000229, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002157, '荔湾区', 440103, 10000230, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002158, '越秀区', 440104, 10000230, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002159, '海珠区', 440105, 10000230, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002160, '天河区', 440106, 10000230, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002161, '白云区', 440111, 10000230, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002162, '黄埔区', 440112, 10000230, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002163, '番禺区', 440113, 10000230, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002164, '花都区', 440114, 10000230, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002165, '南沙区', 440115, 10000230, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002166, '从化区', 440117, 10000230, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002167, '增城区', 440118, 10000230, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002168, '武江区', 440203, 10000231, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002169, '浈江区', 440204, 10000231, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002170, '曲江区', 440205, 10000231, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002171, '始兴县', 440222, 10000231, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002172, '仁化县', 440224, 10000231, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10002173, '翁源县', 440229, 10000231, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002174, '乳源瑶族自治县', 440232, 10000231, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10002175, '新丰县', 440233, 10000231, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002176, '乐昌市', 440281, 10000231, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002177, '南雄市', 440282, 10000231, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002178, '罗湖区', 440303, 10000232, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002179, '福田区', 440304, 10000232, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10002180, '南山区', 440305, 10000232, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002181, '宝安区', 440306, 10000232, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002182, '龙岗区', 440307, 10000232, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002183, '盐田区', 440308, 10000232, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002184, '龙华区', 440309, 10000232, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002185, '坪山区', 440310, 10000232, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002186, '光明区', 440311, 10000232, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002187, '香洲区', 440402, 10000233, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002188, '斗门区', 440403, 10000233, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002189, '金湾区', 440404, 10000233, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002190, '龙湖区', 440507, 10000234, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002191, '金平区', 440511, 10000234, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002192, '濠江区', 440512, 10000234, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002193, '潮阳区', 440513, 10000234, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002194, '潮南区', 440514, 10000234, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002195, '澄海区', 440515, 10000234, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002196, '南澳县', 440523, 10000234, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002197, '禅城区', 440604, 10000235, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002198, '南海区', 440605, 10000235, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002199, '顺德区', 440606, 10000235, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002200, '三水区', 440607, 10000235, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002201, '高明区', 440608, 10000235, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002202, '蓬江区', 440703, 10000236, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002203, '江海区', 440704, 10000236, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002204, '新会区', 440705, 10000236, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002205, '台山市', 440781, 10000236, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002206, '开平市', 440783, 10000236, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10002207, '鹤山市', 440784, 10000236, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002208, '恩平市', 440785, 10000236, '3', 'E');
INSERT INTO `cmf_region_letter` VALUES (10002209, '赤坎区', 440802, 10000237, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002210, '霞山区', 440803, 10000237, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002211, '坡头区', 440804, 10000237, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002212, '麻章区', 440811, 10000237, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002213, '遂溪县', 440823, 10000237, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002214, '徐闻县', 440825, 10000237, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002215, '廉江市', 440881, 10000237, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002216, '雷州市', 440882, 10000237, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002217, '吴川市', 440883, 10000237, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002218, '经济技术开发区', 440890, 10000237, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002219, '茂南区', 440902, 10000238, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002220, '电白区', 440904, 10000238, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002221, '高州市', 440981, 10000238, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002222, '化州市', 440982, 10000238, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002223, '信宜市', 440983, 10000238, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002224, '端州区', 441202, 10000239, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002225, '鼎湖区', 441203, 10000239, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002226, '高要区', 441204, 10000239, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002227, '广宁县', 441223, 10000239, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002228, '怀集县', 441224, 10000239, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002229, '封开县', 441225, 10000239, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10002230, '德庆县', 441226, 10000239, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002231, '四会市', 441284, 10000239, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002232, '惠城区', 441302, 10000240, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002233, '惠阳区', 441303, 10000240, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002234, '博罗县', 441322, 10000240, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002235, '惠东县', 441323, 10000240, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002236, '龙门县', 441324, 10000240, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002237, '梅江区', 441402, 10000241, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002238, '梅县区', 441403, 10000241, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002239, '大埔县', 441422, 10000241, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002240, '丰顺县', 441423, 10000241, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10002241, '五华县', 441424, 10000241, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002242, '平远县', 441426, 10000241, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002243, '蕉岭县', 441427, 10000241, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002244, '兴宁市', 441481, 10000241, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002245, '城区', 441502, 10000242, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002246, '海丰县', 441521, 10000242, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002247, '陆河县', 441523, 10000242, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002248, '陆丰市', 441581, 10000242, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002249, '源城区', 441602, 10000243, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002250, '紫金县', 441621, 10000243, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002251, '龙川县', 441622, 10000243, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002252, '连平县', 441623, 10000243, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002253, '和平县', 441624, 10000243, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002254, '东源县', 441625, 10000243, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002255, '江城区', 441702, 10000244, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002256, '阳东区', 441704, 10000244, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002257, '阳西县', 441721, 10000244, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002258, '阳春市', 441781, 10000244, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002259, '清城区', 441802, 10000245, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002260, '清新区', 441803, 10000245, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002261, '佛冈县', 441821, 10000245, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10002262, '阳山县', 441823, 10000245, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002263, '连山壮族瑶族自治县', 441825, 10000245, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002264, '连南瑶族自治县', 441826, 10000245, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002265, '英德市', 441881, 10000245, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002266, '连州市', 441882, 10000245, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002267, '中堂镇', 441901, 10000246, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002268, '南城街道办事处', 441903, 10000246, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002269, '长安镇', 441904, 10000246, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002270, '东坑镇', 441905, 10000246, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002271, '樟木头镇', 441906, 10000246, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002272, '莞城街道办事处', 441907, 10000246, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002273, '石龙镇', 441908, 10000246, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002274, '桥头镇', 441909, 10000246, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002275, '万江街道办事处', 441910, 10000246, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002276, '麻涌镇', 441911, 10000246, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002277, '虎门镇', 441912, 10000246, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002278, '谢岗镇', 441913, 10000246, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002279, '石碣镇', 441914, 10000246, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002280, '茶山镇', 441915, 10000246, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002281, '东城街道办事处', 441916, 10000246, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002282, '洪梅镇', 441917, 10000246, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002283, '道滘镇', 441918, 10000246, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002284, '高埗镇', 441919, 10000246, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002285, '企石镇', 441920, 10000246, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002286, '凤岗镇', 441921, 10000246, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10002287, '大岭山镇', 441922, 10000246, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002288, '松山湖管委会', 441923, 10000246, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002289, '清溪镇', 441924, 10000246, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002290, '望牛墩镇', 441925, 10000246, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002291, '厚街镇', 441926, 10000246, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002292, '常平镇', 441927, 10000246, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002293, '寮步镇', 441928, 10000246, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002294, '石排镇', 441929, 10000246, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002295, '横沥镇', 441930, 10000246, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002296, '塘厦镇', 441931, 10000246, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002297, '黄江镇', 441932, 10000246, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002298, '大朗镇', 441933, 10000246, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002299, '东莞港', 441934, 10000246, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002300, '东莞生态园', 441935, 10000246, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002301, '沙田镇', 441990, 10000246, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002302, '南头镇', 442001, 10000247, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002303, '神湾镇', 442002, 10000247, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002304, '东凤镇', 442003, 10000247, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002305, '五桂山街道办事处', 442004, 10000247, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002306, '黄圃镇', 442005, 10000247, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002307, '小榄镇', 442006, 10000247, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002308, '石岐区街道办事处', 442007, 10000247, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002309, '横栏镇', 442008, 10000247, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002310, '三角镇', 442009, 10000247, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002311, '三乡镇', 442010, 10000247, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002312, '港口镇', 442011, 10000247, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002313, '沙溪镇', 442012, 10000247, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002314, '板芙镇', 442013, 10000247, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002315, '东升镇', 442015, 10000247, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002316, '阜沙镇', 442016, 10000247, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10002317, '民众镇', 442017, 10000247, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002318, '东区街道办事处', 442018, 10000247, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002319, '火炬开发区街道办事处', 442019, 10000247, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002320, '西区街道办事处', 442020, 10000247, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002321, '南区街道办事处', 442021, 10000247, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002322, '古镇镇', 442022, 10000247, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002323, '坦洲镇', 442023, 10000247, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002324, '大涌镇', 442024, 10000247, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002325, '南朗镇', 442025, 10000247, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002326, '湘桥区', 445102, 10000248, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002327, '潮安区', 445103, 10000248, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002328, '饶平县', 445122, 10000248, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10002329, '榕城区', 445202, 10000249, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10002330, '揭东区', 445203, 10000249, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002331, '揭西县', 445222, 10000249, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002332, '惠来县', 445224, 10000249, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002333, '普宁市', 445281, 10000249, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002334, '云城区', 445302, 10000250, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002335, '云安区', 445303, 10000250, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002336, '新兴县', 445321, 10000250, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002337, '郁南县', 445322, 10000250, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002338, '罗定市', 445381, 10000250, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002339, '兴宁区', 450102, 10000251, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002340, '青秀区', 450103, 10000251, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002341, '江南区', 450105, 10000251, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002342, '西乡塘区', 450107, 10000251, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002343, '良庆区', 450108, 10000251, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002344, '邕宁区', 450109, 10000251, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002345, '武鸣区', 450110, 10000251, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002346, '隆安县', 450123, 10000251, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002347, '马山县', 450124, 10000251, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002348, '上林县', 450125, 10000251, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002349, '宾阳县', 450126, 10000251, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002350, '横县', 450127, 10000251, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002351, '城中区', 450202, 10000252, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002352, '鱼峰区', 450203, 10000252, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002353, '柳南区', 450204, 10000252, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002354, '柳北区', 450205, 10000252, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002355, '柳江区', 450206, 10000252, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002356, '柳城县', 450222, 10000252, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002357, '鹿寨县', 450223, 10000252, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002358, '融安县', 450224, 10000252, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10002359, '融水苗族自治县', 450225, 10000252, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10002360, '三江侗族自治县', 450226, 10000252, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002361, '秀峰区', 450302, 10000253, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002362, '叠彩区', 450303, 10000253, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002363, '象山区', 450304, 10000253, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002364, '七星区', 450305, 10000253, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002365, '雁山区', 450311, 10000253, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002366, '临桂区', 450312, 10000253, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002367, '阳朔县', 450321, 10000253, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002368, '灵川县', 450323, 10000253, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002369, '全州县', 450324, 10000253, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002370, '兴安县', 450325, 10000253, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002371, '永福县', 450326, 10000253, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002372, '灌阳县', 450327, 10000253, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002373, '龙胜各族自治县', 450328, 10000253, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002374, '资源县', 450329, 10000253, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002375, '平乐县', 450330, 10000253, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002376, '恭城瑶族自治县', 450332, 10000253, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002377, '荔浦市', 450381, 10000253, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002378, '万秀区', 450403, 10000254, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002379, '长洲区', 450405, 10000254, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002380, '龙圩区', 450406, 10000254, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002381, '苍梧县', 450421, 10000254, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002382, '藤县', 450422, 10000254, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002383, '蒙山县', 450423, 10000254, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002384, '岑溪市', 450481, 10000254, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002385, '海城区', 450502, 10000255, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002386, '银海区', 450503, 10000255, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002387, '铁山港区', 450512, 10000255, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002388, '合浦县', 450521, 10000255, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002389, '港口区', 450602, 10000256, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002390, '防城区', 450603, 10000256, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10002391, '上思县', 450621, 10000256, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002392, '东兴市', 450681, 10000256, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002393, '钦南区', 450702, 10000257, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002394, '钦北区', 450703, 10000257, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002395, '灵山县', 450721, 10000257, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002396, '浦北县', 450722, 10000257, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002397, '港北区', 450802, 10000258, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002398, '港南区', 450803, 10000258, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002399, '覃塘区', 450804, 10000258, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002400, '平南县', 450821, 10000258, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002401, '桂平市', 450881, 10000258, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002402, '玉州区', 450902, 10000259, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002403, '福绵区', 450903, 10000259, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10002404, '容县', 450921, 10000259, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10002405, '陆川县', 450922, 10000259, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002406, '博白县', 450923, 10000259, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002407, '兴业县', 450924, 10000259, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002408, '北流市', 450981, 10000259, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002409, '右江区', 451002, 10000260, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002410, '田阳县', 451021, 10000260, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002411, '田东县', 451022, 10000260, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002412, '平果县', 451023, 10000260, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002413, '德保县', 451024, 10000260, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002414, '那坡县', 451026, 10000260, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002415, '凌云县', 451027, 10000260, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002416, '乐业县', 451028, 10000260, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002417, '田林县', 451029, 10000260, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002418, '西林县', 451030, 10000260, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002419, '隆林各族自治县', 451031, 10000260, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002420, '靖西市', 451081, 10000260, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002421, '八步区', 451102, 10000261, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002422, '平桂区', 451103, 10000261, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002423, '昭平县', 451121, 10000261, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002424, '钟山县', 451122, 10000261, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002425, '富川瑶族自治县', 451123, 10000261, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10002426, '金城江区', 451202, 10000262, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002427, '宜州区', 451203, 10000262, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002428, '南丹县', 451221, 10000262, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002429, '天峨县', 451222, 10000262, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002430, '凤山县', 451223, 10000262, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10002431, '东兰县', 451224, 10000262, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002432, '罗城仫佬族自治县', 451225, 10000262, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002433, '环江毛南族自治县', 451226, 10000262, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002434, '巴马瑶族自治县', 451227, 10000262, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002435, '都安瑶族自治县', 451228, 10000262, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002436, '大化瑶族自治县', 451229, 10000262, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002437, '兴宾区', 451302, 10000263, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002438, '忻城县', 451321, 10000263, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002439, '象州县', 451322, 10000263, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002440, '武宣县', 451323, 10000263, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002441, '金秀瑶族自治县', 451324, 10000263, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002442, '合山市', 451381, 10000263, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002443, '江州区', 451402, 10000264, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002444, '扶绥县', 451421, 10000264, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10002445, '宁明县', 451422, 10000264, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002446, '龙州县', 451423, 10000264, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002447, '大新县', 451424, 10000264, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002448, '天等县', 451425, 10000264, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002449, '凭祥市', 451481, 10000264, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002450, '秀英区', 460105, 10000265, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002451, '龙华区', 460106, 10000265, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002452, '琼山区', 460107, 10000265, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002453, '美兰区', 460108, 10000265, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002454, '海棠区', 460202, 10000266, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002455, '吉阳区', 460203, 10000266, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002456, '天涯区', 460204, 10000266, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002457, '崖州区', 460205, 10000266, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002458, '西沙群岛', 460321, 10000267, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002459, '南沙群岛', 460322, 10000267, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002460, '中沙群岛的岛礁及其海域', 460323, 10000267, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002461, '那大镇', 460401, 10000268, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002462, '和庆镇', 460402, 10000268, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002463, '南丰镇', 460403, 10000268, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002464, '大成镇', 460404, 10000268, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002465, '雅星镇', 460405, 10000268, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002466, '兰洋镇', 460406, 10000268, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002467, '光村镇', 460407, 10000268, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002468, '木棠镇', 460408, 10000268, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002469, '海头镇', 460409, 10000268, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002470, '峨蔓镇', 460410, 10000268, '3', 'E');
INSERT INTO `cmf_region_letter` VALUES (10002471, '王五镇', 460411, 10000268, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002472, '白马井镇', 460412, 10000268, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002473, '中和镇', 460413, 10000268, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002474, '排浦镇', 460414, 10000268, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002475, '东成镇', 460415, 10000268, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002476, '新州镇', 460416, 10000268, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002477, '洋浦经济开发区', 460417, 10000268, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002478, '华南热作学院', 460418, 10000268, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002479, '五指山市', 469001, 10000269, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002480, '琼海市', 469002, 10000269, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002481, '文昌市', 469005, 10000269, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002482, '万宁市', 469006, 10000269, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002483, '东方市', 469007, 10000269, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002484, '定安县', 469021, 10000269, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002485, '屯昌县', 469022, 10000269, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002486, '澄迈县', 469023, 10000269, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002487, '临高县', 469024, 10000269, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002488, '白沙黎族自治县', 469025, 10000269, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002489, '昌江黎族自治县', 469026, 10000269, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002490, '乐东黎族自治县', 469027, 10000269, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002491, '陵水黎族自治县', 469028, 10000269, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002492, '保亭黎族苗族自治县', 469029, 10000269, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002493, '琼中黎族苗族自治县', 469030, 10000269, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002494, '万州区', 500101, 10000270, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002495, '涪陵区', 500102, 10000270, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10002496, '渝中区', 500103, 10000270, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002497, '大渡口区', 500104, 10000270, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002498, '江北区', 500105, 10000270, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002499, '沙坪坝区', 500106, 10000270, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002500, '九龙坡区', 500107, 10000270, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002501, '南岸区', 500108, 10000270, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002502, '北碚区', 500109, 10000270, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002503, '綦江区', 500110, 10000270, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002504, '大足区', 500111, 10000270, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002505, '渝北区', 500112, 10000270, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002506, '巴南区', 500113, 10000270, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002507, '黔江区', 500114, 10000270, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002508, '长寿区', 500115, 10000270, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002509, '江津区', 500116, 10000270, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002510, '合川区', 500117, 10000270, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002511, '永川区', 500118, 10000270, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002512, '南川区', 500119, 10000270, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002513, '璧山区', 500120, 10000270, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002514, '铜梁区', 500151, 10000270, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002515, '潼南区', 500152, 10000270, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002516, '荣昌区', 500153, 10000270, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10002517, '开州区', 500154, 10000270, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10002518, '梁平区', 500155, 10000270, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002519, '武隆区', 500156, 10000270, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002520, '城口县', 500229, 10000271, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002521, '丰都县', 500230, 10000271, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10002522, '垫江县', 500231, 10000271, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002523, '忠县', 500233, 10000271, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002524, '云阳县', 500235, 10000271, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002525, '奉节县', 500236, 10000271, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10002526, '巫山县', 500237, 10000271, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002527, '巫溪县', 500238, 10000271, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002528, '石柱土家族自治县', 500240, 10000271, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002529, '秀山土家族苗族自治县', 500241, 10000271, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002530, '酉阳土家族苗族自治县', 500242, 10000271, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002531, '彭水苗族土家族自治县', 500243, 10000271, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002532, '锦江区', 510104, 10000272, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002533, '青羊区', 510105, 10000272, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002534, '金牛区', 510106, 10000272, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002535, '武侯区', 510107, 10000272, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002536, '成华区', 510108, 10000272, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002537, '龙泉驿区', 510112, 10000272, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002538, '青白江区', 510113, 10000272, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002539, '新都区', 510114, 10000272, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002540, '温江区', 510115, 10000272, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002541, '双流区', 510116, 10000272, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002542, '郫都区', 510117, 10000272, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002543, '金堂县', 510121, 10000272, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002544, '大邑县', 510129, 10000272, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002545, '蒲江县', 510131, 10000272, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002546, '新津县', 510132, 10000272, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002547, '都江堰市', 510181, 10000272, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002548, '彭州市', 510182, 10000272, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002549, '邛崃市', 510183, 10000272, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002550, '崇州市', 510184, 10000272, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002551, '简阳市', 510185, 10000272, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002552, '高新区', 510191, 10000272, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002553, '自流井区', 510302, 10000273, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002554, '贡井区', 510303, 10000273, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002555, '大安区', 510304, 10000273, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002556, '沿滩区', 510311, 10000273, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002557, '荣县', 510321, 10000273, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10002558, '富顺县', 510322, 10000273, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10002559, '东区', 510402, 10000274, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002560, '西区', 510403, 10000274, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002561, '仁和区', 510411, 10000274, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10002562, '米易县', 510421, 10000274, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002563, '盐边县', 510422, 10000274, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002564, '江阳区', 510502, 10000275, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002565, '纳溪区', 510503, 10000275, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002566, '龙马潭区', 510504, 10000275, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002567, '泸县', 510521, 10000275, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002568, '合江县', 510522, 10000275, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002569, '叙永县', 510524, 10000275, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002570, '古蔺县', 510525, 10000275, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002571, '旌阳区', 510603, 10000276, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002572, '罗江区', 510604, 10000276, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002573, '中江县', 510623, 10000276, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002574, '广汉市', 510681, 10000276, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002575, '什邡市', 510682, 10000276, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002576, '绵竹市', 510683, 10000276, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002577, '涪城区', 510703, 10000277, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10002578, '游仙区', 510704, 10000277, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002579, '安州区', 510705, 10000277, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10002580, '三台县', 510722, 10000277, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002581, '盐亭县', 510723, 10000277, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002582, '梓潼县', 510725, 10000277, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002583, '北川羌族自治县', 510726, 10000277, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002584, '平武县', 510727, 10000277, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002585, '江油市', 510781, 10000277, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002586, '高新区', 510791, 10000277, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002587, '利州区', 510802, 10000278, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002588, '昭化区', 510811, 10000278, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002589, '朝天区', 510812, 10000278, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002590, '旺苍县', 510821, 10000278, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002591, '青川县', 510822, 10000278, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002592, '剑阁县', 510823, 10000278, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002593, '苍溪县', 510824, 10000278, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002594, '船山区', 510903, 10000279, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002595, '安居区', 510904, 10000279, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10002596, '蓬溪县', 510921, 10000279, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002597, '射洪县', 510922, 10000279, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002598, '大英县', 510923, 10000279, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002599, '市中区', 511002, 10000280, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002600, '东兴区', 511011, 10000280, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002601, '威远县', 511024, 10000280, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002602, '资中县', 511025, 10000280, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002603, '隆昌市', 511083, 10000280, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002604, '市中区', 511102, 10000281, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002605, '沙湾区', 511111, 10000281, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002606, '五通桥区', 511112, 10000281, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002607, '金口河区', 511113, 10000281, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002608, '犍为县', 511123, 10000281, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002609, '井研县', 511124, 10000281, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002610, '夹江县', 511126, 10000281, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002611, '沐川县', 511129, 10000281, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002612, '峨边彝族自治县', 511132, 10000281, '3', 'E');
INSERT INTO `cmf_region_letter` VALUES (10002613, '马边彝族自治县', 511133, 10000281, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002614, '峨眉山市', 511181, 10000281, '3', 'E');
INSERT INTO `cmf_region_letter` VALUES (10002615, '顺庆区', 511302, 10000282, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002616, '高坪区', 511303, 10000282, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002617, '嘉陵区', 511304, 10000282, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002618, '南部县', 511321, 10000282, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002619, '营山县', 511322, 10000282, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002620, '蓬安县', 511323, 10000282, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002621, '仪陇县', 511324, 10000282, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002622, '西充县', 511325, 10000282, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002623, '阆中市', 511381, 10000282, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002624, '东坡区', 511402, 10000283, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002625, '彭山区', 511403, 10000283, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002626, '仁寿县', 511421, 10000283, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10002627, '洪雅县', 511423, 10000283, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002628, '丹棱县', 511424, 10000283, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002629, '青神县', 511425, 10000283, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002630, '翠屏区', 511502, 10000284, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002631, '南溪区', 511503, 10000284, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002632, '叙州区', 511504, 10000284, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002633, '江安县', 511523, 10000284, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002634, '长宁县', 511524, 10000284, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002635, '高县', 511525, 10000284, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002636, '珙县', 511526, 10000284, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002637, '筠连县', 511527, 10000284, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002638, '兴文县', 511528, 10000284, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002639, '屏山县', 511529, 10000284, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002640, '广安区', 511602, 10000285, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002641, '前锋区', 511603, 10000285, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002642, '岳池县', 511621, 10000285, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002643, '武胜县', 511622, 10000285, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002644, '邻水县', 511623, 10000285, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002645, '华蓥市', 511681, 10000285, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002646, '通川区', 511702, 10000286, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002647, '达川区', 511703, 10000286, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002648, '宣汉县', 511722, 10000286, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002649, '开江县', 511723, 10000286, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10002650, '大竹县', 511724, 10000286, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002651, '渠县', 511725, 10000286, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002652, '万源市', 511781, 10000286, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002653, '雨城区', 511802, 10000287, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002654, '名山区', 511803, 10000287, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002655, '荥经县', 511822, 10000287, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002656, '汉源县', 511823, 10000287, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002657, '石棉县', 511824, 10000287, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002658, '天全县', 511825, 10000287, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002659, '芦山县', 511826, 10000287, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002660, '宝兴县', 511827, 10000287, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002661, '巴州区', 511902, 10000288, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002662, '恩阳区', 511903, 10000288, '3', 'E');
INSERT INTO `cmf_region_letter` VALUES (10002663, '通江县', 511921, 10000288, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002664, '南江县', 511922, 10000288, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002665, '平昌县', 511923, 10000288, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002666, '雁江区', 512002, 10000289, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002667, '安岳县', 512021, 10000289, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10002668, '乐至县', 512022, 10000289, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002669, '马尔康市', 513201, 10000290, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002670, '汶川县', 513221, 10000290, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002671, '理县', 513222, 10000290, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002672, '茂县', 513223, 10000290, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002673, '松潘县', 513224, 10000290, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002674, '九寨沟县', 513225, 10000290, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002675, '金川县', 513226, 10000290, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002676, '小金县', 513227, 10000290, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002677, '黑水县', 513228, 10000290, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002678, '壤塘县', 513230, 10000290, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10002679, '阿坝县', 513231, 10000290, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10002680, '若尔盖县', 513232, 10000290, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10002681, '红原县', 513233, 10000290, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002682, '康定市', 513301, 10000291, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10002683, '泸定县', 513322, 10000291, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002684, '丹巴县', 513323, 10000291, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002685, '九龙县', 513324, 10000291, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002686, '雅江县', 513325, 10000291, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002687, '道孚县', 513326, 10000291, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002688, '炉霍县', 513327, 10000291, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002689, '甘孜县', 513328, 10000291, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002690, '新龙县', 513329, 10000291, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002691, '德格县', 513330, 10000291, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002692, '白玉县', 513331, 10000291, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002693, '石渠县', 513332, 10000291, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002694, '色达县', 513333, 10000291, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002695, '理塘县', 513334, 10000291, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002696, '巴塘县', 513335, 10000291, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002697, '乡城县', 513336, 10000291, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002698, '稻城县', 513337, 10000291, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002699, '得荣县', 513338, 10000291, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002700, '西昌市', 513401, 10000292, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002701, '木里藏族自治县', 513422, 10000292, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002702, '盐源县', 513423, 10000292, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002703, '德昌县', 513424, 10000292, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002704, '会理县', 513425, 10000292, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002705, '会东县', 513426, 10000292, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002706, '宁南县', 513427, 10000292, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002707, '普格县', 513428, 10000292, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002708, '布拖县', 513429, 10000292, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002709, '金阳县', 513430, 10000292, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002710, '昭觉县', 513431, 10000292, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002711, '喜德县', 513432, 10000292, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002712, '冕宁县', 513433, 10000292, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002713, '越西县', 513434, 10000292, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002714, '甘洛县', 513435, 10000292, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002715, '美姑县', 513436, 10000292, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002716, '雷波县', 513437, 10000292, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002717, '南明区', 520102, 10000293, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002718, '云岩区', 520103, 10000293, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002719, '花溪区', 520111, 10000293, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002720, '乌当区', 520112, 10000293, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002721, '白云区', 520113, 10000293, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002722, '观山湖区', 520115, 10000293, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002723, '开阳县', 520121, 10000293, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10002724, '息烽县', 520122, 10000293, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002725, '修文县', 520123, 10000293, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002726, '清镇市', 520181, 10000293, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002727, '钟山区', 520201, 10000294, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002728, '六枝特区', 520203, 10000294, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002729, '水城县', 520221, 10000294, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002730, '盘州市', 520281, 10000294, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002731, '红花岗区', 520302, 10000295, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002732, '汇川区', 520303, 10000295, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002733, '播州区', 520304, 10000295, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002734, '桐梓县', 520322, 10000295, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002735, '绥阳县', 520323, 10000295, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002736, '正安县', 520324, 10000295, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002737, '道真仡佬族苗族自治县', 520325, 10000295, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002738, '务川仡佬族苗族自治县', 520326, 10000295, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002739, '凤冈县', 520327, 10000295, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10002740, '湄潭县', 520328, 10000295, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002741, '余庆县', 520329, 10000295, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002742, '习水县', 520330, 10000295, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002743, '赤水市', 520381, 10000295, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002744, '仁怀市', 520382, 10000295, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10002745, '西秀区', 520402, 10000296, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002746, '平坝区', 520403, 10000296, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002747, '普定县', 520422, 10000296, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002748, '镇宁布依族苗族自治县', 520423, 10000296, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002749, '关岭布依族苗族自治县', 520424, 10000296, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002750, '紫云苗族布依族自治县', 520425, 10000296, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002751, '七星关区', 520502, 10000297, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002752, '大方县', 520521, 10000297, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002753, '黔西县', 520522, 10000297, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002754, '金沙县', 520523, 10000297, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002755, '织金县', 520524, 10000297, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002756, '纳雍县', 520525, 10000297, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002757, '威宁彝族回族苗族自治县', 520526, 10000297, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002758, '赫章县', 520527, 10000297, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002759, '碧江区', 520602, 10000298, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002760, '万山区', 520603, 10000298, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002761, '江口县', 520621, 10000298, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002762, '玉屏侗族自治县', 520622, 10000298, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002763, '石阡县', 520623, 10000298, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002764, '思南县', 520624, 10000298, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002765, '印江土家族苗族自治县', 520625, 10000298, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002766, '德江县', 520626, 10000298, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002767, '沿河土家族自治县', 520627, 10000298, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002768, '松桃苗族自治县', 520628, 10000298, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002769, '兴义市', 522301, 10000299, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002770, '兴仁市', 522302, 10000299, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002771, '普安县', 522323, 10000299, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002772, '晴隆县', 522324, 10000299, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002773, '贞丰县', 522325, 10000299, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002774, '望谟县', 522326, 10000299, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002775, '册亨县', 522327, 10000299, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002776, '安龙县', 522328, 10000299, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10002777, '凯里市', 522601, 10000300, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10002778, '黄平县', 522622, 10000300, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002779, '施秉县', 522623, 10000300, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002780, '三穗县', 522624, 10000300, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002781, '镇远县', 522625, 10000300, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002782, '岑巩县', 522626, 10000300, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002783, '天柱县', 522627, 10000300, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002784, '锦屏县', 522628, 10000300, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002785, '剑河县', 522629, 10000300, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002786, '台江县', 522630, 10000300, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002787, '黎平县', 522631, 10000300, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002788, '榕江县', 522632, 10000300, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10002789, '从江县', 522633, 10000300, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002790, '雷山县', 522634, 10000300, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002791, '麻江县', 522635, 10000300, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002792, '丹寨县', 522636, 10000300, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002793, '都匀市', 522701, 10000301, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002794, '福泉市', 522702, 10000301, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10002795, '荔波县', 522722, 10000301, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002796, '贵定县', 522723, 10000301, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002797, '瓮安县', 522725, 10000301, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002798, '独山县', 522726, 10000301, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002799, '平塘县', 522727, 10000301, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002800, '罗甸县', 522728, 10000301, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002801, '长顺县', 522729, 10000301, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002802, '龙里县', 522730, 10000301, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002803, '惠水县', 522731, 10000301, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002804, '三都水族自治县', 522732, 10000301, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002805, '五华区', 530102, 10000302, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002806, '盘龙区', 530103, 10000302, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002807, '官渡区', 530111, 10000302, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002808, '西山区', 530112, 10000302, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002809, '东川区', 530113, 10000302, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002810, '呈贡区', 530114, 10000302, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002811, '晋宁区', 530115, 10000302, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002812, '富民县', 530124, 10000302, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10002813, '宜良县', 530125, 10000302, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002814, '石林彝族自治县', 530126, 10000302, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002815, '嵩明县', 530127, 10000302, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002816, '禄劝彝族苗族自治县', 530128, 10000302, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002817, '寻甸回族彝族自治县', 530129, 10000302, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002818, '安宁市', 530181, 10000302, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10002819, '麒麟区', 530302, 10000303, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002820, '沾益区', 530303, 10000303, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002821, '马龙区', 530304, 10000303, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002822, '陆良县', 530322, 10000303, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002823, '师宗县', 530323, 10000303, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002824, '罗平县', 530324, 10000303, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002825, '富源县', 530325, 10000303, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10002826, '会泽县', 530326, 10000303, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002827, '宣威市', 530381, 10000303, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002828, '红塔区', 530402, 10000304, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002829, '江川区', 530403, 10000304, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002830, '澄江县', 530422, 10000304, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002831, '通海县', 530423, 10000304, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002832, '华宁县', 530424, 10000304, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002833, '易门县', 530425, 10000304, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002834, '峨山彝族自治县', 530426, 10000304, '3', 'E');
INSERT INTO `cmf_region_letter` VALUES (10002835, '新平彝族傣族自治县', 530427, 10000304, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002836, '元江哈尼族彝族傣族自治县', 530428, 10000304, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002837, '隆阳区', 530502, 10000305, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002838, '施甸县', 530521, 10000305, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002839, '龙陵县', 530523, 10000305, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002840, '昌宁县', 530524, 10000305, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002841, '腾冲市', 530581, 10000305, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10002842, '昭阳区', 530602, 10000306, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002843, '鲁甸县', 530621, 10000306, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002844, '巧家县', 530622, 10000306, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002845, '盐津县', 530623, 10000306, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002846, '大关县', 530624, 10000306, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002847, '永善县', 530625, 10000306, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002848, '绥江县', 530626, 10000306, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002849, '镇雄县', 530627, 10000306, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002850, '彝良县', 530628, 10000306, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002851, '威信县', 530629, 10000306, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002852, '水富市', 530681, 10000306, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002853, '古城区', 530702, 10000307, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002854, '玉龙纳西族自治县', 530721, 10000307, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002855, '永胜县', 530722, 10000307, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002856, '华坪县', 530723, 10000307, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002857, '宁蒗彝族自治县', 530724, 10000307, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002858, '思茅区', 530802, 10000308, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002859, '宁洱哈尼族彝族自治县', 530821, 10000308, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002860, '墨江哈尼族自治县', 530822, 10000308, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002861, '景东彝族自治县', 530823, 10000308, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002862, '景谷傣族彝族自治县', 530824, 10000308, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002863, '镇沅彝族哈尼族拉祜族自治县', 530825, 10000308, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002864, '江城哈尼族彝族自治县', 530826, 10000308, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002865, '孟连傣族拉祜族佤族自治县', 530827, 10000308, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002866, '澜沧拉祜族自治县', 530828, 10000308, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002867, '西盟佤族自治县', 530829, 10000308, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002868, '临翔区', 530902, 10000309, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002869, '凤庆县', 530921, 10000309, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10002870, '云县', 530922, 10000309, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002871, '永德县', 530923, 10000309, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002872, '镇康县', 530924, 10000309, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002873, '双江拉祜族佤族布朗族傣族自治县', 530925, 10000309, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002874, '耿马傣族佤族自治县', 530926, 10000309, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002875, '沧源佤族自治县', 530927, 10000309, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002876, '楚雄市', 532301, 10000310, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002877, '双柏县', 532322, 10000310, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002878, '牟定县', 532323, 10000310, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002879, '南华县', 532324, 10000310, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002880, '姚安县', 532325, 10000310, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002881, '大姚县', 532326, 10000310, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002882, '永仁县', 532327, 10000310, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002883, '元谋县', 532328, 10000310, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002884, '武定县', 532329, 10000310, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002885, '禄丰县', 532331, 10000310, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002886, '个旧市', 532501, 10000311, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002887, '开远市', 532502, 10000311, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10002888, '蒙自市', 532503, 10000311, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002889, '弥勒市', 532504, 10000311, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002890, '屏边苗族自治县', 532523, 10000311, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10002891, '建水县', 532524, 10000311, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002892, '石屏县', 532525, 10000311, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002893, '泸西县', 532527, 10000311, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002894, '元阳县', 532528, 10000311, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002895, '红河县', 532529, 10000311, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002896, '金平苗族瑶族傣族自治县', 532530, 10000311, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002897, '绿春县', 532531, 10000311, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002898, '河口瑶族自治县', 532532, 10000311, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002899, '文山市', 532601, 10000312, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002900, '砚山县', 532622, 10000312, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002901, '西畴县', 532623, 10000312, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002902, '麻栗坡县', 532624, 10000312, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002903, '马关县', 532625, 10000312, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002904, '丘北县', 532626, 10000312, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002905, '广南县', 532627, 10000312, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002906, '富宁县', 532628, 10000312, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10002907, '景洪市', 532801, 10000313, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002908, '勐海县', 532822, 10000313, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002909, '勐腊县', 532823, 10000313, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002910, '大理市', 532901, 10000314, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002911, '漾濞彝族自治县', 532922, 10000314, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002912, '祥云县', 532923, 10000314, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002913, '宾川县', 532924, 10000314, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002914, '弥渡县', 532925, 10000314, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002915, '南涧彝族自治县', 532926, 10000314, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002916, '巍山彝族回族自治县', 532927, 10000314, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002917, '永平县', 532928, 10000314, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002918, '云龙县', 532929, 10000314, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002919, '洱源县', 532930, 10000314, '3', 'E');
INSERT INTO `cmf_region_letter` VALUES (10002920, '剑川县', 532931, 10000314, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002921, '鹤庆县', 532932, 10000314, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10002922, '瑞丽市', 533102, 10000315, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10002923, '芒市', 533103, 10000315, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002924, '梁河县', 533122, 10000315, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002925, '盈江县', 533123, 10000315, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002926, '陇川县', 533124, 10000315, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002927, '泸水市', 533301, 10000316, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002928, '福贡县', 533323, 10000316, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10002929, '贡山独龙族怒族自治县', 533324, 10000316, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002930, '兰坪白族普米族自治县', 533325, 10000316, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002931, '香格里拉市', 533401, 10000317, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002932, '德钦县', 533422, 10000317, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002933, '维西傈僳族自治县', 533423, 10000317, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10002934, '城关区', 540102, 10000318, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002935, '堆龙德庆区', 540103, 10000318, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002936, '达孜区', 540104, 10000318, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002937, '林周县', 540121, 10000318, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002938, '当雄县', 540122, 10000318, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002939, '尼木县', 540123, 10000318, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002940, '曲水县', 540124, 10000318, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002941, '墨竹工卡县', 540127, 10000318, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002942, '桑珠孜区', 540202, 10000319, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002943, '南木林县', 540221, 10000319, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002944, '江孜县', 540222, 10000319, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002945, '定日县', 540223, 10000319, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002946, '萨迦县', 540224, 10000319, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002947, '拉孜县', 540225, 10000319, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002948, '昂仁县', 540226, 10000319, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10002949, '谢通门县', 540227, 10000319, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10002950, '白朗县', 540228, 10000319, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002951, '仁布县', 540229, 10000319, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10002952, '康马县', 540230, 10000319, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10002953, '定结县', 540231, 10000319, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002954, '仲巴县', 540232, 10000319, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002955, '亚东县', 540233, 10000319, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10002956, '吉隆县', 540234, 10000319, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002957, '聂拉木县', 540235, 10000319, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002958, '萨嘎县', 540236, 10000319, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002959, '岗巴县', 540237, 10000319, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002960, '卡若区', 540302, 10000320, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10002961, '江达县', 540321, 10000320, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002962, '贡觉县', 540322, 10000320, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002963, '类乌齐县', 540323, 10000320, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002964, '丁青县', 540324, 10000320, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10002965, '察雅县', 540325, 10000320, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002966, '八宿县', 540326, 10000320, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002967, '左贡县', 540327, 10000320, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002968, '芒康县', 540328, 10000320, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002969, '洛隆县', 540329, 10000320, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002970, '边坝县', 540330, 10000320, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002971, '巴宜区', 540402, 10000321, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002972, '工布江达县', 540421, 10000321, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002973, '米林县', 540422, 10000321, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002974, '墨脱县', 540423, 10000321, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10002975, '波密县', 540424, 10000321, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002976, '察隅县', 540425, 10000321, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002977, '朗县', 540426, 10000321, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002978, '乃东区', 540502, 10000322, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002979, '扎囊县', 540521, 10000322, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10002980, '贡嘎县', 540522, 10000322, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10002981, '桑日县', 540523, 10000322, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002982, '琼结县', 540524, 10000322, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002983, '曲松县', 540525, 10000322, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10002984, '措美县', 540526, 10000322, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002985, '洛扎县', 540527, 10000322, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002986, '加查县', 540528, 10000322, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002987, '隆子县', 540529, 10000322, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002988, '错那县', 540530, 10000322, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10002989, '浪卡子县', 540531, 10000322, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10002990, '色尼区', 540602, 10000323, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002991, '嘉黎县', 540621, 10000323, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10002992, '比如县', 540622, 10000323, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002993, '聂荣县', 540623, 10000323, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10002994, '安多县', 540624, 10000323, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10002995, '申扎县', 540625, 10000323, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002996, '索县', 540626, 10000323, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10002997, '班戈县', 540627, 10000323, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002998, '巴青县', 540628, 10000323, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10002999, '尼玛县', 540629, 10000323, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003000, '双湖县', 540630, 10000323, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003001, '普兰县', 542521, 10000324, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10003002, '札达县', 542522, 10000324, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003003, '噶尔县', 542523, 10000324, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003004, '日土县', 542524, 10000324, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10003005, '革吉县', 542525, 10000324, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003006, '改则县', 542526, 10000324, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003007, '措勤县', 542527, 10000324, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003008, '新城区', 610102, 10000325, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003009, '碑林区', 610103, 10000325, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003010, '莲湖区', 610104, 10000325, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003011, '灞桥区', 610111, 10000325, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003012, '未央区', 610112, 10000325, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003013, '雁塔区', 610113, 10000325, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003014, '阎良区', 610114, 10000325, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003015, '临潼区', 610115, 10000325, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003016, '长安区', 610116, 10000325, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003017, '高陵区', 610117, 10000325, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003018, '鄠邑区', 610118, 10000325, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003019, '蓝田县', 610122, 10000325, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003020, '周至县', 610124, 10000325, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003021, '王益区', 610202, 10000326, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003022, '印台区', 610203, 10000326, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003023, '耀州区', 610204, 10000326, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003024, '宜君县', 610222, 10000326, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003025, '渭滨区', 610302, 10000327, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003026, '金台区', 610303, 10000327, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003027, '陈仓区', 610304, 10000327, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003028, '凤翔县', 610322, 10000327, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10003029, '岐山县', 610323, 10000327, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003030, '扶风县', 610324, 10000327, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10003031, '眉县', 610326, 10000327, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003032, '陇县', 610327, 10000327, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003033, '千阳县', 610328, 10000327, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003034, '麟游县', 610329, 10000327, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003035, '凤县', 610330, 10000327, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10003036, '太白县', 610331, 10000327, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003037, '秦都区', 610402, 10000328, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003038, '杨陵区', 610403, 10000328, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003039, '渭城区', 610404, 10000328, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003040, '三原县', 610422, 10000328, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003041, '泾阳县', 610423, 10000328, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003042, '乾县', 610424, 10000328, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003043, '礼泉县', 610425, 10000328, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003044, '永寿县', 610426, 10000328, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003045, '长武县', 610428, 10000328, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003046, '旬邑县', 610429, 10000328, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003047, '淳化县', 610430, 10000328, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003048, '武功县', 610431, 10000328, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003049, '兴平市', 610481, 10000328, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003050, '彬州市', 610482, 10000328, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003051, '临渭区', 610502, 10000329, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003052, '华州区', 610503, 10000329, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003053, '潼关县', 610522, 10000329, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003054, '大荔县', 610523, 10000329, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003055, '合阳县', 610524, 10000329, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003056, '澄城县', 610525, 10000329, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003057, '蒲城县', 610526, 10000329, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10003058, '白水县', 610527, 10000329, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003059, '富平县', 610528, 10000329, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10003060, '韩城市', 610581, 10000329, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003061, '华阴市', 610582, 10000329, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003062, '宝塔区', 610602, 10000330, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003063, '安塞区', 610603, 10000330, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10003064, '延长县', 610621, 10000330, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003065, '延川县', 610622, 10000330, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003066, '子长县', 610623, 10000330, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003067, '志丹县', 610625, 10000330, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003068, '吴起县', 610626, 10000330, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003069, '甘泉县', 610627, 10000330, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003070, '富县', 610628, 10000330, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10003071, '洛川县', 610629, 10000330, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003072, '宜川县', 610630, 10000330, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003073, '黄龙县', 610631, 10000330, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003074, '黄陵县', 610632, 10000330, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003075, '汉台区', 610702, 10000331, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003076, '南郑区', 610703, 10000331, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003077, '城固县', 610722, 10000331, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003078, '洋县', 610723, 10000331, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003079, '西乡县', 610724, 10000331, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003080, '勉县', 610725, 10000331, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003081, '宁强县', 610726, 10000331, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003082, '略阳县', 610727, 10000331, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003083, '镇巴县', 610728, 10000331, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003084, '留坝县', 610729, 10000331, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003085, '佛坪县', 610730, 10000331, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10003086, '榆阳区', 610802, 10000332, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003087, '横山区', 610803, 10000332, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003088, '府谷县', 610822, 10000332, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10003089, '靖边县', 610824, 10000332, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003090, '定边县', 610825, 10000332, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003091, '绥德县', 610826, 10000332, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003092, '米脂县', 610827, 10000332, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003093, '佳县', 610828, 10000332, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003094, '吴堡县', 610829, 10000332, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003095, '清涧县', 610830, 10000332, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003096, '子洲县', 610831, 10000332, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003097, '神木市', 610881, 10000332, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003098, '汉滨区', 610902, 10000333, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003099, '汉阴县', 610921, 10000333, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003100, '石泉县', 610922, 10000333, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003101, '宁陕县', 610923, 10000333, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003102, '紫阳县', 610924, 10000333, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003103, '岚皋县', 610925, 10000333, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003104, '平利县', 610926, 10000333, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10003105, '镇坪县', 610927, 10000333, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003106, '旬阳县', 610928, 10000333, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003107, '白河县', 610929, 10000333, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003108, '商州区', 611002, 10000334, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003109, '洛南县', 611021, 10000334, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003110, '丹凤县', 611022, 10000334, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003111, '商南县', 611023, 10000334, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003112, '山阳县', 611024, 10000334, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003113, '镇安县', 611025, 10000334, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003114, '柞水县', 611026, 10000334, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003115, '城关区', 620102, 10000335, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003116, '七里河区', 620103, 10000335, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003117, '西固区', 620104, 10000335, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003118, '安宁区', 620105, 10000335, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10003119, '红古区', 620111, 10000335, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003120, '永登县', 620121, 10000335, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003121, '皋兰县', 620122, 10000335, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003122, '榆中县', 620123, 10000335, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003123, '市辖区', 620201, 10000336, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003124, '雄关区', 620290, 10000336, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003125, '长城区', 620291, 10000336, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003126, '镜铁区', 620292, 10000336, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003127, '新城镇', 620293, 10000336, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003128, '峪泉镇', 620294, 10000336, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003129, '文殊镇', 620295, 10000336, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003130, '金川区', 620302, 10000337, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003131, '永昌县', 620321, 10000337, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003132, '白银区', 620402, 10000338, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003133, '平川区', 620403, 10000338, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10003134, '靖远县', 620421, 10000338, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003135, '会宁县', 620422, 10000338, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003136, '景泰县', 620423, 10000338, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003137, '秦州区', 620502, 10000339, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003138, '麦积区', 620503, 10000339, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003139, '清水县', 620521, 10000339, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003140, '秦安县', 620522, 10000339, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003141, '甘谷县', 620523, 10000339, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003142, '武山县', 620524, 10000339, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003143, '张家川回族自治县', 620525, 10000339, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003144, '凉州区', 620602, 10000340, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003145, '民勤县', 620621, 10000340, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003146, '古浪县', 620622, 10000340, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003147, '天祝藏族自治县', 620623, 10000340, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003148, '甘州区', 620702, 10000341, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003149, '肃南裕固族自治县', 620721, 10000341, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003150, '民乐县', 620722, 10000341, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003151, '临泽县', 620723, 10000341, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003152, '高台县', 620724, 10000341, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003153, '山丹县', 620725, 10000341, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003154, '崆峒区', 620802, 10000342, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10003155, '泾川县', 620821, 10000342, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003156, '灵台县', 620822, 10000342, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003157, '崇信县', 620823, 10000342, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003158, '庄浪县', 620825, 10000342, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003159, '静宁县', 620826, 10000342, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003160, '华亭市', 620881, 10000342, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003161, '肃州区', 620902, 10000343, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003162, '金塔县', 620921, 10000343, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003163, '瓜州县', 620922, 10000343, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003164, '肃北蒙古族自治县', 620923, 10000343, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003165, '阿克塞哈萨克族自治县', 620924, 10000343, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10003166, '玉门市', 620981, 10000343, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003167, '敦煌市', 620982, 10000343, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003168, '西峰区', 621002, 10000344, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003169, '庆城县', 621021, 10000344, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003170, '环县', 621022, 10000344, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003171, '华池县', 621023, 10000344, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003172, '合水县', 621024, 10000344, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003173, '正宁县', 621025, 10000344, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003174, '宁县', 621026, 10000344, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003175, '镇原县', 621027, 10000344, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003176, '安定区', 621102, 10000345, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10003177, '通渭县', 621121, 10000345, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003178, '陇西县', 621122, 10000345, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003179, '渭源县', 621123, 10000345, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003180, '临洮县', 621124, 10000345, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003181, '漳县', 621125, 10000345, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003182, '岷县', 621126, 10000345, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003183, '武都区', 621202, 10000346, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003184, '成县', 621221, 10000346, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003185, '文县', 621222, 10000346, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003186, '宕昌县', 621223, 10000346, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003187, '康县', 621224, 10000346, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10003188, '西和县', 621225, 10000346, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003189, '礼县', 621226, 10000346, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003190, '徽县', 621227, 10000346, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003191, '两当县', 621228, 10000346, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003192, '临夏市', 622901, 10000347, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003193, '临夏县', 622921, 10000347, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003194, '康乐县', 622922, 10000347, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10003195, '永靖县', 622923, 10000347, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003196, '广河县', 622924, 10000347, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003197, '和政县', 622925, 10000347, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003198, '东乡族自治县', 622926, 10000347, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003199, '积石山保安族东乡族撒拉族自治县', 622927, 10000347, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003200, '合作市', 623001, 10000348, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003201, '临潭县', 623021, 10000348, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003202, '卓尼县', 623022, 10000348, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003203, '舟曲县', 623023, 10000348, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003204, '迭部县', 623024, 10000348, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003205, '玛曲县', 623025, 10000348, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003206, '碌曲县', 623026, 10000348, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003207, '夏河县', 623027, 10000348, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003208, '城东区', 630102, 10000349, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003209, '城中区', 630103, 10000349, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003210, '城西区', 630104, 10000349, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003211, '城北区', 630105, 10000349, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003212, '大通回族土族自治县', 630121, 10000349, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003213, '湟中县', 630122, 10000349, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003214, '湟源县', 630123, 10000349, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003215, '乐都区', 630202, 10000350, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003216, '平安区', 630203, 10000350, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10003217, '民和回族土族自治县', 630222, 10000350, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003218, '互助土族自治县', 630223, 10000350, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003219, '化隆回族自治县', 630224, 10000350, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003220, '循化撒拉族自治县', 630225, 10000350, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003221, '门源回族自治县', 632221, 10000351, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003222, '祁连县', 632222, 10000351, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003223, '海晏县', 632223, 10000351, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003224, '刚察县', 632224, 10000351, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003225, '同仁县', 632321, 10000352, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003226, '尖扎县', 632322, 10000352, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003227, '泽库县', 632323, 10000352, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003228, '河南蒙古族自治县', 632324, 10000352, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003229, '共和县', 632521, 10000353, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003230, '同德县', 632522, 10000353, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003231, '贵德县', 632523, 10000353, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003232, '兴海县', 632524, 10000353, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003233, '贵南县', 632525, 10000353, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003234, '玛沁县', 632621, 10000354, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003235, '班玛县', 632622, 10000354, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003236, '甘德县', 632623, 10000354, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003237, '达日县', 632624, 10000354, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003238, '久治县', 632625, 10000354, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003239, '玛多县', 632626, 10000354, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003240, '玉树市', 632701, 10000355, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003241, '杂多县', 632722, 10000355, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003242, '称多县', 632723, 10000355, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003243, '治多县', 632724, 10000355, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003244, '囊谦县', 632725, 10000355, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003245, '曲麻莱县', 632726, 10000355, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003246, '格尔木市', 632801, 10000356, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003247, '德令哈市', 632802, 10000356, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003248, '茫崖市', 632803, 10000356, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003249, '乌兰县', 632821, 10000356, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003250, '都兰县', 632822, 10000356, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003251, '天峻县', 632823, 10000356, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003252, '兴庆区', 640104, 10000357, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003253, '西夏区', 640105, 10000357, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003254, '金凤区', 640106, 10000357, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003255, '永宁县', 640121, 10000357, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003256, '贺兰县', 640122, 10000357, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003257, '灵武市', 640181, 10000357, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003258, '大武口区', 640202, 10000358, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003259, '惠农区', 640205, 10000358, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003260, '平罗县', 640221, 10000358, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10003261, '利通区', 640302, 10000359, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003262, '红寺堡区', 640303, 10000359, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003263, '盐池县', 640323, 10000359, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003264, '同心县', 640324, 10000359, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003265, '青铜峡市', 640381, 10000359, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003266, '原州区', 640402, 10000360, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003267, '西吉县', 640422, 10000360, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003268, '隆德县', 640423, 10000360, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003269, '泾源县', 640424, 10000360, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003270, '彭阳县', 640425, 10000360, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10003271, '沙坡头区', 640502, 10000361, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003272, '中宁县', 640521, 10000361, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003273, '海原县', 640522, 10000361, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003274, '天山区', 650102, 10000362, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003275, '沙依巴克区', 650103, 10000362, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003276, '新市区', 650104, 10000362, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003277, '水磨沟区', 650105, 10000362, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003278, '头屯河区', 650106, 10000362, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003279, '达坂城区', 650107, 10000362, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003280, '米东区', 650109, 10000362, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003281, '乌鲁木齐县', 650121, 10000362, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003282, '独山子区', 650202, 10000363, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003283, '克拉玛依区', 650203, 10000363, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10003284, '白碱滩区', 650204, 10000363, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003285, '乌尔禾区', 650205, 10000363, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003286, '高昌区', 650402, 10000364, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003287, '鄯善县', 650421, 10000364, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003288, '托克逊县', 650422, 10000364, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003289, '伊州区', 650502, 10000365, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003290, '巴里坤哈萨克自治县', 650521, 10000365, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003291, '伊吾县', 650522, 10000365, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003292, '昌吉市', 652301, 10000366, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003293, '阜康市', 652302, 10000366, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10003294, '呼图壁县', 652323, 10000366, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003295, '玛纳斯县', 652324, 10000366, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003296, '奇台县', 652325, 10000366, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003297, '吉木萨尔县', 652327, 10000366, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003298, '木垒哈萨克自治县', 652328, 10000366, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003299, '博乐市', 652701, 10000367, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003300, '阿拉山口市', 652702, 10000367, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10003301, '精河县', 652722, 10000367, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003302, '温泉县', 652723, 10000367, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003303, '库尔勒市', 652801, 10000368, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10003304, '轮台县', 652822, 10000368, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003305, '尉犁县', 652823, 10000368, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003306, '若羌县', 652824, 10000368, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10003307, '且末县', 652825, 10000368, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003308, '焉耆回族自治县', 652826, 10000368, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003309, '和静县', 652827, 10000368, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003310, '和硕县', 652828, 10000368, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003311, '博湖县', 652829, 10000368, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003312, '阿克苏市', 652901, 10000369, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10003313, '温宿县', 652922, 10000369, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003314, '库车县', 652923, 10000369, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10003315, '沙雅县', 652924, 10000369, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003316, '新和县', 652925, 10000369, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003317, '拜城县', 652926, 10000369, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003318, '乌什县', 652927, 10000369, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003319, '阿瓦提县', 652928, 10000369, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10003320, '柯坪县', 652929, 10000369, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10003321, '阿图什市', 653001, 10000370, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10003322, '阿克陶县', 653022, 10000370, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10003323, '阿合奇县', 653023, 10000370, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10003324, '乌恰县', 653024, 10000370, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003325, '喀什市', 653101, 10000371, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10003326, '疏附县', 653121, 10000371, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003327, '疏勒县', 653122, 10000371, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003328, '英吉沙县', 653123, 10000371, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003329, '泽普县', 653124, 10000371, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003330, '莎车县', 653125, 10000371, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003331, '叶城县', 653126, 10000371, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003332, '麦盖提县', 653127, 10000371, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003333, '岳普湖县', 653128, 10000371, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003334, '伽师县', 653129, 10000371, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003335, '巴楚县', 653130, 10000371, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003336, '塔什库尔干塔吉克自治县', 653131, 10000371, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003337, '和田市', 653201, 10000372, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003338, '和田县', 653221, 10000372, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003339, '墨玉县', 653222, 10000372, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003340, '皮山县', 653223, 10000372, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10003341, '洛浦县', 653224, 10000372, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003342, '策勒县', 653225, 10000372, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003343, '于田县', 653226, 10000372, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003344, '民丰县', 653227, 10000372, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003345, '伊宁市', 654002, 10000373, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003346, '奎屯市', 654003, 10000373, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10003347, '霍尔果斯市', 654004, 10000373, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003348, '伊宁县', 654021, 10000373, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003349, '察布查尔锡伯自治县', 654022, 10000373, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003350, '霍城县', 654023, 10000373, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003351, '巩留县', 654024, 10000373, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003352, '新源县', 654025, 10000373, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003353, '昭苏县', 654026, 10000373, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003354, '特克斯县', 654027, 10000373, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003355, '尼勒克县', 654028, 10000373, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003356, '塔城市', 654201, 10000374, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003357, '乌苏市', 654202, 10000374, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003358, '额敏县', 654221, 10000374, '3', 'E');
INSERT INTO `cmf_region_letter` VALUES (10003359, '沙湾县', 654223, 10000374, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003360, '托里县', 654224, 10000374, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003361, '裕民县', 654225, 10000374, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003362, '和布克赛尔蒙古自治县', 654226, 10000374, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003363, '阿勒泰市', 654301, 10000375, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10003364, '布尔津县', 654321, 10000375, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003365, '富蕴县', 654322, 10000375, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10003366, '福海县', 654323, 10000375, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10003367, '哈巴河县', 654324, 10000375, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003368, '青河县', 654325, 10000375, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003369, '吉木乃县', 654326, 10000375, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003370, '石河子市', 659001, 10000376, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003371, '阿拉尔市', 659002, 10000376, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10003372, '图木舒克市', 659003, 10000376, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003373, '五家渠市', 659004, 10000376, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003374, '北屯市', 659005, 10000376, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003375, '铁门关市', 659006, 10000376, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003376, '双河市', 659007, 10000376, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003377, '可克达拉市', 659008, 10000376, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10003378, '昆玉市', 659009, 10000376, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10003379, '中正区', 710101, 10000377, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003380, '大同区', 710102, 10000377, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003381, '中山区', 710103, 10000377, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003382, '松山区', 710104, 10000377, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003383, '大安区', 710105, 10000377, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003384, '万华区', 710106, 10000377, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003385, '信义区', 710107, 10000377, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003386, '士林区', 710108, 10000377, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003387, '北投区', 710109, 10000377, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003388, '内湖区', 710110, 10000377, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003389, '南港区', 710111, 10000377, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003390, '文山区', 710112, 10000377, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003391, '其它区', 710199, 10000377, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003392, '新兴区', 710201, 10000378, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003393, '前金区', 710202, 10000378, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003394, '芩雅区', 710203, 10000378, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003395, '盐埕区', 710204, 10000378, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003396, '鼓山区', 710205, 10000378, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003397, '旗津区', 710206, 10000378, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003398, '前镇区', 710207, 10000378, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003399, '三民区', 710208, 10000378, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003400, '左营区', 710209, 10000378, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003401, '楠梓区', 710210, 10000378, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003402, '小港区', 710211, 10000378, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003403, '苓雅区', 710241, 10000378, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003404, '仁武区', 710242, 10000378, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10003405, '大社区', 710243, 10000378, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003406, '冈山区', 710244, 10000378, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003407, '路竹区', 710245, 10000378, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003408, '阿莲区', 710246, 10000378, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10003409, '田寮区', 710247, 10000378, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003410, '燕巢区', 710248, 10000378, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003411, '桥头区', 710249, 10000378, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003412, '梓官区', 710250, 10000378, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003413, '弥陀区', 710251, 10000378, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003414, '永安区', 710252, 10000378, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003415, '湖内区', 710253, 10000378, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003416, '凤山区', 710254, 10000378, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10003417, '大寮区', 710255, 10000378, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003418, '林园区', 710256, 10000378, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003419, '鸟松区', 710257, 10000378, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003420, '大树区', 710258, 10000378, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003421, '旗山区', 710259, 10000378, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003422, '美浓区', 710260, 10000378, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003423, '六龟区', 710261, 10000378, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003424, '内门区', 710262, 10000378, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003425, '杉林区', 710263, 10000378, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003426, '甲仙区', 710264, 10000378, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003427, '桃源区', 710265, 10000378, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003428, '那玛夏区', 710266, 10000378, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003429, '茂林区', 710267, 10000378, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003430, '茄萣区', 710268, 10000378, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003431, '其它区', 710299, 10000378, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003432, '中西区', 710301, 10000379, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003433, '东区', 710302, 10000379, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003434, '南区', 710303, 10000379, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003435, '北区', 710304, 10000379, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003436, '安平区', 710305, 10000379, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10003437, '安南区', 710306, 10000379, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10003438, '永康区', 710339, 10000379, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003439, '归仁区', 710340, 10000379, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003440, '新化区', 710341, 10000379, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003441, '左镇区', 710342, 10000379, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003442, '玉井区', 710343, 10000379, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003443, '楠西区', 710344, 10000379, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003444, '南化区', 710345, 10000379, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003445, '仁德区', 710346, 10000379, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10003446, '关庙区', 710347, 10000379, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003447, '龙崎区', 710348, 10000379, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003448, '官田区', 710349, 10000379, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003449, '麻豆区', 710350, 10000379, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003450, '佳里区', 710351, 10000379, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003451, '西港区', 710352, 10000379, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003452, '七股区', 710353, 10000379, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003453, '将军区', 710354, 10000379, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003454, '学甲区', 710355, 10000379, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003455, '北门区', 710356, 10000379, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003456, '新营区', 710357, 10000379, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003457, '后壁区', 710358, 10000379, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003458, '白河区', 710359, 10000379, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003459, '东山区', 710360, 10000379, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003460, '六甲区', 710361, 10000379, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003461, '下营区', 710362, 10000379, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003462, '柳营区', 710363, 10000379, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003463, '盐水区', 710364, 10000379, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003464, '善化区', 710365, 10000379, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003465, '大内区', 710366, 10000379, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003466, '山上区', 710367, 10000379, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003467, '新市区', 710368, 10000379, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003468, '安定区', 710369, 10000379, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10003469, '其它区', 710399, 10000379, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003470, '中区', 710401, 10000380, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003471, '东区', 710402, 10000380, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003472, '南区', 710403, 10000380, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003473, '西区', 710404, 10000380, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003474, '北区', 710405, 10000380, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003475, '北屯区', 710406, 10000380, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003476, '西屯区', 710407, 10000380, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003477, '南屯区', 710408, 10000380, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003478, '太平区', 710431, 10000380, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003479, '大里区', 710432, 10000380, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003480, '雾峰区', 710433, 10000380, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003481, '乌日区', 710434, 10000380, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003482, '丰原区', 710435, 10000380, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10003483, '后里区', 710436, 10000380, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003484, '石冈区', 710437, 10000380, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003485, '东势区', 710438, 10000380, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003486, '和平区', 710439, 10000380, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003487, '新社区', 710440, 10000380, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003488, '潭子区', 710441, 10000380, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003489, '大雅区', 710442, 10000380, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003490, '神冈区', 710443, 10000380, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003491, '大肚区', 710444, 10000380, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003492, '沙鹿区', 710445, 10000380, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003493, '龙井区', 710446, 10000380, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003494, '梧栖区', 710447, 10000380, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003495, '清水区', 710448, 10000380, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003496, '大甲区', 710449, 10000380, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003497, '外埔区', 710450, 10000380, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003498, '大安区', 710451, 10000380, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003499, '其它区', 710499, 10000380, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003500, '金沙镇', 710507, 10000381, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003501, '金湖镇', 710508, 10000381, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003502, '金宁乡', 710509, 10000381, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003503, '金城镇', 710510, 10000381, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003504, '烈屿乡', 710511, 10000381, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003505, '乌坵乡', 710512, 10000381, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003506, '南投市', 710614, 10000382, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003507, '中寮乡', 710615, 10000382, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003508, '草屯镇', 710616, 10000382, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003509, '国姓乡', 710617, 10000382, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003510, '埔里镇', 710618, 10000382, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003511, '仁爱乡', 710619, 10000382, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10003512, '名间乡', 710620, 10000382, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003513, '集集镇', 710621, 10000382, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003514, '水里乡', 710622, 10000382, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003515, '鱼池乡', 710623, 10000382, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003516, '信义乡', 710624, 10000382, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003517, '竹山镇', 710625, 10000382, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003518, '鹿谷乡', 710626, 10000382, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003519, '仁爱区', 710701, 10000383, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10003520, '信义区', 710702, 10000383, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003521, '中正区', 710703, 10000383, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003522, '中山区', 710704, 10000383, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003523, '安乐区', 710705, 10000383, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10003524, '暖暖区', 710706, 10000383, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003525, '七堵区', 710707, 10000383, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003526, '其它区', 710799, 10000383, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003527, '东区', 710801, 10000384, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003528, '北区', 710802, 10000384, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003529, '香山区', 710803, 10000384, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003530, '其它区', 710899, 10000384, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003531, '东区', 710901, 10000385, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003532, '西区', 710902, 10000385, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003533, '其它区', 710999, 10000385, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003534, '万里区', 711130, 10000386, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003535, '板桥区', 711132, 10000386, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003536, '汐止区', 711133, 10000386, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003537, '深坑区', 711134, 10000386, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003538, '石碇区', 711135, 10000386, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003539, '瑞芳区', 711136, 10000386, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10003540, '平溪区', 711137, 10000386, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10003541, '双溪区', 711138, 10000386, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003542, '贡寮区', 711139, 10000386, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003543, '新店区', 711140, 10000386, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003544, '坪林区', 711141, 10000386, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10003545, '乌来区', 711142, 10000386, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003546, '永和区', 711143, 10000386, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003547, '中和区', 711144, 10000386, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003548, '土城区', 711145, 10000386, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003549, '三峡区', 711146, 10000386, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003550, '树林区', 711147, 10000386, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003551, '莺歌区', 711148, 10000386, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003552, '三重区', 711149, 10000386, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003553, '新庄区', 711150, 10000386, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003554, '泰山区', 711151, 10000386, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003555, '林口区', 711152, 10000386, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003556, '芦洲区', 711153, 10000386, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003557, '五股区', 711154, 10000386, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003558, '八里区', 711155, 10000386, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003559, '淡水区', 711156, 10000386, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003560, '三芝区', 711157, 10000386, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003561, '石门区', 711158, 10000386, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003562, '宜兰市', 711287, 10000387, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003563, '头城镇', 711288, 10000387, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003564, '礁溪乡', 711289, 10000387, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003565, '壮围乡', 711290, 10000387, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003566, '员山乡', 711291, 10000387, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003567, '罗东镇', 711292, 10000387, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003568, '三星乡', 711293, 10000387, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003569, '大同乡', 711294, 10000387, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003570, '五结乡', 711295, 10000387, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003571, '冬山乡', 711296, 10000387, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003572, '苏澳镇', 711297, 10000387, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003573, '南澳乡', 711298, 10000387, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003574, '钓鱼台', 711299, 10000387, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003575, '竹北市', 711387, 10000388, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003576, '湖口乡', 711388, 10000388, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003577, '新丰乡', 711389, 10000388, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003578, '新埔镇', 711390, 10000388, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003579, '关西镇', 711391, 10000388, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003580, '芎林乡', 711392, 10000388, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003581, '宝山乡', 711393, 10000388, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003582, '竹东镇', 711394, 10000388, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003583, '五峰乡', 711395, 10000388, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003584, '横山乡', 711396, 10000388, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003585, '尖石乡', 711397, 10000388, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003586, '北埔乡', 711398, 10000388, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003587, '峨眉乡', 711399, 10000388, '3', 'E');
INSERT INTO `cmf_region_letter` VALUES (10003588, '中坜区', 711414, 10000389, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003589, '平镇区', 711415, 10000389, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10003590, '杨梅区', 711417, 10000389, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003591, '新屋区', 711418, 10000389, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003592, '观音区', 711419, 10000389, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003593, '桃园区', 711420, 10000389, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003594, '龟山区', 711421, 10000389, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003595, '八德区', 711422, 10000389, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003596, '大溪区', 711423, 10000389, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003597, '大园区', 711425, 10000389, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003598, '芦竹区', 711426, 10000389, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003599, '中坜市', 711487, 10000389, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003600, '平镇市', 711488, 10000389, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10003601, '龙潭乡', 711489, 10000389, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003602, '杨梅市', 711490, 10000389, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003603, '新屋乡', 711491, 10000389, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003604, '观音乡', 711492, 10000389, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003605, '桃园市', 711493, 10000389, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003606, '龟山乡', 711494, 10000389, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003607, '八德市', 711495, 10000389, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003608, '大溪镇', 711496, 10000389, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003609, '复兴乡', 711497, 10000389, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10003610, '大园乡', 711498, 10000389, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003611, '芦竹乡', 711499, 10000389, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003612, '头份市', 711520, 10000390, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003613, '竹南镇', 711582, 10000390, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003614, '头份镇', 711583, 10000390, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003615, '三湾乡', 711584, 10000390, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003616, '南庄乡', 711585, 10000390, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003617, '狮潭乡', 711586, 10000390, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003618, '后龙镇', 711587, 10000390, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003619, '通霄镇', 711588, 10000390, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003620, '苑里镇', 711589, 10000390, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003621, '苗栗市', 711590, 10000390, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003622, '造桥乡', 711591, 10000390, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003623, '头屋乡', 711592, 10000390, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003624, '公馆乡', 711593, 10000390, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003625, '大湖乡', 711594, 10000390, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003626, '泰安乡', 711595, 10000390, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003627, '铜锣乡', 711596, 10000390, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003628, '三义乡', 711597, 10000390, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003629, '西湖乡', 711598, 10000390, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003630, '卓兰镇', 711599, 10000390, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003631, '员林市', 711736, 10000391, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003632, '彰化市', 711774, 10000391, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003633, '芬园乡', 711775, 10000391, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10003634, '花坛乡', 711776, 10000391, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003635, '秀水乡', 711777, 10000391, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003636, '鹿港镇', 711778, 10000391, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003637, '福兴乡', 711779, 10000391, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10003638, '线西乡', 711780, 10000391, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003639, '和美镇', 711781, 10000391, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003640, '伸港乡', 711782, 10000391, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003641, '员林镇', 711783, 10000391, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003642, '社头乡', 711784, 10000391, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003643, '永靖乡', 711785, 10000391, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003644, '埔心乡', 711786, 10000391, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003645, '溪湖镇', 711787, 10000391, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003646, '大村乡', 711788, 10000391, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003647, '埔盐乡', 711789, 10000391, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003648, '田中镇', 711790, 10000391, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003649, '北斗镇', 711791, 10000391, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003650, '田尾乡', 711792, 10000391, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003651, '埤头乡', 711793, 10000391, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10003652, '溪州乡', 711794, 10000391, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003653, '竹塘乡', 711795, 10000391, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003654, '二林镇', 711796, 10000391, '3', 'E');
INSERT INTO `cmf_region_letter` VALUES (10003655, '大城乡', 711797, 10000391, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003656, '芳苑乡', 711798, 10000391, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10003657, '二水乡', 711799, 10000391, '3', 'E');
INSERT INTO `cmf_region_letter` VALUES (10003658, '番路乡', 711982, 10000392, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10003659, '梅山乡', 711983, 10000392, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003660, '竹崎乡', 711984, 10000392, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003661, '阿里山乡', 711985, 10000392, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10003662, '中埔乡', 711986, 10000392, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003663, '大埔乡', 711987, 10000392, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003664, '水上乡', 711988, 10000392, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003665, '鹿草乡', 711989, 10000392, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003666, '太保市', 711990, 10000392, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003667, '朴子市', 711991, 10000392, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10003668, '东石乡', 711992, 10000392, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003669, '六脚乡', 711993, 10000392, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003670, '新港乡', 711994, 10000392, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003671, '民雄乡', 711995, 10000392, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003672, '大林镇', 711996, 10000392, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003673, '溪口乡', 711997, 10000392, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003674, '义竹乡', 711998, 10000392, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003675, '布袋镇', 711999, 10000392, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003676, '斗南镇', 712180, 10000393, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003677, '大埤乡', 712181, 10000393, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003678, '虎尾镇', 712182, 10000393, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003679, '土库镇', 712183, 10000393, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003680, '褒忠乡', 712184, 10000393, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003681, '东势乡', 712185, 10000393, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003682, '台西乡', 712186, 10000393, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003683, '仑背乡', 712187, 10000393, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003684, '麦寮乡', 712188, 10000393, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003685, '斗六市', 712189, 10000393, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003686, '林内乡', 712190, 10000393, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003687, '古坑乡', 712191, 10000393, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003688, '莿桐乡', 712192, 10000393, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003689, '西螺镇', 712193, 10000393, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003690, '二仑乡', 712194, 10000393, '3', 'E');
INSERT INTO `cmf_region_letter` VALUES (10003691, '北港镇', 712195, 10000393, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003692, '水林乡', 712196, 10000393, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003693, '口湖乡', 712197, 10000393, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10003694, '四湖乡', 712198, 10000393, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003695, '元长乡', 712199, 10000393, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003696, '崁顶乡', 712451, 10000394, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10003697, '屏东市', 712467, 10000394, '3', 'P');
INSERT INTO `cmf_region_letter` VALUES (10003698, '三地门乡', 712468, 10000394, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003699, '雾台乡', 712469, 10000394, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003700, '玛家乡', 712470, 10000394, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003701, '九如乡', 712471, 10000394, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003702, '里港乡', 712472, 10000394, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003703, '高树乡', 712473, 10000394, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003704, '盐埔乡', 712474, 10000394, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003705, '长治乡', 712475, 10000394, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003706, '麟洛乡', 712476, 10000394, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003707, '竹田乡', 712477, 10000394, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003708, '内埔乡', 712478, 10000394, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003709, '万丹乡', 712479, 10000394, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003710, '潮州镇', 712480, 10000394, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003711, '泰武乡', 712481, 10000394, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003712, '来义乡', 712482, 10000394, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003713, '万峦乡', 712483, 10000394, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003714, '莰顶乡', 712484, 10000394, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10003715, '新埤乡', 712485, 10000394, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003716, '南州乡', 712486, 10000394, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003717, '林边乡', 712487, 10000394, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003718, '东港镇', 712488, 10000394, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003719, '琉球乡', 712489, 10000394, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003720, '佳冬乡', 712490, 10000394, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003721, '新园乡', 712491, 10000394, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003722, '枋寮乡', 712492, 10000394, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10003723, '枋山乡', 712493, 10000394, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10003724, '春日乡', 712494, 10000394, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003725, '狮子乡', 712495, 10000394, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003726, '车城乡', 712496, 10000394, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003727, '牡丹乡', 712497, 10000394, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003728, '恒春镇', 712498, 10000394, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003729, '满州乡', 712499, 10000394, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003730, '台东市', 712584, 10000395, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003731, '绿岛乡', 712585, 10000395, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003732, '兰屿乡', 712586, 10000395, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003733, '延平乡', 712587, 10000395, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003734, '卑南乡', 712588, 10000395, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003735, '鹿野乡', 712589, 10000395, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003736, '关山镇', 712590, 10000395, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003737, '海端乡', 712591, 10000395, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003738, '池上乡', 712592, 10000395, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003739, '东河乡', 712593, 10000395, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003740, '成功镇', 712594, 10000395, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003741, '长滨乡', 712595, 10000395, '3', 'C');
INSERT INTO `cmf_region_letter` VALUES (10003742, '金峰乡', 712596, 10000395, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003743, '大武乡', 712597, 10000395, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003744, '达仁乡', 712598, 10000395, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003745, '太麻里乡', 712599, 10000395, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003746, '花莲市', 712686, 10000396, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003747, '新城乡', 712687, 10000396, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003748, '太鲁阁', 712688, 10000396, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003749, '秀林乡', 712689, 10000396, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003750, '吉安乡', 712690, 10000396, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003751, '寿丰乡', 712691, 10000396, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003752, '凤林镇', 712692, 10000396, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10003753, '光复乡', 712693, 10000396, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003754, '丰滨乡', 712694, 10000396, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10003755, '瑞穗乡', 712695, 10000396, '3', 'R');
INSERT INTO `cmf_region_letter` VALUES (10003756, '万荣乡', 712696, 10000396, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003757, '玉里镇', 712697, 10000396, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003758, '卓溪乡', 712698, 10000396, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003759, '富里乡', 712699, 10000396, '3', 'F');
INSERT INTO `cmf_region_letter` VALUES (10003760, '马公市', 712794, 10000397, '3', 'M');
INSERT INTO `cmf_region_letter` VALUES (10003761, '西屿乡', 712795, 10000397, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003762, '望安乡', 712796, 10000397, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003763, '七美乡', 712797, 10000397, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003764, '白沙乡', 712798, 10000397, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003765, '湖西乡', 712799, 10000397, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003766, '南竿乡', 712896, 10000398, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003767, '北竿乡', 712897, 10000398, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003768, '东引乡', 712898, 10000398, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003769, '莒光乡', 712899, 10000398, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003770, '中西区', 810101, 10000399, '3', 'Z');
INSERT INTO `cmf_region_letter` VALUES (10003771, '湾仔区', 810102, 10000399, '3', 'W');
INSERT INTO `cmf_region_letter` VALUES (10003772, '东区', 810103, 10000399, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003773, '南区', 810104, 10000399, '3', 'N');
INSERT INTO `cmf_region_letter` VALUES (10003774, '九龙城区', 810201, 10000400, '3', 'J');
INSERT INTO `cmf_region_letter` VALUES (10003775, '油尖旺区', 810202, 10000400, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003776, '深水埗区', 810203, 10000400, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003777, '黄大仙区', 810204, 10000400, '3', 'H');
INSERT INTO `cmf_region_letter` VALUES (10003778, '观塘区', 810205, 10000400, '3', 'G');
INSERT INTO `cmf_region_letter` VALUES (10003779, '北区', 810301, 10000401, '3', 'B');
INSERT INTO `cmf_region_letter` VALUES (10003780, '大埔区', 810302, 10000401, '3', 'D');
INSERT INTO `cmf_region_letter` VALUES (10003781, '沙田区', 810303, 10000401, '3', 'S');
INSERT INTO `cmf_region_letter` VALUES (10003782, '西贡区', 810304, 10000401, '3', 'X');
INSERT INTO `cmf_region_letter` VALUES (10003783, '元朗区', 810305, 10000401, '3', 'Y');
INSERT INTO `cmf_region_letter` VALUES (10003784, '屯门区', 810306, 10000401, '3', 'T');
INSERT INTO `cmf_region_letter` VALUES (10003785, '荃湾区', 810307, 10000401, '3', 'Q');
INSERT INTO `cmf_region_letter` VALUES (10003786, '葵青区', 810308, 10000401, '3', 'K');
INSERT INTO `cmf_region_letter` VALUES (10003787, '离岛区', 810309, 10000401, '3', 'L');
INSERT INTO `cmf_region_letter` VALUES (10003788, '澳门半岛', 820101, 10000402, '3', 'A');
INSERT INTO `cmf_region_letter` VALUES (10003789, '离岛', 820201, 10000403, '3', 'L');

-- ----------------------------
-- Table structure for cmf_role
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role`;
CREATE TABLE `cmf_role`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父角色ID',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '状态;0:禁用;1:正常',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
  `list_order` float NOT NULL DEFAULT 0 COMMENT '排序',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parent_id`(`parent_id`) USING BTREE,
  INDEX `status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_role
-- ----------------------------
INSERT INTO `cmf_role` VALUES (1, 0, 1, 1329633709, 1329633709, 0, '超级管理员', '拥有网站最高管理员权限！');
INSERT INTO `cmf_role` VALUES (2, 0, 1, 1329633709, 1329633709, 0, '普通管理员', '权限由最高管理员分配！');
INSERT INTO `cmf_role` VALUES (3, 0, 1, 0, 0, 0, '测试管理员', '测试');

-- ----------------------------
-- Table structure for cmf_role_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_role_user`;
CREATE TABLE `cmf_role_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '角色 id',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色对应表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_role_user
-- ----------------------------
INSERT INTO `cmf_role_user` VALUES (12, 2, 2);
INSERT INTO `cmf_role_user` VALUES (16, 3, 5);

-- ----------------------------
-- Table structure for cmf_route
-- ----------------------------
DROP TABLE IF EXISTS `cmf_route`;
CREATE TABLE `cmf_route`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '路由id',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT 1 COMMENT '状态;1:启用,0:不启用',
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'URL规则类型;1:用户自定义;2:别名添加',
  `full_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '完整url',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '实际显示的url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'url路由表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_route
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_shop
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop`;
CREATE TABLE `cmf_shop`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '关联用户',
  `class_id` int(11) NULL DEFAULT NULL COMMENT '分类id',
  `shop_type` tinyint(4) NULL DEFAULT NULL COMMENT '类型:1全屋整装,2装修建材,3智能电器,5家具软装 ',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '店铺名字',
  `logo_image` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'logo',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '轮播图',
  `introduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '介绍',
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `time` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '营业时间',
  `address` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址信息',
  `lng` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '经度',
  `lat` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `lnglat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '经纬度',
  `province_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省id',
  `city_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市id',
  `county_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区id',
  `province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省name',
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市name',
  `county` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区name',
  `province_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省code',
  `city_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市code',
  `county_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区code',
  `list_order` int(11) NULL DEFAULT 0 COMMENT '人气',
  `is_recommend` tinyint(2) NULL DEFAULT 1 COMMENT '推荐:1是,2否',
  `create_time` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint(20) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` bigint(20) NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '店铺管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_shop
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_shop_address
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_address`;
CREATE TABLE `cmf_shop_address`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `province_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省id',
  `city_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市id',
  `county_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区id',
  `province` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省name',
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市name',
  `county` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区name',
  `province_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省code',
  `city_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市code',
  `county_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区code',
  `address` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `username` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名字',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话',
  `is_default` tinyint(2) NULL DEFAULT 2 COMMENT '是否默认:1默认,2不默认',
  `status` tinyint(2) NULL DEFAULT 1 COMMENT '状态:1正常',
  `lng` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '经度',
  `lat` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '纬度',
  `lnglat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '经纬度',
  `create_time` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint(20) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` bigint(20) NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '地址管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_shop_address
-- ----------------------------
INSERT INTO `cmf_shop_address` VALUES (1, 1, NULL, NULL, NULL, '河南省', '郑州市', '金水区', NULL, NULL, NULL, '详细地址测试', '测试人员', '18888888888', 1, 1, NULL, NULL, NULL, NULL, NULL, 0);

-- ----------------------------
-- Table structure for cmf_shop_cart
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_cart`;
CREATE TABLE `cmf_shop_cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品类型:paid=有偿共享,show=种质展示,discount=限时折扣,full=满减活动,new=新品预售,goods=普通商品',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '关联用户',
  `goods_id` int(11) NULL DEFAULT NULL COMMENT '商品id',
  `count` int(11) NULL DEFAULT NULL COMMENT '下单数量',
  `sku_id` int(11) NULL DEFAULT NULL COMMENT '规格id',
  `sku_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'sku_name',
  `create_time` bigint(20) NULL DEFAULT NULL COMMENT '下单时间',
  `update_time` bigint(20) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` bigint(20) NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '购物车' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_shop_cart
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_shop_comment
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_comment`;
CREATE TABLE `cmf_shop_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '关联用户',
  `goods_id` int(11) NULL DEFAULT NULL COMMENT '商品',
  `order_detail_id` int(11) NULL DEFAULT NULL COMMENT '订单详情',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '评论内容',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '图片',
  `star` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '5' COMMENT '星级',
  `is_show` tinyint(2) NULL DEFAULT 1 COMMENT '是否显示:1显示,2隐藏',
  `create_time` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint(20) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` bigint(20) NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品评价' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_shop_comment
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_shop_coupon
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_coupon`;
CREATE TABLE `cmf_shop_coupon`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) NULL DEFAULT 1 COMMENT '优惠券类型:1时间段,2按天',
  `coupon_type` tinyint(4) NULL DEFAULT 1 COMMENT '优惠券类型:1满减券,2折扣券',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '优惠券名称',
  `full_amount` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '满额',
  `amount` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '面额',
  `discount` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '折扣',
  `count` int(11) NULL DEFAULT NULL COMMENT '数量',
  `select_count` int(11) NULL DEFAULT 0 COMMENT '领取数量',
  `limit` int(11) NULL DEFAULT 1 COMMENT '限领取数',
  `status` tinyint(4) NULL DEFAULT 2 COMMENT '状态:1显示,2隐藏',
  `start_time` int(11) NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` int(11) NULL DEFAULT NULL COMMENT '结束时间',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '内容',
  `day` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '7' COMMENT '有效期',
  `list_order` int(11) NULL DEFAULT 1000,
  `create_time` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint(20) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` bigint(20) NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '优惠券' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_shop_coupon
-- ----------------------------
INSERT INTO `cmf_shop_coupon` VALUES (1, 1, 1, '满10减5', '10', '5', '', NULL, 0, 1, 2, 1753372800, 2132668799, NULL, '365', 1000, 1753346891, 1753410063, 0);
INSERT INTO `cmf_shop_coupon` VALUES (2, 2, 1, '满100减50', '100', '50', NULL, NULL, 0, 1, 2, 0, 0, NULL, '350', 1000, 1753346908, NULL, 0);
INSERT INTO `cmf_shop_coupon` VALUES (3, 1, 2, '95折券', '', '', '95', NULL, 0, 1, 2, 1753372800, 1782835199, NULL, '', 1000, 1753408364, 1753409814, 0);

-- ----------------------------
-- Table structure for cmf_shop_coupon_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_coupon_user`;
CREATE TABLE `cmf_shop_coupon_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(4) NULL DEFAULT NULL COMMENT '时间类型:1时间段,按天',
  `coupon_type` tinyint(4) NULL DEFAULT NULL COMMENT '优惠券类型:1满减券,2折扣券',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `coupon_id` int(11) NOT NULL COMMENT '优惠券id',
  `status` tinyint(2) NULL DEFAULT 1 COMMENT '状态:1正常',
  `used` tinyint(4) NULL DEFAULT 1 COMMENT '状态:1未使用,2已使用,3已过期',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '优惠券名称',
  `full_amount` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '满n金额',
  `amount` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '金额',
  `discount` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '折扣',
  `start_time` bigint(20) NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` bigint(20) NULL DEFAULT NULL COMMENT '结束时间',
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'code码',
  `qr_image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '二维码',
  `order_num` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联订单号',
  `is_send` tinyint(4) NULL DEFAULT 1 COMMENT '是否发放:1赠送的',
  `use_time` bigint(20) NULL DEFAULT NULL COMMENT '使用时间',
  `verification_user_id` int(11) NULL DEFAULT NULL COMMENT '核销人',
  `verification_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` bigint(20) NULL DEFAULT NULL COMMENT '领取时间',
  `update_time` bigint(20) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` bigint(20) NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `code`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '优惠券领取记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_shop_coupon_user
-- ----------------------------
INSERT INTO `cmf_shop_coupon_user` VALUES (1, 2, 1, 1, 2, 1, 1, '满100减50', '100', '50', NULL, 1753352741, 1783592741, 'YtnK5jZlO', '', NULL, 1, NULL, NULL, NULL, 1753352741, NULL, 0);
INSERT INTO `cmf_shop_coupon_user` VALUES (2, 2, 1, 1, 2, 1, 1, '满100减50', '100', '50', NULL, 1753352742, 1783592742, 'YLqDjMP9c', '', NULL, 1, NULL, NULL, NULL, 1753352742, NULL, 0);
INSERT INTO `cmf_shop_coupon_user` VALUES (3, 2, 1, 1, 2, 1, 1, '满100减50', '100', '50', NULL, 1753352742, 1783592742, 'YVMm95g8t', '', NULL, 1, NULL, NULL, NULL, 1753352742, NULL, 0);
INSERT INTO `cmf_shop_coupon_user` VALUES (4, 2, 1, 1, 2, 1, 1, '满100减50', '100', '50', NULL, 1753352743, 1783592743, 'YFijaj54A', '', NULL, 1, NULL, NULL, NULL, 1753352743, NULL, 0);
INSERT INTO `cmf_shop_coupon_user` VALUES (5, 2, 1, 1, 2, 1, 1, '满100减50', '100', '50', NULL, 1753352743, 1783592743, 'YFJ6w13Ks', '', NULL, 1, NULL, NULL, NULL, 1753352743, NULL, 0);

-- ----------------------------
-- Table structure for cmf_shop_goods
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_goods`;
CREATE TABLE `cmf_shop_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'goods' COMMENT '商品类型:goods=普通商品,customized=定制商品',
  `class_id` int(11) NULL DEFAULT NULL,
  `class_two_id` int(11) NULL DEFAULT NULL,
  `shop_id` int(11) NULL DEFAULT NULL COMMENT '门店id',
  `goods_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `price` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '价格',
  `line_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '划线价',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '封面',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '图集',
  `status` tinyint(2) NULL DEFAULT 1 COMMENT '状态',
  `sell_count` int(11) NULL DEFAULT 0 COMMENT '售出数量',
  `stock` int(11) NULL DEFAULT 0 COMMENT '库存',
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标签',
  `is_index` tinyint(2) NULL DEFAULT 2 COMMENT '首页推荐:1是,2否',
  `is_show` tinyint(4) NULL DEFAULT 1 COMMENT '是否显示:1是,2否',
  `is_hot` tinyint(4) NULL DEFAULT 2 COMMENT '热门:1是,2否',
  `list_order` int(11) NULL DEFAULT 1000 COMMENT '排序',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '图文详情',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编号',
  `qr_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '二维码信息',
  `create_time` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint(20) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` bigint(20) NULL DEFAULT 0 COMMENT '删除时间',
  `is_attribute` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规格类型',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dindex`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_shop_goods
-- ----------------------------
INSERT INTO `cmf_shop_goods` VALUES (49, 'goods', 14, 15, NULL, '戴尔2025款', 80.00, 90.00, 'xcxkf00000000001/admin/20250723/87f1efa5e3d24276273ac4bdd983105f.jpeg', 'xcxkf00000000001/admin/20250723/725db02d7c51bc76803bb302b123acc4.jpeg,xcxkf00000000001/admin/20250723/806e28d8a59dbd463bef54c788b4df06.jpg,xcxkf00000000001/admin/20250723/2fe200aa408939fd2cf1fa39e2a5e44d.jpg,xcxkf00000000001/admin/20250723/ab548885c56a001337c1d901fae8290d.jpeg', 1, 0, 700000, '相应快/运行快/样式新', 2, 1, 2, 1000, '&lt;p&gt;场内车次黑&lt;/p&gt;', '202549', 'https://oss.ausite.cn/xcxkf00000000001/code/c76363c13b0b7897d7452bbafe20fc46.jpg', 1753241712, 1753241712, 0, '0');
INSERT INTO `cmf_shop_goods` VALUES (50, 'goods', 13, 19, NULL, '小米16', 800.00, 1800.00, 'xcxkf00000000001/admin/20250723/f288d8143f4d0916a8242a51718b6bd1.jpeg', 'xcxkf00000000001/admin/20250723/8c8311a8069d7740a6c2dbbf1a89f5c7.jpg,xcxkf00000000001/admin/20250723/95401f125df0eb36bdfb8c30459d1f71.jpg,xcxkf00000000001/admin/20250723/f17694139aecf466729efdbeff9fe18d.jpeg', 1, 0, 810000, 'ios系统/电池大/屏幕大', 2, 1, 2, 1000, '&lt;p&gt;三打发大水&lt;/p&gt;', '202550', 'https://oss.ausite.cn/xcxkf00000000001/code/6e31b371f9f4d383c803be88476e4188.jpg', 1753241845, 1753241845, 0, '1');

-- ----------------------------
-- Table structure for cmf_shop_goods_attr
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_goods_attr`;
CREATE TABLE `cmf_shop_goods_attr`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `attr_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '属性',
  `list_order` int(11) NOT NULL DEFAULT 10000 COMMENT '排序',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '0删除 1正常',
  `create_time` bigint(11) NULL DEFAULT NULL,
  `update_time` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '属性表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_shop_goods_attr
-- ----------------------------
INSERT INTO `cmf_shop_goods_attr` VALUES (31, 50, '运行内存', 0, 1, 1753241845, 1753241845);
INSERT INTO `cmf_shop_goods_attr` VALUES (32, 50, '储存内存', 1, 1, 1753241845, 1753241845);

-- ----------------------------
-- Table structure for cmf_shop_goods_attr_value
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_goods_attr_value`;
CREATE TABLE `cmf_shop_goods_attr_value`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NOT NULL,
  `attr_id` int(11) NOT NULL COMMENT '属性id',
  `attr_value_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '属性值',
  `list_order` int(11) NOT NULL DEFAULT 10000 COMMENT '排序',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '0删除 1正常',
  `create_time` bigint(11) NULL DEFAULT NULL,
  `update_time` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '属性值表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_shop_goods_attr_value
-- ----------------------------
INSERT INTO `cmf_shop_goods_attr_value` VALUES (65, 50, 31, '8', 0, 1, 1753241845, 1753241845);
INSERT INTO `cmf_shop_goods_attr_value` VALUES (66, 50, 31, '12', 1, 1, 1753241845, 1753241845);
INSERT INTO `cmf_shop_goods_attr_value` VALUES (67, 50, 31, '24', 2, 1, 1753241845, 1753241845);
INSERT INTO `cmf_shop_goods_attr_value` VALUES (68, 50, 32, '256', 0, 1, 1753241845, 1753241845);
INSERT INTO `cmf_shop_goods_attr_value` VALUES (69, 50, 32, '512', 1, 1, 1753241845, 1753241845);
INSERT INTO `cmf_shop_goods_attr_value` VALUES (70, 50, 32, '1Tb', 2, 1, 1753241845, 1753241845);

-- ----------------------------
-- Table structure for cmf_shop_goods_class
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_goods_class`;
CREATE TABLE `cmf_shop_goods_class`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品类型:goods=普通商品,point=积分商品',
  `pid` int(11) NULL DEFAULT 0,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名称',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片',
  `is_index` tinyint(4) NULL DEFAULT 2 COMMENT '首页推荐:1是,2否',
  `is_show` tinyint(4) NULL DEFAULT 1 COMMENT '显示:1是,2否',
  `list_order` int(11) NULL DEFAULT 1000,
  `create_time` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint(20) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` bigint(20) NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dindex`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '分类管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_shop_goods_class
-- ----------------------------
INSERT INTO `cmf_shop_goods_class` VALUES (13, 'goods', 0, '手机', NULL, 2, 1, 1000, 1753241373, NULL, 0);
INSERT INTO `cmf_shop_goods_class` VALUES (14, 'goods', 0, '电脑', NULL, 2, 1, 1000, 1753241377, NULL, 0);
INSERT INTO `cmf_shop_goods_class` VALUES (15, 'goods', 14, '戴尔', NULL, 2, 1, 1000, 1753241384, NULL, 0);
INSERT INTO `cmf_shop_goods_class` VALUES (16, 'goods', 14, '华硕', NULL, 2, 1, 1000, 1753241392, NULL, 0);
INSERT INTO `cmf_shop_goods_class` VALUES (17, 'goods', 13, '苹果', NULL, 2, 1, 1000, 1753241397, NULL, 0);
INSERT INTO `cmf_shop_goods_class` VALUES (18, 'goods', 13, '华为', NULL, 2, 1, 1000, 1753241404, NULL, 0);
INSERT INTO `cmf_shop_goods_class` VALUES (19, 'goods', 13, '小米', NULL, 2, 1, 1000, 1753241408, NULL, 0);

-- ----------------------------
-- Table structure for cmf_shop_goods_sku
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_goods_sku`;
CREATE TABLE `cmf_shop_goods_sku`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NULL DEFAULT NULL,
  `goods_id` int(11) NULL DEFAULT NULL COMMENT '商品id',
  `goods_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名字',
  `sku_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'sku',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编码',
  `stock` int(11) NULL DEFAULT 0 COMMENT '库存',
  `price` decimal(8, 2) NULL DEFAULT 0.00 COMMENT '价格',
  `line_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '划线价',
  `sell_count` int(11) NULL DEFAULT 0,
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '0不显示 1正常',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片',
  `create_time` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint(20) NULL DEFAULT NULL,
  `delete_time` bigint(20) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品sku' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_shop_goods_sku
-- ----------------------------
INSERT INTO `cmf_shop_goods_sku` VALUES (104, NULL, 50, NULL, '8;256', NULL, 90000, 800.00, 1800.00, 0, 1, '', 1753241845, 1753241845, 0);
INSERT INTO `cmf_shop_goods_sku` VALUES (105, NULL, 50, NULL, '8;512', NULL, 90000, 800.00, 1800.00, 0, 1, '', 1753241845, 1753241845, 0);
INSERT INTO `cmf_shop_goods_sku` VALUES (106, NULL, 50, NULL, '8;1Tb', NULL, 90000, 800.00, 1800.00, 0, 1, '', 1753241845, 1753241845, 0);
INSERT INTO `cmf_shop_goods_sku` VALUES (107, NULL, 50, NULL, '12;256', NULL, 90000, 800.00, 1800.00, 0, 1, '', 1753241845, 1753241845, 0);
INSERT INTO `cmf_shop_goods_sku` VALUES (108, NULL, 50, NULL, '12;512', NULL, 90000, 800.00, 1800.00, 0, 1, '', 1753241845, 1753241845, 0);
INSERT INTO `cmf_shop_goods_sku` VALUES (109, NULL, 50, NULL, '12;1Tb', NULL, 90000, 800.00, 1800.00, 0, 1, '', 1753241845, 1753241845, 0);
INSERT INTO `cmf_shop_goods_sku` VALUES (110, NULL, 50, NULL, '24;256', NULL, 90000, 800.00, 1800.00, 0, 1, '', 1753241845, 1753241845, 0);
INSERT INTO `cmf_shop_goods_sku` VALUES (111, NULL, 50, NULL, '24;512', NULL, 90000, 800.00, 1800.00, 0, 1, '', 1753241845, 1753241845, 0);
INSERT INTO `cmf_shop_goods_sku` VALUES (112, NULL, 50, NULL, '24;1Tb', NULL, 90000, 800.00, 1800.00, 0, 1, '', 1753241845, 1753241845, 0);

-- ----------------------------
-- Table structure for cmf_shop_goods_sku_attr
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_goods_sku_attr`;
CREATE TABLE `cmf_shop_goods_sku_attr`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) NULL DEFAULT NULL COMMENT '商品id',
  `sku_id` int(11) NOT NULL COMMENT '规格id',
  `attr_id` int(11) NOT NULL COMMENT '属性id',
  `attr_value_id` int(11) NOT NULL COMMENT '属性值id',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '0删除',
  `create_time` bigint(11) NULL DEFAULT NULL,
  `update_time` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 272 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_shop_goods_sku_attr
-- ----------------------------
INSERT INTO `cmf_shop_goods_sku_attr` VALUES (254, 50, 104, 31, 65, 1, 1753241845, 1753241845);
INSERT INTO `cmf_shop_goods_sku_attr` VALUES (255, 50, 104, 32, 68, 1, 1753241845, 1753241845);
INSERT INTO `cmf_shop_goods_sku_attr` VALUES (256, 50, 105, 31, 65, 1, 1753241845, 1753241845);
INSERT INTO `cmf_shop_goods_sku_attr` VALUES (257, 50, 105, 32, 69, 1, 1753241845, 1753241845);
INSERT INTO `cmf_shop_goods_sku_attr` VALUES (258, 50, 106, 31, 65, 1, 1753241845, 1753241845);
INSERT INTO `cmf_shop_goods_sku_attr` VALUES (259, 50, 106, 32, 70, 1, 1753241845, 1753241845);
INSERT INTO `cmf_shop_goods_sku_attr` VALUES (260, 50, 107, 31, 66, 1, 1753241845, 1753241845);
INSERT INTO `cmf_shop_goods_sku_attr` VALUES (261, 50, 107, 32, 68, 1, 1753241845, 1753241845);
INSERT INTO `cmf_shop_goods_sku_attr` VALUES (262, 50, 108, 31, 66, 1, 1753241845, 1753241845);
INSERT INTO `cmf_shop_goods_sku_attr` VALUES (263, 50, 108, 32, 69, 1, 1753241845, 1753241845);
INSERT INTO `cmf_shop_goods_sku_attr` VALUES (264, 50, 109, 31, 66, 1, 1753241845, 1753241845);
INSERT INTO `cmf_shop_goods_sku_attr` VALUES (265, 50, 109, 32, 70, 1, 1753241845, 1753241845);
INSERT INTO `cmf_shop_goods_sku_attr` VALUES (266, 50, 110, 31, 67, 1, 1753241845, 1753241845);
INSERT INTO `cmf_shop_goods_sku_attr` VALUES (267, 50, 110, 32, 68, 1, 1753241845, 1753241845);
INSERT INTO `cmf_shop_goods_sku_attr` VALUES (268, 50, 111, 31, 67, 1, 1753241845, 1753241845);
INSERT INTO `cmf_shop_goods_sku_attr` VALUES (269, 50, 111, 32, 69, 1, 1753241845, 1753241845);
INSERT INTO `cmf_shop_goods_sku_attr` VALUES (270, 50, 112, 31, 67, 1, 1753241845, 1753241845);
INSERT INTO `cmf_shop_goods_sku_attr` VALUES (271, 50, 112, 32, 70, 1, 1753241845, 1753241845);

-- ----------------------------
-- Table structure for cmf_shop_order
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_order`;
CREATE TABLE `cmf_shop_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品类型:goods=普通商品,customized=定制商品',
  `shop_id` int(11) NULL DEFAULT NULL COMMENT '门店id',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户id',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态:1待付款,2已付款,4已发货,6已收货,8已完成,10已取消,12退款申请,14退款不通过,16退款通过,20待生成价格',
  `order_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '订单号',
  `pay_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付单号',
  `address_id` int(11) NULL DEFAULT 0 COMMENT '地址id',
  `openid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '身份标识 openid',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '省',
  `city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '市',
  `county` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '区',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '实际支付金额',
  `balance` decimal(10, 2) NULL DEFAULT NULL COMMENT '余额支付金额',
  `goods_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品金额',
  `total_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '原始 总金额 = 商品金额+优惠金额+运费金额',
  `coupon_id` int(11) NULL DEFAULT 0 COMMENT '优惠券id',
  `coupon_amount` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '优惠金额',
  `point` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '使用积分',
  `point_balance` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '积分已抵扣金额',
  `freight_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '运费',
  `give_point` decimal(10, 2) NULL DEFAULT NULL COMMENT '赠送积分',
  `pay_type` tinyint(4) NULL DEFAULT 1 COMMENT '支付类型:1微信支付,2余额支付,3积分支付,4支付宝支付,5组合支付(微信+余额),6免费兑换',
  `remark` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  `cav_qr_code` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '核销二维码',
  `cav_code` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '核销码',
  `exp_num` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '快递单号',
  `exp_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '快递名称',
  `cancel_time` bigint(20) NULL DEFAULT NULL COMMENT '取消时间',
  `pay_time` bigint(20) NULL DEFAULT 0 COMMENT '支付时间',
  `send_time` bigint(20) NULL DEFAULT NULL COMMENT '发货时间',
  `take_delivery_time` bigint(20) NULL DEFAULT NULL COMMENT '收货时间',
  `accomplish_time` bigint(20) NULL DEFAULT NULL COMMENT '完成时间',
  `auto_cancel_time` bigint(20) NULL DEFAULT NULL COMMENT '自动取消时间',
  `auto_accomplish_time` bigint(20) NULL DEFAULT NULL COMMENT '自动完成时间',
  `auto_verification_time` bigint(20) NULL DEFAULT NULL COMMENT '自动核销时间',
  `catr_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '购物车下单',
  `goods_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品id',
  `goods_name` varchar(2555) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名字',
  `admin_remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '管理员备注',
  `is_comment` tinyint(4) NULL DEFAULT 2 COMMENT '是否已评价:1是,2否',
  `comment_time` bigint(20) NULL DEFAULT NULL COMMENT '评价时间',
  `create_time` bigint(20) NULL DEFAULT NULL COMMENT '下单时间',
  `update_time` bigint(20) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` bigint(20) NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`, `status`, `order_num`) USING BTREE,
  INDEX `username`(`username`, `phone`) USING BTREE,
  INDEX `goods_name`(`goods_name`(768)) USING BTREE,
  INDEX `create_time`(`create_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_shop_order
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_shop_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_order_detail`;
CREATE TABLE `cmf_shop_order_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NULL DEFAULT NULL COMMENT '店铺',
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户',
  `goods_id` int(11) NULL DEFAULT NULL COMMENT '商品',
  `sku_id` int(11) NULL DEFAULT NULL COMMENT '规格',
  `goods_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名字',
  `sku_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规格名字',
  `count` int(11) NULL DEFAULT NULL COMMENT '购买数量',
  `is_vip` tinyint(4) NULL DEFAULT 0 COMMENT '是否是会员:0否,1是',
  `goods_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价格/单价',
  `vip_price` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '会员价/单价   同步到普通单价里面,方便展示',
  `vip_amount` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '会员价/合计   同步到普通合计里面,方便展示',
  `coupon_amount` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '优惠金额',
  `point` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '使用积分',
  `point_balance` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '积分已抵扣金额',
  `full_amount` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '折扣金额',
  `give_point` decimal(10, 2) NULL DEFAULT NULL COMMENT '赠送积分',
  `total_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '合计',
  `max_refund_amount` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '最多退款金额',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '展示图',
  `status` tinyint(4) NULL DEFAULT 0 COMMENT '退款状态:0未提交,1审核中,2已通过,3已驳回',
  `refund_time` bigint(20) NULL DEFAULT NULL COMMENT '退款时间',
  `order_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '订单单号',
  `create_time` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint(20) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` bigint(20) NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `order_num`(`order_num`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单详情' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_shop_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_shop_order_refund
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_order_refund`;
CREATE TABLE `cmf_shop_order_refund`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL COMMENT '用户',
  `status` tinyint(2) NULL DEFAULT 1 COMMENT '状态:1售后中, 2售后完成,3已拒绝,4已取消',
  `type` tinyint(20) NULL DEFAULT 1 COMMENT '售后类型:1退货退款,2换货',
  `refund_why` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '换货原因',
  `order_num` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退款订单号',
  `pay_num` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '支付单号',
  `detail_id` int(11) NULL DEFAULT NULL COMMENT '详情id',
  `amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '退款金额',
  `order_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '订单总支付金额',
  `sku_id` int(11) NULL DEFAULT NULL COMMENT '更换规格id',
  `sku_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更换规格',
  `count` int(11) NULL DEFAULT 1 COMMENT '退货数量',
  `goods_id` int(11) NULL DEFAULT NULL COMMENT '商品',
  `goods_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商品名字',
  `goods_price` decimal(8, 2) NULL DEFAULT NULL COMMENT '价格/单价',
  `refuse` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '拒绝理由',
  `exp_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '快递名称',
  `exp_num` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '快递单号',
  `refund_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '退款订单号',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '说明',
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '图集',
  `refuse_time` bigint(20) NULL DEFAULT NULL COMMENT '拒绝时间',
  `create_time` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint(20) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` bigint(20) NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '退款管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_shop_order_refund
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_shop_stock
-- ----------------------------
DROP TABLE IF EXISTS `cmf_shop_stock`;
CREATE TABLE `cmf_shop_stock`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operate_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作类型:shop_goods,point_goods',
  `type` tinyint(4) NULL DEFAULT 1 COMMENT '1增加销量  2减少销量',
  `goods_id` int(11) NULL DEFAULT NULL COMMENT '商品id',
  `sku_id` int(11) NULL DEFAULT NULL COMMENT '规格id',
  `count` int(11) NULL DEFAULT NULL COMMENT '数量',
  `order_num` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '单号',
  `create_time` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint(20) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` bigint(20) NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 226 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '库存记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_shop_stock
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_slide
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide`;
CREATE TABLE `cmf_slide`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:显示,0不显示',
  `delete_time` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '删除时间',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '幻灯片分类',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分类备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '幻灯片表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_slide
-- ----------------------------
INSERT INTO `cmf_slide` VALUES (1, 1, 0, '首页轮播图', '首页轮播图[请勿删除]');

-- ----------------------------
-- Table structure for cmf_slide_item
-- ----------------------------
DROP TABLE IF EXISTS `cmf_slide_item`;
CREATE TABLE `cmf_slide_item`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `slide_id` int(11) NOT NULL DEFAULT 0 COMMENT '幻灯片id',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态,1:显示;0:隐藏',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '幻灯片名称',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '幻灯片图片',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '幻灯片链接',
  `target` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '友情链接打开方式',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '幻灯片描述',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '幻灯片内容',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展信息',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `slide_id`(`slide_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '幻灯片子项表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_slide_item
-- ----------------------------
INSERT INTO `cmf_slide_item` VALUES (1, 1, 1, 1000, '1', 'dz000/admin/20220928/f6eb31a4707d3e8705bce2402f331592.jpg', '/pages/user/index', 'navigateTo', '9999', '', '');
INSERT INTO `cmf_slide_item` VALUES (2, 1, 1, 10, '测试啊', 'dzkf00000000001/admin/20250311/2d72a549ecdc21ce4823201d27453ae3.jpg', '/pages/index/index', 'switchTab', '778899', NULL, NULL);

-- ----------------------------
-- Table structure for cmf_theme
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme`;
CREATE TABLE `cmf_theme`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '安装时间',
  `update_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后升级时间',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '模板状态,1:正在使用;0:未使用',
  `is_compiled` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否为已编译模板',
  `theme` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题目录名，用于主题的维一标识',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题名称',
  `version` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题版本号',
  `demo_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '演示地址，带协议',
  `thumbnail` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '缩略图',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题作者',
  `author_url` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '作者网站链接',
  `lang` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '支持语言',
  `keywords` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题关键字',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '主题描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '轮播图' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_theme
-- ----------------------------
INSERT INTO `cmf_theme` VALUES (1, 0, 0, 0, 0, 'default', 'default', '1.0.0', 'http://demo.thinkcmf.com', '', 'ThinkCMF', 'http://www.thinkcmf.com', 'zh-cn', 'ThinkCMF默认模板', 'ThinkCMF默认模板');

-- ----------------------------
-- Table structure for cmf_theme_file
-- ----------------------------
DROP TABLE IF EXISTS `cmf_theme_file`;
CREATE TABLE `cmf_theme_file`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_public` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否公共的模板文件',
  `list_order` float NOT NULL DEFAULT 10000 COMMENT '排序',
  `theme` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板名称',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板文件名',
  `action` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '操作',
  `file` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板文件，相对于模板根目录，如Portal/index.html',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模板文件描述',
  `more` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '模板更多配置,用户自己后台设置的',
  `config_more` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '模板更多配置,来源模板的配置文件',
  `draft_more` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '模板更多配置,用户临时保存的配置',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '轮播图,图片' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_theme_file
-- ----------------------------
INSERT INTO `cmf_theme_file` VALUES (1, 0, 5, 'default', '首页', 'demo/Index/index', 'demo/index', '首页模板文件', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '');
INSERT INTO `cmf_theme_file` VALUES (2, 0, 5, 'default', '首页', 'portal/Index/index', 'portal/index', '首页模板文件', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '{\"vars\":{\"top_slide\":{\"title\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"admin\\/Slide\\/index\",\"multi\":false},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"tip\":\"\\u9876\\u90e8\\u5e7b\\u706f\\u7247\",\"rule\":{\"require\":true}}},\"widgets\":{\"features\":{\"title\":\"\\u5feb\\u901f\\u4e86\\u89e3ThinkCMF\",\"display\":\"1\",\"vars\":{\"sub_title\":{\"title\":\"\\u526f\\u6807\\u9898\",\"value\":\"Quickly understand the ThinkCMF\",\"type\":\"text\",\"placeholder\":\"\\u8bf7\\u8f93\\u5165\\u526f\\u6807\\u9898\",\"tip\":\"\",\"rule\":{\"require\":true}},\"features\":{\"title\":\"\\u7279\\u6027\\u4ecb\\u7ecd\",\"value\":[{\"title\":\"MVC\\u5206\\u5c42\\u6a21\\u5f0f\",\"icon\":\"bars\",\"content\":\"\\u4f7f\\u7528MVC\\u5e94\\u7528\\u7a0b\\u5e8f\\u88ab\\u5206\\u6210\\u4e09\\u4e2a\\u6838\\u5fc3\\u90e8\\u4ef6\\uff1a\\u6a21\\u578b\\uff08M\\uff09\\u3001\\u89c6\\u56fe\\uff08V\\uff09\\u3001\\u63a7\\u5236\\u5668\\uff08C\\uff09\\uff0c\\u4ed6\\u4e0d\\u662f\\u4e00\\u4e2a\\u65b0\\u7684\\u6982\\u5ff5\\uff0c\\u53ea\\u662fThinkCMF\\u5c06\\u5176\\u53d1\\u6325\\u5230\\u4e86\\u6781\\u81f4\\u3002\"},{\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"group\",\"content\":\"ThinkCMF\\u5185\\u7f6e\\u4e86\\u7075\\u6d3b\\u7684\\u7528\\u6237\\u7ba1\\u7406\\u65b9\\u5f0f\\uff0c\\u5e76\\u53ef\\u76f4\\u63a5\\u4e0e\\u7b2c\\u4e09\\u65b9\\u7ad9\\u70b9\\u8fdb\\u884c\\u4e92\\u8054\\u4e92\\u901a\\uff0c\\u5982\\u679c\\u4f60\\u613f\\u610f\\u751a\\u81f3\\u53ef\\u4ee5\\u5bf9\\u5355\\u4e2a\\u7528\\u6237\\u6216\\u7fa4\\u4f53\\u7528\\u6237\\u7684\\u884c\\u4e3a\\u8fdb\\u884c\\u8bb0\\u5f55\\u53ca\\u5206\\u4eab\\uff0c\\u4e3a\\u60a8\\u7684\\u8fd0\\u8425\\u51b3\\u7b56\\u63d0\\u4f9b\\u6709\\u6548\\u53c2\\u8003\\u6570\\u636e\\u3002\"},{\"title\":\"\\u4e91\\u7aef\\u90e8\\u7f72\",\"icon\":\"cloud\",\"content\":\"\\u901a\\u8fc7\\u9a71\\u52a8\\u7684\\u65b9\\u5f0f\\u53ef\\u4ee5\\u8f7b\\u677e\\u652f\\u6301\\u4e91\\u5e73\\u53f0\\u7684\\u90e8\\u7f72\\uff0c\\u8ba9\\u4f60\\u7684\\u7f51\\u7ad9\\u65e0\\u7f1d\\u8fc1\\u79fb\\uff0c\\u5185\\u7f6e\\u5df2\\u7ecf\\u652f\\u6301SAE\\u3001BAE\\uff0c\\u6b63\\u5f0f\\u7248\\u5c06\\u5bf9\\u4e91\\u7aef\\u90e8\\u7f72\\u8fdb\\u884c\\u8fdb\\u4e00\\u6b65\\u4f18\\u5316\\u3002\"},{\"title\":\"\\u5b89\\u5168\\u7b56\\u7565\",\"icon\":\"heart\",\"content\":\"\\u63d0\\u4f9b\\u7684\\u7a33\\u5065\\u7684\\u5b89\\u5168\\u7b56\\u7565\\uff0c\\u5305\\u62ec\\u5907\\u4efd\\u6062\\u590d\\uff0c\\u5bb9\\u9519\\uff0c\\u9632\\u6cbb\\u6076\\u610f\\u653b\\u51fb\\u767b\\u9646\\uff0c\\u7f51\\u9875\\u9632\\u7be1\\u6539\\u7b49\\u591a\\u9879\\u5b89\\u5168\\u7ba1\\u7406\\u529f\\u80fd\\uff0c\\u4fdd\\u8bc1\\u7cfb\\u7edf\\u5b89\\u5168\\uff0c\\u53ef\\u9760\\uff0c\\u7a33\\u5b9a\\u7684\\u8fd0\\u884c\\u3002\"},{\"title\":\"\\u5e94\\u7528\\u6a21\\u5757\\u5316\",\"icon\":\"cubes\",\"content\":\"\\u63d0\\u51fa\\u5168\\u65b0\\u7684\\u5e94\\u7528\\u6a21\\u5f0f\\u8fdb\\u884c\\u6269\\u5c55\\uff0c\\u4e0d\\u7ba1\\u662f\\u4f60\\u5f00\\u53d1\\u4e00\\u4e2a\\u5c0f\\u529f\\u80fd\\u8fd8\\u662f\\u4e00\\u4e2a\\u5168\\u65b0\\u7684\\u7ad9\\u70b9\\uff0c\\u5728ThinkCMF\\u4e2d\\u4f60\\u53ea\\u662f\\u589e\\u52a0\\u4e86\\u4e00\\u4e2aAPP\\uff0c\\u6bcf\\u4e2a\\u72ec\\u7acb\\u8fd0\\u884c\\u4e92\\u4e0d\\u5f71\\u54cd\\uff0c\\u4fbf\\u4e8e\\u7075\\u6d3b\\u6269\\u5c55\\u548c\\u4e8c\\u6b21\\u5f00\\u53d1\\u3002\"},{\"title\":\"\\u514d\\u8d39\\u5f00\\u6e90\",\"icon\":\"certificate\",\"content\":\"\\u4ee3\\u7801\\u9075\\u5faaApache2\\u5f00\\u6e90\\u534f\\u8bae\\uff0c\\u514d\\u8d39\\u4f7f\\u7528\\uff0c\\u5bf9\\u5546\\u4e1a\\u7528\\u6237\\u4e5f\\u65e0\\u4efb\\u4f55\\u9650\\u5236\\u3002\"}],\"type\":\"array\",\"item\":{\"title\":{\"title\":\"\\u6807\\u9898\",\"value\":\"\",\"type\":\"text\",\"rule\":{\"require\":true}},\"icon\":{\"title\":\"\\u56fe\\u6807\",\"value\":\"\",\"type\":\"text\"},\"content\":{\"title\":\"\\u63cf\\u8ff0\",\"value\":\"\",\"type\":\"textarea\"}},\"tip\":\"\"}}},\"last_news\":{\"title\":\"\\u6700\\u65b0\\u8d44\\u8baf\",\"display\":\"1\",\"vars\":{\"last_news_category_id\":{\"title\":\"\\u6587\\u7ae0\\u5206\\u7c7bID\",\"value\":\"\",\"type\":\"text\",\"dataSource\":{\"api\":\"portal\\/Category\\/index\",\"multi\":true},\"placeholder\":\"\\u8bf7\\u9009\\u62e9\\u5206\\u7c7b\",\"tip\":\"\",\"rule\":{\"require\":true}}}}}}', '');

-- ----------------------------
-- Table structure for cmf_user
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user`;
CREATE TABLE `cmf_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(3) UNSIGNED NULL DEFAULT 1 COMMENT '用户类型;1:admin;2:会员',
  `sex` tinyint(2) NULL DEFAULT 0 COMMENT '性别;0:保密,1:男,2:女',
  `birthday` int(11) NULL DEFAULT 0 COMMENT '生日',
  `last_login_time` int(11) NULL DEFAULT 0 COMMENT '最后登录时间',
  `score` int(11) NULL DEFAULT 0 COMMENT '用户积分',
  `coin` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '金币',
  `balance` decimal(10, 2) NULL DEFAULT 0.00 COMMENT '余额',
  `user_status` tinyint(3) UNSIGNED NULL DEFAULT 1 COMMENT '用户状态;0:禁用,1:正常,2:未验证',
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '用户名',
  `user_pass` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录密码;cmf_password加密',
  `user_nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '' COMMENT '用户昵称',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户登录邮箱',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户个人网址',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户头像',
  `signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '个性签名',
  `last_login_ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后登录ip',
  `user_activation_key` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '激活码',
  `mobile` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '中国手机不带国家代码，国际手机号格式为：国家代码-手机号',
  `more` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '扩展属性',
  `is_contract` tinyint(4) NULL DEFAULT 2 COMMENT '查看合同:1是,2否',
  `create_time` int(11) NULL DEFAULT 0 COMMENT '注册时间',
  `update_time` bigint(20) NULL DEFAULT NULL,
  `delete_time` bigint(20) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_login`(`user_login`) USING BTREE,
  INDEX `user_nickname`(`user_nickname`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_user
-- ----------------------------
INSERT INTO `cmf_user` VALUES (1, 1, 0, 0, 1753240783, 0, 0, 0.00, 1, 'admin', '###7a83c4a197d689babb621303f7f65c07', 'admin', 'admin@gmail.com', '', '', '', '115.57.223.12', '', '', '', 2, 1660558068, NULL, 0);
INSERT INTO `cmf_user` VALUES (2, 1, 0, 0, 1735353352, 0, 0, 0.00, 1, 'test1', '###c312d5fbef62b46c9ef089b8a8dff5c6', '', '', '', '', '', '123.14.174.35', '', '15801055988', '', 2, 0, 1735354271, 0);
INSERT INTO `cmf_user` VALUES (5, 1, 0, 0, 1735354321, 0, 0, 0.00, 0, 'test555', '###69bad127654ba4ed702e0acc9e6d5cb7', '', '', '', '', '', '123.14.174.35', '', '18888854541', '', 0, 1735353788, 1743387406, 0);

-- ----------------------------
-- Table structure for cmf_user_login_attempt
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_login_attempt`;
CREATE TABLE `cmf_user_login_attempt`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `login_attempts` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '尝试次数',
  `attempt_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '尝试登录时间',
  `locked_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '锁定时间',
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户 ip',
  `account` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '用户账号,手机号,邮箱或用户名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户登录尝试表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_user_login_attempt
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_user_token
-- ----------------------------
DROP TABLE IF EXISTS `cmf_user_token`;
CREATE TABLE `cmf_user_token`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL DEFAULT 0 COMMENT '用户id',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT ' 过期时间',
  `create_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT 'token',
  `device_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '设备类型;mobile,android,iphone,ipad,web,pc,mac,wxapp',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户客户端登录 token 表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_user_token
-- ----------------------------
INSERT INTO `cmf_user_token` VALUES (1, 1, 1755332022, 1739780022, '21a141d229b251c404dbebbcf3334aa910dbe0b7d68eb339b8df8f96de00ed84', 'web');
INSERT INTO `cmf_user_token` VALUES (2, 5, 1750906298, 1735354298, '03f8880a016368367a36f27bb950566695adbe47a2cab470bf15950269bf0e13', 'web');

-- ----------------------------
-- Table structure for cmf_verification_code
-- ----------------------------
DROP TABLE IF EXISTS `cmf_verification_code`;
CREATE TABLE `cmf_verification_code`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '表id',
  `count` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '当天已经发送成功的次数',
  `send_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '最后发送成功时间',
  `expire_time` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '验证码过期时间',
  `code` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '最后发送成功的验证码',
  `account` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '手机号或者邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '手机邮箱数字验证码表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_verification_code
-- ----------------------------

-- ----------------------------
-- Table structure for cmf_wechat_menu
-- ----------------------------
DROP TABLE IF EXISTS `cmf_wechat_menu`;
CREATE TABLE `cmf_wechat_menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NULL DEFAULT 0 COMMENT '父级id',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '按钮类型 click，view，media_id，article_id，miniprogram',
  `key` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'click类型的key值',
  `url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网页 链接，用户点击菜单可打开链接，不超过1024字节。 type为miniprogram时，不支持小程序的老版本客户端将打开本url。',
  `media_id` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '调用新增永久素材接口返回的合法media_id',
  `appid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小程序的appid',
  `pagepath` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小程序的页面路径',
  `article_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布后获得的合法 article_id',
  `status` tinyint(4) NULL DEFAULT 1 COMMENT '状态:1显示,2隐藏',
  `list_order` int(11) NULL DEFAULT 100,
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `reply_content` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回复内容',
  `create_time` bigint(20) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` bigint(20) NULL DEFAULT NULL COMMENT '更新时间',
  `delete_time` bigint(20) NULL DEFAULT 0 COMMENT '删除时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cmf_wechat_menu
-- ----------------------------
INSERT INTO `cmf_wechat_menu` VALUES (1, 0, '按钮1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 100, '100', NULL, NULL, 1743924149, 0);
INSERT INTO `cmf_wechat_menu` VALUES (2, 0, '按钮2', 'click', 'about', '', NULL, '', '', NULL, 1, 200, '1', '', 0, 1743924149, 0);
INSERT INTO `cmf_wechat_menu` VALUES (3, 0, '按钮3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 300, '100', NULL, NULL, 1743924149, 0);
INSERT INTO `cmf_wechat_menu` VALUES (8, 3, '测试网址', 'view', 'miniprogram', 'www.baidu.com', NULL, '', '', NULL, 1, 100, '', '', 1743924042, 1743924223, 0);
INSERT INTO `cmf_wechat_menu` VALUES (14, 1, '测试', '', 'miniprogram', '', NULL, '', '', NULL, 1, 100, '', '', 1743925200, NULL, 0);
INSERT INTO `cmf_wechat_menu` VALUES (15, 1, '测试2', 'click', '1', '', NULL, '', '', NULL, 1, 100, '', '222', 1743925214, NULL, 0);
INSERT INTO `cmf_wechat_menu` VALUES (16, 1, '测试3', 'view', 'miniprogram', 'www.bai', NULL, '', '', NULL, 1, 100, '', '', 1743925226, NULL, 0);
INSERT INTO `cmf_wechat_menu` VALUES (17, 1, '测试4', 'miniprogram', 'miniprogram', '', NULL, '1', '1', NULL, 1, 100, '', '', 1743925234, 1743926432, 0);

SET FOREIGN_KEY_CHECKS = 1;
