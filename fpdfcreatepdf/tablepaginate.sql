-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2017 at 05:49 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mydata`
--

-- --------------------------------------------------------

--
-- Table structure for table `tablepaginate`
--

CREATE TABLE `tablepaginate` (
  `ID` int(11) NOT NULL,
  `Name` varchar(80) NOT NULL,
  `Position` varchar(45) NOT NULL,
  `Office` varchar(45) NOT NULL,
  `Age` varchar(20) NOT NULL,
  `Start_date` varchar(20) NOT NULL,
  `Salary` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tablepaginate`
--

INSERT INTO `tablepaginate` (`ID`, `Name`, `Position`, `Office`, `Age`, `Start_date`, `Salary`) VALUES
(1, 'Tiger', 'Nixon', 'System Architect', 'Edinburgh', '25th Apr 11', '$320800'),
(2, 'Garrett', 'Winters', 'Accountant', 'Tokyo', '25th Jul 11', '$170750'),
(3, 'Ashton', 'Cox', 'Junior Technical Author', 'San Francisco', '12th Jan 09', '$86000'),
(4, 'Cedric', 'Kelly', 'Senior Javascript Developer', 'Edinburgh', '29th Mar 12', '$433060'),
(5, 'Airi', 'Satou', 'Accountant', 'Tokyo', '28th Nov 08', '$162700'),
(6, 'Brielle', 'Williamson', 'Integration Specialist', 'New York', '2nd Dec 12', '$372000'),
(7, 'Herrod', 'Chandler', 'Sales Assistant', 'San Francisco', '6th Aug 12', '$137500'),
(8, 'Rhona', 'Davidson', 'Integration Specialist', 'Tokyo', '14th Oct 10', '$327900'),
(9, 'Colleen', 'Hurst', 'Javascript Developer', 'San Francisco', '15th Sep 09', '$205500'),
(10, 'Sonya', 'Frost', 'Software Engineer', 'Edinburgh', '13th Dec 08', '$103600'),
(11, 'Jena', 'Gaines', 'Office Manager', 'London', '19th Dec 08', '$90560'),
(12, 'Quinn', 'Flynn', 'Support Lead', 'Edinburgh', '3rd Mar 13', '$342000'),
(13, 'Charde', 'Marshall', 'Regional Director', 'San Francisco', '16th Oct 08', '$470600'),
(14, 'Haley', 'Kennedy', 'Senior Marketing Designer', 'London', '18th Dec 12', '$313500'),
(15, 'Tatyana', 'Fitzpatrick', 'Regional Director', 'London', '17th Mar 10', '$385750'),
(16, 'Michael', 'Silva', 'Marketing Designer', 'London', '27th Nov 12', '$198500'),
(17, 'Paul', 'Byrd', 'Chief Financial Officer (CFO)', 'New York', '9th Jun 10', '$725000'),
(18, 'Gloria', 'Little', 'Systems Administrator', 'New York', '10th Apr 09', '$237500'),
(19, 'Bradley', 'Greer', 'Software Engineer', 'London', '13th Oct 12', '$132000'),
(20, 'Dai', 'Rios', 'Personnel Lead', 'Edinburgh', '26th Sep 12', '$217500'),
(21, 'Jenette', 'Caldwell', 'Development Lead', 'New York', '3rd Sep 11', '$345000'),
(22, 'Yuri', 'Berry', 'Chief Marketing Officer (CMO)', 'New York', '25th Jun 09', '$675000'),
(23, 'Caesar', 'Vance', 'Pre-Sales Support', 'New York', '12th Dec 11', '$106450'),
(24, 'Doris', 'Wilder', 'Sales Assistant', 'Sidney', '20th Sep 10', '$85600'),
(25, 'Angelica', 'Ramos', 'Chief Executive Officer (CEO)', 'London', '9th Oct 09', '$1200000'),
(26, 'Gavin', 'Joyce', 'Developer', 'Edinburgh', '22nd Dec 10', '$92575'),
(27, 'Jennifer', 'Chang', 'Regional Director', 'Singapore', '14th Nov 10', '$357650'),
(28, 'Brenden', 'Wagner', 'Software Engineer', 'San Francisco', '7th Jun 11', '$206850'),
(29, 'Fiona', 'Green', 'Chief Operating Officer (COO)', 'San Francisco', '11th Mar 10', '$850000'),
(30, 'Shou', 'Itou', 'Regional Marketing', 'Tokyo', '14th Aug 11', '$163000'),
(31, 'Michelle', 'House', 'Integration Specialist', 'Sidney', '2nd Jun 11', '$95400'),
(32, 'Suki', 'Burks', 'Developer', 'London', '22nd Oct 09', '$114500'),
(33, 'Prescott', 'Bartlett', 'Technical Author', 'London', '7th May 11', '$145000'),
(34, 'Gavin', 'Cortez', 'Team Leader', 'San Francisco', '26th Oct 08', '$235500'),
(35, 'Martena', 'Mccray', 'Post-Sales support', 'Edinburgh', '9th Mar 11', '$324050'),
(36, 'Unity', 'Butler', 'Marketing Designer', 'San Francisco', '9th Dec 09', '$85675'),
(37, 'Howard', 'Hatfield', 'Office Manager', 'San Francisco', '16th Dec 08', '$164500'),
(38, 'Hope', 'Fuentes', 'Secretary', 'San Francisco', '12th Feb 10', '$109850'),
(39, 'Vivian', 'Harrell', 'Financial Controller', 'San Francisco', '14th Feb 09', '$452500'),
(40, 'Timothy', 'Mooney', 'Office Manager', 'London', '11th Dec 08', '$136200'),
(41, 'Jackson', 'Bradshaw', 'Director', 'New York', '26th Sep 08', '$645750'),
(42, 'Olivia', 'Liang', 'Support Engineer', 'Singapore', '3rd Feb 11', '$234500'),
(43, 'Bruno', 'Nash', 'Software Engineer', 'London', '3rd May 11', '$163500'),
(44, 'Sakura', 'Yamamoto', 'Support Engineer', 'Tokyo', '19th Aug 09', '$139575'),
(45, 'Thor', 'Walton', 'Developer', 'New York', '11th Aug 13', '$98540'),
(46, 'Finn', 'Camacho', 'Support Engineer', 'San Francisco', '7th Jul 09', '$87500'),
(47, 'Serge', 'Baldwin', 'Data Coordinator', 'Singapore', '9th Apr 12', '$138575'),
(48, 'Zenaida', 'Frank', 'Software Engineer', 'New York', '4th Jan 10', '$125250'),
(49, 'Zorita', 'Serrano', 'Software Engineer', 'San Francisco', '1st Jun 12', '$115000'),
(50, 'Jennifer', 'Acosta', 'Junior Javascript Developer', 'Edinburgh', '1st Feb 13', '$75650'),
(51, 'Cara', 'Stevens', 'Sales Assistant', 'New York', '6th Dec 11', '$145600'),
(52, 'Hermione', 'Butler', 'Regional Director', 'London', '21st Mar 11', '$356250'),
(53, 'Lael', 'Greer', 'Systems Administrator', 'London', '27th Feb 09', '$103500'),
(54, 'Jonas', 'Alexander', 'Developer', 'San Francisco', '14th Jul 10', '$86500'),
(55, 'Shad', 'Decker', 'Regional Director', 'Edinburgh', '13th Nov 08', '$183000'),
(56, 'Michael', 'Bruce', 'Javascript Developer', 'Singapore', '27th Jun 11', '$183000'),
(57, 'Donna', 'Snider', 'Customer Support', 'New York', '25th Jan 11', '$112000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tablepaginate`
--
ALTER TABLE `tablepaginate`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tablepaginate`
--
ALTER TABLE `tablepaginate`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
