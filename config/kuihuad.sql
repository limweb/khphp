/*
Navicat MySQL Data Transfer

Source Server         : Mysql.Local
Source Server Version : 100202
Source Host           : localhost:3306
Source Database       : kuihuad

Target Server Type    : MYSQL
Target Server Version : 100202
File Encoding         : 65001

Date: 2017-05-21 15:45:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for billdetails
-- ----------------------------
DROP TABLE IF EXISTS `billdetails`;
CREATE TABLE `billdetails` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item` text DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `lot_id` int(10) unsigned DEFAULT NULL,
  `lot_name` varchar(255) DEFAULT NULL,
  `bill_id` int(10) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `qtystr` varchar(1000) DEFAULT NULL,
  `qty` decimal(15,2) DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of billdetails
-- ----------------------------
INSERT INTO `billdetails` VALUES ('1', '{\r\n      \"id\": 1,\r\n      \"name\": \"ทุเรียนหมอนทอง A\",\r\n      \"product_type\": 0,\r\n      \"product_code\": \"DR-O1\",\r\n      \"category_id\": 1,\r\n      \"status\": 1,\r\n      \"actived\": 1,\r\n      \"description\": \"ทุเรียน A\",\r\n      \"created_date\": \"2017-05-04 19:58:17\",\r\n      \"updated_date\": \"2017-05-14 15:02:20\",\r\n      \"created_by\": \"system\",\r\n      \"updated_by\": \"system\"\r\n    }', '1', '1', 'LOT20170401', '1', '1', null, '50+50', '100.00', '80.00', '2017-05-14 17:00:45', '2017-05-04 19:49:44');
INSERT INTO `billdetails` VALUES ('2', ' {\r\n      \"id\": 2,\r\n      \"name\": \"ทุเรียน B\",\r\n      \"product_type\": 0,\r\n      \"product_code\": \"DR-02\",\r\n      \"category_id\": 1,\r\n      \"status\": 1,\r\n      \"actived\": 1,\r\n      \"description\": \"ทุเรียน B\",\r\n      \"created_date\": \"2017-05-04 19:58:29\",\r\n      \"updated_date\": \"2017-05-14 15:02:20\",\r\n      \"created_by\": \"system\",\r\n      \"updated_by\": \"system\"\r\n    }', '1', '1', 'LOT20170401', '1', '2', null, '45+55', '100.00', '62.00', '2017-05-14 17:06:52', '2017-05-04 19:50:09');
INSERT INTO `billdetails` VALUES ('3', '{\r\n      \"id\": 3,\r\n      \"name\": \"ทุเรียน C\",\r\n      \"product_type\": 0,\r\n      \"product_code\": \"DR-03\",\r\n      \"category_id\": 1,\r\n      \"status\": 1,\r\n      \"actived\": 1,\r\n      \"description\": \"ทุเรียน C\",\r\n      \"created_date\": \"2017-05-04 19:58:47\",\r\n      \"updated_date\": \"2017-05-14 15:02:20\",\r\n      \"created_by\": \"system\",\r\n      \"updated_by\": \"system\"\r\n    }', '1', '1', 'LOT20170401', '1', '3', null, '27+13', '40.00', '42.00', '2017-05-14 17:07:17', '2017-05-04 19:50:23');
INSERT INTO `billdetails` VALUES ('4', '{\r\n      \"id\": 1,\r\n      \"name\": \"ทุเรียนหมอนทอง A\",\r\n      \"product_type\": 0,\r\n      \"product_code\": \"DR-O1\",\r\n      \"category_id\": 1,\r\n      \"status\": 1,\r\n      \"actived\": 1,\r\n      \"description\": \"ทุเรียน A\",\r\n      \"created_date\": \"2017-05-04 19:58:17\",\r\n      \"updated_date\": \"2017-05-14 15:02:20\",\r\n      \"created_by\": \"system\",\r\n      \"updated_by\": \"system\"\r\n    }', '1', '1', 'LOT20170401', '2', '1', null, '50+40', '90.00', '79.00', '2017-05-14 17:00:44', '2017-05-04 19:56:43');
INSERT INTO `billdetails` VALUES ('5', ' {\r\n      \"id\": 2,\r\n      \"name\": \"ทุเรียน B\",\r\n      \"product_type\": 0,\r\n      \"product_code\": \"DR-02\",\r\n      \"category_id\": 1,\r\n      \"status\": 1,\r\n      \"actived\": 1,\r\n      \"description\": \"ทุเรียน B\",\r\n      \"created_date\": \"2017-05-04 19:58:29\",\r\n      \"updated_date\": \"2017-05-14 15:02:20\",\r\n      \"created_by\": \"system\",\r\n      \"updated_by\": \"system\"\r\n    }', '1', '1', 'LOT20170401', '2', '2', null, '30+30', '60.00', '65.00', '2017-05-14 17:06:55', '2017-05-04 19:56:49');
INSERT INTO `billdetails` VALUES ('6', '{\r\n      \"id\": 3,\r\n      \"name\": \"ทุเรียน C\",\r\n      \"product_type\": 0,\r\n      \"product_code\": \"DR-03\",\r\n      \"category_id\": 1,\r\n      \"status\": 1,\r\n      \"actived\": 1,\r\n      \"description\": \"ทุเรียน C\",\r\n      \"created_date\": \"2017-05-04 19:58:47\",\r\n      \"updated_date\": \"2017-05-14 15:02:20\",\r\n      \"created_by\": \"system\",\r\n      \"updated_by\": \"system\"\r\n    }', '1', '1', 'LOT20170401', '2', '3', null, '75+25', '100.00', '45.00', '2017-05-14 17:07:21', '2017-05-04 19:56:54');
INSERT INTO `billdetails` VALUES ('9', '{\r\n      \"id\": 1,\r\n      \"name\": \"ทุเรียนหมอนทอง A\",\r\n      \"product_type\": 0,\r\n      \"product_code\": \"DR-O1\",\r\n      \"category_id\": 1,\r\n      \"status\": 1,\r\n      \"actived\": 1,\r\n      \"description\": \"ทุเรียน A\",\r\n      \"created_date\": \"2017-05-04 19:58:17\",\r\n      \"updated_date\": \"2017-05-14 15:02:20\",\r\n      \"created_by\": \"system\",\r\n      \"updated_by\": \"system\"\r\n    }', '1', '2', 'LOT20170402', '4', '3', null, '15+25', '40.00', '42.00', '2017-05-14 17:00:43', '2017-05-04 19:50:23');
INSERT INTO `billdetails` VALUES ('10', ' {\r\n      \"id\": 2,\r\n      \"name\": \"ทุเรียน B\",\r\n      \"product_type\": 0,\r\n      \"product_code\": \"DR-02\",\r\n      \"category_id\": 1,\r\n      \"status\": 1,\r\n      \"actived\": 1,\r\n      \"description\": \"ทุเรียน B\",\r\n      \"created_date\": \"2017-05-04 19:58:29\",\r\n      \"updated_date\": \"2017-05-14 15:02:20\",\r\n      \"created_by\": \"system\",\r\n      \"updated_by\": \"system\"\r\n    }', '1', '2', 'LOT20170402', '4', '1', null, '60+30', '90.00', '79.00', '2017-05-14 17:07:39', '2017-05-04 19:56:43');
INSERT INTO `billdetails` VALUES ('11', '{\r\n      \"id\": 3,\r\n      \"name\": \"ทุเรียน C\",\r\n      \"product_type\": 0,\r\n      \"product_code\": \"DR-03\",\r\n      \"category_id\": 1,\r\n      \"status\": 1,\r\n      \"actived\": 1,\r\n      \"description\": \"ทุเรียน C\",\r\n      \"created_date\": \"2017-05-04 19:58:47\",\r\n      \"updated_date\": \"2017-05-14 15:02:20\",\r\n      \"created_by\": \"system\",\r\n      \"updated_by\": \"system\"\r\n    }', '1', '2', 'LOT20170402', '4', '2', null, '25+35', '60.00', '65.00', '2017-05-14 17:07:26', '2017-05-04 19:56:49');
INSERT INTO `billdetails` VALUES ('12', '{\r\n      \"id\": 1,\r\n      \"name\": \"ทุเรียนหมอนทอง A\",\r\n      \"product_type\": 0,\r\n      \"product_code\": \"DR-O1\",\r\n      \"category_id\": 1,\r\n      \"status\": 1,\r\n      \"actived\": 1,\r\n      \"description\": \"ทุเรียน A\",\r\n      \"created_date\": \"2017-05-04 19:58:17\",\r\n      \"updated_date\": \"2017-05-14 15:02:20\",\r\n      \"created_by\": \"system\",\r\n      \"updated_by\": \"system\"\r\n    }', '1', '2', 'LOT20170402', '4', '3', null, '50+50', '100.00', '45.00', '2017-05-14 17:00:41', '2017-05-04 19:56:54');
INSERT INTO `billdetails` VALUES ('13', ' {\r\n      \"id\": 2,\r\n      \"name\": \"ทุเรียน B\",\r\n      \"product_type\": 0,\r\n      \"product_code\": \"DR-02\",\r\n      \"category_id\": 1,\r\n      \"status\": 1,\r\n      \"actived\": 1,\r\n      \"description\": \"ทุเรียน B\",\r\n      \"created_date\": \"2017-05-04 19:58:29\",\r\n      \"updated_date\": \"2017-05-14 15:02:20\",\r\n      \"created_by\": \"system\",\r\n      \"updated_by\": \"system\"\r\n    }', '1', '3', 'LOT20170403', '5', '1', null, '350+150', '500.00', '84.00', '2017-05-14 17:07:41', '2017-05-06 00:37:46');
INSERT INTO `billdetails` VALUES ('14', '{\r\n      \"id\": 3,\r\n      \"name\": \"ทุเรียน C\",\r\n      \"product_type\": 0,\r\n      \"product_code\": \"DR-03\",\r\n      \"category_id\": 1,\r\n      \"status\": 1,\r\n      \"actived\": 1,\r\n      \"description\": \"ทุเรียน C\",\r\n      \"created_date\": \"2017-05-04 19:58:47\",\r\n      \"updated_date\": \"2017-05-14 15:02:20\",\r\n      \"created_by\": \"system\",\r\n      \"updated_by\": \"system\"\r\n    }', '1', '4', 'LOT20170404', '6', '1', null, '45+55+150+70+30', '350.00', '70.00', '2017-05-14 17:07:28', '2017-05-06 00:38:54');
INSERT INTO `billdetails` VALUES ('18', 'null', '1', '30', 'LOT20170518', '14', null, null, null, null, null, '2017-05-19 06:22:31', '2017-05-19 06:22:31');
INSERT INTO `billdetails` VALUES ('19', '{\"id\":2,\"name\":\"\\u0e17\\u0e38\\u0e40\\u0e23\\u0e35\\u0e22\\u0e19 B\",\"pricex\":\"200.00\",\"product_type\":0,\"product_code\":\"DR-02\",\"category_id\":1,\"status\":1,\"actived\":1,\"description\":\"\\u0e17\\u0e38\\u0e40\\u0e23\\u0e35\\u0e22\\u0e19 B\",\"created_date\":\"2017-05-04 19:58:29\",\"updated_date\":\"2017-05-17 11:17:02\",\"created_by\":\"system\",\"updated_by\":\"system\"}', '1', '30', 'LOT20170518', '15', null, null, null, null, null, '2017-05-19 06:22:56', '2017-05-19 06:22:56');
INSERT INTO `billdetails` VALUES ('20', '{\"id\":2,\"name\":\"\\u0e17\\u0e38\\u0e40\\u0e23\\u0e35\\u0e22\\u0e19 B\",\"pricex\":\"200.00\",\"product_type\":0,\"product_code\":\"DR-02\",\"category_id\":1,\"status\":1,\"actived\":1,\"description\":\"\\u0e17\\u0e38\\u0e40\\u0e23\\u0e35\\u0e22\\u0e19 B\",\"created_date\":\"2017-05-04 19:58:29\",\"updated_date\":\"2017-05-17 11:17:02\",\"created_by\":\"system\",\"updated_by\":\"system\"}', '1', '30', 'LOT20170518', '16', '2', 'ทุเรียน B', null, '220.00', '220.00', '2017-05-19 06:23:38', '2017-05-19 06:23:38');
INSERT INTO `billdetails` VALUES ('21', '{\"id\":2,\"name\":\"ทุเรียน B\",\"pricex\":\"200.00\",\"product_type\":0,\"product_code\":\"DR-02\",\"category_id\":1,\"status\":1,\"actived\":1,\"description\":\"ทุเรียน B\",\"created_date\":\"2017-05-04 19:58:29\",\"updated_date\":\"2017-05-17 11:17:02\",\"created_by\":\"system\",\"updated_by\":\"system\"}', '1', '30', 'LOT20170518', '17', '2', 'ทุเรียน B', null, '220.00', '220.00', '2017-05-19 06:24:36', '2017-05-19 06:24:36');
INSERT INTO `billdetails` VALUES ('22', '{\"id\":2,\"name\":\"ทุเรียน B\",\"pricex\":\"200.00\",\"product_type\":0,\"product_code\":\"DR-02\",\"category_id\":1,\"status\":1,\"actived\":1,\"description\":\"ทุเรียน B\",\"created_date\":\"2017-05-04 19:58:29\",\"updated_date\":\"2017-05-17 11:17:02\",\"created_by\":\"system\",\"updated_by\":\"system\"}', '1', '30', 'LOT20170518', '18', '2', 'ทุเรียน B', '100+200', '300.00', '220.00', '2017-05-19 06:26:08', '2017-05-19 06:26:08');
INSERT INTO `billdetails` VALUES ('61', '{\"id\":3,\"name\":\"ทุเรียน C\",\"pricex\":\"200.00\",\"product_type\":0,\"product_code\":\"DR-03\",\"category_id\":1,\"status\":1,\"actived\":1,\"description\":\"ทุเรียน C\",\"created_date\":\"2017-05-04 19:58:47\",\"updated_date\":\"2017-05-17 11:17:02\",\"created_by\":\"system\",\"updated_by\":\"system\"}', '1', '31', 'LOT20170519', '44', '3', 'ทุเรียน C', null, '22.00', '33.00', '2017-05-19 16:37:18', '2017-05-19 16:37:18');
INSERT INTO `billdetails` VALUES ('66', '\"{\\\"id\\\":3,\\\"name\\\":\\\"ทุเรียน C\\\",\\\"pricex\\\":\\\"200.00\\\",\\\"product_type\\\":0,\\\"product_code\\\":\\\"DR-03\\\",\\\"category_id\\\":1,\\\"status\\\":1,\\\"actived\\\":1,\\\"description\\\":\\\"ทุเรียน C\\\",\\\"created_date\\\":\\\"2017-05-04 19:58:47\\\",\\\"updated_date\\\":\\\"2017-05-17 11:17:02\\\",\\\"created_by\\\":\\\"system\\\",\\\"updated_by\\\":\\\"system\\\"}\"', '1', '31', 'LOT20170519', '45', '3', 'ทุเรียน C', null, '1200.00', '4121.00', '2017-05-19 17:02:55', '2017-05-19 17:02:55');
INSERT INTO `billdetails` VALUES ('67', '\"{\\\"id\\\":5,\\\"name\\\":\\\"ค่าตัด\\\",\\\"pricex\\\":\\\"200.00\\\",\\\"product_type\\\":1,\\\"product_code\\\":\\\"EX-02\\\",\\\"category_id\\\":2,\\\"status\\\":1,\\\"actived\\\":1,\\\"description\\\":\\\"ค่าตัด\\\",\\\"created_date\\\":\\\"2017-05-14 15:02:39\\\",\\\"updated_date\\\":\\\"2017-05-17 11:17:02\\\",\\\"created_by\\\":\\\"system\\\",\\\"updated_by\\\":\\\"system\\\"}\"', '1', '31', 'LOT20170519', '45', '5', 'ค่าตัด', null, '200.00', '200.00', '2017-05-19 17:02:55', '2017-05-19 17:02:55');
INSERT INTO `billdetails` VALUES ('71', '\"\\\"{\\\\\\\"id\\\\\\\":3,\\\\\\\"name\\\\\\\":\\\\\\\"ทุเรียน C\\\\\\\",\\\\\\\"pricex\\\\\\\":\\\\\\\"200.00\\\\\\\",\\\\\\\"product_type\\\\\\\":0,\\\\\\\"product_code\\\\\\\":\\\\\\\"DR-03\\\\\\\",\\\\\\\"category_id\\\\\\\":1,\\\\\\\"status\\\\\\\":1,\\\\\\\"actived\\\\\\\":1,\\\\\\\"description\\\\\\\":\\\\\\\"ทุเรียน C\\\\\\\",\\\\\\\"created_date\\\\\\\":\\\\\\\"2017-05-04 19:58:47\\\\\\\",\\\\\\\"updated_date\\\\\\\":\\\\\\\"2017-05-17 11:17:02\\\\\\\",\\\\\\\"created_by\\\\\\\":\\\\\\\"system\\\\\\\",\\\\\\\"updated_by\\\\\\\":\\\\\\\"system\\\\\\\"}\\\"\"', '1', '31', 'LOT20170519', '46', '3', 'ทุเรียน C', null, '200.00', '300.00', '2017-05-19 17:12:04', '2017-05-19 17:12:04');
INSERT INTO `billdetails` VALUES ('73', '{\"id\":3,\"name\":\"ทุเรียน C\",\"pricex\":\"200.00\",\"product_type\":0,\"product_code\":\"DR-03\",\"category_id\":1,\"status\":1,\"actived\":1,\"description\":\"ทุเรียน C\",\"created_date\":\"2017-05-04 19:58:47\",\"updated_date\":\"2017-05-17 11:17:02\",\"created_by\":\"system\",\"updated_by\":\"system\"}', '1', '32', 'LOT20170521', '48', '3', 'ทุเรียน C', null, '220.00', '2220.00', '2017-05-21 12:15:29', '2017-05-21 12:15:29');
INSERT INTO `billdetails` VALUES ('77', '{\"id\":2,\"name\":\"ทุเรียน B\",\"pricex\":\"200.00\",\"product_type\":0,\"product_code\":\"DR-02\",\"category_id\":1,\"status\":1,\"actived\":1,\"description\":\"ทุเรียน B\",\"created_date\":\"2017-05-04 19:58:29\",\"updated_date\":\"2017-05-17 11:17:02\",\"created_by\":\"system\",\"updated_by\":\"system\"}', '1', '31', 'LOT20170519', '47', '2', 'ทุเรียน B', null, '660.00', '4440.00', '2017-05-21 12:20:34', '2017-05-21 12:20:34');
INSERT INTO `billdetails` VALUES ('78', '{\"id\":1,\"name\":\"ทุเรียนหมอนทอง A\",\"pricex\":\"200.00\",\"product_type\":0,\"product_code\":\"DR-O1\",\"category_id\":1,\"status\":1,\"actived\":1,\"description\":\"ทุเรียน A\",\"created_date\":\"2017-05-04 19:58:17\",\"updated_date\":\"2017-05-17 11:17:02\",\"created_by\":\"system\",\"updated_by\":\"system\"}', '1', '31', 'LOT20170519', '47', '1', 'ทุเรียนหมอนทอง A', null, '9999.00', '99.00', '2017-05-21 12:20:34', '2017-05-21 12:20:34');
INSERT INTO `billdetails` VALUES ('85', '\"{\\\"id\\\":3,\\\"name\\\":\\\"ทุเรียน C\\\",\\\"pricex\\\":\\\"200.00\\\",\\\"product_type\\\":0,\\\"product_code\\\":\\\"DR-03\\\",\\\"category_id\\\":1,\\\"status\\\":1,\\\"actived\\\":1,\\\"description\\\":\\\"ทุเรียน C\\\",\\\"created_date\\\":\\\"2017-05-04 19:58:47\\\",\\\"updated_date\\\":\\\"2017-05-17 11:17:02\\\",\\\"created_by\\\":\\\"system\\\",\\\"updated_by\\\":\\\"system\\\"}\"', '1', '32', 'LOT20170521', '49', '3', 'ทุเรียน C', null, '330.00', '330.00', '2017-05-21 12:30:28', '2017-05-21 12:30:28');
INSERT INTO `billdetails` VALUES ('86', '\"{\\\"id\\\":2,\\\"name\\\":\\\"ทุเรียน B\\\",\\\"pricex\\\":\\\"200.00\\\",\\\"product_type\\\":0,\\\"product_code\\\":\\\"DR-02\\\",\\\"category_id\\\":1,\\\"status\\\":1,\\\"actived\\\":1,\\\"description\\\":\\\"ทุเรียน B\\\",\\\"created_date\\\":\\\"2017-05-04 19:58:29\\\",\\\"updated_date\\\":\\\"2017-05-17 11:17:02\\\",\\\"created_by\\\":\\\"system\\\",\\\"updated_by\\\":\\\"system\\\"}\"', '1', '32', 'LOT20170521', '49', '2', 'ทุเรียน B', null, '9999999.00', '99999.00', '2017-05-21 12:30:28', '2017-05-21 12:30:28');
INSERT INTO `billdetails` VALUES ('87', '{\"id\":2,\"name\":\"ทุเรียน B\",\"pricex\":\"200.00\",\"product_type\":0,\"product_code\":\"DR-02\",\"category_id\":1,\"status\":1,\"actived\":1,\"description\":\"ทุเรียน B\",\"created_date\":\"2017-05-04 19:58:29\",\"updated_date\":\"2017-05-17 11:17:02\",\"created_by\":\"system\",\"updated_by\":\"system\"}', '1', '32', 'LOT20170521', '50', '2', 'ทุเรียน B', null, '220.00', '220.00', '2017-05-21 14:45:08', '2017-05-21 14:45:08');
INSERT INTO `billdetails` VALUES ('88', '{\"id\":1,\"name\":\"ทุเรียนหมอนทอง A\",\"pricex\":\"200.00\",\"product_type\":0,\"product_code\":\"DR-O1\",\"category_id\":1,\"status\":1,\"actived\":1,\"description\":\"ทุเรียน A\",\"created_date\":\"2017-05-04 19:58:17\",\"updated_date\":\"2017-05-17 11:17:02\",\"created_by\":\"system\",\"updated_by\":\"system\"}', '1', '31', 'LOT20170519', '51', '1', 'ทุเรียนหมอนทอง A', null, '44.00', '440.00', '2017-05-21 14:45:55', '2017-05-21 14:45:55');

-- ----------------------------
-- Table structure for bills
-- ----------------------------
DROP TABLE IF EXISTS `bills`;
CREATE TABLE `bills` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` int(11) unsigned DEFAULT 1,
  `lot_id` int(11) unsigned DEFAULT NULL,
  `lot_name` varchar(30) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `qty` decimal(15,2) DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `bills_ibfk_1` (`branch_id`),
  CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branchs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bills
-- ----------------------------
INSERT INTO `bills` VALUES ('1', '1', '1', null, 'นาย ก', '240.00', '15880.00', '2017-05-04 19:48:54', '2017-05-21 14:53:54');
INSERT INTO `bills` VALUES ('2', '1', '1', null, 'นาย ข', '250.00', '15510.00', '2017-05-04 19:49:10', '2017-05-21 14:53:54');
INSERT INTO `bills` VALUES ('4', '1', '2', null, 'นาย ข', '290.00', '17190.00', '2017-05-04 19:49:10', '2017-05-21 14:53:54');
INSERT INTO `bills` VALUES ('5', '1', '3', null, 'นาย ก', '500.00', '42000.00', '2017-05-04 19:48:54', '2017-05-21 14:53:54');
INSERT INTO `bills` VALUES ('6', '1', '4', null, 'นาย ข', '350.00', '24500.00', '2017-05-04 19:49:10', '2017-05-06 00:40:48');
INSERT INTO `bills` VALUES ('14', '1', '30', 'LOT20170518', 'นาย B', '0.00', '0.00', '2017-05-19 06:22:31', '2017-05-19 06:22:31');
INSERT INTO `bills` VALUES ('15', '1', '30', 'LOT20170518', 'นาย B', '0.00', '0.00', '2017-05-19 06:22:56', '2017-05-19 06:22:56');
INSERT INTO `bills` VALUES ('16', '1', '30', 'LOT20170518', 'นาย B', '220.00', '48400.00', '2017-05-19 06:23:38', '2017-05-19 06:23:38');
INSERT INTO `bills` VALUES ('17', '1', '30', 'LOT20170518', 'นาย B', '220.00', '48400.00', '2017-05-19 06:24:36', '2017-05-19 06:24:36');
INSERT INTO `bills` VALUES ('18', '1', '30', 'LOT20170518', 'นาย B', '300.00', '66000.00', '2017-05-19 06:26:08', '2017-05-19 06:26:08');
INSERT INTO `bills` VALUES ('44', '1', '31', 'LOT20170519', 'aaaa', '22.00', '726.00', '2017-05-19 16:37:17', '2017-05-19 16:37:18');
INSERT INTO `bills` VALUES ('45', '1', '31', 'LOT20170519', 'aaaa', '1400.00', '4985200.00', '2017-05-19 17:01:46', '2017-05-19 17:02:55');
INSERT INTO `bills` VALUES ('46', '1', '31', 'LOT20170519', 'hhh', '200.00', '60000.00', '2017-05-19 17:11:29', '2017-05-19 17:12:04');
INSERT INTO `bills` VALUES ('47', '1', '31', 'LOT20170519', 'aaaaaa', '10659.00', '3920301.00', '2017-05-21 12:05:08', '2017-05-21 12:20:34');
INSERT INTO `bills` VALUES ('48', '1', '32', 'LOT20170521', 'aaaaa', '220.00', '488400.00', '2017-05-21 12:15:29', '2017-05-21 12:15:29');
INSERT INTO `bills` VALUES ('49', '1', '32', 'LOT20170521', 'bbbb', '10000329.00', '999990008901.00', '2017-05-21 12:16:35', '2017-05-21 12:30:28');
INSERT INTO `bills` VALUES ('50', '1', '32', 'LOT20170521', 'asaaa', '220.00', '48400.00', '2017-05-21 14:45:08', '2017-05-21 14:45:08');
INSERT INTO `bills` VALUES ('51', '1', '31', 'LOT20170519', 'xxxx', '44.00', '19360.00', '2017-05-21 14:45:55', '2017-05-21 14:45:55');

-- ----------------------------
-- Table structure for branchs
-- ----------------------------
DROP TABLE IF EXISTS `branchs`;
CREATE TABLE `branchs` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int(1) unsigned DEFAULT 1,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of branchs
-- ----------------------------
INSERT INTO `branchs` VALUES ('1', 'กุ่ยฮวด จันทร์บุรี', null, null, null, null, null, null, '1', '2017-05-19 05:13:29', null, null, null);

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT 1,
  `sort` int(1) DEFAULT NULL,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'รวม', '1', '1', '2017-05-14 15:11:19', '2017-05-02 11:04:04', null, null);
INSERT INTO `categories` VALUES ('2', 'ทุเรียน', '1', '1', '2017-05-14 15:11:15', '2017-05-02 11:04:08', null, null);
INSERT INTO `categories` VALUES ('3', 'มังคุด', '1', '1', '2017-05-14 15:11:15', '2017-05-02 11:04:18', null, null);
INSERT INTO `categories` VALUES ('4', 'สละ', '1', '1', '2017-05-14 15:11:15', '2017-05-14 13:57:04', null, null);
INSERT INTO `categories` VALUES ('5', 'เงาะ', '1', '0', '2017-05-14 15:11:15', '2017-05-14 15:04:35', null, null);

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `remark` enum('') DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customers
-- ----------------------------

-- ----------------------------
-- Table structure for langs
-- ----------------------------
DROP TABLE IF EXISTS `langs`;
CREATE TABLE `langs` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `sort` int(2) DEFAULT NULL,
  `ref` varchar(20) DEFAULT '',
  `default` int(1) DEFAULT 0,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of langs
-- ----------------------------
INSERT INTO `langs` VALUES ('1', 'th', '/images/flag-icon/flag-th.png', '1', '1', 'lang1', '1', '2016-11-30 11:12:20', '2016-11-08 14:59:20');
INSERT INTO `langs` VALUES ('2', 'en', '/upload-img/Icon จัดส่ง/FedEx_logo.gif', '1', '2', 'lang2', '0', '2016-11-30 11:12:20', '2016-11-08 14:59:20');
INSERT INTO `langs` VALUES ('3', 'jp', '/upload-img/Icon จัดส่ง/kerryExpress_logo.png', '1', '3', 'lang3', '0', '2016-11-30 11:12:20', '2016-11-08 14:59:20');
INSERT INTO `langs` VALUES ('4', 'cn', '/upload-img/Icon จัดส่ง/ems_logo.png', '1', '4', 'lang4', '0', '2016-11-30 11:12:20', '2016-11-08 14:59:20');

-- ----------------------------
-- Table structure for lots
-- ----------------------------
DROP TABLE IF EXISTS `lots`;
CREATE TABLE `lots` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lot_name` varchar(16) DEFAULT NULL COMMENT 'LOT20170112-XXXX',
  `cate` int(1) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `branch_id` int(4) unsigned DEFAULT 1,
  `qty` decimal(10,2) DEFAULT NULL COMMENT 'จำนวน(kg)',
  `total` decimal(10,2) DEFAULT NULL COMMENT 'จำนวนเงิน',
  `avg` decimal(10,2) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lot_name` (`lot_name`),
  KEY `branch_id` (`branch_id`),
  CONSTRAINT `lots_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branchs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lots
-- ----------------------------
INSERT INTO `lots` VALUES ('1', 'LOT20170401', '2', '2017-04-01 00:00:00', '1', '490.00', '31390.00', '64.06', '2004-05-17 18:54:00', '2017-05-21 14:53:54');
INSERT INTO `lots` VALUES ('2', 'LOT20170402', '1', null, '1', '290.00', '17190.00', '59.28', '2005-05-17 19:31:00', '2017-05-21 14:53:54');
INSERT INTO `lots` VALUES ('3', 'LOT20170403', '1', null, '1', '500.00', '42000.00', '84.00', '2004-05-17 18:54:00', '2017-05-21 14:53:54');
INSERT INTO `lots` VALUES ('4', 'LOT20170404', '1', null, '1', '350.00', '24500.00', '70.00', '2005-05-17 19:31:00', '2017-05-06 00:40:48');
INSERT INTO `lots` VALUES ('27', 'LOT20170404-1', '2', null, '1', '100.00', '5000.00', '50.00', '2017-05-07 17:28:02', '2017-05-07 17:28:02');
INSERT INTO `lots` VALUES ('28', 'LOT20170402-2', '2', null, '1', null, null, null, '2017-05-07 17:28:51', '2017-05-07 17:30:19');
INSERT INTO `lots` VALUES ('29', 'LOT20170402-1', '3', null, '1', null, null, null, '2017-05-07 17:30:15', '2017-05-07 17:30:22');
INSERT INTO `lots` VALUES ('30', 'LOT20170518', '2', '2017-05-18 23:11:49', '1', null, null, null, '2017-05-19 06:00:51', '2017-05-19 06:22:31');
INSERT INTO `lots` VALUES ('31', 'LOT20170519', '2', '2017-05-21 07:44:46', '1', '3492.00', '838400.00', '240.09', '2017-05-19 11:26:43', '2017-05-21 14:45:55');
INSERT INTO `lots` VALUES ('32', 'LOT20170521', '2', '2017-05-21 07:44:46', '1', null, null, null, '2017-05-21 12:15:29', '2017-05-21 14:45:08');

-- ----------------------------
-- Table structure for page
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `page_id` int(3) NOT NULL AUTO_INCREMENT,
  `page` varchar(255) DEFAULT NULL,
  `default` int(1) DEFAULT NULL,
  `lang1` varchar(255) DEFAULT NULL,
  `lang2` varchar(255) DEFAULT NULL,
  `lang3` varchar(255) DEFAULT NULL,
  `lang4` varchar(255) DEFAULT NULL,
  `jsonobj` mediumtext DEFAULT NULL,
  `enable` int(1) DEFAULT 1,
  `path` varchar(255) DEFAULT '',
  `page_parent` int(2) DEFAULT 0,
  `page_sort` int(4) DEFAULT NULL,
  `create_date` varchar(255) DEFAULT '',
  `create_by` varchar(255) DEFAULT '',
  `update_date` varchar(255) DEFAULT '',
  `update_by` varchar(255) DEFAULT '',
  `defaul_stat` int(4) DEFAULT 0 COMMENT '-1= ไม่แสดงในเมนู, 0=blog, 1=default ห้ามลบ, 2=external link, 3=catalog',
  `default_menu` int(1) DEFAULT NULL COMMENT '1=Defaultลบไม่ได้, 0=ลบได้',
  `SEO_TITLE` varchar(255) DEFAULT NULL,
  `SEO_KEYWORD` varchar(255) DEFAULT NULL,
  `SEO_DES` varchar(255) DEFAULT NULL,
  `SEO_IMAGE` varchar(255) DEFAULT NULL,
  `SEO_URL` varchar(255) DEFAULT NULL,
  `SEO_ETC` varchar(255) DEFAULT NULL,
  `custom` int(1) DEFAULT 0,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of page
-- ----------------------------
INSERT INTO `page` VALUES ('1', 'Home', '1', 'Home', 'Home', 'Home', 'Home', null, '1', 'home.php', '0', '1', '2015-12-04 10:57:07', 'default', '2016-11-16 12:14:13', 'admin', '1', '1', 'Home', 'Home', 'Home', 'Home', 'Home', 'Home', '1');

-- ----------------------------
-- Table structure for page_option
-- ----------------------------
DROP TABLE IF EXISTS `page_option`;
CREATE TABLE `page_option` (
  `pop_id` int(5) NOT NULL AUTO_INCREMENT,
  `pop_key` varchar(255) DEFAULT '',
  `pop_value` longtext DEFAULT NULL,
  `lang1` text DEFAULT NULL,
  `lang2` text DEFAULT NULL,
  `lang3` text DEFAULT NULL,
  `lang4` text DEFAULT NULL,
  `staus` int(1) DEFAULT NULL,
  `type` int(2) DEFAULT NULL,
  PRIMARY KEY (`pop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of page_option
-- ----------------------------
INSERT INTO `page_option` VALUES ('1', 'facebook', 'https://www.facebook.com/thongchai.lim', null, null, null, null, '1', null);
INSERT INTO `page_option` VALUES ('2', 'twitter', '', null, null, null, null, '1', null);
INSERT INTO `page_option` VALUES ('3', 'instagram', '', null, null, null, null, '1', null);
INSERT INTO `page_option` VALUES ('4', 'youtube', '', null, null, null, null, '1', null);
INSERT INTO `page_option` VALUES ('6', 'pinterest', '', null, null, null, null, '1', null);
INSERT INTO `page_option` VALUES ('7', 'tumblr', '', null, null, null, null, '1', null);
INSERT INTO `page_option` VALUES ('8', 'line', '@limweb', null, null, null, null, '1', null);
INSERT INTO `page_option` VALUES ('10', 'vimeo', '', null, null, null, null, '1', null);
INSERT INTO `page_option` VALUES ('11', 'flickr', '', null, null, null, null, '1', null);
INSERT INTO `page_option` VALUES ('12', 'telephone', '086-9797897', null, null, null, null, '1', null);
INSERT INTO `page_option` VALUES ('14', 'logo', '/upload-img/default_logo.png', null, null, null, null, '1', null);
INSERT INTO `page_option` VALUES ('15', 'under_front', '1', null, null, null, null, null, null);
INSERT INTO `page_option` VALUES ('118', 'googlemap', '19.9542056,99.2245798', null, null, null, null, null, null);
INSERT INTO `page_option` VALUES ('119', 'fax', '086-9797897', null, null, null, null, null, null);
INSERT INTO `page_option` VALUES ('120', 'email', 'limweb@hotmail.com', null, null, null, null, null, null);
INSERT INTO `page_option` VALUES ('121', 'address', '203/7 ลาดพร้าว 15 ลาดยาว จตุจักร', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pricex` decimal(10,2) DEFAULT NULL,
  `product_type` int(1) DEFAULT NULL COMMENT '0  วัตถุดิบ  1. ค่าใช้จาย  9  สำเร็จรูป',
  `product_code` varchar(255) DEFAULT NULL,
  `category_id` int(2) unsigned DEFAULT NULL,
  `status` int(1) unsigned DEFAULT 1 COMMENT '0. inactive  1 active',
  `actived` int(1) unsigned DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'ทุเรียนหมอนทอง A', '200.00', '0', 'DR-O1', '1', '1', '1', 'ทุเรียน A', '2017-05-04 19:58:17', '2017-05-17 11:17:02', 'system', 'system');
INSERT INTO `products` VALUES ('2', 'ทุเรียน B', '200.00', '0', 'DR-02', '1', '1', '1', 'ทุเรียน B', '2017-05-04 19:58:29', '2017-05-17 11:17:02', 'system', 'system');
INSERT INTO `products` VALUES ('3', 'ทุเรียน C', '200.00', '0', 'DR-03', '1', '1', '1', 'ทุเรียน C', '2017-05-04 19:58:47', '2017-05-17 11:17:02', 'system', 'system');
INSERT INTO `products` VALUES ('4', 'ค่านายหน้า', '200.00', '1', 'EX-01', '2', '1', '1', 'ค่านายหน้า', '2017-05-14 15:02:33', '2017-05-17 11:17:02', 'system', 'system');
INSERT INTO `products` VALUES ('5', 'ค่าตัด', '200.00', '1', 'EX-02', '2', '1', '1', 'ค่าตัด', '2017-05-14 15:02:39', '2017-05-17 11:17:02', 'system', 'system');
INSERT INTO `products` VALUES ('6', 'ค่ากล่อง', '200.00', '1', 'EX-03', '2', '1', '1', 'ค่ากล่อง', '2017-05-14 15:02:44', '2017-05-17 11:17:02', 'system', 'system');

-- ----------------------------
-- Table structure for sellers
-- ----------------------------
DROP TABLE IF EXISTS `sellers`;
CREATE TABLE `sellers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `created_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sellers
-- ----------------------------
SET FOREIGN_KEY_CHECKS=1;
