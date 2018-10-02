-- phpMyAdmin SQL Dump
-- version 2.11.9.6
-- http://www.phpmyadmin.net
--
-- 主機: localhost
-- 建立日期: Nov 30, 2011, 10:05 AM
-- 伺服器版本: 5.0.77
-- PHP 版本: 5.2.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- 資料庫: `quest`
--

-- --------------------------------------------------------

--
-- 資料表格式： `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `user` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  PRIMARY KEY  (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=big5;

--
-- 列出以下資料庫的數據： `admin`
--

INSERT INTO `admin` (`user`, `pass`) VALUES
('admin', 'libweek@)!!');

-- --------------------------------------------------------

--
-- 資料表格式： `adminvisitlog`
--

CREATE TABLE IF NOT EXISTS `adminvisitlog` (
  `id` int(11) NOT NULL auto_increment,
  `ipstamp` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1130 ;


CREATE TABLE IF NOT EXISTS `answer` (
  `quest_id` int(11) NOT NULL,
  `optId` varchar(1) NOT NULL,
  `is_answer` tinyint(4) NOT NULL,
  `options` varchar(255) NOT NULL,
  UNIQUE KEY `quest_id_2` (`quest_id`,`optId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 列出以下資料庫的數據： `answer`
--

INSERT INTO `answer` (`quest_id`, `optId`, `is_answer`, `options`) VALUES
(48, '3', 1, '2004'),
(9, '4', 0, '1,000以下'),
(8, '1', 0, 'Contemporary Jazz'),
(4, '4', 0, 'ProQuest Dissertations and Theses (PQDT)'),
(4, '3', 1, '數位化論文典藏聯盟 (DDC)'),
(3, '4', 0, '25頁'),
(8, '2', 0, 'Folk Legends'),
(5, '1', 0, '利用資料庫總覽網頁查詢'),
(5, '2', 1, '利用西文全文電子期刊查詢'),
(10, '4', 1, 'Canadian Journal of Criminology and Criminal Justice'),
(10, '3', 0, 'portal: Libraries and the Academy'),
(3, '2', 0, '20頁'),
(11, '3', 0, 'The Art bulletin'),
(11, '2', 0, 'Europe'),
(11, '1', 0, 'Victorian studies'),
(12, '1', 0, '8篇'),
(12, '2', 1, '3篇'),
(13, '3', 0, '2009'),
(13, '4', 0, '2010'),
(45, '1', 0, '聯合知識庫'),
(55, '1', 0, 'NOKIA CORP'),
(56, '1', 1, 'Advanced Synthesis & Catalysis | Impact Factor: 5.25| 1/70 (Chemistry Applied) '),
(14, '3', 0, 'CISCO SYSTEMS INC'),
(14, '2', 0, ' TEXAS INSTRUMENTS INC'),
(14, '1', 1, 'COGO GROUP INC'),
(15, '2', 0, '由圖資處首頁進入資料庫總覽，搜尋“Aremos”後點選連結進入。'),
(15, '3', 0, '先在AREMOS網站搜尋資料變數代號。'),
(15, '4', 1, '再連到網路磁碟機“Z:”選擇欲查找資料庫的代碼(*.bnk)。'),
(16, '1', 0, '1986年'),
(16, '2', 1, '1988年'),
(17, '2', 0, 'CHIU CN'),
(17, '3', 0, 'WONG KIN LU '),
(18, '3', 1, 'Journal'),
(18, '2', 0, 'Book Series'),
(19, '3', 1, 'Signatures of Supersymmetry at the LHC'),
(19, '2', 1, 'Early Supersymmetry Searches with ATLAS Detector at LHC'),
(20, '1', 0, '1000篇以下'),
(20, '2', 1, '1001 - 3000篇'),
(21, '4', 0, '1961-2003'),
(21, '3', 0, '1961-2000'),
(21, '2', 1, '1961-1998'),
(21, '1', 0, '1961-1996'),
(19, '1', 0, 'Searching for supersymmetry at LEP/LHC'),
(34, '4', 1, '6位'),
(30, '1', 0, '國際標準期刊號'),
(30, '2', 1, '作者所屬機構/學校'),
(30, '3', 0, '期刊名或電子書名'),
(30, '4', 0, '參考書目'),
(31, '4', 1, '研討會議論文集'),
(33, '1', 1, '農業生物技術'),
(7, '2', 0, 'The Metropolitan Museum of Art Bulletin'),
(7, '3', 0, 'Recent Acquisitions'),
(22, '2', 0, '英雄本色'),
(23, '2', 1, '4樓參考諮詢組'),
(23, '1', 0, '1樓集思軒'),
(25, '4', 1, '10樓'),
(1, '3', 1, '高雄空中大學'),
(26, '1', 1, '全國文獻傳遞服務系統NDDS'),
(28, '2', 1, 'Walking Library 電子期刊資料庫 (Acer Walking Library)'),
(1, '2', 0, '高雄應用科技大學'),
(1, '1', 0, '高雄餐旅大學'),
(22, '1', 1, '紅磨坊'),
(27, '2', 0, 'HG4028.M4.R48 2007'),
(4, '2', 0, '臺灣博碩士論文知識加值系統(NDLTD)'),
(26, '2', 0, '高高屏代借代還服務'),
(23, '3', 0, '4樓語言自學教室'),
(22, '3', 0, '34街的奇蹟'),
(24, '3', 1, '全國圖書書目資訊網'),
(24, '2', 0, '出版期刊指南系統'),
(24, '1', 0, '臺灣期刊論文索引系統'),
(2, '2', 0, '成功大學(含成大醫圖) '),
(3, '3', 1, '10頁'),
(5, '3', 0, '利用eThesys 碩博士論文查詢'),
(27, '3', 0, 'HD553 F67 1971'),
(25, '3', 0, '9樓'),
(28, '3', 0, '遠見雜誌知識庫'),
(28, '4', 0, '科學人雜誌知識庫'),
(29, '2', 0, '穿夾腳拖鞋進圖書館'),
(7, '1', 1, 'American Art'),
(8, '3', 1, 'Korea Music'),
(9, '3', 0, '1,001~2,000'),
(48, '4', 0, '2005'),
(11, '4', 1, 'Journal of adolescence'),
(31, '1', 0, '電子期刊'),
(31, '2', 0, '電子書'),
(32, '2', 0, '1,500~3,000篇'),
(33, '3', 1, '工業衛生'),
(33, '4', 1, '空氣品質'),
(31, '3', 0, '實驗室指南(protocols)'),
(33, '2', 1, '環境影響報告 (U.S.)'),
(34, '1', 0, '3位'),
(35, '1', 0, '不到100種'),
(36, '1', 0, '1958'),
(37, '3', 0, '財經研究相關加值(ex.公司治理、市場多因子…etc)'),
(37, '1', 1, '報紙新聞資料'),
(37, '2', 0, '亞洲地區財經資料庫'),
(38, '4', 0, '1991'),
(39, '3', 1, '符合條件的有NEC CORPORATION'),
(39, '4', 0, '可以看到有德國的企業公司'),
(40, '3', 1, 'SmartText 檢索'),
(40, '2', 0, '尋找我的所有搜尋項目'),
(41, '3', 0, 'Dendritic cells: Understanding immunogenicity '),
(9, '2', 0, '2,001~3,000'),
(42, '2', 0, '關鍵詞有張愛玲、蒼涼、入世、安穩'),
(42, '3', 1, '作者單位為楚雄師範學院'),
(39, '2', 0, '全部都是Public的公司'),
(42, '1', 0, '作者為李桂萍'),
(2, '1', 1, '清華大學'),
(34, '2', 0, '4位'),
(38, '3', 0, '1989'),
(34, '3', 0, '5位'),
(25, '2', 0, '8樓'),
(28, '1', 0, '天下雜誌知識庫'),
(29, '3', 0, '在館內飲食'),
(41, '2', 0, 'CD8(+)CD205(+) Splenic Dendritic Cells Are Specialized to Induce Foxp3(+) Regulatory T Cells '),
(40, '4', 0, '所列選項皆非'),
(8, '4', 0, 'Relaxation Music'),
(43, '4', 0, 'aa'),
(43, '3', 0, 'ss'),
(43, '2', 0, 'ss'),
(43, '1', 1, 'sa'),
(32, '3', 1, '500~1,500篇'),
(36, '2', 0, '1968'),
(6, '1', 1, 'The American Journal of Sociology'),
(38, '2', 1, '1987'),
(14, '4', 0, 'NOKIA CORP'),
(15, '1', 0, '親自到圖書館4F參考組換證使用PC2或PC3電腦。'),
(35, '2', 0, '100~180種'),
(17, '1', 1, 'WONG KL'),
(18, '1', 0, 'Book'),
(19, '4', 0, 'Prospects for discovering supersymmetry at the LHC'),
(20, '3', 0, '3001 - 5000篇'),
(20, '4', 0, '5001篇以上'),
(32, '4', 0, '不到500篇'),
(32, '1', 0, '超過3,000篇'),
(2, '3', 0, '政治大學'),
(2, '4', 0, '交通大學'),
(1, '4', 0, '文藻外語學院'),
(4, '1', 0, '中山大學學位論文系統 (eThesys)'),
(3, '1', 0, '15頁'),
(5, '4', 0, '利用中山大學館藏目錄查詢'),
(6, '2', 1, 'ISSN：0002-9602'),
(6, '3', 0, 'ISSN：0002-9246'),
(44, '2', 0, '顫慄100步'),
(26, '3', 0, '雲嘉南圖書聯盟'),
(26, '4', 0, '所列選項皆是'),
(29, '1', 0, '廁所內的衛生紙是免費的，所以就隨心所欲地無限量取用'),
(10, '2', 1, 'TDR: The Drama Review'),
(41, '1', 0, 'Differential antigen processing by dendritic cell subsets in vivo '),
(40, '1', 0, '布林邏輯/字句'),
(41, '4', 1, 'Taking dendritic cells into medicine '),
(7, '4', 0, 'Metropolitan Museum Journal'),
(42, '4', 0, '出自於現代語文該本期刊'),
(38, '1', 1, '1985'),
(45, '3', 0, '台灣新聞智慧網'),
(45, '2', 0, '慧科大中華新聞網'),
(46, '1', 0, 'The Music Index Online (音樂索引資料庫)'),
(46, '2', 0, 'Oxford Music Online (原Grove Music Online(GM) [葛洛夫音樂資料庫])'),
(46, '3', 1, '拿索斯線上音樂圖書館'),
(46, '4', 0, 'RILM Abstracts of Music Literature[RILM音樂文獻資料庫][EBSCOhost]'),
(47, '4', 0, '台灣博碩士論文知識加值系統'),
(47, '3', 1, '全國期刊聯合目錄'),
(47, '2', 0, '出版期刊指南系統'),
(47, '1', 0, '臺灣期刊論文索引系統'),
(48, '1', 0, '1997'),
(48, '2', 0, '1998'),
(49, '1', 1, '復旦大學'),
(49, '2', 0, '南開大學'),
(50, '1', 0, '19'),
(50, '2', 0, '20'),
(51, '1', 0, '4種'),
(51, '2', 0, '5種'),
(52, '4', 0, '44'),
(52, '3', 1, '34'),
(53, '4', 0, '27'),
(53, '3', 0, '25'),
(53, '2', 0, '20'),
(53, '1', 1, '18'),
(54, '4', 0, '280'),
(54, '3', 1, '279'),
(54, '2', 0, '278'),
(54, '1', 0, '277'),
(55, '2', 0, 'SONY CORP'),
(55, '3', 0, 'CISCO SYSTEMS INC'),
(56, '2', 1, 'CA: A Cancer Journal for Clinicians | Impact Factor: 94.333 | 1/185 (Oncology)'),
(56, '3', 1, 'Child Development | Impact Factor: 3.77 | 1/50 (Psychology Educational) '),
(56, '4', 1, 'Molecular Nutrition & Food Research | Impact Factor: 4.713 | 1/128 (Food Science & Technology) '),
(57, '4', 0, 'Dr Mi-Hu Wang'),
(57, '3', 1, 'Dr Li-An Ho'),
(58, '2', 0, 'China Psychology Association 中國心理學會'),
(58, '3', 1, 'American Psychology Association 美國心理學會'),
(58, '4', 0, 'Australian Psychology Association 澳洲心理學會'),
(59, '3', 0, '阿爾夫文. 雨果 (Hugo Alfven)'),
(59, '2', 0, '貝多芬(Ludwig Von Beethoven)'),
(59, '1', 1, '彼得·伊利奇·柴科夫斯基(Tchaikovsky, Pyotr Il'),
(60, '1', 0, '小木偶'),
(60, '2', 1, '湯姆歷險記'),
(60, '3', 0, '愛麗絲夢遊仙境'),
(60, '4', 1, '頑童歷險記'),
(61, '4', 1, '實驗鼠學'),
(61, '3', 0, '藝術學科'),
(61, '2', 0, '社會科學'),
(61, '1', 0, '人文'),
(62, '2', 1, 'COMMUN MONOGR'),
(62, '3', 0, 'J COMPUT-MEDIAT COMM'),
(63, '3', 0, 'Asian Academy of Management Journal of Accounting & Finance'),
(63, '2', 0, 'Asian Academy of Management journal'),
(63, '1', 1, 'Journal of Asian Public Policy'),
(12, '3', 0, '12篇'),
(64, '3', 0, 'Raman spectroscopy of graphene and carbon nanotubes'),
(64, '4', 0, 'Ultracold atomic gases in optical lattices: mimicking condensed matter physics and beyond'),
(64, '1', 0, 'Properties of graphene: a theoretical perspective'),
(64, '2', 1, 'The puzzle of high temperature superconductivity in layered iron pnictides and chalcogenides'),
(18, '4', 0, 'Reference Work'),
(25, '1', 0, '7樓'),
(27, '1', 0, 'HD108.15 P574 2001'),
(29, '4', 1, '所列選項皆否'),
(22, '4', 0, '影武者'),
(24, '4', 0, '台灣博碩士論文知識加值系統'),
(44, '1', 1, '陌生的孩子'),
(62, '1', 0, 'J COMMUN'),
(9, '1', 1, '3,001以上'),
(17, '4', 0, 'MOHANAN P '),
(23, '4', 0, '10樓電子書坊'),
(45, '4', 1, '全部皆是'),
(50, '3', 1, '21'),
(16, '3', 0, '1990年'),
(16, '4', 0, '1992年'),
(35, '3', 1, '180~250種'),
(35, '4', 0, '超過250種'),
(36, '3', 0, '1978'),
(36, '4', 1, '1988'),
(37, '4', 0, '所列選項皆非'),
(39, '1', 0, '共可以找到五間公司'),
(49, '3', 0, '北京大學'),
(49, '4', 0, '中山大學'),
(62, '4', 0, 'PUBLIC OPIN QUART'),
(59, '4', 0, '路易吉﹒阿迪蒂 (Luigi Arditi)'),
(12, '4', 0, '1篇'),
(13, '1', 0, '2007'),
(13, '2', 1, '2008'),
(57, '2', 0, 'Dr Kowk Wai'),
(57, '1', 0, 'Dr Juni Chan'),
(58, '1', 0, 'British Psychology Association 英國心理學會'),
(63, '4', 0, 'African and Asian studies'),
(55, '4', 1, 'SIEMENS AG(SIE)'),
(50, '4', 0, '22'),
(51, '3', 1, '6種'),
(51, '4', 0, '7種'),
(52, '2', 0, '24'),
(52, '1', 0, '14'),
(10, '1', 0, 'Modern Drama'),
(44, '3', 0, '34街的奇蹟'),
(44, '4', 0, '盲流感'),
(6, '4', 0, 'The American Journal of Economics and Sociology'),
(27, '4', 1, 'HD9.I42 N292');

