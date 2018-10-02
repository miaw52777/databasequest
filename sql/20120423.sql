-- phpMyAdmin SQL Dump
-- version 2.6.4-pl1
-- http://www.phpmyadmin.net
-- 
-- 主機: localhost
-- 建立日期: Apr 23, 2012, 09:37 PM
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
) ENGINE=MyISAM AUTO_INCREMENT=563 DEFAULT CHARSET=latin1 AUTO_INCREMENT=563 ;

-- 
-- 列出以下資料庫的數據： `adminvisitlog`
-- 

INSERT INTO `adminvisitlog` VALUES (517, '140.117.169.193', '2012-04-02 21:17:21');
INSERT INTO `adminvisitlog` VALUES (518, '140.117.169.193', '2012-04-02 21:21:28');
INSERT INTO `adminvisitlog` VALUES (519, '140.117.169.193', '2012-04-02 21:41:09');
INSERT INTO `adminvisitlog` VALUES (520, '140.117.188.158', '2012-04-03 08:27:29');
INSERT INTO `adminvisitlog` VALUES (521, '140.117.169.193', '2012-04-03 11:52:13');
INSERT INTO `adminvisitlog` VALUES (522, '140.117.169.193', '2012-04-03 11:52:13');
INSERT INTO `adminvisitlog` VALUES (523, '140.117.169.193', '2012-04-03 11:52:17');
INSERT INTO `adminvisitlog` VALUES (524, '140.117.169.193', '2012-04-03 11:52:17');
INSERT INTO `adminvisitlog` VALUES (525, '140.117.169.193', '2012-04-03 13:55:33');
INSERT INTO `adminvisitlog` VALUES (526, '140.117.169.193', '2012-04-03 14:03:46');
INSERT INTO `adminvisitlog` VALUES (527, '140.117.169.193', '2012-04-03 14:27:06');
INSERT INTO `adminvisitlog` VALUES (528, '140.117.169.193', '2012-04-03 14:34:19');
INSERT INTO `adminvisitlog` VALUES (529, '140.117.169.193', '2012-04-03 14:34:36');
INSERT INTO `adminvisitlog` VALUES (530, '140.117.169.193', '2012-04-03 14:35:14');
INSERT INTO `adminvisitlog` VALUES (531, '140.117.169.193', '2012-04-03 14:38:37');
INSERT INTO `adminvisitlog` VALUES (532, '140.117.169.193', '2012-04-03 14:47:38');
INSERT INTO `adminvisitlog` VALUES (533, '140.117.169.193', '2012-04-03 14:48:36');
INSERT INTO `adminvisitlog` VALUES (534, '140.117.169.193', '2012-04-03 14:50:19');
INSERT INTO `adminvisitlog` VALUES (535, '140.117.169.193', '2012-04-03 15:33:43');
INSERT INTO `adminvisitlog` VALUES (536, '140.117.169.193', '2012-04-03 15:47:48');
INSERT INTO `adminvisitlog` VALUES (537, '140.117.188.158', '2012-04-04 11:58:59');
INSERT INTO `adminvisitlog` VALUES (538, '140.117.188.158', '2012-04-04 11:59:09');
INSERT INTO `adminvisitlog` VALUES (539, '140.117.188.158', '2012-04-04 11:59:09');
INSERT INTO `adminvisitlog` VALUES (540, '140.117.188.158', '2012-04-04 14:15:01');
INSERT INTO `adminvisitlog` VALUES (541, '140.117.188.158', '2012-04-04 14:15:01');
INSERT INTO `adminvisitlog` VALUES (542, '140.117.169.193', '2012-04-06 09:16:47');
INSERT INTO `adminvisitlog` VALUES (543, '140.117.169.193', '2012-04-06 09:16:58');
INSERT INTO `adminvisitlog` VALUES (544, '140.117.169.193', '2012-04-06 09:16:58');
INSERT INTO `adminvisitlog` VALUES (545, '140.117.169.193', '2012-04-06 09:19:18');
INSERT INTO `adminvisitlog` VALUES (546, '140.117.169.193', '2012-04-06 09:31:37');
INSERT INTO `adminvisitlog` VALUES (547, '140.117.169.193', '2012-04-06 09:41:53');
INSERT INTO `adminvisitlog` VALUES (548, '140.117.188.158', '2012-04-08 23:41:04');
INSERT INTO `adminvisitlog` VALUES (549, '140.117.188.158', '2012-04-08 23:42:22');
INSERT INTO `adminvisitlog` VALUES (550, '140.117.169.193', '2012-04-09 08:48:41');
INSERT INTO `adminvisitlog` VALUES (551, '140.117.120.20', '2012-04-09 13:42:51');
INSERT INTO `adminvisitlog` VALUES (552, '140.117.120.20', '2012-04-09 13:43:11');
INSERT INTO `adminvisitlog` VALUES (553, '140.117.120.20', '2012-04-09 13:43:11');
INSERT INTO `adminvisitlog` VALUES (554, '140.117.120.20', '2012-04-11 14:21:40');
INSERT INTO `adminvisitlog` VALUES (555, '140.117.120.20', '2012-04-11 14:21:47');
INSERT INTO `adminvisitlog` VALUES (556, '140.117.120.20', '2012-04-11 14:21:47');
INSERT INTO `adminvisitlog` VALUES (557, '140.117.120.20', '2012-04-11 14:49:10');
INSERT INTO `adminvisitlog` VALUES (558, '140.117.120.20', '2012-04-11 14:49:10');
INSERT INTO `adminvisitlog` VALUES (559, '140.117.169.193', '2012-04-23 21:11:58');
INSERT INTO `adminvisitlog` VALUES (560, '140.117.169.193', '2012-04-23 21:12:04');
INSERT INTO `adminvisitlog` VALUES (561, '140.117.169.193', '2012-04-23 21:12:04');
INSERT INTO `adminvisitlog` VALUES (562, '140.117.169.193', '2012-04-23 21:25:19');

