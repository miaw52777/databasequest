-- phpMyAdmin SQL Dump
-- version 2.6.4-pl1
-- http://www.phpmyadmin.net
-- 
-- �D��: localhost
-- �إߤ��: Apr 25, 2012, 11:17 AM
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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

-- 
-- �C�X�H�U��Ʈw���ƾڡG `adminvisitlog`
-- 

INSERT INTO `adminvisitlog` VALUES (1, '140.117.169.193', '2012-04-23 21:50:21');
INSERT INTO `adminvisitlog` VALUES (2, '140.117.120.20', '2012-04-24 11:07:27');
INSERT INTO `adminvisitlog` VALUES (3, '140.117.120.20', '2012-04-24 11:07:35');
INSERT INTO `adminvisitlog` VALUES (4, '140.117.120.20', '2012-04-24 11:07:35');
INSERT INTO `adminvisitlog` VALUES (5, '140.117.120.20', '2012-04-24 11:30:25');
INSERT INTO `adminvisitlog` VALUES (6, '140.117.120.20', '2012-04-24 11:30:25');
INSERT INTO `adminvisitlog` VALUES (7, '140.117.169.193', '2012-04-24 12:37:03');
INSERT INTO `adminvisitlog` VALUES (8, '140.117.169.193', '2012-04-24 12:37:12');
INSERT INTO `adminvisitlog` VALUES (9, '140.117.169.193', '2012-04-24 12:37:12');
INSERT INTO `adminvisitlog` VALUES (10, '140.117.120.20', '2012-04-25 08:46:21');
INSERT INTO `adminvisitlog` VALUES (11, '140.117.120.20', '2012-04-25 08:46:31');
INSERT INTO `adminvisitlog` VALUES (12, '140.117.120.20', '2012-04-25 08:46:31');
INSERT INTO `adminvisitlog` VALUES (13, '140.117.120.20', '2012-04-25 09:07:16');
INSERT INTO `adminvisitlog` VALUES (14, '140.117.120.20', '2012-04-25 10:10:19');
INSERT INTO `adminvisitlog` VALUES (15, '140.117.120.20', '2012-04-25 10:11:17');
INSERT INTO `adminvisitlog` VALUES (16, '140.117.169.193', '2012-04-25 10:14:15');
INSERT INTO `adminvisitlog` VALUES (17, '140.117.169.193', '2012-04-25 10:14:21');
INSERT INTO `adminvisitlog` VALUES (18, '140.117.169.193', '2012-04-25 10:14:21');

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

