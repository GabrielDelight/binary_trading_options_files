-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 11, 2023 at 02:23 PM
-- Server version: 5.7.42-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `binary20_binarytradingoptions_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `_id` varchar(255) DEFAULT NULL,
  `account_number_or_wallet` varchar(255) DEFAULT NULL,
  `account_name_or_type` varchar(255) DEFAULT NULL,
  `bank_name_or_crypto` varchar(255) DEFAULT NULL,
  `routing_no` varchar(255) DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `_id`, `account_number_or_wallet`, `account_name_or_type`, `bank_name_or_crypto`, `routing_no`, `active`, `owner`) VALUES
(98, '2c519b3a090e436bfa003728', '0930482945', '200040000', 'Zenith', '1000', NULL, 'fe572c2c557e26b6ee052015'),
(99, '8571530b4f8b0a3d20ab45fa', '0930482945', '200040000', 'Zenith', '1000', NULL, 'fe572c2c557e26b6ee052015'),
(100, '99a94f0eb9a763a745d03971', 'bc1qxy2kgdygjrsqtzq2n0yrf2493p83kkfjhx0wlh', '---', 'BTC', '---', NULL, 'fe572c2c557e26b6ee052015'),
(101, 'ac967c806def560b89c2d960', 'bc1qxy2kgdygjrsqtzq2n0yrf2493p83kkfjhx0wlh', '---', 'BTC', '---', NULL, 'fe572c2c557e26b6ee052015'),
(102, 'a5201efc74cbff240748ec04', 'bc1qxy2kgdygjrsqtzq2n0yrf2493p83kkfjhx0wlh', '---', 'BTC', '---', NULL, 'fe572c2c557e26b6ee052015'),
(103, '01778c97b18284331e696826', '5320471810', 'Carsten Schmoller ', 'Targobank ', '30020900', NULL, '34dc513cce41620ddaa9112c'),
(104, '8defe7ea8eaee9c29e1caca0', '1DbeG97T5nfJrMnRRc115taoAAPPGd3Qxo', '---', 'BTC', '---', NULL, '34dc513cce41620ddaa9112c');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` text,
  `capital` int(11) NOT NULL DEFAULT '0',
  `profit` int(11) NOT NULL DEFAULT '0',
  `term` varchar(255) DEFAULT NULL,
  `signup` varchar(255) DEFAULT NULL,
  `country` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `_id`, `name`, `firstname`, `lastname`, `email`, `password`, `phone`, `capital`, `profit`, `term`, `signup`, `country`) VALUES
(15, 'be08b02a4cffe7d9a0ad76a2', 'deligad', 'Gabriel', 'Delight', 'gabrieldelight08@gmail.com', '$2a$10$smB2ZDFwnkFO1CZn71PpROLEfxp387Q4esBBfhvvt1IwEfqyl2X/2', '0000000', 0, 0, NULL, NULL, 'Nigeria'),
(16, 'c62304ab4ed81b1d3f2e28fd', 'dangnwz', 'Dan', 'Goodnews', 'youngicthub@gmail.com', '$2a$10$bixaDggUCDOVavUFx4lK2u7UrZhcMCIC.gjo2D3JXjvvdyF2ivR8K', '20002', 0, 0, NULL, NULL, 'Wallis and Futuna');

-- --------------------------------------------------------

--
-- Table structure for table `deposit_history`
--

