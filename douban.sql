/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : localhost:3306
 Source Schema         : douban

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 22/11/2020 19:09:19
*/

SET NAMES utf8mb4;
SET
FOREIGN_KEY_CHECKS = 0;

CREATE
DATABASE IF NOT EXISTS douban;
USE douban;
-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`
(
    `id`   int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`
(
    `id`            int(11) NOT NULL AUTO_INCREMENT,
    `group_id`      int(11) NOT NULL,
    `permission_id` int(11) NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
    INDEX           `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
    CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`
(
    `id`              int(11) NOT NULL AUTO_INCREMENT,
    `name`            varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `content_type_id` int(11) NOT NULL,
    `codename`        varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
    CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission`
VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission`
VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission`
VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission`
VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission`
VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission`
VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission`
VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission`
VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission`
VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission`
VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission`
VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission`
VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission`
VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission`
VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission`
VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission`
VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission`
VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission`
VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission`
VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission`
VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission`
VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission`
VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission`
VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission`
VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission`
VALUES (25, 'Can add 图书', 7, 'add_book');
INSERT INTO `auth_permission`
VALUES (26, 'Can change 图书', 7, 'change_book');
INSERT INTO `auth_permission`
VALUES (27, 'Can delete 图书', 7, 'delete_book');
INSERT INTO `auth_permission`
VALUES (28, 'Can view 图书', 7, 'view_book');
INSERT INTO `auth_permission`
VALUES (29, 'Can add 评论', 8, 'add_comment');
INSERT INTO `auth_permission`
VALUES (30, 'Can change 评论', 8, 'change_comment');
INSERT INTO `auth_permission`
VALUES (31, 'Can delete 评论', 8, 'delete_comment');
INSERT INTO `auth_permission`
VALUES (32, 'Can view 评论', 8, 'view_comment');
INSERT INTO `auth_permission`
VALUES (33, 'Can add 评分信息', 9, 'add_rate');
INSERT INTO `auth_permission`
VALUES (34, 'Can change 评分信息', 9, 'change_rate');
INSERT INTO `auth_permission`
VALUES (35, 'Can delete 评分信息', 9, 'delete_rate');
INSERT INTO `auth_permission`
VALUES (36, 'Can view 评分信息', 9, 'view_rate');
INSERT INTO `auth_permission`
VALUES (37, 'Can add 标签', 10, 'add_tags');
INSERT INTO `auth_permission`
VALUES (38, 'Can change 标签', 10, 'change_tags');
INSERT INTO `auth_permission`
VALUES (39, 'Can delete 标签', 10, 'delete_tags');
INSERT INTO `auth_permission`
VALUES (40, 'Can view 标签', 10, 'view_tags');
INSERT INTO `auth_permission`
VALUES (41, 'Can add 用户', 11, 'add_user');
INSERT INTO `auth_permission`
VALUES (42, 'Can change 用户', 11, 'change_user');
INSERT INTO `auth_permission`
VALUES (43, 'Can delete 用户', 11, 'delete_user');
INSERT INTO `auth_permission`
VALUES (44, 'Can view 用户', 11, 'view_user');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`
(
    `id`           int(11) NOT NULL AUTO_INCREMENT,
    `password`     varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `last_login`   datetime(6) NULL DEFAULT NULL,
    `is_superuser` tinyint(1) NOT NULL,
    `username`     varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `first_name`   varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL,
    `last_name`    varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `email`        varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `is_staff`     tinyint(1) NOT NULL,
    `is_active`    tinyint(1) NOT NULL,
    `date_joined`  datetime(6) NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user`
VALUES (1, 'pbkdf2_sha256$120000$zBs6kWfWoEtS$iqi2pjB0nozfflXTZFLbK3JFRLzEockIMdPaR3kJxKY=',
        '2020-11-03 08:24:17.066309', 1, 'admin', '', '', 'zpc@qq.com', 1, 1, '2020-05-08 00:50:50.667545');

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`
(
    `id`       int(11) NOT NULL AUTO_INCREMENT,
    `user_id`  int(11) NOT NULL,
    `group_id` int(11) NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
    INDEX      `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
    CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`
(
    `id`            int(11) NOT NULL AUTO_INCREMENT,
    `user_id`       int(11) NOT NULL,
    `permission_id` int(11) NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
    INDEX           `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
    CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`
(
    `id`              int(11) NOT NULL AUTO_INCREMENT,
    `action_time`     datetime(6) NOT NULL,
    `object_id`       longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
    `object_repr`     varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `action_flag`     smallint(5) UNSIGNED NOT NULL,
    `change_message`  longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `content_type_id` int(11) NULL DEFAULT NULL,
    `user_id`         int(11) NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    INDEX             `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
    INDEX             `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
    CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log`
VALUES (1, '2020-05-08 00:53:27.307696', '1', '历史', 1, '[{\"added\": {}}]', 10, 1);
INSERT INTO `django_admin_log`
VALUES (2, '2020-05-08 03:32:32.892748', '919', '赛雷三分钟漫画世界史', 2,
        '[{\"changed\": {\"fields\": [\"tags\", \"author\", \"book_publish\", \"book_date\", \"book_price\"]}}]', 7, 1);
INSERT INTO `django_admin_log`
VALUES (3, '2020-07-03 12:52:16.853892', '87', '毛泽东传', 2,
        '[{\"changed\": {\"fields\": [\"tags\", \"author\", \"book_publish\", \"book_date\", \"book_price\"]}}]', 7, 1);

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`
(
    `id`        int(11) NOT NULL AUTO_INCREMENT,
    `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `model`     varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type`
VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type`
VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type`
VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type`
VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type`
VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type`
VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type`
VALUES (7, 'user', 'book');
INSERT INTO `django_content_type`
VALUES (8, 'user', 'comment');
INSERT INTO `django_content_type`
VALUES (9, 'user', 'rate');
INSERT INTO `django_content_type`
VALUES (10, 'user', 'tags');
INSERT INTO `django_content_type`
VALUES (11, 'user', 'user');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`
(
    `id`      int(11) NOT NULL AUTO_INCREMENT,
    `app`     varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `name`    varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `applied` datetime(6) NOT NULL,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations`
VALUES (1, 'contenttypes', '0001_initial', '2020-05-07 02:17:14.834912');
INSERT INTO `django_migrations`
VALUES (2, 'auth', '0001_initial', '2020-05-07 02:17:15.433539');
INSERT INTO `django_migrations`
VALUES (3, 'admin', '0001_initial', '2020-05-07 02:17:15.568455');
INSERT INTO `django_migrations`
VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2020-05-07 02:17:15.581446');
INSERT INTO `django_migrations`
VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2020-05-07 02:17:15.594442');
INSERT INTO `django_migrations`
VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2020-05-07 02:17:15.698374');
INSERT INTO `django_migrations`
VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2020-05-07 02:17:15.776325');
INSERT INTO `django_migrations`
VALUES (8, 'auth', '0003_alter_user_email_max_length', '2020-05-07 02:17:15.822299');
INSERT INTO `django_migrations`
VALUES (9, 'auth', '0004_alter_user_username_opts', '2020-05-07 02:17:15.837289');
INSERT INTO `django_migrations`
VALUES (10, 'auth', '0005_alter_user_last_login_null', '2020-05-07 02:17:15.907245');
INSERT INTO `django_migrations`
VALUES (11, 'auth', '0006_require_contenttypes_0002', '2020-05-07 02:17:15.913242');
INSERT INTO `django_migrations`
VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2020-05-07 02:17:15.928232');
INSERT INTO `django_migrations`
VALUES (13, 'auth', '0008_alter_user_username_max_length', '2020-05-07 02:17:16.001187');
INSERT INTO `django_migrations`
VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2020-05-07 02:17:16.071144');
INSERT INTO `django_migrations`
VALUES (15, 'sessions', '0001_initial', '2020-05-07 02:17:16.114116');
INSERT INTO `django_migrations`
VALUES (16, 'user', '0001_initial', '2020-05-07 02:17:16.704751');
INSERT INTO `django_migrations`
VALUES (17, 'user', '0002_auto_20200507_1053', '2020-05-07 02:53:27.178572');
INSERT INTO `django_migrations`
VALUES (18, 'user', '0002_auto_20200507_1120', '2020-05-07 03:20:42.955758');
INSERT INTO `django_migrations`
VALUES (19, 'user', '0003_auto_20200507_1149', '2020-05-07 03:50:05.393425');
INSERT INTO `django_migrations`
VALUES (20, 'user', '0004_auto_20200508_2053', '2020-05-08 12:53:37.127478');
INSERT INTO `django_migrations`
VALUES (21, 'user', '0005_auto_20201122_1504', '2020-11-22 15:05:07.792434');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`
(
    `session_key`  varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `session_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `expire_date`  datetime(6) NOT NULL,
    PRIMARY KEY (`session_key`) USING BTREE,
    INDEX          `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session`
VALUES ('12czchn3z2bnsl3pmx3wrdkl2wb0mynm',
        'ZmMwMDcyZTEwMTgwYzRhNDNhZDhiNTM3YzRlMDllMTk3ODFiN2ZhMjp7ImxvZ2luX2luIjp0cnVlLCJ1c2VyX2lkIjoxNzksIm5hbWUiOiJ6cGMiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWE4MDM3ZGYxMDNmZWYyMzA4NWQ4NzM5NjY3ZGVlMDEwOTY4MDc1YiIsInNpbXBsZXVpXzIwMjAwNzAzIjp0cnVlfQ==',
        '2020-07-17 12:48:11.255943');
INSERT INTO `django_session`
VALUES ('2hagc46q2q4zj3nbjwuhkd2zxifvhvrs',
        'YjVhOTM4OTgzNTFhNjYyNTA2MmUwODk2MmMxNDhlNjRlMGZmN2JhODp7ImxvZ2luX2luIjp0cnVlLCJ1c2VyX2lkIjoxNzksIm5hbWUiOiJ6cGMiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWE4MDM3ZGYxMDNmZWYyMzA4NWQ4NzM5NjY3ZGVlMDEwOTY4MDc1YiIsInNpbXBsZXVpXzIwMjAwNTA4Ijp0cnVlfQ==',
        '2020-05-22 00:51:17.103731');
INSERT INTO `django_session`
VALUES ('3muzcs73hpd11f2y0e5g839puood7i28',
        'ZjE4OGNhMjNmOGM3YjI2MWY4MzVlN2NlNjNkYTQ5NTliZDZhMWU1NTp7InNlYXJjaCI6Ilx1NzJmY1x1NTZmZVx1ODE3ZSJ9',
        '2020-08-22 10:07:38.856409');
INSERT INTO `django_session`
VALUES ('8qcfsn2jbmdvzenh4h2zbhgjkmz9jcyq',
        'MjJiNzkzYzU0MGI2M2M0YzYzNzc1NGNmY2RmYTg0N2IyOWY3MjUyNDp7ImxvZ2luX2luIjp0cnVlLCJ1c2VyX2lkIjoxNzksIm5hbWUiOiJ6cGMifQ==',
        '2020-06-11 10:05:59.124250');
INSERT INTO `django_session`
VALUES ('allkml8z3uyqekb9i3sf9t4s71pu839g',
        'OGY0M2I1MWEwMDI2YTExYzg4NmNmNDYyYmI4NDcxOWFkMTNmZGZjMDp7ImxvZ2luX2luIjp0cnVlLCJ1c2VyX2lkIjo2NzcsIm5hbWUiOiJcdThjMmRcdTY3YWIifQ==',
        '2020-10-25 13:24:26.644977');
INSERT INTO `django_session`
VALUES ('bac5hl9ny0r8xnflpb96xsikk4lk7ces',
        'YmZjYWIxNDllN2VkMjU1MjlmYWEzODBkM2IxYjU4NzMwOWJkOTcyYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YTgwMzdkZjEwM2ZlZjIzMDg1ZDg3Mzk2NjdkZWUwMTA5NjgwNzViIiwic2ltcGxldWlfMjAyMDA2MDkiOnRydWV9',
        '2020-06-23 08:48:18.925215');
INSERT INTO `django_session`
VALUES ('bnsnwjr0h9rcdvzdw41ec6qmcelt7nks',
        'Y2VkYzY1ZTQ0ZTA0NGE0YTE1NDBmMjgwYzNiNjU0NmZhNzkzMjE0ZDp7ImxvZ2luX2luIjp0cnVlLCJ1c2VyX2lkIjo2NzYsIm5hbWUiOiJjamYifQ==',
        '2020-10-23 11:32:58.738230');
INSERT INTO `django_session`
VALUES ('c91px0d3n62vhmy6s4pb34z2ot8na15i',
        'M2M3NDAyNjhmNzY3MjlkMzE2NWIzNjZhYjIwZmYxM2E0ZTk0MDA2OTp7ImxvZ2luX2luIjp0cnVlLCJ1c2VyX2lkIjo2ODAsIm5hbWUiOiJ3YW4ifQ==',
        '2020-11-03 10:41:46.109530');
INSERT INTO `django_session`
VALUES ('cp2mrfclqwm7whr4ldi0fxne0bbkadiz',
        'NGJhNzk5ZTMzODcwYWY0NzBkMmFlMDY4MzIwNjEwYmZlYTA1NDE0OTp7ImxvZ2luX2luIjp0cnVlLCJ1c2VyX2lkIjo2NzQsIm5hbWUiOiJcdTU5MGZcdTU5MjkifQ==',
        '2020-10-08 06:17:55.968342');
INSERT INTO `django_session`
VALUES ('dp73del15qnjubgg428aakke2fz24dis',
        'MjJiNzkzYzU0MGI2M2M0YzYzNzc1NGNmY2RmYTg0N2IyOWY3MjUyNDp7ImxvZ2luX2luIjp0cnVlLCJ1c2VyX2lkIjoxNzksIm5hbWUiOiJ6cGMifQ==',
        '2020-12-06 16:47:35.748375');
INSERT INTO `django_session`
VALUES ('ecpjy7lwc6550qflbp7c139q1k3eami2',
        'OGMzY2Q5ZDFmODJiNjMwNmE5ZjBlMGE3NGU2OGVhM2NlMWJmNzA4MTp7InNlYXJjaCI6Ilx1NmQzYlx1Nzc0MCJ9',
        '2020-09-17 02:04:23.419719');
INSERT INTO `django_session`
VALUES ('gcka5qe0wuq47suzlowxpvitbzjh6zs2',
        'MjJiNzkzYzU0MGI2M2M0YzYzNzc1NGNmY2RmYTg0N2IyOWY3MjUyNDp7ImxvZ2luX2luIjp0cnVlLCJ1c2VyX2lkIjoxNzksIm5hbWUiOiJ6cGMifQ==',
        '2020-08-04 08:34:43.606243');
INSERT INTO `django_session`
VALUES ('ggdw1w74pi0iar2slxpw0dvidomj2asm',
        'NGE5NjI4NGI4NDg5YTM3NjYyNTM4ZjZjNDc5N2E2OGEwYjVkYWQ2Nzp7ImxvZ2luX2luIjp0cnVlLCJ1c2VyX2lkIjoxNzksIm5hbWUiOiJ6cGMiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiNWE4MDM3ZGYxMDNmZWYyMzA4NWQ4NzM5NjY3ZGVlMDEwOTY4MDc1YiIsInNpbXBsZXVpXzIwMjAwNjE3Ijp0cnVlfQ==',
        '2020-07-01 13:50:12.118483');
INSERT INTO `django_session`
VALUES ('grexpctgw45ombpj71j9b3afo7bp22w5',
        'ZjU4ZjFlZThmYjg1NzY2ZTIwZGE2ODRjNDQyNDcyYzZkYjU0NGQwNzp7ImxvZ2luX2luIjp0cnVlLCJuYW1lIjoienBjIiwidXNlcl9pZCI6MTc5fQ==',
        '2020-08-02 05:37:37.425733');
INSERT INTO `django_session`
VALUES ('hg46yp15e8dga58wuxjuazqc60q0aqr0',
        'M2E5ZTZkYjllN2FhMzE1MzQxZjY5ZmJmNmI3MjNiMDU1MTlmZTJlZjp7ImxvZ2luX2luIjp0cnVlLCJ1c2VyX2lkIjo2NzMsIm5hbWUiOiJcdTY3NGVcdTZkMmFcdTVmM2EifQ==',
        '2020-08-24 08:33:26.201230');
INSERT INTO `django_session`
VALUES ('ihusbszerzouz7lpg4r9przbpffffqf4',
        'MjJiNzkzYzU0MGI2M2M0YzYzNzc1NGNmY2RmYTg0N2IyOWY3MjUyNDp7ImxvZ2luX2luIjp0cnVlLCJ1c2VyX2lkIjoxNzksIm5hbWUiOiJ6cGMifQ==',
        '2020-06-10 08:07:30.257903');
INSERT INTO `django_session`
VALUES ('impedxaij7j03ugwdcvom714qjtulnym',
        'NDZhNzZhZWU3MGEwMTUxOGY1YzhhODY2ZGIwYzgzZjczMjAyOGMyODp7InNlYXJjaCI6IkNSTV9CSl9SRVFfMjAyMDA4MjdfMDAzNCJ9',
        '2020-10-27 07:24:17.517216');
INSERT INTO `django_session`
VALUES ('iyj8myhw0ztpy8efnbvgtyw13mqv1kqh',
        'MjJiNzkzYzU0MGI2M2M0YzYzNzc1NGNmY2RmYTg0N2IyOWY3MjUyNDp7ImxvZ2luX2luIjp0cnVlLCJ1c2VyX2lkIjoxNzksIm5hbWUiOiJ6cGMifQ==',
        '2020-06-17 00:56:16.973716');
INSERT INTO `django_session`
VALUES ('k8wfom69qxte1v8lpq70ezbm24w0drua',
        'ZDUwMTFlN2EwMWE4MDRjNTQ0ZTU2NDljNTVkZGQzZThmZTQ2NjUxMTp7ImxvZ2luX2luIjp0cnVlLCJ1c2VyX2lkIjo2NzYsIm5hbWUiOiJjamYiLCJzZWFyY2giOiJcdTY1ZjZcdTk1ZjQifQ==',
        '2020-10-23 12:18:58.590314');
INSERT INTO `django_session`
VALUES ('k9mg3dkn3heiwannmu5r7111s0yjazzu',
        'M2VkZDIyMGI0MWM4OTQ5NWQ0Y2E2NmZlM2RkOGNhMzRjNGQxZGEyMzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YTgwMzdkZjEwM2ZlZjIzMDg1ZDg3Mzk2NjdkZWUwMTA5NjgwNzViIiwic2ltcGxldWlfMjAyMDA3MDMiOnRydWV9',
        '2020-07-17 12:47:51.904547');
INSERT INTO `django_session`
VALUES ('kx2j7b5ve4n9q6ugq1krwbuu5o50ulbe',
        'YWUxZDI5ZGVlYjVjZjU4YTNjYjljOTk5ZjI5YTJiYTk3ZWViZWMzYjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YTgwMzdkZjEwM2ZlZjIzMDg1ZDg3Mzk2NjdkZWUwMTA5NjgwNzViIiwic2ltcGxldWlfMjAyMDA2MTciOnRydWV9',
        '2020-07-01 13:50:59.310415');
INSERT INTO `django_session`
VALUES ('l5i4luhofd4fy8wlkhy4914fdc0oztjd',
        'ZTFkOGNlNzIyOGIzZDY3YjFmNWNkZmIzNWYzNmE2ZjZlZTllNjM5Njp7ImxvZ2luX2luIjp0cnVlLCJ1c2VyX2lkIjo2NzMsIm5hbWUiOiJcdTY3NGVcdTZkMmFcdTVmM2EiLCJzZWFyY2giOiJcdTgzYWJcdThhMDAifQ==',
        '2020-09-08 12:38:05.628970');
INSERT INTO `django_session`
VALUES ('miynuz1moyhcwfnh95l3vy9nanm66ccn',
        'MjJiNzkzYzU0MGI2M2M0YzYzNzc1NGNmY2RmYTg0N2IyOWY3MjUyNDp7ImxvZ2luX2luIjp0cnVlLCJ1c2VyX2lkIjoxNzksIm5hbWUiOiJ6cGMifQ==',
        '2020-11-17 08:22:43.875694');
INSERT INTO `django_session`
VALUES ('pf857kvprr9ndcyvuswy8jc3i8j3w3fx',
        'NzAwMjIyMmFkZmI2ZDFlMTg1YjFkMjNmNzcyODg0MjJkYjJjNzQwNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1YTgwMzdkZjEwM2ZlZjIzMDg1ZDg3Mzk2NjdkZWUwMTA5NjgwNzViIiwic2ltcGxldWlfMjAyMDA1MDgiOnRydWV9',
        '2020-05-22 12:59:42.333895');
INSERT INTO `django_session`
VALUES ('pp1ieomcb2nq7w0xl1bdak358un687bm',
        'NmZjMjY5NTlkOTQ0MTc5MTYyMjY3OWM5M2EzMTJlMTRhZjk0NzU2ODp7ImxvZ2luX2luIjp0cnVlLCJ1c2VyX2lkIjo2ODYsIm5hbWUiOiJ6cGMifQ==',
        '2020-12-06 15:27:16.252526');
INSERT INTO `django_session`
VALUES ('pweqyjkhhzn4wa8j7gmswbf4rbmcxqls',
        'MjJiNzkzYzU0MGI2M2M0YzYzNzc1NGNmY2RmYTg0N2IyOWY3MjUyNDp7ImxvZ2luX2luIjp0cnVlLCJ1c2VyX2lkIjoxNzksIm5hbWUiOiJ6cGMifQ==',
        '2020-07-31 01:54:39.561415');
INSERT INTO `django_session`
VALUES ('q57izwkney2epohxu27m4h3msfr6hh0x',
        'MjJiNzkzYzU0MGI2M2M0YzYzNzc1NGNmY2RmYTg0N2IyOWY3MjUyNDp7ImxvZ2luX2luIjp0cnVlLCJ1c2VyX2lkIjoxNzksIm5hbWUiOiJ6cGMifQ==',
        '2020-10-26 06:27:20.498180');
INSERT INTO `django_session`
VALUES ('qdxwx0y7ymbbsj6nu89w60035wi0bd8l',
        'MTI5ZWRiMTczMzEwZjI3MTE5NjRlNjkxNTViM2MwYWJiOWEyYjE3NDp7InVzZXJfaWQiOjE3OSwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJzaW1wbGV1aV8yMDIwMTEwMyI6dHJ1ZSwibG9naW5faW4iOnRydWUsIm5hbWUiOiJ6cGMiLCJfYXV0aF91c2VyX2hhc2giOiI1YTgwMzdkZjEwM2ZlZjIzMDg1ZDg3Mzk2NjdkZWUwMTA5NjgwNzViIiwiX2F1dGhfdXNlcl9pZCI6IjEifQ==',
        '2020-11-17 08:24:17.272808');

-- ----------------------------
-- Table structure for user_book
-- ----------------------------
DROP TABLE IF EXISTS `user_book`;
CREATE TABLE `user_book`
(
    `id`           int(11) NOT NULL AUTO_INCREMENT,
    `sump`         int(11) NOT NULL,
    `new_books`    tinyint(1) NOT NULL,
    `title`        varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL,
    `author`       varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `book_star`    varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL,
    `book_pl`      int(11) NOT NULL,
    `book_publish` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL,
    `book_date`    varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL,
    `book_price`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL,
    `intro`        longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `num`          int(11) NOT NULL,
    `pic`          varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL,
    `tags_id`      int(11) NULL DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    INDEX          `user_book_tags_id_e246cf87_fk_user_tags_id`(`tags_id`) USING BTREE,
    CONSTRAINT `user_book_tags_id_e246cf87_fk_user_tags_id` FOREIGN KEY (`tags_id`) REFERENCES `user_tags` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2044 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_book
-- ----------------------------
INSERT INTO `user_book`
VALUES (1, 0, 0, '活着', '余华 ', '9.4', 472508, ' 作家出版社 ', ' 2012-8-1 ', ' 20.00元',
        '《活着(新版)》讲述了农村人福贵悲惨的人生遭遇。福贵本是个阔少爷，可他嗜赌如命，终于赌光了家业，一贫如洗。他的父亲被他活活气死，母亲则在穷困中患了重病，福贵...', 29, 's4913064.jpg', NULL);
INSERT INTO `user_book`
VALUES (2, 0, 0, '明朝那些事儿（1-9）', '当年明月 ', '9.1', 81229, ' 中国海关出版社 ', ' 2009-4 ', ' 358.20元',
        '《明朝那些事儿》讲述从1344年到1644年，明朝三百年间的历史。作品以史料为基础，以年代和具体人物为主线，运用小说的笔法，对明朝十七帝和其他王公权贵和小人...', 7, 's3674537.jpg', NULL);
INSERT INTO `user_book`
VALUES (3, 0, 1, '人类简史', '[以色列] 尤瓦尔·赫拉利 / 林俊宏 ', '9.1', 126296, ' 中信出版社 ', ' 2014-11 ', ' CNY 68.00',
        '十万年前，地球上至少有六种不同的人但今日，世界舞台为什么只剩下了我们自己？从只能啃食虎狼吃剩的残骨的猿人，到跃居食物链顶端的智人，从雪维洞穴壁上的原始...', 20, 's25985021.jpg', NULL);
INSERT INTO `user_book`
VALUES (4, 0, 0, '万历十五年', '[美] 黄仁宇 ', '8.9', 139441, ' 生活·读书·新知三联书店 ', ' 1997-5 ', ' 18.00元',
        '万历十五年，亦即公元1587年，在西欧历史上为西班牙舰队全部出动征英的前一年；而在中国，这平平淡淡的一年中，发生了若干为历史学家所易于忽视的事件。这些事件，...', 24, 's1041482.jpg', NULL);
INSERT INTO `user_book`
VALUES (5, 0, 0, '中国历代政治得失', '钱穆 ', '9.2', 41291, ' 生活·读书·新知三联书店 ', ' 2001 ', ' 12.00元',
        '《中国历代政治得失》为作者的专题演讲合集，分别就中国汉、唐、宋、明、清五代的政府组织、百官职权、考试监察、财经赋税、兵役义务等种种政治制度作了提要勾玄的概观...', 39, 's1003479.jpg', NULL);
INSERT INTO `user_book`
VALUES (6, 0, 0, '三国演义（全二册）', '[明] 罗贯中 ', '9.3', 118017, ' 人民文学出版社 ', ' 1998-05 ', ' 39.50元',
        '《三国演义》又名《三国志演义》、《三国志通俗演义》，是我国小说史上最著名最杰出的长篇章回体历史小说。《三国演义》的作者是元末明初人罗贯中，由毛纶，毛宗岗父...', 15, 's1019568.jpg', NULL);
INSERT INTO `user_book`
VALUES (7, 0, 0, '政治秩序的起源', '[美] 弗朗西斯·福山 / 毛俊杰 ', '8.7', 2569, ' 广西师范大学出版社 ', ' 2014-9 ', ' 88.00元',
        '梁文道、刘瑜、熊培云、许知远联袂主编——“理想国译丛”（MIRROR）系列之一（005）——保持开放性的思想和非功利的眼睛，看看世界的丰富性与复杂性。本书有...', 1, 's25971624.jpg', NULL);
INSERT INTO `user_book`
VALUES (8, 0, 0, '枪炮、病菌与钢铁', '[美] 贾雷德·戴蒙德 / 谢延光 ', '8.7', 30550, ' 上海世纪出版集团 ', ' 2006-4-1 ', ' 45.00元',
        '为什么是欧亚大陆人征服、赶走或大批杀死印第安人、澳大利亚人和非洲人，而不是相反？为什么么小麦和玉米、牛和猪以及现代世界的其他一些“不了起的”作物和牲畜出现在...', 28, 's1813841.jpg', NULL);
INSERT INTO `user_book`
VALUES (9, 0, 0, '有所不为的反叛者', '罗新 ', '8.8', 3344, ' 上海三联书店 ', ' 2019-5 ', ' 52.00',
        '罗新教授近年撰写了许多“与专业反思有关”的学术随笔，反映他对历史、历史学和历史学工作的反思与理解。这些与他走出书斋用自己的脚步丈量历史、发现中国、认识世界异...', 4, 's33111439.jpg', NULL);
INSERT INTO `user_book`
VALUES (10, 0, 0, '明朝那些事儿（壹）', '当年明月 ', '8.7', 181543, ' 中国友谊出版公司 ', ' 2006-9 ', ' 24.80',
        '从朱元璋的出身开始写起，到永乐大帝夺位的靖难之役结束为止。叙述了明朝最艰苦卓绝的开国过程。朱元璋pk陈友谅，谁堪问鼎天下？战太平、太湖大决战。卧榻之侧埋恶虎...', 5, 's1873231.jpg', NULL);
INSERT INTO `user_book`
VALUES (11, 0, 0, '巨人的陨落', '[英] 肯·福莱特 / 于大卫 ', '8.9', 64844, ' 江苏凤凰文艺出版社 ', ' 2016-5-1 ', ' 129.80元',
        '在第一次世界大战的硝烟中，每一个迈向死亡的生命都在热烈地生长——威尔士的矿工少年、刚失恋的美国法律系大学生、穷困潦倒的俄国兄弟、富有英俊的英格兰伯爵，以及痴...', 2, 's26698660.jpg', NULL);
INSERT INTO `user_book`
VALUES (12, 0, 1, '当权的第三帝国', '[英] 理查德·J. 埃文斯 / 哲理庐 ', '9.4', 386, ' 九州出版社 ', ' 2020-2 ', ' 179.00元',
        '和平的纳粹德国是一个怎样的国家？在纳粹党当权之初，没有人认为它会掀起又一场战争浩劫。在短短的六年间，它实行了一系列铁腕政策，镇压政治运动，整顿就业市场，刺激...', 3, 's34925415.jpg', NULL);
INSERT INTO `user_book`
VALUES (13, 0, 0, '被统治的艺术', '[加] 宋怡明 / 钟逸明 ', '8.6', 1160, ' 后浪丨中国华侨出版社 ', ' 2019-12 ', ' 78.00元',
        '知名媒体人高晓松推荐，《明朝那些事儿》作者当年明月作序哈佛大学费正清研究中心主任宋怡明教授全新力作从明清日常政治入手，深入剖析中国文化肌理，透视“阳奉阴...', 0, 's34869500.jpg', NULL);
INSERT INTO `user_book`
VALUES (14, 0, 0, '叫魂', '[美] 孔飞力 / 陈兼、刘昶 ', '9.0', 18474, ' 生活·读书·新知三联书店 上海三联书店 ', ' 2012-5 ', ' 38.00元',
        '《叫魂:1768年中国妖术大恐慌》中在中国的千年帝制时代，清高宗弘历可谓是空前绝后的一人，然而在乾隆盛世达到登峰造极的时候，整个大清的政治与社会生活却被一股...', 0, 's10471333.jpg', NULL);
INSERT INTO `user_book`
VALUES (15, 0, 0, '鸟瞰古文明', '[法] 让-克劳德·戈尔万 / 严可婷 ', '9.2', 1213, ' 后浪丨湖南美术出版社 ', ' 2019-10 ', ' 128.00元',
        '130幅城市复原图，重现古文明全景借由细腻画笔，溯着时间之流，触碰千年前的繁华巨梦以地中海沿岸为中心，横跨九大地域，近百座建筑群跃然眼前它们是古代统治...', 5, 's34617780.jpg', NULL);
INSERT INTO `user_book`
VALUES (16, 0, 0, '全球通史', '(美) 斯塔夫里阿诺斯 / 吴象婴、梁赤民、董书慧、王昶 ', '9.1', 9589, ' 北京大学出版社 ', ' 2012-2-1 ', ' 168.00元',
        '《全球通史》由斯塔夫里阿诺斯著，吴象婴、梁赤民、董书慧、王昶译，作者在本书中采用全新的史学观点和方法，将整个世界看作一个不可分割的有机的统一体，从全球的角度...', 2, 's10583099.jpg', NULL);
INSERT INTO `user_book`
VALUES (17, 0, 0, '邓小平时代', '[美] 傅高义 / 冯克利 ', '9.1', 26646, ' 生活·读书·新知三联书店 ', ' 2013-1 ', ' 88.00元',
        '邓小平深刻影响了中国历史和世界历史的走向，也改变了每一当代中国人的命运。解读邓小平的政治生涯及其行为逻辑，就是解读当代中国，解读个人命运背后的历史变局。哈...', 3, 's20424526.jpg', NULL);
INSERT INTO `user_book`
VALUES (18, 0, 0, '显微镜下的大明', '马伯庸 ', '8.7', 13663, ' 湖南文艺出版社 ', ' 2019-1 ', ' 52.00元',
        '★马伯庸全新历史纪实作品，一本值得收藏的明朝历史书★六件罕为人知的明代档案，六个尘封已久的民生往事★生动的基层治政手册，于细微处读懂真正的古代中国...', 2, 's30414743.jpg', NULL);
INSERT INTO `user_book`
VALUES (19, 0, 0, '夹边沟记事', '杨显惠 ', '9.2', 25866, ' 花城出版社 ', ' 2008-09 ', ' 34.00元',
        '这是一段尘封四十年的历史，当年的幸存者散落在各个角落，没有人问过他们到底发生了什么，当年的死难者早已化为白骨，连他们的后代也不知道埋在何处。幸亏杨显惠这位有...', 4, 's3239549.jpg', NULL);
INSERT INTO `user_book`
VALUES (20, 0, 0, '人类简史', '[以] 尤瓦尔·赫拉利 / 林俊宏 ', '9.1', 17755, ' 中信出版集团 ', ' 2017-2-1 ', ' 68.00元',
        '【内容简介】十万年前，地球上至少有六种不同的人，但今日，世界舞台为什么只剩下我们自己？从只能啃食虎狼吃剩残骨的猿人，到跃居食物链顶端的智人，从雪维洞...', 2, 's26953606.jpg', NULL);
INSERT INTO `user_book`
VALUES (21, 0, 0, '民族的重建', '[美]蒂莫西·斯奈德 / 潘梦琦 ', '8.7', 351, ' 南京大学出版社 ', ' 2020-1 ', ' 68.00元',
        '◎2003年美国历史学会乔治·路易斯·比尔奖、2003年东部书评奖、2004年美国学会乌克兰研究图书奖获奖作品◎知名政治思想史学者塞缪尔·P.亨廷顿，...', 0, 's33446823.jpg', NULL);
INSERT INTO `user_book`
VALUES (22, 0, 0, '历史深处的忧虑', '林达 ', '9.0', 35852, ' 生活·读书·新知三联书店 ', ' 1997-5 ', ' 19.00元',
        '美国的面积和中国差不多。和大多数留学生及新移民一样，当我们一脚踏上这块广袤的陌生土地时，最初落脚点的选择是十分偶然的。我们落在了一个普通的地方，居住的环境平...', 0, 's1027191.jpg', NULL);
INSERT INTO `user_book`
VALUES (23, 0, 0, '白鹿原', '陈忠实 ', '9.2', 40480, ' 人民文学出版社 ', ' 2012-9 ', ' 39.00元',
        '在从清末民初到建国之初的半个世纪里，一阵阵狂风掠过了白鹿原上空，而每一次的变动都震荡着它的内在结构：打乱了再恢复，恢复了再打乱，细腻地反映出白姓和鹿姓两大家...', 0, 's10564071.jpg', NULL);
INSERT INTO `user_book`
VALUES (24, 0, 0, '第三帝国的到来', '[英] 理查德·J. 埃文斯 / 赖丽薇 ', '9.4', 353, ' 九州出版社 ', ' 2020-2 ', ' 145.00元',
        '德国在一战前曾是欧洲最富裕、最强大的经济体，反犹主义在政治中明显处于边缘地位。然而，起初只是一群极端分子和恶棍的纳粹党人，在数年之中就把德国变成了一党独裁的...', 1, 's34928222.jpg', NULL);
INSERT INTO `user_book`
VALUES (25, 0, 0, '1984', '[英] 乔治·奥威尔 / 刘绍铭 ', '9.3', 140652, ' 北京十月文艺出版社 ', ' 2010-4-1 ', ' 28.00',
        '★村上春树以《1Q84》向本书致敬★著名学者刘绍铭经典译本内地首次出版★62种文字风靡110个国家，全球销量超过5000万册★《时代周刊》“最好的10...', 3, 's4820710.jpg', NULL);
INSERT INTO `user_book`
VALUES (26, 0, 0, '你一定爱读的极简欧洲史', '约翰·赫斯特（John Hirst） / 席玉苹 ', '8.2', 43748, ' 广西师范大学出版社 ', ' 2011-11-25 ', ' 25.00元',
        '“欧洲，为什么老是抢第一？”澳大利亚知名历史学家约翰•赫斯特在本书中的一场引人入胜的探索，为我们梳理出欧洲文明所以能改变全世界的各种特质。作者从三大元素：...', 0, 's5366248.jpg', NULL);
INSERT INTO `user_book`
VALUES (27, 0, 0, '天朝的崩溃', '茅海建 ', '9.1', 10269, ' 生活·读书·新知三联书店 ', ' 2005-7 ', ' 32.00元',
        '《天朝的崩溃》是作者系统研究鸦片战争十余年所得的成果。作者详尽考订了与战争相关的一系列重要史实，力图以当时的道德观念、思维方式与行为规范去理解历史，使许多在...', 10, 's1675478.jpg', NULL);
INSERT INTO `user_book`
VALUES (28, 0, 0, '瘟疫与人', '(美) 威廉·麦克尼尔 / 余新忠、毕会成 ', '7.7', 1288, ' 中信出版集团 ', ' 2018-5 ', ' 58.00元',
        '【内容简介】公元前430年—前429年，雅典与斯巴达之战胜负难分，一场来去无踪的瘟疫使得雅典失去近四分之一的士兵，由此深刻改变了地中海世界后来的历史走向。...', 0, 's27116331.jpg', NULL);
INSERT INTO `user_book`
VALUES (29, 0, 0, '万古江河', '许倬云 ', '8.5', 1738, ' 理想国|湖南人民出版社 ', ' 2017-12-1 ', ' 68.00',
        '★与余英时、黄仁宇、杨联陞、何炳棣、张光直比肩的海外华裔史学大家中国通史力作★第三届“文津图书奖”获奖作品★余英时、姚大力、葛兆光、王子今、许纪霖、...', 0, 's27591495.jpg', NULL);
INSERT INTO `user_book`
VALUES (30, 0, 0, '潜规则', '吴思 ', '8.3', 15339, ' 云南人民出版社 ', ' 2001-1 ', ' 16.00元',
        '相同ISBN的还有云南人民出版社出版的《平凡的世界》（第三届茅盾文学奖获奖作品）《纳西东巴古籍译注全集》（第39卷）《林语堂作品集》（著名作家精品文丛系列）...', 0, 's1025723.jpg', NULL);
INSERT INTO `user_book`
VALUES (31, 0, 0, '二手时间', '[白俄] S. A. 阿列克谢耶维奇 / 吕宁思 ', '8.8', 13351, ' 中信出版集团 ', ' 2016-1 ', ' 55.00元',
        '2015年度诺贝尔文学奖得主阿列克谢耶维奇最具分量的作品发表后荣获德国书业和平奖（2013）、法国美第契散文奖（2013）、俄罗斯「大书奖」读者票选最佳文...', 0, 's26704403.jpg', NULL);
INSERT INTO `user_book`
VALUES (32, 0, 0, '半小时漫画中国史（修订版）', '二混子 ', '7.5', 18849, ' 江苏凤凰文艺出版社 ', ' 2017-4-10 ', ' 39.90元',
        '看半小时漫画，通三千年历史，脉络无比清晰，看完就能倒背。仅仅通过手绘和段子，二混子就捋出清晰的历史大脉络：春秋战国像个班级、大秦过把瘾就死、三国就三大战役...', 3, 's27003014.jpg', NULL);
INSERT INTO `user_book`
VALUES (33, 0, 0, '生活与命运', '[俄罗斯] 瓦西里·格罗斯曼 / 力冈 ', '9.4', 377, ' 理想国丨四川人民出版社 ', ' 2020-2 ', ' 149.00元',
        '1960年，瓦西里•格罗斯曼（Васи́лийГро́ссман，1905—1964）完成长篇历史小说《生活与命运》。苏联当局负责意识形态的苏斯洛夫称此书...', 0, 's34928037.jpg', NULL);
INSERT INTO `user_book`
VALUES (34, 0, 0, '汴京之围', '郭建龙 ', '8.3', 4555, ' 天地出版社 ', ' 2019-7 ', ' 78.00元',
        '本书追溯北宋末年靖康之难的完整历史细节，讲述宋、辽、金三方的和与战，聚焦北宋历史大变局的关键时刻，以及帝国由内而外全局性危局大爆发的前因后果。北宋宣和年间，...', 1, 's34433981.jpg', NULL);
INSERT INTO `user_book`
VALUES (35, 0, 1, '君主论', '[意]尼科洛·马基雅维里 / 潘汉典 ', '8.7', 14109, ' 商务印书馆 ', ' 1985-7 ', ' 9.00',
        '从十五世纪下半叶起，以意大利为发源地，欧洲进入了文艺复兴时期。正如恩格斯曾经指出的，这是一次人类从来没有经历过的最伟大的、进步的变化，是一个需要巨人的时代，...', 2, 's1060774.jpg', NULL);
INSERT INTO `user_book`
VALUES (36, 0, 0, '未来简史', '[以色列] 尤瓦尔·赫拉利 / 林俊宏 ', '8.4', 40348, ' 中信出版集团 ', ' 2017-2 ', ' 68.00元',
        '进入21世纪后，曾经长期威胁人类生存、发展的瘟疫、饥荒和战争已经被攻克，智人面临着新的待办议题：永生不老、幸福快乐和成为具有“神性”的人类。在解决这些新问题...', 0, 's26943161.jpg', NULL);
INSERT INTO `user_book`
VALUES (37, 0, 0, '血酬定律', '吴思 ', '8.2', 10675, ' 中国工人出版社 ', ' 2003-08 ', ' 23.80',
        '本书提出了血酬和元规则等概述，这些概念代表了我力所能及的深度。所谓血酬，即流血拼命所得的酬报，体现着生命与生存资源的交换关系。从晚清到民国，吃这碗饭的人比产...', 0, 's1006560.jpg', NULL);
INSERT INTO `user_book`
VALUES (38, 0, 0, '失败者的春秋', '刘勃 ', '9.0', 1312, ' 百花文艺出版社 ', ' 2019-6 ', ' 38.00',
        '本书是刘勃继《战国歧途》后的新作，依然关注古老中国的青春时代。春秋是礼崩乐坏的时代。以周天子为中心的分封制难以为继，新的集权制度亦未建立。春秋是承前启后...', 1, 's34431806.jpg', NULL);
INSERT INTO `user_book`
VALUES (39, 0, 0, '艺术的故事', '[英] 贡布里希 (Sir E.H.Gombrich) / 范景中、杨成凯 ', '9.6', 14197, ' 广西美术出版社 ', ' 2008-04 ', ' 280.00',
        '《艺术的故事》概括地叙述了从最早的洞窟绘画到当今的实验艺术的发展历程，以阐明艺术史是“各种传统不断迂回、不断改变的历史，每一件作品在这历史中都既回顾过去又导...', 1, 's3162991.jpg', NULL);
INSERT INTO `user_book`
VALUES (40, 0, 0, '史记（全十册）', '司马迁、张守节 / （索引）司马贞，（正义）张守节 ', '9.5', 16269, ' 中华书局 ', ' 1982-11 ', ' 125.00',
        '史记是我国第一部通史。在史记之前，有以年代为次的“编年史”如春秋，有以地域为限的“国别史”如国语、战国策，有以文告档卷形式保存下来的“政治史”如尚书，可是没...', 6, 's1077847.jpg', NULL);
INSERT INTO `user_book`
VALUES (41, 0, 0, '简读中国史', '张宏杰 ', '8.4', 2291, ' 岳麓书社 ', ' 2019-8-1 ', ' 58.00元',
        '中华文明从来不是孤立发展的，自它产生的那一刻起，就受到世界其他文明因素的影响。但这些外来因素并未改变中华文明的本质，反而更彰显出了中华文明的独特性。本书将中...', 0, 's34501169.jpg', NULL);
INSERT INTO `user_book`
VALUES (42, 0, 0, '死屋', '[英]丹尼尔·比尔 / 孔俐颖 ', '9.0', 1519, ' 四川文艺出版社 ', ' 2019-6 ', ' 88.00元',
        '俄国流放制度的溯源之作！探寻影响现代俄国民族心灵乃至历史未来的流放之地！☉编辑推荐☆本书作者丹尼尔·比尔运用19世纪的新闻报道、官方报告和俄国小说，为...', 14, 's33400679.jpg', NULL);
INSERT INTO `user_book`
VALUES (43, 0, 0, '东晋门阀政治', '田余庆 ', '9.4', 4144, ' 北京大学出版社 ', ' 2012-5 ', ' 49.00元',
        '本书以丰富的史料和周密的考证分析，对中国中古历史中的门阀政治问题作了再探索，认为中外学者习称的魏晋南北朝门阀政治，实际上只存在于东晋一朝；门阀政治是皇权政治...', 0, 's10758290.jpg', NULL);
INSERT INTO `user_book`
VALUES (44, 0, 0, '亮剑', '都梁 ', '8.9', 18976, ' 解放军文艺出版社 ', ' 2005-3 ', ' 28.00元',
        '李云龙是一个叱咤风云、百战沙场的职业军人，是一个一生都在血与火中搏斗的名将。他的人生信条是：面对强大的对手，明知不敌，也要毅然亮剑，即使倒下，也要成为一座山...', 0, 's1088022.jpg', NULL);
INSERT INTO `user_book`
VALUES (45, 0, 0, '國史大綱（上下）', '錢穆 ', '9.3', 11901, ' 商務印書館 ', ' 2013-8 ', ' 76.00元',
        '這是一部中國通史，因用大學教科書體例寫成，不得不力求簡要，僅舉大納，刪其瑣節。內容於學術思想，政治制度，社會風氣，國際形勢，兼有顧及，惟但求其通為一體，明其...', 0, 's1046492.jpg', NULL);
INSERT INTO `user_book`
VALUES (46, 0, 0, '剧变', '[美] 贾雷德·戴蒙德 / 曾楚媛 ', '8.3', 373, ' 中信出版社 ', ' 2020-4 ', ' 98.00元',
        '《剧变》探讨了一个当前人类社会面临的重大问题：当危机来临时，我们该如何应对？从个人视角而言，危机可以改变一个人的成长轨迹，如处理不当，终其一生会生活在负面情...', 0, 's34984693.jpg', NULL);
INSERT INTO `user_book`
VALUES (47, 0, 1, '人类的群星闪耀时', '[奥] 斯蒂芬·茨威格 / 舒昌善 ', '8.7', 19392, ' 广西师范大学出版社 ', ' 2004-8 ', ' 18.00元',
        '《人类群星闪耀时》由奥地利著名小说家创作。《人类群星闪耀时》内容：涌动着匪徒、探险家、叛乱者兼英雄血液的巴尔沃亚成为第一个看到太平洋的欧洲人；仅仅一秒钟的优...', 0, 's1083762.jpg', NULL);
INSERT INTO `user_book`
VALUES (48, 0, 0, '曾国藩传', '张宏杰 ', '8.6', 4306, ' 民主与建设出版社 ', ' 2018-12 ', ' 68.00元',
        '曾国藩，没有显赫的家世，天赋堪称晚清同时代大人物当中最差，却官至两江总督、直隶总督、武英殿大学士，在复杂的时代变局中超越众人，成就最大，被誉为大清“中兴第一...', 0, 's30377678.jpg', NULL);
INSERT INTO `user_book`
VALUES (49, 0, 0, '毛泽东选集 第一卷', '毛泽东 ', '9.3', 8578, ' 人民出版社 ', ' 1991-6 ', ' 40.00元',
        '《毛泽东选集》(第1卷)包括了毛泽东同志在中国革命各个时期中的重要著作。几年前各地方曾经出过几种不同版本的《毛泽东选集》，都是没有经过著者审查的，体例颇为杂...', 0, 's1139360.jpg', NULL);
INSERT INTO `user_book`
VALUES (50, 0, 0, '人类群星闪耀时', '斯蒂芬·茨威格 / 张伟 ', '8.3', 7034, ' 北京出版社 ', ' 2005-1 ', ' 25.00元',
        '这本茨威格的名著被介绍到中国已经几十年了，我们这次重新翻译、约请历史学者撰写背景资料再重新出版，更多的意义是想透过文字让读者认识到：　　一、茨威格眼中的英...', 0, 's1201620.jpg', NULL);
INSERT INTO `user_book`
VALUES (51, 0, 0, '菊与刀', '（美）鲁思・本尼迪克特 / 吕万和、熊达云、王智新 ', '8.2', 57299, ' 商务印书馆 ', ' 1990-6 ', ' 16.00',
        '“菊”本是日本皇室家徽，“刀”是武士道文化的象征。美国人类学家鲁思・本尼迪克特用《菊与刀》来揭示日本人的矛盾性格亦即日本文化的双重性(如爱美而黩武、尚礼而好...', 1, 's1022238.jpg', NULL);
INSERT INTO `user_book`
VALUES (52, 0, 0, '中央帝国的财政密码', '郭建龙 ', '8.4', 6038, ' 鹭江出版社 ', ' 2017-4 ', ' CNY 68.00',
        '另有新书《中央帝国的军事密码》热卖中。豆瓣链接→https://book.douban.com/subject/33454876/———————————...', 1, 's27007549.jpg', NULL);
INSERT INTO `user_book`
VALUES (53, 0, 0, '万历十五年', '黄仁宇 ', '9.1', 4871, ' 中华书局 ', ' 2014-7 ', ' 59.00元',
        '一部打开中国人视野的经典之作，全新修订，超值珍藏。32年口碑相传，90次印刷，畅销逾130万册！独家附赠《经典的历程》别册，揭秘传奇之旅。【编辑推荐...', 0, 's25893465.jpg', NULL);
INSERT INTO `user_book`
VALUES (54, 0, 0, '乡土中国', '费孝通 ', '9.2', 33951, ' 上海人民出版社 ', ' 2006-4 ', ' 38.00',
        '著名社会学家费孝通教授，一生行行重行行，实地调查和考察总结中国农村经济发展的各种模式，写下了诸多不朽篇章。本书推出的是学界共认的中国乡土社会传统文化和社会结...', 0, 's1795079.jpg', NULL);
INSERT INTO `user_book`
VALUES (55, 0, 1, '人类群星闪耀时', '[奥]斯蒂芬·茨威格 / 姜乙 ', '8.6', 2248, ' 上海文艺出版社 ', ' 2019-7 ', ' 49.00元',
        '当改变命运的时刻降临，犹豫就会败北！《悉达多》译者姜乙三年打磨，重磅推出的全新译作“传记之王”斯蒂芬·茨威格代表作品，德文直译无删节版十四篇历史特写，...', 16, 's34434342.jpg', NULL);
INSERT INTO `user_book`
VALUES (56, 0, 0, '孤城闭', '米兰Lady ', '8.8', 4080, ' 新世界出版社 ', ' 2009-09-11 ', ' 24.80元',
        '这个故事与爱情及艺术相关，但又不局限于此，从内宫到朝野，形形色色的人物曾经各有高远的愿望或雄心，又各自在岁月中蹉跎困顿。所有这一切，都和仁宗朝的政治棋局相关...', 1, 's4041998.jpg', NULL);
INSERT INTO `user_book`
VALUES (57, 0, 0, '浪潮之巅', '吴军 ', '9.0', 25828, ' 电子工业出版社 ', ' 2011-8 ', ' 55.00元',
        '近一百多年来，总有一些公司很幸运地、有意识或无意识地站在技术革命的浪尖之上。在这十几年间，它们代表着科技的浪潮，直到下一波浪潮的来临。从一百年前算起，AT...', 0, 's6709783.jpg', NULL);
INSERT INTO `user_book`
VALUES (58, 0, 0, '陆犯焉识', '严歌苓 ', '8.8', 42773, ' 作家出版社 ', ' 2011-10 ', ' 35.00元',
        '《陆犯焉识》内容简介：陆焉识本是上海大户人家才子+公子型的少爷，聪慧而倜傥，会多国语言，也会讨女人喜欢。父亲去世后，年轻无嗣的继母冯仪芳为了巩固其在家族中的...', 0, 's6880158.jpg', NULL);
INSERT INTO `user_book`
VALUES (59, 0, 0, '五万年中国简史', '姚大力、钱文忠、于赓哲、李山、武黎嵩、仇鹿鸣、吴钩、方志远、马勇著 姜鹏、李静编 ', '8.3', 315, ' 文汇出版社 ', ' 2020-3-15 ', ' 59.9',
        '这是一部时间跨度长达5万年的中国简史，展现了中国从头一批智人踏上中华大地到20世纪的完整历史。本书汇集复旦、南大、社科院等院校的9位史学大家：蒙元史专家姚...', 1, 's34982925.jpg', NULL);
INSERT INTO `user_book`
VALUES (60, 0, 0, '长安十二时辰 上', '马伯庸 ', '8.4', 39485, ' 湖南文艺出版社 ', ' 2017-1-1 ', ' CNY 79.60',
        '唐天宝三年，元月十四日，长安。大唐皇都的居民不知道，上元节辉煌灯火亮起之时，等待他们的，将是场吞噬一切的劫难。突厥、狼卫、绑架、暗杀、烈焰、焚城，毁灭长...', 0, 's26899537.jpg', NULL);
INSERT INTO `user_book`
VALUES (61, 0, 0, '奥斯维辛', '[英] 劳伦斯·里斯 / 刘爽 ', '9.5', 2856, ' 广西师范大学出版社 ', ' 2016-9 ', ' 64.00元',
        '有奥斯维辛，就不能有上帝的存在。——普里莫•莱维无论我在思考什么，总要思考奥斯维辛。感谢那些要求、甚至逼迫我们讲述一切的人，因为他们想听到、想知道发生在奥...', 0, 's26861418.jpg', NULL);
INSERT INTO `user_book`
VALUES (62, 0, 0, '耳语者', '[英] 奥兰多·费吉斯 / 毛俊杰 ', '8.8', 2281, ' 广西师范大学出版社 ', ' 2014-9-1 ', ' 108.00',
        '斯大林时代（1924—1953）既是一个全面控制时代的开端，也是它的高潮时刻。经过改造的苏维埃人，既恐惧政治权力，又对它无比崇拜。他们几乎每个人都成了“耳语...', 0, 's25953571.jpg', NULL);
INSERT INTO `user_book`
VALUES (63, 0, 0, '白鹿原', '陈忠实 ', '8.7', 101919, ' 人民文学出版社 ', ' 1997-12 ', ' 28.00元',
        '这是一部渭河平原五十年变迁的雄奇史诗，一轴中国农村班斓多彩、触目惊心的长幅画卷。主人公六娶六丧，神秘的序曲预示着不祥。一个家族两代子孙，为争夺白鹿原的统治代...', 0, 's1085799.jpg', NULL);
INSERT INTO `user_book`
VALUES (64, 0, 0, '五万年中国简史', '姚大力、钱文忠、于赓哲、李山、武黎嵩、仇鹿鸣、吴钩、方志远、马勇著 姜鹏、李静编 ', '8.4', 335, ' 文汇出版社 ', ' 2020-3-15 ', ' 69.9',
        '这是一部时间跨度长达5万年的中国简史，展现了中国从头一批智人踏上中华大地到20世纪的完整历史。本书汇集复旦、南大、社科院等院校的9位史学大家：蒙元史专家姚...', 3, 's34982927.jpg', NULL);
INSERT INTO `user_book`
VALUES (65, 0, 0, '清明上河图密码6', '冶文彪 ', '9.1', 2381, ' 上海文艺出版社 ', ' 2019-11-11 ', ' 69.9',
        '◆清明系列大结局！千古迷局，终极揭秘！作者冶文彪数易其稿，匠心打磨；内容震撼世人，天翻地覆！◆口碑奇好，国产悬疑推理巅峰之作！百万读者持续追读，系列1...', 0, 's34879050.jpg', NULL);
INSERT INTO `user_book`
VALUES (66, 0, 0, '棉花帝国', '[美]斯文·贝克特 / 徐轶杰、杨燕 ', '8.6', 1722, ' 民主与建设出版社 ', ' 2019-4 ', ' 118.00元',
        '2015年班克罗夫特奖获奖作品，王希、仲伟民、李伯重联袂推荐！以棉花工业联动六大洲的历史描述资本主义全球化的进程，提出“战争资本主义”概念，颠覆“自由资...', 0, 's30411849.jpg', NULL);
INSERT INTO `user_book`
VALUES (67, 0, 1, '今日简史', '[以] 尤瓦尔·赫拉利 / 林俊宏 ', '8.1', 12341, ' 中信出版集团 ', ' 2018-8 ', ' 68',
        '四年前，尤瓦尔•赫拉利的《人类简史》横空出世，颠覆了我们关于人类进化的认知。2016年，他的《未来简史》再度惊艳四座，刷新了我们对未来的想象，掀起了全球关于...', 0, 's30259720.jpg', NULL);
INSERT INTO `user_book`
VALUES (68, 0, 0, '耶路撒冷三千年', '[英]西蒙•蒙蒂菲奥里 / 张倩红、马丹静 ', '7.5', 7726, ' 民主与建设出版社 ', ' 2015-1 ', ' 78.00',
        '你会忍不住爱上这座城市，它是人类的瑰宝。而这本书值得你一读再读。——比尔•克林顿（美国前总统）西蒙•蒙蒂菲奥里扎实的研究功底，栩栩如生的讲述能力，使得无...', 0, 's25886351.jpg', NULL);
INSERT INTO `user_book`
VALUES (69, 0, 0, '日本的世界观', '[美]马里乌斯·詹森 / 柳立言 ', '8.1', 183, ' 上海三联书店 ', ' 2020-2 ', ' 42.00元',
        '《剑桥日本史》主编凝练之作，三个人物串起日本两百年变化★日本如何看待世界，就决定它如何行动——日本在近代以及现代的迅速转身，背后都是对世界的认识发生转变...', 0, 's34937365.jpg', NULL);
INSERT INTO `user_book`
VALUES (70, 0, 0, '论中国', '[美]基辛格 / 胡利平、林华、杨韵琴、朱敬文 ', '8.6', 9869, ' 中信出版社 ', ' 2012-10 ', ' 68.00元',
        '亨利•基辛格唯一一部中国问题专著，完美收官用国际视角、世界眼光，重新解读中国的过去、现在与未来他写到了中国历史的泪点，他触到了中国人民的痛处，他勾勒了...', 0, 's19920715.jpg', NULL);
INSERT INTO `user_book`
VALUES (71, 0, 0, '日本人为何选择了战争', '[日]加藤阳子 / 章霖 ', '8.2', 1774, ' 浙江人民出版社 ', ' 2019-9 ', ' 69.00元',
        '第九届小林秀雄奖获奖作品、日本近现代史研究前沿之作、畅销日本十年的近代史经典。从甲午战争到日俄战争，直到二战战败，日本人缘何一次次走向战争？上至世界顶尖的...', 0, 's34204669.jpg', NULL);
INSERT INTO `user_book`
VALUES (72, 0, 0, '清明上河图密码', '冶文彪 ', '8.2', 13392, ' 北京联合出版公司 ', ' 2015-1-1 ', ' 49.90元',
        '全图824位人物，每个人都有名有姓，佯装、埋伏在舟船车轿、酒肆楼阁中。看似太平盛世，其实杀机四伏。翻开本书，在小贩的叫卖声中，金、辽、西夏、高丽等国的间谍、...', 1, 's26265745.jpg', NULL);
INSERT INTO `user_book`
VALUES (73, 0, 0, '枢纽', '施展 ', '7.6', 2013, ' 广西师范大学出版社 ', ' 2018-1-1 ', ' 99.00',
        '▼内容简介这本书能带你看懂：中国历史演进的逻辑；中国奇迹持续的原因；以及，该如何认知我们的世界角色。在这个关键节点，每个人都在思考未来。我们在思...', 1, 's27602003.jpg', NULL);
INSERT INTO `user_book`
VALUES (74, 0, 0, '娜塔莎之舞', '[英] 奥兰多·费吉斯 / 曾小楚、郭丹杰 ', '9.2', 1693, ' 四川人民出版社 ', ' 2018-3 ', ' 139',
        '★梁文道、刘瑜、熊培云、许知远联袂主编——“理想国译丛”（MIRROR）系列之一（025）——保持开放性的思想和非功利的眼睛，看看世界的丰富性与复杂性。本书...', 0, 's27619602.jpg', NULL);
INSERT INTO `user_book`
VALUES (75, 0, 0, '红岩', '罗广斌、杨益言 ', '7.6', 6929, ' 中国青年出版社 ', ' 2000-07 ', ' 22.00元',
        '小说以解放前夕“重庆中美合作所集中营”敌我斗争为主线，展开了对当时国统区阶级斗争全貌的描写。全书通过三条斗争线索(集中营的狱中斗争、重庆城内的学生运动和地下...', 0, 's1090109.jpg', NULL);
INSERT INTO `user_book`
VALUES (76, 0, 0, '中国通史', '吕思勉 ', '9.2', 1754, ' 群言出版社 ', ' 2016-2-1 ', ' CNY 45.00',
        '这部《中国通史》是抗日战争时期上海成为“孤岛”的时候，吕思勉先生为适应当时大学教学的需要而编写的。全书分为上下两册，上册是中国文化史，借鉴古代史书的典制体，...', 0, 's26771878.jpg', NULL);
INSERT INTO `user_book`
VALUES (77, 0, 0, '中国大历史', '黄仁宇 ', '8.2', 24754, ' 生活·读书·新知三联书店 ', ' 2007-2 ', ' 19.00元',
        '中国历史典籍浩如烟海，常使初学者不得其门而入。作者倡导“大历史”（macro-history），主张利用归纳法将现有史料高度压缩，先构成一个简明而前后连贯的...', 0, 's1015699.jpg', NULL);
INSERT INTO `user_book`
VALUES (78, 0, 0, '巨流河', '齐邦媛 ', '8.7', 24890, ' 生活·读书·新知三联书店 ', ' 2010-10 ', ' 39.00元',
        '巨流河，在清代被称为巨流河；哑口海位于台湾南端，是鹅銮鼻灯塔下的一泓湾流。这本书写的是一个并未远去的时代，关于两代人从巨流河到哑口海的故事。那立志将中国建设...', 0, 's4842446.jpg', NULL);
INSERT INTO `user_book`
VALUES (79, 0, 0, '天朝的崩溃（修订版）', '茅海建 ', '9.4', 3385, ' 生活·读书·新知三联书店 ', ' 2014-10 ', ' 59.00元',
        '本书大量使用中国第一历史档案馆所藏清朝奏折，和英国所藏中英交涉文件、日本学者汇编资料集等等，详尽考订并重建了与战争相关的大量基本史实。作者抓住几个主要人物为...', 0, 's25935941.jpg', NULL);
INSERT INTO `user_book`
VALUES (80, 0, 0, '历史的教训', '[ 美] 威尔·杜兰特、阿里尔·杜兰特 / 倪玉平、张闶 ', '8.3', 3563, ' 四川人民出版社 ', ' 2015-1 ', ' 28.00元',
        '2014年10月13日，中共中央政治局就我国历史上的国家治理进行第十八次集体学习。习近平提出：牢记历史经验、牢记历史教训、牢记历史警示，为推进国家治理体系和...', 1, 's26279878.jpg', NULL);
INSERT INTO `user_book`
VALUES (81, 0, 0, '昨日的世界', '[奥] 斯蒂芬·茨威格 / 舒昌善、孙龙生、刘春华、戴奎生 ', '9.2', 9452, ' 广西师范大学出版社 ', ' 2004-5-1 ', ' 32.00元',
        '作者以饱满真挚的感情、平实顺畅的文宇叙述了他所认识的特定时期的各种人物，他亲身经历的社会政治事件，他对那个动荡不安的时代的感受，记录了当时欧洲从一战前夜到二...', 1, 's1062343.jpg', NULL);
INSERT INTO `user_book`
VALUES (82, 0, 0, '半小时漫画世界史', '陈磊（笔名：二混子） ', '7.5', 13411, ' 江苏凤凰文艺出版社 ', ' 2018-4-4 ', ' 39.90元',
        '看半小时漫画，通五千年历史，脉络无比清晰，看完就能倒背。仅仅通过手绘和段子，二混子就捋出清晰的历史大脉络：简到崩溃的极简欧洲史、美国往事三部曲、一口气...', 0, 's30191803.jpg', NULL);
INSERT INTO `user_book`
VALUES (83, 0, 0, '天龙八部', '金庸 ', '9.1', 100029, ' 生活.读书.新知三联书店 ', ' 1994-5 ', ' 96.0',
        '天龙八部乃金笔下的一部长篇小说，与《射雕》，《神雕》等几部长篇小说一起被称为可读性最高的金庸小说。《天龙》的故事情节曲折，内容丰富，也曾多次被改编为电视作...', 0, 's1255625.jpg', NULL);
INSERT INTO `user_book`
VALUES (84, 0, 0, '丝绸之路', '[英] 彼得·弗兰科潘 / 邵旭东、孙芳 ', '8.3', 6586, ' 浙江大学出版社 ', ' 2016-11 ', ' 128.00元',
        '【内容简介】·两千年来，丝绸之路始终主宰着人类文明的进程。不同种族、不同信仰、不同文化背景的帝王、军队、商人、学者、僧侣、奴隶，往来在这条道路上，创造并...', 0, 's26853835.jpg', NULL);
INSERT INTO `user_book`
VALUES (85, 0, 0, '以色列', '[以]丹尼尔·戈迪斯 / 王戎 译、宋立宏 校译 ', '9.2', 1247, ' 浙江人民出版社 ', ' 2018-9 ', ' 88.00元',
        'v以色列是个小国，但建国以来直吸引着世界的注意，既受到许多人青睐，也常常成为抨击的对象。v为什么国际社会如此关注以色列这样个小国？为什么以色列...', 0, 's30269311.jpg', NULL);
INSERT INTO `user_book`
VALUES (86, 0, 0, '宋仁宗：共治时代', '吴钩 ', '7.7', 114, ' 广西师范大学出版社 ', ' 2020-4 ', ' 108.00',
        '☀内容简介宋仁宗究竟是平庸之主还是后世帝王效仿的对象？这个问题一直存在较大争议。本书以时间为线索，详细讲述了宋仁宗的一生，既包含他作为个体所经历的喜怒哀...', 0, 's34992172.jpg', NULL);
INSERT INTO `user_book`
VALUES (87, 0, 0, '毛泽东传', '[美] 罗斯·特里尔 / 何宇光、刘加英', '8.3', 4988, '中国人民大学出版社', '2010-8', '58.00元',
        '美国著名学者兼记者、作家罗斯特里尔的名著《毛泽东传》，被誉为西方数百种毛泽东传中最受推崇、最畅销的作品之一。自登陆中国以来，已经累积畅销近两百万册，在国内社...', 0, 's5246800.jpg', 1);
INSERT INTO `user_book`
VALUES (88, 0, 0, '从“天下”国家到民族国家', '(日) 王柯 ', '8.2', 161, ' 上海人民出版社 ', ' 2020-3 ', ' 59.00元',
        '《从“天下”国家到民族国家》将中国的多民族统一国家思想的根源追溯到中国人对世界的原初认识，追溯到在这种认识之上的人类与自然之间建立的契约关系，以及为了遵守这...', 1, 's34869664.jpg', NULL);
INSERT INTO `user_book`
VALUES (89, 0, 0, '野蛮大陆', '[英] 基思·罗威 / 黎英亮 ', '9.0', 2386, ' 社会科学文献出版社 ', ' 2015-7 ', ' 72.00元',
        '《星期日泰晤士报》十佳畅销书荣获英国笔会/赫塞尔-提尔曼历史图书奖立足于八种语言的原始档案、访谈记录、学术著作，《野蛮大陆》如同一扇窗户，让我们得以窥见...', 0, 's26354440.jpg', NULL);
INSERT INTO `user_book`
VALUES (90, 0, 0, '旧制度与大革命', '[法] 托克维尔 / 冯棠 ', '8.9', 8631, ' 商务印书馆 ', ' 1992-08 ', ' 12.80元',
        '这部《旧制度与大革命》给我们带来了什么新东西，发了什么前人所未发的新意？托克维尔开宗明义就指出，他从事的是“关于法国革命的研究”，而不是写另一部大革命史。既...', 1, 's1032063.jpg', NULL);
INSERT INTO `user_book`
VALUES (91, 0, 0, '文明的冲突与世界秩序的重建', '[美]亨廷顿 / 周琪 ', '8.7', 5713, ' 新华出版社 ', ' 2010-1-1 ', ' 39.80元',
        '《文明的冲突与世界秩序的重建》作者是国际政治研究领域著名学者，曾任美国哈佛国际和地区问题研究所所长。作者认为，冷战后，世界格局的决定因素表现为七大或八大文明...', 0, 's4202004.jpg', NULL);
INSERT INTO `user_book`
VALUES (92, 0, 0, '大流感', '约翰·M·巴里 / 钟扬等 译 金力 校 ', '8.8', 612, ' 上海科技教育出版社 ', ' 2008-12 ', ' 49.80元',
        '《大流感:历史上最致命瘟疫的史诗》主要内容：大流感指的是1918—1919年横扫世界的那次流感大流行，过去估计全球死亡人数约2000万，最新的权威估计数字为...', 0, 's3435537.jpg', NULL);
INSERT INTO `user_book`
VALUES (93, 0, 0, '历史的终结与最后的人', '[美] 弗朗西斯·福山 / 陈高华 译、孟凡礼 校 ', '8.5', 2114, ' 广西师范大学出版社 ', ' 2014-9 ', ' 78.00元',
        '梁文道、刘瑜、熊培云、许知远联袂主编——“理想国译丛”（MIRROR）系列之一（004）——保持开放性的思想和非功利的眼睛，看看世界的丰富性与复杂性。本书有...', 0, 's25908550.jpg', NULL);
INSERT INTO `user_book`
VALUES (94, 0, 0, '传统的发明', '[英] 埃里克·霍布斯鲍姆、[英] 特伦斯·兰杰 / 顾杭、庞冠群 ', '8.7', 164, ' 译林出版社 ', ' 2020-2 ', ' 75.00元',
        '我对所谓的传统的发明很感兴趣。曲解历史是成为民族国家的一部分。——朱利安•巴恩斯（英国作家）本书为我们提供了一种极为有益的方式来看待过去——我们看到的究...', 0, 's34857216.jpg', NULL);
INSERT INTO `user_book`
VALUES (95, 0, 0, '激荡三十年', '吴晓波 ', '8.9', 3780, ' 中信出版社 ', ' 2017-11 ', ' 116.00元',
        '尽管任何一段历史都有它不可替代的独特性，可是，1978年－2008年的中国，却是不可能重复的。在一个拥有13亿人口的大国里，僵化的计划经济体制日渐瓦解了，一...', 0, 's27599025.jpg', NULL);
INSERT INTO `user_book`
VALUES (96, 0, 0, '光荣与梦想（套装共4册）', '[美]威廉·曼彻斯特（William Manchester） / 四川外国语大学翻译学院翻译组 ', '8.7', 3867, ' 中信出版集团 ',
        ' 2015-3 ', ' 236.00元', '本书从1932年富兰克林•罗斯福总统上台前后一直写到1972年的“水门事件”，勾画了整整40年间的美国历史。细致入微的描写了这一时期美国政治、经济、文化和社...', 0,
        's26314954.jpg', NULL);
INSERT INTO `user_book`
VALUES (97, 0, 0, '魏晋之际的政治权力与家族网络', '仇鹿鸣 ', '9.5', 1688, ' 上海古籍出版社 ', ' 2015-6-1 ', ' 76.00元',
        '对魏晋之际的诸种研究，大体是站在陈寅恪先生相关论述的延长线上加以发展、修正，运用政治集团学说所具有的利弊在这一时段的研究中也有充分的体现。自从1980年代以...', 0, 's26377063.jpg', NULL);
INSERT INTO `user_book`
VALUES (98, 0, 0, '世界的凛冬', '[英] 肯·福莱特 / 陈杰 ', '8.8', 19231, ' 江苏凤凰文艺出版社 ', ' 2017-3-1 ', ' 132.00（全三册）',
        '我亲眼目睹，每一个迈向死亡的生命都在热烈地生长。全球读者平均3个通宵读完的超级小说《巨人的陨落》的续篇！火遍全球的20世纪人类史诗“世纪三部曲”第二部。...', 0, 's26957760.jpg', NULL);
INSERT INTO `user_book`
VALUES (99, 0, 0, '哑舍', '玄色 ', '7.4', 7591, ' 长江出版社 ', ' 2011-4 ', ' 23.80元',
        '热闹与喧嚣的摩登城市，历史在这里无声沉积。那些神话传说中亦真亦假的奇珍异宝，曾一度遗落在历史的长河里。然而，此刻，它们就在这里——名为“哑舍”的古董店。一...', 0, 's6437880.jpg', NULL);
INSERT INTO `user_book`
VALUES (100, 0, 0, '四世同堂', '老舍 ', '9.3', 13967, ' 北京十月文艺出版社 ', ' 2008-07 ', ' 36.00元',
        '值得每一代中国人阅读的文学经典，值得每一个中国人珍藏的民族记忆。老舍：它是我从事写作以来最长的、可能也是最好的一本书。入选《亚洲周刊》“二十世纪中文小说一百...', 0, 's3183775.jpg', NULL);
INSERT INTO `user_book`
VALUES (101, 0, 0, '1453', '[英] 罗杰·克劳利 / 陆大鹏 ', '9.0', 5343, ' 社会科学文献出版社·甲骨文 ', ' 2014-6 ', ' 49.00元',
        '本书是罗杰·克劳利著名的“地中海史诗三部曲”之一。1453君士坦丁堡的战火，两个文明的撞击《今日美国》夏季最佳图书《旧金山纪事报》夏季最佳图书克...', 0, 's25891318.jpg', NULL);
INSERT INTO `user_book`
VALUES (102, 0, 0, '中国历代政治得失', '钱穆 ', '9.3', 6477, ' 九州出版社 ', ' 2012-2-1 ', ' 16.00元',
        '《中国历代政治得失(新校本)》有别于之前几个版本的\"繁体竖版\"，新校本采用了\"简体横版\"，减轻内地读者阅读困难。内容简介：1952年春，钱穆先生应有关方面...', 0, 's10434849.jpg',
        NULL);
INSERT INTO `user_book`
VALUES (103, 0, 0, '明朝那些事儿（贰）', '当年明月 ', '8.9', 52689, ' 中国友谊出版公司 ', ' 2007-1 ', ' 24.80',
        '自永乐夺位的“靖难之役”后开始，先叙述了中国历史上赫赫有名的永乐大帝事迹——挥军北上五征蒙古，派郑和七下西洋，南下讨平安南等等，后来永乐于北伐蒙古归来途中病...', 0, 's1949338.jpg', NULL);
INSERT INTO `user_book`
VALUES (104, 0, 0, '史记', '司马迁 ', '9.5', 4446, ' 中华书局 ', ' 2006-6 ', ' 28.00元',
        '《史记》是我国著名史学家司马迁所著的史学巨著，列“二十四史”之首，记载了从传说中的黄帝开始一直到汉武帝元狩元年（前122）三千年左右的历史，被誉为“史家之绝...', 0, 's1836555.jpg', NULL);
INSERT INTO `user_book`
VALUES (105, 0, 0, '阿拉伯的劳伦斯', '[美] 斯科特·安德森 / 陆大鹏 ', '9.1', 3282, ' 社会科学文献出版社 ', ' 2014-9-1 ', ' 79.00元',
        '1914年第一次世界大战爆发以后，德国的盟友土耳其趁机侵入阿拉伯半岛，而该地区的各个部族处于一盘散沙的状态，无力抵抗土耳其侵略军。英国军方派了“阿拉伯通”陆...', 0, 's25883305.jpg', NULL);
INSERT INTO `user_book`
VALUES (106, 0, 0, '南明史', '顾诚 ', '9.2', 2783, ' 光明日报出版社 ', ' 2011-8-26 ', ' 88.00元',
        '本书特点是基本上以大顺军、大西军余部及郑成功等民众抗清斗争为主线；贯串全书的脉络是强调历时二十年的抗清斗争失败的主要原因是抗清势力内部矛盾重重，严重分散，抵...', 0, 's6533042.jpg', NULL);
INSERT INTO `user_book`
VALUES (107, 0, 0, '生活与命运', '[俄罗斯] 瓦西里·格罗斯曼 / 力冈 ', '9.3', 1660, ' 广西师范大学出版社 ', ' 2015-8-20 ', ' 118.00元',
        '★梁文道“最想为读者推荐的一本书”。《纽约时报》《华盛顿邮报》《华尔街日报》《卫报》《世界报》等全球媒体鼎力推荐，欧美书界誉为“当代的《战争与和平》”，“2...', 0, 's26394018.jpg', NULL);
INSERT INTO `user_book`
VALUES (108, 0, 0, '十二年故人戏', '墨宝非宝 ', '8.5', 3421, ' 江苏凤凰文艺出版社 ', ' 2019-3 ', ' 79.80元',
        '经年一曲故人戏，你我皆是戏中人。初遇的傅三爷，是为捧人包下半个场子，喜欢翘着个二郎腿，偏过头去和身边人低语的公子哥。在那灯影里的侧脸，透着一种消沉的风流。...', 0, 's30473240.jpg', NULL);
INSERT INTO `user_book`
VALUES (109, 0, 0, '红星照耀中国', '[美] 埃德加·斯诺埃 / 董乐山 ', '8.9', 5012, ' 人民文学出版社 ', ' 2016-6 ', ' 43.00元',
        '人文社重推最经典译本，由董乐山家属独家授权附五十余幅珍贵历史照片！《红星照耀中国》（曾译《西行漫记》）自1937年初版以来，畅销至今，而董乐山译本已经是...', 0, 's26820347.jpg', NULL);
INSERT INTO `user_book`
VALUES (110, 0, 0, '大流感', '[美] 约翰·M·巴里 / 钟扬、赵佳媛、刘念 ', '8.7', 271, ' 上海科技教育出版社 ', ' 2018-7-1 ', ' 98.00元',
        '大流感指的是1918—1919年横扫世界的那次流感大流行，过去估计全球死亡人数约2000万，新的估计数字为5000万—1亿。这个数字不仅高于历年来命丧艾滋病...', 0, 's30306429.jpg', NULL);
INSERT INTO `user_book`
VALUES (111, 0, 0, '陈寅恪魏晋南北朝史讲演录', '万绳楠 ', '9.0', 4036, ' 贵州人民出版社 ', ' 2007-4 ', ' 29.80元',
        '本书是当代史学大师陈寅恪先生（1890-1969）有关魏晋南北朝史的讲演录，由万绳楠教授根据笔记整理而成。陈寅属先生研究史学至勤，著作甚富，尤其是其中国中古...', 0, 's2032141.jpg', NULL);
INSERT INTO `user_book`
VALUES (112, 0, 0, '许三观卖血记', '余华 ', '9.0', 43878, ' 作家出版社 ', ' 2012-9 ', ' 24.00元',
        '《许三观卖血记》是余华1995年创作的一部长篇小说。《许三观卖血记》以博大的温情描绘了磨难中的人生，以激烈的故事形式表达了人在面对厄运时求生的欲望。小说讲述...', 1, 's4760224.jpg', NULL);
INSERT INTO `user_book`
VALUES (113, 0, 0, '20世纪思想史', '[英]彼得·沃森 / 张凤、杨阳 ', '9.4', 454, ' 译林出版社 ', ' 2019-10 ', ' 248.00元',
        '★《思想史》作者全面解读20世纪，又一部拒绝简化的思想全史★独树一帜的著史笔法，梳理现代人类境况的观念脉络★20世纪为何如此与众不同，除了战争和政...', 0, 's34449288.jpg', NULL);
INSERT INTO `user_book`
VALUES (114, 0, 0, '与神作战', '[英]蒂姆·惠特马什 / 陈愉秉 ', '9.3', 90, ' 社会科学文献出版社 ', ' 2020-2 ', ' 65.00元',
        '【内容简介】无神论是近代的发明，是欧洲启蒙运动的产物吗？其实，早在启蒙之光把疑神的种子播洒到欧洲这片基督教传统深厚的土地之前，无神论在希腊世界就是公众辩论...', 0, 's34842532.jpg', NULL);
INSERT INTO `user_book`
VALUES (115, 0, 0, '长安十二时辰 下', '马伯庸 ', '7.6', 20326, ' 湖南文艺出版社 ', ' 2017-1-1 ', ' 39.80元',
        '唐天宝三年，元月十四日，长安。大唐皇都的居民不知道，上元节辉煌灯火亮起之时，等待他们的，将是场吞噬一切的劫难。突厥、狼卫、绑架、暗杀、烈焰、焚城，毁灭长安城...', 1, 's26899538.jpg', NULL);
INSERT INTO `user_book`
VALUES (116, 0, 0, '郑天挺西南联大日记', '郑天挺、俞国林点校 ', '9.1', 216, ' 中华书局 ', ' 2018-1 ', ' 156.00元',
        '西南联合大学1938年正式建校，1946年7月31日停办，在抗日战争时期教学、研究不辍，保存了重要的学术资源，培养了大批未来的学术骨干。对这一过程，郑天挺先...', 0, 's27623676.jpg', NULL);
INSERT INTO `user_book`
VALUES (117, 0, 0, '战国歧途', '刘勃 ', '8.8', 1156, ' 百花文艺出版社 ', ' 2019-5-1 ', ' 32',
        '本书所述自韩、赵、魏三家分晋到秦始皇统一六国的战国历史。作者以《史记》《资治通鉴》《战国策》等史籍为底本，并结合新近考古资料，以年代为经，以国别为纬，考察了...', 0, 's33436921.jpg', NULL);
INSERT INTO `user_book`
VALUES (118, 0, 0, '美的历程', '李泽厚 ', '9.2', 15190, ' 生活·读书·新知三联书店 ', ' 2009-1-1 ', ' 43.00元',
        '本书是中国美学的经典之作。凝聚了作者李泽厚先生多年研究，他把中国人古往今来对美的感觉玲珑剔透地展现在大家眼前，如斯感性，如斯亲切。今配以精美的插图，本书就更...', 0, 's3410718.jpg', NULL);
INSERT INTO `user_book`
VALUES (119, 0, 0, '吃', '[英]菲利普·费尔南多-阿梅斯托 / 韩良忆 ', '8.0', 167, ' 中信出版集团 ', ' 2020-3-1 ', ' 68.00',
        '人人都需要食物，大部分人都爱吃食物，可很少有谁敢保证自己了解食物。面对满盘珍馐，有人看到了卡路里，有人看到了营养配比，有人看到了价格，而有人却能看出文化标签...', 0, 's34873198.jpg', NULL);
INSERT INTO `user_book`
VALUES (120, 0, 0, '东京梦华录', '孟元老 ', '9.1', 2184, ' 中州古籍出版社 ', ' 2010-6-1 ', ' 20.00元',
        '《东京梦华录》多记崇宁以后所见，时方以逸豫临下，故若彩山灯火，水殿争标，宝津男女诸戏，走马角射，及天宁节女队归骑，年少争迎，虽事隔前载，犹令人想见其盛。至如...', 0, 's4903692.jpg', NULL);
INSERT INTO `user_book`
VALUES (121, 0, 0, '万历十五年', '(美) 黄仁宇 ', '9.0', 3409, ' 生活·读书·新知三联书店 ', ' 2015-8 ', ' 40.00',
        '明万历十五年，即公元1587年，在中国历史上原本是极其普通的年份。作者以该年前后的史事件及生活在那个时代的人物为中心，抽丝剥茧，梳理了中国传统社会管理层面存...', 0, 's26418524.jpg', NULL);
INSERT INTO `user_book`
VALUES (122, 0, 0, '大征服', '[英] 休·肯尼迪 / 孙宇 ', '9.0', 32, ' 后浪丨民主与建设出版社 ', ' 2020-3 ', ' 96.00元',
        '破译阿拉伯帝国迅速崛起、席卷近中东的历史密码挖掘埋藏在剑与火之下的深层原因全面、客观还原阿拉伯人早期征服活动◎编辑推荐☆本书是专门论述阿拉伯人早...', 0, 's34870279.jpg', NULL);
INSERT INTO `user_book`
VALUES (123, 0, 0, '半小时漫画中国史2', '陈磊（笔名：二混子） ', '7.4', 8504, ' 海南出版社 ', ' 2018-5-31 ', ' 39.90元',
        '看半小时漫画，通五千年历史，用漫画解读历史，引领阅读新潮流（《半小时漫画中国史》是《半小时漫画中国史》系列书的第2部）。仅仅通过手绘和段子，二混子就捋出清...', 0, 's30206117.jpg', NULL);
INSERT INTO `user_book`
VALUES (124, 0, 0, '饥饿的盛世', '张宏杰 ', '8.4', 4881, ' 湖南人民出版社 ', ' 2012-10-1 ', ' 39.80元',
        '乾隆盛世是传统中国的巅峰，GDP占全球三分之一，国库充盈，四海臣服，威加海内，但光鲜的外表却掩盖不了内在的腐烂。中国历史上最缜密、最完善、最牢固的专制统治，...', 0, 's11636077.jpg', NULL);
INSERT INTO `user_book`
VALUES (125, 0, 0, '八月炮火', '[美] 巴巴拉·塔奇曼 / 张岱云等 ', '8.9', 845, ' 上海三联书店 ', ' 2018-8 ', ' 108.00',
        '精彩无比的一战经典之作，普利策奖委员会也为之“绕道”颁奖。作者巴巴拉·塔奇曼被誉为“历史学者中的艺术家”，她的写作，令人沉浸、着迷。是什么让世界踏进这场...', 0, 's30258604.jpg', NULL);
INSERT INTO `user_book`
VALUES (126, 0, 0, '竹不如肉', '张宇凌 ', '8.5', 358, ' 中信出版集团 ', ' 2020-1-1 ', ' 78.00元',
        '从公元前三千多年的古埃及到今天，从希腊、意大利、法国、俄罗斯到中国，在艺术史中穿凿“虫洞”，搭建不同时空的通路。古雅典人民英雄雕塑在工体北门影现，伦敦艺术大...', 0, 's34875240.jpg', NULL);
INSERT INTO `user_book`
VALUES (127, 0, 0, '苏东坡传', '林语堂 / 张振玉 ', '8.4', 17483, ' 陕西师范大学出版社 ', ' 2006-5 ', ' 24.80元',
        '《苏东坡传》是林语堂最得意的作品，中国现代长篇传记开标立范之作。苏东坡是一个无可救药的乐天派、一个伟大的人道主义者、一个百姓的朋友、一个大文豪、大书法家、...', 0, 's1792668.jpg', NULL);
INSERT INTO `user_book`
VALUES (128, 0, 0, '万历十五年', '[美] 黄仁宇 ', '9.0', 19093, ' 中华书局 ', ' 2006-8 ', ' 36.00元',
        '万历十五年，亦即公元1587年，在西欧历史上为西班牙舰队全部出动征英的前一年；而在中国，这平平淡淡的一年中，发生了若干为历史学家所易于忽视的事件。这些事件，...', 0, 's1858410.jpg', NULL);
INSERT INTO `user_book`
VALUES (129, 0, 0, '切尔诺贝利的祭祷', '[白俄] S. A. 阿列克谢耶维奇 / 孙越 ', '9.0', 4203, ' 中信出版集团 ', ' 2018-8 ', ' 58.00元',
        '诺贝尔文学奖得主《二手时间》作者阿列克谢耶维奇代表作切尔诺贝利核灾难幸存者口述实录简体版首度完整出版，作者全新修订，指定译本诺贝尔文学奖颁奖词：她的复...', 1, 's30236335.jpg', NULL);
INSERT INTO `user_book`
VALUES (130, 0, 0, '孤城闭', '米兰Lady ', '8.4', 1746, ' 江苏凤凰文艺出版社 ', ' 2018-5 ', ' 78.00元',
        '仁宗盛治，天下雍熙，海晏河清，四海升平。那一段湮没于尘埃缝隙中的爱情，于故纸堆中散发出沉香——原本也可是风流少年郎，或及第登科，或闲云野鹤，却囿于深宫，...', 0, 's30215869.jpg', NULL);
INSERT INTO `user_book`
VALUES (131, 0, 0, '明朝那些事儿', '当年明月 ', '9.2', 21086, ' 浙江人民出版社 ', ' 2011-12-1 ', ' 208.60',
        '《明朝那些事儿》这篇文主要讲述的是从1344年到1644年这三百年间关于明朝的一些事情，以史料为基础，以年代和具体人物为主线，并加入了小说的笔法，对明朝十七...', 0, 's7163250.jpg', NULL);
INSERT INTO `user_book`
VALUES (132, 0, 0, '台北人', '白先勇 ', '8.9', 33478, ' 广西师范大学出版社 ', ' 2010-10 ', ' 38.00元',
        '作为20世纪中文小说100强的《台北人》，是一部深具复杂性的短篇小说集，由十四个一流的短篇小说构成，串联成一体，则效果遽然增加，不但小说之幅面变广，使我们看...', 0, 's5337248.jpg', NULL);
INSERT INTO `user_book`
VALUES (133, 0, 0, '半小时漫画中国史3', '陈磊 ', '7.5', 6237, ' 海南出版社 ', ' 2018-7 ', ' 39.90元',
        '看半小时漫画，通三千年历史，用漫画解读历史，开启读史新潮流（《半小时漫画中国史3》是《半小时漫画中国史》系列书的第3部）。仅仅通过手绘和段子，陈磊（二混子...', 0, 's30232294.jpg', NULL);
INSERT INTO `user_book`
VALUES (134, 0, 0, '罗马元老院与人民', '[英] 玛丽·比尔德 / 王晨 ', '9.1', 1130, ' 民主与建设出版社 ', ' 2018-11 ', ' 118.00元',
        '《华尔街周刊》2015年最佳图书《经济学人》2015年最佳图书《纽约时报书评》2015年100本好书之一《纽约时报》畅销书《柯克斯评论》2015年最...', 0, 's30284738.jpg', NULL);
INSERT INTO `user_book`
VALUES (135, 0, 0, '明朝那些事儿（肆）', '当年明月 ', '8.8', 39919, ' 中国友谊出版公司 ', ' 2007-9 ', ' 24.80',
        '上接第三部，从嘉靖即位、“议礼之争”开始。嘉靖皇帝借“议礼之争”清除了一批前朝旧臣，总揽大权。此后他的生活日渐腐化，一心想得道成仙，国家大事抛诸脑后，奸相严...', 0, 's2253642.jpg', NULL);
INSERT INTO `user_book`
VALUES (136, 0, 0, '将无同', '胡宝国 ', '9.8', 176, ' 中华书局 ', ' 2020-1 ', ' 66.00元',
        '本书收录作者具有代表性的文章共30篇。前19篇为专题论文，主要关注秦汉魏晋南北朝时期的士人阶层、学术学风、地域文化、选官制度等，史料丰富，考辨细腻，且擅长从...', 0, 's34893711.jpg', NULL);
INSERT INTO `user_book`
VALUES (137, 0, 0, '血夏', '[英] 丹·琼斯 / 陆大鹏、刘晓晖 ', '8.2', 95, ' 社会科学文献出版社 ', ' 2020-2 ', ' 52',
        '继《金雀花王朝》和《空王冠》之后甲骨文X丹·琼斯中世纪作品集之三【内容简介】1381年夏天的农民起义是英格兰历史上最血腥的事件之一。面对英法百年战争造...', 0, 's34834428.jpg', NULL);
INSERT INTO `user_book`
VALUES (138, 0, 0, '潜规则（修订版）', '吴思 ', '8.2', 6476, ' 复旦大学出版社 ', ' 2009-2 ', ' 28.00',
        '这部以历史为解读对象的著作中，作者以亦雅亦俗、亦庄亦谐的写作方式，叙述了历史上值得人们思考的大大小小的无数案例，在生动、有趣地讲述官场故事的同时，作者透过历...', 0, 's3580750.jpg', NULL);
INSERT INTO `user_book`
VALUES (139, 0, 0, '苏联的最后一天', '[爱尔兰] 康纳·奥克莱利 / 沈力 ', '8.3', 1522, ' 广西师范大学出版社 ', ' 2014-9 ', ' 68.00',
        '苏联是在枪林弹雨中建立起来的，却是通过政令解散的。爱尔兰记者奥克莱里是苏联解体的见证者，在本书中，他以1991年12月25日这一天为框架，围绕着戈尔巴乔夫...', 0, 's25758414.jpg', NULL);
INSERT INTO `user_book`
VALUES (140, 0, 0, '明朝那些事儿（叁）', '当年明月 ', '8.9', 43749, ' 中国友谊出版公司 ', ' 2007-4 ', ' 24.80',
        '从明英宗朱祁镇成功复辟的“夺门之变”后写起，叙述了忠奸不分的朱祁镇听信谗言，杀害曾救其于危难之际的大功臣于谦，而这也成为他继“土木堡之变”后在历史上留下的又...', 0, 's2052448.jpg', NULL);
INSERT INTO `user_book`
VALUES (141, 0, 0, '历史的温度', '张玮 / 有2017年10月9印本 ', '7.9', 4012, ' 中信出版社 ', ' 2017-8 ', ' 49.00',
        '历史是万花筒，每个人看到的不同，每个角度看到的也不同。有的人看到了残酷，有的人看到了温情。有的人看到了杀戮，有的人看到了救赎。有的人看见了别人，有的人看见了...', 0, 's27093233.jpg', NULL);
INSERT INTO `user_book`
VALUES (142, 0, 0, '苏东坡传', '林语堂 ', '8.2', 5114, ' 湖南文艺出版社 ', ' 2016-6 ', ' 28.00',
        '本书讲述的苏东坡是一个秉性难改的乐天派，是悲天悯人的道德家，是散文作家，是新派的画家，是伟大的书法家，是酿酒的实验者，是工程师，是假道学的反对派，是瑜伽术的...', 0, 's26847644.jpg', NULL);
INSERT INTO `user_book`
VALUES (143, 0, 0, '枪炮、病菌与钢铁', '[美] 贾雷德·戴蒙德 / 谢延光 ', '8.8', 1730, ' 上海译文出版社 ', ' 2016-7-1 ', ' 55.00元',
        '为什么现代社会中的财富和权力的分配，是以今天这种面貌呈现，而非其他形式？为何越过大洋进行杀戮、征服和灭绝的，不是美洲、非洲的土著，而是欧洲人和亚洲人？各族群...', 0, 's26743265.jpg', NULL);
INSERT INTO `user_book`
VALUES (144, 0, 0, '八次危机', '温铁军 ', '8.9', 1840, ' 东方出版社 ', ' 2013-1-1 ', ' 55.00元',
        '内容简介：\"在人们通常的意识形态中，中国没有发生过经济危机，也不可能发生经济危机，最多只能算是经济波动，而不能算是危机。但作者认为，中国不仅发生过经济危机...', 0, 's20394150.jpg', NULL);
INSERT INTO `user_book`
VALUES (145, 0, 0, '艾希曼在耶路撒冷', '[美] 汉娜·阿伦特 / 安尼 ', '8.6', 2371, ' 译林出版社 ', ' 2017-1 ', ' 59',
        '●汉娜•阿伦特极具争议性的著作，对第二次世界大战中纳粹犹太政策进行全面总结，提出著名的“平庸的恶”概念，引发西方思想界长达五十年的争论●详细记录纳粹战犯庭...', 0, 's26834183.jpg', NULL);
INSERT INTO `user_book`
VALUES (146, 0, 0, '资治通鉴', '司马光 ', '9.5', 2535, ' 中华书局 ', ' 2009-1 ', ' 136.00元',
        '《资治通鉴》是司马光及其助刘攽、刘怒、范祖禹等根据大量的史料编纂而成的一部编年体史书，记载了上起周威烈士二十三年（公元前403年），下讫后周世宗显德六年（公...', 0, 's2029680.jpg', NULL);
INSERT INTO `user_book`
VALUES (147, 0, 0, '中国近代史', '蒋廷黻 ', '9.0', 3516, ' 上海古籍出版社 ', ' 2006-4 ', ' 14.00元',
        '这部书把“中国近代史”界定为“中国近代化的历史”，中国能否近代化以及如何近代化，于是就成为本书论述的主线。本书以恭亲王奕诉及曾国藩、李鸿章等人领导的自强运...', 0, 's1823751.jpg', NULL);
INSERT INTO `user_book`
VALUES (148, 0, 0, '企鹅欧洲史·地狱之行', '[英]伊恩·克肖 / 林华 ', '9.1', 488, ' 中信出版集团·新思文化 ', ' 2018-12 ', ' 89.00元',
        '20世纪初，欧洲歌舞升平。突然，拿破仑战争之后雄踞文明之巅近百年的欧洲落入野蛮的深渊。在文明的讴歌声中开启的20世纪，沦为战争的世纪。从1914年到194...', 0, 's27184989.jpg', NULL);
INSERT INTO `user_book`
VALUES (149, 0, 0, '激荡三十年', '吴晓波 ', '8.6', 9955, ' 中信出版社 ', ' 2008-7-1 ', ' 32.00元',
        '尽管任何一段历史都有它不可替代的独特性，可是，1978年—2008年的中国，却是最不可能重复的，在一个拥有近13亿人口的大国里，僵化的计划经济体制日渐瓦解了...', 0, 's3151575.jpg', NULL);
INSERT INTO `user_book`
VALUES (150, 0, 0, '金雀花王朝', '[英] 丹·琼斯 / 陆大鹏 ', '8.6', 3259, ' 社会科学文献出版社 ', ' 2015-8-1 ', ' 88.00元',
        '金雀花王朝的初代国王从诺曼王朝手里继承的是一个四分五裂、流血漂橹的残破国家，随后却将它发展壮大成为一个帝国，其版图在巅峰时刻从苏格兰一直延伸到耶路撒冷。在这...', 0, 's26276743.jpg', NULL);
INSERT INTO `user_book`
VALUES (151, 0, 0, '广场与高塔', '尼尔·弗格森 Niall Ferguson / 周逵、颜冰璇 ', '7.5', 302, ' 中信出版社 ', ' 2020-1 ', ' 98.00元',
        '21世纪被称为网络时代，但事实上，网络早已存在。从印刷术的诞生到网络社群爆发，在《广场与高塔》这本书中，弗格森通贯古今，以新奇的视角，为我们重铸了一个个有形...', 0, 's34840609.jpg', NULL);
INSERT INTO `user_book`
VALUES (152, 0, 0, '上帝掷骰子吗', '曹天元 ', '9.2', 21417, ' 辽宁教育出版社 ', ' 2006-1 ', ' 32.00元',
        '《上帝掷骰子吗》这本书是关于量子论的故事。量子论是一个极为奇妙的理论：从物理角度来说，它在科学家中间引起了最为激烈的争议和关注；从现实角度来说，它给我们的社...', 0, 's1467022.jpg', NULL);
INSERT INTO `user_book`
VALUES (153, 0, 0, '古拉格：一部历史', '(美)安妮·阿普尔鲍姆 / 戴大洪 ', '9.2', 2223, ' 新星出版社 ', ' 2013-4-1 ', ' 78.00元',
        '在这部受到普遍称赞的权威性的《古拉格:一部历史》著作中，安妮•阿普尔鲍姆第一次对古拉格——一个大批关押了成百上千万政治犯和刑事犯的集中营——进行了完全纪实性...', 0, 's20503529.jpg', NULL);
INSERT INTO `user_book`
VALUES (154, 0, 0, '昨日的世界', '[奥]茨威格 / 徐友敬等 ', '9.5', 1261, ' 上海译文出版社 ', ' 2018-7 ', ' 49.00元',
        '《昨日的世界》是奥地利作家斯特凡•茨威格创作的自传体文学作品,写于1939年至1941年间，是茨威格在临终前被迫流亡的日子里完成的。在茨威格离世以后，于19...', 0, 's27615361.jpg', NULL);
INSERT INTO `user_book`
VALUES (155, 0, 0, '半小时漫画唐诗2', '陈磊、半小时漫画团队 ', '7.6', 1769, ' 江苏文艺出版社 ', ' 2019-9-19 ', ' 49.90元',
        '全网粉丝700万！熟读唐诗三百首背后的故事，准确理解唐诗的原意、深意和诗意。看起来都是笑点，实际上全是考点！翻开本书，了解伟大诗人一生的悲欢离合，感受千古名...', 0, 's34850420.jpg', NULL);
INSERT INTO `user_book`
VALUES (156, 0, 0, '文化苦旅', '余秋雨 ', '8.1', 17071, ' 长江文艺出版社 ', ' 2014-2 ', ' 38.00元',
        '《文化苦旅》一书于1992年首次出版，是余秋雨先生1980年代在海内外讲学和考察途中写下的作品，是他的第一部文化散文集。全书主要包括两部分，一部分为历史、文...', 0, 's19940743.jpg', NULL);
INSERT INTO `user_book`
VALUES (157, 0, 0, '半小时漫画唐诗', '陈磊·半小时漫画团队 ', '7.1', 4519, ' 江苏凤凰文艺 ', ' 2019-5-1 ', ' 49.9',
        '读懂唐诗，从唐诗背后的故事开始。通过手绘漫画和段子，陈磊（笔名：二混子）领衔的半小时漫画团队带我们重新读懂了那些从小背到大的唐诗：李白喊出“安能摧眉折腰事...', 0, 's33441524.jpg', NULL);
INSERT INTO `user_book`
VALUES (158, 0, 0, '我的前半生', '爱新觉罗·溥仪 ', '7.6', 5524, ' 群众出版社 ', ' 2003-04-01 ', ' 29.00',
        '溥仪三度当皇帝，是中国近代特定历史环境的结果，他的人生道路凝聚着近现代社会的变迁，其改造过程则折射出国家进步的曙光。溥仪晚年的愿望，是想写一部《我的后半生》...', 0, 's1191433.jpg', NULL);
INSERT INTO `user_book`
VALUES (159, 0, 0, '奥古斯都', '[美] 约翰·威廉斯 / 郑远涛 ', '9.2', 4079, ' 上海人民出版社 ', ' 2018-5 ', ' 56.00元',
        '◆《斯通纳》作者约翰•威廉斯的扛鼎之作，获美国国家图书奖。不同于《斯通纳》在蒙尘50年后才重回大众视野，《奥古斯都》一面世即获美国国家图书奖，时隔40多...', 0, 's27180479.jpg', NULL);
INSERT INTO `user_book`
VALUES (160, 0, 0, '世界小史', '[英] 恩斯特·贡布里希 / 吴秀杰 ', '8.6', 3028, ' 广西师范大学出版社 ', ' 2016-1 ', ' 48.00',
        '本书由著名艺术史家贡布里希撰写，一经出版便受到热烈欢迎。作者用成熟睿智的文笔，将人类自古至今几千年的历程浓缩在这本小书里，为读者描绘了一幅幅神态鲜明、脉络清...', 0, 's26292964.jpg', NULL);
INSERT INTO `user_book`
VALUES (161, 0, 0, '中国历代政治得失', '钱穆 ', '9.4', 5300, ' 生活·读书·新知三联书店 ', ' 2012-7 ', ' 24.00元',
        '本书为作者的专题演讲合集，分别就中国汉、唐、宋、明、清五代的政治组织、百官职权、考试监察、财经赋税、兵役义务等种种政治制度作了提要钩玄的概观与比照，叙述因革...', 0, 's11229072.jpg', NULL);
INSERT INTO `user_book`
VALUES (162, 0, 0, '1918年之疫', '[英] 凯瑟琳·阿诺德 / 田奥 ', '8.2', 137, ' 上海教育出版社 ', ' 2020-3 ', ' 58.00元',
        '★张文宏教授推荐。★当面目狰狞的瘟疫来袭，没有人能置身事外！★记录100多年前那场席卷全球的大流感中的个人际遇。-------------------...', 0, 's34970321.jpg', NULL);
INSERT INTO `user_book`
VALUES (163, 0, 0, '万历十五年（增订本）', '[美] 黄仁宇 ', '9.1', 19054, ' 中华书局 ', ' 2007-1 ', ' 18.00元',
        '《万历十五年》是一部改变中国人阅读方式的经典，是美籍华裔历史学家黄仁宇的成名之作，也是他的代表作之一。这部作品融会作者数十年人生经验与治学体会于一体，首次以...', 0, 's1981042.jpg', NULL);
INSERT INTO `user_book`
VALUES (164, 0, 0, '传统十论', '秦晖 ', '9.1', 2931, ' 复旦大学出版社 ', ' 2003-10-1 ', ' 18.00元',
        '本书所收的系列文章主要是对传统社会与文化本身的结构性研究。作者不满于过去流行的“租佃神话”和“宗族神话”，主张在社会-经济分析与思想-文化分析的综合与融会中...', 0, 's1076378.jpg', NULL);
INSERT INTO `user_book`
VALUES (165, 0, 0, '维京人的世界', '[英] 菲利普·帕克、Philip Parker / 高万博、李达 ', '8.1', 33, ' 后浪丨民主与建设出版社 ', ' 2020-3 ', ' 96.00元',
        '讲述维京历史的上乘之作集旅行者的眼光、学院派的严谨与说书人的见识于一体全面地展现维京人生活的世界◎编辑推荐本书是介绍维京人历史的普及性作品，用生动...', 1, 's34908427.jpg', NULL);
INSERT INTO `user_book`
VALUES (166, 0, 0, '党员、党权与党争', '王奇生 ', '9.2', 1861, ' 华文出版社 ', ' 2010-12 ', ' 48.00元',
        '《党员、党权与党争:1924—1949年中国国民党的组织形态》中讲述了国民党政权是中国历史上出现的第一个党治政权。它的建立，标志着中国政治形态在漫长的王朝帝...', 0, 's5372471.jpg', NULL);
INSERT INTO `user_book`
VALUES (167, 0, 0, '近代中国社会的新陈代谢', '陈旭麓 ', '9.1', 813, ' 生活·读书·新知三联书店 ', ' 2017-11 ', ' 69.00元',
        '《近代中国社会的新陈代谢》主要论说鸦片战争之后，中国社会开始越出传统运行轨迹而发生的一系列深刻变化。全书共20章，作者以总揽全局的气度和全新的史学视角，多层...', 0, 's30147582.jpg', NULL);
INSERT INTO `user_book`
VALUES (168, 0, 0, '文明的冲突', '塞缪尔·亨廷顿 / 周琪 ', '8.8', 1455, ' 新华出版社 ', ' 2013-1 ', ' 58.00元',
        '《文明的冲突》作者塞缪尔·亨廷顿，国际政治研究领域著名学者，曾任美国哈佛国际和地区问题研究所所长。1993年夏，他在美国《外交》杂志上发表了文章，引起国际学...', 0, 's21325858.jpg', NULL);
INSERT INTO `user_book`
VALUES (169, 0, 0, '余下只有噪音', '(美) 亚历克斯·罗斯 / 郭建英 ', '9.5', 87, ' 广西师范大学出版社 ', ' 2020-3 ', ' 158.00元',
        '关于现代音乐的是非从未消失。在毕加索和波洛克的画作售价过亿的时候，自斯特拉文斯基的《春祭》以降，震撼人心的音乐作品仍在向听众传递不安的涟漪。现代音乐无处不在...', 0, 's34978358.jpg', NULL);
INSERT INTO `user_book`
VALUES (170, 0, 0, '零年：1945', '[荷] 伊恩·布鲁玛 / 倪韬 ', '8.7', 2158, ' 广西师范大学出版社 ', ' 2015-1 ', ' 68.00',
        '《零年》是对作为二战尾声的1945年所发生的事的回顾。一个世界走到了尽头，另一个焕然一新且前途未卜的世界正徐徐拉开大幕。世界各地都在上演政权更迭，无论是亚洲...', 0, 's26298832.jpg', NULL);
INSERT INTO `user_book`
VALUES (171, 0, 0, '被淹没和被拯救的', '[意] 普里莫·莱维 / 杨晨光 / 三辉图书', '9.3', 3410, '上海三联书店 ', ' 2013-3 ', ' 32.00元',
        '本书是意大利最具知识分子良心的天才作家普里莫•莱维的最后作品。莱维以生命完成了对纳粹暴行的见证，他的简明易懂的作品是对生活奇妙的赞颂，证明了人类的精神无法被...', 1, 's20441569.jpg', NULL);
INSERT INTO `user_book`
VALUES (172, 0, 0, '上学记', '何兆武 口述、文靖 撰写 ', '8.9', 12002, ' 生活·读书·新知三联书店 ', ' 2006-8 ', ' 19.80元',
        '何兆武教授的这部口述浓缩了20世纪中国知识分子的心灵史。它叙述的尽管只是1920年代-1940年代末不足30年间他学生时期的陈年往事，却蕴含着一个饱经沧桑的...', 0, 's1859140.jpg', NULL);
INSERT INTO `user_book`
VALUES (173, 0, 0, '南渡北归', '岳南 ', '8.4', 1933, ' 湖南文艺出版社 ', ' 2015-8-1 ', ' CNY 195.00',
        '《南渡北归(增订版)(套装共3册)》分为《南渡》《北归》《离别》三部，是著名作家岳南所著首部全景再现20世纪中国最后一批大师命运变迁的史诗巨著。讲述的是上个...', 0, 's26700745.jpg', NULL);
INSERT INTO `user_book`
VALUES (174, 0, 0, '大国的崩溃', '[美] 沙希利·浦洛基 / 宋虹 ', '8.1', 1940, ' 四川人民出版社 天地出版社 ', ' 2017-5 ', ' 58.00元',
        '1991年苏联的解体无疑是20世纪发生的最重大的事件之一。作者根据最近解密的老布什总统图书馆的绝密档案，包括总统顾问的备忘录和老布什与世界各国领导人的绝密电...', 0, 's27021578.jpg', NULL);
INSERT INTO `user_book`
VALUES (175, 0, 0, '罗马的命运', '[美]凯尔·哈珀 / 李一帆 ', '8.4', 290, ' 后浪丨北京联合出版公司 ', ' 2019-6 ', ' 96.00元',
        '自然科学和人文科学结合的典范《枪炮、病菌与钢铁》版的罗马帝国衰亡史结合了当代最前沿的基因科学、气候研究、疾病研究的技术，为我们重新讲述罗马覆灭背后的故事...', 0, 's34432189.jpg', NULL);
INSERT INTO `user_book`
VALUES (176, 0, 0, '猛犸爷爷', '[德] 迪特·博格 文、[德] 博尔德·莫尔克-塔瑟尔 图 / 李柯薇 ', '9.0', 289, ' 后浪丨湖南美术出版社 ', ' 2020-2 ', ' 80.00元',
        '第一部用家族故事讲述的2万年“特殊世界史”细说人类从追猎猛犸象到使用智能手机的发展历程兼具温情、幽默和文学色彩的“生活哲学历史读本”将个人生活体验、哲...', 0, 's34938986.jpg', NULL);
INSERT INTO `user_book`
VALUES (177, 0, 0, '全球通史(上)', '(美)斯塔夫里阿诺斯 / 吴象婴、梁赤民、董书慧、王昶 ', '9.2', 12937, ' 北京大学出版社 ', ' 2006-1-10 ', ' 42.00',
        '本书分八个部分，四十四个章节，主要讲述了世界历史的进化，世界文明的发展及其对现代社会的影响。作者着眼于全球，侧重于那些有影响的、促进历史发展的历史事件，其中...', 0, 's1922216.jpg', NULL);
INSERT INTO `user_book`
VALUES (178, 0, 0, '筚路维艰', '萧冬连 ', '9.5', 654, ' 社会科学文献出版社 ', ' 2014-10-1 ', ' CNY 45.00',
        '《筚路维艰:中国社会主义路径的五次选择》以简明清晰的文字对当代中国的历史轨迹做了逻辑梳理。作者认为，从执政党的建国方略、发展模式和基本政策角度考察，中国社会...', 0, 's26171466.jpg', NULL);
INSERT INTO `user_book`
VALUES (179, 0, 0, '说中国', '许倬云 ', '8.3', 1454, ' 广西师范大学出版社 ', ' 2015-5 ', ' 48.00元',
        '本书的起因，乃是有一位朋友提出一个问题：“我”究竟是谁？这个问题不是一言两语可以解决的。本书的陈述，从新石器文化开始，结束于帝制皇朝退出历史。这漫长的时距，...', 0, 's26334500.jpg', NULL);
INSERT INTO `user_book`
VALUES (180, 0, 0, '古拉格群岛', '亚历山大.索尔仁尼琴 / 田大畏 钱诚 陈汉章  等 ', '9.4', 383, ' 群众出版社 ', ' 2015-8-19 ', ' CNY 198.00',
        '所谓“古拉格”，即“劳动改造营管理总局”，是苏联劳改制度的象征。从1918年到1956年，那些分散在苏联广袤大地上的各个劳改营像“群岛”一般构成了这个国家的...', 0, 's26603782.jpg', NULL);
INSERT INTO `user_book`
VALUES (181, 0, 0, '圣殿春秋', '[英] 肯·福莱特 / 胡允桓 ', '8.5', 7989, ' 江苏凤凰文艺出版社 ', ' 2018-7 ', ' 188元',
        '◆《巨人的陨落》作者、爱伦坡终身大师奖得主肯·福莱特里程碑式代表作！◆美国、英国、加拿大、保加利亚、巴西、丹麦、荷兰、意大利、法国、德国、匈牙利、挪威、波...', 0, 's30224833.jpg', NULL);
INSERT INTO `user_book`
VALUES (182, 0, 0, '叫魂', '孔飞力 (Philip A.Kuhn) / 陈兼、刘昶 ', '9.2', 2791, ' 生活·读书·新知三联书店 上海三联书店 ', ' 2014-6 ', ' 38.00元',
        '《叫魂:1768年中国妖术大恐慌》讲述的是一个关于“盛世妖术”的故事。在中国的千年帝制时代，乾隆皇帝可谓是空前绝后的一人。他建立并巩固起来的大清帝国达到了权...', 2, 's25912076.jpg', NULL);
INSERT INTO `user_book`
VALUES (183, 0, 0, '伊斯坦布尔三城记', '[英]贝塔尼·休斯 / 黄煜文 ', '8.5', 559, ' 上海三联书店 ', ' 2019-10 ', ' 138.00元',
        '“如果世界是一个国家，伊斯坦布尔必定是它的首都。”一座拥有三个名字的城市，见证拜占庭、奥斯曼两大帝国的兴衰变幻。本书从公元前6000年开始讲起，直到20...', 0, 's34432198.jpg', NULL);
INSERT INTO `user_book`
VALUES (184, 0, 0, '征服与革命中的阿拉伯人', '[英]尤金·罗根 / 廉超群、李海鹏 ', '9.2', 612, ' 浙江人民出版社 ', ' 2019-7-1 ', ' 138.00',
        '·《金融时报》《经济学人》《大西洋月刊》《苏格兰人报》年度好书·破解阿拉伯世界诸多困境的历史成因，讲述五百年来阿拉伯人的希望与失望·《耶路撒冷三千年...', 0, 's33408126.jpg', NULL);
INSERT INTO `user_book`
VALUES (185, 0, 0, '明朝那些事儿（伍）', '当年明月 ', '8.8', 36433, ' 中国友谊出版公司 ', ' 2008-3 ', ' 28.80',
        '第五部的内容包括两大部分。第一部分是内争。写严嵩倒台后徐阶、高拱、张居正三个杰出的政治家各施手段，你方唱罢我登场。三人都是实干家，为中兴朝廷呕心沥血；同样...', 0, 's3009821.jpg', NULL);
INSERT INTO `user_book`
VALUES (186, 0, 0, '荒诞医学史', '莉迪亚•康、内特•彼得森 / 王秀莉、赵一杰 ', '8.0', 2823, ' 江西科学技术出版社 ', ' 2018-9 ', ' 48.00元',
        '通过放血来治愈失血，水银蒸气浴治疗梅毒，用发烫的烙铁烧掉痔疮，“爆菊法”拯救溺水的人，镭辐射水包治百病，吃土让你药到病除……作为一本讲述西方医学史上疾病荒...', 0, 's30311816.jpg', NULL);
INSERT INTO `user_book`
VALUES (187, 0, 0, '带一本书去巴黎', '林达 ', '8.5', 21629, ' 生活·读书·新知三联书店 ', ' 2002-5 ', ' 35.00元',
        '作者在浓厚的法国历史文化氛围中，用大量的历史细节和场景，丰富了对艺术、文化，对历史、社会，以及对“革命”的理解。', 0, 's1001885.jpg', NULL);
INSERT INTO `user_book`
VALUES (188, 0, 0, '撒马尔罕的金桃', '[美] 薛爱华 / 吴玉贵 ', '9.0', 1643, ' 社会科学文献出版社 ', ' 2016-4-20 ', ' 98.00元',
        '本书是薛爱华《撒马尔罕的金桃》最新修订译本，内含24页彩色图片，另保留原书风格20幅黑白题图。本书是西方汉学的一部名著，被视为西方学者研究中国古代社会、古代...', 0, 's26747700.jpg', NULL);
INSERT INTO `user_book`
VALUES (189, 0, 0, '射雕英雄传（全四册）', '金庸 ', '9.0', 62767, ' 生活·读书·新知三联书店 ', ' 1999-04 ', ' 47.00元',
        '《射雕英雄传》是金庸的代表作之一，作于一九五七年到一九五九年，在《香港商报》连载。《射雕》中的人物个性单纯，郭靖诚朴厚重、黄蓉机智狡狯，读者容易印象深刻。这...', 3, 's1044547.jpg', NULL);
INSERT INTO `user_book`
VALUES (190, 0, 0, '奥斯曼帝国六百年', '[英]帕特里克•贝尔福 / 栾力夫 ', '8.7', 1167, ' 中信出版集团·新思文化 ', ' 2018-10 ', ' 128',
        '【内容简介】奥斯曼帝国六百年，是三百年的强盛加上三百年的衰落的故事。它是一个地跨欧亚非的庞大帝国、世界的十字路口，国运兴衰牵动了世界历史的走向。土耳其人...', 0, 's30221537.jpg', NULL);
INSERT INTO `user_book`
VALUES (191, 0, 0, '联合政府与一党训政', '邓野 ', '9.2', 864, ' 社会科学文献出版社 ', ' 2011-11 ', ' 58.00元',
        '1944—1946年间，国共两党关于联合政府与一党训政的争论，是两种对立的国家政体的争论，是争取一个怎么样的抗战结果的争论，因而也是国共两党政治对立全部历史...', 0, 's6895949.jpg', NULL);
INSERT INTO `user_book`
VALUES (192, 0, 0, '水浒传（全二册）', '[明] 施耐庵、罗贯中 ', '8.6', 56188, ' 人民文学出版社 ', ' 1997-1 ', ' 50.60元',
        '《水浒传》是我国第一部以农民起义为题材的长篇章回小说，是我国文学史上一座巍然屹立的丰碑，也是世界文学宝库中一颗光彩夺目的明珠。数百年来，它一直深受我国人民的...', 0, 's1008357.jpg', NULL);
INSERT INTO `user_book`
VALUES (193, 0, 0, '历史研究', '（英）阿诺德・汤因比 / 刘北成 ', '9.1', 1761, ' 上海人民出版社 ', ' 2005-4-1 ', ' 88.00',
        '英国著名史学家阿诺德·汤因比的名著《历史研究》已为读者所熟悉，本书在内容和形式上与已出版的《历史研究》有所不同。它收入了支撑作者论点的大量历史例证，保留了更...', 0, 's1315199.jpg', NULL);
INSERT INTO `user_book`
VALUES (194, 0, 0, '伯罗奔尼撒战争史', '[古希腊]修昔底德 / 谢德风 ', '9.0', 2248, ' 商务印书馆 ', ' 1960 ', ' 40.00元',
        '公元前424-423年的冬季，当伯拉西达袭击安菲玻里城的时候，他正指挥七条雅典战舰驻扎在塔索斯。驻守安菲玻里城的雅典将军攸克利求援于他，他驶往援救；他虽然打...', 0, 's1439441.jpg', NULL);
INSERT INTO `user_book`
VALUES (195, 0, 0, '中国近代史', '[美] 徐中约 / 计秋枫、朱庆葆 ', '8.9', 7157, ' 世界图书出版公司 ', ' 2008-1 ', ' 66.00元',
        '《中国近代史》自1970年面世后五次修订，销售数十万册，为欧美及东南亚等地中国近代史研究的权威著作及最畅销的学术教科书，是一本极具深远影响的经典作品。这部...', 0, 's2376486.jpg', NULL);
INSERT INTO `user_book`
VALUES (196, 0, 0, '秦汉魏晋史探微', '田余庆 ', '9.4', 1358, ' 中华书局 ', ' 2011-6-1 ', ' 38.00元',
        '本书探讨了秦汉魏晋南北朝人身依附关系的发展历程，关于曹操的几个问题，东三郡与蜀魏的历史，孙吴建国的道路，北府兵始末等。', 0, 's6311230.jpg', NULL);
INSERT INTO `user_book`
VALUES (197, 0, 0, '中國近代史（上冊）', '[美] 徐中約 / 計秋楓、朱慶葆 ', '9.4', 6029, ' 香港中文大學出版社 ', ' 2001-8-1 ', ' 港币148元',
        '《中国近代史》（TheRiseofModernChina）自1970年面世后五次修订，销售数十万册，为欧美及东南亚等地中国近代史研究的权威著作及最畅...', 0, 's1476213.jpg', NULL);
INSERT INTO `user_book`
VALUES (198, 0, 0, '往事与随想', '[俄] 赫尔岑 / 项星耀 ', '9.3', 788, ' 四川人民出版社 ', ' 2018-7 ', ' 280.00元',
        '俄国文学的伟大纪念碑在历史激流中把握命运，伸张人的善与自由◎编辑推荐◆赫尔岑是俄国反沙皇专制的伟大斗士，影响了俄国、欧洲乃至世界上一代又一代的思想...', 0, 's27191009.jpg', NULL);
INSERT INTO `user_book`
VALUES (199, 0, 0, '大秦帝国', '孙皓晖 ', '8.7', 12170, ' 河南文艺出版社 ', ' 2008-5-1 ', ' 369.00元',
        '大秦帝国作为时代精神汇集的帝国，集中地体现了那个时代中华民族的强势生存精神。中华民族的整个文明体系其所以能够绵延如大河奔涌，秦帝国时代开创奠定的强势生存传统...', 0, 's3079029.jpg', NULL);
INSERT INTO `user_book`
VALUES (200, 0, 0, '半小时漫画中国史4', '二混子 ', '7.7', 2110, ' 海南出版社 ', ' 2019-9 ', ' 49.90元',
        '看半小时漫画，通五千年历史，用漫画解读历史，开启读史新潮流（《半小时漫画中国史4》是《半小时漫画中国史》系列书的第4部）。仅仅通过手绘和段子，陈磊（笔名：...', 0, 's34833419.jpg', NULL);
INSERT INTO `user_book`
VALUES (201, 0, 0, '想象的共同体', '本尼迪克特·安德森 / 吴叡人 ', '8.8', 4716, ' 上海人民出版社 ', ' 2005-4 ', ' 24.00',
        '民族和民族主义是什么？其本质是什么？它们在历史上是怎样出现的，又经历了怎样的变迁？为何它们能够在今天拥有如此深刻的情感上的正当性？这些都是研究民族和民族主义...', 0, 's1315190.jpg', NULL);
INSERT INTO `user_book`
VALUES (202, 0, 0, '穿越百年中东', '郭建龙 ', '8.5', 2429, ' 中信出版集团 ', ' 2016-1 ', ' CNY 58.00',
        '现代中东问题的起点，是首次世界大战后奥斯曼土耳其帝国的崩溃。在一战前，几乎整个中东地区都在奥斯曼帝国的羽翼之下，随着帝国的崩溃，一系列的阿拉伯国家建立起来。...', 0, 's26700104.jpg', NULL);
INSERT INTO `user_book`
VALUES (203, 0, 0, '巴黎烧了吗?', '拉莱·科林斯、多米尼克·拉皮埃尔 / 董乐山 ', '8.8', 3354, ' 译林出版社 ', ' 2013-3 ', ' 38.00元',
        '“巴黎烧了吗？”这是1944年8月25日，巴黎解放那天，阿道夫·希特勒在东普鲁士“狼穴”的地堡里，向他的总参谋长约德尔上将发出的责问。本书生动而又详细地描...', 0, 's21329239.jpg', NULL);
INSERT INTO `user_book`
VALUES (204, 0, 0, '南京大屠杀', '[美] 张纯如 / 谭春霞、焦国林 ', '9.5', 3614, ' 中信出版社 ', ' 2013-1 ', ' 49.00元',
        '张纯如版《南京大屠杀》，一部令国人流泪的书，所有的中国人都要看的书！★★★★★编辑推荐：中信版《南京大屠杀》的独特价值1.《南京大屠杀：第二次世...', 0, 's20440053.jpg', NULL);
INSERT INTO `user_book`
VALUES (205, 0, 0, '第三帝国的语言', '[德] 维克多·克莱普勒  (Victor Klemperer) / 印芝虹 / 三辉图书', '8.5', 299, '商务印书馆 ', ' 2013-9-1 ',
        ' CNY 52.00', '“言语有如微小剂量的砷，一段时间以后就会发生作用。”犹太人、语文学者克莱普勒在可怖的生存环境中、在德累斯顿的犹太人居所里记下了他的观察——第三帝国时期，语言...', 0,
        's25723401.jpg', NULL);
INSERT INTO `user_book`
VALUES (206, 0, 0, '宫女谈往录', '金易、沈义玲 ', '8.7', 2903, ' 紫禁城出版社 ', ' 1992年7月 ', ' 20.00元',
        '宫内称呼她为荣儿，慈禧呼她“荣”,13岁进宫的她随侍慈禧前后长达8年之久。18岁由慈禧指婚，赐给一个太监，随着时事动荡，她的生活也颠沛流离，愈加凄惨，她极不...', 0, 's1805764.jpg', NULL);
INSERT INTO `user_book`
VALUES (207, 0, 0, '我也有一个梦想', '林达 ', '9.0', 12778, ' 生活·读书·新知三联书店 ', ' 2004-08 ', ' 25.00元',
        '本书通过精彩动人的故事，展示了美国种族问题相关联的，社会意识和法律演进史。介绍了在契约社会里，立法的民众基础，法律对人性的思考，法律的变化与社会理趟的关系等...', 0, 's1014825.jpg', NULL);
INSERT INTO `user_book`
VALUES (208, 0, 0, '激荡三十年（上）', '吴晓波 ', '8.8', 28742, ' 中信出版社 浙江人民出版社 ', ' 2007-1 ', ' 35.00',
        '上卷记载1978-1992年间的企业变革。《激荡三十年》的作者没有用传统的教科书或历史书的方式来写作这部作品，而是站在民间的角度，以真切而激扬的写作手法描...', 0, 's1970428.jpg', NULL);
INSERT INTO `user_book`
VALUES (209, 0, 0, '伟大的博弈', '[美] 约翰·S. 戈登 / 祁斌 ', '8.3', 12088, ' 中信出版社 ', ' 2005-1 ', ' 39.00元',
        '《伟大的博弈》是一部讲述以华尔街为代表的美国资本市场发展历史的著作。这本书以华尔街为主线展示了美国资本市场发展的全过程。它生动地讲述了华尔街从一条普普通通的...', 0, 's1220853.jpg', NULL);
INSERT INTO `user_book`
VALUES (210, 0, 0, '巴比伦', '[英]保罗·克里瓦切克 / 陈沅 ', '8.3', 91, ' 社会科学文献出版社 ', ' 2020-1 ', ' 69',
        '巴比伦不仅奠定了文明的基础，而且撑起了历史的脊梁。从公元前5400年前后新月沃地迎来第一批定居者，到公元前6世纪巴比伦落入波斯人手中，美索不达米亚地区的辉煌...', 0, 's34432453.jpg', NULL);
INSERT INTO `user_book`
VALUES (211, 0, 0, '哲学家们都干了些什么', '林欣浩 ', '8.6', 14198, ' 北京联合出版公司 ', ' 2015-4 ', ' 52.00元',
        '“哲学史写得这么浅白风趣八卦，你让我们哲学系的人还怎么混？！”轰动豆瓣的奇葩之书，连续三年蝉联豆瓣电子阅读榜第一的神作经作者全面修订后，2015年重新问...', 0, 's26390842.jpg', NULL);
INSERT INTO `user_book`
VALUES (212, 0, 0, '命运攸关的抉择', '[英] 伊恩·克肖 / 顾剑 ', '8.9', 705, ' 后浪丨浙江人民出版社 ', ' 2017-7 ', ' 88.00元',
        '六个国家，重现纷乱时局的沙盘推演十个决策，锁定二战终局的隐形硝烟………………※媒体推荐※一个壮举。——《爱尔兰时报》对第二次世界大战转折点充满学...', 0, 's27046300.jpg', NULL);
INSERT INTO `user_book`
VALUES (213, 0, 0, '国史大纲', '钱穆 ', '9.4', 345, ' 商务印书馆 ', ' 2015-12-11 ', ' 230.00',
        '《国史大纲》著于抗日战争时期，钱穆先生当时任北京大学历史系教授，在战火纷飞中随国立西南联合大学辗转大半个中国。在云南昆明，钱穆开始将主要精力放在了中国通史的...', 0, 's26803736.jpg', NULL);
INSERT INTO `user_book`
VALUES (214, 0, 0, '总统是靠不住的', '林达 ', '8.8', 17162, ' 生活·读书·新知三联书店 ', ' 2004-08 ', ' 21.80',
        '本书是《历史深处的忧虑――近距离看美国》的姊妹篇，作者继续以信件的形式，从“美国总统是什么？”这样一个问题开始，用一连串的故事，层层铺排出美国政治法律制度的...', 0, 's1056315.jpg', NULL);
INSERT INTO `user_book`
VALUES (215, 0, 0, '成化十四年', '梦溪石 ', '8.1', 2728, ' 北京联合出版公司 ', ' 2015-11-1 ', ' 74.00元',
        '顺天府推官唐泛初入仕林，便遇上武安侯府的大公子意外身死的案子。原本武安侯要以婢女加害草草结案，唐泛却在尸体上发现了疑点，固执地追查下去，结果牵扯出了武安侯府...', 0, 's26648636.jpg', NULL);
INSERT INTO `user_book`
VALUES (216, 0, 0, '明朝那些事儿（柒）', '当年明月 ', '8.9', 30651, ' 中国海关出版社 ', ' 2009-4 ', ' 29.80元',
        '明朝最后一位皇帝，自来有许多传说。关于崇祯究竟是一个昏庸无能的皇帝，还是一个力图奋起的人，一直众说纷纭。不管怎么说，这是一个残酷的时代，也是一个精彩的时代。...', 0, 's3626924.jpg', NULL);
INSERT INTO `user_book`
VALUES (217, 0, 0, '古代人的日常生活', '讲历史的王老师 ', '7.3', 997, ' 江苏凤凰文艺出版社 ', ' 2019-8-30 ', ' 49.90',
        '在古代上厕所居然是一件危险的事？在上古时代，厕所很简陋，就是露天挖一个大坑，人在坑边上如厕。后来，人们在粪坑上面搭建了小屋，估计是怕露天风大把人吹进粪坑。...', 0, 's34437434.jpg', NULL);
INSERT INTO `user_book`
VALUES (218, 0, 0, '无泪而泣', '[以色列]吉迪恩·格雷夫 / 曾记 ', '8.9', 243, ' 广东人民出版社 ', ' 2019-12 ', ' 69.8',
        '本书首次披露了二战纳粹灭绝营中最为特殊的一批受害者的生活和内心世界。“特别工作队”是在纳粹实施种族灭绝的集中营中被挑选出来、被迫在毒气室和焚尸炉旁工作的犹太...', 0, 's34834133.jpg', NULL);
INSERT INTO `user_book`
VALUES (219, 0, 0, '古拉格之恋', '[英] 奥兰多·费吉斯 / 李广平 ', '8.5', 1323, ' 广西师范大学出版社 ', ' 2016-8 ', ' 64.00元',
        '本书是一个真实的爱情故事，主人公是两位俄国青年，列夫和斯维塔。第二次世界大战把他俩拆散了14年，他们人散心不散，坚守着爱情。列夫在斯大林的劳改营中挣扎求生，...', 0, 's26840828.jpg', NULL);
INSERT INTO `user_book`
VALUES (220, 0, 0, '中央帝国的军事密码', '郭建龙 ', '8.0', 841, ' 鹭江出版社 ', ' 2019-9 ', ' 78.00',
        '以技术化方式，读懂中央帝国两千余年军事战略的演化。读懂了中央帝国的军事密码，就读懂了中国何以过去，何以现在。【内容简介】本书将中国从秦朝到清末的两千多年...', 0, 's33454876.jpg', NULL);
INSERT INTO `user_book`
VALUES (221, 0, 0, '史记的读法', '杨照 ', '8.3', 512, ' 广西师范大学出版社 ', ' 2019-11 ', ' 88.00',
        '★	白岩松、俞敏洪、许宏、梁文道、许知远等人共同推荐的《史记》入门读本★	“看理想”口碑节目完整再现，看司马迁如何精准地捕捉人性的高光时刻★	打破《史记...', 0, 's34781358.jpg',
        NULL);
INSERT INTO `user_book`
VALUES (222, 0, 0, '罗马帝国衰亡史（套装共6册）', '[英] 爱德华·吉本 / 席代岳 ', '9.1', 743, ' 吉林出版集团有限责任公司 ', ' 2011-5 ', ' 268.00元',
        '《罗马帝国衰亡史》以堂皇宏阔的篇幅，叙述了罗马帝国从公元2世纪安东尼时代的赫赫盛极，到l453年君士坦丁熙陷落时黯然谢幕的l300多年的历史风貌。作者在近...', 0, 's6428078.jpg', NULL);
INSERT INTO `user_book`
VALUES (223, 0, 0, '半小时漫画中国史（番外篇）', '陈磊·半小时漫画团队 ', '6.7', 1219, ' 海南出版社 ', ' 2019-11-15 ', ' 39.9',
        '看半小时漫画，传统节日的来历瞬间一清二楚。陈磊（笔名：二混子）领衔的半小时漫画团队，仅通过手绘漫画和段子，就让读者通晓了二十四节气以及九个中国人喜闻乐见的传...', 0, 's34882633.jpg', NULL);
INSERT INTO `user_book`
VALUES (224, 0, 0, '活着回来的男人', '[日] 小熊英二 / 黄耀进 ', '8.4', 1781, ' 广西师范大学出版社 ', ' 2017-1 ', ' 62.00元',
        '《活着回来的男人》是第一部以普通人的视角记述二战前后日本生活史的著作。书中主人公小熊谦二（作者的父亲），出生于1925年，十九岁被征兵送往中国东北，后遭苏...', 0, 's26897187.jpg', NULL);
INSERT INTO `user_book`
VALUES (225, 0, 0, '从大都到上都', '罗新 ', '8.4', 1672, ' 新星出版社 ', ' 2017-11 ', ' 45.00元',
        '生动还原八百年前元朝两都间辇路的真实面貌，一本多角度的历史大散文。一座历史名城大都（今北京）和一颗草原明珠上都（今内蒙古锡林郭勒盟正蓝旗），由这条路相连。...', 0, 's27203505.jpg', NULL);
INSERT INTO `user_book`
VALUES (226, 0, 0, '人类群星闪耀时', '[奥地利] 斯蒂芬·茨威格 / 梁锡江 ', '8.4', 4793, ' 江苏凤凰文艺出版社 ', ' 2019-4-1 ', ' 69',
        '编辑推荐◆14个改变人类命运的天才，14个影响人类文明的瞬间！◆《人类群星闪耀时》从历史上的1000亿人中选出这14个人，展现人类的精神力量有多强大！...', 0, 's33385476.jpg', NULL);
INSERT INTO `user_book`
VALUES (227, 0, 0, '论美国的民主', '[法] 托克维尔 / 董果良 ', '9.2', 6772, ' 商务印书馆 ', ' 1989-1-1 ', ' 60.00',
        '托克维尔(Tocqueville)是法国著名的政论思想家，其代表作《论美国的民主》出版后，立即受到普遍好评，使他名扬海外。这部著作的上卷和下卷，不是写于同...', 0, 's1041385.jpg', NULL);
INSERT INTO `user_book`
VALUES (228, 0, 0, '半小时漫画宋词', '陈磊、半小时漫画团队 ', '7.2', 1327, ' 上海文艺出版社 ', ' 2020-4 ', ' 54.90元',
        '读懂宋词，从宋词背后的故事开始。通过手绘漫画和段子，陈磊（笔名：二混子）领衔的半小时漫画团队带我们重新读懂了那些从小背到大的宋词：大文豪苏轼的“竹杖芒鞋...', 0, 's35009938.jpg', NULL);
INSERT INTO `user_book`
VALUES (229, 0, 0, '轴心时代', '[英国] 凯伦·阿姆斯特朗 / 孙艳燕、白彦兵 ', '8.3', 389, ' 海南出版社 ', ' 2010-5 ', ' 68.00元',
        '《轴心时代:人类伟大宗教传统的开端》：重温轴心时代的精神气质，唤醒当前人类的终极关怀。人类文明的，轴心时代，是指在公元前800年至公元前200年间，在北纬...', 0, 's4733982.jpg', NULL);
INSERT INTO `user_book`
VALUES (230, 0, 0, '三国演义', '罗贯中 ', '9.4', 10672, ' 岳麓书社 ', ' 1986-6-1 ', ' 13.0',
        '滚滚长江东逝水，浪花淘尽英雄。吕布赵云关羽，官渡赤壁街亭，斩华雄空城计长坂坡七擒七纵，一看三叹，三国风云起，几度夕阳红。该剧展现了历史上一个豪强们为攫取最高...', 0, 's1483894.jpg', NULL);
INSERT INTO `user_book`
VALUES (231, 0, 0, '美国种族简史', '[美] 托马斯·索威尔 / 沈宗美 ', '8.4', 8503, ' 中信出版社 ', ' 2011-11 ', ' 35.00元',
        '作者在《美国种族简史》一书中，用大量的史实、数字，深入浅出地讲述了各个种族在美国的奋斗史、文化史，包括爱尔兰人、德国人、意大利人、日本人、犹太人、华人、墨西...', 0, 's6892579.jpg', NULL);
INSERT INTO `user_book`
VALUES (232, 0, 0, '金瓶梅', '笑笑生【著】、董玉振【校】 ', '9.2', 2352, ' 新加坡南洋出版社 ', ' 2009-11-1 ', ' 466',
        '这套《金瓶梅》（上、下册，约1240印刷页）是全球第一部简体、双版本、带200原图（其中30多幅春宫图也全部保留）、不做任何删节处理的版本。是目前海内外各种...', 0, 's1916451.jpg', NULL);
INSERT INTO `user_book`
VALUES (233, 0, 0, '文学回忆录（全2册）', '木心 口述、陈丹青 笔录 ', '9.1', 32932, ' 广西师范大学出版社 ', ' 2013-1-10 ', ' 98.00元',
        '文学是可爱的。生活是好玩的。艺术是要有所牺牲的。八十年代末，木心客居纽约时期，亦自他恢复写作、持续出书以来，纽约地面的大陆和台湾同行在异国谋饭之中，居然促...', 0, 's20440644.jpg', NULL);
INSERT INTO `user_book`
VALUES (234, 0, 0, '宋徽宗', '[美] 伊沛霞 / 韩华 ', '8.0', 1962, ' 广西师范大学出版社 ', ' 2018-8 ', ' 118.00',
        '【本书看点】★以现代史家之眼，还原宋徽宗的真实生命历程——抛开中国传统史学符号化的道德指责，伊沛霞教授以“了解之同情”的现代学术立场与现代政治观点，从宋...', 0, 's30187217.jpg', NULL);
INSERT INTO `user_book`
VALUES (235, 0, 0, '最寒冷的冬天', '[美] 大卫·哈伯斯塔姆 / 王祖宁、刘寅龙 ', '8.4', 879, ' 理想国|台海出版社 ', ' 2017-8-1 ', ' 86.00',
        '朝鲜战争类图书畅销No.1，美国新任国家安全顾问精选阅读沈志华、杨奎松、冯仑、高晓松、梁文道郑重推荐★美国知识界对朝鲜战争最深刻的思考。朝鲜战...', 0, 's27102845.jpg', NULL);
INSERT INTO `user_book`
VALUES (236, 0, 0, '红楼梦', '曹雪芹 ', '9.9', 2385, ' 人民文学出版社 ', ' 2018-1-1 ', ' CNY 260.00',
        '《红楼梦》，中国古代古代四大名著之一，也是中国古代小说的巅峰之作。全书以荣国府的日常生活为中心，以宝玉、黛玉、宝钗的爱情婚姻悲剧及大观园中点滴琐事为主线，以...', 0, 's30137806.jpg', NULL);
INSERT INTO `user_book`
VALUES (237, 0, 0, '明朝那些事儿（陆）', '当年明月 ', '8.8', 30899, ' 中国海关出版社 ', ' 2008-11 ', ' 28.80',
        '主要讲述了晚明由“三大案”引发的党争，魏忠贤兴起及袁崇焕之奋战。自张居正去世后，便无人敢管万历，为争国本、查妖书、打闷棍，他与大臣展开拉锯战，三十年不上朝。...', 0, 's3274113.jpg', NULL);
INSERT INTO `user_book`
VALUES (238, 0, 0, '谜宫·如意琳琅图集', '故宫博物院 ', '9.1', 1801, ' 故宫出版社 ', ' 2018-12 ', ' 168元',
        '乾隆三十一年（1766年），宫中一位已经去世的御用画师，留下了一本名为《如意琳琅图籍》的遗作，书中有诸多难以理解之处，被称为“无用之书”。渐渐地，此书被人遗...', 0, 's30396677.jpg', NULL);
INSERT INTO `user_book`
VALUES (239, 0, 0, '见鬼', '有鬼君 ', '8.6', 230, ' 东方出版社 ', ' 2020-3 ', ' 58.00',
        '本书为有鬼君关于鬼文化的文章精选。作者读中国古代志怪小说，如做拼图游戏，将幽冥世界的不同元素，视作民族志的材料，整理、分类，拼接出一幅鬼世界的整体图景，并试...', 0, 's34879052.jpg', NULL);
INSERT INTO `user_book`
VALUES (240, 0, 0, '曾国藩的正面与侧面', '张宏杰 ', '8.3', 4333, ' 国际文化出版公司 ', ' 2011-2 ', ' 39.80元',
        '作为一本研究曾国藩的专著，《曾国藩的正面与侧面》不仅讲述了曾国藩跌宕起伏的一生，同时也揭露了曾国藩诸多不为人知的方面：一生遭遇过的五次重大挫折；与左宗棠的纠...', 0, 's5922204.jpg', NULL);
INSERT INTO `user_book`
VALUES (241, 0, 0, '罗马人的故事1', '盐野七生 / 计丽屏 ', '8.8', 5470, ' 中信出版社 ', ' 2011-12 ', ' 36.00元',
        '罗马人，智力不如希腊人，体力不如高卢人，技术不如埃特鲁利亚人，经济不如迦太基人，但为何却能一一打败对手，建立并维持庞大的罗马帝国？《罗马不是一天建成的》作...', 0, 's7055441.jpg', NULL);
INSERT INTO `user_book`
VALUES (242, 0, 0, '讲谈社·兴亡的世界史', '森谷公俊等 / 徐磊等 ', '8.6', 90, ' 理想国丨北京日报出版社 ', ' 2020-1 ', ' 780.00',
        '这套聚焦于兴亡的世界史，由日本一流的历史学者撰写，在“世界”和“历史”两个方面刷新着我们的认知。这里有教科书中不会记载的世界和时代，也能看到非历史学家眼中的...', 0, 's34869428.jpg', NULL);
INSERT INTO `user_book`
VALUES (243, 0, 0, '中国现代国家的起源', '[美] 孔飞力 / 陈兼、陈之宏 ', '8.7', 2708, ' 生活·读书·新知三联书店 ', ' 2013-10 ', ' 35.00元',
        '孔飞力以政治参与、政治竞争、政治控制为主轴，将中国现代国家形成与发展的“根本性议程”归结为三组相互关联的问题或矛盾：政治参与的扩展与国家权力加强之间的矛盾（...', 0, 's25750468.jpg', NULL);
INSERT INTO `user_book`
VALUES (244, 0, 0, '拥抱战败', '[美] 约翰·W·道尔 / 胡博 ', '9.1', 898, ' 生活·读书·新知三联书店 ', ' 2015-8 ', ' 70.00元',
        '本书是作者对第二次世界大战后结束后的日本的杰出研究。书中大量引用日文材料，并有数十幅精心挑选的档案照片。它是关于长达六年之久的美国对日占领最完整、最重要的历...', 0, 's26418529.jpg', NULL);
INSERT INTO `user_book`
VALUES (245, 0, 0, '毛泽东、斯大林与朝鲜战争', '沈志华 ', '8.8', 1767, ' 广东人民出版社 ', ' 2013-2 ', ' 58.00元',
        '《毛泽东、斯大林与朝鲜战争（珍藏本）》第一章讲述战后苏联的对外政策及其变化，重点在斯大林的对华政策和对朝政策，说明在保障苏联的远东战略利益的条件下，斯大林希...', 0, 's1009529.jpg', NULL);
INSERT INTO `user_book`
VALUES (246, 0, 0, '危机与重构', '李碧妍 ', '9.1', 1231, ' 北京师范大学出版社 ', ' 2015-8-30 ', ' 79.80元',
        '聂隐娘身处的时代与周遭具体如何？诸侯割据怎样促成了大唐帝国的重建并走向了自身的终结？作者于盘根错节之中抽丝剥笋，给人以读推理小说的奇妙感“安史之乱”无...', 0, 's26603137.jpg', NULL);
INSERT INTO `user_book`
VALUES (247, 0, 0, '写给大家的西方美术史', '蒋勋 ', '8.1', 8606, ' 湖南美术出版社 ', ' 2015-7-1 ', ' CNY 68.00',
        '以时间为纬线，以各个艺术流派的艺术家及其代表性的作品为经线，回到历史现场，从史前时期的一把燧石手斧开始，围绕地中海这一世界西方美术的血脉初源，带你一路走过神...', 0, 's26417490.jpg', NULL);
INSERT INTO `user_book`
VALUES (248, 0, 0, '文明之光（第一册）', '吴军 ', '9.0', 4328, ' 人民邮电出版社 ', ' 2014-6-25 ', ' 59.00元',
        '人类的历史，是从野蛮蒙昧一步步走向文明进步的过程。在文明的进程中，人类创造出多元的文化，它们有着各自的特长。要实现人类和平发展的终极理想，一个重要的前提是承...', 0, 's25902942.jpg', NULL);
INSERT INTO `user_book`
VALUES (249, 0, 0, '全球通史', '[美] 霍华德‧斯波德克（Howard Spodek） / 陈德民 ', '9.4', 91, ' 上海社会科学出版社 ', ' 2018-11 ', ' 580',
        '这本《全球通史》属于優秀的通史著作之列。作者以主题分篇，把握人类社发展大势。全书分成8篇，每篇都有一个主题，而这个主题体现了这个历史时段的全球趋势：人类的起...', 0, 's30398015.jpg', NULL);
INSERT INTO `user_book`
VALUES (250, 0, 0, '中国古代文化常识', '王力 编 ', '9.0', 3500, ' 世界图书出版公司 ', ' 2008-1 ', ' 25.00元',
        '《中国古代文化常识》(插图修订第4版)是北京大学王力教授主持并召集众多专家共同编写的关于中国古代文化常识的简明读本，出版46年来前后历经4次重要修订。到今天...', 0, 's2747765.jpg', NULL);
INSERT INTO `user_book`
VALUES (251, 0, 0, '毒品史', '[墨] 卡门·博洛萨、[美] 迈克·华莱士 / 张艳蕊、温华 ', '8.1', 189, ' 上海译文出版社 ', ' 2019-11 ', ' 58.00',
        '本书从2014年9月发生的震惊全球的43名学生被集体屠杀事件切入，揭开了一个世纪时间里形成的墨西哥毒品帝国的一角，尤其是2006年以来美墨两国共同打击墨西哥...', 0, 's34887374.jpg', NULL);
INSERT INTO `user_book`
VALUES (252, 0, 0, '货币战争', '宋鸿兵 编著 ', '7.2', 43379, ' 中信出版社 ', ' 2007-6 ', ' 38.00元',
        '为什么你不知道美联储是私有的中央银行？为什么华尔街风险资本会选中希特勒作为“投资”对象？为什么美国总统遇刺的比例高于美军诺曼底登陆一线部队的伤亡率？自...', 0, 's2081876.jpg', NULL);
INSERT INTO `user_book`
VALUES (253, 0, 0, '激荡十年，水大鱼大', '吴晓波 ', '8.3', 11121, ' 中信出版社 ', ' 2017-11-1 ', ' CNY 58.00',
        '【编辑推荐】知名财经作者吴晓波新作，畅销十年、销量超过两百万册的《激荡三十年》续篇，至此完成改革开放四十年企业史完整记录。作为时代记录者，吴晓波有意识地...', 0, 's27179563.jpg', NULL);
INSERT INTO `user_book`
VALUES (254, 0, 0, '死亡地图', '（美）Steven Johnson（史蒂芬·约翰逊） / 熊亭玉 ', '8.5', 268, ' 译言·东西文库／电子工业出版社 ', ' 2017-1 ',
        ' CNY 68.00', '这是一个关于瘟疫的故事，一个关于瘟疫如何创造了我们今天生存的城市、世界的故事。在维多利亚女王时代的伦敦，作为一座现代化的工业大都市，仅仅拥有着伊丽莎白时期古...', 0,
        's26950083.jpg', NULL);
INSERT INTO `user_book`
VALUES (255, 0, 0, '三国志', '[晉] 陈寿 (撰)、[宋] 裴松之 (注) ', '9.3', 2669, ' 中华书局 ', ' 2006-9 ', ' 36.00元',
        '《三国志》(精)与《史记》、《汉书》、《后汉书》并称为“四史”。作者陈寿，以其史识及叙事能力，在当时已有“良史之才”的称誉。《三国志》在二十四史中，有它自...', 0, 's1926289.jpg', NULL);
INSERT INTO `user_book`
VALUES (256, 0, 0, '伯罗奔尼撒战争', '[美] 唐纳德·卡根 / 陆大鹏 ', '8.9', 1496, ' 社会科学文献出版社 ', ' 2016-4 ', ' 79.00元',
        '在公元前5世纪末的近三十年里，古典世界被一场冲突撕扯得四分五裂，那就是伯罗奔尼撒战争。在其历史背景之下，这场战争的戏剧性、决定性和毁灭性可以与20世纪的两次...', 0, 's26451505.jpg', NULL);
INSERT INTO `user_book`
VALUES (257, 0, 0, '极权主义的起源', '[美] 汉娜·阿伦特 / 林骧华 ', '8.7', 3142, ' 生活·读书·新知三联书店 ', ' 2008-6 ', ' 56.00元',
        '全书分为三个部分：反犹主义、帝国主义、极权主义。作者从19世纪中欧与东欧历史中的反犹主义入手，追索其中的极权主义因素，然后审视欧洲的殖民帝国主义。在研究极权...', 0, 's3101021.jpg', NULL);
INSERT INTO `user_book`
VALUES (258, 0, 0, '克里米亚战争', '[英] 奥兰多·费吉斯 / 吕品、朱珠 ', '9.1', 458, ' 南京大学出版社 ', ' 2018-10 ', ' 128.00元',
        '1853年，沙皇尼古拉一世借宗教争端入侵今属罗马尼亚的多瑙河两公国。随后，摇摇欲坠而勉力维持其欧洲势力的奥斯曼帝国、担心俄国扩张的英国，以及想要重塑辉煌的法...', 0, 's30297216.jpg', NULL);
INSERT INTO `user_book`
VALUES (259, 0, 0, '切尔诺贝利的悲鸣', '[白俄] S·A·阿列克谢耶维奇 / 方祖芳、郭成业 ', '9.1', 8577, ' 花城出版社 ', ' 2015-11 ', ' 42.00元',
        '★获得2015年诺贝尔文学奖，真实记录切尔诺贝利核灾难事件★“她的复调书写，是对我们时代的苦难和勇气的纪念。”★“每一页，都是感人肺腑的故事。”---...', 0, 's26641665.jpg', NULL);
INSERT INTO `user_book`
VALUES (260, 0, 0, '讲给大家的中国历史01', '杨照 ', '9.0', 569, ' 中信出版集团·见识城邦 ', ' 2018-10 ', ' 48.00元',
        '【编辑推荐】新材料，新成果，新写法讲给普通大众的130堂中国历史课，寻找被忽略的历史逻辑-----------------1.这套中国历史，作者已经...', 0, 's30132713.jpg', NULL);
INSERT INTO `user_book`
VALUES (261, 0, 0, '美国宪政历程', '任东来、陈伟、白雪峰 ', '9.1', 6590, ' 中国法制出版社 ', ' 2014-1 ', ' 35.00元',
        '本书的主体部分由三篇精彩的宪法论文与25个司法大案组成，一共28节。这三篇论文是《美国宪法的英国普通法渊源》、《保守的美国革命产生了长寿的联邦宪法》和《美国...', 0, 's1144185.jpg', NULL);
INSERT INTO `user_book`
VALUES (262, 0, 0, '“中间地带”的革命', '杨奎松 ', '8.8', 1549, ' 山西人民出版社 ', ' 2010-05 ', ' 54.00',
        '这是我最主要的代表作之一，是到目前为止唯一比较系统地反映了我对革命年代中共成长发展经过及其主要原因的看法的一本书。这本书最大的阅读价值，在于它比较完整和系...', 0, 's4827310.jpg', NULL);
INSERT INTO `user_book`
VALUES (263, 0, 0, '天国之秋', '[美] 裴士锋 / 黄中宪、谭伯牛 校 ', '8.6', 4506, ' 社会科学文献出版社 ', ' 2014-11-10 ', ' 69.00元',
        '2012年坎迪尔（CundillPrize）历史奖大奖（世界奖金最高的历史著作奖）裴士锋生动重现了……十九世纪中叶的太平天国战争。这场战争所夺走的人命之...', 0, 's25938605.jpg', NULL);
INSERT INTO `user_book`
VALUES (264, 0, 0, '剑桥中国史（全十册）', '费正清 / 杨品泉 ', '8.9', 995, ' 中国社会科学出版社 ', ' 2012-1 ', ' 999.00元',
        '剑桥中国史（TheCambridgeHistoryofChina）是一部世界上极具影响的国外研究中国历史的权威著作，由英国剑桥大学出版社出版，费正清...', 1, 's10740958.jpg', NULL);
INSERT INTO `user_book`
VALUES (265, 0, 0, '晋武帝司马炎', '(日) 福原启郎 / 陆帅 ', '7.7', 135, ' 江苏人民出版社 ', ' 2020-1 ', ' 48.00元',
        '本书以司马炎为基点，上溯其祖、父两代，下延其子、孙两代，以河内司马氏五代人的事迹为主轴，生动描述了曹魏、西晋时代的政治变迁与社会风貌。前半部分以司马懿、司马...', 0, 's34800959.jpg', NULL);
INSERT INTO `user_book`
VALUES (266, 0, 0, '大明王朝1566', '刘和平 ', '9.3', 1975, ' 花城出版社 ', ' 2016-7 ', ' 88.00元',
        '编辑推荐刘和平著的《大明王朝(1566上下)》对宦官的描写真绝！将“王权主义”写到他们骨头里去了。书中有两个最具命运感的人物，一个是海瑞，一个是嘉靖帝，他...', 0, 's26925171.jpg', NULL);
INSERT INTO `user_book`
VALUES (267, 0, 0, '空王冠', '[英] 丹·琼斯 / 陆大鹏 ', '8.6', 1029, ' 社会科学文献出版社 ', ' 2018-8 ', ' 79.00元',
        '☆丹•琼斯、陆大鹏再度联袂献上恢宏史诗《金雀花王朝》续篇☆《权力的游戏》或《都铎王朝》的爱好者不可错过☆一部笔触大胆、戏剧性极强的叙述史【内容简...', 0, 's30203779.jpg', NULL);
INSERT INTO `user_book`
VALUES (268, 0, 0, '第三帝国的兴亡（上中下）', '[美] 威廉·夏伊勒 / 董乐山 等 ', '8.8', 2107, ' 世界知识出版社 ', ' 1996-4 ', ' 80.00元',
        '一想到德国人民，我常常不免黯然神伤，他们作为个人来说，个个可贵，作为整体来说，却又那么可怜……在第三帝国短促的生命的前半期，作者曾在那里生活过，亲眼看到希特...', 0, 's1125731.jpg', NULL);
INSERT INTO `user_book`
VALUES (269, 0, 0, '细说宋朝', '虞云国 ', '8.2', 787, ' 上海人民出版社 ', ' 2002-12-1 ', ' 32.00',
        '《细说宋朝》是“细说中国历史丛书”的一种，叙述自宋太祖统一全国至元灭南宋期间的历史，涉及两宋、西夏、辽、金等政权的重要历史和人物。作者以“讲史”的形式，叙述...', 0, 's1013253.jpg', NULL);
INSERT INTO `user_book`
VALUES (270, 0, 0, '大明王朝的七张面孔', '张宏杰 ', '8.3', 4572, ' 广西师范大学出版社 ', ' 2006-1 ', ' 29.80元',
        '《大明王朝的七张面孔(插图版)》解读明朝历史人物，揭开人所共知的七个角色生命历程背后难为人知的艰辛、焦灼和不得已，分析其何以矛盾、扭曲和心力憔悴。这既是人在...', 0, 's1463256.jpg', NULL);
INSERT INTO `user_book`
VALUES (271, 0, 0, '现代日本史', '[美] 安德鲁·戈登 / 李朝津 ', '8.6', 1070, ' 中信出版社 ', ' 2017-11 ', ' 78.00元',
        '《现代日本史：从德川时代到21世纪》是一部全景式展现日本近200年现代化历程、了解日本现代历史的通识读物，作者在全球史的大背景下，梳理了日本现代化过程的来龙...', 0, 's26907972.jpg', NULL);
INSERT INTO `user_book`
VALUES (272, 0, 0, '流血的仕途', '曹昇 ', '8.1', 11356, ' 中信出版社 ', ' 2007-7 ', ' 29.80元',
        '这本书试图采用镜像法则，站在李斯的角度，以正史记载为基准，正史不到之处，则辅以合理的推断和揣摩，接续空白，贯穿前后，对李斯的一生进行详细还原，使之丰满而完整...', 0, 's2133254.jpg', NULL);
INSERT INTO `user_book`
VALUES (273, 0, 0, '宋仁宗和他的帝国精英', '郭瑞祥 ', '7.6', 169, ' 现代出版社有限公司 ', ' 2019-7 ', ' 49.80',
        '中国两千年皇权社会，宋朝是个独特的存在。在这个武将开创的朝代里，文人却历史上第一次成为政治舞台的主角，演绎出一个与众不同的宋。他莺歌燕舞，华晔玉瑾，性格...', 0, 's34781396.jpg', NULL);
INSERT INTO `user_book`
VALUES (274, 0, 0, '历史三调', '[美]柯文 / 杜继东 ', '9.3', 1004, ' 社会科学文献出版社 ', ' 2015-8-1 ', ' 59.00',
        '《历史三调：作为事件、经历和神话的义和团（典藏版）》荣获1997年美国历史学会费正清东亚历史学奖、荣获1997年新英格兰历史学会图书奖。书中以义和团为例向人...', 0, 's26427101.jpg', NULL);
INSERT INTO `user_book`
VALUES (275, 0, 0, '罗马人的故事（礼品装，全15册）', '盐野七生 / 徐越、计丽屏、刘锐、田建华、田建国 ', '9.1', 2022, ' 中信出版社 ', ' 2013-11-1 ', ' 600.00元',
        '1、内容简介《罗马人的故事》（15册套装），完美收官。最值得收藏的罗马史经典。在这平庸年代，人人渴望英雄，日本女作家盐野七生，决然出走日本，远赴罗马，寻找...', 0, 's25777432.jpg', NULL);
INSERT INTO `user_book`
VALUES (276, 0, 0, '文化苦旅', '余秋雨 ', '7.7', 77050, ' 东方出版中心 ', ' 2001-4 ', ' 22.00元',
        '《文化苦旅》是余秋雨的第一部散文合集，所收作品主要包括两部分，一部分是历史、文化散文，散点论述，探寻文化；另一部分是回忆散文。', 0, 's1050339.jpg', NULL);
INSERT INTO `user_book`
VALUES (277, 0, 0, '讲谈社·中国的历史（十卷本）',
        '(日) 宫本一夫、(日) 平势隆郎、(日) 鹤间和幸、(日) 金文京、(日) 川本芳昭、(日) 气贺泽保规、(日) 小岛毅、(日) 杉山正明、(日) 上田信、(日) 菊池秀明 / 吴菲、周洁、马彪、何晓毅、梁蕾、余晓潮、石晓军、乌兰、乌日娜、高莹莹、马晓娟 ',
        '8.5', 1378, ' 广西师范大学出版社 ', ' 2014-2-1 ', ' 568.00元',
        '讲谈社《中国的历史》是日本历史学家的系列著作，是近年来中国历史方面的重磅力作。丛书自上古到近代，内容含概量大，撰述者均为日本该领域的代表性学者，作品大多构思...', 0, 's25844017.jpg', NULL);
INSERT INTO `user_book`
VALUES (278, 0, 0, '老鼠、虱子和历史', '[美] 汉斯·辛瑟尔 / 谢桥、康睿超 ', '7.2', 155, ' 重庆出版社 ', ' 2019-11-1 ', ' 58',
        '《老鼠、虱子和历史:一部全新的人类命运史》是一部解读人类命运的经典著作，读起来既令人震惊又令人愉悦。作者汉斯.辛瑟尔从生物学和历史学的角度，讲述了人类...', 0, 's34884945.jpg', NULL);
INSERT INTO `user_book`
VALUES (279, 0, 0, '1848', '[美]迈克·拉波特（Mike Rapport） / 郭东波、杜利敏 ', '9.1', 137, ' 上海社会科学院出版社 ', ' 2019-7 ', ' 92.00元',
        '1848，短暂的“人民之春”，深厚的历史苗圃1848年，一场革命风暴横扫欧洲。2月，革命圣地巴黎，人民走上街头、筑起街垒，七月王朝统治崩溃。3月，保守秩序...', 0, 's30438868.jpg', NULL);
INSERT INTO `user_book`
VALUES (280, 0, 0, '海洋帝国', '[英] 罗杰·克劳利 / 陆大鹏 ', '9.0', 3123, ' 社会科学文献出版社·甲骨文 ', ' 2014-6 ', ' 55.00元',
        '海洋帝国从马耳他到勒班陀，夺取世界的中心《纽约时报》最佳畅销图书《经济学人》年度最佳图书在整个欧洲史中，没有任何故事比基督教和伊斯兰教两个世界争夺...', 0, 's25891321.jpg', NULL);
INSERT INTO `user_book`
VALUES (281, 0, 0, '曾国藩', '唐浩明 ', '8.6', 698, ' 文汇出版社 ', ' 2017-4-3 ', ' CNY 99.00',
        '一字未删，原貌呈现手稿！白岩松、柳传志、宗庆后鼎力推荐！“不做圣贤，便为禽兽”。曾国藩的一生，成功显赫到了顶点极处，争议复杂也是千古未有。晚清湖南人才济...', 0, 's27074042.jpg', NULL);
INSERT INTO `user_book`
VALUES (282, 0, 0, '两次全球大危机的比较研究', '刘鹤 ', '8.4', 1500, ' 中国经济出版社 ', ' 2013-2-1 ', ' 65.00元',
        '《两次全球大危机的比较研究》内容简介：2010年起，中央财办启动“两次全球大危机的比较研究”课题，对本次国际金融危机和1929年大萧条的发生、演变和影响进行...', 0, 's21964791.jpg', NULL);
INSERT INTO `user_book`
VALUES (283, 0, 0, '午夜北平', '[英] 保罗·法兰奇 / 蓝莹 ', '8.3', 1470, ' 社会科学文献出版社 ', ' 2019-3 ', ' 86.00元',
        '1937年1月，在外人免入的北平使馆区里，外侨们紧张地等待着达摩克利斯之剑落下。日军已经占领东北，准备挥师南下。据说，蒋介石和他摇摇欲坠的南京政府已准备与东...', 0, 's30398413.jpg', NULL);
INSERT INTO `user_book`
VALUES (284, 0, 0, '不平等社会', '[美]沃尔特·沙伊德尔 / 颜鹏飞 ', '6.8', 168, ' 中信出版集团股份有限公司 ', ' 2019-6-1 ', ' 98',
        '自从人类开始耕种、放牧，并把财产代代相传，经济不平等就一直是人类文明的显著特征。进入21世纪后，贫富差距在世界范围内不断扩大，经济不平等问题越发突出，甚至已...', 0, 's33436179.jpg', NULL);
INSERT INTO `user_book`
VALUES (285, 0, 0, '秦谜', '李开元 / 有2017年8月4印本 ', '8.2', 1540, ' 中信出版集团 ', ' 2017-6 ', ' 48.00',
        '秦始皇短短49年人生却迷雾重重。秦始皇的爸爸是吕不韦？昌平君有着怎样的双重身份?秦始皇的表叔怎么成了末代楚王？秦始皇的后宫为何集体失载？坑儒是秦始皇背了...', 0, 's27036549.jpg', NULL);
INSERT INTO `user_book`
VALUES (286, 0, 0, '李鸿章传', '梁启超 ', '9.2', 1724, ' 中华书局 ', ' 2012-7 ', ' 13.00元',
        '《李鸿章传》是梁启超先生所撰人物传记中最著名的一种。梁先生没有采取中国传统传记“类皆记事，不下论赞”的写作模式，而是“全仿西人传记之体，载述李鸿章一生行事，...', 0, 's11629131.jpg', NULL);
INSERT INTO `user_book`
VALUES (287, 0, 0, '曾国藩的正面与侧面', '张宏杰 ', '8.3', 3214, ' 民主与建设出版社 ', ' 2014-5 ', ' 39.8元',
        '《曾国藩的正面与侧面》讲述了曾国藩跌宕起伏的一生，揭露了诸多不为人知的细节：一生遭遇过的五次重大挫折；与左宗棠的纠结和情谊；一生收入与支出；如何看待风水、相...', 0, 's25870991.jpg', NULL);
INSERT INTO `user_book`
VALUES (288, 0, 0, '从黎明到衰落（上下）', '[美] 雅克·巴尔赞 / 林华 ', '8.9', 1071, ' 中信出版社 ', ' 2013-11 ', ' 98.00元',
        '编辑推荐：★30岁构思，50余年酝酿，85岁动笔，93岁出版，美国“国宝级历史学家”雅克•巴尔赞毕生心血巨著！★《纽约时报书评》惊叹：史学大师的绝世之作...', 0, 's25752592.jpg', NULL);
INSERT INTO `user_book`
VALUES (289, 0, 0, '拜占庭的新生', '[英]约翰·朱利叶斯·诺里奇 / 李达 ', '9.1', 36, ' 社会科学文献出版社 ', ' 2020-4 ', ' 79.00元',
        '★诺里奇爵士摒弃学术上的繁琐探究造就迄今为止最好读、最引人入胜的拜占庭通史★一部让“精罗”从狂喜到落泪的史诗巨著★《观察家》《星期日泰晤士报》年度...', 0, 's27197932.jpg', NULL);
INSERT INTO `user_book`
VALUES (290, 0, 0, '隐', '赵松 / 世纪文景', '7.4', 602, '上海人民出版社 ', ' 2020-2 ', ' 42.00元',
        '★赵松继豆瓣年度中国文学高分榜Top5作品《抚顺故事集》、单向街书店文学奖年度作品《积木书》之后又一小说力作★以奇诡的想象构筑权谋纷争之外的春秋世界...', 0, 's34933266.jpg', NULL);
INSERT INTO `user_book`
VALUES (291, 0, 0, '家庭、私有制和国家的起源', '恩格斯 ', '8.9', 2219, ' 人民出版社 ', ' 2003-5-1 ', ' 12.00元',
        '自《马克思恩格斯全集》、《列宁全集》、《马克思恩格斯选集》、《列宁选集》问世以来，广大读者迫切要求出版马列著作的单行本。这反映了他们学习马克思列宁主义的强烈...', 0, 's1247769.jpg', NULL);
INSERT INTO `user_book`
VALUES (292, 0, 0, '利奥波德国王的鬼魂', '[美] 亚当·霍赫希尔德 / 扈喜林 ', '9.0', 846, ' 社会科学文献出版社 ', ' 2018-1 ', ' 79.00元',
        '★★★《纽约时报》上榜图书★★★美国国家图书评论奖最终入围图书【内容简介】19世纪80年代，随着欧洲列强对非洲的瓜分，比利时国王利奥波德二世夺...', 0, 's27084077.jpg', NULL);
INSERT INTO `user_book`
VALUES (293, 0, 0, '奥斯曼帝国', '[英] 卡罗琳·芬克尔 / 邓伯宸、徐大成、于丽 ', '8.6', 174, ' 民主与建设出版社 ', ' 2019-7 ', ' 150.00元',
        '以土耳其语材料为基础的奥斯曼通史畅销伊斯坦布尔各景点诺贝尔文学奖得主帕慕克倾情推荐◎编辑推荐☆英语世界第一部以内部视角描写奥斯曼帝国崛起至衰落历程...', 0, 's33387414.jpg', NULL);
INSERT INTO `user_book`
VALUES (294, 0, 0, '资治通鉴', '司马光 ', '9.8', 929, ' 中华书局 ', ' 2011-8 ', ' 498.00元',
        '《资治通鉴（繁体竖排版）（套装全20册）》是中国古代著名的编年体史书，记载了战国至五代期间1300多年的历史，向为史学界所推崇，在收集史料、考订事实、编排年...', 0, 's6790302.jpg', NULL);
INSERT INTO `user_book`
VALUES (295, 0, 0, '历史大脉络', '许倬云 ', '8.1', 677, ' 广西师范大学出版社 ', ' 2019-7 ', ' 56.00元',
        '在世界史的大框架内，以中国史为经线，将中外历史采合为一体，为补充一般历史教科书而撰写了这样一本类似教科书的读物。本书是关乎人类历史诸多方面的论述，比如文明、...', 0, 's3402992.jpg', NULL);
INSERT INTO `user_book`
VALUES (296, 0, 0, '论中国', '[美] 亨利·基辛格 / 胡利平、等 ', '8.9', 860, ' 中信出版社 ', ' 2015-7-1 ', ' CNY 68.00',
        '《论中国》是美国前国务卿、“政坛常青树”亨利·基辛格一部中国问题专著。他以一位资深外交家和思想家的独特视角，分析和梳理了中国自鸦片战争以来的外交传统，从围棋...', 0, 's26607419.jpg', NULL);
INSERT INTO `user_book`
VALUES (297, 0, 0, '苦难辉煌', '金一南 ', '7.9', 2532, ' 华艺出版社 ', ' 2009-1 ', ' 46.00元',
        '《苦难辉煌》主要内容：20世纪在世界东方，莫过于中华民族从东亚病夫到东方巨龙、从百年沉沦到百年复兴这一历史命运的大落大起。在这一命运形成之初，中国国民党、中...', 0, 's3432401.jpg', NULL);
INSERT INTO `user_book`
VALUES (298, 0, 0, '世界的演变', '[德] 于尔根·奥斯特哈默 / 强朝晖、刘风 ', '9.0', 481, ' 社会科学文献出版社 ', ' 2016-11-1 ', ' CNY 238.00',
        '一部经典之作！·【内容简介】从19世纪开始，人类现代史即将拉开序幕。这是一个重大政治理念汇聚的时代，是“此在”科学化的时代，是铁路与工业的时代，是各大...', 0, 's26639302.jpg', NULL);
INSERT INTO `user_book`
VALUES (299, 0, 0, '尘埃落定', '阿来 ', '8.5', 50639, ' 人民文学出版社 ', ' 1998-3-1 ', ' 22.0',
        '一个声势显赫的康巴藏族土司，在酒后和汉族太太生了一个傻瓜儿子。这个人人都认定的傻子与现实生活格格不入，却有着超时代的预感和举止，成为土司制度兴衰的见证人。小...', 0, 's1080309.jpg', NULL);
INSERT INTO `user_book`
VALUES (300, 0, 0, '追寻现代中国', '[美]史景迁 / 温洽溢 ', '8.6', 233, ' 四川人民出版社 ', ' 2019-5 ', ' 128.00',
        '一个“现代”国家既可融汇一体，又能兼容并蓄，既有明确的自我认同，也能以平等的地位竞逐新市场、新技术、新观念。本书以16世纪末作为叙述的起点，展现了中国的社会...', 0, 's30309611.jpg', NULL);
INSERT INTO `user_book`
VALUES (301, 0, 0, '赛雷三分钟漫画中国史', '赛雷 ', '7.5', 298, ' 博集天卷 | 湖南文艺出版社 ', ' 2020-1-1 ', ' 49.80元',
        '★ZUI生动的四色漫画中国史！再现中国历史场景！1000万人都在看的“超萌赛雷”重磅打造漫画中国史！几乎每页都有一个大家会心一笑的梗，同时又有扎实的历史事实...', 0, 's34907465.jpg', NULL);
INSERT INTO `user_book`
VALUES (302, 0, 0, '南京传', '叶兆言 ', '8.4', 394, ' 译林出版社 ', ' 2019-8 ', ' 78.00',
        '春归秣陵树，人老建康城。作为一位公认的文章大家，叶兆言对他写了四十年的南京有着独特理解。南京为他提供了一个讲述中国历史的平台，它不断被破坏、被伤害，又不...', 0, 's34784867.jpg', NULL);
INSERT INTO `user_book`
VALUES (303, 0, 0, '共有的习惯', '[英]E. P. 汤普森 / 沈汉、王加丰 ', '8.8', 94, ' 上海人民出版社 ', ' 2020-1-1 ', ' 98.00元',
        '战后英语世界广受瞩目的马克思主义者，史学巨擘，新左派重要奠基人，与霍布斯鲍姆齐名的思想家重构社会与文化的里程碑研究，从《共有的习惯》到共同的意识，孕育英国...', 0, 's34661989.jpg', NULL);
INSERT INTO `user_book`
VALUES (304, 0, 0, '无规则游戏', '[美]塔米姆·安萨利 / 钟鹰翔 ', '8.6', 691, ' 浙江人民出版社 ', ' 2018-11 ', ' 79.00元',
        '塔米姆·安萨利是一位阿富汗裔美国人，他出生和成长在喀布尔，于1964年移居美国，兼有阿富汗和美国两国血统。他讲述的阿富汗故事饱含对故国家园的深切关怀，从局内...', 0, 's30348068.jpg', NULL);
INSERT INTO `user_book`
VALUES (305, 0, 0, '亚洲大趋势', '乔•史塔威尔 ', '9.0', 524, ' 中信出版社 ', ' 2014-5 ', ' 68.00元',
        '20世纪80年代和90年代，西方国家的许多人开始相信，东亚经济将会迸发奇迹。日本会主导世界经济，中国也将紧随日本。亚洲国家开始被冠以“虎龙”之名，不仅这些亚...', 0, 's25893995.jpg', NULL);
INSERT INTO `user_book`
VALUES (306, 0, 0, '财富之城', '[英] 罗杰·克劳利 / 陆大鹏、张骋 ', '8.9', 2533, ' 社会科学文献出版社 ', ' 2015-2-1 ', ' 58.00元',
        '地中海史诗系列三部曲的最后一部《财富之城》则可算是威尼斯共和国简史，不过侧重于其在地中海上的外交与战争，尤其是与奥斯曼帝国的对抗。数百年间，威尼斯从礁湖渔村...', 0, 's26296352.jpg', NULL);
INSERT INTO `user_book`
VALUES (307, 0, 0, '“山中”的六朝史', '魏斌 ', '8.9', 298, ' 生活·读书·新知三联书店 ', ' 2019-8 ', ' 52.00元',
        '在六朝江南社会，“山中”这一地理空间发生了巨大的变迁。随着佛教山寺的兴起、道教洞天体系和山中修道的宫观化，一些山岳成为寺馆集中的宗教圣地，江南山岳完成“名山...', 0, 's34712156.jpg', NULL);
INSERT INTO `user_book`
VALUES (308, 0, 0, '黑旗', '[美] 乔比·沃里克 / 钟鹰翔 ', '8.3', 5958, ' 中信出版社 ', ' 2017-1 ', ' 56.00元',
        '全书分为“扎卡维的崛起”“伊拉克往事”和“伊斯兰国”三卷。当1999年约旦政府特赦一批政治犯时，没人意识到其中那个名叫阿布·穆萨卜·扎卡维的男人，后来会成为...', 0, 's26897747.jpg', NULL);
INSERT INTO `user_book`
VALUES (309, 0, 0, '亚历山大的征服与神话', '[日] 森谷公俊 / 徐磊 ', '8.6', 170, ' 北京日报出版社 ', ' 2020-1 ', ' 82.00元',
        '★《兴亡的世界史》第1册，葛兆光、白岩松、高晓松、罗振宇郑重推荐★人类历史上最瞩目的英雄，伟大征服者的内心——亚历山大20岁继位，此后从希腊开始东征，...', 0, 's34785084.jpg', NULL);
INSERT INTO `user_book`
VALUES (310, 0, 0, '单一民族神话的起源', '[日]小熊英二 / 文婧 ', '9.2', 18, ' 生活·读书·新知三联书店 ', ' 2020-3 ', ' 68.00',
        '从“大日本帝国”时代开始直至战后，单一民族神话一直是“日本人”主流的自画像。本书旨在从历史学的角度研究单一民族神话的起源以及它的发展轨迹，并且从社会学的角度...', 0, 's30484697.jpg', NULL);
INSERT INTO `user_book`
VALUES (311, 0, 0, '袁氏当国', '唐德刚 ', '8.5', 7156, ' 广西师范大学出版社 ', ' 2004-11 ', ' 17.00',
        '《袁氏当国》讲述了袁世凯如何在晚清政府和国民革命军政府之间养敌自重以觊觎总统宝座，宋教仁刺杀案的历史谜团到底暗示了什么真实背景，孙中山的个性对他改造国民党以...', 0, 's1000280.jpg', NULL);
INSERT INTO `user_book`
VALUES (312, 0, 0, '全球通史', '斯塔夫里阿诺斯 (Leften Stavros Stavrianos) / 吴象婴、梁赤民、董书慧、王昶 ', '8.9', 1898, ' 北京大学出版社 ',
        ' 2006-10-1 ', ' CNY 96.00',
        '本书分八个部分，四十四个章节，主要讲述了世界历史的进化，世界文明的发展及其对现代社会的影响。作者着眼于全球，侧重于那些有影响的、促进历史发展的历史事件，其中...', 0, 's26588758.jpg', NULL);
INSERT INTO `user_book`
VALUES (313, 0, 0, '新宋', '阿越 ', '8.1', 962, ' 东方出版社 ', ' 2010-5 ', ' 37.00元',
        '《新宋:中国网络文学盘点》是一部架空历史的网络小说。描述了一个当代的历史系大学生回到北宋，利用千年的知识积累，欲对北宋王朝的各个方面进行改革的故事。作品以天...', 0, 's4838107.jpg', NULL);
INSERT INTO `user_book`
VALUES (314, 0, 0, '新政之后', '[美] 司昆仑 / 王莹 ', '7.7', 23, ' 四川文艺出版社 ', ' 2020-4 ', ' 78.00',
        '◎读过《袍哥》的人，都会来看这本书。◎关于20世纪初清末新政和民国初年在中国内陆城市成都所发生的变革，特别是警察在这个变革中所扮演的重要角色。◎成...', 0, 's35005170.jpg', NULL);
INSERT INTO `user_book`
VALUES (315, 0, 0, '文字的力量', '[美]马丁·普克纳 / 陈芳代 ', '8.0', 348, ' 中信出版集团 ', ' 2019-7 ', ' 58.00',
        '哈佛大学16堂世界文学通识课用16部改变世界的经典作品揭开历史中的关键16幕聚焦那些由诗文引发的帝国崛起、印刷机开启的权力角逐-【内容简介】文学...', 0, 's33440223.jpg', NULL);
INSERT INTO `user_book`
VALUES (316, 0, 0, '永恒的边缘', '[英] 肯·福莱特 / 陈杰 ', '7.8', 9271, ' 江苏凤凰文艺出版社 ', ' 2017-5 ', ' 168.00（全三册）',
        '“世纪三部曲”终于迎来了一个完美结局。《永恒的边缘》是《巨人的陨落》的大结局！火遍全球的20世纪人类史诗“世纪三部曲”的第三部。我亲眼目睹，每一个迈向死亡...', 0, 's27025715.jpg', NULL);
INSERT INTO `user_book`
VALUES (317, 0, 0, '西行漫记', '（美）埃德加·斯诺 / 董乐山 ', '8.4', 2863, ' 生活.读书.新知三联书店 ', ' 1979年 ', ' 1.30',
        '作者于1936年6月至10月对中国西北革命根据地进行了实地考察，根据考察所掌握的第一手材料完成了《西行漫记》的写作。斯诺作为一个西方新闻记者，对中国共产党和...', 0, 's1506961.jpg', NULL);
INSERT INTO `user_book`
VALUES (318, 0, 0, '紫禁城的黄昏', '(英)庄士敦 / 陈时伟 ', '7.8', 1641, ' 山东画报出版社 ', ' 2007-4 ', ' 28.00元',
        '《紫禁城的黄昏》记述了困居紫禁城中“清室”的黄昏时期——1912年至1924年——从中华民国成立到溥仪出宫期间的历史，庄士敦以帝制向共和的转变为历史背景，以...', 0, 's2040853.jpg', NULL);
INSERT INTO `user_book`
VALUES (319, 0, 0, '全球通史(下)', '（美）斯塔夫里阿诺斯（Stavrianos,L.S.） / 吴象婴等 ', '9.2', 8680, ' 北京大学出版社 ', ' 2006-10 ', ' 54.00',
        '本书分八个部分，四十四个章节，主要讲述了世界历史的进化，世界文明的发展及其对现代社会的影响。作者着眼于全球，侧重于那些有影响的、促进历史发展的历史事件，其中...', 0, 's1922246.jpg', NULL);
INSERT INTO `user_book`
VALUES (320, 0, 0, '上瘾五百年', '[美] 戴维·考特莱特 / 薛绚 ', '7.6', 3490, ' 中信出版社 ', ' 2014-8 ', ' 38.00',
        '【内容简介】写给容易上瘾、关注瘾品，对瘾品的历史感兴趣的读者。早起喝一杯咖啡，疲倦时点一支烟，聚会时来一瓶可乐，你对这些习惯上瘾吗？酒精、烟草、咖啡因...', 0, 's25908552.jpg', NULL);
INSERT INTO `user_book`
VALUES (321, 0, 0, '光荣与梦想', '[美] 威廉·曼彻斯特 / 广东外国语学院美英问题研究室翻译组 ', '8.9', 6063, ' 海南出版社 三环出版社 ', ' 2004-02 ', ' 68.00',
        '本书是美国的一部断代史，勾画了从1932年罗斯福总统上台前后，到1972年尼克松总统任期内水门事件的四十年间美国政治、经济、文化，以及社会生活的全景式画卷。...', 0, 's1005492.jpg', NULL);
INSERT INTO `user_book`
VALUES (322, 0, 0, '恶魔的饱食', '森村诚一 ', '9.0', 462, ' 学苑出版社 ', ' 2003年01月 ', ' CNY 93.00',
        '本书用第一物资料系统地揭露了日本细菌部队在中国等地建立大规模细菌战研究基地，利用3000多名中国、苏联等国的战俘和平民进行活体实验的历史事实。', 0, 's1530882.jpg', NULL);
INSERT INTO `user_book`
VALUES (323, 0, 0, '分身', '李永晶 ', '9.0', 143, ' 一頁folio | 北京联合出版公司 ', ' 2020-1 ', ' 78',
        '★21世纪的日本论，中国日本认知的再次更新★日本三部曲开篇力作，重构近代日本精神史★深刻揭示日本何以在近代世界的大舞台上扮演了让人震惊的角色？★...', 0, 's34897872.jpg', NULL);
INSERT INTO `user_book`
VALUES (324, 0, 0, '哈佛中国史（全六卷）', '[加] 卜正民 等 / 王兴亮、李磊、张晓东、冯世明、李文锋、潘玮琳、李仁渊、张远 ', '8.5', 1172, ' 中信出版社 ', ' 2016-10 ',
        ' CNY 408.00', '【内容简介】哈佛中国史（全六卷）[加]卜正民（TimothyBrook）主编01：早期中华帝国：秦与汉[美]陆威仪（MarkEdwardLew...', 0, 's26847586.jpg',
        NULL);
INSERT INTO `user_book`
VALUES (325, 0, 0, '政治秩序与政治衰败', '[美] 弗朗西斯·福山 / 毛俊杰 ', '8.5', 754, ' 广西师范大学出版社 ', ' 2015-9-1 ', ' 98.00',
        '《政治秩序与政治衰败》是斯坦福大学政治学家弗朗西斯·福山的最新著作，是其上一卷《政治秩序的起源》的姊妹篇，作者在上一卷里将人类政治秩序的起源一直追溯到前人类...', 0, 's26592899.jpg', NULL);
INSERT INTO `user_book`
VALUES (326, 0, 0, '至高权力', '(美) 杰夫·谢索 / 陈平 ', '8.8', 255, ' 文汇出版社 ', ' 2019-8 ', ' 108.00',
        '21世纪公民必修课|应维护司法独立，还是为了时代所需屈就于政治强人？白宫版“权力的游戏”|当三权分立变为三权分裂，美国政坛的巅峰权力对决.......', 0, 's30394978.jpg', NULL);
INSERT INTO `user_book`
VALUES (327, 0, 0, '新教伦理与资本主义精神', '马克斯·韦伯 / 于晓、陈维纲等 ', '8.9', 5435, ' 生活·读书·新知三联书店 ', ' 1987年 ', ' 9.80',
        '韦伯的论文《新教伦理与资本主义精神》（DieprotestantischeEthikundderGeistdesKapitalismus）是他...', 0, 's1433411.jpg', NULL);
INSERT INTO `user_book`
VALUES (328, 0, 0, '饥饿的盛世', '张宏杰 ', '8.4', 2500, ' 重庆出版社,重庆出版集团 ', ' 2016-3-1 ', ' CNY 39.80',
        '本书内容主要写乾隆时代的得与失，作者通过对乾隆时代的解构，为读者描绘了一幅五彩斑斓的“盛世”图景，同时深刻揭示了近代中国失落的秘密。乾隆统治下的中国，纵向...', 0, 's26742784.jpg', NULL);
INSERT INTO `user_book`
VALUES (329, 0, 0, '丝绸之路与唐帝国', '森安孝夫 / 石晓军 ', '8.5', 159, ' 北京日报出版社 ', ' 2020-1 ', ' 89.00',
        '本书从七世纪初唐朝建国开始写起，直至八世纪中叶“安史之乱”的发生。这段时间内，唐帝国与境外诸多国家的冲突、往来不断。在此背景下，作者讲述与丝绸之路历史一体的...', 0, 's34911695.jpg', NULL);
INSERT INTO `user_book`
VALUES (330, 0, 0, '城记', '王军 ', '8.8', 7192, ' 生活·读书·新知三联书店 ', ' 2003-10 ', ' 58.00元',
        '在完成本书写作的10年间，作者共采访当事人50余位，收集、查阅、整理大量第一手史料，实地考察京、津、冀、晋等地重要古建筑遗迹，跟踪北京城市发展模式、文物保护...', 0, 's1070711.jpg', NULL);
INSERT INTO `user_book`
VALUES (331, 0, 0, '中国通史', '吕思勉 ', '8.9', 2807, ' 上海古籍出版社 ', ' 2009-4-1 ', ' 35.00元',
        '本书是吕思勉先生史学论著之一，完成于1939年，分上、下两册。上册分门别类地叙述社会经济制度、政治制度和文化学术的发展情况，内容包括婚姻、族制、政体、阶级、...', 0, 's3707886.jpg', NULL);
INSERT INTO `user_book`
VALUES (332, 0, 0, '人性中的善良天使', '[美]斯蒂芬·平克 / 安雯 ', '8.6', 1572, ' 中信出版社 ', ' 2015-7 ', ' 128.00元',
        '【内容简介】人是一种怎样的混合造物啊！新奇，古怪，混乱，自相矛盾，不可思议！他裁断世上万物，他是微末的蚯蚓、真理的宝库，灌满了谬误和不确定性的阴沟，宇宙的...', 0, 's26150549.jpg', NULL);
INSERT INTO `user_book`
VALUES (333, 0, 0, '全球科技通史', '[美] 吴军 ', '8.4', 1195, ' 中信出版集团 ', ' 2019-4 ', ' 88',
        '大部分人谈到历史的时候，关注的是国家的兴衰、王朝的更替，往往忽视了科技的力量。“文津图书奖”得主吴军博士，首次从科技视角串联历史，以能量和信息两条主线，系统...', 0, 's33385217.jpg', NULL);
INSERT INTO `user_book`
VALUES (334, 0, 0, '血酬定律', '吴思 ', '8.0', 2946, ' 语文出版社 ', ' 2009-4 ', ' 28.00',
        '《血酬定律》是吴思先生在五年前推出的一部作品，此次新版，增写了新的前言，对五年摸索的最新思路与心得作了简要的交代，着重对“血酬定律”的三个要点作了更完整的总...', 0, 's3640150.jpg', NULL);
INSERT INTO `user_book`
VALUES (335, 0, 0, '西班牙旅行笔记', '林达 ', '8.6', 11278, ' 生活·读书·新知三联书店 ', ' 2007-1 ', ' 49.00元',
        '《西班牙旅行笔记》记述了作者在西班牙旅行的经历。面对西班牙既充满异域风情而又绚丽多彩的历史、艺术、人物和宫殿、教堂、城堡等文化精华，作者在描述其无与伦比的人...', 0, 's1962923.jpg', NULL);
INSERT INTO `user_book`
VALUES (336, 0, 0, '北京法源寺', '李敖 ', '8.4', 9979, ' 中国友谊出版社 ', ' 2004-08 ', ' 20.00元',
        '《北京法源寺》是作者作为政治犯被关押期间所写的几部小说之一。本书以大人物为主角，举凡重要的主题：生死、鬼神、僧俗、出入、仕隐、朝野、家国、君臣、忠奸、夷...', 0, 's1062991.jpg', NULL);
INSERT INTO `user_book`
VALUES (337, 0, 0, '君主论', '(意) 马基雅维利 / 刘训练 ', '9.1', 579, ' 中央编译出版社 ', ' 2017-4 ', ' 58.00',
        '1815年6月18日，有人在拿破仑•波拿巴的马车座驾中发现了一些书籍文件，其中包括一份手稿……让人喜出望外的是，这份手稿不仅是《君主论》的新译本，而且页边还...', 0, 's27025626.jpg', NULL);
INSERT INTO `user_book`
VALUES (338, 0, 0, '失败的帝国', '[美] 弗拉迪斯拉夫·祖博克 / 李晓江 ', '8.5', 930, ' 社会科学文献出版社 ', ' 2014-6-15 ', ' 88.00',
        '通过说明克里姆林宫领导人和苏联精英们的利益、抱负、幻想、恐惧以及误解，祖博克对这个20世纪最大的僵局提供了一种苏方的观察。除其他资源之外，他还利用最近解密...', 0, 's25869117.jpg', NULL);
INSERT INTO `user_book`
VALUES (339, 0, 0, '我们台湾这些年', '廖信忠 ', '7.4', 38590, ' 重庆出版集团 ', ' 2009-11 ', ' 29.80元',
        '关于真正的台湾，你又了解多少？这是我常常问大陆朋友的问题。我明白，对于很多大陆朋友来说，台湾往往只是一个空洞的政治概念；大多数人并不清楚台湾过去30年究...', 0, 's4113090.jpg', NULL);
INSERT INTO `user_book`
VALUES (340, 0, 0, '金陵十三钗', '严歌苓 ', '8.2', 14965, ' 中国工人出版社 ', ' 2007-1 ', ' 17.00元',
        '小说《金陵十三钗》摹写的是“特殊女人”的言行心态。作品中，她把十三个风尘女子放置于一种特殊的文化和道德的背景之下，进行心灵的剖析和人性的拷问，带给人们的自然...', 0, 's2016749.jpg', NULL);
INSERT INTO `user_book`
VALUES (341, 0, 0, '教宗与墨索里尼', '[美] 大卫·I. 科泽 / 陶泽慧 ', '8.8', 565, ' 上海三联书店 ', ' 2018-6 ', ' 108.00元',
        '★梁文道、刘瑜、熊培云、许知远联袂主编——“理想国译丛”（MIRROR）系列之一（027）★抽丝剥茧，还原墨索里尼与庇护十一世的利益纠葛；尔虞我诈，真实版...', 0, 's30226265.jpg', NULL);
INSERT INTO `user_book`
VALUES (342, 0, 0, '春秋左传注（全四册）', '杨伯峻 ', '9.6', 1074, ' 中华书局 ', ' 2009-10 ', ' 178.00元',
        '《春秋左传》是我国现存最早的编年体史书，起自鲁隐公元年，迄于鲁哀公二十七年，是学习、研究先秦历史、文学、哲学和语言必读的典籍。作者积数十年之力，对左氏《春秋...', 0, 's4146127.jpg', NULL);
INSERT INTO `user_book`
VALUES (343, 0, 0, '规训与惩罚', '[法] 米歇尔·福柯 / 刘北成、杨远婴 ', '9.2', 5955, ' 生活·读书·新知三联书店 ', ' 2003-1 ', ' 21.80元',
        '本书旨在论述关于现代灵魂与一种新的审判权力之间相互关系的历史，论述现行的科学—法律综合体的系谱。在这种综合体中，惩罚权力获得了自身的基础、证明和规则，扩大了...', 0, 's1012307.jpg', NULL);
INSERT INTO `user_book`
VALUES (344, 0, 0, '世说新语', '<南朝宋>刘义庆 著 / 里望 译注 ', '9.1', 4800, ' 山西古籍出版社 ', ' 2004 ', ' 9', '', 0, 's1147193.jpg',
        NULL);
INSERT INTO `user_book`
VALUES (345, 0, 0, '冰雪王国', '[美] 汉普顿·塞兹 / 马睿 ', '9.3', 1177, ' 社会科学文献出版社 ', ' 2017-4 ', ' 82.00元',
        '1879年7月8日，德隆告别了年轻的妻子，带领美国军舰珍妮特号从旧金山启航了，时逢“北极热”，前来送行的人群欢呼雀跃。德隆领导着33人的团队——带着一个年...', 0, 's26992884.jpg', NULL);
INSERT INTO `user_book`
VALUES (346, 0, 0, '思想史', '[英] 彼得·沃森 / 胡翠娥 ', '8.7', 624, ' 译林出版社 ', ' 2018-1 ', ' 248.00',
        '★一部拒绝“简化”的思想史，一己之力写尽人类智力全貌。★上至直立行走和火的使用，下至粒子物理和精神分析。★突破朝代更迭的撰史常规，思想才是人类进步的基石...', 0, 's27136549.jpg', NULL);
INSERT INTO `user_book`
VALUES (347, 0, 0, '我的应许之地', '[以色列] 阿里·沙维特 / 简扬、有2016年4月3印本 ', '8.2', 3030, ' 中信出版社 ', ' 2016-1 ', ' 68.00元',
        '《我的应许之地》是一部震撼人心的以色列建国史，也是百年来犹太民族的奋斗复兴史。作者阿里•沙维特以自己家族故事为引子，通过亲身经历、深度访谈，历史文献、私人日...', 0, 's25986748.jpg', NULL);
INSERT INTO `user_book`
VALUES (348, 0, 0, '寡头', '[美] 戴维·霍夫曼 / 冯乃祥、李雪顺、胡瑶 ', '8.4', 644, ' 上海译文出版社 ', ' 2018-1 ', ' 88.00',
        '《寡头：新俄罗斯的财富与权力》一书记录了后苏联时代新富阶层的崛起。从1985年戈尔巴乔夫改革开始，一直到普京上台初期，几个最为瞩目的寡头引领俄罗斯进行了前...', 0, 's27593408.jpg', NULL);
INSERT INTO `user_book`
VALUES (349, 0, 0, '五四运动史', '[美]周策纵 / 陈永明、张静 ', '9.3', 364, ' 四川人民出版社 ', ' 2019-7 ', ' 110',
        '史家巨擘弃政从学的心血之作海外汉学界权威的五四研究☉编辑推荐☆研究五四运动、了解近代中国，难以逾越的一部经典著作☆对五四运动的研究，避免了宽泛的宏大...', 0, 's33391323.jpg', NULL);
INSERT INTO `user_book`
VALUES (350, 0, 0, '奥斯曼帝国的衰亡', '[英] 尤金·罗根 / 王阳阳 ', '8.5', 1006, ' 广西师范大学出版社 ', ' 2017-1 ', ' 78.00',
        '本书栩栩如生地重现了第一次世界大战的中东，描写奥斯曼帝国在第一次世界大战中扮演的角色。中东是地缘政治的关键，奥斯曼帝国得到德国金钱、武器和军事顾问的支持，向...', 0, 's26869694.jpg', NULL);
INSERT INTO `user_book`
VALUES (351, 0, 0, '张居正', '熊召政 ', '8.4', 2799, ' 长江文艺出版社 ', ' 2003-06-01 ', ' 28.0',
        '黄仁宇《万历十五年》：“世间已无张居正。”金庸：“我读《张居正》，是迫不急待的先睹为快。”张居正，是明万历年间曾因厉行改革而彪炳史册的一位传奇人物。他荣登首...', 0, 's1082361.jpg', NULL);
INSERT INTO `user_book`
VALUES (352, 0, 0, '马背上的朝廷', '[美]张勉治 / 董建中 ', '8.5', 270, ' 江苏人民出版社 ', ' 2019-10 ', ' 90.00元',
        '乾隆十六年至四十九年（1751—1784），乾隆皇帝六次南巡，往返于北京与江南。满洲皇帝及扈从，深入帝国最富庶、最重要的地区，上演了一场场长达数月之久的政治...', 0, 's33411668.jpg', NULL);
INSERT INTO `user_book`
VALUES (353, 0, 0, '清明上河图密码 2', '冶文彪 ', '8.1', 5012, ' 北京联合出版公司 ', ' 2015-9 ', ' 49.90元',
        '全图824位人物，每个人都有名有姓，佯装、埋伏在舟船车轿、酒肆楼阁中。看似太平盛世，其实杀机四伏。翻开本书，在小贩的叫卖声中，金、辽、西夏、高丽等国的间谍、...', 0, 's26576515.jpg', NULL);
INSERT INTO `user_book`
VALUES (354, 0, 0, '辩论', '[美] 詹姆斯·麦迪逊 ', '9.7', 326, ' 尹宣 ', ' 译林出版社 ', ' 2014-7',
        '1787年费城55位代表127天辩论亲历人类首部成文宪法诞生63万字笔记487条注释100页附录见证原则背后更有妥协隐忍翻译家尹宣先生...', 0, 's25817153.jpg', NULL);
INSERT INTO `user_book`
VALUES (355, 0, 0, '镖人', '许先哲 ', '8.2', 1057, ' 江苏凤凰文艺出版社 ', ' 2020-1 ', ' 42.80元',
        '◆轰动日本的中国漫画！3次登上日本央视NHK电视台新闻报道节目，被日本媒体盛赞为“太阳系级别的中国动漫精品”。◆日本四大报纸之一《每日新闻》、日本知名杂志...', 0, 's34884051.jpg', NULL);
INSERT INTO `user_book`
VALUES (356, 0, 0, '摩根财团', '[美]罗恩·彻诺(Ron Chernow) / 金立群 ', '8.5', 981, ' 江苏文艺出版社 ', ' 2014-4-24 ', ' 198.00',
        '◇关于华尔街，读这本就够！一部恢弘而壮美的华尔街史诗。◇美国图书最高奖“国家图书奖”获奖作品，《福布斯》杂志推荐“20本最具影响力的商业著作”之一。◇美...', 0, 's25844463.jpg', NULL);
INSERT INTO `user_book`
VALUES (357, 0, 0, '昨日的世界', '(奥)斯蒂芬·茨威格 / 舒昌善 ', '9.4', 4228, ' 生活·读书·新知三联书店 ', ' 2010-4 ', ' 29.80元',
        '作者以饱满真挚的感情、平实顺畅的文字叙述了他所认识的特定时期的各种人物，他亲身经历的社会政治事件，他对那个动荡不安的时代的感受，记录了当时欧洲从一战前夜到二...', 0, 's4238162.jpg', NULL);
INSERT INTO `user_book`
VALUES (358, 0, 0, '蒋介石与现代中国', '[美] 陶涵 / 林添贵 ', '8.6', 4411, ' 中信出版社 ', ' 2012-8 ', ' 68.00元',
        '《蒋介石与现代中国》内容简介：一九四九年两岸分治，此后蒋介石的历史评价始终摆脱不掉“丢掉中国的人”。其专制性格，加上白色恐怖的印象，也似乎掩盖了他的复杂功过...', 0, 's10797092.jpg', NULL);
INSERT INTO `user_book`
VALUES (359, 0, 0, '地中海史诗三部曲', '[英] 罗杰·克劳利 / 陆大鹏、张骋 ', '8.9', 575, ' 社会科学文献出版社 ', ' 2017-9 ', ' 258.00元',
        '“地中海史诗三部曲”是英国历史学家罗杰·克劳利创作的关于地中海历史的三部著作的集合，它们分别是《1453：君士坦丁堡之战》、《海洋帝国：地中海大决战》和《财...', 0, 's27055137.jpg', NULL);
INSERT INTO `user_book`
VALUES (360, 0, 0, '如彗星划过夜空', '林达 ', '8.9', 9695, ' 生活·读书·新知三联书店 ', ' 2006-3 ', ' 21.00元',
        '“近距离看美国”之四《如彗星划过夜空》，依旧是以书信形式来表达内容。全书主要分为两部分：一、通过记述发生在1787年美国费城制宪会议前后的一系列故事，梳理美...', 0, 's1762869.jpg', NULL);
INSERT INTO `user_book`
VALUES (361, 0, 0, '为爱成婚', '［美］斯蒂芬妮·孔茨 / 刘君宇 ', '7.7', 122, ' 中信出版集团·见识城邦 ', ' 2020-3-8 ', ' 68',
        '今天，婚姻被人们视为爱情与友谊、性与稳定生活的幸福港湾。但同时，它又常常在现实中给我们带来种种焦虑和痛苦。这种令人沮丧的落差让我们忍不住去探究：什么是婚姻？...', 0, 's34926212.jpg', NULL);
INSERT INTO `user_book`
VALUES (362, 0, 0, '李光耀观天下', '李光耀 ', '9.2', 4297, ' 北京大学出版社 ', ' 2015-6 ', ' 58.00元',
        '★李光耀是亚洲的传奇人物，因为他极强的领导能力和治国才能而倍受尊敬。——潘基文★李光耀对亚洲动态及经济管理的意见及见解，深受世上人尊重。——奥巴马...', 0, 's26413154.jpg', NULL);
INSERT INTO `user_book`
VALUES (363, 0, 0, '中国古代文化常识（插图修订第4版）', '王力 主编、马汉麟 等执笔、姜亮夫 叶圣陶 等审校、刘乐园 修订 ', '9.4', 1155, ' 北京联合出版公司·后浪出版公司 ',
        ' 2014-11 ', ' 60.00元', '◎编辑推荐你知道武王克商的繁复真相么？你知道我们所能见到的有关猫的最早实物么？你知道知名的司母戊鼎有一个假耳朵么？你知道孟姜女姓姜不姓孟么？你知道汉代穿...', 0,
        's26021455.jpg', NULL);
INSERT INTO `user_book`
VALUES (364, 0, 0, '伟大的博弈', '[美] 约翰·S. 戈登 / 祁斌 ', '8.6', 2433, ' 中信出版社 ', ' 2011-1 ', ' 58.00元',
        '这是一本关于华尔街历史的书，也是一本关于美国金融史和经济史的书。它所描述的历史事件使我们清晰地看到，在很大程度上，华尔街推动了美国从一个原始而单一的经济体成...', 0, 's4012143.jpg', NULL);
INSERT INTO `user_book`
VALUES (365, 0, 0, '古文观止', '吴楚材、吴调侯 ', '9.1', 13213, ' 中华书局 ', ' 1987-1-1 ', ' 21.00元',
        '《古文观止》是清康熙年间吴乘权、吴大职编选的一部古文读本，凡十二卷，收录自先秦至明末的散文二百二十二篇，每篇都有注释和评论。据《左传》襄公二十九年记载，吴公...', 0, 's1014561.jpg', NULL);
INSERT INTO `user_book`
VALUES (366, 0, 0, '进击的智人', '河森堡 ', '7.7', 3715, ' 中信出版集团 ', ' 2018-12 ', ' 68.00元',
        '★“特别会讲故事的博物学者”河森堡首部作品。同名演讲《进击的智人》播放量破亿次。★用故事表达人文之趣。国家博物馆讲解员8年知识沉淀，听河森堡讲故事，知...', 0, 's30383694.jpg', NULL);
INSERT INTO `user_book`
VALUES (367, 0, 0, '被淹没与被拯救的', '[意] 普里莫·莱维 / 杨晨光 ', '9.6', 898, ' 中信出版集团 ', ' 2017-10 ', ' 45.00元',
        '◆奥斯维辛最重要的记录者和见证人，意大利国宝级作家，“欧洲最高尚、最不可或缺的作家之一”，卡尔维诺称其为“我们时代最重要、最富有天赋的作家之一”◆莱维的最...', 0, 's27016167.jpg', NULL);
INSERT INTO `user_book`
VALUES (368, 0, 0, '人类群星闪耀时', '[奥]茨威格 / 梁锡江 ', '8.4', 1018, ' 中华书局 ', ' 2017-1 ', ' 35.00元', '', 0, 's26986678.jpg',
        NULL);
INSERT INTO `user_book`
VALUES (369, 0, 0, '鹿鼎记（全五册）', '金庸 ', '8.8', 44478, ' 广州出版社 花城出版社 ', ' 2008-3 ', ' 108.00元',
        '《鹿鼎记》是金庸创作的最后一部小说，也是他最重要的代表作。小说讲的是一个从小在扬州妓院长大的小孩韦小宝，他以不会任何武功之姿态闯江湖各大帮会、周旋皇帝朝臣...', 0, 's1212893.jpg', NULL);
INSERT INTO `user_book`
VALUES (370, 0, 0, '曾国藩传', '萧一山 ', '8.9', 152, ' 湘潭大学出版社 ', ' 2011-4 ', ' 26.80元',
        '《民国四大传记名著•曾国藩传》详细介绍了曾国藩的生平经历和主要事迹，重点记述其镇压太平天国革命运动、捻军起义和处理天津教案、发起洋务运动的过程；深刻透辟地分...', 0, 's5408065.jpg', NULL);
INSERT INTO `user_book`
VALUES (371, 0, 0, '拿破仑大帝', '[英] 安德鲁·罗伯茨（Andrew Roberts） / 苏然 ', '8.7', 489, ' 社会科学文献出版社·甲骨文 ', ' 2016-6-1 ',
        ' 158.00元', '2014年拿破仑基金会评审团大奖拿破仑现代传记的权威之作《拿破仑大帝》是一本关于拿破仑的最新的叙述体传记，作者安德鲁•罗伯茨基于自身的走访、对多国档案的...', 0,
        's26802226.jpg', NULL);
INSERT INTO `user_book`
VALUES (372, 0, 0, '曾国藩家书', '曾国藩 著、唐浩明 点校整理 ', '9.2', 199, ' 岳麓书社 ', ' 2015-6 ', ' 128',
        '曾国藩被誉为立功、立言、立德的卓越“完人”，其写给自己家人的家书因为读者对象的特殊性，因而在笔法上少了诸多顾虑，多了许多真性情，饱含着他的人生哲学、为政治...', 0, 's26419895.jpg', NULL);
INSERT INTO `user_book`
VALUES (373, 0, 0, '大历史',
        '[美] 大卫·克里斯蒂安（David Christian）、辛西娅·斯托克斯·布朗 (Cynthia Stokes Brown)、克雷格·本杰明 (Craig Benjamin) / 刘耀辉 ', '8.5', 682,
        ' 北京联合出版公司·后浪出版公司 ', ' 2016-8-1 ', ' 88.00元',
        '比尔盖茨被本书作者大卫·克里斯蒂安的大历史观念震撼，斥资一千万美元精心打造的在线大历史教学项目→https://school.bighistoryproje...', 0, 's26827546.jpg', NULL);
INSERT INTO `user_book`
VALUES (374, 0, 0, '欧洲中世纪史', '朱迪斯.M.本内特、C·沃伦·霍利斯特 / 杨宁、李韵 ', '8.9', 3213, ' 上海社会科学院出版社 ', ' 2007-11 ', ' 58.00元',
        '本书是欧洲中世纪史研究方面的经典著作，为美国数百所高校采用作为教材。本书的一大特色是C·沃伦·霍利斯特清晰的历史观和动人的教学法，现经朱迪斯·本内特...', 0, 's2326273.jpg', NULL);
INSERT INTO `user_book`
VALUES (375, 0, 0, '抉择', '解玺璋 ', '8.4', 39, ' 天地出版社 ', ' 2020-4 ', ' 58',
        '本书集中描摹了王朝易代之际的知识分子群像，主要集中于明末清初和清末民初两个阶段，包括陈洪绶、傅山、俞理初、黄宗羲、李贽、吕留良、严复、吕碧城、徐世昌等人。作...', 0, 's35012879.jpg', NULL);
INSERT INTO `user_book`
VALUES (376, 0, 0, '历史学与社会理论（第2版）', '[英] 彼得·伯克 / 李康 ', '9.6', 201, ' 上海人民出版社 ', ' 2019-11 ', ' 52.00元',
        '社会理论对历史学家来说有什么用？历史学对社会理论家又有什么用？作为一位杰出的文化史学家，伯克在此书中对这两个乍看简单的问题作了清晰有力、影响深远的回答。这个...', 0, 's34842935.jpg', NULL);
INSERT INTO `user_book`
VALUES (377, 0, 0, '孙子兵法', '孙武 / 郭化若 ', '9.4', 8214, ' 上海古籍出版社 ', ' 2006-7 ', ' 20.00元',
        '《孙子兵法》是我国最古老最杰出的一部兵书，历来备受推崇，研习者辈出不穷。我们现在能见到的最早为《孙子兵法》作注的乃一代枭雄曹操，字里行间不乏曹操的真知灼见。...', 0, 's1949420.jpg', NULL);
INSERT INTO `user_book`
VALUES (378, 0, 0, '曾国藩（上中下）', '唐浩明 ', '8.6', 6666, ' 人民文学出版社 ', ' 2002-7 ', ' 66.00元',
        '长篇历史小说《曾国藩》既写曾国藩的文韬武略，也写他的待人处民与生活态度；既写他的困厄与成功，也写他的得宠与失宠。曾国藩制胜的兵法、治军行政的方针，他独特的人...', 0, 's1037060.jpg', NULL);
INSERT INTO `user_book`
VALUES (379, 0, 0, '中央帝国的哲学密码', '郭建龙 ', '8.2', 1567, ' 鹭江出版社 ', ' 2018-8 ', ' 78.00元',
        '另有新书《中央帝国的军事密码》将于2019年9月出版，敬请期待。豆瓣链接见→https://book.douban.com/subject/3345487...', 0, 's30276702.jpg', NULL);
INSERT INTO `user_book`
VALUES (380, 0, 0, '鬼谷子', '许富宏  译注 / 许富宏 注释 ', '8.9', 1829, ' 中华书局 ', ' 2011-12 ', ' 15.00元',
        '《鬼谷子》是人类文明“轴心时代”产生的一部奇书，其思想内容十分丰富，涵盖了哲学、政治学、军事学、心理学、社会学、文学、情报学等多种学科，是一部可以被广泛解...', 0, 's10488580.jpg', NULL);
INSERT INTO `user_book`
VALUES (381, 0, 0, '记忆之场', '[法]皮埃尔·诺拉 / 黄艳红 等 ', '9.6', 10, ' 南京大学出版社 ', ' 2020-1 ', ' 128元',
        '*当代法国史学界里程碑式的历史著作。*1993年法国最高国家学术奖——法兰西学术院戈贝尔大奖获奖作品。*2016年傅雷翻译出版奖入围作品。*“lieu...', 0, 's33461969.jpg', NULL);
INSERT INTO `user_book`
VALUES (382, 0, 0, '田园诗与狂想曲', '秦晖、金雁 ', '9.3', 1059, ' 语文出版社 ', ' 2010-1 ', ' 38.00元',
        '本书为我国著名思考型学者秦晖的成名之作，初版于1996年。作者以七十年前毛泽东与梁漱溟之间一次有关中国社会是否存在阶级对立问题的争论为契机，从分析旧中国“...', 0, 's4243276.jpg', NULL);
INSERT INTO `user_book`
VALUES (383, 0, 0, '茶在中国', '[加]贝剑铭 (James A.Benn) / 朱慧颖 ', '7.8', 83, ' 中国工人出版社 ', ' 2019-12 ', ' 68.00元',
        '《茶在中国：一部宗教与文化史》跨越了宗教研究与文化史的界限，广征博引——诗歌、历史记录、仪式文献、禅苑清规——其中有许多材料是首次被翻译或分析。《茶在中国...', 0, 's34923177.jpg', NULL);
INSERT INTO `user_book`
VALUES (384, 0, 0, '拉丁美洲被切开的血管', '[乌拉圭] 爱德华多·加莱亚诺 / 王玫 等 ', '8.2', 755, ' 南京大学出版社 ', ' 2018-12 ', ' 79.00元',
        '★梁文道、刘瑜、熊培云、许知远联袂主编——“理想国译丛”（MIRROR）系列之一（033）——保持开放性的思想和非功利的眼睛，看看世界的丰富性与复杂性。掀开...', 0, 's30335758.jpg', NULL);
INSERT INTO `user_book`
VALUES (385, 0, 0, '日本史', '詹姆斯·L.麦克莱恩 (James L.McClain) / 王翔 ', '8.7', 375, ' 海南出版社 ', ' 2014-6 ', ' 88.00元',
        '了解日本的近代历史，此一本书足以。本书每章都附有年表，最后还有中日历史大事年表对照，曾畅销多年，在读者中口碑极佳，是了解日本历史的经典之作。', 0, 's25919531.jpg', NULL);
INSERT INTO `user_book`
VALUES (386, 0, 0, '明朝那些事儿(增补版)(套装共9册)', '当年明月 ', '9.1', 1045, ' 北京联合出版公司 ', ' 2017-5-1 ', ' 297.00元',
        '《明朝那些事儿(增补版)(套装共9册)》包括：《明朝那些事儿（第1部）》、《明朝那些事儿（第2部）》、《明朝那些事儿（第3部）》、《明朝那些事儿（第4部）》...', 0, 's27127895.jpg', NULL);
INSERT INTO `user_book`
VALUES (387, 0, 0, '现代世界体系（四卷本）', '[美]伊曼纽尔•沃勒斯坦 / 郭方等 ', '9.1', 82, ' 社会科学文献出版社 ', ' 2013-11 ', ' 489.00元',
        '【社科文献精品译库之《现代世界体系》（四卷本）】《现代世界体系》是伊曼纽尔•沃勒斯坦颇具影响力的多卷本著作，对全球史进行了重新阐释，将现代世界的产生和发展...', 0, 's25763756.jpg', NULL);
INSERT INTO `user_book`
VALUES (388, 0, 0, '逼近的瘟疫', '［美］劳里·加勒特 / 杨岐鸣、杨宁 ', '8.4', 534, ' 生活·读书·新知三联书店 ', ' 2017-1 ', ' 49.00',
        '在这本如惊悚小说一般让人紧张不已的纪实作品中，作者以令人信服的口吻告诉大家：人类在与瘟疫的战争中打了败仗。反观此书问世的几十年间，艾滋病已从非洲和美国爆发...', 0, 's26968920.jpg', NULL);
INSERT INTO `user_book`
VALUES (389, 0, 0, '中国哲学简史', '冯友兰 / 赵复三 ', '8.9', 14797, ' 新世界出版社 ', ' 2004-1 ', ' 38.00元',
        '作者冯友兰于1947年在美国宾夕法尼亚大学受聘担任讲座教授，讲授中国哲学史。其英文讲稿后经整理写成《中国哲学简史》，于1948年由美国麦克米兰公司出版。此书...', 0, 's1021273.jpg', NULL);
INSERT INTO `user_book`
VALUES (390, 0, 0, '来自纳粹地狱的报告', '[匈]米克洛斯·尼斯利 / 刘建波 ', '8.9', 1008, ' 北京联合出版公司 ', ' 2015-9 ', ' 32.00元',
        '1944年，纳粹德国占领匈牙利，米克洛斯·尼斯利一家被遣送至奥斯维辛集中营。尼斯利曾在德国学习医学，后来成为一名法医。在集中营的“筛选”中，尼斯利被迫担任“...', 0, 's26586326.jpg', NULL);
INSERT INTO `user_book`
VALUES (391, 0, 0, '海洋与文明', '[美] 林肯·佩恩 / 陈建军、罗燚英 ', '8.2', 961, ' 天津人民出版社 ', ' 2017-4 ', ' 128.00元',
        '一部海洋视角的世界史，一部关于航海者的史诗本书荣获美国《选择》杂志2014年度“杰出学术著作奖”………………※媒体推荐※尽管地球表面的70%都被水覆...', 0, 's27000152.jpg', NULL);
INSERT INTO `user_book`
VALUES (392, 0, 0, '这辈子', '高彩云（口述 ）、赵丽君（笔录）、杨扬（整理） ', '9.2', 40, ' 四川文艺出版社 ', ' 2020-4 ', ' 45.00',
        '人活百年，看到的世界有何不同？本书是由一位百岁老人口述自己经历、孙女加以记录编纂的故事集。本书讲述了上个世纪动荡的历史中老人所属的江苏双沟镇高氏家族的兴...', 0, 's34994064.jpg', NULL);
INSERT INTO `user_book`
VALUES (393, 0, 0, '中国古代服饰研究', '沈从文 ', '9.1', 914, ' 上海书店出版社 ', ' 2005-05 ', ' 50.00',
        '服饰是民族文化的重要组成部分，又是历史发展和社会时尚嬗替的标志之一。《中国古代服饰研究》(世纪文库)文字清丽，斐然可读，插图丰富，多为珍品，是一部深受专家...', 0, 's1315258.jpg', NULL);
INSERT INTO `user_book`
VALUES (394, 0, 0, '华杉讲透孙子兵法', '华杉 ', '8.9', 2471, ' 江苏文艺出版社 ', ' 2015-4 ', ' 39.80元',
        '这回彻底读懂《孙子兵法》！通俗通透解读经典战例，逐字逐句讲透兵法原意。《孙子兵法》6111字，似乎每个字都艰深玄奥，让很多人望而却步；其实，只要抓住兵法的...', 0, 's26354200.jpg', NULL);
INSERT INTO `user_book`
VALUES (395, 0, 0, '人皮论语', '冶文彪 ', '8.6', 2386, ' 作家出版社 ', ' 2011-1-1 ', ' 28.00元',
        '中国文化第一历史悬案西汉景帝末年，孔子旧宅墙壁中发掘出一批古简，其中有一部孤本古文《论语》，无比珍贵，世称《孔壁论语》。孔子十一世孙孔安国将之献入宫中，虽...', 0, 's5390091.jpg', NULL);
INSERT INTO `user_book`
VALUES (396, 0, 0, '美国增长的起落', '[美]罗伯特·戈登 / 张林山、刘现伟、孙凤仪 ', '8.8', 422, ' 中信出版集团 ', ' 2018-5 ', ' 128.00元',
        '在1870年至1970年的一个世纪里，一场经济变革席卷美国，使美国人民的生活水平空前提高。内燃机、电力、电灯、室内管道、汽车、电话、飞机、空调、电视等一系列...', 0, 's27156012.jpg', NULL);
INSERT INTO `user_book`
VALUES (397, 0, 0, '清明上河图密码4', '冶文彪 ', '8.8', 3397, ' 北京联合出版公司 ', ' 2017-6-1 ', ' 58.00',
        '全图824位人物，每个人都有名有姓，佯装、埋伏在舟船车轿、酒肆楼阁中。看似太平盛世，其实杀机四伏。翻开本书，在小贩的叫卖声中，金、辽、西夏、高丽等国的间谍、...', 0, 's27025036.jpg', NULL);
INSERT INTO `user_book`
VALUES (398, 0, 0, '中国通史', '吕思勉 ', '8.7', 992, ' 陕西师范大学出版社 ', ' 2010-4-1 ', ' 38.00元',
        '《中国通史》是吕思勉先生在抗日战争时期上海成为“孤岛”的时候，为适应当时大学教学的需要而编写的。一经出版，畅销数十年，成为读者了解中国历史的最佳读物。《中国...', 0, 's4767483.jpg', NULL);
INSERT INTO `user_book`
VALUES (399, 0, 0, '大英博物馆世界简史（全3册）', '[英] 尼尔·麦格雷戈 / 余燕 ', '9.2', 3078, ' 新星出版社 ', ' 2014-1 ', ' 108.00元',
        '◎从大英博物馆800万件馆藏中精选100件藏品/讲述人类200万年历史◎大英博物馆、英国国家广播公司（BBC）联手打造◎大英博物馆馆长尼尔•...', 0, 's25746578.jpg', NULL);
INSERT INTO `user_book`
VALUES (400, 0, 0, '中国历代政治得失', '钱穆 ', '9.7', 404, ' 生活·读书·新知三联书店 ', ' 2018-10 ', ' 40.00元',
        '《中国历代政治得失》为作者的专题演讲合集，分别就中国汉、唐、宋、明、清五代的政府组织、百官职权、考试监察、财经赋税、兵役义务等种种政治制度作了提要勾玄的概观...', 0, 's30206893.jpg', NULL);
INSERT INTO `user_book`
VALUES (401, 0, 0, '德国', '[英] 尼尔·麦格雷戈 / 博望 ', '9.6', 164, ' 重庆大学出版社 ', ' 2019-6-20 ', ' 198.00元',
        '一部国家史，一部民族史。六大部分，三十个主题，建筑、雕塑、绘画、瓷器、啤酒、香肠、汽车、货币……以“物”串连起德国政治、文化、艺术等数百年历史变迁。在过...', 0, 's30354900.jpg', NULL);
INSERT INTO `user_book`
VALUES (402, 0, 0, '十二幅地图中的世界史', '[英] 杰里·布罗顿（Jerry Brotton） / 林盛 ', '8.4', 1189, ' 浙江人民出版社 ', ' 2016-6-1 ', ' 99.80元',
        '【BBC纪录片】地图：权力掠夺和占有地图专家、《十二幅地图中的世界史》作者杰里·布罗顿（JerryBrotton）教授向我们揭示地图的奥秘——地图是如...', 0, 's26816981.jpg', NULL);
INSERT INTO `user_book`
VALUES (403, 0, 0, '枪炮、病菌与钢铁', '贾雷德·戴蒙德 / 谢延光 ', '8.7', 2176, ' 上海译文出版社 ', ' 2014-8 ', ' 68.00',
        '为什么小麦和玉米、牛和猪以及现代世界的其他一些“了不起的”作物和牲畜出现在特定地区，而不是出现在其他地区？人们对这个问题的理解至今仍停留在依稀隐约之间。诚然...', 0, 's25902448.jpg', NULL);
INSERT INTO `user_book`
VALUES (404, 0, 0, '霍布斯鲍姆年代四部曲（套装共4册）', '[英] 艾瑞克·霍布斯鲍姆 / 贾士蘅、张晓华、郑明萱、王章辉 等 ', '9.2', 198, ' 中信出版社 ', ' 2017-8-1 ',
        ' 362.00', '《见识丛书·年代四部曲》（套装共4册）是公认的“现代世界史的佳入门读物”，史学大师艾瑞克·霍布斯鲍姆历30余年而成的心血巨著，全面展现了从1789年至199...', 0,
        's27106738.jpg', NULL);
INSERT INTO `user_book`
VALUES (405, 0, 0, '大英博物馆世界简史', '[英] 尼尔·麦格雷戈 / 余燕 ', '9.0', 643, ' 新星出版社 ', ' 2017-11-1 ', ' 168.00元',
        '《大英博物馆世界简史》由大英博物馆和英国国家广播公司（BBC）联合打造，由大英博物馆馆长尼尔·麦格雷戈亲自撰写，一共动员100多名馆员、400多名专家，编撰...', 0, 's27121473.jpg', NULL);
INSERT INTO `user_book`
VALUES (406, 0, 0, '论个人在历史上的作用问题', '[俄] 普列汉诺夫 / 王荫庭 ', '8.7', 326, ' 商务印书馆 ', ' 2010-12 ', ' 15.00元',
        '《论个人在历史上的作用问题》主要内容简介：我馆历来重视移译世界各国学术名著。从20世纪50年代起，更致力于翻译出版马克思主义诞生以前的古典学术著作，同时适当...', 0, 's6023969.jpg', NULL);
INSERT INTO `user_book`
VALUES (407, 0, 0, '中國通史', '伊藤道治/等著 / 吳密察/等譯 ', '8.3', 333, ' 稻鄉出版社 ', ' 1990 ', ' NT480',
        '這本《中國通史》是自1977年日本講談社出版之「新書東洋史」中，選出前四冊譯出彙編而成（分別為伊藤道治《中国社会の成立》、谷川道雄《世界帝国の形成》、竺沙雅...', 0, 's3009401.jpg', NULL);
INSERT INTO `user_book`
VALUES (408, 0, 0, '奥斯曼帝国', '林佳世子 / 钟放 ', '8.0', 67, ' 北京日报出版社 ', ' 2020-1 ', ' 84.00',
        '14世纪初的游牧小国，一跃成为囊括巴尔干半岛、阿拉伯世界和北非的大帝国。1453年，它攻陷君士坦丁堡，灭亡存在千年的拜占庭帝国；1529年，它陈兵维也纳城下...', 0, 's34869429.jpg', NULL);
INSERT INTO `user_book`
VALUES (409, 0, 0, '鹤唳华亭', '雪满梁园 ', '8.3', 4057, ' 百花洲文艺出版社 ', ' 2014-9-1 ', ' 49.80元',
        '吴绫蜀锦，绮年玉貌，一人之下，万人之上。幼失所恃，兄弟阋墙，父子相忌，君臣倒戈。权力之下，何枝可依？离恨之间，何情可托？遇上你，并非我之所愿。既已遇...', 0, 's25963518.jpg', NULL);
INSERT INTO `user_book`
VALUES (410, 0, 0, '如果故宫会说话', '杨原 ', '7.4', 164, ' 社会科学文献出版社 ', ' 2020-4 ', ' 68.80元',
        '✯一本解密清宫秘闻，故宫打卡必备宝典！1、作者长期致力于明清史研究，多年研读清宫档案等一手资料，独家解密，权威可靠。作为《上新了！故宫》等电视节目的历史...', 0, 's35013926.jpg', NULL);
INSERT INTO `user_book`
VALUES (411, 0, 0, '历史的温度2', '馒头大师（张玮） ', '7.7', 1643, ' 中信出版社 ', ' 2018-2-1 ', ' 49.00',
        '尼古拉•特斯拉，到底是神还是人？抗战期间，整个国家只剩两架轰炸机了，为什么还是要轰炸日本？真实的潜伏，究竟是什么样？……史书上的一段话、一个名字，甚至一张...', 0, 's27945076.jpg', NULL);
INSERT INTO `user_book`
VALUES (412, 0, 0, '无敌舰队', '[美] 加勒特·马丁利 / 杨盛翔 ', '8.6', 1224, ' 民主与建设出版社 ', ' 2017-12 ', ' 92.00元',
        '普利策奖获奖历史著作非虚构历史写作典范………………普利策奖颁奖辞——本书是一流的历史作品，同时也是高超的文学作品。………………※编辑推荐※☆史料...', 0, 's27172829.jpg', NULL);
INSERT INTO `user_book`
VALUES (413, 0, 0, '传统十论', '秦晖 ', '9.6', 179, ' 山西人民出版社 ', ' 2019-10 ', ' 88.00元',
        '◎《传统十论》是著名历史学家秦晖治学经历中对“传统社会”（近代以前的社会）研究第三阶段的产物，自问世以来，多次重印，备受读者推崇。◎本次再版，增加增订版序...', 0, 's34788663.jpg', NULL);
INSERT INTO `user_book`
VALUES (414, 0, 0, '陆犯焉识', '严歌苓 / 有2014年5月5印本 ', '8.8', 10201, ' 作家出版社 ', ' 2014-5 ', ' 38.00元',
        '陆焉识本是上海大户人家才子+公子型的少爷，聪慧而倜傥，会多国语言，也会讨女人喜欢。父亲去世后，年轻无嗣的继母冯仪芳为了巩固其在家族中的地位，软硬兼施地使他娶...', 0, 's25882276.jpg', NULL);
INSERT INTO `user_book`
VALUES (415, 0, 0, '唐朝穿越指南', '森林鹿 ', '7.7', 7526, ' 北京联合出版公司 ', ' 2013-1-1 ', ' 35.00',
        '天涯头条推荐，“考据派”眼中的唐朝真相。如果有一天，您一睁眼发现自己穿越到了唐朝——不要惊慌，来，拿起这本《唐朝穿越指南》：先过了语言关，学几句中古汉语...', 0, 's20389202.jpg', NULL);
INSERT INTO `user_book`
VALUES (416, 0, 0, '南北战争三百年', '李硕 / 世纪文景 ', '8.1', 1152, '上海人民出版社 ', ' 2018-1 ', ' 59.00元',
        '冷兵器战争究竟怎么打？写兵种、战术之细节补正史、古籍之缺失揭六朝更迭种种真相述血与剑的纷争乱世我们通常对古代战争的想象都源自演义、小说等文学作品，...', 0, 's28135034.jpg', NULL);
INSERT INTO `user_book`
VALUES (417, 0, 0, '世界秩序', '亨利·基辛格 (Henry Kissinger) / 胡利平 ', '8.4', 2418, ' 中信出版集团股份有限公司 ', ' 2015-8-1 ', ' CNY 68.00',
        '21世纪全球政治和经济版图发生着怎样的深刻变化？后危机时代，在国际事务上呈现出哪些新的挑战？中美大国关系迎来怎样新的格局和趋势？中国又该如何抓住战略机...', 0, 's26435040.jpg', NULL);
INSERT INTO `user_book`
VALUES (418, 0, 0, '历史', '[古希腊]希罗多德 (Herodotus) / 徐松岩/译注 ', '9.2', 222, ' 上海人民出版社 ', ' 2018-4 ', ' 148.00元',
        '人类壮举与斗争的首部记录所知世界各民族的全部真知希罗多德被誉为“历史之父”，他首创的历史叙述体例、开阔的世界观和持平的民族观，以及史料搜集和批判的精...', 0, 's27624429.jpg', NULL);
INSERT INTO `user_book`
VALUES (419, 0, 0, '国史大纲（上下册）', '钱穆 ', '9.3', 1144, ' 商务印书馆 ', ' 2010-12-1 ', ' 92.00元',
        '《国史大纲(繁体竖排版)(套装上下册)》内容简介：百年前，张之洞尝劝学日：“世运之明晦，人才之盛衰，其表在政，其裹在学。”是时，国势颓危，列强环伺，传统频遭...', 0, 's6004630.jpg', NULL);
INSERT INTO `user_book`
VALUES (420, 0, 0, '宋案重审', '尚小明 ', '9.2', 571, ' 社会科学文献出版社 ', ' 2018-2 ', ' 89.00元',
        '——“过去一百年的宋案研究史，其实是一部失败的历史。”··北大知名教授尚小明力作··90%的材料为以往宋案研究者不曾利用，其中相当部分系首次公开。...', 0, 's30127132.jpg', NULL);
INSERT INTO `user_book`
VALUES (421, 0, 0, '易中天中华史', '易中天 ', '8.2', 1301, ' 浙江文艺出版社,北京出版社 ', ' 2013-5-1 ', ' CNY 186.00',
        '《易中天中华史第一部:中华根(套装共7卷)》是当今中国知名度最高、影响力最大的学者易中天，以颠覆传统史学著作的写作方法，优美诗意的语言、独特创新的全球视角创...', 0, 's25819260.jpg', NULL);
INSERT INTO `user_book`
VALUES (422, 0, 0, '毛泽东早期文稿', '中共中央文献研究室、中共湖南省委《毛泽东早期文稿》编辑组 ', '9.7', 76, ' 湖南人民出版社 ', ' 2020-3-15 ', ' 98.00元',
        '本书收集整理了目前存留下来的1912年至1920年期间有关毛泽东的全部文稿共152篇。文稿体裁繁多，有文章、书信、诗词、读书批注、日志、纪事录、谈话、广告、...', 0, 's34995678.jpg', NULL);
INSERT INTO `user_book`
VALUES (423, 0, 0, '东周列国志', '（明）冯梦龙 著 / （清）蔡元放 改编 ', '9.1', 1434, ' 中华书局 ', ' 2009-1 ', ' 32.00元',
        '“羽翼信史而不违”，是古代文学评论家所认同的历史演义小说的最高境界。中国历史小说中，真正能达到这一境界的，也许只有《东周列国志》了。这部煌煌一百零八回的小说...', 0, 's3409620.jpg', NULL);
INSERT INTO `user_book`
VALUES (424, 0, 0, '中国历史地图集（全八册）', '谭其骧 ', '9.6', 1302, ' 中国地图出版社 ', ' 1982-10 ', ' 482.00元',
        '《中国历史地图集(1-8)》按历史时期分为8册：第一册：原始社会·夏·商·西周·春秋·战国时期第二册：秦·西汉·东汉时期第三册：三国·西晋时期第四册...', 0, 's1055304.jpg', NULL);
INSERT INTO `user_book`
VALUES (425, 0, 0, '生死场', '萧红 ', '8.2', 12443, ' 人民文学出版社 ', ' 2005-5-1 ', ' 11.00',
        '《生死场》是萧红一部传世的经典名篇，它对人性、人的生存这一古老的问题进行了透彻而深邃的诠释。这种对人生的生存死亡的思索，超出了同时代的绝大部分作家。鲁迅称它...', 0, 's1317899.jpg', NULL);
INSERT INTO `user_book`
VALUES (426, 0, 0, '牛棚杂忆', '季羡林 ', '8.4', 6072, ' 中共中央党史出版社 ', ' 2005-1 ', ' 29.00元',
        '《牛棚杂忆》是季羡林对文革时期的一本回忆录，他以幽默甚至是调侃的笔调讲述自己在“文革”中的不幸遭遇。此书对“文革”的残酷性揭露的让人不寒而栗。他出书的目的就...', 0, 's1062423.jpg', NULL);
INSERT INTO `user_book`
VALUES (427, 0, 0, '从俾斯麦到希特勒', '[德] 塞巴斯提安·哈夫纳 / 周全 ', '8.9', 974, ' 译林出版社 ', ' 2015-12 ', ' 42.00',
        '《从俾斯麦到希特勒》是德国政论大师级现代史学家塞巴斯蒂安•哈夫纳晚年的著作，被德国舆论界誉为“哈夫纳留给后世的遗产”。他以时代见证者的身份口述这部遗产时，仿...', 0, 's26647781.jpg', NULL);
INSERT INTO `user_book`
VALUES (428, 0, 0, '苦难辉煌（全新修订增补版）', '金一南 ', '8.5', 679, ' 作家出版社 ', ' 2015-6-1 ', ' 68.00元',
        '本书是《苦难辉煌》一书的全新修订增补纪念版。20世纪在世界东方，最激动人心与震撼人心的，莫过于中华民族从东亚病夫到东方巨龙、从百年沉沦到百年复兴这一历史命...', 0, 's26387790.jpg', NULL);
INSERT INTO `user_book`
VALUES (429, 0, 0, '战国策', '刘向、宋韬 （译注） ', '9.1', 1780, ' 山西古籍出版社 ', ' 2003-1-1 ', ' 10.0',
        '《战国策》简称《国策》。相传原系战国时期各国史官或策士辑录，有《国策》、《国事》《事语》、《短长》、《长书》等不同名称。这部书主要记载当时谋臣、策士游说各...', 0, 's1107841.jpg', NULL);
INSERT INTO `user_book`
VALUES (430, 0, 0, '丝绸之路新史', '[美]芮乐伟·韩森（Valerie Hansen) / 张湛 ', '8.2', 1018, ' 北京联合出版公司 ', ' 2015-8 ', ' 49.80元',
        '【名人推荐】丝绸之路是一条传说中在中古时期横穿欧亚大陆中心的商路，韩森的《丝绸之路新史》是对这个话题最可读和最可信赖的历史描述。作者在原始文献和优秀学术成...', 0, 's26426959.jpg', NULL);
INSERT INTO `user_book`
VALUES (431, 0, 0, '致命流感', '[美] 杰瑞米·布朗 / 王晨瑜 ', '8.4', 401, ' 社会科学文献出版社 ', ' 2020-3 ', ' 69.00元',
        '流感为什么难以治愈？病毒如何变异、传播和致病？是流感本身更致命，还是流感导致的社会恐慌更致命？流感为什么有季节性？哪些因素影响流感的暴发？在对抗流感...', 0, 's34949339.jpg', NULL);
INSERT INTO `user_book`
VALUES (432, 0, 0, '宅兹中国', '葛兆光 ', '8.3', 2415, ' 中华书局 ', ' 2011-2-1 ', ' 39.00元',
        '这本书讨论“世界”“东亚”与“中国”、“学术”与“政治”、“认同”与“拒斥”、“国别史”与“区域史”这样一些大问题。', 0, 's5988185.jpg', NULL);
INSERT INTO `user_book`
VALUES (433, 0, 0, '黑暗时代的爱', '[爱尔兰] 科尔姆·托宾 / 柏栎 ', '7.5', 310, ' 人民文学出版社 ', ' 2020-1 ', ' 59.00元',
        '在《黑暗時代的爱情》一书中，科尔姆·托宾回顾十九和二十世纪一些最伟大、最有影响力的艺术家的生活和工作。他的研究对象从1850年代出生的奥斯卡·王尔德（Osc...', 0, 's34826151.jpg', NULL);
INSERT INTO `user_book`
VALUES (434, 0, 0, '毛泽东选集 第五卷', '毛泽东 ', '8.4', 1872, ' 人民出版社 ', ' 1977年4月 ', ' 1.25元',
        '在我们的国家里，鉴别资产阶级及资产阶级知识分子在政治上的真假善恶，有几个标准。主要是看人们是否真正要社会主义和真正接受共产党的领导。这两条，他们早就承认了，...', 0, 's1916533.jpg', NULL);
INSERT INTO `user_book`
VALUES (435, 0, 0, '众病之王', '[美] 悉达多·穆克吉 / 李虎 ', '9.1', 7890, ' 中信出版社 ', ' 2013-2-4 ', ' 42.00元',
        '《众病之王：癌症传》是一部饱含人文主义色彩的社科文化著作。作者悉达多•穆克吉历时六年，凭借翔实的历史资料、专业文献、媒体报道、患者专访等众多信息，向读者阐述...', 0, 's20507206.jpg', NULL);
INSERT INTO `user_book`
VALUES (436, 0, 0, '长安与河北之间', '仇鹿鸣 ', '9.2', 602, ' 北京师范大学出版社 ', ' 2018-11-1 ', ' 78.00元',
        '布罗代尔认为，“在谈到各个帝国和它们的兴衰的时侯，也许应该注意到促使这些国家诞生的命运，也就是说，不要混淆时期，不要过早去察觉那些与日俱增后来变得强大的事物...', 0, 's30386618.jpg', NULL);
INSERT INTO `user_book`
VALUES (437, 0, 0, '三国史话', '吕思勉 ', '8.5', 2353, ' 中华书局 ', ' 2009-6-8 ', ' 16.00元',
        '本书是历史学家吕思勉先生生前所写的惟一一部通俗性的史学著作。作者以丰富的历史知识为基础，从文学和史学的角度，对三国史上存在过的与三国文学中塑造的人物、事件、...', 0, 's3787085.jpg', NULL);
INSERT INTO `user_book`
VALUES (438, 0, 0, '成吉思汗与今日世界之形成', '[美] 杰克·威泽弗德 / 温海清、姚建根 ', '8.3', 889, ' 重庆出版社 ', ' 2017-9-1 ', ' 59.80元',
        '在全球视野中探寻古老部落首领与现代世界的历史关联【编辑推荐】☆世界秩序因他而改变，人类的世界观因他而升华。☆以人类学的眼光和说故事的独特方式重新诠...', 0, 's27119171.jpg', NULL);
INSERT INTO `user_book`
VALUES (439, 0, 0, '黄河青山', '[美] 黄仁宇 / 张逸安 ', '8.4', 3624, ' 生活·读书·新知三联书店 ', ' 2007-2 ', ' 32.00元',
        '《黄河青山》是规模宏大的回忆录，从作者早年的从军经历到壮年时期在美国打工、求学、无所不包；本书又是一部眼光非凡的“大历史”，检讨中国近代革命，统摄几千年的中...', 0, 's1051231.jpg', NULL);
INSERT INTO `user_book`
VALUES (440, 0, 0, '纵乐的困惑', '【加】卜正民 / 方骏、王秀丽、罗天佑 ', '8.4', 961, ' 广西师范大学出版社 ', ' 2016-10 ', ' 49.80',
        '《纵乐的困惑》是著名汉学家卜正民的代表作，也是海外汉学的经典之作，曾获得2000年的列文森奖。明中晚期的中国经历了一次经济变革，商业的蓬勃发展，促使社会、...', 0, 's26876054.jpg', NULL);
INSERT INTO `user_book`
VALUES (441, 0, 0, '秦崩', '李开元 ', '8.0', 2051, ' 生活·读书·新知三联书店 ', ' 2015-4-25 ', ' 45.00',
        '统一六国的秦始皇嬴政和汉帝国的创建者刘邦，像是隔代的两位开国君主，其实仅相差三岁，他们都是从战国衰世走出来的同一代人。秦始皇驾崩时，刘邦四十七岁，从泗水亭长...', 0, 's26368070.jpg', NULL);
INSERT INTO `user_book`
VALUES (442, 0, 0, '德国人', '[德]埃米尔·路德维希 / 杨成绪、潘琪 ', '8.2', 94, ' 新经典 | 文汇出版社 ', ' 2019-10 ', ' 108.00元',
        '☆20世纪最伟大的传记作家之一为德国人作传☆一本书读懂德国人的浪漫与暴力、理智与狂热☆演绎德国人千年盛衰史，讲述一部不断重复悲剧和充满讽刺的历史·德...', 0, 's27156274.jpg', NULL);
INSERT INTO `user_book`
VALUES (443, 0, 0, '美国海：墨西哥湾的历史', '[美]杰克·E.戴维斯 / 丘梦晨 ', '8.0', 20, ' 索·恩| 社会科学文献出版社 ', ' 2020-2 ', ' 96.00',
        '西班牙人发现了墨西哥湾，法国人从那里找到了密西西比河的入口，英国人开始在地图上描摹它。现在，它是美国的海。.这是继贾雷德•戴蒙德的《崩溃》和西蒙•温彻斯...', 0, 's34889903.jpg', NULL);
INSERT INTO `user_book`
VALUES (444, 0, 0, '大明王朝1566', '刘和平 ', '9.1', 3663, ' 人民文学出版社 ', ' 2007-1-1 ', ' 59.00元',
        '揭开中国历史上最另类的皇帝嘉靖数十年不上朝的执政之谜揭示中国历史上清官海瑞以“智忠”代“愚忠”的为官之道揭露清修明史列为奸臣之最首辅严嵩权极而衰的真相...', 0, 's1982427.jpg', NULL);
INSERT INTO `user_book`
VALUES (445, 0, 0, '记忆的性别', '[美] 贺萧（Gail Hershatter） / 张赟 ', '9.1', 754, ' 人民出版社 ', ' 2017-4-1 ', ' CNY 88.00',
        '20世纪五六十年代，集体化给中国农村带来了巨大变化，后世著作也对此多有研究论述。然而，中国女性，特别是农村女性，却对此鲜有发声。本书开创性地从性别研究和集体...', 0, 's27030380.jpg', NULL);
INSERT INTO `user_book`
VALUES (446, 0, 0, '拜占庭帝国史', '[美]A.A.瓦西列夫 / 徐家玲 ', '9.4', 179, ' 商务印书馆 ', ' 2019-1-1 ', ' 138.00',
        '研究拜占庭的权威之作，拜占庭的历史百科全书。本书作者亚历山大·亚历山德罗维奇·瓦西列夫是国际历史学界公认的、20世纪中期以来最权威的拜占庭历史和文化研究者...', 0, 's30322990.jpg', NULL);
INSERT INTO `user_book`
VALUES (447, 0, 0, '波兰史', '[英] 亚当·扎莫伊斯基 / 郭大成 ', '8.6', 252, ' 中国友谊出版公司 ', ' 2019-9 ', ' 88.00元',
        '客观讲述波兰千年不屈不折的沧桑历史波兰共和国外交部长作序推荐◎编辑推荐☆内容涵盖梅什科一世开创波兰王国，至波兰重新统一走入现代☆英国波兰裔历史作家...', 0, 's34393750.jpg', NULL);
INSERT INTO `user_book`
VALUES (448, 0, 0, '治史三书', '严耕望 ', '9.2', 1270, ' 上海人民出版社 ', ' 2011-6 ', ' 36.00元',
        '《治史三书》作者严耕望享誉国际史坛，是钱穆最欣赏的学生，胡适、杨联陞一致称许的史学大家，余英时誉之为中国史学界的朴实楷模。本书汇集了严耕望先生的三本小书《治...', 0, 's6100919.jpg', NULL);
INSERT INTO `user_book`
VALUES (449, 0, 0, '资治通鉴', '司马光 / 沈志华、张宏儒 ', '9.7', 530, ' 中华书局 ', ' 2013-1 ', ' 788.00元',
        '资治通鉴（文白对照全十八册），ISBN：9787101067163，作者：（宋）司马光编撰，沈志华，张宏儒主编', 0, 's3746915.jpg', NULL);
INSERT INTO `user_book`
VALUES (450, 0, 0, '麻風醫生與巨變中國', '劉紹華 ', '8.9', 110, ' 春山出版 ', ' 2018-10-11 ', ' NT 520',
        '我不僅從麻風患者身上學到生命的韌性，也從醫師與救助者身上學到可貴的人性。在漫長的研究與書寫過程中，我發展出了一種信仰，我不知道它與宗教是否相似。我將自己當成...', 0, 's34833764.jpg', NULL);
INSERT INTO `user_book`
VALUES (451, 0, 0, '言论的边界', '[美] 安东尼·刘易斯 / 徐爽 ', '8.6', 1839, ' 法律出版社 ', ' 2010-5 ', ' 25.00元',
        '本书作者以理性客观的视角和深入浅出的文笔，向读者介绍了美国宪法第一修正案产生的历史背景，及其对美国社会的过去、现在和可预计的将来所产生的深刻影响。', 0, 's4850629.jpg', NULL);
INSERT INTO `user_book`
VALUES (452, 0, 0, '美第奇家族的兴衰', '[英] 克里斯托弗·希伯特(Christopher Hibbert) / 冯璇 ', '7.4', 868, ' 社会科学文献出版社 ', ' 2017-1-1 ',
        ' CNY 69.00', '文艺复兴时期的佛罗伦萨在其鼎盛阶段曾是欧洲财富、权力和影响力的中心。作为一个靠贸易和金融支撑的共和制邦国，她不乏血腥争斗的政治统治权掌握在富有的商人家族手中...', 0,
        's26871064.jpg', NULL);
INSERT INTO `user_book`
VALUES (453, 0, 0, '城市发展史', '芒福德 / 宋俊岭、倪文彦 ', '9.3', 911, ' 中国建筑工业出版社 ', ' 2005-1 ', ' 98.00元',
        '《城市发展史》(起源演变和前景)是美国著名的城市理论家、社会哲学家刘易斯·芒福德的重要理论著作之一，它着重从人文科学的角度系统地阐述了城市的起源和发展，并展...', 0, 's1444252.jpg', NULL);
INSERT INTO `user_book`
VALUES (454, 0, 0, '如果历史是一群喵', '肥志 ', '8.3', 922, ' 黑龙江美术出版社 ', ' 2017-9-28 ', ' CNY 49.00',
        '《如果历史是一群喵•夏商西周篇》是肥志酝酿许久打造的系列“如果历史是一群喵”中的首册，该书以诙谐幽默又接地气的方式，通俗地讲述了夏商西周多个时期的历史故事，...', 0, 's27150794.jpg', NULL);
INSERT INTO `user_book`
VALUES (455, 0, 0, '知行合一王阳明（1472—1529）', '度阴山 ', '7.6', 5213, ' 北京联合出版公司 ', ' 2014-7 ', ' 36.00元',
        '在蛮荒的龙场，王阳明悟出了“圣人之道，吾性自足”，即人人皆有良知。而在血腥的沙场和险恶的朝堂，让龙场悟道实际发挥作用的，是“知行合一”，即遵循内心的良知，便...', 0, 's25911978.jpg', NULL);
INSERT INTO `user_book`
VALUES (456, 0, 0, '战后日本经济史', '[日] 野口悠纪雄 / 张玲 ', '7.8', 1546, ' 后浪丨民主与建设出版社 ', ' 2018-4 ', ' 48.00元',
        '著作等身的日本知名经济学家深挖增长与停滞之谜的集大成之作日本究竟错在了哪里？中国会重蹈日本覆辙吗？◎编辑推荐☆犀利剖析深层机制，揭示日本经济增长...', 0, 's30169979.jpg', NULL);
INSERT INTO `user_book`
VALUES (457, 0, 0, '上下五千年', '林汉达、曹余章 ', '8.6', 7267, ' 少年儿童出版社 ', ' 1991-11-01 ', ' 43.00',
        '《上下五千年》是一套故事化的历史读物。在这套书中，作者选择重要和著名的人物和事件，根据史籍材料，加以组织和剪裁，用通俗的现代语言写出来，不加铺叙和描写，基...', 0, 's1012561.jpg', NULL);
INSERT INTO `user_book`
VALUES (458, 0, 0, '上帝的跳蚤', '王哲 ', '7.9', 343, ' 同心出版社 ', ' 2015-5 ', ' 48.00',
        '全书分为四章，分别围绕鼠疫杆菌、天花病毒、流感病毒和艾滋病毒这四种烈性微生物对历史产生的巨大影响，从几个不同的侧面阐述微生物这个肉眼看不见的翻云覆雨手是如何...', 0, 's26394048.jpg', NULL);
INSERT INTO `user_book`
VALUES (459, 0, 0, '“爱国的”独裁者', '[美]斯坦利·G.佩恩(Stanley G. Payne)、[西]赫苏斯·帕拉西奥斯 / 李永学 ', '8.5', 130, ' 上海社会科学院出版社 ',
        ' 2019-1 ', ' 138.00元', '★★他是独裁者，也是西班牙的守护者，还是“民主国王”的培育者；他推动了西班牙现代化的进程，为民主政治的实现打下了基础。★★佛朗哥统治西班牙近近40年，人生...', 0,
        's30329248.jpg', NULL);
INSERT INTO `user_book`
VALUES (460, 0, 0, '中国哲学简史', '冯友兰 / 涂又光 ', '9.3', 6156, ' 北京大学出版社 ', ' 2013-1-1 ', ' 38.00元',
        '20世纪中国一代哲人冯友兰毕生的经典代表作!被韩国首位女总统朴槿惠奉为生命灯塔，给了她战胜混乱世界的智慧和教诲。北京大学出版社独家拥有版权的冯友兰亲自指...', 0, 's20501147.jpg', NULL);
INSERT INTO `user_book`
VALUES (461, 0, 0, '华夏边缘：历史记忆与族群认同（增订本）', '王明珂 ', '9.0', 670, ' 浙江人民出版社 ', ' 2013-11 ', ' 45.00',
        '身为“中华民族”的我们，是否曾想过，何以我们称为“中国人”？“华夏民族”之形成所由何来？究竟什么是中国人？——这问题不仅困扰许多研究中国的学者，也困扰许多居...', 0, 's25748848.jpg', NULL);
INSERT INTO `user_book`
VALUES (462, 0, 0, '南京大屠杀', '[美]张纯如（Iris Chang） / 谭春霞、焦国林 ', '9.4', 1437, ' 中信出版社 ', ' 2015-8 ', ' 49.00元',
        '1937年12月，日军攻入中国古都南京。几周之内，30多万中国平民和士兵遭到有计划地强暴、折磨和屠杀——死亡人数超过广岛和长崎原子弹爆炸遇难人数的总和。张...', 0, 's26545308.jpg', NULL);
INSERT INTO `user_book`
VALUES (463, 0, 0, '中国共产党成立史', '[日]石川祯浩 / 袁广泉 ', '8.9', 442, ' 中国社会科学出版社 ', ' 2006-2 ', ' 35.00元',
        '《中国共产党成立史》的研究成果和研究方法，对我国中共创建史的进一步研究均有一定的启发和推动作用。日本学者石川祯浩所著《中国共产党成立史》一书，搜集了中、日、...', 0, 's1776851.jpg', NULL);
INSERT INTO `user_book`
VALUES (464, 0, 0, '历代经济变革得失', '吴晓波 ', '8.6', 6670, ' 浙江大学出版社 ', ' 2013-8-1 ', ' 42.00',
        '著名财经作家吴晓波再度发力！向钱穆先生之《中国历代政治得失》致敬之作！打破时间壁垒，勾勒历代变法全貌！探寻中国两千多年来经济变革的得与失！如果不研究...', 0, 's24851460.jpg', NULL);
INSERT INTO `user_book`
VALUES (465, 0, 0, '邻人', '[美] 杨·T.格罗斯 / 张祝馨 / 三辉图书', '8.4', 1234, '中央编译出版社 ', ' 2017-9 ', ' 48.00',
        '◆最具勇气的大屠杀写作经典，揭露一段尘封60年的惊人往事，颠覆主流“二战”史观念◆证词、证据、杀人凶手、杀人动机，如侦探小说般丝丝入扣的历史著作◆乔治·...', 0, 's27085641.jpg', NULL);
INSERT INTO `user_book`
VALUES (466, 0, 0, '大唐兴亡三百年', '王觉仁 ', '7.2', 593, ' 人民日报出版社 ', ' 2018-10 ', ' 44.90 元',
        '唐朝是一个令后人无比向往的伟大朝代，但它近300年错综复杂的历史，也让人望而却步——正史《唐书》《资治通鉴》不但卷帙浩繁，读起来也晦涩难懂；小说《隋唐演义》...', 0, 's30364327.jpg', NULL);
INSERT INTO `user_book`
VALUES (467, 0, 0, '中国古代思想史论', '李泽厚 ', '9.0', 1269, ' 生活·读书·新知三联书店 ', ' 2008-6 ', ' 35.00元',
        '本书从剖析孔子仁学开始，提出中国民族的“文化心理结构”问题，认为血缘、心理、人道、人格为四大因素，孟、荀从内、外两方展升为光辉的个体人格和伟大的人类特征，而...', 0, 's3117247.jpg', NULL);
INSERT INTO `user_book`
VALUES (468, 0, 0, '晚学盲言（上下）', '钱穆 ', '8.5', 274, ' 生活·读书·新知三联书店 ', ' 2010-1 ', ' 80.00元',
        '钱穆先生86岁时患眼疾，“不能见字，不能读书”，只好口述，夫人记录，而后口诵耳听，一字一句修改订定，终稿时已92岁高龄，故曰《晚学盲言》。全书分三大部分，九...', 0, 's3916132.jpg', NULL);
INSERT INTO `user_book`
VALUES (469, 0, 0, '血酬定律', '吴思 ', '8.3', 290, ' 四川出版集团•四川人民出版社 ', ' 2013-12 ', ' 48.00',
        '2003年《新周刊》年度新锐作品本书提出了血酬和元规则等概念。所谓血酬，即流血拼命所得的酬报，体现着生命与生存资源的交换关系。从晚清到民国，吃这碗饭的人比...', 0, 's25806559.jpg', NULL);
INSERT INTO `user_book`
VALUES (470, 0, 0, '古拉格群岛（上中下）', '[俄] 亚历山大·索尔仁尼琴 / 田大畏 等 ', '9.2', 1844, ' 群众出版社 ', ' 1996-12 ', ' 96.00元',
        '“献给没有生存下来的诸君，要叙述此事他们已无能为力。但愿他们原谅我，没有看到一切，没有想起一切，没有猜到一切。”1970年诺贝尔文学奖得主亚历山大・索尔仁...', 0, 's1315844.jpg', NULL);
INSERT INTO `user_book`
VALUES (471, 0, 0, '风雅宋：看得见的大宋文明', '吴钩 ', '7.5', 501, ' 新民说 | 广西师范大学出版社 ', ' 2018-6 ', ' 108.00',
        '▼内容简介本书是讲述宋朝“风雅”生活的一本趣味图书。作者从宋画这一新颖角度入手，结合文献记载和前人研究成果，揭示了宋朝“风雅”生活的若干侧面，将宋人起居饮...', 0, 's27931094.jpg', NULL);
INSERT INTO `user_book`
VALUES (472, 0, 0, '越南', '[美]克里斯多佛‧高夏(Christopher Goscha ) / 譚天 ', '9.1', 140, ' 聯經出版公司 ', ' 2018-4-2 ', ' NTD580',
        '許多世紀以來，越南人本身既是殖民者，又是其他殖民者的犧牲品。越南的國家版圖時而擴張，時而縮水，有時分裂，有時消失，而且這一切遠非他們所能掌控。儘管一再面對龐...', 0, 's30165631.jpg', NULL);
INSERT INTO `user_book`
VALUES (473, 0, 0, '没有宽恕就没有未来', '[南非] 德斯蒙德·图图 / 江红 ', '8.0', 1012, ' 广西师范大学出版社 ', ' 2014-9 ', ' 58.00',
        '梁文道、刘瑜、熊培云、许知远联袂主编——“理想国译丛”（MIRROR）系列之一（001）——保持开放性的思想和非功利的眼睛，看看世界的丰富性与复杂性。本书有...', 0, 's25971616.jpg', NULL);
INSERT INTO `user_book`
VALUES (474, 0, 0, '翻身', '韩丁（William Hinton） / 韩倞 ', '8.8', 477, ' 北京出版社 ', ' 1980-1 ', ' 2.20元',
        '【目录】引子　　1第一部　种下仇恨一、张庄　　17二、太阳会从西边出来吗？　　26三、吃苦　　39四、三根支柱　　50五、天主教　　64六、...', 0, 's1772151.jpg', NULL);
INSERT INTO `user_book`
VALUES (475, 0, 0, '知宋：写给女儿的大宋历史', '吴钩 ', '8.2', 139, ' 广西师范大学出版社 ', ' 2019-3-1 ', ' 108',
        '尽管从军事和国土面积来看，宋朝是个虚弱的朝代，但就经济和社会角度来看，宋朝却最繁荣昌盛、极具人文精神。那么，宋朝何以如此辉煌？作者认为，这是因为宋朝拥有一套...', 0, 's33375446.jpg', NULL);
INSERT INTO `user_book`
VALUES (476, 0, 0, '丰乳肥臀', '莫言 ', '8.1', 12032, ' 中国工人出版社 ', ' 2003-09 ', ' 49.80元',
        '小说中通过母亲，含辛茹苦、艰难的抚育着一个又一个儿女，并且视上官金童为生命一般重要，其用意在于说明：人永远是宇宙中最宝贵的，生命具有无可争辩的意义，是第一本...', 4, 's1010349.jpg', NULL);
INSERT INTO `user_book`
VALUES (477, 0, 0, '崩溃', '[美] 贾雷德·戴蒙德 / 江滢、叶臻 ', '8.2', 2259, ' 上海译文出版社 ', ' 2008-4 ', ' 40.00元',
        '人类历史上，当一个社会面对其复杂的环境问题，无法做出正确的应对和决策时，往往会走向崩溃。而发生在索马里和卢旺达等地的悲剧，也警醒着我们，即便拥有现代科学和管...', 0, 's3035593.jpg', NULL);
INSERT INTO `user_book`
VALUES (478, 0, 0, '布达佩斯往事', '[美] 卡蒂·马顿 / 毛俊杰 ', '7.8', 1766, ' 广西师范大学出版社 ', ' 2016-1 ', ' 59.00',
        '本书通过冷战时期匈牙利秘密警察长达20年的档案，所揭开的一部隐藏了几十年的家庭历史和时代侧记。冷战时期，苏联集团中的匈牙利，秘密警察通过庞大的告密网，试图...', 0, 's26606366.jpg', NULL);
INSERT INTO `user_book`
VALUES (479, 0, 0, '拉丁美洲被切开的血管', '[乌拉圭] 爱德华多·加莱亚诺 / 王玖 等 ', '8.5', 1340, ' 人民文学出版社 ', ' 2001-11 ', ' 18.00元',
        '这是一本关于拉丁美洲的经典作品。包括两大部分，第一部分题为“地球的富有造成人类的贫困”，讲述了旧殖民主义围绕拉丁美洲金银、农作物和其他矿产进行的掠夺史；第二...', 0, 's1047370.jpg', NULL);
INSERT INTO `user_book`
VALUES (480, 0, 0, '草原帝国', '勒内·格鲁塞 / 蓝琪 ', '8.7', 1825, ' 商务印书馆 ', ' 1998-5 ', ' 45.00元',
        '《草原帝国》一书，其范围除大中亚外，还包罗了波兰以东的东欧诸国，即东欧草原、俄罗斯草原、西亚草原、中亚草原和北亚草原。还有草原近邻的许多高原山地。西起多瑙河...', 0, 's1057653.jpg', NULL);
INSERT INTO `user_book`
VALUES (481, 0, 0, '瘟疫与人', '[美] 威廉·H. 麦克尼尔 / 余新忠、毕会成 ', '8.1', 236, ' 中国环境科学出版社 ', ' 2010-4 ', ' 30.00元',
        '人类只有一个地球。随着科技的发展与人类改造自然能力的增强，人类面临的全球环境问题也越来越突出，越来越错综复杂。目前，诸如气变化、环境污染、生态退化和生物多样...', 0, 's4737314.jpg', NULL);
INSERT INTO `user_book`
VALUES (482, 0, 0, '文明的故事', '[美] 威尔·杜兰特 / 台湾幼狮文化 ', '8.9', 216, ' 理想国|天地出版社 ', ' 2018-11-11 ', ' 1988.00（全11卷）',
        '《文明的故事》是世界著名哲学家、文化史专家威尔•杜兰特夫妇历时四十余年写就的旷世巨著，是举世公认的传世经典，威尔•杜兰特因此荣获1968年美国普利策奖和19...', 0, 's30318729.jpg', NULL);
INSERT INTO `user_book`
VALUES (483, 0, 0, '中国法律与中国社会', '瞿同祖 ', '9.2', 1888, ' 中华书局 ', ' 2003-09-01 ', ' 28.00',
        '法律与社会有着密不可分的依存关系，它维护了当时社会的制度、道德和伦理等价值观念，也反映了一定时期的社会结构。中国反代法律的主要特征表现在家族主义和阶级概念上...', 0, 's1224279.jpg', NULL);
INSERT INTO `user_book`
VALUES (484, 0, 0, '从晚清到民国', '【美】唐德刚 ', '8.3', 2647, ' 中国文史出版社 ', ' 2015-6 ', ' 58.00元',
        '长江三峡的曲折动荡，是中国人的骄傲，也是中国自然史上的潮信地带。鸦片战争，揭开了中国二千年一遇的“社会文化大转型”的序幕。在史学大家唐德刚的慧眼中，“人文史...', 0, 's26392466.jpg', NULL);
INSERT INTO `user_book`
VALUES (485, 0, 0, '关山夺路', '王鼎钧 ', '9.2', 1781, ' 生活·读书·新知三联书店 ', ' 2013-1 ', ' 36.00元',
        '这是王鼎钧“回忆录四部曲”的第三部，着力描述不同身份、不同阶层、不同地域之间各色人物的面目与选择，以此来对应和诠释被意识形态长期遮蔽的真实历史，触及与国共内...', 0, 's20433554.jpg', NULL);
INSERT INTO `user_book`
VALUES (486, 0, 0, '地理学与生活', '[美] 阿瑟·格蒂斯、[美] 朱迪丝·格蒂斯、[美] 杰尔姆·D.费尔曼 / 黄润华、韩慕康、孙颖 ', '9.0', 2170, ' 后浪丨北京联合出版公司 ',
        ' 2017-4 ', ' 228.00元', '地理学是一门古老的学科，最初仅指地球的绘图与勘查，但发展到今天已经逐渐成为一门范围广泛的学科。本书共十三章，分四篇，囊括自然地理学、人口地理学、文化地理学、...', 0,
        's26944962.jpg', NULL);
INSERT INTO `user_book`
VALUES (487, 0, 0, '第九个寡妇', '严歌苓 ', '8.6', 14071, ' 作家出版社 ', ' 2006-3 ', ' 25.00元',
        '四〇至八〇年代流传在中原农村的一个真实的传奇故事。一段纷乱复杂的痛苦历史，一场人性人伦的严峻考验。大多数人不得不多次蜕变以求苟活，愚昧朴拙的女主人公葡萄则始...', 0, 's1752755.jpg', NULL);
INSERT INTO `user_book`
VALUES (488, 0, 0, '来自上层的革命', '大卫·科兹、弗雷德·威尔 / 曹荣湘/等译 ', '8.3', 419, ' 中国人民大学出版社 ', ' 2008-5 ', ' 38.00元',
        '本书对苏联解体的原因给出了全新解释，时下流行的看法是：苏联旧体制的终结是由苏联经济崩溃，人们要求放弃社会主义所引起的。本书对此看法提出了有力的挑战，认为撼动...', 0, 's3097530.jpg', NULL);
INSERT INTO `user_book`
VALUES (489, 0, 0, '创造日本', '[荷] 伊恩·布鲁玛 / 倪韬 ', '7.9', 1410, ' 四川人民出版社 ', ' 2018-2 ', ' 56.00元',
        '从为黑船震动惊恐的江户幕府，到主办东京奥运迎向全球的现代化国家，伊恩•布鲁玛深入浅出地重新解读“日本成为现在的日本”的过程，发掘日本真实而复杂的面貌，探...', 0, 's27608153.jpg', NULL);
INSERT INTO `user_book`
VALUES (490, 0, 0, '琅琊榜', '海宴 ', '8.5', 28152, ' 朝华出版社 ', ' 2007-12 ', ' 49.80元',
        '一卷风去琅琊榜，囊尽天下奇英才。他远在江湖，却能名动帝辇，只因神秘莫测而又言出必准的琅琊阁，突然断言他是一麒麟之才，得之可得天下一。然而，身为太子与誉王竞相...', 0, 's2326571.jpg', NULL);
INSERT INTO `user_book`
VALUES (491, 0, 0, '三国兵争要地与攻守战略研究', '宋杰 ', '9.3', 150, ' 中华书局 ', ' 2019-1 ', ' 238.00元',
        '历史上三国时期战乱频仍，但因历史线索错综复杂、史料记载匮乏、考古发现有限，所以目前对三国兵争要地、攻守战略的研究成果并不多。本书作者对三国时期魏、蜀、吴三国...', 0, 's30406745.jpg', NULL);
INSERT INTO `user_book`
VALUES (492, 0, 0, '国家的常识', '[美]迈克尔·罗斯金(Michael G. Roskin) / 杨勇、赵卓 ', '8.8', 1802, ' 世界图书出版公司 ', ' 2013-4 ', ' 68.00元',
        '本书通过运用比较政治学的方法，深入浅出地对世界的部分典型国家进行观察和描述，从中选取了英国、法国、德国、日本、俄罗斯、印度、墨西哥、尼日利亚、伊朗这9个国家...', 0, 's22806583.jpg', NULL);
INSERT INTO `user_book`
VALUES (493, 0, 0, '人类的故事', '（美）亨德里克·威廉·房龙 / 刘缘子（等） ', '8.4', 2697, ' 生活·读书·新知三联书店 ', ' 1997-11 ', ' 19.00', '', 0,
        's1063736.jpg', NULL);
INSERT INTO `user_book`
VALUES (494, 0, 0, '鱼羊野史·第1卷', '高晓松 ', '7.4', 8779, ' 湖南文艺出版社 ', ' 2014-4-1 ', ' 39.80元',
        '历史，有的时候是故事，有的时候是事故，有的时候山重水复疑无路。人类，有的时候聪明，有的时候傻，但始终在进化。历史不是镜子，历史是开了又落的花，朝花夕拾。...', 0, 's25846182.jpg', NULL);
INSERT INTO `user_book`
VALUES (495, 0, 0, '拓跋史探', '田余庆 ', '9.6', 198, ' 生活·读书·新知三联书店 ', ' 2019-1 ', ' 69.00元',
        '结束十六国纷乱局面的拓跋鲜卑，是怎样从落后状态乘时崛起，担当了开启北朝，从而孕育隋唐的历史任务？本书作者对这个问题作了回答。但他不是在传统北魏史的框架内，...', 0, 's30302919.jpg', NULL);
INSERT INTO `user_book`
VALUES (496, 0, 0, '极端的年代：1914—1991', '[英]艾瑞克·霍布斯鲍姆 / 郑明萱 ', '9.3', 159, ' 中信出版集团·见识城邦 ', ' 2017-8-1 ', ' 128.00元',
        '【内容简介】《极端的年代:1914—1991》是霍布斯鲍姆“年代四部曲”的第四部。极端的年代，即霍布斯鲍姆所定义的“短20世纪”，仿佛一张三联画，或...', 0, 's27031979.jpg', NULL);
INSERT INTO `user_book`
VALUES (497, 0, 0, '罗马帝国的陨落', '彼得•希瑟 (Peter Heather) / 向俊 ', '8.9', 620, ' 中信出版社·新思文化 ', ' 2016-11-30 ', ' CNY 88.00',
        '再现罗马走向衰亡的悲壮史诗，追问帝国倾覆的真正根源，严谨研究和流畅书写的完美融合，全球热销50万册！革新爱德华•吉本的事业，半个多世纪以来罗马史研究的集大成...', 0, 's26905142.jpg', NULL);
INSERT INTO `user_book`
VALUES (498, 0, 0, '波斯笔记', '李零 ', '7.3', 131, ' 生活·读书·新知三联书店 ', ' 2019-10 ', ' 298.00',
        '波斯，古代世界的中心，与秦汉并立的强大帝国，中西交流的关键枢纽。继《我们的中国》之后，李零教授用“我们”的眼光审视古代中亚和世界历史，精彩图文再现波斯余晖。...', 0, 's34802599.jpg', NULL);
INSERT INTO `user_book`
VALUES (499, 0, 0, '马其顿的亚历山大', '[英] 彼得·格林 / 詹瑜松 ', '8.6', 402, ' 民主与建设出版社 ', ' 2018-3 ', ' 118.00元',
        '追寻亚历山大的脚步，直面这位伟大征服者的内心世界.....................※编辑推荐※仅仅是亚历山大这个名字就可以唤起无穷的想象力，然...', 0, 's27593864.jpg', NULL);
INSERT INTO `user_book`
VALUES (500, 0, 0, '《地球编年史》指南', '[美] 撒迦利亚·西琴 / 黎明 ', '8.4', 122, ' 重庆出版社 ', ' 2012-10 ', ' 32.00元',
        '★涵盖《地球编年史》七部书所有精华的饕餮盛宴★打开地球和人类起源大门的最关键钥匙和指南★对《地球编年史》这一巨龙的画龙眼睛之作◎《地球编年史...', 0, 's7162591.jpg', NULL);
INSERT INTO `user_book`
VALUES (501, 0, 0, '历史是什么?', '[英] 爱德华·霍列特·卡尔 / 陈恒 ', '8.5', 937, ' 商务印书馆 ', ' 2007-6 ', ' 19.00元',
        '该书是英国著名史学家卡尔的一部享誉世界的历史理论名著，作者在书中对“历史”从各个侧面进行了剖析，广征博引，提纲挈领，提出了“历史就是与现实不断的对话”的著名...', 0, 's2185235.jpg', NULL);
INSERT INTO `user_book`
VALUES (502, 0, 0, '若干重大决策与事件的回顾（上下）', '薄一波 ', '8.5', 303, ' 中共党史出版社 ', ' 2008-1 ', ' 88.00元',
        '《若干重大决策与事件的回顾》(上下)是中国无产阶级革命家薄一波的回忆并带有研究性质的有关中国当代史的专著。分上、下两卷。分别论述了1949年到1966年间党...', 0, 's2976744.jpg', NULL);
INSERT INTO `user_book`
VALUES (503, 0, 0, '南渡君臣', '虞云国 ', '8.2', 250, ' 上海人民出版社 ', ' 2019-8 ', ' 68.00元',
        '本书收录作者近年来有关靖康之变后南宋前四十年历史的文章，以高宗一朝君臣为核心，包括对岳飞之死、绍兴和议、秦桧专权、苗刘之变等历史事件的分析，揭示了南宋初期的...', 0, 's34466273.jpg', NULL);
INSERT INTO `user_book`
VALUES (504, 0, 0, '战起1938', '疯丢子 ', '8.1', 1255, ' 江苏文艺出版社 ', ' 2013-12-1 ', ' 46.80',
        '一个平凡无奇的华裔少女，一段惊心动魄的二战之旅，一幅横跨欧洲大陆的战争图卷。她从“水晶之夜”的纷乱中逃离，从波兰闪电战的废墟中邂逅“恶魔”，然后在民族仇恨...', 0, 's25791940.jpg', NULL);
INSERT INTO `user_book`
VALUES (505, 0, 0, '角斗场外的绅士', '[英]杰瑞 • 透纳 / 高瑞梓 ', '8.5', 44, ' 低音 • 北京联合出版公司 ', ' 2020-4 ', ' 38.00元',
        '★★★比《罗马人的故事》更扎实、更有趣的罗马史通俗读物《罗马史研究入门》作者刘津瑜推荐……………………◎编辑推荐★剑桥大学古典历史学教授杰瑞...', 0, 's34846908.jpg', NULL);
INSERT INTO `user_book`
VALUES (506, 0, 0, '20世纪简史', '[澳]杰弗里·布莱内 / 张心童 ', '8.0', 1203, ' 理想国|上海三联书店 ', ' 2018-7 ', ' 54.00元',
        '★	澳大利亚国宝级历史学家广受欢迎的“大家小书”，企鹅（PenguinBooks）推出多个版本★	叙述风格令人振奋，展示20世纪的复杂与丰富，栩栩如生...', 0, 's30262204.jpg',
        NULL);
INSERT INTO `user_book`
VALUES (507, 0, 0, '历史的温度4', '张玮 ', '7.7', 507, ' 中信出版集团 ', ' 2019-10 ', ' 58',
        '长销历史大众读物《历史的温度》系列第四本，前三册累计销量超过60万册。那年，中国为什么只派一个人参加奥林匹克运动会？清末为何那么多留学生扎堆去日本？那些从...', 0, 's34852280.jpg', NULL);
INSERT INTO `user_book`
VALUES (508, 0, 0, '朱熹的历史世界', '余英时 ', '9.2', 593, ' 生活·读书·新知三联书店 ', ' 2011-7 ', ' 78.00元',
        '本书是关于宋代文化史与政治史的综合研究，尤其注重二者之间的互动关系。宋代士阶层不但是文化主体，而且也是一定程度的政治主体，过去的史学界对此也已或隐或显地有所...', 0, 's6810086.jpg', NULL);
INSERT INTO `user_book`
VALUES (509, 0, 0, '乌托邦年代', '[法] 让-克劳德·卡里耶尔 / 胡纾 ', '8.8', 1138, ' 新星出版社 ', ' 2018-4 ', ' 32.00元',
        '1968年早春。所有人都信了：无须更多努力，世界即将改变。花儿。铺路石。坦克。1968至1969年间，让-克劳德·卡里耶尔作为剧作家的工作恰巧令他近距离...', 0, 's30141667.jpg', NULL);
INSERT INTO `user_book`
VALUES (510, 0, 0, '中国1945', '[美] 理查德·伯恩斯坦 / 季大方 ', '8.4', 1148, ' 社会科学文献出版社 ', ' 2017-3-1 ', ' 76.00元',
        '1945年是中国抗日战争最终胜利之年，也是中国国内政治形势风云变幻的一年。对日作战的胜利并没有给中国带来最终的和平，内战的阴影开始在中国上空笼罩，原本就复杂...', 0, 's26865333.jpg', NULL);
INSERT INTO `user_book`
VALUES (511, 0, 0, '三国演义', '罗贯中 ', '9.5', 903, ' 中华书局 ', ' 2009-06 ', ' 70.00元',
        '三国时期是个激动人心的时代。陈寿的《三国志》和裴松之的注是纪录这一时代的最原始材料。从晋朝到唐宋，民间关于三国的传说就一直没有中断过，以各种形式不停歇地上演...', 0, 's3810698.jpg', NULL);
INSERT INTO `user_book`
VALUES (512, 0, 0, '激荡三十年（下）', '吴晓波 ', '8.8', 17125, ' 中信出版社 浙江人民出版社 ', ' 2008-1 ', ' 42.00',
        '下卷记载1993-2008年间的企业变革。作者以写实的手法和犀利的风格，描绘了1993—2007年部分国企和民企在改革和崛起中的艰难历程。其中有柳传志、张...', 0, 's2380307.jpg', NULL);
INSERT INTO `user_book`
VALUES (513, 0, 0, '郭论', '郭德纲 ', '7.5', 1086, ' 湖南文艺出版社 ', ' 2018-9 ', ' 49.80元',
        '慢火烹茶，解读中国人骨子里的“忠”与“义”。拾遗明清历史、解读市井文化、大话经典名著……郭德纲带你品人情冷暖、世态炎凉；观荣辱纷争、死走逃亡。洞察人生...', 0, 's30308672.jpg', NULL);
INSERT INTO `user_book`
VALUES (514, 0, 0, '企鹅欧洲史·古典欧洲的诞生', '[英]西蒙·普莱斯、[英]彼得·索恩曼 / 马百亮 ', '7.7', 562, ' 中信出版集团·新思文化 ', ' 2019-3 ', ' 68.00元',
        '今天的欧洲议会门前立着一座欧罗巴的雕像，那是21世纪初克里特岛居民的捐赠，意在彰显小岛在欧洲历史上的地位。毕竟，欧洲得名于传说被宙斯带到克里特岛的欧罗巴，米...', 0, 's30312128.jpg', NULL);
INSERT INTO `user_book`
VALUES (515, 0, 0, '旧制度与大革命', '[法] 托克维尔 / 冯棠、桂裕芳、张芝联 ', '8.6', 2745, ' 商务印书馆 ', ' 2012-8 ', ' 48.00元',
        '1789年法国人以从所未有的最大努力，将自己的命运断为两截，把过去与将来用一道鸿沟隔开。但他们不知不觉中从旧制度继承了大部分情感、习惯、思想，他们利用了旧制...', 0, 's11607261.jpg', NULL);
INSERT INTO `user_book`
VALUES (516, 0, 0, '发明自由', '[英]丹尼尔·汉南 / 徐爽 ', '8.7', 25, ' 九州出版社 ', ' 2020-3-1 ', ' 68',
        '编辑推荐从自由的角度讲述英语民族的历史*深度描绘盎格鲁—撒克逊文化圈如何将“自由”的概念散播到全世界，并在某种程度上塑造了现代世界的形态*2013...', 0, 's34910653.jpg', NULL);
INSERT INTO `user_book`
VALUES (517, 0, 0, '芥子', '橘花散里 ', '8.1', 1342, ' 中国致公出版社 ', ' 2013-7 ', ' 26.80元',
        '十二篇小人物的故事，没有贯穿全书的主角，但都是身在英雄名人身边的小人物的故事。《长安曲》的主角是杨贵妃身边的丫鬟陆六儿，《塞上歌》的主角是与花木兰一起在军营...', 0, 's25735703.jpg', NULL);
INSERT INTO `user_book`
VALUES (518, 0, 0, '白鹿原', '陈忠实 ', '9.0', 13450, ' 北京十月文艺出版社 ', ' 2011-9-1 ', ' 32.00元',
        '《白鹿原》是中国近六十年的巅峰之作，十五年经久不衰。本版本为权威未删节版！陈忠实的长篇小说《白鹿原》，以陕西关中平原上素有“仁义村”之称的白鹿村为背景，细...', 0, 's6861664.jpg', NULL);
INSERT INTO `user_book`
VALUES (519, 0, 0, '近代朝鲜与日本', '[韩] 赵景达 / 李濯凡 ', '7.9', 190, ' 新星出版社 ', ' 2019-9 ', ' 49',
        '本书从朝鲜的视角出发，复盘19世纪错综复杂的东亚国际关系，一部填补空白的历史佳作。——————————■这是一部关于小国朝鲜如何在大国博弈、派系斗争中巧...', 0, 's34797388.jpg', NULL);
INSERT INTO `user_book`
VALUES (520, 0, 0, '自由的声音', '[法]米歇尔·维诺克 / 吕一民、沈衡、顾杭 ', '8.7', 232, ' 文汇出版社 ', ' 2019-5 ', ' 108.00元',
        '美第奇奖、龚古尔传记奖得主鸿篇巨制60万字讲述法兰西的“光荣与梦想”这是对法国知识分子的一次巡礼，也是对一个紧张、矛盾乃至绝望世纪的穿越。·大革命之...', 0, 's30475747.jpg', NULL);
INSERT INTO `user_book`
VALUES (521, 0, 0, '清代旅蒙商述略', '秋原 ', '9.2', 856, ' 新星出版社 ', ' 2015-5-6 ', ' 32.00元',
        '《清代旅蒙商述略》的主角“清代旅蒙商”其实是中国传统社会最著名的商帮集团——晋商。谈及中国传统社会的商贾之道和商人集团，晋商都是绕不开的重头戏。明清两朝，特...', 0, 's26419408.jpg', NULL);
INSERT INTO `user_book`
VALUES (522, 0, 0, '金与铁', '[美] 弗里茨·斯特恩 / 王晨 ', '8.8', 276, ' 四川人民出版社 ', ' 2018-1-1 ', ' 145.00元',
        '本书聚焦新德意志帝国建立，一个更广泛的新精英阶层逐渐崛起，政治家俾斯麦与金融家布莱希罗德的关系成了这种重组的缩影。本书是对一系列事件和促成这些事件的利益与情...', 0, 's27600526.jpg', NULL);
INSERT INTO `user_book`
VALUES (523, 0, 0, '毛泽东选集 第二卷', '毛泽东 ', '9.3', 2237, ' 人民出版社 ', ' 1991-6 ', ' 23.00元',
        '这部选集，包括了毛泽东同志在中国革命各个时期中的重要著作。几年前各地方曾经出过几种不同版本的《毛泽东选集》，都是没有经过著者审查的，体例颇为杂乱，文字亦有错...', 0, 's1125026.jpg', NULL);
INSERT INTO `user_book`
VALUES (524, 0, 0, '王氏之死', '(美)史景迁 / 李孝恺 ', '7.6', 2306, ' 广西师范大学出版社 ', ' 2011-9-30 ', ' 35.00元',
        '《王氏之死》篇幅不大，再现的是清初山东剡城、淄川农村人民的贫苦生活。主角之一王氏不堪生活的重压，与人私奔，最后却惨死在丈夫手下。本书作者则一向偏重在文学性...', 0, 's6750187.jpg', NULL);
INSERT INTO `user_book`
VALUES (525, 0, 0, '西方的没落', '[德]奥斯瓦尔德・斯宾格勒 / 齐世荣、田农 等译 ', '8.6', 340, ' 商务印书馆 ', ' 2001-01 ', ' 38.00元',
        '奥斯瓦尔德·斯宾格勒（1880-1936年）是德国著名的历史学家和历史哲学家。他出生于德国哈茨山巴的布兰肯堡，曾就读于哈雷大学、慕尼黑大学和柏林大学。青年时...', 0, 's1002582.jpg', NULL);
INSERT INTO `user_book`
VALUES (526, 0, 0, '列奥纳多·达·芬奇传', '[美]沃尔特·艾萨克森 / 汪冰 ', '8.8', 1779, ' 中信出版社 ', ' 2018-7 ', ' 99.00',
        '\"达·芬奇是文艺复兴时期伟大的艺术家与科学家，是影响了世界500多年的“网红”。带着顽皮而执着的热情，达·芬奇孜孜不倦地投入对众多领域的创新研究，包括解剖学...', 0, 's30236304.jpg', NULL);
INSERT INTO `user_book`
VALUES (527, 0, 0, '慈禧全传', '高阳 ', '9.4', 787, ' 新星出版社 ', ' 2015-6 ', ' 398.00元',
        '《慈禧全传》是高阳以小说形式全景式描绘晚清社会的一部皇皇巨著，共十册。全书以主要人物慈禧的活动为主线，从咸丰皇帝驾崩热河，慈禧联合恭王，自肃顺为首的顾命大臣...', 0, 's26305373.jpg', NULL);
INSERT INTO `user_book`
VALUES (528, 0, 0, '二十四史', '中华书局编辑部 编著 ', '9.4', 450, ' 中华书局 ', ' 2000-01 ', ' 1480.00',
        '“二十四史”用统一的纪传体裁，系统、完整地记录清以前各个朝代的历史，共计3249卷，约4200万字。清代钦定为“正史”，堪称为清代以前中华文明史的全记录。为...', 0, 's1012929.jpg', NULL);
INSERT INTO `user_book`
VALUES (529, 0, 0, '士与中国文化', '余英时 ', '8.9', 1772, ' 上海人民出版社 ', ' 2003-01 ', ' 63.00元',
        '士在中国史上的作用及其演变是一个十分复杂的现象，决不是任何单一的观点所能充分说明的。但是无可争辩的，文化和思想的传承与创新自始至终都是士的中心任务。从文化史...', 0, 's1016864.jpg', NULL);
INSERT INTO `user_book`
VALUES (530, 0, 0, '布达佩斯往事', '[美]卡蒂·马顿 / 毛俊杰 ', '8.0', 298, ' 南京大学出版社 ', ' 2019-4 ', ' 69.00',
        '本书通过冷战时期匈牙利秘密警察长达20年的档案，所揭开的一部隐藏了几十年的家庭历史和时代侧记。冷战时期，苏联集团中的匈牙利，秘密警察通过庞大的告密网，试图...', 0, 's33393515.jpg', NULL);
INSERT INTO `user_book`
VALUES (531, 0, 0, '拜占庭的巅峰', '[英]约翰·朱利叶斯·诺里奇（John Julius Norwich） / 李达 ', '9.2', 10, ' 社会科学文献出版社 ', ' 2020-4 ',
        ' 79.00元', '★诺里奇爵士摒弃学术上的繁琐探究造就迄今为止最好读、最引人入胜的拜占庭通史★一部让“精罗”从狂喜到落泪的史诗巨著★《观察家》《星期日泰晤士报》年度...', 0, 's34970434.jpg',
        NULL);
INSERT INTO `user_book`
VALUES (532, 0, 0, '战国歧途', '刘勃 ', '8.6', 977, ' 新星出版社 ', ' 2015-8 ', ' 28',
        '本书所述自韩、赵、魏三家分晋到秦始皇统一六国的战国历史。作者以《史记》、《资治通鉴》、《战国策》等史籍为底本，并结合新近考古资料，以年代为经，以国别为纬，考...', 0, 's26602453.jpg', NULL);
INSERT INTO `user_book`
VALUES (533, 0, 0, '掘墓人', '[德]吕迪格·巴特（Rüdiger Barth）、[德] 豪克·弗里德里希（Hauke Friederichs） / 靳慧明 ', '8.0', 44,
        ' 索·恩| 社会科学文献出版社 ', ' 2019-9 ', ' 78',
        '政治舞台风云诡谲，魏玛共和国的掘墓人们粉墨登场.德国史上第一个民主政体轰然倒塌.希特勒如何上台并最终将德国引上独裁统治的道路.比《纸牌屋》更扣人...', 0, 's33423720.jpg', NULL);
INSERT INTO `user_book`
VALUES (534, 0, 0, '中国史纲', '张荫麟 ', '9.1', 1910, ' 上海古籍出版社 ', ' 1999-12-1 ', ' 12.60元',
        '《中国史纲》内容简介：中国传统学术，经历清后期的低迷徘徊之后，从清末民初起，涌现出了一批大师级的学者。他们以渊深的国学根底，融通中西，不仅擘划了学术研究的新...', 0, 's1055347.jpg', NULL);
INSERT INTO `user_book`
VALUES (535, 0, 0, '清明上河图密码3', '冶文彪 ', '8.3', 3679, ' 北京联合出版公司 ', ' 2016-5-20 ', ' 56.00元',
        '全图824位人物，每个人都有名有姓，佯装、埋伏在舟船车轿、酒肆楼阁中。看似太平盛世，其实杀机四伏。翻开本书，在小贩的叫卖声中，金、辽、西夏、高丽等国的间谍、...', 0, 's26746839.jpg', NULL);
INSERT INTO `user_book`
VALUES (536, 0, 0, '我在伊朗长大', '玛赞·莎塔碧 / 马爱农、左涛 ', '9.4', 5847, ' 生活·读书·新知三联书店 ', ' 2010-1 ', ' 39.00元',
        '伊朗，一个遥远而神秘的国度。长期以来人们谈起她总是将之与原教旨主义、狂热主义和恐怖主义联系在一起。作者认为事实并非如此。作者出身豪门，以当年伊朗的“伊斯兰革...', 0, 's4071859.jpg', NULL);
INSERT INTO `user_book`
VALUES (537, 0, 0, '断头王后：玛丽·安托瓦内特传', '[奥] 斯蒂芬·茨威格 / 张玉书 ', '8.6', 650, ' 人民文学出版社 ', ' 2017-4-1 ', ' CNY 48.00',
        '读了二十页，我就被作者和这段历史牢牢抓住了。德国亚马逊读者NikiHoliday茨威格的这部传记超越了他以往的所有传记作品。——弗洛伊德感谢您的慷...', 0, 's27037087.jpg', NULL);
INSERT INTO `user_book`
VALUES (538, 0, 0, '枪炮、病菌与钢铁', '(美)贾雷德・戴蒙德 / 谢延光 ', '8.9', 2661, ' 上海译文出版社 ', ' 2000-8 ', ' 27.00',
        '远古时候，各大陆上的人类社会的发展开始分道杨镳。中国、中美洲、美国东南部和其他地区对野生动植物的早期驯化，使这些地区的各个族群获得了一种领先优势。为什么小麦...', 0, 's1054760.jpg', NULL);
INSERT INTO `user_book`
VALUES (539, 0, 0, '佩拉宫的午夜', '[美] 查尔斯·金 / 宋非 ', '8.6', 581, ' 社会科学文献出版社 ', ' 2016-12 ', ' 69.00元',
        '查尔斯•金以画面感丰富的、万花筒式的记述，重现了佩拉宫大酒店、伊斯坦布尔古城作为全世界枢纽的时代，定格了欧洲和中东历史被遗忘的时刻。他娴熟的写作展现了爵士乐...', 0, 's26909793.jpg', NULL);
INSERT INTO `user_book`
VALUES (540, 0, 0, '眼前', '唐诺 ', '8.2', 728, ' 广西师范大学出版社 ', ' 2016-2-1 ', ' CNY 39.00',
        '像是安排一趟远行，设定的目标是《左传》，想办法在那里生活一整年，不一样的人，不一样的话语，不一样的周遭世界及其经常处境，不一样的忧烦和希望……远游回来，就是...', 0, 's26657573.jpg', NULL);
INSERT INTO `user_book`
VALUES (541, 0, 0, '美术、神话与祭祀', '张光直 / 郭净 ', '9.1', 807, ' 生活·读书·新知三联书店 ', ' 2013-1 ', ' 39.00元',
        '作者一向主张对古代中国的研究要跨出传统的专业局限，从史学、考古、美术史、古地理学、思想理论等方面进行跨学科的整合，而此书正是他本人所做的一次最彻底的试验。本...', 0, 's20516441.jpg', NULL);
INSERT INTO `user_book`
VALUES (542, 0, 0, '西方的兴起', '[美] 威廉·麦克尼尔 / 孙岳　陈志坚　于展　等译　郭方　李永斌　译校 ', '9.3', 61, ' 中信出版社 ', ' 2017-7-1 ', ' 168.00',
        '《西方的兴起：人类共同体史》是全球通史的奠基性杰作，以全球视野讲述了整个人类的历史，让你一本书了解人类文明和世界格局的演变。唯一授权中文版首度出版之际，史学...', 1, 's27070163.jpg', NULL);
INSERT INTO `user_book`
VALUES (543, 0, 0, '艺术的故事', '[英]E.H.贡布里希 / 范景中、杨成凯 ', '9.7', 924, ' 广西美术出版社 ', ' 2015-7 ', ' 320.00元',
        '《艺术的故事》是艺术书籍中最著名、最流行的著作。它概述了从最早的洞窟绘画到当今的实验艺术的发展历程，出版50多年来，一直是这一领域无可匹敌的入门书。全世界不...', 0, 's26423502.jpg', NULL);
INSERT INTO `user_book`
VALUES (544, 0, 0, '波峰与波谷', '阎步克 ', '8.8', 701, ' 北京大学出版社 ', ' 2017-4 ', ' 45.00元',
        '本书采用“制度史观”，着重从“政治制度”与“政治势力”两方面叙述秦汉魏晋南北朝的政治历程。阐述了战国至秦中央集权的官僚帝国体制的创立，入汉之后的各项制度发展...', 0, 's26992823.jpg', NULL);
INSERT INTO `user_book`
VALUES (545, 0, 0, '恺撒', '[英] 阿德里安·戈兹沃西 / 陆大鹏 ', '8.6', 852, ' 社会科学文献出版社·甲骨文 ', ' 2016-7 ', ' 89.00元',
        '他是伟大军事家、仁厚的管理者、精明的立法者、才思敏捷的作家，大独裁者、风流倜傥的浪子……牛津大学罗马史专家阿德里安•戈兹沃西作品权威、全面、详细、好...', 0, 's26826782.jpg', NULL);
INSERT INTO `user_book`
VALUES (546, 0, 0, '中华帝国晚期的叛乱及其敌人', '[美] 孔飞力 / 谢亮生 等 ', '8.3', 1125, ' 中国社会科学出版社 ', ' 1990-11 ', ' 4.20元',
        '19世纪中国发生了巨大变革。这本书从分析中国社会的内部结构及其制度入手，强调了中国地方名流的作用，论述了在其影响下的地方组建武装活动的形成和发展，并就此对中...', 0, 's1063540.jpg', NULL);
INSERT INTO `user_book`
VALUES (547, 0, 0, '双城记', '查尔斯・狄更斯 / 石永礼 ', '8.3', 18456, ' 人民文学出版社 ', ' 1996-08 ', ' 14.10',
        '1775年12月的一个月夜，寓居巴黎的年轻医生梅尼特散步时，突然被厄弗里蒙地侯爵兄弟强迫出诊。在侯爵府第中，他目睹一个发狂的绝色农妇和一个身受剑伤的少年饮恨...', 0, 's1007772.jpg', NULL);
INSERT INTO `user_book`
VALUES (548, 0, 0, '档案', '[英] 蒂莫西·加顿艾什 / 汪仲 ', '7.6', 882, ' 广西师范大学出版社 ', ' 2015-9-20 ', ' 58.00元',
        '这是一部跟乔治·奥威尔或约翰·勒卡雷的小说一样扣人心弦、令人不安且具有道德挑战的私人叙述，只不过这里讲述的全部都是真的。★梁文道、刘瑜、熊培云、许知远联袂主...', 0, 's26577706.jpg', NULL);
INSERT INTO `user_book`
VALUES (549, 0, 0, '黑毡上的北魏皇帝', '罗新 ', '8.5', 1017, ' 海豚出版社 ', ' 2014-7-1 ', ' 16.80元',
        '《黑毡上的北魏皇帝》从北魏皇帝的即位仪式，看民族政治传统的遭遇、碰撞与变异。海豚书馆系列之《黑毡上的北魏皇帝》，全书共分为五个部分，分别是一、孝武帝元脩的...', 0, 's25926547.jpg', NULL);
INSERT INTO `user_book`
VALUES (550, 0, 0, '医疗与帝国', '[英]普拉提克·查克拉巴提 / 李尚仁 ', '7.9', 125, ' 社会科学文献出版社 ', ' 2019-8 ', ' 69.00',
        '本书在地理尺度上横跨美、亚、非三洲，并顾及澳大利亚、太平洋岛群；在时间刻度上，自17世纪以降，横跨350年；在资料取用上，参照最新的研究成果和第一手资料，能...', 0, 's34456273.jpg', NULL);
INSERT INTO `user_book`
VALUES (551, 0, 0, '小姨多鹤', '严歌苓 ', '8.6', 27387, ' 作家出版社 ', ' 2008-4 ', ' 28.00元',
        '二战进入尾声，日本战败投降，大批当年被移民来中国东北企图对中国实施长期殖民统治的普通日本国民被抛弃。十六岁的少女多鹤即为其一，在死难多艰的逃亡中，她依靠机智...', 0, 's3012517.jpg', NULL);
INSERT INTO `user_book`
VALUES (552, 0, 0, '大逃港', '陈秉安 ', '8.1', 1330, ' 广东人民出版社 ', ' 2010-7 ', ' 38.00元',
        '《大逃港》内容简介：共产主义曾经描绘了人类有史以来最为宏伟壮丽的图景，它曾承诺不仅将给社会带来平等、公正，而且将创造出高度发达的社会生产力，为人民群众带来比...', 0, 's5253517.jpg', NULL);
INSERT INTO `user_book`
VALUES (553, 0, 0, '贸易打造的世界', '[美] 彭慕兰、[美] 史蒂文·托皮克 / 黄中宪、吴莉苇 ', '8.2', 847, ' 上海人民出版社 ', ' 2018-2 ', ' 79.80元',
        '纵跨600年|83篇小史|30年研究精髓|热销17年|3次再版更新《大分流》作者、美国历史学会会长彭慕兰拉美史、全球贸易史专家史蒂文•托皮...', 0, 's27155983.jpg', NULL);
INSERT INTO `user_book`
VALUES (554, 0, 0, '历史的回归', '珍妮弗·韦尔什 / 鲁力 ', '7.3', 31, ' 南京大学出版社 ', ' 2020-1 ', ' 52',
        '◆各国角力、难民迁徙、贫富不均、社会不公……21世纪，是历史的终结还是历史的回归？···【内容简介】20世纪80年代末，弗朗西斯·福山曾提出自由民主...', 0, 's34897067.jpg', NULL);
INSERT INTO `user_book`
VALUES (555, 0, 0, '额尔古纳河右岸', '迟子建 ', '9.0', 12402, ' 北京十月文艺出版社 ', ' 2005-12-1 ', ' 29.00元',
        '这是第一部描述我国东北少数民族鄂温克人生存现状及百年沧桑的长篇小说。似一壁饱得天地之灵气，令人惊叹却难得其解的神奇岩画；又似一卷时而安恬、时而激越，向世人诉...', 0, 's3311253.jpg', NULL);
INSERT INTO `user_book`
VALUES (556, 0, 0, '论大战略', '[美]约翰·刘易斯·加迪斯（John Lewis Gaddis） / 臧博、崔传刚 ', '7.3', 381, ' 中信出版集团 ', ' 2019-6-1 ',
        ' 69.00元', '《论大战略》的作者加迪斯自20年前起，就在耶鲁大学开设了“大战略研究”课程，受到广泛关注，是耶鲁大学最受欢迎的课程之一。他将为期一年的课程内容浓缩成为一本简...', 0,
        's33463340.jpg', NULL);
INSERT INTO `user_book`
VALUES (557, 0, 0, '万物简史', '[美] 比尔·布莱森 / 严维明、陈邕 ', '8.7', 8634, ' 接力出版社 ', ' 2005-2 ', ' 36.80元',
        '这是一部有关现代科学发展史的既通俗易懂又引人入胜的书，作者用清晰明了、幽默风趣的笔法，将宇宙大爆炸到人类文明发展进程中所发生的繁多妙趣横生的故事一一收入笔下...', 0, 's1225983.jpg', NULL);
INSERT INTO `user_book`
VALUES (558, 0, 0, '祖宗之法', '邓小南 ', '8.7', 468, ' 生活·读书·新知三联书店 ', ' 2014-11 ', ' 67.00元',
        '“本书论述祖宗之法在宋代的发展与变化，虽以北宋前期为重心，实则阐明两宋君臣因时事变异,选择祖宗言行，做出不同的解释和利用的过程，既塑造可供仿效的祖宗形象，也...', 0, 's26136469.jpg', NULL);
INSERT INTO `user_book`
VALUES (559, 0, 0, '汉密尔顿传', '[美] 罗恩·彻诺 / 张向玲、高翔、何皓瑜 ', '9.3', 461, ' 浙江大学出版社 ', ' 2018-6 ', ' 198.00',
        '亚历山大·汉密尔顿的人生跌宕起伏。他参与了美国独立战争、制宪会议、又作为美国首任财政部长参与了美利坚合众国的政府体制的建立。这既是一篇扣人心弦的个人故事，也...', 0, 's27598715.jpg', NULL);
INSERT INTO `user_book`
VALUES (560, 0, 0, '未来简史', '[以色列] 尤瓦尔·赫拉利 / 林俊宏 ', '8.7', 4161, ' 中信出版集团 ', ' 2016-12-27 ', ' ¥100',
        '《未来简史:从智人到智神》进入21世纪后，曾经长期威胁人类生存、发展的瘟疫、饥荒和战争已经被攻克，智人面临着新的待办议题：永生不老、幸福快乐和成为具有“神性...', 0, 's26945094.jpg', NULL);
INSERT INTO `user_book`
VALUES (561, 0, 0, '孔子大历史', '李硕 ', '8.4', 416, ' 上海人民出版社 ', ' 2019-4 ', ' 59.00元',
        '☆写孔子的成长和转型，写孔子的执著与妥协☆细描圣人生活世界，还原孔子生平真相，发千载未发之隐覆☆品味贵族时代风貌，追寻古代政治文明。贵族社会为何渐行渐远...', 0, 's30486966.jpg', NULL);
INSERT INTO `user_book`
VALUES (562, 0, 0, '山居笔记', '余秋雨 ', '7.9', 14448, ' 文汇出版社 ', ' 2002-1 ', ' 28.00',
        '《山居笔记》是余秋雨在1992年至1994年间，全身心地用两年多的时间创作成的，共十一篇文章。写作期间，作者辞去了学院的职务，不再上班；同时写作又与考察联在...', 0, 's1001204.jpg', NULL);
INSERT INTO `user_book`
VALUES (563, 0, 0, '亢奋战', '[德] 诺曼·奥勒 / 强朝晖 ', '8.4', 810, ' 社会科学文献出版社 ', ' 2018-10 ', ' 69.00元',
        '☆德国作家诺曼·奥勒的首部非虚构作品☆第一次全面披露纳粹统治下的毒品状况☆颠覆我们对纳粹和二战认知的一本书本书第一次全面论述了纳粹统治下的毒品状况——...', 0, 's30230911.jpg', NULL);
INSERT INTO `user_book`
VALUES (564, 0, 0, '西方哲学史（上卷）', '[英] 罗素 / 何兆武、李约瑟 ', '8.9', 11262, ' 商务印书馆 ', ' 1963-9 ', ' 25.00',
        '罗素的《西方哲学史》是一部很有特色的讨论西方哲学史的著作。其叙述年代从希腊文明的兴起一直到现代的逻辑分析哲学。罗素这部西方哲学史的全名是《西方哲学史及其与从...', 0, 's1008189.jpg', NULL);
INSERT INTO `user_book`
VALUES (565, 0, 0, '5000年文明启示录', '[美]威廉·H.麦克尼尔 / 田瑞雪 ', '9.5', 24, ' 湖北教育出版社 ', ' 2019-10 ', ' 128.00元',
        '《5000年文明启示录》中，作者以其全球史观，将人类不同社会的历史整合为一个整体，从全球的角度来考察世界各个地区人类文明的产生与发展。从文明的发韧到现代文明...', 0, 's34826220.jpg', NULL);
INSERT INTO `user_book`
VALUES (566, 0, 0, '东印度公司与亚洲之海', '羽田正 ', '8.3', 71, ' 毕世鸿、李秋艳 ', ' 北京日报出版社 ', ' 2019-11',
        '本书跳出文明、国别、地区的局限，通过东印度公司的兴亡，再现全球两百年的激变。这些17世纪初期成立的“公司”，在世界一体化之初耀眼登场，用船只和贸易连接全世界...', 0, 's34834204.jpg', NULL);
INSERT INTO `user_book`
VALUES (567, 0, 0, '北欧，冰与火之地的寻真之旅', '[英] 迈克尔·布斯 / 梁卿 ', '8.6', 3678, ' 生活·读书·新知三联书店 ', ' 2016-1 ', ' 58.00元',
        '1539年，在奥拉斯•马格努斯绘制的《海图》中，这里还是一片海上巨怪频出的边陲之境，沉睡近500年之后，一跃成为地球上幸福感最为强烈的地区，仅剩天堂可...', 0, 's26708306.jpg', NULL);
INSERT INTO `user_book`
VALUES (568, 0, 0, '青年变革者', '许知远 ', '7.5', 1326, ' 活字文化 | 上海人民出版社 ', ' 2019-5 ', ' 68.00元',
        '许知远积淀五年的转型力作“做视频节目，我只花了30％的精力，剩下70％的精神在写一本新书，关于梁启超。”·许知远回访历史现场，探寻先哲足迹，纵览相关文...', 0, 's33393524.jpg', NULL);
INSERT INTO `user_book`
VALUES (569, 0, 0, '战争时期日本精神史', '[日] 鹤见俊辅 / 邱振瑞 ', '7.7', 240, ' 北京日报出版社 ', ' 2019-9 ', ' 65.00',
        '自1931年“九一八事变”到1945年二战结束，日本以“国体”之名，让包含殖民地在内的全日本帝国笼罩在强烈的国家意识形态支配下，对战争、天皇、国家极端狂热，...', 0, 's34835561.jpg', NULL);
INSERT INTO `user_book`
VALUES (570, 0, 0, '出埃及记', '（美）里昂·尤里斯 / 高卫民 ', '8.7', 2224, ' 中国青年出版社 ', ' 2008-10 ', ' 50.00元',
        '《出埃及记》作为一部非凡的小说，取材于二十世纪最戏剧性的事件之一：一个崭新的国家，在经历了无论从军事、政治、地理、经济上都令人难以置信的艰难困苦后，终于诞生...', 0, 's3228779.jpg', NULL);
INSERT INTO `user_book`
VALUES (571, 0, 0, '步步惊心', '桐华 ', '8.1', 53488, ' 民族出版社 ', ' 2006-6 ', ' 25.00元',
        '一脚踏空的少女，穿越千年的时空，从繁华都市的深圳来到风云诡变的宫廷。正处于争位时候的阿哥们，款款深情的目光后，带着探究、带着诱惑也带着几分真真假假的心疼。她...', 1, 's1812439.jpg', NULL);
INSERT INTO `user_book`
VALUES (572, 0, 0, '从历史中醒来', '孙机 ', '9.0', 345, ' 生活·读书·新知三联书店 ', ' 2016-8 ', ' 78.00',
        '《中国古代物质文化》作者孙机新作文物学家、考古学家孙机叙谈古代文物，唤醒沉睡在博物馆中的千年古物，讲述古代社会生活，把涉及社会生活方方面面的基本知识介绍...', 0, 's26848651.jpg', NULL);
INSERT INTO `user_book`
VALUES (573, 0, 0, '神策军与中晚唐宦官政治', '黄楼 ', '8.9', 55, ' 中华书局 ', ' 2019-10 ', ' 148.00元',
        '中晚唐宦官政治是一个颇具学术价值的课题。作为“国家社科基金后期资助项目”，本书在这一问题上进行了深入而新颖的探讨。本书以神策军为逻辑切入点，分别以神策军的...', 0, 's34845099.jpg', NULL);
INSERT INTO `user_book`
VALUES (574, 0, 0, '昨天的云', '王鼎钧 ', '8.8', 2545, ' 生活•读书•新知三联书店 ', ' 2013-1-1 ', ' 30.00元',
        '这是王鼎钧“回忆录四部曲”的第一部，写故乡、家庭和抗战初期的遭遇。作者对家乡的风土人情、历史掌故及种地劳作信手拈来；同时将个体的遭遇置于宏大的社会背景中，以...', 0, 's20433556.jpg', NULL);
INSERT INTO `user_book`
VALUES (575, 0, 0, '此时怀抱向谁开', '袁一丹 ', '8.6', 17, ' 上海文艺出版社 ', ' 2020-4 ', ' 48.00',
        '“此时怀抱向谁开”，取自顾随之词，作于北平沦陷时期。借为书题，因此集所录之文，多探求明暗之间的历史，微婉隐曲的表达，及历史中人欲言还止的心事。文史互通，通...', 0, 's35000681.jpg', NULL);
INSERT INTO `user_book`
VALUES (576, 0, 0, '维正之供', '周健 ', '8.6', 57, ' 北京师范大学出版社 ', ' 2020-1-1 ', ' 88.00元',
        '【内容简介】田赋是清朝的“维正之供”，关系国计民生甚巨：它长期占国家财政收入的70%以上，也是民众最主要的赋税负担。田赋联系着皇帝、官僚、绅衿与小民，以其...', 0, 's34869893.jpg', NULL);
INSERT INTO `user_book`
VALUES (577, 0, 0, '中华的崩溃与扩大： 魏晋南北朝', '川本芳昭 / 余晓潮 ', '8.0', 1695, ' 广西师大出版社 ', ' 2014-2 ', ' 45.00',
        '本书是日本讲谈社“中国历史”系列“魏晋南北朝”一卷。《中国的历史》为日本讲谈社百周年献礼之作，是日本历史学家写给大众的中国通史读本。丛书自上古到近代，内容...', 0, 's25828759.jpg', NULL);
INSERT INTO `user_book`
VALUES (578, 0, 0, '罗马的复辟', '[英]彼得·希瑟(Peter Heather) / 马百亮 ', '8.9', 80, ' 中信出版集团 ', ' 2019-12-20 ', ' 98.00元',
        '帝国陨落之后，还能重生吗？476年，西罗马末代皇帝被废，数百年的帝国传统宣告终结。然而，帝国的文化、制度、精神仍有存留，与之相伴的利益催动着重建帝国的野心...', 0, 's34873200.jpg', NULL);
INSERT INTO `user_book`
VALUES (579, 0, 0, '开放中的变迁', '金观涛、刘青峰 ', '9.2', 1046, ' 法律出版社 ', ' 2011-1 ', ' 46.00元',
        '作者探讨1840至1956百多年间中国社会宏观结构的变迁的最新著作，观点新颖并富挑战性。作者不同意海内外的流行见解，即把中国近现代社会变迁视为传统社会的断裂...', 0, 's5906321.jpg', NULL);
INSERT INTO `user_book`
VALUES (580, 0, 0, '透过地理看历史', '李不白 ', '8.7', 79, ' 台海出版社 ', ' 2019-12 ', ' 39.80',
        '中国的史书卷帙浩繁，对于历史爱好者而言，要通读几千年的史书，是一项巨大的工程。而本书使我们认识到，不管朝代如何更迭，风云如何变幻，地理因素的作用始终至关重要...', 0, 's34876875.jpg', NULL);
INSERT INTO `user_book`
VALUES (581, 0, 0, '东亚古代的诸民族与国家', '(日) 川本芳昭 / 刘可维 ', '9.2', 12, ' 社会科学文献出版社 ', ' 2020-4 ', ' 108.00元',
        '★汉民族是什么时候、如何形成的？★一个不同于秦汉社会的“中华帝国”是如何在与诸民族互动形成的？★东亚大陆形成的统一帝国对周边民族与国家会产生什么影...', 0, 's30420997.jpg', NULL);
INSERT INTO `user_book`
VALUES (582, 0, 0, '近代的尺度', '茅海建 ', '9.1', 187, ' 生活·读书·新知三联书店 ', ' 2018-6 ', ' 65.00元',
        '两次鸦片战争实为中国历史之转折，传统的国家进入了近代的世界。作者由此考察了两次鸦片战争的军事：清朝的军费、兵力、装备、训练水平，以披露西方新敌面前的“天朝”...', 0, 's30126870.jpg', NULL);
INSERT INTO `user_book`
VALUES (583, 0, 0, '欧洲文明十五讲', '陈乐民 ', '8.5', 2352, ' 北京大学出版社 ', ' 2004-06 ', ' 28.00元',
        '《欧洲文明十五讲》作者陈乐民，欧洲的文化传统在传承中同源而分流，有批判、有扬弃，但在批判和扬弃中有创新。从15世纪以来的科学思维和实践，自由民主理念的从胚胎...', 0, 's1065142.jpg', NULL);
INSERT INTO `user_book`
VALUES (584, 0, 0, '千年金融史', '威廉·N·戈兹曼 / 张亚光、熊金武 ', '7.9', 708, ' 中信出版集团股份有限公司 ', ' 2017-5-1 ', ' 68',
        '1著名金融学家阐述7000年来的金融发展，纵贯古今、跨领域、跨文化、多角度阐述金融对人类社会、文明的塑造和推动，总结金融规律，以此推算人类发展，解决现在的社...', 0, 's27026691.jpg', NULL);
INSERT INTO `user_book`
VALUES (585, 0, 0, '轴心时代', '［英］凯伦·阿姆斯特朗 / 孙艳燕、白彦兵 ', '8.7', 44, ' 上海三联书店 ', ' 2019-12 ', ' 98.00元',
        '“轴心时代”是人类历史上光耀千古的时代，是人类伟大思想传统的发端，也是人类精神给养取之不尽、用之不竭的源泉。这个时代诞生了四大文明——中国的儒道思想、印度的...', 0, 's34895563.jpg', NULL);
INSERT INTO `user_book`
VALUES (586, 0, 0, '甜与权力', '西敏司 / 朱健刚、王超 ', '8.2', 1312, ' 商务印书馆 ', ' 2010-5 ', ' 32.00元',
        '《甜与权力》一书便是一个绝佳范例。作为一部人类学经典作品，西敏司娓娓道来的是糖这件平常事物身后奇妙而非同寻常的历史。聚焦于工业化早期的英格兰以及美洲加勒比殖...', 0, 's4891219.jpg', NULL);
INSERT INTO `user_book`
VALUES (587, 0, 0, '苏东坡传', '林语堂 / 张振玉 ', '8.3', 4864, ' 湖南文艺出版社 ', ' 2012-1-1 ', ' 28.00元',
        '苏东坡虽文章闻名天下，仕途却历尽艰辛，屡遭迫害，但终不改其乐观的天性；他一生融儒、释、道于一体，诗、文、词、书、画俱在才俊辈出的宋代登峰造极；他比中国其他的...', 0, 's6990084.jpg', NULL);
INSERT INTO `user_book`
VALUES (588, 0, 0, '谁在世界中心', '温骏轩 ', '8.7', 1963, ' 中信出版集团 ', ' 2017-6 ', ' 49.80元',
        '放眼世界，博弈是永恒的主题，但每个时代的大国博弈又有其自身的特点。天涯论坛国际观察代表人物温骏轩历时8年，以地理环境为切入点，以地图为工具，从地缘视角探讨了...', 0, 's27045287.jpg', NULL);
INSERT INTO `user_book`
VALUES (589, 0, 0, '世界简史', '赫伯特·乔治·威尔斯 / 谢凯 ', '7.3', 1092, ' 民主与建设出版社 ', ' 2015-10-1 ', ' 39.8',
        '★《世界简史》由林徽因等译介，在中国长销70周年。★《世界简史》，全世界狂销200万册，被翻译成30多个国家的文字，50多个版本，可谓是经典中的经典。★...', 0, 's26657357.jpg', NULL);
INSERT INTO `user_book`
VALUES (590, 0, 0, '建筑的故事', '[英] 帕特里克·狄龙 著、[英] 斯蒂芬·比斯蒂 绘 / 姜南菲、吴婧 ', '9.3', 226, ' 后浪丨北京联合出版公司 ', ' 2020-1 ',
        ' 168.00元', '一部手绘全球建筑史：普利策奖获奖作者为你讲述建筑的前世今生；剖面图大师图解16座传世建筑。◎编辑推荐☆普利策奖获奖作者与剖面图大师联袂创作该书作...', 0, 's33476150.jpg',
        NULL);
INSERT INTO `user_book`
VALUES (591, 0, 0, '大棋局中的国共关系', '吕迅 ', '8.9', 333, ' 社会科学文献出版社 ', ' 2015-4 ', ' 89.00元',
        '第二次世界大战结束后，中国经历了从内战到国际冷战的转变过程。在这一过程中，意识形态发挥了重要作用，中国共产党和苏联较早开始挑战美国主导下兴建的第二次世界大战...', 0, 's26413582.jpg', NULL);
INSERT INTO `user_book`
VALUES (592, 0, 0, '明治天皇', '[美] 唐纳德·基恩 / 曾小楚、伍秋玉 ', '8.4', 465, ' 上海三联书店 ', ' 2018-7 ', ' 158.00',
        '【作品看点】★明治维新、西南战争、甲午战争、义和团运动、日俄战争，在接踵而至的大事件中，日本如何应对众多的机遇和挑战。★首部可靠和完整的天皇传记，展现明...', 0, 's30222403.jpg', NULL);
INSERT INTO `user_book`
VALUES (593, 0, 0, '士大夫政治演生史稿', '阎步克 ', '9.0', 503, ' 北京大学出版社 ', ' 2015-1-1 ', ' CNY 75.00',
        '帝制中国的官僚政治由拥有人文教养的儒生文士承担，“文人”和“官僚”一身二任，由此塑造出了一种“士大夫政治”。这是中国传统政治体制的独特性的一个重要体现。《士...', 0, 's26295138.jpg', NULL);
INSERT INTO `user_book`
VALUES (594, 0, 0, '战争的余烬', '[美] 弗雷德里克·罗格瓦尔 / 詹涓 ', '8.9', 288, ' 社会科学文献出版社 ', ' 2017-10-30 ', ' 158.00元',
        '一场横跨20世纪中叶、驱动国际事务中各股政治力量的传奇战争深入讲述法兰西殖民帝国如何衰落，而几任美国领导人又是如何一步步走上发起一场成熟战争之路的非凡著作...', 0, 's26959626.jpg', NULL);
INSERT INTO `user_book`
VALUES (595, 0, 0, '意大利文艺复兴时期的文化', '雅各布·布克哈特 / 何新 ', '8.5', 622, ' 商务印书馆 ', ' 1997 ', ' 29.50元',
        '《意大利文艺复兴时期的文化》一书是资产阶级历史学中关于这个重大的文化革命运动最重要的著作。他根据前人对意大利文艺复兴各方面的研究，和他自己对这个问题穷年累月...', 0, 's1138452.jpg', NULL);
INSERT INTO `user_book`
VALUES (596, 0, 0, '战争论', '克劳塞维茨(德) / 中国人民解放军军事科学院 ', '8.9', 924, ' 解放军出版社 ', ' 2005-1-1 ', ' 79.00元',
        '《战争论》是克劳塞维茨在总结以往战争特别是拿破仑战争的基础上写成的，全书共8篇124章；另有说明、作者自序，及作者在1810年至1812年为普鲁士王太子讲授...', 0, 's1009105.jpg', NULL);
INSERT INTO `user_book`
VALUES (597, 0, 0, '艺术通史', '[英] 史蒂芬·法辛 / 杨凌峰 ', '9.8', 69, ' 未读·艺术家·北京联合出版公司 ', ' 2019-12 ', ' 268.00元',
        '本书追溯了7万余年的艺术发展历程，以全球视角展现出不同时代与地域，不同社会和文化情境中艺术多样的面貌。书中包含1100余张高清全彩插图，囊括了绘画、雕塑、行...', 0, 's34443586.jpg', NULL);
INSERT INTO `user_book`
VALUES (598, 0, 0, '宋史', '陈振 ', '8.4', 45, ' 上海人民出版社 ', ' 2016-8-30 ', ' CNY 78.00',
        '著名宋史专家陈振先生的重要学术成果。对宋朝这个中国历史积弱王朝的政治、军事等制度，社会经济、思想文化、科举教育和文学艺术、科学技术、社会生等方面的变化与发展...', 0, 's26962119.jpg', NULL);
INSERT INTO `user_book`
VALUES (599, 0, 0, '宽容', '（美）房龙 / 迮卫/等 ', '8.5', 4778, ' 三联书店 ', ' 1998-06 ', ' 17.80',
        '在宁静的无知山谷里，人们过着幸福的生活。\r永恒的山脉向东西南北各个方向蜿蜒绵亘。\r知识的小溪沿着深邃破败的溪谷缓缓地流着。\r它发源于...', 0, 's1010204.jpg', NULL);
INSERT INTO `user_book`
VALUES (600, 0, 0, '生存与命运', '[苏] 瓦·格罗斯曼 / 严永兴、郑海凌 ', '9.1', 561, ' 中信出版集团·新思文化 ', ' 2015-10 ', ' 98.00元',
        '逝去的人，活着的人，苦难并没有结束……●理解极权社会起源的必读之书！●一部应该被人类长久记忆的伟大著作！●欧美公认“当代的《战争与和平》”...', 0, 's26570629.jpg', NULL);
INSERT INTO `user_book`
VALUES (601, 0, 0, '魏晋南北朝史', '王仲荦 ', '9.3', 91, ' 上海人民出版社 ', ' 2016-8-30 ', ' 95.00元',
        '魏晋南北朝是指我国历史发展的一个特殊时段，始于东汉的灭亡，终于隋朝的建立，主要包括三国、西晋、东晋、五胡十六国、南朝与北朝。本书体例严谨，论证详密，资料丰富...', 0, 's26962803.jpg', NULL);
INSERT INTO `user_book`
VALUES (602, 0, 0, '亲历切尔诺贝利', '[俄]格里戈里·梅德韦杰夫 / 刘建波 ', '8.9', 144, ' 后浪丨民主与建设出版社 ', ' 2019-8 ', ' 45.00元',
        '切尔诺贝利安全神话的破灭近距离接触核灾难现场揭露史上特大核事故的真相◎编辑推荐☆详细记录史上特大核事故切尔诺贝利事件☆作者作为专业人员，以第一视...', 0, 's33387425.jpg', NULL);
INSERT INTO `user_book`
VALUES (603, 0, 0, '被颠覆的文明', '边芹 ', '7.6', 399, ' 东方出版社 ', ' 2013-12-1 ', ' 42.00元',
        '文明人侵从哪里开始？中国人也许做梦也没想到，西方电影大片除了制造令人目眩神迷的“美国梦”“欧洲梦”以外，还通过画面细节设置、发行渠道控制、国际评奖操纵、媒体...', 0, 's25786148.jpg', NULL);
INSERT INTO `user_book`
VALUES (604, 0, 0, '袁氏当国', '唐德刚 ', '8.7', 572, ' 广西师范大学出版社 ', ' 2019-6 ', ' 56.00元',
        '上自孙文缔造共和肇始，下逮蔡锷护国运动兴起，袁世凯当国之年，国可谓不兴，民可谓不幸。民国开国前后，垂帘听政而无术支配的隆裕太后，拥一对寡妇孤儿入承大统的摄...', 0, 's26314773.jpg', NULL);
INSERT INTO `user_book`
VALUES (605, 0, 0, '千年一叹', '余秋雨 ', '7.6', 23639, ' 作家出版社 ', ' 2002-10 ', ' 35.00元',
        '余秋雨作为特邀嘉宾，参与了香港凤凰卫视组织的大型跨国采访报道活动——“千禧之旅”，过程中所写的日记及散文在国内外多家报纸同步发表后引起较大反响。《千年一叹》...', 0, 's1020241.jpg', NULL);
INSERT INTO `user_book`
VALUES (606, 0, 0, '欧罗巴一千年', '[英] 伊恩·莫蒂默 / 李荣庆 等 ', '8.3', 129, ' 上海人民出版社 ', ' 2019-7-1 ', ' 75.00元',
        '☆印刷、火器、方言、时间计量、知识复兴、宗教改革、启蒙运动、工业革命、城市化……哪个是给人类社会带来最大影响的改变？☆教皇格列高利七世、彼得·阿伯拉尔、教...', 0, 's33395089.jpg', NULL);
INSERT INTO `user_book`
VALUES (607, 0, 0, '权力的毛细管作用', '王汎森 ', '8.8', 692, ' 北京大学出版社 ', ' 2015-9-1 ', ' 95.00元',
        '《权力的毛细管作用》聚焦于明清嬗代之际的思想史和学术史。全书分两部分，第一部分藉考察讲经会、省过会、日谱、人谱等面相，探讨明季清初道德意识的呈现方式及转化，...', 0, 's26581737.jpg', NULL);
INSERT INTO `user_book`
VALUES (608, 0, 0, '土地改革与华北乡村权力变迁', '李里峰 ', '9.1', 50, ' 江苏人民出版社 ', ' 2018-7 ', ' 78.00元',
        '《土地改革与华北乡村权力变迁：一项政治史的考察/青年社科英才文丛》以河北、山东等省份为中心，以大量未刊土改档案为主体资料，综合运用政治学、历史学的理论和方法...', 0, 's34451877.jpg', NULL);
INSERT INTO `user_book`
VALUES (609, 0, 0, '江湖丛谈', '连阔如  著、贾建国 连丽如 整理 ', '8.6', 1345, ' 当代中国出版社 ', ' 2005-8 ', ' 38.00元',
        '本书是我国现今仅存的一部客观而又比较全面地介绍江湖行当、行话和内幕的书籍。作者连阔如是我国著名的评书艺术家。20世纪30年代，他以云游客的笔名，在北平《时...', 0, 's1422105.jpg', NULL);
INSERT INTO `user_book`
VALUES (610, 0, 0, '陈寅恪的最后20年', '陆键东 ', '8.7', 3753, ' 生活·读书·新知三联书店 ', ' 1995-12 ', ' 23.00',
        '本书根据大量档案文献和第一手的采访资料，详尽描绘了陈寅恪生命最后二十年的坎坷经历，披露了许多鲜为人知的史实。本书为读者打开了一段尘封的历史，从陈寅恪的生存状...', 0, 's1002690.jpg', NULL);
INSERT INTO `user_book`
VALUES (611, 0, 0, '风起陇西', '马伯庸 ', '8.1', 5856, ' 山西人民出版社 ', ' 2011-1 ', ' 29.80元',
        '2010年人民文学奖得主，鬼才马伯庸长篇力作！三国时代的间谍战争，见证情报大师诸葛亮的暗面锋芒一场不知敌人是谁，黑暗中的猎杀与反猎杀三国最成功的间谍与...', 0, 's6025373.jpg', NULL);
INSERT INTO `user_book`
VALUES (612, 0, 0, '瘟疫年纪事', '(英)丹尼尔·笛福 / 许志强 ', '7.5', 315, ' 上海译文出版社 ', ' 2013-11 ', ' 39.00',
        '小说描述了1665年大瘟疫袭击下的伦敦城。这本小说很可能是基于笛福的叔叔，亨利·笛福当时所留下的记录。在这本书中，笛福不厌其烦地为达到效果逼真，巨细靡遗地描...', 0, 's24859374.jpg', NULL);
INSERT INTO `user_book`
VALUES (613, 0, 0, '历史的用途与滥用', '（德）弗里德里希・尼采 / 陈涛、周辉荣 ', '9.0', 607, ' 上海人民出版社 ', ' 2005-05 ', ' 12.00',
        '《历史的用途与滥用》是德国思想家尼采于1874年出版的一部重要作品，被认为与尼采早期的另一部杰出作品《悲剧的诞生》具有同等重要的意义。尼采在《历史的用途与滥...', 0, 's1315167.jpg', NULL);
INSERT INTO `user_book`
VALUES (614, 0, 0, '作为方法的中国', '[日] 沟口雄三 / 孙军悦 ', '9.0', 477, ' 生活·读书·新知三联书店 ', ' 2011-2 ', ' 36.00元',
        '《作为方法的中国》包括了：考察“中国近代”的视角、关于近代中国像的重新探讨、中国的“封建”与近代、天下与国家、生民与国民、作为方法的中国、津田支那学和今后的...', 0, 's5914497.jpg', NULL);
INSERT INTO `user_book`
VALUES (615, 0, 0, '黎东方讲史之续·细说宋朝', '虞云国 ', '9.4', 142, ' 上海人民出版社 ', ' 2019-7 ', ' 78',
        '本书叙述自宋太祖统一全国至元灭南宋期间的历史，涉及两宋、西夏、辽、金等政权的重要历史和人物。作者以“讲史”的形式，叙述了陈桥兵变、杯酒释兵权、澶渊之盟、靖康...', 0, 's33443912.jpg', NULL);
INSERT INTO `user_book`
VALUES (616, 0, 0, '春秋大义', '熊逸 ', '8.8', 1610, ' 陕西师范大学出版社 ', ' 2007-12 ', ' 49.80元',
        '《春秋大义:中国传统语境下的皇权与学术》的构架，以上千年的纵深探究历史，不但从中国文化中寻根溯源，还兼涉了西方人类学、宗教学、社会学、心理学，与过去强调“中...', 0, 's2363834.jpg', NULL);
INSERT INTO `user_book`
VALUES (617, 0, 0, '布局天下', '饶胜文 ', '8.8', 825, ' 解放军出版社 ', ' 2002-1-1 ', ' 21.00元',
        '放在读者面前的这本书《布局天下——中国古代军事地理大势》，是一本历史军事地理著作。什么是历史军事地理?著名历史地理学家谭其骧先生认为：\"军事地理学研究军事与...', 0, 's1207500.jpg', NULL);
INSERT INTO `user_book`
VALUES (618, 0, 0, '食物探险者', '[美] 丹尼尔·斯通 / 张建国 ', '8.3', 59, ' 广西师范大学出版社 ', ' 2020-1-1 ', ' 108',
        '19世纪的美国，食物品种单一，人们吃饭只是为了果腹，并不是为了享受美食。没人会想到在新世纪来临前，一位植物学家会给美国人的餐桌带来翻天覆地的变化。意大利的无...', 0, 's34900595.jpg', NULL);
INSERT INTO `user_book`
VALUES (619, 0, 0, '年羹尧之死', '郑小悠 ', '7.8', 1524, ' 山西人民出版社 ', ' 2018-3-31 ', ' 46.00元',
        '内容提要：本书围绕着年羹尧与雍正君臣关系的演变历程，全面回顾了年羹尧一生从得意到失意的宦海浮沉：年少时科场高中，入仕后步步高升，在胤禛继位过程中发挥重要作...', 0, 's30190228.jpg', NULL);
INSERT INTO `user_book`
VALUES (620, 0, 0, '嵇康之死', '陈滞冬 ', '7.6', 430, ' 新星出版社 ', ' 2020-1-1 ', ' 28',
        '嵇康，曹魏著名文士，“竹林七贤”核心人物，“魏晋风度”的代表。诗人、音乐家、哲学家、铁匠、美男子、特立独行的人。诗文、辞赋、书论均斐然可观。《三国志·魏...', 0, 's34913634.jpg', NULL);
INSERT INTO `user_book`
VALUES (621, 0, 0, '浪潮之巅（第四版）（上下册）', '吴军 ', '9.1', 405, ' 人民邮电出版社 ', ' 2019-6 ', ' 139.00元',
        '这不只是一部科技产业发展历史集……更是在这个智能时代，一部IT人非读不可，而非IT人也应该阅读的作品。一个企业的发展与崛起，绝非只是空有领导强人即可达成...', 0, 's33474750.jpg', NULL);
INSERT INTO `user_book`
VALUES (622, 0, 0, '亮剑', '都梁 ', '9.2', 3030, ' 人民文学出版社 ', ' 2007-7 ', ' 30.00元',
        '《亮剑》是一部战争艺术和传奇色彩融会贯通的主旋律作品。剧中，爱国精神与英雄主义、铁血丹心与人世常情、斗智与斗勇、友情与爱情交相辉映。故事内容是讲述我军优秀将...', 0, 's2148992.jpg', NULL);
INSERT INTO `user_book`
VALUES (623, 0, 0, '大清相国', '王跃文 ', '7.6', 4275, ' 湖南文艺出版社 ', ' 2012-7 ', ' 38.00元',
        '长篇历史小说《大清相国》塑造了以陈廷敬为主要代表的大臣群相，反映了一个特定历史境遇中官场人物的人格、道德和行为的艰难选择，再现出三百多年前的官场风云。小说...', 0, 's11587576.jpg', NULL);
INSERT INTO `user_book`
VALUES (624, 0, 0, '神风特攻队、樱花与民族主义', '大贯惠美子 / 石峰 ', '8.6', 330, ' 商务印书馆 ', ' 2016-10-1 ', ' 45.00元',
        '二战末，尽管日本正面临战败，为什么一万多名受过高等教育的“学生兵”自愿加入“神风特攻队”的行列？在这部关于日本极权主义意识形态中象征主义和美学的角色的迷人研...', 0, 's26800340.jpg', NULL);
INSERT INTO `user_book`
VALUES (625, 0, 0, '现代西藏史 1955–1957', '梅·戈尔斯坦 / 彭云 ', '9.7', 17, ' 香港中文大学出版社 ', ' 2019-12 ', ' US$40.00',
        '本书是梅·戈尔斯坦现代西藏史系列的第三部著作，检视了1955年到1957年这一关键时期的诸多事件。戈尔斯坦利用从未曝光的中国政府文件、已出版与未出版的回忆录...', 0, 's34945248.jpg', NULL);
INSERT INTO `user_book`
VALUES (626, 0, 0, '人类酷刑简史', '[美] 马克·P.唐纳利、[美] 丹尼尔·迪尔 / 张恒杰 ', '7.1', 1112, ' 中国友谊出版公司 ', ' 2018-1 ', ' 59.00元',
        '几千年以来，人类想出很多巧妙而残忍的方法来对同类施加痛苦。这一可悲但似乎普遍的特征腐蚀着人类所追求的文明。尽管我们如今似乎对酷刑深恶痛绝，但是3000多年以...', 0, 's27614470.jpg', NULL);
INSERT INTO `user_book`
VALUES (627, 0, 0, '国民党高层的派系政治', '金以林 ', '8.1', 758, ' 社会科学文献出版社 ', ' 2016-7 ', ' 79.00元',
        '国民党在中国大陆统治了22年。它同此前控制中央政权17年的北洋政府有着本质的不同，特别是在组织形态方面，国民党始终强调的是“以党治国”。但党的成员又是一个复...', 0, 's26830337.jpg', NULL);
INSERT INTO `user_book`
VALUES (628, 0, 0, '我的前半生', '爱新觉罗·溥仪 ', '8.4', 182, ' 群众出版社 ', ' 2013-1 ', ' 98.00元',
        '《我的前半生(批校本)》以《我的前半生（全本）》为底稿，对溥仪在《我的前半生》清样上百余处批校意见进行工整理，配原稿照片和整理文字，真实反映了溥仪当时的思想...', 0, 's21331177.jpg', NULL);
INSERT INTO `user_book`
VALUES (629, 0, 0, '国史新论', '钱穆 ', '8.6', 2435, ' 生活·读书·新知三联书店 ', ' 2005-02 ', ' 22.00元',
        '《国史新论(新版)》作者“旨求通俗，义取综合”，从中国的社会文化演变、传统的政治教育制度等多个侧面，融古今、贯诸端，对中国几千年历史之特质、症结、演变及对当...', 0, 's1277267.jpg', NULL);
INSERT INTO `user_book`
VALUES (630, 0, 0, '庞贝', '[英] 玛丽·比尔德、Mary Beard / 熊宸、王晨 ', '8.4', 203, ' 后浪丨民主与建设出版社 ', ' 2019-10 ', ' 99.80元',
        '2009年沃尔夫森历史奖获奖作品结合考古发现、文献史料、现代科技，完美还原庞贝古城面貌融合考据、推理、叙事，书写如侦探小说般好读的罗马城市生活史◎...', 0, 's34438693.jpg', NULL);
INSERT INTO `user_book`
VALUES (631, 0, 0, '拥抱战败', '（美）约翰·W·道尔 / 胡博 ', '8.9', 1533, ' 生活·读书·新知三联书店 ', ' 2008-9 ', ' 59.00元',
        '对日本人而言，直到1952年美国占领期结束，第二次世界大战才真正结束，而战争年代、战败以及被占领时期，给亲历者留下了难以磨灭的印迹。作者试图通过还原社会各阶...', 0, 's3206270.jpg', NULL);
INSERT INTO `user_book`
VALUES (632, 0, 0, '人类飞翔史', '[法]夏尔·多尔菲斯、亨利·布歇 / 袁俊生 ', '9.3', 20, ' 中国画报出版社 ', ' 2020-3 ', ' 118.00元',
        '本书从古代有关飞行的传说讲起，介绍了人类航空史上五个重要的发展阶段：无动力飞行器阶段、有动力飞行器的试验阶段（1843—1900）、活塞式发动机及装备此类发...', 0, 's34979052.jpg', NULL);
INSERT INTO `user_book`
VALUES (633, 0, 0, '企鹅欧洲史·罗马帝国的遗产', '[英]克里斯·威克姆 / 余乐 ', '8.4', 194, ' 中信出版集团·新思文化 ', ' 2019-6-1 ', ' 138.00元',
        '有人说，公元400—1000年仿佛野蛮的黑暗之海，古代世界的种种成就是海那边的一束微光，而西罗马帝国在5世纪的陨落是一次根本性的失败。然而，是时候重新审视被...', 0, 's33417161.jpg', NULL);
INSERT INTO `user_book`
VALUES (634, 0, 0, '庆余年·壹', '猫腻 ', '8.1', 15446, ' 中国友谊出版公司 ', ' 2008-7 ', ' 28.00元',
        '一个年轻的病人，因为一次毫不意外的经历，重生到一个完全不同的世界，成为古代庆国伯爵府一个并不光彩的私生子。修行无名功诀，踏足京都官场，继承庞大商团……范闲，...', 0, 's3155622.jpg', NULL);
INSERT INTO `user_book`
VALUES (635, 0, 0, '被遗忘的士兵', '[法] 盖伊·萨杰 / 杨华钢 ', '9.0', 1312, ' 新华出版社 ', ' 2009-1 ', ' 36.00元',
        '《被遗忘的士兵》以流畅的第一人称文笔，讲述了作者在这3年人类历史空前残酷屠戮中的个人见闻，文字描述生动、翔实，深刻刻画了作者的感受和经历。该书内容极其朴实而...', 0, 's3418938.jpg', NULL);
INSERT INTO `user_book`
VALUES (636, 0, 0, '思想是生活的一种方式', '王汎森 ', '9.1', 510, ' 北京大学出版社 ', ' 2018-3 ', ' 57.00元',
        '本书是王汎森教授研讨近代中国思想史的新作。他认为，思想与生活相与交织，不同人群所呈现的思想光谱浓淡不一，思想史研究应致力于刻画历史的复杂性。王汎森教授以此思...', 0, 's27667348.jpg', NULL);
INSERT INTO `user_book`
VALUES (637, 0, 0, '晚清七十年', '唐德刚 ', '8.7', 1748, ' 岳麓书社 ', ' 1999-9 ', ' 26.80元',
        '《晚清七十年》这部著作，原是海外史学家、胡适先生的高足唐德刚教授用英文写成的中国近代史的一个“导论篇”，后经不断增删和改写而成一部中国近代史著作。本书由于作...', 0, 's1069724.jpg', NULL);
INSERT INTO `user_book`
VALUES (638, 0, 0, '南渡北归（第一部）', '岳南 ', '8.0', 5561, ' 湖南文艺出版社 ', ' 2011-1 ', ' 39.80元',
        '《南渡北归》三部曲全景描绘了抗日战争时期流亡西南的知识分子与民族精英多样的命运和学术追求。所谓“南渡北归”，即作品中的大批知识分子冒着抗战的炮火由中原迁往...', 0, 's5399227.jpg', NULL);
INSERT INTO `user_book`
VALUES (639, 0, 0, '天才为何成群地来', '王汎森 ', '8.0', 569, ' 社会科学文献出版社 ', ' 2019-8 ', ' 59.00元',
        '【内容简介】本书为中研院院士王汎森先生部分重要文章的结集，共可分为四部分。一是作者在历史研究过程中的感想，对学术界动向特别是历史研究领域问题的观察和思考，...', 0, 's33450028.jpg', NULL);
INSERT INTO `user_book`
VALUES (640, 0, 0, '中国经济史', '钱穆 讲授、叶龙 记录整理、林毅夫 序 ', '8.1', 956, ' 北京联合出版公司·后浪出版公司 ', ' 2013-12 ', ' 39.80元',
        '故我们要研究中国政治史，或社会史，或经济史，只当在文化传统之一体性中来作研究，不可各别分割。我们当从政治史、社会史来研究经济史，亦当从政治思想、社会思想来研...', 0, 's25719688.jpg', NULL);
INSERT INTO `user_book`
VALUES (641, 0, 0, '处在十字路口的选择', '沈志华 ', '8.5', 731, ' 广东人民出版社 ', ' 2013-1-1 ', ' 58.00元',
        '为什么1956年的希望和期待会转变成1957年的失望和消沉；为什么中共八大在1956年确定了扩大民主、加强法制、集中精力搞建设的方针路线，到1957年却反...', 0, 's20481426.jpg', NULL);
INSERT INTO `user_book`
VALUES (642, 0, 0, '剑桥日本史', '山村耕造 / 严忠志 ', '6.4', 23, ' 浙江大学出版社 ', ' 2020-1-1 ', ' 148',
        '《剑桥日本史（第3卷）：中世日本》叙述了从12世纪末到16世纪中期、从镰仓幕府的建立到内战激烈爆发后室町幕府最终崩溃的日本历史。书中包括了12位特邀知名学者...', 0, 's34902577.jpg', NULL);
INSERT INTO `user_book`
VALUES (643, 0, 0, '为你，耶路撒冷', '[美] 拉莱·科林斯（Larry Collins）、[法] 多米尼克·拉皮埃尔（Dominique Lapierre） / 晏可佳、晏子慧、姚蓓琴 ', '8.5', 432,
        ' 猫头鹰文化·浙江人民出版社 ', ' 2017-1 ', ' 98.00',
        '★一部侦探小说般“烧脑”的纪实文学经典，一本书写尽耶路撒冷的“前世今生”★“迄今为止关于以色列最伟大的著作之一”，“这本书会让你无限接近耶路撒冷”★《...', 0, 's26916427.jpg', NULL);
INSERT INTO `user_book`
VALUES (644, 0, 0, '历史的观念', '〔英〕柯林武德 / 何兆武 张文杰 陈新 译 ', '9.2', 371, ' 北京大学出版社 ', ' 2010-1 ', ' 55.00元',
        '《历史的观念》被誉为20世纪最有影响力的历史哲学著作之一。此书为柯林武德遗作，最初于1946年由诺克斯编辑成书，极受学界关注。1998年牛津大学出版社推出由...', 0, 's4241783.jpg', NULL);
INSERT INTO `user_book`
VALUES (645, 0, 0, '欧洲与没有历史的人', '[美] 埃里克·R.沃尔夫 / 贾士蘅 ', '8.7', 206, ' 民主与建设出版社 ', ' 2018-8 ', ' 110.00元',
        '文化人类学、政治经济学、后殖民和全球化论述诸领域的集大成之作◎编辑推荐本书作者埃里克·沃尔夫是著名的人类学家和社会学家，不同于同等领域的一般学者，他擅...', 0, 's30194494.jpg', NULL);
INSERT INTO `user_book`
VALUES (646, 0, 0, '紫禁城100', '赵广超 ', '9.5', 381, ' 故宫出版社 ', ' 2015-10 ', ' 196.00',
        '九卷用笔画出来的故宫《紫禁城100》全书共分九卷－－俯仰山川形胜，看“悠悠天下事”，看帝王种种，如何“隆重其事”，有“家事国事”、宫娥、心灵，都“事事关心...', 0, 's26658022.jpg', NULL);
INSERT INTO `user_book`
VALUES (647, 0, 0, '上帝掷骰子吗?', '曹天元 ', '9.2', 3868, ' 北京联合出版公司 ', ' 2013-8-1 ', ' 45.00元',
        '《上帝掷骰子吗？：量子物理史话（全新修订）》是关于量子论的故事。量子论是一个极为奇妙的理论：从物理角度来说，它在科学家中间引起了最为激烈的争议和关注；从现实...', 0, 's25742211.jpg', NULL);
INSERT INTO `user_book`
VALUES (648, 0, 0, '绚烂的世界帝国：隋唐时代', '(日) 气贺泽保规、気賀沢保規 / 石晓军 ', '8.2', 1363, ' 广西师范大学出版社 ', ' 2014-2 ', ' 52.00元',
        '本书为讲谈社《中国的历史》中的“隋唐”一卷。《中国的历史》为日本讲谈社百周年献礼之作，是日本历史学家写给大众的中国通史读本。丛书自上古到近代，内容含概量大...', 0, 's10539156.jpg', NULL);
INSERT INTO `user_book`
VALUES (649, 0, 0, '拜占庭帝国', '[美] 拉尔斯·布朗沃思 / 吴斯雅 ', '8.0', 1013, ' 中信出版集团·新思文化 ', ' 2016-12 ', ' 48.00',
        '“欧洲中世纪三部曲”之3。历史主播元老的震撼新作，精彩讲述拜占庭帝国的完整历史。伟大的罗马帝国并没有缺席中世纪，它只是来到君士坦丁堡，续写了一部千年传奇。比...', 0, 's26929967.jpg', NULL);
INSERT INTO `user_book`
VALUES (650, 0, 0, '三案始末', '温功义 ', '8.7', 1377, ' 生活·读书·新知三联书店 ', ' 2013-9-1 ', ' CNY 29.00',
        '本书用不足十万字的篇幅，厘清了明史上最为纠缠繁复又影响最深远的梃击、红丸、移宫三案。而在进入具体的“案情分析”之前，作者从帝权与相权的矛盾入手，到万历“造因...', 0, 's25760457.jpg', NULL);
INSERT INTO `user_book`
VALUES (651, 0, 0, '红雨', '罗威廉 (William T.Rowe) / 李里峰 等 ', '8.1', 792, ' 中国人民大学出版社 ', ' 2014-1 ', ' 69.00元',
        '本书按照长时段理论，研究的时间段从元末农民大起义一直到场20世纪三十年代的第一次国内革命战争；研究的地域集中在湖北麻城。这种“长时段”和小地域的结合使得这本...', 0, 's25790421.jpg', NULL);
INSERT INTO `user_book`
VALUES (652, 0, 0, '逼近的瘟疫', '[美]劳里·加勒特 / 杨岐鸣、杨宁 ', '8.1', 555, ' 生活·读书·新知三联书店 ', ' 2008-6 ', ' 39.00',
        '美国著名女记者劳里·加勒特获得普利策奖的作品。全书以文学的笔法记录了20世纪后半期世界各地瘟疫爆发以及研究的过程，冷静地分析了瘟疫产生的根源。', 0, 's3092928.jpg', NULL);
INSERT INTO `user_book`
VALUES (653, 0, 0, '叫魂', '[美] 孔飞力 / 陈兼、刘昶 ', '8.7', 5618, ' 上海三联书店 ', ' 1999-1 ', ' 19.80元',
        '本书所讲述的是一个关于“盛世妖术”的故事。在中国的千年帝制时代，乾隆皇帝可谓是空前绝后的一人。他建立并巩固起来的大清帝国达到了权力与威望的顶端。然而整个大清...', 0, 's1269182.jpg', NULL);
INSERT INTO `user_book`
VALUES (654, 0, 0, '国民党的“联共”与“反共”', '杨奎松 ', '8.9', 1089, ' 社会科学文献出版社 ', ' 2008-1 ', ' 88.00元',
        '《国民党的“联共”与“反共”》记载了从国民党史的角度深入研究国共关系，全面地论述了1921年中国共产党成立起到新中国成立前国共两党关系的发生和发展，对一系列...', 0, 's2713409.jpg', NULL);
INSERT INTO `user_book`
VALUES (655, 0, 0, '道德经', '老子 ', '9.5', 2980, ' 安徽人民出版社 ', ' 1990-5 ', ' 4.30',
        '指《老子》。《史记．老子韩非列传》:\"关令尹喜曰，子将隐矣，强为我著书。于是老子乃著书上下篇，言道德之意五千余言而去。\"汉河上公作《老子章句》，分为八十一章...', 0, 's1009789.jpg', NULL);
INSERT INTO `user_book`
VALUES (656, 0, 0, '中国人史纲（上中下）', '柏杨 ', '8.5', 6608, ' 同心出版社 ', ' 2005-9 ', ' 75.00元',
        '《中国人史纲》是柏杨在九年零二十六天的监狱岁月里“埋头整理中国历史”而成的一部皇皇巨著。说它是巨著，一是就篇幅而言，全书近八十万字，从盘古开天地的神话时代一...', 0, 's1427825.jpg', NULL);
INSERT INTO `user_book`
VALUES (657, 0, 0, '哥伦布大交换', '[美] 艾尔弗雷德·W. 克罗斯比 / 郑明萱 ', '8.0', 137, ' 中信出版社 ', ' 2017-10-1 ', ' 58',
        '★世界环境史的开拓者、美国历史学家、经典名著《生态帝国主义》作者艾尔弗雷德·克罗斯比的重要代表作品，开启生态环境史新领域，重新解读人类历史，自此“哥伦布大...', 0, 's27119174.jpg', NULL);
INSERT INTO `user_book`
VALUES (658, 0, 0, '历史的温度3', '张玮 ', '7.8', 907, ' 中信出版社 ', ' 2018-12-10 ', ' 58.00',
        '坚守气节、自诩为“海上苏武”的叶名琛，为何最终还是背了“千古骂名”？严复的人生，因何最终拐了个弯？达•芬奇，真的是从现代穿越回去的吗？拿过诺贝尔文学奖的丘吉...', 0, 's30400894.jpg', NULL);
INSERT INTO `user_book`
VALUES (659, 0, 0, '不含传说的普鲁士', '(德) 塞巴斯提安·哈夫纳 / 周全 ', '9.0', 776, ' 北京大学出版社 ', ' 2016-8 ', ' 45.00',
        '\"普鲁士\"早已烟消云散，但其对后世的影响至今在欧洲仍处处可见。它似乎集诸多矛盾于一身，既代表秩序、正直与宽容，也象征着军国主义。普鲁士王国强盛的时期，正是伟...', 0, 's26825933.jpg',
        NULL);
INSERT INTO `user_book`
VALUES (660, 0, 0, '伊莎贝拉', '[美] 克斯汀·唐尼 / 陆大鹏 ', '8.7', 1140, ' 社会科学文献出版社·甲骨文 ', ' 2016-5 ', ' 86.00元',
        '☆☆☆☆☆西班牙历史上最伟大女王的炼成☆☆☆☆☆克斯汀•唐尼成功地恢复了伊莎贝拉在历史中应有的地位。伊莎贝拉是史上最令人着迷也最有争议的女性之一，这是一部...', 0, 's26782506.jpg', NULL);
INSERT INTO `user_book`
VALUES (661, 0, 0, '赫逊河畔谈中国历史', '黄仁宇 ', '8.1', 5944, ' 生活·读书·新知三联书店 ', ' 1997-4 ', ' 9.60',
        '本书收入黄仁宇先生在《中国时报》“人间副刊”发表过的33篇文字，发表的时间自1987年年初至1989年夏天。所包括的内容自先秦至元末。其重点则在表彰中国历史...', 0, 's1050175.jpg', NULL);
INSERT INTO `user_book`
VALUES (662, 0, 0, '大国政治的悲剧', '（美）米尔斯海默 / 王义桅 等 ', '8.4', 529, ' 上海人民出版社 ', ' 2003-04 ', ' 35.0',
        '《大国政治的悲剧》于2001年10月在美国出版以后，便在国际关系理论界和新闻界引起了巨大反响。在冷战后理论界一片“历史终结论”、“大战过时论”和“民主和平论...', 0, 's1051386.jpg', NULL);
INSERT INTO `user_book`
VALUES (663, 0, 0, '洛阳伽蓝记', '杨衒之 / 尚荣 注释 ', '9.3', 580, ' 中华书局 ', ' 2012-1 ', ' 27.00元',
        '本书为“中华经典名著全本全注全译丛书”之一，北魏杨炫之撰写，又称《伽蓝记》。梳理了洛阳各寺庙的地理概况及历史沿革，极富文学色彩，是一部集历史、地理、佛教、文...', 0, 's10488582.jpg', NULL);
INSERT INTO `user_book`
VALUES (664, 0, 0, '俄罗斯', '土肥恒之 / 李文明 ', '7.9', 75, ' 北京日报出版社 ', ' 2020-1 ', ' 80.00',
        '从1613年米哈伊尔•罗曼诺夫被选为沙皇开始，到1917年尼古拉二世在“二月革命”后退位，这三百年的时间里，俄罗斯处在罗曼诺夫王朝时期，从一个小邦国成为世界...', 0, 's34869430.jpg', NULL);
INSERT INTO `user_book`
VALUES (665, 0, 0, '能夏则大与渐慕华风', '胡鸿 ', '8.9', 535, ' 北京师范大学出版社 ', ' 2017-3 ', ' CNY 59.00',
        '本書從政治體視角出發，嘗試為理解古代華夏提供一條新路徑。無論是商末西土聯盟還是春秋戰國的諸夏，以及與秦漢帝國政治體系綁定的華夏，都是一種由政治關係維繫的人群...', 0, 's27011415.jpg', NULL);
INSERT INTO `user_book`
VALUES (666, 0, 0, '巨流河', '齐邦媛 ', '8.9', 2597, ' 生活·读书·新知三联书店 ', ' 2011-4 ', ' 32.00元',
        '巨流河，在清代被称为巨流河；哑口海位于台湾南端，是鹅銮鼻灯塔下的一泓湾流。这本书写的是一个并未远去的时代，关于两代人从巨流河到哑口海的故事。那立志将中国建设...', 0, 's5914484.jpg', NULL);
INSERT INTO `user_book`
VALUES (667, 0, 0, '中国古代房内考', '[荷] 高罗佩 / 李零、郭晓惠 等 ', '8.4', 825, ' 上海人民出版社 ', ' 1990-11 ', ' 18.00元（平） 28.00元（精）',
        '“房内”一词是中国古代对性事的雅称，“历代房内考”即是对悠悠历史长河中性文化的考证。本书首次全面系统地阐述了中华民族性文化漫长而曲折的演变史。从最初的原始社...', 0, 's1069138.jpg', NULL);
INSERT INTO `user_book`
VALUES (668, 0, 0, '山月记', '[日]中岛敦 / 韩冰、孙志勇 ', '8.8', 5004, ' 中华书局 ', ' 2013-5 ', ' 28',
        '这是日本天才作家中岛敦的第一本中文简体版精选集，收录中岛敦《山月记》《弟子》《李陵》《光•风•梦》等九篇代表作。中岛敦的小说多取材于中国古典故事，独出心裁，...', 0, 's20473505.jpg', NULL);
INSERT INTO `user_book`
VALUES (669, 0, 0, '海都物语', '[日] 盐野七生 / 徐越 ', '8.7', 711, ' 中信出版社 ', ' 2016-12 ', ' 128元',
        '盛极必衰是历史的规律，从古至今无一例外，没有任何手段能逆转。但没有哪个国家能像威尼斯那样，在国家体制不变的状态下，维系如此长久。人类智慧所能及的，只是尽量地...', 0, 's26767261.jpg', NULL);
INSERT INTO `user_book`
VALUES (670, 0, 0, '统一与分裂', '葛剑雄 ', '8.0', 749, ' 商务印书馆 ', ' 2013-8 ', ' CNY 38.00',
        '本书是《统一与分裂——中国历史的启示》的修订版，包括作者的增订版自序和三篇约五万字的相关文章。中国历史的统一与分裂是作者二十多年来一直思索的重点问题，作者...', 0, 's25720918.jpg', NULL);
INSERT INTO `user_book`
VALUES (671, 0, 0, '中国历朝通俗演义', '蔡东藩 / 北京理工大学出版社 ', '8.9', 64, ' 2013-12 ', ' 48.00', '册（全套六册）',
        '《中国历朝通俗演义》丛书为民国著名演义小说作家、历史学家蔡东藩所著。该套书为风靡海内外的一部通俗历史巨著，浩浩一千余回，写尽几度春秋，上起秦始皇，下至民国九...', 0, 's25853231.jpg', NULL);
INSERT INTO `user_book`
VALUES (672, 0, 0, 'BBC世界史', '[英] 安德鲁·玛尔 / 邢科、汪辉 ', '8.1', 653, ' 天津人民出版社 ', ' 2016-11 ', ' 88.00元',
        '极富画面感的历史读物英国著名政治新闻记者、BBC前政治编辑为你讲述人类文明5000年兴衰犀利评论我们的科技进步、政治愚行以及“由成功引发的失败”………...', 0, 's26902009.jpg', NULL);
INSERT INTO `user_book`
VALUES (673, 0, 0, '倒退的帝国', '张宏杰 ', '8.0', 179, ' 重庆出版社 ', ' 2019-11 ', ' 59.80元',
        '公元1368年，四十岁的朱元璋击破各路农民起义军后，在应天府称帝，建立了最后一个由汉人统治的庞大帝国。他也成为中国史上唯一真正意义上的“农民帝王”。如清人赵...', 0, 's34898273.jpg', NULL);
INSERT INTO `user_book`
VALUES (674, 0, 0, '存在主义咖啡馆', '[英] 莎拉·贝克韦尔 / 沈敏一 ', '8.6', 5952, ' 北京联合出版公司 ', ' 2017-12-1 ', ' 88.00',
        '巴黎，1933年……三位朋友正坐在蒙帕纳斯大道上的煤气灯酒吧里喝着杏子鸡尾酒。其中一个叫雷蒙·阿隆的年轻哲学家，正在向同为哲学家的让-保罗·萨特和西蒙娜·...', 0, 's27170538.jpg', NULL);
INSERT INTO `user_book`
VALUES (675, 0, 0, '故宫的古物之美', '祝勇 / 有2019年2月6印本 ', '6.8', 653, ' 人民文学出版社 ', ' 2018-4 ', ' 76.00元',
        '国家宝藏的前世今生，故宫艺术的典藏读本了不起的中国古物，说不尽的华夏历史，再现一段文明的营造之美故宫博物院院长单霁翔力荐，收录故宫及海内外博物馆近百幅高...', 0, 's30200242.jpg', NULL);
INSERT INTO `user_book`
VALUES (676, 0, 0, '革命与反革命', '王奇生 ', '8.6', 1013, ' 社会科学文献出版社 ', ' 2010-01 ', ' 49.00元',
        '1949年以后的数十年间，国内史学界有关中国近代历史的书写，基本上等同于中国革命史的书写。在业已“告别革命”的今天，我们不能仅仅简单地放弃、淡忘或者否定那些...', 0, 's4248275.jpg', NULL);
INSERT INTO `user_book`
VALUES (677, 0, 0, '大唐明月1·风起长安', '蓝云舒 ', '8.5', 2594, ' 上海文艺出版社 ', ' 2013-1 ', ' 27.00元',
        '大唐永徽四年。朝廷上，太尉长孙无忌正如日中天；后宫里，昭仪武媚娘已悄然布局；而身为西市的小小画师，库狄琉璃只想在这场武周夺唐的千古大戏里，做个合格的围观群...', 0, 's20501270.jpg', NULL);
INSERT INTO `user_book`
VALUES (678, 0, 0, '坂本龙马与明治维新', '[美]马里乌斯·詹森 / 曾小楚 ', '8.8', 156, ' 上海三联书店 ', ' 2019-5 ', ' 78.00',
        '★改变日本历史的传奇武士——在日本，坂本龙马被誉为完美的民族英雄，是西乡隆盛、伊藤博文等人盛赞的维新志士，甚至位居“改变日本历史的伟人”第一位。如此传奇的...', 0, 's30464960.jpg', NULL);
INSERT INTO `user_book`
VALUES (679, 0, 0, '乱世靡音', '秋原 ', '8.5', 399, ' 新星出版社 ', ' 2019-3-4 ', ' CNY 56.00',
        '明清到近代，“三千年未有之大变局”既冲击了中国正常社会，也强烈冲击了江湖世界，动乱时代在民间激荡起最复杂的世情。近代黑社会组织青帮，经过“粮船帮—盐枭—流...', 0, 's30466454.jpg', NULL);
INSERT INTO `user_book`
VALUES (680, 0, 0, '顾准文集', '顾准 ', '9.1', 2506, ' 中国市场出版社 ', ' 2007-4-1 ', ' 39.80元',
        '在每一个时代，都有一种统治的权威性学说或工艺制度，但大家必须无条件地承认，唯有违反或超过这种权威的探索和研究，才能保证继续进步。所以权威是不可以没有，权威主...', 1, 's2025235.jpg', NULL);
INSERT INTO `user_book`
VALUES (681, 0, 0, '希腊人的故事', '[日] 盐野七生 / 计丽屏 徐越 田建国 ', '8.3', 636, ' 中信出版集团·见识城邦 ', ' 2018-11-1 ', ' 148',
        '为什么古希腊人可以从0到1创造出先进的制度和文化？一言不合就开打的古希腊人，为什么可以同生共死？被誉为文明基石的古希腊，为什么会突然崛起，又迅速衰落？...', 0, 's30337300.jpg', NULL);
INSERT INTO `user_book`
VALUES (682, 0, 0, '袍哥', '王笛 ', '7.3', 1545, ' 北京大学出版社 ', ' 2018-10 ', ' 69.00元',
        '袍哥是1949年之前活跃于长江中上游的秘密社会组织，其影响力与青帮、洪门不相上下。当其最盛时，川省约有70%成年男子加入，影响力及于各个角落，在川军、湘军中...', 0, 's30337489.jpg', NULL);
INSERT INTO `user_book`
VALUES (683, 0, 0, '毛泽东选集（第五卷）', '毛泽东 ', '9.0', 478, ' 人民出版社 ', ' 1977-4 ', ' 0.78',
        '《毛泽东选集》第五卷是毛泽东1949年以后著作的选集。该书的编辑、出版用了几乎十年的时间，贯穿了整个文革。此书原拟选编范围为1949年至1962年间的毛泽...', 0, 's3212602.jpg', NULL);
INSERT INTO `user_book`
VALUES (684, 0, 0, '杀人执照', '[德] 埃格蒙特·科赫 / 张芸、孔令逊 ', '7.5', 18, ' 生活·读书·新知三联书店 ', ' 2020-3 ', ' 56.00元',
        '本书揭秘了世界著名情报机构所实施的最轰动的暗杀行动，从克科勃到中情局，从摩萨德到军情六处以及其他情报机构，手段从汽车炸弹、无人机、枪支到机巧隐蔽的毒药。其中...', 0, 's34802968.jpg', NULL);
INSERT INTO `user_book`
VALUES (685, 0, 0, '高卢战记', '[古罗马] 凯撒 / 任炳湘 ', '8.5', 1235, ' 商务印书馆 ', ' 1979-9 ', ' 18.00元',
        '《高卢战记》叙事翔实精确，文笔清晰简朴，历来很得到爱好罗马历史、拉丁文学和军事史等各方面人物的推崇。凯撒所写的《高卢战记》，共七卷，记述他在高卢作战的经过，...', 0, 's1511912.jpg', NULL);
INSERT INTO `user_book`
VALUES (686, 0, 0, '蛙', '莫言 ', '8.3', 12788, ' 上海文艺出版社 ', ' 2012-10 ', ' 35.00元',
        '《蛙》是莫言酝酿十余年、笔耕四载、三易其稿，潜心打造的一部触及国人灵魂最痛处的长篇力作，初版于2009年。小说由剧作家蝌蚪写给日本作家杉谷义人的五封书信、四...', 0, 's19995918.jpg', NULL);
INSERT INTO `user_book`
VALUES (687, 0, 0, '花鸟风月日本史', '[日]高桥千剑破 / 曹倩 ', '8.0', 47, ' 未读·文艺家 贵州人民出版社 ', ' 2020-3 ', ' 68.00元',
        '不谈自然风物，何来日式美学！自古以来，日本以独特的自然环境为依托，构筑了历史，孕育了文化。日本的文学、艺术、建筑、宗教、民俗及日常生活，都蕴含着以自然风物为...', 0, 's34939912.jpg', NULL);
INSERT INTO `user_book`
VALUES (688, 0, 0, '卡尔·马克思', '[英] 以赛亚·伯林 / 李寅 ', '8.9', 519, ' 译林出版社 ', ' 2018-10 ', ' 78',
        '本书以卡尔•马克思的生平经历与思想发展为主线，从他在德国的成长与求学，在巴黎的工作与斗争，一直写到流放伦敦的最后岁月，涉及青年黑格尔派运动、1848年欧洲革...', 0, 's26945180.jpg', NULL);
INSERT INTO `user_book`
VALUES (689, 0, 0, '治史三书', '严耕望 / 世纪文景', '9.3', 596, '上海人民出版社 ', ' 2016-6 ', ' 49.00',
        '1.钱穆得意门生、“中国史学界的朴实楷模”、台湾“中研院”院士、历史学名家严耕望毕生经验倾囊相授2.两岸三地历史院系公认治史入门必读，内容涉及历史学研究的...', 0, 's26817050.jpg', NULL);
INSERT INTO `user_book`
VALUES (690, 0, 0, '去依附', '董筱丹、温铁军 ', '9.1', 318, ' 东方出版社 ', ' 2019-9-1 ', ' 56.00元',
        '本书为温铁军团队继《八次危机》后推出的最新研究成果，详细记录了我国应对第1次通胀危机的真实经验。1949年中华人民共和国成立，当时既要应对民国延续下来的长期...', 0, 's34813128.jpg', NULL);
INSERT INTO `user_book`
VALUES (691, 0, 0, '战争与革命中的西南联大', '易社强 / 饶佳荣 ', '8.9', 2727, ' 九州出版社 ', ' 2012-3 ', ' 48.00元',
        '本书由美国的易社强（JohnIsrael）教授倾二十年之力写就，视角独树一帜。何炳棣先生称赞其为“迄今最佳联大校史”。《战争与革命中的西南联大》主体共有四...', 0, 's10436418.jpg', NULL);
INSERT INTO `user_book`
VALUES (692, 0, 0, '温故一九四二', '刘震云 ', '8.1', 4408, ' 人民文学出版社 ', ' 2009-3 ', ' 28.00元',
        '《温故一九四二》讲述了一个关于饥饿的故事。1942年，河南大旱，灾民3000万，河南成了母亲煮食自己婴儿的地方。关于饥饿，有“我姥娘”“我花生二舅”的记忆，...', 0, 's3623831.jpg', NULL);
INSERT INTO `user_book`
VALUES (693, 0, 0, '这个历史挺靠谱', '袁腾飞 ', '7.4', 1902, ' 湖南人民出版社 ', ' 2013-7-1 ', ' CNY 99.00',
        '《这个历史挺靠谱：袁腾飞讲历史》是《历史是个什么玩意儿》系列的升级珍藏版。本系列开启全民读史新潮流，自问世以来畅销至今，第一册为《这个历史挺靠谱：袁腾飞讲中...', 0, 's24859453.jpg', NULL);
INSERT INTO `user_book`
VALUES (694, 0, 0, '你一定爱读的极简欧洲史（增订纪念版）', '（澳）约翰•赫斯特 / 席玉苹、石晰颋 ', '8.4', 594, ' 广西师大出版社 ', ' 2018-6 ', ' 59.00元',
        '澳大利亚知名历史学家约翰·赫斯特在本书中所作的引人入胜的探索，为我们勾勒出欧洲文明的前世今生，及其所以能改变世界的诸多特质。作者以三大元素（古希腊罗马文化...', 0, 's30234331.jpg', NULL);
INSERT INTO `user_book`
VALUES (695, 0, 0, '埃及四千年', '(英) 乔安·弗莱彻 / 杨凌峰 ', '7.4', 470, ' 浙江文艺出版社 ', ' 2019-3 ', ' 118.00元',
        '《出版人周刊》2016年最佳图书《科克斯书评》2016年年度好书《图书馆杂志》2016年度十大好书《华盛顿邮报》《卫报》《独立报》等30家知名媒体联名...', 0, 's30370330.jpg', NULL);
INSERT INTO `user_book`
VALUES (696, 0, 0, '敦煌', '井上靖 / 刘慕沙 ', '8.1', 2239, ' 北京十月文艺出版社 ', ' 2014-1-1 ', ' 25.00元',
        '莫高窟的浩繁经卷，究竟是谁为何埋下？不留名姓的藏经人背后，还有多少未解之谜？日本文学巨匠井上靖惊世之作，与《楼兰》同获每日艺术奖-----------...', 0, 's25783325.jpg', NULL);
INSERT INTO `user_book`
VALUES (697, 0, 0, '三国志（全五册）', '[晋] 陈寿 撰、[宋] 裴松之 注 ', '9.3', 4185, ' 中华书局 ', ' 2011-10 ', ' 98.00元',
        '《三国志》的版本很多，常见的有百衲本、清武英殿刻本、金陵活字本、江南书局刻本，其中百衲本是影印的，其余三种是刻本。当今最为通行的是中华书局新式校点本，它是对...', 0, 's1014763.jpg', NULL);
INSERT INTO `user_book`
VALUES (698, 0, 0, '寻找亚洲', '孙歌 ', '8.5', 132, ' 一頁folio | 贵州人民出版社 ', ' 2019-10-10 ', ' 78.00',
        '【编辑推荐】亚洲是什么？谁的亚洲？我们为什么要寻找亚洲？一部中国知识界具有里程碑意义的作品。寻找亚洲，也是寻找中国，更是寻找真正多元的认识论。寻找亚...', 0, 's34833943.jpg', NULL);
INSERT INTO `user_book`
VALUES (699, 0, 0, '这个世界会好吗？', '梁漱溟、艾恺 ', '8.1', 1230, ' 天津教育出版社 ', ' 2011-5-20 ', ' 38.00元',
        '美国芝加哥大学教授艾恺著有《最后的儒家:梁漱溟与中国现代化的两难》一书。艾氏为印证事实，订正该书未尽正确、周详之处，1980年8月特来华专访梁漱溟先生，长谈...', 0, 's6397293.jpg', NULL);
INSERT INTO `user_book`
VALUES (700, 0, 0, '时间地图', '[美] 大卫·克里斯蒂安 / 晏可佳、段炼、房芸芳、姚蓓琴 ', '8.2', 446, ' 中信出版集团·见识城邦 ', ' 2017-6 ', ' 128.00',
        '【内容简介】如果把130亿年比喻成13年的话，那么宇宙大爆炸就发生在13年前，太阳系出现在4.5年前，最早的生命有机体出现在4年前，恐龙大约在3个星期前灭...', 0, 's26975985.jpg', NULL);
INSERT INTO `user_book`
VALUES (701, 0, 0, '维米尔的帽子', '卜正民 / 黄中宪 ', '8.4', 648, ' 理想国 | 湖南人民出版社 ', ' 2017-7-1 ', ' 48',
        '《维米尔的帽子》是著名汉学家卜正民的代表作。作者通过七幅油画、一件荷兰产的青花瓷盘上的细微之处，探寻其背后的世界。于是，我们可以在看似无关的普通器物中，看到...', 0, 's27108717.jpg', NULL);
INSERT INTO `user_book`
VALUES (702, 0, 0, '走向辛亥', '[日] 陈舜臣 / 黄哲昕 ', '8.4', 33, ' 天津人民出版集团 ', ' 2020-1 ', ' 79.00元',
        '从晚清到民国，读这一本就够了！格局宏大x史料权威细节详尽x通俗易懂既有派系间的权力游戏也有老百姓的衣食住行-慈禧太后在晚清危亡之际扮演了...', 0, 's34852465.jpg', NULL);
INSERT INTO `user_book`
VALUES (703, 0, 0, '人类的群星闪耀时', '茨威格 / 舒昌善 ', '8.6', 2619, ' 生活·读书·新知三联书店 ', ' 2015-6-1 ', ' 28.00元',
        '三联新版的《人类群星闪耀时》，将是国内迄今为止的最新版本，在广西师大版的基础上再增加两个章节，即将历史时刻特写从原来的12个增加到14个，所涉及的历史人物分...', 0, 's26334507.jpg', NULL);
INSERT INTO `user_book`
VALUES (704, 0, 0, '第三种黑猩猩', '（美）贾雷德·戴蒙德 / 王道还 ', '8.7', 3237, ' 上海译文出版社 ', ' 2012-5 ', ' 38.00元',
        '人不同于禽兽，毋庸置疑；人是一种大型哺乳类动物，亦毋庸置疑。根据现代遗传学研究，我们与另外两种黑猩猩的基因组，有98%是相同的。若有从外太空来的动物学家，...', 0, 's10607615.jpg', NULL);
INSERT INTO `user_book`
VALUES (705, 0, 0, '现代政治的思想与行动', '[日] 丸山真男 / 陈力卫 ', '9.3', 213, ' 商务印书馆 ', ' 2018-3 ', ' 58.00',
        '《现代政治的思想与行动》是日本著名政治思想史学者丸山真男的代表著作之一，收录了作者自第二次世界大战结束之后约十年间发表的有关政治学及现代政治问题的主要论文。...', 0, 's27661640.jpg', NULL);
INSERT INTO `user_book`
VALUES (706, 0, 0, '哑舍Ⅱ', '玄色 ', '7.5', 3989, ' 长江 ', ' 2012-4 ', ' 25.00元',
        '哑舍里的古物，每一件都有着自己的故事，承载了许多年，无人倾听。因为，它们都不会说话.......　　它们的岁月中浸染了成百上千年。每一件，都凝聚着工匠的心...', 0, 's10770739.jpg', NULL);
INSERT INTO `user_book`
VALUES (707, 0, 0, '中国古代物质文化', '孙机 ', '9.0', 1209, ' 中华书局 ', ' 2014-7 ', ' 98.00元',
        '孙机先生山东青岛人。1960年毕业千北京大学历史系。中国国家博物馆研究馆员，学术委员，中央文史研究馆馆员，国家文物鉴定委员会副主任委员。他以自己的讲座为基础...', 0, 's25961497.jpg', NULL);
INSERT INTO `user_book`
VALUES (708, 0, 0, '孤城闭', '米兰Lady ', '8.4', 4162, ' 新世界出版社 ', ' 2008-11 ', ' 22.80元',
        '北宋的太平盛世，春风上国繁华。她是皇帝的爱女，依在父母身边窥帘望去，一时多少人杰：他原本是清俊的少年，穿梭于名臣和高士之间，人生拟是采采流水，蓬蓬远春。倏忽...', 0, 's3290028.jpg', NULL);
INSERT INTO `user_book`
VALUES (709, 0, 0, '读史阅世六十年', '何炳棣 ', '8.3', 2090, ' 广西师范大学出版社 ', ' 2009-3 ', ' 39.80元',
        '《读史阅世六十年》是何炳棣的回忆亲撰，内中并附有私人信札和学术评估密件，详述过去60多年“读史阅世”的心得体会。何炳棣半个多世纪的亲见亲闻，弥足珍贵。阅读这...', 0, 's1400710.jpg', NULL);
INSERT INTO `user_book`
VALUES (710, 0, 0, '阿尔比恩的种子', '[美]大卫•哈克特•费舍尔 / 王剑鹰 ', '8.7', 298, ' 广西师范大学出版社 ', ' 2018-7 ', ' 198.00',
        '▼内容简介阿尔比恩（Albion），最早有记录的不列颠的名字。本书从民俗的角度切入，解答一个重大问题，即美国自由体系的决定因素到底是什么。作者认为，16...', 0, 's27672664.jpg', NULL);
INSERT INTO `user_book`
VALUES (711, 0, 0, '世界电影史（第二版）', '[美]大卫·波德维尔、克里斯汀·汤普森 / 范倍 ', '9.4', 1815, ' 北京大学出版社 ', ' 2014-2-1 ', ' 198.00元',
        '本书荣获第四届中国大学出版社图书奖优秀学术著作二等奖新版新译精校世界电影的全球通史，被最广泛采用的电影史教程。本书围绕下述三个基本问题展开：电影媒介...', 0, 's25712811.jpg', NULL);
INSERT INTO `user_book`
VALUES (712, 0, 0, '两汉魏晋南北朝宰相制度研究', '祝总斌 ', '9.2', 292, ' 北京大学出版社 ', ' 2017-4 ', ' 64.00',
        '本书是中国政治制度史研究专著。全书分九章，对两汉魏晋南北朝宰相制度在不同历史阶段纷繁缭乱的变化，逐一作了细致考证与论述。主要特点是：1.对历代宰相究竟握有...', 0, 's27025893.jpg', NULL);
INSERT INTO `user_book`
VALUES (713, 0, 0, '二十五史简明读本（全15册）', '李国章、赵昌平、等 ', '10.0', 43, ' 上海古籍出版社 ', ' 2018-7 ', ' 680',
        '《二十五史简明读本》是我社1997年开发、出版的、颇受读者欢迎的《二十五史新编》的升级版。自司马迁撰著《史记》以降，历朝历代修史不绝，一套《二十四史》激起无...', 0, 's30303327.jpg', NULL);
INSERT INTO `user_book`
VALUES (714, 0, 0, '征服者', '[英] 罗杰·克劳利 / 陆大鹏 ', '8.7', 1267, ' 社会科学文献出版社 ', ' 2016-12 ', ' 69.00元',
        '通过“地中海史诗三部曲”（《1453》《海洋帝国》《财富之城》），《纽约时报》畅销书作家罗杰•克劳利确立了自己的地位：他是我们这一代研究欧洲伟大航海帝国的卓...', 0, 's26901940.jpg', NULL);
INSERT INTO `user_book`
VALUES (715, 0, 0, '宫女谈往录', '金易、沈义羚 ', '8.6', 1311, ' 故宫出版社 ', ' 2010-7 ', ' 38.00元',
        '金易，曾是北京二中的语文老师，《宫女谈往录》是他与夫人、原北京二十五中、六十一中中学语文教师沈义羚老师合著的书。本书以生动的笔触，记述了一位随侍慈禧前后达八...', 0, 's5277994.jpg', NULL);
INSERT INTO `user_book`
VALUES (716, 0, 0, 'The Right Side of History', 'Ben Shapiro ', '7.3', 21, ' Broadside Books ', ' 2019-3-19 ',
        ' USD 27.99', 'AmericahasaGod-shapedholeinitsheart,arguesNewYorkTimesbestselling...', 1, 's32286350.jpg', NULL);
INSERT INTO `user_book`
VALUES (717, 0, 0, '茶馆之殇', '秋原 ', '9.0', 993, ' 新星出版社 ', ' 2016-5 ', ' 28.00元',
        '说的既是茶馆，更是茶馆里的人爱说的那些事儿。《清代旅蒙商述略》作者秋原，讲述真实的老北京茶馆中的世态百相，曲艺行当的创生发展，折射清代到建国前三百年社会变...', 11, 's26789604.jpg', NULL);
INSERT INTO `user_book`
VALUES (718, 0, 0, '大国宪制', '苏力 ', '7.6', 802, ' 北京大学出版社 ', ' 2018-1 ', ' 86.00',
        '中国古代宪制作为持久存在的制度经验，有其自己的逻辑和合理之处。但近年来社科领域特别是法学领域，对于中国自己的制度研究较少。作者从法学、社会学、历史学等多个学...', 2, 's27176963.jpg', NULL);
INSERT INTO `user_book`
VALUES (719, 0, 0, '现代日本', '[英] 克里斯托弗·戈托－琼斯 / 顾馨媛 ', '8.3', 1618, ' 译林出版社 ', ' 2014-7 ', ' 25.00',
        '称日本为“现代”社会意味着什么？对不同时期、不同群体的日本人来说，“现代”一词又意味着什么？本书聚焦于日本自19世纪中期至今在历史、政治和文化方面的变迁，...', 0, 's25870757.jpg', NULL);
INSERT INTO `user_book`
VALUES (720, 0, 0, '中国文脉', '余秋雨 ', '8.0', 2217, ' 长江文艺出版社 ', ' 2012-11 ', ' 38.00元',
        '《中国文脉》是继《文化苦旅》之后，余秋雨教授最重要的作品，也是当今中国当代文史领域最重要的作品之一。余秋雨教授感叹当前“文脉既隐，小丘称峰；健翅已远，残羽称...', 0, 's20383606.jpg', NULL);
INSERT INTO `user_book`
VALUES (721, 0, 0, '北魏平城时代', '李凭 ', '8.6', 459, ' 上海古籍出版社 ', ' 2014-12-1 ', ' 55.00元',
        '本书将北魏前期政治史的研究，以首都平城为中心逐步展开，依时间顺序分四章作纵向探索，准确清晰地勾勒出它的变迁轨迹。作者的考察自始至终围绕着拓跋部落本身的社会文...', 15, 's26284866.jpg', NULL);
INSERT INTO `user_book`
VALUES (722, 0, 0, '华杉讲透资治通鉴', '华杉 ', '7.9', 233, ' 上海文艺出版社 ', ' 2019-9 ', ' 46.80元',
        '《资治通鉴》从战国写到五代十国，生动展现了16个朝代1362年的历史中一个个活生生的人和故事，可以说是中国政治和文化遗产的“大数据”和“超级案例集”。我们今...', 0, 's34809067.jpg', NULL);
INSERT INTO `user_book`
VALUES (723, 0, 0, '黑暗之城', 'Greg Girard、Ian Lambot / 林立偉、朱一心 ', '9.4', 490, ' 中華書局、圓桌精英 ', ' 2015-8-20 ', ' 港幣468元',
        '傳說中的「三不管」地帶九龍城寨，是一個傳說，是一個謎……有將近五十年，九龍城寨這個奇特社群是位於香港中心地帶的黑暗世界。城寨沒有法律、漠視基本服務、規劃條...', 6, 's26552069.jpg', NULL);
INSERT INTO `user_book`
VALUES (724, 0, 0, '博物馆里的极简中国史', '张经纬 ', '7.6', 954, ' 铁葫芦·北京联合出版公司 ', ' 2018-12 ', ' 52.00',
        '众多名家一致激赏、罗辑思维连续三期推荐的新锐作者张经纬，第一部大众通识作品兼具硬派知识与叙事魅力的原创极简史文字记载的只是半部历史，另外半部让文物告诉你...', 0, 's30365847.jpg', NULL);
INSERT INTO `user_book`
VALUES (725, 0, 0, '中国近代史', '蒋廷黻 ', '8.7', 2910, ' 武汉出版社 ', ' 2012-6-1 ', ' 29.80元',
        '《中国近代史(最有分量的近代中国史未删节本)》由蒋廷黻所著，从鸦片战争到辛亥革命，从洋务运动到百日维新，从曾国藩到康有为，从李鸿章到孙中山，本书将近百年的演...', 0, 's10575976.jpg', NULL);
INSERT INTO `user_book`
VALUES (726, 0, 0, '简明日本史', '陈勤 ', '9.7', 15, ' 云南人民出版社 ', ' 2020-4 ', ' 49.80',
        '【内容简介】纵观世界各国在历史上和中国的关系，没有任何一国比日本和中国更难舍难分，两国是邻居，是朋友，是师生，是仇敌。没有日本，中国近代史将被改写，而如果...', 0, 's35015188.jpg', NULL);
INSERT INTO `user_book`
VALUES (727, 0, 0, '先知三部曲（全新插图修订本）', '【波】伊萨克•多伊彻 / 王国龙、周任辛、施用勤等 ', '9.4', 343, ' 中央编译出版社 ', ' 2013-2 ', ' 258.00元',
        '这部巨著是迄今为止最全面、最详尽的托洛茨基传记，由波兰思想家伊萨克•多伊彻所著。作者依据大量丰富、可靠和翔实的资料，并结合作者参加共产主义运动的亲身体会，按...', 0, 's20537674.jpg', NULL);
INSERT INTO `user_book`
VALUES (728, 0, 0, '追寻“我们”的根源', '姚大力 ', '8.5', 265, ' 生活·读书·新知三联书店 ', ' 2018-1-1 ', ' CNY 69.00',
        '收入此书的文章共分为四组。第一组凡七篇，泛论中国历史上的族群认同、国家认同以及二者之间的相互关系。第二组的五篇，主要聚焦于如何认识历史上的各少数民族对中国历...', 0, 's26960593.jpg', NULL);
INSERT INTO `user_book`
VALUES (729, 0, 0, '革命（全四册）', '杨奎松 ', '8.9', 284, ' 广西师范大学出版社 ', ' 2012-7 ', ' 480.00元',
        '《杨奎松著作集：革命》囊括顶尖的中国现当代史研究学者杨奎松教授研究中国现代革命的四本经典著作，精装套封配以珍贵插图。作者精心校订文字，并撰写长篇新序。在这...', 0, 's11232882.jpg', NULL);
INSERT INTO `user_book`
VALUES (730, 0, 0, '燃烧的远征', '拉尔斯·布朗沃思 / 严匡正 ', '8.1', 315, ' 中信出版集团·新思文化 ', ' 2018-8 ', ' 45',
        '从1095年教皇乌尔班二世号召东征的演说，到1291年巴勒斯坦最后的十字军城市被血洗，基督教欧洲共组织了八次试图收复圣地耶路撒冷的远征。《燃烧的远征》将再续...', 0, 's30240975.jpg', NULL);
INSERT INTO `user_book`
VALUES (731, 0, 0, '史记', '司马迁 / 韩兆琦 ', '9.6', 475, ' 岳麓书社 ', ' 2012-10-1 ', ' 98.00元',
        '《史记》是由司马迁撰写的中国第一部纪传体通史。《史记》最初没有固定书名，或称“太史公书”，或称“太史公传”，也省称“太史公”。“史记”本是古代史书通称，从三...', 0, 's6779397.jpg', NULL);
INSERT INTO `user_book`
VALUES (732, 0, 0, '中国是部金融史', '陈雨露、杨忠恕 ', '7.9', 1060, ' 北京联合出版公司 ', ' 2013-3 ', ' 39.50元',
        '《中国是部金融史》内容简介：中国人民大学校长陈雨露教授全新力作，《世界是部金融史》姊妹篇，透过金融读懂中国三千年把金融那些事儿一次说清楚，三千年来谁著史——...', 0, 's21331443.jpg', NULL);
INSERT INTO `user_book`
VALUES (733, 0, 0, '全译罗马帝国衰亡史', '[英]爱德华·吉本 / 席代岳 ', '8.6', 527, ' 浙江大学出版社 ', ' 2018-8-1 ', ' 699',
        '18世纪，启蒙时期代表人物、史学泰斗爱德华•吉本以毕生精力，创作出享誉世界200多年的不朽名著——《罗马帝国衰亡史》。自问世以来，《罗马帝国衰亡史》受到无...', 12, 's30248326.jpg', NULL);
INSERT INTO `user_book`
VALUES (734, 0, 0, '极端的年代：1914～1991', '[英]艾瑞克•霍布斯鲍姆 / 郑明萱 ', '8.7', 609, ' 中信出版社 ', ' 2014-1 ', ' 68.00',
        '《极端的年代：1914～1991》内容简介：《极端的年代：1914～1991》是《霍布斯鲍姆年代四部曲》的第4部。20世纪，为人类带来所能想象的最大希望...', 0, 's25795767.jpg', NULL);
INSERT INTO `user_book`
VALUES (735, 0, 0, '批评官员的尺度', '[美] 安东尼·刘易斯 / 何帆 ', '8.9', 8307, ' 北京大学出版社 ', ' 2011-7 ', ' 32.00元',
        '1960年，因为一则批评性广告，警察局长沙利文以诽谤为由，将《纽约时报》告上法庭，并申请巨额赔偿。两审失利后，几乎被各地政府官员相继提起的索赔逼至绝境的《纽...', 2, 's6401128.jpg', NULL);
INSERT INTO `user_book`
VALUES (736, 0, 0, '世界简史', '[澳]杰弗里·布莱内(Geoffrey Blainey) / 李鹏程 ', '8.6', 527, ' 上海三联书店 ', ' 2018-7 ', ' 52.00元',
        '【作品看点】★	澳大利亚国宝级历史学家屡获赞誉的“经典小书”，多个版本行世，畅销十五年★	从人类走出非洲探索世界开始，450页浓缩数百万年的人类故事★...', 0, 's30258601.jpg',
        NULL);
INSERT INTO `user_book`
VALUES (737, 0, 0, '罗曼诺夫皇朝', '[英] 西蒙·塞巴格·蒙蒂菲奥里 / 陆大鹏 ', '7.9', 974, ' 社会科学文献出版社 ', ' 2017-11 ', ' CNY 168.00',
        '★蒙蒂菲奥里继《耶路撒冷三千年》之后又一力作★《泰晤士报》《标准晚报》《经济学人》年度好书★《每日电讯报》年度历史类好书【内容简介】一个关于二十...', 0, 's27115938.jpg', NULL);
INSERT INTO `user_book`
VALUES (738, 0, 0, '柳如是别传（全三册）', '陈寅恪 ', '9.0', 1307, ' 生活·读书·新知三联书店 ', ' 2001-1 ', ' 98.00元',
        '本书是国学大师陈寅恪先生全部著述中影响最大的一部。远在80年代上海古籍出版社曾经出版该书，却没有再版，读者长时间内只能面对绝版无可奈何。随着一代对文史类读物...', 0, 's1034470.jpg', NULL);
INSERT INTO `user_book`
VALUES (739, 0, 0, '罗马人的故事2', '盐野七生 / 计丽屏 ', '9.2', 3237, ' 中信出版社 ', ' 2011-12 ', ' 39.00元',
        '《罗马人的故事2:汉尼拔战记》以战争为题材，描述130年间罗马称霸地中海的历史，公元前218年—公元前202年，汉尼拔从西班牙率军，翻越阿尔卑斯山，进攻意大...', 0, 's7064370.jpg', NULL);
INSERT INTO `user_book`
VALUES (740, 0, 0, '我们如何走到今天', '[美] 史蒂文·约翰逊 / 秦启越 ', '8.6', 739, ' 中信出版社 ', ' 2016-9-20 ', ' CNY 68.00',
        '《我们如何走到今天：重塑世界的6项创新》这是一本以新颖的眼光重新看待世界本质的科普常识巨著。专注于人类文明史上6种里程碑式的创新发明，审视伟大创意的力量与回...', 0, 's26890863.jpg', NULL);
INSERT INTO `user_book`
VALUES (741, 0, 0, '文明的进程', '诺贝特·埃利亚斯 (Norbert Elias) / 王佩莉、袁志英 ', '9.0', 369, ' 上海译文出版社 ', ' 2013-8-1 ', ' CNY 60.00',
        '埃利亚斯是德国著名社会学家，《文明的进程》是埃利亚斯的成名之作，出版后轰动西方世界，成为畅销书。我们习惯把文明看成一种摆在我们面前的现成财富，但在埃利亚斯看...', 0, 's25163000.jpg', NULL);
INSERT INTO `user_book`
VALUES (742, 0, 0, '隐蔽的秩序', '吴思 ', '8.6', 2659, ' 海南出版社 ', ' 2004-4-1 ', ' 38.00元',
        '编者说明：我以前出过两本讨论中国历史的书。本书是将那两本书的正编共二十五篇文章打散，重新辑为七编，并加入了正编之外的五篇文章。在选编过程中，我试图把分散在...', 0, 's1050929.jpg', NULL);
INSERT INTO `user_book`
VALUES (743, 0, 0, '断头王后', '[奥] 斯蒂芬·茨威格 / 李芳 ', '8.3', 1476, ' 希望出版社 ', ' 2009-9 ', ' 38.00',
        '本书是茨威格的人物传记作品中，最为人称道的作品之一，出版后曾轰动欧洲。玛丽·安托瓦内特天生丽质，却成了母亲政治棋盘上的一颗棋子，15岁远嫁法国，与当时还是...', 0, 's1051524.jpg', NULL);
INSERT INTO `user_book`
VALUES (744, 0, 0, '金枝', '（英）弗雷泽 / 徐育新、汪培基等 ', '9.0', 1887, ' 大众文艺出版社 ', ' 1998-01 ', ' 78.00元',
        '准确地说，《金枝》是现代人类学的奠基之作。自它问世以来，就受到了来自各方的质疑，但它出色地经受了时间的考验。时至今日，它仍是一部阐述巫术和宗教起源的权威之作...', 0, 's2101774.jpg', NULL);
INSERT INTO `user_book`
VALUES (745, 0, 0, '舆论', '[美]沃尔特·李普曼 / 常江、肖寒 ', '9.2', 1638, ' 北京大学出版社 ', ' 2018-5-1 ', ' 66.00元',
        '《公共舆论》是传播学领域的奠基之作，它第一次对公共舆论做了全景式的描述，自1922年问世以来，已被翻译成几十种文字，至今仍然保持着这个领域中的权威地位。其影...', 0, 's27662713.jpg', NULL);
INSERT INTO `user_book`
VALUES (746, 0, 0, '秦汉帝国', '[日] 西嶋定生 / 顾姗姗 ', '8.2', 569, ' 社会科学文献出版社 ', ' 2017-4 ', ' 89.00元',
        '将秦汉史置于整个东亚视角内审视是怎样一种体验？享誉世界的著名历史学家西嶋定生的经典作品带你了解“他者”眼中的秦汉帝国《秦汉帝国：中国古代帝国之兴亡》为讲...', 0, 's27012065.jpg', NULL);
INSERT INTO `user_book`
VALUES (747, 0, 0, '中国文化的深层结构', '孙隆基 ', '8.4', 3226, ' 广西师范大学出版社 ', ' 2011-6 ', ' 49.80元',
        '中国文化的深层结构，其实探讨的正是个人与社会，在20世纪的中国受到哪些因素的左右。“仁者，人也。”儒家思想影响了多少人的心理结构，中国人缺乏自我自主意识，也...', 0, 's1068912.jpg', NULL);
INSERT INTO `user_book`
VALUES (748, 0, 0, '银元时代生活史', '陈存仁 ', '8.6', 2712, ' 广西师范大学出版社 ', ' 2007-5 ', ' 38.00元',
        '我童年时，是使用银元的时代。“银元”早期在上海，叫做“银饼”，这是咸丰六年（1857）上海富商私家所铸造的。这些富商都是经营“沙船”生意的。所谓沙船，是十...', 0, 's2118743.jpg', NULL);
INSERT INTO `user_book`
VALUES (749, 0, 0, '两次世界大战之间的日本陆军', '〔日〕黑泽文贵 / 刘天羽 ', '8.0', 35, ' 社会科学文献出版社 ', ' 2020-1 ', ' 86元',
        '一战是世界上的首次总体战，它对日本军政史的影响却被严重低估。被称为“一战世代”的日本陆军军官群体，正是满洲事变、日中战争和太平洋战争中的主要担纲者。他们在“...', 3, 's34887406.jpg', NULL);
INSERT INTO `user_book`
VALUES (750, 0, 0, '天生幸存者', '[英] 温迪·霍尔登 / 黎英亮、冯茵 ', '9.0', 500, ' 社会科学文献出版社 ', ' 2017-7 ', ' 69.00',
        '《星期日泰晤士报》2015年度畅销书Goodreads2015年度历史与传记类好书《天生幸存者》是个惊心动魄的故事，是三位母亲及其新生婴儿在大屠杀中挣...', 0, 's27025729.jpg', NULL);
INSERT INTO `user_book`
VALUES (751, 0, 0, '红色资本', '[美]卡尔·沃尔特(Carl E. Walter)、[美]弗雷泽·豪伊(Fraser J. Howie) / 祝捷、刘骏 ', '8.8', 1384, ' 东方出版中心 ',
        ' 2013-8-1 ', ' 38.00元', '揭示中国非凡崛起与金融改革的真相！阅读这本书，可以从一个独特的视角，对中国改革开放30年，特别是金融改革20年波澜壮阔的历史进程有一个全新的了解。作者通过...', 0,
        's25717107.jpg', NULL);
INSERT INTO `user_book`
VALUES (752, 0, 0, '坐天下', '张宏杰 ', '8.3', 1056, ' 人民文学出版社 ', ' 2015-5-1 ', ' CNY 39.80', '', 0, 's26377294.jpg', NULL);
INSERT INTO `user_book`
VALUES (753, 0, 0, '帝国之裘', '[美]谢健 / 关康 ', '7.9', 163, ' 北京大学出版社 ', ' 2019-7 ', ' 68.00',
        '本书荣膺2018年美国亚洲历史学会列文森奖。乾隆帝曾经盛赞过东北丰饶的物产和独特的自然环境，认为满洲大地是资源富集之地，也是自然生命力的源泉。这里的土地山...', 1, 's33590820.jpg', NULL);
INSERT INTO `user_book`
VALUES (754, 0, 0, '中国政治思想史', '萧公权 ', '9.4', 202, ' 商务印书馆 ', ' 2011-12 ', ' 95.00元',
        '《中国政治思想史》全书共分五编二十五章，七十余万字，所取政治文献的研究资料上自晚周，下迄辛亥革命，全文所论及古今学者六十余人，文献资料相当丰富。作者以政治学...', 0, 's6852927.jpg', NULL);
INSERT INTO `user_book`
VALUES (755, 0, 0, '码书', '[英] 西蒙·辛格 / 刘燕芬 ', '9.0', 477, ' 后浪丨江西人民出版社 ', ' 2018-3 ', ' 68.00元',
        '自有文字以来，密码就随之诞生，破解密码一直是具有高度智慧的人们不可抗拒的诱惑。编码和解码的战争持续了3000多年，本书作者剖析其间不为人知的历史隐秘，白描一...', 0, 's27176880.jpg', NULL);
INSERT INTO `user_book`
VALUES (756, 0, 0, '法国大革命前夕的舆论与谣言', '[法] 阿莱特·法尔热 / 陈旻乐 ', '8.2', 203, ' 文汇出版社 ', ' 2018-3 ', ' 55.00',
        '人微言轻的民众、晦明不定的言论，何以动摇法国王室的统治？法国历史学家阿莱特·法尔热作品，视角独特的法国大革命研究。···················...', 0, 's27052068.jpg', NULL);
INSERT INTO `user_book`
VALUES (757, 0, 0, '中国艺术与文化', '[美] 杜朴、[美] 文以诚 / 张欣 ', '8.8', 181, ' 后浪丨湖南美术出版社 ', ' 2019-10 ', ' 258.00元',
        '中国艺术史的书写典范全美多所名校指定读本郑岩作序，巫鸿、安家瑶、朱青生联合推荐「编辑推荐」☆中文版第3次修订，更准确、更完善☆举重若轻还原...', 0, 's34792916.jpg', NULL);
INSERT INTO `user_book`
VALUES (758, 0, 0, '美国史（第13版）', '[美] 艾伦·布林克利 (Alan Brinkley) / 陈志杰 等 ', '8.6', 92, ' 北京大学出版社 ', ' 2019-1 ', ' 268.00元',
        '本书讲述“地理大发现”至今的美国历史。以政治史为经，以经济史、文化史为纬，兼采新文化史、跨国史等多种崭新视角，展现了美国从初生到成长为一个超级大国的历程。本...', 0, 's26929931.jpg', NULL);
INSERT INTO `user_book`
VALUES (759, 0, 0, '伯罗奔尼撒战争史', '(古希腊)修昔底德 / 何元国 ', '9.5', 87, ' 中国社会科学出版社 ', ' 2017-12-31 ', ' CNY 128.00',
        '《伯罗奔尼撒战争史》按照编年体记事，详细记录了以雅典为首的提洛同盟与以斯巴达为首的伯罗奔尼撒联盟之间的一场战争，并且分析了这场战争的原因和背景。《伯罗奔尼撒...', 0, 's27197930.jpg', NULL);
INSERT INTO `user_book`
VALUES (760, 0, 0, '中国神话传说', '袁珂 ', '8.7', 1225, ' 世界图书出版公司 ', ' 2012-1-1 ', ' 49.80元',
        '作为中国神话学史上最杰出的第三代神话学家，袁珂先生集毕生之精力，从这些零碎的材料中，通过收集、整理、梳理、分析，并构建出神话的轮廓，使那些在时代的流变中因被...', 0, 's7014927.jpg', NULL);
INSERT INTO `user_book`
VALUES (761, 0, 0, '扫起落叶好过冬', '林达 ', '8.6', 6864, ' 生活·读书·新知三联书店 ', ' 2006-10 ', ' 38.50元',
        '这本书分成五辑：第一辑是美国的历史故事；第二辑是有关法制国家立法规则的故事；第三辑是就一些具体的案例来讲述有关司法过程的故事；第四辑主要通过修道士、苦修院和...', 0, 's1907199.jpg', NULL);
INSERT INTO `user_book`
VALUES (762, 0, 0, '东京梦华录笺注（上下）', '宋·孟元老 / 伊永文   笺注 ', '9.4', 433, ' 中华书局 ', ' 2006-08-17 ', ' 96.00元',
        '《东京梦华录笺注(套装全2册)(竖排繁体)》主要讲述了：东京梦华录问世于南宋绍兴十七年（一一四七），从其书自序得知，作者为孟元老，但生平不详。清时，开封老儒...', 0, 's1907655.jpg', NULL);
INSERT INTO `user_book`
VALUES (763, 0, 0, '中国历史精神', '钱穆 ', '8.6', 532, ' 九州出版社 ', ' 2012-2-1 ', ' 24.00元',
        '钱穆编著的《中国历史精神(新校本)》讲述了：中国历史源远流长，其间治乱更巷，波谲云诡，常令治史者望洋兴叹，有无从下手之憾，而初读史者，亦每苦于重点之难以把握...', 0, 's10435397.jpg', NULL);
INSERT INTO `user_book`
VALUES (764, 0, 0, '第三帝国的兴亡（上下册）', '威廉·夏伊勒 / 董乐山 ', '9.0', 874, ' 世界知识出版社 ', ' 2012-1 ', ' 118.00元',
        '《第三帝国的兴亡(套装上下册)》是全世界最畅销的反映纳粹德国历史的巨著。它精彩绝伦地记述了被希特勒称为“千秋帝国”（即第三帝国）从兴起到覆灭的全部过程。在短...', 0, 's10435653.jpg', NULL);
INSERT INTO `user_book`
VALUES (765, 0, 0, '镖人', '许先哲 ', '8.6', 2396, ' 北京联合出版公司 ', ' 2019-4 ', ' 42.80元',
        '“镖”，指的是受雇的武夫，其保护的目标，亦指官府悬赏通缉的目标。《镖人》的故事展开于隋末民乱前夕，武功高强的神秘镖客刀马带着幼子小七行走于乱世之中，所遇之...', 0, 's30490151.jpg', NULL);
INSERT INTO `user_book`
VALUES (766, 0, 0, '大汉兴亡四百年', '李金海 ', '9.4', 33, ' 江苏凤凰文艺出版社 ', ' 2019-12-30 ', ' 54.90元',
        '刘邦项羽楚汉争霸；霍去病封狼居胥；陈汤虽远必诛；刘秀中兴汉室；班超投笔从戎……这些让人一听名字就热血沸腾的故事全都发生在汉朝，不仅构成了一部精彩绝伦的大汉4...', 4, 's34947791.jpg', NULL);
INSERT INTO `user_book`
VALUES (767, 0, 0, '第二次世界大战回忆录（全六卷）', '温斯顿·丘吉尔 / 吴万沈等 ', '8.7', 806, ' 南方出版社 ', ' 2003-4-1 ', ' 298.0',
        '《第二次世界大战回忆录(共6册)》1941年上半年，英国仍在北非、地中海、中东和大西洋上孤军奋战，损失军舰和商船共300万吨之巨，情势非常危急。罗斯福决定在...', 0, 's1000531.jpg', NULL);
INSERT INTO `user_book`
VALUES (768, 0, 0, '大明王朝的七张面孔', '张宏杰 ', '7.9', 1248, ' 广东人民出版社 ', ' 2016-1 ', ' CNY 45.00',
        '本书选取了七个能够全面反映大明王朝运作规则的人物：一个皇帝：朱元璋；一个篡位者：朱棣；一个清官：海瑞；一个太监：魏忠贤；一个造反者：张献忠；一个叛徒：吴三桂...', 0, 's26692605.jpg', NULL);
INSERT INTO `user_book`
VALUES (769, 0, 0, '从戈尔巴乔夫到普京的俄罗斯道路', '大卫·M·科兹 (David M.Kotz)、弗雷德·威尔 (Fred Weir) / 曹荣湘 等 ', '9.5', 84, ' 中国人民大学出版社 ',
        ' 2015-1-1 ', ' CNY 58.00', '《马克思主义研究译丛·从戈尔巴乔夫到普京的俄罗斯道路：苏联体制的终结和新俄罗斯》是《来自上层的革命》的修订本和增补本。内容涵盖了从1917年苏联政治体制的确...',
        0, 's26299706.jpg', NULL);
INSERT INTO `user_book`
VALUES (770, 0, 0, '第一次十字军东征', '[英] 彼得·弗兰科潘 / 欧阳敏 ', '8.2', 155, ' 海南出版社 ', ' 2019-10-18 ', ' 69.90元',
        '11世纪末，数万十字军义无反顾地踏上了惨烈的东征之路。他们天真地坚信，从异教徒手中夺回耶路撒冷、解救被凌虐的东方教徒，就是上帝赋予他们的神圣使命。但历史远非...', 0, 's34820917.jpg', NULL);
INSERT INTO `user_book`
VALUES (771, 0, 0, '唐人时代', '师永涛 ', '8.3', 30, ' 中央编译出版社 ', ' 2019-12 ', ' 58',
        '这是“一部富有烟火气息的唐代日常生活史”，完整再现了一千四百年前唐代人的生存状态和生活方式。本书尝试抛弃当下生活史写作中对于衣食住行等分门别类写作的方式，...', 0, 's34963502.jpg', NULL);
INSERT INTO `user_book`
VALUES (772, 0, 0, '雍正皇帝（全三册）', '二月河 ', '8.7', 1489, ' 长江文艺出版社 ', ' 2009-9 ', ' 100.00元',
        '《雍正皇帝(套装全3册)》是系列长篇历史小说《雍正皇帝》的第1卷。帝王行止、宫闱秘闻素来为读者关心，《雍正皇帝(全3册)》描写鲜为人知的清廷生活，却又不拘囿...', 2, 's4162706.jpg', NULL);
INSERT INTO `user_book`
VALUES (773, 0, 0, '罪孽的报应', '[荷] 伊恩·布鲁玛 / 倪韬 ', '8.3', 694, ' 广西师范大学出版社 ', ' 2015-9 ', ' 66.00',
        '德国有心结，一提到犹太人，德国人的肾上腺素水平就会猛增。君特·格拉斯说，“有了奥斯维辛集中营的惨痛回忆，德国就应该永远分裂。”倘若说人类史上最黑暗的篇章...', 0, 's26577705.jpg', NULL);
INSERT INTO `user_book`
VALUES (774, 0, 0, '哑舍Ⅳ', '玄色 ', '7.2', 1918, ' 长江出版社 ', ' 2014-7 ', ' 25.00元',
        '哑舍第四部的主题，是关于逝去的历史。手持着洛书九星罗盘的陆子冈和医生，为了追寻老板的下落，一次次地穿梭在历史的幻影之中。看似毫无主题，事实上是在回顾老板在两...', 0, 's25922733.jpg', NULL);
INSERT INTO `user_book`
VALUES (775, 0, 0, '西方哲学史（第9版）', '[美] 撒穆尔·伊诺克·斯通普夫、[美] 詹姆斯·菲泽 / 邓晓芒、匡宏、等 ', '9.6', 371, ' 后浪丨北京联合出版公司 ', ' 2019-8 ',
        ' 99.80元', '畅销五十余载而不衰，备受好评的西哲史教材全新再版通俗易懂的历史梳理，从古典文籍到当代前沿一应俱全◎编辑推荐☆自1966年初版至今最新修订版☆西方哲...', 0, 's34447865.jpg',
        NULL);
INSERT INTO `user_book`
VALUES (776, 0, 0, '1929年大崩盘', '约翰·肯尼斯·加尔布雷思 ', '7.5', 937, ' 上海财经大学出版社 ', ' 2006-10 ', ' 25.00元',
        '由著名经济学家加尔布雷思撰著，是本简明扼要但又富有见地的历史著作，初版以来一直在重印。该书部分章节中，还生动地描述了大萧条前的繁荣景象。本书内容雍容而机智，...', 0, 's1928404.jpg', NULL);
INSERT INTO `user_book`
VALUES (777, 0, 0, '品人录', '易中天 ', '7.7', 5767, ' 上海文艺出版社 ', ' 2006-1 ', ' 22.00元',
        '我们总是习惯于把王朝的兴衰、事业的成败、历史的更替和事情的对错都归结为个人的原因，归结为某个领袖人物或主导人物个人品质的优劣好坏。与此同时，历史人物也都按照...', 1, 's1028805.jpg', NULL);
INSERT INTO `user_book`
VALUES (778, 0, 0, '历史的巨镜', '金观涛 ', '9.2', 469, ' 法律出版社 ', ' 2015-7-1 ', ' 52',
        '本书由“探索现代社会的起源”和“西方社会结构的演变”两部分构成，系统探讨了传统社会转型的一般模式以及现代社会结构在其扩张过程中碰到的社会整合危机，讨论了现代...', 0, 's26591910.jpg', NULL);
INSERT INTO `user_book`
VALUES (779, 0, 0, '西方通史 第一卷', '[德]海因里希·奥古斯特·温克勒（Heinrich August Winkler） / 丁娜 ', '9.4', 61, ' 索·恩 ∣社会科学文献出版社 ',
        ' 2019-9 ', ' 198.00', '《西方通史》总共四卷，分别是：第一卷：《从古代源头到20世纪》第二卷：《世界大战的时代，1914—1945》第三卷：《从冷战到柏林墙的倒塌》第四卷：...', 0,
        's30264052.jpg', NULL);
INSERT INTO `user_book`
VALUES (780, 0, 0, '大国崛起', '唐晋 ', '7.7', 2921, ' 人民出版社 ', ' 2007-1 ', ' 56.00元',
        '为什么不断有一个又一个国家骤然兴盛，成为所向无敌的霸主?为何历史上的强国都只能维持一个世纪左右的霸权?这其中到底有着怎样的规律和共性，中国从中究竟应领悟到什...', 0, 's1958740.jpg', NULL);
INSERT INTO `user_book`
VALUES (781, 0, 0, '半小时漫画经济学3：金融危机（完结篇）', '陈磊·半小时漫画团队 ', '7.7', 495, ' 海南出版社 ', ' 2020-3-24 ', ' 39.90',
        '在大多数读者的心目中，经济学都是专业、晦涩的代名词，但陈磊（笔名：二混子）领衔的半小时漫画团队，却通过手绘漫画和段子，一边用历史上著名的金融危机事件抖包袱，...', 0, 's34990166.jpg', NULL);
INSERT INTO `user_book`
VALUES (782, 0, 0, '印加帝国的末日', '[美] 金·麦夸里 / 冯璇 ', '8.7', 511, ' 社会科学文献出版社 ', ' 2017-5 ', ' 92.00元',
        '对既有文献的完善……生动而富于戏剧性。———《华盛顿邮报》引人入胜，不忍释卷……一本像印加黄金一样宝贵的好书。———《历史》杂志除了全面透彻地...', 0, 's26997145.jpg', NULL);
INSERT INTO `user_book`
VALUES (783, 0, 0, '历史三调', '柯文 / 杜继东 ', '8.9', 1196, ' 江苏人民出版社 ', ' 2005 ', ' 27.00元',
        '历史是什么？到底应该如何看待历史？人们经历的历史、历史学家笔下的历史和神话化的历史三者之间存在什么样的互动关系？本书以义和团运动为例，对上述问题进行了如此探...', 0, 's1439260.jpg', NULL);
INSERT INTO `user_book`
VALUES (784, 0, 0, '十五至十八世纪的物质文明、经济和资本主义', '[法] 费尔南·布罗代尔 / 顾良、施康强 ', '9.3', 242, ' 商务印书馆 ', ' 2017-7 ', ' 115.00',
        '本书是法国年鉴学派历史学家布罗代尔的集大成之作，作者经二十余年才完成该作品。除了展现出作者的丰富学识、广阔的视野以及运用了令人惊叹的各种丰富资料之外，其基本...', 0, 's27001534.jpg', NULL);
INSERT INTO `user_book`
VALUES (785, 0, 0, '春秋史', '童书业 ', '8.4', 403, ' 上海古籍出版社 ', ' 2003-4-1 ', ' 19.50元',
        '《春秋史》分“正文”、“考证”两部分，正文部分约十六万言，考证部分预定三十万言；正文用叙述体（必要处也参考证），文字以浅显为主，除必不得已处，不引原文。考证...', 0, 's1313715.jpg', NULL);
INSERT INTO `user_book`
VALUES (786, 0, 0, '蒙古帝国与其漫长的后世', '杉山正明 / 乌兰 ', '6.9', 83, ' 北京日报出版社 ', ' 2020-1 ', ' 78.00',
        '为什么说蒙古帝国是世界史的开端？欧亚草原疾驰的征服者如何看待自身？为什么蒙古帝国的形象在俄罗斯和欧洲总是负面的？俄罗斯帝国、奥斯曼帝国、莫卧儿帝国、明...', 0, 's34869431.jpg', NULL);
INSERT INTO `user_book`
VALUES (787, 0, 0, '封建社会（上、下卷）', '[法] 马克·布洛赫 / 张绪山、李增洪、侯树栋 ', '9.0', 490, ' 商务印书馆 ', ' 2004-10 ', ' 48.00',
        '《封建社会(套装上下册)》是研究封建社会的一部综合性巨著，它包括了西欧封建社会的经济、政治、文化心态等诸多结构。他明确地认为封建主义是一种社会类型（aty...', 0, 's1053109.jpg', NULL);
INSERT INTO `user_book`
VALUES (788, 0, 0, '容忍与自由', '胡适 著、潘光哲 编 ', '9.0', 3324, ' 法律出版社 ', ' 2011-6-1 ', ' 34.00元',
        '为纪念胡适先生诞辰120周年，胡适先生所著《容忍与自由：胡适读本》，由台湾胡适纪念馆主任潘光哲先生重新编辑。《容忍与自由：胡适读本》选取在当时即引起很大反响...', 0, 's6558202.jpg', NULL);
INSERT INTO `user_book`
VALUES (789, 0, 0, '东大爸爸写给我的日本史', '[日]小岛毅 / 王筱玲 ', '7.8', 1328, ' 北京联合出版公司 ', ' 2015-10 ', ' 32.00元',
        '东大教授父亲为女儿写作的日本史比教材更真实更有趣【编辑推荐】身为东京大学历史学教授的父亲心怀对女儿满满的爱也为澄清历史的本来面貌写下了这本更有趣...', 0, 's26612919.jpg', NULL);
INSERT INTO `user_book`
VALUES (790, 0, 0, '小津安二郎全日记', '[日] 小津安二郎、[日] 田中真澄 / 周以量 ', '7.8', 182, ' 上海译文出版社 ', ' 2020-2 ', ' 168.00',
        '无数大导演、艺术家和影评人推崇他却极少有机会看到他的日记华语世界首次翻译出版最具个人风格的电影大师之私人物语文本唯一，内容珍贵，体例周详，附录丰...', 0, 's34873195.jpg', NULL);
INSERT INTO `user_book`
VALUES (791, 0, 0, '兴盛与危机', '金观涛、刘青峰 ', '8.7', 1353, ' 法律出版社 ', ' 2011-1 ', ' 45.00元',
        '作者大胆地将系统整体研究方法运用到历史研究中，从中国封建社会延续两千余年与每两三百年爆发一次大动乱之间的关系入手分析，提出中国社会是一个超稳定系统的假说，并...', 0, 's5906312.jpg', NULL);
INSERT INTO `user_book`
VALUES (792, 0, 0, '匈人王阿提拉', '[德] 克劳斯·罗森 / 万秭兰 ', '7.7', 91, ' 后浪丨北京联合出版公司 ', ' 2019-7 ', ' 78.00元',
        '分析解读史料，描绘历史现场为读者还原一个震撼欧洲的匈人王阿提拉◎编辑推荐本书介绍了匈人王阿提拉的生平事迹，同时也分析解读了匈人这个神秘古代民族的来龙...', 0, 's33436261.jpg', NULL);
INSERT INTO `user_book`
VALUES (793, 0, 0, '许倬云说历史：台湾四百年', '许倬云 ', '7.6', 1750, ' 浙江人民出版社 ', ' 2013-5 ', ' 29.80元',
        '★对于台湾历史的演变，我们应该如何抱以同情之理解？★台湾的民主转型，能给我们哪些启示？★两岸关系，在未来将往何处发展？许倬云先生以恢宏的史家视野与饱含...', 0, 's24530428.jpg', NULL);
INSERT INTO `user_book`
VALUES (794, 0, 0, '大分流', '（美）彭慕兰 / 史建云 ', '7.6', 695, ' 江苏人民出版社 ', ' 2004-03 ', ' 49.00元',
        '这本“加州学派”的力作，尽管在国外学界频频获奖，但之所以在国内引起这样的轰动，是因为这本书以中国与欧洲双向交互比较的方法，再次触动了国人最敏感的老话题――我...', 0, 's1070147.jpg', NULL);
INSERT INTO `user_book`
VALUES (795, 0, 0, '学术训练与学术规范', '荣新江 ', '8.9', 1514, ' 北京大学出版社 ', ' 2011-4-1 ', ' 30.00元',
        '对于渴望进入中国古代史研究领域的学子来说，本书几乎是手把手地指明了入门的途径。举凡古籍、石刻、简帛、文书、图像以及今人论著、刊物都有它们的翻检之道，而对版本...', 0, 's6313277.jpg', NULL);
INSERT INTO `user_book`
VALUES (796, 0, 0, '柔福帝姬', '米兰Lady ', '7.8', 3592, ' 新世界出版社 ', ' 2006-02-01 ', ' 42.00元',
        '《柔福帝姬》是这两年红遍网络的历史情感小说，作者米兰lady（天涯ID为Milanlady）这部四十多万字的小说根据宋朝真假公主柔福帝姬的历史疑案展开想象，...', 0, 's1464085.jpg', NULL);
INSERT INTO `user_book`
VALUES (797, 0, 0, '美术馆里聊怪咖', '[日] 山田五郎、[日] 古山淳子 / 汪婷 ', '8.0', 2901, ' 湖南美术出版社 ', ' 2017-12 ', ' 68.00元',
        '一本贱萌贱萌的艺术史蛇精病的外表，史学家的灵魂.....................※编辑推荐※♚一档艺术家们的吐槽大会，12位具有代表性的蛇...', 0, 's27156515.jpg', NULL);
INSERT INTO `user_book`
VALUES (798, 0, 0, '简明中国历史地图集', '谭其骧 ', '9.0', 1414, ' 中国地图出版社 ', ' 1991-10-01 ', ' 48.00',
        '《简明中国历史地图集》由序图《中华人民共和国全图》以及上自原始社会下迄中华民国的各历史时期地图共36幅组成，并有包括序图在内的约7万字的图说及地名索引。读者...', 0, 's1337448.jpg', NULL);
INSERT INTO `user_book`
VALUES (799, 0, 0, '边境', '[保]卡帕卡·卡萨波娃（Kapka Kassabova） / 马娟娟 ', '8.6', 21, ' 社会科学文献出版社 ', ' 2019-12-26 ', ' 69.00元',
        '从某种意义上说，所有的人口都是移民。.有人说，历史是胜利者书写的，但我认为，历史首先是由那些并非身在其中的人书写的。.牧羊人说，你也会逃离，但如果我...', 3, 's34869746.jpg', NULL);
INSERT INTO `user_book`
VALUES (800, 0, 0, '讲给大家的中国历史02', '杨照 ', '8.5', 324, ' 中信出版集团·见识城邦 ', ' 2018-11 ', ' 48.00元',
        '《讲给大家的中国历史》系列（全13册）考察了中国从新石器时代到清王朝结束数千年的历史轨迹，充分运用近百年历史学和考古学的丰硕成果，以广泛的社会结构、社会思潮...', 0, 's30306978.jpg', NULL);
INSERT INTO `user_book`
VALUES (801, 0, 0, 'The Art of Being Governed', 'Michael Szonyi ', '8.8', 76, ' Princeton University Press ',
        ' 2017-12-5 ', ' USD 35.00', 'HowdidordinarypeopleintheMingdynasty(1368-1644)dealwiththedemands...', 0,
        's27032996.jpg', NULL);
INSERT INTO `user_book`
VALUES (802, 0, 0, '毛泽东选集 第四卷', '毛泽东 ', '9.1', 1448, ' 人民出版社 ', ' 1991 ', ' 44.00元',
        '《毛泽东选集》(第4卷)(精装)包括毛泽东在解放战争时期写的70篇著作。', 0, 's1139359.jpg', NULL);
INSERT INTO `user_book`
VALUES (803, 0, 0, '中国通史（上下册）', '傅乐成 ', '8.9', 327, ' 中信出版社 ', ' 2014-10 ', ' 78.00',
        '【各种版本的通史著作，为什么选择傅乐成版《中国通史》（上下册）？】一、台湾史学界与大陆史学界1949年之后，史学界因政治而分化为大陆和台湾两部分。大陆连...', 0, 's25986743.jpg', NULL);
INSERT INTO `user_book`
VALUES (804, 0, 0, '朱元璋传', '吴晗 ', '7.6', 1482, ' 陕西师范大学出版社 ', ' 2008-9 ', ' 28.00元',
        '本书是吴晗1948年写定的版本，当时作者思想自由，文思活泼，语言生动，正当盛年。在他笔下，一个历经艰辛磨难，乞讨度日的小流氓和英勇睿智、气度恢宏的统帅；一个...', 5, 's3181961.jpg', NULL);
INSERT INTO `user_book`
VALUES (805, 0, 0, '巴黎烧了吗？（精装版）', '(美)拉莱·科林斯、(法)多米尼克·拉皮埃尔 / 董乐山 ', '8.9', 512, ' 译林出版社 ', ' 2015-8 ', ' 86.00',
        '“巴黎烧了吗？”这是1944年8月25日，巴黎解放那天，阿道夫·希特勒在东普鲁士“狼穴”的地堡里，向他的总参谋长约德尔上将发出的责问。本书生动而又详细地描...', 0, 's26384536.jpg', NULL);
INSERT INTO `user_book`
VALUES (806, 0, 0, '安妮日记', '【德国】安妮·弗兰克 / 李文雅、张霖源 ', '8.7', 1719, ' 北京燕山出版社 ', ' 2011-9-1 ', ' 22.00元',
        '编辑推荐安妮·弗兰克，德国犹太少女，15岁死于贝尔根-贝尔森集中营。《安妮日记》是安妮遇难前两年藏身密室时的生活和情感的记载。《安妮日记》记录了一名成长...', 0, 's6854919.jpg', NULL);
INSERT INTO `user_book`
VALUES (807, 0, 0, '冷战', '[美] 约翰·刘易斯·加迪斯 / 翟强、张静 ', '8.2', 621, ' 社会科学文献出版社 ', ' 2016-12 ', ' 49.00元',
        '《冷战》，最扣人心弦的年度非虚构作品，让我们前所未有的感受到了世界在毁灭边缘时的情形。这是你看过所有间谍恐怖小说的真相：为什么美国和苏联陷入高度僵持；我们...', 0, 's26912644.jpg', NULL);
INSERT INTO `user_book`
VALUES (808, 0, 0, '简明美国史', '陈勤 ', '7.4', 925, ' 云南人民出版社 ', ' 2017-1 ', ' 49 .00元',
        '【内容简介】从《五月花号公约》签订到特朗普入主白宫，探寻美利坚合众国400年的兴衰荣辱。看“穷小子”如何一步步逆袭成超级大国，给读者还原一个有温度、有故事...', 0, 's26915210.jpg', NULL);
INSERT INTO `user_book`
VALUES (809, 0, 0, '印尼 Etc.', '[英] 伊莉莎白·皮萨尼 / 谭家瑜 ', '8.2', 309, ' 上海三联书店 ', ' 2019-10 ', ' 86.00元',
        '印度尼西亚是世界上最大的群岛国家，由13,500座岛屿组成，住着360个族群，说看719种语言。它不仅拥有丰富的天然资源，也是一个有着无与伦比的文化多样性与...', 0, 's34872741.jpg', NULL);
INSERT INTO `user_book`
VALUES (810, 0, 0, '全球通史（第7版 上册）', '[美] 斯塔夫里阿诺斯 / 董书慧、王昶、徐正源 ', '8.9', 12694, ' 北京大学出版社 ', ' 2005-1 ', ' 88.00元',
        '斯塔夫里阿诺斯的这部潜心力作自1970年初版问世以来，赞誉如潮，被译成多种语言流传于世，可谓经典之中的经典。第7版在保留原文精华的基础上，融入了时新的研究成...', 0, 's1225977.jpg', NULL);
INSERT INTO `user_book`
VALUES (811, 0, 0, '被禁锢的头脑', '(波兰)切斯瓦夫·米沃什 / 乌兰、易丽君 ', '8.8', 1512, ' 广西师范大学出版社 ', ' 2013-3 ', ' 35.00元',
        '本书是1980年度诺贝尔文学奖获得者米沃什写于1950年代初的经典作品，对于二战前后波兰以及波罗的海三国人的处境做了精彩的描述与反省。米沃什的许多真知灼见放...', 0, 's7916069.jpg', NULL);
INSERT INTO `user_book`
VALUES (812, 0, 0, '政治秩序的起源', '[美]弗朗西斯·福山 / 毛俊杰 ', '8.9', 1059, ' 广西师范大学出版社 ', ' 2012-10-20 ', ' 68.00元',
        '成功的现代自由民主制，将强大的国家、法治和负责制政府三种机制结合在稳定的平衡中。那么，这三种机构最初来自何方？是什么力量驱使它们诞生？又在何等条件下得到发展...', 0, 's19976381.jpg', NULL);
INSERT INTO `user_book`
VALUES (813, 0, 0, '公主之死', '李贞德 ', '8.2', 386, ' 商务印书馆 ', ' 2017-4 ', ' 25.00元',
        '北魏兰陵长公主在婚姻中遭遇丈夫出轨和家庭暴力，导致流产致死。这起“殴主伤胎案”在传统中国法律史上极具代表性，案情不仅涉及王公贵胄，也涉及平民百姓，内容牵涉性...', 0, 's27056271.jpg', NULL);
INSERT INTO `user_book`
VALUES (814, 0, 0, '信息简史', '[美] 詹姆斯·格雷克 / 高博 ', '8.7', 2462, ' 人民邮电出版社 ', ' 2013-10 ', ' 69.00元',
        '人类与信息遭遇的历史由来已久。詹姆斯•格雷克笔下的这段历史出人意料地从非洲的鼓语讲起（第1章）。非洲土著部落在尚未直接跨越到移动电话之前，曾用鼓声来传递讯息...', 0, 's25752043.jpg', NULL);
INSERT INTO `user_book`
VALUES (815, 0, 0, '中国青铜时代', '张光直 ', '9.4', 438, ' 生活·读书·新知三联书店 ', ' 2013-3 ', ' 58.00元',
        '所谓青铜时代，在中国即指上古的夏商周三代。以青铜冠名，可见青铜器是贯穿三代文化的核心内容。从青铜器的产生到大量制造与使用，再到逐渐消失，构成了世界范围内独...', 0, 's20516442.jpg', NULL);
INSERT INTO `user_book`
VALUES (816, 0, 0, '京华烟云', '林语堂 / 张振玉 ', '8.5', 32359, ' 陕西师范大学出版社 ', ' 2005-7 ', ' 43.00元',
        '《京华烟云》是林语堂旅居巴黎时于1938年8月至1939年8月间用英文写就的长篇小说，并题献给“英勇的中国士兵”，英文书名为MomentinPeking...', 0, 's1391191.jpg', NULL);
INSERT INTO `user_book`
VALUES (817, 0, 0, '美利坚共和国的缔造', '[美国]戈登·S. 伍德 / 朱妍兰 ', '9.3', 112, ' 译林出版社 ', ' 2016-6 ', ' 98',
        '独立战争拉开了美国革命的序幕，与此同时，美国国父们也开始了思想上的探索与交锋。如何防止政府权力的专断和扩张，保障人民的自由和权利？如何防止多数人对少数人的侵...', 0, 's26819270.jpg', NULL);
INSERT INTO `user_book`
VALUES (818, 0, 0, '梅特涅：帝国与世界', '[德] 沃尔弗拉姆•希曼（Wolfram Siemann） / 杨惠群 ', '8.6', 91, ' 索·恩 ∣社会科学文献出版社 ', ' 2019-6-8 ',
        ' 168.00', '他是马克思笔下旧时代的开明专制领袖，也是基辛格极力推崇的“均势外交”代表人物；.他的一生既见证了奥地利帝国、哈布斯堡皇朝的兴衰沉浮，也左右了世界秩序的...', 0, 's33376541.jpg',
        NULL);
INSERT INTO `user_book`
VALUES (819, 0, 0, '寻找家园', '高尔泰 ', '9.3', 4665, ' 花城出版社 ', ' 2004-11-03 ', ' 20.00',
        '我的故乡高淳，位于江苏省西南端与安徽省交界的地方，恰好是“吴头楚尾”。地势东省交界的寺主，恰好是“吴头楚尾”。地势东高西低。东部是茅山山脉和天目山山脉的衔...', 0, 's1005358.jpg', NULL);
INSERT INTO `user_book`
VALUES (820, 0, 0, '“边缘人”纪事', '杨奎松 ', '8.3', 1311, ' 广东人民出版社 ', ' 2016-3 ', ' 56.00元',
        '成功改造的旧警察|身败名裂的团支书|提心吊胆的大夫|疗养院里的“反革命”自甘“堕落”的青年教师|爱讲怪话的文化教员|“搞关系”的业务员...', 0, 's26711101.jpg', NULL);
INSERT INTO `user_book`
VALUES (821, 0, 0, '世界通史', '[美]霍华德·斯波德 / 吴金平、潮龙起、何立群等 ', '9.0', 142, ' 山东画报出版社 ', ' 2013-9 ', ' 380.00元',
        '在本书中，我们将选择两个基本组织原则，作为我们学习和教授世界历史的基本框架。第一，我们选择了与七大历史转折点有关的一系列事件。第二，我们对这些带给人类生活新...', 0, 's10589345.jpg', NULL);
INSERT INTO `user_book`
VALUES (822, 0, 0, '理性乐观派', '马特·里德利 (Matt Ridley) / 闾佳 ', '8.1', 838, ' 机械工业出版社 ', ' 2015-7-1 ', ' CNY 69.00',
        '本书向我们阐述了情况怎样越变越好，并说明了原因。繁荣来自人人为人人效力。始于十多万年前的交换和专业分工习惯，创造出了以加速趋势改善人类生活水平的集体大脑。这...', 0, 's26583357.jpg', NULL);
INSERT INTO `user_book`
VALUES (823, 0, 0, '毛泽东选集', '毛泽东 ', '9.4', 355, ' 人民出版社 ', ' 1962 ', ' 6.8元', '', 0, 's2224879.jpg', NULL);
INSERT INTO `user_book`
VALUES (824, 0, 0, '麻风', '梁其姿 / 朱慧颖 ', '9.1', 249, ' 商务印书馆 ', ' 2013-5-1 ', ' CNY 42.00',
        '本书是对被现代研究者称为“麻风病”的这种令人恐怖、被污名化的疾病所做的细致研究与探讨。首先从包括该疾病最初的描述在内的帝制时代的典型记录入手，进而追踪了该疾...', 0, 's24754918.jpg', NULL);
INSERT INTO `user_book`
VALUES (825, 0, 0, '反思史学与史学反思', '王明珂 ', '8.8', 726, ' 上海人民出版社 ', ' 2016-4-1 ', ' 49.00元',
        '◆著名历史人类学家王明珂的重磅新作，是《华夏边缘》《羌在汉藏之间》《英雄祖先与弟兄民族》《游牧者的抉择》等著作的知识论基础。◆一部醒世之作：我们看...', 0, 's26721301.jpg', NULL);
INSERT INTO `user_book`
VALUES (826, 0, 0, '我还是想你，妈妈', 'S·A·阿列克谢耶维奇 / 晴朗李寒 ', '8.7', 2029, ' 九州出版社 ', ' 2015-9 ', ' 45.00',
        '★获得2015年诺贝尔文学奖★“她的复调书写，是对我们时代的苦难和勇气的纪念。”★“每一页，都是感人肺腑的故事。”★中国首次正版引进，关于第二次世界大...', 0, 's26591790.jpg', NULL);
INSERT INTO `user_book`
VALUES (827, 0, 0, '君主与大臣', '[美] 白彬菊 (Beatrice Bartlett) / 董建中 ', '9.0', 161, ' 中国人民大学出版社 ', ' 2017-4 ', ' 69.00元',
        '本书利用台北和北京所藏汉文与满文档案，采用内外朝的分析框架，深入细致地研究了清中期的军机处。本书认为，军需处—军机房—军机处三阶段说不成立。军机处有一逐步建...', 0, 's26985065.jpg', NULL);
INSERT INTO `user_book`
VALUES (828, 0, 0, '明朝那些事儿·第1部', '当年明月 ', '8.9', 1509, ' 浙江人民出版社 ', ' 2011-11-1 ', ' 29.80元',
        '《明朝那些事儿》迄今为止唯一全本白话正说明朝大历史，历史本身很精彩，历史可以写得很好看。荣获“新浪图书风云榜”最佳图书，当当网“终身五星级最佳图书”...', 0, 's6878988.jpg', NULL);
INSERT INTO `user_book`
VALUES (829, 0, 0, '疫苗的史诗', '[法] 让-弗朗索瓦·萨吕佐 / 宋碧珺 ', '8.5', 182, ' 中国社会科学出版社 ', ' 2019-1-1 ', ' 69',
        '☆入选首都图书馆“2019年城市荐读书目”☆当艾滋病在撒哈拉以南非洲肆虐了四分之一个世纪后，当地居民的平均寿命下降了整整20年。直到目前为止，人类还没有研...', 0, 's30394968.jpg', NULL);
INSERT INTO `user_book`
VALUES (830, 0, 0, '大外交', '亨利·基辛格 / 顾淑馨、林添贵 ', '8.9', 1744, ' 海南出版社 ', ' 1997 ', ' 39.80',
        '《大外交》是美国前国务卿基辛格先生最新也是最重要的一部著作。作者凭其致力于外交事务的亲身体验，以其丰富的历史知识、智慧和幽默的文笔，展示了自黎塞留以来特别是...', 0, 's1036478.jpg', NULL);
INSERT INTO `user_book`
VALUES (831, 0, 0, '品三国（上）', '易中天 ', '7.7', 15064, ' 上海文艺出版社 ', ' 2006-7 ', ' 25.00元',
        '《品三国》上册共计20余万字，包括易中天截至2006年8月在《百家讲坛》所讲的内容，基本囊括了易中天在“百家讲坛”讲三国的24集内容。其中有2/3的内容是电...', 0, 's1829836.jpg', NULL);
INSERT INTO `user_book`
VALUES (832, 0, 0, '瓜几拉画猫：吾辈宋朝猫', '', '9.2', 458, '瓜几拉 ', ' 中国友谊出版公司 ', ' 2019-5',
        '插画师瓜几拉暌违四年，携新作《吾辈宋朝猫》归来！一本视觉大满足的精美画集，采用可以完全摊开的精装大开本，烫金工艺。吸猫族勿入！看了好想有只猫！瓜几拉变身“...', 0, 's33423264.jpg', NULL);
INSERT INTO `user_book`
VALUES (833, 0, 0, '罗马帝国的崛起', '波里比阿 / 翁嘉声 ', '8.2', 284, ' 社会科学文献出版社 ', ' 2013-1 ', ' 78.00元',
        '《罗马帝国的崛起》从第一次布匿战争开始叙述(264BC)直到第三次布匿战争(146BC)为止，纪录罗马人如何迎接每次严峻的挑战，从不知大海为何物到打败海上强...', 0, 's20452305.jpg', NULL);
INSERT INTO `user_book`
VALUES (834, 0, 0, '中古中国门阀大族的消亡', '[美] 谭凯 (Nicolas Tackett) / 胡耀飞、谢宇荣 ', '7.3', 789, ' 社会科学文献出版社 ', ' 2017-4 ',
        ' 59.00', '中古中国的门阀大族主导了中国数个世纪，关于他们在十世纪的完全消失，长期以来困扰着历史学者。在本书中，谭凯利用新的数据手段分析了大批量的史料，解开了他们消失的...', 0,
        's27006609.jpg', NULL);
INSERT INTO `user_book`
VALUES (835, 0, 0, '行者无疆', '余秋雨 ', '7.7', 26167, ' 华艺出版社 ', ' 2001-10 ', ' 22.00元',
        '2000年8月到2001年1月的这6个月，余秋雨走过了欧洲26个国家96个城市。《行者无疆》记录了作者在旅程中的全部感受，为一部考察西方文明的随笔集。余秋...', 0, 's1054889.jpg', NULL);
INSERT INTO `user_book`
VALUES (836, 0, 0, '美国的故事(共7册)', '', '8.8', 378, '毕蓝 ', ' 九州出版社 ', ' 2018-2-1',
        '让我们一起来读美国历史，读懂它的随意与平和，读懂它的苦涩和幽默。旅美华人毕蓝老师，在繁忙的工作之余，遍查资料，7年时间，笔耕不辍，足见其毅力以及对历史的热...', 0, 's27665420.jpg', NULL);
INSERT INTO `user_book`
VALUES (837, 0, 0, '费马大定理', '(英)西蒙﹒辛格 / 薛密 ', '9.0', 2795, ' 上海译文出版社 ', ' 2005-05-01 ', ' 33.00', '', 1, 's1322358.jpg',
        NULL);
INSERT INTO `user_book`
VALUES (838, 0, 0, '东北游记', '迈克尔·麦尔 (MICHAEL MEYER) / 何雨珈 ', '8.1', 3047, ' 上海译文出版社 ', ' 2017-1 ', ' 48.00元',
        '生活在现代中国的人，都明白见证传统流失，老景翻新的感觉。在北京，也许你上周还在一条巷子里的小店吃面条，下周再去就发现那儿已经变成了一堆瓦砾。相比之下，东北...', 0, 's26828349.jpg', NULL);
INSERT INTO `user_book`
VALUES (839, 0, 0, '皇帝圆舞曲', '高林 ', '8.8', 326, ' 东方出版社 ', ' 2019-3 ', ' 68.00元',
        '本书多角度地展示了十九世纪后期欧洲的社会画卷，追忆了一战前老欧洲最后的和平与繁荣，通过对伏尔泰、腓特烈二世、拿破仑三世、俾斯麦、威廉二世、弗兰茨•约瑟夫皇帝...', 0, 's30426749.jpg', NULL);
INSERT INTO `user_book`
VALUES (840, 0, 0, '中世纪的城市', '(比利时)亨利·皮雷纳 / 陈国樑 ', '8.5', 744, ' 商务印书馆 ', ' 2006-7 ', ' 12.00元',
        '本书是比利时历史学家亨利·皮雷纳重要的中世纪城市史著作。1925年首次在美国以英文出版。作者将“城堡论”与“市场论”相结合，认为城市是商人围绕设防地点——城...', 0, 's1853552.jpg', NULL);
INSERT INTO `user_book`
VALUES (841, 0, 0, '历史深处的忧虑', '林达 ', '8.9', 2951, ' 生活·读书·新知三联书店 ', ' 2013-8 ', ' 26.00',
        '作者以信件的形式讲述了美国现实生活中的故事，生动地介绍了美国法律政治制度的思想原则、建立与发展过程、操作方式、历史价值以及为这套制度已付出和将要付出的代价。...', 0, 's25708714.jpg', NULL);
INSERT INTO `user_book`
VALUES (842, 0, 0, '漫漫自由路', '[南非] 纳尔逊·曼德拉 / 谭振学 ', '8.5', 553, ' 广西师范大学出版社 ', ' 2014-9 ', ' 98.00',
        '梁文道、刘瑜、熊培云、许知远联袂主编——“理想国译丛”（MIRROR）系列之一（002），全新精装校译版——保持开放性的思想和非功利的眼睛，看看世界的丰富性...', 0, 's25975620.jpg', NULL);
INSERT INTO `user_book`
VALUES (843, 0, 0, '商君书', '石磊 译注 ', '8.3', 618, ' 中华书局 ', ' 2009-10 ', ' 11.00元',
        '内容简介：【商君书】记录变法家商鞅言行的重要著作《商君书》是战国时期法家学派的代表作之一，是中国家喻户晓的人物商鞅及其后学的著作汇编。该书解决了在当时条...', 0, 's4090803.jpg', NULL);
INSERT INTO `user_book`
VALUES (844, 0, 0, '维京传奇', '[美] 拉尔斯·布朗沃思 / 豆岩、陈丽 ', '8.1', 975, ' 中信出版集团·新思文化 ', ' 2016-11 ', ' 42.00',
        '“欧洲中世纪三部曲”之1，《纽约时报》畅销书。历史主播元老的震撼新作，展现你不曾读过的北欧海盗史，维京战斧主宰欧洲的三个血腥世纪。比《魔戒》或《权力的游戏》...', 0, 's26897748.jpg', NULL);
INSERT INTO `user_book`
VALUES (845, 0, 0, '钢铁是怎样炼成的', '尼•奥斯特洛夫斯基 / 曹缦西、王志棣 ', '7.8', 1355, ' 译林出版社 ', ' 2010-6-1 ', ' 20.80元',
        '《钢铁是怎样炼成的》以俄国十月革命前后(1915年至30年代初)这一段历史时期为背景，描绘了当时的社会变革、阶级斗争和各阶层人物心态。1917年，俄国爆发了...', 0, 's4881638.jpg', NULL);
INSERT INTO `user_book`
VALUES (846, 0, 0, '从舞台边缘走向中央', '齐锡生 ', '9.2', 131, ' 社会科学文献出版社 ', ' 2018-9 ', ' 118.00',
        '自从中华民族和西方帝国主义国家建立现代化外交关系以来，八年抗战根本性地改变了中国和西方的交往，也改变了中国在世界上的地位。1937年卢沟桥事变前夕，中国依然...', 0, 's30309815.jpg', NULL);
INSERT INTO `user_book`
VALUES (847, 0, 0, '九三年', '（法）雨果 / 叶尊 ', '9.0', 765, ' 上海译文出版社 ', ' 2011-1-1 ', ' 22.00元',
        '雨果在小说中塑造了旺代叛军首领朗德纳克侯爵及其侄孙、镇压叛乱的共和军司令郭万，以及郭万的家庭教师、公安委员会特派员西穆尔丹这三个中心人物，围绕他们展开了错综...', 0, 's5406571.jpg', NULL);
INSERT INTO `user_book`
VALUES (848, 0, 0, '第二次世界大战回忆录', '丘吉尔 / 吴万沈 ', '8.7', 352, ' 南方出版社 ', ' 2003-6-1 ', ' 275.00', '《第二次世界大战回忆录》由南方出版社出版。',
        0, 's1214078.jpg', NULL);
INSERT INTO `user_book`
VALUES (849, 0, 0, '经典里的中国', '杨照 ', '8.8', 404, ' 理想国 | 广西师范大学出版社 ', ' 2016-11 ', ' 248.00元',
        '本系列是杨照结合“历史式读法”和“文学式读法”对中国传统文化经典（《诗经》《论语》《孟子》《老子》《墨子》《庄子》《战国策》《左传》《荀子》《尚书》）的选读...', 0, 's26905301.jpg', NULL);
INSERT INTO `user_book`
VALUES (850, 0, 0, '纽约无人是客', '沈辛成 ', '8.6', 875, ' 中西书局 ', ' 2017-5-20 ', ' 39.80元',
        '本书为作者在纽约实地踏访数十家博物馆并进行深入了解后，对纽约博物馆展示特色、专业内涵、设计匠心及观众体验等进行多维度评价的作品。本书不是一本简单的博物馆导...', 0, 's27037182.jpg', NULL);
INSERT INTO `user_book`
VALUES (851, 0, 0, '藏着', '[英]罗纳德·弗雷泽(Ronald Fraser) / 熊依旆 ', '8.0', 53, ' 格致出版社 ', ' 2020-1 ', ' 56.00元',
        '1939年4月1日，战争终于结束了。当朱莉安娜看到从战场活着回到家的丈夫曼努埃尔，她显得既高兴又难过。因为，她知道，另外一场战争从这一天这一刻开始了。...', 15, 's34902086.jpg', NULL);
INSERT INTO `user_book`
VALUES (852, 0, 0, '中国社会史', '梁庚尧 ', '9.4', 170, ' 东方出版中心 ', ' 2016-5-1 ', ' 58.00元',
        '本书是中国社会史研究与撰述的重要创获。作者以数十年专治中国史的功夫，于上古至近代各类文献、考古发现和前贤时彦的研究成果均有相当全面的掌握。其运思于传统中国...', 0, 's26776858.jpg', NULL);
INSERT INTO `user_book`
VALUES (853, 0, 0, '历史学家的技艺', '[法]马克·布洛赫 ', '9.8', 55, ' 张和声、程郁 ', ' 上海社会科学院出版社 ', ' 2019-7',
        '“武士弄墨，尚可附庸风雅，学者扛枪，只能归咎于命运的残酷。1944年6月16日，年鉴学派的一代宗师马克·布洛赫因参加反法西斯运动在里昂市郊被枪杀，噩耗传出，...', 0, 's33462994.jpg', NULL);
INSERT INTO `user_book`
VALUES (854, 0, 0, '蒋经国传', '陶涵 / 林添贵 ', '8.4', 2811, ' 华文出版社 ', ' 2016-1-1 ', ' 59.00元',
        '“蒋经国的传由外国人写，远比中国人写有意义。”蒋经国之后，台湾历经李登辉、陈水扁、马英九等几代领导，然而每次民调显示，对台湾民主、经济、民生等各方面贡献最...', 0, 's5288371.jpg', NULL);
INSERT INTO `user_book`
VALUES (855, 0, 0, '剑桥中华民国史（上卷）', '费正清 主编 / 杨品泉、孙开远、黄沫 ', '8.7', 1491, ' 中国社会科学出版社 ', ' 1998-7 ', ' 100.00元',
        '《剑桥中华民国史》(1912-1949年)(上卷)是《剑桥中国史》系列中的一本，《剑桥中国史》共16卷，各卷由知名学者上编，卷内各章由研究有素的专家撰写，反...', 0, 's1253538.jpg', NULL);
INSERT INTO `user_book`
VALUES (856, 0, 0, '历史深处的民国', '江城 ', '8.6', 709, ' 华文出版社 ', ' 2015-1-1 ', ' CNY 108.00',
        '这是一套关于1840～1945百年正史的彪悍史书。是一套全面解读晚清、共和、抗战的长篇历史力作。从来没有一本关于民国的书籍，能像《历史深处的民国》这样，全...', 0, 's26657935.jpg', NULL);
INSERT INTO `user_book`
VALUES (857, 0, 0, '菊与刀', '[美]鲁思·本尼迪克特 / 吕万河、熊达云、王智新 ', '8.3', 4256, ' 商务印书馆 ', ' 2012-1 ', ' 25.00元',
        '恬淡静美的“菊”是日本皇室家徽，凶狠决绝的“刀”是武士道文化的象征。美国学者鲁思•本尼迪克特运用文化人类学的方法，用“菊”与“刀”来揭示日本人的矛盾性格，...', 0, 's10540815.jpg', NULL);
INSERT INTO `user_book`
VALUES (858, 0, 0, '敌人与邻居', '[英]伊恩·布莱克 / 王利莘 ', '7.9', 94, ' 中信出版集团 ', ' 2019-9 ', ' 108.00元',
        '巴勒斯坦的这片土地，是犹太人经卷上所指的应许之地，也是许多阿拉伯人世世代代的居所。1917年，奥斯曼帝国落败，结束在这里4个世纪的统治；英国外交大臣发表《贝...', 0, 's34396190.jpg', NULL);
INSERT INTO `user_book`
VALUES (859, 0, 0, '中国政治思想史', '刘泽华 主编 ', '8.9', 21, ' 浙江人民出版社 ', ' 2020-1 ', ' 268.00',
        '破王权制度易，破王权思想难！————————————————————————————为什么在中国古代，行政权力大于经济及其他一切要素，是支配社会全局的力...', 0, 's34790040.jpg', NULL);
INSERT INTO `user_book`
VALUES (860, 0, 0, '见证', '季米特里•肖斯塔科维奇  口述、所罗门·伏尔科夫  整理 / 叶琼芳 ', '9.3', 424, ' 作家出版社 ', ' 2015-11 ', ' 42.00元',
        '《见证：肖斯塔科维奇回忆录》是肖斯塔科维奇口述，由伏尔科夫记录并整理。肖斯塔科维奇是世界范围内知名的音乐家，他的“肖五”“肖七”等名作早已享誉全球，他本人...', 0, 's26666131.jpg', NULL);
INSERT INTO `user_book`
VALUES (861, 0, 0, '文明之光 （第三册）', '吴军 ', '8.9', 2273, ' 人民邮电出版社 ', ' 2015-1-1 ', ' 59',
        '【《文明之光》系列荣获由中宣部、中国图书评论学会和中央电视台联合推选的2014“中国好书”奖】吴军博士从对人类文明产生了重大影响却在过去被忽略的历史故事里...', 0, 's26275177.jpg', NULL);
INSERT INTO `user_book`
VALUES (862, 0, 0, '爱与黑暗的故事', '[以色列] 阿摩司·奥兹 / 钟志清 ', '9.0', 1675, ' 译林出版社 ', ' 2014-3 ', ' 48.00',
        '当今以色列最富影响力的作家阿摩司·奥兹发表于2002年的自传体长篇小说《爱与黑暗的故事》一向被学界视为奥兹最优秀的作品，短短五年就被翻译成二十多种文字的译本...', 0, 's25756955.jpg', NULL);
INSERT INTO `user_book`
VALUES (863, 0, 0, '企鹅欧洲史·竞逐权力', '[英]理查德·埃文斯 / 胡利平 ', '8.7', 227, ' 中信出版集团·新思文化 ', ' 2018-12-20 ', ' 146',
        '1815年，拿破仑兵败滑铁卢，动荡的年代暂时告一段落，直到灭顶之灾于1914年降临。这是欧洲涌动、迸发的一百年，也是权力竞逐的世纪。在1815年以前，人们...', 0, 's30347176.jpg', NULL);
INSERT INTO `user_book`
VALUES (864, 0, 0, '中国古代建筑史', '刘敦桢 ', '9.1', 1135, ' 中国建筑工业出版社 ', ' 2008-8-1 ', ' 52.00元',
        '本书是一本关于中国古代建筑历史的理论著作，简要而系统地叙述了我国古代建筑的发展和成就，并引证了大量的文献资料和实物记录。我国是一个地大物博，历史悠久的文明...', 0, 's1124895.jpg', NULL);
INSERT INTO `user_book`
VALUES (865, 0, 0, '原则与妥协（增订版）', '王希 ', '9.4', 282, ' 北京大学出版社 ', ' 2014-12 ', ' 150.00元',
        '《原则与妥协》旨在为四百年来美国宪政的精神与实践提供一种大跨度的历史叙事，从“权力”“权利”及二者的“互动”着眼，讨论美国宪法原则的起源和变化，梳理其发展的...', 0, 's26162975.jpg', NULL);
INSERT INTO `user_book`
VALUES (866, 0, 0, '灯塔之书', '[英] R.G.格兰特 / 王枫 ', '9.3', 31, ' 中国画报出版社 ', ' 2020-1 ', ' 108.00元',
        '1.一部庞大又别致的灯塔“纪录片”，精心筛选了最早的灯塔、最孤独的灯塔、迄今服役最久的灯塔以及因“命途多舛”而闻名的100多座世界最有名的灯塔，图文并茂地...', 0, 's34945437.jpg', NULL);
INSERT INTO `user_book`
VALUES (867, 0, 0, '图说中国绘画史', '[美]  高居翰 / 李渝 ', '8.6', 1938, ' 生活·读书·新知三联书店 ', ' 2014-4 ', ' 88.00元',
        '本书是1958年由瑞士人史基拉策划的一套亚洲艺术丛书之一，以编入他当时已获盛名的欧洲艺术丛书。经喜龙仁推荐，当时正在攻读博士学位的高居翰获得了写作本书的机会...', 0, 's25774379.jpg', NULL);
INSERT INTO `user_book`
VALUES (868, 0, 0, '旧制度与大革命', '(法) 托克维尔 / 高望 ', '9.3', 149, ' 中华书局 ', ' 2014-7 ', ' 32.00元',
        '《旧制度与大革命》作者托克维尔通过对法国大革命大量史实的研究分析，揭示了旧制度与大革命的内在联系，探讨了十八世纪末法国大革命的起源以及大革命走向恐怖独裁的原...', 0, 's25906170.jpg', NULL);
INSERT INTO `user_book`
VALUES (869, 0, 0, '太平广记', '（宋）李昉  等编 ', '9.2', 766, ' 中华书局 ', ' 2013-3 ', ' 398.00元',
        '《太平广记》是宋初人编的大型类书之一，专门收集自汉代至宋初的野史小说。因为成书于太平兴国年间，和《太平御览》同时编纂，所以名为《太平广记》。这部书是李防等人...', 0, 's1142794.jpg', NULL);
INSERT INTO `user_book`
VALUES (870, 0, 0, '沿坟墓而行', '[德]纳韦德﹒凯尔曼尼（Navid Kermani） / 李双志、王博 ', '8.6', 73, ' 索·恩| 社会科学文献出版社 ', ' 2019-10-14 ',
        ' 86.00', '有一片广袤的土地，从德国以东，跨越俄罗斯而绵延至近东，它始终让人感觉陌生，它被频仍的战火与灾祸撕裂。纳韦德•凯尔曼尼沿着当今在欧洲重新出现的壕沟长途跋涉：从...', 0,
        's34830074.jpg', NULL);
INSERT INTO `user_book`
VALUES (871, 0, 0, '苦命天子', '茅海建 ', '8.3', 1235, ' 生活·读书·新知三联书店 ', ' 2006-4 ', ' 24.00元',
        '咸丰帝当政的年代，1850—1861年，正是中国历史的重要转折年代。太平天国兴起，捻军、天地会的反叛遍及南北，湘军由此而起，厘金随之而生；英国与法国组织联...', 0, 's1801407.jpg', NULL);
INSERT INTO `user_book`
VALUES (872, 0, 0, '大江东去', '阿耐 ', '8.9', 3621, ' 北京联合出版公司 ', ' 2014-7-15 ', ' 168.00',
        '《大江东去》是著名财经作家阿耐创作的一部全景表现改革开放30年来中国经济和社会生活变迁历史的长篇小说。小说以经济改革为主线，全面、细致、深入地表现了197...', 0, 's25918895.jpg', NULL);
INSERT INTO `user_book`
VALUES (873, 0, 0, '康熙大帝（全四册）', '二月河 ', '8.8', 1522, ' 长江文艺出版社 ', ' 2009-9-1 ', ' 110.00元',
        '康熙大帝　夺宫初政本书为系列长篇历史小说《康熙大帝》的第l卷。康熙八岁即位，由顺治遗命，以索尼、苏克萨哈、遏必隆和鳌拜四人为辅臣。其中鳌拜居功自傲，专横...', 0, 's4162705.jpg', NULL);
INSERT INTO `user_book`
VALUES (874, 0, 0, '州县官的银两', '曾小萍 / 董建中 ', '8.8', 276, ' 中国人民大学出版社 ', ' 2005-1 ', ' 29.80元',
        '本书共分为7章，包括“不稳定的财政根源”、“非正式经费体系”、“火耗归公”、“财政合理化改革和各地的试验”、“地方改革的多样性和基本原则”、“改革的障碍：基...', 0, 's1279947.jpg', NULL);
INSERT INTO `user_book`
VALUES (875, 0, 0, '史记（点校本二十四史修订本）', '司马迁 著、裴骃 集解、司马贞 索隐、张守节 正义 / 点校本《史记》修订组 ', '9.7', 445, ' 中华书局 ', ' 2013-8 ',
        ' 590.00元', '《史记》是我国第一部纪传体通史，为“二十四史”之首。全书一百三十卷，其记载始于传说中的黄帝，迄于汉武帝时期，被誉为“史家之绝唱，无韵之离骚”。1959年，...', 0,
        's25660928.jpg', NULL);
INSERT INTO `user_book`
VALUES (876, 0, 0, '世界观（原书第2版）', '[美]理查德·德威特 / 孙天 ', '8.9', 2044, ' 机械工业出版社 ', ' 2018-11-15 ', ' 99.00元',
        '从地心说到三大定律的跃迁，是人类世界观的一次次脱胎换骨！亚里士多德的世界观以地球是宇宙中心为信条。牛顿世界观把动者恒动当作真理。有没有可能我们现在...', 0, 's30379527.jpg', NULL);
INSERT INTO `user_book`
VALUES (877, 0, 0, '俾斯麦', '[德]克里斯托弗·诺恩 / 陈晓莉 ', '8.6', 230, ' 社会科学文献出版社 ', ' 2018-8 ', ' 69.00',
        '【帝国英雄？德意志魔鬼？——“铁血宰相”俾斯麦的定调之作！】·经常被提起的两位德国政治家，一个是希特勒，另一个就是俾斯麦；人们对前者的评价众口一词，而对...', 0, 's30186006.jpg', NULL);
INSERT INTO `user_book`
VALUES (878, 0, 0, '中产阶级的孩子们', '程巍 ', '8.8', 389, ' 生活·读书·新知三联书店 ', ' 2006-06-01 ', ' 28.00元',
        '本书题材新颖，方法独特，是有关60年代文化运动的一次大胆的“文化研究”尝试。作者以文化革命立题，在政治经济学与语言符号学的学科交叉边界上，出色展示文化研究的...', 0, 's1810530.jpg', NULL);
INSERT INTO `user_book`
VALUES (879, 0, 0, '战国史', '杨宽 ', '9.1', 227, ' 上海人民出版社 ', ' 2016-7 ', ' 98.00元',
        '《战国史》是杨宽的代表作，也是中国断代史的一部名著。作者充分吸收学界的相关研究成果，融会贯通，成就这部集大成的《战国史》。本书着重论述战国时期从分裂割据走向...', 0, 's26848828.jpg', NULL);
INSERT INTO `user_book`
VALUES (880, 0, 0, '中国文明起源新探', '苏秉琦 ', '9.4', 45, ' 生活·读书·新知三联书店 ', ' 2019-10 ', ' 78.00',
        '苏秉琦作为中国考古学泰斗之一，其主要学术贡献集中在三本书之中。除了《苏秉琦考古学论述选集》和《华人•中国人•龙的传人》之外，《中国文明起源新探》是他生前最后...', 0, 's34853188.jpg', NULL);
INSERT INTO `user_book`
VALUES (881, 0, 0, '清代的案与刑', '郑小悠 ', '8.5', 311, ' 山西人民出版社 ', ' 2019-7 ', ' 46.00',
        '◎北京大学历史学系博士、“博库·钱江晚报春风悦读盛典”年度新人奖得主郑小悠新作，重新审视清代一系列典型案件，解析其制度设计的漏洞所在。◎一系列几度反转的惊...', 0, 's34461617.jpg', NULL);
INSERT INTO `user_book`
VALUES (882, 0, 0, '青年斯大林', '[英] 西蒙·蒙蒂菲奥里 / 徐展雄 ', '8.2', 968, ' 浦睿文化·民主与建设出版社 ', ' 2017-3 ', ' 78.00元',
        '*英国科斯塔图书奖、法兰西学院奖、美国《洛杉矶时报》图书奖等国际大奖获奖作品！*《纽约时报》《独立报》《泰晤士报》《观察家报》《星期天泰晤士报》《每日电讯...', 0, 's26991064.jpg', NULL);
INSERT INTO `user_book`
VALUES (883, 0, 0, '安妮日记', '安妮.弗兰克 / 彭淮栋 ', '8.1', 7489, ' 海南出版社 ', ' 1996-12 ', ' 19.80元',
        '一个十六岁的少女，最大的愿望是做一名记者和作家，却因为希特勒发动的一场邪恶的战争，于花季之龄死于纳粹集中营。日记是安妮遇难前两年藏身密室时的生活和情感的记载...', 0, 's1042434.jpg', NULL);
INSERT INTO `user_book`
VALUES (884, 0, 0, '中国史学史稿', '刘节 ', '8.4', 19, ' 商务印书馆 ', ' 2020-2 ', ' 50.00',
        '《中国史学史稿》为著名历史学家刘节先生遗著，是以刘节教授在20世纪50年代中期于中山大学讲课讲稿为基础整理而成，初稿写成于1955年，后做过多次补充修改。该...', 0, 's26997226.jpg', NULL);
INSERT INTO `user_book`
VALUES (885, 0, 0, '两晋南北朝史（上下）', '吕思勉 / 有2012年5月7印本 ', '9.2', 674, ' 上海古籍出版社 ', ' 2005-11 ', ' 98.00元',
        '《两晋南北朝史》(上下)吕先生是二十世纪著名的历史学家，对中国古代史的研究，做出了巨大的贡献。《两晋南北朝史》是吕思勉先生的中国断代史系列著作的第三部。本次...', 0, 's1446867.jpg', NULL);
INSERT INTO `user_book`
VALUES (886, 0, 0, '黑羊与灰鹰', '[英] 丽贝卡·韦斯特 / 向洪全、夏娟、陈丹杰 ', '8.2', 180, ' 中信出版集团 ', ' 2019-4 ', ' 178.00元',
        '◆史诗级的纪实文学典范逾半世纪历久不衰的巴尔干必读文本◆兰登书屋、《卫报》、《国家评论》一致评选为“20世纪百佳非虚构作品”···【内容简介】...', 0, 's27141016.jpg', NULL);
INSERT INTO `user_book`
VALUES (887, 0, 0, '中国货币史', '彭信威 ', '9.3', 162, ' 上海人民出版社 ', ' 2007-12 ', ' 120.00元',
        '《中国货币史》主要内容：新中国建立后，公开宣传马克思主义，提倡运用历史唯物主义和辩证唯物主义的世界观和方法论于学术研究工作，提倡理论联系实际，实事求是，提倡...', 0, 's3031727.jpg', NULL);
INSERT INTO `user_book`
VALUES (888, 0, 0, '曾国藩的经济课', '张宏杰 ', '8.0', 259, ' 上海三联书店 ', ' 2019-12 ', ' 68.00',
        '【内容简介】知名学者张宏杰继畅销书《曾国藩传》后重磅力作，经济版《曾国藩传》。曾国藩的一生，起点极低而抵达的高度极高。他从笨人到圣人，经历五次耻辱，在步步...', 0, 's34882674.jpg', NULL);
INSERT INTO `user_book`
VALUES (889, 0, 0, '哑舍Ⅲ', '玄色 ', '7.5', 3263, ' 长江出版社 ', ' 2013-5 ', ' 25.00元',
        '哑舍里的古物，每一件都有着自己的故事，承载了许多年，无人倾听。因为，它们都不会说话……它们在岁月中浸染了成百上千年。每一件，都凝聚着工匠的心血，倾注了使用...', 0, 's24531079.jpg', NULL);
INSERT INTO `user_book`
VALUES (890, 0, 0, '常识', '[美] 托马斯·潘恩 / 蒋漫 ', '8.2', 887, ' 上海译文出版社 ', ' 2015-5 ', ' 25.00',
        '“改变美国的20本书”之一精心打造的全新译本当代青年不可不读的经典名著本书内容确实如书名所言，全是常识，但这些常识是就今天而言的。在莱克星顿的枪声打响...', 0, 's26371591.jpg', NULL);
INSERT INTO `user_book`
VALUES (891, 0, 0, '美丽与哀愁', '[瑞典] 皮特·恩格伦 / 陈信宏 ', '9.0', 259, ' 中信出版社·新思文化 ', ' 2017-11 ', ' 128.00',
        '他看见，他讲述。一代年轻的生命在死亡的怀抱中奋力燃烧。……这一次，“真实”的战争体验将如雪崩一般轰鸣而来。《美丽与哀愁：第—次世界大战个人史》是瑞典作...', 0, 's26896530.jpg', NULL);
INSERT INTO `user_book`
VALUES (892, 0, 0, '驯化', '【英】艾丽丝·罗伯茨 / 李文涛 ', '7.6', 383, ' 读者出版社 ', ' 2019-5 ', ' 79.00',
        '★	数万年的人类史，也是一部物种驯化史。★	2017年《经济学人》《星期日邮报》年度好书。★	被誉为与《人类简史》《枪炮、病菌与钢铁》比肩的人类史著作。...', 0, 's30447356.jpg',
        NULL);
INSERT INTO `user_book`
VALUES (893, 0, 0, '《春秋》与“汉道”', '陈苏镇 ', '9.0', 443, ' 中华书局 ', ' 2011-9-1 ', ' 88.00元',
        '本书是北京大学教授陈苏镇先生潜心研究两汉政治与政治文化的力作。本书深入细致地描述和分析了在儒家士大夫的推动下，以春秋学为主的经学如何诉诸“大一统”帝国的创制...', 0, 's6854982.jpg', NULL);
INSERT INTO `user_book`
VALUES (894, 0, 0, '圣经与利剑', '[美] 巴巴拉·塔奇曼 / 何卫宁 ', '7.9', 237, ' 上海三联书店 ', ' 2019-4 ', ' 78.00元',
        '“人类为巴勒斯坦流的血，比为地球上任何地方流的都要多”。起源于巴勒斯坦的犹太人在经历近两千年的流散后，在同一片土地、操着原有的语言重新建国。在这个独一无二的...', 1, 's30319982.jpg', NULL);
INSERT INTO `user_book`
VALUES (895, 0, 0, '路易·波拿巴的雾月十八日', '马克思 / 中共中央马克思恩格斯列宁斯大林著作编译局 ', '9.2', 1108, ' 人民出版社 ', ' 2001-9 ', ' 9.50元',
        '《路易·波拿巴的雾月十八日》是马克思针对1851年12月2日路易·波拿巴的政变而撰写的一部评述法国政局的著作。', 0, 's1091964.jpg', NULL);
INSERT INTO `user_book`
VALUES (896, 0, 0, '何以中国', '许宏 ', '8.3', 752, ' 生活·读书·新知三联书店 ', ' 2016-5 ', ' 42',
        '公元前2000年，在以传世文献为本位的夏王朝始年的推定上，是个便于记忆的数字。公元前2000年，在所谓的夏王朝前夕，考古发现中看不到与传世文献相对应的...', 0, 's26782702.jpg', NULL);
INSERT INTO `user_book`
VALUES (897, 0, 0, '大流感', '[美]约翰.M.巴里 / 钟扬、赵佳媛、刘念 ', '8.8', 114, ' 上海世纪出版集团 ', ' 2013-7 ', ' 88.00元',
        '大流感指的是1918—1919年横扫世界的那次流感大流行，过去估计全球死亡人数约2000万，最新的权威估计数字为5000万—1亿。这个数字不仅高于历年来命丧...', 0, 's25736221.jpg', NULL);
INSERT INTO `user_book`
VALUES (898, 0, 0, '中国历史通论', '王家范 ', '9.3', 79, ' 生活·读书·新知三联书店 ', ' 2019-6 ', ' 99.00元',
        '《中国历史通论》是王家范先生的经典之作，以他执教“中国通史”课程的讲义为基础写就，讨论范围覆盖直到今天为止的全部中国历史，既勾勒轮廓、阐释整体，也包含对百年...', 0, 's30457516.jpg', NULL);
INSERT INTO `user_book`
VALUES (899, 0, 0, '春秋战国真有趣（套装全6册）', '龙镇 ', '8.7', 154, ' 上海文艺出版社 ', ' 2019-1 ', ' 350元',
        '春秋战国是中国历史上浓墨重彩的一笔，但其错综复杂的历史让很多人望而却步。本书中众多关键的历史人物悉数登场，演绎了一个个有趣的故事——楚灵王以身材提拔官员...', 0, 's30851300.jpg', NULL);
INSERT INTO `user_book`
VALUES (900, 0, 0, '古罗马的日常生活', '[意] 阿尔贝托·安杰拉 / 廖素珊 ', '8.5', 192, ' 社会科学文献出版社 ', ' 2019-1 ', ' 68.00元',
        '从公元115年的一个再平常不过的早晨开始，阿尔贝托•安吉拉（AlbertoAngela）引领读者在古罗马城进行一次非凡的探险之旅。此时罗马帝国正处于权力的...', 0, 's30328938.jpg', NULL);
INSERT INTO `user_book`
VALUES (901, 0, 0, '地理与世界霸权', '[英] 詹姆斯·费尔格里夫 / 胡坚 ', '7.5', 713, ' 浙江人民出版社 ', ' 2016-12-1 ', ' CNY 48.00',
        '20世纪地缘政治学经典著作，在欧洲大陆产生巨大影响………………※编辑推荐※☆20世纪地缘政治学经典著作，在欧洲大陆产生巨大影响，欧美高校地理学专业畅销...', 0, 's26921758.jpg', NULL);
INSERT INTO `user_book`
VALUES (902, 0, 0, '风流去', '鲍鹏山 ', '8.6', 1074, ' 中国青年出版社 ', ' 2009-1 ', ' 48.00元',
        '“思想的历史”系列《天纵圣贤》《彀中英雄》《绝地生灵》三种，结集了鲍鹏山用情最深也最好的文章，2006年出版后在读者中赢得了非常好的口碑。本书是作者重新修订...', 0, 's3464792.jpg', NULL);
INSERT INTO `user_book`
VALUES (903, 0, 0, '弯曲的脊梁', '（美）兰德尔·彼特沃克 / 张洪 ', '8.3', 735, ' 上海三联书店 ', ' 2012-6 ', ' 38.00元',
        '为什么极权主义的宣传，比如在纳粹德国和德意志民主共和国，在开始时卓有成效，却最终失败？外界观察家在解释这段时期的宣传时常常犯两个致命的错误。首先，他们假设因...', 0, 's10546119.jpg', NULL);
INSERT INTO `user_book`
VALUES (904, 0, 0, '党员、党权与党争', '王奇生 ', '9.2', 95, ' 社会科学文献出版社 ', ' 2018-4 ', ' 168.00元',
        '本书考察国民党的组织形态，从国民党内部探寻其制度结构与运作机制，对国民党内部派系冲突、党务与党权在地方的运作、党与政和军的关系等做了细致的讨论。全书核心是国...', 0, 's30209303.jpg', NULL);
INSERT INTO `user_book`
VALUES (905, 0, 0, '沈从文的后半生', '张新颖 ', '9.1', 2290, ' 广西师范大学出版社 ', ' 2014-6-1 ', ' 59.00元',
        '沈从文，生于1902年，逝于1988年。“如果他在世，肯定是1988年诺贝尔文学奖的最有力的候选人。”不少人喜欢这样的说法，以此来加重对沈从文的崇仰和表达...', 0, 's25897707.jpg', NULL);
INSERT INTO `user_book`
VALUES (906, 0, 0, '千年一叹', '余秋雨 ', '8.1', 1100, ' 长江文艺出版社 ', ' 2012-11 ', ' 35.00元',
        '《千年一叹》记录了余秋雨先生在2000年穿越数万公里考察伊斯兰文明遗迹的经历。行迹遍布希腊、埃及、以色列、巴勒斯坦、约旦、伊拉克、伊朗、巴基斯坦、尼泊尔等。...', 0, 's20383607.jpg', NULL);
INSERT INTO `user_book`
VALUES (907, 0, 0, '注定一战', '(美) 格雷厄姆·艾利森 (Graham Allison) / 陈定定、傅强 ', '7.6', 1034, ' 上海人民出版社 ', ' 2019-1-1 ', ' 78.00元',
        '随着中国实力的迅速提升，美国长久以来拥有的全球优势地位受到了挑战。从历史的角度来看，《伯罗奔尼撒战争史》中雅典和斯巴达的战争历史，对理解当下中美关系的发展至...', 0, 's30354245.jpg', NULL);
INSERT INTO `user_book`
VALUES (908, 0, 0, '我的前半生(全本)', '爱新觉罗·溥仪 ', '7.7', 2710, ' 群众出版社 ', ' 2007-1 ', ' 96.00元',
        '《我的前半生(全本)》是爱新觉罗·溥仪的自传，作者从自己的家庭背景写起，回顾了他在入宫做了皇帝、遭遇辛亥革命、清帝退位、民国成立、北洋军阀混战、出宫、客寓天...', 0, 's1957796.jpg', NULL);
INSERT INTO `user_book`
VALUES (909, 0, 0, 'Sapiens', 'Yuval Noah Harari ', '8.9', 1371, ' Harvill Secker ', ' 2014-9-4 ', ' GBP 25.00',
        '100,000yearsago,atleastsixhumanspeciesinhabitedtheearth.Todaythere...', 0, 's25904521.jpg', NULL);
INSERT INTO `user_book`
VALUES (910, 0, 0, '洪业', '[美] 魏斐德 / 陈苏镇、薄小莹 ', '8.7', 1175, ' 江苏人民出版社 ', ' 1992 ', ' 14.90元',
        '本书选择了明清嬗代过程为论述对象，从政治、经济、文化、社会、民族诸多方面进行剖析，揭示帝国秩序崩解与重建的过程等。据美国加利福尼亚大学出版社1985年版译出...', 0, 's1132689.jpg', NULL);
INSERT INTO `user_book`
VALUES (911, 0, 0, '尘埃落定', '阿来 ', '8.9', 3008, ' 人民文学出版社 ', ' 2013-4 ', ' 38.00元',
        '一个声势显赫的康巴藏族土司，在酒后和汉族太太生了一个傻瓜儿子。这个人人都认定的傻子与现实生活格格不入，却有着超时代的预感和举止，成为土司制度兴衰的见证人。小...', 0, 's23286393.jpg', NULL);
INSERT INTO `user_book`
VALUES (912, 0, 0, '临高启明', '吹牛者 ', '8.7', 1130, ' 新知三联书店 ', ' 2017-1-3 ', ' 98.00元',
        '穿越到乱世不是被雷劈，是他们自己的选择。有人想称王制霸，有人想解民于倒悬，有人想以己之力，阻止最后一次野蛮对文明的征服，从而改写中华民族的历史。当然也有...', 0, 's26957420.jpg', NULL);
INSERT INTO `user_book`
VALUES (913, 0, 0, '罗马史', '[德] 特奥多尔·蒙森 / 李稼年 ', '8.4', 270, ' 商务印书馆 ', ' 2015-8 ', ' 398.00',
        '本书详尽叙述了自远古至共和国末期将近1000多年的罗马历史，阐述了罗马从偏于一隅的弹丸小国如何一步步成为地跨欧亚非三洲的国家的过程及其原因，并指出了罗马在日...', 0, 's26435504.jpg', NULL);
INSERT INTO `user_book`
VALUES (914, 0, 0, '从“异域”到“旧疆”', '温春来 ', '8.9', 37, ' 社会科学文献出版社 ', ' 2019-9 ', ' 78.80',
        '中国这样一个庞大的政治实体，无论在帝国时期还是在现代，都有很大的地区文化差异，并且经过了很多繁复的兴衰周期。它是怎样维系着人民共同的想象的呢？基于这个问题，...', 0, 's34431892.jpg', NULL);
INSERT INTO `user_book`
VALUES (915, 0, 0, '大博弈', '[英]彼得·霍普柯克 / 张望、岸青 ', '9.0', 370, ' 中国青年出版社 ', ' 2015-12 ', ' 72.00',
        '大英帝国和沙俄帝国的秘密战争，浪漫主义和英雄主义的不朽史诗大博弈开始，两大帝国相隔3000公里；大博弈结束，两国仅距30公里。但在中亚的土地上，在丝绸之...', 0, 's26702850.jpg', NULL);
INSERT INTO `user_book`
VALUES (916, 0, 0, '华夏边缘', '王明珂 ', '8.6', 697, ' 社会科学文献出版社 ', ' 2006-04-01 ', ' 35.00元',
        '本书运用“边缘研究”方法，对“华夏边缘”作了新的解读。作者认为，所谓“边缘研究”，就是“这种研究法将研究的重点由民族的内涵转移至民族的边缘”。并由此通过对“...', 0, 's1799788.jpg', NULL);
INSERT INTO `user_book`
VALUES (917, 0, 0, '非凡抄本寻访录', '[英]克里斯托弗·德·哈梅尔 / 林国荣 ', '9.1', 11, ' 社会科学文献出版社 ', ' 2020-4 ', ' 198.00元',
        '★2017年沃尔夫森历史奖★2016年达夫•库珀非虚构文学奖获奖作品★甲骨文X企鹅图书联合推出★通过伟大抄本领略千年欧洲史中不为人知的隐秘部分...', 0, 's30359550.jpg', NULL);
INSERT INTO `user_book`
VALUES (918, 0, 0, '执拗的低音', '王汎森 ', '8.8', 590, ' 生活·读书·新知三联书店 ', ' 2014-1 ', ' 32.00元',
        '王汎森编著的《执拗的低音--一些历史思考方式的反思(精)/复旦大学光华人文杰出学者讲座丛书》是“复旦大学：光华杰出人文学者系列讲座丛书”之一，以作者的讲演稿...', 0, 's25659944.jpg', NULL);
INSERT INTO `user_book`
VALUES (919, 0, 0, '赛雷三分钟漫画世界史', '赛雷', '7.3', 534, '湖南文艺出版社', '2019-7-29', '49.80',
        '【简介】爆笑三分钟，通晓一段历史。全网千万粉丝矩阵大号“赛雷三分钟”最新漫画历史作品。欧洲中世纪的人为何一年只洗一次澡？一纸禁酒令，怎么就让美国黑帮崛起？...', 0, 's33918451.jpg', 1);
INSERT INTO `user_book`
VALUES (920, 0, 0, '中国一九五七', '尤凤伟 ', '8.9', 432, ' 上海文艺出版社 ', ' 2001-1 ', ' 24.00元',
        '本书以罕见的真诚和气概对一九五七年“反右”事件进行了全面的诘问与描述，展现出一代知识分子无端遭劫，身陷囹圄，心灵经受阉割的苦难历程。作品以北京某大学的整风...', 0, 's1021677.jpg', NULL);
INSERT INTO `user_book`
VALUES (921, 0, 0, '北方以北', '[英] 埃莉诺 • 罗莎蒙德 • 巴勒克拉夫（Eleanor Rosamund Barraclough） / 梁卿 ', '8.1', 159, ' 低音 • 北京联合出版公司 ',
        ' 2019-10 ', ' 108.00', '★★★当代杰出人文性书评及文化杂志《泰晤士报文学增刊》年度图书“BBC新一代思想家”入选者亲身游历萨迦中北欧风起云涌的山河大地，揭开隐藏在北欧传奇故事中...', 0,
        's34446247.jpg', NULL);
INSERT INTO `user_book`
VALUES (922, 0, 0, '中国历史研究法', '钱穆 ', '8.4', 1944, ' 生活·读书·新知三联书店 ', ' 2005-3 ', ' 11.50',
        '本书由钱穆先生1961年在香港的8次演讲汇集而成，从通史和文化史的总题及政治史、社会史、经济史、学术史、历史人物、历史地理等6个分题言简意赅地论述了中国历史...', 0, 's1022938.jpg', NULL);
INSERT INTO `user_book`
VALUES (923, 0, 0, '陈寅恪的最后20年', '陆键东 ', '8.6', 1916, ' 生活·读书·新知三联书店 ', ' 2013-6 ', ' 42.00',
        '本书为陈寅恪先生后半生（1949-1969年）的传记。陈先生学贯中西，文史兼通，学术研究有很高的境界。他一生潜心学问，不求显达，深为国内外学人敬重。本书根...', 0, 's24748706.jpg', NULL);
INSERT INTO `user_book`
VALUES (924, 0, 0, '革命年代', '高华 ', '9.1', 247, ' 广西师范大学出版社 ', ' 2016-3-1 ', ' 98.00',
        '南京大学已故历史系教授高华先生国内第一部著作。在革命的背景下，在革命的名义下，历史风雷激荡、扑朔迷离。大量的第一手材料、历史大家的独特视角和通俗流畅的语言...', 0, 's26584021.jpg', NULL);
INSERT INTO `user_book`
VALUES (925, 0, 0, '清代地方政府', '瞿同祖 / 范忠信、何鹏、晏锋 ', '9.5', 323, ' 法律出版社 ', ' 2011-5 ', ' 34.00元',
        '本书是瞿同祖先生的代表作之一，是运用社会学的方法研究中国清代地方政府的实际构成及其实际运作模式的著作，也是第一本系统、深入研究清代地方政府的作品。作者通过各...', 0, 's6440640.jpg', NULL);
INSERT INTO `user_book`
VALUES (926, 0, 0, '五四的另一面', '杨念群 ', '8.2', 373, ' 上海人民出版社 ', ' 2019-4 ', ' 49.80元',
        '☆著名历史学家杨念群教授，《何处是“江南”？》之后，另辟新径之作——跨政治史、社会史、思想史、文化史等多元领域，融入对五四重要议题的全新思考，展现最为...', 0, 's32567709.jpg', NULL);
INSERT INTO `user_book`
VALUES (927, 0, 0, '陶庵梦忆', '张岱 / 栾保群 注解 ', '9.5', 559, ' 紫禁城出版社 ', ' 2011-9 ', ' 56.00元',
        '《陶庵梦忆》是记述关于明末散文家张岱所亲身经历过的杂事的著作，它详细描述了明代江浙地区的社会生活，如茶楼酒肆、说书演戏、斗鸡养鸟、放灯迎神以及山水风景、工艺...', 0, 's7057187.jpg', NULL);
INSERT INTO `user_book`
VALUES (928, 0, 0, '伟大的海', '[英]大卫‧阿布拉菲亚 / 徐家玲 ', '8.2', 263, ' 社会科学文献出版社 ', ' 2018-7 ', ' 168',
        '★第一部完整叙述地中海历史的著作；★布罗代尔《地中海史》之后最重要的一部地中海史作品；★作者被誉为“在世最伟大的地中海历史学者”。2011年《星期日泰...', 0, 's30259504.jpg', NULL);
INSERT INTO `user_book`
VALUES (929, 0, 0, '记忆之场', '[法] 皮埃尔·诺拉 主编 / 黄艳红 等 ', '9.1', 211, ' 南京大学出版社 ', ' 2015-8 ', ' 88.00元',
        '《记忆之场》（LesLieuxdeMémoire）是当代法国史学界最有影响的历史著作之一，汇总了法国集体记忆史研究成果。全书以诺拉所提出的“记忆之场”...', 0, 's26591593.jpg', NULL);
INSERT INTO `user_book`
VALUES (930, 0, 0, '雍正帝', '[日] 宫崎市定 / 孙晓莹 ', '7.7', 1457, ' 社会科学文献出版社 ', ' 2016-9 ', ' 48.00元',
        '《雍正帝》是宫崎市定精研《雍正朱批谕旨》的重要成果。本书分七章论述了雍正时期的若干关键问题，涉及康熙末年的储位之争及雍正帝即位后翦除异己问题、苏努教案与政教...', 0, 's26854269.jpg', NULL);
INSERT INTO `user_book`
VALUES (931, 0, 0, '汉帝国的建立与刘邦集团', '李开元 ', '8.3', 391, ' 生活·读书·新知三联书店 ', ' 2000 ', ' 16.80元',
        '编辑推荐：方法的明快考究和内容的丰富多彩，应是本书的特点。作者首先用详尽的考证，建立起立论的基础；又用精当的分析、洞察历史的幽隐；再用归纳抽象，建立新说新论...', 0, 's1559571.jpg', NULL);
INSERT INTO `user_book`
VALUES (932, 0, 0, '锌皮娃娃兵', 'S.A.阿列克谢耶维奇 / 高莽 / 九州出版社', '8.3', 3082, '铁葫芦图书 ', ' 2014-8-15 ', ' 36.80元',
        '1979年12月，苏军入侵阿富汗。很快，阿富汗各派游击队逐渐结成联盟，同入侵者和阿富汗政府军展开了游击战争。本书记录了阿富汗战争中苏联军官、士兵、护士、妻子...', 0, 's25940556.jpg', NULL);
INSERT INTO `user_book`
VALUES (933, 0, 0, '穿越非洲两百年', '郭建龙 ', '8.7', 29, ' 天地出版社 ', ' 2020-4 ', ' 88',
        '战争、贫困、腐败、疾病……非洲问题从何而来？熬过了混乱期的非洲，该如何摆脱殖民主义的梦魇，抓住发展的机遇？从合作伙伴到命运共同体，中国在非洲的发展过程中...', 0, 's34984904.jpg', NULL);
INSERT INTO `user_book`
VALUES (934, 0, 0, '拿破仑传', '[德] 埃米尔·路德维希 / 梁锡江、龚艳、周何法 ', '8.4', 1550, ' 浙江文艺出版社 ', ' 2008-1-1 ', ' 29.80元',
        '《拿破仑传》是享誉世界的德国传记大师埃米尔·路德维希的代表作，是拿破仑传记中的经典之作，也是迄今为止最权威、最全面的拿破仑生平传记。本书以时间为线索，以史实...', 0, 's2348135.jpg', NULL);
INSERT INTO `user_book`
VALUES (935, 0, 0, '日本書紀', '［日］舍人親王 ', '8.4', 68, ' 四川人民出版社 ', ' 2019-11 ', ' 99.00元',
        '★编辑推荐◎日本正史之首，国内首次引进《日本书纪》与《古事记》合称“记纪”，同为日本奈良时代早期成书、述及日本神话与历史的重要著作。《日本书纪》以汉文写...', 0, 's30401298.jpg', NULL);
INSERT INTO `user_book`
VALUES (936, 0, 0, '失去的胜利', '【德】 冯•埃里希•曼施泰因 / 戴耀先 ', '9.4', 230, ' 民主与建设出版社 ', ' 2015-9 ', ' 49.80元',
        '曼施泰因以他在第二次世界大战中的亲身经历为主线，根据其私人日记和其他资料，介绍了德国进行侵略战争的经过，尤其是详细地描述了他亲自指挥的几次重大作战行动，阐述...', 0, 's26600363.jpg', NULL);
INSERT INTO `user_book`
VALUES (937, 0, 0, '中国近百年政治史', '李剑农 ', '8.9', 422, ' 复旦大学出版社 ', ' 2002-9 ', ' 30.00元',
        '《中国近百年政治史》由作者的成名作《最近三十年中国政治史》及补写的篇章合刊于1942年。1946年至1947年，蓝田启明书局和上海商务印书馆先后出版了线装本...', 0, 's1437607.jpg', NULL);
INSERT INTO `user_book`
VALUES (938, 0, 0, '中国历史通论', '王家范 ', '9.0', 194, ' 生活·读书·新知三联书店 ', ' 2012-5-1 ', ' 59.00元',
        '通史的意境，全在通古今之变，历史由此才显示出它的节律脉动，是一个活泼泼跳动着的“集体生命体”，有它特殊的生命历程和内在的新陈代谢机制。本书以勾勒轮廓、阐释整...', 0, 's10769906.jpg', NULL);
INSERT INTO `user_book`
VALUES (939, 0, 0, '金瓯缺', '徐兴业 ', '8.4', 276, ' 河南文艺出版社 ', ' 2016-8 ', ' 188.00',
        '宋徽宗年间，在中国大地上，宋、辽、金各据一方。金国国力昌盛，辽国积弊重重，而北宋政府自澶渊之盟以来，以为天下太平，高枕无忧，终日歌舞升平，已是一派日暮景象。...', 0, 's26870873.jpg', NULL);
INSERT INTO `user_book`
VALUES (940, 0, 0, '考古的故事', '[美] 埃里克·H.克莱因 / 林华 ', '8.4', 475, ' 中信出版集团·新思文化 ', ' 2018-10-20 ', ' 82.00',
        '了解考古学、人类的历史与文明的经典入门书考古学界领军人物、“最受欢迎的考古学图书奖”得主倾力之作带你踏上考古环球旅行在密林中寻找巨大的玛雅遗址，穿过秘...', 0, 's30279065.jpg', NULL);
INSERT INTO `user_book`
VALUES (941, 0, 0, '左宗棠全传', '秦翰才 ', '9.6', 61, ' 中华书局 ', ' 2016-6-1 ', ' 68',
        '《左宗棠全传(上下)》前前后后写了十几年，四易其稿，*终写成于1949年初，是首部系统研究左宗棠的专著。为撰写《全传》，作者参考了大量历史资料和前人著作，引...', 0, 's26855019.jpg', NULL);
INSERT INTO `user_book`
VALUES (942, 0, 0, '耶路撒冷三千年（全新增订版）', '[英]西蒙·蒙蒂菲奥里 / 张倩红、马丹静 ', '8.2', 50, ' 湖南文艺出版社 ', ' 2019-11 ', ' 168.00元',
        '浦睿文化打造随身读概念阅读场景更随心“飞行本”系列轻装上市！五年热销，经典升级——全新校译新增作者写给中国读者的信30张彩色插图增补第54章...', 0, 's34873566.jpg', NULL);
INSERT INTO `user_book`
VALUES (943, 0, 0, '品三国', '易中天 ', '9.0', 515, ' 上海文艺出版社 ', ' 2018-1-20 ', ' 88.00元',
        '《品三国》是易中天对三国时期历史的讲述和评论。这是一个英雄辈出的时代，一段扑朔迷离的历史；更是一些引人入胜的故事，一个津津乐道的话题。正史记录，野史传说，...', 0, 's27666002.jpg', NULL);
INSERT INTO `user_book`
VALUES (944, 0, 0, '大中东行纪', '张信刚 ', '8.2', 1928, ' 广西师范大学出版社 ', ' 2017-2-1 ', ' 39.80元',
        '（1）真正博雅通识之人，打通文明的经络。葛兆光、张维迎、荣新江、杜维明、杨澜、鲁豫、梁文道等文史学者、文化名人赞叹推荐！（2）这本书就是一部精要的大中东文...', 0, 's6826619.jpg', NULL);
INSERT INTO `user_book`
VALUES (945, 0, 0, '广州贸易', '[美] 范岱克 / 江滢河、黄超 ', '8.2', 267, ' 社会科学文献出版社 ', ' 2018-4 ', ' 79.00',
        '清代的大部分时间，广州是中国对外贸易的唯一港口。本书利用极为丰富的多语种资料，重建了广州贸易在18~19世纪上半叶的日常运作。它采用自下而上的方法，通过专注...', 0, 's27667777.jpg', NULL);
INSERT INTO `user_book`
VALUES (946, 0, 0, '失焦', '[匈]罗伯特·卡帕 / 徐振锋 ', '9.0', 927, ' 广西师范大学出版社 ', ' 2017-10-1 ', ' 52.00',
        '•一部135相机下的二战史《失焦》中，卡帕回忆了1942年夏至1945年春他作为随军记者亲历的一系列重要战役——西西里战役、诺曼底登陆、解放巴黎、攻克柏林...', 0, 's27156016.jpg', NULL);
INSERT INTO `user_book`
VALUES (947, 0, 0, '富可敌国', '[美] 塞巴斯蒂安·马拉比 / 徐煦 ', '8.7', 1062, ' 中国人民大学出版社 ', ' 2011-1 ', ' 59.80元',
        '这是一部权威的对冲基金发展史，充满了对美国金融界人物戏剧性沉浮的引人入胜描述。在本书中，华尔街的生存之道、美国金融界的商业文化被演绎得出神入化。本书作者对...', 0, 's5914480.jpg', NULL);
INSERT INTO `user_book`
VALUES (948, 0, 0, '中国近代史（彩图增订本）', '蒋廷黻 / 徐卫东 编 ', '9.4', 280, ' 中华书局 ', ' 2016-3 ', ' 54',
        '近代史研究开山经典，权威校订版本首次问世《中国近代史》被誉为中国近代史研究的开山之作。全书从鸦片战争讲起，一直叙述到其时正在进行的抗日战争，将近百年的史事...', 1, 's26755822.jpg', NULL);
INSERT INTO `user_book`
VALUES (949, 0, 0, '在国家与社会之间', '刘志伟 ', '9.2', 221, ' 中国人民大学出版社 ', ' 2010-3 ', ' 35.00元',
        '本书从中国王朝时期户籍赋役制度在地方社会实施过程入手，尝试探索一种关于明清时期中国传统社会变迁和国家转型的解释路径。作者认为，户籍制度是中国王朝时期国家统治...', 0, 's4737019.jpg', NULL);
INSERT INTO `user_book`
VALUES (950, 0, 0, '大败局', '吴晓波 ', '8.3', 12445, ' 浙江人民出版社 ', ' 2001-01 ', ' 29.00元',
        '这是一本放在手上令人发烫的书！一个个国内著名得很很著名的企业，突然在它们“花样年华”的日子里突然灰飞烟灭，突然无声无息的倒下了！如同一个个鲜活的生命突然的枯...', 0, 's1072438.jpg', NULL);
INSERT INTO `user_book`
VALUES (951, 0, 0, '北上', '徐则臣 ', '7.6', 1064, ' 北京十月文艺出版社 ', ' 2018-12-1 ', ' 59.80元',
        '《北上》是著名作家徐则臣潜心四年创作完成的长篇新作。本书阔大开展，气韵沉雄，以历史与当下两条线索，讲述了发生在京杭大运河之上几个家族之间的百年“秘史”。公...', 0, 's30302906.jpg', NULL);
INSERT INTO `user_book`
VALUES (952, 0, 0, '毛泽东选集 第三卷', '毛泽东 ', '9.0', 1631, ' 人民出版社 ', ' 1991-6 ', ' 18.00元',
        '《毛泽东选集(第3卷)》包括了毛泽东同志在中国革命各个时期中的重要著作。几年前各地方曾经出过几种不同版本的《毛泽东选集》，都是没有经过著者审查的，体例颇为杂...', 2, 's1077621.jpg', NULL);
INSERT INTO `user_book`
VALUES (953, 0, 0, '通往权力之路', '[美]罗伯特·K.迈锡 / 徐海幈 ', '8.7', 421, ' 北京时代华文书局 ', ' 2014-5 ', ' 88.00元',
        '流行最广，好评最多——《纽约时报》畅销书，普利策奖获奖者作品，亚马逊网站持续热销。《华盛顿邮报》《新闻周刊》《洛杉矶时报》《波士顿寰球报》《纽约时报》《奥普...', 2, 's25853109.jpg', NULL);
INSERT INTO `user_book`
VALUES (954, 0, 0, '学术与政治', '[德]马克斯·韦伯 / 钱永祥 等 ', '9.4', 275, ' 上海三联书店 ', ' 2019-4 ', ' 62.00',
        '本书收录马克斯•韦伯脍炙人口的两篇演讲：《学术作为一种志业》和《政治作为一种志业》。这两次演讲作于D一次世界大战终战前后，昨日世界业已崩塌，新的社会及政治...', 1, 's30309618.jpg', NULL);
INSERT INTO `user_book`
VALUES (955, 0, 0, '邓小平传', '理查德·伊文思 (Richard Evans) / 田山 ', '7.8', 422, ' 国际文化出版公司 ', ' 2014-3 ', ' 69.80元',
        '《邓小平传》是西方邓小平研究专家、英国前驻华大使理查德•伊文思（RichardEvans）三十年心血之作。作者与邓小平多次面对面接触，独家掌握第一手材料，...', 1, 's25854660.jpg', NULL);
INSERT INTO `user_book`
VALUES (956, 0, 0, '浩荡两千年', '吴晓波 ', '8.6', 2506, ' 中信出版社 ', ' 2012-1 ', ' 45.00元',
        '《浩荡两千年:中国企业公元前7世纪-1869年》内容简介：中国的工商文明为什么早慧而晚熟？中国的商人阶层在社会进步中到底扮演了怎样的角色？中国的政商关系为何...', 7, 's6980818.jpg', NULL);
INSERT INTO `user_book`
VALUES (957, 0, 0, '历史研究（上下卷）', '[英]阿诺德·汤因比 等 / 郭小凌、王皖强 等 ', '9.1', 820, ' 上海人民出版社 ', ' 2010-01 ', ' 88.00元',
        '在本书中，汤因比列举了世界历史上的二十余种存活或已经死亡的文明形态，并对它们的各自发展作了综合比较，他认为，文化是通过对环境的“挑战”的应战所遭受的考验而产...', 21, 's4231732.jpg', NULL);
INSERT INTO `user_book`
VALUES (1011, 0, 1, '时间龙', '林燿德', '无', 0, '后浪丨四川文艺出版社', '2020-6', '无',
        '以“时间龙”这个欲望与毁灭的象征为题，种种既熟悉又陌生的人类社会终极样貌，在小说家冷硬色调、怀疑一切既有价值的笔下铺展开来，呈现了“一部化繁为简的世界史缩影”。', 0, 's34982185.jpg', NULL);
INSERT INTO `user_book`
VALUES (1012, 0, 1, '东京二十三区女子', '长江俊和', '无', 0, '新星出版社', '2020-5', '无',
        '自由撰稿人原田璃璃子逐个走访东京二十三个街区，寻找灵异故事和都市传说。这些传说似乎与发生在当地的命案有着千丝万缕的联系，而璃璃子也有自己的秘密。', 0, 's34996431.jpg', NULL);
INSERT INTO `user_book`
VALUES (1013, 0, 1, '暗室手册', '(美)耶日·科辛斯基(JerzyKosinski)', '无', 0, '上海人民出版社', '2020-4-20', '无',
        '这是一部由众多短小的故事片段构成的小说，揭示了外部环境对人的控制和异化，人与人之间危险而脆弱的关系。1969年美国国家图书奖获奖作品。', 0, 's34991772.jpg', NULL);
INSERT INTO `user_book`
VALUES (1014, 0, 1, '银河系边缘的小失常', '[以色列]埃特加·凯雷特', '无', 0, '浦睿文化·湖南文艺出版社', '2020-5', '无',
        '《突然，响起一阵敲门声》作者埃特加·凯雷特全新短篇小说集。他笔下的人物与之搏斗的，是父母和家庭、战争和游戏、烟酒和蛋糕、记忆和爱。', 0, 's35005062.jpg', NULL);
INSERT INTO `user_book`
VALUES (1015, 0, 1, '隐痛', '[法]伊内丝·巴亚尔', '无', 0, '南京大学出版社', '2020-5', '无',
        '一场突如其来的强暴令玛丽承受了巨大的身心苦痛，但她的家人朋友无一施以援手。她一次次尝试自救，却只是陷入更深的深渊，最终不得不以极端的方式“拯救”一家三口。', 0, 's34881136.jpg', NULL);
INSERT INTO `user_book`
VALUES (1016, 0, 1, '紫与黑', '[英]K.J.帕克', '无', 0, '四川科学技术出版社', '2020-4', '无',
        '收录了作者K.J.帕克的八篇中短篇奇幻小说。K.J.帕克迄今出版20余篇奇幻小说，多次获得世界奇幻奖。作品风格独树一帜，风趣幽默，深受读者喜爱。', 0, 's34841936.jpg', NULL);
INSERT INTO `user_book`
VALUES (1017, 0, 1, '战斗妖精·雪风 〈改〉', '[日]神林长平', '无', 0, '新星出版社', '2020-4', '无',
        '主人公深井零所代表的人类与异星体迦姆之间，战斗依旧持续，但神林赋予这部作品更多人类性与机械性两者关系的哲学思索。', 0, 's34857903.jpg', NULL);
INSERT INTO `user_book`
VALUES (1018, 0, 1, '六个道德故事', '[法]埃里克·侯麦', '无', 0, '雅众文化|北京联合出版公司', '2020-5', '无',
        '法国电影大师埃里克·侯麦的成名作。作品通过戏剧化的情节设计和文学性的对白，揶揄了知识分子在夸夸其谈和理性外表之下隐秘的情欲煎熬。', 3, 's34940772.jpg', NULL);
INSERT INTO `user_book`
VALUES (1019, 0, 1, '天路历程', '[英]约翰·班扬', '无', 0, '上海译文出版社', '2020-5', '无',
        '被称为西方最伟大的三部宗教题材文学名著之一，与但丁的《神曲》、斯宾塞的《仙后》并列为世界文学中三大讽喻体作品。', 0, 's34974561.jpg', NULL);
INSERT INTO `user_book`
VALUES (1020, 0, 1, '大月亮及其他', '陆源', '无', 0, '后浪丨四川文艺出版社', '2020-4', '无',
        '小说叙事绵密，旁征博引，调用智识和绚烂的言语展现一个个带有荒诞奇幻彩色的文本时空，犹如炽烈燃烧的青春花火，绽放于难行如棘的成长歧路。', 0, 's34971570.jpg', NULL);
INSERT INTO `user_book`
VALUES (1021, 0, 1, '民王', '[日]池井户润', '无', 0, '浙江人民出版社', '2020-5', '无',
        '政治家武藤泰山好不容易当上日本首相，却随即遭遇不明袭击，竟然和自己的笨蛋儿子互换了身体！当尔虞我诈的政坛混入一个笨蛋，谁能真正赢得民心？', 3, 's34952416.jpg', NULL);
INSERT INTO `user_book`
VALUES (1022, 0, 1, '我的同时代人的故事', '[俄]符拉季米尔·加拉克齐昂诺维奇·柯罗连科', '无', 0, '上海译文出版社', '2020-3', '无',
        '“俄罗斯的良心”柯罗连科的长篇自传小说。书中叙述了他的成长岁月和流放生活，即从19世纪50年代中叶到80年代中叶的情况。', 0, 's30282308.jpg', NULL);
INSERT INTO `user_book`
VALUES (1023, 0, 1, '烧纸', '[韩]李沧东', '无', 0, '武汉大学出版社', '2020-4', '无',
        '李沧东短篇小说集。以城市边缘人和小人物为关注点，聚焦于两类题材：韩战、光州事件等社会现实所造成的伤痛；韩国社会工业化发展中的社会问题。', 0, 's30441551.jpg', NULL);
INSERT INTO `user_book`
VALUES (1024, 0, 1, '假面的告白', '[日]三岛由纪夫', '无', 0, '北京十月文艺出版社', '2020-5', '无',
        '有一个东西，仅仅听到它的名字都会让我浑身颤抖，我一直欺骗自己说它不会来。那就是人类的“日常生活”。事实是，明天它就要不由分说地开始了。', 0, 's34924508.jpg', NULL);
INSERT INTO `user_book`
VALUES (1025, 0, 1, '刑警罗宋', '空城', '无', 0, '后浪丨江苏凤凰文艺出版社', '2020-5', '无',
        '罗宋这个人物深深扎根于本土语境，书中人物是残疾少年、留守儿童、空巢老人等。外面是现代中国式的破案故事，呈现的是现实生活里的悲剧。', 0, 's35025926.jpg', NULL);
INSERT INTO `user_book`
VALUES (1026, 0, 1, '一个知识女性的思考系列', '[英]蕾切尔·卡斯克', '无', 0, '中信出版集团', '2020-3', '无',
        '小说以第一人称讲述了三段生活中片段化的故事。文体别具一格，以对话串联，用冷静克制的语言揭露婚姻、家庭、情感的每一面，传达对生活的思考。', 0, 's34950849.jpg', NULL);
INSERT INTO `user_book`
VALUES (1027, 0, 1, '绝对不在场证明', '[日]大山诚一郎', '无', 0, '上海文艺出版社', '2020-5-10', '无',
        '本格推理大奖得主大山诚一郎的短篇小说集，包含七个短篇，几乎涵盖了所有不在场证明诡计类型。', 0, 's34998167.jpg', NULL);
INSERT INTO `user_book`
VALUES (1028, 0, 1, '盲人之歌', '[墨西哥]卡洛斯·富恩特斯', '无', 0, '上海译文出版社', '2020-4', '无',
        '墨西哥文学大师卡洛斯•富恩特斯作品集，由七篇充满魔幻色彩的奇妙故事构成。构思精巧，充满戏剧性，主人公的命运往往在结尾处陡然逆转。', 0, 's34889217.jpg', NULL);
INSERT INTO `user_book`
VALUES (1029, 0, 1, '八百万种死法', '[美]劳伦斯·布洛克', '无', 0, '江苏凤凰文艺出版社', '2020-4', '无',
        '纽约有八百万人，人们孤独成瘾，独自沉沦，然后在不知什么时候，死于八百万种死法之一。幸好，总还有一个人在意我们的一切。“我叫马特，我无话可说。”', 0, 's34995610.jpg', NULL);
INSERT INTO `user_book`
VALUES (1030, 0, 1, '寻欢作乐', '[英]W.萨默塞特·毛姆', '无', 0, '浙江文艺出版社', '2020-4-1', '无',
        '毛姆本人最得意的自传体小说。男主角以爱慕者的身份回忆了一个美丽女人的一生，尖刻地讽刺了当代潮流文学青年，揭开大作家德里菲尔德的另一面。', 0, 's33393075.jpg', NULL);
INSERT INTO `user_book`
VALUES (1031, 0, 1, '映画术', '[日]盐田明彦', '无', 0, '后浪丨贵州人民出版社', '2020-2-1', '无',
        '日本导演盐田明彦“以表演和导演的相遇为出发点，对电影进行再考察”，精选名场面拉片讲解，以奇妙独到的思路打通感官，抵达更高的美学境界。', 0, 's34896033.jpg', NULL);
INSERT INTO `user_book`
VALUES (1032, 0, 1, '阅读的故事', '唐诺', '无', 0, '理想国|九州出版社', '2020-4', '无',
        '专业读书人唐诺谈阅读的经典散文作品，一部诚恳实用的阅读辞海。以马尔克斯《迷宫中的将军》的片段开启每一章的话题，探讨书籍和阅读的本质困境与种种迷思。', 0, 's35005125.jpg', NULL);
INSERT INTO `user_book`
VALUES (1033, 0, 1, '伽达默尔传：理解的善良意志', '[加]让·格朗丹', '无', 0, '拜德雅|上海社会科学院出版社', '2020-4', '无',
        '伽达默尔是德国哲学家，哲学解释学集大成者。他于1960年出版的《真理与方法》一书标志着现代哲学解释学的诞生。这本传记的作者是伽达默尔最亲密的学生。', 0, 's34933772.jpg', NULL);
INSERT INTO `user_book`
VALUES (1034, 0, 1, '文明、现代化、价值投资与中国', '李录', '无', 0, '中信出版社', '2020-4', '无',
        '喜马拉雅资本创始人李录文集。上篇脱胎于“现代化十六讲”，作者提出了人类社会从1.0文明到3.0文明演化的思想。下篇收录了作者二十余年来的重要演讲、思考与书评。', 0, 's34997975.jpg', NULL);
INSERT INTO `user_book`
VALUES (1035, 0, 1, '核心社会学思想家（第3版）', '[英]罗布·斯通斯(RobStones)主编', '无', 0, '上海人民出版社', '2020-4', '无',
        '本书是一本经典的社会学理论读物，覆盖了西方社会学理论最前沿的发展，并对各位思想家开创的理论领域的前后发展都做了详细介绍。', 0, 's34988763.jpg', NULL);
INSERT INTO `user_book`
VALUES (1036, 0, 1, '史诗之城', '[美]库沙那瓦•乔杜里（KushanavaChoudhury）', '无', 0, '中国社会科学出版社', '2020-4', '无',
        '写给伟大城市加尔各答的一封优美、幽默、智慧的情书。从城中文化、音乐、电影、节庆到城里的人和美食……充斥着对它细腻的观察。', 0, 's34986545.jpg', NULL);
INSERT INTO `user_book`
VALUES (1037, 0, 1, '贝多芬传', '扬·斯瓦福德', '无', 0, '浙江大学出版社', '2020-2', '无',
        '是什么造就了《月光》，是什么造就了《悲怆》，是什么让人们看到贝多芬的名字，脑海中便响起一阵阵旋律，不论是是细腻优美的，还是振聋发聩的。', 0, 's34907856.jpg', NULL);
INSERT INTO `user_book`
VALUES (1038, 0, 1, '此时怀抱向谁开', '袁一丹', '无', 0, '上海文艺出版社', '2020-4', '无',
        '“此时怀抱向谁开”取自顾随之词，作于北平沦陷时期。借为书题，因本书多探求沦陷时代明暗之间的历史，微婉隐曲的表达，及历史中人欲言还止的心事。', 0, 's35000681.jpg', NULL);
INSERT INTO `user_book`
VALUES (1039, 0, 1, '大征服', '[英]休·肯尼迪', '无', 0, '后浪丨民主与建设出版社', '2020-3', '无',
        '伊斯兰教于7世纪初在阿拉伯半岛兴起之后，阿拉伯人只用了极短的时间，就席卷了中东，并打败了拜占庭帝国、波斯帝国等劲敌，改变了世界的格局。', 0, 's34870279.jpg', NULL);
INSERT INTO `user_book`
VALUES (1040, 0, 1, '第三帝国的兴亡', '(美)威廉·夏伊勒(WilliamL.Shirer)', '无', 0, '译林出版社', '2020-5', '无',
        '美国著名战地记者、历史学家威廉·夏伊勒富有盛名的代表作，自1960年出版以来，始终是读者获得史学通识教育、了解第三帝国历史的最佳读本。', 0, 's34907824.jpg', NULL);
INSERT INTO `user_book`
VALUES (1041, 0, 1, '生命是赌注', '（瑞典）本特·扬费尔德', '无', 0, '广西师范大学出版社', '2020-5', '无',
        '在这本马雅可夫斯基的权威传记中，扬菲尔德从围绕马雅可夫斯基的文学圈子着手，来展开对于马雅可夫斯基短暂一生的追述。', 0, 's34857278.jpg', NULL);
INSERT INTO `user_book`
VALUES (1042, 0, 1, '非凡抄本寻访录', '[英]克里斯托弗·德·哈梅尔', '无', 0, '社会科学文献出版社', '2020-4', '无',
        '伟大的抄本是欧洲文明和历史中隐秘的星。本书探访了十二份精美的欧洲中世纪泥金装饰手抄本，是一场深入中世纪社会的非凡旅行。', 0, 's30359550.jpg', NULL);
INSERT INTO `user_book`
VALUES (1043, 0, 1, '岛屿传说', '[英]马拉奇·泰莱克', '无', 0, '浦睿文化·湖南科学技术出版社', '2020-4', '无',
        '书中收集了世界各地二十四座不存在的岛屿的故事，这些岛先是被人发现，但后来又被证实根本不存在，有些出现在地图上长达上千年，最终又被抹去。', 0, 's35017571.jpg', NULL);
INSERT INTO `user_book`
VALUES (1044, 0, 1, '宫廷社会', '[德]诺贝特·埃利亚斯', '无', 0, '上海译文出版社', '2020-4', '无',
        '本书分析了法国旧制度时期宫廷社会在礼节、典仪、品味、服饰、习俗乃至谈吐方面的每个精心设计的细节，证明了这种宫廷生活形态是维持并控制贵族的一种手段。', 0, 's34969872.jpg', NULL);
INSERT INTO `user_book`
VALUES (1045, 0, 1, '混沌互渗', '[法]菲利克斯·加塔利', '无', 0, '南京大学出版社', '2020-2', '无',
        '何谓主体性生产？什么是战争机器、欲望机器、抽象机器？怎样理解精神分裂分析？作为审美范式发生源的“混沌互渗”如何运作？在本书中，加塔利一一回答了这些问题。', 0, 's34897216.jpg', NULL);
INSERT INTO `user_book`
VALUES (1046, 0, 1, '唐人如何吟诗', '[日]大岛正二', '无', 0, '江苏人民出版社', '2020-4-1', '无',
        '在诗歌最鼎盛的唐朝，人们是如何吟咏李白杜甫等的诗歌的呢？本书以复原长安诗人杜牧《江南春》的发音过程为例，对如何复原当时的发音进行了详细说明。', 0, 's34951591.jpg', NULL);
INSERT INTO `user_book`
VALUES (1047, 0, 1, '当代历史哲学和史学理论', '王晴佳', '无', 0, '社会科学文献出版社', '2020-4', '无',
        '自20世纪60年代以来到今天，当代史学在观念、方法和研究范围上出现了一系列显著的变化。本书从“人物、派别、焦点”三方面入手，描述、分析和讨论这些变化。', 0, 's35016469.jpg', NULL);
INSERT INTO `user_book`
VALUES (1048, 0, 1, '东言西语', '郑子宁', '无', 0, '敦煌文艺出版社', '2020-4', '无',
        '本书以一种深入浅出的方式，化门槛与难度极高、向来被目为“绝学”的方言学与历史语言学为近50个精彩绝伦的故事，为我们在语言中找到了一个全新的中国。', 0, 's34945889.jpg', NULL);
INSERT INTO `user_book`
VALUES (1049, 0, 1, '演化之旅', '[美]罗伯特·克拉克', '无', 0, '后浪丨四川美术出版社', '2020-5', '无',
        '本书由摄影师罗伯特·克拉克的200多张图像和科普作者大卫·奎曼、约瑟夫·华莱士的科普文字共同构成，记录一场亿万年以来有关生物演化的神奇之旅。', 0, 's35016532.jpg', NULL);
INSERT INTO `user_book`
VALUES (1050, 0, 1, '现代拉丁美洲文学', '[美]罗伯托·冈萨雷斯·埃切维里亚', '无', 0, '译林出版社', '2020-3', '无',
        '本书展开了一系列广泛的文学主题，探讨了从18世纪晚期论至现今的拉丁美洲文学，让我们看到是什么样的文学传统催生了拉丁美洲文学大爆炸。', 0, 's34937420.jpg', NULL);
INSERT INTO `user_book`
VALUES (1051, 0, 0, '活着', '余华 ', '9.4', 486355, ' 作家出版社 ', ' 2012-8-1 ', ' 20.00元',
        '《活着(新版)》讲述了农村人福贵悲惨的人生遭遇。福贵本是个阔少爷，可他嗜赌如命，终于赌光了家业，一贫如洗。他的父亲被他活活气死，母亲则在穷困中患了重病，福贵...', 2, 's4913064.jpg', NULL);
INSERT INTO `user_book`
VALUES (1052, 0, 0, '白夜行', '[日] 东野圭吾 / 刘姿君 ', '9.1', 264022, ' 南海出版公司 ', ' 2013-1-1 ', ' 39.50元',
        '东野圭吾万千书迷心中的无冕之王周刊文春推理小说年度BEST10第1名本格推理小说年度BEST10第2名《白夜行》是东野圭吾迄今口碑最好的长篇杰作，具备...', 0, 's10554308.jpg', NULL);
INSERT INTO `user_book`
VALUES (1053, 0, 0, '房思琪的初恋乐园', '林奕含 ', '9.2', 187276, ' 北京联合出版公司 ', ' 2018-1 ', ' 45.00元',
        '令人心碎却无能为力的真实故事。向死而生的文学绝唱打动万千读者的年度华语小说。李银河戴锦华骆以军张悦然冯唐詹宏志蒋方舟史航等多位学者作...', 0, 's27614904.jpg', NULL);
INSERT INTO `user_book`
VALUES (1054, 0, 0, '解忧杂货店', '[日] 东野圭吾 / 李盈春 ', '8.5', 637143, ' 南海出版公司 ', ' 2014-5 ', ' 39.50元',
        '现代人内心流失的东西，这家杂货店能帮你找回——僻静的街道旁有一家杂货店，只要写下烦恼投进卷帘门的投信口，第二天就会在店后的牛奶箱里得到回答。因男友身患绝...', 2, 's25862578.jpg', NULL);
INSERT INTO `user_book`
VALUES (1055, 0, 0, '红楼梦', '[清] 曹雪芹 著、高鹗 续 ', '9.6', 287109, ' 人民文学出版社 ', ' 1996-12 ', ' 59.70元',
        '《红楼梦》是一部百科全书式的长篇小说。以宝黛爱情悲剧为主线，以四大家族的荣辱兴衰为背景，描绘出18世纪中国封建社会的方方面面，以及封建专制下新兴资本主义民主...', 0, 's1007305.jpg', NULL);
INSERT INTO `user_book`
VALUES (1056, 0, 0, '追风筝的人', '[美] 卡勒德·胡赛尼 / 李继宏 ', '8.9', 642200, ' 上海人民出版社 ', ' 2006-5 ', ' 29.00元',
        '12岁的阿富汗富家少爷阿米尔与仆人哈桑情同手足。然而，在一场风筝比赛后，发生了一件悲惨不堪的事，阿米尔为自己的懦弱感到自责和痛苦，逼走了哈桑，不久，自己也跟...', 22, 's1770782.jpg', NULL);
INSERT INTO `user_book`
VALUES (1057, 0, 0, '百年孤独', '[哥伦比亚] 加西亚·马尔克斯 / 范晔 ', '9.2', 290416, ' 南海出版公司 ', ' 2011-6 ', ' 39.50元',
        '《百年孤独》是魔幻现实主义文学的代表作，描写了布恩迪亚家族七代人的传奇故事，以及加勒比海沿岸小镇马孔多的百年兴衰，反映了拉丁美洲一个世纪以来风云变幻的历史。...', 0, 's6082808.jpg', NULL);
INSERT INTO `user_book`
VALUES (1058, 0, 0, '小王子', '[法] 圣埃克苏佩里 / 马振聘 ', '9.0', 570068, ' 人民文学出版社 ', ' 2003-8 ', ' 22.00元',
        '小王子是一个超凡脱俗的仙童，他住在一颗只比他大一丁点儿的小行星上。陪伴他的是一朵他非常喜爱的小玫瑰花。但玫瑰花的虚荣心伤害了小王子对她的感情。小王子告别小行...', 1, 's1084336.jpg', NULL);
INSERT INTO `user_book`
VALUES (1059, 0, 0, '围城', '钱锺书 ', '8.9', 369152, ' 人民文学出版社 ', ' 1991-2 ', ' 19.00',
        '《围城》是钱钟书所著的长篇小说。第一版于1947年由上海晨光出版公司出版。1949年之后，由于政治等方面的原因，本书长期无法在中国大陆和台湾重印，仅在香港出...', 0, 's1008145.jpg', NULL);
INSERT INTO `user_book`
VALUES (1060, 0, 0, '平凡的世界（全三部）', '路遥 ', '9.0', 248386, ' 人民文学出版社 ', ' 2005-1 ', ' 64.00元',
        '《平凡的世界》是一部现实主义小说，也是一部小说形式的家族史。作者浓缩了中国西北农村的历史变迁过程，在小说中全景式地表现了中国当代城乡的社会生活。在近十年的广...', 0, 's1200840.jpg', NULL);
INSERT INTO `user_book`
VALUES (1061, 0, 0, '嫌疑人X的献身', '[日] 东野圭吾 / 刘子倩 ', '8.9', 406953, ' 南海出版公司 ', ' 2008-9 ', ' 28.00',
        '百年一遇的数学天才石神，每天唯一的乐趣，便是去固定的便当店买午餐，只为看一眼在便当店做事的邻居靖子。靖子与女儿相依为命，失手杀了前来纠缠的前夫。石神提出由...', 0, 's3211779.jpg', NULL);
INSERT INTO `user_book`
VALUES (1062, 0, 0, '霍乱时期的爱情', '[哥伦比亚] 加西亚·马尔克斯 / 杨玲 ', '9.0', 181393, ' 南海出版公司 ', ' 2012-9-1 ', ' 39.50元',
        '★马尔克斯唯一正式授权，首次完整翻译★《霍乱时期的爱情》是我最好的作品，是我发自内心的创作。——加西亚•马尔克斯★这部光芒闪耀、令人心碎的作品是人类有史...', 0, 's10594787.jpg', NULL);
INSERT INTO `user_book`
VALUES (1063, 0, 0, '1984', '[英] 乔治·奥威尔 / 刘绍铭 ', '9.3', 144858, ' 北京十月文艺出版社 ', ' 2010-4-1 ', ' 28.00',
        '★村上春树以《1Q84》向本书致敬★著名学者刘绍铭经典译本内地首次出版★62种文字风靡110个国家，全球销量超过5000万册★《时代周刊》“最好的10...', 0, 's4820710.jpg', NULL);
INSERT INTO `user_book`
VALUES (1064, 0, 0, '飘', '[美国] 玛格丽特·米切尔 / 李美华 ', '9.3', 156283, ' 译林出版社 ', ' 2000-9 ', ' 40.00元',
        '小说中的故事发生在1861年美国南北战争前夕。生活在南方的少女郝思嘉从小深受南方文化传统的熏陶，可在她的血液里却流淌着野性的叛逆因素。随着战火的蔓廷和生活环...', 0, 's1068920.jpg', NULL);
INSERT INTO `user_book`
VALUES (1065, 0, 0, '月亮与六便士', '[英] 威廉·萨默塞特·毛姆 / 徐淳刚 ', '8.8', 146679, ' 浙江文艺出版社 ', ' 2017-1-1 ', ' 39.80元',
        '“满地都是六便士，他却抬头看见了月亮。”银行家查尔斯，人到中年，事业有成，为了追求内心隐秘的绘画梦想，突然抛妻别子，弃家出走。他深知：人的每一种身份都是一...', 0, 's26954760.jpg', NULL);
INSERT INTO `user_book`
VALUES (1066, 0, 0, '局外人', '[法] 阿尔贝·加缪 / 柳鸣九 ', '9.0', 126134, ' 上海译文出版社 ', ' 2010-8 ', ' 22.00元',
        '《局外人》是加缪小说的成名作和代表作之一，堪称20世纪整个西方文坛最具有划时代意义最著名小说之一，“局外人”也由此成为整个西方文学-哲学中最经典的人物形象和...', 0, 's4908885.jpg', NULL);
INSERT INTO `user_book`
VALUES (1067, 0, 0, '三体', '刘慈欣 ', '8.8', 372519, ' 重庆出版社 ', ' 2008-1 ', ' 23.00',
        '文化大革命如火如荼进行的同时。军方探寻外星文明的绝秘计划“红岸工程”取得了突破性进展。但在按下发射键的那一刻，历经劫难的叶文洁没有意识到，她彻底改变了人类的...', 0, 's2567698.jpg', NULL);
INSERT INTO `user_book`
VALUES (1068, 0, 0, '三体全集', '刘慈欣 ', '9.4', 46050, ' 重庆出版社 ', ' 2012-1-1 ', ' 168.00元',
        '三体三部曲(《三体》《三体Ⅱ·黑暗森林》《三体Ⅲ·死神永生》)，原名“地球往事三部曲”，是中国著名科幻作家刘慈欣的首个长篇系列，由科幻世界杂志社策划制作...', 0, 's6518605.jpg', NULL);
INSERT INTO `user_book`
VALUES (1069, 0, 0, '骆驼祥子', '老舍 ', '8.4', 149910, ' 人民文学出版社 ', ' 2000-3-1 ', ' 12.00',
        '《骆驼祥子》是老舍用同情的笔触描绘的一幕悲剧：二十年代的北京，一个勤劳、壮实的底层社会小人物怀着发家、奋斗的美好梦想，却最终为黑暗的暴风雨所吞噬。它揭示了当...', 0, 's1043815.jpg', NULL);
INSERT INTO `user_book`
VALUES (1070, 0, 0, '月亮和六便士', '[英] 毛姆 / 傅惟慈 ', '9.0', 131684, ' 上海译文出版社 ', ' 2006-8 ', ' 15.00元',
        '一个英国证券交易所的经纪人，本已有牢靠的职业和地位、美满的家庭，但却迷恋上绘画，像“被魔鬼附了体”，突然弃家出走，到巴黎去追求绘画的理想。他的行径没有人能够...', 0, 's1858513.jpg', NULL);
INSERT INTO `user_book`
VALUES (1071, 0, 0, '杀死一只知更鸟', '[美] 哈珀·李 / 高红梅 ', '9.2', 74828, ' 译林出版社 ', ' 2012-9 ', ' 32.00元',
        '成长总是个让人烦恼的命题。成长有时会很缓慢，如小溪般唱着叮咚的歌曲趟过，有时却如此突如其来，如暴雨般劈头盖脸……三个孩子因为小镇上的几桩冤案经历了猝不及防的...', 0, 's6781808.jpg', NULL);
INSERT INTO `user_book`
VALUES (1072, 0, 0, '明朝那些事儿（1-9）', '当年明月 ', '9.1', 85018, ' 中国海关出版社 ', ' 2009-4 ', ' 358.20元',
        '《明朝那些事儿》讲述从1344年到1644年，明朝三百年间的历史。作品以史料为基础，以年代和具体人物为主线，运用小说的笔法，对明朝十七帝和其他王公权贵和小人...', 0, 's3674537.jpg', NULL);
INSERT INTO `user_book`
VALUES (1073, 0, 0, '三国演义（全二册）', '[明] 罗贯中 ', '9.3', 120271, ' 人民文学出版社 ', ' 1998-05 ', ' 39.50元',
        '《三国演义》又名《三国志演义》、《三国志通俗演义》，是我国小说史上最著名最杰出的长篇章回体历史小说。《三国演义》的作者是元末明初人罗贯中，由毛纶，毛宗岗父...', 0, 's1019568.jpg', NULL);
INSERT INTO `user_book`
VALUES (1074, 0, 0, '傲慢与偏见', '[英] 奥斯丁 / 张玲、张扬 ', '8.9', 184772, ' 人民文学出版社 ', ' 1993-7 ', ' 13.00元',
        '《傲慢与偏见》是简·奥斯汀的代表作，是一部描写爱情与婚姻的经典小说。作品以男女主人公达西和伊丽莎白由于傲慢和偏见而产生的爱情纠葛为线索，共写了四起姻缘：伊丽...', 0, 's1083428.jpg', NULL);
INSERT INTO `user_book`
VALUES (1075, 0, 0, '边城', '沈从文、黄永玉 卓雅 插图. ', '8.7', 177041, ' 北岳文艺出版社 ', ' 2002-4 ', ' 12.00元',
        '《边城》是沈从文的代表作，写于一九三三年至一九三四年初。这篇作品如沈从文的其他湘西作品，着眼于普通人、善良人的命运变迁，描摹了湘女翠翠阴差阳错的生活悲剧，诚...', 0, 's1057244.jpg', NULL);
INSERT INTO `user_book`
VALUES (1076, 0, 0, '人生海海', '麦家 ', '8.1', 30051, ' 北京十月文艺出版社 ', ' 2019-4 ', ' 55.00元',
        '“他是全村最出奇古怪的人，古怪的名目要扳着指头一个一个数：第一，他当过国民党军队的上校，是革命群众要斗争的对象。但大家一边斗争他，一边又巴结讨好他，家里出...', 0, 's30475767.jpg', NULL);
INSERT INTO `user_book`
VALUES (1077, 0, 0, '82年生的金智英', '[韩]赵南柱 / 尹嘉玄 ', '7.9', 48628, ' 贵州人民出版社 ', ' 2019-9 ', ' 45.00元',
        '一个女孩要经历多少看不见的坎坷，才能跌跌撞撞地长大成人。亚洲10年来罕见的现象级畅销书，凭口口相传在韩国销量突破100万册。韩国书店联合会评选2017年...', 0, 's34434309.jpg', NULL);
INSERT INTO `user_book`
VALUES (1078, 0, 0, '许三观卖血记', '余华 ', '8.8', 189059, ' 南海出版公司 ', ' 1998-9 ', ' 16.80元',
        '《许三观卖血记》是余华1995年创作的一部长篇小说，它以博大的温情描绘了磨难中的人生，以激烈的故事形式表达了人在面对厄运时求生的欲望。小说讲述了许三观靠着卖...', 0, 's1029791.jpg', NULL);
INSERT INTO `user_book`
VALUES (1079, 0, 0, '城南旧事', '林海音 文、关维兴 图 ', '9.0', 98393, ' 中国青年出版社 ', ' 2003-7 ', ' 16.00元',
        '多少年来，《城南旧事》感动了一代又一代的读者，除了再版无数次的小说版外，1985年，本书在中国大陆搬上银幕，电影“城南旧事”获得“中国电影金鸡奖”、第二届“...', 0, 's1254588.jpg', NULL);
INSERT INTO `user_book`
VALUES (1080, 0, 0, '云边有个小卖部', '张嘉佳 ', '7.7', 25666, ' 湖南文艺出版社 ', ' 2018-7 ', ' 42.00元',
        '云边镇少年刘十三的成长故事。刘十三自幼与开小卖部的外婆相依为命，努力读书为了离开小镇，追寻远方与梦想。在城市里碰壁受挫的刘十三回到了小镇，与少时玩伴程霜重...', 0, 's30254298.jpg', NULL);
INSERT INTO `user_book`
VALUES (1081, 0, 0, '白鹿原', '陈忠实 ', '9.2', 43177, ' 人民文学出版社 ', ' 2012-9 ', ' 39.00元',
        '在从清末民初到建国之初的半个世纪里，一阵阵狂风掠过了白鹿原上空，而每一次的变动都震荡着它的内在结构：打乱了再恢复，恢复了再打乱，细腻地反映出白姓和鹿姓两大家...', 0, 's10564071.jpg', NULL);
INSERT INTO `user_book`
VALUES (1082, 0, 0, '挪威的森林', '[日] 村上春树 / 林少华 ', '8.5', 98939, ' 上海译文出版社 ', ' 2007-7 ', ' 23.00元',
        '这是一部动人心弦的、平缓舒雅的、略带感伤的恋爱小说。小说主人公渡边以第一人称展开他同两个女孩间的爱情纠葛。渡边的第一个恋人直子原是他高中要好同学木月的女友，...', 0, 's2159042.jpg', NULL);
INSERT INTO `user_book`
VALUES (1083, 0, 0, '许三观卖血记', '余华 ', '9.0', 45706, ' 作家出版社 ', ' 2012-9 ', ' 24.00元',
        '《许三观卖血记》是余华1995年创作的一部长篇小说。《许三观卖血记》以博大的温情描绘了磨难中的人生，以激烈的故事形式表达了人在面对厄运时求生的欲望。小说讲述...', 0, 's4760224.jpg', NULL);
INSERT INTO `user_book`
VALUES (1084, 0, 0, '动物农场', '[英] 乔治·奥威尔 / 荣如德 ', '9.2', 89006, ' 上海译文出版社 ', ' 2007-3 ', ' 10.00元',
        '《动物农场》是奥威尔最优秀的作品之一，是一则入木三分的反乌托的政治讽喻寓言。农场的一群动物成功地进行了一场“革命”，将压榨他们的人类东家赶出农场，建立起一...', 0, 's2035179.jpg', NULL);
INSERT INTO `user_book`
VALUES (1085, 0, 0, '平凡的世界', '路遥 ', '9.0', 41207, ' 北京出版集团公司,北京十月文艺出版社 ', ' 2012-3-1 ', ' CNY 79.80',
        '《平凡的世界(套装共3册)》是一部现实主义小说，也是小说化的家族史。作家高度浓缩了中国西北农村的历史变迁过程，作品达到了思想性与艺术性的高度统一，特别是主人...', 0, 's10517238.jpg', NULL);
INSERT INTO `user_book`
VALUES (1086, 0, 0, '恶意', '[日] 东野圭吾 / 娄美莲 ', '8.4', 192972, ' 南海出版公司 ', ' 2009-6 ', ' 18.00',
        '畅销书作家在出国的前一晚于家中被杀。凶手很快落网，对罪行供认不讳、但求速死，却对作案动机语焉不详。他当真是罪犯？他究竟为何杀人？在彻查被害人与凶手的过去...', 0, 's3646172.jpg', NULL);
INSERT INTO `user_book`
VALUES (1087, 0, 0, '人间失格', '太宰治 / 许时嘉 ', '8.3', 187331, ' 吉林出版集团有限责任公司 ', ' 2009-9 ', ' 16.00元',
        '第一次，我喝酒喝得如此失态。悠悠醒来时，枕头边坐着常子。我躺在那位于本所工匠店二楼的房间里。“财尽情亦绝，你说这句话时我还以为是开玩笑，你是认真的？难怪...', 0, 's4011670.jpg', NULL);
INSERT INTO `user_book`
VALUES (1088, 0, 0, '生吞', '郑执 ', '8.2', 14507, ' 浙江文艺出版社 ', ' 2017-11-1 ', ' 39.00',
        '现象级悬疑力作，悬疑文学榜年度黑马作品；张一白、史航、那多、关晓彤联名推荐！数度脱销，重磅再版！睽违数年，郑执重操长篇。构思两年半，以现实大案为背景，推理...', 0, 's27170951.jpg', NULL);
INSERT INTO `user_book`
VALUES (1089, 0, 0, '呐喊', '鲁迅 ', '8.9', 88905, ' 人民文学出版社 ', ' 1973年3月 ', ' 0.36元',
        '《呐喊》收录作者1918年至1922年所作小说十四篇。1923年8月由北京新潮社出版，原收十五篇，列为该社《文艺丛书》之一。1924年5月第三次印刷时起，改...', 0, 's1449351.jpg', NULL);
INSERT INTO `user_book`
VALUES (1090, 0, 0, '我的天才女友', '[意] 埃莱娜·费兰特 / 陈英 ', '8.5', 57025, ' 人民文学出版社 ', ' 2017-1 ', ' 42.00元',
        '只有你身为女人才会知道这些丑陋的秘密两个女人，50年的友谊和战争过去五年，几乎所有欧美读者都在谈论她、全球畅销百万册被翻译成40种语言《金融时报》...', 0, 's26878124.jpg', NULL);
INSERT INTO `user_book`
VALUES (1091, 0, 0, '鼠疫', '(法)阿尔贝·加缪 / 刘方 ', '9.1', 21191, ' 上海译文出版社 ', ' 2013-8 ', ' 34.00元',
        '阿尔贝•加缪（1913—1960）是法国声名卓著的小说家、散文家和剧作家，“存在主义”文学的大师。1957年因“热情而冷静地阐明了当代向人类良知提出的种种问...', 0, 's24257229.jpg', NULL);
INSERT INTO `user_book`
VALUES (1092, 0, 0, '简爱（英文全本）', '[英] 夏洛蒂·勃朗特 ', '8.5', 185798, ' 世界图书出版公司 ', ' 2003-11 ', ' 18.00元',
        '《简爱》是英国女作家夏洛蒂·勃朗特的代表作品。女主人公简爱是一个追赶求平等与自主的知识女性形象，小说以其感人的对于一位“灰姑娘式”人物奋斗史的刻划取胜，《简...', 0, 's1141406.jpg', NULL);
INSERT INTO `user_book`
VALUES (1093, 0, 0, '老人与海', '海明威 / 吴劳 ', '8.4', 154043, ' 上海译文出版社 ', ' 1999-10 ', ' 8.20元',
        '本书讲述了一个渔夫的故事。古巴老渔夫圣地亚哥在连续八十四天没捕到鱼的情况下，终于独自钓上了一条大马林鱼，但这鱼实在大，把他的小船在海上拖了三天才筋疲力尽，被...', 0, 's1064275.jpg', NULL);
INSERT INTO `user_book`
VALUES (1094, 0, 0, '基督山伯爵', '大仲马 / 周克希、韩沪麟 ', '9.0', 99394, ' 上海译文出版社 ', ' 1991-12-1 ', ' 43.90元',
        '小说以法国波旁王朝和七月王朝两大时期为背景，描写了一个报恩复仇的故事。法老号大副唐泰斯受船长的临终嘱托，为拿破仑送了一封信，受到两个对他嫉妒的小人的陷害，被...', 0, 's1085860.jpg', NULL);
INSERT INTO `user_book`
VALUES (1095, 0, 0, '福尔摩斯探案全集（上中下）', '[英] 阿·柯南道尔 / 丁钟华 等 / 群众出版社 ', '9.2', 90822, ' 1981-8 ', ' 53.00元', '68.00元',
        '最经典的群众出版社的翻译版本，一经出版，立即风靡成千上万的中国人。离奇的情节，扣人的悬念，世界上最聪明的侦探，人间最诡秘的案情，福尔摩斯不但让罪犯无处藏身，...', 0, 's1040211.jpg', NULL);
INSERT INTO `user_book`
VALUES (1096, 0, 0, '天龙八部', '金庸 ', '9.1', 101494, ' 生活.读书.新知三联书店 ', ' 1994-5 ', ' 96.0',
        '天龙八部乃金笔下的一部长篇小说，与《射雕》，《神雕》等几部长篇小说一起被称为可读性最高的金庸小说。《天龙》的故事情节曲折，内容丰富，也曾多次被改编为电视作...', 0, 's1255625.jpg', NULL);
INSERT INTO `user_book`
VALUES (1097, 0, 0, '无声告白', '[美] 伍绮诗 / 孙璐 ', '8.2', 115011, ' 江苏凤凰文艺出版社 ', ' 2015-7 ', ' 35.00元',
        '我们终此一生，就是要摆脱他人的期待，找到真正的自己。——————————莉迪亚死了，可他们还不知道。莉迪亚是家中老二，李先生和李太太的掌上明珠，她遗传...', 0, 's26382433.jpg', NULL);
INSERT INTO `user_book`
VALUES (1098, 0, 0, '你当像鸟飞往你的山', '[美] 塔拉·韦斯特弗 / 任爱红 ', '8.9', 56198, ' 南海出版公司 ', ' 2019-10-20 ', ' 59.00元',
        '★奇迹！一部新人处女作，上市第一周即登上《纽约时报》畅销榜，至今已累计80周，仍高居Top1，全美销量破百万册，作者因此书被《时代周刊》评为“年度影响力人...', 0, 's33440205.jpg', NULL);
INSERT INTO `user_book`
VALUES (1099, 0, 0, '围城', '钱钟书 ', '9.3', 50615, ' 人民文学出版社 ', ' 1991-2-1 ', ' 39.00元',
        '《围城》是一幅栩栩如生的世井百态图，人生的酸甜苦辣千般滋味均在其中得到了淋漓尽致的体现。钱钟书先生将自己的语言天才并入极其渊博的知识，再添加上一些讽刺主义的...', 0, 's11524204.jpg', NULL);
INSERT INTO `user_book`
VALUES (1100, 0, 0, '呼吸', '[美] 特德·姜 / 耿辉、Ent、李克勤、姚向辉 ', '8.6', 13246, ' 译林出版社 ', ' 2019-12 ', ' 42',
        '特德·姜作品新结集，内藏《商人和炼金术师之门》《呼吸》《前路迢迢》《软件体的生命周期》《达西的新型自动机器保姆》《双面真相》《大寂静》《脐》《焦虑是自由引起...', 0, 's34672176.jpg', NULL);
INSERT INTO `user_book`
VALUES (1101, 0, 0, '岛上书店', '[美] 加布瑞埃拉·泽文 / 孙仲旭、李玉瑶 ', '7.6', 119565, ' 江苏凤凰文艺出版社 ', ' 2015-5-1 ', ' CNY 35.00',
        '每个人的生命中，都有最艰难的那一年，将人生变得美好而辽阔。---------------------A．J．费克里，人近中年，在一座与世隔绝的小岛上，...', 0, 's26340138.jpg', NULL);
INSERT INTO `user_book`
VALUES (1102, 0, 0, '白夜行', '[日] 东野圭吾 / 刘姿君 ', '9.1', 458034, ' 南海出版公司 ', ' 2008-9 ', ' 29.80元',
        '“只希望能手牵手在太阳下散步”，这个象征故事内核的绝望念想，有如一个美丽的幌子，随着无数凌乱、压抑、悲凉的故事片段像纪录片一样一一还原：没有痴痴相思，没有海...', 5, 's3259440.jpg', NULL);
INSERT INTO `user_book`
VALUES (1103, 0, 0, '山茶文具店', '[日] 小川糸 / 王蕴洁 ', '8.3', 18698, ' 湖南文艺出版社 ', ' 2018-3 ', ' 49.80',
        '★日本全国700多家书店店员投票选出的最想卖的书！2016、2017连续两年获日本“书店大奖”重推！★日本畅销作家小川糸备受好评暖心之作。16封手写书信...', 0, 's28656614.jpg', NULL);
INSERT INTO `user_book`
VALUES (1104, 0, 0, '牧羊少年奇幻之旅', '[巴西] 保罗·柯艾略 / 丁文林 ', '8.5', 119199, ' 南海出版公司 ', ' 2009-3-1 ', ' 25.00元',
        '牧羊少年圣地亚哥接连两次做了同一个梦，梦见埃及金字塔附近藏有一批宝藏。少年卖掉羊群，历尽千辛万苦一路向南，跨海来到非洲，穿越“死亡之海”撒哈拉大沙漠……期间...', 0, 's3608208.jpg', NULL);
INSERT INTO `user_book`
VALUES (1105, 0, 0, '默读', 'Priest ', '8.4', 30402, ' 百花洲文艺出版社 ', ' 2018-1 ', ' 45.00',
        '童年，成长经历，家庭背景，社会关系，创伤……我们不断追溯与求索犯罪者的动机，探寻其中最幽微的喜怒哀乐，不是为了设身处地地同情、乃至于原谅他们，不是为了给罪...', 0, 's27608412.jpg', NULL);
INSERT INTO `user_book`
VALUES (1106, 0, 0, '肖申克的救赎', '[美] 斯蒂芬·金 / 施寄青、赵永芬、齐若兰 ', '9.1', 84197, ' 人民文学出版社 ', ' 2006-7 ', ' 29.90元',
        '这本书收入斯蒂芬·金的四部中篇小说，是他作品中的杰出代表作。其英文版一经推出，即登上《纽约时报》畅销书排行榜的冠军之位，当年在美国狂销二十八万册。目前，这本...', 0, 's1829226.jpg', NULL);
INSERT INTO `user_book`
VALUES (1107, 0, 0, '新名字的故事', '[意] 埃莱娜·费兰特 / 陈英 ', '9.0', 44396, ' 人民文学出版社 ', ' 2017-4 ', ' 59.00元',
        '只有你身为女人才会知道这些丑陋的秘密两个女人50年的友谊和战争如何成为那个更强大的她，又不被她战胜那不勒斯四部曲NO.2《我的天才女友》后续，...', 0, 's26986954.jpg', NULL);
INSERT INTO `user_book`
VALUES (1108, 0, 0, '窗边的小豆豆', '[日] 黑柳彻子 著、岩崎千弘 图 / 赵玉皎 ', '8.7', 156842, ' 南海出版公司 ', ' 2003-1 ', ' 20.00元',
        '《窗边的小豆豆》讲述了作者上小学时的一段真实的故事。作者因淘气被原学校退学后，来到巴学园。在小林校长的爱护和引导下，让一般人眼里“怪怪”的小豆豆逐渐成了一个...', 0, 's1007914.jpg', NULL);
INSERT INTO `user_book`
VALUES (1109, 0, 0, '一个陌生女人的来信', '[奥] 斯台芬·茨威格 / 张玉书 ', '8.7', 105645, ' 上海译文出版社 ', ' 2007-7 ', ' 20.00元',
        '这是一部短篇小说集，除《一个陌生女人的来信》，亦按时间顺序收录了《火烧火燎的秘密》、《马来狂人》等名篇，作者的创作历程一目了然。《一个陌生女人的来信》讲述...', 0, 's2154960.jpg', NULL);
INSERT INTO `user_book`
VALUES (1110, 0, 0, '失踪的孩子', '[意] 埃莱娜·费兰特 / 陈英 ', '9.1', 34517, ' 人民文学出版社 ', ' 2018-7 ', ' 62.00元',
        '“我的整个生命，只是一场为了提升社会地位的低俗斗争。”全球畅销近千万册被翻译成40多种语言《我的天才女友》《新名字的故事》《离开的，留下的》——那不勒...', 0, 's30172069.jpg', NULL);
INSERT INTO `user_book`
VALUES (1111, 0, 0, '三体Ⅱ', '刘慈欣 ', '9.3', 220983, ' 重庆出版社 ', ' 2008-5 ', ' 32.00',
        '三体人在利用魔法般的科技锁死了地球人的科学之后，庞大的宇宙舰队杀气腾腾地直扑太阳系，意欲清除地球文明。面对前所未有的危局，经历过无数磨难的地球人组建起同样...', 0, 's3066477.jpg', NULL);
INSERT INTO `user_book`
VALUES (1112, 0, 0, '穆斯林的葬礼', '霍达 ', '8.1', 144074, ' 北京十月文艺出版社 ', ' 1988-12-1 ', ' 32.00',
        '一个穆斯林家族，六十年间的兴衰，三代人命运的沉浮，两个发生在不同时代、有着不同内容却又交错扭结的爱情悲剧。这部五十余万字的长篇，以独特的视角，真挚的情感，...', 0, 's1082334.jpg', NULL);
INSERT INTO `user_book`
VALUES (1113, 0, 0, '撒野', '巫哲 ', '8.7', 22858, ' 北京联合出版公司 ', ' 2018-10 ', ' 45.00元',
        '我想，左肩有你，右肩微笑。我想，在你眼里，撒野奔跑，我想，一个眼神，就到老。重点学校的优等生蒋丞被寄养家庭“流放”到亲生父亲所在的钢厂，陌生的环境、粗...', 0, 's30336340.jpg', NULL);
INSERT INTO `user_book`
VALUES (1114, 0, 0, '云游', '[波兰] 奥尔加·托卡尔丘克 / 于是 ', '8.8', 2375, ' 四川人民出版社 ', ' 2020-1 ', ' 55.00元',
        '新晋诺贝文学奖得主托卡尔丘克长篇力作2008年尼刻奖、2018年布克国际奖获奖作品移动是神圣的，不要停下！116个片段组接为漫漫旅途如粒子穿行在世...', 0, 's34889883.jpg', NULL);
INSERT INTO `user_book`
VALUES (1115, 0, 0, '海底两万里', '[法国] 儒尔·凡尔纳 / 沈国华、钱培鑫、曹德明 ', '8.5', 79222, ' 译林出版社 ', ' 2002-9 ', ' 19.50元',
        '本书是法国举世闻名的科幻小说作家儒尔·凡尔纳的代表作之一。作者让读者登上“鹦鹉螺号”，以平均十二公里的时速，在将近十个月的海底旅行中，随着尼摩船长和他的“...', 0, 's1085470.jpg', NULL);
INSERT INTO `user_book`
VALUES (1116, 0, 0, '刀锋', '[英]毛姆 / 周煦良 ', '9.0', 54150, ' 上海译文出版社 ', ' 2007-3 ', ' 18.00元',
        '威廉·萨默塞特·毛姆（1874-1965），英国著名小说家、戏剧家。《刀锋》是他的主要作品之一。小说写一个参加第一次世界大战的美国青年飞行员拉里·达雷尔。...', 0, 's2035162.jpg', NULL);
INSERT INTO `user_book`
VALUES (1117, 0, 0, '三体Ⅲ', '刘慈欣 ', '9.2', 213571, ' 重庆出版社 ', ' 2010-11 ', ' 38.00元',
        '与三体文明的战争使人类第一次看到了宇宙黑暗的真相，地球文明像一个恐惧的孩子，熄灭了寻友的篝火，在暗夜中发抖。自以为历经沧桑，其实刚刚蹒跚学步；自以为悟出了生...', 0, 's5363767.jpg', NULL);
INSERT INTO `user_book`
VALUES (1118, 0, 0, '人生', '路遥 ', '8.4', 50770, ' 北京十月文艺出版社 ', ' 2009-5 ', ' 20.00元',
        '《人生》是路遥的一部中篇小说，发表于1982年，它以改革时期陕北高原的城乡生活为时空背景，叙述了高中毕业生高加林回到土地又离开土地，再回到土地这样人生的变化...', 0, 's3803820.jpg', NULL);
INSERT INTO `user_book`
VALUES (1119, 0, 0, '离开的，留下的', '[意] 埃莱娜·费兰特 / 陈英 ', '8.7', 33397, ' 人民文学出版社 ', ' 2017-10 ', ' 62.00',
        '两个女人50年的友谊和战争那不勒斯四部曲NO.3全球畅销近千万册被翻译成40多种语言“我希望她在场，这是我写作的目的。”《我的天才女友》《新名字...', 0, 's27104959.jpg', NULL);
INSERT INTO `user_book`
VALUES (1120, 0, 0, '西游记（全二册）', '吴承恩 / 黄肃秋 注释 ', '8.9', 57764, ' 人民文学出版社 ', ' 2004-8 ', ' 47.20元',
        '《西游记》主要描写的是孙悟空保唐僧西天取经，历经九九八十一难的故事。唐僧取经是历史上一件真实的事。大约距今一千三百多年前，即唐太宗贞观元年（627），年仅2...', 0, 's1029553.jpg', NULL);
INSERT INTO `user_book`
VALUES (1121, 0, 0, '鬓边不是海棠红', '水如天儿 ', '8.3', 2387, ' 中国致公出版社 ', ' 2019-12 ', ' 68.00元',
        '一九三三年的北平，是全中国最热闹的地方。这热闹和别处不同，不是灯红酒绿，十里洋场，而是一种瑰丽的嘈杂，昆曲京戏，梆子乱弹，秦腔大鼓，快板评书，任何你能想象的...', 0, 's34921004.jpg', NULL);
INSERT INTO `user_book`
VALUES (1122, 0, 0, '偷影子的人', '(法)马克·李维 / 段韵灵 ', '7.7', 86705, ' 湖南文艺出版社 ', ' 2012-6-20 ', ' 29.80元',
        '一个老是受班上同学欺负的瘦弱小男孩，因为拥有一种特殊能力而强大：他能“偷别人的影子”，因而能看见他人心事，听见人们心中不愿意说出口的秘密。他开始成为需要帮助...', 0, 's10763902.jpg', NULL);
INSERT INTO `user_book`
VALUES (1123, 0, 0, '魔道祖師 一', '墨香铜臭 ', '7.9', 25484, ' 平心工作室 ', ' 2016-12-8 ', ' NT330元',
        '墨香銅臭年度最具話題性的超強人氣之作！額外收錄繁體版獨家番外重生於世的一代魔頭，非但沒有再掀腥風血雨，竟還和正派人士一起調查疑案，鏟妖除魔？！更驚人...', 0, 's26924196.jpg', NULL);
INSERT INTO `user_book`
VALUES (1124, 0, 0, '黄金时代', '王小波 ', '8.9', 122701, ' 花城出版社 ', ' 1999-3 ', ' 19.00元',
        '《黄金时代》是《时代三部曲》之一。这是以文革时期为背景的系列作品构成的长篇。发生“文化大革命”的二十世纪六七十年代，正是我们国家和民族的灾难年代。那时，...', 0, 's1089243.jpg', NULL);
INSERT INTO `user_book`
VALUES (1125, 0, 0, '笑傲江湖（全四册）', '金庸 ', '9.0', 87485, ' 生活·读书·新知三联书店 ', ' 1994-5 ', ' 76.80元',
        '《笑傲江湖》是金庸1967年写的一部武侠小说，属于金庸的后期作品。', 0, 's1002299.jpg', NULL);
INSERT INTO `user_book`
VALUES (1126, 0, 0, '失明症漫记', '(葡)若泽·萨拉马戈 / 范维信 ', '9.1', 11750, ' 南海出版公司 ', ' 2014-2 ', ' 29.50',
        '你为什么会写这样一部冷酷的作品？虽然我活得很好，但这个世界却不好。----------------------------------------诺贝...', 0, 's20428302.jpg', NULL);
INSERT INTO `user_book`
VALUES (1127, 0, 0, '我不喜欢人类，我想住进森林', '[挪威] 阿澜·卢 / 宁蒙 ', '7.4', 1270, ' 四川文艺出版社 ', ' 2020-2 ', ' 48',
        '逃避不可耻还很有用北欧头号畅销小说《我是个年轻人，我心情不太好》第二季我是自行车手。我是丈夫、父亲、儿子和员工。还是房产所有者。以及一堆其他身份。...', 0, 's34869425.jpg', NULL);
INSERT INTO `user_book`
VALUES (1128, 0, 0, '挪威的森林', '[日] 村上春树 / 林少华 ', '8.0', 317070, ' 上海译文出版社 ', ' 2001-2 ', ' 18.80元',
        '这是一部动人心弦的、平缓舒雅的、略带感伤的恋爱小说。小说主人公渡边以第一人称展开他同两个女孩间的爱情纠葛。渡边的第一个恋人直子原是他高中要好同学木月的女友，...', 0, 's1046265.jpg', NULL);
INSERT INTO `user_book`
VALUES (1129, 0, 0, '鲁滨逊漂流记', '[英] 笛福 / 马静 ', '8.1', 152452, ' 广西民族出版社 ', ' 2002-1 ', ' 9.20元',
        '《鲁滨逊飘流记》是18世纪英国作家达尼尔·笛福的代表作品，也是一部具有广泛的世界性影响的作品。小说以1704年一名苏格兰水手亚历山大·薛里基洛克航海遇险，...', 0, 's1016003.jpg', NULL);
INSERT INTO `user_book`
VALUES (1130, 0, 0, '哈利·波特与魔法石', '[英] J. K. 罗琳 / 苏农 ', '9.1', 170169, ' 人民文学出版社 ', ' 2000-9 ', ' 19.50元',
        '一岁的哈利・波特失去父母后，神秘地出现在姨父姨妈家的门前。哈利在姨父家饱受欺凌，度过十年极其痛苦的日子。姨父和姨妈好似凶神恶煞，他们那混世魔王儿子达力――一...', 0, 's1041007.jpg', NULL);
INSERT INTO `user_book`
VALUES (1131, 0, 0, '寂寞的游戏', '袁哲生 ', '8.4', 11335, ' 北京联合出版公司 ', ' 2017-9 ', ' 38.00元',
        '☆新京报·腾讯2017年度十大好书☆豆瓣2017年度读书榜单中国文学（小说类）TOP1☆第一届做書奖年度原创小说用纯真的双眼捕捉孤独的...', 0, 's27104286.jpg', NULL);
INSERT INTO `user_book`
VALUES (1132, 0, 0, '无人生还', '[英] 阿加莎・克里斯蒂 / 祁阿红 ', '8.9', 97184, ' 人民文学出版社 ', ' 2008-3 ', ' 19.00',
        '十个互不相识的人，被富有的欧文先生邀请到了印地安岛上的私人别墅里。晚餐后，一个神秘的声音揭开了人们心中所各自隐藏着的可怕秘密。当天晚上，年轻的马斯顿先生离奇...', 0, 's3006581.jpg', NULL);
INSERT INTO `user_book`
VALUES (1133, 0, 0, '哈利•波特', 'J.K.罗琳 (J.K.Rowling) ', '9.7', 19562, ' 人民文学出版社 ', ' 2008-12-1 ', ' 498.00元',
        '《哈利·波特(共7册)(精)》编著者J.K.罗琳。《哈利·波特(共7册)(精)》内容提要：2000年的一个深夜，在美国书店的烛光中，穿着黑斗篷，戴...', 0, 's24531956.jpg', NULL);
INSERT INTO `user_book`
VALUES (1134, 0, 0, '巨人的陨落', '[英] 肯·福莱特 / 于大卫 ', '8.9', 65692, ' 江苏凤凰文艺出版社 ', ' 2016-5-1 ', ' 129.80元',
        '在第一次世界大战的硝烟中，每一个迈向死亡的生命都在热烈地生长——威尔士的矿工少年、刚失恋的美国法律系大学生、穷困潦倒的俄国兄弟、富有英俊的英格兰伯爵，以及痴...', 0, 's26698660.jpg', NULL);
INSERT INTO `user_book`
VALUES (1135, 0, 0, '摆渡人', '[英]克莱儿·麦克福尔 / 付强 ', '6.2', 81396, ' 百花洲文艺出版社 ', ' 2015-6-1 ', ' 36.00',
        '单亲女孩迪伦，15岁的世界一片狼藉：与母亲总是无话可说，在学校里经常受到同学的捉弄，唯一谈得来的好友也因为转学离开了。这一切都让迪兰感到无比痛苦。她决定去...', 0, 's26356948.jpg', NULL);
INSERT INTO `user_book`
VALUES (1136, 0, 0, '东方快车谋杀案', '[英] 阿加莎·克里斯蒂 / 陈尧光 ', '9.0', 95049, ' 人民文学出版社 ', ' 2006-5 ', ' 18.00元',
        '午夜过后，一场大雪迫使东方快车停了下来。这辆豪华列车整年都处于满员状态。但那天早上却发现少了一名乘客。一个美国人死在了他的包厢里，他被刺了十二刀，可他包厢的...', 0, 's1827374.jpg', NULL);
INSERT INTO `user_book`
VALUES (1137, 0, 0, '烧纸', '[韩] 李沧东 / 金冉 ', '9.0', 710, ' 武汉大学出版社 ', ' 2020-5 ', ' 58.00',
        '♦韩国电影大师、作家型导演李沧东小说代表作。♦心怀悲悯的现实主义写作，李沧东的一切电影创作的源头。♦琐碎的生活暗藏汹涌洪流，直指生命深处的被掩藏、遗忘的...', 0, 's30441551.jpg', NULL);
INSERT INTO `user_book`
VALUES (1138, 0, 0, '最好的我们', '八月长安 ', '8.7', 55386, ' 湖南文艺出版社 ', ' 2013-8-5 ', ' 55',
        '你总是说青春从不曾永远，而那时候的我们，就是最好的我们。这一次，我们和整个青春做告别。八月长安全新力作。你还记得高中时的同桌吗？那个少年有世界上最明朗...', 0, 's24754316.jpg', NULL);
INSERT INTO `user_book`
VALUES (1139, 0, 0, '何以笙箫默', '顾漫 ', '7.8', 137546, ' 朝华出版社 ', ' 2007-4 ', ' 15.00元',
        '一段年少时的爱恋，牵出一生的纠缠。大学时代的赵默笙阳光灿烂，对法学系大才子何以琛一见倾心，开朗直率的她拔足倒追，终于使才气出众的他为她停留驻足。然而，不善表...', 0, 's1461903.jpg', NULL);
INSERT INTO `user_book`
VALUES (1140, 0, 0, '七个疯子', '[阿根廷] 罗伯特·阿尔特 / 欧阳石晓 ', '9.2', 525, ' 四川文艺出版社 ', ' 2020-4 ', ' 59.80',
        '◎“是我想太多，还是这世界太疯狂？”◎毒丽场域疯子们的“蛮荒故事”，纳粹等现代性之殇的神奇预言◎“阿根廷的陀思妥耶夫斯基”，拉美现代小说之父，罗伯...', 0, 's34912805.jpg', NULL);
INSERT INTO `user_book`
VALUES (1141, 0, 0, '伪装学渣', '木瓜黄 ', '6.7', 5144, ' 北京时代华文书局 ', ' 2019-6 ', ' 39.80元',
        '小说讲述了分班后，两位风靡校园的“问题少年”不止分进一个班还成为同桌的故事。他们明明是学霸却要装学渣，浑身都是戏，考试要争倒数第一，表面上天天玩游戏，实际上...', 0, 's34429608.jpg', NULL);
INSERT INTO `user_book`
VALUES (1142, 0, 0, '生活与命运', '[俄罗斯] 瓦西里·格罗斯曼 / 力冈 ', '9.4', 581, ' 理想国丨四川人民出版社 ', ' 2020-2 ', ' 149.00元',
        '1960年，瓦西里•格罗斯曼（Васи́лийГро́ссман，1905—1964）完成长篇历史小说《生活与命运》。苏联当局负责意识形态的苏斯洛夫称此书...', 0, 's34928037.jpg', NULL);
INSERT INTO `user_book`
VALUES (1143, 0, 0, '八百万种死法', '[美] 劳伦斯·布洛克 / 姚向辉 ', '8.0', 871, ' 江苏凤凰文艺出版社 ', ' 2020-4 ', ' 49.90元',
        '◆30年来，梁朝伟做梦都想演《八百万种死法》！◆梁朝伟飞越半个地球，只为见作者一面；4次恳求合作，只为演本书主角。《八百万种死法》太懂梁朝伟的孤独！◆梁...', 0, 's34995610.jpg', NULL);
INSERT INTO `user_book`
VALUES (1144, 0, 0, '盗墓笔记', '南派三叔 ', '8.3', 159500, ' 中国友谊出版公司 ', ' 2007-1 ', ' 26.80元',
        '五十年前，一群长沙土夫子（盗墓贼）挖到一部战国帛书，残篇中记载了一座奇特的战国古墓的位置，但那群土夫子在地下碰上了诡异事件，几乎全部身亡。五十年后，其中一...', 0, 's1948901.jpg', NULL);
INSERT INTO `user_book`
VALUES (1145, 0, 0, '射雕英雄传（全四册）', '金庸 ', '9.0', 63831, ' 生活·读书·新知三联书店 ', ' 1999-04 ', ' 47.00元',
        '《射雕英雄传》是金庸的代表作之一，作于一九五七年到一九五九年，在《香港商报》连载。《射雕》中的人物个性单纯，郭靖诚朴厚重、黄蓉机智狡狯，读者容易印象深刻。这...', 0, 's1044547.jpg', NULL);
INSERT INTO `user_book`
VALUES (1146, 0, 0, '坡道上的家', '[日] 角田光代 / 杨明绮 ', '8.3', 3883, ' 浙江人民出版社 ', ' 2020-1 ', ' 48',
        '新手妈妈里沙子，被选为了一名陪审员，接受审判的是一名杀害幼女的“恶母”。随着庭审的深入，里沙子却发现被告和自己是如此相似……为了育儿放弃职业生涯，却因此失...', 0, 's34911983.jpg', NULL);
INSERT INTO `user_book`
VALUES (1147, 0, 0, '恶意', '[日] 东野圭吾 / 娄美莲 ', '8.7', 35200, ' 南海出版公司 ', ' 2016-11-1 ', ' 39.50元',
        '《恶意》是东野圭吾挑战写作极限的长篇杰作，与《白夜行》《嫌疑人X的献身》《解忧杂货店》并称东野圭吾四大杰作。《恶意》深刻揭示人性，故事中无边的恶意深不见底，...', 0, 's26877752.jpg', NULL);
INSERT INTO `user_book`
VALUES (1148, 0, 0, '沉默的巡游', '[日] 东野圭吾 / 边大玉 ', '7.3', 9207, ' 南海出版公司 ', ' 2020-3 ', ' 59.00',
        '★东野圭吾全新长篇小说，简体中文版首次出版《白夜行》《嫌疑人X的献身》《放学后》《新参者》后，第5次夺得周刊文春推理榜年度第1名！★东野圭吾：《沉默的巡游...', 0, 's34786086.jpg', NULL);
INSERT INTO `user_book`
VALUES (1149, 0, 0, '灿烂千阳', '[美] 卡勒德·胡赛尼 / 李继宏 ', '8.8', 90496, ' 上海人民出版社 ', ' 2007-9 ', ' 28.00元',
        '私生女玛丽雅姆在父亲的宅院门口苦苦守候，回到家却看到因绝望而上吊自杀的母亲。那天是她十五岁的生日，而童年嘎然而止。玛丽雅姆随后由父亲安排远嫁喀布尔四十多岁的...', 0, 's2143732.jpg', NULL);
INSERT INTO `user_book`
VALUES (1150, 0, 0, '那不勒斯故事四部曲', '', '9.2', 9684, '艾琳娜.斐蘭德 ', ' 李靜宜 ', ' 大塊文化',
        '艾琳娜與莉拉出生在二次戰後的那不勒斯貧窮郊區，兩人的友誼從六歲時交換娃娃開始，充滿活力的莉拉有時走在前頭，帶著艾琳娜去冒險；個性內斂的艾琳娜則加倍努力，讓自...', 0, 's27204805.jpg', NULL);
INSERT INTO `user_book`
VALUES (1151, 0, 0, '皮囊', '蔡崇达 ', '7.6', 84943, ' 天津人民出版社 ', ' 2014-12-1 ', ' 39.80元',
        '一部有着小说阅读质感的散文集，也是一本“认心又认人”的书。作者蔡崇达，本着对故乡亲人的情感，用一种客观、细致、冷静的方式，讲述了一系列刻在骨肉间故事。一个...', 0, 's26278687.jpg', NULL);
INSERT INTO `user_book`
VALUES (1152, 0, 0, '呼兰河传', '萧红 ', '8.9', 53793, ' 百花文艺出版社 ', ' 2005-01 ', ' 19.00', '', 0, 's1060852.jpg', NULL);
INSERT INTO `user_book`
VALUES (1153, 0, 0, '孤城闭', '米兰Lady ', '8.7', 5044, ' 新世界出版社 ', ' 2009-09-11 ', ' 24.80元',
        '这个故事与爱情及艺术相关，但又不局限于此，从内宫到朝野，形形色色的人物曾经各有高远的愿望或雄心，又各自在岁月中蹉跎困顿。所有这一切，都和仁宗朝的政治棋局相关...', 0, 's4041998.jpg', NULL);
INSERT INTO `user_book`
VALUES (1154, 0, 0, '美丽新世界', '[英] 赫胥黎 / 陈超 ', '9.1', 9937, ' 上海译文出版社 ', ' 2017-6 ', ' 45.00元',
        '出版于一九三二年的《美丽新世界》是奥尔德斯•赫胥黎最杰出的代表作，是二十世纪最著名的反乌托邦文学经典之一，与奥威尔的《一九八四》、扎米亚京的《我们》并称为“...', 0, 's27002046.jpg', NULL);
INSERT INTO `user_book`
VALUES (1155, 0, 0, '斯通纳', '[美] 约翰·威廉斯 / 杨向荣 ', '8.8', 32782, ' 上海人民出版社 ', ' 2016-1 ', ' 39.00元',
        '《斯通纳》讲述了生命中最重要的部分：爱，认同，怜悯，志业，傲骨，信任与死亡。一个勇者有过的失败不失意的人生：即使不能拥有完美的生活，所幸追求过完整的自我。...', 0, 's26425831.jpg', NULL);
INSERT INTO `user_book`
VALUES (1156, 0, 0, '遥远的救世主', '豆豆 ', '8.7', 13894, ' 作家出版社 ', ' 2005-05-01 ', ' 28.00',
        '这是一部可以傲然独尊的长篇小说。也是一部可遇不可求的完美佳作。豆豆，以她的才华，探索一个有机的、无定形的、陌生的、暧昧的和未曾臻达的世界。男女主人公那浓墨...', 0, 's1322455.jpg', NULL);
INSERT INTO `user_book`
VALUES (1157, 0, 0, '呼啸山庄', '（英）勃朗特、张玲、张扬 / 张扬、张玲 ', '8.4', 102217, ' 人民文学出版社 ', ' 1999-01-01 ', ' 27.30元',
        '夏洛蒂和传记作者告诉我们，爱米丽生性独立、豁达、纯真、刚毅、热情而又内向。她颇有男儿气概，酷爱自己生长其间的荒原，平素在离群索居中，除去手足情谊，最喜与大自...', 0, 's1119522.jpg', NULL);
INSERT INTO `user_book`
VALUES (1158, 0, 0, '简爱', '[英] 夏洛蒂·勃朗特 / 宋兆霖 ', '8.6', 20561, ' 上海文艺出版社 ', ' 2007-8-1 ', ' 27.00元',
        '《简爱》讲述了这样一个故事：简•爱自幼父母双亡，投靠冷酷的舅母，但舅母无情地抛弃了她。她在一所慈善学校做了六年的学生和两年的教师。十八岁时，简•爱受聘到桑菲...', 0, 's2253379.jpg', NULL);
INSERT INTO `user_book`
VALUES (1159, 0, 0, '神雕侠侣', '金庸 / 有1996年11月北平第4次印本 ', '8.9', 79488, ' 生活·读书·新知三联书店 ', ' 1994-5 ', ' 76.80元',
        '《神雕侠侣》是金庸作品集之一。其主人公杨过自然而然地走上了非正统的人生道路，入了“道流”。其特点是“至情至性，实现自我”，即把个人的利益、情感、个性及人格尊...', 0, 's1255624.jpg', NULL);
INSERT INTO `user_book`
VALUES (1160, 0, 0, '繁花', '金宇澄 ', '8.7', 19211, ' 上海文艺出版社 ', ' 2013-3 ', ' 48.00元',
        '这是一部地域小说，人物的行走，可找到“有形”地图的对应。这也是一部记忆小说，六十年代的少年旧梦，辐射广泛，处处人间烟火的斑斓记忆，九十年代的声色犬马，是一场...', 0, 's22714154.jpg', NULL);
INSERT INTO `user_book`
VALUES (1161, 0, 0, '一个叫欧维的男人决定去死', '[瑞典] 弗雷德里克·巴克曼 / 宁蒙 ', '9.0', 33769, ' 四川文艺出版社 ', ' 2015-12 ', ' 35.00元',
        '来认识一下欧维，这个59岁的老头，脾气古怪，带着坚不可摧的原则、每天恪守的常规以及随时发飙的脾性在社区晃来晃去，被背地里称为“地狱来的恶邻”。他每天一大早就...', 0, 's26672693.jpg', NULL);
INSERT INTO `user_book`
VALUES (1162, 0, 0, '有匪（全集）', 'Priest ', '8.6', 11415, ' 湖南文艺出版社 ', ' 2017-10 ', ' 140.00元',
        '豆瓣年度读书榜单推荐作品大神级作家Priest古言小说扛鼎之作二十年前，“南刀”李徽奉旨为匪，建蜀山四十八寨，收天下落魄之人。二十年后，一位自称谢允的...', 0, 's27198567.jpg', NULL);
INSERT INTO `user_book`
VALUES (1163, 0, 0, '盗墓笔记', '南派三叔 ', '8.5', 26250, ' 上海文化出版社 ', ' 2011-9 ', ' 295.20', '', 0, 's6953273.jpg', NULL);
INSERT INTO `user_book`
VALUES (1164, 0, 0, '狼图腾', '姜戎 ', '8.2', 145660, ' 长江文艺出版社 ', ' 2004-4 ', ' 32.00元',
        '《狼图腾》由几十个有机连贯的“狼故事”组成，情节紧张激烈而又新奇神秘。读者可从书中每一篇章、每个细节中攫取强烈的阅读快感，令人欲罢不能。那些精灵一般的蒙古草...', 0, 's1022060.jpg', NULL);
INSERT INTO `user_book`
VALUES (1165, 0, 0, '了不起的盖茨比', '[美] 斯科特·菲茨杰拉德 / 邓若虚 ', '8.7', 23571, ' 南海出版公司 ', ' 2012-5 ', ' 25.00元',
        '★20世纪全球百部英语小说第2名★村上春树最爱的书★村上春树万字长文导读★全新译本完美呈现原著魅力★如果没有与《了不起的盖茨比》相遇，我写...', 0, 's10738023.jpg', NULL);
INSERT INTO `user_book`
VALUES (1166, 0, 0, '半生缘', '张爱玲 ', '8.6', 69218, ' 北京十月文艺出版社 ', ' 2006-12 ', ' 28.00元',
        '他和曼桢认识，已经是多年前的事了。算起来倒已经有十四年了——真吓人一跳！马上使他连带地觉得自己已老了许多。日子过得真快，尤其对于中年以后的人，十年八年都好像...', 0, 's1963684.jpg', NULL);
INSERT INTO `user_book`
VALUES (1167, 0, 0, '麦田里的守望者', '[美国] J. D. 塞林格 / 孙仲旭 ', '8.1', 61645, ' 译林出版社 ', ' 2007-3 ', ' 28.00元',
        '这本小说一出版，就受到国内青少年的热烈欢迎，认为它道出了自己的心声，一时大、中学校的校园里到处都模仿小说主人公霍尔顿——他们在大冬天身穿风衣，倒戴着红色猎人...', 0, 's2053249.jpg', NULL);
INSERT INTO `user_book`
VALUES (1168, 0, 0, '草房子', '曹文轩 ', '9.0', 19566, ' 江苏少年儿童出版社 ', ' 2009-6 ', ' 18.00元',
        '这是一部讲究品位的少年长篇小说。作品写了男孩桑桑刻骨铭心、终身难忘的六年小学生活。六年中，他亲眼目睹或直接参与了一连串看似寻常但又催人泪下、撼动人心的故事...', 0, 's1052990.jpg', NULL);
INSERT INTO `user_book`
VALUES (1169, 0, 0, '了不起的盖茨比', '菲茨杰拉德 / 姚乃强 ', '8.4', 106429, ' 人民文学出版社 ', ' 2004-06 ', ' 12.00元',
        '盖茨比为了久久地抱着的一个梦而付出了很高的代价。他死后，尼克发觉是汤姆暗中挑拨威尔逊去杀死盖茨比。他感到东部鬼影幢幢，世态炎凉，便决定回中西部老家去。这是一...', 0, 's1008988.jpg', NULL);
INSERT INTO `user_book`
VALUES (1170, 0, 0, '明朝那些事儿（壹）', '当年明月 ', '8.7', 182206, ' 中国友谊出版公司 ', ' 2006-9 ', ' 24.80',
        '从朱元璋的出身开始写起，到永乐大帝夺位的靖难之役结束为止。叙述了明朝最艰苦卓绝的开国过程。朱元璋pk陈友谅，谁堪问鼎天下？战太平、太湖大决战。卧榻之侧埋恶虎...', 0, 's1873231.jpg', NULL);
INSERT INTO `user_book`
VALUES (1171, 0, 0, '从你的全世界路过', '张嘉佳 ', '7.0', 106217, ' 湖南文艺出版社 ', ' 2013-11-1 ', ' 36.00元',
        '《从你的全世界路过》是微博上最会写故事的人张嘉佳献给你的心动故事。最初以“睡前故事”系列的名义在网上疯狂流传，几天内达到1,500,000次转发，超4亿...', 0, 's25747921.jpg', NULL);
INSERT INTO `user_book`
VALUES (1172, 0, 0, '倾城之恋', '张爱玲 ', '8.7', 36468, ' 北京十月文艺出版社 ', ' 2006-12 ', ' 29.80元',
        '一九四四年八月十五日，张爱玲的小说集《传奇》由上海杂志社出版，书中收入中短篇小说《金锁记》、《倾城之恋》、《茉莉香片》、《沉香屑：第一炉香》、《沉香屑：第二...', 0, 's1985223.jpg', NULL);
INSERT INTO `user_book`
VALUES (1173, 0, 0, '微微一笑很倾城', '顾漫 ', '7.9', 94793, ' 江苏文艺出版社 ', ' 2009-8 ', ' 25.00',
        '如果你“惨”遭抛弃后，忽然有个很强很拽很不可一世的男人向你求婚，你怎么反应？贝微微同学的反应是：“大神……你被盗号了么＝＝”这个世界也太不真实了吧！...', 0, 's3879301.jpg', NULL);
INSERT INTO `user_book`
VALUES (1174, 0, 0, '献给阿尔吉侬的花束', '[美] 丹尼尔·凯斯 / 陈澄和 ', '9.0', 15757, ' 广西师范大学出版社 ', ' 2015-4 ', ' 36.00元',
        '很多人都笑我。但他们是我的朋友我们都很快乐。—	以《献给阿尔吉侬的花束》原著改编，野岛伸司编剧、山下智久主演的TBS日剧于2015年春季开播—	《24个...', 0, 's26362836.jpg',
        NULL);
INSERT INTO `user_book`
VALUES (1175, 0, 0, '死缓', '[法]路易-费迪南·塞利纳 / 金龙格 ', '8.6', 308, ' 漓江出版社 ', ' 2017-10 ', ' 88.00元',
        '内容简介《死缓》创作于1933年，1936年出版，是路易-费迪南•塞利纳的第二部长篇力作。作者以自己贫困的童年生活为蓝本，以自传体手法描述了小费迪南...', 0, 's27141613.jpg', NULL);
INSERT INTO `user_book`
VALUES (1176, 0, 0, '杀死一只知更鸟', '[美] 哈珀·李 / 李育超 ', '9.3', 20009, ' 译林出版社 ', ' 2017-2 ', ' 48.00',
        '《杀死一只知更鸟》是公认的美国文学经典，而它在教育领域的意义却使其突破了国界，成为世界上最有名的成长小说之一。《杀死一只知更鸟》在西方世界的影响力巨大，是美...', 0, 's26879778.jpg', NULL);
INSERT INTO `user_book`
VALUES (1177, 0, 0, '茶花女', '小仲马 / 王振孙 ', '8.2', 106871, ' 外国文学出版社 ', ' 1997-3 ', ' 9.00元',
        '《茶花女》为我们塑造了一些生动、鲜明的艺术形象，而其中最突出、最令人难忘的自然是女主人公茶花女玛格丽特。读者们切莫把玛格丽特和阿尔丰西娜·普莱西小姐混为一谈...', 0, 's1013380.jpg', NULL);
INSERT INTO `user_book`
VALUES (1178, 0, 0, '撒哈拉的故事', '三毛 ', '9.2', 75926, ' 哈尔滨出版社 ', ' 2003-8 ', ' 15.80元',
        '三毛作品中最脍炙人口的《撒哈拉的故事》，由12篇精彩动人的散文结合而成，其中《沙漠中的饭店》，是三毛适应荒凉单调的沙漠生活后，重新拾笔的第一篇文字，自此之后...', 0, 's1060068.jpg', NULL);
INSERT INTO `user_book`
VALUES (1179, 0, 0, '放学后', '（日）东野圭吾 / 赵峻 ', '7.6', 120187, ' 南海出版公司 ', ' 2010-1 ', ' 20.00',
        '东野圭吾成名作荣获第31届江户川乱步奖草长莺飞的青春，忽如琉璃般生生粉碎。当美丽、纯粹、真实的事物被破坏，重视的回忆和梦想被摧毁时，恨意便开始萌发，恣...', 0, 's4074636.jpg', NULL);
INSERT INTO `user_book`
VALUES (1180, 0, 0, '卡拉马佐夫兄弟', '[俄] 费奥多尔·陀思妥耶夫斯基 / 荣如德 ', '9.4', 14622, ' 上海译文出版社 ', ' 2006-8 ', ' 25.00元',
        '老卡拉马佐夫贪婪好色，独占妻子留给儿子们的遗产，并与长子德米特里为一个风流女子争风吃醋。一天黑夜，德米特里疑心自己的情人去跟老头儿幽会，便闯入家园，一怒之下...', 0, 's1856494.jpg', NULL);
INSERT INTO `user_book`
VALUES (1181, 0, 0, '傲慢与偏见', '简•奥斯丁(Jane Austen) / 孙致礼 ', '9.0', 16905, ' 译林出版社 ', ' 2010-6-1 ', ' 18.50元',
        '本书描写傲慢的单身青年达西与偏见的二小姐伊丽莎白、富裕的单身贵族彬格莱与贤淑的大小姐吉英之间的感情纠葛，充分表达了作者本人的婚姻观，强调经济利益对恋爱和婚姻...', 0, 's4881639.jpg', NULL);
INSERT INTO `user_book`
VALUES (1182, 0, 0, '鬼吹灯之精绝古城', '天下霸唱 ', '8.1', 72944, ' 安徽文艺出版社 ', ' 2006 ', ' 25.0',
        '胡八一上山下乡来到中蒙边境的岗岗营子，带上了家中仅存的一本书——《十六字风水秘术》，闲来无事将书中文字背得滚瓜烂熟。之后参军到西藏，遇上雪崩掉落一条巨大的地...', 0, 's1882933.jpg', NULL);
INSERT INTO `user_book`
VALUES (1183, 0, 0, '冬泳', '班宇 ', '8.1', 17966, ' 上海三联书店 ', ' 2018-9 ', ' 49.00元',
        '班宇（@坦克手贝吉塔）短篇力作首度成集阿乙•蒋方舟•李诞•谈波齐声推荐《冬泳》收录了班宇的七篇小说。在铁轨、工事与大雪的边缘，游走着一些昔日的身影：印...', 0, 's30362170.jpg', NULL);
INSERT INTO `user_book`
VALUES (1184, 0, 0, '水浒传（全二册）', '[明] 施耐庵、罗贯中 ', '8.6', 57093, ' 人民文学出版社 ', ' 1997-1 ', ' 50.60元',
        '《水浒传》是我国第一部以农民起义为题材的长篇章回小说，是我国文学史上一座巍然屹立的丰碑，也是世界文学宝库中一颗光彩夺目的明珠。数百年来，它一直深受我国人民的...', 0, 's1008357.jpg', NULL);
INSERT INTO `user_book`
VALUES (1185, 0, 0, '夏洛的网', '[美] E.B.怀特 / 任溶溶 ', '8.6', 51145, ' 上海译文出版社 ', ' 2004-5 ', ' 17.00元',
        '一个蜘蛛和小猪的故事，写给孩子，也写给大人。在朱克曼家的谷仓里，快乐地生活着一群动物，其中小猪威尔伯和蜘蛛夏洛建立了最真挚的友谊。然而，一个最丑恶的消息打...', 0, 's1036274.jpg', NULL);
INSERT INTO `user_book`
VALUES (1186, 0, 0, '不能承受的生命之轻', '[捷克] 米兰·昆德拉 / 许钧 ', '8.5', 200393, ' 上海译文出版社 ', ' 2003-7 ', ' 23.00元',
        '《不能承受的生命之轻》是米兰·昆德拉最负盛名的作品。小说描写了托马斯与特丽莎、萨丽娜之间的感情生活。但它不是一个男人和两个女人的三角性爱故事，它是一部哲理小...', 0, 's1017143.jpg', NULL);
INSERT INTO `user_book`
VALUES (1187, 0, 0, '罪与罚', '[俄] 陀思妥耶夫斯基 / 岳麟 ', '9.1', 11772, ' 上海译文出版社 ', ' 2006-8 ', ' 23.00元',
        '《罪与罚》系19世纪俄国大文豪陀思妥耶夫斯基的代表作之一。小说描写一心想成为拿破仑式的人物、认定自己是个超人的穷大学生拉斯柯尔尼科夫，受无政府主义思想毒害，...', 0, 's1858568.jpg', NULL);
INSERT INTO `user_book`
VALUES (1188, 0, 0, '台北人', '白先勇 ', '8.9', 34609, ' 广西师范大学出版社 ', ' 2010-10 ', ' 38.00元',
        '作为20世纪中文小说100强的《台北人》，是一部深具复杂性的短篇小说集，由十四个一流的短篇小说构成，串联成一体，则效果遽然增加，不但小说之幅面变广，使我们看...', 0, 's5337248.jpg', NULL);
INSERT INTO `user_book`
VALUES (1189, 0, 0, '面纱', '(英)W.萨默塞特·毛姆 / 阮景林 ', '8.7', 40895, ' 重庆 ', ' 2012-05-01 ', ' 32.00元',
        '《面纱》由W.萨默塞特·毛姆编著。《面纱》讲述了：容貌娇美而又爱慕虚荣的英国女子凯蒂，为了避免自己变成一位老姑娘，接受了生性孤僻的医生瓦尔特·费恩的求婚...', 0, 's10560798.jpg', NULL);
INSERT INTO `user_book`
VALUES (1190, 0, 0, '坟场之书', '[英] 尼尔·盖曼 / 李雅欣 ', '8.3', 1396, ' 江苏凤凰文艺出版社 ', ' 2020-2-21 ', ' 48',
        '养大一个孩子，需要整片坟场一齐出力。一个婴儿的出现，打破了坟场千年来的平静。在死神的指引下，鬼魂们收养了婴儿，并取名诺伯蒂(Nobody)。坟场从此成了...', 0, 's34954108.jpg', NULL);
INSERT INTO `user_book`
VALUES (1191, 0, 0, '雪国', '[日] 川端康成 / 叶渭渠、唐月梅 ', '8.0', 29129, ' 南海出版公司 ', ' 2013-9-15 ', ' CNY 32.00',
        '史上最美诺贝尔文学奖作品，教育部推荐大学生必读书目大师经典名作，全新精装收藏版像《百年孤独》一样，《雪国》影响了余华、莫言、贾平凹等几代中国作家川端康...', 0, 's24736899.jpg', NULL);
INSERT INTO `user_book`
VALUES (1192, 0, 0, '树上的男爵', '[意大利]伊塔洛·卡尔维诺 / 吴正仪 ', '9.1', 22515, ' 译林出版社 ', ' 2012-4-1 ', ' 30.00元',
        '在大陆，王小波、苏童、阿城、止庵是他的忠实粉丝在台湾，朱天文，唐诺是卡尔维诺不余遗力的传播者在香港，梁文道说他一直在准备谈卡尔维诺，可是一直没准备好权...', 0, 's6789605.jpg', NULL);
INSERT INTO `user_book`
VALUES (1193, 0, 0, '悲惨世界（上中下）', '[法] 雨果 / 李丹、方于 ', '9.0', 49197, ' 人民文学出版社 ', ' 1992-6 ', ' 66.00元',
        '这是法国十九世纪浪漫派领袖雨果继《巴黎圣母院》之后创作的又一部气势恢宏的鸿篇巨著。全书以卓越的艺术魅力，展示了一幅自1793年法国大革命至1832年巴黎人民...', 0, 's1205054.jpg', NULL);
INSERT INTO `user_book`
VALUES (1194, 0, 0, '天才基本法', '长洱 ', '8.6', 5225, ' 江苏凤凰文艺出版社 ', ' 2019-7 ', ' 78.00元',
        '二十二岁的林朝夕在父亲确诊阿尔茨海默病这天，得知自己暗恋多年的校园男神裴之即将出国深造的消息——对方考取的学校，恰是父亲当年为她放弃的那所。同样自幼与奥数...', 0, 's34466299.jpg', NULL);
INSERT INTO `user_book`
VALUES (1195, 0, 0, '漫长的告别', '[美] 雷蒙德·钱德勒 / 姚向辉 ', '8.2', 18013, ' 海南出版社 ', ' 2018-9 ', ' 69.00',
        '◆《漫长的告别》，怪不得村上春树读了12遍！美国文坛一代宗师钱德勒代表作！◆每每陷入困境，村上春树便打开《漫长的告别》！村上春树曾亲自翻译《漫长的告别》...', 0, 's30316475.jpg', NULL);
INSERT INTO `user_book`
VALUES (1196, 0, 0, '平原上的摩西', '双雪涛 ', '8.3', 14408, ' 百花文艺出版社 ', ' 2016-6 ', ' 39.50元',
        '本书是双雪涛的第一部中短篇小说集，书中收录了10篇作品，小说风格不一，题材有校园成长类，奇人故事类，侦探悬疑类，作者的笔调朴素，冷峻又有文字表面按捺不住的恣...', 0, 's26803179.jpg', NULL);
INSERT INTO `user_book`
VALUES (1197, 0, 0, '遗忘通论', '[安哥拉] 若泽·爱德华多·阿瓜卢萨 / 王渊 ', '8.7', 481, ' 上海人民出版社 ', ' 2020-4 ', ' 59.00元',
        '☆《遗忘通论》获得2017年国际都柏林文学奖、2019年安哥拉国家文化艺术奖，入围2016年布克国际奖决选名单；☆阿瓜卢萨是当代安哥拉乃至整个葡语世界...', 0, 's34969956.jpg', NULL);
INSERT INTO `user_book`
VALUES (1198, 0, 0, '天官赐福', '', '8.2', 5213, '杜枫 ', ' 三葉草出版社 ', ' 2008-02-20', '', 0, 's3022521.jpg', NULL);
INSERT INTO `user_book`
VALUES (1199, 0, 0, '外婆的道歉信', '[瑞典] 弗雷德里克·巴克曼 / 孟汇一 ', '8.0', 22081, ' 天津人民出版社 ', ' 2017-5 ', ' 42.00元',
        '2016年瑞典年度作家美国亚马逊作家排名No.1版权售出40国遍布欧美几乎每家书店上市10个月全球总销量突破150万册出版后持续霸占《纽约时报》...', 0, 's27029890.jpg', NULL);
INSERT INTO `user_book`
VALUES (1200, 0, 0, '情人', '[法] 玛格丽特·杜拉斯 / 王道乾 ', '8.1', 133602, ' 上海译文出版社 ', ' 2005-7 ', ' 20.00元',
        '杜拉斯代表作之一，自传性质的小说，获一九八四年法国龚古尔文学奖。全书以法国殖民者在越南的生活为背景，描写贫穷的法国女孩与富有的中国少爷之间深沉而无望的爱情。...', 0, 's1400705.jpg', NULL);
INSERT INTO `user_book`
VALUES (1201, 0, 0, '无人生还', '[英] 阿加莎·克里斯蒂 / 夏阳 ', '8.6', 33108, ' 新星出版社 ', ' 2013-7 ', ' 28.00元',
        '十个素不相识、身份各异的人受邀前往德文郡海岸边一座孤岛上的豪宅。客人到齐后，主人却没有出现。当晚，一个神秘的声音发出指控，分别说出每个人心中罪恶的秘密。接...', 0, 's24859822.jpg', NULL);
INSERT INTO `user_book`
VALUES (1202, 0, 0, '伪装学渣2', '木瓜黄 ', '7.1', 1620, ' 北京时代华文书局 ', ' 2019-9 ', ' 39.80元',
        '新锐作家木瓜黄暖心校园力作，讲述贺朝和谢俞两个学霸伪装学渣共同竞争的故事。爆笑＋感动＋成长＋轻狂=我们共同的青春岁月本书是一部青春校园小说。小说讲述了...', 0, 's34810988.jpg', NULL);
INSERT INTO `user_book`
VALUES (1203, 0, 0, '四世同堂', '老舍 ', '9.3', 14745, ' 北京十月文艺出版社 ', ' 2008-07 ', ' 36.00元',
        '值得每一代中国人阅读的文学经典，值得每一个中国人珍藏的民族记忆。老舍：它是我从事写作以来最长的、可能也是最好的一本书。入选《亚洲周刊》“二十世纪中文小说一百...', 0, 's3183775.jpg', NULL);
INSERT INTO `user_book`
VALUES (1204, 0, 0, '陆犯焉识', '严歌苓 ', '8.8', 43508, ' 作家出版社 ', ' 2011-10 ', ' 35.00元',
        '《陆犯焉识》内容简介：陆焉识本是上海大户人家才子+公子型的少爷，聪慧而倜傥，会多国语言，也会讨女人喜欢。父亲去世后，年轻无嗣的继母冯仪芳为了巩固其在家族中的...', 0, 's6880158.jpg', NULL);
INSERT INTO `user_book`
VALUES (1205, 0, 0, '我将独自前行', '[日] 若竹千佐子 / 杜海玲 ', '7.7', 1026, ' 北京联合出版公司 ', ' 2020-3 ', ' 42.00元',
        '24岁那年，桃子被东京奥运所吸引，抛下了婚事、离开了故乡，一个人前往陌生的东京。来到东京后，桃子努力工作、结婚成家、又经历了儿女独立、丈夫早逝，一眨眼竟是匆...', 0, 's34950362.jpg', NULL);
INSERT INTO `user_book`
VALUES (1206, 0, 0, '鞋带', '[意] 多梅尼科·斯塔尔诺内 / 陈英 ', '8.3', 1250, ' 上海译文出版社 ', ' 2020-5 ', ' 45',
        '“对我们的父母来说，把他们绑在一起的是让他们可以一辈子互相折磨的纽带。”-意大利重量级作家多梅尼科·斯塔尔诺内对婚姻、忠贞、诚实、真相的犀利审视意大...', 0, 's34970385.jpg', NULL);
INSERT INTO `user_book`
VALUES (1207, 0, 0, '兄弟', '余华 ', '8.5', 26275, ' 作家出版社 ', ' 2012-9-1 ', ' 43.00元',
        '《余华作品:兄弟》是余华作品。《余华作品:兄弟》讲述了这是两个时代相遇以后出生的小说，前一个是文革中的故事，那是一个精神狂热、本能压抑和命运惨烈的时代，相当...', 0, 's20441957.jpg', NULL);
INSERT INTO `user_book`
VALUES (1208, 0, 0, '局外人', '(法)阿尔贝·加缪 / 柳鸣九 ', '9.1', 15520, ' 上海译文出版社 ', ' 2013-8 ', ' 22.00',
        '阿尔贝•加缪（1913—1960）是法国声名卓著的小说家、散文家和剧作家，“存在主义”文学的大师。1957年因“热情而冷静地阐明了当代向人类良知提出的种种问...', 0, 's24257486.jpg', NULL);
INSERT INTO `user_book`
VALUES (1209, 0, 0, '小行星掉在下午', '沈大成 ', '8.1', 1612, ' 理想国 | 广西师范大学出版社 ', ' 2020-1 ', ' 54.00',
        '闪烁着霓虹灯的疫区，墨鱼人藏身的超大型地铁站，逐步变异的公司职员，新星球上建设社会的伟大历程……本书是沈大成新近创作的短篇小说精选，作者以其独有的黑色幽默，...', 0, 's34907855.jpg', NULL);
INSERT INTO `user_book`
VALUES (1210, 0, 0, '苏菲的世界', '[挪] 乔斯坦·贾德 / 萧宝森 ', '8.8', 36806, ' 作家出版社 ', ' 2007-10 ', ' 26.00元',
        '这本书以小说的形式，通过一名哲学导师向一个叫苏菲的女孩传授哲学知识的经过，揭示了西方哲学发展的历程。由前苏格拉底时代到萨特，以及亚里士多德、笛卡儿、黑格尔等...', 0, 's2284311.jpg', NULL);
INSERT INTO `user_book`
VALUES (1211, 0, 0, '达·芬奇密码', '[美] 丹·布朗 / 朱振武、吴晟、周元晓 ', '8.2', 206130, ' 上海人民出版社 ', ' 2004-2 ', ' 28.00元',
        '哈佛大学的符号学专家罗伯特·兰登在法国巴黎出差期间的一个午夜接到一个紧急电话，得知卢浮宫博物馆年迈的馆长被人杀害在卢浮宫的博物馆里，人们在他的尸体旁边发现了...', 0, 's1040771.jpg', NULL);
INSERT INTO `user_book`
VALUES (1212, 0, 0, '如果没有明天', '余耕 ', '6.7', 1502, ' 百花文艺出版社 ', ' 2017-3-1 ', ' CNY 28.00',
        '★如果没有明天，圣人可能一夜间变成禽兽？窝囊废会不会一夕间成为英雄？★《琅琊榜》《北平无战事》金牌影视制片人侯鸿亮推荐——“这本书，我是一口气读完的。让人...', 0, 's27044151.jpg', NULL);
INSERT INTO `user_book`
VALUES (1213, 0, 0, '金色梦乡', '[日] 伊坂幸太郎 / 代珂 ', '8.9', 23600, ' 南海出版公司 ', ' 2016-11 ', ' 49.50元',
        '《金色梦乡》是日本知名作家伊坂幸太郎的代表作，获第5届日本书店大奖、第21届山本周五郎奖，日文版销量突破114万册，堺雅人、竹内结子主演同名电影。对于《金色...', 0, 's26864984.jpg', NULL);
INSERT INTO `user_book`
VALUES (1214, 0, 0, '不能承受的生命之轻', '米兰·昆德拉 / 许钧 ', '8.8', 30620, ' 上海译文出版社 ', ' 2010-8 ', ' 29.00元',
        '小说依托六十年代的捷克斯洛伐克的政治历史背景，围绕着托马斯、特蕾莎、萨比娜和弗兰茨等人物，以托马斯与特蕾莎的爱情为主线展开故事。爱与做爱，灵魂与肉体，拯救...', 0, 's4920007.jpg', NULL);
INSERT INTO `user_book`
VALUES (1215, 0, 0, '第七天', '余华 ', '6.9', 54632, ' 新星出版社 ', ' 2013-6 ', ' 29.50元',
        '“浓雾弥漫之时，我走出了出租屋，在空虚混沌的城市里孑孓而行。我要去的地方名叫殡仪馆，这是它现在的名字，它过去的名字叫火葬场。我得到一个通知，让我早晨九点之前...', 0, 's24540864.jpg', NULL);
INSERT INTO `user_book`
VALUES (1216, 0, 0, '白鹿原', '陈忠实 ', '8.7', 102380, ' 人民文学出版社 ', ' 1997-12 ', ' 28.00元',
        '这是一部渭河平原五十年变迁的雄奇史诗，一轴中国农村班斓多彩、触目惊心的长幅画卷。主人公六娶六丧，神秘的序曲预示着不祥。一个家族两代子孙，为争夺白鹿原的统治代...', 0, 's1085799.jpg', NULL);
INSERT INTO `user_book`
VALUES (1217, 0, 0, '情书', '[日] 岩井俊二 / 穆晓芳 ', '8.6', 85535, ' 天津人民出版社 ', ' 2004-7 ', ' 18.00元',
        '日本神户，渡边博子在未婚夫藤井树的三周年祭日上又一次陷入到悲痛和思念之中。博子在藤井树的中学同学录里找到了他在小樽市读书时的地址。由于抑制不住对爱人的怀念，...', 0, 's1080370.jpg', NULL);
INSERT INTO `user_book`
VALUES (1218, 0, 0, '十宗罪', '蜘蛛 ', '6.6', 15338, ' 湖南文艺出版社 ', ' 2010-12 ', ' 26.00元',
        '绝对震撼的角色安排，四个超级警察，各怀绝技，从全国警察队伍中挑选而出，对各地发生的特大罪案进行侦破。极度扭曲的罪案案犯，强奸杀人犯、毁容者、恋物癖者、异装癖...', 0, 's5383916.jpg', NULL);
INSERT INTO `user_book`
VALUES (1219, 0, 0, '嫌疑人X的献身', '[日]东野圭吾 / 刘子倩 ', '9.0', 53132, ' 南海出版公司 ', ' 2014-6-1 ', ' 35.00元',
        '百年一遇的数学天才石神，每天唯一的乐趣，便是去固定的便当店买午餐，只为看一眼在便当店做事的邻居靖子。靖子与女儿相依为命，失手杀了前来纠缠的前夫。石神提出由...', 0, 's25924253.jpg', NULL);
INSERT INTO `user_book`
VALUES (1220, 0, 0, '彷徨', '鲁迅 ', '8.9', 21570, ' 人民文学出版社 ', ' 1973年3月 ', ' 0.37元',
        '《彷徨》收入鲁迅1924年至1925年所作的小说，首篇《祝福》写于1924年2月16日，末篇《离婚》写于1925年11月6日，实际的时间跨度是一年半多，19...', 0, 's1449348.jpg', NULL);
INSERT INTO `user_book`
VALUES (1221, 0, 0, '倾城之恋', '', '8.5', 146559, '花城出版社 ', ' 1997-3-1 ', ' 11.00',
        '一对现实庸俗的男女，在战争的兵荒马乱之中被命运掷骰子般地掷到了一起，于“一刹那”体会到了“一对平凡的夫妻”之间的“一点真心”⋯⋯张爱玲是作为中国现代文学史上...', 0, 's1090043.jpg', NULL);
INSERT INTO `user_book`
VALUES (1222, 0, 0, '孽子', '白先勇 ', '9.1', 15114, ' 广西师范大学出版社 ', ' 2010.10 ', ' 46.00元',
        '白先勇唯一的一部长篇小说《孽子》，以同性恋为题材，全书共分为四章，依次是“放逐”、“在我们的王国里”、“安乐乡”、“那些青春鸟的行旅”，描写了上个世纪六七十...', 0, 's5337254.jpg', NULL);
INSERT INTO `user_book`
VALUES (1223, 0, 0, '夏天、烟火和我的尸体', '[日] 乙一 / 连子心 ', '7.6', 6464, ' 南海出版公司 ', ' 2019-9 ', ' 45.00',
        '★乙一惊世成名作，16岁写成，轰动文坛。★九岁那年的夏天，我看着我的尸体漫山遍野奔跑。★一部书写天真与恶的暗黑杰作。这个盛夏的故事，让人冷到骨子里...', 0, 's34778574.jpg', NULL);
INSERT INTO `user_book`
VALUES (1224, 0, 0, '安德鲁不想孤独终老', '【英】理查德·罗珀 / 王颖 ', '8.0', 981, ' 上海文艺出版社 ', ' 2020-4-1 ', ' 49.90元',
        '内容简介“蓝色的月亮啊，你看到我孤独地站着。”安德鲁42岁了，他常常厌恶自己。他总觉得自己会孤独终老，不知道该如何爱任何人。安德鲁的工作是和死亡打交道...', 0, 's34982078.jpg', NULL);
INSERT INTO `user_book`
VALUES (1225, 0, 0, '活着', '余华 ', '9.1', 190367, ' 南海出版公司 ', ' 1998-5 ', ' 12.00元',
        '地主少爷福贵嗜赌成性，终于赌光了家业一贫如洗，穷困之中的福贵因为母亲生病前去求医，没想到半路上被国民党部队抓了壮丁，后被解放军所俘虏，回到家乡他才知道母亲已...', 0, 's1082154.jpg', NULL);
INSERT INTO `user_book`
VALUES (1226, 0, 0, '那个不为人知的故事', 'twentine ', '8.6', 13025, ' 江苏文艺出版社 ', ' 2015-12 ', ' 32.00元',
        '我曾拥有一段时光在那段时光里我能用我贫瘠的词语描绘出每一分每一秒我能用我枯竭的心灵记住所有的细节但这段时光很短暂就像一个故事刚刚有了开篇就戛然而止...', 0, 's26680113.jpg', NULL);
INSERT INTO `user_book`
VALUES (1227, 0, 0, '受戒', '汪曾祺 ', '9.3', 12202, ' 漓江出版社 ', ' 1987-10 ', ' 3.95元', '', 0, 's1760432.jpg', NULL);
INSERT INTO `user_book`
VALUES (1228, 0, 0, '马可瓦尔多', '[意] 伊塔洛·卡尔维诺 / 马小漠 ', '9.2', 899, ' 译林出版社 ', ' 2020-1 ', ' 42.00元',
        '一年四季轮回一季一个故事在沟渠里仰望星星一个小工眼中城市的奇趣与窃喜马可瓦尔多是位城市小工。在充满着水泥和沥青的城市森林里，他却试图寻找大自然。春天...', 0, 's34799583.jpg', NULL);
INSERT INTO `user_book`
VALUES (1229, 0, 0, '夏日终曲', '[美] 安德烈·艾席蒙 / 吴妍蓉 ', '8.8', 13647, ' 外语教学与研究出版社 ', ' 2018-3 ', ' 39.90',
        '2007年出版以来长踞《纽约时报》、美国亚马逊书店、Goodreads各种畅销书榜单。根据这部小说改编的电影《请以你的名字呼唤我》荣获2018年第90届奥...', 0, 's28659562.jpg', NULL);
INSERT INTO `user_book`
VALUES (1230, 0, 0, '在细雨中呼喊', '余华 ', '8.6', 14052, ' 作家出版社 ', ' 2012-11-1 ', ' 25.00元',
        '《在细雨中呼喊》是二十世纪九十年代的经典文本，是余华的第一部长篇力作。小说描述了一位江南少年的成长经历和心灵历程。《在细雨中呼喊》的结构来自于对时间的感受...', 0, 's20421947.jpg', NULL);
INSERT INTO `user_book`
VALUES (1231, 0, 0, '悉达多', '[德] 赫尔曼·黑塞 / 杨玉功 译、丁君君 校 ', '9.0', 24825, ' 上海人民出版社 ', ' 2009-3 ', ' 20.00',
        '古印度贵族青年悉达多英俊聪慧，拥有人们羡慕的一切。为了追求心灵的安宁，他孤身一人展开了求道之旅。他在舍卫城聆听佛陀乔答摩宣讲教义，在繁华的大城中结识了名妓伽...', 0, 's3406401.jpg', NULL);
INSERT INTO `user_book`
VALUES (1232, 0, 0, '小径分岔的花园', '[阿根廷] 豪·路·博尔赫斯 / 王永年 ', '8.9', 15801, ' 上海译文出版社 ', ' 2015-7 ', ' 23.00',
        '本书为1941年的短篇小说集，收小说七篇。其中，《小径分岔的花园》是侦探小说，讲述一桩罪行的准备工作和实施过程。小径分岔的花园是一个谜语，或者说寓言，而谜底...', 0, 's25796120.jpg', NULL);
INSERT INTO `user_book`
VALUES (1233, 0, 0, '钢铁是怎样炼成的', '[苏] 尼·奥斯特洛夫斯基 / 曹缦西、王志棣 ', '7.6', 60112, ' 译林出版社 ', ' 1996-10 ', ' 20.00元',
        '本书的主人公保尔·柯察金饱尝了生活的苦难，炼就了革命精神和反抗性格。十月革命爆发后只有十六岁的他，就参加了红军，无论在战炮火中，还是在国民经济复时期，可察金...', 0, 's1013502.jpg', NULL);
INSERT INTO `user_book`
VALUES (1234, 0, 0, '麦琪的礼物', '[美] 欧·亨利 / 张经浩 ', '8.6', 57309, ' 上海社会科学院出版社 ', ' 2003-7 ', ' 25.00元',
        '选收欧·亨利的小说34篇，国外当代文学类重要工具书介绍的有代表性的作品均已收入。欧·亨利是位有独特风格的杰出短篇小说家，以巧妙的构思、夸张和幽默的文笔反映了...', 0, 's1051193.jpg', NULL);
INSERT INTO `user_book`
VALUES (1235, 0, 0, '人间便利店', '[日] 村田沙耶香 / 吴曦 ', '7.7', 11696, ' 湖南文艺出版社·向上文学品牌 ', ' 2018-4 ', ' 45.00元',
        '‘’我一直在模仿着他们，只为努力扮演大众心目中的人。‘’第155届芥川奖获奖作品古仓惠子，三十六岁，至今未婚，大学毕业后没有就业，选择在便利店打工，一做...', 0, 's28171580.jpg', NULL);
INSERT INTO `user_book`
VALUES (1236, 0, 0, '梦里花落知多少', '郭敬明 ', '7.1', 161622, ' 春风文艺出版社 ', ' 2003-11 ', ' 20.00元',
        '《梦里花落知多少》是郭敬明出版第二部小说，此作一改《幻城》的奇幻风格，从天上回到人间。小说以北京、上海等大都市为背景，讲述了几个年青人的爱情故事，情节曲折，...', 0, 's1016300.jpg', NULL);
INSERT INTO `user_book`
VALUES (1237, 0, 0, '克莱因壶', '[日]冈岛二人 / 张舟 ', '8.8', 6280, ' 化学工业出版社 ', ' 2019-9 ', ' 48.00元',
        '什么时候你开始怀疑这个世界是假的？.日本虚拟现实VR题材开山杰作，超前《盗梦空间》20年！传奇推理作家组合冈岛二人预言之书，以超强的技术预见力，30...', 0, 's33658616.jpg', NULL);
INSERT INTO `user_book`
VALUES (1238, 0, 0, '巴黎圣母院', '[法]雨果 / 陈敬容 ', '8.4', 90252, ' 人民文学出版社 ', ' 1982-6 ', ' 22.50元',
        '《巴黎圣母院》是法国文豪维克多·雨果第一部引起轰动效应的浪漫派小说。小说以十五世纪路易十一统治下的法国为背景，通过一个纯洁无辜的波希米亚女郎惨遭迫害的故事，...', 0, 's1024197.jpg', NULL);
INSERT INTO `user_book`
VALUES (1239, 0, 0, '隐', '赵松 / 世纪文景', '7.4', 702, '上海人民出版社 ', ' 2020-2 ', ' 42.00元',
        '★赵松继豆瓣年度中国文学高分榜Top5作品《抚顺故事集》、单向街书店文学奖年度作品《积木书》之后又一小说力作★以奇诡的想象构筑权谋纷争之外的春秋世界...', 0, 's34933266.jpg', NULL);
INSERT INTO `user_book`
VALUES (1240, 0, 0, '强风吹拂', '三浦紫苑 / 林佩瑾、李建铨、杨正敏 ', '9.0', 10876, ' 广西师范大学出版社 ', ' 2015-1-1 ', ' 39.00元',
        '长跑的目标不是更快，而是更强。“明明这么痛苦，这么难过，为什么就是不能放弃跑步？因为全身细胞都在蠢蠢欲动，想要感受强风迎面吹拂的滋味。”宽政大学宿舍“...', 0, 's26210487.jpg', NULL);
INSERT INTO `user_book`
VALUES (1241, 0, 0, '一句顶一万句', '刘震云 ', '8.7', 36726, ' 长江文艺出版社 ', ' 2009-3 ', ' 29.80',
        '《一句顶一万句》的故事很简单，小说的前半部写的是过去：孤独无助的吴摩西失去唯一能够“说得上话”的养女，为了寻找，走出延津；小说的后半部写的是现在：吴摩西养女...', 0, 's3633461.jpg', NULL);
INSERT INTO `user_book`
VALUES (1242, 0, 0, '人生的枷锁', '[英] 毛姆 / 张柏然、张增健、倪俊 ', '9.0', 19681, ' 上海译文出版社 ', ' 2007-3 ', ' 32.00元',
        '《人生的枷锁》是毛姆的代表作，具有明显的自传色彩。小说主人公菲利普·凯里自幼父母双亡，不幸又先天残疾，在冷漠而陌生的环境中度过了童年，性格因此孤僻而敏感。...', 0, 's2035171.jpg', NULL);
INSERT INTO `user_book`
VALUES (1243, 0, 0, '尘埃落定', '阿来 ', '8.5', 51247, ' 人民文学出版社 ', ' 1998-3-1 ', ' 22.0',
        '一个声势显赫的康巴藏族土司，在酒后和汉族太太生了一个傻瓜儿子。这个人人都认定的傻子与现实生活格格不入，却有着超时代的预感和举止，成为土司制度兴衰的见证人。小...', 0, 's1080309.jpg', NULL);
INSERT INTO `user_book`
VALUES (1244, 0, 0, '一个知识女性的思考系列', '[英]蕾切尔·卡斯克 ', '9.0', 235, ' 中信出版集团 ', ' 2020-3 ', ' 128.00元',
        '编辑推荐：★蕾切尔·卡斯克历时四年完成的小说三部曲，每一本都受到全球各大权威媒体的重磅推荐！《边界》被评为《纽约时报》2015年度十大图书，《卫报》21...', 0, 's34950849.jpg', NULL);
INSERT INTO `user_book`
VALUES (1245, 0, 0, '生活与命运', '[俄罗斯] 瓦西里·格罗斯曼 / 力冈 ', '9.3', 1773, ' 广西师范大学出版社 ', ' 2015-8-20 ', ' 118.00元',
        '★梁文道“最想为读者推荐的一本书”。《纽约时报》《华盛顿邮报》《华尔街日报》《卫报》《世界报》等全球媒体鼎力推荐，欧美书界誉为“当代的《战争与和平》”，“2...', 0, 's26394018.jpg', NULL);
INSERT INTO `user_book`
VALUES (1246, 0, 0, '罗生门', '[日]芥川龙之介 / 林少华 ', '8.7', 46571, ' 上海译文出版社 ', ' 2008-7 ', ' 12.00元',
        '芥川龙之介(1892—1927)，日本新思潮派代表作家，创作上既有浪漫主义特点，又具有现实主义倾向。以其名字命名的“芥川奖”成为日本文坛的重要奖项之一。作品...', 0, 's3136271.jpg', NULL);
INSERT INTO `user_book`
VALUES (1247, 0, 0, '鼠疫', '[法] 阿尔贝·加缪 / 顾方济、徐志仁 ', '8.6', 12752, ' 译林出版社 ', ' 2003-05 ', ' 20.00元',
        '本书收录了法国现代著名存在主义文学家加缪的两部作品：《鼠疫》与《局外人》。这两部作品同是加缪最重要的代表作，均被列为现代世界文学名著。《局外人》写的是人在荒...', 0, 's1056023.jpg', NULL);
INSERT INTO `user_book`
VALUES (1248, 0, 0, '阿Q正传', '鲁迅 著、丰子恺 绘 ', '8.7', 71596, ' 上海书店出版社 ', ' 2003-7 ', ' 14.50元',
        '《阿Q正传》讲述值此世纪末，衷心祈愿这里所议论的人物在下一世纪的中国现实生活中淡出；当然，作为光辉的典型人物，他将和哈姆雷特、唐·吉诃德等不朽的名字一样万古...', 0, 's1088065.jpg', NULL);
INSERT INTO `user_book`
VALUES (1249, 0, 0, '天才在左 疯子在右', '高铭 ', '8.1', 229301, ' 武汉大学出版社 ', ' 2010-2 ', ' 29.80元',
        '本书以访谈录的形式记载了生活在另一个角落的人群（精神病患者、心理障碍者等边缘人）深刻、视角独特的所思所想，让人们可以了解到疯子抑或天才真正的内心世界。此书是...', 0, 's4242172.jpg', NULL);
INSERT INTO `user_book`
VALUES (1250, 0, 0, '俗世奇人', '冯骥才 ', '8.5', 15096, ' 作家出版社 ', ' 2008-12 ', ' 18.00元',
        '《俗世奇人(修订版)》由19个短篇小说连缀构成，各篇文字极精短，半文半白，带有“三言两拍”笔意，作品的风格也接近古典传奇色彩，取话本文学旨趣。书中所讲之事，...', 0, 's3389984.jpg', NULL);
INSERT INTO `user_book`
VALUES (1251, 0, 0, '倚天屠龙记(共四册)', '金庸 ', '8.6', 48865, ' 三联书店 ', ' 1999-04 ', ' 47.00',
        '《倚天屠龙记》，金庸武侠小说，著于1961年，是“射雕三部曲”系列第三部，现收录在《金庸作品集》中。该书以元末群雄纷起、江湖动荡为广阔背景，叙述武当弟子张无...', 0, 's1070851.jpg', NULL);
INSERT INTO `user_book`
VALUES (1252, 0, 0, '长夜难明', '紫金陈 ', '8.5', 25550, ' 云南人民出版社 ', ' 2017-1 ', ' 42.00元',
        '国内原创推理大神紫金陈，高智商犯罪”“推理之王”系列后，心血新作嫌疑人杀人抛尸，却因意外在大庭广众之下被当场抓获。现场至少有几百个目击证人，嫌疑人对整...', 0, 's26923390.jpg', NULL);
INSERT INTO `user_book`
VALUES (1253, 0, 0, '冰与火之歌', '[美]乔治·R.R.马丁 / 谭光磊、屈畅、胡绍晏 ', '9.5', 8757, ' 重庆出版社 ', ' 2013-10-1 ', ' 330.00元',
        '《冰与火之歌》（ASongofIceandFire）是由美国著名科幻奇幻小说家乔治·R·R·马丁（GeorgeR.R.Martin）所著的史诗...', 0, 's25826936.jpg', NULL);
INSERT INTO `user_book`
VALUES (1254, 0, 0, '动物庄园', '乔治•奥威尔 (George Orwell) / 隗静秋 ', '9.3', 26974, ' 上海三联书店 ', ' 2009-6-1 ', ' 16.00元',
        '《动物庄园(买中文版送英文版)》内容为：小说不属于人们所熟悉的蕴含教训的传统寓言，而是对现代政治神话的一种寓言式解构。“它是一部革命史，但它误入歧途，而且第...', 0, 's3808982.jpg', NULL);
INSERT INTO `user_book`
VALUES (1255, 0, 0, '人鼠之间', '[美] 约翰·斯坦贝克（John Steinbeck） / 李天奇 ', '9.0', 5946, ' 上海文艺出版社 ', ' 2016-1-1 ', ' 29.00元',
        '英国BBC读者票选“英国人最喜爱的100部小说”之一诺贝尔文学奖得主斯坦贝克关于承诺、孤独、希望和失去之书——————莱尼身高两米，力气大得吓人，但心...', 0, 's26598807.jpg', NULL);
INSERT INTO `user_book`
VALUES (1256, 0, 0, '万有引力之虹', '[美] 托马斯·品钦 / 张文宇 ', '8.1', 410, ' 译林出版社 ', ' 2020-4 ', ' 148.00',
        '《万有引力之虹》不仅是一本有如神助完成的大百科全书。它对这个世界深刻的预言性和未来感，让它的分量和价值历久弥新。数十年来，它已发酵成为文学界的第一奇书，不断...', 0, 's30431388.jpg', NULL);
INSERT INTO `user_book`
VALUES (1257, 0, 0, '书店日记', '[英] 肖恩·白塞尔 / 顾真 ', '8.2', 3895, ' 广西师范大学出版社 ', ' 2019-9 ', ' 79.00元',
        '“书店老板多半缺乏耐心、偏执、厌恶交际。”“上门来的许多人不管跑到哪里都是讨人厌的那一类，只不过书店给了他们特别的机会表现。”“我们有书，你有钱。交换吧...', 0, 's33459737.jpg', NULL);
INSERT INTO `user_book`
VALUES (1258, 0, 0, '魔道祖師 二', '墨香銅臭 ', '8.1', 6895, ' 平心工作室 ', ' 2016-12-8 ', ' NT330元',
        '隨書附贈精美明信片一張趁藍忘機與薛洋纏鬥之際，魏無羨帶著一群世家少年們，跟隨著盲眼無舌的少女陰魂所發出的竹竿敲地聲一路前行，孰料他們所見到的，竟是曉...', 0, 's26924198.jpg', NULL);
INSERT INTO `user_book`
VALUES (1259, 0, 0, '蝲蛄吟唱的地方', '[美] 迪莉娅·欧文斯 / 王泽林 ', '8.8', 1693, ' 博集天卷 | 湖南文艺出版社 ', ' 2019-10 ', ' 58',
        '◆2019全美现象级畅销小说。登上《纽约时报》《今日美国》、美国亚马逊、北美独立书店四大重量级畅销榜榜首，连续上榜超过80周。◆美国国内总销量已逾...', 0, 's34813209.jpg', NULL);
INSERT INTO `user_book`
VALUES (1260, 0, 0, '红玫瑰与白玫瑰', '张爱玲 ', '8.4', 78730, ' 花城出版社 ', ' 1996-06 ', ' 12.80元',
        '“也许每一个男子全都有过这样的两个女人，至少两个。娶了红玫瑰，久而久之，红的变了墙上的一抹蚊子血，白的还是\"床前明月光\"；娶了白玫瑰，白的便是衣服上沾的一粒...', 0, 's1014278.jpg', NULL);
INSERT INTO `user_book`
VALUES (1261, 0, 0, '黄金时代', '王小波 ', '8.8', 8447, ' 北京十月文艺出版社 ', ' 2017-4 ', ' 35.00元',
        '【内容简介】写出《黄金时代》之前，我从未觉得自己写得好。——王小波本书收入王小波颇负盛名的三篇小说《黄金时代》《三十而立》《似水流年》，其中《黄金时代》...', 0, 's27013741.jpg', NULL);
INSERT INTO `user_book`
VALUES (1262, 0, 0, '哈利·波特与密室', '[英] J. K. 罗琳 / 马爱新 ', '8.9', 126387, ' 人民文学出版社 ', ' 2000-9 ', ' 22.00元',
        '《哈利·波特与密室》是“哈利·波特”系列的第二部。哈利·波特在霍格沃茨魔法学校学习一年之后，暑假开始了。他在姨父姨妈家熬过痛苦的假期。正当他准备打点行装去...', 0, 's1039487.jpg', NULL);
INSERT INTO `user_book`
VALUES (1263, 0, 0, '球状闪电', '刘慈欣 ', '8.7', 52605, ' 四川科学技术出版社 ', ' 2005-6 ', ' 22.00元',
        '在某个离奇的雨夜，一颗球状闪电闯进了少年的视野。它的啸叫低沉中透着尖利，像是一个鬼魂在太古的荒原上吹着埙。当鬼魂奏完乐曲，球状闪电在一瞬间将少年的父母化为灰...', 0, 's1192090.jpg', NULL);
INSERT INTO `user_book`
VALUES (1264, 0, 0, '一桩事先张扬的凶杀案', '[哥伦比亚] 加西亚·马尔克斯 / 魏然 ', '8.7', 22539, ' 南海出版公司 ', ' 2013-6 ', ' 25.00元',
        '★马尔克斯自认为掌控得最好的作品。★这是一个残忍的犯罪故事，一部极具张力的小说，为此我写了三十年。——加西亚•马尔克斯★它综合了我以往所有作品的元素，我...', 0, 's24382569.jpg', NULL);
INSERT INTO `user_book`
VALUES (1265, 0, 0, '银河系边缘的小失常', '[以色列] 埃特加·凯雷特 / 方铁 ', '8.8', 329, ' 浦睿文化·湖南文艺出版社 ', ' 2020-5 ', ' 49.00元',
        '继《突然，响起一阵敲门声》之后，短篇小说大师埃特加·凯雷特创作的全新短篇小说集。一个伤感又好笑的马戏团炮弹飞人；一个五十岁还在啃老的窝囊儿子；一个想要重返...', 0, 's35005062.jpg', NULL);
INSERT INTO `user_book`
VALUES (1266, 0, 0, '洛丽塔', '[美] 弗拉基米尔·纳博科夫 / 主万 ', '7.7', 67466, ' 上海译文出版社 ', ' 2005-12 ', ' 27.00元',
        '《洛丽塔》原著问世五十年来第一部中文全译本。纳博科夫最著名最有争议的小说杰作。', 0, 's1465324.jpg', NULL);
INSERT INTO `user_book`
VALUES (1267, 0, 0, '狂人日记', '鲁迅 ', '8.8', 51495, ' 京华出版社 ', ' 2006-3 ', ' 39.80元',
        '《狂人日记》是鲁迅1918年发表的第一篇白话短篇小说，当时正值“五四”运动的前夜。由于辛亥革命的半途而废，特别是帝国主义侵略的加剧，使社会各种矛盾更加复杂尖...', 0, 's1398395.jpg', NULL);
INSERT INTO `user_book`
VALUES (1268, 0, 0, '一个人的朝圣', '[英] 蕾秋·乔伊斯 / 黄妙瑜 ', '8.1', 68241, ' 北京联合出版公司 ', ' 2013-9-1 ', ' 32.80',
        '★2013年欧洲首席畅销小说，入围2012年布克文学奖，同名电影拍摄中★台湾读者表示“很久没有读一本书读到凌晨”、“是一个简单、素朴但会令人深深感动的故事...', 0, 's24934182.jpg', NULL);
INSERT INTO `user_book`
VALUES (1269, 0, 0, '孤城闭', '米兰Lady ', '8.4', 2092, ' 江苏凤凰文艺出版社 ', ' 2018-5 ', ' 78.00元',
        '仁宗盛治，天下雍熙，海晏河清，四海升平。那一段湮没于尘埃缝隙中的爱情，于故纸堆中散发出沉香——原本也可是风流少年郎，或及第登科，或闲云野鹤，却囿于深宫，...', 0, 's30215869.jpg', NULL);
INSERT INTO `user_book`
VALUES (1270, 0, 0, '棋王', '阿城 ', '9.0', 5176, ' 上海三联书店 ', ' 2019-4 ', ' 48.00元',
        '《棋王》收录“三王”小说经典，珍贵文献、星星美展插画、《今天》杂志油印创作谈等一并收入，呈现文字手艺人阿城先生的温度与风度。“从世俗小说的样貌来说，《棋王...', 0, 's30330181.jpg', NULL);
INSERT INTO `user_book`
VALUES (1271, 0, 0, '殺破狼', 'Priest ', '8.8', 13441, ' 龍馬文化 ', ' 2016-9 ', ' 臺幣1200圓', '', 0, 's26939596.jpg', NULL);
INSERT INTO `user_book`
VALUES (1272, 0, 0, '罗杰疑案', '[英] 阿加莎·克里斯蒂 / 常禾 ', '9.2', 17815, ' 新星出版社 ', ' 2013-3 ', ' 28.00元',
        '金斯艾伯特村里坐落着两座豪宅，“皇家围场”是其中之一，而居住其中的弗拉尔斯太太刚刚过世。此后不久，她的情人，也就是住在另一所大宅里的罗杰•艾克罗伊德先生便...', 0, 's21371175.jpg', NULL);
INSERT INTO `user_book`
VALUES (1273, 0, 0, '永恒的终结', '[美] 艾萨克·阿西莫夫 / 崔正男 ', '9.0', 23211, ' 江苏凤凰文艺出版社 ', ' 2014-9-1 ', ' 32.00元',
        '24世纪，人类发明了时间力场。27世纪，人类在掌握时间旅行技术后，成立了一个叫做永恒时空（Eternity）的组织，在每个时代的背后，默默地守护着人类社会的...', 0, 's25829693.jpg', NULL);
INSERT INTO `user_book`
VALUES (1274, 0, 0, '长安十二时辰 上', '马伯庸 ', '8.4', 39861, ' 湖南文艺出版社 ', ' 2017-1-1 ', ' CNY 79.60',
        '唐天宝三年，元月十四日，长安。大唐皇都的居民不知道，上元节辉煌灯火亮起之时，等待他们的，将是场吞噬一切的劫难。突厥、狼卫、绑架、暗杀、烈焰、焚城，毁灭长...', 0, 's26899537.jpg', NULL);
INSERT INTO `user_book`
VALUES (1275, 0, 0, '德米安', '[德] 赫尔曼·黑塞 / 丁君君、谢莹莹 ', '9.0', 14924, ' 上海人民出版社 ', ' 2009-3 ', ' 25.00元',
        '《德米安：埃米尔·辛克莱的彷徨少年时》是黑塞的代表作之一，讲述少年辛克莱寻找通向自身之路的艰辛历程。出生并成长于“光明世界”的辛克莱，偶然发现截然不同的“另...', 0, 's3578470.jpg', NULL);
INSERT INTO `user_book`
VALUES (1276, 0, 0, '雨', '[马来西亚] 黄锦树 ', '8.4', 7375, ' 四川人民出版社 ', ' 2018-3 ', ' 38.00元',
        '大雨无边无际，召唤南洋胶林深处的情感与记忆台湾时报文学奖、联合报文学奖得主黄锦树获奖作品...................※编辑推荐※☆《雨》是...', 0, 's27192538.jpg', NULL);
INSERT INTO `user_book`
VALUES (1277, 0, 0, '小小小小的火', '[美] 伍绮诗 / 孙璐 ', '8.2', 12424, ' 江苏凤凰文艺出版社 ', ' 2018-4 ', ' 52.00元',
        '☆《无声告白》作者新作：《小小小小的火》☆永远记得，你呼吸着的每一个瞬间，都应该去过你真正想要的生活。☆那年夏天，一把小小小小的火，烧掉了理查德森...', 0, 's30155720.jpg', NULL);
INSERT INTO `user_book`
VALUES (1278, 0, 0, '人间失格', '[日] 太宰治 / 烨伊 ', '8.3', 35049, ' 武汉出版社 ', ' 2011-12 ', ' 25.00元',
        '人间失格，即丧失为人的资格。由序、第一手札、第二手札、第三手札、后记共五个部分构成，其中序和后记以作者口吻叙说，三个手札则以主人公叶藏的口吻叙述。主人公叶藏...', 0, 's6973970.jpg', NULL);
INSERT INTO `user_book`
VALUES (1279, 0, 0, '亮剑', '都梁 ', '8.9', 19478, ' 解放军文艺出版社 ', ' 2005-3 ', ' 28.00元',
        '李云龙是一个叱咤风云、百战沙场的职业军人，是一个一生都在血与火中搏斗的名将。他的人生信条是：面对强大的对手，明知不敌，也要毅然亮剑，即使倒下，也要成为一座山...', 0, 's1088022.jpg', NULL);
INSERT INTO `user_book`
VALUES (1280, 0, 0, '步履不停', '[日] 是枝裕和 / 郑有杰 ', '8.7', 24859, ' 北京联合出版公司 ', ' 2017-5 ', ' 36.80元',
        '★电影大师是枝裕和亲自撰写，经典代表作原著小说★拿遍各大国际影展重要奖项，全球影迷热泪推荐！★绝无冷场的故事，比电影更幽微的人性暗涌；一茶一饭的淡香，触...', 0, 's26963321.jpg', NULL);
INSERT INTO `user_book`
VALUES (1281, 0, 0, '雾行者', '路内 ', '8.0', 1898, ' 上海三联书店 ', ' 2020-1 ', ' 88.00',
        '小说在某种程度上充分把握了被书写的对象，无论是中国社会、中国现实，还是一个特定的时代、一个个特定的人，并在高度自觉的文体实验及其形式感之间达成了平衡。关于文...', 0, 's34894380.jpg', NULL);
INSERT INTO `user_book`
VALUES (1282, 0, 0, '活着', '余华 ', '9.4', 7782, ' 北京十月文艺出版社 ', ' 2017-6-1 ', ' 35.00元',
        '【内容简介】《活着》是当代作家余华的代表作，讲述了一个人历尽世间沧桑和磨难的一生，亦将中国大半个世纪的社会变迁凝缩其间。《活着》还讲述了眼泪的宽广和丰富；...', 0, 's27064488.jpg', NULL);
INSERT INTO `user_book`
VALUES (1283, 0, 0, '移民', '[德] 温弗里德·塞巴尔德 / 刁承俊 ', '9.1', 243, ' 广西师范大学出版社 ', ' 2020-3 ', ' 56.00元',
        '☀内容简介所谓移民，即失去礼拜天的灵魂在大地上寻找更好的人的定义最后只能以死还乡本书是塞巴尔德的成名之作，包括四个超长短篇小说：第一篇《亨利•塞尔温...', 0, 's34942379.jpg', NULL);
INSERT INTO `user_book`
VALUES (1284, 0, 0, '聋哑时代', '双雪涛 ', '8.6', 324, ' 广西师范大学出版社 ', ' 2020-4 ', ' 54.00',
        '“小学毕业的时候，是1997年的夏天，和之后每一次毕业一样，炎热而干燥。”从那个时候开始，关于一切痛苦和欢愉，我都准备好了。90年代末的东北小城，那个外...', 0, 's34969942.jpg', NULL);
INSERT INTO `user_book`
VALUES (1285, 0, 0, '故事', '[美] 罗伯特·麦基 / 周铁东 ', '9.2', 10024, ' 天津人民出版社 ', ' 2014-9-1 ', ' 68.00元',
        '自1997年初版以来，《故事》一直是全世界编剧的第一必读经典，至今，仍属于美国亚马逊最畅销图书中的Top1%。集结了罗伯特•麦基30年的授课经验，本书在对...', 0, 's25976544.jpg', NULL);
INSERT INTO `user_book`
VALUES (1286, 0, 0, '天官賜福 一', '墨香銅臭 ', '7.6', 5426, ' 平心出版 ', ' 2017-12 ', ' NTD 330', '', 0, 's30181592.jpg', NULL);
INSERT INTO `user_book`
VALUES (1287, 0, 0, '魔道祖師 三', '墨香銅臭 ', '8.1', 4521, ' 平心工作室 ', ' 2016-12-8 ', ' NT330元',
        '隨書附贈精美明信片一張蓮花塢被滅後，存活下來的兩個少年，一個慘遭化丹，一個則被丟下夷陵的亂葬崗。可岐山溫氏並沒能繼續猖狂太久，少年之一以江氏家主的身...', 0, 's26924200.jpg', NULL);
INSERT INTO `user_book`
VALUES (1288, 0, 0, '幻夜', '〔日〕东野圭吾 / 李炜 ', '7.5', 66674, ' 南海出版公司 ', ' 2009年9月 ', ' 28.00元',
        '《白夜行》姊妹篇2004年入围第131届直木奖是什么样的过去，造就了她的魔性？是什么样的幻影，操纵着他的灵魂？我们只能走在幻夜的路上，即使四周明...', 0, 's4009552.jpg', NULL);
INSERT INTO `user_book`
VALUES (1289, 0, 0, '红与黑', '[法] 司汤达 / 张冠尧 ', '8.2', 47185, ' 人民文学出版社 ', ' 2002 ', ' 20.00元',
        '小说主人公于连,是一个木匠的儿子,年轻英俊,意志坚强,精明能干,从小就希望借助个人的努力与奋斗跻身上流社会。在法国与瑞士接壤的维立叶尔城，坐落在山坡上，美...', 0, 's1007433.jpg', NULL);
INSERT INTO `user_book`
VALUES (1290, 0, 0, '哑舍', '玄色 ', '7.4', 7769, ' 长江出版社 ', ' 2011-4 ', ' 23.80元',
        '热闹与喧嚣的摩登城市，历史在这里无声沉积。那些神话传说中亦真亦假的奇珍异宝，曾一度遗落在历史的长河里。然而，此刻，它们就在这里——名为“哑舍”的古董店。一...', 0, 's6437880.jpg', NULL);
INSERT INTO `user_book`
VALUES (1291, 0, 0, '她们', '阎连科 ', '8.6', 379, ' 河南文艺出版社 ', ' 2020-4-26 ', ' 46.80',
        '★阎连科全新长篇散文，一部深刻书写女性命运的圆梦之作！阎连科等待十年之后的圆梦之作，这一次他终于可以提起笔，将文字投向世代更迭中女人的命运。他说：“这部散...', 0, 's34973161.jpg', NULL);
INSERT INTO `user_book`
VALUES (1292, 0, 0, '24个比利', '[美] 丹尼尔·凯斯 / 邢世阳 ', '8.1', 24291, ' 湖岸出版／外语教学与研究出版社 ', ' 2015-6-30 ', ' 39.00元',
        '1977年，美国俄亥俄州连续强暴案嫌犯比利‧米利根被警方逮捕，但是他对自己犯下的罪行居然毫无记忆。事实上，在他体内总共有24个人格存在，这些人格不仅在性格上...', 0, 's26371317.jpg', NULL);
INSERT INTO `user_book`
VALUES (1293, 0, 0, '倾城之恋', '张爱玲 ', '8.7', 21303, ' 北京出版集团公司,北京十月文艺出版社 ', ' 2012-6-1 ', ' 29.80元',
        '传奇里的倾国倾城的人大抵如此。到处都是传奇，可不见得有这么圆满的收场。胡琴咿咿哑哑拉着，在万盏灯的夜晚，拉过来又拉过去，说不尽的苍凉的故事——不问也罢！...', 0, 's10757940.jpg', NULL);
INSERT INTO `user_book`
VALUES (1294, 0, 0, '动物农场', '[英]乔治·奥威尔 / 荣如德 ', '9.4', 11790, ' 上海译文出版社 ', ' 2010.9 ', ' 22.00元',
        '《动物农场》是奥威尔最优秀的作品之一，是一则入木三分的反乌托的政治讽喻寓言。农场的一群动物成功地进行了一场“革命”，将压榨他们的人类东家赶出农场，建立起一个...', 0, 's4908879.jpg', NULL);
INSERT INTO `user_book`
VALUES (1295, 0, 0, '你一生的故事', '[美] 特德·姜 / 李克勤、王荣生、姚向辉 ', '8.6', 21554, ' 译林出版社 ', ' 2015-5 ', ' 36.00元',
        '一瞥之下，过去与未来轰轰然同时并至，我的意识成为长达半个世纪的灰烬，时间未至已成灰。五十年诸般纷纭并发眼底，我的余生尽在其中。还有，你的一生。《你一...', 0, 's26295448.jpg', NULL);
INSERT INTO `user_book`
VALUES (1296, 0, 0, '鬼吹灯之云南虫谷', '天下霸唱 ', '8.0', 34022, ' 安徽文艺出版社 ', ' 2006-11 ', ' 26.80元',
        '传闻救人性命的雮尘珠成了古滇国献王的陪葬品，摸金校尉深入瘴疠之地，再探古墓奇险。三人穿过遮龙山下古滇国秘密地下水道，不料遭遇千年痋术机关，成千上万个奴隶制...', 0, 's1926103.jpg', NULL);
INSERT INTO `user_book`
VALUES (1297, 0, 0, '锦衣之下（全二册）', '蓝色狮 ', '7.3', 3786, ' 北方文艺出版社 ', ' 2015-4 ', ' 55',
        '朝廷十万两修河银款不翼而飞，六扇门奉命协助锦衣卫一同追查。女捕快今夏不乐意了，前脚被锦衣卫抢功，后脚还要受其差遣。锦衣卫大人陆绎什么来历——当今锦衣卫...', 0, 's26308574.jpg', NULL);
INSERT INTO `user_book`
VALUES (1298, 0, 0, '追忆似水年华', '[法] 马塞尔·普鲁斯特 / 李恒基、徐继曾、桂裕芳、袁树仁、潘丽珍、许渊冲、许钧、杨松河、周克希、张小鲁、张寅德、刘方、陆秉慧、徐和瑾、周国强 ', '9.2', 4240,
        ' 译林出版社 ', ' 2012-6 ', ' 328.00元',
        '普鲁斯特的《追忆似水年华》以回忆的形式对往事作了回顾，有童年的回忆、家庭生活、初恋与失恋、历史事件的观察、以及对艺术的见解和对时空的认识等等。时间是这部小说...', 0, 's10779650.jpg', NULL);
INSERT INTO `user_book`
VALUES (1299, 0, 0, '网内人', '陈浩基 ', '8.2', 7995, ' 九州出版社 ', ' 2019-8 ', ' 62.00元',
        '四十年来首度入选《周刊文春》海外推理BEST10的亚洲作家，《周刊文春》2018年度推理小说&海外推理双冠军得主2018“这本推理小说了不起！”（このミス...', 0, 's34262174.jpg', NULL);
INSERT INTO `user_book`
VALUES (1300, 0, 0, '金瓶梅', '笑笑生【著】、董玉振【校】 ', '9.2', 2520, ' 新加坡南洋出版社 ', ' 2009-11-1 ', ' 466',
        '这套《金瓶梅》（上、下册，约1240印刷页）是全球第一部简体、双版本、带200原图（其中30多幅春宫图也全部保留）、不做任何删节处理的版本。是目前海内外各种...', 0, 's1916451.jpg', NULL);
INSERT INTO `user_book`
VALUES (1301, 0, 0, '柠檬桌子', '[英] 朱利安·巴恩斯 / 郭国良 ', '7.5', 316, ' 江苏凤凰文艺出版社 ', ' 2020-3 ', ' 59.00元',
        '★	英国文坛三巨头之一朱利安·巴恩斯，关于人生暮年真相的短篇小说集！★	朱利安·巴恩斯是布克奖得主，荣获17项世界文学大奖、5枚荣誉勋章，获奖记录横贯欧洲...', 0, 's34969918.jpg',
        NULL);
INSERT INTO `user_book`
VALUES (1302, 0, 0, '长日将尽', '[英] 石黑一雄 / 冯涛 ', '8.9', 9108, ' 上海译文出版社 ', ' 2018-5 ', ' 48.00元',
        '★2017诺贝尔文学奖得主石黑一雄代表作、布克奖获奖小说★长日将尽，一曲帝国衰落的挽歌，一场擦肩而过的爱情★同名电影（又译《告别有情天》）获多项奥斯卡奖...', 0, 's30142261.jpg', NULL);
INSERT INTO `user_book`
VALUES (1303, 0, 0, '春日宴', '白鹭成双 ', '6.8', 3561, ' 三秦出版社 ', ' 2018-6 ', ' 34.80元',
        '男人真是不能宠，一宠就扶腰直上九万里继《美景未迟》系列后白鹭成双再掀古言甜宠新高度高冷紫阳君一夕变身傲娇小公举怀玉在线提问：夫君又帅又有才，除了无...', 0, 's30273665.jpg', NULL);
INSERT INTO `user_book`
VALUES (1304, 0, 0, '苏菲的世界', '（挪威）乔斯坦·贾德 / 萧宝森 ', '8.5', 105454, ' 作家出版社 ', ' 1999-04 ', ' 26.80元',
        '《苏菲的世界》是讲14岁的少女苏菲某天放学回家，发现了神秘的一封信。—你是谁？—世界从哪里来？就这样，在某个神秘导师的指引下，苏菲开始思索，从古希腊到康德、...', 0, 's1045818.jpg', NULL);
INSERT INTO `user_book`
VALUES (1305, 0, 0, '莫斯科绅士', '[美] 埃默·托尔斯 / 马韧 ', '8.9', 6574, ' 湖南文艺出版社 ', ' 2018-6 ', ' 79.80元',
        '【编辑推荐】◆一个人如果不能掌控自己的命运，就会被命运掌控。◆美国前总统奥巴马、奥斯卡影帝汤姆•汉克斯、比尔·盖茨年度推荐。◆都柏林文学奖入围作品。《...', 0, 's30128204.jpg', NULL);
INSERT INTO `user_book`
VALUES (1306, 0, 0, '霸王别姬', '李碧华 ', '9.1', 12564, ' 人民文学出版社 ', ' 1999-1 ', ' 10.20元',
        '婊子无情，戏子无义。婊子合该在床上有情，戏子只能在台上有义。台上，一生一旦，英雄美人，一出《霸王别姬》唱红四十年代的北平。台下，师兄师弟，性情各异。一具...', 0, 's1088711.jpg', NULL);
INSERT INTO `user_book`
VALUES (1307, 0, 0, '三生三世 十里桃花', '唐七公子 ', '7.8', 79814, ' 沈阳出版社 ', ' 2009-1 ', ' 26.80',
        '前世今生系列之一。“你若敢死，我立刻便去找折颜要药水，把你忘得干干净净”他的身子一颤，半晌，扯出一个笑来，他说：“那样也好。”他在这世上，留给我的最后...', 0, 's3426869.jpg', NULL);
INSERT INTO `user_book`
VALUES (1308, 0, 0, '悲伤逆流成河', '郭敬明 ', '6.2', 100328, ' 长江文艺出版社 ', ' 2007-5 ', ' 24.00元',
        '你曾经有梦见这样无边无际的月光下的水域么？无声起伏的黑色的巨浪，在地平线上爆发出沉默的力量。就这样，从仅仅打湿脚底，到盖住脚背，漫过小腿，一步一步地，走...', 0, 's2062200.jpg', NULL);
INSERT INTO `user_book`
VALUES (1309, 0, 0, '冰糖炖雪梨', '酒小七 ', '6.9', 1551, ' 青岛出版社 ', ' 2019-10 ', ' 59.8',
        '曾经内向胆小、屡被棠雪欺负的男孩黎语冰，几年不见，华丽转身，变成人人爱慕追逐的冰球男神！而当年欺负他的小女孩棠雪，却只是个普普通通的学生，还不得不当他的助...', 0, 's34853897.jpg', NULL);
INSERT INTO `user_book`
VALUES (1310, 0, 0, '查令十字街84号', '[美] 海莲·汉芙 / 陈建铭 ', '8.3', 58527, ' 译林出版社 ', ' 2005-05-01 ', ' 18.00元',
        '这本被全球人深深钟爱的书，记录了纽约女作家海莲和一家伦敦旧书店的书商弗兰克之间的书缘情缘。双方二十年间始终未曾谋面，相隔万里，深厚情意却能莫逆于心。无论是平...', 0, 's1316648.jpg', NULL);
INSERT INTO `user_book`
VALUES (1311, 0, 0, '东方快车谋杀案', '[英] 阿加莎·克里斯蒂 / 郑桥 ', '8.9', 26409, ' 新星出版社 ', ' 2013-4 ', ' 26.00元',
        '侦探波洛在叙利亚完成了一项委托，要搭乘辛普朗号东方快车回国。奇怪的是，似乎全世界的人都选在那一夜出行，这列铺位一向宽裕的豪华列车竟然一票难求。幸好他遇到了好...', 0, 's24153048.jpg', NULL);
INSERT INTO `user_book`
VALUES (1312, 0, 0, '哈利·波特与阿兹卡班的囚徒', '[英] J. K. 罗琳 / 郑须弥 ', '9.0', 131346, ' 人民文学出版社 ', ' 2000-9 ', ' 26.50元',
        '《哈利·波特与阿兹卡班的囚徒》是“哈利·波特”系列的第三部。哈利·波特在霍格沃茨魔法学校已经度过了不平凡的两年，而且早已听说魔法世界中有一座守备森严的阿兹...', 0, 's1071241.jpg', NULL);
INSERT INTO `user_book`
VALUES (1313, 0, 0, 'J', '(英)霍华德·雅各布森(Howard Jacobson) / 张小意 ', '7.4', 283, ' 上海人民出版社 ', ' 2020-2 ', ' 69.00元',
        '☆《J》是布克奖得主霍华德·雅各布森追问人类命运的深邃之作，也是布克奖决选作品☆媲美《一九八四》《美丽新世界》的未来寓言，大卫·林奇般的不安氛围，《J...', 0, 's34893791.jpg', NULL);
INSERT INTO `user_book`
VALUES (1314, 0, 0, '鹿鼎记（全五册）', '金庸 ', '8.8', 45025, ' 广州出版社 花城出版社 ', ' 2008-3 ', ' 108.00元',
        '《鹿鼎记》是金庸创作的最后一部小说，也是他最重要的代表作。小说讲的是一个从小在扬州妓院长大的小孩韦小宝，他以不会任何武功之姿态闯江湖各大帮会、周旋皇帝朝臣...', 0, 's1212893.jpg', NULL);
INSERT INTO `user_book`
VALUES (1315, 0, 0, '新参者', '[日] 东野圭吾 / 岳远坤 ', '8.2', 24894, ' 南海出版公司 ', ' 2016-1 ', ' 39.50元',
        '【新参者】新加入、刚到来的人。东京，日本桥。一个单身女人在公寓内被勒死。警方发现她最近刚搬到这里居住。负责调查的是也刚调到日本桥地区的刑警加贺。仙贝店、...', 0, 's26639966.jpg', NULL);
INSERT INTO `user_book`
VALUES (1316, 0, 0, '东宫', '匪我思存 ', '7.3', 29907, ' 新世界出版社 ', ' 2010-07 ', ' 28.0',
        '传奇Legend有狐绥绥，在彼淇梁。心之忧矣，之子无裳。有狐绥绥，在彼淇厉。心之忧矣，之子无带。有狐绥绥，在彼淇侧。心之忧矣，之子无服。她，本...', 0, 's4871447.jpg', NULL);
INSERT INTO `user_book`
VALUES (1317, 0, 0, '荆棘鸟', '[澳] 考琳·麦卡洛 / 曾胡 ', '8.6', 44655, ' 译林出版社 ', ' 1998-7 ', ' 28.00元',
        '《荆棘鸟》是一部澳大利亚的家世小说，以女主人公梅吉和神父拉尔夫的爱情纠葛为主线，描写了克利里一家三代人的故事，时间跨度长达半个多世纪。拉尔夫一心向往教会的权...', 0, 's1086249.jpg', NULL);
INSERT INTO `user_book`
VALUES (1318, 0, 0, '教父', '(美)马里奥·普佐 / 姚向辉 ', '9.1', 16576, ' 江苏文艺出版社 ', ' 2014-4 ', ' 45',
        '“为了正义，我们必须去求唐・柯里昂。”向唐•柯里昂求助的人，希望从不会落空。他说一不二，不许空头支票，他是黑手党的教父，他主宰着纽约的地下世界，他是弱者的守...', 0, 's25762009.jpg', NULL);
INSERT INTO `user_book`
VALUES (1319, 0, 0, '时生', '[日]东野圭吾 / 徐建雄 ', '7.6', 42300, ' 南海出版公司 ', ' 2010-1 ', ' 25.00',
        '《时生》为东野圭吾迄今风格最独特的一部，以惊天动地的想象和鬼斧神工的解谜，将幻想、悬疑、穿越、推理、亲情熔为一炉，东野圭吾更称其为迄今“集大成之作”，在东野...', 0, 's4152754.jpg', NULL);
INSERT INTO `user_book`
VALUES (1320, 0, 0, '太古和其他的时间', '[波兰] 奥尔加·托卡尔丘克 / 易丽君、袁汉镕 ', '8.8', 5809, ' 四川人民出版社 ', ' 2017-12 ', ' 48.00元',
        '新晋诺贝尔文学奖得主、国际布克奖得主、波兰文学女王奥尔加·托卡尔丘克成名作一部魔幻现实主义的碎片化小说，八十四块时间的裂片，拼贴出历史的斑斓大梦。...', 0, 's27132345.jpg', NULL);
INSERT INTO `user_book`
VALUES (1321, 0, 0, '安娜·卡列尼娜', '[俄] 列夫·托尔斯泰 / 草婴 ', '9.2', 9326, ' 上海文艺出版社 ', ' 2007-8 ', ' 37.00元',
        '《安娜·卡列尼娜》是托尔斯泰第二部里程碑式的长篇小说，创作于1873—1877年。作品由两条既平行又相互联系的线索构成：一条是安娜与卡列宁、伏伦斯基之间的...', 0, 's2253380.jpg', NULL);
INSERT INTO `user_book`
VALUES (1322, 0, 0, '建筑师', '(美) 大卫·马祖凯利 / 艾琦 ', '9.1', 3145, ' 北京联合出版公司 ', ' 2019-3 ', ' 198.00元',
        '如果人生是一张建筑图纸属于你的那栋房屋会是什么模样？哈维奖、艾斯纳奖、洛杉矶时报图像小说获奖作品融叙事象征主义，色彩和视觉隐喻于一体的史诗级作品大火...', 0, 's30218241.jpg', NULL);
INSERT INTO `user_book`
VALUES (1323, 0, 0, '金锁记', '张爱玲 ', '8.6', 48627, ' 哈尔滨出版社 ', ' 2005-6 ', ' 13.5元',
        '《金锁记》写于1943年，小说描写了一个小商人家庭出身的女子曹七巧的心灵变迁历程。七巧做过残疾人的妻子，欲爱而不能爱，几乎像疯子一样在姜家过了30年。在财欲...', 0, 's3017857.jpg', NULL);
INSERT INTO `user_book`
VALUES (1324, 0, 0, '十年一品温如言', '书海沧生 ', '7.6', 21861, ' 江苏文艺出版社 ', ' 2011-6 ', ' 46.00元',
        '温衡笑眯眯，讲了个十年的故事。第一年，她从江南小镇的乌鸦变成了金光闪闪的凤凰，撞到一男一女接吻，此男长得甚是可口，心喜。第二年，他生了怪病，她趁乱，鸠占...', 0, 's6732193.jpg', NULL);
INSERT INTO `user_book`
VALUES (1325, 0, 0, '看不见的城市', '[意大利] 伊塔洛·卡尔维诺 / 张密 ', '9.0', 17009, ' 译林出版社 ', ' 2012-4 ', ' 25.00元',
        '在大陆，王小波、苏童、阿城、止庵是他的忠实粉丝在台湾，朱天文，唐诺是卡尔维诺不余遗力的传播者在香港，梁文道说他一直在准备谈卡尔维诺，可是一直没准备好权...', 0, 's10555509.jpg', NULL);
INSERT INTO `user_book`
VALUES (1326, 0, 0, '鬼吹灯之龙岭迷窟', '天下霸唱 ', '7.8', 31294, ' 安徽文艺出版社 ', ' 2006-11 ', ' 25.00元',
        '《鬼吹灯》是部奇书，小说中作者首创历史上四大盗墓门派——摸金、卸岭、发丘、搬山，其中摸金是技术含量最高，规矩最多的门派。“人点烛，鬼吹灯”是传说中摸金派的不...', 0, 's1916726.jpg', NULL);
INSERT INTO `user_book`
VALUES (1327, 0, 0, '鼠疫', '[法] 阿尔贝·加缪 / 李玉民 ', '8.9', 4171, ' 湖南文艺出版社 ', ' 2018-3 ', ' 49.80元',
        '《鼠疫》是法国存在主义作家加缪的代表作，被认为是加缪深具影响力和社会意义的作品。小说讲述了以里厄医生为代表的奥兰市居民，面对突如其来的瘟疫和死亡的威胁，同仇...', 0, 's30134903.jpg', NULL);
INSERT INTO `user_book`
VALUES (1328, 0, 0, '人间失格', '太宰治 / 杨伟 ', '8.2', 30692, ' 作家出版社 ', ' 2015-8 ', ' 25.00元',
        '收录《人间失格》《维庸之妻》《Good-bye》《灯笼》《满愿》《美男子与香烟》《皮肤与心》《蟋蟀》《樱桃》', 0, 's26647769.jpg', NULL);
INSERT INTO `user_book`
VALUES (1329, 0, 0, '挪威的森林', '[日]村上春树 / 林少华 ', '8.6', 6528, ' 上海译文出版社 ', ' 2018-3 ', ' 38.00元',
        '《挪威的森林》是日本作家村上春树所著的一部长篇爱情小说，影响了几代读者的青春名作。故事讲述主角渡边纠缠在情绪不稳定且患有精神疾病的直子和开朗活泼的小林绿子之...', 0, 's27200257.jpg', NULL);
INSERT INTO `user_book`
VALUES (1330, 0, 0, '如父如子', '[日] 是枝裕和、[日] 佐野晶 / 丹勇 ', '8.9', 15860, ' 湖南文艺出版社 ', ' 2018-4 ', ' 49.80',
        '当意识到孩子也在注视着自己时，那一瞬间，便懂得了什么是如父如子。至今为止都过着一帆风顺的人生的野野宮良多，是大型建筑公司里的精英社员。他和妻子绿结婚多...', 0, 's27611824.jpg', NULL);
INSERT INTO `user_book`
VALUES (1331, 0, 0, '秘密', '[日] 东野圭吾 / 连子心 ', '8.0', 9365, ' 南海出版公司 ', ' 2017-11 ', ' 45.00元',
        '平介的幸福生活在39岁那年被摧毁了。妻子带着女儿回娘家探亲，乘坐的大巴意外坠落山崖。妻子拼命护住女儿，最终伤重不治；女儿毫发未伤，但一直昏迷。妻子离世的那一...', 0, 's27115970.jpg', NULL);
INSERT INTO `user_book`
VALUES (1332, 0, 0, '长安十二时辰 下', '马伯庸 ', '7.6', 20652, ' 湖南文艺出版社 ', ' 2017-1-1 ', ' 39.80元',
        '唐天宝三年，元月十四日，长安。大唐皇都的居民不知道，上元节辉煌灯火亮起之时，等待他们的，将是场吞噬一切的劫难。突厥、狼卫、绑架、暗杀、烈焰、焚城，毁灭长安城...', 0, 's26899538.jpg', NULL);
INSERT INTO `user_book`
VALUES (1333, 0, 0, '围城', '钱锺书 ', '9.3', 4235, ' 人民文学出版社 ', ' 2017-6 ', ' 36.00',
        '《围城》是钱钟书仅有的一部长篇小说，堪称中国现当代长篇小说的经典。小说塑造了抗战开初一类知识分子的群像，生动反映了在国家特定时期，特殊人群的行为操守、以及困...', 0, 's27070488.jpg', NULL);
INSERT INTO `user_book`
VALUES (1334, 0, 0, '13 67', '陳浩基 ', '9.1', 4997, ' 皇冠 ', ' 2014-6-9 ', ' NTD 350',
        '我們以為自己走在正確的道路上，為什麼走著走著，人生卻變了樣？第一本讓我們感到驕傲的華文警察小說最高傑作！一組數字，六個片斷，構成一位警探的故事，一...', 0, 's25897884.jpg', NULL);
INSERT INTO `user_book`
VALUES (1335, 0, 0, '海风中失落的血色馈赠', '[加拿大] 阿利斯泰尔·麦克劳德 / 陈以侃 ', '9.1', 9531, ' 上海文艺出版社 ', ' 2015-6-1 ', ' CNY 20.00',
        '《海风中失落的血色馈赠》所收入的七个故事，有少年渴望摆脱家族在海岛世代挖煤的命运而在成年之际离家远行，有人到中年的大学教师回忆少年时他那心怀壮志但困居海岛打...', 0, 's26357614.jpg', NULL);
INSERT INTO `user_book`
VALUES (1336, 0, 0, '岛', '[英] 维多利亚·希斯洛普 / 陈新宇 ', '7.7', 38873, ' 南海出版公司 ', ' 2009-4 ', ' 28.00',
        '多年来，阿丽克西斯发觉母亲总是过分守护着自己的过去，不仅掩埋了自己的根，还把上面的泥土踩得结结实实。阿丽克西斯决定打开母亲尘封的过去。她来到爱琴海的布拉...', 0, 's3673651.jpg', NULL);
INSERT INTO `user_book`
VALUES (1337, 0, 0, '月亮和六便士', '[英] 毛姆 / 傅惟慈 ', '9.1', 37901, ' 上海译文出版社 ', ' 2009-10 ', ' 32.00元',
        '一个英国证券交易所的经纪人，本已有牢靠的职业和地位、美满的家庭，但却迷恋上绘画，像“被魔鬼附了体”，突然弃家出走，到巴黎去追求绘画的理想。他的行径没有人能够...', 0, 's4123116.jpg', NULL);
INSERT INTO `user_book`
VALUES (1338, 0, 0, '抱住我崩溃的大脑', '[日] 知念实希人 / 王路漫 ', '6.9', 848, ' 南海出版公司 ', ' 2020-3 ', ' 58',
        '《抱住我崩溃的大脑》是新锐推理作家知念实希人的重磅长篇小说。传说位于海边的叶山岬医院，可以满足患者的所有愿望。实习医生苍马在那里邂逅了少女由香里，并爱上了...', 0, 's34937179.jpg', NULL);
INSERT INTO `user_book`
VALUES (1339, 0, 0, '余生请多指教', '柏林石匠 ', '6.5', 1828, ' 北方妇女儿童出版社 ', ' 2015-7 ', ' 32.00元',
        '曾经以为，自己这辈子都等不到了——世界这么大，我又走得这么慢，要是遇不到良人怎么办？2009年的3月，我看着父亲被推出手术室，完全没有想到那个跟在手术床后...', 0, 's26425103.jpg', NULL);
INSERT INTO `user_book`
VALUES (1340, 0, 0, '棋王', '阿城 ', '8.8', 21127, ' 作家出版社 ', ' 1999-10 ', ' 13.00',
        '在处女作《棋王》中，阿城表现出自己的哲学：“普遍认为很苦的知青生活，在生活水准低下的贫民阶层看来，也许是物质上升了一级呢！另外就是普通人的‘英雄’行为常常是...', 0, 's1020961.jpg', NULL);
INSERT INTO `user_book`
VALUES (1341, 0, 0, '安徒生童话故事集', '（丹麦）安徒生 / 叶君健 ', '9.2', 87427, ' 人民文学出版社 ', ' 1997-08 ', ' 25.00元', '', 0,
        's1046209.jpg', NULL);
INSERT INTO `user_book`
VALUES (1342, 0, 0, '半生缘', '张爱玲 ', '9.1', 12424, ' 北京十月文艺出版社 ', ' 2012-6-1 ', ' 29.60元',
        '《半生缘》讲的是三十年代上海的一个悲惨的爱情故事。女主人公顾曼桢家境贫寒，自幼丧父，老小七人全靠姐姐曼璐做舞女养活。曼桢毕业后在一家公司工作，与来自南京的沈...', 0, 's10757938.jpg', NULL);
INSERT INTO `user_book`
VALUES (1343, 0, 0, '金阁寺', '[日] 三岛由纪夫 / 唐月梅 ', '8.7', 19712, ' 上海译文出版社 ', ' 2009-1 ', ' 24.00',
        '三岛由纪夫重要代表作，发表于1956年，长篇小说。《金阁寺》取材于1950年金阁寺僧徒林养贤放火烧掉金阁寺的真实事件。据林养贤说他的犯罪动机是对金阁寺的美...', 0, 's3391248.jpg', NULL);
INSERT INTO `user_book`
VALUES (1344, 0, 0, '人渣反派自救系統 上', '墨香銅臭 ', '7.3', 3887, ' 平心工作室 ', ' 2017-7-24 ', ' NTD 330',
        '隨書附贈精美明信片一張身為《狂傲仙魔途》的資深讀者，沈垣對這篇文是大大的不滿。「傻逼作者傻逼文！」臨終前他罵了這麼一句，於是──【啟動碼：傻逼作者傻逼...', 0, 's27075479.jpg', NULL);
INSERT INTO `user_book`
VALUES (1345, 0, 0, '小偷家族', '[日] 是枝裕和 / 赵仲明 ', '8.6', 9735, ' 北京联合出版公司 ', ' 2019-1 ', ' 45.00',
        '★戛纳电影节金棕榈奖原著小说年度现象级文艺片，国内院线日本真人电影票房冠军豆瓣评分8.8，18万影迷热泪推荐！第71届戛纳电影节(2018)主竞...', 0, 's30374817.jpg', NULL);
INSERT INTO `user_book`
VALUES (1346, 0, 0, '一个叫欧维的男人决定去死', '[瑞典] 弗雷德里克·巴克曼 / 宁蒙 ', '9.2', 7786, ' 四川文艺出版社 ', ' 2017-7 ', ' 39.8',
        '来认识一下欧维，这个59岁的老头，脾气古怪，带着坚不可摧的原则、每天恪守的常规以及随时发飙的脾性在社区晃来晃去，被背地里称为“地狱来的恶邻”。他每天一大...', 0, 's27054340.jpg', NULL);
INSERT INTO `user_book`
VALUES (1347, 0, 0, '王考', '童伟格 ', '8.5', 2798, ' 四川人民出版社 ', ' 2019-7 ', ' 42.00元',
        '一位难以解读的小说家一部台湾文学史上不可忽视的经典联合报文学小说大奖得主，童伟格作品首次引进◎编辑推荐★童伟格是台湾六年级小说家中最具代表性的...', 0, 's34442090.jpg', NULL);
INSERT INTO `user_book`
VALUES (1348, 0, 0, '面纱', '[英] 威廉·萨默塞特·毛姆 / 于大卫 ', '9.0', 12414, ' 江西人民出版社 ', ' 2016-4-1 ', ' 39.8元',
        '“那描画的面纱，芸芸众生称之为生活”凯蒂怎么也琢磨不透，丈夫到底有没有发现她出轨的秘密——偷情时门把手的转动、晚餐时意有所指的话语，还有突然要带她前往霍乱...', 0, 's26757680.jpg', NULL);
INSERT INTO `user_book`
VALUES (1349, 0, 0, '1Q84 BOOK 1', '[日] 村上春树 / 施小炜 ', '8.3', 110828, ' 南海出版公司 ', ' 2010-5 ', ' 36.00元',
        '1Q84简体中文版官方网站：https://www.douban.com/minisite/1q84/“不管喜欢还是不喜欢，目前我已经置身于这‘1Q84年’...', 0, 's4742918.jpg', NULL);
INSERT INTO `user_book`
VALUES (1350, 0, 0, '镇魂', 'priest ', '7.9', 14477, ' 晋江出版社 ', ' 2013-7-4 ', ' 25',
        '温柔内敛美人攻VS暴躁精分……以及自以为攻的受。主角：赵云澜，沈巍围绕两主角的前世今生的种种开展开来，以四圣器为主线描述了人间鬼界仙途的互相博弈。文章主...', 0, 's26281913.jpg', NULL);
INSERT INTO `user_book`
VALUES (1351, 0, 0, '故事新编', '鲁迅 ', '9.2', 7655, ' 人民文学出版社 ', ' 1973-12-01 ', ' 0.31 元',
        '《故事新编》是鲁迅的一部短篇小说集，收录了鲁迅在1922年～1935年间创作的短篇小说八篇。1936年1月由上海文化生活出版社初版，列为巴金所编的《文学丛刊...', 0, 's2046909.jpg', NULL);
INSERT INTO `user_book`
VALUES (1352, 0, 0, '三生三世 枕上书', '唐七公子 ', '7.6', 23915, ' 湖南文艺出版社 ', ' 2012-6-1 ', ' 32.00元',
        '再掀“三生三世”畅销狂潮，完美再现唐七公子笔下最宏大的恩怨情仇《男生女生》火爆连载一周年，引发一千万读者疯狂追捧的古言经典如果执著终归于徒然，谁会...', 0, 's10740021.jpg', NULL);
INSERT INTO `user_book`
VALUES (1353, 0, 0, '哈利·波特与火焰杯', '[英] J. K. 罗琳 / 马爱新 ', '9.0', 125689, ' 人民文学出版社 ', ' 2001-5 ', ' 39.80元',
        '《哈利·波特与火焰杯》是“哈利·波特”系列的第四部。哈利·波特在霍格沃茨魔法学校经过三年的学习和磨炼，逐渐成长为一个出色的巫师。新学年开始前，哈利和好朋友...', 0, 's1009257.jpg', NULL);
INSERT INTO `user_book`
VALUES (1354, 0, 0, '恐妻家', '[日] 伊坂幸太郎 / 边大玉 ', '8.2', 3532, ' 南海出版公司 ', ' 2019-11-1 ', ' 58.00',
        '★一部惊心动魄且充满温情的小说，也是一部幽默风趣又一针见血的妻管严生存指南★恐妻家，即怕老婆的人，也就是我。我是个杀手，在业界还挺有名的。这阵子，我发现有...', 0, 's34778578.jpg', NULL);
INSERT INTO `user_book`
VALUES (1355, 0, 0, '刺杀骑士团长', '[日] 村上春树 / 林少华 ', '7.5', 25068, ' 上海译文出版社 ', ' 2018-3 ', ' 98.00元',
        '“我”，36岁，美术科班出身，原本爱好抽象画，多年来为了养家糊口成为专业肖像画画家。结婚六周年纪念日前，妻子毫无征兆地提出已有外遇，要求离婚，于是“我”独自...', 0, 's27199470.jpg', NULL);
INSERT INTO `user_book`
VALUES (1356, 0, 0, '小说课', '毕飞宇 ', '8.6', 8633, ' 人民文学出版社 ', ' 2017-2 ', ' 38.00',
        '►关于阅读，他们这样说：通过认真阅读小说，我在年轻的时候学会了认真对待生活——[土耳其]奥尔罕·帕慕克不管多忙，生活多困苦，读书和听音乐，对我来说始终...', 0, 's26951584.jpg', NULL);
INSERT INTO `user_book`
VALUES (1357, 0, 0, '孤独美食家', '[日] 村上龙 / 王蕴洁 ', '7.4', 5973, ' 湖南文艺出版社 ', ' 2020-1 ', ' 49.00元',
        '让人远离感伤的普罗旺斯鱼汤，充满情欲触感的生蚝，变成幸福象征的参鸡汤，象征着富有刺激的徒劳的羊脑咖喱，创造饥饿感、恐惧和至福的松露，让人的内心产生罪恶感的生...', 0, 's20267987.jpg', NULL);
INSERT INTO `user_book`
VALUES (1358, 0, 0, '过于喧嚣的孤独', '(捷克) 赫拉巴尔 / 杨乐云 ', '8.8', 10686, ' 北京十月文艺出版社 ', ' 2011-10 ', ' 22.00元',
        '本书是作者最重要的代表作，酝酿二十年，三易其稿。正如作者自己所说“我为它而活着，并为写它推迟了我的死亡”。小说诗意地叙述了一个在废纸回收站工作三十五年的打包...', 0, 's6781794.jpg', NULL);
INSERT INTO `user_book`
VALUES (1359, 0, 0, '清单人生', '[瑞典] 弗雷德里克·巴克曼 / 孙璐 ', '7.9', 8897, ' 天津人民出版社 ', ' 2018-4-21 ', ' 42.00',
        '【编辑推荐】◆	人生有一种艰难，是舍弃无比熟悉的生活，重新开始。◆	“你值得拥有更好的，布里特-玛丽。”外婆说，“哪怕你是个老太婆！”◆	《外婆的道歉...', 0, 's30140436.jpg',
        NULL);
INSERT INTO `user_book`
VALUES (1360, 0, 0, '庆余年·壹', '猫腻 ', '8.1', 15681, ' 中国友谊出版公司 ', ' 2008-7 ', ' 28.00元',
        '一个年轻的病人，因为一次毫不意外的经历，重生到一个完全不同的世界，成为古代庆国伯爵府一个并不光彩的私生子。修行无名功诀，踏足京都官场，继承庞大商团……范闲，...', 0, 's3155622.jpg', NULL);
INSERT INTO `user_book`
VALUES (1361, 0, 0, '哈利·波特与死亡圣器', '[英] J. K. 罗琳 / 马爱农、马爱新 ', '9.0', 100320, ' 人民文学出版社 ', ' 2007-10 ', ' 66.00元',
        '《哈利·波特与死亡圣器》是“哈利·波特”系列的第七部，也就是最后一部。还有四天，哈利就要迎来自己十七岁的生日，成为一名真正的魔法师。然而，他不得不提前离开...', 0, 's2295163.jpg', NULL);
INSERT INTO `user_book`
VALUES (1362, 0, 0, '丰乳肥臀', '莫言 ', '8.1', 12331, ' 中国工人出版社 ', ' 2003-09 ', ' 49.80元',
        '小说中通过母亲，含辛茹苦、艰难的抚育着一个又一个儿女，并且视上官金童为生命一般重要，其用意在于说明：人永远是宇宙中最宝贵的，生命具有无可争辩的意义，是第一本...', 0, 's1010349.jpg', NULL);
INSERT INTO `user_book`
VALUES (1363, 0, 0, '羊脂球', '（法）莫泊桑 / 赵少侯 ', '8.2', 85926, ' 北京燕山出版社 ', ' 2007-6 ', ' 13.50元',
        '莫泊桑短篇小说的代表作。写普法战争时，法国的一群贵族、政客、商人、修女等高贵者，和一个叫作羊脂球的妓女，同乘一辆马车逃离普军占区，在一关卡受阻。普鲁士军官要...', 0, 's1205370.jpg', NULL);
INSERT INTO `user_book`
VALUES (1364, 0, 0, '红岩', '罗广斌、杨益言 ', '7.6', 7085, ' 中国青年出版社 ', ' 2000-07 ', ' 22.00元',
        '小说以解放前夕“重庆中美合作所集中营”敌我斗争为主线，展开了对当时国统区阶级斗争全貌的描写。全书通过三条斗争线索(集中营的狱中斗争、重庆城内的学生运动和地下...', 0, 's1090109.jpg', NULL);
INSERT INTO `user_book`
VALUES (1365, 0, 0, '平如美棠', '饶平如 ', '9.1', 18531, ' 广西师范大学出版社 ', ' 2013-5-1 ', ' CNY 39.80',
        '这是饶平如一生的故事。他不是一个想打仗的人，但他还是义无反顾去打仗了。又因为和美棠在一起，他最终厌倦了战争，想要回家。六十年的相守历尽坎坷，命运让他们长...', 0, 's23008971.jpg', NULL);
INSERT INTO `user_book`
VALUES (1366, 0, 0, '长恨歌', '王安忆 ', '8.2', 45623, ' 南海出版公司 ', ' 2003-8 ', ' 22.00元',
        '一个女人四十年的情与爱，被一枝细腻而绚烂的笔写得哀婉动人，其中交织着上海这所大都市从四十年代到九十年代沧海桑田的变迁。生活在上海弄堂里的女人沉垒了无数理想、...', 0, 's1082349.jpg', NULL);
INSERT INTO `user_book`
VALUES (1367, 0, 0, '红手指', '[日] 东野圭吾 / 于壮 ', '8.0', 14034, ' 南海出版公司 ', ' 2015-1 ', ' 39.50',
        '这是多么愚蠢而浅薄的犯罪，隐藏的真相却震撼人心！=====================================================...', 0, 's26651926.jpg', NULL);
INSERT INTO `user_book`
VALUES (1368, 0, 0, '萨拉戈萨手稿', '[波兰] 扬·波托茨基 / 方颂华 ', '8.2', 1417, ' 湖南文艺出版社 ', ' 2019-11 ', ' 118.00元',
        '亲爱的阿方索，我们来到这里并非因为偶然……我们在等你。瓦隆卫队的年轻军官阿方索赶赴马德里加入他的军队。但他很快就发现，他被困在一家神秘的路边客栈，和形...', 0, 's34808267.jpg', NULL);
INSERT INTO `user_book`
VALUES (1369, 0, 0, '三重门', '韩寒 / NONE、NONE ', '7.4', 108010, ' 作家出版社 ', ' 2000-5 ', ' 16.00',
        '《三重门》是一部由一个少年写就，但却不能简单划入儿童文学的一般意义上的小说，它恰恰是以成熟、老练，甚至以老到见长的。17岁的韩寒注定要扮演不安分且引人注目的...', 0, 's1026425.jpg', NULL);
INSERT INTO `user_book`
VALUES (1370, 0, 0, '白天的房子，夜晚的房子', '[波兰] 奥尔加·托卡尔丘克 / 易丽君、袁汉镕 ', '8.6', 3849, ' 四川人民出版社 ', ' 2017-12 ', ' 60.00元',
        '新晋诺贝尔文学奖得主、国际布克奖得主、波兰文学女王——奥尔加·托卡尔丘克代表作，大陆首次引进出版。魔幻现实主义的碎片化小说，人的世代更迭，是土地的瞬息一...', 0, 's27131538.jpg', NULL);
INSERT INTO `user_book`
VALUES (1371, 0, 0, '渺小一生', '[美] 柳原汉雅 / 尤传莉 ', '8.3', 2623, ' 广西师范大学出版社 ', ' 2019-6 ', ' 98.00元',
        '四个相识于大学的好友毕业闯荡纽约，共同努力从黑暗中赢回一生。一段大写的友情，四个人的三十年。我们无法选择出生的环境，却可以在外面的世界找到真正的家人——...', 0, 's33426127.jpg', NULL);
INSERT INTO `user_book`
VALUES (1372, 0, 0, 'Normal People', 'Sally Rooney ', '8.1', 529, ' Faber & Faber ', ' 2019-5-2 ', ' GBP 8.99',
        'ConnellandMariannegrowupinthesamesmalltowninthewestofIreland,bu...', 0, 's34453257.jpg', NULL);
INSERT INTO `user_book`
VALUES (1373, 0, 0, '额尔古纳河右岸', '迟子建 ', '9.0', 12755, ' 北京十月文艺出版社 ', ' 2005-12-1 ', ' 29.00元',
        '这是第一部描述我国东北少数民族鄂温克人生存现状及百年沧桑的长篇小说。似一壁饱得天地之灵气，令人惊叹却难得其解的神奇岩画；又似一卷时而安恬、时而激越，向世人诉...', 0, 's3311253.jpg', NULL);
INSERT INTO `user_book`
VALUES (1374, 0, 0, '我亲爱的甜橙树', '(巴西)若泽•毛罗•德瓦斯康塞洛斯 / 蔚玲 ', '9.1', 6545, ' 天天出版社 ', ' 2010-6 ', ' 19.90元',
        '这是一个构思了42年的故事。这是一个仅用12天就写成的故事。这是一个让数亿读者感动落泪的故事。这是一部有着相当自传性质的儿童小说，作家精确地“摹拟”一...', 0, 's4826530.jpg', NULL);
INSERT INTO `user_book`
VALUES (1375, 0, 0, '哈利·波特与混血王子', '[英] J. K. 罗琳 / 马爱农、马爱新 ', '8.8', 109648, ' 人民文学出版社 ', ' 2005-10 ', ' 58.00元',
        '《哈利·波特与“混血王子”》是“哈利·波特”系列的第六部。仲夏的一个夜晚，反常的浓雾笼罩在窗户玻璃上，哈利·波特在女贞路4号德思礼家自己的卧室里紧张地等待...', 0, 's1432596.jpg', NULL);
INSERT INTO `user_book`
VALUES (1376, 0, 0, '幻城', '郭敬明 ', '7.0', 101575, ' 春风文艺出版社 ', ' 2003-1 ', ' 28.00元',
        '这是一本奇特的书。一边是火族，一边是冰族，一边是火焰之城，一边是幻雪帝国。作品属于纯粹的虚构。对虚空的虚构，其实比对现实的摹写更难。相对于虚构的能力，我以为...', 0, 's1059406.jpg', NULL);
INSERT INTO `user_book`
VALUES (1377, 0, 0, '1988：我想和这个世界谈谈', '韩寒 ', '7.9', 137759, ' 国际文化出版公司 ', ' 2010-9 ', ' 25.00元',
        '系列主题：《我想和这个世界谈谈》目前在韩寒主编的杂志《独唱团》中首度连载，这是韩寒预谋已久的一个系列，也是国内首度实际尝试“公路小说”这一概念的第一本——...', 0, 's5275059.jpg', NULL);
INSERT INTO `user_book`
VALUES (1378, 0, 0, '卡拉马佐夫兄弟', '陀思妥耶夫斯基 (Ф.М.Достоевский) / 荣如德 ', '9.7', 4364, ' 上海译文出版社 ', ' 2015-2-1 ', ' CNY 78.00',
        '本书系俄国大作家陀思妥耶夫斯基代表作之一。小说通过一桩真实的弑父案，描写老卡拉马佐夫同三个儿子即两代人之间的尖锐冲突。老卡拉马佐夫贪婪好色，独占妻子留给儿子...', 0, 's25887924.jpg', NULL);
INSERT INTO `user_book`
VALUES (1379, 0, 0, '逍遥游', '班宇 ', '8.5', 443, ' 理想国|春风文艺出版社 ', ' 2020-5 ', ' 58.00元',
        '★《冬泳》之后，班宇最新作品。收录七篇风格殊异、深具探索性的中短篇小说，呈现出更为阔大的文学面貌：干冷枯燥的风，空气里的土与尘，即逝的光，喷出的泉水，荡开...', 0, 's34940823.jpg', NULL);
INSERT INTO `user_book`
VALUES (1380, 0, 0, '侯大利刑侦笔记', '小桥老树 ', '7.4', 1006, ' 上海文艺出版社 ', ' 2020-3 ', ' 45.00元',
        '一部集侦查学、痕迹学、社会学、尸体解剖学、犯罪心理学之大成的教科书式破案小说。有时真相让人毛骨悚然，有时真相让人热泪盈眶。——————39桩大案要案、...', 0, 's34977889.jpg', NULL);
INSERT INTO `user_book`
VALUES (1381, 0, 0, '尤利西斯', '[爱尔兰] 乔伊斯 / 金隄 ', '9.1', 2012, ' 人民文学出版社 ', ' 2012-5 ', ' 79.00元',
        '《尤利西斯》是爱尔兰意识流文学作家詹姆斯·乔伊斯(JamesJoyce)于1922年出版的长篇小说。小说以时间为顺序，描述了主人公，苦闷彷徨的都柏林小市民...', 0, 's5958737.jpg', NULL);
INSERT INTO `user_book`
VALUES (1382, 0, 0, '没有人给他写信的上校', '[哥伦比亚] 加西亚·马尔克斯 / 陶玉平 ', '8.5', 22711, ' 南海出版公司 ', ' 2013-5 ', ' 19.50元',
        '★五十六年了，上校唯一做过的事情就是等待。★《没有人给他写信的上校》我写了九遍，它是我所有作品中最无懈可击的，可以面对任何敌人。——加西亚•马尔克斯...', 0, 's20392523.jpg', NULL);
INSERT INTO `user_book`
VALUES (1383, 0, 0, '在路上', '[美] 杰克·凯鲁亚克 / 王永年 ', '7.8', 45030, ' 上海译文出版社 ', ' 2006-10 ', ' 28.00元',
        '青年学生萨尔为追求个性自由，与狄安（以卡萨迪为原型）、玛丽露等一伙男女开车横穿全美，一路狂喝滥饮，耽迷酒色，流浪吸毒，性放纵，在经过精疲力竭的漫长放荡后，开...', 0, 's1917972.jpg', NULL);
INSERT INTO `user_book`
VALUES (1384, 0, 0, '2666', '[智利] 罗贝托·波拉尼奥 / 赵德明 ', '8.7', 3844, ' 上海人民出版社 ', ' 2012-1-1 ', ' 98.00元',
        '美国全国书评人协会最佳小说奖《纽约时报》年度十佳图书之首《时代》周刊年度最佳小说《洛杉矶时报》年度最佳小说《旧金山纪事报》年度50部最佳小说《西雅...', 0, 's6800379.jpg', NULL);
INSERT INTO `user_book`
VALUES (1385, 0, 0, '红楼梦', '曹雪芹 ', '9.8', 2609, ' 人民文学出版社 ', ' 2018-1-1 ', ' CNY 260.00',
        '《红楼梦》，中国古代古代四大名著之一，也是中国古代小说的巅峰之作。全书以荣国府的日常生活为中心，以宝玉、黛玉、宝钗的爱情婚姻悲剧及大观园中点滴琐事为主线，以...', 0, 's30137806.jpg', NULL);
INSERT INTO `user_book`
VALUES (1386, 0, 0, '米格尔街', 'V.S.奈保尔 (V.S.Naipaul) / 张琪 ', '8.5', 8603, ' 南海出版公司 ', ' 2013-7 ', ' CNY 28.00',
        '☆生活如此绝望，每个人却都兴高采烈地活着/米格尔街和米格尔街上人，都像盐一样平凡，像盐一样珍贵！☆诺贝尔文学奖得主V.S.奈保尔成名作，获...', 0, 's21346008.jpg', NULL);
INSERT INTO `user_book`
VALUES (1387, 0, 0, '世界的凛冬', '[英] 肯·福莱特 / 陈杰 ', '8.8', 19529, ' 江苏凤凰文艺出版社 ', ' 2017-3-1 ', ' 132.00（全三册）',
        '我亲眼目睹，每一个迈向死亡的生命都在热烈地生长。全球读者平均3个通宵读完的超级小说《巨人的陨落》的续篇！火遍全球的20世纪人类史诗“世纪三部曲”第二部。...', 0, 's26957760.jpg', NULL);
INSERT INTO `user_book`
VALUES (1388, 0, 0, '远山淡影', '[英] 石黑一雄 / 张晓意 ', '8.2', 20386, ' 上海译文出版社 ', ' 2011-5 ', ' 27.00元',
        '本书是石黑一雄处女作，一部问世30年仍在不断重印的名作。小说通过一个移居英国的日本寡妇对故土、故人的回忆，讲述了战后长崎一对饱受磨难的母女渴望安定与新生，却...', 0, 's5988624.jpg', NULL);
INSERT INTO `user_book`
VALUES (1389, 0, 0, '哈利·波特与凤凰社', '[英] J. K. 罗琳 / 马爱农、马爱新、蔡文 ', '8.7', 106371, ' 人民文学出版社 ', ' 2003-9 ', ' 59.00元',
        '《哈利·波特与凤凰社》是“哈利·波特”系列的第五部。漫长的暑假，哈利·波特被困在女贞路4号，意外地遭到摄魂怪的袭击……逃过一劫的哈利被护送到伦敦一个秘密的...', 0, 's1013129.jpg', NULL);
INSERT INTO `user_book`
VALUES (1390, 0, 0, '八百万种死法', '[美] 劳伦斯·布洛克 / 潘源、王默 等 ', '7.7', 7593, ' 新星出版社 ', ' 2006-9 ', ' 29.00元',
        '《八百万种死法》里的八百万其实是指纽约市里八百万市民。作者在书中经常写出各种离奇古怪的死法———只是在家里看电视却会无辜被炸死、跟相邻几十年的邻居会因一只新...', 0, 's1867064.jpg', NULL);
INSERT INTO `user_book`
VALUES (1391, 0, 0, '那些回不去的年少时光', '桐华 ', '8.4', 48703, ' 江苏文艺出版社 ', ' 2010-01 ', ' 23.80元',
        '最值得珍藏的怀旧读物，写给年少自己的书，纪念我们共同的青春和成长您还记得上世纪最后十年的青春是怎样吗？那可是我们独一无二的成长！那些回不去的年少时光》以...', 0, 's4231381.jpg', NULL);
INSERT INTO `user_book`
VALUES (1392, 0, 0, '城南旧事', '林海音 ', '9.1', 13178, ' 人民文学出版社 ', ' 2008-5 ', ' 13.00元',
        '《城南旧事》是著名作家林海音女士的经典自传体小说，初版于1960年。她以超逸的文字风格，饶具魔力的文笔，透过英子童稚的双眼观看大人世界的喜怒哀乐、悲欢离合，...', 0, 's3057333.jpg', NULL);
INSERT INTO `user_book`
VALUES (1393, 0, 0, '愤怒的葡萄', '[美]约翰·斯坦贝克 / 王一凡 ', '9.2', 1190, ' 湖南文艺出版社 ', ' 2019-6 ', ' 69.00元',
        '没有《愤怒的葡萄》，就不会有《追风筝的人》！──卡勒德•胡赛尼·诺贝尔文学奖得主约翰·斯坦贝克的经典名著，荣获美国国家图书奖、普利策奖双项大奖。·...', 0, 's33395266.jpg', NULL);
INSERT INTO `user_book`
VALUES (1394, 0, 0, '荒原狼', '[德]赫尔曼·黑塞 / 赵登荣、倪诚恩 ', '9.0', 10143, ' 上海译文出版社 ', ' 2008-7 ', ' 13.00',
        '小说的主人公哈勒尔是个正直的作家，他鄙视现代社会生活方式，常常闭门不出，令人窒息的空气使他陷于精神分裂的境地。一天他偶尔读到一本《评荒原狼》的小书，顿觉大梦...', 0, 's3131626.jpg', NULL);
INSERT INTO `user_book`
VALUES (1395, 0, 0, '春山', '何大草 ', '8.2', 295, ' 北京联合出版公司 ', ' 2020-6-1 ', ' 39.80',
        '《春山》生动再现了诗人王维的晚年生活，他与裴迪的日常与复杂情感，他与一二友人的交往，以及他不为人知的内心世界。诗与禅是探究王维内心宇宙的两把钥匙，它们包裹着...', 0, 's35005098.jpg', NULL);
INSERT INTO `user_book`
VALUES (1396, 0, 0, '一个人张灯结彩', '田耳 ', '7.5', 2894, ' 作家出版社 ', ' 2017-9-1 ', ' 38.00元',
        '一个落魄执拗的警察，一个单纯美丽的哑女，一个放荡不羁的抢劫犯，他们的生活本来并无交集，却因为一个理发店、一桩命案、一个未完成的炸药包而紧紧地纠结一起。警察...', 0, 's30172690.jpg', NULL);
INSERT INTO `user_book`
VALUES (1397, 0, 0, '洞穴奇案', '[美] 萨伯 / 陈福勇、张世泰 ', '9.1', 6395, ' 生活·读书·新知三联书店 ', ' 2009-06 ', ' 18.00',
        '五名洞穴探险人受困山洞，水尽粮绝，无法在短期内获救。为了维生以待救援，大家约定抽签吃掉其中一人，牺牲他以救活其余四人。威特摩尔是这～方案的最初提议人，但在抽...', 0, 's3697494.jpg', NULL);
INSERT INTO `user_book`
VALUES (1398, 0, 0, '家', '巴金 ', '8.2', 21303, ' 人民文学出版社 ', ' 1981-09-01 ', ' 29.00元',
        '巴金原名李尧棠，字芾甘。生于1904年，四川成都人，现代著名作家。他从小生活在一个官僚地主家庭里，目睹了种种丑恶的社会现象。“五四”运动使他打开眼界，树立起...', 0, 's1082522.jpg', NULL);
INSERT INTO `user_book`
VALUES (1399, 0, 0, '祈祷落幕时', '(日)东野圭吾 / 代珂 ', '7.7', 29537, ' 南海出版公司 ', ' 2015-1 ', ' 39.50元',
        '★渴望幸福的祈祷一重又一重，终有落幕之时。★东野圭吾感人至深的亲情力作★获2014年吉川英治文学奖，上市第1周即登上纪伊国屋书店畅销榜第1名★...', 0, 's26118072.jpg', NULL);
INSERT INTO `user_book`
VALUES (1400, 0, 0, '包法利夫人', '福楼拜 / 李健吾 ', '8.1', 21940, ' 人民文学出版社 ', ' 2003-01 ', ' 12.00',
        '长篇小说《包法利夫人》是福楼拜的代表作。作者以简洁而细腻的文笔，通过一个富有激情的女子爱玛的经历，再现了１９世纪中期法国的社会生活。《包法利夫人》的艺术形式...', 0, 's1083477.jpg', NULL);
INSERT INTO `user_book`
VALUES (1401, 0, 0, '醉步男', '[日]小林泰三 / 丁丁虫 ', '8.5', 6961, ' 北京时代华文书局 ', ' 2019-10-1 ', ' 49.00',
        '本书收录时间旅行小说《醉步男》+日式恐怖小说《玩具修理者》。——————————————血沼，我以后大概都不会和你相遇了。话没说完，小竹田在我眼前消失...', 0, 's30359030.jpg', NULL);
INSERT INTO `user_book`
VALUES (1402, 0, 0, '熊镇', '[瑞典] 弗雷德里克·巴克曼 / 郭腾坚 ', '8.0', 6110, ' 四川文艺出版社 ', ' 2019-1 ', ' 45',
        '熊镇是一个小镇，它偏远，落寞，冬天很长，雪很多，镇上的人们，懂得沉默和忍耐；熊镇是一个小镇，一座冰球馆，几个家庭，一个酒吧，一片森林，一个男孩和一个女孩，一...', 0, 's30366534.jpg', NULL);
INSERT INTO `user_book`
VALUES (1403, 0, 0, '我们仨', '杨绛 ', '8.7', 236764, ' 生活·读书·新知三联书店 ', ' 2003-7 ', ' 18.80元',
        '《我们仨》是钱钟书夫人杨绛撰写的家庭生活回忆录。1998年，钱钟书逝世，而他和杨绛唯一的女儿钱瑗已于此前（1997年）先他们而去。在人生的伴侣离去四年后，杨...', 0, 's1023045.jpg', NULL);
INSERT INTO `user_book`
VALUES (1404, 0, 0, '佐贺的超级阿嬷', '[日] 岛田洋七 / 陈宝莲 ', '8.7', 18160, ' 南海出版公司 ', ' 2007-3 ', ' 20.00元',
        '因为无力扶养，母亲将年仅八岁的昭广寄养到佐贺乡下的外婆家，没想到迎接他的却是一间破烂茅屋！在那物质匮乏的日子里，乐观的外婆却总有神奇的办法让生活过下去，始终...', 0, 's2008284.jpg', NULL);
INSERT INTO `user_book`
VALUES (1405, 0, 0, '棋王·树王·孩子王', '阿城 ', '9.2', 8426, ' 江苏文艺出版社 ', ' 2016-3-1 ', ' 58.00',
        '此次出版的是阿城先生亲自编订的最新版本，增添了许多以往版本所不具备的内容。内容包括以往版本都有的《棋王》《树王》《孩子王》三篇中篇小说，以及以往版本所不具...', 0, 's26734559.jpg', NULL);
INSERT INTO `user_book`
VALUES (1406, 0, 0, '鬼吹灯之昆仑神宫', '天下霸唱 ', '7.9', 26884, ' 安徽文艺出版社 ', ' 2006-12 ', ' 28.00元',
        '《鬼吹灯》是部奇书，小说中作者首创历史上四大盗墓门派——摸金、卸岭、发丘、搬山，其中摸金是技术含量最高，规矩最多的门派。“人点烛，鬼吹灯”是传说中摸金派的不...', 0, 's1938591.jpg', NULL);
INSERT INTO `user_book`
VALUES (1407, 0, 0, '白色橄榄树', '玖月晞 ', '8.7', 2471, ' 百花洲文艺出版社 ', ' 2019-4 ', ' 69.80元',
        '宋记者跟她外表看着不太一样。宋记者做事很认真。宋记者有点儿可爱。今天看到白色橄榄树了，和宋记者一起。很特别。新年愿望，跟她结婚。——李瓒阿瓒，你...', 0, 's33401169.jpg', NULL);
INSERT INTO `user_book`
VALUES (1408, 0, 0, '暗室手册', '(美) 耶日·科辛斯基  (Jerzy Kosinski) / 杨向荣 ', '8.5', 208, ' 上海人民出版社 ', ' 2020-4-20 ', ' 49.00元',
        '☆1969年美国国家图书奖获奖作品，被誉为与卡夫卡、塞利纳媲美的黑色寓言经典。☆作者耶日·科辛斯基一生充满神秘与传奇。他是“二战”大屠杀中的幸存者，也...', 0, 's34991772.jpg', NULL);
INSERT INTO `user_book`
VALUES (1409, 0, 0, '低智商犯罪', '紫金陈 ', '7.2', 986, ' 天津人民出版社 ', ' 2020-3 ', ' 48.00元',
        '城市的角落，两个愚蠢的盗贼为了江湖地位，要做一桩扬名立万的大案……名利场中，一群老谋深算的大人物各怀鬼胎，暗地设局，展开了不可告人的交锋……公安局里，一...', 0, 's34996662.jpg', NULL);
INSERT INTO `user_book`
VALUES (1410, 0, 0, '镇魂', 'Priest ', '8.3', 2371, ' 贵州人民出版社 ', ' 2019-5 ', ' 49.80元',
        '日冕一天转一圈，日头就东升西落一次，周而复始，象征着生生不息，轮回不止的意思。——《轮回晷》自洪荒伊始，万物开蒙，就有善恶，而最早的善恶判，就是刻在山河锥...', 0, 's33456675.jpg', NULL);
INSERT INTO `user_book`
VALUES (1411, 0, 0, '教父', '[美]马里奥·普佐 / 周汉林 ', '9.0', 31206, ' 译林出版社 ', ' 1997-8 ', ' 23.30元',
        '《教父》这部小说的不同凡响的艺术魅力就在于：尽管描写的全是坏蛋，但作者曲尽妙笔，竟然能让读者不痛恨个别坏蛋，而痛恨整个龌龊的社会结构。教父及其继承人——他的...', 0, 's1092335.jpg', NULL);
INSERT INTO `user_book`
VALUES (1412, 0, 0, '她的小梨窝', '唧唧的猫 ', '6.5', 1725, ' 百花洲文艺出版社 ', ' 2018-5 ', ' 36.80元',
        '人活在记忆里，爱活在爱里许呦：那是在盛夏的一天认识你，以为你桀骜不驯,害怕和你同桌。以为你风流成性，害怕对你动心。当我再次遇到你时做不到像朋友一样和你问...', 0, 's30205673.jpg', NULL);
INSERT INTO `user_book`
VALUES (1413, 0, 0, '罗杰疑案', '[英] 阿加莎·克里斯蒂 / 张江云 ', '8.9', 27004, ' 人民文学出版社 ', ' 2006-5 ', ' 21.00元',
        '罗杰·艾克罗伊德是个知道得太多的人。他知道他爱着的女人毒死了她的第一个丈夫。他知道有人在敲诈她——现在他知道她因服用过量药物而自杀身亡。晚班邮件很快就会...', 0, 's1807516.jpg', NULL);
INSERT INTO `user_book`
VALUES (1414, 0, 0, '被嫌弃的松子的一生', '[日] 山田宗树 / 王蕴洁、刘珮瑄 ', '8.6', 7712, ' 文治图书·四川文艺出版社 ', ' 2018-5 ', ' 45.0元',
        '★每个勇敢去爱的灵魂，都本该被世界温柔相待★电影史上永恒的经典《被嫌弃的松子的一生》原著小说★日本发行逾130万册，中国大陆首次正版授权引进！★“社会...', 0, 's27110733.jpg', NULL);
INSERT INTO `user_book`
VALUES (1415, 0, 0, '且听风吟', '[日] 村上春树 / 林少华 ', '7.8', 57041, ' 上海译文出版社 ', ' 2001-8 ', ' 11.80元',
        '《且听风吟》是村上春树的成名作，他是以这部中篇开始文学创作的。小说的情节并不很复杂。“我”在酒吧喝酒，去卫生间时见一少女醉倒在地，遂就其护送回家，翌日少女...', 0, 's1039752.jpg', NULL);
INSERT INTO `user_book`
VALUES (1416, 0, 0, '摆渡人2重返荒原', '【英】克莱儿·麦克福尔 / 付强 ', '6.3', 9010, ' 百花洲文艺出版社 ', ' 2017-9 ', ' 42.8元',
        '在上一部中，单亲女孩迪伦，15岁的她，世界却一片狼藉：与母亲总是无话可说，在学校里经常受到同学的捉弄，唯一谈得来的好友也因为转学离开了。这一切都让迪伦感到无...', 0, 's27134325.jpg', NULL);
INSERT INTO `user_book`
VALUES (1417, 0, 0, '清明上河图密码', '冶文彪 ', '8.2', 13522, ' 北京联合出版公司 ', ' 2015-1-1 ', ' 49.90元',
        '全图824位人物，每个人都有名有姓，佯装、埋伏在舟船车轿、酒肆楼阁中。看似太平盛世，其实杀机四伏。翻开本书，在小贩的叫卖声中，金、辽、西夏、高丽等国的间谍、...', 0, 's26265745.jpg', NULL);
INSERT INTO `user_book`
VALUES (1418, 0, 0, '虚无的十字架', '[日] 东野圭吾 / 王蕴洁 ', '7.5', 41077, ' 湖南文艺出版社 ', ' 2015-6 ', ' 39.80元',
        '所谓的“罪”与“罚”究竟本质为何？是让犯人听到自己的死刑宣判而感到解脱？还是，让他重返自由社会、但用尽一生赎罪？爱女被杀害的道正与小夜子夫妻在凶手被宣...', 0, 's26413027.jpg', NULL);
INSERT INTO `user_book`
VALUES (1419, 0, 0, '4321', '[美] 保罗·奥斯特 / 李鹏程 ', '8.7', 1557, ' 九州出版社 ', ' 2019-1 ', ' 128.00',
        '四重人生变奏，一个辉煌构想。美国当代小说大师保罗·奥斯特迄今最具雄心超级长篇。如果人生不止一生。.《纽约时报》•《洛杉矶时报》•《波士顿环球报》•《...', 0, 's30254236.jpg', NULL);
INSERT INTO `user_book`
VALUES (1420, 0, 0, '你好，旧时光', '八月长安 ', '8.5', 9399, ' 长江文艺出版社 ', ' 2015-10 ', ' 86',
        '八月长安经典之作，六周年珍藏版。赠旧时光手绘卡六张。2015年全新修订，透明PVC盒装全三册。完美的青春共鸣文本，写给所有人的记忆之书。彼得潘终于走完...', 0, 's26591331.jpg', NULL);
INSERT INTO `user_book`
VALUES (1421, 0, 0, '一九八四', '[英]乔治·奥威尔 / 董乐山 ', '9.4', 14327, ' 上海译文出版社 ', ' 2009-7 ', ' 29.00元',
        '《一九八四》（1949）是奥威尔的传世之作，堪称世界文坛最著名的反乌托邦、反极权的政治讽喻小说。他在小说中创造的“老大哥”、“双重思想”、“新话”等词汇都已...', 0, 's3815131.jpg', NULL);
INSERT INTO `user_book`
VALUES (1422, 0, 0, '雪落香杉树', '[美] 戴维·伽特森 / 熊裕 ', '8.3', 8365, ' 全本书店|作家出版社 ', ' 2017-6 ', ' 52.00元',
        '编辑推荐:1995福克纳奖得主占据《纽约时报》畅销榜首数月美国书商协会年度之选被译成30余种文字，全球畅销500万册当代美国文学史上罕见的超级畅销...', 0, 's5431784.jpg', NULL);
INSERT INTO `user_book`
VALUES (1423, 0, 0, '人生删除事务所', '[日] 本多孝好 / 吕灵芝 ', '7.4', 524, ' 文治图书·四川文艺出版社 ', ' 2020-6 ', ' 45',
        '你想好死后如何处理自己的手机、电脑、社交账号了吗？「死后，你不想示人的数据由我们来删除。」——人生删除事务所不仅是数据，更是我们活过的痕迹。~~~...', 0, 's34799802.jpg', NULL);
INSERT INTO `user_book`
VALUES (1424, 0, 0, '紫与黑', '[英] K.J.帕克 / 沈恺宇 ', '9.5', 193, ' 四川科学技术出版社 ', ' 2020-4 ', ' 69.00元',
        '收录了作者K.J.帕克的八篇中短篇小说：《紫与黑》《蓝与金》《以爱之名》《借人以图》《胜者恒强》《婴儿与洗澡水》《艺术家的肖像》《最熟悉的魔鬼》《紫与黑》...', 0, 's34841936.jpg', NULL);
INSERT INTO `user_book`
VALUES (1425, 0, 0, '聊天记录', '[爱尔兰]萨莉·鲁尼 / 钟娜 ', '7.1', 3921, ' 上海译文出版社 ', ' 2019-7-15 ', ' 49.8',
        '千禧一代的代言人英国图书奖、科斯塔图书奖有史以来最年轻的获奖者九零后爱尔兰女作家萨莉•鲁尼力作网络交流文体精准捕捉当下青年现状横扫社交平台的惊喜之作...', 0, 's33422832.jpg', NULL);
INSERT INTO `user_book`
VALUES (1426, 0, 0, '平凡的世界', '路遥 ', '9.1', 15622, ' 北京十月文艺出版社 ', ' 2013-5 ', ' 99.00元',
        '《路遥全集:平凡的世界(套装共3册)》是一部现实主义小说，也是小说化的家族史。作家高度浓缩了中国西北农村的历史变迁过程，作品达到了思想性与艺术性的高度统一，...', 0, 's24380577.jpg', NULL);
INSERT INTO `user_book`
VALUES (1427, 0, 0, '红玫瑰与白玫瑰', '张爱玲 ', '8.7', 12162, ' 北京十月文艺出版社 ', ' 2012-6 ', ' 28.00元',
        '《红玫瑰与白玫瑰》收录了张爱玲1944年的中短篇小说作品。“也许每一个男子全都有过这样的两个女人，至少两个。娶了红玫瑰，久而久之，红的变了墙上的一抹蚊子血，...', 0, 's10757939.jpg', NULL);
INSERT INTO `user_book`
VALUES (1428, 0, 0, '异乡人', '(法) 加缪 / 张一乔 ', '9.0', 17162, ' 北京大学出版社 ', ' 2015-1-1 ', ' 28',
        '他们说，妈妈死了，我没哭；这是无情，该死。隔天就和女友厮混；这是不孝，该死。挑拨朋友仇家互斗；这是不义，该死。我合该天地不容，人神共愤，但你们企图用来拯救我...', 0, 's26276775.jpg', NULL);
INSERT INTO `user_book`
VALUES (1429, 0, 0, '悟空传', '今何在 ', '8.3', 112631, ' 光明日报出版社 ', ' 2001-4 ', ' 14.80元',
        '猪八戒和孙悟空虽然都神通广大，但在命运面前终究是软弱无力的小人物。顶天立地的美猴王实际上仍然是那个充满惊恐的小猴子，而决心与命运抗争的天蓬若非紧急也终究不肯...', 0, 's1003000.jpg', NULL);
INSERT INTO `user_book`
VALUES (1430, 0, 0, '你的夏天还好吗？', '[韩]金爱烂 / 薛舟 ', '8.7', 2645, ' 人民文学出版社 ', ' 2017-1 ', ' 32.00',
        '“韩国八零后天才女作家”金爱烂累积五年的八段人生《你的夏天还好吗？》是金爱烂的第三部短篇小说集，共收入八篇作品。书中形形色色的人物大多面临绝境，赤裸裸地暴...', 0, 's26953294.jpg', NULL);
INSERT INTO `user_book`
VALUES (1431, 0, 0, '大雪将至', '[奥地利]罗伯特•泽塔勒 / 刘秋叶 ', '8.3', 2798, ' 南海出版公司 ', ' 2018-6 ', ' 39',
        '★一部打动西方人灵魂的作品★2011年德国格林美尔斯豪森奖★2016年布克国际奖短名单★全球30余家权威媒体倾力推荐：因为罗伯特•泽塔勒，奥地利当代文...', 0, 's27115714.jpg', NULL);
INSERT INTO `user_book`
VALUES (1432, 0, 0, '飞行家', '双雪涛 ', '8.1', 7556, ' 广西师范大学出版社 ', ' 2017-8 ', ' 45.00元',
        '1.2017年最值得期待的国内原创小说——这里有村上春树的奇巧构思、王小波的幽默腔调、双雪涛的北方故事。用锋刃般的语言勾勒丰富的画面，给每个故事设计奇异精...', 0, 's27116235.jpg', NULL);
INSERT INTO `user_book`
VALUES (1433, 0, 0, '乌暗暝', '黄锦树 ', '8.8', 579, ' 后浪 | 上海文艺出版社 ', ' 2020-1 ', ' 59.00元',
        '调度不同的时间刻度，重新把灰烬还原为火北京大学“世界华文文学奖”获奖作品《雨》作者马华文学重量级作家黄锦树早期代表作品全收录※内容简介※《乌暗暝》...', 0, 's34858187.jpg', NULL);
INSERT INTO `user_book`
VALUES (1434, 0, 0, '余生，请多指教', '柏林石匠 ', '6.6', 4948, ' 百花洲文艺出版社 ', ' 2016-10 ', ' 32.00元',
        '曾经以为，自己这辈子都等不到了——世界这么大，我又走得这么慢，要是遇不到良人要怎么办？早过了“全球三十几亿男人，中国七亿男人，天涯何处无芳草”的猖狂岁月，...', 0, 's26872990.jpg', NULL);
INSERT INTO `user_book`
VALUES (1435, 0, 0, '蝇王', '[英] 威廉·戈尔丁 / 龚志成 ', '8.2', 9549, ' 上海译文出版社 ', ' 2006-8 ', ' 13.00元',
        '《蝇王》描述在一场未来的核战争中，一架飞机带着一群孩子从本土飞到南方疏散。飞机被击落，孩子们乘坐的机舱落到一座世外桃源般的、荒无人烟的珊瑚岛上。起初孩子们齐...', 0, 's1872158.jpg', NULL);
INSERT INTO `user_book`
VALUES (1436, 0, 0, '私恋失调', '倪闻天 ', '7.9', 242, ' 中信出版集团 ', ' 2020-4 ', ' 59.80',
        '●渣的真相是什么？少有的男性视角，抽丝剥茧般分离出爱情中的逃避和卑劣，这是正在发生的爱情，不被传统约束，更自由也更理性承诺、家庭、生儿育女，不如信号满格...', 0, 's34947567.jpg', NULL);
INSERT INTO `user_book`
VALUES (1437, 0, 0, '绿毛水怪', '王小波 ', '9.0', 14888, ' 时代文艺出版社 ', ' 2009-1 ', ' 30.00元',
        '《绿毛水怪》作者王小波的作品一直盛行不衰，王小波的小说在世界文学之林中创造出属于他的美，这美就像一束强光，刺穿了时间的阻隔，启迪了一代又一代刚刚开始识字读书...', 0, 's3518332.jpg', NULL);
INSERT INTO `user_book`
VALUES (1438, 0, 0, '长相思', '桐华 ', '8.1', 11408, ' 湖南文艺出版社 ', ' 2013-2 ', ' 35.00元',
        '生命是一场又一场的相遇和别离，是一次又一次的遗忘和开始，可总有些事，一旦发生，就留下印迹；总有个人，一旦来过，就无法忘记。如果一切都是命中注定，在小夭和涂...', 0, 's21242062.jpg', NULL);
INSERT INTO `user_book`
VALUES (1439, 0, 0, '查理九世1·黑贝街的亡灵', '雷欧幻像 ', '7.8', 2337, ' 浙江少年儿童出版社 ', ' 2011-1 ', ' 15.00元',
        '墨多多是个好奇又贪玩的小孩，老师和同学眼中的“问题多多”自从一只奇怪的贱狗“查理九世”来到墨多多的家，事情就不对劲儿了，一系列令人惊叫不已的事件发生了：一本...', 0, 's5912701.jpg', NULL);
INSERT INTO `user_book`
VALUES (1440, 0, 0, '绿山墙的安妮', '[加] 露西·莫德·蒙哥玛利 / 马爱农 ', '9.1', 8842, ' 浙江文艺出版社 ', ' 2003-01 ', ' 15.00元',
        '一部最甜蜜的描写儿童生活的小说。安妮是个身世凄凉的小女孩，出生不久即父母双亡，成了孤儿。好心的邻居把她养到六岁之后她又到另一户人家看孩子，后来被送到了孤儿院...', 0, 's1064841.jpg', NULL);
INSERT INTO `user_book`
VALUES (1441, 0, 0, '坟场之书', '[英] 尼尔·盖曼、张晓雨 (插图作者) / 胡雅倩 ', '8.3', 3267, ' 四川科学技术出版社 ', ' 2010-3 ', ' 21.00元',
        '一个婴儿。一座坟场。一次刺杀的结束，一个传奇的开始。在墓园里。有幽灵。有食尸鬼。还有神秘的守护者。连死神也亲自出马。（不用担心。她是一位和蔼的女士。）在人世...', 0, 's4219125.jpg', NULL);
INSERT INTO `user_book`
VALUES (1442, 0, 0, '默读.3', 'Priest ', '8.5', 5604, ' 北京联合出版公司 ', ' 2018-8 ', ' 48.00元',
        '童年，成长经历，家庭背景，社会关系，创伤……我们不断追溯与求索犯罪者的动机，探寻其中*幽微的喜怒哀乐，不是为了设身处地地同情、乃至于原谅他们，不是为了给罪...', 0, 's30307059.jpg', NULL);
INSERT INTO `user_book`
VALUES (1443, 0, 0, '静物', '[英] A. S. 拜厄特 / 黄协安 ', '8.3', 105, ' 上海文艺出版社 ', ' 2020-3 ', ' 88.00元',
        '【故事简介】1950年代的英国，一对出身于知识精英家庭的姐妹，步入了人生的新阶段：婚后，姐姐斯蒂芬妮的世界越来越狭小：充斥着丈夫的疲惫牢骚、婆婆的刻薄刁...', 0, 's34956569.jpg', NULL);
INSERT INTO `user_book`
VALUES (1444, 0, 0, '尼罗河上的惨案', '[英] 阿加莎·克里斯蒂 / 宫英海 ', '8.7', 35639, ' 人民文学出版社 ', ' 2006-5 ', ' 22.00元',
        '林内特·里奇维被一颗子弹打穿了头颅，尼罗河之旅的宁静也因此被打破。这位年轻，美丽，时尚——拥有一切的女孩，最终失去了自己的生命。赫尔克里·波洛的耳边回响着...', 0, 's1818347.jpg', NULL);
INSERT INTO `user_book`
VALUES (1445, 0, 0, '主角', '陈彦 ', '7.6', 3089, ' 作家出版社 ', ' 2018-1 ', ' 85.00元',
        '《主角》是一部动人心魄的命运之书。作者以扎实细腻的笔触，尽态极妍地叙述了秦腔名伶忆秦娥近半个世纪人生的兴衰际遇、起废沉浮，及其与秦腔及大历史的起起落落之间的...', 0, 's30137612.jpg', NULL);
INSERT INTO `user_book`
VALUES (1446, 0, 0, '香水', '[德] 帕·聚斯金德 / 李清华 ', '8.9', 12042, ' 上海译文出版社 ', ' 2009-6 ', ' 25.00元',
        '本书描述格雷诺耶自幼受苦，生有特殊的嗅觉功能，领悟惟有少女的体香能使人神魂颠倒，他先后杀死26名少女，萃取她们的体味制出神奇的香水。当他罪行败露押赴刑场时，...', 0, 's3815125.jpg', NULL);
INSERT INTO `user_book`
VALUES (1447, 0, 0, '龙族Ⅰ', '江南 ', '7.6', 22871, ' 长江出版社 ', ' 2010-4 ', ' 24.80元',
        '他以为他将这样度过一生，他以为他始终只是个衰小孩。但是，一封来自卡塞尔学院的录取通知书改变了他的一生。云层里透出神秘的吟唱：你也有神奇的父母，你也有热血的同...', 0, 's4737329.jpg', NULL);
INSERT INTO `user_book`
VALUES (1448, 0, 0, '银河帝国：基地七部曲', '[美] 艾萨克·阿西莫夫 / 叶李华 ', '9.5', 4848, ' 江苏凤凰文艺出版社 ', ' 2015-10-1 ', ' 328.00元',
        '人类蜗居在银河系的一个小角落——太阳系，在围绕太阳旋转的第三颗行星上，生活了十多万年之久。人类在这个小小的行星（他们称之为“地球”）上，建立了两百多个...', 0, 's26389895.jpg', NULL);
INSERT INTO `user_book`
VALUES (1449, 0, 0, '群山回唱', '[美] 卡勒德·胡赛尼 / 康慨 ', '8.4', 19261, ' 上海人民出版社 ', ' 2013-8 ', ' 36.00元',
        '《群山回唱》（AndtheMountainsEchoed）讲述了一对兄妹因贫穷和战争铸成的六十年悲欢离合。围绕父母、兄妹、甚至表亲和继母，他们如何去爱...', 0, 's24845582.jpg', NULL);
INSERT INTO `user_book`
VALUES (1450, 0, 0, '十二年故人戏', '墨宝非宝 ', '8.5', 3557, ' 江苏凤凰文艺出版社 ', ' 2019-3 ', ' 79.80元',
        '经年一曲故人戏，你我皆是戏中人。初遇的傅三爷，是为捧人包下半个场子，喜欢翘着个二郎腿，偏过头去和身边人低语的公子哥。在那灯影里的侧脸，透着一种消沉的风流。...', 0, 's30473240.jpg', NULL);
INSERT INTO `user_book`
VALUES (1451, 0, 0, '妻妾成群', '苏童 ', '8.2', 32362, ' 上海文艺出版社 ', ' 2004-8 ', ' 23.00元',
        '《妻妾成群》借旧中国特有的封建家庭模式作小说的框架，一个男人娶了四个女人做太太。但作者关心的不是一个男人如何在四个女人中周旋，如何控制她们，而是关心四个女人...', 0, 's1025753.jpg', NULL);
INSERT INTO `user_book`
VALUES (1452, 0, 0, '剖开您是我的荣幸', '[日]皆川博子 / 曲岚、王小禾 ', '8.0', 255, ' 新星出版社 ', ' 2020-5 ', ' 58.00元',
        '◎直木奖、推理作家协会奖、本格推理大奖得主皆川博子，创作生涯五十余载巅峰之作！◎同时入围“这本推理小说了不起！”“本格推理BEST10”“《周刊文春》年...', 0, 's34985448.jpg', NULL);
INSERT INTO `user_book`
VALUES (1453, 0, 0, '十一种孤独', '（美）理查德·耶茨、Richard Yates / 陈新宇 ', '8.2', 20320, ' 上海译文出版社 ', ' 2010-1 ', ' 20.00元',
        '“我根本不敢肯定这间房子有没有窗户……上帝知道，伯尼，上帝知道这儿当然在哪儿会有窗户的，一扇我们大家的窗户。”《十一种孤独》以冷峻的笔触描写了美国二战后五...', 0, 's4105446.jpg', NULL);
INSERT INTO `user_book`
VALUES (1454, 0, 0, '闪闪发光的人生', '[日]小川糸 / 吴曦 ', '7.5', 4697, ' 湖南文艺出版社 ', ' 2019-1-31 ', ' 48.00元',
        '★2018年日本书店大奖重磅推荐！★日本全国700多家书店店员投票选出的很想卖的书！★日本疗愈系代表作家小川糸，用手写信串联起人生的美妙。★《山茶文...', 0, 's30255971.jpg', NULL);
INSERT INTO `user_book`
VALUES (1455, 0, 0, '生死场', '萧红 ', '8.2', 12706, ' 人民文学出版社 ', ' 2005-5-1 ', ' 11.00',
        '《生死场》是萧红一部传世的经典名篇，它对人性、人的生存这一古老的问题进行了透彻而深邃的诠释。这种对人生的生存死亡的思索，超出了同时代的绝大部分作家。鲁迅称它...', 0, 's1317899.jpg', NULL);
INSERT INTO `user_book`
VALUES (1456, 0, 0, '帝国游戏', '[智利] 罗贝托·波拉尼奥 / 汪天艾 ', '9.0', 113, ' 上海人民出版社 ', ' 2020-5 ', ' 69.00元',
        '☆波拉尼奥备受瞩目的早期杰作，《2666》创作主题的先声☆真实与虚构的边界正在这场游戏里变得迷糊，而欲望与恐惧却愈见清晰可触--------------...', 0, 's34917793.jpg', NULL);
INSERT INTO `user_book`
VALUES (1457, 0, 0, '魔道祖師 四', '墨香銅臭 ', '8.0', 3292, ' 平心工作室 ', ' 2016-12-8 ', ' NT330元',
        '隨書附贈精美明信片一張自亂葬崗歷劫歸來，魏無羨首次回到蓮花塢，原是滿懷興奮地向藍忘機介紹自己的成長之地，可滿腔的懷念之情，卻在江澄的一通發作下被消融殆...', 0, 's26924201.jpg', NULL);
INSERT INTO `user_book`
VALUES (1458, 0, 0, '簪中录', '侧侧轻寒 ', '7.9', 11109, ' 江苏凤凰文艺出版社 ', ' 2015-1-1 ', ' 30.00',
        '唐朝懿宗年间,名闻天下的女探黄梓瑕,一夜之间从破案才女变为毒杀全家的凶手，成为海捕文书上各地捉拿的通缉犯。李舒白贵为皇子，却身遭“鳏残孤独废疾”的诅咒，难...', 0, 's26284304.jpg', NULL);
INSERT INTO `user_book`
VALUES (1459, 0, 0, '朝花夕拾', '鲁迅 ', '8.8', 83804, ' 人民文学出版社 ', ' 1972年4月 ', ' 0.25元',
        '《小引》《狗·猫·鼠》《阿长与山海经》《二十四孝图》《五猖会》《无常》《从百草园到三味书屋》《父亲的病》《琐记》《藤野先生》《范爱农》...', 0, 's1449352.jpg', NULL);
INSERT INTO `user_book`
VALUES (1460, 0, 0, '去往猴面包树的旅程', '[南非] 威尔玛·斯托肯斯特罗姆 / [南非] J.M.库切 英译、李斯本 中译 ', '8.2', 650, ' 后浪丨四川人民出版社 ', ' 2020-1 ',
        ' 49.80元', '双重展现南非文学大师的视野与文采：南非著名女作家代表作首次引进、诺奖得主库切英译原文全收录！✨编辑推荐◎《去往猴面包树的旅程》为中英双语版，特别收...', 0, 's34873156.jpg',
        NULL);
INSERT INTO `user_book`
VALUES (1461, 0, 0, '暗恋·橘生淮南', '八月长安 ', '7.9', 16119, ' 湖南文艺出版社 ', ' 2014-7-25 ', ' 58',
        '所有的等待都是值得的。八月长安“振华三部曲”典藏收官，四十万字全新修订，五万字全新内容，套装全两册。2008年到现在，时光或许改变了一切，但一个创作者的初...', 0, 's25829434.jpg', NULL);
INSERT INTO `user_book`
VALUES (1462, 0, 0, '想成为神的巴士司机', '[以色列] 埃特加·凯雷特 / 楼武挺 ', '8.1', 180, ' 浦睿文化·湖南文艺出版社 ', ' 2020-5 ', ' 39.00元',
        '《突然，响起一阵敲门声》作者、短篇小说大师凯雷特绝版十年故事集。一个从不给迟到的乘客开车门的巴士司机；一个和地狱来的男人谈恋爱的女人；一个许愿和天使做朋友...', 0, 's35005049.jpg', NULL);
INSERT INTO `user_book`
VALUES (1463, 0, 0, '芳华', '严歌苓 ', '8.1', 34334, ' 人民文学出版社 ', ' 2017-4-1 ', ' 39.00元',
        '从军经历伴随了严歌苓整个的青春年华。当她后来成为了一个作家，这段经历成了她取之不竭的创作源泉。《一个女兵的悄悄话》《雌性的草地》《灰舞鞋》《白麻雀》《爱犬颗...', 0, 's27010212.jpg', NULL);
INSERT INTO `user_book`
VALUES (1464, 0, 0, '美丽新世界', '[英] 阿道司·赫胥黎 / 王波 ', '8.7', 20735, ' 重庆出版社 ', ' 2005-6 ', ' 20.00元',
        '《美丽新世界》是二十世纪最经典的反乌托邦文学之一。这部作品与乔治·奥威尔的《1984》、扎米亚京的《我们》并称为“反乌托邦”三书，在国内外思想界影响深远。...', 0, 's1321789.jpg', NULL);
INSERT INTO `user_book`
VALUES (1465, 0, 0, '雾都孤儿', '[英]狄更斯 / 荣如德 ', '8.1', 33177, ' 上海译文出版社 ', ' 1991-7 ', ' 10.10元',
        '孤儿奥立弗・退斯特从小在贫民习艺所受尽欺凌，逃到伦敦后又陷入贼窟。身边的世界像一台疯狂运转的机器，小奥立弗却努力坚守着心底深处的纯净与高贵。这份执著终于帮他...', 0, 's1203251.jpg', NULL);
INSERT INTO `user_book`
VALUES (1466, 0, 0, '山月记', '[日]中岛敦 / 韩冰、孙志勇 ', '8.7', 5173, ' 中华书局 ', ' 2013-5 ', ' 28',
        '这是日本天才作家中岛敦的第一本中文简体版精选集，收录中岛敦《山月记》《弟子》《李陵》《光•风•梦》等九篇代表作。中岛敦的小说多取材于中国古典故事，独出心裁，...', 0, 's20473505.jpg', NULL);
INSERT INTO `user_book`
VALUES (1467, 0, 0, '在细雨中呼喊', '余华 ', '8.4', 25601, ' 南海出版公司 ', ' 1999-1 ', ' 18.00元',
        '作者以第一人称讲述了一个家庭的欢乐和苦痛，细腻地刻画了柔弱的母亲如何完成了自己忍受的一生，她唯一爆发出来的愤怒是在弥留之际；名叫孙广财的父亲又是如何骄傲地将...', 0, 's1082138.jpg', NULL);
INSERT INTO `user_book`
VALUES (1468, 0, 0, '人性的枷锁', '[英] 威廉·萨默塞特·毛姆 / 张乐 ', '9.2', 8078, ' 江西人民出版社 ', ' 2016-5 ', ' 68.00元',
        '【内容简介】《人性的枷锁》是毛姆具有自传性质的经典作品，也被认为是首屈一指、流传甚广的重要代表作。和《月亮和六便士》《面纱》《刀锋》一道，奠定毛姆“故事...', 0, 's26803714.jpg', NULL);
INSERT INTO `user_book`
VALUES (1469, 0, 0, '香水', '[德] 帕·聚斯金德 / 李清华 ', '8.5', 36091, ' 上海译文出版社 ', ' 2005-5 ', ' 20.00元',
        '小说叙述一个奇才怪杰谋杀了26个少女的故事。其中每一次谋杀都是一个目的：只是因为迷上她们特有的味道。对格雷诺耶来说，每次都是一场恋爱，但是他爱的不是人，而是...', 0, 's1292416.jpg', NULL);
INSERT INTO `user_book`
VALUES (1470, 0, 0, '小妇人', '（美）路易莎・梅・奥尔科特 / 刘春英、陈玉立 ', '8.4', 15458, ' 译林出版社 ', ' 2004-01 ', ' 15.00元',
        '这部小说以家庭生活为描写对象，以家庭成员的感情纠葛为线索，描写了马奇一家的天伦之爱。马奇家的四姐妹中，无论是为了爱情甘于贫困的海格，还是通过自己奋斗成为作家...', 0, 's1427288.jpg', NULL);
INSERT INTO `user_book`
VALUES (1471, 0, 0, '逃离', '[加] 艾丽丝·门罗 / 李文俊 ', '8.5', 3060, ' 北京十月文艺出版社 ', ' 2016-10-1 ', ' 49.50元',
        '为了获得独立和完整的自我，我们逃离沉闷的家庭、僵化的感情，逃离熟悉的人群、令人窒息的生活……为此，我们付出代价，遭受混乱，造成伤害2013年诺奖得主...', 0, 's26863797.jpg', NULL);
INSERT INTO `user_book`
VALUES (1472, 0, 0, '傲慢与偏见', '[英] 奥斯丁 / 王科一 ', '9.0', 32239, ' 上海译文出版社 ', ' 1996-12 ', ' 11.00元',
        '《傲慢与偏见》是英国著名女作家简·奥斯汀（JaneAusten1775～1817年）的代表作，是一部描写爱情与婚姻的小说。这部小说以男女主人公达西和伊丽...', 0, 's1401841.jpg', NULL);
INSERT INTO `user_book`
VALUES (1473, 0, 0, '橘子不是唯一的水果', '[英] 珍妮特·温特森 / 于是 ', '7.6', 14624, ' 新星出版社 ', ' 2010-7 ', ' 25.00元',
        '1985年惠特布莱德奖获奖作品英国英语系学生必读的经典读物入选《卫报》死前必读的1000本小说改编成BBC热门剧集，荣获戛纳最佳剧本等多项大奖讲述每...', 0, 's4882159.jpg', NULL);
INSERT INTO `user_book`
VALUES (1474, 0, 0, '变形记', '[奥] 卡夫卡 / 叶廷芳、赵登荣 ', '8.4', 40706, ' 浙江文艺出版社 ', ' 2003-4 ', ' 16.00元',
        '1判决2变形记3司炉4在流放营5乡村医生6饥饿艺术家7铁桶骑士8万里长城建造时9一条狗的研究10中国人来访……', 0, 's1213546.jpg', NULL);
INSERT INTO `user_book`
VALUES (1475, 0, 0, '斗罗大陆（全14卷）', '唐家三少 ', '7.1', 12521, ' 太白文艺出版社 ', ' 2009-7 ', ' 364.00元',
        '第1部：斗罗世界第2部：斗魂大战第3部：凶神战队第4部：大地之王第5部：运筹帷幄第6部：杀戮之王第7部：啸天斗罗第8部：唐门五堂第9部：魔鲸...', 0, 's3705820.jpg', NULL);
INSERT INTO `user_book`
VALUES (1476, 0, 0, '失乐园', '[日]渡边淳一 / 竺家荣 ', '7.7', 21680, ' 北京联合出版公司 ', ' 2014-6 ', ' 39.80元',
        '本书为渡边淳一情爱小说代表作，超级畅销书。本书讲述的是一场悲剧性的婚外恋，从一个侧面反映了都市生活和当代日本人的种种心态。作品情节生动曲折，真切感人，文字...', 0, 's25891771.jpg', NULL);
INSERT INTO `user_book`
VALUES (1477, 0, 0, '圣殿春秋', '[英] 肯·福莱特 / 胡允桓 ', '8.5', 8076, ' 江苏凤凰文艺出版社 ', ' 2018-7 ', ' 188元',
        '◆《巨人的陨落》作者、爱伦坡终身大师奖得主肯·福莱特里程碑式代表作！◆美国、英国、加拿大、保加利亚、巴西、丹麦、荷兰、意大利、法国、德国、匈牙利、挪威、波...', 0, 's30224833.jpg', NULL);
INSERT INTO `user_book`
VALUES (1478, 0, 0, '十九年间谋杀小叙', '那多 ', '8.2', 6835, ' 人民文学出版社 ', ' 2018-7 ', ' 59.00元',
        '与谋杀者的通信，与生死彼岸的通信，与不可能的爱情的通信，与叵测命运的通信。通信串起十九年的时间，串起愤怒、悲伤、不甘和眷恋，也串起了一宗又一宗的谋杀事件。当...', 0, 's30237176.jpg', NULL);
INSERT INTO `user_book`
VALUES (1479, 0, 0, '纽约客', '白先勇 ', '8.7', 14361, ' 广西师范大学出版社 ', ' 2010-10 ', ' 32.00元',
        '《纽约客》是白先勇在六十年代就已着手创作的小说系列，《纽约客》之名或许借自美国著名文学杂志NewYorker，却与《台北人》正好成为一个浑成的佳对。从收录...', 0, 's5337243.jpg', NULL);
INSERT INTO `user_book`
VALUES (1480, 0, 0, '心是孤独的猎手', '[美] 卡森·麦卡勒斯 / 陈笑黎 ', '8.5', 28615, ' 上海三联书店 ', ' 2005-8 ', ' 25.00元',
        '《心是孤独的猎手》作者麦卡勒斯的第一部长篇小说，也是她一举成名的作品和最具震撼力的代表作，居“现代文库20世纪百佳英文小说”第17位，曾被评为百部最佳同性恋...', 0, 's1424741.jpg', NULL);
INSERT INTO `user_book`
VALUES (1481, 0, 0, '怦然心动', '文德琳·范·德拉安南 / 陈常歌 ', '9.1', 3071, ' 百花洲文艺出版社 ', ' 2016-12-1 ', ' 42.80',
        '布莱斯全家搬到小镇，邻家女孩朱莉前来帮忙。她对他一见钟情，心愿是获得他的吻。两人是同班同学，她一直想方设法接近他，但是他避之不及。她喜欢爬在高高的梧桐树上看...', 0, 's26879324.jpg', NULL);
INSERT INTO `user_book`
VALUES (1482, 0, 0, '龙族Ⅱ', '江南 ', '8.0', 17938, ' 长江出版社 ', ' 2011-5 ', ' 29.80元',
        '这是一个关于屠龙者的故事，这也是一个关于少年们成长的传奇。衰仔路明非在生日那天收到了同学聚会的邀请，也同时接收到了来自卡塞尔学院的任务。而特立独行的楚子...', 0, 's6434543.jpg', NULL);
INSERT INTO `user_book`
VALUES (1483, 0, 0, '西游记', '吴承恩 ', '9.2', 8030, ' 岳麓书社 ', ' 1994-04 ', ' 15.00',
        '《西游记》的艺术虚构正是建立在传统艺术经验和这种社会的宗教性观念和风习的基础之上的，但它又以作者融会了传统艺术经验所形成的艺术的独创性批判了社会的宗教性观念...', 0, 's1061803.jpg', NULL);
INSERT INTO `user_book`
VALUES (1484, 0, 0, '地球上最后的夜晚', '[智利] 罗贝托·波拉尼奥 / 赵德明 ', '8.3', 7470, ' 上海人民出版社 ', ' 2013-4-1 ', ' 45.00元',
        '◎《2666》作者波拉尼奥首部短篇小说集◎令人着迷、苦寻的答案。挫败，但并非失败的旅程。◎《2666》屡获2012年各项读书大奖：深圳读书月年度十大好书...', 0, 's20501761.jpg', NULL);
INSERT INTO `user_book`
VALUES (1485, 0, 0, '分成两半的子爵', '[意大利] 伊塔洛•卡尔维诺 / 吴正仪 ', '8.7', 10968, ' 译林出版社 ', ' 2012-4-1 ', ' 20.00元',
        '卡尔维诺“我们的祖先”三部曲之一。“我们的祖先”三部曲包括：《不存在的骑士》《分成两半的子爵》《树上的男爵》，这三个故事代表通向自由的三个阶段，关于人如何...', 0, 's10555486.jpg', NULL);
INSERT INTO `user_book`
VALUES (1486, 0, 0, '蛙', '莫言 ', '8.3', 13109, ' 上海文艺出版社 ', ' 2012-10 ', ' 35.00元',
        '《蛙》是莫言酝酿十余年、笔耕四载、三易其稿，潜心打造的一部触及国人灵魂最痛处的长篇力作，初版于2009年。小说由剧作家蝌蚪写给日本作家杉谷义人的五封书信、四...', 0, 's19995918.jpg', NULL);
INSERT INTO `user_book`
VALUES (1487, 0, 0, '偷书贼', '[澳]马库斯·苏萨克 / 陶泽慧 ', '8.8', 2677, ' 北京十月文艺出版社 ', ' 2018-11-1 ', ' 68.00',
        '《偷书贼》是澳大利亚知名作家马库斯•苏萨克的长篇小说代表作，它像《解忧杂货店》和《追风筝的人》一样，可以战胜孤独和恐惧，拯救身陷绝望的人，遇到这些书，是我们...', 0, 's30225784.jpg', NULL);
INSERT INTO `user_book`
VALUES (1488, 0, 0, '骆驼祥子', '老舍 ', '9.1', 6266, ' 南海出版公司 ', ' 2010-3-1 ', ' 25.00元',
        '《骆驼祥子》讲述：老舍是我国现代著名作家，京派文学的代表人物，其作品具有独特的幽默风格和浓郁的生活气息，深受广大读者喜爱。本书收录《骆驼祥子》和《离婚》两部...', 0, 's4275017.jpg', NULL);
INSERT INTO `user_book`
VALUES (1489, 0, 0, 'AWM绝地求生 上册', '漫漫何其多 著 ', '7.7', 2053, ' 北京时代华文书局 ', ' 2019-4 ', ' 39.8元',
        '电竞明星祁醉×新锐队友于炀联手打造热血传奇！老将不死，薪火相传！本文讲述了电竞明星大神祁醉帮助外冷内热的孤僻队员于炀一步步成为新秀的励志暖心故事。队友们相...', 0, 's33384915.jpg', NULL);
INSERT INTO `user_book`
VALUES (1490, 0, 0, '万花筒：南烛', '', '7.5', 3593, '西子绪 ', ' 江苏凤凰文艺出版社 ', ' 38.8元', '', 0, 's34441316.jpg', NULL);
INSERT INTO `user_book`
VALUES (1491, 0, 0, '使女的故事', '[加拿大] 玛格丽特·阿特伍德 / 陈小慰 ', '8.3', 7129, ' 上海译文出版社 ', ' 2017-12 ', ' 49.00元',
        '奥芙弗雷德是基列共和国的一名使女。她是这个国家中为数不多能够生育的女性之一，被分配到没有后代的指挥官家庭，帮助他们生育子嗣。和这个国家里的其他女性一样，她没...', 0, 's27113801.jpg', NULL);
INSERT INTO `user_book`
VALUES (1492, 0, 0, '奇风岁月', '[美国] 罗伯特·麦卡蒙 / 陈宗琛 ', '8.8', 6227, ' 译林出版社 ', ' 2011-5 ', ' 36.00元',
        '奇风镇是一座宁静的南方小镇。十二岁的科里最亲的兄弟是一只叫“叛徒”的小狗。而他形影不离的伙伴，是一辆叫“火箭”的脚踏车。每到夏季开始的那一天，他总是骑着“火...', 0, 's6016234.jpg', NULL);
INSERT INTO `user_book`
VALUES (1493, 0, 0, '到灯塔去', '[英]弗吉尼亚·伍尔夫 / 瞿世镜 ', '8.7', 7769, ' 上海译文出版社 ', ' 2009-1-1 ', ' 22.00元',
        '弗吉尼亚·伍尔夫（1882—1941），英国意识流文学的代表性作家之一。《到灯塔去》描写一次大战后拉姆齐教授一家和几个亲密朋友在苏格兰某岛屿上度假的一段生活...', 0, 's3402999.jpg', NULL);
INSERT INTO `user_book`
VALUES (1494, 0, 0, '君子报恩', '囧囧有妖 ', '7.8', 2143, ' 民主与建设出版社 ', ' 2017-9 ', ' 34.80元',
        '“你救了我，我让我爹地以身相许！”宁夕意外救了只小包子，结果被附赠了一只大包子。婚后，陆霆骁宠妻如命千依百顺，虐起狗来连亲儿子都不放过。“老板，公司真给夫...', 0, 's27127822.jpg', NULL);
INSERT INTO `user_book`
VALUES (1495, 0, 0, '小姨多鹤', '严歌苓 ', '8.6', 27670, ' 作家出版社 ', ' 2008-4 ', ' 28.00元',
        '二战进入尾声，日本战败投降，大批当年被移民来中国东北企图对中国实施长期殖民统治的普通日本国民被抛弃。十六岁的少女多鹤即为其一，在死难多艰的逃亡中，她依靠机智...', 0, 's3012517.jpg', NULL);
INSERT INTO `user_book`
VALUES (1496, 0, 0, '坏小孩', '紫金陈 ', '7.8', 10963, ' 湖南文艺出版社 ', ' 2014-9-1 ', ' 54.00元',
        '【内容简介】结婚第四年，徐静有了外遇，并向张东升提出离婚。作为上门女婿入赘的张东升，婚前有过财产公证，一旦离婚，几乎是净身出户。左思右想之后，他决定做几...', 0, 's25955474.jpg', NULL);
INSERT INTO `user_book`
VALUES (1497, 0, 0, '九州·缥缈录', '江南 ', '8.9', 4039, ' 人民文学出版社 ', ' 2015-10 ', ' 198.00元',
        '《九州缥缈录》是江南的幻想史诗巨著，共6卷。以虚构的“九州”世界为背景，徐徐展开一轴腥风血雨的乱世长卷。当这个世界就要崩溃，当星辰和阳光也熄灭，沉默已久的乱...', 0, 's26613061.jpg', NULL);
INSERT INTO `user_book`
VALUES (1498, 0, 0, '小说鉴赏', '[美] 克林斯·布鲁克斯、[美] 罗伯特·潘·沃伦 / 主万、冯亦代、丰子恺、草婴、汝龙 ', '9.2', 49, ' 后浪丨四川人民出版社 ', ' 2020-2 ',
        ' 128.00元', '新批评派里程碑著作改变美国大学文学教授法的经典教材编辑推荐◎美国新批评派里程碑式著作，全世界大学的经典文学教科书。两位作者站在世界文学前沿，从内部到...', 0, 's34873596.jpg',
        NULL);
INSERT INTO `user_book`
VALUES (1499, 0, 0, '复活', '[俄] 托尔斯泰 / 汝龙 ', '8.6', 1266, ' 人民文学出版社 ', ' 2015-7-1 ', ' CNY 38.00',
        '《复活》(1889—1890)是托尔斯泰思想艺术的总结。作品以一起真实的刑事犯罪案为基础，通过描写男女主人公复杂曲折的经历，展示了俄国当时社会的黑暗，在对政...', 0, 's25837866.jpg', NULL);
INSERT INTO `user_book`
VALUES (1500, 0, 0, '鼠疫', '[法] 阿尔贝·加缪 / 刘方 ', '8.8', 7948, ' 上海译文出版社 ', ' 2011-1-1 ', ' 15.00元',
        '《鼠疫》是加缪最重要的代表作之一，通过描写北非一个叫奥兰的城市在突发鼠疫后以主人公里厄医生为代表的一大批人面对瘟疫奋力抗争的故事，淋漓尽致地表现出那些敢于直...', 0, 's5406559.jpg', NULL);
INSERT INTO `user_book`
VALUES (1501, 0, 0, '看不见的城市', '[意大利]伊塔洛·卡尔维诺 / 张宓 ', '8.8', 33819, ' 译林出版社 ', ' 2006-8 ', ' 16.00元',
        '《看不见的城市》的第一版是在1972年11月由都灵的埃伊纳乌迪出版社出版的。在这本书出版的时候，从1972年底到1973年初，卡尔维诺曾在多家报纸的文章和访...', 0, 's1863930.jpg', NULL);
INSERT INTO `user_book`
VALUES (1502, 0, 0, '佛兰德镜子', 'dome ', '7.6', 1987, ' 后浪丨四川文艺出版社 ', ' 2019-9 ', ' 48.00元',
        '◎编辑推荐★一本极具名著气质的原创小说，独特的语言质感、异国的文化背景，造就了这本超越国界的小说，充分显示“新海外汉语写作”的多种可能性。★在这个...', 0, 's34782362.jpg', NULL);
INSERT INTO `user_book`
VALUES (1503, 0, 0, '告白', '[日] 凑佳苗 / 竺家荣 ', '8.8', 8813, ' 湖南文艺出版社 ', ' 2016-4 ', ' 36.80元',
        '当伦理和正义出现分歧，你选择站在哪边？“爱美的死并非意外，而是被我们班的学生杀害的。”故事以爱女死于校内的中学女教师在班会上的告白开始。这个单亲妈妈独自抚...', 0, 's26681984.jpg', NULL);
INSERT INTO `user_book`
VALUES (1504, 0, 0, '当我们谈论爱情时我们在谈论什么', '[美] 雷蒙德·卡佛 / 小二 ', '7.8', 40083, ' 译林出版社 ', ' 2010-1 ', ' 22.00元',
        '《当我们谈论爱情时我们在谈论什么》出版于1981年，是雷蒙德•卡佛的成名之作，同时也是其最负盛名的代表作。本书由十七篇短篇小说组成，讲述了如餐馆女招待、锯木...', 0, 's4010969.jpg', NULL);
INSERT INTO `user_book`
VALUES (1505, 0, 0, '默读.2', 'Priest ', '8.5', 6795, ' 北京联合出版公司 ', ' 2018-6 ', ' 48.00元',
        '童年，成长经历，家庭背景，社会关系，创伤……我们不断追溯与求索犯罪者的动机，探寻其中最幽微的喜怒哀乐，不是为了设身处地地同情、乃至于原谅他们，不是为了给罪...', 0, 's30246163.jpg', NULL);
INSERT INTO `user_book`
VALUES (1506, 0, 0, '废都', '贾平凹 ', '7.1', 17301, ' 北京出版社 ', ' 1993 ', ' 12.50',
        '荆歌：许多时候，性爱的描写成全了整个作品。比如沈从文，他作品中的性爱，使我们感到性是一种多么美好的东西，很健康，很正常，生机勃勃的。但有时候，性描写，会毁...', 0, 's1417905.jpg', NULL);
INSERT INTO `user_book`
VALUES (1507, 0, 0, '时间的礼物', '[瑞典] 弗雷德里克·巴克曼 / 孙璐 ', '7.5', 5396, ' 天津人民出版社 ', ' 2019-1-1 ', ' 36.00元',
        '【内容简介】世间的一切都有标价，除了时间，一秒就是一秒，谁都无法讨价还价。于是我总在出差，把生命中的每分每秒都贡献给工作，因为我坚信创造财富才是时间的正...', 0, 's30390651.jpg', NULL);
INSERT INTO `user_book`
VALUES (1508, 0, 0, '少年的你，如此美丽', '玖月晞 ', '6.1', 10779, ' 百花洲文艺出版社 ', ' 2016-9 ', ' 32.00元',
        '你有没有为一个人，拼了命地去努力过？北望今心，陈年不移。曾经，是谁在夏天的灿烂阳光下拿树枝写下一个名字，告知少年，今心；曾经，是谁用目光引诱她念诵一...', 0, 's26858577.jpg', NULL);
INSERT INTO `user_book`
VALUES (1509, 0, 0, '儒林外史', '吴敬梓 ', '8.3', 6835, ' 人民文学出版社 ', ' 2002-1-1 ', ' 20.00',
        '吴敬梓的《儒林外史》是中国小说史上少有的几部出类拔萃的巨制之一，是唯一一部真正意义上的讽刺小说。吴敬梓在创作此书时，以对待功名富贵和文行出处的态度...', 0, 's1042053.jpg', NULL);
INSERT INTO `user_book`
VALUES (1510, 0, 0, '沉默的大多数', '王小波 ', '9.1', 99044, ' 中国青年出版社 ', ' 1997-10 ', ' 27.00元',
        '这本杂文随笔集包括思想文化方面的文章，涉及知识分子的处境及思考，社会道德伦理，文化论争，国学与新儒家，民族主义等问题；包括从日常生活中发掘出来的各种真知灼见...', 0, 's1054685.jpg', NULL);
INSERT INTO `user_book`
VALUES (1511, 0, 0, '喜鹊谋杀案', '[英] 安东尼·霍洛维茨、Anthony Horowitz / 梁清新 ', '7.7', 9141, ' 新星出版社 ', ' 2019-6 ', ' 69.00元',
        '安东尼•霍洛维茨，蜚声世界的著名侦探小说大师、有史以来唯一被柯南•道尔产权会认证的续写福尔摩斯之人。亚马逊，NPR，《华盛顿邮报》，Esquire，...', 0, 's33445034.jpg', NULL);
INSERT INTO `user_book`
VALUES (1512, 0, 0, '三国演义', '罗贯中 ', '9.4', 10834, ' 岳麓书社 ', ' 1986-6-1 ', ' 13.0',
        '滚滚长江东逝水，浪花淘尽英雄。吕布赵云关羽，官渡赤壁街亭，斩华雄空城计长坂坡七擒七纵，一看三叹，三国风云起，几度夕阳红。该剧展现了历史上一个豪强们为攫取最高...', 0, 's1483894.jpg', NULL);
INSERT INTO `user_book`
VALUES (1513, 0, 0, '不存在的骑士', '[意] 伊塔洛·卡尔维诺 / 吴正仪 ', '8.9', 9319, ' 译林出版社 ', ' 2012-4 ', ' 22.00元',
        '《卡尔维诺经典:不存在的骑士》内容简介：是卡尔维诺“我们的祖先”三部曲之一。“我们的祖先”三部曲包括：《卡尔维诺经典:不存在的骑士》、《分成两半的子爵》、《...', 0, 's6789551.jpg', NULL);
INSERT INTO `user_book`
VALUES (1514, 0, 0, '紫阳花日记', '[日] 渡边淳一 / 王智新 ', '8.6', 245, ' 青岛出版社 ', ' 2020-3 ', ' 69',
        '【编辑推荐】★如果说《失乐园》演绎的是爱情的理想版，那么《紫阳花日记》展现的则是情感的现实版。★一部“婚姻生活的启示录”，一场道德与欲望的较量。★直...', 0, 's34992548.jpg', NULL);
INSERT INTO `user_book`
VALUES (1515, 0, 0, '悉达多', '[德] 赫尔曼·黑塞 / 姜乙 ', '9.4', 6990, ' 天津人民出版社 ', ' 2017-1 ', ' 32.00元',
        '《悉达多》并非是佛陀的故事，它讲述了一个人的一生，千万寻常人亦会经历的一生。意气风发的少年郎，常认为自己是被命运选中的人。抛下过去，随了跌跌撞撞的步伐，找...', 0, 's26980487.jpg', NULL);
INSERT INTO `user_book`
VALUES (1516, 0, 0, '知否知否应是绿肥红瘦', '关心则乱 ', '7.4', 5670, ' 中国华侨出版社 ', ' 2018-4-1 ', ' 42.00元',
        '“我想描写一个繁华的盛世，有英明的君主，果敢的将军，狡黠的投机者，算有遗策的谋略家，有鲜血，有惨烈，更有辉煌的未来。我想描写一个正在走上坡路的家族，有深...', 0, 's30164967.jpg', NULL);
INSERT INTO `user_book`
VALUES (1517, 0, 0, '我的名字叫红', '[土耳其] 奥尔罕·帕慕克 / 沈志兴 / 世纪文景', '8.6', 2668, '上海人民出版社 ', ' 2016-1 ', ' 39.00元',
        '◆最会讲故事的诺奖得主帕慕克的小说最好地体现了现代小说独特的叙事结构，一个故事有多重的欣赏角度和发展脉络，既可以满足单纯读故事的需求，也可以满足更深度的...', 0, 's26639310.jpg', NULL);
INSERT INTO `user_book`
VALUES (1518, 0, 0, '拉普拉斯的魔女', '[日] 东野圭吾 / 王蕴洁 ', '6.8', 16659, ' 北京联合出版公司 ', ' 2017-1 ', ' 39.80元',
        '两处温泉地，相继发生硫化氢中毒事件，虽然在教授清江调查后被判定为“不可能人为”，而以意外结案。然而种种疑点和现场出现的神秘少女，令前警察武尾、地球化学教授清...', 0, 's26920165.jpg', NULL);
INSERT INTO `user_book`
VALUES (1519, 0, 0, '桃花债', '大风刮过 ', '8.1', 6200, ' 中国文联出版社 ', ' 2016-7-1 ', ' 36.00元',
        '谁是谁的劫，谁欠谁的债。千年前的局，不过一场相逢的等待。丞相公子宋珧迷恋花魁瑶湘，瑶湘却与一个穷书生情投意合。失魂落魄的宋珧因缘际会误食了仙丹，就此飞升成...', 0, 's26793349.jpg', NULL);
INSERT INTO `user_book`
VALUES (1520, 0, 0, '2001：太空漫游', '[英] 阿瑟·克拉克 / 郝明义 ', '9.2', 7793, ' 上海文艺出版社 ', ' 2019-5-10 ', ' 62',
        '◆《太空漫游》拓展了人类理解宇宙的宽度、广度和深度。从普通读者到刘慈欣到NASA科学家，都从中获得启迪。◆刘慈欣：“我所有作品都是对《太空漫游》的拙劣模...', 0, 's30471298.jpg', NULL);
INSERT INTO `user_book`
VALUES (1521, 0, 0, '悲惨世界', '[法] 雨果 / 李丹、方于 ', '9.5', 4188, ' 人民文学出版社 ', ' 2015-6 ', ' 110.00元',
        '《悲惨世界(上中下)(精)》是雨果在流亡期间写的长篇小说，是他的代表作，也是世界文学宝库的珍品之一。《悲惨世界(上中下)(精)》通过冉阿让等人的悲惨遭遇以...', 0, 's25897657.jpg', NULL);
INSERT INTO `user_book`
VALUES (1522, 0, 0, '青铜时代', '王小波 ', '8.7', 19791, ' 花城出版社 ', ' 1997-5 ', ' 29.00元',
        '《青铜时代》是“时代三部曲”之三。这是以中国古代唐朝为背景的三部作品构成的长篇。这组作品的主人公，是古代的知识分子和传奇人物。他们作为一群追求个性、热爱自由...', 0, 's1085883.jpg', NULL);
INSERT INTO `user_book`
VALUES (1523, 0, 0, '一个人的好天气', '[日] 青山七惠 / 竺家荣 ', '7.6', 82718, ' 上海译文出版社 ', ' 2007-9 ', ' 15.00元',
        '《一个人的好天气》描述了一个打零工的女孩如何与年长亲人相处，同时追寻自我、独立的故事，走向自立的一名女孩在工作、生活和恋爱中的种种际遇和心情令人揪心，小说写...', 0, 's2250587.jpg', NULL);
INSERT INTO `user_book`
VALUES (1524, 0, 0, '水浒传', '施耐庵、罗贯中 ', '9.0', 3566, ' 中华书局 ', ' 2009-06 ', ' 88.00元',
        '有人说，读《水浒传》不读金圣叹的评语，等于没读过《水浒传》，此言不虚。《水浒传》是一部经过宋、元两代数百年的酝酿、积累而最终完成的长篇历史小说，集合了无数英...', 0, 's3810699.jpg', NULL);
INSERT INTO `user_book`
VALUES (1525, 0, 0, '酒神的玫瑰', '方悄悄 ', '8.1', 102, ' 上海文艺出版社 ', ' 2020-5-1 ', ' 42.00',
        '故事从新世界的葡萄酒大国智利开始。一家由中国人创办的“百子莲”酒庄因发现欧洲大陆灭绝的佳美娜葡萄，酿造出了令当地人艳羡的葡萄酒，但创始人去世后，酒庄陷入危...', 0, 's35006213.jpg', NULL);
INSERT INTO `user_book`
VALUES (1526, 0, 0, '三千鸦杀', '十四郎 ', '7.4', 7658, ' 春风文艺出版社 ', ' 2010-8 ', ' 19.80元',
        '朝阳台上，公主帝姬一曲东风桃花，绝艳天下。而一场琉璃火，让世上再无大燕国，前尘往事如梦过。隐姓埋名的公主帝姬潜伏在修仙之地香取山成了小杂役覃川，不意故人纷...', 0, 's5264447.jpg', NULL);
INSERT INTO `user_book`
VALUES (1527, 0, 0, '没有色彩的多崎作和他的巡礼之年', '[日] 村上春树 / 施小炜 ', '8.2', 34943, ' 南海出版公司 ', ' 2013-10-1 ', ' 39.50元',
        '“并不是一切都消失在了时间的长河里。那时，我们坚定地相信某种东西，拥有能坚定地相信某种东西的自我。这样的信念绝不会毫无意义地烟消云散”——十六年的彷徨迷惑，...', 0, 's25733470.jpg', NULL);
INSERT INTO `user_book`
VALUES (1528, 0, 0, '查令十字街84号', '[美] 海莲·汉芙 / 陈建铭 ', '8.1', 25564, ' 译林出版社 ', ' 2016-5 ', ' 35.00元',
        '纪念作者诞辰一百周年（1916.4.15-2016.4.15）中文世界首次推出精装珍藏版译者陈建铭修订数十处译文，精益求精读库御用设计师艾莉女士担纲设...', 0, 's26768309.jpg', NULL);
INSERT INTO `user_book`
VALUES (1529, 0, 0, '在森崎书店的日子', '八木泽里志 / 李盈春 ', '8.0', 174, ' 南海出版公司 ', ' 2020-3-1 ', ' 55.00',
        '每个人都想用自己的眼睛确认这个世界，从中寻找不同的可能性。我在森崎书店的日子，是从夏初到翌年的初春。这期间，我住在书店二楼的一个空房间里，每天过着埋在书堆里...', 0, 's34800934.jpg', NULL);
INSERT INTO `user_book`
VALUES (1530, 0, 0, '假面山庄', '[日] 东野圭吾 / 陈文娟 ', '7.6', 15423, ' 北京十月文艺出版社 ', ' 2018-1 ', ' 45',
        '◆东野圭吾：《假面山庄》是我的自信之作。我在构思时萌生出一个很妙的主意，于是写作一气呵成。◆这不仅是一本推理小说。读完全书，才能领悟深埋心底的巨大的爱。...', 0, 's27200261.jpg', NULL);
INSERT INTO `user_book`
VALUES (1531, 0, 0, '余生皆假期', '伊坂幸太郎 / 吕灵芝 ', '7.8', 16970, ' 新星出版社 ', ' 2015-2 ', ' 28',
        '因父亲出轨而散伙的一家三口在即将分道扬镳时收到一条交友短信，发信人是打算从黑道退出的小混混冈田——去交一个朋友，完成这项任务，他才能成功脱身。于是，失败的...', 0, 's25892399.jpg', NULL);
INSERT INTO `user_book`
VALUES (1532, 0, 0, '在路上', '[美] 杰克·凯鲁亚克 / 杨蔚 ', '8.4', 471, ' 云南人民出版社 ', ' 2020-3 ', ' 49.00元',
        '★重新定义美国文学的经典巨著，引领一代人的精神《圣经》★人生必读经典！2020最纯粹、最还原原版精神的译本★高晓松、万晓利独家推荐版本★国内摇滚传记译...', 0, 's34937425.jpg', NULL);
INSERT INTO `user_book`
VALUES (1533, 0, 0, '仿生人会梦见电子羊吗？', '(美)菲利普·迪克 / 许东华 ', '8.8', 8380, ' 译林出版社 ', ' 2013-9 ', ' 28.00元',
        '核战后，放射尘让地球上的动物濒临灭绝，地球已不再适合人类居住。为了鼓励残存的人口移民，政府承诺，只要移民到外星球，就可以为每个人自动配备一个仿生人帮助其...', 0, 's24715686.jpg', NULL);
INSERT INTO `user_book`
VALUES (1534, 0, 0, '爱伦·坡的怪奇物语', '[美] 埃德加·爱伦·坡 / 曹明伦 ', '9.0', 102, ' 北京时代华文书局 ', ' 2020-4 ', ' 99.00元',
        '*阿卡姆系列·2020年第1弹！从爱伦·坡一生创作的60余篇小说中甄选32篇极佳经典，780页一次看个够*历时913天，寻遍网络拍卖行、私人藏家群、...', 0, 's30374826.jpg', NULL);
INSERT INTO `user_book`
VALUES (1535, 0, 0, '且听风吟', '[日]村上春树 / 林少华 ', '7.6', 2500, ' 上海译文出版社 ', ' 2018-7 ', ' 28',
        '本书是村上春树的处女作，与后来的《1973年的弹子球》《寻羊冒险记》合称“鼠的三部曲”，描写一个少男在街上“拣”到一个喝醉的少女，把她领回家里，两人发生了一...', 0, 's30144098.jpg', NULL);
INSERT INTO `user_book`
VALUES (1536, 0, 0, '沧浪之水', '阎真 ', '8.5', 13992, ' 人民文学出版社 ', ' 2001-10 ', ' 26.00元',
        '作者以娓娓而谈的文笔和行云流水般的故事，写出医学研究生池大为空怀壮志、无职无权的苦，时来运转、有名有利的难；在真切地展示他的人生旅程的同时，也把困扰他的人生...', 0, 's1054917.jpg', NULL);
INSERT INTO `user_book`
VALUES (1537, 0, 0, '那些回不去的年少时光·终场', '桐华 ', '8.7', 19237, ' 江苏文艺出版社 ', ' 2010-04 ', ' 23.80元',
        '故事虽落幕，青春不终场！经过孤独的小学时光，混乱的初中生涯，罗琦琦来到了高中。和所有走过那段岁月的人一样，面对高考的折磨，罗琦琦虽然不情愿，却也无法做到不在...', 0, 's4732378.jpg', NULL);
INSERT INTO `user_book`
VALUES (1538, 0, 0, '事实', '[美] 菲利普·罗斯 / 毛俊杰 ', '8.2', 224, ' 上海译文出版社 ', ' 2020-2 ', ' 60.00',
        '◆从生活的真实剧情里调制出半想象的生命，这就是我的人生。∽∽∽《事实：一个小说家的自传》是菲利普·罗斯“罗斯系列”的第一部。小说以“我”罗斯与祖...', 0, 's34893735.jpg', NULL);
INSERT INTO `user_book`
VALUES (1539, 0, 0, '世界杂货店', '[美]罗伯特·谢克里 / 孙维梓、罗妍莉、胡绍晏 ', '9.1', 700, ' 新星出版社 ', ' 2019-12 ', ' 58.00元',
        '【罗伯特•谢克里】影响大师的科幻大师！每一篇小说都会让你怀疑人生。【内容简介】26张通往奇异想象世界的单程车票……当电子警察鸟失去控制；当杀人游...', 0, 's33451968.jpg', NULL);
INSERT INTO `user_book`
VALUES (1540, 0, 0, '金色梦乡', '[日] 伊坂幸太郎 / 李彦桦 ', '9.0', 18553, ' 译林出版社 ', ' 2010-9 ', ' 35.00元',
        '平凡的送貨員──青柳雅春和多年不見的老友森田森吾偶遇，卻突然被告知首相即將被暗殺，而青柳則是兇手！還一頭霧水的青柳，早已成為警方不擇手段要緝捕的對象，更慘的...', 0, 's5038409.jpg', NULL);
INSERT INTO `user_book`
VALUES (1541, 0, 0, 'ZOO', '[日] 乙一 / 李颖秋 ', '8.6', 33760, ' 当代世界出版社 ', ' 2007-10 ', ' 20.00元',
        '每天早上都有一张我女朋友尸体的照片放到我的收件箱里，照片显示着女朋友的尸体正在一天天地生蛆、腐化。她是在我们去过动物园之后失踪的。所有人都认为她只是失踪了，...', 0, 's2297697.jpg', NULL);
INSERT INTO `user_book`
VALUES (1542, 0, 0, '银河系漫游指南', '[英] 道格拉斯·亚当斯 / 徐百柯 ', '8.8', 17520, ' 四川科学技术出版社 ', ' 2005-6 ', ' 16.00元',
        '地球被毁灭了，因为要在它所在的地方修建一条超空间快速通道。主人公阿瑟·邓特活下来了，因为他有一位名叫福特·长官的朋友。这位朋友表面上是个找不着工作的演员，其...', 0, 's1394364.jpg', NULL);
INSERT INTO `user_book`
VALUES (1543, 0, 0, '哭泣的骆驼', '三毛 ', '8.9', 44283, ' 哈尔滨出版社 ', ' 2003-6 ', ' 15.80元',
        '在《哭泣的骆驼》中，三毛依然恋恋着墨沙漠生活周遭的人与事，《收魂记》、《搭车客》、《逍遥七岛游》、《一个陌生人的死》、《大胡子与我》等篇，情趣盎然；《沙巴军...', 0, 's1029111.jpg', NULL);
INSERT INTO `user_book`
VALUES (1544, 0, 0, '山月记', '[日] 中岛敦 / 徐建雄 ', '8.5', 3003, ' 三秦出版社 ', ' 2019-3 ', ' 45.00元',
        '编辑推荐：*川端康成力荐的天才小说家！*《山月记》战后常年入选日本高中国语教科书，成就中岛敦“国民作家”美誉。*如梦似幻，亦庄亦谐，他被誉为日本虚...', 0, 's30394154.jpg', NULL);
INSERT INTO `user_book`
VALUES (1545, 0, 0, '请以你的名字呼唤我', '安德烈·艾席蒙 / 权景 ', '8.6', 9469, ' 中国友谊出版公司 ', ' 2012-8 ', ' 29.80元',
        '《请以你的名字呼唤我》内容简介：这个世界再无秘密，爱上你，就是我唯一的秘密，而我只愿与你分享。怎么样的渴望，能如此灼烧灵魂；怎么样的思念，能刺痛每一根神经末...', 0, 's11535042.jpg', NULL);
INSERT INTO `user_book`
VALUES (1546, 0, 0, '撒哈拉的故事', '三毛 ', '9.0', 185486, ' 皇冠出版社 ', ' 1976 ', ' 160 TWD',
        '三毛作品中最膾炙人口的《撒哈拉的故事》﹐由１２篇精采動人的散文結合而成﹐其中＜沙漠中的飯店＞﹐是三毛適應荒涼單調的沙漠生活後﹐重新拾筆的第一篇文字﹐...', 0, 's1361264.jpg', NULL);
INSERT INTO `user_book`
VALUES (1547, 0, 0, '世界尽头与冷酷仙境', '[日] 村上春树 / 林少华 ', '8.6', 36858, ' 上海译文出版社 ', ' 2002-12 ', ' 23.00元',
        '《世界尽头与冷酷仙境》是村上春树最重要的小说之一，与《挪威的森林》、《舞舞舞》合称为村上春树三大杰作。小说共40章，单数20章“冷酷仙境”，双数20章为“世...', 0, 's1291809.jpg', NULL);
INSERT INTO `user_book`
VALUES (1548, 0, 0, '海边的卡夫卡', '[日] 村上春树 / 林少华 ', '8.1', 90433, ' 上海译文出版社 ', ' 2003-4 ', ' 25.00元',
        '小说的主人公是一位自称名叫田村卡夫卡——作者始终未交代其真名——的少年。他在十五岁生日前夜独自离家出走，乘坐夜行长途巴士远赴四国。出走的原因是为了逃避父亲所...', 0, 's1059419.jpg', NULL);
INSERT INTO `user_book`
VALUES (1549, 0, 0, '人类的群星闪耀时', '[奥] 斯蒂芬·茨威格 / 舒昌善 ', '8.7', 19974, ' 广西师范大学出版社 ', ' 2004-8 ', ' 18.00元',
        '《人类群星闪耀时》由奥地利著名小说家创作。《人类群星闪耀时》内容：涌动着匪徒、探险家、叛乱者兼英雄血液的巴尔沃亚成为第一个看到太平洋的欧洲人；仅仅一秒钟的优...', 0, 's1083762.jpg', NULL);
INSERT INTO `user_book`
VALUES (1550, 0, 0, '麦田里的守望者', '[美] J. D. 塞林格 / 孙仲旭 ', '9.0', 1263, ' 译林出版社 ', ' 2018-10 ', ' 46.00',
        '如果青春需要一部圣经，那它只能是《麦田里的守望者》。《麦田里的守望者》是传奇作家塞林格成名作和代表作，让青少年的质问、怀疑和逃避得到应有的承认和发泄，一经问...', 0, 's26905152.jpg', NULL);
INSERT INTO `user_book`
VALUES (1551, 0, 0, '告白', '[日]凑佳苗、湊かなえ / 丁世佳 ', '8.5', 10481, ' 哈尔滨出版社 ', ' 2010年6月 ', ' 26.00元',
        '森口是日本一所中学的教师，她经常将4岁的女儿爱美带到学校照看。一天，爱美被发现死在校游泳池内，全校哗然。痛失爱女的森口辞职。她没有向警方报案，申请重新调查，...', 0, 's4836682.jpg', NULL);
INSERT INTO `user_book`
VALUES (1552, 0, 0, '克苏鲁神话', '[美] H.P.洛夫克拉夫特 / 姚向辉 ', '7.6', 6336, ' 浙江文艺出版社 ', ' 2016-11-1 ', ' 68.00元',
        '《克苏鲁神话》被誉为20世纪最伟大、最具影响力的恐怖小说体系，作者是H.P.洛夫克拉夫特——或者“爱手艺”。假设你的脚边有一只蚂蚁在爬，你不会在意有没有踩...', 0, 's26862626.jpg', NULL);
INSERT INTO `user_book`
VALUES (1553, 0, 0, '绝对不在场证明', '[日] 大山诚一郎 / 曹逸冰 ', '7.6', 501, ' 上海文艺出版社 ', ' 2020-5 ', ' 36.00元',
        '【编辑推荐】★破解一切不在场证明诡计，本质是看穿时间的漏洞！★2019年本格推理BEST10NO.1★入选三大推理小说年度榜单：本格推理BEST10...', 0, 's34998167.jpg', NULL);
INSERT INTO `user_book`
VALUES (1554, 0, 0, '有匪1', 'Priest ', '8.8', 9181, ' 湖南文艺出版社 ', ' 2016-11 ', ' 35.00元',
        '终有一天，你会跨过静谧无声的洗墨江，离开群山环抱的旧桃源，来到无边阴霾的夜空之下。你会目睹无数不可攀爬之山相继倾覆，不可逾越之海干涸成田，你要记得，你的...', 0, 's26886310.jpg', NULL);
INSERT INTO `user_book`
VALUES (1555, 0, 0, '毛姆短篇小说精选集', '(英)威廉·萨默塞特·毛姆 / 冯亦代、傅惟慈、陆谷孙 ', '9.1', 8363, ' 译林出版社 ', ' 2012-11 ', ' 36.00元',
        '这二十三个短篇带我们去往英国、法国、意大利和墨西哥，还引我们领略了太平洋岛国的风情。毛姆笔下的世俗男女在一幕幕凛冽的人间短剧中出演了一个个令人难以忘怀的角色...', 0, 's10774752.jpg', NULL);
INSERT INTO `user_book`
VALUES (1556, 0, 0, '玫瑰的名字', '[意] 翁贝托·埃科 / 沈萼梅、刘锡荣 ', '8.6', 8355, ' 上海译文出版社 ', ' 2010-03 ', ' 33.00元',
        '“玫瑰的名字”是中世纪用来表明含有象征意义的词汇，故事亦以一所中世纪修道院为背景。原本就已被异端的怀疑和僧侣的个人私欲弄得乌烟瘴气的寺院，却又发生了一连串离...', 0, 's3836566.jpg', NULL);
INSERT INTO `user_book`
VALUES (1557, 0, 0, '成化十四年', '梦溪石 ', '8.1', 2856, ' 北京联合出版公司 ', ' 2015-11-1 ', ' 74.00元',
        '顺天府推官唐泛初入仕林，便遇上武安侯府的大公子意外身死的案子。原本武安侯要以婢女加害草草结案，唐泛却在尸体上发现了疑点，固执地追查下去，结果牵扯出了武安侯府...', 0, 's26648636.jpg', NULL);
INSERT INTO `user_book`
VALUES (1558, 0, 0, '小说机杼', '[英] 詹姆斯·伍德 / 黄远帆 ', '9.1', 1742, ' 河南大学出版社 ', ' 2015-8-1 ', ' 28.00元',
        '秉承E.M.福斯特《小说面面观》和米兰•昆德拉《小说的艺术》的传统，《小说机杼》是一部研究小说魔力的神奇之作——分析其主要元素，颂扬其持久动力。书中对我们这...', 0, 's26394876.jpg', NULL);
INSERT INTO `user_book`
VALUES (1559, 0, 0, '何以笙箫默', '顾漫 ', '7.7', 19186, ' 沈阳出版社 ', ' 2011-1 ', ' 25.00元',
        '我还记得与他们初遇在人群熙攘的超市，就像在后记里写的那样，忽然就冒出那样一种感触攫住了我。也许早一步，晚一步，他们不是他们，我不是我，谁知道呢，缘分总是那么...', 0, 's5686369.jpg', NULL);
INSERT INTO `user_book`
VALUES (1560, 0, 0, '神们自己', '[美] 艾萨克·阿西莫夫 / 崔正男 ', '8.4', 16955, ' 江苏凤凰文艺出版社 ', ' 2014-12-1 ', ' 39.00元',
        '22世纪，地球可以和平行宇宙进行物质交换，从此拥有了源源不绝的能源。但是，只有几个人才知道危险的真相：地球上的一个无人信任的科学家、能源渐渐枯竭的星球上的一...', 0, 's26264967.jpg', NULL);
INSERT INTO `user_book`
VALUES (1561, 0, 0, '喜宝', '亦舒 ', '8.0', 61840, ' 新世界出版社 ', ' 2007-2 ', ' 22.00元',
        '读书就是这样好，无论心不在焉，板着长脸，只要考试及格，就是一个及格的人。你试着拉长脸到社会去试一试。这是一个卖笑的社会。除非能够找到高贵的职业，而高贵的职业...', 0, 's2022979.jpg', NULL);
INSERT INTO `user_book`
VALUES (1562, 0, 0, '致我们终将逝去的青春', '辛夷坞 ', '7.8', 89837, ' 朝华出版社 ', ' 2007-8 ', ' 25.00元',
        '自喻为“玉面小飞龙”的郑微，洋溢着青春活力，心怀着对邻家哥哥林静浓浓的爱意，来到大学。可是当她联系林静的时候，却发现出国的林静并没有告诉她任何消息。生性豁达...', 0, 's2209098.jpg', NULL);
INSERT INTO `user_book`
VALUES (1563, 0, 0, '欧也妮·葛朗台', '巴尔扎克(法) / 张冠尧 ', '7.8', 30782, ' 人民文学出版社 ', ' 2000-5-1 ', ' 8.80',
        '《欧叶妮·葛朗台》的故事情节简单：天真美丽的葛朗台是悭吝精明的百万富翁的独生女儿，她爱上了破产的表哥，为了他不惜激怒爱财如命的父亲，倾尽全部私蓄资助他闯天下...', 0, 's1031741.jpg', NULL);
INSERT INTO `user_book`
VALUES (1564, 0, 0, '夜旅人', '赵熙之 ', '8.5', 4558, ' 百花洲文艺出版社 ', ' 2016-9 ', ' 32.80元',
        '1937年7月11日，上海699号公寓。晚上十点整，盛清让结束学界的讨论会返家，廊灯忽然灭了。2015年7月11日，上海699号公寓。晚上十点整，宗瑛从凶...', 0, 's26853361.jpg', NULL);
INSERT INTO `user_book`
VALUES (1565, 0, 0, '禅与摩托车维修艺术', '(美)罗伯特·M.波西格 / 张国辰 ', '8.3', 14092, ' 重庆出版社 ', ' 2011-9 ', ' 36.00元',
        '在一个炎热的夏天，父子两人和约翰夫妇骑摩托车从明尼苏达到加州，跨越美国大陆，旅行的过程与一个青年斐德洛研修科学技术与西方经典，寻求自我的解脱，以及探寻生命的...', 0, 's6811366.jpg', NULL);
INSERT INTO `user_book`
VALUES (1566, 0, 0, '情深不可医', '六盲星 ', '6.0', 559, ' 江苏凤凰文艺出版社 ', ' 2017-12 ', ' 32.80',
        '妖娆颜控女主持人VS寡淡傲娇外科医生继《你抱起来有点甜》热销之后人气作者六盲星苏甜之作无污不欢狗粮不断指腹为婚从未见面初次相遇是负伤的...', 0, 's27618598.jpg', NULL);
INSERT INTO `user_book`
VALUES (1567, 0, 0, '双城记', '查尔斯・狄更斯 / 石永礼 ', '8.3', 18702, ' 人民文学出版社 ', ' 1996-08 ', ' 14.10',
        '1775年12月的一个月夜，寓居巴黎的年轻医生梅尼特散步时，突然被厄弗里蒙地侯爵兄弟强迫出诊。在侯爵府第中，他目睹一个发狂的绝色农妇和一个身受剑伤的少年饮恨...', 0, 's1007772.jpg', NULL);
INSERT INTO `user_book`
VALUES (1568, 0, 0, '沉睡的人鱼之家', '[日] 东野圭吾 / 王蕴洁 ', '7.2', 16396, ' 北京联合出版公司 ', ' 2017-6 ', ' 39.80元',
        '【内容简介】如果推理小说一定要有死亡，这本书所触及的或许就是最残忍最令人绝望的一种情境。一起事件，一个人的一生因此改变。仿佛跌入蛛网般绝望的挣扎，可这黑...', 0, 's27028847.jpg', NULL);
INSERT INTO `user_book`
VALUES (1569, 0, 0, '萤火虫小巷', '[美]克莉丝汀·汉娜 / 康学慧 ', '8.1', 8569, ' 百花洲文艺出版社 ', ' 2015-11 ', ' 36.00元',
        '她知道，只要说“我需要你”，好朋友就永远会在。塔莉，美丽聪明，却行为叛逆，总是人们目光的焦点，但没有人知道，她一直活在被母亲抛弃的阴影中，更害怕一直照顾她...', 0, 's26642866.jpg', NULL);
INSERT INTO `user_book`
VALUES (1570, 0, 0, '万有引力之虹', '[美国] 托马斯·品钦 / 张文宇、黄向荣 ', '8.3', 1650, ' 译林出版社 ', ' 2009-1 ', ' 48.00',
        '《万有引力之虹》像许多后现代主义小说一样，没有什么故事情节，全书由许多零散插曲和作者似是而非的议论构成，内容包括现代物理、火箭工程、高等数学、性心理学、变态...', 0, 's3327495.jpg', NULL);
INSERT INTO `user_book`
VALUES (1571, 0, 0, '余生，请多指教2', '柏林石匠 ', '6.6', 323, ' 四川文艺出版社 ', ' 2019-1 ', ' 39.80',
        '很多电影小说里，女主角遇到男主角，总会被描绘成“遇见你之前我简直活得没有意义”的状态。遇到顾魏后，我逐渐觉得，此前经历的所有都是有意义的，不论好坏。曾经...', 0, 's30358193.jpg', NULL);
INSERT INTO `user_book`
VALUES (1572, 0, 0, '爱情和其他魔鬼', '[哥伦比亚] 加西亚·马尔克斯 / 陶玉平 ', '8.7', 8436, ' 南海出版公司 ', ' 2016-1 ', ' 35.00',
        '德劳拉神父做了一个奇怪的梦：一个长发委地的少女，坐在一扇无始无终的窗户前吃葡萄，窗外是大雪覆盖的原野，女孩每吃掉一颗，葡萄串上就又长出一颗新的来。他被派往...', 0, 's26451351.jpg', NULL);
INSERT INTO `user_book`
VALUES (1573, 0, 0, '我是猫', '[日]夏目漱石 / 于雷 ', '7.9', 16935, ' 译林出版社 ', ' 1994-5-1 ', ' 10.30元',
        '《我是猫》确立了夏目漱石在文学史上的地位。小说采用幽默、讽刺、滑稽的手法，借助一只猫的视觉、听觉、感觉，以主人公中学教员珍野苦沙弥的日常起居为主线，穿插了邻...', 0, 's1000856.jpg', NULL);
INSERT INTO `user_book`
VALUES (1574, 0, 0, '聊斋新义', '汪曾祺 ', '7.8', 309, ' 广东人民出版社 ', ' 2020-1 ', ' 68.00',
        '【内容简介】·●《聊斋新义》是汪曾祺对蒲松龄《聊斋志异》的改写，共13篇。汪曾祺在改写时，保留了古代笔记小说的叙事特点，削弱原著中传奇性的情节，以他独...', 0, 's34841975.jpg', NULL);
INSERT INTO `user_book`
VALUES (1575, 0, 0, '第七天', '余华 ', '7.7', 3297, ' 新星出版社 ', ' 2018-8 ', ' 39.5',
        '名人推荐媒体推荐作者简介目录文摘编辑推荐《第七天》获华语文学传媒大奖·年度杰出作家。温暖与冷漠、良善与邪恶、真实与荒诞、实有与虚无，交织成一部时...', 0, 's30259153.jpg', NULL);
INSERT INTO `user_book`
VALUES (1576, 0, 0, '青铜葵花', '曹文轩 ', '8.7', 7441, ' 江苏少年儿童出版社 ', ' 2005-4 ', ' 18.00元',
        '这是一个男孩与女孩的故事。男孩叫青铜，女孩叫葵花。一个特别的机缘，让城市女孩葵花和乡要男孩青铜成了兄妹相称的朋友，他们一起生活、一起长大。12岁那年，命运又...', 0, 's1318622.jpg', NULL);
INSERT INTO `user_book`
VALUES (1577, 0, 0, '堂吉诃德', '[西] 塞万提斯 / 杨绛 ', '8.9', 2613, ' 人民文学出版社 ', ' 2015-6 ', ' 68',
        '本书是西班牙大师塞万提斯划时代的巨著，是文艺复兴时期的现实主义巨作，也是世界文学史上一颗璀璨的明珠。主人公堂吉诃德一方面脱离现实，爱幻想，企图仿效游侠骑士的...', 0, 's25837852.jpg', NULL);
INSERT INTO `user_book`
VALUES (1578, 0, 0, '你是我的荣耀', '顾漫 ', '6.9', 3170, ' 九州出版社 ', ' 2019-6 ', ' 36元',
        '十年过去，乔晶晶意外的星光闪耀，高中拒绝过她的男神却似乎已经泯然众人……时光匆匆，你依旧在我心中闪耀，我是否也能成为你的荣耀？是乔晶晶。高考一别以来，...', 0, 's33446985.jpg', NULL);
INSERT INTO `user_book`
VALUES (1579, 0, 0, '花冠病毒', '毕淑敏 ', '6.9', 3865, ' 湖南文艺出版社 ', ' 2012-1 ', ' 35.00元',
        '本书是国内首部心理能量小说，是著名作家、心理学家毕淑敏沉寂五年，继《女心理师》之后第一部长篇小说，探索当代社会心灵危机的应对之策。故事表现人性在面临危难时刻...', 0, 's10416503.jpg', NULL);
INSERT INTO `user_book`
VALUES (1580, 0, 0, '华氏451', '[美] 雷·布拉德伯里 / 于而彦 ', '8.4', 4986, ' 上海译文出版社 ', ' 2017-7 ', ' 45.00',
        '“比烧书更可怕的罪行是不阅读它们。”★科幻大师雷•布拉德伯里反乌托邦代表作精装纪念版★法国著名导演特吕弗电影《华氏451》原著★在焚烧书籍的年代...', 0, 's27077129.jpg', NULL);
INSERT INTO `user_book`
VALUES (1581, 0, 0, '动物凶猛', '王朔 ', '8.3', 28569, ' 中国电影出版社 ', ' 2004年02月 ', ' 15.50元',
        '他们逃课、泡妞、打群架，他们由于“不必学习那些后来注定要忘掉的无用的知识”而使自身的动物本能获得了空前的解放；他们深知自己的未来已被框定于固定的范畴之内，...', 0, 's1143694.jpg', NULL);
INSERT INTO `user_book`
VALUES (1582, 0, 0, '琅琊榜', '海宴 ', '8.5', 28259, ' 朝华出版社 ', ' 2007-12 ', ' 49.80元',
        '一卷风去琅琊榜，囊尽天下奇英才。他远在江湖，却能名动帝辇，只因神秘莫测而又言出必准的琅琊阁，突然断言他是一麒麟之才，得之可得天下一。然而，身为太子与誉王竞相...', 0, 's2326571.jpg', NULL);
INSERT INTO `user_book`
VALUES (1583, 0, 0, '白日梦我', '栖见 ', '6.5', 2145, ' 百花洲文艺出版社 ', ' 2019-7 ', ' 69.80元',
        '荒凉白日里，我被禁锢在陈朽的黑白梦境中，这里乌云蔽日、寸草不生，万物都荒芜。直到你从荒原中走过。你踏过之处，世界开始苏醒，我看见野花压满枝头沿途狂野...', 0, 's34454047.jpg', NULL);
INSERT INTO `user_book`
VALUES (1584, 0, 0, '天蓝色的彼岸', '（英）艾利克斯・希尔 / 张雪松 ', '8.6', 15086, ' 新世界出版社 ', ' 2003-12 ', ' 19.80元',
        '这是一部感人至深，触动灵魂的人性寓言。小男孩哈利因车祸去了另一个世界。在那里它他加入了等待去天蓝色彼岸的队伍。但他还挂念着爸爸，妈妈，姐姐和同学们，却又不...', 0, 's1041128.jpg', NULL);
INSERT INTO `user_book`
VALUES (1585, 0, 0, '尼罗河上的惨案', '[英] 阿加莎·克里斯蒂 / 张乐敏 ', '8.6', 13531, ' 新星出版社 ', ' 2013-9 ', ' 29.00元',
        '琳内特•里奇卫拥有一切——年轻、美貌、过人的头脑，而且还继承了巨额财产。但出乎所有人的意料，她闪电般地与自己的地产经纪人，也就是好友奎杰琳的男友多伊尔结了婚...', 0, 's25697546.jpg', NULL);
INSERT INTO `user_book`
VALUES (1586, 0, 0, '罗生门', '芥川龙之介 / 赵玉皎 ', '9.2', 5296, ' 云南人民出版社 ', ' 2015-8-7 ', ' 68.00元',
        '本书不仅收录了《罗生门》《竹林中》《地狱变》《河童》等最广为人知的经典名篇，同时精选了《英雄之器》《南京的基督》《丝女手记》《枯野抄》等国内罕见译作，共28...', 0, 's26627837.jpg', NULL);
INSERT INTO `user_book`
VALUES (1587, 0, 0, '台北人', '白先勇 ', '9.1', 7130, ' 广西师范大学出版社 ', ' 2015-1 ', ' 48.00',
        '白先勇的《台北人》，是一本深具复杂性的作品。此书由十四个短篇小说构成，写作技巧各篇不同，长短也相异，每篇都能独立存在，而称得上是一流的短篇小说。但这十四篇聚...', 0, 's26253699.jpg', NULL);
INSERT INTO `user_book`
VALUES (1588, 0, 0, '仿生人会梦见电子羊吗？', '[美] 菲利普·迪克 / 许东华 ', '8.7', 5954, ' 译林出版社 ', ' 2017-10 ', ' 39.80',
        '“科幻鬼才”菲利普•迪克成长于西方科技文明创造出的崭新辉煌的时代。彼时，人类进入了太空，登上了月球，成功制造出第一台工业用机器人……科技的蓬勃发展也催生出主...', 0, 's27041533.jpg', NULL);
INSERT INTO `user_book`
VALUES (1589, 0, 0, '恰似寒光遇骄阳', '囧囧有妖 ', '5.9', 740, ' 青岛出版社 ', ' 2019-2 ', ' 55.00元',
        '奇特的妆容掩盖着秀丽的面孔，别扭的性格隐藏着坚韧的内心。她以为这是对自己的保护，没想到却只是由谎言与欺骗构成的束缚。一夕之间，她的世界崩塌、粉碎，却因为...', 0, 's30458419.jpg', NULL);
INSERT INTO `user_book`
VALUES (1590, 0, 0, '象棋的故事', '[奥] 斯台芬·茨威格 / 张玉书 ', '9.1', 8445, ' 上海译文出版社 ', ' 2007-7 ', ' 23.00元',
        '《象棋的故事》是茨威格生前发表的最后一部中篇小说。小说表面上讲述了一条从纽约开往南美的轮船上一位业余国际象棋手击败了国际象棋世界冠军的故事，实际上倾诉了纳粹...', 0, 's2158684.jpg', NULL);
INSERT INTO `user_book`
VALUES (1591, 0, 0, '美丘', '[日]石田衣良 / 纪鑫 ', '7.7', 281, ' 青岛出版社 ', ' 2020-1 ', ' 35.00',
        '【编辑推荐】★直木奖得主继《孤独小说家》之后又一感人力作★活着是个奇迹，用尽全力，只为成为理想中的自己。★日本人气作家演绎“池袋西口公园”之外的别样青...', 0, 's27197024.jpg', NULL);
INSERT INTO `user_book`
VALUES (1592, 0, 0, '步步惊心', '桐华 ', '8.1', 53663, ' 民族出版社 ', ' 2006-6 ', ' 25.00元',
        '一脚踏空的少女，穿越千年的时空，从繁华都市的深圳来到风云诡变的宫廷。正处于争位时候的阿哥们，款款深情的目光后，带着探究、带着诱惑也带着几分真真假假的心疼。她...', 0, 's1812439.jpg', NULL);
INSERT INTO `user_book`
VALUES (1593, 0, 0, '鹿鼎记', '金庸 ', '9.0', 12449, ' 生活·读书·新知三联书店 ', ' 1994-5 ', ' 96.00元',
        '这是金庸先生最後一部小说，也是登峰造极之作，是金大侠自言最喜欢之大作。这部小说讲的是一个从小在扬州妓院长大的小孩韦小宝，他不会任何武功，...', 0, 's1559310.jpg', NULL);
INSERT INTO `user_book`
VALUES (1594, 0, 0, '檀香刑', '莫言 ', '8.2', 19417, ' 作家出版社 ', ' 2001-3 ', ' 27.00元',
        '《檀香刑》是莫言潜心五年完成的一部长篇新作。在这部神品妙构的小说中，莫言以1900年德国人在山东修建胶济铁路、袁世凯镇压山东义和团运动、八国联军攻陷北京、慈...', 0, 's1043485.jpg', NULL);
INSERT INTO `user_book`
VALUES (1595, 0, 0, '鬼吹灯全集', '天下霸唱 ', '8.7', 2120, ' 青岛出版社 ', ' 2016-1-1 ', ' CNY 248.40', '', 0, 's26734228.jpg',
        NULL);
INSERT INTO `user_book`
VALUES (1596, 0, 0, '战争与和平', '[俄] 托尔斯泰 / 刘辽逸 ', '9.5', 2130, ' 人民文学出版社 ', ' 2015-4 ', ' 88.00元',
        '《战争与和平》(1866—1869)描写1812年俄法战争的全过程，以当时四大贵族家庭的人物活动为线索，反映了1805至1820年间许多重大的历史事件，以及...', 0, 's25837845.jpg', NULL);
INSERT INTO `user_book`
VALUES (1597, 0, 0, '布鲁克林有棵树', '贝蒂·史密斯（Betty Smith) / 方柏林 ', '8.7', 8890, ' 译林出版社 ', ' 2009-7 ', ' 28.00元',
        '这是一本关于生存的书，讲述阅读如何让卑微的生命变得高贵，讲述知识如何改变人的修为与命运，讲述家庭的力量如何支撑孩子实现自己的梦想。二十世纪初的纽约布鲁克林...', 0, 's3826899.jpg', NULL);
INSERT INTO `user_book`
VALUES (1598, 0, 0, '红与黑', '[法] 司汤达 / 罗新璋 ', '8.6', 3290, ' 天津人民出版社 ', ' 2016-10 ', ' 42元',
        '【内容简介】欧洲批判现实主义文学奠基者、“现代小说之父”司汤达经典传世名作军职与圣职，梦想与现实，用红与黑的色彩谱写一首“灵魂的哲学诗”；自尊与自卑，...', 0, 's26897469.jpg', NULL);
INSERT INTO `user_book`
VALUES (1599, 0, 0, '我与地坛', '史铁生 ', '9.1', 57964, ' 春风文艺出版社 ', ' 2002-5 ', ' 25.00元',
        '收有“午餐半小时”、“我的遥远的清平湾”、“命若琴弦”、“第一人称”、“两个故事”等15篇史铁生的代表作。', 0, 's1209899.jpg', NULL);
INSERT INTO `user_book`
VALUES (1600, 0, 0, '大哥', 'Priest ', '8.5', 7042, ' 上海人民美术出版社 ', ' 2016-3-1 ', ' CNY 32.00',
        '《大哥》是Priest众多小说作品中有口皆碑，备受期待出版的小说。晋江文学城著名作者酥油饼倾情作序推荐。许多读者因为《大哥》喜欢上Priest并关注至今，得...', 0, 's26778494.jpg', NULL);
INSERT INTO `user_book`
VALUES (1601, 0, 0, '圣女的救济', '[日] 东野圭吾 / 袁斌 ', '7.7', 32814, ' 当代世界出版社 ', ' 2009-5 ', ' 30.00',
        '丈夫在家里遭毒杀，身为嫌疑犯的妻子却有着铜墙铁壁般的不在场证明。究竟是如何下毒的？被称之为神探伽利略的汤川教授再度挑战高难度的不可能犯罪，去证明在那惟有女性...', 0, 's3713327.jpg', NULL);
INSERT INTO `user_book`
VALUES (1602, 0, 0, '在路上', '[美]杰克·凯鲁亚克 / 姚向辉 ', '7.9', 479, ' 江苏凤凰文艺出版社 ', ' 2020-2-1 ', ' 59.90元',
        '◆摇滚青年永远的圣经！只要内心依然滚烫，你就一直在路上！◆鲍勃•迪伦、披头士乐队、滚石乐队、涅槃乐队、大门乐队、大卫•鲍伊、帕蒂•史密斯、卢•里德、乔...', 0, 's34911027.jpg', NULL);
INSERT INTO `user_book`
VALUES (1603, 0, 0, '窄门', '[法] 安德烈·纪德 / 桂裕芳 ', '8.1', 7984, ' 上海译文出版社 ', ' 2010-04 ', ' 18.00元',
        '究竟会不会有这样一种爱情，即使毫无希望，一个人也可以将它长久地保持在心中；即使生活每天吹它，也始终无法把它吹灭……？在《窄门》中，纪德将爱情中的神秘主义体验...', 0, 's4246979.jpg', NULL);
INSERT INTO `user_book`
VALUES (1604, 0, 0, '指匠', '[英] 萨拉·沃特斯 / 阿朗 ', '8.9', 3438, ' 上海人民出版社 ', ' 2017-9 ', ' 65.00元',
        '禁欲又放浪的维多利亚时代，坐拥家财的千金小姐莫德，日日被迫抄写舅舅的情色藏书，禁于深宅不得自由。直到某天，觊觎金钱又洞彻人心的“绅士”、出身贼窝却心思单纯的...', 0, 's26952166.jpg', NULL);
INSERT INTO `user_book`
VALUES (1605, 0, 0, '伊豆的舞女', '[日] 川端康成 / 叶渭渠 ', '8.2', 46394, ' 广西师范大学出版社 ', ' 2002-2 ', ' 23.80元',
        '收录“十六岁的日记”、“参加葬礼的名人”、“春天的景色”、“温泉旅馆”、“花的圆舞曲”等15篇短篇小说。', 0, 's1005521.jpg', NULL);
INSERT INTO `user_book`
VALUES (1606, 0, 0, '放学后', '[日]东野圭吾 / 赵峻 ', '7.4', 8085, ' 南海出版公司 ', ' 2017-9 ', ' 45',
        '东野圭吾成名作东野圭吾的一切都从这一本开始，梦开始的地方人终此一生值得珍惜的到底是什么？什么时候，人们在意的不是钱，而是友情、爱情、身体、容貌、回忆和...', 0, 's27102207.jpg', NULL);
INSERT INTO `user_book`
VALUES (1607, 0, 0, '送行', '袁哲生 ', '8.8', 1234, ' 四川人民出版社 ', ' 2019-8 ', ' 68.00元',
        '袁哲生纪念文集，收录早期绝版作品、未发表小说与私人手札。在《送行》中，我们得以见证一个经典作者的诞生。◎编辑推荐✨2005年，宝瓶文化为袁哲生出版...', 0, 's34453066.jpg', NULL);
INSERT INTO `user_book`
VALUES (1608, 0, 0, '鱼王', '(俄罗斯)维克托·阿斯塔菲耶夫 / 夏仲翼 ', '8.9', 4152, ' 广西师范大学出版社 ', ' 2017-4 ', ' 78.00元',
        '长篇小说《鱼王》是维克托·阿斯塔菲耶夫最具个性的一部代表作，俄罗斯当代文学的经典。全书由十三个内容相对独立的“叙事短篇小说”组成，全部围绕着人与自然的关系...', 0, 's26853356.jpg', NULL);
INSERT INTO `user_book`
VALUES (1609, 0, 0, '昭奚旧草', '书海沧生 ', '7.8', 7452, ' 百花洲文艺出版社 ', ' 2015-4 ', ' 49.80元',
        '黄炎宏土，华国上百，诸侯分封，集为国昭。史载杂项三百余万册，册中八万万人，万万人中各自寥寥，只手翻过五十年，不过春花落下的一臾。那书中有座海棠园，园子里有...', 0, 's26334227.jpg', NULL);
INSERT INTO `user_book`
VALUES (1610, 0, 0, '流浪地球', '刘慈欣 ', '8.6', 56628, ' 湖北长江出版集团，长江文艺出版社 ', ' 2008-11 ', ' 28.00元',
        '此书为刘慈欣获中国科幻银河奖的中短篇科幻小说作品集，收录有《流浪地球》《乡村教师》《全频带阻塞干扰》等获奖佳作。', 0, 's3266609.jpg', NULL);
INSERT INTO `user_book`
VALUES (1611, 0, 0, '雪人', '[挪威] 尤·奈斯博 / 林立仁 ', '8.1', 17654, ' 湖南文艺出版社 ', ' 2016-4 ', ' 39.00元',
        '初雪的夜晚，小男孩从噩梦中醒来，惊觉妈妈不见踪影，院子里凭空出现一个不知是谁堆起的雪人。他当圣诞礼物送给妈妈的粉色围巾，就围在雪人的脖子上，一排由黑色卵石组...', 0, 's26729776.jpg', NULL);
INSERT INTO `user_book`
VALUES (1612, 0, 0, '活着', '余华 ', '9.1', 86380, ' 上海文艺出版社 ', ' 2004-5 ', ' 13.00元',
        '地主少爷富贵嗜赌成性，终于赌光了家业一贫如洗，穷困之中的富贵因为母亲生病前去求医，没想到半路上被国民党部队抓了壮丁，后被解放军所俘虏，回到家乡他才知道母亲已...', 0, 's1061118.jpg', NULL);
INSERT INTO `user_book`
VALUES (1613, 0, 0, '第一炉香', '张爱玲 ', '8.4', 35781, ' 花城出版社 ', ' 1997-3 ', ' 11.5',
        '沉香屑---第一炉香沉香屑---第二炉香茉莉香片心经封锁琉璃瓦年轻的时候花凋中国的日夜', 0, 's1082162.jpg', NULL);
INSERT INTO `user_book`
VALUES (1614, 0, 0, '时生', '〔日〕东野圭吾 / 徐建雄 ', '7.6', 11292, ' 南海出版公司 ', ' 2015-7-1 ', ' 39.50元',
        '读了《解忧杂货店》意犹未尽的话，来读《时生》吧，会给你更多温暖与感动东野圭吾暖心力作给现代人久违的触动：你从没觉得能来到这世上真好吗？日本万名东野粉...', 0, 's26387514.jpg', NULL);
INSERT INTO `user_book`
VALUES (1615, 0, 0, '简·爱', '[英] 夏洛蒂·勃朗特 / 祝庆英 ', '8.4', 8376, ' 上海译文出版社 ', ' 2006-8 ', ' 16.00元',
        '《简•爱》的主要内容是：出身贫寒的简•爱在做家庭教师时，与男主人罗切斯特产了真挚的爱情。就在两人的婚礼上，简•爱发现罗切特家的阁楼上藏着一个疯女人，而她竟是...', 0, 's1894745.jpg', NULL);
INSERT INTO `user_book`
VALUES (1616, 0, 0, '我们一无所有', '[美] 安东尼·马拉 / 施清真 ', '8.7', 5422, ' 江苏凤凰文艺出版社 ', ' 2018-2 ', ' 49.80',
        '一部堪比米兰·昆德拉《笑忘书》的伟大作品。──《纽约时报》大时代、小人物的命运悲歌横扫欧美各大书评人榜单的畅销书作家安东尼·马拉作品用厚重而文艺的...', 0, 's27193117.jpg', NULL);
INSERT INTO `user_book`
VALUES (1617, 0, 0, '你丫上瘾了', '柴鸡蛋 ', '6.9', 4267, ' 自行出版 ', ' 2016-2-1 ', ' 25.00', '', 0, 's26732446.jpg', NULL);
INSERT INTO `user_book`
VALUES (1618, 0, 0, '汤姆索亚历险记', '马克・吐温 / 陆艳能 ', '8.4', 3622, ' 二十一世纪出版社 ', ' 2003-10-1 ', ' 9.80',
        '故事发生在南北战争前美国南方一个叫圣彼得堡的小镇上。汤姆·索亚生性顽皮，厌恶教会学校里枯燥无味的生活。他和野孩子哈克一道搞了很多恶作剧，甚至离家出走，结伴逃...', 0, 's1142578.jpg', NULL);
INSERT INTO `user_book`
VALUES (1619, 0, 0, '赤朽叶家的传说', '[日] 樱庭一树 / 虞侃 ', '8.6', 126, ' 上海文艺出版社 ', ' 2020-4-16 ', ' 49.00元',
        '◎这就是日本的《百年孤独》！◎读三代赤朽叶家的女性传奇，历一场日本文化的世纪之旅◎一边是山野神隐中的八岐大蛇、千里眼、野貉父子、财神惠比寿；一边是泡沫...', 0, 's34996428.jpg', NULL);
INSERT INTO `user_book`
VALUES (1620, 0, 0, '长安乱', '韩寒 ', '7.4', 81730, ' 中国青年出版社 ', ' 2004-8 ', ' 20.00元',
        '武林纷乱，朝廷为了掩盖真相，坐视不理，一时间豪强并起，争夺武林盟主的宝座，首当其冲的就是武林两大门派少林和武当。少林派中有一个五岁进入少林的少年，这个少年...', 0, 's1049219.jpg', NULL);
INSERT INTO `user_book`
VALUES (1621, 0, 0, '龙族Ⅲ', '江南 ', '8.2', 13093, ' 长江出版社 ', ' 2013-12 ', ' 36.80元',
        '逆命者，将被灼热的矛，贯穿在地狱的最深处！卡塞尔三人组从源氏重工撤出后，再次陷入东京暗流。路明非与绘梨衣为躲避蛇岐八家的追捕，躲进了情人旅馆。绘梨衣是开启...', 0, 's25825717.jpg', NULL);
INSERT INTO `user_book`
VALUES (1622, 0, 0, '别相信任何人', '[英]S.J.沃森 / 胡绯 ', '6.8', 24660, ' 中信出版社 ', ' 2011-10 ', ' 29.00元',
        '每天醒来，克丽丝汀都身处一个陌生的房间，身旁躺着一个不认识的男人。当她面对镜子，发现自己居然老了20岁。那个男人会告诉他，你今年47岁，20年前遭遇严车祸...', 0, 's6832303.jpg', NULL);
INSERT INTO `user_book`
VALUES (1623, 0, 0, '庆余年·贰', '猫腻 ', '8.2', 6637, ' 中国友谊出版公司 ', ' 2008-07 ', ' 28.00元',
        '一个年轻的病人，因为一次毫不意外的经历，重生到一个完全不同的世界，成为古代庆国伯爵府一个并不光彩的私生子。修行无名功诀，踏足京都官场，继承庞大商团……范闲，...', 0, 's3165135.jpg', NULL);
INSERT INTO `user_book`
VALUES (1624, 0, 0, '钟表馆事件', '[日]绫辻行人 / 刘羽阳 ', '8.3', 6063, ' 新星出版社 ', ' 2014-5 ', ' 35.00元',
        '镰仓的寂静山林，隐藏着又一处中村青司设计的神秘建筑---钟表馆。馆内上百个不同的钟表，以不可思议的方式惊人地指向相同的时刻并等速行进着；馆外竖立着一座没有指...', 0, 's25848819.jpg', NULL);
INSERT INTO `user_book`
VALUES (1625, 0, 0, '罪与罚', '[俄] 陀思妥耶夫斯基 / 曾思艺 ', '9.6', 1077, ' 浙江文艺出版社 ', ' 2019-2 ', ' 68.00元',
        '至今，它仍是西方文艺青年的上等读物，陀思妥耶夫斯基是俄罗斯文学的灵魂。——陈丹青◆	美剧犯罪类题材的起源，关于梦和潜意识的刻画以及“超人”理论启发了弗洛...', 0, 's30438790.jpg', NULL);
INSERT INTO `user_book`
VALUES (1626, 0, 0, '穆斯林的葬礼', '霍达 ', '8.0', 4833, ' 北京十月文艺出版社 ', ' 2012-12 ', ' 39.80元',
        '《穆斯林的葬礼》是一部长篇小说，一个穆斯林家族，六十年间的兴衰，三代人命运的沉浮，两个发生在不同时代、有着不同内容却又交错扭结的爱情悲剧。两根故事线，一大家...', 0, 's10788580.jpg', NULL);
INSERT INTO `user_book`
VALUES (1627, 0, 0, '当尼采哭泣', '（美）欧文 D.亚隆（Irvin D.Yalom） / 侯维之 ', '8.8', 5163, ' 机械工业出版社 ', ' 2011-1 ', ' 36.00元',
        '欧文·亚隆流传最广的经典之作！当名医遇到哲学超人，演绎出心理咨询的诞生过程初级心理咨询师推荐必读书目！“孤独只存在于孤独之中，一旦分担，它就蒸发了。”...', 0, 's5940553.jpg', NULL);
INSERT INTO `user_book`
VALUES (1628, 0, 0, '道林·格雷的画像', '[英] 奥斯卡·王尔德 / 孙宜学 ', '8.9', 5166, ' 浙江文艺出版社 ', ' 2017-1-1 ', ' 32.00元',
        '“真悲哀啊！我会变老，但这幅画将会永远年轻……如果能反过来就好了！如果永远年轻的是我，而变老的是画，那该多好啊！为了这个，我愿献出这世上我拥有的一切！...', 0, 's26912631.jpg', NULL);
INSERT INTO `user_book`
VALUES (1629, 0, 0, '鬼吹灯Ⅱ之一·黄皮子坟', '天下霸唱 ', '7.7', 18858, ' 安徽文艺出版社 ', ' 2007-7 ', ' 26.80元',
        '胡八一出国在即，整理旧物时翻出一张老照片，那时，他和胖子正作为知青在大兴安岭的山区插队，山里的生活让年轻气盛的他们如鱼得水。为了换几斤水果糖上山打黄皮子（...', 0, 's2149655.jpg', NULL);
INSERT INTO `user_book`
VALUES (1630, 0, 0, '南方高速', '[阿根廷] 胡利奥·科塔萨尔 / 金灿、林叶青、陶玉平 ', '8.8', 4096, ' 南海出版公司 ', ' 2017-7 ', ' 68.00',
        '★马尔克斯、聂鲁达、萨拉马戈、略萨、莫言5位诺贝尔文学奖得主齐声推崇★安东尼奥尼、王家卫2代世界级导演倾心爱重★天才的，迷人的，独一无二...', 0, 's27079479.jpg', NULL);
INSERT INTO `user_book`
VALUES (1631, 0, 0, '古都', '[日] 川端康成 / 叶渭渠、唐月梅 ', '8.7', 7240, ' 南海出版公司 ', ' 2014-1 ', ' 39.50元',
        '《古都》收录川端康成经典小说《古都》与《名人》。古都京都，被织锦商户收养的千重子出落成了美丽的少女。祇园节夜里，她遇到山村姑娘苗子，惊讶地得知两人是孪生姐...', 0, 's25788092.jpg', NULL);
INSERT INTO `user_book`
VALUES (1632, 0, 0, '火星救援', '[美] 安迪·威尔 / 陈灼 ', '8.9', 12309, ' 译林出版社 ', ' 2015-10 ', ' 38.00',
        '六天前，马克·沃特尼成为了第一批行走在火星上的人。如今，他也将成为第一个葬身火星的人。一场突如其来的风暴让阿瑞斯三船员被迫放弃任务。撤离过程中，沃特尼遭遇...', 0, 's26586492.jpg', NULL);
INSERT INTO `user_book`
VALUES (1633, 0, 0, '我会在六月六十日回来', '[法] 马塞尔·埃梅 / 李玉民 ', '9.5', 34, ' 北京联合出版公司 ', ' 2020-5 ', ' 198.00',
        '本书是脑洞大师、法国短篇小说圣手马塞尔·埃梅的短篇小说全集，收录了除儿童故事之外的全部近百篇埃梅短篇小说，由著名法语翻译家李玉民老师耗费三十余年时间潜心翻译...', 0, 's34993195.jpg', NULL);
INSERT INTO `user_book`
VALUES (1634, 0, 0, '市舶司沉船案（全两册）', '申澜 ', '8.1', 119, ' 广东人民出版社 ', ' 2020-5 ', ' 88.00元',
        '破此案，南宋方能延续一百五十年！靖康之难（1126）汴京城破，徽钦二帝被虏传国玉玺丢失，公私府库俱劫一空。高宗赵构被迫南迁至临安（1127）。绍兴二年（...', 0, 's35039515.jpg', NULL);
INSERT INTO `user_book`
VALUES (1635, 0, 0, '伊凡·伊里奇之死', '[俄] 列夫·托尔斯泰 / 许海燕 ', '9.2', 1990, ' 东方出版社 ', ' 2017-10 ', ' 46.00元',
        '◐54个国家100位一流作家选为100部最伟大的文学经典之一。托尔斯泰共有三部作品入选：《战争与和平》《安娜·卡列尼娜》《伊凡·伊里奇之死及其他》。◐人类...', 0, 's27140882.jpg', NULL);
INSERT INTO `user_book`
VALUES (1636, 0, 0, '生死疲劳', '莫言 ', '8.2', 13995, ' 作家出版社 ', ' 2006-1-1 ', ' 39.00元',
        '莫言怀抱华美颓败的土地，决意对半个世纪的土地做出重述。莫言郑重地将土地放在记忆的丰碑前，看着它在历史中渐渐荒废并确认它在荒废中重新获得庄严、熔铸、锋利。\r...', 0, 's1465007.jpg', NULL);
INSERT INTO `user_book`
VALUES (1637, 0, 0, '刀锋', '[英] 威廉·萨默塞特·毛姆 / 林步升 ', '8.9', 4650, ' 猫头鹰文化·浙江文艺出版社 ', ' 2016-12 ', ' 39.80',
        '★全新译本，专文导读★“最会讲故事的作家”“整个英语世界最畅销的作家之一”毛姆长篇代表作★毛姆唯一一部以自己的真名命名叙事者的长篇小说，美国出版首月狂销...', 0, 's26896878.jpg', NULL);
INSERT INTO `user_book`
VALUES (1638, 0, 0, '流星之绊', '[日]东野圭吾 / 徐建雄 ', '8.0', 8845, ' 南海出版公司 ', ' 2016-6 ', ' 45.00元',
        '日本年度畅销小说第1名！日本连续56天平均每15秒售出1本，创东野圭吾小说销售最快纪录！横须贺，夏夜。读小学的三兄妹偷偷去看流星雨，半夜回家却发现父母...', 0, 's26774897.jpg', NULL);
INSERT INTO `user_book`
VALUES (1639, 0, 0, '圣女的救济', '[日] 东野圭吾 / 袁斌 ', '7.7', 10393, ' 南海出版公司 ', ' 2017-1-1 ', ' 45.00元',
        '《圣女的救济》是日本作家东野圭吾的经典长篇小说，比《嫌疑人X的献身》更出人意料、更难破解，上市一周即登顶日本三大图书榜。东野圭吾说：“在写《嫌疑人X的献身》...', 0, 's26906797.jpg', NULL);
INSERT INTO `user_book`
VALUES (1640, 0, 0, '陆小凤传奇', '古龙 ', '8.7', 16902, ' 珠海出版社 ', ' 2005-8 ', ' 94.00元',
        '本书为新版古龙作品集绘图珍藏本之51-55，古龙为从1960年创作《苍穹神剑》始，一生共写了近70部武侠小说，在小说中，他直接地或者通过人物的口，肆无忌惮地...', 0, 's1089512.jpg', NULL);
INSERT INTO `user_book`
VALUES (1641, 0, 0, '酒吧长谈', '[秘鲁]马里奥·巴尔加斯·略萨（Mario Vargas Llosa） / 孙家孟 ', '9.4', 291, ' 人民文学出版社 ', ' 2017-9 ',
        ' 79.00元', '“如果大火将烧毁我所有作品而只能留下一部，我希望是《酒吧长谈》。”诺贝尔文学奖得主略萨高峰代表作他的父亲富可敌国，他却选择做一个一事无成的倒霉小记者；他...', 0,
        's27176305.jpg', NULL);
INSERT INTO `user_book`
VALUES (1642, 0, 0, '黎明之街', '[日] 东野圭吾 / 李超楠 ', '7.4', 7602, ' 南海出版公司 ', ' 2018-2 ', ' 49.50元',
        '《黎明之街》是东野圭吾极具突破性的经典长篇小说，在文学价值和可读性上惊人地同时达到了极高的高度，位列东野圭吾十大杰作。《黎明之街》不是推理小说，悬念却持续到...', 0, 's27178063.jpg', NULL);
INSERT INTO `user_book`
VALUES (1643, 0, 0, '厨房', '[日]吉本芭娜娜 / 李萍 ', '8.1', 16722, ' 上海译文出版社 ', ' 2009-10 ', ' 22.00元',
        '《厨房》——作者的成名作。少女樱井美影失去所有亲人后，只有在厨房的冰箱旁才能安睡，这时，曾受她祖母关照的田边雄一与他的变性人母亲惠理子收留了她，这个病态家庭...', 0, 's4127527.jpg', NULL);
INSERT INTO `user_book`
VALUES (1644, 0, 0, '人生', '路遥 ', '8.6', 6032, ' 北京十月文艺出版社 ', ' 2012-3-1 ', ' 25.00元',
        '《人生》是路遥的一部中篇小说，发表于1982年，它以改革时期陕北高原的城乡生活为时空背景，叙述了高中毕业生高加林回到土地又离开土地，再回到土地这样人生的变化...', 0, 's10562233.jpg', NULL);
INSERT INTO `user_book`
VALUES (1645, 0, 0, '他来了，请闭眼', '丁墨 ', '7.1', 15570, ' 百花洲文艺出版社 ', ' 2014-7-1 ', ' 45.00',
        '当你拥有了一个聪明、傲娇又忠犬的男友……约会时，他说：“我对这种事没兴趣。不过如果你每十分钟亲我一下，我可以陪你做任何无聊的事。”吃醋时，他说：“与我相...', 0, 's25912734.jpg', NULL);
INSERT INTO `user_book`
VALUES (1646, 0, 0, '雷雨', '曹禺 ', '8.6', 59300, ' 人民文学出版社 ', ' 1999-05 ', ' 9.20',
        '《雷雨》所展示的是一幕人生大悲剧，是命运对人残忍的作弄。专制、伪善的家长，热情、单纯的青年，被情爱烧疯了心的魅惑的女人，痛悔着罪孽却又不自知地犯下更大罪孽的...', 0, 's1013416.jpg', NULL);
INSERT INTO `user_book`
VALUES (1647, 0, 0, '局外人', '[法]加缪 / 柳鸣九 ', '8.9', 7009, ' 天津人民出版社 ', ' 2016-7 ', ' 32.00元',
        '《局外人》是1957年诺贝尔文学奖得主、法国存在主义作家阿尔贝•加缪的小说代表作。加缪这样评价他的“局外人”：他不耍花招，拒绝说谎，是什么他就说是什么。他拒...', 0, 's26839300.jpg', NULL);
INSERT INTO `user_book`
VALUES (1648, 0, 0, '百年孤独', '[哥伦比亚] 加西亚·马尔克斯 / 范晔 ', '9.4', 4863, ' 南海出版公司 ', ' 2017-8 ', ' 55.00元',
        '《百年孤独》是魔幻现实主义文学的代表作，描写了布恩迪亚家族七代人的传奇故事，以及加勒比海沿岸小镇马孔多的百年兴衰，反映了拉丁美洲一个世纪以来风云变幻的历史。...', 0, 's27107109.jpg', NULL);
INSERT INTO `user_book`
VALUES (1649, 0, 0, '打火机与公主裙·荒草园', 'Twentine ', '8.3', 7279, ' 青岛出版社 ', ' 2017-3 ', ' 36.00元',
        '“如果人临死前真有走马灯这个环节，她大概会是我这辈子见的最后一人。”从青涩的校园时代里一抹明亮的金，到厮杀的职场中那化不开的黑，李峋就像荒芜之地的一株野草...', 0, 's26978506.jpg', NULL);
INSERT INTO `user_book`
VALUES (1650, 0, 0, '多情剑客无情剑(上、中、下)', '古龙 ', '8.7', 16543, ' 海天出版社 ', ' 1991-12-01 ', ' 49.8',
        '《小李飞刀:多情剑客无情剑》一直被公认为古龙武侠作品的巅峰之作和最高成就。它不仅是一部阐明武学真谛的作品，还是一部写尽人间世态炎凉的人情历史画，更是一部触动...', 0, 's1422833.jpg', NULL);
INSERT INTO `user_book`
VALUES (1651, 0, 0, '狼王梦', '沈石溪 / wu ', '8.4', 5025, ' 浙江少年儿童出版社 ', ' 2009-10 ', ' 18.00元',
        '《狼王梦》内容简介：绝境分娩、培养黑仔、魂断捕兽夹、重塑王者品性、寄望后代、血洒碧空、被淘汰的警犬、阴差阳错进了马戏团、扮演大灰狼、鲜花和掌声不属于它、遭哈...', 0, 's4061972.jpg', NULL);
INSERT INTO `user_book`
VALUES (1652, 0, 0, '华胥引（全二册）', '唐七公子 ', '8.4', 67947, ' 现代出版社 ', ' 2011-1 ', ' 39.80元',
        '《华胥引(套装共2册)》主要内容包括：华胥一引，乱世成殇。琴弦震响于九州列国之上，无声惊动。这是一个发生在乱世的故事。城破之日，卫国公主叶蓁以身殉国，依靠鲛...', 0, 's5916880.jpg', NULL);
INSERT INTO `user_book`
VALUES (1653, 0, 0, '日瓦戈医生', '〔苏〕鲍里斯·帕斯捷尔纳克 / 蓝英年、张秉衡 ', '8.5', 3960, ' 人民文学出版社 ', ' 2006-1-1 ', ' 28',
        '尤里·日瓦戈是西伯利亚富商的儿子，但很小便被父亲遗弃。10岁丧母成了孤儿。舅父把他寄养在莫斯科格罗梅科教授家。教授一家待他很好，让他同女儿东尼娅一起受教育。...', 0, 's1469878.jpg', NULL);
INSERT INTO `user_book`
VALUES (1654, 0, 0, '1Q84 BOOK 2', '[日] 村上春树 / 施小炜 ', '8.4', 62602, ' 南海出版公司 ', ' 2010-6 ', ' 36.00元',
        '1Q84简体中文版官方网站：无法显示', 0, 's4885241.jpg', NULL);
INSERT INTO `user_book`
VALUES (1655, 0, 0, '小妇人', '[美] 路易莎·梅·奥尔科特 / 刘春英、陈玉立 ', '8.4', 292, ' 译林出版社 ', ' 2020-2 ', ' 49.00元',
        '\"女性有自己的思想与灵魂，她们不止美，也壮志凌云、才华超群。\"★全世界少女的暖心枕边书——成长中的困惑，在这里找到答案！★【2020年全国即将上映】横...', 0, 's34907958.jpg', NULL);
INSERT INTO `user_book`
VALUES (1656, 0, 0, '他知道风从哪个方向来', '玖月晞 ', '7.7', 9979, ' 百花洲文艺出版社 ', ' 2015-12-1 ', ' 45.00',
        '这样确切的爱，一生只有一次。彭野，一个即使没有手表也能知道时间的男人，一个在草原上识别八十八个星座的男人，一个拥有神射手般枪法的男长，一个为了心爱的女人能...', 0, 's26662515.jpg', NULL);
INSERT INTO `user_book`
VALUES (1657, 0, 0, '情书', '岩井俊二 / 穆晓芳 ', '8.9', 4616, ' 南海出版公司 ', ' 2018-6-1 ', ' 45.00元',
        '有一个可以想念的人，就是幸福岩井俊二经典电影《情书》原著小说，挚爱珍藏版————————————————————————————————《情书》是作家...', 0, 's30230525.jpg', NULL);
INSERT INTO `user_book`
VALUES (1658, 0, 0, '倚天屠龙记', '金庸 ', '8.7', 17229, ' 生活·读书·新知三联书店 ', ' 1994年5月 ', ' 76.80',
        '《倚天屠龙记》，金庸武侠小说，著于1961年，是“射雕三部曲”系列第三部。该书以元末群雄纷起、江湖动荡为广阔背景，叙述武当弟子张无忌的江湖生涯，表现众武林豪...', 0, 's1789841.jpg', NULL);
INSERT INTO `user_book`
VALUES (1659, 0, 0, '度外', '黄国峻 ', '8.4', 1260, ' 四川人民出版社 ', ' 2019-1 ', ' 45.00元',
        '时间如此真实，真实如此短暂。与袁哲生并称，被期待撑起21世纪小说江山的作家黄国峻惊艳华文文坛代表作将一切担忧、恐慌、丧失感引爆的“时间痉挛”◎编辑推...', 0, 's30382687.jpg', NULL);
INSERT INTO `user_book`
VALUES (1660, 0, 0, '沙之书', '[阿根廷] 豪·路·博尔赫斯 / 王永年 ', '9.0', 5568, ' 上海译文出版社 ', ' 2015-7 ', ' 26.00',
        '小说集，一九七五年出版，收短篇小说十三篇，博尔赫斯写作后期的顶尖之作。面对一本页码无穷尽的“沙之书”，先开始是据为己有的幸福感，最终领悟是可怕的怪物，是一切...', 0, 's25796049.jpg', NULL);
INSERT INTO `user_book`
VALUES (1661, 0, 0, '天幕红尘', '豆豆 ', '8.3', 2748, ' 作家出版社 ', ' 2013-6-1 ', ' 36.00元',
        '《天幕红尘》除了继续保存豆豆小说特有的世界背景，商战风云和人生思考之外，政治元素的介入，显得非常突出，从苏联解体，石油大亨罗家明一夜之间破产自杀写起，始终不...', 0, 's24748615.jpg', NULL);
INSERT INTO `user_book`
VALUES (1662, 0, 0, '达·芬奇密码', '[美] 丹·布朗 / 朱振武、吴晟、周元晓 ', '8.6', 19732, ' 人民文学出版社 ', ' 2009-4 ', ' 26.00元',
        '史实与悬疑、艺术与惊悚……天衣无缝的雅俗融合，难觅破绽的情节营造，欲罢不能的阅读快感！午夜，卢浮宫博物馆年迈的馆长被人杀害在大陈列馆的镶木地板上。在人生的...', 0, 's3649782.jpg', NULL);
INSERT INTO `user_book`
VALUES (1663, 0, 0, '光明共和国', '[西]安德烈斯·巴尔瓦 / 蔡学娣 ', '9.0', 82, ' 理想国 | 广西师范大学出版社 ', ' 2020-4 ', ' 46',
        '“世界失败的那天清晨，人们正忙着搜捕几个流浪的孩子。”《黑暗之心》+《蝇王》，一部虚构的美洲编年史，一部寓言式的现代启示录。大森林吞没了圣克里斯托瓦尔的...', 0, 's34978587.jpg', NULL);
INSERT INTO `user_book`
VALUES (1664, 0, 0, '时间龙', '林燿德 ', '7.9', 84, ' 后浪丨四川文艺出版社 ', ' 2020-4 ', ' 45.00元',
        '台湾文学史的传奇，获得三十余项文学奖林燿德科幻史诗力作时报文学奖得奖作品扩写⭐编辑推荐巨大废铁神像头顶的幽蓝光环、以音乐定位心灵原点的理想主义宗教、...', 0, 's34982185.jpg', NULL);
INSERT INTO `user_book`
VALUES (1665, 0, 0, '神探福迩，字摩斯', '莫理斯 ', '8.0', 127, ' 北京时代华文书局 ', ' 2020-3 ', ' 49.80元',
        '神探福迩，字摩斯，满族镶蓝旗，咸丰四年（1854年）出生，卒年不祥，主要活跃于光绪年间，其事迹由生平挚友华笙大夫记载，以白话小说形式出版，清末民初时期曾风靡...', 0, 's34885303.jpg', NULL);
INSERT INTO `user_book`
VALUES (1666, 0, 0, '流金岁月', '（香港）亦舒 ', '8.4', 8636, ' 海天出版社 ', ' 1998-06-01 ', ' 9.80元',
        '朱锁锁和蒋南孙是一对挚友。投入社会后，朱锁锁在红尘中起伏，凭着才智和相貌很快发达起来，蒋南孙则成为一个出色的白领丽人。人事沧桑，岁月无情，她们遍尝了生活的个...', 0, 's1046172.jpg', NULL);
INSERT INTO `user_book`
VALUES (1667, 0, 0, '大象席地而坐', '胡迁 ', '8.6', 2293, ' 译林出版社 ', ' 2019-11 ', ' 58.00',
        '拍电影时，他叫胡波；写小说时，他叫胡迁。这两个身份如同两条平行线，一直贯穿其创作生涯，构置了两条独具魅力的创作轨迹，直到在电影《大象席地而坐》中交叠重合。本...', 0, 's34866400.jpg', NULL);
INSERT INTO `user_book`
VALUES (1668, 0, 0, '大师和玛格丽特', '[俄] 布尔加科夫 / 钱诚 ', '9.0', 3912, ' 人民文学出版社 ', ' 2004-06 ', ' 21.00元',
        '《大师和玛格丽特》究竟是怎样一部书？它是一本“对二三十年代苏联社会现实进行恶意嘲讽”、“主张向恶势力投降并为它服务”的怪诞小说呢？抑或是“启迪人们内心的善，...', 0, 's1077492.jpg', NULL);
INSERT INTO `user_book`
VALUES (1669, 0, 0, '女生徒', '[日]太宰治 / 陆求实 ', '8.3', 710, ' 天津人民出版社 ', ' 2020-1 ', ' 39.80',
        '“在这泥沼般的人世间，好想美丽地活下去。”——————————————————————————太宰治\"女性独白体“短篇小说集野间文艺翻译奖得主陆求实...', 0, 's34924767.jpg', NULL);
INSERT INTO `user_book`
VALUES (1670, 0, 0, '一只特立独行的猪', '王小波 ', '8.8', 67066, ' 北方文艺出版社 ', ' 2006-4 ', ' 18.80元',
        '这本书里除了文化杂文，还有给其他书写的序言与跋语。这些序言与跋语也表明了我的一些态度。除此之外，还有一些轻松的随笔。不管什么书，我都不希望它太严肃，这一本也...', 0, 's1767945.jpg', NULL);
INSERT INTO `user_book`
VALUES (1671, 0, 0, '蜜汁炖鱿鱼', '墨宝非宝 ', '5.8', 7408, ' 百花洲文艺出版社 ', ' 2016-1 ', ' 29.80元',
        '身为翻唱界的软萌小天后，佟年从来没想到她会对一个人一见钟情。她以为她追的是个三次元帅哥，不想，此人却是电竞圈的远古传说。“韩商言”，她微微仰着头，“我喜...', 0, 's26695255.jpg', NULL);
INSERT INTO `user_book`
VALUES (1672, 0, 0, '想見你', '简奇峰、林欣慧、Di Fer ', '7.5', 172, ' 水靈文創 ', ' 2020-2-17 ', ' NT$380',
        '因為走不出對已逝男友王詮勝的思念，黃雨萱試圖用一款可以找到世界上另一個自己的APP軟體，找到另一個與王詮勝相似的男人，但在這張二十年前的照片裡，她卻看到了另...', 0, 's34962620.jpg', NULL);
INSERT INTO `user_book`
VALUES (1673, 0, 0, '国境以南 太阳以西', '[日] 村上春树 / 林少华 ', '8.3', 34773, ' 上海译文出版社 ', ' 2001-8 ', ' 13.50元',
        '37岁的男主人公，在东京市区拥有两家兴旺的酒吧，还有娇美的妻子，可爱的女儿，他是一位真正的成功人士。但是，他的内心还是感到饥饿干渴，事业和家庭都填补不了，而...', 0, 's1015452.jpg', NULL);
INSERT INTO `user_book`
VALUES (1674, 0, 0, '围城', '钱钟书 ', '9.2', 11761, ' 人民文学出版社 ', ' 2013-6 ', ' 28.00',
        '《围城》三十年来横贯常销畅销小说之首。《围城》是钱钟书唯一的一部长篇小说，堪称中国现当代长篇小说的经典。小说塑造了抗战开初一类知识分子的群像，生动反映了在国...', 0, 's24745649.jpg', NULL);
INSERT INTO `user_book`
VALUES (1675, 0, 0, '银河系搭车客指南', '[英] 道格拉斯·亚当斯 / 姚向辉 ', '8.7', 13866, ' 上海译文出版社 ', ' 2011-7 ', ' 26.00元',
        '突如其来的寂静笼罩了地球。这事实上比噪音更加可怕。有一会儿，什么也没有发生。巨大的飞船一动不动地挂在空中，覆盖了地球上的每个国家。在黯然退场之前，地球首...', 0, 's6265745.jpg', NULL);
INSERT INTO `user_book`
VALUES (1676, 0, 0, '杉杉来吃', '顾漫 ', '6.8', 16813, ' 江苏文艺出版社 ', ' 2011-8 ', ' 25.00元',
        '《微微一笑很倾城》囧囧可爱姐妹篇顾漫《杉杉来吃》长篇完结版终于开吃！搞笑可爱的恋情+甜蜜好吃的番外+浪漫温馨的海报随书附赠“龟漫囧记”四格漫画本~\\(...', 0, 's6792678.jpg', NULL);
INSERT INTO `user_book`
VALUES (1677, 0, 0, '审查官手记', '[葡] 安东尼奥·洛博·安图内斯 / 王渊 ', '9.3', 40, ' 中信出版集团 ', ' 2020-5 ', ' 55',
        '「不要阅读这部小说。请你们像做梦一样在我的篇章中行走，请你们以得病的方式感受这本书。」◎当代葡语文学的护旗手X诺贝尔文学奖提名者，萨拉马戈一生的对手...', 0, 's34978410.jpg', NULL);
INSERT INTO `user_book`
VALUES (1678, 0, 0, '华胥引', '唐七公子 ', '8.0', 6686, ' 现代出版社 ', ' 2011-8 ', ' 45.00元',
        '华胥一引，乱世成殇。琴弦震响于九州列国之上，无声惊动。这是一个发生在乱世的故事。城破之日，卫国公主叶蓁以身殉国，依靠鲛珠死而复生。当她弹起华胥调，便生...', 0, 's6798506.jpg', NULL);
INSERT INTO `user_book`
VALUES (1679, 0, 0, '欢乐英雄', '古龙 ', '8.8', 12740, ' 珠海出版社 ', ' 2005-8 ', ' 28.00元',
        '成书于1971年。当时是古龙巅峰时期，是古龙个人最爱的作品。但因为小说与一般传统的武侠小说有着许多不同，叙述也是采用了散文化的笔法，因此在一些读者中间并未得...', 0, 's1264579.jpg', NULL);
INSERT INTO `user_book`
VALUES (1680, 0, 0, '格林童话全集', '[德国]格林兄弟 / 魏以新 ', '9.0', 68528, ' 人民文学出版社 ', ' 1994-11 ', ' 21.45元',
        '《格林童话全集》是德国民间故事集。由德国的雅各・格林和威廉・格林兄弟根据民间口述材料改写而成。他们搜集、整理、出版这些民间童话的目的，正如威廉所说，是\"希望...', 0, 's1043008.jpg', NULL);
INSERT INTO `user_book`
VALUES (1681, 0, 0, '斗破苍穹', '天蚕土豆 ', '6.2', 5530, ' 湖北少儿出版社 ', ' 2010-7 ', ' 695.00元',
        '《斗破苍穹(珍藏全集)(套装共27册)》讲述了天才少年萧炎在创造了家族空前绝后的修炼纪录后突然成了废人，整整三年时间，家族冷遇，旁人轻视，被未婚妻退婚……种...', 0, 's22933018.jpg', NULL);
INSERT INTO `user_book`
VALUES (1682, 0, 0, '少年维特的烦恼', '[德] 歌德 / 杨武能 ', '7.8', 26735, ' 人民文学出版社 ', ' 1999-7 ', ' 7.40元',
        '小说的情节十分简单，年轻的维特来到一个小镇，这里的自然风光、淳朴的民风、天真快乐的儿童给予他极大的快乐。一次舞会上他认识了一个叫绿蒂的少女，她的一颦一笑、一...', 0, 's1047138.jpg', NULL);
INSERT INTO `user_book`
VALUES (1683, 0, 0, '一句顶一万句', '刘震云 ', '8.9', 6368, ' 长江文艺出版社 ', ' 2016-8 ', ' 45.00元',
        '本书是著名作家刘震云先生参磨四年的杠鼎之作。被北京五大评论家誉为“中国的《百年孤独》（诺贝尔获奖作家马尔克斯的作品）”，是刘震云迄今为止最成熟最大气的作品...', 0, 's26877012.jpg', NULL);
INSERT INTO `user_book`
VALUES (1684, 0, 0, '绿毛水怪', '王小波 ', '9.1', 4607, ' 北京十月文艺出版社 ', ' 2018-6 ', ' 39.00元',
        '王小波短篇小说集，其中同名小说《绿毛水怪》是王小波小说处女作，可以一窥作者创作的源头及其后的发展走向。小说中肆意的想象力、幽默的调侃以及人对自我意志的彰显，...', 0, 's30163860.jpg', NULL);
INSERT INTO `user_book`
VALUES (1685, 0, 0, '乡村教师', '刘慈欣 ', '8.5', 13519, ' 长江文艺出版社 ', ' 2012-9-1 ', ' 36.00元',
        '1、本土科幻名家，均多次获得科幻最高奖“银河奖”，本土科幻的代表人物。2、作家自选集，收录作者各个时期创作的代表作。3、刘慈欣的《乡村教师》被改编成电影...', 0, 's10767124.jpg', NULL);
INSERT INTO `user_book`
VALUES (1686, 0, 0, '美人为馅', '丁墨 ', '7.5', 8541, ' 百花洲文艺出版社 ', ' 2015-4 ', ' 35.00元',
        '她曾经是天之骄女，骄横、臭美、美丽、张扬，却因为一场连环大案，被杀手集团带走，从此失去姓名，失去身份，也失去记忆。她被藏于城市最普通的角落中，过着大大咧咧...', 0, 's26365847.jpg', NULL);
INSERT INTO `user_book`
VALUES (1687, 0, 0, '童年', '高尔基 / 刘辽逸 ', '8.0', 2508, ' 人民文学出版社 ', ' 1988-05-01 ', ' 12.95元',
        '《童年》是高尔基自传体三部曲中的第一部，内容包括了高尔基幼年时期从三岁至十岁这一段时间的生活断面。阿寥沙·彼什科夫三岁丧父后，由母亲和外祖母带到外祖父家。外...', 0, 's1089893.jpg', NULL);
INSERT INTO `user_book`
VALUES (1688, 0, 0, '小时代1.0折纸时代', '郭敬明 ', '6.5', 69664, ' 长江文艺出版社 ', ' 2008-10 ', ' 29.80元',
        '故事以经济飞速发展的上海这座风光而时尚的城市为背景，讲述了林萧、南湘、顾里、唐宛如四个从小感情深厚、有着不同价值观和人生观的女生，先后所经历的友情、爱情，乃...', 0, 's3191328.jpg', NULL);
INSERT INTO `user_book`
VALUES (1689, 0, 0, '万寿寺', '王小波 ', '8.6', 8910, ' 北方文艺出版社 ', ' 2006-3 ', ' 19.80元',
        '长篇小说《万寿寺》原为《青铜时代》第一篇。书中插画由插画家胡晓江创作。“晚唐时，薛嵩在湘西当节度使。前往驻地时，带去了他的铁枪。”故事就这样开始了。长安...', 0, 's1763806.jpg', NULL);
INSERT INTO `user_book`
VALUES (1690, 0, 0, '王尔德童话', '[英] 王尔德 / 王林 ', '9.1', 15586, ' 译林出版社 ', ' 2003-6 ', ' 6.00元',
        '王尔德是19世纪英国最伟大的艺术家之一，以其剧作、诗歌、童话和小说名世。在风流才子那颓废唯美、狷狂放浪的表面姿态下，是一颗纯美纯善，永难泯灭的童心。而这可贵...', 0, 's1119839.jpg', NULL);
INSERT INTO `user_book`
VALUES (1691, 0, 0, '六个道德故事', '[法] 埃里克·侯麦 / 胡小跃 ', '8.3', 180, ' 雅众文化 | 北京联合出版公司 ', ' 2020-5 ', ' 58.00',
        '☆威尼斯电影节金狮奖、柏林电影节银熊奖得主、法国新浪潮电影大师埃里克·侯麦经典作品☆六篇小说透视法式浪漫的后街，诉说现代爱情的智性伤痕【编辑推荐】1...', 0, 's34940772.jpg', NULL);
INSERT INTO `user_book`
VALUES (1692, 0, 0, '包法利夫人', '福楼拜 / 李健吾 ', '9.1', 2110, ' 人民文学出版社 ', ' 2003-1-1 ', ' CNY 28.00',
        '《包法利夫人》于1856-1857年间在《巴黎杂志》上连载，轰动文坛，在社会上引起轩然大波。法当局对作者提起公诉，指控小说“伤风败俗、亵渎宗教”，并传唤作者...', 0, 's25897678.jpg', NULL);
INSERT INTO `user_book`
VALUES (1693, 0, 0, '彷徨之刃', '东野圭吾 / 刘珮瑄 ', '7.9', 9574, ' 南海出版公司 ', ' 2015-4-1 ', ' CNY 39.50',
        '《彷徨之刃》是东野圭吾最具争议的小说，日文版销量已超过150万册这不是事不关己的事，某一天你或许就会成为书中的主人公。那时，你手中的刀刃会指向何方？——东...', 0, 's26298572.jpg', NULL);
INSERT INTO `user_book`
VALUES (1694, 0, 0, '兄弟（上）', '余华 ', '8.3', 84611, ' 上海文艺出版社 ', ' 2005-8 ', ' 16.00元',
        '《兄弟》讲述了江南小镇两兄弟李光头和宋钢的人生。李光头的父亲不怎么光彩地意外身亡，而同一天李光头出生。宋钢的父亲宋凡平在众人的嘲笑声中挺身而出，帮助了李光头...', 0, 's1401425.jpg', NULL);
INSERT INTO `user_book`
VALUES (1695, 0, 0, '原来你还在这里', '辛夷坞 ', '7.6', 44596, ' 朝华出版社 ', ' 2007-10 ', ' 25.00元',
        '苏韵锦爱上了高中同学程铮，程铮也深深爱着她。但是家庭背景不同的二人，生活上的差异要彼此分开。而韵锦在分开之后才发觉有了程铮的孩子。个性强的韵锦没有告知程铮。...', 0, 's2331434.jpg', NULL);
INSERT INTO `user_book`
VALUES (1696, 0, 0, '红拂夜奔', '王小波 ', '8.7', 27535, ' 江苏文艺出版社 ', ' 2005-1 ', ' 28.00元',
        '《红拂夜奔》这书题就会让读者认为是写隋末杨素家妓红拂敬慕大军事家李靖，私奔相从的风流逸事。然而，这本书它以现代人的眼光去观照历史，又以历史文化原型来建构现代...', 0, 's1418686.jpg', NULL);
INSERT INTO `user_book`
VALUES (1697, 0, 0, '美丽新世界', '[英] 奥尔德斯·赫胥黎 / 陈超 ', '9.1', 4182, ' 上海译文出版社 ', ' 2017-1-31 ', ' 28',
        '出版于一九三二年的《美丽新世界》是奥尔德斯•赫胥黎最杰出的代表作，是二十世纪最著名的反乌托邦文学经典之一，与奥威尔的《一九八四》、扎米亚京的《我们》并称为“...', 0, 's26863404.jpg', NULL);
INSERT INTO `user_book`
VALUES (1698, 0, 0, '冷场', '李诞 ', '6.4', 8124, ' 四川文艺出版社 ', ' 2018-11-20 ', ' 42',
        '《脱口秀大会》主持人、网络人气吐槽大V李诞诚意新作，人间百态故事集。韩寒监制，「ONE一个」工作室出品。一个平行宇宙中的李诞，嬉笑怒骂背后对人间的终极...', 0, 's30365801.jpg', NULL);
INSERT INTO `user_book`
VALUES (1699, 0, 0, '莫比乌斯时空', '', '8.6', 151, '顾适 ', ' 新星出版社 ', ' 2020-3',
        '银河奖/华语科幻星云奖得主顾适首部科幻短篇集12篇人气佳作+3篇神秘新作华丽集结！刘慈欣刘宇昆丁墨热诚推荐！记忆能像货币一样交易？...', 0, 's34933700.jpg', NULL);
INSERT INTO `user_book`
VALUES (1700, 0, 0, '独居的一年', '[美] 约翰·欧文 / 孙璐 ', '8.1', 11014, ' 读客图书·江苏凤凰文艺出版社 ', ' 2017-8-1 ', ' 68.00',
        '当你找到爱的时候，也就找到了自己。-◆怪不得是村上春树的偶像！当代文坛小说宗师、“狄更斯再世”约翰·欧文传世大作！◆村上春树：“读欧文的书会上瘾，...', 0, 's27036317.jpg', NULL);
INSERT INTO `user_book`
VALUES (1701, 0, 0, '安南怪谭', '朱琺 ', '9.5', 42, ' 江苏凤凰文艺出版社 ', ' 2020-5 ', ' 49.80',
        '先锋小说家、古籍达人、妖怪向博物学发烧友朱琺小说力作奇异而妖娆的南方故事，百科全书式的幻想小说黎幺、王晓渔、路内诚意推荐！——————【内...', 0, 's30447661.jpg', NULL);
INSERT INTO `user_book`
VALUES (1702, 0, 0, '奥斯维辛的文身师', '[澳] 希瑟·莫里斯 / 栾天宇 ', '8.6', 107, ' 湖南文艺出版社 ', ' 2020-3 ', ' 49.80元',
        '★沉默70多年的心碎往事危险笼罩下的动人爱情★继《朗读者》后又一部打动无数读者的二战往事★售出43国版权、全球销量超300万册1942年4月，斯...', 0, 's34908363.jpg', NULL);
INSERT INTO `user_book`
VALUES (1703, 0, 0, '呼啸山庄', '(英) 艾米莉·勃朗特 / 杨苡 ', '8.5', 4465, ' 译林出版社 ', ' 2010-8-1 ', ' 18.00元',
        '《经典译林:呼啸山庄》描写的吉卜赛弃儿希思克利夫被山庄老主人收养后，因不堪受辱和恋爱受挫，外出致富。回来后发现女友凯瑟琳已与地主林顿结婚，继而产生对地主及其...', 0, 's4898521.jpg', NULL);
INSERT INTO `user_book`
VALUES (1704, 0, 0, '猎魔人1：白狼崛起', '[波兰] 安德烈·斯帕克沃斯基 / 小龙 ', '8.6', 3503, ' 重庆出版社 ', ' 2015-1-1 ', ' CNY 32.80',
        '他骑马从北方来，一头白发，满面风霜；他是异乡客，也是猎魔人，以斩妖除魔为己任，行走在现实与传说的迷雾之间。脖子粗短，白牙锋利，以人类为食的“睡美人”；头发...', 0, 's26267087.jpg', NULL);
INSERT INTO `user_book`
VALUES (1705, 0, 0, '荒原狼', '(德) 黑塞 / 赵登荣、倪诚恩 ', '9.0', 6414, ' 上海译文出版社 ', ' 2010-9 ', ' 25.00元',
        '赫尔曼·黑塞（1877-1962），德国作家，1946年获得诺贝尔文学奖。《荒原狼》是黑塞中期创作的代表作，亦是他创作生涯中的里程碑。小说的主人公哈勒尔是...', 0, 's4908883.jpg', NULL);
INSERT INTO `user_book`
VALUES (1706, 0, 0, '以你的名字呼喚我', '安德列．艾席蒙 / 吳妍蓉 ', '9.1', 3152, ' 麥田 ', ' 2018-1-4 ', ' NT$300',
        '同名改編電影原著小說《墨利斯的情人》編導詹姆士‧艾佛利擔綱編劇《池畔迷情》盧卡格達戈尼諾執導╳《紳士密令》艾米漢默主演☆永誌不忘經典收藏☆絕美電影書...', 0, 's27598133.jpg', NULL);
INSERT INTO `user_book`
VALUES (1707, 0, 0, '人渣反派自救系統 下', '墨香銅臭 ', '7.2', 2210, ' 平心工作室 ', ' 2017-7-24 ', ' NTD 330',
        '隨書附贈精美明信片一張為拔下心魔劍，眾人前往埋骨嶺，一會天琅君，一切，又和當年一樣，以多對一。可這最終Boss的樣貌卻和沈清秋原本所想的不太一樣，由...', 0, 's27075484.jpg', NULL);
INSERT INTO `user_book`
VALUES (1708, 0, 0, '源氏物语', '[日] 紫式部 / 丰子恺 ', '8.1', 2048, ' 人民文学出版社 ', ' 2015-8 ', ' 75.00元',
        '《源氏物语》以日本平安王朝全盛时期为背景，通过主人公源氏的生活经历和爱情故事，描写了当时社会的腐败政治、淫乱生活、上层贵族之间的互相倾轧和权力斗争，而源氏的...', 0, 's26291587.jpg', NULL);
INSERT INTO `user_book`
VALUES (1709, 0, 0, '古董局中局', '马伯庸 ', '7.5', 21717, ' 凤凰出版社 ', ' 2012-9 ', ' 32.00元',
        '这是一部关于古董鉴定、收藏、造假、设局的百科全书式小说。字画、青铜、金石、瓷器……每一件古董背后，都是深厚的历史积淀和文化传承；而每一件仿冒品背后，都...', 0, 's11612936.jpg', NULL);
INSERT INTO `user_book`
VALUES (1710, 0, 0, '北方狩猎', '魏市宁 ', '8.9', 112, ' 陕西师范大学出版总社 ', ' 2020-2 ', ' 49',
        '※不认命，不认怂，绝境之中，孕育生猛！※90后故事多面手，曾连续3次获豆瓣阅读征文大奖！※4个悬疑故事，4段奇情人生，4则荒诞又现实的小人物之歌。※冷...', 0, 's34950090.jpg', NULL);
INSERT INTO `user_book`
VALUES (1711, 0, 0, '春日之书', '陆烨华 ', '8.0', 518, ' 人民文学出版社 ', ' 2020-2 ', ' 49',
        '责编继《体育馆之谜》后第二次彻夜改稿注意，本书有两种阅读方式！详见G僧东代序！某天，杂志编辑部突然收到一封匿名投稿。信封上只有收件人，快递单号显示未...', 0, 's34822422.jpg', NULL);
INSERT INTO `user_book`
VALUES (1712, 0, 0, '余生请多指教', '柏林石匠 ', '7.2', 1175, ' 北方妇女儿童出版社 ', ' 2015-6 ', ' 32.00元',
        '我这人记性不好。所以我记日记。这是个有好有坏的习惯。好处在于，什么鸡毛蒜皮的事，以后都能闲来翻看自娱自乐。坏处在于，当有一天它成为了医生的床头读物……P...', 0, 's25921439.jpg', NULL);
INSERT INTO `user_book`
VALUES (1713, 0, 0, '怨氣撞鈴1·食骨', '尾魚 ', '8.1', 7852, ' 聯合文學 ', ' 2015-2-13 ', ' NTD 99',
        '一串只能被死人怨氣撞響的風鈴一段永遠看不到終點的漂泊旅程失蹤的背包客、詭譎的尕薩摩傳說、神祕的天葬台第一道撞響鬼鈴的怨氣，被藏在骨頭裡的祕密，究竟是……...', 0, 's26331014.jpg', NULL);
INSERT INTO `user_book`
VALUES (1714, 0, 0, '江南三部曲', '格非 ', '8.5', 938, ' 北京十月文艺出版社 ', ' 2019-8-5 ', ' 158.00元',
        '★第九届茅盾文学奖最高票获奖作品《人面桃花》《山河入梦》《春尽江南》三部曲正式合体，全新修订典藏版★格非代表作，从构思到定稿，历时十七年★接受生活...', 0, 's34461199.jpg', NULL);
INSERT INTO `user_book`
VALUES (1715, 0, 0, '精灵宝钻', '[英] J. R. R. 托尔金 著、[英] 克里斯托弗·托尔金 编、[加拿大] 泰德·纳史密斯 图 / 邓嘉宛 ', '9.4', 2303, ' 上海人民出版社 ',
        ' 2015-2 ', ' 79.00元', '《精灵宝钻：精装插图本》是托尔金对中洲世界起源的设定，蕴含着他为英语民族塑造创世史诗的雄心，由小儿子克里斯托弗•托尔金在其身后整理出版。16幅全彩插画，译文...', 0,
        's25957852.jpg', NULL);
INSERT INTO `user_book`
VALUES (1716, 0, 0, '与罗摩相会', '[英] 阿瑟·克拉克 / 刘壮 ', '8.8', 4098, ' 江苏凤凰文艺出版社 ', ' 2018-6-15 ', ' 42.00元',
        '★科幻历史上真正的神作！科幻三巨头阿瑟·克拉克不朽的杰作。★史无前例，横扫雨果奖、星云奖、轨迹奖、木星奖、英国科幻协会奖、约翰•坎贝尔纪念奖6项科幻最高...', 0, 's30161861.jpg', NULL);
INSERT INTO `user_book`
VALUES (1717, 0, 0, '爱尔兰人', '[美] 查尔斯·勃兰特 / 刘建周、王凯 ', '7.4', 341, ' 人民文学出版社 ', ' 2020-1 ', ' 68.00元',
        '■起底美国历史上最大规模的黑帮有组织犯罪关键人物杰米•霍法被杀疑案■美国政坛最肮脏的一页冷血的黑帮生存法则火热的兄弟情义密不透风的黑帮世界■...', 0, 's30429722.jpg', NULL);
INSERT INTO `user_book`
VALUES (1718, 0, 0, '远大前程', '[英]狄更斯 / 王科一 ', '8.8', 2092, ' 上海译文出版社 ', ' 2011-5-1 ', ' 26.00元',
        '《远大前程》内容简介：狄更斯（1812－1870），英国十九世纪一代文豪，《远大前程》是他的代表作。孤儿匹普从小由姐姐抚养，受雇于贵族郝薇香，并且爱上了她的...', 0, 's6313476.jpg', NULL);
INSERT INTO `user_book`
VALUES (1719, 0, 0, '尚待商榷的爱情', '(英)朱利安·巴恩斯 / 陆汉臻 ', '7.4', 277, ' 文汇出版社 ', ' 2020-2-10 ', ' 58',
        '◣英国文坛三巨头之一朱利安•巴恩斯拷问爱情本质之作。◣朱利安•巴恩斯是布克奖得主，荣获17项世界文学大奖、5枚荣誉勋章，获奖记录横贯欧洲各国！◣巴恩斯以...', 0, 's34893656.jpg', NULL);
INSERT INTO `user_book`
VALUES (1720, 0, 0, '穿堂驚掠琵琶聲', '高台樹色 ', '8.6', 825, ' 留守番工作室 ', ' 2019-9 ', ' NTD 360',
        '如果一生能找到一個愛人已經很不容易，我不覺得一定要用男女去限定愛情。那日在茶堂裡愛情如琵琶聲驚掠心頭單身多年、老古董個性的工程師孟新堂，碰巧於茶堂遇...', 0, 's34894152.jpg', NULL);
INSERT INTO `user_book`
VALUES (1721, 0, 0, '鼠疫', '（法）阿尔贝·加缪 / 柳鸣九、刘方、丁世中 ', '9.1', 2297, ' 译林出版社 ', ' 2017-1 ', ' 39.80元',
        '《鼠疫》是加缪的中篇小说集，包括《局外人》《鼠疫》《堕落》三部作品。《鼠疫》与《局外人》是加缪最重要的代表作，均被列为现代世界文学名著。《局外人》写的是人在...', 0, 's26908211.jpg', NULL);
INSERT INTO `user_book`
VALUES (1722, 0, 0, '红楼梦', '曹雪芹 ', '9.7', 2949, ' 三秦出版社 ', ' 2016-11-1 ', ' 88.00元',
        '本版前80回据脂本全新精校，以程高本后四十回补足全文。吸纳近几十年来重要的红学研究成果，参考了几个有代表性的当代校本，博采众长的同时，也作了大量的勘误。在字...', 0, 's27053166.jpg', NULL);
INSERT INTO `user_book`
VALUES (1723, 0, 0, '厄普代克短篇小说集', '[美] 约翰·厄普代克 / 李康勤、王赟、杨向荣 等 ', '7.8', 145, ' 上海译文出版社 ', ' 2020-2 ', ' 125.00元',
        '★“赋予庸常生活以其应有之美”——美国当代文学巨匠约翰•厄普代克创作生涯早期短篇小说全集★作者亲自编辑整理，八个主题、一百零三篇短篇小说，敏锐、细腻、善...', 0, 's34887378.jpg', NULL);
INSERT INTO `user_book`
VALUES (1724, 0, 0, '都柏林人', '[爱尔兰] 詹姆斯·乔伊斯 / 王逢振 ', '8.6', 5799, ' 上海译文出版社 ', ' 2010-9 ', ' 26.00元',
        '詹姆斯·乔伊斯(JamesJoyce，1882—1941)，爱尔兰作家、诗人。1882年2月2日出生于都柏林，1941年1月13日卒于瑞士苏黎世。他是意识...', 0, 's4908872.jpg', NULL);
INSERT INTO `user_book`
VALUES (1725, 0, 0, '奇迹男孩', '[美] R.J.帕拉西奥 / 雷淑容、易承楠 ', '8.8', 4853, ' 人民文学出版社 ', ' 2018-1 ', ' 59.00元',
        '《奇迹男孩》同名电影1月19日全国上映！由《壁花少年》导演斯蒂芬•卓博斯基执导。因《房间》萌翻奥斯卡的童星雅各布•特伦布莱在本片中饰演奥吉，朱莉娅•罗伯茨...', 0, 's27603501.jpg', NULL);
INSERT INTO `user_book`
VALUES (1726, 0, 0, '聋哑时代', '双雪涛 ', '8.4', 1688, ' 北京十月文艺出版社 ', ' 2016-8 ', ' 28.00元',
        '对于很多人来说，中学时代尤其是初中时期，是一生中重要而难忘的记忆，十三四岁，正是叛逆而懵懂的年纪，同时，又是人生中无论从生理还是心理上的一个“成长点”，成长...', 0, 's26822709.jpg', NULL);
INSERT INTO `user_book`
VALUES (1727, 0, 0, '民王', '[日]池井户润 / 乔蕾 ', '7.7', 151, ' 浙江人民出版社 ', ' 2020-5 ', ' 45',
        '这本书总算引进了！热血搞笑又深刻的政坛喜剧。与东野圭吾平起平坐，印量突破两千万册的日本“国民级”作家，《半泽直树》作者池井户润代表作。原本习以为常的...', 0, 's34952416.jpg', NULL);
INSERT INTO `user_book`
VALUES (1728, 0, 0, '凤囚凰', '天衣有风 ', '7.5', 8794, ' 江苏文艺出版社 ', ' 2011-8 ', ' 69.80元',
        '由天衣有风编写的长篇小说《凤囚凰(典藏版)(套装共3册)》分上中下三册。上册讲述了：腐败公主的腐败生活，从穿越开始。免费得赠一个附马，同时附送面首两打。没事...', 0, 's6782521.jpg', NULL);
INSERT INTO `user_book`
VALUES (1729, 0, 0, '再次遇见你', '[日] 森绘都 / 毛叶枫 ', '7.6', 395, ' 上海文艺出版社 ', ' 2020-3-10 ', ' 38',
        '◆那个你念念不忘的人，总有一天会与你再次相遇。-◆内容简介《再次遇见你》是日本直木奖得主森绘都的短篇小说集，包含六个不同的故事，关于相遇、误会、羁绊以...', 0, 's34970066.jpg', NULL);
INSERT INTO `user_book`
VALUES (1730, 0, 0, '城市与狗', '（秘鲁）略萨 / 赵德明 ', '8.6', 1659, ' 上海译文出版社 ', ' 2009年8月 ', ' 36.00元',
        '《城市与狗》以位於秘鲁首都利马的莱昂西奥·普拉多军事学校（ColegioMilitarLeoncioPrado）校园与扰攘的利马市为舞台，围绕着几个中...', 0, 's2073481.jpg', NULL);
INSERT INTO `user_book`
VALUES (1731, 0, 0, '一个人的好天气', '[日]青山七惠 / 竺家荣 ', '7.5', 11184, ' 上海译文出版社 ', ' 2011-3 ', ' 20.00元',
        '《一个人的好天气》内容简介：就这样，我不断地更换认识的人，也不断地使自己进入不认识的人们之中去。我既不悲观，也不乐观，只是每天早上睁开眼睛，迎接新的一天，一...', 0, 's6009666.jpg', NULL);
INSERT INTO `user_book`
VALUES (1732, 0, 0, '我的职业是小说家', '[日] 村上春树 / 施小炜 ', '8.3', 17921, ' 南海出版公司 ', ' 2017-1 ', ' 45.00元',
        '《我的职业是小说家》是村上春树首部自传性作品，历时六年完成。一个人，写作三十五年，十三部长篇小说，超过五十种语言译本。虽然拥有享誉世界的知名度，但关于村上...', 0, 's26889236.jpg', NULL);
INSERT INTO `user_book`
VALUES (1733, 0, 0, '源泉', '[美] 安·兰德 / 高晓晴、赵雅蔷、杨玉 ', '9.0', 6940, ' 重庆出版社 ', ' 2005-11 ', ' 49.80元',
        '小说的主人公洛克是一个诚实而坚强的建筑师，他志在启蒙社会，却在大学毕业前夕被学校开除，他的设计风格被社会视为异端，一度沦落到去采石厂当小工。他深爱的女人也处...', 0, 's1431870.jpg', NULL);
INSERT INTO `user_book`
VALUES (1734, 0, 0, '神经漫游者', '[美] 威廉·吉布森 / Denovo ', '8.1', 6418, ' 江苏凤凰文艺出版社 ', ' 2013-6 ', ' 32.00元',
        '“1923年以来100本最佳英文小说”之一“赛博朋克”圣经•史无前例的得奖记录：囊括雨果奖、星云奖、菲利普•迪克奖这就是催生了《黑客帝国》的那部小说...', 0, 's24107596.jpg', NULL);
INSERT INTO `user_book`
VALUES (1735, 0, 0, '地下室手记', '(俄罗斯) 陀思妥耶夫斯基 / 曾思艺 ', '9.6', 90, ' 浙江文艺出版社 ', ' 2020-5 ', ' 39.8',
        '《地下室手记》是俄国作家陀思妥耶夫斯基创作的长篇小说。该书由主角地下室人以第一人称的方式叙述，地下室人是名年约四十岁左右的退休公务员，他的内心充满了病态的自...', 0, 's34990839.jpg', NULL);
INSERT INTO `user_book`
VALUES (1736, 0, 0, '人间失格', '太宰治 / 田原 ', '7.8', 2264, ' 中信出版集团 ', ' 2019-6 ', ' 39.90',
        '“生而为人，我很抱歉。”从小到大，我始终摆脱不了孤独和伤感，我始终渴望爱与被爱，却始终事与愿违，深渊般的迷惘和绝望，渐渐将我吞噬，我一次又一次伤害了我爱和...', 0, 's33418869.jpg', NULL);
INSERT INTO `user_book`
VALUES (1737, 0, 0, '清明上河图密码6', '冶文彪 ', '9.1', 2481, ' 上海文艺出版社 ', ' 2019-11-11 ', ' 69.9',
        '◆清明系列大结局！千古迷局，终极揭秘！作者冶文彪数易其稿，匠心打磨；内容震撼世人，天翻地覆！◆口碑奇好，国产悬疑推理巅峰之作！百万读者持续追读，系列1...', 0, 's34879050.jpg', NULL);
INSERT INTO `user_book`
VALUES (1738, 0, 0, '隐痛', '[法]伊内丝·巴亚尔 / 焦君怡 ', '8.2', 84, ' 南京大学出版社 ', ' 2020-5 ', ' 45.00元',
        '【编辑推荐】★《隐痛》在法国出版后引起了很大反响，入围2018龚古尔文学奖、龚古尔中学生奖、法国南锡市书店文学奖、法国花神文学奖、法国处女作奖、法国邮...', 0, 's34881136.jpg', NULL);
INSERT INTO `user_book`
VALUES (1739, 0, 0, '强风吹拂', '[日] 三浦紫苑 / 林佩瑾、李建铨、杨正敏 ', '9.1', 1110, ' 广西师范大学出版社 ', ' 2019-10 ', ' 58.00元',
        'B站热血新番《强风吹拂》（豆瓣超2万人评价，评分高达9.6）同名原著小说，唯一正版引进。豆瓣2015年度读书榜单，最佳暖心治愈作品No.1。跑步界的《灌...', 0, 's33440237.jpg', NULL);
INSERT INTO `user_book`
VALUES (1740, 0, 0, '钟表馆事件', '[日] 绫辻行人 / 刘羽阳 ', '8.4', 3783, ' 新星出版社 ', ' 2016-6-14 ', ' 35.00元',
        '镰仓的寂静山林，隐藏着又一处中村青司设计的神秘建筑---钟表馆。馆内上百个不同的钟表，以不可思议的方式惊人地指向相同的时刻并等速行进着；馆外竖立着一座没有指...', 0, 's26771719.jpg', NULL);
INSERT INTO `user_book`
VALUES (1741, 0, 0, '龙族Ⅳ', '江南 ', '7.1', 11768, ' 长江出版社 ', ' 2015-12 ', ' 32.00元',
        '路明非成为了卡塞尔学院的新任学生会主席，偶然中路明非发现，楚子航消失了，除了他，其他人都不记得有这个人曾经存在，并怀疑他在任务中脑震荡。路明非在痛苦中挣扎，...', 0, 's26647621.jpg', NULL);
INSERT INTO `user_book`
VALUES (1742, 0, 0, '绝代双骄（全三册）', '古龙 ', '8.4', 15132, ' 珠海出版社 ', ' 2005-8 ', ' 56.00元',
        '世家子弟江枫和移花宫的花月奴私奔，在路上诞下一对双胞胎，但江枫和花月奴却被移花宫主杀死。移花宫主为了报仇，决定把这对兄弟分开抚养，授以武功，等他们长大后自相...', 0, 's1089517.jpg', NULL);
INSERT INTO `user_book`
VALUES (1743, 0, 0, '六爻', 'Priest ', '8.5', 6008, ' ？ ', ' 1900 ', '', '修真故事，讲一个没落门派如何在臭美猴，捣蛋精，刻薄鬼，二百五和小杂毛的手里重振的故事', 0,
        's27061120.jpg', NULL);
INSERT INTO `user_book`
VALUES (1744, 0, 0, '城堡', '[奥地利] 卡夫卡 / 高年生 ', '8.4', 9344, ' 上海译文出版社 ', ' 2007-3 ', ' 14.00元',
        '土地测量员K受命赴某城上任，不料却受阻于城堡大门外，于是主人公K同城堡当局围绕能否进入城堡之事展开了持久烦琐的拉锯战。城堡就位于眼前一座小山上，可它可望而不...', 0, 's2036561.jpg', NULL);
INSERT INTO `user_book`
VALUES (1745, 0, 0, '高老头', '(法)巴尔扎克 / 傅雷 ', '8.0', 13417, ' 人民文学出版社 ', ' 1989-09-01 ', ' 5.60', '这部名闻遐迩，常盛不衰的小说，一', 0,
        's1119528.jpg', NULL);
INSERT INTO `user_book`
VALUES (1746, 0, 0, '断代', '郭强生 ', '8.1', 4499, ' 后浪丨民主与建设出版社 ', ' 2018-6 ', ' 42.00元',
        '纯真失落，激情过后，还有什么可以相信？继白先勇《孽子》之后，又一经典作品时报文学奖、金鼎奖得主台湾重量级作家郭强生构思二十年代表作2016年台北国际...', 0, 's30217599.jpg', NULL);
INSERT INTO `user_book`
VALUES (1747, 0, 0, '人渣反派自救系統 中', '墨香銅臭 ', '7.3', 1994, ' 平心工作室 ', ' 2017-7-24 ', ' NTD 330',
        '隨書附贈精美明信片一張從幻花宮水牢逃離的沈清秋，在花月城暴露了行蹤。陽光下，屋簷上，眼前是滿眼陰沉的洛冰河。而為了不讓洛冰河被心魔劍反噬，沈清秋選擇了...', 0, 's27075481.jpg', NULL);
INSERT INTO `user_book`
VALUES (1748, 0, 0, '陆王', '[日] 池井户润 / 励立蓉、安素 ', '8.3', 104, ' 浙江人民出版社 ', ' 2020-5 ', ' 55.00元',
        '一个挑战极限的热血故事。难测的时局变换中，一本书让你相信奇迹。与东野圭吾平起平坐，印量突破两千万册的日本“国民级”作家，《半泽直树》作者池井户润代表作。...', 0, 's34941828.jpg', NULL);
INSERT INTO `user_book`
VALUES (1749, 0, 0, '小姨多鹤', '严歌苓 ', '8.9', 3804, ' 作家出版社 ', ' 2016-8-1 ', ' 29.00',
        '小姨多鹤》讲述了抗战末期日本遗孤、十六岁的少女多鹤被卖到东北某家作为传宗接代“工具”之后几十年的命运故事。作者以对中国当代史的深入、精到的把握，以一个跨国作...', 0, 's27080432.jpg', NULL);
INSERT INTO `user_book`
VALUES (1750, 0, 0, '京华烟云', '林语堂 / 张振玉 ', '8.5', 32502, ' 陕西师范大学出版社 ', ' 2005-7 ', ' 43.00元',
        '《京华烟云》是林语堂旅居巴黎时于1938年8月至1939年8月间用英文写就的长篇小说，并题献给“英勇的中国士兵”，英文书名为MomentinPeking...', 0, 's1391191.jpg', NULL);
INSERT INTO `user_book`
VALUES (1751, 0, 0, '明朝那些事儿', '当年明月 ', '9.2', 21500, ' 浙江人民出版社 ', ' 2011-12-1 ', ' 208.60',
        '《明朝那些事儿》这篇文主要讲述的是从1344年到1644年这三百年间关于明朝的一些事情，以史料为基础，以年代和具体人物为主线，并加入了小说的笔法，对明朝十七...', 0, 's7163250.jpg', NULL);
INSERT INTO `user_book`
VALUES (1752, 0, 0, '纯真博物馆', '[土耳其] 奥尔罕·帕慕克 / 陈竹冰 ', '8.0', 9639, ' 上海人民出版社 ', ' 2010-1 ', ' 36.00元',
        '2008年5月的北京，诺贝尔文学奖得主奥尔罕•帕慕克在其首个中国媒体见面会上，志得意满的当庭宣布：“我刚完成一部600页的小说。”——正是这部《纯真博物馆》...', 0, 's4154988.jpg', NULL);
INSERT INTO `user_book`
VALUES (1753, 0, 0, '千只鹤', '[日] 川端康成 / 叶渭渠 ', '8.2', 10183, ' 南海出版公司 ', ' 2013-9-15 ', ' 29.50',
        '史上最美诺贝尔文学奖作品日本文学巅峰之作大师经典名作，全新精装收藏版川端康成的作品笼罩了我最初三年多的写作。——余华川端康成极为欣赏纤细的美，喜爱...', 0, 's24736900.jpg', NULL);
INSERT INTO `user_book`
VALUES (1754, 0, 0, '庆余年·陆', '猫腻 ', '8.3', 6145, ' 中国友谊出版公司 ', ' 2008-10 ', ' 29.80元',
        '一个年轻的病人，因为一次毫不意外的经历，重生到一个完全不同的世界，成为古代庆国伯爵府一个并不光彩的私生子。修行无名功诀，踏足京都官场，继承庞大商团……范闲，...', 0, 's3244068.jpg', NULL);
INSERT INTO `user_book`
VALUES (1755, 0, 0, '冷血', '[美] 杜鲁门·卡波特 / 夏杪 ', '8.7', 3618, ' 南海出版公司 ', ' 2013-10 ', ' 39.50',
        '★我是个酒鬼。我是个吸毒鬼。我是个同性恋者。我是个天才。即使如此，我还是可以成为一个圣人。——杜鲁门•卡波特★我在高中时第一次读到英文版的卡波特作品，它让...', 0, 's20428313.jpg', NULL);
INSERT INTO `user_book`
VALUES (1756, 0, 0, '1984', '乔治奥威尔 / 舒新 ', '9.4', 6959, ' 北京理工大学出版社 ', ' 2013-11-1 ', ' CNY 32.00',
        '《一九八四》和《动物农场》是奥威尔的传世之作,堪称世界文坛上最著名的政治讽喻小说。在文中奥威尔刻画了一个令人感到窒息和恐怖的,以追逐权力为最终目标的假想的极...', 0, 's25818441.jpg', NULL);
INSERT INTO `user_book`
VALUES (1757, 0, 0, '人设', '', '5.5', 1370, '李尚龙 ', ' 北京联合出版有限公司 ', ' 45元',
        '☆百万销量作者李尚龙，2019全新小说作品重磅上市，探讨“人设”与人性的话题，直击这个社会的痛处。☆贴近当下生活——独立女性、好男人、学霸，因为互联网，我...', 0, 's30785966.jpg', NULL);
INSERT INTO `user_book`
VALUES (1758, 0, 0, '尸人庄谜案', '[日] 今村昌弘 / 吕灵芝 ', '7.2', 4771, ' 北京联合出版公司 ', ' 2019-9 ', ' 48.00',
        '★新时代的推理奇迹，轰动日本出版届的屠榜新贵，继《嫌疑人X的献身》后，横扫三大推理榜的现象级神作。囊括“《周刊文春》推理小说Best10NOone”、...', 0, 's30396712.jpg', NULL);
INSERT INTO `user_book`
VALUES (1759, 0, 0, '流星之绊', '[日] 东野圭吾 / 徐建雄 ', '7.7', 34377, ' 南海出版公司 ', ' 2010-3 ', ' 28.00元',
        '《流星之绊》出版于2008年，作品追问人性，多角度描绘日本社会百态，为作家风格多样化的绝佳写照，情感真挚动人，情节峰回路转，谜底独出心杼，令人低回不已。同名...', 0, 's4580972.jpg', NULL);
INSERT INTO `user_book`
VALUES (1760, 0, 0, '海边的卡夫卡', '[日]村上春树 / 林少华 ', '7.9', 2978, ' 上海译文出版社 ', ' 2018-8 ', ' 59.00',
        '本书是村上春树仅次于《挪威的森林》的重要长篇小说，以其独特风格的两条平行线展开。一条平行线是少年“田村卡夫卡”，为了挣脱“你要亲手杀死父亲，与母亲乱伦”的诅...', 0, 's30144095.jpg', NULL);
INSERT INTO `user_book`
VALUES (1761, 0, 0, '推理要在本格前',
        '[日] 谷崎润一郎、[日] 芥川龙之介、[日] 梦野久作、[日] 江户川乱步、[日] 佐藤春夫、[日] 山本周五郎、太宰治、[日] 海野十三、[日] 坂口安吾、小酒井不木等 / 徐建雄 ', '8.8', 72,
        ' 浙江文艺出版社 ', ' 2020-4 ', ' 49.80元',
        '在近百年的日本推理文学史上，他们将推理小说送上了新的巅峰，使之成为极致“真善美”与“假恶丑”的矛盾体，折射出日本文化的底蕴之魅——自明治维新之后，受...', 0, 's34998081.jpg', NULL);
INSERT INTO `user_book`
VALUES (1762, 0, 0, '我在未来等你', '刘同 ', '7.0', 4739, ' 北京联合出版公司 ', ' 2017-9 ', ' 42.00',
        '你会不会偶尔产生那种“如果能回到那一年就好了”的念头？觉得回到那一年，以我们当下的见识和心态，很多事都能被改变。---------------------...', 0, 's27139846.jpg', NULL);
INSERT INTO `user_book`
VALUES (1763, 0, 0, '失明症漫记', '[葡] 若泽·萨拉马戈 / 范维信 ', '9.2', 942, ' 南海出版公司 ', ' 2018-1 ', ' 59.00元',
        '★这个世界太糟糕了，几乎所有人都在理智上成了盲人，因为我们越来越不愿睁眼去看世界。★入选诺贝尔学院“所有时代百部文学佳作”★萨拉马戈和马尔克斯是我...', 0, 's27141620.jpg', NULL);
INSERT INTO `user_book`
VALUES (1764, 0, 0, '鹤唳华亭', '雪满梁园 ', '8.3', 4124, ' 百花洲文艺出版社 ', ' 2014-9-1 ', ' 49.80元',
        '吴绫蜀锦，绮年玉貌，一人之下，万人之上。幼失所恃，兄弟阋墙，父子相忌，君臣倒戈。权力之下，何枝可依？离恨之间，何情可托？遇上你，并非我之所愿。既已遇...', 0, 's25963518.jpg', NULL);
INSERT INTO `user_book`
VALUES (1765, 0, 0, '见鬼', '有鬼君 ', '8.6', 261, ' 东方出版社 ', ' 2020-3 ', ' 58.00',
        '本书为有鬼君关于鬼文化的文章精选。作者读中国古代志怪小说，如做拼图游戏，将幽冥世界的不同元素，视作民族志的材料，整理、分类，拼接出一幅鬼世界的整体图景，并试...', 0, 's34879052.jpg', NULL);
INSERT INTO `user_book`
VALUES (1766, 0, 0, '人类群星闪耀时', '斯蒂芬·茨威格 / 张伟 ', '8.3', 7254, ' 北京出版社 ', ' 2005-1 ', ' 25.00元',
        '这本茨威格的名著被介绍到中国已经几十年了，我们这次重新翻译、约请历史学者撰写背景资料再重新出版，更多的意义是想透过文字让读者认识到：　　一、茨威格眼中的英...', 0, 's1201620.jpg', NULL);
INSERT INTO `user_book`
VALUES (1767, 0, 0, '不能承受的生命之轻', '米兰·昆德拉 / 许钧 ', '8.9', 9431, ' 上海译文出版社 ', ' 2011-7-30 ', ' 37.00元',
        '《不能承受的生命之轻》讲述了：最沉重的负担压迫着我们，让我们屈服于它，把我们压到地上。但在历代的爱情诗中，女人总渴望承受一个男性身体的重量。于是，最沉重的负...', 0, 's6711405.jpg', NULL);
INSERT INTO `user_book`
VALUES (1768, 0, 0, '天官賜福 三', '墨香銅臭 ', '7.6', 1869, ' 平心出版 ', ' 2017-12 ', ' NTD 330', '', 0, 's30181596.jpg', NULL);
INSERT INTO `user_book`
VALUES (1769, 0, 0, '霸王别姬', '李碧华 ', '9.1', 8146, ' 新星出版社 ', ' 2013-10 ', ' 29.50元',
        '《霸王别姬》以梨园师兄弟程蝶衣和段小楼的人生经历和情感纠葛为线索，讲述了一段哀艳悲烈的往事。文学虚构与国粹经典、个体命运与时代变迁巧妙融合，曲折动人，华美诗...', 0, 's25737043.jpg', NULL);
INSERT INTO `user_book`
VALUES (1770, 0, 0, '野性的呼唤', '杰克·伦敦 / 刘荣跃 ', '8.8', 10248, ' 上海译文出版社 ', ' 2006-8 ', ' 25.00元',
        '《野性的呼唤》讲述了一只良犬逐渐回归野性、重返荒野的过程，这一过程充满了野性与人性之间的交织与角斗，而最终野性占据了主导。作者藉此深刻反映了“弱肉强食”的丛...', 0, 's1883353.jpg', NULL);
INSERT INTO `user_book`
VALUES (1771, 0, 0, '沙漠', '[日]伊坂幸太郎 / 穆迪 ', '8.0', 176, ' 新星出版社 ', ' 2020-2 ', ' 58.00',
        '日文版推荐语写着：这可能是一本能改变世界的书。怎么可能呢？！我觉得应该是：不要着急慢慢读，这本书能让你得到超能力和朋克精神。如果说幼稚的反抗和肤浅的理想...', 0, 's34438686.jpg', NULL);
INSERT INTO `user_book`
VALUES (1772, 0, 0, '第二十二条军规', '[美] 约瑟夫·海勒 / 吴冰青 ', '8.7', 3119, ' 译林出版社 ', ' 2012-8-1 ', ' 38.00元',
        '根据第二十二条军规，只有疯子才能免除飞行任务，但必须由本人提出申请；而能提出此申请的人必然没疯，所以他必须去飞行，去送死。在英文中，“军规”和“圈套”是同...', 0, 's10554709.jpg', NULL);
INSERT INTO `user_book`
VALUES (1773, 0, 0, '你一生的故事', '[美] 特德·姜 / 李克勤、王荣生、姚向辉 ', '8.8', 928, ' 译林出版社 ', ' 2019-12 ', ' 42.00元',
        '★科幻大片《降临》原著小说。★美国华裔科幻奇才特德·姜代表作，得遍世界大奖的开脑洞之作。★始于科学内核，收于人文关怀：如果注定失去，你会害怕拥有吗...', 0, 's34672178.jpg', NULL);
INSERT INTO `user_book`
VALUES (1774, 0, 0, '小团圆', '张爱玲 ', '7.6', 47350, ' 北京十月文艺出版社 ', ' 2009-4 ', ' 28.00',
        '这是一个热情故事，我想表达出爱情的万转千回，完全幻灭了之后也还有点什么东西在。——张爱玲《小团圆》以一贯嘲讽的细腻工笔，刻画出张爱玲最深知的人生素材，在她...', 0, 's3616310.jpg', NULL);
INSERT INTO `user_book`
VALUES (1775, 0, 0, '茶馆', '老舍 ', '9.2', 4278, ' 南海出版公司 ', ' 2010-3-1 ', ' 25.00元',
        '三幕话剧《茶馆》是中国话剧史上的经典，每个人物的台词都设计得非常生动传神、富于个性，同时又简洁凝练，意蕴深长，至今仍是现代剧院的常备剧目。老舍是我国现代著...', 0, 's4275058.jpg', NULL);
INSERT INTO `user_book`
VALUES (1776, 0, 0, '秘密', '[日] 东野圭吾 / 赵博 ', '7.7', 44415, ' 海南出版社 ', ' 2008-6 ', ' 29.80元',
        '一场车祸改变了杉田平介平淡而幸福的家庭生活。妻子直子不幸身亡，女儿藻奈美奇迹般苏醒后，平介却发现她的身体里住着的是直子的灵魂……平介该如何应对这种“亦妻亦...', 0, 's3102324.jpg', NULL);
INSERT INTO `user_book`
VALUES (1777, 0, 0, '大小谎言', '[澳大利亚]莉安·莫里亚蒂 / 康学慧 ', '8.4', 112, ' 北京联合出版社*大鱼读品 ', ' 2020-4 ', ' 49.8',
        '全球销量突破1000万册！妮可·基德曼、瑞茜·威瑟斯彭、梅丽尔·斯特里普三大奥斯卡影后史无前例联合出演同名剧集。李现、吴昕、papi酱推荐，荣膺75届金球...', 0, 's34826184.jpg', NULL);
INSERT INTO `user_book`
VALUES (1778, 0, 0, 'ABC谋杀案', '[英] 阿加莎·克里斯蒂 / 赵文伟 ', '8.3', 10936, ' 新星出版社 ', ' 2013-6 ', ' 28.00元',
        '“那就让我们看看，聪明的波洛先生到底有多聪明。”化名ABC的连环杀人狂按照列车时刻表的字母顺序，一步步实施杀人计划。他狂妄地向波洛发出挑战书，整个英国因...', 0, 's24737009.jpg', NULL);
INSERT INTO `user_book`
VALUES (1779, 0, 0, '被掩埋的巨人', '[英] 石黑一雄 / 周小进 ', '7.8', 6177, ' 上海译文出版社 ', ' 2016-1-1 ', ' 39.00元',
        '公元六世纪的英格兰，本土不列颠人与撒克逊入侵者之间的战争似乎已走到了终点——和平降临了这片土地，两个族群比邻而居，相安无事地共同生活了数十年。但与此同时，一...', 0, 's26575658.jpg', NULL);
INSERT INTO `user_book`
VALUES (1780, 0, 0, '无人生还', '[英] 阿加莎·克里斯蒂 / 夏阳 ', '8.7', 25116, ' 新星出版社 ', ' 2016-8 ', ' 35.00元',
        '十个相互陌生、身份各异的人受邀前往德文郡海岸边一座孤岛上的豪宅。客人到齐后，主人却没有出现。当晚，一个神秘的声音发出指控，分别说出每个人心中罪恶的秘密。接...', 0, 's26840298.jpg', NULL);
INSERT INTO `user_book`
VALUES (1781, 0, 0, '被太阳晒热', '', '8.1', 350, '江苏凤凰文艺出版社 ', ' 2019-10 ', ' 49',
        '★★★苏童、周梅森、贾梦玮倾力推荐★★★✔喜马拉雅精品有声剧、掌阅电子书全新上架！✔80后实力青年作家长篇新作！✔一本神奇的书！采用国内先进的变...', 0, 's34839960.jpg', NULL);
INSERT INTO `user_book`
VALUES (1782, 0, 0, '人世间（套装共三册）', '梁晓声 ', '8.4', 920, ' 中国青年出版社 ', ' 2018-1 ', ' 238.00元',
        '《人世间》（三卷本）是著名作家梁晓声的*新长篇小说。全书一百一十五万字，历经数年创作完成。作品以北方省会城市一位周姓平民子弟的生活轨迹为线索，从二十世纪七十...', 0, 's30134582.jpg', NULL);
INSERT INTO `user_book`
VALUES (1783, 0, 0, '汤姆叔叔的小屋', '[美] 斯托夫人 / 林玉鹏 ', '8.3', 8708, ' 译林出版社 ', ' 2006-6 ', ' 23.80元',
        '《汤姆叔叔的小屋》出版至今已有一百五十多年了。该书在1852年首次以单行本出版，立即获得巨大成功，第一周就销售一万册，当年就印行一百多次、三十五万册，这在1...', 0, 's1430530.jpg', NULL);
INSERT INTO `user_book`
VALUES (1784, 0, 0, '万物有灵且美', '[英] 吉米·哈利 / 种衍伦 ', '8.8', 18143, ' 中国城市出版社 ', ' 2010-1 ', ' 28.80',
        '“活泼的生命完全无须借助魔法，便能对我们述说至美至真的故事。大自然的真实面貌，比起诗人所能描摹的境界，更要美上千百倍。”把追车当做一门艺术的狗，策划群猫暴...', 0, 's4187411.jpg', NULL);
INSERT INTO `user_book`
VALUES (1785, 0, 0, '喧哗与骚动', '(美)威廉﹒福克纳 / 李文俊 ', '8.8', 5206, ' 上海译文出版社 ', ' 2004-08 ', ' 25.00',
        '《喧哗与骚动》是福克纳第一部成熟的作品，也是作家花费心血最多、本人最喜欢的小说。小说讲述的是南方没落地主康普生一家的家族悲剧。老康普生游手好闲、嗜酒贪杯，其...', 0, 's1052074.jpg', NULL);
INSERT INTO `user_book`
VALUES (1786, 0, 0, '地下室手记', '[俄] 陀思妥耶夫斯基 / 臧仲伦 ', '9.2', 4521, ' 漓江出版社 ', ' 2012-5 ', ' 15.00元',
        '《地下室手记》体现了陀思妥耶夫斯基诗学的全部艺术特色，内容深刻，形式诡异，既像小说，又像忏悔录，又像哲学论文。作品主人公既像坏人，又像好人；既像小人，又像一...', 0, 's10759466.jpg', NULL);
INSERT INTO `user_book`
VALUES (1787, 0, 0, '云中记', '阿来 ', '7.7', 731, ' 北京十月文艺出版社 ', ' 2019-4-1 ', ' 55.00',
        '这个故事酝酿了十年。汶川地震后，拥有上千年传说的云中村移民到平原。年复一年。祭师阿巴感到身上云中村的味道越来越淡，他的力气在消散，内心越发不安。于是，两匹马...', 0, 's33439236.jpg', NULL);
INSERT INTO `user_book`
VALUES (1788, 0, 0, '鬼吹灯Ⅱ之四巫峡棺山', '天下霸唱 ', '8.0', 13491, ' 安徽文艺出版社 ', ' 2008-4 ', ' 39.80',
        '考古学家孙教授深夜潜入博物馆，被胡八一发现。无可奈何之下。孙教授逐渐表露心迹：他多年研究发现，四川的确有明代观山太保修筑的地仙墓。观山太保靠盗墓发家，将所盗...', 0, 's3034184.jpg', NULL);
INSERT INTO `user_book`
VALUES (1789, 0, 0, '死于威尼斯', '[德] 托马斯·曼 / 钱鸿嘉、刘德中 ', '8.3', 5071, ' 上海译文出版社 ', ' 2010-5 ', ' 20.00元',
        '德国作家前往威尼斯度假，他恋上一个少年，又因为某种机缘滞留威尼斯。此时威尼斯开始流行霍乱，而政府则封锁了消息。作家迷恋少年，长时间地追逐使他精疲力尽，同时他...', 0, 's4621099.jpg', NULL);
INSERT INTO `user_book`
VALUES (1790, 0, 0, '查无此人', '【美】凯瑟琳•克莱斯曼•泰勒 / 张霖 ', '8.9', 1027, ' 黄山书社 ', ' 2015-3 ', ' 28.00元',
        '友谊和人性在压力面前，将何去何从那一瞬间的软弱和自私，造成了难以弥补的终生遗憾书信的两端，是两个亲若兄弟的朋友。短短两年间，二人的关系却发生了质的变化—...', 0, 's26264973.jpg', NULL);
INSERT INTO `user_book`
VALUES (1791, 0, 0, '奥古斯都', '[美] 约翰·威廉斯 / 郑远涛 ', '9.2', 4236, ' 上海人民出版社 ', ' 2018-5 ', ' 56.00元',
        '◆《斯通纳》作者约翰•威廉斯的扛鼎之作，获美国国家图书奖。不同于《斯通纳》在蒙尘50年后才重回大众视野，《奥古斯都》一面世即获美国国家图书奖，时隔40多...', 0, 's27180479.jpg', NULL);
INSERT INTO `user_book`
VALUES (1792, 0, 0, '来不及说我爱你', '匪我思存 ', '8.0', 25728, ' 新世界出版社 ', ' 2006-9 ', ' 20.00元',
        '已订婚的她，在无意间救下了一个英俊又权倾一方的贵公子，原本以为这只是一场擦肩而过的邂逅，谁知道他居然甘冒奇险，在婚礼上把她抢了过来，而等待他们的却不是王子与...', 0, 's1886385.jpg', NULL);
INSERT INTO `user_book`
VALUES (1793, 0, 0, '恋情的终结', '[英] 格雷厄姆·格林 / 柯平 ', '8.0', 9581, ' 江苏凤凰文艺出版社 ', ' 2017-4 ', ' 58.00元',
        '二战期间的英国伦敦，作家莫里斯爱上公务员亨利的妻子萨拉。一次意外事件导致萨拉不辞而别，莫里斯在恨和嫉妒中度过了两年。两年后，他们再次相遇，当初那段感情中...', 0, 's26279019.jpg', NULL);
INSERT INTO `user_book`
VALUES (1794, 0, 0, '司藤', '尾鱼 ', '8.3', 5505, ' 江苏文艺出版社 ', ' 2015-12 ', ' 56.50元',
        '1946年，天师道长丘山于沪上镇杀女妖司藤，临死前，司藤嘴角现出一抹如释重负的诡异微笑。2013年，男子秦放携未婚妻前往西部囊千寻找一位祖上的恩人，车毁坠...', 0, 's26674263.jpg', NULL);
INSERT INTO `user_book`
VALUES (1795, 0, 0, '雪国之劫', '[日]东野圭吾 / 郑悦 ', '6.2', 295, ' 北京联合出版公司 ', ' 2020-5 ', ' 45.00',
        '东野圭吾娱乐悬疑新体验，没人能在读完前停下来！“我要代表地球，惩罚你们这些破坏自然环境的元凶。”一封胡话连篇的恐吓信，竟真的将整个滑雪场卷入了炸弹危机。...', 0, 's34807344.jpg', NULL);
INSERT INTO `user_book`
VALUES (1796, 0, 0, '第九个寡妇', '严歌苓 ', '8.6', 14211, ' 作家出版社 ', ' 2006-3 ', ' 25.00元',
        '四〇至八〇年代流传在中原农村的一个真实的传奇故事。一段纷乱复杂的痛苦历史，一场人性人伦的严峻考验。大多数人不得不多次蜕变以求苟活，愚昧朴拙的女主人公葡萄则始...', 0, 's1752755.jpg', NULL);
INSERT INTO `user_book`
VALUES (1797, 0, 0, '角儿', '严歌苓 ', '8.6', 3033, ' 长江文艺出版社 ', ' 2017-7 ', ' 39.80元',
        '《角儿》是当代著名作家严歌苓的中短篇小说精选集。身兼作家与编剧，且曾为文艺女兵、在大江南北的舞台上饰演过多种角色的严歌苓，深知人生如戏的况味。我们阅读和体味...', 0, 's27081293.jpg', NULL);
INSERT INTO `user_book`
VALUES (1798, 0, 0, '射雕英雄传', '金庸 ', '9.0', 17987, ' 生活·读书·新知三联书店 ', ' 1994-5 ', ' 76.80元',
        '《射雕英雄传》是金庸的代表作之一，作于一九五七年到一九五九年，在《香港商报》连载。《射雕》中的人物个性单纯，郭靖诚朴厚重、黄蓉机智狡狯，读者容易印象深刻。这...', 0, 's1789837.jpg', NULL);
INSERT INTO `user_book`
VALUES (1799, 0, 0, '月亮与六便士', '[英]毛姆 / 刘勇军 ', '8.9', 5417, ' 南海出版公司 ', ' 2016-4 ', ' 35.00元',
        '你我身边都有这样的朋友──平凡上班族，人届中年，已婚，育有一子，脚踏实地赚钱糊口。说不定，你自己就是这样的人，在这样的生活中不知不觉迈入中年。《月亮与六便...', 0, 's26733851.jpg', NULL);
INSERT INTO `user_book`
VALUES (1800, 0, 0, '孽子', '白先勇 ', '9.1', 4281, ' 广西师范大学出版社 ', ' 2014-11 ', ' 59.00元',
        '《孽子》是白先勇描绘同性恋者世界的一部长篇小说。书中的“孽子”是一些脆弱的孩子，被遗弃在街头、被逐出家门、屡次从家中逃跑或是未被了解，他们聚集在半明半暗的...', 0, 's26253695.jpg', NULL);
INSERT INTO `user_book`
VALUES (1801, 0, 0, '鹌鹑', '郭沛文 ', '7.6', 185, ' 中信出版集团 ', ' 2020-4 ', ' 55.00',
        '说明：纸书版《鹌鹑》与豆瓣阅读2018年6月上市的电子版不同。-------【编辑推荐】◆散漫的、胆小的、逃避的/懵懂的、说谎的、无力的/弱者为何...', 0, 's34969939.jpg', NULL);
INSERT INTO `user_book`
VALUES (1802, 0, 0, '情人', '[法]杜拉斯 / 王道乾 ', '7.7', 11796, ' 上海译文出版社 ', ' 2009-8-1 ', ' 25.00元',
        '一个与昆德拉、村上春树和张爱玲并列的小资读者、时尚标志的女作家，一个富有传奇人生经历、惊世骇俗叛逆性格、五色斑斓爱情的艺术家，一个堪称当代法国文化骄傲的作家...', 0, 's3908240.jpg', NULL);
INSERT INTO `user_book`
VALUES (1803, 0, 0, '白夜行', '[日] 东野圭吾 / 刘姿君 ', '9.0', 6368, ' 南海出版公司 ', ' 2017-7 ', ' 59.60元',
        '《白夜行》被普遍视为日本作家东野圭吾作品的无冕之王，一经推出即成为东野圭吾的长篇小说代表作，中文版销量超450万册，与《嫌疑人X的献身》《恶意》《解忧杂货店...', 0, 's27112607.jpg', NULL);
INSERT INTO `user_book`
VALUES (1804, 0, 0, '鬼吹灯Ⅱ之三·怒晴湘西', '天下霸唱 ', '7.9', 14414, ' 安徽文艺出版社 ', ' 2007-12 ', ' 28.00元',
        '琉璃厂的名家乔二爷请胡八一为他选处吉宅，聊天中，八一得知乔二爷发家于一座元代大墓，墓中“有水无鱼”。元墓真有如此神秘？胡八一心想去湘西寻找千年内丹救多铃性...', 0, 's2340300.jpg', NULL);
INSERT INTO `user_book`
VALUES (1805, 0, 0, '斜阳', '（日）太宰治 / 杨伟、张嘉林 ', '8.6', 10355, ' 重庆出版社 ', ' 2008-10 ', ' 23.80元',
        '本书收录太宰治最著名的三部作品：《斜阳》、《维庸之妻》和《人间失格》。一九四五年，太平洋战争以日本无条件投降宣告结束，城市的废墟弥漫着精神危机。太宰治的文...', 0, 's3259428.jpg', NULL);
INSERT INTO `user_book`
VALUES (1806, 0, 0, '平凡的世界（全三册）', '路遥 ', '9.1', 32172, ' 北京十月文艺出版社 ', ' 2009-1 ', ' 68.00元',
        '《平凡的世界(套装共3册)》是一部现实主义小说，也是小说化的家族史。作家高度浓缩了中国西北农村的历史变迁过程，作品达到了思想性与艺术性的高度统一，特别是主人...', 0, 's3523041.jpg', NULL);
INSERT INTO `user_book`
VALUES (1807, 0, 0, '一千零一夜', '纳训 ', '8.7', 43964, ' 人民文学出版社 ', ' 2003-01 ', ' 22.0',
        '《一千零一夜》又名《天方夜谭》。\"天方\"是从前中国对阿拉伯的称呼。这本书中的故事，多是阿拉伯地区国家的传说。公元9世纪时，是阿拉伯帝国的全盛时期，它横跨亚...', 0, 's1035848.jpg', NULL);
INSERT INTO `user_book`
VALUES (1808, 0, 0, '约翰·克里斯朵夫', '罗曼·罗兰 / 丁震源、杨国松 ', '9.2', 1238, ' 百花洲文艺出版社 ', ' 2014-5-1 ', ' CNY 110.00', '', 0,
        's26352388.jpg', NULL);
INSERT INTO `user_book`
VALUES (1809, 0, 0, '卡拉马佐夫兄弟', '陀思妥耶夫斯基 / 荣如德 ', '9.5', 2966, ' 上海译文出版社 ', ' 2011-5-1 ', ' CNY 55.00',
        '《卡拉马佐夫兄弟》系19世纪俄国大文豪陀思妥耶夫斯基的代表作之一。《卡拉马佐夫兄弟》通过一桩真实的弑父案，描写老卡拉马佐夫同三个儿子即两代人之间的尖锐冲突。...', 0, 's6313496.jpg', NULL);
INSERT INTO `user_book`
VALUES (1810, 0, 0, '尸语者', '法医秦明 ', '7.2', 11599, ' 湖南文艺出版社 ', ' 2012-10 ', ' 29.80元',
        '20个挑战心理极限的重口味案发现场20份公安厅从未公开的法医禁忌档案。残忍、变态、惊悚、刺激、真实、震撼！尸语者，与死者朝夕相处的神秘职业，即将剖开震...', 0, 's19950139.jpg', NULL);
INSERT INTO `user_book`
VALUES (1811, 0, 0, '爱的教育', '（意）亚米契斯 / 夏丏尊 ', '8.1', 11694, ' 广西师范大学出版社 ', ' 2004-07 ', ' 18.00',
        '编辑推荐：贝贝特经典视窗。\r《爱的教育》全书共一百篇文章，包括主人公安利柯在一个学年中所记的日记、其父母为他写的劝诫启发性的文章，以及老师在课堂上宣读的发...', 0, 's1077778.jpg', NULL);
INSERT INTO `user_book`
VALUES (1812, 0, 0, '爱情笔记', '（英）阿兰·德波顿 / 孟丽 ', '8.2', 10405, ' 上海译文出版社 ', ' 2004-04-01 ', ' 16.00',
        '这是一部融合理性与感性，细腻生动的恋爱过程的全记录。其间，才子德波顿细述一段情缘的邂逅，迷恋，平凡中的幸福，熟悉后的倦怠，女友移情别恋，挽回无望，自杀，醒悟...', 0, 's1079252.jpg', NULL);
INSERT INTO `user_book`
VALUES (1813, 0, 0, '查泰莱夫人的情人', '[英] D. H. 劳伦斯 / 黑马 ', '8.4', 3089, ' 译林出版社 ', ' 2013-12 ', ' 36.00元',
        '《查泰莱夫人的情人》是英国著名小说家、诗人D.H.劳伦斯最后一部长篇小说。1928年在佛罗伦萨秘密出版。小说出版后，因为其中的性描写和阶级描写饱受争议...', 0, 's25852235.jpg', NULL);
INSERT INTO `user_book`
VALUES (1814, 0, 0, '白银时代', '王小波 ', '8.4', 28201, ' 花城出版社 ', ' 1997-5 ', ' 10.00元',
        '《白银时代》是《时代三部曲》之二。这是由一组虚拟时空的作品构成的长篇。这组作品写的是本世纪长大而活到下世纪的知识分子，在跨世纪的生存过程中，回忆他们的上辈、...', 0, 's1082150.jpg', NULL);
INSERT INTO `user_book`
VALUES (1815, 0, 0, '丰乳肥臀', '莫言 ', '8.6', 2062, ' 浙江文艺出版社 ', ' 2017-1 ', ' 49.00',
        '*他的想象力丰富，又扎根于中国传统的说书艺术，这是他超过马尔克斯和福克纳的地方。——诺贝尔文学奖评委会前主席谢尔•埃斯普马克*任何人要是想谈论中国，都应该...', 0, 's26904658.jpg', NULL);
INSERT INTO `user_book`
VALUES (1816, 0, 0, '情人', '[法] 玛格丽特·杜拉斯 / 王道乾 ', '7.6', 4408, ' 上海译文出版社 ', ' 2014-5-1 ', ' 25.00',
        '作为一部自传性质的小说，《情人》是杜拉斯最负盛名的代表作，曾荣获获一九八四年法国龚古尔文学奖，同名电影的拍摄也加深了中国读者对它的了解。全书以法国殖民者在越...', 0, 's25861387.jpg', NULL);
INSERT INTO `user_book`
VALUES (1817, 0, 0, '醒来的女性', '[美] 玛丽莲·弗伦奇 / 余莉 ', '8.8', 3553, ' 未读·文艺家·北京联合出版公司 ', ' 2017-7 ', ' 90.00元',
        '我们来认识一下米拉。她是一位喜爱读书的小镇女孩，从小就是个独立而聪明的孩子。她十四岁读尼采和潘恩，开学第一天就学完了全部课本，学校只得让她跳级。可这是二十...', 0, 's27042344.jpg', NULL);
INSERT INTO `user_book`
VALUES (1818, 0, 0, '血与火：坦格利安王朝史 第一卷', '[美] 乔治·R·R·马丁 / 屈畅、赵琳 ', '9.2', 369, ' 重庆出版社 ', ' 2020-2 ', ' 180.00元',
        '《冰与火之歌》系列小说开篇的三百年前，坦格利安家族作为唯一幸存于瓦雷利亚“末日浩劫”的龙王家族，定居龙石岛，并发动征服战争，成功统一了维斯特洛大陆。全...', 0, 's34907838.jpg', NULL);
INSERT INTO `user_book`
VALUES (1819, 0, 0, '人树', '[澳]帕特里克·怀特 / 胡文仲、李尧 ', '9.1', 83, ' 浙江文艺出版社 ', ' 2020-1 ', ' 88.00元',
        '▲澳大利亚的《创世纪》|扎根于荒野的诗意长卷▲澳大利亚冷酷仙境中的田园悲歌▲在洪水、火灾、战争、背叛、死亡中徐徐展开的家族史诗▲澳大利亚首位诺贝尔文...', 0, 's34908334.jpg', NULL);
INSERT INTO `user_book`
VALUES (1820, 0, 0, '嫌疑人X的献身', '[日] 东野圭吾 / 刘子倩 ', '9.0', 46108, ' 南海出版公司 ', ' 2010-1 ', ' 19.80元',
        '百年一遇的数学天才石神，每天唯一的乐趣，便是去固定的便当店买午餐，只为看一眼在便当店做事的邻居靖子。靖子与女儿相依为命，失手杀了前来纠缠的前夫。石神提出由...', 0, 's4117922.jpg', NULL);
INSERT INTO `user_book`
VALUES (1821, 0, 0, '俗世奇人全本', '冯骥才 ', '8.6', 516, ' 人民文学出版社 ', ' 2020-1 ', ' 36.00',
        '天津卫本是水陆码头，居民五方杂处，性格迥然相异。然燕赵故地，血气刚烈；水咸土碱，风习强悍。近百余年来，举凡中华大灾大难，无不首当其冲，因生出各种怪异人物，既...', 0, 's34924477.jpg', NULL);
INSERT INTO `user_book`
VALUES (1822, 0, 0, '来自新世界 （上下）', '[日] 贵志祐介 / 丁丁虫 ', '9.0', 7253, ' 上海译文出版社 ', ' 2014-4 ', ' 88.00',
        '“离开小町回头去看，有一件事我看得清清楚楚——我们的小町，很扭曲。为了维持小町的安定和秩序，不断杀害孩子们的小町，还能称之为人类的社会吗？人类从涂满鲜血的...', 0, 's25752955.jpg', NULL);
INSERT INTO `user_book`
VALUES (1823, 0, 0, '乌克兰拖拉机简史', '[英] 玛琳娜·柳薇卡 / 邵文实 ', '7.5', 7332, ' 吉林出版集团 ', ' 2011-12 ', ' 32.00元',
        '“我母亲去世两年后，我父亲与一位离过婚的妖艳迷人的乌克兰金发女郎坠入爱河。他时年八十四岁，而她三十六岁。她就像枚毛绒绒的粉红色手榴弹一样在我们的生活中骤然爆...', 0, 's6879215.jpg', NULL);
INSERT INTO `user_book`
VALUES (1824, 0, 0, '谁杀了她', '(日) 东野圭吾 / 袁斌 ', '7.7', 3381, ' 北京十月文艺出版社 ', ' 2018-6 ', ' 49.50元',
        '这是一本需要读者自己去寻找答案的小说为完成《谁杀了她》，我着实费了番功夫。直到这本书面世，我和编辑心里都捏着一把汗。这个谜题会不会太难呢？反正阅读第一稿的...', 0, 's30210250.jpg', NULL);
INSERT INTO `user_book`
VALUES (1825, 0, 0, '午后四点', '[比利时] 阿梅丽·诺冬 / 胡小跃 ', '7.9', 169, ' 湖南文艺出版社 ', ' 2020-4 ', ' 39.80元',
        '★阿梅丽·诺冬，是比利时籍法语作家。她从1992年开始出版第一本书，每一本书都在法国引起了巨大轰动。她的作品被翻译成了45种语言，全球累计销量突破1600万...', 0, 's34937417.jpg', NULL);
INSERT INTO `user_book`
VALUES (1826, 0, 0, '白鲸', '[美]赫尔曼·麦尔维尔 / 曹庸 ', '8.1', 2912, ' 上海译文出版社 ', ' 2007-7 ', ' 30.00元',
        '赫尔曼·麦尔维尔（1819-1891），美国文学史上最杰出的浪漫主义小说家之一，《白鲸》是他的代表作。捕鲸船“裴廊德”号船长亚哈，在一次捕鲸过程中，被凶残...', 0, 's2170030.jpg', NULL);
INSERT INTO `user_book`
VALUES (1827, 0, 0, '将门嫡女之定乾坤', '千山茶客 ', '7.0', 2470, ' 青岛出版社 ', ' 2016-10 ', ' 59.80元',
        '“幽州十三京。”“归你。”“漠北定元城。”“归你。”“江南豫州，定西东海，临安青湖，洛阳古城。”“都归你。”“全都归我，谢景行你要什么...', 0, 's26948956.jpg', NULL);
INSERT INTO `user_book`
VALUES (1828, 0, 0, '刚多林的陷落', '[英] J. R. R. 托尔金、[英] 克里斯托弗·托尔金 编、[英] 艾伦·李 图 / 邓嘉宛、石中歌、杜蕴慈 ', '9.9', 128, ' 上海人民出版社 ',
        ' 2020-4 ', ' 79.00元', '★《霍比特人》《魔戒》前传，中洲远古三大传说完结篇，整个中洲世界的基石。★奥斯卡奖得主、奇幻插画大师艾伦·李倾情创作8幅彩色插图、15幅黑白插图。★克里...', 0,
        's34954100.jpg', NULL);
INSERT INTO `user_book`
VALUES (1829, 0, 0, '魔戒', '[英] J.R.R.托尔金 / 邓嘉宛、石中歌、杜蕴慈 ', '9.5', 3725, ' 上海人民出版社 ', ' 2013-9 ', ' 169.00元',
        '★献给未来的永恒经典，我们时代最伟大的奇幻史诗。★20世纪严肃想象力之源，蕴含对世间万物最本真的好奇心与最深刻的洞察力。★J.K.罗琳、乔治•马丁、彼...', 0, 's21979017.jpg', NULL);
INSERT INTO `user_book`
VALUES (1830, 0, 0, '盗墓笔记2', '南派三叔 ', '8.2', 42101, ' 中国友谊出版公司 ', ' 2007-4 ', ' 26.80元',
        '朋友老痒出狱，给刚从西礁海底墓归来、在家赋闲没有几日的主人公——“我”带来一个惊人的消息：诡异的六角铃铛，古老的厍族，巨大的青铜树，遥远的秦岭腹地……“我”...', 0, 's2057285.jpg', NULL);
INSERT INTO `user_book`
VALUES (1831, 0, 0, '像托尔斯泰一样写故事', '[英] 理查德·科恩、Richard Cohen / 徐阳 ', '8.2', 196, ' 后浪丨大象出版社 ', ' 2020-1 ', ' 56.00元',
        '托尔斯泰、纳博科夫、海明威、斯蒂芬·金等伟大作家的创作历险记独具慧眼的出版发行总监与金牌编辑的写作课◎编辑推荐★作家怪癖+文坛八卦约翰·厄普...', 0, 's34826176.jpg', NULL);
INSERT INTO `user_book`
VALUES (1832, 0, 0, '生存与命运', '[苏] 瓦·格罗斯曼 / 严永兴、郑海凌 ', '9.1', 580, ' 中信出版集团·新思文化 ', ' 2015-10 ', ' 98.00元',
        '逝去的人，活着的人，苦难并没有结束……●理解极权社会起源的必读之书！●一部应该被人类长久记忆的伟大著作！●欧美公认“当代的《战争与和平》”...', 0, 's26570629.jpg', NULL);
INSERT INTO `user_book`
VALUES (1833, 0, 0, '橘子不是唯一的水果', '[英] 珍妮特·温特森 / 于是 ', '7.4', 3964, ' 北京联合出版公司 ', ' 2018-3 ', ' 49.00元',
        '★就天赋与灵气而言，少有作家能与珍妮特•温特森相比★BBC100位杰出女性/大英帝国勋章获得者★一部大胆的、光芒四射的小说★橘子不...', 0, 's27622171.jpg', NULL);
INSERT INTO `user_book`
VALUES (1834, 0, 0, '谁杀了她', '[日] 东野圭吾 / 袁斌 ', '7.5', 14369, ' 南海出版公司 ', ' 2012-10 ', ' 28.00元',
        '《东野圭吾作品30:谁杀了她》内容简介：因担心情绪低落的妹妹，交警康正赶赴东京，迎接他的竟是妹妹的尸体。乍看上去毫无疑问的自杀现场，在康正眼里却破绽百出。他...', 0, 's10594788.jpg', NULL);
INSERT INTO `user_book`
VALUES (1835, 0, 0, '邦查女孩', '甘耀明 ', '9.0', 1080, ' 后浪丨文化发展出版社 ', ' 2018-11 ', ' 76.00元',
        '拥有七个名字的少女遇上只跟树说话的青年纯真爱情、乡野传奇、山林浩劫横扫台湾文学界所有大奖莫言评价“如此文笔可惊天”....................', 0, 's30276134.jpg', NULL);
INSERT INTO `user_book`
VALUES (1836, 0, 0, '葡萄牙的高山', '[加拿大] 扬·马特尔 / 亚可 ', '8.5', 5114, ' 北京联合出版公司 ', ' 2017-11-1 ', ' 58.00元',
        '《少年Pi的奇幻漂流》作者扬·马特尔，时隔十五年又一震撼杰作一九〇四年，葡萄牙。有一天，托马斯开始倒着走路。在那之前，他失去了一生所爱——爱人、孩子和父亲...', 0, 's27124847.jpg', NULL);
INSERT INTO `user_book`
VALUES (1837, 0, 0, '世上最美的溺水者', '[哥伦比亚] 加西亚·马尔克斯 / 陶玉平 ', '8.8', 8522, ' 南海出版公司 ', ' 2015-11-1 ', ' 35.00元',
        '那个尴尬的傻子死了，人们这才发现他美得动人心魄。马尔克斯短篇小说集收录《巨翅老人》《世上最美的溺水者》《令人难以置信的悲惨故事》等名篇，入选高中语文教材...', 0, 's26628811.jpg', NULL);
INSERT INTO `user_book`
VALUES (1838, 0, 0, '雾都孤儿', '[英] 查尔斯·狄更斯 / 张玲、李卫东 ', '8.5', 1287, ' 长江文艺出版社 ', ' 2008-5 ', ' 20.00元',
        '《世界文学名著典藏:雾都孤儿(全译本)》以雾都伦敦为背景，讲述了一个孤儿悲惨的身世及遭遇，主人公奥利弗在孤儿院长大，经历学徒生涯，艰苦逃难，误入贼窝，又被迫...', 0, 's2355626.jpg', NULL);
INSERT INTO `user_book`
VALUES (1839, 0, 0, '发条橙', '[英] 安东尼·伯吉斯 / 杜冬 ', '8.5', 1986, ' 译林出版社 ', ' 2019-7 ', ' 48.00元',
        '“当你无法选择，你也就不再为人了。”《发条橙》是英国作家安东尼·伯吉斯的代表作，入选《时代》周刊“英语小说百强”。该书以天才的想象力书写自由与强权的碰撞，...', 0, 's33422839.jpg', NULL);
INSERT INTO `user_book`
VALUES (1840, 0, 0, '梅塘之夜', '(法)左拉 等 / 余中先 平原 ', '9.1', 46, ' 译林出版社 ', ' 2020-2-1 ', ' 45.00',
        '19世纪70年代末期，一群拥戴自然主义的作家聚集在左拉周围，结成了所谓的“梅塘集团”。这些作家是阿莱克西、于斯曼、莫泊桑、塞阿尔和埃尼克。他们都是文学青年，...', 0, 's34866954.jpg', NULL);
INSERT INTO `user_book`
VALUES (1841, 0, 0, '酒吧长谈', '[秘] 马里奥·巴尔加斯·略萨 / 孙家孟 ', '9.1', 868, ' 人民文学出版社 ', ' 2011-4 ', ' 39.80元',
        '他是一个在独裁政权中当过保镖和密探的人，谁给他钱，他就为谁做事。他可以为上司到妓院去收“月钱”，镇压妇女游行，甚至为了帮上司搞社交而甘心充当喜好同性的大资产...', 0, 's5383804.jpg', NULL);
INSERT INTO `user_book`
VALUES (1842, 0, 0, '万寿寺', '王小波 ', '8.2', 1129, ' 北京出版集团北京十月文艺出版社 ', ' 2017-9-1 ', ' 45.00元',
        '《万寿寺》是王小波的长篇小说代表作，是王小波奇想与荒诞的结晶。《万寿寺》的主人公王二的遭遇和唐代传奇人物薛嵩、红线的遭遇古今交错，讲述了关于现在、过去、自...', 0, 's27143188.jpg', NULL);
INSERT INTO `user_book`
VALUES (1843, 0, 0, '三生三世 枕上书·终篇', '唐七公子 ', '7.5', 8255, ' 湖南文艺出版社 ', ' 2013-11-1 ', ' 35.00元',
        '两千年的执念，不过换一场素来无缘。若终归无缘，却为何要让你我今生相见，一眼万年？迷雾重重的梦境中，穿行了谁的影子，湮灭了谁的相思，又掩埋了，谁的今生前世...', 0, 's25735699.jpg', NULL);
INSERT INTO `user_book`
VALUES (1844, 0, 0, '永远不要说你老了', '[日] 村上龙 / 张智渊 ', '7.9', 73, ' 江苏凤凰文艺出版社&楚尘文化 ', ' 2020-5 ', ' 48.00',
        '村上龙的中篇小说集《永远不要说你老了》讲述的是，关于中老人如何直面生活危机重新出发的故事。书中，五位主角面临各自不同的人生议题。离婚的中米志津子踏入婚姻...', 0, 's35011091.jpg', NULL);
INSERT INTO `user_book`
VALUES (1845, 0, 0, '庆余年·叁', '猫腻 ', '8.3', 5809, ' 中国友谊出版公司 ', ' 2008-09 ', ' 28.00元',
        '一个年轻的病人，因为一次毫不意外的经历，重生到一个完全不同的世界，成为古代庆国伯爵府一个并不光彩的私生子。修行无名功诀，踏足京都官场，继承庞大商团……范闲，...', 0, 's3165385.jpg', NULL);
INSERT INTO `user_book`
VALUES (1846, 0, 0, '庆余年·肆', '猫腻 ', '8.3', 5626, ' 中国友谊出版公司 ', ' 2008-09 ', ' 28.00元',
        '一个年轻的病人，因为一次毫不意外的经历，重生到一个完全不同的世界，成为古代庆国伯爵府一个并不光彩的私生子。修行无名功诀，踏足京都官场，继承庞大商团……范闲，...', 0, 's3165386.jpg', NULL);
INSERT INTO `user_book`
VALUES (1847, 0, 0, '怒', '[日] 吉田修一 / 岳远坤 ', '8.4', 5573, ' 上海人民出版社 ', ' 2016-7-31 ', ' 42.00元',
        '★因为自信，你才会信任他人；因为缺乏自信，你才会对他人心生愤怒。★《周刊文春》推理TOP10！书店大奖入围作！★日本跨界纯文学与通俗文学的天才、实力派作...', 0, 's26760976.jpg', NULL);
INSERT INTO `user_book`
VALUES (1848, 0, 0, '泡沫之夏', '明晓溪 ', '6.8', 47330, ' 新世界出版社 ', ' 2006-3 ', ' 20.00元',
        '夏沫和洛熙都是孤儿，少年的他们在养父母家相识，因为童年留在内心的阴影，他们彼此充满戒备和防范。洛熙在夏沫和弟弟参加电视歌唱大赛遇到尴尬状况下为他们解围，两个...', 0, 's1596305.jpg', NULL);
INSERT INTO `user_book`
VALUES (1849, 0, 0, '左耳', '饶雪漫 ', '6.9', 43000, ' 当代世界出版社 ', ' 2006-2 ', ' 22.00元',
        '该书延续了作者一贯的创作路线，讲述关于青春成长的故事。但经过多年的写作实践后，饶雪漫创作的喷发期终于到来，《左耳》被各界一致认为是饶雪漫的巅峰之作。它生动地...', 0, 's1469051.jpg', NULL);
INSERT INTO `user_book`
VALUES (1850, 0, 0, '肠子', '（美）恰克·帕拉尼克 / 景翔 ', '8.3', 2385, ' 北京联合出版公司 ', ' 2014-11 ', ' 39.80元',
        '《搏击俱乐部》作者当代最负盛名的邪典小说家黑暗而虐心的天才之作让人肠子打结、胫骨错位、魂飞魄散的小说23个故事，刻画荒诞、残忍的众生之相73人在听...', 0, 's26253088.jpg', NULL);
INSERT INTO `user_book`
VALUES (1851, 0, 0, '格格不入', '巫哲 ', '8.0', 4060, ' 青岛出版社 ', ' 2016-4-1 ', ' 59.80元',
        '有出息的杀人放火，没出息的偷鸡摸狗——这是项西过去20年的人生。有些人，像他这样的，似乎骨子里就属于这个黑色的泥潭。想要摆脱和离开，代价就是抽筋去骨。...', 0, 's26781333.jpg', NULL);
INSERT INTO `user_book`
VALUES (1852, 0, 0, '生尸之死', '[日] 山口雅也 / 警部殿 ', '7.6', 253, ' 新星出版社 ', ' 2020-2 ', ' 65.00',
        '“墓碑村”周围最近发生了一些怪事，死去的人又站了起来，有的还若无其事地冲到了街上！同时，警方还在调查几起少女失踪案，有传言说是巴里科恩家的次子“死而复生”，...', 0, 's34907836.jpg', NULL);
INSERT INTO `user_book`
VALUES (1853, 0, 0, '莱博维茨的赞歌', '[美] 小沃尔特·M·米勒 / 栾杰 ', '8.2', 440, ' 中信出版集团 ', ' 2018-5 ', ' 56.00元',
        '《莱博维茨的赞歌》是美国科幻作家、雨果奖获得者小沃尔特•M.米勒的一部长篇小说，讲述了人类文明毁灭-重生-毁灭的轮回史诗，赞美了人类渴求知识、渴望文明的伟大...', 0, 's30191936.jpg', NULL);
INSERT INTO `user_book`
VALUES (1854, 0, 0, '火中遗物', '[阿根廷] 玛丽安娜•恩里克斯（Mariana Enriquez） / 陈芷、李碧芸 ', '8.5', 72, ' 外语教学与研究出版社 ', ' 2020-4-1 ',
        ' 45.00', '【编辑推荐】☆Goodreads4.02+好评，版权输出20多国，荣膺2017年巴塞罗那城市文学奖。☆12则短篇故事，20余幅暗黑系绝美插图，创痛与美好...', 0, 's34914941.jpg',
        NULL);
INSERT INTO `user_book`
VALUES (1855, 0, 0, '了不起的盖茨比', '弗朗西斯•司各特•菲兹杰拉德 (Francis Scott Fitzgerald) / 李继宏 ', '7.0', 6450, ' 天津人民出版社 ', ' 2013-1 ',
        ' 32.00元', '★迄今为止最经典的《了不起的盖茨比》译本，超级畅销书《追风筝的人》《与神对话》译者李继宏倾心翻译。★《了不起的盖茨比》是世界文学史上“完美之书”，村上春...', 0,
        's20507368.jpg', NULL);
INSERT INTO `user_book`
VALUES (1856, 0, 0, '巴黎圣母院', '[法] 雨果 / 陈敬容 ', '9.0', 787, ' 人民文学出版社 ', ' 2015-1 ', ' 36.00元',
        '《巴黎圣母院》艺术地再现了四百多年前法王路易十一统治时期的历史真实，宫廷与教会如何狼狈为奸压迫人民群众，人民群众怎样同两股势力英勇斗争。本书以1482年的法...', 0, 's25886226.jpg', NULL);
INSERT INTO `user_book`
VALUES (1857, 0, 0, '北鸢', '葛亮 ', '7.9', 10142, ' 人民文学出版社 ', ' 2016-10-1 ', ' 45.00元',
        '《北鸢》起笔于民国商贾世家子弟卢文笙的成长，收束于上世纪中叶。将波诡云谲的民国动荡史寄予两个家族的命运沉浮，书写中国最为丰盛起伏的断代。人生一线，恰似风筝。...', 0, 's26821461.jpg', NULL);
INSERT INTO `user_book`
VALUES (1858, 0, 0, '奥兰多', '[英] 弗吉尼亚·伍尔夫 / 任一鸣 ', '8.7', 1385, ' 上海译文出版社 ', ' 2014-4 ', ' 30.00',
        '故事始于十六世纪伊丽莎白时代，终于一九二八年伍尔夫搁笔的“现时”，历时四百年。奥兰多先是一位天真无邪的贵族美少年，因深受伊丽莎白女王宠幸而入宫廷。詹姆斯王登...', 0, 's25774861.jpg', NULL);
INSERT INTO `user_book`
VALUES (1859, 0, 0, '黑色睡莲', '[法]米歇尔·普西 / 刘天爽 ', '8.1', 158, ' 湖南文艺出版社 ', ' 2020-3-1 ', ' CNY 47.70',
        '一切都是假的，发生在吉维尼村庄的谋杀案却是真的。真实与幻象相互纠缠，正如那黑色睡莲，让人捉摸不定。2010年5月，巴黎西部吉维尼小镇——著名画家莫奈故居的...', 0, 's34950356.jpg', NULL);
INSERT INTO `user_book`
VALUES (1860, 0, 0, '长袜子皮皮', '[瑞典] 阿斯特丽德·林格伦 / 李之义 ', '9.0', 7968, ' 中国少年儿童出版社 ', ' 1999-3 ', ' 17.80元',
        '一位小姑娘一个人住在一栋小房子里，生活完全自理，富得像一位财神，壮得像一匹马，他的爸爸是南海一个岛上的国王。她所做的一切几乎都违背了成年人的意志，不去学校上...', 0, 's1004088.jpg', NULL);
INSERT INTO `user_book`
VALUES (1861, 0, 0, '族长的秋天', '[哥伦比亚] 加西亚·马尔克斯 / 轩乐 ', '8.7', 4594, ' 南海出版公司 ', ' 2014-6 ', ' 39.50',
        '《族长的秋天》运用斑斓万千的意象、光怪陆离的情节、排山倒海的句式，讲述了一个独裁者无所不能却孤独落寞的一生。他在难以数算的岁月中享尽荣光，却无法改变“没有能...', 0, 's25779593.jpg', NULL);
INSERT INTO `user_book`
VALUES (1862, 0, 0, '房思琪的初戀樂園', '林奕含 ', '8.9', 18086, ' 游擊文化 ', ' 2017-2-7 ', ' NTD320',
        '令人心碎卻無能為力的真實故事。性、權力、升學主義──青澀的表皮、變態社會的日常如果這件事情正在發生，我們要怎麼假裝世界上沒有人以強暴小女孩為樂？「我下...', 0, 's26963900.jpg', NULL);
INSERT INTO `user_book`
VALUES (1863, 0, 0, '万火归一', '[阿根廷] 胡里奥·科塔萨尔 / 范晔 ', '8.8', 5021, ' 人民文学出版社 ', ' 2009-6 ', ' 22.00',
        '《万火归一》是阿根廷文学大师胡利奥·科塔萨尔最具代表性的短篇小说集，由八个短篇组成，每一篇都是传世名篇。他优雅细密、玄妙迷人的文字能像上帝的手一样翻云覆雨...', 0, 's3769738.jpg', NULL);
INSERT INTO `user_book`
VALUES (1864, 0, 0, '亚瑟与乔治', '[英] 朱利安·巴恩斯 / 赵安琪 ', '8.4', 122, ' 文汇出版社 ', ' 2020-3-10 ', ' 59.9',
        '要不是生活崩溃到了怀疑自己的地步，亚瑟与乔治的故事就不会发生了。亚瑟，也就是鼎鼎大名的亚瑟·柯南·道尔——《福尔摩斯探案集》的作者，此刻正经历着人生理想的...', 0, 's34969912.jpg', NULL);
INSERT INTO `user_book`
VALUES (1865, 0, 0, '伤逝', '鲁迅 ', '8.8', 5950, ' 中国青年出版社 ', ' 2004-1-1 ', ' 19.50元',
        '电影伴读中国文学文库。本书精选了鲁迅小说、杂文数十篇。鲁迅（1881-1936），现代文学家、思想家和革命家。原名周树人，字豫才，浙江绍兴人。1918年5...', 0, 's1157014.jpg', NULL);
INSERT INTO `user_book`
VALUES (1866, 0, 0, '假面饭店', '[日]东野圭吾 / 宋扬 ', '7.1', 8524, ' 南海出版公司 ', ' 2016-8 ', ' 39.80元',
        '在高档酒店“东京柯尔特西亚”发生了连续预告杀人事件。负责追踪事件的警视厅刑警新田浩介扮成服务生混入酒店。与前台小姐山岸尚美一起探索连续杀人事件之谜。事件由东...', 0, 's26853726.jpg', NULL);
INSERT INTO `user_book`
VALUES (1867, 0, 0, '茶馆', '老舍 ', '9.0', 13676, ' 人民文学出版社 ', ' 2002-1 ', ' 9.80元',
        '三幕话剧《茶馆》以北京一家大茶馆为背景，描写了清末、民初、抗战胜利以后三个历史时期的北京生活风貌，深刻地写出了王利发等人的真实命运。', 0, 's1036613.jpg', NULL);
INSERT INTO `user_book`
VALUES (1868, 0, 0, '被涂污的鸟', '[美] 耶日·科辛斯基 / 莫雅平 ', '8.2', 790, ' 上海人民出版社 ', ' 2019-3 ', ' 56.00',
        '☆黑色文学的经典，被《时代》周刊评为1923年来最好的一百部英文小说之一。1965年初版于美国，刚问世便引起轰动，同年获法国“最佳外国小说奖”。☆作者...', 0, 's30397063.jpg', NULL);
INSERT INTO `user_book`
VALUES (1869, 0, 0, '生命中不能承受之轻', '[捷] 米兰·昆德拉 / 韩少功、韩刚 ', '8.7', 10534, ' 作家出版社 ', ' 1987-9 ', ' 2.20元',
        '最沉重的负担压迫着我们，让我们屈服于它，把我们压到地上。但在历代的爱情诗中，女人总渴望承受一个男性身体的重量。于是，最沉重的负担同时也成了最强盛的生命力的影...', 0, 's1433377.jpg', NULL);
INSERT INTO `user_book`
VALUES (1870, 0, 0, '海风中失落的血色馈赠', '[加拿大] 阿利斯泰尔·麦克劳德 / 陈以侃 ', '8.9', 1209, ' 人民文学出版社 ', ' 2019-1 ', ' 49',
        '《海风中失落的血色馈赠》所收入的七个故事，都发生在新斯科舍省布雷顿角那些严酷的风景中，有少年渴望摆脱家族在海岛世代挖煤的命运而在成年之际离家远行，有人到中年...', 0, 's30401373.jpg', NULL);
INSERT INTO `user_book`
VALUES (1871, 0, 0, '占星术杀人魔法', '（日）岛田庄司 / 王鹏帆 ', '8.4', 8561, ' 新星出版社 ', ' 2012-5 ', ' 28.00元',
        '四十年前，一桩占星术连续杀人案件轰动全日本！先是画家梅泽平吉在密室被人重击致死，接着是他早已出嫁的长女在家中被奸杀，最后甚至连与他同住的六个女儿也全部失踪。...', 0, 's10740776.jpg', NULL);
INSERT INTO `user_book`
VALUES (1872, 0, 0, '群魔', '[俄] 费·陀思妥耶夫斯基 / 臧仲伦 ', '9.3', 1292, ' 译林出版社 ', ' 2002-5 ', ' 36.50元',
        '《群魔》是陀思妥耶夫斯基的代表作之一。他在这部作品中塑造了19世纪40年代的自由主义者及70年代初民主青年的群像。作者着重探索了恐怖分子的内心活动。《群魔》...', 0, 's1437488.jpg', NULL);
INSERT INTO `user_book`
VALUES (1873, 0, 0, '三体全集', '', '9.4', 971, '刘慈欣 ', ' 读客文化 ', ' 2018-11-26', '', 0, 's33420947.jpg', NULL);
INSERT INTO `user_book`
VALUES (1874, 0, 0, '离婚', '老舍 ', '9.0', 4232, ' 人民文学出版社 ', ' 1981-9-1 ', ' 0.72元', '老舍长篇小说代表作。', 0, 's2031604.jpg',
        NULL);
INSERT INTO `user_book`
VALUES (1875, 0, 0, '龙头凤尾', '马家辉 ', '7.8', 3595, ' 四川文艺出版社 ', ' 2016-10 ', ' 39.50元',
        '他们是互不靠近的船舶，却在同一个江湖。在这样的时局里，每个人都背负着世界的混乱，以及混乱里的怨怼。跟你对赌的并非其他，而是命运，只是命运。一九三六年的...', 0, 's26870405.jpg', NULL);
INSERT INTO `user_book`
VALUES (1876, 0, 0, '孤城闭', '米兰Lady ', '8.4', 4291, ' 新世界出版社 ', ' 2008-11 ', ' 22.80元',
        '北宋的太平盛世，春风上国繁华。她是皇帝的爱女，依在父母身边窥帘望去，一时多少人杰：他原本是清俊的少年，穿梭于名臣和高士之间，人生拟是采采流水，蓬蓬远春。倏忽...', 0, 's3290028.jpg', NULL);
INSERT INTO `user_book`
VALUES (1877, 0, 0, '暗数杀人笔记', '虫安 ', '8.2', 121, ' 新星出版社 ', ' 2020-2 ', ' 58.00元',
        '暗数，即犯罪暗数，又称刑事隐案，是指该“罪行”已经发生，但因各种原因，隐匿在官方正式的犯罪统计之外。蒋鹏年幼丧父，考刑警没过，做了狱警，办案中因过失被停职...', 0, 's34893668.jpg', NULL);
INSERT INTO `user_book`
VALUES (1878, 0, 0, '麦田里的守望者', '[美国] J. D. 塞林格 / 施咸荣 ', '7.9', 59822, ' 译林出版社 ', ' 1997-2 ', ' 7.80元',
        '霍尔顿是出身于富裕中产阶级的十六岁少年，在第四次被开除出学校之后，不敢贸然回家，只身在美国最繁华的纽约城游荡了一天两夜，住小客店，逛夜总会，滥交女友，酗酒…...', 0, 's1082518.jpg', NULL);
INSERT INTO `user_book`
VALUES (1879, 0, 0, '哑奴', '', '6.3', 76, '香品紫狐 ', ' 桃源 ', ' 2007-08-23',
        '文案：什麼？那個小鬼竟然是六王爺的孫子？無意間的一個援手和一本武林秘笈，使得雲韶磊的身邊多了個趕不走的跟屁蟲。更沒想到瘦小醜陋的小啞巴卻是出身豪門...', 0, 's2265929.jpg', NULL);
INSERT INTO `user_book`
VALUES (1880, 0, 0, '侯大利刑侦笔记2', '小桥老树 ', '7.5', 339, ' 上海文艺出版社 ', ' 2020-5-1 ', ' 45元',
        '【《侯大利刑侦笔记2：辨骨寻凶》在案情设计、阅读快感、人物塑造上更加精妙，直击原生家庭、爱情、友情等亲密关系，逐层剖析熟人犯罪心理，展现教科书式的破案手法和...', 0, 's35002963.jpg', NULL);
INSERT INTO `user_book`
VALUES (1881, 0, 0, '幻城', '郭敬明 ', '7.3', 22441, ' 长江文艺出版社 ', ' 2008-4 ', ' 23.00元',
        '《幻城》2008年全新内容修订版本，收录郭敬明回顾心情实录《冰雪王爵与末世苍雪》。', 0, 's3056892.jpg', NULL);
INSERT INTO `user_book`
VALUES (1882, 0, 0, '活着为了讲述', '[哥伦比亚] 加西亚·马尔克斯 / 李静 ', '9.0', 8421, ' 南海出版公司 ', ' 2016-4-1 ', ' 55.00元',
        '一生中总会遇到一本书，奠定你人生的基调。★《百年孤独》作者马尔克斯唯一自传生活不是我们活过的日子，而是我们记住的日子，我们为了讲述而在记忆中重现的日子。...', 0, 's26657570.jpg', NULL);
INSERT INTO `user_book`
VALUES (1883, 0, 0, '漂亮朋友', '莫泊桑 / 王振孙 ', '8.2', 4066, ' 上海译文出版社 ', ' 2006-8 ', ' 16.00元',
        '《漂亮朋友》主要内容简介：莫泊桑(1850－1893)，法国著名作家。《漂亮朋友》是他的长篇小说代表作，一八八五年五月出版后即引起轰动，几个月内再版三十余次...', 0, 's1893972.jpg', NULL);
INSERT INTO `user_book`
VALUES (1884, 0, 0, '新参者', '[日] 东野圭吾 / 岳远坤 ', '8.4', 33654, ' 南海出版公司 ', ' 2011-9 ', ' 28.00元',
        '东野圭吾继《白夜行》《嫌疑人X的献身》之后最重磅作品！日本两大推理榜年度冠军东野圭吾“加贺恭一郎系列”迄今最高杰作2010年“这本推理小说了不起！BE...', 0, 's6746289.jpg', NULL);
INSERT INTO `user_book`
VALUES (1885, 0, 0, '赡养人类', '刘慈欣 ', '8.5', 5561, ' 中国华侨出版社 ', ' 2016-7 ', ' 38.00元',
        '一个职业杀手的经历，一个看似荒谬的故事。财富和技术向着少数人集中，各个方面的贫富差距变大。突发的状况，使得富人开始向穷人抛洒财富，甚至需要“雇佣杀手来消...', 0, 's26807576.jpg', NULL);
INSERT INTO `user_book`
VALUES (1886, 0, 0, '洗澡', '杨绛 ', '8.4', 4617, ' 人民文学出版社 ', ' 2004-1 ', ' 36.00元',
        '《洗澡》是新中国第一部反映知识分子思想改造的长篇小说，它借一个政治运动作背景，描写那个时期形形色色的知识分子：他们的确需要改造，然而，改造的效果又如何呢？小...', 0, 's20516443.jpg', NULL);
INSERT INTO `user_book`
VALUES (1887, 0, 0, '大话西方艺术史', '意公子 ', '8.0', 2616, ' 海南出版社 ', ' 2020-3 ', ' 78.00元',
        '◆句句有梗的极简艺术史。◆头号艺术自媒体意外艺术八年积累诚意之作！◆30000年艺术历程•150件名画经典•40位艺术大师•20个艺术流派。...', 0, 's34948951.jpg', NULL);
INSERT INTO `user_book`
VALUES (1888, 0, 0, '牛虻', '伏尼契(爱尔兰)、sf、qrewqwer / 李俍民 ', '8.2', 15462, ' 中国青年出版社 ', ' 1953-07 ', ' 13.90',
        '六月里一个炎热的傍晚，所有的窗户都敞开着，大学生亚瑟·勃尔顿正在比萨神学院的图书馆里翻查一大叠讲道稿。院长蒙太尼里神甫慈爱地注视着他。亚瑟出生在意大利的一个...', 0, 's1012637.jpg', NULL);
INSERT INTO `user_book`
VALUES (1889, 0, 0, '蛙', '莫言 ', '7.9', 18109, ' 上海文艺出版社 ', ' 2009-12 ', ' 27.00元',
        '本书是莫言的最新长篇小说。与莫言以往小说更注重历史幻想色彩不同的是，《蛙》更接近历史现实的书写，主要讲述的是乡村医生“姑姑”的一生。“姑姑”的父亲是八路军...', 0, 's4169424.jpg', NULL);
INSERT INTO `user_book`
VALUES (1890, 0, 0, '恶心', '[法] 让-保罗·萨特 / 杜长有 ', '8.6', 3193, ' 中国友谊出版公司 ', ' 1999-3 ', ' 16.00元',
        '萨特在书中设定主人公得了一种病症，并指出这种病症是每个人都可能得的，因此罗根了有时处在不适状态中而犯“恶心”，我们也可能犯“恶心”。罗根丁在搏斗，他企图摆脱...', 0, 's1030554.jpg', NULL);
INSERT INTO `user_book`
VALUES (1891, 0, 0, '碎玉投珠', '北南 ', '8.4', 1730, ' 青岛出版社 ', ' 2019-3 ', ' 30.00',
        '古玩行没一个缺心眼儿的。攻受都臭讲究。退一步兄友弟恭，进一步情有独钟，再进一步走完一生。白头偕老he丁汉白：“这行最喜欢的就是玉，料分三六九等，人也分龙...', 0, 's31585774.jpg', NULL);
INSERT INTO `user_book`
VALUES (1892, 0, 0, '朗读者', '[德] 本哈德·施林克 / 钱定平 ', '8.4', 20079, ' 译林出版社 ', ' 2009-2 ', ' 22.00',
        '战后的德国萧条破败，一个15岁的少年在电车上病倒了，他独自下车，行走在滂沱大雨中，最后在一个逼仄的过道里吐得一塌糊涂，一个36岁的陌生女人帮助了他……3个...', 0, 's3537590.jpg', NULL);
INSERT INTO `user_book`
VALUES (1893, 0, 0, '小手', '[西] 安德烈斯·巴尔瓦 / 童亚星、刘润秋 ', '8.4', 56, ' 理想国 | 广西师范大学出版社 ', ' 2020-4 ', ' 65',
        '暴力无法摧毁的，爱可以。“那渴望如同一把巨大的刀子，而我们则是刀柄。”巴尔瓦不需要任何写作上的建议，他早已创造出了一个完美的世界。——马里奥·巴尔加斯...', 0, 's34974563.jpg', NULL);
INSERT INTO `user_book`
VALUES (1894, 0, 0, '心理罪', '雷米 ', '8.1', 12603, ' 重庆出版社 ', ' 2011-2 ', ' 29.80元',
        '你能否找到心中的那条暗河？公安局长亲手击毙杀害人质的劫匪，死者的尸体却不翼而飞。是骗局，还是更大的阴谋？当红女星神秘失踪，绑架者寄来的不雅影像暗藏玄机。...', 0, 's5904212.jpg', NULL);
INSERT INTO `user_book`
VALUES (1895, 0, 0, '基督山伯爵（上下）', '[法] 大仲马 / 周克希 ', '9.2', 4343, ' 译林出版社 ', ' 2013-9 ', ' 78.00',
        '《基督山伯爵》主要描写的是法国波旁王朝时期发生的一个报恩复仇的故事。法老号船的年轻大副唐戴斯受船长临终之托为拿破仑党人送一封信，遭两个卑鄙小人和阴险检察官维...', 0, 's25717151.jpg', NULL);
INSERT INTO `user_book`
VALUES (1896, 0, 0, '七根凶简', '尾鱼 ', '8.1', 6693, ' 中国友谊出版公司 ', ' 2017-7 ', ' 39.80元',
        '上古之时，有七则恶念，凡接触之人，总会心性突变，犯下不赦命案。老子西出函谷关时，引七则恶念于七根木简，并以凤凰鸾扣封印，从此天下太平。但谁料凶简会再次流...', 0, 's27035382.jpg', NULL);
INSERT INTO `user_book`
VALUES (1897, 0, 0, '西出玉门 上', '尾鱼 ', '8.7', 2787, ' 敦煌文艺出版社 ', ' 2018-10 ', ' 42.00元',
        '玉门关，鬼门关，出关一步血流干，你金屋藏娇自快活，哪管我进关泪潸潸。素有“死亡之海”之称的无人区罗布泊，隐藏着一个汉武帝时代的大秘密，而早已风化成沙...', 0, 's30313981.jpg', NULL);
INSERT INTO `user_book`
VALUES (1898, 0, 0, '采桑子', '叶广芩 ', '9.0', 4624, ' 北京出版社 ', ' 2009-1 ', ' 32.00元',
        '《采桑子》是一部讲述民国以来满族贵胄后裔生活的长篇小说,是一幅描摹人物命运、充满文化意蕴的斑斓画卷，是一曲直面沧桑、感喟人生的无尽挽歌。清已降，大宅门儿里的...', 0, 's3448867.jpg', NULL);
INSERT INTO `user_book`
VALUES (1899, 0, 0, '白金数据', '[日] 东野圭吾 / 王蕴洁 ', '7.1', 7994, ' 北京联合出版公司 ', ' 2018-1 ', ' 42.00元',
        '凶手，竟然是我自己？！傍晚六点十二分，数学天才蓼科早树和哥哥被杀死在七层的房间里。整栋大楼的走廊、电梯都装有监控器，24小时有人查看，却没有发现任何可疑的...', 0, 's27173553.jpg', NULL);
INSERT INTO `user_book`
VALUES (1900, 0, 0, '占星术杀人魔法', '[日] 岛田庄司 / 王鹏帆 ', '8.3', 29378, ' 新星出版社 ', ' 2008-9 ', ' 28.00',
        '四十年前，一桩占星术连续杀人案件轰动全日本！先是画家梅泽平吉在密室被人重击致死，接着是他早已出嫁的长女在家中被奸杀，最后甚至连与他同住的六个女儿也全部失踪。...', 0, 's3187737.jpg', NULL);
INSERT INTO `user_book`
VALUES (1901, 0, 0, '边城', '沈从文 ', '8.9', 10508, ' 北京十月文艺出版社 ', ' 2008-07 ', ' 29.80元',
        '《边城》是沈从文的代表作，展示给读者的是湘西世界和谐的生命形态。《边城》发表于1934年，小说描写了山城茶峒码头团总的两个儿子天保和傩送与摆渡人的外孙女翠翠...', 0, 's3191322.jpg', NULL);
INSERT INTO `user_book`
VALUES (1902, 0, 0, '少年巴比伦', '路内 ', '8.6', 8409, ' 重庆出版社 ', ' 2008-8 ', ' 22.00元',
        '上个世纪90年代的戴城，路小路在一家化工厂上班，他是个愣头青，不知道未来和生活目标在哪里。跟着一个叫“老牛逼”的师傅混，没学会半点技术。在机修班，除了拧螺丝...', 0, 's3194071.jpg', NULL);
INSERT INTO `user_book`
VALUES (1903, 0, 0, '我的天才女友', '[意] 埃莱娜·费兰特 / 陈英 ', '9.2', 696, ' 上海文艺出版社 ', ' 2019-10 ', ' 58.00元',
        '《我的天才女友》是埃莱娜•费兰特“那不勒斯四部曲”的第一部，讲述了两个女主人公莉拉和埃莱娜的少女时代。故事一开始，已经功成名就的埃莱娜接到莉拉儿子里诺的电话...', 0, 's34661936.jpg', NULL);
INSERT INTO `user_book`
VALUES (1904, 0, 0, '西决', '笛安 ', '7.9', 55803, ' 长江文艺出版社 ', ' 2009-3 ', ' 22.80元',
        '仇恨，是种类似于某些中药材的东西，性寒、微苦，沉淀在人体中，散发着植物的清香。可是天长日久，却总是能催生一场又一场血肉横飞的爆炸。核武器、手榴弹、炸药包，当...', 0, 's3598313.jpg', NULL);
INSERT INTO `user_book`
VALUES (1905, 0, 0, '海边的卡夫卡', '[日] 村上春树 / 林少华 ', '8.5', 28499, ' 上海译文出版社 ', ' 2007-7 ', ' 27.00元',
        '小说的主人公是一位自称名叫田村卡夫卡——作者始终未交代其真名——的少年。他在十五岁生日前夜独自离家出走，乘坐夜行长途巴士远赴四国。出走的原因是为了逃避父亲所...', 0, 's2158189.jpg', NULL);
INSERT INTO `user_book`
VALUES (1906, 0, 0, '刺猬的优雅', '[法] 妙莉叶·芭贝里 / 史妍、刘阳 ', '8.1', 12406, ' 南京大学出版社 ', ' 2010-02 ', ' 25.00元',
        '一个是不安分的女孩,生于富裕家庭、父亲是国会议员,聪明得可以说是天才.即便拥有看似完美的一切，却着实厌倦生活中的所有，小小眼睛已看透成人世的虚伪与空虚,...', 0, 's3899039.jpg', NULL);
INSERT INTO `user_book`
VALUES (1907, 0, 0, '悲剧人偶', '[日]东野圭吾 / 杨婉蘅 ', '7.1', 4934, ' 北京十月文艺出版社 ', ' 2018-8-1 ', ' 49.50',
        '《悲剧人偶》是日本作家东野圭吾的长篇小说，中文简体首次出版，讲述了一个精妙的诡计，一个纯粹的烧脑解谜：在这个家里，命案接连发生。所有人的不在场证明都如蛛网般...', 0, 's30210694.jpg', NULL);
INSERT INTO `user_book`
VALUES (1908, 0, 0, '红拂夜奔', '王小波 / 新经典文化', '8.5', 2014, '北京十月文艺出版社 ', ' 2017-7 ', ' 39.00',
        '王小波说：“凡人都喜欢有趣。这是我一生不可动摇的信条，假如这世界上没有有趣的事我情愿不活……《红拂夜奔》谈的是这一点。”《红拂夜奔》借隋末大将军李靖和杨素...', 0, 's27077957.jpg', NULL);
INSERT INTO `user_book`
VALUES (1909, 0, 0, '如果没有明天之我是余欢水', '', '6.3', 296, '余耕 著 ', ' 百花文艺出版社 ', ' 35元',
        '小说以诙谐荒诞的方式描写了社会底层小人物余欢水的艰难境遇与心路历程。余欢水懦弱胆小、退让隐忍，身患绝症反而给了他为自己活一次的勇气。经历了命运的捉弄，余欢水...', 0, 's35031617.jpg', NULL);
INSERT INTO `user_book`
VALUES (1910, 0, 0, '茶花女', '[法] 小仲马 / 王振孙 ', '8.6', 5086, ' 上海译文出版社 ', ' 2010-8-1 ', ' 15.00元',
        '与其父大仲马一样，小仲马也是法国著名作家，本书是他的代表作。作品以作者自述的口气，叙写了男主人公阿尔芒和名妓玛格丽特赤诚相爱的感人故事。在我国读者中，读过小...', 0, 's5063806.jpg', NULL);
INSERT INTO `user_book`
VALUES (1911, 0, 0, '明朝那些事儿（叁）', '当年明月 ', '8.9', 43919, ' 中国友谊出版公司 ', ' 2007-4 ', ' 24.80',
        '从明英宗朱祁镇成功复辟的“夺门之变”后写起，叙述了忠奸不分的朱祁镇听信谗言，杀害曾救其于危难之际的大功臣于谦，而这也成为他继“土木堡之变”后在历史上留下的又...', 0, 's2052448.jpg', NULL);
INSERT INTO `user_book`
VALUES (1912, 0, 0, '首无·作祟之物', '[日]三津田信三 / 张舟 ', '8.8', 5677, ' 吉林出版集团有限责任公司 ', ' 2011-6 ', ' 35.00元',
        '人头的去向，只有一个人知道......惊愕度第一！期待度第一！横扫各大推理排行榜的名作终于登场！◎特别收录：三津田信三<致台湾的读者>序文！【推理作...', 0, 's6249670.jpg', NULL);
INSERT INTO `user_book`
VALUES (1913, 0, 0, '过门', '', '8.5', 3908, 'priest ', ' 2016-10-1 ', ' 16.90',
        '那门是窄的，路是小的——马太福音。徐西临在不远处冲他们挥了挥手，然后被窦寻拉着跑到了牛毛似的小雨里。飞溅地水花很快打湿了他休闲西装的裤脚，徐西临浑不在意，...', 0, 's27094488.jpg', NULL);
INSERT INTO `user_book`
VALUES (1914, 0, 0, '夹边沟记事', '杨显惠 ', '9.2', 26388, ' 花城出版社 ', ' 2008-09 ', ' 34.00元',
        '这是一段尘封四十年的历史，当年的幸存者散落在各个角落，没有人问过他们到底发生了什么，当年的死难者早已化为白骨，连他们的后代也不知道埋在何处。幸亏杨显惠这位有...', 0, 's3239549.jpg', NULL);
INSERT INTO `user_book`
VALUES (1915, 0, 0, '推拿', '毕飞宇 ', '8.1', 8432, ' 人民文学出版社 ', ' 2008-9 ', ' 20.00元',
        '被誉为“最了解女性的男性作家”的毕飞宇首次涉足盲人题材的写作，摒弃了同情与关爱，本着对盲人群体最大的尊重与理解，描述了一群盲人按摩师独特的生活，细微而彻底，...', 0, 's3239913.jpg', NULL);
INSERT INTO `user_book`
VALUES (1916, 0, 0, '香蜜沉沉烬如霜', '电线 ', '7.5', 15613, ' 江苏文艺出版社 ', ' 2009-7 ', ' 25.00元',
        '一颗匪夷所思的葡萄美人，一只烧焦的凤凰男，一条闪亮的美男鱼。外加一粒领衔客串的绝情丹。呃……其实，双修它是一门值得深入探讨的行为艺术。花开了，窗亦开了，...', 0, 's3903387.jpg', NULL);
INSERT INTO `user_book`
VALUES (1917, 0, 0, '恶棍列传', '[阿根廷] 豪·路·博尔赫斯 / 王永年 ', '8.3', 4299, ' 上海译文出版社 ', ' 2015-6-1 ', ' 25.00元',
        '博尔赫斯首部小说作品，1935年出版，集中讲述世界各地“恶棍”的故事，既有美国南方的奴隶贩子、纽约黑帮头目，也有冒名顶替望族子弟的英国流浪汉，甚至包括日本江...', 0, 's25796066.jpg', NULL);
INSERT INTO `user_book`
VALUES (1918, 0, 0, '大月亮及其他', '陆源 ', '8.7', 48, ' 后浪丨四川文艺出版社 ', ' 2020-4 ', ' 38',
        '∞编辑推荐：✨拒绝贴地行走的现实主义创作！“社幻小说家”陆源最新短篇小说集。✨小说叙事绵密，旁征博引，调用智识和绚烂的言语展现一个个带有荒诞奇幻彩色的...', 0, 's34971570.jpg', NULL);
INSERT INTO `user_book`
VALUES (1919, 0, 0, '呼兰河传', '萧红 ', '9.1', 1853, ' 江西人民出版社 ', ' 2019-7-1 ', ' 39.00元',
        '萧红研究会特别推荐阅读版本采用1941年上海杂志公司（桂林）初版文字原汁原味保留文中东北方言、与现代汉语不尽一致的个别字词习惯用法，可读到更为纯正的萧红...', 0, 's34451656.jpg', NULL);
INSERT INTO `user_book`
VALUES (1920, 0, 0, '明朝那些事儿（贰）', '当年明月 ', '8.9', 52885, ' 中国友谊出版公司 ', ' 2007-1 ', ' 24.80',
        '自永乐夺位的“靖难之役”后开始，先叙述了中国历史上赫赫有名的永乐大帝事迹——挥军北上五征蒙古，派郑和七下西洋，南下讨平安南等等，后来永乐于北伐蒙古归来途中病...', 0, 's1949338.jpg', NULL);
INSERT INTO `user_book`
VALUES (1921, 0, 0, '告白', '湊佳苗、湊かなえ / 丁世佳 ', '8.6', 26840, ' 時報文化 ', ' 2009-8 ', ' NT$250',
        '日本銷售破67萬冊獲獎記錄★2009年本屋大賞第1名★第29回小說推理新人獎★週刊文春「2008年MysteryBest10」第1名★寶島社「...', 0, 's3920130.jpg', NULL);
INSERT INTO `user_book`
VALUES (1922, 0, 0, '万历十五年', '[美] 黄仁宇 ', '8.9', 141916, ' 生活·读书·新知三联书店 ', ' 1997-5 ', ' 18.00元',
        '万历十五年，亦即公元1587年，在西欧历史上为西班牙舰队全部出动征英的前一年；而在中国，这平平淡淡的一年中，发生了若干为历史学家所易于忽视的事件。这些事件，...', 0, 's1041482.jpg', NULL);
INSERT INTO `user_book`
VALUES (1923, 0, 0, '本源', '[美] 丹·布朗 / 李和庆、李连涛 ', '7.0', 4457, ' 99读书人|人民文学出版社 ', ' 2018-5 ', ' 59.00元',
        '★★重磅消息：2018年5月22日，丹·布朗将首度来到中国大陆，为新作《本源》举办新书分享会！哈佛大学符号学专家罗伯特·兰登受邀前往西班牙毕尔巴鄂古根海姆...', 0, 's30142312.jpg', NULL);
INSERT INTO `user_book`
VALUES (1924, 0, 0, '草仍然绿，水仍在流', '[加] 托马斯·金 / 姚媛 ', '8.8', 54, ' 南京大学出版社 ', ' 2020-3-20 ', ' 69',
        '☼-卓越的当代美洲文学“跨界之作”，可疑的北美原住民魔幻现实≌—北美新魔幻，实力派作者的戏谑织梦，CBC甄选“加拿大必读书目”！☼-颓丧的当代生...', 0, 's34995955.jpg', NULL);
INSERT INTO `user_book`
VALUES (1925, 0, 0, '所罗门的伪证', '宫部美雪 / 徐建雄 ', '8.1', 4200, ' 江苏凤凰文艺出版社 ', ' 2014-9 ', ' 168.00元',
        '少年的死是一面镜子，映照出恶与善、虚伪与真实。一九九〇年圣诞节的清晨，城东第三中学校园内的积雪之下发现一具尸体，死者是该校二年级的学生。这起很快被校方和警...', 0, 's25954353.jpg', NULL);
INSERT INTO `user_book`
VALUES (1926, 0, 0, '夏摩山谷', '庆山 ', '6.9', 5266, ' 江苏凤凰文艺出版社 ', ' 2019-1 ', ' 58.00元',
        '庆山2019全新小说暌违七年重磅长篇...................【编辑推荐】★安妮宝贝改名庆山后的首部重磅长篇，历经七年酝酿，也许是她...', 0, 's30415612.jpg', NULL);
INSERT INTO `user_book`
VALUES (1927, 0, 0, '九州·缥缈录', '江南 ', '8.8', 27790, ' 新世界出版社 ', ' 2005-6 ', ' 20.00元',
        '当这个世界都要崩溃；当星辰和阳光也熄灭，当马蹄踏过弱者的尸骨，当黑暗的血色吞噬人心，不死的鹰再次降落在草原，英雄还在哭泣，在铁铸的摇篮中成长……《九州·缥缈...', 0, 's1321017.jpg', NULL);
INSERT INTO `user_book`
VALUES (1928, 0, 0, '倾城之恋', '张爱玲 ', '9.0', 1180, ' 北京十月文艺出版社 ', ' 2019-3 ', ' 49.50元',
        '◑张爱玲中短篇小说集。收录创作于1943年至1944年创作的中短篇小说《第一炉香》《第二炉香》《茉莉香片》《心经》《封锁》《倾城之恋》《琉璃瓦》《金锁记》《...', 0, 's30294357.jpg', NULL);
INSERT INTO `user_book`
VALUES (1929, 0, 0, '北上', '徐则臣 ', '7.6', 1156, ' 北京十月文艺出版社 ', ' 2018-12-1 ', ' 59.80元',
        '《北上》是著名作家徐则臣潜心四年创作完成的长篇新作。本书阔大开展，气韵沉雄，以历史与当下两条线索，讲述了发生在京杭大运河之上几个家族之间的百年“秘史”。公...', 0, 's30302906.jpg', NULL);
INSERT INTO `user_book`
VALUES (1930, 0, 0, '霍乱时期的爱情', '[哥伦比亚] 加西亚·马尔克斯 / 杨玲 ', '8.9', 6443, ' 南海出版公司 ', ' 2015-6 ', ' 49.50元',
        '《霍乱时期的爱情》是加西亚·马尔克斯获得诺贝尔文学奖之后完成的第一部小说。讲述了一段跨越半个多世纪的爱情史诗，穷尽了所有爱情的可能性：忠贞的、隐秘的、粗暴的...', 0, 's26374532.jpg', NULL);
INSERT INTO `user_book`
VALUES (1931, 0, 0, '世界微尘里', '木浮生 ', '7.8', 4758, ' 百花洲文艺出版社 ', ' 2014-4 ', ' 29.80元',
        '★人气作家木浮生睽违三年温情巨献★《良言写意》后再创经典★随书附赠精美卡片★世界上最令人心动的事情是，你原本以为没有机会靠近的人，竟然爱上了你……内...', 0, 's25851002.jpg', NULL);
INSERT INTO `user_book`
VALUES (1932, 0, 0, '钢铁是怎样炼成的', '尼•奥斯特洛夫斯基 / 曹缦西、王志棣 ', '7.7', 1437, ' 译林出版社 ', ' 2010-6-1 ', ' 20.80元',
        '《钢铁是怎样炼成的》以俄国十月革命前后(1915年至30年代初)这一段历史时期为背景，描绘了当时的社会变革、阶级斗争和各阶层人物心态。1917年，俄国爆发了...', 0, 's4881638.jpg', NULL);
INSERT INTO `user_book`
VALUES (1933, 0, 0, '白雪乌鸦', '迟子建 ', '7.9', 2502, ' 人民文学出版社 ', ' 2010-8 ', ' 28.00元',
        '这部小说是根据1910年冬至1911年春在东北哈尔滨爆发鼠疫的史实创作的。小说描写哈尔滨傅家甸地区的民众在鼠疫来临之时遭受的灭顶之灾。特别着力于王春申、翟芳...', 0, 's5275073.jpg', NULL);
INSERT INTO `user_book`
VALUES (1934, 0, 0, '修道院纪事', '[葡]若泽·萨拉马戈 / 范维信 ', '8.4', 809, ' 南海出版公司 ', ' 2019-6 ', ' 68.00元',
        '★诺贝尔文学奖得主若泽·萨拉马戈代表作★获葡语文学桂冠奖项“卡蒙斯文学奖”，被译成四十余种语言★时隔20年，简体中文修订版全新上市！-★一部...', 0, 's30321026.jpg', NULL);
INSERT INTO `user_book`
VALUES (1935, 0, 0, '饺子', '李碧华 ', '8.0', 5759, ' 新星出版社 ', ' 2013-10 ', ' 28.00元',
        '本书收入《饺子》《潮州巷》《钥匙》等五部中短篇小说，讲述发生在现代都市中的一组惊情故事，情节曲折离奇，文字妖媚冷艳、诡异森冷，与情节相得益彰而独到深刻地透视...', 0, 's25737044.jpg', NULL);
INSERT INTO `user_book`
VALUES (1936, 0, 0, '不存在的女孩', '(美) 露丝·尾关 / 袁田 ', '8.1', 103, ' 文治图书·北京联合出版公司 ', ' 2020-4 ', ' 48',
        '那些经历过的痛苦和失落的青春，你从来都不是孤单一人。口碑比肩《追风筝的人》，堪称美国版《海边的卡夫卡》荣获美国多斯·帕索斯文学奖、英国独立书店图书奖...', 0, 's34912702.jpg', NULL);
INSERT INTO `user_book`
VALUES (1937, 0, 0, '永远没有的真相', '（美）威廉 蓝迪 / 陈锦慧 ', '8.1', 129, ' 中国画报出版社 ', ' 2014-3-1 ', ' 36.00元',
        '人们总是希望从法律中寻找真相，真相的认定却往往取决于人们心中的恐惧……资深检察官安迪·巴博负责调查一个高档小区里发生的一起案件。然而，一项关键证据却让他的...', 0, 's25870756.jpg', NULL);
INSERT INTO `user_book`
VALUES (1938, 0, 0, '假面的告白', '[日] 三岛由纪夫 / 孙容成、戴焕 ', '9.0', 133, ' 北京十月文艺出版社 ', ' 2020-4 ', ' 49.50',
        '我永远都是少年，永远都是十六岁。我说的一切也请不要当真。我把人们谨慎的、噤若寒蝉的事，鼓足勇气，揭露了出来。《假面的告白》是我真正凭借时代的力量、时代的恩...', 0, 's34924508.jpg', NULL);
INSERT INTO `user_book`
VALUES (1939, 0, 0, '残像', 'Pano ', '8.3', 76, ' 江苏凤凰文艺出版社 ', ' 2020-2 ', ' 42.00元',
        '【内容简介】八月长安作序推荐，新生代人气作家Pano青春悬疑小说力作。冬余的梦是黑色的，梦中，她一直被困在空荡荡的“黑”里面，呼吸着“黑”。然而有一天，...', 0, 's34925955.jpg', NULL);
INSERT INTO `user_book`
VALUES (1940, 0, 0, '红豆生南国', '王安忆 ', '7.7', 1327, ' 人民文学出版社 ', ' 2017-6-19 ', ' 35.00元',
        '红豆生南国此物最相思《长恨歌》后十年王安忆再写都市人间绵绵情缘他的恩欠，他的愧受，他的困囚，他的原罪，他的蛊，忽得一个名字，这名字就叫相思。...', 0, 's27063109.jpg', NULL);
INSERT INTO `user_book`
VALUES (1941, 0, 0, '大裂', '胡迁 ', '7.7', 9453, ' 九州出版社 ', ' 2017-1-1 ', ' 35.00元',
        '王小帅骆以军黄丽群陈雪小野联袂推荐华语世界实力名家力荐新生代写作者中头角峥嵘的一支笔第六届华文世界电影小说奖首奖得主胡迁迷人、离奇、惊奇、...', 0, 's26935435.jpg', NULL);
INSERT INTO `user_book`
VALUES (1942, 0, 0, '罪与罚', '[俄] 陀思妥耶夫斯基 / 岳麟 ', '9.3', 3104, ' 上海译文出版社 ', ' 2015-1-1 ', ' CNY 58.00',
        '小说描写穷大学生拉斯柯尔尼科夫为生计所迫，受无政府主义思想毒害，精神失常，杀死放高利贷的房东老太婆和她的无辜的妹妹，制造了一起震惊全俄的凶杀案，最终在基督徒...', 0, 's25887912.jpg', NULL);
INSERT INTO `user_book`
VALUES (1943, 0, 0, '蓝另一种蓝', '(日) 山本文绪 / 张苓 ', '7.7', 7739, ' 南海出版公司 ', ' 2012-10 ', ' 25.00元',
        '★五月天阿信感动推荐★直木奖获奖者山本文绪代表作★这个世界上肯定有另一个我，做着我不敢做的事，过着我想过的生活★如果你不喜欢现在的自己，总觉得当年如果...', 0, 's6885715.jpg', NULL);
INSERT INTO `user_book`
VALUES (1944, 0, 0, '如果蜗牛有爱情', '丁墨 ', '7.0', 10002, ' 百花洲文艺出版社 ', ' 2014-4 ', ' 45.00',
        '我不介意等待，只要最后等到的人是你，就好。悬爱第一人丁墨超人气甜宠爱情故事，3,800,000个点赞，超5000万次阅读，读一段就放不下。新增数万字全新...', 0, 's25767862.jpg', NULL);
INSERT INTO `user_book`
VALUES (1945, 0, 0, '一首小夜曲', '[日] 伊坂幸太郎 / 金静和 ', '8.0', 6410, ' 新星出版社 ', ' 2016-1 ', ' 35.00',
        'Einekleine一首小小的Lightheavy轻重量级Documenta文献展Lookslike酷似Makeup化妆Nach...', 0, 's26687879.jpg', NULL);
INSERT INTO `user_book`
VALUES (1946, 0, 0, '智利之夜', '[智利] 罗贝托·波拉尼奥 / 徐泉 ', '8.6', 2086, ' 上海人民出版社 ', ' 2018-8 ', ' 49.80',
        '本书主人公塞巴斯蒂安·乌鲁提亚·拉克鲁瓦，是一位神甫兼文学批评家，天主教主业会的成员，同时还是一位平庸的诗人。因为坚信自己即将死去，发着高烧的他在短短一个晚...', 0, 's26434970.jpg', NULL);
INSERT INTO `user_book`
VALUES (1947, 0, 0, '红字', '(美)霍桑 / 苏福忠 ', '8.1', 2967, ' 上海译文出版社 ', ' 2007-7 ', ' 11.00',
        '小说以殖民地时期新英格兰生活为背景，以当时严酷的清教视为罪不可赦的一桩“通奸罪”为核心展开情节，细致入微地刻画了与这桩“罪行”有关的四个人物的精神世界。胸...', 0, 's2193878.jpg', NULL);
INSERT INTO `user_book`
VALUES (1948, 0, 0, '庆余年·伍', '猫腻 ', '8.3', 5434, ' 中国友谊出版公司 ', ' 2008-10 ', ' 28.00元',
        '一个年轻的病人，因为一次毫不意外的经历，重生到一个完全不同的世界，成为古代庆国伯爵府一个并不光彩的私生子。修行无名功诀，踏足京都官场，继承庞大商团……范闲，...', 0, 's3244065.jpg', NULL);
INSERT INTO `user_book`
VALUES (1949, 0, 0, '白夜', '[俄] 陀思妥耶夫斯基 / 荣如德 ', '8.1', 5063, ' 上海译文出版社 ', ' 2013-4 ', ' 22.00元',
        '《白夜》是作家四十年代文学创作的代表作之一，是一部具有浓厚抒情气息的中篇。小说描写天真无邪的姑娘娜斯简卡爱上一个年轻的房客，两人约定一年后在彼得堡的一座桥上...', 0, 's21993104.jpg', NULL);
INSERT INTO `user_book`
VALUES (1950, 0, 0, '遇蛇', '溯痕 ', '8.0', 2468, ' 晋江文学城 ', ' 2015-5-1 ', ' 0.00',
        '被一盏热茶淋身就如一盆狗血洒头。蛇妖淡定不能，反咬一口后才发现，其实咬不咬并无差别。这人，本就是要死的了。主角伊墨、沈清轩配角许明世、沈珏、南衡...', 0, 's27105120.jpg', NULL);
INSERT INTO `user_book`
VALUES (1951, 0, 0, '家族试验', '张怡微 ', '8.6', 102, ' 人民文学出版社 ', ' 2020-1 ', ' 42.00',
        '在日常生活里自诩并非勇敢挑战生活的强者的小说家，从十八岁开始，发现周围”不对劲“的事物越来越多，终于有一天多到产生了一个又一个崭新的虚构世界。在这些完全由她...', 0, 's34709936.jpg', NULL);
INSERT INTO `user_book`
VALUES (1952, 0, 0, '会有天使替我爱你', '明晓溪 ', '6.6', 47943, ' 新世界出版社 ', ' 2005-5 ', ' 20.00元',
        '《会有天使替我爱你》是一部校园爱情小说，先在网络连载。小米因为死去男友的心脏移植给了另外一个男孩而转学来到了他所在的学校，这个男孩——尹堂曜同明晓溪所有小...', 0, 's1291760.jpg', NULL);
INSERT INTO `user_book`
VALUES (1953, 0, 0, '球状闪电', '刘慈欣 ', '8.9', 2578, ' 四川科学技术出版社 ', ' 2016-9 ', ' 25.00',
        '某个离奇的雨夜，一个球状闪电闯进了少年的视野，并在一瞬间将少年的父母化为灰烬。少年毕其一生去解开那个将他变成孤儿的自然之谜。但未曾想，多年后，他的研究被纳入...', 0, 's26856061.jpg', NULL);
INSERT INTO `user_book`
VALUES (1954, 0, 0, '盗墓笔记4', '南派三叔 ', '8.4', 34773, ' 中国友谊出版公司 ', ' 2008-11 ', ' 32.80元',
        '从云顶天宫顺利脱出之后，吴邪和苏醒后的三叔进行了一次长谈。吴邪了解到在二十年前海底古墓里发生的三叔没有透露的隐情。关于解连环的神秘死亡以及背后牵涉到战国帛书...', 0, 's3266344.jpg', NULL);
INSERT INTO `user_book`
VALUES (1955, 0, 0, '时间移民', '刘慈欣 ', '8.4', 10672, ' 江苏凤凰文艺出版社 ', ' 2014-12 ', ' 32.00',
        '中国科幻第一人，九届银河奖得主，《三体》作者刘慈欣作品。未来，迫于环境恶化和人口压力，地球政府决定派出远征队伍，选取25岁以下的人类成员向未来移民。旅行队...', 0, 's26210607.jpg', NULL);
INSERT INTO `user_book`
VALUES (1956, 0, 0, '天黑以后', '[日] 村上春树 / 施小炜 ', '7.5', 7945, ' 南海出版公司 ', ' 2012-2 ', ' 29.50元',
        '《天黑以后》内容简介：映入眼帘的，是都市的身姿。透过在夜空中高翔的飞鸟的眼睛，我们从天上俯瞰着这光景。都市望去仿佛一头巨大的活物，遵循其自身的原理运转。我们...', 0, 's7056685.jpg', NULL);
INSERT INTO `user_book`
VALUES (1957, 0, 0, '人间椅子', '（日）江户川乱步 / 王华懋 ', '8.2', 4858, ' 新星出版社 ', ' 2011-7 ', ' 28.00元',
        '《人间椅子》为《江户川乱步作品集》第三卷。一共收录江户川乱步所撰写的变格推理短篇十五篇。《人间椅子》是乱步的第二十一则短篇。写一位有名的女性作家，收到一个沉...', 0, 's6558046.jpg', NULL);
INSERT INTO `user_book`
VALUES (1958, 0, 0, '金瓶梅', '兰陵笑笑生 ', '8.7', 7213, ' 齐鲁出版社 ', ' 1991 ', ' 268.00元', '本书由王汝梅与李昭恂、于凤树校点。', 0,
        's1456692.jpg', NULL);
INSERT INTO `user_book`
VALUES (1959, 0, 0, '诡计博物馆', '[日] 大山诚一郎 / 吕平 ', '8.2', 233, ' 上海文艺出版社 ', ' 2020-5 ', ' 39.90元',
        '◆当25年前的证据开口说话，才发现凶手一直就在身边！◆密室大奖NO.1、本格推理BEST10、“这本推理小说好厉害！”榜单作品◆短篇推理之神大山诚一郎的...', 0, 's35016085.jpg', NULL);
INSERT INTO `user_book`
VALUES (1960, 0, 0, '哑舍Ⅲ', '玄色 ', '7.5', 3350, ' 长江出版社 ', ' 2013-5 ', ' 25.00元',
        '哑舍里的古物，每一件都有着自己的故事，承载了许多年，无人倾听。因为，它们都不会说话……它们在岁月中浸染了成百上千年。每一件，都凝聚着工匠的心血，倾注了使用...', 0, 's24531079.jpg', NULL);
INSERT INTO `user_book`
VALUES (1961, 0, 0, '小王子', '[法]圣埃克絮佩里 / 周克希 ', '9.4', 9457, ' 上海译文出版社 ', ' 2009-4 ', ' 29.00元',
        '《小王子》是法国著名作家圣埃克絮佩里的一部响誉世界的畅销童话。本书是中、法、英三种语言对照的版本，采用彩色插图并配有难词解析，可以同时兼顾喜爱《小王子》的读...', 2, 's3693974.jpg', NULL);
INSERT INTO `user_book`
VALUES (1962, 0, 0, '明朝那些事儿（肆）', '当年明月 ', '8.8', 40061, ' 中国友谊出版公司 ', ' 2007-9 ', ' 24.80',
        '上接第三部，从嘉靖即位、“议礼之争”开始。嘉靖皇帝借“议礼之争”清除了一批前朝旧臣，总揽大权。此后他的生活日渐腐化，一心想得道成仙，国家大事抛诸脑后，奸相严...', 0, 's2253642.jpg', NULL);
INSERT INTO `user_book`
VALUES (1963, 0, 0, '春日序曲', '[美]安德列·艾席蒙 / 黄芳田 ', '7.6', 1403, ' 百花洲文艺出版社 ', ' 2019-8-1 ', ' 45',
        '★奥斯卡获奖影片《请以你的名字呼唤我》原著作者全新力作。★真正的爱情，一生只能经历一次。你终会出现，只因为我呼唤了你的名字。★全球权威媒体高度盛赞，长踞...', 0, 's33451948.jpg', NULL);
INSERT INTO `user_book`
VALUES (1964, 0, 0, '蛙', '莫言 ', '8.7', 2887, ' 浙江文艺出版社 ', ' 2017-1-1 ', ' CNY 37.00',
        '本书为莫言于2002年动笔，又于2007年重起炉灶，完成于2009年的一部长篇小说。小说由剧作家蝌蚪写给日本作家杉谷义人的五封书信、四部长篇叙事和一部话剧组...', 0, 's26904483.jpg', NULL);
INSERT INTO `user_book`
VALUES (1965, 0, 0, '乞力马扎罗的雪', '[美]海明威 / 汤永宽、陈良廷 等 ', '8.4', 6895, ' 上海译文出版社 ', ' 2006-8 ', ' 28.00元',
        '海明威是一百年来所有诺贝尔文学奖获得者中最受我国广大学者推崇和广大读者喜爱的一位。他的《老人与海》为广大教师推荐给学生，成为经久不衰的畅销书。\r但是海明威...', 0, 's1874411.jpg', NULL);
INSERT INTO `user_book`
VALUES (1966, 0, 0, '麒麟之翼', '东野圭吾 / 田秀娟 ', '7.8', 6300, ' 南海出版公司 ', ' 2015-7-1 ', ' 39.50元',
        '每个警察都应该好好读一读《麒麟之翼》，只要还有一丝疑点就绝不放弃，让冤案不再发生！东野圭吾加贺探案集最高杰作《达文西》杂志年度推理小说第1名《春城晚报...', 0, 's26387513.jpg', NULL);
INSERT INTO `user_book`
VALUES (1967, 0, 0, '编舟记', '三浦紫苑 / 蒋葳 ', '8.4', 5284, ' 上海文艺出版社 ', ' 2015-3 ', ' 28.00元',
        '怀才不遇的人、不得人缘的人、想换工作的人……究竟要燃烧什么，才能激发出真正的热情？传说中的玄武书房编辑部的“编舟计划”，正式启航！玄武书房拟定出版一部...', 0, 's26261735.jpg', NULL);
INSERT INTO `user_book`
VALUES (1968, 0, 0, '金陵十三钗', '严歌苓 ', '8.2', 15097, ' 中国工人出版社 ', ' 2007-1 ', ' 17.00元',
        '小说《金陵十三钗》摹写的是“特殊女人”的言行心态。作品中，她把十三个风尘女子放置于一种特殊的文化和道德的背景之下，进行心灵的剖析和人性的拷问，带给人们的自然...', 0, 's2016749.jpg', NULL);
INSERT INTO `user_book`
VALUES (1969, 0, 0, '万箭穿心', '方方 ', '8.5', 3373, ' 重庆出版社 ', ' 2013-7 ', ' 28.00',
        '主人公李宝莉年轻时美貌能干，但性格过于不饶人。嘴上的厉害让丈夫马学武一日日活在压抑之中。为了排解生活的苦闷，马学武与同厂的打字员成了秘密情人。李宝莉发现了这...', 0, 's24827456.jpg', NULL);
INSERT INTO `user_book`
VALUES (1970, 0, 0, '爱你就像爱生命', '王小波、李银河 ', '8.8', 83605, ' 上海锦绣文章出版社 ', ' 2008-5 ', ' 18.00元',
        '王小波书信均选自朝华出版社2004年4月第一版《爱你就像爱生命》，此书系王小波生前从未发表过的与李银河的“两地书”，也是迄今他们夫妇最完整和独立的一本书信集...', 0, 's3071717.jpg', NULL);
INSERT INTO `user_book`
VALUES (1971, 0, 0, '相约星期二', '[美] 米奇·阿尔博姆 / 吴洪 ', '8.4', 24116, ' 上海译文出版社 ', ' 2007-7 ', ' 19.00元',
        '莫里·施瓦茨是作者米奇·阿尔博姆在大学时，曾给予过他许多思想的教授。米奇毕业十五年后的一天，偶然得知莫里·施瓦茨罹患肌萎性侧索硬化，来日无多，这时老教授所感...', 0, 's2194123.jpg', NULL);
INSERT INTO `user_book`
VALUES (1972, 0, 0, '我不知道该说什么，关于死亡还是爱情', 'S.A.阿列克谢耶维奇 / 方祖芳、郭成业 / 花城出版社', '9.0', 13870, '铁葫芦图书 ', ' 2014-6-15 ',
        ' 34.80元', '★获得2015年诺贝尔文学奖，真实记录切尔诺贝利核灾难事件★“她的复调书写，是对我们时代的苦难和勇气的纪念。”★“每一页，都是感人肺腑的故事。”---...', 0, 's25884880.jpg',
        NULL);
INSERT INTO `user_book`
VALUES (1973, 0, 0, '爱与黑暗的故事', '[以色列] 阿摩司·奥兹 / 钟志清 ', '9.0', 1721, ' 译林出版社 ', ' 2014-3 ', ' 48.00',
        '当今以色列最富影响力的作家阿摩司·奥兹发表于2002年的自传体长篇小说《爱与黑暗的故事》一向被学界视为奥兹最优秀的作品，短短五年就被翻译成二十多种文字的译本...', 0, 's25756955.jpg', NULL);
INSERT INTO `user_book`
VALUES (1974, 0, 0, '如果在冬夜，一个旅人', '[意大利] 伊塔洛·卡尔维诺 / 萧天佑 ', '8.9', 5520, ' 译林出版社 ', ' 2012-4 ', ' 35.00元',
        '在大陆，王小波、苏童、阿城、止庵是他的忠实粉丝在台湾，朱天文，唐诺是卡尔维诺不余遗力的传播者在香港，梁文道说他一直在准备谈卡尔维诺，可是一直没准备好权...', 0, 's10555535.jpg', NULL);
INSERT INTO `user_book`
VALUES (1975, 0, 0, 'X的悲剧', '[美] 埃勒里·奎因 / 唐诺 ', '8.4', 13873, ' 新星出版社 ', ' 2009-1 ', ' 29.00',
        '故事发生在一辆拥挤的电车上。一个男人在车上被杀，所有人都看到男人死去的经过，却没人发现凶手。很多人都有理由憎恨死者，包括死者的合伙人，然而，萨姆巡官得到的线...', 0, 's3347997.jpg', NULL);
INSERT INTO `user_book`
VALUES (1976, 0, 0, '告白', '凑佳苗 / 竺家荣 ', '8.9', 470, ' 湖南文艺出版社 ', ' 2019-11 ', ' 48.00元',
        '《告白》是一部探讨少年犯罪问题的长篇推理小说。主要围绕着对未成年人保护法的不合理之处，以及通过对两个少年犯罪原因的拷问，质疑当今日本教育的弊端，青少年成长的...', 0, 's34809715.jpg', NULL);
INSERT INTO `user_book`
VALUES (1977, 0, 0, '青蛇', '李碧华 ', '8.4', 14698, ' 天津人民出版社 ', ' 2005-1 ', ' 16.00元',
        '桥是断肠桥，塔是伤心塔。作者李碧华用周星驰式的无厘头语言作为开篇，将我引到缠绵悱恻的故事中。白蛇与青蛇因误吃了七情六欲丸，开始懂得了人类的感情，相继爱上了...', 0, 's1261153.jpg', NULL);
INSERT INTO `user_book`
VALUES (1978, 0, 0, '比海更深', '[日] 是枝裕和 / 赵仲明 ', '8.1', 4480, ' 北京联合出版公司 ', ' 2018-4 ', ' 42.00元',
        '★电影大师是枝裕和温情代表作，《比海更深》原著小说，《步履不停》姊妹篇，豆瓣评分8.6。★《比海更深》将视角对准废柴人生，抒写了一曲失败者之歌：你有没有，...', 0, 's27088048.jpg', NULL);
INSERT INTO `user_book`
VALUES (1979, 0, 0, '芒果街上的小屋', '[美国] 桑德拉·希斯内罗丝 / 潘帕 ', '7.8', 48368, ' 译林出版社 ', ' 2006-6 ', ' 24.50元',
        '《芒果街上的小屋》是一本优美纯净的小书，一本“诗小说”。它由几十个短篇组成，一个短篇讲述一个人、一件事、一个梦想、几朵云，几棵树、几种感觉，语言清澈如流水，...', 0, 's1794620.jpg', NULL);
INSERT INTO `user_book`
VALUES (1980, 0, 0, '审判', '[奥地利] 弗朗茨·卡夫卡 / 文泽尔 ', '9.1', 976, ' 天津人民出版社 ', ' 2019-4 ', ' 49.80元',
        '在约瑟夫·K.30岁生日的早上，他被闯入家中的两个陌生人逮捕了。但K.却不知道自己的罪名，也没有失去人身自由，只是需要定期接受审判。在这一年中，K.为了这场...', 0, 's33383582.jpg', NULL);
INSERT INTO `user_book`
VALUES (1981, 0, 0, '八十天环游地球', '(法)儒勒.凡尔纳 / 沙地 ', '8.3', 8758, ' 中国青年出版社 ', ' 1958-02 ', ' 9.70',
        '1872年斐利亚・福克先生在伦敦改良俱乐部和会友们打赌，要在八十天内环游地球一周。在当时的情况下，这确实是一件很难办到的事，因为旅客一定要把时间掌握得非常准...', 0, 's1275907.jpg', NULL);
INSERT INTO `user_book`
VALUES (1982, 0, 0, '人间失格', '[日]太宰治 / 高詹灿、袁斌 ', '8.3', 7468, ' 天津人民出版社 ', ' 2013-3 ', ' 29.90元',
        '日本“无赖派”文学大师太宰治最全代表作集结！津轻偶像极作一次性补完！录《人间失格》由台湾著名译师——高詹灿倾力译出！及知名日语文学译者——袁斌...', 0, 's24226728.jpg', NULL);
INSERT INTO `user_book`
VALUES (1983, 0, 0, '潮骚', '（日）三岛由纪夫 / 唐月梅 ', '8.2', 10385, ' 上海译文出版社 ', ' 2009-1 ', ' 15.00',
        '《潮骚》于1954年问世，中篇小说，曾获第一届新潮社文学奖。渔歌式的纯情故事。青年渔民新治在早春的一个傍晚，认识了刚从外地回来的有着健康美的姑娘初江，他们...', 0, 's3391246.jpg', NULL);
INSERT INTO `user_book`
VALUES (1984, 0, 0, '1Q84', '村上春樹 / 賴明珠 ', '8.1', 9948, ' 時報文化 ', ' 2009-11 ', ' NTD800元',
        '故事以雙線進行，並以村上較少用的第三人稱全知觀點來說故事。時間是1984年，少女青豆在健身俱樂部工作，但她另有一個神祕的身分，而熱愛寫作的補習班數學老師天吾...', 0, 's4047637.jpg', NULL);
INSERT INTO `user_book`
VALUES (1985, 0, 0, '藏海花', '南派三叔 ', '8.1', 14145, ' 北京联合出版公司 ', ' 2012-8 ', ' 32.80元',
        '吴邪五年的平静生活，因金万堂的突然造访而被打断。金万堂竟然知道从张家古楼里带出的月光石上的蝎子图案与幼年闷油瓶有关。为追寻线索，吴邪前往尼泊尔，又辗转到了西...', 0, 's11528339.jpg', NULL);
INSERT INTO `user_book`
VALUES (1986, 0, 0, '暗格里的秘密', '耳东兔子 ', '7.3', 1015, ' 百花洲文艺出版社 ', ' 2019-5 ', ' 59.80元',
        '每个人的心中，都有一个少年。阳光痞气，沉默寡言，惊艳岁月。一旦遇见，铭心镂骨。于丁羡而言，周斯越就是这样的存在。年少时，他们是我闹你笑的暧昧同桌；长...', 0, 's33423246.jpg', NULL);
INSERT INTO `user_book`
VALUES (1987, 0, 0, '午夜之子', '[英] 萨曼·鲁西迪 / 刘凯芳 ', '8.5', 2009, ' 北京燕山出版社 ', ' 2015-9 ', ' 56.00元',
        '很久很久以前，在古阿拉伯的萨桑王国，宰相的女儿山鲁佐德，每天夜里给国王山努亚讲故事，故事一个接着一个，一直讲了一千零一夜……在这“一千零一夜”的故事流传了差...', 0, 's26607924.jpg', NULL);
INSERT INTO `user_book`
VALUES (1988, 0, 0, 'Normal People', 'Sally Rooney ', '7.6', 585, ' Faber & Faber ', ' 2018-8-30 ', ' GBP 14.99',
        'ConnellandMariannegrowupinthesamesmalltowninruralIreland.Thesimi...', 0, 's30281637.jpg', NULL);
INSERT INTO `user_book`
VALUES (1989, 0, 0, '我们', '[俄] 叶甫盖尼·扎米亚京 / 陈超 ', '7.6', 1373, ' 上海译文出版社 ', ' 2017-1 ', ' 36',
        '叶甫盖尼•扎米亚京（YevgenyZamyatin，1884—1937），俄国小说家、剧作家和讽刺作家，反乌托邦小说的创始者。《我们》以笔记的形式，描绘...', 0, 's26879595.jpg', NULL);
INSERT INTO `user_book`
VALUES (1990, 0, 0, '怨女', '张爱玲 ', '8.4', 4771, ' 北京十月文艺出版社 ', ' 2012-6 ', ' 29.60元',
        '她生于贫穷之家，因世俗虚荣的压力，嫁给一个半残废的富家少爷，虽有锦衣玉食，精神上确实茫然无依。有目的的爱都不是真爱，女主角的愤懑与刻薄，被张爱玲描写的几近...', 0, 's10757942.jpg', NULL);
INSERT INTO `user_book`
VALUES (1991, 0, 0, '风之影', '[西] 卡洛斯·鲁依兹·萨丰 ', '8.1', 823, ' 上海文艺出版社 ', ' 2019-11 ', ' 68.00',
        '【内容简介】1945年，巴塞罗那，西班牙内战的阴影尚未散去。城中错综的街道小巷里，隐藏着一座巨大且神秘的藏书馆——遗忘书之墓。据说被世人遗忘的书籍，终将...', 0, 's33437472.jpg', NULL);
INSERT INTO `user_book`
VALUES (1992, 0, 0, '北京法源寺', '李敖 ', '8.4', 10045, ' 中国友谊出版社 ', ' 2004-08 ', ' 20.00元',
        '《北京法源寺》是作者作为政治犯被关押期间所写的几部小说之一。本书以大人物为主角，举凡重要的主题：生死、鬼神、僧俗、出入、仕隐、朝野、家国、君臣、忠奸、夷...', 0, 's1062991.jpg', NULL);
INSERT INTO `user_book`
VALUES (1993, 0, 0, '芙蓉镇', '古华 ', '8.1', 6898, ' 人民文学出版社 ', ' 2005-1 ', ' 13.00元',
        '《芙蓉镇》小说描写了1963—1979年间我国南方农村的社会风情，揭露了左倾思潮的危害，歌颂了十一届三中全会路线的胜利。当三年困难时期结束，农村经济开始复苏...', 0, 's1200843.jpg', NULL);
INSERT INTO `user_book`
VALUES (1994, 0, 0, '时间的针脚', '[西] 玛丽亚·杜埃尼亚斯 / 罗秀 ', '8.4', 8437, ' 南海出版公司 ', ' 2012-3 ', ' 39.50元',
        '诺贝尔文学奖获得者略萨倾情推荐：一部充满阴谋、爱情、神秘和柔情的神奇小说。---------------------------------------...', 0, 's10512236.jpg', NULL);
INSERT INTO `user_book`
VALUES (1995, 0, 0, '漫长的告别', '[美] 雷蒙德·钱德勒 / 宋佥 ', '8.3', 1720, ' 上海译文出版社 ', ' 2017-6 ', ' 46.00元',
        '本书曾获爱伦•坡最佳长篇小说奖（1954），亦是钱德勒代表作。作者的雄心抱负与自我揭示在主人公——高贵侦探马洛身上引发了极其强烈的共鸣。故事围绕洛杉矶上流社...', 0, 's26899541.jpg', NULL);
INSERT INTO `user_book`
VALUES (1996, 0, 0, '黄金时代', '王小波 ', '8.9', 38567, ' 陕西师范大学出版社 ', ' 2009-07-01 ', ' 23.00元',
        '这是以文革时期为背景的系列作品构成的长篇。发生“文化大革命”的二十世纪六七十年代，正是我们国家和民族的灾难年代。那时，知识分子群体无能为力而极“左”政治泛滥...', 0, 's1082406.jpg', NULL);
INSERT INTO `user_book`
VALUES (1997, 0, 0, '在黑暗中等', '[日] 乙一 / 田秀娟 ', '8.3', 1737, ' 南海出版公司 ', ' 2019-9 ', ' 49.50元',
        '★16岁轰动日本文坛的天才作家，乙一长篇小说代表作★在名为“世界”的这锅浓汤中，人这么多，我们还是孤单。但也许我们终将会遇到一个人，理解或接纳我们吧。★...', 0, 's33460032.jpg', NULL);
INSERT INTO `user_book`
VALUES (1998, 0, 0, '古董局中局 4', '马伯庸 ', '7.3', 10182, ' 北京联合出版公司 ', ' 2015-12 ', ' 42.00元',
        '揭开全部悬念！马伯庸《古董局中局》系列大结局！青花瓷起源于唐宋，在元明达到鼎盛，其质地绝美，令无数人倾心。然而随着时间的流逝，青花瓷渐渐湮灭于历史长河之中...', 0, 's26650970.jpg', NULL);
INSERT INTO `user_book`
VALUES (1999, 0, 0, '窄门', '[法] 安德烈·纪德、顾琪静 译者 / 顾琪静 ', '8.0', 2270, ' 天津人民出版社 ', ' 2018-10 ', ' 45.00',
        '“因为抱着与你重逢的期待，在我眼里最险峻的小道也总是最好的。”阿莉莎与杰罗姆是一对表兄弟，自小青梅竹马。阿莉莎喜爱读书，常常和杰罗姆在花园后面的长椅上诵读...', 0, 's30331835.jpg', NULL);
INSERT INTO `user_book`
VALUES (2000, 0, 0, '东宫', '匪我思存 ', '7.2', 2255, ' 江苏凤凰文艺出版社 ', ' 2017-11-15 ', ' 56.00元',
        '【传奇】Legend忘川之水，在于忘情，忘川的神水让他们忘记了三年，却没能忘记一辈子。一方是人心鬼蜮的东宫，她是困于危城的太子妃，东宫内外杀机四伏，...', 0, 's27188002.jpg', NULL);
INSERT INTO `user_book`
VALUES (2001, 0, 0, '我是猫', '[日]夏目漱石 / 曹曼 ', '7.8', 7592, ' 浙江文艺出版社 ', ' 2015-6 ', ' 39.80元',
        '《我是猫》是日本“国民大师”夏目漱石的代表成名作，对日本文学有着极深远的影响。《我是猫》的写作角度很新颖，从一只猫的视角来观察身边的人和事。这只猫生活在一...', 0, 's26410730.jpg', NULL);
INSERT INTO `user_book`
VALUES (2002, 0, 0, '被伤害与侮辱的人们', '[俄] 陀思妥耶夫斯基 / 娄自良 ', '9.2', 1225, ' 上海译文出版社 ', ' 2015-1 ', ' CNY 52.00',
        '陀思妥耶夫斯基，俄国十九世纪著名作家，《被伤害与侮辱的人们》是他的重要作品之一。小说描写了资产阶级冒险家瓦尔科夫斯基对“小人物”尤其是两个弱女子：管家女儿娜...', 0, 's25887930.jpg', NULL);
INSERT INTO `user_book`
VALUES (2003, 0, 0, '海伯利安', '(美)丹·西蒙斯 / 潘振华、官善明、李懿 ', '9.1', 5371, ' 吉林出版集团有限责任公司 ', ' 2014-11 ', ' 59.00元',
        '《海伯利安》于1989年首次出版，横扫全球所有重量级奖项——雨果奖、轨迹奖、西班牙科幻小说首奖、日本星云奖、日本雨果奖、法国宇宙奖，并入围亚瑟•克拉克奖、英...', 0, 's25941890.jpg', NULL);
INSERT INTO `user_book`
VALUES (2004, 0, 0, '虹の歯ブラシ 上木らいち発散', '早坂吝 ', '8.6', 2972, ' 講談社 ', ' 2015-2-5 ', ' JPY 929',
        '「史上最もHな探偵」再臨!「タイトル当て」を凌ぐ驚愕の企て!!「ミステリが読みたい!2015年版」(早川書房)新人賞受賞「2015本格ミステリ・ベ...', 0, 's26285818.jpg', NULL);
INSERT INTO `user_book`
VALUES (2005, 0, 0, '玉米', '毕飞宇 ', '7.9', 4012, ' 江苏文艺出版社 ', ' 2005-10 ', ' 17.80元',
        '在这本名为《玉米》的书中，我们看到的首先是“人”，令人难忘的人。姐姐玉米是宽阔的，她像鹰，她是王者，她属于白天，她的体内有浩浩荡荡的长风；而玉秀和玉秧属于夜...', 0, 's1039060.jpg', NULL);
INSERT INTO `user_book`
VALUES (2006, 0, 0, '梦幻花', '[日]东野圭吾 / 赵峻、皮琳 ', '6.6', 14833, ' 作家出版社 ', ' 2015-2 ', ' 36.00元',
        '一对恩爱夫妻在上班路上被砍杀，留下了嗷嗷待哺的幼女；一个正值青春年少的电子琴乐手跳楼自杀，留下此生未完成的梦想；一个独居的老人被人杀死在家里，家里被翻乱，却...', 0, 's26297985.jpg', NULL);
INSERT INTO `user_book`
VALUES (2007, 0, 0, '所有我们看不见的光', '[美] 安东尼·多尔 / 高环宇 ', '8.9', 3022, ' 中信出版集团 ', ' 2015-8 ', ' 42.00元',
        '法国少女玛丽洛尔生活在巴黎，幼年失明后，父亲保护她、训练她，鼓励她勇敢生活下去。1940年，德国入侵，她被迫离家，不久又与父亲骨肉分离，以瘦削的肩膀抵抗纳...', 0, 's26431326.jpg', NULL);
INSERT INTO `user_book`
VALUES (2008, 0, 0, '堂吉诃德', '塞万提斯、屠孟超 / 屠孟超 ', '8.0', 17585, ' 译林出版社 ', ' 2002-7-1 ', ' 35.00元',
        '《堂吉诃德》（1606-1615）是塞万提斯最杰出的作品。俄国批评家别林斯基说：“在欧洲所有一切文学作品中，把严肃和滑稽，悲剧性和喜剧性，生活中的琐屑和庸俗...', 0, 's1005918.jpg', NULL);
INSERT INTO `user_book`
VALUES (2009, 0, 0, '假如岁月足够长', '[日] 三浦紫苑 / 周慧 ', '8.3', 3884, ' 北京联合出版公司 ', ' 2017-3 ', ' 32.00元',
        '直木奖、日本书店大奖获得者三浦紫苑全新力作。获得幸福的秘密，便是与时间坦然相处。作者三浦紫苑是让宫崎骏赞叹不已的才女作家。作者赢得日本书店店员的一致好...', 0, 's26959623.jpg', NULL);
INSERT INTO `user_book`
VALUES (2010, 0, 0, '人类群星闪耀时', '[奥]斯蒂芬·茨威格 / 姜乙 ', '8.5', 2484, ' 上海文艺出版社 ', ' 2019-7 ', ' 49.00元',
        '当改变命运的时刻降临，犹豫就会败北！《悉达多》译者姜乙三年打磨，重磅推出的全新译作“传记之王”斯蒂芬·茨威格代表作品，德文直译无删节版十四篇历史特写，...', 0, 's34434342.jpg', NULL);
INSERT INTO `user_book`
VALUES (2011, 0, 0, '摆渡人3无境之爱', '克莱儿·麦克福尔 / 刘勇军 ', '6.3', 2033, ' 百花洲文艺出版社 ', ' 2019-4-1 ', ' 46.00',
        '千万畅销心灵治愈小说“摆渡人”系列完结篇令无数读者灵魂震颤的人性救赎之作内附精美插图&作者中英文签章如果命运是一条孤独的河流，谁会是你灵魂的摆渡人？...', 0, 's33392950.jpg', NULL);
INSERT INTO `user_book`
VALUES (2012, 0, 0, '新婚之夜', '辽京 ', '7.7', 755, ' 中信出版集团 ', ' 2019-11 ', ' 59.80元',
        '【编辑推荐】◆每个女人普通的情绪波动，都胜过一场战争！21岁—37岁，纠结和迷茫奇多。恋爱难题、人际压力、代际冲突、女性贫困、育儿烦恼、精神危机……突...', 0, 's34838232.jpg', NULL);
INSERT INTO `user_book`
VALUES (2013, 0, 0, '米德尔马契', '[英] 乔治·爱略特 / 项星耀 ', '9.4', 334, ' 人民文学出版社 ', ' 2018-9 ', ' 78.00元',
        '★BBC“最伟大的英国小说”榜首★《时代周刊》“史上最伟大的100部长篇小说”第8名---------------------------------...', 0, 's26986888.jpg', NULL);
INSERT INTO `user_book`
VALUES (2014, 0, 0, '有匪2', 'Priest ', '9.1', 4072, ' 湖南文艺出版社 ', ' 2017-3 ', ' 36.00元',
        '周翡没有等来段九娘，却一头撞上青龙主郑罗生。\"南北双刀\"传人、\"山川剑\"后人、芙蓉神掌……竟全在衡山脚下这一间小小的\"三春客栈\"凑齐了。\"山川剑\"亡故，...', 0, 's26989242.jpg',
        NULL);
INSERT INTO `user_book`
VALUES (2015, 0, 0, '亿万星辰不及你', '叶非夜 ', '6.8', 433, ' 江苏凤凰文艺出版社 ', ' 2017-12-1 ', ' 36.00元',
        '四年前错误的一晚，让季忆从此再也无法摆脱贺季晨的阴影，然而四年后的再遇，她又被迫逃向自己真正爱的人——贺季晨的哥哥贺余光，然而和“贺余光”结婚的季忆并不知道...', 0, 's30135336.jpg', NULL);
INSERT INTO `user_book`
VALUES (2016, 0, 0, '战时灯火', '[加拿大] 迈克尔·翁达杰 / 吴刚 ', '8.0', 1135, ' 上海文艺出版社 ', ' 2019-7-18 ', ' 69.90元',
        '◆如果还有什么人让你耿耿于怀，读《战时灯火》也许会让你释怀。◆《战时灯火》是诺贝尔奖得主石黑一雄熟读到可以背出来的书！◆布克奖50周年大奖“金布克奖”...', 0, 's33413098.jpg', NULL);
INSERT INTO `user_book`
VALUES (2017, 0, 0, '写在身体上', '[英]珍妮特·温特森 / 周嘉宁 ', '8.3', 158, ' 北京联合出版公司 ', ' 2020-4 ', ' 49',
        '★《橘子不是唯一的水果》作者珍妮特•温特森笔下的炙热情书★是什么杀死了爱情？只有这个：忽视。当你站在我面前的时候看不见你，不因细微的事情想到你，不为你清...', 0, 's34464665.jpg', NULL);
INSERT INTO `user_book`
VALUES (2018, 0, 0, '巨流河', '齐邦媛 ', '8.7', 25147, ' 生活·读书·新知三联书店 ', ' 2010-10 ', ' 39.00元',
        '巨流河，在清代被称为巨流河；哑口海位于台湾南端，是鹅銮鼻灯塔下的一泓湾流。这本书写的是一个并未远去的时代，关于两代人从巨流河到哑口海的故事。那立志将中国建设...', 0, 's4842446.jpg', NULL);
INSERT INTO `user_book`
VALUES (2019, 0, 0, '博尔赫斯小说集', '[阿根廷] 博尔赫斯 / 王永年、陈泉 ', '9.2', 8927, ' 浙江文艺出版社 ', ' 2005-12 ', ' 26.00元',
        '收录小说五十九篇，分别见诸博尔赫斯的六个小说集，即《恶棍列传》（1935）、《虚构集》（1944）、《阿莱夫》（1949）、《布罗迪报告》（1970）、《沙...', 0, 's1440972.jpg', NULL);
INSERT INTO `user_book`
VALUES (2020, 0, 0, '子夜', '茅盾 ', '7.2', 5501, ' 人民文学出版社 ', ' 2002-1 ', ' 19.80元',
        '本书是大学生必读丛书中的一册，书中以教育部全国高等学校中文学科教学指导委员会指定书目为依据，收录了著名作家茅盾先生的长篇小说《子夜》。本书具有很强的经典性...', 0, 's1050368.jpg', NULL);
INSERT INTO `user_book`
VALUES (2021, 0, 0, '台风天', '陆茵茵 ', '7.6', 2748, ' 四川人民出版社 ', ' 2018-3 ', ' 29.00元',
        '她的小说像一根刺刺穿了生活的表象第二十六届《联合文学》小说新人奖短篇小说推荐奖得主陆茵茵作品...................※编辑推荐※☆...', 0, 's27662422.jpg', NULL);
INSERT INTO `user_book`
VALUES (2022, 0, 0, '盲刺客', '[加拿大] 玛格丽特·阿特伍德 / 韩忠华 ', '8.6', 771, ' 上海译文出版社 ', ' 2016-7 ', ' 62.00元',
        '这是一部结构奇巧、故事里套故事的小说。小说有两个女主人公，一个是劳拉，小说一开始就在车祸中死去；另一个是她的姐姐艾丽丝，生活在死者的阴影中，回忆着快被湮没...', 0, 's26748179.jpg', NULL);
INSERT INTO `user_book`
VALUES (2023, 0, 0, 'S.', '[美] J.J.艾布拉姆斯、[美] 道格·道斯特 / 颜湘如 ', '7.7', 6538, ' 中信出版集团 ', ' 2016-6-6 ', ' 168.00 元',
        '文豪身份扑朔迷离她在图书馆拾获一本《忒修斯之船》，作者石察卡身份成谜，据译者柯岱拉描述，他尚未写完便人间蒸发，生死未卜，留给世人一宗悬案。有人用铅笔写下...', 0, 's26356515.jpg', NULL);
INSERT INTO `user_book`
VALUES (2024, 0, 0, '没有个性的人', '[奥地利] 罗伯特·穆齐尔 / 张荣昌 ', '9.0', 520, ' 上海译文出版社 ', ' 2015-4 ', ' 140.00',
        '也许我们有理由害怕：如果不把自己的个性塞进某个公共认可的口袋里，那我们的个性就会像粉末一样四散而开。——罗伯特•穆齐尔《没有个性的人》是穆齐尔未完成的遗...', 0, 's25970429.jpg', NULL);
INSERT INTO `user_book`
VALUES (2025, 0, 0, 'Call Me by Your Name', 'Andre Aciman ', '9.1', 3100, ' Macmillan USA ', ' 2017-10-3 ', ' GBP 8.00',
        'AndreAciman\'sCallMebyYourNameisthestoryofasuddenandpowerfulroma...', 0, 's27150656.jpg', NULL);
INSERT INTO `user_book` VALUES (2026, 0, 0, '简爱', '[英] 夏洛蒂·勃朗特 / 盛世教育西方名著翻译委员会 ', '8.8', 3648, ' 上海世界图书出版公司 ', ' 2008-5 ', ' 29.80元', '《简爱》(中英对照)是英国文学史上一部经典传世之作，它成功地塑造了英国文学史上第一个对爱情、生活、社会以及宗教都采取了独立自主的积极进取态度和敢于斗争、敢于...', 0, 's3164521.jpg', NULL);
INSERT INTO `user_book` VALUES (2027, 0, 0, '猴子·罗汉池', '袁哲生 ', '8.6', 2045, ' 四川人民出版社 ', ' 2018-11 ', ' 38.00元', '时间永恒地停了下来深邃的爱情流转出更多面貌我们却从不知道它有多美好被誉为撑起21世纪小说江山的两位作家之一袁哲生首次完整探索爱情的突破之作◎编辑...', 0, 's30296432.jpg', NULL);
INSERT INTO `user_book` VALUES (2028, 0, 0, '巴黎圣母院', '雨果 / 李玉民 ', '8.9', 3186, ' 上海文艺出版社 ', ' 2007-7-1 ', ' 25.00元', '《巴黎圣母院》也许为中世纪艺术开辟了真正的前景；而对中世纪这一辉煌艺术，至今有些人还不甚了了，更糟糕的是还有人不屑一顾。作者甘当此任，但是他认为这一任务远远...', 0, 's2253413.jpg', NULL);
INSERT INTO `user_book` VALUES (2029, 0, 0, '尘埃落定', '阿来 ', '8.6', 11110, ' 人民文学出版社 ', ' 2005-1 ', ' 21.00元', '一个声势显赫的康巴藏族土司，在酒后和汉族太太生了一个傻瓜儿子。这个人人都认定的傻子与现实生活格格不入，却有着超时代的予感和举止，成为土司制度兴衰的见证人。小...', 0, 's1200842.jpg', NULL);
INSERT INTO `user_book` VALUES (2030, 0, 0, '清明上河图密码4', '冶文彪 ', '8.8', 3453, ' 北京联合出版公司 ', ' 2017-6-1 ', ' 58.00', '全图824位人物，每个人都有名有姓，佯装、埋伏在舟船车轿、酒肆楼阁中。看似太平盛世，其实杀机四伏。翻开本书，在小贩的叫卖声中，金、辽、西夏、高丽等国的间谍、...', 0, 's27025036.jpg', NULL);
INSERT INTO `user_book` VALUES (2031, 0, 0, '龙族Ⅲ', '江南 ', '7.8', 12680, ' 长江出版社 ', ' 2013-1 ', ' 29.80元', '西伯利亚无名港，邦达列夫上校带来了前苏联解体的消息，他与赫尔佐格博士打成协议，将资助博士继续龙族基因方面的研究。临走前突发异变，邦达列夫枪击赫尔佐格，无名港...', 0, 's20472730.jpg', NULL);
INSERT INTO `user_book` VALUES (2032, 0, 0, '暗店街', '[法] 帕特里克·莫迪亚诺 / 王文融 ', '7.7', 5995, ' 上海文艺出版社 ', ' 2015-1-1 ', ' 25.00', '二战后的巴黎。一个得了健忘症的男人被好心的私家侦探于特收留，获得了新的身份：居依•罗朗。罗朗为于特当了八年助理侦探，在于特退休之际，决定揭开自己的经历与身世...', 0, 's26110579.jpg', NULL);
INSERT INTO `user_book` VALUES (2033, 0, 0, '浮世画家', '[英] 石黑一雄 / 马爱农 ', '7.7', 6048, ' 上海译文出版社 ', ' 2011-5-1 ', ' 28.00元', '《浮世画家》是作家石黑一雄的第二部长篇小说，获Whitbread奖并进入布克奖短名单。《浮世画家》同样以主人公的回忆为基调，以非凡的小说技巧生动地展现了主...', 0, 's6060455.jpg', NULL);
INSERT INTO `user_book` VALUES (2034, 0, 0, '三千鸦杀·典藏版', '十四郎 ', '6.8', 672, ' 浙江文艺出版社 ', ' 2016-10 ', ' 38.00元', '公子齐其人，生平得意有四件事。第一为乐律，能引出凤凰和歌，白鹤同舞；第三是作画，可以假乱真；第四是仙术，聊以自保而已。那第二却是风流多情。天下间再冷漠固...', 0, 's26901053.jpg', NULL);
INSERT INTO `user_book` VALUES (2035, 0, 0, '卡夫卡小说全集（全三册）', '[奥] 卡夫卡 / 韩瑞祥 [等] ', '9.0', 5864, ' 人民文学出版社 ', ' 2003-08 ', ' 60.00元', '《卡夫卡小说全集1—3》选自德国菲舍尔出版社1994年的校勘本《卡夫卡全集》，包括作者创作的（生前发表和未发表的）全部长篇、中篇和短篇小说。之所以选取这个负...', 0, 's1081422.jpg', NULL);
INSERT INTO `user_book` VALUES (2036, 0, 0, '迷宫中的将军', '[哥伦比亚] 加西亚·马尔克斯 / 王永年 ', '8.7', 3765, ' 南海出版公司 ', ' 2014-11 ', ' 39.50元', '《迷宫中的将军》成书于八十年代末。作者加西亚·马尔克斯与哥伦比亚、墨西哥以及委内瑞拉的历史学家们一起进行了两年的调查。本作品描写了南美解放者西蒙•玻利瓦尔生...', 0, 's25985126.jpg', NULL);
INSERT INTO `user_book` VALUES (2037, 0, 0, '撒野 一', '巫哲、長樂 ', '8.6', 4979, ' 葭霏文創 ', ' 2018-4 ', ' NTD 330', '蔣丞的心情就像這冬季行駛的火車一樣，冷冽卻通向未知的遠方。他被那個曾經的｢家」以及曾經的那些｢家人」拋棄了，他是一個被領養的孩子，並且此刻他被退養了，他需要...', 0, 's30181018.jpg', NULL);
INSERT INTO `user_book` VALUES (2038, 0, 0, '电幻国度', '[瑞典] 西蒙·斯塔伦海格 / 汪洋 ', '8.4', 1665, ' 浙江文艺出版社 ', ' 2018-10 ', ' 198', '直到战争结束后，人们才意识到，带来末日的并非战争。「SentreStimulusTLE」头盔，这台原本将要引领人类走向伊甸园的虚幻装置，于1996年更...', 0, 's30318719.jpg', NULL);
INSERT INTO `user_book` VALUES (2039, 0, 0, '镜之孤城', '[日] 辻村深月 / 李大鸣 ', '8.5', 93, ' 浙江文艺出版社 ', ' 2020-4 ', ' 56.00元', '2018年“日本书店大奖No.1直木奖作家辻村深月最催人泪下的作品“不登校”的问题学生和奇幻冒险的新奇组合，探讨青春期的成长困境、校园暴力------...', 0, 's34907839.jpg', NULL);
INSERT INTO `user_book` VALUES (2040, 0, 0, '白鹿原', '陈忠实 ', '9.0', 13536, ' 北京十月文艺出版社 ', ' 2011-9-1 ', ' 32.00元', '《白鹿原》是中国近六十年的巅峰之作，十五年经久不衰。本版本为权威未删节版！陈忠实的长篇小说《白鹿原》，以陕西关中平原上素有“仁义村”之称的白鹿村为背景，细...', 0, 's6861664.jpg', NULL);
INSERT INTO `user_book`
VALUES (2041, 0, 0, '好兆头', '[英]尼尔·盖曼、[英]特里·普拉切特 / 马骁 ', '8.3', 1488, ' 江苏凤凰文艺出版社 ', ' 2018-9 ', ' 59.90',
        '根据巫女艾格妮丝·风子的《精良准确预言书》，世界将在周六迎来终结。准确来说，应该是下周六，晚饭前那会儿。于是，各方势力纷纷加入混战，异象不断出现，世界陷入骚...', 0, 's30193601.jpg', NULL);
INSERT INTO `user_book`
VALUES (2042, 0, 0, '奇想·天动', '[日] 岛田庄司 / 林敏生 ', '8.3', 5387, ' 新星出版社 ', ' 2010-8 ', ' 28.00元',
        '北海道，暴风雪之夜，行驶于群山之中的列车。枪声划破了寂静。在车厢连接处的卫生间里，一个小丑打扮的人横尸于此，尸体四周摇曳着烛光。可是，三十秒过后，尸体竟然...', 0, 's4898712.jpg', NULL);
INSERT INTO `user_book`
VALUES (2043, 0, 0, '猫不存在',
        '阿科、万象峰年、苏莞雯、王腾、无形者、劳伦斯·M. 舍恩、柠檬黄、卢平、昼温、赵佳铭、郭亮、苏民、吴关、亚历克斯·施瓦茨曼、阿蕾克斯·德拉莫妮卡、沙陀王、康尽欢、弗雷德里克·布朗、梁清散、娜奥米·克雷泽、捕马的猫、慕明、[美] 厄休拉·勒古恩 / Mahat、何锐、耿辉、罗妍莉 ',
        '8.2', 69, ' 湖南文艺出版社 ', ' 2020-5 ', ' 49.80元',
        '科幻文化领域专业影响力品牌、亚太科幻大会主办方未来事务管理局重磅新作，致力打造中国科幻的黄金时代。从猫开始，全世界的科幻名家带你走出熟悉的日常，去往未知的...', 0, 's35045956.jpg', NULL);

-- ----------------------------
-- Table structure for user_book_collect
-- ----------------------------
DROP TABLE IF EXISTS `user_book_collect`;
CREATE TABLE `user_book_collect`
(
    `id`      int(11) NOT NULL AUTO_INCREMENT,
    `book_id` int(11) NOT NULL,
    `user_id` int(11) NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `user_book_collect_book_id_user_id_627a6a4e_uniq`(`book_id`, `user_id`) USING BTREE,
    INDEX     `user_book_collect_user_id_24850fb2_fk_user_user_id`(`user_id`) USING BTREE,
    CONSTRAINT `user_book_collect_book_id_1fec95bd_fk_user_book_id` FOREIGN KEY (`book_id`) REFERENCES `user_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT `user_book_collect_user_id_24850fb2_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_book_collect
-- ----------------------------
INSERT INTO `user_book_collect`
VALUES (18, 1, 179);
INSERT INTO `user_book_collect`
VALUES (44, 2, 689);
INSERT INTO `user_book_collect`
VALUES (35, 5, 679);
INSERT INTO `user_book_collect`
VALUES (37, 5, 680);
INSERT INTO `user_book_collect`
VALUES (41, 12, 179);
INSERT INTO `user_book_collect`
VALUES (17, 27, 179);
INSERT INTO `user_book_collect`
VALUES (27, 40, 179);
INSERT INTO `user_book_collect`
VALUES (36, 40, 679);
INSERT INTO `user_book_collect`
VALUES (30, 721, 179);
INSERT INTO `user_book_collect`
VALUES (39, 733, 179);
INSERT INTO `user_book_collect`
VALUES (43, 749, 688);
INSERT INTO `user_book_collect`
VALUES (26, 804, 179);
INSERT INTO `user_book_collect`
VALUES (12, 1018, 179);
INSERT INTO `user_book_collect`
VALUES (23, 1021, 179);
INSERT INTO `user_book_collect`
VALUES (33, 1056, 675);
INSERT INTO `user_book_collect`
VALUES (42, 1056, 688);

-- ----------------------------
-- Table structure for user_comment
-- ----------------------------
DROP TABLE IF EXISTS `user_comment`;
CREATE TABLE `user_comment`
(
    `id`          int(11) NOT NULL AUTO_INCREMENT,
    `content`     longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `create_time` datetime(6) NOT NULL,
    `good`        int(11) NOT NULL,
    `book_id`     int(11) NOT NULL,
    `user_id`     int(11) NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    INDEX         `user_comment_book_id_144631dd_fk_user_book_id`(`book_id`) USING BTREE,
    INDEX         `user_comment_user_id_d9d51f62_fk_user_user_id`(`user_id`) USING BTREE,
    CONSTRAINT `user_comment_book_id_144631dd_fk_user_book_id` FOREIGN KEY (`book_id`) REFERENCES `user_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT `user_comment_user_id_d9d51f62_fk_user_user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_comment
-- ----------------------------
INSERT INTO `user_comment`
VALUES (9, '我在这里呀', '2020-05-28 14:38:50.066001', 2, 1, 179);
INSERT INTO `user_comment`
VALUES (10, '经理反馈的撒就发来得及萨芬', '2020-06-09 08:34:59.211882', 2, 717, 179);
INSERT INTO `user_comment`
VALUES (11, 'fdafdaafd', '2020-06-09 08:47:15.645576', 1, 5, 179);
INSERT INTO `user_comment`
VALUES (12, 'hgghvhv', '2020-06-17 13:49:31.079717', 1, 804, 179);
INSERT INTO `user_comment`
VALUES (13, '哈哈哈哈哈哈哈哈哈哈哈', '2020-07-21 08:35:22.008254', 5, 721, 179);
INSERT INTO `user_comment`
VALUES (14, '想学习这个系统', '2020-08-10 08:33:57.153072', 1, 1056, 673);
INSERT INTO `user_comment`
VALUES (15, '很棒啊', '2020-08-21 08:32:27.053831', 0, 1051, 673);
INSERT INTO `user_comment`
VALUES (16, '解忧杂货店', '2020-08-21 08:32:52.111105', 0, 1054, 673);
INSERT INTO `user_comment`
VALUES (17, '超哥，能理我一下吗', '2020-08-21 08:33:11.033931', 0, 3, 673);
INSERT INTO `user_comment`
VALUES (18, '你看得见我吗\r\n', '2020-08-25 12:38:34.571750', 0, 476, 673);
INSERT INTO `user_comment`
VALUES (19, '我需要你', '2020-08-25 12:38:44.400809', 0, 476, 673);
INSERT INTO `user_comment`
VALUES (20, '大佬带带我', '2020-08-26 07:03:45.411935', 2, 5, 673);
INSERT INTO `user_comment`
VALUES (21, '大佬带带我\r\n', '2020-08-26 07:03:57.471080', 1, 1, 673);
INSERT INTO `user_comment`
VALUES (22, 'llllllll', '2020-09-28 01:31:00.817387', 1, 1056, 675);
INSERT INTO `user_comment`
VALUES (23, 'fdafdd', '2020-11-22 15:10:07.392506', 0, 1056, 684);
INSERT INTO `user_comment`
VALUES (24, '', '2020-11-22 15:19:11.154328', 0, 799, 685);

-- ----------------------------
-- Table structure for user_rate
-- ----------------------------
DROP TABLE IF EXISTS `user_rate`;
CREATE TABLE `user_rate`
(
    `id`      int(11) NOT NULL AUTO_INCREMENT,
    `mark`    int(11) NOT NULL,
    `book_id` int(11) NULL DEFAULT NULL,
    `user_id` int(11) NULL DEFAULT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    INDEX     `book_id_idx`(`user_id`) USING BTREE,
    INDEX     `book_id_idx1`(`book_id`) USING BTREE,
    CONSTRAINT `book_id` FOREIGN KEY (`book_id`) REFERENCES `user_book` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
    CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 975 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_rate
-- ----------------------------
INSERT INTO `user_rate`
VALUES (713, 9, 179, 8);
INSERT INTO `user_rate`
VALUES (715, 4, 165, 8);
INSERT INTO `user_rate`
VALUES (716, 10, 92, 5);
INSERT INTO `user_rate`
VALUES (717, 5, 145, 4);
INSERT INTO `user_rate`
VALUES (718, 2, 4, 2);
INSERT INTO `user_rate`
VALUES (719, 3, 76, 8);
INSERT INTO `user_rate`
VALUES (720, 1, 155, 1);
INSERT INTO `user_rate`
VALUES (721, 6, 36, 6);
INSERT INTO `user_rate`
VALUES (722, 4, 121, 1);
INSERT INTO `user_rate`
VALUES (723, 3, 36, 9);
INSERT INTO `user_rate`
VALUES (724, 6, 42, 1);
INSERT INTO `user_rate`
VALUES (725, 2, 74, 4);
INSERT INTO `user_rate`
VALUES (726, 7, 102, 9);
INSERT INTO `user_rate`
VALUES (727, 6, 146, 9);
INSERT INTO `user_rate`
VALUES (728, 3, 117, 8);
INSERT INTO `user_rate`
VALUES (729, 9, 56, 1);
INSERT INTO `user_rate`
VALUES (730, 2, 63, 3);
INSERT INTO `user_rate`
VALUES (731, 6, 42, 10);
INSERT INTO `user_rate`
VALUES (732, 5, 182, 2);
INSERT INTO `user_rate`
VALUES (733, 9, 6, 4);
INSERT INTO `user_rate`
VALUES (734, 0, 49, 8);
INSERT INTO `user_rate`
VALUES (735, 1, 112, 1);
INSERT INTO `user_rate`
VALUES (736, 7, 59, 2);
INSERT INTO `user_rate`
VALUES (737, 5, 49, 1);
INSERT INTO `user_rate`
VALUES (738, 4, 40, 5);
INSERT INTO `user_rate`
VALUES (739, 2, 180, 179);
INSERT INTO `user_rate`
VALUES (740, 8, 100, 8);
INSERT INTO `user_rate`
VALUES (741, 9, 192, 1);
INSERT INTO `user_rate`
VALUES (742, 4, 190, 6);
INSERT INTO `user_rate`
VALUES (743, 4, 180, 8);
INSERT INTO `user_rate`
VALUES (744, 1, 110, 4);
INSERT INTO `user_rate`
VALUES (745, 1, 42, 5);
INSERT INTO `user_rate`
VALUES (746, 1, 147, 4);
INSERT INTO `user_rate`
VALUES (747, 0, 109, 8);
INSERT INTO `user_rate`
VALUES (748, 6, 196, 4);
INSERT INTO `user_rate`
VALUES (749, 7, 40, 1);
INSERT INTO `user_rate`
VALUES (750, 1, 50, 7);
INSERT INTO `user_rate`
VALUES (752, 6, 99, 1);
INSERT INTO `user_rate`
VALUES (753, 5, 24, 4);
INSERT INTO `user_rate`
VALUES (754, 4, 137, 6);
INSERT INTO `user_rate`
VALUES (755, 1, 21, 10);
INSERT INTO `user_rate`
VALUES (756, 6, 90, 2);
INSERT INTO `user_rate`
VALUES (757, 0, 67, 3);
INSERT INTO `user_rate`
VALUES (758, 7, 3, 9);
INSERT INTO `user_rate`
VALUES (759, 6, 50, 10);
INSERT INTO `user_rate`
VALUES (760, 7, 168, 1);
INSERT INTO `user_rate`
VALUES (761, 4, 196, 1);
INSERT INTO `user_rate`
VALUES (762, 8, 112, 5);
INSERT INTO `user_rate`
VALUES (763, 5, 54, 4);
INSERT INTO `user_rate`
VALUES (764, 10, 38, 3);
INSERT INTO `user_rate`
VALUES (765, 6, 165, 10);
INSERT INTO `user_rate`
VALUES (766, 4, 116, 2);
INSERT INTO `user_rate`
VALUES (767, 9, 95, 10);
INSERT INTO `user_rate`
VALUES (768, 3, 129, 5);
INSERT INTO `user_rate`
VALUES (769, 10, 142, 7);
INSERT INTO `user_rate`
VALUES (770, 1, 115, 4);
INSERT INTO `user_rate`
VALUES (771, 3, 5, 7);
INSERT INTO `user_rate`
VALUES (772, 2, 154, 10);
INSERT INTO `user_rate`
VALUES (773, 6, 30, 8);
INSERT INTO `user_rate`
VALUES (774, 0, 93, 5);
INSERT INTO `user_rate`
VALUES (775, 1, 115, 4);
INSERT INTO `user_rate`
VALUES (776, 8, 101, 7);
INSERT INTO `user_rate`
VALUES (777, 6, 42, 2);
INSERT INTO `user_rate`
VALUES (778, 4, 18, 6);
INSERT INTO `user_rate`
VALUES (779, 2, 140, 3);
INSERT INTO `user_rate`
VALUES (780, 2, 83, 9);
INSERT INTO `user_rate`
VALUES (781, 7, 150, 4);
INSERT INTO `user_rate`
VALUES (782, 10, 32, 9);
INSERT INTO `user_rate`
VALUES (783, 9, 71, 10);
INSERT INTO `user_rate`
VALUES (784, 6, 80, 10);
INSERT INTO `user_rate`
VALUES (785, 2, 79, 5);
INSERT INTO `user_rate`
VALUES (786, 10, 175, 10);
INSERT INTO `user_rate`
VALUES (787, 2, 188, 3);
INSERT INTO `user_rate`
VALUES (788, 4, 87, 5);
INSERT INTO `user_rate`
VALUES (789, 0, 121, 2);
INSERT INTO `user_rate`
VALUES (790, 3, 53, 8);
INSERT INTO `user_rate`
VALUES (791, 2, 182, 8);
INSERT INTO `user_rate`
VALUES (792, 5, 166, 7);
INSERT INTO `user_rate`
VALUES (793, 10, 95, 5);
INSERT INTO `user_rate`
VALUES (794, 10, 108, 2);
INSERT INTO `user_rate`
VALUES (795, 6, 128, 7);
INSERT INTO `user_rate`
VALUES (796, 9, 68, 7);
INSERT INTO `user_rate`
VALUES (797, 6, 10, 6);
INSERT INTO `user_rate`
VALUES (798, 9, 69, 7);
INSERT INTO `user_rate`
VALUES (799, 3, 171, 3);
INSERT INTO `user_rate`
VALUES (800, 1, 151, 3);
INSERT INTO `user_rate`
VALUES (801, 5, 58, 2);
INSERT INTO `user_rate`
VALUES (802, 1, 104, 1);
INSERT INTO `user_rate`
VALUES (803, 3, 48, 3);
INSERT INTO `user_rate`
VALUES (804, 5, 114, 6);
INSERT INTO `user_rate`
VALUES (805, 2, 63, 7);
INSERT INTO `user_rate`
VALUES (806, 3, 16, 1);
INSERT INTO `user_rate`
VALUES (807, 5, 188, 179);
INSERT INTO `user_rate`
VALUES (808, 3, 17, 7);
INSERT INTO `user_rate`
VALUES (809, 10, 96, 6);
INSERT INTO `user_rate`
VALUES (810, 2, 154, 10);
INSERT INTO `user_rate`
VALUES (811, 8, 92, 9);
INSERT INTO `user_rate`
VALUES (812, 5, 47, 8);
INSERT INTO `user_rate`
VALUES (813, 2, 119, 179);
INSERT INTO `user_rate`
VALUES (814, 0, 12, 179);
INSERT INTO `user_rate`
VALUES (815, 7, 106, 179);
INSERT INTO `user_rate`
VALUES (816, 0, 91, 179);
INSERT INTO `user_rate`
VALUES (817, 10, 107, 1);
INSERT INTO `user_rate`
VALUES (819, 0, 189, 179);
INSERT INTO `user_rate`
VALUES (820, 5, 24, 179);
INSERT INTO `user_rate`
VALUES (821, 2, 157, 179);
INSERT INTO `user_rate`
VALUES (822, 1, 7, 179);
INSERT INTO `user_rate`
VALUES (823, 8, 64, 179);
INSERT INTO `user_rate`
VALUES (824, 1, 156, 179);
INSERT INTO `user_rate`
VALUES (825, 4, 107, 179);
INSERT INTO `user_rate`
VALUES (826, 9, 187, 179);
INSERT INTO `user_rate`
VALUES (827, 4, 117, 179);
INSERT INTO `user_rate`
VALUES (828, 5, 196, 179);
INSERT INTO `user_rate`
VALUES (829, 2, 174, 179);
INSERT INTO `user_rate`
VALUES (830, 10, 194, 179);
INSERT INTO `user_rate`
VALUES (831, 2, 186, 179);
INSERT INTO `user_rate`
VALUES (833, 5, 185, 179);
INSERT INTO `user_rate`
VALUES (834, 5, 1, 179);
INSERT INTO `user_rate`
VALUES (835, 4, 69, 9);
INSERT INTO `user_rate`
VALUES (836, 3, 38, 6);
INSERT INTO `user_rate`
VALUES (837, 3, 35, 4);
INSERT INTO `user_rate`
VALUES (838, 7, 67, 3);
INSERT INTO `user_rate`
VALUES (839, 0, 60, 8);
INSERT INTO `user_rate`
VALUES (840, 8, 171, 3);
INSERT INTO `user_rate`
VALUES (841, 6, 39, 9);
INSERT INTO `user_rate`
VALUES (842, 10, 5, 4);
INSERT INTO `user_rate`
VALUES (843, 8, 111, 1);
INSERT INTO `user_rate`
VALUES (844, 0, 116, 6);
INSERT INTO `user_rate`
VALUES (845, 4, 158, 10);
INSERT INTO `user_rate`
VALUES (846, 7, 187, 3);
INSERT INTO `user_rate`
VALUES (847, 7, 30, 3);
INSERT INTO `user_rate`
VALUES (848, 6, 198, 1);
INSERT INTO `user_rate`
VALUES (849, 4, 166, 4);
INSERT INTO `user_rate`
VALUES (850, 6, 44, 10);
INSERT INTO `user_rate`
VALUES (851, 3, 78, 2);
INSERT INTO `user_rate`
VALUES (852, 2, 59, 10);
INSERT INTO `user_rate`
VALUES (853, 8, 15, 6);
INSERT INTO `user_rate`
VALUES (854, 3, 132, 1);
INSERT INTO `user_rate`
VALUES (855, 7, 79, 5);
INSERT INTO `user_rate`
VALUES (856, 7, 134, 1);
INSERT INTO `user_rate`
VALUES (857, 5, 122, 4);
INSERT INTO `user_rate`
VALUES (858, 5, 53, 2);
INSERT INTO `user_rate`
VALUES (859, 1, 136, 6);
INSERT INTO `user_rate`
VALUES (860, 8, 27, 1);
INSERT INTO `user_rate`
VALUES (861, 10, 165, 10);
INSERT INTO `user_rate`
VALUES (862, 4, 129, 6);
INSERT INTO `user_rate`
VALUES (863, 6, 138, 10);
INSERT INTO `user_rate`
VALUES (864, 5, 139, 3);
INSERT INTO `user_rate`
VALUES (865, 8, 169, 3);
INSERT INTO `user_rate`
VALUES (866, 3, 89, 5);
INSERT INTO `user_rate`
VALUES (867, 9, 96, 10);
INSERT INTO `user_rate`
VALUES (868, 3, 25, 5);
INSERT INTO `user_rate`
VALUES (869, 3, 82, 9);
INSERT INTO `user_rate`
VALUES (870, 9, 87, 7);
INSERT INTO `user_rate`
VALUES (871, 9, 55, 4);
INSERT INTO `user_rate`
VALUES (872, 8, 45, 5);
INSERT INTO `user_rate`
VALUES (873, 10, 163, 10);
INSERT INTO `user_rate`
VALUES (874, 0, 199, 1);
INSERT INTO `user_rate`
VALUES (875, 7, 2, 5);
INSERT INTO `user_rate`
VALUES (876, 4, 149, 9);
INSERT INTO `user_rate`
VALUES (877, 10, 20, 9);
INSERT INTO `user_rate`
VALUES (878, 5, 103, 2);
INSERT INTO `user_rate`
VALUES (879, 1, 19, 2);
INSERT INTO `user_rate`
VALUES (880, 0, 11, 3);
INSERT INTO `user_rate`
VALUES (881, 8, 40, 1);
INSERT INTO `user_rate`
VALUES (882, 5, 151, 7);
INSERT INTO `user_rate`
VALUES (883, 6, 52, 4);
INSERT INTO `user_rate`
VALUES (884, 6, 128, 10);
INSERT INTO `user_rate`
VALUES (885, 4, 136, 7);
INSERT INTO `user_rate`
VALUES (886, 0, 95, 8);
INSERT INTO `user_rate`
VALUES (887, 2, 185, 2);
INSERT INTO `user_rate`
VALUES (888, 6, 88, 4);
INSERT INTO `user_rate`
VALUES (889, 8, 58, 1);
INSERT INTO `user_rate`
VALUES (890, 2, 129, 1);
INSERT INTO `user_rate`
VALUES (891, 5, 92, 6);
INSERT INTO `user_rate`
VALUES (892, 8, 24, 7);
INSERT INTO `user_rate`
VALUES (893, 5, 166, 9);
INSERT INTO `user_rate`
VALUES (894, 9, 10, 6);
INSERT INTO `user_rate`
VALUES (895, 7, 97, 9);
INSERT INTO `user_rate`
VALUES (896, 0, 19, 8);
INSERT INTO `user_rate`
VALUES (897, 1, 12, 8);
INSERT INTO `user_rate`
VALUES (898, 8, 150, 3);
INSERT INTO `user_rate`
VALUES (899, 3, 159, 6);
INSERT INTO `user_rate`
VALUES (900, 8, 160, 2);
INSERT INTO `user_rate`
VALUES (901, 4, 110, 9);
INSERT INTO `user_rate`
VALUES (902, 0, 139, 2);
INSERT INTO `user_rate`
VALUES (903, 0, 129, 1);
INSERT INTO `user_rate`
VALUES (904, 10, 77, 5);
INSERT INTO `user_rate`
VALUES (905, 7, 129, 3);
INSERT INTO `user_rate`
VALUES (906, 7, 178, 6);
INSERT INTO `user_rate`
VALUES (907, 6, 23, 9);
INSERT INTO `user_rate`
VALUES (908, 3, 154, 3);
INSERT INTO `user_rate`
VALUES (909, 10, 154, 6);
INSERT INTO `user_rate`
VALUES (910, 9, 79, 3);
INSERT INTO `user_rate`
VALUES (911, 4, 84, 10);
INSERT INTO `user_rate`
VALUES (912, 4, 126, 1);
INSERT INTO `user_rate`
VALUES (913, 2, 184, 6);
INSERT INTO `user_rate`
VALUES (914, 5, 68, 4);
INSERT INTO `user_rate`
VALUES (915, 3, 75, 8);
INSERT INTO `user_rate`
VALUES (916, 1, 68, 8);
INSERT INTO `user_rate`
VALUES (917, 0, 2, 6);
INSERT INTO `user_rate`
VALUES (918, 2, 53, 2);
INSERT INTO `user_rate`
VALUES (919, 3, 73, 8);
INSERT INTO `user_rate`
VALUES (920, 5, 128, 8);
INSERT INTO `user_rate`
VALUES (921, 2, 127, 4);
INSERT INTO `user_rate`
VALUES (922, 2, 85, 6);
INSERT INTO `user_rate`
VALUES (923, 8, 80, 7);
INSERT INTO `user_rate`
VALUES (924, 8, 54, 7);
INSERT INTO `user_rate`
VALUES (925, 0, 70, 1);
INSERT INTO `user_rate`
VALUES (926, 1, 69, 1);
INSERT INTO `user_rate`
VALUES (927, 8, 183, 9);
INSERT INTO `user_rate`
VALUES (928, 3, 54, 3);
INSERT INTO `user_rate`
VALUES (929, 10, 166, 4);
INSERT INTO `user_rate`
VALUES (930, 1, 40, 6);
INSERT INTO `user_rate`
VALUES (931, 1, 35, 1);
INSERT INTO `user_rate`
VALUES (932, 1, 140, 5);
INSERT INTO `user_rate`
VALUES (933, 2, 179, 3);
INSERT INTO `user_rate`
VALUES (934, 0, 145, 2);
INSERT INTO `user_rate`
VALUES (935, 10, 4, 179);
INSERT INTO `user_rate`
VALUES (936, 9, 19, 179);
INSERT INTO `user_rate`
VALUES (937, 7, 2, 179);
INSERT INTO `user_rate`
VALUES (938, 9, 35, 179);
INSERT INTO `user_rate`
VALUES (939, 10, 3, 179);
INSERT INTO `user_rate`
VALUES (940, 10, 11, 179);
INSERT INTO `user_rate`
VALUES (941, 10, 18, 179);
INSERT INTO `user_rate`
VALUES (942, 10, 9, 179);
INSERT INTO `user_rate`
VALUES (943, 7, 851, 179);
INSERT INTO `user_rate`
VALUES (944, 6, 957, 179);
INSERT INTO `user_rate`
VALUES (945, 9, 55, 179);
INSERT INTO `user_rate`
VALUES (946, 9, 42, 179);
INSERT INTO `user_rate`
VALUES (947, 9, 723, 179);
INSERT INTO `user_rate`
VALUES (948, 8, 1018, 179);
INSERT INTO `user_rate`
VALUES (949, 8, 766, 179);
INSERT INTO `user_rate`
VALUES (951, 4, 772, 179);
INSERT INTO `user_rate`
VALUES (952, 4, 1021, 179);
INSERT INTO `user_rate`
VALUES (953, 10, 717, 179);
INSERT INTO `user_rate`
VALUES (954, 9, 5, 179);
INSERT INTO `user_rate`
VALUES (955, 6, 804, 179);
INSERT INTO `user_rate`
VALUES (956, 8, 15, 179);
INSERT INTO `user_rate`
VALUES (957, 0, 40, 179);
INSERT INTO `user_rate`
VALUES (958, 3, 721, 179);
INSERT INTO `user_rate`
VALUES (959, 7, 718, 179);
INSERT INTO `user_rate`
VALUES (960, 6, 27, 179);
INSERT INTO `user_rate`
VALUES (961, 10, 3, 673);
INSERT INTO `user_rate`
VALUES (962, 10, 1056, 675);
INSERT INTO `user_rate`
VALUES (963, 0, 1961, 675);
INSERT INTO `user_rate`
VALUES (964, 0, 1102, 676);
INSERT INTO `user_rate`
VALUES (965, 0, 5, 680);
INSERT INTO `user_rate`
VALUES (967, 10, 733, 179);
INSERT INTO `user_rate`
VALUES (968, 6, 1056, 684);
INSERT INTO `user_rate`
VALUES (969, 8, 1102, 685);
INSERT INTO `user_rate`
VALUES (970, 9, 799, 685);
INSERT INTO `user_rate`
VALUES (971, 9, 1056, 688);
INSERT INTO `user_rate`
VALUES (972, 7, 749, 688);
INSERT INTO `user_rate`
VALUES (973, 6, 2, 689);
INSERT INTO `user_rate`
VALUES (974, 7, 735, 689);

-- ----------------------------
-- Table structure for user_tags
-- ----------------------------
DROP TABLE IF EXISTS `user_tags`;
CREATE TABLE `user_tags`
(
    `id`   int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_tags
-- ----------------------------
INSERT INTO `user_tags`
VALUES (1, '历史');

-- ----------------------------
-- Table structure for user_user
-- ----------------------------
DROP TABLE IF EXISTS `user_user`;
CREATE TABLE `user_user`
(
    `id`       int(11) NOT NULL AUTO_INCREMENT,
    `username` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL,
    `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `phone`    varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL,
    `name`     varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL,
    `address`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL,
    `email`    varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    PRIMARY KEY (`id`) USING BTREE,
    UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 690 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_user
-- ----------------------------
INSERT INTO `user_user`
VALUES (1, '一页书', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (2, '李规焉', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (3, '欢乐分裂', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (4, '蹦床', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (5, '蛋疼乳酸君', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (6, '馒酱', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (7, '风语者阿德', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (8, '洛神', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (9, '李伯伯', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (10, '肉卷卷又称肉卷', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (11, '伯爵在城堡', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (12, '[已注销]', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (13, 'A君', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (14, '牧', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (16, 'sghdteiwuvncm', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (17, '浠墨', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (18, '开膛手贝塔', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (19, '彼方有荣光', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (20, 'being', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (21, '小可爱不可爱', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (22, 'ming', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (24, '于喜喜', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (25, '就', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (26, '省油的阿拉神灯', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (27, '蘿苼菛', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (28, '紧握刀锋', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (29, '青山戚戚蛙', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (30, '潜龙勿用', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (31, '回春堂朱二', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (32, 'LostAbaddon', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (33, '庐陵', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (34, '李叁', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (35, 'Terry Chen', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (36, '已注销', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (37, 'ingfree', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (38, '刺客K', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (39, '白云深处有吾乡', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (40, '伊莎贝尔·慕卿', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (41, '陈小瑶', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (42, '奋斗小青年', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (43, 'tatajoker', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (44, '听临', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (45, 'sunlight', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (46, 'Kimitc', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (47, 'Jyn Erso', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (48, '七紫三羊不应', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (49, '热干面大喵。', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (50, '玛格丽特*年', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (52, 'Χάος', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (53, '弥次郎', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (54, '多多', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (55, 'ZeRo', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (56, '专程路过', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (58, '幻水梦天', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (59, '排骨', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (60, '极光隐™', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (61, '林谷', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (62, '一起吃地瓜', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (63, '降落吧', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (64, '这个手刹不太灵', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (65, '哲', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (66, '削顶额的毛', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (67, '• ﹏ •', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (68, '潘晓婷', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (69, 'Manita', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (70, '周十万', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (71, '月光下私语', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (72, '馬鹿燒韭Alice', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (73, '茉莉的茉。', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (75, 'Asherah', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (76, '下落待查', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (77, '淡个个好运来~', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (78, '何欢。', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (79, '姜纪存', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (80, '陈小闷', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (81, '瓦伦廷', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (82, '三四', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (83, '狼爵~二了吧唧', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (84, 'pan pan', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (85, '看不见我', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (86, '掐出新鲜', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (87, '贾里', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (89, '凝淇', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (90, '少年戈多', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (91, '琼恩·雪诺', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (92, '子不語', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (94, 'boks', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (95, '.', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (96, 'Guasong', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (97, '全幼儿园最萌', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (98, '姜小白', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (99, '晓木曰兮历史系', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (100, '潇崽', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (101, 'polymercat', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (102, 'duguyixiaono1', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (103, '私~川流', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (104, '君流儿', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (105, '断水流大师兄', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (106, '安东', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (107, 'Siegismund', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (108, 'Nise', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (109, '中年师傅', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (110, '♡  FreyaM', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (111, '晓林子悦', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (112, 'MONSTER', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (113, '..Rita', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (114, '金马乐', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (115, 'zeus', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (116, 'WALL•E', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (117, '商夏', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (118, '冷毅', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (119, 'Daneestone', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (120, '陶者无缰', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (121, '半辈子', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (122, '影子的影子', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (123, '草黛春秋', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (124, '土佐脱藩浪人', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (125, '西峰秀色', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (126, '朱老板', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (127, '1997xhp', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (128, '桃桃红柚', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (129, '干杯', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (130, '遇见神的吧啦', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (131, '塞纳', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (132, '登高望远', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (133, '虫虫', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (134, '睡莲', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (136, 'Pure Land', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (138, '逃跑大拿普鲁托', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (139, '十七君Tanya', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (140, '石头醒工砖', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (141, '于广耗子', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (142, 'dada的蜜糖', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (143, '尼米兹的小企业', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (144, '微微阑珊', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (145, '赤练的老公', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (146, '惜知猫', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (147, 'Aliceisalice', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (148, '幽州节度使', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (149, '后千禧年华倒影', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (150, '一茶', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (151, '高等数学', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (152, '阅微草堂', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (153, 'sub rosa', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (154, '伟大的大伟', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (155, '凌家公子', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (156, 'Sunny', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (157, '橘子不是唯一的', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (158, 'Solon', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (159, 'Cornlee', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (160, '一只黑眼睛看着大千世界', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (161, '姚墨芳', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (162, 'SaintCyr', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (163, '天猛公胡安', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (164, 'Amberose', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (166, '皆可以', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (167, '。琳小战士', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (168, '狐狸小白', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (169, '吃咸梅干變超人', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (170, '竹淡刻骨', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (171, '德川咪咪', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (172, '小岩井', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (173, '喆。', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (174, 'XA™', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (175, 'martonyong', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (176, '汪杨', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (177, 'Stark实习生', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (178, '不要嘛！！！', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (179, 'zpc', 'zpc123', '15551', 'zpc', 'dfdf', '13@qq.com');
INSERT INTO `user_user`
VALUES (200, '桑田巫', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (201, 'Mura', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (202, 'lovedanss', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (203, '七七', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (204, 'Nero', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (205, 'metamorphosis', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (206, '让我的爱情没有黑夜', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (207, '太空猫', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (208, '七点十五分', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (209, 'Ithaka', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (210, '喂鹿小姐', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (211, '大蟲', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (213, 'dukezy8', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (215, '萧木爻', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (216, '皇大人', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (217, '偶尔的诗人', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (218, 'Blues', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (234, '墨迹书房', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (235, 'Valot', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (236, '乐未央', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (237, 'Juno pro', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (238, 'qunyu', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (239, 'LiMeng', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (240, '远東新君', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (242, '是我', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (243, '润城', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (244, 'pipasway', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (245, '西西弗斯', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (246, '﹥油条', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (247, 'ドロシー', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (248, '懒洋洋的谢玩玩', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (249, 'sardine', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (250, '禾岸', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (251, '小永', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (252, 'elapse', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (254, 'bye bye baby', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (255, '暖暖的蜜橘茶', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (256, '木杉涵', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (257, '大肠杆君', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (258, '长安长安~~', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (259, '叁拾壹', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (260, '印心石人', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (261, 'namik_ercan', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (262, '葵花朵朵向阳开', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (279, 'Lionheart', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (280, '赤子之心', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (282, 'Lithium', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (283, '天涯の明月', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (284, '栗砂', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (285, '狐狸', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (286, '猫咪不怕黑', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (287, '巧克力曲奇', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (289, '爱谁谁', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (290, '夜航', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (291, '处逆', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (292, 'HH', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (293, '平凡的老鱼', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (294, '爱鸳鸯的长颈鹿', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (295, '[real]袋鼠', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (296, '雨女', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (298, 'ღ梦游™', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (299, 'tianwei', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (300, '素鸭', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (301, '资寒', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (302, '我 执', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (304, '立渊', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (306, '宁微君', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (307, 'forever', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (308, '望山', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (310, 'madongfly', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (311, 'アホ', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (312, '妖夜', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (313, '苏打喵', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (314, 'jimmy198360', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (315, '张眼', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (316, '会按摩的铲屎官', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (317, '帆', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (318, '阿多尼斯', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (319, '空星', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (322, '一隅', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (323, '晴天', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (324, 'L', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (326, '勺子', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (327, '汐羽', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (328, 'eco', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (329, '软泥', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (330, '塞林格的考拉', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (331, 'Beckycn', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (332, 'ss', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (333, 'o猫ops', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (334, '它音', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (335, '!nspiration', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (336, '苏慕无色', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (337, 'QQ虾', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (338, '莫怀远', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (339, '罗兰', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (340, '蜾蠃螟蛉', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (341, 'Daniel Hu', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (342, '南湖水怪', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (343, '西风凋碧树', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (344, 'Meteora', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (345, '神马蚁', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (346, 'Jessie', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (347, 'Potegato', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (348, '缓缓打出一个？', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (349, 'king', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (350, '守日人', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (351, 'XXX', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (352, '野人松木', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (353, 'BNO', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (354, '发条猫', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (356, 'timger', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (357, '明月桃花凤公子', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (358, '小军师', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (359, '萝卜不开花', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (360, 'circlewind', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (361, 'Wizard', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (362, '发光的深海鱼', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (363, '没有名字最安全', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (364, '晨晨的五月天空', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (365, '兽子', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (366, 'Cloudlicious', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (367, '谢之艾', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (368, '船山遗风', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (369, '月影', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (371, 'Lena', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (372, '迟到千年', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (373, '花开的声音', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (374, '夏天过去了', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (375, 'Blue', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (376, '酱酱酱酱酱油嘿', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (377, 'cindy', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (378, 'xiphifox', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (379, '少年维特啊', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (380, '斋少瑕', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (381, 'Von.Y.Erick', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (382, 'koogle', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (384, 'ghostray', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (385, 'tallisa', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (386, '那个Wednesday', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (387, 'lemon', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (388, 'fu4444', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (389, '大猫', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (390, '又在豆瓣杀时间', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (391, '梦', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (392, '乞力马扎罗的雪', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (393, '妍娘', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (395, 'Salt  Air', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (396, '新鲜的笨鱼', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (397, '欣欣向荣', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (398, '恒’', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (399, '缪斯十三少', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (400, '墨', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (401, 'Glandeur', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (402, '喜欢读书的小熊', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (403, 'waffler22', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (404, 'Méduse', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (405, '云五', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (406, 'dullgreen', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (407, '花基里连科', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (408, 'morn癫癫', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (409, '以墨轩', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (410, '种桃树的Cony', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (411, 'dorath', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (412, '希魂', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (414, '武陵一生', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (415, 'sophie', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (416, 'hyacinth', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (419, '飞天PP猪', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (420, '叔山無趾', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (423, '盆盆碗碗鱼♫', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (427, '流空破刃', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (430, '去动物园看犀牛', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (432, '滑铁卢黄昏', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (433, 'Ji_小红', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (434, '金毛水怪', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (435, 'zhtfan', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (436, '普六茹守黑', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (443, '听你乐苦多', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (449, '八爷', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (455, '平成少女牛肉丸', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (456, '瑷小麟', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (468, '闲来撸猫不回家', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (469, '镜花水月', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (477, '文郁', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (489, '猴丽莎白', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (491, '村长', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (493, 'TK', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (515, 'voidwalker', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (516, 'Hutzenberge', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (517, '咪•紫黎', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (518, '不文', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (519, '一味禪師', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (520, '歌米妮', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (522, 'Yuer', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (523, '黑米飯糰™', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (524, 'Q', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (525, '73MB.', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (526, 'yijiayi', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (527, '玲儿响铛铛', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (528, '大毛光光头', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (529, 'kumor', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (530, '第1001名挑战者', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (531, '郭二', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (532, '己巳', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (533, '卷卷儿卷', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (534, 'T', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (535, '淡淡如风', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (536, '庄亦谐', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (537, '米虫慧々要减脂', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (538, '啤酒泡泡', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (539, '轮子到底滚不滚', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (540, '静·生活每天都充满阳光', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (541, '汉密尔顿藏身处', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (542, 'hanyuxinting', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (543, '和风煦日', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (545, 'Wen', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (546, '≡  棉棉,', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (547, '云里见', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (548, '小千', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (549, '明月几何', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (550, '百无聊赖的神蛙', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (551, '语', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (553, 'Koto', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (554, '荷衣', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (555, '老八是江湖骗子', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (557, '荞熠', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (558, 'annie1985', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (559, '黎黎小叶子', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (560, '肥', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (561, 'Susielovely', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (562, '肥雀', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (563, '泛舟夜闻', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (564, '福内斯', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (565, '包子', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (566, '多比VS闪闪', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (567, '沉澱', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (568, '市二宫弯男', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (569, 'L.L', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (570, '孙大剩', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (571, '天马逍遥', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (572, '南小闽', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (573, '去来无有', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (574, 'LuckyMomo', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (580, 'Hiraeth', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (581, '迟二', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (583, 'XB', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (584, '顾虑', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (585, 'Eraechoin', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (586, 'Kevser', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (587, '小文盲', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (588, '超级小宇宙', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (589, '芳芳郁金香', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (590, '么么小狐狸', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (591, '徐向前', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (592, '喵喵', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (593, '言葉', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (594, '涤恒', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (609, '双棹入江泛金风', 'admin11', '123454', 'wujj', 'fdafd', '134@qq.com');
INSERT INTO `user_user`
VALUES (673, 'RedSwitcher', '123456', '18715806780', '李洪强', '四川成都', '2567703198@qq.com');
INSERT INTO `user_user`
VALUES (674, '夏天', '1234567890', '17695928690', '夏天', '安徽省', '2425174316@qq.com');
INSERT INTO `user_user`
VALUES (675, '15879750100', '123456', '15879750100', '吴迎', '11', '384920122@qq.com');
INSERT INTO `user_user`
VALUES (676, 'cjf', '976391', '16622521359', 'cjf', 'hb', '2024276153@qq.com');
INSERT INTO `user_user`
VALUES (677, 'tanfeng', '123123', '13871205981', '谭枫', '2222', '195505183@qq.com');
INSERT INTO `user_user`
VALUES (678, '123', 'wan13920587173', '12345678900', '123', 'efsd', '2550989038@qq.com');
INSERT INTO `user_user`
VALUES (679, '1', '123456', '1', '1', '1', '2550989038@qq.com');
INSERT INTO `user_user`
VALUES (680, 'wan', '123456', '13920587171', 'wan', '123456', '2550989038@qq.com');
INSERT INTO `user_user`
VALUES (681, 'zpc11', '123456', '15516504011', 'zpc11', 'zpd', 'zpcw11yy@gmail.com');
INSERT INTO `user_user`
VALUES (684, 'zpc1', '9f325a7bd48ac08c58f2584f1e1d2cbfdb50f8187f2d032a34ade1df42d60ca5', '1', '1', '1', 'zpc@qq.com');
INSERT INTO `user_user`
VALUES (685, 'zpc111', '9f325a7bd48ac08c58f2584f1e1d2cbfdb50f8187f2d032a34ade1df42d60ca5', '', '', '',
        'zpc11wyy@gmail.com');
INSERT INTO `user_user`
VALUES (686, 'admin111', '123', '12', 'admin111', 'erer', 'zpcwyy@gmail.com');
INSERT INTO `user_user`
VALUES (687, 'admin', '123', '', 'admin', '', 'z11pcwyy@gmail.com');
INSERT INTO `user_user`
VALUES (688, 'zpc123', '123', '', 'zpc123', '', '131@qq.com');
INSERT INTO `user_user`
VALUES (689, 'zpcqwe', '123', '', 'zpcqwe', '', 'zpcwyy123@gmail.com');

SET
FOREIGN_KEY_CHECKS = 1;