-- --------------------------------------------------------

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

INSERT INTO `answer` VALUES (1, 3, '很少需要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (1, 2, '經常需要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (2, 6, '1-5年前', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (2, 5, '即時性資料(當年度) ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (2, 4, '不需要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (2, 3, '很少需要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (2, 2, '經常需要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (2, 1, '總是需要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (3, 1, '每日', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (3, 2, '每週', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (3, 3, '每月', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (3, 4, '每二~六個月', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (3, 5, '每半年以上', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (4, 4, '不需要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (4, 5, '學術性電子期刊(例如：Nature、Science、中山管理評論、教育與心理研究、公共行政學報等類型)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (4, 6, '通俗性電子雜誌(例如：商業周刊、財訊等刊；或MagV、UDN等平台之電子雜誌)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (4, 7, '數位博碩士論文 (例如：PQDT、中國博碩士論文全文資料庫等)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 3, '學習需要', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 4, '繳交作業、撰寫論文', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 5, '瞭解專業領域之研究趨勢', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 6, '無特定目的之瀏覽', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (4, 3, '很少需要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (5, 2, '教學所需', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 1, '進行研究', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 1, '未曾遇到困難', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 2, '無法連線登入使用', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 3, '找不到所需資料', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 4, '無全文', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 5, '連線速度太慢', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 6, '對系統介面不熟悉', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 7, '下載、列印或複製問題', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 8, '其他：', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 1, '老師指引', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 2, '同儕分享', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 3, '專業機構(如學會)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 4, '圖書館網站', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 5, '圖書館推廣(海報文宣.電子報.E-mail等)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 6, '圖書館講習課程', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 7, '詢問圖書館館員', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 8, '其他：', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (8, 1, '線上使用說明', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (8, 2, '館訊簡介、海報文宣', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (8, 3, '電子報、E-mail', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (8, 4, '網站公告', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (8, 5, '講習課程', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (8, 6, '館員參考諮詢服務', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (8, 7, '其他：', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 4, '不在此地點', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (9, 5, '校內-圖書館', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 6, '校內-辦公室', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 7, '校內-研究室、實驗室　', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 8, '校內-宿舍', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 9, '校內-其他', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 10, '校外-家裡 ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 4, '未曾使用', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (10, 3, '很少使用', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (10, 2, '經常使用', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (10, 1, '總是使用', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (11, 4, '不足夠', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (11, 3, '尚可', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (11, 2, '足夠', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (11, 1, '非常足夠', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (13, 6, 'EndNote', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (13, 7, 'Zotero', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (13, 8, 'Mendeley', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (13, 9, '其他:', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 1, '總是在此', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (9, 2, '經常在此', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (9, 3, '很少在此', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (5, 7, '滿足個人閱讀興趣', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 1, '使用方式簡單、友善', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 8, '其他：', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (1, 4, '不需要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (1, 1, '總是需要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (13, 2, '經常使用', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (13, 3, '很少使用', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (13, 4, '未曾使用', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (13, 5, 'Refworks ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (13, 1, '總是使用', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (4, 8, '電子書 (例如：Oxford Scholarship Online、Airiti Books華文電子書等)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (4, 9, '其他網路資源 (例如：Google Scholar)', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 11, '校外-其他 ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (1, 5, '中文', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (1, 6, '英文', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (1, 7, '其他語言:', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (2, 7, '5-10年以前', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (2, 8, '回溯性資料(10年以前)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (4, 2, '經常需要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (4, 1, '總是需要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (10, 5, '一般電腦（桌機、Notebook）', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 6, '平板電腦（iPad、EeePad...等）', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 7, '智慧型手機（iPhone、Sensation...等）', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 8, '其他:', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 5, '非常不足夠', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (11, 6, '沒使用過', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (11, 7, '平時期間', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 8, '期中期末考', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 2, '使用介面為中文', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 3, '使用介面為英文', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 4, '使用習慣', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 5, '可否下載安裝於單一電腦', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 6, '可否已註冊方式連線使用，非安裝於單一電腦', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 7, '可於網路同步備份', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 8, '書目存於電腦，無網路連線仍可使用', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 9, '書目存於網路，可於任何有網路的地方連線使用', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 10, '可與論文撰寫程式(word、latex…)結合', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 11, '可匯入PDF，自動擷取書目', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 12, '老師、同學推薦使用', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 13, '其他:', 1, 0, 0, ' ');

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- 
-- 列出以下資料庫的數據： `problem`
-- 

INSERT INTO `problem` VALUES (1, 1, '請問您使用資料的語文為何？', 1, 4);
INSERT INTO `problem` VALUES (2, 1, '請問您需要的研究資料時效為何？', 1, 4);
INSERT INTO `problem` VALUES (3, 1, '請問您使用電子資源之頻率為何？', 1, 1);
INSERT INTO `problem` VALUES (4, 1, '請問您使用的電子資源類型為何?', 1, 4);
INSERT INTO `problem` VALUES (5, 1, '請問您使用電子資源的主要動機為何？', 1, 2);
INSERT INTO `problem` VALUES (6, 1, '請問您使用電子資源較常遇到的困難為何？', 1, 2);
INSERT INTO `problem` VALUES (7, 1, '請問您較常透過何種管道得知圖書館電子資源相關服務資訊？', 1, 2);
INSERT INTO `problem` VALUES (8, 1, '圖書館提供的服務中，您覺得對使用電子資源最有幫助的是？', 1, 2);
INSERT INTO `problem` VALUES (9, 1, '您使用電子資源的地點為何？', 1, 4);
INSERT INTO `problem` VALUES (10, 1, '請問您透過哪些載具使用電子資源？', 1, 4);
INSERT INTO `problem` VALUES (11, 1, '請問您覺得圖資處(圖資大樓一至十樓)所提供之電腦設備是否足夠？', 1, 4);
INSERT INTO `problem` VALUES (12, 1, '除了本校現有的電子資源之外，請問您研究上還有哪些較常使用的電子資源?', 1, 3);
INSERT INTO `problem` VALUES (13, 2, '請問您使用那個書目管理工具？', 1, 4);
INSERT INTO `problem` VALUES (14, 2, '請問您選擇使用書目管理工具的考量為何?', 1, 2);

-- --------------------------------------------------------

-- 
-- 資料表格式： `topic`
-- 

CREATE TABLE `topic` (
  `id` int(4) NOT NULL auto_increment,
  `title` mediumtext NOT NULL,
  `hint` varchar(1000) default NULL,
  `visible` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

-- 
-- 列出以下資料庫的數據： `topic`
-- 

INSERT INTO `topic` VALUES (1, '電子資源的使用需求', '※電子資源：泛指資料庫、電子期刊、電子書、數位博碩士論文等，以數位方式儲存，需透過電腦讀取之資料。', 1);
INSERT INTO `topic` VALUES (2, '書目管理工具之使用現況', '※書目管理工具：即是可協助管理文獻資料，使用者查詢資料時，可以將資料庫的書目資料蒐集匯入書目管理工具中，並分類管理；而撰寫論文時能自動編輯參考文獻格式，在原稿中插入引用文獻 。<br />\n<br />\n目前書目管理工具種類眾多，為瞭解您的使用需求，敬請答覆以下問題以做為未來採購與推廣之參考。<br />\n', 1);
INSERT INTO `topic` VALUES (3, '圖書館電子書之使用現況', '', 1);
INSERT INTO `topic` VALUES (4, '未曾使用圖書館電子書之讀者', '', 1);
INSERT INTO `topic` VALUES (5, '圖書館電子書的使用習慣', '', 1);
INSERT INTO `topic` VALUES (6, '請就圖書館電子書的內容與提供方式，依您重視的程度勾選適合的選項 ', '', 1);
INSERT INTO `topic` VALUES (7, '以下為臺灣學術電子書聯盟所引進之電子書資料庫，請針對您曾使用過的資料庫，依使用滿意程度勾選適合的選項', '', 1);
INSERT INTO `topic` VALUES (8, '圖書館所提供的電子書整體滿意度', '', 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=100556 DEFAULT CHARSET=utf8 AUTO_INCREMENT=100556 ;

-- 
-- 列出以下資料庫的數據： `user`
-- 

INSERT INTO `user` VALUES ('2012', 100551, '顏玉信', 'A0970190', '4', 'K', '圖資處參考諮詢組', 'yuhsin@mail.nsysu.edu.tw', '分機2455', '["q_1a_r4_0","q_1a_r5_1","q_1a_r6_0","q_2a_r4_1","q_2a_r5_0","q_2a_r6_1","q_2a_r7_1","q_3a_1","q_4a_r4_2","q_4a_r5_1","q_4a_r6_1","q_4a_r7_2","q_4a_r8_1","q_5a_2","q_5a_3","q_5a_4","q_5a_5","q_6a_1","q_6a_3","q_6a_6","q_7a_1","q_7a_4","q_7a_5","q_7a_6","q_8a_0","q_8a_5","q_9a_r4_3","q_9a_r5_2","q_9a_r6_3","q_9a_r7_2","q_9a_r8_1","q_9a_r9_2","q_9a_r10_2","q_10a_r4_1","q_10a_r5_2","q_10a_r6_1","q_11a_4","q_13a_r4_3","q_13a_r5_2","q_13a_r6_1","q_13a_r7_1","q_13a_r8_2","q_14a_0","q_15a_1","q_15a_8"]', '', '', '140.117.120.32', '2012-04-08 23:36:50', '2012-04-08 23:24:22');
INSERT INTO `user` VALUES ('2012', 100550, '黃靖傑', 'B974020006', '1', '4', '資訊管理學系', 'b974020006@student.nsysu.edu.tw', '0928023188', '["q_1a_r4_1","q_1a_r5_1","q_1a_r6_1","q_2a_r4_1","q_2a_r5_2","q_2a_r6_2","q_2a_r7_1","q_3a_1","q_4a_r4_2","q_4a_r5_2","q_4a_r6_1","q_4a_r7_3","q_4a_r8_3","q_5a_0","q_5a_4","q_5a_5","q_6a_1","q_6a_3","q_6a_6","q_7a_4","q_7a_6","q_7a_7","q_8a_0","q_8a_3","q_8a_5","q_9a_r4_0","q_9a_r5_0","q_9a_r6_0","q_9a_r7_0","q_9a_r8_0","q_9a_r9_0","q_9a_r10_0","q_10a_r4_1","q_10a_r5_0","q_10a_r6_3","q_11a_1","q_13a_r4_1","q_13a_r5_0","q_13a_r6_0","q_13a_r7_3","q_13a_r8_3","q_14a_1","q_15a_4","q_15a_10"]', '', '', '140.117.120.209', '2012-04-08 23:38:19', '2012-04-05 13:28:47');
INSERT INTO `user` VALUES ('2012', 100553, '蘇蓉波', 'A0990356', '4', 'K', '圖資處參考諮詢組', 'jungposu@mail.nsysu.edu.tw', '2454', '["q_1a_r4_1","q_1a_r5_1","q_1a_r6_1","q_2a_r4_1","q_2a_r5_2","q_2a_r6_2","q_2a_r7_1","q_3a_1","q_4a_r4_2","q_4a_r5_2","q_4a_r6_1","q_4a_r7_3","q_4a_r8_3","q_5a_0","q_5a_4","q_5a_5","q_6a_1","q_6a_3","q_6a_6","q_7a_4","q_7a_6","q_7a_7","q_8a_0","q_8a_3","q_8a_5","q_9a_r4_0","q_9a_r5_0","q_9a_r6_0","q_9a_r7_0","q_9a_r8_0","q_9a_r9_0","q_9a_r10_0","q_10a_r4_1","q_10a_r5_0","q_10a_r6_3","q_11a_1","q_13a_r4_1","q_13a_r5_0","q_13a_r6_0","q_13a_r7_3","q_13a_r8_3","q_14a_1","q_15a_4","q_15a_10"]', 'q_12a_options@This is a test', 'q_1a_r6@西班牙語', '140.117.120.21', '2012-04-09 09:03:49', '2012-04-18 19:47:37');
INSERT INTO `user` VALUES ('2012', 100549, '許妙鸞', 'M993040038', '2', '3', '資訊工程學系碩士班', 'miaw52777@gmail.com', '0932747492', '["q_1a_r4_1","q_1a_r5_1","q_1a_r6_1","q_2a_r4_1","q_2a_r5_2","q_2a_r6_2","q_2a_r7_1","q_3a_1","q_4a_r4_2","q_4a_r5_2","q_4a_r6_1","q_4a_r7_3","q_4a_r8_3","q_5a_0","q_5a_4","q_5a_5","q_6a_1","q_6a_3","q_6a_6","q_7a_4","q_7a_6","q_7a_7","q_8a_0","q_8a_3","q_8a_5","q_9a_r4_0","q_9a_r5_0","q_9a_r6_0","q_9a_r7_0","q_9a_r8_0","q_9a_r9_0","q_9a_r10_0","q_10a_r4_1","q_10a_r5_0","q_10a_r6_3","q_11a_1","q_13a_r4_1","q_13a_r5_0","q_13a_r6_0","q_13a_r7_3","q_13a_r8_3","q_14a_1","q_15a_4","q_15a_10"]', 'q_12a_options@rty4ty，4554', 'q_1a_r6@台語,q_4a_r8@IEEE,q_13a_r8@SFX,q_15a_10@4565', '140.117.169.193', '2012-04-16 15:28:03', NULL);
INSERT INTO `user` VALUES ('2012', 100554, '孫繡紋', 'A0800062', '4', 'K', '圖資處採錄編目組', 'sunsw@mail.nsysu.edu.tw', '2410', '["q_1a_r4_0","q_1a_r5_1","q_2a_r4_0","q_2a_r5_0","q_2a_r6_1","q_2a_r7_2","q_3a_1","q_4a_r4_1","q_4a_r5_0","q_4a_r6_0","q_4a_r7_0","q_5a_2","q_5a_3","q_6a_3","q_7a_0","q_7a_1","q_8a_0","q_8a_1","q_8a_5","q_9a_r4_0","q_9a_r5_0","q_9a_r6_3","q_9a_r7_3","q_9a_r8_3","q_9a_r9_3","q_9a_r10_3","q_10a_r4_0","q_10a_r5_3","q_10a_r6_3","q_11a_1","q_13a_r4_2","q_13a_r5_3","q_13a_r6_3","q_13a_r7_3","q_14a_1","q_15a_0","q_15a_1","q_15a_2","q_15a_3"]', '', '', '140.117.120.22', '2012-04-10 09:01:42', '2012-04-10 09:18:21');
INSERT INTO `user` VALUES ('2012', 100555, '李淑敏', 'A0950095', '4', '3', '資訊工程學系', 'smli@cse.nsysu.edu.tw', '', '[]', '', '', '140.117.120.20', '2012-04-12 11:17:35', NULL);
