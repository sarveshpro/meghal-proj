-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 02, 2022 at 05:50 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

CREATE TABLE IF NOT EXISTS `admin_tbl` (
  `Admin_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Admin_Name` varchar(20) NOT NULL,
  `Admin_Password` varchar(20) NOT NULL,
  PRIMARY KEY (`Admin_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`Admin_Id`, `Admin_Name`, `Admin_Password`) VALUES
(3, 'admin', 'admin'),
(5, 'karan', 'karan');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_tbl`
--

CREATE TABLE IF NOT EXISTS `complaint_tbl` (
  `Complaint_Id` int(11) NOT NULL AUTO_INCREMENT,
  `User_Id` int(11) NOT NULL,
  `Station_Name` varchar(50) NOT NULL,
  `Complaint_Type` varchar(20) NOT NULL,
  `Complaint_Desc` varchar(100) NOT NULL,
  `Complaint_Date` date NOT NULL,
  `Status` varchar(10) NOT NULL,
  PRIMARY KEY (`Complaint_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `complaint_tbl`
--

INSERT INTO `complaint_tbl` (`Complaint_Id`, `User_Id`, `Station_Name`, `Complaint_Type`, `Complaint_Desc`, `Complaint_Date`, `Status`) VALUES
(1, 1, 'Mumbai Police', 'Robbery', 'abc', '2021-03-18', 'Submitted'),
(4, 3, 'Varachcha Police Sta', 'Robery', 'The Biggest Robbery is Done Yesterday in Our Shop. ', '2015-12-22', 'Submited'),
(5, 4, 'Ahmedabad Police Sta', 'Robery', '111', '2021-03-15', 'Submited'),
(6, 4, 'Mumbai Police', 'Child Labour', 'Bacha chaay ke tapri par kaam kar raha hai', '2021-03-15', 'Submited'),
(7, 5, 'Kutch Police', 'Robery', 'Phone stollen from Rata Talav', '2021-03-15', 'Processed'),
(8, 6, 'Mumbai Police', 'Domestic Violence', 'robbery at lbs marg\r\n', '2021-03-19', 'Processed'),
(9, 4, 'Kutch Police', 'Violence', 'Street Fight at MMG Marg, Bhuj, Near Khavda Sweets.', '2021-03-19', 'Processed'),
(10, 5, 'Mumbai Police', 'Violence', 'abc', '2021-05-28', 'Submited'),
(11, 5, 'Delhi Police', 'Murder', 'Murder\r\n', '2021-05-28', 'Processed'),
(12, 5, 'Mumbai Police', 'Robery', 'ewwewedw', '2021-05-28', 'Processed');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_tbl`
--

CREATE TABLE IF NOT EXISTS `feedback_tbl` (
  `Feedback_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Mobile` varchar(10) NOT NULL,
  `Feedback` varchar(200) NOT NULL,
  PRIMARY KEY (`Feedback_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `feedback_tbl`
--

INSERT INTO `feedback_tbl` (`Feedback_Id`, `Name`, `Email`, `Mobile`, `Feedback`) VALUES
(1, 'Karan', 'jaybhanushali430@gma', '1111111111', 'Good Going');

-- --------------------------------------------------------

--
-- Table structure for table `missingperson_tbl`
--

CREATE TABLE IF NOT EXISTS `missingperson_tbl` (
  `Person_Id` int(11) NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(20) NOT NULL,
  `Middle_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Birth_Date` date NOT NULL,
  `Weight` int(11) NOT NULL,
  `Height` float NOT NULL,
  `Contact_Person` varchar(20) NOT NULL,
  `Contact_Address` varchar(100) NOT NULL,
  `Contact_City` varchar(20) NOT NULL,
  `Contact_Mobile` int(11) NOT NULL,
  `Photo` varchar(100) NOT NULL,
  `Station_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`Person_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `missingperson_tbl`
--

INSERT INTO `missingperson_tbl` (`Person_Id`, `First_Name`, `Middle_Name`, `Last_Name`, `Gender`, `Birth_Date`, `Weight`, `Height`, `Contact_Person`, `Contact_Address`, `Contact_City`, `Contact_Mobile`, `Photo`, `Station_Name`) VALUES
(4, 'Devansh', 'Jitu ', 'Bhanushali', 'Male', '0000-00-00', 90, 150, 'Jitubhai', 'Muni Darshan Hieghts Society, Jagdusa Nagar, Ghatkopar', 'Ahmedabad', 2147483647, 'profile.png', 'Ghatkopar Police Sta'),
(5, 'Jay ', 'Ramesh', 'Bhanushali', 'Male', '0000-00-00', 40, 170, 'Ramesh Bhanushali', '1402, Godrej The One, Mahalaxmi Race Course Road, Lower Parel (W), Mumbai-84', 'Mumbai', 2147483647, 'passport photo.jpeg', 'Ghatkopar Police Sta');

-- --------------------------------------------------------

--
-- Table structure for table `mostwanted_tbl`
--

CREATE TABLE IF NOT EXISTS `mostwanted_tbl` (
  `Wanted_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Wanted_Name` varchar(20) NOT NULL,
  `Wanted_Location` varchar(20) NOT NULL,
  `Wanted_Image` varchar(100) NOT NULL,
  `Wanted_Crime` varchar(100) NOT NULL,
  `Wanted_Desc` varchar(200) NOT NULL,
  `Station_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`Wanted_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `mostwanted_tbl`
--

INSERT INTO `mostwanted_tbl` (`Wanted_Id`, `Wanted_Name`, `Wanted_Location`, `Wanted_Image`, `Wanted_Crime`, `Wanted_Desc`, `Station_Name`) VALUES
(4, 'Devansh B', 'Navapada', 'profile.png', 'Extortion, Murder, Kidnapping', 'Black hair, Brown Face, Blue Eyes', 'Ghatkopar Police Sta'),
(5, 'Anshul Rahman Ahmed ', 'Datt Nagar', 'profile.png', 'Terrorist', 'Black Hair, 6ft tall, pale body, slim ', 'Ghatkopar Police Sta');

-- --------------------------------------------------------

--
-- Table structure for table `news_tbl`
--

CREATE TABLE IF NOT EXISTS `news_tbl` (
  `News_Id` int(11) NOT NULL AUTO_INCREMENT,
  `News_Title` varchar(200) NOT NULL,
  `News_Date` date NOT NULL,
  PRIMARY KEY (`News_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `news_tbl`
--

INSERT INTO `news_tbl` (`News_Id`, `News_Title`, `News_Date`) VALUES
(1, 'The Most Wanted Criminal of Mumbai Region arrested at UP Airport by Local Police', '2021-03-15'),
(2, 'UP man held after 66 complaints of harrasments by a women', '2021-03-11'),
(3, 'CFI Portal designed by Sakec students to be used as Crime eradicating weapon by Indian Govt.', '2021-03-08'),
(4, 'Bhopal : Man chops off wife''s hand, foot over suspicion of Extra-marital affair', '2021-03-05'),
(5, 'Delhi: Man shot dead over argument during brother''s birthday party', '2021-02-28'),
(6, 'Jharkhand: Missing women''s body chopped into pieces, found near river bank.', '2021-02-23'),
(7, 'Batla House Encounter: Al Qaeda terrorist Abu Ahmed convicted of inspector Sharma''s Killing.', '2021-02-19');

-- --------------------------------------------------------

--
-- Table structure for table `policestation_tbl`
--

CREATE TABLE IF NOT EXISTS `policestation_tbl` (
  `Station_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Station_Name` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Mobile` int(11) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`Station_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `policestation_tbl`
--

INSERT INTO `policestation_tbl` (`Station_Id`, `Station_Name`, `Address`, `City`, `Email`, `Mobile`, `UserName`, `Password`) VALUES
(9, 'Ahmedabad Police Sta', 'Manek Chowk, Ahmedabad', 'Ahmedabad', 'ahmedabad@gmail.com', 1111111111, 'ahmedabad', 'ahmedabad'),
(10, 'Mumbai Police', 'Mumbai Police Force HQ, Fort, Mumbai', 'Mumbai', 'mumbai@gmail.com', 0, 'mumbai', 'mumbai'),
(11, 'Pune Police', 'Chinchwad, Pune', 'Pune', 'pune@gmail.com', 2147483647, 'pune', 'pune'),
(12, 'Delhi Police', 'India Gate, Delhi', 'Delhi', 'delhi@gmail.com', 2147483647, 'delhi', 'delhi'),
(13, 'Kutch Police', 'Naliya, Abdasa Taluka, Kutch.', 'Kutch', 'kutch@gmail.com', 1234567890, 'kutch', 'kutch');

-- --------------------------------------------------------

--
-- Table structure for table `tips_tbl`
--

CREATE TABLE IF NOT EXISTS `tips_tbl` (
  `Tips_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Tips_Detail` varchar(400) NOT NULL,
  PRIMARY KEY (`Tips_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tips_tbl`
--

INSERT INTO `tips_tbl` (`Tips_Id`, `Tips_Detail`) VALUES
(1, 'Working late? Call Public Safety for an escort to your car of public transportation, 0000011111 @MSC OR 1111100000 @Medical Center'),
(2, 'Check the identity of any strangers who are in your office or in the hallway- ask whom they are visiting and if you can help them find that person. If this makes you uncomfortable, call Public Safety (MSC\\MV) 212-854-5555 or at (Med. Ctr) 212-305-7979 and informed them of your suspicions.'),
(3, 'Report any broken or flickering lights, dimly lit corridors, doors that don''t lock properly, or broken windows to CU Facilities 212-854-2222 @ MSC or 212-305-3753 @ Medical center. Don''t wait for someone else to do it.'),
(4, 'Password protect your device. Download APPs to your device that can help the police locate your device in the event of theft ("Find my iPhone", "Where''s My Droid", "Look out," GotYa," etc.) from your APP store.'),
(5, 'Register your device with the NYPD / CU Public Safety Operation ID Program FREE- Makes it difficut for a thief to sell. Call CU Public Safety Crime Prevention 212-854-8513 for more information.');

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE IF NOT EXISTS `user_tbl` (
  `User_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Mobile` int(11) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `BirthDate` date NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Station_Name` varchar(20) NOT NULL,
  `VerificationProof` varchar(100) NOT NULL,
  PRIMARY KEY (`User_Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`User_Id`, `Name`, `Address`, `City`, `Mobile`, `Email`, `Gender`, `BirthDate`, `UserName`, `Password`, `Station_Name`, `VerificationProof`) VALUES
(4, 'Karan', 'Ghatkopar, Mumbai', 'Mumbai', 101010101, 'karan@gmail.com', 'Male', '0000-00-00', 'karan', 'karan', 'Mumbai Police', 'profile.png'),
(5, 'jay', 'sundra palace', 'Mumbai', 101010101, 'jay@jay.com', 'Male', '0000-00-00', 'jay', 'jay', 'Kutch Police', 'passport photo.jpeg'),
(6, 'ramu', 'mumbai', 'Mumbai', 1111111111, 'bahab@gmail.com', 'Male', '0000-00-00', 'ramu', 'ramu', 'Mumbai Police', 'profile.png');
