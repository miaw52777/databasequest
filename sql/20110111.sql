-- phpMyAdmin SQL Dump
-- version 2.6.4-pl1
-- http://www.phpmyadmin.net
-- 
-- �D��: localhost
-- �إߤ��: Jan 11, 2012, 11:53 AM
-- ���A������: 5.0.77
-- PHP ����: 5.2.10
-- 
-- ��Ʈw: `databasequest`
-- 

-- --------------------------------------------------------

-- 
-- ��ƪ�榡�G `admin`
-- 

CREATE TABLE `admin` (
  `user` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  PRIMARY KEY  (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=big5;

-- 
-- �C�X�H�U��Ʈw���ƾڡG `admin`
-- 

INSERT INTO `admin` VALUES ('admin', '1234');

-- --------------------------------------------------------

-- 
-- ��ƪ�榡�G `adminvisitlog`
-- 

CREATE TABLE `adminvisitlog` (
  `id` int(11) NOT NULL auto_increment,
  `ipstamp` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=243 DEFAULT CHARSET=latin1 AUTO_INCREMENT=243 ;

-- 
-- �C�X�H�U��Ʈw���ƾڡG `adminvisitlog`
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

-- --------------------------------------------------------

-- 
-- ��ƪ�榡�G `answer`
-- 

CREATE TABLE `answer` (
  `quest_id` int(11) NOT NULL,
  `optId` varchar(1) NOT NULL,
  `options` varchar(255) NOT NULL,
  `is_otherop` tinyint(3) NOT NULL,
  UNIQUE KEY `quest_id_2` (`quest_id`,`optId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- �C�X�H�U��Ʈw���ƾڡG `answer`
-- 

INSERT INTO `answer` VALUES (1, '1', '2', 0);
INSERT INTO `answer` VALUES (1, '2', '3', 0);
INSERT INTO `answer` VALUES (2, '1', '3', 0);
INSERT INTO `answer` VALUES (2, '2', '34', 0);
INSERT INTO `answer` VALUES (3, '1', '3', 0);
INSERT INTO `answer` VALUES (3, '2', '4', 0);
INSERT INTO `answer` VALUES (3, '3', '5', 0);
INSERT INTO `answer` VALUES (4, '1', '2', 0);
INSERT INTO `answer` VALUES (4, '2', '31', 0);

-- --------------------------------------------------------

-- 
-- ��ƪ�榡�G `award`
-- 

CREATE TABLE `award` (
  `year` int(5) NOT NULL,
  `level` int(3) NOT NULL,
  `score` int(3) NOT NULL,
  `num` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5;

-- 
-- �C�X�H�U��Ʈw���ƾڡG `award`
-- 

INSERT INTO `award` VALUES (2011, 0, 0, 0);

-- --------------------------------------------------------

-- 
-- ��ƪ�榡�G `awardlist`
-- 

CREATE TABLE `awardlist` (
  `year` int(4) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `level` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5;

-- 
-- �C�X�H�U��Ʈw���ƾڡG `awardlist`
-- 


-- --------------------------------------------------------

-- 
-- ��ƪ�榡�G `college`
-- 

CREATE TABLE `college` (
  `id` varchar(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- �C�X�H�U��Ʈw���ƾڡG `college`
-- 

INSERT INTO `college` VALUES ('1', '��ǰ|');
INSERT INTO `college` VALUES ('2', '�z�ǰ|');
INSERT INTO `college` VALUES ('3', '�u�ǰ|');
INSERT INTO `college` VALUES ('4', '�޲z�ǰ|');
INSERT INTO `college` VALUES ('5', '����|');
INSERT INTO `college` VALUES ('6', '����|');
INSERT INTO `college` VALUES ('A', '��¾��');
INSERT INTO `college` VALUES ('K', '��¾��');

-- --------------------------------------------------------

-- 
-- ��ƪ�榡�G `depart`
-- 

CREATE TABLE `depart` (
  `id` int(11) NOT NULL auto_increment,
  `college_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `college_id` (`college_id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

-- 
-- �C�X�H�U��Ʈw���ƾڡG `depart`
-- 

INSERT INTO `depart` VALUES (1, 1, '�����Ǩt');
INSERT INTO `depart` VALUES (2, 1, '�~��y��Ǩt');
INSERT INTO `depart` VALUES (3, 1, '���֨t');
INSERT INTO `depart` VALUES (4, 1, '�@�����N�Ǩt');
INSERT INTO `depart` VALUES (5, 1, '���Ǭ�s��');
INSERT INTO `depart` VALUES (6, 2, '�z�ǰ|�j�@�����t');
INSERT INTO `depart` VALUES (7, 2, '�ƾǨt');
INSERT INTO `depart` VALUES (8, 2, '���z�t');
INSERT INTO `depart` VALUES (9, 2, '�ͪ���Ǩt');
INSERT INTO `depart` VALUES (10, 2, '���μƾǨt');
INSERT INTO `depart` VALUES (11, 2, '�ͪ���Ǭ�s��');
INSERT INTO `depart` VALUES (12, 3, '�u�ǰ|�j�@�����t');
INSERT INTO `depart` VALUES (13, 3, '�q���u�{�Ǩt');
INSERT INTO `depart` VALUES (14, 3, '����P���q�u�{�Ǩt');
INSERT INTO `depart` VALUES (15, 3, '���ƻP���q��ǾǨt');
INSERT INTO `depart` VALUES (16, 3, '���Ҥu�{��s��');
INSERT INTO `depart` VALUES (17, 3, '���q�u�{�Ǩt');
INSERT INTO `depart` VALUES (18, 3, '�q�T�u�{��s��');
INSERT INTO `depart` VALUES (19, 4, '�ް|�j�@�j�G�����t');
INSERT INTO `depart` VALUES (20, 4, '���~�޲z�Ǩt');
INSERT INTO `depart` VALUES (21, 4, '��T�޲z�Ǩt');
INSERT INTO `depart` VALUES (22, 4, '�]�Ⱥ޲z�Ǩt');
INSERT INTO `depart` VALUES (23, 4, '���@�ưȺ޲z��s��');
INSERT INTO `depart` VALUES (24, 4, '�H�O�귽�޲z��s��');
INSERT INTO `depart` VALUES (25, 4, '�Ǽ��޲z��s��');
INSERT INTO `depart` VALUES (26, 4, '��Ⱥ޲z��s��');
INSERT INTO `depart` VALUES (27, 5, '���v�ͪ���޺[�귽�Ǩt');
INSERT INTO `depart` VALUES (28, 5, '���v���ҤΤu�{�Ǩt');
INSERT INTO `depart` VALUES (29, 5, '���v�ͪ���s��');
INSERT INTO `depart` VALUES (30, 5, '���v�a��ΤƾǬ�s��');
INSERT INTO `depart` VALUES (31, 5, '���U��޺[���ή��v���z��s��');
INSERT INTO `depart` VALUES (32, 5, '���v�ưȬ�s��');
INSERT INTO `depart` VALUES (33, 6, '�F�v�g�پǨt');
INSERT INTO `depart` VALUES (34, 6, '�g�پǬ�s��');
INSERT INTO `depart` VALUES (35, 6, '�F�v�Ǭ�s��');
INSERT INTO `depart` VALUES (36, 6, '�Ш|��s��');
INSERT INTO `depart` VALUES (37, 6, '���|�Ǭ�s��');
INSERT INTO `depart` VALUES (38, 6, '����P�ȤӰϰ��s��');
INSERT INTO `depart` VALUES (39, 3, '��T�u�{�Ǩt');

-- --------------------------------------------------------

-- 
-- ��ƪ�榡�G `ident`
-- 

CREATE TABLE `ident` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(5) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- �C�X�H�U��Ʈw���ƾڡG `ident`
-- 

INSERT INTO `ident` VALUES (1, '�j�ǥ�');
INSERT INTO `ident` VALUES (2, '�Ӥh��');
INSERT INTO `ident` VALUES (3, '�դh��');
INSERT INTO `ident` VALUES (4, '�Юv/�б�');

-- --------------------------------------------------------

-- 
-- ��ƪ�榡�G `problem`
-- 

CREATE TABLE `problem` (
  `Id` int(4) NOT NULL auto_increment,
  `cat` tinyint(1) NOT NULL,
  `question` text NOT NULL,
  `visible` tinyint(1) NOT NULL default '0',
  `is_multiple` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=big5 AUTO_INCREMENT=5 ;

-- 
-- �C�X�H�U��Ʈw���ƾڡG `problem`
-- 

INSERT INTO `problem` VALUES (1, 1, '32', 0, 1);
INSERT INTO `problem` VALUES (2, 2, '11', 0, 2);
INSERT INTO `problem` VALUES (3, 1, '12', 0, 1);
INSERT INTO `problem` VALUES (4, 1, 'asd', 0, 1);

-- --------------------------------------------------------

-- 
-- ��ƪ�榡�G `user`
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
  `ipstamp` varchar(30) NOT NULL,
  `starttime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `endtime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100539 DEFAULT CHARSET=utf8 AUTO_INCREMENT=100539 ;

-- 
-- �C�X�H�U��Ʈw���ƾڡG `user`
-- 

INSERT INTO `user` VALUES ('2011', 100535, 'test', '4', '4', 'A', '�ѦҲ�', '11@hotmail.com', '666', '[qq]', '140.117.120.77', '2011-12-14 12:43:05', '0000-00-00 00:00:00');
INSERT INTO `user` VALUES ('2012', 100538, '�\���}', 'M993040038', '2', '3', '��T�u�{�Ǩt�Ӥh�Z', 'miaw52777@gmail.com', '0932747492', '["q_1a_1"]', '140.117.188.158', '2012-01-07 11:39:27', NULL);
INSERT INTO `user` VALUES ('2011', 100533, '�d�\��', 'A0950083', '4', 'K', '�ϸ�B�ѦҿԸ߲�', 'kpsh@staff.nsysu.edu.tw', '2452', '["q_1a_3","q_2a_1","q_3a_2","q_4a_0"]', '140.117.120.20', '2011-12-14 11:21:06', '2011-12-14 11:21:48');
