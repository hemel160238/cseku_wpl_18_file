-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 28, 2018 at 10:58 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cseku2`
--

-- --------------------------------------------------------

--
-- Table structure for table `fms_file`
--

DROP TABLE IF EXISTS `fms_file`;
CREATE TABLE IF NOT EXISTS `fms_file` (
  `ID` varchar(50) NOT NULL,
  `Link` varchar(200) NOT NULL,
  `CreatorID` varchar(50) NOT NULL,
  `CurrentUser` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fms_file`
--

INSERT INTO `fms_file` (`ID`, `Link`, `CreatorID`, `CurrentUser`) VALUES
('{A9D03463-15D8-4DE9-B6AE-E81F7485B9E3}', 'uploads/file/Assignment.pdf', 'mkazi078@uottawa.ca', 'aysha@gmail.com'),
('{45AA77F9-9C5C-42FA-9D31-A90129ED2B9C}', 'uploads/file/backup.txt', 'mkazi078@uottawa.ca', 'zahid@gmail.com'),
('{03E43B60-C12D-45CB-8165-1821B8D8038B}', 'uploads/file/Joya.pdf', 'mkazi078@uottawa.ca', 'aysha@gmail.com'),
('{6E904E9B-8682-4A77-8E80-2B81E5276F13}', 'uploads/file/gas-1.jpg', 'mkazi078@uottawa.ca', 'aysha@gmail.com'),
('{8F659BE7-B05E-461F-8EF9-A72D21FD60DB}', 'uploads/file/Power-Shortage.jpg', 'mkazi078@uottawa.ca', 'zahid@gmail.com'),
('{F3D027CF-6855-4520-ABEE-5CE5AED21AB0}', 'uploads/file/fznwqqxbyg-1464682599.jpg', 'aysha@gmail.com', 'mkazi078@uottawa.ca'),
('{B0B3FB1F-ADA0-4246-87E0-BBE315C8AAD7}', 'uploads/file/WASA20170731134440.jpg', 'kashif@gmail.com', 'mkazi078@uottawa.ca');

-- --------------------------------------------------------

--
-- Table structure for table `fms_fileassign`
--

