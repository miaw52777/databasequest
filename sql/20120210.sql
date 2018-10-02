-- phpMyAdmin SQL Dump
-- version 2.6.4-pl1
-- http://www.phpmyadmin.net
-- 
-- 主機: localhost
-- 建立日期: Feb 10, 2012, 01:48 PM
-- 伺服器版本: 5.0.77
-- PHP 版本: 5.2.10
-- 
-- 資料庫: `databasequest`
-- 

-- --------------------------------------------------------

-- 
-- 資料表格式： `admin`
-- 

CREATE TABLE `admin` (
  `user` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  PRIMARY KEY  (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=big5;

-- 
-- 列出以下資料庫的數據： `admin`
-- 

INSERT INTO `admin` VALUES ('admin', '1234');
INSERT INTO `admin` VALUES ('test', 'libweek@)!!');

-- --------------------------------------------------------

-- 
-- 資料表格式： `adminvisitlog`
-- 

CREATE TABLE `adminvisitlog` (
  `id` int(11) NOT NULL auto_increment,
  `ipstamp` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=384 DEFAULT CHARSET=latin1 AUTO_INCREMENT=384 ;

-- 
-- 列出以下資料庫的數據： `adminvisitlog`
-- 

INSERT INTO `adminvisitlog` VALUES (1, '140.117.169.186', '2011-12-28 10:21:31');
INSERT INTO `adminvisitlog` VALUES (2, '140.117.169.186', '2011-12-28 11:19:38');
INSERT INTO `adminvisitlog` VALUES (3, '140.117.169.186', '2011-12-28 12:06:18');
INSERT INTO `adminvisitlog` VALUES (4, '140.117.169.186', '2011-12-29 14:14:59');
INSERT INTO `adminvisitlog` VALUES (5, '140.117.169.186', '2011-12-29 14:14:59');
INSERT INTO `adminvisitlog` VALUES (6, '140.117.169.186', '2011-12-29 14:15:06');
INSERT INTO `adminvisitlog` VALUES (7, '140.117.169.186', '2011-12-29 14:15:06');
INSERT INTO `adminvisitlog` VALUES (8, '140.117.169.186', '2012-01-04 11:03:36');
INSERT INTO `adminvisitlog` VALUES (9, '140.117.169.186', '2012-01-04 11:03:36');
INSERT INTO `adminvisitlog` VALUES (10, '140.117.169.186', '2012-01-04 11:07:36');
INSERT INTO `adminvisitlog` VALUES (11, '140.117.169.186', '2012-01-04 11:12:52');
INSERT INTO `adminvisitlog` VALUES (12, '140.117.169.186', '2012-01-04 11:13:15');
INSERT INTO `adminvisitlog` VALUES (13, '140.117.169.186', '2012-01-04 11:19:12');
INSERT INTO `adminvisitlog` VALUES (14, '140.117.169.186', '2012-01-04 11:22:24');
INSERT INTO `adminvisitlog` VALUES (15, '140.117.169.186', '2012-01-04 11:22:51');
INSERT INTO `adminvisitlog` VALUES (16, '140.117.169.186', '2012-01-04 11:24:12');
INSERT INTO `adminvisitlog` VALUES (17, '140.117.169.186', '2012-01-04 11:25:09');
INSERT INTO `adminvisitlog` VALUES (18, '140.117.169.186', '2012-01-04 11:25:58');
INSERT INTO `adminvisitlog` VALUES (19, '140.117.169.186', '2012-01-04 11:27:20');
INSERT INTO `adminvisitlog` VALUES (20, '140.117.169.186', '2012-01-04 11:40:45');
INSERT INTO `adminvisitlog` VALUES (21, '140.117.169.186', '2012-01-04 11:41:16');
INSERT INTO `adminvisitlog` VALUES (22, '140.117.169.186', '2012-01-04 11:42:57');
INSERT INTO `adminvisitlog` VALUES (23, '140.117.169.186', '2012-01-04 11:45:59');
INSERT INTO `adminvisitlog` VALUES (24, '140.117.169.186', '2012-01-04 11:46:53');
INSERT INTO `adminvisitlog` VALUES (25, '140.117.169.186', '2012-01-04 11:47:34');
INSERT INTO `adminvisitlog` VALUES (26, '140.117.169.186', '2012-01-04 11:47:53');
INSERT INTO `adminvisitlog` VALUES (27, '140.117.169.186', '2012-01-04 11:48:22');
INSERT INTO `adminvisitlog` VALUES (28, '140.117.169.186', '2012-01-04 11:49:26');
INSERT INTO `adminvisitlog` VALUES (29, '140.117.169.186', '2012-01-04 11:54:41');
INSERT INTO `adminvisitlog` VALUES (30, '140.117.169.186', '2012-01-04 11:59:19');
INSERT INTO `adminvisitlog` VALUES (31, '140.117.169.186', '2012-01-04 11:59:34');
INSERT INTO `adminvisitlog` VALUES (32, '140.117.169.186', '2012-01-04 12:02:41');
INSERT INTO `adminvisitlog` VALUES (33, '140.117.169.186', '2012-01-04 12:02:42');
INSERT INTO `adminvisitlog` VALUES (34, '140.117.169.186', '2012-01-04 12:02:57');
INSERT INTO `adminvisitlog` VALUES (35, '140.117.169.186', '2012-01-04 12:02:58');
INSERT INTO `adminvisitlog` VALUES (36, '140.117.169.186', '2012-01-04 12:03:24');
INSERT INTO `adminvisitlog` VALUES (37, '140.117.169.186', '2012-01-04 12:11:56');
INSERT INTO `adminvisitlog` VALUES (38, '140.117.169.186', '2012-01-04 12:13:30');
INSERT INTO `adminvisitlog` VALUES (39, '140.117.169.186', '2012-01-04 12:15:56');
INSERT INTO `adminvisitlog` VALUES (40, '140.117.169.186', '2012-01-04 12:17:30');
INSERT INTO `adminvisitlog` VALUES (41, '140.117.169.186', '2012-01-04 12:17:55');
INSERT INTO `adminvisitlog` VALUES (42, '140.117.169.186', '2012-01-04 12:20:11');
INSERT INTO `adminvisitlog` VALUES (43, '140.117.169.186', '2012-01-04 12:22:52');
INSERT INTO `adminvisitlog` VALUES (44, '140.117.169.186', '2012-01-04 12:24:45');
INSERT INTO `adminvisitlog` VALUES (45, '140.117.169.186', '2012-01-04 12:25:19');
INSERT INTO `adminvisitlog` VALUES (46, '140.117.169.186', '2012-01-04 12:26:15');
INSERT INTO `adminvisitlog` VALUES (47, '140.117.169.186', '2012-01-04 12:27:32');
INSERT INTO `adminvisitlog` VALUES (48, '140.117.169.186', '2012-01-04 12:28:28');
INSERT INTO `adminvisitlog` VALUES (49, '140.117.169.186', '2012-01-04 12:30:39');
INSERT INTO `adminvisitlog` VALUES (50, '140.117.169.186', '2012-01-04 12:31:35');
INSERT INTO `adminvisitlog` VALUES (51, '140.117.169.186', '2012-01-04 12:33:01');
INSERT INTO `adminvisitlog` VALUES (52, '140.117.169.186', '2012-01-04 12:33:58');
INSERT INTO `adminvisitlog` VALUES (53, '140.117.169.186', '2012-01-04 12:34:21');
INSERT INTO `adminvisitlog` VALUES (54, '140.117.169.186', '2012-01-04 12:35:59');
INSERT INTO `adminvisitlog` VALUES (55, '140.117.169.186', '2012-01-04 12:36:49');
INSERT INTO `adminvisitlog` VALUES (56, '140.117.169.186', '2012-01-04 12:38:31');
INSERT INTO `adminvisitlog` VALUES (57, '140.117.169.186', '2012-01-04 12:39:12');
INSERT INTO `adminvisitlog` VALUES (58, '140.117.169.186', '2012-01-04 12:39:23');
INSERT INTO `adminvisitlog` VALUES (59, '140.117.169.186', '2012-01-04 12:41:34');
INSERT INTO `adminvisitlog` VALUES (60, '140.117.169.186', '2012-01-04 12:43:19');
INSERT INTO `adminvisitlog` VALUES (61, '140.117.169.186', '2012-01-04 12:46:32');
INSERT INTO `adminvisitlog` VALUES (62, '140.117.169.186', '2012-01-04 12:47:36');
INSERT INTO `adminvisitlog` VALUES (63, '140.117.169.186', '2012-01-04 12:47:58');
INSERT INTO `adminvisitlog` VALUES (64, '140.117.169.186', '2012-01-04 12:48:55');
INSERT INTO `adminvisitlog` VALUES (65, '140.117.169.186', '2012-01-04 12:51:25');
INSERT INTO `adminvisitlog` VALUES (66, '140.117.169.186', '2012-01-04 12:52:28');
INSERT INTO `adminvisitlog` VALUES (67, '140.117.169.186', '2012-01-04 12:53:18');
INSERT INTO `adminvisitlog` VALUES (68, '140.117.169.186', '2012-01-04 12:53:45');
INSERT INTO `adminvisitlog` VALUES (69, '140.117.169.186', '2012-01-04 12:54:10');
INSERT INTO `adminvisitlog` VALUES (70, '140.117.188.158', '2012-01-07 11:02:35');
INSERT INTO `adminvisitlog` VALUES (71, '140.117.188.158', '2012-01-07 11:02:35');
INSERT INTO `adminvisitlog` VALUES (72, '140.117.188.158', '2012-01-07 11:24:07');
INSERT INTO `adminvisitlog` VALUES (73, '140.117.188.158', '2012-01-07 11:24:08');
INSERT INTO `adminvisitlog` VALUES (74, '140.117.188.158', '2012-01-07 11:24:08');
INSERT INTO `adminvisitlog` VALUES (75, '140.117.188.158', '2012-01-07 11:24:37');
INSERT INTO `adminvisitlog` VALUES (76, '140.117.188.158', '2012-01-07 11:24:49');
INSERT INTO `adminvisitlog` VALUES (77, '140.117.188.158', '2012-01-07 11:25:22');
INSERT INTO `adminvisitlog` VALUES (78, '140.117.188.158', '2012-01-07 11:25:48');
INSERT INTO `adminvisitlog` VALUES (79, '140.117.188.158', '2012-01-07 11:26:14');
INSERT INTO `adminvisitlog` VALUES (80, '140.117.188.158', '2012-01-07 11:26:25');
INSERT INTO `adminvisitlog` VALUES (81, '140.117.188.158', '2012-01-07 11:27:14');
INSERT INTO `adminvisitlog` VALUES (82, '140.117.188.158', '2012-01-07 11:27:27');
INSERT INTO `adminvisitlog` VALUES (83, '140.117.188.158', '2012-01-07 11:27:36');
INSERT INTO `adminvisitlog` VALUES (84, '140.117.188.158', '2012-01-07 11:27:45');
INSERT INTO `adminvisitlog` VALUES (85, '140.117.188.158', '2012-01-07 11:31:30');
INSERT INTO `adminvisitlog` VALUES (86, '140.117.188.158', '2012-01-07 11:32:38');
INSERT INTO `adminvisitlog` VALUES (87, '140.117.188.158', '2012-01-07 11:32:56');
INSERT INTO `adminvisitlog` VALUES (88, '140.117.188.158', '2012-01-07 11:34:16');
INSERT INTO `adminvisitlog` VALUES (89, '140.117.188.158', '2012-01-07 11:34:25');
INSERT INTO `adminvisitlog` VALUES (90, '140.117.188.158', '2012-01-07 11:34:25');
INSERT INTO `adminvisitlog` VALUES (91, '140.117.188.158', '2012-01-07 11:34:25');
INSERT INTO `adminvisitlog` VALUES (92, '140.117.188.158', '2012-01-07 11:34:25');
INSERT INTO `adminvisitlog` VALUES (93, '140.117.188.158', '2012-01-07 11:34:25');
INSERT INTO `adminvisitlog` VALUES (94, '140.117.188.158', '2012-01-07 11:37:31');
INSERT INTO `adminvisitlog` VALUES (95, '140.117.188.158', '2012-01-07 13:21:22');
INSERT INTO `adminvisitlog` VALUES (96, '140.117.188.158', '2012-01-07 13:38:04');
INSERT INTO `adminvisitlog` VALUES (97, '140.117.188.158', '2012-01-07 13:39:19');
INSERT INTO `adminvisitlog` VALUES (98, '140.117.188.158', '2012-01-07 13:50:00');
INSERT INTO `adminvisitlog` VALUES (99, '140.117.188.158', '2012-01-07 13:51:10');
INSERT INTO `adminvisitlog` VALUES (100, '140.117.188.158', '2012-01-07 13:53:05');
INSERT INTO `adminvisitlog` VALUES (101, '140.117.188.158', '2012-01-07 13:53:39');
INSERT INTO `adminvisitlog` VALUES (102, '140.117.188.158', '2012-01-07 13:54:12');
INSERT INTO `adminvisitlog` VALUES (103, '140.117.188.158', '2012-01-07 13:56:29');
INSERT INTO `adminvisitlog` VALUES (104, '140.117.188.158', '2012-01-07 13:57:29');
INSERT INTO `adminvisitlog` VALUES (105, '140.117.188.158', '2012-01-07 13:59:47');
INSERT INTO `adminvisitlog` VALUES (106, '140.117.188.158', '2012-01-07 14:03:44');
INSERT INTO `adminvisitlog` VALUES (107, '140.117.188.158', '2012-01-07 14:04:19');
INSERT INTO `adminvisitlog` VALUES (108, '140.117.188.158', '2012-01-07 14:04:47');
INSERT INTO `adminvisitlog` VALUES (109, '140.117.188.158', '2012-01-07 14:05:23');
INSERT INTO `adminvisitlog` VALUES (110, '140.117.188.158', '2012-01-07 14:06:03');
INSERT INTO `adminvisitlog` VALUES (111, '140.117.188.158', '2012-01-07 14:06:57');
INSERT INTO `adminvisitlog` VALUES (112, '140.117.188.158', '2012-01-07 14:07:26');
INSERT INTO `adminvisitlog` VALUES (113, '140.117.188.158', '2012-01-07 14:07:59');
INSERT INTO `adminvisitlog` VALUES (114, '140.117.188.158', '2012-01-07 14:11:34');
INSERT INTO `adminvisitlog` VALUES (115, '140.117.188.158', '2012-01-07 14:15:47');
INSERT INTO `adminvisitlog` VALUES (116, '140.117.188.158', '2012-01-07 14:16:45');
INSERT INTO `adminvisitlog` VALUES (117, '140.117.188.158', '2012-01-07 14:18:05');
INSERT INTO `adminvisitlog` VALUES (118, '140.117.188.158', '2012-01-07 14:19:43');
INSERT INTO `adminvisitlog` VALUES (119, '140.117.188.158', '2012-01-07 14:19:50');
INSERT INTO `adminvisitlog` VALUES (120, '140.117.188.158', '2012-01-07 14:19:50');
INSERT INTO `adminvisitlog` VALUES (121, '140.117.188.158', '2012-01-07 14:19:51');
INSERT INTO `adminvisitlog` VALUES (122, '140.117.188.158', '2012-01-07 14:19:51');
INSERT INTO `adminvisitlog` VALUES (123, '140.117.188.158', '2012-01-07 14:19:57');
INSERT INTO `adminvisitlog` VALUES (124, '140.117.188.158', '2012-01-07 14:20:01');
INSERT INTO `adminvisitlog` VALUES (125, '140.117.188.158', '2012-01-07 14:20:01');
INSERT INTO `adminvisitlog` VALUES (126, '140.117.188.158', '2012-01-07 14:20:02');
INSERT INTO `adminvisitlog` VALUES (127, '140.117.188.158', '2012-01-07 14:20:02');
INSERT INTO `adminvisitlog` VALUES (128, '140.117.188.158', '2012-01-07 14:20:07');
INSERT INTO `adminvisitlog` VALUES (129, '140.117.188.158', '2012-01-07 14:20:07');
INSERT INTO `adminvisitlog` VALUES (130, '140.117.188.158', '2012-01-07 14:21:23');
INSERT INTO `adminvisitlog` VALUES (131, '140.117.188.158', '2012-01-07 14:21:29');
INSERT INTO `adminvisitlog` VALUES (132, '140.117.188.158', '2012-01-07 14:23:28');
INSERT INTO `adminvisitlog` VALUES (133, '140.117.188.158', '2012-01-07 14:23:29');
INSERT INTO `adminvisitlog` VALUES (134, '140.117.188.158', '2012-01-07 14:23:36');
INSERT INTO `adminvisitlog` VALUES (135, '140.117.188.158', '2012-01-07 14:23:56');
INSERT INTO `adminvisitlog` VALUES (136, '140.117.188.158', '2012-01-07 14:24:10');
INSERT INTO `adminvisitlog` VALUES (137, '140.117.188.158', '2012-01-07 14:24:52');
INSERT INTO `adminvisitlog` VALUES (138, '140.117.188.158', '2012-01-07 14:25:15');
INSERT INTO `adminvisitlog` VALUES (139, '140.117.188.158', '2012-01-07 14:25:57');
INSERT INTO `adminvisitlog` VALUES (140, '140.117.188.158', '2012-01-07 14:26:31');
INSERT INTO `adminvisitlog` VALUES (141, '140.117.188.158', '2012-01-07 14:27:11');
INSERT INTO `adminvisitlog` VALUES (142, '140.117.188.158', '2012-01-07 14:27:17');
INSERT INTO `adminvisitlog` VALUES (143, '140.117.188.158', '2012-01-07 14:27:18');
INSERT INTO `adminvisitlog` VALUES (144, '140.117.188.158', '2012-01-07 14:27:18');
INSERT INTO `adminvisitlog` VALUES (145, '140.117.188.158', '2012-01-07 14:27:18');
INSERT INTO `adminvisitlog` VALUES (146, '140.117.188.158', '2012-01-07 14:27:18');
INSERT INTO `adminvisitlog` VALUES (147, '140.117.188.158', '2012-01-07 14:27:25');
INSERT INTO `adminvisitlog` VALUES (148, '140.117.188.158', '2012-01-07 14:27:39');
INSERT INTO `adminvisitlog` VALUES (149, '140.117.188.158', '2012-01-07 14:27:39');
INSERT INTO `adminvisitlog` VALUES (150, '140.117.188.158', '2012-01-07 14:27:44');
INSERT INTO `adminvisitlog` VALUES (151, '140.117.188.158', '2012-01-07 14:27:44');
INSERT INTO `adminvisitlog` VALUES (152, '140.117.188.158', '2012-01-07 14:30:22');
INSERT INTO `adminvisitlog` VALUES (153, '140.117.188.158', '2012-01-07 14:31:50');
INSERT INTO `adminvisitlog` VALUES (154, '140.117.188.158', '2012-01-07 14:33:23');
INSERT INTO `adminvisitlog` VALUES (155, '140.117.188.158', '2012-01-07 14:33:23');
INSERT INTO `adminvisitlog` VALUES (156, '140.117.188.158', '2012-01-07 14:37:41');
INSERT INTO `adminvisitlog` VALUES (157, '140.117.188.158', '2012-01-07 14:38:22');
INSERT INTO `adminvisitlog` VALUES (158, '140.117.188.158', '2012-01-07 14:38:23');
INSERT INTO `adminvisitlog` VALUES (159, '140.117.188.158', '2012-01-07 14:40:32');
INSERT INTO `adminvisitlog` VALUES (160, '140.117.188.158', '2012-01-07 14:41:53');
INSERT INTO `adminvisitlog` VALUES (161, '140.117.188.158', '2012-01-07 14:42:16');
INSERT INTO `adminvisitlog` VALUES (162, '140.117.188.158', '2012-01-07 14:42:40');
INSERT INTO `adminvisitlog` VALUES (163, '140.117.188.158', '2012-01-07 14:43:08');
INSERT INTO `adminvisitlog` VALUES (164, '140.117.188.158', '2012-01-07 14:43:49');
INSERT INTO `adminvisitlog` VALUES (165, '140.117.188.158', '2012-01-07 14:46:49');
INSERT INTO `adminvisitlog` VALUES (166, '140.117.188.158', '2012-01-07 14:47:02');
INSERT INTO `adminvisitlog` VALUES (167, '140.117.188.158', '2012-01-07 14:48:18');
INSERT INTO `adminvisitlog` VALUES (168, '140.117.188.158', '2012-01-07 14:49:18');
INSERT INTO `adminvisitlog` VALUES (169, '140.117.188.158', '2012-01-07 14:49:31');
INSERT INTO `adminvisitlog` VALUES (170, '140.117.188.158', '2012-01-07 14:50:19');
INSERT INTO `adminvisitlog` VALUES (171, '140.117.188.158', '2012-01-07 14:51:04');
INSERT INTO `adminvisitlog` VALUES (172, '140.117.188.158', '2012-01-07 14:51:49');
INSERT INTO `adminvisitlog` VALUES (173, '140.117.188.158', '2012-01-07 14:52:17');
INSERT INTO `adminvisitlog` VALUES (174, '140.117.188.158', '2012-01-07 14:54:06');
INSERT INTO `adminvisitlog` VALUES (175, '140.117.188.158', '2012-01-07 14:54:54');
INSERT INTO `adminvisitlog` VALUES (176, '140.117.188.158', '2012-01-07 14:54:59');
INSERT INTO `adminvisitlog` VALUES (177, '140.117.188.158', '2012-01-07 14:55:55');
INSERT INTO `adminvisitlog` VALUES (178, '140.117.188.158', '2012-01-07 14:58:36');
INSERT INTO `adminvisitlog` VALUES (179, '140.117.188.158', '2012-01-07 14:59:12');
INSERT INTO `adminvisitlog` VALUES (180, '140.117.188.158', '2012-01-07 14:59:26');
INSERT INTO `adminvisitlog` VALUES (181, '140.117.188.158', '2012-01-07 15:00:53');
INSERT INTO `adminvisitlog` VALUES (182, '140.117.188.158', '2012-01-07 15:01:07');
INSERT INTO `adminvisitlog` VALUES (183, '140.117.188.158', '2012-01-07 15:02:16');
INSERT INTO `adminvisitlog` VALUES (184, '140.117.188.158', '2012-01-07 15:02:30');
INSERT INTO `adminvisitlog` VALUES (185, '140.117.188.158', '2012-01-07 15:02:40');
INSERT INTO `adminvisitlog` VALUES (186, '140.117.188.158', '2012-01-07 15:02:41');
INSERT INTO `adminvisitlog` VALUES (187, '140.117.188.158', '2012-01-07 15:02:41');
INSERT INTO `adminvisitlog` VALUES (188, '140.117.188.158', '2012-01-07 15:03:48');
INSERT INTO `adminvisitlog` VALUES (189, '140.117.188.158', '2012-01-07 15:04:20');
INSERT INTO `adminvisitlog` VALUES (190, '140.117.188.158', '2012-01-07 15:04:53');
INSERT INTO `adminvisitlog` VALUES (191, '140.117.188.158', '2012-01-07 15:04:53');
INSERT INTO `adminvisitlog` VALUES (192, '140.117.188.158', '2012-01-07 15:04:53');
INSERT INTO `adminvisitlog` VALUES (193, '140.117.188.158', '2012-01-07 15:04:53');
INSERT INTO `adminvisitlog` VALUES (194, '140.117.188.158', '2012-01-07 15:04:54');
INSERT INTO `adminvisitlog` VALUES (195, '140.117.188.158', '2012-01-07 15:04:54');
INSERT INTO `adminvisitlog` VALUES (196, '140.117.188.158', '2012-01-07 15:04:54');
INSERT INTO `adminvisitlog` VALUES (197, '140.117.188.158', '2012-01-07 15:04:54');
INSERT INTO `adminvisitlog` VALUES (198, '140.117.188.158', '2012-01-07 15:04:54');
INSERT INTO `adminvisitlog` VALUES (199, '140.117.188.158', '2012-01-07 15:04:54');
INSERT INTO `adminvisitlog` VALUES (200, '140.117.188.158', '2012-01-07 15:04:54');
INSERT INTO `adminvisitlog` VALUES (201, '140.117.188.158', '2012-01-07 15:04:54');
INSERT INTO `adminvisitlog` VALUES (202, '140.117.188.158', '2012-01-07 15:04:55');
INSERT INTO `adminvisitlog` VALUES (203, '140.117.188.158', '2012-01-07 15:04:55');
INSERT INTO `adminvisitlog` VALUES (204, '140.117.188.158', '2012-01-07 15:04:55');
INSERT INTO `adminvisitlog` VALUES (205, '140.117.188.158', '2012-01-07 15:04:55');
INSERT INTO `adminvisitlog` VALUES (206, '140.117.188.158', '2012-01-07 15:04:55');
INSERT INTO `adminvisitlog` VALUES (207, '140.117.188.158', '2012-01-07 15:04:55');
INSERT INTO `adminvisitlog` VALUES (208, '140.117.188.158', '2012-01-07 15:06:52');
INSERT INTO `adminvisitlog` VALUES (209, '140.117.188.158', '2012-01-07 15:09:50');
INSERT INTO `adminvisitlog` VALUES (210, '140.117.188.158', '2012-01-07 15:10:02');
INSERT INTO `adminvisitlog` VALUES (211, '140.117.188.158', '2012-01-07 15:10:03');
INSERT INTO `adminvisitlog` VALUES (212, '140.117.188.158', '2012-01-07 15:12:49');
INSERT INTO `adminvisitlog` VALUES (213, '140.117.188.158', '2012-01-07 15:13:16');
INSERT INTO `adminvisitlog` VALUES (214, '140.117.188.158', '2012-01-07 15:13:17');
INSERT INTO `adminvisitlog` VALUES (215, '140.117.188.158', '2012-01-07 15:15:33');
INSERT INTO `adminvisitlog` VALUES (216, '140.117.188.158', '2012-01-07 15:17:02');
INSERT INTO `adminvisitlog` VALUES (217, '140.117.188.158', '2012-01-07 15:17:15');
INSERT INTO `adminvisitlog` VALUES (218, '140.117.188.158', '2012-01-07 15:17:56');
INSERT INTO `adminvisitlog` VALUES (219, '140.117.188.158', '2012-01-07 15:17:56');
INSERT INTO `adminvisitlog` VALUES (220, '140.117.188.158', '2012-01-07 15:19:26');
INSERT INTO `adminvisitlog` VALUES (221, '140.117.188.158', '2012-01-07 15:20:02');
INSERT INTO `adminvisitlog` VALUES (222, '140.117.188.158', '2012-01-07 15:20:54');
INSERT INTO `adminvisitlog` VALUES (223, '140.117.188.158', '2012-01-07 15:21:12');
INSERT INTO `adminvisitlog` VALUES (224, '140.117.188.158', '2012-01-07 15:21:50');
INSERT INTO `adminvisitlog` VALUES (225, '140.117.188.158', '2012-01-07 15:22:25');
INSERT INTO `adminvisitlog` VALUES (226, '140.117.188.158', '2012-01-07 15:24:06');
INSERT INTO `adminvisitlog` VALUES (227, '140.117.188.158', '2012-01-07 15:33:08');
INSERT INTO `adminvisitlog` VALUES (228, '140.117.188.158', '2012-01-07 15:34:46');
INSERT INTO `adminvisitlog` VALUES (229, '140.117.188.158', '2012-01-07 15:37:42');
INSERT INTO `adminvisitlog` VALUES (230, '140.117.188.158', '2012-01-07 15:49:44');
INSERT INTO `adminvisitlog` VALUES (231, '140.117.188.158', '2012-01-07 15:52:52');
INSERT INTO `adminvisitlog` VALUES (232, '140.117.188.158', '2012-01-07 15:56:44');
INSERT INTO `adminvisitlog` VALUES (233, '140.117.188.158', '2012-01-07 15:57:53');
INSERT INTO `adminvisitlog` VALUES (234, '140.117.188.158', '2012-01-07 16:00:24');
INSERT INTO `adminvisitlog` VALUES (235, '140.117.188.158', '2012-01-07 16:01:07');
INSERT INTO `adminvisitlog` VALUES (236, '140.117.188.158', '2012-01-07 16:06:51');
INSERT INTO `adminvisitlog` VALUES (237, '140.117.188.158', '2012-01-07 16:08:16');
INSERT INTO `adminvisitlog` VALUES (238, '140.117.188.158', '2012-01-07 16:13:03');
INSERT INTO `adminvisitlog` VALUES (239, '140.117.188.158', '2012-01-07 16:14:47');
INSERT INTO `adminvisitlog` VALUES (240, '140.117.188.158', '2012-01-07 16:22:34');
INSERT INTO `adminvisitlog` VALUES (241, '140.117.188.158', '2012-01-07 16:22:34');
INSERT INTO `adminvisitlog` VALUES (242, '140.117.188.158', '2012-01-07 16:46:00');
INSERT INTO `adminvisitlog` VALUES (243, '127.0.0.1', '2012-01-11 15:03:59');
INSERT INTO `adminvisitlog` VALUES (244, '127.0.0.1', '2012-01-11 15:03:59');
INSERT INTO `adminvisitlog` VALUES (245, '127.0.0.1', '2012-01-11 15:05:41');
INSERT INTO `adminvisitlog` VALUES (246, '127.0.0.1', '2012-01-11 15:05:41');
INSERT INTO `adminvisitlog` VALUES (247, '127.0.0.1', '2012-01-11 15:10:11');
INSERT INTO `adminvisitlog` VALUES (248, '127.0.0.1', '2012-01-11 15:11:27');
INSERT INTO `adminvisitlog` VALUES (249, '127.0.0.1', '2012-01-11 15:14:59');
INSERT INTO `adminvisitlog` VALUES (250, '127.0.0.1', '2012-01-11 15:15:22');
INSERT INTO `adminvisitlog` VALUES (251, '127.0.0.1', '2012-01-11 15:23:20');
INSERT INTO `adminvisitlog` VALUES (252, '127.0.0.1', '2012-01-11 15:23:55');
INSERT INTO `adminvisitlog` VALUES (253, '127.0.0.1', '2012-01-11 15:26:47');
INSERT INTO `adminvisitlog` VALUES (254, '127.0.0.1', '2012-01-11 15:30:13');
INSERT INTO `adminvisitlog` VALUES (255, '127.0.0.1', '2012-01-11 15:30:55');
INSERT INTO `adminvisitlog` VALUES (256, '127.0.0.1', '2012-01-11 15:32:03');
INSERT INTO `adminvisitlog` VALUES (257, '127.0.0.1', '2012-01-11 15:33:13');
INSERT INTO `adminvisitlog` VALUES (258, '127.0.0.1', '2012-01-11 15:34:42');
INSERT INTO `adminvisitlog` VALUES (259, '127.0.0.1', '2012-01-11 15:35:12');
INSERT INTO `adminvisitlog` VALUES (260, '127.0.0.1', '2012-01-11 15:36:23');
INSERT INTO `adminvisitlog` VALUES (261, '127.0.0.1', '2012-01-11 15:36:23');
INSERT INTO `adminvisitlog` VALUES (262, '127.0.0.1', '2012-01-11 15:37:45');
INSERT INTO `adminvisitlog` VALUES (263, '127.0.0.1', '2012-01-11 15:38:06');
INSERT INTO `adminvisitlog` VALUES (264, '127.0.0.1', '2012-01-11 15:40:39');
INSERT INTO `adminvisitlog` VALUES (265, '127.0.0.1', '2012-01-11 15:41:25');
INSERT INTO `adminvisitlog` VALUES (266, '127.0.0.1', '2012-01-11 15:41:33');
INSERT INTO `adminvisitlog` VALUES (267, '127.0.0.1', '2012-01-11 15:41:52');
INSERT INTO `adminvisitlog` VALUES (268, '127.0.0.1', '2012-01-11 15:42:13');
INSERT INTO `adminvisitlog` VALUES (269, '127.0.0.1', '2012-01-11 15:44:01');
INSERT INTO `adminvisitlog` VALUES (270, '127.0.0.1', '2012-01-11 15:44:42');
INSERT INTO `adminvisitlog` VALUES (271, '127.0.0.1', '2012-01-11 15:48:47');
INSERT INTO `adminvisitlog` VALUES (272, '127.0.0.1', '2012-01-11 15:50:56');
INSERT INTO `adminvisitlog` VALUES (273, '127.0.0.1', '2012-01-11 15:50:56');
INSERT INTO `adminvisitlog` VALUES (274, '127.0.0.1', '2012-01-11 15:51:10');
INSERT INTO `adminvisitlog` VALUES (275, '127.0.0.1', '2012-01-11 15:52:37');
INSERT INTO `adminvisitlog` VALUES (276, '127.0.0.1', '2012-01-11 15:52:58');
INSERT INTO `adminvisitlog` VALUES (277, '127.0.0.1', '2012-01-11 15:53:07');
INSERT INTO `adminvisitlog` VALUES (278, '127.0.0.1', '2012-01-11 15:55:06');
INSERT INTO `adminvisitlog` VALUES (279, '127.0.0.1', '2012-01-11 15:55:06');
INSERT INTO `adminvisitlog` VALUES (280, '127.0.0.1', '2012-01-11 15:55:10');
INSERT INTO `adminvisitlog` VALUES (281, '127.0.0.1', '2012-01-11 15:55:10');
INSERT INTO `adminvisitlog` VALUES (282, '127.0.0.1', '2012-01-11 15:55:56');
INSERT INTO `adminvisitlog` VALUES (283, '127.0.0.1', '2012-01-11 15:57:40');
INSERT INTO `adminvisitlog` VALUES (284, '127.0.0.1', '2012-01-11 15:58:06');
INSERT INTO `adminvisitlog` VALUES (285, '127.0.0.1', '2012-01-11 15:58:06');
INSERT INTO `adminvisitlog` VALUES (286, '127.0.0.1', '2012-01-11 15:58:12');
INSERT INTO `adminvisitlog` VALUES (287, '127.0.0.1', '2012-01-11 15:59:47');
INSERT INTO `adminvisitlog` VALUES (288, '127.0.0.1', '2012-01-11 15:59:51');
INSERT INTO `adminvisitlog` VALUES (289, '127.0.0.1', '2012-01-11 16:00:14');
INSERT INTO `adminvisitlog` VALUES (290, '127.0.0.1', '2012-01-11 16:00:19');
INSERT INTO `adminvisitlog` VALUES (291, '127.0.0.1', '2012-01-11 16:10:29');
INSERT INTO `adminvisitlog` VALUES (292, '127.0.0.1', '2012-01-11 16:12:43');
INSERT INTO `adminvisitlog` VALUES (293, '127.0.0.1', '2012-01-11 16:13:16');
INSERT INTO `adminvisitlog` VALUES (294, '127.0.0.1', '2012-01-11 16:15:55');
INSERT INTO `adminvisitlog` VALUES (295, '127.0.0.1', '2012-01-11 16:16:27');
INSERT INTO `adminvisitlog` VALUES (296, '127.0.0.1', '2012-01-11 16:16:29');
INSERT INTO `adminvisitlog` VALUES (297, '127.0.0.1', '2012-01-11 16:16:29');
INSERT INTO `adminvisitlog` VALUES (298, '127.0.0.1', '2012-01-11 16:16:35');
INSERT INTO `adminvisitlog` VALUES (299, '127.0.0.1', '2012-01-11 16:16:41');
INSERT INTO `adminvisitlog` VALUES (300, '127.0.0.1', '2012-01-11 16:16:41');
INSERT INTO `adminvisitlog` VALUES (301, '127.0.0.1', '2012-01-11 16:18:03');
INSERT INTO `adminvisitlog` VALUES (302, '127.0.0.1', '2012-01-11 16:21:01');
INSERT INTO `adminvisitlog` VALUES (303, '127.0.0.1', '2012-01-11 16:22:24');
INSERT INTO `adminvisitlog` VALUES (304, '127.0.0.1', '2012-01-11 16:23:55');
INSERT INTO `adminvisitlog` VALUES (305, '127.0.0.1', '2012-01-11 16:24:09');
INSERT INTO `adminvisitlog` VALUES (306, '127.0.0.1', '2012-01-11 16:26:24');
INSERT INTO `adminvisitlog` VALUES (307, '127.0.0.1', '2012-01-11 16:26:30');
INSERT INTO `adminvisitlog` VALUES (308, '127.0.0.1', '2012-01-11 16:26:59');
INSERT INTO `adminvisitlog` VALUES (309, '127.0.0.1', '2012-01-11 16:27:11');
INSERT INTO `adminvisitlog` VALUES (310, '127.0.0.1', '2012-01-11 16:32:02');
INSERT INTO `adminvisitlog` VALUES (311, '127.0.0.1', '2012-01-11 16:32:17');
INSERT INTO `adminvisitlog` VALUES (312, '127.0.0.1', '2012-01-11 16:32:56');
INSERT INTO `adminvisitlog` VALUES (313, '127.0.0.1', '2012-01-11 16:34:51');
INSERT INTO `adminvisitlog` VALUES (314, '127.0.0.1', '2012-01-11 16:38:02');
INSERT INTO `adminvisitlog` VALUES (315, '127.0.0.1', '2012-01-11 16:38:47');
INSERT INTO `adminvisitlog` VALUES (316, '127.0.0.1', '2012-01-11 16:39:22');
INSERT INTO `adminvisitlog` VALUES (317, '127.0.0.1', '2012-01-11 16:40:02');
INSERT INTO `adminvisitlog` VALUES (318, '127.0.0.1', '2012-01-11 16:40:19');
INSERT INTO `adminvisitlog` VALUES (319, '127.0.0.1', '2012-01-11 16:40:27');
INSERT INTO `adminvisitlog` VALUES (320, '127.0.0.1', '2012-01-11 16:40:30');
INSERT INTO `adminvisitlog` VALUES (321, '127.0.0.1', '2012-01-11 16:40:56');
INSERT INTO `adminvisitlog` VALUES (322, '127.0.0.1', '2012-01-11 16:43:29');
INSERT INTO `adminvisitlog` VALUES (323, '127.0.0.1', '2012-01-11 16:44:42');
INSERT INTO `adminvisitlog` VALUES (324, '127.0.0.1', '2012-01-11 16:49:08');
INSERT INTO `adminvisitlog` VALUES (325, '127.0.0.1', '2012-01-11 16:50:22');
INSERT INTO `adminvisitlog` VALUES (326, '127.0.0.1', '2012-01-11 16:51:52');
INSERT INTO `adminvisitlog` VALUES (327, '127.0.0.1', '2012-01-11 16:52:04');
INSERT INTO `adminvisitlog` VALUES (328, '127.0.0.1', '2012-01-11 16:55:24');
INSERT INTO `adminvisitlog` VALUES (329, '127.0.0.1', '2012-01-11 17:00:15');
INSERT INTO `adminvisitlog` VALUES (330, '127.0.0.1', '2012-01-11 17:01:17');
INSERT INTO `adminvisitlog` VALUES (331, '127.0.0.1', '2012-01-11 17:01:40');
INSERT INTO `adminvisitlog` VALUES (332, '127.0.0.1', '2012-01-11 17:01:55');
INSERT INTO `adminvisitlog` VALUES (333, '127.0.0.1', '2012-01-11 22:34:20');
INSERT INTO `adminvisitlog` VALUES (334, '127.0.0.1', '2012-01-11 22:36:31');
INSERT INTO `adminvisitlog` VALUES (335, '127.0.0.1', '2012-01-15 13:03:11');
INSERT INTO `adminvisitlog` VALUES (336, '127.0.0.1', '2012-01-15 13:03:11');
INSERT INTO `adminvisitlog` VALUES (337, '127.0.0.1', '2012-01-15 13:14:28');
INSERT INTO `adminvisitlog` VALUES (338, '127.0.0.1', '2012-01-15 15:32:29');
INSERT INTO `adminvisitlog` VALUES (339, '127.0.0.1', '2012-01-15 22:02:01');
INSERT INTO `adminvisitlog` VALUES (340, '127.0.0.1', '2012-01-16 08:56:39');
INSERT INTO `adminvisitlog` VALUES (341, '127.0.0.1', '2012-01-24 14:10:33');
INSERT INTO `adminvisitlog` VALUES (342, '127.0.0.1', '2012-01-24 14:10:33');
INSERT INTO `adminvisitlog` VALUES (343, '127.0.0.1', '2012-01-24 14:15:47');
INSERT INTO `adminvisitlog` VALUES (344, '127.0.0.1', '2012-01-24 14:15:47');
INSERT INTO `adminvisitlog` VALUES (345, '127.0.0.1', '2012-01-27 21:40:07');
INSERT INTO `adminvisitlog` VALUES (346, '127.0.0.1', '2012-01-27 21:40:14');
INSERT INTO `adminvisitlog` VALUES (347, '127.0.0.1', '2012-01-27 21:40:14');
INSERT INTO `adminvisitlog` VALUES (348, '127.0.0.1', '2012-01-27 21:41:09');
INSERT INTO `adminvisitlog` VALUES (349, '127.0.0.1', '2012-01-27 21:41:21');
INSERT INTO `adminvisitlog` VALUES (350, '140.117.169.186', '2012-01-31 21:39:55');
INSERT INTO `adminvisitlog` VALUES (351, '140.117.169.186', '2012-01-31 21:40:02');
INSERT INTO `adminvisitlog` VALUES (352, '140.117.169.186', '2012-01-31 21:40:02');
INSERT INTO `adminvisitlog` VALUES (353, '140.117.169.186', '2012-01-31 21:55:34');
INSERT INTO `adminvisitlog` VALUES (354, '140.117.169.186', '2012-01-31 22:04:36');
INSERT INTO `adminvisitlog` VALUES (355, '140.117.169.186', '2012-01-31 22:54:21');
INSERT INTO `adminvisitlog` VALUES (356, '140.117.169.186', '2012-02-01 08:38:11');
INSERT INTO `adminvisitlog` VALUES (357, '140.117.169.186', '2012-02-01 12:48:21');
INSERT INTO `adminvisitlog` VALUES (358, '140.117.169.186', '2012-02-01 16:26:16');
INSERT INTO `adminvisitlog` VALUES (359, '140.117.169.186', '2012-02-01 17:27:19');
INSERT INTO `adminvisitlog` VALUES (360, '140.117.169.186', '2012-02-01 17:27:19');
INSERT INTO `adminvisitlog` VALUES (361, '140.117.169.186', '2012-02-03 11:02:37');
INSERT INTO `adminvisitlog` VALUES (362, '140.117.169.186', '2012-02-03 11:02:37');
INSERT INTO `adminvisitlog` VALUES (363, '140.117.188.158', '2012-02-05 18:46:35');
INSERT INTO `adminvisitlog` VALUES (364, '140.117.188.158', '2012-02-05 18:46:43');
INSERT INTO `adminvisitlog` VALUES (365, '140.117.188.158', '2012-02-05 18:46:43');
INSERT INTO `adminvisitlog` VALUES (366, '140.117.188.158', '2012-02-05 18:47:13');
INSERT INTO `adminvisitlog` VALUES (367, '140.117.188.158', '2012-02-05 23:13:33');
INSERT INTO `adminvisitlog` VALUES (368, '140.117.188.158', '2012-02-05 23:13:33');
INSERT INTO `adminvisitlog` VALUES (369, '140.117.188.158', '2012-02-05 23:13:37');
INSERT INTO `adminvisitlog` VALUES (370, '140.117.188.158', '2012-02-05 23:13:37');
INSERT INTO `adminvisitlog` VALUES (371, '140.117.169.186', '2012-02-06 08:58:57');
INSERT INTO `adminvisitlog` VALUES (372, '140.117.169.186', '2012-02-07 08:59:32');
INSERT INTO `adminvisitlog` VALUES (373, '140.117.169.186', '2012-02-09 15:06:17');
INSERT INTO `adminvisitlog` VALUES (374, '140.117.169.186', '2012-02-09 15:09:59');
INSERT INTO `adminvisitlog` VALUES (375, '140.117.169.186', '2012-02-09 15:12:26');
INSERT INTO `adminvisitlog` VALUES (376, '140.117.169.186', '2012-02-09 15:16:40');
INSERT INTO `adminvisitlog` VALUES (377, '140.117.169.186', '2012-02-09 15:17:06');
INSERT INTO `adminvisitlog` VALUES (378, '140.117.169.186', '2012-02-09 15:18:06');
INSERT INTO `adminvisitlog` VALUES (379, '140.117.169.186', '2012-02-09 15:24:07');
INSERT INTO `adminvisitlog` VALUES (380, '140.117.169.186', '2012-02-09 15:25:14');
INSERT INTO `adminvisitlog` VALUES (381, '140.117.169.186', '2012-02-09 15:25:54');
INSERT INTO `adminvisitlog` VALUES (382, '140.117.169.186', '2012-02-09 15:26:30');
INSERT INTO `adminvisitlog` VALUES (383, '140.117.169.186', '2012-02-09 15:38:09');

-- --------------------------------------------------------

-- 
-- 資料表格式： `answer`
-- 

CREATE TABLE `answer` (
  `quest_id` int(11) NOT NULL,
  `optId` varchar(1) NOT NULL,
  `options` varchar(255) NOT NULL,
  `is_otherop` tinyint(3) NOT NULL,
  `is_col` tinyint(1) NOT NULL,
  `is_jump` tinyint(1) NOT NULL,
  `jq_id` varchar(20) NOT NULL,
  UNIQUE KEY `quest_id_2` (`quest_id`,`optId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 列出以下資料庫的數據： `answer`
-- 

INSERT INTO `answer` VALUES (2, '4', '3', 1, 0, 0, '');
INSERT INTO `answer` VALUES (3, '1', '1', 0, 0, 0, '');
INSERT INTO `answer` VALUES (4, '1', '1', 0, 0, 0, '');
INSERT INTO `answer` VALUES (5, '3', 'ert', 0, 0, 0, '');
INSERT INTO `answer` VALUES (6, '6', '哈嚕', 0, 0, 0, '');
INSERT INTO `answer` VALUES (2, '3', '44', 0, 0, 0, '');
INSERT INTO `answer` VALUES (2, '2', 'ttt', 1, 0, 0, '');
INSERT INTO `answer` VALUES (2, '1', 'er', 1, 0, 0, '');
INSERT INTO `answer` VALUES (8, '2', 'ttt', 0, 0, 0, '');
INSERT INTO `answer` VALUES (5, '2', 'ert', 0, 0, 0, '');
INSERT INTO `answer` VALUES (5, '1', 'ert', 1, 0, 0, '');
INSERT INTO `answer` VALUES (4, '2', '2', 0, 0, 0, '');
INSERT INTO `answer` VALUES (6, '5', '非常不滿意', 0, 1, 0, '');
INSERT INTO `answer` VALUES (6, '4', '不滿意', 0, 1, 0, '');
INSERT INTO `answer` VALUES (6, '3', '普通', 0, 1, 0, '');
INSERT INTO `answer` VALUES (6, '2', '滿意', 0, 1, 0, '');
INSERT INTO `answer` VALUES (6, '1', '非常滿意', 0, 1, 0, '');
INSERT INTO `answer` VALUES (8, '1', 'asd', 0, 0, 0, '');
INSERT INTO `answer` VALUES (7, '1', '是', 0, 0, 1, '6,8,9');
INSERT INTO `answer` VALUES (7, '2', '否', 0, 0, 1, '2,4');
INSERT INTO `answer` VALUES (6, '7', '嘿嘿', 0, 0, 0, '');
INSERT INTO `answer` VALUES (6, '8', '師施', 0, 0, 0, '');
INSERT INTO `answer` VALUES (9, '1', 'fgh', 0, 0, 0, '');
INSERT INTO `answer` VALUES (9, '2', 'fgh', 0, 0, 0, '');
INSERT INTO `answer` VALUES (9, '3', 'fghf', 0, 0, 0, '');
INSERT INTO `answer` VALUES (10, '1', '選我選我', 1, 0, 0, '');
INSERT INTO `answer` VALUES (10, '2', '不是我', 0, 0, 0, '');
INSERT INTO `answer` VALUES (10, '3', '笨蛋，是我', 0, 0, 0, '');
INSERT INTO `answer` VALUES (15, '1', 'dtr', 0, 0, 1, '3,5');

-- --------------------------------------------------------

-- 
-- 資料表格式： `award`
-- 

CREATE TABLE `award` (
  `year` int(5) NOT NULL,
  `level` int(3) NOT NULL,
  `score` int(3) NOT NULL,
  `num` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5;

-- 
-- 列出以下資料庫的數據： `award`
-- 

INSERT INTO `award` VALUES (2011, 0, 0, 0);

-- --------------------------------------------------------

-- 
-- 資料表格式： `awardlist`
-- 

CREATE TABLE `awardlist` (
  `year` int(4) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `level` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5;

-- 
-- 列出以下資料庫的數據： `awardlist`
-- 


-- --------------------------------------------------------

-- 
-- 資料表格式： `college`
-- 

CREATE TABLE `college` (
  `id` varchar(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- 列出以下資料庫的數據： `college`
-- 

INSERT INTO `college` VALUES ('1', '');
INSERT INTO `college` VALUES ('2', '');
INSERT INTO `college` VALUES ('3', '');
INSERT INTO `college` VALUES ('4', '');
INSERT INTO `college` VALUES ('5', '');
INSERT INTO `college` VALUES ('6', '');
INSERT INTO `college` VALUES ('A', '');
INSERT INTO `college` VALUES ('K', '');

-- --------------------------------------------------------

-- 
-- 資料表格式： `depart`
-- 

CREATE TABLE `depart` (
  `id` int(11) NOT NULL auto_increment,
  `college_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `college_id` (`college_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

-- 
-- 列出以下資料庫的數據： `depart`
-- 

INSERT INTO `depart` VALUES (1, 1, '');
INSERT INTO `depart` VALUES (2, 1, '');
INSERT INTO `depart` VALUES (3, 1, '');
INSERT INTO `depart` VALUES (4, 1, '');
INSERT INTO `depart` VALUES (5, 1, '');
INSERT INTO `depart` VALUES (6, 2, '');
INSERT INTO `depart` VALUES (7, 2, '');
INSERT INTO `depart` VALUES (8, 2, '');
INSERT INTO `depart` VALUES (9, 2, '');
INSERT INTO `depart` VALUES (10, 2, '');
INSERT INTO `depart` VALUES (11, 2, '');
INSERT INTO `depart` VALUES (12, 3, '');
INSERT INTO `depart` VALUES (13, 3, '');
INSERT INTO `depart` VALUES (14, 3, '');
INSERT INTO `depart` VALUES (15, 3, '');
INSERT INTO `depart` VALUES (16, 3, '');
INSERT INTO `depart` VALUES (17, 3, '');
INSERT INTO `depart` VALUES (18, 3, '');
INSERT INTO `depart` VALUES (19, 4, '');
INSERT INTO `depart` VALUES (20, 4, '');
INSERT INTO `depart` VALUES (21, 4, '');
INSERT INTO `depart` VALUES (22, 4, '');
INSERT INTO `depart` VALUES (23, 4, '');
INSERT INTO `depart` VALUES (24, 4, '');
INSERT INTO `depart` VALUES (25, 4, '');
INSERT INTO `depart` VALUES (26, 4, '');
INSERT INTO `depart` VALUES (27, 5, '');
INSERT INTO `depart` VALUES (28, 5, '');
INSERT INTO `depart` VALUES (29, 5, '');
INSERT INTO `depart` VALUES (30, 5, '');
INSERT INTO `depart` VALUES (31, 5, '');
INSERT INTO `depart` VALUES (32, 5, '');
INSERT INTO `depart` VALUES (33, 6, '');
INSERT INTO `depart` VALUES (34, 6, '');
INSERT INTO `depart` VALUES (35, 6, '');
INSERT INTO `depart` VALUES (36, 6, '');
INSERT INTO `depart` VALUES (37, 6, '');
INSERT INTO `depart` VALUES (38, 6, '');
INSERT INTO `depart` VALUES (39, 3, '');

-- --------------------------------------------------------

-- 
-- 資料表格式： `ident`
-- 

CREATE TABLE `ident` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(5) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- 列出以下資料庫的數據： `ident`
-- 

INSERT INTO `ident` VALUES (1, '');
INSERT INTO `ident` VALUES (2, '');
INSERT INTO `ident` VALUES (3, '');
INSERT INTO `ident` VALUES (4, '');

-- --------------------------------------------------------

-- 
-- 資料表格式： `problem`
-- 

CREATE TABLE `problem` (
  `id` int(4) NOT NULL auto_increment,
  `cat` tinyint(1) NOT NULL,
  `question` mediumtext NOT NULL,
  `visible` tinyint(1) NOT NULL default '0',
  `is_multiple` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=big5 AUTO_INCREMENT=17 ;

-- 
-- 列出以下資料庫的數據： `problem`
-- 

INSERT INTO `problem` VALUES (2, 1, 'etert', 1, 1);
INSERT INTO `problem` VALUES (3, 1, '請問您對於圖書館所提供的電子書有何建議？', 1, 3);
INSERT INTO `problem` VALUES (4, 1, '333', 1, 2);
INSERT INTO `problem` VALUES (5, 4, 'rrrrrrrrrrrrrr', 1, 1);
INSERT INTO `problem` VALUES (6, 1, '方格', 1, 4);
INSERT INTO `problem` VALUES (7, 2, 'sssssss', 1, 1);
INSERT INTO `problem` VALUES (8, 7, 'asd', 1, 1);
INSERT INTO `problem` VALUES (9, 1, 'fghfgh', 1, 1);
INSERT INTO `problem` VALUES (10, 1, '單選題', 1, 1);
INSERT INTO `problem` VALUES (15, 1, 'fgfdg', 1, 1);

-- --------------------------------------------------------

-- 
-- 資料表格式： `user`
-- 

CREATE TABLE `user` (
  `year` varchar(4) NOT NULL,
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `sId` varchar(15) NOT NULL,
  `ident_id` varchar(11) NOT NULL,
  `depart_id` varchar(20) NOT NULL,
  `depart` varchar(20) NOT NULL,
  `email` varchar(300) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `SelectedRecord` varchar(1000) NOT NULL default '[]',
  `textarea` varchar(10000) NOT NULL,
  `otherop` varchar(10000) NOT NULL,
  `ipstamp` varchar(30) NOT NULL,
  `starttime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `endtime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100542 DEFAULT CHARSET=utf8 AUTO_INCREMENT=100542 ;

-- 
-- 列出以下資料庫的數據： `user`
-- 

INSERT INTO `user` VALUES ('2011', 100535, 'test', '4', '4', 'A', '', '11@hotmail.com', '666', '[qq]', '', '', '140.117.120.77', '2011-12-14 12:43:05', '0000-00-00 00:00:00');
INSERT INTO `user` VALUES ('2011', 100533, '', 'A0950083', '4', 'K', '', 'kpsh@staff.nsysu.edu.tw', '2452', '["q_1a_3","q_2a_1","q_3a_2","q_4a_0"]', '', '', '140.117.120.20', '2011-12-14 11:21:06', '2011-12-14 11:21:48');
INSERT INTO `user` VALUES ('2012', 100540, '許妙鸞', 'M993040038', '2', '3', '資訊工程學系碩士班', 'miaw52777@gmail.com', '0932747492', '["q_15a_0","q_7a_1"]', '', '[]', '140.117.169.186', '2012-02-09 14:19:21', NULL);
INSERT INTO `user` VALUES ('2012', 100541, '康珮熏', 'A0950083', '4', 'K', '圖資處參考諮詢組', 'kpsh@staff.nsysu.edu.tw', '2452', '', '123123', '[]', '140.117.120.20', '2012-02-09 14:21:42', NULL);