INSERT INTO `answer` VALUES (1, 3, '�ܤֻݭn', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (1, 2, '�g�`�ݭn', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (2, 6, '1-5�~�e', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (2, 5, '�Y�ɩʸ��(��~��) ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (2, 4, '���ݭn', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (2, 3, '�ܤֻݭn', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (2, 2, '�g�`�ݭn', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (2, 1, '�`�O�ݭn', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (3, 1, '�C��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (3, 2, '�C�g', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (3, 3, '�C��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (3, 4, '�C�G~���Ӥ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (3, 5, '�C�b�~�H�W', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (4, 7, '<font color=purple>�Ʀ�պӤh�פ�</font> <br><font size="2">(�Ҧp�GPQDT�B����պӤh�פ�����Ʈw��)</font>', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (4, 6, '<font color=purple>�q�U�ʹq�l���x</font> <br><font size="2">(�Ҧp�G�ӷ~�P�Z�B�]�T���Z�F��MagV�BUDN�����x���q�l���x)</font>', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 3, '�ǲ߻ݭn', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 4, 'ú��@�~�B���g�פ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 5, '�A�ѱM�~��줧��s�Ͷ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 6, '�L�S�w�ت����s��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 2, '�оǩһ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 1, '�i���s', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 6, '�U���B�C�L�νƻs���D', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 5, '��t�Τ��������x', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 4, '�s�u�t�פӺC', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 3, '�L����', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 2, '�䤣��һݸ��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 1, '�L�k�s�u�n�J�ϥ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 1, '�Ѯv����', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 2, '�P������', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 3, '�M�~���c(�p�Ƿ|)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 4, '�Ϯ��]����', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 5, '�Ϯ��]���s(�������.�q�l��.E-mail��)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 6, '�Ϯ��]���߽ҵ{', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 7, '�߰ݹϮ��]�]��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (7, 8, '��L�G', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (8, 3, '�q�l���BE-mail', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (8, 4, '�������i', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (8, 5, '���߽ҵ{', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (8, 6, '�]���ѦҿԸߪA��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (8, 7, '��L�G', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 8, '�@�@-�J��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 7, '�@�@-��s�ǡB����ǡ@', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 6, '�@�@-�줽��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 5, '�դ�-�Ϯ��]', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 4, '���b���a�I', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (9, 3, '�ܤ֦b��', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (9, 2, '�g�`�b��', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (10, 4, '����<br>�ϥ�', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (10, 5, '<font color=purple>�@��q��</font><font size="2">�]����BNotebook�^</font>', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 4, '������', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (11, 3, '�|�i', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (11, 2, '����', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (11, 1, '�D�`����', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (13, 6, 'EndNote', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (13, 7, 'Zotero', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (13, 8, 'Mendeley', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (13, 9, '��L:', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 6, '<font color=purple>���O�q��</font><font size="2">�]iPad�BEeePad...���^</font>', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (8, 1, '�u�W�ϥλ���', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (8, 2, '�]�T²���B�������', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (6, 7, '��L�G', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (1, 1, '�`�O�ݭn', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (9, 11, '�@�@-��L ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 10, '�ե~-�a�� ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 9, '�@�@-��L', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 7, '�����ӤH�\Ū����', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 1, '�ϥΤ覡²��B�͵�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (5, 8, '��L�G', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (1, 5, '����', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (1, 4, '���ݭn', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (13, 2, '�g�`�ϥ�', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (13, 3, '�ܤ֨ϥ�', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (13, 4, '�����ϥ�', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (13, 5, 'Refworks ', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (13, 1, '�`�O�ϥ�', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (4, 3, '�ܤ�<br>�ݭn', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (4, 4, '���ݭn', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (4, 5, '<font color=purple>�ǳN�ʹq�l���Z</font> <br><font size="2">(�Ҧp�GNature�BScience�B���s�޲z���סB�Ш|�P�߲z��s�B���@��F�ǳ�������)</font>', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (9, 1, '�`�O�b��', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (1, 6, '�^��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (1, 7, '��L�y��:', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (2, 7, '5-10�~�H�e', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (2, 8, '�^���ʸ��(10�~�H�e)', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (4, 8, '<font color=purple>�q�l��</font> <br><font size="2">(�Ҧp�GOxford Scholarship Online�BAiriti Books�ؤ�q�l�ѵ�)</font>', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 3, '�ܤ�<br>�ϥ�', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (10, 1, '�`�O<br>�ϥ�', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (10, 2, '�g�`<br>�ϥ�', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (4, 2, '�g�`<br>�ݭn', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (11, 5, '�D�`������', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (11, 6, '�S�ϥιL', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (11, 7, '���ɴ���', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (11, 8, '����������', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 2, '�ϥΤ���������', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 3, '�ϥΤ������^��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 4, '�ϥβߺD', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 5, '�i�_�U���w�˩��@�q��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 6, '�i�_�w���U�覡�s�u�ϥΡA�D�w�˩��@�q��', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 7, '�i������P�B�ƥ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 8, '�ѥئs��q���A�L�����s�u���i�ϥ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 9, '�ѥئs������A�i����󦳺������a��s�u�ϥ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 10, '�i�P�פ弶�g�{��(word�Blatex�K)���X', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 11, '�i�פJPDF�A�۰��^���ѥ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 12, '�Ѯv�B�P�Ǳ��˨ϥ�', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (14, 13, '��L:', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (10, 7, '<font color=purple>���z�����</font><font size="2">�]iPhone�BSensation...���^</font>', 0, 0, 0, ' ');
INSERT INTO `answer` VALUES (4, 9, '<font color=purple>��L�����귽</font> <br><font size="2">(�Ҧp�GGoogle Scholar)</font>', 1, 0, 0, ' ');
INSERT INTO `answer` VALUES (4, 1, '�`�O<br>�ݭn', 0, 1, 0, ' ');
INSERT INTO `answer` VALUES (10, 8, '<font color=purple>��L:</font>', 1, 0, 0, ' ');

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

-- 
-- �C�X�H�U��Ʈw���ƾڡG `problem`
-- 

INSERT INTO `problem` VALUES (1, 1, '�аݱz�ϥθ�ƪ��y�嬰��H', 1, 4);
INSERT INTO `problem` VALUES (2, 1, '�аݱz�ݭn����s��ƮɮĬ���H', 1, 4);
INSERT INTO `problem` VALUES (3, 1, '�аݱz�ϥιq�l�귽���W�v����H', 1, 1);
INSERT INTO `problem` VALUES (4, 1, '�аݱz�ϥΪ��q�l�귽��������?', 1, 4);
INSERT INTO `problem` VALUES (5, 1, '�аݱz�ϥιq�l�귽���D�n�ʾ�����H', 1, 2);
INSERT INTO `problem` VALUES (6, 1, '�аݱz�ϥιq�l�귽���`�J�쪺�x������H', 1, 2);
INSERT INTO `problem` VALUES (7, 1, '�аݱz���`�z�L��غ޹D�o���Ϯ��]�q�l�귽�����A�ȸ�T�H', 1, 2);
INSERT INTO `problem` VALUES (8, 1, '�Ϯ��]���Ѫ��A�Ȥ��A�аݱzı�o��ϥιq�l�귽�̦����U���O�H', 1, 2);
INSERT INTO `problem` VALUES (9, 1, '�аݱz�ϥιq�l�귽���a�I����H', 1, 4);
INSERT INTO `problem` VALUES (10, 1, '�аݱz�z�L���Ǹ���ϥιq�l�귽�H', 1, 4);
INSERT INTO `problem` VALUES (11, 1, '�аݱzı�o�ϸ�B(�ϸ�j�Ӥ@�ܤQ��)�Ҵ��Ѥ��q���]�ƬO�_�����H', 1, 4);
INSERT INTO `problem` VALUES (12, 1, '���F���ղ{�����q�l�귽���~�A�аݱz��s�W�٦����Ǹ��`�ϥΪ��q�l�귽?', 1, 3);
INSERT INTO `problem` VALUES (13, 2, '�аݱz�ϥΨ��Ӯѥغ޲z�u��H', 1, 4);
INSERT INTO `problem` VALUES (14, 2, '�аݱz��ܨϥήѥغ޲z�u�㪺�Ҷq����?', 1, 2);

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

INSERT INTO `topic` VALUES (1, '<font color="blue" face="�з���" size="5">�q�l�귽���ϥλݨD</font>', '<br><font face="�з���" size="3">���q�l�귽�G�x����Ʈw�B�q�l���Z�B�q�l�ѡB�Ʀ�պӤh�פ嵥�A�H�Ʀ�覡�x�s�A�ݳz�L�q��Ū������ơC</font><br><br />\n', 1);
INSERT INTO `topic` VALUES (2, '<font color="blue" face="�з���" size="5">�ѥغ޲z�u�㤧�ϥβ{�p</font>', '<br><font face="�з���" size="3">���ѥغ޲z�u��G�Y�O�i��U�޲z���m��ơA�ϥΪ̬d�߸�ƮɡA�i�H�N��Ʈw���ѥظ�ƻ`���פJ�ѥغ޲z�u�㤤�A�ä����޲z�F�Ӽ��g�פ�ɯ�۰ʽs��ѦҤ��m�榡�A�b��Z�����J�ޥΤ��m �C<br />\n<br />\n�ثe�ѥغ޲z�u��������h�A���A�ѱz���ϥλݨD�A�q�е��ХH�U���D�H�������ӱ��ʻP���s���ѦҡC</font><br><br />\n', 1);
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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

-- 
-- �C�X�H�U��Ʈw���ƾڡG `user`
-- 

INSERT INTO `user` VALUES ('2012', 6, '�\���}', 'M993040038', '2', '3', '��T�u�{�Ǩt�Ӥh�Z', 'miaw52777@gmail.com', '', '["q_1a_r4_0","q_1a_r5_1","q_1a_r6_0"]', '', '', '140.117.169.193', '2012-04-24 15:28:58', NULL);
INSERT INTO `user` VALUES ('2012', 2, '�C�ɫH', 'A0970190', '4', 'K', '�ϸ�B�ѦҿԸ߲�', 'yuhsin@mail.nsysu.edu.tw', '2455', '["q_1a_r4_0","q_1a_r5_1","q_1a_r6_2","q_2a_r4_1","q_2a_r5_0","q_2a_r6_1","q_2a_r7_2","q_3a_1","q_4a_r4_0","q_4a_r5_2","q_4a_r6_1","q_4a_r7_2","q_4a_r8_0","q_5a_1","q_5a_2","q_5a_4","q_5a_5","q_6a_1","q_6a_4","q_6a_5","q_6a_6","q_7a_0","q_7a_1","q_7a_5","q_7a_6","q_8a_5","q_9a_r4_0","q_9a_r5_0","q_9a_r6_3","q_9a_r7_3","q_9a_r8_3","q_9a_r9_2","q_9a_r10_3","q_10a_r4_0","q_10a_r5_2","q_10a_r6_3","q_11a_r6_2","q_11a_r7_4","q_13a_r4_2","q_13a_r5_1","q_13a_r6_3","q_13a_r7_3","q_14a_1","q_14a_4","q_14a_7","q_14a_11"]', 'q_12a_options@�p�X�ؿ��]�]�áB���Z�^�B��Ϻӳդh�פ�t�ΡBOPEN�F����T���C', 'q_1a_r6@���,q_4a_r8@Google Scholar�BSFX', '140.117.120.32', '2012-04-24 08:01:21', '2012-04-24 16:41:11');
INSERT INTO `user` VALUES ('2012', 7, '�d�\��', 'A0950083', '4', 'K', '�ϸ�B�ѦҿԸ߲�', 'kpsh@staff.nsysu.edu.tw', '', '[]', '', '', '140.117.120.20', '2012-04-24 15:57:05', NULL);
INSERT INTO `user` VALUES ('2012', 8, '�]¸��', 'A0800062', '4', 'K', '�ϸ�B�Ŀ��s�ز�', 'sunsw@mail.nsysu.edu.tw', '', '[]', '', '', '140.117.120.22', '2012-04-24 16:04:23', NULL);
INSERT INTO `user` VALUES ('2012', 9, '�����f', 'A0810010', '4', 'K', '�ϸ�B�ѦҿԸ߲�', 'mhwang@mail.nsysu.edu.tw', '', '["q_1a_r4_0","q_1a_r5_2","q_2a_r4_0","q_2a_r5_1"]', '', '', '140.117.120.12', '2012-04-24 16:14:17', NULL);
INSERT INTO `user` VALUES ('2012', 10, '�d�ήe', 'A0990206', '4', 'K', '�ϸ�B�ѦҿԸ߲�', 'wugai@staff.nsysu.edu.tw', '', '[]', '', '', '140.117.120.43', '2012-04-24 16:38:10', NULL);
INSERT INTO `user` VALUES ('2012', 11, 'Ĭ�T�i', 'A0990356', '4', 'K', '�ϸ�B�ѦҿԸ߲�', '', '', '["q_1a_r4_2","q_2a_r5_1","q_3a_1","q_4a_r5_1","q_5a_6","q_6a_3","q_7a_3","q_8a_0","q_9a_r5_0","q_11a_r6_2","q_16a_r4_1","q_13a_r4_2","q_14a_3"]', '', '', '140.117.120.21', '2012-04-25 10:11:09', '2012-04-25 10:16:05');
