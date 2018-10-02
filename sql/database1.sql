-- phpMyAdmin SQL Dump
-- version 2.6.4-pl1
-- http://www.phpmyadmin.net
-- 
-- 主機: localhost
-- 建立日期: Nov 30, 2011, 03:16 PM
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

INSERT INTO `admin` VALUES ('admin', 'libweek@)!!');

-- --------------------------------------------------------

-- 
-- 資料表格式： `adminvisitlog`
-- 

CREATE TABLE `adminvisitlog` (
  `id` int(11) NOT NULL auto_increment,
  `ipstamp` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1144 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1144 ;

-- 
-- 列出以下資料庫的數據： `adminvisitlog`
-- 

INSERT INTO `adminvisitlog` VALUES (1130, '140.117.169.186', '2011-11-30 11:23:11');
INSERT INTO `adminvisitlog` VALUES (1131, '140.117.169.186', '2011-11-30 11:23:17');
INSERT INTO `adminvisitlog` VALUES (1132, '140.117.169.186', '2011-11-30 11:23:17');
INSERT INTO `adminvisitlog` VALUES (1133, '140.117.169.186', '2011-11-30 11:27:30');
INSERT INTO `adminvisitlog` VALUES (1134, '140.117.169.186', '2011-11-30 11:27:36');
INSERT INTO `adminvisitlog` VALUES (1135, '140.117.169.186', '2011-11-30 11:27:36');
INSERT INTO `adminvisitlog` VALUES (1136, '140.117.169.186', '2011-11-30 11:27:47');
INSERT INTO `adminvisitlog` VALUES (1137, '140.117.169.186', '2011-11-30 11:27:53');
INSERT INTO `adminvisitlog` VALUES (1138, '140.117.169.186', '2011-11-30 11:27:53');
INSERT INTO `adminvisitlog` VALUES (1139, '140.117.169.186', '2011-11-30 12:21:42');
INSERT INTO `adminvisitlog` VALUES (1140, '140.117.169.186', '2011-11-30 14:04:26');
INSERT INTO `adminvisitlog` VALUES (1141, '140.117.169.186', '2011-11-30 14:04:29');
INSERT INTO `adminvisitlog` VALUES (1142, '140.117.169.186', '2011-11-30 14:04:30');
INSERT INTO `adminvisitlog` VALUES (1143, '140.117.169.186', '2011-11-30 14:19:04');

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

INSERT INTO `award` VALUES (2011, 3, 0, 10);
INSERT INTO `award` VALUES (2011, 2, 30, 10);
INSERT INTO `award` VALUES (2011, 1, 100, 10);

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

INSERT INTO `college` VALUES ('1', '文學院');
INSERT INTO `college` VALUES ('2', '理學院');
INSERT INTO `college` VALUES ('3', '工學院');
INSERT INTO `college` VALUES ('4', '管理學院');
INSERT INTO `college` VALUES ('5', '海科院');
INSERT INTO `college` VALUES ('6', '社科院');
INSERT INTO `college` VALUES ('K', '文學院');
INSERT INTO `college` VALUES ('A', '文學院');

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

INSERT INTO `depart` VALUES (1, 1, '中國文學系');
INSERT INTO `depart` VALUES (2, 1, '外國語文學系');
INSERT INTO `depart` VALUES (3, 1, '音樂系');
INSERT INTO `depart` VALUES (4, 1, '劇場藝術學系');
INSERT INTO `depart` VALUES (5, 1, '哲學研究所');
INSERT INTO `depart` VALUES (6, 2, '理學院大一不分系');
INSERT INTO `depart` VALUES (7, 2, '化學系');
INSERT INTO `depart` VALUES (8, 2, '物理系');
INSERT INTO `depart` VALUES (9, 2, '生物科學系');
INSERT INTO `depart` VALUES (10, 2, '應用數學系');
INSERT INTO `depart` VALUES (11, 2, '生物醫學研究所');
INSERT INTO `depart` VALUES (12, 3, '工學院大一不分系');
INSERT INTO `depart` VALUES (13, 3, '電機工程學系');
INSERT INTO `depart` VALUES (14, 3, '機械與機電工程學系');
INSERT INTO `depart` VALUES (15, 3, '材料與光電科學學系');
INSERT INTO `depart` VALUES (16, 3, '環境工程研究所');
INSERT INTO `depart` VALUES (17, 3, '光電工程學系');
INSERT INTO `depart` VALUES (18, 3, '通訊工程研究所');
INSERT INTO `depart` VALUES (19, 4, '管院大一大二不分系');
INSERT INTO `depart` VALUES (20, 4, '企業管理學系');
INSERT INTO `depart` VALUES (21, 4, '資訊管理學系');
INSERT INTO `depart` VALUES (22, 4, '財務管理學系');
INSERT INTO `depart` VALUES (23, 4, '公共事務管理研究所');
INSERT INTO `depart` VALUES (24, 4, '人力資源管理研究所');
INSERT INTO `depart` VALUES (25, 4, '傳播管理研究所');
INSERT INTO `depart` VALUES (26, 4, '醫務管理研究所');
INSERT INTO `depart` VALUES (27, 5, '海洋生物科技暨資源學系');
INSERT INTO `depart` VALUES (28, 5, '海洋環境及工程學系');
INSERT INTO `depart` VALUES (29, 5, '海洋生物研究所');
INSERT INTO `depart` VALUES (30, 5, '海洋地質及化學研究所');
INSERT INTO `depart` VALUES (31, 5, '海下科技暨應用海洋物理研究所');
INSERT INTO `depart` VALUES (32, 5, '海洋事務研究所');
INSERT INTO `depart` VALUES (33, 6, '政治經濟學系');
INSERT INTO `depart` VALUES (34, 6, '經濟學研究所');
INSERT INTO `depart` VALUES (35, 6, '政治學研究所');
INSERT INTO `depart` VALUES (36, 6, '教育研究所');
INSERT INTO `depart` VALUES (37, 6, '社會學研究所');
INSERT INTO `depart` VALUES (38, 6, '中國與亞太區域研究所');
INSERT INTO `depart` VALUES (39, 3, '資訊工程學系');

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

INSERT INTO `ident` VALUES (1, '大學生');
INSERT INTO `ident` VALUES (2, '碩士生');
INSERT INTO `ident` VALUES (3, '博士生');
INSERT INTO `ident` VALUES (4, '教師/教授');

-- --------------------------------------------------------

-- 
-- 資料表格式： `problem`
-- 

CREATE TABLE `problem` (
  `Id` int(4) NOT NULL auto_increment,
  `question` text NOT NULL,
  `visible` tinyint(1) NOT NULL default '0',
  `is_multiple` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

-- 
-- 列出以下資料庫的數據： `problem`
-- 

INSERT INTO `problem` VALUES (1, '為整合高高屏區內24所大學圖書館之館藏資源，以互通有無，提升各校館藏利用價值，24校圖書館秉持資源共享之理念，相互對等互惠之原則，建立「圖書代借代還服務」，已積極推動圖書代借代還之館際合作，提升服務品質。請問下列哪一所學校不在圖書代借代還服務24校館際合作服務之列？', 1, 0);
INSERT INTO `problem` VALUES (2, '為加速館際合作的時效性，本館與國內其他6所大學建立快速館際合作服務，申請件原則上在3個工作天內完成，複印件皆採Ariel傳送，借閱圖書以郵遞寄送。此項服務好處在於便利合作館師生節省時間與金錢，故在申請館際合作時，建議優先考慮這幾所學校。請問下面哪一所學校不在NDDS七校快速館際合作服務之列？', 1, 0);
INSERT INTO `problem` VALUES (3, 'MyLibrary電子書平台，涵蓋超過2萬冊的電子書可供全校師生使用，請問其中的MyiLibrary電子書限制使用者一次下載頁數不得超過幾頁?', 1, 0);
INSERT INTO `problem` VALUES (4, '欲取得美加地區之博士論文全文資料，可利用下列何者？', 1, 0);

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
  `ipstamp` varchar(30) NOT NULL,
  `starttime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `endtime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100496 DEFAULT CHARSET=utf8 AUTO_INCREMENT=100496 ;

-- 
-- 列出以下資料庫的數據： `user`
-- 

INSERT INTO `user` VALUES ('2011', 100495, '許妙鸞', 'M993040038', '2', '3', '資訊工程學系碩士班', 'miaw52777@gmail.com', '0932747492', '[]', '140.117.169.186', '2011-11-30 15:09:09', NULL);
