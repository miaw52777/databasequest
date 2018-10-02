-- phpMyAdmin SQL Dump
-- version 2.11.9.6
-- http://www.phpmyadmin.net
--
-- �D��: localhost
-- �إߤ��: Nov 30, 2011, 10:05 AM
-- ���A������: 5.0.77
-- PHP ����: 5.2.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- ��Ʈw: `quest`
--

-- --------------------------------------------------------

--
-- ��ƪ�榡�G `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `user` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  PRIMARY KEY  (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=big5;

--
-- �C�X�H�U��Ʈw���ƾڡG `admin`
--

INSERT INTO `admin` (`user`, `pass`) VALUES
('admin', 'libweek@)!!');

-- --------------------------------------------------------

--
-- ��ƪ�榡�G `adminvisitlog`
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
-- �C�X�H�U��Ʈw���ƾڡG `answer`
--

INSERT INTO `answer` (`quest_id`, `optId`, `is_answer`, `options`) VALUES
(48, '3', 1, '2004'),
(9, '4', 0, '1,000�H�U'),
(8, '1', 0, 'Contemporary Jazz'),
(4, '4', 0, 'ProQuest Dissertations and Theses (PQDT)'),
(4, '3', 1, '�Ʀ�ƽפ�����p�� (DDC)'),
(3, '4', 0, '25��'),
(8, '2', 0, 'Folk Legends'),
(5, '1', 0, '�Q�θ�Ʈw�`�������d��'),
(5, '2', 1, '�Q�Φ�����q�l���Z�d��'),
(10, '4', 1, 'Canadian Journal of Criminology and Criminal Justice'),
(10, '3', 0, 'portal: Libraries and the Academy'),
(3, '2', 0, '20��'),
(11, '3', 0, 'The Art bulletin'),
(11, '2', 0, 'Europe'),
(11, '1', 0, 'Victorian studies'),
(12, '1', 0, '8�g'),
(12, '2', 1, '3�g'),
(13, '3', 0, '2009'),
(13, '4', 0, '2010'),
(45, '1', 0, '�p�X���Ѯw'),
(55, '1', 0, 'NOKIA CORP'),
(56, '1', 1, 'Advanced Synthesis & Catalysis | Impact Factor: 5.25| 1/70 (Chemistry Applied) '),
(14, '3', 0, 'CISCO SYSTEMS INC'),
(14, '2', 0, ' TEXAS INSTRUMENTS INC'),
(14, '1', 1, 'COGO GROUP INC'),
(15, '2', 0, '�ѹϸ�B�����i�J��Ʈw�`���A�j�M��Aremos�����I��s���i�J�C'),
(15, '3', 0, '���bAREMOS�����j�M����ܼƥN���C'),
(15, '4', 1, '�A�s������Ϻо���Z:����ܱ��d���Ʈw���N�X(*.bnk)�C'),
(16, '1', 0, '1986�~'),
(16, '2', 1, '1988�~'),
(17, '2', 0, 'CHIU CN'),
(17, '3', 0, 'WONG KIN LU '),
(18, '3', 1, 'Journal'),
(18, '2', 0, 'Book Series'),
(19, '3', 1, 'Signatures of Supersymmetry at the LHC'),
(19, '2', 1, 'Early Supersymmetry Searches with ATLAS Detector at LHC'),
(20, '1', 0, '1000�g�H�U'),
(20, '2', 1, '1001 - 3000�g'),
(21, '4', 0, '1961-2003'),
(21, '3', 0, '1961-2000'),
(21, '2', 1, '1961-1998'),
(21, '1', 0, '1961-1996'),
(19, '1', 0, 'Searching for supersymmetry at LEP/LHC'),
(34, '4', 1, '6��'),
(30, '1', 0, '��ڼзǴ��Z��'),
(30, '2', 1, '�@�̩��ݾ��c/�Ǯ�'),
(30, '3', 0, '���Z�W�ιq�l�ѦW'),
(30, '4', 0, '�ѦҮѥ�'),
(31, '4', 1, '��Q�|ĳ�פ嶰'),
(33, '1', 1, '�A�~�ͪ��޳N'),
(7, '2', 0, 'The Metropolitan Museum of Art Bulletin'),
(7, '3', 0, 'Recent Acquisitions'),
(22, '2', 0, '�^������'),
(23, '2', 1, '4�ӰѦҿԸ߲�'),
(23, '1', 0, '1�Ӷ���a'),
(25, '4', 1, '10��'),
(1, '3', 1, '�����Ť��j��'),
(26, '1', 1, '������m�ǻ��A�Ȩt��NDDS'),
(28, '2', 1, 'Walking Library �q�l���Z��Ʈw (Acer Walking Library)'),
(1, '2', 0, '�������ά�ޤj��'),
(1, '1', 0, '�����\�Ȥj��'),
(22, '1', 1, '���i�{'),
(27, '2', 0, 'HG4028.M4.R48 2007'),
(4, '2', 0, '�O�W�պӤh�פ媾�ѥ[�Ȩt��(NDLTD)'),
(26, '2', 0, '�����̥N�ɥN�٪A��'),
(23, '3', 0, '4�ӻy���۾ǱЫ�'),
(22, '3', 0, '34�󪺩_��'),
(24, '3', 1, '����ϮѮѥظ�T��'),
(24, '2', 0, '�X�����Z���n�t��'),
(24, '1', 0, '�O�W���Z�פ���ިt��'),
(2, '2', 0, '���\�j��(�t���j���) '),
(3, '3', 1, '10��'),
(5, '3', 0, '�Q��eThesys �ӳդh�פ�d��'),
(27, '3', 0, 'HD553 F67 1971'),
(25, '3', 0, '9��'),
(28, '3', 0, '�������x���Ѯw'),
(28, '4', 0, '��ǤH���x���Ѯw'),
(29, '2', 0, '�裡�}��c�i�Ϯ��]'),
(7, '1', 1, 'American Art'),
(8, '3', 1, 'Korea Music'),
(9, '3', 0, '1,001~2,000'),
(48, '4', 0, '2005'),
(11, '4', 1, 'Journal of adolescence'),
(31, '1', 0, '�q�l���Z'),
(31, '2', 0, '�q�l��'),
(32, '2', 0, '1,500~3,000�g'),
(33, '3', 1, '�u�~�å�'),
(33, '4', 1, '�Ů�~��'),
(31, '3', 0, '����ǫ��n(protocols)'),
(33, '2', 1, '���Ҽv�T���i (U.S.)'),
(34, '1', 0, '3��'),
(35, '1', 0, '����100��'),
(36, '1', 0, '1958'),
(37, '3', 0, '�]�g��s�����[��(ex.���q�v�z�B�����h�]�l�Ketc)'),
(37, '1', 1, '���ȷs�D���'),
(37, '2', 0, '�Ȭw�a�ϰ]�g��Ʈw'),
(38, '4', 0, '1991'),
(39, '3', 1, '�ŦX���󪺦�NEC CORPORATION'),
(39, '4', 0, '�i�H�ݨ즳�w�ꪺ���~���q'),
(40, '3', 1, 'SmartText �˯�'),
(40, '2', 0, '�M��ڪ��Ҧ��j�M����'),
(41, '3', 0, 'Dendritic cells: Understanding immunogenicity '),
(9, '2', 0, '2,001~3,000'),
(42, '2', 0, '��������i�R�¡B�a�D�B�J�@�B�wí'),
(42, '3', 1, '�@�̳�쬰�����v�d�ǰ|'),
(39, '2', 0, '�������OPublic�����q'),
(42, '1', 0, '�@�̬����۵�'),
(2, '1', 1, '�M�ؤj��'),
(34, '2', 0, '4��'),
(38, '3', 0, '1989'),
(34, '3', 0, '5��'),
(25, '2', 0, '8��'),
(28, '1', 0, '�ѤU���x���Ѯw'),
(29, '3', 0, '�b�]������'),
(41, '2', 0, 'CD8(+)CD205(+) Splenic Dendritic Cells Are Specialized to Induce Foxp3(+) Regulatory T Cells '),
(40, '4', 0, '�ҦC�ﶵ�ҫD'),
(8, '4', 0, 'Relaxation Music'),
(43, '4', 0, 'aa'),
(43, '3', 0, 'ss'),
(43, '2', 0, 'ss'),
(43, '1', 1, 'sa'),
(32, '3', 1, '500~1,500�g'),
(36, '2', 0, '1968'),
(6, '1', 1, 'The American Journal of Sociology'),
(38, '2', 1, '1987'),
(14, '4', 0, 'NOKIA CORP'),
(15, '1', 0, '�˦ۨ�Ϯ��]4F�ѦҲմ��Ҩϥ�PC2��PC3�q���C'),
(35, '2', 0, '100~180��'),
(17, '1', 1, 'WONG KL'),
(18, '1', 0, 'Book'),
(19, '4', 0, 'Prospects for discovering supersymmetry at the LHC'),
(20, '3', 0, '3001 - 5000�g'),
(20, '4', 0, '5001�g�H�W'),
(32, '4', 0, '����500�g'),
(32, '1', 0, '�W�L3,000�g'),
(2, '3', 0, '�F�v�j��'),
(2, '4', 0, '��q�j��'),
(1, '4', 0, '��Ħ�~�y�ǰ|'),
(4, '1', 0, '���s�j�ǾǦ�פ�t�� (eThesys)'),
(3, '1', 0, '15��'),
(5, '4', 0, '�Q�Τ��s�j���]�åؿ��d��'),
(6, '2', 1, 'ISSN�G0002-9602'),
(6, '3', 0, 'ISSN�G0002-9246'),
(44, '2', 0, 'Ÿ�X100�B'),
(26, '3', 0, '���ūn�Ϯ��p��'),
(26, '4', 0, '�ҦC�ﶵ�ҬO'),
(29, '1', 0, '�Z�Ҥ����åͯȬO�K�O���A�ҥH�N�H�ߩұ��a�L���q����'),
(10, '2', 1, 'TDR: The Drama Review'),
(41, '1', 0, 'Differential antigen processing by dendritic cell subsets in vivo '),
(40, '1', 0, '���L�޿�/�r�y'),
(41, '4', 1, 'Taking dendritic cells into medicine '),
(7, '4', 0, 'Metropolitan Museum Journal'),
(42, '4', 0, '�X�۩�{�N�y��ӥ����Z'),
(38, '1', 1, '1985'),
(45, '3', 0, '�x�W�s�D���z��'),
(45, '2', 0, '�z��j���طs�D��'),
(46, '1', 0, 'The Music Index Online (���֯��޸�Ʈw)'),
(46, '2', 0, 'Oxford Music Online (��Grove Music Online(GM) [�����ҭ��ָ�Ʈw])'),
(46, '3', 1, '�������u�W���ֹϮ��]'),
(46, '4', 0, 'RILM Abstracts of Music Literature[RILM���֤��m��Ʈw][EBSCOhost]'),
(47, '4', 0, '�x�W�պӤh�פ媾�ѥ[�Ȩt��'),
(47, '3', 1, '������Z�p�X�ؿ�'),
(47, '2', 0, '�X�����Z���n�t��'),
(47, '1', 0, '�O�W���Z�פ���ިt��'),
(48, '1', 0, '1997'),
(48, '2', 0, '1998'),
(49, '1', 1, '�_���j��'),
(49, '2', 0, '�n�}�j��'),
(50, '1', 0, '19'),
(50, '2', 0, '20'),
(51, '1', 0, '4��'),
(51, '2', 0, '5��'),
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
(58, '2', 0, 'China Psychology Association ����߲z�Ƿ|'),
(58, '3', 1, 'American Psychology Association ����߲z�Ƿ|'),
(58, '4', 0, 'Australian Psychology Association �D�w�߲z�Ƿ|'),
(59, '3', 0, '�����Ҥ�. �B�G (Hugo Alfven)'),
(59, '2', 0, '���h��(Ludwig Von Beethoven)'),
(59, '1', 1, '���o�P��Q�_�P���Ҵ���(Tchaikovsky, Pyotr Il'),
(60, '1', 0, '�p�참'),
(60, '2', 1, '���i���I�O'),
(60, '3', 0, '�R�R���ڹC�P��'),
(60, '4', 1, '�x�����I�O'),
(61, '4', 1, '���繫��'),
(61, '3', 0, '���N�Ǭ�'),
(61, '2', 0, '���|���'),
(61, '1', 0, '�H��'),
(62, '2', 1, 'COMMUN MONOGR'),
(62, '3', 0, 'J COMPUT-MEDIAT COMM'),
(63, '3', 0, 'Asian Academy of Management Journal of Accounting & Finance'),
(63, '2', 0, 'Asian Academy of Management journal'),
(63, '1', 1, 'Journal of Asian Public Policy'),
(12, '3', 0, '12�g'),
(64, '3', 0, 'Raman spectroscopy of graphene and carbon nanotubes'),
(64, '4', 0, 'Ultracold atomic gases in optical lattices: mimicking condensed matter physics and beyond'),
(64, '1', 0, 'Properties of graphene: a theoretical perspective'),
(64, '2', 1, 'The puzzle of high temperature superconductivity in layered iron pnictides and chalcogenides'),
(18, '4', 0, 'Reference Work'),
(25, '1', 0, '7��'),
(27, '1', 0, 'HD108.15 P574 2001'),
(29, '4', 1, '�ҦC�ﶵ�ҧ_'),
(22, '4', 0, '�v�Z��'),
(24, '4', 0, '�x�W�պӤh�פ媾�ѥ[�Ȩt��'),
(44, '1', 1, '���ͪ��Ĥl'),
(62, '1', 0, 'J COMMUN'),
(9, '1', 1, '3,001�H�W'),
(17, '4', 0, 'MOHANAN P '),
(23, '4', 0, '10�ӹq�l�ѧ{'),
(45, '4', 1, '�����ҬO'),
(50, '3', 1, '21'),
(16, '3', 0, '1990�~'),
(16, '4', 0, '1992�~'),
(35, '3', 1, '180~250��'),
(35, '4', 0, '�W�L250��'),
(36, '3', 0, '1978'),
(36, '4', 1, '1988'),
(37, '4', 0, '�ҦC�ﶵ�ҫD'),
(39, '1', 0, '�@�i�H��줭�����q'),
(49, '3', 0, '�_�ʤj��'),
(49, '4', 0, '���s�j��'),
(62, '4', 0, 'PUBLIC OPIN QUART'),
(59, '4', 0, '�����N�O���}�� (Luigi Arditi)'),
(12, '4', 0, '1�g'),
(13, '1', 0, '2007'),
(13, '2', 1, '2008'),
(57, '2', 0, 'Dr Kowk Wai'),
(57, '1', 0, 'Dr Juni Chan'),
(58, '1', 0, 'British Psychology Association �^��߲z�Ƿ|'),
(63, '4', 0, 'African and Asian studies'),
(55, '4', 1, 'SIEMENS AG(SIE)'),
(50, '4', 0, '22'),
(51, '3', 1, '6��'),
(51, '4', 0, '7��'),
(52, '2', 0, '24'),
(52, '1', 0, '14'),
(10, '1', 0, 'Modern Drama'),
(44, '3', 0, '34�󪺩_��'),
(44, '4', 0, '���y�P'),
(6, '4', 0, 'The American Journal of Economics and Sociology'),
(27, '4', 1, 'HD9.I42 N292');