CREATE TABLE `deposit_history` (
  `id` int(11) NOT NULL,
  `_id` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `transaction_ref` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `owner` text NOT NULL,
  `bonus_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `_id` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `transaction_ref` varchar(255) DEFAULT NULL,
  `to_wallet` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kyc`
--

CREATE TABLE `kyc` (
  `id` int(11) NOT NULL,
  `_id` text,
  `owner` text,
  `fullName` text,
  `address` text,
  `idType` text,
  `idNumber` text,
  `image` text,
  `status` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kyc`
--

INSERT INTO `kyc` (`id`, `_id`, `owner`, `fullName`, `address`, `idType`, `idNumber`, `image`, `status`) VALUES
(16, 'bf2fbe4b7ab67f3d3456e73a', '5c3debb2c9b36812dd947f56', 'Dan Goodnews', 'iwofe ph', 'passport', '43439987gss', 'kyc-1692957691831.png', 'approved'),
(17, 'b10dd0eff7745a3a478aa666', '422b6eae4dfa0c7ea04b624d', 'Okpara chibudom ', 'No 10 Johnny lane Port Harcourt ', 'nationalID', '47743326228', 'kyc-1693033499091.jpg', 'approved'),
(18, '15df741b484088be39164547', 'ccfdd9215b9c57da15cc5434', 'Deli', 'Alabastar Street, Agip Port Harcourt', 'drivingLicense', '123', 'kyc-1693044145447.jpeg', 'approved'),
(19, 'd79a71b801695cb2d81301b0', '5962c8755e353a1f725b87a3', 'Elisabeth Kovar ', 'Alberndorf im Pulkautal ', 'nationalID', '12065759', 'kyc-1693050899771.jpg', 'approved'),
(20, '74aca41c8cb86fa3e72fcbb5', '34dc513cce41620ddaa9112c', 'Carsten Schmoller ', 'Brandenburgischer Ring 54,03172 Guben ', 'nationalID', 'L3MOFW7V8 ', 'kyc-1693059186906.jpg', 'approved'),
(21, 'be32233d17201723072b6b27', 'a70aa9b744a51b5b86ee5e76', 'Benjamin', 'No 2 Agip', 'passport', '33009976442', 'kyc-1693089259547.webp', 'approved'),
(22, '7b0926eac5ff40529af54b0f', '1d6ba80b138a8f6b54a21c9c', 'Namdj', 'No 36 Iriata ', 'nationalID', '102983$3&', 'kyc-1693119397880.jpeg', 'pending'),
(23, '27b645c62f8e4ae6c2fc4319', '8e7f931838ae5e0478bee44f', 'Peter Dulz ', 'Glauchauer Landstraße 3.  09356 St. Egidien ', 'nationalID', '381365', 'kyc-1693122534809.jpg', 'approved'),
(24, '0739af324e4c902a21f3aa93', '24a20e7c38431a03dbc006b6', 'Kerstin Millnitz ', 'Poststraße   8, 06179 Teutschenthal ', 'nationalID', 'L6VH4Z10R', 'kyc-1693134711515.jpg', 'pending'),
(25, '28ba3d51437558a12e5b89d9', '791bfff14f0aa05b373f3d7f', 'Kerstin Millnitz ', 'Poststraße   8, 06179 Teutschenthal ', 'nationalID', '045912', 'kyc-1693159319042.jpg', 'pending'),
(26, '4d65f846a60a452a88d7bf27', '791bfff14f0aa05b373f3d7f', 'Kerstin Millnitz ', 'Poststraße   8, 06179 Teutschenthal ', 'nationalID', '045912', 'kyc-1693159321892.jpg', 'approved'),
(27, '089a1dd2585b0610823a939e', '97fec49762364412bf4ccf2d', 'Kienesberger Josef ', 'Heckenweg 4 4820 Bad Ischl ', 'passport', 'Jack67', 'kyc-1693247598462.jpg', 'pending'),
(28, 'ce3cf07b07d2935c73797b48', '97fec49762364412bf4ccf2d', 'Kienesberger Josef ', 'Heckenweg 4 4820 Bad Ischl ', 'passport', 'Jack67', 'kyc-1693247607454.jpg', 'pending'),
(29, '1c2a0859576ff42081d3273e', '97fec49762364412bf4ccf2d', 'Kienesberger Josef ', 'Heckenweg 4 4820 Bad Ischl ', 'passport', 'Jack67', 'kyc-1693247737734.jpg', 'approved'),
(30, '985b76d445f65fb9362153a6', '2450db75c440e7247a0b420e', 'Kristina Eryigit ', 'Neu hindenburgstr.69', 'nationalID', 'L7C0FHYKR', 'kyc-1693561725153.jpg', 'approved'),
(31, 'd6839aafcf4649d66ef15fbe', '44846f177142fed84b729840', 'Karl Knecht', 'Avenue Chevalier Jehan 69  ,   B-1300 Wavre', 'passport', 'C4TNL3ZP3', 'kyc-1693576524591.jpg', 'approved'),
(32, 'fb1e8fba27881d4160d0a7fc', '10729d4c26ac48d92856fa0c', 'Rainer Schlott', '14641 Nauen Kreuztaler Str 1c', 'passport', 'LsWWVXC98', 'kyc-1693655834535.jpg', 'approved'),
(33, '110e181546b3aa53beedd39c', '7d31eab712be316199dd01d5', 'Dan ', 'G5 Estate ', 'drivingLicense', '455678888976', 'kyc-1693751910406.jpeg', 'approved'),
(34, '1dab0e3b648da2acc5ea68eb', '5516faf5278595ce6ada4b6f', 'Dan Testing ', 'sw', 'drivingLicense', 'ddddddddddddddddddd', 'kyc-1694095652784.png', 'approved'),
(35, '969e473b022f2e61e08ce978', '2491dae25c40e01ab110ef8b', 'Tafoski Fehim ', 'An der Söhrebahn 18', 'nationalID', 'YZ35YVZT6', 'kyc-1694295173961.jpg', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `payment_list`
--

CREATE TABLE `payment_list` (
  `id` int(11) NOT NULL,
  `_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `wallet` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `confirmed` varchar(255) DEFAULT NULL,
  `owner` text NOT NULL,
  `date` text NOT NULL,
  `color` text NOT NULL,
  `deposite_history_id` text NOT NULL,
  `plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `referal`
--

CREATE TABLE `referal` (
  `id` int(11) NOT NULL,
  `_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `point` varchar(255) DEFAULT NULL,
  `capital` varchar(255) DEFAULT NULL,
  `owner` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `_id` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `owner` text NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `image` text,
  `wallet_account_number` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `_id`, `date`, `owner`, `email`, `amount`, `method`, `type`, `status`, `image`, `wallet_account_number`) VALUES
(274, '472149f5e8f05dc90dfddcb7', 'Wed Aug 09 2023 08:35:52', 'fe572c2c557e26b6ee052015', 'gabrieldelight08@gmail.com', '100', 'bitcoin', 'deposit', 'unconfirmed', 'reciept-1691576647509.jpeg', NULL),
(275, 'e12e14e180b1e257203ee384', 'Wed Aug 09 2023 08:37:57', 'fe572c2c557e26b6ee052015', 'gabrieldelight08@gmail.com', '200', 'bitcoin', 'deposit', 'pending', NULL, NULL),
(276, '6b4f3bd60504056072ce53ef', 'Wed Aug 09 2023 08:55:19', 'fe572c2c557e26b6ee052015', 'gabrieldelight08@gmail.com', 'dd', 'ethereum', 'deposit', 'unconfirmed', 'reciept-1691583084293.jpeg', NULL),
(277, '1433c1bf7d7ab4fcd7f983ea', 'Wed Aug 09 2023 12:33:31', 'fe572c2c557e26b6ee052015', 'gabrieldelight08@gmail.com', 'sds', 'bitcoin', 'withdraw', 'pending', NULL, 'sds'),
(278, '7f091f86f4c6c776a606bdc2', 'Wed Aug 09 2023 12:56:33', 'fe572c2c557e26b6ee052015', 'gabrieldelight08@gmail.com', '100', 'ethereum', 'withdraw', 'pending', NULL, ' bc1qxy2kgdygjrsqtzq2n0yrf2493p83kkfjhx0wlh'),
(279, 'b688c25519b2d97e13ab42c8', 'Wed Aug 09 2023 13:00:56', 'fe572c2c557e26b6ee052015', 'gabrieldelight08@gmail.com', '100', 'ethereum', 'withdraw', 'pending', NULL, ' bc1qxy2kgdygjrsqtzq2n0yrf2493p83kkfjhx0wlh'),
(280, 'f29bba59d6b1e1df78350971', 'Wed Aug 09 2023 13:01:32', 'fe572c2c557e26b6ee052015', 'gabrieldelight08@gmail.com', '100', 'bitcoin', 'withdraw', 'pending', NULL, ' bc1qxy2kgdygjrsqtzq2n0yrf2493p83kkfjhx0wlh'),
(281, '2657a4460d82', 'Wed Aug 09 2023 13:08:07', 'fe572c2c557e26b6ee052015', 'gabrieldelight08@gmail.com', '100', 'bitcoin', 'withdraw', 'pending', NULL, ' bc1qxy2kgdygjrsqtzq2n0yrf2493p83kkfjhx0wlh'),
(282, '8e4fee1ccd76', 'Wed Aug 09 2023 13:13:11', 'fe572c2c557e26b6ee052015', 'gabrieldelight08@gmail.com', '100', 'bitcoin', 'deposit', 'unconfirmed', 'reciept-1691583220541.jpeg', NULL),
(283, '2d7cc7ffefb5', 'Wed Aug 09 2023 14:05:42', 'fe572c2c557e26b6ee052015', 'gabrieldelight08@gmail.com', NULL, NULL, 'deposit', 'pending', NULL, NULL),
(284, 'a0326af55fcb', 'Wed Aug 09 2023 14:05:42', 'fe572c2c557e26b6ee052015', 'gabrieldelight08@gmail.com', NULL, NULL, 'deposit', 'pending', NULL, NULL),
(285, '44852a0ed2d5', 'Wed Aug 09 2023 14:32:46', 'fe572c2c557e26b6ee052015', 'gabrieldelight08@gmail.com', '100', 'bitcoin', 'deposit', 'success', NULL, NULL),
(286, '5df0d68b6874', 'Wed Aug 09 2023 20:44:31', 'fe572c2c557e26b6ee052015', 'gabrieldelight08@gmail.com', '100', 'bitcoin', 'deposit', 'success', 'reciept-1691610297187.jpeg', NULL),
(287, '4e10413cd551', 'Wed Aug 09 2023 10:40:26 PM', 'fe572c2c557e26b6ee052015', 'gabrieldelight08@gmail.com', '200', 'bitcoin', 'deposit', 'success', 'reciept-1691617300362.jpeg', NULL),
(288, '27b49730687a', 'Wed Aug 09 2023 10:43:28 PM', 'fe572c2c557e26b6ee052015', 'gabrieldelight08@gmail.com', '20', 'usdt', 'withdraw', 'pending', NULL, ' bc1qxy2kgdygjrsqtzq2n0yrf2493p83kkfjhx0wlh'),
(289, '9aeeb5a991db', 'Thu Aug 10 2023 8:24:42 AM', 'fe572c2c557e26b6ee052015', 'gabrieldelight08@gmail.com', '10', 'bitcoin', 'deposit', 'pending', NULL, NULL),
(290, '1540ef222cd8', 'Thu Aug 10 2023 11:13:49 AM', 'fe572c2c557e26b6ee052015', 'gabrieldelight08@gmail.com', '200', 'bitcoin', 'deposit', 'pending', NULL, NULL),
(291, '4e1731625603', 'Thu Aug 10 2023 3:07:48 PM', '422b6eae4dfa0c7ea04b624d', 'Bensongoodluck1999@gmail.com', '500', 'usdt', 'withdraw', 'pending', NULL, 'TRGx7ZY1CwZaDJjvzwUrWxUTzNXDQTLK4i'),
(292, 'a3f22e69ff7c', 'Thu Aug 10 2023 3:18:25 PM', '422b6eae4dfa0c7ea04b624d', 'Bensongoodluck1999@gmail.com', '500', 'usdt', 'withdraw', 'success', NULL, 'TRGx7ZY1CwZaDJjvzwUrWxUTzNXDQTLK4i'),
(293, 'f4d93f204b87', 'Thu Aug 10 2023 3:22:49 PM', '422b6eae4dfa0c7ea04b624d', 'Bensongoodluck1999@gmail.com', '500', 'bitcoin', 'deposit', 'pending', NULL, NULL),
(294, '78e4f2d7dadb', 'Thu Aug 10 2023 3:23:07 PM', '422b6eae4dfa0c7ea04b624d', 'Bensongoodluck1999@gmail.com', '100', 'bitcoin', 'deposit', 'pending', NULL, NULL),
(295, '064382fce21a', 'Thu Aug 10 2023 4:08:29 PM', 'ccfdd9215b9c57da15cc5434', 'gabrieldelight08@gmail.com', '500', 'bitcoin', 'deposit', 'pending', NULL, NULL),
(296, '9a08b22950d3', 'Thu Aug 10 2023 4:15:17 PM', '5c3debb2c9b36812dd947f56', 'youngdan947@gmail.com', '300', 'bitcoin', 'deposit', 'pending', NULL, NULL),
(297, 'a59f85e74c81', 'Thu Aug 10 2023 4:19:56 PM', '5c3debb2c9b36812dd947f56', 'youngdan947@gmail.com', '200', 'usdt', 'withdraw', 'pending', NULL, '0x93D07937fd163C13a40F8F750f227466B879'),
(298, 'eba72b43c7db', 'Sat Aug 12 2023 11:58:48 AM', 'e332153d7e34fa7481ecc072', 'Samuelugbana50@gmail.com', '500', 'bitcoin', 'deposit', 'unconfirmed', 'reciept-1691838030540.png', NULL),
(299, 'e31e82062476', 'Sat Aug 12 2023 12:10:30 PM', 'e332153d7e34fa7481ecc072', 'Samuelugbana50@gmail.com', '500', 'bitcoin', 'deposit', 'unconfirmed', 'reciept-1691838716554.png', NULL),
(300, 'e557c5b75f6b', 'Thu Aug 17 2023 7:32:52 PM', '15afa8b6d7fb21cb13680e86', 'baldessaria@bluewin.ch', '240.00', 'bitcoin', 'deposit', 'pending', NULL, NULL),
(301, 'ef44db98ec95', 'Thu Aug 17 2023 9:38:37 PM', '7fa5aa20c80d08d3ff3b381d', 'fehim65@web.de', '1', 'bitcoin', 'deposit', 'pending', NULL, NULL),
(302, '26725c0db0fb', 'Sat Aug 19 2023 9:54:58 PM', '15afa8b6d7fb21cb13680e86', 'baldessaria@bluewin.ch', '300', 'bitcoin', 'withdraw', 'pending', NULL, 'bc1qhu6j8ldf90v7wvf2pv3qqht8q2m6ca23zpt9tg'),
(303, '956732ec1522', 'Mon Aug 21 2023 1:59:58 PM', '5c3debb2c9b36812dd947f56', 'youngdan947@gmail.com', '500', 'bitcoin', 'deposit', 'success', NULL, NULL),
(304, 'ce5217c4ac22', 'Sat Aug 26 2023 8:17:55 AM', '422b6eae4dfa0c7ea04b624d', 'Bensongoodluck1999@gmail.com', '500', 'bitcoin', 'withdraw', 'success', NULL, 'bc1qfqarhnjg3nhu72jrhry99x2rd58drhxzdn7mvp'),
(305, '0b134e8be5ac', 'Sat Aug 26 2023 11:03:25 AM', 'ccfdd9215b9c57da15cc5434', 'gabrieldelight08@gmail.com', '100', 'USDT-ERC20', 'deposit', 'pending', NULL, NULL),
(306, '39c9879b2a6c', 'Sat Aug 26 2023 11:04:00 AM', 'ccfdd9215b9c57da15cc5434', 'gabrieldelight08@gmail.com', '100', 'USDT-TRC20', 'deposit', 'pending', NULL, NULL),
(307, '0afeff460e0f', 'Sat Aug 26 2023 11:12:34 AM', '5c3debb2c9b36812dd947f56', 'youngdan947@gmail.com', '100', 'bitcoin', 'withdraw', 'pending', NULL, 'bc1q2ygwmn6se2yl3nsfg2jrw6d2cjlnq5h666d09n'),
(308, 'e2763d33240d', 'Sat Aug 26 2023 12:52:41 PM', '422b6eae4dfa0c7ea04b624d', 'Bensongoodluck1999@gmail.com', '500', 'bitcoin', 'withdraw', 'pending', NULL, 'bc1q7s26qwkm2sf49umrng3plhwrvcsnjvwqz3zc0k'),
(309, '7a4b1fb3ff5b', 'Sat Aug 26 2023 1:10:31 PM', '5962c8755e353a1f725b87a3', 'weinacht2110@gmail.com', '22340', 'bitcoin', 'withdraw', 'pending', NULL, '1F3v2Fs5rU8Z3ogRhtWg4q5FbSbztdVKA8'),
(310, '3879f7e1b83f', 'Sat Aug 26 2023 1:10:33 PM', '5962c8755e353a1f725b87a3', 'weinacht2110@gmail.com', '22340', 'bitcoin', 'withdraw', 'pending', NULL, '1F3v2Fs5rU8Z3ogRhtWg4q5FbSbztdVKA8'),
(311, '888c59c24955', 'Sat Aug 26 2023 1:10:33 PM', '5962c8755e353a1f725b87a3', 'weinacht2110@gmail.com', '22340', 'bitcoin', 'withdraw', 'pending', NULL, '1F3v2Fs5rU8Z3ogRhtWg4q5FbSbztdVKA8'),
(312, 'f719ce98ae63', 'Sat Aug 26 2023 1:10:33 PM', '5962c8755e353a1f725b87a3', 'weinacht2110@gmail.com', '22340', 'bitcoin', 'withdraw', 'pending', NULL, '1F3v2Fs5rU8Z3ogRhtWg4q5FbSbztdVKA8'),
(313, '95b7e73eb8db', 'Sat Aug 26 2023 1:10:33 PM', '5962c8755e353a1f725b87a3', 'weinacht2110@gmail.com', '22340', 'bitcoin', 'withdraw', 'pending', NULL, '1F3v2Fs5rU8Z3ogRhtWg4q5FbSbztdVKA8'),
(314, '0f2344011e39', 'Sat Aug 26 2023 2:23:16 PM', '5962c8755e353a1f725b87a3', 'weinacht2110@gmail.com', '00805739', 'bitcoin', 'deposit', 'success', 'reciept-1693056726647.jpg', NULL),
(315, 'fa41ef0cab60', 'Sat Aug 26 2023 2:28:08 PM', '422b6eae4dfa0c7ea04b624d', 'Bensongoodluck1999@gmail.com', '100', 'bitcoin', 'deposit', 'pending', NULL, NULL),
(316, '6c5c9b3687dd', 'Sat Aug 26 2023 2:28:09 PM', '422b6eae4dfa0c7ea04b624d', 'Bensongoodluck1999@gmail.com', '100', 'bitcoin', 'deposit', 'pending', NULL, NULL),
(317, '98b3c3eb413d', 'Sat Aug 26 2023 3:01:33 PM', '5962c8755e353a1f725b87a3', 'weinacht2110@gmail.com', '1000', 'bitcoin', 'withdraw', 'rejected', NULL, '1F3v2Fs5rU8Z3ogRhtWg4q5FbSbztdVKA8'),
(318, '9ca2240c4b86', 'Sat Aug 26 2023 4:06:37 PM', '34dc513cce41620ddaa9112c', 'carstenschmoller@gmail.com', '500', 'bitcoin', 'deposit', 'pending', NULL, NULL),
(319, 'b11caea37067', 'Sat Aug 26 2023 4:06:38 PM', '34dc513cce41620ddaa9112c', 'carstenschmoller@gmail.com', '500', 'bitcoin', 'deposit', 'unconfirmed', 'reciept-1693063134932.jpg', NULL),
(320, '6562c66db28b', 'Sat Aug 26 2023 5:27:25 PM', '34dc513cce41620ddaa9112c', 'carstenschmoller@gmail.com', '10000', 'bitcoin', 'withdraw', 'pending', NULL, '1DbeG97T5nfJrMnRRc115taoAAPPGd3Qxo'),
(321, '44a2772704d6', 'Sat Aug 26 2023 8:42:45 PM', '34dc513cce41620ddaa9112c', 'carstenschmoller@gmail.com', '500', 'bitcoin', 'deposit', 'unconfirmed', 'reciept-1693079922346.jpg', NULL),
(322, '4f071950f044', 'Sat Aug 26 2023 8:46:32 PM', '34dc513cce41620ddaa9112c', 'carstenschmoller@gmail.com', '500', 'bitcoin', 'deposit', 'success', 'reciept-1693079790828.jpg', NULL),
(323, '9b4d9066283a', 'Sun Aug 27 2023 11:08:07 AM', '8e7f931838ae5e0478bee44f', 'ptrdlz@googlemail.com', '3050', 'bitcoin', 'withdraw', 'pending', NULL, '1GbVLvNV2qtEQGAiFqZuP8HCtyyNrr9n8D    '),
(324, '643691cf753a', 'Sat Sep 02 2023 11:10:23 AM', '2450db75c440e7247a0b420e', 'kschmidt344@gmail.com', '3020', 'bitcoin', 'deposit', 'pending', NULL, NULL),
(325, '39a7ffb2f579', 'Sat Sep 02 2023 11:25:00 AM', '2450db75c440e7247a0b420e', 'kschmidt344@gmail.com', '3020', 'bitcoin', 'withdraw', 'pending', NULL, 'bc1qxqctykv2xmd9z28xa7u3xgpjg0nqgz0jphg608'),
(326, '4258f12e4ab0', 'Sat Sep 02 2023 11:25:01 AM', '2450db75c440e7247a0b420e', 'kschmidt344@gmail.com', '3020', 'bitcoin', 'withdraw', 'pending', NULL, 'bc1qxqctykv2xmd9z28xa7u3xgpjg0nqgz0jphg608'),
(327, '6d8aa226897d', 'Sun Sep 03 2023 1:56:45 PM', '10729d4c26ac48d92856fa0c', 'plutos360@gmail.com', '50', 'bitcoin', 'withdraw', 'pending', NULL, '3E6JiWLEuyBMC4TSkB3GVZaBr9paLkTV75'),
(328, '34f269d094ff', 'Sun Sep 03 2023 4:15:45 PM', '5c3debb2c9b36812dd947f56', 'youngdan947@gmail.com', '1000', 'USDT-ERC20', 'deposit', 'success', 'reciept-1693754172588.png', NULL),
(329, 'f7b3a442fa91', 'Sun Sep 03 2023 4:25:27 PM', '5c3debb2c9b36812dd947f56', 'youngdan947@gmail.com', '100', 'bitcoin', 'withdraw', 'pending', NULL, 'ghgcjgfjgfkyugkgkn'),
(330, '399e9d0a2b23', 'Sun Sep 03 2023 4:25:28 PM', '5c3debb2c9b36812dd947f56', 'youngdan947@gmail.com', '100', 'bitcoin', 'withdraw', 'pending', NULL, 'ghgcjgfjgfkyugkgkn'),
(331, 'd23814be2046', 'Thu Sep 07 2023 11:40:55 AM', '44846f177142fed84b729840', 'kknecht@skynet.be', '3', 'bitcoin', 'deposit', 'pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `_id` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `plane_password` text NOT NULL,
  `term` varchar(255) DEFAULT NULL,
  `signup` varchar(255) DEFAULT NULL,
  `country` text NOT NULL,
  `wallet` text NOT NULL,
  `balance` int(11) NOT NULL DEFAULT '0',
  `bonus` int(11) NOT NULL DEFAULT '0',
  `ref_points` int(11) NOT NULL DEFAULT '0',
  `ref_counter` int(11) NOT NULL DEFAULT '0',
  `date` text NOT NULL,
  `ref_code` text NOT NULL,
  `phone_number` text NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` text NOT NULL,
  `capital` int(11) NOT NULL DEFAULT '0',
  `profit` int(11) NOT NULL DEFAULT '0',
  `two_factor_auth_code` text,
  `has_two_factor_auth` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `_id`, `username`, `email`, `password`, `plane_password`, `term`, `signup`, `country`, `wallet`, `balance`, `bonus`, `ref_points`, `ref_counter`, `date`, `ref_code`, `phone_number`, `firstname`, `lastname`, `capital`, `profit`, `two_factor_auth_code`, `has_two_factor_auth`) VALUES
(949, 'ccfdd9215b9c57da15cc5434', 'newtest@gmail.com', 'gabrieldelight08@gmail.com', '$2a$10$M34k5xXzOF/TwYYRq0fw4eLlJ2/lVo37ao/M2XalefZvMzCfhPQlq', 'password', NULL, NULL, 'Nigeria', '', 0, 0, 0, 0, '8/10/2023', '990897', '4444', 'Gabriel', 'Delight', 0, 0, NULL, NULL),
(950, '5c3debb2c9b36812dd947f56', 'youngdan947@gmail.com', 'youngdan947@gmail.com', '$2a$10$jvHpmpu94XqbTiv8bb9oEel1o2oIqTXJ3pZSTa7UZn3iR5jDgQ04S', '@dan2023', NULL, NULL, 'Select country', '', 1000, 1400, 0, 0, '8/10/2023', '844045', '08130078945', 'Danny', 'Dan', 0, 200, NULL, NULL),
(951, '422b6eae4dfa0c7ea04b624d', 'Goody', 'Bensongoodluck1999@gmail.com', '$2a$10$M90sALwksFXe9OS.HpWQvuVvwUssZgFrosyTJ6NS3J1BdqtLMB/py', '109876', NULL, NULL, 'Nigeria', '', 500, 50, 0, 0, '8/10/2023', '166887', '08106727077', 'Opara ', 'Jen', 0, 100, NULL, NULL),
(952, '34dc513cce41620ddaa9112c', 'Schmolli69 ', 'carstenschmoller@gmail.com', '$2a$10$gjEZWSGhBP6xD4lP6vmBtuOhcUrehJeAVYLzyzcXeNKOAq79DDi7u', 'CarSchmo2369', NULL, NULL, 'Germany', 'undefined', 5000, 10000, 0, 0, '8/10/2023', '103759', '015208607208', 'Carsten ', 'Schmoller ', 0, 5000, NULL, NULL),
(954, 'e332153d7e34fa7481ecc072', 'NK FUNDZ', 'Samuelugbana50@gmail.com', '$2a$10$EB47nIiG4.Gcfa7qHt09VuKtkWFoiWeM8dyQLUN9JfaU3U136zA/m', '246891', NULL, NULL, 'Nigeria', '', 0, 0, 0, 0, '8/12/2023', '476874', '09154137246', 'Samuel', 'John', 0, 0, NULL, NULL),
(956, '15afa8b6d7fb21cb13680e86', 'Annemarie', 'baldessaria@bluewin.ch', '$2a$10$Jxksc7N4ce6M0w2UVL06gOQy6inHU3nUV/Tnnas75k0.MWz9fwEXa', 'Breitenau@572', NULL, NULL, 'Switzerland', '', 300, 20, 0, 0, '8/16/2023', '204505', '0792145973', 'Annemarie', 'Baldessari', 0, 20320, NULL, NULL),
(957, '70e297ee3bcec40f24f8b8cd', 'Dave2', 'confidenceopara466@gmail.com', '$2a$10$BelxkZrnJlNAOtx/Q9gIOOtxAYlrAGSzGJS5ZWSzPtoywJRhDSj2W', 'Okpara1999', NULL, NULL, 'Nigeria', '', 0, 0, 0, 0, '8/25/2023', '414088', '09030117922', 'David ', 'Jen', 0, 0, NULL, NULL),
(958, 'd1b5edcfaf8222fc71b08ad8', 'Henry53', 'henrybinary53@gmail.com', '$2a$10$X.gARILL.u/hY9/x7PM2keg3tKsFQwdw9zPvt1guFik.Z80xzuNum', 'good boy1', NULL, NULL, 'Nigeria', '', 0, 0, 0, 0, '8/25/2023', '235496', '09063967022', 'Henry', 'Chikaodi ', 0, 0, NULL, NULL),
(959, '01cfbf1a0f2c0a22781f57ed', 'golden1', 'josephokp200@gmail.com', '$2a$10$AFvOH85nAG298HnM94ZjF.eSVraQbIUZWwn88IrIeW09IPBclIyG.', 'Josephokp1@', NULL, NULL, 'Select country', '', 0, 0, 0, 0, '8/25/2023', '076850', '08108487827', 'itz', 'golden', 0, 0, NULL, NULL),
(960, '5962c8755e353a1f725b87a3', 'Roterhunger171', 'weinacht2110@gmail.com', '$2a$10$OZu/uqGtODIVGcxpVdolSObpheuyYflNVFqCjaNgM4Jf1gOS.aUqa', 'Wolverin1977', NULL, NULL, 'Austria', '', 21340, 22340, 0, 0, '8/26/2023', '371050', '06767426366', 'Elisabeth ', 'Kovar ', 0, 20, NULL, NULL),
(962, 'a70aa9b744a51b5b86ee5e76', 'gooddyFrank', 'ben.good@gmail.com', '$2a$10$XBEA4JBSqcKbTYXCOR016Otu8j2sjyz/poeejcKpFD9WOnlf8SyFG', 'ben.good@gmail.com', NULL, NULL, 'Nigeria', '', 0, 0, 0, 0, '8/26/2023', '625908', '09167945121', 'Ben', 'Fran', 0, 0, NULL, NULL),
(964, '8e7f931838ae5e0478bee44f', 'Dulzie', 'ptrdlz@googlemail.com', '$2a$10$sZfnNarwaR08Lms0y8KvkuBWqWS5oPHQelQO9JAOKvriehCUNWOFS', 'Karin5855', NULL, NULL, 'Germany', '', 100, 30, 0, 0, '8/27/2023', '487712', '01626857581', 'Peter', 'Dulz', 0, 0, NULL, NULL),
(965, '1d6ba80b138a8f6b54a21c9c', 'Dan1', 'henryogbulogo76@gmail.com', '$2a$10$V34Z4WP4vPMe8gahDoFz2uRAkjkI3KJSkqPNnuK8iydQcMonJJlQe', '109876', NULL, NULL, 'Nigeria', '', 0, 0, 0, 0, '8/27/2023', '970502', '9063886678', 'Dan', 'Geb', 0, 0, NULL, NULL),
(968, '791bfff14f0aa05b373f3d7f', 'Hallo', 'KerstinMillnitz@web.de', '$2a$10$zIFOzKwVWUSTkUY9KUmeOeQsgutKcPZFkqqwJmiWucYA98chUSPYe', 'Bahn71', NULL, NULL, 'Germany', '', 0, 0, 0, 0, '8/27/2023', '922138', '017634659054', 'Kerstin ', 'Millnitz ', 0, 0, NULL, NULL),
(969, '97fec49762364412bf4ccf2d', 'Jack67', 'jkienesberger3@gmail.com', '$2a$10$LJ/Ous9bzoiKVWgt5Tz0me6ikcLIW3HTM7Z8vRu.HmidbBBcEeDrG', '1a2b3c4d#', NULL, NULL, 'Austria', '', 300, 20, 0, 0, '8/28/2023', '713808', '00436601967005', 'Herr', 'Kienesberger Josef ', 0, 7050, NULL, NULL),
(970, '2450db75c440e7247a0b420e', 'Kschmidt344', 'kschmidt344@gmail.com', '$2a$10$tPOFeb6TvsXgtlj2aQyvheveBNbchQloFxMbXnc6/e1uE/xDLXFuO', 'sophia21', NULL, NULL, 'Germany', '', 3020, 20, 0, 0, '9/1/2023', '029410', '015787843553', 'Kristina ', 'Eryigit ', 0, 0, NULL, NULL),
(971, '44846f177142fed84b729840', 'kknecht', 'kknecht@skynet.be', '$2a$10$H7Y1QE3uW/mgNqRBZQwA7u5koWl8GBudzqoR4DOWDo2thQqfDc0p6', 'zeii7890', NULL, NULL, 'Belgium', '', 300, 2000, 0, 0, '9/1/2023', '290719', '32474210560', 'Karl', 'Knecht', 0, 300000, NULL, NULL),
(972, '10729d4c26ac48d92856fa0c', 'Fairplay', 'plutos360@gmail.com', '$2a$10$DHKdfwsvnngLryS3nHcC0ufk5vRzTVjcqP20qkXqSVYPqtjZ59Ht.', 'Kumpelfrumpel20', NULL, NULL, 'Germany', '', 50, 20, 0, 0, '9/2/2023', '043444', '017663292698', 'Rainer', 'Schlott', 0, 3050, NULL, NULL),
(973, '7d31eab712be316199dd01d5', 'DannyFunds', 'dangoodnewsoc@icloud.com', '$2a$10$/6ITKhouUJO1GG9M.PiZt.8aiZxmlTN/A8l1.gCVJMQ8jgLRMw3VS', '123456789', NULL, NULL, 'Nigeria', '', 0, 0, 0, 0, '9/3/2023', '449563', '08130078645', 'Dan ', 'GoodFrank', 0, 0, NULL, NULL),
(974, '5516faf5278595ce6ada4b6f', 'DanTest', 'youngicthub@gmail.com', '$2a$10$7O0F4QVeEv6IH2pacnVSWOOzNGkmJIuvVPNXvcl9.TpCACmcw3MOG', 'dan@2023', NULL, NULL, 'Nigeria', '', 0, 0, 0, 0, '9/7/2023', '049083', '08130078945', 'Testing Dan', 'Admin', 0, 0, NULL, NULL),
(975, '2491dae25c40e01ab110ef8b', 'iceman08', 'fehim65@web.de', '$2a$10$fK8hdN8NVUe4eWK64MfB7.T16iDuUyP3P1RKeLlz4oGxBlUSC6eBS', 'Tafa-2411$', NULL, NULL, 'Germany', '', 0, 0, 0, 0, '9/9/2023', '460283', '01601874692', 'Fehim ', 'Tafoski', 0, 0, NULL, NULL),
(976, '68c521eece4299e2d1c383a9', 'Derich32', 'heinzedavid027@Gmail.com', '$2a$10$YckENpzLPMWXZM.SKoLqJuJKGW5qhAbLEsXUFcE0JMk1HC7hRKKLS', 'Mira.beyer2ü', NULL, NULL, 'Germany', '', 0, 0, 0, 0, '9/10/2023', '921993', '016094610003', 'david', 'Heinze', 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `wallet_connect`
--

CREATE TABLE `wallet_connect` (
  `id` int(250) NOT NULL,
  `_id` text,
  `owner` text,
  `wallet_connect` text,
  `secret_type` varchar(250) DEFAULT NULL,
  `email` text,
  `name` text,
  `date` text,
  `wallet_type` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_list`
--

CREATE TABLE `withdrawal_list` (
  `id` int(11) NOT NULL,
  `_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `wallet` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `confirmed` varchar(255) DEFAULT NULL,
  `owner` text NOT NULL,
  `date` text NOT NULL,
  `color` text NOT NULL,
  `deposite_history_id` text NOT NULL,
  `plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit_history`
--
ALTER TABLE `deposit_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc`
--
ALTER TABLE `kyc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_list`
--
ALTER TABLE `payment_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referal`
--
ALTER TABLE `referal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wallet_connect`
--
ALTER TABLE `wallet_connect`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal_list`
--
ALTER TABLE `withdrawal_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `deposit_history`
--
ALTER TABLE `deposit_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kyc`
--
ALTER TABLE `kyc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `payment_list`
--
ALTER TABLE `payment_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referal`
--
ALTER TABLE `referal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=977;

--
-- AUTO_INCREMENT for table `wallet_connect`
--
ALTER TABLE `wallet_connect`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `withdrawal_list`
--
ALTER TABLE `withdrawal_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
