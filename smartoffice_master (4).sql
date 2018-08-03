-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 03, 2018 at 12:36 PM
-- Server version: 5.5.61-0ubuntu0.14.04.1
-- PHP Version: 7.1.20-1+ubuntu14.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smartoffice_master`
--

-- --------------------------------------------------------

--
-- Table structure for table `so_app_versions`
--

CREATE TABLE IF NOT EXISTS `so_app_versions` (
  `version_id` char(36) NOT NULL,
  `application_name` enum('SOSETUP','SMARTOFFICE_MOBILE','SMARTOFFICE_TABLET') NOT NULL,
  `device_type` enum('ANDROID','IOS') NOT NULL,
  `app_version` varchar(10) NOT NULL,
  `api_version` varchar(10) NOT NULL,
  `update_link` text NOT NULL,
  `is_production` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`version_id`),
  KEY `application_name` (`application_name`),
  KEY `is_production` (`is_production`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `so_app_versions`
--

INSERT INTO `so_app_versions` (`version_id`, `application_name`, `device_type`, `app_version`, `api_version`, `update_link`, `is_production`, `created_at`, `updated_at`, `deleted_at`) VALUES
('1', 'SMARTOFFICE_MOBILE', 'ANDROID', '1.0', 'v1', 'https://softwebsolutions.co.in/releasecloud/User/Download?ImageName=~%2FProjects%2FSmartOfficeStg%2FAndroid%2F1.1%2FSmartOffice_V1.1.apk&displayname=SmartOffice_V1.1.apk', 1, '2016-08-05 16:25:50', '2016-08-05 16:25:50', NULL),
('2', 'SMARTOFFICE_MOBILE', 'IOS', '1.0', 'v1', 'itms-services://?action=download-manifest&url=https://softwebsolutions.co.in/releasecloud/Projects/SmartOfficeStg/iOS/SmartofficeV1.2/smartoffice.plist', 1, '2016-08-05 16:25:50', '2016-08-05 16:25:50', NULL),
('3', 'SOSETUP', 'IOS', '1.0', 'v1', 'itms-services://?action=download-manifest&url=https://softwebsolutions.co.in/releasecloud/Projects/SOSetup/iOS/SOSetup_1.1/SOSetup.plist', 1, '2016-08-05 16:25:50', '2016-08-05 16:25:50', NULL),
('4', 'SOSETUP', 'ANDROID', '1.0', 'v1', 'https://softwebsolutions.co.in/releasecloud/Release/Download?ImageName=~%2FProjects%2FSOSetup%2FAndroid%2F1.0%2FSoSetup_V_1_0.apk&displayname=SoSetup_V_1_0.apk', 1, '2016-08-05 16:25:50', '2016-08-05 16:25:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `so_company_master`
--

CREATE TABLE IF NOT EXISTS `so_company_master` (
  `company_id` char(36) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_email` varchar(255) DEFAULT NULL,
  `company_address1` varchar(100) DEFAULT NULL,
  `company_address2` varchar(100) DEFAULT NULL,
  `company_city` varchar(50) DEFAULT NULL,
  `company_state` varchar(50) DEFAULT NULL,
  `company_zip` varchar(15) DEFAULT NULL,
  `company_phone` varchar(20) DEFAULT NULL,
  `company_logo` varchar(50) DEFAULT NULL,
  `company_domain_prefix` varchar(50) DEFAULT NULL,
  `company_db_name` varchar(255) NOT NULL,
  `time_difference` varchar(10) DEFAULT NULL,
  `timezone` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`company_id`),
  KEY `company_domain_prefix` (`company_domain_prefix`),
  KEY `company_db_name` (`company_db_name`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `so_company_master`
--

INSERT INTO `so_company_master` (`company_id`, `company_name`, `company_email`, `company_address1`, `company_address2`, `company_city`, `company_state`, `company_zip`, `company_phone`, `company_logo`, `company_domain_prefix`, `company_db_name`, `time_difference`, `timezone`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
('1', 'Priya Softweb Solutions', 'info@softwebsolutions.com', '5,6 Garden view corporate house', 'Near auda garden', 'Ahmedabad', 'Gujarat', '380059', '07940373760', '4c050b47-72df-2c05-3f5d-2e8d123b03b8.svg', 'priya', 'smartoffice_priyasoftweb', '+05:00', 'Asia/Kolkata', 1, '2017-07-18 23:51:46', '2018-02-02 05:01:52', NULL),
('dd5d10b1-3965-464b-9c14-8a01f61dfc0b', 'Softweb Solutions', 'xyz@softwebsolutions.com', 'bodakdev', 'corporate house', 'ahmedabad', 'gujarat', '380054', '9825161234', NULL, 'softweb', 'smartoffice_softweb', '-05:00', 'America/Chicago', 1, '2017-07-18 23:51:46', '2017-10-10 10:30:56', NULL),
('gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'Softweb Solutions Texas', 'viral@softwebsolutions.com', '950 Legacy Drive, Suite 250', NULL, 'Plano', 'Texas', '75024', '469-626-9333', '09b472b9-293e-b167-ae3f-d1b30b3de4a9.png', 'texas', 'smartoffice_texas', '-06:00', 'America/Chicago', 1, '2018-02-08 13:18:11', '2018-03-15 10:11:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `so_company_master_amenities`
--

CREATE TABLE IF NOT EXISTS `so_company_master_amenities` (
  `amenity_id` char(36) NOT NULL,
  `amenity_name` varchar(255) NOT NULL,
  `amenity_image` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`amenity_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `so_company_master_amenities`
--

INSERT INTO `so_company_master_amenities` (`amenity_id`, `amenity_name`, `amenity_image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
('00000000-0000-0000-0000-000000000001', 'Wifi', 'wifi.png', 1, '2017-07-11 00:00:00', '2017-07-11 00:00:00', NULL),
('00000000-0000-0000-0000-000000000002', 'Speaker', 'speaker.png', 1, '2017-07-11 00:00:00', '2017-07-11 00:00:00', NULL),
('00000000-0000-0000-0000-000000000003', 'Webcam', 'webcam.png', 1, '2017-07-11 00:00:00', '2017-07-11 00:00:00', NULL),
('00000000-0000-0000-0000-000000000004', 'Whiteboard', 'whiteboard.png', 1, '2017-07-11 00:00:00', '2017-07-11 00:00:00', NULL),
('00000000-0000-0000-0000-000000000005', 'TV', 'tv.png', 1, '2017-07-11 00:00:00', '2017-07-11 00:00:00', NULL),
('00000000-0000-0000-0000-000000000006', 'Projecter', 'projecter.png', 1, '2017-07-11 00:00:00', '2017-07-11 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `so_company_payments`
--

CREATE TABLE IF NOT EXISTS `so_company_payments` (
  `payment_id` char(36) NOT NULL,
  `company_plan_id` char(36) NOT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `company_plan_id` (`company_plan_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `so_company_plan_details`
--

CREATE TABLE IF NOT EXISTS `so_company_plan_details` (
  `company_plan_id` char(36) NOT NULL,
  `company_id` char(36) NOT NULL,
  `plan_id` char(36) NOT NULL,
  `plan_name` varchar(255) DEFAULT NULL,
  `plan_price` double NOT NULL,
  `no_of_month` int(12) NOT NULL,
  `no_of_user` int(12) NOT NULL COMMENT '-1 for Unlimited',
  `no_of_space` int(12) NOT NULL COMMENT '-1 for Unlimited',
  `feature_detail` text NOT NULL,
  `is_renew` tinyint(1) NOT NULL DEFAULT '0',
  `plan_start_date` date NOT NULL,
  `plan_end_date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`company_plan_id`),
  KEY `company_id` (`company_id`),
  KEY `plan_id` (`plan_id`),
  KEY `status` (`status`),
  KEY `plan_start_date` (`plan_start_date`),
  KEY `plan_end_date` (`plan_end_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `so_company_plan_details`
--

INSERT INTO `so_company_plan_details` (`company_plan_id`, `company_id`, `plan_id`, `plan_name`, `plan_price`, `no_of_month`, `no_of_user`, `no_of_space`, `feature_detail`, `is_renew`, `plan_start_date`, `plan_end_date`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
('1', '1', '00000000-0000-0000-0000-000000000001', 'Basic', 0, 1, -1, -1, '', 0, '2017-07-19', '2025-08-19', 1, '2017-07-19 10:51:47', '2017-07-19 10:51:47', NULL),
('2b365e19-0dec-453b-a5a6-11781acf51c2', 'dd5d10b1-3965-464b-9c14-8a01f61dfc0b', '00000000-0000-0000-0000-000000000001', 'Basic', 0, 1, -1, -1, '[{"feature-id":1,"feature-slug":"amenities"},{"feature-id":2,"feature-slug":"issue-reporting"},{"feature-id":3,"feature-slug":"admin-booking"},{"feature-id":4,"feature-slug":"indoor-wayfinding"},{"feature-id":5,"feature-slug":"saml-single-sign-on"},{"feature-id":6,"feature-slug":"meeting-services"}]', 0, '2017-07-19', '2025-08-19', 1, '2017-07-19 10:51:47', '2017-07-19 10:51:47', NULL),
('df365e19-44ec-444b-44df-dfe81acf51c2', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', '00000000-0000-0000-0000-000000000001', 'Basic', 0, 0, -1, -1, '[{"feature-id":1,"feature-slug":"amenities"},{"feature-id":2,"feature-slug":"issue-reporting"},{"feature-id":3,"feature-slug":"admin-booking"},{"feature-id":4,"feature-slug":"indoor-wayfinding"},{"feature-id":5,"feature-slug":"saml-single-sign-on"},{"feature-id":6,"feature-slug":"meeting-services"}]', 0, '2018-02-08', '2020-12-31', 1, '2018-02-08 14:36:02', '2018-02-08 14:36:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `so_company_users_map`
--

CREATE TABLE IF NOT EXISTS `so_company_users_map` (
  `company_user_id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `company_id` char(36) NOT NULL,
  `building_id` char(36) DEFAULT NULL,
  `floor_id` char(36) DEFAULT NULL,
  `user_type` enum('CompanyAdmin','MasterAdmin','Member','SubAdmin','Admin') NOT NULL DEFAULT 'Member',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`company_user_id`),
  KEY `user_id` (`user_id`),
  KEY `company_id` (`company_id`),
  KEY `user_type` (`user_type`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `so_company_users_map`
--

INSERT INTO `so_company_users_map` (`company_user_id`, `user_id`, `company_id`, `building_id`, `floor_id`, `user_type`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
('03a8efd9-f978-4b61-967b-9decf6cafac6', '91cca652-0d30-4862-b14a-fa46d973634f', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '09d7db0d-78e3-a25e-1029-e1e6e690af2d', 'Member', 1, '2018-06-04 14:35:38', '2018-06-04 14:35:38', NULL),
('07d96622-9543-44c5-a987-e0ea57a0403f', 'd24129dd-d697-4353-81c5-4b7a9a6fccce', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', 'de3ad9ad-4fe7-5cad-58dd-bfe0b620f5a0', 'Member', 1, '2017-09-12 11:31:16', '2017-07-31 14:34:07', NULL),
('0ba064b8-109b-425e-ae09-458e360c92bd', '201464ef-6896-44c6-b164-81858d5683b9', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '689b5cf5-9e25-404e-9768-fcc494830c82', 'SubAdmin', 1, '2017-09-12 09:45:54', '2017-09-20 14:46:35', NULL),
('0dc53c0e-6ec6-47ad-80c5-735f545bdf9b', '4f5ac2a3-c67d-4e21-9401-c9979c4bee73', 'dd5d10b1-3965-464b-9c14-8a01f61dfc0b', '86cbe3a6-a197-03b8-2f9b-c329802478a2', 'b1a69a0f-7f5a-e17d-7785-fcbee1213a8c', 'SubAdmin', 1, '2017-09-14 10:07:14', '2017-10-04 10:17:01', NULL),
('0e136caa-8ffd-4c3f-8979-c03d03a5a8d0', '4c266265-9b49-4318-af95-c7c958229ca0', 'dd5d10b1-3965-464b-9c14-8a01f61dfc0b', '86cbe3a6-a197-03b8-2f9b-c329802478a2', 'e9d7bb5f-6a1d-2718-051f-c922f779900d', 'Member', 1, '2017-10-12 11:32:50', '2017-10-12 11:32:50', NULL),
('0f44b5bd-18cb-422c-9ac8-0952f90709dd', '4d4b4137-25b5-485f-b63c-012ed693c17a', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', 'de3ad9ad-4fe7-5cad-58dd-bfe0b620f5a0', 'Member', 1, '2017-09-12 11:42:25', '2017-10-03 06:53:30', NULL),
('0ff3586e-3d07-406b-9f69-c04c08aa3cf8', '6c76fff7-6acc-4e9d-acee-7718047791d2', 'dd5d10b1-3965-464b-9c14-8a01f61dfc0b', '86cbe3a6-a197-03b8-2f9b-c329802478a2', 'b1a69a0f-7f5a-e17d-7785-fcbee1213a8c', 'Member', 1, '2017-10-17 12:37:56', '2017-10-17 12:37:56', NULL),
('1', '1', '', '1', '', 'MasterAdmin', 1, '2017-07-14 21:28:15', '2017-07-25 18:18:11', NULL),
('148ef229-c677-4a59-8975-4fa082b0ce03', '23bf962e-8f1e-47d8-abd4-32d785e66c79', 'dd5d10b1-3965-464b-9c14-8a01f61dfc0b', '0cf13028-11e0-8e25-0d8e-57c045155250', '', 'SubAdmin', 1, '2017-09-08 09:13:45', '2017-09-08 09:13:45', NULL),
('1c7a37c9-c5cb-4ab1-b004-4413547f6703', 'ff163270-3a94-4443-882f-e7fab31ca1af', 'dd5d10b1-3965-464b-9c14-8a01f61dfc0b', '8d7bccb9-77e7-fbb1-87b1-dbc86c8df670', '38de4fc0-bea8-6e81-25c4-997ede1e5399', 'SubAdmin', 1, '2017-10-16 12:55:31', '2017-10-16 12:55:31', NULL),
('1f987ab8-6608-45a6-a7e7-a197ef0b1283', 'ba53b0d9-02d3-4ae5-8071-40f4450a034a', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', '6b02950e-a0a3-d28b-8d9f-c09ece132eff', '485f0fe7-be06-a1a3-da21-90f6a7f598d5', 'SubAdmin', 1, '2018-04-05 13:47:27', '2018-04-05 13:47:27', NULL),
('2', '2', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '1e9343c9-a439-e64a-25bd-a596e44580b4', 'CompanyAdmin', 1, '2017-08-04 12:37:59', '2017-07-31 14:34:07', NULL),
('29e1cf74-2eb4-415e-a1c6-ab03122667f1', '7fcb2f69-db74-4aed-8739-05290f8f44c5', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '689b5cf5-9e25-404e-9768-fcc494830c82', 'SubAdmin', 1, '2017-09-20 06:16:10', '2017-10-16 13:08:01', NULL),
('2acd2d04-7778-4674-a195-34831333f0f4', 'f1e5d8b4-8936-4a01-8db8-527fdde78b58', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '09d7db0d-78e3-a25e-1029-e1e6e690af2d', 'Member', 1, '2018-06-04 14:36:08', '2018-06-04 14:36:08', NULL),
('2b4124ac-d916-4e9a-a0b3-265e7cdf869b', 'e6da086e-d056-4b8e-a808-8c851829f842', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '1e9343c9-a439-e64a-25bd-a596e44580b4', 'SubAdmin', 1, '2018-02-27 09:08:49', '2018-02-27 09:09:27', NULL),
('2f9d95c4-1765-4fc9-8733-a14bd73689db', '8d1c0bbb-49ea-4a56-a979-84110638a976', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', '6b02950e-a0a3-d28b-8d9f-c09ece132eff', '1f057520-af2b-ad68-57d3-d0a82c959743', 'SubAdmin', 1, '2018-06-13 06:57:12', '2018-06-13 06:57:12', NULL),
('32dc53af-e21c-4fa4-bf99-ffcec79af317', '28ff4110-3a78-47d1-8f75-4d63b2dd4835', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '1e9343c9-a439-e64a-25bd-a596e44580b4', 'Member', 1, '2017-09-12 11:43:29', '2017-10-03 06:52:16', NULL),
('35548454-711a-40f4-bcc0-69fa6009673e', '41b2c0c0-298e-4c17-a87a-c0b4b163029a', 'dd5d10b1-3965-464b-9c14-8a01f61dfc0b', '0cf13028-11e0-8e25-0d8e-57c045155250', '', 'SubAdmin', 1, '2017-08-09 06:26:14', '2017-09-27 13:42:59', NULL),
('4cac744b-bec1-470d-899c-da88a90ee10a', '5d6383d1-0484-453b-9484-48eb339578b8', 'dd5d10b1-3965-464b-9c14-8a01f61dfc0b', '0cf13028-11e0-8e25-0d8e-57c045155250', '1ce5d59b-6f41-0eb5-9b65-c72dab29bf04', 'CompanyAdmin', 1, '2017-07-18 18:21:46', '2017-07-31 14:34:07', NULL),
('4deac42d-a7c4-45e1-aa83-53a848c4be49', '7eb9cc5d-cfef-4cd9-9fe5-c5eb5a7479b8', 'dd5d10b1-3965-464b-9c14-8a01f61dfc0b', '0cf13028-11e0-8e25-0d8e-57c045155250', '', 'Member', 1, '2017-08-04 14:01:21', '2017-08-10 07:15:40', NULL),
('4f212fb1-0b87-488c-b1ce-f69e2c096915', '432b2d9f-0a97-4373-93c3-a737a3b01a6d', 'dd5d10b1-3965-464b-9c14-8a01f61dfc0b', '86cbe3a6-a197-03b8-2f9b-c329802478a2', 'b1a69a0f-7f5a-e17d-7785-fcbee1213a8c', 'Member', 1, '2017-10-16 12:47:14', '2017-11-17 11:01:12', NULL),
('5297c26b-a987-4972-a8d5-32865b88b407', 'e7ef10e8-7442-47ab-bd49-ca3b12c608d5', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', 'de3ad9ad-4fe7-5cad-58dd-bfe0b620f5a0', 'Member', 1, '2017-10-26 12:24:53', '2017-10-26 12:24:53', NULL),
('56943fb6-b0e3-4fdf-8200-657e772e65ad', 'ce769116-2158-4c71-86b5-81501fb11a0f', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '09d7db0d-78e3-a25e-1029-e1e6e690af2d', 'Member', 1, '2018-06-04 14:31:37', '2018-06-04 14:31:37', NULL),
('5dfa24c8-d6e6-4920-a992-50df638ec88e', '040a267e-78ca-4b14-890c-db0660f8191b', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '09d7db0d-78e3-a25e-1029-e1e6e690af2d', 'Member', 1, '2018-06-04 15:13:43', '2018-06-04 15:13:43', NULL),
('5e209ad1-cc14-4263-982c-22e9188aa2a4', '51549872-eee0-4119-9c0e-1f7226d1001b', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '1e9343c9-a439-e64a-25bd-a596e44580b4', 'Member', 1, '2017-11-14 05:45:46', '2017-12-04 09:18:06', NULL),
('614bfd3f-d80d-4270-aa5f-246255031f9d', 'aced82d6-bf90-4f42-a9a0-04b00ec5d59b', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '09d7db0d-78e3-a25e-1029-e1e6e690af2d', 'Member', 1, '2018-06-04 14:34:06', '2018-06-04 14:34:06', NULL),
('62fc0479-6c8b-429d-9dd8-ddb7f90fc9ab', '4063e5cc-54f0-45fc-ae6d-540e98a57775', 'dd5d10b1-3965-464b-9c14-8a01f61dfc0b', '86cbe3a6-a197-03b8-2f9b-c329802478a2', 'e1e5936a-89a7-d04c-1c59-a235554c88e5', 'Member', 1, '2017-10-12 07:01:42', '2017-10-23 11:02:23', NULL),
('63e126da-4715-4b98-af2b-5c0ef710bb84', 'd244dd03-eaeb-4d0a-88a0-9e9b2212585a', 'dd5d10b1-3965-464b-9c14-8a01f61dfc0b', '0cf13028-11e0-8e25-0d8e-57c045155250', '', 'Member', 1, '2017-08-03 13:49:38', '2017-08-10 07:16:38', NULL),
('667d976b-521d-4e1b-b15c-9c70525f66a8', '394012cb-2897-4c8c-923f-22349a2a0fd9', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '1e9343c9-a439-e64a-25bd-a596e44580b4', 'Member', 1, '2017-09-12 11:45:18', '2017-10-03 06:53:16', NULL),
('68c2c0bf-ed3f-4029-a2a0-d8219069f6f2', '2afc267f-250d-43f2-a30f-9b09715fad87', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', 'ceaa9447-0562-9a62-e980-ff09102cfd1a', 'Member', 1, '2017-09-12 11:37:03', '2017-10-03 06:51:52', NULL),
('6e3758a0-6090-43a4-9f7a-dd1e2c9d97d2', '49cb25f0-8c9f-47a1-b1d6-a378dd1d2af6', 'dd5d10b1-3965-464b-9c14-8a01f61dfc0b', 'f29d599d-4f91-c6a3-67b4-aac6c362aac6', '', 'SubAdmin', 1, '2017-11-23 08:39:26', '2017-11-23 08:39:26', NULL),
('6ea018f6-a751-4d8c-a159-d54a7291fe75', 'd281ca2c-9ce4-4347-81a1-766ac177eed3', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '09d7db0d-78e3-a25e-1029-e1e6e690af2d', 'Member', 1, '2018-03-28 16:04:47', '2017-07-31 09:04:07', NULL),
('6fcb61de-f28b-49fb-a7a3-f6605c35c80d', '9a822cd3-a4d2-4a9d-82e9-6b49ef5f6eec', 'dd5d10b1-3965-464b-9c14-8a01f61dfc0b', '86cbe3a6-a197-03b8-2f9b-c329802478a2', 'e1e5936a-89a7-d04c-1c59-a235554c88e5', 'Member', 1, '2017-10-17 05:12:16', '2017-10-17 05:12:16', NULL),
('73043dd0-8483-4345-933f-571e48d3945b', 'dfd39239-761c-41ff-863f-e953b867aac0', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '1e9343c9-a439-e64a-25bd-a596e44580b4', 'SubAdmin', 1, '2018-02-27 09:49:04', '2018-02-27 09:49:04', NULL),
('7655eb2a-a7aa-4278-925e-e091b41a0330', 'fda1070d-9d6d-4b59-b336-6e4ca75bd3e3', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', 'de3ad9ad-4fe7-5cad-58dd-bfe0b620f5a0', 'Member', 1, '2017-09-12 11:30:04', '2017-09-13 14:09:25', NULL),
('77178973-3c35-4c51-9a36-c8f5dab8ee41', 'c2821dab-e3ce-45f1-b9d9-a8e1ef193074', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '09d7db0d-78e3-a25e-1029-e1e6e690af2d', 'Member', 1, '2018-04-05 21:40:32', '2018-06-05 14:57:45', NULL),
('817a4e4e-3950-48ba-8d26-7a12c6e3c956', '1d9a1841-cde5-47d3-a84d-3ba28700cdb8', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '09d7db0d-78e3-a25e-1029-e1e6e690af2d', 'Member', 1, '2018-06-04 15:19:07', '2018-06-04 15:19:07', NULL),
('856e8a4d-6fd1-4c55-ba15-2218fb1f9c92', '3090b123-ec16-43a0-a4e4-f9facccd72e4', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '09d7db0d-78e3-a25e-1029-e1e6e690af2d', 'Member', 1, '2018-06-04 15:14:10', '2017-07-31 14:34:07', NULL),
('88efecc8-e12a-4d2a-bc9c-095c23be96e2', '5370d6af-f333-4a30-ab36-2ed4354a6a9d', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '09d7db0d-78e3-a25e-1029-e1e6e690af2d', 'Member', 1, '2018-06-04 15:19:35', '2018-06-04 15:19:35', NULL),
('89a78249-324d-49ef-82f0-0b52b2190241', '94572c71-5220-40eb-8120-29084249ed7f', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', 'de3ad9ad-4fe7-5cad-58dd-bfe0b620f5a0', 'Member', 1, '2017-09-12 11:33:42', '2017-09-13 14:06:39', NULL),
('8de61c49-4d3a-4064-8157-c53e651f89fb', '00d34504-225d-4ab4-8b87-c563961e3015', 'dd5d10b1-3965-464b-9c14-8a01f61dfc0b', '86cbe3a6-a197-03b8-2f9b-c329802478a2', 'b1a69a0f-7f5a-e17d-7785-fcbee1213a8c', 'Member', 1, '2017-10-09 08:56:21', '2017-10-11 12:51:02', NULL),
('9158efb6-7835-4ea2-866a-61c26cd90677', 'afa26bb8-8228-42ce-bbe9-2182ca553850', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '1e9343c9-a439-e64a-25bd-a596e44580b4', 'Member', 1, '2018-02-27 09:14:24', '2018-02-27 09:14:24', NULL),
('95f444b7-51e1-4579-b948-f41985c3ee4f', '89872926-8fe4-4f85-88cc-7df6d5521ffe', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', 'ceaa9447-0562-9a62-e980-ff09102cfd1a', 'Member', 1, '2017-10-04 05:34:45', '2017-10-04 05:34:45', NULL),
('a302b2e9-60f2-43ce-b1d5-76ec30937ef8', 'ec8a2c58-5670-4af6-9bd8-d5343c098dd3', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '09d7db0d-78e3-a25e-1029-e1e6e690af2d', 'Member', 1, '2018-06-04 14:36:36', '2018-06-04 14:36:36', NULL),
('a437519f-0adf-40eb-8901-41d278e2d971', '4caa46c4-b140-4e12-adc3-24c5421791d1', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', 'ceaa9447-0562-9a62-e980-ff09102cfd1a', 'Member', 1, '2017-09-27 11:54:27', '2017-10-04 05:27:50', NULL),
('a5993951-1cd8-4ad0-9580-6f254f910834', 'e54a0d41-634e-4142-8573-f9526bae16a1', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '1e9343c9-a439-e64a-25bd-a596e44580b4', 'Member', 1, '2018-02-27 11:56:15', '2018-02-27 11:56:15', NULL),
('aa1c59f6-a8b0-4a74-863b-641b56d3e502', 'df3e04cd-28a4-48a2-b311-28c61581500d', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', 'de3ad9ad-4fe7-5cad-58dd-bfe0b620f5a0', 'Member', 1, '2017-09-12 11:38:39', '2017-10-03 06:55:00', NULL),
('ade7d388-4e5f-4bcd-8996-ec31efc12046', '93f8a9c9-3b6a-4c62-95b4-ec2a19340a5b', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '689b5cf5-9e25-404e-9768-fcc494830c82', 'Member', 1, '2017-09-20 06:30:12', '2017-09-20 06:30:12', NULL),
('afea8100-3170-4778-8d18-3d07adf66795', 'ecf92495-2018-4b7c-90d7-89e5a81a2a18', 'dd5d10b1-3965-464b-9c14-8a01f61dfc0b', '86cbe3a6-a197-03b8-2f9b-c329802478a2', 'e1e5936a-89a7-d04c-1c59-a235554c88e5', 'Member', 1, '2017-10-17 13:46:22', '2017-10-17 13:46:22', NULL),
('b0e1f46b-737a-4285-a9f9-ad3138c35f47', '35459e65-9aa6-4d97-b10d-1dc4796ffd90', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '43e75ed0-b7b6-b34b-7cee-9bb4199cf4fd', 'SubAdmin', 1, '2018-02-28 05:06:33', '2017-07-31 14:34:07', NULL),
('b17b42e2-2b12-4076-8f18-58ad7a670ca4', '901d5ec1-97fe-4ca7-93ea-eea383f9c98e', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '09d7db0d-78e3-a25e-1029-e1e6e690af2d', 'SubAdmin', 1, '2018-06-04 14:34:56', '2017-07-31 14:34:07', NULL),
('b49863df-b47c-4b92-90d2-017090688af9', 'bb855a43-8dba-4462-aca7-de4874b1ef90', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '1e9343c9-a439-e64a-25bd-a596e44580b4', 'Member', 1, '2018-02-27 09:13:04', '2018-02-27 09:13:04', NULL),
('b5a34eb5-4d61-4638-b941-ff2b87b92958', 'eb7d094a-36d0-4a0e-b665-f80efebd13c7', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '1e9343c9-a439-e64a-25bd-a596e44580b4', 'Member', 1, '2018-02-28 05:07:28', '2018-03-01 06:37:27', NULL),
('b657842e-3322-4446-9324-e7389f687f62', 'f0fbd7ef-b837-4990-a1d1-e507b6a632e3', 'dd5d10b1-3965-464b-9c14-8a01f61dfc0b', '86cbe3a6-a197-03b8-2f9b-c329802478a2', 'b1a69a0f-7f5a-e17d-7785-fcbee1213a8c', 'Member', 1, '2017-10-27 10:06:44', '2017-10-30 13:00:49', NULL),
('bcd1f948-6e3c-4ba9-9179-70cad6d73917', '7d0f642c-8e2d-4736-9e1d-658508529150', 'dd5d10b1-3965-464b-9c14-8a01f61dfc0b', '86cbe3a6-a197-03b8-2f9b-c329802478a2', 'b1a69a0f-7f5a-e17d-7785-fcbee1213a8c', 'SubAdmin', 1, '2017-09-12 13:05:22', '2017-07-31 14:34:07', NULL),
('c236719d-14fd-475c-96a8-3c030450ce16', 'd32c4906-be97-4464-a61e-6ac89396613a', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '689b5cf5-9e25-404e-9768-fcc494830c82', 'SubAdmin', 1, '2017-10-16 13:09:49', '2017-10-16 13:09:49', NULL),
('c2a8d2a2-40f8-4f90-9c54-27786102b1f8', 'fa625d3b-5d10-45bf-b207-a5056df9c05c', 'dd5d10b1-3965-464b-9c14-8a01f61dfc0b', '781c950d-c5ae-4295-ac52-c6bced1a6764', '', 'SubAdmin', 1, '2017-10-11 13:03:34', '2017-10-11 13:10:57', NULL),
('c654dc03-16bb-4369-aa49-f2ee1f0e809a', '4e241ed0-814a-4607-a15c-0ed286a6fedf', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', 'de3ad9ad-4fe7-5cad-58dd-bfe0b620f5a0', 'Member', 1, '2017-09-12 11:40:42', '2017-09-13 14:06:30', NULL),
('cd9763de-654a-4ae6-a388-f2e608e10fd7', 'c54156a1-5847-4c81-b483-d41ad48f3c02', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '43e75ed0-b7b6-b34b-7cee-9bb4199cf4fd', 'Member', 1, '2018-03-16 07:12:51', '2018-03-16 07:16:59', NULL),
('ce427239-a6c2-4deb-b3fe-130814ef1529', 'aa37cdb1-f2ba-4843-bf91-e99a1ed00535', 'dd5d10b1-3965-464b-9c14-8a01f61dfc0b', '86cbe3a6-a197-03b8-2f9b-c329802478a2', 'b1a69a0f-7f5a-e17d-7785-fcbee1213a8c', 'SubAdmin', 1, '2017-10-09 08:49:49', '2017-10-16 10:16:25', NULL),
('cf200cc3-b2ed-45c6-a613-df67bd94f383', 'f8322e9a-8555-4193-a9e8-e2286945905e', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '689b5cf5-9e25-404e-9768-fcc494830c82', 'Member', 1, '2017-09-12 11:39:38', '2017-09-13 14:08:11', NULL),
('d1a3f49e-f7c4-48f7-a4fb-4a2fddf63fda', 'cb5687dd-fd11-45b2-97a8-4d1b588459e1', 'dd5d10b1-3965-464b-9c14-8a01f61dfc0b', '86cbe3a6-a197-03b8-2f9b-c329802478a2', 'b1a69a0f-7f5a-e17d-7785-fcbee1213a8c', 'SubAdmin', 1, '2017-09-06 05:42:46', '2017-09-12 09:25:04', NULL),
('d2919691-ea28-4151-ac6a-37ac32c90467', '82ff570e-1bdf-457d-89da-da0d152348b9', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '09d7db0d-78e3-a25e-1029-e1e6e690af2d', 'Member', 1, '2018-06-04 14:32:50', '2018-06-04 14:32:50', NULL),
('d6799ecb-c76a-4485-8ac5-9dfd68bcb1e8', '79551bf0-426f-49ee-866d-77091cbf6bfd', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', 'ceaa9447-0562-9a62-e980-ff09102cfd1a', 'Member', 1, '2017-10-03 06:49:25', '2017-10-03 06:49:25', NULL),
('d87bd289-2445-41cd-83bf-1251d8860ee5', 'bf14f166-60a4-4326-965e-091638431313', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', '6b02950e-a0a3-d28b-8d9f-c09ece132eff', 'aafaaf9e-32c9-1f93-3adf-3112fc0d61f1', 'SubAdmin', 1, '2018-03-01 06:07:07', '2018-03-14 08:45:21', NULL),
('da817f79-8d35-430f-b159-799bb8762ab1', '8d65dd2f-21fa-4887-a1d1-04aad4120fca', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '09d7db0d-78e3-a25e-1029-e1e6e690af2d', 'Member', 1, '2018-06-05 14:58:53', '2018-06-05 14:58:53', NULL),
('dce2b28a-ab0c-4314-9735-f99cb368486e', 'a4807f87-b290-463e-8ab4-073a626e0f16', 'dd5d10b1-3965-464b-9c14-8a01f61dfc0b', '86cbe3a6-a197-03b8-2f9b-c329802478a2', 'b1a69a0f-7f5a-e17d-7785-fcbee1213a8c', 'Member', 1, '2017-08-24 06:48:33', '2017-10-11 07:23:25', NULL),
('dd7e0cbc-c43a-418e-a52b-9526fdefedb5', '6cfa0f6c-5d33-4ad5-81d6-4c1cfedf1864', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '1e9343c9-a439-e64a-25bd-a596e44580b4', 'Member', 1, '2018-02-28 09:13:16', '2018-06-20 12:24:48', NULL),
('ddd8efb6-55c4-ggb0-ggb3-5h3fd292e299', 'gg667c4e-4g16-56b4-33b0-hh73e69e3eb3', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '1e9343c9-a439-e64a-25bd-a596e44580b4', 'CompanyAdmin', 1, '2018-02-08 13:19:20', '2017-07-31 09:04:07', NULL),
('de7885aa-4992-4f93-b5ef-ad2395b86d3c', '9aad49b1-b5d6-4bb9-9973-75dddbf41ed5', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', 'de3ad9ad-4fe7-5cad-58dd-bfe0b620f5a0', 'Member', 1, '2017-09-12 11:41:28', '2017-09-13 14:06:49', NULL),
('deb92547-a86d-46a3-85c9-861edceb9ce0', '5f457d84-c937-4880-9dbf-31c3269951d1', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '09d7db0d-78e3-a25e-1029-e1e6e690af2d', 'Member', 1, '2018-06-04 14:32:16', '2018-06-04 14:32:16', NULL),
('e468fb42-943a-49f6-8bb0-a937eff14484', '31e439a6-4241-4ea3-b687-c60e3bf5c90c', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '1e9343c9-a439-e64a-25bd-a596e44580b4', 'Member', 1, '2017-10-03 06:59:06', '2017-10-03 06:59:06', NULL),
('e8823f3d-9605-45ff-b989-8bfa882ee83b', 'b8667c4e-e216-49b4-84b0-9a73e69e3eb3', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', 'ceaa9447-0562-9a62-e980-ff09102cfd1a', 'Member', 1, '2017-09-12 11:34:47', '2017-09-13 14:07:08', NULL),
('ed12880a-11ce-4cd6-bfd3-9c62ccbee86c', 'de9a1c49-0411-44f4-b19e-1996fe81ce7b', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', 'de3ad9ad-4fe7-5cad-58dd-bfe0b620f5a0', 'Member', 1, '2017-09-12 11:32:23', '2017-10-03 06:54:44', NULL),
('f031c96b-4a9d-4ffc-96b9-f0b12254eff5', '10c7cc3d-978c-4bda-91bd-a1c448ea1baa', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '09d7db0d-78e3-a25e-1029-e1e6e690af2d', 'Member', 1, '2018-06-04 15:13:07', '2018-06-04 15:13:07', NULL),
('f15bd049-161e-4608-b5f3-8375cd442dee', '3c1ebd8e-64d7-4526-add2-80d5d80ebbdb', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '689b5cf5-9e25-404e-9768-fcc494830c82', 'SubAdmin', 1, '2017-09-12 11:51:11', '2017-09-14 06:32:36', NULL),
('fa466dbf-f194-4955-842c-6022c8f443c1', 'fd71a74e-6161-4f99-9c90-f7e1cf51f874', '1', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '1e9343c9-a439-e64a-25bd-a596e44580b4', 'Member', 1, '2017-09-12 11:44:24', '2017-09-13 14:08:49', NULL),
('fd1fbe13-1eac-404b-b76b-9136ec10d641', '3676d195-0bd7-47d9-8b1d-1a840809d017', 'gg5d10b1-67hh-gt4b-53g4-rf01f61dfc0b', 'd411592a-a4a9-8519-649e-5f2ad52356ce', '09d7db0d-78e3-a25e-1029-e1e6e690af2d', 'Member', 1, '2018-06-04 15:12:38', '2018-06-04 15:12:38', NULL),
('fdd8efb6-e8c4-45b0-adb3-b83fd292e299', '9622c8fa-a217-42c4-8477-7149594aa15a', 'dd5d10b1-3965-464b-9c14-8a01f61dfc0b', '0cf13028-11e0-8e25-0d8e-57c045155250', '', 'CompanyAdmin', 1, '2017-08-04 12:37:59', '2017-08-04 12:38:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `so_duration_master`
--

CREATE TABLE IF NOT EXISTS `so_duration_master` (
  `duration_id` char(36) NOT NULL,
  `duration_title` varchar(50) NOT NULL,
  `duration_month` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`duration_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `so_duration_master`
--

INSERT INTO `so_duration_master` (`duration_id`, `duration_title`, `duration_month`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
('1', '1 Month', 1, 1, '1986-07-01 00:00:00', '1986-07-01 00:00:00', NULL),
('2', '3 Month', 3, 1, '1986-07-01 00:00:00', '1986-07-01 00:00:00', NULL),
('3', '6 Month', 6, 1, '1986-07-01 00:00:00', '1986-07-01 00:00:00', NULL),
('4', '1 Year', 12, 1, '1986-07-01 00:00:00', '1986-07-01 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `so_feature_duration_prices`
--

CREATE TABLE IF NOT EXISTS `so_feature_duration_prices` (
  `price_id` char(36) NOT NULL,
  `duration_id` char(36) NOT NULL,
  `feature_id` char(36) NOT NULL,
  `price` double(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`price_id`),
  KEY `duration_id` (`duration_id`),
  KEY `feature_id` (`feature_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `so_feature_master`
--

CREATE TABLE IF NOT EXISTS `so_feature_master` (
  `feature_id` char(36) NOT NULL,
  `feature_title` varchar(50) NOT NULL,
  `feature_slug` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`feature_id`),
  KEY `feature_slug` (`feature_slug`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `so_feature_master`
--

INSERT INTO `so_feature_master` (`feature_id`, `feature_title`, `feature_slug`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
('1', 'Amenities', 'amenities', 1, '1986-07-01 00:00:00', '1986-07-01 00:00:00', NULL),
('2', 'Issue reporting', 'issue-reporting', 1, '1986-07-01 00:00:00', '1986-07-01 00:00:00', NULL),
('3', 'Meeting services (e.g. catering)', 'meeting-services', 1, '1986-07-01 00:00:00', '1986-07-01 00:00:00', NULL),
('4', 'Require admin for booking', 'require-admin-for-booking', 1, '1986-07-01 00:00:00', '1986-07-01 00:00:00', NULL),
('5', 'Indoor wayfinding', 'indoor-wayfinding', 1, '1986-07-01 00:00:00', '1986-07-01 00:00:00', NULL),
('6', 'SAML single sign-on', 'saml-single-sign-on', 1, '1986-07-01 00:00:00', '1986-07-01 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `so_plans`
--

CREATE TABLE IF NOT EXISTS `so_plans` (
  `plan_id` char(36) NOT NULL,
  `plan_name` varchar(255) NOT NULL,
  `plan_price` double NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`plan_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `so_plans`
--

INSERT INTO `so_plans` (`plan_id`, `plan_name`, `plan_price`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
('00000000-0000-0000-0000-000000000001', 'Basic', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `so_plan_details`
--

CREATE TABLE IF NOT EXISTS `so_plan_details` (
  `plan_detail_id` char(36) NOT NULL,
  `plan_id` char(36) NOT NULL,
  `no_of_employee` int(12) NOT NULL COMMENT '-1 for Unlimited',
  `no_of_space` int(12) NOT NULL COMMENT '-1 for Unlimited',
  `feature_id` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`plan_detail_id`),
  KEY `plan_id` (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `so_plan_details`
--

INSERT INTO `so_plan_details` (`plan_detail_id`, `plan_id`, `no_of_employee`, `no_of_space`, `feature_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
('bdf0a9ed-66f0-11e7-8c2a-eca86bf32a81', '00000000-0000-0000-0000-000000000001', -1, -1, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `so_plan_duration_price`
--

CREATE TABLE IF NOT EXISTS `so_plan_duration_price` (
  `plan_duration_id` char(36) NOT NULL,
  `plan_id` char(36) NOT NULL,
  `duration_id` char(36) NOT NULL,
  `price` double(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`plan_duration_id`),
  KEY `plan_id` (`plan_id`),
  KEY `duration_id` (`duration_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `so_users`
--

CREATE TABLE IF NOT EXISTS `so_users` (
  `user_id` char(36) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `profile_picture` varchar(50) DEFAULT NULL,
  `timezone` varchar(50) NOT NULL,
  `forgotToken` varchar(255) DEFAULT NULL,
  `time_difference` varchar(10) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `status` (`status`),
  KEY `email_2` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `so_users`
--

INSERT INTO `so_users` (`user_id`, `first_name`, `last_name`, `email`, `password`, `phone_number`, `profile_picture`, `timezone`, `forgotToken`, `time_difference`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
('00d34504-225d-4ab4-8b87-c563961e3015', 'Pradip', 'Darji', 'pradip.darji@softwebsolutions.com', 'a829fb973de3eeb580337362f8ebebfae6710d3ac763f366cb78c806881b63300a295e10557b4186f7300178936cf6fde4dd397a5a9f959df0a7857b8bd40ad5', '8789897988', '2f4b8fb9-bd29-3416-29c4-0466828a7ede.jpg', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-10-09 08:56:21', '2017-10-11 13:12:30', '2017-10-11 13:12:30'),
('040a267e-78ca-4b14-890c-db0660f8191b', 'Dhawal', 'Maharaja', 'dhawal.maharaja@softwebsolutions.com', '607029fd55dea6d1232b12291e488fe131de259c68389d945f7b5c9b59a5d3b0c7624deebf642034aa0d4d3752793ce0c452b65aa6b51234dcc9ae4d8a0b5fe6', '1234567890', '', 'America/Chicago', NULL, '-05:00', 1, '2018-06-04 15:13:43', '2018-06-04 15:13:43', NULL),
('1', 'admin', 'admin', 'admin@admin.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '1111111111', 'cd971f53-5388-bc86-9443-4b25f4f180c2.png', 'America/Denver', NULL, '+06:00', 1, '2017-07-19 11:46:24', '2017-08-01 08:08:09', NULL),
('10c7cc3d-978c-4bda-91bd-a1c448ea1baa', 'Amit', 'Sheth', 'amit.sheth@softwebsolutions.com', '607029fd55dea6d1232b12291e488fe131de259c68389d945f7b5c9b59a5d3b0c7624deebf642034aa0d4d3752793ce0c452b65aa6b51234dcc9ae4d8a0b5fe6', '1234567890', '', 'America/Chicago', NULL, '-05:00', 1, '2018-06-04 15:13:07', '2018-06-04 15:13:07', NULL),
('1d9a1841-cde5-47d3-a84d-3ba28700cdb8', 'Jayesh', 'Tankariya', 'jayesh.tankariya@softwebsolutions.com', '607029fd55dea6d1232b12291e488fe131de259c68389d945f7b5c9b59a5d3b0c7624deebf642034aa0d4d3752793ce0c452b65aa6b51234dcc9ae4d8a0b5fe6', '1234567890', '', 'America/Chicago', NULL, '-05:00', 1, '2018-06-04 15:19:07', '2018-06-04 15:19:07', NULL),
('2', 'Keyur', 'Patel', 'keyur@softwebsolutions.com', 'c41cd89d649864bbf890fd389f335822abdb3d62db1ea707467bcd80c50ee37fe598783112f73319123c5306702736a8befe13b47104842ece265d5439de624f', '40373760', 'ede6451f-3d91-cedf-4ed1-98d7a900b70a.png', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-09-06 05:42:46', '2017-09-20 11:30:29', NULL),
('201464ef-6896-44c6-b164-81858d5683b9', 'Ambrish', 'Dave', 'ambrish@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '1231231230', '', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-09-12 09:45:54', '2017-09-20 14:46:35', NULL),
('28ff4110-3a78-47d1-8f75-4d63b2dd4835', 'Hitesh N.', 'Patel', 'hitesh@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '1231231230', '', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-09-12 11:43:29', '2017-10-03 06:52:16', NULL),
('2afc267f-250d-43f2-a30f-9b09715fad87', 'Imran', 'Bhadelia', 'imran@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '1231231230', '', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-09-12 11:37:03', '2017-10-03 06:51:52', NULL),
('3090b123-ec16-43a0-a4e4-f9facccd72e4', 'Dhaval', 'Sahija', 'dhaval.sahija@softwebsolutions.com', '607029fd55dea6d1232b12291e488fe131de259c68389d945f7b5c9b59a5d3b0c7624deebf642034aa0d4d3752793ce0c452b65aa6b51234dcc9ae4d8a0b5fe6', '1234567890', '', 'America/Chicago', NULL, '-05:00', 1, '2018-06-04 15:14:10', '2018-06-22 14:59:26', NULL),
('31e439a6-4241-4ea3-b687-c60e3bf5c90c', 'jitendra', 'Sananse', 'jitendras@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '9898528199', '', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-10-03 06:59:06', '2017-10-03 06:59:06', NULL),
('35459e65-9aa6-4d97-b10d-1dc4796ffd90', 'Pradip', 'Darji', 'pradip.darji@softwebsolutions.com', 'a829fb973de3eeb580337362f8ebebfae6710d3ac763f366cb78c806881b63300a295e10557b4186f7300178936cf6fde4dd397a5a9f959df0a7857b8bd40ad5', '123456789', '58983870-612f-0fa9-d095-09d24688e4bf.png', 'Asia/Kolkata', NULL, '+05:30', 1, '2018-02-28 05:06:32', '2018-04-05 13:49:34', NULL),
('3676d195-0bd7-47d9-8b1d-1a840809d017', 'Ishit', 'Vohra', 'ishit@softwebsolutions.com', '607029fd55dea6d1232b12291e488fe131de259c68389d945f7b5c9b59a5d3b0c7624deebf642034aa0d4d3752793ce0c452b65aa6b51234dcc9ae4d8a0b5fe6', '1234567890', '', 'America/Chicago', NULL, '-05:00', 1, '2018-06-04 15:12:38', '2018-06-04 15:12:38', NULL),
('394012cb-2897-4c8c-923f-22349a2a0fd9', 'Sam', 'Peterson', 'sam.peterson@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '1231231230', '', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-09-12 11:45:18', '2017-10-03 06:53:16', NULL),
('3c1ebd8e-64d7-4526-add2-80d5d80ebbdb', 'Ashwin', 'Vadgama', 'ashwin.vadgama@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '1231231230', '', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-09-12 11:51:11', '2017-09-27 10:57:05', '2017-09-27 10:57:05'),
('4063e5cc-54f0-45fc-ae6d-540e98a57775', 'Nirav', 'Patel', 'iOS.softweb@gmail.com', 'a829fb973de3eeb580337362f8ebebfae6710d3ac763f366cb78c806881b63300a295e10557b4186f7300178936cf6fde4dd397a5a9f959df0a7857b8bd40ad5', '1234567897', '2c899ed1-00d7-c2b8-4add-aba3ff451611.png', 'America/Chicago', '', '-05:00', 1, '2017-10-12 07:01:42', '2017-10-23 11:02:23', NULL),
('41b2c0c0-298e-4c17-a87a-c0b4b163029a', 'Tarun', 'Varma', 'tarun1@softwebsolutions.com', 'c41cd89d649864bbf890fd389f335822abdb3d62db1ea707467bcd80c50ee37fe598783112f73319123c5306702736a8befe13b47104842ece265d5439de624f', '9898528199', '9e693e0a-87da-9edc-70d5-eaf55419e9a3.gif', 'Asia/Kolkata', 'b8f3a902780ca43adb946e57eeaa908b', '+05:30', 1, '2017-08-09 06:26:14', '2017-09-27 13:42:59', NULL),
('432b2d9f-0a97-4373-93c3-a737a3b01a6d', 'Umesh', 'Pandey', 'umesh.pandey@softwebsolutions.com', 'c41cd89d649864bbf890fd389f335822abdb3d62db1ea707467bcd80c50ee37fe598783112f73319123c5306702736a8befe13b47104842ece265d5439de624f', '123456798', 'c5276b52-50a6-3376-b8fb-8a4723d4ed7b.jpg', 'America/Chicago', NULL, '-05:00', 1, '2017-10-16 12:47:14', '2017-11-17 11:01:12', NULL),
('49cb25f0-8c9f-47a1-b1d6-a378dd1d2af6', 'Krunal', 'Patel', 'kpkrunal@gmail.com', '12afd3fe7028344764fcb3fa94215715fd90ff668a9d7d38f3150c1efa67f33b5affa3d0c9e082cff63d18460a07e3a8bcb42ea684a752f5eb05b740536aac27', '7043485358', '', 'America/Chicago', NULL, '-05:00', 1, '2017-11-23 08:39:26', '2017-11-23 08:39:26', NULL),
('4c266265-9b49-4318-af95-c7c958229ca0', 'Pragnesh', 'Patel', 'pragnesh.patel@softwebsolutions.com', 'a829fb973de3eeb580337362f8ebebfae6710d3ac763f366cb78c806881b63300a295e10557b4186f7300178936cf6fde4dd397a5a9f959df0a7857b8bd40ad5', '123456789', '23fcb77c-11cd-98c5-7ca5-40e6898fe5e0.jpg', 'America/Denver', NULL, '-06:00', 1, '2017-10-12 11:32:50', '2017-10-12 11:32:50', NULL),
('4caa46c4-b140-4e12-adc3-24c5421791d1', 'Sanjay', 'Dabhi', 'sanjay.dabhi@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '9898528199', '', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-09-27 11:54:27', '2017-10-04 05:27:50', NULL),
('4d4b4137-25b5-485f-b63c-012ed693c17a', 'Kaushal', 'Gandhi', 'kaushal@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '1231231230', '', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-09-12 11:42:25', '2017-10-03 06:53:30', NULL),
('4e241ed0-814a-4607-a15c-0ed286a6fedf', 'Amit R', 'Patel', 'amit@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '1231231230', '', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-09-12 11:40:42', '2017-09-13 14:06:30', NULL),
('4f5ac2a3-c67d-4e21-9401-c9979c4bee73', 'Ketan', 'Trentiya', 'ketan@softwebsolutions.com', 'c41cd89d649864bbf890fd389f335822abdb3d62db1ea707467bcd80c50ee37fe598783112f73319123c5306702736a8befe13b47104842ece265d5439de624f', '7046477277', '', 'America/Chicago', '8e45454bdbdcdbbf26f6979b879961be', '-05:00', 1, '2017-09-14 10:07:14', '2017-10-04 10:17:01', NULL),
('51549872-eee0-4119-9c0e-1f7226d1001b', 'QA', 'QA', 'qa@softwebsolutions.com', 'c41cd89d649864bbf890fd389f335822abdb3d62db1ea707467bcd80c50ee37fe598783112f73319123c5306702736a8befe13b47104842ece265d5439de624f', '1234567891', '', 'America/Chicago', NULL, '-05:00', 1, '2017-11-14 05:45:46', '2017-12-04 09:18:06', NULL),
('5370d6af-f333-4a30-ab36-2ed4354a6a9d', 'Shikha', 'Poddar', 'shikha.poddar@softwebsolutions.com', '607029fd55dea6d1232b12291e488fe131de259c68389d945f7b5c9b59a5d3b0c7624deebf642034aa0d4d3752793ce0c452b65aa6b51234dcc9ae4d8a0b5fe6', '1234567890', '', 'America/Chicago', NULL, '-05:00', 1, '2018-06-04 15:19:35', '2018-06-04 15:19:35', NULL),
('5d6383d1-0484-453b-9484-48eb339578b8', 'softweb', 'admin', 'softweb@admin.com', 'c41cd89d649864bbf890fd389f335822abdb3d62db1ea707467bcd80c50ee37fe598783112f73319123c5306702736a8befe13b47104842ece265d5439de624f', '9898528199', NULL, 'Asia/Kolkata', NULL, '+05:30', 1, '2017-07-19 10:51:46', '2017-10-04 07:03:24', NULL),
('5f457d84-c937-4880-9dbf-31c3269951d1', 'Priya', 'Vyas', 'priya@softwebsolutions.com', '607029fd55dea6d1232b12291e488fe131de259c68389d945f7b5c9b59a5d3b0c7624deebf642034aa0d4d3752793ce0c452b65aa6b51234dcc9ae4d8a0b5fe6', '1234567890', '', 'America/Chicago', NULL, '-05:00', 1, '2018-06-04 14:32:16', '2018-06-04 14:32:16', NULL),
('6c76fff7-6acc-4e9d-acee-7718047791d2', 'vijay', 'shaha', 'vijay@mailinator.com', 'a829fb973de3eeb580337362f8ebebfae6710d3ac763f366cb78c806881b63300a295e10557b4186f7300178936cf6fde4dd397a5a9f959df0a7857b8bd40ad5', '12346546', '535460b8-2bc4-2cc0-b47c-a113b3590ff3.jpg', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-10-17 12:37:56', '2017-10-17 12:37:56', NULL),
('6cfa0f6c-5d33-4ad5-81d6-4c1cfedf1864', 'jignesh', 'chitaliya', 'jcsoftweb@gmail.com', '577ee37f2a0922b4d0339f0b861491f229a3d8423ed7af4535c4d59b51cbf6f1f9422a7afa8da0f57c258baaf041a6ebf8e48ac7484f1a8038a56e3bb3ff79cc', '111123233', '880b1c39-dd3d-7da5-c932-ade6dff562a7.png', 'Asia/Kolkata', '7d5344d0ac98b89c0084b0fc6e63de61', '+05:30', 1, '2018-02-28 09:13:16', '2018-06-20 12:24:48', NULL),
('79551bf0-426f-49ee-866d-77091cbf6bfd', 'maksud', 'belim', 'maksud.belim@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '9898528199', '', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-10-03 06:49:25', '2017-10-03 06:49:25', NULL),
('7d0f642c-8e2d-4736-9e1d-658508529150', 'Deval', 'Patel', 'deval.patel@softwebsolutions.com', 'c41cd89d649864bbf890fd389f335822abdb3d62db1ea707467bcd80c50ee37fe598783112f73319123c5306702736a8befe13b47104842ece265d5439de624f', '1234567890', '', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-09-12 13:05:22', '2017-10-04 07:10:33', NULL),
('7fcb2f69-db74-4aed-8739-05290f8f44c5', 'Tarun', 'Varma', 'tarun@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '8200936692', '37c4539a-9114-5ba0-3c78-f82af65c6374.gif', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-09-20 06:16:10', '2017-10-16 13:08:01', NULL),
('82ff570e-1bdf-457d-89da-da0d152348b9', 'Vibhu', 'Bhutani', 'vibhu@softwebsolutions.com', '607029fd55dea6d1232b12291e488fe131de259c68389d945f7b5c9b59a5d3b0c7624deebf642034aa0d4d3752793ce0c452b65aa6b51234dcc9ae4d8a0b5fe6', '1234567890', '', 'America/Chicago', NULL, '-05:00', 1, '2018-06-04 14:32:50', '2018-06-04 14:32:50', NULL),
('89872926-8fe4-4f85-88cc-7df6d5521ffe', 'pankaj', 'patel', 'pankaj.patel@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '9898528199', '', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-10-04 05:34:45', '2017-10-04 05:34:45', NULL),
('8d1c0bbb-49ea-4a56-a979-84110638a976', 'foram', 'kantaria', 'foram.kantaria@softwebsolutions.com', 'f8a04a46be42e48662e60e15c31a56a875ca7ce8fd2b1e69ce25dac83a81a3f9399389003b2be90d02b92c07226489e47ac232749b693acd83656a80e64f5dfe', '9898989898', '', 'America/Chicago', NULL, '-05:00', 1, '2018-06-13 06:57:12', '2018-06-13 06:57:12', NULL),
('8d65dd2f-21fa-4887-a1d1-04aad4120fca', 'kaushik', 'Chauhan', 'kaushik@softwebsolutions.com', '607029fd55dea6d1232b12291e488fe131de259c68389d945f7b5c9b59a5d3b0c7624deebf642034aa0d4d3752793ce0c452b65aa6b51234dcc9ae4d8a0b5fe6', '1234567890', '', 'America/Chicago', NULL, '-05:00', 1, '2018-06-05 14:58:53', '2018-06-05 14:58:53', NULL),
('901d5ec1-97fe-4ca7-93ea-eea383f9c98e', 'Meagan', 'Dodds', 'meagan.dodds@softwebsolutions.com', '607029fd55dea6d1232b12291e488fe131de259c68389d945f7b5c9b59a5d3b0c7624deebf642034aa0d4d3752793ce0c452b65aa6b51234dcc9ae4d8a0b5fe6', '1234567890', '', 'America/Chicago', NULL, '-05:00', 1, '2018-06-04 14:34:56', '2018-06-11 21:22:33', NULL),
('91cca652-0d30-4862-b14a-fa46d973634f', 'Gary', 'Ramsey', 'gary.ramsey@softwebsolutions.com', '607029fd55dea6d1232b12291e488fe131de259c68389d945f7b5c9b59a5d3b0c7624deebf642034aa0d4d3752793ce0c452b65aa6b51234dcc9ae4d8a0b5fe6', '1234567890', '', 'America/Chicago', NULL, '-05:00', 1, '2018-06-04 14:35:38', '2018-06-04 14:35:38', NULL),
('93f8a9c9-3b6a-4c62-95b4-ec2a19340a5b', 'jignesh', 'Vagh', 'jignesh.vagh@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '9898528199', '', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-09-20 06:30:12', '2017-09-20 06:30:12', NULL),
('94572c71-5220-40eb-8120-29084249ed7f', 'Shivpalsinh', 'Jhala', 'shivpal@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '1231231230', '', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-09-12 11:33:42', '2017-09-13 14:06:39', NULL),
('9a822cd3-a4d2-4a9d-82e9-6b49ef5f6eec', 'Tejas', 'Patel', 'Tejas@mailinator.com', 'a829fb973de3eeb580337362f8ebebfae6710d3ac763f366cb78c806881b63300a295e10557b4186f7300178936cf6fde4dd397a5a9f959df0a7857b8bd40ad5', '12345678', '21c2869b-86d8-13ee-a8ff-c152fefeefda.jpg', 'America/Chicago', NULL, '-05:00', 1, '2017-10-17 05:12:16', '2017-10-23 12:00:29', '2017-10-23 12:00:29'),
('9aad49b1-b5d6-4bb9-9973-75dddbf41ed5', 'Ajaysinh', 'Mori', 'ajay@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '1231231230', '', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-09-12 11:41:28', '2017-09-13 14:06:49', NULL),
('a4807f87-b290-463e-8ab4-073a626e0f16', 'jignesh', 'chitaliya', 'jignesh.chitaliya@softwebsolutions.com', 'c41cd89d649864bbf890fd389f335822abdb3d62db1ea707467bcd80c50ee37fe598783112f73319123c5306702736a8befe13b47104842ece265d5439de624f', '9898528199', '46ce433f-c736-3e1e-3a5e-ded5881d34ec.png', 'Asia/Kolkata', 'f4292a0401724a514abb7363d45de1a7', '+05:30', 1, '2017-08-24 06:48:32', '2017-11-15 06:59:05', NULL),
('aa37cdb1-f2ba-4843-bf91-e99a1ed00535', 'Naimesh', 'Patel', 'naimesh.prajapati@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '9898528199', 'fd54aefe-e017-8088-6953-b2fe99f0a044.jpg', 'Asia/Kolkata', '324907361fb487a50584873c987e8db5', '+05:30', 1, '2017-10-09 08:49:49', '2017-10-30 11:41:19', NULL),
('aced82d6-bf90-4f42-a9a0-04b00ec5d59b', 'Prasad', 'Bhojak', 'prasad@softwebsolutions.com', '607029fd55dea6d1232b12291e488fe131de259c68389d945f7b5c9b59a5d3b0c7624deebf642034aa0d4d3752793ce0c452b65aa6b51234dcc9ae4d8a0b5fe6', '1234567890', '', 'America/Chicago', NULL, '-05:00', 1, '2018-06-04 14:34:06', '2018-06-04 14:34:06', NULL),
('afa26bb8-8228-42ce-bbe9-2182ca553850', 'Pradip', 'Darji', 'pradip.darji@mailinator.com', 'a829fb973de3eeb580337362f8ebebfae6710d3ac763f366cb78c806881b63300a295e10557b4186f7300178936cf6fde4dd397a5a9f959df0a7857b8bd40ad5', '1234567899', '79f86020-d890-5b5a-1fc2-698fd3030a94.jpg', 'America/Chicago', NULL, '-05:00', 1, '2018-02-27 09:14:23', '2018-02-27 09:15:05', '2018-02-27 09:15:05'),
('b8667c4e-e216-49b4-84b0-9a73e69e3eb3', 'Viren', 'Adiyecha', 'virendra@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '1231231230', '', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-09-12 11:34:47', '2017-09-13 14:07:08', NULL),
('ba53b0d9-02d3-4ae5-8071-40f4450a034a', 'foram', 'kantaria', 'prrgadip.darji@softwebsolutions.com', 'eae83a2266062575c28083d594b40d4b52315ab90d3bcc2782e2ffd295ec8d9ca842564e647058063057a5561749dcb04ecac7ec67895dbfbc72d678e811d4bf', '3453535', '8c253955-b064-ced4-bb97-03576bbfb442.jpeg', 'America/Los_Angeles', NULL, '-07:00', 1, '2018-04-05 13:47:26', '2018-04-05 13:47:38', '2018-04-05 13:47:38'),
('bb855a43-8dba-4462-aca7-de4874b1ef90', 'ss', 'ss', 'witac@hotmail.com', '0c3b4953eebe592df32b31e86747c1e3af39a244e420e67ef3d0e73665d60833edfc387e01bfc9c5afac4a8d99849f18f0e60783b9db6512228bdcc80e78f178', '432324324', '0c3a28a9-d1d0-df46-2f11-2a3041790259.jpg', 'Asia/Kolkata', NULL, '+05:30', 1, '2018-02-27 09:13:04', '2018-02-27 09:13:11', '2018-02-27 09:13:11'),
('bf14f166-60a4-4326-965e-091638431313', 'Jainik', 'Patel', 'Jainik@gmail.com', 'a829fb973de3eeb580337362f8ebebfae6710d3ac763f366cb78c806881b63300a295e10557b4186f7300178936cf6fde4dd397a5a9f959df0a7857b8bd40ad5', '789456621', '66b02717-50f4-db36-3b74-23270f052f05.jpg', 'America/Chicago', NULL, '-05:00', 0, '2018-03-01 06:07:07', '2018-03-15 11:26:00', NULL),
('c2821dab-e3ce-45f1-b9d9-a8e1ef193074', 'Dhaval', 'Barot', 'dhaval.barot@softwebsolutions.com', '607029fd55dea6d1232b12291e488fe131de259c68389d945f7b5c9b59a5d3b0c7624deebf642034aa0d4d3752793ce0c452b65aa6b51234dcc9ae4d8a0b5fe6', '2246007783', '', 'America/Chicago', NULL, '-05:00', 1, '2018-04-05 21:40:32', '2018-06-05 14:57:45', NULL),
('c54156a1-5847-4c81-b483-d41ad48f3c02', 'ravi', 'vora', 'testjc@mailinator.com', '577ee37f2a0922b4d0339f0b861491f229a3d8423ed7af4535c4d59b51cbf6f1f9422a7afa8da0f57c258baaf041a6ebf8e48ac7484f1a8038a56e3bb3ff79cc', '1234567889', '', 'America/Chicago', NULL, '-05:00', 1, '2018-03-16 07:12:50', '2018-03-16 07:16:59', NULL),
('cb5687dd-fd11-45b2-97a8-4d1b588459e1', 'ravi', 'vora', 'ravi.vora@softwebsolutions.com', 'c41cd89d649864bbf890fd389f335822abdb3d62db1ea707467bcd80c50ee37fe598783112f73319123c5306702736a8befe13b47104842ece265d5439de624f', '455454555', 'cb764c0f-747e-2469-d6b2-afd968d16d6a.jpeg', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-09-06 05:42:46', '2017-09-12 09:25:04', NULL),
('ce769116-2158-4c71-86b5-81501fb11a0f', 'Ripal', 'Vyas', 'ripal@softwebsolutions.com', '607029fd55dea6d1232b12291e488fe131de259c68389d945f7b5c9b59a5d3b0c7624deebf642034aa0d4d3752793ce0c452b65aa6b51234dcc9ae4d8a0b5fe6', '1234567890', '', 'America/Chicago', NULL, '-05:00', 1, '2018-06-04 14:31:37', '2018-06-04 14:31:37', NULL),
('d24129dd-d697-4353-81c5-4b7a9a6fccce', 'Bhavesh', 'Gohel', 'bhavesh@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '1231231230', '', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-09-12 11:31:16', '2017-10-04 07:00:24', NULL),
('d281ca2c-9ce4-4347-81a1-766ac177eed3', 'Amitkumar', 'Patel', 'amit.patel@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '4055887337', '0897bcef-b913-4a73-a84b-f8fdf9326507.png', 'America/Chicago', NULL, '-05:00', 1, '2018-03-28 16:04:47', '2018-07-09 12:29:17', NULL),
('d32c4906-be97-4464-a61e-6ac89396613a', 'ranjit', 'bhalgariya', 'ranjitsinh.bhalgariya@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '9898528199', '', 'America/Chicago', NULL, '-05:00', 1, '2017-10-16 13:09:49', '2017-10-16 13:09:49', NULL),
('de9a1c49-0411-44f4-b19e-1996fe81ce7b', 'Pragnesh', 'Patel', 'pragnesh@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '1231231230', '', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-09-12 11:32:23', '2017-10-03 06:54:44', NULL),
('df3e04cd-28a4-48a2-b311-28c61581500d', 'Jay', 'Parikh', 'jay@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '1231231230', '', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-09-12 11:38:39', '2017-10-03 06:55:00', NULL),
('dfd39239-761c-41ff-863f-e953b867aac0', 'Pradip', 'Darji', 'pradipdarji@softwebsolutions.com', 'c41cd89d649864bbf890fd389f335822abdb3d62db1ea707467bcd80c50ee37fe598783112f73319123c5306702736a8befe13b47104842ece265d5439de624f', '1234567890', 'cf46d4df-e506-8156-32fa-143baf0e13ea.jpg', 'America/Chicago', '', '-05:00', 1, '2018-02-27 09:49:04', '2018-02-27 09:49:10', '2018-02-27 09:49:10'),
('e54a0d41-634e-4142-8573-f9526bae16a1', 'Pradip', 'Darji', 'pradip.darji@softwebsolutions.com', 'c41cd89d649864bbf890fd389f335822abdb3d62db1ea707467bcd80c50ee37fe598783112f73319123c5306702736a8befe13b47104842ece265d5439de624f', '1234567890', '', 'America/Chicago', NULL, '-05:00', 1, '2018-02-27 11:56:15', '2018-02-27 11:56:21', '2018-02-27 11:56:21'),
('e6da086e-d056-4b8e-a808-8c851829f842', 'ryk', 'ona', 'rykona@gmail.com', 'c41cd89d649864bbf890fd389f335822abdb3d62db1ea707467bcd80c50ee37fe598783112f73319123c5306702736a8befe13b47104842ece265d5439de624f', '33356565', 'bac8bc1f-176e-9aef-8630-1979ce8a6674.jpg', 'Asia/Kolkata', NULL, '+05:30', 1, '2018-02-27 09:08:49', '2018-02-27 09:09:49', '2018-02-27 09:09:49'),
('e7ef10e8-7442-47ab-bd49-ca3b12c608d5', 'Ankit', 'Zaveri', 'ankit.zaveri@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '9427666828', '', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-10-26 12:24:53', '2017-10-26 12:24:53', NULL),
('eb7d094a-36d0-4a0e-b665-f80efebd13c7', 'Mausami', 'Parmar', 'mausami.parmar@softwebsolutions.com', 'a829fb973de3eeb580337362f8ebebfae6710d3ac763f366cb78c806881b63300a295e10557b4186f7300178936cf6fde4dd397a5a9f959df0a7857b8bd40ad5', '123456789', '6784beb8-3abc-7648-836f-8ed85313edbf.jpg', 'America/Chicago', NULL, '-05:00', 1, '2018-02-28 05:07:28', '2018-03-15 10:53:01', NULL),
('ec8a2c58-5670-4af6-9bd8-d5343c098dd3', 'Rajat', 'Modi', 'rajat.modi@softwebsolutions.com', '607029fd55dea6d1232b12291e488fe131de259c68389d945f7b5c9b59a5d3b0c7624deebf642034aa0d4d3752793ce0c452b65aa6b51234dcc9ae4d8a0b5fe6', '1234567890', '', 'America/Chicago', NULL, '-05:00', 1, '2018-06-04 14:36:36', '2018-06-04 14:36:36', NULL),
('ecf92495-2018-4b7c-90d7-89e5a81a2a18', 'Yuvraj', 'Signh', 'test@mailinator.com', 'a829fb973de3eeb580337362f8ebebfae6710d3ac763f366cb78c806881b63300a295e10557b4186f7300178936cf6fde4dd397a5a9f959df0a7857b8bd40ad5', '123456789', 'e71cb907-b7b3-15af-c090-18fcead01ead.jpg', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-10-17 13:46:22', '2017-10-17 13:46:22', NULL),
('f0fbd7ef-b837-4990-a1d1-e507b6a632e3', 'Pradip', 'Darji', 'pradip@mailinator.com', 'a829fb973de3eeb580337362f8ebebfae6710d3ac763f366cb78c806881b63300a295e10557b4186f7300178936cf6fde4dd397a5a9f959df0a7857b8bd40ad5', '7889787987', '87774505-ea92-a396-4ec6-197c0c0f6ff9.jpg', 'Asia/Kolkata', NULL, '+05:30', 0, '2017-10-27 10:06:44', '2017-10-30 13:00:49', NULL),
('f1e5d8b4-8936-4a01-8db8-527fdde78b58', 'Dhiren', 'Raval', 'dhiren.raval@softwebsolutions.com', '607029fd55dea6d1232b12291e488fe131de259c68389d945f7b5c9b59a5d3b0c7624deebf642034aa0d4d3752793ce0c452b65aa6b51234dcc9ae4d8a0b5fe6', '1234567890', '', 'America/Chicago', NULL, '-05:00', 1, '2018-06-04 14:36:08', '2018-06-04 14:36:08', NULL),
('f8322e9a-8555-4193-a9e8-e2286945905e', 'Nikhil', 'Solanki', 'nikhil.solanki@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '1231231230', '', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-09-12 11:39:38', '2017-09-13 14:08:11', NULL),
('fa625d3b-5d10-45bf-b207-a5056df9c05c', 'Niki', 'Shah', 'niki.shah@softwebsolutions.com', 'a829fb973de3eeb580337362f8ebebfae6710d3ac763f366cb78c806881b63300a295e10557b4186f7300178936cf6fde4dd397a5a9f959df0a7857b8bd40ad5', '1234567891', '15b7baba-38a0-466a-c07f-6194a1126f9d.jpg', 'America/Los_Angeles', NULL, '-07:00', 1, '2017-10-11 13:03:34', '2017-10-11 13:18:37', '2017-10-11 13:18:37'),
('fd71a74e-6161-4f99-9c90-f7e1cf51f874', 'Pooja', 'Thakker', 'pooja@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '1231231230', '', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-09-12 11:44:24', '2017-09-13 14:08:49', NULL),
('fda1070d-9d6d-4b59-b336-6e4ca75bd3e3', 'Dinesh', ' Padhiyar', 'dinesh@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '1231231230', '', 'Asia/Kolkata', NULL, '+05:30', 1, '2017-09-12 11:30:04', '2017-09-13 14:09:25', NULL),
('ff163270-3a94-4443-882f-e7fab31ca1af', 'Tony', 'Stark', 'tony@softwebsolutions.com', 'c41cd89d649864bbf890fd389f335822abdb3d62db1ea707467bcd80c50ee37fe598783112f73319123c5306702736a8befe13b47104842ece265d5439de624f', '1234567890', '', 'America/Chicago', NULL, '-05:00', 1, '2017-10-16 12:55:31', '2017-10-16 12:58:28', '2017-10-16 12:58:28'),
('gg667c4e-4g16-56b4-33b0-hh73e69e3eb3', 'Viral', 'Hirpara', 'mittal.bhatt@softwebsolutions.com', 'b9e1e1c7731c7529c071a4a58be4a7f0d87b56ff198b695812789920cf2370e6969fb49b1dd068bdc1fb1aa6b663903e80fef5c540b3eff9be5f20491ebcad7c', '1234567899', 'cbc06fc2-3eec-908d-23fc-73e9011c1ef2.png', 'America/Chicago', NULL, '-05:00', 1, '2018-02-08 13:16:12', '2018-07-19 14:16:04', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
