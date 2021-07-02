/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : sc

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 02/07/2021 14:16:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for classroom
-- ----------------------------
DROP TABLE IF EXISTS `classroom`;
CREATE TABLE `classroom` (
  `classroom_id` int NOT NULL AUTO_INCREMENT,
  `capacity` int NOT NULL,
  `location` varchar(10) NOT NULL,
  PRIMARY KEY (`classroom_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classroom
-- ----------------------------
BEGIN;
INSERT INTO `classroom` VALUES (1, 80, '3#101');
INSERT INTO `classroom` VALUES (2, 160, '3#206');
INSERT INTO `classroom` VALUES (3, 80, '4#101');
INSERT INTO `classroom` VALUES (4, 160, '5#206');
INSERT INTO `classroom` VALUES (6, 4, '6#429');
COMMIT;

-- ----------------------------
-- Table structure for cource
-- ----------------------------
DROP TABLE IF EXISTS `cource`;
CREATE TABLE `cource` (
  `cource_id` int NOT NULL AUTO_INCREMENT,
  `cource_name` varchar(20) NOT NULL,
  `credit` varchar(5) NOT NULL,
  `teacher` int NOT NULL,
  `classroom` int NOT NULL,
  `schooltime` varchar(30) NOT NULL,
  PRIMARY KEY (`cource_id`),
  KEY `cource_teacher` (`teacher`),
  KEY `cource_classroom` (`classroom`),
  CONSTRAINT `cource_classroom` FOREIGN KEY (`classroom`) REFERENCES `classroom` (`classroom_id`),
  CONSTRAINT `cource_teacher` FOREIGN KEY (`teacher`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cource
-- ----------------------------
BEGIN;
INSERT INTO `cource` VALUES (1, '计算机网络', '2', 2, 1, '周三9,10节；周五7,8节;[第14-20周]');
INSERT INTO `cource` VALUES (2, '佛教文化', '1.5', 3, 2, '周三9,10节；周五9,10节；[第5-10周]');
INSERT INTO `cource` VALUES (3, '西方艺术鉴赏', '1', 2, 3, '周一3,4节；周二5,6节；[第5-12周]');
INSERT INTO `cource` VALUES (4, '新能源技术', '1.5', 3, 4, '周二7,8节；周六3,4节；[第8-10周]');
COMMIT;

-- ----------------------------
-- Table structure for notes
-- ----------------------------
DROP TABLE IF EXISTS `notes`;
CREATE TABLE `notes` (
  `notes_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `start_time` varchar(12) NOT NULL,
  `stop_time` varchar(12) NOT NULL,
  `description` varchar(1000) NOT NULL,
  PRIMARY KEY (`notes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notes
-- ----------------------------
BEGIN;
INSERT INTO `notes` VALUES (1, '关于全校大一同学的选课通知', '2021-09-16', '2021-09-17', '此次选课将持续一周的时间，共三次机会，请同学们按时限选课，完成应修的学分。注：大一的每学期最多选两门课！');
COMMIT;

-- ----------------------------
-- Table structure for score
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `score_id` int NOT NULL AUTO_INCREMENT,
  `student` int NOT NULL,
  `cource` int NOT NULL,
  `pingshi_score` varchar(5) NOT NULL,
  `qimo_score` varchar(5) NOT NULL,
  `final_score` varchar(5) NOT NULL,
  PRIMARY KEY (`score_id`),
  KEY `score_student` (`student`),
  KEY `score_cource` (`cource`),
  CONSTRAINT `score_cource` FOREIGN KEY (`cource`) REFERENCES `cource` (`cource_id`),
  CONSTRAINT `score_student` FOREIGN KEY (`student`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
BEGIN;
INSERT INTO `score` VALUES (1, 4, 1, '90', '99', '95');
INSERT INTO `score` VALUES (2, 4, 2, '70', '55', '60');
INSERT INTO `score` VALUES (3, 5, 3, '60', '90', '82');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `school_num` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `grade` varchar(100) DEFAULT NULL,
  `school` varchar(100) DEFAULT NULL,
  `major` varchar(100) DEFAULT NULL,
  `class` varchar(100) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(120) NOT NULL DEFAULT '123456',
  `adress` varchar(200) DEFAULT NULL,
  `role` int NOT NULL DEFAULT '2',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `school_num` (`school_num`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, '1234567890', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin@qq.com', 'passwd', NULL, 0);
INSERT INTO `user` VALUES (2, '1234567', 'teacher1', '女', NULL, '机械工程学院', NULL, NULL, NULL, NULL, 'teacher1@qq.com', 'passwd', NULL, 1);
INSERT INTO `user` VALUES (3, '2234567', 'teacher2', '男', NULL, '材料学院', NULL, NULL, NULL, NULL, 'teacher2@qq.com', 'passwd', NULL, 1);
INSERT INTO `user` VALUES (4, '13110581072', 'yaoian', '男', '2018', '计算机科学与技术学院', '计算机科学与技术', '计科183', '1427154738', '18753377101', 'yaoian@qq.com', 'passwd', '云南省昆明市石林县', 2);
INSERT INTO `user` VALUES (5, '13110581073', '崔鑫', '男', '2018', '音乐学院', '古典音乐', '古典183', '1427155518', '18753377104', 'cuixin@qq.com', 'passwd', '山东省青岛市', 2);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
