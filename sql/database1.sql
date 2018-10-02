-- phpMyAdmin SQL Dump
-- version 2.6.4-pl1
-- http://www.phpmyadmin.net
-- 
-- �D��: localhost
-- �إߤ��: Nov 30, 2011, 03:16 PM
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

INSERT INTO `admin` VALUES ('admin', 'libweek@)!!');

-- --------------------------------------------------------

-- 
-- ��ƪ�榡�G `adminvisitlog`
-- 

CREATE TABLE `adminvisitlog` (
  `id` int(11) NOT NULL auto_increment,
  `ipstamp` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1144 DEFAULT CHARSET=latin1 AUTO_INCREMENT=1144 ;

-- 
-- �C�X�H�U��Ʈw���ƾڡG `adminvisitlog`
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

INSERT INTO `award` VALUES (2011, 3, 0, 10);
INSERT INTO `award` VALUES (2011, 2, 30, 10);
INSERT INTO `award` VALUES (2011, 1, 100, 10);

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
INSERT INTO `college` VALUES ('K', '��ǰ|');
INSERT INTO `college` VALUES ('A', '��ǰ|');

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
  `question` text NOT NULL,
  `visible` tinyint(1) NOT NULL default '0',
  `is_multiple` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

-- 
-- �C�X�H�U��Ʈw���ƾڡG `problem`
-- 

INSERT INTO `problem` VALUES (1, '����X�����̰Ϥ�24�Ҥj�ǹϮ��]���]�ø귽�A�H���q���L�A���ɦU���]�çQ�λ��ȡA24�չϮ��]�ë��귽�@�ɤ��z���A�ۤ��ﵥ���f����h�A�إߡu�ϮѥN�ɥN�٪A�ȡv�A�w�n�����ʹϮѥN�ɥN�٤��]�ڦX�@�A���ɪA�ȫ~��C�аݤU�C���@�ҾǮդ��b�ϮѥN�ɥN�٪A��24���]�ڦX�@�A�Ȥ��C�H', 1, 0);
INSERT INTO `problem` VALUES (2, '���[�t�]�ڦX�@���ɮĩʡA���]�P�ꤺ��L6�Ҥj�ǫإߧֳt�]�ڦX�@�A�ȡA�ӽХ��h�W�b3�Ӥu�@�Ѥ������A�ƦL��ұ�Ariel�ǰe�A�ɾ\�ϮѥH�l���H�e�C�����A�Ȧn�B�b��K�Q�X�@�]�v�͸`�ٮɶ��P�����A�G�b�ӽ��]�ڦX�@�ɡA��ĳ�u���Ҽ{�o�X�ҾǮաC�аݤU�����@�ҾǮդ��bNDDS�C�էֳt�]�ڦX�@�A�Ȥ��C�H', 1, 0);
INSERT INTO `problem` VALUES (3, 'MyLibrary�q�l�ѥ��x�A�[�\�W�L2�U�U���q�l�ѥi�ѥ��ծv�ͨϥΡA�аݨ䤤��MyiLibrary�q�l�ѭ���ϥΪ̤@���U�����Ƥ��o�W�L�X��?', 1, 0);
INSERT INTO `problem` VALUES (4, '�����o���[�a�Ϥ��դh�פ�����ơA�i�Q�ΤU�C��̡H', 1, 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=100496 DEFAULT CHARSET=utf8 AUTO_INCREMENT=100496 ;

-- 
-- �C�X�H�U��Ʈw���ƾڡG `user`
-- 

INSERT INTO `user` VALUES ('2011', 100495, '�\���}', 'M993040038', '2', '3', '��T�u�{�Ǩt�Ӥh�Z', 'miaw52777@gmail.com', '0932747492', '[]', '140.117.169.186', '2011-11-30 15:09:09', NULL);
