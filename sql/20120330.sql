-- phpMyAdmin SQL Dump
-- version 2.6.4-pl1
-- http://www.phpmyadmin.net
-- 
-- �D��: localhost
-- �إߤ��: Apr 02, 2012, 09:50 PM
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
) ENGINE=MyISAM AUTO_INCREMENT=520 DEFAULT CHARSET=latin1 AUTO_INCREMENT=520 ;

-- 
-- �C�X�H�U��Ʈw���ƾڡG `adminvisitlog`
-- 

INSERT INTO `adminvisitlog` VALUES (517, '140.117.169.193', '2012-04-02 21:17:21');
INSERT INTO `adminvisitlog` VALUES (518, '140.117.169.193', '2012-04-02 21:21:28');
INSERT INTO `adminvisitlog` VALUES (519, '140.117.169.193', '2012-04-02 21:41:09');

-- --------------------------------------------------------

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
INSERT INTO `answer` VALUES (2, 5, '�Y�ɩʸ��(��~��) ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (2, 6, '1-5�~�e', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (2, 7, '5-10�~�H�e', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (2, 8, '�^���ʸ��(10�~�H�e)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (3, 1, '�C��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (3, 2, '�C�g', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (3, 3, '�C��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (3, 4, '�C�G~���Ӥ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (3, 5, '�C�b�~�H�W', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (4, 6, '�q�U�ʹq�l���x(�Ҧp�G�ӷ~�P�Z�B�]�T���Z�F��MagV�BUDN�����x���q�l���x)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (4, 4, '���ݭn', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (4, 5, '�ǳN�ʹq�l���Z(�Ҧp�GNature�BScience�B���s�޲z���סB�Ш|�P�߲z��s�B���@��F�ǳ�������)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (4, 3, '�ܤֻݭn', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (4, 2, '�����ݭn', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (4, 1, '�g�`�ݭn', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (5, 6, '�L�S�w�ت����s��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 5, '�A�ѱM�~��줧��s�Ͷ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 4, 'ú��@�~�B���g�פ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 3, '�ǲ߻ݭn', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 2, '�оǩһ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 1, '�i���s', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (4, 7, '�Ʀ�պӤh�פ� (�Ҧp�GPQDT�B����պӤh�פ�����Ʈw��)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (4, 8, '�q�l��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (4, 9, '��L�����귽', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 7, '�����ӤH�\Ū����', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 8, '��L�G', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 1, '�����J��x��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 2, '�L�k�s�u�n�J�ϥ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 3, '�䤣��һݸ��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 4, '�L����', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 5, '�s�u�t�פӺC', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 6, '��t�Τ��������x', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 7, '�U���B�C�L�νƻs���D', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 8, '��L�G', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 1, '�Ѯv����', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 2, '�P������', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 3, '�M�~���c(�p�Ƿ|)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 4, '�Ϯ��]����', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 5, '�Ϯ��]���s(�������.�q�l��.E-mail��)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 6, '�Ϯ��]���߽ҵ{', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 7, '�߰ݹϮ��]�]��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 8, '��L�G', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (8, 1, '�u�W�ϥλ���', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (8, 2, '�]�T²���B�������', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (8, 3, '�q�l���BE-mail', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (8, 4, '�������i', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (8, 5, '���߽ҵ{', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (8, 6, '�]���ѦҿԸߪA��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (8, 7, '��L�G', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 1, '�g�`�b��', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (9, 2, '�����b��', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (9, 3, '�ܤ֦b��', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (9, 4, '���b���a�I', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (9, 5, '�դ�-�Ϯ��]', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 6, '�դ�-�줽��  ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 7, '�դ�-��s�ǡB�����   �@', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 8, '�դ�-�J�� ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 9, '�դ�-��L', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 10, '�ե~-�a�� �@�@', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 11, '�ե~-��L  ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 1, '�g�`', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (10, 2, '����', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (10, 3, '�ܤ�', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (10, 4, '�S�ιL', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (10, 5, '�@��q��           �@�@', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 6, '���O�q��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 7, '���z�����', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 1, '�D�`����', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 2, '����', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 3, '�|�i', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 4, '������', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 5, '�D�`������', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (13, 1, '�g�`�ϥ�', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (13, 2, '�����ϥ�', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (13, 3, '�ܤ֨ϥ�', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (13, 4, '�����ϥιL', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (13, 5, 'Refworks ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (13, 6, 'EndNote', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (13, 7, 'Zotero', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (13, 8, 'Mendeley', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (13, 9, '��L', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 1, '���ϥιL ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 2, '�����ϥιL', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 1, '�ϥΤ覡²��B�͵�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 2, '�ϥΤ���������', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 3, '�ϥΤ������^��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 4, '�ϥβߺD ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 5, '�i�K�O�ϥ� ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 6, '�i������P�B�ƥ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 7, '�ѥئs��q���A�L�����s�u���i�ϥ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 8, '�ѥئs������A�i����󦳺������a��s�u�ϥ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 9, '�i�P�פ弶�g�{��(word�Blatex�K)���X', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 10, '�i�פJPDF�A�۰��^���ѥ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (15, 11, '��L:', 1, 0, 0, ' ');

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
  `id` int(4) NOT NULL auto_increment,
  `cat` tinyint(1) NOT NULL,
  `question` mediumtext NOT NULL,
  `visible` tinyint(1) NOT NULL default '0',
  `is_multiple` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

-- 
-- �C�X�H�U��Ʈw���ƾڡG `problem`
-- 

INSERT INTO `problem` VALUES (1, 1, '�аݱz�ϥθ�ƪ��y������H', 1, 4);
INSERT INTO `problem` VALUES (2, 1, '�аݱz�ݭn����s��ƮɮĬ���H', 1, 4);
INSERT INTO `problem` VALUES (3, 1, '�аݱz�ϥιq�l�귽���W�v����H', 1, 1);
INSERT INTO `problem` VALUES (4, 1, '�z�ϥΪ��q�l�귽��������H', 1, 4);
INSERT INTO `problem` VALUES (5, 1, '�аݱz�ϥιq�l�귽���D�n�ʾ�����H', 1, 2);
INSERT INTO `problem` VALUES (6, 1, '�аݱz�ϥιq�l�귽���`�J�쪺�x������H', 1, 2);
INSERT INTO `problem` VALUES (7, 1, '�аݱz���`�z�L��غ޹D�o���Ϯ��]�q�l�귽�����A�ȸ�T�H', 1, 2);
INSERT INTO `problem` VALUES (8, 1, '�Ϯ��]���Ѫ��A�Ȥ��A�zı�o��ϥιq�l�귽�̦����U���O�H', 1, 2);
INSERT INTO `problem` VALUES (9, 1, '�z�ϥιq�l�귽���a�I����H', 1, 4);
INSERT INTO `problem` VALUES (10, 1, '�z�ϥιq�l�귽�����㬰��H', 1, 4);
INSERT INTO `problem` VALUES (11, 1, '�zı�o�Ϯ��]�Ҵ��Ѥ��q���]�ƬO�_�����H', 1, 1);
INSERT INTO `problem` VALUES (12, 1, '���F���լJ�����Ʀ�귽���~�A�A�O�_���䥦�Q���˪��Ʀ�귽�H', 1, 3);
INSERT INTO `problem` VALUES (13, 2, '�аݱz�ϥΨ��Ӯѥغ޲z�u��H', 1, 4);
INSERT INTO `problem` VALUES (14, 2, '�z�O�_���ϥιL���B�۫ت��ѥغ޲z�u������H�䤤�D�n����EndNote�C', 1, 1);
INSERT INTO `problem` VALUES (15, 2, '�z��ܨϥήѥغ޲z�u�㪺�Ҷq����H', 1, 2);

-- --------------------------------------------------------

-- 
-- ��ƪ�榡�G `topic`
-- 

CREATE TABLE `topic` (
  `id` int(4) NOT NULL auto_increment,
  `title` mediumtext NOT NULL,
  `hint` varchar(1000) default NULL,
  `visible` tinyint(1) NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

-- 
-- �C�X�H�U��Ʈw���ƾڡG `topic`
-- 

INSERT INTO `topic` VALUES (1, '�ϮѸ귽���ϥλݨD', '���q�l�귽�G�x����Ʈw�B�q�l���Z�B�q�l�ѡB�Ʀ�պӤh�פ嵥�A�H�Ʀ�覡�x�s�A�ݳz�L�q��Ū������ơC', 1);
INSERT INTO `topic` VALUES (2, '�ѥغ޲z�u�㤧�ϥβ{�p', '���ثe���B����Refworks�PEndNote��خѥغ޲z�u��A�]�g�O����A���Ӷȯ���ʤ@�ءA���A�ѱz���ϥλݨD�A�q�е��ХH�U���D�H�������ӱ��ʤ��ѦҡC', 1);
INSERT INTO `topic` VALUES (3, '�Ϯ��]�q�l�Ѥ��ϥβ{�p', '', 1);
INSERT INTO `topic` VALUES (4, '�����ϥιϮ��]�q�l�Ѥ�Ū��', '', 1);
INSERT INTO `topic` VALUES (5, '�Ϯ��]�q�l�Ѫ��ϥβߺD', '', 1);
INSERT INTO `topic` VALUES (6, '�дN�Ϯ��]�q�l�Ѫ����e�P���Ѥ覡�A�̱z�������{�פĿ�A�X���ﶵ ', '', 1);
INSERT INTO `topic` VALUES (7, '�H�U���O�W�ǳN�q�l���p���Ҥ޶i���q�l�Ѹ�Ʈw�A�аw��z���ϥιL����Ʈw�A�̨ϥκ��N�{�פĿ�A�X���ﶵ', '', 1);
INSERT INTO `topic` VALUES (8, '�Ϯ��]�Ҵ��Ѫ��q�l�Ѿ��麡�N��', '', 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=100548 DEFAULT CHARSET=utf8 AUTO_INCREMENT=100548 ;

-- 
-- �C�X�H�U��Ʈw���ƾڡG `user`
-- 

INSERT INTO `user` VALUES ('2012', 100541, '�d�\��', 'A0950083', '4', 'K', '�ϸ�B�ѦҿԸ߲�', 'kpsh@staff.nsysu.edu.tw', '2452', '["q_1a_r0_0","q_1a_r1_1","q_1a_r2_0","q_14a_2","q_14a_4","q_15a_1","q_15a_3"]', '', '[]', '140.117.120.20', '2012-02-09 14:21:42', NULL);
INSERT INTO `user` VALUES ('2012', 100547, '�\���}', 'M993040038', '2', '3', '��T�u�{�Ǩt�Ӥh�Z', 'miaw52777@gmail.com', '0932747492', '[]', '', '', '140.117.169.193', '2012-04-02 21:25:03', NULL);
