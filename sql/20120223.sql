-- phpMyAdmin SQL Dump
-- version 2.6.4-pl1
-- http://www.phpmyadmin.net
-- 
-- 主機: localhost
-- 建立日期: Feb 23, 2012, 12:27 PM
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=517 DEFAULT CHARSET=latin1 AUTO_INCREMENT=517 ;

-- 
-- 資料表格式： `answer`
-- 

CREATE TABLE `answer` (
  `quest_id` int(11) NOT NULL,
  `optId` tinyint(10) NOT NULL,
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

INSERT INTO `answer` VALUES (1, 1, '經常需要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (1, 2, '偶爾需要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (1, 3, '很少需要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (1, 4, '不需要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (1, 5, '中文', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (1, 6, '英文', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (1, 7, '其他語言', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (2, 1, '經常需要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (2, 2, '偶爾需要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (2, 3, '很少需要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (2, 4, '不需要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (2, 5, '現行性資料 (5年內)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (2, 6, '回溯性資料 (10年以前)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (3, 1, '經常閱讀', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (3, 2, '偶爾閱讀', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (3, 3, '很少閱讀', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (3, 4, '從未閱讀', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (3, 5, '不知有此資源', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (3, 6, '電子雜誌使用頻率', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (4, 2, '未曾使用過(下兩題免答)', 0, 0, 1, '5,6');
INSERT INTO `answer` VALUES (4, 1, '有使用過', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 2, 'EndNote ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 3, 'Zotero ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 4, 'Mendeley ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 4, '可於網路同步備份', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 5, '與論文撰寫程式(word、latex…)可結合', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 6, '可匯入PDF，自動擷取書目', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 7, '其他:', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 1, 'Refworks ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 3, '可免費使用', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 2, '使用習慣', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 1, '使用方式簡單', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (8, 2, '否', 0, 0, 1, '10,11,12,13,14,15');
INSERT INTO `answer` VALUES (9, 1, '不知道圖書館有電子書', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 2, '不習慣使用', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 3, '內容不符合需求', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 4, '不會使用', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 5, '連線速度太慢', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 6, '其他：', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 1, '進行研究', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 2, '教學所需', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 3, '學習需要', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 4, '瞭解專業領域之研究趨勢', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 5, '無特定目的之瀏覽', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 6, '滿足個人閱讀興趣', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 7, '其他：', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 1, '老師指引', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 2, '同儕分享', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 3, '專業機構(如學會)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 4, '圖書館網站', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 5, '圖書館推廣(海報文宣.電子報.E-mail等)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 6, '圖書館講習課程', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 7, '詢問圖書館館員', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 8, '其他：', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (12, 1, '圖書館館藏目錄系統', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (12, 2, '圖書館電子資源系統', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (12, 3, 'Google等搜尋引擎', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (12, 4, '其他：', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (13, 3, '平均每月1-2次', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (13, 2, '幾乎每週使用', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (13, 1, '幾乎每天使用', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 2, '無法連線登入使用', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 3, '找不到所需圖書', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 4, '無全文', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 5, '連線速度太慢', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 1, '未曾遇到困難', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 4, '網站公告', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 3, '電子報、E-mail', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 2, '館訊簡介、海報文宣', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 1, '線上使用說明', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 14, '全文閱讀方式符合需求', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 15, '使用說明清楚', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 9, 'Columbia University Press', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 8, 'Cambridge eBook Collections (CEC)  ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (18, 5, '非常滿意，原因：', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (18, 4, '不滿意', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (18, 3, '無意見', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (18, 2, '滿意', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (18, 1, '非常滿意', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 5, '其他:', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 2, '會優先選用電子書的原因：', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 1, '會優先選用紙本書的原因：', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 10, 'CRCnetBASE', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 11, 'Gale Virtual Reference Library(GVRL)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (8, 1, '是', 0, 0, 1, '10');
INSERT INTO `answer` VALUES (17, 7, 'Cambridge Companions Online (CCO) ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 6, '<font color="red">沒用過</font>', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (17, 1, '非常滿意', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (17, 2, '滿意', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (17, 3, '無意見', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (17, 4, '不滿意', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (17, 5, '非常滿意', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (17, 13, 'ABC-CLIO & Greenwood', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 14, 'Sage eReference', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 12, 'OVID', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 15, 'Siam Reference Collection', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 16, 'Springer eBookCollection(SpringerLink)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 17, 'Oxford Scholarship Online Collection (OSO)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 18, 'Ebrary', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 19, 'IOS', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 20, 'MyiLibrary', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 21, 'Ebsco eBooks (原NetLibrary)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 22, 'ScienceDirect(SDOL)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 23, 'Taylor & Francis eBooks', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 24, 'Emerald eBook Series', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 25, 'InfoSci', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 26, 'S. Karger AG', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 27, 'Informa Healthcare', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 28, 'McGraw-Hill e-book', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 29, '麥格羅.希爾繁體中文電子書', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 30, 'L&B數位圖書館', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 31, 'HyRead eBook 中文電子書', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 32, '方正中文電子書', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 33, 'airitiBooks華文電子書', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 13, '使用權限充足<br>(如：同時使用人數、列印下載範圍)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 12, '使用介面易於操作', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 11, '連線速度適宜', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 9, '全文影像清晰', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 10, '涵蓋學科主題豐富', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 8, '內容品質良好', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 7, '資料內容新穎', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 6, '滿足資訊需求', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 5, '非常重要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (16, 3, '無意見', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (16, 4, '不重要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (16, 1, '非常重要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (16, 2, '重要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (13, 4, '偶爾使用', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 6, '對系統介面不熟悉', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 7, '下載、列印或複製問題', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 8, '其他：', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 5, '講習課程', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 6, '館員參考諮詢服務', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 7, '其他：', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 16, '瀏覽方式便利', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 17, '搜尋功能良好', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 18, '個人化服務功能完善<br>(如：我的最愛、書籤、註記)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 19, '提供適合在手機或PDA等行動載具閱讀電子書的形式', 0, 0, 0, ' ');

-- --------------------------------------------------------

-- 
-- 資料表格式： `award`
-- 

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
INSERT INTO `college` VALUES ('A', '教職員');
INSERT INTO `college` VALUES ('K', '教職員');

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
  `id` int(4) NOT NULL auto_increment,
  `cat` tinyint(1) NOT NULL,
  `question` mediumtext NOT NULL,
  `visible` tinyint(1) NOT NULL default '0',
  `is_multiple` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- 
-- 列出以下資料庫的數據： `problem`
-- 

INSERT INTO `problem` VALUES (1, 1, '請問您需要資料的語言需求度如何？', 1, 4);
INSERT INTO `problem` VALUES (2, 1, '請問您較需要的研究資料時效排名如何？(請依所需之排名依序寫上數字)', 1, 4);
INSERT INTO `problem` VALUES (3, 1, '請問閱讀中文電子雜誌(例如：空中英語教室、商業周刊、彭蒙惠英語…等)的頻率為何?', 1, 4);
INSERT INTO `problem` VALUES (4, 2, '您是否有使用過書目管理工具？例如：Refworks、EndNote、Zotero、Mendeley...等。', 1, 1);
INSERT INTO `problem` VALUES (5, 2, '若有使用過書目管理工具，請問您較常使用那個工具？ (可複選)', 1, 2);
INSERT INTO `problem` VALUES (6, 2, '承上題，您選擇使用此工具的原因為何？ (可複選)', 1, 2);
INSERT INTO `problem` VALUES (7, 3, '若同一本書圖書館同時提供紙本與電子版，請問您會優先選用哪一種型式的圖書？', 1, 1);
INSERT INTO `problem` VALUES (8, 3, '請問您是否曾使用過圖書館的電子書？', 1, 1);
INSERT INTO `problem` VALUES (9, 4, '您未曾使用圖書館電子書的原因是？ (可複選)', 1, 2);
INSERT INTO `problem` VALUES (10, 5, '請問您使用圖書館電子書的主要動機為何？ (可複選)', 1, 2);
INSERT INTO `problem` VALUES (11, 5, '請問您較常透過何種管道得知圖書館電子書的服務資訊？ (可複選)', 1, 2);
INSERT INTO `problem` VALUES (12, 5, '請問您使用圖書館電子書的途徑為何？', 1, 1);
INSERT INTO `problem` VALUES (13, 5, '請問您使用圖書館電子書的頻率為何？', 1, 1);
INSERT INTO `problem` VALUES (14, 5, '請問您使用圖書館電子書較常遇到的困難為何？ (可複選)', 1, 2);
INSERT INTO `problem` VALUES (15, 5, '圖書館提供的服務中，您覺得對使用電子書最有幫助的是？ (可複選)', 1, 2);
INSERT INTO `problem` VALUES (16, 6, '請就圖書館圖書的內容與提供方式，依您重視的程度勾選適合的選項', 1, 4);
INSERT INTO `problem` VALUES (17, 7, '<font color="red">！未曾使用過的資料庫，請勾選「沒用過」之選項</font>', 1, 4);
INSERT INTO `problem` VALUES (18, 8, '整體而言，您對於圖書館所提供的電子書是否感到滿意？', 1, 1);
INSERT INTO `problem` VALUES (19, 8, '請問您對於圖書館所提供的電子書有何建議？', 1, 3);

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
  `SelectedRecord` varchar(10000) NOT NULL default '[]',
  `textarea` varchar(1000) NOT NULL,
  `otherop` varchar(10000) NOT NULL,
  `ipstamp` varchar(30) NOT NULL,
  `starttime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `endtime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100546 DEFAULT CHARSET=utf8 AUTO_INCREMENT=100546 ;

-- 
-- 列出以下資料庫的數據： `user`
-- 

INSERT INTO `user` VALUES ('2012', 100545, '許妙鸞', 'M993040038', '2', '3', '資訊工程學系碩士班', 'miaw52777@gmail.com', '0932747492', '["q_7a_0","q_10a_6","q_11a_7","q_12a_3","q_14a_7","q_18a_4"]', 'q_19_options@gjghk,q_20_options@6546+465', 'q_7a_0@654654,q_10a_6@fjff,q_11a_7@877876,q_12a_3@12313123,q_18a_4@drtyery', '140.117.169.186', '2012-02-22 22:51:30', NULL);
INSERT INTO `user` VALUES ('2012', 100541, '康珮熏', 'A0950083', '4', 'K', '圖資處參考諮詢組', 'kpsh@staff.nsysu.edu.tw', '2452', '["q_1a_r0_0","q_1a_r1_1","q_1a_r2_0","q_14a_2","q_14a_4","q_15a_1","q_15a_3"]', '', '[]', '140.117.120.20', '2012-02-09 14:21:42', NULL);

CREATE TABLE `topic` (
  `id` int(4) NOT NULL auto_increment,
  `title` mediumtext NOT NULL,
  `visible` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- 列出以下資料庫的數據： `topic`
-- 

INSERT INTO `topic` VALUES (1, '圖書資源的使用需求', 0);
INSERT INTO `topic` VALUES (2, '書目管理工具之使用現況', 0);
INSERT INTO `topic` VALUES (3, '圖書館電子書之使用現況', 0);
INSERT INTO `topic` VALUES (4, '未曾使用圖書館電子書之讀者', 0);
INSERT INTO `topic` VALUES (5, '圖書館電子書的使用習慣', 0);
INSERT INTO `topic` VALUES (6, '請就圖書館電子書的內容與提供方式，依您重視的程度勾選適合的選項 ', 0);
INSERT INTO `topic` VALUES (7, '以下為臺灣學術電子書聯盟所引進之電子書資料庫，請針對您曾使用過的資料庫，依使用滿意程度勾選適合的選項', 0);
INSERT INTO `topic` VALUES (8, '圖書館所提供的電子書整體滿意度', 0);