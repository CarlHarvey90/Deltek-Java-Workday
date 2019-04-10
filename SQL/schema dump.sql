-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: workdayprod2
-- ------------------------------------------------------
-- Server version	5.7.21-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `__log__`
--

DROP TABLE IF EXISTS `__log__`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__log__` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_version` int(11) NOT NULL DEFAULT '0',
  `to_version` int(11) NOT NULL DEFAULT '0',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(255) DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `__migration_path__`
--

DROP TABLE IF EXISTS `__migration_path__`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__migration_path__` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `schema_name` varchar(250) NOT NULL,
  `version` varchar(255) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2590 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `__migration_vars__`
--

DROP TABLE IF EXISTS `__migration_vars__`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__migration_vars__` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(255) NOT NULL DEFAULT '0',
  `migkey` varchar(255) NOT NULL,
  `migvalue` longtext NOT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `version_key` (`version`,`migkey`)
) ENGINE=InnoDB AUTO_INCREMENT=3316 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `__product_info__`
--

DROP TABLE IF EXISTS `__product_info__`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__product_info__` (
  `product_info_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_info_name` char(64) NOT NULL,
  `product_info_value` char(64) NOT NULL,
  `product_info_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_info_edited` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`product_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `__schema__`
--

DROP TABLE IF EXISTS `__schema__`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__schema__` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `schema_name` varchar(250) NOT NULL DEFAULT '',
  `migration_tag` varchar(250) NOT NULL DEFAULT '.',
  `version` int(11) NOT NULL DEFAULT '0',
  `tag_version` int(11) NOT NULL DEFAULT '0',
  `previous_version` int(11) NOT NULL DEFAULT '0',
  `last_migration_name` varchar(255) DEFAULT NULL,
  `last_migration_run_at` datetime DEFAULT NULL,
  `DBALTER_VERSION` decimal(5,2) NOT NULL DEFAULT '0.00',
  `DBALTER_BACKUP_TABLE_PREFIX` varchar(255) NOT NULL DEFAULT '__bu_',
  PRIMARY KEY (`id`),
  UNIQUE KEY `schema_tag` (`schema_name`,`migration_tag`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_application_prevention_duration`
--

DROP TABLE IF EXISTS `ats_application_prevention_duration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_application_prevention_duration` (
  `ats_application_prevention_duration_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_application_prevention_duration_date_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_application_prevention_duration_date_created` datetime NOT NULL,
  `ats_application_prevention_duration_days_for_internal` int(4) unsigned NOT NULL DEFAULT '0',
  `ats_application_prevention_duration_days_for_external` int(4) unsigned NOT NULL DEFAULT '0',
  `ats_application_prevention_duration_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ats_application_prevention_duration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_background_check_vendor`
--

DROP TABLE IF EXISTS `ats_background_check_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_background_check_vendor` (
  `ats_background_check_vendor_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_background_check_vendor_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_background_check_vendor_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_background_check_vendor_name` char(255) NOT NULL,
  `ats_background_check_vendor_active` tinyint(1) unsigned DEFAULT '0',
  `ats_background_check_vendor_script` char(255) DEFAULT NULL,
  `ats_background_check_vendor_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_background_check_vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_bulk_uploaded_resume`
--

DROP TABLE IF EXISTS `ats_bulk_uploaded_resume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_bulk_uploaded_resume` (
  `ats_bulk_uploaded_resume_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_bulk_uploaded_resume_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_bulk_uploaded_resume_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_bulk_uploaded_resume_username` varchar(255) DEFAULT NULL,
  `ats_bulk_uploaded_resume_password` varchar(255) DEFAULT NULL,
  `ats_bulk_uploaded_resume_first_name` varchar(255) DEFAULT NULL,
  `ats_bulk_uploaded_resume_last_name` varchar(255) DEFAULT NULL,
  `ats_bulk_uploaded_resume_middle_initial` varchar(255) DEFAULT NULL,
  `ats_bulk_uploaded_resume_suffix` varchar(255) DEFAULT NULL,
  `ats_bulk_uploaded_resume_address_one` varchar(255) DEFAULT NULL,
  `ats_bulk_uploaded_resume_address_two` varchar(255) DEFAULT NULL,
  `ats_bulk_uploaded_resume_city` varchar(255) DEFAULT NULL,
  `ats_bulk_uploaded_resume_state` varchar(255) DEFAULT NULL,
  `ats_bulk_uploaded_resume_zip` varchar(20) DEFAULT NULL,
  `ats_bulk_uploaded_resume_country` varchar(255) DEFAULT NULL,
  `ats_bulk_uploaded_resume_email` varchar(255) DEFAULT NULL,
  `ats_bulk_uploaded_resume_phone_one` varchar(30) DEFAULT NULL,
  `ats_bulk_uploaded_resume_phone_two` varchar(30) DEFAULT NULL,
  `ats_bulk_uploaded_resume_resume` text,
  `ats_bulk_uploaded_resume_description` varchar(255) DEFAULT NULL,
  `ats_bulk_uploaded_resume_cpf` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ats_bulk_uploaded_resume_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_candidate`
--

DROP TABLE IF EXISTS `ats_candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_candidate` (
  `ats_candidate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_candidate_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `ats_candidate_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_candidate_transaction_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_resume_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_status_id` int(10) unsigned DEFAULT '0',
  `ats_jobseeker_rejection_code_id` int(10) unsigned DEFAULT '0',
  `ats_resume_cover_id` int(10) unsigned DEFAULT '0',
  `ats_creator_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_candidate_last_comment` text NOT NULL,
  `ats_front_end_id` int(10) NOT NULL,
  `ats_candidate_hire_date` date DEFAULT NULL,
  `ats_candidate_start_date` date DEFAULT NULL,
  `ats_candidate_new_hire_export_date` date DEFAULT NULL,
  `ats_jobseeker_secondary_rejection_code_id` int(10) unsigned DEFAULT '0',
  `ats_candidate_pending_onboarding_initiation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_candidate_hired_initiated_by` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_candidate_assessment_screened_out` tinyint(1) NOT NULL DEFAULT '-1',
  `ats_jobseeker_hire_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_hiring_reason_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_candidate_id`),
  KEY `ats_candidate_transaction_id` (`ats_candidate_transaction_id`),
  KEY `ats_creator_id` (`ats_creator_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`),
  KEY `ats_resume_id` (`ats_resume_id`),
  KEY `ats_jobseeker_id` (`ats_jobseeker_id`),
  KEY `ats_jobseeker_rejection_code_id` (`ats_jobseeker_rejection_code_id`),
  KEY `ats_jobseeker_status_id` (`ats_jobseeker_status_id`),
  KEY `jobseeker_status` (`ats_jobseeker_id`,`ats_jobseeker_status_id`),
  KEY `ats_resume_cover_id` (`ats_resume_cover_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4656 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_candidate_checklist_transaction`
--

DROP TABLE IF EXISTS `ats_candidate_checklist_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_candidate_checklist_transaction` (
  `ats_candidate_checklist_transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_candidate_checklist_transaction_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `ats_candidate_checklist_transaction_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_workflow_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_candidate_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_checklist_action_id` int(10) unsigned DEFAULT '0',
  `ats_checklist_vendor_id` int(10) unsigned DEFAULT '0',
  `ats_jobseeker_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_candidate_checklist_transaction_order` int(3) unsigned NOT NULL DEFAULT '0',
  `ats_candidate_checklist_transaction_complete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_candidate_checklist_transaction_current` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_candidate_checklist_transaction_skipped` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_wizard_id` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ats_candidate_checklist_transaction_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `ats_candidate_id` (`ats_candidate_id`),
  KEY `ats_wizard_id` (`ats_wizard_id`),
  KEY `ats_workflow_checklist_action_id` (`ats_workflow_checklist_action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3254 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_candidate_hourly_shift_type_schedule`
--

DROP TABLE IF EXISTS `ats_candidate_hourly_shift_type_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_candidate_hourly_shift_type_schedule` (
  `ats_candidate_hourly_shift_type_schedule_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_candidate_hourly_shift_type_schedule_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_candidate_hourly_shift_type_schedule_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_candidate_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_hourly_shift_type_schedule_day_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_candidate_hourly_shift_type_schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_candidate_interview_form`
--

DROP TABLE IF EXISTS `ats_candidate_interview_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_candidate_interview_form` (
  `ats_candidate_interview_form_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_candidate_interview_form_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_candidate_interview_form_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_candidate_id` int(11) NOT NULL DEFAULT '0',
  `ats_candidate_interview_form_job_title` varchar(255) DEFAULT NULL,
  `ats_candidate_interview_form_position_code` varchar(255) DEFAULT NULL,
  `ats_candidate_interview_form_name` varchar(75) DEFAULT NULL,
  `ats_candidate_interview_form_address1` varchar(40) DEFAULT NULL,
  `ats_candidate_interview_form_address2` varchar(40) DEFAULT NULL,
  `ats_candidate_interview_form_city` varchar(50) DEFAULT NULL,
  `ats_candidate_interview_form_zip` varchar(10) DEFAULT NULL,
  `ats_candidate_interview_form_phone1` varchar(15) DEFAULT NULL,
  `ats_candidate_interview_form_phone2` varchar(15) DEFAULT NULL,
  `ats_candidate_interview_form_email` varchar(75) DEFAULT NULL,
  `ats_candidate_interview_form_currentemployer` varchar(255) DEFAULT NULL,
  `ats_candidate_interview_form_reasonforleaving` varchar(255) DEFAULT NULL,
  `ats_candidate_interview_form_salary` varchar(20) DEFAULT NULL,
  `ats_candidate_interview_form_benefits` varchar(255) DEFAULT NULL,
  `ats_candidate_interview_form_dateavailable` varchar(25) DEFAULT NULL,
  `ats_candidate_interview_form_formeremployee` varchar(255) DEFAULT NULL,
  `ats_candidate_interview_form_former_reasonforleaving` text,
  `ats_candidate_interview_form_lastmanager` varchar(255) DEFAULT NULL,
  `ats_candidate_interview_form_backgroundcheck` char(3) DEFAULT NULL,
  `hua_dynamic_form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_status_id` int(11) NOT NULL DEFAULT '0',
  `ats_candidate_interview_form_comments` text NOT NULL,
  `ats_candidate_interview_form_state` varchar(50) DEFAULT NULL,
  `ats_candidate_interview_form_created_by` int(11) NOT NULL DEFAULT '0',
  `ats_candidate_interview_form_last_updated_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_candidate_interview_form_id`),
  KEY `ats_candidate_id` (`ats_candidate_id`),
  KEY `ats_jobseeker_status_id` (`ats_jobseeker_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_candidate_status_sequence`
--

DROP TABLE IF EXISTS `ats_candidate_status_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_candidate_status_sequence` (
  `ats_candidate_status_sequence_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_candidate_status_sequence_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `ats_candidate_status_sequence_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_candidate_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_status_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_candidate_status_sequence_order` int(3) unsigned NOT NULL DEFAULT '0',
  `ats_candidate_status_sequence_complete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_candidate_status_sequence_current` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_candidate_status_sequence_comment` text NOT NULL,
  `ats_candidate_transaction_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_candidate_status_sequence_id`),
  KEY `ats_candidate_id` (`ats_candidate_id`),
  KEY `ats_candidate_transaction_id` (`ats_candidate_transaction_id`),
  KEY `ats_jobseeker_status_id` (`ats_jobseeker_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32312 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_candidate_status_trigger`
--

DROP TABLE IF EXISTS `ats_candidate_status_trigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_candidate_status_trigger` (
  `ats_candidate_status_trigger_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_candidate_status_trigger_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `ats_candidate_status_trigger_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_candidate_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_status_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_task_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_candidate_status_trigger_id`),
  KEY `ats_candidate_id` (`ats_candidate_id`),
  KEY `ats_task_id` (`ats_task_id`),
  KEY `ats_jobseeker_status_id` (`ats_jobseeker_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9804 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_candidate_task_transaction`
--

DROP TABLE IF EXISTS `ats_candidate_task_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_candidate_task_transaction` (
  `ats_candidate_task_transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_candidate_task_transaction_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_candidate_task_transaction_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_candidate_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_candidate_task_transaction_order` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_task_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_candidate_task_transaction_complete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_candidate_task_transaction_current` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_candidate_task_transaction_success` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_status_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_candidate_task_transaction_id`),
  KEY `ats_candidate_id` (`ats_candidate_id`),
  KEY `ats_jobseeker_id` (`ats_jobseeker_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `ats_jobseeker_status_id` (`ats_jobseeker_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=417 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_candidate_to_union`
--

DROP TABLE IF EXISTS `ats_candidate_to_union`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_candidate_to_union` (
  `ats_candidate_to_union_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_union_id` int(11) unsigned NOT NULL,
  `ats_candidate_id` int(11) unsigned NOT NULL,
  `ats_candidate_to_union_seniority_date` datetime DEFAULT NULL,
  `ats_candidate_to_union_seniority_hrs` int(11) DEFAULT NULL,
  `ats_candidate_to_union_employee_class` varchar(50) DEFAULT NULL,
  `ats_candidate_to_union_local` varchar(10) DEFAULT NULL,
  `ats_candidate_to_union_seniority_ranking` smallint(5) DEFAULT NULL,
  `ats_candidate_to_union_seniority_ranking_1` smallint(5) DEFAULT NULL,
  `ats_candidate_to_union_seniority_ranking_2` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`ats_candidate_to_union_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_candidate_transaction`
--

DROP TABLE IF EXISTS `ats_candidate_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_candidate_transaction` (
  `ats_candidate_transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_candidate_transaction_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_candidate_transaction_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_candidate_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_from_status_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_to_status_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_candidate_transaction_recorded_date` datetime DEFAULT NULL,
  `ats_candidate_transaction_original_date` datetime DEFAULT NULL,
  PRIMARY KEY (`ats_candidate_transaction_id`),
  KEY `ats_candidate_id` (`ats_candidate_id`),
  KEY `ats_jobseeker_from_status_id` (`ats_jobseeker_from_status_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `ats_jobseeker_to_status_id` (`ats_jobseeker_to_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11814 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_choicepoint`
--

DROP TABLE IF EXISTS `ats_choicepoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_choicepoint` (
  `ats_choicepoint_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_jobseeker_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_choicepoint_package` char(4) DEFAULT NULL,
  `ats_choicepoint_requestid` char(15) DEFAULT NULL,
  `ats_choicepoint_status` char(255) DEFAULT NULL,
  `ats_choicepoint_message` char(255) DEFAULT NULL,
  `ats_choicepoint_reporturl` char(255) DEFAULT NULL,
  `ats_choicepoint_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_choicepoint_senttime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_choicepoint_is_error` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`ats_choicepoint_id`),
  KEY `ats_candidate_id` (`ats_jobseeker_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_choicepoint_setup`
--

DROP TABLE IF EXISTS `ats_choicepoint_setup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_choicepoint_setup` (
  `ats_choicepoint_setup_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_choicepoint_setup_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_choicepoint_setup_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_choicepoint_setup_packageid` char(255) NOT NULL,
  `ats_choicepoint_setup_userid` char(255) NOT NULL,
  `ats_choicepoint_setup_password` char(255) NOT NULL,
  `ats_choicepoint_setup_hostaddress` char(255) NOT NULL,
  `ats_choicepoint_setup_handlerscript` char(255) NOT NULL,
  `ats_choicepoint_setup_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_choicepoint_setup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_contact`
--

DROP TABLE IF EXISTS `ats_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_contact` (
  `ats_contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_contact_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_contact_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_contact_owner_user_id` int(11) DEFAULT '0',
  `ats_contact_first_name` varchar(255) DEFAULT NULL,
  `ats_contact_last_name` varchar(255) DEFAULT NULL,
  `ats_contact_email` varchar(255) DEFAULT NULL,
  `ats_contact_alternate_email` varchar(255) DEFAULT NULL,
  `ats_contact_type_id` int(11) DEFAULT '0',
  `ats_referral_source_id` int(11) DEFAULT '0',
  `ats_contact_synced` tinyint(1) DEFAULT '0',
  `ats_jobseeker_id` int(11) NOT NULL DEFAULT '0',
  `ats_contact_outlook_sync_id` varchar(255) DEFAULT NULL,
  `ats_contact_sga_id` int(11) DEFAULT '0',
  `ats_contact_facebook_id` int(10) unsigned DEFAULT NULL,
  `ats_contact_business_title` varchar(255) DEFAULT NULL,
  `ats_contact_location` varchar(255) DEFAULT NULL,
  `ats_contact_company_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ats_contact_id`),
  KEY `ats_jobseeker_id` (`ats_jobseeker_id`),
  KEY `ats_contact_type_id` (`ats_contact_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_contact_address`
--

DROP TABLE IF EXISTS `ats_contact_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_contact_address` (
  `ats_contact_address_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_contact_address_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_contact_address_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_contact_id` int(11) DEFAULT '0',
  `ats_contact_address_one` char(255) DEFAULT NULL,
  `ats_contact_address_two` char(255) DEFAULT NULL,
  `ats_contact_address_country` int(11) NOT NULL DEFAULT '0',
  `ats_contact_address_city` char(255) DEFAULT NULL,
  `ats_contact_address_postal_code` char(20) DEFAULT NULL,
  `ats_contact_address_url` char(255) DEFAULT NULL,
  `ats_contact_address_type_id` int(10) NOT NULL DEFAULT '0',
  `ats_contact_address_state` int(11) DEFAULT NULL,
  PRIMARY KEY (`ats_contact_address_id`),
  KEY `ats_contact_id` (`ats_contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_contact_address_type`
--

DROP TABLE IF EXISTS `ats_contact_address_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_contact_address_type` (
  `ats_contact_address_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_contact_address_type_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_contact_address_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_contact_address_type_name` char(255) NOT NULL,
  `ats_contact_address_type_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_contact_address_type_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `ats_contact_address_type_order` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`ats_contact_address_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_contact_expertise`
--

DROP TABLE IF EXISTS `ats_contact_expertise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_contact_expertise` (
  `ats_contact_expertise_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_contact_expertise_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_contact_expertise_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_contact_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_skill_category_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_contact_expertise_id`),
  KEY `ats_contact_id` (`ats_contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_contact_note`
--

DROP TABLE IF EXISTS `ats_contact_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_contact_note` (
  `ats_contact_note_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_contact_note_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_contact_note_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_contact_id` int(11) DEFAULT '0',
  `ats_contact_note_text` char(255) DEFAULT NULL,
  PRIMARY KEY (`ats_contact_note_id`),
  KEY `ats_contact_id` (`ats_contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_contact_phone`
--

DROP TABLE IF EXISTS `ats_contact_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_contact_phone` (
  `ats_contact_phone_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_contact_phone_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_contact_phone_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_contact_id` int(11) NOT NULL DEFAULT '0',
  `ats_contact_phone_number` char(255) NOT NULL,
  `ats_contact_phone_type_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_contact_phone_id`),
  KEY `ats_contact_id` (`ats_contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_contact_phone_type`
--

DROP TABLE IF EXISTS `ats_contact_phone_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_contact_phone_type` (
  `ats_contact_phone_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_contact_phone_type_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_contact_phone_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_contact_phone_type_name` char(255) NOT NULL,
  `ats_contact_phone_type_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_contact_phone_type_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `ats_contact_phone_type_order` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`ats_contact_phone_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_contact_resume`
--

DROP TABLE IF EXISTS `ats_contact_resume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_contact_resume` (
  `ats_contact_resume_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_contact_resume_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_contact_resume_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_contact_id` int(11) NOT NULL DEFAULT '0',
  `ats_contact_resume_text` text NOT NULL,
  PRIMARY KEY (`ats_contact_resume_id`),
  KEY `ats_contact_id` (`ats_contact_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_contact_type`
--

DROP TABLE IF EXISTS `ats_contact_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_contact_type` (
  `ats_contact_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_contact_type_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_contact_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_contact_type_name` char(255) NOT NULL,
  `ats_contact_type_deactivated` tinyint(1) unsigned DEFAULT '0',
  `ats_contact_type_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `ats_contact_type_order` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`ats_contact_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_cost_per_hire_data`
--

DROP TABLE IF EXISTS `ats_cost_per_hire_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_cost_per_hire_data` (
  `ats_cost_per_hire_data_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_candidate_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_cost_per_hire_data_base_salary` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ats_cost_per_hire_data_ad_cost` decimal(8,2) NOT NULL DEFAULT '0.00',
  `ats_cost_per_hire_data_job_board` decimal(8,2) NOT NULL DEFAULT '0.00',
  `ats_cost_per_hire_data_sign_on` decimal(8,2) DEFAULT NULL,
  `ats_cost_per_hire_data_relocation_assistance` decimal(8,2) NOT NULL DEFAULT '0.00',
  `ats_cost_per_hire_data_referral_bonus` decimal(8,2) NOT NULL DEFAULT '0.00',
  `ats_cost_per_hire_data_travel` decimal(8,2) NOT NULL DEFAULT '0.00',
  `ats_cost_per_hire_data_agency` decimal(8,2) NOT NULL DEFAULT '0.00',
  `ats_cost_per_hire_data_recruiter` decimal(8,2) NOT NULL DEFAULT '0.00',
  `ats_cost_per_hire_data_other` decimal(8,2) NOT NULL DEFAULT '0.00',
  `ats_cost_per_hire_data_stock_options` varchar(50) DEFAULT NULL,
  `ats_cost_per_hire_data_recoverable_drawn` decimal(8,2) NOT NULL DEFAULT '0.00',
  `ats_cost_per_hire_data_non_recoverable_drawn` decimal(8,2) NOT NULL DEFAULT '0.00',
  `ats_cost_per_hire_data_base_hourly` decimal(8,2) NOT NULL DEFAULT '0.00',
  `ats_cost_per_hire_data_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_cost_per_hire_data_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ats_cost_per_hire_data_id`),
  KEY `ats_candidate_id` (`ats_candidate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_currency`
--

DROP TABLE IF EXISTS `ats_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_currency` (
  `ats_currency_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_currency_value` varchar(255) NOT NULL,
  `ats_currency_order` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_currency_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_currency_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_currency_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_currency_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_delete_suggestion`
--

DROP TABLE IF EXISTS `ats_delete_suggestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_delete_suggestion` (
  `ats_delete_suggestion_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_jobseeker_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_creator_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_delete_suggestion_reason` text,
  `ats_delete_suggestion_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_delete_suggestion_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ats_delete_suggestion_id`),
  KEY `ats_jobseeker_id` (`ats_jobseeker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_education_level`
--

DROP TABLE IF EXISTS `ats_education_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_education_level` (
  `ats_education_level_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_education_level_value` varchar(255) NOT NULL,
  `ats_education_level_order` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_education_level_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_education_level_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_education_level_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_education_level_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_education_level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_eeoc_job_category`
--

DROP TABLE IF EXISTS `ats_eeoc_job_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_eeoc_job_category` (
  `ats_eeoc_job_category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_eeoc_job_category_value` varchar(255) NOT NULL,
  `ats_eeoc_job_category_order` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_eeoc_job_category_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_eeoc_job_category_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_eeoc_job_category_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_eeoc_job_category_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_eeoc_job_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_eeoc_job_group`
--

DROP TABLE IF EXISTS `ats_eeoc_job_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_eeoc_job_group` (
  `ats_eeoc_job_group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_eeoc_job_group_value` varchar(255) NOT NULL,
  `ats_eeoc_job_group_order` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_eeoc_job_group_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_eeoc_job_group_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_eeoc_job_group_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_eeoc_job_group_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_eeoc_job_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_everify_case`
--

DROP TABLE IF EXISTS `ats_everify_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_everify_case` (
  `ats_everify_case_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_employee_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_everify_case_last_modified` timestamp NULL DEFAULT NULL,
  `ats_everify_case_date_created` datetime DEFAULT NULL,
  `ats_everify_case_verification_id` varchar(45) NOT NULL DEFAULT '0',
  `ats_everify_case_overdue_reason` varchar(60) DEFAULT NULL,
  `ats_everify_case_overdue_reason_other` varchar(45) DEFAULT NULL,
  `ats_everify_case_verification_status` varchar(20) DEFAULT NULL,
  `ats_everify_case_display_status` varchar(60) DEFAULT NULL,
  `ats_everify_case_submitted_date` datetime DEFAULT NULL,
  `ats_everify_case_closed_date` datetime DEFAULT NULL,
  `ats_everify_case_close_code` varchar(10) DEFAULT NULL,
  `ats_everify_case_creator_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_everify_case_status` enum('open','closed','in_process','open_to_be_closed','updated') NOT NULL DEFAULT 'open',
  `ats_everify_case_current` tinyint(1) DEFAULT '1',
  `ats_everify_case_i9_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_everify_case_archive` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_everify_case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_everify_case_i9`
--

DROP TABLE IF EXISTS `ats_everify_case_i9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_everify_case_i9` (
  `ats_everify_case_i9_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_employee_i9_id` int(11) unsigned NOT NULL,
  `ats_everify_case_i9_last_modified` timestamp NULL DEFAULT NULL,
  `ats_everify_case_i9_date_created` datetime DEFAULT NULL,
  `ats_everify_case_i9_able_to_work` varchar(255) DEFAULT NULL,
  `ats_everify_case_i9_first_name` varchar(255) DEFAULT NULL,
  `ats_everify_case_i9_middle_name` varchar(255) DEFAULT NULL,
  `ats_everify_case_i9_last_name` varchar(255) DEFAULT NULL,
  `ats_everify_case_i9_maiden_name` varchar(255) DEFAULT NULL,
  `ats_everify_case_i9_dob` date DEFAULT NULL,
  `ats_everify_case_i9_email` varchar(255) DEFAULT NULL,
  `ats_everify_case_i9_employment_date` date DEFAULT NULL,
  `ats_everify_case_i9_lawful_resident_number` varchar(255) DEFAULT NULL,
  `ats_everify_case_i9_alien_auth_number` varchar(255) DEFAULT NULL,
  `ats_everify_case_i9_alien_admission_number` varchar(255) DEFAULT NULL,
  `ats_everify_case_i9_alien_passport_number` varchar(255) DEFAULT NULL,
  `ats_everify_case_i9_alien_coi` int(10) DEFAULT NULL,
  `ats_everify_case_i9_document_type_a` varchar(10) DEFAULT NULL,
  `ats_everify_case_i9_document_title1_a` varchar(255) DEFAULT NULL,
  `ats_everify_case_i9_document_title2_a` varchar(255) DEFAULT NULL,
  `ats_everify_case_i9_document_title3_a` varchar(255) DEFAULT NULL,
  `ats_everify_case_i9_document_nb1_a` varchar(255) DEFAULT NULL,
  `ats_everify_case_i9_document_nb2_a` varchar(255) DEFAULT NULL,
  `ats_everify_case_i9_document_nb3_a` varchar(255) DEFAULT NULL,
  `ats_everify_case_i9_expiration_date1_a` date DEFAULT NULL,
  `ats_everify_case_i9_expiration_date2_a` date DEFAULT NULL,
  `ats_everify_case_i9_expiration_date3_a` date DEFAULT NULL,
  `ats_everify_case_i9_document_type_b` varchar(10) DEFAULT NULL,
  `ats_everify_case_i9_document_nb1_b` varchar(255) DEFAULT NULL,
  `ats_everify_case_i9_expiration_date_b` date DEFAULT NULL,
  `ats_everify_case_i9_document_type_c` varchar(10) DEFAULT NULL,
  `ats_everify_case_i9_document_nb1_c` varchar(255) DEFAULT NULL,
  `ats_everify_case_i9_expiration_date_c` date DEFAULT NULL,
  `ats_everify_case_i9_supporting_document_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_everify_case_i9_supporting_document_state` int(10) DEFAULT '0',
  `ats_everify_case_i9_foreign_passport_coi` int(10) DEFAULT NULL,
  `ats_everify_case_i9_verify_due_date` date DEFAULT NULL,
  PRIMARY KEY (`ats_everify_case_i9_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_everify_case_status_log`
--

DROP TABLE IF EXISTS `ats_everify_case_status_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_everify_case_status_log` (
  `ats_everify_case_status_log_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_everify_case_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_everify_case_verification_status` varchar(20) DEFAULT NULL,
  `ats_everify_case_status_log_hook` varchar(100) DEFAULT NULL,
  `ats_everify_case_status_log_error_response_code` int(11) DEFAULT NULL,
  `ats_everify_case_status_log_flag` enum('corrupted','successful','error','fixed') DEFAULT NULL,
  `ats_everify_case_status_log_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_everify_case_status_log_date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`ats_everify_case_status_log_id`),
  KEY `ats_everify_case_idx` (`ats_everify_case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_everify_user`
--

DROP TABLE IF EXISTS `ats_everify_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_everify_user` (
  `ats_everify_user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_everify_user_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_everify_user_date_created` datetime DEFAULT NULL,
  `hua_user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_everify_user_username` varchar(255) DEFAULT NULL,
  `ats_everify_user_password` varchar(255) DEFAULT NULL,
  `ats_everify_user_password_last_modified` datetime DEFAULT NULL,
  `ats_everify_user_active` tinyint(11) unsigned DEFAULT '1',
  PRIMARY KEY (`ats_everify_user_id`),
  KEY `ats_everify_user_active` (`ats_everify_user_active`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `ats_everify_user_username` (`ats_everify_user_username`),
  KEY `search_everify_user_w_max_lifetime` (`ats_everify_user_active`,`ats_everify_user_password_last_modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_experience_level`
--

DROP TABLE IF EXISTS `ats_experience_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_experience_level` (
  `ats_experience_level_id` int(10) NOT NULL AUTO_INCREMENT,
  `ats_experience_level_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_experience_level_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_experience_level_value` varchar(255) NOT NULL DEFAULT '0',
  `ats_experience_level_order` int(10) unsigned NOT NULL,
  `ats_experience_level_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_experience_level_system_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_experience_level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_external_theme`
--

DROP TABLE IF EXISTS `ats_external_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_external_theme` (
  `ats_external_theme_id` int(10) NOT NULL AUTO_INCREMENT,
  `ats_external_theme_name` char(255) NOT NULL,
  `ats_external_theme_colors` char(255) NOT NULL,
  `ats_external_theme_is_iframe_color_safe` tinyint(1) NOT NULL DEFAULT '0',
  `ats_external_theme_date_created` datetime DEFAULT NULL,
  `ats_external_theme_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_external_theme_directory` varchar(255) NOT NULL,
  `ats_external_theme_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ats_external_theme_hua_safe` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ats_external_theme_pe_safe` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ats_external_theme_mua_safe` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ats_external_theme_demo_safe` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ats_external_theme_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_feedback`
--

DROP TABLE IF EXISTS `ats_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_feedback` (
  `ats_feedback_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_feedback_date_created` datetime NOT NULL,
  `ats_feedback_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_user_id` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`ats_feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_feedback_comment`
--

DROP TABLE IF EXISTS `ats_feedback_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_feedback_comment` (
  `ats_feedback_comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_feedback_comment_date_created` datetime NOT NULL,
  `ats_feedback_comment_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_feedback_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_feedback_request_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_feedback_comment_comment` text NOT NULL,
  `ats_feedback_comment_fullname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ats_feedback_comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=340 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_feedback_request`
--

DROP TABLE IF EXISTS `ats_feedback_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_feedback_request` (
  `ats_feedback_request_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_feedback_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_feedback_request_date_created` datetime NOT NULL,
  `ats_feedback_request_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_feedback_request_key` varchar(255) NOT NULL,
  `ats_feedback_request_reminder_day` int(1) unsigned NOT NULL,
  `ats_feedback_request_reminder_date` datetime NOT NULL,
  `ats_feedback_request_is_completed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_feedback_request_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ats_feedback_request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=461 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_front_end`
--

DROP TABLE IF EXISTS `ats_front_end`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_front_end` (
  `ats_front_end_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_front_end_last_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ats_front_end_date_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_front_end_name` varchar(255) DEFAULT NULL,
  `ats_front_end_url` varchar(255) DEFAULT NULL,
  `ats_front_end_default` tinyint(2) NOT NULL,
  `ats_external_theme_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_front_end_is_hourly_portal` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`ats_front_end_id`),
  KEY `ats_front_end_url` (`ats_front_end_url`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_hiring_order`
--

DROP TABLE IF EXISTS `ats_hiring_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_hiring_order` (
  `ats_hiring_order_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_hiring_order_start_date` date DEFAULT '0000-00-00',
  `ats_hiring_order_end_date` date DEFAULT '0000-00-00',
  `hua_job_type_id` int(10) unsigned DEFAULT '0',
  `ats_hiring_order_title` varchar(255) DEFAULT NULL,
  `ats_hiring_order_reason` varchar(255) DEFAULT NULL,
  `hua_location_id` int(10) unsigned DEFAULT '0',
  `ats_hiring_order_requested_by` varchar(255) DEFAULT NULL,
  `ats_vendor_chargecode_id` int(10) unsigned DEFAULT '0',
  `ats_hiring_order_description` text,
  `ats_hiring_order_requirements` text NOT NULL,
  `ats_hiring_order_estimated_duration` int(10) unsigned DEFAULT '0',
  `ats_hiring_order_estimated_workhours` int(10) unsigned DEFAULT '0',
  `ats_hiring_order_estimated_overtime_hours` int(10) unsigned DEFAULT '0',
  `ats_hiring_order_desired_bill_rate_from` float DEFAULT '0',
  `ats_hiring_order_desired_bill_rate_to` float DEFAULT '0',
  `ats_hiring_order_desired_bill_rate_prorata` enum('hour','month','year') DEFAULT 'month',
  `ats_hiring_order_background_checks` tinyint(1) DEFAULT '0',
  `ats_hiring_order_reference_checks` tinyint(1) DEFAULT '0',
  `ats_hiring_order_testing` tinyint(1) DEFAULT '0',
  `ats_hiring_order_assessment` tinyint(1) DEFAULT '0',
  `ats_hiring_order_quantity` int(10) unsigned DEFAULT '0',
  `ats_hiring_order_salary_range_from` decimal(12,2) DEFAULT NULL,
  `ats_hiring_order_salary_range_to` decimal(12,2) DEFAULT NULL,
  `ats_hiring_order_salary_prorata` enum('hour','month','year') NOT NULL DEFAULT 'month',
  `ats_hiring_order_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_hiring_order_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ats_hiring_order_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`),
  KEY `hua_location_id` (`hua_location_id`),
  KEY `ats_vendor_chargecode_id` (`ats_vendor_chargecode_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_hiring_order_skill`
--

DROP TABLE IF EXISTS `ats_hiring_order_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_hiring_order_skill` (
  `ats_hiring_order_skill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_hiring_order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_skill_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_hiring_order_skill_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_hiring_order_skill_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ats_hiring_order_skill_id`),
  KEY `ats_hiring_order_id` (`ats_hiring_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_hiring_order_vendor`
--

DROP TABLE IF EXISTS `ats_hiring_order_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_hiring_order_vendor` (
  `ats_hiring_order_vendor_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_hiring_order_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_vendor_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_hiring_order_vendor_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_hiring_order_vendor_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ats_hiring_order_vendor_id`),
  KEY `ats_hiring_order_id` (`ats_hiring_order_id`),
  KEY `vendor_idx` (`ats_vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=618 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_integration`
--

DROP TABLE IF EXISTS `ats_integration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_integration` (
  `ats_integration_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_integration_created` datetime NOT NULL,
  `ats_integration_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_integration_name` varchar(255) NOT NULL,
  PRIMARY KEY (`ats_integration_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_integration_jobboard_jobseeker`
--

DROP TABLE IF EXISTS `ats_integration_jobboard_jobseeker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_integration_jobboard_jobseeker` (
  `ats_integration_jobboard_jobseeker_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_integration_jobboard_jobseeker_date_created` datetime DEFAULT NULL,
  `ats_integration_jobboard_jobseeker_last_modified` timestamp NULL DEFAULT NULL,
  `ats_jobseeker_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_soa_integration_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_jobboard_jobseeker_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_integration_jobboard_jobseeker_id`),
  KEY `IDX_jobseeker_integration` (`ats_jobseeker_id`,`hua_soa_integration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_integration_jobboard_requisition`
--

DROP TABLE IF EXISTS `ats_integration_jobboard_requisition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_integration_jobboard_requisition` (
  `ats_integration_jobboard_requisition_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_integration_jobboard_requisition_date_created` datetime DEFAULT NULL,
  `ats_integration_jobboard_requisition_last_modified` timestamp NULL DEFAULT NULL,
  `ats_requisition_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_soa_integration_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_jobboard_requisition_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_integration_jobboard_requisition_id`),
  KEY `IDX_requisition_integration` (`ats_requisition_id`,`hua_soa_integration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_integration_jobboard_user`
--

DROP TABLE IF EXISTS `ats_integration_jobboard_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_integration_jobboard_user` (
  `ats_integration_jobboard_user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_integration_jobboard_user_date_created` datetime DEFAULT NULL,
  `ats_integration_jobboard_user_last_modified` timestamp NULL DEFAULT NULL,
  `hua_user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_soa_integration_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_jobboard_user_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_integration_jobboard_user_id`),
  KEY `IDX_user_integration` (`hua_user_id`,`hua_soa_integration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_integration_monster_location`
--

DROP TABLE IF EXISTS `ats_integration_monster_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_integration_monster_location` (
  `ats_integration_monster_location_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_integration_monster_location_active` tinyint(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ats_integration_monster_location_id`),
  KEY `ats_integration_monster_location_active` (`ats_integration_monster_location_active`)
) ENGINE=InnoDB AUTO_INCREMENT=10621 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_integration_monster_users`
--

DROP TABLE IF EXISTS `ats_integration_monster_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_integration_monster_users` (
  `ats_integration_monster_users_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_integration_monster_users_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_integration_monster_users_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cat` varchar(255) NOT NULL DEFAULT '',
  `ats_integration_monster_users_sixth_sense_enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_integration_monster_users_seemore_enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_integration_monster_channel_id` int(10) unsigned DEFAULT NULL,
  `india_cat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ats_integration_monster_users_id`),
  UNIQUE KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_integration_parameter`
--

DROP TABLE IF EXISTS `ats_integration_parameter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_integration_parameter` (
  `ats_integration_parameter_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_integration_parameter_created` datetime NOT NULL,
  `ats_integration_parameter_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_integration_id` int(11) unsigned NOT NULL,
  `ats_integration_parameter_name` varchar(255) NOT NULL,
  `ats_integration_parameter_value` varchar(255) NOT NULL,
  `ats_integration_parameter_description` varchar(255) NOT NULL,
  PRIMARY KEY (`ats_integration_parameter_id`),
  KEY `ats_integration_id` (`ats_integration_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_interview`
--

DROP TABLE IF EXISTS `ats_interview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_interview` (
  `ats_interview_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_interview_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_interview_date_created` datetime DEFAULT NULL,
  `ats_requisition_id` int(11) unsigned NOT NULL,
  `ats_letter_template_id` int(11) unsigned NOT NULL,
  `ats_letter_template_creator_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`ats_interview_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`),
  KEY `ats_letter_template_creator_id` (`ats_letter_template_creator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_interview_schedule`
--

DROP TABLE IF EXISTS `ats_interview_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_interview_schedule` (
  `ats_interview_schedule_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_interview_schedule_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_interview_schedule_date_created` datetime DEFAULT NULL,
  `ats_interview_schedule_creator_id` int(11) unsigned NOT NULL,
  `ats_interview_schedule_slot_duration` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_interview_schedule_type` enum('anytime','block','single') NOT NULL,
  `ats_interview_schedule_available_spaces` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_interview_schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_interview_schedule_invitation`
--

DROP TABLE IF EXISTS `ats_interview_schedule_invitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_interview_schedule_invitation` (
  `ats_interview_schedule_invitation_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_interview_schedule_invitation_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_interview_schedule_invitation_date_created` datetime DEFAULT NULL,
  `ats_interview_schedule_invitation_date_last_notified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_interview_schedule_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_interview_schedule_invitation_rejected` tinyint(4) NOT NULL DEFAULT '0',
  `ats_candidate_id` int(11) unsigned NOT NULL,
  `ats_interview_schedule_invitation_released_by` int(10) unsigned DEFAULT '0',
  `ats_interview_schedule_invitation_released_date` datetime NOT NULL,
  `ats_interview_schedule_slot_released_start_time` datetime NOT NULL,
  `ats_interview_schedule_slot_released_end_time` datetime NOT NULL,
  `hua_calendar_item_id` int(10) unsigned DEFAULT '0',
  `ats_interview_schedule_invitation_released` tinyint(4) unsigned DEFAULT '0',
  `ats_interview_schedule_invitation_issued_by` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_interview_schedule_invitation_id`),
  KEY `ats_candidate_id` (`ats_candidate_id`),
  KEY `ats_interview_schedule_id` (`ats_interview_schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_interview_schedule_slot`
--

DROP TABLE IF EXISTS `ats_interview_schedule_slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_interview_schedule_slot` (
  `ats_interview_schedule_slot_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_interview_schedule_slot_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_interview_schedule_slot_date_created` datetime DEFAULT NULL,
  `ats_interview_schedule_id` int(11) unsigned NOT NULL,
  `ats_candidate_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_interview_schedule_slot_claimed_by` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_interview_schedule_slot_start_time` datetime NOT NULL,
  `ats_interview_schedule_slot_end_time` datetime NOT NULL,
  `hua_calendar_item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_interview_schedule_slot_is_removed` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`ats_interview_schedule_slot_id`),
  KEY `hua_calendar_item_id` (`hua_calendar_item_id`),
  KEY `ats_candidate_id` (`ats_candidate_id`),
  KEY `ats_interview_schedule_id` (`ats_interview_schedule_id`),
  KEY `ats_interview_schedule_slot_start_time` (`ats_interview_schedule_slot_start_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_interview_schedule_to_calendar_item`
--

DROP TABLE IF EXISTS `ats_interview_schedule_to_calendar_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_interview_schedule_to_calendar_item` (
  `ats_interview_schedule_to_calendar_item_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_interview_schedule_to_calendar_item_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_interview_schedule_to_calendar_item_date_created` datetime DEFAULT NULL,
  `ats_interview_schedule_id` int(11) unsigned NOT NULL,
  `hua_calendar_item_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_interview_schedule_to_calendar_item_id`),
  KEY `hua_calendar_item_id` (`hua_calendar_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_interview_scheduling`
--

DROP TABLE IF EXISTS `ats_interview_scheduling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_interview_scheduling` (
  `ats_interview_scheduling_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_interview_scheduling_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_interview_scheduling_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_candidate_id` int(11) DEFAULT '0',
  `ats_requisition_id` int(11) DEFAULT '0',
  `ats_candidate_interview_form_id` int(11) NOT NULL DEFAULT '0',
  `hua_user_id` int(11) NOT NULL DEFAULT '0',
  `ats_letter_template_id` int(11) NOT NULL DEFAULT '0',
  `hua_calendar_item_id` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ats_interview_scheduling_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `ats_candidate_id` (`ats_candidate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_interview_scheduling_attachment`
--

DROP TABLE IF EXISTS `ats_interview_scheduling_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_interview_scheduling_attachment` (
  `ats_interview_scheduling_attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_interview_scheduling_attachment_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_interview_scheduling_attachment_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_interview_scheduling_id` int(11) NOT NULL DEFAULT '0',
  `hua_file_id` int(11) NOT NULL DEFAULT '0',
  `ats_interview_scheduling_share_candidate` int(1) DEFAULT NULL,
  `ats_interview_scheduling_share_individuals` int(1) DEFAULT NULL,
  PRIMARY KEY (`ats_interview_scheduling_attachment_id`),
  KEY `ats_interview_scheduling_id` (`ats_interview_scheduling_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_interview_scheduling_detail`
--

DROP TABLE IF EXISTS `ats_interview_scheduling_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_interview_scheduling_detail` (
  `ats_interview_scheduling_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_interview_scheduling_detail_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_interview_scheduling_detail_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_interview_scheduling_detail_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_interview_scheduling_id` int(11) NOT NULL DEFAULT '0',
  `ats_interview_scheduling_detail_selected` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_interview_scheduling_detail_id`),
  KEY `ats_interview_scheduling_id` (`ats_interview_scheduling_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_interview_scheduling_participant`
--

DROP TABLE IF EXISTS `ats_interview_scheduling_participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_interview_scheduling_participant` (
  `ats_interview_scheduling_participant_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_interview_scheduling_participant_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_interview_scheduling_participant_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_interview_scheduling_id` int(11) NOT NULL DEFAULT '0',
  `hua_user_id` int(11) DEFAULT '0',
  PRIMARY KEY (`ats_interview_scheduling_participant_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `ats_interview_scheduling_id` (`ats_interview_scheduling_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_interview_to_schedule`
--

DROP TABLE IF EXISTS `ats_interview_to_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_interview_to_schedule` (
  `ats_interview_to_schedule_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_interview_to_schedule_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_interview_to_schedule_date_created` datetime DEFAULT NULL,
  `ats_interview_id` int(11) unsigned NOT NULL,
  `ats_interview_schedule_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`ats_interview_to_schedule_id`),
  KEY `ats_interview_id` (`ats_interview_id`),
  KEY `ats_interview_schedule_id` (`ats_interview_schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_job_search_portal`
--

DROP TABLE IF EXISTS `ats_job_search_portal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_job_search_portal` (
  `ats_job_search_portal_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_job_search_portal_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_job_search_portal_date_created` datetime NOT NULL,
  `ats_job_search_portal_name` varchar(255) NOT NULL,
  `ats_job_search_portal_url` varchar(100) DEFAULT NULL,
  `ats_job_search_portal_type` varchar(50) NOT NULL DEFAULT 'external',
  `ats_job_search_portal_type_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_job_search_portal_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ats_job_search_portal_id`),
  KEY `ats_job_search_portal_type` (`ats_job_search_portal_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_jobseeker`
--

DROP TABLE IF EXISTS `ats_jobseeker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_jobseeker` (
  `ats_jobseeker_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_jobseeker_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_jobseeker_description` varchar(255) DEFAULT NULL,
  `hua_org_level_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_creator_id` int(10) unsigned DEFAULT '0',
  `ats_referral_source_id` int(10) unsigned DEFAULT '0',
  `ats_jobseeker_deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_type_id` int(10) unsigned DEFAULT '0',
  `ats_vendor_id` int(10) unsigned DEFAULT '0',
  `ats_jobseeker_agreed_to_terms_of_use` datetime DEFAULT NULL,
  `ats_jobseeker_original_type_id` int(10) unsigned DEFAULT NULL,
  `ats_referral_source_details` char(255) DEFAULT NULL,
  `ats_jobseeker_referer_id` int(11) unsigned DEFAULT '0',
  `ats_jobseeker_is_passive` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ats_jobseeker_has_resume` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_is_mobile` tinyint(1) DEFAULT '0',
  `ats_front_end_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`ats_jobseeker_id`),
  KEY `ats_jobseeker_creator_id` (`ats_jobseeker_creator_id`),
  KEY `ats_referral_source_id` (`ats_referral_source_id`),
  KEY `hua_org_level_id` (`hua_org_level_id`),
  KEY `ats_vendor_id` (`ats_vendor_id`),
  KEY `ats_jobseeker_type_id` (`ats_jobseeker_type_id`),
  KEY `ats_jobseeker_deleted` (`ats_jobseeker_deleted`,`ats_jobseeker_is_passive`,`ats_jobseeker_has_resume`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_jobseeker_application_transaction`
--

DROP TABLE IF EXISTS `ats_jobseeker_application_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_jobseeker_application_transaction` (
  `ats_jobseeker_application_transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_jobseeker_application_transaction_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_jobseeker_application_transaction_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_jobseeker_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_resume_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_application_transaction_section` enum('resume','questionnaire','checklist') NOT NULL DEFAULT 'resume',
  `ats_workflow_checklist_action_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_jobseeker_application_transaction_id`),
  KEY `ats_jobseeker_id` (`ats_jobseeker_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`),
  KEY `ats_resume_id` (`ats_resume_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_jobseeker_checklist_transaction`
--

DROP TABLE IF EXISTS `ats_jobseeker_checklist_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_jobseeker_checklist_transaction` (
  `ats_jobseeker_checklist_transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_jobseeker_checklist_transaction_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_jobseeker_checklist_transaction_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_workflow_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_checklist_action_id` int(10) unsigned DEFAULT '0',
  `ats_jobseeker_workflow_checklist_source_id` int(10) unsigned DEFAULT NULL,
  `ats_jobseeker_workflow_checklist_required` varchar(255) NOT NULL DEFAULT 'none',
  `ats_jobseeker_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_checklist_transaction_complete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_checklist_transaction_current` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_checklist_transaction_skipped` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_wizard_id` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`ats_jobseeker_checklist_transaction_id`),
  KEY `ats_jobseeker_id` (`ats_jobseeker_id`),
  KEY `ats_jobseeker_type_id` (`ats_jobseeker_type_id`),
  KEY `ats_jobseeker_workflow_id` (`ats_jobseeker_workflow_id`),
  KEY `ats_wizard_id` (`ats_wizard_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `ats_workflow_checklist_action_id` (`ats_workflow_checklist_action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_jobseeker_gender`
--

DROP TABLE IF EXISTS `ats_jobseeker_gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_jobseeker_gender` (
  `ats_jobseeker_gender_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_jobseeker_gender_value` varchar(255) NOT NULL,
  `ats_jobseeker_gender_order` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_gender_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_jobseeker_gender_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_jobseeker_gender_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_gender_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_jobseeker_gender_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_jobseeker_hire_type`
--

DROP TABLE IF EXISTS `ats_jobseeker_hire_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_jobseeker_hire_type` (
  `ats_jobseeker_hire_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_jobseeker_hire_type_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `ats_jobseeker_hire_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_jobseeker_hire_type_value` varchar(255) DEFAULT NULL,
  `ats_jobseeker_hire_type_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_hire_type_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_hire_type_system_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_jobseeker_hire_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_jobseeker_hiring_reason`
--

DROP TABLE IF EXISTS `ats_jobseeker_hiring_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_jobseeker_hiring_reason` (
  `ats_jobseeker_hiring_reason_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_jobseeker_hiring_reason_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `ats_jobseeker_hiring_reason_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_jobseeker_hiring_reason_value` varchar(255) DEFAULT NULL,
  `ats_jobseeker_hiring_reason_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_hiring_reason_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_hiring_reason_system_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_jobseeker_hiring_reason_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_jobseeker_hourly_shift_type_schedule`
--

DROP TABLE IF EXISTS `ats_jobseeker_hourly_shift_type_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_jobseeker_hourly_shift_type_schedule` (
  `ats_jobseeker_hourly_shift_type_schedule_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_jobseeker_hourly_shift_type_schedule_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_jobseeker_hourly_shift_type_schedule_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_jobseeker_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_hourly_shift_type_schedule_day_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_jobseeker_hourly_shift_type_schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_jobseeker_pool`
--

DROP TABLE IF EXISTS `ats_jobseeker_pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_jobseeker_pool` (
  `ats_jobseeker_pool_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_jobseeker_pool_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_jobseeker_pool_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_jobseeker_pool_comment` varchar(255) DEFAULT NULL,
  `ats_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_pool_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_jobseeker_pool_id`),
  KEY `ats_jobseeker_id` (`ats_jobseeker_id`),
  KEY `ats_pool_id` (`ats_pool_id`),
  KEY `ats_user_id` (`ats_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_jobseeker_reference`
--

DROP TABLE IF EXISTS `ats_jobseeker_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_jobseeker_reference` (
  `ats_jobseeker_reference_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_jobseeker_reference_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_jobseeker_reference_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_jobseeker_reference_score` double NOT NULL,
  `ats_jobseeker_reference_name` varchar(255) NOT NULL,
  `ats_jobseeker_reference_notes` text NOT NULL,
  `ats_jobseeker_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_recruiter_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_reference_type_id` int(10) unsigned DEFAULT NULL,
  `ats_jobseeker_reference_title` varchar(255) DEFAULT NULL,
  `ats_jobseeker_reference_company` varchar(255) DEFAULT NULL,
  `ats_jobseeker_reference_relationship` varchar(255) DEFAULT NULL,
  `ats_jobseeker_reference_phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ats_jobseeker_reference_id`),
  KEY `ats_jobseeker_id` (`ats_jobseeker_id`),
  KEY `ats_jobseeker_reference_type_id` (`ats_jobseeker_reference_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_jobseeker_reference_type`
--

DROP TABLE IF EXISTS `ats_jobseeker_reference_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_jobseeker_reference_type` (
  `ats_jobseeker_reference_type_id` int(10) NOT NULL AUTO_INCREMENT,
  `ats_jobseeker_reference_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_jobseeker_reference_type_date_created` datetime DEFAULT NULL,
  `ats_jobseeker_reference_type_name` varchar(255) DEFAULT NULL,
  `ats_jobseeker_reference_type_description` varchar(255) DEFAULT NULL,
  `ats_jobseeker_reference_type_order` smallint(5) unsigned DEFAULT NULL,
  `ats_jobseeker_reference_type_deactivated` tinyint(1) unsigned DEFAULT NULL,
  `ats_jobseeker_reference_type_system_flag` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`ats_jobseeker_reference_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_jobseeker_rejection_code`
--

DROP TABLE IF EXISTS `ats_jobseeker_rejection_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_jobseeker_rejection_code` (
  `ats_jobseeker_rejection_code_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_jobseeker_rejection_code_value` varchar(255) NOT NULL,
  `ats_jobseeker_rejection_code_order` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_rejection_code_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_jobseeker_rejection_code_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_jobseeker_rejection_code_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_rejection_code_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `ats_jobseeker_rejection_code_parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_jobseeker_rejection_code_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_jobseeker_relocate`
--

DROP TABLE IF EXISTS `ats_jobseeker_relocate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_jobseeker_relocate` (
  `ats_jobseeker_relocate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_jobseeker_relocate_value` varchar(255) NOT NULL,
  `ats_jobseeker_relocate_order` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_relocate_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_jobseeker_relocate_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_jobseeker_relocate_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_relocate_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_jobseeker_relocate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_jobseeker_status`
--

DROP TABLE IF EXISTS `ats_jobseeker_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_jobseeker_status` (
  `ats_jobseeker_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_jobseeker_status_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_jobseeker_status_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_jobseeker_status_name` varchar(255) NOT NULL,
  `ats_jobseeker_status_logical_value` varchar(255) NOT NULL,
  `ats_jobseeker_status_type` varchar(255) NOT NULL,
  `ats_jobseeker_status_protected` tinyint(1) NOT NULL DEFAULT '0',
  `ats_jobseeker_status_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `ats_jobseeker_status_order` smallint(5) unsigned NOT NULL,
  `ats_jobseeker_status_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_jobseeker_status_id`),
  KEY `ats_jobseeker_status_logical_value` (`ats_jobseeker_status_logical_value`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_jobseeker_type`
--

DROP TABLE IF EXISTS `ats_jobseeker_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_jobseeker_type` (
  `ats_jobseeker_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_jobseeker_type_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_jobseeker_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_jobseeker_type_name` char(255) DEFAULT NULL,
  `ats_jobseeker_type_logical_value` char(255) DEFAULT NULL,
  `ats_jobseeker_type_abbreviation` char(255) DEFAULT NULL,
  `ats_jobseeker_type_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_jobseeker_type_id`),
  KEY `ats_jobseeker_type_logical_value` (`ats_jobseeker_type_logical_value`),
  KEY `type_logical_value` (`ats_jobseeker_type_id`,`ats_jobseeker_type_logical_value`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_jobseeker_veteran`
--

DROP TABLE IF EXISTS `ats_jobseeker_veteran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_jobseeker_veteran` (
  `ats_jobseeker_veteran_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_jobseeker_veteran_value` varchar(255) NOT NULL,
  `ats_jobseeker_veteran_order` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_veteran_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_veteran_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_jobseeker_veteran_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ats_jobseeker_veteran_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_jobseeker_view_log`
--

DROP TABLE IF EXISTS `ats_jobseeker_view_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_jobseeker_view_log` (
  `ats_jobseeker_view_log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_jobseeker_view_log_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_jobseeker_view_log_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_jobseeker_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_recruiter_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_jobseeker_view_log_id`),
  KEY `ats_jobseeker_id` (`ats_jobseeker_id`),
  KEY `ats_recruiter_id` (`ats_recruiter_id`),
  KEY `jobseeker_recruiter` (`ats_jobseeker_id`,`ats_recruiter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8194 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_jobseeker_workflow`
--

DROP TABLE IF EXISTS `ats_jobseeker_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_jobseeker_workflow` (
  `ats_jobseeker_workflow_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_jobseeker_workflow_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_jobseeker_workflow_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_jobseeker_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_terms_of_use_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`ats_jobseeker_workflow_id`),
  KEY `ats_jobseeker_type_id` (`ats_jobseeker_type_id`),
  KEY `hua_form_id` (`hua_form_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_jobseeker_workflow_checklist`
--

DROP TABLE IF EXISTS `ats_jobseeker_workflow_checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_jobseeker_workflow_checklist` (
  `ats_jobseeker_workflow_checklist_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_jobseeker_workflow_checklist_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_jobseeker_workflow_checklist_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_workflow_checklist_action_id` int(10) unsigned DEFAULT '0',
  `ats_jobseeker_workflow_checklist_source_id` int(10) unsigned DEFAULT NULL,
  `ats_jobseeker_workflow_checklist_required` tinyint(1) NOT NULL DEFAULT '0',
  `ats_jobseeker_workflow_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_workflow_checklist_included` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_jobseeker_workflow_checklist_id`),
  KEY `ats_jobseeker_workflow_id` (`ats_jobseeker_workflow_id`),
  KEY `ats_workflow_checklist_action_id` (`ats_workflow_checklist_action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_kiosk`
--

DROP TABLE IF EXISTS `ats_kiosk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_kiosk` (
  `ats_kiosk_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_kiosk_code` varchar(255) NOT NULL,
  `ats_kiosk_name` varchar(255) NOT NULL,
  `ats_kiosk_text` text,
  `ats_kiosk_active` tinyint(1) unsigned DEFAULT '1',
  `ats_kiosk_creator_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_kiosk_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_kiosk_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ats_kiosk_id`),
  KEY `ats_kiosk_active_idx` (`ats_kiosk_active`),
  KEY `ats_kiosk_code_idx` (`ats_kiosk_code`),
  KEY `ats_kiosk_name_idx` (`ats_kiosk_name`),
  KEY `ats_user_id` (`ats_kiosk_creator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_letter_transaction`
--

DROP TABLE IF EXISTS `ats_letter_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_letter_transaction` (
  `ats_letter_transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_letter_transaction_text` text,
  `hua_user_id` int(10) unsigned DEFAULT '0',
  `ats_letter_transaction_recipients` blob,
  `ats_letter_transaction_attachments` blob NOT NULL,
  `ats_letter_transaction_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_letter_transaction_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ats_letter_transaction_id`),
  KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_monster_integration_search_option`
--

DROP TABLE IF EXISTS `ats_monster_integration_search_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_monster_integration_search_option` (
  `ats_monster_integration_search_option_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_monster_integration_search_option_date_created` datetime NOT NULL,
  `ats_monster_integration_search_option_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ats_monster_integration_search_option_name` varchar(255) NOT NULL,
  `ats_monster_integration_search_option_value` varchar(255) NOT NULL,
  PRIMARY KEY (`ats_monster_integration_search_option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_monster_seemore`
--

DROP TABLE IF EXISTS `ats_monster_seemore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_monster_seemore` (
  `ats_monster_seemore_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_monster_seemore_date_created` datetime NOT NULL,
  `ats_monster_seemore_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ats_monster_resume_board_id` varchar(255) NOT NULL,
  `ats_monster_seemore_board_name` varchar(255) NOT NULL,
  `ats_monster_seemore_general_cat` varchar(255) DEFAULT NULL,
  `ats_monster_seemore_channel_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ats_monster_seemore_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_monster_seemore_board_criteria`
--

DROP TABLE IF EXISTS `ats_monster_seemore_board_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_monster_seemore_board_criteria` (
  `ats_monster_seemore_board_criteria_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_monster_seemore_board_criteria_date_created` datetime NOT NULL,
  `ats_monster_seemore_board_criteria_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ats_monster_seemore_criteria_id` int(10) unsigned NOT NULL,
  `ats_monster_seemore_id` int(10) unsigned NOT NULL,
  `ats_monster_seemore_board_criteria_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ats_monster_seemore_board_criteria_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_monster_seemore_channel`
--

DROP TABLE IF EXISTS `ats_monster_seemore_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_monster_seemore_channel` (
  `ats_monster_seemore_channel_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_monster_seemore_channel_date_created` datetime NOT NULL,
  `ats_monster_seemore_channel_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ats_monster_seemore_channel_name` varchar(255) NOT NULL,
  `ats_monster_seemore_channel_lang` varchar(255) NOT NULL,
  `ats_monster_seemore_channel_value` varchar(255) NOT NULL,
  PRIMARY KEY (`ats_monster_seemore_channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_monster_seemore_criteria`
--

DROP TABLE IF EXISTS `ats_monster_seemore_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_monster_seemore_criteria` (
  `ats_monster_seemore_criteria_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_monster_seemore_criteria_date_created` datetime NOT NULL,
  `ats_monster_seemore_criteria_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ats_monster_seemore_criteria_table_name` varchar(255) DEFAULT NULL,
  `ats_monster_seemore_criteria_table_column_type` varchar(255) DEFAULT NULL,
  `ats_monster_seemore_criteria_comparison_table_name` varchar(255) DEFAULT NULL,
  `ats_monster_seemore_criteria_comparison_table_column_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ats_monster_seemore_criteria_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_monster_seemore_export`
--

DROP TABLE IF EXISTS `ats_monster_seemore_export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_monster_seemore_export` (
  `ats_monster_seemore_export_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_monster_seemore_export_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `ats_monster_seemore_export_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_monster_seemore_export_type` varchar(255) NOT NULL,
  `ats_monster_seemore_export_status` varchar(255) DEFAULT NULL,
  `ats_monster_seemore_export_file_name` varchar(255) DEFAULT NULL,
  `ats_monster_seemore_export_message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ats_monster_seemore_export_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_monster_seemore_resume`
--

DROP TABLE IF EXISTS `ats_monster_seemore_resume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_monster_seemore_resume` (
  `ats_monster_seemore_resume_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_monster_seemore_resume_date_created` datetime NOT NULL,
  `ats_monster_seemore_resume_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ats_jobseeker_id` int(10) unsigned NOT NULL,
  `ats_resume_id` int(10) unsigned NOT NULL,
  `ats_monster_seemore_resume_state` tinyint(1) unsigned NOT NULL,
  `ats_monster_seemore_resume_board_id` int(10) unsigned DEFAULT NULL,
  `ats_monster_seemore_resume_reference_id` varchar(255) NOT NULL,
  PRIMARY KEY (`ats_monster_seemore_resume_id`),
  KEY `jobseeker` (`ats_jobseeker_id`),
  KEY `resume` (`ats_resume_id`),
  KEY `state` (`ats_monster_seemore_resume_state`),
  KEY `reference` (`ats_monster_seemore_resume_reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_monster_seemore_talentdashboard_report`
--

DROP TABLE IF EXISTS `ats_monster_seemore_talentdashboard_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_monster_seemore_talentdashboard_report` (
  `ats_monster_seemore_talentdashboard_report_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_monster_seemore_talentdashboard_report_date_created` datetime NOT NULL,
  `ats_monster_seemore_talentdashboard_report_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ats_monster_seemore_talentdashboard_report_name` varchar(100) NOT NULL,
  `ats_monster_seemore_talentdashboard_report_search_string` text,
  `ats_monster_seemore_talentdashboard_report_result` text,
  `ats_monster_seemore_talentdashboard_report_is_top` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_monster_seemore_talentdashboard_report_creator_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ats_monster_seemore_talentdashboard_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_monster_seemore_talentdashboard_report_country`
--

DROP TABLE IF EXISTS `ats_monster_seemore_talentdashboard_report_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_monster_seemore_talentdashboard_report_country` (
  `ats_monster_seemore_talentdashboard_report_country_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_monster_seemore_talentdashboard_report_country_date_created` datetime NOT NULL,
  `ats_monster_seemore_talentdashboard_report_country_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ats_monster_seemore_talentdashboard_report_country_code` varchar(100) NOT NULL,
  `ats_monster_seemore_talentdashboard_report_country_name` varchar(100) NOT NULL,
  `ats_monster_seemore_talentdashboard_report_type_list` int(11) unsigned NOT NULL,
  PRIMARY KEY (`ats_monster_seemore_talentdashboard_report_country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_monster_seemore_talentdashboard_report_type`
--

DROP TABLE IF EXISTS `ats_monster_seemore_talentdashboard_report_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_monster_seemore_talentdashboard_report_type` (
  `ats_monster_seemore_talentdashboard_report_type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_monster_seemore_talentdashboard_report_type_date_created` datetime NOT NULL,
  `ats_monster_seemore_talentdashboard_report_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ats_monster_seemore_talentdashboard_report_type_list` int(11) unsigned NOT NULL,
  `ats_monster_seemore_talentdashboard_report_type_order` int(11) unsigned NOT NULL,
  `ats_monster_seemore_talentdashboard_report_type_code` varchar(100) NOT NULL,
  `ats_monster_seemore_talentdashboard_report_type_name` varchar(100) NOT NULL,
  `ats_monster_seemore_talentdashboard_report_type_default_chart` enum('bar','column','pie') NOT NULL,
  `ats_monster_seemore_talentdashboard_report_type_disabled_charts` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ats_monster_seemore_talentdashboard_report_type_id`),
  KEY `ats_monster_seemore_talentdashboard_report_type_list` (`ats_monster_seemore_talentdashboard_report_type_list`),
  KEY `ats_monster_seemore_talentdashboard_report_type_order` (`ats_monster_seemore_talentdashboard_report_type_order`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_monster_seemore_user`
--

DROP TABLE IF EXISTS `ats_monster_seemore_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_monster_seemore_user` (
  `ats_monster_seemore_user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_monster_seemore_user_date_created` datetime NOT NULL,
  `ats_monster_seemore_user_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ats_integration_monster_users_id` int(11) unsigned NOT NULL,
  `ats_monster_seemore_id` int(10) unsigned NOT NULL,
  `ats_monster_seemore_user_cat` varchar(255) NOT NULL,
  PRIMARY KEY (`ats_monster_seemore_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_note`
--

DROP TABLE IF EXISTS `ats_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_note` (
  `ats_note_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_transaction_id` int(11) NOT NULL DEFAULT '0',
  `ats_note_text` text,
  `ats_user_id` int(11) DEFAULT '0',
  `ats_note_private` tinyint(1) unsigned DEFAULT NULL,
  `ats_note_deleted` tinyint(1) unsigned DEFAULT '0',
  `ats_note_date_created` datetime DEFAULT NULL,
  `ats_note_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ats_note_id`,`ats_transaction_id`),
  KEY `ats_note_deleted_idx` (`ats_note_deleted`),
  KEY `ats_note_private_idx` (`ats_note_private`),
  KEY `ats_transaction_id_idx` (`ats_transaction_id`),
  KEY `ats_user_id_idx` (`ats_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_offer`
--

DROP TABLE IF EXISTS `ats_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_offer` (
  `ats_offer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_offer_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ats_offer_date_created` datetime NOT NULL,
  `ats_offer_candidate_id` int(11) unsigned NOT NULL,
  `ats_offer_status_id` int(11) unsigned NOT NULL,
  `ats_offer_creator_id` int(11) unsigned NOT NULL,
  `ats_offer_salary` decimal(12,2) NOT NULL DEFAULT '0.00',
  `ats_offer_salary_type` enum('salary','hourly') NOT NULL DEFAULT 'salary',
  `ats_offer_start_date` date NOT NULL,
  `ats_offer_letter_text` mediumtext,
  `ats_offer_final_disposition` enum('','approve','reject') NOT NULL DEFAULT '',
  `ats_offer_show_candidate` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ats_offer_candidate_disposition` enum('','accept','reject','reject_permanent') DEFAULT NULL,
  `ats_offer_candidate_disposition_date` date DEFAULT NULL,
  `ats_offer_candidate_disposition_comment` varchar(255) DEFAULT NULL,
  `ats_offer_sent_date` datetime DEFAULT NULL,
  `ats_offer_archived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_currency_id` int(11) unsigned DEFAULT NULL,
  `ats_offer_letter_template_id` int(10) unsigned DEFAULT NULL,
  `hua_dynamic_form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_offer_notification_only` tinyint(1) unsigned DEFAULT NULL,
  `ats_offer_letter_cc` text,
  `ats_offer_letter_header_id` int(11) unsigned DEFAULT NULL,
  `ats_offer_letter_footer_id` int(11) unsigned DEFAULT NULL,
  `ats_offer_letter_bcc` text,
  `ats_offer_letter_subject` text,
  PRIMARY KEY (`ats_offer_id`),
  KEY `ats_offer_candidate_id` (`ats_offer_candidate_id`),
  KEY `ats_currency_id` (`ats_currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_offer_approval_chain`
--

DROP TABLE IF EXISTS `ats_offer_approval_chain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_offer_approval_chain` (
  `hua_approval_chain_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_approval_chain_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hua_approval_chain_date_created` datetime DEFAULT NULL,
  `hua_approval_chain_target_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_approval_chain_type` enum('serial','parallel') DEFAULT NULL,
  `hua_approval_chain_approval` enum('','approved','rejected') NOT NULL DEFAULT '',
  `hua_approval_chain_final_approval_date` datetime DEFAULT NULL,
  `hua_approval_chain_requestor_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`hua_approval_chain_id`),
  KEY `hua_approval_chain_target_id` (`hua_approval_chain_target_id`),
  KEY `chain_id_target_id_idx` (`hua_approval_chain_id`,`hua_approval_chain_target_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_offer_approval_chain_member`
--

DROP TABLE IF EXISTS `ats_offer_approval_chain_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_offer_approval_chain_member` (
  `hua_approval_chain_member_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_approval_chain_member_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hua_approval_chain_member_date_created` datetime DEFAULT NULL,
  `hua_approval_chain_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_approval_chain_member_target` varchar(255) NOT NULL,
  `hua_approval_chain_member_type` varchar(255) NOT NULL,
  `hua_approval_chain_member_order` int(11) NOT NULL DEFAULT '0',
  `hua_approval_chain_member_approval` enum('','approved','rejected') NOT NULL DEFAULT '',
  `hua_approval_chain_member_comment` text,
  `hua_approval_chain_member_final_approval_date` datetime DEFAULT NULL,
  `hua_approval_chain_member_approved_by` varchar(255) DEFAULT NULL,
  `hua_approval_chain_member_hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_approval_chain_member_id`),
  KEY `hua_approval_chain_id` (`hua_approval_chain_id`),
  KEY `hua_approval_chain_member_target` (`hua_approval_chain_member_target`),
  KEY `hua_approval_chain_member_type` (`hua_approval_chain_member_type`),
  KEY `hua_approval_chain_member_approved_by` (`hua_approval_chain_member_approved_by`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_offer_approval_transaction`
--

DROP TABLE IF EXISTS `ats_offer_approval_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_offer_approval_transaction` (
  `ats_offer_approval_transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_offer_approval_transaction_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ats_offer_approval_transaction_date_created` datetime DEFAULT NULL,
  `ats_offer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_offer_approval_transaction_approver_decision` enum('','approved','rejected') NOT NULL DEFAULT '',
  `ats_offer_approval_transaction_user_name` varchar(255) DEFAULT NULL,
  `ats_offer_approval_transaction_on_behalf_of` varchar(255) DEFAULT NULL,
  `ats_offer_approval_transaction_offer_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ats_offer_approval_transaction_id`),
  KEY `ats_offer_id` (`ats_offer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_offer_approver`
--

DROP TABLE IF EXISTS `ats_offer_approver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_offer_approver` (
  `ats_offer_approver_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_offer_approver_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_offer_approver_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_offer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_offer_approver_disposition` enum('','approve','reject') NOT NULL,
  `ats_offer_approver_disposition_comment` char(255) NOT NULL,
  `ats_offer_approver_order` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_offer_approver_id`),
  KEY `ats_offer_id` (`ats_offer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_offer_benefit`
--

DROP TABLE IF EXISTS `ats_offer_benefit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_offer_benefit` (
  `ats_offer_benefit_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_offer_benefit_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ats_offer_benefit_date_created` datetime NOT NULL,
  `ats_offer_id` int(11) unsigned NOT NULL,
  `ats_offer_benefit_name` varchar(255) NOT NULL,
  `hua_benefit_category_id` int(11) unsigned NOT NULL,
  `ats_offer_benefit_value` varchar(255) DEFAULT NULL,
  `ats_offer_benefit_additional_data` varchar(255) DEFAULT NULL,
  `ats_offer_benefit_start_date` datetime DEFAULT NULL,
  `hua_benefit_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ats_offer_benefit_id`),
  KEY `ats_offer_id` (`ats_offer_id`),
  KEY `hua_benefit_id` (`hua_benefit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_offer_benefit_rejection`
--

DROP TABLE IF EXISTS `ats_offer_benefit_rejection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_offer_benefit_rejection` (
  `ats_offer_benefit_rejection_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_offer_benefit_rejection_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_offer_benefit_rejection_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_offer_benefit_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_approval_chain_member_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_offer_benefit_rejection_comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ats_offer_benefit_rejection_id`),
  KEY `ats_offer_benefit_id` (`ats_offer_benefit_id`),
  KEY `hua_approval_chain_member_id` (`hua_approval_chain_member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_offer_letter_attachment`
--

DROP TABLE IF EXISTS `ats_offer_letter_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_offer_letter_attachment` (
  `ats_offer_letter_attachment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_offer_letter_attachment_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_offer_letter_attachment_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_offer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_file_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_offer_letter_attachment_id`),
  KEY `ats_offer_id` (`ats_offer_id`),
  KEY `hua_file_id` (`hua_file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_offer_resubmission_package`
--

DROP TABLE IF EXISTS `ats_offer_resubmission_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_offer_resubmission_package` (
  `ats_offer_resubmission_package_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_offer_resubmission_package_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_offer_resubmission_package_date_created` datetime DEFAULT NULL,
  `ats_offer_id` int(11) NOT NULL,
  `hua_benefit_package_id` int(11) NOT NULL,
  PRIMARY KEY (`ats_offer_resubmission_package_id`),
  KEY `ats_offer_id` (`ats_offer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_offer_status`
--

DROP TABLE IF EXISTS `ats_offer_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_offer_status` (
  `ats_offer_status_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_offer_status_value` varchar(255) NOT NULL,
  `ats_offer_status_order` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_offer_status_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_offer_status_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_offer_status_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_offer_status_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_offer_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_offer_team`
--

DROP TABLE IF EXISTS `ats_offer_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_offer_team` (
  `ats_offer_team_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_offer_team_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ats_offer_team_date_created` datetime NOT NULL,
  `ats_offer_id` int(11) unsigned NOT NULL,
  `ats_team_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`ats_offer_team_id`),
  KEY `ats_offer_id` (`ats_offer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_onboarding`
--

DROP TABLE IF EXISTS `ats_onboarding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_onboarding` (
  `ats_onboarding_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_onboarding_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_onboarding_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_onboarding_date_initiated` datetime DEFAULT NULL,
  `ats_onboarding_date_completed` datetime DEFAULT NULL,
  `ats_onboarding_archive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_onboarding_initiated_by` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_onboarding_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`),
  KEY `ats_onboarding_archive` (`ats_onboarding_archive`,`hua_user_id`,`ats_requisition_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_onboarding_bundle`
--

DROP TABLE IF EXISTS `ats_onboarding_bundle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_onboarding_bundle` (
  `ats_onboarding_bundle_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_onboarding_bundle_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_onboarding_bundle_date_created` datetime NOT NULL,
  `ats_onboarding_bundle_creator_id` int(10) NOT NULL DEFAULT '0',
  `ats_onboarding_bundle_name` varchar(255) NOT NULL,
  `ats_onboarding_bundle_description` varchar(255) NOT NULL,
  `ats_onboarding_bundle_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ats_onboarding_bundle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_onboarding_bundle_association`
--

DROP TABLE IF EXISTS `ats_onboarding_bundle_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_onboarding_bundle_association` (
  `ats_onboarding_bundle_association_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_onboarding_bundle_association_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_onboarding_bundle_association_date_created` datetime NOT NULL,
  `ats_onboarding_bundle_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_onboarding_bundle_association_type` varchar(255) NOT NULL,
  `ats_onboarding_bundle_association_value` varchar(255) NOT NULL,
  PRIMARY KEY (`ats_onboarding_bundle_association_id`),
  KEY `ats_onboarding_bundle_id` (`ats_onboarding_bundle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_onboarding_bundle_document`
--

DROP TABLE IF EXISTS `ats_onboarding_bundle_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_onboarding_bundle_document` (
  `ats_onboarding_bundle_document_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_onboarding_bundle_document_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_onboarding_bundle_document_date_created` datetime NOT NULL,
  `ats_onboarding_bundle_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_form_id` int(10) unsigned DEFAULT NULL,
  `ats_onboarding_bundle_document_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_onboarding_document_type_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_onboarding_bundle_document_due` tinyint(1) DEFAULT NULL,
  `ats_onboarding_bundle_document_due_days` int(10) DEFAULT NULL,
  PRIMARY KEY (`ats_onboarding_bundle_document_id`),
  KEY `ats_onboarding_bundle_id` (`ats_onboarding_bundle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_onboarding_bundle_document_recipient`
--

DROP TABLE IF EXISTS `ats_onboarding_bundle_document_recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_onboarding_bundle_document_recipient` (
  `ats_onboarding_bundle_document_recipient_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_onboarding_bundle_document_recipient_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `ats_onboarding_bundle_document_recipient_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_onboarding_bundle_document_id` int(10) unsigned NOT NULL,
  `ats_onboarding_bundle_document_recipient_target` varchar(255) NOT NULL,
  PRIMARY KEY (`ats_onboarding_bundle_document_recipient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_onboarding_custom_document`
--

DROP TABLE IF EXISTS `ats_onboarding_custom_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_onboarding_custom_document` (
  `ats_onboarding_custom_document_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_onboarding_custom_document_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_onboarding_custom_document_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_onboarding_custom_document_template` varchar(255) NOT NULL,
  `ats_onboarding_custom_document_instructions` varchar(255) NOT NULL,
  `ats_onboarding_document_file_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_onboarding_custom_document_process_file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ats_onboarding_custom_document_id`),
  KEY `ats_onboarding_custom_document_template` (`ats_onboarding_custom_document_template`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_onboarding_document_answer`
--

DROP TABLE IF EXISTS `ats_onboarding_document_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_onboarding_document_answer` (
  `ats_onboarding_document_answer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_onboarding_document_answer_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_onboarding_document_answer_date_created` datetime DEFAULT NULL,
  `ats_onboarding_document_answer_field_name` varchar(255) NOT NULL,
  `ats_onboarding_document_answer_field_value` varchar(255) NOT NULL,
  `ats_onboarding_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_onboarding_document_file_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_onboarding_document_answer_id`),
  KEY `ats_onboarding_document_answer_field_name` (`ats_onboarding_document_answer_field_name`),
  KEY `ats_onboarding_document_answer_field_value` (`ats_onboarding_document_answer_field_value`),
  KEY `ats_onboarding_id` (`ats_onboarding_id`,`ats_onboarding_document_file_id`),
  KEY `ats_onboarding_document_file_id` (`ats_onboarding_document_file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_onboarding_document_esignature`
--

DROP TABLE IF EXISTS `ats_onboarding_document_esignature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_onboarding_document_esignature` (
  `ats_onboarding_document_esignature_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_onboarding_document_esignature_date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ats_onboarding_document_esignature_table_name` varchar(255) DEFAULT NULL,
  `ats_onboarding_document_esignature_reference_name` varchar(255) DEFAULT NULL,
  `ats_onboarding_document_esignature_reference_id` int(11) unsigned NOT NULL,
  `ats_onboarding_document_esignature_field_name` varchar(255) DEFAULT NULL,
  `ats_onboarding_document_esignature_field_value` varchar(255) DEFAULT NULL,
  `ats_onboarding_document_file_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`ats_onboarding_document_esignature_id`),
  KEY `ats_onboarding_document_esignature_table_name` (`ats_onboarding_document_esignature_table_name`),
  KEY `ats_onboarding_document_esignature_reference_name` (`ats_onboarding_document_esignature_reference_name`),
  KEY `ats_onboarding_document_esignature_reference_id` (`ats_onboarding_document_esignature_reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_onboarding_document_file`
--

DROP TABLE IF EXISTS `ats_onboarding_document_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_onboarding_document_file` (
  `ats_onboarding_document_file_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_onboarding_document_file_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_onboarding_document_file_date_created` datetime NOT NULL,
  `ats_onboarding_document_file_name` varchar(255) NOT NULL,
  `hua_attachment_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_onboarding_document_file_protected` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_onboarding_document_file_valid_from` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_onboarding_document_file_valid_to` datetime DEFAULT NULL,
  `ats_onboarding_document_type_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_onboarding_document_file_id`),
  KEY `hua_attachment_id` (`hua_attachment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_onboarding_document_routed`
--

DROP TABLE IF EXISTS `ats_onboarding_document_routed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_onboarding_document_routed` (
  `ats_onboarding_document_routed_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_onboarding_document_routed_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_onboarding_document_routed_date_created` datetime NOT NULL,
  `ats_onboarding_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_onboarding_document_file_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_onboarding_document_routed_date_sent` datetime NOT NULL,
  `ats_onboarding_document_routed_date_completed` datetime DEFAULT NULL,
  `ats_onboarding_document_routed_signature` varchar(255) DEFAULT NULL,
  `hua_user_id` int(11) unsigned DEFAULT NULL,
  `ats_recipient_id` int(11) unsigned DEFAULT NULL,
  `ats_onboarding_document_routed_email` varchar(255) DEFAULT NULL,
  `ats_onboarding_document_routed_primary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_onboarding_document_routed_by` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_onboarding_document_routed_require_signature` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ats_onboarding_document_routed_due` tinyint(1) DEFAULT NULL,
  `ats_onboarding_document_routed_due_days` int(10) DEFAULT NULL,
  PRIMARY KEY (`ats_onboarding_document_routed_id`),
  KEY `ats_onboarding_id` (`ats_onboarding_id`,`ats_onboarding_document_file_id`),
  KEY `ats_onboarding_document_file_id` (`ats_onboarding_document_file_id`),
  KEY `ats_onboarding_document_routed_by` (`ats_onboarding_document_routed_by`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `ats_recipient_id` (`ats_recipient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_onboarding_document_type`
--

DROP TABLE IF EXISTS `ats_onboarding_document_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_onboarding_document_type` (
  `ats_onboarding_document_type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_onboarding_document_type_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_onboarding_document_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_onboarding_document_type_name` varchar(255) NOT NULL DEFAULT '',
  `ats_onboarding_document_type_active` tinyint(1) NOT NULL DEFAULT '1',
  `ats_onboarding_document_type_public` tinyint(1) NOT NULL DEFAULT '1',
  `ats_onboarding_id` int(10) NOT NULL DEFAULT '0',
  `ats_onboarding_document_type_require_signature` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ats_onboarding_document_type_signature_protected` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_onboarding_document_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_onboarding_form_routed`
--

DROP TABLE IF EXISTS `ats_onboarding_form_routed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_onboarding_form_routed` (
  `ats_onboarding_form_routed_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_onboarding_form_routed_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_onboarding_form_routed_date_created` datetime NOT NULL,
  `ats_onboarding_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_form_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_dynamic_form_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_onboarding_form_routed_date_sent` datetime NOT NULL,
  `ats_onboarding_form_routed_date_completed` datetime DEFAULT NULL,
  `ats_onboarding_form_routed_signature` varchar(255) DEFAULT NULL,
  `hua_user_id` int(11) unsigned DEFAULT NULL,
  `ats_recipient_id` int(11) unsigned DEFAULT NULL,
  `ats_onboarding_form_routed_email` varchar(255) DEFAULT NULL,
  `ats_onboarding_form_routed_primary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_onboarding_form_routed_by` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_onboarding_form_routed_due` tinyint(1) DEFAULT NULL,
  `ats_onboarding_form_routed_due_days` int(10) DEFAULT NULL,
  PRIMARY KEY (`ats_onboarding_form_routed_id`),
  KEY `ats_onboarding_id` (`ats_onboarding_id`),
  KEY `hua_form_id` (`hua_form_id`),
  KEY `hua_dynamic_form_id` (`hua_dynamic_form_id`),
  KEY `ats_onboarding_form_routed_by` (`ats_onboarding_form_routed_by`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `ats_recipient_id` (`ats_recipient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_onboarding_form_routed_recipient`
--

DROP TABLE IF EXISTS `ats_onboarding_form_routed_recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_onboarding_form_routed_recipient` (
  `ats_onboarding_form_routed_recipient_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_onboarding_form_routed_recipient_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `ats_onboarding_form_routed_recipient_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_onboarding_form_routed_id` int(10) unsigned NOT NULL,
  `ats_onboarding_form_routed_recipient_target` varchar(255) NOT NULL,
  `ats_onboarding_form_routed_recipient_hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ats_onboarding_form_routed_recipient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_onboarding_task`
--

DROP TABLE IF EXISTS `ats_onboarding_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_onboarding_task` (
  `ats_onboarding_task_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_onboarding_task_date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ats_onboarding_task_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ats_onboarding_id` int(11) DEFAULT NULL,
  `ats_onboarding_task_name` varchar(255) DEFAULT NULL,
  `ats_onboarding_task_desc` text,
  `ats_onboarding_task_created_by` int(11) DEFAULT NULL,
  `ats_onboarding_task_active` tinyint(1) NOT NULL DEFAULT '1',
  `ats_onboarding_task_due` tinyint(1) DEFAULT NULL,
  `ats_onboarding_task_due_days` int(10) DEFAULT NULL,
  PRIMARY KEY (`ats_onboarding_task_id`),
  KEY `ats_onboarding_id` (`ats_onboarding_id`),
  KEY `ats_onboarding_task_created_by` (`ats_onboarding_task_created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_onboarding_task_assignment`
--

DROP TABLE IF EXISTS `ats_onboarding_task_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_onboarding_task_assignment` (
  `ats_onboarding_task_assignment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_onboarding_task_assignment_date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ats_onboarding_task_assignment_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ats_onboarding_task_id` int(11) DEFAULT NULL,
  `ats_onboarding_id` int(11) DEFAULT NULL,
  `ats_onboarding_task_completed_by` varchar(255) DEFAULT NULL,
  `ats_onboarding_task_assignment_email` varchar(255) DEFAULT NULL,
  `ats_onboarding_task_assignment_date_completed` timestamp NULL DEFAULT NULL,
  `ats_onboarding_task_assignment_by` int(11) DEFAULT NULL,
  `ats_onboarding_task_assignment_target` int(11) DEFAULT NULL,
  `ats_onboarding_task_assignment_due` tinyint(1) DEFAULT NULL,
  `ats_onboarding_task_assignment_due_days` int(10) DEFAULT NULL,
  `ats_onboarding_task_assignment_hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ats_onboarding_task_assignment_id`),
  KEY `ats_onboarding_task_id` (`ats_onboarding_task_id`),
  KEY `ats_onboarding_id` (`ats_onboarding_id`),
  KEY `ats_onboarding_task_assignment_by` (`ats_onboarding_task_assignment_by`),
  KEY `ats_onboarding_task_assignment_hash` (`ats_onboarding_task_assignment_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_onboarding_task_recipient`
--

DROP TABLE IF EXISTS `ats_onboarding_task_recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_onboarding_task_recipient` (
  `ats_onboarding_task_recipient_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_onboarding_task_recipient_date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ats_onboarding_task_recipient_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ats_onboarding_task_id` int(11) DEFAULT NULL,
  `ats_onboarding_task_recipient` int(11) DEFAULT NULL,
  `ats_onboarding_task_recipient_type` varchar(255) DEFAULT NULL,
  `ats_onboarding_task_recipient_newhire` int(11) DEFAULT NULL,
  `ats_onboarding_task_recipient_external` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ats_onboarding_task_recipient_id`),
  KEY `ats_onboarding_task_id` (`ats_onboarding_task_id`),
  KEY `ats_onboarding_task_recipient_newhire` (`ats_onboarding_task_recipient_newhire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_onboarding_welcome_page`
--

DROP TABLE IF EXISTS `ats_onboarding_welcome_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_onboarding_welcome_page` (
  `ats_onboarding_welcome_page_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_org_level_id` int(11) unsigned DEFAULT NULL,
  `ats_onboarding_welcome_page_content` text,
  `ats_onboarding_welcome_page_video_title` varchar(255) DEFAULT NULL,
  `ats_onboarding_welcome_page_video_link` varchar(255) DEFAULT NULL,
  `ats_onboarding_welcome_page_video_desc` text,
  `ats_onboarding_welcome_page_creation_date` datetime DEFAULT '0000-00-00 00:00:00',
  `ats_onboarding_welcome_page_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ats_onboarding_welcome_page_id`),
  UNIQUE KEY `hua_welcome_page_to_org` (`hua_org_level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_outlook_address_type`
--

DROP TABLE IF EXISTS `ats_outlook_address_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_outlook_address_type` (
  `ats_outlook_address_type_id` int(10) NOT NULL AUTO_INCREMENT,
  `ats_outlook_address_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_outlook_address_type_date_created` datetime DEFAULT NULL,
  `ats_outlook_address_type_name` varchar(255) DEFAULT NULL,
  `ats_outlook_address_type_macro` varchar(255) DEFAULT NULL,
  `hua_setting_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ats_outlook_address_type_id`),
  KEY `hua_setting_id` (`hua_setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_outlook_phone_type`
--

DROP TABLE IF EXISTS `ats_outlook_phone_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_outlook_phone_type` (
  `ats_outlook_phone_type_id` int(10) NOT NULL AUTO_INCREMENT,
  `ats_outlook_phone_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_outlook_phone_type_date_created` datetime DEFAULT NULL,
  `ats_outlook_phone_type_name` varchar(255) DEFAULT NULL,
  `ats_outlook_phone_type_macro` varchar(255) DEFAULT NULL,
  `hua_setting_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ats_outlook_phone_type_id`),
  KEY `hua_setting_id` (`hua_setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_pending_batch_resume`
--

DROP TABLE IF EXISTS `ats_pending_batch_resume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_pending_batch_resume` (
  `ats_pending_batch_resume_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_pending_batch_resume_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_pending_batch_resume_date_created` datetime NOT NULL,
  `ats_pending_batch_resume_recipient_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_resume_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_pending_batch_resume_system_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_pending_batch_resume_use_branding` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_pending_batch_resume_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_personalized_setting`
--

DROP TABLE IF EXISTS `ats_personalized_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_personalized_setting` (
  `ats_personalized_setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_personalized_setting_category_id` int(11) DEFAULT NULL,
  `ats_personalized_setting_name` char(255) DEFAULT NULL,
  `ats_personalized_setting_description` char(255) DEFAULT NULL,
  `ats_personalized_setting_format` enum('checkbox','picklist','text') DEFAULT NULL,
  `ats_personalized_setting_active` tinyint(3) unsigned DEFAULT NULL,
  `ats_personalized_setting_creator_id` int(11) DEFAULT NULL,
  `ats_personalized_setting_date_created` datetime DEFAULT NULL,
  `ats_personalized_setting_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_personalized_setting_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_personalized_setting_id`),
  KEY `ats_personalized_setting_category_id` (`ats_personalized_setting_category_id`),
  KEY `ats_personalized_setting_creator_id` (`ats_personalized_setting_creator_id`),
  KEY `ats_personalized_setting_name` (`ats_personalized_setting_name`)
) ENGINE=InnoDB AUTO_INCREMENT=387 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_personalized_setting_category`
--

DROP TABLE IF EXISTS `ats_personalized_setting_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_personalized_setting_category` (
  `ats_personalized_setting_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_personalized_setting_category_name` char(255) DEFAULT NULL,
  `ats_personalized_setting_category_description` char(255) DEFAULT NULL,
  `ats_personalized_setting_category_active` tinyint(3) unsigned DEFAULT NULL,
  `ats_personalized_setting_category_sort_order` smallint(6) DEFAULT '0',
  `ats_personalized_setting_category_creator_id` int(11) DEFAULT NULL,
  `ats_personalized_setting_category_date_created` datetime DEFAULT NULL,
  `ats_personalized_setting_category_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_personalized_setting_category_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_personalized_setting_category_id`),
  KEY `ats_personalized_setting_category_active` (`ats_personalized_setting_category_active`),
  KEY `ats_personalized_setting_category_creator_id` (`ats_personalized_setting_category_creator_id`),
  KEY `ats_personalized_setting_category_name` (`ats_personalized_setting_category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_personalized_setting_option`
--

DROP TABLE IF EXISTS `ats_personalized_setting_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_personalized_setting_option` (
  `ats_personalized_setting_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_personalized_setting_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_personalized_setting_option_sequence` smallint(5) unsigned DEFAULT NULL,
  `ats_personalized_setting_option_value` char(255) DEFAULT NULL,
  `ats_personalized_setting_option_creator_id` int(11) DEFAULT NULL,
  `ats_personalized_setting_option_date_created` datetime DEFAULT NULL,
  `ats_personalized_setting_option_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_personalized_setting_option_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_personalized_setting_option_id`),
  KEY `ats_personalized_setting_id` (`ats_personalized_setting_id`),
  KEY `ats_personalized_setting_option_creator_id` (`ats_personalized_setting_option_creator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_personalized_setting_user_value`
--

DROP TABLE IF EXISTS `ats_personalized_setting_user_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_personalized_setting_user_value` (
  `ats_personalized_setting_user_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_personalized_setting_id` int(11) NOT NULL DEFAULT '0',
  `ats_personalized_setting_user_value` char(255) DEFAULT NULL,
  `ats_user_id` int(11) DEFAULT NULL,
  `ats_personalized_setting_user_value_sequence` smallint(5) unsigned DEFAULT NULL,
  `ats_personalized_setting_user_value_date_created` datetime DEFAULT NULL,
  `ats_personalized_setting_user_value_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_personalized_setting_user_value_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_personalized_setting_user_value_id`),
  KEY `ats_personalized_setting_id` (`ats_personalized_setting_id`),
  KEY `ats_personalized_setting_user_value_sequence` (`ats_personalized_setting_user_value_sequence`),
  KEY `ats_user_id` (`ats_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22143 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_pool`
--

DROP TABLE IF EXISTS `ats_pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_pool` (
  `ats_pool_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_pool_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_pool_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_pool_name` varchar(255) NOT NULL,
  `ats_pool_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_user_id` int(10) unsigned DEFAULT NULL,
  `ats_pool_order` smallint(5) unsigned NOT NULL,
  `ats_pool_private` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_pool_id`),
  KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_pool_questionnaire`
--

DROP TABLE IF EXISTS `ats_pool_questionnaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_pool_questionnaire` (
  `ats_pool_questionnaire_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_pool_questionnaire_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `ats_pool_questionnaire_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_pool_id` int(10) unsigned NOT NULL,
  `ats_pool_questionnaire_creator` int(10) unsigned NOT NULL,
  `hua_test_id` int(10) unsigned NOT NULL,
  `ats_pool_questionnaire_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_pool_questionnaire_id`),
  KEY `ats_pool_id` (`ats_pool_id`),
  KEY `ats_pool_questionnaire_creator` (`ats_pool_questionnaire_creator`),
  KEY `hua_test_id` (`hua_test_id`),
  KEY `ats_pool_questionnaire_deleted` (`ats_pool_questionnaire_deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_pool_questionnaire_taker`
--

DROP TABLE IF EXISTS `ats_pool_questionnaire_taker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_pool_questionnaire_taker` (
  `ats_pool_questionnaire_taker_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_pool_questionnaire_taker_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `ats_pool_questionnaire_taker_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_pool_questionnaire_id` int(10) unsigned NOT NULL,
  `ats_pool_questionnaire_taker_updated_by` int(10) unsigned NOT NULL,
  `hua_test_taker_id` int(10) unsigned NOT NULL,
  `ats_jobseeker_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ats_pool_questionnaire_taker_id`),
  KEY `ats_pool_questionnaire_id` (`ats_pool_questionnaire_id`),
  KEY `ats_pool_questionnaire_taker_updated_by` (`ats_pool_questionnaire_taker_updated_by`),
  KEY `hua_test_taker_id` (`hua_test_taker_id`),
  KEY `ats_jobseeker_id` (`ats_jobseeker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_pool_to_ats_search_agent`
--

DROP TABLE IF EXISTS `ats_pool_to_ats_search_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_pool_to_ats_search_agent` (
  `ats_pool_to_ats_search_agent_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_pool_to_ats_search_agent_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `ats_pool_to_ats_search_agent_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_pool_id` int(10) unsigned NOT NULL,
  `ats_search_agent_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ats_pool_to_ats_search_agent_id`),
  KEY `ats_pool_id` (`ats_pool_id`),
  KEY `ats_search_agent_id` (`ats_search_agent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_pool_to_ats_team`
--

DROP TABLE IF EXISTS `ats_pool_to_ats_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_pool_to_ats_team` (
  `ats_pool_to_ats_team_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_pool_to_ats_team_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `ats_pool_to_ats_team_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_pool_id` int(10) unsigned NOT NULL,
  `ats_team_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ats_pool_to_ats_team_id`),
  KEY `ats_pool_id` (`ats_pool_id`),
  KEY `ats_team_id` (`ats_team_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_recipient`
--

DROP TABLE IF EXISTS `ats_recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_recipient` (
  `ats_recipient_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_recipient_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_recipient_date_created` datetime DEFAULT NULL,
  `ats_recipient_title` char(255) NOT NULL,
  PRIMARY KEY (`ats_recipient_id`),
  KEY `ats_recipient_title` (`ats_recipient_title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_recipient_member`
--

DROP TABLE IF EXISTS `ats_recipient_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_recipient_member` (
  `ats_recipient_member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_recipient_member_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_recipient_member_date_created` datetime DEFAULT NULL,
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_recipient_member_name` varchar(255) NOT NULL,
  `ats_recipient_member_email` varchar(255) NOT NULL,
  `ats_recipient_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_recipient_member_id`),
  KEY `ats_recipient_member_email` (`ats_recipient_member_email`),
  KEY `ats_recipient_member_name` (`ats_recipient_member_name`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `ats_recipient_id` (`ats_recipient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_referral_source`
--

DROP TABLE IF EXISTS `ats_referral_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_referral_source` (
  `ats_referral_source_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_referral_source_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_referral_source_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_referral_source_name` varchar(255) NOT NULL,
  `ats_referral_source_order` int(10) NOT NULL DEFAULT '0',
  `ats_referral_source_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `ats_referral_source_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_referral_source_referer_detect` tinyint(1) unsigned DEFAULT '0',
  `ats_referral_source_referer_url` varchar(255) NOT NULL,
  `ats_referral_source_is_social_media` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`ats_referral_source_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition`
--

DROP TABLE IF EXISTS `ats_requisition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition` (
  `ats_requisition_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_company_id` int(10) NOT NULL DEFAULT '0',
  `hua_division_id` int(10) NOT NULL DEFAULT '0',
  `hua_org_level_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_job_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_hires_needed` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_status_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_travel_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_exemption_id` int(10) unsigned DEFAULT '0',
  `ats_requisition_bypass_approval` tinyint(1) unsigned DEFAULT '0',
  `ats_requisition_eeoc_group_id` int(10) unsigned DEFAULT '0',
  `ats_requisition_eeoc_category_id` int(10) unsigned DEFAULT '0',
  `ats_requisition_hiring_manager_id` int(10) unsigned DEFAULT '0',
  `ats_requisition_template` smallint(5) unsigned DEFAULT '0',
  `ats_requisition_creator_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_requisition_title` varchar(255) NOT NULL,
  `ats_requisition_description` text,
  `hua_job_id` int(10) unsigned DEFAULT NULL,
  `ats_requisition_posted_date` datetime DEFAULT NULL,
  `ats_requisition_request_global` tinyint(1) unsigned DEFAULT NULL,
  `ats_requisition_recruiter_id` int(10) unsigned DEFAULT NULL,
  `ats_requisition_level_id` int(10) unsigned DEFAULT NULL,
  `ats_workflow_id` int(10) unsigned DEFAULT NULL,
  `ats_education_level_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_draft` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_bonus` varchar(255) DEFAULT NULL,
  `ats_requisition_date_required` date DEFAULT NULL,
  `hua_salary_grade_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_offer_relocation` tinyint(1) unsigned DEFAULT NULL,
  `ats_requisition_shift_type_id` int(10) unsigned DEFAULT NULL,
  `hua_dynamic_form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_internal_screening_questionnaire_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ats_requisition_external_screening_questionnaire_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ats_requisition_views` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_fill_date` datetime DEFAULT NULL,
  `ats_requisition_ofccp_id` varchar(255) DEFAULT NULL,
  `ats_requisition_ofccp_details` text,
  `ats_requisition_exact_wage_amount` varchar(255) DEFAULT NULL,
  `ats_requisition_code` varchar(255) DEFAULT NULL,
  `ats_requisition_position_type` int(11) NOT NULL DEFAULT '0',
  `ats_requisition_requirements` text,
  `ats_requisition_aa_plan_id` varchar(255) DEFAULT NULL,
  `ats_requisition_routed_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_lens_key` varchar(255) DEFAULT NULL,
  `ats_requisition_personality_assessment` tinyint(1) DEFAULT NULL,
  `ats_requisition_lens_failed` tinyint(1) unsigned DEFAULT '0',
  `ats_requisition_social_media_shared_facebook` tinyint(1) unsigned DEFAULT '0',
  `ats_requisition_social_media_shared_twitter` tinyint(1) unsigned DEFAULT '0',
  `ats_requisition_social_media_shared_linkedin` tinyint(1) unsigned DEFAULT '0',
  `ats_requisition_visible_posted_date` datetime DEFAULT NULL,
  `ats_requisition_featured_job` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_lens_crc` int(11) NOT NULL DEFAULT '0',
  `ats_requisition_apply_online` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ats_requisition_alternate_apply_method` varchar(255) DEFAULT NULL,
  `hua_cost_center_id` int(10) unsigned DEFAULT NULL,
  `ats_requisition_hourly_shift_type_id` int(10) unsigned DEFAULT '0',
  `ats_requisition_hourly_shift_type_schedule_id` int(10) unsigned DEFAULT '0',
  `ats_requisition_is_evergreen` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_translation_visibility_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_send_to_ers` tinyint(1) NOT NULL DEFAULT '0',
  `hua_taxable_entity_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_requisition_id`),
  KEY `ats_education_level_id` (`ats_education_level_id`),
  KEY `ats_requisition_creator_id` (`ats_requisition_creator_id`),
  KEY `ats_requisition_eeoc_category_id` (`ats_requisition_eeoc_category_id`),
  KEY `ats_requisition_eeoc_group_id` (`ats_requisition_eeoc_group_id`),
  KEY `ats_requisition_exemption_id` (`ats_requisition_exemption_id`),
  KEY `ats_requisition_hires_needed` (`ats_requisition_hires_needed`),
  KEY `ats_requisition_hiring_manager_id` (`ats_requisition_hiring_manager_id`),
  KEY `ats_requisition_level_id` (`ats_requisition_level_id`),
  KEY `ats_requisition_status_id` (`ats_requisition_status_id`),
  KEY `hua_job_type_id` (`hua_job_type_id`),
  KEY `hua_org_level_id` (`hua_org_level_id`),
  KEY `ats_requisition_recruiter_id` (`ats_requisition_recruiter_id`),
  KEY `ats_requisition_code` (`ats_requisition_code`),
  KEY `ats_requisition_title` (`ats_requisition_title`),
  KEY `ats_requisition_template` (`ats_requisition_template`),
  KEY `ats_workflow_id` (`ats_workflow_id`),
  KEY `ats_requisition_shift_type_id` (`ats_requisition_shift_type_id`),
  KEY `ats_requisition_hourly_shift_type_id` (`ats_requisition_hourly_shift_type_id`),
  KEY `hua_job_id` (`hua_job_id`,`ats_requisition_status_id`),
  KEY `ats_requisition_draft` (`ats_requisition_draft`,`ats_requisition_template`,`ats_requisition_status_id`),
  KEY `hua_company_id` (`hua_company_id`),
  KEY `ats_requisition_translation_visibility_flag` (`ats_requisition_translation_visibility_flag`),
  FULLTEXT KEY `ats_requisition_code_2` (`ats_requisition_code`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_approval_chain`
--

DROP TABLE IF EXISTS `ats_requisition_approval_chain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_approval_chain` (
  `hua_approval_chain_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_approval_chain_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hua_approval_chain_date_created` datetime DEFAULT NULL,
  `hua_approval_chain_target_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_approval_chain_type` enum('serial','parallel') DEFAULT NULL,
  `hua_approval_chain_approval` enum('','approved','rejected') NOT NULL DEFAULT '',
  `hua_approval_chain_final_approval_date` datetime DEFAULT NULL,
  `hua_approval_chain_requestor_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`hua_approval_chain_id`),
  KEY `hua_approval_chain_target_id` (`hua_approval_chain_target_id`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_approval_chain_member`
--

DROP TABLE IF EXISTS `ats_requisition_approval_chain_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_approval_chain_member` (
  `hua_approval_chain_member_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_approval_chain_member_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hua_approval_chain_member_date_created` datetime DEFAULT NULL,
  `hua_approval_chain_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_approval_chain_member_target` varchar(255) NOT NULL,
  `hua_approval_chain_member_type` varchar(255) NOT NULL,
  `hua_approval_chain_member_order` int(11) NOT NULL DEFAULT '0',
  `hua_approval_chain_member_approval` enum('','approved','rejected') NOT NULL DEFAULT '',
  `hua_approval_chain_member_comment` text,
  `hua_approval_chain_member_final_approval_date` datetime DEFAULT NULL,
  `hua_approval_chain_member_approved_by` varchar(255) DEFAULT NULL,
  `hua_approval_chain_member_hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_approval_chain_member_id`),
  KEY `hua_approval_chain_id` (`hua_approval_chain_id`),
  KEY `hua_approval_chain_member_target` (`hua_approval_chain_member_target`),
  KEY `hua_approval_chain_member_type` (`hua_approval_chain_member_type`),
  KEY `hua_approval_chain_member_approved_by` (`hua_approval_chain_member_approved_by`)
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_approval_transaction`
--

DROP TABLE IF EXISTS `ats_requisition_approval_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_approval_transaction` (
  `ats_requisition_approval_transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_approval_transaction_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ats_requisition_approval_transaction_date_created` datetime DEFAULT NULL,
  `ats_requisition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_approval_transaction_approver_decision` enum('','approved','rejected') NOT NULL DEFAULT '',
  `ats_requisition_approval_transaction_user_name` varchar(255) DEFAULT NULL,
  `ats_requisition_approval_transaction_on_behalf_of` varchar(255) DEFAULT NULL,
  `ats_requisition_approval_transaction_requisition_title` varchar(255) DEFAULT NULL,
  `ats_requisition_approval_transaction_requisition_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ats_requisition_approval_transaction_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_assessment_package`
--

DROP TABLE IF EXISTS `ats_requisition_assessment_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_assessment_package` (
  `ats_requisition_assessment_package_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_assessment_package_last_modified` timestamp NULL DEFAULT NULL,
  `ats_requisition_assessment_package_date_created` datetime DEFAULT NULL,
  `ats_requisition_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_assessment_package_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_assessment_package_order` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_requisition_assessment_package_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`,`hua_assessment_package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_assessment_type_threshold`
--

DROP TABLE IF EXISTS `ats_requisition_assessment_type_threshold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_assessment_type_threshold` (
  `ats_requisition_assessment_type_threshold_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_assessment_package_id` int(11) NOT NULL,
  `hua_assessment_type_id` int(11) NOT NULL,
  `ats_requisition_assessment_type_threshold_value` smallint(3) unsigned DEFAULT NULL,
  `ats_requisition_assessment_type_threshold_last_modified` timestamp NULL DEFAULT NULL,
  `ats_requisition_assessment_type_threshold_date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`ats_requisition_assessment_type_threshold_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_attachment`
--

DROP TABLE IF EXISTS `ats_requisition_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_attachment` (
  `ats_requisition_attachment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_attachment_date_created` datetime DEFAULT NULL,
  `ats_requisition_attachment_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_attachment_name` varchar(255) NOT NULL,
  `ats_requisition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_attachment_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_attachment_is_internal` tinyint(1) NOT NULL DEFAULT '0',
  `ats_requisition_attachment_is_external` tinyint(1) NOT NULL DEFAULT '0',
  `ats_requisition_attachment_is_approver` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_requisition_attachment_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`),
  KEY `hua_attachment_id` (`hua_attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_categories`
--

DROP TABLE IF EXISTS `ats_requisition_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_categories` (
  `ats_requisition_categories_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_categories_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_categories_date_created` datetime DEFAULT NULL,
  `ats_requisition_category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_requisition_categories_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_creation_option`
--

DROP TABLE IF EXISTS `ats_requisition_creation_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_creation_option` (
  `ats_requisition_creation_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_requisition_creation_option_value` varchar(255) NOT NULL,
  `ats_requisition_creation_option_order` int(11) NOT NULL DEFAULT '0',
  `ats_requisition_creation_option_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_requisition_creation_option_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_creation_option_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_creation_option_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_requisition_creation_option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_detail_field`
--

DROP TABLE IF EXISTS `ats_requisition_detail_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_detail_field` (
  `ats_requisition_detail_field_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_detail_field_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_requisition_detail_field_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_detail_field_order` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_detail_field_value` varchar(255) NOT NULL,
  `ats_requisition_detail_field_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_detail_field_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_requisition_detail_field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_diversity_country_setting`
--

DROP TABLE IF EXISTS `ats_requisition_diversity_country_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_diversity_country_setting` (
  `ats_requisition_diversity_country_setting_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_diversity_country_setting_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_diversity_country_setting_date_created` datetime NOT NULL,
  `ats_requisition_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_country_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_type_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_requisition_diversity_country_setting_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_exemption`
--

DROP TABLE IF EXISTS `ats_requisition_exemption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_exemption` (
  `ats_requisition_exemption_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_requisition_exemption_value` varchar(255) NOT NULL,
  `ats_requisition_exemption_order` int(11) NOT NULL DEFAULT '0',
  `ats_requisition_exemption_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_requisition_exemption_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_exemption_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_exemption_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_requisition_exemption_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_hourly_shift_type`
--

DROP TABLE IF EXISTS `ats_requisition_hourly_shift_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_hourly_shift_type` (
  `ats_requisition_hourly_shift_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_hourly_shift_type_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_requisition_hourly_shift_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_hourly_shift_type_value` varchar(255) NOT NULL,
  `ats_requisition_hourly_shift_type_order` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_hourly_shift_type_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_hourly_shift_type_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `hua_location_group_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_requisition_hourly_shift_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_hourly_shift_type_location`
--

DROP TABLE IF EXISTS `ats_requisition_hourly_shift_type_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_hourly_shift_type_location` (
  `ats_requisition_hourly_shift_type_location_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_hourly_shift_type_location_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_requisition_hourly_shift_type_location_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_location_id` int(10) unsigned DEFAULT '0',
  `ats_requisition_hourly_shift_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_requisition_hourly_shift_type_location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_hourly_shift_type_schedule`
--

DROP TABLE IF EXISTS `ats_requisition_hourly_shift_type_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_hourly_shift_type_schedule` (
  `ats_requisition_hourly_shift_type_schedule_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_hourly_shift_type_schedule_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_requisition_hourly_shift_type_schedule_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_hourly_shift_type_schedule_value` varchar(255) NOT NULL,
  `ats_requisition_hourly_shift_type_schedule_start_time` time NOT NULL DEFAULT '00:00:00',
  `ats_requisition_hourly_shift_type_schedule_end_time` time NOT NULL DEFAULT '00:00:00',
  `ats_requisition_hourly_shift_type_schedule_order` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_hourly_shift_type_schedule_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_hourly_shift_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_requisition_hourly_shift_type_schedule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_hourly_shift_type_schedule_day`
--

DROP TABLE IF EXISTS `ats_requisition_hourly_shift_type_schedule_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_hourly_shift_type_schedule_day` (
  `ats_requisition_hourly_shift_type_schedule_day_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_hourly_shift_type_schedule_day_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_requisition_hourly_shift_type_schedule_day_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_hourly_shift_type_schedule_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_hourly_shift_type_schedule_day` varchar(255) NOT NULL,
  PRIMARY KEY (`ats_requisition_hourly_shift_type_schedule_day_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_kiosk`
--

DROP TABLE IF EXISTS `ats_requisition_kiosk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_kiosk` (
  `ats_requisition_kiosk_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_kiosk_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_kiosk_creator_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_kiosk_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `ats_requisition_kiosk_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ats_requisition_kiosk_id`),
  KEY `ats_kiosk_id` (`ats_kiosk_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`),
  KEY `ats_user_id` (`ats_requisition_kiosk_creator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_language`
--

DROP TABLE IF EXISTS `ats_requisition_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_language` (
  `ats_requisition_language_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_language_date_created` datetime DEFAULT NULL,
  `ats_requisition_language_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_id` int(10) unsigned NOT NULL,
  `hua_language_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ats_requisition_language_id`),
  UNIQUE KEY `ats_requisition_id` (`ats_requisition_id`,`hua_language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_last_transaction`
--

DROP TABLE IF EXISTS `ats_requisition_last_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_last_transaction` (
  `ats_requisition_id` int(10) unsigned NOT NULL,
  `ats_requisition_last_transaction_time` datetime NOT NULL,
  PRIMARY KEY (`ats_requisition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_level`
--

DROP TABLE IF EXISTS `ats_requisition_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_level` (
  `ats_requisition_level_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_level_value` varchar(255) NOT NULL,
  `ats_requisition_level_order` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_level_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_requisition_level_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_level_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_level_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_requisition_level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_notify_adhoc`
--

DROP TABLE IF EXISTS `ats_requisition_notify_adhoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_notify_adhoc` (
  `ats_requisition_notify_adhoc_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_id` int(11) unsigned DEFAULT '0',
  `ats_requisition_notify_adhoc_address` varchar(255) NOT NULL,
  `ats_workflow_resume_submit_id` int(11) unsigned DEFAULT '0',
  `ats_requisition_notify_adhoc_address_type` enum('contact','user','default') NOT NULL DEFAULT 'default',
  `ats_requisition_notify_adhoc_additionals` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ats_requisition_notify_adhoc_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_position_type`
--

DROP TABLE IF EXISTS `ats_requisition_position_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_position_type` (
  `ats_requisition_position_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_requisition_position_type_value` varchar(255) NOT NULL,
  `ats_requisition_position_type_order` int(11) NOT NULL DEFAULT '0',
  `ats_requisition_position_type_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_requisition_position_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_position_type_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_position_type_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_requisition_position_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_screening_questionnaire`
--

DROP TABLE IF EXISTS `ats_requisition_screening_questionnaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_screening_questionnaire` (
  `ats_requisition_screening_questionnaire_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_screening_questionnaire_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_requisition_screening_questionnaire_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_screening_questionnaire_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_screening_questionnaire_internal` tinyint(1) unsigned DEFAULT NULL,
  `ats_requisition_screening_questionnaire_external` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`ats_requisition_screening_questionnaire_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`),
  KEY `ats_screening_questionnaire_id` (`ats_screening_questionnaire_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_shared_on_social_media`
--

DROP TABLE IF EXISTS `ats_requisition_shared_on_social_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_shared_on_social_media` (
  `ats_requisition_shared_on_social_media_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_shared_on_social_media_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_shared_on_social_media_created` datetime NOT NULL,
  `ats_requisition_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_referral_source_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_user_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_requisition_shared_on_social_media_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_shift_type`
--

DROP TABLE IF EXISTS `ats_requisition_shift_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_shift_type` (
  `ats_requisition_shift_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_shift_type_value` varchar(255) NOT NULL,
  `ats_requisition_shift_type_order` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_shift_type_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_requisition_shift_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_shift_type_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_shift_type_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_requisition_shift_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_status`
--

DROP TABLE IF EXISTS `ats_requisition_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_status` (
  `ats_requisition_status_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_status_date_created` datetime DEFAULT NULL,
  `ats_requisition_status_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_status_name` char(255) DEFAULT NULL,
  `ats_requisition_status_logical_value` char(255) DEFAULT NULL,
  `ats_requisition_status_type` enum('public','internal','requisition','closed','onhold') NOT NULL DEFAULT 'public',
  `ats_requisition_status_protected` tinyint(1) unsigned DEFAULT NULL,
  `ats_requisition_status_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `ats_requisition_status_order` smallint(5) unsigned NOT NULL,
  `ats_requisition_status_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_requisition_status_id`),
  KEY `ats_requisition_status_logical_value` (`ats_requisition_status_logical_value`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_status_change_schedule`
--

DROP TABLE IF EXISTS `ats_requisition_status_change_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_status_change_schedule` (
  `ats_requisition_status_change_schedule_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_status_change_schedule_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `ats_requisition_status_change_schedule_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_status_change_schedule_effective_date` datetime DEFAULT NULL,
  `ats_requisition_status_change_schedule_from_status_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_status_change_schedule_to_status_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_status_change_schedule_comment` varchar(255) DEFAULT NULL,
  `ats_requisition_status_change_schedule_expired` tinyint(1) DEFAULT '0',
  `ats_requisition_status_change_schedule_warning_notified` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ats_requisition_status_change_schedule_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_status_sequence`
--

DROP TABLE IF EXISTS `ats_requisition_status_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_status_sequence` (
  `ats_requisition_status_sequence_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_status_sequence_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_requisition_status_sequence_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_status_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_requisition_status_duration` int(11) NOT NULL DEFAULT '0',
  `ats_workflow_requisition_status_sequence` smallint(6) NOT NULL DEFAULT '0',
  `ats_requisition_status_sequence_date_applied` datetime DEFAULT NULL,
  `ats_requisition_status_sequence_expired` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_requisition_status_sequence_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`,`ats_workflow_requisition_status_sequence`),
  KEY `ats_requisition_status_id` (`ats_requisition_status_id`),
  KEY `ats_workflow_id` (`ats_workflow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_status_transaction`
--

DROP TABLE IF EXISTS `ats_requisition_status_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_status_transaction` (
  `ats_requisition_status_transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_status_transaction_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_status_transaction_date_created` datetime DEFAULT NULL,
  `ats_requisition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_status_transaction_from_status` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_status_transaction_to_status` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_status_transaction_automated_update` tinyint(1) unsigned DEFAULT '1',
  `ats_requisition_status_transaction_comment` text NOT NULL,
  PRIMARY KEY (`ats_requisition_status_transaction_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`),
  KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=568 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_team`
--

DROP TABLE IF EXISTS `ats_requisition_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_team` (
  `ats_requisition_team_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_team_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_team_date_created` datetime DEFAULT NULL,
  `ats_team_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_requisition_team_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_to_front_end`
--

DROP TABLE IF EXISTS `ats_requisition_to_front_end`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_to_front_end` (
  `ats_requisition_to_front_end_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_to_front_end_last_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_to_front_end_date_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_front_end_id` int(10) unsigned NOT NULL,
  `ats_requisition_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ats_requisition_to_front_end_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`),
  KEY `ats_front_end_id` (`ats_front_end_id`)
) ENGINE=InnoDB AUTO_INCREMENT=380 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_to_hua_location`
--

DROP TABLE IF EXISTS `ats_requisition_to_hua_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_to_hua_location` (
  `ats_requisition_to_hua_location_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_to_hua_location_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_to_hua_location_date_created` datetime DEFAULT NULL,
  `ats_requisition_id` int(10) unsigned NOT NULL,
  `hua_location_id` int(10) unsigned NOT NULL,
  `ats_requisition_to_hua_location_primary` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_requisition_to_hua_location_id`),
  UNIQUE KEY `idx_ats_requisition_id_hua_location_id` (`ats_requisition_id`,`hua_location_id`),
  UNIQUE KEY `hua_location_id` (`hua_location_id`,`ats_requisition_id`),
  KEY `ats_requisition_to_hua_location_primary` (`ats_requisition_to_hua_location_primary`)
) ENGINE=InnoDB AUTO_INCREMENT=669 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_transaction`
--

DROP TABLE IF EXISTS `ats_requisition_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_transaction` (
  `ats_requisition_transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_requisition_transaction_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_transaction_date_created` datetime DEFAULT NULL,
  `ats_requisition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_transaction_update` text NOT NULL,
  `hua_user_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ats_requisition_transaction_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`),
  KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=799 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_translation_index`
--

DROP TABLE IF EXISTS `ats_requisition_translation_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_translation_index` (
  `ats_requisition_id` int(11) NOT NULL,
  `hua_language_id` int(11) NOT NULL,
  `ats_requisition_title` varchar(255) DEFAULT NULL,
  `ats_requisition_description` text,
  `ats_requisition_requirements` text,
  `ats_requisition_alternate_apply_method` varchar(255) DEFAULT NULL,
  `time_to_live` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_requisition_id`,`hua_language_id`),
  FULLTEXT KEY `ats_requisition_description` (`ats_requisition_description`),
  FULLTEXT KEY `ats_requisition_title` (`ats_requisition_title`),
  FULLTEXT KEY `ats_requisition_requirements` (`ats_requisition_requirements`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_requisition_view`
--

DROP TABLE IF EXISTS `ats_requisition_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_requisition_view` (
  `ats_requisition_id` int(10) unsigned NOT NULL,
  `ats_requisition_views` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_requisition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_resume`
--

DROP TABLE IF EXISTS `ats_resume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_resume` (
  `ats_resume_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_jobseeker_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_resume_creator_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_resume_primary` tinyint(1) unsigned DEFAULT '0',
  `ats_resume_active` tinyint(1) unsigned DEFAULT '0',
  `ats_resume_careerbuilder_id` varchar(255) DEFAULT NULL,
  `ats_resume_monster_id` int(10) unsigned DEFAULT '0',
  `ats_resume_lens_key` varchar(255) DEFAULT NULL,
  `ats_resume_is_parsed` tinyint(1) unsigned DEFAULT '0',
  `ats_resume_parse_confirmed` tinyint(1) unsigned DEFAULT '0',
  `ats_resume_is_searchable` tinyint(1) unsigned DEFAULT '1',
  `ats_resume_name` varchar(255) NOT NULL,
  `ats_resume_body` mediumtext NOT NULL,
  `ats_resume_cover` text,
  `ats_resume_relocate_id` tinyint(3) unsigned DEFAULT '0',
  `ats_resume_relocate_comment` varchar(255) DEFAULT NULL,
  `ats_resume_desired_salary` decimal(10,2) unsigned DEFAULT NULL,
  `ats_resume_currency_id` int(10) unsigned DEFAULT '0',
  `ats_resume_salary_id` int(10) unsigned DEFAULT '0',
  `hua_travel_id` int(10) unsigned DEFAULT NULL,
  `ats_education_level_id` int(10) unsigned DEFAULT '0',
  `ats_resume_job_level_id` int(10) unsigned DEFAULT '0',
  `ats_resume_score` decimal(5,2) DEFAULT '0.00',
  `ats_resume_legal_to_work` tinyint(1) unsigned DEFAULT NULL,
  `ats_resume_legal_to_work_comments` varchar(255) DEFAULT NULL,
  `ats_resume_hours_per_week` tinyint(3) unsigned DEFAULT '0',
  `ats_resume_date_available` date DEFAULT NULL,
  `ats_resume_date_availability_comment` varchar(255) DEFAULT NULL,
  `ats_resume_last_updated` datetime NOT NULL,
  `ats_resume_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_resume_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_dynamic_form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_resume_current_job_title` varchar(255) DEFAULT NULL,
  `ats_resume_current_department` varchar(255) DEFAULT NULL,
  `ats_resume_years_in_current_position` varchar(255) DEFAULT NULL,
  `ats_resume_last_review_date` date DEFAULT NULL,
  `ats_resume_present_duties` text,
  `ats_resume_supervisors_name` varchar(255) DEFAULT NULL,
  `ats_resume_supervisors_email` varchar(255) DEFAULT NULL,
  `ats_resume_date_discussed_with_supervisor` date DEFAULT NULL,
  `ats_resume_applying_reasons` text,
  `ats_resume_referral_source_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_resume_description` varchar(255) DEFAULT NULL,
  `ats_resume_contact_comment` varchar(255) DEFAULT NULL,
  `ats_university_id` int(11) DEFAULT NULL,
  `ats_resume_referral_source_details` char(255) DEFAULT NULL,
  `ats_resume_lens_failed` tinyint(1) unsigned DEFAULT '0',
  `ats_experience_level_id` int(10) unsigned DEFAULT NULL,
  `ats_resume_highest_education_level_id` int(10) unsigned DEFAULT NULL,
  `ats_resume_locale` char(10) DEFAULT NULL,
  `ats_resume_lens_last_response` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ats_resume_id`),
  KEY `ats_education_level_id` (`ats_education_level_id`),
  KEY `ats_jobseeker_id` (`ats_jobseeker_id`),
  KEY `ats_resume_active` (`ats_resume_active`),
  KEY `ats_resume_currency_id` (`ats_resume_currency_id`),
  KEY `ats_resume_desired_salary` (`ats_resume_desired_salary`),
  KEY `ats_resume_is_searchable` (`ats_resume_is_searchable`),
  KEY `ats_resume_job_level_id` (`ats_resume_job_level_id`),
  KEY `ats_resume_legal_to_work` (`ats_resume_legal_to_work`),
  KEY `ats_resume_name` (`ats_resume_name`),
  KEY `ats_resume_primary` (`ats_resume_primary`),
  KEY `ats_resume_relocate_id` (`ats_resume_relocate_id`),
  KEY `ats_resume_salary_id` (`ats_resume_salary_id`),
  KEY `ats_university_id` (`ats_university_id`),
  KEY `ats_resume_current_job_title` (`ats_resume_current_job_title`),
  KEY `ats_resume_date_created` (`ats_resume_date_created`),
  KEY `ats_resume_referral_source_id` (`ats_resume_referral_source_id`),
  FULLTEXT KEY `ats_resume_body` (`ats_resume_body`),
  FULLTEXT KEY `fulltext_ats_resume_cover` (`ats_resume_cover`)
) ENGINE=InnoDB AUTO_INCREMENT=4212 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_resume_address`
--

DROP TABLE IF EXISTS `ats_resume_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_resume_address` (
  `ats_resume_address_id` int(10) NOT NULL AUTO_INCREMENT,
  `ats_resume_id` int(10) NOT NULL DEFAULT '0',
  `ats_resume_address_last_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ats_resume_address_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `ats_resume_address_current` tinyint(1) DEFAULT '0',
  `ats_resume_address_line_1` varchar(255) DEFAULT NULL,
  `ats_resume_address_line_2` varchar(255) DEFAULT NULL,
  `ats_resume_address_city` varchar(255) DEFAULT '',
  `ats_resume_address_state` int(10) DEFAULT NULL,
  `ats_resume_address_zip` varchar(255) DEFAULT '',
  `ats_resume_address_country` int(10) DEFAULT '0',
  `ats_resume_address_repeat` int(10) DEFAULT NULL,
  `ats_resume_address_latitude` float(11,8) DEFAULT NULL,
  `ats_resume_address_longitude` float(11,8) DEFAULT NULL,
  `ats_resume_address_county_municipality` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ats_resume_address_id`),
  KEY `ats_resume_id` (`ats_resume_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4141 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_resume_attachment`
--

DROP TABLE IF EXISTS `ats_resume_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_resume_attachment` (
  `ats_resume_attachment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_resume_attachment_date_created` datetime DEFAULT NULL,
  `ats_resume_attachment_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_jobseeker_id` int(10) unsigned DEFAULT NULL,
  `hua_attachment_id` int(10) unsigned DEFAULT NULL,
  `ats_resume_attachment_hidden` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ats_resume_attachment_original` int(1) DEFAULT '0',
  PRIMARY KEY (`ats_resume_attachment_id`),
  KEY `ats_jobseeker_id` (`ats_jobseeker_id`),
  KEY `hua_attachment_id` (`hua_attachment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6387 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_resume_attachment_tracking`
--

DROP TABLE IF EXISTS `ats_resume_attachment_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_resume_attachment_tracking` (
  `ats_resume_attachment_tracking_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_resume_attachment_tracking_date_created` datetime DEFAULT NULL,
  `ats_resume_attachment_tracking_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_resume_attachment_id` int(10) unsigned DEFAULT NULL,
  `ats_jobseeker_tracking_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ats_resume_attachment_tracking_id`),
  KEY `ats_jobseeker_tracking_id` (`ats_jobseeker_tracking_id`),
  KEY `ats_resume_attachment_id` (`ats_resume_attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_resume_cover`
--

DROP TABLE IF EXISTS `ats_resume_cover`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_resume_cover` (
  `ats_resume_cover_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_resume_cover_date_created` datetime DEFAULT NULL,
  `ats_resume_cover_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_resume_cover_text` text,
  `ats_jobseeker_id` int(10) unsigned DEFAULT NULL,
  `ats_resume_cover_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ats_resume_cover_id`),
  KEY `ats_jobseeker_id` (`ats_jobseeker_id`),
  KEY `ats_resume_cover_text` (`ats_resume_cover_text`(200))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_resume_education_history`
--

DROP TABLE IF EXISTS `ats_resume_education_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_resume_education_history` (
  `ats_resume_education_history_id` int(10) NOT NULL AUTO_INCREMENT,
  `ats_resume_id` int(10) NOT NULL DEFAULT '0',
  `ats_resume_education_history_last_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ats_resume_education_history_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `ats_resume_education_history_institution_id` int(10) DEFAULT '0',
  `ats_resume_education_history_institution_name` varchar(255) DEFAULT NULL,
  `ats_resume_education_history_area_of_study` varchar(255) DEFAULT NULL,
  `ats_resume_education_history_certificate_earned_id` int(10) DEFAULT '0',
  `ats_resume_education_history_certificate_earned_name` varchar(255) DEFAULT NULL,
  `ats_resume_education_history_start_date` datetime DEFAULT NULL,
  `ats_resume_education_history_end_date` datetime DEFAULT NULL,
  `ats_resume_education_history_expiration_date` datetime DEFAULT NULL,
  `ats_resume_education_history_details` text,
  `ats_resume_education_history_repeat` int(10) DEFAULT NULL,
  PRIMARY KEY (`ats_resume_education_history_id`),
  KEY `ats_resume_id` (`ats_resume_id`),
  FULLTEXT KEY `fulltext_ats_resume_education_history_institution_name` (`ats_resume_education_history_institution_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_resume_industry`
--

DROP TABLE IF EXISTS `ats_resume_industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_resume_industry` (
  `ats_resume_industry_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_resume_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_setting_option_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_resume_industry_creator_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_resume_industry_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_resume_industry_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ats_resume_industry_id`),
  KEY `ats_resume_id` (`ats_resume_id`),
  KEY `ats_resume_industry_creator_id` (`ats_resume_industry_creator_id`),
  KEY `ats_setting_option_id` (`ats_setting_option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_resume_job_category`
--

DROP TABLE IF EXISTS `ats_resume_job_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_resume_job_category` (
  `ats_resume_job_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_resume_id` int(11) NOT NULL DEFAULT '0',
  `hua_job_category_id` int(11) NOT NULL DEFAULT '0',
  `ats_resume_job_category_date_created` datetime DEFAULT NULL,
  `ats_resume_job_category_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ats_resume_job_category_id`),
  KEY `ats_resume_id` (`ats_resume_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_resume_job_type`
--

DROP TABLE IF EXISTS `ats_resume_job_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_resume_job_type` (
  `ats_resume_job_type_id` int(10) NOT NULL AUTO_INCREMENT,
  `ats_resume_id` int(10) NOT NULL DEFAULT '0',
  `hua_job_type_id` int(10) NOT NULL DEFAULT '0',
  `ats_resume_job_type_date_created` datetime DEFAULT NULL,
  `ats_resume_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ats_resume_job_type_id`),
  KEY `ats_resume_id` (`ats_resume_id`),
  KEY `hua_job_type_id` (`hua_job_type_id`),
  KEY `ats_resume_id_2` (`ats_resume_id`,`hua_job_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_resume_link_visit`
--

DROP TABLE IF EXISTS `ats_resume_link_visit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_resume_link_visit` (
  `ats_resume_link_visit_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_resume_link_visit_hash` varchar(255) NOT NULL,
  `ats_resume_link_visit_id_type` varchar(255) NOT NULL,
  `ats_resume_link_visit_id_number` int(10) DEFAULT NULL,
  `ats_resume_link_visit_date_created` datetime DEFAULT NULL,
  `ats_resume_link_visit_is_valid` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ats_resume_link_visit_id`),
  UNIQUE KEY `ats_resume_link_visit_hash` (`ats_resume_link_visit_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_resume_reference`
--

DROP TABLE IF EXISTS `ats_resume_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_resume_reference` (
  `ats_resume_reference_id` int(10) NOT NULL AUTO_INCREMENT,
  `ats_resume_id` int(10) NOT NULL DEFAULT '0',
  `ats_resume_reference_last_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ats_resume_reference_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `ats_resume_reference_name` varchar(255) DEFAULT NULL,
  `ats_resume_reference_title` varchar(255) DEFAULT NULL,
  `ats_resume_reference_company` varchar(255) DEFAULT NULL,
  `ats_resume_reference_relationship` varchar(255) DEFAULT NULL,
  `ats_resume_reference_phone` varchar(255) DEFAULT NULL,
  `ats_resume_reference_repeat` int(10) DEFAULT NULL,
  PRIMARY KEY (`ats_resume_reference_id`),
  KEY `ats_resume_id` (`ats_resume_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_resume_score`
--

DROP TABLE IF EXISTS `ats_resume_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_resume_score` (
  `ats_resume_score_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_resume_id` int(10) unsigned NOT NULL,
  `hua_user_id` int(10) unsigned NOT NULL,
  `ats_resume_score` double NOT NULL DEFAULT '0',
  `ats_resume_score_notes` char(255) NOT NULL DEFAULT '',
  `ats_resume_score_date_created` datetime DEFAULT NULL,
  `ats_resume_score_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ats_resume_score_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `ats_resume_id` (`ats_resume_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_resume_secondary_application`
--

DROP TABLE IF EXISTS `ats_resume_secondary_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_resume_secondary_application` (
  `ats_resume_secondary_application_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_resume_secondary_application_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_resume_secondary_application_date_created` datetime DEFAULT NULL,
  `ats_resume_secondary_application_date_completed` datetime DEFAULT NULL,
  `ats_resume_secondary_application_date_sent` datetime DEFAULT NULL,
  `ats_candidate_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_resume_secondary_application_creator_id` int(11) NOT NULL,
  `ats_resume_secondary_application_primary` int(1) unsigned NOT NULL DEFAULT '1',
  `ats_resume_secondary_application_name` varchar(255) DEFAULT NULL,
  `ats_resume_secondary_application_body` text,
  `ats_resume_secondary_application_relocate_id` tinyint(3) unsigned DEFAULT NULL,
  `ats_resume_secondary_application_relocate_comment` varchar(255) DEFAULT NULL,
  `ats_resume_secondary_application_desired_salary` decimal(10,2) unsigned DEFAULT NULL,
  `ats_resume_secondary_application_currency_id` int(10) unsigned DEFAULT NULL,
  `hua_travel_id` int(10) unsigned DEFAULT NULL,
  `ats_education_level_id` int(10) unsigned DEFAULT NULL,
  `ats_resume_secondary_application_job_type_id` int(10) unsigned DEFAULT NULL,
  `ats_resume_secondary_application_job_level_id` int(10) unsigned DEFAULT NULL,
  `ats_resume_secondary_application_legal_to_work_comments` varchar(255) DEFAULT NULL,
  `ats_resume_secondary_application_hours_per_week` tinyint(3) unsigned DEFAULT NULL,
  `ats_resume_secondary_application_date_available` date DEFAULT NULL,
  `ats_resume_secondary_application_date_availability_comment` varchar(255) DEFAULT NULL,
  `hua_dynamic_form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_resume_secondary_application_current_job_title` varchar(255) DEFAULT NULL,
  `ats_resume_secondary_application_current_department` varchar(255) DEFAULT NULL,
  `ats_resume_secondary_application_years_in_current_position` varchar(255) DEFAULT NULL,
  `ats_resume_secondary_application_last_review_date` date DEFAULT NULL,
  `ats_resume_secondary_application_present_duties` text,
  `ats_resume_secondary_application_supervisors_name` varchar(255) DEFAULT NULL,
  `ats_resume_secondary_application_supervisors_email` varchar(255) DEFAULT NULL,
  `ats_resume_secondary_application_date_discussed_with_supervisor` date DEFAULT NULL,
  `ats_resume_secondary_application_applying_reasons` text,
  `ats_resume_secondary_application_description` varchar(255) DEFAULT NULL,
  `ats_resume_secondary_application_contact_comment` varchar(255) DEFAULT NULL,
  `ats_resume_secondary_application_legal_to_work` tinyint(1) DEFAULT NULL,
  `ats_resume_secondary_application_referral_source_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_resume_secondary_application_salary_id` int(11) unsigned DEFAULT '0',
  `ats_experience_level_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_resume_secondary_application_highest_education_level_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_resume_secondary_application_id`),
  KEY `ats_candidate_id` (`ats_candidate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_resume_submission_history`
--

DROP TABLE IF EXISTS `ats_resume_submission_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_resume_submission_history` (
  `ats_resume_submission_history_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_resume_submission_history_date_created` datetime DEFAULT NULL,
  `ats_resume_tracking_status_id` int(10) unsigned DEFAULT NULL,
  `ats_resume_submission_history_creator_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_resume_work_history`
--

DROP TABLE IF EXISTS `ats_resume_work_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_resume_work_history` (
  `ats_resume_work_history_id` int(10) NOT NULL AUTO_INCREMENT,
  `ats_resume_id` int(10) NOT NULL DEFAULT '0',
  `ats_resume_work_history_last_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ats_resume_work_history_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `ats_resume_work_history_company_name` varchar(255) DEFAULT NULL,
  `ats_resume_work_history_job_title` varchar(255) DEFAULT NULL,
  `ats_resume_work_history_start_date` datetime DEFAULT NULL,
  `ats_resume_work_history_end_date` datetime DEFAULT NULL,
  `ats_resume_work_history_duties` text,
  `ats_resume_work_history_contact_employer` int(2) DEFAULT NULL,
  `ats_resume_work_history_contact_name` varchar(255) DEFAULT NULL,
  `ats_resume_work_history_contact_phone` varchar(255) DEFAULT NULL,
  `ats_resume_work_history_repeat` int(10) DEFAULT NULL,
  PRIMARY KEY (`ats_resume_work_history_id`),
  KEY `ats_resume_id` (`ats_resume_id`),
  FULLTEXT KEY `fulltext_ats_resume_work_history_company_name` (`ats_resume_work_history_company_name`),
  FULLTEXT KEY `fulltext_ats_resume_work_history_job_title` (`ats_resume_work_history_job_title`),
  FULLTEXT KEY `fulltext_ats_resume_work_history_duties` (`ats_resume_work_history_duties`)
) ENGINE=InnoDB AUTO_INCREMENT=2405 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_salary_type`
--

DROP TABLE IF EXISTS `ats_salary_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_salary_type` (
  `ats_salary_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_salary_type_value` varchar(255) NOT NULL,
  `ats_salary_type_order` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_salary_type_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_salary_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_salary_type_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_salary_type_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_salary_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_scorecard`
--

DROP TABLE IF EXISTS `ats_scorecard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_scorecard` (
  `ats_scorecard_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_candidate_id` int(10) unsigned NOT NULL,
  `ats_scorecard_questionnaire` double NOT NULL DEFAULT '0',
  `ats_scorecard_resume` double NOT NULL DEFAULT '0',
  `ats_scorecard_references` double NOT NULL DEFAULT '0',
  `ats_scorecard_date_created` datetime DEFAULT NULL,
  `ats_scorecard_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ats_scorecard_id`),
  KEY `ats_candidate_id` (`ats_candidate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_screening_questionnaire`
--

DROP TABLE IF EXISTS `ats_screening_questionnaire`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_screening_questionnaire` (
  `ats_screening_questionnaire_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_screening_questionnaire_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_screening_questionnaire_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_screening_questionnaire_creator_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_test_id` int(11) NOT NULL DEFAULT '0',
  `ats_screening_questionnaire_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_screening_questionnaire_minimum_score` int(5) unsigned NOT NULL DEFAULT '0',
  `ats_screening_questionnaire_global` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_screening_questionnaire_screen_in_message` varchar(255) NOT NULL,
  `ats_screening_questionnaire_screen_out_message` varchar(255) NOT NULL,
  `ats_screening_questionnaire_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_screening_questionnaire_id`),
  KEY `ats_screening_questionnaire_creator_id` (`ats_screening_questionnaire_creator_id`),
  KEY `hua_test_id` (`hua_test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_screening_questionnaire_taker`
--

DROP TABLE IF EXISTS `ats_screening_questionnaire_taker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_screening_questionnaire_taker` (
  `ats_screening_questionnaire_taker_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_screening_questionnaire_taker_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_screening_questionnaire_taker_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_jobseeker_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_screening_questionnaire_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_test_taker_id` int(11) NOT NULL DEFAULT '0',
  `ats_screening_questionnaire_taker_passed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_screening_questionnaire_taker_knocked_out` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_screening_questionnaire_taker_knocked_in` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_screening_questionnaire_taken_by` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_screening_questionnaire_taker_id`),
  KEY `ats_jobseeker_id` (`ats_jobseeker_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`),
  KEY `ats_screening_questionnaire_id` (`ats_screening_questionnaire_id`),
  KEY `hua_test_taker_id` (`hua_test_taker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_search_agent`
--

DROP TABLE IF EXISTS `ats_search_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_search_agent` (
  `ats_search_agent_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_search_agent_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_search_agent_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_search_agent_name` varchar(255) NOT NULL,
  `ats_search_agent_search_criteria` text NOT NULL,
  `ats_search_agent_request_acknowledged` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_search_agent_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_search_agent_expiration` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_search_agent_type` enum('job','resume','monster','monster6sense') NOT NULL,
  `ats_search_agent_delivery_method` enum('email','rss') NOT NULL DEFAULT 'email',
  `ats_search_agent_last_run` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_search_agent_scheduling` enum('daily','weekly','biweekly','monthly','never') NOT NULL DEFAULT 'daily',
  PRIMARY KEY (`ats_search_agent_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `ats_search_agent_active` (`ats_search_agent_active`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_search_history`
--

DROP TABLE IF EXISTS `ats_search_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_search_history` (
  `ats_search_history_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_search_history_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_search_history_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_requisition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_search_history_criteria` text NOT NULL,
  `ats_search_history_jobseeker_ids` mediumtext NOT NULL,
  PRIMARY KEY (`ats_search_history_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`),
  KEY `ats_user_id` (`ats_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_task`
--

DROP TABLE IF EXISTS `ats_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_task` (
  `ats_task_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_task_date_created` datetime DEFAULT NULL,
  `ats_task_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_task_name` varchar(255) DEFAULT NULL,
  `ats_task_description` varchar(255) DEFAULT NULL,
  `ats_task_script_name` varchar(255) DEFAULT NULL,
  `ats_task_jobseeker_script_name` varchar(255) NOT NULL,
  `ats_task_require_form` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_task_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_team`
--

DROP TABLE IF EXISTS `ats_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_team` (
  `ats_team_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_team_name` varchar(255) NOT NULL,
  `ats_team_description` varchar(255) NOT NULL,
  `hua_org_level_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_team_creator_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_team_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_team_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_team_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ats_team_id`),
  KEY `ats_team_creator_id` (`ats_team_creator_id`),
  KEY `ats_team_description` (`ats_team_description`),
  KEY `ats_team_name` (`ats_team_name`),
  KEY `hua_org_level_id` (`hua_org_level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_transaction`
--

DROP TABLE IF EXISTS `ats_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_transaction` (
  `ats_transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_transaction_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_transaction_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_transaction_type` enum('requisition','jobseeker') NOT NULL DEFAULT 'jobseeker',
  `ats_transaction_action` varchar(100) NOT NULL,
  `ats_transaction_foreign_key` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_transaction_message` text,
  `ats_transaction_link` varchar(255) NOT NULL,
  `hua_user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_candidate_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_offer_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_status_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_status_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_transaction_public` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `hua_user_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ats_transaction_id`),
  KEY `ats_transaction_action` (`ats_transaction_action`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `ats_candidate_id` (`ats_candidate_id`),
  KEY `ats_jobseeker_id` (`ats_jobseeker_id`),
  KEY `ats_transaction_action_foreign_key` (`ats_transaction_action`,`ats_transaction_foreign_key`),
  KEY `ats_requisition_id` (`ats_requisition_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21601 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_transaction_purged`
--

DROP TABLE IF EXISTS `ats_transaction_purged`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_transaction_purged` (
  `ats_transaction_purged_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_transaction_purged_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_transaction_purged_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_transaction_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_transaction_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_transaction_last_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_transaction_action` varchar(100) NOT NULL,
  `ats_transaction_foreign_key` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_transaction_message` text NOT NULL,
  `ats_transaction_link` varchar(255) NOT NULL,
  `hua_user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_candidate_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_status_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_status_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_transaction_purged_id`),
  KEY `ats_transaction_id` (`ats_transaction_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `ats_candidate_id` (`ats_candidate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_unhealthy_application`
--

DROP TABLE IF EXISTS `ats_unhealthy_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_unhealthy_application` (
  `ats_unhealthy_application_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_unhealthy_application_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_unhealthy_application_date_created` datetime NOT NULL,
  `ats_candidate_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_unhealthy_application_id`),
  KEY `ats_candidate_id_idx` (`ats_candidate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_unhealthy_application_override`
--

DROP TABLE IF EXISTS `ats_unhealthy_application_override`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_unhealthy_application_override` (
  `ats_unhealthy_application_override_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_unhealthy_application_override_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_unhealthy_application_override_date_created` datetime NOT NULL,
  `ats_candidate_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_unhealthy_application_override_authorized_by` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_unhealthy_application_override_authorization_date` datetime NOT NULL,
  PRIMARY KEY (`ats_unhealthy_application_override_id`),
  KEY `ats_candidate_id_idx` (`ats_candidate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_university`
--

DROP TABLE IF EXISTS `ats_university`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_university` (
  `ats_university_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_university_value` varchar(255) NOT NULL,
  `ats_university_order` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_university_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_university_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_university_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_university_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_university_id`)
) ENGINE=InnoDB AUTO_INCREMENT=683 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_user`
--

DROP TABLE IF EXISTS `ats_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_user` (
  `ats_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_user_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_user_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_user_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `avg_time_to_fill` decimal(8,2) DEFAULT NULL,
  `ers_referral_count` int(11) NOT NULL,
  PRIMARY KEY (`ats_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_user_team`
--

DROP TABLE IF EXISTS `ats_user_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_user_team` (
  `ats_user_team_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_team_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_user_team_creator_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_user_team_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_user_team_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ats_user_team_id`,`ats_user_id`,`ats_team_id`),
  KEY `ats_user_id_idx` (`ats_user_id`),
  KEY `ats_user_team_creator_id_idx` (`ats_user_team_creator_id`),
  KEY `team_user_idx` (`ats_team_id`,`ats_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_vendor`
--

DROP TABLE IF EXISTS `ats_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_vendor` (
  `ats_vendor_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_contact_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_vendor_name` char(255) DEFAULT NULL,
  `ats_vendor_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ats_vendor_rate_type` enum('flat','percentage','other') DEFAULT NULL,
  `ats_vendor_account` char(255) DEFAULT NULL,
  `ats_vendor_markup` float DEFAULT NULL,
  `ats_vendor_inhouse` tinyint(1) DEFAULT NULL,
  `ats_vendor_show_in_list` tinyint(1) DEFAULT NULL,
  `ats_vendor_rate` float DEFAULT NULL,
  `ats_vendor_deactivation_reasons` char(255) DEFAULT NULL,
  `ats_vendor_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_vendor_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_vendor_resume_exclusivity_period` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_vendor_id`),
  KEY `ats_contact_id` (`ats_contact_id`),
  KEY `ats_user_id` (`ats_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_vendor_candidate`
--

DROP TABLE IF EXISTS `ats_vendor_candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_vendor_candidate` (
  `ats_vendor_candidate_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_vendor_candidate_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_vendor_candidate_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_vendor_id` int(11) NOT NULL DEFAULT '0',
  `ats_hiring_order_id` int(11) NOT NULL DEFAULT '0',
  `ats_candidate_id` int(11) DEFAULT NULL,
  `ats_vendor_candidate_released` datetime DEFAULT NULL,
  `ats_vendor_candidate_accepted` datetime DEFAULT NULL,
  `ats_vendor_candidate_rejected` datetime DEFAULT NULL,
  `ats_vendor_candidate_comment` text NOT NULL,
  PRIMARY KEY (`ats_vendor_candidate_id`),
  KEY `ats_candidate_id` (`ats_candidate_id`),
  KEY `ats_hiring_order_id` (`ats_hiring_order_id`),
  KEY `ats_vendor_id` (`ats_vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2106 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_vendor_chargecode`
--

DROP TABLE IF EXISTS `ats_vendor_chargecode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_vendor_chargecode` (
  `ats_vendor_chargecode_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_currency_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_vendor_chargecode_code` varchar(255) DEFAULT NULL,
  `ats_vendor_chargecode_department` varchar(255) DEFAULT NULL,
  `hua_org_level_id` int(10) unsigned DEFAULT NULL,
  `ats_vendor_chargecode_budget` decimal(10,0) DEFAULT NULL,
  `ats_vendor_chargecode_expenses` decimal(10,0) DEFAULT NULL,
  `ats_vendor_chargecode_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_vendor_chargecode_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ats_vendor_chargecode_id`),
  KEY `ats_currency_id` (`ats_currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_vendor_close_reason`
--

DROP TABLE IF EXISTS `ats_vendor_close_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_vendor_close_reason` (
  `ats_vendor_close_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_vendor_close_reason_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_vendor_close_reason_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_vendor_close_reason_name` char(255) NOT NULL,
  `ats_vendor_close_reason_description` char(255) DEFAULT NULL,
  `ats_vendor_close_reason_deactivated` tinyint(1) unsigned DEFAULT '0',
  `ats_vendor_close_reason_order` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`ats_vendor_close_reason_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_vendor_distribution_list`
--

DROP TABLE IF EXISTS `ats_vendor_distribution_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_vendor_distribution_list` (
  `ats_vendor_distribution_list_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_vendor_distribution_list_name` char(255) DEFAULT NULL,
  `ats_vendor_distribution_list_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_vendor_distribution_list_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ats_vendor_distribution_list_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_vendor_distribution_list_member`
--

DROP TABLE IF EXISTS `ats_vendor_distribution_list_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_vendor_distribution_list_member` (
  `ats_vendor_distribution_list_member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_vendor_distribution_list_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_vendor_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_vendor_distribution_list_member_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_vendor_distribution_list_member_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ats_vendor_distribution_list_member_id`),
  KEY `ats_vendor_id` (`ats_vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_vendor_location`
--

DROP TABLE IF EXISTS `ats_vendor_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_vendor_location` (
  `ats_vendor_location_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_vendor_location_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_vendor_location_date_created` datetime DEFAULT NULL,
  `ats_vendor_location_name` char(255) DEFAULT NULL,
  `ats_vendor_location_city` char(255) DEFAULT NULL,
  `ats_vendor_location_state` char(255) DEFAULT NULL,
  `ats_vendor_location_taxrate` char(255) DEFAULT NULL,
  `ats_vendor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`ats_vendor_location_id`),
  KEY `ats_vendor_id` (`ats_vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_vendor_user`
--

DROP TABLE IF EXISTS `ats_vendor_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_vendor_user` (
  `ats_vendor_user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_vendor_user_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_vendor_user_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_vendor_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_vendor_user_id`),
  KEY `ats_vendor_id` (`ats_vendor_id`),
  KEY `ats_user_id` (`ats_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_wizard`
--

DROP TABLE IF EXISTS `ats_wizard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_wizard` (
  `ats_wizard_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_wizard_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_wizard_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_creator_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_wizard_action_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_wizard_complete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_wizard_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_wizard_vars` text NOT NULL,
  `ats_wizard_steps_completed` varchar(100) NOT NULL,
  PRIMARY KEY (`ats_wizard_id`),
  KEY `ats_user_id` (`ats_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_wizard_action`
--

DROP TABLE IF EXISTS `ats_wizard_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_wizard_action` (
  `ats_wizard_action_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_wizard_action_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_wizard_action_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_wizard_action_name` varchar(255) NOT NULL,
  `ats_wizard_action_source` varchar(255) NOT NULL,
  `ats_wizard_action_complete_script` varchar(255) NOT NULL,
  `ats_wizard_action_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_wizard_action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_wizard_action_step`
--

DROP TABLE IF EXISTS `ats_wizard_action_step`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_wizard_action_step` (
  `ats_wizard_action_step_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_wizard_action_step_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_wizard_action_step_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_wizard_action_step_script` varchar(255) NOT NULL,
  `ats_wizard_action_step_order` int(3) unsigned NOT NULL DEFAULT '0',
  `ats_wizard_action_step_name` varchar(255) NOT NULL,
  `ats_wizard_action_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_wizard_action_step_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_wizard_action_step_id`),
  KEY `ats_wizard_action_id` (`ats_wizard_action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_workflow`
--

DROP TABLE IF EXISTS `ats_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_workflow` (
  `ats_workflow_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_workflow_date_created` datetime DEFAULT NULL,
  `ats_workflow_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_workflow_name` char(255) DEFAULT NULL,
  `ats_workflow_description` char(255) DEFAULT NULL,
  `ats_workflow_active` tinyint(1) NOT NULL DEFAULT '0',
  `hua_form_id` int(11) DEFAULT NULL,
  `ats_workflow_creator_user_id` int(10) unsigned DEFAULT NULL,
  `ats_workflow_allow_adhoc_approvers` tinyint(1) NOT NULL DEFAULT '0',
  `ats_workflow_approval_reminder` mediumint(8) unsigned DEFAULT NULL,
  `ats_workflow_stop_notification_threshold` smallint(5) unsigned DEFAULT NULL,
  `ats_workflow_require_rejection_comment` tinyint(1) NOT NULL DEFAULT '0',
  `ats_workflow_allow_edit_resubmit` tinyint(1) NOT NULL DEFAULT '0',
  `ats_workflow_status_change_warning` smallint(5) unsigned DEFAULT NULL,
  `ats_workflow_jobseeker_threshold` int(10) unsigned DEFAULT NULL,
  `ats_workflow_jobseeker_threshold_job_status_id` int(10) unsigned DEFAULT NULL,
  `ats_workflow_default` tinyint(1) NOT NULL DEFAULT '0',
  `ats_workflow_draft` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ats_workflow_offer_recruiter_approvers` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_offer_recruiter_letter` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_offer_letter_template_id` int(10) unsigned DEFAULT NULL,
  `ats_workflow_onboarding_recruiter_documents` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_default_jobseeker_type_id` tinyint(4) DEFAULT '0',
  `ats_workflow_requisition_managerial_approval_level` enum('creator','recruiter','hiring_manager') NOT NULL DEFAULT 'creator',
  `ats_workflow_requisition_managerial_approval_required` enum('always','creator') NOT NULL DEFAULT 'always',
  `ats_workflow_offer_managerial_approval_level` enum('creator','recruiter','hiring_manager') NOT NULL DEFAULT 'creator',
  `ats_workflow_offer_managerial_approval_required` enum('always','creator') NOT NULL DEFAULT 'always',
  `ats_workflow_use_onboarding` tinyint(1) NOT NULL DEFAULT '1',
  `ats_workflow_allow_route` tinyint(1) NOT NULL DEFAULT '1',
  `ats_workflow_allow_alternate_apply_method` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_offer_form_id` int(11) DEFAULT NULL,
  `ats_workflow_onboarding_require_letter` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ats_workflow_onboarding_allow_user_select_letter` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ats_workflow_onboarding_allow_user_create_notification` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ats_workflow_onboarding_letter_template_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_onboarding_letter_return_receipt` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_onboarding_display_wotc_invitation` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_is_hourly` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_allow_requisition_status_change` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_workflow_id`),
  KEY `ats_workflow_offer_letter_template_id` (`ats_workflow_offer_letter_template_id`),
  KEY `hua_form_id` (`hua_form_id`),
  KEY `ats_workflow_active` (`ats_workflow_active`,`ats_workflow_draft`,`ats_workflow_is_hourly`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_workflow_approver_job`
--

DROP TABLE IF EXISTS `ats_workflow_approver_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_workflow_approver_job` (
  `ats_workflow_approver_job_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_workflow_approver_job_date_created` datetime DEFAULT NULL,
  `ats_workflow_approver_job_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_workflow_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_job_id` int(11) DEFAULT NULL,
  `ats_workflow_approver_job_sequence` smallint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`ats_workflow_approver_job_id`),
  KEY `ats_workflow_id` (`ats_workflow_id`),
  KEY `hua_job_id` (`hua_job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_workflow_approver_offer`
--

DROP TABLE IF EXISTS `ats_workflow_approver_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_workflow_approver_offer` (
  `ats_workflow_approver_offer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_workflow_approver_offer_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_workflow_approver_offer_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_workflow_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_approver_offer_sequence` int(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`ats_workflow_approver_offer_id`),
  KEY `ats_user_id` (`ats_user_id`),
  KEY `ats_workflow_id` (`ats_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_workflow_association`
--

DROP TABLE IF EXISTS `ats_workflow_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_workflow_association` (
  `ats_workflow_association_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_workflow_association_date_created` datetime DEFAULT NULL,
  `ats_workflow_association_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_workflow_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_association_field` char(255) DEFAULT NULL,
  `ats_workflow_association_value` char(255) DEFAULT NULL,
  `ats_workflow_association_table` char(255) DEFAULT NULL,
  PRIMARY KEY (`ats_workflow_association_id`),
  KEY `ats_workflow_id` (`ats_workflow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_workflow_candidate_status`
--

DROP TABLE IF EXISTS `ats_workflow_candidate_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_workflow_candidate_status` (
  `ats_workflow_candidate_status_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_workflow_candidate_status_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_workflow_candidate_status_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_workflow_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_status_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_candidate_status_sequence` int(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_workflow_candidate_status_id`),
  KEY `ats_workflow_id` (`ats_workflow_id`),
  KEY `ats_jobseeker_status_id` (`ats_jobseeker_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3685 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_workflow_candidate_status_trigger`
--

DROP TABLE IF EXISTS `ats_workflow_candidate_status_trigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_workflow_candidate_status_trigger` (
  `ats_workflow_candidate_status_trigger_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_workflow_candidate_status_trigger_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_workflow_candidate_status_trigger_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_workflow_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_status_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_task_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_workflow_candidate_status_trigger_id`),
  KEY `ats_workflow_id` (`ats_workflow_id`),
  KEY `ats_jobseeker_status_id` (`ats_jobseeker_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_workflow_checklist_action`
--

DROP TABLE IF EXISTS `ats_workflow_checklist_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_workflow_checklist_action` (
  `ats_workflow_checklist_action_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_workflow_checklist_action_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_workflow_checklist_action_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_workflow_checklist_action_value` varchar(255) NOT NULL,
  `ats_workflow_checklist_action_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_checklist_action_script` varchar(255) NOT NULL,
  `ats_workflow_checklist_action_view_script` varchar(255) NOT NULL DEFAULT '',
  `ats_workflow_checklist_action_type` enum('single','multiple') NOT NULL DEFAULT 'single',
  `ats_workflow_checklist_action_source` varchar(255) NOT NULL,
  `ats_workflow_checklist_action_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_checklist_action_hide_tab` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_checklist_action_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `ats_workflow_checklist_action_candidate_view_script` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`ats_workflow_checklist_action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_workflow_default_role`
--

DROP TABLE IF EXISTS `ats_workflow_default_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_workflow_default_role` (
  `ats_workflow_default_role_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_workflow_default_role_date_created` datetime DEFAULT NULL,
  `ats_workflow_default_role_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_workflow_default_role_group_id` int(10) unsigned DEFAULT NULL,
  `ats_workflow_default_role_user_id` int(10) unsigned DEFAULT NULL,
  `ats_workflow_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_workflow_default_role_id`),
  KEY `ats_workflow_id` (`ats_workflow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_workflow_notification`
--

DROP TABLE IF EXISTS `ats_workflow_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_workflow_notification` (
  `ats_workflow_notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_workflow_notification_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ats_workflow_notification_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_workflow_id` int(10) unsigned DEFAULT '0',
  `ats_workflow_notification_type` enum('reject','approve','status_change','offer_approve','offer_reject') NOT NULL DEFAULT 'reject',
  `ats_group_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ats_workflow_notification_id`),
  KEY `ats_workflow_id` (`ats_workflow_id`)
) ENGINE=InnoDB AUTO_INCREMENT=352 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_workflow_offer_approval_chain`
--

DROP TABLE IF EXISTS `ats_workflow_offer_approval_chain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_workflow_offer_approval_chain` (
  `hua_approval_chain_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_approval_chain_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hua_approval_chain_date_created` datetime DEFAULT NULL,
  `hua_approval_chain_target_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_approval_chain_type` enum('serial','parallel') DEFAULT NULL,
  `hua_approval_chain_approval` enum('','approved','rejected') NOT NULL DEFAULT '',
  `hua_approval_chain_final_approval_date` datetime DEFAULT NULL,
  PRIMARY KEY (`hua_approval_chain_id`),
  KEY `hua_approval_chain_target_id` (`hua_approval_chain_target_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_workflow_offer_approval_chain_member`
--

DROP TABLE IF EXISTS `ats_workflow_offer_approval_chain_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_workflow_offer_approval_chain_member` (
  `hua_approval_chain_member_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_approval_chain_member_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hua_approval_chain_member_date_created` datetime DEFAULT NULL,
  `hua_approval_chain_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_approval_chain_member_target` varchar(255) NOT NULL,
  `hua_approval_chain_member_type` varchar(255) NOT NULL,
  `hua_approval_chain_member_order` int(11) NOT NULL DEFAULT '0',
  `hua_approval_chain_member_approval` enum('','approved','rejected') NOT NULL DEFAULT '',
  `hua_approval_chain_member_comment` text,
  `hua_approval_chain_member_final_approval_date` datetime DEFAULT NULL,
  `hua_approval_chain_member_approved_by` varchar(255) DEFAULT NULL,
  `hua_approval_chain_member_hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_approval_chain_member_id`),
  KEY `hua_approval_chain_id` (`hua_approval_chain_id`),
  KEY `hua_approval_chain_member_target` (`hua_approval_chain_member_target`),
  KEY `hua_approval_chain_member_type` (`hua_approval_chain_member_type`),
  KEY `hua_approval_chain_member_approved_by` (`hua_approval_chain_member_approved_by`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_workflow_onboarding_document`
--

DROP TABLE IF EXISTS `ats_workflow_onboarding_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_workflow_onboarding_document` (
  `ats_workflow_onboarding_document_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_workflow_onboarding_document_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `ats_workflow_onboarding_document_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_workflow_id` int(10) unsigned DEFAULT '0',
  `ats_onboarding_document_type_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`ats_workflow_onboarding_document_id`),
  KEY `ats_workflow_id` (`ats_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_workflow_onboarding_form`
--

DROP TABLE IF EXISTS `ats_workflow_onboarding_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_workflow_onboarding_form` (
  `ats_workflow_onboarding_form_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_workflow_onboarding_form_date_created` datetime DEFAULT NULL,
  `ats_workflow_onboarding_form_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_workflow_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_form_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_workflow_onboarding_form_id`),
  KEY `ats_workflow_id` (`ats_workflow_id`),
  KEY `hua_form_id` (`hua_form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_workflow_onboarding_new_hire_notification`
--

DROP TABLE IF EXISTS `ats_workflow_onboarding_new_hire_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_workflow_onboarding_new_hire_notification` (
  `ats_workflow_onboarding_new_hire_notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_workflow_onboarding_new_hire_notification_date_created` datetime NOT NULL,
  `ats_workflow_onboarding_new_hire_notification_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_workflow_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_letter_template_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_recipient_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_workflow_onboarding_new_hire_notification_id`),
  KEY `ats_workflow_id` (`ats_workflow_id`),
  KEY `ats_letter_template_id` (`ats_letter_template_id`),
  KEY `ats_recipient_id` (`ats_recipient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_workflow_requisition_approval_chain`
--

DROP TABLE IF EXISTS `ats_workflow_requisition_approval_chain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_workflow_requisition_approval_chain` (
  `hua_approval_chain_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_approval_chain_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hua_approval_chain_date_created` datetime DEFAULT NULL,
  `hua_approval_chain_target_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_approval_chain_type` enum('serial','parallel') DEFAULT NULL,
  `hua_approval_chain_approval` enum('','approved','rejected') NOT NULL DEFAULT '',
  `hua_approval_chain_final_approval_date` datetime DEFAULT NULL,
  PRIMARY KEY (`hua_approval_chain_id`),
  KEY `hua_approval_chain_target_id` (`hua_approval_chain_target_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_workflow_requisition_approval_chain_member`
--

DROP TABLE IF EXISTS `ats_workflow_requisition_approval_chain_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_workflow_requisition_approval_chain_member` (
  `hua_approval_chain_member_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_approval_chain_member_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hua_approval_chain_member_date_created` datetime DEFAULT NULL,
  `hua_approval_chain_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_approval_chain_member_target` varchar(255) NOT NULL,
  `hua_approval_chain_member_type` varchar(255) NOT NULL,
  `hua_approval_chain_member_order` int(11) NOT NULL DEFAULT '0',
  `hua_approval_chain_member_approval` enum('','approved','rejected') NOT NULL DEFAULT '',
  `hua_approval_chain_member_comment` text,
  `hua_approval_chain_member_final_approval_date` datetime DEFAULT NULL,
  `hua_approval_chain_member_approved_by` varchar(255) DEFAULT NULL,
  `hua_approval_chain_member_hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_approval_chain_member_id`),
  KEY `hua_approval_chain_id` (`hua_approval_chain_id`),
  KEY `hua_approval_chain_member_target` (`hua_approval_chain_member_target`),
  KEY `hua_approval_chain_member_type` (`hua_approval_chain_member_type`),
  KEY `hua_approval_chain_member_approved_by` (`hua_approval_chain_member_approved_by`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_workflow_requisition_status`
--

DROP TABLE IF EXISTS `ats_workflow_requisition_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_workflow_requisition_status` (
  `ats_workflow_requisition_status_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_workflow_requisition_status_date_created` datetime DEFAULT NULL,
  `ats_workflow_requisition_status_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_workflow_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_status_id` int(10) unsigned DEFAULT NULL,
  `ats_workflow_requisition_status_duration` int(11) DEFAULT NULL,
  `ats_workflow_requisition_status_sequence` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ats_workflow_requisition_status_id`),
  KEY `ats_requisition_status_id` (`ats_requisition_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_workflow_resume_submit`
--

DROP TABLE IF EXISTS `ats_workflow_resume_submit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_workflow_resume_submit` (
  `ats_workflow_resume_submit_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_workflow_resume_submit_date_created` datetime DEFAULT NULL,
  `ats_workflow_resume_submit_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_workflow_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_jobseeker_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_resume_submit_screen_before_profile` tinyint(1) NOT NULL DEFAULT '0',
  `ats_workflow_resume_submit_screen_in_letter_id` int(10) unsigned DEFAULT NULL,
  `ats_workflow_resume_submit_screen_out_letter_id` int(10) unsigned DEFAULT NULL,
  `ats_workflow_resume_submit_screen_out_jobseeker_status_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_resume_submit_screen_out_url` char(255) DEFAULT NULL,
  `ats_workflow_resume_submit_notify` enum('none','screened_in','all') NOT NULL DEFAULT 'none',
  `hua_form_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_resume_submit_final_url` char(255) NOT NULL DEFAULT '0',
  `ats_workflow_resume_submit_secondary_form_id` int(11) DEFAULT '0',
  `hua_assessment_vendor_id` int(11) DEFAULT NULL,
  `hua_terms_of_use_id` int(10) DEFAULT NULL,
  `ats_workflow_resume_submit_notify_hm` enum('none','screened_in','all') NOT NULL DEFAULT 'none',
  `ats_workflow_resume_submit_screen_out_rejection_code_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_resume_submit_screen_out_second_rejection_code_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_resume_submit_notify_adhoc` enum('none','screened_in','all') NOT NULL DEFAULT 'none',
  `ats_workflow_resume_submit_allow_override_diversity_setting` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_resume_submit_allow_override_diversity_protected` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_resume_submit_screen_out_request_assessment` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ats_workflow_resume_submit_id`),
  KEY `ats_jobseeker_type_id` (`ats_jobseeker_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_workflow_resume_submit_checklist`
--

DROP TABLE IF EXISTS `ats_workflow_resume_submit_checklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_workflow_resume_submit_checklist` (
  `ats_workflow_resume_submit_checklist_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ats_workflow_resume_submit_checklist_date_created` datetime DEFAULT NULL,
  `ats_workflow_resume_submit_checklist_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_workflow_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_checklist_action_id` int(10) unsigned DEFAULT '0',
  `ats_checklist_vendor_id` int(10) unsigned DEFAULT NULL,
  `ats_jobseeker_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_workflow_resume_submit_checklist_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_workflow_resume_submit_checklist_id`),
  KEY `ats_jobseeker_type_id` (`ats_jobseeker_type_id`),
  KEY `ats_workflow_id` (`ats_workflow_id`),
  KEY `ats_workflow_checklist_action_id` (`ats_workflow_checklist_action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=384 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_workflow_resume_submit_notify_adhoc`
--

DROP TABLE IF EXISTS `ats_workflow_resume_submit_notify_adhoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_workflow_resume_submit_notify_adhoc` (
  `ats_workflow_resume_submit_notify_adhoc_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_workflow_id` int(11) unsigned DEFAULT '0',
  `ats_workflow_resume_submit_notify_adhoc_address` varchar(255) NOT NULL,
  `ats_workflow_resume_submit_id` int(11) unsigned DEFAULT '0',
  `ats_workflow_resume_submit_notify_adhoc_address_type` enum('contact','user','default') NOT NULL DEFAULT 'default',
  PRIMARY KEY (`ats_workflow_resume_submit_notify_adhoc_id`),
  KEY `ats_workflow_resume_submit_id` (`ats_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ats_wotc`
--

DROP TABLE IF EXISTS `ats_wotc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ats_wotc` (
  `ats_wotc_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ats_wotc_last_modified` timestamp NULL DEFAULT NULL,
  `ats_wotc_date_created` datetime DEFAULT NULL,
  `ats_jobseeker_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_soa_integration_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_wotc_person_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ats_wotc_screening_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `ats_wotc_screening_status` enum('started','completed','hire_notification_sent') DEFAULT NULL,
  `ats_wotc_credit_value` varchar(10) DEFAULT NULL,
  `ats_wotc_eligibility` varchar(255) DEFAULT NULL,
  `ats_wotc_forms_due` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_wotc_forms_checklist_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_wotc_forms_signed` datetime DEFAULT NULL,
  `ats_wotc_forms_link` varchar(255) DEFAULT NULL,
  `ats_wotc_forms_received_date` datetime DEFAULT NULL,
  `ats_wotc_comments` varchar(255) DEFAULT NULL,
  `ats_wotc_optout` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_wotc_completed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ats_wotc_forms_reprint_link` varchar(255) DEFAULT NULL,
  `ats_wotc_jobseeker_notified` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ats_wotc_id`),
  KEY `ats_jobseeker_id` (`ats_jobseeker_id`,`ats_requisition_id`,`ats_wotc_completed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_career_path`
--

DROP TABLE IF EXISTS `cdsp_career_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_career_path` (
  `cdsp_career_path_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cdsp_career_path_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_career_path_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cdsp_user_id` int(10) unsigned DEFAULT NULL,
  `cdsp_career_path_status` char(255) DEFAULT 'pending',
  `cdsp_career_path_ultimate_job_id` int(11) DEFAULT NULL,
  `cdsp_career_path_date` datetime DEFAULT NULL,
  PRIMARY KEY (`cdsp_career_path_id`),
  KEY `cdsp_user_id` (`cdsp_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_career_path_job`
--

DROP TABLE IF EXISTS `cdsp_career_path_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_career_path_job` (
  `cdsp_career_path_job_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cdsp_career_path_job_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_career_path_job_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_job_id` int(10) unsigned DEFAULT NULL,
  `cdsp_career_path_id` int(10) unsigned DEFAULT NULL,
  `cdsp_career_path_job_status` char(255) DEFAULT NULL,
  `cdsp_career_path_job_nominator` int(10) unsigned DEFAULT NULL,
  `cdsp_career_path_job_sequence` smallint(5) unsigned DEFAULT NULL,
  `cdsp_career_path_job_required_time` char(255) DEFAULT NULL,
  `cdsp_career_path_job_purpose` char(255) DEFAULT NULL,
  `cdsp_career_path_job_training_needs` char(255) DEFAULT NULL,
  `cdsp_career_path_job_start_date` datetime DEFAULT NULL,
  `cdsp_career_path_job_end_date` datetime DEFAULT NULL,
  `cdsp_career_path_job_suitability` float DEFAULT NULL,
  PRIMARY KEY (`cdsp_career_path_job_id`),
  KEY `cdsp_career_path_id` (`cdsp_career_path_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_career_path_template`
--

DROP TABLE IF EXISTS `cdsp_career_path_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_career_path_template` (
  `cdsp_career_path_template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cdsp_career_path_template_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_career_path_template_date_created` datetime DEFAULT NULL,
  `cdsp_career_path_template_status` char(255) DEFAULT 'pending',
  `cdsp_career_path_template_ultimate_job_id` int(11) DEFAULT NULL,
  `cdsp_career_path_template_date` datetime DEFAULT NULL,
  PRIMARY KEY (`cdsp_career_path_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_career_path_template_jobs`
--

DROP TABLE IF EXISTS `cdsp_career_path_template_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_career_path_template_jobs` (
  `cdsp_career_path_template_jobs_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cdsp_career_path_template_jobs_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_career_path_template_jobs_date_created` datetime DEFAULT NULL,
  `hua_job_id` int(10) unsigned DEFAULT NULL,
  `cdsp_career_path_template_id` int(10) unsigned DEFAULT NULL,
  `cdsp_career_path_template_job_status` char(255) NOT NULL DEFAULT 'inactive',
  `cdsp_career_path_template_job_required_time` char(255) DEFAULT NULL,
  `cdsp_career_path_template_job_sequence` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`cdsp_career_path_template_jobs_id`),
  KEY `cdsp_career_path_template_id` (`cdsp_career_path_template_id`),
  KEY `hua_job_id` (`hua_job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_documents`
--

DROP TABLE IF EXISTS `cdsp_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_documents` (
  `cdsp_document_id` int(11) NOT NULL AUTO_INCREMENT,
  `cdsp_document_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_document_date_created` datetime DEFAULT NULL,
  `cdsp_document_name` char(255) DEFAULT NULL,
  `cdsp_document_description` char(255) DEFAULT NULL,
  `cdsp_document_owner` int(11) DEFAULT NULL,
  `cdsp_document_size` int(11) DEFAULT NULL,
  `cdsp_document_filename` char(255) DEFAULT NULL,
  PRIMARY KEY (`cdsp_document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_flight_risk`
--

DROP TABLE IF EXISTS `cdsp_flight_risk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_flight_risk` (
  `cdsp_flight_risk_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cdsp_flight_risk_date_created` datetime NOT NULL,
  `cdsp_flight_risk_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_flight_risk_name` varchar(255) NOT NULL,
  `cdsp_flight_risk_protected` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cdsp_flight_risk_order` int(11) unsigned NOT NULL DEFAULT '0',
  `cdsp_flight_risk_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cdsp_flight_risk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_mentoring_activities`
--

DROP TABLE IF EXISTS `cdsp_mentoring_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_mentoring_activities` (
  `cdsp_mentoring_activities_id` int(10) NOT NULL AUTO_INCREMENT,
  `cdsp_mentoring_activities_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_mentoring_activities_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cdsp_mentoring_relationships_id` int(10) NOT NULL DEFAULT '0',
  `cdsp_mentoring_activities_suggester_id` int(10) NOT NULL DEFAULT '0',
  `cdsp_mentoring_activities_activity` text NOT NULL,
  `cdsp_mentoring_activities_date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cdsp_mentoring_activities_date_completed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cdsp_mentoring_activities_acknowledged` tinyint(1) NOT NULL DEFAULT '0',
  `cdsp_mentoring_activities_in_progress` tinyint(1) NOT NULL DEFAULT '0',
  `cdsp_mentoring_activities_completed` tinyint(1) NOT NULL DEFAULT '0',
  `cdsp_mentoring_activities_description` text,
  PRIMARY KEY (`cdsp_mentoring_activities_id`),
  KEY `cdsp_mentoring_relationships_id` (`cdsp_mentoring_relationships_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_mentoring_messages`
--

DROP TABLE IF EXISTS `cdsp_mentoring_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_mentoring_messages` (
  `cdsp_mentoring_messages_id` int(10) NOT NULL AUTO_INCREMENT,
  `cdsp_mentoring_messages_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_mentoring_messages_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cdsp_mentoring_relationships_id` int(10) NOT NULL DEFAULT '0',
  `cdsp_mentoring_messager_id` int(10) NOT NULL DEFAULT '0',
  `cdsp_mentoring_messages_message` text,
  `cdsp_mentoring_messages_is_starred` int(1) NOT NULL DEFAULT '0',
  `cdsp_mentoring_messages_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`cdsp_mentoring_messages_id`),
  KEY `cdsp_mentoring_relationships_id` (`cdsp_mentoring_relationships_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_mentoring_relationships`
--

DROP TABLE IF EXISTS `cdsp_mentoring_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_mentoring_relationships` (
  `cdsp_mentoring_relationships_id` int(10) NOT NULL AUTO_INCREMENT,
  `cdsp_mentoring_relationships_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_mentoring_relationships_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cdsp_mentee_id` int(10) NOT NULL DEFAULT '0',
  `cdsp_mentor_id` int(10) NOT NULL DEFAULT '0',
  `cdsp_mentoring_relationships_goal` text NOT NULL,
  `cdsp_mentoring_relationships_status` varchar(255) NOT NULL,
  `cdsp_mentoring_relationships_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cdsp_mentoring_relationships_manager_approved` int(1) NOT NULL DEFAULT '0',
  `cdsp_mentoring_relationships_mentor_approved` int(1) NOT NULL DEFAULT '0',
  `cdsp_mentoring_relationships_manager_approval` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cdsp_mentoring_relationships_mentor_approval` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cdsp_mentoring_relationships_mentor_manager_approved` int(1) DEFAULT NULL,
  `cdsp_mentoring_relationships_mentor_manager_approval` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cdsp_mentoring_relationships_manager_note` text,
  `cdsp_mentoring_relationships_mentor_manager_note` text,
  `cdsp_mentoring_relationships_mentor_note` text,
  `cdsp_mentoring_relationships_rejected` int(1) NOT NULL DEFAULT '0',
  `cdsp_mentoring_relationships_ended` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cdsp_mentoring_relationships_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_next_action`
--

DROP TABLE IF EXISTS `cdsp_next_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_next_action` (
  `cdsp_next_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `cdsp_next_action_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_next_action_date_created` datetime DEFAULT NULL,
  `cdsp_next_action_name` varchar(255) DEFAULT NULL,
  `cdsp_next_action_description` varchar(255) DEFAULT NULL,
  `cdsp_next_action_order` smallint(5) unsigned DEFAULT NULL,
  `cdsp_next_action_deactivated` tinyint(1) unsigned DEFAULT NULL,
  `cdsp_next_action_system_flag` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`cdsp_next_action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_potential_history`
--

DROP TABLE IF EXISTS `cdsp_potential_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_potential_history` (
  `cdsp_potential_history_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cdsp_potential_history_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_potential_history_date_created` datetime DEFAULT NULL,
  `hua_user_id` int(11) unsigned NOT NULL,
  `cdsp_potential_history_potential` float DEFAULT NULL,
  PRIMARY KEY (`cdsp_potential_history_id`),
  KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_potential_matrix_cell`
--

DROP TABLE IF EXISTS `cdsp_potential_matrix_cell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_potential_matrix_cell` (
  `cdsp_potential_matrix_cell_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cdsp_potential_matrix_cell_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_potential_matrix_cell_date_created` datetime DEFAULT NULL,
  `cdsp_potential_matrix_cell_row` smallint(5) unsigned DEFAULT NULL,
  `cdsp_potential_matrix_cell_column` smallint(5) unsigned DEFAULT NULL,
  `cdsp_potential_matrix_cell_label` varchar(255) DEFAULT NULL,
  `cdsp_potential_matrix_cell_information` varchar(255) DEFAULT NULL,
  `cdsp_potential_matrix_cell_color` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`cdsp_potential_matrix_cell_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_potential_placement`
--

DROP TABLE IF EXISTS `cdsp_potential_placement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_potential_placement` (
  `cdsp_potential_placement_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cdsp_potential_placement_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_potential_placement_date_created` datetime NOT NULL,
  `cdsp_potential_placement_type_name` varchar(255) NOT NULL,
  `cdsp_potential_placement_logical_value` varchar(255) NOT NULL,
  `cdsp_potential_placement_lower_value` double DEFAULT NULL,
  `cdsp_potential_placement_upper_value` double DEFAULT NULL,
  PRIMARY KEY (`cdsp_potential_placement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_potential_rating_tip`
--

DROP TABLE IF EXISTS `cdsp_potential_rating_tip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_potential_rating_tip` (
  `cdsp_potential_rating_tip_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cdsp_potential_rating_tip_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_potential_rating_tip_date_created` datetime NOT NULL,
  `cdsp_potential_rating_tip_text` varchar(255) NOT NULL,
  `hua_scale_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_scale_value_name_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cdsp_potential_rating_tip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_project`
--

DROP TABLE IF EXISTS `cdsp_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_project` (
  `cdsp_project_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cdsp_project_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_project_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cdsp_user_id` int(11) DEFAULT NULL,
  `cdsp_project_name` char(255) DEFAULT NULL,
  `cdsp_project_description` char(255) DEFAULT NULL,
  `cdsp_project_stated_goal` char(255) DEFAULT NULL,
  `cdsp_project_team_lead` int(10) unsigned DEFAULT NULL,
  `cdsp_project_active` char(255) DEFAULT 'pending',
  `cdsp_project_start_date` datetime DEFAULT NULL,
  `cdsp_project_end_date` datetime DEFAULT NULL,
  `cdsp_project_gains_valid_days` int(10) unsigned DEFAULT '0',
  `cdsp_project_url` varchar(2083) DEFAULT NULL,
  PRIMARY KEY (`cdsp_project_id`),
  KEY `cdsp_user_id` (`cdsp_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_project_competency`
--

DROP TABLE IF EXISTS `cdsp_project_competency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_project_competency` (
  `cdsp_project_competency_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cdsp_project_competency_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_project_competency_date_created` datetime NOT NULL,
  `cdsp_project_id` int(11) NOT NULL DEFAULT '0',
  `hua_competency_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cdsp_project_competency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_project_discussion_board`
--

DROP TABLE IF EXISTS `cdsp_project_discussion_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_project_discussion_board` (
  `cdsp_project_discussion_board_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cdsp_project_discussion_board_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_project_discussion_board_date_created` datetime NOT NULL,
  `cdsp_project_discussion_board_target_id` int(11) unsigned NOT NULL DEFAULT '0',
  `cdsp_project_discussion_board_subject_model` varchar(255) DEFAULT NULL,
  `cdsp_project_discussion_board_subject_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`cdsp_project_discussion_board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_project_discussion_board_entry`
--

DROP TABLE IF EXISTS `cdsp_project_discussion_board_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_project_discussion_board_entry` (
  `cdsp_project_discussion_board_entry_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cdsp_project_discussion_board_entry_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_project_discussion_board_entry_date_created` datetime NOT NULL,
  `cdsp_project_discussion_board_id` int(11) unsigned NOT NULL,
  `cdsp_project_discussion_board_entry_parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `cdsp_project_discussion_board_entry_author_id` int(11) unsigned NOT NULL DEFAULT '0',
  `cdsp_project_discussion_board_entry_permission` varchar(255) DEFAULT NULL,
  `cdsp_project_phase_id` int(11) unsigned NOT NULL DEFAULT '0',
  `cdsp_project_discussion_board_entry_subject` text,
  `cdsp_project_discussion_board_entry_text` text,
  `hua_file_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cdsp_project_discussion_board_entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_project_member`
--

DROP TABLE IF EXISTS `cdsp_project_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_project_member` (
  `cdsp_project_member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cdsp_project_member_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_project_member_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cdsp_project_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cdsp_user_id` int(10) unsigned DEFAULT NULL,
  `cdsp_project_member_approved` tinyint(1) DEFAULT NULL,
  `cdsp_project_member_approved_by` int(11) DEFAULT NULL,
  `cdsp_project_member_team_lead` tinyint(4) DEFAULT NULL,
  `cdsp_project_member_deactivated` tinyint(1) NOT NULL DEFAULT '0',
  `cdsp_project_member_deactivated_comments` char(255) NOT NULL,
  `epm_appraisal_id` int(11) NOT NULL,
  `epm_360_id` int(11) NOT NULL,
  PRIMARY KEY (`cdsp_project_member_id`),
  KEY `cdsp_project_id` (`cdsp_project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_project_milestone`
--

DROP TABLE IF EXISTS `cdsp_project_milestone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_project_milestone` (
  `cdsp_project_milestone_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cdsp_project_milestone_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_project_milestone_date_created` datetime DEFAULT NULL,
  `cdsp_project_id` int(10) unsigned DEFAULT NULL,
  `cdsp_user_id` int(10) unsigned DEFAULT NULL,
  `cdsp_project_milestone_description` text,
  `cdsp_project_milestone_date` date DEFAULT NULL,
  PRIMARY KEY (`cdsp_project_milestone_id`),
  KEY `cdsp_project_id` (`cdsp_project_id`),
  KEY `cdsp_user_id` (`cdsp_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_project_skill`
--

DROP TABLE IF EXISTS `cdsp_project_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_project_skill` (
  `cdsp_project_skill_id` int(11) NOT NULL AUTO_INCREMENT,
  `cdsp_project_skill_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_project_skill_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cdsp_project_id` int(11) DEFAULT NULL,
  `hua_skill_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cdsp_project_skill_id`),
  KEY `cdsp_project_id` (`cdsp_project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_ranking_rater`
--

DROP TABLE IF EXISTS `cdsp_ranking_rater`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_ranking_rater` (
  `cdsp_ranking_rater_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cdsp_ranking_rater_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_ranking_rater_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cdsp_ranking_rater_user_id` int(10) unsigned DEFAULT NULL,
  `cdsp_ranking_request_id` int(10) unsigned DEFAULT NULL,
  `cdsp_ranking_rater_submitted` datetime DEFAULT NULL,
  `cdsp_succession_plan_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cdsp_ranking_rater_id`),
  KEY `cdsp_ranking_request_id` (`cdsp_ranking_request_id`),
  KEY `cdsp_succession_plan_id` (`cdsp_succession_plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_ranking_request`
--

DROP TABLE IF EXISTS `cdsp_ranking_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_ranking_request` (
  `cdsp_ranking_request_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cdsp_ranking_request_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_ranking_request_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cdsp_succession_plan_id` int(10) unsigned DEFAULT NULL,
  `cdsp_ranking_request_date_closed` datetime DEFAULT NULL,
  `cdsp_ranking_request_expiration_date` datetime DEFAULT NULL,
  PRIMARY KEY (`cdsp_ranking_request_id`),
  KEY `cdsp_succession_plan_id` (`cdsp_succession_plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_ranking_successor`
--

DROP TABLE IF EXISTS `cdsp_ranking_successor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_ranking_successor` (
  `cdsp_ranking_successor_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cdsp_ranking_successor_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_ranking_successor_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cdsp_ranking_rater_id` int(10) unsigned DEFAULT NULL,
  `cdsp_ranking_successor_user_id` int(10) DEFAULT NULL,
  `cdsp_ranking_successor_score` float DEFAULT '0',
  `cdsp_ranking_request_id` int(10) unsigned DEFAULT NULL,
  `cdsp_succession_plan_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cdsp_ranking_successor_id`),
  KEY `cdsp_ranking_rater_id` (`cdsp_ranking_rater_id`),
  KEY `cdsp_ranking_request_id` (`cdsp_ranking_request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_readiness_for_position`
--

DROP TABLE IF EXISTS `cdsp_readiness_for_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_readiness_for_position` (
  `cdsp_readiness_for_position_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cdsp_readiness_for_position_name` varchar(64) NOT NULL,
  `cdsp_readiness_for_position_protected` tinyint(1) DEFAULT '0',
  `cdsp_readiness_for_position_deactivated` tinyint(1) unsigned DEFAULT '0',
  `cdsp_readiness_for_position_order` smallint(5) unsigned NOT NULL,
  `cdsp_readiness_for_position_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_readiness_for_position_date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`cdsp_readiness_for_position_id`),
  UNIQUE KEY `cdsp_readiness_for_position_name` (`cdsp_readiness_for_position_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_succession_plan`
--

DROP TABLE IF EXISTS `cdsp_succession_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_succession_plan` (
  `cdsp_succession_plan_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cdsp_succession_plan_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_succession_plan_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cdsp_user_id` int(11) DEFAULT NULL,
  `cdsp_succession_plan_name` char(255) DEFAULT NULL,
  `hua_job_id` int(10) unsigned DEFAULT NULL,
  `cdsp_succession_plan_created` datetime DEFAULT NULL,
  PRIMARY KEY (`cdsp_succession_plan_id`),
  KEY `cdsp_user_id` (`cdsp_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_succession_plan_employee`
--

DROP TABLE IF EXISTS `cdsp_succession_plan_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_succession_plan_employee` (
  `cdsp_succession_plan_employee_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cdsp_succession_plan_employee_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_succession_plan_employee_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cdsp_user_id` int(10) unsigned DEFAULT NULL,
  `cdsp_succession_plan_employee_sequence` smallint(5) unsigned DEFAULT NULL,
  `cdsp_succession_plan_id` int(10) unsigned DEFAULT NULL,
  `cdsp_succession_plan_employee_suitability` float DEFAULT NULL,
  `cdsp_succession_plan_employee_nominator` int(10) unsigned DEFAULT NULL,
  `cdsp_succession_plan_employee_confirmed_date` datetime DEFAULT NULL,
  `cdsp_succession_plan_employee_type` datetime DEFAULT NULL,
  `cdsp_succession_plan_employee_informed_date` datetime DEFAULT NULL,
  `cdsp_succession_plan_employee_delete` tinyint(1) DEFAULT NULL,
  `cdsp_succession_plan_employee_nomination_date` datetime DEFAULT NULL,
  `cdsp_readiness_for_position_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cdsp_succession_plan_employee_id`),
  KEY `cdsp_succession_plan_id` (`cdsp_succession_plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_succession_plan_participant`
--

DROP TABLE IF EXISTS `cdsp_succession_plan_participant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_succession_plan_participant` (
  `cdsp_succession_plan_participant_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cdsp_succession_plan_id` int(10) unsigned DEFAULT NULL,
  `cdsp_user_id` int(10) unsigned DEFAULT NULL,
  `cdsp_succession_plan_participant_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_succession_plan_participant_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cdsp_succession_plan_participant_nominate_permission` tinyint(1) NOT NULL DEFAULT '0',
  `cdsp_succession_plan_participant_approve_permission` tinyint(1) NOT NULL DEFAULT '0',
  `cdsp_succession_plan_participant_remove_permission` tinyint(1) NOT NULL DEFAULT '0',
  `cdsp_succession_plan_participant_expiration_date` datetime DEFAULT NULL,
  `cdsp_succession_plan_participant_manage_development_plan` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cdsp_succession_plan_participant_reorder_permission` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cdsp_succession_plan_participant_id`),
  KEY `cdsp_succession_plan_id` (`cdsp_succession_plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_user`
--

DROP TABLE IF EXISTS `cdsp_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_user` (
  `cdsp_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cdsp_user_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_user_date_created` datetime DEFAULT NULL,
  `cdsp_user_overall_potential` float DEFAULT NULL,
  `cdsp_user_is_mentor` int(1) NOT NULL DEFAULT '0',
  `cdsp_user_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `cdsp_user_overall_potential_na` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`cdsp_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdsp_user_next_action`
--

DROP TABLE IF EXISTS `cdsp_user_next_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdsp_user_next_action` (
  `cdsp_user_next_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `cdsp_user_next_action_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_user_next_action_date_created` datetime DEFAULT NULL,
  `hua_user_id` int(11) DEFAULT NULL,
  `cdsp_next_action_id` int(11) DEFAULT NULL,
  `cdsp_user_next_action_system_flag` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`cdsp_user_next_action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `debug_untranslated_token`
--

DROP TABLE IF EXISTS `debug_untranslated_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `debug_untranslated_token` (
  `debug_untranslated_token_id` int(11) NOT NULL AUTO_INCREMENT,
  `debug_untranslated_token_date_created` datetime DEFAULT NULL,
  `debug_untranslated_token_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `debug_untranslated_token_name` varchar(255) DEFAULT NULL,
  `debug_untranslated_token_language` varchar(255) DEFAULT NULL,
  `debug_untranslated_token_script` varchar(255) DEFAULT NULL,
  `debug_untranslated_token_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`debug_untranslated_token_id`),
  KEY `debug_untranslated_token_name` (`debug_untranslated_token_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deltek_xml_temp`
--

DROP TABLE IF EXISTS `deltek_xml_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deltek_xml_temp` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_id` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `email_address` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_cdsp_project_metric`
--

DROP TABLE IF EXISTS `deprecated_cdsp_project_metric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_cdsp_project_metric` (
  `cdsp_project_metric_id` int(11) NOT NULL AUTO_INCREMENT,
  `cdsp_project_metric_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_project_metric_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cdsp_project_id` int(11) DEFAULT NULL,
  `hua_metric_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cdsp_project_metric_id`),
  KEY `cdsp_project_id` (`cdsp_project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_hua_development_plan_item_metric`
--

DROP TABLE IF EXISTS `deprecated_hua_development_plan_item_metric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_hua_development_plan_item_metric` (
  `hua_development_plan_item_metric_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_development_plan_item_metric_date_created` datetime NOT NULL,
  `hua_development_plan_item_metric_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_development_plan_item_id` int(10) unsigned DEFAULT NULL,
  `hua_metric_id` int(10) unsigned NOT NULL,
  `hua_development_plan_item_metric_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_development_plan_item_metric_id`),
  KEY `hua_development_plan_item_id` (`hua_development_plan_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_hua_development_suggestion`
--

DROP TABLE IF EXISTS `deprecated_hua_development_suggestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_hua_development_suggestion` (
  `hua_development_suggestion_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_development_suggestion_date_created` datetime NOT NULL,
  `hua_development_suggestion_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_development_suggestion_name` varchar(255) NOT NULL,
  `hua_development_suggestion_body` varchar(255) NOT NULL,
  `hua_development_suggestion_creator_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_development_suggestion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_hua_development_suggestion_to_metric`
--

DROP TABLE IF EXISTS `deprecated_hua_development_suggestion_to_metric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_hua_development_suggestion_to_metric` (
  `hua_development_suggestion_to_metric_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_development_suggestion_to_metric_date_created` datetime NOT NULL,
  `hua_development_suggestion_to_metric_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_development_suggestion_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_metric_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`hua_development_suggestion_to_metric_id`),
  KEY `suggestion_id` (`hua_development_suggestion_id`),
  KEY `metric_id` (`hua_metric_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_hua_job_history_metrics_gained`
--

DROP TABLE IF EXISTS `deprecated_hua_job_history_metrics_gained`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_hua_job_history_metrics_gained` (
  `hua_job_history_metrics_gained_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_job_history_metrics_gained_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_job_history_metrics_gained_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_job_history_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_metric_id` int(11) unsigned DEFAULT NULL,
  `hua_job_history_metrics_gained_score` float DEFAULT NULL,
  PRIMARY KEY (`hua_job_history_metrics_gained_id`),
  KEY `hua_job_history_id` (`hua_job_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_hua_job_metric_gained`
--

DROP TABLE IF EXISTS `deprecated_hua_job_metric_gained`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_hua_job_metric_gained` (
  `hua_job_metric_gained_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_job_metric_gained_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_job_metric_gained_date_created` datetime DEFAULT NULL,
  `hua_job_id` int(10) unsigned DEFAULT NULL,
  `hua_metric_id` int(10) unsigned DEFAULT NULL,
  `hua_scale_value_names_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`hua_job_metric_gained_id`),
  KEY `hua_job_id` (`hua_job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_hua_job_metric_required`
--

DROP TABLE IF EXISTS `deprecated_hua_job_metric_required`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_hua_job_metric_required` (
  `hua_job_metric_required_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_job_metric_required_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_job_metric_required_date_created` datetime DEFAULT NULL,
  `hua_job_id` int(10) unsigned DEFAULT NULL,
  `hua_metric_id` int(10) unsigned DEFAULT NULL,
  `hua_scale_value_name_id` int(10) unsigned DEFAULT NULL,
  `hua_job_metric_required_min_score` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`hua_job_metric_required_id`),
  KEY `hua_job_id` (`hua_job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_hua_metric`
--

DROP TABLE IF EXISTS `deprecated_hua_metric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_hua_metric` (
  `hua_metric_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_metric_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_metric_date_created` datetime DEFAULT NULL,
  `hua_metric_type_id` int(11) DEFAULT NULL,
  `hua_metric_pertinence` enum('global','personal') DEFAULT NULL,
  `hua_metric_weighted` tinyint(4) DEFAULT '0',
  `hua_metric_name` text,
  `hua_metric_desc` text,
  `hua_metric_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `hua_metric_creator_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`hua_metric_id`),
  KEY `hua_metric_type_id` (`hua_metric_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_hua_metric_library`
--

DROP TABLE IF EXISTS `deprecated_hua_metric_library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_hua_metric_library` (
  `hua_metric_library_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_metric_library_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_metric_library_date_created` datetime DEFAULT NULL,
  `hua_metric_library_section` varchar(255) DEFAULT NULL,
  `hua_metric_library_name` varchar(255) DEFAULT NULL,
  `hua_metric_library_desc` text,
  PRIMARY KEY (`hua_metric_library_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_hua_metric_type`
--

DROP TABLE IF EXISTS `deprecated_hua_metric_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_hua_metric_type` (
  `hua_metric_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_metric_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_metric_type_date_created` datetime DEFAULT NULL,
  `hua_metric_type_name` char(255) DEFAULT NULL,
  `hua_metric_type_class` char(100) NOT NULL DEFAULT '0',
  `hua_metric_type_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_metric_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_hua_project`
--

DROP TABLE IF EXISTS `deprecated_hua_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_hua_project` (
  `hua_project_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_project_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_project_date_created` datetime NOT NULL,
  `hua_project_name` varchar(255) NOT NULL,
  `hua_project_creator_user_id` int(10) unsigned NOT NULL,
  `hua_project_owner_user_id` int(10) unsigned DEFAULT NULL,
  `hua_project_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_project_id`),
  UNIQUE KEY `hua_project_name` (`hua_project_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_hua_user_metric`
--

DROP TABLE IF EXISTS `deprecated_hua_user_metric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_hua_user_metric` (
  `hua_user_metric_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_metric_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_metric_date_created` datetime DEFAULT NULL,
  `hua_user_id` int(11) DEFAULT NULL,
  `hua_metric_id` int(11) DEFAULT NULL,
  `hua_user_metric_score` float DEFAULT NULL,
  `hua_user_metric_approved` datetime DEFAULT NULL,
  `hua_user_metric_type` char(255) DEFAULT NULL,
  `hua_user_appraisal_id` int(11) DEFAULT NULL,
  `hua_user_metric_endorsed` int(10) unsigned DEFAULT '0',
  `hua_user_metric_valid_from` date DEFAULT NULL,
  PRIMARY KEY (`hua_user_metric_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `hua_metric_id` (`hua_metric_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_lms_class_metric_gained`
--

DROP TABLE IF EXISTS `deprecated_lms_class_metric_gained`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_lms_class_metric_gained` (
  `lms_class_metric_gained_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_class_metric_gained_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_class_metric_gained_date_created` datetime DEFAULT NULL,
  `lms_class_id` int(10) unsigned DEFAULT NULL,
  `hua_metric_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`lms_class_metric_gained_id`),
  KEY `hua_metric_id` (`hua_metric_id`),
  KEY `lms_class_id` (`lms_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_lms_course_metric_gained`
--

DROP TABLE IF EXISTS `deprecated_lms_course_metric_gained`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_lms_course_metric_gained` (
  `lms_course_metric_gained_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_course_metric_gained_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_course_metric_gained_date_created` datetime DEFAULT NULL,
  `lms_course_id` int(10) unsigned DEFAULT NULL,
  `hua_metric_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`lms_course_metric_gained_id`),
  KEY `hua_metric_id` (`hua_metric_id`),
  KEY `lms_course_id` (`lms_course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_appraisable_metric`
--

DROP TABLE IF EXISTS `deprecated_pas_appraisable_metric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_appraisable_metric` (
  `hua_metric_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_metric_type_id` int(11) NOT NULL DEFAULT '0',
  `pas_appraiser_group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_appraisable_metric_score` float DEFAULT NULL,
  `pas_appraisable_metric_weight` float DEFAULT NULL,
  `pas_appraisable_metric_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pas_appraisable_metric_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pas_appraisable_metric_date_created` datetime DEFAULT NULL,
  `hua_skill_id` int(11) NOT NULL DEFAULT '0',
  `hua_skill_category_id` int(11) NOT NULL DEFAULT '0',
  `hua_metric_type_id_origional` int(11) NOT NULL DEFAULT '0',
  `metric_source` enum('','job_metric_gained','job_metric_required','job_skills_required','job_skills_gained','cascade_metric') NOT NULL,
  `metric_origin` char(50) DEFAULT NULL,
  `pas_appraisable_metric_hint_id` int(11) NOT NULL DEFAULT '0',
  `metric_origin_name` char(50) DEFAULT NULL,
  `associated_metric` int(11) NOT NULL DEFAULT '0',
  `is_smartgoal` int(1) NOT NULL DEFAULT '0',
  `pas_appraisable_metric_scaled_score` float DEFAULT NULL,
  `completion_equals_score` int(1) NOT NULL DEFAULT '0',
  `pas_appraisable_metric_target_date` date DEFAULT NULL,
  `pas_appraisable_metric_retired` datetime DEFAULT NULL,
  `pas_appraisable_metric_weight_at_retirement` float DEFAULT NULL,
  `pas_appraisable_metric_order` int(11) NOT NULL DEFAULT '0',
  `pas_appraisable_metric_score_na` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pas_appraisable_metric_id`),
  KEY `pas_appraisable_metric_FKIndex1` (`pas_appraiser_group_id`),
  KEY `pas_appraisable_metric_FKIndex3` (`hua_metric_id`),
  KEY `hua_metric_type_id` (`hua_metric_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_appraisable_metric_smartgoal`
--

DROP TABLE IF EXISTS `deprecated_pas_appraisable_metric_smartgoal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_appraisable_metric_smartgoal` (
  `pas_appraisable_metric_id` int(11) NOT NULL DEFAULT '0',
  `pas_appraisable_metric_smartgoal_name` varchar(255) DEFAULT NULL,
  `original_value` varchar(20) DEFAULT NULL,
  `goal_value` varchar(20) DEFAULT NULL,
  `reference_value` varchar(255) DEFAULT NULL,
  `pas_appraisable_metric_smartgoal_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  KEY `pas_appraisable_metric_id` (`pas_appraisable_metric_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_appraisal`
--

DROP TABLE IF EXISTS `deprecated_pas_appraisal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_appraisal` (
  `pas_appraisal_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pas_appraisal_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pas_appraisal_date_created` datetime DEFAULT NULL,
  `hua_scale_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_status_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_appraisal_furthest_phase` int(11) NOT NULL DEFAULT '0',
  `pas_workflow_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_workflow_first_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_job_id` int(11) NOT NULL DEFAULT '0',
  `pas_appraisal_startdate` datetime DEFAULT NULL,
  `pas_appraisal_enddate` datetime DEFAULT NULL,
  `pas_appraisal_total_score` float DEFAULT NULL,
  `hua_job_family_id` int(10) unsigned DEFAULT NULL,
  `pas_calculated_score` float DEFAULT NULL,
  `pas_appraisal_scale_upper` float DEFAULT NULL,
  `pas_appraisal_scale_increment` float DEFAULT NULL,
  `pas_appraisal_final_score` float DEFAULT NULL,
  `pas_appraisal_supervisor_comment` text,
  `pas_appraisal_employee_final_comment` text,
  `pas_appraisal_is_primary` tinyint(1) NOT NULL DEFAULT '0',
  `pas_appraisal_template_matched` char(255) DEFAULT NULL,
  `hua_manager_id` int(10) unsigned DEFAULT '0',
  `pas_appraisal_nomination_deadline` datetime DEFAULT NULL,
  `pas_appraisal_nomination_done` tinyint(1) NOT NULL DEFAULT '0',
  `pas_override_score` float DEFAULT NULL,
  `pas_appraisal_project_id` int(10) unsigned DEFAULT NULL,
  `pas_appraisal_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pas_appraisal_id`),
  KEY `pas_appraisal_FKIndex1` (`pas_user_id`),
  KEY `pas_appraisal_FKIndex2` (`pas_workflow_id`),
  KEY `pas_appraisal_FKIndex3` (`pas_status_id`),
  KEY `pas_appraisal_FKIndex4` (`hua_scale_id`),
  KEY `hua_job_id` (`hua_job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_appraisal_delete`
--

DROP TABLE IF EXISTS `deprecated_pas_appraisal_delete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_appraisal_delete` (
  `pas_appraisal_id` int(10) unsigned DEFAULT NULL,
  `pas_appraisal_last_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `pas_appraisal_date_created` datetime DEFAULT NULL,
  `hua_scale_id` int(10) unsigned DEFAULT NULL,
  `pas_status_id` int(10) unsigned DEFAULT NULL,
  `pas_appraisal_furthest_phase` int(11) DEFAULT NULL,
  `pas_workflow_id` int(10) unsigned DEFAULT NULL,
  `pas_workflow_first_id` int(10) unsigned DEFAULT NULL,
  `pas_user_id` int(10) unsigned DEFAULT NULL,
  `hua_job_id` int(11) DEFAULT NULL,
  `pas_appraisal_startdate` datetime DEFAULT NULL,
  `pas_appraisal_enddate` datetime DEFAULT NULL,
  `pas_appraisal_total_score` float DEFAULT NULL,
  `hua_job_family_id` int(10) unsigned DEFAULT NULL,
  `pas_calculated_score` float DEFAULT NULL,
  `pas_appraisal_scale_upper` float DEFAULT NULL,
  `pas_appraisal_scale_increment` float DEFAULT NULL,
  `pas_appraisal_final_score` float DEFAULT NULL,
  `pas_appraisal_supervisor_comment` char(255) DEFAULT NULL,
  `pas_appraisal_rejection_note` text,
  `pas_appraisal_employee_final_comment` char(255) DEFAULT NULL,
  `pas_appraisal_is_primary` tinyint(1) DEFAULT NULL,
  `pas_appraisal_template_matched` char(255) DEFAULT NULL,
  `pas_appraisal_employee_view_rejection_note` tinyint(1) unsigned DEFAULT NULL,
  `hua_manager_id` int(10) unsigned DEFAULT NULL,
  `pas_appraisal_nomination_deadline` datetime DEFAULT NULL,
  `pas_appraisal_nomination_done` tinyint(1) DEFAULT NULL,
  `pas_override_score` int(11) DEFAULT NULL,
  KEY `hua_job_id` (`hua_job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_appraisal_delete_request`
--

DROP TABLE IF EXISTS `deprecated_pas_appraisal_delete_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_appraisal_delete_request` (
  `pas_appraisal_delete_request_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pas_appraisal_delete_request_last_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `pas_appraisal_delete_request_date_created` datetime DEFAULT NULL,
  `pas_appraisal_id` int(11) unsigned DEFAULT NULL,
  `hua_user_id` int(11) unsigned DEFAULT NULL,
  `pas_appraisal_delete_request_reason` text,
  `pas_appraisal_delete_request_approver_decision` enum('','approved','rejected') DEFAULT NULL,
  PRIMARY KEY (`pas_appraisal_delete_request_id`),
  KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_appraisal_metric`
--

DROP TABLE IF EXISTS `deprecated_pas_appraisal_metric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_appraisal_metric` (
  `pas_appraisal_metric_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pas_appraisal_metric_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pas_appraisal_metric_date_created` datetime DEFAULT NULL,
  `hua_metric_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_appraisal_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_appraisal_metric_weight` float DEFAULT NULL,
  `hua_metric_type_id` int(11) NOT NULL DEFAULT '0',
  `hua_skill_id` int(11) NOT NULL DEFAULT '0',
  `hua_skill_category_id` int(11) NOT NULL DEFAULT '0',
  `hua_metric_type_id_origional` int(11) NOT NULL DEFAULT '0',
  `metric_source` enum('','job_metric_gained','job_metric_required','job_skills_required','job_skills_gained') NOT NULL,
  `metric_origin` char(50) DEFAULT NULL,
  `metric_origin_name` char(50) DEFAULT NULL,
  `pas_appraisal_metric_retired` datetime DEFAULT NULL,
  `pas_appraisal_metric_weight_at_retirement` float DEFAULT NULL,
  `pas_appraisal_metric_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pas_appraisal_metric_id`),
  KEY `pas_appraisal_metric_FKIndex1` (`pas_appraisal_id`),
  KEY `pas_appraisal_metric_FKIndex2` (`hua_metric_id`),
  KEY `hua_metric_type_id` (`hua_metric_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_appraiser_group`
--

DROP TABLE IF EXISTS `deprecated_pas_appraiser_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_appraiser_group` (
  `pas_appraiser_group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pas_appraiser_group_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pas_appraiser_group_date_created` datetime DEFAULT NULL,
  `pas_appraisal_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_appraiser_group_name` char(255) DEFAULT NULL,
  `pas_appraiser_group_type` char(255) DEFAULT NULL,
  `pas_appraiser_group_rated` tinyint(1) unsigned DEFAULT NULL,
  `pas_appraiser_group_weight` float DEFAULT NULL,
  `pas_appraiser_group_parent_id` int(10) unsigned DEFAULT NULL,
  `pas_appraiser_group_score` float DEFAULT NULL,
  `pas_appraiser_group_sequence` int(11) DEFAULT '0',
  `pas_appraiser_group_submitted` datetime DEFAULT NULL,
  `pas_appraiser_group_limit_metric_type_view` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pas_appraiser_group_id`),
  KEY `pas_appraiser_group_FKIndex1` (`pas_appraisal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_appraiser_groupmember`
--

DROP TABLE IF EXISTS `deprecated_pas_appraiser_groupmember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_appraiser_groupmember` (
  `pas_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_appraiser_group_id` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `pas_appraiser_groupmember_FKIndex1` (`pas_appraiser_group_id`),
  KEY `pas_appraiser_groupmember_FKIndex2` (`pas_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_approver_group`
--

DROP TABLE IF EXISTS `deprecated_pas_approver_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_approver_group` (
  `pas_appraisal_id` int(11) DEFAULT NULL,
  `pas_approver_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `pas_approver_group_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pas_approver_group_date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`pas_approver_group_id`),
  KEY `pas_appraisal_id` (`pas_appraisal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_approver_groupmember`
--

DROP TABLE IF EXISTS `deprecated_pas_approver_groupmember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_approver_groupmember` (
  `pas_approver_groupmember_id` int(11) NOT NULL AUTO_INCREMENT,
  `pas_approver_groupmember_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pas_approver_groupmember_date_created` datetime DEFAULT NULL,
  `pas_user_id` int(11) DEFAULT NULL,
  `pas_approver_groupmember_action_date` datetime DEFAULT NULL,
  `pas_approver_group_id` int(11) DEFAULT NULL,
  `pas_approver_groupmember_action` char(1) DEFAULT NULL,
  `pas_approver_groupmember_action_note` text,
  `pas_approver_groupmember_employee_view_note` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pas_approver_groupmember_id`),
  KEY `pas_approver_group_id` (`pas_approver_group_id`),
  KEY `pas_user_id` (`pas_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_cascade_metric`
--

DROP TABLE IF EXISTS `deprecated_pas_cascade_metric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_cascade_metric` (
  `pas_cascade_metric_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pas_cascade_metric_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pas_cascade_metric_date_created` datetime DEFAULT NULL,
  `pas_appraisable_metric_id` int(10) unsigned NOT NULL DEFAULT '0',
  `parent_appraisable_metric_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_cascade_metric_percent_of_parent` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `pas_cascade_metric_percent_uncascaded` tinyint(4) unsigned NOT NULL DEFAULT '100',
  `pas_cascade_metric_score` int(11) NOT NULL DEFAULT '0',
  `pas_cascade_metric_name` text,
  `pas_cascade_metric_desc` text,
  `pas_cascade_metric_enddate` datetime DEFAULT NULL,
  `pas_cascade_metric_endnote` text NOT NULL,
  `pas_cascade_metric_author` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pas_cascade_metric_id`),
  UNIQUE KEY `pas_appraisable_metric_id` (`pas_appraisable_metric_id`),
  KEY `parent_appraisable_metric_index` (`parent_appraisable_metric_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='extra information suppliments pas_appraisable_metrics that c';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_cascade_metric_request`
--

DROP TABLE IF EXISTS `deprecated_pas_cascade_metric_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_cascade_metric_request` (
  `pas_cascade_metric_request_id` int(10) NOT NULL AUTO_INCREMENT,
  `pas_cascade_metric_request_user_id` int(11) DEFAULT NULL,
  `pas_cascade_metric_id` int(10) DEFAULT NULL,
  `pas_cascade_metric_request_filled` tinyint(1) NOT NULL DEFAULT '0',
  `pas_cascade_metric_request_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pas_cascade_metric_request_date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`pas_cascade_metric_request_id`),
  KEY `pas_cascade_metric_id` (`pas_cascade_metric_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PACK_KEYS=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_default_appraiser_group`
--

DROP TABLE IF EXISTS `deprecated_pas_default_appraiser_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_default_appraiser_group` (
  `pas_default_appraiser_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `pas_default_appraiser_group_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pas_default_appraiser_group_date_created` datetime DEFAULT NULL,
  `pas_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_default_appraiser_group_name` char(255) DEFAULT NULL,
  `pas_default_appraiser_group_type` char(255) DEFAULT NULL,
  PRIMARY KEY (`pas_default_appraiser_group_id`),
  KEY `pas_user_id` (`pas_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_default_appraiser_groupmember`
--

DROP TABLE IF EXISTS `deprecated_pas_default_appraiser_groupmember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_default_appraiser_groupmember` (
  `pas_user_id` int(11) DEFAULT NULL,
  `pas_default_appraiser_group_id` int(11) DEFAULT NULL,
  KEY `pas_default_appraiser_group_id` (`pas_default_appraiser_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_default_approver_group`
--

DROP TABLE IF EXISTS `deprecated_pas_default_approver_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_default_approver_group` (
  `pas_default_approver_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `pas_default_approver_group_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pas_default_approver_group_date_created` datetime DEFAULT NULL,
  `pas_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pas_default_approver_group_id`),
  KEY `pas_user_id` (`pas_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_default_approver_groupmember`
--

DROP TABLE IF EXISTS `deprecated_pas_default_approver_groupmember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_default_approver_groupmember` (
  `pas_default_approver_groupmember_id` int(11) NOT NULL AUTO_INCREMENT,
  `pas_default_approver_groupmember_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pas_default_approver_groupmember_date_created` datetime DEFAULT NULL,
  `pas_default_approver_group_id` int(11) DEFAULT NULL,
  `pas_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pas_default_approver_groupmember_id`),
  KEY `pas_default_approver_group_id` (`pas_default_approver_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_metric_coach`
--

DROP TABLE IF EXISTS `deprecated_pas_metric_coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_metric_coach` (
  `pas_metric_coach_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pas_metric_coach_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pas_metric_coach_date_created` datetime DEFAULT NULL,
  `pas_metric_coach_text` text,
  `hua_metric_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_metric_type_id` int(11) NOT NULL DEFAULT '0',
  `pas_metric_coach_stat` int(11) DEFAULT '0',
  `pas_metric_coach_stat2` int(11) DEFAULT '0',
  `pas_metric_coach_score` int(10) DEFAULT '0',
  `pas_metric_coach_score_min` float DEFAULT '0',
  `pas_metric_coach_score_max` float DEFAULT '0',
  PRIMARY KEY (`pas_metric_coach_id`),
  KEY `pas_appraisal_metric_FKIndex1` (`hua_metric_id`),
  KEY `hua_metric_type_id` (`hua_metric_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_note`
--

DROP TABLE IF EXISTS `deprecated_pas_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_note` (
  `pas_note_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pas_note_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pas_note_date_created` datetime DEFAULT NULL,
  `pas_appraisal_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_phase_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_status_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_appraisal_metric_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_appraiser_group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_note_date` datetime DEFAULT NULL,
  `pas_note_read` tinyint(1) unsigned DEFAULT NULL,
  `pas_note_parent_id` int(10) unsigned DEFAULT NULL,
  `pas_note_text` longtext,
  `pas_note_deleted` int(11) DEFAULT '0',
  `pas_original_phase_name` varchar(255) DEFAULT NULL,
  `pas_note_badwords` int(5) NOT NULL DEFAULT '0',
  `pas_note_audience` varchar(255) DEFAULT NULL,
  `pas_note_attachment` int(10) DEFAULT NULL,
  PRIMARY KEY (`pas_note_id`),
  KEY `pas_note_FKIndex1` (`pas_appraiser_group_id`),
  KEY `pas_note_FKIndex2` (`pas_appraisal_metric_id`),
  KEY `pas_note_FKIndex3` (`pas_user_id`),
  KEY `pas_note_FKIndex4` (`pas_status_id`),
  KEY `pas_note_FKIndex5` (`pas_phase_id`),
  KEY `pas_note_FKIndex6` (`pas_appraisal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_phase`
--

DROP TABLE IF EXISTS `deprecated_pas_phase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_phase` (
  `pas_phase_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pas_phase_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pas_phase_date_created` datetime DEFAULT NULL,
  `pas_phase_name` char(255) DEFAULT NULL,
  `pas_phase_order` int(10) unsigned DEFAULT NULL,
  `pas_phase_is_assessment` tinyint(1) DEFAULT NULL,
  `pas_phase_is_review` tinyint(1) DEFAULT NULL,
  `pas_phase_class` enum('','planning','performance','assessment','review') DEFAULT NULL,
  `pas_phase_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pas_phase_id`),
  UNIQUE KEY `phase_id_index` (`pas_phase_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_phase_notes_setting`
--

DROP TABLE IF EXISTS `deprecated_pas_phase_notes_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_phase_notes_setting` (
  `delete_note_on_off` int(11) DEFAULT '0',
  `edit_note_on_off` int(11) DEFAULT '0',
  `pas_phase_notes_setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `pas_phase_notes_setting_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pas_phase_notes_setting_date_created` datetime DEFAULT NULL,
  `pas_phase_id` int(11) DEFAULT '0',
  `pas_phase_name` char(100) DEFAULT NULL,
  `pas_phase_notes_setting_on_off` int(11) DEFAULT '0',
  `pas_phase_notes_setting_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pas_phase_notes_setting_id`),
  KEY `pas_phase_id` (`pas_phase_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_schedule`
--

DROP TABLE IF EXISTS `deprecated_pas_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_schedule` (
  `pas_schedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `pas_schedule_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pas_schedule_date_created` datetime DEFAULT NULL,
  `hua_job_family_id` int(11) DEFAULT NULL,
  `pas_schedule_type` enum('calendar','anniversary') DEFAULT NULL,
  `pas_schedule_cycles` smallint(6) DEFAULT NULL,
  `pas_workflow_template_id` int(10) unsigned DEFAULT NULL,
  `pas_reference_date` enum('original_hire_date','position_hire_date') DEFAULT NULL,
  PRIMARY KEY (`pas_schedule_id`),
  KEY `hua_job_family_id` (`hua_job_family_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_schedule_cycle`
--

DROP TABLE IF EXISTS `deprecated_pas_schedule_cycle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_schedule_cycle` (
  `pas_schedule_cycle_id` int(11) NOT NULL AUTO_INCREMENT,
  `pas_schedule_cycle_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pas_schedule_cycle_date_created` datetime DEFAULT NULL,
  `pas_schedule_id` int(11) DEFAULT NULL,
  `pas_phase_id` int(11) DEFAULT NULL,
  `pas_schedule_cycle_value` char(255) DEFAULT NULL,
  `pas_schedule_cycle_type` enum('phase','new_hire','final_hr') NOT NULL DEFAULT 'phase',
  `pas_schedule_cycle_number` smallint(6) DEFAULT NULL,
  `pas_workflow_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pas_schedule_cycle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_schedule_cycle_to_template`
--

DROP TABLE IF EXISTS `deprecated_pas_schedule_cycle_to_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_schedule_cycle_to_template` (
  `pas_schedule_cycle_to_template_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pas_schedule_cycle_to_template_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pas_schedule_cycle_to_template_date_created` datetime DEFAULT NULL,
  `pas_schedule_cycle_to_template_days_before` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_schedule_cycle_to_template_is_upon_change` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pas_schedule_cycle_id` int(11) DEFAULT NULL,
  `hua_template_manager_id` int(10) DEFAULT NULL,
  `hua_template_employee_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`pas_schedule_cycle_to_template_id`),
  KEY `IDX_schedule_cycle_id` (`pas_schedule_cycle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_signature`
--

DROP TABLE IF EXISTS `deprecated_pas_signature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_signature` (
  `pas_signature_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pas_signature_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pas_signature_date_created` datetime DEFAULT NULL,
  `pas_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_status_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_appraisal_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_signature_date` datetime DEFAULT NULL,
  `pas_signature_text` varchar(255) DEFAULT NULL,
  `pas_signature_confirmed` tinyint(1) unsigned DEFAULT NULL,
  `pas_user_comments` longtext,
  PRIMARY KEY (`pas_signature_id`),
  KEY `pas_signature_FKIndex1` (`pas_appraisal_id`),
  KEY `pas_signature_FKIndex2` (`pas_status_id`),
  KEY `pas_signature_FKIndex3` (`pas_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_status`
--

DROP TABLE IF EXISTS `deprecated_pas_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_status` (
  `pas_status_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pas_status_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pas_status_date_created` datetime DEFAULT NULL,
  `pas_status_name` char(255) DEFAULT NULL,
  `pas_status_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pas_status_id`),
  UNIQUE KEY `status_id_index` (`pas_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_status_phase`
--

DROP TABLE IF EXISTS `deprecated_pas_status_phase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_status_phase` (
  `pas_status_phase_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pas_status_phase_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pas_status_phase_date_created` datetime DEFAULT NULL,
  `pas_status_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_phase_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_status_phase_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pas_status_phase_id`),
  UNIQUE KEY `status_phase_id_index` (`pas_phase_id`,`pas_status_id`),
  KEY `pas_status_phase_FKIndex1` (`pas_status_id`),
  KEY `pas_status_phase_FKIndex2` (`pas_phase_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_user`
--

DROP TABLE IF EXISTS `deprecated_pas_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_user` (
  `pas_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_user_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pas_user_date_created` datetime DEFAULT NULL,
  `pas_user_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pas_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_workflow`
--

DROP TABLE IF EXISTS `deprecated_pas_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_workflow` (
  `pas_workflow_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pas_workflow_date_created` datetime DEFAULT NULL,
  `pas_workflow_type` varchar(255) DEFAULT NULL,
  `pas_workflow_class` varchar(10) DEFAULT 'PAS',
  `pas_workflow_parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_workflow_first_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_workflow_name` varchar(255) DEFAULT NULL,
  `pas_workflow_start_date` datetime DEFAULT NULL,
  `pas_workflow_end_date` datetime DEFAULT NULL,
  `pas_workflow_start_status` int(11) unsigned DEFAULT NULL,
  `pas_workflow_active` tinyint(1) unsigned DEFAULT NULL,
  `pas_workflow_completed` datetime DEFAULT NULL,
  `hua_job_family_id` int(10) unsigned DEFAULT NULL,
  `hua_org_level_id` int(10) unsigned DEFAULT NULL,
  `pas_workflow_signature_required` tinyint(1) unsigned DEFAULT NULL,
  `pas_workflow_signature_manager_first` tinyint(1) NOT NULL DEFAULT '0',
  `hua_location_id` int(11) DEFAULT NULL,
  `hua_scale_id` int(11) DEFAULT NULL,
  `pas_workflow_include_approvers` tinyint(1) DEFAULT NULL,
  `pas_workflow_template_id` int(10) unsigned DEFAULT NULL,
  `pas_workflow_template_name` varchar(255) DEFAULT NULL,
  `pas_workflow_author_id` int(10) unsigned DEFAULT '0',
  `hua_job_id` int(11) DEFAULT '0',
  `pas_workflow_add_job_metrics` tinyint(1) NOT NULL DEFAULT '0',
  `pas_workflow_add_job_skills` tinyint(1) NOT NULL DEFAULT '0',
  `pas_workflow_is_default` tinyint(1) NOT NULL DEFAULT '0',
  `pas_workflow_description` varchar(255) NOT NULL,
  `pas_workflow_lock_core_competencies` tinyint(1) DEFAULT '0',
  `hua_salary_grade_id` int(10) NOT NULL,
  `pas_workflow_associated_template_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pas_workflow_id`),
  UNIQUE KEY `workflow_id_index` (`pas_workflow_id`),
  KEY `pas_workflow_FKIndex1` (`hua_job_family_id`),
  KEY `hua_job_id` (`hua_job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_workflow_employees`
--

DROP TABLE IF EXISTS `deprecated_pas_workflow_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_workflow_employees` (
  `pas_workflow_employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `pas_user_id` int(11) DEFAULT NULL,
  `pas_workflow_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`pas_workflow_employee_id`),
  KEY `pas_user_id` (`pas_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table holds employees for workflow TEMPLATES';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_workflow_groups`
--

DROP TABLE IF EXISTS `deprecated_pas_workflow_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_workflow_groups` (
  `pas_workflow_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `pas_workflow_id` int(11) DEFAULT NULL,
  `pas_workflow_group_sequence` int(11) DEFAULT NULL,
  `pas_workflow_group_appraiser_type` char(255) DEFAULT NULL,
  `pas_workflow_group_appraisal_type` char(255) DEFAULT NULL,
  `pas_workflow_group_weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`pas_workflow_group_id`),
  KEY `pas_workflow_id` (`pas_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_workflow_metric`
--

DROP TABLE IF EXISTS `deprecated_pas_workflow_metric`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_workflow_metric` (
  `pas_workflow_metric_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pas_workflow_metric_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pas_workflow_metric_date_created` datetime DEFAULT NULL,
  `hua_metric_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_workflow_id` int(10) unsigned NOT NULL DEFAULT '0',
  `pas_workflow_metric_weight` int(11) DEFAULT NULL,
  `pas_workflow_metric_order` int(11) DEFAULT '0',
  `pas_workflow_metric_parent_id` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`pas_workflow_metric_id`),
  KEY `pas_workflow_metric_FKIndex1` (`pas_workflow_id`),
  KEY `pas_workflow_metric_FKIndex2` (`hua_metric_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table holds metrics of workflow TEMPLATES';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `deprecated_pas_workflow_metric_types`
--

DROP TABLE IF EXISTS `deprecated_pas_workflow_metric_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deprecated_pas_workflow_metric_types` (
  `pas_workflow_metric_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_metric_type_id` int(11) DEFAULT NULL,
  `pas_workflow_metric_type_weight` int(11) DEFAULT NULL,
  `pas_workflow_id` int(11) DEFAULT NULL,
  `pas_workflow_metric_type_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pas_workflow_metric_type_id`),
  KEY `hua_metric_type_id` (`hua_metric_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='This table holds metric_types of LIVE APPRAISALS & templates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_360`
--

DROP TABLE IF EXISTS `epm_360`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_360` (
  `epm_360_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_360_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_360_date_created` datetime NOT NULL,
  `epm_360_name` varchar(255) DEFAULT NULL,
  `epm_360_creator_id` int(11) NOT NULL DEFAULT '0',
  `hua_employee_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_360_status_id` int(11) NOT NULL,
  `epm_360_parent_appraisal_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_360_parent_appraisal_phase_id` int(11) NOT NULL DEFAULT '0',
  `epm_360_date_closed` datetime DEFAULT NULL,
  `epm_360_final_score` float DEFAULT NULL,
  `epm_360_current_phase` enum('planning','assessment','review') DEFAULT NULL,
  `epm_360_latest_phase` enum('planning','assessment','review') DEFAULT NULL,
  `hua_scale_id` int(11) NOT NULL DEFAULT '0',
  `epm_360_allow_participant_nomination` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_360_id`),
  KEY `hua_employee_id_idx` (`hua_employee_id`),
  KEY `epm_360_parent_appraisal_id_idx` (`epm_360_parent_appraisal_id`),
  KEY `epm_360_current_phase_idx` (`epm_360_current_phase`),
  KEY `hua_scale_id_idx` (`hua_scale_id`),
  KEY `epm_360_status_id_idx` (`epm_360_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_360_appraiser`
--

DROP TABLE IF EXISTS `epm_360_appraiser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_360_appraiser` (
  `epm_360_appraiser_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_360_appraiser_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_360_appraiser_date_created` datetime NOT NULL,
  `epm_360_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_360_appraiser_active` tinyint(1) NOT NULL DEFAULT '0',
  `epm_360_appraiser_contacted_date` date DEFAULT NULL,
  `epm_360_appraiser_submitted_date` datetime DEFAULT NULL,
  PRIMARY KEY (`epm_360_appraiser_id`),
  KEY `epm_360_id_idx` (`epm_360_id`),
  KEY `hua_user_id_idx` (`hua_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_360_category`
--

DROP TABLE IF EXISTS `epm_360_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_360_category` (
  `epm_360_category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_360_category_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_360_category_date_created` datetime NOT NULL,
  `epm_360_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_360_category_weight` float DEFAULT NULL,
  `epm_360_category_order` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_360_category_id`),
  KEY `epm_360_id_idx` (`epm_360_id`),
  KEY `epm_category_id_idx` (`epm_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_360_competency`
--

DROP TABLE IF EXISTS `epm_360_competency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_360_competency` (
  `epm_360_competency_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_360_competency_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_360_competency_date_created` datetime NOT NULL,
  `epm_360_category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_competency_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_360_competency_locked` tinyint(1) NOT NULL DEFAULT '0',
  `epm_360_competency_name` varchar(255) DEFAULT NULL,
  `epm_360_competency_description` varchar(255) DEFAULT NULL,
  `epm_360_competency_weight` float DEFAULT NULL,
  `epm_360_competency_order` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_360_competency_id`),
  KEY `epm_360_category_id_idx` (`epm_360_category_id`),
  KEY `hua_competency_id_idx` (`hua_competency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_360_competency_rating`
--

DROP TABLE IF EXISTS `epm_360_competency_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_360_competency_rating` (
  `epm_360_competency_rating_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_360_competency_rating_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_360_competency_rating_date_created` datetime NOT NULL,
  `epm_360_competency_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_360_appraiser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_scale_value_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_360_competency_rating_score` float DEFAULT NULL,
  `epm_360_competency_rating_comment` text,
  PRIMARY KEY (`epm_360_competency_rating_id`),
  KEY `epm_360_competency_id_idx` (`epm_360_competency_id`),
  KEY `epm_360_appraiser_id_idx` (`epm_360_appraiser_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_360_manager`
--

DROP TABLE IF EXISTS `epm_360_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_360_manager` (
  `epm_360_manager_id` int(11) NOT NULL AUTO_INCREMENT,
  `epm_360_manager_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_360_manager_date_created` datetime NOT NULL,
  `epm_360_id` int(11) NOT NULL DEFAULT '0',
  `hua_employee_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_360_manager_id`),
  KEY `epm_360_id_idx` (`epm_360_id`),
  KEY `hua_employee_id_idx` (`hua_employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_360_skill`
--

DROP TABLE IF EXISTS `epm_360_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_360_skill` (
  `epm_360_skill_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_360_skill_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_360_skill_date_created` datetime NOT NULL,
  `epm_360_category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_skill_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_360_skill_locked` tinyint(1) NOT NULL DEFAULT '0',
  `epm_360_skill_name` varchar(255) DEFAULT NULL,
  `epm_360_skill_weight` float DEFAULT NULL,
  `epm_360_skill_order` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_360_skill_id`),
  KEY `epm_360_category_id_idx` (`epm_360_category_id`),
  KEY `hua_skill_id_idx` (`hua_skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_360_skill_rating`
--

DROP TABLE IF EXISTS `epm_360_skill_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_360_skill_rating` (
  `epm_360_skill_rating_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_360_skill_rating_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_360_skill_rating_date_created` datetime NOT NULL,
  `epm_360_skill_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_360_appraiser_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_scale_value_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_360_skill_rating_score` float DEFAULT NULL,
  `epm_360_skill_rating_comment` text,
  PRIMARY KEY (`epm_360_skill_rating_id`),
  KEY `epm_360_skill_id_idx` (`epm_360_skill_id`),
  KEY `epm_360_appraiser_id_idx` (`epm_360_appraiser_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_360_status`
--

DROP TABLE IF EXISTS `epm_360_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_360_status` (
  `epm_360_status_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_360_status_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_360_status_date_created` datetime NOT NULL,
  `epm_360_status_name` varchar(255) NOT NULL,
  `epm_360_status_logical_value` varchar(255) NOT NULL,
  PRIMARY KEY (`epm_360_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_360_template`
--

DROP TABLE IF EXISTS `epm_360_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_360_template` (
  `epm_360_template_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_360_template_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_360_template_date_created` datetime NOT NULL,
  `epm_360_template_name` varchar(255) NOT NULL,
  `epm_360_template_description` varchar(255) NOT NULL,
  `hua_scale_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_360_template_manager_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_360_template_allow_participant_nomination` tinyint(1) NOT NULL DEFAULT '0',
  `epm_360_template_active` tinyint(1) NOT NULL DEFAULT '0',
  `epm_360_template_is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_360_template_id`),
  KEY `hua_scale_id_idx` (`hua_scale_id`),
  KEY `epm_360_template_manager_id_idx` (`epm_360_template_manager_id`),
  KEY `epm_360_template_active_idx` (`epm_360_template_active`),
  KEY `epm_360_template_is_default_idx` (`epm_360_template_is_default`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_360_template_associated_employee`
--

DROP TABLE IF EXISTS `epm_360_template_associated_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_360_template_associated_employee` (
  `epm_360_template_associated_employee_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_360_template_associated_employee_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_360_template_associated_employee_date_created` datetime NOT NULL,
  `epm_360_template_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_employee_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_360_template_associated_employee_id`),
  KEY `epm_360_template_id_idx` (`epm_360_template_id`),
  KEY `hua_employee_id_idx` (`hua_employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_360_template_category`
--

DROP TABLE IF EXISTS `epm_360_template_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_360_template_category` (
  `epm_360_template_category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_360_template_category_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_360_template_category_date_created` datetime NOT NULL,
  `epm_category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_360_template_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_360_template_category_logical_value` varchar(255) NOT NULL,
  `epm_360_template_category_lock_workflow_metrics` tinyint(1) NOT NULL DEFAULT '0',
  `epm_360_template_category_include_job_metrics` tinyint(1) NOT NULL DEFAULT '0',
  `epm_360_template_category_weight` float DEFAULT NULL,
  `epm_360_template_category_job_metrics_weight` float DEFAULT NULL,
  `epm_360_template_category_order` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_360_template_category_id`),
  KEY `epm_category_id_idx` (`epm_category_id`),
  KEY `epm_360_template_id_idx` (`epm_360_template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_360_template_competency`
--

DROP TABLE IF EXISTS `epm_360_template_competency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_360_template_competency` (
  `epm_360_template_competency_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_360_template_competency_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_360_template_competency_date_created` datetime NOT NULL,
  `epm_360_template_category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_competency_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_360_template_competency_weight` float DEFAULT NULL,
  `epm_360_template_competency_order` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_360_template_competency_id`),
  KEY `epm_360_template_category_id_idx` (`epm_360_template_category_id`),
  KEY `hua_competency_id_idx` (`hua_competency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_360_template_skill`
--

DROP TABLE IF EXISTS `epm_360_template_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_360_template_skill` (
  `epm_360_template_skill_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_360_template_skill_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_360_template_skill_date_created` datetime NOT NULL,
  `epm_360_template_category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_skill_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_360_template_skill_name` varchar(255) DEFAULT NULL,
  `epm_360_template_skill_weight` float DEFAULT NULL,
  `epm_360_template_skill_order` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_360_template_skill_id`),
  KEY `epm_360_template_category_id_idx` (`epm_360_template_category_id`),
  KEY `hua_skill_id_idx` (`hua_skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal`
--

DROP TABLE IF EXISTS `epm_appraisal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal` (
  `epm_appraisal_id` int(11) NOT NULL AUTO_INCREMENT,
  `epm_appraisal_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_appraisal_date_created` datetime NOT NULL,
  `epm_appraisal_name` varchar(255) NOT NULL,
  `epm_workflow_id` int(11) NOT NULL DEFAULT '0',
  `epm_appraisal_target_id` int(11) NOT NULL DEFAULT '0',
  `epm_appraisal_creator_id` int(11) NOT NULL DEFAULT '0',
  `epm_appraisal_launch_date` datetime DEFAULT NULL,
  `hua_scale_id` int(11) NOT NULL DEFAULT '0',
  `epm_appraisal_final_score` float DEFAULT NULL,
  `epm_appraisal_calculated_score` float DEFAULT NULL,
  `epm_appraisal_override_score` float DEFAULT NULL,
  `epm_appraisal_override_comment` text,
  `epm_appraisal_share_scores` tinyint(1) NOT NULL DEFAULT '0',
  `epm_appraisal_status_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_closed_date` date DEFAULT NULL,
  `epm_appraisal_current_phase_id` int(11) NOT NULL DEFAULT '0',
  `epm_appraisal_latest_phase_id` int(11) NOT NULL DEFAULT '0',
  `epm_appraisal_official` tinyint(1) NOT NULL DEFAULT '0',
  `epm_appraisal_original_approval_chain_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_appraisal_id`),
  KEY `epm_appraisal_official_idx` (`epm_appraisal_official`),
  KEY `epm_workflow_id_idx` (`epm_workflow_id`),
  KEY `epm_appraisal_target_id_idx` (`epm_appraisal_target_id`),
  KEY `epm_appraisal_creator_id_idx` (`epm_appraisal_creator_id`),
  KEY `epm_appraisal_status_id_idx` (`epm_appraisal_status_id`),
  KEY `hua_scale_id_idx` (`hua_scale_id`),
  KEY `epm_appraisal_current_phase_id_idx` (`epm_appraisal_current_phase_id`),
  KEY `epm_appraisal_latest_phase_id_idx` (`epm_appraisal_latest_phase_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_achievement`
--

DROP TABLE IF EXISTS `epm_appraisal_achievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_achievement` (
  `epm_appraisal_achievement_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_appraisal_achievement_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_appraisal_achievement_date_created` datetime NOT NULL,
  `epm_appraisal_category_id` int(11) unsigned NOT NULL,
  `epm_appraisal_achievement_name` varchar(255) NOT NULL,
  `epm_appraisal_achievement_description` varchar(255) NOT NULL,
  `epm_appraisal_achievement_order` int(11) unsigned DEFAULT NULL,
  `epm_appraisal_achievement_creator_id` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`epm_appraisal_achievement_id`),
  KEY `epm_appraisal_category_id_idx` (`epm_appraisal_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_approval_chain`
--

DROP TABLE IF EXISTS `epm_appraisal_approval_chain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_approval_chain` (
  `hua_approval_chain_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_approval_chain_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_approval_chain_date_created` datetime NOT NULL,
  `hua_approval_chain_target_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_approval_chain_type` enum('serial','parallel') DEFAULT NULL,
  `hua_approval_chain_approval` enum('','approved','rejected') NOT NULL,
  `hua_approval_chain_final_approval_date` datetime DEFAULT NULL,
  `hua_approval_chain_requestor_user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`hua_approval_chain_id`),
  KEY `hua_approval_chain_target_id_idx` (`hua_approval_chain_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_approval_chain_member`
--

DROP TABLE IF EXISTS `epm_appraisal_approval_chain_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_approval_chain_member` (
  `hua_approval_chain_member_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_approval_chain_member_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_approval_chain_member_date_created` datetime NOT NULL,
  `hua_approval_chain_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_approval_chain_member_target` varchar(255) NOT NULL,
  `hua_approval_chain_member_type` varchar(255) NOT NULL,
  `hua_approval_chain_member_order` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_approval_chain_member_approval` enum('','approved','rejected') NOT NULL,
  `hua_approval_chain_member_comment` text,
  `hua_approval_chain_member_final_approval_date` datetime DEFAULT NULL,
  `hua_approval_chain_member_approved_by` varchar(255) DEFAULT NULL,
  `hua_approval_chain_member_hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_approval_chain_member_id`),
  KEY `hua_approval_chain_id_idx` (`hua_approval_chain_id`),
  KEY `hua_approval_chain_member_target_idx` (`hua_approval_chain_member_target`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_assessment`
--

DROP TABLE IF EXISTS `epm_appraisal_assessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_assessment` (
  `epm_appraisal_assessment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_appraisal_assessment_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_appraisal_assessment_date_created` datetime NOT NULL,
  `epm_appraisal_group_member_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`epm_appraisal_assessment_id`),
  KEY `epm_appraisal_group_member_id_idx` (`epm_appraisal_group_member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_category`
--

DROP TABLE IF EXISTS `epm_appraisal_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_category` (
  `epm_appraisal_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `epm_appraisal_category_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_appraisal_category_date_created` datetime NOT NULL,
  `epm_category_id` int(11) NOT NULL DEFAULT '0',
  `epm_appraisal_id` int(11) NOT NULL DEFAULT '0',
  `epm_appraisal_category_weight` float DEFAULT NULL,
  `epm_appraisal_category_order` int(11) NOT NULL DEFAULT '0',
  `epm_appraisal_category_include_job_metrics` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_appraisal_category_id`),
  KEY `epm_category_id_idx` (`epm_category_id`),
  KEY `epm_appraisal_id_idx` (`epm_appraisal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_competency`
--

DROP TABLE IF EXISTS `epm_appraisal_competency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_competency` (
  `epm_appraisal_competency_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_appraisal_competency_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_appraisal_competency_date_created` datetime NOT NULL,
  `epm_appraisal_category_id` int(11) unsigned NOT NULL,
  `hua_competency_id` int(11) unsigned NOT NULL,
  `epm_appraisal_competency_locked` tinyint(1) NOT NULL DEFAULT '0',
  `epm_appraisal_competency_name` varchar(255) NOT NULL,
  `epm_appraisal_competency_description` varchar(255) NOT NULL,
  `epm_appraisal_competency_weight` float DEFAULT NULL,
  `epm_appraisal_competency_order` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`epm_appraisal_competency_id`),
  KEY `epm_appraisal_category_id_idx` (`epm_appraisal_category_id`),
  KEY `hua_competency_id_idx` (`hua_competency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_competency_rating`
--

DROP TABLE IF EXISTS `epm_appraisal_competency_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_competency_rating` (
  `epm_appraisal_competency_rating_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_appraisal_competency_rating_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_appraisal_competency_rating_date_created` datetime NOT NULL,
  `epm_appraisal_assessment_id` int(11) unsigned NOT NULL,
  `epm_appraisal_competency_id` int(11) unsigned NOT NULL,
  `hua_scale_value_id` int(11) unsigned NOT NULL,
  `epm_appraisal_competency_rating_score` float DEFAULT NULL,
  `epm_appraisal_discussion_board_entry_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_appraisal_competency_rating_id`),
  KEY `epm_appraisal_assessment_id_idx` (`epm_appraisal_assessment_id`),
  KEY `epm_appraisal_competency_id_idx` (`epm_appraisal_competency_id`),
  KEY `hua_scale_value_id_idx` (`hua_scale_value_id`),
  KEY `epm_appraisal_discussion_board_entry_id_idx` (`epm_appraisal_discussion_board_entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_discussion_board`
--

DROP TABLE IF EXISTS `epm_appraisal_discussion_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_discussion_board` (
  `epm_appraisal_discussion_board_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_appraisal_discussion_board_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_appraisal_discussion_board_date_created` datetime NOT NULL,
  `epm_appraisal_discussion_board_target_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_discussion_board_subject_model` varchar(255) DEFAULT NULL,
  `epm_appraisal_discussion_board_subject_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`epm_appraisal_discussion_board_id`),
  KEY `epm_appraisal_discussion_board_target_id_idx` (`epm_appraisal_discussion_board_target_id`),
  KEY `epm_appraisal_discussion_board_metric_model_idx` (`epm_appraisal_discussion_board_subject_model`),
  KEY `epm_appraisal_discussion_board_metric_id_idx` (`epm_appraisal_discussion_board_subject_id`),
  KEY `composite_idx` (`epm_appraisal_discussion_board_target_id`,`epm_appraisal_discussion_board_subject_model`,`epm_appraisal_discussion_board_subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_discussion_board_entry`
--

DROP TABLE IF EXISTS `epm_appraisal_discussion_board_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_discussion_board_entry` (
  `epm_appraisal_discussion_board_entry_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_appraisal_discussion_board_entry_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_appraisal_discussion_board_entry_date_created` datetime NOT NULL,
  `epm_appraisal_discussion_board_id` int(11) unsigned NOT NULL,
  `epm_appraisal_discussion_board_entry_parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_discussion_board_entry_author_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_discussion_board_entry_permission` varchar(255) DEFAULT NULL,
  `epm_appraisal_phase_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_discussion_board_entry_subject` text,
  `epm_appraisal_discussion_board_entry_text` text,
  `hua_file_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_appraisal_discussion_board_entry_id`),
  KEY `epm_appraisal_discussion_board_id_idx` (`epm_appraisal_discussion_board_id`),
  KEY `epm_appraisal_discussion_board_entry_parent_id_idx` (`epm_appraisal_discussion_board_entry_parent_id`),
  KEY `epm_appraisal_discussion_board_entry_author_id_idx` (`epm_appraisal_discussion_board_entry_author_id`),
  KEY `epm_appraisal_phase_id_idx` (`epm_appraisal_phase_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_goal`
--

DROP TABLE IF EXISTS `epm_appraisal_goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_goal` (
  `epm_appraisal_goal_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_appraisal_goal_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_appraisal_goal_date_created` datetime NOT NULL,
  `epm_appraisal_category_id` int(11) unsigned NOT NULL,
  `epm_appraisal_goal_group_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_goal_id` int(11) unsigned NOT NULL,
  `epm_appraisal_goal_locked` tinyint(1) NOT NULL DEFAULT '0',
  `epm_appraisal_goal_private` tinyint(1) NOT NULL DEFAULT '0',
  `epm_appraisal_goal_name` varchar(255) NOT NULL,
  `epm_appraisal_goal_description` varchar(255) NOT NULL,
  `epm_appraisal_goal_score_type` varchar(255) NOT NULL,
  `epm_appraisal_goal_retired` tinyint(1) NOT NULL DEFAULT '0',
  `epm_appraisal_goal_start_date` date DEFAULT NULL,
  `epm_appraisal_goal_target_date` date DEFAULT NULL,
  `epm_appraisal_goal_numeric_progress` float DEFAULT NULL,
  `epm_appraisal_goal_numeric_target` float DEFAULT NULL,
  `epm_appraisal_goal_employee_percent_complete` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_goal_manager_percent_complete` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_goal_weight` float DEFAULT NULL,
  `epm_appraisal_goal_order` int(11) unsigned DEFAULT NULL,
  `epm_appraisal_goal_status_id` int(11) unsigned NOT NULL,
  `epm_appraisal_goal_completion_date` date DEFAULT NULL,
  `epm_appraisal_goal_creator_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_appraisal_goal_id`),
  KEY `epm_appraisal_category_id_idx` (`epm_appraisal_category_id`),
  KEY `epm_goal_id_idx` (`epm_goal_id`),
  KEY `epm_appraisal_goal_status_id_idx` (`epm_appraisal_goal_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_goal_group`
--

DROP TABLE IF EXISTS `epm_appraisal_goal_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_goal_group` (
  `epm_appraisal_goal_group_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_appraisal_goal_group_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_appraisal_goal_group_date_created` datetime DEFAULT NULL,
  `epm_appraisal_goal_group_creator_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_goal_group_originating_library_goal_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_goal_group_originating_appraisal_goal_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_appraisal_goal_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_goal_rating`
--

DROP TABLE IF EXISTS `epm_appraisal_goal_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_goal_rating` (
  `epm_appraisal_goal_rating_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_appraisal_goal_rating_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_appraisal_goal_rating_date_created` datetime NOT NULL,
  `epm_appraisal_assessment_id` int(11) unsigned NOT NULL,
  `epm_appraisal_goal_id` int(11) unsigned NOT NULL,
  `epm_appraisal_goal_rating_score` float DEFAULT NULL,
  `epm_appraisal_discussion_board_entry_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_scale_value_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_goal_rating_complete` tinyint(1) NOT NULL DEFAULT '0',
  `epm_appraisal_goal_rating_achieved_number` float DEFAULT NULL,
  `epm_appraisal_goal_rating_target_number` float DEFAULT NULL,
  `epm_appraisal_goal_rating_percent_complete` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_appraisal_goal_rating_id`),
  KEY `epm_appraisal_assessment_id_idx` (`epm_appraisal_assessment_id`),
  KEY `epm_appraisal_goal_id_idx` (`epm_appraisal_goal_id`),
  KEY `epm_appraisal_discussion_board_entry_id_idx` (`epm_appraisal_discussion_board_entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_goal_status`
--

DROP TABLE IF EXISTS `epm_appraisal_goal_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_goal_status` (
  `epm_appraisal_goal_status_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_appraisal_goal_status_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_appraisal_goal_status_date_created` datetime NOT NULL,
  `epm_appraisal_goal_status_name` varchar(255) NOT NULL,
  `epm_appraisal_goal_status_color` varchar(255) NOT NULL,
  `epm_appraisal_goal_status_order` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_appraisal_goal_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_group`
--

DROP TABLE IF EXISTS `epm_appraisal_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_group` (
  `epm_appraisal_group_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_appraisal_group_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_appraisal_group_date_created` datetime NOT NULL,
  `epm_appraisal_phase_id` int(11) unsigned NOT NULL,
  `epm_appraisal_group_type_id` int(11) unsigned NOT NULL,
  `epm_appraisal_group_weight` float DEFAULT NULL,
  `epm_appraisal_group_scoring_started` tinyint(1) NOT NULL DEFAULT '0',
  `epm_appraisal_group_scoring_completed` tinyint(1) NOT NULL DEFAULT '0',
  `epm_appraisal_group_order` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_appraisal_group_id`),
  KEY `epm_appraisal_phase_id_idx` (`epm_appraisal_phase_id`),
  KEY `epm_appraisal_group_type_id_idx` (`epm_appraisal_group_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_group_member`
--

DROP TABLE IF EXISTS `epm_appraisal_group_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_group_member` (
  `epm_appraisal_group_member_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_appraisal_group_member_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_appraisal_group_member_date_created` datetime NOT NULL,
  `epm_appraisal_group_id` int(11) unsigned NOT NULL,
  `hua_employee_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_appraisal_group_member_id`),
  KEY `epm_appraisal_group_id_idx` (`epm_appraisal_group_id`),
  KEY `hua_employee_id_idx` (`hua_employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_group_type`
--

DROP TABLE IF EXISTS `epm_appraisal_group_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_group_type` (
  `epm_appraisal_group_type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_appraisal_group_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_appraisal_group_type_date_created` datetime NOT NULL,
  `epm_appraisal_group_type_name` varchar(255) NOT NULL,
  `epm_appraisal_group_type_logical_value` varchar(255) NOT NULL,
  PRIMARY KEY (`epm_appraisal_group_type_id`),
  KEY `epm_appraisal_group_type_logical_value_idx` (`epm_appraisal_group_type_logical_value`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_manager`
--

DROP TABLE IF EXISTS `epm_appraisal_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_manager` (
  `epm_appraisal_manager_id` int(11) NOT NULL AUTO_INCREMENT,
  `epm_appraisal_manager_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_appraisal_manager_date_created` datetime NOT NULL,
  `epm_appraisal_id` int(11) NOT NULL DEFAULT '0',
  `hua_employee_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_appraisal_manager_id`),
  KEY `epm_appraisal_id_idx` (`epm_appraisal_id`),
  KEY `hua_employee_id_idx` (`hua_employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_note`
--

DROP TABLE IF EXISTS `epm_appraisal_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_note` (
  `epm_appraisal_note_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_appraisal_note_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_appraisal_note_date_created` datetime NOT NULL,
  `epm_appraisal_note_text` text NOT NULL,
  `epm_appraisal_note_author_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_note_parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_note_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`epm_appraisal_note_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_pending_goal`
--

DROP TABLE IF EXISTS `epm_appraisal_pending_goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_pending_goal` (
  `epm_appraisal_pending_goal_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_appraisal_pending_goal_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_appraisal_pending_goal_date_created` datetime DEFAULT NULL,
  `epm_appraisal_category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_goal_id` int(11) NOT NULL DEFAULT '0',
  `epm_appraisal_pending_goal_name` varchar(255) DEFAULT NULL,
  `epm_appraisal_pending_goal_description` varchar(255) DEFAULT NULL,
  `epm_appraisal_pending_goal_score_type` varchar(255) DEFAULT NULL,
  `epm_appraisal_pending_goal_private` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_pending_goal_numeric_target` float DEFAULT NULL,
  `epm_appraisal_pending_goal_start_date` date DEFAULT NULL,
  `epm_appraisal_pending_goal_end_date` date DEFAULT NULL,
  `epm_appraisal_pending_goal_related_goal_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_appraisal_pending_goal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_phase`
--

DROP TABLE IF EXISTS `epm_appraisal_phase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_phase` (
  `epm_appraisal_phase_id` int(11) NOT NULL AUTO_INCREMENT,
  `epm_appraisal_phase_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_appraisal_phase_date_created` datetime NOT NULL,
  `epm_appraisal_id` int(11) NOT NULL DEFAULT '0',
  `epm_appraisal_phase_weight` float NOT NULL,
  `epm_appraisal_phase_name` varchar(255) DEFAULT NULL,
  `epm_appraisal_phase_logical_value` enum('planning','performance','assessment','review') DEFAULT NULL,
  `epm_appraisal_phase_order` int(11) NOT NULL DEFAULT '0',
  `epm_appraisal_phase_require_signature` enum('nosignature','managerfirst','employeefirst') DEFAULT NULL,
  `epm_appraisal_phase_appraising_type` enum('serial','parallel') NOT NULL DEFAULT 'serial',
  `epm_appraisal_phase_start_date` date DEFAULT NULL,
  `epm_appraisal_phase_end_date` date DEFAULT NULL,
  `epm_appraisal_phase_advance_notification_days_before` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_phase_employee_advance_letter_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_phase_manager_advance_letter_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_phase_employee_letter_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_phase_manager_letter_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_phase_allow_approval_resubmission` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_appraisal_phase_id`),
  KEY `epm_appraisal_id_idx` (`epm_appraisal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_phase_permission`
--

DROP TABLE IF EXISTS `epm_appraisal_phase_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_phase_permission` (
  `epm_appraisal_phase_permission_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_appraisal_phase_permission_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_appraisal_phase_permission_date_created` datetime NOT NULL,
  `epm_appraisal_phase_id` int(11) NOT NULL DEFAULT '0',
  `epm_appraisal_phase_permission_key` varchar(255) NOT NULL,
  `epm_appraisal_phase_permission_enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_appraisal_phase_permission_id`),
  KEY `composite_idx` (`epm_appraisal_phase_id`,`epm_appraisal_phase_permission_key`,`epm_appraisal_phase_permission_enabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_reassign_log`
--

DROP TABLE IF EXISTS `epm_appraisal_reassign_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_reassign_log` (
  `epm_appraisal_reassign_log_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_appraisal_reassign_log_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_appraisal_reassign_log_date_created` datetime NOT NULL,
  `epm_appraisal_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_reassign_log_old_manager_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_reassign_log_new_manager_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_reassign_log_note` text,
  PRIMARY KEY (`epm_appraisal_reassign_log_id`),
  KEY `epm_appraisal_id_idx` (`epm_appraisal_id`),
  KEY `epm_appraisal_reassign_log_old_manager_id_idx` (`epm_appraisal_reassign_log_old_manager_id`),
  KEY `epm_appraisal_reassign_log_new_manager_id_idx` (`epm_appraisal_reassign_log_new_manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_signature`
--

DROP TABLE IF EXISTS `epm_appraisal_signature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_signature` (
  `epm_appraisal_signature_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_appraisal_signature_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_appraisal_signature_date_created` datetime NOT NULL,
  `epm_appraisal_phase_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_employee_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_signature_signed` tinyint(1) NOT NULL DEFAULT '0',
  `epm_appraisal_signature_text` text,
  `epm_appraisal_signature_date_signed` datetime DEFAULT NULL,
  `epm_appraisal_signature_order` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_signature_comment` text,
  PRIMARY KEY (`epm_appraisal_signature_id`),
  KEY `epm_appraisal_phase_id_idx` (`epm_appraisal_phase_id`),
  KEY `hua_employee_id_idx` (`hua_employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_skill`
--

DROP TABLE IF EXISTS `epm_appraisal_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_skill` (
  `epm_appraisal_skill_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_appraisal_skill_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_appraisal_skill_date_created` datetime NOT NULL,
  `epm_appraisal_category_id` int(11) unsigned NOT NULL,
  `hua_skill_id` int(11) unsigned NOT NULL,
  `epm_appraisal_skill_locked` tinyint(1) NOT NULL DEFAULT '0',
  `epm_appraisal_skill_name` varchar(255) NOT NULL,
  `epm_appraisal_skill_weight` float DEFAULT NULL,
  `epm_appraisal_skill_order` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`epm_appraisal_skill_id`),
  KEY `epm_appraisal_category_id_idx` (`epm_appraisal_category_id`),
  KEY `hua_skill_id_idx` (`hua_skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_skill_rating`
--

DROP TABLE IF EXISTS `epm_appraisal_skill_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_skill_rating` (
  `epm_appraisal_skill_rating_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_appraisal_skill_rating_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_appraisal_skill_rating_date_created` datetime NOT NULL,
  `epm_appraisal_assessment_id` int(11) unsigned NOT NULL,
  `epm_appraisal_skill_id` int(11) unsigned NOT NULL,
  `hua_scale_value_id` int(11) unsigned NOT NULL,
  `epm_appraisal_skill_rating_score` float DEFAULT NULL,
  `epm_appraisal_discussion_board_entry_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_appraisal_skill_rating_id`),
  KEY `epm_appraisal_assessment_id_idx` (`epm_appraisal_assessment_id`),
  KEY `epm_appraisal_skill_id_idx` (`epm_appraisal_skill_id`),
  KEY `epm_appraisal_discussion_board_entry_id_idx` (`epm_appraisal_discussion_board_entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_appraisal_status`
--

DROP TABLE IF EXISTS `epm_appraisal_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_appraisal_status` (
  `epm_appraisal_status_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_appraisal_status_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_appraisal_status_date_created` datetime NOT NULL,
  `epm_appraisal_status_name` varchar(255) NOT NULL,
  `epm_appraisal_status_logical_value` varchar(255) NOT NULL,
  PRIMARY KEY (`epm_appraisal_status_id`),
  KEY `epm_appraisal_status_logical_value_idx` (`epm_appraisal_status_logical_value`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_bulk_appraisal_launch`
--

DROP TABLE IF EXISTS `epm_bulk_appraisal_launch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_bulk_appraisal_launch` (
  `epm_bulk_appraisal_launch_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_bulk_appraisal_launch_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_bulk_appraisal_launch_date_created` datetime NOT NULL,
  `epm_bulk_appraisal_launch_creator_id` int(11) NOT NULL,
  `epm_bulk_appraisal_launch_date` date DEFAULT NULL,
  `epm_bulk_appraisal_launch_complete` tinyint(1) NOT NULL DEFAULT '0',
  `epm_bulk_appraisal_launch_source` enum('bestfitworkflow','chosenworkflow') DEFAULT NULL,
  `epm_bulk_appraisal_launch_chosen_workflow_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_bulk_appraisal_launch_in_progress` tinyint(1) NOT NULL DEFAULT '0',
  `hua_org_level_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_manager_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_location_group_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_location_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_job_family_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_job_role_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_job_classification_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_job_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_salary_grade_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_bulk_appraisal_launch_date_source` enum('start_date','hire_date') DEFAULT NULL,
  `epm_bulk_appraisal_launch_date_from` date DEFAULT NULL,
  `epm_bulk_appraisal_launch_date_to` date DEFAULT NULL,
  PRIMARY KEY (`epm_bulk_appraisal_launch_id`),
  KEY `epm_bulk_appraisal_launch_creator_id_idx` (`epm_bulk_appraisal_launch_creator_id`),
  KEY `epm_bulk_appraisal_launch_complete_idx` (`epm_bulk_appraisal_launch_complete`),
  KEY `epm_bulk_appraisal_launch_chosen_workflow_id_idx` (`epm_bulk_appraisal_launch_chosen_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_bulk_appraisal_launch_exclusion`
--

DROP TABLE IF EXISTS `epm_bulk_appraisal_launch_exclusion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_bulk_appraisal_launch_exclusion` (
  `epm_bulk_appraisal_launch_exclusion_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_bulk_appraisal_launch_exclusion_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_bulk_appraisal_launch_exclusion_date_created` datetime NOT NULL,
  `epm_bulk_appraisal_launch_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_employee_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_bulk_appraisal_launch_exclusion_id`),
  KEY `epm_bulk_appraisal_launch_id_idx` (`epm_bulk_appraisal_launch_id`),
  KEY `hua_employee_id_idx` (`hua_employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_bulk_appraisal_launch_history`
--

DROP TABLE IF EXISTS `epm_bulk_appraisal_launch_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_bulk_appraisal_launch_history` (
  `epm_bulk_appraisal_launch_history_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_bulk_appraisal_launch_history_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_bulk_appraisal_launch_history_date_created` datetime NOT NULL,
  `epm_bulk_appraisal_launch_id` int(11) unsigned NOT NULL,
  `hua_employee_id` int(11) unsigned NOT NULL,
  `epm_appraisal_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`epm_bulk_appraisal_launch_history_id`),
  KEY `epm_bulk_appraisal_launch_id_idx` (`epm_bulk_appraisal_launch_id`),
  KEY `hua_employee_id_idx` (`hua_employee_id`),
  KEY `epm_appraisal_id_idx` (`epm_appraisal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_bulk_appraisal_launch_inclusion`
--

DROP TABLE IF EXISTS `epm_bulk_appraisal_launch_inclusion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_bulk_appraisal_launch_inclusion` (
  `epm_bulk_appraisal_launch_inclusion_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_bulk_appraisal_launch_inclusion_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_bulk_appraisal_launch_inclusion_date_created` datetime NOT NULL,
  `epm_bulk_appraisal_launch_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_employee_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_bulk_appraisal_launch_inclusion_id`),
  KEY `epm_bulk_appraisal_launch_id_idx` (`epm_bulk_appraisal_launch_id`),
  KEY `hua_employee_id_idx` (`hua_employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_category`
--

DROP TABLE IF EXISTS `epm_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_category` (
  `epm_category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `epm_category_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_category_date_created` datetime NOT NULL,
  `epm_category_name` varchar(255) DEFAULT NULL,
  `epm_category_logical_value` enum('competency','skill','goal','achievement') DEFAULT NULL,
  `epm_category_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`epm_category_id`),
  KEY `epm_category_logical_value_idx` (`epm_category_logical_value`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_close_appraisal_batch`
--

DROP TABLE IF EXISTS `epm_close_appraisal_batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_close_appraisal_batch` (
  `epm_close_appraisal_batch_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_close_appraisal_batch_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_close_appraisal_batch_date_created` datetime DEFAULT NULL,
  `epm_close_appraisal_batch_creator_id` int(11) NOT NULL,
  `epm_close_appraisal_batch_date` date NOT NULL,
  `epm_close_appraisal_batch_complete` tinyint(1) NOT NULL DEFAULT '0',
  `epm_close_appraisal_batch_workflow_ids` mediumtext,
  `epm_close_appraisal_batch_incomplete_appraisals_action` enum('do_nothing','cancel','close') NOT NULL DEFAULT 'do_nothing',
  PRIMARY KEY (`epm_close_appraisal_batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_close_appraisal_batch_appraisal`
--

DROP TABLE IF EXISTS `epm_close_appraisal_batch_appraisal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_close_appraisal_batch_appraisal` (
  `epm_close_appraisal_batch_appraisal_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_close_appraisal_batch_appraisal_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_close_appraisal_batch_appraisal_date_created` datetime DEFAULT NULL,
  `epm_close_appraisal_batch_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_close_appraisal_batch_appraisal_complete` tinyint(1) NOT NULL DEFAULT '0',
  `epm_close_appraisal_batch_appraisal_incomplete_reason` varchar(255) DEFAULT NULL,
  `epm_close_appraisal_batch_appraisal_failure_reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`epm_close_appraisal_batch_appraisal_id`),
  KEY `epm_close_appraisal_batch_id_idx` (`epm_close_appraisal_batch_id`),
  KEY `epm_close_appraisal_batch_appraisal_success_idx` (`epm_close_appraisal_batch_appraisal_complete`),
  KEY `epm_appraisal_id_idx` (`epm_appraisal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_continuous_feedback`
--

DROP TABLE IF EXISTS `epm_continuous_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_continuous_feedback` (
  `epm_continuous_feedback_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_continuous_feedback_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_continuous_feedback_date_created` datetime NOT NULL,
  `epm_continuous_feedback_target_id` int(11) NOT NULL DEFAULT '0',
  `epm_continuous_feedback_creator_id` int(11) NOT NULL DEFAULT '0',
  `epm_continuous_feedback_purpose` varchar(255) NOT NULL,
  `epm_continuous_feedback_note` text NOT NULL,
  `epm_continuous_feedback_date` datetime NOT NULL,
  `hua_file_id` int(11) unsigned DEFAULT NULL,
  `epm_continuous_feedback_progress_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`epm_continuous_feedback_id`),
  KEY `epm_continuous_feedback_date` (`epm_continuous_feedback_date`),
  KEY `epm_continuous_feedback_target_id` (`epm_continuous_feedback_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_continuous_feedback_progress`
--

DROP TABLE IF EXISTS `epm_continuous_feedback_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_continuous_feedback_progress` (
  `epm_continuous_feedback_progress_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `epm_continuous_feedback_progress_name` varchar(255) NOT NULL,
  `epm_continuous_feedback_progress_date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `epm_continuous_feedback_progress_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_continuous_feedback_progress_deactivated` tinyint(1) unsigned DEFAULT '0',
  `epm_continuous_feedback_progress_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_continuous_feedback_progress_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_employee_approver`
--

DROP TABLE IF EXISTS `epm_employee_approver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_employee_approver` (
  `epm_employee_approver_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_employee_approver_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_employee_approver_date_created` datetime DEFAULT NULL,
  `hua_employee_id` int(11) NOT NULL DEFAULT '0',
  `epm_employee_approver_approver_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_employee_approver_id`),
  KEY `hua_employee_id_idx` (`hua_employee_id`),
  KEY `epm_employee_approver_approver_id_idx` (`epm_employee_approver_approver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_employee_recognition`
--

DROP TABLE IF EXISTS `epm_employee_recognition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_employee_recognition` (
  `epm_employee_recognition_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_employee_recognition_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_employee_recognition_date_created` datetime NOT NULL,
  `epm_employee_recognition_creator_id` int(11) NOT NULL DEFAULT '0',
  `epm_employee_recognition_target_id` int(11) NOT NULL DEFAULT '0',
  `epm_employee_recognition_date_entered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `epm_employee_recognition_title` varchar(255) NOT NULL DEFAULT '',
  `epm_employee_recognition_description` text NOT NULL,
  PRIMARY KEY (`epm_employee_recognition_id`),
  KEY `epm_employee_recognition_creator_id` (`epm_employee_recognition_creator_id`),
  KEY `epm_employee_recognition_target_id` (`epm_employee_recognition_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_employee_recognition_competency`
--

DROP TABLE IF EXISTS `epm_employee_recognition_competency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_employee_recognition_competency` (
  `epm_employee_recognition_competency_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_employee_recognition_competency_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_employee_recognition_competency_date_created` datetime NOT NULL,
  `epm_employee_recognition_id` int(11) NOT NULL DEFAULT '0',
  `hua_competency_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_employee_recognition_competency_id`),
  KEY `epm_employee_recognition_id` (`epm_employee_recognition_id`),
  KEY `hua_competency_id` (`hua_competency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_employee_recognition_skill`
--

DROP TABLE IF EXISTS `epm_employee_recognition_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_employee_recognition_skill` (
  `epm_employee_recognition_skill_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_employee_recognition_skill_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_employee_recognition_skill_date_created` datetime NOT NULL,
  `epm_employee_recognition_id` int(11) NOT NULL DEFAULT '0',
  `hua_skill_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_employee_recognition_skill_id`),
  KEY `epm_employee_recognition_id` (`epm_employee_recognition_id`),
  KEY `hua_skill_id` (`hua_skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_goal`
--

DROP TABLE IF EXISTS `epm_goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_goal` (
  `epm_goal_id` int(11) NOT NULL AUTO_INCREMENT,
  `epm_goal_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_goal_date_created` datetime NOT NULL,
  `epm_goal_name` varchar(255) NOT NULL,
  `epm_goal_description` varchar(255) DEFAULT NULL,
  `epm_goal_score_type` varchar(255) DEFAULT NULL,
  `epm_category_id` int(11) NOT NULL DEFAULT '0',
  `epm_goal_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`epm_goal_id`),
  KEY `epm_category_id_idx` (`epm_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_goal_coaching_tip`
--

DROP TABLE IF EXISTS `epm_goal_coaching_tip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_goal_coaching_tip` (
  `epm_goal_coaching_tip_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_goal_coaching_tip_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_goal_coaching_tip_date_created` datetime NOT NULL,
  `epm_goal_coaching_tip_text` varchar(255) NOT NULL,
  `epm_goal_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_scale_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_scale_value_name_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_goal_coaching_tip_id`),
  KEY `epm_goal_id_idx` (`epm_goal_id`),
  KEY `hua_scale_id_idx` (`hua_scale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_letter`
--

DROP TABLE IF EXISTS `epm_letter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_letter` (
  `epm_letter_id` int(11) NOT NULL AUTO_INCREMENT,
  `epm_letter_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_letter_date_created` datetime NOT NULL,
  `hua_letter_template_id` int(11) NOT NULL DEFAULT '0',
  `epm_letter_cc` text,
  `epm_letter_bcc` text,
  `epm_letter_header_image_id` int(11) NOT NULL DEFAULT '0',
  `epm_letter_footer_image_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_letter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_letter_attachment`
--

DROP TABLE IF EXISTS `epm_letter_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_letter_attachment` (
  `epm_letter_attachment_id` int(11) NOT NULL AUTO_INCREMENT,
  `epm_letter_attachment_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_letter_attachment_date_created` datetime NOT NULL,
  `epm_letter_id` int(11) NOT NULL DEFAULT '0',
  `hua_document_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_letter_attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_letter_image`
--

DROP TABLE IF EXISTS `epm_letter_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_letter_image` (
  `epm_letter_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `epm_letter_image_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_letter_image_date_created` datetime NOT NULL,
  `hua_file_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_letter_image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_letter_translation`
--

DROP TABLE IF EXISTS `epm_letter_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_letter_translation` (
  `epm_letter_translation_id` int(11) NOT NULL AUTO_INCREMENT,
  `epm_letter_translation_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_letter_translation_date_created` datetime NOT NULL,
  `epm_letter_id` int(11) NOT NULL DEFAULT '0',
  `epm_letter_translation_subject` text,
  `epm_letter_translation_body` text,
  `hua_language_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_letter_translation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_peer_appraiser`
--

DROP TABLE IF EXISTS `epm_peer_appraiser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_peer_appraiser` (
  `epm_peer_appraiser_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_peer_appraiser_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_peer_appraiser_date_created` datetime NOT NULL,
  `epm_peer_appraiser_employee_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_peer_appraiser_peer_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_peer_appraiser_id`),
  KEY `epm_peer_appraiser_employee_id_idx` (`epm_peer_appraiser_employee_id`),
  KEY `epm_peer_appraiser_peer_id_idx` (`epm_peer_appraiser_peer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_problem_appraisal_tracking`
--

DROP TABLE IF EXISTS `epm_problem_appraisal_tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_problem_appraisal_tracking` (
  `epm_problem_appraisal_tracking_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_problem_appraisal_tracking_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_problem_appraisal_tracking_date_created` datetime DEFAULT NULL,
  `epm_appraisal_id` int(11) NOT NULL DEFAULT '0',
  `epm_problem_appraisal_tracking_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`epm_problem_appraisal_tracking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_workflow`
--

DROP TABLE IF EXISTS `epm_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_workflow` (
  `epm_workflow_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_workflow_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_workflow_date_created` datetime NOT NULL,
  `epm_workflow_name` varchar(255) NOT NULL,
  `epm_workflow_description` varchar(255) NOT NULL,
  `epm_workflow_schedule_type` enum('no_schedule','calendar','anniversary_original','anniversary_current') NOT NULL,
  `hua_scale_id` int(11) NOT NULL DEFAULT '0',
  `epm_workflow_type_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_workflow_creator_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_workflow_is_default` tinyint(1) NOT NULL DEFAULT '0',
  `epm_workflow_displayed_updated_date` datetime DEFAULT NULL,
  `epm_workflow_anniversary_date` date DEFAULT NULL,
  `epm_workflow_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_workflow_id`),
  KEY `hua_scale_id_idx` (`hua_scale_id`),
  KEY `epm_workflow_type_id_idx` (`epm_workflow_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_workflow_appraisal_group`
--

DROP TABLE IF EXISTS `epm_workflow_appraisal_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_workflow_appraisal_group` (
  `epm_workflow_appraisal_group_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_workflow_appraisal_group_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_workflow_appraisal_group_date_created` datetime NOT NULL,
  `epm_workflow_phase_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_appraisal_group_type_id` int(11) unsigned NOT NULL,
  `epm_workflow_appraisal_group_weight` decimal(10,2) DEFAULT NULL,
  `epm_workflow_appraisal_group_order` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_workflow_appraisal_group_id`),
  KEY `epm_workflow_phase_id_idx` (`epm_workflow_phase_id`),
  KEY `epm_appraisal_group_type_id_idx` (`epm_appraisal_group_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_workflow_approval_chain`
--

DROP TABLE IF EXISTS `epm_workflow_approval_chain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_workflow_approval_chain` (
  `hua_approval_chain_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_approval_chain_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_approval_chain_date_created` datetime NOT NULL,
  `hua_approval_chain_target_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_approval_chain_type` enum('serial','parallel') DEFAULT NULL,
  PRIMARY KEY (`hua_approval_chain_id`),
  KEY `hua_approval_chain_target_id_idx` (`hua_approval_chain_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_workflow_approval_chain_member`
--

DROP TABLE IF EXISTS `epm_workflow_approval_chain_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_workflow_approval_chain_member` (
  `hua_approval_chain_member_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_approval_chain_member_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_approval_chain_member_date_created` datetime NOT NULL,
  `hua_approval_chain_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_approval_chain_member_target` varchar(255) NOT NULL,
  `hua_approval_chain_member_type` varchar(255) NOT NULL,
  `hua_approval_chain_member_order` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_approval_chain_member_id`),
  KEY `hua_approval_chain_id_idx` (`hua_approval_chain_id`),
  KEY `hua_approval_chain_member_target_idx` (`hua_approval_chain_member_target`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_workflow_associated_employee`
--

DROP TABLE IF EXISTS `epm_workflow_associated_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_workflow_associated_employee` (
  `epm_workflow_associated_employee_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_workflow_associated_employee_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_workflow_associated_employee_date_created` datetime NOT NULL,
  `epm_workflow_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_employee_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_workflow_associated_employee_id`),
  KEY `epm_workflow_id_idx` (`epm_workflow_id`),
  KEY `hua_employee_id_idx` (`hua_employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_workflow_category`
--

DROP TABLE IF EXISTS `epm_workflow_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_workflow_category` (
  `epm_workflow_category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_workflow_category_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_workflow_category_date_created` datetime NOT NULL,
  `epm_category_id` int(11) NOT NULL DEFAULT '0',
  `epm_workflow_id` int(11) NOT NULL DEFAULT '0',
  `epm_workflow_category_weight` float DEFAULT NULL,
  `epm_workflow_category_order` int(11) NOT NULL DEFAULT '0',
  `epm_workflow_category_lock_workflow_metrics` tinyint(1) NOT NULL DEFAULT '0',
  `epm_workflow_category_include_job_metrics` tinyint(1) NOT NULL DEFAULT '0',
  `epm_workflow_category_job_metrics_weight` float DEFAULT NULL,
  PRIMARY KEY (`epm_workflow_category_id`),
  KEY `epm_category_id_idx` (`epm_category_id`),
  KEY `epm_workflow_id_idx` (`epm_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_workflow_competency`
--

DROP TABLE IF EXISTS `epm_workflow_competency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_workflow_competency` (
  `epm_workflow_competency_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `epm_workflow_competency_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_workflow_competency_date_created` datetime NOT NULL,
  `epm_workflow_category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `epm_workflow_competency_weight` decimal(10,2) DEFAULT NULL,
  `hua_competency_id` int(10) unsigned NOT NULL DEFAULT '0',
  `epm_workflow_competency_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_workflow_competency_id`),
  KEY `epm_workflow_category_id_idx` (`epm_workflow_category_id`),
  KEY `hua_competency_id_idx` (`hua_competency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_workflow_goal`
--

DROP TABLE IF EXISTS `epm_workflow_goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_workflow_goal` (
  `epm_workflow_goal_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `epm_workflow_goal_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_workflow_goal_date_created` datetime NOT NULL,
  `epm_workflow_category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `epm_workflow_goal_score_type` varchar(255) NOT NULL,
  `epm_workflow_goal_weight` decimal(10,2) DEFAULT NULL,
  `epm_goal_id` int(10) unsigned NOT NULL DEFAULT '0',
  `epm_workflow_goal_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_workflow_goal_id`),
  KEY `epm_workflow_category_id_idx` (`epm_workflow_category_id`),
  KEY `epm_goal_id_idx` (`epm_goal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_workflow_phase`
--

DROP TABLE IF EXISTS `epm_workflow_phase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_workflow_phase` (
  `epm_workflow_phase_id` int(11) NOT NULL AUTO_INCREMENT,
  `epm_workflow_phase_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_workflow_phase_date_created` datetime NOT NULL,
  `epm_workflow_id` int(11) NOT NULL DEFAULT '0',
  `epm_workflow_phase_name` varchar(255) NOT NULL,
  `epm_workflow_phase_logical_value` enum('planning','performance','assessment','review') NOT NULL,
  `epm_workflow_phase_weight` decimal(10,2) DEFAULT NULL,
  `epm_workflow_phase_order` int(11) NOT NULL DEFAULT '0',
  `epm_workflow_phase_require_signature` enum('nosignature','managerfirst','employeefirst') NOT NULL,
  `epm_workflow_phase_appraising_type` enum('serial','parallel') NOT NULL DEFAULT 'serial',
  `epm_workflow_phase_scheduled` tinyint(1) NOT NULL DEFAULT '0',
  `epm_workflow_phase_calendar_month` int(11) DEFAULT '0',
  `epm_workflow_phase_calendar_day` int(11) DEFAULT '0',
  `epm_workflow_phase_days_after_anniversary` int(11) DEFAULT NULL,
  `epm_workflow_phase_advance_employee_notification` tinyint(1) NOT NULL DEFAULT '0',
  `epm_workflow_phase_advance_manager_notification` tinyint(1) NOT NULL DEFAULT '0',
  `epm_workflow_phase_notify_employee` tinyint(1) NOT NULL DEFAULT '0',
  `epm_workflow_phase_notify_manager` tinyint(1) NOT NULL DEFAULT '0',
  `epm_workflow_phase_advance_employee_override_text` varchar(255) DEFAULT NULL,
  `epm_workflow_phase_advance_manager_override_text` varchar(255) DEFAULT NULL,
  `epm_workflow_phase_notify_employee_override_text` varchar(255) DEFAULT NULL,
  `epm_workflow_phase_notify_manager_override_text` varchar(255) DEFAULT NULL,
  `epm_workflow_phase_advance_notification_days_before` int(11) NOT NULL DEFAULT '0',
  `epm_workflow_phase_employee_advance_letter_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_workflow_phase_manager_advance_letter_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_workflow_phase_employee_letter_id` int(11) unsigned NOT NULL DEFAULT '0',
  `epm_workflow_phase_manager_letter_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_workflow_phase_id`),
  KEY `epm_workflow_id_idx` (`epm_workflow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_workflow_phase_permission`
--

DROP TABLE IF EXISTS `epm_workflow_phase_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_workflow_phase_permission` (
  `epm_workflow_phase_permission_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_workflow_phase_permission_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_workflow_phase_permission_date_created` datetime NOT NULL,
  `epm_workflow_phase_id` int(11) NOT NULL DEFAULT '0',
  `epm_workflow_phase_permission_key` varchar(255) NOT NULL,
  `epm_workflow_phase_permission_enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_workflow_phase_permission_id`),
  KEY `composite_idx` (`epm_workflow_phase_id`,`epm_workflow_phase_permission_key`,`epm_workflow_phase_permission_enabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_workflow_skill`
--

DROP TABLE IF EXISTS `epm_workflow_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_workflow_skill` (
  `epm_workflow_skill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `epm_workflow_skill_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_workflow_skill_date_created` datetime NOT NULL,
  `epm_workflow_category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `epm_workflow_skill_weight` decimal(10,2) DEFAULT NULL,
  `hua_skill_id` int(10) unsigned NOT NULL DEFAULT '0',
  `epm_workflow_skill_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_workflow_skill_id`),
  KEY `epm_workflow_category_id_idx` (`epm_workflow_category_id`),
  KEY `hua_skill_id_idx` (`hua_skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `epm_workflow_type`
--

DROP TABLE IF EXISTS `epm_workflow_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epm_workflow_type` (
  `epm_workflow_type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `epm_workflow_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `epm_workflow_type_date_created` datetime NOT NULL,
  `epm_workflow_type_name` varchar(255) NOT NULL,
  `epm_workflow_type_description` varchar(255) NOT NULL,
  `epm_workflow_type_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `epm_workflow_type_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_workflow_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ers_assigned_award`
--

DROP TABLE IF EXISTS `ers_assigned_award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ers_assigned_award` (
  `ers_assigned_award_id` int(11) NOT NULL AUTO_INCREMENT,
  `ers_assigned_award_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ers_assigned_award_date_created` datetime DEFAULT NULL,
  `ers_assigned_award_approved` datetime DEFAULT NULL,
  `ers_assigned_award_rejected` datetime DEFAULT NULL,
  `ats_user_id` int(11) DEFAULT NULL,
  `ers_award_id` int(11) DEFAULT NULL,
  `ers_requisition_id` int(11) DEFAULT NULL,
  `ats_jobseeker_id` int(11) NOT NULL,
  `ats_jobseeker_status_id` int(11) DEFAULT NULL,
  `hua_user_id` int(11) DEFAULT NULL,
  `ers_assigned_award_comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ers_assigned_award_id`),
  KEY `awardid` (`ers_award_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `ats_jobseeker_id` (`ats_jobseeker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ers_assigned_award_installment`
--

DROP TABLE IF EXISTS `ers_assigned_award_installment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ers_assigned_award_installment` (
  `ers_assigned_award_installment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ers_assigned_award_id` int(10) unsigned DEFAULT NULL,
  `ers_assigned_award_installment_num` int(10) unsigned DEFAULT NULL,
  `ers_assigned_award_installment_interval` int(10) unsigned DEFAULT NULL,
  `ers_assigned_award_installment_amount` int(10) DEFAULT NULL,
  `ers_assigned_award_installment_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ers_assigned_award_date_created` datetime DEFAULT NULL,
  `ers_assigned_award_installment_approval_date` datetime DEFAULT NULL,
  `hua_user_id` int(11) NOT NULL,
  PRIMARY KEY (`ers_assigned_award_installment_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `ers_assigned_award_id` (`ers_assigned_award_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ers_assigned_award_tracking_status`
--

DROP TABLE IF EXISTS `ers_assigned_award_tracking_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ers_assigned_award_tracking_status` (
  `ers_assigned_award_tracking_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `ers_assigned_award_tracking_status_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ers_assigned_award_tracking_status_date_created` datetime DEFAULT NULL,
  `ers_assigned_award_tracking_status_name` char(255) DEFAULT NULL,
  `ers_assigned_award_tracking_status_logical_value` char(255) DEFAULT NULL,
  PRIMARY KEY (`ers_assigned_award_tracking_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ers_award`
--

DROP TABLE IF EXISTS `ers_award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ers_award` (
  `ers_award_id` int(11) NOT NULL AUTO_INCREMENT,
  `ers_award_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ers_award_date_created` datetime NOT NULL,
  `ers_award_name` char(255) NOT NULL,
  `ers_award_description` char(255) NOT NULL,
  `ers_award_type_id` int(11) NOT NULL,
  `ers_award_approved` datetime DEFAULT NULL,
  `ers_award_rejected` datetime DEFAULT NULL,
  `ers_award_active` int(11) NOT NULL,
  `ers_award_value` decimal(12,2) DEFAULT NULL,
  `ers_award_tax_value` decimal(12,2) DEFAULT NULL,
  `ers_award_inventory` int(11) NOT NULL,
  `hua_user_id` int(11) NOT NULL COMMENT 'creator user id',
  `ers_award_suggestion_reason` char(255) DEFAULT NULL,
  `ers_award_is_suggestion` tinyint(4) DEFAULT '0',
  `hua_user_id_suggested_by` int(11) NOT NULL,
  PRIMARY KEY (`ers_award_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `ers_award_type_id` (`ers_award_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='holds award descriptions and properties';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ers_award_type`
--

DROP TABLE IF EXISTS `ers_award_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ers_award_type` (
  `ers_award_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `ers_award_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ers_award_type_date_created` datetime NOT NULL,
  `ers_award_type_name` char(255) NOT NULL,
  `ers_award_type_description` char(255) NOT NULL,
  `ers_award_type_system_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ers_award_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='holds types of awards, scope for who referral type applies a';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ers_referral`
--

DROP TABLE IF EXISTS `ers_referral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ers_referral` (
  `ers_referral_id` int(11) NOT NULL AUTO_INCREMENT,
  `ers_referral_date_created` datetime NOT NULL,
  `ers_referral_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ats_user_id` int(11) NOT NULL,
  `ats_jobseeker_id` int(11) NOT NULL,
  `ers_referral_high_performer` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ers_referral_id`),
  KEY `ats_jobseeker_id` (`ats_jobseeker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 PACK_KEYS=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ers_requisition`
--

DROP TABLE IF EXISTS `ers_requisition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ers_requisition` (
  `ers_requisition_id` int(11) NOT NULL AUTO_INCREMENT,
  `ers_requisition_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ers_requisition_date_created` datetime DEFAULT NULL,
  `ats_requisition_id` int(11) NOT NULL,
  `ers_requisition_approved` datetime DEFAULT NULL,
  `ers_requisition_rejected` datetime DEFAULT NULL,
  `hua_user_id` char(255) NOT NULL,
  `ers_requisition_rejection_notes` char(255) DEFAULT NULL,
  PRIMARY KEY (`ers_requisition_id`),
  KEY `requisition_id` (`ats_requisition_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `ers_req_combined_idx` (`ers_requisition_date_created`,`ers_requisition_rejected`,`ers_requisition_approved`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ers_requisition_award`
--

DROP TABLE IF EXISTS `ers_requisition_award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ers_requisition_award` (
  `ers_requisition_award_id` int(11) NOT NULL AUTO_INCREMENT,
  `ers_requisition_award_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ers_requisition_award_date_created` datetime DEFAULT NULL,
  `ats_jobseeker_status_id` int(11) DEFAULT NULL,
  `ers_award_id` int(11) DEFAULT NULL,
  `ers_requisition_id` int(11) DEFAULT NULL,
  `ers_requisition_award_scope` enum('any','external','internal') DEFAULT NULL,
  `ers_requisition_award_pay_mode` enum('earned','start_date') NOT NULL,
  `ers_requisition_award_interval` int(11) DEFAULT NULL,
  PRIMARY KEY (`ers_requisition_award_id`),
  KEY `ats_jobseeker_status_id` (`ats_jobseeker_status_id`),
  KEY `ers_requisition_id_idx` (`ers_requisition_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 PACK_KEYS=0 COMMENT='Holds award plan for a req';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ers_requisition_award_installment`
--

DROP TABLE IF EXISTS `ers_requisition_award_installment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ers_requisition_award_installment` (
  `ers_requisition_award_installment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ers_requisition_award_id` int(10) unsigned DEFAULT NULL,
  `ers_requisition_award_installment_num` int(10) unsigned DEFAULT NULL,
  `ers_requisition_award_installment_interval` int(10) unsigned DEFAULT NULL,
  `ers_requisition_award_installment_amount` int(10) unsigned DEFAULT NULL,
  `ers_requisition_award_installment_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ers_requisition_award_installment_date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`ers_requisition_award_installment_id`),
  KEY `ers_requisition_award_id` (`ers_requisition_award_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 PACK_KEYS=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ers_requisition_referral`
--

DROP TABLE IF EXISTS `ers_requisition_referral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ers_requisition_referral` (
  `ers_requisition_referral_id` int(11) NOT NULL AUTO_INCREMENT,
  `ats_jobseeker_id` int(11) NOT NULL,
  `ats_requisition_id` int(11) NOT NULL,
  `ers_requisition_referral_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ers_requisition_referral_date_created` datetime NOT NULL,
  `ers_requisition_referral_comment` varchar(255) DEFAULT NULL,
  `ers_requisition_referral_source` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ers_requisition_referral_id`),
  KEY `ats_jobseeker_id` (`ats_jobseeker_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 PACK_KEYS=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_ad_hoc_match_division`
--

DROP TABLE IF EXISTS `hua_ad_hoc_match_division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_ad_hoc_match_division` (
  `hua_ad_hoc_match_division_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_ad_hoc_match_division_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_ad_hoc_match_division_date_created` datetime NOT NULL,
  `hua_ad_hoc_org_level_division` int(11) DEFAULT NULL,
  `hua_ad_hoc_org_level_child` int(11) DEFAULT NULL,
  PRIMARY KEY (`hua_ad_hoc_match_division_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_ad_hoc_report`
--

DROP TABLE IF EXISTS `hua_ad_hoc_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_ad_hoc_report` (
  `hua_ad_hoc_report_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_ad_hoc_report_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_ad_hoc_report_date_created` datetime NOT NULL,
  `hua_ad_hoc_report_name` varchar(255) NOT NULL,
  `hua_ad_hoc_report_desc` text,
  `hua_ad_hoc_report_force_family` int(11) DEFAULT NULL,
  `hua_ad_hoc_report_xml` text,
  PRIMARY KEY (`hua_ad_hoc_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_ad_hoc_report_db_field`
--

DROP TABLE IF EXISTS `hua_ad_hoc_report_db_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_ad_hoc_report_db_field` (
  `hua_ad_hoc_report_db_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_ad_hoc_report_db_field_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_ad_hoc_report_db_field_date_created` datetime NOT NULL,
  `hua_ad_hoc_report_field_id` int(11) DEFAULT NULL,
  `hua_ad_hoc_report_db_field_family` int(11) DEFAULT NULL,
  `hua_ad_hoc_report_db_field_table_name` varchar(255) DEFAULT NULL,
  `hua_ad_hoc_report_db_field_return_statement` varchar(700) DEFAULT NULL,
  `hua_ad_hoc_report_db_field_group_statement` varchar(255) DEFAULT NULL,
  `hua_ad_hoc_report_db_field_filter_statement` varchar(500) DEFAULT NULL,
  `hua_ad_hoc_report_db_field_order_by_statement` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_ad_hoc_report_db_field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_ad_hoc_report_field`
--

DROP TABLE IF EXISTS `hua_ad_hoc_report_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_ad_hoc_report_field` (
  `hua_ad_hoc_report_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_ad_hoc_report_field_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_ad_hoc_report_field_date_created` datetime NOT NULL,
  `hua_ad_hoc_report_field_name` varchar(255) NOT NULL,
  `hua_ad_hoc_report_field_desc` text,
  `hua_ad_hoc_report_field_can_group_by` tinyint(1) DEFAULT '0',
  `hua_ad_hoc_report_field_family` int(11) DEFAULT NULL,
  `hua_ad_hoc_report_field_filter_type` varchar(255) DEFAULT NULL,
  `hua_ad_hoc_report_field_count_if_group_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`hua_ad_hoc_report_field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_administration_category`
--

DROP TABLE IF EXISTS `hua_administration_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_administration_category` (
  `hua_administration_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_administration_category_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_administration_category_date_created` datetime DEFAULT NULL,
  `hua_administration_category_name` varchar(255) NOT NULL,
  `hua_administration_category_description` varchar(255) NOT NULL,
  `hua_administration_category_system_flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_administration_category_id`),
  KEY `ixNotifCatName` (`hua_administration_category_name`),
  KEY `ixNotifCategory` (`hua_administration_category_description`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_aggregate_history_date_set`
--

DROP TABLE IF EXISTS `hua_aggregate_history_date_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_aggregate_history_date_set` (
  `hua_aggregate_history_date_set_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_aggregate_history_date_set_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_aggregate_history_date_set_date_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_org_level_id` int(11) NOT NULL,
  `hua_aggregate_history_date_set_date_one` date DEFAULT NULL,
  `hua_aggregate_history_date_set_date_two` date DEFAULT NULL,
  `hua_aggregate_history_date_set_date_three` date DEFAULT NULL,
  `hua_aggregate_history_date_set_system_flag` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`hua_aggregate_history_date_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_application_pref`
--

DROP TABLE IF EXISTS `hua_application_pref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_application_pref` (
  `hua_application_pref_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_application_pref_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_application_pref_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_module_id` int(11) unsigned DEFAULT '0',
  `hua_user_id` int(11) DEFAULT NULL,
  `hua_application_pref_key` char(255) DEFAULT NULL,
  `hua_application_pref_value` char(255) DEFAULT NULL,
  `hua_application_pref_type` char(255) DEFAULT NULL,
  PRIMARY KEY (`hua_application_pref_id`),
  KEY `hua_module_id` (`hua_module_id`),
  KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_approval_chain`
--

DROP TABLE IF EXISTS `hua_approval_chain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_approval_chain` (
  `hua_approval_chain_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_approval_chain_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hua_approval_chain_date_created` datetime DEFAULT NULL,
  `hua_approval_chain_name` varchar(255) DEFAULT NULL,
  `hua_approval_chain_description` varchar(255) DEFAULT NULL,
  `hua_approval_chain_type` enum('serial','parallel') DEFAULT NULL,
  `hua_approval_chain_active` tinyint(1) NOT NULL DEFAULT '1',
  `hua_approval_chain_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_approval_chain_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_approval_chain_member`
--

DROP TABLE IF EXISTS `hua_approval_chain_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_approval_chain_member` (
  `hua_approval_chain_member_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_approval_chain_member_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hua_approval_chain_member_date_created` datetime DEFAULT NULL,
  `hua_approval_chain_id` int(11) unsigned DEFAULT NULL,
  `hua_approval_chain_member_target` varchar(255) NOT NULL,
  `hua_approval_chain_member_type` varchar(255) NOT NULL,
  `hua_approval_chain_member_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_approval_chain_member_id`),
  KEY `hua_approval_chain_id` (`hua_approval_chain_id`),
  KEY `hua_approval_chain_member_target` (`hua_approval_chain_member_target`),
  KEY `hua_approval_chain_member_type` (`hua_approval_chain_member_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_approval_type`
--

DROP TABLE IF EXISTS `hua_approval_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_approval_type` (
  `hua_approval_type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_approval_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_approval_type_date_created` datetime DEFAULT NULL,
  `hua_approval_type_name` varchar(255) NOT NULL,
  `hua_approval_type_logical_value` varchar(255) NOT NULL,
  `hua_approval_type_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_approval_type_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_approval_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_approver_plugin`
--

DROP TABLE IF EXISTS `hua_approver_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_approver_plugin` (
  `hua_approver_plugin_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_approver_plugin_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_approver_plugin_date_created` datetime DEFAULT NULL,
  `hua_approver_plugin_name` varchar(255) DEFAULT NULL,
  `hua_approver_plugin_description` varchar(255) DEFAULT NULL,
  `hua_approver_plugin_short_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_approver_plugin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_assessment`
--

DROP TABLE IF EXISTS `hua_assessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_assessment` (
  `hua_assessment_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_assessment_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_assessment_date_created` datetime DEFAULT NULL,
  `hua_user_id` int(11) DEFAULT NULL,
  `hua_assessment_creator_id` int(11) DEFAULT NULL,
  `hua_assessment_external_id` varchar(255) DEFAULT NULL,
  `hua_assessment_vendor_id` int(11) DEFAULT NULL,
  `hua_assessment_description` varchar(255) DEFAULT NULL,
  `hua_assessment_process_status_id` int(11) DEFAULT NULL,
  `hua_assessment_result` varchar(255) DEFAULT NULL,
  `hua_assessment_archived` int(11) DEFAULT NULL,
  `hua_soa_integration_link_id` int(11) DEFAULT NULL,
  `ats_requisition_id` int(11) DEFAULT NULL,
  `hua_assessment_url` varchar(255) DEFAULT NULL,
  `hua_assessment_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `hua_assessment_package_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_assessment_copied_from` int(11) unsigned DEFAULT '0',
  `hua_assessment_type_threshold_passed` tinyint(1) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`hua_assessment_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `user_process` (`hua_user_id`,`hua_assessment_process_status_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_assessment_package`
--

DROP TABLE IF EXISTS `hua_assessment_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_assessment_package` (
  `hua_assessment_package_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_assessment_package_last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `hua_assessment_package_date_created` datetime DEFAULT NULL,
  `hua_assessment_vendor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_assessment_package_name` varchar(255) DEFAULT NULL,
  `hua_assessment_package_code` varchar(255) DEFAULT NULL,
  `hua_assessment_package_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_assessment_package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_assessment_package_to_type`
--

DROP TABLE IF EXISTS `hua_assessment_package_to_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_assessment_package_to_type` (
  `hua_assessment_package_to_type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_assessment_type_id` int(11) NOT NULL,
  `hua_assessment_package_id` int(11) NOT NULL,
  `hua_assessment_package_to_type_last_modified` timestamp NULL DEFAULT NULL,
  `hua_assessment_package_to_type_date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`hua_assessment_package_to_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_assessment_process_status`
--

DROP TABLE IF EXISTS `hua_assessment_process_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_assessment_process_status` (
  `hua_assessment_process_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_assessment_process_status_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_assessment_process_status_date_created` datetime DEFAULT NULL,
  `hua_assessment_process_status_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_assessment_process_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_assessment_report`
--

DROP TABLE IF EXISTS `hua_assessment_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_assessment_report` (
  `hua_assessment_report_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_assessment_id` int(11) unsigned NOT NULL,
  `hua_assessment_report_last_modified` timestamp NULL DEFAULT NULL,
  `hua_assessment_report_date_created` datetime DEFAULT NULL,
  `hua_assessment_report_name` varchar(255) DEFAULT NULL,
  `hua_assessment_report_code` varchar(255) DEFAULT NULL,
  `hua_soa_integration_link_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`hua_assessment_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_assessment_score`
--

DROP TABLE IF EXISTS `hua_assessment_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_assessment_score` (
  `hua_assessment_score_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_assessment_score_last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `hua_assessment_score_date_created` datetime DEFAULT NULL,
  `hua_assessment_score_text` varchar(255) DEFAULT NULL,
  `hua_assessment_score_value` varchar(255) DEFAULT NULL,
  `hua_assessment_score_report_url` varchar(255) DEFAULT NULL,
  `hua_assessment_score_image_url` varchar(255) DEFAULT NULL,
  `hua_assessment_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_assessment_type_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_assessment_score_id`),
  KEY `hua_assessment_type_id` (`hua_assessment_type_id`),
  KEY `hua_assessment_id` (`hua_assessment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_assessment_type`
--

DROP TABLE IF EXISTS `hua_assessment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_assessment_type` (
  `hua_assessment_type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_assessment_type_last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `hua_assessment_type_date_created` datetime DEFAULT NULL,
  `hua_assessment_type_name` varchar(255) DEFAULT NULL,
  `hua_assessment_type_description` varchar(255) DEFAULT NULL,
  `hua_assessment_vendor_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_assessment_type_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_assessment_type_threshold_enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_assessment_type_id`),
  KEY `hua_assessment_vendor_id` (`hua_assessment_vendor_id`),
  KEY `hua_assessment_vendor_id_2` (`hua_assessment_vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_assessment_vendor`
--

DROP TABLE IF EXISTS `hua_assessment_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_assessment_vendor` (
  `hua_assessment_vendor_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_assessment_vendor_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_assessment_vendor_date_created` datetime DEFAULT NULL,
  `hua_soa_integration_id` int(11) DEFAULT NULL,
  `hua_assessment_vendor_cancel_request` tinyint(1) DEFAULT NULL,
  `hua_assessment_vendor_require_package` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`hua_assessment_vendor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_assessment_vendor_url`
--

DROP TABLE IF EXISTS `hua_assessment_vendor_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_assessment_vendor_url` (
  `hua_assessment_vendor_url_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_assessment_vendor_url_last_modified` timestamp NULL DEFAULT NULL,
  `hua_assessment_vendor_url_date_created` datetime DEFAULT NULL,
  `hua_assessment_vendor_id` int(11) unsigned NOT NULL,
  `hua_assessment_vendor_url_link` varchar(255) NOT NULL,
  PRIMARY KEY (`hua_assessment_vendor_url_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_association`
--

DROP TABLE IF EXISTS `hua_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_association` (
  `hua_association_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_association_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_association_date_created` datetime NOT NULL,
  `hua_association_type_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_association_selection_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_association_record_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_association_id`),
  KEY `hua_association_type_id_idx` (`hua_association_type_id`),
  KEY `hua_association_selection_id_idx` (`hua_association_selection_id`),
  KEY `hua_association_record_id_idx` (`hua_association_record_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_association_relation`
--

DROP TABLE IF EXISTS `hua_association_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_association_relation` (
  `hua_association_relation_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_association_relation_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_association_relation_date_created` datetime NOT NULL,
  `hua_association_type_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_association_relation_related_type_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_association_relation_mode` enum('scope','column') NOT NULL DEFAULT 'scope',
  `hua_association_relation_name` varchar(255) NOT NULL,
  PRIMARY KEY (`hua_association_relation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_association_system`
--

DROP TABLE IF EXISTS `hua_association_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_association_system` (
  `hua_association_system_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_association_system_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_association_system_date_created` datetime NOT NULL,
  `hua_association_system_code` varchar(255) DEFAULT NULL,
  `hua_association_system_name` varchar(255) NOT NULL,
  `hua_association_system_class` varchar(255) NOT NULL,
  PRIMARY KEY (`hua_association_system_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_association_type`
--

DROP TABLE IF EXISTS `hua_association_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_association_type` (
  `hua_association_type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_association_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_association_type_date_created` datetime NOT NULL,
  `hua_association_type_name` varchar(255) NOT NULL,
  `hua_association_type_class` varchar(255) NOT NULL,
  `hua_association_system_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_association_type_allow_multiple_associations` tinyint(1) NOT NULL DEFAULT '0',
  `hua_association_type_order` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_feature_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_association_type_id`),
  KEY `hua_association_system_id_idx` (`hua_association_system_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_attachment`
--

DROP TABLE IF EXISTS `hua_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_attachment` (
  `hua_attachment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_attachment_record_id` int(10) unsigned DEFAULT '0',
  `hua_file_id` int(10) unsigned DEFAULT '0',
  `hua_attachment_record_type` char(255) DEFAULT NULL,
  `hua_attachment_creator_id` int(10) unsigned DEFAULT '0',
  `hua_attachment_creator_email` varchar(100) DEFAULT NULL,
  `hua_attachment_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_attachment_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_attachment_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_attachment_id`),
  KEY `hua_attachment_creator_id` (`hua_attachment_creator_id`),
  KEY `hua_attachment_record_id` (`hua_attachment_record_id`),
  KEY `hua_attachment_record_type` (`hua_attachment_record_type`),
  KEY `hua_file_id` (`hua_file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6415 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_background_check`
--

DROP TABLE IF EXISTS `hua_background_check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_background_check` (
  `hua_background_check_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_background_check_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_background_check_date_created` datetime DEFAULT NULL,
  `hua_user_id` int(11) DEFAULT NULL,
  `hua_background_check_creator_id` int(11) DEFAULT NULL,
  `hua_background_check_external_id` varchar(255) DEFAULT NULL,
  `hua_background_check_vendor_id` int(11) DEFAULT NULL,
  `hua_background_check_description` text,
  `hua_background_check_result` varchar(255) DEFAULT NULL,
  `hua_background_check_process_status_id` int(11) DEFAULT NULL,
  `hua_background_check_score` varchar(255) DEFAULT NULL,
  `hua_background_check_archived` tinyint(1) NOT NULL DEFAULT '0',
  `hua_background_check_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `hua_soa_integration_link_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`hua_background_check_id`),
  KEY `hua_background_check_process_status_id` (`hua_background_check_process_status_id`),
  FULLTEXT KEY `hua_background_check_result` (`hua_background_check_result`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_background_check_process_status`
--

DROP TABLE IF EXISTS `hua_background_check_process_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_background_check_process_status` (
  `hua_background_check_process_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_background_check_process_status_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_background_check_process_status_date_created` datetime DEFAULT NULL,
  `hua_background_check_process_status_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_background_check_process_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_background_check_report`
--

DROP TABLE IF EXISTS `hua_background_check_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_background_check_report` (
  `hua_background_check_report_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_background_check_report_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_background_check_report_date_created` datetime DEFAULT NULL,
  `hua_background_check_process_status_id` int(11) DEFAULT NULL,
  `hua_background_check_id` int(11) NOT NULL,
  `hua_background_check_report_name` varchar(255) DEFAULT NULL,
  `hua_background_check_report_score` varchar(255) DEFAULT NULL,
  `hua_soa_integration_link_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`hua_background_check_report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_background_check_vendor`
--

DROP TABLE IF EXISTS `hua_background_check_vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_background_check_vendor` (
  `hua_background_check_vendor_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_background_check_vendor_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_background_check_vendor_date_created` datetime DEFAULT NULL,
  `hua_soa_integration_id` int(11) DEFAULT NULL,
  `hua_background_check_vendor_display_score` tinyint(1) DEFAULT NULL,
  `hua_background_check_vendor_cancel_request` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`hua_background_check_vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_batch_process`
--

DROP TABLE IF EXISTS `hua_batch_process`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_batch_process` (
  `hua_batch_process_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_batch_process_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_batch_process_date_created` datetime NOT NULL,
  `hua_batch_process_key` varchar(255) NOT NULL,
  `hua_batch_process_serialized_data` mediumtext,
  PRIMARY KEY (`hua_batch_process_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_benefit`
--

DROP TABLE IF EXISTS `hua_benefit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_benefit` (
  `hua_benefit_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_benefit_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hua_benefit_date_created` datetime NOT NULL,
  `hua_benefit_name` varchar(255) NOT NULL,
  `hua_benefit_category_id` int(11) NOT NULL,
  `hua_benefit_value` varchar(255) NOT NULL,
  `hua_benefit_letter_text` text NOT NULL,
  `hua_benefit_overridable` tinyint(1) NOT NULL,
  `hua_benefit_additional_data` varchar(255) NOT NULL,
  `hua_benefit_merge_code` varchar(255) NOT NULL,
  `hua_benefit_start_value` bigint(11) unsigned NOT NULL,
  `hua_benefit_start_type` enum('immediate','months','days','years','date') NOT NULL DEFAULT 'immediate',
  `hua_benefit_secondary_start_value` bigint(11) unsigned NOT NULL,
  `hua_benefit_secondary_start_type` enum('none','day_of_month','day_of_week') NOT NULL DEFAULT 'none',
  `hua_benefit_secondary_start_date_name` varchar(50) DEFAULT NULL,
  `hua_benefit_active` tinyint(1) NOT NULL DEFAULT '1',
  `hua_benefit_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `hua_benefit_show_on_ttp` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_benefit_id`),
  KEY `hua_benefit_category_id` (`hua_benefit_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_benefit_category`
--

DROP TABLE IF EXISTS `hua_benefit_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_benefit_category` (
  `hua_benefit_category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_benefit_category_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hua_benefit_category_date_created` datetime NOT NULL,
  `hua_benefit_category_name` char(255) NOT NULL,
  `hua_benefit_category_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_benefit_category_order` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_benefit_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_benefit_package`
--

DROP TABLE IF EXISTS `hua_benefit_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_benefit_package` (
  `hua_benefit_package_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_benefit_package_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hua_benefit_package_date_created` datetime NOT NULL,
  `hua_benefit_package_name` char(255) NOT NULL,
  `hua_benefit_package_description` char(255) NOT NULL,
  `hua_benefit_package_active` tinyint(1) NOT NULL DEFAULT '1',
  `hua_benefit_package_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `hua_benefit_package_always_available` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_benefit_package_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_benefit_package_association`
--

DROP TABLE IF EXISTS `hua_benefit_package_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_benefit_package_association` (
  `hua_benefit_package_association_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_benefit_package_association_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hua_benefit_package_association_date_created` datetime NOT NULL,
  `hua_benefit_package_id` int(11) unsigned NOT NULL,
  `hua_benefit_package_association_data_type` char(255) NOT NULL,
  `hua_benefit_package_association_data_value` int(11) unsigned NOT NULL,
  `hua_benefit_package_association_required` tinyint(1) NOT NULL DEFAULT '0',
  `hua_benefit_package_association_data_type_select_all` tinyint(11) DEFAULT NULL,
  PRIMARY KEY (`hua_benefit_package_association_id`),
  KEY `hua_benefit_package_id` (`hua_benefit_package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_benefit_to_benefit_package`
--

DROP TABLE IF EXISTS `hua_benefit_to_benefit_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_benefit_to_benefit_package` (
  `hua_benefit_to_benefit_package_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_benefit_to_benefit_package_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hua_benefit_to_benefit_package_date_created` datetime NOT NULL,
  `hua_benefit_package_id` int(11) unsigned NOT NULL,
  `hua_benefit_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`hua_benefit_to_benefit_package_id`),
  KEY `hua_benefit_id` (`hua_benefit_id`,`hua_benefit_package_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_building`
--

DROP TABLE IF EXISTS `hua_building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_building` (
  `hua_building_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_building_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_building_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_building_name` char(255) DEFAULT NULL,
  `hua_building_contact` int(10) unsigned DEFAULT NULL,
  `hua_location_id` int(10) unsigned DEFAULT NULL,
  `hua_building_special_instructions` char(255) DEFAULT NULL,
  PRIMARY KEY (`hua_building_id`),
  KEY `hua_building_contact` (`hua_building_contact`),
  KEY `hua_building_name` (`hua_building_name`),
  KEY `hua_building_special_instructions` (`hua_building_special_instructions`),
  KEY `hua_location_id` (`hua_location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_calendar`
--

DROP TABLE IF EXISTS `hua_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_calendar` (
  `hua_calendar_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_calendar_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_calendar_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_calendar_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_calendar_id`),
  KEY `hua_calendar_FKIndex2` (`hua_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2220 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_calendar_group`
--

DROP TABLE IF EXISTS `hua_calendar_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_calendar_group` (
  `hua_calendar_group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_calendar_group_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_calendar_group_date_created` datetime DEFAULT NULL,
  `hua_calendar_group_type` char(255) DEFAULT NULL,
  `hua_calendar_group_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_calendar_group_date_added` datetime DEFAULT NULL,
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_calendar_group_color` char(255) DEFAULT '#000000',
  `hua_calendar_group_name` char(255) NOT NULL,
  `hua_calendar_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_calendar_group_id`),
  KEY `calendar_group_type` (`hua_calendar_group_type`),
  KEY `hua_calendar_group_type_id` (`hua_calendar_group_type_id`),
  KEY `hua_calendar_id` (`hua_calendar_id`),
  KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_calendar_groupmember`
--

DROP TABLE IF EXISTS `hua_calendar_groupmember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_calendar_groupmember` (
  `hua_calendar_groupmember_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_calendar_groupmember_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_calendar_groupmember_date_created` datetime DEFAULT NULL,
  `hua_calendar_group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_calendar_groupmember_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_calendar_groupmember_date_added` datetime DEFAULT NULL,
  `hua_calendar_groupmember_notify_reminder` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_calendar_groupmember_acknowledged` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_calendar_groupmember_id`),
  KEY `hua_calendar_group_id` (`hua_calendar_group_id`),
  KEY `hua_calendar_groupmember_user_id` (`hua_calendar_groupmember_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_calendar_item`
--

DROP TABLE IF EXISTS `hua_calendar_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_calendar_item` (
  `hua_calendar_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_calendar_item_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_calendar_item_date_created` datetime DEFAULT NULL,
  `hua_calendar_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_calendar_item_name` varchar(255) DEFAULT NULL,
  `hua_calendar_item_notes` text,
  `hua_calendar_item_dateadded` datetime DEFAULT NULL,
  `hua_calendar_item_private` tinyint(1) DEFAULT NULL,
  `hua_calendar_item_alarm` enum('alarm','email','none') DEFAULT NULL,
  `hua_calendar_item_acknowledged` tinyint(1) unsigned DEFAULT '0',
  `hua_calendar_item_color` varchar(255) NOT NULL,
  `hua_calendar_item_complete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_calendar_item_type` enum('event','task','reminder','interview') NOT NULL DEFAULT 'event',
  `hua_calendar_location` varchar(255) NOT NULL,
  `ats_requisition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_candidate_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_calendar_item_global` int(10) NOT NULL DEFAULT '0',
  `hua_module_id` int(10) NOT NULL DEFAULT '0',
  `hua_calendar_item_outlook_id` varchar(255) DEFAULT NULL,
  `hua_calendar_item_shared_private` tinyint(1) unsigned DEFAULT '0',
  `hua_calendar_item_template` tinyint(1) NOT NULL,
  `hua_calendar_item_parent_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_calendar_item_id`),
  KEY `hua_calendar_item_FKIndex1` (`hua_calendar_id`),
  KEY `ats_candidate_id` (`ats_candidate_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_calendar_item_document`
--

DROP TABLE IF EXISTS `hua_calendar_item_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_calendar_item_document` (
  `hua_calendar_item_document_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_calendar_item_document_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_calendar_item_document_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_calendar_item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_document_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_calendar_item_document_id`),
  KEY `hua_calendar_item_id` (`hua_calendar_item_id`),
  KEY `hua_document_id` (`hua_document_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_calendar_item_document_share`
--

DROP TABLE IF EXISTS `hua_calendar_item_document_share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_calendar_item_document_share` (
  `hua_calendar_item_document_share_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_calendar_item_document_share_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_calendar_item_document_share_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_calendar_item_document_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_calendar_item_share_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_calendar_item_document_share_id`),
  KEY `hua_calendar_item_document_id` (`hua_calendar_item_document_id`),
  KEY `hua_calendar_item_share_id` (`hua_calendar_item_share_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_calendar_item_share`
--

DROP TABLE IF EXISTS `hua_calendar_item_share`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_calendar_item_share` (
  `hua_calendar_item_share_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_calendar_item_share_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_calendar_item_share_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_calendar_item_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_calendar_item_share_type` enum('group','team','user','candidate') NOT NULL DEFAULT 'group',
  `hua_calendar_group_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_calendar_item_share_id`),
  KEY `hua_calendar_group_id` (`hua_calendar_group_id`),
  KEY `hua_calendar_item_id` (`hua_calendar_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_calendar_item_timeslot`
--

DROP TABLE IF EXISTS `hua_calendar_item_timeslot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_calendar_item_timeslot` (
  `hua_calendar_item_timeslot_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_calendar_item_timeslot_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_calendar_item_timeslot_date_created` datetime DEFAULT NULL,
  `hua_calendar_item_id` int(11) unsigned NOT NULL,
  `hua_calendar_item_timeslot_start_time` datetime NOT NULL,
  `hua_calendar_item_timeslot_end_time` datetime NOT NULL,
  `hua_calendar_item_timeslot_maximum_number_of_space` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`hua_calendar_item_timeslot_id`),
  KEY `hua_calendar_item_id` (`hua_calendar_item_id`),
  KEY `hua_calendar_item_timeslot_start_time` (`hua_calendar_item_timeslot_start_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_calendar_shared_users`
--

DROP TABLE IF EXISTS `hua_calendar_shared_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_calendar_shared_users` (
  `hua_calendar_shared_users_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_calendar_shared_users_date_created` datetime NOT NULL,
  `hua_calendar_shared_users_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hua_calendar_shared_users_hua_user_id` int(10) unsigned NOT NULL,
  `hua_calendar_shared_users_shared_hua_user_id` int(10) unsigned NOT NULL,
  `hua_calendar_shared_users_color` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`hua_calendar_shared_users_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_cart`
--

DROP TABLE IF EXISTS `hua_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_cart` (
  `hua_cart_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_cart_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_cart_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_cart_module_name` char(255) DEFAULT NULL,
  `hua_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`hua_cart_id`),
  KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_cart_item`
--

DROP TABLE IF EXISTS `hua_cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_cart_item` (
  `hua_cart_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_cart_item_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_cart_item_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_cart_id` int(11) DEFAULT NULL,
  `hua_cart_item_table_name` char(255) DEFAULT NULL,
  `hua_cart_item_table_key` char(255) DEFAULT NULL,
  `hua_cart_item_table_key_value` char(255) DEFAULT NULL,
  `hua_cart_item_type` char(255) DEFAULT NULL,
  `hua_cart_item_type_value` char(255) DEFAULT NULL,
  `hua_cart_item_type_extra` char(255) DEFAULT NULL,
  `hua_cart_item_type_extra_value` char(255) DEFAULT NULL,
  `hua_cart_item_manager_endorsed` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_cart_item_id`),
  KEY `hua_cart_id` (`hua_cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_change`
--

DROP TABLE IF EXISTS `hua_change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_change` (
  `hua_change_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_change_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_change_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_change_date` datetime DEFAULT NULL,
  `hua_change_table` varchar(255) DEFAULT NULL,
  `hua_change_table_key` varchar(255) DEFAULT NULL,
  `hua_change_table_field` varchar(255) DEFAULT NULL,
  `hua_change_table_value` text,
  `hua_change_editor_user_id` int(11) DEFAULT NULL,
  `hua_change_action` tinyint(1) DEFAULT NULL,
  `hua_change_action_user_id` int(11) DEFAULT NULL,
  `hua_change_action_date` datetime DEFAULT NULL,
  `hua_change_acknowledgement_user_id` int(11) DEFAULT NULL,
  `hua_change_acknowledgement_date` datetime DEFAULT NULL,
  PRIMARY KEY (`hua_change_id`),
  KEY `hua_change_acknowledgement_user_id` (`hua_change_acknowledgement_user_id`),
  KEY `hua_change_action_user_id` (`hua_change_action_user_id`),
  KEY `hua_change_editor_user_id` (`hua_change_editor_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_competency`
--

DROP TABLE IF EXISTS `hua_competency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_competency` (
  `hua_competency_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_competency_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_competency_date_created` datetime NOT NULL,
  `epm_category_id` int(11) NOT NULL DEFAULT '0',
  `hua_competency_name` varchar(255) NOT NULL,
  `hua_competency_description` varchar(255) DEFAULT NULL,
  `hua_competency_active` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`hua_competency_id`),
  KEY `epm_category_id_idx` (`epm_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_competency_coaching_tip`
--

DROP TABLE IF EXISTS `hua_competency_coaching_tip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_competency_coaching_tip` (
  `hua_competency_coaching_tip_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_competency_coaching_tip_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_competency_coaching_tip_date_created` datetime NOT NULL,
  `hua_competency_coaching_tip_text` varchar(255) DEFAULT NULL,
  `hua_competency_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_scale_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_scale_value_name_id` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`hua_competency_coaching_tip_id`),
  KEY `hua_competency_id_idx` (`hua_competency_id`),
  KEY `hua_scale_value_name_id_idx` (`hua_scale_value_name_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_competency_development_suggestion`
--

DROP TABLE IF EXISTS `hua_competency_development_suggestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_competency_development_suggestion` (
  `hua_competency_development_suggestion_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_competency_development_suggestion_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_competency_development_suggestion_date_created` datetime NOT NULL,
  `hua_competency_development_suggestion_name` varchar(255) NOT NULL,
  `hua_competency_development_suggestion_body` varchar(255) NOT NULL,
  `hua_competency_development_suggestion_creator_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_competency_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_competency_development_suggestion_id`),
  KEY `hua_competency_id_idx` (`hua_competency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_controller_to_page_option`
--

DROP TABLE IF EXISTS `hua_controller_to_page_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_controller_to_page_option` (
  `hua_controller_to_page_option_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_controller_to_page_option_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_controller_to_page_option_date_created` datetime NOT NULL,
  `hua_page_option_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_controller_to_page_option_module` varchar(10) NOT NULL,
  `hua_controller_to_page_option_controller` varchar(75) NOT NULL,
  `hua_controller_to_page_option_action` varchar(100) DEFAULT NULL,
  `hua_controller_to_page_option_order` smallint(5) unsigned NOT NULL DEFAULT '100',
  `hua_controller_to_page_option_classic_url` varchar(255) DEFAULT NULL,
  `hua_feature_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`hua_controller_to_page_option_id`),
  KEY `hua_controller_to_page_option_module` (`hua_controller_to_page_option_module`,`hua_controller_to_page_option_controller`),
  KEY `hua_page_option_id` (`hua_page_option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_controller_to_page_option_value`
--

DROP TABLE IF EXISTS `hua_controller_to_page_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_controller_to_page_option_value` (
  `hua_controller_to_page_option_value_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_controller_to_page_option_value_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_controller_to_page_option_value_date_created` datetime NOT NULL,
  `hua_controller_to_page_option_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_controller_to_page_option_value_value` text,
  `hua_controller_to_page_option_value_order` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_controller_to_page_option_value_id`),
  KEY `hua_controller_to_page_option_id` (`hua_controller_to_page_option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=526 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_cost_center`
--

DROP TABLE IF EXISTS `hua_cost_center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_cost_center` (
  `hua_cost_center_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_cost_center_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_cost_center_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_cost_center_code` char(255) DEFAULT NULL,
  `hua_cost_center_name` char(255) DEFAULT NULL,
  `hua_cost_center_order` int(11) unsigned DEFAULT '0',
  `hua_cost_center_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_cost_center_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_country`
--

DROP TABLE IF EXISTS `hua_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_country` (
  `hua_country_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_country_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_country_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_country_name` char(255) DEFAULT NULL,
  `hua_country_abbreviation` char(255) DEFAULT NULL,
  `hua_country_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `hua_country_locale` varchar(5) NOT NULL DEFAULT 'en_US',
  `hua_country_protected` tinyint(1) unsigned DEFAULT '0',
  `hua_country_deactivated` tinyint(1) unsigned DEFAULT '0',
  `hua_country_order` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_country_logical_value` char(5) DEFAULT NULL,
  `hua_country_code` int(10) DEFAULT NULL,
  `hua_country_did` varchar(30) DEFAULT NULL,
  `hua_country_iso3_abbreviation` char(3) DEFAULT NULL,
  PRIMARY KEY (`hua_country_id`),
  KEY `hua_country_last_modified` (`hua_country_last_modified`),
  KEY `hua_country_abbreviation` (`hua_country_abbreviation`),
  KEY `hua_country_logical_value` (`hua_country_logical_value`)
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_cron`
--

DROP TABLE IF EXISTS `hua_cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_cron` (
  `hua_cron_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_cron_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_cron_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_module_id` int(10) unsigned DEFAULT NULL,
  `hua_cron_module_sequence` int(10) unsigned DEFAULT NULL,
  `hua_cron_script` varchar(255) DEFAULT NULL,
  `hua_cron_hour` tinyint(11) DEFAULT NULL,
  `hua_cron_day` tinyint(11) DEFAULT NULL,
  `hua_cron_date` tinyint(11) DEFAULT NULL,
  `hua_cron_owner` varchar(255) DEFAULT NULL,
  `hua_cron_last_run` datetime DEFAULT NULL,
  `hua_cron_output` mediumtext,
  `hua_cron_active` tinyint(1) NOT NULL DEFAULT '0',
  `hua_cron_notify_owner` tinyint(1) DEFAULT NULL,
  `hua_cron_description` varchar(255) DEFAULT NULL,
  `hua_cron_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `hua_cron_always_run` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_cron_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_crosspost_category`
--

DROP TABLE IF EXISTS `hua_crosspost_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_crosspost_category` (
  `hua_crosspost_category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_crosspost_category_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_crosspost_category_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_crosspost_category` char(255) DEFAULT NULL,
  PRIMARY KEY (`hua_crosspost_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_currency`
--

DROP TABLE IF EXISTS `hua_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_currency` (
  `hua_currency_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_currency_value` varchar(255) DEFAULT '',
  `hua_currency_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_currency_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_currency_int_monetary_symbol` varchar(6) NOT NULL DEFAULT '',
  `hua_currency_rate` float unsigned DEFAULT '1',
  `hua_currency_deactivated` tinyint(1) unsigned DEFAULT '0',
  `hua_currency_default` tinyint(1) unsigned DEFAULT '0',
  `hua_currency_symbol` varchar(30) DEFAULT '&#36',
  `hua_currency_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `hua_currency_order` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`hua_currency_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_custom_navlink`
--

DROP TABLE IF EXISTS `hua_custom_navlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_custom_navlink` (
  `hua_custom_navlink_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_custom_navlink_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_custom_navlink_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_custom_navlink_name` char(255) DEFAULT NULL,
  `hua_custom_navlink_url` char(255) DEFAULT NULL,
  `hua_custom_navlink_order` tinyint(3) unsigned DEFAULT NULL,
  `hua_custom_navlink_type` enum('system','user') NOT NULL DEFAULT 'user',
  `hua_user_id` int(11) unsigned DEFAULT NULL,
  `hua_custom_navlink_system_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_custom_navlink_id`),
  KEY `IDX_hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_custom_report`
--

DROP TABLE IF EXISTS `hua_custom_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_custom_report` (
  `hua_custom_report_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_custom_report_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_custom_report_date_created` datetime NOT NULL,
  `hua_custom_report_display_name` varchar(255) NOT NULL,
  `hua_custom_report_description` varchar(255) NOT NULL,
  `hua_custom_report_creator_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_primary_model` varchar(255) NOT NULL,
  `hua_custom_report_module` varchar(20) NOT NULL DEFAULT 'hua',
  `hua_custom_report_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `hua_custom_report_default_order_column` varchar(255) DEFAULT NULL,
  `hua_custom_report_default_order_direction` char(4) DEFAULT NULL,
  `hua_custom_report_default_report_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_default_overridden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_custom_report_id`),
  KEY `hua_custom_report_creator_id` (`hua_custom_report_creator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_custom_report_chart`
--

DROP TABLE IF EXISTS `hua_custom_report_chart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_custom_report_chart` (
  `hua_custom_report_chart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_custom_report_chart_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_custom_report_chart_date_created` datetime NOT NULL,
  `hua_custom_report_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_chart_type` varchar(255) NOT NULL,
  `hua_custom_report_chart_title` varchar(255) DEFAULT NULL,
  `hua_custom_report_chart_label` varchar(255) DEFAULT NULL,
  `hua_custom_report_chart_url` varchar(255) DEFAULT NULL,
  `hua_custom_report_chart_query_string` varchar(255) DEFAULT NULL,
  `hua_custom_report_chart_3d` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `hua_custom_report_chart_secondary_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_custom_report_chart_id`),
  KEY `hua_custom_report_id` (`hua_custom_report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_custom_report_chart_data_source`
--

DROP TABLE IF EXISTS `hua_custom_report_chart_data_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_custom_report_chart_data_source` (
  `hua_custom_report_chart_data_source_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_custom_report_chart_data_source_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_custom_report_chart_data_source_date_created` datetime NOT NULL,
  `hua_custom_report_chart_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_chart_data_source_column` varchar(255) NOT NULL,
  `hua_custom_report_chart_data_source_extra_field` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_custom_report_chart_data_source_id`),
  KEY `hua_custom_report_chart_id` (`hua_custom_report_chart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_custom_report_column`
--

DROP TABLE IF EXISTS `hua_custom_report_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_custom_report_column` (
  `hua_custom_report_column_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_custom_report_column_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_custom_report_column_date_created` datetime NOT NULL,
  `hua_custom_report_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_column_title` varchar(255) NOT NULL,
  `hua_custom_report_column_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_column_sortable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `hua_custom_report_column_sort_parameter` varchar(255) DEFAULT NULL,
  `hua_custom_report_column_url` varchar(255) DEFAULT NULL,
  `hua_custom_report_column_field_separator` varchar(255) DEFAULT NULL,
  `hua_custom_report_column_mapping` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_custom_report_column_id`),
  KEY `hua_custom_report_id` (`hua_custom_report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_custom_report_column_field`
--

DROP TABLE IF EXISTS `hua_custom_report_column_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_custom_report_column_field` (
  `hua_custom_report_column_field_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_custom_report_column_field_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_custom_report_column_field_date_created` datetime NOT NULL,
  `hua_custom_report_column_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_column_field_name` varchar(255) NOT NULL,
  `hua_custom_report_column_field_select` varchar(255) DEFAULT NULL,
  `hua_custom_report_column_field_group_by` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_column_field_count` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_column_field_average` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_column_field_sum` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_column_field_hide` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_column_field_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_column_field_prefix` varchar(255) DEFAULT NULL,
  `hua_custom_report_column_field_suffix` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_custom_report_column_field_id`),
  KEY `hua_custom_report_column_id` (`hua_custom_report_column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_custom_report_column_mapping`
--

DROP TABLE IF EXISTS `hua_custom_report_column_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_custom_report_column_mapping` (
  `hua_custom_report_column_mapping_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_custom_report_column_mapping_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_custom_report_column_mapping_date_created` datetime NOT NULL,
  `hua_custom_report_column_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_column_mapping_key` varchar(255) NOT NULL,
  `hua_custom_report_column_mapping_value` text NOT NULL,
  PRIMARY KEY (`hua_custom_report_column_mapping_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_custom_report_data_source`
--

DROP TABLE IF EXISTS `hua_custom_report_data_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_custom_report_data_source` (
  `hua_custom_report_data_source_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_custom_report_data_source_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_custom_report_data_source_date_created` datetime NOT NULL,
  `hua_custom_report_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_data_source_name` varchar(255) NOT NULL,
  `hua_custom_report_data_source_scopes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_custom_report_data_source_id`),
  KEY `hua_custom_report_id` (`hua_custom_report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_custom_report_filter`
--

DROP TABLE IF EXISTS `hua_custom_report_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_custom_report_filter` (
  `hua_custom_report_filter_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_custom_report_filter_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_custom_report_filter_date_created` datetime NOT NULL,
  `hua_custom_report_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_filter_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_filter_target_field` varchar(255) NOT NULL,
  `hua_custom_report_filter_field_separator` varchar(255) DEFAULT NULL,
  `hua_custom_report_filter_type` varchar(255) NOT NULL,
  `hua_custom_report_filter_label` varchar(255) NOT NULL,
  `hua_custom_report_filter_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_filter_url_alias` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_custom_report_filter_id`),
  KEY `hua_custom_report_id` (`hua_custom_report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_custom_report_filter_display_field`
--

DROP TABLE IF EXISTS `hua_custom_report_filter_display_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_custom_report_filter_display_field` (
  `hua_custom_report_filter_display_field_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_custom_report_filter_display_field_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_custom_report_filter_display_field_date_created` datetime NOT NULL,
  `hua_custom_report_filter_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_filter_display_field_name` varchar(255) NOT NULL,
  `hua_custom_report_filter_display_field_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_custom_report_filter_display_field_id`),
  KEY `hua_custom_report_filter_id` (`hua_custom_report_filter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_custom_report_filter_option`
--

DROP TABLE IF EXISTS `hua_custom_report_filter_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_custom_report_filter_option` (
  `hua_custom_report_filter_option_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_custom_report_filter_option_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_custom_report_filter_option_date_created` datetime NOT NULL,
  `hua_custom_report_filter_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_filter_option_name` varchar(255) NOT NULL,
  `hua_custom_report_filter_option_value` text NOT NULL,
  PRIMARY KEY (`hua_custom_report_filter_option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_custom_report_shared_group`
--

DROP TABLE IF EXISTS `hua_custom_report_shared_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_custom_report_shared_group` (
  `hua_custom_report_shared_group_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_custom_report_shared_group_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_custom_report_shared_group_date_created` datetime NOT NULL,
  `hua_custom_report_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_group_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_shared_group_view` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `hua_custom_report_shared_group_edit_report` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_shared_group_edit_filters` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_shared_group_edit_charts` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_shared_group_edit_columns` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_shared_group_edit_data_sources` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_shared_group_export` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `hua_custom_report_shared_group_admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_custom_report_shared_group_id`),
  KEY `hua_custom_report_id` (`hua_custom_report_id`,`hua_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_custom_report_shared_user`
--

DROP TABLE IF EXISTS `hua_custom_report_shared_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_custom_report_shared_user` (
  `hua_custom_report_shared_user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_custom_report_shared_user_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_custom_report_shared_user_date_created` datetime NOT NULL,
  `hua_custom_report_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_custom_report_shared_user_view` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `hua_custom_report_shared_user_edit_report` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `hua_custom_report_shared_user_edit_filters` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `hua_custom_report_shared_user_edit_charts` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `hua_custom_report_shared_user_edit_columns` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `hua_custom_report_shared_user_edit_data_sources` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `hua_custom_report_shared_user_export` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `hua_custom_report_shared_user_admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_custom_report_shared_user_id`),
  KEY `hua_custom_report_id` (`hua_custom_report_id`,`hua_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_custom_report_to_navitem`
--

DROP TABLE IF EXISTS `hua_custom_report_to_navitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_custom_report_to_navitem` (
  `hua_custom_report_to_navitem_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_custom_report_to_navitem_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_custom_report_to_navitem_date_created` datetime NOT NULL,
  `hua_custom_report_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_navitem_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_custom_report_to_navitem_id`),
  KEY `hua_custom_report_id` (`hua_custom_report_id`,`hua_navitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_dashboard`
--

DROP TABLE IF EXISTS `hua_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_dashboard` (
  `hua_dashboard_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_dashboard_widget_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_dashboard_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_dashboard_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_dashboard_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `hua_dashboard_start_x` smallint(5) unsigned DEFAULT '0',
  `hua_dashboard_start_y` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`hua_dashboard_user_id`,`hua_dashboard_widget_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_date_format`
--

DROP TABLE IF EXISTS `hua_date_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_date_format` (
  `hua_date_format_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_date_format_value` char(255) NOT NULL,
  `hua_date_format_pattern` char(255) NOT NULL,
  `hua_date_format_order` int(11) DEFAULT '0',
  `hua_date_format_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_date_format_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`hua_date_format_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_definition`
--

DROP TABLE IF EXISTS `hua_definition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_definition` (
  `hua_definition_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_definition_date_created` datetime NOT NULL,
  `hua_definition_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_definition_name` varchar(255) NOT NULL,
  `hua_definition_description` varchar(255) NOT NULL,
  `hua_definition_table` varchar(255) NOT NULL,
  `hua_definition_variable` varchar(255) NOT NULL,
  `hua_definition_type` enum('text','numeric','range') NOT NULL,
  `hua_definition_hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_definition_default` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_definition_alphabetic_order` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_definition_with_parenting` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_definition_id`),
  UNIQUE KEY `hua_definition_variable` (`hua_definition_variable`),
  UNIQUE KEY `hua_definition_table` (`hua_definition_table`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_development_plan`
--

DROP TABLE IF EXISTS `hua_development_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_development_plan` (
  `hua_development_plan_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_development_plan_date_created` datetime NOT NULL,
  `hua_development_plan_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_development_plan_name` char(255) NOT NULL,
  `hua_development_plan_type` enum('growth','bridge') DEFAULT NULL,
  `hua_development_plan_user_id` int(10) unsigned NOT NULL,
  `hua_development_plan_creator_user_id` int(10) unsigned NOT NULL,
  `hua_development_plan_date_begun` datetime NOT NULL,
  `hua_development_plan_goal_completion_date` datetime NOT NULL,
  `hua_development_plan_completion_percentage` float(5,2) NOT NULL,
  `hua_development_plan_completed` datetime DEFAULT NULL,
  `hua_development_plan_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `hua_development_plan_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`hua_development_plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_development_plan_item`
--

DROP TABLE IF EXISTS `hua_development_plan_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_development_plan_item` (
  `hua_development_plan_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_development_plan_item_date_created` datetime NOT NULL,
  `hua_development_plan_item_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_development_plan_id` int(10) unsigned NOT NULL,
  `hua_development_plan_item_name` char(255) NOT NULL,
  `hua_development_plan_item_goal_completion_date` datetime NOT NULL,
  `cdsp_career_path_id` int(10) unsigned NOT NULL,
  `pas_appraisal_id` int(10) unsigned NOT NULL,
  `hua_development_plan_item_activity` text NOT NULL,
  `hua_development_plan_item_completion_percentage` float(5,2) unsigned NOT NULL,
  `hua_development_plan_item_association_id` int(10) unsigned NOT NULL,
  `hua_development_plan_item_association_type` enum('appraisal','career_path') NOT NULL,
  `hua_development_plan_item_date_completed` datetime NOT NULL,
  `hua_development_plan_item_completed` tinyint(1) NOT NULL DEFAULT '0',
  `hua_development_plan_item_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `hua_development_plan_item_resources` text NOT NULL,
  `hua_development_plan_item_creator_user_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`hua_development_plan_item_id`),
  KEY `cdsp_career_path_id` (`cdsp_career_path_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_development_plan_item_competency`
--

DROP TABLE IF EXISTS `hua_development_plan_item_competency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_development_plan_item_competency` (
  `hua_development_plan_item_competency_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_development_plan_item_competency_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_development_plan_item_competency_date_created` datetime NOT NULL,
  `hua_development_plan_item_id` int(11) NOT NULL DEFAULT '0',
  `hua_competency_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_development_plan_item_competency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_development_plan_item_course`
--

DROP TABLE IF EXISTS `hua_development_plan_item_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_development_plan_item_course` (
  `hua_development_plan_item_course_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_development_plan_item_course_date_created` datetime NOT NULL,
  `hua_development_plan_item_course_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_development_plan_item_id` int(10) unsigned NOT NULL,
  `lms_course_id` int(10) unsigned NOT NULL,
  `hua_development_plan_item_course_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_development_plan_item_course_id`),
  KEY `hua_development_plan_item_id` (`hua_development_plan_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_development_plan_item_development_suggestion`
--

DROP TABLE IF EXISTS `hua_development_plan_item_development_suggestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_development_plan_item_development_suggestion` (
  `hua_development_plan_item_development_suggestion_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_development_plan_item_development_suggestion_date_created` datetime NOT NULL,
  `hua_development_plan_item_development_suggestion_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_development_plan_item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_competency_development_suggestion_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_development_plan_item_development_suggestion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_development_plan_item_library_resource`
--

DROP TABLE IF EXISTS `hua_development_plan_item_library_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_development_plan_item_library_resource` (
  `hua_development_plan_item_library_resource_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_development_plan_item_library_resource_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_development_plan_item_library_resource_date_created` datetime NOT NULL,
  `hua_development_plan_item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_library_resource_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_development_plan_item_library_resource_id`),
  KEY `hua_development_plan_item_id` (`hua_development_plan_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_development_plan_item_skill`
--

DROP TABLE IF EXISTS `hua_development_plan_item_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_development_plan_item_skill` (
  `hua_development_plan_item_skill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_development_plan_item_skill_date_created` datetime NOT NULL,
  `hua_development_plan_item_skill_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_development_plan_item_id` int(10) unsigned DEFAULT NULL,
  `hua_skill_id` int(10) unsigned NOT NULL,
  `hua_development_plan_item_skill_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_development_plan_item_skill_id`),
  KEY `hua_development_plan_item_id` (`hua_development_plan_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_development_plan_item_suggested_mentor`
--

DROP TABLE IF EXISTS `hua_development_plan_item_suggested_mentor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_development_plan_item_suggested_mentor` (
  `hua_development_plan_item_suggested_mentor_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_development_plan_item_suggested_mentor_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_development_plan_item_suggested_mentor_date_created` datetime NOT NULL,
  `hua_development_plan_item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_user_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_development_plan_item_suggested_mentor_id`),
  KEY `hua_development_plan_item_id` (`hua_development_plan_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_development_plan_target_association`
--

DROP TABLE IF EXISTS `hua_development_plan_target_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_development_plan_target_association` (
  `hua_development_plan_target_association_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_development_plan_target_association_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_development_plan_target_association_date_created` datetime NOT NULL,
  `hua_development_plan_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_development_plan_target_association_model` varchar(255) NOT NULL,
  `hua_development_plan_target_association_model_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_development_plan_target_association_id`),
  KEY `hua_development_plan_id` (`hua_development_plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_diversity_category`
--

DROP TABLE IF EXISTS `hua_diversity_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_diversity_category` (
  `hua_diversity_category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_diversity_category_last_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `hua_diversity_category_date_created` datetime NOT NULL,
  `hua_diversity_category_logical_name` varchar(255) NOT NULL,
  `hua_diversity_category_name` varchar(255) NOT NULL,
  `hua_country_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_diversity_category_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `hua_diversity_category_has_visual` tinyint(1) NOT NULL DEFAULT '1',
  `hua_diversity_category_collect_on_apply` enum('hidden','optional','required') NOT NULL DEFAULT 'hidden',
  `hua_diversity_category_collect_on_onboard` enum('hidden','optional','required') NOT NULL DEFAULT 'hidden',
  `hua_diversity_category_field_type` enum('select','multi_select') NOT NULL DEFAULT 'select',
  `hua_diversity_category_allows_additional_info` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_diversity_category_collect_on_create_edit` enum('hidden','optional','required') NOT NULL DEFAULT 'hidden',
  `hua_diversity_category_value_source` enum('value_listing','countries') NOT NULL DEFAULT 'value_listing',
  `hua_diversity_category_expired` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`hua_diversity_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_diversity_category_value`
--

DROP TABLE IF EXISTS `hua_diversity_category_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_diversity_category_value` (
  `hua_diversity_category_value_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_diversity_category_value_last_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `hua_diversity_category_value_date_created` datetime NOT NULL,
  `hua_diversity_category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_diversity_category_value` varchar(255) NOT NULL,
  `hua_diversity_category_value_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `hua_diversity_category_value_order` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_diversity_category_value_is_hispanic_race` tinyint(1) DEFAULT '0',
  `hua_diversity_category_value_apply_only` tinyint(1) DEFAULT '0',
  `hua_diversity_category_value_secondary` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_diversity_category_value_id`),
  KEY `hua_country_diversity_category_id` (`hua_diversity_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_document`
--

DROP TABLE IF EXISTS `hua_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_document` (
  `hua_document_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_document_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_document_date_created` datetime DEFAULT NULL,
  `hua_document_name` char(255) DEFAULT NULL,
  `hua_file_id` int(11) unsigned DEFAULT NULL,
  `hua_document_system_flag` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`hua_document_id`),
  KEY `hua_file_id` (`hua_file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_document_group`
--

DROP TABLE IF EXISTS `hua_document_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_document_group` (
  `hua_document_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_document_group_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_document_group_date_created` datetime DEFAULT NULL,
  `hua_document_id` int(11) DEFAULT NULL,
  `hua_group_id` int(11) DEFAULT NULL,
  `hua_module_id` int(11) DEFAULT NULL,
  `hua_document_group_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_document_group_id`),
  KEY `hua_document_id` (`hua_document_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_dynamic_form`
--

DROP TABLE IF EXISTS `hua_dynamic_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_dynamic_form` (
  `hua_dynamic_form_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_form_id` int(10) unsigned NOT NULL,
  `hua_dynamic_form_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_dynamic_form_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_dynamic_form_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_dynamic_form_id`),
  KEY `hua_form_id` (`hua_form_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4430 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_education`
--

DROP TABLE IF EXISTS `hua_education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_education` (
  `hua_education_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_education_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_education_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_education_value` char(255) DEFAULT NULL,
  `hua_education_sort` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`hua_education_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_email_verification`
--

DROP TABLE IF EXISTS `hua_email_verification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_email_verification` (
  `hua_email_verification_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_email_verification_date_created` datetime NOT NULL,
  `hua_email_verification_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_email_verification_password` varchar(255) DEFAULT NULL,
  `hua_email_verification_first_sent` datetime NOT NULL,
  `hua_email_verification_last_sent` datetime NOT NULL,
  PRIMARY KEY (`hua_email_verification_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `ats_requisition_id` (`ats_requisition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_email_verification_ip_address`
--

DROP TABLE IF EXISTS `hua_email_verification_ip_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_email_verification_ip_address` (
  `hua_email_verification_ip_address_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_email_verification_ip_address_date_created` datetime NOT NULL,
  `hua_email_verification_ip_address_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_email_verification_ip_address` varchar(255) NOT NULL,
  `hua_email_verification_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_email_verification_ip_address_id`),
  KEY `hua_email_verification_id` (`hua_email_verification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_email_verification_key`
--

DROP TABLE IF EXISTS `hua_email_verification_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_email_verification_key` (
  `hua_email_verification_key_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_email_verification_key_date_created` datetime NOT NULL,
  `hua_email_verification_key_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_email_verification_key` varchar(255) NOT NULL,
  `hua_email_verification_key_valid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_email_verification_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_email_verification_key_id`),
  KEY `hua_email_verification_id` (`hua_email_verification_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_employee`
--

DROP TABLE IF EXISTS `hua_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_employee` (
  `hua_employee_id` int(11) unsigned NOT NULL,
  `hua_employee_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_employee_date_created` datetime NOT NULL,
  `hua_employee_current` tinyint(1) NOT NULL DEFAULT '0',
  `epm_recent_appraisal_id` int(11) NOT NULL DEFAULT '0',
  `epm_working_appraisal_id` int(11) NOT NULL DEFAULT '0',
  `epm_current_performance_score` decimal(10,0) DEFAULT NULL,
  `cdsp_flight_risk_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_employee_i9`
--

DROP TABLE IF EXISTS `hua_employee_i9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_employee_i9` (
  `hua_employee_i9_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_employee_id` int(11) unsigned NOT NULL,
  `hua_employee_i9_last_modified` timestamp NULL DEFAULT NULL,
  `hua_employee_i9_date_created` datetime DEFAULT NULL,
  `hua_employee_i9_first_name` varchar(255) DEFAULT NULL,
  `hua_employee_i9_middle_name` varchar(255) DEFAULT NULL,
  `hua_employee_i9_last_name` varchar(255) DEFAULT NULL,
  `hua_employee_i9_maiden_name` varchar(255) DEFAULT NULL,
  `hua_employee_i9_address` varchar(255) DEFAULT NULL,
  `hua_employee_i9_apt_no` varchar(20) DEFAULT NULL,
  `hua_employee_i9_city` varchar(255) DEFAULT NULL,
  `hua_state_id` int(10) DEFAULT NULL,
  `hua_employee_i9_zipcode` varchar(20) DEFAULT NULL,
  `hua_employee_i9_dob` date DEFAULT NULL,
  `hua_employee_i9_able_to_work` varchar(255) DEFAULT NULL,
  `hua_employee_i9_lawful_resident_number` varchar(255) DEFAULT NULL,
  `hua_employee_i9_auth_date` date DEFAULT NULL,
  `hua_employee_i9_alien_auth_number` varchar(255) DEFAULT NULL,
  `hua_employee_i9_document_type_a` varchar(10) DEFAULT NULL,
  `hua_employee_i9_issuing_authority_a` varchar(255) DEFAULT NULL,
  `hua_employee_i9_document_nb1_a` varchar(255) DEFAULT NULL,
  `hua_employee_i9_expiration_date1_a` date DEFAULT NULL,
  `hua_employee_i9_document_nb2_a` varchar(255) DEFAULT NULL,
  `hua_employee_i9_expiration_date2_a` date DEFAULT NULL,
  `hua_employee_i9_document_type_b` varchar(10) DEFAULT NULL,
  `hua_employee_i9_issuing_authority_b` varchar(255) DEFAULT NULL,
  `hua_employee_i9_document_nb1_b` varchar(255) DEFAULT NULL,
  `hua_employee_i9_expiration_date_b` date DEFAULT NULL,
  `hua_employee_i9_document_type_c` varchar(10) DEFAULT NULL,
  `hua_employee_i9_issuing_authority_c` varchar(255) DEFAULT NULL,
  `hua_employee_i9_document_nb1_c` varchar(255) DEFAULT NULL,
  `hua_employee_i9_expiration_date_c` date DEFAULT NULL,
  `hua_employee_i9_employement_date` date DEFAULT NULL,
  `hua_employee_i9_employer_full_name` varchar(255) DEFAULT NULL,
  `hua_employee_i9_employer_title` varchar(255) DEFAULT NULL,
  `hua_employee_i9_employer_organisation` varchar(255) DEFAULT NULL,
  `hua_employee_i9_rehire_new_name` varchar(255) DEFAULT NULL,
  `hua_employee_i9_rehire_date_of_rehire` date DEFAULT NULL,
  `hua_employee_i9_rehire_document_type` varchar(10) DEFAULT NULL,
  `hua_employee_i9_rehire_document_expiration_date` date DEFAULT NULL,
  `hua_employee_i9_rehire_document_nb` varchar(255) DEFAULT NULL,
  `hua_employee_i9_section_1_date_completed` datetime DEFAULT NULL,
  `hua_employee_i9_section_1_signature` varchar(255) DEFAULT NULL,
  `hua_employee_i9_section_1_signed_by` int(11) unsigned DEFAULT '0',
  `hua_employee_i9_section_2_date_completed` datetime DEFAULT NULL,
  `hua_employee_i9_section_2_signature` varchar(255) DEFAULT NULL,
  `hua_employee_i9_section_3_date_completed` datetime DEFAULT NULL,
  `hua_employee_i9_section_3_signature` varchar(255) DEFAULT NULL,
  `hua_employee_i9_email` varchar(255) DEFAULT NULL,
  `hua_employee_i9_phone_number` char(30) DEFAULT NULL,
  `hua_employee_i9_alien_admission_number` varchar(255) DEFAULT NULL,
  `hua_employee_i9_alien_passport_number` varchar(255) DEFAULT NULL,
  `hua_employee_i9_alien_coi` int(10) DEFAULT NULL,
  `hua_employee_i9_document_title1_a` varchar(255) DEFAULT NULL,
  `hua_employee_i9_document_title2_a` varchar(255) DEFAULT NULL,
  `hua_employee_i9_document_title3_a` varchar(255) DEFAULT NULL,
  `hua_employee_i9_issuing_authority2_a` varchar(255) DEFAULT NULL,
  `hua_employee_i9_issuing_authority3_a` varchar(255) DEFAULT NULL,
  `hua_employee_i9_document_nb3_a` varchar(255) DEFAULT NULL,
  `hua_employee_i9_expiration_date3_a` date DEFAULT NULL,
  `hua_employee_i9_section_2_signed_by` int(11) DEFAULT NULL,
  `hua_employee_i9_rehire_firstname` varchar(255) DEFAULT NULL,
  `hua_employee_i9_rehire_lastname` varchar(255) DEFAULT NULL,
  `hua_employee_i9_rehire_middle_name` varchar(255) DEFAULT NULL,
  `hua_employee_i9_section_3_signed_by` int(11) DEFAULT NULL,
  `hua_employee_i9_verify_due_date` date DEFAULT NULL,
  `hua_employee_i9_section_1_preparer_translator_last_name` varchar(255) DEFAULT NULL,
  `hua_employee_i9_section_1_preparer_translator_first_name` varchar(255) DEFAULT NULL,
  `hua_employee_i9_section_1_preparer_translator_address` varchar(255) DEFAULT NULL,
  `hua_employee_i9_section_1_preparer_translator_city` varchar(255) DEFAULT NULL,
  `hua_employee_i9_section_1_preparer_translator_state` int(10) DEFAULT NULL,
  `hua_employee_i9_section_1_preparer_translator_zip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`hua_employee_i9_id`),
  KEY `hua_employee_id_idx` (`hua_employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_employee_matrix_manager`
--

DROP TABLE IF EXISTS `hua_employee_matrix_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_employee_matrix_manager` (
  `hua_employee_matrix_manager_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_employee_matrix_manager_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_employee_matrix_manager_date_created` datetime NOT NULL,
  `hua_user_id` int(11) NOT NULL DEFAULT '0',
  `hua_matrix_manager_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_employee_matrix_manager_id`),
  KEY `hua_user_id_idx` (`hua_user_id`),
  KEY `hua_matrix_manager_id_idx` (`hua_matrix_manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_employee_to_union`
--

DROP TABLE IF EXISTS `hua_employee_to_union`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_employee_to_union` (
  `hua_employee_to_union_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_union_id` int(11) unsigned NOT NULL,
  `hua_employee_id` int(11) unsigned NOT NULL,
  `hua_employee_to_union_seniority_date` datetime DEFAULT NULL,
  `hua_employee_to_union_seniority_hrs` int(11) DEFAULT NULL,
  `hua_employee_to_union_employee_class` varchar(50) DEFAULT NULL,
  `hua_employee_to_union_local` varchar(10) DEFAULT NULL,
  `hua_employee_to_union_seniority_ranking` smallint(5) DEFAULT NULL,
  `hua_employee_to_union_seniority_ranking_1` smallint(5) DEFAULT NULL,
  `hua_employee_to_union_seniority_ranking_2` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`hua_employee_to_union_id`),
  KEY `hua_union_id` (`hua_union_id`),
  KEY `hua_employee_id` (`hua_employee_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_equipment`
--

DROP TABLE IF EXISTS `hua_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_equipment` (
  `hua_equipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_equipment_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_equipment_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_equipment_type_id` int(11) unsigned DEFAULT NULL,
  `hua_equipment_name` char(255) DEFAULT NULL,
  `hua_equipment_serial_number` char(255) DEFAULT NULL,
  `hua_file_id` int(11) unsigned DEFAULT NULL,
  `hua_room_id` int(11) unsigned DEFAULT NULL,
  `hua_building_id` int(11) unsigned DEFAULT NULL,
  `hua_equipment_contact` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`hua_equipment_id`),
  KEY `hua_building_id` (`hua_building_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_equipment_reservation`
--

DROP TABLE IF EXISTS `hua_equipment_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_equipment_reservation` (
  `hua_equipment_reservation_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_equipment_reservation_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_equipment_reservation_date_created` datetime DEFAULT NULL,
  `hua_equipment_id` int(11) unsigned DEFAULT '0',
  `hua_room_id` int(11) NOT NULL DEFAULT '0',
  `lms_class_time_id` int(11) NOT NULL DEFAULT '0',
  `hua_equipment_reservation_user_id` int(11) NOT NULL DEFAULT '0',
  `hua_equipment_reservation_start_time` datetime DEFAULT NULL,
  `hua_equipment_reservation_end_time` datetime DEFAULT NULL,
  `hua_equipment_reservation_name` char(255) DEFAULT NULL,
  `hua_equipment_reservation_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_equipment_reservation_id`),
  KEY `reservation_id` (`hua_equipment_id`),
  KEY `hua_room_id` (`hua_room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_equipment_type`
--

DROP TABLE IF EXISTS `hua_equipment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_equipment_type` (
  `hua_equipment_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_equipment_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_equipment_type_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_equipment_type_name` char(255) DEFAULT NULL,
  `hua_equipment_type_sort` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`hua_equipment_type_id`),
  KEY `hua_equipment_type_name` (`hua_equipment_type_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_faq_category`
--

DROP TABLE IF EXISTS `hua_faq_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_faq_category` (
  `hua_faq_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_faq_category_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_faq_category_date_created` datetime DEFAULT NULL,
  `hua_faq_category_name` char(255) DEFAULT NULL,
  `hua_module_id` int(11) DEFAULT NULL,
  `hua_faq_category_sort` int(11) DEFAULT NULL,
  `hua_faq_category_hidden` tinyint(1) DEFAULT '0',
  `hua_faq_category_module_group_id` int(11) NOT NULL DEFAULT '0',
  `hua_faq_category_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_faq_category_id`),
  KEY `hua_module_id` (`hua_module_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_faq_question`
--

DROP TABLE IF EXISTS `hua_faq_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_faq_question` (
  `hua_faq_question_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_faq_question_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_faq_question_date_created` datetime DEFAULT NULL,
  `hua_faq_category_id` int(11) DEFAULT NULL,
  `hua_faq_question` char(255) DEFAULT NULL,
  `hua_faq_question_owner_id` int(11) DEFAULT NULL,
  `hua_faq_question_answer` char(255) DEFAULT NULL,
  `hua_faq_question_helpful` int(11) DEFAULT '0',
  `hua_faq_question_not_helpful` int(11) DEFAULT '0',
  `hua_faq_question_hidden` tinyint(1) DEFAULT '0',
  `hua_faq_question_order` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_faq_question_active` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_faq_question_id`),
  KEY `hua_faq_category_id` (`hua_faq_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_faq_vote`
--

DROP TABLE IF EXISTS `hua_faq_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_faq_vote` (
  `hua_faq_vote_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_faq_vote_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_faq_vote_date_created` datetime DEFAULT NULL,
  `hua_faq_question_id` int(11) DEFAULT NULL,
  `hua_user_id` int(11) DEFAULT NULL,
  `hua_faq_vote` char(255) DEFAULT NULL,
  `hua_faq_answer_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_faq_vote_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `hua_faq_question_id` (`hua_faq_question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_feature`
--

DROP TABLE IF EXISTS `hua_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_feature` (
  `hua_feature_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_feature_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_feature_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_feature_name` char(255) DEFAULT NULL,
  `hua_feature_desc` char(255) DEFAULT NULL,
  `hua_feature_parent_id` int(11) unsigned DEFAULT NULL,
  `hua_feature_module_id` int(11) unsigned DEFAULT NULL,
  `hua_feature_enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_feature_global` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_feature_hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_administration_category_id` int(11) DEFAULT NULL,
  `hua_feature_system_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_feature_configurator_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_feature_id`),
  UNIQUE KEY `hua_feature_name` (`hua_feature_name`),
  KEY `hua_feature_parent_id` (`hua_feature_parent_id`),
  KEY `hua_administration_category_id` (`hua_administration_category_id`),
  KEY `hua_feature_global` (`hua_feature_global`,`hua_feature_enabled`)
) ENGINE=InnoDB AUTO_INCREMENT=1204 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_feature_definition`
--

DROP TABLE IF EXISTS `hua_feature_definition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_feature_definition` (
  `hua_feature_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_definition_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_feature_definition_date_created` datetime NOT NULL,
  `hua_feature_definition_last_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`hua_feature_id`,`hua_definition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_feature_setting`
--

DROP TABLE IF EXISTS `hua_feature_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_feature_setting` (
  `hua_feature_setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_feature_setting_date_created` datetime DEFAULT NULL,
  `hua_feature_setting_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_feature_id` int(11) DEFAULT NULL,
  `hua_setting_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`hua_feature_setting_id`),
  KEY `hua_feature_setting` (`hua_feature_id`,`hua_setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=373 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_feature_to_group`
--

DROP TABLE IF EXISTS `hua_feature_to_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_feature_to_group` (
  `hua_feature_to_group_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_feature_to_group_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_feature_to_group_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_feature_id` int(11) unsigned DEFAULT NULL,
  `hua_group_id` int(11) unsigned DEFAULT NULL,
  `hua_feature_to_group_system_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_feature_to_group_id`),
  KEY `hua_feature_id` (`hua_feature_id`),
  KEY `hua_feature_group_idx` (`hua_feature_id`,`hua_group_id`),
  KEY `hua_group_id` (`hua_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4959 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_feature_to_navitem`
--

DROP TABLE IF EXISTS `hua_feature_to_navitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_feature_to_navitem` (
  `hua_feature_to_navitem_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_feature_to_navitem_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_feature_to_navitem_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_feature_id` int(11) unsigned DEFAULT NULL,
  `hua_navitem_id` int(11) unsigned DEFAULT NULL,
  `hua_feature_to_navitem_system_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_feature_to_navitem_id`),
  UNIQUE KEY `hua_feature_hua_navitem_id` (`hua_feature_id`,`hua_navitem_id`),
  KEY `IDX_hua_feature_id` (`hua_feature_id`),
  KEY `IDX_hua_navitem_id` (`hua_navitem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=935 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_feature_to_page_option`
--

DROP TABLE IF EXISTS `hua_feature_to_page_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_feature_to_page_option` (
  `hua_feature_to_page_option_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_feature_to_page_option_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_feature_to_page_option_date_created` datetime NOT NULL,
  `hua_feature_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_page_option_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_feature_to_page_option_required` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`hua_feature_to_page_option_id`),
  KEY `hua_page_option_id` (`hua_page_option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_feature_to_scriptpage`
--

DROP TABLE IF EXISTS `hua_feature_to_scriptpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_feature_to_scriptpage` (
  `hua_feature_to_scriptpage_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_feature_to_scriptpage_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_feature_to_scriptpage_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_feature_id` int(11) unsigned DEFAULT NULL,
  `hua_scriptpage_id` int(11) unsigned DEFAULT NULL,
  `hua_feature_to_scriptpage_system_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_feature_to_scriptpage_id`),
  UNIQUE KEY `hua_feature_hua_scriptpage_id` (`hua_feature_id`,`hua_scriptpage_id`),
  KEY `IDX_hua_feature_id` (`hua_feature_id`),
  KEY `IDX_hua_scriptpage_id` (`hua_scriptpage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=917 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_field`
--

DROP TABLE IF EXISTS `hua_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_field` (
  `hua_field_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_field_name` varchar(255) DEFAULT NULL,
  `hua_field_label` varchar(255) DEFAULT NULL,
  `hua_field_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_field_required` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `hua_field_multi_select` tinyint(1) unsigned DEFAULT '0',
  `hua_field_help_text` varchar(255) NOT NULL,
  `hua_field_type` varchar(255) DEFAULT NULL,
  `hua_field_rows` int(10) unsigned DEFAULT '1',
  `hua_field_cols` int(10) unsigned DEFAULT '1',
  `hua_field_size` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_field_maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_field_system_field` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_field_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_field_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_field_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `hua_form_type_id` int(10) unsigned NOT NULL,
  `hua_field_protected` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_field_restricted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_field_is_repeatable` tinyint(2) NOT NULL DEFAULT '0',
  `hua_field_is_translatable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_field_id`),
  KEY `hua_form_type_id` (`hua_form_type_id`),
  KEY `hua_field_name` (`hua_field_name`),
  KEY `hua_field_type` (`hua_field_type`)
) ENGINE=InnoDB AUTO_INCREMENT=1745 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_field_access`
--

DROP TABLE IF EXISTS `hua_field_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_field_access` (
  `hua_field_access_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_field_access_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_field_access_date_created` datetime DEFAULT NULL,
  `hua_field_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_group_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_field_permission` enum('VIEW_ONLY','HIDE') DEFAULT NULL,
  PRIMARY KEY (`hua_field_access_id`),
  KEY `hua_field_id_idx` (`hua_field_id`),
  KEY `hua_group_id_idx` (`hua_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_field_block`
--

DROP TABLE IF EXISTS `hua_field_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_field_block` (
  `hua_field_block_id` int(10) NOT NULL AUTO_INCREMENT,
  `hua_form_type_id` int(10) NOT NULL DEFAULT '0',
  `hua_field_block_last_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `hua_field_block_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_field_block_name` varchar(255) DEFAULT NULL,
  `hua_field_block_label` varchar(255) DEFAULT NULL,
  `hua_field_block_help` varchar(255) DEFAULT NULL,
  `hua_field_block_active` tinyint(2) NOT NULL DEFAULT '1',
  `hua_field_block_system_block` tinyint(2) NOT NULL DEFAULT '0',
  `hua_field_block_is_repeatable` tinyint(2) NOT NULL DEFAULT '0',
  `hua_field_block_type` enum('work_history','education','address','reference') DEFAULT NULL,
  PRIMARY KEY (`hua_field_block_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_field_block_field`
--

DROP TABLE IF EXISTS `hua_field_block_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_field_block_field` (
  `hua_field_block_field_id` int(10) NOT NULL AUTO_INCREMENT,
  `hua_field_block_field_last_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `hua_field_block_field_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_field_block_id` int(10) NOT NULL,
  `hua_field_id` int(10) NOT NULL,
  `hua_field_block_field_x_coordinate` int(10) NOT NULL DEFAULT '0',
  `hua_field_block_field_y_coordinate` int(10) NOT NULL DEFAULT '0',
  `hua_field_block_field_sort_order` int(10) NOT NULL DEFAULT '0',
  `hua_field_block_field_active` tinyint(1) NOT NULL DEFAULT '0',
  `hua_field_block_field_required` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_field_block_field_id`),
  KEY `hua_field_block_id` (`hua_field_block_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_field_merge_code`
--

DROP TABLE IF EXISTS `hua_field_merge_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_field_merge_code` (
  `hua_field_merge_code_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_field_merge_code_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_field_merge_code_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_field_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_field_merge_code` varchar(255) NOT NULL DEFAULT '0',
  `hua_field_merge_code_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_field_merge_code_id`)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_field_option`
--

DROP TABLE IF EXISTS `hua_field_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_field_option` (
  `hua_field_option_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_field_id` int(10) unsigned DEFAULT '0',
  `hua_field_option_name` varchar(255) DEFAULT NULL,
  `hua_field_option_value` varchar(255) DEFAULT NULL,
  `hua_field_option_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_field_option_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_field_option_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_field_option_id`),
  KEY `hua_field_id` (`hua_field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=959 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_file`
--

DROP TABLE IF EXISTS `hua_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_file` (
  `hua_file_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_file_name` varchar(255) DEFAULT NULL,
  `hua_file_mimetype` char(80) DEFAULT NULL,
  `hua_file_module` char(10) DEFAULT NULL,
  `hua_file_description` char(255) DEFAULT NULL,
  `hua_file_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_file_date_created` datetime DEFAULT NULL,
  `hua_user_id` int(11) DEFAULT NULL,
  `hua_file_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `ats_jobseeker_id` int(11) unsigned DEFAULT '0',
  `hua_file_key_hash` varchar(255) DEFAULT NULL,
  `hua_file_source_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_file_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `hua_file_name` (`hua_file_name`),
  KEY `hua_file_mimetype` (`hua_file_mimetype`),
  KEY `hua_file_source_id` (`hua_file_source_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6434 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_file_base64`
--

DROP TABLE IF EXISTS `hua_file_base64`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_file_base64` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `original_file_name` varchar(45) DEFAULT NULL COMMENT 'The name of the file prior to conversion.',
  `base64_string` longtext COMMENT 'The base64 conversion string of the file.',
  `original_file_directory` varchar(5000) DEFAULT NULL COMMENT 'The Directory the file was in prior to conversion.',
  `date_converted` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17854 DEFAULT CHARSET=utf8 COMMENT='the base 64 conversions of the files given to britehouse';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_file_source`
--

DROP TABLE IF EXISTS `hua_file_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_file_source` (
  `hua_file_source_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_file_source_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_file_source_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_file_source_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`hua_file_source_id`),
  KEY `hua_file_source_name` (`hua_file_source_name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_form`
--

DROP TABLE IF EXISTS `hua_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_form` (
  `hua_form_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_form_name` varchar(255) DEFAULT NULL,
  `hua_form_description` varchar(255) DEFAULT NULL,
  `hua_form_creator_id` int(10) unsigned DEFAULT '0',
  `hua_form_active` tinyint(1) DEFAULT '1',
  `hua_form_status` enum('draft','complete') DEFAULT 'draft',
  `hua_form_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_form_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_form_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `hua_form_type_id` int(10) unsigned NOT NULL,
  `hua_form_internal_completion_only` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_form_id`),
  KEY `hua_form_type_id` (`hua_form_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_form_field`
--

DROP TABLE IF EXISTS `hua_form_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_form_field` (
  `hua_form_field_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_field_id` int(10) unsigned DEFAULT '0',
  `hua_form_id` int(10) unsigned DEFAULT '0',
  `hua_form_page_id` int(10) unsigned DEFAULT '0',
  `hua_form_field_creator_id` int(10) unsigned DEFAULT '0',
  `hua_form_field_x_coordinate` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_form_field_y_coordinate` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_form_field_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_form_field_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_form_field_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `hua_form_field_sort_order` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_form_field_block_id` int(10) NOT NULL DEFAULT '0',
  `hua_form_field_is_repeatable` int(1) NOT NULL DEFAULT '0',
  `hua_form_field_minimum_repeats` int(10) NOT NULL DEFAULT '-1',
  `hua_form_field_maximum_repeats` int(10) NOT NULL DEFAULT '-1',
  `hua_form_field_active` tinyint(1) NOT NULL DEFAULT '0',
  `hua_form_field_required` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_form_field_id`),
  KEY `hua_field_id` (`hua_field_id`),
  KEY `hua_form_id` (`hua_form_id`),
  KEY `hua_form_field_block_id` (`hua_form_field_block_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4314 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_form_field_answer`
--

DROP TABLE IF EXISTS `hua_form_field_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_form_field_answer` (
  `hua_form_field_answer_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_dynamic_form_id` int(10) unsigned DEFAULT '0',
  `hua_form_field_answer_value` text,
  `hua_form_field_answer_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_form_field_answer_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_form_field_answer_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `hua_form_field_answer_repeat` int(10) DEFAULT NULL,
  `hua_field_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_form_field_answer_id`),
  KEY `hua_dynamic_form_id` (`hua_dynamic_form_id`),
  KEY `hua_field_id` (`hua_field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92023 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_form_page`
--

DROP TABLE IF EXISTS `hua_form_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_form_page` (
  `hua_form_page_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_form_page_name` varchar(255) DEFAULT NULL,
  `hua_form_page_description` varchar(255) DEFAULT NULL,
  `hua_form_page_number` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_form_page_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_form_page_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_form_page_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_form_page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_form_type`
--

DROP TABLE IF EXISTS `hua_form_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_form_type` (
  `hua_form_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_form_type_name` varchar(255) DEFAULT NULL,
  `hua_form_type_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_form_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_form_type_parent_id` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`hua_form_type_id`),
  KEY `hua_form_type_name` (`hua_form_type_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_functional_area`
--

DROP TABLE IF EXISTS `hua_functional_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_functional_area` (
  `hua_functional_area_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_functional_area_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_functional_area_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_functional_area_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`hua_functional_area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_group`
--

DROP TABLE IF EXISTS `hua_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_group` (
  `hua_group_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_group_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_group_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_module_id` int(11) unsigned DEFAULT NULL,
  `hua_group_name` char(255) DEFAULT NULL,
  `hua_group_module_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_group_protected` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_group_exclude_from_billing` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_group_system_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_group_id`),
  KEY `hua_module_id` (`hua_module_id`),
  KEY `hua_group_name` (`hua_group_name`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_integration`
--

DROP TABLE IF EXISTS `hua_integration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_integration` (
  `hua_integration_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_integration_name` varchar(255) NOT NULL DEFAULT '',
  `hua_integration_use_semantic` tinyint(1) NOT NULL DEFAULT '1',
  `hua_integration_semantic` varchar(255) NOT NULL DEFAULT '',
  `hua_integration_query` mediumtext NOT NULL,
  `hua_integration_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_integration_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_integration_type_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_integration_vendor` varchar(255) DEFAULT NULL,
  `hua_integration_protocol_id` int(11) unsigned DEFAULT NULL,
  `hua_integration_lock` tinyint(1) NOT NULL DEFAULT '0',
  `hua_integration_default` tinyint(1) NOT NULL DEFAULT '0',
  `hua_integration_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_integration_id`),
  KEY `hua_integration_protocol_id` (`hua_integration_protocol_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_integration_auth`
--

DROP TABLE IF EXISTS `hua_integration_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_integration_auth` (
  `hua_integration_auth_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_integration_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_integration_auth_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_integration_auth_direction` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `hua_integration_auth_type` int(11) NOT NULL DEFAULT '0',
  `hua_integration_auth_username` varchar(255) NOT NULL DEFAULT '',
  `hua_integration_auth_password` varchar(255) DEFAULT NULL,
  `hua_integration_auth_crypt` varchar(255) NOT NULL DEFAULT 'MD5',
  `hua_integration_auth_domain` varchar(255) DEFAULT NULL,
  `hua_integration_auth_ip` varchar(255) DEFAULT NULL,
  `hua_integration_auth_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_integration_auth_id`),
  KEY `hua_integration_id` (`hua_integration_id`,`hua_integration_auth_direction`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_integration_contact`
--

DROP TABLE IF EXISTS `hua_integration_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_integration_contact` (
  `hua_integration_contact_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_integration_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_integration_contact_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_integration_contact_fname` varchar(255) NOT NULL DEFAULT '',
  `hua_integration_contact_lname` varchar(255) NOT NULL DEFAULT '',
  `hua_integration_contact_phone` varchar(18) NOT NULL DEFAULT '',
  `hua_integration_contact_email` varchar(255) NOT NULL DEFAULT '',
  `hua_integration_contact_address` varchar(255) NOT NULL DEFAULT '',
  `hua_integration_contact_city` varchar(50) NOT NULL DEFAULT '',
  `hua_integration_contact_state` varchar(25) NOT NULL DEFAULT '',
  `hua_integration_contact_zip` varchar(10) NOT NULL DEFAULT '',
  `hua_integration_contact_error_level` tinyint(2) NOT NULL DEFAULT '0',
  `hua_integration_contact_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_integration_contact_relationship_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_integration_contact_id`),
  KEY `hua_integration_id` (`hua_integration_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_integration_contact_relationship`
--

DROP TABLE IF EXISTS `hua_integration_contact_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_integration_contact_relationship` (
  `hua_integration_contact_relationship_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_integration_contact_relationship_name` varchar(255) NOT NULL DEFAULT '',
  `hua_integration_contact_relationship_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_integration_contact_relationship_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_integration_contact_relationship_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_integration_contact_relationship_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_integration_format`
--

DROP TABLE IF EXISTS `hua_integration_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_integration_format` (
  `hua_integration_format_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_integration_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_format_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_integration_format_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_integration_format_id`),
  KEY `hua_integration_id` (`hua_integration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_integration_log`
--

DROP TABLE IF EXISTS `hua_integration_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_integration_log` (
  `hua_integration_log_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_integration_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_integration_log_function` varchar(255) NOT NULL,
  `hua_integration_log_ip` varchar(15) DEFAULT NULL,
  `hua_integration_log_port` varchar(255) NOT NULL,
  `hua_integration_log_domain` varchar(255) DEFAULT NULL,
  `hua_integration_log_username` varchar(255) DEFAULT NULL,
  `hua_integration_log_params` varchar(255) DEFAULT NULL,
  `hua_integration_log_success` tinyint(1) DEFAULT '0',
  `hua_integration_log_message` varchar(255) DEFAULT NULL,
  `hua_integration_log_error_text` text NOT NULL,
  `hua_integration_log_microtime_used` float unsigned NOT NULL DEFAULT '0',
  `hua_integration_log_memory_usage` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_integration_log_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_integration_log_direction` enum('incoming','outgoing') NOT NULL DEFAULT 'incoming',
  PRIMARY KEY (`hua_integration_log_id`),
  KEY `hua_integration_id` (`hua_integration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_integration_permission`
--

DROP TABLE IF EXISTS `hua_integration_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_integration_permission` (
  `hua_integration_permission_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_integration_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_integration_permission` varchar(255) NOT NULL DEFAULT '',
  `hua_integration_permission_mod` int(2) NOT NULL DEFAULT '0',
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_integration_permission_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_integration_permission_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_integration_permission_function` varchar(255) NOT NULL DEFAULT '',
  `hua_integration_permission_flag` tinyint(1) NOT NULL DEFAULT '0',
  `hua_integration_permission_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_integration_permission_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `hua_integration_id` (`hua_integration_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_integration_protocol`
--

DROP TABLE IF EXISTS `hua_integration_protocol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_integration_protocol` (
  `hua_integration_protocol_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_integration_protocol_name` varchar(255) NOT NULL DEFAULT '',
  `hua_integration_protocol_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_integration_protocol_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_integration_protocol_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_integration_protocol_option`
--

DROP TABLE IF EXISTS `hua_integration_protocol_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_integration_protocol_option` (
  `hua_integration_protocol_option_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_integration_protocol_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_integration_protocol_option_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_integration_protocol_option_name` varchar(255) NOT NULL DEFAULT '',
  `hua_integration_protocol_option_value` mediumtext NOT NULL,
  `hua_integration_protocol_option_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`hua_integration_protocol_option_id`),
  KEY `hua_integration_protocol_id` (`hua_integration_protocol_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_integration_semantic`
--

DROP TABLE IF EXISTS `hua_integration_semantic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_integration_semantic` (
  `hua_integration_semantic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_integration_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_integration_semantic_type` varchar(255) NOT NULL DEFAULT '',
  `hua_integration_semantic_external` varchar(255) NOT NULL DEFAULT '',
  `hua_integration_semantic_internal` varchar(255) NOT NULL DEFAULT '',
  `hua_integration_semantic_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_integration_semantic_id`),
  KEY `hua_integration_id` (`hua_integration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_integration_type`
--

DROP TABLE IF EXISTS `hua_integration_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_integration_type` (
  `hua_integration_type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_integration_type_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_integration_type_name` varchar(255) NOT NULL DEFAULT '',
  `hua_integration_type_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_integration_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_integration_user`
--

DROP TABLE IF EXISTS `hua_integration_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_integration_user` (
  `hua_integration_user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_integration_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_integration_user_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `hua_integration_user_login_fail` tinyint(1) NOT NULL DEFAULT '0',
  `hua_integration_user_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_integration_user_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `hua_integration_id` (`hua_integration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_job`
--

DROP TABLE IF EXISTS `hua_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_job` (
  `hua_job_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_job_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_job_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_travel_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_job_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_salary_grade_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_job_category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_cost_center_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_job_code` varchar(255) DEFAULT NULL,
  `hua_union_id` int(10) unsigned DEFAULT NULL,
  `hua_job_family_id` int(10) unsigned DEFAULT NULL,
  `hua_job_title` varchar(255) DEFAULT NULL,
  `hua_expiration_date` datetime DEFAULT NULL,
  `hua_education_id` int(10) unsigned DEFAULT NULL,
  `hua_crosspost_category_id` int(10) unsigned DEFAULT NULL,
  `hua_location_id` int(10) unsigned DEFAULT NULL,
  `hua_job_description` text,
  `hua_job_requirements` text,
  `hua_job_num_planned` int(10) unsigned DEFAULT '0',
  `hua_job_turnover` int(10) unsigned DEFAULT '0',
  `hua_job_num_employees` int(10) unsigned DEFAULT '0',
  `hua_job_num_candidates` int(10) unsigned DEFAULT '0',
  `hua_job_development` varchar(255) DEFAULT NULL,
  `hua_job_key` tinyint(1) NOT NULL DEFAULT '0',
  `hua_job_duration` int(11) unsigned DEFAULT NULL,
  `hua_org_level_id` int(11) DEFAULT '0',
  `hua_division_id` int(10) DEFAULT '0',
  `hua_job_level_id` int(10) unsigned DEFAULT '0',
  `hua_organizational_impact_id` int(11) NOT NULL,
  `hua_job_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_job_soc_code` varchar(25) DEFAULT NULL,
  `hua_job_external_title` varchar(255) NOT NULL DEFAULT '',
  `hua_job_grade_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_job_role_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_location_group_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_requisition_position_type_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_eeoc_job_group_id` int(11) unsigned DEFAULT '0',
  `ats_eeoc_job_category_id` int(11) unsigned DEFAULT '0',
  `hua_job_is_hourly` tinyint(3) unsigned DEFAULT '0',
  `hua_job_internal_screening_questionnaire_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_job_external_screening_questionnaire_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_job_internal_screening_questionnaire_active` int(11) unsigned NOT NULL DEFAULT '1',
  `hua_job_external_screening_questionnaire_active` int(11) unsigned NOT NULL DEFAULT '1',
  `hua_job_personality_assessment` tinyint(3) unsigned DEFAULT '0',
  `hua_job_background_check_vendor` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`hua_job_id`),
  KEY `hua_job_family_id` (`hua_job_family_id`),
  KEY `hua_job_title` (`hua_job_title`),
  KEY `hua_cost_center_id` (`hua_cost_center_id`),
  KEY `hua_job_deactivated` (`hua_job_deactivated`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_job_assessment_package`
--

DROP TABLE IF EXISTS `hua_job_assessment_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_job_assessment_package` (
  `hua_job_assessment_package_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_job_assessment_package_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_job_assessment_package_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_job_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_assessment_package_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_job_asessment_package_order` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`hua_job_assessment_package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_job_category`
--

DROP TABLE IF EXISTS `hua_job_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_job_category` (
  `hua_job_category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_job_category_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_job_category_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_job_category_name` char(255) DEFAULT NULL,
  `hua_job_category_deactivated` tinyint(1) unsigned DEFAULT '0',
  `hua_job_category_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `hua_job_category_order` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`hua_job_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_job_comments`
--

DROP TABLE IF EXISTS `hua_job_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_job_comments` (
  `hua_job_comments_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_job_comments_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_job_comments_date_created` datetime DEFAULT NULL,
  `hua_job_comments_job_id` int(10) DEFAULT NULL,
  `hua_job_comments_commentor_id` int(10) DEFAULT NULL,
  `hua_job_comments_comment_date` date DEFAULT NULL,
  `hua_job_comments_hidden` tinyint(1) DEFAULT NULL,
  `hua_job_comments_comment` text,
  `hua_job_comments_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_job_comments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_job_competency_gained`
--

DROP TABLE IF EXISTS `hua_job_competency_gained`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_job_competency_gained` (
  `hua_job_competency_gained_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_job_competency_gained_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_job_competency_gained_date_created` datetime NOT NULL,
  `hua_job_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_competency_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_scale_value_name_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_job_competency_gained_id`),
  KEY `hua_job_id` (`hua_job_id`),
  KEY `hua_competency_id` (`hua_competency_id`),
  KEY `hua_scale_value_name_id` (`hua_scale_value_name_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_job_competency_required`
--

DROP TABLE IF EXISTS `hua_job_competency_required`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_job_competency_required` (
  `hua_job_competency_required_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_job_competency_required_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_job_competency_required_date_created` datetime NOT NULL,
  `hua_job_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_competency_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_scale_value_name_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_job_competency_required_min_score` float DEFAULT NULL,
  PRIMARY KEY (`hua_job_competency_required_id`),
  KEY `hua_job_id` (`hua_job_id`),
  KEY `hua_competency_id` (`hua_competency_id`),
  KEY `hua_scale_value_name_id` (`hua_scale_value_name_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_job_competency_suggestion`
--

DROP TABLE IF EXISTS `hua_job_competency_suggestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_job_competency_suggestion` (
  `hua_job_competency_suggestion_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_job_competency_suggestion_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_job_competency_suggestion_date_created` datetime DEFAULT NULL,
  `hua_job_competency_suggestion_job_id` int(10) DEFAULT NULL,
  `hua_job_competency_suggestion_suggestor_id` int(10) DEFAULT NULL,
  `hua_job_competency_suggestion_competency_id` int(10) DEFAULT NULL,
  `hua_job_competency_suggestion` text,
  `hua_job_competency_suggestion_system_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`hua_job_competency_suggestion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_job_deleted`
--

DROP TABLE IF EXISTS `hua_job_deleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_job_deleted` (
  `hua_job_deleted_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_job_deleted_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_job_deleted_by_user_id` int(10) unsigned NOT NULL,
  `hua_job_id` int(10) unsigned NOT NULL,
  `hua_job_last_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_job_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_travel_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_job_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_salary_grade_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_job_category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_cost_center_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_job_code` varchar(255) DEFAULT NULL,
  `hua_job_family_id` int(10) unsigned DEFAULT NULL,
  `hua_job_title` varchar(255) DEFAULT NULL,
  `hua_expiration_date` datetime DEFAULT NULL,
  `hua_education_id` int(10) unsigned DEFAULT NULL,
  `hua_crosspost_category_id` int(10) unsigned DEFAULT NULL,
  `hua_location_id` int(10) unsigned DEFAULT NULL,
  `hua_job_description` text,
  `hua_job_requirements` text,
  `hua_job_num_planned` int(10) unsigned DEFAULT '0',
  `hua_job_turnover` int(10) unsigned DEFAULT '0',
  `hua_job_num_employees` int(10) unsigned DEFAULT '0',
  `hua_job_num_candidates` int(10) unsigned DEFAULT '0',
  `hua_job_development` varchar(255) DEFAULT NULL,
  `hua_job_key` tinyint(1) DEFAULT NULL,
  `hua_job_duration` int(11) unsigned DEFAULT '0',
  `hua_org_level_id` int(11) DEFAULT '0',
  `hua_division_id` int(10) DEFAULT '0',
  `hua_job_level_id` int(10) unsigned DEFAULT '0',
  `hua_organizational_impact_id` int(11) NOT NULL,
  PRIMARY KEY (`hua_job_id`),
  KEY `hua_job_family_id` (`hua_job_family_id`),
  KEY `hua_job_title` (`hua_job_title`),
  KEY `hua_cost_center_id` (`hua_cost_center_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='We move deleted jobs to this table.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_job_development_need`
--

DROP TABLE IF EXISTS `hua_job_development_need`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_job_development_need` (
  `hua_job_development_need_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_job_development_need_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_job_development_need_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_job_id` int(11) DEFAULT '0',
  `lms_course_id` int(11) unsigned DEFAULT '0',
  `hua_development_need_parent_id` int(11) DEFAULT NULL,
  `hua_development_need_class_name` char(255) DEFAULT NULL,
  `hua_development_need_target_date` datetime DEFAULT NULL,
  `hua_development_need_source` char(255) DEFAULT NULL,
  `hua_development_need_status_id` int(11) unsigned DEFAULT '0',
  `hua_development_need_status` char(255) DEFAULT NULL,
  `hua_development_need_status_date` datetime DEFAULT NULL,
  `hua_development_need_started` datetime DEFAULT NULL,
  PRIMARY KEY (`hua_job_development_need_id`),
  KEY `hua_development_need_status_id` (`hua_development_need_status_id`),
  KEY `lms_course_id` (`lms_course_id`),
  KEY `hua_job_id` (`hua_job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_job_family`
--

DROP TABLE IF EXISTS `hua_job_family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_job_family` (
  `hua_job_family_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_job_family_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_job_family_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_job_family_name` varchar(255) DEFAULT NULL,
  `hua_job_family_parent_id` int(11) DEFAULT NULL,
  `hua_job_family_description` varchar(255) NOT NULL,
  `hua_job_family_active` tinyint(1) unsigned DEFAULT '1',
  `hua_job_family_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `hua_company_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_job_family_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_job_family_id`),
  KEY `family_name` (`hua_job_family_name`),
  KEY `family_parent` (`hua_job_family_parent_id`),
  KEY `hua_company_id` (`hua_company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_job_grade`
--

DROP TABLE IF EXISTS `hua_job_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_job_grade` (
  `hua_job_grade_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_job_grade_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_job_grade_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_job_grade_name` varchar(255) NOT NULL DEFAULT '',
  `hua_job_grade_order` int(11) DEFAULT '0',
  `hua_job_grade_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_job_grade_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_job_history`
--

DROP TABLE IF EXISTS `hua_job_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_job_history` (
  `hua_job_history_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_job_history_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_job_history_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_user_id` int(11) unsigned DEFAULT NULL,
  `hua_job_id` int(11) unsigned DEFAULT NULL,
  `hua_travel_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_job_type_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_salary_grade_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_job_category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_cost_center_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_job_code` varchar(255) DEFAULT NULL,
  `hua_job_family_id` int(11) unsigned DEFAULT NULL,
  `hua_job_title` varchar(255) DEFAULT NULL,
  `hua_expiration_date` datetime DEFAULT NULL,
  `hua_education_id` int(11) unsigned DEFAULT NULL,
  `hua_crosspost_category_id` int(11) unsigned DEFAULT NULL,
  `hua_location_id` int(11) unsigned DEFAULT NULL,
  `hua_job_description` text,
  `hua_job_requirements` text,
  `hua_job_num_planned` int(11) unsigned DEFAULT '0',
  `hua_job_turnover` int(11) unsigned DEFAULT '0',
  `hua_job_num_employees` int(11) unsigned DEFAULT '0',
  `hua_job_num_candidates` int(11) unsigned DEFAULT '0',
  `hua_job_development` varchar(255) DEFAULT NULL,
  `hua_job_key` tinyint(1) DEFAULT NULL,
  `hua_position_id` int(11) unsigned DEFAULT NULL,
  `hua_position_code` varchar(255) DEFAULT NULL,
  `hua_position_salary` float DEFAULT NULL,
  `hua_position_key` tinyint(1) DEFAULT NULL,
  `hua_position_start_date` datetime DEFAULT NULL,
  `hua_position_end_date` datetime DEFAULT NULL,
  `hua_manager_id` int(11) DEFAULT NULL,
  `hua_job_history_reason` varchar(255) DEFAULT NULL,
  `hua_user_status_id` int(11) DEFAULT NULL,
  `hua_position_hire_date` date DEFAULT NULL,
  PRIMARY KEY (`hua_job_history_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `hua_cost_center_id` (`hua_cost_center_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_job_history_competency_gained`
--

DROP TABLE IF EXISTS `hua_job_history_competency_gained`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_job_history_competency_gained` (
  `hua_job_history_competency_gained_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_job_history_competency_gained_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_job_history_competency_gained_date_created` datetime NOT NULL,
  `hua_job_history_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_competency_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_job_history_competency_gained_score` float DEFAULT NULL,
  PRIMARY KEY (`hua_job_history_competency_gained_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_job_history_skills_gained`
--

DROP TABLE IF EXISTS `hua_job_history_skills_gained`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_job_history_skills_gained` (
  `hua_job_history_skills_gained_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_job_history_skills_gained_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_job_history_skills_gained_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_job_history_id` int(11) unsigned DEFAULT NULL,
  `hua_skill_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`hua_job_history_skills_gained_id`),
  KEY `hua_job_history_id` (`hua_job_history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_job_location`
--

DROP TABLE IF EXISTS `hua_job_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_job_location` (
  `hua_job_location` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_location_id` int(10) unsigned DEFAULT '0',
  `hua_job_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_job_location_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_job_location_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`hua_job_location`),
  KEY `hua_job_id` (`hua_job_id`),
  KEY `hua_location_id` (`hua_location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_job_purpose`
--

DROP TABLE IF EXISTS `hua_job_purpose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_job_purpose` (
  `hua_job_purpose_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_job_purpose_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_job_purpose_date_created` datetime DEFAULT NULL,
  `hua_job_purpose_name` char(255) DEFAULT NULL,
  `hua_job_purpose_order` smallint(6) DEFAULT NULL,
  `hua_job_purpose_deactivated` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`hua_job_purpose_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_job_role`
--

DROP TABLE IF EXISTS `hua_job_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_job_role` (
  `hua_job_role_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_job_role_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_job_role_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_job_role_name` varchar(255) NOT NULL DEFAULT '',
  `hua_job_role_order` int(11) DEFAULT '0',
  `hua_job_role_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_job_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_job_skill`
--

DROP TABLE IF EXISTS `hua_job_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_job_skill` (
  `hua_job_skill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_job_skill_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_job_skill_date_created` datetime DEFAULT NULL,
  `hua_job_id` int(11) DEFAULT NULL,
  `hua_skill_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`hua_job_skill_id`),
  KEY `hua_job_id` (`hua_job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_job_skill_suggestion`
--

DROP TABLE IF EXISTS `hua_job_skill_suggestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_job_skill_suggestion` (
  `hua_job_skill_suggestion_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_job_skill_suggestion_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_job_skill_suggestion_date_created` datetime DEFAULT NULL,
  `hua_job_skill_suggestion_job_id` int(10) DEFAULT NULL,
  `hua_job_skill_suggestion_suggestor_id` int(10) DEFAULT NULL,
  `hua_job_skill_suggestion_skill_id` int(10) DEFAULT NULL,
  `hua_job_skill_suggestion` text,
  `hua_job_skill_suggestion_system_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`hua_job_skill_suggestion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_job_skills_gained`
--

DROP TABLE IF EXISTS `hua_job_skills_gained`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_job_skills_gained` (
  `hua_job_skills_gained_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_job_skills_gained_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_job_skills_gained_date_created` datetime DEFAULT NULL,
  `hua_job_id` int(10) unsigned DEFAULT NULL,
  `hua_skill_id` int(10) unsigned DEFAULT NULL,
  `hua_skill_level_id` int(11) DEFAULT NULL,
  `hua_skill_usage_id` int(11) DEFAULT NULL,
  `hua_skill_last_used_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`hua_job_skills_gained_id`),
  KEY `hua_job_id` (`hua_job_id`),
  KEY `hua_skill_id` (`hua_skill_id`),
  KEY `hua_skill_level_id` (`hua_skill_level_id`),
  KEY `hua_skill_usage_id` (`hua_skill_usage_id`),
  KEY `hua_skill_last_used_id` (`hua_skill_last_used_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_job_skills_required`
--

DROP TABLE IF EXISTS `hua_job_skills_required`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_job_skills_required` (
  `hua_job_skills_required_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_job_skills_required_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_job_skills_required_date_created` datetime DEFAULT NULL,
  `hua_job_id` int(10) unsigned DEFAULT NULL,
  `hua_skill_id` int(10) unsigned DEFAULT NULL,
  `hua_skill_level_id` int(11) DEFAULT NULL,
  `hua_skill_usage_id` int(11) DEFAULT NULL,
  `hua_skill_last_used_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`hua_job_skills_required_id`),
  KEY `hua_job_id` (`hua_job_id`),
  KEY `hua_skill_id` (`hua_skill_id`),
  KEY `hua_skill_level_id` (`hua_skill_level_id`),
  KEY `hua_skill_usage_id` (`hua_skill_usage_id`),
  KEY `hua_skill_last_used_id` (`hua_skill_last_used_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_job_to_front_end`
--

DROP TABLE IF EXISTS `hua_job_to_front_end`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_job_to_front_end` (
  `hua_job_to_front_end_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_job_to_front_end_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_job_to_front_end_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_job_id` int(11) unsigned NOT NULL DEFAULT '0',
  `ats_front_end_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_job_to_front_end_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_job_type`
--

DROP TABLE IF EXISTS `hua_job_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_job_type` (
  `hua_job_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_job_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_job_type_date_created` datetime DEFAULT NULL,
  `hua_job_type_name` char(255) DEFAULT NULL,
  `hua_job_type_deactivated` tinyint(1) unsigned DEFAULT '0',
  `hua_job_type_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `hua_job_type_order` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`hua_job_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_language`
--

DROP TABLE IF EXISTS `hua_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_language` (
  `hua_language_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_language_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_language_date_created` datetime DEFAULT NULL,
  `hua_language_name` char(255) DEFAULT NULL,
  `hua_language_abbreviation` char(2) DEFAULT NULL,
  `hua_language_active` tinyint(1) DEFAULT NULL,
  `hua_language_default` tinyint(1) DEFAULT NULL,
  `hua_language_help_admin` int(10) unsigned DEFAULT NULL,
  `hua_language_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `hua_system_language_id` int(11) unsigned NOT NULL DEFAULT '1',
  `hua_language_locale_abbreviation` char(5) DEFAULT NULL,
  `hua_country_id` int(11) DEFAULT NULL,
  `hua_language_display_name` varchar(255) DEFAULT NULL,
  `hua_language_custom_name_flag` tinyint(1) NOT NULL DEFAULT '0',
  `hua_language_layout_is_right_to_left` tinyint(1) NOT NULL DEFAULT '0',
  `hua_language_dd_abbreviation` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_language_id`),
  UNIQUE KEY `hua_language_name` (`hua_language_name`),
  UNIQUE KEY `language_abbreviation_idx` (`hua_language_abbreviation`),
  KEY `active` (`hua_language_active`),
  KEY `default_language` (`hua_language_default`),
  KEY `help_admin` (`hua_language_help_admin`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_language_token_translation`
--

DROP TABLE IF EXISTS `hua_language_token_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_language_token_translation` (
  `hua_language_token_translation_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_language_token_translation_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_language_token_translation_date_created` datetime DEFAULT NULL,
  `hua_language_token_translation` text,
  `hua_language_id` int(10) unsigned DEFAULT NULL,
  `hua_language_token_name` varchar(255) NOT NULL DEFAULT '',
  `hua_language_token_translation_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `hua_language_token_id_system` int(11) unsigned DEFAULT NULL,
  `hua_language_token_translation_version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_language_token_translation_id`),
  UNIQUE KEY `hua_language_token_idx` (`hua_language_id`,`hua_language_token_name`),
  KEY `token_name` (`hua_language_token_name`),
  KEY `token_language_id_idx` (`hua_language_token_name`,`hua_language_id`),
  KEY `hua_language_token_translation_last_modified` (`hua_language_token_translation_last_modified`),
  KEY `language_token_system_idx` (`hua_language_id`,`hua_language_token_id_system`),
  FULLTEXT KEY `translation_index` (`hua_language_token_translation`)
) ENGINE=InnoDB AUTO_INCREMENT=120228 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_lens_map`
--

DROP TABLE IF EXISTS `hua_lens_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_lens_map` (
  `hua_lens_map_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_lens_map_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_lens_map_date_created` datetime NOT NULL,
  `hua_lens_map_host` varchar(255) NOT NULL,
  `hua_lens_map_port` varchar(10) NOT NULL,
  `hua_lens_map_locale` varchar(10) NOT NULL,
  `hua_lens_map_register_host` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_lens_map_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_letter_template`
--

DROP TABLE IF EXISTS `hua_letter_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_letter_template` (
  `hua_letter_template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_letter_template_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_letter_template_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_letter_template_name` varchar(255) NOT NULL,
  `hua_letter_template_internal_name` varchar(255) DEFAULT NULL,
  `hua_letter_template_category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_letter_template_creator_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_letter_template_type` enum('global','personal') NOT NULL DEFAULT 'personal',
  `hua_letter_template_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `hua_letter_template_cc` text,
  `hua_letter_template_protected` tinyint(1) DEFAULT '0',
  `hua_letter_template_header_id` int(11) unsigned DEFAULT NULL,
  `hua_letter_template_footer_id` int(11) unsigned DEFAULT NULL,
  `hua_letter_template_bcc` text,
  PRIMARY KEY (`hua_letter_template_id`),
  KEY `ats_letter_template_category_id` (`hua_letter_template_category_id`),
  KEY `ats_letter_template_creator_id` (`hua_letter_template_creator_id`),
  KEY `ats_letter_template_type` (`hua_letter_template_type`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_letter_template_attachment`
--

DROP TABLE IF EXISTS `hua_letter_template_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_letter_template_attachment` (
  `hua_letter_template_attachment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_letter_template_id` int(10) unsigned DEFAULT '0',
  `hua_document_id` int(10) unsigned DEFAULT '0',
  `hua_letter_template_attachment_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_letter_template_attachment_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`hua_letter_template_attachment_id`),
  KEY `hua_document_id` (`hua_document_id`),
  KEY `ats_letter_template_id` (`hua_letter_template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_letter_template_category`
--

DROP TABLE IF EXISTS `hua_letter_template_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_letter_template_category` (
  `hua_letter_template_category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_letter_template_category_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_letter_template_category_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_letter_template_category_name` varchar(255) NOT NULL,
  `hua_letter_template_category_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `hua_letter_template_category_module` enum('all','ats','epm') DEFAULT 'all',
  PRIMARY KEY (`hua_letter_template_category_id`),
  KEY `letter_category_name_idx` (`hua_letter_template_category_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_letter_template_image`
--

DROP TABLE IF EXISTS `hua_letter_template_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_letter_template_image` (
  `hua_letter_template_image_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_letter_template_image_date_created` datetime NOT NULL,
  `hua_letter_template_image_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_file_id` int(11) NOT NULL,
  PRIMARY KEY (`hua_letter_template_image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_letter_template_translation`
--

DROP TABLE IF EXISTS `hua_letter_template_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_letter_template_translation` (
  `hua_letter_template_translation_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_letter_template_translation_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_letter_template_translation_date_created` datetime NOT NULL,
  `hua_letter_template_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_language_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_letter_template_translation_subject` text NOT NULL,
  `hua_letter_template_translation_body` text NOT NULL,
  `hua_letter_template_translation_microblog` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_letter_template_translation_id`),
  KEY `hua_letter_template_id` (`hua_letter_template_id`,`hua_language_id`),
  KEY `hua_language_id` (`hua_language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_library_resource`
--

DROP TABLE IF EXISTS `hua_library_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_library_resource` (
  `hua_library_resource_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_library_resource_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_library_resource_date_created` datetime DEFAULT NULL,
  `hua_library_resource_name` char(255) DEFAULT NULL,
  `hua_library_resource_type_id` int(11) unsigned DEFAULT NULL,
  `hua_library_resource_description` char(255) DEFAULT NULL,
  `hua_library_resource_begin_date` date DEFAULT NULL,
  `hua_library_resource_end_date` date DEFAULT NULL,
  `hua_library_resource_present_method_id` int(11) unsigned DEFAULT NULL,
  `hua_library_resource_publisher` char(255) DEFAULT NULL,
  `hua_library_resource_publication_year` int(4) unsigned DEFAULT NULL,
  `hua_library_resource_isbn` char(255) DEFAULT NULL,
  `hua_library_resource_author` char(255) DEFAULT NULL,
  `hua_library_resource_co_author` char(255) DEFAULT NULL,
  `hua_library_resource_scan_number` char(255) DEFAULT NULL,
  `hua_library_resource_permission_id` int(11) unsigned DEFAULT NULL,
  `hua_library_resource_number_of_copies` int(11) unsigned DEFAULT NULL,
  `hua_library_resource_waitlist` tinyint(1) unsigned DEFAULT '1',
  `hua_library_resource_checkout_interval` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`hua_library_resource_id`),
  KEY `hua_library_resource_permission_id` (`hua_library_resource_permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_library_resource_competency`
--

DROP TABLE IF EXISTS `hua_library_resource_competency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_library_resource_competency` (
  `hua_library_resource_competency_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_library_resource_competency_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_library_resource_competency_date_created` datetime DEFAULT NULL,
  `hua_library_resource_id` int(11) unsigned DEFAULT NULL,
  `hua_competency_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_library_resource_competency_id`),
  KEY `hua_library_resource_id` (`hua_library_resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_library_resource_history`
--

DROP TABLE IF EXISTS `hua_library_resource_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_library_resource_history` (
  `hua_library_resource_history_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_library_resource_history_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_library_resource_history_date_created` datetime DEFAULT NULL,
  `hua_library_resource_id` int(11) unsigned DEFAULT NULL,
  `hua_user_id` int(11) unsigned DEFAULT NULL,
  `hua_library_resource_inventory_id` int(11) unsigned DEFAULT NULL,
  `hua_library_resource_history_checkout_date` datetime DEFAULT NULL,
  `hua_library_resource_history_due_date` date DEFAULT NULL,
  `hua_library_resource_history_return_date` datetime DEFAULT NULL,
  `hua_library_resource_tracking_number` char(255) DEFAULT NULL,
  PRIMARY KEY (`hua_library_resource_history_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `hua_library_resource_id` (`hua_library_resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_library_resource_inventory`
--

DROP TABLE IF EXISTS `hua_library_resource_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_library_resource_inventory` (
  `hua_library_resource_inventory_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_library_resource_inventory_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_library_resource_inventory_date_created` datetime DEFAULT NULL,
  `hua_library_resource_id` int(11) unsigned DEFAULT NULL,
  `hua_library_resource_tracking_number` char(255) DEFAULT NULL,
  `hua_library_resource_inventory_unique_number` char(255) DEFAULT NULL,
  `hua_library_resource_inventory_checked_out` tinyint(1) DEFAULT '0',
  `hua_library_resource_inventory_checkout_date` datetime DEFAULT NULL,
  `hua_library_resource_inventory_due_date` date DEFAULT NULL,
  `hua_library_resource_inventory_date_sent` date DEFAULT NULL,
  `hua_library_resource_inventory_sent` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`hua_library_resource_inventory_id`),
  KEY `hua_library_resource_id` (`hua_library_resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_library_resource_permission`
--

DROP TABLE IF EXISTS `hua_library_resource_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_library_resource_permission` (
  `hua_library_resource_permission_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_library_resource_permission_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_library_resource_permission_date_created` datetime DEFAULT NULL,
  `hua_library_resource_permission_name` char(255) DEFAULT NULL,
  PRIMARY KEY (`hua_library_resource_permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_library_resource_present_method`
--

DROP TABLE IF EXISTS `hua_library_resource_present_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_library_resource_present_method` (
  `hua_library_resource_present_method_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_library_resource_present_method_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_library_resource_present_method_date_created` datetime DEFAULT NULL,
  `hua_library_resource_present_method_name` char(255) DEFAULT NULL,
  `hua_library_resource_present_method_description` char(255) DEFAULT NULL,
  PRIMARY KEY (`hua_library_resource_present_method_id`),
  KEY `hua_library_resource_present_method_name` (`hua_library_resource_present_method_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_library_resource_type`
--

DROP TABLE IF EXISTS `hua_library_resource_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_library_resource_type` (
  `hua_library_resource_type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_library_resource_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_library_resource_type_date_created` datetime DEFAULT NULL,
  `hua_library_resource_type_name` char(255) DEFAULT NULL,
  PRIMARY KEY (`hua_library_resource_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_library_resource_waitlist`
--

DROP TABLE IF EXISTS `hua_library_resource_waitlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_library_resource_waitlist` (
  `hua_library_resource_waitlist_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_library_resource_waitlist_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_library_resource_waitlist_date_created` datetime DEFAULT NULL,
  `hua_library_resource_id` int(11) unsigned DEFAULT NULL,
  `hua_user_id` int(11) unsigned DEFAULT NULL,
  `hua_library_resource_waitlist_order` int(11) unsigned DEFAULT NULL,
  `hua_library_resource_waitlist_remain` tinyint(1) unsigned DEFAULT '0',
  `hua_library_resource_waitlist_entry_date` datetime DEFAULT NULL,
  PRIMARY KEY (`hua_library_resource_waitlist_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `hua_library_resource_id` (`hua_library_resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_location`
--

DROP TABLE IF EXISTS `hua_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_location` (
  `hua_location_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_location_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_location_date_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_location_name` char(255) DEFAULT NULL,
  `hua_location_code` char(255) DEFAULT NULL,
  `hua_location_address_one` char(255) DEFAULT NULL,
  `hua_location_address_two` char(255) DEFAULT NULL,
  `hua_location_address_three` char(255) DEFAULT NULL,
  `hua_location_city` char(255) DEFAULT NULL,
  `hua_state_id` int(10) unsigned DEFAULT NULL,
  `hua_location_zip` char(255) DEFAULT NULL,
  `hua_country_id` int(10) unsigned DEFAULT NULL,
  `OrganizationalUnit_oid` char(38) DEFAULT NULL,
  `hua_location_active` tinyint(1) NOT NULL DEFAULT '1',
  `hua_location_creator_id` int(10) NOT NULL DEFAULT '0',
  `hua_location_adhoc` tinyint(1) unsigned DEFAULT '0',
  `hua_org_level_id` int(10) NOT NULL DEFAULT '0',
  `hua_time_zone_id` int(10) DEFAULT '0',
  `hua_currency_id` int(10) DEFAULT '0',
  `hua_location_group_id` int(10) DEFAULT '0',
  `hua_location_phone` varchar(255) DEFAULT NULL,
  `hua_location_fax` varchar(255) DEFAULT NULL,
  `hua_location_is_remote` int(1) DEFAULT '0',
  `monster_location_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_location_latitude` float(11,8) DEFAULT NULL,
  `hua_location_longitude` float(11,8) DEFAULT NULL,
  `hua_location_business_partner_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_location_is_outlet` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_location_id`),
  KEY `country` (`hua_country_id`),
  KEY `hua_location_oid` (`OrganizationalUnit_oid`),
  KEY `state` (`hua_state_id`),
  KEY `hua_location_zip` (`hua_location_zip`),
  KEY `hua_location_active` (`hua_location_active`),
  KEY `org_level` (`hua_org_level_id`),
  KEY `hua_location_last_modified` (`hua_location_last_modified`),
  KEY `hua_location_active_2` (`hua_location_active`,`hua_location_adhoc`),
  KEY `hua_location_name` (`hua_location_name`),
  KEY `hua_location_group_id` (`hua_location_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_location_group`
--

DROP TABLE IF EXISTS `hua_location_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_location_group` (
  `hua_location_group_id` int(10) NOT NULL AUTO_INCREMENT,
  `hua_location_group_last_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `hua_location_group_date_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_location_group_name` varchar(255) NOT NULL,
  `hua_location_group_code` varchar(255) DEFAULT NULL,
  `hua_org_level_id` int(10) NOT NULL,
  `hua_country_id` int(10) NOT NULL,
  PRIMARY KEY (`hua_location_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_location_translation_index`
--

DROP TABLE IF EXISTS `hua_location_translation_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_location_translation_index` (
  `hua_location_id` int(11) NOT NULL,
  `hua_language_id` int(11) NOT NULL,
  `hua_location_name` varchar(255) NOT NULL,
  `hua_location_city` varchar(255) NOT NULL,
  `time_to_live` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_location_id`,`hua_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_login_failed_attempts`
--

DROP TABLE IF EXISTS `hua_login_failed_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_login_failed_attempts` (
  `hua_login_failed_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hua_user_id` int(11) NOT NULL DEFAULT '0',
  `hua_user_login_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_login_failed_attempts_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_login_failed_id`),
  KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=717 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_map_service`
--

DROP TABLE IF EXISTS `hua_map_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_map_service` (
  `hua_map_service_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_map_service_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_map_service_date_created` datetime DEFAULT NULL,
  `hua_map_service_name` char(255) DEFAULT NULL,
  `hua_map_service_url` char(255) DEFAULT NULL,
  `hua_map_service_icon` char(255) DEFAULT NULL,
  `hua_map_service_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_map_service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_model_column`
--

DROP TABLE IF EXISTS `hua_model_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_model_column` (
  `hua_model_column_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_model_column_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_model_column_date_created` datetime NOT NULL,
  `hua_model_column_model` varchar(255) NOT NULL,
  `hua_model_column_column` varchar(255) NOT NULL,
  PRIMARY KEY (`hua_model_column_id`),
  KEY `hua_model_column_model` (`hua_model_column_model`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_model_column_validation_rule`
--

DROP TABLE IF EXISTS `hua_model_column_validation_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_model_column_validation_rule` (
  `hua_model_column_validation_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_model_column_validation_rule_last_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `hua_model_column_validation_rule_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_model_column_validation_rule_strategy` varchar(255) NOT NULL,
  `hua_model_column_validation_rule_parameters` text,
  `hua_model_column_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_feature_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`hua_model_column_validation_rule_id`),
  KEY `hua_model_column_id` (`hua_model_column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=192 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_module`
--

DROP TABLE IF EXISTS `hua_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_module` (
  `hua_module_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_module_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_module_date_created` datetime DEFAULT NULL,
  `hua_module_name` varchar(255) DEFAULT NULL,
  `hua_module_abbreviation` varchar(20) DEFAULT NULL,
  `hua_module_installed` tinyint(1) unsigned DEFAULT NULL,
  `hua_module_domain` varchar(255) DEFAULT NULL,
  `hua_module_type` varchar(255) DEFAULT NULL,
  `hua_module_image` varchar(255) DEFAULT NULL,
  `hua_module_headline` text,
  `hua_module_base_group` int(11) DEFAULT NULL,
  `hua_module_default_viewmenu` varchar(255) NOT NULL,
  `hua_module_version` varchar(255) NOT NULL,
  `hua_module_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `hua_module_level` int(11) DEFAULT '1',
  PRIMARY KEY (`hua_module_id`),
  KEY `module_abbrev` (`hua_module_abbreviation`),
  KEY `module_installed` (`hua_module_installed`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_national_identifier`
--

DROP TABLE IF EXISTS `hua_national_identifier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_national_identifier` (
  `hua_national_identifier_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_national_identifier_date_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_national_identifier_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_national_identifier_logical_value` varchar(255) NOT NULL,
  `hua_national_identifier_label` varchar(255) NOT NULL,
  `hua_national_identifier_format` varchar(255) DEFAULT NULL,
  `hua_national_identifier_help_text` varchar(255) DEFAULT NULL,
  `hua_national_identifier_insecure_mask` varchar(255) DEFAULT NULL,
  `hua_country_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_national_identifier_id`),
  UNIQUE KEY `hua_national_identifier_logical_value` (`hua_national_identifier_logical_value`),
  KEY `hua_country_id` (`hua_country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_navitem`
--

DROP TABLE IF EXISTS `hua_navitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_navitem` (
  `hua_navitem_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_navitem_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_navitem_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_navitem_name` char(255) DEFAULT NULL,
  `hua_navitem_desc` char(255) DEFAULT NULL,
  `hua_navitem_url` char(255) DEFAULT NULL,
  `hua_navitem_tier` tinyint(3) unsigned DEFAULT NULL,
  `hua_navitem_parent_id` int(11) unsigned DEFAULT NULL,
  `hua_navitem_order` tinyint(3) unsigned DEFAULT NULL,
  `hua_navitem_hidden` tinyint(3) unsigned DEFAULT '0',
  `hua_navitem_shown_externally` tinyint(3) unsigned DEFAULT NULL,
  `hua_navitem_system_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `module` varchar(10) DEFAULT NULL,
  `controller` varchar(50) DEFAULT NULL,
  `action` varchar(100) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  `hua_navitem_target` varchar(50) DEFAULT NULL,
  `hua_navitem_column` int(11) DEFAULT NULL,
  `hua_navitem_icon` varchar(50) DEFAULT NULL,
  `hua_navitem_menu_category_id` int(10) DEFAULT '1',
  PRIMARY KEY (`hua_navitem_id`),
  UNIQUE KEY `hua_navitem_name` (`hua_navitem_name`),
  KEY `hua_navitem_parent_id` (`hua_navitem_parent_id`),
  KEY `hua_navitem_url` (`hua_navitem_url`),
  KEY `atlas_page` (`module`,`controller`,`action`)
) ENGINE=InnoDB AUTO_INCREMENT=868 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_navitem_menu_category`
--

DROP TABLE IF EXISTS `hua_navitem_menu_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_navitem_menu_category` (
  `hua_navitem_menu_category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_navitem_menu_category_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_navitem_menu_category_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_navitem_menu_category_name` varchar(255) NOT NULL,
  PRIMARY KEY (`hua_navitem_menu_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_notification_delivery_method`
--

DROP TABLE IF EXISTS `hua_notification_delivery_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_notification_delivery_method` (
  `hua_notification_delivery_method_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_notification_delivery_method_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hua_notification_delivery_method_date_created` datetime NOT NULL,
  `hua_notification_log_id` int(11) unsigned NOT NULL,
  `hua_notification_delivery_plugin_id` int(11) unsigned NOT NULL,
  `hua_notification_log_success` tinyint(1) NOT NULL DEFAULT '1',
  `hua_notification_log_error_info` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_notification_delivery_method_id`),
  KEY `hua_notification_log_id` (`hua_notification_log_id`),
  KEY `hua_notification_delivery_plugin_idx` (`hua_notification_delivery_plugin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_notification_delivery_plugin`
--

DROP TABLE IF EXISTS `hua_notification_delivery_plugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_notification_delivery_plugin` (
  `hua_notification_delivery_plugin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_notification_delivery_plugin_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_notification_delivery_plugin_date_created` datetime DEFAULT NULL,
  `hua_notification_delivery_plugin_name` varchar(255) NOT NULL,
  `hua_notification_delivery_plugin_description` varchar(255) NOT NULL,
  `hua_notification_delivery_plugin_short_name` varchar(255) NOT NULL,
  `hua_notification_delivery_plugin_default` tinyint(1) NOT NULL DEFAULT '0',
  `hua_notification_delivery_plugin_disabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_notification_delivery_plugin_id`),
  KEY `ixPluginName` (`hua_notification_delivery_plugin_name`),
  KEY `ixPluginShortName` (`hua_notification_delivery_plugin_short_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_notification_event`
--

DROP TABLE IF EXISTS `hua_notification_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_notification_event` (
  `hua_notification_event_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_notification_event_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_notification_event_date_created` datetime DEFAULT NULL,
  `hua_notification_event_variable` varchar(255) NOT NULL,
  `hua_notification_event_description` varchar(140) NOT NULL,
  `hua_notification_event_protected` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hua_notification_event_active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `hua_administration_category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_notification_event_system_flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hua_feature_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_notification_event_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `hua_notification_event_class` varchar(255) NOT NULL,
  `hua_notification_event_allow_external_targets` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `hua_notification_event_cc` text,
  `hua_notification_event_bcc` text,
  `hua_notification_event_ccbcc_protected` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_notification_event_id`),
  KEY `ixNotifEventVar` (`hua_notification_event_variable`),
  KEY `ixNotifDescript` (`hua_notification_event_description`),
  KEY `hua_administration_category_id` (`hua_administration_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_notification_log`
--

DROP TABLE IF EXISTS `hua_notification_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_notification_log` (
  `hua_notification_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_notification_log_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_notification_log_date_created` datetime DEFAULT NULL,
  `hua_notification_log_recipient` varchar(255) NOT NULL,
  `hua_notification_log_subject` varchar(140) NOT NULL,
  `hua_notification_log_body` mediumtext,
  `hua_notification_log_action_url` varchar(255) DEFAULT NULL,
  `hua_notification_log_event_variable` varchar(255) NOT NULL,
  `hua_notification_log_acknowledged` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_notification_log_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_notification_log_date_sent` datetime DEFAULT NULL,
  `hua_notification_log_date_to_send` datetime DEFAULT NULL,
  `hua_notification_log_sender` varchar(255) NOT NULL,
  PRIMARY KEY (`hua_notification_log_id`),
  KEY `ixLogRecipient` (`hua_notification_log_recipient`),
  KEY `ixLogSubject` (`hua_notification_log_subject`),
  KEY `ixLogAction` (`hua_notification_log_action_url`),
  KEY `hua_notification_log_date_created` (`hua_notification_log_date_created`),
  FULLTEXT KEY `hua_notification_log_body` (`hua_notification_log_body`)
) ENGINE=InnoDB AUTO_INCREMENT=16193 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_notification_merge_code`
--

DROP TABLE IF EXISTS `hua_notification_merge_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_notification_merge_code` (
  `hua_notification_merge_code_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_notification_merge_code_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_notification_merge_code_date_created` datetime DEFAULT NULL,
  `hua_notification_merge_code_code` varchar(255) NOT NULL,
  `hua_notification_merge_code_field` varchar(255) NOT NULL,
  `hua_notification_event_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_notification_merge_code_description` varchar(255) NOT NULL,
  `hua_notification_merge_code_processing` varchar(255) DEFAULT NULL,
  `hua_notification_merge_code_additional_information` text,
  PRIMARY KEY (`hua_notification_merge_code_id`),
  KEY `ixMergeCode` (`hua_notification_merge_code_code`),
  KEY `ixMergeField` (`hua_notification_merge_code_field`),
  KEY `ixNotificationId` (`hua_notification_event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=935 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_notification_personalized_setting`
--

DROP TABLE IF EXISTS `hua_notification_personalized_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_notification_personalized_setting` (
  `hua_notification_personalized_setting_id` int(10) NOT NULL AUTO_INCREMENT,
  `hua_notification_personalized_setting_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_notification_personalized_setting_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_administration_category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_notification_delivery_plugin_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_notification_personalized_setting_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `hua_administration_category_id` (`hua_administration_category_id`),
  KEY `hua_notification_delivery_plugin_id` (`hua_notification_delivery_plugin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_notification_template`
--

DROP TABLE IF EXISTS `hua_notification_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_notification_template` (
  `hua_notification_template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_notification_template_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_notification_template_date_created` datetime NOT NULL,
  `hua_notification_template_name` varchar(255) NOT NULL,
  `hua_notification_template_subject` varchar(140) NOT NULL,
  `hua_notification_template_body` mediumtext NOT NULL,
  `hua_language_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_notification_template_system_update` tinyint(3) unsigned DEFAULT NULL,
  `hua_notification_template_system_flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hua_notification_template_microblog` text,
  `hua_notification_template_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `hua_notification_event_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_notification_template_id`),
  KEY `ixTemplateName` (`hua_notification_template_name`),
  KEY `ixTemplateSubject` (`hua_notification_template_subject`),
  KEY `hua_language_id` (`hua_language_id`),
  KEY `hua_notification_template_system_update` (`hua_notification_template_system_update`),
  FULLTEXT KEY `hua_template_body` (`hua_notification_template_body`)
) ENGINE=InnoDB AUTO_INCREMENT=283 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_onet_import`
--

DROP TABLE IF EXISTS `hua_onet_import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_onet_import` (
  `hua_onet_import_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_onet_import_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_onet_import_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_onet_import_hua_table` char(100) NOT NULL,
  `hua_onet_import_hua_key` int(11) NOT NULL DEFAULT '0',
  `hua_onet_import_author_id` int(11) NOT NULL DEFAULT '0',
  `onet_soc_code` char(255) DEFAULT NULL,
  `element_id` char(255) DEFAULT NULL,
  `hua_onet_import_onet_table` char(255) DEFAULT NULL,
  PRIMARY KEY (`hua_onet_import_id`),
  KEY `hua_entity` (`hua_onet_import_hua_table`,`hua_onet_import_hua_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tracks which hua metrics/jobs/etc. have came from onet (inca';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_org_level`
--

DROP TABLE IF EXISTS `hua_org_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_org_level` (
  `hua_org_level_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_org_level_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_org_level_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_org_level_name` char(255) DEFAULT NULL,
  `hua_org_level_parent_id` int(10) unsigned DEFAULT '0',
  `hua_org_level_category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_org_level_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `hua_org_level_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `hua_org_level_code` varchar(255) DEFAULT NULL,
  `hua_org_level_nv` bigint(20) unsigned NOT NULL,
  `hua_org_level_dv` bigint(20) unsigned NOT NULL,
  `hua_org_level_snv` bigint(20) unsigned NOT NULL,
  `hua_org_level_sdv` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`hua_org_level_id`),
  KEY `hua_org_level_active` (`hua_org_level_active`),
  KEY `hua_org_level_category_id` (`hua_org_level_category_id`),
  KEY `hua_org_level_name` (`hua_org_level_name`),
  KEY `hua_org_level_parent_id` (`hua_org_level_parent_id`),
  KEY `hua_org_level_code` (`hua_org_level_code`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_org_level_translation_index`
--

DROP TABLE IF EXISTS `hua_org_level_translation_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_org_level_translation_index` (
  `hua_org_level_id` int(11) NOT NULL,
  `hua_language_id` int(11) NOT NULL,
  `hua_org_level_name` varchar(255) NOT NULL,
  `time_to_live` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_org_level_id`,`hua_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_organizational_impact`
--

DROP TABLE IF EXISTS `hua_organizational_impact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_organizational_impact` (
  `hua_organizational_impact_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_organizational_impact_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_organizational_impact_date_created` datetime DEFAULT NULL,
  `hua_organizational_impact_name` char(255) DEFAULT NULL,
  `hua_organizational_impact_value` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_organizational_impact_system_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_organizational_impact_order` smallint(5) unsigned NOT NULL,
  `hua_organizational_impact_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_organizational_impact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_page_option`
--

DROP TABLE IF EXISTS `hua_page_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_page_option` (
  `hua_page_option_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_page_option_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_page_option_date_created` datetime NOT NULL,
  `hua_page_option_name` varchar(255) NOT NULL,
  `hua_page_option_description` varchar(255) NOT NULL,
  `hua_page_option_type` varchar(50) NOT NULL,
  `hua_page_option_custom_layout` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_page_option_id`),
  KEY `hua_page_option_name` (`hua_page_option_name`),
  KEY `hua_page_option_type` (`hua_page_option_type`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_personalized_datatable_sort`
--

DROP TABLE IF EXISTS `hua_personalized_datatable_sort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_personalized_datatable_sort` (
  `hua_personalized_datatable_sort_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_id` int(10) unsigned NOT NULL,
  `hua_personalized_datatable_sort_page_url` varchar(256) NOT NULL,
  `hua_personalized_datatable_sort_datatable_id` varchar(256) NOT NULL,
  `hua_personalized_datatable_sort_order` varchar(900) NOT NULL COMMENT 'serialized array of the session sort',
  PRIMARY KEY (`hua_personalized_datatable_sort_id`),
  KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='saves the personalized sorting order for datatables per user';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_personalized_setting`
--

DROP TABLE IF EXISTS `hua_personalized_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_personalized_setting` (
  `hua_personalized_setting_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_personalized_setting_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_personalized_setting_date_created` datetime NOT NULL,
  `hua_personalized_setting_variable` varchar(255) NOT NULL,
  `hua_personalized_setting_name` varchar(255) NOT NULL,
  `hua_personalized_setting_description` varchar(255) NOT NULL,
  `hua_personalized_setting_type` varchar(255) NOT NULL,
  `hua_personalized_setting_option_source` varchar(255) NOT NULL,
  `hua_personalized_setting_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `hua_personalized_setting_visible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `hua_feature_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_personalized_setting_system_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_personalized_setting_id`),
  KEY `hua_personalized_setting_variable` (`hua_personalized_setting_variable`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_personalized_setting_option`
--

DROP TABLE IF EXISTS `hua_personalized_setting_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_personalized_setting_option` (
  `hua_personalized_setting_option_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_personalized_setting_option_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_personalized_setting_option_date_created` datetime NOT NULL,
  `hua_personalized_setting_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_personalized_setting_option_name` varchar(255) NOT NULL,
  `hua_personalized_setting_option_value` varchar(255) NOT NULL,
  `hua_personalized_setting_option_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  `hua_personalized_setting_option_system_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_personalized_setting_option_id`),
  KEY `hua_personalized_setting_id` (`hua_personalized_setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_phone`
--

DROP TABLE IF EXISTS `hua_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_phone` (
  `hua_phone_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_phone_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_phone_date_created` datetime DEFAULT NULL,
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_phone_name` char(30) DEFAULT NULL,
  `hua_phone_number` char(30) DEFAULT NULL,
  `hua_phone_primary` tinyint(1) NOT NULL DEFAULT '0',
  `hua_phone_is_sms_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `hua_country_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_phone_id`),
  KEY `hua_phone_FKIndex1` (`hua_user_id`),
  KEY `hua_phone_number` (`hua_phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=6633 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_phone_type`
--

DROP TABLE IF EXISTS `hua_phone_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_phone_type` (
  `hua_phone_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_phone_type_value` varchar(255) NOT NULL,
  `hua_phone_type_order` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_phone_type_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_phone_type_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_phone_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`hua_phone_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_position`
--

DROP TABLE IF EXISTS `hua_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_position` (
  `hua_position_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_position_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_position_date_created` datetime DEFAULT NULL,
  `hua_location_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_cost_center_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_job_id` int(10) unsigned DEFAULT NULL,
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_position_code` char(255) DEFAULT NULL,
  `hua_position_salary` decimal(15,2) DEFAULT NULL,
  `hua_position_key` tinyint(1) DEFAULT NULL,
  `hua_position_start_date` datetime DEFAULT NULL,
  `hua_position_duration` int(11) DEFAULT NULL,
  `hua_position_salary_currency_id` int(10) unsigned DEFAULT NULL,
  `hua_position_new_hire_exported` datetime DEFAULT NULL,
  `hua_position_hire_date` date DEFAULT NULL,
  PRIMARY KEY (`hua_position_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `hua_cost_center_id` (`hua_cost_center_id`),
  KEY `user_job` (`hua_user_id`,`hua_job_id`),
  KEY `hua_job_id` (`hua_job_id`,`hua_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=354 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_position_changes`
--

DROP TABLE IF EXISTS `hua_position_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_position_changes` (
  `hua_position_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_location_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_cost_center_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_job_id` int(10) unsigned DEFAULT NULL,
  `hua_changes_id` int(10) unsigned DEFAULT NULL,
  `hua_position_code` char(255) DEFAULT NULL,
  `hua_position_salary` float DEFAULT NULL,
  `hua_position_key` tinyint(1) DEFAULT NULL,
  `hua_position_start_date` datetime DEFAULT NULL,
  `hua_changes_approval_id` int(11) NOT NULL DEFAULT '0',
  `hua_position_changes_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`hua_position_changes_id`),
  KEY `hua_cost_center_id` (`hua_cost_center_id`),
  KEY `hua_job_id` (`hua_job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_report`
--

DROP TABLE IF EXISTS `hua_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_report` (
  `hua_report_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_report_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_report_date_created` datetime DEFAULT NULL,
  `hua_report_name` char(255) NOT NULL,
  `hua_report_description` char(255) NOT NULL,
  `hua_module_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_report_interface_script` char(255) NOT NULL,
  `hua_report_classname` char(255) NOT NULL,
  `hua_report_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `hua_report_custom_report` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_feature_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_report_category_id` int(11) NOT NULL DEFAULT '0',
  `hua_navitem_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_report_id`),
  KEY `hua_module_id` (`hua_module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_report_category`
--

DROP TABLE IF EXISTS `hua_report_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_report_category` (
  `hua_report_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_report_category_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_report_category_date_created` datetime NOT NULL,
  `hua_report_category_name` varchar(255) NOT NULL,
  `hua_report_category_desc` varchar(255) NOT NULL,
  `hua_report_category_parent_id` int(11) NOT NULL DEFAULT '0',
  `hua_navitem_id` int(11) NOT NULL DEFAULT '0',
  `hua_module_id` int(11) NOT NULL DEFAULT '0',
  `hua_navitem_menu_category_id` int(11) NOT NULL DEFAULT '0',
  `hua_report_category_order` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_report_category_column` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`hua_report_category_id`),
  KEY `hua_report_category_parent_idx` (`hua_report_category_parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_room`
--

DROP TABLE IF EXISTS `hua_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_room` (
  `hua_room_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_room_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_room_date_created` datetime DEFAULT NULL,
  `hua_room_name` char(255) DEFAULT NULL,
  `hua_room_number` char(255) DEFAULT NULL,
  `hua_building_id` int(10) unsigned DEFAULT NULL,
  `hua_room_contact` int(10) unsigned DEFAULT NULL,
  `hua_room_reserved` int(11) DEFAULT '0',
  `hua_room_special_instructions` char(255) DEFAULT NULL,
  `hua_room_seats` int(11) DEFAULT '0',
  `hua_room_disabled_comment` char(255) DEFAULT NULL,
  `OrganizationalUnit_oid` char(38) DEFAULT NULL,
  PRIMARY KEY (`hua_room_id`),
  KEY `hua_room_oid` (`OrganizationalUnit_oid`),
  KEY `room_building` (`hua_building_id`),
  KEY `room_contact` (`hua_room_contact`),
  KEY `room_name` (`hua_room_name`),
  KEY `room_reserved` (`hua_room_reserved`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_room_calendar`
--

DROP TABLE IF EXISTS `hua_room_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_room_calendar` (
  `hua_room_calendar_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_room_calendar_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_room_calendar_date_created` datetime DEFAULT NULL,
  `hua_room_id` int(11) unsigned DEFAULT NULL,
  `hua_calendar_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`hua_room_calendar_id`),
  KEY `calendar_id` (`hua_calendar_id`),
  KEY `room_id` (`hua_room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_room_reservation`
--

DROP TABLE IF EXISTS `hua_room_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_room_reservation` (
  `hua_room_reservation_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_room_reservation_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_room_reservation_date_created` datetime DEFAULT NULL,
  `hua_room_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`hua_room_reservation_id`),
  KEY `hua_room_id` (`hua_room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_room_reservation_time`
--

DROP TABLE IF EXISTS `hua_room_reservation_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_room_reservation_time` (
  `hua_room_reservation_time_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_room_reservation_time_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_room_reservation_time_date_created` datetime DEFAULT NULL,
  `hua_room_reservation_id` int(11) unsigned DEFAULT '0',
  `hua_room_reservation_start_time` datetime DEFAULT NULL,
  `hua_room_reservation_end_time` datetime DEFAULT NULL,
  `hua_room_reservation_time_name` char(255) DEFAULT NULL,
  `hua_room_reservation_time_description` char(255) DEFAULT NULL,
  PRIMARY KEY (`hua_room_reservation_time_id`),
  KEY `reservation_id` (`hua_room_reservation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_rss_feed`
--

DROP TABLE IF EXISTS `hua_rss_feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_rss_feed` (
  `hua_rss_feed_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_rss_feed_date_created` date NOT NULL,
  `hua_rss_feed_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_id` int(10) unsigned NOT NULL,
  `hua_rss_feed_source` varchar(255) NOT NULL,
  `hua_rss_feed_source_id` int(10) unsigned DEFAULT NULL,
  `hua_rss_feed_token` char(32) DEFAULT NULL,
  PRIMARY KEY (`hua_rss_feed_id`),
  KEY `hua_rss_feed_source` (`hua_rss_feed_source`),
  KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_salary_grade`
--

DROP TABLE IF EXISTS `hua_salary_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_salary_grade` (
  `hua_salary_grade_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_salary_grade_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_salary_grade_date_created` datetime DEFAULT NULL,
  `hua_salary_grade` char(255) DEFAULT NULL,
  `hua_user_salary_grade_low_range` double DEFAULT '0',
  `hua_user_salary_grade_high_range` double DEFAULT '0',
  `hua_salary_status` char(30) DEFAULT 'Exempt',
  `hua_salary_grade_deactivated` tinyint(1) unsigned DEFAULT '0',
  `hua_salary_grade_order` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`hua_salary_grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_scale`
--

DROP TABLE IF EXISTS `hua_scale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_scale` (
  `hua_scale_is_overall_scale` tinyint(1) DEFAULT '0',
  `hua_scale_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_scale_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_scale_date_created` datetime DEFAULT NULL,
  `hua_scale_name` char(255) DEFAULT NULL,
  `hua_scale_type` enum('radio','slider') DEFAULT NULL,
  `hua_scale_increment` double unsigned DEFAULT NULL,
  `hua_scale_upper` double unsigned DEFAULT NULL,
  `hua_scale_lower` double unsigned DEFAULT NULL,
  `hua_scale_overall_module` varchar(10) DEFAULT NULL,
  `hua_scale_display_option_employee` enum('both','numeric','text') NOT NULL DEFAULT 'both',
  `hua_scale_display_option_manager` enum('both','numeric','text') NOT NULL DEFAULT 'both',
  `hua_scale_display_option_appraiser` enum('both','numeric','text') NOT NULL DEFAULT 'both',
  `hua_scale_include_na` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_scale_id`),
  KEY `scale_id_index` (`hua_scale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_scale_value_name`
--

DROP TABLE IF EXISTS `hua_scale_value_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_scale_value_name` (
  `hua_scale_value_name_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_scale_id` int(10) unsigned DEFAULT NULL,
  `hua_scale_value` double DEFAULT NULL,
  `hua_scale_value_name` varchar(100) DEFAULT NULL,
  `hua_scale_value_description` text,
  `hua_scale_value_low_range` double NOT NULL DEFAULT '0',
  `hua_scale_value_high_range` double DEFAULT NULL,
  `hua_scale_value_comments_required` tinyint(4) NOT NULL DEFAULT '0',
  `hua_scale_value_name_date_created` datetime NOT NULL,
  `hua_scale_value_name_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`hua_scale_value_name_id`),
  KEY `hua_scale_id` (`hua_scale_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_scriptpage`
--

DROP TABLE IF EXISTS `hua_scriptpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_scriptpage` (
  `hua_scriptpage_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_scriptpage_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_scriptpage_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_scriptpage_url` char(255) DEFAULT NULL,
  `hua_scriptpage_system_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_scriptpage_id`),
  UNIQUE KEY `hua_scriptpage_url` (`hua_scriptpage_url`)
) ENGINE=InnoDB AUTO_INCREMENT=665 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_sent_letter_template`
--

DROP TABLE IF EXISTS `hua_sent_letter_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_sent_letter_template` (
  `hua_sent_letter_template_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_sent_letter_template_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_sent_letter_template_date_created` datetime NOT NULL,
  `hua_sent_letter_template_sender_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_sent_letter_template_recipient_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_letter_template_category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_sent_letter_template_subject` mediumtext NOT NULL,
  `hua_sent_letter_template_text` mediumtext NOT NULL,
  `hua_sent_letter_template_archived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_sent_letter_template_recipient_email` varchar(255) DEFAULT NULL,
  `hua_sent_letter_template_attachments` blob,
  `hua_letter_template_id` int(10) unsigned DEFAULT NULL,
  `hua_sent_letter_template_header_id` int(11) unsigned DEFAULT NULL,
  `hua_sent_letter_template_footer_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`hua_sent_letter_template_id`),
  KEY `ats_sent_letter_template_sender_id` (`hua_sent_letter_template_sender_id`),
  KEY `ats_sent_letter_template_recipient_id` (`hua_sent_letter_template_recipient_id`),
  KEY `ats_letter_template_category_id` (`hua_letter_template_category_id`),
  KEY `ats_sent_letter_template_recipient_email` (`hua_sent_letter_template_recipient_email`),
  FULLTEXT KEY `ats_sent_letter_template_text` (`hua_sent_letter_template_text`),
  FULLTEXT KEY `ats_sent_letter_template_subject` (`hua_sent_letter_template_subject`)
) ENGINE=InnoDB AUTO_INCREMENT=3752 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_setting`
--

DROP TABLE IF EXISTS `hua_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_setting` (
  `hua_setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_setting_type` enum('text','dual_list','new_select','new_options_list','yesno','date_input','range','color','select_employee') DEFAULT NULL,
  `hua_setting_source` enum('method','setting_value','table') NOT NULL,
  `hua_setting_date_created` datetime NOT NULL,
  `hua_setting_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_setting_name` char(255) NOT NULL,
  `hua_setting_description` char(255) NOT NULL,
  `hua_setting_validation` enum('single_option','multiple_option','boolean','string','number','date','numerical_range','color','email') NOT NULL,
  `hua_setting_system_flag` tinyint(4) NOT NULL,
  `hua_setting_hidden` tinyint(4) NOT NULL,
  `hua_setting_table_source` char(255) DEFAULT NULL,
  `hua_setting_configurator_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_setting_id`),
  KEY `hua_setting_name` (`hua_setting_name`)
) ENGINE=InnoDB AUTO_INCREMENT=390 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_setting_value`
--

DROP TABLE IF EXISTS `hua_setting_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_setting_value` (
  `hua_setting_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_setting_value_date_created` datetime DEFAULT NULL,
  `hua_setting_value_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_setting_id` int(11) DEFAULT NULL,
  `hua_setting_value` char(255) DEFAULT NULL,
  `hua_setting_value_order` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_setting_value_id`),
  KEY `hua_setting_id` (`hua_setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3733 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_skill`
--

DROP TABLE IF EXISTS `hua_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_skill` (
  `hua_skill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_skill_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_skill_date_created` datetime DEFAULT NULL,
  `hua_skill_category_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_skill_name` char(255) DEFAULT NULL,
  `hua_skill_approved` datetime DEFAULT NULL,
  `hua_skill_approver` int(10) unsigned DEFAULT NULL,
  `hua_skill_suggested_by` int(10) unsigned DEFAULT NULL,
  `hua_skill_active` int(1) unsigned DEFAULT '1',
  `hua_skill_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_skill_id`),
  KEY `hua_skill_approved` (`hua_skill_approved`),
  KEY `hua_skill_approver` (`hua_skill_approver`),
  KEY `hua_skill_category_id` (`hua_skill_category_id`),
  KEY `hua_skill_suggested_by` (`hua_skill_suggested_by`)
) ENGINE=InnoDB AUTO_INCREMENT=430 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_skill_category`
--

DROP TABLE IF EXISTS `hua_skill_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_skill_category` (
  `hua_skill_category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_skill_category_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_skill_category_date_created` datetime DEFAULT NULL,
  `hua_skill_category_name` char(255) DEFAULT NULL,
  `hua_skill_category_parent_id` int(10) unsigned DEFAULT NULL,
  `hua_skill_category_approved` datetime DEFAULT NULL,
  `hua_skill_category_approver` int(10) unsigned DEFAULT NULL,
  `hua_skill_category_suggested_by` int(10) unsigned DEFAULT NULL,
  `hua_skill_category_active` int(1) unsigned DEFAULT '1',
  `hua_skill_category_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_skill_category_id`),
  KEY `hua_skill_category_approver` (`hua_skill_category_approver`),
  KEY `hua_skill_category_parent_id` (`hua_skill_category_parent_id`),
  KEY `hua_skill_category_suggested_by` (`hua_skill_category_suggested_by`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_skill_last_used`
--

DROP TABLE IF EXISTS `hua_skill_last_used`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_skill_last_used` (
  `hua_skill_last_used_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_skill_last_used_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_skill_last_used_date_created` datetime DEFAULT NULL,
  `hua_skill_last_used_name` char(255) DEFAULT NULL,
  `hua_skill_last_used_order` smallint(6) DEFAULT NULL,
  `hua_skill_last_used_lower` int(11) DEFAULT NULL,
  `hua_skill_last_used_upper` int(11) DEFAULT NULL,
  `hua_skill_last_used_deactivated` tinyint(1) unsigned DEFAULT '0',
  `hua_skill_last_used_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_skill_last_used_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_skill_level`
--

DROP TABLE IF EXISTS `hua_skill_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_skill_level` (
  `hua_skill_level_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_skill_level_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_skill_level_date_created` datetime DEFAULT NULL,
  `hua_skill_level_name` char(255) DEFAULT NULL,
  `hua_skill_level_order` smallint(6) DEFAULT NULL,
  `hua_skill_level_deactivated` tinyint(1) unsigned DEFAULT '0',
  `hua_skill_level_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_skill_level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_skill_usage`
--

DROP TABLE IF EXISTS `hua_skill_usage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_skill_usage` (
  `hua_skill_usage_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_skill_usage_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_skill_usage_date_created` datetime DEFAULT NULL,
  `hua_skill_usage_name` char(255) DEFAULT NULL,
  `hua_skill_usage_order` smallint(6) DEFAULT NULL,
  `hua_skill_usage_lower` int(11) DEFAULT NULL,
  `hua_skill_usage_upper` int(11) DEFAULT NULL,
  `hua_skill_usage_deactivated` tinyint(1) unsigned DEFAULT '0',
  `hua_skill_usage_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_skill_usage_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_sms_log`
--

DROP TABLE IF EXISTS `hua_sms_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_sms_log` (
  `hua_sms_log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_sms_log_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hua_sms_log_date_created` datetime DEFAULT NULL,
  `hua_notification_log_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_sms_provider_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_sms_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_sms_provider`
--

DROP TABLE IF EXISTS `hua_sms_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_sms_provider` (
  `hua_sms_provider_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_sms_provider_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hua_sms_provider_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_sms_provider_name` varchar(255) NOT NULL,
  `hua_sms_provider_short_name` varchar(255) NOT NULL,
  `hua_sms_provider_url` varchar(255) NOT NULL,
  `hua_sms_provider_is_active` tinyint(1) NOT NULL DEFAULT '0',
  `hua_sms_provider_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_sms_provider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_soa_integration`
--

DROP TABLE IF EXISTS `hua_soa_integration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_soa_integration` (
  `hua_soa_integration_id` int(11) NOT NULL,
  `hua_soa_integration_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_soa_integration_date_created` datetime DEFAULT NULL,
  `hua_soa_integration_name` varchar(255) DEFAULT NULL,
  `hua_soa_integration_type_id` int(11) DEFAULT NULL,
  `hua_soa_integration_active` tinyint(1) DEFAULT NULL,
  `soa_authentication_token` varchar(255) DEFAULT NULL,
  `hua_soa_integration_version` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_soa_integration_last_run` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`hua_soa_integration_id`),
  KEY `soa_authentication_token` (`soa_authentication_token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_soa_integration_information_request`
--

DROP TABLE IF EXISTS `hua_soa_integration_information_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_soa_integration_information_request` (
  `hua_soa_integration_information_request_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_soa_integration_information_request_date_created` datetime DEFAULT NULL,
  `hua_soa_integration_information_request_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_soa_integration_type_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_soa_integration_request_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_soa_integration_information_request_name` varchar(255) NOT NULL DEFAULT '',
  `hua_soa_integration_information_request_target` varchar(255) NOT NULL DEFAULT '',
  `hua_soa_integration_information_request_xml` text,
  PRIMARY KEY (`hua_soa_integration_information_request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_soa_integration_link`
--

DROP TABLE IF EXISTS `hua_soa_integration_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_soa_integration_link` (
  `hua_soa_integration_link_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_soa_integration_link_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_soa_integration_link_date_created` datetime DEFAULT NULL,
  `hua_soa_integration_link_image_url` varchar(255) DEFAULT NULL,
  `hua_soa_integration_link_url` text,
  PRIMARY KEY (`hua_soa_integration_link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_soa_integration_link_postvar`
--

DROP TABLE IF EXISTS `hua_soa_integration_link_postvar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_soa_integration_link_postvar` (
  `hua_soa_integration_link_postvar_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_soa_integration_link_postvar_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_soa_integration_link_postvar_date_created` datetime DEFAULT NULL,
  `hua_soa_integration_link_id` int(11) DEFAULT NULL,
  `hua_soa_integration_link_postvar_name` varchar(255) DEFAULT NULL,
  `hua_soa_integration_link_postvar_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_soa_integration_link_postvar_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_soa_integration_type`
--

DROP TABLE IF EXISTS `hua_soa_integration_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_soa_integration_type` (
  `hua_soa_integration_type_id` int(11) NOT NULL,
  `hua_soa_integration_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_soa_integration_type_date_created` datetime DEFAULT NULL,
  `hua_soa_integration_type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_soa_integration_type_id`),
  KEY `hua_soa_integration_type_name` (`hua_soa_integration_type_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_social_site`
--

DROP TABLE IF EXISTS `hua_social_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_social_site` (
  `hua_social_site_id` int(10) NOT NULL AUTO_INCREMENT,
  `hua_social_site_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_social_site_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_social_site_name` varchar(255) DEFAULT NULL,
  `hua_social_site_url` varchar(255) DEFAULT NULL,
  `hua_social_site_searchable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_social_site_order` int(10) unsigned NOT NULL,
  `hua_social_site_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_social_site_system_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_social_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_sso_metadata_refresh`
--

DROP TABLE IF EXISTS `hua_sso_metadata_refresh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_sso_metadata_refresh` (
  `hua_sso_metadata_refresh_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_sso_metadata_refresh_date_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_sso_metadata_refresh_date_created` datetime NOT NULL,
  `hua_sso_metadata_refresh_dirname` varchar(255) NOT NULL,
  `hua_sso_metadata_refresh_url` varchar(255) NOT NULL,
  `hua_sso_metadata_refresh_type` varchar(12) NOT NULL DEFAULT 'flatfile',
  `hua_sso_metadata_refresh_config` enum('sp','idp') NOT NULL DEFAULT 'idp',
  `hua_sso_metadata_refresh_hour` int(11) unsigned DEFAULT NULL,
  `hua_sso_metadata_refresh_day` int(11) unsigned DEFAULT NULL,
  `hua_sso_metadata_refresh_date` int(11) unsigned DEFAULT NULL,
  `hua_sso_metadata_refresh_last_run` datetime DEFAULT NULL,
  `hua_sso_metadata_refresh_active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_sso_metadata_refresh_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_state`
--

DROP TABLE IF EXISTS `hua_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_state` (
  `hua_state_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_state_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_state_date_created` datetime DEFAULT NULL,
  `hua_country_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_state_name` char(255) DEFAULT NULL,
  `hua_state_abbreviation` varchar(255) DEFAULT NULL,
  `hua_state_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_state_id`),
  KEY `hua_state_abbr` (`hua_state_abbreviation`),
  KEY `hua_state_FKIndex1` (`hua_country_id`),
  KEY `hua_state_last_modified` (`hua_state_last_modified`)
) ENGINE=InnoDB AUTO_INCREMENT=5136 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_stopword`
--

DROP TABLE IF EXISTS `hua_stopword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_stopword` (
  `hua_stopword_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_stopword_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_stopword_date_created` datetime DEFAULT NULL,
  `hua_stopword` char(255) DEFAULT NULL,
  `hua_language_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_stopword_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_stopword_id`),
  KEY `hua_language_id` (`hua_language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=360 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_suggestion_box`
--

DROP TABLE IF EXISTS `hua_suggestion_box`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_suggestion_box` (
  `hua_suggestion_box_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_user_id` int(11) DEFAULT NULL,
  `hua_suggestion_box_text` mediumtext,
  `hua_suggestion_box_page` varchar(255) DEFAULT NULL,
  `hua_suggestion_box_full_url` varchar(255) DEFAULT NULL,
  `hua_suggestion_box_acknowledged` datetime DEFAULT NULL,
  `hua_suggestion_box_date_created` datetime DEFAULT NULL,
  `hua_suggestion_box_forward_hrsmart` datetime DEFAULT NULL,
  `hua_suggestion_box_forward_hrsmart_note` text,
  PRIMARY KEY (`hua_suggestion_box_id`),
  KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_system_notification_to_user`
--

DROP TABLE IF EXISTS `hua_system_notification_to_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_system_notification_to_user` (
  `hua_system_notification_to_user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_system_notification_to_user_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_system_notification_to_user_date_created` datetime DEFAULT NULL,
  `hua_system_notification_title` varchar(255) NOT NULL,
  `hua_user_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`hua_system_notification_to_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_taxable_entity`
--

DROP TABLE IF EXISTS `hua_taxable_entity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_taxable_entity` (
  `hua_taxable_entity_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_taxable_entity_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_taxable_entity_date_created` datetime DEFAULT NULL,
  `hua_taxable_entity_name` char(255) DEFAULT NULL,
  `hua_taxable_entity_code` char(255) DEFAULT NULL,
  `hua_taxable_entity_order` smallint(5) unsigned NOT NULL,
  `hua_taxable_entity_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_taxable_entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_template`
--

DROP TABLE IF EXISTS `hua_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_template` (
  `hua_template_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_template_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_template_date_created` datetime DEFAULT NULL,
  `hua_template_source_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_template_name` varchar(255) DEFAULT NULL,
  `hua_template_text` text,
  `hua_template_protected` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hua_module_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_language_id` int(10) unsigned NOT NULL DEFAULT '1',
  `hua_template_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `hua_template_module_group_id` int(10) unsigned DEFAULT '0',
  `hua_template_notification_class` varchar(255) DEFAULT NULL,
  `hua_template_subject` varchar(255) DEFAULT NULL,
  `hua_template_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_template_id`),
  KEY `hua_language_id` (`hua_language_id`),
  KEY `hua_module_id` (`hua_module_id`),
  KEY `hua_template_module_group_id` (`hua_template_module_group_id`),
  KEY `hua_template_source_id` (`hua_template_source_id`)
) ENGINE=InnoDB AUTO_INCREMENT=440 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_template_value`
--

DROP TABLE IF EXISTS `hua_template_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_template_value` (
  `hua_template_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_template_value_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_template_value_date_created` datetime DEFAULT NULL,
  `hua_template_id` int(11) DEFAULT NULL,
  `hua_template_value` char(255) DEFAULT NULL,
  `hua_template_value_description` char(255) DEFAULT NULL,
  `hua_template_value_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_template_value_id`),
  KEY `hua_template_id` (`hua_template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=468 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_temporary_attachment`
--

DROP TABLE IF EXISTS `hua_temporary_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_temporary_attachment` (
  `hua_temporary_attachment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_temporary_attachment_date_created` datetime NOT NULL,
  `hua_temporary_attachment_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_file_id` int(11) NOT NULL,
  `hua_temporary_attachment_creator_id` int(11) DEFAULT NULL,
  `hua_temporary_attachment_name` varchar(255) DEFAULT NULL,
  `hua_temporary_attachment_tmp_path` varchar(255) DEFAULT NULL,
  `hua_temporary_attachment_size` int(11) DEFAULT NULL,
  `hua_temporary_attachment_process_name` varchar(255) DEFAULT NULL,
  `hua_temporary_attachment_identifier` varchar(255) DEFAULT NULL,
  `hua_temporary_attachment_session_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_temporary_attachment_id`),
  KEY `hua_temporary_attachment_creator_id` (`hua_temporary_attachment_creator_id`),
  KEY `hua_temporary_attachment_process_name` (`hua_temporary_attachment_process_name`),
  KEY `hua_file_id` (`hua_file_id`),
  KEY `hua_temporary_attachment_last_modified` (`hua_temporary_attachment_last_modified`),
  KEY `hua_temporary_attachment_session_id` (`hua_temporary_attachment_session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_terms_of_use`
--

DROP TABLE IF EXISTS `hua_terms_of_use`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_terms_of_use` (
  `hua_terms_of_use_id` int(10) NOT NULL AUTO_INCREMENT,
  `hua_terms_of_use_last_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `hua_terms_of_use_date_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_terms_of_use_primary` tinyint(1) DEFAULT '0',
  `hua_terms_of_use_label` char(255) DEFAULT NULL,
  `hua_terms_of_use_statement` char(255) DEFAULT NULL,
  PRIMARY KEY (`hua_terms_of_use_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_terms_of_use_translation`
--

DROP TABLE IF EXISTS `hua_terms_of_use_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_terms_of_use_translation` (
  `hua_terms_of_use_translation_id` int(10) NOT NULL AUTO_INCREMENT,
  `hua_terms_of_use_translation_last_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `hua_terms_of_use_translation_date_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_terms_of_use_id` int(10) NOT NULL,
  `hua_language_id` int(10) NOT NULL,
  `hua_terms_of_use_translation_active` tinyint(1) DEFAULT '0',
  `hua_terms_of_use_translation_default` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`hua_terms_of_use_translation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_test`
--

DROP TABLE IF EXISTS `hua_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_test` (
  `hua_test_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_test_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_test_date_created` datetime DEFAULT NULL,
  `hua_test_name` char(255) DEFAULT NULL,
  `hua_test_owner_id` int(11) DEFAULT NULL,
  `hua_test_start_date` date DEFAULT NULL,
  `hua_test_end_date` date DEFAULT NULL,
  `hua_test_status` char(255) DEFAULT NULL,
  `hua_test_instructions` char(255) DEFAULT NULL,
  `hua_test_total_time` int(11) DEFAULT NULL,
  `hua_test_start_message` char(255) DEFAULT NULL,
  `hua_test_final_message` char(255) DEFAULT NULL,
  `hua_test_minimum_score` double DEFAULT NULL,
  `hua_test_maximum_score` double DEFAULT NULL,
  `hua_test_template` int(11) DEFAULT NULL,
  `hua_test_survey` int(11) DEFAULT NULL,
  `hua_test_clone_id` int(10) unsigned DEFAULT NULL,
  `hua_test_parent_id` int(11) DEFAULT '0',
  PRIMARY KEY (`hua_test_id`),
  KEY `hua_test_owner_id` (`hua_test_owner_id`),
  KEY `hua_test_status` (`hua_test_status`),
  KEY `hua_test_template` (`hua_test_template`),
  KEY `hua_test_survey` (`hua_test_survey`),
  KEY `hua_test_clone_id` (`hua_test_clone_id`),
  KEY `hua_test_parent_id` (`hua_test_parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_test_answer`
--

DROP TABLE IF EXISTS `hua_test_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_test_answer` (
  `hua_test_answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_test_answer_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_test_answer_date_created` datetime DEFAULT NULL,
  `hua_test_question_id` int(11) DEFAULT NULL,
  `hua_test_id` int(11) DEFAULT NULL,
  `hua_test_answer_order` smallint(6) DEFAULT NULL,
  `hua_test_answer` varchar(255) DEFAULT NULL,
  `hua_test_answer_scale` varchar(255) DEFAULT NULL,
  `hua_test_answer_value` smallint(6) DEFAULT NULL,
  `hua_test_answer_is_correct` tinyint(1) DEFAULT NULL,
  `hua_test_answer_if_correct` int(11) DEFAULT NULL,
  `hua_test_answer_if_wrong` int(11) DEFAULT NULL,
  `hua_test_answer_child` int(11) DEFAULT '0',
  `hua_test_answer_flag` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`hua_test_answer_id`),
  KEY `hua_test_id` (`hua_test_id`),
  KEY `hua_test_question_id` (`hua_test_question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_test_question`
--

DROP TABLE IF EXISTS `hua_test_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_test_question` (
  `hua_test_question_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_test_question_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_test_question_date_created` datetime DEFAULT NULL,
  `hua_test_id` int(11) DEFAULT NULL,
  `hua_test_question_type` char(255) DEFAULT NULL,
  `hua_test_question` text,
  `hua_test_question_image` char(255) DEFAULT NULL,
  `hua_test_question_instructions` char(255) DEFAULT NULL,
  `hua_test_question_string_beginning` char(255) DEFAULT NULL,
  `hua_test_question_string_end` char(255) DEFAULT NULL,
  `hua_test_question_comments` int(1) NOT NULL DEFAULT '0',
  `hua_test_question_optional` int(11) DEFAULT NULL,
  `hua_test_question_order` int(11) NOT NULL DEFAULT '0',
  `hua_test_question_default_child` int(11) DEFAULT '0',
  `hua_test_question_min_choices` int(11) NOT NULL DEFAULT '0',
  `hua_test_question_max_choices` int(11) NOT NULL DEFAULT '0',
  `hua_test_question_page_number` int(11) NOT NULL DEFAULT '0',
  `hua_test_question_parent_id` int(11) NOT NULL DEFAULT '0',
  `hua_test_question_category_group` int(11) NOT NULL DEFAULT '0',
  `hua_document_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_test_question_id`),
  KEY `hua_document_id` (`hua_document_id`),
  KEY `ticket_144729_test_id` (`hua_test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_test_taker`
--

DROP TABLE IF EXISTS `hua_test_taker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_test_taker` (
  `hua_test_taker_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_test_taker_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_test_taker_date_created` datetime DEFAULT NULL,
  `hua_test_id` int(11) DEFAULT NULL,
  `hua_user_id` int(11) DEFAULT NULL,
  `hua_test_taker_started` datetime DEFAULT NULL,
  `hua_test_taker_ended` datetime DEFAULT NULL,
  `hua_test_taker_final_comment` text,
  `hua_test_taker_calculated_score` double DEFAULT NULL,
  `hua_test_taker_overriden_score` double DEFAULT NULL,
  `hua_test_taker_overriden_comment` text,
  `hua_test_taker_overriden_by` int(11) DEFAULT NULL,
  `hua_test_taker_selected` tinyint(1) unsigned DEFAULT '1',
  `hua_test_current_question_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_test_taker_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `hua_test_id` (`hua_test_id`),
  KEY `hua_test_started_index` (`hua_test_id`,`hua_test_taker_started`),
  KEY `hua_test_ended_index` (`hua_test_id`,`hua_test_taker_ended`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_test_taker_answer`
--

DROP TABLE IF EXISTS `hua_test_taker_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_test_taker_answer` (
  `hua_test_taker_answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_test_taker_answer_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_test_taker_answer_date_created` datetime DEFAULT NULL,
  `hua_test_taker_id` int(11) DEFAULT NULL,
  `hua_test_taker_question_id` int(11) DEFAULT NULL,
  `hua_test_id` int(11) DEFAULT NULL,
  `hua_answer_id` int(11) DEFAULT NULL,
  `hua_test_taker_answer` text,
  `hua_test_taker_answer_ignore` int(11) NOT NULL DEFAULT '0',
  `hua_test_taker_answer_value` smallint(6) DEFAULT '0',
  PRIMARY KEY (`hua_test_taker_answer_id`),
  KEY `hua_test_taker_id` (`hua_test_taker_id`,`hua_test_taker_question_id`,`hua_test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_test_taker_question`
--

DROP TABLE IF EXISTS `hua_test_taker_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_test_taker_question` (
  `hua_test_taker_question_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_test_taker_question_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_test_taker_question_date_created` datetime DEFAULT NULL,
  `hua_test_taker_id` int(11) DEFAULT NULL,
  `hua_test_question_id` int(11) DEFAULT NULL,
  `hua_test_id` int(11) DEFAULT NULL,
  `hua_test_taker_question_start` datetime DEFAULT NULL,
  `hua_test_taker_question_end` datetime DEFAULT NULL,
  `hua_test_taker_question_review` tinyint(1) DEFAULT NULL,
  `hua_test_taker_question_comments` text,
  PRIMARY KEY (`hua_test_taker_question_id`),
  KEY `hua_test_id` (`hua_test_id`),
  KEY `ticket_144729_taker_id` (`hua_test_taker_id`),
  KEY `ticket_144729_taker_question_id` (`hua_test_question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_time_format`
--

DROP TABLE IF EXISTS `hua_time_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_time_format` (
  `hua_time_format_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_time_format_value` char(255) NOT NULL,
  `hua_time_format_pattern` char(255) NOT NULL,
  `hua_time_format_order` int(11) DEFAULT '0',
  `hua_time_format_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_time_format_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`hua_time_format_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_time_zone`
--

DROP TABLE IF EXISTS `hua_time_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_time_zone` (
  `hua_time_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_time_zone_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_time_zone_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_time_zone_value` char(255) NOT NULL,
  `hua_time_zone_abbreviation` char(255) NOT NULL,
  `hua_time_zone_code` char(255) NOT NULL,
  `hua_time_zone_order` int(11) DEFAULT '0',
  PRIMARY KEY (`hua_time_zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_travel`
--

DROP TABLE IF EXISTS `hua_travel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_travel` (
  `hua_travel_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_travel_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_travel_date_created` datetime DEFAULT NULL,
  `hua_travel_name` char(255) DEFAULT NULL,
  `hua_travel_order` smallint(5) unsigned DEFAULT NULL,
  `hua_travel_deactivated` tinyint(1) unsigned DEFAULT '0',
  `hua_travel_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_travel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_trigger`
--

DROP TABLE IF EXISTS `hua_trigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_trigger` (
  `hua_trigger_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_trigger_date_created` datetime NOT NULL,
  `hua_trigger_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_trigger_class` varchar(45) NOT NULL,
  `hua_feature_id` int(11) DEFAULT NULL,
  `hua_trigger_active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`hua_trigger_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_trigger_action`
--

DROP TABLE IF EXISTS `hua_trigger_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_trigger_action` (
  `hua_trigger_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_trigger_action_date_created` datetime NOT NULL,
  `hua_trigger_action_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_trigger_action_class` varchar(45) NOT NULL,
  `hua_feature_id` int(11) DEFAULT NULL,
  `hua_trigger_action_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`hua_trigger_action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_trigger_configured_action`
--

DROP TABLE IF EXISTS `hua_trigger_configured_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_trigger_configured_action` (
  `hua_trigger_configured_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_trigger_configured_action_date_created` datetime NOT NULL,
  `hua_trigger_configured_action_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_trigger_id` int(11) NOT NULL,
  `hua_trigger_action_id` int(11) NOT NULL,
  `hua_trigger_configured_action_functional_area` varchar(45) NOT NULL,
  `hua_trigger_configured_action_target_id` int(11) NOT NULL,
  PRIMARY KEY (`hua_trigger_configured_action_id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_trigger_configured_action_data`
--

DROP TABLE IF EXISTS `hua_trigger_configured_action_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_trigger_configured_action_data` (
  `hua_trigger_configured_action_data_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_trigger_configured_action_data_date_created` datetime NOT NULL,
  `hua_trigger_configured_action_data_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_trigger_configured_action_id` int(11) NOT NULL,
  `hua_trigger_configured_action_data_name` varchar(45) NOT NULL,
  `hua_trigger_configured_action_data_value` varchar(255) NOT NULL,
  PRIMARY KEY (`hua_trigger_configured_action_data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=524 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_trigger_queue`
--

DROP TABLE IF EXISTS `hua_trigger_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_trigger_queue` (
  `hua_trigger_queue_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_trigger_queue_date_created` datetime NOT NULL,
  `hua_trigger_queue_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_trigger_configured_action_id` int(11) NOT NULL,
  `hua_trigger_queue_action_date` datetime NOT NULL,
  `hua_trigger_queue_last_executed` datetime NOT NULL,
  `hua_trigger_queue_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`hua_trigger_queue_id`),
  KEY `hua_trigger_queue_active` (`hua_trigger_queue_active`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_trigger_queue_data`
--

DROP TABLE IF EXISTS `hua_trigger_queue_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_trigger_queue_data` (
  `hua_trigger_queue_data_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_trigger_queue_data_date_created` datetime NOT NULL,
  `hua_trigger_queue_data_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_trigger_queue_id` int(11) NOT NULL,
  `hua_trigger_queue_data_name` varchar(45) NOT NULL,
  `hua_trigger_queue_data_value` varchar(255) NOT NULL,
  PRIMARY KEY (`hua_trigger_queue_data_id`),
  KEY `hua_trigger_queue_data_name` (`hua_trigger_queue_data_name`),
  KEY `hua_trigger_queue_id` (`hua_trigger_queue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_two_factored_authentication`
--

DROP TABLE IF EXISTS `hua_two_factored_authentication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_two_factored_authentication` (
  `hua_two_factored_authentication_id` int(10) NOT NULL AUTO_INCREMENT,
  `hua_two_factored_authentication_date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `hua_two_factored_authentication_last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_id` int(10) NOT NULL,
  `hua_two_factored_authentication_issuer` varchar(255) NOT NULL,
  `hua_two_factored_authentication_secret` varchar(255) NOT NULL,
  PRIMARY KEY (`hua_two_factored_authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_union`
--

DROP TABLE IF EXISTS `hua_union`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_union` (
  `hua_union_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_union_name` varchar(255) NOT NULL,
  `hua_union_description` varchar(255) NOT NULL,
  `hua_union_date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hua_union_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_union_deactivated` tinyint(1) unsigned DEFAULT '0',
  `hua_union_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_union_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user`
--

DROP TABLE IF EXISTS `hua_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user` (
  `hua_user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_date_created` datetime DEFAULT NULL,
  `hua_state_id` int(10) unsigned DEFAULT NULL,
  `hua_user_email` varchar(255) DEFAULT NULL,
  `hua_user_password` varchar(255) NOT NULL,
  `hua_user_firstname` varchar(255) DEFAULT NULL,
  `hua_user_middlename` varchar(255) DEFAULT NULL,
  `hua_user_lastname` varchar(255) DEFAULT NULL,
  `hua_user_city` varchar(100) DEFAULT NULL,
  `hua_user_address_one` varchar(255) DEFAULT NULL,
  `hua_user_address_two` varchar(255) DEFAULT NULL,
  `hua_user_address_three` varchar(255) DEFAULT NULL,
  `hua_user_zipcode` varchar(20) DEFAULT NULL,
  `hua_user_dob` date DEFAULT NULL,
  `hua_user_added` datetime DEFAULT NULL,
  `hua_user_lockedout` datetime DEFAULT NULL,
  `hua_user_login` varchar(100) DEFAULT NULL,
  `hua_user_country` int(10) unsigned DEFAULT NULL,
  `hua_user_county_municipality` varchar(255) DEFAULT NULL,
  `hua_location_id` int(11) DEFAULT NULL,
  `hua_job_family_id` int(11) DEFAULT NULL,
  `hua_user_status_id` int(11) DEFAULT NULL,
  `hua_user_hire_date` date DEFAULT NULL,
  `hua_manager_id` int(10) unsigned DEFAULT NULL,
  `hua_user_extracurricular` varchar(255) DEFAULT NULL,
  `hua_user_employee_id` varchar(255) DEFAULT NULL,
  `hua_user_time_zone_id` int(11) unsigned DEFAULT NULL,
  `hua_user_secret_question` varchar(255) DEFAULT NULL,
  `hua_user_secret_answer` varchar(255) DEFAULT NULL,
  `hua_user_firsttime` datetime DEFAULT NULL,
  `OrganizationalUnit_oid` varchar(38) DEFAULT NULL,
  `hua_user_is_hrsmart` tinyint(1) DEFAULT NULL,
  `hua_user_terminated` datetime DEFAULT NULL,
  `hua_user_separation_date` datetime DEFAULT NULL,
  `hua_user_password_last_changed` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_user_is_external` tinyint(1) unsigned DEFAULT '0',
  `hua_org_level_id` int(11) unsigned DEFAULT '0',
  `hua_user_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_user_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `hua_user_internal_number` varchar(30) DEFAULT NULL,
  `hua_user_termination_reason` enum('voluntary','involuntary') NOT NULL DEFAULT 'voluntary',
  `hua_user_enroll_new_hire_curriculum` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_user_facebook_id` int(10) unsigned DEFAULT NULL,
  `hua_user_new_hire_exported` datetime DEFAULT NULL,
  `hua_user_deactivated` tinyint(1) NOT NULL DEFAULT '0',
  `hua_user_skipped_approver` tinyint(1) NOT NULL DEFAULT '0',
  `hua_user_original_email` varchar(255) DEFAULT NULL,
  `hua_user_rehire_eligibility_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_user_do_not_hire` tinyint(1) NOT NULL DEFAULT '0',
  `hua_user_is_former_employee` tinyint(1) NOT NULL DEFAULT '0',
  `hua_user_separation_comments` mediumtext,
  `hua_user_send_career_center_login_notification` tinyint(1) NOT NULL DEFAULT '0',
  `hua_user_education_level_id` int(11) unsigned DEFAULT '0',
  `hua_user_force_password_change` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_user_deleted` tinyint(1) DEFAULT '0',
  `hua_user_last_activity` datetime DEFAULT NULL,
  `hua_user_do_not_email` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_user_force_email_change` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_user_force_verify_email` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_user_hash` varchar(255) DEFAULT NULL,
  `hua_user_hash_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_taxable_entity_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_user_id`),
  KEY `hua_job_family_id` (`hua_job_family_id`),
  KEY `hua_user_oid` (`OrganizationalUnit_oid`),
  KEY `hua_user_zipcode` (`hua_user_zipcode`),
  KEY `hua_user_country` (`hua_user_country`),
  KEY `hua_state_id` (`hua_state_id`),
  KEY `hua_manager_id` (`hua_manager_id`),
  KEY `hua_user_email` (`hua_user_email`),
  KEY `hua_user_login` (`hua_user_login`),
  KEY `hua_location_id` (`hua_location_id`),
  KEY `hua_user_firstname` (`hua_user_firstname`),
  KEY `hua_user_lastname` (`hua_user_lastname`),
  KEY `hua_user_address_one` (`hua_user_address_one`),
  KEY `hua_user_address_two` (`hua_user_address_two`),
  KEY `hua_user_city` (`hua_user_city`),
  KEY `IDX_org_level` (`hua_org_level_id`),
  KEY `hua_user_deactivated` (`hua_user_deactivated`,`hua_user_terminated`),
  KEY `hua_user_employee_id` (`hua_user_employee_id`),
  KEY `hua_user_terminated` (`hua_user_terminated`),
  FULLTEXT KEY `hua_user_firstname_2` (`hua_user_firstname`,`hua_user_middlename`,`hua_user_lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=4822 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_address`
--

DROP TABLE IF EXISTS `hua_user_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_address` (
  `hua_user_address_id` int(10) NOT NULL AUTO_INCREMENT,
  `hua_user_id` int(10) NOT NULL DEFAULT '0',
  `hua_user_address_last_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_address_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_user_address_current` tinyint(1) DEFAULT '0',
  `hua_user_address_line_1` varchar(255) DEFAULT NULL,
  `hua_user_address_line_2` varchar(255) DEFAULT NULL,
  `hua_user_address_line_3` varchar(255) DEFAULT NULL,
  `hua_user_address_city` varchar(255) DEFAULT '',
  `hua_user_address_state` int(10) DEFAULT NULL,
  `hua_user_address_zip` varchar(255) DEFAULT '',
  `hua_user_address_country` int(10) DEFAULT '0',
  `hua_user_country_municipality` varchar(255) DEFAULT NULL,
  `hua_user_address_latitude` float(11,8) DEFAULT NULL,
  `hua_user_address_longitude` float(11,8) DEFAULT NULL,
  PRIMARY KEY (`hua_user_address_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `hua_user_address_current` (`hua_user_address_current`)
) ENGINE=InnoDB AUTO_INCREMENT=8697 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_association`
--

DROP TABLE IF EXISTS `hua_user_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_association` (
  `hua_user_association_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_association_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_association_date_created` datetime DEFAULT NULL,
  `hua_user_id` int(10) unsigned DEFAULT NULL,
  `hua_user_association_name` char(255) DEFAULT NULL,
  `hua_user_association_since` date DEFAULT NULL,
  PRIMARY KEY (`hua_user_association_id`),
  KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_cert`
--

DROP TABLE IF EXISTS `hua_user_cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_cert` (
  `hua_user_cert_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_cert_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_cert_date_created` datetime DEFAULT NULL,
  `hua_user_id` int(10) unsigned DEFAULT NULL,
  `hua_user_cert_name` char(255) DEFAULT NULL,
  `hua_user_cert_description` char(255) DEFAULT NULL,
  `hua_user_skill_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`hua_user_cert_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `hua_user_skill_id` (`hua_user_skill_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_changes`
--

DROP TABLE IF EXISTS `hua_user_changes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_changes` (
  `hua_changes_id` int(11) NOT NULL DEFAULT '0',
  `hua_state_id` int(10) unsigned DEFAULT NULL,
  `hua_user_email` char(255) DEFAULT NULL,
  `hua_user_password` char(32) DEFAULT NULL,
  `hua_user_firstname` char(255) DEFAULT NULL,
  `hua_user_middlename` char(255) DEFAULT NULL,
  `hua_user_lastname` char(255) DEFAULT NULL,
  `hua_user_city` char(100) DEFAULT NULL,
  `hua_user_address_one` char(255) DEFAULT NULL,
  `hua_user_address_two` char(255) DEFAULT NULL,
  `hua_user_zipcode` char(20) DEFAULT NULL,
  `hua_user_dob` date DEFAULT NULL,
  `hua_user_ssn` char(11) DEFAULT NULL,
  `hua_user_added` datetime DEFAULT NULL,
  `hua_user_lockedout` datetime DEFAULT NULL,
  `hua_user_login` char(100) DEFAULT NULL,
  `hua_user_country` char(100) DEFAULT NULL,
  `hua_user_lastlogin` datetime DEFAULT NULL,
  `hua_user_lang` int(11) DEFAULT '1',
  `hua_user_state` int(11) DEFAULT NULL,
  `hua_location_id` int(11) DEFAULT NULL,
  `hua_job_family_id` int(11) DEFAULT NULL,
  `hua_user_status` char(255) DEFAULT NULL,
  `hua_user_hire_date` date DEFAULT NULL,
  `hua_manager_id` int(10) unsigned DEFAULT NULL,
  `hua_changes_approval_id` int(11) DEFAULT '0',
  PRIMARY KEY (`hua_changes_id`),
  KEY `hua_job_family_id` (`hua_job_family_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_competency`
--

DROP TABLE IF EXISTS `hua_user_competency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_competency` (
  `hua_user_competency_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_competency_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_competency_date_created` datetime NOT NULL,
  `hua_user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_competency_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_user_competency_score` float DEFAULT NULL,
  `hua_user_competency_approved` datetime DEFAULT NULL,
  `hua_user_competency_type` varchar(255) DEFAULT NULL,
  `epm_appraisal_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_user_competency_endorsed` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_user_competency_valid_from` date DEFAULT NULL,
  `hua_user_competency_creator_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_course_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`hua_user_competency_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `hua_competency_id` (`hua_competency_id`),
  KEY `lms_course_id` (`lms_course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_css`
--

DROP TABLE IF EXISTS `hua_user_css`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_css` (
  `hua_user_css_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_user_css_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_css_date_created` datetime DEFAULT NULL,
  `hua_user_id` int(11) DEFAULT NULL,
  `hua_user_css_element` char(255) DEFAULT NULL,
  `hua_user_css_tag` char(255) DEFAULT NULL,
  `hua_user_css_value` char(255) DEFAULT NULL,
  PRIMARY KEY (`hua_user_css_id`),
  KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_diversity`
--

DROP TABLE IF EXISTS `hua_user_diversity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_diversity` (
  `hua_user_diversity_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_diversity_last_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_diversity_date_created` datetime NOT NULL,
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_diversity_category_value_id` int(11) unsigned DEFAULT NULL,
  `hua_user_diversity_type` enum('self','visual') NOT NULL DEFAULT 'self',
  `hua_diversity_category_id` int(11) unsigned DEFAULT NULL,
  `hua_user_diversity_additional_info` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`hua_user_diversity_id`),
  KEY `hua_diversity_category_value_id` (`hua_diversity_category_value_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `IDX_hua_user_diversity_type` (`hua_user_diversity_type`) USING BTREE,
  KEY `IDX_hua_diversity_category_id` (`hua_diversity_category_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=388 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_duplicate_account`
--

DROP TABLE IF EXISTS `hua_user_duplicate_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_duplicate_account` (
  `hua_user_duplicate_account_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_controller_to_page_option_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_user_secondary_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_user_duplicate_account_criteria` text,
  `hua_user_duplicate_account_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_user_duplicate_account_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`hua_user_duplicate_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_duplicate_account_detection`
--

DROP TABLE IF EXISTS `hua_user_duplicate_account_detection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_duplicate_account_detection` (
  `hua_user_duplicate_account_detection_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_duplicate_account_detection_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_duplicate_account_detection_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_user_duplicate_account_detection_criteria` text,
  `hua_controller_to_page_option_value_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_user_duplicate_account_detection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_education_history`
--

DROP TABLE IF EXISTS `hua_user_education_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_education_history` (
  `hua_user_education_history_id` int(10) NOT NULL AUTO_INCREMENT,
  `hua_user_id` int(10) NOT NULL DEFAULT '0',
  `hua_user_education_history_last_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_education_history_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_user_education_history_institution_id` int(10) DEFAULT '0',
  `hua_user_education_history_institution_name` varchar(255) DEFAULT NULL,
  `hua_user_education_history_area_of_study` varchar(255) DEFAULT NULL,
  `hua_user_education_history_certificate_earned_id` int(10) DEFAULT '0',
  `hua_user_education_history_certificate_earned_name` varchar(255) DEFAULT NULL,
  `hua_user_education_history_start_date` datetime DEFAULT NULL,
  `hua_user_education_history_end_date` datetime DEFAULT NULL,
  `hua_user_education_history_expiration_date` datetime DEFAULT NULL,
  `hua_user_education_history_details` text,
  PRIMARY KEY (`hua_user_education_history_id`),
  KEY `hua_user_id` (`hua_user_id`),
  FULLTEXT KEY `fulltext_hua_user_education_history_institution_name` (`hua_user_education_history_institution_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_education_history_pending`
--

DROP TABLE IF EXISTS `hua_user_education_history_pending`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_education_history_pending` (
  `hua_user_education_history_pending_id` int(10) NOT NULL AUTO_INCREMENT,
  `hua_user_education_history_id` int(10) NOT NULL,
  `hua_user_id` int(10) NOT NULL DEFAULT '0',
  `hua_user_education_history_pending_institution_id` int(10) DEFAULT '0',
  `hua_user_education_history_pending_institution_name` varchar(255) DEFAULT NULL,
  `hua_user_education_history_pending_area_of_study` varchar(255) DEFAULT NULL,
  `hua_user_education_history_pending_certificate_earned_id` int(10) DEFAULT '0',
  `hua_user_education_history_pending_certificate_earned_name` varchar(255) DEFAULT NULL,
  `hua_user_education_history_pending_start_date` datetime DEFAULT NULL,
  `hua_user_education_history_pending_end_date` datetime DEFAULT NULL,
  `hua_user_education_history_pending_expiration_date` datetime DEFAULT NULL,
  `hua_user_education_history_pending_details` text,
  `hua_user_education_history_pending_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_education_history_pending_date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`hua_user_education_history_pending_id`),
  KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_job_history`
--

DROP TABLE IF EXISTS `hua_user_job_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_job_history` (
  `hua_user_job_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_user_job_history_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_job_history_date_created` datetime DEFAULT NULL,
  `hua_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`hua_user_job_history_id`),
  KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_language`
--

DROP TABLE IF EXISTS `hua_user_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_language` (
  `hua_user_language_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_language_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_language_date_created` datetime DEFAULT NULL,
  `hua_user_id` int(10) unsigned DEFAULT NULL,
  `hua_user_language` char(255) DEFAULT NULL,
  `hua_user_language_proficiency` char(255) DEFAULT NULL,
  PRIMARY KEY (`hua_user_language_id`),
  KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_lastlogin`
--

DROP TABLE IF EXISTS `hua_user_lastlogin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_lastlogin` (
  `hua_user_lastlogin_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_user_lastlogin_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_lastlogin_date_created` datetime NOT NULL,
  `hua_user_id` int(11) NOT NULL,
  `hua_user_lastlogin_session_id` varchar(64) NOT NULL,
  `hua_user_lastlogin` datetime NOT NULL,
  `hua_user_lastlogin_browser_info` varchar(255) NOT NULL,
  `hua_user_prev_login_date` datetime DEFAULT NULL,
  PRIMARY KEY (`hua_user_lastlogin_id`),
  KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2219 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_leaving_reason`
--

DROP TABLE IF EXISTS `hua_user_leaving_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_leaving_reason` (
  `hua_user_leaving_reason_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_leaving_reason_code` varchar(255) NOT NULL,
  `hua_user_leaving_reason_value` varchar(255) NOT NULL,
  `hua_user_leaving_reason_order` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_user_leaving_reason_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_user_leaving_reason_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_leaving_reason_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_user_leaving_reason_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_link`
--

DROP TABLE IF EXISTS `hua_user_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_link` (
  `hua_user_link_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_user_secondary_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_user_linked_by` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_user_link_duplicate_criteria` text,
  `hua_user_link_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_user_link_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`hua_user_link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_masquerading_security`
--

DROP TABLE IF EXISTS `hua_user_masquerading_security`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_masquerading_security` (
  `hua_user_masquerading_security_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_masquerading_security_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_masquerading_security_date_created` datetime NOT NULL,
  `hua_user_masquerading_security_target_user` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_user_masquerading_security_source_ip` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_user_masquerading_security_key` varchar(255) NOT NULL,
  PRIMARY KEY (`hua_user_masquerading_security_id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_mydictionary`
--

DROP TABLE IF EXISTS `hua_user_mydictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_mydictionary` (
  `hua_user_mydictionary_id` int(10) NOT NULL AUTO_INCREMENT,
  `hua_word` char(255) DEFAULT NULL,
  `hua_word_length` int(11) DEFAULT NULL,
  `hua_word_metaphone` char(255) DEFAULT NULL,
  `hua_user_id` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_user_mydictionary_id`),
  KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_passport`
--

DROP TABLE IF EXISTS `hua_user_passport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_passport` (
  `hua_user_passport_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_passport_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_user_passport_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_passport_id_number` varchar(255) NOT NULL,
  `hua_user_id` int(11) unsigned NOT NULL,
  `hua_country_id` int(11) unsigned NOT NULL,
  `hua_user_passport_hash_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_user_passport_id`),
  KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=718 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_password_history`
--

DROP TABLE IF EXISTS `hua_user_password_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_password_history` (
  `hua_user_password_history_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_password_history_date_created` datetime NOT NULL,
  `hua_user_password_history_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hua_user_id` int(10) unsigned NOT NULL,
  `hua_user_password` varchar(255) NOT NULL,
  `hua_user_password_history_depth` smallint(2) unsigned NOT NULL,
  PRIMARY KEY (`hua_user_password_history_id`),
  KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=616 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_personalized_setting_option`
--

DROP TABLE IF EXISTS `hua_user_personalized_setting_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_personalized_setting_option` (
  `hua_user_personalized_setting_option_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_personalized_setting_option_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_personalized_setting_option_date_created` datetime NOT NULL,
  `hua_user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_personalized_setting_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_user_personalized_setting_option_value` varchar(255) NOT NULL,
  `hua_user_personalized_setting_option_system_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_user_personalized_setting_option_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `hua_personalized_setting_id` (`hua_personalized_setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2661 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_picture`
--

DROP TABLE IF EXISTS `hua_user_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_picture` (
  `hua_user_picture_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_picture_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hua_user_picture_date_created` datetime DEFAULT NULL,
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_user_picture_normal_file_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_user_picture_large_file_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_user_picture_system_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_user_picture_id`),
  KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_preference`
--

DROP TABLE IF EXISTS `hua_user_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_preference` (
  `hua_user_preference_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_preference_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_preference_date_created` datetime DEFAULT NULL,
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_user_preference_domestic_relocation` varchar(255) DEFAULT NULL,
  `hua_user_preference_international_relocation` varchar(255) DEFAULT NULL,
  `hua_user_relocation_comments` varchar(255) DEFAULT NULL,
  `hua_user_preference_special_needs` varchar(255) DEFAULT NULL,
  `hua_user_preference_medical_insurance` varchar(255) DEFAULT NULL,
  `hua_user_preference_available_date` datetime DEFAULT NULL,
  `hua_user_preference_availability` varchar(255) DEFAULT NULL,
  `hua_user_preference_preferred_job_location` varchar(255) DEFAULT NULL,
  `hua_user_preference_intro_blurb` varchar(255) DEFAULT NULL,
  `hua_user_preference_pic_file_id` int(11) unsigned DEFAULT NULL,
  `hua_preference_id` int(10) unsigned DEFAULT '0',
  `hua_user_preference_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_user_preference_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `hua_preference_id` (`hua_preference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_preference_job_category`
--

DROP TABLE IF EXISTS `hua_user_preference_job_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_preference_job_category` (
  `hua_user_preference_job_category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_preference_job_category_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_preference_job_category_date_created` datetime DEFAULT NULL,
  `hua_user_id` int(11) DEFAULT NULL,
  `hua_job_category_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`hua_user_preference_job_category_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `hua_job_category_id` (`hua_job_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_preference_job_type`
--

DROP TABLE IF EXISTS `hua_user_preference_job_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_preference_job_type` (
  `hua_user_preference_job_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_preference_job_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_preference_job_type_date_created` datetime DEFAULT NULL,
  `hua_user_id` int(11) DEFAULT NULL,
  `hua_job_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`hua_user_preference_job_type_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `hua_job_type_id` (`hua_job_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_rehire_eligibility`
--

DROP TABLE IF EXISTS `hua_user_rehire_eligibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_rehire_eligibility` (
  `hua_user_rehire_eligibility_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_rehire_eligibility_value` varchar(255) NOT NULL,
  `hua_user_rehire_eligibility_logical_value` enum('yes','no','conditional') DEFAULT NULL,
  `hua_user_rehire_eligibility_order` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_user_rehire_eligibility_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_user_rehire_eligibility_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_rehire_eligibility_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_user_rehire_eligibility_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_relationship`
--

DROP TABLE IF EXISTS `hua_user_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_relationship` (
  `hua_user_relationship_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_user_relationship_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_relationship_date_created` datetime NOT NULL,
  `hua_user_relationship_target_id` int(11) NOT NULL DEFAULT '0',
  `hua_user_relationship_owner_id` int(11) NOT NULL DEFAULT '0',
  `hua_user_relationship_type` enum('hrbp') NOT NULL DEFAULT 'hrbp',
  PRIMARY KEY (`hua_user_relationship_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_relocation`
--

DROP TABLE IF EXISTS `hua_user_relocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_relocation` (
  `hua_user_relocation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_relocation_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_relocation_date_created` datetime DEFAULT NULL,
  `hua_user_id` int(11) DEFAULT NULL,
  `hua_user_relocation_type` enum('domestic','international') DEFAULT NULL,
  `hua_state_id` int(10) unsigned DEFAULT NULL,
  `hua_country_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`hua_user_relocation_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `hua_country_id` (`hua_country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_responsible_location`
--

DROP TABLE IF EXISTS `hua_user_responsible_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_responsible_location` (
  `hua_user_responsible_location_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_responsible_location_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_responsible_location_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_location_id` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`hua_user_responsible_location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_responsible_location_group`
--

DROP TABLE IF EXISTS `hua_user_responsible_location_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_responsible_location_group` (
  `hua_user_responsible_location_group_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_responsible_location_group_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_responsible_location_group_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_location_group_id` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`hua_user_responsible_location_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_separation_reason`
--

DROP TABLE IF EXISTS `hua_user_separation_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_separation_reason` (
  `hua_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_user_reason_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_user_separation_type` enum('voluntary','involuntary') DEFAULT NULL,
  `hua_user_separation_reason_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_user_separation_reason_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`hua_user_id`,`hua_user_reason_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_skill`
--

DROP TABLE IF EXISTS `hua_user_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_skill` (
  `hua_user_skill_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_skill_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_skill_date_created` datetime DEFAULT NULL,
  `hua_user_id` int(10) unsigned DEFAULT NULL,
  `hua_skill_id` int(10) unsigned DEFAULT NULL,
  `hua_skill_level_id` int(11) DEFAULT NULL,
  `hua_skill_usage_id` int(11) DEFAULT NULL,
  `hua_skill_last_used_id` int(11) DEFAULT NULL,
  `hua_user_skill_endorsed` tinyint(9) DEFAULT '0',
  `hua_user_skill_valid_from` date DEFAULT NULL,
  PRIMARY KEY (`hua_user_skill_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `hua_skill_id` (`hua_skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_social_profile`
--

DROP TABLE IF EXISTS `hua_user_social_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_social_profile` (
  `hua_user_social_profile_id` int(10) NOT NULL AUTO_INCREMENT,
  `hua_user_social_profile_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_social_profile_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_user_id` int(10) unsigned NOT NULL,
  `hua_social_site_id` int(10) unsigned NOT NULL,
  `hua_user_social_profile_url` text,
  PRIMARY KEY (`hua_user_social_profile_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `hua_social_site_id` (`hua_social_site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_status`
--

DROP TABLE IF EXISTS `hua_user_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_status` (
  `hua_user_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_user_status_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_status_date_created` datetime DEFAULT NULL,
  `hua_user_status_name` char(255) DEFAULT NULL,
  `hua_user_status_sort` smallint(6) DEFAULT NULL,
  `hua_user_status_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_user_status_id`),
  KEY `user_status_sort` (`hua_user_status_sort`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_termination`
--

DROP TABLE IF EXISTS `hua_user_termination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_termination` (
  `hua_user_termination_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_termination_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_termination_date_created` datetime DEFAULT NULL,
  `hua_position_id` int(10) DEFAULT '0',
  `hua_location_id` int(10) unsigned DEFAULT '0',
  `hua_job_id` int(10) unsigned DEFAULT '0',
  `hua_user_id` int(10) unsigned DEFAULT '0',
  `hua_position_code` char(255) DEFAULT NULL,
  `hua_organizational_impact_id` int(11) unsigned DEFAULT '0',
  `hua_user_termination_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `hua_user_termination_date` datetime DEFAULT NULL,
  `hua_user_separation_date` datetime DEFAULT NULL,
  `hua_manager_id` int(10) unsigned DEFAULT NULL,
  `hua_position_start_date` datetime DEFAULT NULL,
  PRIMARY KEY (`hua_user_termination_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `hua_job_id` (`hua_job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_termination_grounds`
--

DROP TABLE IF EXISTS `hua_user_termination_grounds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_termination_grounds` (
  `hua_user_termination_grounds_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_termination_grounds_code` varchar(255) NOT NULL,
  `hua_user_termination_grounds_value` varchar(255) NOT NULL,
  `hua_user_termination_grounds_order` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_user_termination_grounds_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_user_termination_grounds_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_termination_grounds_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_user_termination_grounds_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_to_group`
--

DROP TABLE IF EXISTS `hua_user_to_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_to_group` (
  `hua_user_to_group_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_to_group_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_user_to_group_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_id` int(11) unsigned DEFAULT NULL,
  `hua_group_id` int(11) unsigned DEFAULT NULL,
  `hua_user_to_group_system_flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_user_to_group_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `hua_group_id` (`hua_group_id`),
  KEY `hua_user_group_idx` (`hua_user_id`,`hua_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4966 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_to_national_identifier`
--

DROP TABLE IF EXISTS `hua_user_to_national_identifier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_to_national_identifier` (
  `hua_user_to_national_identifier_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_national_identifier_id` int(10) unsigned NOT NULL,
  `hua_user_id` int(10) unsigned NOT NULL,
  `hua_user_to_national_identifier_date_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_user_to_national_identifier_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_to_national_identifier_code` varchar(255) DEFAULT NULL,
  `hua_user_to_national_identifier_hash_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_user_to_national_identifier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3946 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_to_terms_of_use_translation`
--

DROP TABLE IF EXISTS `hua_user_to_terms_of_use_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_to_terms_of_use_translation` (
  `hua_user_to_terms_of_use_translation_id` int(10) NOT NULL AUTO_INCREMENT,
  `hua_user_to_terms_of_use_translation_last_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_to_terms_of_use_translation_date_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_user_id` int(10) NOT NULL,
  `hua_terms_of_use_translation_id` int(10) NOT NULL,
  PRIMARY KEY (`hua_user_to_terms_of_use_translation_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `hua_terms_of_use_translation_id` (`hua_terms_of_use_translation_id`),
  KEY `hua_user_id_2` (`hua_user_id`,`hua_terms_of_use_translation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_travel`
--

DROP TABLE IF EXISTS `hua_user_travel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_travel` (
  `hua_user_travel_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_user_travel_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_travel_date_created` datetime DEFAULT NULL,
  `hua_user_id` int(11) DEFAULT NULL,
  `hua_travel_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`hua_user_travel_id`),
  KEY `hua_user_id` (`hua_user_id`),
  KEY `hua_travel_id` (`hua_travel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_work_history`
--

DROP TABLE IF EXISTS `hua_user_work_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_work_history` (
  `hua_user_work_history_id` int(10) NOT NULL AUTO_INCREMENT,
  `hua_user_id` int(10) NOT NULL DEFAULT '0',
  `hua_user_work_history_last_modified` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_work_history_date_created` datetime DEFAULT '0000-00-00 00:00:00',
  `hua_user_work_history_company_name` varchar(255) DEFAULT NULL,
  `hua_user_work_history_job_title` varchar(255) DEFAULT NULL,
  `hua_user_work_history_start_date` datetime DEFAULT NULL,
  `hua_user_work_history_end_date` datetime DEFAULT NULL,
  `hua_user_work_history_duties` text,
  `hua_user_work_history_contact_employer` int(2) DEFAULT NULL,
  `hua_user_work_history_contact_name` varchar(255) DEFAULT NULL,
  `hua_user_work_history_contact_phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`hua_user_work_history_id`),
  KEY `hua_user_id` (`hua_user_id`),
  FULLTEXT KEY `fulltext_hua_user_work_history_company_name` (`hua_user_work_history_company_name`),
  FULLTEXT KEY `fulltext_hua_user_work_history_job_title` (`hua_user_work_history_job_title`),
  FULLTEXT KEY `fulltext_hua_user_work_history_duties` (`hua_user_work_history_duties`)
) ENGINE=InnoDB AUTO_INCREMENT=4147 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_user_work_history_pending`
--

DROP TABLE IF EXISTS `hua_user_work_history_pending`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_user_work_history_pending` (
  `hua_user_work_history_pending_id` int(10) NOT NULL AUTO_INCREMENT,
  `hua_user_work_history_id` int(10) NOT NULL,
  `hua_user_id` int(10) NOT NULL DEFAULT '0',
  `hua_user_work_history_pending_company_name` varchar(255) DEFAULT NULL,
  `hua_user_work_history_pending_job_title` varchar(255) DEFAULT NULL,
  `hua_user_work_history_pending_start_date` datetime DEFAULT NULL,
  `hua_user_work_history_pending_end_date` datetime DEFAULT NULL,
  `hua_user_work_history_pending_duties` text,
  `hua_user_work_history_pending_contact_employer` int(2) DEFAULT NULL,
  `hua_user_work_history_pending_contact_name` varchar(255) DEFAULT NULL,
  `hua_user_work_history_pending_contact_phone` varchar(255) DEFAULT NULL,
  `hua_user_work_history_pending_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_user_work_history_pending_date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`hua_user_work_history_pending_id`),
  KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_validation`
--

DROP TABLE IF EXISTS `hua_validation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_validation` (
  `hua_validation_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_validation_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_validation_date_created` datetime DEFAULT NULL,
  `hua_module_id` int(11) DEFAULT NULL,
  `hua_validation_form` char(255) DEFAULT NULL,
  `hua_validation_field_name` char(255) DEFAULT NULL,
  `hua_validation_mask` char(255) DEFAULT NULL,
  `hua_validation_min_length` int(11) DEFAULT NULL,
  `hua_validation_max_length` int(11) DEFAULT NULL,
  `hua_validation_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_validation_id`),
  KEY `hua_module_id` (`hua_module_id`)
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_validation_rule`
--

DROP TABLE IF EXISTS `hua_validation_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_validation_rule` (
  `hua_validation_rule_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_validation_rule_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_validation_rule_date_created` datetime NOT NULL,
  `hua_validation_rule_form_id` varchar(255) NOT NULL,
  `hua_model_column_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_validation_rule_form_field` varchar(255) DEFAULT NULL,
  `hua_validation_rule_strategy` varchar(255) DEFAULT NULL,
  `hua_validation_rule_parameters` text,
  `hua_feature_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`hua_validation_rule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_video`
--

DROP TABLE IF EXISTS `hua_video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_video` (
  `hua_video_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_video_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_video_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_video_title` varchar(255) NOT NULL DEFAULT '',
  `hua_video_description` varchar(255) NOT NULL DEFAULT '',
  `hua_video_amazon_link` varchar(255) NOT NULL DEFAULT '',
  `hua_functional_area_id` int(10) unsigned NOT NULL,
  `hua_module_id` int(10) unsigned NOT NULL,
  `hua_feature_id` int(10) unsigned DEFAULT NULL,
  `hua_video_deactived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_video_id`),
  KEY `index2` (`hua_feature_id`),
  KEY `index3` (`hua_module_id`),
  KEY `index4` (`hua_functional_area_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74044 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_video_language`
--

DROP TABLE IF EXISTS `hua_video_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_video_language` (
  `hua_video_language_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_video_language_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_video_language_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_video_id` int(10) unsigned NOT NULL,
  `hua_language_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`hua_video_language_id`),
  UNIQUE KEY `uc_hua_video_language` (`hua_video_id`,`hua_language_id`),
  KEY `index3` (`hua_language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74044 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_video_page`
--

DROP TABLE IF EXISTS `hua_video_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_video_page` (
  `hua_video_page_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_video_page_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_video_page_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_video_id` int(10) unsigned NOT NULL,
  `hua_video_page_url` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`hua_video_page_id`),
  UNIQUE KEY `uc_hua_video_page` (`hua_video_id`,`hua_video_page_url`),
  KEY `hua_video_page_url` (`hua_video_page_url`)
) ENGINE=InnoDB AUTO_INCREMENT=107664 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_widget`
--

DROP TABLE IF EXISTS `hua_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_widget` (
  `hua_widget_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hua_widget_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_widget_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_widget_name` char(255) NOT NULL,
  `hua_widget_description` char(255) NOT NULL,
  `hua_widget_script_name` char(255) NOT NULL,
  `hua_widget_system_flag` tinyint(1) DEFAULT '1',
  `hua_feature_id` int(11) DEFAULT NULL,
  `hua_widget_width` tinyint(3) unsigned DEFAULT '1',
  PRIMARY KEY (`hua_widget_id`),
  KEY `hua_feature_id` (`hua_feature_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2245 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_widget_param`
--

DROP TABLE IF EXISTS `hua_widget_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_widget_param` (
  `hua_widget_param_widget_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_widget_param_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_widget_param_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_widget_param_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_widget_param_type` enum('user','template') NOT NULL DEFAULT 'user',
  `hua_widget_param_name` char(255) NOT NULL,
  `hua_widget_param_value` char(255) NOT NULL,
  `hua_widget_param_system_flag` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`hua_widget_param_widget_id`,`hua_widget_param_user_id`,`hua_widget_param_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_widget_to_group`
--

DROP TABLE IF EXISTS `hua_widget_to_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_widget_to_group` (
  `hua_widget_to_group_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `hua_widget_to_group_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_widget_to_group_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_widget_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_group_id` int(11) unsigned DEFAULT '0',
  `hua_widget_to_group_start_x` int(11) unsigned DEFAULT '0',
  `hua_widget_to_group_start_y` int(11) unsigned DEFAULT '0',
  PRIMARY KEY (`hua_widget_to_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_wizard`
--

DROP TABLE IF EXISTS `hua_wizard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_wizard` (
  `hua_wizard_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_wizard_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_wizard_date_created` datetime DEFAULT NULL,
  `hua_wizard_name` varchar(255) DEFAULT NULL,
  `hua_wizard_key` varchar(255) NOT NULL,
  `hua_wizard_creator_id` int(11) DEFAULT NULL,
  `hua_wizard_target_id` int(11) NOT NULL,
  `hua_wizard_position` int(11) DEFAULT NULL,
  `hua_wizard_highest_position` int(11) DEFAULT NULL,
  `hua_wizard_previous_position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_wizard_id`),
  KEY `hua_wizard_target_id` (`hua_wizard_target_id`,`hua_wizard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4764 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_wizard_context`
--

DROP TABLE IF EXISTS `hua_wizard_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_wizard_context` (
  `hua_wizard_context_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_wizard_context_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_wizard_context_date_created` datetime DEFAULT NULL,
  `hua_wizard_id` int(11) NOT NULL,
  `hua_wizard_context_name` varchar(255) DEFAULT NULL,
  `hua_wizard_context_value` text,
  PRIMARY KEY (`hua_wizard_context_id`),
  KEY `hua_wizard_id` (`hua_wizard_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21431 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_wizard_data`
--

DROP TABLE IF EXISTS `hua_wizard_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_wizard_data` (
  `hua_wizard_data_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_wizard_data_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_wizard_data_date_created` datetime DEFAULT NULL,
  `hua_wizard_id` int(11) NOT NULL,
  `hua_wizard_data_name` varchar(255) DEFAULT NULL,
  `hua_wizard_data_value` mediumtext,
  PRIMARY KEY (`hua_wizard_data_id`),
  KEY `hua_wizard_id` (`hua_wizard_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15573 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_wizard_step`
--

DROP TABLE IF EXISTS `hua_wizard_step`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_wizard_step` (
  `hua_wizard_step_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_wizard_step_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_wizard_step_date_created` datetime DEFAULT NULL,
  `hua_wizard_id` int(11) NOT NULL,
  `hua_wizard_step_name` varchar(255) DEFAULT NULL,
  `hua_wizard_step_position` int(11) DEFAULT NULL,
  PRIMARY KEY (`hua_wizard_step_id`),
  KEY `hua_wizard_id` (`hua_wizard_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14553 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hua_word`
--

DROP TABLE IF EXISTS `hua_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hua_word` (
  `hua_word_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_word` varchar(255) DEFAULT NULL,
  `hua_word_length` int(11) DEFAULT NULL,
  `hua_word_metaphone` varchar(255) DEFAULT NULL,
  `hua_language_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_word_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_word_id`),
  KEY `hua_language_id` (`hua_language_id`),
  FULLTEXT KEY `word_index` (`hua_word`)
) ENGINE=InnoDB AUTO_INCREMENT=96277 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_approval_type`
--

DROP TABLE IF EXISTS `lms_approval_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_approval_type` (
  `lms_approval_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_approval_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_approval_type_date_created` datetime DEFAULT NULL,
  `lms_approval_type_name` char(255) DEFAULT NULL,
  `lms_approval_type_protected` tinyint(1) DEFAULT '0',
  `lms_approval_type_deactivated` tinyint(1) unsigned DEFAULT '0',
  `lms_approval_type_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `lms_approval_type_order` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`lms_approval_type_id`),
  KEY `lms_approval_type_name` (`lms_approval_type_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_assistance`
--

DROP TABLE IF EXISTS `lms_assistance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_assistance` (
  `lms_assistance_id` int(11) NOT NULL AUTO_INCREMENT,
  `lms_assistance_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_assistance_date_created` datetime DEFAULT NULL,
  `lms_user_id` int(11) DEFAULT NULL,
  `lms_class_id` int(11) DEFAULT NULL,
  `lms_assistance_class_name` varchar(255) DEFAULT NULL,
  `lms_assistance_request_amount` double DEFAULT NULL,
  `lms_assistance_request_date` datetime DEFAULT NULL,
  `lms_assistance_comment` text,
  `lms_assistance_disposition_id` int(10) unsigned DEFAULT NULL,
  `lms_assistance_approved_amount` double DEFAULT NULL,
  `lms_assistance_disposition_date` datetime DEFAULT NULL,
  `lms_assistance_approver_user_id` int(11) DEFAULT NULL,
  `lms_assistance_approver_comment` text,
  `lms_assistance_acknowledge_date` datetime DEFAULT NULL,
  `lms_assistance_acknowledge_user_id` int(11) DEFAULT NULL,
  `lms_assistance_type_id` int(11) DEFAULT NULL,
  `lms_external_resource_id` int(11) unsigned DEFAULT NULL,
  `lms_assistance_final_payment_made` tinyint(1) unsigned DEFAULT '0',
  `le_class_start_date` datetime DEFAULT NULL,
  PRIMARY KEY (`lms_assistance_id`),
  KEY `lms_assistance_acknowledge_user_id` (`lms_assistance_acknowledge_user_id`),
  KEY `lms_assistance_approver_user_id` (`lms_assistance_approver_user_id`),
  KEY `lms_assistance_class_name` (`lms_assistance_class_name`),
  KEY `lms_assistance_disposition_id` (`lms_assistance_disposition_id`),
  KEY `lms_assistance_type_id` (`lms_assistance_type_id`),
  KEY `lms_class_id` (`lms_class_id`),
  KEY `lms_user_id` (`lms_user_id`),
  KEY `lms_external_resource_id` (`lms_external_resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_assistance_attachment`
--

DROP TABLE IF EXISTS `lms_assistance_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_assistance_attachment` (
  `lms_assistance_attachment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lms_assistance_attachment_date_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_assistance_attachment_date_created` datetime NOT NULL,
  `lms_assistance_attachment_name` varchar(255) DEFAULT NULL,
  `lms_assistance_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_class_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_external_resource_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_attachment_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`lms_assistance_attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_assistance_cap`
--

DROP TABLE IF EXISTS `lms_assistance_cap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_assistance_cap` (
  `lms_assistance_cap_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_assistance_cap_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_assistance_cap_date_created` datetime DEFAULT NULL,
  `hua_job_family_id` int(11) unsigned NOT NULL,
  `lms_assistance_cap_amount` float NOT NULL DEFAULT '0',
  `lms_assistance_cap_active` tinyint(1) unsigned DEFAULT '0',
  `lms_assistance_cap_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_assistance_cap_id`),
  UNIQUE KEY `hua_job_family_id` (`hua_job_family_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_assistance_disposition`
--

DROP TABLE IF EXISTS `lms_assistance_disposition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_assistance_disposition` (
  `lms_assistance_disposition_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_assistance_disposition_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lms_assistance_disposition_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_assistance_disposition_name` char(255) DEFAULT NULL,
  `lms_assistance_disposition_protected` tinyint(1) NOT NULL DEFAULT '0',
  `lms_assistance_disposition_parent_id` int(10) unsigned DEFAULT NULL,
  `lms_assistance_disposition_admin_only` tinyint(1) NOT NULL DEFAULT '0',
  `lms_assistance_disposition_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_assistance_disposition_id`),
  KEY `lms_assistance_disposition_name` (`lms_assistance_disposition_name`),
  KEY `lms_assistance_disposition_parent_id` (`lms_assistance_disposition_parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_assistance_payment`
--

DROP TABLE IF EXISTS `lms_assistance_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_assistance_payment` (
  `lms_assistance_payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `lms_assistance_payment_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_assistance_payment_date_created` datetime DEFAULT NULL,
  `lms_assistance_id` int(11) DEFAULT NULL,
  `lms_assistance_payment_name` varchar(255) DEFAULT NULL,
  `lms_assistance_payment_date` datetime DEFAULT NULL,
  `lms_assistance_payment_amount` double DEFAULT NULL,
  `lms_assistance_payment_comments` mediumtext,
  `lms_assistance_payment_payer_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`lms_assistance_payment_id`),
  KEY `lms_assistance_id` (`lms_assistance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_assistance_type`
--

DROP TABLE IF EXISTS `lms_assistance_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_assistance_type` (
  `lms_assistance_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `lms_assistance_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_assistance_type_date_created` datetime DEFAULT NULL,
  `lms_assistance_type_name` char(255) DEFAULT NULL,
  `lms_assistance_type_sort` int(11) DEFAULT NULL,
  `lms_assistance_type_protected` tinyint(1) DEFAULT '0',
  `lms_assistance_type_parent_id` int(11) DEFAULT NULL,
  `lms_assistance_type_admin_only` tinyint(1) NOT NULL DEFAULT '0',
  `lms_assistance_type_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_assistance_type_id`),
  KEY `lms_assistance_type_name` (`lms_assistance_type_name`),
  KEY `lms_assistance_type_parent_id` (`lms_assistance_type_parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_cbt_registration`
--

DROP TABLE IF EXISTS `lms_cbt_registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_cbt_registration` (
  `lms_cbt_registration_id` int(10) NOT NULL AUTO_INCREMENT,
  `lms_cbt_registration_date_created` datetime DEFAULT NULL,
  `lms_cbt_registration_last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_user_id` int(11) NOT NULL,
  `lms_course_id` int(11) NOT NULL,
  PRIMARY KEY (`lms_cbt_registration_id`),
  UNIQUE KEY `user_course_ux` (`lms_user_id`,`lms_course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_cbt_registration_progress`
--

DROP TABLE IF EXISTS `lms_cbt_registration_progress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_cbt_registration_progress` (
  `lms_cbt_registration_progress_id` int(10) NOT NULL AUTO_INCREMENT,
  `lms_cbt_registration_progress_date_created` datetime DEFAULT NULL,
  `lms_cbt_registration_progress_last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_cbt_registration_id` int(10) unsigned NOT NULL,
  `lms_class_student_id` int(10) unsigned NOT NULL,
  `lms_cbt_registration_progress_instance` int(11) DEFAULT NULL,
  `lms_cbt_registration_progress_completion` varchar(12) DEFAULT NULL,
  `lms_cbt_registration_progress_success` varchar(12) DEFAULT NULL,
  `lms_cbt_registration_progress_score` float DEFAULT NULL,
  `lms_cbt_registration_progress_total_seconds_tracked` float DEFAULT NULL,
  `lms_cbt_registration_progress_first_access_date` timestamp NULL DEFAULT NULL,
  `lms_cbt_registration_progress_last_access_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`lms_cbt_registration_progress_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_cbt_session`
--

DROP TABLE IF EXISTS `lms_cbt_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_cbt_session` (
  `lms_cbt_session_id` char(255) NOT NULL,
  `lms_class_student_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_aicc_au_id` char(255) NOT NULL,
  `lms_cbt_session_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_cbt_session_date_created` datetime DEFAULT NULL,
  `lms_cbt_session_time` char(13) NOT NULL,
  `lms_cbt_session_is_scorm` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_cbt_session_id`),
  KEY `lms_aicc_au_id` (`lms_aicc_au_id`),
  KEY `lms_class_student_id` (`lms_class_student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_cert`
--

DROP TABLE IF EXISTS `lms_cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_cert` (
  `lms_cert_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lms_cert_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_cert_date_created` datetime DEFAULT NULL,
  `lms_cert_acronym` char(255) DEFAULT NULL,
  `lms_cert_name` char(255) DEFAULT NULL,
  `lms_cert_description` longtext,
  `lms_cert_duration` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_cert_default_issued_by` char(255) DEFAULT NULL,
  `hua_file_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_cert_required_for_job` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lms_cert_status_id` int(10) unsigned NOT NULL DEFAULT '2',
  `lms_cert_publication_date` datetime DEFAULT NULL,
  `lms_cert_published_by` int(11) NOT NULL DEFAULT '0',
  `lms_cert_archived_date` datetime DEFAULT NULL,
  `lms_cert_archive_user` int(11) NOT NULL DEFAULT '0',
  `lms_cert_permanent` tinyint(1) NOT NULL DEFAULT '0',
  `lms_cert_renewal_period_duration` smallint(6) NOT NULL DEFAULT '30',
  PRIMARY KEY (`lms_cert_id`),
  KEY `hua_file_id` (`hua_file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_cert_course`
--

DROP TABLE IF EXISTS `lms_cert_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_cert_course` (
  `lms_cert_course_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lms_cert_course_date_created` datetime DEFAULT NULL,
  `lms_cert_course_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_course_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_cert_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_cert_course_id`),
  KEY `IDX_lms_cert_course` (`lms_course_id`,`lms_cert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_cert_program`
--

DROP TABLE IF EXISTS `lms_cert_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_cert_program` (
  `lms_cert_program_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lms_cert_program_date_created` datetime DEFAULT NULL,
  `lms_cert_program_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_program_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_cert_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_cert_program_id`),
  KEY `IDX_lms_cert_program` (`lms_program_id`,`lms_cert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_cert_status`
--

DROP TABLE IF EXISTS `lms_cert_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_cert_status` (
  `lms_cert_status_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_cert_status_date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lms_cert_status_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_cert_status_name` varchar(255) NOT NULL,
  `lms_cert_status_logical_value` varchar(255) NOT NULL,
  `lms_cert_status_protected` tinyint(1) DEFAULT '0',
  `lms_cert_status_deactivated` tinyint(1) unsigned DEFAULT '0',
  `lms_cert_status_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `lms_cert_status_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_cert_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_certificate`
--

DROP TABLE IF EXISTS `lms_certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_certificate` (
  `lms_certificate_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lms_certificate_date_created` datetime NOT NULL,
  `lms_certificate_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_certificate_page_size` enum('a4','letter') NOT NULL DEFAULT 'letter',
  `lms_certificate_background_image_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_certificate_middle_image_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_certificate_middle_alignment` enum('L','C','R') NOT NULL DEFAULT 'C',
  `lms_certificate_certification` tinyint(1) NOT NULL DEFAULT '0',
  `lms_certificate_certification_default` tinyint(1) NOT NULL DEFAULT '0',
  `lms_certificate_default` tinyint(1) NOT NULL DEFAULT '0',
  `lms_certificate_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lms_certificate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_certificate_image`
--

DROP TABLE IF EXISTS `lms_certificate_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_certificate_image` (
  `lms_certificate_image_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lms_certificate_image_date_created` datetime NOT NULL,
  `lms_certificate_image_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_file_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_certificate_image_width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lms_certificate_image_height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `lms_certificate_image_background` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_certificate_image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_class`
--

DROP TABLE IF EXISTS `lms_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_class` (
  `lms_class_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_class_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_class_date_created` datetime DEFAULT NULL,
  `lms_class_name` char(255) DEFAULT NULL,
  `lms_class_description` char(255) DEFAULT NULL,
  `lms_course_id` int(10) unsigned DEFAULT NULL,
  `hua_room_id` int(10) unsigned DEFAULT NULL,
  `lms_class_status_id` int(10) unsigned DEFAULT NULL,
  `lms_class_start_date` date DEFAULT NULL,
  `lms_class_end_date` date DEFAULT NULL,
  `lms_class_suppress_roster` tinyint(1) DEFAULT NULL,
  `lms_class_public` tinyint(1) DEFAULT '1',
  `lms_class_passing_grade` float DEFAULT NULL,
  `lms_class_capacity` int(10) unsigned DEFAULT NULL,
  `lms_class_waitlist_size` int(11) NOT NULL DEFAULT '25',
  `lms_class_cost` double DEFAULT NULL,
  `lms_class_student_fee` double DEFAULT NULL,
  `lms_class_minimum_students` int(11) DEFAULT '0',
  `lms_class_add_drop_date` datetime DEFAULT NULL,
  `lms_class_type` char(255) DEFAULT NULL,
  `lms_class_url` char(255) DEFAULT NULL,
  `lms_class_test_weight` int(11) DEFAULT NULL,
  `lms_class_assignment_weight` int(11) DEFAULT NULL,
  `lms_class_schedule_conflict` tinyint(1) unsigned DEFAULT '0',
  `lms_class_external_address` char(255) DEFAULT NULL,
  `lms_class_allow_drop_anytime` tinyint(1) DEFAULT '0',
  `OrganizationalUnit_oid` char(38) DEFAULT NULL,
  `lms_scorm_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lms_class_cbt_path` char(255) NOT NULL,
  `lms_class_is_scorm` tinyint(1) NOT NULL DEFAULT '0',
  `lms_class_show_noshow` tinyint(1) NOT NULL DEFAULT '0',
  `hua_job_family_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_org_level_id` int(11) NOT NULL DEFAULT '0',
  `lms_class_remote_learner_cap` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_class_onsite_learner_cap` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_class_id`),
  KEY `class_name_token` (`lms_class_name`),
  KEY `hua_job_family_id` (`hua_job_family_id`),
  KEY `hua_room_id` (`hua_room_id`),
  KEY `lms_class_description` (`lms_class_description`),
  KEY `lms_class_oid` (`OrganizationalUnit_oid`),
  KEY `lms_course_id` (`lms_course_id`),
  KEY `lms_scorm_id` (`lms_scorm_id`),
  KEY `status` (`lms_class_status_id`),
  KEY `hua_org_level_id` (`hua_org_level_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_class_assignment`
--

DROP TABLE IF EXISTS `lms_class_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_class_assignment` (
  `lms_class_assignment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_class_assignment_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_class_assignment_date_created` datetime DEFAULT NULL,
  `lms_class_id` int(10) unsigned DEFAULT NULL,
  `lms_class_assignment_name` char(255) DEFAULT NULL,
  `lms_class_assignment_description` char(255) DEFAULT NULL,
  `lms_class_assignment_date` datetime DEFAULT NULL,
  `lms_class_assignment_due_date` datetime DEFAULT NULL,
  `lms_class_assignment_weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`lms_class_assignment_id`),
  KEY `lms_class_assignment_description` (`lms_class_assignment_description`),
  KEY `lms_class_assignment_name` (`lms_class_assignment_name`),
  KEY `lms_class_id` (`lms_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_class_assignment_complete`
--

DROP TABLE IF EXISTS `lms_class_assignment_complete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_class_assignment_complete` (
  `lms_class_assignment_complete_id` int(11) NOT NULL AUTO_INCREMENT,
  `lms_class_assignment_complete_date_created` datetime DEFAULT NULL,
  `lms_class_assignment_complete_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_class_assignment_id` int(11) DEFAULT NULL,
  `lms_user_id` int(11) DEFAULT NULL,
  `lms_class_assignment_complete_date` datetime DEFAULT NULL,
  `lms_class_assignment_complete_grade` int(11) DEFAULT NULL,
  `lms_class_assignment_complete_comment` char(255) DEFAULT NULL,
  `graded_by_user_id` int(11) DEFAULT NULL,
  `hua_file_id` int(11) DEFAULT NULL,
  `lms_class_assignment_complete_grade_date` datetime DEFAULT NULL,
  `lms_class_id` int(11) DEFAULT NULL,
  `lms_class_student_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_class_assignment_complete_id`),
  KEY `graded_by_user_id` (`graded_by_user_id`),
  KEY `hua_file_id` (`hua_file_id`),
  KEY `lms_class_assignment_id` (`lms_class_assignment_id`),
  KEY `lms_class_id` (`lms_class_id`),
  KEY `lms_user_id` (`lms_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_class_assignment_deleted`
--

DROP TABLE IF EXISTS `lms_class_assignment_deleted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_class_assignment_deleted` (
  `lms_class_assignment_id` int(10) unsigned NOT NULL,
  `lms_class_assignment_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_class_assignment_date_created` datetime DEFAULT NULL,
  `lms_class_id` int(10) unsigned DEFAULT NULL,
  `lms_class_assignment_name` char(255) DEFAULT NULL,
  `lms_class_assignment_description` char(255) DEFAULT NULL,
  `lms_class_assignment_date` datetime DEFAULT NULL,
  `lms_class_assignment_due_date` datetime DEFAULT NULL,
  `lms_class_assignment_weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`lms_class_assignment_id`),
  KEY `lms_class_id` (`lms_class_assignment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_class_assignment_file`
--

DROP TABLE IF EXISTS `lms_class_assignment_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_class_assignment_file` (
  `lms_class_assignment_file_id` int(11) NOT NULL AUTO_INCREMENT,
  `lms_class_assignment_file_date_created` datetime DEFAULT NULL,
  `lms_class_assignment_file_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_class_assignment_id` int(11) DEFAULT NULL,
  `hua_file_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`lms_class_assignment_file_id`),
  KEY `hua_file_id` (`hua_file_id`),
  KEY `lms_class_assignment_id` (`lms_class_assignment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_class_attendance`
--

DROP TABLE IF EXISTS `lms_class_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_class_attendance` (
  `lms_class_attendance_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_class_attendance_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_class_attendance_date_created` datetime DEFAULT NULL,
  `lms_class_id` int(10) unsigned DEFAULT NULL,
  `lms_class_student_id` int(10) unsigned DEFAULT NULL,
  `lms_class_attendance_date` datetime DEFAULT NULL,
  `lms_class_attendance_status` char(255) DEFAULT NULL,
  `lms_class_attendance_taken_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`lms_class_attendance_id`),
  KEY `lms_class_attendance_status` (`lms_class_attendance_status`),
  KEY `lms_class_id` (`lms_class_id`),
  KEY `lms_class_student_id` (`lms_class_student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_class_competency_gained`
--

DROP TABLE IF EXISTS `lms_class_competency_gained`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_class_competency_gained` (
  `lms_class_competency_gained_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lms_class_competency_gained_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_class_competency_gained_date_created` datetime NOT NULL,
  `lms_class_id` int(11) NOT NULL DEFAULT '0',
  `hua_competency_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_class_competency_gained_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_class_equipment`
--

DROP TABLE IF EXISTS `lms_class_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_class_equipment` (
  `lms_class_equipment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_class_equipment_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_class_equipment_date_created` datetime DEFAULT NULL,
  `hua_equipment_id` int(10) unsigned DEFAULT NULL,
  `lms_class_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`lms_class_equipment_id`),
  KEY `hua_equipment_id` (`hua_equipment_id`),
  KEY `lms_class_id` (`lms_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_class_evaluation`
--

DROP TABLE IF EXISTS `lms_class_evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_class_evaluation` (
  `lms_class_evaluation_id` int(11) NOT NULL AUTO_INCREMENT,
  `lms_class_evaluation_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_class_evaluation_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hua_test_id` int(11) NOT NULL DEFAULT '0',
  `lms_class_id` int(11) NOT NULL DEFAULT '0',
  `lms_class_evaluation_admin_user_id` int(11) NOT NULL DEFAULT '0',
  `lms_class_evaluation_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_class_evaluation_id`),
  KEY `hua_test_id` (`hua_test_id`),
  KEY `lms_class_evaluation_admin_user_id` (`lms_class_evaluation_admin_user_id`),
  KEY `lms_class_id` (`lms_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_class_instructor`
--

DROP TABLE IF EXISTS `lms_class_instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_class_instructor` (
  `lms_class_instructor_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_class_instructor_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_class_instructor_date_created` datetime DEFAULT NULL,
  `lms_user_id` int(10) unsigned DEFAULT NULL,
  `lms_class_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`lms_class_instructor_id`),
  KEY `lms_class_id` (`lms_class_id`),
  KEY `lms_user_id` (`lms_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_class_material`
--

DROP TABLE IF EXISTS `lms_class_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_class_material` (
  `lms_class_material_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_class_material_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_class_material_date_created` datetime DEFAULT NULL,
  `lms_class_id` int(10) unsigned DEFAULT NULL,
  `lms_material_id` int(10) unsigned DEFAULT NULL,
  `lms_class_material_syllabus` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`lms_class_material_id`),
  KEY `lms_class_id` (`lms_class_id`),
  KEY `lms_material_id` (`lms_material_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_class_message`
--

DROP TABLE IF EXISTS `lms_class_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_class_message` (
  `lms_class_message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_class_message_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_class_message_date_created` datetime DEFAULT NULL,
  `lms_class_id` int(10) unsigned DEFAULT NULL,
  `lms_user_id` int(10) unsigned DEFAULT NULL,
  `lms_class_message` text,
  `lms_class_message_subject` varchar(255) DEFAULT NULL,
  `lms_class_message_parent_id` int(10) unsigned DEFAULT '0',
  `lms_class_message_is_headline` tinyint(1) DEFAULT NULL,
  `lms_class_message_date` datetime DEFAULT NULL,
  `lms_class_message_recipient` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`lms_class_message_id`),
  KEY `lms_class_id` (`lms_class_id`),
  KEY `lms_user_id` (`lms_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_class_skill_gained`
--

DROP TABLE IF EXISTS `lms_class_skill_gained`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_class_skill_gained` (
  `lms_class_skill_gained_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_class_skill_gained_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_class_skill_gained_date_created` datetime DEFAULT NULL,
  `lms_class_id` int(10) unsigned DEFAULT NULL,
  `hua_skill_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`lms_class_skill_gained_id`),
  KEY `hua_skill_id` (`hua_skill_id`),
  KEY `lms_class_id` (`lms_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_class_status`
--

DROP TABLE IF EXISTS `lms_class_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_class_status` (
  `lms_class_status_id` int(10) NOT NULL AUTO_INCREMENT,
  `lms_class_status_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_class_status_date_created` datetime DEFAULT NULL,
  `lms_class_status_name` char(255) NOT NULL,
  `lms_class_status_logical_value` char(255) DEFAULT NULL,
  `lms_class_status_protected` tinyint(1) NOT NULL DEFAULT '0',
  `lms_class_status_deactivated` tinyint(1) unsigned DEFAULT '0',
  `lms_class_status_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `lms_class_status_order` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`lms_class_status_id`),
  KEY `lms_class_status_name` (`lms_class_status_name`),
  KEY `lms_class_status_logical_value` (`lms_class_status_logical_value`),
  KEY `lms_class_status_order` (`lms_class_status_order`),
  KEY `lms_class_status_system_flag` (`lms_class_status_system_flag`),
  KEY `lms_class_status_deactivated` (`lms_class_status_deactivated`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_class_student`
--

DROP TABLE IF EXISTS `lms_class_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_class_student` (
  `lms_class_student_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_class_student_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_class_student_date_created` datetime DEFAULT NULL,
  `lms_class_id` int(10) unsigned DEFAULT NULL,
  `lms_user_id` int(10) unsigned DEFAULT NULL,
  `lms_class_student_status_id` int(10) DEFAULT NULL,
  `lms_class_student_grade` float DEFAULT NULL,
  `lms_class_student_pass_fail` tinyint(1) DEFAULT NULL,
  `lms_class_student_tested_out` tinyint(1) NOT NULL DEFAULT '0',
  `lms_class_student_grade_letter` char(2) DEFAULT NULL,
  `lms_class_student_learning_location_preference` varchar(255) DEFAULT NULL,
  `lms_class_student_completion_date` datetime DEFAULT NULL,
  PRIMARY KEY (`lms_class_student_id`),
  KEY `lms_class_id` (`lms_class_id`),
  KEY `lms_class_student_status_id` (`lms_class_student_status_id`),
  KEY `lms_user_id` (`lms_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_class_student_approver`
--

DROP TABLE IF EXISTS `lms_class_student_approver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_class_student_approver` (
  `lms_class_student_approver_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_class_student_approver_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_class_student_approver_date_created` datetime DEFAULT NULL,
  `lms_class_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lms_class_student_id` int(10) unsigned DEFAULT NULL,
  `lms_course_approval_type_id` int(10) unsigned DEFAULT NULL,
  `lms_class_student_approver` int(10) unsigned DEFAULT NULL,
  `lms_class_student_approver_sequence` int(10) unsigned DEFAULT NULL,
  `lms_class_student_approver_status` tinyint(1) DEFAULT NULL,
  `lms_class_student_approver_date` datetime DEFAULT NULL,
  `lms_class_student_approver_note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lms_class_student_approver_id`),
  KEY `lms_class_approval_type_id` (`lms_course_approval_type_id`),
  KEY `lms_class_id` (`lms_class_id`),
  KEY `lms_class_student_approver` (`lms_class_student_approver`),
  KEY `lms_class_student_id` (`lms_class_student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_class_student_status`
--

DROP TABLE IF EXISTS `lms_class_student_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_class_student_status` (
  `lms_class_student_status_id` int(10) NOT NULL AUTO_INCREMENT,
  `lms_class_student_status_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_class_student_status_date_created` datetime DEFAULT NULL,
  `lms_class_student_status_name` char(255) DEFAULT NULL,
  `lms_class_student_status_logical_value` char(255) DEFAULT NULL,
  `lms_class_student_status_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_class_student_status_id`),
  KEY `lms_class_student_status_name` (`lms_class_student_status_name`),
  KEY `lms_class_student_status_logical_value` (`lms_class_student_status_logical_value`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_class_time`
--

DROP TABLE IF EXISTS `lms_class_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_class_time` (
  `lms_class_time_id` int(11) NOT NULL AUTO_INCREMENT,
  `lms_class_time_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_class_time_date_created` datetime DEFAULT NULL,
  `lms_class_time_name` char(255) DEFAULT NULL,
  `lms_class_id` int(11) DEFAULT NULL,
  `hua_room_id` int(11) DEFAULT NULL,
  `lms_class_time_start_time` datetime DEFAULT NULL,
  `lms_class_time_end_time` datetime DEFAULT NULL,
  `lms_class_time_date` date DEFAULT NULL,
  `hua_room_reservation_time_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_class_time_ad_hoc_location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lms_class_time_id`),
  KEY `hua_room_id` (`hua_room_id`),
  KEY `lms_class_id` (`lms_class_id`),
  KEY `lms_class_time_date` (`lms_class_time_date`),
  KEY `lms_class_time_start_time` (`lms_class_time_start_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_class_topic`
--

DROP TABLE IF EXISTS `lms_class_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_class_topic` (
  `lms_class_topic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_class_topic_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_class_topic_date_created` datetime DEFAULT NULL,
  `lms_topic_id` int(10) unsigned DEFAULT NULL,
  `lms_class_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`lms_class_topic_id`),
  KEY `lms_class_id` (`lms_class_id`),
  KEY `lms_topic_id` (`lms_topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_class_waitlist`
--

DROP TABLE IF EXISTS `lms_class_waitlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_class_waitlist` (
  `lms_class_waitlist_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_class_waitlist_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_class_waitlist_date_created` datetime DEFAULT NULL,
  `lms_class_id` int(10) unsigned DEFAULT NULL,
  `lms_course_id` int(10) unsigned DEFAULT NULL,
  `lms_user_id` int(10) unsigned DEFAULT NULL,
  `lms_class_waitlist_order` int(10) unsigned DEFAULT NULL,
  `lms_class_waitlist_approved` tinyint(1) DEFAULT '0',
  `lms_class_waitlist_learning_location_preference` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lms_class_waitlist_id`),
  KEY `class_waitlist_approved` (`lms_class_waitlist_approved`),
  KEY `class_waitlist_order` (`lms_class_waitlist_order`),
  KEY `lms_class_id` (`lms_class_id`),
  KEY `lms_course_id` (`lms_course_id`),
  KEY `lms_user_id` (`lms_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_course`
--

DROP TABLE IF EXISTS `lms_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_course` (
  `lms_course_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_course_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_course_date_created` datetime DEFAULT NULL,
  `lms_course_name` char(255) DEFAULT NULL,
  `lms_course_description` char(255) DEFAULT NULL,
  `lms_course_recurring` tinyint(1) DEFAULT NULL,
  `lms_course_recurring_interval` float DEFAULT NULL,
  `lms_course_credits` float DEFAULT NULL,
  `lms_course_ceus` float DEFAULT NULL,
  `lms_course_status_id` int(10) DEFAULT NULL,
  `lms_course_cost` double DEFAULT NULL,
  `lms_course_type` char(255) DEFAULT NULL,
  `lms_course_url` char(255) DEFAULT NULL,
  `lms_course_external_address` char(255) DEFAULT NULL,
  `OrganizationalUnit_oid` char(38) DEFAULT NULL,
  `lms_course_cbt_path` char(255) NOT NULL,
  `lms_scorm_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lms_course_retake_available` tinyint(1) NOT NULL DEFAULT '0',
  `lms_course_new_hire_orientation` tinyint(3) unsigned DEFAULT NULL,
  `lms_course_online_aicc_id` varchar(255) DEFAULT NULL,
  `lms_course_source` varchar(50) DEFAULT NULL,
  `lms_elearning_import_job_scorm_engine_course_id` char(225) DEFAULT NULL,
  `lms_course_force_newest_cbt` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`lms_course_id`),
  KEY `lms_course_description` (`lms_course_description`),
  KEY `lms_course_name` (`lms_course_name`),
  KEY `lms_course_oid` (`OrganizationalUnit_oid`),
  KEY `lms_course_status_id` (`lms_course_status_id`),
  KEY `lms_course_type` (`lms_course_type`),
  KEY `lms_scorm_id` (`lms_scorm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_course_aicc_upload`
--

DROP TABLE IF EXISTS `lms_course_aicc_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_course_aicc_upload` (
  `lms_course_aicc_upload_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lms_course_aicc_upload_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_course_aicc_upload_date_created` datetime DEFAULT NULL,
  `lms_course_status_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_class_status_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_course_aicc_upload_name` varchar(255) NOT NULL,
  PRIMARY KEY (`lms_course_aicc_upload_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_course_approval_type`
--

DROP TABLE IF EXISTS `lms_course_approval_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_course_approval_type` (
  `lms_course_approval_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_course_approval_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_course_approval_type_date_created` datetime DEFAULT NULL,
  `lms_approval_type_id` int(10) unsigned DEFAULT NULL,
  `lms_course_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`lms_course_approval_type_id`),
  KEY `lms_approval_type_id` (`lms_approval_type_id`),
  KEY `lms_course_id` (`lms_course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_course_competency_gained`
--

DROP TABLE IF EXISTS `lms_course_competency_gained`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_course_competency_gained` (
  `lms_course_competency_gained_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lms_course_competency_gained_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_course_competency_gained_date_created` datetime NOT NULL,
  `lms_course_id` int(11) NOT NULL DEFAULT '0',
  `hua_competency_id` int(11) NOT NULL DEFAULT '0',
  `lms_course_competency_gained_rating` decimal(5,2) NOT NULL DEFAULT '0.00',
  `lms_course_competency_gained_order` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_course_competency_gained_id`),
  KEY `lms_course_competency_gained_order` (`lms_course_competency_gained_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_course_equipment`
--

DROP TABLE IF EXISTS `lms_course_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_course_equipment` (
  `lms_course_equipment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_course_equipment_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_course_equipment_date_created` datetime DEFAULT NULL,
  `lms_course_id` int(10) unsigned DEFAULT NULL,
  `lms_equipment_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`lms_course_equipment_id`),
  KEY `lms_course_id` (`lms_course_id`),
  KEY `lms_equipment_id` (`lms_equipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_course_learning_manager`
--

DROP TABLE IF EXISTS `lms_course_learning_manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_course_learning_manager` (
  `lms_course_learning_manager_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_course_learning_manager_date_created` datetime DEFAULT NULL,
  `lms_course_learning_manager_last_modified` timestamp NULL DEFAULT NULL,
  `lms_course_id` int(10) unsigned NOT NULL,
  `hua_user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`lms_course_learning_manager_id`),
  UNIQUE KEY `learning_manager_user_course` (`hua_user_id`,`lms_course_id`),
  KEY `learning_manager_course_user` (`lms_course_id`,`hua_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_course_material`
--

DROP TABLE IF EXISTS `lms_course_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_course_material` (
  `lms_course_material_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_course_material_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_course_material_date_created` datetime DEFAULT NULL,
  `lms_course_id` int(10) unsigned DEFAULT NULL,
  `lms_material_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`lms_course_material_id`),
  KEY `lms_course_id` (`lms_course_id`),
  KEY `lms_material_id` (`lms_material_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_course_media`
--

DROP TABLE IF EXISTS `lms_course_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_course_media` (
  `lms_course_media_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lms_course_media_date_created` datetime NOT NULL,
  `lms_course_media_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_course_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_file_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_course_media_url` varchar(255) DEFAULT NULL,
  `lms_course_media_upload_user` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_course_media_upload_datetime` datetime NOT NULL,
  `lms_course_media_active` tinyint(1) NOT NULL DEFAULT '0',
  `lms_course_media_private` tinyint(1) DEFAULT '0',
  `lms_course_media_required` tinyint(1) DEFAULT '1',
  `lms_course_media_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lms_course_media_id`),
  KEY `lms_course_media_active` (`lms_course_media_active`),
  KEY `lms_course_media_upload_user` (`lms_course_media_upload_user`),
  KEY `lms_course_id` (`lms_course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_course_media_signature`
--

DROP TABLE IF EXISTS `lms_course_media_signature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_course_media_signature` (
  `lms_course_media_signature_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lms_course_media_signature_date_created` datetime NOT NULL,
  `lms_course_media_signature_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_course_media_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_class_student_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_course_media_signature_fullname` varchar(255) DEFAULT NULL,
  `lms_course_media_signature_date` datetime NOT NULL,
  PRIMARY KEY (`lms_course_media_signature_id`),
  KEY `lms_course_media_signature_date` (`lms_course_media_signature_date`),
  KEY `lms_course_media_id` (`lms_course_media_id`,`lms_user_id`),
  KEY `lms_user_id` (`lms_user_id`,`lms_course_media_id`),
  KEY `lms_class_student_id` (`lms_class_student_id`,`lms_course_media_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_course_media_view`
--

DROP TABLE IF EXISTS `lms_course_media_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_course_media_view` (
  `lms_course_media_view_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lms_course_media_view_date_created` datetime NOT NULL,
  `lms_course_media_view_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_course_media_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_class_student_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_course_media_view_date` datetime NOT NULL,
  PRIMARY KEY (`lms_course_media_view_id`),
  KEY `lms_course_media_view_date` (`lms_course_media_view_date`),
  KEY `lms_course_media_id` (`lms_course_media_id`,`lms_user_id`),
  KEY `lms_user_id` (`lms_user_id`,`lms_course_media_id`),
  KEY `lms_class_student_id` (`lms_class_student_id`,`lms_course_media_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_course_prereq`
--

DROP TABLE IF EXISTS `lms_course_prereq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_course_prereq` (
  `lms_course_prereq_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_course_prereq_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_course_prereq_date_created` datetime DEFAULT NULL,
  `lms_course_id` int(10) unsigned DEFAULT NULL,
  `lms_course_prereq_course_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`lms_course_prereq_id`),
  KEY `lms_course_id` (`lms_course_id`),
  KEY `lms_course_id_2` (`lms_course_id`),
  KEY `lms_course_prereq_course_id` (`lms_course_prereq_course_id`),
  KEY `lms_course_prereq_course_id_2` (`lms_course_prereq_course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_course_recommendation`
--

DROP TABLE IF EXISTS `lms_course_recommendation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_course_recommendation` (
  `lms_course_recommendation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_course_recommendation_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_course_recommendation_date_created` datetime DEFAULT NULL,
  `lms_course_id` int(10) unsigned DEFAULT NULL,
  `lms_recommended_by` int(10) unsigned DEFAULT NULL,
  `lms_recommended_to` int(10) unsigned DEFAULT NULL,
  `lms_course_recommendation_date` datetime DEFAULT NULL,
  `lms_course_recommendation_acknowledgement` tinyint(1) DEFAULT '0',
  `lms_course_recommendation_required` int(11) DEFAULT '0',
  `lms_course_recommendation_in_progress` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`lms_course_recommendation_id`),
  KEY `lms_course_id` (`lms_course_id`),
  KEY `lms_recommended_by` (`lms_recommended_by`),
  KEY `lms_recommended_to` (`lms_recommended_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_course_skill_gained`
--

DROP TABLE IF EXISTS `lms_course_skill_gained`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_course_skill_gained` (
  `lms_course_skill_gained_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_course_skill_gained_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_course_skill_gained_date_created` datetime DEFAULT NULL,
  `lms_course_id` int(10) unsigned DEFAULT NULL,
  `hua_skill_id` int(10) unsigned DEFAULT NULL,
  `hua_skill_level_id` int(11) DEFAULT NULL,
  `lms_course_skill_gained_order` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_course_skill_gained_id`),
  KEY `hua_skill_id` (`hua_skill_id`),
  KEY `lms_course_id` (`lms_course_id`),
  KEY `hua_skill_level_id` (`hua_skill_level_id`),
  KEY `lms_course_skill_gained_order` (`lms_course_skill_gained_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_course_status`
--

DROP TABLE IF EXISTS `lms_course_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_course_status` (
  `lms_course_status_id` int(10) NOT NULL AUTO_INCREMENT,
  `lms_course_status_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_course_status_date_created` datetime DEFAULT NULL,
  `lms_course_status_name` char(255) NOT NULL,
  `lms_course_status_logical_value` char(255) DEFAULT NULL,
  `lms_course_status_protected` tinyint(1) DEFAULT '0',
  `lms_course_status_deactivated` tinyint(1) unsigned DEFAULT '0',
  `lms_course_status_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `lms_course_status_order` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`lms_course_status_id`),
  KEY `lms_course_status_name` (`lms_course_status_name`),
  KEY `lms_course_status_logical_value` (`lms_course_status_logical_value`),
  KEY `lms_course_status_order` (`lms_course_status_order`),
  KEY `lms_course_status_system_flag` (`lms_course_status_system_flag`),
  KEY `lms_course_status_deactivated` (`lms_course_status_deactivated`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_course_topic`
--

DROP TABLE IF EXISTS `lms_course_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_course_topic` (
  `lms_course_topic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_course_topic_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_course_topic_date_created` datetime DEFAULT NULL,
  `lms_course_id` int(10) unsigned DEFAULT NULL,
  `lms_topic_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`lms_course_topic_id`),
  KEY `lms_course_id` (`lms_course_id`),
  KEY `lms_topic_id` (`lms_topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_course_waitlist`
--

DROP TABLE IF EXISTS `lms_course_waitlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_course_waitlist` (
  `lms_course_waitlist_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_course_waitlist_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_course_waitlist_date_created` datetime DEFAULT NULL,
  `lms_course_id` int(10) unsigned DEFAULT NULL,
  `lms_user_id` int(10) unsigned DEFAULT NULL,
  `lms_course_waitlist_order` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`lms_course_waitlist_id`),
  KEY `course_waitlist_order` (`lms_course_waitlist_order`),
  KEY `lms_course_id` (`lms_course_id`),
  KEY `lms_user_id` (`lms_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_curriculum`
--

DROP TABLE IF EXISTS `lms_curriculum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_curriculum` (
  `lms_curriculum_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_curriculum_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_curriculum_date_created` datetime DEFAULT NULL,
  `lms_curriculum_name` char(255) DEFAULT NULL,
  `lms_curriculum_owner_id` int(10) unsigned DEFAULT NULL,
  `lms_curriculum_recurring` tinyint(1) DEFAULT NULL,
  `lms_curriculum_recurring_interval` int(10) unsigned DEFAULT NULL,
  `lms_curriculum_description` char(255) DEFAULT NULL,
  `lms_curriculum_new_hire` tinyint(3) unsigned DEFAULT NULL,
  `lms_curriculum_new_hire_duration` int(10) unsigned DEFAULT NULL,
  `hua_org_level_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_curriculum_manager_approval_required` tinyint(4) NOT NULL DEFAULT '1',
  `lms_curriculum_allow_retake` tinyint(1) NOT NULL DEFAULT '1',
  `lms_curriculum_parent_id` int(11) NOT NULL DEFAULT '0',
  `lms_curriculum_replaces_parent` tinyint(1) NOT NULL DEFAULT '0',
  `lms_curriculum_status_reason` text NOT NULL,
  `lms_curriculum_status_id` int(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`lms_curriculum_id`),
  KEY `lms_curriculum_description` (`lms_curriculum_description`),
  KEY `lms_curriculum_name` (`lms_curriculum_name`),
  KEY `lms_curriculum_owner_id` (`lms_curriculum_owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_curriculum_cert`
--

DROP TABLE IF EXISTS `lms_curriculum_cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_curriculum_cert` (
  `lms_curriculum_cert_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lms_curriculum_cert_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_curriculum_cert_date_created` datetime DEFAULT NULL,
  `lms_curriculum_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_cert_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_curriculum_cert_id`),
  KEY `lms_curriculum_id` (`lms_curriculum_id`,`lms_cert_id`),
  KEY `lms_cert_id` (`lms_cert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_curriculum_course`
--

DROP TABLE IF EXISTS `lms_curriculum_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_curriculum_course` (
  `lms_curriculum_course_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_curriculum_course_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_curriculum_course_date_created` datetime DEFAULT NULL,
  `lms_curriculum_id` int(10) unsigned NOT NULL,
  `lms_course_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`lms_curriculum_course_id`),
  KEY `lms_course_id` (`lms_course_id`),
  KEY `lms_curriculum_id` (`lms_curriculum_id`),
  KEY `curriculum_course` (`lms_course_id`,`lms_curriculum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_curriculum_job`
--

DROP TABLE IF EXISTS `lms_curriculum_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_curriculum_job` (
  `lms_curriculum_job_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_curriculum_job_date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_curriculum_job_last_modified` datetime DEFAULT NULL,
  `lms_curriculum_id` int(10) unsigned NOT NULL,
  `hua_job_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`lms_curriculum_job_id`),
  KEY `lms_curriculum_id` (`lms_curriculum_id`),
  KEY `hua_job_id` (`hua_job_id`),
  KEY `curriculum_job` (`lms_curriculum_id`,`hua_job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_curriculum_job_family`
--

DROP TABLE IF EXISTS `lms_curriculum_job_family`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_curriculum_job_family` (
  `lms_curriculum_job_family_id` int(11) NOT NULL AUTO_INCREMENT,
  `lms_curriculum_job_family_date_created` datetime DEFAULT NULL,
  `lms_curriculum_job_family_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lms_curriculum_id` int(10) unsigned DEFAULT NULL,
  `hua_job_family_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`lms_curriculum_job_family_id`) USING BTREE,
  KEY `hua_job_family_id` (`hua_job_family_id`),
  KEY `curriculum_job_family` (`lms_curriculum_id`,`hua_job_family_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_curriculum_job_role`
--

DROP TABLE IF EXISTS `lms_curriculum_job_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_curriculum_job_role` (
  `lms_curriculum_job_role_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lms_curriculum_job_role_date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_curriculum_job_role_last_modified` datetime DEFAULT NULL,
  `lms_curriculum_id` int(11) unsigned NOT NULL,
  `hua_job_role_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`lms_curriculum_job_role_id`),
  KEY `curriculum_job_role` (`lms_curriculum_id`,`hua_job_role_id`),
  KEY `hua_job_role_id` (`hua_job_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_curriculum_location`
--

DROP TABLE IF EXISTS `lms_curriculum_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_curriculum_location` (
  `lms_curriculum_location_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lms_curriculum_location_date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_curriculum_location_last_modified` datetime DEFAULT NULL,
  `lms_curriculum_id` int(11) unsigned NOT NULL,
  `hua_location_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`lms_curriculum_location_id`),
  KEY `curriculum_location` (`lms_curriculum_id`,`hua_location_id`),
  KEY `hua_location_id` (`hua_location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_curriculum_status`
--

DROP TABLE IF EXISTS `lms_curriculum_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_curriculum_status` (
  `lms_curriculum_status_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_curriculum_status_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_curriculum_status_date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lms_curriculum_status_name` varchar(255) NOT NULL,
  `lms_curriculum_status_logical_value` varchar(255) NOT NULL,
  `lms_curriculum_status_protected` tinyint(1) DEFAULT '0',
  `lms_curriculum_status_deactivated` tinyint(1) unsigned DEFAULT '0',
  `lms_curriculum_status_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `lms_curriculum_status_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_curriculum_status_id`),
  KEY `lms_curriculum_status_name` (`lms_curriculum_status_name`),
  KEY `lms_curriculum_status_logical_value` (`lms_curriculum_status_logical_value`),
  KEY `lms_curriculum_status_order` (`lms_curriculum_status_order`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_curriculum_student`
--

DROP TABLE IF EXISTS `lms_curriculum_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_curriculum_student` (
  `lms_curriculum_student_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_curriculum_student_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_curriculum_student_date_created` datetime DEFAULT NULL,
  `lms_user_id` int(10) unsigned NOT NULL,
  `lms_curriculum_id` int(10) unsigned NOT NULL,
  `lms_curriculum_student_start_date` datetime DEFAULT NULL,
  `lms_curriculum_student_end_date` datetime DEFAULT NULL,
  `lms_curriculum_student_approved_by` int(11) DEFAULT '0',
  `lms_curriculum_student_approval_date` datetime DEFAULT NULL,
  `percent_complete` decimal(5,2) DEFAULT NULL,
  `lms_curriculum_student_auto_enrolled` tinyint(1) NOT NULL DEFAULT '1',
  `lms_curriculum_student_enrolled_by` int(11) unsigned NOT NULL DEFAULT '1',
  `lms_curriculum_student_out_dated` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_curriculum_student_status_id` int(10) NOT NULL DEFAULT '2',
  `lms_curriculum_student_approved` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_curriculum_student_id`),
  KEY `lms_curriculum_id` (`lms_curriculum_id`),
  KEY `lms_curriculum_student_approved_by` (`lms_curriculum_student_approved_by`),
  KEY `lms_user_id` (`lms_user_id`),
  KEY `curriculum_student` (`lms_user_id`,`lms_curriculum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_curriculum_student_course`
--

DROP TABLE IF EXISTS `lms_curriculum_student_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_curriculum_student_course` (
  `lms_curriculum_student_course_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_curriculum_student_id` int(10) unsigned NOT NULL,
  `lms_curriculum_id` int(10) unsigned NOT NULL,
  `lms_course_id` int(10) unsigned NOT NULL,
  `lms_class_student_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lms_curriculum_student_course_completed` datetime DEFAULT NULL,
  PRIMARY KEY (`lms_curriculum_student_course_id`),
  KEY `lms_curriculum_student_id` (`lms_curriculum_student_id`),
  KEY `lms_curriculum_id` (`lms_curriculum_id`),
  KEY `lms_course_id` (`lms_course_id`),
  KEY `lms_class_student_id` (`lms_class_student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_curriculum_student_status`
--

DROP TABLE IF EXISTS `lms_curriculum_student_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_curriculum_student_status` (
  `lms_curriculum_student_status_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_curriculum_student_status_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_curriculum_student_status_date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lms_curriculum_student_status_name` varchar(255) NOT NULL,
  `lms_curriculum_student_status_logical_value` varchar(255) NOT NULL,
  `lms_curriculum_student_status_protected` tinyint(1) DEFAULT '0',
  `lms_curriculum_student_status_deactivated` tinyint(1) unsigned DEFAULT '0',
  `lms_curriculum_student_status_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `lms_curriculum_student_status_order` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_curriculum_student_status_id`),
  KEY `lms_curriculum_student_status_name` (`lms_curriculum_student_status_name`),
  KEY `lms_curriculum_student_status_logical_value` (`lms_curriculum_student_status_logical_value`),
  KEY `lms_curriculum_student_status_deactivated` (`lms_curriculum_student_status_deactivated`),
  KEY `lms_curriculum_student_status_system_flag` (`lms_curriculum_student_status_system_flag`),
  KEY `lms_curriculum_student_status_order` (`lms_curriculum_student_status_order`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_elearning_import_job`
--

DROP TABLE IF EXISTS `lms_elearning_import_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_elearning_import_job` (
  `lms_elearning_import_job_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_elearning_import_job_last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_elearning_import_job_date_created` datetime DEFAULT NULL,
  `lms_elearning_import_job_file_name` char(255) NOT NULL,
  `lms_elearning_import_job_scorm_engine_course_id` char(255) DEFAULT NULL,
  `lms_elearning_import_job_scorm_engine_import_job_id` char(255) DEFAULT NULL,
  `lms_elearning_import_job_status_id` int(10) unsigned NOT NULL DEFAULT '2',
  `lms_elearning_import_job_date_ready` timestamp NULL DEFAULT NULL,
  `lms_elearning_import_job_date_processed` timestamp NULL DEFAULT NULL,
  `lms_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lms_elearning_import_job_multi_course` tinyint(1) unsigned DEFAULT '0',
  `lms_elearning_import_job_elearning_standard` char(255) DEFAULT NULL,
  `lms_elearning_import_job_child_job_status_id` int(10) unsigned DEFAULT NULL,
  `lms_elearning_import_job_from_ftp` tinyint(1) unsigned DEFAULT '0',
  `lms_elearning_import_job_ftp_path` char(255) DEFAULT NULL,
  `lms_course_id` int(10) unsigned DEFAULT '0',
  `lms_elearning_import_job_course_info` text,
  `lms_elearning_import_job_status_message` text,
  `lms_elearning_import_job_parent_id` int(10) unsigned DEFAULT '0',
  `lms_elearning_import_job_overwrite` tinyint(1) unsigned DEFAULT '0',
  `hua_file_id` int(10) unsigned DEFAULT '0',
  `lms_elearning_import_job_overwrite_course_name` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`lms_elearning_import_job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_elearning_import_job_status`
--

DROP TABLE IF EXISTS `lms_elearning_import_job_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_elearning_import_job_status` (
  `lms_elearning_import_job_status_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_elearning_import_job_status_last_modified` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_elearning_import_job_status_date_created` datetime DEFAULT NULL,
  `lms_elearning_import_job_status_name` char(255) NOT NULL,
  `lms_elearning_import_job_status_logical_value` char(255) NOT NULL,
  PRIMARY KEY (`lms_elearning_import_job_status_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_equivalent_course`
--

DROP TABLE IF EXISTS `lms_equivalent_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_equivalent_course` (
  `lms_equivalent_course_id` int(11) NOT NULL AUTO_INCREMENT,
  `lms_equivalent_course_date_created` datetime DEFAULT NULL,
  `lms_equivalent_course_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_course_id` int(11) DEFAULT NULL,
  `lms_equivalent_course_course_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`lms_equivalent_course_id`),
  KEY `lms_course_id` (`lms_course_id`),
  KEY `lms_equivalent_course_course_id` (`lms_equivalent_course_course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_external_resource`
--

DROP TABLE IF EXISTS `lms_external_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_external_resource` (
  `lms_external_resource_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_external_resource_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_external_resource_date_created` datetime DEFAULT NULL,
  `lms_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lms_external_resource_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lms_external_resource_name` varchar(255) NOT NULL DEFAULT '',
  `lms_external_resource_description` mediumtext NOT NULL,
  `lms_external_resource_start_date` date DEFAULT NULL,
  `lms_external_resource_end_date` date DEFAULT NULL,
  `ats_university_id` int(10) unsigned DEFAULT '0',
  `lms_external_resource_url` varchar(255) NOT NULL DEFAULT '',
  `lms_external_resource_fee` float NOT NULL DEFAULT '0',
  `lms_external_resource_credits` int(10) unsigned NOT NULL DEFAULT '0',
  `lms_external_resource_grade` varchar(255) NOT NULL DEFAULT '',
  `lms_external_resource_degree_type_id` int(11) DEFAULT NULL,
  `lms_external_resource_comments` mediumtext,
  PRIMARY KEY (`lms_external_resource_id`),
  KEY `ats_university_id` (`ats_university_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_external_resource_degree_type`
--

DROP TABLE IF EXISTS `lms_external_resource_degree_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_external_resource_degree_type` (
  `lms_external_resource_degree_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_external_resource_degree_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_external_resource_degree_type_date_created` datetime DEFAULT NULL,
  `lms_external_resource_degree_type_name` char(255) NOT NULL DEFAULT '',
  `lms_external_resource_degree_type_protected` tinyint(1) NOT NULL DEFAULT '0',
  `lms_external_resource_degree_type_order` smallint(5) unsigned NOT NULL,
  `lms_external_resource_degree_type_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_external_resource_degree_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_external_resource_type`
--

DROP TABLE IF EXISTS `lms_external_resource_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_external_resource_type` (
  `lms_external_resource_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_external_resource_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_external_resource_type_date_created` datetime DEFAULT NULL,
  `lms_external_resource_type_name` char(255) NOT NULL DEFAULT '',
  `lms_external_resource_type_protected` tinyint(1) NOT NULL DEFAULT '0',
  `lms_external_resource_type_order` smallint(5) unsigned NOT NULL,
  `lms_external_resource_type_deactivated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_external_resource_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_material`
--

DROP TABLE IF EXISTS `lms_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_material` (
  `lms_material_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_material_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_material_date_created` datetime DEFAULT NULL,
  `lms_material_name` char(255) DEFAULT NULL,
  `lms_material_type_id` int(10) DEFAULT NULL,
  `lms_material_owner_id` int(10) unsigned DEFAULT NULL,
  `lms_material_status` char(255) DEFAULT NULL,
  `hua_file_id` int(11) unsigned DEFAULT '0',
  `lms_material_description` char(255) DEFAULT NULL,
  PRIMARY KEY (`lms_material_id`),
  KEY `hua_file_id` (`hua_file_id`),
  KEY `lms_material_description` (`lms_material_description`),
  KEY `lms_material_name` (`lms_material_name`),
  KEY `lms_material_owner_id` (`lms_material_owner_id`),
  KEY `lms_material_type_id` (`lms_material_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_material_type`
--

DROP TABLE IF EXISTS `lms_material_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_material_type` (
  `lms_material_type_id` int(10) NOT NULL AUTO_INCREMENT,
  `lms_material_type_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_material_type_date_created` datetime DEFAULT NULL,
  `lms_material_type_name` char(255) DEFAULT NULL,
  `lms_material_type_deactivated` tinyint(1) unsigned DEFAULT '0',
  `lms_material_type_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `lms_material_type_order` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`lms_material_type_id`),
  KEY `lms_material_type_name` (`lms_material_type_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_program`
--

DROP TABLE IF EXISTS `lms_program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_program` (
  `lms_program_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_program_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_program_date_created` datetime DEFAULT NULL,
  `lms_program_name` char(255) DEFAULT NULL,
  `lms_program_owner_id` int(10) unsigned DEFAULT NULL,
  `lms_program_active` tinyint(1) DEFAULT NULL,
  `lms_program_description` char(255) DEFAULT NULL,
  PRIMARY KEY (`lms_program_id`),
  KEY `lms_program_description` (`lms_program_description`),
  KEY `lms_program_name` (`lms_program_name`),
  KEY `lms_program_owner_id` (`lms_program_owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_program_curriculum`
--

DROP TABLE IF EXISTS `lms_program_curriculum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_program_curriculum` (
  `lms_program_curriculum_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_program_curriculum_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_program_curriculum_date_created` datetime DEFAULT NULL,
  `lms_program_id` int(10) unsigned DEFAULT NULL,
  `lms_curriculum_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`lms_program_curriculum_id`),
  KEY `lms_curriculum_id` (`lms_curriculum_id`),
  KEY `lms_program_id` (`lms_program_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_reminder`
--

DROP TABLE IF EXISTS `lms_reminder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_reminder` (
  `lms_reminder_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lms_reminder_date_created` datetime DEFAULT NULL,
  `lms_reminder_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_reminder_days_before_expiration` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_reminder_freq_reminder_before_notification` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_reminder_freq_reminder_after_notification` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_cert_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_reminder_days_after_expiration` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_student_external_cert_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_reminder_id`),
  KEY `IDX_lms_reminder` (`lms_reminder_id`,`lms_cert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_reminder_to_group`
--

DROP TABLE IF EXISTS `lms_reminder_to_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_reminder_to_group` (
  `lms_reminder_to_group_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lms_reminder_to_group_date_created` datetime DEFAULT NULL,
  `lms_reminder_to_group_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hua_group_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_reminder_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_reminder_to_group_id`),
  KEY `IDX_lms_reminder_to_group` (`hua_group_id`,`lms_reminder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_scorm`
--

DROP TABLE IF EXISTS `lms_scorm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_scorm` (
  `lms_scorm_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_scorm_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_scorm_date_created` datetime DEFAULT NULL,
  `lms_scorm_base_url` char(255) NOT NULL,
  PRIMARY KEY (`lms_scorm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_scorm_file`
--

DROP TABLE IF EXISTS `lms_scorm_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_scorm_file` (
  `lms_scorm_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lms_scorm_resource_id` char(255) NOT NULL,
  `lms_scorm_file_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lms_scorm_file_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_scorm_file_date_created` datetime DEFAULT NULL,
  `lms_scorm_file_href` char(255) NOT NULL,
  UNIQUE KEY `lms_scorm_file_PK` (`lms_scorm_id`,`lms_scorm_resource_id`,`lms_scorm_file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_scorm_item`
--

DROP TABLE IF EXISTS `lms_scorm_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_scorm_item` (
  `lms_scorm_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lms_scorm_organization_id` varchar(60) DEFAULT NULL,
  `lms_scorm_item_id` varchar(255) DEFAULT NULL,
  `lms_scorm_item_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_scorm_item_date_created` datetime DEFAULT NULL,
  `lms_scorm_resource_id` char(255) NOT NULL,
  `lms_scorm_item_parent_id` char(255) NOT NULL,
  `lms_scorm_item_title` char(255) NOT NULL,
  `lms_scorm_item_datafromlms` char(255) NOT NULL,
  `lms_scorm_item_masteryscore` float NOT NULL DEFAULT '0',
  `lms_scorm_item_maxtimeallowed` char(16) NOT NULL DEFAULT '0000:00:00.00',
  `lms_scorm_item_timelimitaction` char(255) NOT NULL,
  `lms_scorm_item_prerequisites` char(255) NOT NULL,
  UNIQUE KEY `lms_scorm_item_PK` (`lms_scorm_id`,`lms_scorm_organization_id`,`lms_scorm_item_id`),
  KEY `lms_scorm_resource_id` (`lms_scorm_resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_scorm_organization`
--

DROP TABLE IF EXISTS `lms_scorm_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_scorm_organization` (
  `lms_scorm_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lms_scorm_organization_id` varchar(60) DEFAULT NULL,
  `lms_scorm_organization_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_scorm_organization_date_created` datetime DEFAULT NULL,
  `lms_scorm_organization_title` char(255) NOT NULL,
  `lms_scorm_organization_is_default` tinyint(1) NOT NULL DEFAULT '0',
  `lms_scorm_organization_is_current` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `lms_scorm_organization_PK` (`lms_scorm_id`,`lms_scorm_organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_scorm_resource`
--

DROP TABLE IF EXISTS `lms_scorm_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_scorm_resource` (
  `lms_scorm_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lms_scorm_resource_id` char(255) NOT NULL,
  `lms_scorm_resource_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_scorm_resource_date_created` datetime DEFAULT NULL,
  `lms_scorm_resource_type` char(255) NOT NULL DEFAULT 'webcontent',
  `lms_scorm_resource_scormtype` char(255) NOT NULL DEFAULT 'sco',
  `lms_scorm_resource_href` char(255) NOT NULL,
  UNIQUE KEY `lms_scorm_resource_PK` (`lms_scorm_id`,`lms_scorm_resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_student_cert`
--

DROP TABLE IF EXISTS `lms_student_cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_student_cert` (
  `lms_student_cert_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lms_student_cert_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_student_cert_date_created` datetime DEFAULT NULL,
  `lms_cert_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_student_cert_date_received` date DEFAULT NULL,
  `lms_student_cert_expiration` date DEFAULT NULL,
  `lms_student_cert_issued_by` char(255) DEFAULT NULL,
  `hua_file_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_cert_renewal_period_start` datetime DEFAULT NULL,
  PRIMARY KEY (`lms_student_cert_id`),
  KEY `lms_cert_id` (`lms_cert_id`,`lms_user_id`,`hua_file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_student_cmi`
--

DROP TABLE IF EXISTS `lms_student_cmi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_student_cmi` (
  `lms_student_cmi_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_student_cmi_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_student_cmi_date_created` datetime DEFAULT NULL,
  `lms_class_student_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lms_aicc_au_id` varchar(255) NOT NULL,
  `lms_student_cmi_lesson_status` varchar(255) NOT NULL,
  `lms_student_cmi_lesson_location` varchar(255) NOT NULL,
  `lms_student_cmi_credit` varchar(10) NOT NULL DEFAULT 'credit',
  `lms_student_cmi_entry` varchar(9) NOT NULL,
  `lms_student_cmi_exit` varchar(9) NOT NULL,
  `lms_student_cmi_score_raw` float NOT NULL DEFAULT '0',
  `lms_student_cmi_score_max` float NOT NULL DEFAULT '0',
  `lms_student_cmi_score_min` float NOT NULL DEFAULT '0',
  `lms_student_cmi_session_time` varchar(13) NOT NULL DEFAULT '0000:00:00.00',
  `lms_student_cmi_total_time` varchar(13) NOT NULL DEFAULT '0000:00:00.00',
  `lms_student_cmi_suspend_data` text NOT NULL,
  `lms_student_cmi_launch_data` text NOT NULL,
  PRIMARY KEY (`lms_student_cmi_id`),
  UNIQUE KEY `lms_class_student_id_2` (`lms_class_student_id`,`lms_aicc_au_id`),
  KEY `lms_aicc_au_id` (`lms_aicc_au_id`),
  KEY `lms_class_student_id` (`lms_class_student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_student_external_cert`
--

DROP TABLE IF EXISTS `lms_student_external_cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_student_external_cert` (
  `lms_student_external_cert_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lms_student_external_cert_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_student_external_cert_date_created` datetime DEFAULT NULL,
  `lms_user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_student_external_cert_acronym` char(255) DEFAULT NULL,
  `lms_student_external_cert_name` char(255) DEFAULT NULL,
  `lms_student_external_cert_description` longtext,
  `lms_student_external_cert_issued_by` char(255) DEFAULT NULL,
  `lms_student_external_cert_date_received` date DEFAULT NULL,
  `lms_student_external_cert_expiration` date DEFAULT NULL,
  `lms_student_external_cert_approved` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hua_file_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_student_external_cert_required_for_job` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_student_external_cert_id`),
  KEY `lms_user_id` (`lms_user_id`,`hua_file_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_student_outside_course`
--

DROP TABLE IF EXISTS `lms_student_outside_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_student_outside_course` (
  `lms_student_outside_course_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lms_student_outside_course_date_created` datetime DEFAULT NULL,
  `lms_student_outside_course_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_user_id` int(11) unsigned DEFAULT NULL,
  `lms_student_outside_course_name` char(255) DEFAULT NULL,
  `lms_student_outside_course_source` char(255) DEFAULT NULL,
  `lms_student_outside_course_credits` float NOT NULL DEFAULT '0',
  `lms_student_outside_course_ceus` float NOT NULL DEFAULT '0',
  `lms_student_outside_course_description` char(255) DEFAULT NULL,
  `lms_student_outside_course_date_completed` date DEFAULT NULL,
  `lms_student_outside_course_date_acknowledged` datetime DEFAULT NULL,
  `lms_student_outside_course_acknowledged_by` int(11) unsigned DEFAULT NULL,
  `lms_student_outside_course_instructor_name` char(255) DEFAULT NULL,
  PRIMARY KEY (`lms_student_outside_course_id`),
  KEY `lms_student_outside_course_acknowledged_by` (`lms_student_outside_course_acknowledged_by`),
  KEY `lms_user_id` (`lms_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_test`
--

DROP TABLE IF EXISTS `lms_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_test` (
  `lms_test_id` int(11) NOT NULL AUTO_INCREMENT,
  `lms_test_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_test_date_created` datetime DEFAULT NULL,
  `hua_test_id` int(11) DEFAULT NULL,
  `lms_class_id` int(11) DEFAULT NULL,
  `lms_test_weight` int(11) DEFAULT NULL,
  `lms_test_pretest` tinyint(1) NOT NULL DEFAULT '0',
  `lms_test_pretest_deny_enrollment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lms_test_allow_testout` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_test_id`),
  KEY `hua_test_id` (`hua_test_id`),
  KEY `lms_class_id` (`lms_class_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_test_taker`
--

DROP TABLE IF EXISTS `lms_test_taker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_test_taker` (
  `lms_test_taker_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lms_test_taker_date_created` datetime DEFAULT NULL,
  `lms_test_taker_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_class_student_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hua_test_taker_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_test_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lms_class_evaluation_id` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_test_taker_id`),
  KEY `lms_class_student_id` (`lms_class_student_id`),
  KEY `hua_test_taker_id` (`hua_test_taker_id`),
  KEY `lms_test_id` (`lms_test_id`),
  KEY `lms_class_evaluation_id` (`lms_class_evaluation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_test_template`
--

DROP TABLE IF EXISTS `lms_test_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_test_template` (
  `lms_test_template_id` int(11) NOT NULL AUTO_INCREMENT,
  `lms_test_template_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_test_template_date_created` datetime DEFAULT NULL,
  `hua_test_id` int(11) NOT NULL DEFAULT '0',
  `lms_course_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_test_template_id`),
  KEY `hua_test_id` (`hua_test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_topic`
--

DROP TABLE IF EXISTS `lms_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_topic` (
  `lms_topic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_topic_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_topic_date_created` datetime DEFAULT NULL,
  `lms_topic_name` char(255) DEFAULT NULL,
  `lms_topic_description` char(255) DEFAULT NULL,
  `lms_topic_deactivated` tinyint(1) unsigned DEFAULT '0',
  `lms_topic_order` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`lms_topic_id`),
  KEY `lms_topic_description` (`lms_topic_description`),
  KEY `lms_topic_name` (`lms_topic_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_user`
--

DROP TABLE IF EXISTS `lms_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_user` (
  `lms_user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_user_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_user_date_created` datetime DEFAULT NULL,
  `lms_user_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  `avg_pass_ratio` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4822 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lms_user_assistance_cap`
--

DROP TABLE IF EXISTS `lms_user_assistance_cap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lms_user_assistance_cap` (
  `lms_user_assistance_cap_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_user_assistance_cap_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lms_user_assistance_cap_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lms_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lms_user_assistance_cap_additional_amount` float DEFAULT NULL,
  `lms_user_assistance_cap_year` int(10) unsigned NOT NULL DEFAULT '0',
  `lms_user_assistance_cap_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lms_user_assistance_cap_id`),
  KEY `lms_user_id` (`lms_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pas_scale_value_salary_suggestion`
--

DROP TABLE IF EXISTS `pas_scale_value_salary_suggestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pas_scale_value_salary_suggestion` (
  `pas_salary_suggestion_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_scale_value_name_id` int(11) NOT NULL,
  `pas_salary_suggestion_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pas_salary_suggestion_created` datetime DEFAULT NULL,
  `pas_salary_suggestion_rate` float DEFAULT NULL,
  PRIMARY KEY (`pas_salary_suggestion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pm_accounts`
--

DROP TABLE IF EXISTS `pm_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pm_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `site_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `preferred_language` varchar(5) NOT NULL DEFAULT '',
  `extra_data` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `site_id` (`site_id`,`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pm_auth_log`
--

DROP TABLE IF EXISTS `pm_auth_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pm_auth_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `requestor` int(10) unsigned DEFAULT NULL,
  `approver` int(10) unsigned DEFAULT NULL,
  `job_id` int(10) DEFAULT NULL,
  `dest_site_id` int(10) DEFAULT NULL,
  `auth` enum('y','n') DEFAULT 'n',
  `status` enum('submitted','authorized','rejected') DEFAULT 'submitted',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pm_clicktrack`
--

DROP TABLE IF EXISTS `pm_clicktrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pm_clicktrack` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `job_id` int(10) unsigned NOT NULL DEFAULT '0',
  `site_id` int(10) unsigned NOT NULL DEFAULT '0',
  `applicant_id` int(10) unsigned NOT NULL DEFAULT '0',
  `clicked` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `applied` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `job_id` (`job_id`,`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pm_config`
--

DROP TABLE IF EXISTS `pm_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pm_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mode` enum('live','test','inactive','dev') DEFAULT NULL,
  `contact_editable` enum('y','n') NOT NULL DEFAULT 'n',
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_address` varchar(255) DEFAULT NULL,
  `contact_city` varchar(255) DEFAULT NULL,
  `contact_state` varchar(255) DEFAULT NULL,
  `contact_zip` varchar(255) DEFAULT NULL,
  `contact_country` varchar(32) DEFAULT NULL,
  `error_email` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pm_contact`
--

DROP TABLE IF EXISTS `pm_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pm_contact` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `contact_name` varchar(255) DEFAULT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `contact_address` varchar(255) NOT NULL,
  `contact_city` varchar(255) NOT NULL,
  `contact_state` varchar(255) NOT NULL,
  `contact_zip` varchar(255) NOT NULL,
  `contact_country` varchar(255) NOT NULL,
  `job_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `job_id` (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pm_crosspostmodule_log`
--

DROP TABLE IF EXISTS `pm_crosspostmodule_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pm_crosspostmodule_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `jobid` int(11) DEFAULT '0',
  `message` text NOT NULL,
  `is_error` enum('no','yes') DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `jobid` (`jobid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pm_jobpost`
--

DROP TABLE IF EXISTS `pm_jobpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pm_jobpost` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `extra_data` text,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `account_id` int(10) unsigned DEFAULT NULL,
  `dest_site_id` int(10) DEFAULT NULL,
  `job_id` int(10) DEFAULT NULL,
  `auth` enum('y','n') NOT NULL DEFAULT 'n',
  `requestor` int(10) unsigned NOT NULL DEFAULT '0',
  `approver` int(10) unsigned NOT NULL DEFAULT '0',
  `primary_language` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `job_id` (`job_id`,`dest_site_id`),
  KEY `address` (`dest_site_id`,`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pm_language_tokens`
--

DROP TABLE IF EXISTS `pm_language_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pm_language_tokens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `updated` timestamp NULL DEFAULT NULL,
  `languagename` char(2) DEFAULT NULL,
  `token` varchar(255) NOT NULL,
  `value` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `languagename` (`languagename`,`token`)
) ENGINE=InnoDB AUTO_INCREMENT=234434 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pm_log`
--

DROP TABLE IF EXISTS `pm_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pm_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `jobid` int(11) NOT NULL DEFAULT '0',
  `deleted` enum('yes','no') NOT NULL DEFAULT 'no',
  `successful` enum('yes','no') NOT NULL DEFAULT 'no',
  `messages` text,
  PRIMARY KEY (`id`),
  KEY `jobid` (`jobid`,`successful`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pm_sitenames`
--

DROP TABLE IF EXISTS `pm_sitenames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pm_sitenames` (
  `site_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pm_sites`
--

DROP TABLE IF EXISTS `pm_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pm_sites` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `site_id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` char(32) DEFAULT NULL,
  `auth_required` tinyint(4) DEFAULT '0',
  `active` tinyint(4) DEFAULT '0',
  `category_id` int(11) DEFAULT NULL,
  `category_name` char(50) NOT NULL,
  `posting_duration` int(3) NOT NULL DEFAULT '30',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `autocrosspost_extra_data` text,
  `autocrosspost_account_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `site_id` (`site_id`),
  KEY `active` (`active`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_360_appraisal`
--

DROP TABLE IF EXISTS `reference_360_appraisal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_360_appraisal` (
  `reference_360_appraisal_old_id` int(11) NOT NULL,
  `reference_360_appraisal_new_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reference_360_appraisal_old_id`),
  KEY `reference_360_appraisal_new_id_idx` (`reference_360_appraisal_new_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_360_appraisal_to_assessment`
--

DROP TABLE IF EXISTS `reference_360_appraisal_to_assessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_360_appraisal_to_assessment` (
  `epm_appraisal_assessment_id` int(11) NOT NULL,
  `epm_360_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`epm_appraisal_assessment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_360_appraiser`
--

DROP TABLE IF EXISTS `reference_360_appraiser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_360_appraiser` (
  `reference_360_appraiser_old_id` int(11) NOT NULL,
  `reference_360_appraiser_new_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reference_360_appraiser_old_id`),
  KEY `reference_360_appraiser_new_id_idx` (`reference_360_appraiser_new_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_360_appraiser_to_group_member`
--

DROP TABLE IF EXISTS `reference_360_appraiser_to_group_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_360_appraiser_to_group_member` (
  `360_appraiser_id` int(11) NOT NULL,
  `old_group_member_id` int(11) NOT NULL DEFAULT '0',
  `parent_new_group_in_general_app` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`360_appraiser_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_360_category_part_of_general_appraisal`
--

DROP TABLE IF EXISTS `reference_360_category_part_of_general_appraisal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_360_category_part_of_general_appraisal` (
  `category_child_id` int(11) NOT NULL,
  `category_parent_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`category_child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_360_competency`
--

DROP TABLE IF EXISTS `reference_360_competency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_360_competency` (
  `reference_pas_appraisal_metric_id` int(11) NOT NULL,
  `reference_360_competency_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reference_pas_appraisal_metric_id`),
  KEY `reference_360_competency_id_idx` (`reference_360_competency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_360_competency_part_of_general_appraisal`
--

DROP TABLE IF EXISTS `reference_360_competency_part_of_general_appraisal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_360_competency_part_of_general_appraisal` (
  `competency_child_id` int(11) NOT NULL,
  `competency_parent_id` int(11) NOT NULL DEFAULT '0',
  `epm_360_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`competency_child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_360_skill_part_of_general_appraisal`
--

DROP TABLE IF EXISTS `reference_360_skill_part_of_general_appraisal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_360_skill_part_of_general_appraisal` (
  `skill_child_id` int(11) NOT NULL,
  `skill_parent_id` int(11) NOT NULL DEFAULT '0',
  `epm_360_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`skill_child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_360_template`
--

DROP TABLE IF EXISTS `reference_360_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_360_template` (
  `reference_360_template_old_id` int(11) NOT NULL,
  `reference_360_template_new_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reference_360_template_old_id`),
  KEY `reference_360_template_new_id_idx` (`reference_360_template_new_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_appraisal`
--

DROP TABLE IF EXISTS `reference_appraisal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_appraisal` (
  `reference_appraisal_old_id` int(11) NOT NULL,
  `reference_appraisal_new_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reference_appraisal_old_id`),
  KEY `reference_appraisal_new_id_idx` (`reference_appraisal_new_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_appraisal_approver_chain`
--

DROP TABLE IF EXISTS `reference_appraisal_approver_chain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_appraisal_approver_chain` (
  `approver_chain_group_id` int(11) NOT NULL,
  `hua_approval_chain_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`approver_chain_group_id`),
  KEY `hua_approval_chain_id_idx` (`hua_approval_chain_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_appraisal_approver_chain_member`
--

DROP TABLE IF EXISTS `reference_appraisal_approver_chain_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_appraisal_approver_chain_member` (
  `approver_group_member_id` int(11) NOT NULL,
  `hua_approval_chain_member_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`approver_group_member_id`),
  KEY `hua_approval_chain_member_id_idx` (`hua_approval_chain_member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_appraisal_competency`
--

DROP TABLE IF EXISTS `reference_appraisal_competency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_appraisal_competency` (
  `reference_pas_appraisal_metric_id` int(11) NOT NULL,
  `reference_appraisal_competency_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reference_pas_appraisal_metric_id`),
  KEY `reference_appraisal_competency_id_idx` (`reference_appraisal_competency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_appraisal_group`
--

DROP TABLE IF EXISTS `reference_appraisal_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_appraisal_group` (
  `reference_appraisal_group_new_id` int(11) NOT NULL,
  `reference_appraisal_group_old_id` int(11) NOT NULL DEFAULT '0',
  `reference_appraisal_group_is_360` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`reference_appraisal_group_new_id`),
  KEY `reference_appraisal_group_old_ididx` (`reference_appraisal_group_old_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_appraisal_group_member`
--

DROP TABLE IF EXISTS `reference_appraisal_group_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_appraisal_group_member` (
  `reference_appraisal_group_member_new_id` int(11) NOT NULL,
  `reference_appraisal_group_member_old_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reference_appraisal_group_member_new_id`),
  KEY `reference_appraisal_group_member_old_id_idx` (`reference_appraisal_group_member_old_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_appraisal_metric_to_discussion_board`
--

DROP TABLE IF EXISTS `reference_appraisal_metric_to_discussion_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_appraisal_metric_to_discussion_board` (
  `appraisal_metric` int(11) NOT NULL,
  `epm_appraisal_discussion_board_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`appraisal_metric`),
  KEY `epm_appraisal_discussion_board_id_idx` (`epm_appraisal_discussion_board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_appraisal_note`
--

DROP TABLE IF EXISTS `reference_appraisal_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_appraisal_note` (
  `reference_appraisal_note_old_id` int(11) NOT NULL,
  `reference_appraisal_note_new_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reference_appraisal_note_old_id`),
  KEY `reference_appraisal_note_new_id_idx` (`reference_appraisal_note_new_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_appraisal_skill`
--

DROP TABLE IF EXISTS `reference_appraisal_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_appraisal_skill` (
  `reference_pas_appraisal_metric_id` int(11) NOT NULL,
  `reference_appraisal_skill_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reference_pas_appraisal_metric_id`),
  KEY `reference_appraisal_skill_id_idx` (`reference_appraisal_skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_appraisal_to_discussion_board`
--

DROP TABLE IF EXISTS `reference_appraisal_to_discussion_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_appraisal_to_discussion_board` (
  `appraisal_id` int(11) NOT NULL,
  `epm_appraisal_discussion_board_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`appraisal_id`),
  KEY `epm_appraisal_discussion_board_id_idx2` (`epm_appraisal_discussion_board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_cdsp_project_message`
--

DROP TABLE IF EXISTS `reference_cdsp_project_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_cdsp_project_message` (
  `cdsp_project_message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cdsp_project_message_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cdsp_project_message_date_created` datetime DEFAULT NULL,
  `cdsp_project_id` int(10) unsigned DEFAULT NULL,
  `cdsp_user_id` int(10) unsigned DEFAULT NULL,
  `cdsp_project_message` text,
  `cdsp_project_message_subject` varchar(255) DEFAULT NULL,
  `cdsp_project_message_parent_id` int(10) unsigned DEFAULT '0',
  `cdsp_project_message_is_headline` tinyint(1) DEFAULT NULL,
  `cdsp_project_message_date` datetime DEFAULT NULL,
  `cdsp_project_message_recipient` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`cdsp_project_message_id`),
  KEY `cdsp_project_id` (`cdsp_project_id`),
  KEY `cdsp_user_id` (`cdsp_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_coaching_tip`
--

DROP TABLE IF EXISTS `reference_coaching_tip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_coaching_tip` (
  `reference_coaching_tip_old_id` int(11) NOT NULL,
  `reference_coaching_tip_new_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reference_coaching_tip_old_id`),
  KEY `reference_coaching_tip_new_id_idx` (`reference_coaching_tip_new_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_competencies_note`
--

DROP TABLE IF EXISTS `reference_competencies_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_competencies_note` (
  `reference_competencies_note_old_id` int(11) NOT NULL,
  `reference_competencies_note_new_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reference_competencies_note_old_id`),
  KEY `reference_competencies_note_new_id_idx` (`reference_competencies_note_new_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_competency`
--

DROP TABLE IF EXISTS `reference_competency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_competency` (
  `reference_competency_old_id` int(11) NOT NULL,
  `reference_competency_new_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reference_competency_old_id`),
  KEY `reference_competency_new_id_idx` (`reference_competency_new_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_development_suggestion`
--

DROP TABLE IF EXISTS `reference_development_suggestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_development_suggestion` (
  `reference_development_suggestion_old_id` int(11) NOT NULL,
  `reference_development_suggestion_new_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reference_development_suggestion_old_id`),
  KEY `reference_development_suggestion_new_id_idx` (`reference_development_suggestion_new_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_epm_appraisal_phase`
--

DROP TABLE IF EXISTS `reference_epm_appraisal_phase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_epm_appraisal_phase` (
  `reference_epm_appraisal_phase_old_id` int(11) NOT NULL,
  `reference_epm_appraisal_phase_new_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reference_epm_appraisal_phase_old_id`),
  KEY `reference_epm_appraisal_phase_new_id_idx` (`reference_epm_appraisal_phase_new_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_epm_appraisal_phase_to_letter`
--

DROP TABLE IF EXISTS `reference_epm_appraisal_phase_to_letter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_epm_appraisal_phase_to_letter` (
  `reference_epm_letter_id` int(11) NOT NULL,
  `reference_appraisal_phase_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reference_epm_letter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_epm_category`
--

DROP TABLE IF EXISTS `reference_epm_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_epm_category` (
  `reference_epm_category_old_id` int(11) NOT NULL,
  `reference_epm_category_new_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reference_epm_category_old_id`),
  KEY `reference_epm_category_new_id_idx` (`reference_epm_category_new_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_epm_workflow_phase_to_letter`
--

DROP TABLE IF EXISTS `reference_epm_workflow_phase_to_letter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_epm_workflow_phase_to_letter` (
  `reference_epm_letter_id` int(11) NOT NULL,
  `reference_worfklow_phase_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reference_epm_letter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_goal`
--

DROP TABLE IF EXISTS `reference_goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_goal` (
  `hua_metric_id` int(11) NOT NULL,
  `epm_appraisal_goal_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`hua_metric_id`),
  KEY `reference_goal_epm_appraisal_goal_id_idx` (`epm_appraisal_goal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_goal_cascade`
--

DROP TABLE IF EXISTS `reference_goal_cascade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_goal_cascade` (
  `pas_cascade_metric_id` int(11) NOT NULL,
  `epm_appraisal_goal_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pas_cascade_metric_id`),
  KEY `reference_goal_cascade_epm_appraisal_goal_id_idx` (`epm_appraisal_goal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_goal_metric_to_discussion_board`
--

DROP TABLE IF EXISTS `reference_goal_metric_to_discussion_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_goal_metric_to_discussion_board` (
  `appraisal_metric` int(11) NOT NULL,
  `epm_appraisal_discussion_board_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`appraisal_metric`),
  KEY `epm_appraisal_discussion_board_id_idx` (`epm_appraisal_discussion_board_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_goal_phase_note`
--

DROP TABLE IF EXISTS `reference_goal_phase_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_goal_phase_note` (
  `reference_phase_note_old_id` int(11) NOT NULL,
  `reference_phase_note_new_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reference_phase_note_old_id`),
  KEY `reference_phase_note_new_id_idx` (`reference_phase_note_new_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_lms_class_owner`
--

DROP TABLE IF EXISTS `reference_lms_class_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_lms_class_owner` (
  `reference_lms_class_owner_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_class_id` int(10) unsigned NOT NULL,
  `lms_owner_id` int(10) unsigned NOT NULL,
  `lms_course_learning_manager_id` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`reference_lms_class_owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_lms_course_owner`
--

DROP TABLE IF EXISTS `reference_lms_course_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_lms_course_owner` (
  `reference_lms_course_owner_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lms_course_id` int(10) unsigned NOT NULL,
  `lms_course_owner_id` int(10) unsigned NOT NULL,
  `lms_course_learning_manager_id` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`reference_lms_course_owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_new_360_appraisal_to_group`
--

DROP TABLE IF EXISTS `reference_new_360_appraisal_to_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_new_360_appraisal_to_group` (
  `360_appraisal_id` int(11) NOT NULL,
  `new_appraiser_group_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`360_appraisal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_signature`
--

DROP TABLE IF EXISTS `reference_signature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_signature` (
  `reference_signature_new_id` int(11) NOT NULL,
  `pas_status_id` int(11) NOT NULL DEFAULT '0',
  `pas_appraisal_id` int(11) NOT NULL DEFAULT '0',
  `pas_user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reference_signature_new_id`),
  KEY `reference_signature_pas_status_idx` (`pas_status_id`),
  KEY `reference_signature_pas_appraisal_idx` (`pas_appraisal_id`),
  KEY `reference_signature_pas_user_idx` (`pas_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_skill_note`
--

DROP TABLE IF EXISTS `reference_skill_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_skill_note` (
  `reference_skill_note_old_id` int(11) NOT NULL,
  `reference_skill_note_new_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reference_skill_note_old_id`),
  KEY `reference_skill_note_new_id_idx` (`reference_skill_note_new_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_workflow`
--

DROP TABLE IF EXISTS `reference_workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_workflow` (
  `reference_workflow_old_id` int(11) NOT NULL,
  `reference_workflow_new_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reference_workflow_old_id`),
  KEY `reference_workflow_new_id_idx` (`reference_workflow_new_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_workflow_competency`
--

DROP TABLE IF EXISTS `reference_workflow_competency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_workflow_competency` (
  `reference_workflow_competency_old_id` int(11) NOT NULL,
  `reference_workflow_competency_new_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reference_workflow_competency_old_id`),
  KEY `reference_workflow_competency_new_id_idx` (`reference_workflow_competency_new_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reference_workflow_phase`
--

DROP TABLE IF EXISTS `reference_workflow_phase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reference_workflow_phase` (
  `reference_workflow_phase_old_id` int(11) NOT NULL,
  `reference_workflow_phase_new_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reference_workflow_phase_old_id`),
  KEY `reference_workflow_phase_new_id_idx` (`reference_workflow_phase_new_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `svm_allowed_user_type`
--

DROP TABLE IF EXISTS `svm_allowed_user_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svm_allowed_user_type` (
  `svm_survey_id` int(11) NOT NULL DEFAULT '0',
  `svm_allowed_user_type_user_type` varchar(255) NOT NULL,
  `svm_allowed_user_type_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`svm_survey_id`,`svm_allowed_user_type_user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `svm_category`
--

DROP TABLE IF EXISTS `svm_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svm_category` (
  `svm_category_id` int(11) NOT NULL AUTO_INCREMENT,
  `svm_category_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `svm_category_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `svm_category_name` char(255) DEFAULT NULL,
  `svm_category_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`svm_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `svm_category_group`
--

DROP TABLE IF EXISTS `svm_category_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svm_category_group` (
  `svm_category_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `svm_category_group_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `svm_category_group_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `svm_category_group_name` char(255) DEFAULT NULL,
  `svm_category_id` int(11) NOT NULL DEFAULT '0',
  `svm_category_group_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`svm_category_group_id`),
  KEY `svm_category_id` (`svm_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `svm_distribution_list`
--

DROP TABLE IF EXISTS `svm_distribution_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svm_distribution_list` (
  `svm_distribution_list_id` int(11) NOT NULL AUTO_INCREMENT,
  `svm_distribution_list_date_created` datetime DEFAULT NULL,
  `hua_user_id` int(11) NOT NULL DEFAULT '0',
  `svm_distribution_list_name` varchar(255) NOT NULL,
  `svm_distribution_list_description` varchar(255) DEFAULT NULL,
  `svm_distribution_list_general_email` varchar(255) DEFAULT NULL,
  `svm_distribution_list_template` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`svm_distribution_list_id`),
  KEY `hua_user_id` (`hua_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `svm_distribution_list_member`
--

DROP TABLE IF EXISTS `svm_distribution_list_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svm_distribution_list_member` (
  `svm_distribution_list_member_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `svm_distribution_list_member_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `svm_distribution_list_id` int(10) unsigned NOT NULL DEFAULT '0',
  `svm_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`svm_distribution_list_member_id`),
  KEY `svm_user_id` (`svm_user_id`),
  KEY `svm_distribution_list_member_index` (`svm_distribution_list_id`,`svm_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `svm_question_pool`
--

DROP TABLE IF EXISTS `svm_question_pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svm_question_pool` (
  `svm_question_pool_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `svm_question_pool_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `svm_question_pool_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `svm_question_pool_name` varchar(255) NOT NULL,
  `svm_question_pool_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`svm_question_pool_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `svm_question_pool_question`
--

DROP TABLE IF EXISTS `svm_question_pool_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svm_question_pool_question` (
  `svm_question_pool_question_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `svm_question_pool_question_last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `svm_question_pool_question_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `svm_question_pool_id` int(10) unsigned NOT NULL DEFAULT '0',
  `hua_test_question_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`svm_question_pool_question_id`),
  KEY `hua_test_question_id` (`hua_test_question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `svm_survey`
--

DROP TABLE IF EXISTS `svm_survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svm_survey` (
  `svm_survey_id` int(11) NOT NULL AUTO_INCREMENT,
  `hua_test_id` int(11) NOT NULL DEFAULT '0',
  `svm_distribution_list_id` int(11) NOT NULL DEFAULT '0',
  `svm_survey_type_id` int(11) NOT NULL DEFAULT '0',
  `svm_survey_notify_on_completion` tinyint(1) NOT NULL DEFAULT '0',
  `svm_survey_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `svm_survey_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `svm_survey_randomize_questions` enum('0','1','2') NOT NULL DEFAULT '0',
  `svm_survey_randomize_answers` tinyint(1) NOT NULL DEFAULT '0',
  `svm_survey_questions_per_page` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `svm_survey_graded` tinyint(1) NOT NULL DEFAULT '0',
  `hua_trigger_id` int(11) NOT NULL DEFAULT '0',
  `custom_hua_trigger_id` int(11) NOT NULL DEFAULT '0',
  `svm_survey_background_color` varchar(10) NOT NULL DEFAULT '#FFFFFF',
  `svm_survey_title_color` varchar(10) NOT NULL DEFAULT '#000000',
  `svm_survey_text_color` varchar(10) NOT NULL DEFAULT '#000000',
  `svm_survey_enable_invite_friend` int(11) NOT NULL DEFAULT '0',
  `svm_survey_logo` varchar(255) NOT NULL,
  `svm_survey_launched` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `svm_survey_category` int(11) DEFAULT NULL,
  `svm_survey_questions_are_optional` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`svm_survey_id`),
  UNIQUE KEY `hua_test_id` (`hua_test_id`),
  UNIQUE KEY `svm_distribution_list_id` (`svm_distribution_list_id`),
  KEY `svm_survey_test_list_index` (`hua_test_id`,`svm_distribution_list_id`),
  KEY `svm_survey_type_id` (`svm_survey_type_id`),
  KEY `hua_trigger_id` (`hua_trigger_id`),
  KEY `custom_hua_trigger_id` (`custom_hua_trigger_id`),
  KEY `svm_survey_launched` (`svm_survey_launched`),
  KEY `svm_survey_category` (`svm_survey_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `svm_survey_type`
--

DROP TABLE IF EXISTS `svm_survey_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svm_survey_type` (
  `svm_survey_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `svm_survey_type_date_created` datetime DEFAULT NULL,
  `svm_survey_type_name` varchar(255) NOT NULL,
  `svm_survey_type_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`svm_survey_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `svm_user`
--

DROP TABLE IF EXISTS `svm_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svm_user` (
  `svm_user_id` int(11) unsigned NOT NULL DEFAULT '0',
  `svm_user_date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `svm_user_last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `svm_user_type` enum('registered','ad_hoc','anonymous') DEFAULT NULL,
  `svm_user_facility` varchar(255) DEFAULT NULL,
  `svm_user_template_notification` text,
  `svm_user_system_flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`svm_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-10  8:11:02
