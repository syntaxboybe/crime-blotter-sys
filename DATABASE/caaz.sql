-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 13, 2022 at 05:00 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `caaz`
--

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  `severity` varchar(30) NOT NULL,
  `notes` varchar(200) NOT NULL,
  `case_num` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`id`, `employee_id`, `severity`, `notes`, `case_num`) VALUES
(13, '8884242', 'Critical', '<p>Shoplifting</p>', '20221213161204.6516'),
(14, '8669915', 'Critical', '<p>Stealing a Bicycle</p>', '20221213161231.1659'),
(15, '2921429', 'Critical', '<p>Stealing from Backpacks and Lockers</p>', '20221213161307.2721'),
(16, '3709793', 'Critical', '<p>Tagging and Graffiti</p>', '20221213161347.2307'),
(18, '2649976', 'Danger', '<p>Keying a Car and Cutting Auto Tires</p>', '20221213161439.3604'),
(19, '7783985', 'Critical', '<p>Underage Purchase or Possession</p>', '20221213161502.3865'),
(20, '4050041', 'Critical', '<p>Underage Consumption of Alcohol</p>', '20221213161521.3983'),
(21, '7873553', 'Danger', '<p>Providing Alcohol to Underage Persons</p>', '20221213161544.5651'),
(22, '9378982', 'Danger', '<p>Fighting in a Public Place</p>', '20221213161607.6132'),
(23, '3863462', 'Critical', '<p>Shoving or Pushing a Person</p>', '20221213161641.6843'),
(25, '3999141', 'Danger', '<p>Smoking Marijuana in a Public Place</p>', '20221213161729.8615'),
(26, '3989787', 'Danger', '<p>Entering Land or a Dwelling Without Permission</p>', '20221213161814.9590'),
(28, '8209281', 'Critical', '<p>Smoking in Groups on the Street Corner</p>', '20221213162013.5561'),
(29, '1627276', 'Danger', '<p>Possessing Drug Paraphernalia to Grow Marijuana</p>', '20221213162053.4681'),
(30, '2123473', 'Danger', '<p>Using Drug Paraphernalia to Use a Controlled Substance</p>', '20221213162112.9610'),
(31, '2123473', 'Danger', '<p>Entering a Vacant Building</p>', '20221213162138.3585'),
(33, '3898424', 'Normal', '<p>Drawing on Public Restroom Walls</p>', '20221213165536.8490'),
(34, '2123473', 'Normal', '<p>Driving Without a License</p>', '20221213165756.1458'),
(35, '3999141', 'Normal', '<p>Committing Fraud Via E-Mail</p>', '20221213165839.8419'),
(36, '9378982', 'Normal', '<p>Possessing Small Amounts of Marijuana</p>', '20221213165922.9819');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `joined` varchar(30) NOT NULL,
  `tmp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_id`, `name`, `surname`, `phone`, `email`, `gender`, `joined`, `tmp`) VALUES