-- --------------------------------------------------------

--
-- 資料表格式： `award`
--

CREATE TABLE IF NOT EXISTS `award` (
  `year` int(5) NOT NULL,
  `level` int(3) NOT NULL,
  `score` int(3) NOT NULL,
  `num` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5;

--
-- 列出以下資料庫的數據： `award`
--

INSERT INTO `award` (`year`, `level`, `score`, `num`) VALUES
(2011, 3, 0, 10),
(2011, 2, 30, 10),
(2011, 1, 100, 10);

-- --------------------------------------------------------

--
-- 資料表格式： `awardlist`
--

CREATE TABLE IF NOT EXISTS `awardlist` (
  `year` int(4) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `level` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5;


-- --------------------------------------------------------

--
-- 資料表格式： `college`
--

CREATE TABLE IF NOT EXISTS `college` (
  `id` varchar(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- 列出以下資料庫的數據： `college`
--

INSERT INTO `college` (`id`, `name`) VALUES
('1', '文學院'),
('2', '理學院'),
('3', '工學院'),
('4', '管理學院'),
('5', '海科院'),
('6', '社科院'),
('K', '文學院'),
('A', '文學院');

-- --------------------------------------------------------

--
-- 資料表格式： `depart`
--

CREATE TABLE IF NOT EXISTS `depart` (
  `id` int(11) NOT NULL auto_increment,
  `college_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `college_id` (`college_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- 列出以下資料庫的數據： `depart`
--

INSERT INTO `depart` (`id`, `college_id`, `name`) VALUES
(1, 1, '中國文學系'),
(2, 1, '外國語文學系'),
(3, 1, '音樂系'),
(4, 1, '劇場藝術學系'),
(5, 1, '哲學研究所'),
(6, 2, '理學院大一不分系'),
(7, 2, '化學系'),
(8, 2, '物理系'),
(9, 2, '生物科學系'),
(10, 2, '應用數學系'),
(11, 2, '生物醫學研究所'),
(12, 3, '工學院大一不分系'),
(13, 3, '電機工程學系'),
(14, 3, '機械與機電工程學系'),
(15, 3, '材料與光電科學學系'),
(16, 3, '環境工程研究所'),
(17, 3, '光電工程學系'),
(18, 3, '通訊工程研究所'),
(19, 4, '管院大一大二不分系'),
(20, 4, '企業管理學系'),
(21, 4, '資訊管理學系'),
(22, 4, '財務管理學系'),
(23, 4, '公共事務管理研究所'),
(24, 4, '人力資源管理研究所'),
(25, 4, '傳播管理研究所'),
(26, 4, '醫務管理研究所'),
(27, 5, '海洋生物科技暨資源學系'),
(28, 5, '海洋環境及工程學系'),
(29, 5, '海洋生物研究所'),
(30, 5, '海洋地質及化學研究所'),
(31, 5, '海下科技暨應用海洋物理研究所'),
(32, 5, '海洋事務研究所'),
(33, 6, '政治經濟學系'),
(34, 6, '經濟學研究所'),
(35, 6, '政治學研究所'),
(36, 6, '教育研究所'),
(37, 6, '社會學研究所'),
(38, 6, '中國與亞太區域研究所'),
(39, 3, '資訊工程學系');

-- --------------------------------------------------------

--
-- 資料表格式： `ident`
--

CREATE TABLE IF NOT EXISTS `ident` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(5) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 列出以下資料庫的數據： `ident`
--

INSERT INTO `ident` (`id`, `name`) VALUES
(1, '大學生'),
(2, '碩士生'),
(3, '博士生'),
(4, '教師/教授');

-- --------------------------------------------------------

--
-- 資料表格式： `problem`
--

CREATE TABLE IF NOT EXISTS `problem` (
  `Id` int(4) NOT NULL auto_increment,
  `cat` tinyint(1) NOT NULL,
  `question` text NOT NULL,
  `hint` text NOT NULL,
  `solution` text NOT NULL,
  `score` int(11) NOT NULL,
  `visible` tinyint(1) NOT NULL default '0',
  `is_multiple` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

--
-- 列出以下資料庫的數據： `problem`
--

INSERT INTO `problem` (`Id`, `cat`, `question`, `hint`, `solution`, `score`, `visible`, `is_multiple`) VALUES
(1, 1, '為整合高高屏區內24所大學圖書館之館藏資源，以互通有無，提升各校館藏利用價值，24校圖書館秉持資源共享之理念，相互對等互惠之原則，建立「圖書代借代還服務」，已積極推動圖書代借代還之館際合作，提升服務品質。請問下列哪一所學校不在圖書代借代還服務24校館際合作服務之列？', '<a target="_blank" href="http://lis.nsysu.edu.tw">圖資處首頁</a>', '<a target="_blank" href="http://lis.nsysu.edu.tw">圖資處首頁</a>>借書服務>高高屏代借代還', 10, 1, 0),
(2, 1, '為加速館際合作的時效性，本館與國內其他6所大學建立快速館際合作服務，申請件原則上在3個工作天內完成，複印件皆採Ariel傳送，借閱圖書以郵遞寄送。此項服務好處在於便利合作館師生節省時間與金錢，故在申請館際合作時，建議優先考慮這幾所學校。請問下面哪一所學校不在NDDS七校快速館際合作服務之列？', '館際合作服務', 'NDDS七校快速館際合作服務包含：成功大學(含成大醫圖)、中正大學、高雄醫學大學、交通大學、政治大學、高雄大學及中山大學，經各館同意加強辦理快速而有效之館際合作服務。<br />\n<p>※若想知道更多關於資料庫的利用資訊，歡迎參與<a target="_blank" href="http://reg.lib.nsysu.edu.tw:8080/activity/activityList?mainID=1">資料庫說明會</a>，或參閱<a target="_blank" href="http://lis.nsysu.edu.tw/files/11-1001-2651.php">資源利用課程學習網</a>。</p>', 10, 1, 0),
(3, 1, 'MyLibrary電子書平台，涵蓋超過2萬冊的電子書可供全校師生使用，請問其中的MyiLibrary電子書限制使用者一次下載頁數不得超過幾頁?', '<p>利用<a target="_blank" href="http://service.lib.nsysu.edu.tw/www/database/detail.php?Item=675">My <br />\nLibrary電子書平台</a>，該平台提供有“Download Multiple Pages”之功能</p>', '圖資處首頁→資料庫總覽→在"Database Search"中鍵入"myilibrary"按"<wbr>search"後點選"詳細資訊"more。<br />\n', 10, 1, 0),
(45, 1, '欲取得中文電子報紙的資料，可利用下列哪個資料庫？', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;<span class="style31">查特定資料類型(報紙)</span></p>', '‧聯合知識庫：為聯合線上公司於2001年2月正式成立的新聞資料庫網站，提供聯合報系 853 餘萬則新聞，並已回溯完成《聯合報》、《經濟日報》、《民生報》、《聯合晚報》、《星報》等五報，自創刊日迄今，一千多萬則新聞的數位化工程。<br />\n‧慧科大中華新聞網：收錄兩岸四地（中國、臺灣、香港、澳門）及亞洲之新聞報章、週刊、電台、雜誌及網站的新聞及資訊可，透過設定日期、地區、媒體等整合檢索方式篩選文章，或者是利用關鍵字搜尋。<br />\n‧台灣新聞智慧網：收錄「聯合報」、「自由時報」、「民生報」、「星報」、「中國時報」、「經濟日報」、「聯合報地方版」、「TTV台視新聞影音」、「中央日報」、「工商時 報」、「聯合晚報」、「人間福報」、「中華日報」及「蘋果日報」等主要報紙之全版新聞標題索摘<br />\n', 10, 1, 0),
(4, 1, '欲取得美加地區之博士論文全文資料，可利用下列何者？', '博士論文全文資料', '‧<b>臺灣博碩士論文知識加值系統</b>：徵集台灣地區70餘所大學校院、1000多個研究所之博碩士論文摘要，民國89年起提供部分已授權論文電子全文下載服務。<br />\n‧<b>Digital Dissertations Consortium [數位化博士論文典藏聯盟](DDC)</b>：由台灣及香港地區之聯盟108個成員自美加地區博士論文中挑選所需主題入藏，涵蓋電腦、歷史、教育、文學、工程等領域；線上之全文論文已達106,616筆，未來全文數量也將逐年再增加。<br />\n‧<b>Dissertations & Theses: A&I (簡稱 PQDT, Formerly: ProQuest Digital Dissertations)</b>：收錄1861年迄今，230多萬篇美加博碩士論文的索引，1997年以後發表之博碩士論文，讀者可免費瀏覽數位化論文前 24頁之內容。', 10, 1, 0),
(5, 1, '欲查找DOI：10.1086/221735的文章可利用本校何種工具？', 'DOI：數位物件識別號（Digital Object Identifier，簡稱DOI）是一套識別數位資源的機制，以作為數位資料的識別碼。', '本校之西文全文電子期刊系統包含「參考文獻查詢」之功能，DOI為數位物件之唯一碼，可作為查詢點。', 10, 1, 0),
(7, 2, '請利用JSTOR資料庫回答下述問題：以下那一本期刊不為The Metropolitan Museum of Art所出版？', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;可利用JSTOR[過期學術期刊全文資料庫]。</p><br />\n', '可利用JSTOR[過期學術期刊全文資料庫]的Browse By Publisher功能依字母瀏覽。<br />\n<p>※若想知道更多關於資料庫的利用資訊，歡迎參與<a target="_blank" href="http://reg.lib.nsysu.edu.tw:8080/activity/activityList?mainID=1">資料庫說明會</a>，或參閱<a target="_blank" href="http://lis.nsysu.edu.tw/files/11-1001-2651.php">資源利用課程學習網</a>。</p>', 10, 1, 0),
(8, 2, '<p>請問以下何者<font color="#0000FF"><b>不在</b></font>《Naxos Music Library》音樂資料庫中查詢欄位『音樂種類』的分類之中？</p>', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;Naxos <br />\nMusic Library [拿索斯線上音樂圖書館]</p>', '進入"Naxos Music Library"資料庫後，點選Advance Search(進階搜尋)，在“作品及音樂種類”選項中即可看到分類。<br />\n<p>※若想知道更多關於資料庫的利用資訊，歡迎參與<a target="_blank" href="http://reg.lib.nsysu.edu.tw:8080/activity/activityList?mainID=1">資料庫說明會</a>，或參閱<a target="_blank" href="http://lis.nsysu.edu.tw/files/11-1001-2651.php">資源利用課程學習網</a>。</p>', 10, 1, 0),
(9, 2, '請問在《Naxos Music Library》音樂資料庫的『Keyword Search』輸入Beethoven 約有幾筆結果？', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;Naxos <br />\nMusic Library [拿索斯線上音樂圖書館]</p>', '取得解答途徑：在Keyword Search鍵入"Beethoven"即可得到檢索結果。<br />\n<p>※若想知道更多關於資料庫的利用資訊，歡迎參與<a target="_blank" href="http://reg.lib.nsysu.edu.tw:8080/activity/activityList?mainID=1">資料庫說明會</a>，或參閱<a target="_blank" href="http://lis.nsysu.edu.tw/files/11-1001-2651.php">資源利用課程學習網</a>。</p>', 10, 1, 0),
(30, 4, '<p>請用SDOL 資料庫，作答下述問題：在 Search 檢索介面中，檢索欄位除了可以選擇 All Field 所有欄位檢索外，還可以選擇自己想特定檢索的部分，如：Authors 作者等。請問「Affiliation」此檢索欄位是以哪個資訊做為搜尋依據？　</p>', '<a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>>資料檢索>電子資料庫>SDOL (ScienceDirect OnLine) [Elsevier電子期刊]', '國際標準期刊號：ISSN<br />\n期刊名或電子書名：Title<br />\n參考書目：References', 10, 0, 0),
(31, 4, '請利用《SpringerLink》資料庫，作答下述問題：請問下列哪一類型出版品未包含在SpringerLink平台上？', '<a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>>資料檢索>電子資料庫>[Springer 及Kluwer Online電子期刊資料庫]', 'SpringerLink平台收錄資料類型有電子期刊, 電子書, 電子系列書, 電子參考工具書, 實驗室指南(protocols)等。', 10, 1, 0),
(10, 2, 'Facebook是全球目前最熱門的社群網站之一，請利用Project Muse資料庫的Advance Search功能，找出2篇2008年題名(Article title)內包含「Facebook」的文章，並指出他們是各發表在下列哪兩本刊物中？', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;Project Muse資料庫</p>', '(1)進入Project Muse資料庫，點選Advance Search，下拉選單選擇in "Article title"，輸入"facebook&quot;<br />\n(2)並限制By Year: From2008 to 2008', 10, 1, 1),
(11, 2, '請利用圖書館電子資源中之 Periodicals Archive Online，指出下列哪一份期刊不是此資料庫Humanities（General）主題中所收錄的期刊？', '可利用Periodicals Archive Online (PAO) [19-20世紀典藏學術期刊全文資料庫]。', '可使用該平台所提供Find Journals的Search Journal Records功能，再加以限定Journal Subject。\n<p>※若想知道更多關於資料庫的利用資訊，歡迎參與<u>PAO資料庫說明會</u>以及<a target="_blank" href="http://reg.lib.nsysu.edu.tw:8080/activity/activityList?mainID=1">資源利用基礎課程(二)</a>。</p>', 10, 0, 0),
(12, 3, '近年來中國大陸的經濟發展速度是舉世矚目的，若談到中國經濟政策的發展推手，就不得不提及世界銀行首席經濟學家兼高級副行長-林毅夫 教授。林教授於重點經濟學期刊「The American Economic Review」上曾經發表了多篇影響近代經濟的期刊論文，試問透過EBSCOhost 的BSC資料庫完整地搜尋出林教授曾在此期刊中所發表的相關論文共計幾篇？', '<p>1.<a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;Business <br />\nSource Complete (BSC)--EBSCOhost [EBSCO商管財經全文資料庫]。<br><br />\n2.林毅夫教授的英文名為：<span class="st">Justin Yifu Lin</span></p></p>', '每個資料庫所用的檢索欄位稱呼與縮寫不盡相同，在EBSCOhost系列資料庫中，欲檢索特定作者要選擇“AU Author”；檢索特定刊物則要選擇“SO Publication Name”。註：SSCI資料庫也是將刊名稱為「Publication Name」，但是，有些資料庫則將刊名稱為「Journal title」（例如：Project MUSE、SDOL）或「Publication title(s)」（例如：Blackwell Synergy 電子期刊、ProQuest系列資料庫），或「Publications」（例如：LexisNexis）。', 10, 1, 0),
(64, 4, '收錄在Informaworld e-journals [Taylor & Francis e-journals] (T & F) 資料庫中的《物理學進展》(Advances in Physics)期刊，在2010年Impact Factor高達21.214 ，請問這本期刊最多人閱讀過(Most read)的文章又是哪一篇？請提供該篇文章篇名。', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;Informaworld <br />\ne-journals [Taylor &amp; Francis e-journals] (T &amp; F) </p>', '<p><a href="http://service.flysheet.com.tw/online/T&F/Q5_hint5.pdf"><br />\nhttp://service.flysheet.com.tw/online/T&amp;F/Q5_hint5.pdf</a></p>', 10, 1, 0),
(13, 3, '有關Chen AL 與 Kao LF 所發表的文章: The benefit of excluding institutional investors from fixed-price IPOs - Evidence from Taiwan，請問文章發表後哪一年被引用的次數最多？', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;Social Sciences Citation Index (SSCI web版) [社會科學引用文獻索引web版]。</p>', '進入SSCI web版資料庫後，利用“Title”欄位檢索文章篇名，可以看到該篇文章被引用次數“Times Cited: 22”，點選後可以看到引用該文章的篇名，檢索結果畫面左方顯示引用該篇文章的領域。接著點選“Analyze Results”後，可以進行引用分析，在“Rank the records by this field:”下選擇“Publication Year”可以看到歷年被引用次數', 10, 1, 0),
(14, 3, '利用Company Dossier 中的Create Company List 功能查找，將查找資訊限定在 Public – Parent 公司類型，Sales/ Revenue 限定在10,000,000,000 以上與100,000,000,000以下，員工數要100000以上，並且利用北美工業代碼(Search Primary NAICS Codes)，將查找範圍限定在33411 (Computer and Peripheral Equipment Manufacturing) 類別，請問下列哪一間公司無法被檢索出來？', '可利用LexisNexis Academic Universe (LN) [法律商學醫學資料庫]。', '點選資料庫總覽進入LexisNexis Academic 資料庫後，先選擇“Business”，接著點選“Dossier Create a Company  List”，然後依據題意在特定欄位進行限定，最後按下“create”鍵即可。\n<p>※若想知道更多關於資料庫的利用資訊與檢索策略，歡迎參與<u>LexisNexis資料庫說明會</u>以及<a href="http://reg.lib.nsysu.edu.tw:8080/activity/activityList?mainID=1" target="_blank">資源利用基礎課程(二)</a>。</p>', 10, 0, 0),
(15, 3, 'AREMOS是進行社會科學研究的重要資料庫之一，內容包含台灣地區之國民所得、金融、貿易、工業生產、人口、就業、物價、薪資......等資料。以下為使用該資料庫的步驟，請問何者為非?', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;AREMOS</p>', 'AREMOS屬於統計數據型網路版光碟資料庫，本館將所有 *.bnk檔copy 進網路磁碟機“N:”，先連結到該網路磁碟機才能夠找到欲查找資料的代碼(*.bnk)。 <br />\n  例如：在QNET.bnk（『台灣地區國民經濟動向統計季報資料庫檢索手冊』）中，「經濟成長率」的資料變數之代碼是「ECH」。*.bnk指的是開啟Aremos中的某個資料庫的代碼。<br />\n<p>※若想知道更多關於資料庫的利用資訊，歡迎參與<u>AREMOS資料庫說明會</u>以及<a href="http://reg.lib.nsysu.edu.tw:8080/activity/activityList?mainID=1" target="_blank">資源利用基礎課程(二)</a>。</p>', 10, 1, 0),
(16, 3, '請利用圖書館電子資源中之ProQuest Education Journals，查找期刊Review of Educational Research，請問該期刊在資料庫中，全文內容最早回溯至那一年？', '可利用ProQuest Education Journals [Proquest教育全文資料庫](PQEJ)，全文資料的回溯。', '在ProQuest系列資料庫中選擇檢索欄位“Publication Title”可檢索特定刊物，點選“Look up publications”可直接輸入刊物名稱，並記得勾選【Limit results to:】之「Full  text documents only」，即可獲知該刊物在特定資料庫中全文收錄的範圍。 <br />\n  或者，於檢索結果頁面中，再點選「Show only full text」。<br />\n<p>※若想知道更多關於資料庫的利用資訊與檢索策略，歡迎參與<u>ProQuest Education資料庫說明會</u>以及<a href="http://reg.lib.nsysu.edu.tw:8080/activity/activityList?mainID=1" target="_blank">資源利用基礎課程(二)</a>。</p>', 10, 0, 0),
(17, 4, '屬於中山大學所發表的文章中，有一篇文章：Printed double-T monopole antenna for 2.4/5.2 GHz dual-band WLAN operations，該篇作者為Kuo, YL。這篇文章有被其他文章引用，試問下列何者為引用該篇文章次數最多的引用者？', '<p>可利用<a href="http://service.lib.nsysu.edu.tw/www/database/detail.php?Item=120">Science <br />\nCitation Index Expanded (SCIE) [科學引用文獻索引web版]資料庫。</a></p><br />\n', '(1)查詢Title=(Printed double-T monopole antenna for 2.4/5.2 GHz dual-band WLAN <br />\noperations)；<br />\n(2)Times Cited為156次，之後點選156數字連結<br />\n(3)可利用左邊Refine Results的Authors點選more options/values即可找出引用次數最多的引用者-WONG KL (28)', 10, 1, 0),
(18, 4, 'SDOL (ScienceDirect OnLine)資料庫中依字母順序瀏覽E開頭，名為「Early Human Development」的作品，請問它是屬於以下哪種類型文獻？', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;SDOL <br />\n(ScienceDirect OnLine)資料庫，之後查看Content Type 欄位。</p>', '途徑一：利用Browse瀏覽所有期刊，E開頭的清單，參見Content  Type 欄位。 <br />\n途徑二：於【journal / book title】中，輸入「Early Human  Development」，參見Content Type 欄位。', 10, 1, 0),
(19, 4, '「天使與魔鬼」電影當中有出現大型強子對撞器（Large Hadron Collider簡稱：LHC）的場景，也有內懸反物質的邪門容器的樣子。物理學家希望藉由加速器對撞機來幫助他們解答：粒子是否有相對應的「超對稱」（SUSY）粒子存在？而欲於SpringerLink中查找標題中包含LHC與超對稱作用(Supersymmetry)參考那些圖書文獻？(複選題)', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;SpringerLink資料庫&gt;利用Advanced <br />\nSearch</p>', '利用Advanced Search，在Content欄位中輸入：ti:(LHC) and ti:(supersymmetry)，並在LIMITERS中限定ONLY BOOKS，查詢結果有2筆資料，分別是「Early Supersymmetry Searches with ATLAS Detector at LHC」與「Signatures of Supersymmetry at the LHC」', 10, 1, 1),
(20, 4, '請搜尋在IEL資料庫裡，以"Robotics"作為主題詞相關的IEEE文獻，包括IEEE期刊雜誌、IEEE會議論文及IEEE技術標準，年份在2007 年至今，但排除 2008 年的資料；請問總共可以搜尋到幾篇文獻？', '可利用IEL (IEEE/IET Electronic Library)  [國際電子電機工程學會出版品資料庫]，點選advanced search功能，Select publications只選擇IEEE之期刊、會議論文及標準，Other Resources不需勾選，於OPTION  2中，利用Boolean expression，以指令檢索。', '主題詞(Index term)欄名為de，故該查詢的布林邏輯語法為： <br />\n  ( ((robotic)&lt;in&gt;de ) ) &lt;and&gt; (pyr &gt;= 2007  &lt;and&gt; pyr &lt;= 2009)&lt;and&gt;&lt;not&gt;(pyr=2008)\n<p>※若想知道更多關於IEL資料庫利用與檢索策略的相關資訊，歡迎參與<u>IEL資料庫說明會</u>以及<a href="http://reg.lib.nsysu.edu.tw:8080/activity/activityList?mainID=1" target="_blank">資源利用基礎課程(二)</a>。</p>', 10, 0, 0),
(21, 4, '請問在期刊「Water, Air, & Soil Pollution」中所收錄的「Visibility Variation with Air Qualities in the Metropolitan Area in Southern Taiwan」此篇文章中，表2：annual visibility in Kaohsiung，是介紹高雄幾年之間的平均能見度？', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;SpringerLink資料庫，此資料庫有收錄Water, Air, &amp; Soil Pollution期刊</p>', '在SpringerLink當中檢索到此期刊，並下載其全文檢視圖表', 10, 1, 0),
(6, 1, 'DOI：10.1086/221735的文章被收錄在哪本期刊，其期刊資訊何者為對？(複選題)', 'DOI：數位物件識別號（Digital Object Identifier，簡稱DOI）是一套識別數位資源的機制，以作為數位資料的識別碼；ISSN：國際標準期刊號 ( International Standard- Serial Number， 簡稱ISSN)，是國際間賦予期刊的一套統一編號。', '本校之西文全文電子期刊系統包含「參考文獻查詢」之功能，DOI為數位物件之唯一碼，可作為查詢點。<br />\n', 10, 1, 1),
(44, 1, '在圖書館四樓的多媒體視聽中心，為因應在廣大喜愛看電影的師生們，特此規劃獨立的電影專區，請問此電影專區中，排架在「<font color="#0000FF"><b>暮光之城:無懼的愛</b></font>」和「<font color="#0000FF"><b>華麗人生</b></font>」這兩部DVD中間是哪部電影？', '<a target="_blank" href="http://www.lib.nsysu.edu.tw/mul_media/index.php">多媒體服務網</a>', '(1) 直接到圖書館4樓視聽區查找<br />\n(2) 利用<a target="_blank" href="http://www.lib.nsysu.edu.tw/mul_media/index.php">多媒體服務網</a><br />\n', 10, 1, 0),
(22, 1, '在圖書館四樓的多媒體視聽中心，為因應在廣大喜愛看電影的師生們，特此規劃獨立的電影專區，請問此電影專區中，排架在「<font color="#0000FF"><b>穿越時空愛上妳</b></font>」和「<font color="#0000FF"><b>前進高棉</b></font>」這兩部DVD中間是哪部電影？', '<a target="_blank" href="http://www.lib.nsysu.edu.tw/mul_media/index.php">多媒體服務網</a>', '(1) 直接到圖書館4樓視聽區查找<br />\n(2) 利用<a target="_blank" href="http://www.lib.nsysu.edu.tw/mul_media/index.php">多媒體服務網</a><br />\n', 10, 1, 0),
(23, 1, '在資料庫總覽中，連線範圍內標明「限圖書館PC單機使用」的資料庫，要到哪一層樓使用？', '限圖書館PC單機使用', '<p>例如<a target="_blank" href="http://service.lib.nsysu.edu.tw/www/database/detail.php?Item=43">Aremos</a>，就是「限圖書館PC單機使用」的資料庫，</p><br />\n<br />\n', 10, 1, 0),
(24, 1, '請問若想要查尋某一本<font color="#0000FF"><b>圖書</b></font>在全國有哪幾間圖書館有，該利用下列哪個聯合目錄去查詢', '圖書', '請親自使用下列此四個資料庫：<br />\n‧<a target="_blank" href="http://readopac1.ncl.edu.tw/nclJournal/index.jsp">臺灣期刊論文索引系統</a><br />\n‧<a target="_blank" href="http://readopac.ncl.edu.tw/nclJournal/guide.htm">出版期刊指南系統</a><br />\n‧<a target="_blank" href="http://nbinet2.ncl.edu.tw/">全國圖書書目資訊網</a><br />\n‧<a target="_blank" href="http://ndltd.ncl.edu.tw/">臺灣博碩士論文知識加值系統</a>', 10, 1, 0),
(25, 1, '若想查找關於<font color="#0000FF"><strong>學習如何使用Microsoft office文書處理軟體</strong></font>的書，應該到哪一層樓找', '<a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a> > 館藏目錄', '利用館藏目錄檢索>在"關鍵字"欄位輸入Microsoft office即可以類尋書。', 10, 1, 0),
(26, 1, '請問當您想要找某篇期刊文章的全文，發現本校並沒有紙本期刊館藏，且資料庫上也沒有提供電子全文，此時您可以利用下列哪項服務取得全文', '取得期刊全文', '‧<b>NDDS</b>：本系統結合全國期刊聯合目錄與館際合作功能，提供讀者與館員查詢國內400 餘圖書館之館藏，可線上提出申請期刊、圖書、學位論文等資料之複印及圖書借閱等服務。<br />\n‧<b>高高屏代借代還服務</b>：整合高高屏區內23所大學圖書館之館藏資源，以互通有無，提升各校館藏利用價值，23校圖書館秉持資源共享之理念、相互對等互惠之原則，建立「圖書代借代還服務」，以積極推動圖書代借代還之館際合作，提升服務品質。<br />\n‧<b>雲嘉南圖書聯盟</b>：雲嘉南區域教學資源中心為加強夥伴學校師生有效利用各校圖書館館藏資源，並秉持資源共享之理念，在互惠對等原則下，實施圖書互借服務，或透過線上借閱申請圖書互借。', 10, 1, 0),
(27, 1, '請問索書號為<font color="#0000FF"><b>HD57.7 A2746 2007</b></font>的這本書《Develop Your Leadership Skills》會排在下列哪一本書之後？', '本校西文圖書採美國國會圖書分類法', '本校西文圖書室採美國國會圖書分類法，故排架原則為<br />\n(1)分類號先依「字母順序」排列，再按「數值大小」排列。<br />\n(2)若整數後有小數點數字，則小數點後面的數字，應依「小數點原則」，一位數一位數比較排列。<br />\n(3)如果分類號有二組字母與數字的組合，第二組的排列順序要比照「小數點原則」，一位數一位數比較排列。<br />\n', 10, 1, 0),
(28, 1, '請問在本校想要閱讀「空中英語教室」的課文，可以利用以下哪個資料庫？', '<a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>>資料檢索>電子資料庫>空中英語教室', '<span style="font-size: 12.0pt; font-family: 新細明體,serif">利用<a target="_blank" href="http://service.lib.nsysu.edu.tw/www/database/index.php">資料庫總覽</a>檢索</span>', 10, 1, 0),
(29, 1, '品德，是指品性道德。「好的品德，是自小培養而成的。」請問在圖書館中，下列何種行為可以稱得上是個有品的人？', '圖資處首頁>認識本處><a href="http://lis.nsysu.edu.tw/files/11-1001-1176-1.php" target="_blank">規章</a>依據教育部「推動品德教育促進方案」，請參閱：<a href="http://ce.naer.edu.tw" target="_blank">教育部品德教育資源網</a>', '為保障入館讀者公平利用館內資源設備之權益，並維護在館內閱覽及查尋資料時寧靜與整潔的環境，特訂定圖書館「讀者行為違規」處理辦法，以為讀者利用規範及工作人員執行公務依據。<br />\n(一)如辦法第4條指出：『讀者不得攜帶食物飲料或動物入內...，以維護館內環境之清潔...』此項規定主要是為了維護整體環境的清潔，並且尊重每位讀者的閱讀權利而訂定。若是您在圖書館且有吃東西的需求時，請您至指定之地點(如：東3角)。<br />\n(二)廁所衛生紙屬公共用品，資源有限請勿隨意浪費<br />\n(三)依據教育部「推動品德教育促進方案」，校園及公共場所不穿拖鞋。<br />\n請參閱：<a href="http://ce.naer.edu.tw" target="_blank">教育部品德教育資源網</a>', 10, 1, 0),
(32, 4, '請用《IEL/IEEE》資料庫，作答下述問題：</br><br />\n請搜尋在IEL資料庫裡，與"Cloud Computing"或"Network Coding"相關的IEEE 會議論文，年份在2008年至2011；研討會地點在上海(Shanghai)、北京(Beijing)、香港(Hong Kong)及台北(Taipei)，請問總共可以搜尋到幾篇文獻？', '<a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>>資料檢索>電子資料庫>IEL(IEEE/IET Electronic Library)[國際電子電機工程學會出版品資料庫]', '首先利用Advance Search在"Metadata Only"檢索欄位輸入查詢值"Cloud Computing" or "Network Coding"，接者分別勾選"IEL"為Subscribed Content;"IEEE"為Publisher;"Conferences"為Content Type;"Publication Year"限制在2008-2011，最後在檢索結果畫面左下方Conference Location限制地點在上海(Shanghai)、北京(Beijing)(Beijing, China)、香港(Hong Kong)及台北(Taipei)，即可得到篇數。', 10, 1, 0),
(33, 4, '在Environmental Science and Pollution Management資料庫中，請問下列哪是此資料庫所包含的學科範圍？ (複選題)', '<a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>>資料檢索>電子資料庫>Environmental Science and Pollution Management (ESPM) 環境科學資料庫 [ProQuest]', '學科涵蓋範圍包含：農業生物技術、空氣品質、海洋污染、細菌學、生態學、能源資源、環境生物科技、環境工程、環境影響報、告 (U.S.)、有害廢棄物', 10, 1, 1),
(34, 4, '請利用《Web of Sicence(WOS)》資料庫回答下述問題：</br>請問「Novel sesquiterpenes and norergosterol from the soft corals Nephthea erecta and Nephthea chabroli」此篇收錄在SCI的期刊，其作者有幾位是中山大學的教職員生？', '<a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>>資料檢索>電子資料庫>Science Citation Index Expanded(SCIE)[科學引用文獻索引web版]ISI Web of Science(WOS)', '首先在檢索欄位"Title"中輸入欲查找的文章篇名，點選進入看詳細資料的"Address"，即可由該處判斷。<br />\n<p>※ 歡迎參閱：圖資處網頁&gt;<a target="_blank" href="http://lis.nsysu.edu.tw/files/11-1001-2651.php">資源利用課程網</a>&gt;單一資料庫課程&gt;ISI Web of Science</p>', 10, 1, 0),
(35, 3, '在Wiley Online Library電子資源平台裡，收錄有多少種與「Business & Management」學科領域相關的期刊？', '<a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>>資料檢索>電子資料庫>Wiley Interscience[Wiley電子期刊及電子書資料庫]', 'Wiley-Blackwell 是07年由John Wiley & Sons, Inc. 收購Blackwell Publishing Ltd. 合併創立，09年起Blackwell的所有內容合併到Wiley Online Library電子資源平台裡。進入Wiley Online Library後，在分類瀏覽(Browse)中選擇"Business, Economics, Finance & Accounting<br />\n"下面的"Business & Management"接著點選"View all products in Business & Management<br />\n"及可獲知該領域中收錄的期刊種類數量196種、圖書221種。', 10, 1, 0),
(36, 3, '請問ProQuest Education Journals資料庫內的期刊『Harvard Educational Review』其所收錄的全文從何時開始？', '<a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>>資料檢索>電子資料庫>ProQuest Education Journals [Proquest教育全文資料庫](PQEJ)(EJ)', '1. 點選『Publications』<br />\n2. 於欄位內輸入「Harvard Educational Review」<br />\n3. 檢索結果即出現 "Full Text: 1988 – current"', 10, 0, 0),
(37, 3, '台灣經濟新報資料庫主要專長，下列何者為非？', '<a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>>資料檢索>電子資料庫>台灣經濟新報資料庫 (TEJ)', 'TEJ是以財經資料為主的資料庫，主要項目為：<br />\n1.財務資料庫；2.資本形成及股利；3.股價資訊；<br />\n4.原始財報PDF file；5,公司相關資訊；6.總體經濟指標等，並未包涵報紙新聞資料。<br />\n詳情可參閱台灣經濟新報(TEJ)官網：<a href="http://www.tej.com.tw/" target="_blank">http://www.tej.com.tw/</a>', 10, 1, 0),
(38, 3, '彼得‧杜拉克（Peter F. Drucker）被尊為「管理學之父」，Emerald資料庫也有收錄2篇由他所寫的期刊（Journals）文章。請利用Advance Search功能，回答該2篇文章是於西元幾年所發表的？ (複選題)', '<a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>>資料檢索>電子資料庫>Emerald Fulltext 電子期刊', '利用Advance Search功能→於第一個關鍵字欄位輸入「Peter Drucker」並將搜尋條件設為「Author」→即可得到的2篇文章的資訊。<br />\n<p>※ 歡迎參閱：圖資處網頁&gt;<a target="_blank" href="http://lis.nsysu.edu.tw/files/11-1001-2651.php">資源利用課程網</a>&gt;單一資料庫課程&gt;Emerald如何成功投稿國際學術期刊。</p>', 10, 1, 1),
(39, 3, '請利用LexisNexis Academic資料庫中的企業>Create a Company List來限定檢索：<br>sales/Revenue的欄位限定在above 100,000,000,000以上，Employees限定from100,000人，SIC code為3679。</br>試問，下列敘述何者為是？', '<a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>>資料檢索>電子資料庫>LexisNexis Academic Universe(LN)[法律商學醫學資料庫]</a>', '歡迎參閱：圖資處網頁&gt;<a target="_blank" href="http://lis.nsysu.edu.tw/files/11-1001-2651.php">資源利用課程網</a>&gt;單一資料庫課程&gt;LexisNexis資料庫說明會', 10, 0, 0),
(40, 1, 'EBSCOhost資料庫中的哪一種【檢索模式】可以用文章找文章？', '<a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>>資料檢索>電子資料庫>Academic Search Premier(ASP)[EBSCO綜合學科資料庫]', 'SmartText檢索是以自然語言檢索相關結果，最多輸入5000個單字，可“以文找文”。<br />\n<p>※ 歡迎參閱：圖資處網頁&gt;<a target="_blank" href="http://lis.nsysu.edu.tw/files/11-1001-2651.php">資源利用課程網</a>&gt;單一資料庫課程&gt;ISI Web of Science</p>', 10, 1, 0),
(41, 1, '利用今年2010年諾貝爾生物醫學獎得主之一Steinman Ralph在Web of Science(WOS)中進行檢索，請問以此得獎者的名字進行檢索後，其被引用次數最高的文章為？', '<a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>>資料檢索>電子資料庫>Science Citation Index Expanded (SCIE) [科學引用文獻索引web版]ISI Web of Science(WOS)', '分別在檢索欄位"Author"輸入"Steinman Ralph"然後利用Sort by"Times Cited"可得知。<br />\n<p>※ 歡迎參閱：圖資處網頁&gt;<a target="_blank" href="http://lis.nsysu.edu.tw/files/11-1001-2651.php">資源利用課程網</a>&gt;單一資料庫課程&gt;ISI Web of Science</p>', 10, 1, 0),
(42, 2, '請利用中國期刊網(CJFD)資料庫回答下述問題：利用兩關鍵字<張愛玲>與<蒼涼與啟示>，並且限定檢索欄位為主題來進行檢索，找到<蒼涼與啟示—談張愛玲小說創作思想的顯與隱>該篇文章，請問下列敘述何者為非？', '<a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;中國期刊全文資料庫(CJFD)', '詳情請參閱：圖資處網頁&gt;<a target="_blank" href="http://lis.nsysu.edu.tw/files/11-1001-2651.php">資源利用課程網</a>&gt;單一資料庫課程&gt;中國期刊全文資料庫(CJFD)', 10, 1, 0),
(43, 2, 'test', 'tes<br />\nss<br />\n', 'tt', 10, 0, 0),
(46, 1, '若想線上聆聽古典音樂曲目，可利用下列何者？', '線上聆聽古典音樂曲目', '<p>‧The  Music Index Online:音樂索引資料庫是由Harmonie  Park Press出版社製作的，有完全的索引和主題標引，唯一也是最完整的音樂文獻年度主題-作者指引。 </p><br />\n<p><br />\n  ‧Oxford  Music Online:收錄全世界古典音樂、民間音樂、爵士樂、流行音樂、20世紀音樂、歌劇等史前至今之所有音樂學領域完整內 涵，提供歷代音樂家、作曲家傳記、作品、書目文獻、樂器、影音檔連結(sound  clips)、插圖等內容，是當今公認最具權威性的音樂學術與表演藝術百科全書。</p><br />\n<p> <br />\n  ‧<strong>拿索斯線上音樂圖書館:</strong>五千五百張隨選音樂(Music  on Demand)雷射唱片，包括一千多位作曲家之作品，含超過75,000首樂曲，未來將出版的新唱片亦會自動加入，每年將陸續增加兩百多張新專集(約 3,000首)。曲目含古典音樂、傳統爵士、現代爵士、懷舊金曲、怨曲、世界各地民謠、兒歌、新世紀、中國傳統音樂、鄉村、流行/搖滾、電影原聲等型態。 </p><br />\n<p><br />\n  ‧RILM  Abstracts of Music Literature: 收錄各種有關音樂主題的資料，包括音樂理論歷史、民族音樂、聲樂及樂器、音樂圖書館學、演奏法及記譜法、音樂理論與分析、音樂教學法、禮儀音樂、舞蹈、音樂評論及治療等領域；同時也包含音樂和各領域之間相互的研究報告。: </p><br />\n', 10, 1, 0),
(47, 1, '<p>請問若想要查尋某一本<b><font color="#0000FF">期刊</font></b>在全國有哪幾間圖書館有，該利用下列哪個聯合目錄去查詢</p>', '期刊', '請親自使用下列此四個資料庫：<br />\n‧<a target="_blank" href="http://readopac1.ncl.edu.tw/nclJournal/index.jsp">臺灣期刊論文索引系統</a><br />\n‧<a target="_blank" href="http://readopac.ncl.edu.tw/nclJournal/guide.htm">出版期刊指南系統</a><br />\n‧<a target="_blank" href="http://nbinet2.ncl.edu.tw/">全國圖書書目資訊網</a><br />\n‧<a target="_blank" href="http://ndltd.ncl.edu.tw/">臺灣博碩士論文知識加值系統</a>', 10, 1, 0),
(48, 1, '在Web of Science資料庫中，使用Address欄位輸入關鍵字: natl sun yat sen univ same taiwan，請問引用次數最高的文章是哪一年發表的?', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>>資料檢索>電子資料庫>Science Citation Index Expanded (SCIE) [科學引用文獻索引web版]ISI Web of Science(WOS) <br />\n&gt;進入資料庫後進行之引用次數排序</p>', '<p>引用次數最高之文章為<br />\n  Title: Fruit and vegetable intake and risk of major chronic disease<br />\n  </p><br />\n<p>Author(s): Hung, HC (Hung, HC); Joshipura, KJ (Joshipura, KJ); Jiang, R (Jiang, R); Hu, FB (Hu, FB); Hunter, D (Hunter, D); Smith-Warner, SA (Smith-Warner, SA); Colditz, GA (Colditz, GA); Rosner, B (Rosner, B); Spiegelman, D (Spiegelman, D); Willett, WC (Willett, WC)<br />\n</p><br />\n<p>Source: JOURNAL OF THE NATIONAL CANCER INSTITUTE  Volume: 96   Issue: 21   Pages: 1577-1584   DOI: 10.1093/jnci/djh296   Published: NOV 3 2004<br />\n  </p><br />\n<p>Times Cited: 281 (from Web of Science)</p>', 10, 1, 0),
(49, 1, '在中國博士全文資料庫中，限定欄位為題名，輸入關鍵字為歐元區貨幣，請問在檢索結果中有一篇由周敏在2007年發表的文章，請問該篇文章的發表機構為?', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;中國博碩士論文全文資料庫(CDMD)</p>', '此論文為<br />\n題目：基于成員國金融結構的分析<br />\n作者：周敏<br />\n學校：復旦大學<br />\n學位年度：2006', 10, 1, 0),
(50, 3, '在New York Times (紐約時報)當中，請找出於2011年9月份報導中的那一天？曾經於標題中談及YAHOO前途烏雲密布的文章消息', '<p>1.<a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;New York <br />\nTimes [ProQuest]資料庫<br />\n<br><br />\n2.新聞標題為：At Yahoo, a Weak Board Stumbles in a Series of Missteps</p>', '文章標題：At Yahoo, a Weak Board Stumbles in a Series of Missteps<br />\n作者：Davidoff, Steven<br />\n日期：21 Sep 2011<br />\n', 10, 1, 0),
(51, 4, 'Environmental Science and Pollution Management (ESPM) 環境科學資料庫, 可選用的索引典一共有？', '<a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>>資料檢索>電子資料庫>Environmental Science and Pollution Management (ESPM) 環境科學資料庫 [ProQuest]', '1.Aquatic Sciences & Fisheries Abstracts (ASFA) thesaurus (subjects)<br />\n2.EIS Controlled terms (subjects)<br />\n3.Life Sciences thesaurus (subjects)<br />\n4.Pollution Controlled Vocabulary (English)<br />\n5.Taxonomic Terms (Latin Names of Organisms Vocabulary)<br />\n6.Water Resources Abstracts thesaurus (subjects)', 10, 1, 0),
(52, 4, 'Coatings是金屬物表面覆蓋的塗料，請到EV資料庫、點選右上角的【Thesaurus】、輸入【coatings】並點選【Exact Term】之後送出查詢（Submit），利用Thesaurus功能可幫助您查詢所輸入關鍵字在這個學科領域的階層關係；請問coatings底下還可細分為幾種更深入的子學科領域（Narrower Terms）？', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;Ei <br />\nEngineering Village 2 (EV2)[工程研究索引資料庫]</p>', '其34種子學科領域分別為：Abrasive coatings、Bituminous coatings、Black coatings、Boride coatings、Ceramic coatings、Chromate coatings、Composite coatings、Diffusion coatings、Electrophoretic coatings、Electrostatic coatingsEnamels、Epitaxial layers、Glazes、Hard coatings、Inorganic coatings、Linings、Luminous coatings、Metal coatings、Optical coatings、Organic coatings、Paint、Phosphate coatings、Plastic coatings、Powder coatings、Protective coatings、Reflective coatings、Rubber coatings、Silicone coatings、Sprayed coatings、Stripping (removal)Tape coatingsTemporary coatingsVacuum deposited coatingsWater borne coatings', 10, 1, 0),
(53, 4, '請搜尋 ASTM 現行標準 D1068-10，這篇標準參考了幾篇ASTM標準 ?', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;ASTM資料庫</p>', '關鍵字查詢直接打上 D1068-10，即檢索到此標準，之後再2. Referenced Documents可看到所參考的18篇ASTM標準', 10, 1, 0),
(54, 4, 'SpringerLink電子書資料庫中，2011年出版的「Wave Turbulence」一書，全書共有幾頁?', '<p>1.<a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;SpringerLink <br />\nOnline Book 1997-2010 [Springer電子書]-[TAEBC]<br><br />\n2.此書ISBN為<span class="nowrap lh15px">978-3-642-15941-1</span></p>', '1.利用Springer電子書資料庫，使用進階檢索，限定"Title Only"檢索Wave Turbulence；年度限定為2011年；Limiters限定為ONLY BOOKS，檢索結果之第4筆即為此書<br />\n2.利用進階檢索中Citation欄中直接輸入ISBN:978-3-642-15941-1，即可直接檢索到此書', 10, 1, 0),
(55, 3, '利用LexisNexis Academic資料庫，Company Dossier 中的 Create Company List 功能查找，將Company Type限定在Public – Patent公司類型，Sales/ Revenue 限定在 100,000,000,000 以上，並且利用NAICS Code，將查找範圍限定在 33411 (Computer and Peripheral Equipment Manufacturing) 類別，請問下列哪一間公司可以被檢索出來?', '<a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;LexisNexis Academic Universe (LN) [法律商學醫學資料庫]<p>　</p>', 'SIEMENS AG公司<br />\nType:Public - Parent<br />\nAddress:Wittelsbacherplatz 2 Munich    D-80333 Germany<br />\nPhone:+49-89-636-00<br />\nFax:+49-89-636-34242<br />\nTicker(s):SIE<br />\nExchange(s):MIL<br />\nEmail:contact@siemens.com<br />\nInternet:www.siemens.com<br />\nEmployees:405,000', 10, 1, 0),
(56, 3, 'Wiley Online Library電子資源平台提供的電子期刊中，以下哪一本的期刊排名，在2010年的JCR(Journal Citation Reports) 資料庫中為該學科類別的第一名？ (複選題)', '<a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;Wiley Online Library[Wiley電子期刊+電子書]，逐一檢索選項當中的期刊<p>', '在Wiley Online Library資料庫，search欄中限定"Publication titles"，然後鍵入期刊名搜尋，之後點選期刊，其中有詳細介紹期刊在JCR資料庫中的詳細情況', 10, 1, 1),
(57, 3, '在Emerald每年出版的論文作者中有超過400人為台灣作者。 請問"Influence of online learning skills in cyberspace"文章的作者為?', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;Emerald Fulltext 電子期刊資料庫</p>', '題目：Influence of online learning skills in cyberspace<br />\n類型Research paper<br />\n作者: Li-An Ho, Tsung-Hsien Kuo, Binshan Lin<br />\n刊名: Internet Research Volume: 20 Issue: 1 2010', 10, 1, 0),
(58, 3, 'PsycArticles資料庫收錄之期刊來自哪個學會所發行?', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;PsycARTICLES <br />\n心理學電子期刊 [EBSCOhost]&lt;/a&gt;資料庫</p>', '美國心理學會 (APA) 的 PsycARTICLES 是精神分析領域之同儕評鑑學術及科學文章的可靠來源。資料庫包含由 APA 及其 Educational Publishing Foundation (EPF) 出版公司以及來自包括加拿大心理協會 (CPA) 及 Hogrefe 出版集團等結盟組織所出版，超過 70 種的已發行期刊中的約 150,000 篇文章。 ', 10, 1, 0),
(59, 2, '利用Naxos Music Library資料庫查出＜Violin Concerto in D major Op.35＞「D大調小提琴協奏曲，作品35」，是那位作曲家的作品？', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;Naxos <br />\nMusic Library [拿索斯線上音樂圖書館]</p><br />\n<p>　</p>', '直接在檢索欄中輸入Violin Concerto in D major Op.35，第一筆資料即可知道作曲者為柴可夫斯基(Tchaikovsky, Pyotr Il''yich)', 10, 1, 0),
(60, 2, '請利用Naxos Spoken Word Library資料庫，找出Mark Twain(馬克·吐溫)的任何兩個兒童文學作品(複選題)', '<p>利用<span class="style37"><a target="_blank" href="http://service.lib.nsysu.edu.tw/www/database/detail.php?Item=358">Naxos <br />\nSpoken Word Library [拿索斯線上有聲圖書館]</a></span>資料庫</p>', '進入資料庫後，選擇作者連結→選擇字母T→點選Twain, Mark (b.1835 - d. 1910)，即可看到馬克吐溫的作品', 10, 1, 1),
(61, 2, 'Project Muse所集合之期刊不包含那種學科為主？', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;Project Muse資料庫</p>', '進入資料庫後點選Browse Journals→Browse Journals by Discipline', 10, 1, 0),
(62, 1, '2010年JCR在傳播類別(Communication)中影響係數(Impact Factor)排名為第一的期刊是？', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;Journal Citation Reports on the Web (JCR Web)資料庫</p>', '進入資料庫後，選擇JCR Social Sciences Edition與View a group of journals by [Subject category]→Communication類別並View Journal Data - sort by[Impact Factor]，第一名期刊為COMMUN MONOGR', 10, 1, 0),
(63, 3, '台灣近年來受到少子化的威脅，研究顯示大部 分的人認為“raising children requires a lot of money”。請您試圖找出這篇文章來源，其發表的期刊刊名為？', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">圖資處首頁</a>&gt;資料檢索&gt;電子資料庫&gt;Informaworld <br />\ne-journals [Taylor &amp; Francis e-journals] (T &amp; F) </p>', 'http://service.flysheet.com.tw/online/T&F/Q5_hint5.pdf', 10, 1, 0);

-- --------------------------------------------------------

--
-- 資料表格式： `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `year` varchar(4) NOT NULL,
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `sId` varchar(15) NOT NULL,
  `ident_id` varchar(11) NOT NULL,
  `depart_id` varchar(20) NOT NULL,
  `depart` varchar(20) NOT NULL,
  `email` varchar(300) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `RP` bigint(20) NOT NULL,
  `SelectedRecord` varchar(1000) NOT NULL default '[]',
  `ipstamp` varchar(30) NOT NULL,
  `score` int(11) NOT NULL,
  `starttime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `endtime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100493 ;

