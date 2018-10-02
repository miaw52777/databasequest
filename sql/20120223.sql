-- phpMyAdmin SQL Dump
-- version 2.6.4-pl1
-- http://www.phpmyadmin.net
-- 
-- �D��: localhost
-- �إߤ��: Feb 23, 2012, 12:27 PM
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 
-- �C�X�H�U��Ʈw���ƾڡG `admin`
-- 

INSERT INTO `admin` VALUES ('admin', '1234');
INSERT INTO `admin` VALUES ('test', 'libweek@)!!');

-- --------------------------------------------------------

-- 
-- ��ƪ�榡�G `adminvisitlog`
-- 

CREATE TABLE `adminvisitlog` (
  `id` int(11) NOT NULL auto_increment,
  `ipstamp` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=517 DEFAULT CHARSET=latin1 AUTO_INCREMENT=517 ;

-- 
-- ��ƪ�榡�G `answer`
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
-- �C�X�H�U��Ʈw���ƾڡG `answer`
-- 

INSERT INTO `answer` VALUES (1, 1, '�g�`�ݭn', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (1, 2, '�����ݭn', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (1, 3, '�ܤֻݭn', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (1, 4, '���ݭn', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (1, 5, '����', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (1, 6, '�^��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (1, 7, '��L�y��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (2, 1, '�g�`�ݭn', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (2, 2, '�����ݭn', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (2, 3, '�ܤֻݭn', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (2, 4, '���ݭn', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (2, 5, '�{��ʸ�� (5�~��)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (2, 6, '�^���ʸ�� (10�~�H�e)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (3, 1, '�g�`�\Ū', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (3, 2, '�����\Ū', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (3, 3, '�ܤ־\Ū', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (3, 4, '�q���\Ū', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (3, 5, '���������귽', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (3, 6, '�q�l���x�ϥ��W�v', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (4, 2, '�����ϥιL(�U���D�K��)', 0, 0, 1, '5,6');
INSERT INTO `answer` VALUES (4, 1, '���ϥιL', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 2, 'EndNote ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 3, 'Zotero ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 4, 'Mendeley ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 4, '�i������P�B�ƥ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 5, '�P�פ弶�g�{��(word�Blatex�K)�i���X', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 6, '�i�פJPDF�A�۰��^���ѥ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 7, '��L:', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 1, 'Refworks ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 3, '�i�K�O�ϥ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 2, '�ϥβߺD', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 1, '�ϥΤ覡²��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (8, 2, '�_', 0, 0, 1, '10,11,12,13,14,15');
INSERT INTO `answer` VALUES (9, 1, '�����D�Ϯ��]���q�l��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 2, '���ߺD�ϥ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 3, '���e���ŦX�ݨD', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 4, '���|�ϥ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 5, '�s�u�t�פӺC', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 6, '��L�G', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 1, '�i���s', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 2, '�оǩһ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 3, '�ǲ߻ݭn', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 4, '�A�ѱM�~��줧��s�Ͷ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 5, '�L�S�w�ت����s��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 6, '�����ӤH�\Ū����', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 7, '��L�G', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 1, '�Ѯv����', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 2, '�P������', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 3, '�M�~���c(�p�Ƿ|)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 4, '�Ϯ��]����', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 5, '�Ϯ��]���s(�������.�q�l��.E-mail��)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 6, '�Ϯ��]���߽ҵ{', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 7, '�߰ݹϮ��]�]��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 8, '��L�G', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (12, 1, '�Ϯ��]�]�åؿ��t��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (12, 2, '�Ϯ��]�q�l�귽�t��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (12, 3, 'Google���j�M����', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (12, 4, '��L�G', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (13, 3, '�����C��1-2��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (13, 2, '�X�G�C�g�ϥ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (13, 1, '�X�G�C�Ѩϥ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 2, '�L�k�s�u�n�J�ϥ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 3, '�䤣��һݹϮ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 4, '�L����', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 5, '�s�u�t�פӺC', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 1, '�����J��x��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 4, '�������i', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 3, '�q�l���BE-mail', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 2, '�]�T²���B�������', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 1, '�u�W�ϥλ���', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 14, '����\Ū�覡�ŦX�ݨD', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 15, '�ϥλ����M��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 9, 'Columbia University Press', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 8, 'Cambridge eBook Collections (CEC)  ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (18, 5, '�D�`���N�A��]�G', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (18, 4, '�����N', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (18, 3, '�L�N��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (18, 2, '���N', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (18, 1, '�D�`���N', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 5, '��L:', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 2, '�|�u����ιq�l�Ѫ���]�G', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 1, '�|�u����ίȥ��Ѫ���]�G', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 10, 'CRCnetBASE', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 11, 'Gale Virtual Reference Library(GVRL)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (8, 1, '�O', 0, 0, 1, '10');
INSERT INTO `answer` VALUES (17, 7, 'Cambridge Companions Online (CCO) ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 6, '<font color="red">�S�ιL</font>', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (17, 1, '�D�`���N', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (17, 2, '���N', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (17, 3, '�L�N��', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (17, 4, '�����N', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (17, 5, '�D�`���N', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (17, 13, 'ABC-CLIO & Greenwood', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 14, 'Sage eReference', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 12, 'OVID', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 15, 'Siam Reference Collection', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 16, 'Springer eBookCollection(SpringerLink)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 17, 'Oxford Scholarship Online Collection (OSO)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 18, 'Ebrary', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 19, 'IOS', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 20, 'MyiLibrary', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 21, 'Ebsco eBooks (��NetLibrary)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 22, 'ScienceDirect(SDOL)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 23, 'Taylor & Francis eBooks', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 24, 'Emerald eBook Series', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 25, 'InfoSci', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 26, 'S. Karger AG', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 27, 'Informa Healthcare', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 28, 'McGraw-Hill e-book', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 29, '����ù.�ƺ��c�餤��q�l��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 30, 'L&B�Ʀ�Ϯ��]', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 31, 'HyRead eBook ����q�l��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 32, '�西����q�l��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (17, 33, 'airitiBooks�ؤ�q�l��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 13, '�ϥ��v���R��<br>(�p�G�P�ɨϥΤH�ơB�C�L�U���d��)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 12, '�ϥΤ�������ާ@', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 11, '�s�u�t�׾A�y', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 9, '����v���M��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 10, '�[�\�Ǭ�D�D�״I', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 8, '���e�~��}�n', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 7, '��Ƥ��e�s�o', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 6, '������T�ݨD', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 5, '�D�`���n', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (16, 3, '�L�N��', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (16, 4, '�����n', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (16, 1, '�D�`���n', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (16, 2, '���n', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (13, 4, '�����ϥ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 6, '��t�Τ��������x', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 7, '�U���B�C�L�νƻs���D', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 8, '��L�G', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 5, '���߽ҵ{', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 6, '�]���ѦҿԸߪA��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 7, '��L�G', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 16, '�s���覡�K�Q', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 17, '�j�M�\��}�n', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 18, '�ӤH�ƪA�ȥ\�৹��<br>(�p�G�ڪ��̷R�B���ҡB���O)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (16, 19, '���ѾA�X�b�����PDA����ʸ���\Ū�q�l�Ѫ��Φ�', 0, 0, 0, ' ');

-- --------------------------------------------------------

-- 
-- ��ƪ�榡�G `award`
-- 

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
  `id` int(4) NOT NULL auto_increment,
  `cat` tinyint(1) NOT NULL,
  `question` mediumtext NOT NULL,
  `visible` tinyint(1) NOT NULL default '0',
  `is_multiple` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

-- 
-- �C�X�H�U��Ʈw���ƾڡG `problem`
-- 

INSERT INTO `problem` VALUES (1, 1, '�аݱz�ݭn��ƪ��y���ݨD�צp��H', 1, 4);
INSERT INTO `problem` VALUES (2, 1, '�аݱz���ݭn����s��ƮɮıƦW�p��H(�Ш̩һݤ��ƦW�̧Ǽg�W�Ʀr)', 1, 4);
INSERT INTO `problem` VALUES (3, 1, '�аݾ\Ū����q�l���x(�Ҧp�G�Ť��^�y�ЫǡB�ӷ~�P�Z�B�^�X�f�^�y�K��)���W�v����?', 1, 4);
INSERT INTO `problem` VALUES (4, 2, '�z�O�_���ϥιL�ѥغ޲z�u��H�Ҧp�GRefworks�BEndNote�BZotero�BMendeley...���C', 1, 1);
INSERT INTO `problem` VALUES (5, 2, '�Y���ϥιL�ѥغ޲z�u��A�аݱz���`�ϥΨ��Ӥu��H (�i�ƿ�)', 1, 2);
INSERT INTO `problem` VALUES (6, 2, '�ӤW�D�A�z��ܨϥΦ��u�㪺��]����H (�i�ƿ�)', 1, 2);
INSERT INTO `problem` VALUES (7, 3, '�Y�P�@���ѹϮ��]�P�ɴ��ѯȥ��P�q�l���A�аݱz�|�u����έ��@�ث������ϮѡH', 1, 1);
INSERT INTO `problem` VALUES (8, 3, '�аݱz�O�_���ϥιL�Ϯ��]���q�l�ѡH', 1, 1);
INSERT INTO `problem` VALUES (9, 4, '�z�����ϥιϮ��]�q�l�Ѫ���]�O�H (�i�ƿ�)', 1, 2);
INSERT INTO `problem` VALUES (10, 5, '�аݱz�ϥιϮ��]�q�l�Ѫ��D�n�ʾ�����H (�i�ƿ�)', 1, 2);
INSERT INTO `problem` VALUES (11, 5, '�аݱz���`�z�L��غ޹D�o���Ϯ��]�q�l�Ѫ��A�ȸ�T�H (�i�ƿ�)', 1, 2);
INSERT INTO `problem` VALUES (12, 5, '�аݱz�ϥιϮ��]�q�l�Ѫ��~�|����H', 1, 1);
INSERT INTO `problem` VALUES (13, 5, '�аݱz�ϥιϮ��]�q�l�Ѫ��W�v����H', 1, 1);
INSERT INTO `problem` VALUES (14, 5, '�аݱz�ϥιϮ��]�q�l�Ѹ��`�J�쪺�x������H (�i�ƿ�)', 1, 2);
INSERT INTO `problem` VALUES (15, 5, '�Ϯ��]���Ѫ��A�Ȥ��A�zı�o��ϥιq�l�ѳ̦����U���O�H (�i�ƿ�)', 1, 2);
INSERT INTO `problem` VALUES (16, 6, '�дN�Ϯ��]�ϮѪ����e�P���Ѥ覡�A�̱z�������{�פĿ�A�X���ﶵ', 1, 4);
INSERT INTO `problem` VALUES (17, 7, '<font color="red">�I�����ϥιL����Ʈw�A�ФĿ�u�S�ιL�v���ﶵ</font>', 1, 4);
INSERT INTO `problem` VALUES (18, 8, '����Ө��A�z���Ϯ��]�Ҵ��Ѫ��q�l�ѬO�_�P�캡�N�H', 1, 1);
INSERT INTO `problem` VALUES (19, 8, '�аݱz���Ϯ��]�Ҵ��Ѫ��q�l�Ѧ����ĳ�H', 1, 3);

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
  `SelectedRecord` varchar(10000) NOT NULL default '[]',
  `textarea` varchar(1000) NOT NULL,
  `otherop` varchar(10000) NOT NULL,
  `ipstamp` varchar(30) NOT NULL,
  `starttime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `endtime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100546 DEFAULT CHARSET=utf8 AUTO_INCREMENT=100546 ;

-- 
-- �C�X�H�U��Ʈw���ƾڡG `user`
-- 

INSERT INTO `user` VALUES ('2012', 100545, '�\���}', 'M993040038', '2', '3', '��T�u�{�Ǩt�Ӥh�Z', 'miaw52777@gmail.com', '0932747492', '["q_7a_0","q_10a_6","q_11a_7","q_12a_3","q_14a_7","q_18a_4"]', 'q_19_options@gjghk,q_20_options@6546+465', 'q_7a_0@654654,q_10a_6@fjff,q_11a_7@877876,q_12a_3@12313123,q_18a_4@drtyery', '140.117.169.186', '2012-02-22 22:51:30', NULL);
INSERT INTO `user` VALUES ('2012', 100541, '�d�\��', 'A0950083', '4', 'K', '�ϸ�B�ѦҿԸ߲�', 'kpsh@staff.nsysu.edu.tw', '2452', '["q_1a_r0_0","q_1a_r1_1","q_1a_r2_0","q_14a_2","q_14a_4","q_15a_1","q_15a_3"]', '', '[]', '140.117.120.20', '2012-02-09 14:21:42', NULL);

CREATE TABLE `topic` (
  `id` int(4) NOT NULL auto_increment,
  `title` mediumtext NOT NULL,
  `visible` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

-- 
-- �C�X�H�U��Ʈw���ƾڡG `topic`
-- 

INSERT INTO `topic` VALUES (1, '�ϮѸ귽���ϥλݨD', 0);
INSERT INTO `topic` VALUES (2, '�ѥغ޲z�u�㤧�ϥβ{�p', 0);
INSERT INTO `topic` VALUES (3, '�Ϯ��]�q�l�Ѥ��ϥβ{�p', 0);
INSERT INTO `topic` VALUES (4, '�����ϥιϮ��]�q�l�Ѥ�Ū��', 0);
INSERT INTO `topic` VALUES (5, '�Ϯ��]�q�l�Ѫ��ϥβߺD', 0);
INSERT INTO `topic` VALUES (6, '�дN�Ϯ��]�q�l�Ѫ����e�P���Ѥ覡�A�̱z�������{�פĿ�A�X���ﶵ ', 0);
INSERT INTO `topic` VALUES (7, '�H�U���O�W�ǳN�q�l���p���Ҥ޶i���q�l�Ѹ�Ʈw�A�аw��z���ϥιL����Ʈw�A�̨ϥκ��N�{�פĿ�A�X���ﶵ', 0);
INSERT INTO `topic` VALUES (8, '�Ϯ��]�Ҵ��Ѫ��q�l�Ѿ��麡�N��', 0);