(7, '8884242', 'jerome', 'porcado', '263712138920', 'jerome@gmail.com', 'M', ' 12 Dec 2022 ', '4163'),
(8, '8669915', 'hannie', 'rix', '263773411455', 'nienie@gmail.com', 'F', ' 12 Dec 2022 ', '9292'),
(9, '2921429', 'hanna', 'rix', '263773456141', 'nana@gmail.com', 'F', ' 12 Dec 2022 ', '6461'),
(10, '3709793', 'kristine', 'labucana', '263773416728', 'k10@gmail.com', 'F', ' 12 Dec 2022 ', '3407'),
(11, '3898424', 'johnpaul', 'cornel', '263773456372', 'jpc@gmail.com', 'M', ' 12 Dec 2022 ', '2604'),
(12, '9530723', 'johnrey', 'sarip', '263773413252', 'jrs@gmail.com', 'M', ' 12 Dec 2022 ', '5839'),
(13, '2649976', 'vincent', 'jalalon', '263775453245', 'vinz@gmail.com', 'M', ' 13 Dec 2022 ', '5083'),
(14, '7783985', 'johnbenzh', 'cuy', '263775353252', 'jbc@gmail.com', 'M', ' 13 Dec 2022 ', '6134'),
(15, '4050041', 'monkeyD', 'luffy', '263755326426', 'mkf@gmail.com', 'M', ' 13 Dec 2022 ', '5768'),
(16, '7873553', 'san', 'goku', '263774246264', 'sg@gmail.com', 'M', ' 13 Dec 2022 ', '1952'),
(17, '9378982', 'uzumaki', 'naruto', '263754533577', 'natz@gmail.com', 'M', ' 13 Dec 2022 ', '5344'),
(18, '3863462', 'kurosaki', 'ichigo', '263772426267', 'bankai@gmail.com', 'M', ' 13 Dec 2022 ', '1262'),
(19, '7661665', 'lee', 'sin', '263774574377', 'ls@gmail.com', 'M', ' 13 Dec 2022 ', '2530'),
(20, '3999141', 'katarina', 'akali', '263774343456', 'kda@gmail.com', 'F', ' 13 Dec 2022 ', '940'),
(21, '3989787', 'ahri', 'nami', '263735324264', 'ah@gmail.com', 'F', ' 13 Dec 2022 ', '3804'),
(22, '5536128', 'sona', 'soraka', '263774227727', 'ss@gmail.com', 'F', ' 13 Dec 2022 ', '7712'),
(23, '8209281', 'lux', 'veigar', '263735372474', 'lv@gmail.com', 'F', ' 13 Dec 2022 ', '6797'),
(24, '1627276', 'annie', 'know', '263742326547', 'ak@gmail.com', 'F', ' 13 Dec 2022 ', '3073'),
(25, '2123473', 'jarvan', 'tryndamere', '263756325522', 'jt@gmail.com', 'M', ' 13 Dec 2022 ', '4638'),
(26, '4987209', 'boybe', 'anaye', '263735232466', 'bb@gmail.com', 'M', ' 13 Dec 2022 ', '2563');

-- --------------------------------------------------------

--
-- Table structure for table `picture`
--

CREATE TABLE `picture` (
  `id` int(11) NOT NULL,
  `tmp` varchar(90) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `picture`
--

INSERT INTO `picture` (`id`, `tmp`, `name`) VALUES
(2, '1301', 'user1301.jpg'),
(3, '5267', 'user5267.jpg'),
(4, '6954', 'user6954.jpg'),
(5, '7731', 'user7731.jpg'),
(6, '4163', 'user4163.jpg'),
(7, '9292', 'user9292.png'),
(8, '6461', 'user6461.png'),
(9, '3407', 'user3407.png'),
(10, '2604', 'user2604.jpg'),
(11, '5839', 'user5839.jpg'),
(12, '5083', 'user5083.png'),
(13, '6134', 'user6134.png'),
(14, '5768', 'user5768.jpg'),
(15, '1952', 'user1952.png'),
(16, '5344', 'user5344.png'),
(17, '1262', 'user1262.png'),
(18, '2530', 'user2530.png'),
(19, '940', 'user940.png'),
(20, '3804', 'user3804.jpg'),
(21, '7712', 'user7712.png'),
(22, '6797', 'user6797.png'),
(23, '3073', 'user3073.jpg'),
(24, '4638', 'user4638.jpg'),
(25, '2563', 'user2563.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `joined` varchar(30) NOT NULL,
  `type` varchar(10) NOT NULL,
  `permission` varchar(10) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `username`, `password`, `joined`, `type`, `permission`, `gender`, `phone`) VALUES
(8, 'boybe', 'anaye', 'beboy.eyana.m@gmail.com', 'boybe', '11ca0da243de0204dfa78a3fa6145084', ' 12 Dec 2022 ', 'user', '1', 'M', '263774357237');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `picture`
--
ALTER TABLE `picture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
