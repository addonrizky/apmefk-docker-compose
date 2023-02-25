# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.27)
# Database: brimo_epayment_2
# Generation Time: 2022-12-15 05:01:26 +0000
# ************************************************************

CREATE DATABASE IF NOT EXISTS `brimo_epayment_2`;
USE brimo_epayment_2;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table tbl_accesstoken
# ------------------------------------------------------------

CREATE TABLE `tbl_accesstoken` (
  `id` int NOT NULL AUTO_INCREMENT,
  `access_token` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `auth_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `username` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `account` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `access_token_expiry_time` int DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `refresh_token_expiry_time` int DEFAULT NULL,
  `acquirer_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `psp_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `auth_client_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `auth_client_name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `auth_client_display_name` varchar(255) DEFAULT NULL,
  `auth_client_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `reference_merchant_id` varchar(50) DEFAULT NULL,
  `auth_redirect_url` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `scopes` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `customer_belongs_to` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `auth_state` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `terminal_type` varchar(255) DEFAULT NULL,
  `reference_agreement_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `auth_notify_url` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `timestamp` varchar(50) DEFAULT NULL,
  `created_date` int DEFAULT NULL,
  `modified_date` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `aggregator_id` int DEFAULT NULL,
  `customer_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cif` varchar(10) DEFAULT NULL,
  `deleted_date` int DEFAULT NULL,
  `canceled_date` int DEFAULT NULL,
  `customer_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `access_token` (`access_token`),
  KEY `deleted_date` (`deleted_date`),
  KEY `username` (`username`),
  KEY `acquirer_id` (`acquirer_id`),
  KEY `psp_id` (`psp_id`),
  KEY `auth_code` (`auth_code`),
  KEY `refresh_token` (`refresh_token`),
  KEY `cif` (`cif`),
  KEY `reference_merchant_id` (`reference_merchant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table tbl_accesstoken_deleted
# ------------------------------------------------------------

CREATE TABLE `tbl_accesstoken_deleted` (
  `id` int NOT NULL AUTO_INCREMENT,
  `access_token` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `auth_code` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `username` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `account` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `access_token_expiry_time` int DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  `refresh_token_expiry_time` int DEFAULT NULL,
  `acquirer_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `psp_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `auth_client_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `auth_client_name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `auth_client_display_name` varchar(255) DEFAULT NULL,
  `auth_client_logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `reference_merchant_id` varchar(50) DEFAULT NULL,
  `auth_redirect_url` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `scopes` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `customer_belongs_to` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `auth_state` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `terminal_type` varchar(255) DEFAULT NULL,
  `reference_agreement_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `auth_notify_url` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `timestamp` varchar(50) DEFAULT NULL,
  `created_date` int DEFAULT NULL,
  `modified_date` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `aggregator_id` int DEFAULT NULL,
  `customer_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cif` varchar(10) DEFAULT NULL,
  `deleted_date` int DEFAULT NULL,
  `canceled_date` int DEFAULT NULL,
  `customer_name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table tbl_authcode
# ------------------------------------------------------------

CREATE TABLE `tbl_authcode` (
  `auth_code` varchar(255) NOT NULL,
  `auth_id` varchar(255) DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_date` int DEFAULT NULL,
  `modified_date` int DEFAULT NULL,
  PRIMARY KEY (`auth_code`),
  KEY `auth_id` (`auth_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table tbl_authid
# ------------------------------------------------------------

CREATE TABLE `tbl_authid` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(10) DEFAULT NULL,
  `request_data` json DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `get_url_refnum` varchar(12) DEFAULT NULL,
  `login_refnum` varchar(12) DEFAULT NULL,
  `created_date` int DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table tbl_block
# ------------------------------------------------------------

CREATE TABLE `tbl_block` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `created_date` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table tbl_cancel_payment
# ------------------------------------------------------------

CREATE TABLE `tbl_cancel_payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `acquirer_id` varchar(255) DEFAULT NULL,
  `psp_id` varchar(255) DEFAULT NULL,
  `payment_request_id` varchar(255) DEFAULT NULL,
  `created_date` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table tbl_empty_state
# ------------------------------------------------------------

CREATE TABLE `tbl_empty_state` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `icon_name` text,
  `icon_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table tbl_error_feature
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_error_feature`;

CREATE TABLE `tbl_error_feature` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `rc` varchar(10) DEFAULT NULL,
  `trx_type` varchar(50) DEFAULT NULL,
  `trx_feature` varchar(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `title_en` varchar(100) DEFAULT NULL,
  `description` text,
  `description_en` text,
  PRIMARY KEY (`id`),
  KEY `rc` (`rc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `tbl_error_feature` WRITE;
/*!40000 ALTER TABLE `tbl_error_feature` DISABLE KEYS */;

INSERT INTO `tbl_error_feature` (`id`, `rc`, `trx_type`, `trx_feature`, `title`, `title_en`, `description`, `description_en`)
VALUES
	(1,'UB','Login','Login','Terlalu banyak percobaan, silahkan coba $minutes lagi.',NULL,'Terlalu banyak percobaan, silahkan coba $minutes lagi.',NULL),
	(2,'P1','Login','Login','Username / Password salah, silahkan periksa kembali.',NULL,'Username / Password salah, silahkan periksa kembali.',NULL),
	(3,'F2','Login','Login','Username / Password salah, silahkan periksa kembali.',NULL,'Username / Password salah, silahkan periksa kembali.',NULL),
	(4,'AC','Login','Login','Gagal menghubungkan. Merchant tidak valid',NULL,'Gagal menghubungkan. Merchant tidak valid',NULL),
	(5,'30','Login','Login','Username / Password salah, silahkan periksa kembali.',NULL,'Username / Password salah, silahkan periksa kembali.',NULL),
	(6,'1N','Confirm','Confirm','Pastikan Rekening yang dihubungkan dengan BRImo e-Payment benar. ',NULL,'Pastikan Rekening yang dihubungkan dengan BRImo e-Payment benar. ',NULL),
	(7,'NV','Confirm','Confirm','Kode verifikasi salah, silahkan cek kembali',NULL,'Kode verifikasi salah, silahkan cek kembali',NULL),
	(8,'EO','Confirm','Confirm','Kode verifikasi salah, silahkan cek kembali',NULL,'Kode verifikasi salah, silahkan cek kembali',NULL),
	(9,'BN','Login','Login','Akun BRImo kamu belum aktif',NULL,'Akun BRImo kamu belum aktif',NULL),
	(10,'SD','Confirm','Confirm','Permintaan OTP masih dalam durasi',NULL,'Permintaan OTP masih dalam durasi',NULL),
	(11,'FA','Confirm','Confirm','Permintaan OTP masih dalam durasi',NULL,'Permintaan OTP masih dalam durasi',NULL),
	(13,'F9','Login','Login','Terlalu banyak percobaan, silahkan coba dalam beberapa menit.',NULL,'Terlalu banyak percobaan, silahkan coba dalam beberapa menit.',NULL),
	(14,'AB','Login','Login','Anda sudah terhubung dengan merchant ini',NULL,'Anda sudah terhubung dengan merchant ini',NULL),
	(15,'NV','Confirm','Confirm','OTP Anda Salah',NULL,'OTP Anda Salah',NULL),
	(16,'EO','Confirm','Confirm','OTP Anda Kadaluwarsa',NULL,'OTP Anda Kadaluwarsa',NULL);

/*!40000 ALTER TABLE `tbl_error_feature` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tbl_merchant
# ------------------------------------------------------------

CREATE TABLE `tbl_merchant` (
  `id` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `snk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `status` int DEFAULT '1',
  `created_date` int DEFAULT NULL,
  `modified_date` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table tbl_otp
# ------------------------------------------------------------

CREATE TABLE `tbl_otp` (
  `auth_id` varchar(255) NOT NULL,
  `otp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `account` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_date` int DEFAULT NULL,
  `modified_date` int DEFAULT NULL,
  `started_date` int DEFAULT NULL,
  `counter` int DEFAULT NULL,
  `send_status` int DEFAULT '1' COMMENT '1 = berhasil, 0 = gagal',
  PRIMARY KEY (`auth_id`),
  KEY `otp` (`otp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table tbl_otp_risk_control
# ------------------------------------------------------------

CREATE TABLE `tbl_otp_risk_control` (
  `access_token` varchar(255) NOT NULL,
  `otp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created_date` int DEFAULT NULL,
  `modified_date` int DEFAULT NULL,
  `verify_request_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `started_date` int DEFAULT NULL,
  `counter` int DEFAULT NULL,
  `send_status` int DEFAULT '1' COMMENT '1 = berhasil, 0 = gagal',
  PRIMARY KEY (`access_token`),
  KEY `otp` (`otp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table tbl_parameters
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tbl_parameters`;

CREATE TABLE `tbl_parameters` (
  `id` varchar(60) NOT NULL,
  `value` text,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `tbl_parameters` WRITE;
/*!40000 ALTER TABLE `tbl_parameters` DISABLE KEYS */;

INSERT INTO `tbl_parameters` (`id`, `value`, `description`)
VALUES
	('DETAIL_LANGGANAN','{\"detail\":\"Merchant ini akan autodebet dari BRImo e-Payment, pada setiap transaksi yang kamu lakukan.\"}','detail langganan ini, ada di native'),
	('IMAGE_EMPTY_STATE','{\"title\":\"Kentungan Yogyakarta\",\"image_path\":\"http://172.18.136.93:4010/brimo-asset/brimopay/img_brimopay_cart.png.png\", \"image_name\":\"img_brimopay_cart\"}','image di halaman empty state native'),
	('SNK_DEFAULT','{\"snk\":\"\"}','<!DOCTYPE html>\r\n<html lang=\"en\">\r\n  <head>\r\n    <link\r\n      rel=\"stylesheet\"\r\n      href=\"https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\"\r\n      integrity=\"sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN\"\r\n      crossorigin=\"anonymous\"\r\n    />\r\n    <meta\r\n      name=\"viewport\"\r\n      content=\"width=device-width,initial-scale=1,maximum-scale=1\"\r\n    />\r\n    <style type=\"text/css\">\r\n      body {\r\n        width: 100%;\r\n        margin: 0;\r\n        padding: 0;\r\n        -webkit-font-smoothing: antialiased;\r\n        font-family: \"Avenir Next\";\r\n      }\r\n      span.preheader {\r\n        display: none;\r\n        font-size: 1px;\r\n      }\r\n      html {\r\n        width: 100%;\r\n      }\r\n      table {\r\n        font-size: 14px;\r\n        border: 0;\r\n      }\r\n      a {\r\n        text-decoration: none;\r\n        color: #333;\r\n        font-family: \"Avenir Next\";\r\n        font-weight: 700;\r\n      }\r\n      .regis_head,\r\n      td.syarat_header {\r\n        color: #00529c;\r\n        font-size: 14px;\r\n        font-weight: 700;\r\n        line-height: 35px;\r\n        font-family: \"Avenir Next\";\r\n        font-weight: 700;\r\n      }\r\n      td.content {\r\n        color: #333;\r\n        font-size: 13px;\r\n      }\r\n      li {\r\n        margin: 0 0 10px -10px;\r\n      }\r\n      @media (min-width: 1281px) {\r\n        .main-header {\r\n          font-size: 20px !important;\r\n        }\r\n        .main-section-header {\r\n          font-size: 28px !important;\r\n        }\r\n        .show {\r\n          display: block !important;\r\n        }\r\n        .hide {\r\n          display: none !important;\r\n        }\r\n        .align-center {\r\n          text-align: center !important;\r\n        }\r\n        .no-bg {\r\n          background: 0 0 !important;\r\n        }\r\n        .main-image img {\r\n          width: 440px !important;\r\n          height: auto !important;\r\n        }\r\n        .divider img {\r\n          width: 440px !important;\r\n        }\r\n        .container590 {\r\n          width: 440px !important;\r\n        }\r\n        .container580 {\r\n          width: 400px !important;\r\n        }\r\n        .main-button {\r\n          width: 220px !important;\r\n        }\r\n        .section-img img {\r\n          width: 871px !important;\r\n          height: auto !important;\r\n        }\r\n        .team-img img {\r\n          width: 100% !important;\r\n          height: auto !important;\r\n        }\r\n      }\r\n      @media (min-width: 1025px) and (max-width: 1280px) {\r\n        .main-header {\r\n          font-size: 20px !important;\r\n        }\r\n        .main-section-header {\r\n          font-size: 28px !important;\r\n        }\r\n        .show {\r\n          display: block !important;\r\n        }\r\n        .hide {\r\n          display: none !important;\r\n        }\r\n        .align-center {\r\n          text-align: center !important;\r\n        }\r\n        .no-bg {\r\n          background: 0 0 !important;\r\n        }\r\n        .main-image img {\r\n          width: 440px !important;\r\n          height: auto !important;\r\n        }\r\n        .divider img {\r\n          width: 440px !important;\r\n        }\r\n        .container590 {\r\n          width: 440px !important;\r\n        }\r\n        .container580 {\r\n          width: 400px !important;\r\n        }\r\n        .main-button {\r\n          width: 220px !important;\r\n        }\r\n        .section-img img {\r\n          width: 771px !important;\r\n          height: auto !important;\r\n        }\r\n        .team-img img {\r\n          width: 100% !important;\r\n          height: auto !important;\r\n        }\r\n      }\r\n      @media (min-width: 768px) and (max-width: 1024px) {\r\n        .main-header {\r\n          font-size: 20px !important;\r\n        }\r\n        .main-section-header {\r\n          font-size: 28px !important;\r\n        }\r\n        .show {\r\n          display: block !important;\r\n        }\r\n        .hide {\r\n          display: none !important;\r\n        }\r\n        .align-center {\r\n          text-align: center !important;\r\n        }\r\n        .no-bg {\r\n          background: 0 0 !important;\r\n        }\r\n        .main-image img {\r\n          width: 440px !important;\r\n          height: auto !important;\r\n        }\r\n        .divider img {\r\n          width: 440px !important;\r\n        }\r\n        .container590 {\r\n          width: 440px !important;\r\n        }\r\n        .container580 {\r\n          width: 400px !important;\r\n        }\r\n        .main-button {\r\n          width: 220px !important;\r\n        }\r\n        .section-img img {\r\n          width: 671px !important;\r\n          height: auto !important;\r\n        }\r\n        .team-img img {\r\n          width: 100% !important;\r\n          height: auto !important;\r\n        }\r\n      }\r\n      @media (min-width: 320px) and (max-width: 320px) {\r\n        .main-header {\r\n          font-size: 20px !important;\r\n        }\r\n        .main-section-header {\r\n          font-size: 28px !important;\r\n        }\r\n        .show {\r\n          display: block !important;\r\n        }\r\n        .hide {\r\n          display: none !important;\r\n        }\r\n        .align-center {\r\n          text-align: center !important;\r\n        }\r\n        .no-bg {\r\n          background: 0 0 !important;\r\n        }\r\n        .main-image img {\r\n          width: 440px !important;\r\n          height: auto !important;\r\n        }\r\n        .divider img {\r\n          width: 440px !important;\r\n        }\r\n        .container590 {\r\n          width: 440px !important;\r\n        }\r\n        .container580 {\r\n          width: 400px !important;\r\n        }\r\n        .main-button {\r\n          width: 220px !important;\r\n        }\r\n        .section-img img {\r\n          width: 331px !important;\r\n          height: auto !important;\r\n        }\r\n        .team-img img {\r\n          width: 100% !important;\r\n          height: auto !important;\r\n        }\r\n      }\r\n      @media (min-width: 411px) and (max-width: 800px) {\r\n        .main-header {\r\n          font-size: 20px !important;\r\n        }\r\n        .main-section-header {\r\n          font-size: 28px !important;\r\n        }\r\n        .show {\r\n          display: block !important;\r\n        }\r\n        .hide {\r\n          display: none !important;\r\n        }\r\n        .align-center {\r\n          text-align: center !important;\r\n        }\r\n        .no-bg {\r\n          background: 0 0 !important;\r\n        }\r\n        .main-image img {\r\n          width: 440px !important;\r\n          height: auto !important;\r\n        }\r\n        .divider img {\r\n          width: 440px !important;\r\n        }\r\n        .container590 {\r\n          width: 440px !important;\r\n        }\r\n        .container580 {\r\n          width: 400px !important;\r\n        }\r\n        .main-button {\r\n          width: 220px !important;\r\n        }\r\n        .section-img img {\r\n          width: 415px !important;\r\n          height: auto !important;\r\n        }\r\n        .team-img img {\r\n          width: 100% !important;\r\n          height: auto !important;\r\n        }\r\n      }\r\n      @media (min-width: 360px) and (max-width: 360px) {\r\n        .main-header {\r\n          font-size: 20px !important;\r\n        }\r\n        .main-section-header {\r\n          font-size: 28px !important;\r\n        }\r\n        .show {\r\n          display: block !important;\r\n        }\r\n        .hide {\r\n          display: none !important;\r\n        }\r\n        .align-center {\r\n          text-align: center !important;\r\n        }\r\n        .no-bg {\r\n          background: 0 0 !important;\r\n        }\r\n        .main-image img {\r\n          width: 440px !important;\r\n          height: auto !important;\r\n        }\r\n        .divider img {\r\n          width: 440px !important;\r\n        }\r\n        .container590 {\r\n          width: 440px !important;\r\n        }\r\n        .container580 {\r\n          width: 400px !important;\r\n        }\r\n        .main-button {\r\n          width: 220px !important;\r\n        }\r\n        .section-img img {\r\n          width: 360px !important;\r\n          height: auto !important;\r\n        }\r\n        .team-img img {\r\n          width: 100% !important;\r\n          height: auto !important;\r\n        }\r\n      }\r\n      @media (min-width: 375px) and (max-width: 375px) {\r\n        .main-header {\r\n          font-size: 20px !important;\r\n        }\r\n        .main-section-header {\r\n          font-size: 28px !important;\r\n        }\r\n        .show {\r\n          display: block !important;\r\n        }\r\n        .hide {\r\n          display: none !important;\r\n        }\r\n        .align-center {\r\n          text-align: center !important;\r\n        }\r\n        .no-bg {\r\n          background: 0 0 !important;\r\n        }\r\n        .main-image img {\r\n          width: 440px !important;\r\n          height: auto !important;\r\n        }\r\n        .divider img {\r\n          width: 440px !important;\r\n        }\r\n        .container590 {\r\n          width: 440px !important;\r\n        }\r\n        .container580 {\r\n          width: 400px !important;\r\n        }\r\n        .main-button {\r\n          width: 220px !important;\r\n        }\r\n        .section-img img {\r\n          width: 375px !important;\r\n          height: auto !important;\r\n        }\r\n        .team-img img {\r\n          width: 100% !important;\r\n          height: auto !important;\r\n        }\r\n      }\r\n      .sticky {\r\n        position: -webkit-sticky;\r\n        position: sticky;\r\n        bottom: 1rem;\r\n      }\r\n      .smaller-font-size {\r\n        font-family: Avenir Next, sans-serif;\r\n        font-weight: 400;\r\n        font-size: 14px;\r\n      }\r\n      .smaller-bold-font-size {\r\n        font-family: Avenir Next, sans-serif;\r\n        font-weight: 700;\r\n        font-size: 14px;\r\n      }\r\n    </style>\r\n  </head>\r\n  <body class=\"respond\">\r\n    <table border=\"0\" width=\"100%\" cellpadding=\"2\" cellspacing=\"0\">\r\n      <tr>\r\n        <td align=\"center\" class=\"content\">\r\n          <div align=\"justify\" style=\"margin-left: 0; margin-right: 25px\">\r\n            <div class=\"smaller-bold-font-size\">\r\n              Dengan ini saya menyatakan:\r\n            </div>\r\n            <ol style=\"list-style-type: decimal\" class=\"smaller-font-size\">\r\n              <li>\r\n                Data yang diisikan di atas adalah benar sesuai dengan kondisi\r\n                sebenarnya. Apabila nasabah memberikan data yang tidak sesuai\r\n                dengan kondisi sebenarnya atau menggunakan dokumen yang diduga\r\n                palsu, maka Bank berhak melakukan tindakan sesuai kebijakan\r\n                Bank, termasuk namun tidak terbatas pada melakukan pembatasan\r\n                transaksi, pemblokiran, maupun penutupan rekening.\r\n              </li>\r\n              <li>\r\n                Memberikan kuasa kepada Bank yang tidak dapat dibatalkan secara\r\n                sepihak oleh Nasabah sesuai dengan pasal 1813 Kitab\r\n                Undang-Undang Hukum Perdata, untuk mendebat rekening nasabah\r\n                dalam rangka pembayaran maupun beban yang timbul dari produk\r\n                maupun konsekuensinya dan melakukan pemblokiran rekening jika\r\n                diindikasi telah terjadi penyalahgunaan rekening dana atau oleh\r\n                sebab-sebab lainnya.\r\n              </li>\r\n              <li>\r\n                Memberikan persetujuan kepada Bank untuk memberikan data nasabah\r\n                seperti namun tidak terbatas pada CIF kepada Intansi Pemerintah\r\n                RI maupun pihak-pihak lain sesuai dengan Undang-Undang RI,\r\n                ketentuan external lainnya maupun perjanjian kerjasama sesuai\r\n                dengan produk dan/ atau fitur/ fasilitas yang dipilih/ dimilliki\r\n                nasabah.\r\n              </li>\r\n              <li>\r\n                Bertanggungjawab atas penggunaan bukti kepemilikan rekening,\r\n                fasilitas transaksi, dan segala perintah transaksi terhadap\r\n                rekening tersebut, baik yang dilakukan melalui jaringan Bank\r\n                maupun jaringan elektronik, tidak menggunakan rekening maupun\r\n                fasilitas transaksi untuk tindak kejahatan atau perbuatan\r\n                melawan hukum, serta tidak memindahtangankan bukti kepemilikan\r\n                rekening maupun fasilitas transaksi kepada pihak lain.\r\n                Penyalahgunaan terhadap bukti kepemilikan rekening maupun\r\n                fasilitas transaksi, merupakan tanggung jawab nasabah. Apabila\r\n                rekening terindikasi digunakan tidak sesuai peruntukkan atau\r\n                terlibat dalam tindak kejahatan atau perbuatan melawan hukum,\r\n                maka Bank berhak melakukan tindakan sesuai kebijakan Bank,\r\n                termasuk namun tidak terbatas pada melakukan pembatasan\r\n                transaksi, pemblokiran, maupun penutupan rekening.\r\n              </li>\r\n              <li>\r\n                Apabila terjadi kehilangan bukti kepemilikan rekening atau\r\n                fasilitas transaksi, segera melaporkan kepada Bank dan\r\n                selanjutnya melengkapi dokumen sesuai dengan yang dipersyaratkan\r\n                oleh Bank. Bank tidak bertanggunjawab atas penyalahgunaaan yang\r\n                dilakukan oleh pihak ketika sebelum diterimanya laporan\r\n                kehilangan oleh Bank.\r\n              </li>\r\n              <li>\r\n                Bank Telah memberikan penjelasan yang memadai mengenai\r\n                karakteristik produk dimaksud, termasuk manfaat, risiko, dan\r\n                biaya-biaya dan serta nasabah menyatakan telah membaca, memahami\r\n                , mengetahui dan tunduk pada isi syarat dan ketentuan produk.\r\n                Apabila di kemudian hari terdapat perubahan manfaat, risiko,\r\n                biaya, syarat dan ketentuan produk, Bank akan memberitahukan\r\n                kepada nasabah melalui jaringan Bank sebelum diberlakukan\r\n                perubahan tersebut.\r\n              </li>\r\n              <li>\r\n                Perjanjian ini telah disesuaikan dengan ketentuan peraturan\r\n                perundang-undangan termasuk ketentuan Peraturan Otoritas Jasa\r\n                Keuangan (OJK) dan apabila terdapat perbedaan arti antara Bahasa\r\n                Indonesia dan Bahasa Inggris maka yang berlaku adalah Bahasa\r\n                Indonesia.\r\n              </li>\r\n              <li>\r\n                Bank mempunyai hak untuk menerima atau menolak permohonan\r\n                pembukaan rekening calon nasabah.\r\n              </li>\r\n            </ol>\r\n          </div>\r\n        </td>\r\n      </tr>\r\n    </table>\r\n  </body>\r\n</html>\r\n');

/*!40000 ALTER TABLE `tbl_parameters` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tbl_payment
# ------------------------------------------------------------

CREATE TABLE `tbl_payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `payment_request_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `account` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `username` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `customer_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `refnum` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `access_token` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `reference_merchant_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `access_token_id` int DEFAULT NULL,
  `journal_sequence` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `data` text NOT NULL,
  `status` int DEFAULT NULL COMMENT '1=inproccess\r\n2=success\r\n3=failed',
  `created_date` int DEFAULT NULL,
  `canceled_date` int DEFAULT NULL,
  `auth_client_display_name` varchar(64) DEFAULT NULL,
  `esb_response` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `acquirer_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `psp_id` varchar(64) DEFAULT NULL,
  `journal_sequence_cancel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `esb_response_cancel` text,
  `refnum_cancel` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `access_token` (`access_token`),
  KEY `acquirer_id` (`acquirer_id`),
  KEY `psp_id` (`psp_id`),
  KEY `payment_request_id_2` (`payment_request_id`),
  KEY `access_token_id` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table tbl_refund_payment
# ------------------------------------------------------------

CREATE TABLE `tbl_refund_payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `refund_request_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `payment_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `username` varchar(12) DEFAULT NULL,
  `payment_request_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `customer_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `refnum` varchar(12) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `data` text,
  `created_date` int DEFAULT NULL,
  `acquirer_id` varchar(64) DEFAULT NULL,
  `psp_id` varchar(64) DEFAULT NULL,
  `journal_sequence_refund` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `esb_response` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `status` int DEFAULT NULL COMMENT '1=inproccess\r\n2=success\r\n3=failed',
  PRIMARY KEY (`id`),
  KEY `payment_id` (`payment_id`),
  KEY `refund_request_id` (`refund_request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



# Dump of table tbl_trx_log
# ------------------------------------------------------------

CREATE TABLE `tbl_trx_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `reference_num` varchar(255) DEFAULT NULL,
  `trx_type` varchar(255) DEFAULT NULL,
  `logged` int DEFAULT NULL,
  `trx_status` varchar(255) DEFAULT NULL,
  `trx_object` text,
  `trx_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `ip_address_source` varchar(255) DEFAULT NULL,
  `agent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
