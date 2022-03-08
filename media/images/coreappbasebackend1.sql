-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2022 at 09:30 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coreappbasebackend1`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add branch_registration', 7, 'add_branch_registration'),
(26, 'Can change branch_registration', 7, 'change_branch_registration'),
(27, 'Can delete branch_registration', 7, 'delete_branch_registration'),
(28, 'Can view branch_registration', 7, 'view_branch_registration'),
(29, 'Can add create_team', 8, 'add_create_team'),
(30, 'Can change create_team', 8, 'change_create_team'),
(31, 'Can delete create_team', 8, 'delete_create_team'),
(32, 'Can view create_team', 8, 'view_create_team'),
(33, 'Can add department', 9, 'add_department'),
(34, 'Can change department', 9, 'change_department'),
(35, 'Can delete department', 9, 'delete_department'),
(36, 'Can view department', 9, 'view_department'),
(37, 'Can add designation', 10, 'add_designation'),
(38, 'Can change designation', 10, 'change_designation'),
(39, 'Can delete designation', 10, 'delete_designation'),
(40, 'Can view designation', 10, 'view_designation'),
(41, 'Can add project', 11, 'add_project'),
(42, 'Can change project', 11, 'change_project'),
(43, 'Can delete project', 11, 'delete_project'),
(44, 'Can view project', 11, 'view_project'),
(45, 'Can add project_taskassign', 12, 'add_project_taskassign'),
(46, 'Can change project_taskassign', 12, 'change_project_taskassign'),
(47, 'Can delete project_taskassign', 12, 'delete_project_taskassign'),
(48, 'Can view project_taskassign', 12, 'view_project_taskassign'),
(49, 'Can add user_registration', 13, 'add_user_registration'),
(50, 'Can change user_registration', 13, 'change_user_registration'),
(51, 'Can delete user_registration', 13, 'delete_user_registration'),
(52, 'Can view user_registration', 13, 'view_user_registration'),
(53, 'Can add trainer_task', 14, 'add_trainer_task'),
(54, 'Can change trainer_task', 14, 'change_trainer_task'),
(55, 'Can delete trainer_task', 14, 'delete_trainer_task'),
(56, 'Can view trainer_task', 14, 'view_trainer_task'),
(57, 'Can add topic', 15, 'add_topic'),
(58, 'Can change topic', 15, 'change_topic'),
(59, 'Can delete topic', 15, 'delete_topic'),
(60, 'Can view topic', 15, 'view_topic'),
(61, 'Can add tester_status', 16, 'add_tester_status'),
(62, 'Can change tester_status', 16, 'change_tester_status'),
(63, 'Can delete tester_status', 16, 'delete_tester_status'),
(64, 'Can view tester_status', 16, 'view_tester_status'),
(65, 'Can add test_status', 17, 'add_test_status'),
(66, 'Can change test_status', 17, 'change_test_status'),
(67, 'Can delete test_status', 17, 'delete_test_status'),
(68, 'Can view test_status', 17, 'view_test_status'),
(69, 'Can add reported_issue', 18, 'add_reported_issue'),
(70, 'Can change reported_issue', 18, 'change_reported_issue'),
(71, 'Can delete reported_issue', 18, 'delete_reported_issue'),
(72, 'Can view reported_issue', 18, 'view_reported_issue'),
(73, 'Can add qualification', 19, 'add_qualification'),
(74, 'Can change qualification', 19, 'change_qualification'),
(75, 'Can delete qualification', 19, 'delete_qualification'),
(76, 'Can view qualification', 19, 'view_qualification'),
(77, 'Can add leave', 20, 'add_leave'),
(78, 'Can change leave', 20, 'change_leave'),
(79, 'Can delete leave', 20, 'delete_leave'),
(80, 'Can view leave', 20, 'view_leave'),
(81, 'Can add internship', 21, 'add_internship'),
(82, 'Can change internship', 21, 'change_internship'),
(83, 'Can delete internship', 21, 'delete_internship'),
(84, 'Can view internship', 21, 'view_internship'),
(85, 'Can add extracurricular', 22, 'add_extracurricular'),
(86, 'Can change extracurricular', 22, 'change_extracurricular'),
(87, 'Can delete extracurricular', 22, 'delete_extracurricular'),
(88, 'Can view extracurricular', 22, 'view_extracurricular'),
(89, 'Can add attendance', 23, 'add_attendance'),
(90, 'Can change attendance', 23, 'change_attendance'),
(91, 'Can delete attendance', 23, 'delete_attendance'),
(92, 'Can view attendance', 23, 'view_attendance');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_app_attendance`
--

CREATE TABLE `base_app_attendance` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `attendance_status` varchar(200) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_attendance`
--

INSERT INTO `base_app_attendance` (`id`, `date`, `status`, `attendance_status`, `user_id`) VALUES
(1, '2022-02-09', '', '1', 3),
(2, '2022-02-09', '', '0', 7),
(3, '2022-02-22', '', '1', 6),
(4, '2022-02-20', '', '0', 6),
(5, '2022-02-22', '', '1', 7),
(6, '2022-02-24', '', '1', 3),
(7, '2022-02-01', '', '0', 4),
(8, '2022-02-02', '', '1', 4),
(9, '2022-02-03', '', '1', 4),
(10, '2022-02-01', '', '0', 2),
(11, '2022-02-02', '', '1', 2),
(12, '2022-02-03', '', '1', 2),
(13, '2022-02-04', '', '0', 2),
(14, '2022-02-01', '', '0', 17),
(15, '2022-02-02', '', '1', 17),
(16, '2022-02-03', '', '1', 17),
(17, '2022-02-04', '', '1', 17),
(18, '2022-02-04', '', '1', 4);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_branch_registration`
--

CREATE TABLE `base_app_branch_registration` (
  `id` bigint(20) NOT NULL,
  `branch_name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `branch_admin` varchar(100) NOT NULL,
  `branch_type` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_branch_registration`
--

INSERT INTO `base_app_branch_registration` (`id`, `branch_name`, `location`, `branch_admin`, `branch_type`, `status`) VALUES
(1, 'Infox Kochi', 'Kakkanad', 'admin1', 'Head', '');

-- --------------------------------------------------------

--
-- Table structure for table `base_app_create_team`
--

CREATE TABLE `base_app_create_team` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) NOT NULL,
  `trainer` varchar(200) NOT NULL,
  `progress` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `team_count` int(11) NOT NULL,
  `team_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_create_team`
