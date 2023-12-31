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

 Date: 18/05/2023 17:01:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for log_info
-- ----------------------------
DROP TABLE IF EXISTS `log_info`;
CREATE TABLE `log_info`  (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '事件',
  `create_time` datetime NULL DEFAULT NULL,
  `create_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `update_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of log_info
-- ----------------------------
INSERT INTO `log_info` VALUES ('1c34bb1d8cf668b2f6354e858a213f96', '登录', '2023-05-18 10:54:48', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('fdbe88d437a334c1fbe7efcc3a3efcd8', '登录日志', '2023-05-18 10:55:02', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('245016a255a68b594acec2f8f5ef3b50', '角色管理', '2023-05-18 10:55:08', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('363b547b8488d90aacf5edc48b4f51f7', '功能日志', '2023-05-18 10:55:09', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('fbf960abafe54383837ca4eebd1015a0', '用户管理', '2023-05-18 10:55:14', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('603d9559f1e11edd8c9897a353bc263e', '用户管理', '2023-05-18 10:55:14', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('0715143a1c07035e5b30bafc2ca774c1', '角色管理', '2023-05-18 10:55:14', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('93515f581f2f9f5fe7adfcc81eeb3ceb', '登录', '2023-05-18 10:58:14', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('d6663cd29954bca87f2179cfe1885f10', '登录日志', '2023-05-18 10:58:18', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('2f3829ccb9975a210abbc4c2b7cebfdd', '功能日志', '2023-05-18 10:58:20', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('442ae4465d159a782ebd17194b57a265', '角色管理', '2023-05-18 10:58:23', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('8ad751616fadea96a76f9517dd9d4343', '用户管理', '2023-05-18 10:58:41', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('0c045e9adeb8298cbe0c2429b3e24e8f', '用户管理', '2023-05-18 10:58:41', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('599974cfe851319086a7784b803375c8', '角色管理', '2023-05-18 10:58:41', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('e9fdf5370e39b66d228d00585cb4856a', '注销', '2023-05-18 10:59:04', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('0a39652b42c2a59c6e09c61f140aadb9', '登录', '2023-05-18 10:59:06', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('a882ced902f3f031f243e07da0ebbbf2', '登录日志', '2023-05-18 10:59:08', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('77f3b263a364fe7a6f3a574c43814218', '角色管理', '2023-05-18 10:59:25', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('ee0f2f2e75060517852bd1ec8389aae3', '功能日志', '2023-05-18 10:59:44', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('d8fa1d24779dce641fbabf95b5632f1a', '用户管理', '2023-05-18 10:59:50', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('ee6dfec982022488f455da4598e022ba', '用户管理', '2023-05-18 10:59:50', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('a2ac82988cd56d641975980ee1d2f535', '角色管理', '2023-05-18 10:59:50', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('56676873b73bced63d0bbfcb7c52001a', '用户管理', '2023-05-18 11:00:05', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('89fc52f3300f481884776d87d7de64b8', '用户管理', '2023-05-18 11:01:56', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('7ae21d88b5551632b614d318edd4b547', '用户管理', '2023-05-18 11:01:56', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('9f27533780882ff526adb64606c0ee63', '角色管理', '2023-05-18 11:01:56', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('31ed7c5e8329926e9814ec952584770a', '用户管理', '2023-05-18 11:01:58', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('9795aa704de37356e134c0834283d428', '角色管理', '2023-05-18 11:01:58', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('480b5c87cc8d0e692307ae755d8ed8f3', '用户管理', '2023-05-18 11:01:58', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('866554f557dd35e1691e4fcdd58a1fdc', '用户管理', '2023-05-18 11:02:03', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('19ff5b6c451673c3c164b544690c5ad1', '登录日志', '2023-05-18 11:02:15', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('70a27d3cc17929cb865b442a0e609a81', '角色管理', '2023-05-18 11:02:17', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('5cd991c8c1d46ef33cd6f814dec91391', '用户管理', '2023-05-18 11:02:38', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('93f1f783122cfc17e813a090d6f1b7d2', '功能日志', '2023-05-18 11:03:02', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('da19601dd85d8b95008a0ec7f904a21d', '菜单管理', '2023-05-18 11:03:14', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('69db63c6ee9861a84bc676041d39d63a', '菜单管理', '2023-05-18 11:03:14', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('c4a92e3a04d9f242deb9612f50747748', '菜单管理', '2023-05-18 11:03:31', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('d23b4675695a18725758bb127db3e33a', '菜单管理', '2023-05-18 11:03:31', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('573f03f97e2f478a74064c2c888b993c', '商品管理', '2023-05-18 11:03:39', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('f73fd98bc345645f4be945ae8394ca3c', '菜单管理', '2023-05-18 11:03:44', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('c36996156bf9ac8bdf4cb6a263c25fb2', '菜单管理', '2023-05-18 11:03:44', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('10870d9a2d3b3146bd4a6513a85b3b63', '登录', '2023-05-18 11:22:04', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('dfb0682a5f15efb65bf94b85a43cc95f', '登录', '2023-05-18 13:38:44', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('176689bb4016906c528dd1c75109bbff', '登录日志', '2023-05-18 14:26:31', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('79ec2ad727f8dc3316e8c9d834a00808', '角色管理', '2023-05-18 14:28:46', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('06c266aa430576bdc1d945c4fd9958af', '功能日志', '2023-05-18 14:28:47', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('a04dfebef46a7596b9be4cfa1bab7332', '用户管理', '2023-05-18 14:28:49', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('3de7c1072ae62ad38abf9b23a7f16ba3', '用户管理', '2023-05-18 14:28:49', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('c794ff66eb4b2f830b0b58eefc5e9911', '角色管理', '2023-05-18 14:28:49', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('999ba5b3afa7e1e3a5e5acf548b0bb23', '菜单管理', '2023-05-18 14:33:40', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('5da4e43cbbe9d244ba6ebc77d67204f5', '菜单管理', '2023-05-18 14:33:40', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('de975a58a848325d77251eb766398546', '菜单管理', '2023-05-18 14:33:50', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('43e06ca3dc0bf142066dbc3b2be607e7', '菜单管理', '2023-05-18 14:34:20', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('a9fb8fbcb4fb2df9f578ed4df4de21fe', '菜单管理', '2023-05-18 14:34:38', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('82026e260f846b21bb997ff54e5235e3', '菜单管理', '2023-05-18 14:34:38', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('00289bf88d659e4450f28bd045e1e659', '菜单管理', '2023-05-18 14:34:44', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('c4cfb789b546d8557f384104cc6b12b1', '菜单管理', '2023-05-18 14:35:07', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('a1ce3066f887cbe5ac08d85b87837e7d', '菜单管理', '2023-05-18 14:35:13', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('c59437c4a19ab684502f685ddd8320da', '菜单管理', '2023-05-18 14:35:13', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('97e71bf8b3ab969e975cb709357722a1', '菜单管理', '2023-05-18 14:35:17', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('4769bc695d984aca842a0629097e1a08', '菜单管理', '2023-05-18 14:35:17', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('5e45b56f2bf0537015fcb971c179ab16', '菜单管理', '2023-05-18 14:35:28', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('756f604898c220d07d62ea3a72021998', '菜单管理', '2023-05-18 14:35:28', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('9157c04d53675a70283434a8cd6a3b08', '登录', '2023-05-18 14:50:13', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('1ce347705368e2c5990c000a439d6b86', '菜单管理', '2023-05-18 14:50:22', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('15b832fbd02305dd5eb3da0d641b851f', '菜单管理', '2023-05-18 14:50:22', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('759a701443f10de640733342ee02bad7', '菜单管理', '2023-05-18 14:50:33', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('c4ad4349fe279239b788dbeef2c02493', '菜单管理', '2023-05-18 14:51:13', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('956c97cd4680f4e4b90335a92a32260c', '菜单管理', '2023-05-18 14:51:15', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('0a7c7c2fb138de637cc848e7c2017944', '菜单管理', '2023-05-18 14:51:15', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('430c401c13877fe511db6b89c812ac08', '菜单管理', '2023-05-18 14:51:35', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('427eea579203956828d17742fe257d15', '菜单管理', '2023-05-18 14:51:42', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('3b30b7ff3ee94c79de6ac0507b5ca4c9', '菜单管理', '2023-05-18 14:51:46', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('f68de22deeaf02281a83f5557b734679', '菜单管理', '2023-05-18 14:51:46', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('a32941f0ba248b2dbd170d357b1442f0', '角色管理', '2023-05-18 14:51:53', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('bc5b4d3135dc31d6e13cee87a448a7d0', '角色管理', '2023-05-18 14:52:05', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('544a8127fa95ec28cda59302c06dfaa5', '菜单管理', '2023-05-18 14:52:12', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('381dca6a06837db9992c2c0de9ba582e', '菜单管理', '2023-05-18 14:52:12', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('04daade3e143e1141c6df64be2f7fcff', '角色管理', '2023-05-18 15:05:31', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('c36decf225c67621a41747094cca6e36', '角色管理', '2023-05-18 15:06:49', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('59ac624c99d113aba329958d2b2dede5', '菜单管理', '2023-05-18 15:07:59', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('6ae72056f6b3b0d280f63dc2c73025cd', '菜单管理', '2023-05-18 15:07:59', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('e71161cf777d836ea7a9d0816bec5ee1', '登录日志', '2023-05-18 15:08:03', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('714cbe801cb0a25d50b565ae6f546c56', '用户管理', '2023-05-18 15:08:24', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('61ea642e26fc1843b407d1cbee719431', '角色管理', '2023-05-18 15:08:24', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('ed3204f8a99501adb72b9d771d0175ad', '用户管理', '2023-05-18 15:08:24', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('a3df2479d68d3af0e6627e9ba45513b9', '用户管理', '2023-05-18 15:09:18', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('5f6c5efc63740423fa1a31b6d96136a9', '角色管理', '2023-05-18 15:09:18', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('309690312ea43b053734140b3ec6711d', '用户管理', '2023-05-18 15:09:18', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('893ef6c79ef306bb9bcd0a1a3b2770d8', '登录日志', '2023-05-18 15:15:45', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('cb36a3e5406d795f827ca02a7a1bbea9', '登录日志', '2023-05-18 15:19:53', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('a55e45a65986ae4188f4c0530967d057', '菜单管理', '2023-05-18 15:19:57', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('fdb06bc3a0231ba840a85bd122a98028', '菜单管理', '2023-05-18 15:19:57', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('e0e336ed0f5d7e5dd8babd4e0f2613c1', '菜单管理', '2023-05-18 16:01:08', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('c2fb57dc3b4270d8fd9f31cb1f8a5125', '菜单管理', '2023-05-18 16:01:08', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('3d43a0e7db612d4ef8f4b470c2542402', '菜单管理', '2023-05-18 16:01:22', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('602f9d6f29cd4bc1a00d83f5b40d50d5', '菜单管理', '2023-05-18 16:01:25', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('4c986ef611a13718e700c639f4bfaf70', '菜单管理', '2023-05-18 16:01:25', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('d0161a8ff0fa4c63354a42f0af6b6fe1', '注销', '2023-05-18 16:57:22', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);
INSERT INTO `log_info` VALUES ('7d660be2a61a50bdf40cc383e16566ce', '登录', '2023-05-18 16:57:31', '798fddc17f2211eb973d6100d940b6cf', NULL, NULL);

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
  `create_time` datetime NULL DEFAULT NULL,
  `create_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `update_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
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
  `create_time` datetime NULL DEFAULT NULL,
  `create_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `update_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
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
  `create_time` datetime NULL DEFAULT NULL,
  `create_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `update_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`e_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_email
-- ----------------------------
INSERT INTO `t_email` VALUES ('623d00a14d664707983874b32e1a3fa3', '1', NULL, '', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_hongsibao
-- ----------------------------
DROP TABLE IF EXISTS `t_hongsibao`;
CREATE TABLE `t_hongsibao`  (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `main_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '17版主类',
  `sub_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '17版亚类',
  `base_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '17版基本类型',
  `new_standard_main_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新标准主类',
  `new_standard_sub_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新标准亚类',
  `new_standard_base_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '新标准基本类型',
  `scenic_spot` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在景区或集合体',
  `city` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市',
  `county` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '县或区',
  `villages_and_towns` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '乡镇',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细地址',
  `xwgs84` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Xwgs84',
  `ywgs84` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Ywgs84',
  `source` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源',
  `level` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '自评等级',
  `score` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评分',
  `principal` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区县负责人',
  `create_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1240 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_hongsibao
-- ----------------------------
INSERT INTO `t_hongsibao` VALUES (1, '石儿山', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.360100837895', '37.3930154394338', '卫星影像补充', '4', '81', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (2, '奶头山', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.51766204834', '37.4082717895508', '卫星影像补充', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (3, '辛家湾子', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.352445', '37.354164', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (4, '石涝坝', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.366096', '37.439256', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (5, '十八家塘', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.673526453745', '37.355490047647', '宁夏地名资料', '4', '77', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (6, '双磨盘', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.513655', '37.505402', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (7, '王家碱疙瘩', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.443987', '37.474973', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (8, '响喳子', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.3699', '37.473573', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (9, '刀把子地', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.44087', '37.364713', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (10, '东滩', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.648003007938', '37.3874743914206', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (11, '下江家湾子', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.346784', '37.35299', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (12, '北台', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.228982', '37.146989', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (13, '爱家岭', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.19919', '37.186431', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (14, '革断头', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.330304', '37.341717', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (15, '捞马泉', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.400631', '37.481678', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (16, '交界梁', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.552186', '37.555943', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (17, '辛圈梁', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.377757', '37.482172', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (18, '新圈梁', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.380338', '37.493442', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (19, '张家圈梁', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.514448', '37.367341', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (20, '八里峁滩', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.287371', '37.136784', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (21, '麻黄坑', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.502088', '37.454512', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (22, '新窑湾子', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.50362', '37.472882', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (23, '星星梁', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.527335', '37.459925', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (24, '阴凉湾', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.45798', '37.504442', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (25, '石喇叭', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.0096704', '37.47535131', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (26, '石喇叭子沟门', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '105.9738049', '37.46151983', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (27, '麦家台子', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.2445599', '37.53711575', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (28, '孙家滩', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.0545437', '37.57741375', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (29, '沙沟门', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.1877813', '37.36494946', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (30, '草帽梁', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.0401551', '37.47662548', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (31, '滚泉', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.0518969', '37.43102459', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (32, '海子梁', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.0629324', '37.42003111', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (33, '劳动洼', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.07193365', '37.41963808', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (34, '木疙瘩', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.2094726', '37.42289718', '25万基础地理信息库', '4', '80', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (35, '许家铺铺子', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.07910607', '37.43588191', '宁夏地名资料', '4', '77', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (36, '环湖丘陵', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.261986', '37.451324', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (37, '王户台山丘', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', '王户台村', '吴忠市', '红寺堡区', '柳泉乡', ' ', '105.88424911', '37.3585932', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (38, '红柳掌', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.3095623', '37.49596493', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (39, '古木岭', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.297980551029', '37.4182170122933', '25万基础地理信息库', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (40, '淹死狗坑', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.224754865484', '37.4505659094155', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (41, '柳庄', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.290300342605', '37.407526754747', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (42, '麻绳断头', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.1635152', '37.44007712', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (43, '苹果园子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.180534', '37.447121', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (44, '南沟沿', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2182314', '37.1404838', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (45, '南界梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.124933725619', '37.2108780604857', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (46, '南咀子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2252799', '37.1594141', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (47, '南台', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.138670143107', '37.2830676852146', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (48, '南塘子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.264492', '37.549384', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (49, '柠条台', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229697708854', '37.263394481194', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (50, '皮条咀', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.7601186', '37.25147727', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (51, '皮裤裆地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339487626148', '37.1355143358596', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (52, '平伙咀', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.524021409266', '37.4836506573002', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (53, '平梁渠', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2227654', '37.53417457', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (54, '青土坑', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2475889', '37.50038415', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (55, '泉子沟咀', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229697112298', '37.2633996423212', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (56, '任新庄子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2505654', '37.58553454', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (57, '瞿家套子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.3274108', '37.55156306', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (58, '泉子沟洼', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.031597247141', '37.3349740467925', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (59, '石子沟', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.229697620604', '37.2633947426563', 'poi数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (60, '三岔尖子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.229694236925', '37.2634029901696', '宁夏地名资料', '4', '78', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (61, '三道咀子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339483888159', '37.1355127201308', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (62, '三条咀', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.228900251943', '37.3196718426842', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (63, '散路', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.244722458789', '37.0914998931569', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (64, '沙草墩上湾', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339483735696', '37.1355114277881', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (65, '沙沟脑地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.27469391', '37.4543285400001', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (66, '沙坑', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.146958', '37.47414578', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (67, '沙梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2534232', '37.46229038', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (68, '沙渠梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.318179601866', '37.1300608696502', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (69, '沙洼', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339488474083', '37.135516934411', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (70, '沙窝子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233944457887', '37.2648373331749', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (71, '沙腰岘', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339488244218', '37.1355166438844', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (72, '上樊家山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339491729473', '37.135509164282', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (73, '烧坊台', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339482534818', '37.1355075030029', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (74, '蛇腰湾子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.394140211732', '37.3580263398654', '宁夏地名资料', '4', '78', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (75, '上任家窑', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339485013498', '37.1355091160677', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (76, '施家塘', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.7939611', '37.31816286', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (77, '十子湾', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.3490728', '37.3864386', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (78, '石峁子沟滩', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.5984221', '37.50724923', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (79, '双疙瘩', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.33948641539', '37.1355082369892', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (80, '水路', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.1235812', '37.57875522', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (81, '水路洼', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229696974387', '37.263396914591', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (82, '四号井台', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.1362617', '37.43964294', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (83, '四十里坬', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.2360355', '37.27690107', '宁夏地名资料', '4', '75', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (84, '四个圈', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.3338221', '37.55787486', '宁夏地名资料', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (85, '苏记北梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.23393786901', '37.2648293948981', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (86, '天桥子地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.33949148797', '37.1355091500842', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (87, '天台山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339490715474', '37.135509654336', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (88, '天塘塘', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233942872174', '37.2648354972465', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (89, '天子坑', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.935587119902', '37.326425983533', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (90, '田家圈', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.22970217714', '37.2633960969281', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (91, '田家台', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339485145967', '37.1355117891311', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (92, '田台子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.935583939103', '37.3264296550394', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (93, '小阳洼', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.102162379737', '37.4715125895039', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (94, '小阴洼', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.097359', '37.474953', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (95, '青山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233937637332', '37.2648277228617', 'poi数据', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (96, '土沟梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.297984020368', '37.4182101531057', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (97, '土桥地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.24850783508', '37.1286314494255', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (98, '土匣子川', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2148346', '37.20730991', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (99, '王户掌', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339485514158', '37.1355124337396', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (100, '王家大湾', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339486408144', '37.1355152923923', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (101, '王家梁子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.3113075', '37.14668498', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (102, '王户台', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', '王户台村', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.2791225', '37.4189746', '宁夏地名资料', '4', '75', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (103, '魏家咀', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.982342', '37.21827211', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (104, '乌沙塘', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.9916504', '37.42383544', '宁夏地名资料', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (105, '魏家咀哨', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233940085846', '37.2648323255822', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (106, '西川子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.33948799896', '37.13551344421', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (107, '西丹丹', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233936505012', '37.2648287610589', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (108, '西沟', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.33948291091', '37.1355117928804', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (109, '西梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339485672527', '37.135508823376', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (110, '西岭', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233936247015', '37.2648291719831', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (111, '西牛咀', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339482556823', '37.1355157471184', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (112, '席家台', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339485168457', '37.1355056762695', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (113, '喜家大地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339488733823', '37.1355092828517', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (114, '细林子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339483757886', '37.1355093037295', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (115, '细林子地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339484071584', '37.1355103012009', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (116, '下滚子梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339482884045', '37.1355093549202', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (117, '下梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339486076636', '37.1355096252191', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (118, '下边窑', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.233942527533', '37.2648288582509', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (119, '线驮石', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.339484088173', '37.1355117557979', '宁夏地名资料', '4', '75', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (120, '小风台疙瘩', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229700538558', '37.2633959793572', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (121, '小碱坑', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.235049592574', '37.4093895290765', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (122, '小咀子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339485156952', '37.135514534881', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (123, '大罗山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233934120411', '37.2648354905674', '野外采集', '4', '88', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (124, '小罗山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339486879324', '37.1355160211592', 'poi数据', '4', '84', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (125, '小马台梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339483466217', '37.1355164243246', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (126, '小脑脖山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339483894501', '37.1355122543781', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (127, '小沙洼', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229695777018', '37.2634004261491', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (128, '小沙咀子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.237055563838', '37.3062219351915', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (129, '小塘子地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339485837694', '37.1355126931425', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (130, '小团疙瘩', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.258069706117', '37.3724100656378', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (131, '北咀子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339483694046', '37.1355172949397', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (132, '北面子台', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.233945409515', '37.264832078579', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (133, '北塘子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233945232511', '37.2648344933819', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (134, '冰草咀', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.229701273165', '37.2634042912349', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (135, '冰草地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339489492412', '37.1355108755147', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (136, '菜窑子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.339484668706', '37.1355132718828', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (137, '冰草梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.5794139', '37.42737405', '宁夏地名资料', '4', '77', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (138, '冰草台', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339485456292', '37.1355105576208', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (139, '常家洼', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.251675', '37.228845', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (140, '达拉池', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.22182494', '37.0993759', '宁夏地名资料', '4', '75', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (141, '刺疙瘩窝', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339485124608', '37.1355107590886', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (142, '刺疙瘩窝子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233943629605', '37.2648296718208', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (143, '刺咀子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233943921844', '37.2648335749243', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (144, '大蛋蛋', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.213513', '37.28002557', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (145, '大地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.33949176192', '37.1355157691416', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (146, '大壕门', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.3046024', '37.39904249', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (147, '大碱坑', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.339484541318', '37.1355085068474', '宁夏地名资料', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (148, '大咀梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.3067014', '37.45869398', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (149, '大咀子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.0138285', '37.31215665', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (150, '大犁洼', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.33948525304', '37.1355118352765', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (151, '大犁洼地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339486187009', '37.1355136570587', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (152, '大凉洼', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.0203109', '37.27379561', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (153, '大梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.5665125', '37.48929549', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (154, '大梁头', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.35363954727', '37.4372217096687', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (155, '太阳山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.237056121353', '37.3062159134212', '全国国家湿地公园名录', '4', '82', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (156, '大脑脖山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.833741', '37.20874976', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (157, '大沙咀子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.911249317035', '37.2930325663439', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (158, '大梁洼', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.229697668048', '37.2634008972679', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (159, '大台地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.353640234337', '37.4372271920588', '宁夏地名资料', '4', '80', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (160, '大塘', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233938666911', '37.2648283292704', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (161, '大塘子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339488702095', '37.1355116010534', '宁夏地名资料', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (162, '大塘子地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.213261966459', '37.282557314898', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (163, '大西梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2174276', '37.14231066', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (164, '大张家洼', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.3198525', '37.42588672', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (165, '大嘴梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229701765412', '37.2633986744484', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (166, '地焦沟梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.315389', '37.405863', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (167, '东大梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229697981787', '37.2633989485294', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (168, '东沟滩', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2052046', '37.19083419', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (169, '东咀子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.33948279748', '37.1355147564695', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (170, '段家庄', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2386450445', '37.305912187', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (171, '段头子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229698161832', '37.2634015162805', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (172, '段家坟坟子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.339489592711', '37.1355159427275', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (173, '墩岭', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.89853839221', '37.2079759057266', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (174, '二道沟地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339482557608', '37.1355117579831', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (175, '二道林', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.0480783', '37.38543876', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (176, '断桥子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.4094961', '37.42363048', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (177, '二道渠', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339486621122', '37.1355149738242', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (178, '范家坟台', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339490999965', '37.1355083864227', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (179, '樊家山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.0600294', '37.40173857', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (180, '房房台', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.294959105756', '37.4800764724896', '宁夏地名资料', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (181, '坟沿梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.8573609', '37.38521558', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (182, '冯家岭子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.222732543945', '37.1830749511719', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (183, '凤凰滩', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233941225147', '37.2648310145243', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (184, '盖福新地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.898543177664', '37.2079796786154', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (185, '高家畔', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.1940561', '37.28033074', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (186, '高梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233939980609', '37.2648357298737', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (187, '高庄洼', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.24079061731', '37.2226507196622', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (188, '龚家岭地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229695236781', '37.2634009587567', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (189, '沟北', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339482456595', '37.1355152747899', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (190, '沟泉', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339490113382', '37.1355075301044', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (191, '枸杞峁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.6013034', '37.42659897', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (192, '好汉圪塔', '地文景观', '自然景观集合体', '山丘型景观', '05建筑与设施', '0506景观建筑与小品', '050603塔型建筑', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339487802697', '37.135508388344', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (193, '拐沟梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339485536306', '37.1355082050859', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (194, '黑家大梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.0518434', '37.18549163', '宁夏地名资料', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (195, '黑堎干', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.233943182803', '37.2648375037333', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (196, '黑鹰山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.22969935207', '37.2633949541749', '宁夏地名资料', '4', '79', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (197, '红梁头', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.33948770733', '37.1355117528474', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (198, '红坡坡', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233940634497', '37.2648373074641', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (199, '侯家庙梁子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.114340553942', '37.4482551203045', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (200, '狐山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.607233582309', '37.3939800067273', '宁夏地名资料', '4', '78', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (201, '胡璇台', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.552216', '37.41077', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (202, '华里四庄子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.566631658236', '37.4113215122811', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (203, '荒地洼', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.607185', '37.414207', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (204, '黄草台', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.607236757142', '37.4142314220326', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (205, '贾家梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.576828', '37.419155', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (206, '胶泥洼', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.324203', '37.41901', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (207, '金家梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.564362253625', '37.4280009457786', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (208, '井沟梁头', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.564438', '37.429676', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (209, '井沟门', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.556427', '37.427959', '宁夏地名资料', '4', '77', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (210, '井咀子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.474739', '37.430038', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (211, '菊花台', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.319856481014', '37.4356169463119', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (212, '卷草壕', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.560265', '37.436852', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (213, '卷草梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.31985292597', '37.4356204888195', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (214, '康家大山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.224312', '37.446182', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (215, '宽沟塘', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.0304194', '37.17821668', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (216, '孔家咀', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.309151', '37.467731', '宁夏地名资料', '4', '78', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (217, '兰家山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.259163', '37.475342', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (218, '狼子湾', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.223152160645', '37.2583389282227', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (219, '老坟台地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229700828076', '37.2634009133523', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (220, '老坟台疙瘩', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.258074266965', '37.3724107516521', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (221, '老坟塘', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233937235934', '37.2648356478521', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (222, '老鼠嘴', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233937939186', '37.2648276648481', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (223, '乔皮掌', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.339485336767', '37.1355164995514', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (224, '太阳山山丘', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.1207304', '37.18251851', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (225, '山前丘陵', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.3245488', '37.35160862', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (226, '马趟子地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.0631319', '37.26719898', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (227, '乌沙塘村缓丘型荒漠', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', '乌沙塘村', '吴忠市', '红寺堡区', '大河乡', ' ', '106.158102758663', '37.1987382957936', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (228, '南大梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2520084', '37.5630409', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (229, '磨盘山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.0660738', '37.43966724', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (230, '南蛋蛋', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.353641192789', '37.4372267884875', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (231, '南垛落', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339490507502', '37.1355079934808', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (232, '斜尖子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229696655691', '37.263397955122', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (233, '谢记湾地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.0896676', '37.31588971', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (234, '谢家圈', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.242806', '37.420937', '宁夏地名资料', '4', '78', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (235, '杏树地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.935591746481', '37.3264240561135', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (236, '杏树咀子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.108804747651', '37.4761270149204', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (237, '杏树洼（高家沟）', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.180711306129', '37.4392960988742', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (238, '熊家塘', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229703028423', '37.2634009537395', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (239, '杏树湾', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.0656793', '37.40800198', '宁夏地名资料', '4', '84', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (240, '崖断头梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.099826596794', '37.2922528356682', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (241, '羊哨路地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.294479121352', '37.4599755211511', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (242, '腰岘坡', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2998378', '37.17146205', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (243, '钥匙洼', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.294476397109', '37.4599734655743', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (244, '野池沟梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.3390488', '37.46203568', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (245, '叶记沙窝', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.294474907384', '37.4599711039009', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (246, '阴洼地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.542389645787', '37.559930693425', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (247, '隐子湾', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.542386600016', '37.5599261812403', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (248, '殷记坟', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.294950875381', '37.4800776185673', '宁夏地名资料', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (249, '鹰咀子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.93558491902', '37.3264270813422', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (250, '阴洼', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.1607432', '37.22304781', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (251, '榆树洼', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.25772768', '37.4505232600001', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (252, '榆树洼地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.30823983', '37.4617722', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (253, '枣沙墩', '地文景观', '自然景观集合体', '山丘型景观', '06历史文化遗址遗迹', '0602政治与军事场所', '060205烽火墩堠', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.4673333', '37.42954439', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (254, '月亮湾', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.10880279541', '37.4761199951172', '宁夏地名资料', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (255, '张家山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.9659139', '37.20077394', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (256, '张家湾湾', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339487896387', '37.1355134909502', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (257, '长趟子地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339490121517', '37.1355122517982', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (258, '赵花井', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.143726640607', '37.2482787103644', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (259, '中沟咀', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.506095', '37.59081208', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (260, '庄框子台', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.442360641341', '37.3880559544986', '宁夏地名资料', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (261, '南梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233938609927', '37.2648282413253', 'poi数据', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (262, '罗山山前丘陵', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', '罗山自然保护区', '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229697327481', '37.2634019360077', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (263, '八岔沟口', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.339488355391', '37.1355092473561', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (264, '白狐塘', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233937359228', '37.2648344406389', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (265, '白家崖湾', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.1714451', '37.16836945', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (266, '堡子疙瘩', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.488022', '37.41183908', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (267, '毕里寺庄子梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339486912715', '37.1355076707278', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (268, '当中梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.6092251', '37.51340158', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (269, '坟坑', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.6216447', '37.40590669', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (270, '顾庄台', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339484601747', '37.1355125271465', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (271, '红塔塘', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.2145547', '37.15284691', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (272, '好糜地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339483245332', '37.1355131263587', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (273, '黄牛府', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.8603562', '37.23172408', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (274, '黄羊岭', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2641987', '37.44588729', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (275, '黄庄', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339490450378', '37.1355124749987', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (276, '灰家窑湾子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.07021015183', '37.366363561917', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (277, '火石岭子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.248506516906', '37.1286273863344', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (278, '火石峁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.070206525136', '37.3663726599902', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (279, '尖牛方梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.095612', '37.321716', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (280, '碱沟咀', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.1737882', '37.36426506', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (281, '碱沟台', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.191597', '37.369659', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (282, '胡家尖山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.300537', '37.393406', '二普地名等数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (283, '兰山子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.3354884', '37.428107', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (284, '老台', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.244876', '37.44406918', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (285, '雷家塘', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.253349', '37.446693', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (286, '犁华尖', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.163025', '37.439507', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (287, '犁铧尖', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.25269314', '37.45021065', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (288, '李家奔路子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.080380354', '37.442311821', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (289, '李寨科', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.26889723', '37.4530047800001', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (290, '梁后头', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '105.9607274', '37.27813058', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (291, '柳庄台', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.0078895', '37.20150339', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (292, '六条井', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.898541904937', '37.2079791497147', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (293, '龙泉', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.5049534', '37.47842366', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (294, '罗花崖', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.07777253', '37.4450813', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (295, '陆庄子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.1494701', '37.30001001', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (296, '陆庄子地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.23394502754', '37.2648331644186', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (297, '乱坎子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.22970334864', '37.2634017910196', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (298, '罗山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', '罗山自然保护区', '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339482356031', '37.1355168101446', '宁夏大学普查成果', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (299, '骆驼脖项', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.213265362279', '37.2825558506663', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (300, '马家庙梁子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.0467638', '37.36516981', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (301, '马家咀子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.339484647737', '37.1355145393245', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (302, '骆驼山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339490029597', '37.1355112172255', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (303, '马家峁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339484857818', '37.1355112162033', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (304, '马路', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.0014153', '37.34006435', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (305, '马毛坑', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.091949', '37.320553', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (306, '马家新庄子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.7319823688', '37.2879194832', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (307, '马家台', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.066349718', '37.4169772160001', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (308, '马家台地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.04503018', '37.410088564', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (309, '毛槽子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.183915', '37.221165', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (310, '毛牛洼', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.05543734', '37.42437893', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (311, '平岭子北梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.122064563', '37.508162509', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (312, '苗圃', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '105.992547398', '37.367145642', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (313, '苗圃梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.084388915', '37.506143288', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (314, '门头咀子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.064890597', '37.440506978', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (315, '庙儿咀子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.052002583', '37.43196027', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (316, '庙咀子地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.05553583', '37.4298089100001', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (317, '庙庙塘', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.058594111', '37.421940658', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (318, '庙台地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.056634758', '37.419490932', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (319, '南洼', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.05541441', '37.4243670500001', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (320, '炭井子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.038523141', '37.4088560600001', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (321, '西圈', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.045876417', '37.4201949700001', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (322, '苏家尖山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.054483626', '37.415211174', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (323, '双梁梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.063749317', '37.4140479920001', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (324, '深井咀子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.158096105806', '37.198732521991', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (325, '下茆庄子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.158099662221', '37.1987355143149', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (326, '小圆梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.15810073566', '37.1987344938541', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (327, '小脊梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.158101453428', '37.1987361865838', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (328, '小台子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.158103122581', '37.1987405285137', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (329, '小西梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.158098977328', '37.1987375954186', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (330, '徐家窑头', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.158097733912', '37.198737145983', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (331, '徐冰水', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.158098241316', '37.1987352292526', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (332, '羊头山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.158096884954', '37.1987330693329', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (333, '杨家渠', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.158103694162', '37.1987392150095', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (334, '孤山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.158101929272', '37.1987402379914', 'poi数据', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (335, '周家圈', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.158100909425', '37.1987327328818', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (336, '张道咀', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.158100315577', '37.1987324246633', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (337, '赵家窑', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.158101133617', '37.1987372821309', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (338, '折腰地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.158101310598', '37.1987361685584', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (339, '干泉子丘陵', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.274932861328', '37.4195938110352', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (340, '蜗牛山丘陵', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.335487365723', '37.428108215332', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (341, '红柳山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.888442993164', '37.2018775939941', '25万基础地理信息库', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (342, '宫中梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.911253082824', '37.2930386915692', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (343, '康马头', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.960723876953', '37.2781295776367', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (344, '两道山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.753807067871', '37.2583808898926', '25万基础地理信息库', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (345, '马家沙洼', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.945983886719', '37.2247734069824', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (346, '骚狐泉泉子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.898536682129', '37.2079734802246', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (347, '十字坡', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.784828186035', '37.2875099182129', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (348, '西沟崖', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.916801452637', '37.1693992614746', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (349, '天生碗', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.911253989675', '37.2930361003462', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (350, '姚家井', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.836624145508', '37.2398376464844', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (351, '郑鑫园', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.911256812286', '37.2930352145432', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (352, '朱砂坤', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.911256956899', '37.2930365516628', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (353, '麻黄沟', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.912872314453', '37.4139213562012', 'poi数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (354, '档子地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.504951477051', '37.4784240722656', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (355, '胡麻坑坑子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.444427490234', '37.3746566772461', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (356, '大沟滩', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.33067', '37.432791', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (357, '干泉子山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.261741638184', '37.406810760498', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (358, '碑碑子滩', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.149467468262', '37.3000106811523', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (359, '槽子地', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.23393860846', '37.2648287320195', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (360, '陈家梁', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229694700288', '37.2633949311612', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (361, '红川子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.158004760742', '37.1001129150391', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (362, '蒋庄', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.263809204102', '37.1895141601563', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (363, '苦豆子台', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.076454162598', '37.2817764282227', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (364, '狼坝咀子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233934721647', '37.2648333932787', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (365, '鸣沙坝', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.213256835937', '37.2825508117676', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (366, '骆驼脖项（徐冰水）', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.046760559082', '37.3651695251465', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (367, '潘家山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.300605773926', '37.1844062805176', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (368, '铺粪洼', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233936728336', '37.2648316557912', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (369, '沙沟脑', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233936715174', '37.2648323688767', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (370, '天桥子', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.266639709473', '37.1800727844238', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (371, '下滩', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233933519766', '37.2648376723061', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (372, '杨文渠', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010101山丘', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.162803649902', '37.224536895752', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (373, '通山沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.347945506136', '37.4240052246653', '卫星影像补充', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (374, '鸦儿沟（太阳山镇段）', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.477531', '37.490818', '卫星影像补充', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (375, '骆驼脖沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.33387', '37.514511', '卫星影像补充', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (376, '方家圈沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.340784616595', '37.5199976995194', '卫星影像补充', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (377, '土墩子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.327805', '37.558704', '卫星影像补充', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (378, '横沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.233945435124', '37.2648329040733', '卫星影像补充', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (379, '大春沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.339488922168', '37.1355105682491', '卫星影像补充', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (380, '水套沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.090618944061', '37.1495957444714', '宁夏地质灾害点', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (381, '豹子滩沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', '红寺堡开发区太阳山镇豹子滩村', '105.953646928549', '37.393129947866', '宁夏地质灾害点', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (382, '红塔沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', '红寺堡开发区太阳山镇红塔村', '106.144984122115', '37.3127563119181', '宁夏地质灾害点', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (383, '野池沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', '红寺堡开发区太阳山镇柳泉村', '106.09062395858', '37.1495873831195', '宁夏地质灾害点', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (384, '石坡子北无名沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '大河乡', '红寺堡开发区大河乡石坡子村', '105.745', '37.293889', '宁夏地质灾害点', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (385, '石坡子南无名沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '大河乡', '红寺堡开发区大河乡石坡子村', '105.751111', '37.285556', '宁夏地质灾害点', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (386, '石峡子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.538797', '37.577332', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (387, '窨子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.586869', '37.568934', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (388, '张家沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.115137', '37.246746', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (389, '黎家沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.416825', '37.562907', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (390, '骆驼脖项沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.057697', '37.371814', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (391, '张家坝沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.444039', '37.517124', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (392, '长椽子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.322873044488', '37.4239155096182', '经纬度转换-野外采集', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (393, '古木岭沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.129433', '37.560509', '经纬度转换-野外采集', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (394, '石喇叭沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '105.9931568', '37.4712251', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (395, '太平沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '105.9815875', '37.42607044', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (396, '王家井沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.0412604', '37.41594065', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (397, '王家墙墙子', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.0162948', '37.48934621', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (398, '洪沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.059607788', '37.433308588', '宁夏地名资料', '4', '80', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (399, '营盘井沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '105.985748291016', '37.4757919311523', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (400, '鸦儿沟（红寺堡镇段）', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.0662109', '37.43645469', 'poi数据', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (401, '冯庄子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.213259911637', '37.2825517304938', '经纬度转换-野外采集', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (402, '陆庄子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.097069', '37.510857', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (403, '柳泉沟', '地文景观', '自然景观集合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.313477', '37.453678', '野外采集', '4', '79', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (404, '沙泉西沟', '地文景观', '自然景观集合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.40538', '37.448196', '野外采集', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (405, '水套西沟', '地文景观', '自然景观集合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '105.9353101', '37.32673938', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (406, '野猫子断头', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.12116958', '37.36796673', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (407, '干泉子沟', '地文景观', '自然景观集合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.210138221209', '37.4477485306706', '野外采集', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (408, '李断头沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.3198548778', '37.4258930905327', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (409, '碾窑沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.26922896', '37.53614737', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (410, '南干柴子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.222733038055', '37.1830813357763', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (411, '南沟壕', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.33949028353', '37.135515867734', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (412, '南梁沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.222740260988', '37.1830818764865', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (413, '南峁沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.138672960112', '37.2830754480162', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (414, '南台沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339490220131', '37.1355149008293', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (415, '南台沟湾', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233943183694', '37.2648322851989', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (416, '碾湾沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.33948517', '37.135505675', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (417, '千壁沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.0628452', '37.20017079', '宁夏地名资料', '4', '81', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (418, '齐齐坡沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.22969901754', '37.2633954789336', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (419, '乔家沟脑', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2233888', '37.098528794', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (420, '青土坑沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.3275147', '37.57676304', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (421, '泉庄子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.284738932706', '37.3683939009553', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (422, '泉子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.1617311', '37.12400036', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (423, '泉子洼沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233936069453', '37.2648309512105', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (424, '任前庄沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.8957408', '37.23250806', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (425, '三岔沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.1632588', '37.61113247', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (426, '骚沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.3394889657', '37.13551497477', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (427, '沙台沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.5610137', '37.36391084', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (428, '沙洼头子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233945546714', '37.2648292064725', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (429, '沙窝沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2428071', '37.22987259', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (430, '山圈湾子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339488029522', '37.1355083191979', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (431, '上沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339485917521', '37.1355161403333', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (432, '上麻黄沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.9741232', '37.20032939', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (433, '石坑子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.444433512223', '37.3746633791406', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (434, '石榴滩沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.5763255', '37.41876645', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (435, '石渠', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233942610418', '37.2648371915058', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (436, '石湾湾沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.0173053', '37.17828744', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (437, '树园子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233937586881', '37.2648367272346', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (438, '水路湾沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339489486499', '37.1355101020404', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (439, '四儿咀子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339491073186', '37.1355115543989', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (440, '苏家梁沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.339486909221', '37.1355092427082', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (441, '太阳沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.9499577', '37.30650141', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (442, '田家台沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2294752', '37.34747055', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (443, '甜水沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339486026768', '37.1355073113064', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (444, '小野池沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.096756', '37.474998', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (445, '小阴洼沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229690551758', '37.2633934020996', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (446, '小榆树沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.297977150235', '37.4182187545241', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (447, '土地庙沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.09061884102', '37.1495878449671', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (448, '跳沟子', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.070205047861', '37.3663693979408', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (449, '土匣子川沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2824993', '37.14778554', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (450, '王户台沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', '王户台村', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.229698736464', '37.2633945993952', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (451, '湾子地坡沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.9160935', '37.40533118', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (452, '王家天桥子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339489819718', '37.1355113045087', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (453, '王圈壕', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.9065651', '37.22021823', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (454, '魏家咀沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.284738038952', '37.3683971131802', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (455, '温家咀沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.898537203396', '37.2079766321974', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (456, '文庄子南沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.22969201674', '37.2633959512486', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (457, '西沟湾', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339482873511', '37.135512865902', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (458, '西沟子', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.23394398154', '37.2648360156229', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (459, '西梁沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233939732021', '37.2648353880321', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (460, '西梁沟湾', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339482602488', '37.13551512609', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (461, '西岭子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339487377208', '37.1355113129422', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (462, '西马蹄沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229699269937', '37.2634015558706', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (463, '西边沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.6713795', '37.3537082', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (464, '席家井沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.540330463733', '37.4877492973066', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (465, '席家台沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229696946168', '37.2633980942478', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (466, '细沟子', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.090621307832', '37.1495963073793', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (467, '细咀子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.4663019', '37.59545599', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (468, '下沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339489966887', '37.1355089348465', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (469, '咸水沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339486119223', '37.1355138776924', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (470, '小二道沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229699472555', '37.2633950187337', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (471, '小沙沟湾', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.33948735979', '37.1355125362233', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (472, '小咀子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339491796602', '37.1355127646532', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (473, '小马台沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229696756122', '37.2633989549843', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (474, '小泉沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.3645197', '37.58220758', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (475, '小泉子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.266028158023', '37.2274468159366', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (476, '小碱沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233936539789', '37.2648321804985', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (477, '小沙沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229698227425', '37.2633960940401', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (478, '小沙窝沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.0991135', '37.22356899', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (479, '小寺沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.247290612352', '37.2914154120134', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (480, '小塘子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.0411906', '37.17038646', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (481, '小团疙瘩沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.3011602', '37.228909593', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (482, '小团疙瘩壕', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.1368537', '37.20277564', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (483, '北沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.223289489746', '37.309024810791', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (484, '北壕沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.4131962', '37.45893983', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (485, '北乱柴沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.0254057', '37.17579483', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (486, '北面洼沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229700028319', '37.2633978885161', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (487, '北渠壕', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229697899204', '37.2633999058351', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (488, '北台岔沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233938168902', '37.2648298768789', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (489, '北台沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.199592781801', '37.1314802054409', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (490, '北头路子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.284732224496', '37.3683957295944', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (491, '毕里寺庄子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229703500258', '37.2633990563014', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (492, '北干柴沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339489183199', '37.1355109736184', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (493, '扁窑子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.339484341198', '37.1355106567473', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (494, '冰草咀沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.339486567537', '37.135509645963', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (495, '冰草咀子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.4643923', '37.48935016', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (496, '菜窑沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.233944383671', '37.2648328255062', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (497, '红柳沟大河段', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', '红柳沟', '吴忠市', '红寺堡区', '大河乡', ' ', '106.233940532271', '37.264835365088', '野外采集', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (498, '蔡庄子门前沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.07020990269', '37.3663712639961', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (499, '叉秧沟脑', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.6007524', '37.39722438', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (500, '场边沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.1367119', '37.14804432', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (501, '陈家梁沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339490769547', '37.13551264326', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (502, '刺疙瘩峁峁', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339491775346', '37.135516497482', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (503, '大冰沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2937906', '37.39237627', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (504, '大二道沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233937594991', '37.2648364007498', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (505, '大沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339482258028', '37.1355164922063', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (506, '大洪沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.079304592454', '37.2307327599487', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (507, '大咀沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.3331218', '37.47833146', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (508, '大水沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.339483232584', '37.1355167353571', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (509, '大梁沟湾', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.284737510985', '37.3683957929732', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (510, '大峁沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.1041424', '37.24010958', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (511, '大梁沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.8745122', '37.38190067', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (512, '大坡洼沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233942388219', '37.2648286187594', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (513, '大泉沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.565804', '37.418507', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (514, '大沙沟沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.23393818358', '37.2648314508629', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (515, '大深沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339490928449', '37.135507877381', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (516, '大沙沟湾', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.339491821576', '37.1355104177146', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (517, '大湾沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.319847106934', '37.4356155395508', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (518, '大塘子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.33948297628', '37.1355154379059', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (519, '大团疙瘩沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339491438555', '37.1355087339366', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (520, '大洼', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.1738469', '37.3131262', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (521, '大阳洼沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.173073466727', '37.2145496737153', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (522, '滴水沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339485168457', '37.1355056762695', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (523, '电杆台沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229694390934', '37.2633961522846', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (524, '垫沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233940119506', '37.2648345492866', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (525, '吊岭沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339492019716', '37.1355087404788', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (526, '丁家沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233937871099', '37.2648356585124', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (527, '丁三沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.4862149', '37.41472377', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (528, '东咀子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233936033617', '37.2648329825868', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (529, '东湾', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.223296546759', '37.3090311545915', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (530, '东湾沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.524019869213', '37.4836494271408', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (531, '洞子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233945261685', '37.2648281295569', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (532, '段门头沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233944924533', '37.2648353433806', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (533, '断脖项', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.6046512', '37.38717966', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (534, '乏羊坡沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.8360918', '37.22619937', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (535, '二道沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.233937536997', '37.264828822145', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (536, '二道中沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339485556179', '37.1355108248591', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (537, '范家坟台沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.0049096', '37.22263072', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (538, '坟沿梁沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.168898020271', '37.2665000499562', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (539, '坟沿湾沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.05184173584', '37.1854934692383', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (540, '凤凰台沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.33949255847', '37.13551176217', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (541, '龚家梁沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.33948757579', '37.13550781138', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (542, '干沟子', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233945186356', '37.2648348090249', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (543, '鸽子峡沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339487565553', '37.1355152285732', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (544, '磙子梁沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339482451697', '37.1355171113392', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (545, '磙子梁西沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339482622769', '37.1355116943731', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (546, '磙子台沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339485345747', '37.1355086285652', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (547, '贺家沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339488251728', '37.1355140267348', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (548, '河薄子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339490480508', '37.1355103150319', '宁夏地名资料', '4', '75', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (549, '红渣滓沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.228903834015', '37.3196752353067', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (550, '红土洼子', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.570611852079', '37.4998039479867', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (551, '洪水沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.04437169', '37.4319137900001', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (552, '胡洞沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.607368', '37.394241', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (553, '虎家咀沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.566637644576', '37.4113122210403', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (554, '后沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.607109', '37.414471', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (555, '黄庄沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.576752', '37.41909', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (556, '岌岌冲子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.515533', '37.421772', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (557, '蒋庄子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.518288', '37.421955', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (558, '蒋庄大沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.554672', '37.423904', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (559, '胶泥沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.596603', '37.424355', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (560, '胶泥台沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.319649', '37.426086', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (561, '截路沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.564362085803', '37.428001740408', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (562, '金水沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.564537', '37.429623', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (563, '井咀子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.31974', '37.426151', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (564, '井子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.320137', '37.435509', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (565, '旧坝台沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.319848602217', '37.4356179408601', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (566, '卷草沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.319725', '37.437969', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (567, '开水沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.321083', '37.435127', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (568, '苦豆子台沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.563614', '37.440681', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (569, '兰家圈子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.258385', '37.475426', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (570, '兰家山大洼', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.254707', '37.476524', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (571, '狼坝咀子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.92836091', '37.3280687500001', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (572, '狼洞沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.16882267', '37.33966357', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (573, '狼儿子台沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.16868733', '37.34172347', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (574, '狼子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.244727075411', '37.0914952675582', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (575, '老坟台沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233943042772', '37.2648369857287', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (576, '宝乐庵沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233944869965', '37.2648313887792', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (577, '王户台老村黄土柱', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', '王户台村', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.615481818088', '37.393236317559', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (578, '毛牛洼水沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.290296621708', '37.4075258914328', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (579, '门前沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.169201202991', '37.2754682939499', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (580, '斜尖子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.1916317', '37.1756462', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (581, '谢门头沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.0988811', '37.50265565', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (582, '谢圈沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '105.9405389', '37.21442742', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (583, '新台沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.256403', '37.52701258', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (584, '小中沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.108806430016', '37.4761253243173', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (585, '新庄集北沟滩', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.935584356957', '37.3264306333471', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (586, '杏树地沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.142835415113', '37.3495777895375', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (587, '杏树沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.1495476', '37.38497668', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (588, '杏树咀沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.1647324', '37.37128215', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (589, '羊粪渠沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.173075642458', '37.2145435428092', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (590, '羊圈沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.9479985', '37.22195951', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (591, '羊渠壕', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2554528', '37.54337775', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (592, '雪梁头', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.142839194714', '37.3495776442439', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (593, '鸭爪子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.294473228132', '37.4599740942158', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (594, '杨目沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.114336587856', '37.4482576419818', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (595, '窑湾沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.293344297893', '37.1541338968776', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (596, '药王洞沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.251099684448', '37.2374533313154', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (597, '野斯圈沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.442352723153', '37.3880529611155', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (598, '杨吕沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.294478178202', '37.4599784267498', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (599, '雍井河', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.0569499', '37.1646537', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (600, '榆树林沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.0619684', '37.36280376', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (601, '枣刺洼沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.381651', '37.43644178', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (602, '扎米湾壕', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.927135', '37.23995619', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (603, '张家台井沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233940885867', '37.2648345538632', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (604, '张家湾湾沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.30022925', '37.40245277', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (605, '长咀子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.26602635127', '37.227441471313', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (606, '长嘴子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229698364493', '37.2634018778048', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (607, '长渣沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.339490342998', '37.1355113628757', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (608, '中沟沟子', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233942918193', '37.2648354667397', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (609, '中咀沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.519801142487', '37.4175128680938', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (610, '中咀子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.1748326', '37.33574492', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (611, '走城沟湾', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.339483951638', '37.1355154426512', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (612, '转沟脑', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.233936476593', '37.2648370960554', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (613, '左家圈南沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.4864853', '37.41874286', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (614, '牙爪子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.1419988', '37.30721372', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (615, '罗山沟头', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', '罗山自然保护区', '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2396145', '37.24226108', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (616, '巴泉沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.229702744531', '37.2633985488608', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (617, '白路子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.339491429294', '37.1355145466662', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (618, '白崖子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.233939144577', '37.2648334882866', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (619, '白泉沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.21523437028', '37.1499051318974', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (620, '大疙瘩洼沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.2247463', '37.45055606', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (621, '坟崖沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.9677446', '37.26668369', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (622, '甘泉沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.68219142024', '37.360436453827', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (623, '堡子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339491561369', '37.1355086726024', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (624, '枸杞峁沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339485862194', '37.1355106190581', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (625, '黄家洼沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339482193656', '37.135513441004', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (626, '黄犍子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.1996304', '37.14202174', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (627, '黄牛府沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.258069824851', '37.3724085306975', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (628, '黄石岭子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2532754', '37.43968972', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (629, '碱井沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.2247825', '37.34039525', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (630, '姬家沙窝沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.047206', '37.30918489', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (631, '碱沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.092148', '37.320648', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (632, '尖山子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.190231', '37.365276', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (633, '碱井子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2939813', '37.38468032', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (634, '老庄子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.1340784', '37.33495988', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (635, '老庙沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.230804', '37.429592', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (636, '老牛沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2138702', '37.42187182', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (637, '涝富阳洼沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.185005', '37.444649', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (638, '雷家后山沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.184937', '37.444862', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (639, '雷家塘沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.232719', '37.448467', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (640, '冷水沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.3052742', '37.43606992', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (641, '李安渠壕', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.27131175', '37.5328053000001', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (642, '李寨科碱沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.3315171', '37.51471425', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (643, '李寨科井沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.8884418', '37.20187632', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (644, '李寨科泉子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.9553086', '37.32060122', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (645, '李寨科沙壕', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.0114968', '37.18903842', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (646, '梁北后沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.911250645439', '37.2930377908586', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (647, '柳庄台沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '105.9307025', '37.4330491', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (648, '柳庄子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '105.8778137', '37.38385124', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (649, '六壕沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.945987', '37.22477198', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (650, '六条井沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.272857666016', '37.1786193847656', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (651, '丘陵带', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.102821', '37.474789', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (652, '卢家沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.30689239502', '37.1776351928711', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (653, '芦草井沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.3372184', '37.41873619', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (654, '录家沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.102167176272', '37.4715188425321', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (655, '骡子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.08584731', '37.43873268', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (656, '罗家洼沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.070210391652', '37.3663673611581', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (657, '骆驼叉子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.3006042', '37.18440752', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (658, '骆驼岭子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233941001192', '37.2648351626549', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (659, '吕家沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.266639', '37.18007274', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (660, '麻地壕沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233940245903', '37.2648288266372', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (661, '麻钱沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.1628006', '37.22453545', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (662, '马地台沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339487832489', '37.13550841062', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (663, '麻黄沟沟子', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.143728199883', '37.2482816465649', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (664, '马莲台沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.004119873047', '37.2685279846191', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (665, '马蹄沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.396206436', '37.361527284', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (666, '马咀子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.062219117', '37.441023413', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (667, '马家台沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.061496261', '37.429914495', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (668, '马趟子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.066997472', '37.413724173', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (669, '毛牛洼后沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.6623426869', '37.352754107', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (670, '门前头沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.6629209712', '37.3520796768', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (671, '庙儿沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.162006678', '37.4981179930001', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (672, '门头沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.097170982', '37.429600329', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (673, '门头沟湾', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.072356525', '37.4198296380001', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (674, '庙沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.070957753', '37.424339182', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (675, '庙咀子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.067390415', '37.4246629560001', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (676, '南垛落沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.059562389', '37.423896122', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (677, '石炭沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.060856554', '37.42385778', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (678, '三岔沟湾', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.055728171', '37.4138647790001', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (679, '沙沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.1580987769', '37.1987349864834', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (680, '土桥子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.158097324229', '37.1987376898541', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (681, '小台沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.158099353302', '37.198731014453', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (682, '小西梁沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.158094164706', '37.1987310193868', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (683, '窄沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.15810232625', '37.1987335228628', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (684, '周家圈沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.158098818159', '37.1987387553036', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (685, '寨科子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.158099589999', '37.1987409039899', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (686, '碱沟湾湾', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.955307006836', '37.3206024169922', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (687, '马过井沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.877815246582', '37.3838500976563', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (688, '桥沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.007888793945', '37.2015037536621', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (689, '羶水沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.913948059082', '37.2093658447266', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (690, '大台沟湾', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.070205688477', '37.3663635253906', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (691, '东马蹄沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339487741793', '37.1355094829412', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (692, '断桥子沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339492190501', '37.1355090959162', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (693, '南洼壕', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339485453707', '37.1355153887605', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (694, '沙草墩沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339492496465', '37.1355083979582', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (695, '沙泉沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339492803498', '37.1355117281966', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (696, '小阳洼沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339491536426', '37.1355109079515', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (697, '夜猫沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339488637995', '37.1355156440089', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (698, '榆树梁沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339491895508', '37.1355145744814', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (699, '中沟', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0101山地沟谷类', '010106沟谷', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339490676663', '37.1355097714023', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (700, '罗山西麓洪积扇', '地文景观', '自然景观综合体', '山丘型景观', '01地文景观', '0101山地沟谷类', '010110冲、洪积扇', '罗山自然保护区', '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.285912', '37.1797330000001', '卫星影像补充', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (701, '王户台台地', '地文景观', '自然景观综合体', '台地型景观', '01地文景观', '0101山地沟谷类', '010112台地', '王户台村', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.314468', '37.419338', '卫星影像补充', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (702, '谭庄子台地', '地文景观', '自然景观综合体', '台地型景观', '01地文景观', '0101山地沟谷类', '010112台地', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.299004', '37.425621', '卫星影像补充', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (703, '洪积台地', '地文景观', '自然景观集合体', '台地型景观', '01地文景观', '0101山地沟谷类', '010112台地', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '105.7912323', '37.22389769', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (704, '小罗山西麓沟谷群', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0102河流地貌', '010202切沟冲沟', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.285912', '37.1797330000001', '卫星影像补充', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (705, '大罗山西麓沟谷群', '地文景观', '自然景观综合体', '沟谷型景观', '01地文景观', '0102河流地貌', '010202切沟冲沟', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.244591', '37.2848740000001', '卫星影像补充', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (706, '谭庄子村沟', '地文景观', '地表形态', '沟壑与洞穴', '01地文景观', '0102河流地貌', '010202切沟冲沟', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.092255', '37.317043', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (707, '太阳山切沟', '地文景观', '地表形态', '沟壑与洞穴', '01地文景观', '0102河流地貌', '010202切沟冲沟', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.092262', '37.318443', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (708, '苦水河河漫滩', '地文景观', '自然景观集合体', '滩地型景观', '01地文景观', '0102河流地貌', '010204河滩', '苦水河', '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.204163', '37.448067', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (709, '太阳山河流阶地', '地文景观', '自然景观集合体', '滩地型景观', '01地文景观', '0102河流地貌', '010205阶地', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.339483385111', '37.1355090307766', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (710, '苦水河黄土阶地', '地文景观', '地质与构造形迹', '断裂景观', '01地文景观', '0102河流地貌', '010205阶地', '苦水河', '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.339486173981', '37.1355107210963', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (711, '暖泉湖湖心岛', '水域景观', '海面', '小型岛礁', '01地文景观', '0102河流地貌', '010207洲、江心岛', '暖泉湖', '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.311782681842', '37.1274944902399', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (712, '王户台沟挡水坝', '建筑与设施', '实用建筑与核心设施', '堤坝段落', '01地文景观', '0102河流地貌', '010209堤坝段落', '王户台村', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.299995', '37.46209', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (713, '48KM截水闸', '建筑与设施', '实用建筑与核心设施', '堤坝段落', '01地文景观', '0102河流地貌', '010209堤坝段落', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.1356084', '37.29997362', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (714, '红柳沟大坝', '建筑与设施', '实用建筑与核心设施', '堤坝段落', '01地文景观', '0102河流地貌', '010209堤坝段落', '红柳沟', '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.134078979492', '37.3349609375', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (715, '太阳山黄土墙', '地文景观', '地表形态', '沟壑与洞穴', '01地文景观', '0104黄土地貌', '010404典型黄土林', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '105.9139497', '37.20936547', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (716, '太阳山黄土柱', '地文景观', '地表形态', '沟壑与洞穴', '01地文景观', '0104黄土地貌', '010404典型黄土林', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.0035814', '37.25596593', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (717, '太阳山黄土桥', '地文景观', '地表形态', '沟壑与洞穴', '01地文景观', '0104黄土地貌', '010404典型黄土林', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '105.9642344', '37.40031616', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (718, '太阳山黄土林', '地文景观', '地表形态', '沟壑与洞穴', '01地文景观', '0104黄土地貌', '010404典型黄土林', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '105.9811519', '37.1872652', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (719, '罗山山下黄土穴', '地文景观', '地表形态', '沟壑与洞穴', '01地文景观', '0104黄土地貌', '010405典型黄土穴', '罗山自然保护区', '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233945574947', '37.2648367526233', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (720, '红崖山', '地文景观', '自然景观集合体', '山丘型景观', '01地文景观', '0105丹霞地貌', '010501丹霞山', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.884246826172', '37.363', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (721, '罗山东麓断裂层', '地文景观', '地质与构造形迹', '断裂景观', '01地文景观', '0106沉积与构造', '010601断层', '罗山自然保护区', '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339482679769', '37.1355162131701', '宁夏大学普查成果', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (722, '第三纪红土地貌', '地文景观', '地质与构造形迹', '断裂景观', '01地文景观', '0106沉积与构造', '010604地层剖面', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.339485350032', '37.135510780014', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (723, '黄土剖面层', '地文景观', '地质与构造形迹', '地层剖面', '01地文景观', '0106沉积与构造', '010604地层剖面', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '105.881847739', '37.381356955', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (724, '红层地貌', '地文景观', '地质与构造形迹', '地层剖面', '01地文景观', '0106沉积与构造', '010604地层剖面', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.124931705527', '37.2108735295302', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (725, '第四纪黄土', '地文景观', '地质与构造形迹', '地层剖面', '01地文景观', '0106沉积与构造', '010604地层剖面', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.3180864', '37.45660719', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (726, '宁夏庆华煤化集团有限公司韦二煤矿', '建筑与设施', '人文景观综合体', '建设工程与生产地', '01地文景观', '0106沉积与构造', '010605矿点矿脉与矿石积聚地', NULL, '吴忠市', '红寺堡区', '太阳山镇', '宁夏吴忠市太阳山开发区', '106.567802429199', '37.4072265625', '导出采矿权查询数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (727, '吴忠赛马新型建材有限公司红柳山水泥用石灰岩矿', '建筑与设施', '人文景观综合体', '建设工程与生产地', '01地文景观', '0106沉积与构造', '010605矿点矿脉与矿石积聚地', NULL, '吴忠市', '红寺堡区', '大河乡', '吴忠市红寺堡区大河乡刘家沟湾盐兴公路以南两公里', '105.900733947754', '37.2366218566895', '导出采矿权查询数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (728, '宁夏吴忠市太阳山舍尔山建筑石料用灰岩Ⅰ矿', '建筑与设施', '人文景观综合体', '建设工程与生产地', '01地文景观', '0106沉积与构造', '010605矿点矿脉与矿石积聚地', NULL, '吴忠市', '红寺堡区', '太阳山镇', '吴忠市太阳山开发区石料园区', '106.440107100419', '37.6010908732302', '导出采矿权查询数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (729, '宁夏万和利煤炭有限公司罗花崖煤矿', '建筑与设施', '人文景观综合体', '建设工程与生产地', '01地文景观', '0106沉积与构造', '010605矿点矿脉与矿石积聚地', NULL, '吴忠市', '红寺堡区', '太阳山镇', '吴忠市太阳山移民开发区暖泉办事处小泉村', '106.540172033073', '37.431051864849', '导出采矿权查询数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (730, '宁夏吴忠市太阳山舍尔山建筑石料用灰岩Ⅱ矿', '建筑与设施', '人文景观综合体', '建设工程与生产地', '01地文景观', '0106沉积与构造', '010605矿点矿脉与矿石积聚地', NULL, '吴忠市', '红寺堡区', '太阳山镇', '吴忠市太阳山开发区石料园区', '106.440101957525', '37.6010942950709', '导出采矿权查询数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (731, '宁夏吴忠市红寺堡区大河乡石炭沟村建筑石料用砂岩矿', '建筑与设施', '人文景观综合体', '建设工程与生产地', '01地文景观', '0106沉积与构造', '010605矿点矿脉与矿石积聚地', NULL, '吴忠市', '红寺堡区', '大河乡', '吴忠市红寺堡大河乡石炭沟村1420号', '105.878189086914', '37.2454643239511', '导出采矿权查询数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (732, '宁夏万和利煤炭有限公司小泉煤矿', '建筑与设施', '人文景观综合体', '建设工程与生产地', '01地文景观', '0106沉积与构造', '010605矿点矿脉与矿石积聚地', NULL, '吴忠市', '红寺堡区', '太阳山镇', '吴忠市太阳山移民开发区暖泉办事处小泉村', '106.540177186963', '37.4310518357191', '导出采矿权查询数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (733, '宁夏吴忠市红寺堡区太阳山镇杨目沟建筑用砂矿', '建筑与设施', '人文景观综合体', '建设工程与生产地', '01地文景观', '0106沉积与构造', '010605矿点矿脉与矿石积聚地', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '吴忠市红寺堡区金水街', '106.058952331543', '37.4242057800293', '导出采矿权查询数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (734, '宁夏吴忠市红寺堡区红寺堡镇营盘井1#建筑用砂矿', '建筑与设施', '人文景观综合体', '建设工程与生产地', '01地文景观', '0106沉积与构造', '010605矿点矿脉与矿石积聚地', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '宁夏吴忠市红寺堡区创业西街009号', '106.061786252453', '37.4177742004395', '导出采矿权查询数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (735, '宁夏吴忠市红寺堡区红寺堡镇营盘井2#建筑用砂矿', '建筑与设施', '人文景观综合体', '建设工程与生产地', '01地文景观', '0106沉积与构造', '010605矿点矿脉与矿石积聚地', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '宁夏吴忠市红寺堡区盐兴东路', '106.067420959473', '37.414680480957', '导出采矿权查询数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (736, '宁夏吴忠市红寺堡区大河乡石炭沟孤山建筑石料用灰岩矿', '建筑与设施', '人文景观综合体', '建设工程与生产地', '01地文景观', '0106沉积与构造', '010605矿点矿脉与矿石积聚地', NULL, '吴忠市', '红寺堡区', '大河乡', '宁夏吴忠市红寺堡区大河乡石炭沟村', '105.878196716309', '37.2454643249512', '导出采矿权查询数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (737, '宁夏吴忠市红寺堡区红寺堡镇皮条沟建筑用砂矿', '建筑与设施', '人文景观综合体', '建设工程与生产地', '01地文景观', '0106沉积与构造', '010605矿点矿脉与矿石积聚地', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '红寺堡区红关村', '106.071716308594', '37.4092750549316', '导出采矿权查询数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (738, '宁夏吴忠市红寺堡区大河乡独疙瘩建筑用砂矿', '建筑与设施', '人文景观综合体', '建设工程与生产地', '01地文景观', '0106沉积与构造', '010605矿点矿脉与矿石积聚地', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.028396606445', '37.3322143554688', '导出采矿权查询数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (739, '宁夏福翔煤业有限公司煤矿', '建筑与设施', '人文景观综合体', '建设工程与生产地', '01地文景观', '0106沉积与构造', '010605矿点矿脉与矿石积聚地', NULL, '吴忠市', '红寺堡区', '太阳山镇', '宁夏吴忠市太阳山开发区', '106.2099609375', '37.4481811523438', '导出采矿权查询数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (740, '宁夏吴忠市红寺堡区红寺堡镇孙家滩3#建筑用砂矿', '建筑与设施', '人文景观综合体', '建设工程与生产地', '01地文景观', '0106沉积与构造', '010605矿点矿脉与矿石积聚地', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '吴忠市红寺堡区城北商混区', '106.061789772989', '37.4177780151367', '导出采矿权查询数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (741, '宁夏吴忠市红寺堡区大河乡麻黄沟村4＃砖瓦用粘土矿', '建筑与设施', '人文景观综合体', '建设工程与生产地', '01地文景观', '0106沉积与构造', '010605矿点矿脉与矿石积聚地', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '吴忠市红寺堡区银川路', '106.072647094727', '37.424674987793', '导出采矿权查询数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (742, '苦水河沟岸崩塌', '地文景观', '地表形态', '岩土圈灾变遗迹', '01地文景观', '0107自然变动遗迹', '010701重力堆积体', '苦水河', '吴忠市', '红寺堡区', '太阳山镇', '红寺堡开发区太阳山镇麦河村', '106.371111', '37.455278', '宁夏地质灾害点', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (743, '清水河沟岸崩塌', '地文景观', '地表形态', '岩土圈灾变遗迹', '01地文景观', '0107自然变动遗迹', '010701重力堆积体', NULL, '吴忠市', '红寺堡区', '大河乡', '红寺堡开发区大河乡官店村', '105.771667', '37.221389', '宁夏地质灾害点', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (744, '黄土崩塌地', '地文景观', '地质与构造形迹', '断裂景观', '01地文景观', '0107自然变动遗迹', '010702地震遗迹', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.233937949482', '37.2648371386185', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (745, '甜水河沟岸崩塌', '地文景观', '地表形态', '岩土圈灾变遗迹', '01地文景观', '0107自然变动遗迹', '010701重力堆积体', '甜水河', '吴忠市', '红寺堡区', '太阳山镇', '红寺堡开发区太阳山镇永新村', '106.24', '37.491944', '宁夏地质灾害点', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (746, '黄土侵蚀点', '地文景观', '地质与构造形迹', '断裂景观', '01地文景观', '0107自然变动遗迹', '010703陷落地', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.339490499716', '37.1355126339863', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (747, '溯源侵蚀', '地文景观', '自然标记与自然现象', '奇异自然现象', '01地文景观', '0108自然标记与自然现象', '010801奇异自然现象', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.110329', '37.508698', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (748, '罗山山前丘陵与荒漠水平交错带', '地文景观', '自然标记与自然现象', '垂直自然带', '01地文景观', '0108自然标记与自然现象', '010803水平交错地带', '罗山自然保护区', '吴忠市', '红寺堡区', '新庄集乡', NULL, '106.2638117', '37.1895153', '文旅局材料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (749, '清水河', '水域景观', '河系', '游憩河段', '02水域风光', '0201河流', '020101景观河段', NULL, '吴忠市', '红寺堡区', '大河乡', '红寺堡开发区大河乡官店村', '105.771667480469', '37.2213897705078', '宁夏地名资料', '4', '82', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (750, '甜水河', '水域景观', '河系', '游憩河段', '02水域风光', '0201河流', '020101景观河段', '甜水河', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.11972907877', '37.6065567838765', '野外采集', '4', '80', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (751, '赵庄小河', '水域景观', '河系', '游憩河段', '02水域风光', '0201河流', '020101景观河段', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.910151959538', '37.4304495844461', '卫星影像补充', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (752, '蛇腰湾子沟', '水域景观', '河系', '游憩河段', '02水域风光', '0201河流', '020101景观河段', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.277675029198', '37.4607619101663', '卫星影像补充', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (753, '李家窑南沟', '水域景观', '河系', '游憩河段', '02水域风光', '0201河流', '020101景观河段', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.374901304524', '37.4038746918172', '卫星影像补充', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (754, '徐冰水河', '水域景观', '河系', '游憩河段', '02水域风光', '0201河流', '020101景观河段', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.225919444444', '37.1389138888889', '卫星影像补充', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (755, '胡家河', '水域景观', '河系', '游憩河段', '02水域风光', '0201河流', '020101景观河段', NULL, '吴忠市', '红寺堡区', '太阳山镇', '红寺堡开发区太阳山镇沙泉村', '106.224444', '37.456389', '宁夏地质灾害点', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (756, '榆树沟湾', '水域景观', '河系', '游憩河段', '02水域风光', '0201河流', '020101景观河段', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.0487288', '37.42565113', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (757, '苦水河（红寺堡段）', '水域景观', '河系', '游憩河段', '02水域风光', '0201河流', '020101景观河段', '苦水河', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.07126771', '37.4196594900001', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (758, '沙泉子沟', '水域景观', '河系', '游憩河段', '02水域风光', '0201河流', '020101景观河段', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.031596450868', '37.3349751116146', 'poi数据', '4', '75', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (759, '小河', '水域景观', '河系', '游憩河段', '02水域风光', '0201河流', '020101景观河段', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.339486770809', '37.1355076673815', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (760, '苦水河太阳山段', '水域景观', '河系', '游憩河段', '02水域风光', '0201河流', '020101景观河段', '苦水河', '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.233937328791', '37.2648352042773', '野外采集', '4', '77', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (761, '王户台河谷', '水域景观', '河系', '游憩河段', '02水域风光', '0201河流', '020101景观河段', '王户台村', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.394140608846', '37.3580258525905', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (762, '暖泉小溪', '水域景观', '河系', '游憩河段', '02水域风光', '0201河流', '020101景观河段', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.33949140961', '37.1355145732', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (763, '苦水河（海天线段）', '水域景观', '河系', '游憩河段', '02水域风光', '0201河流', '020101景观河段', '苦水河', '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.15810355048', '37.1987393272085', '野外采集', '4', '75', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (764, '干泉子沟-河流', '水域景观', '河系', '游憩河段', '02水域风光', '0201河流', '020101景观河段', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.339491497132', '37.1355154671705', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (765, '新井沟', '水域景观', '河系', '游憩河段', '02水域风光', '0201河流', '020101景观河段', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.248045', '37.10547423', '宁夏地名资料', '4', '78', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (766, '榆树沟', '水域景观', '河系', '游憩河段', '02水域风光', '0201河流', '020101景观河段', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.63520558', '37.51362969', 'poi数据', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (767, '红柳沟水系', '水域景观', '河系', '游憩河段', '02水域风光', '0201河流', '020101景观河段', '红柳沟', '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.134162902832', '37.333683013916', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (768, '截路子沟', '水域景观', '河系', '游憩河段', '02水域风光', '0201河流', '020101景观河段', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.011497497559', '37.189037322998', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (769, '兰圈湾', '水域景观', '河系', '游憩河段', '02水域风光', '0201河流', '020102河湾', NULL, '吴忠市', '红寺堡区', '新庄集乡、红寺堡镇', ' ', '106.002838458074', '37.1871410648966', '卫星影像补充', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (770, '城东市民休闲公园湖', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020201湖区', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.0218363', '37.46553767', '经纬度转换-野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (771, '清云湖', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020201湖区', '清云湖景区', '吴忠市', '红寺堡区', '新民街道', '清云湖水域面积81亩，湖边用围栏围住，防止游客不慎落水，且湖边有感应广播，当靠近栏杆时，广播会发出警示，提醒游客远离警戒区。', '106.1659854', '37.45813128', '经纬度转换-野外采集', '4', '85', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (772, '红寺堡酒庄人工湖', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020201湖区', '红寺堡酒庄', '吴忠市', '红寺堡区', '新民街道', ' ', '106.0079418', '37.58846118', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (773, '青云湖', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020201湖区', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.339491612559', '37.1355125920442', '百度接口', '4', '83', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (774, '暖泉湖南湖', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020201湖区', '暖泉湖', '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.233944906174', '37.2648363018964', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (775, '盐湖', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020201湖区', '盐湖', '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.290303833474', '37.4075248583359', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (776, '暖泉湖东湖', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020201湖区', '暖泉湖', '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.1738872', '37.19470832', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (777, '干泉子沟湖', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020201湖区', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.339489471653', '37.1355112421823', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (778, '渔光湖', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020201湖区', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.12560075', '37.4282809200001', '25万基础地理信息库', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (779, '海子塘', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020201湖区', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.33949091301', '37.135512820126', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (780, '红泉湾湖', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020201湖区', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.587501525879', '37.4082679748535', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (781, '紫光湖', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020201湖区', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '东灵线与太绿公路交界处，红寺堡酒庄对面', '106.077392578125', '37.4574546813965', '野外采集', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (782, '暖泉湖西湖', '建筑与设施', '实用建筑与核心设施', '港口、渡口与码头', '02水域风光', '0202湖泊与池沼', '020201湖区', '暖泉湖', '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.1224719', '37.3677141100001', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (783, '赵庄小河湿地', '水域景观', '湖沼', '湿地', '02水域风光', '0202湖泊与池沼', '020202沼泽与湿地', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.910150433814', '37.4304516153581', '卫星影像补充', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (784, '蛇腰湾子沟湿地', '水域景观', '湖沼', '湿地', '02水域风光', '0202湖泊与池沼', '020202沼泽与湿地', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.277675093651', '37.4607690022143', '卫星影像补充', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (785, '李家窑南沟湿地', '水域景观', '湖沼', '湿地', '02水域风光', '0202湖泊与池沼', '020202沼泽与湿地', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.374901374856', '37.4038733017596', '卫星影像补充', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (786, '兰圈湾湿地', '水域景观', '湖沼', '湿地', '02水域风光', '0202湖泊与池沼', '020202沼泽与湿地', NULL, '吴忠市', '红寺堡区', '新庄集乡、红寺堡镇', ' ', '106.002834100981', '37.1871414793721', '卫星影像补充', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (787, '滨湖湿地', '水域景观', '湖沼', '湿地', '02水域风光', '0202湖泊与池沼', '020202沼泽与湿地', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.214127', '37.4484675', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (788, '红柳沟大河段河漫滩', '水域景观', '湖沼', '湿地', '02水域风光', '0202湖泊与池沼', '020202沼泽与湿地', '红柳沟', '吴忠市', '红寺堡区', '大河乡', ' ', '105.897012949', '37.351262569', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (789, '苦水河湿地', '水域景观', '湖沼', '湿地', '02水域风光', '0202湖泊与池沼', '020202沼泽与湿地', '苦水河', '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.23393694017', '37.2648297454013', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (790, '盐湖湿地', '水域景观', '湖沼', '湿地', '02水域风光', '0202湖泊与池沼', '020202沼泽与湿地', '盐湖', '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.247286321098', '37.2914137695909', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (791, '暖泉湖湿地', '水域景观', '湖沼', '湿地', '02水域风光', '0202湖泊与池沼', '020202沼泽与湿地', '暖泉湖', '吴忠市', '红寺堡区', '太阳山镇', ' ', '105.8465444', '37.23281889', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (792, '暖泉湖西湖湿地', '水域景观', '湖沼', '湿地', '02水域风光', '0202湖泊与池沼', '020202沼泽与湿地', '暖泉湖', '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.233941849195', '37.2648375153211', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (793, '干泉子沟湿地', '水域景观', '湖沼', '湿地', '02水域风光', '0202湖泊与池沼', '020202沼泽与湿地', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.339491487132', '37.1355154571705', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (794, '太阳山湿地', '水域景观', '湖沼', '湿地', '02水域风光', '0202湖泊与池沼', '020202沼泽与湿地', '太阳山国家湿地公园', '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.563789367676', '37.4331588745117', '野外采集', '4', '79', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (795, '石坡子村湿地', '水域景观', '湖沼', '湿地', '02水域风光', '0202湖泊与池沼', '020202沼泽与湿地', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.739593505859', '37.2782135009766', '系统补报', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (796, '十字沟水库', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.0164775', '37.35524856', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (797, '甜水河水库', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', '甜水河', '吴忠市', '红寺堡区', '柳泉乡', ' ', '105.9666682', '37.2327355', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (798, '朱家天城子蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.2734084', '37.49178986', '野外采集', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (799, '乌沙塘村蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', '乌沙塘村', '吴忠市', '红寺堡区', '大河乡', ' ', '106.339486712031', '37.1355138542209', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (800, '兴旺蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.079309185225', '37.2307273866275', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (801, '上源一号蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.079308197144', '37.2307315055157', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (802, '茅头墩三号蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.079305971724', '37.2307289649034', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (803, '茅头墩二号蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.090621097352', '37.1495906281793', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (804, '乌沙塘二号蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.235047116654', '37.4093891095067', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (805, '乌沙塘三号蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.2137414628', '37.4015655155602', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (806, '月亮湾蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.192304', '37.271966', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (807, '上源二号蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.213745561088', '37.4015603858014', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (808, '玉池蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.339490337069', '37.135514658713', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (809, '中圈塘蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', '中圈塘村', '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.2702042', '37.17290782', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (810, '茅头墩一号蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '105.8542836', '37.3825945', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (811, '洪沟一号蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.30339864', '37.44209348', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (812, '西川蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.30334186', '37.4421291100001', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (813, '洪沟二号蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.306902608674', '37.1776381721348', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (814, '杨柳蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.22388924', '37.44891061', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (815, '马渠一号蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2778575', '37.45482545', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (816, '马渠二号蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.3014535', '37.46304264', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (817, '洪沟滩蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.3028701', '37.435793421', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (818, '新庄集蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.30346854', '37.4421373700001', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (819, '马渠三号蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.8944654', '37.21685806', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (820, '周新人饮蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.158097829279', '37.1987407983107', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (821, '上源村蓄水池', '水域景观', '湖沼', '潭池', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.150764465332', '37.336498260498', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (822, '王家墙子蓄水池', '水域景观', '湖沼', '潭池', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.2138671875', '37.4218711853027', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (823, '沙草墩蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.14372509939', '37.2482758620003', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (824, '上源村水库', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.142766666667', '37.3495027777778', '卫星影像补充', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (825, '乌沙塘水库', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.946072', '37.332887', '卫星影像补充', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (826, '城南蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '新民街道', ' ', '106.0808231', '37.4380094800001', '宁夏地名资料', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (827, '红寺堡工业园区水库', '建筑与设施', '人文景观集合体', '康体游乐休闲度假地', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.00613533', '37.40761093', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (828, '香园村水库', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.155073643', '37.349277735', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (829, '红柳沟蓄水池', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', '红柳沟', '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229698326879', '37.2633978355567', '野外采集', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (830, '乌沙塘村水库', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', '乌沙塘村', '吴忠市', '红寺堡区', '大河乡', ' ', '106.339490159173', '37.1355141653857', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (831, '十字湾水库', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.1473436', '37.17219993', '25万基础地理信息库', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (832, '水套水库', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.211313', '37.33160438', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (833, '长渣水库', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.05590864', '37.4305772500001', '25万基础地理信息库', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (834, '龙北沟水库', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.981155395508', '37.1872634887695', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (835, '十字弯水库', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '大河乡', NULL, '105.828888888889', '37.2730555555556', '宁夏水库列表', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (836, '鲁家窑水库', '水域景观', '湖沼', '游憩湖区', '02水域风光', '0202湖泊与池沼', '020204水库', NULL, '吴忠市', '红寺堡区', '红寺堡镇', NULL, '106.091595', '37.516438', '宁夏水库列表', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (837, '上泉', '水域景观', '地下水', '泉', '02水域风光', '0204泉', '020401冷泉（泉水）', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339486752026', '37.1355073887329', '25万基础地理信息库', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (838, '甜水河脑', '水域景观', '地下水', '泉', '02水域风光', '0204泉', '020401冷泉（泉水）', '甜水河', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.339485829211', '37.1355081608672', '25万基础地理信息库', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (839, '石板泉', '水域景观', '地下水', '泉', '02水域风光', '0204泉', '020401冷泉（泉水）', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.233942784509', '37.2648308192114', '25万基础地理信息库', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (840, '柳泉', '水域景观', '地下水', '泉', '02水域风光', '0204泉', '020401冷泉（泉水）', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.339485766611', '37.1355132062291', '25万基础地理信息库', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (841, '麻水泉子', '水域景观', '地下水', '泉', '02水域风光', '0204泉', '020401冷泉（泉水）', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.23394008185', '37.2648311135113', '25万基础地理信息库', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (842, '太平沟林地', '生物景观', '植被景观', '林地', '03生物景观', '0301植被景观', '030101林地', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.09989815', '37.4391698200001', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (843, '湖滨西路林地', '生物景观', '植被景观', '林地', '03生物景观', '0301植被景观', '030101林地', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.232719036334', '37.4579470203754', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (844, '中日青年红寺堡生态绿化示范林', '生物景观', '植被景观', '林地', '03生物景观', '0301植被景观', '030101林地', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.339487484837', '37.1355096087456', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (845, '罗山青海云杉林', '生物景观', '植被景观', '林地', '03生物景观', '0301植被景观', '030101林地', '罗山自然保护区', '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.0764525', '37.2817768', '大数据', '5', '90', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (846, '移民博物馆树林', '生物景观', '植被景观', '独树与丛树', '03生物景观', '0301植被景观', '030103独树与丛树', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.0601506', '37.43360498', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (847, '红寺堡古城树林', '生物景观', '植被景观', '独树与丛树', '03生物景观', '0301植被景观', '030103独树与丛树', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.640056677635', '37.4031297470566', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (848, '水套百年沙枣树', '生物景观', '植被景观', '独树与丛树', '03生物景观', '0301植被景观', '030103独树与丛树', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.540328225826', '37.4877497166733', '野外采集', '4', '78', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (849, '上边窑古树', '生物景观', '植被景观', '独树与丛树', '03生物景观', '0301植被景观', '030103独树与丛树', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.284738184661', '37.3683961972232', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (850, '兴旺村树林', '生物景观', '植被景观', '独树与丛树', '03生物景观', '0301植被景观', '030103独树与丛树', '兴旺村', '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.1526635', '37.32139903', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (851, '南川路东侧树林', '生物景观', '植被景观', '独树与丛树', '03生物景观', '0301植被景观', '030103独树与丛树', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.233941653043', '37.2648317686827', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (852, '王户台村沙枣树', '生物景观', '植被景观', '独树与丛树', '03生物景观', '0301植被景观', '030103独树与丛树', '王户台村', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.229696187384', '37.2633977291599', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (853, '清云湖绿地', '生物景观', '植被景观', '草地', '03生物景观', '0301植被景观', '030104草地', '清云湖景区', '吴忠市', '红寺堡区', '新民街道', ' ', '106.0554224', '37.42231029', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (854, '清云湖公园绿地', '生物景观', '植被景观', '草地', '03生物景观', '0301植被景观', '030104草地', '清云湖景区', '吴忠市', '红寺堡区', '新民街道', ' ', '106.05536734', '37.41978691', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (855, '城东市民休闲公园绿地', '生物景观', '植被景观', '草地', '03生物景观', '0301植被景观', '030104草地', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '绿地内植被较少，应是人为铲除，种有大批新栽树苗', '106.466141', '37.434006', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (856, '何家崖头草地', '生物景观', '植被景观', '草地', '03生物景观', '0301植被景观', '030104草地', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.11772949', '37.4497449300001', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (857, '光彩村草地', '生物景观', '植被景观', '草地', '03生物景观', '0301植被景观', '030104草地', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.442356884946', '37.3880524991193', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (858, '四十里抓草地', '生物景观', '植被景观', '草地', '03生物景观', '0301植被景观', '030104草地', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.274399', '37.454071', '野外采集', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (859, '兴旺村草场', '生物景观', '植被景观', '林地', '03生物景观', '0301植被景观', '030104草地', '兴旺村', '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.0288431', '37.4175981', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (860, '太龙寺草原', '生物景观', '植被景观', '草地', '03生物景观', '0301植被景观', '030104草地', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.331637334058', '37.3886752475927', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (861, '太阳山草地', '生物景观', '植被景观', '草地', '03生物景观', '0301植被景观', '030104草地', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.339483069603', '37.1355113575088', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (862, '巴庄村草地', '生物景观', '植被景观', '草地', '03生物景观', '0301植被景观', '030104草地', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.169209460102', '37.2754698998918', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (863, '湖滨西路草地', '生物景观', '植被景观', '草地', '03生物景观', '0301植被景观', '030104草地', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '105.9636887', '37.24802384', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (864, '王户台草地', '生物景观', '植被景观', '草地', '03生物景观', '0301植被景观', '030104草地', '王户台村', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.25109622497', '37.2374585832135', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (865, '地焦沟草地', '生物景观', '植被景观', '草地', '03生物景观', '0301植被景观', '030104草地', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.540170183998', '37.4310549077006', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (866, '封山育林草地', '生物景观', '植被景观', '草地', '03生物景观', '0301植被景观', '030104草地', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.302513122559', '37.4447402954102', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (867, '城柳公路旁草地', '生物景观', '植被景观', '草地', '03生物景观', '0301植被景观', '030104草地', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.114944458008', '37.4617881774902', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (868, '大罗山西麓草原', '生物景观', '植被景观', '草地', '03生物景观', '0301植被景观', '030105草原', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.241341', '37.307491', '卫星影像补充', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (869, '海天线荒漠草原', '生物景观', '植被景观', '草地', '03生物景观', '0301植被景观', '030105草原', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.311867', '37.458492', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (870, '罗山荒漠草原', '生物景观', '植被景观', '草地', '03生物景观', '0301植被景观', '030105草原', '罗山自然保护区', '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.09185', '37.316864', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (871, '洪积台地草原', '生物景观', '植被景观', '草地', '03生物景观', '0301植被景观', '030105草原', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '105.7880182', '37.26815589', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (872, '太小路荒漠草原', '生物景观', '植被景观', '草地', '03生物景观', '0301植被景观', '030105草原', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.353639449467', '37.4372203705514', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (873, '卢家沟荒漠草原', '生物景观', '植被景观', '草地', '03生物景观', '0301植被景观', '030105草原', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.191596984863', '37.3696594238281', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (874, '谭庄子村荒漠草原', '生物景观', '植被景观', '草地', '03生物景观', '0301植被景观', '030105草原', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.23', '37.322', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (875, '清云湖花圃', '生物景观', '植被景观', '花卉地', '03生物景观', '0301植被景观', '030106花卉地', '清云湖景区', '吴忠市', '红寺堡区', '新民街道', ' ', '106.05608361', '37.43597199', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (876, '罗山动物栖息地', '生物景观', '野生动物栖息地', '陆地动物栖息地', '03生物景观', '0302野生动物栖息地', '030202陆地动物栖息地', '罗山自然保护区', '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.1580044', '37.10011465', '宁夏大学普查成果', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (877, '甜水河野生动物栖息地', '生物景观', '野生动物栖息地', '陆地动物栖息地', '03生物景观', '0302野生动物栖息地', '030202陆地动物栖息地', '甜水河', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.271308898926', '37.5328063964844', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (878, '干泉子沟鸟类栖息地', '生物景观', '野生动物栖息地', '鸟类栖息地', '03生物景观', '0302野生动物栖息地', '030203鸟类栖息地', '干泉子沟', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.29883051', '37.38639119', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (879, '盐湖鸟类栖息地', '生物景观', '野生动物栖息地', '鸟类栖息地', '03生物景观', '0302野生动物栖息地', '030203鸟类栖息地', '盐湖', '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.229702589204', '37.2633990120741', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (880, '暖泉湖鸟类栖息地', '生物景观', '野生动物栖息地', '鸟类栖息地', '03生物景观', '0302野生动物栖息地', '030203鸟类栖息地', '暖泉湖', '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.3084167', '37.35936938', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (881, '罗山观星之地', '天象与气候景观', '天象景观', '太空景象观赏地', '04天象与气候景观', '0401光现象观察与观景地', '040101日月星辰观景地', '罗山自然保护区', '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2638118', '37.18951528', '宁夏大学普查成果', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (882, '罗山彩虹', '天象与气候景观', '天象景观', '地表光现象', '04天象与气候景观', '0401光现象观察与观景地', '040102光环现象观景地', '罗山自然保护区', '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.26381176', '37.1895152865', '宁夏大学普查成果', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (883, '罗山云海', '天象与气候景观', '天气与气候现象', '云雾多发区', '04天象与气候景观', '0402天气与气候现象', '040201云雾多发地', '罗山自然保护区', '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2826016', '37.46600152', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (884, '罗山云海及冰凌地', '天象与气候景观', '天气与气候景观', '云雾多发区', '04天象与气候景观', '0402天气与气候现象', '040201云雾多发地', '罗山自然保护区', '吴忠市', '红寺堡区', '新庄集乡', NULL, '106.2638117', '37.189515278', '文旅局材料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (885, '罗山花海与秋韵', '天象与气候景观', '天气与气候景观', '物候景象', '04天象与气候景观', '0402天气与气候现象', '040205物候景观', '罗山自然保护区', '吴忠市', '红寺堡区', '新庄集乡', NULL, '106.26381177', '37.18951529', '文旅局材料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (886, '新盛村大田', '建筑与设施', '实用建筑与核心设施', '景观农田', '05建筑与设施', '0501农业生产设施与生产地', '050101景观农田', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.565651427857', '37.4184823742675', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (887, '红关村景观农田', '建筑与设施', '实用建筑与核心设施', '景观农田', '05建筑与设施', '0501农业生产设施与生产地', '050101景观农田', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.238144', '37.449497', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (888, '柳泉乡景观农田', '建筑与设施', '实用建筑与核心设施', '景观农田', '05建筑与设施', '0501农业生产设施与生产地', '050101景观农田', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.1907487', '37.58121854', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (889, '红寺堡镇玉米景观农田', '建筑与设施', '实用建筑与核心设施', '景观农田', '05建筑与设施', '0501农业生产设施与生产地', '050101景观农田', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.44229888916', '37.3786201477051', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (890, '兴旺村农田', '建筑与设施', '实用建筑与核心设施', '景观农田', '05建筑与设施', '0501农业生产设施与生产地', '050101景观农田', '兴旺村', '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.233943256997', '37.2648334350215', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (891, '玉米景观农田', '建筑与设施', '实用建筑与核心设施', '景观农田', '05建筑与设施', '0501农业生产设施与生产地', '050101景观农田', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.099821292932', '37.2922535750705', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (892, '奶头山景观农田', '建筑与设施', '实用建筑与核心设施', '景观农田', '05建筑与设施', '0501农业生产设施与生产地', '050101景观农田', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.099818937968', '37.2922569399213', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (893, '西沟景观农田', '建筑与设施', '实用建筑与核心设施', '景观农田', '05建筑与设施', '0501农业生产设施与生产地', '050101景观农田', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.0475336', '37.26042013', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (894, '罗家窑拐子农田景观', '建筑与设施', '实用建筑与核心设施', '景观农田', '05建筑与设施', '0501农业生产设施与生产地', '050101景观农田', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.946606', '37.370584', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (895, '新庄集景观农田', '建筑与设施', '实用建筑与核心设施', '景观农田', '05建筑与设施', '0501农业生产设施与生产地', '050101景观农田', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.90360803', '37.2429524570001', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (896, '红三泵站景观梯田', '建筑与设施', '实用建筑与核心设施', '景观农田', '05建筑与设施', '0501农业生产设施与生产地', '050102景观梯田', NULL, '吴忠市', '红寺堡区', '大河乡', ' 三泵站风景区', '106.114944', '37.461788', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (897, '红寺堡酒庄葡萄基地', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0501农业生产设施与生产地', '050103景观果园', '红寺堡酒庄', '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.313774', '37.451839', '野外采集', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (898, '乌沙塘村红梅杏基地', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0501农业生产设施与生产地', '050103景观果园', '乌沙塘村', '吴忠市', '红寺堡区', '大河乡', ' ', '105.94984335533', '37.3328948404354', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (899, '肖家窑葡萄基地', '建筑与设施', '人文景观综合体', '建设工程与生产地', '05建筑与设施', '0501农业生产设施与生产地', '050103景观果园', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' 肖家窑村', '106.07965402', '37.4059916000001', '野外采集', '5', '93', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (900, '中葡酒庄种植基地', '建筑与设施', '实用建筑与核心设施', '景观农田', '05建筑与设施', '0501农业生产设施与生产地', '050103景观果园', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.339484986533', '37.1355082570649', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (901, '汇达葡萄种植基地', '建筑与设施', '实用建筑与核心设施', '景观农田', '05建筑与设施', '0501农业生产设施与生产地', '050103景观果园', '汇达阳光葡萄酒庄', '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.233940149093', '37.264835241026', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (902, '宁夏沙地红富硒瓜果种植基地', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0501农业生产设施与生产地', '050103景观果园', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.1416129', '37.31509793', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (903, '兴旺村万亩桃园', '建筑与设施', '实用建筑与核心设施', '景观农田', '05建筑与设施', '0501农业生产设施与生产地', '050103景观果园', '兴旺村', '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.339490095664', '37.1355148209946', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (904, '红寺堡酒庄果园', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0501农业生产设施与生产地', '050103景观果园', '红寺堡酒庄', '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.339484593388', '37.1355073541461', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (905, '红寺堡枸杞种植基地', '建筑与设施', '实用建筑与核心设施', '景观农田', '05建筑与设施', '0501农业生产设施与生产地', '050103景观果园', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.339484570717', '37.135512732556', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (906, '马渠枸杞基地', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0501农业生产设施与生产地', '050103景观果园', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.1698408', '37.43262466', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\重点旅游基础服务设施情况', '4', '81', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (907, '西川村葡萄园', '建筑与设施', '实用建筑与核心设施', '景观农田', '05建筑与设施', '0501农业生产设施与生产地', '050103景观果园', '西川村', '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.095611572266', '37.3217163085938', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (908, '宁夏红粉佳荣葡萄种植基地', '建筑与设施', '实用建筑与核心设施', '景观农田', '05建筑与设施', '0501农业生产设施与生产地', '050103景观果园', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.230804443359', '37.4295921325684', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (909, '光彩村枸杞园', '建筑与设施', '实用建筑与核心设施', '景观农田', '05建筑与设施', '0501农业生产设施与生产地', '050103景观果园', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.125495910645', '37.4323577880859', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (910, '红塔村苹果园', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0501农业生产设施与生产地', '050103景观果园', '红塔村', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.268898010254', '37.4530029296875', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (911, '红寺堡区葡萄种植农民田间学校示范基地', '建筑与设施', '实用建筑与核心设施', '景观农田', '05建筑与设施', '0501农业生产设施与生产地', '050103景观果园', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.102157592773', '37.4715118408203', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (912, '红寺堡葡萄园', '建筑与设施', '实用建筑与核心设施', '景观农田', '05建筑与设施', '0501农业生产设施与生产地', '050103景观果园', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.077774047852', '37.4450798034668', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (913, '黄花菜种植基地', '建筑与设施', '实用建筑与核心设施', '景观农田', '05建筑与设施', '0501农业生产设施与生产地', '050105景观蔬菜基地', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.204704', '37.448082', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (914, '乌沙塘蔬菜大棚基地', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0501农业生产设施与生产地', '050105景观蔬菜基地', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.955680847168', '37.332888', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (915, '柳泉乡黄花菜晾晒场', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0501农业生产设施与生产地', '050105景观蔬菜基地', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.2917044', '37.41393157', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (916, '宁夏红粉佳荣番茄基地', '建筑与设施', '实用建筑与核心设施', '景观农田', '05建筑与设施', '0501农业生产设施与生产地', '050105景观蔬菜基地', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.232612609863', '37.4245681762695', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (917, '兴民村黄花菜基地', '建筑与设施', '人文景观综合体', '建设工程与生产地', '05建筑与设施', '0501农业生产设施与生产地', '050105景观蔬菜基地', NULL, '吴忠市', '红寺堡区', '太阳山镇', '罗山东麓', '106.673519', '37.355489', '红寺堡文旅局资料\\普查资料类\\各类文化和旅游资源照片、视频\\红寺堡区宣传照片\\景区图片', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (918, '红寺堡第1牧场', '建筑与设施', '实用建筑与核心设施', '景观牧场', '05建筑与设施', '0501农业生产设施与生产地', '050106景观牧场', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.607735', '37.400005', '野外采集', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (919, '碱沟沟子饲养场', '建筑与设施', '实用建筑与核心设施', '景观养殖场', '05建筑与设施', '0501农业生产设施与生产地', '050107景观养殖场', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.002663', '37.2893070000001', '卫星影像补充', '1', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (920, '德皓牧业', '建筑与设施', '实用建筑与核心设施', '景观养殖场', '05建筑与设施', '0501农业生产设施与生产地', '050107景观养殖场', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.24601', '37.5562780000001', '卫星影像补充', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (921, '塞玉叶牧业', '建筑与设施', '实用建筑与核心设施', '景观养殖场', '05建筑与设施', '0501农业生产设施与生产地', '050107景观养殖场', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.249168', '37.563293', '卫星影像补充', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (922, '昆弟牧业', '建筑与设施', '实用建筑与核心设施', '景观养殖场', '05建筑与设施', '0501农业生产设施与生产地', '050107景观养殖场', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.256874', '37.565567', '卫星影像补充', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (923, '横沟饲养场', '建筑与设施', '实用建筑与核心设施', '景观养殖场', '05建筑与设施', '0501农业生产设施与生产地', '050107景观养殖场', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.226128', '37.580292', '卫星影像补充', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (924, '甜水河水库旁肉牛养殖场', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0501农业生产设施与生产地', '050107景观养殖场', '甜水河', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.339490732132', '37.1355156057532', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (925, '万头胚胎受体牛园区', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0501农业生产设施与生产地', '050107景观养殖场', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.914588928223', '37.4008445739746', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (926, '光彩村养殖基地', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0501农业生产设施与生产地', '050107景观养殖场', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.339487766396', '37.1355130230609', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (927, '中烟“飞地”肉牛养殖基地', '建筑与设施', '人文景观综合体', '建设工程与生产地', '05建筑与设施', '0501农业生产设施与生产地', '050107景观养殖场', NULL, '吴忠市', '红寺堡区', '柳泉乡', '位于红寺堡产业园东侧', '106.162010192871', '37.498119354248', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\各类文化和旅游资源照片、视频', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (928, '天源良种羊繁育基地', '建筑与设施', '人文景观综合体', '建设工程与生产地', '05建筑与设施', '0501农业生产设施与生产地', '050107景观养殖场', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '红寺堡区第四中学东1100米太绿公路旁', '106.09716796875', '37.4295997619629', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\各类文化和旅游资源照片、视频', '4', '82', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (929, '红寺堡酒庄', '建筑与设施', '人文景观综合体', '建设工程与生产地', '05建筑与设施', '0501农业生产设施与生产地', '050109酒庄与酒窖', NULL, '吴忠市', '红寺堡区', '新民街道', ' ', '106.2334905', '37.44828362', '经纬度转换-野外采集', '5', '93', ' ', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (930, '紫尚葡萄酒庄', '建筑与设施', '人文景观综合体', '建设工程与生产地', '05建筑与设施', '0501农业生产设施与生产地', '050109酒庄与酒窖', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '宁夏紫尚葡萄园面积为1000亩，种植的葡萄品种以赤霞珠为主，占70%，其次为霞多丽，占30%。公司主要经营项目为酒类销售、食品零售等。', '106.11599462', '37.4492892100001', '经纬度转换-野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (931, '汇达酒庄', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0501农业生产设施与生产地', '050109酒庄与酒窖', '汇达阳光葡萄酒庄', '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.092787', '37.471863', '野外采集', '5', '91', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (932, '诗裕酒庄', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0501农业生产设施与生产地', '050109酒庄与酒窖', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.169206032036', '37.2754672720378', '野外采集', '4', '79', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (933, '兴宇酒庄', '建筑与设施', '人文景观集合体', '康体游乐休闲度假地', '05建筑与设施', '0501农业生产设施与生产地', '050109酒庄与酒窖', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.229696429306', '37.2633965269846', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (934, '罗山酒庄', '建筑与设施', '人文景观综合体', '建设工程与生产地', '05建筑与设施', '0501农业生产设施与生产地', '050109酒庄与酒窖', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '三星级，农家乐,红寺堡区罗山路C2路', '106.072937011719', '37.4378395080566', '红寺堡文旅局资料\\普查资料类\\统计excel', '5', '90', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (935, '中贺葡萄酒庄', '建筑与设施', '人文景观综合体', '建设工程与生产地', '05建筑与设施', '0501农业生产设施与生产地', '050109酒庄与酒窖', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '红寺堡工业园区', '106.122062683105', '37.5081634521484', '红寺堡文旅局资料\\普查资料类\\各类文化和旅游资源照片、视频\\红寺堡区宣传照片\\特色商品\\葡萄酒', '4', '78', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (936, '红塔村34支', '建筑与设施', '实用建筑与核心设施', '渠道、运河段落', '05建筑与设施', '0501农业生产设施与生产地', '050110灌渠', '红塔村', '吴忠市', '红寺堡区', '太阳山镇', '红寺堡开发区太阳山镇红塔村', '106.251667', '37.452778', '宁夏地质灾害点', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (937, '潘儿庄支渠', '建筑与设施', '实用建筑与核心设施', '渠道、运河段落', '05建筑与设施', '0501农业生产设施与生产地', '050110灌渠', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.21373', '37.448468', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (938, '韦州支灌渠管道', '建筑与设施', '实用建筑与核心设施', '渠道、运河段落', '05建筑与设施', '0501农业生产设施与生产地', '050110灌渠', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '105.911254260677', '37.2930396968493', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (939, '新庄集一支干渠', '建筑与设施', '实用建筑与核心设施', '渠道、运河段落', '05建筑与设施', '0501农业生产设施与生产地', '050110灌渠', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.33949194545', '37.1355153451103', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (940, '新庄集四支干渠', '建筑与设施', '实用建筑与核心设施', '渠道、运河段落', '05建筑与设施', '0501农业生产设施与生产地', '050110灌渠', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339483539106', '37.135507805478', '宁夏地名资料', '4', '74', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (941, '新庄集二支干渠', '建筑与设施', '实用建筑与核心设施', '渠道、运河段落', '05建筑与设施', '0501农业生产设施与生产地', '050110灌渠', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.1940578', '37.33313176', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (942, '海子塘一支干渠', '建筑与设施', '实用建筑与核心设施', '渠道、运河段落', '05建筑与设施', '0501农业生产设施与生产地', '050110灌渠', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.0985906', '37.26746225', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (943, '海子塘二支干渠', '建筑与设施', '实用建筑与核心设施', '渠道、运河段落', '05建筑与设施', '0501农业生产设施与生产地', '050110灌渠', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.079305036179', '37.2307277592535', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (944, '海引渠', '建筑与设施', '实用建筑与核心设施', '渠道、运河段落', '05建筑与设施', '0501农业生产设施与生产地', '050110灌渠', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.2728585', '37.17862104', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (945, '新庄集三支干渠', '建筑与设施', '实用建筑与核心设施', '渠道、运河段落', '05建筑与设施', '0501农业生产设施与生产地', '050110灌渠', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.30360353', '37.44111952', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (946, '新庄集五支干渠', '建筑与设施', '实用建筑与核心设施', '渠道、运河段落', '05建筑与设施', '0501农业生产设施与生产地', '050110灌渠', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.158099649649', '37.1987344365214', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (947, '海引渠（兴缘寺段）', '建筑与设施', '实用建筑与核心设施', '渠道、运河段落', '05建筑与设施', '0501农业生产设施与生产地', '050110灌渠', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.080383300781', '37.442310333252', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (948, '新圈一支干渠', '建筑与设施', '实用建筑与核心设施', '渠道、运河段落', '05建筑与设施', '0501农业生产设施与生产地', '050110灌渠', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.964234393376', '37.4003255086167', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (949, '新圈二支干渠', '建筑与设施', '实用建筑与核心设施', '渠道、运河段落', '05建筑与设施', '0501农业生产设施与生产地', '050110灌渠', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.9642359985', '37.4003181001324', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (950, '宁夏扶贫扬黄灌溉工程三泵站', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0501农业生产设施与生产地', '050112传统农业设施与场所', NULL, '吴忠市', '红寺堡区', '大河乡', ' 三泵站风景区', '106.091888', '37.320629', '野外采集', '5', '95', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (951, '红寺堡扬黄灌溉工程', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0501农业生产设施与生产地', '050112传统农业设施与场所', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.001419067383', '37.3400650024414', '野外采集', '4', '87', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (952, '红寺堡黄花菜产业园', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0502工业生产设施与生产地', '050201工业园区', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.110328674316', '37.5086975097656', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (953, '宁夏太阳山煤化工循环经济工业园', '建筑与设施', '人文景观综合体', '建设工程与生产地', '05建筑与设施', '0502工业生产设施与生产地', '050201工业园区', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.56665', '37.4085660000001', '卫星影像补充', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (954, '林小庄村西光伏发电基地', '建筑与设施', '人文景观综合体', '建设工程与生产地', '05建筑与设施', '0502工业生产设施与生产地', '050204新能源生产地', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.534485', '37.4863280000001', '卫星影像补充', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (955, '中节能吴忠太阳山光伏发电场', '建筑与设施', '人文景观综合体', '建设工程与生产地', '05建筑与设施', '0502工业生产设施与生产地', '050204新能源生产地', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.568802', '37.4992750000001', '卫星影像补充', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (956, '林小庄村北光伏发电基地', '建筑与设施', '人文景观综合体', '建设工程与生产地', '05建筑与设施', '0502工业生产设施与生产地', '050204新能源生产地', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.541664', '37.4999960000001', '卫星影像补充', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (957, '木疙瘩光伏发电厂', '建筑与设施', '人文景观综合体', '建设工程与生产地', '05建筑与设施', '0502工业生产设施与生产地', '050204新能源生产地', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.06743304', '37.4210363600001', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (958, '清云湖产业发展园', '建筑与设施', '人文景观综合体', '建设工程与生产地', '05建筑与设施', '0502工业生产设施与生产地', '050201工业园区', '清云湖景区', '吴忠市', '红寺堡区', '新民街道', ' ', '106.01709741', '37.4258156600001', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (959, '莲花山光伏电厂', '建筑与设施', '人文景观综合体', '建设工程与生产地', '05建筑与设施', '0502工业生产设施与生产地', '050204新能源生产地', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '105.9857465', '37.47579343', '经纬度转换-野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (960, '东淌光伏发电基地', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0502工业生产设施与生产地', '050204新能源生产地', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.259277', '37.475334', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (961, '王户台风车群', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0502工业生产设施与生产地', '050201工业园区', '王户台村', '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.380379', '37.456181', '野外采集', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (962, '海天线风车群', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0502工业生产设施与生产地', '050201工业园区', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '105.94987309', '37.3319237700001', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (963, '水套村光伏发电基地', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0502工业生产设施与生产地', '050204新能源生产地', '水套村', '吴忠市', '红寺堡区', '柳泉乡', ' ', '105.87515452', '37.4134289800001', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (964, '独疙瘩上湾子光伏发电', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0502工业生产设施与生产地', '050204新能源生产地', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.0827835', '37.2951624', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (965, '沟龚滩风力发电', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0502工业生产设施与生产地', '050201工业园区', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.229698968223', '37.2633961436715', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (966, '太阳山镇风车群', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0502工业生产设施与生产地', '050201工业园区', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.339491917136', '37.1355080407293', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (967, '王户台光伏发电基地', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0502工业生产设施与生产地', '050204新能源生产地', '王户台村', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.233937541975', '37.2648332416205', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (968, '宁夏弘德工业园区', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0502工业生产设施与生产地', '050201工业园区', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.2106892', '37.17032534', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (969, '太阳山矿区', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0502工业生产设施与生产地', '050201工业园区', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.3227584', '37.14236359', '红寺堡收集材料\\红寺堡文旅局资料\\规划类资料\\全域旅游发展规划.pdf', '4', '77', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (970, '太阳山工业园区', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0502工业生产设施与生产地', '050201工业园区', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.614013671875', '37.4146423339844', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (971, '宁夏永进健康产业园', '建筑与设施', '实用建筑与核心设施', '景观农田', '05建筑与设施', '0502工业生产设施与生产地', '050201工业园区', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.102821350098', '37.4747886657715', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (972, '吴忠市太阳山开发区扶贫产业孵化园', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0502工业生产设施与生产地', '050201工业园区', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.615514', '37.421936', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (973, '中国大唐红寺堡能源有限公司', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0502工业生产设施与生产地', '050202工厂与车间', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.11141204834', '37.5067405700684', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (974, '太阳山阳光农产品加工合作社', '建筑与设施', '人文景观综合体', '建设工程与生产地', '05建筑与设施', '0502工业生产设施与生产地', '050203特色作坊与加工地', NULL, '吴忠市', '红寺堡区', '太阳山镇', '太阳山镇兴民村', '106.667486393', '37.3650693180001', '宁夏200亩以上瓜菜生产基地2020.7.13', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (975, '赵秀兰工作室', '建筑与设施', '实用建筑与核心设施', '特色屋舍', '05建筑与设施', '0502工业生产设施与生产地', '050203特色作坊与加工地', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '赵秀兰作为赵式刺绣的第六代传人，先后对六千余人进行刺绣培训，为非遗传承探出新路。非遗产品通过互联网卖到了韩国、迪拜、毛里求斯等地，依靠传统手艺致富，成立的公司年毛利润达400余万元，还获评自治区级非遗传承人。', '106.059607793', '37.4332476060001', '经纬度转换-野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (976, '红塔村扶贫车间', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0502工业生产设施与生产地', '050203特色作坊与加工地', '红塔村', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.233939251607', '37.2648303527911', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (977, '宁夏回族自治区滩羊良种繁育工程技术研究中心', '建筑与设施', '人文景观综合体', '建设工程与生产地', '05建筑与设施', '0503服务业生产设施与生产地', '050301教学科研场所', NULL, '吴忠市', '红寺堡区', '新民街道', '宁夏回族自治区红寺堡区城东养殖园区', '106.061784485328', '37.4177857847595', '工程技术研究中心名录__红寺堡区天源良种羊繁育养殖有限公司', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (978, '宁夏回族自治区葡萄与葡萄酒（红寺堡）技术创新中心', '建筑与设施', '人文景观综合体', '建设工程与生产地', '05建筑与设施', '0503服务业生产设施与生产地', '050301教学科研场所', NULL, '吴忠市', '红寺堡区', '新民街道', '宁夏吴忠市红寺堡区定武高速北侧', '106.285606384277', '37.501033782959', '自治区技术创新中心名录__宁夏汇达阳光生态酒庄有限责任公司', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (979, '红寺堡区回民中学', '建筑与设施', '人文景观综合体', '教学科研实验场所', '05建筑与设施', '0503服务业生产设施与生产地', '050301教学科研场所', NULL, '吴忠市', '红寺堡区', '柳泉乡', '红寺堡区回民中学是红寺堡区区委、区政府、教育局积极争取的自治区中小学校舍安全工程项目。学校始建于2009年5月，落成于2009年8月。学校位于城区北部，西靠吴忠路，南邻人民医院。校园占地面积170亩，建筑面积24048平方米，规划为教学区、生活区、运动区。学校现有高标准教', '106.3354441', '37.3585461', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (980, '红寺堡鹰王航模训练场', '建筑与设施', '人文景观集合体', '教学科研实验场所', '05建筑与设施', '0503服务业生产设施与生产地', '050301教学科研场所', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.339490139134', '37.1355067485627', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (981, '罗山航空飞行基地', '建筑与设施', '人文景观集合体', '教学科研实验场所', '05建筑与设施', '0503服务业生产设施与生产地', '050301教学科研场所', '罗山自然保护区', '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2638115', '37.18951527', '宁夏大学普查成果', '5', '94', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (982, '宁夏黄花菜大数据交易中心', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0503服务业生产设施与生产地', '050302社会与商贸活动场所', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.607231611992', '37.393978313755', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (983, '永新村集散中心', '建筑与设施', '人文景观集合体', '社会与商贸活动场所', '05建筑与设施', '0503服务业生产设施与生产地', '050302社会与商贸活动场所', '永新村', '吴忠市', '红寺堡区', '柳泉乡', ' ', '105.93531', '37.3267394', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (984, '红寺堡旅游集散中心', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050302社会与商贸活动场所', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '红寺堡旅游集散中心坐落于宁夏移民博物馆西南角，西侧紧邻红寺堡区文体广场，占地面积约为750m2。', '106.05889678', '37.43272641', '经纬度转换-野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (985, '红寺堡火车站', '建筑与设施', '人文景观综合体', '交通运输场站', '05建筑与设施', '0503服务业生产设施与生产地', '050303交通运输服务设施', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.0602002', '37.4334708100001', 'POI数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (986, '柳泉桥', '建筑与设施', '实用建筑与核心设施', '桥梁', '05建筑与设施', '0503服务业生产设施与生产地', '050303交通运输服务设施', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.421707', '37.444489', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (987, '沙泉西桥', '建筑与设施', '实用建筑与核心设施', '桥梁', '05建筑与设施', '0503服务业生产设施与生产地', '050303交通运输服务设施', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.388092', '37.452026', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (988, '红塔桥', '建筑与设施', '实用建筑与核心设施', '桥梁', '05建筑与设施', '0503服务业生产设施与生产地', '050303交通运输服务设施', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.284111', '37.4562', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (989, '红塔东桥', '建筑与设施', '实用建筑与核心设施', '桥梁', '05建筑与设施', '0503服务业生产设施与生产地', '050303交通运输服务设施', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.295799', '37.459381', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (990, '鸭爪子沟桥', '建筑与设施', '实用建筑与核心设施', '桥梁', '05建筑与设施', '0503服务业生产设施与生产地', '050303交通运输服务设施', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.222735079943', '37.1830819235058', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (991, '太阳山火车站', '建筑与设施', '人文景观集合体', '交通运输场站', '05建筑与设施', '0503服务业生产设施与生产地', '050303交通运输服务设施', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.284729003906', '37.3683929443359', 'POI数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (992, '太阳山汽车站', '建筑与设施', '人文景观集合体', '交通运输场站', '05建筑与设施', '0503服务业生产设施与生产地', '050303交通运输服务设施', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '105.8081485', '37.22247444', 'POI数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (993, '小河桥', '建筑与设施', '实用建筑与核心设施', '桥梁', '05建筑与设施', '0503服务业生产设施与生产地', '050303交通运输服务设施', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.229694588242', '37.2634030961236', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (994, '大河桥', '建筑与设施', '实用建筑与核心设施', '桥梁', '05建筑与设施', '0503服务业生产设施与生产地', '050303交通运输服务设施', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.233936554623', '37.2648325460968', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (995, '暖泉湖南湖小码头', '建筑与设施', '实用建筑与核心设施', '港口、渡口与码头', '05建筑与设施', '0503服务业生产设施与生产地', '050303交通运输服务设施', '暖泉湖', '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.311782376481', '37.127489364165', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (996, '暖泉湖西湖小码头', '水域景观', '湖沼', '游憩湖区', '05建筑与设施', '0503服务业生产设施与生产地', '050303交通运输服务设施', '暖泉湖', '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.229701417483', '37.263402110726', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (997, '暖泉湖东湖小码头', '水域景观', '湖沼', '游憩湖区', '05建筑与设施', '0503服务业生产设施与生产地', '050303交通运输服务设施', '暖泉湖', '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.33949159922', '37.1355167137439', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (998, '水套西桥', '建筑与设施', '实用建筑与核心设施', '桥梁', '05建筑与设施', '0503服务业生产设施与生产地', '050303交通运输服务设施', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '105.9775366', '37.25473366', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (999, '水套沟桥', '建筑与设施', '实用建筑与核心设施', '桥梁', '05建筑与设施', '0503服务业生产设施与生产地', '050303交通运输服务设施', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.121934678813', '37.3674718388891', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1000, '太阳山汽车客运站', '建筑与设施', '人文景观集合体', '交通运输场站', '05建筑与设施', '0503服务业生产设施与生产地', '050303交通运输服务设施', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.0096793', '37.33846661', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1001, '黑沟中桥', '建筑与设施', '实用建筑与核心设施', '桥梁', '05建筑与设施', '0503服务业生产设施与生产地', '050303交通运输服务设施', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.190231323242', '37.3652763366699', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1002, '野池沟桥', '建筑与设施', '实用建筑与核心设施', '桥梁', '05建筑与设施', '0503服务业生产设施与生产地', '050303交通运输服务设施', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.540178655265', '37.4310516500766', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1003, '东港御味自助火锅', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050305乡村特色经营场所', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '位于红寺堡区文化街77号，距吴忠市红寺堡区人民医院大约500米。', '106.05689505', '37.4348803500001', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1004, '白家湾自助火锅', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050305乡村特色经营场所', NULL, '吴忠市', '红寺堡区', '新民街道', '位于六盘山路与利民巷交叉口东北角，营业时间为早上9点到晚上10点，主要菜品有青虾、手切牛肉等。', '106.066494', '37.421926', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1005, '中圈塘村驿站', '建筑与设施', '人文景观集合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050305乡村特色经营场所', '中圈塘村', '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.08985368', '37.4013269800001', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1006, '王家大院', '建筑与设施', '人文景观集合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050305乡村特色经营场所', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.0447829', '37.28133072', 'POI数据', '4', '85', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1007, '中圈塘村生态餐厅', '建筑与设施', '人文景观集合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050305乡村特色经营场所', '中圈塘村', '吴忠市', '红寺堡区', '红寺堡镇', ' ', '105.888123638', '37.3819692230001', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1008, '中圈塘生态餐厅', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050305乡村特色经营场所', '中圈塘村', '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.233939238315', '37.2648365883144', '宁夏大学普查成果', '4', '79', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1009, '马明手抓店', '建筑与设施', '人文景观集合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050305乡村特色经营场所', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.9954326', '37.28515472', '红寺堡文旅局资料\\普查资料类\\各类文化和旅游资源照片、视频\\最新旅游资源简介', '4', '77', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1010, '罗山情休闲农庄', '建筑与设施', '人文景观集合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050305乡村特色经营场所', '罗山自然保护区', '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.261745', '37.40681262', 'POI数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1011, '罗山酒庄农家乐', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050305乡村特色经营场所', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '三星级，农家乐,红寺堡区罗山路C2路', '106.072937011719', '37.4378395080566', '红寺堡文旅局资料\\普查资料类\\统计excel', '4', '79', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1012, '锦和饭店', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050305乡村特色经营场所', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '红寺堡兴旺小学东南240米', '106.038520812988', '37.4088554382324', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1013, '驰地凯休闲农庄', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050305乡村特色经营场所', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.134529', '37.4238510000001', '卫星影像补充', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1014, '西川葡苑农庄', '建筑与设施', '人文景观集合体', '文化活动场所', '05建筑与设施', '0503服务业生产设施与生产地', '050305乡村特色经营场所', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339483013452', '37.1355111240027', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1015, '瑞斯豪餐饮楼', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '瑞思豪餐饮楼与美豪怡致瑞思豪酒店属于同一公司，地处红寺堡区团结商业广场，为酒店宾客提供餐饮。餐饮包括宁夏地区特色美食手抓羊肉等，还包含鲍鱼等海鲜。', '106.0673355', '37.4200203', '经纬度转换-野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1016, '东盛宾馆', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '位于红寺堡镇罗山路与金水街交汇处，距红寺堡中心520米左右。', '106.063087', '37.43502', '经纬度转换-野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1017, '尚客优酒店', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '新民街道', '位于红寺堡区鹏胜时代广场，团结街北侧，距红寺堡区中心约630米，至中宁东站大约42km。酒店提供空调、拖鞋、24小时热水、吹风机等设施，可提供行李寄存服务。房型有标准大床房、标准间、豪华大床房、豪华家庭房、三人间以及豪华套房等。', '106.05765462', '37.43791723', '经纬度转换-野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1018, '进宝商务宾馆', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '新民街道', '位于红寺堡区团结街与六盘山路交叉路口南100米处，距红寺堡区中心约650米。', '106.055244', '37.426918', '经纬度转换-野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1019, '华景商务宾馆', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '新民街道', '位于红寺堡区银川路102号，六盘山路东侧，客房配设空调、电视、电话、24小时热水淋浴等设施。房型有精品大套房、豪华标间、单间、豪华大床房、豪华套房等。', '106.06371928', '37.3893658000001', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1020, '7天酒店', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '红寺堡区扶贫办东面160米', '106.062217712402', '37.4410247802734', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1021, '红寺堡宾馆', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '创业街与罗山路交叉口西20米', '106.066352844238', '37.4169769287109', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1022, '宏运宾馆', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '德水街，红寺堡交警大队南100米', '106.045028686523', '37.4100875854492', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1023, '利来快捷连锁宾馆', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '滚新公路与创业街交界处东120米', '106.068603515625', '37.4170379638672', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1024, '山丹丹商务宾馆', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '燕然路人民医院南300米', '106.061492919922', '37.4299163818359', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1025, '交通宾馆', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '汽车站东侧', '106.066993713379', '37.4137229919434', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1026, '亚银通宾馆', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '星级旅游饭店（宾馆）金水街南侧欣隆公寓楼', '106.055435180664', '37.4243774414063', '红寺堡文旅局资料\\普查资料类\\统计excel', '4', '77', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1027, '瑞思豪大酒店', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '红寺堡区团结东街团结商业广场D—30', '106.072357177734', '37.4198303222656', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1028, '红寺堡区尚巾府酒店', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '红寺堡弘德街122号', '106.064888000488', '37.4405059814453', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1029, '正达商务中心', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '红寺堡文化西街（二中对面）', '106.052001953125', '37.4319610595703', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1030, '鹏胜宾馆', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '金水东街鹏胜花园旁', '106.070960998535', '37.4243392944336', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1031, '华景宾馆', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '小康街与六盘山北路交汇处东北角', '106.055534362793', '37.4298095703125', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1032, '金水宾馆', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '滚新公路与金水街交界处', '106.067390441895', '37.4246635437012', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1033, '新华商务宾馆', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '前进路西街（广场旁）', '106.05859375', '37.4219398498535', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1034, '俊雅宾馆', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '团结西街63号', '106.056632995605', '37.419490814209', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1035, '宏泰宾馆', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '金水西街东辉商城北50米', '106.059562683105', '37.4238967895508', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1036, '利来伯爵宾馆', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '银川路与金水路十字西南角', '106.05541229248', '37.4243659973145', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1037, '豪杰商务宾馆', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '文化街东方世纪城小区对面', '106.065208435059', '37.4319305419922', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1038, '君豪宾馆', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '金水西街一中对面', '106.060859680176', '37.4238586425781', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1039, '金龙商务宾馆', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '金水广场东', '106.059509277344', '37.4235877990723', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1040, '青龙湖宾馆', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '红寺堡区自然资源局西南100米', '106.055908203125', '37.4305763244629', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1041, '盛华宾馆', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '团结街与G344交界处东北150米', '106.045875549316', '37.4201965332031', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1042, '美华快捷酒店', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '利民巷与银川路交界处东北', '106.0556640625', '37.4155120849609', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1043, '金都商务宾馆', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '利民巷与银川路交界处西南', '106.054481506348', '37.415210723877', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1044, '盛元宾馆', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '德水街万安堂大药房旁', '106.063751220703', '37.4140472412109', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1045, '利来商务宾馆', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050306酒店', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '六盘山路与利民街交叉口西南角', '106.055725097656', '37.4138641357422', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\特色民宿、农家乐名录', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1046, '龙源村生态移民农贸市场', '建筑与设施', '人文景观集合体', '社会与商贸活动场所', '05建筑与设施', '0503服务业生产设施与生产地', '050308特色市场', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.85141459', '37.39090021', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1047, '罗山牛羊交易市场', '建筑与设施', '人文景观集合体', '社会与商贸活动场所', '05建筑与设施', '0503服务业生产设施与生产地', '050308特色市场', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.444428253174', '37.3746625520482', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1048, '大盛川罗山腌缸肉非物质文化遗产店', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0503服务业生产设施与生产地', '050309特色店铺', NULL, '吴忠市', '红寺堡区', '新民街道', '大盛川是红寺堡区的一个汉餐馆，位于红寺堡镇金水东街8号商铺', '106.0776316', '37.4584989', '经纬度转换-野外采集', '4', '83', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1049, '大盛川罗山腌缸肉非物质文化遗产汉餐', '建筑与设施', '实用建筑与核心设施', '特色店铺', '05建筑与设施', '0503服务业生产设施与生产地', '050309特色店铺', NULL, '吴忠市', '红寺堡区', '新民街道', ' ', '106.0445914', '37.42885229', '经纬度转换-野外采集', '4', '80', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1050, '团结广场观光夜市', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0504生活设施与建筑', '050403特色街巷', NULL, '吴忠市', '红寺堡区', '新民街道', '团结广场观光夜市位于红寺堡区扬黄路团结商业广场，集美食、购物于一体，街道两侧摆满夜摊，夜市营业时间大约为下午六点至晚上十点半。', '106.05792652', '37.4379822600001', '经纬度转换-野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1051, '中圈塘自治区葡萄种植示范村', '建筑与设施', '人文景观集合体', '建设工程与生产地', '05建筑与设施', '0504生活设施与建筑', '050404特色社区', '中圈塘村', '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.233939238315', '37.2648365883144', '宁夏大学普查成果', '4', '81', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1052, '红寺堡镇永新村', '建筑与设施', '实用建筑与核心设施', '特色街区', '05建筑与设施', '0504生活设施与建筑', '050404特色社区', '永新村', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.0453132', '37.42817769', '宁夏文化和旅游资讯网', '5', '93', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1053, '周新村', '建筑与设施', '实用建筑与核心设施', '特色街区', '05建筑与设施', '0504生活设施与建筑', '050404特色社区', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.563667', '37.439384', '宁夏地名资料', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1054, '永新休闲旅游民宿村', '建筑与设施', '实用建筑与核心设施', '特色街区', '05建筑与设施', '0504生活设施与建筑', '050404特色社区', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '105.94115475', '37.3265458400001', '野外采集', '4', '85', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1055, '河西村', '建筑与设施', '实用建筑与核心设施', '特色街区', '05建筑与设施', '0504生活设施与建筑', '050404特色社区', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.30129448', '37.42850832', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1056, '中圈塘村', '建筑与设施', '实用建筑与核心设施', '特色街区', '05建筑与设施', '0504生活设施与建筑', '050404特色社区', '中圈塘村', '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.0733444', '37.4121276000001', '野外采集', '4', '82', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1057, '红关村美丽乡村', '建筑与设施', '实用建筑与核心设施', '特色街区', '05建筑与设施', '0504生活设施与建筑', '050404特色社区', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.136353', '37.442688', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1058, '西川美丽乡村', '建筑与设施', '实用建筑与核心设施', '特色街区', '05建筑与设施', '0504生活设施与建筑', '050404特色社区', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.2927419', '37.41667271', '野外采集', '4', '86', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1059, '柳泉乡永新村', '建筑与设施', '实用建筑与核心设施', '特色街区', '05建筑与设施', '0504生活设施与建筑', '050404特色社区', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.258079218061', '37.3724134171594', '野外采集', '4', '85', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1060, '红海村', '建筑与设施', '实用建筑与核心设施', '特色街区', '05建筑与设施', '0504生活设施与建筑', '050404特色社区', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.339489104111', '37.1355103801006', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1061, '红寺堡镇弘德村', '建筑与设施', '实用建筑与核心设施', '特色街区', '05建筑与设施', '0504生活设施与建筑', '050404特色社区', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.2322635', '37.16282373', '宁夏文化和旅游资讯网', '5', '90', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1062, '新庄集乡西川村', '建筑与设施', '实用建筑与核心设施', '特色街区', '05建筑与设施', '0504生活设施与建筑', '050404特色社区', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.33948359551', '37.1355153361091', '宁夏文化和旅游资讯网', '4', '79', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1063, '豹子滩村', '建筑与设施', '实用建筑与核心设施', '特色街区', '05建筑与设施', '0504生活设施与建筑', '050404特色社区', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.353631845816', '37.437222230868', '宁夏地名资料', '4', '78', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1064, '龙泉村', '建筑与设施', '实用建筑与核心设施', '特色街区', '05建筑与设施', '0504生活设施与建筑', '050404特色社区', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.5422432', '37.49786467', '红寺堡文旅局资料\\普查资料类\\各类文化和旅游资源照片、视频\\最新旅游资源简介', '4', '87', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1065, '乌沙塘村', '建筑与设施', '实用建筑与核心设施', '特色街区', '05建筑与设施', '0504生活设施与建筑', '050404特色社区', '乌沙塘村', '吴忠市', '红寺堡区', '大河乡', ' ', '106.0041175', '37.26852817', '红寺堡文旅局资料\\普查资料类\\各类文化和旅游资源照片、视频\\最新旅游资源简介', '4', '83', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1066, '龙兴村', '建筑与设施', '实用建筑与核心设施', '特色街区', '05建筑与设施', '0504生活设施与建筑', '050404特色社区', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.394137928514', '37.35803028264', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1067, '红塔村', '建筑与设施', '实用建筑与核心设施', '特色街区', '05建筑与设施', '0504生活设施与建筑', '050404特色社区', '红塔村', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.111412', '37.506741', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1068, '水套村', '建筑与设施', '实用建筑与核心设施', '特色街区', '05建筑与设施', '0504生活设施与建筑', '050404特色社区', '水套村', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.563789', '37.433159', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1069, '甜水河村', '建筑与设施', '实用建筑与核心设施', '特色街区', '05建筑与设施', '0504生活设施与建筑', '050404特色社区', '甜水河', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.162612915039', '37.4394645690918', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1070, '光彩村', '建筑与设施', '实用建筑与核心设施', '特色街区', '05建筑与设施', '0504生活设施与建筑', '050404特色社区', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.085845947266', '37.4387321472168', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1071, '兴民村', '建筑与设施', '实用建筑与核心设施', '特色街区', '05建筑与设施', '0504生活设施与建筑', '050404特色社区', NULL, '吴忠市', '红寺堡区', '太阳山镇', '罗山东麓', '106.6739', '37.35549', '红寺堡文旅局资料\\普查资料类\\各类文化和旅游资源照片、视频\\红寺堡区宣传照片\\景区图片', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1072, '吴忠市红寺堡区中心敬老院', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0504生活设施与建筑', '050405医疗康体场所', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.0757228', '37.62401195', 'POI数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1073, '昊润昇生态农场', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0504生活设施与建筑', '050406游乐休闲场所', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.240852', '37.5479320000001', '卫星影像补充', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1074, '清云湖公园', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0504生活设施与建筑', '050406游乐休闲场所', '清云湖景区', '吴忠市', '红寺堡区', '红寺堡镇', '清云湖公园位于人民街以北、弘德街以南，康济路以东、罗山路以西，总面积886亩，其中，水域面积81亩，建筑面积54亩，绿化面积751亩，是集休闲娱乐、观光旅游、大型集会、文化交流等多功能为一体的综合型开放式公园。2011年11月动工兴建，2013年11月竣工。清云湖公园建设包括', '106.05606856', '37.4359761100001', '经纬度转换-野外采集', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1075, '生态公园景观', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0504生活设施与建筑', '050406游乐休闲场所', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.1017948', '37.56779991', 'POI数据', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1076, '清云湖健康主题公园', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0504生活设施与建筑', '050406游乐休闲场所', '清云湖景区', '吴忠市', '红寺堡区', '新民街道', ' ', '106.05529061', '37.4143907600001', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1077, '清云湖体育公园', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0504生活设施与建筑', '050406游乐休闲场所', '清云湖景区', '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.05990991', '37.4329480800001', '野外采集', '4', '79', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1078, '阿里垂钓中心', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0504生活设施与建筑', '050406游乐休闲场所', NULL, '吴忠市', '红寺堡区', '新民街道', ' ', '106.055543917592', '37.4298181242722', 'POI数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1079, '城东体育公园', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0504生活设施与建筑', '050406游乐休闲场所', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '公园内设有4个足球门，一条塑胶跑道，草坪完整，周围被绿色围栏包围', '106.110542', '37.518478', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1080, '城东市民休闲公园', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0504生活设施与建筑', '050406游乐休闲场所', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '城东市民休闲公园是集生态，运动，休闲，娱乐等为一体的城市综合性公园。景色秀丽，功能齐全，是运动娱乐的绝佳去处。', '106.124825', '37.551476', '经纬度转换-野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1081, '太阳山环岛', '建筑与设施', '人文景观集合体', '康体游乐休闲度假地', '05建筑与设施', '0504生活设施与建筑', '050406游乐休闲场所', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.290305044633', '37.4075303588983', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1082, '汇达垂钓', '建筑与设施', '人文景观集合体', '康体游乐休闲度假地', '05建筑与设施', '0504生活设施与建筑', '050406游乐休闲场所', '汇达阳光葡萄酒庄', '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.121929117057', '37.3674725692894', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1083, '大河文化活动中心', '建筑与设施', '人文景观集合体', '文化活动场所', '05建筑与设施', '0504生活设施与建筑', '050406游乐休闲场所', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.19959687593', '37.1314843915963', 'POI数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1084, '香园文化大院（香园特色村）', '建筑与设施', '实用建筑与核心设施', '特色街区', '05建筑与设施', '0505公共文化设施与建筑', '050501文博院馆', NULL, '吴忠市', '红寺堡区', '大河乡', '位于大河乡香园特色村', '105.992546081543', '37.3671455383301', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\各类文化和旅游资源照片、视频', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1085, '宁夏移民博物馆', '建筑与设施', '人文景观综合体', '文化活动场所', '05建筑与设施', '0505公共文化设施与建筑', '050501文博院馆', NULL, '吴忠市', '红寺堡区', '新民街道', ' ', '106.08102561', '37.4380111', 'POI数据', '5', '94', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1086, '红寺堡图书馆', '建筑与设施', '人文景观综合体', '文化活动场所', '05建筑与设施', '0505公共文化设施与建筑', '050501文博院馆', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.002', '37.602', 'POI数据', '4', '81', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1087, '红寺堡区移民文化人才培养基地', '建筑与设施', '人文景观综合体', '文化活动场所', '05建筑与设施', '0505公共文化设施与建筑', '050501文博院馆', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.05611494', '37.43596474', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1088, '清云湖名人故事园', '建筑与设施', '人文景观综合体', '文化活动场所', '05建筑与设施', '0505公共文化设施与建筑', '050501文博院馆', '清云湖景区', '吴忠市', '红寺堡区', '新民街道', '位于清云湖东南方向', '105.99158534', '37.2861385000001', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1089, '西川乡愁记忆馆', '建筑与设施', '人文景观集合体', '文化活动场所', '05建筑与设施', '0505公共文化设施与建筑', '050501文博院馆', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.3101221', '37.45382918', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1090, '清云湖健身广场', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0505公共文化设施与建筑', '050502体育场馆与体育休闲场所', '清云湖景区', '吴忠市', '红寺堡区', '红寺堡镇', '清云湖公园于2016年新建了塑胶跑道和健身路径，成为名副其实的体育公园，是红寺堡区百姓休闲娱乐和运动健身的主要活动场所。', '106.05611268', '37.4359921000001', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1091, '红寺堡青少年活动中心', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0505公共文化设施与建筑', '050502体育场馆与体育休闲场所', NULL, '吴忠市', '红寺堡区', '新民街道', '位于红寺堡区六盘山路与文化街交叉口西北方向80米处，西北方紧邻红寺堡二中，东北方向是红寺堡体育馆以及宁夏移民博物馆。', '106.05682006', '37.43807624', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1092, '红寺堡体育馆', '建筑与设施', '实用建筑与核心设施', '独立场、所', '05建筑与设施', '0505公共文化设施与建筑', '050502体育场馆与体育休闲场所', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.05611542', '37.4359726600001', 'POI数据', '4', '78', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1093, '宁夏移民博物馆广场', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0505公共文化设施与建筑', '050503文化广场', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '宁夏移民博物馆广场是宁夏移民博物馆四周的空地，整体呈八边形，将宁夏移民博物馆包含其中，广场有休闲科普长廊用于向游客普及红寺堡区的重要旅游景点以及供游客休息。', '106.05309187', '37.3715135300001', '经纬度转换-野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1094, '时代广场', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0505公共文化设施与建筑', '050503文化广场', NULL, '吴忠市', '红寺堡区', '新民街道', '时代广场位于红寺堡区创业街与罗山路交叉口西南50米，是综合性的商业广场，包括美食、服饰、家电、影院、银行等，东侧有一地下停车场供顾客停放车辆。', '106.05568415', '37.43813362', '经纬度转换-野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1095, '清云湖南广场', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0505公共文化设施与建筑', '050503文化广场', '清云湖景区', '吴忠市', '红寺堡区', '新民街道', ' ', '106.05307072', '37.4377590300001', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1096, '清云湖北广场', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0505公共文化设施与建筑', '050503文化广场', '清云湖景区', '吴忠市', '红寺堡区', '新民街道', ' ', '106.05550844', '37.42684258', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1097, '金水广场', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0505公共文化设施与建筑', '050503文化广场', NULL, '吴忠市', '红寺堡区', '新民街道', '位于红寺堡区光明巷与前进街交叉路口往西北约150米，金水街对面是红寺堡区人民政府。', '106.07763155', '37.45849888', '经纬度转换-野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1098, '红塔村新时代文明驿站', '建筑与设施', '人文景观集合体', '文化活动场所', '05建筑与设施', '0505公共文化设施与建筑', '050503文化广场', '红塔村', '吴忠市', '红寺堡区', '柳泉乡', ' ', '105.98113462', '37.35185623', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1099, '西川村大舞台', '建筑与设施', '人文景观集合体', '文化活动场所', '05建筑与设施', '0505公共文化设施与建筑', '050503文化广场', '西川村', '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.306038', '37.460655', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1100, '西川文化广场', '建筑与设施', '人文景观集合体', '文化活动场所', '05建筑与设施', '0505公共文化设施与建筑', '050503文化广场', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.307724', '37.461903', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1101, '红寺堡中心小学乡村学校少年宫', '建筑与设施', '人文景观集合体', '文化活动场所', '05建筑与设施', '0505公共文化设施与建筑', '050503文化广场', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.293334960937', '37.1541290283203', 'POI数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1102, '甜水河村文化广场', '建筑与设施', '人文景观集合体', '文化活动场所', '05建筑与设施', '0505公共文化设施与建筑', '050503文化广场', '甜水河', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.2355989', '37.34690094', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1103, '永新村文化广场', '建筑与设施', '人文景观集合体', '文化活动场所', '05建筑与设施', '0505公共文化设施与建筑', '050503文化广场', '永新村', '吴忠市', '红寺堡区', '柳泉乡', ' ', '105.8572412', '37.17314899', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1104, '乌沙塘村文化广场', '建筑与设施', '人文景观集合体', '康体游乐休闲度假地', '05建筑与设施', '0505公共文化设施与建筑', '050503文化广场', '乌沙塘村', '吴忠市', '红寺堡区', '大河乡', ' ', '106.339487909296', '37.1355075285488', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1105, '红塔村文化舞台', '建筑与设施', '人文景观集合体', '文化活动场所', '05建筑与设施', '0505公共文化设施与建筑', '050503文化广场', '红塔村', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.253349304199', '37.4466934204102', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1106, '甜水河文化广场', '建筑与设施', '人文景观集合体', '文化活动场所', '05建筑与设施', '0505公共文化设施与建筑', '050503文化广场', '甜水河', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.163024902344', '37.4395065307617', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1107, '红塔村文明广场', '建筑与设施', '人文景观集合体', '康体游乐休闲度假地', '05建筑与设施', '0505公共文化设施与建筑', '050503文化广场', '红塔村', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.25269317627', '37.4502105712891', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1108, '西川忆乡愁民俗', '建筑与设施', '人文景观集合体', '文化活动场所', '05建筑与设施', '0505公共文化设施与建筑', '050503文化广场', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.091949462891', '37.3205528259277', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1109, '清云湖北广场标志性景观', '建筑与设施', '景观与小品建筑', '形象标志物', '05建筑与设施', '0506景观建筑与小品', '050601标志物', '清云湖景区', '吴忠市', '红寺堡区', '柳泉乡', '上有“为中国人民谋幸福，为中华民族谋复兴。牢记使命，不忘初心”等字样，建于2019年10月以后，以红色，蓝色，黑色颜色为主，为廉字样式。', '106.05552784', '37.4284372400001', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1110, '清云湖清雲湖四角木亭', '建筑与设施', '景观与小品建筑', '亭、台、楼、阁', '05建筑与设施', '0506景观建筑与小品', '050604亭、台、楼、阁', '清云湖景区', '吴忠市', '红寺堡区', '红寺堡镇', '四角木亭位于清云湖西侧，便于游客歇脚休息。', '106.05569722', '37.4379924400001', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1111, '清云湖张拉膜亭', '建筑与设施', '景观与小品建筑', '亭、台、楼、阁', '05建筑与设施', '0506景观建筑与小品', '050604亭、台、楼、阁', '清云湖景区', '吴忠市', '红寺堡区', '新民街道', '是由颜色不一的张拉膜形成的十个小亭子，可供游客乘凉休息。', '106.05664297', '37.4380268800001', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1112, '清云湖八角亭', '建筑与设施', '景观与小品建筑', '亭、台、楼、阁', '05建筑与设施', '0506景观建筑与小品', '050604亭、台、楼、阁', '清云湖景区', '吴忠市', '红寺堡区', '新民街道', '在清云湖公园东北方向，亭子呈八边形状，故称八角亭', '106.05603121', '37.43595758', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1113, '清云湖公园假山', '建筑与设施', '景观与小品建筑', '堆石', '05建筑与设施', '0506景观建筑与小品', '050607土石景观小品', '清云湖景区', '吴忠市', '红寺堡区', '新民街道', ' ', '106.05622613', '37.4363862100001', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1114, '肖家窑葡萄文化长廊', '建筑与设施', '人文景观综合体', '康体游乐休闲度假地', '05建筑与设施', '0506景观建筑与小品', '050608景观步道、栈道、甬道', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' 肖家窑村', '106.229702933099', '37.2634021269909', '野外采集', '4', '86', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1115, '清云湖廉政文化长廊', '建筑与设施', '景观与小品建筑', '门廓、廊道', '05建筑与设施', '0506景观建筑与小品', '050608景观步道、栈道、甬道', '清云湖景区', '吴忠市', '红寺堡区', '新民街道', '红色宣传栏上贴满廉政文化宣传事迹与标语', '106.05379864', '37.43748578', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1116, '清云湖法制宣传长廊', '建筑与设施', '景观与小品建筑', '门廓、廊道', '05建筑与设施', '0506景观建筑与小品', '050608景观步道、栈道、甬道', '清云湖景区', '吴忠市', '红寺堡区', '红寺堡镇', '法制宣传长廊位于清云湖公园北门入口处，宣传栏上贴满各种法律知识，用于向游客普及常用法律知识。', '106.05345243', '37.4376384500001', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1117, '清云湖健康主题公园步道', '建筑与设施', '景观与小品建筑', '景观步道、甬路', '05建筑与设施', '0506景观建筑与小品', '050608景观步道、栈道、甬道', '清云湖景区', '吴忠市', '红寺堡区', '红寺堡镇', '清云湖健康主题公园步道起于清云湖公园南门东侧，终于清云湖公园南门西侧，围绕整个清云湖公园形成红色塑胶步道。', '106.294473525087', '37.4599709955947', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1118, '移民博物馆休闲科普长廊', '建筑与设施', '景观与小品建筑', '门廓、廊道', '05建筑与设施', '0506景观建筑与小品', '050608景观步道、栈道、甬道', NULL, '吴忠市', '红寺堡区', '红寺堡镇', '移民博物馆休闲科普长廊为游客提供了休闲座椅，长廊上贴有红寺堡区扬黄灌溉工程三泵站、罗山飞行营地等重要旅游景点的基本情况。', '106.05570662', '37.4331864500001', '经纬度转换-野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1119, '红寺堡葡萄酒庄葫芦长廊', '建筑与设施', '景观与小品建筑', '门廓、廊道', '05建筑与设施', '0506景观建筑与小品', '050608景观步道、栈道、甬道', '红寺堡酒庄', '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.339488833024', '37.1355119865404', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1120, '西川风车廊道', '建筑与设施', '景观与小品建筑', '景观步道、甬路', '05建筑与设施', '0506景观建筑与小品', '050608景观步道、栈道、甬道', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.56780612', '37.4072272490001', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1121, '水套汉墓群', '建筑与设施', '实用建筑与核心设施', '陵墓', '05建筑与设施', '0506景观建筑与小品', '050615陵墓', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.1526662', '37.55876449', '野外采集', '4', '79', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1122, '马莲台沟古墓群', '建筑与设施', '实用建筑与核心设施', '陵墓', '05建筑与设施', '0506景观建筑与小品', '050615陵墓', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.22969843694', '37.2633969254041', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1123, '周新村明代墓葬', '建筑与设施', '实用建筑与核心设施', '陵墓', '05建筑与设施', '0506景观建筑与小品', '050615陵墓', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.092056', '37.31694', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1124, '新泉村汉墓', '建筑与设施', '实用建筑与核心设施', '陵墓', '05建筑与设施', '0506景观建筑与小品', '050615陵墓', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.339488196093', '37.1355140516013', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1125, '柳泉村墓葬', '建筑与设施', '实用建筑与核心设施', '陵墓', '05建筑与设施', '0506景观建筑与小品', '050615陵墓', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.229699135299', '37.2633994499565', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1126, '周新庄墓葬', '建筑与设施', '实用建筑与核心设施', '陵墓', '05建筑与设施', '0506景观建筑与小品', '050615陵墓', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '105.914592406933', '37.4008519320526', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1127, '何庄子墓葬', '建筑与设施', '实用建筑与核心设施', '陵墓', '05建筑与设施', '0506景观建筑与小品', '050615陵墓', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.229696357532', '37.2633986431593', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1128, '柳泉宋代墓葬', '建筑与设施', '实用建筑与核心设施', '陵墓', '05建筑与设施', '0506景观建筑与小品', '050615陵墓', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.184936523437', '37.4448623657227', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1129, '莲花山陵园', '建筑与设施', '实用建筑与核心设施', '陵墓', '05建筑与设施', '0506景观建筑与小品', '050615陵墓', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.951677', '37.44606', 'POI数据', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1130, '庆王朱栴陵墓', '建筑与设施', '实用建筑与核心设施', '陵墓', '05建筑与设施', '0506景观建筑与小品', '050615陵墓', NULL, '吴忠市', '红寺堡区', '太阳山镇', '地处今太阳山镇周新以西，明庆王陵区（占地面积约30平方公里）最北端', '106.396209716797', '37.3615264892578', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1131, '谭庄子古遗址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.308773', '37.42495', '宁夏地名资料', '4', '83', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1132, '王户台堡子', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', '王户台村', '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.318571506539', '37.4684909576892', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1133, '谭庄子清代晚期寨子', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.07991644', '37.4561689600001', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1134, '红寺堡址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.140678', '37.604954', '宁夏文物地图集', '4', '80', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1135, '红寺堡旧城堡遗址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.565652844049', '37.4184840842605', '野外采集', '4', '78', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1136, '水套旧址遗迹', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.232567', '37.45779', '野外采集', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1137, '上边窑遗址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.203025', '37.39473789', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1138, '铁庄遗址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.615478483965', '37.3932301135534', '宁夏文物地图集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1139, '王户台堡址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', '王户台村', '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.229698969597', '37.2633972701318', '宁夏文物地图集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1140, '西牛嘴遗址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339487114362', '37.1355084823319', '宁夏文物地图集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1141, '红海村堡子', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.339487406705', '37.1355158068814', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1142, '红寺堡旧城', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.233937669685', '37.2648316311352', '宁夏地名资料', '4', '75', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1143, '王户台古村落破坏点', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', '王户台村', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.331635422575', '37.3886721704918', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1144, '王户台老堡子', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', '王户台村', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.1775433', '37.25818235', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1145, '王户台老村遗址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', '王户台村', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.251096224967', '37.2374585832145', '野外采集', '4', '77', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1146, '红寺堡古城', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.30360579', '37.4411258600001', '宁夏地名资料', '4', '82', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1147, '兴旺村堡子', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', '兴旺村', '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.306903256011', '37.1776372338199', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1148, '耍艺山公社旧址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.9339568', '37.2155895', '宁夏地名资料', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1149, '上源村寨子', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '105.8389009', '37.30004715', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1150, '白塔水村落遗址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.536891', '37.584619', '宁夏地名资料', '4', '78', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1151, '谭庄子寨子', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.3087731', '37.424951', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1152, '罗山坡子小寨子', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.2005837', '37.32478855', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1153, '青山村张家寨子', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233941256842', '37.2648348406415', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1154, '青山遗址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339487942209', '37.1355118621115', '宁夏地名资料', '4', '75', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1155, '姬家沟遗址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.223152477003', '37.2583442371456', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1156, '常家洼红梁山城址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.223151109734', '37.2583433771755', '宁夏地名资料', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1157, '兴盛村城址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.223155694082', '37.2583383975645', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1158, '常家洼红梁子堡子', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.223153315088', '37.258340821851', '宁夏地名资料', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1159, '龚家岭堡子', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.223152618032', '37.2583415869772', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1160, '旧寺堡子', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339491687105', '37.1355091364812', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1161, '熊家塘墩台', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.91459133971', '37.4008476164325', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1162, '扁窑子堡子', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.339490515659', '37.1355103567456', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1163, '马段头村寨子', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.3829405', '37.35164773', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1164, '谭庄子古庙遗址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.0827402', '37.12353464', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1165, '周新村遗址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.339486092575', '37.1355090268807', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1166, '段头子城址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.158101162635', '37.1987407050414', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1167, '徐冰水村寨子', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.158094484269', '37.1987395492066', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1168, '张台村寨子', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.158101023484', '37.1987393542803', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1169, '谭庄子老堡子', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.2310958839', '37.481832473', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1170, '谭庄子村遗址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.300369262695', '37.4180641174316', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1171, '沙沟门新边墙遗址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.992240905762', '37.4325981140137', '宁夏文物地图集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1172, '马家窑文化遗址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060102古城遗址与聚落遗迹', NULL, '吴忠市', '红寺堡区', '太阳山镇', '位于罗山东北方向靠近银昆高速', '106.515991210937', '37.5949058532715', '宁夏大学普查成果', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1173, '移民旧址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060103历史文化街区', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.234066', '37.315534', '宁夏地名资料', '5', '92', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1174, '新庄集西夏官印窖藏', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060104宫殿建筑遗址', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.0350422', '37.43721361', '宁夏文物地图集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1175, '太阳山栈楼', '建筑与设施', '实用建筑与核心设施', '特色屋舍', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060105名人故居', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.339487912539', '37.135515281618', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1176, '青祠', '建筑与设施', '实用建筑与核心设施', '景观农田', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060107祠堂', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '105.8637568', '37.28856599', '野外采集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1177, '王家祠堂', '建筑与设施', '人文景观综合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0601生活与居住遗址遗迹', '060107祠堂', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.179754', '37.273082', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1178, '鲁家窑军事教育基地', '建筑与设施', '人文景观综合体', '军事遗址与古战场', '06历史文化遗址遗迹', '0602政治与军事场所', '060202重大军事事件发生地与遗址', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.08438873291', '37.5061416625977', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\各类文化和旅游资源照片、视频', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1179, '明长城红寺堡三段', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0602政治与军事场所', '060203长城遗址（迹）', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.339487441012', '37.1355124794863', '野外采集', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1180, '大河村明长城遗址', '建筑与设施', '人文景观集合体', '军事遗址与古战场', '06历史文化遗址遗迹', '0602政治与军事场所', '060204军事与民防要塞遗址（迹）', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.986526489258', '37.4028091430664', '系统补报', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1181, '红塔烽火台遗址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0602政治与军事场所', '060205烽火墩堠', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.28617', '37.460986', '宁夏文物地图集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1182, '永泉村烽火台', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0602政治与军事场所', '060205烽火墩堠', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.259595', '37.495046', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\红寺堡区国保单位资料', '4', '87', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1183, '水套村烽火台', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0602政治与军事场所', '060205烽火墩堠', '水套村', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.19960219548', '37.1314844793804', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\红寺堡区国保单位资料', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1184, '潘河村烽火台', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0602政治与军事场所', '060205烽火墩堠', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '105.7531332', '37.25855758', '二普地名等数据', '4', '77', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1185, '施家塘烽火台遗址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0602政治与军事场所', '060205烽火墩堠', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.3601002', '37.39301421', '宁夏文物地图集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1186, '红沟窑烽火台遗址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0602政治与军事场所', '060205烽火墩堠', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.339482767712', '37.1355097050373', '宁夏文物地图集', '4', '78', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1187, '红阳烽火台遗址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0602政治与军事场所', '060205烽火墩堠', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.06082449', '37.3791345600001', '宁夏文物地图集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1188, '烂山子烽火台', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0602政治与军事场所', '060205烽火墩堠', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '105.93553169', '37.3265880700001', '二普地名等数据', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1189, '红海村2号烽燧', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0602政治与军事场所', '060205烽火墩堠', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.2402089', '37.23124212', '野外采集', '4', '78', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1190, '买河烽火台遗址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0602政治与军事场所', '060205烽火墩堠', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.339485818985', '37.1355166214736', '宁夏文物地图集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1191, '红海村 1 号烽火台', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0602政治与军事场所', '060205烽火墩堠', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.3420878', '37.4621051', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1192, '羊坊滩烽火台', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0602政治与军事场所', '060205烽火墩堠', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.339483639015', '37.1355145259252', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1193, '红海村 2 号烽火台', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0602政治与军事场所', '060205烽火墩堠', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.2238948', '37.3393354', '宁夏地名资料', '4', '76', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1194, '马段头烽火台', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0602政治与军事场所', '060205烽火墩堠', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.4422992', '37.37862113', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\红寺堡区国保单位资料', '4', '75', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1195, '白墩烽火台', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0602政治与军事场所', '060205烽火墩堠', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.225708146634', '37.1063112683964', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\红寺堡区国保单位资料', '4', '82', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1196, '红羊坊滩烽火台', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0602政治与军事场所', '060205烽火墩堠', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.2504958', '37.24848331', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\红寺堡区国保单位资料', '4', '75', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1197, '白墩烽火台遗址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0602政治与军事场所', '060205烽火墩堠', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339484729881', '37.1355164508413', '宁夏文物地图集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1198, '罗山口烽火台', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0602政治与军事场所', '060205烽火墩堠', '罗山自然保护区', '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233945525087', '37.2648361450715', '宁夏文物地图集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1199, '马段头烽火台遗址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0602政治与军事场所', '060205烽火墩堠', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339489615252', '37.1355112267156', '宁夏文物地图集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1200, '马家渠烽火台遗址', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0602政治与军事场所', '060205烽火墩堠', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.124931741862', '37.2108777849451', '宁夏文物地图集', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1201, '麦家台子烽火台', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0602政治与军事场所', '060205烽火墩堠', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.158098858918', '37.1987365979479', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1202, '红阳村烽火台', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0602政治与军事场所', '060205烽火墩堠', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '105.832772222', '37.2087888890001', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\红寺堡区国保单位资料', '4', '78', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1203, '永新明代烽火台', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0602政治与军事场所', '060205烽火墩堠', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.244873046875', '37.4440689086914', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1204, '马渠烽火台', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0602政治与军事场所', '060205烽火墩堠', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.124923706055', '37.2108688354492', '红寺堡收集材料\\红寺堡文旅局资料\\普查资料类\\红寺堡区国保单位资料', '4', '75', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1205, '柳泉乡卧龙庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.21012878418', '37.4477386474609', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1206, '沙泉村龙王庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.339483120703', '37.1355091190754', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1207, '甜水河村罗凤山庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', '甜水河', '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.246516481385', '37.3341275730098', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1208, '南源村南源大王庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339485168457', '37.1355056762695', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1209, '南源村王灵祖师庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.6699404', '37.38925443', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1210, '潘儿庄龙王庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.5340801', '37.53189266', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1211, '平岭子清真大寺', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.339483866738', '37.1355078830094', 'POI数据', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1212, '沙草墩山神庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.233937374501', '37.2648357582717', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1213, '乌沙塘山神庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.353638107795', '37.4372201990623', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1214, '东盛山九龙观', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.22329310332', '37.3090314135525', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1215, '弘佛寺', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.121931463705', '37.3674773239343', 'POI数据', '4', '80', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1216, '红墩子龙王庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.6276336', '37.47699435', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1217, '红崖村花丽山寺庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.8979878', '37.25265089', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1218, '洪沟滩村兴财观', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.06301887', '37.39428753', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1219, '林小庄土地庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.549774', '37.401943', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1220, '菊花台村龙王庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.319984', '37.436859', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1221, '宝乐庵', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.33948653969', '37.1355172460058', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1222, '新庄集乡青龙山庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.180716225211', '37.4392929109106', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1223, '杨柳村山神庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.1597706', '37.19940755', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1224, '药王洞庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.066526003315', '37.3996228510895', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1225, '杨柳村雷王庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.294472173406', '37.4599687957717', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1226, '中圈塘龙王庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', '中圈塘村', '吴忠市', '红寺堡区', '红寺堡镇', ' ', '106.2195914', '37.58134587', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1227, '巴庄关公庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '105.927649', '37.17655125', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1228, '巴庄子土地庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.682192734655', '37.3604326300939', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1229, '白疙瘩白龙庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.3286529', '37.12834109', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1230, '白塔水龙王庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.2518299', '37.27026089', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1231, '老虎头关公庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.6140156', '37.41464307', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1232, '老虎头娘娘庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '太阳山镇', ' ', '106.221046', '37.414886', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1233, '龙泉德荣道堂', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '105.9922439', '37.43259698', 'POI数据', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1234, '麻黄沟和谐寺庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '大河乡', ' ', '106.339485237711', '37.1355106155436', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1235, '沙泉村龙泉庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '柳泉乡', ' ', '106.065205756', '37.4319315170001', '宁夏地名资料', '2', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1236, '王灵祖师庙', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.066245', '37.42528', '全国宗教活动场所及基本信息（佛、道）', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1237, '罗山三霄观', '建筑与设施', '人文景观集合体', '宗教与祭祀活动场所', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060402宗教活动场所', '罗山自然保护区', '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.059013366699', '37.3915176391602', '野外采集', '4', '83', '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1238, '龙泉寺石窟', '历史遗迹', '物质类文化遗存', '建筑遗迹', '06历史文化遗址遗迹', '0604宗教与祭祀场所', '060403石窟', NULL, '吴忠市', '红寺堡区', '新庄集乡', ' ', '106.339487831221', '37.1355121259557', '宁夏地名资料', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);
INSERT INTO `t_hongsibao` VALUES (1239, '1236工程指挥部旧址（扬黄工程）', '建筑与设施', '人文景观综合体', '纪念地与纪念活动场所', '06历史文化遗址遗迹', '0605 近现代重要事件旧址与纪念地', '060502重要历史人物和活动纪念地', NULL, '吴忠市', '红寺堡区', '大河乡', '大河乡龙源农贸市场', '106.339489555341', '37.1355146512155', '野外采集', '3', NULL, '张慧芳', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu`  (
  `m_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单id',
  `m_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单功能名',
  `p_menu` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上级功能编号',
  `is_navigation` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '是否用于导航（0：是 1：否）',
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
INSERT INTO `t_menu` VALUES ('04f5cbbec92711eba9ff144f8a625b6e', '图表管理', '0', '0', '1', '2', '33', '', '曾成龙', NULL, '798fddc17f2211eb973d6100d940b6cf', '2023-05-18 14:50:33');
INSERT INTO `t_menu` VALUES ('0ea6f1cf4152ab9b2078ec6e1b969c29', '红寺堡自评等级图表', '04f5cbbec92711eba9ff144f8a625b6e', '0', '/showScoreChars.html', NULL, '1', '红寺堡评分图表', '798fddc17f2211eb973d6100d940b6cf', '2023-05-18 14:51:35', '798fddc17f2211eb973d6100d940b6cf', '2023-05-18 16:01:22');
INSERT INTO `t_menu` VALUES ('1', '基础功能', '0', '0', '', '2', '2', '1', '1', NULL, '曾成龙', NULL);
INSERT INTO `t_menu` VALUES ('2ca02705bb0911eb8357144f8a625b6e', '登录日志管理', '1', '0', '/LogController/hello.html', '3', '1', '登录日志管理', '曾成龙', NULL, '798fddc17f2211eb973d6100d940b6cf', '2023-05-17 14:43:42');
INSERT INTO `t_menu` VALUES ('4', '角色管理', '1', '0', '/RoleController/role_native.html', '5', '3', '', NULL, NULL, '曾成龙', NULL);
INSERT INTO `t_menu` VALUES ('5', '权限管理', '0', '0', '2', '1', '3', '', NULL, NULL, '798fddc17f2211eb973d6100d940b6cf', '2023-05-17 15:56:49');
INSERT INTO `t_menu` VALUES ('6', '菜单管理', '5', '0', '/menuController/showindex.html', '4', '5', '', NULL, NULL, '曾成龙', NULL);
INSERT INTO `t_menu` VALUES ('65768529a6f411edb9ce0242ac110002', '首页', '1', '0', '/showSYpage.html', '3', '1', '', '曾小白', NULL, '曾小白', NULL);
INSERT INTO `t_menu` VALUES ('8c014bdff1d54e9eb3aca4844fb4f741', '功能日志管理', '1', '0', '/LogController/functionLog.html', '3', '4', '功能日志管理', '798fddc17f2211eb973d6100d940b6cf', '2023-05-17 14:44:09', NULL, NULL);
INSERT INTO `t_menu` VALUES ('9792c39aa6f411edb9ce0242ac110002', '站内信', '1', '0', '/NoticeController/showIndex.html', '3', '11', '', '曾小白', NULL, '曾小白', NULL);
INSERT INTO `t_menu` VALUES ('9f4e519dc92811eba9ff144f8a625b6e', '红寺堡主类图表', '04f5cbbec92711eba9ff144f8a625b6e', '0', '/showMainClassChars.html', '4', '2', '', '曾成龙', NULL, '798fddc17f2211eb973d6100d940b6cf', '2023-05-18 14:51:42');
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
  `create_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
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
  `create_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
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
  `create_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`r_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('62f55eb97f2211eb973d6100d940b6cf', '游客2', '1', NULL, NULL, NULL, '2023-05-18 10:58:30');
INSERT INTO `t_role` VALUES ('64720b5d7f2011eb973d6100d940b6cf', '超级管理员', '最大权限用户', NULL, NULL, NULL, '2023-05-18 10:58:33');
INSERT INTO `t_role` VALUES ('8f5efb837f2011eb973d6100d940b6cf', '游客', '无系统性菜单权限', NULL, NULL, NULL, '2023-05-18 10:58:35');
INSERT INTO `t_role` VALUES ('90861c3fc14111eba9ff144f8a625b6e', '数据管理员', '数据管理员', NULL, NULL, NULL, '2023-05-18 10:58:36');

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
  `sex` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户状态,0:正常 1:注销',
  `create_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1de072b1c35c11ebbd12c85b76b7b678', 'admin', 'lueSGJZetyySpUndWjMBEg==', '8f5efb837f2011eb973d6100d940b6cf', '1', '', '', '0', NULL, NULL, NULL, '2023-05-18 11:02:03');
INSERT INTO `t_user` VALUES ('4b6cce897f2211eb973d6100d940b6cf', '楼猪猪', 'lueSGJZetyySpUndWjMBEg==', '64720b5d7f2011eb973d6100d940b6cf', '0', '', '', '1', NULL, NULL, NULL, '2023-05-18 11:02:38');
INSERT INTO `t_user` VALUES ('798fddc17f2211eb973d6100d940b6cf', '曾小白', 'lueSGJZetyySpUndWjMBEg==', '64720b5d7f2011eb973d6100d940b6cf', '1', '', '', '0', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `rm_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `r_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `m_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`rm_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('6117e865c14011eba9ff144f8a625b6e', '62f55eb97f2211eb973d6100d940b6cf', '0', NULL, NULL, NULL, NULL);
INSERT INTO `t_user_role` VALUES ('6118be77c14011eba9ff144f8a625b6e', '62f55eb97f2211eb973d6100d940b6cf', '5', NULL, NULL, NULL, NULL);
INSERT INTO `t_user_role` VALUES ('61198776c14011eba9ff144f8a625b6e', '62f55eb97f2211eb973d6100d940b6cf', '6', NULL, NULL, NULL, NULL);
INSERT INTO `t_user_role` VALUES ('611a5fc5c14011eba9ff144f8a625b6e', '62f55eb97f2211eb973d6100d940b6cf', '1', NULL, NULL, NULL, NULL);
INSERT INTO `t_user_role` VALUES ('611b9c93c14011eba9ff144f8a625b6e', '62f55eb97f2211eb973d6100d940b6cf', '2ca02705bb0911eb8357144f8a625b6e', NULL, NULL, NULL, NULL);
INSERT INTO `t_user_role` VALUES ('611c9fd3c14011eba9ff144f8a625b6e', '62f55eb97f2211eb973d6100d940b6cf', '4', NULL, NULL, NULL, NULL);
INSERT INTO `t_user_role` VALUES ('8da96f4af54a11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', '0', NULL, NULL, NULL, NULL);
INSERT INTO `t_user_role` VALUES ('8daa43ddf54a11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', '1', NULL, NULL, NULL, NULL);
INSERT INTO `t_user_role` VALUES ('8daaaed4f54a11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', '65768529a6f411edb9ce0242ac110002', NULL, NULL, NULL, NULL);
INSERT INTO `t_user_role` VALUES ('8dab3273f54a11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', '2ca02705bb0911eb8357144f8a625b6e', NULL, NULL, NULL, NULL);
INSERT INTO `t_user_role` VALUES ('8dabbbfff54a11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', '9792c39aa6f411edb9ce0242ac110002', NULL, NULL, NULL, NULL);
INSERT INTO `t_user_role` VALUES ('8dac5410f54a11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', '4', NULL, NULL, NULL, NULL);
INSERT INTO `t_user_role` VALUES ('8dacc603f54a11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', '8c014bdff1d54e9eb3aca4844fb4f741', NULL, NULL, NULL, NULL);
INSERT INTO `t_user_role` VALUES ('8dad4b55f54a11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', 'cb91070fbb0a11eb8357144f8a625b6e', NULL, NULL, NULL, NULL);
INSERT INTO `t_user_role` VALUES ('8dae0ce5f54a11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', '5', NULL, NULL, NULL, NULL);
INSERT INTO `t_user_role` VALUES ('8daedbccf54a11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', '6', NULL, NULL, NULL, NULL);
INSERT INTO `t_user_role` VALUES ('8daf6595f54a11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', '04f5cbbec92711eba9ff144f8a625b6e', NULL, NULL, NULL, NULL);
INSERT INTO `t_user_role` VALUES ('8dafbc9ef54a11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', '0ea6f1cf4152ab9b2078ec6e1b969c29', NULL, NULL, NULL, NULL);
INSERT INTO `t_user_role` VALUES ('8db00e6ef54a11ed9fb16c3c8c19098a', '64720b5d7f2011eb973d6100d940b6cf', '9f4e519dc92811eba9ff144f8a625b6e', NULL, NULL, NULL, NULL);
INSERT INTO `t_user_role` VALUES ('9f2b47f2c14111eba9ff144f8a625b6e', '90861c3fc14111eba9ff144f8a625b6e', '0', NULL, NULL, NULL, NULL);
INSERT INTO `t_user_role` VALUES ('9f2bc5e3c14111eba9ff144f8a625b6e', '90861c3fc14111eba9ff144f8a625b6e', '1', NULL, NULL, NULL, NULL);
INSERT INTO `t_user_role` VALUES ('9f2c402ec14111eba9ff144f8a625b6e', '90861c3fc14111eba9ff144f8a625b6e', '2ca02705bb0911eb8357144f8a625b6e', NULL, NULL, NULL, NULL);
INSERT INTO `t_user_role` VALUES ('effae473c35b11ebbd12c85b76b7b678', '8f5efb837f2011eb973d6100d940b6cf', '0', NULL, NULL, NULL, NULL);
INSERT INTO `t_user_role` VALUES ('f0026058c35b11ebbd12c85b76b7b678', '8f5efb837f2011eb973d6100d940b6cf', '1', NULL, NULL, NULL, NULL);
INSERT INTO `t_user_role` VALUES ('f00a2d8cc35b11ebbd12c85b76b7b678', '8f5efb837f2011eb973d6100d940b6cf', '2ca02705bb0911eb8357144f8a625b6e', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_warehouse
-- ----------------------------
DROP TABLE IF EXISTS `t_warehouse`;
CREATE TABLE `t_warehouse`  (
  `warehouse_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `warehouse_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库名称',
  `warehouseCode` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '仓库号（区分库存）',
  `create_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`warehouse_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_warehouse
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
