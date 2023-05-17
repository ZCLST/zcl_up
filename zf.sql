/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50725 (5.7.25)
 Source Host           : localhost:3306
 Source Schema         : zf

 Target Server Type    : MySQL
 Target Server Version : 50725 (5.7.25)
 File Encoding         : 65001

 Date: 17/05/2023 16:49:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for log_info
-- ----------------------------
DROP TABLE IF EXISTS `log_info`;
CREATE TABLE `log_info`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `action` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '事件'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_info
-- ----------------------------
INSERT INTO `log_info` VALUES ('79b6e6ca161f6f9e63f2fe81716e3f64', '2023-05-17 14:43:21', '798fddc17f2211eb973d6100d940b6cf', '登录');
INSERT INTO `log_info` VALUES ('4e004afa4f45e818e4c6e9e8266094ba', '2023-05-17 14:43:24', '798fddc17f2211eb973d6100d940b6cf', '登录日志');
INSERT INTO `log_info` VALUES ('7cd07ce891d2e9d65aac35a414638dcb', '2023-05-17 14:43:27', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('984751b8b4830c963037deeeda81627d', '2023-05-17 14:43:27', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('686ae1aab6de1a084bb77f5084ff8eeb', '2023-05-17 14:43:41', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('ed09f6917ca8b0a64c46beece0758ef0', '2023-05-17 14:44:08', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('4915820fd0fcfafa58d0a8c0c10674a5', '2023-05-17 14:44:16', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('3c46a6fb8d2ed9249a7994cc67dc854c', '2023-05-17 14:44:16', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('24929bed125570a840e8fe359cbeec0e', '2023-05-17 14:44:41', '798fddc17f2211eb973d6100d940b6cf', '注销');
INSERT INTO `log_info` VALUES ('f9ddbfc0467f027db2b9481b0b253890', '2023-05-17 14:44:43', '798fddc17f2211eb973d6100d940b6cf', '登录');
INSERT INTO `log_info` VALUES ('8052d1c27ec674356ce921b5eb241037', '2023-05-17 14:44:45', '798fddc17f2211eb973d6100d940b6cf', '登录日志');
INSERT INTO `log_info` VALUES ('61e33a0c3f6fe0edd5c2de3fd6b0ba0c', '2023-05-17 14:44:49', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('8f359f168cb6e8f9188e7f989ab4b6fb', '2023-05-17 14:44:49', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('940e02cd00e303c44703db756b73ec42', '2023-05-17 14:45:19', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('e3437097b2bebea500b0e4e7288b0106', '2023-05-17 14:45:19', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('3db547614161edddfc12b732c59623ab', '2023-05-17 14:45:42', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('633af769acbe7f396c6a224718992b84', '2023-05-17 14:45:42', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('3c998fcece83ae5ac23711078aaf2f9c', '2023-05-17 14:45:49', '798fddc17f2211eb973d6100d940b6cf', '注销');
INSERT INTO `log_info` VALUES ('aac55ad6982491ed63693283c5e0541b', '2023-05-17 14:45:51', '798fddc17f2211eb973d6100d940b6cf', '登录');
INSERT INTO `log_info` VALUES ('b2b1c945300fb31538b67ef16f3c1a53', '2023-05-17 14:45:53', '798fddc17f2211eb973d6100d940b6cf', '登录日志');
INSERT INTO `log_info` VALUES ('44ce3bd3ac925e658fe9b34501bb1498', '2023-05-17 14:46:22', '798fddc17f2211eb973d6100d940b6cf', '注销');
INSERT INTO `log_info` VALUES ('ee2c7a7659255179144f959dd5df865e', '2023-05-17 14:46:25', '798fddc17f2211eb973d6100d940b6cf', '登录');
INSERT INTO `log_info` VALUES ('46ec438efa8cb27d875c62e6d2d94c1d', '2023-05-17 14:47:26', '798fddc17f2211eb973d6100d940b6cf', '角色管理');
INSERT INTO `log_info` VALUES ('6e0674e96e198f655420bedaf485cab9', '2023-05-17 14:47:39', '798fddc17f2211eb973d6100d940b6cf', '角色管理');
INSERT INTO `log_info` VALUES ('492408ee179370768face7396833f0c5', '2023-05-17 14:47:44', '798fddc17f2211eb973d6100d940b6cf', '功能日志');
INSERT INTO `log_info` VALUES ('0ba7f1b81ff656e0d20fc0284353a011', '2023-05-17 14:47:48', '798fddc17f2211eb973d6100d940b6cf', '登录日志');
INSERT INTO `log_info` VALUES ('e376e5a0aa6e8df88a1ad3e7d7c537a9', '2023-05-17 14:48:01', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('62fdf50b84d84ab7b3a4a86e7e14c2b5', '2023-05-17 14:48:01', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('7fd18edd6f3e766ad893b4dd59fe4acf', '2023-05-17 15:02:55', '798fddc17f2211eb973d6100d940b6cf', '登录日志');
INSERT INTO `log_info` VALUES ('708eb36df71165885503310133039ce8', '2023-05-17 15:03:00', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('f8532ee9016438a1746280f799da5764', '2023-05-17 15:03:02', '798fddc17f2211eb973d6100d940b6cf', '功能日志');
INSERT INTO `log_info` VALUES ('0d601445e642cf7fd12cad7787e9befb', '2023-05-17 15:03:03', '798fddc17f2211eb973d6100d940b6cf', '角色管理');
INSERT INTO `log_info` VALUES ('5be57d83e6832c300e8383cb8fb78e33', '2023-05-17 15:08:17', '798fddc17f2211eb973d6100d940b6cf', '登录日志');
INSERT INTO `log_info` VALUES ('82346ed78b79126cff48e3110b72bd35', '2023-05-17 15:08:31', '798fddc17f2211eb973d6100d940b6cf', '登录日志');
INSERT INTO `log_info` VALUES ('4fa20071ab07d9baba3a09ebff53b67c', '2023-05-17 15:47:53', '798fddc17f2211eb973d6100d940b6cf', '登录');
INSERT INTO `log_info` VALUES ('6286a122bc832133b15aa2875387e202', '2023-05-17 15:51:44', '798fddc17f2211eb973d6100d940b6cf', '登录日志');
INSERT INTO `log_info` VALUES ('17484d2d5a956ce13783f6eae55de145', '2023-05-17 15:51:45', '798fddc17f2211eb973d6100d940b6cf', '角色管理');
INSERT INTO `log_info` VALUES ('aa904975c67b54cd0c7088e97fe2d49c', '2023-05-17 15:51:47', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('e84fd7d6603978452cf09ec15737aa79', '2023-05-17 15:51:47', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('7527d9cc32f2ba003f22ece4d3cdb8c5', '2023-05-17 15:51:57', '798fddc17f2211eb973d6100d940b6cf', '功能日志');
INSERT INTO `log_info` VALUES ('45f11fce91fe1351f56b850c49572b93', '2023-05-17 15:52:02', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('b8a2822aac26c14fc4ac379aadf8a95d', '2023-05-17 15:52:02', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('29a245ae98f80079ef3fd240a809287b', '2023-05-17 15:52:23', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('2066547534cd2316789f3d2fb8432481', '2023-05-17 15:52:23', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('1dddc140a529b1e31be7b9190a9f0828', '2023-05-17 15:53:49', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('4f20fbd4fc4410556abd0a3f90947c9c', '2023-05-17 15:53:49', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('f2873a5343fbafa4e04fd3b8cb6d1db7', '2023-05-17 15:54:46', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('bc4ad4788927f112497a00a152d50c52', '2023-05-17 15:54:46', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('96553f9c61ac888da622ce53aba9e91f', '2023-05-17 15:55:05', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('a635f30a59431e5c272731e3c6405da2', '2023-05-17 15:55:05', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('6e3a11a5e9ad17cf3726b3b75d7b2c35', '2023-05-17 15:56:48', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('672f7a683587ff1f4ebeb8f6d6be5c80', '2023-05-17 15:56:52', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('3f57217dd18a21824b0f6df2cdd3848c', '2023-05-17 15:56:52', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('98157c029799c775172e3829c67c7ab9', '2023-05-17 15:57:55', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('3ebdacad900db53b23ec5e83614d588b', '2023-05-17 15:57:59', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('af57afff61951cc4bef8a2de93126fe7', '2023-05-17 15:57:59', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('015795246d2344d3fa2a6fb64ca27f3a', '2023-05-17 15:58:01', '798fddc17f2211eb973d6100d940b6cf', '商品管理');
INSERT INTO `log_info` VALUES ('13ba88499f55b47f5b211a51efe192d6', '2023-05-17 15:59:00', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('90fb942e80b92801de18dc0fa69cfab3', '2023-05-17 15:59:00', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('4e9a0e5719e35eb8a60d1a2aa6dc54e1', '2023-05-17 15:59:02', '798fddc17f2211eb973d6100d940b6cf', '商品管理');
INSERT INTO `log_info` VALUES ('a3058c75cfb410ae1aec2ecea5395504', '2023-05-17 15:59:03', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('cc593f9bbab26d3e522578d5ad3a4fba', '2023-05-17 15:59:03', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('c5bce56860fa4dd19d7e9634515f0cc6', '2023-05-17 15:59:12', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('1833741fdf8a4e238f8fad0eeec67f56', '2023-05-17 15:59:27', '798fddc17f2211eb973d6100d940b6cf', '商品管理');
INSERT INTO `log_info` VALUES ('414d954b35aba3325eca9df30460e420', '2023-05-17 16:04:40', '798fddc17f2211eb973d6100d940b6cf', '登录日志');
INSERT INTO `log_info` VALUES ('ab13af39bac443654f84c43e77dfb566', '2023-05-17 16:04:41', '798fddc17f2211eb973d6100d940b6cf', '角色管理');
INSERT INTO `log_info` VALUES ('c6602257400337a70a269db651d72bfb', '2023-05-17 16:04:41', '798fddc17f2211eb973d6100d940b6cf', '功能日志');
INSERT INTO `log_info` VALUES ('3885f10028b038ff284007dd8675d3c0', '2023-05-17 16:04:43', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('5ce9f8cb42dfa6fa9a8242b10a9f282f', '2023-05-17 16:04:43', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('3d83c74da3f18c3851c4449fe3d49689', '2023-05-17 16:04:52', '798fddc17f2211eb973d6100d940b6cf', '用户管理');
INSERT INTO `log_info` VALUES ('255fd691fd3a0d30990bcc46fcd4f816', '2023-05-17 16:04:55', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('83d7ca2c00d1589b4a3ccd11e318a230', '2023-05-17 16:21:35', '798fddc17f2211eb973d6100d940b6cf', '登录');
INSERT INTO `log_info` VALUES ('1af8f788f676f1ddc6f3c81b19bc5931', '2023-05-17 16:22:16', '798fddc17f2211eb973d6100d940b6cf', '注销');
INSERT INTO `log_info` VALUES ('dadc49c0c40dfbedb5c24ec9d6ea3ccb', '2023-05-17 16:22:18', '798fddc17f2211eb973d6100d940b6cf', '登录');
INSERT INTO `log_info` VALUES ('90c3ddbbfcb5325e7a9e6e42f83d89d6', '2023-05-17 16:22:29', '798fddc17f2211eb973d6100d940b6cf', '登录日志');
INSERT INTO `log_info` VALUES ('2a18de2d999e6357af1462ceea115c69', '2023-05-17 16:22:35', '798fddc17f2211eb973d6100d940b6cf', '角色管理');
INSERT INTO `log_info` VALUES ('2ead9b0f6573b1d0f31959ee7d8d653e', '2023-05-17 16:22:36', '798fddc17f2211eb973d6100d940b6cf', '功能日志');
INSERT INTO `log_info` VALUES ('43b064d5fc6db811c4c07aba13f0d2b2', '2023-05-17 16:22:36', '798fddc17f2211eb973d6100d940b6cf', '用户管理');
INSERT INTO `log_info` VALUES ('d4802bd4c82298f5e3e912aba66d7c9d', '2023-05-17 16:22:36', '798fddc17f2211eb973d6100d940b6cf', '角色管理');
INSERT INTO `log_info` VALUES ('e9483b309a52ed1f2bd6ddeeac8ab7ef', '2023-05-17 16:22:36', '798fddc17f2211eb973d6100d940b6cf', '用户管理');
INSERT INTO `log_info` VALUES ('c5f6c15635921b976eda15eee9efcdb3', '2023-05-17 16:22:58', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('df4da33f901ab2a962d3c8662b43433b', '2023-05-17 16:22:58', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('24e4a76c176d48e98ad4be6894a4360b', '2023-05-17 16:23:29', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('124dd4c045fbc89437fd0a5cbdab9ff4', '2023-05-17 16:23:37', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('280733b63316fabf0ceefaae79bdaa86', '2023-05-17 16:23:40', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('412b264120414d7f7208963895d4c9da', '2023-05-17 16:23:40', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('9c432bc1a34d4b4ab447e3f845adddc5', '2023-05-17 16:23:42', '798fddc17f2211eb973d6100d940b6cf', '商品管理');
INSERT INTO `log_info` VALUES ('42db52ee1585c4664c86e2ac7ee14ddb', '2023-05-17 16:23:44', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');
INSERT INTO `log_info` VALUES ('598d2593294d3e02fe7775a9dbc2cd72', '2023-05-17 16:23:44', '798fddc17f2211eb973d6100d940b6cf', '菜单管理');

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item`  (
  `order_item_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单ID',
  `product_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品ID',
  `warehouse_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库ID',
  `num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '购买数量',
  `delivery_num` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发货数量',
  `order_item_amount` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '细单总金额',
  PRIMARY KEY (`order_item_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_item
-- ----------------------------

-- ----------------------------
-- Table structure for product_warehouse_rel
-- ----------------------------
DROP TABLE IF EXISTS `product_warehouse_rel`;
CREATE TABLE `product_warehouse_rel`  (
  `product_warehouse_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品id',
  `warehouse_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库id（区分库存）',
  `stock` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '库存数',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '0禁用，1启用',
  `createTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`product_warehouse_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product_warehouse_rel
-- ----------------------------

-- ----------------------------
-- Table structure for t_email
-- ----------------------------
DROP TABLE IF EXISTS `t_email`;
CREATE TABLE `t_email`  (
  `e_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `e_topic` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '标题',
  `file_json` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '附件存放下载地址',
  `e_content` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '内容',
  `create_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建人',
  `create_time` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`e_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_email
-- ----------------------------
INSERT INTO `t_email` VALUES ('623d00a14d664707983874b32e1a3fa3', '1', NULL, '', '798fddc17f2211eb973d6100d940b6cf', '20230207 22:42:41');

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu`  (
  `m_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单id',
  `m_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单功能名',
  `p_menu` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上级功能编号',
  `is_navigation` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否用于导航（0：是 1：否）',
  `m_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单URL',
  `m_icon` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `m_sort` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单顺序',
  `m_desc` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单描述',
  `create_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES ('0', '根节点', NULL, '0', '', '0', '1', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_menu` VALUES ('04f5cbbec92711eba9ff144f8a625b6e', '商品管理', '0', '0', '1', '2', '33', '', '曾成龙', NULL, NULL, NULL);
INSERT INTO `t_menu` VALUES ('1', '基础功能', '0', '0', '', '2', '2', '1', '1', NULL, '曾成龙', NULL);
INSERT INTO `t_menu` VALUES ('2ca02705bb0911eb8357144f8a625b6e', '登录日志管理', '1', '0', '/LogController/hello.html', '3', '1', '登录日志管理', '曾成龙', NULL, '798fddc17f2211eb973d6100d940b6cf', '2023-05-17 14:43:42');
INSERT INTO `t_menu` VALUES ('4', '角色管理', '1', '0', '/RoleController/role_native.html', '5', '3', '', NULL, NULL, '曾成龙', NULL);
INSERT INTO `t_menu` VALUES ('5', '权限管理', '0', '0', '2', '1', '3', '', NULL, NULL, '798fddc17f2211eb973d6100d940b6cf', '2023-05-17 15:56:49');
INSERT INTO `t_menu` VALUES ('6', '菜单管理', '5', '0', '/menuController/showindex.html', '4', '5', '', NULL, NULL, '曾成龙', NULL);
INSERT INTO `t_menu` VALUES ('65768529a6f411edb9ce0242ac110002', '首页', '1', '0', '/showSYpage.html', '3', '1', '', '曾小白', NULL, '曾小白', NULL);
INSERT INTO `t_menu` VALUES ('70bb1d88c92711eba9ff144f8a625b6e', '商品列表', '04f5cbbec92711eba9ff144f8a625b6e', '0', '/productManagerPage', '4', '1', '', '曾成龙', NULL, '798fddc17f2211eb973d6100d940b6cf', '2023-05-17 16:23:37');
INSERT INTO `t_menu` VALUES ('8c014bdff1d54e9eb3aca4844fb4f741', '功能日志管理', '1', '0', '/LogController/functionLog.html', '3', '4', '功能日志管理', '798fddc17f2211eb973d6100d940b6cf', '2023-05-17 14:44:09', NULL, NULL);
INSERT INTO `t_menu` VALUES ('9792c39aa6f411edb9ce0242ac110002', '站内信', '1', '0', '/NoticeController/showIndex.html', '3', '11', '', '曾小白', NULL, '曾小白', NULL);
INSERT INTO `t_menu` VALUES ('9f4e519dc92811eba9ff144f8a625b6e', '商品分析图', '04f5cbbec92711eba9ff144f8a625b6e', '0', '/showChars.html', '4', '2', '', '曾成龙', NULL, '曾成龙', NULL);
INSERT INTO `t_menu` VALUES ('cb91070fbb0a11eb8357144f8a625b6e', '用户管理', '1', '0', '/userlist.html', '6', '999', '', '曾成龙', NULL, '曾成龙', NULL);

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice`  (
  `n_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `send_man` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '发送人id',
  `receive_man` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '收件人id',
  `e_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '信件id',
  `have_read` varchar(1) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '是否已读（0未读，1已读）',
  `create_time` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`n_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_notice
-- ----------------------------

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `order_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_num` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单号',
  `order_amount` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单总金额',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单状态 0：待支付、1：待发货 2：已发货 3：已完成',
  `createTime` datetime NULL DEFAULT NULL,
  `user_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建用户',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_order
-- ----------------------------

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product`  (
  `product_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `product_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品编码',
  `product_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `product_money` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品价格（元）',
  `stock` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '库存总数',
  `speck` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '单位',
  `product_url` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品图片链接',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否启用0禁用，1启用',
  `createTime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_product
-- ----------------------------

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `r_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `r_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `r_desc` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `create_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `update_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_user` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`r_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('62f55eb97f2211eb973d6100d940b6cf', '游客2', '1', '20210307 16:51:23', NULL, '楼乐妍');
INSERT INTO `t_role` VALUES ('64720b5d7f2011eb973d6100d940b6cf', '超级管理员', '最大权限用户', '20210307 16:37:07', NULL, '曾成龙');
INSERT INTO `t_role` VALUES ('8f5efb837f2011eb973d6100d940b6cf', '游客', '无系统性菜单权限', '20210307 16:38:19', NULL, '曾成龙');
INSERT INTO `t_role` VALUES ('90861c3fc14111eba9ff144f8a625b6e', '数据管理员', '数据管理员', '20210530 20:21:11', NULL, '曾成龙');

-- ----------------------------
-- Table structure for t_sale
-- ----------------------------
DROP TABLE IF EXISTS `t_sale`;
CREATE TABLE `t_sale`  (
  `s_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jan_sale_num` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `feb_sale_num` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mar_sale_num` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `apr_sale_num` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `may_sale_num` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jun_sale_num` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jul_sale_num` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `aug_sale_num` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sep_sale_num` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `oct_sale_num` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nov_sale_num` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dec_sale_num` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`s_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_sale
-- ----------------------------
INSERT INTO `t_sale` VALUES ('1', '29803', '39803', '29873', '67905', '69823', '99803', '29803', '29803', '29803', '29803', '1', '29803');
INSERT INTO `t_sale` VALUES ('2', '32158', '39803', '29873', '67905', '69823', '99803', '29803', '29803', '29803', '29803', '1', '29803');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `u_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名称',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `r_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色ID',
  `create_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `update_time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户状态,0:正常 1:注销',
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1de072b1c35c11ebbd12c85b76b7b678', 'admin', 'lueSGJZetyySpUndWjMBEg==', '8f5efb837f2011eb973d6100d940b6cf', '20210602 12:36:18', NULL, '1', '', '', '0');
INSERT INTO `t_user` VALUES ('4b6cce897f2211eb973d6100d940b6cf', '楼乐妍', 'lueSGJZetyySpUndWjMBEg==', '64720b5d7f2011eb973d6100d940b6cf', '20210307 16:50:44', '20210602 12:35:58', '0', '', '', '1');
INSERT INTO `t_user` VALUES ('798fddc17f2211eb973d6100d940b6cf', '曾小白', 'lueSGJZetyySpUndWjMBEg==', '64720b5d7f2011eb973d6100d940b6cf', '20210307 16:52:01', '20230207 22:26:30', '1', '', '', '0');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `rm_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `r_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `m_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`rm_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('6117e865c14011eba9ff144f8a625b6e', '62f55eb97f2211eb973d6100d940b6cf', '0');
INSERT INTO `t_user_role` VALUES ('6118be77c14011eba9ff144f8a625b6e', '62f55eb97f2211eb973d6100d940b6cf', '5');
INSERT INTO `t_user_role` VALUES ('61198776c14011eba9ff144f8a625b6e', '62f55eb97f2211eb973d6100d940b6cf', '6');
INSERT INTO `t_user_role` VALUES ('611a5fc5c14011eba9ff144f8a625b6e', '62f55eb97f2211eb973d6100d940b6cf', '1');
INSERT INTO `t_user_role` VALUES ('611b9c93c14011eba9ff144f8a625b6e', '62f55eb97f2211eb973d6100d940b6cf', '2ca02705bb0911eb8357144f8a625b6e');
INSERT INTO `t_user_role` VALUES ('611c9fd3c14011eba9ff144f8a625b6e', '62f55eb97f2211eb973d6100d940b6cf', '4');
INSERT INTO `t_user_role` VALUES ('9f2b47f2c14111eba9ff144f8a625b6e', '90861c3fc14111eba9ff144f8a625b6e', '0');
INSERT INTO `t_user_role` VALUES ('9f2bc5e3c14111eba9ff144f8a625b6e', '90861c3fc14111eba9ff144f8a625b6e', '1');
INSERT INTO `t_user_role` VALUES ('9f2c402ec14111eba9ff144f8a625b6e', '90861c3fc14111eba9ff144f8a625b6e', '2ca02705bb0911eb8357144f8a625b6e');
INSERT INTO `t_user_role` VALUES ('b5604040f47e11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', '0');
INSERT INTO `t_user_role` VALUES ('b560d83df47e11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', '1');
INSERT INTO `t_user_role` VALUES ('b5614e22f47e11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', '65768529a6f411edb9ce0242ac110002');
INSERT INTO `t_user_role` VALUES ('b561d1a8f47e11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', '2ca02705bb0911eb8357144f8a625b6e');
INSERT INTO `t_user_role` VALUES ('b5626b09f47e11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', '9792c39aa6f411edb9ce0242ac110002');
INSERT INTO `t_user_role` VALUES ('b5630ae8f47e11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', '4');
INSERT INTO `t_user_role` VALUES ('b563a359f47e11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', '8c014bdff1d54e9eb3aca4844fb4f741');
INSERT INTO `t_user_role` VALUES ('b5642926f47e11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', 'cb91070fbb0a11eb8357144f8a625b6e');
INSERT INTO `t_user_role` VALUES ('b564c656f47e11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', '5');
INSERT INTO `t_user_role` VALUES ('b565624cf47e11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', '6');
INSERT INTO `t_user_role` VALUES ('b565de50f47e11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', '04f5cbbec92711eba9ff144f8a625b6e');
INSERT INTO `t_user_role` VALUES ('b5665176f47e11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', '70bb1d88c92711eba9ff144f8a625b6e');
INSERT INTO `t_user_role` VALUES ('b566bdeff47e11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', '9f4e519dc92811eba9ff144f8a625b6e');
INSERT INTO `t_user_role` VALUES ('effae473c35b11ebbd12c85b76b7b678', '8f5efb837f2011eb973d6100d940b6cf', '0');
INSERT INTO `t_user_role` VALUES ('f0026058c35b11ebbd12c85b76b7b678', '8f5efb837f2011eb973d6100d940b6cf', '1');
INSERT INTO `t_user_role` VALUES ('f00a2d8cc35b11ebbd12c85b76b7b678', '8f5efb837f2011eb973d6100d940b6cf', '2ca02705bb0911eb8357144f8a625b6e');

-- ----------------------------
-- Table structure for t_warehouse
-- ----------------------------
DROP TABLE IF EXISTS `t_warehouse`;
CREATE TABLE `t_warehouse`  (
  `warehouse_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `warehouse_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库名称',
  `warehouseCode` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库号（区分库存）',
  PRIMARY KEY (`warehouse_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_warehouse
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