-- --------------------------------------------------------

--
-- ��ƪ�榡�G `award`
--

CREATE TABLE IF NOT EXISTS `award` (
  `year` int(5) NOT NULL,
  `level` int(3) NOT NULL,
  `score` int(3) NOT NULL,
  `num` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5;

--
-- �C�X�H�U��Ʈw���ƾڡG `award`
--

INSERT INTO `award` (`year`, `level`, `score`, `num`) VALUES
(2011, 3, 0, 10),
(2011, 2, 30, 10),
(2011, 1, 100, 10);

-- --------------------------------------------------------

--
-- ��ƪ�榡�G `awardlist`
--

CREATE TABLE IF NOT EXISTS `awardlist` (
  `year` int(4) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `level` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5;


-- --------------------------------------------------------

--
-- ��ƪ�榡�G `college`
--

CREATE TABLE IF NOT EXISTS `college` (
  `id` varchar(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

--
-- �C�X�H�U��Ʈw���ƾڡG `college`
--

INSERT INTO `college` (`id`, `name`) VALUES
('1', '��ǰ|'),
('2', '�z�ǰ|'),
('3', '�u�ǰ|'),
('4', '�޲z�ǰ|'),
('5', '����|'),
('6', '����|'),
('K', '��ǰ|'),
('A', '��ǰ|');

-- --------------------------------------------------------

--
-- ��ƪ�榡�G `depart`
--

CREATE TABLE IF NOT EXISTS `depart` (
  `id` int(11) NOT NULL auto_increment,
  `college_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `college_id` (`college_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- �C�X�H�U��Ʈw���ƾڡG `depart`
--

INSERT INTO `depart` (`id`, `college_id`, `name`) VALUES
(1, 1, '�����Ǩt'),
(2, 1, '�~��y��Ǩt'),
(3, 1, '���֨t'),
(4, 1, '�@�����N�Ǩt'),
(5, 1, '���Ǭ�s��'),
(6, 2, '�z�ǰ|�j�@�����t'),
(7, 2, '�ƾǨt'),
(8, 2, '���z�t'),
(9, 2, '�ͪ���Ǩt'),
(10, 2, '���μƾǨt'),
(11, 2, '�ͪ���Ǭ�s��'),
(12, 3, '�u�ǰ|�j�@�����t'),
(13, 3, '�q���u�{�Ǩt'),
(14, 3, '����P���q�u�{�Ǩt'),
(15, 3, '���ƻP���q��ǾǨt'),
(16, 3, '���Ҥu�{��s��'),
(17, 3, '���q�u�{�Ǩt'),
(18, 3, '�q�T�u�{��s��'),
(19, 4, '�ް|�j�@�j�G�����t'),
(20, 4, '���~�޲z�Ǩt'),
(21, 4, '��T�޲z�Ǩt'),
(22, 4, '�]�Ⱥ޲z�Ǩt'),
(23, 4, '���@�ưȺ޲z��s��'),
(24, 4, '�H�O�귽�޲z��s��'),
(25, 4, '�Ǽ��޲z��s��'),
(26, 4, '��Ⱥ޲z��s��'),
(27, 5, '���v�ͪ���޺[�귽�Ǩt'),
(28, 5, '���v���ҤΤu�{�Ǩt'),
(29, 5, '���v�ͪ���s��'),
(30, 5, '���v�a��ΤƾǬ�s��'),
(31, 5, '���U��޺[���ή��v���z��s��'),
(32, 5, '���v�ưȬ�s��'),
(33, 6, '�F�v�g�پǨt'),
(34, 6, '�g�پǬ�s��'),
(35, 6, '�F�v�Ǭ�s��'),
(36, 6, '�Ш|��s��'),
(37, 6, '���|�Ǭ�s��'),
(38, 6, '����P�ȤӰϰ��s��'),
(39, 3, '��T�u�{�Ǩt');

-- --------------------------------------------------------

--
-- ��ƪ�榡�G `ident`
--

CREATE TABLE IF NOT EXISTS `ident` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(5) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- �C�X�H�U��Ʈw���ƾڡG `ident`
--

INSERT INTO `ident` (`id`, `name`) VALUES
(1, '�j�ǥ�'),
(2, '�Ӥh��'),
(3, '�դh��'),
(4, '�Юv/�б�');

-- --------------------------------------------------------

--
-- ��ƪ�榡�G `problem`
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
-- �C�X�H�U��Ʈw���ƾڡG `problem`
--

INSERT INTO `problem` (`Id`, `cat`, `question`, `hint`, `solution`, `score`, `visible`, `is_multiple`) VALUES
(1, 1, '����X�����̰Ϥ�24�Ҥj�ǹϮ��]���]�ø귽�A�H���q���L�A���ɦU���]�çQ�λ��ȡA24�չϮ��]�ë��귽�@�ɤ��z���A�ۤ��ﵥ���f����h�A�إߡu�ϮѥN�ɥN�٪A�ȡv�A�w�n�����ʹϮѥN�ɥN�٤��]�ڦX�@�A���ɪA�ȫ~��C�аݤU�C���@�ҾǮդ��b�ϮѥN�ɥN�٪A��24���]�ڦX�@�A�Ȥ��C�H', '<a target="_blank" href="http://lis.nsysu.edu.tw">�ϸ�B����</a>', '<a target="_blank" href="http://lis.nsysu.edu.tw">�ϸ�B����</a>>�ɮѪA��>�����̥N�ɥN��', 10, 1, 0),
(2, 1, '���[�t�]�ڦX�@���ɮĩʡA���]�P�ꤺ��L6�Ҥj�ǫإߧֳt�]�ڦX�@�A�ȡA�ӽХ��h�W�b3�Ӥu�@�Ѥ������A�ƦL��ұ�Ariel�ǰe�A�ɾ\�ϮѥH�l���H�e�C�����A�Ȧn�B�b��K�Q�X�@�]�v�͸`�ٮɶ��P�����A�G�b�ӽ��]�ڦX�@�ɡA��ĳ�u���Ҽ{�o�X�ҾǮաC�аݤU�����@�ҾǮդ��bNDDS�C�էֳt�]�ڦX�@�A�Ȥ��C�H', '�]�ڦX�@�A��', 'NDDS�C�էֳt�]�ڦX�@�A�ȥ]�t�G���\�j��(�t���j���)�B�����j�ǡB������Ǥj�ǡB��q�j�ǡB�F�v�j�ǡB�����j�ǤΤ��s�j�ǡA�g�U�]�P�N�[�j��z�ֳt�Ӧ��Ĥ��]�ڦX�@�A�ȡC<br />\n<p>���Y�Q���D��h�����Ʈw���Q�θ�T�A�w��ѻP<a target="_blank" href="http://reg.lib.nsysu.edu.tw:8080/activity/activityList?mainID=1">��Ʈw�����|</a>�A�ΰѾ\<a target="_blank" href="http://lis.nsysu.edu.tw/files/11-1001-2651.php">�귽�Q�νҵ{�ǲߺ�</a>�C</p>', 10, 1, 0),
(3, 1, 'MyLibrary�q�l�ѥ��x�A�[�\�W�L2�U�U���q�l�ѥi�ѥ��ծv�ͨϥΡA�аݨ䤤��MyiLibrary�q�l�ѭ���ϥΪ̤@���U�����Ƥ��o�W�L�X��?', '<p>�Q��<a target="_blank" href="http://service.lib.nsysu.edu.tw/www/database/detail.php?Item=675">My <br />\nLibrary�q�l�ѥ��x</a>�A�ӥ��x���Ѧ���Download Multiple Pages�����\��</p>', '�ϸ�B��������Ʈw�`�����b"Database Search"����J"myilibrary"��"<wbr>search"���I��"�ԲӸ�T"more�C<br />\n', 10, 1, 0),
(45, 1, '�����o����q�l���Ȫ���ơA�i�Q�ΤU�C���Ӹ�Ʈw�H', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;<span class="style31">�d�S�w�������(����)</span></p>', '�E�p�X���Ѯw�G���p�X�u�W���q��2001�~2�륿�����ߪ��s�D��Ʈw�����A�����p�X���t 853 �l�U�h�s�D�A�äw�^�������m�p�X���n�B�m�g�٤���n�B�m���ͳ��n�B�m�p�X�߳��n�B�m�P���n�������A�۳ХZ�騴���A�@�d�h�U�h�s�D���Ʀ�Ƥu�{�C<br />\n�E�z��j���طs�D���G�����⩤�|�a�]����B�O�W�B����B�D���^�ΨȬw���s�D�����B�g�Z�B�q�x�B���x�κ������s�D�θ�T�i�A�z�L�]�w����B�a�ϡB�C�鵥��X�˯��覡�z��峹�A�Ϊ̬O�Q������r�j�M�C<br />\n�E�x�W�s�D���z���G�����u�p�X���v�B�u�ۥѮɳ��v�B�u���ͳ��v�B�u�P���v�B�u����ɳ��v�B�u�g�٤���v�B�u�p�X���a�誩�v�B�uTTV�x���s�D�v���v�B�u��������v�B�u�u�Ӯ� ���v�B�u�p�X�߳��v�B�u�H���ֳ��v�B�u���ؤ���v�Ρuī�G����v���D�n���Ȥ������s�D���D���K<br />\n', 10, 1, 0),
(4, 1, '�����o���[�a�Ϥ��դh�פ�����ơA�i�Q�ΤU�C��̡H', '�դh�פ������', '�E<b>�O�W�պӤh�פ媾�ѥ[�Ȩt��</b>�G�x���x�W�a��70�l�Ҥj�Ǯհ|�B1000�h�Ӭ�s�Ҥ��պӤh�פ�K�n�A����89�~�_���ѳ����w���v�פ�q�l����U���A�ȡC<br />\n�E<b>Digital Dissertations Consortium [�Ʀ�Ƴդh�פ�����p��](DDC)</b>�G�ѥx�W�έ���a�Ϥ��p��108�Ӧ����۬��[�a�ϳդh�פ夤�D��һݥD�D�J�áA�[�\�q���B���v�B�Ш|�B��ǡB�u�{�����F�u�W������פ�w�F106,616���A���ӥ���ƶq�]�N�v�~�A�W�[�C<br />\n�E<b>Dissertations & Theses: A&I (²�� PQDT, Formerly: ProQuest Digital Dissertations)</b>�G����1861�~�����A230�h�U�g���[�պӤh�פ媺���ޡA1997�~�H��o���պӤh�פ�AŪ�̥i�K�O�s���Ʀ�ƽפ�e 24�������e�C', 10, 1, 0),
(5, 1, '���d��DOI�G10.1086/221735���峹�i�Q�Υ��զ�ؤu��H', 'DOI�G�Ʀ쪫���ѧO���]Digital Object Identifier�A²��DOI�^�O�@�M�ѧO�Ʀ�귽������A�H�@���Ʀ��ƪ��ѧO�X�C', '���դ�������q�l���Z�t�Υ]�t�u�ѦҤ��m�d�ߡv���\��ADOI���Ʀ쪫�󤧰ߤ@�X�A�i�@���d���I�C', 10, 1, 0),
(7, 2, '�ЧQ��JSTOR��Ʈw�^���U�z���D�G�H�U���@�����Z����The Metropolitan Museum of Art�ҥX���H', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;�i�Q��JSTOR[�L���ǳN���Z�����Ʈw]�C</p><br />\n', '�i�Q��JSTOR[�L���ǳN���Z�����Ʈw]��Browse By Publisher�\��̦r���s���C<br />\n<p>���Y�Q���D��h�����Ʈw���Q�θ�T�A�w��ѻP<a target="_blank" href="http://reg.lib.nsysu.edu.tw:8080/activity/activityList?mainID=1">��Ʈw�����|</a>�A�ΰѾ\<a target="_blank" href="http://lis.nsysu.edu.tw/files/11-1001-2651.php">�귽�Q�νҵ{�ǲߺ�</a>�C</p>', 10, 1, 0),
(8, 2, '<p>�аݥH�U���<font color="#0000FF"><b>���b</b></font>�mNaxos Music Library�n���ָ�Ʈw���d�����y���ֺ����z�����������H</p>', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;Naxos <br />\nMusic Library [�������u�W���ֹϮ��]]</p>', '�i�J"Naxos Music Library"��Ʈw��A�I��Advance Search(�i���j�M)�A�b���@�~�έ��ֺ������ﶵ���Y�i�ݨ�����C<br />\n<p>���Y�Q���D��h�����Ʈw���Q�θ�T�A�w��ѻP<a target="_blank" href="http://reg.lib.nsysu.edu.tw:8080/activity/activityList?mainID=1">��Ʈw�����|</a>�A�ΰѾ\<a target="_blank" href="http://lis.nsysu.edu.tw/files/11-1001-2651.php">�귽�Q�νҵ{�ǲߺ�</a>�C</p>', 10, 1, 0),
(9, 2, '�аݦb�mNaxos Music Library�n���ָ�Ʈw���yKeyword Search�z��JBeethoven �����X�����G�H', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;Naxos <br />\nMusic Library [�������u�W���ֹϮ��]]</p>', '���o�ѵ��~�|�G�bKeyword Search��J"Beethoven"�Y�i�o���˯����G�C<br />\n<p>���Y�Q���D��h�����Ʈw���Q�θ�T�A�w��ѻP<a target="_blank" href="http://reg.lib.nsysu.edu.tw:8080/activity/activityList?mainID=1">��Ʈw�����|</a>�A�ΰѾ\<a target="_blank" href="http://lis.nsysu.edu.tw/files/11-1001-2651.php">�귽�Q�νҵ{�ǲߺ�</a>�C</p>', 10, 1, 0),
(30, 4, '<p>�Х�SDOL ��Ʈw�A�@���U�z���D�G�b Search �˯��������A�˯���찣�F�i�H��� All Field �Ҧ�����˯��~�A�٥i�H��ܦۤv�Q�S�w�˯��������A�p�GAuthors �@�̵��C�аݡuAffiliation�v���˯����O�H���Ӹ�T�����j�M�̾ڡH�@</p>', '<a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>>����˯�>�q�l��Ʈw>SDOL (ScienceDirect OnLine) [Elsevier�q�l���Z]', '��ڼзǴ��Z���GISSN<br />\n���Z�W�ιq�l�ѦW�GTitle<br />\n�ѦҮѥءGReferences', 10, 0, 0),
(31, 4, '�ЧQ�ΡmSpringerLink�n��Ʈw�A�@���U�z���D�G�аݤU�C���@�����X���~���]�t�bSpringerLink���x�W�H', '<a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>>����˯�>�q�l��Ʈw>[Springer ��Kluwer Online�q�l���Z��Ʈw]', 'SpringerLink���x��������������q�l���Z, �q�l��, �q�l�t�C��, �q�l�ѦҤu���, ����ǫ��n(protocols)���C', 10, 1, 0),
(10, 2, 'Facebook�O���y�ثe�̼��������s�������@�A�ЧQ��Project Muse��Ʈw��Advance Search�\��A��X2�g2008�~�D�W(Article title)���]�t�uFacebook�v���峹�A�ë��X�L�̬O�U�o��b�U�C���⥻�Z�����H', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;Project Muse��Ʈw</p>', '(1)�i�JProject Muse��Ʈw�A�I��Advance Search�A�U�Կ����in "Article title"�A��J"facebook&quot;<br />\n(2)�í���By Year: From2008 to 2008', 10, 1, 1),
(11, 2, '�ЧQ�ιϮ��]�q�l�귽���� Periodicals Archive Online�A���X�U�C���@�����Z���O����ƮwHumanities�]General�^�D�D���Ҧ��������Z�H', '�i�Q��Periodicals Archive Online (PAO) [19-20�@�����þǳN���Z�����Ʈw]�C', '�i�ϥθӥ��x�Ҵ���Find Journals��Search Journal Records�\��A�A�[�H���wJournal Subject�C\n<p>���Y�Q���D��h�����Ʈw���Q�θ�T�A�w��ѻP<u>PAO��Ʈw�����|</u>�H��<a target="_blank" href="http://reg.lib.nsysu.edu.tw:8080/activity/activityList?mainID=1">�귽�Q�ΰ�¦�ҵ{(�G)</a>�C</p>', 10, 0, 0),
(12, 3, '��~�Ӥ���j�����g�ٵo�i�t�׬O�|�@�f�ت��A�Y�ͨ줤��g�٬F�����o�i����A�N���o�����Υ@�ɻȦ歺�u�g�پǮa�ݰ��ŰƦ��-�L�ݤ� �б¡C�L�б©��I�g�پǴ��Z�uThe American Economic Review�v�W���g�o��F�h�g�v�T��N�g�٪����Z�פ�A�հݳz�LEBSCOhost ��BSC��Ʈw����a�j�M�X�L�б´��b�����Z���ҵo�������פ�@�p�X�g�H', '<p>1.<a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;Business <br />\nSource Complete (BSC)--EBSCOhost [EBSCO�Ӻް]�g�����Ʈw]�C<br><br />\n2.�L�ݤұбª��^��W���G<span class="st">Justin Yifu Lin</span></p></p>', '�C�Ӹ�Ʈw�ҥΪ��˯����٩I�P�Y�g���ɬۦP�A�bEBSCOhost�t�C��Ʈw���A���˯��S�w�@�̭n��ܡ�AU Author���F�˯��S�w�Z���h�n��ܡ�SO Publication Name���C���GSSCI��Ʈw�]�O�N�Z�W�٬��uPublication Name�v�A���O�A���Ǹ�Ʈw�h�N�Z�W�٬��uJournal title�v�]�Ҧp�GProject MUSE�BSDOL�^�ΡuPublication title(s)�v�]�Ҧp�GBlackwell Synergy �q�l���Z�BProQuest�t�C��Ʈw�^�A�ΡuPublications�v�]�Ҧp�GLexisNexis�^�C', 10, 1, 0),
(64, 4, '�����bInformaworld e-journals [Taylor & Francis e-journals] (T & F) ��Ʈw�����m���z�Ƕi�i�n(Advances in Physics)���Z�A�b2010�~Impact Factor���F21.214 �A�аݳo�����Z�̦h�H�\Ū�L(Most read)���峹�S�O���@�g�H�д��Ѹӽg�峹�g�W�C', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;Informaworld <br />\ne-journals [Taylor &amp; Francis e-journals] (T &amp; F) </p>', '<p><a href="http://service.flysheet.com.tw/online/T&F/Q5_hint5.pdf"><br />\nhttp://service.flysheet.com.tw/online/T&amp;F/Q5_hint5.pdf</a></p>', 10, 1, 0),
(13, 3, '����Chen AL �P Kao LF �ҵo���峹: The benefit of excluding institutional investors from fixed-price IPOs - Evidence from Taiwan�A�аݤ峹�o�����@�~�Q�ޥΪ����Ƴ̦h�H', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;Social Sciences Citation Index (SSCI web��) [���|��ǤޥΤ��m����web��]�C</p>', '�i�JSSCI web����Ʈw��A�Q�Ρ�Title������˯��峹�g�W�A�i�H�ݨ�ӽg�峹�Q�ޥΦ��ơ�Times Cited: 22���A�I���i�H�ݨ�ޥθӤ峹���g�W�A�˯����G�e��������ܤޥθӽg�峹�����C�����I�Analyze Results����A�i�H�i��ޥΤ��R�A�b��Rank the records by this field:���U��ܡ�Publication Year���i�H�ݨ���~�Q�ޥΦ���', 10, 1, 0),
(14, 3, '�Q��Company Dossier ����Create Company List �\��d��A�N�d���T���w�b Public �V Parent ���q�����ASales/ Revenue ���w�b10,000,000,000 �H�W�P100,000,000,000�H�U�A���u�ƭn100000�H�W�A�åB�Q�Υ_���u�~�N�X(Search Primary NAICS Codes)�A�N�d��d�򭭩w�b33411 (Computer and Peripheral Equipment Manufacturing) ���O�A�аݤU�C���@�����q�L�k�Q�˯��X�ӡH', '�i�Q��LexisNexis Academic Universe (LN) [�k�߰Ӿ���Ǹ�Ʈw]�C', '�I���Ʈw�`���i�JLexisNexis Academic ��Ʈw��A����ܡ�Business���A�����I�Dossier Create a Company  List���A�M��̾��D�N�b�S�w���i�歭�w�A�̫���U��create����Y�i�C\n<p>���Y�Q���D��h�����Ʈw���Q�θ�T�P�˯������A�w��ѻP<u>LexisNexis��Ʈw�����|</u>�H��<a href="http://reg.lib.nsysu.edu.tw:8080/activity/activityList?mainID=1" target="_blank">�귽�Q�ΰ�¦�ҵ{(�G)</a>�C</p>', 10, 0, 0),
(15, 3, 'AREMOS�O�i����|��Ǭ�s�����n��Ʈw���@�A���e�]�t�x�W�a�Ϥ�����ұo�B���ġB�T���B�u�~�Ͳ��B�H�f�B�N�~�B�����B�~��......����ơC�H�U���ϥθӸ�Ʈw���B�J�A�аݦ�̬��D?', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;AREMOS</p>', 'AREMOS�ݩ�έp�ƾګ����������и�Ʈw�A���]�N�Ҧ� *.bnk��copy �i�����Ϻо���N:���A���s����Ӻ����Ϻо��~��������d���ƪ��N�X(*.bnk)�C <br />\n  �Ҧp�G�bQNET.bnk�]�y�x�W�a�ϰ���g�ٰʦV�έp�u����Ʈw�˯���U�z�^���A�u�g�٦����v�v������ܼƤ��N�X�O�uECH�v�C*.bnk�����O�}��Aremos�����Y�Ӹ�Ʈw���N�X�C<br />\n<p>���Y�Q���D��h�����Ʈw���Q�θ�T�A�w��ѻP<u>AREMOS��Ʈw�����|</u>�H��<a href="http://reg.lib.nsysu.edu.tw:8080/activity/activityList?mainID=1" target="_blank">�귽�Q�ΰ�¦�ҵ{(�G)</a>�C</p>', 10, 1, 0),
(16, 3, '�ЧQ�ιϮ��]�q�l�귽����ProQuest Education Journals�A�d����ZReview of Educational Research�A�аݸӴ��Z�b��Ʈw���A���夺�e�̦��^���ܨ��@�~�H', '�i�Q��ProQuest Education Journals [Proquest�Ш|�����Ʈw](PQEJ)�A�����ƪ��^���C', '�bProQuest�t�C��Ʈw������˯���졧Publication Title���i�˯��S�w�Z���A�I�Look up publications���i������J�Z���W�١A�ðO�o�Ŀ�iLimit results to:�j���uFull  text documents only�v�A�Y�i�򪾸ӥZ���b�S�w��Ʈw�����妬�����d��C <br />\n  �Ϊ̡A���˯����G�������A�A�I��uShow only full text�v�C<br />\n<p>���Y�Q���D��h�����Ʈw���Q�θ�T�P�˯������A�w��ѻP<u>ProQuest Education��Ʈw�����|</u>�H��<a href="http://reg.lib.nsysu.edu.tw:8080/activity/activityList?mainID=1" target="_blank">�귽�Q�ΰ�¦�ҵ{(�G)</a>�C</p>', 10, 0, 0),
(17, 4, '�ݩ󤤤s�j�ǩҵo���峹���A���@�g�峹�GPrinted double-T monopole antenna for 2.4/5.2 GHz dual-band WLAN operations�A�ӽg�@�̬�Kuo, YL�C�o�g�峹���Q��L�峹�ޥΡA�հݤU�C��̬��ޥθӽg�峹���Ƴ̦h���ޥΪ̡H', '<p>�i�Q��<a href="http://service.lib.nsysu.edu.tw/www/database/detail.php?Item=120">Science <br />\nCitation Index Expanded (SCIE) [��ǤޥΤ��m����web��]��Ʈw�C</a></p><br />\n', '(1)�d��Title=(Printed double-T monopole antenna for 2.4/5.2 GHz dual-band WLAN <br />\noperations)�F<br />\n(2)Times Cited��156���A�����I��156�Ʀr�s��<br />\n(3)�i�Q�Υ���Refine Results��Authors�I��more options/values�Y�i��X�ޥΦ��Ƴ̦h���ޥΪ�-WONG KL (28)', 10, 1, 0),
(18, 4, 'SDOL (ScienceDirect OnLine)��Ʈw���̦r�������s��E�}�Y�A�W���uEarly Human Development�v���@�~�A�аݥ��O�ݩ�H�U�����������m�H', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;SDOL <br />\n(ScienceDirect OnLine)��Ʈw�A����d��Content Type ���C</p>', '�~�|�@�G�Q��Browse�s���Ҧ����Z�AE�}�Y���M��A�Ѩ�Content  Type ���C <br />\n�~�|�G�G��ijournal / book title�j���A��J�uEarly Human  Development�v�A�Ѩ�Content Type ���C', 10, 1, 0),
(19, 4, '�u�ѨϻP�]���v�q�v�����X�{�j���j�l�Ｒ���]Large Hadron Collider²�١GLHC�^�������A�]�����a�Ϫ��誺�����e�����ˤl�C���z�Ǯa�Ʊ��ǥѥ[�t���Ｒ�������U�L�̸ѵ��G�ɤl�O�_���۹������u�W��١v�]SUSY�^�ɤl�s�b�H�ӱ���SpringerLink���d����D���]�tLHC�P�W��٧@��(Supersymmetry)�ѦҨ��ǹϮѤ��m�H(�ƿ��D)', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;SpringerLink��Ʈw&gt;�Q��Advanced <br />\nSearch</p>', '�Q��Advanced Search�A�bContent��줤��J�Gti:(LHC) and ti:(supersymmetry)�A�æbLIMITERS�����wONLY BOOKS�A�d�ߵ��G��2����ơA���O�O�uEarly Supersymmetry Searches with ATLAS Detector at LHC�v�P�uSignatures of Supersymmetry at the LHC�v', 10, 1, 1),
(20, 4, '�зj�M�bIEL��Ʈw�̡A�H"Robotics"�@���D�D��������IEEE���m�A�]�AIEEE���Z���x�BIEEE�|ĳ�פ��IEEE�޳N�зǡA�~���b2007 �~�ܤ��A���ư� 2008 �~����ơF�а��`�@�i�H�j�M��X�g���m�H', '�i�Q��IEL (IEEE/IET Electronic Library)  [��ڹq�l�q���u�{�Ƿ|�X���~��Ʈw]�A�I��advanced search�\��ASelect publications�u���IEEE�����Z�B�|ĳ�פ�μзǡAOther Resources���ݤĿ�A��OPTION  2���A�Q��Boolean expression�A�H���O�˯��C', '�D�D��(Index term)��W��de�A�G�Ӭd�ߪ����L�޿�y�k���G <br />\n  ( ((robotic)&lt;in&gt;de ) ) &lt;and&gt; (pyr &gt;= 2007  &lt;and&gt; pyr &lt;= 2009)&lt;and&gt;&lt;not&gt;(pyr=2008)\n<p>���Y�Q���D��h����IEL��Ʈw�Q�λP�˯�������������T�A�w��ѻP<u>IEL��Ʈw�����|</u>�H��<a href="http://reg.lib.nsysu.edu.tw:8080/activity/activityList?mainID=1" target="_blank">�귽�Q�ΰ�¦�ҵ{(�G)</a>�C</p>', 10, 0, 0),
(21, 4, '�аݦb���Z�uWater, Air, & Soil Pollution�v���Ҧ������uVisibility Variation with Air Qualities in the Metropolitan Area in Southern Taiwan�v���g�峹���A��2�Gannual visibility in Kaohsiung�A�O���а����X�~�����������ਣ�סH', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;SpringerLink��Ʈw�A����Ʈw������Water, Air, &amp; Soil Pollution���Z</p>', '�bSpringerLink���˯��즹���Z�A�äU��������˵��Ϫ�', 10, 1, 0),
(6, 1, 'DOI�G10.1086/221735���峹�Q�����b�������Z�A����Z��T��̬���H(�ƿ��D)', 'DOI�G�Ʀ쪫���ѧO���]Digital Object Identifier�A²��DOI�^�O�@�M�ѧO�Ʀ�귽������A�H�@���Ʀ��ƪ��ѧO�X�FISSN�G��ڼзǴ��Z�� ( International Standard- Serial Number�A ²��ISSN)�A�O��ڶ��ᤩ���Z���@�M�Τ@�s���C', '���դ�������q�l���Z�t�Υ]�t�u�ѦҤ��m�d�ߡv���\��ADOI���Ʀ쪫�󤧰ߤ@�X�A�i�@���d���I�C<br />\n', 10, 1, 1),
(44, 1, '�b�Ϯ��]�|�Ӫ��h�C���ť���ߡA���]���b�s�j�߷R�ݹq�v���v�̡ͭA�S���W���W�ߪ��q�v�M�ϡA�аݦ��q�v�M�Ϥ��A�Ƭ[�b�u<font color="#0000FF"><b>�ǥ�����:�L�ߪ��R</b></font>�v�M�u<font color="#0000FF"><b>���R�H��</b></font>�v�o�ⳡDVD�����O�����q�v�H', '<a target="_blank" href="http://www.lib.nsysu.edu.tw/mul_media/index.php">�h�C��A�Ⱥ�</a>', '(1) ������Ϯ��]4�ӵ�ť�Ϭd��<br />\n(2) �Q��<a target="_blank" href="http://www.lib.nsysu.edu.tw/mul_media/index.php">�h�C��A�Ⱥ�</a><br />\n', 10, 1, 0),
(22, 1, '�b�Ϯ��]�|�Ӫ��h�C���ť���ߡA���]���b�s�j�߷R�ݹq�v���v�̡ͭA�S���W���W�ߪ��q�v�M�ϡA�аݦ��q�v�M�Ϥ��A�Ƭ[�b�u<font color="#0000FF"><b>��V�ɪŷR�W�p</b></font>�v�M�u<font color="#0000FF"><b>�e�i����</b></font>�v�o�ⳡDVD�����O�����q�v�H', '<a target="_blank" href="http://www.lib.nsysu.edu.tw/mul_media/index.php">�h�C��A�Ⱥ�</a>', '(1) ������Ϯ��]4�ӵ�ť�Ϭd��<br />\n(2) �Q��<a target="_blank" href="http://www.lib.nsysu.edu.tw/mul_media/index.php">�h�C��A�Ⱥ�</a><br />\n', 10, 1, 0),
(23, 1, '�b��Ʈw�`�����A�s�u�d�򤺼Щ��u���Ϯ��]PC����ϥΡv����Ʈw�A�n����@�h�ӨϥΡH', '���Ϯ��]PC����ϥ�', '<p>�Ҧp<a target="_blank" href="http://service.lib.nsysu.edu.tw/www/database/detail.php?Item=43">Aremos</a>�A�N�O�u���Ϯ��]PC����ϥΡv����Ʈw�A</p><br />\n<br />\n', 10, 1, 0),
(24, 1, '�аݭY�Q�n�d�M�Y�@��<font color="#0000FF"><b>�Ϯ�</b></font>�b���꦳���X���Ϯ��]���A�ӧQ�ΤU�C�����p�X�ؿ��h�d��', '�Ϯ�', '�п˦ۨϥΤU�C���|�Ӹ�Ʈw�G<br />\n�E<a target="_blank" href="http://readopac1.ncl.edu.tw/nclJournal/index.jsp">�O�W���Z�פ���ިt��</a><br />\n�E<a target="_blank" href="http://readopac.ncl.edu.tw/nclJournal/guide.htm">�X�����Z���n�t��</a><br />\n�E<a target="_blank" href="http://nbinet2.ncl.edu.tw/">����ϮѮѥظ�T��</a><br />\n�E<a target="_blank" href="http://ndltd.ncl.edu.tw/">�O�W�պӤh�פ媾�ѥ[�Ȩt��</a>', 10, 1, 0),
(25, 1, '�Y�Q�d������<font color="#0000FF"><strong>�ǲߦp��ϥ�Microsoft office��ѳB�z�n��</strong></font>���ѡA���Ө���@�h�ӧ�', '<a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a> > �]�åؿ�', '�Q���]�åؿ��˯�>�b"����r"����JMicrosoft office�Y�i�H���M�ѡC', 10, 1, 0),
(26, 1, '�аݷ�z�Q�n��Y�g���Z�峹������A�o�{���ըèS���ȥ����Z�]�áA�B��Ʈw�W�]�S�����ѹq�l����A���ɱz�i�H�Q�ΤU�C�����A�Ȩ��o����', '���o���Z����', '�E<b>NDDS</b>�G���t�ε��X������Z�p�X�ؿ��P�]�ڦX�@�\��A����Ū�̻P�]���d�߰ꤺ400 �l�Ϯ��]���]�áA�i�u�W���X�ӽд��Z�B�ϮѡB�Ǧ�פ嵥��Ƥ��ƦL�ιϮѭɾ\���A�ȡC<br />\n�E<b>�����̥N�ɥN�٪A��</b>�G��X�����̰Ϥ�23�Ҥj�ǹϮ��]���]�ø귽�A�H���q���L�A���ɦU���]�çQ�λ��ȡA23�չϮ��]�ë��귽�@�ɤ��z���B�ۤ��ﵥ���f����h�A�إߡu�ϮѥN�ɥN�٪A�ȡv�A�H�n�����ʹϮѥN�ɥN�٤��]�ڦX�@�A���ɪA�ȫ~��C<br />\n�E<b>���ūn�Ϯ��p��</b>�G���ūn�ϰ�оǸ귽���߬��[�j�٦�Ǯծv�ͦ��ħQ�ΦU�չϮ��]�]�ø귽�A�êë��귽�@�ɤ��z���A�b���f�ﵥ��h�U�A��I�ϮѤ��ɪA�ȡA�γz�L�u�W�ɾ\�ӽйϮѤ��ɡC', 10, 1, 0),
(27, 1, '�аݯ��Ѹ���<font color="#0000FF"><b>HD57.7 A2746 2007</b></font>���o���ѡmDevelop Your Leadership Skills�n�|�Ʀb�U�C���@���Ѥ���H', '���զ��ϮѱĬ����|�ϮѤ����k', '���զ��ϮѫǱĬ����|�ϮѤ����k�A�G�Ƭ[��h��<br />\n(1)���������̡u�r�����ǡv�ƦC�A�A���u�ƭȤj�p�v�ƦC�C<br />\n(2)�Y��ƫᦳ�p���I�Ʀr�A�h�p���I�᭱���Ʀr�A���̡u�p���I��h�v�A�@��Ƥ@��Ƥ���ƦC�C<br />\n(3)�p�G���������G�զr���P�Ʀr���զX�A�ĤG�ժ��ƦC���ǭn��ӡu�p���I��h�v�A�@��Ƥ@��Ƥ���ƦC�C<br />\n', 10, 1, 0),
(28, 1, '�аݦb���շQ�n�\Ū�u�Ť��^�y�Ыǡv���Ҥ�A�i�H�Q�ΥH�U���Ӹ�Ʈw�H', '<a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>>����˯�>�q�l��Ʈw>�Ť��^�y�Ы�', '<span style="font-size: 12.0pt; font-family: �s�ө���,serif">�Q��<a target="_blank" href="http://service.lib.nsysu.edu.tw/www/database/index.php">��Ʈw�`��</a>�˯�</span>', 10, 1, 0),
(29, 1, '�~�w�A�O���~�ʹD�w�C�u�n���~�w�A�O�ۤp���i�Ӧ����C�v�аݦb�Ϯ��]���A�U�C��ئ欰�i�H�ٱo�W�O�Ӧ��~���H�H', '�ϸ�B����>�{�ѥ��B><a href="http://lis.nsysu.edu.tw/files/11-1001-1176-1.php" target="_blank">�W��</a>�̾ڱШ|���u���ʫ~�w�Ш|�P�i��סv�A�аѾ\�G<a href="http://ce.naer.edu.tw" target="_blank">�Ш|���~�w�Ш|�귽��</a>', '���O�٤J�]Ū�̤����Q���]���귽�]�Ƥ��v�q�A�ú��@�b�]���\���άd�M��Ʈɹ��R�P��䪺���ҡA�S�q�w�Ϯ��]�uŪ�̦欰�H�W�v�B�z��k�A�H��Ū�̧Q�γW�d�Τu�@�H�����椽�Ȩ̾ڡC<br />\n(�@)�p��k��4�����X�G�yŪ�̤��o��a�������Ʃΰʪ��J��...�A�H���@�]�����Ҥ��M��...�z�����W�w�D�n�O���F���@�������Ҫ��M��A�åB�L���C��Ū�̪��\Ū�v�Q�ӭq�w�C�Y�O�z�b�Ϯ��]�B���Y�F�誺�ݨD�ɡA�бz�ܫ��w���a�I(�p�G�F3��)�C<br />\n(�G)�Z�ҽåͯ��ݤ��@�Ϋ~�A�귽�����Ф��H�N���O<br />\n(�T)�̾ڱШ|���u���ʫ~�w�Ш|�P�i��סv�A�ն�Τ��@���Ҥ����c�C<br />\n�аѾ\�G<a href="http://ce.naer.edu.tw" target="_blank">�Ш|���~�w�Ш|�귽��</a>', 10, 1, 0),
(32, 4, '�ХΡmIEL/IEEE�n��Ʈw�A�@���U�z���D�G</br><br />\n�зj�M�bIEL��Ʈw�̡A�P"Cloud Computing"��"Network Coding"������IEEE �|ĳ�פ�A�~���b2008�~��2011�F��Q�|�a�I�b�W��(Shanghai)�B�_��(Beijing)�B����(Hong Kong)�Υx�_(Taipei)�A�а��`�@�i�H�j�M��X�g���m�H', '<a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>>����˯�>�q�l��Ʈw>IEL(IEEE/IET Electronic Library)[��ڹq�l�q���u�{�Ƿ|�X���~��Ʈw]', '�����Q��Advance Search�b"Metadata Only"�˯�����J�d�߭�"Cloud Computing" or "Network Coding"�A���̤��O�Ŀ�"IEL"��Subscribed Content;"IEEE"��Publisher;"Conferences"��Content Type;"Publication Year"����b2008-2011�A�̫�b�˯����G�e�����U��Conference Location����a�I�b�W��(Shanghai)�B�_��(Beijing)(Beijing, China)�B����(Hong Kong)�Υx�_(Taipei)�A�Y�i�o��g�ơC', 10, 1, 0),
(33, 4, '�bEnvironmental Science and Pollution Management��Ʈw���A�аݤU�C���O����Ʈw�ҥ]�t���Ǭ�d��H (�ƿ��D)', '<a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>>����˯�>�q�l��Ʈw>Environmental Science and Pollution Management (ESPM) ���Ҭ�Ǹ�Ʈw [ProQuest]', '�Ǭ�[�\�d��]�t�G�A�~�ͪ��޳N�B�Ů�~��B���v�ìV�B�ӵ߾ǡB�ͺA�ǡB�෽�귽�B���ҥͪ���ޡB���Ҥu�{�B���Ҽv�T���B�i (U.S.)�B���`�o��', 10, 1, 1),
(34, 4, '�ЧQ�ΡmWeb of Sicence(WOS)�n��Ʈw�^���U�z���D�G</br>�аݡuNovel sesquiterpenes and norergosterol from the soft corals Nephthea erecta and Nephthea chabroli�v���g�����bSCI�����Z�A��@�̦��X��O���s�j�Ǫ���¾���͡H', '<a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>>����˯�>�q�l��Ʈw>Science Citation Index Expanded(SCIE)[��ǤޥΤ��m����web��]ISI Web of Science(WOS)', '�����b�˯����"Title"����J���d�䪺�峹�g�W�A�I��i�J�ݸԲӸ�ƪ�"Address"�A�Y�i�ѸӳB�P�_�C<br />\n<p>�� �w��Ѿ\�G�ϸ�B����&gt;<a target="_blank" href="http://lis.nsysu.edu.tw/files/11-1001-2651.php">�귽�Q�νҵ{��</a>&gt;��@��Ʈw�ҵ{&gt;ISI Web of Science</p>', 10, 1, 0),
(35, 3, '�bWiley Online Library�q�l�귽���x�̡A�������h�ֺػP�uBusiness & Management�v�Ǭ�����������Z�H', '<a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>>����˯�>�q�l��Ʈw>Wiley Interscience[Wiley�q�l���Z�ιq�l�Ѹ�Ʈw]', 'Wiley-Blackwell �O07�~��John Wiley & Sons, Inc. ����Blackwell Publishing Ltd. �X�ֳХߡA09�~�_Blackwell���Ҧ����e�X�֨�Wiley Online Library�q�l�귽���x�̡C�i�JWiley Online Library��A�b�����s��(Browse)�����"Business, Economics, Finance & Accounting<br />\n"�U����"Business & Management"�����I��"View all products in Business & Management<br />\n"�Υi�򪾸ӻ�줤���������Z�����ƶq196�ءB�Ϯ�221�ءC', 10, 1, 0),
(36, 3, '�а�ProQuest Education Journals��Ʈw�������Z�yHarvard Educational Review�z��Ҧ���������q��ɶ}�l�H', '<a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>>����˯�>�q�l��Ʈw>ProQuest Education Journals [Proquest�Ш|�����Ʈw](PQEJ)(EJ)', '1. �I��yPublications�z<br />\n2. ����줺��J�uHarvard Educational Review�v<br />\n3. �˯����G�Y�X�{ "Full Text: 1988 �V current"', 10, 0, 0),
(37, 3, '�x�W�g�ٷs����Ʈw�D�n�M���A�U�C��̬��D�H', '<a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>>����˯�>�q�l��Ʈw>�x�W�g�ٷs����Ʈw (TEJ)', 'TEJ�O�H�]�g��Ƭ��D����Ʈw�A�D�n���ج��G<br />\n1.�]�ȸ�Ʈw�F2.�ꥻ�Φ��ΪѧQ�F3.�ѻ���T�F<br />\n4.��l�]��PDF file�F5,���q������T�F6.�`��g�٫��е��A�å��]�[���ȷs�D��ơC<br />\n�Ա��i�Ѿ\�x�W�g�ٷs��(TEJ)�x���G<a href="http://www.tej.com.tw/" target="_blank">http://www.tej.com.tw/</a>', 10, 1, 0),
(38, 3, '���o�E���ԧJ�]Peter F. Drucker�^�Q�L���u�޲z�Ǥ����v�AEmerald��Ʈw�]������2�g�ѥL�Ҽg�����Z�]Journals�^�峹�C�ЧQ��Advance Search�\��A�^����2�g�峹�O��褸�X�~�ҵo���H (�ƿ��D)', '<a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>>����˯�>�q�l��Ʈw>Emerald Fulltext �q�l���Z', '�Q��Advance Search�\�����Ĥ@������r����J�uPeter Drucker�v�ñN�j�M����]���uAuthor�v���Y�i�o�쪺2�g�峹����T�C<br />\n<p>�� �w��Ѿ\�G�ϸ�B����&gt;<a target="_blank" href="http://lis.nsysu.edu.tw/files/11-1001-2651.php">�귽�Q�νҵ{��</a>&gt;��@��Ʈw�ҵ{&gt;Emerald�p�󦨥\��Z��ھǳN���Z�C</p>', 10, 1, 1),
(39, 3, '�ЧQ��LexisNexis Academic��Ʈw�������~>Create a Company List�ӭ��w�˯��G<br>sales/Revenue����쭭�w�babove 100,000,000,000�H�W�AEmployees���wfrom100,000�H�ASIC code��3679�C</br>�հݡA�U�C�ԭz��̬��O�H', '<a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>>����˯�>�q�l��Ʈw>LexisNexis Academic Universe(LN)[�k�߰Ӿ���Ǹ�Ʈw]</a>', '�w��Ѿ\�G�ϸ�B����&gt;<a target="_blank" href="http://lis.nsysu.edu.tw/files/11-1001-2651.php">�귽�Q�νҵ{��</a>&gt;��@��Ʈw�ҵ{&gt;LexisNexis��Ʈw�����|', 10, 0, 0),
(40, 1, 'EBSCOhost��Ʈw�������@�ءi�˯��Ҧ��j�i�H�Τ峹��峹�H', '<a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>>����˯�>�q�l��Ʈw>Academic Search Premier(ASP)[EBSCO��X�Ǭ��Ʈw]', 'SmartText�˯��O�H�۵M�y���˯��������G�A�̦h��J5000�ӳ�r�A�i���H���塨�C<br />\n<p>�� �w��Ѿ\�G�ϸ�B����&gt;<a target="_blank" href="http://lis.nsysu.edu.tw/files/11-1001-2651.php">�귽�Q�νҵ{��</a>&gt;��@��Ʈw�ҵ{&gt;ISI Web of Science</p>', 10, 1, 0),
(41, 1, '�Q�Τ��~2010�~�ը����ͪ���Ǽ��o�D���@Steinman Ralph�bWeb of Science(WOS)���i���˯��A�аݥH���o���̪��W�r�i���˯���A��Q�ޥΦ��Ƴ̰����峹���H', '<a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>>����˯�>�q�l��Ʈw>Science Citation Index Expanded (SCIE) [��ǤޥΤ��m����web��]ISI Web of Science(WOS)', '���O�b�˯����"Author"��J"Steinman Ralph"�M��Q��Sort by"Times Cited"�i�o���C<br />\n<p>�� �w��Ѿ\�G�ϸ�B����&gt;<a target="_blank" href="http://lis.nsysu.edu.tw/files/11-1001-2651.php">�귽�Q�νҵ{��</a>&gt;��@��Ʈw�ҵ{&gt;ISI Web of Science</p>', 10, 1, 0),
(42, 2, '�ЧQ�Τ�����Z��(CJFD)��Ʈw�^���U�z���D�G�Q�Ψ�����r<�i�R��>�P<�a�D�P�ҥ�>�A�åB���w�˯���쬰�D�D�Ӷi���˯��A���<�a�D�P�ҥܡX�ͱi�R�¤p���Ч@��Q����P��>�ӽg�峹�A�аݤU�C�ԭz��̬��D�H', '<a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;������Z�����Ʈw(CJFD)', '�Ա��аѾ\�G�ϸ�B����&gt;<a target="_blank" href="http://lis.nsysu.edu.tw/files/11-1001-2651.php">�귽�Q�νҵ{��</a>&gt;��@��Ʈw�ҵ{&gt;������Z�����Ʈw(CJFD)', 10, 1, 0),
(43, 2, 'test', 'tes<br />\nss<br />\n', 'tt', 10, 0, 0),
(46, 1, '�Y�Q�u�W��ť�j�孵�֦��ءA�i�Q�ΤU�C��̡H', '�u�W��ť�j�孵�֦���', '<p>�EThe  Music Index Online:���֯��޸�Ʈw�O��Harmonie  Park Press�X�����s�@���A�����������ީM�D�D�ФޡA�ߤ@�]�O�̧��㪺���֤��m�~�ץD�D-�@�̫��ޡC </p><br />\n<p><br />\n  �EOxford  Music Online:�������@�ɥj�孵�֡B�������֡B��h�֡B�y�歵�֡B20�@�����֡B�q�@���v�e�ܤ����Ҧ����־ǻ�짹�㤺 �[�A���Ѿ��N���֮a�B�@���a�ǰO�B�@�~�B�ѥؤ��m�B�־��B�v���ɳs��(sound  clips)�B���ϵ����e�A�O�����{�̨��v�©ʪ����־ǳN�P��t���N�ʬ���ѡC</p><br />\n<p> <br />\n  �E<strong>�������u�W���ֹϮ��]:</strong>���d���ʱi�H�ﭵ��(Music  on Demand)�p�g�ۤ��A�]�A�@�d�h��@���a���@�~�A�t�W�L75,000���֦��A���ӱN�X�����s�ۤ���|�۰ʥ[�J�A�C�~�N����W�[��ʦh�i�s�M��(�� 3,000��)�C���اt�j�孵�֡B�ǲ���h�B�{�N��h�B�h�ª����B�覱�B�@�ɦU�a�����B��q�B�s�@���B����ǲέ��֡B�m���B�y��/�n�u�B�q�v���n�����A�C </p><br />\n<p><br />\n  �ERILM  Abstracts of Music Literature: �����U�ئ������֥D�D����ơA�]�A���ֲz�׾��v�B���ڭ��֡B�n�֤μ־��B���ֹϮ��]�ǡB�t���k�ΰO�Ъk�B���ֲz�׻P���R�B���ֱоǪk�B§�����֡B�R�СB���ֵ��פΪv�������F�P�ɤ]�]�t���֩M�U��줧���ۤ�����s���i�C: </p><br />\n', 10, 1, 0),
(47, 1, '<p>�аݭY�Q�n�d�M�Y�@��<b><font color="#0000FF">���Z</font></b>�b���꦳���X���Ϯ��]���A�ӧQ�ΤU�C�����p�X�ؿ��h�d��</p>', '���Z', '�п˦ۨϥΤU�C���|�Ӹ�Ʈw�G<br />\n�E<a target="_blank" href="http://readopac1.ncl.edu.tw/nclJournal/index.jsp">�O�W���Z�פ���ިt��</a><br />\n�E<a target="_blank" href="http://readopac.ncl.edu.tw/nclJournal/guide.htm">�X�����Z���n�t��</a><br />\n�E<a target="_blank" href="http://nbinet2.ncl.edu.tw/">����ϮѮѥظ�T��</a><br />\n�E<a target="_blank" href="http://ndltd.ncl.edu.tw/">�O�W�պӤh�פ媾�ѥ[�Ȩt��</a>', 10, 1, 0),
(48, 1, '�bWeb of Science��Ʈw���A�ϥ�Address����J����r: natl sun yat sen univ same taiwan�A�аݤޥΦ��Ƴ̰����峹�O���@�~�o��?', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>>����˯�>�q�l��Ʈw>Science Citation Index Expanded (SCIE) [��ǤޥΤ��m����web��]ISI Web of Science(WOS) <br />\n&gt;�i�J��Ʈw��i�椧�ޥΦ��ƱƧ�</p>', '<p>�ޥΦ��Ƴ̰����峹��<br />\n  Title: Fruit and vegetable intake and risk of major chronic disease<br />\n  </p><br />\n<p>Author(s): Hung, HC (Hung, HC); Joshipura, KJ (Joshipura, KJ); Jiang, R (Jiang, R); Hu, FB (Hu, FB); Hunter, D (Hunter, D); Smith-Warner, SA (Smith-Warner, SA); Colditz, GA (Colditz, GA); Rosner, B (Rosner, B); Spiegelman, D (Spiegelman, D); Willett, WC (Willett, WC)<br />\n</p><br />\n<p>Source: JOURNAL OF THE NATIONAL CANCER INSTITUTE  Volume: 96   Issue: 21   Pages: 1577-1584   DOI: 10.1093/jnci/djh296   Published: NOV 3 2004<br />\n  </p><br />\n<p>Times Cited: 281 (from Web of Science)</p>', 10, 1, 0),
(49, 1, '�b����դh�����Ʈw���A���w��쬰�D�W�A��J����r���ڤ��ϳf���A�аݦb�˯����G�����@�g�ѩP�Ӧb2007�~�o���峹�A�аݸӽg�峹���o����c��?', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;����պӤh�פ�����Ʈw(CDMD)</p>', '���פ嬰<br />\n�D�ءG��_��������ĵ��c�����R<br />\n�@�̡G�P��<br />\n�ǮաG�_���j��<br />\n�Ǧ�~�סG2006', 10, 1, 0),
(50, 3, '�bNew York Times (�ì��ɳ�)���A�Ч�X��2011�~9������ɤ������@�ѡH���g����D���ͤ�YAHOO�e�~�Q���K�����峹����', '<p>1.<a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;New York <br />\nTimes [ProQuest]��Ʈw<br />\n<br><br />\n2.�s�D���D���GAt Yahoo, a Weak Board Stumbles in a Series of Missteps</p>', '�峹���D�GAt Yahoo, a Weak Board Stumbles in a Series of Missteps<br />\n�@�̡GDavidoff, Steven<br />\n����G21 Sep 2011<br />\n', 10, 1, 0),
(51, 4, 'Environmental Science and Pollution Management (ESPM) ���Ҭ�Ǹ�Ʈw, �i��Ϊ����ި�@�@���H', '<a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>>����˯�>�q�l��Ʈw>Environmental Science and Pollution Management (ESPM) ���Ҭ�Ǹ�Ʈw [ProQuest]', '1.Aquatic Sciences & Fisheries Abstracts (ASFA) thesaurus (subjects)<br />\n2.EIS Controlled terms (subjects)<br />\n3.Life Sciences thesaurus (subjects)<br />\n4.Pollution Controlled Vocabulary (English)<br />\n5.Taxonomic Terms (Latin Names of Organisms Vocabulary)<br />\n6.Water Resources Abstracts thesaurus (subjects)', 10, 1, 0),
(52, 4, 'Coatings�O���ݪ����л\����ơA�Ш�EV��Ʈw�B�I��k�W�����iThesaurus�j�B��J�icoatings�j���I��iExact Term�j����e�X�d�ߡ]Submit�^�A�Q��Thesaurus�\��i���U�z�d�ߩҿ�J����r�b�o�ӾǬ��쪺���h���Y�F�а�coatings���U�٥i�Ӥ����X�ا�`�J���l�Ǭ���]Narrower Terms�^�H', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;Ei <br />\nEngineering Village 2 (EV2)[�u�{��s���޸�Ʈw]</p>', '��34�ؤl�Ǭ�����O���GAbrasive coatings�BBituminous coatings�BBlack coatings�BBoride coatings�BCeramic coatings�BChromate coatings�BComposite coatings�BDiffusion coatings�BElectrophoretic coatings�BElectrostatic coatingsEnamels�BEpitaxial layers�BGlazes�BHard coatings�BInorganic coatings�BLinings�BLuminous coatings�BMetal coatings�BOptical coatings�BOrganic coatings�BPaint�BPhosphate coatings�BPlastic coatings�BPowder coatings�BProtective coatings�BReflective coatings�BRubber coatings�BSilicone coatings�BSprayed coatings�BStripping (removal)Tape coatingsTemporary coatingsVacuum deposited coatingsWater borne coatings', 10, 1, 0),
(53, 4, '�зj�M ASTM �{��з� D1068-10�A�o�g�зǰѦҤF�X�gASTM�з� ?', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;ASTM��Ʈw</p>', '����r�d�ߪ������W D1068-10�A�Y�˯��즹�зǡA����A2. Referenced Documents�i�ݨ�ҰѦҪ�18�gASTM�з�', 10, 1, 0),
(54, 4, 'SpringerLink�q�l�Ѹ�Ʈw���A2011�~�X�����uWave Turbulence�v�@�ѡA���Ѧ@���X��?', '<p>1.<a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;SpringerLink <br />\nOnline Book 1997-2010 [Springer�q�l��]-[TAEBC]<br><br />\n2.����ISBN��<span class="nowrap lh15px">978-3-642-15941-1</span></p>', '1.�Q��Springer�q�l�Ѹ�Ʈw�A�ϥζi���˯��A���w"Title Only"�˯�Wave Turbulence�F�~�׭��w��2011�~�FLimiters���w��ONLY BOOKS�A�˯����G����4���Y������<br />\n2.�Q�ζi���˯���Citation�椤������JISBN:978-3-642-15941-1�A�Y�i�����˯��즹��', 10, 1, 0),
(55, 3, '�Q��LexisNexis Academic��Ʈw�ACompany Dossier ���� Create Company List �\��d��A�NCompany Type���w�bPublic �V Patent���q�����ASales/ Revenue ���w�b 100,000,000,000 �H�W�A�åB�Q��NAICS Code�A�N�d��d�򭭩w�b 33411 (Computer and Peripheral Equipment Manufacturing) ���O�A�аݤU�C���@�����q�i�H�Q�˯��X��?', '<a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;LexisNexis Academic Universe (LN) [�k�߰Ӿ���Ǹ�Ʈw]<p>�@</p>', 'SIEMENS AG���q<br />\nType:Public - Parent<br />\nAddress:Wittelsbacherplatz 2 Munich    D-80333 Germany<br />\nPhone:+49-89-636-00<br />\nFax:+49-89-636-34242<br />\nTicker(s):SIE<br />\nExchange(s):MIL<br />\nEmail:contact@siemens.com<br />\nInternet:www.siemens.com<br />\nEmployees:405,000', 10, 1, 0),
(56, 3, 'Wiley Online Library�q�l�귽���x���Ѫ��q�l���Z���A�H�U���@�������Z�ƦW�A�b2010�~��JCR(Journal Citation Reports) ��Ʈw�����ӾǬ����O���Ĥ@�W�H (�ƿ��D)', '<a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;Wiley Online Library[Wiley�q�l���Z+�q�l��]�A�v�@�˯��ﶵ�������Z<p>', '�bWiley Online Library��Ʈw�Asearch�椤���w"Publication titles"�A�M����J���Z�W�j�M�A�����I����Z�A�䤤���ԲӤ��д��Z�bJCR��Ʈw�����Բӱ��p', 10, 1, 1),
(57, 3, '�bEmerald�C�~�X�����פ�@�̤����W�L400�H���x�W�@�̡C �а�"Influence of online learning skills in cyberspace"�峹���@�̬�?', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;Emerald Fulltext �q�l���Z��Ʈw</p>', '�D�ءGInfluence of online learning skills in cyberspace<br />\n����Research paper<br />\n�@��: Li-An Ho, Tsung-Hsien Kuo, Binshan Lin<br />\n�Z�W: Internet Research Volume: 20 Issue: 1 2010', 10, 1, 0),
(58, 3, 'PsycArticles��Ʈw���������Z�Ӧۭ��ӾǷ|�ҵo��?', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;PsycARTICLES <br />\n�߲z�ǹq�l���Z [EBSCOhost]&lt;/a&gt;��Ʈw</p>', '����߲z�Ƿ| (APA) �� PsycARTICLES �O�믫���R��줧�P����Ų�ǳN�ά�Ǥ峹���i�a�ӷ��C��Ʈw�]�t�� APA �Ψ� Educational Publishing Foundation (EPF) �X�����q�H�ΨӦۥ]�A�[���j�߲z��| (CPA) �� Hogrefe �X�����ε�������´�ҥX���A�W�L 70 �ت��w�o����Z������ 150,000 �g�峹�C ', 10, 1, 0),
(59, 2, '�Q��Naxos Music Library��Ʈw�d�X��Violin Concerto in D major Op.35�֡uD�j�դp���^�󫵦��A�@�~35�v�A�O����@���a���@�~�H', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;Naxos <br />\nMusic Library [�������u�W���ֹϮ��]]</p><br />\n<p>�@</p>', '�����b�˯��椤��JViolin Concerto in D major Op.35�A�Ĥ@����ƧY�i���D�@���̬���i�Ҵ���(Tchaikovsky, Pyotr Il''yich)', 10, 1, 0),
(60, 2, '�ЧQ��Naxos Spoken Word Library��Ʈw�A��XMark Twain(���J�P�R��)�������Өൣ��ǧ@�~(�ƿ��D)', '<p>�Q��<span class="style37"><a target="_blank" href="http://service.lib.nsysu.edu.tw/www/database/detail.php?Item=358">Naxos <br />\nSpoken Word Library [�������u�W���n�Ϯ��]]</a></span>��Ʈw</p>', '�i�J��Ʈw��A��ܧ@�̳s������ܦr��T���I��Twain, Mark (b.1835 - d. 1910)�A�Y�i�ݨ차�J�R�Ū��@�~', 10, 1, 1),
(61, 2, 'Project Muse�Ҷ��X�����Z���]�t���ؾǬ쬰�D�H', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;Project Muse��Ʈw</p>', '�i�J��Ʈw���I��Browse Journals��Browse Journals by Discipline', 10, 1, 0),
(62, 1, '2010�~JCR�b�Ǽ����O(Communication)���v�T�Y��(Impact Factor)�ƦW���Ĥ@�����Z�O�H', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;Journal Citation Reports on the Web (JCR Web)��Ʈw</p>', '�i�J��Ʈw��A���JCR Social Sciences Edition�PView a group of journals by [Subject category]��Communication���O��View Journal Data - sort by[Impact Factor]�A�Ĥ@�W���Z��COMMUN MONOGR', 10, 1, 0),
(63, 3, '�x�W��~�Ө���֤l�ƪ��¯١A��s��ܤj�� �����H�{����raising children requires a lot of money���C�бz�չϧ�X�o�g�峹�ӷ��A��o�����Z�Z�W���H', '<p><a href="http://lis.nsysu.edu.tw" target="_blank">�ϸ�B����</a>&gt;����˯�&gt;�q�l��Ʈw&gt;Informaworld <br />\ne-journals [Taylor &amp; Francis e-journals] (T &amp; F) </p>', 'http://service.flysheet.com.tw/online/T&F/Q5_hint5.pdf', 10, 1, 0);

-- --------------------------------------------------------

--
-- ��ƪ�榡�G `user`
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

