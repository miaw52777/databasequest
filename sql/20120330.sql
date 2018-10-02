-- phpMyAdmin SQL Dump
-- version 2.6.4-pl1
-- http://www.phpmyadmin.net
-- 
-- 主機: localhost
-- 建立日期: Apr 02, 2012, 09:50 PM
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
) ENGINE=MyISAM AUTO_INCREMENT=520 DEFAULT CHARSET=latin1 AUTO_INCREMENT=520 ;

-- 
-- 列出以下資料庫的數據： `adminvisitlog`
-- 

INSERT INTO `adminvisitlog` VALUES (517, '140.117.169.193', '2012-04-02 21:17:21');
INSERT INTO `adminvisitlog` VALUES (518, '140.117.169.193', '2012-04-02 21:21:28');
INSERT INTO `adminvisitlog` VALUES (519, '140.117.169.193', '2012-04-02 21:41:09');

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
INSERT INTO `answer` VALUES (2, 5, '即時性資料(當年度) ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (2, 6, '1-5年前', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (2, 7, '5-10年以前', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (2, 8, '回溯性資料(10年以前)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (3, 1, '每日', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (3, 2, '每週', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (3, 3, '每月', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (3, 4, '每二~六個月', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (3, 5, '每半年以上', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (4, 6, '通俗性電子雜誌(例如：商業周刊、財訊等刊；或MagV、UDN等平台之電子雜誌)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (4, 4, '不需要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (4, 5, '學術性電子期刊(例如：Nature、Science、中山管理評論、教育與心理研究、公共行政學報等類型)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (4, 3, '很少需要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (4, 2, '偶爾需要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (4, 1, '經常需要', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (5, 6, '無特定目的之瀏覽', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 5, '瞭解專業領域之研究趨勢', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 4, '繳交作業、撰寫論文', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 3, '學習需要', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 2, '教學所需', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 1, '進行研究', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (4, 7, '數位博碩士論文 (例如：PQDT、中國博碩士論文全文資料庫等)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (4, 8, '電子書', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (4, 9, '其他網路資源', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 7, '滿足個人閱讀興趣', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 8, '其他：', 0, 0, 0, ' ');
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
INSERT INTO `answer` VALUES (9, 1, '經常在此', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (9, 2, '偶爾在此', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (9, 3, '很少在此', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (9, 4, '不在此地點', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (9, 5, '校內-圖書館', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 6, '校內-辦公室  ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 7, '校內-研究室、實驗室   　', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 8, '校內-宿舍 ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 9, '校內-其他', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 10, '校外-家裡 　　', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 11, '校外-其他  ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 1, '經常', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (10, 2, '偶爾', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (10, 3, '很少', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (10, 4, '沒用過', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (10, 5, '一般電腦           　　', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 6, '平板電腦', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 7, '智慧型手機', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 1, '非常足夠', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 2, '足夠', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 3, '尚可', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 4, '不足夠', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 5, '非常不足夠', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (13, 1, '經常使用', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (13, 2, '偶爾使用', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (13, 3, '很少使用', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (13, 4, '未曾使用過', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (13, 5, 'Refworks ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (13, 6, 'EndNote', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (13, 7, 'Zotero', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (13, 8, 'Mendeley', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (13, 9, '其他', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 1, '有使用過 ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 2, '未曾使用過', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 1, '使用方式簡單、友善', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 2, '使用介面為中文', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 3, '使用介面為英文', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 4, '使用習慣 ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 5, '可免費使用 ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 6, '可於網路同步備份', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 7, '書目存於電腦，無網路連線仍可使用', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 8, '書目存於網路，可於任何有網路的地方連線使用', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 9, '可與論文撰寫程式(word、latex…)結合', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 10, '可匯入PDF，自動擷取書目', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 11, '其他:', 1, 0, 0, ' ');

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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- 
-- 列出以下資料庫的數據： `problem`
-- 

INSERT INTO `problem` VALUES (1, 1, '請問您使用資料的語言為何？', 1, 4);
INSERT INTO `problem` VALUES (2, 1, '請問您需要的研究資料時效為何？', 1, 4);
INSERT INTO `problem` VALUES (3, 1, '請問您使用電子資源之頻率為何？', 1, 1);
INSERT INTO `problem` VALUES (4, 1, '您使用的電子資源類型為何？', 1, 4);
INSERT INTO `problem` VALUES (5, 1, '請問您使用電子資源的主要動機為何？', 1, 2);
INSERT INTO `problem` VALUES (6, 1, '請問您使用電子資源較常遇到的困難為何？', 1, 2);
INSERT INTO `problem` VALUES (7, 1, '請問您較常透過何種管道得知圖書館電子資源相關服務資訊？', 1, 2);
INSERT INTO `problem` VALUES (8, 1, '圖書館提供的服務中，您覺得對使用電子資源最有幫助的是？', 1, 2);
INSERT INTO `problem` VALUES (9, 1, '您使用電子資源的地點為何？', 1, 4);
INSERT INTO `problem` VALUES (10, 1, '您使用電子資源之載具為何？', 1, 4);
INSERT INTO `problem` VALUES (11, 1, '您覺得圖書館所提供之電腦設備是否足夠？', 1, 1);
INSERT INTO `problem` VALUES (12, 1, '除了本校既有的數位資源之外，你是否有其它想推薦的數位資源？', 1, 3);
INSERT INTO `problem` VALUES (13, 2, '請問您使用那個書目管理工具？', 1, 4);
INSERT INTO `problem` VALUES (14, 2, '您是否有使用過本處自建的書目管理工具網站？其中主要介紹EndNote。', 1, 1);
INSERT INTO `problem` VALUES (15, 2, '您選擇使用書目管理工具的考量為何？', 1, 2);

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

INSERT INTO `topic` VALUES (1, '圖書資源的使用需求', '※電子資源：泛指資料庫、電子期刊、電子書、數位博碩士論文等，以數位方式儲存，需透過電腦讀取之資料。', 1);
INSERT INTO `topic` VALUES (2, '書目管理工具之使用現況', '※目前本處提供Refworks與EndNote兩種書目管理工具，因經費限制，未來僅能採購一種，為瞭解您的使用需求，敬請答覆以下問題以做為未來採購之參考。', 1);
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
) ENGINE=MyISAM AUTO_INCREMENT=100548 DEFAULT CHARSET=utf8 AUTO_INCREMENT=100548 ;

-- 
-- 列出以下資料庫的數據： `user`
-- 

INSERT INTO `user` VALUES ('2012', 100541, '康珮熏', 'A0950083', '4', 'K', '圖資處參考諮詢組', 'kpsh@staff.nsysu.edu.tw', '2452', '["q_1a_r0_0","q_1a_r1_1","q_1a_r2_0","q_14a_2","q_14a_4","q_15a_1","q_15a_3"]', '', '[]', '140.117.120.20', '2012-02-09 14:21:42', NULL);
INSERT INTO `user` VALUES ('2012', 100547, '許妙鸞', 'M993040038', '2', '3', '資訊工程學系碩士班', 'miaw52777@gmail.com', '0932747492', '[]', '', '', '140.117.169.193', '2012-04-02 21:25:03', NULL);