--

INSERT INTO `base_app_create_team` (`id`, `name`, `trainer`, `progress`, `status`, `team_count`, `team_status`) VALUES
(1, 'team 1', 'kripa', 60, '', 3, '0'),
(2, 'Team 2', 'jishnu', 40, '', 3, '0'),
(3, 'Team 3', 'maria', 90, '', 3, '0'),
(4, 'team 4', 'jishnu', 80, '', 4, '1'),
(5, 'team5', 'trainer A', 50, '', 0, '0'),
(6, 'team 6', 'kripa', 70, '', 6, '1');

-- --------------------------------------------------------

--
-- Table structure for table `base_app_department`
--

CREATE TABLE `base_app_department` (
  `id` bigint(20) NOT NULL,
  `department` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `branch_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_department`
--

INSERT INTO `base_app_department` (`id`, `department`, `status`, `branch_id`) VALUES
(1, 'software', '', 1),
(2, 'testing', '', 1),
(3, 'marketing', '', 1),
(4, 'account', '', 1),
(5, 'manager', '', 1),
(6, 'hr', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_designation`
--

CREATE TABLE `base_app_designation` (
  `id` bigint(20) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `branch_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_designation`
--

INSERT INTO `base_app_designation` (`id`, `designation`, `status`, `branch_id`) VALUES
(1, 'trainingmanager', '', 1),
(2, 'trainer', '', 1),
(3, 'trainee', '', 1),
(4, 'tester', '', 1),
(5, 'tl', '', 1),
(6, 'manager', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_extracurricular`
--

CREATE TABLE `base_app_extracurricular` (
  `id` bigint(20) NOT NULL,
  `internshipdetails` varchar(240) DEFAULT NULL,
  `internshipduration` varchar(240) DEFAULT NULL,
  `internshipcertificate` varchar(100) DEFAULT NULL,
  `onlinetrainingdetails` varchar(240) DEFAULT NULL,
  `onlinetrainingduration` varchar(240) DEFAULT NULL,
  `onlinetrainingcertificate` varchar(100) DEFAULT NULL,
  `projecttitle` varchar(240) DEFAULT NULL,
  `projectduration` varchar(240) DEFAULT NULL,
  `projectdescription` longtext DEFAULT NULL,
  `projecturl` varchar(240) DEFAULT NULL,
  `skill1` varchar(240) DEFAULT NULL,
  `skill2` varchar(240) DEFAULT NULL,
  `skill3` varchar(240) DEFAULT NULL,
  `status` varchar(240) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_app_internship`
--

CREATE TABLE `base_app_internship` (
  `id` bigint(20) NOT NULL,
  `reg_date` date DEFAULT NULL,
  `fullname` varchar(200) NOT NULL,
  `collegename` varchar(200) NOT NULL,
  `reg_no` varchar(200) NOT NULL,
  `course` varchar(200) NOT NULL,
  `stream` varchar(200) NOT NULL,
  `platform` varchar(200) NOT NULL,
  `start_date` varchar(200) NOT NULL,
  `end_date` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `alternative_no` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  `attach_file` varchar(100) DEFAULT NULL,
  `rating` varchar(200) NOT NULL,
  `hrmanager` varchar(200) NOT NULL,
  `guide` varchar(200) NOT NULL,
  `qr` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `branch_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_app_leave`
--

CREATE TABLE `base_app_leave` (
  `id` bigint(20) NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `reason` longtext NOT NULL,
  `leave_status` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `designation_id` varchar(200) NOT NULL,
  `leaveapprovedstatus` varchar(200) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_leave`
--

INSERT INTO `base_app_leave` (`id`, `from_date`, `to_date`, `reason`, `leave_status`, `status`, `designation_id`, `leaveapprovedstatus`, `user_id`) VALUES
(1, '2022-02-22', '2022-02-22', 'sebin', 'half Day', '', '3', '1', 4),
(2, '2022-02-22', '2022-02-22', 'sick leave', 'half Day', '', '1', '0', 1),
(3, '2022-02-21', '2022-02-23', 'marriage', 'full Day', '', '2', '0', 2),
(4, '2022-02-21', '2022-02-23', 'sick', 'full Day', '', '2', '2', 9),
(5, '2022-02-18', NULL, 'marriage', 'full Day', '', '2', '1', 10),
(6, '2022-02-21', '2022-02-22', 'sick', 'full Day', '', '3', '2', 4),
(7, '2022-02-21', '2022-02-22', 'sick', 'full Day', '', '3', '1', 5),
(8, '2022-02-22', '2022-02-22', 'sick', 'full Day', '', '2', '', 2),
(9, '2022-02-23', '2022-02-23', 'sick', 'half Day', '', '', '', 4),
(10, '2022-02-23', '2022-02-23', 'sick', 'half Day', '', '3', '0', 4),
(11, '2022-02-23', '2022-02-23', 'sick leave', 'full Day', '', '3', '0', 4),
(12, '2022-02-23', '2022-02-23', 'sick leave', 'full Day', '', '2', '', 2),
(13, '2022-02-23', '2022-02-23', 'sick leave', 'full Day', '', '3', '0', 4),
(14, '2022-02-10', '2022-02-10', 'due to severe headache.', 'half Day', '', '1', '0', 1),
(15, '2022-02-24', '2022-02-25', 'coronaaaaaaa', 'full Day', '', '1', '0', 1),
(16, '2022-02-24', '2022-02-27', 'szdxfgbhnm,.', 'full Day', '', '1', '0', 1),
(17, '2022-02-24', '2022-02-26', 'ertfyhjmkl,;ctybjmkl', 'full Day', '', '2', '', 2),
(18, '2022-02-25', '2022-02-28', 'sdtfhjmklarsztrdybhjl,/', 'full Day', '', '3', '0', 4),
(19, '2022-02-25', '2022-02-28', 'oafdashfiagfishg', 'full Day', '', '2', '', 2),
(20, '2022-02-25', '2022-03-03', 'serdtfhujlk,;.srdcghbjn,rf7tgujk,q24etvhbjn,', 'full Day', '', '2', '1', 2),
(21, '2022-02-25', '2022-02-26', 'dfgadjfdgjkl,', 'full Day', '', '2', '1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_project`
--

CREATE TABLE `base_app_project` (
  `id` bigint(20) NOT NULL,
  `project` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `files` varchar(100) DEFAULT NULL,
  `progress` varchar(100) NOT NULL,
  `user_reason` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `designation_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_app_project_taskassign`
--

CREATE TABLE `base_app_project_taskassign` (
  `id` bigint(20) NOT NULL,
  `description` longtext NOT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `files` varchar(100) DEFAULT NULL,
  `extension` int(11) NOT NULL,
  `reason` longtext DEFAULT NULL,
  `extension_status` varchar(200) DEFAULT NULL,
  `tl_description` varchar(200) DEFAULT NULL,
  `submitted_date` date DEFAULT NULL,
  `employee_files` varchar(100) DEFAULT NULL,
  `employee_description` longtext DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `tester_id` bigint(20) DEFAULT NULL,
  `tl_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_app_qualification`
--

CREATE TABLE `base_app_qualification` (
  `id` bigint(20) NOT NULL,
  `plustwo` varchar(240) DEFAULT NULL,
  `schoolaggregate` varchar(240) DEFAULT NULL,
  `schoolcertificate` varchar(100) DEFAULT NULL,
  `ugdegree` varchar(240) DEFAULT NULL,
  `ugstream` varchar(240) DEFAULT NULL,
  `ugpassoutyr` varchar(240) DEFAULT NULL,
  `ugaggregrate` varchar(240) DEFAULT NULL,
  `backlogs` varchar(240) DEFAULT NULL,
  `ugcertificate` varchar(100) DEFAULT NULL,
  `pg` varchar(240) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_app_reported_issue`
--

CREATE TABLE `base_app_reported_issue` (
  `id` bigint(20) NOT NULL,
  `issue` longtext NOT NULL,
  `reported_date` date DEFAULT NULL,
  `reply` longtext NOT NULL,
  `status` varchar(200) NOT NULL,
  `issuestatus` varchar(200) NOT NULL,
  `designation_id` varchar(200) NOT NULL,
  `reported_to_id` bigint(20) DEFAULT NULL,
  `reporter_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_reported_issue`
--

INSERT INTO `base_app_reported_issue` (`id`, `issue`, `reported_date`, `reply`, `status`, `issuestatus`, `designation_id`, `reported_to_id`, `reporter_id`) VALUES
(1, 'net issue', '2022-02-01', 'okkkkk', '', '1', '2', 1, 2),
(2, 'huhihih', '2022-02-16', 'okk', '', '1', '2', 1, 9),
(3, 'jujiji', '2022-02-10', 'okkk', '', '1', '3', 2, 3),
(4, 'jijuygy', '2022-02-16', 'okkkk', '', '0', '3', 2, 4),
(5, 'net issue', '2022-02-22', '', '', '1', '2', 1, 2),
(6, 'jujuj', '2022-02-22', 'okaayyy', '', '1', '1', 8, 1),
(7, 'huhuhu', '2022-02-22', '', '', '1', '2', 1, 2),
(8, 'hooo', '2022-02-22', '', '', '0', '2', 1, 2),
(9, 'hooo', '2022-02-22', '', '', '1', '2', 1, 2),
(10, 'hooo', '2022-02-22', '', '', '0', '2', 1, 2),
(11, 'hooo', '2022-02-22', '', '', '', '2', 1, 2),
(12, 'sick', '2022-02-22', '', '', '', '2', 1, 2),
(13, '', '2022-02-22', '', '', '', '2', 1, 2),
(14, 'net issue', '2022-02-22', 'okkk', '', '1', '3', 1, 4),
(15, 'network problm', '2022-02-22', 'okk', '', '0', '3', 1, 4),
(16, 'network issues', '2022-02-22', 'okkk', '', '0', '3', 1, 4),
(17, 'net', '2022-02-23', '', '', '', '1', 1, 4),
(18, 'net issues', '2022-02-23', '', '', '', '1', 1, 4),
(19, 'net issues', '2022-02-23', '', '', '0', '1', 1, 4),
(20, 'connection problem', '2022-02-23', '', '', '0', '1', 1, 4),
(21, 'conncetion problems............', '2022-02-23', '', '', '0', '4', 1, 4),
(22, 'connection problems.................404', '2022-02-23', '', '', '0', '3', 1, 4),
(23, 'connection 404', '2022-02-23', '', '', '', '2', 1, 2),
(24, 'connnection issue 404', '2022-02-23', '', '', '', '2', 1, 2),
(25, 'sdfghjkl', '2022-02-23', '', '', '0', '1', 8, 1),
(26, 'xcfgbjmkl,drtfbhjnktcrubjkl;', '2022-02-23', '', '', '', '2', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_tester_status`
--

CREATE TABLE `base_app_tester_status` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `workdone` longtext DEFAULT NULL,
  `files` varchar(100) DEFAULT NULL,
  `subtask` longtext DEFAULT NULL,
  `progress` int(11) NOT NULL,
  `status` varchar(200) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `task_id` bigint(20) DEFAULT NULL,
  `tester_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_app_test_status`
--

CREATE TABLE `base_app_test_status` (
  `id` bigint(20) NOT NULL,
  `date` date DEFAULT NULL,
  `workdone` longtext DEFAULT NULL,
  `files` varchar(100) DEFAULT NULL,
  `project_id` bigint(20) DEFAULT NULL,
  `taskname_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `base_app_topic`
--

CREATE TABLE `base_app_topic` (
  `id` bigint(20) NOT NULL,
  `topic` varchar(240) NOT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `files` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `review` longtext NOT NULL,
  `status` varchar(200) NOT NULL,
  `topic_status` varchar(200) NOT NULL,
  `team_id` bigint(20) DEFAULT NULL,
  `trainee_id` bigint(20) DEFAULT NULL,
  `trainer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_topic`
--

INSERT INTO `base_app_topic` (`id`, `topic`, `startdate`, `enddate`, `files`, `description`, `review`, `status`, `topic_status`, `team_id`, `trainee_id`, `trainer_id`) VALUES
(1, 'core backend', '2022-02-20', '2022-02-24', '', '', 'i WILL DO', '', '1', 1, NULL, NULL),
(2, 'core frontend', '2022-02-17', '2022-02-19', '', '', 'udrugja,lcgbml', '', '1', 1, NULL, NULL),
(3, 'coreapp base', '2022-02-09', '2022-02-10', NULL, '', 'utftioo', '', '0', 2, NULL, NULL),
(4, 'first topic', '2022-02-24', '2022-02-25', '', '', '', '', '0', 1, NULL, NULL),
(5, 'newTOpIc', '2022-02-17', '2022-02-26', '', '', '', '', '0', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_trainer_task`
--

CREATE TABLE `base_app_trainer_task` (
  `id` bigint(20) NOT NULL,
  `taskname` varchar(240) NOT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `files` varchar(100) DEFAULT NULL,
  `description` longtext NOT NULL,
  `user_description` longtext NOT NULL,
  `user_files` varchar(100) DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `task_status` varchar(200) NOT NULL,
  `team_name_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `submitteddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_trainer_task`
--

INSERT INTO `base_app_trainer_task` (`id`, `taskname`, `startdate`, `enddate`, `files`, `description`, `user_description`, `user_files`, `status`, `task_status`, `team_name_id`, `user_id`, `submitteddate`) VALUES
(1, 'core frontend', '2022-02-10', '2022-02-14', '', '', 'progressing', 'images/Capture_WDQrs9A.PNG', '', '1', 1, 4, '2022-02-22'),
(2, 'shopping site', '2022-02-18', '2022-02-22', NULL, '', '', NULL, '', '0', 2, 3, NULL),
(3, 'coreapp frontend', '2022-02-09', '2022-02-17', '', '', 'progressing', 'images/Capture_WDQrs9A_1.PNG', '', '', 2, 5, '2022-02-22'),
(4, 'coreapp front end', '2022-02-10', '2022-02-24', '', '', 'creation', 'images/Capture.PNG', '', '', NULL, 4, NULL),
(5, 'coreapp front end', '2022-02-10', '2022-02-24', '', '', 'creation', 'images/Capture_9xiO2ht.PNG', '', '', NULL, 4, NULL),
(6, 'coreapp froont end', '2022-02-24', '2022-02-26', '', '', 'creation', 'images/Capture_FsdEmZP.PNG', '', '', NULL, 4, NULL),
(7, 'coreapp froont end', '2022-02-24', '2022-02-26', 'images/Capture_etvhjb6.PNG', 'creation', '', '', '', '', NULL, 4, NULL),
(8, 'coreapp froont end', '2022-02-24', '2022-02-28', 'images/Capture_n9ey9Jm.PNG', 'creation', 'completed', 'images/Capture_r5QjQTF.PNG', '', '', NULL, 4, '2022-02-23'),
(9, 'kerala toursism', '2022-02-19', '2022-02-23', 'images/Capture_2JibSo6.PNG', 'creation', '', '', '', '', NULL, 4, NULL),
(10, 'kerala toursism', '2022-02-19', '2022-02-23', 'images/Capture_zpP98Fj.PNG', 'creation', '', '', '', '', NULL, 4, NULL),
(11, 'kerala toursism', '2022-02-18', '2022-02-23', 'images/Capture_1bFTQAq.PNG', 'creation', '', '', '', '', NULL, 4, NULL),
(12, 'kerala toursism', '2022-02-18', '2022-02-23', 'images/Capture_8eaeEKW.PNG', 'creation', 'progressing', 'images/topic.PNG', '', '0', NULL, 4, '2022-02-23'),
(13, 'python', '2022-02-18', '2022-02-23', 'images/Capture_ALfLQhH.PNG', 'create', 'progressing', 'images/Capture_bqdgqjr.PNG', '', '1', 6, 4, '2022-02-23'),
(14, 'task to comoletesdfghj', '2022-02-24', '2022-02-25', 'images/Capture_WDQrs9A_1_TVDuLcs.PNG', 'awesrtfhjkszedcgbhjnsesdghjk,l', '', 'images/Capture_bqdgqjr.PNG', '', '0', 6, 4, NULL),
(15, 'ftyadjsdx;cgfhjklm', '2022-02-18', '2022-02-19', 'images/Capture_WDQrs9A_1_C4ed7Xg.PNG', 'AZSDXGCHBJNMKL', '', '', '', '0', NULL, 4, NULL),
(16, 'paintadikkuka', '2022-02-15', '2022-02-28', 'images/Capture_WDQrs9A_1_H9cb6bG.PNG', 'berger paint blue with white mix', '', '', '', '0', NULL, 3, NULL),
(17, 'asdasdasdasd', '2022-02-24', '2022-02-28', 'images/Capture_WDQrs9A_1_1RpB9SW.PNG', 'qtwz4rtuiulyjtrewfdtgjk.jhgfdsadfghjkjhgfdsfgjmn', '', '', '', '0', 1, 3, NULL),
(18, 'DSFDXFGHGNFBXD', '2022-02-10', '2022-02-24', 'images/Capture_WDQrs9A_1_WOAkyT3.PNG', 'sdfyghiliukyjhgesgcnvc', '', '', '', '0', 1, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `base_app_user_registration`
--

CREATE TABLE `base_app_user_registration` (
  `id` bigint(20) NOT NULL,
  `fullname` varchar(240) DEFAULT NULL,
  `fathername` varchar(240) DEFAULT NULL,
  `mothername` varchar(240) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `gender` varchar(240) DEFAULT NULL,
  `presentaddress1` varchar(240) DEFAULT NULL,
  `presentaddress2` varchar(240) DEFAULT NULL,
  `presentaddress3` varchar(240) DEFAULT NULL,
  `pincode` varchar(240) DEFAULT NULL,
  `district` varchar(240) DEFAULT NULL,
  `state` varchar(240) DEFAULT NULL,
  `country` varchar(240) DEFAULT NULL,
  `permanentaddress1` varchar(240) DEFAULT NULL,
  `permanentaddress2` varchar(240) DEFAULT NULL,
  `permanentaddress3` varchar(240) DEFAULT NULL,
  `permanentpincode` varchar(240) DEFAULT NULL,
  `permanentdistrict` varchar(240) DEFAULT NULL,
  `permanentstate` varchar(240) DEFAULT NULL,
  `permanentcountry` varchar(240) DEFAULT NULL,
  `mobile` varchar(240) DEFAULT NULL,
  `alternativeno` varchar(240) DEFAULT NULL,
  `email` varchar(240) DEFAULT NULL,
  `password` varchar(240) DEFAULT NULL,
  `idproof` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `attitude` int(11) NOT NULL,
  `creativity` int(11) NOT NULL,
  `workperformance` int(11) NOT NULL,
  `joiningdate` date DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `status` varchar(240) DEFAULT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `designation_id` bigint(20) DEFAULT NULL,
  `team_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `base_app_user_registration`
--

INSERT INTO `base_app_user_registration` (`id`, `fullname`, `fathername`, `mothername`, `dateofbirth`, `gender`, `presentaddress1`, `presentaddress2`, `presentaddress3`, `pincode`, `district`, `state`, `country`, `permanentaddress1`, `permanentaddress2`, `permanentaddress3`, `permanentpincode`, `permanentdistrict`, `permanentstate`, `permanentcountry`, `mobile`, `alternativeno`, `email`, `password`, `idproof`, `photo`, `attitude`, `creativity`, `workperformance`, `joiningdate`, `startdate`, `enddate`, `status`, `branch_id`, `department_id`, `designation_id`, `team_id`) VALUES
(1, 'emil', NULL, NULL, '2022-01-11', 'male', 'kgdyjjjk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '876567800', NULL, 'emil@gmail.com', '1234', NULL, 'face2.jpg', 70, 60, 50, '2021-11-09', '2022-01-12', '2022-02-01', NULL, 1, 1, 1, 1),
(2, 'kripa', NULL, NULL, '2022-01-04', 'female', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '768965478', NULL, 'kripa@gmail.com', '1234', NULL, 'face8.jpg', 50, 50, 60, '2021-11-01', '2021-12-07', '2022-01-27', NULL, 1, 1, 2, 4),
(3, 'sebin', NULL, NULL, '2021-09-08', 'male', 'gtfrdhj', 'okuyghh', '', '676547', 'alappuzha', 'kerala', 'India', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8789765678', NULL, 'sebin@gmail.com', '1234', '', 'face12.jpg', 30, 50, 100, '2022-01-05', '2022-01-29', '2022-02-01', NULL, 1, 1, 3, 1),
(4, 'leya', NULL, NULL, '2021-12-05', 'female', 'erfgthukj', 'uyhtgfd', NULL, '87987', 'kollam', 'kerala', 'India', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '76897655', NULL, 'leya@gmail.com', '1234', NULL, 'face10.jpg', 60, 50, 70, '2022-01-01', '2022-01-28', '2022-02-01', NULL, 1, 1, 3, 1),
(5, 'sanisha', NULL, NULL, '2021-02-11', 'female', 'juhtgyhujio', 'hyhgtyui', NULL, '678657', 'palakkad', 'kerala', 'India', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '89765678', NULL, 'sanisha@gmail.com', '1234', NULL, 'face3.jpg', 40, 80, 70, '2022-01-01', '2022-01-27', '2022-02-01', NULL, 1, 1, 3, 2),
(6, 'anna', NULL, NULL, '2021-10-01', 'female', 'uiygtyujo', 'uytiomn', NULL, '678976', 'tvm', 'kerala', 'India', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'face9.jpg', 45, 75, 78, '2022-01-02', '2022-02-01', '2022-02-02', NULL, 1, 1, 3, 2),
(7, 'fuad', NULL, NULL, '2021-08-03', 'male', 'kijuyhgth', 'kiuytgfh', NULL, '765678', 'kozhikod', 'kerala', 'India', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '87656789', NULL, 'fuad@gmail.com', '1234', '', 'face5.jpg', 80, 70, 60, '2021-12-01', '2022-01-07', '2022-01-19', NULL, 1, 1, 3, 3),
(8, 'maria', NULL, NULL, '2021-07-07', 'female', 'iuiyuiytt', 'uiyuitgf', NULL, '76780', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'maria@gmail.com', '1234', NULL, 'face16.jpg', 20, 50, 60, '2021-12-02', '2021-12-15', '2021-12-30', NULL, 1, 1, 6, 1),
(9, 'jishnu', NULL, NULL, '2021-10-04', 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'jishnu@gmail.com', '1234', NULL, 'face20.jpg', 65, 78, 82, '2022-02-03', '2022-01-05', '2022-02-01', NULL, 1, 1, 2, 2),
(10, 'trainer A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'trainerA@gmail.com', '1234', NULL, 'face17.jpg', 90, 45, 87, '2022-02-02', '2022-02-01', '2022-01-05', NULL, 1, 1, 2, 3),
(11, 'trainer B', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'trainerB@gmail.com', '1234', NULL, 'face13.jpg', 25, 45, 80, '2022-01-07', '2022-02-02', '2022-02-07', NULL, 1, 1, 2, 2),
(12, 'trainr C', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'trainerC@gmail.com', '1234', NULL, 'face14.jpg', 95, 35, 26, '2022-02-01', '2022-02-02', '2022-02-02', NULL, 1, 1, 2, 2),
(13, 'trainee1', NULL, NULL, NULL, 'male', 'yutuiohg', 'uijygr', NULL, '98788', 'hygthik', 'hyhtg', 'gtftgh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '89767899', NULL, 'trainee1@gmail.com', '1234', NULL, 'face19.jpg', 64, 76, 50, '2022-02-04', '2022-02-02', '2022-02-03', NULL, 1, 1, 3, 3),
(14, 'trainee2', NULL, NULL, NULL, 'female', 'ujyhtg', NULL, NULL, '87878', 'kijuhyh', 'gtju', 'uhuhyg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8787688', NULL, 'trainee2@gmail.com', '1234', NULL, 'face4.jpg', 50, 60, 70, '2022-02-01', '2022-02-02', '2022-02-01', NULL, 1, 1, 3, 1),
(15, 'trainee3', NULL, NULL, NULL, 'male', 'yuijyhgt', NULL, NULL, '78767', 'kijijuyg', 'hygthuj', 'ijiujk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'face1.jpg', 50, 60, 50, '2022-02-02', '2022-02-02', '2022-02-02', NULL, 1, 1, 3, 4),
(16, 'trainee4', NULL, NULL, NULL, 'female', 'hyhtguj', NULL, NULL, NULL, 'ikojujhy', 'ujikok', 'huhyhy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'face22.jpg', 40, 60, 50, '2022-02-04', '2022-02-03', '2022-02-02', NULL, 1, 1, 3, 4),
(17, 'althaf', NULL, NULL, '2020-11-11', 'male', 'kojujhyh', NULL, NULL, '98789', 'kikijuh', 'juhuji', 'juhyju', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '9898768899', NULL, 'althaf@gmail.com', '1234', '', 'face21.jpg', 45, 75, 30, '2022-02-02', '2022-02-02', '2022-02-02', NULL, 1, 1, 3, 6),
(18, 'anu', NULL, NULL, '2021-04-14', 'female', 'huhtgff', 'kikjugg', NULL, '878765', 'juhyh', 'juhyhg', 'juhygb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '989876509', NULL, 'anu@gmail.com', '1234', '', 'face23.jpg', 80, 80, 80, '2022-01-01', '2022-01-07', '2022-02-01', NULL, 1, 2, 4, 6),
(19, 'john', NULL, NULL, '2022-01-06', 'male', 'kijuht', 'kiji', NULL, '98786', 'jujyhg', 'juhyhy', 'hyhyh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '989866509', NULL, 'john@gmail.com', '1234', NULL, 'face24.jpg', 75, 65, 25, '2022-01-05', '2022-02-09', '2022-02-10', NULL, 1, 1, 3, 2),
(20, 'ammu', NULL, NULL, '2021-07-08', 'female', 'jujyhgg', NULL, NULL, '56545', 'kijujhgg', 'jujuju', 'htgtfrgg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '87679900', NULL, 'amu@gmail.com', '1234', NULL, 'face25.jpg', 70, 60, 40, '2022-01-11', '2022-01-28', '2022-02-01', NULL, 1, 1, 3, 3),
(21, 'leo', NULL, NULL, NULL, 'male', 'jijujii', NULL, NULL, '878766', 'huhjkk', 'huhujj', 'argentina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'face27.jpg', 75, 75, 60, '2022-01-01', '2022-01-03', '2022-01-29', NULL, 1, 2, 4, 6),
(22, 'smrithi ', NULL, NULL, NULL, 'female', 'jijiko', NULL, NULL, '878999', 'jujhik', 'edftgh', 'India', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'face26.jpg', 85, 86, 59, '2022-01-01', '2022-01-04', '2022-01-27', NULL, 1, 2, 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(23, 'base_app', 'attendance'),
(7, 'base_app', 'branch_registration'),
(8, 'base_app', 'create_team'),
(9, 'base_app', 'department'),
(10, 'base_app', 'designation'),
(22, 'base_app', 'extracurricular'),
(21, 'base_app', 'internship'),
(20, 'base_app', 'leave'),
(11, 'base_app', 'project'),
(12, 'base_app', 'project_taskassign'),
(19, 'base_app', 'qualification'),
(18, 'base_app', 'reported_issue'),
(16, 'base_app', 'tester_status'),
(17, 'base_app', 'test_status'),
(15, 'base_app', 'topic'),
(14, 'base_app', 'trainer_task'),
(13, 'base_app', 'user_registration'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-02-23 12:57:30.215687'),
(2, 'auth', '0001_initial', '2022-02-23 12:57:41.742034'),
(3, 'admin', '0001_initial', '2022-02-23 12:57:46.056915'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-02-23 12:57:46.138352'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-02-23 12:57:46.180304'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-02-23 12:57:47.142338'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-02-23 12:57:49.182012'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-02-23 12:57:49.382168'),
(9, 'auth', '0004_alter_user_username_opts', '2022-02-23 12:57:49.452519'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-02-23 12:57:50.224110'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-02-23 12:57:50.262668'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-02-23 12:57:50.327467'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-02-23 12:57:50.492179'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-02-23 12:57:50.672157'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-02-23 12:57:50.948097'),
(16, 'auth', '0011_update_proxy_permissions', '2022-02-23 12:57:51.136751'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-02-23 12:57:51.387673'),
(18, 'base_app', '0001_initial', '2022-02-23 12:58:38.492899'),
(19, 'base_app', '0002_trainer_task_submitteddate_alter_attendance_date', '2022-02-23 12:58:40.132580'),
(20, 'sessions', '0001_initial', '2022-02-23 12:58:40.892762');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('ahc83167ihwtg9n5lu60h2k2jvk65k6l', '.eJyrViotTi3KS8xNLclVsjLUQeIaKlkppeZm5ighCxqhKirKK1ayMkYVACoxQRUxRtdUpGRlhCoAsiy7KLMgUQlV3AhdZTFIZU5qZaJSLQATnkEx:1nMjPa:9RfKXcTRMYNC8gH8C1bdLhGG7laX-g5H-BOGVIWbuxo', '2022-03-09 04:37:58.811018'),
('m0gtt971pua6hw22ek2mvd4buu3qd6qt', '.eJyrViotTi3KS8xNLclVsjLUQeIaKlkppeZm5ighCxqhKirKK1KyMkIVAOnLLsosSFRCFTdCV1msZGWMKgBUYoIqYoxuXzHI-JzUykSlWgAWCEEx:1nMyEX:m3v7gFpcxLxG0WX4KHyAIU_TEADT3yNu082P8RHyJv4', '2022-03-09 20:27:33.403084');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `base_app_attendance`
--
ALTER TABLE `base_app_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_attendance_user_id_430c8040_fk_base_app_` (`user_id`);

--
-- Indexes for table `base_app_branch_registration`
--
ALTER TABLE `base_app_branch_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_app_create_team`
--
ALTER TABLE `base_app_create_team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `base_app_department`
--
ALTER TABLE `base_app_department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_department_branch_id_eabcf909_fk_base_app_` (`branch_id`);

--
-- Indexes for table `base_app_designation`
--
ALTER TABLE `base_app_designation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_designation_branch_id_1fc335cd_fk_base_app_` (`branch_id`);

--
-- Indexes for table `base_app_extracurricular`
--
ALTER TABLE `base_app_extracurricular`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_extracurric_user_id_75f4c404_fk_base_app_` (`user_id`);

--
-- Indexes for table `base_app_internship`
--
ALTER TABLE `base_app_internship`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_internship_branch_id_8aeb0fa1_fk_base_app_` (`branch_id`);

--
-- Indexes for table `base_app_leave`
--
ALTER TABLE `base_app_leave`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_leave_user_id_864afd43_fk_base_app_user_registration_id` (`user_id`);

--
-- Indexes for table `base_app_project`
--
ALTER TABLE `base_app_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_project_user_id_383d7917_fk_base_app_` (`user_id`),
  ADD KEY `base_app_project_department_id_ab5a9426_fk_base_app_` (`department_id`),
  ADD KEY `base_app_project_designation_id_b5dff45f_fk_base_app_` (`designation_id`);

--
-- Indexes for table `base_app_project_taskassign`
--
ALTER TABLE `base_app_project_taskassign`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_project_tas_tester_id_7758f59d_fk_base_app_` (`tester_id`),
  ADD KEY `base_app_project_tas_tl_id_7d2cff4b_fk_base_app_` (`tl_id`),
  ADD KEY `base_app_project_tas_user_id_c6fa3e6b_fk_base_app_` (`user_id`),
  ADD KEY `base_app_project_tas_project_id_11045022_fk_base_app_` (`project_id`);

--
-- Indexes for table `base_app_qualification`
--
ALTER TABLE `base_app_qualification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_qualificati_user_id_28baad2d_fk_base_app_` (`user_id`);

--
-- Indexes for table `base_app_reported_issue`
--
ALTER TABLE `base_app_reported_issue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_reported_is_reported_to_id_071dd663_fk_base_app_` (`reported_to_id`),
  ADD KEY `base_app_reported_is_reporter_id_ecf00692_fk_base_app_` (`reporter_id`);

--
-- Indexes for table `base_app_tester_status`
--
ALTER TABLE `base_app_tester_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_tester_stat_project_id_95868a63_fk_base_app_` (`project_id`),
  ADD KEY `base_app_tester_stat_task_id_4e683dd3_fk_base_app_` (`task_id`),
  ADD KEY `base_app_tester_stat_tester_id_da5cd3da_fk_base_app_` (`tester_id`),
  ADD KEY `base_app_tester_stat_user_id_c8214431_fk_base_app_` (`user_id`);

--
-- Indexes for table `base_app_test_status`
--
ALTER TABLE `base_app_test_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_test_status_project_id_8790b454_fk_base_app_project_id` (`project_id`),
  ADD KEY `base_app_test_status_taskname_id_6f61b503_fk_base_app_` (`taskname_id`),
  ADD KEY `base_app_test_status_user_id_84ffa638_fk_base_app_` (`user_id`);

--
-- Indexes for table `base_app_topic`
--
ALTER TABLE `base_app_topic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_topic_team_id_a0c5e7a1_fk_base_app_create_team_id` (`team_id`),
  ADD KEY `base_app_topic_trainee_id_1cdbdb38_fk_base_app_` (`trainee_id`),
  ADD KEY `base_app_topic_trainer_id_eb6a13e5_fk_base_app_` (`trainer_id`);

--
-- Indexes for table `base_app_trainer_task`
--
ALTER TABLE `base_app_trainer_task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_trainer_tas_team_name_id_d201e56b_fk_base_app_` (`team_name_id`),
  ADD KEY `base_app_trainer_tas_user_id_d13a5c2d_fk_base_app_` (`user_id`);

--
-- Indexes for table `base_app_user_registration`
--
ALTER TABLE `base_app_user_registration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `base_app_user_regist_branch_id_14a07e3d_fk_base_app_` (`branch_id`),
  ADD KEY `base_app_user_regist_department_id_f8ffba2f_fk_base_app_` (`department_id`),
  ADD KEY `base_app_user_regist_designation_id_1a35907e_fk_base_app_` (`designation_id`),
  ADD KEY `base_app_user_regist_team_id_82d71bbf_fk_base_app_` (`team_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_app_attendance`
--
ALTER TABLE `base_app_attendance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `base_app_branch_registration`
--
ALTER TABLE `base_app_branch_registration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `base_app_create_team`
--
ALTER TABLE `base_app_create_team`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `base_app_department`
--
ALTER TABLE `base_app_department`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `base_app_designation`
--
ALTER TABLE `base_app_designation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `base_app_extracurricular`
--
ALTER TABLE `base_app_extracurricular`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_app_internship`
--
ALTER TABLE `base_app_internship`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_app_leave`
--
ALTER TABLE `base_app_leave`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `base_app_project`
--
ALTER TABLE `base_app_project`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_app_project_taskassign`
--
ALTER TABLE `base_app_project_taskassign`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_app_qualification`
--
ALTER TABLE `base_app_qualification`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_app_reported_issue`
--
ALTER TABLE `base_app_reported_issue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `base_app_tester_status`
--
ALTER TABLE `base_app_tester_status`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_app_test_status`
--
ALTER TABLE `base_app_test_status`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `base_app_topic`
--
ALTER TABLE `base_app_topic`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `base_app_trainer_task`
--
ALTER TABLE `base_app_trainer_task`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `base_app_user_registration`
--
ALTER TABLE `base_app_user_registration`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `base_app_attendance`
--
ALTER TABLE `base_app_attendance`
  ADD CONSTRAINT `base_app_attendance_user_id_430c8040_fk_base_app_` FOREIGN KEY (`user_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_department`
--
ALTER TABLE `base_app_department`
  ADD CONSTRAINT `base_app_department_branch_id_eabcf909_fk_base_app_` FOREIGN KEY (`branch_id`) REFERENCES `base_app_branch_registration` (`id`);

--
-- Constraints for table `base_app_designation`
--
ALTER TABLE `base_app_designation`
  ADD CONSTRAINT `base_app_designation_branch_id_1fc335cd_fk_base_app_` FOREIGN KEY (`branch_id`) REFERENCES `base_app_branch_registration` (`id`);

--
-- Constraints for table `base_app_extracurricular`
--
ALTER TABLE `base_app_extracurricular`
  ADD CONSTRAINT `base_app_extracurric_user_id_75f4c404_fk_base_app_` FOREIGN KEY (`user_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_internship`
--
ALTER TABLE `base_app_internship`
  ADD CONSTRAINT `base_app_internship_branch_id_8aeb0fa1_fk_base_app_` FOREIGN KEY (`branch_id`) REFERENCES `base_app_branch_registration` (`id`);

--
-- Constraints for table `base_app_leave`
--
ALTER TABLE `base_app_leave`
  ADD CONSTRAINT `base_app_leave_user_id_864afd43_fk_base_app_user_registration_id` FOREIGN KEY (`user_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_project`
--
ALTER TABLE `base_app_project`
  ADD CONSTRAINT `base_app_project_department_id_ab5a9426_fk_base_app_` FOREIGN KEY (`department_id`) REFERENCES `base_app_department` (`id`),
  ADD CONSTRAINT `base_app_project_designation_id_b5dff45f_fk_base_app_` FOREIGN KEY (`designation_id`) REFERENCES `base_app_designation` (`id`),
  ADD CONSTRAINT `base_app_project_user_id_383d7917_fk_base_app_` FOREIGN KEY (`user_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_project_taskassign`
--
ALTER TABLE `base_app_project_taskassign`
  ADD CONSTRAINT `base_app_project_tas_project_id_11045022_fk_base_app_` FOREIGN KEY (`project_id`) REFERENCES `base_app_project` (`id`),
  ADD CONSTRAINT `base_app_project_tas_tester_id_7758f59d_fk_base_app_` FOREIGN KEY (`tester_id`) REFERENCES `base_app_user_registration` (`id`),
  ADD CONSTRAINT `base_app_project_tas_tl_id_7d2cff4b_fk_base_app_` FOREIGN KEY (`tl_id`) REFERENCES `base_app_user_registration` (`id`),
  ADD CONSTRAINT `base_app_project_tas_user_id_c6fa3e6b_fk_base_app_` FOREIGN KEY (`user_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_qualification`
--
ALTER TABLE `base_app_qualification`
  ADD CONSTRAINT `base_app_qualificati_user_id_28baad2d_fk_base_app_` FOREIGN KEY (`user_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_reported_issue`
--
ALTER TABLE `base_app_reported_issue`
  ADD CONSTRAINT `base_app_reported_is_reported_to_id_071dd663_fk_base_app_` FOREIGN KEY (`reported_to_id`) REFERENCES `base_app_user_registration` (`id`),
  ADD CONSTRAINT `base_app_reported_is_reporter_id_ecf00692_fk_base_app_` FOREIGN KEY (`reporter_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_tester_status`
--
ALTER TABLE `base_app_tester_status`
  ADD CONSTRAINT `base_app_tester_stat_project_id_95868a63_fk_base_app_` FOREIGN KEY (`project_id`) REFERENCES `base_app_project` (`id`),
  ADD CONSTRAINT `base_app_tester_stat_task_id_4e683dd3_fk_base_app_` FOREIGN KEY (`task_id`) REFERENCES `base_app_project_taskassign` (`id`),
  ADD CONSTRAINT `base_app_tester_stat_tester_id_da5cd3da_fk_base_app_` FOREIGN KEY (`tester_id`) REFERENCES `base_app_user_registration` (`id`),
  ADD CONSTRAINT `base_app_tester_stat_user_id_c8214431_fk_base_app_` FOREIGN KEY (`user_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_test_status`
--
ALTER TABLE `base_app_test_status`
  ADD CONSTRAINT `base_app_test_status_project_id_8790b454_fk_base_app_project_id` FOREIGN KEY (`project_id`) REFERENCES `base_app_project` (`id`),
  ADD CONSTRAINT `base_app_test_status_taskname_id_6f61b503_fk_base_app_` FOREIGN KEY (`taskname_id`) REFERENCES `base_app_user_registration` (`id`),
  ADD CONSTRAINT `base_app_test_status_user_id_84ffa638_fk_base_app_` FOREIGN KEY (`user_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_topic`
--
ALTER TABLE `base_app_topic`
  ADD CONSTRAINT `base_app_topic_team_id_a0c5e7a1_fk_base_app_create_team_id` FOREIGN KEY (`team_id`) REFERENCES `base_app_create_team` (`id`),
  ADD CONSTRAINT `base_app_topic_trainee_id_1cdbdb38_fk_base_app_` FOREIGN KEY (`trainee_id`) REFERENCES `base_app_user_registration` (`id`),
  ADD CONSTRAINT `base_app_topic_trainer_id_eb6a13e5_fk_base_app_` FOREIGN KEY (`trainer_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_trainer_task`
--
ALTER TABLE `base_app_trainer_task`
  ADD CONSTRAINT `base_app_trainer_tas_team_name_id_d201e56b_fk_base_app_` FOREIGN KEY (`team_name_id`) REFERENCES `base_app_create_team` (`id`),
  ADD CONSTRAINT `base_app_trainer_tas_user_id_d13a5c2d_fk_base_app_` FOREIGN KEY (`user_id`) REFERENCES `base_app_user_registration` (`id`);

--
-- Constraints for table `base_app_user_registration`
--
ALTER TABLE `base_app_user_registration`
  ADD CONSTRAINT `base_app_user_regist_branch_id_14a07e3d_fk_base_app_` FOREIGN KEY (`branch_id`) REFERENCES `base_app_branch_registration` (`id`),
  ADD CONSTRAINT `base_app_user_regist_department_id_f8ffba2f_fk_base_app_` FOREIGN KEY (`department_id`) REFERENCES `base_app_department` (`id`),
  ADD CONSTRAINT `base_app_user_regist_designation_id_1a35907e_fk_base_app_` FOREIGN KEY (`designation_id`) REFERENCES `base_app_designation` (`id`),
  ADD CONSTRAINT `base_app_user_regist_team_id_82d71bbf_fk_base_app_` FOREIGN KEY (`team_id`) REFERENCES `base_app_create_team` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