DROP TABLE IF EXISTS `fms_fileassign`;
CREATE TABLE IF NOT EXISTS `fms_fileassign` (
  `ID` varchar(50) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `disciplineID` varchar(50) NOT NULL,
  `comment` varchar(63000) NOT NULL,
  `timestamp` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fms_fileassign`
--

INSERT INTO `fms_fileassign` (`ID`, `sender`, `receiver`, `disciplineID`, `comment`, `timestamp`) VALUES
('{03E43B60-C12D-45CB-8165-1821B8D8038B}', 'mkazi078@uottawa.ca', 'aysha@gmail.com', '', 'nothing here', '2018-10-27 17:52:16'),
('{6E904E9B-8682-4A77-8E80-2B81E5276F13}', 'mkazi078@uottawa.ca', 'aysha@gmail.com', '', '-_-', '2018-10-27 17:58:17'),
('{8F659BE7-B05E-461F-8EF9-A72D21FD60DB}', 'mkazi078@uottawa.ca', 'zahid@gmail.com', '', 'Hello World', '2018-10-27 18:24:53'),
('{F3D027CF-6855-4520-ABEE-5CE5AED21AB0}', 'aysha@gmail.com', 'mkazi078@uottawa.ca', '', 'Hello World', '2018-10-27 19:37:55'),
('{B0B3FB1F-ADA0-4246-87E0-BBE315C8AAD7}', 'kashif@gmail.com', 'mkazi078@uottawa.ca', '', 'Nothing', '2018-10-27 20:53:47');

-- --------------------------------------------------------

--
-- Table structure for table `jms_job`
--

DROP TABLE IF EXISTS `jms_job`;
CREATE TABLE IF NOT EXISTS `jms_job` (
  `ID` varchar(40) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Details` varchar(1000) NOT NULL,
  `LastDateOfApplication` date NOT NULL,
  `Salary` float NOT NULL,
  `Qualification` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reg_course`
--

DROP TABLE IF EXISTS `reg_course`;
CREATE TABLE IF NOT EXISTS `reg_course` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Credit` double NOT NULL,
  `CourseTypeID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course`
--

INSERT INTO `reg_course` (`ID`, `CourseNo`, `Title`, `Credit`, `CourseTypeID`, `DisciplineID`, `IsDeleted`) VALUES
('{2A038C6A-B6DA-408D-8458-7493D4EE5D6C}', 'cse-3200', 'Web Programming Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 0),
('{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', 'cse-4112', 'Computer Networks Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5} ', 0),
('{683A3D91-D124-44AF-82A3-FB43837A4392}', 'cse-4111', 'Computer Networks', 3, '{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 0),
('{B17BDB32-6D88-4537-9545-65D940E17EEF}', 'cse-2115', 'Advanced Programming Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5} ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_resource`
--

DROP TABLE IF EXISTS `reg_course_resource`;
CREATE TABLE IF NOT EXISTS `reg_course_resource` (
  `CourseID` varchar(40) NOT NULL,
  `ResourceID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_sessional_type`
--

DROP TABLE IF EXISTS `reg_course_sessional_type`;
CREATE TABLE IF NOT EXISTS `reg_course_sessional_type` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_sessional_type`
--

INSERT INTO `reg_course_sessional_type` (`ID`, `Name`) VALUES
('{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}', 'N/A'),
('{45B2147F-5FE0-4CC9-880C-C19EB6323955}', 'physics'),
('{4B342686-B38E-449C-AAD2-1F7DD77E6594}', 'chemistry'),
('{D1E54E03-CDEB-4155-AD0C-27C70A3A490C}', 'ece'),
('{D3F895D3-7389-487F-A604-0BD546DCC764}', 'software'),
('{F1D0443A-EC5D-41C4-94BA-D6F0D9AB1691}', 'hardware');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_student_registration`
--

DROP TABLE IF EXISTS `reg_course_student_registration`;
CREATE TABLE IF NOT EXISTS `reg_course_student_registration` (
  `ID` varchar(40) NOT NULL,
  `Regs_TeacherID` varchar(40) DEFAULT NULL,
  `StudentID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `SessionID` varchar(40) DEFAULT NULL,
  `YearID` varchar(40) DEFAULT NULL,
  `TermID` varchar(40) DEFAULT NULL,
  `IsRetake` tinyint(1) DEFAULT NULL,
  `Status` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_student_registration`
--

INSERT INTO `reg_course_student_registration` (`ID`, `Regs_TeacherID`, `StudentID`, `CourseID`, `SessionID`, `YearID`, `TermID`, `IsRetake`, `Status`) VALUES
('{31FDEF1E-F280-436A-AFD3-A48BA772D23D}', 'mkazi078@uottawa.ca', 'kashif@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{3CA3ABF7-7FF8-4A32-B328-235861061B72}', 'mkazi078@uottawa.ca', 'zahid@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{B7F17833-430E-489A-9CA6-E9BBE0EFA0FD}', 'mkazi078@uottawa.ca', 'kashif@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{B8B362F3-D164-4082-AA6C-08F3EC73E2A8}', 'mkazi078@uottawa.ca', 'aysha@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{C8AE75F9-1644-48C5-87D0-4AFEC777C122}', 'mkazi078@uottawa.ca', 'zahid@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'submitted'),
('{DBE4ED93-4A97-41CF-B8E3-5E42AEC0246F}', 'mkazi078@uottawa.ca', 'aysha@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_teacher`
--

DROP TABLE IF EXISTS `reg_course_teacher`;
CREATE TABLE IF NOT EXISTS `reg_course_teacher` (
  `ID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `NoOfTests` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_teacher`
--

INSERT INTO `reg_course_teacher` (`ID`, `CourseID`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `NoOfTests`) VALUES
('{0BA78ECC-A6E7-4EA8-9BFA-6C599F88F76D}', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 5),
('{C4490FFA-154B-45FE-9773-744B3E6FDFF7}', '{683A3D91-D124-44AF-82A3-FB43837A4392}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 3);

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_teacher_registration`
--

DROP TABLE IF EXISTS `reg_course_teacher_registration`;
CREATE TABLE IF NOT EXISTS `reg_course_teacher_registration` (
  `ID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_teacher_registration`
--

INSERT INTO `reg_course_teacher_registration` (`ID`, `TeacherID`, `SessionID`, `YearID`, `TermID`) VALUES
('{4D389527-643B-4B05-80AB-E05A6EF8DE2A}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{EA335D18-A1A8-4D15-9C7B-4A4700AD4543}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_type`
--

DROP TABLE IF EXISTS `reg_course_type`;
CREATE TABLE IF NOT EXISTS `reg_course_type` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `SessionalTypeID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_type`
--

INSERT INTO `reg_course_type` (`ID`, `Name`, `SessionalTypeID`) VALUES
('{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', 'Theory', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}'),
('{5F886686-4EB1-48C8-A801-8D46233739D1}', 'Thesis', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}'),
('{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', 'Sessional', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}');

-- --------------------------------------------------------

--
-- Table structure for table `reg_registration_session`
--

DROP TABLE IF EXISTS `reg_registration_session`;
CREATE TABLE IF NOT EXISTS `reg_registration_session` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_registration_session`
--

INSERT INTO `reg_registration_session` (`ID`, `Name`) VALUES
('{05DA37EB-6C62-45E9-A0E3-7C5C6943F6AD}', '2012-2013'),
('{1399EEA3-B939-4155-B9F3-4DAD4928C4D5}', '2014-2015'),
('{65C2BA57-7231-497A-A5A7-90912259684C}', '2011-2012'),
('{A36A7057-CDB5-4E10-9E61-CCC85C74460E}', '2013-2014'),
('{DFF9E45F-6954-46A1-9088-D930EE460C3F}', '2015-2016'),
('{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '2016-2017');

-- --------------------------------------------------------

--
-- Table structure for table `reg_term`
--

DROP TABLE IF EXISTS `reg_term`;
CREATE TABLE IF NOT EXISTS `reg_term` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_term`
--

INSERT INTO `reg_term` (`ID`, `Name`) VALUES
('{6DE3CF58-3A1A-4D6A-88CF-83F22C27E0BA}', 'Special'),
('{AF8B217E-4E76-41B8-A02A-7115BD4A6BE6}', '2nd'),
('{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `reg_year`
--

DROP TABLE IF EXISTS `reg_year`;
CREATE TABLE IF NOT EXISTS `reg_year` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_year`
--

INSERT INTO `reg_year` (`ID`, `Name`) VALUES
('{1FAC0F1A-9D60-43F6-AB07-C933D5A4AA30}', 'Phd 1st'),
('{326B168F-58CC-42F3-B71A-DFE8DBBC05E8}', 'MSc 1st'),
('{6780C884-E112-4F58-9503-E2110B615547}', '4th'),
('{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '1st'),
('{A21965E4-4FE4-43AC-A77F-DABAC9B356F2}', '3rd'),
('{ADBEDD3E-D8EA-47AA-A068-C4C703DB4AE6}', 'MSc 2nd'),
('{B9D6CC05-7AD4-4666-80AB-80797A872743}', 'Phd 2nd'),
('{CBE08035-94CD-4610-B4E2-A0E844184056}', 'Phd 4th'),
('{E3823AA6-6BE5-4A07-93EA-FA59DE4F616F}', 'Phd 3rd'),
('{EA335D18-A1A8-4D15-9C7B-4A4700AD4543}', '2nd');

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_result`
--

DROP TABLE IF EXISTS `rms_course_marks_result`;
CREATE TABLE IF NOT EXISTS `rms_course_marks_result` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) DEFAULT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `MarksID` varchar(40) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  `Status` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_course_marks_result`
--

INSERT INTO `rms_course_marks_result` (`ID`, `CourseNo`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `StudentID`, `MarksID`, `MarksValue`, `Status`) VALUES
('{44C3C858-AFC6-4592-B160-10B921BF381C}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '{7E24DC07-CD2C-4360-A6E9-05A363C2EA08}', '10,25,25,25', '');

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_result_publish`
--

DROP TABLE IF EXISTS `rms_course_marks_result_publish`;
CREATE TABLE IF NOT EXISTS `rms_course_marks_result_publish` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) DEFAULT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `HeaderID` varchar(200) NOT NULL,
  `HeaderName` varchar(200) NOT NULL,
  `HeaderMax` varchar(200) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  `MarksTotal` varchar(20) NOT NULL,
  `Grades` varchar(200) NOT NULL,
  `GradeRanges` varchar(300) NOT NULL,
  `FinalGrade` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_tests`
--

DROP TABLE IF EXISTS `rms_course_marks_tests`;
CREATE TABLE IF NOT EXISTS `rms_course_marks_tests` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_course_marks_tests`
--

INSERT INTO `rms_course_marks_tests` (`ID`, `CourseNo`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `StudentID`, `MarksValue`) VALUES
('{037E6C4F-CAAE-4587-B3E1-1CC6E59101A4}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020203', '12,20,20'),
('{222F2596-5F55-442C-80EA-F5AE7F466C70}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '15,25,20'),
('{71D63076-9096-4CAA-8D6D-782A25B076A7}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020208', '15,20,20'),
('{B6BB339D-E40B-4CC4-8D34-07017EE2BE44}', 'cse-4112', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020208', '10,30,30,0,0'),
('{DBF1823F-0DF9-4E8F-9233-5AB1545BC1B7}', 'cse-4112', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '20,20,20,0,0');

-- --------------------------------------------------------

--
-- Table structure for table `rms_grade_setup`
--

DROP TABLE IF EXISTS `rms_grade_setup`;
CREATE TABLE IF NOT EXISTS `rms_grade_setup` (
  `ID` varchar(40) NOT NULL,
  `Grades` varchar(200) NOT NULL,
  `Ranges` varchar(300) NOT NULL,
  `IsDefault` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_grade_setup`
--

INSERT INTO `rms_grade_setup` (`ID`, `Grades`, `Ranges`, `IsDefault`) VALUES
('{FC3DBA75-AF9C-4533-825E-D8A01D076F60}', 'F,E,D,C,C+,B,B+,A-,A,A+', '0-39,40-44,45-49,50-54,55-59,60-64,65-69,70-74,75-79,80-100', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rms_marks_setup`
--

DROP TABLE IF EXISTS `rms_marks_setup`;
CREATE TABLE IF NOT EXISTS `rms_marks_setup` (
  `ID` varchar(40) NOT NULL,
  `CourseTypeID` varchar(40) NOT NULL,
  `HeaderID` varchar(200) NOT NULL,
  `HeaderName` varchar(200) NOT NULL,
  `HeaderMax` varchar(200) NOT NULL,
  `IsDefault` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_marks_setup`
--

INSERT INTO `rms_marks_setup` (`ID`, `CourseTypeID`, `HeaderID`, `HeaderName`, `HeaderMax`, `IsDefault`) VALUES
('{236BBFE8-E4CF-4EEF-9C54-AD83FEF42ADB}', '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', 'att,assess,viva', 'Attendance,Assessment,Viva', '10,60,30', 1),
('{7E24DC07-CD2C-4360-A6E9-05A363C2EA08}', '{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', 'att,assess,seca,secb', 'Attendance,Assessment,Section A,Section B', '10,30,30,30,30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ums_discipline`
--

DROP TABLE IF EXISTS `ums_discipline`;
CREATE TABLE IF NOT EXISTS `ums_discipline` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `ShortCode` varchar(20) DEFAULT NULL,
  `SchoolID` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_discipline`
--

INSERT INTO `ums_discipline` (`ID`, `Name`, `ShortCode`, `SchoolID`) VALUES
('{0CF37516-06FE-41CD-93AD-D2D1652509D6}', 'Mathematics', 'MATH', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{560A0FC0-6221-497D-8D41-E584EE4BBEE3}', 'Architecture', 'ARCH', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{63F3C00B-6168-4FBD-AB01-7A1FE413BDDE}', 'Forestry and Wood Technology', 'FWT', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{AF41CC9F-3BCD-4952-9D02-17184CC40C79}', 'Urban and Rural Planning', 'URP', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{E065BBA7-D0C5-4DFA-9768-81B6F056EB4A}', 'Foresty and Marine Resource Technology', 'FMRT', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{E7280448-E379-424E-A11D-357F4334AC8D}', 'Physics', 'PHY', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'Computer Science and Engineering', 'CSE', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}');

-- --------------------------------------------------------

--
-- Table structure for table `ums_permission`
--

DROP TABLE IF EXISTS `ums_permission`;
CREATE TABLE IF NOT EXISTS `ums_permission` (
  `TableID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  PRIMARY KEY (`TableID`)
) ENGINE=InnoDB AUTO_INCREMENT=813 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_permission`
--

INSERT INTO `ums_permission` (`TableID`, `ID`, `Name`, `Category`) VALUES
(689, 'COURSE_C', 'COURSE_C', 'COURSE'),
(690, 'COURSE_R', 'COURSE_R', 'COURSE'),
(691, 'COURSE_U', 'COURSE_U', 'COURSE'),
(692, 'COURSE_D', 'COURSE_D', 'COURSE'),
(693, 'COURSE_TYPE_C', 'COURSE_TYPE_C', 'COURSE TYPE'),
(694, 'COURSE_TYPE_R', 'COURSE_TYPE_R', 'COURSE TYPE'),
(695, 'COURSE_TYPE_U', 'COURSE_TYPE_U', 'COURSE TYPE'),
(696, 'COURSE_TYPE_D', 'COURSE_TYPE_D', 'COURSE TYPE'),
(697, 'COURSE_SESSIONAL_TYPE_C', 'COURSE_SESSIONAL_TYPE_C', 'COURSE SESSIONAL TYPE'),
(698, 'COURSE_SESSIONAL_TYPE_R', 'COURSE_SESSIONAL_TYPE_R', 'COURSE SESSIONAL TYPE'),
(699, 'COURSE_SESSIONAL_TYPE_U', 'COURSE_SESSIONAL_TYPE_U', 'COURSE SESSIONAL TYPE'),
(700, 'COURSE_SESSIONAL_TYPE_D', 'COURSE_SESSIONAL_TYPE_D', 'COURSE SESSIONAL TYPE'),
(701, 'CLUB_C', 'CLUB_C', 'CLUB'),
(702, 'CLUB_R', 'CLUB_R', 'CLUB'),
(703, 'CLUB_U', 'CLUB_U', 'CLUB'),
(704, 'CLUB_D', 'CLUB_D', 'CLUB'),
(705, 'DISCUSSION_C', 'DISCUSSION_C', 'DISCUSSION'),
(706, 'DISCUSSION_R', 'DISCUSSION_R', 'DISCUSSION'),
(707, 'DISCUSSION_U', 'DISCUSSION_U', 'DISCUSSION'),
(708, 'DISCUSSION_D', 'DISCUSSION_D', 'DISCUSSION'),
(709, 'DISCUSSION_CAT_C', 'DISCUSSION_CAT_C', 'DISCUSSION CATEGORY'),
(710, 'DISCUSSION_CAT_R', 'DISCUSSION_CAT_R', 'DISCUSSION CATEGORY'),
(711, 'DISCUSSION_CAT_U', 'DISCUSSION_CAT_U', 'DISCUSSION CATEGORY'),
(712, 'DISCUSSION_CAT_D', 'DISCUSSION_CAT_D', 'DISCUSSION CATEGORY'),
(713, 'DISCUSSION_COMMENT_C', 'DISCUSSION_COMMENT_C', 'DISCUSSION COMMENT'),
(714, 'DISCUSSION_COMMENT_R', 'DISCUSSION_COMMENT_R', 'DISCUSSION COMMENT'),
(715, 'DISCUSSION_COMMENT_U', 'DISCUSSION_COMMENT_U', 'DISCUSSION COMMENT'),
(716, 'DISCUSSION_COMMENT_D', 'DISCUSSION_COMMENT_D', 'DISCUSSION COMMENT'),
(717, 'DISCIPLINE_C', 'DISCIPLINE_C', 'DISCIPLINE'),
(718, 'DISCIPLINE_R', 'DISCIPLINE_R', 'DISCIPLINE'),
(719, 'DISCIPLINE_U', 'DISCIPLINE_U', 'DISCIPLINE'),
(720, 'DISCIPLINE_D', 'DISCIPLINE_D', 'DISCIPLINE'),
(721, 'FILE_C', 'FILE_C', 'FILE'),
(722, 'FILE_R', 'FILE_R', 'FILE'),
(723, 'FILE_U', 'FILE_U', 'FILE'),
(724, 'FILE_D', 'FILE_D', 'FILE'),
(725, 'PERMISSION_C', 'PERMISSION_C', 'PERMISSION'),
(726, 'PERMISSION_R', 'PERMISSION_R', 'PERMISSION'),
(727, 'PERMISSION_U', 'PERMISSION_U', 'PERMISSION'),
(728, 'PERMISSION_D', 'PERMISSION_D', 'PERMISSION'),
(729, 'POSITION_C', 'POSITION_C', 'POSITION'),
(730, 'POSITION_R', 'POSITION_R', 'POSITION'),
(731, 'POSITION_U', 'POSITION_U', 'POSITION'),
(732, 'POSITION_D', 'POSITION_D', 'POSITION'),
(733, 'PROJECT_C', 'PROJECT_C', 'PROJECT'),
(734, 'PROJECT_R', 'PROJECT_R', 'PROJECT'),
(735, 'PROJECT_U', 'PROJECT_U', 'PROJECT'),
(736, 'PROJECT_D', 'PROJECT_D', 'PROJECT'),
(737, 'QUESTION_C', 'QUESTION_C', 'QUESTION'),
(738, 'QUESTION_R', 'QUESTION_R', 'QUESTION'),
(739, 'QUESTION_U', 'QUESTION_U', 'QUESTION'),
(740, 'QUESTION_D', 'QUESTION_D', 'QUESTION'),
(741, 'REGISTRATION_C', 'REGISTRATION_C', 'REGISTRATION'),
(742, 'REGISTRATION_R', 'REGISTRATION_R', 'REGISTRATION'),
(743, 'REGISTRATION_U', 'REGISTRATION_U', 'REGISTRATION'),
(744, 'REGISTRATION_D', 'REGISTRATION_D', 'REGISTRATION'),
(745, 'RESULT_C', 'RESULT_C', 'RESULT'),
(746, 'RESULT_R', 'RESULT_R', 'RESULT'),
(747, 'RESULT_U', 'RESULT_U', 'RESULT'),
(748, 'RESULT_D', 'RESULT_D', 'RESULT'),
(749, 'ATTENDANCE_C', 'ATTENDANCE_C', 'ATTENDANCE'),
(750, 'ATTENDANCE_R', 'ATTENDANCE_R', 'ATTENDANCE'),
(751, 'ATTENDANCE_U', 'ATTENDANCE_U', 'ATTENDANCE'),
(752, 'ATTENDANCE_D', 'ATTENDANCE_D', 'ATTENDANCE'),
(753, 'MARKS_SETUP_C', 'MARKS_SETUP_C', 'MARKS_SETUP'),
(754, 'MARKS_SETUP_R', 'MARKS_SETUP_R', 'MARKS_SETUP'),
(755, 'MARKS_SETUP_U', 'MARKS_SETUP_U', 'MARKS_SETUP'),
(756, 'MARKS_SETUP_D', 'MARKS_SETUP_D', 'MARKS_SETUP'),
(757, 'GRADE_SETUP_C', 'GRADE_SETUP_C', 'GRADE_SETUP'),
(758, 'GRADE_SETUP_R', 'GRADE_SETUP_R', 'GRADE_SETUP'),
(759, 'GRADE_SETUP_U', 'GRADE_SETUP_U', 'GRADE_SETUP'),
(760, 'GRADE_SETUP_D', 'GRADE_SETUP_D', 'GRADE_SETUP'),
(761, 'ROLE_C', 'ROLE_C', 'ROLE'),
(762, 'ROLE_R', 'ROLE_R', 'ROLE'),
(763, 'ROLE_U', 'ROLE_U', 'ROLE'),
(764, 'ROLE_D', 'ROLE_D', 'ROLE'),
(765, 'SCHOOL_C', 'SCHOOL_C', 'SCHOOL'),
(766, 'SCHOOL_R', 'SCHOOL_R', 'SCHOOL'),
(767, 'SCHOOL_U', 'SCHOOL_U', 'SCHOOL'),
(768, 'SCHOOL_D', 'SCHOOL_D', 'SCHOOL'),
(769, 'SESSION_C', 'SESSION_C', 'SESSION'),
(770, 'SESSION_R', 'SESSION_R', 'SESSION'),
(771, 'SESSION_U', 'SESSION_U', 'SESSION'),
(772, 'SESSION_D', 'SESSION_D', 'SESSION'),
(773, 'SURVEY_C', 'SURVEY_C', 'SURVEY'),
(774, 'SURVEY_R', 'SURVEY_R', 'SURVEY'),
(775, 'SURVEY_U', 'SURVEY_U', 'SURVEY'),
(776, 'SURVEY_D', 'SURVEY_D', 'SURVEY'),
(777, 'SURVEY_QUESTION_C', 'SURVEY_QUESTION_C', 'SURVEY QUESTION'),
(778, 'SURVEY_QUESTION_R', 'SURVEY_QUESTION_R', 'SURVEY QUESTION'),
(779, 'SURVEY_QUESTION_U', 'SURVEY_QUESTION_U', 'SURVEY QUESTION'),
(780, 'SURVEY_QUESTION_D', 'SURVEY_QUESTION_D', 'SURVEY QUESTION'),
(781, 'SURVEY_QUESTION_TYPE_C', 'SURVEY_QUESTION_TYPE_C', 'SURVEY QUESTION TYPE'),
(782, 'SURVEY_QUESTION_TYPE_R', 'SURVEY_QUESTION_TYPE_R', 'SURVEY QUESTION TYPE'),
(783, 'SURVEY_QUESTION_TYPE_U', 'SURVEY_QUESTION_TYPE_U', 'SURVEY QUESTION TYPE'),
(784, 'SURVEY_QUESTION_TYPE_D', 'SURVEY_QUESTION_TYPE_D', 'SURVEY QUESTION TYPE'),
(785, 'SURVEY_QUESTION_FILLUP_C', 'SURVEY_QUESTION_FILLUP_C', 'SURVEY QUESTION FILLUP'),
(786, 'SURVEY_QUESTION_FILLUP_R', 'SURVEY_QUESTION_FILLUP_R', 'SURVEY QUESTION FILLUP'),
(787, 'SURVEY_QUESTION_FILLUP_U', 'SURVEY_QUESTION_FILLUP_U', 'SURVEY QUESTION FILLUP'),
(788, 'SURVEY_QUESTION_FILLUP_D', 'SURVEY_QUESTION_FILLUP_D', 'SURVEY QUESTION FILLUP'),
(789, 'TERM_C', 'TERM_C', 'TERM'),
(790, 'TERM_R', 'TERM_R', 'TERM'),
(791, 'TERM_U', 'TERM_U', 'TERM'),
(792, 'TERM_D', 'TERM_D', 'TERM'),
(793, 'USER_C', 'USER_C', 'USER'),
(794, 'USER_R', 'USER_R', 'USER'),
(795, 'USER_U', 'USER_U', 'USER'),
(796, 'USER_D', 'USER_D', 'USER'),
(797, 'YEAR_C', 'YEAR_C', 'YEAR'),
(798, 'YEAR_R', 'YEAR_R', 'YEAR'),
(799, 'YEAR_U', 'YEAR_U', 'YEAR'),
(800, 'YEAR_D', 'YEAR_D', 'YEAR'),
(801, 'VIDEO_C', 'VIDEO_C', 'VIDEO'),
(802, 'VIDEO_R', 'VIDEO_R', 'VIDEO'),
(803, 'VIDEO_U', 'VIDEO_U', 'VIDEO'),
(804, 'VIDEO_D', 'VIDEO_D', 'VIDEO'),
(805, 'VIDEO_COMMENT_C', 'VIDEO_COMMENT_C', 'VIDEO COMMENT'),
(806, 'VIDEO_COMMENT_R', 'VIDEO_COMMENT_R', 'VIDEO COMMENT'),
(807, 'VIDEO_COMMENT_U', 'VIDEO_COMMENT_U', 'VIDEO COMMENT'),
(808, 'VIDEO_COMMENT_D', 'VIDEO_COMMENT_D', 'VIDEO COMMENT'),
(809, 'JOB_C', 'JOB_C', 'JOB'),
(810, 'JOB_R', 'JOB_R', 'JOB'),
(811, 'JOB_U', 'JOB_U', 'JOB'),
(812, 'JOB_D', 'JOB_D', 'JOB');

-- --------------------------------------------------------

--
-- Table structure for table `ums_position`
--

DROP TABLE IF EXISTS `ums_position`;
CREATE TABLE IF NOT EXISTS `ums_position` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_position`
--

INSERT INTO `ums_position` (`ID`, `Name`) VALUES
('{1BFE76DB-C2AA-4FAA-A23B-F43E6150A2F6}', 'Section Officer'),
('{2E024DF5-BD45-4EF2-A5E3-43BCA3E9777F}', 'Pro-vice Chancellor'),
('{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}', 'Assistant Professor'),
('{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}', 'Lecturer'),
('{818DE12F-60CC-42E4-BAEC-48EAAED65179}', 'Dean of School'),
('{928EE9FF-E02D-470F-9A6A-AD0EB38B848F}', 'Vice Chancellor'),
('{92FDDA3F-1E91-4AA3-918F-EB595F85790C}', 'Daywise Worker'),
('{932CB0EE-76C2-448E-A40E-2D167EECC479}', 'Registrar'),
('{ADA027D3-21C1-47AF-A21D-759CAFCFE58D}', 'Assistant Registrar'),
('{B76EB035-EA26-4CEB-B029-1C6129574D98}', 'Librarian'),
('{B78C7A7B-4D38-4025-8170-7B8C9F291946}', 'Head of Discipline'),
('{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}', 'Associate Professor'),
('{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}', 'Professor');

-- --------------------------------------------------------

--
-- Table structure for table `ums_role`
--

DROP TABLE IF EXISTS `ums_role`;
CREATE TABLE IF NOT EXISTS `ums_role` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_role`
--

INSERT INTO `ums_role` (`ID`, `Name`) VALUES
('administrator', 'Administrator'),
('registration coordinator', 'Registration Coordinator'),
('student', 'Student'),
('stuff', 'Stuff'),
('tabulator', 'Tabulator'),
('teacher', 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `ums_role_permission`
--

DROP TABLE IF EXISTS `ums_role_permission`;
CREATE TABLE IF NOT EXISTS `ums_role_permission` (
  `Row` int(11) NOT NULL AUTO_INCREMENT,
  `RoleID` varchar(40) NOT NULL,
  `PermissionID` varchar(100) NOT NULL,
  PRIMARY KEY (`Row`)
) ENGINE=InnoDB AUTO_INCREMENT=1923 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_role_permission`
--

INSERT INTO `ums_role_permission` (`Row`, `RoleID`, `PermissionID`) VALUES
(1453, 'teacher', 'COURSE_C'),
(1454, 'teacher', 'COURSE_D'),
(1455, 'teacher', 'COURSE_R'),
(1456, 'teacher', 'COURSE_U'),
(1457, 'teacher', 'DISCUSSION_C'),
(1458, 'teacher', 'DISCUSSION_D'),
(1459, 'teacher', 'DISCUSSION_R'),
(1460, 'teacher', 'DISCUSSION_U'),
(1461, 'teacher', 'DISCUSSION_CAT_C'),
(1462, 'teacher', 'DISCUSSION_CAT_D'),
(1463, 'teacher', 'DISCUSSION_CAT_R'),
(1464, 'teacher', 'DISCUSSION_CAT_U'),
(1465, 'teacher', 'DISCUSSION_COMMENT_C'),
(1466, 'teacher', 'DISCUSSION_COMMENT_D'),
(1467, 'teacher', 'DISCUSSION_COMMENT_R'),
(1468, 'teacher', 'DISCUSSION_COMMENT_U'),
(1469, 'teacher', 'FILE_C'),
(1470, 'teacher', 'FILE_D'),
(1471, 'teacher', 'FILE_R'),
(1472, 'teacher', 'FILE_U'),
(1473, 'teacher', 'PROJECT_C'),
(1474, 'teacher', 'PROJECT_D'),
(1475, 'teacher', 'PROJECT_R'),
(1476, 'teacher', 'PROJECT_U'),
(1477, 'teacher', 'QUESTION_C'),
(1478, 'teacher', 'QUESTION_D'),
(1479, 'teacher', 'QUESTION_R'),
(1480, 'teacher', 'QUESTION_U'),
(1481, 'teacher', 'REGISTRATION_C'),
(1482, 'teacher', 'REGISTRATION_D'),
(1483, 'teacher', 'REGISTRATION_R'),
(1484, 'teacher', 'REGISTRATION_U'),
(1485, 'teacher', 'RESULT_C'),
(1486, 'teacher', 'RESULT_D'),
(1487, 'teacher', 'RESULT_R'),
(1488, 'teacher', 'RESULT_U'),
(1739, 'administrator', 'ATTENDANCE_C'),
(1740, 'administrator', 'ATTENDANCE_R'),
(1741, 'administrator', 'ATTENDANCE_U'),
(1742, 'administrator', 'ATTENDANCE_D'),
(1743, 'administrator', 'CLUB_C'),
(1744, 'administrator', 'CLUB_R'),
(1745, 'administrator', 'CLUB_U'),
(1746, 'administrator', 'CLUB_D'),
(1747, 'administrator', 'COURSE_C'),
(1748, 'administrator', 'COURSE_R'),
(1749, 'administrator', 'COURSE_U'),
(1750, 'administrator', 'COURSE_D'),
(1751, 'administrator', 'COURSE_SESSIONAL_TYPE_C'),
(1752, 'administrator', 'COURSE_SESSIONAL_TYPE_R'),
(1753, 'administrator', 'COURSE_SESSIONAL_TYPE_U'),
(1754, 'administrator', 'COURSE_SESSIONAL_TYPE_D'),
(1755, 'administrator', 'COURSE_TYPE_C'),
(1756, 'administrator', 'COURSE_TYPE_R'),
(1757, 'administrator', 'COURSE_TYPE_U'),
(1758, 'administrator', 'COURSE_TYPE_D'),
(1759, 'administrator', 'DISCIPLINE_C'),
(1760, 'administrator', 'DISCIPLINE_R'),
(1761, 'administrator', 'DISCIPLINE_U'),
(1762, 'administrator', 'DISCIPLINE_D'),
(1763, 'administrator', 'DISCUSSION_C'),
(1764, 'administrator', 'DISCUSSION_R'),
(1765, 'administrator', 'DISCUSSION_U'),
(1766, 'administrator', 'DISCUSSION_D'),
(1767, 'administrator', 'DISCUSSION_CAT_C'),
(1768, 'administrator', 'DISCUSSION_CAT_R'),
(1769, 'administrator', 'DISCUSSION_CAT_U'),
(1770, 'administrator', 'DISCUSSION_CAT_D'),
(1771, 'administrator', 'DISCUSSION_COMMENT_C'),
(1772, 'administrator', 'DISCUSSION_COMMENT_R'),
(1773, 'administrator', 'DISCUSSION_COMMENT_U'),
(1774, 'administrator', 'DISCUSSION_COMMENT_D'),
(1775, 'administrator', 'FILE_C'),
(1776, 'administrator', 'FILE_R'),
(1777, 'administrator', 'FILE_U'),
(1778, 'administrator', 'FILE_D'),
(1779, 'administrator', 'GRADE_SETUP_C'),
(1780, 'administrator', 'GRADE_SETUP_R'),
(1781, 'administrator', 'GRADE_SETUP_U'),
(1782, 'administrator', 'GRADE_SETUP_D'),
(1783, 'administrator', 'JOB_C'),
(1784, 'administrator', 'JOB_R'),
(1785, 'administrator', 'JOB_U'),
(1786, 'administrator', 'JOB_D'),
(1787, 'administrator', 'MARKS_SETUP_C'),
(1788, 'administrator', 'MARKS_SETUP_R'),
(1789, 'administrator', 'MARKS_SETUP_U'),
(1790, 'administrator', 'MARKS_SETUP_D'),
(1791, 'administrator', 'PERMISSION_C'),
(1792, 'administrator', 'PERMISSION_R'),
(1793, 'administrator', 'PERMISSION_U'),
(1794, 'administrator', 'PERMISSION_D'),
(1795, 'administrator', 'POSITION_C'),
(1796, 'administrator', 'POSITION_R'),
(1797, 'administrator', 'POSITION_U'),
(1798, 'administrator', 'POSITION_D'),
(1799, 'administrator', 'PROJECT_C'),
(1800, 'administrator', 'PROJECT_R'),
(1801, 'administrator', 'PROJECT_U'),
(1802, 'administrator', 'PROJECT_D'),
(1803, 'administrator', 'QUESTION_C'),
(1804, 'administrator', 'QUESTION_R'),
(1805, 'administrator', 'QUESTION_U'),
(1806, 'administrator', 'QUESTION_D'),
(1807, 'administrator', 'REGISTRATION_C'),
(1808, 'administrator', 'REGISTRATION_R'),
(1809, 'administrator', 'REGISTRATION_U'),
(1810, 'administrator', 'REGISTRATION_D'),
(1811, 'administrator', 'RESULT_C'),
(1812, 'administrator', 'RESULT_R'),
(1813, 'administrator', 'RESULT_U'),
(1814, 'administrator', 'RESULT_D'),
(1815, 'administrator', 'ROLE_C'),
(1816, 'administrator', 'ROLE_R'),
(1817, 'administrator', 'ROLE_U'),
(1818, 'administrator', 'ROLE_D'),
(1819, 'administrator', 'SCHOOL_C'),
(1820, 'administrator', 'SCHOOL_R'),
(1821, 'administrator', 'SCHOOL_U'),
(1822, 'administrator', 'SCHOOL_D'),
(1823, 'administrator', 'SESSION_C'),
(1824, 'administrator', 'SESSION_R'),
(1825, 'administrator', 'SESSION_U'),
(1826, 'administrator', 'SESSION_D'),
(1827, 'administrator', 'SURVEY_C'),
(1828, 'administrator', 'SURVEY_R'),
(1829, 'administrator', 'SURVEY_U'),
(1830, 'administrator', 'SURVEY_D'),
(1831, 'administrator', 'SURVEY_QUESTION_C'),
(1832, 'administrator', 'SURVEY_QUESTION_R'),
(1833, 'administrator', 'SURVEY_QUESTION_U'),
(1834, 'administrator', 'SURVEY_QUESTION_D'),
(1835, 'administrator', 'SURVEY_QUESTION_FILLUP_C'),
(1836, 'administrator', 'SURVEY_QUESTION_FILLUP_R'),
(1837, 'administrator', 'SURVEY_QUESTION_FILLUP_U'),
(1838, 'administrator', 'SURVEY_QUESTION_FILLUP_D'),
(1839, 'administrator', 'SURVEY_QUESTION_TYPE_C'),
(1840, 'administrator', 'SURVEY_QUESTION_TYPE_R'),
(1841, 'administrator', 'SURVEY_QUESTION_TYPE_U'),
(1842, 'administrator', 'SURVEY_QUESTION_TYPE_D'),
(1843, 'administrator', 'TERM_C'),
(1844, 'administrator', 'TERM_R'),
(1845, 'administrator', 'TERM_U'),
(1846, 'administrator', 'TERM_D'),
(1847, 'administrator', 'USER_C'),
(1848, 'administrator', 'USER_R'),
(1849, 'administrator', 'USER_U'),
(1850, 'administrator', 'USER_D'),
(1851, 'administrator', 'VIDEO_C'),
(1852, 'administrator', 'VIDEO_R'),
(1853, 'administrator', 'VIDEO_U'),
(1854, 'administrator', 'VIDEO_D'),
(1855, 'administrator', 'VIDEO_COMMENT_C'),
(1856, 'administrator', 'VIDEO_COMMENT_R'),
(1857, 'administrator', 'VIDEO_COMMENT_U'),
(1858, 'administrator', 'VIDEO_COMMENT_D'),
(1859, 'administrator', 'YEAR_C'),
(1860, 'administrator', 'YEAR_R'),
(1861, 'administrator', 'YEAR_U'),
(1862, 'administrator', 'YEAR_D'),
(1891, 'student', 'CLUB_C'),
(1892, 'student', 'CLUB_R'),
(1893, 'student', 'CLUB_U'),
(1894, 'student', 'CLUB_D'),
(1895, 'student', 'DISCUSSION_C'),
(1896, 'student', 'DISCUSSION_R'),
(1897, 'student', 'DISCUSSION_U'),
(1898, 'student', 'DISCUSSION_D'),
(1899, 'student', 'DISCUSSION_COMMENT_C'),
(1900, 'student', 'DISCUSSION_COMMENT_R'),
(1901, 'student', 'DISCUSSION_COMMENT_U'),
(1902, 'student', 'DISCUSSION_COMMENT_D'),
(1903, 'student', 'FILE_C'),
(1904, 'student', 'FILE_R'),
(1905, 'student', 'FILE_U'),
(1906, 'student', 'FILE_D'),
(1907, 'student', 'JOB_R'),
(1908, 'student', 'PROJECT_C'),
(1909, 'student', 'PROJECT_R'),
(1910, 'student', 'PROJECT_U'),
(1911, 'student', 'PROJECT_D'),
(1912, 'student', 'QUESTION_C'),
(1913, 'student', 'QUESTION_R'),
(1914, 'student', 'QUESTION_U'),
(1915, 'student', 'QUESTION_D'),
(1916, 'student', 'REGISTRATION_R'),
(1917, 'student', 'RESULT_R'),
(1918, 'student', 'USER_R'),
(1919, 'student', 'VIDEO_C'),
(1920, 'student', 'VIDEO_R'),
(1921, 'student', 'VIDEO_U'),
(1922, 'student', 'VIDEO_D');

-- --------------------------------------------------------

--
-- Table structure for table `ums_school`
--

DROP TABLE IF EXISTS `ums_school`;
CREATE TABLE IF NOT EXISTS `ums_school` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `DeanID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_school`
--

INSERT INTO `ums_school` (`ID`, `Name`, `DeanID`) VALUES
('{39DDC0C2-CFC2-4246-8748-8812B1751A5C}', 'Science Engineering and Technology', ''),
('{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}', 'Life Science', ''),
('{86E0F021-B30D-48D2-B177-247180633C5E}', 'Social Science', ''),
('{879375F7-0A15-4705-AC90-C6786D279EF1}', 'Law and Humanities', ''),
('{CE09AA38-205B-4F50-A0E0-14DB8686C912}', 'Fine Arts', '');

-- --------------------------------------------------------

--
-- Table structure for table `ums_user`
--

DROP TABLE IF EXISTS `ums_user`;
CREATE TABLE IF NOT EXISTS `ums_user` (
  `ID` varchar(40) NOT NULL,
  `UniversityID` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `MiddleName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `DisciplineID` varchar(40) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `IsLogged` varchar(10) DEFAULT NULL,
  `IsArchived` varchar(10) DEFAULT NULL,
  `IsDeleted` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `UniversityID` (`UniversityID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user`
--

INSERT INTO `ums_user` (`ID`, `UniversityID`, `Email`, `Password`, `FirstName`, `MiddleName`, `LastName`, `DisciplineID`, `Status`, `IsLogged`, `IsArchived`, `IsDeleted`) VALUES
('aysha@gmail.com', '020208', 'aysha@gmail.com', '$2y$10$pJX46d.T.jkANrRShAm0qOMYkYJ/YbNfu09BFmcmMiYGKfuuEcWgO', 'Aysha', 'mrs', 'Akther', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('kashif@gmail.com', '020202', 'kashif@gmail.com', '$2y$10$pM7S85LE300vkDhYnFIz0.WKfpSPJLMNzTS4y1wLCH0TeR0qno27q', 'Kashif', 'Nizam', 'Khan', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('mkazi078@uottawa.ca', '020229', 'mkazi078@uottawa.ca', '$2y$10$l0gFzILMq03DcwcBGxIdgunnOd9G5kF8J8ucZZvCKkt8mNGlI74/W', 'Kazi', 'Masudul', 'Alam', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('zahid@gmail.com', '020203', 'zahid@gmail.com', '$2y$10$pJX46d.T.jkANrRShAm0qOMYkYJ/YbNfu09BFmcmMiYGKfuuEcWgO', 'Zahidul', '', 'Islam', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_details`
--

DROP TABLE IF EXISTS `ums_user_details`;
CREATE TABLE IF NOT EXISTS `ums_user_details` (
  `ID` varchar(40) NOT NULL,
  `FatherName` varchar(100) DEFAULT NULL,
  `MotherName` varchar(100) DEFAULT NULL,
  `PermanentAddress` varchar(200) DEFAULT NULL,
  `HomePhone` varchar(20) DEFAULT NULL,
  `CurrentAddress` varchar(200) DEFAULT NULL,
  `MobilePhone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_details`
--

INSERT INTO `ums_user_details` (`ID`, `FatherName`, `MotherName`, `PermanentAddress`, `HomePhone`, `CurrentAddress`, `MobilePhone`) VALUES
('aysha@gmail.com', 'f', 'm', 'Dr. Kazi Masudul Alam', '12313123123', 'Computer Science and Engineering Discipline, Khulna University', '45 '),
('kashif@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('mkazi078@uottawa.ca', 'Kazi Shahidul Alam', 'Hosneara Jahan', '49/2, Rokon Uddin Sarak, East Baniakhamar, Khulna', '0417223344', 'Same', '01711149360 '),
('zahid@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_discipline`
--

DROP TABLE IF EXISTS `ums_user_discipline`;
CREATE TABLE IF NOT EXISTS `ums_user_discipline` (
  `UserID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_position`
--

DROP TABLE IF EXISTS `ums_user_position`;
CREATE TABLE IF NOT EXISTS `ums_user_position` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(40) NOT NULL,
  `PositionID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_position`
--

INSERT INTO `ums_user_position` (`ID`, `UserID`, `PositionID`) VALUES
(50, 'aysha@gmail.com', '{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}'),
(51, 'mkazi078@uottawa.ca', '{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}');

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_role`
--

DROP TABLE IF EXISTS `ums_user_role`;
CREATE TABLE IF NOT EXISTS `ums_user_role` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(40) NOT NULL,
  `RoleID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_role`
--

INSERT INTO `ums_user_role` (`ID`, `UserID`, `RoleID`) VALUES
(122, 'middle@test.com', 'student'),
(123, 'middle@test.com', 'student'),
(124, 'middle@test.com', 'student'),
(125, 'middle@test.com', 'student'),
(126, 'middle@test.com', 'student'),
(127, 'middle@test.com', 'student'),
(128, 'middle@test.com', 'student'),
(129, 'middle@test.com', 'student'),
(130, 'middle@test.com', 'student'),
(131, 'middle@test.com', 'student'),
(132, 'middle@test.com', 'student'),
(133, 'middle@test.com', 'student'),
(134, 'middle@test.com', 'student'),
(135, 'middle@test.com', 'student'),
(136, 'middle@test.com', 'student'),
(137, 'middle@test.com', 'student'),
(138, 'middle@test.com', 'student'),
(142, 'zahid@gmail.com', 'student'),
(144, 'middle1@test.com', 'student'),
(145, 'kashif@gmail.com', 'student'),
(164, 'aysha@gmail.com', 'administrator'),
(165, 'mkazi078@uottawa.ca', 'administrator');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
